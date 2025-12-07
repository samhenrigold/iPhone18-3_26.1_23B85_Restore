uint64_t sub_1AC6A3674(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9E0, &qword_1AC7AB3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_235();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(inited + 32) = sub_1AC6A97EC;
  *(inited + 40) = v3;
  v4 = a1;
  sub_1AC69CCEC(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

uint64_t sub_1AC6A3720(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v9 = 1;
  v6 = sub_1AC79F958();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_1AC6A153C(a2, &v9, v5);
  return sub_1AC5C9624(v5, &qword_1EB56B8F0, &unk_1AC7A9520);
}

void sub_1AC6A3818()
{
  OUTLINED_FUNCTION_104();
  v29 = v1;
  v30 = v2;
  v28 = v3;
  v4 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  v27 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = v26 - v15;
  v26[1] = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_enqueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9E0, &qword_1AC7AB3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  v18 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_supportedFeatures;
  sub_1AC6AA65C(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_asrId, v16, &qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_2_7();
  sub_1AC6AA4FC(v0 + v18, v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v20 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v21 = (v14 + *(v27 + 80) + v20) & ~*(v27 + 80);
  v22 = swift_allocObject();
  v23 = v29;
  *(v22 + 16) = v29;
  sub_1AC6A941C(v16, v22 + v20);
  OUTLINED_FUNCTION_15_6();
  sub_1AC6AA6B8(v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, v24);
  *(inited + 32) = v30;
  *(inited + 40) = v22;
  v25 = v23;
  sub_1AC69CCEC(inited);
  swift_setDeallocating();
  sub_1AC7264BC();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC6A3A28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20[-v10];
  v12 = sub_1AC79F958();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  sub_1AC6A2498();
  sub_1AC6A2550(&selRef_silenceStart);
  if (v13)
  {
    goto LABEL_7;
  }

  v14 = [a2 nBestVoiceCommandInterpretations];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA08, &unk_1AC7B2C60);
  v15 = sub_1AC7A0158();

  v16 = *(v15 + 16);

  if (!v16)
  {
    goto LABEL_7;
  }

  if (qword_1EB56B060 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  result = sub_1AC625D20(*(a4 + *(v17 + 20)));
  if (v19)
  {
    [a2 utteranceStart];
    mach_continuous_time();
    sub_1AC72A354();

    sub_1AC5C9624(v11, &qword_1EB56B8F0, &unk_1AC7A9520);
    sub_1AC6A941C(v9, v11);
LABEL_7:
    v21 = 2;
    sub_1AC6A153C(a2, &v21, v11);
    return sub_1AC5C9624(v11, &qword_1EB56B8F0, &unk_1AC7A9520);
  }

  __break(1u);
  return result;
}

void sub_1AC6A3CE0()
{
  OUTLINED_FUNCTION_104();
  v21 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_249_0();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_194_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9E0, &qword_1AC7AB3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  v15 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_asrId;
  OUTLINED_FUNCTION_2_7();
  sub_1AC6AA4FC(v0 + v16, v2, v17);
  sub_1AC6AA65C(v0 + v15, v1, &qword_1EB56B8F0, &unk_1AC7A9520);
  v18 = OUTLINED_FUNCTION_132_2();
  *(v18 + 16) = v5;
  OUTLINED_FUNCTION_15_6();
  sub_1AC6AA6B8(v2, v19 + v11, v20);
  sub_1AC6A941C(v1, v18 + v13);
  *(inited + 32) = v21;
  *(inited + 40) = v18;

  sub_1AC69CCEC(inited);
  swift_setDeallocating();
  sub_1AC7264BC();
  OUTLINED_FUNCTION_105();
}

void sub_1AC6A3EA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v66 = *(v7 - 8);
  v8 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v65 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v58 - v14;
  v73 = *a1;
  sub_1AC625DF0(a2);
  if (v16)
  {
    v17 = v15;

    v18 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
    v70 = sub_1AC625D20(*(a3 + *(v18 + 20)));
    v72 = v19;
    if (v19)
    {
      v59 = v17;
      sub_1AC6A027C(v17);
      if (v20)
      {
        v21 = v73 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
        swift_beginAccess();
        *(v21 + 168) = 1;
      }

      sub_1AC68D2C8(a2, &v79);
      v63 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_emojiUtils;
      v22 = v73 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_voiceCommandDebugInfoAggregated;
      v61 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioBufferService;

      v62 = v22;
      swift_beginAccess();
      v60 = v8 + 7;
      v64 = v13;
      while (1)
      {
        v23 = sub_1AC747E54();
        if (!v25)
        {
          break;
        }

        v26 = v23;
        v27 = v24;

        if (qword_1EB56B060 != -1)
        {
          swift_once();
        }

        v78 = v26;
        v28 = v27;
        v29 = sub_1AC7A0CC8();
        v30 = v26;
        v68 = v26;
        v32 = v31;
        v33 = *(v73 + v63);
        v34 = *v62;
        BYTE4(v78) = *(v62 + 4);
        LODWORD(v78) = v34;
        v35 = v33;
        v36 = mach_continuous_time();
        v37 = v67;
        v38 = v70;
        sub_1AC729570(v67, v70, v72, v27, v29, v32, v33, &v78, v36, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
        v69 = v28;

        v39 = [v28 unrepairedRecognition];
        v40 = [v39 oneBest];

        sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
        v41 = sub_1AC7A0158();

        sub_1AC6A3438(v41);

        v78 = v30;
        sub_1AC7A0CC8();
        v42 = v72;
        sub_1AC729400(v37, v38, v72);

        v43 = sub_1AC7A0288();
        v44 = v71;
        __swift_storeEnumTagSinglePayload(v71, 1, 1, v43);
        v45 = *(v73 + v61);
        v46 = v65;
        sub_1AC6AA65C(v37, v65, &qword_1EB56B8F0, &unk_1AC7A9520);
        v47 = (*(v66 + 80) + 40) & ~*(v66 + 80);
        v48 = (v60 + v47) & 0xFFFFFFFFFFFFFFF8;
        v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
        v50 = swift_allocObject();
        v50[2] = 0;
        v50[3] = 0;
        v50[4] = v69;
        sub_1AC6A941C(v46, v50 + v47);
        v51 = (v50 + v48);
        *v51 = v70;
        v51[1] = v42;
        *(v50 + v49) = v68;
        *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v45;
        v52 = v64;
        sub_1AC6AA65C(v44, v64, &qword_1EB56BE70, &qword_1AC7A8270);
        LODWORD(v47) = __swift_getEnumTagSinglePayload(v52, 1, v43);

        if (v47 == 1)
        {
          sub_1AC5C9624(v52, &qword_1EB56BE70, &qword_1AC7A8270);
        }

        else
        {
          sub_1AC7A0278();
          (*(*(v43 - 8) + 8))(v52, v43);
        }

        v53 = v50[2];
        swift_unknownObjectRetain();

        if (v53)
        {
          swift_getObjectType();
          v54 = sub_1AC7A01B8();
          v56 = v55;
          swift_unknownObjectRelease();
        }

        else
        {
          v54 = 0;
          v56 = 0;
        }

        sub_1AC5C9624(v71, &qword_1EB56BE70, &qword_1AC7A8270);
        if (v56 | v54)
        {
          v74 = 0;
          v75 = 0;
          v76 = v54;
          v77 = v56;
        }

        swift_task_create();
      }

      sub_1AC5CA508(v79);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1AC6A4550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v10;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AC6A4580, 0, 0);
}

uint64_t sub_1AC6A4580()
{
  OUTLINED_FUNCTION_102();
  v1 = [*(v0 + 24) preITNRecognition];
  v2 = [v1 oneBest];

  v3 = sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
  v4 = OUTLINED_FUNCTION_211_1(v3);

  if (sub_1AC61C24C())
  {
    sub_1AC61C25C();
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B26E95B0](0, v4);
    }

    else
    {
      v5 = *(v4 + 32);
    }

    v6 = v5;
    *(v0 + 72) = v5;
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);

    *(v0 + 16) = v7;
    v9 = sub_1AC7A0CC8();
    v11 = v10;
    *(v0 + 80) = v10;
    if (v8)
    {
      v12 = v9;
      v13 = *(v0 + 64);
      v14 = *(v0 + 48);
      v20 = *(v0 + 32);
      v15 = swift_task_alloc();
      *(v0 + 88) = v15;
      *(v15 + 16) = v6;
      *(v15 + 24) = v20;
      *(v15 + 40) = v14;
      *(v15 + 48) = v12;
      *(v15 + 56) = v11;
      OUTLINED_FUNCTION_30(&unk_1AC7AF150);
      v21 = v16;
      v17 = swift_task_alloc();
      *(v0 + 96) = v17;
      *v17 = v0;
      v17[1] = sub_1AC6A47A8;

      return v21(v13, &unk_1AC7AB450, v15);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_29();

  return v19();
}

uint64_t sub_1AC6A47A8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC6A48B0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_44();

  return v2();
}

void sub_1AC6A493C()
{
  OUTLINED_FUNCTION_104();
  v22 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_249_0();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_194_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9E0, &qword_1AC7AB3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  v15 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_asrId;
  OUTLINED_FUNCTION_2_7();
  sub_1AC6AA4FC(v0 + v16, v2, v17);
  sub_1AC6AA65C(v0 + v15, v1, &qword_1EB56B8F0, &unk_1AC7A9520);
  v18 = OUTLINED_FUNCTION_132_2();
  *(v18 + 16) = v5;
  OUTLINED_FUNCTION_15_6();
  sub_1AC6AA6B8(v2, v19 + v11, v20);
  sub_1AC6A941C(v1, v18 + v13);
  *(inited + 32) = v22;
  *(inited + 40) = v18;
  v21 = v5;
  sub_1AC69CCEC(inited);
  swift_setDeallocating();
  sub_1AC7264BC();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC6A4AF8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v46 - v12;
  v14 = *a1;
  LOBYTE(v51[0]) = 6;
  v15 = sub_1AC79F958();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v15);
  sub_1AC6A153C(a2, v51, v13);
  sub_1AC5C9624(v13, &qword_1EB56B8F0, &unk_1AC7A9520);
  v16 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  result = sub_1AC625D20(*(a3 + *(v16 + 20)));
  if (v18)
  {
    v19 = result;
    v20 = v18;
    v21 = a4;
    sub_1AC6A027C(a2);
    if (v22)
    {
      v23 = v14 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
      swift_beginAccess();
      *(v23 + 168) = 1;
    }

    if (qword_1EB56B060 != -1)
    {
      swift_once();
    }

    v24 = *(v14 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_emojiUtils);
    v25 = (v14 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_voiceCommandDebugInfoAggregated);
    swift_beginAccess();
    v26 = *v25;
    BYTE4(v50[0]) = *(v25 + 4);
    LODWORD(v50[0]) = v26;
    v27 = v24;
    v28 = mach_continuous_time();
    sub_1AC729570(v21, v19, v20, a2, 0, 0, v24, v50, v28, v45, v20, v47, v48, *v49, *&v49[8], *&v49[16], v50[0], v50[1], v50[2], v51[0], v51[1]);

    v29 = [a2 unrepairedRecognition];
    v30 = [v29 oneBest];

    sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
    v31 = sub_1AC7A0158();

    v32 = sub_1AC6A3438(v31);
    v34 = v33;

    v35 = v14 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
    swift_beginAccess();
    *(v35 + 152) = v32;
    *(v35 + 160) = v34;

    v36 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v48, 1, 1, v36);
    v37 = *(v14 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioBufferService);
    sub_1AC6AA65C(v21, v13, &qword_1EB56B8F0, &unk_1AC7A9520);
    v38 = sub_1AC6A78C4(&qword_1EB56B408, type metadata accessor for SpeechRecognizerWorker);
    v39 = (*(v47 + 80) + 48) & ~*(v47 + 80);
    v40 = (v11 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    v41[2] = v14;
    v41[3] = v38;
    v41[4] = a2;
    v41[5] = v14;
    sub_1AC6A941C(v13, v41 + v39);
    v42 = (v41 + v40);
    v43 = v46;
    *v42 = v19;
    v42[1] = v43;
    *(v41 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8)) = v37;

    v44 = a2;
    swift_retain_n();
    sub_1AC6C2FD0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC6A4F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AC6A4F74, a5, 0);
}

uint64_t sub_1AC6A4F74()
{
  OUTLINED_FUNCTION_102();
  v1 = [*(v0 + 40) preITNRecognition];
  v2 = [v1 oneBest];

  v3 = sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
  v4 = OUTLINED_FUNCTION_211_1(v3);

  if (sub_1AC61C24C())
  {
    sub_1AC61C25C();
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B26E95B0](0, v4);
    }

    else
    {
      v5 = *(v4 + 32);
    }

    v6 = v5;
    *(v0 + 88) = v5;
    v7 = *(v0 + 40);

    [v6 silenceStart];
    v9 = v8;
    [v7 utteranceStart];
    v11 = v9 + v10;
    v12 = sub_1AC69BF38(v11);
    if (qword_1EB56B060 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v13 = *(v0 + 48);
    sub_1AC728480(*(v0 + 56), *(v0 + 64), *(v0 + 72), v12);
    v14 = v13 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
    OUTLINED_FUNCTION_574(v13 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements, v0 + 16);
    *(v14 + 88) = v11 + *(v14 + 16);
    v15 = *(v14 + 8);
    sub_1AC70AA78(v11);
    v17 = v15 + v16;
    if (__CFADD__(v15, v16))
    {
      __break(1u);
    }

    else if (off_1ED937D60 == -1)
    {
LABEL_8:
      v18 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v18, qword_1ED9386C8);
      v19 = sub_1AC79FDC8();
      v20 = sub_1AC7A05E8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = OUTLINED_FUNCTION_150();
        *v21 = 134217984;
        *(v21 + 4) = v17;
        _os_log_impl(&dword_1AC5BC000, v19, v20, "EmbeddedSpeechMetric: end of first word recorded in ticks (user-facing TTFW start): %llu", v21, 0xCu);
        OUTLINED_FUNCTION_96_0();
      }

      v22 = sub_1AC79FDC8();
      v23 = sub_1AC7A05E8();
      if (OUTLINED_FUNCTION_366(v23))
      {
        v24 = OUTLINED_FUNCTION_150();
        *v24 = 134217984;
        *(v24 + 4) = v12;
        OUTLINED_FUNCTION_94();
        _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
        OUTLINED_FUNCTION_77_1();
      }

      v30 = OUTLINED_FUNCTION_74();

      return MEMORY[0x1EEE6DFA0](v30, v31, v32);
    }

    OUTLINED_FUNCTION_3_0();
    swift_once();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_29();

  return v33();
}

uint64_t sub_1AC6A5264()
{
  OUTLINED_FUNCTION_45();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 72);
    v9 = *(v0 + 56);
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v9;
    *(v3 + 40) = v2;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    OUTLINED_FUNCTION_30(&unk_1AC7AF150);
    v10 = v4;
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_1AC6A539C;
    v6 = OUTLINED_FUNCTION_154_1();

    return v10(v6);
  }

  else
  {
    v8 = *(v0 + 48);

    return MEMORY[0x1EEE6DFA0](sub_1AC6A5564, v8, 0);
  }
}

uint64_t sub_1AC6A539C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    v7 = sub_1AC6A54A8;
    v8 = 0;
  }

  else
  {

    v8 = *(v3 + 48);
    v7 = sub_1AC6A5564;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1AC6A54A8()
{
  OUTLINED_FUNCTION_85();

  v0 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1AC6A5508()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC6A5564()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1AC6A55BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9E0, &qword_1AC7AB3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_228_0();
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a2;
  *(v15 + 32) = a1;
  *(v15 + 40) = a5;
  *(v15 + 48) = a3;
  *(v15 + 56) = a6;
  *(v15 + 64) = a7;
  *(inited + 32) = sub_1AC6A9578;
  *(inited + 40) = v15;

  sub_1AC69CCEC(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

void sub_1AC6A56AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8)
{
  v13 = *a1;
  sub_1AC695130();
  if ((v14 & 1) == 0)
  {
    sub_1AC7A06F8();
    v15 = sub_1AC7A06F8();
    v17 = v16;
    v19 = v18;
    v32 = HIDWORD(v16);
    sub_1AC7A0698();
    v34 = sub_1AC7A0688();
    v35 = v20;
    v36 = v21;
    v37 = v22;
    v38 = v15;
    v39 = v17;
    v40 = v32;
    v41 = v19;
    v23 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_delegates;
    swift_beginAccess();
    v24 = *(v13 + v23);
    v25 = *(v24 + 16);

    v26 = 0;
    for (i = v24 + 40; ; i += 16)
    {
      if (v25 == v26)
      {

        return;
      }

      if (v26 >= *(v24 + 16))
      {
        break;
      }

      v28 = *(i - 8);

      v28(v33, v29);
      if (v33[0])
      {
        v30 = v33[1];
        ObjectType = swift_getObjectType();
        (*(v30 + 32))(a4, &v34, a5, ObjectType, v30, a6, a7, a8);
        swift_unknownObjectRelease();
      }

      ++v26;
    }

    __break(1u);
  }
}

uint64_t sub_1AC6A5880(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9E0, &qword_1AC7AB3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_235();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(inited + 32) = sub_1AC6A9570;
  *(inited + 40) = v3;
  sub_1AC69CCEC(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

uint64_t sub_1AC6A5928(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = mach_continuous_time();
  v5 = v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
  swift_beginAccess();
  sub_1AC703D04();
  v6 = *(*(v5 + 144) + 16);
  result = sub_1AC703E3C(v6);
  v8 = *(v5 + 144);
  *(v8 + 16) = v6 + 1;
  v9 = v8 + 16 * v6;
  *(v9 + 32) = a2;
  *(v9 + 40) = v4;
  *(v5 + 144) = v8;
  v10 = (v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer);
  if (*(v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer + 48))
  {
    return result;
  }

  v12 = v10[2];
  v11 = v10[3];
  v14 = v10[4];
  v13 = v10[5];
  v15 = *v10;
  v16 = v10[1];
  v17 = *(v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioFormat);
  if (v17)
  {
    result = [v17 sampleRate];
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v18 > -2147483650.0)
    {
      if (v18 < 2147483650.0)
      {
        goto LABEL_6;
      }

LABEL_19:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_6:
  v19 = sub_1AC7A0718();
  v21 = v20;
  v23 = v22;
  result = sub_1AC7A0678();
  if (result)
  {
    v24 = v11;
  }

  else
  {
    v24 = v19;
  }

  v25 = v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBufferReceivedByEAR;
  *v25 = v15;
  *(v25 + 8) = v16;
  if (result)
  {
    v26 = v14;
  }

  else
  {
    v26 = v21;
  }

  if (result)
  {
    v27 = v13;
  }

  else
  {
    v27 = v23;
  }

  *(v25 + 16) = v12;
  *(v25 + 24) = v24;
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  *(v25 + 48) = 0;
  return result;
}

void sub_1AC6A5AC0()
{
  OUTLINED_FUNCTION_104();
  v1 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  v2 = OUTLINED_FUNCTION_22(v1);
  v22 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v7 = OUTLINED_FUNCTION_22(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v21 - v12;
  v21 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_enqueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9E0, &qword_1AC7AB3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  v15 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_supportedFeatures;
  sub_1AC6AA65C(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_asrId, v13, &qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_2_7();
  sub_1AC6AA4FC(v0 + v15, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = (v11 + *(v22 + 80) + v17) & ~*(v22 + 80);
  v19 = swift_allocObject();
  sub_1AC6A941C(v13, v19 + v17);
  OUTLINED_FUNCTION_15_6();
  sub_1AC6AA6B8(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, v20);
  *(inited + 32) = sub_1AC6A948C;
  *(inited + 40) = v19;
  sub_1AC69CCEC(inited);
  swift_setDeallocating();
  sub_1AC7264BC();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC6A5CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EB56B060 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  result = sub_1AC625D20(*(a3 + *(v5 + 20)));
  if (v7)
  {
    v8 = result;
    v9 = v7;
    v10 = mach_continuous_time();
    sub_1AC728A34(a2, v8, v9, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1AC6A5D84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1AC6A2498();
  if (v7 & 1) != 0 || (v8 = *&v6, *&v9 = COERCE_DOUBLE(sub_1AC6A2550(&selRef_end)), (v10) || (v11 = *&v9, [a1 utteranceStart], v13 = v12, sub_1AC695130(), (v14) || (v15 = (v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer), (*(v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer + 48)))
  {
    sub_1AC6A6054(&v39);
    result = v39.value;
    LODWORD(v17) = v39.timescale;
    LODWORD(v18) = v39.flags;
    epoch = v39.epoch;
    v20 = v40;
    v45 = v41;
    v46 = v42;
    v47 = v43;
    v21 = v44;
LABEL_6:
    *a2 = result;
    *(a2 + 8) = v17;
    *(a2 + 12) = v18;
    *(a2 + 16) = epoch;
    *(a2 + 24) = v20;
    v22 = v46;
    *(a2 + 28) = v45;
    *(a2 + 44) = v22;
    *(a2 + 60) = v47;
    *(a2 + 76) = v21;
    return result;
  }

  result = *(v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioFormat);
  if (result)
  {
    v24 = v15[4];
    v23 = v15[5];
    v25 = v15[3];
    result = [result sampleRate];
    if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v26 > -2147483650.0)
    {
      v37 = v25;
      v38 = v23;
      if (v26 < 2147483650.0)
      {
        v27 = v8;
        v36 = HIDWORD(v24);
        v20 = v26;
        sub_1AC70C19C(v26);
        CMTimeMakeWithSeconds(&v39, v13 + v27, v20);
        sub_1AC70C064(v39.value, *&v39.timescale, v39.epoch);
        CMTimeMakeWithSeconds(&v39, v13 + v11, v20);
        value = v39.value;
        timescale = v39.timescale;
        flags = v39.flags;
        v31 = v24;
        v32 = v39.epoch;
        v33 = sub_1AC7A0678();
        if (v33)
        {
          value = v37;
          v34 = v31;
        }

        else
        {
          v34 = timescale;
        }

        if (v33)
        {
          v35 = v36;
        }

        else
        {
          v35 = flags;
        }

        if (v33)
        {
          v32 = v38;
        }

        sub_1AC70C064(value, v34 | (v35 << 32), v32);
        sub_1AC7A0688();
        sub_1AC7A0688();
        sub_1AC7A0578();
        sub_1AC7A0718();
        result = sub_1AC7A0688();
        v21 = 0;
        v18 = HIDWORD(v17);
        LOBYTE(v39.value) = 0;
        goto LABEL_6;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1AC6A6054(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_volatileRange);
  if (*(v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_volatileRange + 48))
  {
    v4 = 0;
    LODWORD(v5) = 0;
    LODWORD(v6) = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    memset(v25, 0, 12);
    v12 = 0uLL;
LABEL_12:
    *a1 = v8;
    *(a1 + 8) = v10;
    *(a1 + 16) = v9;
    *(a1 + 24) = v4;
    *(a1 + 28) = v8;
    *(a1 + 36) = v5;
    *(a1 + 40) = v6;
    *(a1 + 44) = v12;
    *(a1 + 60) = v7;
    *(a1 + 64) = v25[0];
    *(a1 + 72) = v25[1];
    *(a1 + 76) = v11;
    return;
  }

  v13 = *(v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioFormat);
  if (v13)
  {
    v17 = *(v3 + 1);
    v14 = v3[5];
    v7 = *(v3 + 8);
    v15 = *(v3 + 9);
    v8 = *v3;
    v5 = v3[1];
    [v13 sampleRate];
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v16 > -2147483650.0)
    {
      if (v16 < 2147483650.0)
      {
        v6 = HIDWORD(v5);
        v4 = v16;
        sub_1AC70C19C(v16);
        if ((*(v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBufferReceivedByEAR + 48) & 1) != 0 || (sub_1AC7A0558(), (sub_1AC7A06C8() & 1) == 0))
        {
          v12 = v17;
        }

        else
        {
          sub_1AC7A0558();
          sub_1AC7A0578();
          v8 = v18;
          LODWORD(v5) = v19;
          v6 = v20;
          v12 = v21;
          v7 = v22;
          v15 = v23;
          v14 = v24;
        }

        v11 = 0;
        LODWORD(v25[0]) = v15;
        *(v25 + 4) = v14;
        v10 = v5 | (v6 << 32);
        v9 = v12;
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
}

void *sub_1AC6A6264(void *(**a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  result = (*a1)(&v42);
  if (v42)
  {
    v37 = a2;
    v27 = v43;
    v47 = a16;
    v28 = a17 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer;
    if (*(a17 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer + 48))
    {
      __break(1u);
    }

    else
    {
      v30 = *(v28 + 32);
      v29 = *(v28 + 40);
      v31 = *(v28 + 8);
      v38[0] = *v28;
      v38[1] = v31;
      v39 = *(v28 + 16);
      v40 = v30;
      v41 = v29;
      v32 = (a17 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_volatileRange);
      if ((*(a17 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_volatileRange + 48) & 1) == 0)
      {
        v34 = v32[4];
        v33 = v32[5];
        v35 = v32[1];
        v42 = *v32;
        v43 = v35;
        v44 = *(v32 + 1);
        v45 = v34;
        v46 = v33;
        ObjectType = swift_getObjectType();
        (*(v27 + 16))(v37, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, &v47, v38, &v42, a18, a19 & 1, ObjectType, v27);
        return swift_unknownObjectRelease();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AC6A6418()
{

  OUTLINED_FUNCTION_5_5();
  sub_1AC6AA714(v0 + v1, v2);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_171_2();
  sub_1AC5C9624(v3, v4, v5);
  OUTLINED_FUNCTION_171_2();
  sub_1AC5C9624(v6, v7, v8);
  sub_1AC5C9624(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_analysisOptions, &qword_1EB56C7D0, &qword_1AC7ACB40);

  OUTLINED_FUNCTION_102_2();
  sub_1AC6AA714(v0 + v9, v10);

  OUTLINED_FUNCTION_3_3();

  memcpy(v12, (v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements), 0xAAuLL);
  sub_1AC6A91CC(v12);

  sub_1AC5C3958(*(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinalizeToRange), *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinalizeToRange + 8));
  sub_1AC5C3958(*(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFailWithError), *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFailWithError + 8));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1AC6A6678()
{
  sub_1AC6A6418();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1AC6A66A4()
{
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v0);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6A6708(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AC5C4D48;

  return sub_1AC695160(a1);
}

uint64_t sub_1AC6A679C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AC6A67BC, v1, 0);
}

uint64_t sub_1AC6A67BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_volatileRange;
  v3 = *(v2 + 48);
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  *v1 = *v2;
  *(v1 + 16) = v4;
  *(v1 + 32) = v5;
  *(v1 + 48) = v3;
  OUTLINED_FUNCTION_44();
  return v6();
}

uint64_t sub_1AC6A6804(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AC5C4D48;

  return sub_1AC69A680(a1, a2, a3, a4);
}

uint64_t sub_1AC6A68C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C5380;

  return sub_1AC69AED4();
}

uint64_t sub_1AC6A6950()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;

  return sub_1AC69B2EC();
}

uint64_t sub_1AC6A69DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC6A6A04, v4, 0);
}

uint64_t sub_1AC6A6A04()
{
  OUTLINED_FUNCTION_85();
  sub_1AC69BFC4(v0[2], v0[3], v0[4], v0[5]);
  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC6A6AB0(uint64_t a1)
{
  v2 = *v1;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v2);
  return sub_1AC7A0EC8();
}

uint64_t EARResultType.hashValue.getter()
{
  v1 = *v0;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

unint64_t sub_1AC6A6BF4()
{
  result = qword_1EB56C9B0;
  if (!qword_1EB56C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C9B0);
  }

  return result;
}

uint64_t type metadata accessor for SpeechRecognizerWorker(uint64_t a1)
{
  result = qword_1ED937C98;
  if (!qword_1ED937C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AC6A6C9C(uint64_t a1)
{
  type metadata accessor for SpeechRecognizerSupportedFeatures(319);
  if (v1 <= 0x3F)
  {
    sub_1AC6A6EF8(319, &qword_1ED937D68, MEMORY[0x1E69695A8]);
    if (v2 <= 0x3F)
    {
      sub_1AC6A6EF8(319, qword_1ED937B98, type metadata accessor for SpeechAnalyzer.Options);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ClientInfo(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1AC6A6EF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_93();
    v4 = sub_1AC7A0798();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for EARResultType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EARResultType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t destroy for SpeechRecognizerWorker.PerfMeasurements()
{
}

uint64_t initializeWithCopy for SpeechRecognizerWorker.PerfMeasurements(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v3;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v4 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v4;
  v5 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v5;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  return a1;
}

uint64_t assignWithCopy for SpeechRecognizerWorker.PerfMeasurements(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  return a1;
}

uint64_t assignWithTake for SpeechRecognizerWorker.PerfMeasurements(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 144) = *(a2 + 144);

  v4 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v4;

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  return a1;
}

uint64_t getEnumTagSinglePayload for SpeechRecognizerWorker.PerfMeasurements(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 170))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SpeechRecognizerWorker.PerfMeasurements(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 170) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 170) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for SpeechRecognizerWorker.ResumeContext()
{
}

void *initializeWithCopy for SpeechRecognizerWorker.ResumeContext(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;

  return a1;
}

void *assignWithCopy for SpeechRecognizerWorker.ResumeContext(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  return a1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

void *assignWithTake for SpeechRecognizerWorker.ResumeContext(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for SpeechRecognizerWorker.ResumeContext(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SpeechRecognizerWorker.ResumeContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpeechRecognizerWorker.PauseResumeState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1AC6A77D0()
{
  result = qword_1EB56C9B8;
  if (!qword_1EB56C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C9B8);
  }

  return result;
}

uint64_t sub_1AC6A786C(uint64_t a1)
{
  result = sub_1AC6A78C4(&qword_1EB56B418, type metadata accessor for SpeechRecognizerWorker);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6A78C4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_93();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1AC6A7908()
{
  v1 = [v0 nBest];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD48, &qword_1AC7A8178);
  v3 = OUTLINED_FUNCTION_211_1(v2);

  sub_1AC6A7A08(v3);
  OUTLINED_FUNCTION_169_1();

  return v1;
}

uint64_t sub_1AC6A7984()
{
  v0 = [OUTLINED_FUNCTION_117_2() nBest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD48, &qword_1AC7A8178);
  OUTLINED_FUNCTION_93();
  sub_1AC7A0158();

  v1 = OUTLINED_FUNCTION_172();
  sub_1AC6A7C4C(v1, v2);
  v4 = v3;

  return v4;
}

void sub_1AC6A7A08(uint64_t result)
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  v3 = *(result + 16);
  v4 = result + 32;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v3 == v1)
    {
      v10 = sub_1AC61C24C();
      if (v10)
      {
        v11 = v10;
        v25 = v2;
        v12 = OUTLINED_FUNCTION_241();
        sub_1AC6312E0(v12, v13, v14);
        if (v11 < 0)
        {
          goto LABEL_31;
        }

        v15 = 0;
        v16 = v25;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x1B26E95B0](v15, v5);
          }

          else
          {
            v17 = *(v5 + 8 * v15 + 32);
          }

          v18 = v17;
          [v17 start];
          v20 = v19;

          v22 = *(v25 + 16);
          v21 = *(v25 + 24);
          if (v22 >= v21 >> 1)
          {
            v23 = OUTLINED_FUNCTION_9(v21);
            sub_1AC6312E0(v23, v22 + 1, 1);
          }

          ++v15;
          *(v25 + 16) = v22 + 1;
          *(v25 + 8 * v22 + 32) = v20;
        }

        while (v11 != v15);
      }

      else
      {

        v16 = MEMORY[0x1E69E7CC0];
      }

      sub_1AC6A7EA4(v16);
      OUTLINED_FUNCTION_169_1();

      return;
    }

    if (v1 >= v3)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_29;
    }

    v7 = *(v4 + 8 * v1);
    if (v7 >> 62)
    {
      v8 = sub_1AC7A08E8();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v1;
    if (v8)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {

        MEMORY[0x1B26E95B0](0, v7);
        OUTLINED_FUNCTION_117_2();
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v9 = *(v7 + 32);
      }

      MEMORY[0x1B26E8CF0](v9);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AC7A0178();
      }

      OUTLINED_FUNCTION_172();
      sub_1AC7A0198();
      v5 = v24;
      v1 = v6;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1AC6A7C4C(uint64_t result, SEL *a2)
{
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v5 = *(result + 16);
  v6 = result + 32;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v3)
    {
      v14 = sub_1AC61C24C();
      if (v14)
      {
        v15 = v14;
        v28 = v4;
        v16 = OUTLINED_FUNCTION_241();
        sub_1AC6312E0(v16, v17, v18);
        if (v15 < 0)
        {
          goto LABEL_35;
        }

        v19 = 0;
        v20 = v28;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1B26E95B0](v19, v7);
          }

          else
          {
            v21 = *(v7 + 8 * v19 + 32);
          }

          v22 = v21;
          [v21 *a2];
          v24 = v23;

          v26 = *(v28 + 16);
          v25 = *(v28 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_1AC6312E0(v25 > 1, v26 + 1, 1);
          }

          ++v19;
          *(v28 + 16) = v26 + 1;
          *(v28 + 8 * v26 + 32) = v24;
        }

        while (v15 != v19);
      }

      else
      {

        v20 = MEMORY[0x1E69E7CC0];
      }

      sub_1AC6960B8(v20);
      OUTLINED_FUNCTION_169_1();

      return;
    }

    if (v3 >= v5)
    {
      break;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_31;
    }

    v9 = *(v6 + 8 * v3);
    if (v9 >> 62)
    {
      v10 = sub_1AC7A08E8();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v3;
    if (v10)
    {
      v11 = v10 - 1;
      if (__OFSUB__(v10, 1))
      {
        goto LABEL_32;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {

        v13 = OUTLINED_FUNCTION_74_0();
        MEMORY[0x1B26E95B0](v13);
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }

        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      MEMORY[0x1B26E8CF0](v12);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AC7A0178();
      }

      OUTLINED_FUNCTION_143();
      sub_1AC7A0198();
      v7 = v27;
      v3 = v8;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1AC6A7EA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1AC6A7EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC6A7F14, 0, 0);
}

uint64_t sub_1AC6A7F14()
{
  OUTLINED_FUNCTION_85();
  [*(v0 + 24) start];
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_46_7(v1);

  return sub_1AC75A698();
}

uint64_t sub_1AC6A7FB0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1AC6A80CC()
{
  OUTLINED_FUNCTION_102();
  if (qword_1EB56B060 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v0[11] = qword_1EB56E6E8;
  sub_1AC70AAE0(v1);
  v6 = OUTLINED_FUNCTION_117();
  sub_1AC7285D0(v6, v7, v4, v8, v2, v3);
  [v5 start];
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_46_7(v9);

  return sub_1AC75A698();
}

uint64_t sub_1AC6A81E4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1AC6A8300()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[13];
  if (v1)
  {
    sub_1AC7285E8(v0[4], v0[5], v0[6], v1, v0[7], v0[8]);
  }

  OUTLINED_FUNCTION_29();

  return v2();
}

id sub_1AC6A8384(void (*a1)(void))
{
  v2 = [objc_opt_self() anonymousListener];
  v4 = [v2 endpoint];
  sub_1AC6ED760(a1);

  return v4;
}

uint64_t sub_1AC6A8454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(v3 + 128) + 16);

  os_unfair_lock_lock(v7);
  sub_1AC6A84F0(v3, a1, a2, a3);
  os_unfair_lock_unlock(v7);
}

uint64_t sub_1AC6A84F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_235();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_134_3();
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a1 + 96);
  sub_1AC6E1260();
  *(a1 + 96) = v6;
  swift_endAccess();
}

uint64_t sub_1AC6A85C4(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1 + 16, v5);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = OUTLINED_FUNCTION_74_0();
    sub_1AC6A78C4(v2, v3);
  }

  return Strong;
}

void sub_1AC6A87D0(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_67_5();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v1 - v3;
  if (__OFSUB__(v1, v3))
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

  if (__OFADD__(v4, v3 - v1))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1AC5C4BF8(v4 - v8, 1, sub_1AC60E5B8);
  v9 = *v2;
  v10 = *v2 + 32;
  v11 = (v10 + 16 * v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCD0, &qword_1AC7AB4A0);
  OUTLINED_FUNCTION_143();
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v2 = v9;
    return;
  }

  OUTLINED_FUNCTION_221_0();
  if (v6)
  {
    goto LABEL_16;
  }

  sub_1AC706D1C((v10 + 16 * v1), v12, v11);
  OUTLINED_FUNCTION_222_0();
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_1AC6A88F4(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_67_5();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v1 - v3;
  if (__OFSUB__(v1, v3))
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

  if (__OFADD__(v4, v3 - v1))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1AC5C4BF8(v4 - v8, 1, sub_1AC60EEFC);
  v9 = *v2;
  type metadata accessor for LanguageDetector.LocaleAlternative(0);
  OUTLINED_FUNCTION_28_5();
  v11 = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v13 = *(v12 + 72);
  v14 = v11 + v13 * v7;
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v2 = v9;
    return;
  }

  OUTLINED_FUNCTION_221_0();
  if (v6)
  {
    goto LABEL_16;
  }

  sub_1AC704098(v11 + v13 * v1, v15, v14);
  OUTLINED_FUNCTION_222_0();
  if (!v6)
  {
    *(v9 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_1AC6A8A54()
{
  OUTLINED_FUNCTION_104();
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v2;
  v6 = *(*v0 + 16);
  if (v6 < v2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v1;
  v8 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v1 - v2;
  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v6, v9))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v4;
  sub_1AC5C4BF8(v6 - v8, 1, v3);
  v11 = *v0;
  v12 = OUTLINED_FUNCTION_157_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_28_5();
  v15 = v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v16 + 72);
  v18 = v15 + v17 * v7;
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v0 = v11;
    OUTLINED_FUNCTION_105();
    return;
  }

  v19 = *(v11 + 16);
  if (__OFSUB__(v19, v5))
  {
    goto LABEL_16;
  }

  v10(v15 + v17 * v5, v19 - v5, v18);
  v20 = *(v11 + 16);
  v21 = __OFADD__(v20, v9);
  v22 = v20 - v8;
  if (!v21)
  {
    *(v11 + 16) = v22;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1AC6A8B80@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a2 >> 62;
  v9 = 0;
  v10 = a1 >> 32;
  v11 = 0;
  switch(v5)
  {
    case 1uLL:
      v11 = a1;
      v9 = a1 >> 32;
      break;
    case 2uLL:
      v11 = *(a1 + 16);
      v9 = *(a1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v11 = 0;
      v9 = BYTE6(a2);
      break;
  }

  v12 = sub_1AC6A8EE8(v11, v9, a1, a2);
  if (a3 < 1)
  {
    if (v12 <= 0 && v12 > a3)
    {
      goto LABEL_8;
    }

LABEL_15:
    result = sub_1AC6A8E80(v11, a3, a1, a2);
    goto LABEL_16;
  }

  if (v12 < 0 || v12 >= a3)
  {
    goto LABEL_15;
  }

LABEL_8:
  result = 0;
  switch(v5)
  {
    case 1:
      result = v10;
      break;
    case 2:
      result = *(a1 + 24);
      break;
    case 3:
      break;
    default:
      result = BYTE6(a2);
      break;
  }

LABEL_16:
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = result;
  return result;
}

uint64_t sub_1AC6A8CA4()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_64_0(v2);
  *v3 = v4;
  v3[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_83_4();

  return sub_1AC69AB64(v5, v6, v7, v1);
}

uint64_t sub_1AC6A8D4C(void *a1)
{
  v1 = [a1 enhancedContextualStrings];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1AC5CF764(0, &qword_1EB56CA30, off_1E797ADE8);
  v3 = sub_1AC7A0158();

  return v3;
}

uint64_t sub_1AC6A8DBC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1AC7A0158();

  return v4;
}

uint64_t sub_1AC6A8E10(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1AC79FF68();

  return v3;
}

uint64_t sub_1AC6A8E80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v8)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v6 = a3;
      v5 = a3 >> 32;
      break;
    case 2uLL:
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v6 = 0;
      v5 = BYTE6(a4);
      break;
  }

  if (v5 >= result)
  {
    v8 = __OFSUB__(result, v6);
    v7 = result - v6 < 0;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  if (v7 != v8)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1AC6A8EE8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  v5 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v4 = a3 >> 32;
      v5 = a3;
      break;
    case 2uLL:
      v5 = *(a3 + 16);
      v4 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = 0;
      v4 = BYTE6(a4);
      break;
  }

  if (v4 < result || v5 > result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = 0;
  v8 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      v8 = a3;
      break;
    case 2uLL:
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = 0;
      v7 = BYTE6(a4);
      break;
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_21;
  }

  v10 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v10)
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

unint64_t sub_1AC6A8FB8()
{
  result = qword_1EB56AA98;
  if (!qword_1EB56AA98)
  {
    sub_1AC5CF764(255, &qword_1EB56AAA0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AA98);
  }

  return result;
}

uint64_t sub_1AC6A9020@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AC6A85C4(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AC6A9078@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AC6A85C4(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AC6A90D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  *(a3 + 152) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 136) = a2;

  *(a3 + 112) = sub_1AC6A8384(sub_1AC6A91B4);
  *(a3 + 120) = v5;
  *(a3 + 128) = v6;
  *(a3 + 152) = &off_1F212E978;
  swift_unknownObjectWeakAssign();

  sub_1AC6A8454(a3, &unk_1F2134510, sub_1AC6A91AC);

  return a3;
}

uint64_t objectdestroy_57Tm_0(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1AC6A9288(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1AC6A92EC()
{
  OUTLINED_FUNCTION_112_3();
  v2 = v1;
  v15 = *(v0 + 3);
  v16 = *(v0 + 2);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = *(v0 + 6);
  v6 = *(v0 + 7);
  v7 = *(v0 + 8);
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[12];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_64_0(v11);
  *v12 = v13;
  v12[1] = sub_1AC5C5380;

  return sub_1AC69D410(v8, v9, v10, v2, v16, v15, v3, v4, v5, v6, v7);
}

uint64_t sub_1AC6A941C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC6A948C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  OUTLINED_FUNCTION_167(v8);
  v10 = v1 + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_1AC6A5CD0(a1, v1 + v5, v10);
}

uint64_t sub_1AC6A95A8()
{
  OUTLINED_FUNCTION_492();
  OUTLINED_FUNCTION_57();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_66_4();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_124(v1);
  *v2 = v3;
  v2[1] = sub_1AC5C5380;
  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_77_2();

  return sub_1AC6A4F44(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1AC6A96D8()
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_105_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_95_2(v1);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_291();

  return sub_1AC6A7EE8(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_140Tm()
{
  OUTLINED_FUNCTION_21_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  OUTLINED_FUNCTION_28_5();
  v8 = (v4 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);

  v11 = sub_1AC79F958();
  if (!OUTLINED_FUNCTION_254_0(v11))
  {
    (*(*(v6 - 8) + 8))(v0 + v4, v6);
  }

  sub_1AC79FB18();
  OUTLINED_FUNCTION_22_0();
  (*(v12 + 8))(v0 + v8);
  OUTLINED_FUNCTION_258_0();
  v13 = OUTLINED_FUNCTION_158_2();
  if (!OUTLINED_FUNCTION_107_1(v13))
  {
    v14 = OUTLINED_FUNCTION_257_0();
    if (!OUTLINED_FUNCTION_109_2(v14))
    {
      OUTLINED_FUNCTION_40_5();
      v15 = OUTLINED_FUNCTION_236();
      v16(v15);
    }

    OUTLINED_FUNCTION_156_2();
    v17 = *(v1 + 28);
    if (!OUTLINED_FUNCTION_13_1(v4 + v17))
    {
      OUTLINED_FUNCTION_40_5();
      (*(v18 + 8))(v4 + v17, v10);
    }

    OUTLINED_FUNCTION_155_2();
    OUTLINED_FUNCTION_256_0();
    OUTLINED_FUNCTION_255_0();
    OUTLINED_FUNCTION_271_0();
    OUTLINED_FUNCTION_270_0();
  }

  OUTLINED_FUNCTION_174_1();
  OUTLINED_FUNCTION_269_0();
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_267_0();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6BDD0](v19, v20, v21);
}

uint64_t sub_1AC6A9A20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v0);
  v1 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  OUTLINED_FUNCTION_167(v1);
  v2 = OUTLINED_FUNCTION_147_2();

  return v3(v2);
}

uint64_t sub_1AC6A9B1C()
{
  OUTLINED_FUNCTION_492();
  OUTLINED_FUNCTION_57();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_66_4();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_124(v1);
  *v2 = v3;
  v2[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_77_2();

  return sub_1AC6A4550(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_149Tm()
{
  OUTLINED_FUNCTION_21_4();
  v2 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  OUTLINED_FUNCTION_28_5();
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v7);
  v9 = (v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);

  sub_1AC79FB18();
  OUTLINED_FUNCTION_22_0();
  (*(v12 + 8))(v0 + v4);
  OUTLINED_FUNCTION_258_0();
  v13 = OUTLINED_FUNCTION_158_2();
  if (!OUTLINED_FUNCTION_107_1(v13))
  {
    v14 = OUTLINED_FUNCTION_257_0();
    if (!OUTLINED_FUNCTION_109_2(v14))
    {
      OUTLINED_FUNCTION_40_5();
      v15 = OUTLINED_FUNCTION_236();
      v16(v15);
    }

    OUTLINED_FUNCTION_156_2();
    v17 = *(v1 + 28);
    if (!OUTLINED_FUNCTION_13_1(v6 + v17))
    {
      OUTLINED_FUNCTION_40_5();
      (*(v18 + 8))(v6 + v17, v11);
    }

    OUTLINED_FUNCTION_155_2();
    OUTLINED_FUNCTION_256_0();
    OUTLINED_FUNCTION_255_0();
    OUTLINED_FUNCTION_271_0();
    OUTLINED_FUNCTION_270_0();
  }

  OUTLINED_FUNCTION_174_1();
  OUTLINED_FUNCTION_269_0();
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_267_0();
  v19 = sub_1AC79F958();
  if (!OUTLINED_FUNCTION_252_0(v19))
  {
    OUTLINED_FUNCTION_61_3();
    (*(v20 + 8))(v0 + v9, v2);
  }

  OUTLINED_FUNCTION_240_0();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6BDD0](v21, v22, v23);
}

uint64_t sub_1AC6A9E70()
{
  OUTLINED_FUNCTION_169();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_217_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_124(v1);
  *v2 = v3;
  v2[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_115();

  return sub_1AC6A04AC(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1AC6A9FA8()
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_105_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_95_2(v1);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_636();

  return sub_1AC6A0868(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_127Tm_0()
{
  OUTLINED_FUNCTION_21_4();
  v2 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  OUTLINED_FUNCTION_28_5();
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v7);
  v9 = (v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);

  sub_1AC79FB18();
  OUTLINED_FUNCTION_22_0();
  (*(v12 + 8))(v0 + v4);
  OUTLINED_FUNCTION_258_0();
  v13 = OUTLINED_FUNCTION_158_2();
  if (!OUTLINED_FUNCTION_107_1(v13))
  {
    v14 = OUTLINED_FUNCTION_257_0();
    if (!OUTLINED_FUNCTION_109_2(v14))
    {
      OUTLINED_FUNCTION_40_5();
      v15 = OUTLINED_FUNCTION_236();
      v16(v15);
    }

    OUTLINED_FUNCTION_156_2();
    v17 = *(v1 + 28);
    if (!OUTLINED_FUNCTION_13_1(v6 + v17))
    {
      OUTLINED_FUNCTION_40_5();
      (*(v18 + 8))(v6 + v17, v11);
    }

    OUTLINED_FUNCTION_155_2();
    OUTLINED_FUNCTION_256_0();
    OUTLINED_FUNCTION_255_0();
    OUTLINED_FUNCTION_271_0();
    OUTLINED_FUNCTION_270_0();
  }

  OUTLINED_FUNCTION_174_1();
  OUTLINED_FUNCTION_269_0();
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_267_0();
  v19 = sub_1AC79F958();
  if (!OUTLINED_FUNCTION_252_0(v19))
  {
    OUTLINED_FUNCTION_61_3();
    (*(v20 + 8))(v0 + v9, v2);
  }

  OUTLINED_FUNCTION_240_0();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6BDD0](v21, v22, v23);
}

uint64_t sub_1AC6AA260()
{
  v0 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  OUTLINED_FUNCTION_22(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v1);
  v2 = OUTLINED_FUNCTION_147_2();

  return v3(v2);
}

uint64_t sub_1AC6AA344()
{
  OUTLINED_FUNCTION_492();
  OUTLINED_FUNCTION_57();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_217_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_124(v1);
  *v2 = v3;
  v2[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_77_2();

  return sub_1AC6A1A1C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1AC6AA45C()
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_105_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_95_2(v1);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_291();

  return sub_1AC6A21B0(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AC6AA4FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_80();
  v4 = OUTLINED_FUNCTION_39();
  v5(v4);
  return a2;
}

unint64_t sub_1AC6AA608()
{
  result = qword_1EB56AF10;
  if (!qword_1EB56AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AF10);
  }

  return result;
}

uint64_t sub_1AC6AA65C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_80();
  v5 = OUTLINED_FUNCTION_39();
  v6(v5);
  return a2;
}

uint64_t sub_1AC6AA6B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_80();
  v4 = OUTLINED_FUNCTION_39();
  v5(v4);
  return a2;
}

uint64_t sub_1AC6AA714(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_22_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1AC6AA768()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_64_0(v6);
  *v7 = v8;
  v7[1] = sub_1AC5C4D48;

  return sub_1AC694498(v4, v2, v5);
}

void OUTLINED_FUNCTION_34_6()
{

  sub_1AC60DBDC();
}

uint64_t OUTLINED_FUNCTION_39_5(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2048;
  return result;
}

uint64_t OUTLINED_FUNCTION_79_3()
{
}

void OUTLINED_FUNCTION_82_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  sub_1AC72821C(v15 + v14, a13, v13, a1);
}

__n128 OUTLINED_FUNCTION_101_3@<Q0>(__n128 *a1@<X8>)
{
  v3 = a1[2].n128_u64[0];
  v2 = a1[2].n128_u64[1];
  v4 = a1->n128_u64[1];
  result = a1[1];
  *(v1 + 84) = a1->n128_u64[0];
  *(v1 + 92) = v4;
  *(v1 + 100) = result;
  *(v1 + 116) = v3;
  *(v1 + 124) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_106_3()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_108_2()
{
}

uint64_t OUTLINED_FUNCTION_109_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_113_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_114_2(uint64_t a1)
{
  v4 = *(v1 + *(a1 + 20));
  *(v2 + 632) = v4;

  return sub_1AC625D20(v4);
}

uint64_t OUTLINED_FUNCTION_125_2(uint64_t result, uint64_t a2)
{
  *(v2 + 584) = result;
  *(v2 + 592) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_138_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_151_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_160_1()
{

  return sub_1AC5CD620(v0 + 16, v0 + 400);
}

uint64_t OUTLINED_FUNCTION_176_1()
{
  result = v0[3];
  v0[5] = *(v0[4] + 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_179_2()
{
}

uint64_t OUTLINED_FUNCTION_201_1()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

unint64_t OUTLINED_FUNCTION_202_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_1AC5CFE74(a1, v16, va);
}

uint64_t OUTLINED_FUNCTION_203_1(unsigned int a1)
{

  return sub_1AC5CFAB8(v1, a1);
}

void *OUTLINED_FUNCTION_205_0@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v2 + 16), (a1 + v1), 0x4BuLL);
}

void OUTLINED_FUNCTION_206_1(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_207_1(uint64_t a1)
{

  return sub_1AC7280C4(v1, v3, v2, a1, v4);
}

BOOL OUTLINED_FUNCTION_210_1()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_211_1(uint64_t a1)
{

  return sub_1AC7A0158();
}

uint64_t OUTLINED_FUNCTION_212_1()
{

  return type metadata accessor for SpeechRecognizerSupportedFeatures(0);
}

uint64_t OUTLINED_FUNCTION_213_0()
{
}

void OUTLINED_FUNCTION_214_0()
{

  JUMPOUT(0x1B26E8C40);
}

uint64_t OUTLINED_FUNCTION_227_0(uint64_t result)
{
  v2[2] = v3;
  v2[3] = result;
  v2[4] = v1;
  return result;
}

void OUTLINED_FUNCTION_248_0()
{
  v2 = *(v0 + 624);
}

uint64_t OUTLINED_FUNCTION_249_0()
{

  return type metadata accessor for SpeechRecognizerSupportedFeatures(0);
}

void OUTLINED_FUNCTION_250_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_252_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

void OUTLINED_FUNCTION_253_0(uint64_t a1)
{

  sub_1AC72808C(v2, v1, v3, a1);
}

uint64_t OUTLINED_FUNCTION_254_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_255_0()
{
}

uint64_t OUTLINED_FUNCTION_256_0()
{
}

uint64_t OUTLINED_FUNCTION_257_0()
{

  return sub_1AC79F7F8();
}

uint64_t OUTLINED_FUNCTION_259_0()
{

  return sub_1AC79FFD8();
}

uint64_t OUTLINED_FUNCTION_260_0(uint64_t a1, double a2)
{

  return sub_1AC7A03F8();
}

uint64_t OUTLINED_FUNCTION_261_0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1AC6AA65C(v3 + a3, v4, a1, a2);
}

double OUTLINED_FUNCTION_262_0()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_263@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1AC6AA65C(v3 + a3, v4, a1, a2);
}

uint64_t OUTLINED_FUNCTION_264_0()
{

  return sub_1AC61C24C();
}

uint64_t OUTLINED_FUNCTION_265_0(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_267_0()
{
}

uint64_t OUTLINED_FUNCTION_268_0()
{
}

uint64_t OUTLINED_FUNCTION_269_0()
{
}

uint64_t OUTLINED_FUNCTION_270_0()
{
}

void OUTLINED_FUNCTION_271_0()
{
  v3 = *(v0 + *(v1 + 56));
}

uint64_t sub_1AC6AB16C(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000068;
  v3 = 0x6F69746174636944;
  v4 = 0xE90000000000006ELL;
  v5 = a1;
  v6 = "SearchOrMessaging";
  v7 = 0x6F69746174636944;
  switch(v5)
  {
    case 1:
      OUTLINED_FUNCTION_29_8();
      break;
    case 2:
      v7 = 0x6372616553626557;
      v4 = 0xE900000000000068;
      break;
    case 3:
      v7 = 0xD000000000000011;
      v4 = 0x80000001AC7B47A0;
      break;
    case 4:
      v7 = 0x69614D6563696F56;
      v4 = 0xE90000000000006CLL;
      break;
    case 5:
      v7 = 0x696E6F6974706143;
      v4 = 0xEA0000000000676ELL;
      break;
    case 6:
      v4 = 0xEB0000000043436ELL;
      v7 = 0x6F69746174636944;
      break;
    case 7:
      v4 = 0xE700000000000000;
      v7 = 0x43436C6C657053;
      break;
    case 8:
      v4 = 0xE800000000000000;
      v7 = 0x676E696C6C657053;
      break;
    case 9:
      v4 = 0xE500000000000000;
      v7 = 0x746F687354;
      break;
    default:
      break;
  }

  v8 = v2 + 6;
  switch(a2)
  {
    case 1:
      v3 = 0x7463694469726953;
      v8 = 0xED00006E6F697461;
      break;
    case 2:
      v3 = 0x6372616553626557;
      v8 = 0xE900000000000068;
      break;
    case 3:
      v3 = 0xD000000000000011;
      v8 = (v6 - 32) | 0x8000000000000000;
      break;
    case 4:
      v3 = 0x69614D6563696F56;
      v8 = v2 + 4;
      break;
    case 5:
      v3 = 0x696E6F6974706143;
      v8 = 0xEA0000000000676ELL;
      break;
    case 6:
      v8 = 0xEB0000000043436ELL;
      break;
    case 7:
      v8 = 0xE700000000000000;
      v3 = 0x43436C6C657053;
      break;
    case 8:
      v8 = 0xE800000000000000;
      v3 = 0x676E696C6C657053;
      break;
    case 9:
      v8 = 0xE500000000000000;
      v3 = 0x746F687354;
      break;
    default:
      break;
  }

  if (v7 == v3 && v4 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1AC7A0D38();
  }

  return v10 & 1;
}

uint64_t sub_1AC6AB3E8(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000011;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x74616C736E617254;
    }

    if (v3 == 1)
    {
      v5 = 0x80000001AC7B4830;
    }

    else
    {
      v5 = 0xEC00000070704165;
    }
  }

  else
  {
    v5 = 0x80000001AC7B4810;
    v4 = 0xD000000000000011;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = 0x74616C736E617254;
    }

    if (a2 == 1)
    {
      v6 = 0x80000001AC7B4830;
    }

    else
    {
      v6 = 0xEC00000070704165;
    }
  }

  else
  {
    v6 = 0x80000001AC7B4810;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AC7A0D38();
  }

  return v8 & 1;
}

uint64_t sub_1AC6AB504(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_29_8();
      break;
    default:
      break;
  }

  sub_1AC7A0048();
}

uint64_t sub_1AC6AB680(uint64_t a1, unsigned __int8 a2)
{
  sub_1AC7A0048();
}

void sub_1AC6AB720(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v3);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - v5;
  if (!a1)
  {
    goto LABEL_5;
  }

  v7 = v1 + OBJC_IVAR____TtC6Speech16LanguageDetector__workerWithLocked;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech16LanguageDetector__workerWithLocked));
  v8 = *(v7 + 16);
  os_unfair_lock_unlock(v7);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v9 = sub_1AC79FDE8();
  __swift_project_value_buffer(v9, qword_1ED9386C8);
  if (v8)
  {
    v13 = sub_1AC79FDC8();
    v14 = sub_1AC7A05F8();
    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_150();
      v15 = OUTLINED_FUNCTION_25_7();
      v18 = v15;
      *v6 = 136315138;
      OUTLINED_FUNCTION_65();
      *(v6 + 4) = sub_1AC5CFE74(0xD00000000000002CLL, v16, &v18);
      _os_log_impl(&dword_1AC5BC000, v13, v14, "Failed precondition: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_129();
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v10 = v1 + OBJC_IVAR____TtC6Speech16LanguageDetector__workerWithLocked;
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech16LanguageDetector__workerWithLocked));
    *(v10 + 8) = a1;

    *(v10 + 16) = 1;
    os_unfair_lock_unlock(v10);
    v11 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a1;
    v12[5] = v1;

    sub_1AC659B08();
  }
}

Speech::LanguageDetectorResultReportingFrequency_optional __swiftcall LanguageDetectorResultReportingFrequency.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1AC6AB97C@<X0>(uint64_t *a1@<X8>)
{
  result = LanguageDetectorResultReportingFrequency.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t LanguageDetectorOptions.init(languageConstraints:alternativeCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  return result;
}

uint64_t LanguageDetectorOptions.init(languageConstraints:alternativeCount:resultReportingFrequency:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t LanguageDetectorOptions.init(languageConstraints:alternativeCount:resultReportingFrequency:useVAD:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v5;
  *(a5 + 17) = a4;
  return result;
}

uint64_t static LanguageDetectorOptions.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  if (!*a1)
  {
    if (v5)
    {
      v13 = 0;
    }

    else
    {
      v13 = v2 == v6;
    }

    if (v13 && v3 == v7)
    {
      return v4 ^ v8 ^ 1u;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  sub_1AC6285B0();
  v10 = v9;

  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7)
  {
    return v4 ^ v8 ^ 1u;
  }

  return result;
}

uint64_t LanguageDetectorOptions.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*v0)
  {
    sub_1AC7A0E98();
    sub_1AC6336A8();
  }

  else
  {
    sub_1AC7A0E98();
  }

  MEMORY[0x1B26E9A40](v1);
  MEMORY[0x1B26E9A40](v2);
  return sub_1AC7A0E98();
}

uint64_t LanguageDetectorOptions.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1AC7A0E78();
  sub_1AC7A0E98();
  if (v2)
  {
    sub_1AC6336A8();
  }

  MEMORY[0x1B26E9A40](v1);
  MEMORY[0x1B26E9A40](v3);
  sub_1AC7A0E98();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6ABBE4(uint64_t a1)
{
  sub_1AC7A0E78();
  LanguageDetectorOptions.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t LanguageDetector.supportedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 88) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v2);
  *(v1 + 96) = swift_task_alloc();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC6ABCCC()
{
  v1 = sub_1AC6AC458();
  *(v0 + 104) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_1AC6ABE3C;

    return sub_1AC766870();
  }

  else
  {
    v4 = *(v0 + 96);
    type metadata accessor for LanguageDetectorWorker();
    *(v0 + 64) = xmmword_1AC7AB560;
    *(v0 + 80) = 0;
    v5 = type metadata accessor for SpeechAnalyzer.Options(0);
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *v6 = v0;
    v6[1] = sub_1AC6ABFAC;

    return sub_1AC765C80();
  }
}

uint64_t sub_1AC6ABE3C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v7 + 120) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC6ABF40()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_82();

  return v2(v1);
}

uint64_t sub_1AC6ABFAC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v9 + 136) = v8;
  *(v9 + 144) = v0;

  sub_1AC5C720C(v5, &qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC6AC0D8()
{
  OUTLINED_FUNCTION_85();
  if (*(v0 + 136))
  {

    v1 = swift_task_alloc();
    *(v0 + 152) = v1;
    *v1 = v0;
    v1[1] = sub_1AC6AC1AC;

    return sub_1AC766870();
  }

  else
  {

    OUTLINED_FUNCTION_82();

    return v3(0);
  }
}

uint64_t sub_1AC6AC1AC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_18_2();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  v3[20] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC6AC2B8()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_82();

  return v2(v1);
}

uint64_t sub_1AC6AC324()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AC6AC38C()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AC6AC3EC()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AC6AC458()
{
  v1 = v0 + OBJC_IVAR____TtC6Speech16LanguageDetector__workerWithLocked;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC6Speech16LanguageDetector__workerWithLocked));
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t LanguageDetector.__allocating_init(options:clientInfo:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LanguageDetector.init(options:clientInfo:)(a1, a2);
  return v4;
}

uint64_t LanguageDetector.init(options:clientInfo:)(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA68, &unk_1AC7AB5A0);
  OUTLINED_FUNCTION_40();
  v6 = v5;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v7);
  v28 = v27 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA70, &qword_1AC7B2590);
  OUTLINED_FUNCTION_40();
  v29 = v9;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA78, &qword_1AC7AB5B0);
  v14 = OUTLINED_FUNCTION_167(v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v27 - v18;
  v20 = *a1;
  v21 = *(a1 + 8);
  v22 = *(a1 + 16);
  v23 = v2 + OBJC_IVAR____TtC6Speech16LanguageDetector__workerWithLocked;
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  v24 = v2 + OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions;
  *v24 = v20;
  *(v24 + 8) = v21;
  *(v24 + 16) = v22;
  v27[1] = a2;
  sub_1AC6B1678(a2, v2 + OBJC_IVAR____TtC6Speech16LanguageDetector_clientInfo, type metadata accessor for ClientInfo);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA80, &qword_1AC7AB5B8);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v25);
  v32 = v19;
  type metadata accessor for LanguageDetector.Result(0);
  (*(v6 + 104))(v28, *MEMORY[0x1E69E8790], v30);
  sub_1AC68A29C(v20);
  sub_1AC7A03B8();
  (*(v29 + 32))(v2 + OBJC_IVAR____TtC6Speech16LanguageDetector__results, v12, v31);
  sub_1AC6B0370(v19, v17);
  result = __swift_getEnumTagSinglePayload(v17, 1, v25);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10_7();
    sub_1AC6B03E0();
    sub_1AC68A2AC(v20);
    (*(*(v25 - 8) + 32))(v2 + OBJC_IVAR____TtC6Speech16LanguageDetector_resultsBuilder, v17, v25);
    sub_1AC5C720C(v19, &qword_1EB56CA78, &qword_1AC7AB5B0);
    return v2;
  }

  return result;
}

uint64_t sub_1AC6AC854(uint64_t a1, uint64_t a2)
{
  sub_1AC5C720C(a2, &qword_1EB56CA78, &qword_1AC7AB5B0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA80, &qword_1AC7AB5B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t LanguageDetector.results.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA70, &qword_1AC7B2590);
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_21();

  return v1(v0);
}

uint64_t LanguageDetector.availableCompatibleAudioFormats.getter()
{
  OUTLINED_FUNCTION_85();
  v1[7] = v0;
  v2 = type metadata accessor for Assets(0);
  v1[8] = v2;
  OUTLINED_FUNCTION_167(v2);
  v1[9] = swift_task_alloc();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1AC6ACC78()
{
  v2 = *v1;
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v0;

  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_138();

    MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }
}

uint64_t sub_1AC6ACDF4()
{
  v70 = v1;
  v66 = *MEMORY[0x1E69E9840];
  v2 = v1[12];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 samplingRates];
    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    sub_1AC6A8FB8();
    v5 = sub_1AC7A0448();

    sub_1AC68CFAC(v5);
    v7 = v6;

    v8 = sub_1AC608F68(v7);

    if (off_1ED937D60 != -1)
    {
      goto LABEL_26;
    }

    while (1)
    {
      v9 = sub_1AC79FDE8();
      __swift_project_value_buffer(v9, qword_1ED9386C8);

      v10 = sub_1AC79FDC8();
      v11 = sub_1AC7A05D8();

      v61 = v3;
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v12 = 136315394;
        *(v12 + 4) = OUTLINED_FUNCTION_12_7("availableCompatibleAudioFormats", v59, v3, v62, *(&v62 + 1), v63, *(&v63 + 1), v64);
        *(v12 + 12) = 2080;
        v13 = sub_1AC7A0458();
        v15 = sub_1AC5CFE74(v13, v14, &v65);

        *(v12 + 14) = v15;
        _os_log_impl(&dword_1AC5BC000, v10, v11, "LanguageDetector.%s found %s", v12, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_77_1();
      }

      v65 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_19_5();
      v18 = v17 & v16;
      v20 = (63 - v19) >> 6;

      v31 = 0;
      v63 = xmmword_1AC7AB570;
      v62 = xmmword_1AC7AB580;
      v3 = &selRef_initWithText_confidence_startTime_duration_;
      while (v18)
      {
LABEL_11:
        v33 = *(*(v8 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v18)))));
        v18 &= v18 - 1;
        OUTLINED_FUNCTION_24_0(v33, v21, v22, v23, v24, v25, v26, v27, v28, v29, v59, v61, v30, v62);
        v21 = [objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription_];
        if (v21)
        {
          MEMORY[0x1B26E8CF0]();
          OUTLINED_FUNCTION_31_6();
          if (v35)
          {
            OUTLINED_FUNCTION_23_6(v34);
            v59 = v36;
            sub_1AC7A0178();
          }

          v21 = sub_1AC7A0198();
        }
      }

      while (1)
      {
        v32 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v32 >= v20)
        {

          OUTLINED_FUNCTION_82();
          OUTLINED_FUNCTION_403();

          __asm { BRAA            X2, X16 }
        }

        v18 = *(v8 + 56 + 8 * v32);
        ++v31;
        if (v18)
        {
          v31 = v32;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_26:
      OUTLINED_FUNCTION_3(&off_1ED937D60);
    }
  }

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v39 = sub_1AC79FDE8();
  v1[14] = __swift_project_value_buffer(v39, qword_1ED9386C8);
  v40 = sub_1AC79FDC8();
  v41 = sub_1AC7A05D8();
  if (os_log_type_enabled(v40, v41))
  {
    OUTLINED_FUNCTION_150();
    v42 = OUTLINED_FUNCTION_25_7();
    v65 = v42;
    *v0 = 136315138;
    *(v0 + 4) = OUTLINED_FUNCTION_12_7("availableCompatibleAudioFormats", v59, v60, v62, *(&v62 + 1), v63, *(&v63 + 1), v64);
    OUTLINED_FUNCTION_28_6();
    _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_129();
  }

  sub_1AC61D5F8(v48, v49, v50, v51, v52, v53, v54, v55, v59, v60, v62, *(&v62 + 1), v63, *(&v63 + 1), v64, v65, v66, v67, v68, v69);
  v56 = swift_task_alloc();
  v1[15] = v56;
  *v56 = v1;
  OUTLINED_FUNCTION_7_8(v56);
  OUTLINED_FUNCTION_403();

  return sub_1AC61FFCC();
}

uint64_t sub_1AC6AD2A0(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_18_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v4 + 128) = v1;

  if (!v1)
  {
    *(v4 + 136) = a1;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1AC6AD3E0()
{
  v43[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1AC608F68(*(v0 + 136));
  OUTLINED_FUNCTION_11_9();
  if (off_1ED937D60 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v2 = sub_1AC79FDE8();
    __swift_project_value_buffer(v2, qword_1ED9386C8);

    v3 = sub_1AC79FDC8();
    v4 = sub_1AC7A05D8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v5 = 136315394;
      *(v5 + 4) = OUTLINED_FUNCTION_12_7("availableCompatibleAudioFormats", v38, v39, v40, *(&v40 + 1), v41, *(&v41 + 1), v42);
      *(v5 + 12) = 2080;
      v6 = sub_1AC7A0458();
      v8 = sub_1AC5CFE74(v6, v7, v43);

      *(v5 + 14) = v8;
      OUTLINED_FUNCTION_28_6();
      _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_129();
    }

    v43[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_19_5();
    v16 = v15 & v14;
    v18 = (63 - v17) >> 6;

    v19 = 0;
    v41 = xmmword_1AC7AB570;
    v40 = xmmword_1AC7AB580;
    while (v16)
    {
LABEL_10:
      v21 = OUTLINED_FUNCTION_27_6(__clz(__rbit64(v16)));
      v16 &= v22;
      OUTLINED_FUNCTION_24_0(v21, v23, v24, v25, v26, v27, v28, v29, v30, v31, v38, v39, v32, v40);
      if ([objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription_])
      {
        MEMORY[0x1B26E8CF0]();
        OUTLINED_FUNCTION_31_6();
        if (v34)
        {
          OUTLINED_FUNCTION_23_6(v33);
          v39 = v35;
          sub_1AC7A0178();
        }

        sub_1AC7A0198();
      }
    }

    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        OUTLINED_FUNCTION_82();
        OUTLINED_FUNCTION_403();

        __asm { BRAA            X2, X16 }
      }

      v16 = *(v1 + 56 + 8 * v20);
      ++v19;
      if (v16)
      {
        v19 = v20;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }
}

uint64_t sub_1AC6AD6C0()
{
  v37 = v0;
  v36[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 128);
  v2 = v1;
  v3 = sub_1AC79FDC8();
  v4 = sub_1AC7A05F8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 128);
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_150();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    sub_1AC5C720C(v8, &unk_1EB56C630, &qword_1AC7A7E40);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_77_1();
  }

  OUTLINED_FUNCTION_11_9();
  if (off_1ED937D60 != -1)
  {
LABEL_22:
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v11 = sub_1AC79FDE8();
  __swift_project_value_buffer(v11, qword_1ED9386C8);
  v12 = MEMORY[0x1E69E7CD0];

  v13 = sub_1AC79FDC8();
  v14 = sub_1AC7A05D8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v15 = 136315394;
    OUTLINED_FUNCTION_65();
    *(v15 + 4) = sub_1AC5CFE74(0xD00000000000001FLL, v16, v36);
    *(v15 + 12) = 2080;
    v17 = sub_1AC7A0458();
    v19 = sub_1AC5CFE74(v17, v18, v36);

    *(v15 + 14) = v19;
    OUTLINED_FUNCTION_28_6();
    _os_log_impl(v20, v21, v22, v23, v24, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_129();
  }

  v25 = MEMORY[0x1E69E7CC0];
  v36[0] = MEMORY[0x1E69E7CC0];
  v26 = -1;
  v27 = -1 << *(v12 + 32);
  if (-v27 < 64)
  {
    v26 = ~(-1 << -v27);
  }

  v28 = v26 & *(v12 + 56);
  v29 = (63 - v27) >> 6;

  v30 = 0;
  while (v28)
  {
LABEL_14:
    *&v32 = OUTLINED_FUNCTION_27_6(__clz(__rbit64(v28)));
    v28 &= v33;
    *(v0 + 16) = v32;
    *(v0 + 24) = xmmword_1AC7AB570;
    *(v0 + 40) = xmmword_1AC7AB580;
    if ([objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription_])
    {
      MEMORY[0x1B26E8CF0]();
      if (*((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AC7A0178();
      }

      sub_1AC7A0198();
      v25 = v36[0];
    }
  }

  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v31 >= v29)
    {
      break;
    }

    v28 = *(v12 + 8 * v31 + 56);
    ++v30;
    if (v28)
    {
      v30 = v31;
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_82();

  return v34(v25);
}

uint64_t LanguageDetector.LocaleAlternative.locale.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1AC79FB18();
  OUTLINED_FUNCTION_80();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t LanguageDetector.LocaleAlternative.description.getter()
{
  OUTLINED_FUNCTION_30_4();
  sub_1AC7A09C8();
  OUTLINED_FUNCTION_65();
  MEMORY[0x1B26E8C40](0xD000000000000034);
  sub_1AC79FB18();
  OUTLINED_FUNCTION_2_8();
  sub_1AC6B0454(v0, v1, MEMORY[0x1E6969798]);
  v2 = sub_1AC7A0CC8();
  MEMORY[0x1B26E8C40](v2);

  MEMORY[0x1B26E8C40](0x656469666E6F6320, 0xED0000203A65636ELL);
  OUTLINED_FUNCTION_36_6();
  sub_1AC7A03F8();
  MEMORY[0x1B26E8C40](62, 0xE100000000000000);
  return v4;
}

BOOL static LanguageDetector.LocaleAlternative.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1B26E85C0]() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_36_6();
  return *(a1 + v4) == *(a2 + v4);
}

uint64_t LanguageDetector.LocaleAlternative.hash(into:)()
{
  OUTLINED_FUNCTION_25();
  sub_1AC79FB18();
  OUTLINED_FUNCTION_2_8();
  sub_1AC6B0454(v1, v2, MEMORY[0x1E6969780]);
  sub_1AC79FE58();
  OUTLINED_FUNCTION_36_6();
  v4 = *(v0 + v3);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1B26E9A70](*&v4);
}

uint64_t LanguageDetector.LocaleAlternative.hashValue.getter()
{
  sub_1AC7A0E78();
  LanguageDetector.LocaleAlternative.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6ADD68(uint64_t a1)
{
  sub_1AC7A0E78();
  LanguageDetector.LocaleAlternative.hash(into:)();
  return sub_1AC7A0EC8();
}

__n128 LanguageDetector.Result.range.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t LanguageDetector.Result.dominantLocale.getter()
{
  type metadata accessor for LanguageDetector.Result(0);
  sub_1AC79FB18();
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_21();

  return v1(v0);
}

double LanguageDetector.Result.alternatives.getter()
{
  type metadata accessor for LanguageDetector.Result(0);

  return result;
}

uint64_t LanguageDetector.Result.detectedLanguageCode.getter()
{
  type metadata accessor for LanguageDetector.Result(0);
  sub_1AC79F9C8();
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_21();

  return v1(v0);
}

uint64_t LanguageDetector.Result.detectedLanguageCode.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(type metadata accessor for LanguageDetector.Result(v2) + 32);
  sub_1AC79F9C8();
  OUTLINED_FUNCTION_80();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*LanguageDetector.Result.detectedLanguageCode.modify())()
{
  v0 = OUTLINED_FUNCTION_25();
  type metadata accessor for LanguageDetector.Result(v0);
  return nullsub_1;
}

uint64_t LanguageDetector.Result.description.getter()
{
  OUTLINED_FUNCTION_30_4();
  sub_1AC7A09C8();
  MEMORY[0x1B26E8C40](0xD000000000000028, 0x80000001AC7B7580);
  type metadata accessor for CMTimeRange(0);
  sub_1AC7A0AF8();
  OUTLINED_FUNCTION_65();
  MEMORY[0x1B26E8C40](0xD000000000000011);
  v1 = type metadata accessor for LanguageDetector.Result(0);
  sub_1AC79FB18();
  OUTLINED_FUNCTION_2_8();
  sub_1AC6B0454(v2, v3, MEMORY[0x1E6969798]);
  v4 = sub_1AC7A0CC8();
  MEMORY[0x1B26E8C40](v4);

  MEMORY[0x1B26E8C40](0x616E7265746C6120, 0xEF203A7365766974);
  v5 = *(v0 + *(v1 + 28));
  v6 = type metadata accessor for LanguageDetector.LocaleAlternative(0);
  v7 = MEMORY[0x1B26E8D20](v5, v6);
  MEMORY[0x1B26E8C40](v7);

  return v9;
}

double sub_1AC6AE0FC@<D0>(_OWORD *a1@<X8>)
{
  LanguageDetector.Result.range.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

SFEntitledAssetConfig *sub_1AC6AE144(uint64_t a1)
{
  v1 = SFEntitledAssetConfigForLanguageDetector();

  return v1;
}

uint64_t sub_1AC6AE194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC6AE1B8, 0, 0);
}

uint64_t sub_1AC6AE1B8()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return MEMORY[0x1EEE6DFA0](sub_1AC6AE1E8, v1, 0);
  }

  **(v0 + 16) = 1;
  return OUTLINED_FUNCTION_34_0();
}

uint64_t sub_1AC6AE1E8()
{
  OUTLINED_FUNCTION_85();
  sub_1AC6B1820(*(v0 + 32), *(v0 + 24));
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC6AE294(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA80, &qword_1AC7AB5B8);
  return sub_1AC7A0398();
}

uint64_t sub_1AC6AE2EC(_OWORD *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v78 = a3;
  v79 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAD8, &qword_1AC7AB970);
  OUTLINED_FUNCTION_40();
  v81 = v7;
  v82 = v6;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v74 - v9;
  v76 = type metadata accessor for LanguageDetector.Result(0);
  OUTLINED_FUNCTION_80();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v84 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v77 = &v74 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v85 = &v74 - v15;
  v86 = type metadata accessor for LanguageDetector.LocaleAlternative(0);
  OUTLINED_FUNCTION_40();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for EARLocaleAlternative(0);
  OUTLINED_FUNCTION_40();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = a2;
  v88 = MEMORY[0x1E69E7CC0];

  sub_1AC6AEF0C(&v87);
  v27 = v87[2];
  if (v27)
  {
    v74 = v87;
    v75 = a4;
    v28 = *(v21 + 20);
    v29 = v87 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v30 = *(v23 + 72);
    v31 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1AC6B1678(v29, v26, type metadata accessor for EARLocaleAlternative);
      sub_1AC79FB18();
      OUTLINED_FUNCTION_80();
      (*(v32 + 16))(v20, v26);
      v33 = *&v26[v28];
      sub_1AC6B03E0();
      *&v20[*(v86 + 20)] = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC60EEFC();
        v31 = v35;
      }

      v34 = *(v31 + 16);
      if (v34 >= *(v31 + 24) >> 1)
      {
        sub_1AC60EEFC();
        v31 = v36;
      }

      *(v31 + 16) = v34 + 1;
      sub_1AC6B1700(v20, v31 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v34, type metadata accessor for LanguageDetector.LocaleAlternative);
      v29 += v30;
      --v27;
    }

    while (v27);

    v88 = v31;
    v37 = v83;
    a4 = v75;
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
    v37 = v83;
  }

  v38 = v85;
  if (!*(v31 + 16))
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3(&off_1ED937D60);
    }

    v39 = sub_1AC79FDE8();
    __swift_project_value_buffer(v39, qword_1ED9386C8);
    v40 = sub_1AC79FDC8();
    v41 = sub_1AC7A0608();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1AC5BC000, v40, v41, "Language hypothesis has no locales, this should never happen", v42, 2u);
      OUTLINED_FUNCTION_77_1();
    }
  }

  v43 = *(v37 + OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions + 8);
  v44 = *(v37 + OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions) == 1 || v43 == 0;
  if (!v44 && *(v31 + 16) >= v43)
  {
    sub_1AC6A88F4(v43);
  }

  v45 = v79;
  v46 = sub_1AC7A0558();
  v48 = v47;
  v50 = v49;
  v51 = HIDWORD(v47);
  v52 = v76;
  v53 = *(v76 + 24);
  sub_1AC79FB18();
  OUTLINED_FUNCTION_80();
  (*(v54 + 16))(&v38[v53], a4);
  v55 = v88;
  v56 = *(v52 + 32);
  sub_1AC79F9C8();
  OUTLINED_FUNCTION_80();
  (*(v57 + 16))(&v38[v56], v78);
  v58 = v45[2];
  *(v38 + 1) = v45[1];
  *(v38 + 2) = v58;
  *v38 = *v45;
  *(v38 + 6) = v46;
  *(v38 + 14) = v48;
  *(v38 + 15) = v51;
  *(v38 + 8) = v50;
  *&v38[*(v52 + 28)] = v55;
  v59 = OUTLINED_FUNCTION_9_8();
  sub_1AC6B1678(v59, v77, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA80, &qword_1AC7AB5B8);
  v61 = v80;
  sub_1AC7A0388();
  (*(v81 + 8))(v61, v82);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v62 = sub_1AC79FDE8();
  __swift_project_value_buffer(v62, qword_1ED9386C8);
  v63 = OUTLINED_FUNCTION_9_8();
  sub_1AC6B1678(v63, v84, v64);
  v65 = sub_1AC79FDC8();
  v66 = sub_1AC7A05E8();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = OUTLINED_FUNCTION_150();
    v68 = swift_slowAlloc();
    v87 = v68;
    *v67 = 136315138;
    v69 = LanguageDetector.Result.description.getter();
    v71 = v70;
    sub_1AC6B03E0();
    v72 = sub_1AC5CFE74(v69, v71, &v87);

    *(v67 + 4) = v72;
    _os_log_impl(&dword_1AC5BC000, v65, v66, "LanguageDetector: Yielded result %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  else
  {

    sub_1AC6B03E0();
  }

  return sub_1AC6B03E0();
}

uint64_t LanguageDetector.deinit()
{
  OUTLINED_FUNCTION_10_7();
  sub_1AC6B03E0();
  sub_1AC68A2AC(*(v0 + OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions));
  v1 = OBJC_IVAR____TtC6Speech16LanguageDetector__results;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA70, &qword_1AC7B2590);
  OUTLINED_FUNCTION_80();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC6Speech16LanguageDetector_resultsBuilder;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA80, &qword_1AC7AB5B8);
  OUTLINED_FUNCTION_80();
  (*(v4 + 8))(v0 + v3);
  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech16LanguageDetector__workerWithLocked + 8, &qword_1EB56CA88, &qword_1AC7AB5D0);
  return v0;
}

uint64_t LanguageDetector.__deallocating_deinit()
{
  LanguageDetector.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC6AEB70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC60D7F0;

  return LanguageDetector.availableCompatibleAudioFormats.getter();
}

uint64_t sub_1AC6AEBFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6AEC88;

  return OUTLINED_FUNCTION_28_4();
}

uint64_t sub_1AC6AEC88()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1AC6AED84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC60D7F0;

  return sub_1AC6AE170();
}

uint64_t sub_1AC6AEE58(uint64_t a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  sub_1AC7A09C8();
  return 0;
}

uint64_t sub_1AC6AEEA0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1AC5CF764(0, &qword_1EB56ABA0, 0x1E6958418);
      result = sub_1AC7A0188();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1AC6AEF0C(uint64_t *a1)
{
  v2 = *(type metadata accessor for EARLocaleAlternative(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1AC6B16EC();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1AC6AEFB4(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1AC6AEFB4(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1AC7A0CA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for EARLocaleAlternative(0);
        v6 = sub_1AC7A0188();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for EARLocaleAlternative(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1AC6AF334(v8, v9, a1, v4);
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
    return sub_1AC6AF0E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1AC6AF0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for EARLocaleAlternative(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v34 = v21;
      v35 = a3;
      v32 = v24;
      v33 = v23;
      do
      {
        sub_1AC6B1678(v24, v18, type metadata accessor for EARLocaleAlternative);
        sub_1AC6B1678(v21, v14, type metadata accessor for EARLocaleAlternative);
        v25 = *(v8 + 20);
        v26 = *&v18[v25];
        v27 = *&v14[v25];
        sub_1AC6B03E0();
        result = sub_1AC6B03E0();
        if (v27 >= v26)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return result;
        }

        sub_1AC6B1700(v24, v11, type metadata accessor for EARLocaleAlternative);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1AC6B1700(v11, v21, type metadata accessor for EARLocaleAlternative);
        v21 += v22;
        v24 += v22;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v35 + 1;
      v21 = v34 + v30;
      v23 = v33 - 1;
      v24 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1AC6AF334(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v6 = v4;
  v117 = a1;
  v9 = type metadata accessor for EARLocaleAlternative(0);
  v124 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v120 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v128 = &v113 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v129 = &v113 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v113 - v17;
  v125 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v5 = *v117;
    if (!*v117)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_102:
      v107 = (v21 + 16);
      v108 = *(v21 + 16);
      for (i = v21; v108 >= 2; v21 = i)
      {
        if (!*v125)
        {
          goto LABEL_138;
        }

        v109 = (v21 + 16 * v108);
        v21 = *v109;
        v110 = &v107[2 * v108];
        v111 = v110[1];
        sub_1AC6AFC94(&(*v125)[*(v124 + 72) * *v109], &(*v125)[*(v124 + 72) * *v110], &(*v125)[*(v124 + 72) * v111], v5);
        if (v6)
        {
          break;
        }

        if (v111 < v21)
        {
          goto LABEL_126;
        }

        if (v108 - 2 >= *v107)
        {
          goto LABEL_127;
        }

        *v109 = v21;
        v109[1] = v111;
        v112 = *v107 - v108;
        if (*v107 < v108)
        {
          goto LABEL_128;
        }

        v108 = *v107 - 1;
        result = memmove(v110, v110 + 2, 16 * v112);
        *v107 = v108;
      }
    }

LABEL_135:
    result = sub_1AC6B0128(v21);
    v21 = result;
    goto LABEL_102;
  }

  v115 = a4;
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v130 = result;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    if (v20 + 1 < v19)
    {
      v24 = *v125;
      v25 = *(v124 + 72);
      v127 = v20 + 1;
      v26 = &v24[v25 * v23];
      v27 = v24;
      v122 = v24;
      v123 = v19;
      v28 = result;
      sub_1AC6B1678(v26, v18, type metadata accessor for EARLocaleAlternative);
      v29 = &v27[v25 * v22];
      v5 = v22;
      v30 = v129;
      sub_1AC6B1678(v29, v129, type metadata accessor for EARLocaleAlternative);
      v31 = *(v28 + 20);
      v32 = *&v18[v31];
      v33 = *(v30 + v31);
      sub_1AC6B03E0();
      sub_1AC6B03E0();
      v34 = v123;
      v116 = v5;
      v35 = v5 + 2;
      i = v25;
      v36 = &v122[v25 * (v5 + 2)];
      while (1)
      {
        v37 = v35;
        if (++v127 >= v34)
        {
          break;
        }

        sub_1AC6B1678(v36, v18, type metadata accessor for EARLocaleAlternative);
        v5 = v129;
        sub_1AC6B1678(v26, v129, type metadata accessor for EARLocaleAlternative);
        v38 = *(v130 + 20);
        v39 = *&v18[v38];
        v40 = *(v5 + v38);
        sub_1AC6B03E0();
        sub_1AC6B03E0();
        v34 = v123;
        v36 += i;
        v26 += i;
        v35 = v37 + 1;
        if (v33 < v32 == v40 >= v39)
        {
          goto LABEL_9;
        }
      }

      v127 = v34;
LABEL_9:
      if (v33 >= v32)
      {
        v23 = v127;
        v22 = v116;
        result = v130;
      }

      else
      {
        v23 = v127;
        if (v127 < v116)
        {
          goto LABEL_132;
        }

        result = v130;
        if (v116 >= v127)
        {
          v22 = v116;
        }

        else
        {
          v5 = v21;
          v114 = v6;
          if (v34 >= v37)
          {
            v41 = v37;
          }

          else
          {
            v41 = v34;
          }

          v42 = i * (v41 - 1);
          v43 = i * v41;
          v44 = v116 * i;
          v45 = v116;
          do
          {
            if (v45 != --v23)
            {
              v46 = *v125;
              if (!*v125)
              {
                goto LABEL_139;
              }

              sub_1AC6B1700(&v46[v44], v120, type metadata accessor for EARLocaleAlternative);
              v47 = v44 < v42 || &v46[v44] >= &v46[v43];
              if (v47)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1AC6B1700(v120, &v46[v42], type metadata accessor for EARLocaleAlternative);
            }

            ++v45;
            v42 -= i;
            v43 -= i;
            v44 += i;
          }

          while (v45 < v23);
          v6 = v114;
          v21 = v5;
          result = v130;
          v23 = v127;
          v22 = v116;
        }
      }
    }

    v48 = v125[1];
    if (v23 < v48)
    {
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_131;
      }

      if (v23 - v22 < v115)
      {
        break;
      }
    }

LABEL_47:
    if (v23 < v22)
    {
      goto LABEL_130;
    }

    v62 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC60E284(0, *(v21 + 16) + 1, 1, v21);
      v21 = v105;
    }

    v64 = *(v21 + 16);
    v63 = *(v21 + 24);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      sub_1AC60E284(v63 > 1, v64 + 1, 1, v21);
      v21 = v106;
    }

    result = v62;
    *(v21 + 16) = v65;
    v66 = v21 + 32;
    v67 = (v21 + 32 + 16 * v64);
    *v67 = v22;
    v67[1] = v23;
    v123 = *v117;
    if (!v123)
    {
      goto LABEL_140;
    }

    v127 = v23;
    if (v64)
    {
      i = v21;
      while (1)
      {
        v68 = v65 - 1;
        v69 = (v66 + 16 * (v65 - 1));
        v70 = (v21 + 16 * v65);
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v71 = *(v21 + 32);
          v72 = *(v21 + 40);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_68:
          if (v74)
          {
            goto LABEL_117;
          }

          v86 = *v70;
          v85 = v70[1];
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_120;
          }

          v90 = v69[1];
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_125;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v65 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v65 < 2)
        {
          goto LABEL_119;
        }

        v93 = *v70;
        v92 = v70[1];
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_83:
        if (v89)
        {
          goto LABEL_122;
        }

        v95 = *v69;
        v94 = v69[1];
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_124;
        }

        if (v96 < v88)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v68 - 1 >= v65)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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

        if (!*v125)
        {
          goto LABEL_137;
        }

        v5 = v18;
        v100 = (v66 + 16 * (v68 - 1));
        v101 = *v100;
        v102 = v68;
        v103 = (v66 + 16 * v68);
        v21 = v103[1];
        sub_1AC6AFC94(&(*v125)[*(v124 + 72) * *v100], &(*v125)[*(v124 + 72) * *v103], &(*v125)[*(v124 + 72) * v21], v123);
        if (v6)
        {
        }

        if (v21 < v101)
        {
          goto LABEL_112;
        }

        v6 = *(i + 16);
        if (v102 > v6)
        {
          goto LABEL_113;
        }

        *v100 = v101;
        v100[1] = v21;
        if (v102 >= v6)
        {
          goto LABEL_114;
        }

        v65 = v6 - 1;
        memmove(v103, v103 + 2, 16 * (v6 - 1 - v102));
        v21 = i;
        *(i + 16) = v6 - 1;
        v104 = v6 > 2;
        v6 = 0;
        result = v130;
        v18 = v5;
        if (!v104)
        {
          goto LABEL_97;
        }
      }

      v75 = v66 + 16 * v65;
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_115;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_116;
      }

      v82 = v70[1];
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_118;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_121;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = v69[1];
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_129;
        }

        if (v73 < v99)
        {
          v68 = v65 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v19 = v125[1];
    v20 = v127;
    if (v127 >= v19)
    {
      goto LABEL_100;
    }
  }

  v49 = (v22 + v115);
  if (__OFADD__(v22, v115))
  {
    goto LABEL_133;
  }

  if (v49 >= v48)
  {
    v49 = v125[1];
  }

  if (v49 < v22)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v23 == v49)
  {
    goto LABEL_47;
  }

  i = v21;
  v114 = v6;
  v50 = *v125;
  v51 = *(v124 + 72);
  v52 = &(*v125)[v51 * (v23 - 1)];
  v53 = -v51;
  v116 = v22;
  v54 = (v22 - v23);
  v118 = v51;
  v119 = v49;
  v55 = &v50[v23 * v51];
LABEL_40:
  v127 = v23;
  v121 = v55;
  v122 = v54;
  v123 = v52;
  v56 = v52;
  v5 = v130;
  while (1)
  {
    sub_1AC6B1678(v55, v18, type metadata accessor for EARLocaleAlternative);
    v57 = v129;
    sub_1AC6B1678(v56, v129, type metadata accessor for EARLocaleAlternative);
    v58 = *(v5 + 20);
    v59 = *&v18[v58];
    v60 = *(v57 + v58);
    sub_1AC6B03E0();
    result = sub_1AC6B03E0();
    if (v60 >= v59)
    {
LABEL_45:
      v23 = v127 + 1;
      v52 = v123 + v118;
      v54 = v122 - 1;
      v55 = v121 + v118;
      if ((v127 + 1) == v119)
      {
        v23 = v119;
        v6 = v114;
        v21 = i;
        result = v130;
        v22 = v116;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v50)
    {
      break;
    }

    v61 = v128;
    sub_1AC6B1700(v55, v128, type metadata accessor for EARLocaleAlternative);
    v5 = v130;
    swift_arrayInitWithTakeFrontToBack();
    sub_1AC6B1700(v61, v56, type metadata accessor for EARLocaleAlternative);
    v56 += v53;
    v55 += v53;
    v47 = __CFADD__(v54++, 1);
    if (v47)
    {
      goto LABEL_45;
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

uint64_t sub_1AC6AFC94(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = type metadata accessor for EARLocaleAlternative(0);
  v9 = MEMORY[0x1EEE9AC00](v56);
  v55 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = v50 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v16 = a2 - a1;
  v17 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v17)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v20 = v16 / v15;
  v59 = a1;
  v58 = a4;
  v21 = v18 / v15;
  v50[1] = v4;
  if (v16 / v15 >= v18 / v15)
  {
    sub_1AC7040B0(a2, v18 / v15, a4);
    v30 = a4 + v21 * v15;
    v31 = -v15;
    v32 = v30;
    v33 = a3;
    v52 = a1;
    v53 = -v15;
LABEL_37:
    v54 = a2 + v31;
    v34 = v33;
    v50[0] = v32;
    while (1)
    {
      if (v30 <= a4)
      {
        v59 = a2;
        v57 = v32;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v51 = v32;
      v35 = a2;
      v36 = a4;
      v37 = v34 + v53;
      v38 = v30 + v53;
      v39 = v30;
      v40 = v34;
      sub_1AC6B1678(v30 + v53, v13, type metadata accessor for EARLocaleAlternative);
      v41 = v13;
      v42 = v55;
      sub_1AC6B1678(v54, v55, type metadata accessor for EARLocaleAlternative);
      v43 = *(v56 + 20);
      v44 = *&v41[v43];
      v45 = *(v42 + v43);
      v13 = v41;
      sub_1AC6B03E0();
      sub_1AC6B03E0();
      if (v45 < v44)
      {
        v47 = v40 < v35 || v37 >= v35;
        v33 = v37;
        a4 = v36;
        if (v47)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v51;
          a1 = v52;
          v31 = v53;
          v30 = v39;
        }

        else
        {
          v32 = v51;
          v17 = v40 == v35;
          v31 = v53;
          v48 = v54;
          a2 = v54;
          v30 = v39;
          a1 = v52;
          if (!v17)
          {
            v49 = v51;
            swift_arrayInitWithTakeBackToFront();
            v30 = v39;
            a2 = v48;
            v32 = v49;
          }
        }

        goto LABEL_37;
      }

      v46 = v40 < v39 || v37 >= v39;
      a4 = v36;
      if (v46)
      {
        swift_arrayInitWithTakeFrontToBack();
        v34 = v37;
        v30 = v38;
        v32 = v38;
        a2 = v35;
        a1 = v52;
      }

      else
      {
        v32 = v38;
        v17 = v39 == v40;
        v34 = v37;
        v30 = v38;
        a2 = v35;
        a1 = v52;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v34 = v37;
          v30 = v38;
          v32 = v38;
        }
      }
    }

    v59 = a2;
    v57 = v50[0];
  }

  else
  {
    sub_1AC7040B0(a1, v16 / v15, a4);
    v22 = a4 + v20 * v15;
    v57 = v22;
    while (a4 < v22 && a2 < a3)
    {
      sub_1AC6B1678(a2, v13, type metadata accessor for EARLocaleAlternative);
      v24 = v55;
      sub_1AC6B1678(a4, v55, type metadata accessor for EARLocaleAlternative);
      v25 = *(v56 + 20);
      v26 = *&v13[v25];
      v27 = *(v24 + v25);
      sub_1AC6B03E0();
      sub_1AC6B03E0();
      if (v27 >= v26)
      {
        if (a1 < a4 || a1 >= a4 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v58 = a4 + v15;
        a4 += v15;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v15;
      }

      a1 += v15;
      v59 = a1;
    }
  }

LABEL_59:
  sub_1AC6B013C(&v59, &v58, &v57);
  return 1;
}

uint64_t sub_1AC6B013C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for EARLocaleAlternative(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1AC6B021C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1AC6B0248(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE18, &qword_1AC7A8218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1AC6B0370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA78, &qword_1AC7AB5B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC6B03E0()
{
  v1 = OUTLINED_FUNCTION_25();
  v2(v1);
  OUTLINED_FUNCTION_80();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1AC6B0454(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1AC6B04A0()
{
  result = qword_1EB56CA90;
  if (!qword_1EB56CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CA90);
  }

  return result;
}

unint64_t sub_1AC6B04F8()
{
  result = qword_1EB56CA98;
  if (!qword_1EB56CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CA98);
  }

  return result;
}

uint64_t sub_1AC6B05BC(uint64_t a1)
{
  *(a1 + 8) = sub_1AC6B0454(&qword_1EB56CAA8, type metadata accessor for LanguageDetector, &protocol conformance descriptor for LanguageDetector);
  result = sub_1AC6B0454(&qword_1EB56CAB0, type metadata accessor for LanguageDetector, &unk_1AC7AB7E4);
  *(a1 + 16) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for LanguageDetectorResultReportingFrequency(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1AC6B0784(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 8);

  return a1;
}

uint64_t assignWithCopy for LanguageDetectorOptions(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for LanguageDetectorOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t getEnumTagSinglePayload for LanguageDetectorOptions(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 18))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LanguageDetectorOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1AC6B0940(uint64_t a1)
{
  type metadata accessor for ClientInfo(319);
  if (v1 <= 0x3F)
  {
    sub_1AC6B0AB8(319, &qword_1EB56AC20, MEMORY[0x1E69E87C8]);
    if (v2 <= 0x3F)
    {
      sub_1AC6B0AB8(319, &qword_1EB56AC60, MEMORY[0x1E69E87A0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1AC6B0AB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for LanguageDetector.Result(255);
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
    v8 = a3(a1, v6, v7, MEMORY[0x1E69E7288]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for LanguageDetector.LocaleAlternative(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1AC79FB18();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t destroy for LanguageDetector.LocaleAlternative(uint64_t a1)
{
  v2 = sub_1AC79FB18();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for LanguageDetector.LocaleAlternative(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithCopy for LanguageDetector.LocaleAlternative(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t initializeWithTake for LanguageDetector.LocaleAlternative(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for LanguageDetector.LocaleAlternative(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1AC6B0E80(uint64_t a1)
{
  result = sub_1AC79FB18();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for LanguageDetector.Result(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *v4 = *a2;
    v4 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v7;
    v8 = *(a2 + 3);
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = v8;
    *(a1 + 64) = a2[8];
    v9 = a3[6];
    v10 = sub_1AC79FB18();
    (*(*(v10 - 8) + 16))(&v4[v9], a2 + v9, v10);
    v11 = a3[8];
    *&v4[a3[7]] = *(a2 + a3[7]);
    v12 = sub_1AC79F9C8();
    v13 = *(*(v12 - 8) + 16);

    v13(&v4[v11], a2 + v11, v12);
  }

  return v4;
}

uint64_t destroy for LanguageDetector.Result(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1AC79FB18();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  v6 = *(a2 + 32);
  v7 = sub_1AC79F9C8();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

uint64_t initializeWithCopy for LanguageDetector.Result(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v7;
  *(a1 + 64) = *(a2 + 64);
  v8 = a3[6];
  v9 = sub_1AC79FB18();
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  v10 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v11 = sub_1AC79F9C8();
  v12 = *(*(v11 - 8) + 16);

  v12(a1 + v10, a2 + v10, v11);
  return a1;
}

uint64_t assignWithCopy for LanguageDetector.Result(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  v6 = a3[6];
  v7 = sub_1AC79FB18();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);

  v8 = a3[8];
  v9 = sub_1AC79F9C8();
  (*(*(v9 - 8) + 24))(a1 + v8, a2 + v8, v9);
  return a1;
}

uint64_t initializeWithTake for LanguageDetector.Result(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v7;
  *(a1 + 64) = *(a2 + 64);
  v8 = a3[6];
  v9 = sub_1AC79FB18();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  v10 = a3[7];
  v11 = a3[8];
  *(a1 + v10) = *(a2 + v10);
  v12 = sub_1AC79F9C8();
  (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
  return a1;
}

uint64_t assignWithTake for LanguageDetector.Result(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v6 = a3[6];
  v7 = sub_1AC79FB18();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);

  v8 = a3[8];
  v9 = sub_1AC79F9C8();
  (*(*(v9 - 8) + 40))(a1 + v8, a2 + v8, v9);
  return a1;
}

uint64_t sub_1AC6B152C(uint64_t a1)
{
  result = sub_1AC79FB18();
  if (v2 <= 0x3F)
  {
    result = sub_1AC79F9C8();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1AC6B1614()
{
  result = qword_1EB56CAD0;
  if (!qword_1EB56CAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB56CA70, &qword_1AC7B2590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CAD0);
  }

  return result;
}

uint64_t sub_1AC6B1678(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_80();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1AC6B1700(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_80();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1AC6B1760(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AC6AEC88;

  return sub_1AC6AE194(a1, v4, v5, v7, v6);
}

uint64_t sub_1AC6B1820(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = &off_1F21348F0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();

  sub_1AC703D1C();
  v4 = *(*(a2 + 256) + 16);
  sub_1AC703E54(v4);
  v5 = *(a2 + 256);
  *(v5 + 16) = v4 + 1;
  v6 = v5 + 16 * v4;
  *(v6 + 32) = sub_1AC6B18F4;
  *(v6 + 40) = v3;
  *(a2 + 256) = v5;
  swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return sub_1AC79FB18();
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return swift_slowAlloc();
}

void sub_1AC6B1964(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  if (!a1)
  {
    goto LABEL_5;
  }

  v6 = v1 + OBJC_IVAR____TtC6Speech14SpeechDetector__workerWithLocked;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech14SpeechDetector__workerWithLocked));
  v7 = *(v6 + 16);
  os_unfair_lock_unlock(v6);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v8 = sub_1AC79FDE8();
  __swift_project_value_buffer(v8, qword_1ED9386C8);
  if (v7)
  {
    v12 = sub_1AC79FDC8();
    v13 = sub_1AC7A05F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1AC5CFE74(0xD00000000000002CLL, 0x80000001AC7B7630, &v17);
      _os_log_impl(&dword_1AC5BC000, v12, v13, "Failed precondition: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v9 = v1 + OBJC_IVAR____TtC6Speech14SpeechDetector__workerWithLocked;
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech14SpeechDetector__workerWithLocked));
    *(v9 + 8) = a1;

    *(v9 + 16) = 1;
    os_unfair_lock_unlock(v9);
    v10 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = a1;
    v11[5] = v1;

    sub_1AC659B08();
  }
}

uint64_t SpeechDetector.__allocating_init(detectionOptions:reportResults:)(char *a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  SpeechDetector.init(detectionOptions:reportResults:)(a1, v2);
  return v4;
}

uint64_t SpeechDetector.init(detectionOptions:reportResults:)(char *a1, int a2)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAE0, &unk_1AC7AB9A0);
  OUTLINED_FUNCTION_40();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAE8, &qword_1AC7B2580);
  OUTLINED_FUNCTION_40();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAF0, &qword_1AC7AB9B0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v26[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v26[-v20];
  v22 = *a1;
  v23 = v2 + OBJC_IVAR____TtC6Speech14SpeechDetector__workerWithLocked;
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *(v2 + OBJC_IVAR____TtC6Speech14SpeechDetector_detectionOptions) = v22;
  *(v2 + OBJC_IVAR____TtC6Speech14SpeechDetector_reportResults) = v27;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAF8, &qword_1AC7AB9B8);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v24);
  v28 = v21;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8790], v4);
  sub_1AC7A03B8();
  (*(v12 + 32))(v2 + OBJC_IVAR____TtC6Speech14SpeechDetector__results, v15, v10);
  sub_1AC6B1FCC(v21, v19);
  result = __swift_getEnumTagSinglePayload(v19, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v24 - 8) + 32))(v2 + OBJC_IVAR____TtC6Speech14SpeechDetector_resultsBuilder, v19, v24);
    sub_1AC5C720C(v21, &qword_1EB56CAF0, &qword_1AC7AB9B0);
    return v2;
  }

  return result;
}

uint64_t sub_1AC6B1F14(uint64_t a1, uint64_t a2)
{
  sub_1AC5C720C(a2, &qword_1EB56CAF0, &qword_1AC7AB9B0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAF8, &qword_1AC7AB9B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t sub_1AC6B1FCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAF0, &qword_1AC7AB9B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SpeechDetector.__allocating_init()()
{
  v2 = 1;
  v0 = swift_allocObject();
  SpeechDetector.init(detectionOptions:reportResults:)(&v2, 0);
  return v0;
}

Speech::SpeechDetector::SensitivityLevel_optional __swiftcall SpeechDetector.SensitivityLevel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1AC6B20C8@<X0>(uint64_t *a1@<X8>)
{
  result = SpeechDetector.SensitivityLevel.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t SpeechDetector.DetectionOptions.hashValue.getter()
{
  v1 = *v0;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t SpeechDetector.results.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Speech14SpeechDetector__results;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAE8, &qword_1AC7B2580);
  OUTLINED_FUNCTION_80();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

__n128 SpeechDetector.Result.range.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t SpeechDetector.Result.description.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v11.start.value = 0;
  *&v11.start.timescale = 0xE000000000000000;
  sub_1AC7A09C8();
  v12 = *&v11.start.value;
  MEMORY[0x1B26E8C40](0xD000000000000025, 0x80000001AC7B7660);
  v5 = *(v0 + 16);
  *&v11.start.value = *v0;
  *&v11.start.epoch = v5;
  *&v11.duration.timescale = *(v0 + 32);
  v6 = CMTimeRangeCopyDescription(0, &v11);
  if (!v6)
  {
    v6 = sub_1AC79FF58();
  }

  v11.start.value = v6;
  type metadata accessor for CFString(0);
  sub_1AC7A0AF8();

  MEMORY[0x1B26E8C40](0xD00000000000001ALL, 0x80000001AC7B59C0);
  v11.start.value = v1;
  *&v11.start.timescale = v2;
  v11.start.epoch = v3;
  v7 = CMTimeCopyDescription(0, &v11.start);
  if (!v7)
  {
    v7 = sub_1AC79FF58();
  }

  v11.start.value = v7;
  sub_1AC7A0AF8();

  MEMORY[0x1B26E8C40](0xD000000000000011, 0x80000001AC7B7690);
  if (v4)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v4)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1B26E8C40](v8, v9);

  MEMORY[0x1B26E8C40](4095242, 0xE300000000000000);
  return v12;
}

double sub_1AC6B2440@<D0>(_OWORD *a1@<X8>)
{
  SpeechDetector.Result.range.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t SpeechDetector.availableCompatibleAudioFormats.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AC7AA7F0;
  if (qword_1EB56B580 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1EB56B580);
  }

  v1 = qword_1EB56E820;
  *(v0 + 32) = qword_1EB56E820;
  v2 = v1;
  return v0;
}

uint64_t SpeechDetector.availableCompatibleAudioFormats(clientID:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AC7AA7F0;
  if (qword_1EB56B580 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1EB56B580);
  }

  v1 = qword_1EB56E820;
  *(v0 + 32) = qword_1EB56E820;
  v2 = v1;
  return v0;
}

uint64_t sub_1AC6B25A0()
{
  v1 = v0 + OBJC_IVAR____TtC6Speech14SpeechDetector__workerWithLocked;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC6Speech14SpeechDetector__workerWithLocked));
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t sub_1AC6B25E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC6B260C, 0, 0);
}

uint64_t sub_1AC6B260C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return MEMORY[0x1EEE6DFA0](sub_1AC6B263C, v1, 0);
  }

  **(v0 + 16) = 1;
  return OUTLINED_FUNCTION_34_0();
}

uint64_t sub_1AC6B263C()
{
  OUTLINED_FUNCTION_85();
  sub_1AC765B40(*(v0 + 32), *(v0 + 24));

  return MEMORY[0x1EEE6DFA0](sub_1AC6AE248, 0, 0);
}

uint64_t sub_1AC6B26A0(char *a1)
{
  if (object_getClass(a1) != _TtC6Speech22SpeechRecognizerWorker || a1 == 0)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_supportedFeatures;
  swift_unknownObjectRetain();
  v4 = sub_1AC6B2714(&a1[v3]);
  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t sub_1AC6B2714(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for SpeechRecognizerSupportedFeatures(0) + 44));
  if (v2 == 3 || v2 != *(v1 + OBJC_IVAR____TtC6Speech14SpeechDetector_detectionOptions))
  {
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_1AC7A09C8();
    MEMORY[0x1B26E8C40](0xD00000000000001ELL, 0x80000001AC7B7720);
    sub_1AC7A0AF8();
    MEMORY[0x1B26E8C40](0x7070757320737620, 0xEE0020646574726FLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CB40, &unk_1AC7ABCA8);
    v4 = sub_1AC79FFD8();
    MEMORY[0x1B26E8C40](v4);

    v5 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC60DBDC();
      v5 = v18;
    }

    v6 = *(v5 + 16);
    if (v6 >= *(v5 + 24) >> 1)
    {
      sub_1AC60DBDC();
      v5 = v19;
    }

    v3 = 0;
    *(v5 + 16) = v6 + 1;
    v7 = v5 + 16 * v6;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0xE000000000000000;
  }

  else
  {
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {

      return 1;
    }

    v3 = 1;
  }

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v8 = sub_1AC79FDE8();
  __swift_project_value_buffer(v8, qword_1ED9386C8);

  v9 = sub_1AC79FDC8();
  v10 = sub_1AC7A05E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20[0] = v12;
    *v11 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    sub_1AC5C8BE0(&qword_1EB56AC88, &unk_1EB56C640, &unk_1AC7A9BE0, MEMORY[0x1E69E6310]);
    v13 = sub_1AC79FEA8();
    v15 = v14;

    v16 = sub_1AC5CFE74(v13, v15, v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1AC5BC000, v9, v10, "SpeechDetector.isWorkerUsable: Worker not usable because %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  else
  {
  }

  return v3;
}

uint64_t sub_1AC6B2A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AC61B924(a1, v8);
  v8[*(v5 + 44)] = *(v2 + OBJC_IVAR____TtC6Speech14SpeechDetector_detectionOptions);
  sub_1AC61B988(v8, a2);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v5);
}

uint64_t SpeechDetector.recognizerObjectIdentifier.getter()
{
  v0 = sub_1AC6B25A0();
  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + 112);

  return v1;
}

void sub_1AC6B2B68(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC6Speech14SpeechDetector_reportResults) == 1 && a1 != 0)
  {
    v4 = a1;
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3(&off_1ED937D60);
    }

    v5 = sub_1AC79FDE8();
    __swift_project_value_buffer(v5, qword_1ED9386C8);
    v6 = a1;
    v7 = sub_1AC79FDC8();
    v8 = sub_1AC7A05F8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1AC5BC000, v7, v8, "SpeechDetector encountered an error during recognition: %@", v9, 0xCu);
      sub_1AC5C720C(v10, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAF8, &qword_1AC7AB9B8);
    sub_1AC7A0398();
  }
}

uint64_t sub_1AC6B2CFC(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAF8, &qword_1AC7AB9B8);
  return sub_1AC7A0398();
}

uint64_t SpeechDetector.deinit()
{
  v1 = OBJC_IVAR____TtC6Speech14SpeechDetector__results;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAE8, &qword_1AC7B2580);
  OUTLINED_FUNCTION_80();
  (*(v2 + 8))(v0 + v1);
  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech14SpeechDetector__workerWithLocked + 8, &qword_1EB56CB00, &qword_1AC7B1890);
  v3 = OBJC_IVAR____TtC6Speech14SpeechDetector_resultsBuilder;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAF8, &qword_1AC7AB9B8);
  OUTLINED_FUNCTION_80();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t SpeechDetector.__deallocating_deinit()
{
  SpeechDetector.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC6B2E84()
{
  v1 = SpeechDetector.availableCompatibleAudioFormats.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1AC6B2EE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6B2F6C;

  return OUTLINED_FUNCTION_28_4();
}

uint64_t sub_1AC6B2F6C()
{
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1AC6B305C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6B30E8;

  return sub_1AC6B2588();
}

uint64_t sub_1AC6B30E8()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

unint64_t sub_1AC6B32C4()
{
  result = qword_1EB56CB18;
  if (!qword_1EB56CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CB18);
  }

  return result;
}

unint64_t sub_1AC6B331C()
{
  result = qword_1EB56CB20;
  if (!qword_1EB56CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CB20);
  }

  return result;
}

uint64_t sub_1AC6B3398(uint64_t a1)
{
  *(a1 + 8) = sub_1AC6B3508(&qword_1EB56CB28, type metadata accessor for SpeechDetector, &protocol conformance descriptor for SpeechDetector);
  result = sub_1AC6B3508(&qword_1EB56C990, type metadata accessor for SpeechDetector, &unk_1AC7ABBC0);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for SpeechDetector(uint64_t a1)
{
  result = qword_1EB56B318;
  if (!qword_1EB56B318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AC6B3468(uint64_t a1)
{
  result = sub_1AC6B3508(&qword_1EB56C990, type metadata accessor for SpeechDetector, &unk_1AC7ABBC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6B3508(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1AC6B3558(uint64_t a1)
{
  sub_1AC6B36A0(319, &qword_1EB56AC38, MEMORY[0x1E69E87C8]);
  if (v1 <= 0x3F)
  {
    sub_1AC6B36A0(319, &qword_1EB56AC70, MEMORY[0x1E69E87A0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1AC6B36A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
    v7 = a3(a1, &type metadata for SpeechDetector.Result, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_BYTE *sub_1AC6B372C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SpeechDetector.Result(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 73))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 72);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SpeechDetector.Result(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AC6B38C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AC6B2F6C;

  return sub_1AC6B25E8(a1, v4, v5, v7, v6);
}

uint64_t sub_1AC6B398C()
{
  if (qword_1ED937ED8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED938608;
  v4[3] = type metadata accessor for EARXPCRegistry();
  v4[4] = &off_1F2134CA0;
  v4[0] = v0;
  v1 = swift_retain_n();
  v2 = sub_1AC6B4DF4(v1, v4);

  qword_1ED938610 = v2;
  return result;
}

uint64_t sub_1AC6B3A24()
{
  type metadata accessor for EARXPCRegistry();
  OUTLINED_FUNCTION_99();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x1E69E7CC0];
  qword_1ED938608 = result;
  return result;
}

id sub_1AC6B3A5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = type metadata accessor for EARSpeechRecognitionResultStream();
  v4 = OUTLINED_FUNCTION_4_7(v3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v6);
    objc_allocWithZone(type metadata accessor for EARSpeechRecognitionResultStream.XPCProxy());
    swift_unknownObjectRetain();
    return sub_1AC6E3FB4(v5, v2);
  }

  else
  {
    v8 = type metadata accessor for EARLanguageDetectorResultStream();
    result = OUTLINED_FUNCTION_4_7(v8);
    if (result)
    {
      v9 = result;
      v10 = sub_1AC7A0288();
      __swift_storeEnumTagSinglePayload(v2, 1, 1, v10);
      objc_allocWithZone(type metadata accessor for EARLanguageDetectorResultStream.XPCProxy());
      swift_unknownObjectRetain();
      return sub_1AC727038(v9, v2);
    }
  }

  return result;
}

uint64_t sub_1AC6B3B84()
{
  v0 = type metadata accessor for EARSpeechRecognitionResultStream();
  if (OUTLINED_FUNCTION_4_7(v0))
  {
    if (qword_1EB56AD68 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EB56E600;
  }

  else
  {
    v2 = type metadata accessor for EARLanguageDetectorResultStream();
    if (!OUTLINED_FUNCTION_4_7(v2))
    {
      return 0;
    }

    if (qword_1EB56B5F8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EB56E898;
  }

  v3 = *v1;
  v4 = *v1;
  return v3;
}

uint64_t sub_1AC6B3C48(uint64_t a1, int a2, int a3, int a4, id a5)
{
  v7 = [a5 protocol];
  if (swift_dynamicCastObjCProtocolConditional())
  {
    type metadata accessor for EARSpeechRecognizer();
    v8 = OUTLINED_FUNCTION_1_9();
    sub_1AC5ED59C(v8, v9, v10, v11);
    OUTLINED_FUNCTION_5_6();
    if (v5)
    {
      return a1;
    }

    v12 = &unk_1EB56AE98;
    v13 = type metadata accessor for EARSpeechRecognizer;
    v14 = &unk_1AC7A7994;
    goto LABEL_24;
  }

  if (OUTLINED_FUNCTION_6_7())
  {
    type metadata accessor for EARSpeechRecognitionAudioBuffer();
    v15 = OUTLINED_FUNCTION_1_9();
    sub_1AC75AC38(v15, v16, v17, v18);
    OUTLINED_FUNCTION_5_6();
    if (v5)
    {
      return a1;
    }

    v12 = &unk_1EB56AD88;
    v13 = type metadata accessor for EARSpeechRecognitionAudioBuffer;
    v14 = &unk_1AC7B3750;
    goto LABEL_24;
  }

  if (OUTLINED_FUNCTION_6_7())
  {
    type metadata accessor for LSRAssets();
    v19 = OUTLINED_FUNCTION_1_9();
    sub_1AC6F306C(v19, v20, v21, v22);
    OUTLINED_FUNCTION_5_6();
    if (v5)
    {
      return a1;
    }

    v12 = &unk_1EB56ACE0;
    v13 = type metadata accessor for LSRAssets;
    v14 = &unk_1AC7AF794;
    goto LABEL_24;
  }

  if (OUTLINED_FUNCTION_6_7())
  {
    type metadata accessor for EAREuclid();
    v23 = OUTLINED_FUNCTION_1_9();
    sub_1AC75577C(v23, v24, v25, v26);
    OUTLINED_FUNCTION_5_6();
    if (v5)
    {
      return a1;
    }

    v12 = &unk_1EB56AD10;
    v13 = type metadata accessor for EAREuclid;
    v14 = &unk_1AC7B33DC;
    goto LABEL_24;
  }

  if (OUTLINED_FUNCTION_6_7())
  {
    type metadata accessor for EARFullPayloadCorrector();
    v27 = OUTLINED_FUNCTION_1_9();
    sub_1AC753F38(v27, v28, v29, v30);
    OUTLINED_FUNCTION_5_6();
    if (v5)
    {
      return a1;
    }

    v12 = &unk_1EB56BA38;
    v13 = type metadata accessor for EARFullPayloadCorrector;
    v14 = &unk_1AC7B2F28;
    goto LABEL_24;
  }

  if (OUTLINED_FUNCTION_6_7())
  {
    type metadata accessor for EARTranscriptionEvaluator();
    v31 = OUTLINED_FUNCTION_1_9();
    sub_1AC710B9C(v31, v32, v33, v34);
    OUTLINED_FUNCTION_5_6();
    if (v5)
    {
      return a1;
    }

    v12 = &unk_1EB56BA70;
    v13 = type metadata accessor for EARTranscriptionEvaluator;
    v14 = &unk_1AC7B101C;
    goto LABEL_24;
  }

  if (OUTLINED_FUNCTION_6_7())
  {
    type metadata accessor for LSRAssetInventory();
    v35 = OUTLINED_FUNCTION_1_9();
    sub_1AC6B71D0(v35, v36, v37, v38);
    OUTLINED_FUNCTION_5_6();
    if (v5)
    {
      return a1;
    }

    v12 = &unk_1EB56BBD8;
    v13 = type metadata accessor for LSRAssetInventory;
    v14 = &unk_1AC7AC404;
LABEL_24:
    sub_1AC6B4BD8(v12, v13, v14);
    return a1;
  }

  return 0;
}

void sub_1AC6B3F74(int a1, id a2, uint64_t a3)
{
  v3 = [a2 _xpcConnection];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D500, &qword_1AC7A7A50);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E6530];
  *(v4 + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_10_8(v4, v5);
  swift_unknownObjectRelease();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v6 = sub_1AC79FDE8();
  __swift_project_value_buffer(v6, qword_1ED9386C8);

  swift_unknownObjectRetain();
  oslog = sub_1AC79FDC8();
  v7 = sub_1AC7A05E8();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_11_10(4.8752e-34, v20, v9);

    OUTLINED_FUNCTION_9_9();
    v10 = sub_1AC7A0F78();
    v12 = sub_1AC5CFE74(v10, v11, &v20);

    *(v8 + 14) = v12;
    OUTLINED_FUNCTION_8_7(&dword_1AC5BC000, v13, v14, "[%{public}s] is connection to local %{public}s", v15, v16, v17, v18, oslog);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  else
  {
  }
}

uint64_t sub_1AC6B4154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  os_unfair_lock_lock((v7 + 16));
  v11 = *(v7 + 24);

  os_unfair_lock_unlock((v7 + 16));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + 40;
    do
    {
      v14 = *(v13 - 8);

      v14(v26, v15);

      if (v26[0])
      {
        v16 = v26[1];
        if (a3)
        {
          ObjectType = swift_getObjectType();
          v18 = *(v16 + 8);
          v19 = swift_unknownObjectRetain();
          v18(v19, a4, a7, ObjectType, v16);
          swift_unknownObjectRelease();
        }

        if (a5)
        {
          v20 = swift_getObjectType();
          v21 = *(v16 + 8);
          v22 = swift_unknownObjectRetain();
          v21(v22, a6, a7, v20, v16);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      v13 += 16;
      --v12;
    }

    while (v12);
  }
}

uint64_t *sub_1AC6B42B4(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = *result;
  v8 = *(*result + 16);
  while (1)
  {
    if (v8 == v6)
    {
      v6 = *(v7 + 16);
      goto LABEL_21;
    }

    if (v6 >= *(v7 + 16))
    {
      break;
    }

    v9 = *(v7 + v5 + 32);

    v9(v26, v10);

    result = v26[0];
    if (!v26[0])
    {
      v11 = v6 + 1;
      v12 = *(v7 + 16);
      if (v12 - 1 != v6)
      {
        while (v11 < v12)
        {
          v13 = v7 + v5;
          v14 = *(v7 + v5 + 48);

          v14(v26, v15);

          result = v26[0];
          if (v26[0])
          {
            result = swift_unknownObjectRelease();
            if (v11 != v6)
            {
              if ((v6 & 0x8000000000000000) != 0)
              {
                goto LABEL_24;
              }

              v16 = *(v7 + 16);
              if (v6 >= v16)
              {
                goto LABEL_25;
              }

              if (v11 >= v16)
              {
                goto LABEL_26;
              }

              v18 = *(v13 + 48);
              v17 = *(v13 + 56);
              v25 = *(v7 + 32 + 16 * v6);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1AC704598();
                v7 = v20;
              }

              v19 = v7 + 16 * v6;
              *(v19 + 32) = v18;
              *(v19 + 40) = v17;

              if (v11 >= *(v7 + 16))
              {
                goto LABEL_27;
              }

              *(v7 + v5 + 48) = v25;

              *v4 = v7;
            }

            ++v6;
          }

          ++v11;
          v12 = *(v7 + 16);
          v5 += 16;
          if (v11 == v12)
          {
            if (v11 < v6)
            {
              goto LABEL_28;
            }

            goto LABEL_21;
          }
        }

        goto LABEL_23;
      }

LABEL_21:
      sub_1AC6A87D0(v6);
      OUTLINED_FUNCTION_99();
      v21 = swift_allocObject();
      *(v21 + 24) = a3;
      swift_unknownObjectWeakInit();

      sub_1AC703C2C();
      v22 = *(*v4 + 16);
      sub_1AC703D7C(v22);
      v23 = *v4;
      *(v23 + 16) = v22 + 1;
      v24 = v23 + 16 * v22;
      *(v24 + 32) = sub_1AC6B18F4;
      *(v24 + 40) = v21;

      *v4 = v23;
      return result;
    }

    result = swift_unknownObjectRelease();
    ++v6;
    v5 += 16;
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
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1AC6B4508@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(a1 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AC6B4558()
{
  sub_1AC6B4F0C(v0 + 24);
  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1AC6B45B0(int a1, id a2, uint64_t a3)
{
  v3 = [a2 _xpcConnection];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D500, &qword_1AC7A7A50);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E6530];
  *(v4 + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_10_8(v4, v5);
  swift_unknownObjectRelease();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v6 = sub_1AC79FDE8();
  __swift_project_value_buffer(v6, qword_1ED9386C8);

  swift_unknownObjectRetain();
  oslog = sub_1AC79FDC8();
  v7 = sub_1AC7A05E8();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_11_10(4.8752e-34, v20, v9);

    OUTLINED_FUNCTION_9_9();
    v10 = sub_1AC7A0F78();
    v12 = sub_1AC5CFE74(v10, v11, &v20);

    *(v8 + 14) = v12;
    OUTLINED_FUNCTION_8_7(&dword_1AC5BC000, v13, v14, "[%{public}s] is connection to remote %{public}s", v15, v16, v17, v18, oslog);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  else
  {
  }
}

uint64_t sub_1AC6B4790()
{
  v0 = type metadata accessor for LocalSpeechRecognitionService();
  if (OUTLINED_FUNCTION_4_7(v0))
  {
    if (qword_1ED937D58 != -1)
    {
      swift_once();
    }

    v1 = &qword_1ED9386F0;
  }

  else
  {
    v2 = type metadata accessor for EARSpeechRecognizer();
    if (OUTLINED_FUNCTION_4_7(v2))
    {
      if (qword_1EB56AEA0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EB56E668;
    }

    else
    {
      v3 = type metadata accessor for EARSpeechRecognitionAudioBuffer();
      if (OUTLINED_FUNCTION_4_7(v3))
      {
        if (qword_1EB56AD98 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EB56E608;
      }

      else
      {
        v4 = type metadata accessor for LSRAssets();
        if (OUTLINED_FUNCTION_4_7(v4))
        {
          if (qword_1EB56ACF0 != -1)
          {
            swift_once();
          }

          v1 = &qword_1EB56E5F0;
        }

        else
        {
          v5 = type metadata accessor for EAREuclid();
          if (OUTLINED_FUNCTION_4_7(v5))
          {
            if (qword_1EB56AD20 != -1)
            {
              swift_once();
            }

            v1 = &qword_1EB56E5F8;
          }

          else
          {
            v6 = type metadata accessor for EARLanguageDetector();
            if (OUTLINED_FUNCTION_4_7(v6))
            {
              if (qword_1EB56B5F0 != -1)
              {
                swift_once();
              }

              v1 = &qword_1EB56E890;
            }

            else
            {
              v7 = type metadata accessor for EARLanguageDetectorAudioBuffer();
              if (OUTLINED_FUNCTION_4_7(v7))
              {
                if (qword_1EB56B5A8 != -1)
                {
                  swift_once();
                }

                v1 = &qword_1EB56E848;
              }

              else
              {
                v8 = type metadata accessor for EARFullPayloadCorrector();
                if (OUTLINED_FUNCTION_4_7(v8))
                {
                  if (qword_1EB56B618 != -1)
                  {
                    swift_once();
                  }

                  v1 = &qword_1EB56E8D8;
                }

                else
                {
                  v9 = type metadata accessor for EARTranscriptionEvaluator();
                  if (OUTLINED_FUNCTION_4_7(v9))
                  {
                    if (qword_1EB56B5E8 != -1)
                    {
                      swift_once();
                    }

                    v1 = &qword_1EB56E888;
                  }

                  else
                  {
                    v10 = type metadata accessor for LSRAssetInventory();
                    if (!OUTLINED_FUNCTION_4_7(v10))
                    {
                      return 0;
                    }

                    if (qword_1EB56B590 != -1)
                    {
                      swift_once();
                    }

                    v1 = &qword_1EB56E828;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v11 = *v1;
  v12 = *v1;
  return v11;
}

uint64_t sub_1AC6B4A94()
{
  v0 = type metadata accessor for LocalSpeechRecognitionService();
  if (OUTLINED_FUNCTION_2_9(v0))
  {
    v1 = OUTLINED_FUNCTION_0_7();
    sub_1AC64027C(v1, v2, v3, v4, v5, v6);
  }

  else
  {
    v8 = type metadata accessor for EARSpeechRecognizer();
    if (OUTLINED_FUNCTION_2_9(v8))
    {
      v9 = OUTLINED_FUNCTION_0_7();
      sub_1AC5EDC90(v9, v10, v11);
    }

    else
    {
      v12 = type metadata accessor for EARSpeechRecognitionAudioBuffer();
      if (OUTLINED_FUNCTION_2_9(v12))
      {
        v13 = OUTLINED_FUNCTION_0_7();
        v7 = sub_1AC5D1ED0(v13, v14, v15);
      }

      else
      {
        v16 = type metadata accessor for LSRAssets();
        if (OUTLINED_FUNCTION_2_9(v16))
        {
          v17 = OUTLINED_FUNCTION_0_7();
          v7 = sub_1AC6F30F4(v17, v18, v19);
        }

        else
        {
          v20 = type metadata accessor for EAREuclid();
          if (OUTLINED_FUNCTION_2_9(v20))
          {
            v21 = OUTLINED_FUNCTION_0_7();
            sub_1AC755804(v21, v22, v23);
          }

          else
          {
            v24 = type metadata accessor for EARLanguageDetector();
            if (OUTLINED_FUNCTION_2_9(v24))
            {
              v25 = OUTLINED_FUNCTION_0_7();
              v7 = sub_1AC71C4D0(v25, v26, v27);
            }

            else
            {
              v28 = type metadata accessor for EARLanguageDetectorAudioBuffer();
              if (OUTLINED_FUNCTION_2_9(v28))
              {
                v29 = OUTLINED_FUNCTION_0_7();
                v7 = sub_1AC6CCD24(v29, v30, v31, v32);
              }

              else
              {
                v33 = type metadata accessor for EARFullPayloadCorrector();
                if (OUTLINED_FUNCTION_2_9(v33))
                {
                  v34 = OUTLINED_FUNCTION_0_7();
                  v7 = sub_1AC753FC0(v34, v35, v36, v37, v38, v39);
                }

                else
                {
                  v40 = type metadata accessor for EARTranscriptionEvaluator();
                  if (OUTLINED_FUNCTION_2_9(v40))
                  {
                    v41 = OUTLINED_FUNCTION_0_7();
                    v7 = sub_1AC710C24(v41, v42, v43, v44, v45, v46);
                  }

                  else
                  {
                    v47 = type metadata accessor for LSRAssetInventory();
                    result = OUTLINED_FUNCTION_2_9(v47);
                    if (!result)
                    {
                      return result;
                    }

                    v49 = OUTLINED_FUNCTION_0_7();
                    v7 = sub_1AC6B7258(v49, v50, v51, v52, v53, v54);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v7 & 1;
}

uint64_t sub_1AC6B4BD8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AC6B4C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = type metadata accessor for EARXPCRegistry();
  v14 = &off_1F2134CE0;
  *&v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CDF0, &qword_1AC7AF130);
  sub_1AC5EDAF0();
  *(a3 + 96) = sub_1AC79FE38();
  sub_1AC5CF764(0, &qword_1ED9372C8, 0x1E696B0D8);
  *(a3 + 104) = sub_1AC79FE38();
  type metadata accessor for NSXPCActorSystem.ArgumentListenerDelegate();
  *(a3 + 112) = sub_1AC79FE38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D480, &qword_1AC7AC100);
  *(a3 + 120) = sub_1AC79FE38();
  type metadata accessor for _Lock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *(v6 + 16) = v7;
  *v7 = 0;
  *(a3 + 128) = v6;
  sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);
  *(a3 + 136) = sub_1AC79FE38();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  *(a3 + 144) = v8;
  sub_1AC5D9384(&v12, a3 + 16);
  v10 = *(a2 + 16);
  *(a3 + 56) = *a2;
  *(a3 + 72) = v10;
  *(a3 + 88) = *(a2 + 32);
  return a3;
}

uint64_t sub_1AC6B4DF4(uint64_t a1, uint64_t a2)
{
  v13 = type metadata accessor for EARXPCRegistry();
  v14 = &off_1F2134CE0;
  v12[0] = a1;
  type metadata accessor for NSXPCActorSystem();
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_1AC6B4C20(*v7, a2, v4);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v9;
}

uint64_t sub_1AC6B4F0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CDF8, &qword_1AC7AC108);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1)
{

  return swift_dynamicCastClass();
}

void OUTLINED_FUNCTION_8_7(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v9, a4, v10, 0x16u);
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VoiceCommandDebugInfoAggregated(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[5])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceCommandDebugInfoAggregated(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1AC6B5150(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v82 = a3;
  v83 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v81 = &v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v67 - v11;
  v13 = sub_1AC79F958();
  OUTLINED_FUNCTION_40();
  v15 = v14;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v80 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v79 = &v67 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v67 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v67 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v67 - v28;
  v78 = a1;
  sub_1AC79F8F8();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1AC5DC870(v12);
    if (qword_1EB56B438 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EB56B438);
    }

    v30 = sub_1AC79FDE8();
    __swift_project_value_buffer(v30, qword_1EB56E808);

    v31 = sub_1AC79FDC8();
    v32 = sub_1AC7A05F8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v84 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1AC5CFE74(v78, a2, &v84);
      _os_log_impl(&dword_1AC5BC000, v31, v32, "Invalid codepath UUID string: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }
  }

  else
  {
    v75 = v15[4];
    v76 = v15 + 4;
    v75(v29, v12, v13);
    if (qword_1EB56B438 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EB56B438);
    }

    v35 = sub_1AC79FDE8();
    __swift_project_value_buffer(v35, qword_1EB56E808);
    v36 = v15[2];
    v36(v27, v29, v13);
    v74 = v36;
    v36(v24, v83, v13);

    v37 = sub_1AC79FDC8();
    v38 = sub_1AC7A05E8();

    v39 = os_log_type_enabled(v37, v38);
    v77 = v29;
    v78 = a4;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v84 = v71;
      *v40 = 136315650;
      v70 = v37;
      v41 = sub_1AC79F908();
      v43 = v42;
      v68 = v15;
      v69 = v38;
      v44 = v15[1];
      v72 = (v15 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v44(v27, v13);
      v45 = sub_1AC5CFE74(v41, v43, &v84);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_1AC5CFE74(v82, v78, &v84);
      *(v40 + 22) = 2080;
      v46 = sub_1AC79F908();
      v48 = v47;
      v73 = v44;
      v44(v24, v13);
      v49 = sub_1AC5CFE74(v46, v48, &v84);
      v50 = v68;

      *(v40 + 24) = v49;
      v51 = v70;
      _os_log_impl(&dword_1AC5BC000, v70, v69, "Enqueuing experiment trigger log on a background task. codepathId=%s namespace=%s requestId=%s", v40, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_70();
      v29 = v77;
      OUTLINED_FUNCTION_70();
    }

    else
    {

      v50 = v15;
      v52 = v15[1];
      v72 = (v15 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v52(v24, v13);
      v73 = v52;
      v52(v27, v13);
    }

    v53 = v81;
    sub_1AC7A0238();
    v54 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v54);
    v55 = v79;
    v56 = v74;
    v74(v79, v29, v13);
    v57 = v80;
    v56(v80, v83, v13);
    v58 = *(v50 + 80);
    v59 = (v58 + 32) & ~v58;
    v60 = (v17 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = (v58 + v60 + 16) & ~v58;
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    v63 = v55;
    v64 = v75;
    v75((v62 + v59), v63, v13);
    v65 = (v62 + v60);
    v66 = v78;
    *v65 = v82;
    v65[1] = v66;
    v64(v62 + v61, v57, v13);

    sub_1AC659DBC();

    v73(v77, v13);
  }
}

uint64_t sub_1AC6B57F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AC6B5818, 0, 0);
}

uint64_t sub_1AC6B5818()
{
  v0[10] = [objc_allocWithZone(sub_1AC79FCF8()) init];
  v1 = sub_1AC79F918();
  v0[11] = v1;
  v2 = sub_1AC79F918();
  v0[12] = v2;
  v7 = (*MEMORY[0x1E6985F88] + MEMORY[0x1E6985F88]);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1AC6B5918;
  v4 = v0[7];
  v5 = v0[8];

  return v7(v1, v4, v5, v2);
}

uint64_t sub_1AC6B5918()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1AC6B5A98;
  }

  else
  {
    v4 = *(v2 + 88);

    v3 = sub_1AC6B5A38;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AC6B5A38()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AC6B5A98()
{
  v18 = v0;
  v1 = *(v0 + 88);

  if (qword_1EB56B438 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1EB56B438);
  }

  v2 = *(v0 + 112);
  v3 = sub_1AC79FDE8();
  __swift_project_value_buffer(v3, qword_1EB56E808);
  v4 = v2;
  v5 = sub_1AC79FDC8();
  v6 = sub_1AC7A05F8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 112);
  v9 = *(v0 + 80);
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_1AC7A0E08();
    v14 = sub_1AC5CFE74(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1AC5BC000, v5, v6, "Error emitting codepath trigger: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1AC6B5C8C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1AC79F958() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v6 + v8 + 16) & ~v6;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1AC6B5DD0;

  return sub_1AC6B57F4(a1, v10, v11, v1 + v7, v12, v13, v1 + v9);
}

uint64_t sub_1AC6B5DD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AC6B5EC4()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_126();
  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC6B5F68()
{
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v2 = sub_1AC5C6544();
    OUTLINED_FUNCTION_13_0(v2);
    nullsub_1();
    if (!v0)
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7D68);
      v9 = swift_task_alloc();
      *(v1 + 64) = v9;
      *v9 = v1;
      v9[1] = sub_1AC6B60DC;
      OUTLINED_FUNCTION_15_0(*(v1 + 24));
      OUTLINED_FUNCTION_155();

      __asm { BR              X3 }
    }

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_155();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC6B60DC()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC6B620C()
{
  OUTLINED_FUNCTION_85();
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_1AC6B62BC()
{
  OUTLINED_FUNCTION_85();
  v0 = OUTLINED_FUNCTION_61();
  v1(v0);

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC6B6328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC5E63A4;

  return sub_1AC6B5EC4();
}

uint64_t sub_1AC6B63C0()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_1AC79FC78();
  v1[5] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_126();
  v5 = sub_1AC79FB18();
  v1[8] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBE8, &unk_1AC7A9660);
  v1[11] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_126();
  v9 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6B6508()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_14_4();
    v2 = OUTLINED_FUNCTION_18_6(v1);
    v3(v2);
    OUTLINED_FUNCTION_9_10();
    sub_1AC5DE590();
    nullsub_1();
    nullsub_1();
    nullsub_1();
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7D50);
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_1AC6B66E0;
    OUTLINED_FUNCTION_15_0(*(v0 + 32));
    OUTLINED_FUNCTION_56_0();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_56_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC6B66E0()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 120) = v0;

  if (!v0)
  {
    *(v5 + 128) = v3 & 1;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6B6830()
{
  OUTLINED_FUNCTION_72();
  v0 = OUTLINED_FUNCTION_21_6();
  v1(v0);
  v2 = OUTLINED_FUNCTION_89();
  v3(v2);
  OUTLINED_FUNCTION_29_9();

  v4 = OUTLINED_FUNCTION_55_1();

  return v5(v4);
}

uint64_t sub_1AC6B68C0()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_1AC79FC78();
  v1[5] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_126();
  v5 = sub_1AC79FB18();
  v1[8] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBE8, &unk_1AC7A9660);
  v1[11] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_126();
  v9 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6B6A08()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_14_4();
    v2 = OUTLINED_FUNCTION_18_6(v1);
    v3(v2);
    OUTLINED_FUNCTION_9_10();
    sub_1AC5DE590();
    nullsub_1();
    nullsub_1();
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7D48);
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_1AC6B6BD4;
    OUTLINED_FUNCTION_15_0(*(v0 + 32));
    OUTLINED_FUNCTION_56_0();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_56_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC6B6BD4()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 120) = v0;

  if (!v0)
  {
    *(v5 + 128) = v3 & 1;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6B6CF0()
{
  OUTLINED_FUNCTION_45();
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  v1 = OUTLINED_FUNCTION_89();
  v2(v1);

  v3 = *(v0 + 8);
  v4 = *(v0 + 128);

  return v3(v4);
}

uint64_t sub_1AC6B6DDC()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_126();
  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC6B6E80()
{
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v2 = sub_1AC5C6544();
    OUTLINED_FUNCTION_13_0(v2);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_155();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7D30);
    v9 = swift_task_alloc();
    *(v1 + 64) = v9;
    *v9 = v1;
    v9[1] = sub_1AC6B6FE8;
    OUTLINED_FUNCTION_15_0(*(v1 + 24));
    OUTLINED_FUNCTION_155();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC6B6FE8()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC6B7108()
{
  OUTLINED_FUNCTION_85();
  v0 = OUTLINED_FUNCTION_61();
  v1(v0);

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC6B7174()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC6B71D0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EFDF4(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for LSRAssetInventory();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

uint64_t sub_1AC6B7258(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1AC79FB18();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_65();
  v14 = a1 == 0xD000000000000020 && v13 == a2;
  if (v14 || (OUTLINED_FUNCTION_10_9(0xD000000000000020, v13) & 1) != 0)
  {
    [a3 hello];
    return 1;
  }

  OUTLINED_FUNCTION_65();
  result = 0xD00000000000002BLL;
  v17 = a1 == 0xD00000000000002BLL && v16 == a2;
  if (v17 || (result = OUTLINED_FUNCTION_10_9(0xD00000000000002BLL, v16), (result & 1) != 0))
  {
    if (a5)
    {
      OUTLINED_FUNCTION_99();
      v18 = swift_allocObject();
      *(v18 + 16) = a5;
      *(v18 + 24) = a6;
      v35 = sub_1AC6B834C;
      v36 = v18;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v33 = sub_1AC6B81E4;
      v34 = &block_descriptor_28;
      v19 = _Block_copy(&aBlock);

      [a3 allocatedLocalesWithReply_];
      _Block_release(v19);
      return 1;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_65();
  result = 0xD00000000000002ALL;
  v21 = a1 == 0xD00000000000002ALL && v20 == a2;
  if (v21 || (result = OUTLINED_FUNCTION_10_9(0xD00000000000002ALL, v20), (result & 1) != 0))
  {
    if (a4[2])
    {
      result = sub_1AC5D2398((a4 + 4), &v37);
      if (!v38)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      sub_1AC5C3968(&v37, &aBlock);
      OUTLINED_FUNCTION_24_8();
      sub_1AC79F9F8();
      v22 = OUTLINED_FUNCTION_25_8();
      v23(v22);
      OUTLINED_FUNCTION_99();
      v24 = swift_allocObject();
      *(v24 + 16) = a5;
      *(v24 + 24) = a6;
      v35 = sub_1AC6B8344;
      v36 = v24;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v33 = sub_1AC641A5C;
      v34 = &block_descriptor_22;
      v25 = _Block_copy(&aBlock);
      sub_1AC5D9374(a5, a6);

      [a3 allocateLocale:a4 reply:v25];
LABEL_24:
      _Block_release(v25);

      return 1;
    }

    __break(1u);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_65();
  result = 0xD00000000000002CLL;
  v27 = a1 == 0xD00000000000002CLL && v26 == a2;
  if (v27 || (v28 = OUTLINED_FUNCTION_10_9(0xD00000000000002CLL, v26), result = 0, (v28 & 1) != 0))
  {
    if (a4[2])
    {
      result = sub_1AC5D2398((a4 + 4), &v37);
      if (!v38)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      sub_1AC5C3968(&v37, &aBlock);
      OUTLINED_FUNCTION_24_8();
      sub_1AC79F9F8();
      v29 = OUTLINED_FUNCTION_25_8();
      result = v30(v29);
      if (!a5)
      {
LABEL_39:
        __break(1u);
        return result;
      }

      OUTLINED_FUNCTION_99();
      v31 = swift_allocObject();
      *(v31 + 16) = a5;
      *(v31 + 24) = a6;
      v35 = sub_1AC5D2608;
      v36 = v31;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v33 = sub_1AC5D25B4;
      v34 = &block_descriptor_3;
      v25 = _Block_copy(&aBlock);

      [a3 deallocateLocale:a4 reply:v25];
      goto LABEL_24;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  return result;
}

uint64_t sub_1AC6B76C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v6 = swift_task_alloc();
    v3[6] = v6;
    *v6 = v3;
    v6[1] = sub_1AC6B83C8;

    return sub_1AC6B63C0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC6B7880(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v6 = swift_task_alloc();
    v3[6] = v6;
    *v6 = v3;
    v6[1] = sub_1AC6B79F0;

    return sub_1AC6B68C0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC6B79F0()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);
  **(v0 + 16) = v4;

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC6B7BA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C5380;

  return sub_1AC6B6DDC();
}

uint64_t sub_1AC6B7C60()
{
  sub_1AC7A0E78();
  type metadata accessor for LSRAssetInventory();
  OUTLINED_FUNCTION_2_10();
  sub_1AC6B8354(v0, v1, v2, &unk_1AC7AC3B4);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6B7CDC()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for LSRAssetInventory();
    OUTLINED_FUNCTION_2_10();
    sub_1AC6B8354(v1, v2, v3, &unk_1AC7AC404);
    OUTLINED_FUNCTION_89();
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC6B7DA0(uint64_t a1)
{
  type metadata accessor for LSRAssetInventory();
  sub_1AC6B8354(&qword_1EB56BBD8, v1, type metadata accessor for LSRAssetInventory, &unk_1AC7AC404);
  return sub_1AC79FC28();
}

uint64_t sub_1AC6B7E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC7A0E78();
  type metadata accessor for LSRAssetInventory();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6B7E70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for LSRAssetInventory();
  v6 = sub_1AC6B8354(&qword_1EB56BBD8, v5, type metadata accessor for LSRAssetInventory, &unk_1AC7AC404);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC6B7EF8(uint64_t a1)
{
  type metadata accessor for LSRAssetInventory();
  sub_1AC6B8354(&qword_1EB56BBD8, v1, type metadata accessor for LSRAssetInventory, &unk_1AC7AC404);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC6B7F8C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LSRAssetInventory();
  sub_1AC6B8354(&qword_1EB56BBD8, v4, type metadata accessor for LSRAssetInventory, &unk_1AC7AC404);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1AC6B814C()
{
  result = xpcInterface_LSRAssetInventory();
  qword_1EB56E828 = result;
  return result;
}

uint64_t sub_1AC6B8174(uint64_t a1, void (*a2)(void *, __n128))
{
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBF8, &qword_1AC7A7D70);
  v5[0] = a1;

  (a2)(v5);
  return sub_1AC641B24(v5);
}

uint64_t sub_1AC6B81E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1AC79FB18();
  sub_1AC6B8354(&qword_1EB56B468, 255, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  v3 = sub_1AC7A0448();

  v2(v3);
}

uint64_t sub_1AC6B8298(uint64_t result, void *a2, void (*a3)(unint64_t *))
{
  if (a3)
  {
    v5 = a2 != 0;
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (result & 1);
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C598, &qword_1AC7A9B10);
    v8 = v6;
    v9 = v5;
    v7 = a2;
    sub_1AC6B839C(v6, v5);
    a3(&v8);
    sub_1AC6B83A8(v6, v5);
    return sub_1AC641B24(&v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC6B8354(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
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

id sub_1AC6B839C(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_1AC6B83A8(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_1AC6B83E0()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CE20, &qword_1AC7AC480);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
  v8 = OUTLINED_FUNCTION_167(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v9 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  v18 = type metadata accessor for ClientInfo.LoggingInfo(0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v48 - v24;
  v26 = v0[5];
  if (!v26 || (v27 = v2[5]) != 0 && (v0[4] == v2[4] ? (v28 = v26 == v27) : (v28 = 0), v28 || (sub_1AC7A0D38() & 1) != 0))
  {
    v29 = v0[7];
    if (!v29 || (v30 = v2[7]) != 0 && (v0[6] == v2[6] ? (v31 = v29 == v30) : (v31 = 0), v31 || (sub_1AC7A0D38() & 1) != 0))
    {
      v49 = v11;
      v32 = type metadata accessor for ClientInfo(0);
      sub_1AC6B8F1C(v0 + *(v32 + 32), v17);
      OUTLINED_FUNCTION_6_8(v17);
      if (v28)
      {
        v6 = v17;
      }

      else
      {
        sub_1AC6B97B0(v17, v25);
        sub_1AC6BADA0(v25, v15);
        __swift_storeEnumTagSinglePayload(v15, 0, 1, v18);
        v34 = *(v32 + 32);
        v35 = *(v3 + 48);
        sub_1AC6B8F1C(v15, v6);
        sub_1AC6B8F1C(v2 + v34, &v6[v35]);
        OUTLINED_FUNCTION_6_8(v6);
        if (!v36)
        {
          v37 = v49;
          sub_1AC6B8F1C(v6, v49);
          OUTLINED_FUNCTION_6_8(&v6[v35]);
          if (!v38)
          {
            sub_1AC6B97B0(&v6[v35], v22);
            v42 = sub_1AC79F928();
            if (v42 & 1) != 0 && (sub_1AC79F928())
            {
              v43 = *(v18 + 24);
              v44 = *(v37 + v43);
              v45 = *(v37 + v43 + 8);
              v46 = (v22 + v43);
              v47 = v44 == *v46 && v45 == v46[1];
              if (v47 || (sub_1AC7A0D38() & 1) != 0)
              {
                sub_1AC6B9754(v22);
                sub_1AC5C720C(v15, &qword_1EB56CA50, &qword_1AC7AB4F0);
                sub_1AC6B9754(v25);
                sub_1AC6B9754(v37);
                goto LABEL_18;
              }
            }

            sub_1AC6B9754(v22);
            sub_1AC5C720C(v15, &qword_1EB56CA50, &qword_1AC7AB4F0);
            sub_1AC6B9754(v25);
            sub_1AC6B9754(v37);
            v41 = OUTLINED_FUNCTION_39();
            v40 = &qword_1AC7AB4F0;
LABEL_41:
            sub_1AC5C720C(v41, v39, v40);
            goto LABEL_42;
          }

          sub_1AC5C720C(v15, &qword_1EB56CA50, &qword_1AC7AB4F0);
          sub_1AC6B9754(v25);
          sub_1AC6B9754(v37);
LABEL_31:
          v39 = &qword_1EB56CE20;
          v40 = &qword_1AC7AC480;
          v41 = v6;
          goto LABEL_41;
        }

        sub_1AC5C720C(v15, &qword_1EB56CA50, &qword_1AC7AB4F0);
        sub_1AC6B9754(v25);
        OUTLINED_FUNCTION_6_8(&v6[v35]);
        if (!v28)
        {
          goto LABEL_31;
        }
      }

LABEL_18:
      sub_1AC5C720C(v6, &qword_1EB56CA50, &qword_1AC7AB4F0);
      if (*v0 != *v2 || v0[1] != v2[1])
      {
        sub_1AC7A0D38();
      }
    }
  }

LABEL_42:
  OUTLINED_FUNCTION_105();
}