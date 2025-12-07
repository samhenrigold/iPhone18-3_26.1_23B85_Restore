unint64_t sub_27220FC48()
{
  v3 = v0;
  v4 = sub_27237728C();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v31 - v9;
  if (*(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState))
  {
    *(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) = 0;
  }

  if (!v1)
  {
    v34 = v8;
    *(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_usedPartialAsFinal) = 0;
    (*((*MEMORY[0x277D85000] & *v0) + 0x1A0))(0);
    v11 = *(**(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrModel) + 968);

    v13 = v11(v12);
    v2 = v14;
    v16 = v15;

    v33 = v16;
    v32 = v13;
    if ((v2 & 0x2000000000000000) != 0)
    {
      v18 = HIBYTE(v2) & 0xF;
    }

    else
    {
      v18 = v13 & 0xFFFFFFFFFFFFLL;
    }

    v19 = sub_2722C389C();
    v20 = v34;
    v21 = *(v34 + 16);
    if (v18)
    {
      v21(v10, v19, v4);

      v22 = sub_27237725C();
      v23 = sub_272377E7C();

      v31 = v22;
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v35 = v25;
        *v24 = 136315394;
        *(v24 + 4) = sub_2721FFD04(v32, v2, &v35);
        *(v24 + 12) = 1024;
        *(v24 + 14) = v33 & 1;
        v26 = v23;
        v27 = v31;
        _os_log_impl(&dword_2721E4000, v31, v26, "Block inference, ignore %s, isFinal %{BOOL}d", v24, 0x12u);
        sub_2722039C8(v25);
        MEMORY[0x2743C69C0](v25, -1, -1);
        MEMORY[0x2743C69C0](v24, -1, -1);
      }

      else
      {
      }

      (*(v20 + 8))(v10, v4);
    }

    else
    {
      v21(v7, v19, v4);
      v28 = sub_27237725C();
      v29 = sub_272377E7C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_2721E4000, v28, v29, "Block inference", v30, 2u);
        MEMORY[0x2743C69C0](v30, -1, -1);
      }

      (*(v20 + 8))(v7, v4);
    }

    if (*(v3 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) != 2)
    {
      *(v3 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) = 2;
    }
  }

  return v2;
}

void sub_272210008(void *a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector);
  if (v3)
  {
    v4 = *(*v3 + 680);

    v4(a1, a2);
  }

  else
  {
    sub_272337680(a1, a2);
  }
}

uint64_t sub_2722100C4()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector;
  v3 = *(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector);
  if (v3)
  {
    v4 = *(*v3 + 688);

    v4(v5);

    *(v1 + v2) = 0;
  }

  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_272210214;

  return sub_272335974();
}

uint64_t sub_272210214()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_272210344, 0, 0);
  }
}

uint64_t sub_272210344()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState))
  {
    *(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) = 0;
  }

  return (*(v0 + 8))();
}

uint64_t sub_272210374(uint64_t a1, uint64_t a2)
{
  v6 = sub_272376E5C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v2) + 0x120))(v8);
  if (!v12)
  {
    sub_2722032B4();
    swift_allocError();
    *v20 = 0x75716552206C694ELL;
    v20[1] = 0xEF6F666E49747365;
    return swift_willThrow();
  }

  v13 = v12;
  v14 = (*((*v11 & *v2) + 0x150))();
  if (!v14)
  {
    sub_2722032B4();
    swift_allocError();
    *v22 = 0xD000000000000011;
    v22[1] = 0x8000000272388A20;
    swift_willThrow();
  }

  v15 = v14;
  (*(*a1 + 208))(v39);
  if (!v39[1])
  {
    sub_2722032B4();
    swift_allocError();
    *v23 = 0xD000000000000014;
    v23[1] = 0x8000000272388A40;
    swift_willThrow();
    goto LABEL_24;
  }

  v37 = v6;
  v38 = v3;
  v36 = v7;
  sub_2721F40F0(v39, &qword_2808819E0, &qword_27237D890);
  type metadata accessor for VAInstrumentedKeywordResult(0);
  v16 = (*(*a1 + 104))();
  v17 = VAInstrumentedKeywordResult.__allocating_init(detections:)(v16);
  if (!a2)
  {
LABEL_21:
    v30 = v38;
    v31 = (*(*v13 + 432))(v17);
    if (v30)
    {
    }

    (*(*v13 + 144))(v31);
    (*(*v15 + 80))(v17, v10);
    (*(v36 + 8))(v10, v37);

LABEL_24:
  }

  v18 = *(a2 + 16);
  if (v18)
  {
    v19 = sub_272377B5C();
    *(v19 + 16) = v18;
    bzero((v19 + 32), 2 * v18);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v24 = *(*v17 + 136);
  v25 = *v17 + 136;
  v24(v19);
  if (!v18)
  {
    v24(MEMORY[0x277D84F90]);
    goto LABEL_21;
  }

  v32[1] = v25;
  v33 = v24;
  v34 = v17;
  v35 = v15;
  v40 = MEMORY[0x277D84F90];
  sub_272215F8C(0, v18, 0);
  result = v40;
  v26 = (a2 + 32);
  while (1)
  {
    v27 = *v26;
    if ((*v26 & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      break;
    }

    if (v27 <= -32769.0)
    {
      goto LABEL_27;
    }

    if (v27 >= 32768.0)
    {
      goto LABEL_28;
    }

    v40 = result;
    v29 = *(result + 16);
    v28 = *(result + 24);
    if (v29 >= v28 >> 1)
    {
      sub_272215F8C((v28 > 1), v29 + 1, 1);
      result = v40;
    }

    *(result + 16) = v29 + 1;
    *(result + 2 * v29 + 32) = v27;
    ++v26;
    if (!--v18)
    {
      v17 = v34;
      v15 = v35;
      v33(result);
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_2722108B8()
{
  sub_272216300(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrDelegate);
  sub_2722039C8((v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_strategyProvider));

  swift_unknownObjectRelease();

  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorAudioOutputStream, &qword_2808819B8, &qword_27237C508);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorFeatureOutputStream, &qword_2808819C0, &unk_27237C510);
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_saveAudioQueue);
}

id VATinyASRSpotter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VATinyASRSpotter(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_272210BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_272210C20, 0, 0);
}

uint64_t sub_272210C20()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_beginAccess();
  *(v1 + 16) = 0;
  v5 = (*(*v2 + 416) + **(*v2 + 416));
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_272210D6C;

  return v5();
}

uint64_t sub_272210D6C()
{

  return MEMORY[0x2822009F8](sub_272210E68, 0, 0);
}

uint64_t sub_272210E68()
{
  v1 = *(v0 + 64);
  (*(**(v0 + 56) + 184))();
  v2 = *(**(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrModel) + 968);

  v2(v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_272210F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_272210F9C, 0, 0);
}

uint64_t sub_272210F9C()
{
  v17 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = v0[6];
    v3 = *(**(Strong + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrModel) + 960);

    v3(&v13, v2);
    v4 = v13;
    v5 = v14;
    v0[9] = v14;
    v6 = v15;
    v7 = v16;

    v11 = swift_task_alloc();
    v0[10] = v11;
    *v11 = v0;
    v11[1] = sub_272211190;
    v12 = v0[7];

    return sub_272217F10(v4, v5, v7, v12, v6);
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v8 = 0xD00000000000001FLL;
    v8[1] = 0x8000000272388E80;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_272211190()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_272211310;
  }

  else
  {

    v2 = sub_2722112AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2722112AC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_272211310()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_272211378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_27221139C, 0, 0);
}

uint64_t sub_27221139C()
{
  v25 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (!Strong)
  {
    sub_2722032B4();
    swift_allocError();
    *v14 = 0xD00000000000001FLL;
    v14[1] = 0x8000000272388E80;
    swift_willThrow();
    v7 = *(v0 + 8);
    goto LABEL_7;
  }

  v2 = Strong;
  v3 = *(**(Strong + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotFinalResult) + 160);

  LOBYTE(v3) = v3(v4);

  if (v3)
  {
    v5 = *(**&v2[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotEndOfSpeech] + 160);

    LOBYTE(v5) = v5(v6);

    if (v5)
    {

      v7 = *(v0 + 8);
LABEL_7:

      return v7();
    }
  }

  v8 = *&v2[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrModel];
  v9 = *(**(v0 + 72) + 176);

  v11 = v9(v10);
  (*(*v8 + 960))(&v21, v11);
  v12 = v21;
  v13 = v22;
  *(v0 + 96) = v22;
  v16 = v23;
  v17 = v24;
  v18 = *(v0 + 80);

  swift_beginAccess();
  v19 = *(v18 + 16);
  v20 = swift_task_alloc();
  *(v0 + 104) = v20;
  *v20 = v0;
  v20[1] = sub_272211698;

  return sub_272217F10(v12, v13, v17, v19, v16);
}

uint64_t sub_272211698()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_272211818;
  }

  else
  {

    v2 = sub_2722117B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2722117B4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_272211818()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

void sub_272211880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57[1] = *MEMORY[0x277D85DE8];
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_27237728C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech);
  if (v16)
  {
    v53 = a2;
    v54 = v7;
    v17 = v13;
    v18 = a3;
    v55 = v8;
    v56 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech;
    v19 = v16;
    v20 = sub_2722184E4();
    if (v3)
    {
    }

    else
    {
      v21 = v20;
      v52 = a1;
      v57[0] = 0;
      if ([v20 writeFromBuffer:v19 error:v57])
      {
        v51 = v19;
        v22 = v57[0];
        v23 = sub_2722C389C();
        v24 = v12;
        (*(v12 + 16))(v15, v23, v17);
        v25 = v18;

        v26 = v21;
        v27 = sub_27237725C();
        v28 = sub_272377E7C();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v50 = v26;
          v30 = v29;
          v49 = swift_slowAlloc();
          v57[0] = v49;
          *v30 = 136315394;
          v31 = sub_2721FFD04(v53, v25, v57);
          v48 = v30;
          *(v30 + 4) = v31;
          *(v30 + 12) = 2080;
          v26 = v50;
          v32 = [v50 url];
          v47 = v27;
          v33 = v32;
          sub_272376D0C();

          sub_2722197D4(&qword_280881A48, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v53 = v17;
          v34 = v28;
          v35 = v54;
          v36 = sub_27237862C();
          v38 = v37;
          (*(v55 + 8))(v10, v35);
          v39 = sub_2721FFD04(v36, v38, v57);

          v41 = v47;
          v40 = v48;
          *(v48 + 14) = v39;
          _os_log_impl(&dword_2721E4000, v41, v34, "%s: Saved audio to %s", v40, 0x16u);
          v42 = v49;
          swift_arrayDestroy();
          MEMORY[0x2743C69C0](v42, -1, -1);
          MEMORY[0x2743C69C0](v40, -1, -1);

          (*(v24 + 8))(v15, v53);
        }

        else
        {

          (*(v24 + 8))(v15, v17);
        }

        v44 = v51;
        v45 = v52;
        [v26 close];

        v46 = *(v45 + v56);
        *(v45 + v56) = 0;
      }

      else
      {
        v43 = v57[0];
        sub_272376C6C();

        swift_willThrow();
      }
    }
  }
}

uint64_t sub_272211CD4(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_272211DBC;

  return v4();
}

uint64_t sub_272211DBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_272211EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_272377C3C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_27220E6B4(0, 0, v6, &unk_27237C560, v8, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_272211FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_272211FF4, 0, 0);
}

uint64_t sub_272211FF4()
{
  (*(v0 + 16))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_272212074()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2722120B0(_OWORD *a1, uint64_t a2, char a3)
{
  *(v4 + 1088) = v3;
  *(v4 + 1286) = a3;
  *(v4 + 1080) = a2;
  *(v4 + 1072) = a1;
  sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  *(v4 + 1096) = swift_task_alloc();
  *(v4 + 1104) = swift_task_alloc();
  type metadata accessor for VARuntimeParameters(0);
  *(v4 + 1112) = swift_task_alloc();
  v6 = sub_27237728C();
  *(v4 + 1120) = v6;
  *(v4 + 1128) = *(v6 - 8);
  *(v4 + 1136) = swift_task_alloc();
  *(v4 + 1144) = swift_task_alloc();
  *(v4 + 1152) = swift_task_alloc();
  *(v4 + 1160) = swift_task_alloc();
  *(v4 + 1168) = swift_task_alloc();
  *(v4 + 1176) = swift_task_alloc();
  *(v4 + 1184) = swift_task_alloc();
  v7 = a1[5];
  *(v4 + 80) = a1[4];
  *(v4 + 96) = v7;
  v8 = a1[7];
  *(v4 + 112) = a1[6];
  *(v4 + 128) = v8;
  v9 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v9;
  v10 = a1[3];
  *(v4 + 48) = a1[2];
  *(v4 + 64) = v10;

  return MEMORY[0x2822009F8](sub_272212258, 0, 0);
}

uint64_t sub_272212258()
{
  v182 = v0;
  v1 = *(v0 + 1072);
  v2 = v1[5];
  v181[4] = v1[4];
  v181[5] = v2;
  v3 = v1[7];
  v181[6] = v1[6];
  v181[7] = v3;
  v4 = v1[1];
  v181[0] = *v1;
  v181[1] = v4;
  v5 = v1[3];
  v181[2] = v1[2];
  v181[3] = v5;
  if ((VASpeechDetectorAudioOutput.shouldProcessAudio.getter() & 1) == 0)
  {
    v24 = *(v0 + 1136);
    v25 = *(v0 + 1128);
    v26 = *(v0 + 1120);
    v27 = sub_2722C389C();
    (*(v25 + 16))(v24, v27, v26);
    v28 = sub_27237725C();
    v29 = sub_272377E8C();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 1136);
    v32 = *(v0 + 1128);
    v33 = *(v0 + 1120);
    if (v30)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2721E4000, v28, v29, "IGNORING AUDIO", v34, 2u);
      MEMORY[0x2743C69C0](v34, -1, -1);
    }

    (*(v32 + 8))(v31, v33);
    goto LABEL_69;
  }

  LODWORD(v6) = *(v0 + 32);
  *(v0 + 1287) = v6;
  v7 = 0x280881000;
  if (v6 == 1)
  {
    v8 = *(v0 + 1184);
    v9 = *(v0 + 1128);
    v10 = *(v0 + 1120);
    v11 = *(v0 + 1088);
    v12 = sub_2722C389C();
    (*(v9 + 16))(v8, v12, v10);
    sub_272218D40(v0 + 16, v0 + 912);
    v13 = v11;
    v14 = sub_27237725C();
    v15 = sub_272377E7C();
    sub_272218F7C(v0 + 16);

    if (!os_log_type_enabled(v14, v15))
    {
      v51 = *(v0 + 1184);
      v52 = *(v0 + 1128);
      v53 = *(v0 + 1120);

      (*(v52 + 8))(v51, v53);
LABEL_19:
      v63 = *(v0 + 1088);
      v64 = *(**(v63 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotEndOfSpeech) + 168);

      v64(0);

      v65 = *(**(v63 + *(v7 + 2392)) + 168);

      v65(0);

      v66 = *(v63 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult);
      *(v63 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult) = 0;

      goto LABEL_20;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v181[0] = v17;
    *v16 = 134218242;
    if ((*(v0 + 136) & 1) == 0)
    {
      v18 = v17;
      v19 = *(v0 + 1088);
      *(v16 + 4) = *(v0 + 132);
      *(v16 + 12) = 2080;
      v20 = (*((*MEMORY[0x277D85000] & *v19) + 0x120))();
      v21 = v20;
      if (v20)
      {
        v22 = *(v0 + 1112);
        (*(*v20 + 312))(v20);

        v23 = *(v22 + 52);
        sub_272216BD8(v22);
      }

      else
      {
        v23 = 0;
      }

      v57 = v21 == 0;
      v58 = *(v0 + 1184);
      v6 = *(v0 + 1128);
      v59 = *(v0 + 1120);
      *(v0 + 1288) = v23;
      *(v0 + 1292) = v57;
      sub_2721F065C(&qword_2808819F0, &qword_27237C590);
      v60 = sub_27237789C();
      v62 = sub_2721FFD04(v60, v61, v181);

      *(v16 + 14) = v62;
      _os_log_impl(&dword_2721E4000, v14, v15, "Start-of-speech: %f < %s", v16, 0x16u);
      sub_2722039C8(v18);
      MEMORY[0x2743C69C0](v18, -1, -1);
      MEMORY[0x2743C69C0](v16, -1, -1);

      (*(v6 + 8))(v58, v59);
      LOBYTE(v6) = 1;
      v7 = 0x280881000uLL;
      goto LABEL_19;
    }

    __break(1u);
LABEL_73:
    __break(1u);
    return MEMORY[0x282200460]();
  }

  if (*(v0 + 33) == 1)
  {
    v35 = *(v0 + 1176);
    v36 = *(v0 + 1128);
    v37 = *(v0 + 1120);
    v38 = *(v0 + 1088);
    v39 = sub_2722C389C();
    (*(v36 + 16))(v35, v39, v37);
    sub_272218D40(v0 + 16, v0 + 784);
    v40 = v38;
    v41 = sub_27237725C();
    v42 = sub_272377E7C();
    sub_272218F7C(v0 + 16);

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v181[0] = v44;
      *v43 = 134218242;
      if (*(v0 + 136))
      {
        goto LABEL_73;
      }

      v45 = v44;
      v46 = *(v0 + 1088);
      *(v43 + 4) = *(v0 + 132);
      *(v43 + 12) = 2080;
      v47 = (*((*MEMORY[0x277D85000] & *v46) + 0x120))();
      v48 = v47;
      if (v47)
      {
        v49 = *(v0 + 1112);
        (*(*v47 + 312))(v47);

        v50 = *(v49 + 52);
        sub_272216BD8(v49);
      }

      else
      {
        v50 = 0;
      }

      v133 = v48 == 0;
      v180 = *(v0 + 1176);
      v134 = *(v0 + 1128);
      v135 = *(v0 + 1120);
      *(v0 + 1280) = v50;
      *(v0 + 1284) = v133;
      sub_2721F065C(&qword_2808819F0, &qword_27237C590);
      v136 = sub_27237789C();
      v138 = sub_2721FFD04(v136, v137, v181);

      *(v43 + 14) = v138;
      _os_log_impl(&dword_2721E4000, v41, v42, "End-of-Speech: %f < %s", v43, 0x16u);
      sub_2722039C8(v45);
      MEMORY[0x2743C69C0](v45, -1, -1);
      MEMORY[0x2743C69C0](v43, -1, -1);

      (*(v134 + 8))(v180, v135);
      v7 = 0x280881000;
    }

    else
    {
      v54 = *(v0 + 1176);
      v55 = *(v0 + 1128);
      v56 = *(v0 + 1120);

      (*(v55 + 8))(v54, v56);
    }
  }

LABEL_20:
  v67 = *(v0 + 137);
  if (v67 == 1 && *(v0 + 138) == 1)
  {
    v68 = *(v0 + 1168);
    v69 = *(v0 + 1128);
    v70 = *(v0 + 1120);
    v71 = *(v0 + 1088);
    v72 = sub_2722C389C();
    (*(v69 + 16))(v68, v72, v70);
    sub_272218D40(v0 + 16, v0 + 272);
    v73 = v71;
    v74 = sub_27237725C();
    v75 = sub_272377E7C();
    sub_272218F7C(v0 + 16);

    v76 = os_log_type_enabled(v74, v75);
    v77 = *(v0 + 1168);
    v78 = *(v0 + 1128);
    v79 = *(v0 + 1120);
    if (v76)
    {
      v177 = *(v0 + 1088);
      v80 = swift_slowAlloc();
      v179 = v79;
      v81 = swift_slowAlloc();
      *&v181[0] = v81;
      *v80 = 136315394;
      v82 = *(v0 + 96);
      *(v0 + 592) = *(v0 + 80);
      *(v0 + 608) = v82;
      v83 = *(v0 + 128);
      *(v0 + 624) = *(v0 + 112);
      *(v0 + 640) = v83;
      v84 = *(v0 + 32);
      *(v0 + 528) = *(v0 + 16);
      *(v0 + 544) = v84;
      v85 = *(v0 + 64);
      *(v0 + 560) = *(v0 + 48);
      *(v0 + 576) = v85;
      sub_272218D40(v0 + 16, v0 + 656);
      sub_272218FD0();
      v178 = v77;
      v86 = sub_27237862C();
      v88 = v87;
      v89 = *(v0 + 608);
      *(v0 + 464) = *(v0 + 592);
      *(v0 + 480) = v89;
      v90 = *(v0 + 640);
      *(v0 + 496) = *(v0 + 624);
      *(v0 + 512) = v90;
      v91 = *(v0 + 544);
      *(v0 + 400) = *(v0 + 528);
      *(v0 + 416) = v91;
      v92 = *(v0 + 576);
      *(v0 + 432) = *(v0 + 560);
      *(v0 + 448) = v92;
      sub_272218F7C(v0 + 400);
      v93 = sub_2721FFD04(v86, v88, v181);

      *(v80 + 4) = v93;
      *(v80 + 12) = 2080;
      *(v0 + 1285) = *(v177 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState);
      v94 = sub_27237789C();
      v96 = sub_2721FFD04(v94, v95, v181);

      *(v80 + 14) = v96;
      _os_log_impl(&dword_2721E4000, v74, v75, "End-of-Audio: %s, currentState %s", v80, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743C69C0](v81, -1, -1);
      v97 = v80;
      v7 = 0x280881000;
      MEMORY[0x2743C69C0](v97, -1, -1);

      (*(v78 + 8))(v178, v179);
    }

    else
    {

      (*(v78 + 8))(v77, v79);
    }

    v98 = *(**(*(v0 + 1088) + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotEndOfSpeech) + 168);

    v98(1);
  }

  v99 = *(v0 + 1088);
  v100 = *(v7 + 2392);
  *(v0 + 1192) = v100;
  v101 = *(**(v99 + v100) + 160);

  LOBYTE(v101) = v101(v102);

  if ((v101 & 1) == 0)
  {
    v103 = *(v0 + 16);
    v104 = mach_absolute_time();
    sub_272337680(v103, v104);
  }

  *(v0 + 1200) = 0;
  if (v67)
  {
    if (*(v0 + 138) == 1)
    {
      v105 = *(**(v99 + v100) + 160);

      LOBYTE(v105) = v105(v106);

      if ((v105 & 1) == 0)
      {
        v109 = *(v0 + 1128);
        v110 = *(*(v0 + 1088) + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult);
        v111 = sub_2722C389C();
        *(v0 + 1208) = v111;
        v112 = *(v109 + 16);
        *(v0 + 1216) = v112;
        *(v0 + 1224) = (v109 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v113 = *(v0 + 1120);
        if (!v110)
        {
          v112(*(v0 + 1144), v111, v113);
          v145 = sub_27237725C();
          v146 = sub_272377E7C();
          if (os_log_type_enabled(v145, v146))
          {
            v147 = swift_slowAlloc();
            *v147 = 0;
            _os_log_impl(&dword_2721E4000, v145, v146, "End of audio, not a single result...done", v147, 2u);
            MEMORY[0x2743C69C0](v147, -1, -1);
          }

          v148 = *(v0 + 1144);
          v149 = *(v0 + 1128);
          v150 = *(v0 + 1120);
          v151 = *(v0 + 1088);
          v152 = *(v0 + 1286);

          (*(v149 + 8))(v148, v150);
          v153 = *(**(v151 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_shouldResetData) + 168);

          v153(1);

          if (v152 != 1)
          {
            goto LABEL_69;
          }

          if (v6)
          {
            goto LABEL_33;
          }

          v125 = 1;
LABEL_41:
          v126 = *(v0 + 1088);
          v127 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech;
          v128 = *(v126 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech);
          if (!v128)
          {
            goto LABEL_69;
          }

          v129 = *(v0 + 1200);
          v130 = *(v0 + 16);
          v131 = v128;
          sub_272218A0C(v131, v130);
          if (!v129)
          {
            v139 = *(v126 + v127);
            *(v126 + v127) = v132;

            if (*(v0 + 138))
            {
              v140 = *(**(*(v0 + 1088) + *(v0 + 1192)) + 160);

              v142 = v140(v141);

              if (v142)
              {
                v143 = *(v0 + 1088);
                v144 = swift_task_alloc();
                v144[2] = v143;
                v144[3] = 0xD000000000000012;
                v144[4] = 0x8000000272388AC0;
LABEL_67:
                sub_272377EEC();

                goto LABEL_69;
              }

              if (v125)
              {
                v173 = *(v0 + 1088);
                v174 = swift_task_alloc();
                v174[2] = v173;
                v174[3] = 0x6572696673694DLL;
                v174[4] = 0xE700000000000000;
                goto LABEL_67;
              }
            }
          }

          goto LABEL_69;
        }

        v112(*(v0 + 1160), v111, v113);
        v114 = sub_27237725C();
        v115 = sub_272377E7C();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          *v116 = 0;
          _os_log_impl(&dword_2721E4000, v114, v115, "End of audio, got partial but no final yet. So send 0 bytes", v116, 2u);
          MEMORY[0x2743C69C0](v116, -1, -1);
        }

        v117 = *(v0 + 1160);
        v118 = *(v0 + 1128);
        v119 = *(v0 + 1120);
        v120 = *(v0 + 1088);

        v121 = *(v118 + 8);
        *(v0 + 1232) = v121;
        v121(v117, v119);
        *(v0 + 1240) = mach_absolute_time();
        v122 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_sleepTask;
        *(v0 + 1248) = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_sleepTask;
        v123 = *(**(v99 + v100) + 160);

        LOBYTE(v123) = v123(v124);

        if (v123)
        {
          *(v120 + v122) = 0;

          if ((*(v0 + 1286) & 1) == 0)
          {
            goto LABEL_69;
          }

          if (*(v0 + 1287) == 1)
          {
            goto LABEL_33;
          }

LABEL_40:
          v125 = 0;
          goto LABEL_41;
        }

        *(v0 + 1256) = 1;
        v154 = *(v0 + 1104);
        v155 = *(v0 + 1096);
        v156 = *(v0 + 1088);
        v157 = *(v0 + 1080);
        v158 = sub_272377C3C();
        v159 = *(v158 - 8);
        (*(v159 + 56))(v154, 1, 1, v158);
        v160 = swift_allocObject();
        v160[2] = 0;
        v160[3] = 0;
        v160[4] = 10;
        v160[5] = v156;
        v160[6] = v157;
        sub_2721F07F4(v154, v155, &qword_2808819D8, &qword_27237CB50);
        LODWORD(v155) = (*(v159 + 48))(v155, 1, v158);
        v161 = v156;
        v162 = v157;

        v163 = *(v0 + 1096);
        if (v155 == 1)
        {
          sub_2721F40F0(*(v0 + 1096), &qword_2808819D8, &qword_27237CB50);
        }

        else
        {
          sub_272377C2C();
          (*(v159 + 8))(v163, v158);
        }

        v164 = v160[2];
        swift_unknownObjectRetain();

        if (v164)
        {
          swift_getObjectType();
          v165 = sub_272377BDC();
          v167 = v166;
          swift_unknownObjectRelease();
        }

        else
        {
          v165 = 0;
          v167 = 0;
        }

        sub_2721F40F0(*(v0 + 1104), &qword_2808819D8, &qword_27237CB50);
        v168 = swift_allocObject();
        *(v168 + 16) = &unk_27237C578;
        *(v168 + 24) = v160;
        if (v167 | v165)
        {
          *(v0 + 1040) = 0;
          *(v0 + 1048) = 0;
          *(v0 + 1056) = v165;
          *(v0 + 1064) = v167;
        }

        v169 = *(v0 + 1248);
        v170 = *(v0 + 1088);
        v171 = swift_task_create();
        *(v0 + 1264) = v171;
        *(v170 + v169) = v171;

        v172 = swift_task_alloc();
        *(v0 + 1272) = v172;
        *v172 = v0;
        v172[1] = sub_272213438;

        return MEMORY[0x282200460]();
      }
    }
  }

  if (*(v0 + 1286) == 1)
  {
    if (v6)
    {
LABEL_33:
      v107 = *(v0 + 1088);
      v108 = *(v107 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech);
      *(v107 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech) = *(v0 + 16);
      sub_272218D40(v0 + 16, v0 + 144);

      goto LABEL_69;
    }

    goto LABEL_40;
  }

LABEL_69:

  v175 = *(v0 + 8);

  return v175();
}

uint64_t sub_272213438()
{

  return MEMORY[0x2822009F8](sub_272213550, 0, 0);
}

uint64_t sub_272213550()
{
  v1 = *(**(*(v0 + 1088) + *(v0 + 1192)) + 160);

  LOBYTE(v1) = v1(v2);

  v3 = *(v0 + 1256);
  if ((v1 & 1) == 0)
  {
    *(v0 + 1256) = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      v19 = *(v0 + 1104);
      v20 = *(v0 + 1096);
      v21 = *(v0 + 1088);
      v22 = *(v0 + 1080);
      v23 = sub_272377C3C();
      v24 = *(v23 - 8);
      (*(v24 + 56))(v19, 1, 1, v23);
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = 10;
      v25[5] = v21;
      v25[6] = v22;
      sub_2721F07F4(v19, v20, &qword_2808819D8, &qword_27237CB50);
      LODWORD(v20) = (*(v24 + 48))(v20, 1, v23);
      v26 = v21;
      v27 = v22;

      v28 = *(v0 + 1096);
      if (v20 == 1)
      {
        sub_2721F40F0(*(v0 + 1096), &qword_2808819D8, &qword_27237CB50);
      }

      else
      {
        sub_272377C2C();
        (*(v24 + 8))(v28, v23);
      }

      v29 = v25[2];
      swift_unknownObjectRetain();

      if (v29)
      {
        swift_getObjectType();
        v30 = sub_272377BDC();
        v32 = v31;
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      sub_2721F40F0(*(v0 + 1104), &qword_2808819D8, &qword_27237CB50);
      v33 = swift_allocObject();
      *(v33 + 16) = &unk_27237C578;
      *(v33 + 24) = v25;
      if (v32 | v30)
      {
        *(v0 + 1040) = 0;
        *(v0 + 1048) = 0;
        *(v0 + 1056) = v30;
        *(v0 + 1064) = v32;
      }

      v34 = *(v0 + 1248);
      v35 = *(v0 + 1088);
      v36 = swift_task_create();
      *(v0 + 1264) = v36;
      *(v35 + v34) = v36;

      v37 = swift_task_alloc();
      *(v0 + 1272) = v37;
      *v37 = v0;
      v37[1] = sub_272213438;

      return MEMORY[0x282200460]();
    }

    __break(1u);
LABEL_35:
    __break(1u);
    return MEMORY[0x282200460]();
  }

  *(*(v0 + 1088) + *(v0 + 1248)) = 0;

  if (v3 >= 1)
  {
    v4 = *(v0 + 1240);
    type metadata accessor for VARequestContext(0);
    v5 = mach_absolute_time();
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (!v6)
    {
      goto LABEL_35;
    }

    v8 = *(v0 + 1216);
    v9 = *(v0 + 1208);
    v10 = *(v0 + 1152);
    v11 = *(v0 + 1120);
    v12 = *(v0 + 1080);
    v13 = sub_2722310BC(v7);
    v8(v10, v9, v11);
    v14 = v12;
    v15 = sub_27237725C();
    v16 = sub_272377E7C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 1080);
      v18 = swift_slowAlloc();
      *v18 = 67109376;
      *(v18 + 4) = [v17 frameLength];

      *(v18 + 8) = 2048;
      *(v18 + 10) = v13;
      _os_log_impl(&dword_2721E4000, v15, v16, "Got final after padding speech end with %u samples of 0 audio for %f secs", v18, 0x12u);
      MEMORY[0x2743C69C0](v18, -1, -1);
    }

    else
    {

      v15 = *(v0 + 1080);
    }

    v38 = *(v0 + 1232);
    v39 = *(v0 + 1152);
    v40 = *(v0 + 1120);

    v38(v39, v40);
  }

  if (*(v0 + 1286) == 1)
  {
    v41 = *(v0 + 1088);
    if (*(v0 + 1287) == 1)
    {
      v42 = *(v41 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech);
      *(v41 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech) = *(v0 + 16);
      sub_272218D40(v0 + 16, v0 + 144);
LABEL_27:

      goto LABEL_31;
    }

    v43 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech;
    v44 = *(v41 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech);
    if (v44)
    {
      v45 = *(v0 + 1200);
      v46 = *(v0 + 16);
      v42 = v44;
      sub_272218A0C(v42, v46);
      if (!v45)
      {
        v48 = *(v41 + v43);
        *(v41 + v43) = v47;

        if (*(v0 + 138))
        {
          v49 = *(**(*(v0 + 1088) + *(v0 + 1192)) + 160);

          v51 = v49(v50);

          if (v51)
          {
            v52 = *(v0 + 1088);
            v53 = swift_task_alloc();
            v53[2] = v52;
            v53[3] = 0xD000000000000012;
            v53[4] = 0x8000000272388AC0;
            sub_272377EEC();

            goto LABEL_31;
          }
        }
      }

      goto LABEL_27;
    }
  }

LABEL_31:

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_272213C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_27237728C();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v8 = sub_272377BFC();
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272213D98, 0, 0);
}

uint64_t sub_272213D98(uint64_t a1)
{
  v3 = *(v1 + 24);
  if (is_mul_ok(v3, 0xF4240uLL))
  {
    v4 = 1000000 * v3;
    v5 = swift_task_alloc();
    *(v1 + 104) = v5;
    *v5 = v1;
    v5[1] = sub_272213E4C;
    a1 = v4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200480](a1);
}

uint64_t sub_272213E4C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_272214218;
  }

  else
  {
    v2 = sub_272213F60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_272213F60()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = mach_absolute_time();
  sub_272337680(v2, v3);
  if (v1)
  {
    v0[2] = v1;
    v4 = v1;
    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    if (swift_dynamicCast())
    {
      v6 = v0 + 8;
      v5 = v0[8];
      v7 = v0[6];
      v8 = v0[7];
      (*(v0[11] + 8))(v0[12], v0[10]);
      v9 = sub_2722C389C();
      (*(v8 + 16))(v5, v9, v7);
      v10 = sub_27237725C();
      v11 = sub_272377E7C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_2721E4000, v10, v11, "Cancelled sleep task after getting final result", v12, 2u);
LABEL_7:
        MEMORY[0x2743C69C0](v12, -1, -1);

LABEL_9:
        (*(v0[7] + 8))(*v6, v0[6]);
        goto LABEL_10;
      }
    }

    else
    {
      v6 = v0 + 9;
      v13 = v0[9];
      v14 = v0[6];
      v15 = v0[7];
      v16 = sub_2722C389C();
      (*(v15 + 16))(v13, v16, v14);
      v17 = v1;
      v10 = sub_27237725C();
      v18 = sub_272377E8C();

      if (os_log_type_enabled(v10, v18))
      {
        v12 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v12 = 138412290;
        v20 = v1;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v21;
        *v19 = v21;
        _os_log_impl(&dword_2721E4000, v10, v18, "Error sleeping wating for final result: %@", v12, 0xCu);
        sub_2721F40F0(v19, &qword_280881A40, &unk_27237D620);
        MEMORY[0x2743C69C0](v19, -1, -1);
        goto LABEL_7;
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  v22 = v0[1];

  return v22();
}

uint64_t sub_272214218()
{
  v1 = v0[14];
  v0[2] = v1;
  v2 = v1;
  sub_2721F065C(&qword_280881A38, &unk_27237CA20);
  if (swift_dynamicCast())
  {
    v4 = v0 + 8;
    v3 = v0[8];
    v5 = v0[6];
    v6 = v0[7];
    (*(v0[11] + 8))(v0[12], v0[10]);
    v7 = sub_2722C389C();
    (*(v6 + 16))(v3, v7, v5);
    v8 = sub_27237725C();
    v9 = sub_272377E7C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2721E4000, v8, v9, "Cancelled sleep task after getting final result", v10, 2u);
LABEL_6:
      MEMORY[0x2743C69C0](v10, -1, -1);

      goto LABEL_8;
    }
  }

  else
  {
    v4 = v0 + 9;
    v11 = v0[9];
    v12 = v0[6];
    v13 = v0[7];
    v14 = sub_2722C389C();
    (*(v13 + 16))(v11, v14, v12);
    v15 = v1;
    v8 = sub_27237725C();
    v16 = sub_272377E8C();

    if (os_log_type_enabled(v8, v16))
    {
      v10 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v10 = 138412290;
      v18 = v1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_2721E4000, v8, v16, "Error sleeping wating for final result: %@", v10, 0xCu);
      sub_2721F40F0(v17, &qword_280881A40, &unk_27237D620);
      MEMORY[0x2743C69C0](v17, -1, -1);
      goto LABEL_6;
    }
  }

LABEL_8:
  (*(v0[7] + 8))(*v4, v0[6]);

  v20 = v0[1];

  return v20();
}

uint64_t sub_2722144B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 760) = a6;
  *(v6 + 664) = a5;
  *(v6 + 656) = a4;
  v7 = sub_2721F065C(&qword_280881A80, &unk_27237D610);
  *(v6 + 672) = v7;
  *(v6 + 680) = *(v7 - 8);
  *(v6 + 688) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272214588, 0, 0);
}

uint64_t sub_272214588()
{
  *(v0 + 696) = (*((*MEMORY[0x277D85000] & **(v0 + 656)) + 0x228))(16000);
  sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  sub_272377C8C();
  *(v0 + 704) = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_vadOutputActor;
  v1 = swift_task_alloc();
  *(v0 + 712) = v1;
  *v1 = v0;
  v1[1] = sub_2722146F8;
  v2 = *(v0 + 672);

  return MEMORY[0x2822003E8](v0 + 400, 0, 0, v2);
}

uint64_t sub_2722146F8()
{

  return MEMORY[0x2822009F8](sub_2722147F4, 0, 0);
}

uint64_t sub_2722147F4()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 480);
  *(v0 + 336) = v1;
  *(v0 + 352) = v2;
  v3 = *(v0 + 496);
  v4 = *(v0 + 512);
  *(v0 + 368) = v3;
  *(v0 + 384) = v4;
  v5 = *(v0 + 400);
  v6 = *(v0 + 416);
  *(v0 + 272) = v5;
  *(v0 + 288) = v6;
  v7 = *(v0 + 432);
  v8 = *(v0 + 448);
  *(v0 + 304) = v7;
  *(v0 + 320) = v8;
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 144) = v5;
  *(v0 + 160) = v6;
  *(v0 + 240) = v3;
  *(v0 + 256) = v4;
  *(v0 + 208) = v1;
  *(v0 + 224) = v2;
  if (sub_272219874((v0 + 144)) == 1)
  {
    v9 = *(v0 + 696);
    (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 704);
    v13 = *(v0 + 696);
    v14 = *(v0 + 760);
    v15 = *(v0 + 656);
    v16 = *(v0 + 224);
    *(v0 + 80) = *(v0 + 208);
    *(v0 + 96) = v16;
    v17 = *(v0 + 256);
    *(v0 + 112) = *(v0 + 240);
    *(v0 + 128) = v17;
    v18 = *(v0 + 160);
    *(v0 + 16) = *(v0 + 144);
    *(v0 + 32) = v18;
    v19 = *(v0 + 192);
    *(v0 + 48) = *(v0 + 176);
    *(v0 + 64) = v19;
    v20 = *(v15 + v12);
    *(v0 + 720) = v20;
    v21 = swift_allocObject();
    *(v0 + 728) = v21;
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v23 = *(v0 + 96);
    *(v22 + 88) = *(v0 + 80);
    *(v22 + 104) = v23;
    v24 = *(v0 + 128);
    *(v22 + 120) = *(v0 + 112);
    *(v22 + 136) = v24;
    v25 = *(v0 + 32);
    *(v22 + 24) = *(v0 + 16);
    *(v22 + 40) = v25;
    v26 = *(v0 + 64);
    *(v22 + 56) = *(v0 + 48);
    *(v0 + 736) = v22;
    *(v22 + 16) = v21;
    *(v22 + 72) = v26;
    *(v22 + 152) = v13;
    *(v22 + 160) = v14;
    v27 = *(*v20 + 88);

    sub_2721F07F4(v0 + 272, v0 + 528, &qword_280881A88, &qword_27237CA70);
    v28 = v13;
    v30 = (v27 + *v27);
    v29 = swift_task_alloc();
    *(v0 + 744) = v29;
    *v29 = v0;
    v29[1] = sub_272214AC0;

    return v30(&unk_27237CA68, v22);
  }
}

uint64_t sub_272214AC0()
{
  *(*v1 + 752) = v0;

  if (v0)
  {
    v2 = sub_272214CDC;
  }

  else
  {

    v2 = sub_272214C1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_272214C1C()
{
  sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
  v1 = swift_task_alloc();
  *(v0 + 712) = v1;
  *v1 = v0;
  v1[1] = sub_2722146F8;
  v2 = *(v0 + 672);

  return MEMORY[0x2822003E8](v0 + 400, 0, 0, v2);
}

uint64_t sub_272214CDC()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);

  sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_272214D98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 216) = a4;
  *(v4 + 176) = a2;
  *(v4 + 184) = a3;
  *(v4 + 168) = a1;
  return MEMORY[0x2822009F8](sub_272214DC0, 0, 0);
}

uint64_t sub_272214DC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 176);
    v3 = v2[3];
    v5 = *v2;
    v4 = v2[1];
    *(v0 + 48) = v2[2];
    *(v0 + 64) = v3;
    *(v0 + 16) = v5;
    *(v0 + 32) = v4;
    v6 = v2[7];
    v8 = v2[4];
    v7 = v2[5];
    *(v0 + 112) = v2[6];
    *(v0 + 128) = v6;
    *(v0 + 80) = v8;
    *(v0 + 96) = v7;
    v9 = swift_task_alloc();
    *(v0 + 200) = v9;
    *v9 = v0;
    v9[1] = sub_272214F2C;
    v10 = *(v0 + 216);
    v11 = *(v0 + 184);

    return sub_2722120B0((v0 + 16), v11, v10);
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v13 = 0xD000000000000023;
    v13[1] = 0x8000000272388E00;
    swift_willThrow();
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_272214F2C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_2722150A4;
  }

  else
  {
    v2 = sub_272215040;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_272215040()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2722150A4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_272215108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2721F07F4(a3, v22 - v9, &qword_2808819D8, &qword_27237CB50);
  v11 = sub_272377C3C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2721F40F0(v10, &qword_2808819D8, &qword_27237CB50);
  }

  else
  {
    sub_272377C2C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_272377BDC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2723778BC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_272215374(uint64_t a1, uint64_t a2)
{
  v23 = *((*MEMORY[0x277D85000] & *v2) + 0x480);
  result = v23();
  v4 = result;
  v24 = 0;
  v5 = 0;
  v6 = 0;
  v7 = result + 64;
  v8 = 1 << *(result + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(result + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_10:
    v13 = (*(v4 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v10)))));
    v15 = *v13;
    v14 = v13[1];
    v10 &= v10 - 1;
    sub_272203AC4();

    v16 = sub_27237813C();
    if ((v16 & 1) == 0)
    {
      goto LABEL_4;
    }

    if (v5)
    {
      v17 = sub_27237791C();
      if (sub_27237791C() < v17)
      {

        goto LABEL_14;
      }

LABEL_4:
    }

    else
    {
LABEL_14:
      v18 = (v23)(v16);
      if (*(v18 + 16))
      {
        v19 = sub_27220038C(v15, v14);
        v21 = v20;

        if ((v21 & 1) == 0)
        {
          goto LABEL_18;
        }

        v22 = (*(v18 + 56) + 16 * v19);
        v5 = v22[1];
        v24 = *v22;
      }

      else
      {

LABEL_18:

        v24 = 0;
        v5 = 0;
      }
    }
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return v24;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2722155A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_27237799C();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_27237799C();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_27237865C();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_27237799C();
      v7 = v9;
    }

    while (v9);
  }

  sub_27237799C();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

id sub_272215720(id result, const char **a2, float a3, float a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorDelegate);
  if (v5)
  {
    v7 = result;
    result = [v5 respondsToSelector_];
    if (result)
    {
      v12 = *a2;
      *&v10 = a3;
      *&v11 = a4;

      return [v5 v12];
    }
  }

  return result;
}

char *sub_2722157C8(char *result, float a2, float a3, uint64_t a4, uint64_t a5, const char **a6)
{
  v6 = *&result[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorDelegate];
  if (v6)
  {
    result = [*&result[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorDelegate] respondsToSelector_];
    if (result)
    {
      v13 = *a6;
      *&v11 = a2;
      *&v12 = a3;

      return [v6 v13];
    }
  }

  return result;
}

Swift::Void __swiftcall VATinyASRSpotter.endOfAudio(byteCountAfterEndOfSpeech:)(Swift::UInt32 byteCountAfterEndOfSpeech)
{
  v2 = *(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorDelegate);
  if (v2)
  {
    v3 = *&byteCountAfterEndOfSpeech;
    if ([v2 respondsToSelector_])
    {

      [v2 endOfAudioWithByteCountAfterEndOfSpeech_];
    }
  }
}

uint64_t sub_272215964(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_272215A5C;

  return v6(a1);
}

uint64_t sub_272215A5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_272215B54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2721F065C(&qword_280881A90, &qword_27237CA78);
  v37 = v4;
  result = sub_2723783DC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_272215E14()
{
  v1 = v0;
  sub_2721F065C(&qword_280881A90, &qword_27237CA78);
  v2 = *v0;
  v3 = sub_2723783CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_272215F8C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_272215FAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_272215FAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881A78, &unk_27237CA50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t sub_2722160A8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_272216154(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_272216188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_280881A90, &qword_27237CA78);
    v3 = sub_2723783EC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_27220038C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_27221629C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for VATinyASRSpotter(uint64_t a1)
{
  result = qword_280885AE0;
  if (!qword_280885AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_272216374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VARuntimeParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2722163D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_272216418(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_272219D80;

  return sub_27220AF08(a1);
}

uint64_t sub_2722164B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VARuntimeParameters(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_27221651C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_280881A68, &unk_272382740);
    v3 = sub_2723783EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2721F07F4(v4, &v13, &qword_280881A60, &unk_27237CA40);
      v5 = v13;
      v6 = v14;
      result = sub_27220038C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_27221981C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_27221664C(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = *(a1 + 16);
  v3 = 0;
  if (v2)
  {
    for (i = a1 + 40; ; i += 16)
    {
      v9[0] = sub_2723778AC();
      v9[1] = v5;
      MEMORY[0x28223BE20](v9[0]);
      v8[2] = v9;

      v6 = sub_2722160A8(sub_272219D88, v8, v10);

      if (v6)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_272216760(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  result = sub_27221664C(*a1, a2);
  v9 = v3;
  if (v3)
  {
    return v2;
  }

  v10 = v6;
  if (v8)
  {
    return *(v6 + 16);
  }

  v2 = result;
  v11 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v13 = (v6 + 16);
    v12 = *(v6 + 16);
    if (v11 == v12)
    {
      return v2;
    }

    v28 = a1;
    v29 = a2;
    v14 = 16 * result;
    v15 = v10;
    while (v11 < v12)
    {
      v32 = v15;
      v16 = &v15[v14];
      v31[0] = sub_2723778AC();
      v31[1] = v17;
      MEMORY[0x28223BE20](v31[0]);
      v27[2] = v31;

      v18 = v9;
      v19 = sub_2722160A8(sub_272219A04, v27, v29);
      v30 = v18;

      if (v19)
      {
        v9 = v30;
        v15 = v32;
      }

      else
      {
        if (v11 == v2)
        {
          v9 = v30;
          v15 = v32;
        }

        else
        {
          if ((v2 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v2 >= *v13)
          {
            goto LABEL_24;
          }

          if (v11 >= *v13)
          {
            goto LABEL_25;
          }

          v20 = &v32[16 * v2 + 32];
          v21 = *v20;
          v22 = *(v20 + 1);
          v24 = *(v16 + 6);
          v23 = *(v16 + 7);
          v15 = v32;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_272208CDC(v15);
          }

          v25 = &v15[16 * v2];
          *(v25 + 4) = v24;
          *(v25 + 5) = v23;

          if (v11 >= *(v15 + 2))
          {
            goto LABEL_26;
          }

          v26 = &v15[v14];
          *(v26 + 6) = v21;
          *(v26 + 7) = v22;

          *v28 = v15;
          v9 = v30;
        }

        ++v2;
      }

      ++v11;
      v13 = (v15 + 16);
      v12 = *(v15 + 2);
      v14 += 16;
      if (v11 == v12)
      {
        return v2;
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
  }

  __break(1u);
  return result;
}

unint64_t sub_272216998(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_272216A58(uint64_t a1, uint64_t a2)
{
  v10[1] = a2;
  sub_272203AC4();
  v10[0] = sub_2723780BC();
  result = sub_272216760(v10, &unk_28817D2A0);
  v3 = v10[0];
  v4 = *(v10[0] + 16);
  if (result > v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  if (result < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  if (__OFADD__(v4, result - v4))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v3 + 24) >> 1)
  {
    if (v4 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    v10[0] = sub_2721FFBF8(isUniquelyReferenced_nonNull_native, v8, 1, v3);
  }

  sub_272216998(v5, v4, 0);
  swift_arrayDestroy();
  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80, MEMORY[0x277D83958]);
  v9 = sub_2723777CC();

  return v9;
}

uint64_t sub_272216BD8(uint64_t a1)
{
  v2 = type metadata accessor for VARuntimeParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_272216C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_2808819B8, &qword_27237C508);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_272216CA4()
{
  v1 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64) + v4;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_272216D80()
{
  v2 = *(sub_2721F065C(&qword_280881900, &qword_27237C4F0) - 8);
  v3 = *(v0 + 32);
  v4 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));
  v5 = *(v4 + *(v2 + 64));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_272219D80;

  return sub_2722144B4(v6, v7, v8, v3, v4, v5);
}

uint64_t sub_272216E8C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_272216ECC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_272211DBC;

  return sub_272211FD4(v4, v5, v6, v2, v3);
}

_BYTE *sub_272216F64(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = v5;
  v7 = v4;
  v90 = a1;
  v91 = a2;
  v10 = sub_27237728C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v81[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for VARuntimeParameters(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v81[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v81[-v19];
  v21 = (*((*MEMORY[0x277D85000] & *v4) + 0x120))(v18);
  if (!v21)
  {
    sub_2722032B4();
    swift_allocError();
    *v24 = 0xD000000000000016;
    v24[1] = 0x8000000272388EA0;
    swift_willThrow();
    return v20;
  }

  (*(*v21 + 312))(v21);

  v22 = sub_2722164B8(v17, v20);
  v23 = *(v4 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_usedPartialAsFinal);
  v89 = v20;
  if (v23 == 1)
  {
    v20 = 0;
    *(v4 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_usedPartialAsFinal) = 0;
    goto LABEL_42;
  }

  v87 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_usedPartialAsFinal;
  v85 = v13;
  v88 = v11;
  v86 = v10;
  v25 = sub_2723778AC();
  v27 = sub_272216A58(v25, v26);
  v29 = v28;

  v30 = sub_272215374(v27, v29);
  v84 = v5;
  if (v31)
  {
    v83 = a3;
    *v92 = v30;
    *&v92[8] = v31;
    v97 = 95;
    v98 = 0xE100000000000000;
    v95 = 32;
    v96 = 0xE100000000000000;
    sub_272203AC4();
    v33 = sub_2723780FC();
    v34 = v32;
    if (v33 == v27 && v32 == v29)
    {

      v35 = 1;
    }

    else
    {
      v36 = sub_27237865C();

      if ((v36 & 1) == 0)
      {
        if (sub_2722155A0(v33, v34, v90, v91))
        {
          v35 = 0;
          v82 = 1;
        }

        else
        {
          v35 = sub_272377A0C();
          v82 = 0;
        }

        goto LABEL_16;
      }

      v35 = 1;
    }

    v82 = 1;
LABEL_16:

    v37 = sub_2723778AC();
    v39 = v38;

    *v92 = v37;
    *&v92[8] = v39;
    v97 = 32;
    v98 = 0xE100000000000000;
    v95 = 95;
    v96 = 0xE100000000000000;
    v40 = sub_2723780FC();
    v42 = v41;

    v43 = sub_272241A18();
    v44 = sub_272241A18();
    v45 = sub_27222CD4C();
    sub_27232409C(v40, v42, 0, 0, v82, v35 & 1, v45 & 1, 0, v92, a4, v43, v44, 0);
    type metadata accessor for VAKeywordResult();
    sub_2721F065C(&qword_2808818B8, &qword_27237CAD0);
    v46 = swift_allocObject();
    v47 = *&v92[32];
    v48 = v93;
    v49 = *v92;
    v46[3] = *&v92[16];
    v46[4] = v47;
    v50 = v94;
    v46[5] = v48;
    v46[6] = v50;
    v46[1] = xmmword_27237AF80;
    v46[2] = v49;
    v20 = VAKeywordResult.__allocating_init(detections:)(v46);
    v6 = v84;
    a3 = v83;
    goto LABEL_17;
  }

  v20 = 0;
LABEL_17:
  v51 = sub_27234F188();
  v52 = 0;
  v11 = v88;
  if ((v51 & 1) == 0 || !a3)
  {
    goto LABEL_35;
  }

  v53 = *(a3 + 16);
  if (v53)
  {
    v54 = sub_272377B5C();
    *(v54 + 16) = v53;
    bzero((v54 + 32), 2 * v53);

    *v92 = MEMORY[0x277D84F90];
    result = sub_272215F8C(0, v53, 0);
    v56 = *v92;
    v57 = (a3 + 32);
    while (1)
    {
      v58 = *v57;
      if ((*v57 & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v58 <= -32769.0)
      {
        goto LABEL_52;
      }

      if (v58 >= 32768.0)
      {
        goto LABEL_53;
      }

      *v92 = v56;
      v60 = v56[2];
      v59 = v56[3];
      if (v60 >= v59 >> 1)
      {
        result = sub_272215F8C((v59 > 1), v60 + 1, 1);
        v56 = *v92;
      }

      v56[2] = v60 + 1;
      *(v56 + v60 + 16) = v58;
      ++v57;
      if (!--v53)
      {
        v6 = v84;
        v11 = v88;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v56 = MEMORY[0x277D84F90];

LABEL_29:
  *v92 = 0x40CF400000000000;
  *&v92[8] = xmmword_27237C4D0;
  *&v92[24] = xmmword_27237C4E0;
  result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithStreamDescription_];
  if (!result)
  {
    goto LABEL_56;
  }

  v61 = v56[2];
  if (HIDWORD(v61))
  {
    goto LABEL_54;
  }

  v62 = result;
  result = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:result frameCapacity:v61];
  if (result)
  {
    v52 = result;
    v63 = [result int16ChannelData];
    if (v63)
    {
      v63 = *v63;
    }

    memcpy(v63, v56 + 4, 2 * v61);

    [v52 setFrameLength_];

LABEL_35:
    type metadata accessor for VAASRResult();
    v64 = *(v7 + v87);
    v65 = v52;
    v66 = v91;

    v67 = sub_2721F7EE4();
    v68 = sub_2722E2418(v90, v66, 1, v67 & 1, v64, v64, v52);
    v69 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult;
    v70 = *(v7 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult);
    *(v7 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult) = v68;

    v71 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_sleepTask;
    if (*(v7 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_sleepTask))
    {

      sub_272377CBC();
    }

    *(v7 + v71) = 0;

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v72 = *(v7 + v69);
      v10 = v86;
      if (!v72)
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v73 = result;
      v74 = v72;
      [v73 speechResultsWithResult_];
      swift_unknownObjectRelease();
    }

    else
    {

      v10 = v86;
    }

    v13 = v85;
LABEL_42:
    if ((*((*MEMORY[0x277D85000] & *v7) + 0x498))(v22))
    {
      v75 = sub_2722C389C();
      (*(v11 + 16))(v13, v75, v10);
      v76 = sub_27237725C();
      v77 = sub_272377E7C();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = v13;
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_2721E4000, v76, v77, "block inference pending till final, ublocked now", v79, 2u);
        v80 = v79;
        v13 = v78;
        MEMORY[0x2743C69C0](v80, -1, -1);
      }

      (*(v11 + 8))(v13, v10);
      (*((*MEMORY[0x277D85000] & *v7) + 0x4A0))(0);
      sub_27220FC48();
      if (v6)
      {
        sub_272216BD8(v89);
      }

      else
      {

        sub_272216BD8(v89);
      }
    }

    else
    {
      sub_272216BD8(v89);
      if (*(v7 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) != 1)
      {
        *(v7 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) = 1;
      }
    }

    return v20;
  }

LABEL_57:
  __break(1u);
  return result;
}

void *sub_27221793C(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v5 = v4;
  v10 = type metadata accessor for VARuntimeParameters(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v59 - v15;
  v17 = (*((*MEMORY[0x277D85000] & *v4) + 0x120))(v14);
  if (!v17)
  {
    sub_2722032B4();
    swift_allocError();
    *v39 = 0xD000000000000016;
    v39[1] = 0x8000000272388EA0;
    return swift_willThrow();
  }

  (*(*v17 + 312))(v17);

  sub_2722164B8(v13, v16);
  v18 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_usedPartialAsFinal;
  if (*(v4 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_usedPartialAsFinal) == 1)
  {
    goto LABEL_15;
  }

  if (*(v4 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) != 3)
  {
    *(v4 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) = 3;
  }

  type metadata accessor for VAASRResult();

  v19 = sub_2721F7EE4();
  v20 = sub_2722E2418(a2, a3, 0, v19 & 1, 0, 0, 0);
  v21 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult;
  v22 = *(v4 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult);
  *(v4 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult) = v20;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = *(v4 + v21);
    if (!v24)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v25 = result;
    v26 = v24;
    [v25 speechResultsWithResult_];

    swift_unknownObjectRelease();
  }

  if (v16[77] != 1)
  {
LABEL_15:
    sub_272216BD8(v16);
    return 0;
  }

  v61 = v18;
  v27 = sub_2723778AC();
  v29 = sub_272216A58(v27, v28);
  v31 = v30;

  v32 = sub_272215374(v29, v31);
  if (!v33)
  {

    goto LABEL_15;
  }

  v60 = a1;
  v59[0] = v32;
  v59[1] = v33;
  *&v62[0] = v32;
  *(&v62[0] + 1) = v33;
  v65 = 95;
  v66 = 0xE100000000000000;
  v63 = 32;
  v64 = 0xE100000000000000;
  v59[2] = sub_272203AC4();
  v35 = sub_2723780FC();
  v36 = v34;
  if (v35 == v29 && v34 == v31)
  {

    v37 = 1;
    v38 = 1;
  }

  else
  {
    v40 = sub_27237865C();

    if (v40)
    {
      v37 = 1;
      v38 = 1;
    }

    else if (sub_2722155A0(v35, v36, a2, a3))
    {
      v37 = 0;
      v38 = 1;
    }

    else
    {
      v37 = sub_272377A0C();
      v38 = 0;
    }
  }

  v41 = sub_2723778AC();
  v43 = v42;

  *&v62[0] = v41;
  *(&v62[0] + 1) = v43;
  v65 = 32;
  v66 = 0xE100000000000000;
  v63 = 95;
  v64 = 0xE100000000000000;
  v44 = sub_2723780FC();
  v46 = v45;

  v47 = v60;
  if (v60 < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v48 = sub_272241A18();
  v49 = sub_272241A18();
  v50 = sub_27222CD4C();
  sub_27232409C(v44, v46, 0, v47, v38, v37 & 1, v50 & 1, 0, v62, a4, v48, v49, 0);
  type metadata accessor for VAKeywordResult();
  sub_2721F065C(&qword_2808818B8, &qword_27237CAD0);
  v51 = swift_allocObject();
  v52 = v62[2];
  v53 = v62[3];
  v54 = v62[0];
  v51[3] = v62[1];
  v51[4] = v52;
  v55 = v62[4];
  v51[5] = v53;
  v51[6] = v55;
  v51[1] = xmmword_27237AF80;
  v51[2] = v54;
  v56 = VAKeywordResult.__allocating_init(detections:)(v51);
  *(v5 + v61) = 1;
  v57 = *(**(v5 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotFinalResult) + 168);

  v57(1);

  v58 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_sleepTask;
  if (*(v5 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_sleepTask))
  {

    sub_272377CBC();
  }

  sub_272216BD8(v16);
  *(v5 + v58) = 0;

  return v56;
}

uint64_t sub_272217F10(uint64_t a1, uint64_t a2, char a3, uint64_t a4, float a5)
{
  *(v6 + 32) = a4;
  *(v6 + 40) = v5;
  *(v6 + 92) = a3;
  *(v6 + 88) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for VARuntimeParameters(0);
  *(v6 + 48) = swift_task_alloc();
  v7 = sub_27237728C();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272218014, 0, 0);
}

uint64_t sub_272218014(uint64_t a1)
{
  v41 = v1;
  v2 = *(v1 + 24);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *(v1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = *(v1 + 64);
    v5 = *(v1 + 92);
    v6 = sub_2722C389C();
    v7 = *(v4 + 16);
    v8 = *(v1 + 56);
    if (v5 == 1)
    {
      v7(*(v1 + 80), v6, v8);

      v9 = sub_27237725C();
      v10 = sub_272377E7C();

      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v1 + 80);
      v13 = *(v1 + 56);
      v14 = *(v1 + 64);
      if (v11)
      {
        v16 = *(v1 + 16);
        v15 = *(v1 + 24);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v40[0] = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_2721FFD04(v16, v15, v40);
        _os_log_impl(&dword_2721E4000, v9, v10, "Got tasr final: %s", v17, 0xCu);
        sub_2722039C8(v18);
        MEMORY[0x2743C69C0](v18, -1, -1);
        MEMORY[0x2743C69C0](v17, -1, -1);
      }

      v19 = (*(v14 + 8))(v12, v13);
      v20 = (*((*MEMORY[0x277D85000] & **(v1 + 40)) + 0x120))(v19);
      if (v20)
      {
        v21 = v20;
        v22 = *(v1 + 48);
        (*(*v20 + 312))(v20);
        v23 = *(v22 + 76);
        v24 = sub_272216BD8(v22);
        if (v23 == 1)
        {
          v25 = (*(*v21 + 392))(v24);

          goto LABEL_17;
        }
      }

      v25 = 0;
LABEL_17:
      v36 = sub_272216F64(*(v1 + 16), *(v1 + 24), v25, *(v1 + 88));

      v37 = *(**(*(v1 + 40) + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotFinalResult) + 168);

      v37(1);

      if (!v36)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v7(*(v1 + 72), v6, v8);

    v26 = sub_27237725C();
    v27 = sub_272377E7C();

    v28 = os_log_type_enabled(v26, v27);
    v30 = *(v1 + 64);
    v29 = *(v1 + 72);
    v31 = *(v1 + 56);
    if (v28)
    {
      v33 = *(v1 + 16);
      v32 = *(v1 + 24);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_2721FFD04(v33, v32, v40);
      _os_log_impl(&dword_2721E4000, v26, v27, "Got tasr partial: %s", v34, 0xCu);
      sub_2722039C8(v35);
      MEMORY[0x2743C69C0](v35, -1, -1);
      MEMORY[0x2743C69C0](v34, -1, -1);
    }

    (*(v30 + 8))(v29, v31);
    v36 = sub_27221793C(*(v1 + 32), *(v1 + 16), *(v1 + 24), *(v1 + 88));

    if (v36)
    {
LABEL_18:
      (*((*MEMORY[0x277D85000] & **(v1 + 40)) + 0x550))(v36, 0);
    }
  }

LABEL_19:

  v38 = *(v1 + 8);

  return v38();
}

id sub_2722184E4()
{
  v43[36] = *MEMORY[0x277D85DE8];
  v0 = sub_272376C7C();
  v38 = *(v0 - 8);
  v39 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v6 = sub_272376D5C();
  v41 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27237AFA0;
  *(inited + 32) = sub_27237782C();
  *(inited + 40) = v12;
  *(inited + 72) = MEMORY[0x277D84CC0];
  *(inited + 48) = 1819304813;
  *(inited + 80) = sub_27237782C();
  *(inited + 88) = v13;
  v14 = MEMORY[0x277D83B88];
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 96) = 16;
  v15 = sub_27237782C();
  v16 = MEMORY[0x277D839B0];
  *(inited + 128) = v15;
  *(inited + 136) = v17;
  *(inited + 168) = v16;
  *(inited + 144) = 0;
  *(inited + 176) = sub_27237782C();
  *(inited + 184) = v18;
  *(inited + 216) = MEMORY[0x277D839F8];
  *(inited + 192) = 0x40CF400000000000;
  *(inited + 224) = sub_27237782C();
  *(inited + 232) = v19;
  *(inited + 264) = v14;
  *(inited + 240) = 1;
  sub_27221651C(inited);
  swift_setDeallocating();
  sub_2721F065C(&qword_280881A60, &unk_27237CA40);
  swift_arrayDestroy();
  v20 = NSTemporaryDirectory();
  sub_27237782C();

  v21 = *(v41 + 56);
  v40 = v6;
  v21(v5, 1, 1, v6);
  (*(v38 + 104))(v2, *MEMORY[0x277CC91D8], v39);
  v22 = v10;
  v23 = v37;
  sub_272376D4C();
  v43[0] = 761553270;
  v43[1] = 0xE400000000000000;
  v42 = mach_absolute_time();
  v24 = sub_27237862C();
  MEMORY[0x2743C4AD0](v24);

  MEMORY[0x2743C4AD0](1986098990, 0xE400000000000000);
  sub_272376CEC();

  v25 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v26 = sub_272376CCC();
  v27 = sub_27237770C();

  v43[0] = 0;
  v28 = [v25 initForWriting:v26 settings:v27 commonFormat:3 interleaved:0 error:v43];

  if (v28)
  {
    v29 = *(v41 + 8);
    v30 = v43[0];
    v31 = v40;
    v29(v23, v40);
    v29(v22, v31);
  }

  else
  {
    v32 = v43[0];
    sub_272376C6C();

    swift_willThrow();
    v33 = v40;
    v34 = *(v41 + 8);
    v34(v23, v40);
    v34(v22, v33);
  }

  return v28;
}

void sub_272218A0C(void *a1, void *a2)
{
  v4 = 0xD000000000000021;
  sub_27221982C(0, &qword_280881A70, 0x277D82BB8);
  v5 = [a1 format];
  v6 = [a2 format];
  v7 = sub_272377FBC();

  if ((v7 & 1) == 0)
  {
    v28 = "v32@0:8f16f20Q24";
LABEL_13:
    v29 = v28 | 0x8000000000000000;
    sub_2722032B4();
    swift_allocError();
    *v30 = v4;
    v30[1] = v29;
    swift_willThrow();
    return;
  }

  v8 = [a1 frameCapacity];
  v9 = [a2 frameCapacity];
  v10 = v8 + v9;
  if (__CFADD__(v8, v9))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = [a1 format];
  v12 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v11 frameCapacity:v10];

  if (!v12)
  {
    v28 = "e the same format";
    v4 = 0xD000000000000024;
    goto LABEL_13;
  }

  [v12 setFrameLength_];
  v13 = *([a1 audioBufferList] + 2);
  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = *([v12 audioBufferList] + 2);
  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = [a1 frameLength];
  v16 = [a1 format];
  v17 = [v16 streamDescription];

  v18 = v17[6] * v15;
  if ((v18 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_15;
  }

  memcpy(v14, v13, v18);
  v19 = *([a2 audioBufferList] + 2);
  if (v19)
  {
    v20 = [a1 frameLength];
    v21 = [a1 format];
    v22 = [v21 streamDescription];

    v23 = v22[6] * v20;
    if ((v23 & 0xFFFFFFFF00000000) == 0)
    {
      v24 = [a2 frameLength];
      v25 = [a2 format];
      v26 = [v25 streamDescription];

      v27 = v26[6] * v24;
      if ((v27 & 0xFFFFFFFF00000000) == 0)
      {
        memcpy(&v14[v23 & 0xFFFFFFFE], v19, v27);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_272218D9C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_272218DE4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_272211DBC;

  return sub_272213C6C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_272218E8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_272218EC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_272219D80;

  return sub_272215964(a1, v4);
}

unint64_t sub_272218FD0()
{
  result = qword_2808819E8;
  if (!qword_2808819E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808819E8);
  }

  return result;
}

unint64_t sub_272219028()
{
  result = qword_2808819F8;
  if (!qword_2808819F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808819F8);
  }

  return result;
}

unint64_t sub_272219080()
{
  result = qword_280881A00;
  if (!qword_280881A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881A00);
  }

  return result;
}

unint64_t sub_2722190D8()
{
  result = qword_280881A08;
  if (!qword_280881A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881A08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VATinyASRModelInferenceMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VATinyASRModelInferenceMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_272219290(uint64_t a1)
{
  sub_272219478(319, &qword_280881A10, &qword_280881900, &qword_27237C4F0);
  if (v1 <= 0x3F)
  {
    sub_272219478(319, &qword_280881A18, &qword_280881908, &qword_27237C4F8);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_272219478(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2721F214C(a3, a4);
    v5 = sub_27237801C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_2722194CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2722194E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_272219528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TinyASRGatingMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TinyASRGatingMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2722196D8()
{
  result = qword_280881A20;
  if (!qword_280881A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881A20);
  }

  return result;
}

unint64_t sub_27221972C()
{
  result = qword_280881A28;
  if (!qword_280881A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881A28);
  }

  return result;
}

unint64_t sub_272219780()
{
  result = qword_280881A30;
  if (!qword_280881A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881A30);
  }

  return result;
}

uint64_t sub_2722197D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_27221981C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_27221982C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_272219874(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27221988C()
{
  MEMORY[0x2743C6A90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2722198C4()
{

  return MEMORY[0x2821FE8E8](v0, 161, 7);
}

uint64_t sub_27221990C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_272219D80;

  return sub_272214D98(v2, v0 + 24, v3, v4);
}

uint64_t sub_2722199BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_272219A30()
{
  result = qword_280881A98;
  if (!qword_280881A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881A98);
  }

  return result;
}

uint64_t sub_272219A84()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_272219ACC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_272219D80;

  return sub_272211378(v2, v3, v4);
}

uint64_t sub_272219B74()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_272219BB4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_272219D80;

  return sub_272210F78(v2, v3, v4);
}

uint64_t sub_272219C5C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_272219CAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_272219D80;

  return sub_272210BFC(v2, v3, v5, v4);
}

uint64_t VASpeechDetectorInput.init(buffer:hostTime:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t VASpeechDetectorInput.description.getter()
{
  v1 = *v0;
  sub_27237820C();
  [v1 frameLength];
  v2 = sub_27237862C();

  MEMORY[0x2743C4AD0](0xD000000000000012, 0x8000000272388F80);
  v3 = sub_27237862C();
  MEMORY[0x2743C4AD0](v3);

  return v2;
}

VoiceActions::VASpeechDetectorFeatureOutputType_optional __swiftcall VASpeechDetectorFeatureOutputType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

VoiceActions::VASpeechDetectorFeatureOutput __swiftcall VASpeechDetectorFeatureOutput.init(featureBuffer:type:)(VoiceActions::VASpeechDetectorFeatureOutput featureBuffer, VoiceActions::VASpeechDetectorFeatureOutputType type)
{
  v3 = *type;
  *v2 = featureBuffer.featureBuffer._rawValue;
  *(v2 + 8) = v3;
  featureBuffer.bufferType = type;
  return featureBuffer;
}

uint64_t VASpeechDetectorFeatureOutput.description.getter()
{
  v1 = *v0;
  v2 = sub_2721F065C(&qword_280881858, &unk_27237C260);
  v5 = MEMORY[0x2743C4C60](v1, v2);
  MEMORY[0x2743C4AD0](32, 0xE100000000000000);
  v3 = sub_27237789C();
  MEMORY[0x2743C4AD0](v3);

  return v5;
}

uint64_t sub_27221A028()
{
  v1 = *v0;
  v2 = sub_2721F065C(&qword_280881858, &unk_27237C260);
  v5 = MEMORY[0x2743C4C60](v1, v2);
  MEMORY[0x2743C4AD0](32, 0xE100000000000000);
  v3 = sub_27237789C();
  MEMORY[0x2743C4AD0](v3);

  return v5;
}

uint64_t VASpeechDetectorAudioOutput.startOfSpeechTime.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t VASpeechDetectorAudioOutput.startOfSpeechSampleOffsetInBuffer.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t VASpeechDetectorAudioOutput.startOfSpeechTimeInSecsInBuffer.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t VASpeechDetectorAudioOutput.endOfSpeechSampleOffsetInBuffer.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t VASpeechDetectorAudioOutput.endOfSpeechTimeInSecsInBuffer.setter(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t VASpeechDetectorAudioOutput.averageSilenceProbabilityOver30ms.setter(uint64_t result)
{
  *(v1 + 116) = result;
  *(v1 + 120) = BYTE4(result) & 1;
  return result;
}

uint64_t VASpeechDetectorAudioOutput.init(buffer:bufferStartTime:startOfSpeechInBuffer:endOfSpeechInBuffer:startOfSpeechTime:endOfSpeechTime:afterEndOfSpeech:lastAudioAfterEndOfSpeech:duringSpeech:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12)
{
  *(a9 + 56) = 0;
  *(a9 + 64) = 1;
  *(a9 + 72) = 0;
  *(a9 + 80) = 1;
  *(a9 + 88) = 0;
  *(a9 + 96) = 1;
  *(a9 + 104) = 0;
  *(a9 + 112) = 1;
  *(a9 + 116) = 0;
  *(a9 + 120) = 1;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6 & 1;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8 & 1;
  *(a9 + 121) = a10;
  *(a9 + 122) = a11;
  *(a9 + 18) = a12;
  *(a9 + 124) = 0;
  return result;
}

uint64_t VASpeechDetectorAudioOutput.shouldProcessAudio.getter()
{
  v1 = 1;
  if ((v0[16] & 1) == 0 && (v0[18] & 1) == 0)
  {
    v1 = v0[17] | v0[121];
  }

  return v1 & 1;
}

uint64_t VASpeechDetectorAudioOutput.description.getter()
{
  v1 = *v0;
  if (*(v0 + 16) == 1 && (*(v0 + 32) & 1) == 0 && (*(v0 + 64) & 1) == 0 && (*(v0 + 80) & 1) == 0)
  {
    v16 = 0;
    sub_27237820C();
    MEMORY[0x2743C4AD0](91, 0xE100000000000000);
    sub_272377D5C();
    MEMORY[0x2743C4AD0](8285, 0xE200000000000000);
    [v1 frameLength];
    v2 = sub_27237862C();
    MEMORY[0x2743C4AD0](v2);

    v3 = " frames during speech]";
    v4 = 0xD000000000000020;
LABEL_6:
    MEMORY[0x2743C4AD0](v4, v3 | 0x8000000000000000);
    v5 = sub_27237862C();
    MEMORY[0x2743C4AD0](v5);

    MEMORY[0x2743C4AD0](0xD000000000000010, 0x8000000272389010);
    v6 = sub_27237862C();
    MEMORY[0x2743C4AD0](v6);

    MEMORY[0x2743C4AD0](32, 0xE100000000000000);
    v7 = sub_272377D1C();
    MEMORY[0x2743C4AD0](v7);

    v8 = ", sample offset ";
    v9 = 0xD000000000000011;
    goto LABEL_9;
  }

  if (*(v0 + 18) == 1)
  {
    sub_27237820C();

    v16 = 91;
    [v1 frameLength];
    v10 = sub_27237862C();
    MEMORY[0x2743C4AD0](v10);

    v8 = " secs into buffer";
    v9 = 0xD000000000000016;
    goto LABEL_9;
  }

  if (!(*(v0 + 48) & 1 | ((*(v0 + 17) & 1) == 0) | (*(v0 + 96) | *(v0 + 112)) & 1))
  {
    v16 = 0;
    sub_27237820C();
    MEMORY[0x2743C4AD0](91, 0xE100000000000000);
    sub_272377D5C();
    MEMORY[0x2743C4AD0](8285, 0xE200000000000000);
    [v1 frameLength];
    v13 = sub_27237862C();
    MEMORY[0x2743C4AD0](v13);

    v3 = "ter end of speech]";
    v4 = 0xD00000000000001ELL;
    goto LABEL_6;
  }

  if (*(v0 + 122))
  {
    sub_27237820C();

    v16 = 91;
    v12 = sub_27237862C();
    MEMORY[0x2743C4AD0](v12);

    v8 = " frames after end of speech]";
    v9 = 0xD000000000000022;
  }

  else
  {
    if (!*(v0 + 121))
    {
      [*v0 frameLength];
      v16 = sub_27237862C();
      MEMORY[0x2743C4AD0](0x2073656D61726620, 0xEB00000000207461);
      v15 = sub_27237862C();
      MEMORY[0x2743C4AD0](v15);

      return v16;
    }

    sub_27237820C();

    v16 = 91;
    [v1 frameLength];
    v14 = sub_27237862C();
    MEMORY[0x2743C4AD0](v14);

    v8 = " frames, hostTime ";
    v9 = 0xD00000000000001CLL;
  }

LABEL_9:
  MEMORY[0x2743C4AD0](v9, v8 | 0x8000000000000000);
  return v16;
}

uint64_t VASpeechDetector.__allocating_init(modelFilename:featureCount:delegate:)(void *a1, unint64_t a2, char *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  VASpeechDetector.init(modelFilename:featureCount:delegate:)(a1, a2, a3, a4);
  return v8;
}

uint64_t VASpeechDetector.init(modelFilename:featureCount:delegate:)(void *a1, unint64_t a2, char *a3, uint64_t a4)
{
  v38 = a4;
  v6 = v4;
  v9 = *a3;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStream;
  v11 = sub_2721F065C(&qword_280881AA0, &qword_27237CAE8);
  v35 = v10;
  (*(*(v11 - 8) + 56))(v6 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStreamBuilder;
  v13 = sub_2721F065C(&qword_280881AA8, &unk_27237CAF0);
  v34 = v12;
  (*(*(v13 - 8) + 56))(v6 + v12, 1, 1, v13);
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_vadTask) = 0;
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionTask) = 0;
  v14 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_vadModel;
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_vadModel) = 0;
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_speechInProgress) = 0;
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_prepareToTurnOffSpeechInProgress) = 0;
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_floatBuffer) = MEMORY[0x277D84F90];
  v15 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStream;
  v16 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  v33 = v15;
  (*(*(v16 - 8) + 56))(v6 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStreamBuilder;
  v18 = sub_2721F065C(&qword_280881AB0, &unk_27237CB00);
  (*(*(v18 - 8) + 56))(v6 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputFeatureStream;
  v20 = sub_2721F065C(&qword_280881908, &qword_27237C4F8);
  (*(*(v20 - 8) + 56))(v6 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputFeatureStreamBuilder;
  v22 = sub_2721F065C(&qword_280881AB8, &qword_27237CB10);
  (*(*(v22 - 8) + 56))(v6 + v21, 1, 1, v22);
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_minimumSilenceProbability) = 1050253722;
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_numFramesForAveraging) = 3;
  type metadata accessor for VASilenceModel();
  LOBYTE(v36) = v9;
  v23 = sub_27228DC9C(a1, a2, &v36);
  if (!v5)
  {
    *(v6 + v14) = v23;

    *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_featureCount) = v9;
    swift_unknownObjectWeakAssign();
    if (*(v6 + v14))
    {
      type metadata accessor for StopProcessingActor();
      *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_stopProcessingActor) = sub_272230064();
      type metadata accessor for VAStrideConfiguration();
      v24 = static VAStrideConfiguration.forVAD()();
      *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_strideConfig) = v24;
      type metadata accessor for IngestionAudioBufferActor(0);
      v25 = sub_272230714(v24, 0, 0, 1);
      swift_unknownObjectRelease();
      *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionBufferActor) = v25;
      return v6;
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    sub_27237820C();

    v36 = 0xD00000000000001ELL;
    v37 = 0x80000002723890A0;
    v27 = sub_27235D480();
    v28 = *v27;
    v29 = *(v27 + 1);

    MEMORY[0x2743C4AD0](v28, v29);

    v30 = v36;
    v31 = v37;
    sub_27221AF24();
    swift_allocError();
    *v32 = v30;
    v32[1] = v31;
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  sub_272216300(v6 + 16);
  sub_2721F40F0(v6 + v35, &qword_280881AC0, &qword_27237CB18);
  sub_2721F40F0(v6 + v34, &qword_280881AC8, &unk_27237CB20);

  sub_2721F40F0(v6 + v33, &qword_2808819B8, &qword_27237C508);
  sub_2721F40F0(v6 + v17, &qword_280881AD0, &unk_27237CB30);
  sub_2721F40F0(v6 + v19, &qword_2808819C0, &unk_27237C510);
  sub_2721F40F0(v6 + v21, &qword_280881AD8, &qword_27237CB40);
  type metadata accessor for VASpeechDetector(0);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t type metadata accessor for VASpeechDetector(uint64_t a1)
{
  result = qword_280886000;
  if (!qword_280886000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_27221AF24()
{
  result = qword_280881AE0;
  if (!qword_280881AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881AE0);
  }

  return result;
}

uint64_t sub_27221AF78@<X0>(int a1@<W0>, uint64_t a2@<X8>, float a3@<S0>)
{
  LODWORD(v84) = a1;
  v73[0] = a2;
  v4 = sub_2721F065C(&qword_280881AD0, &unk_27237CB30);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v90 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v89 = v73 - v7;
  v8 = sub_2721F065C(&qword_2808819B8, &qword_27237C508);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v91 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v85 = v73 - v11;
  v12 = sub_2721F065C(&qword_280881AE8, &qword_27237CB48);
  v82 = *(v12 - 8);
  v83 = v12;
  MEMORY[0x28223BE20](v12);
  v81 = v73 - v13;
  v14 = sub_2721F065C(&qword_280881AB0, &unk_27237CB00);
  v87 = *(v14 - 8);
  v88 = v14;
  MEMORY[0x28223BE20](v14);
  v86 = v73 - v15;
  v16 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  v92 = *(v16 - 8);
  v93 = v16;
  MEMORY[0x28223BE20](v16);
  v80 = v73 - v17;
  v18 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v18 - 8);
  v79 = v73 - v19;
  v20 = sub_2721F065C(&qword_280881AC8, &unk_27237CB20);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v77 = v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v75 = v73 - v23;
  v24 = sub_2721F065C(&qword_280881AC0, &qword_27237CB18);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v73 - v25;
  v27 = sub_2721F065C(&qword_280881AF0, &qword_27237CB58);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = v73 - v29;
  v31 = sub_2721F065C(&qword_280881AA8, &unk_27237CAF0);
  v74 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = v73 - v32;
  v34 = sub_2721F065C(&qword_280881AA0, &qword_27237CAE8);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = v73 - v36;
  v38 = *(v28 + 104);
  v78 = *MEMORY[0x277D85778];
  v38(v30);
  sub_272377C4C();
  (*(v28 + 8))(v30, v27);
  v39 = v37;
  v40 = v33;
  v41 = v31;
  v42 = v76;
  (*(v35 + 32))(v26, v39, v34);
  (*(v35 + 56))(v26, 0, 1, v34);
  v43 = v74;
  v44 = v75;
  (*(v74 + 32))(v75, v40, v41);
  (*(v43 + 56))(v44, 0, 1, v41);
  v45 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStream;
  swift_beginAccess();
  sub_27221D3B4(v26, v42 + v45, &qword_280881AC0, &qword_27237CB18);
  swift_endAccess();
  v46 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStreamBuilder;
  swift_beginAccess();
  sub_27221D3B4(v44, v42 + v46, &qword_280881AC8, &unk_27237CB20);
  swift_endAccess();
  v47 = v42 + v46;
  v48 = v77;
  sub_2721F07F4(v47, v77, &qword_280881AC8, &unk_27237CB20);
  if ((*(v43 + 48))(v48, 1, v41))
  {
    sub_2721F40F0(v48, &qword_280881AC8, &unk_27237CB20);
  }

  else
  {
    (*(v43 + 16))(v40, v48, v41);
    sub_2721F40F0(v48, &qword_280881AC8, &unk_27237CB20);
    sub_272377C5C();
    (*(v43 + 8))(v40, v41);
  }

  *(v42 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_minimumSilenceProbability) = a3;
  v49 = sub_272377C3C();
  v50 = *(*(v49 - 8) + 56);
  v51 = v79;
  v50(v79, 1, 1, v49);
  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = 0;
  v52[4] = v42;

  *(v42 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionTask) = sub_27221CA6C(0, 0, v51, &unk_27237CB68, v52);

  v50(v51, 1, 1, v49);
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  *(v53 + 24) = 0;
  *(v53 + 32) = v42;
  *(v53 + 40) = v84 & 1;

  *(v42 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_vadTask) = sub_27221CA6C(0, 0, v51, &unk_27237CB78, v53);

  v55 = v81;
  v54 = v82;
  v56 = v83;
  (*(v82 + 104))(v81, v78, v83);
  v57 = v80;
  v58 = v86;
  sub_272377C4C();
  (*(v54 + 8))(v55, v56);
  v59 = v92;
  v60 = v93;
  v61 = v85;
  v83 = *(v92 + 32);
  v84 = v92 + 32;
  v83(v85, v57, v93);
  (*(v59 + 56))(v61, 0, 1, v60);
  v62 = v87;
  v63 = v88;
  v64 = v89;
  (*(v87 + 32))(v89, v58, v88);
  (*(v62 + 56))(v64, 0, 1, v63);
  v65 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStream;
  swift_beginAccess();
  sub_27221D3B4(v61, v42 + v65, &qword_2808819B8, &qword_27237C508);
  swift_endAccess();
  v66 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStreamBuilder;
  swift_beginAccess();
  sub_27221D3B4(v64, v42 + v66, &qword_280881AD0, &unk_27237CB30);
  swift_endAccess();
  v67 = v42 + v66;
  v68 = v90;
  sub_2721F07F4(v67, v90, &qword_280881AD0, &unk_27237CB30);
  if ((*(v62 + 48))(v68, 1, v63))
  {
    sub_2721F40F0(v68, &qword_280881AD0, &unk_27237CB30);
  }

  else
  {
    (*(v62 + 16))(v58, v68, v63);
    sub_2721F40F0(v68, &qword_280881AD0, &unk_27237CB30);
    sub_272377C5C();
    (*(v62 + 8))(v58, v63);
  }

  v69 = v91;
  sub_2721F07F4(v42 + v65, v91, &qword_2808819B8, &qword_27237C508);
  v70 = v93;
  if ((*(v92 + 48))(v69, 1, v93) != 1)
  {
    return (v83)(v73[0], v69, v70);
  }

  sub_2721F40F0(v69, &qword_2808819B8, &qword_27237C508);
  sub_27221AF24();
  swift_allocError();
  *v71 = 0xD00000000000002ELL;
  v71[1] = 0x80000002723890C0;
  return swift_willThrow();
}

uint64_t sub_27221BBB8(uint64_t a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v32 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = sub_2721F065C(&qword_280881B48, &qword_27237CF88);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  (*(v13 + 16))(&v32 - v14, a1, v12);
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == *MEMORY[0x277D85738])
  {
    v17 = sub_2722C389C();
    (*(v3 + 16))(v11, v17, v2);
    v18 = sub_27237725C();
    v19 = sub_272377E7C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2721E4000, v18, v19, "Input stream finished successfully.", v20, 2u);
      MEMORY[0x2743C69C0](v20, -1, -1);
    }

    return (*(v3 + 8))(v11, v2);
  }

  else
  {
    v22 = v16;
    v23 = *MEMORY[0x277D85740];
    v24 = sub_2722C389C();
    v25 = *(v3 + 16);
    if (v22 == v23)
    {
      v25(v9, v24, v2);
      v26 = sub_27237725C();
      v27 = sub_272377E7C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2721E4000, v26, v27, "Input stream was cancelled.", v28, 2u);
        MEMORY[0x2743C69C0](v28, -1, -1);
      }

      return (*(v3 + 8))(v9, v2);
    }

    else
    {
      v25(v6, v24, v2);
      v29 = sub_27237725C();
      v30 = sub_272377E7C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_2721E4000, v29, v30, "Unknown termination reason.", v31, 2u);
        MEMORY[0x2743C69C0](v31, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      return (*(v13 + 8))(v15, v12);
    }
  }
}

uint64_t sub_27221BF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_2721F065C(&qword_280881B58, &qword_27237CF98);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  sub_2721F065C(&qword_280881AC0, &qword_27237CB18);
  v4[14] = swift_task_alloc();
  v6 = sub_2721F065C(&qword_280881AA0, &qword_27237CAE8);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27221C108, 0, 0);
}

uint64_t sub_27221C108()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStream;
  swift_beginAccess();
  sub_2721F07F4(v4 + v5, v3, &qword_280881AC0, &qword_27237CB18);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2721F40F0(v0[14], &qword_280881AC0, &qword_27237CB18);
    sub_27221AF24();
    swift_allocError();
    *v6 = 0xD000000000000013;
    v6[1] = 0x8000000272389440;
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v0[14], v0[15]);
    sub_272377C8C();
    v9 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionBufferActor;
    v0[18] = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_floatBuffer;
    v0[19] = v9;
    v0[20] = 0;
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_27221C320;
    v11 = v0[11];

    return MEMORY[0x2822003E8](v0 + 8, 0, 0, v11);
  }
}

uint64_t sub_27221C320()
{

  return MEMORY[0x2822009F8](sub_27221C41C, 0, 0);
}

uint64_t sub_27221C41C()
{
  v1 = v0[8];
  v0[22] = v1;
  if (!v1)
  {
    v17 = v0[16];
    v16 = v0[17];
    v18 = v0[15];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v17 + 8))(v16, v18);

    v15 = v0[1];
    goto LABEL_5;
  }

  v2 = v0[18];
  v3 = v0[9];
  v4 = v0[10];
  swift_beginAccess();
  v5.super.super.isa = v1;
  isa = v5.super.super.isa;
  v5.super._impl = (v4 + v2);
  VAfp16AVAudioBufferToFP32Array(buffer:floatBuffer:)(v5, v7);
  if (v8)
  {
    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[15];
    v13 = v0[12];
    v12 = v0[13];
    v14 = v0[11];
    swift_endAccess();

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);

    v15 = v0[1];
LABEL_5:

    return v15();
  }

  v21 = v0[18];
  v20 = v0[19];
  v22 = v0[10];
  swift_endAccess();

  v23 = *(v22 + v20);
  v0[23] = v23;
  v24 = *(v22 + v21);
  v0[24] = v24;
  v25 = *(*v23 + 432);

  v27 = (v25 + *v25);
  v26 = swift_task_alloc();
  v0[25] = v26;
  *v26 = v0;
  v26[1] = sub_27221C6F8;

  return v27(v24, v3);
}

uint64_t sub_27221C6F8()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_27221C900;
  }

  else
  {
    v2 = sub_27221C848;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27221C848()
{
  *(v0 + 160) = *(v0 + 208);
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_27221C320;
  v2 = *(v0 + 88);

  return MEMORY[0x2822003E8](v0 + 64, 0, 0, v2);
}

uint64_t sub_27221C900()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_27221C9D8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_272219D80;

  return sub_27221BF9C(v3, v4, v5, v2);
}

uint64_t sub_27221CA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2721F07F4(a3, v22 - v9, &qword_2808819D8, &qword_27237CB50);
  v11 = sub_272377C3C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2721F40F0(v10, &qword_2808819D8, &qword_27237CB50);
  }

  else
  {
    sub_272377C2C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_272377BDC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2723778BC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_27221CD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  *(v5 + 144) = a5;
  *(v5 + 64) = a4;
  v7 = sub_2721F065C(&qword_280881AB0, &unk_27237CB00);
  *(v5 + 72) = v7;
  *(v5 + 80) = *(v7 - 8);
  *(v5 + 88) = swift_task_alloc();
  sub_2721F065C(&qword_280881AD0, &unk_27237CB30);
  *(v5 + 96) = swift_task_alloc();
  v8 = sub_2721F065C(&qword_280881AA8, &unk_27237CAF0);
  *(v5 + 104) = v8;
  *(v5 + 112) = *(v8 - 8);
  *(v5 + 120) = swift_task_alloc();
  sub_2721F065C(&qword_280881AC8, &unk_27237CB20);
  *(v5 + 128) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v5 + 136) = v9;
  *v9 = v5;
  v9[1] = sub_27221CEF8;

  return sub_27221F0E8(v6);
}

uint64_t sub_27221CEF8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_27221D058, 0, 0);
  }
}

uint64_t sub_27221D058()
{
  if (*(v0 + 144) == 1)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 104);
    v3 = *(v0 + 112);
    v4 = *(v0 + 64);
    v5 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStreamBuilder;
    swift_beginAccess();
    sub_2721F07F4(v4 + v5, v1, &qword_280881AC8, &unk_27237CB20);
    v6 = (*(v3 + 48))(v1, 1, v2);
    v7 = *(v0 + 128);
    if (v6)
    {
      sub_2721F40F0(*(v0 + 128), &qword_280881AC8, &unk_27237CB20);
    }

    else
    {
      v9 = *(v0 + 112);
      v8 = *(v0 + 120);
      v10 = *(v0 + 104);
      (*(v9 + 16))(v8, *(v0 + 128), v10);
      sub_2721F40F0(v7, &qword_280881AC8, &unk_27237CB20);
      sub_272377C7C();
      (*(v9 + 8))(v8, v10);
    }

    v11 = *(v0 + 96);
    v12 = *(v0 + 72);
    v13 = *(v0 + 80);
    v14 = *(v0 + 64);
    v15 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStreamBuilder;
    swift_beginAccess();
    sub_2721F07F4(v14 + v15, v11, &qword_280881AD0, &unk_27237CB30);
    v16 = (*(v13 + 48))(v11, 1, v12);
    v17 = *(v0 + 96);
    if (v16)
    {
      sub_2721F40F0(*(v0 + 96), &qword_280881AD0, &unk_27237CB30);
    }

    else
    {
      v19 = *(v0 + 80);
      v18 = *(v0 + 88);
      v20 = *(v0 + 72);
      (*(v19 + 16))(v18, *(v0 + 96), v20);
      sub_2721F40F0(v17, &qword_280881AD0, &unk_27237CB30);
      sub_272377C7C();
      (*(v19 + 8))(v18, v20);
    }
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_27221D2CC(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_27221D318()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_272219D80;

  return sub_27221CD18(v4, v5, v6, v2, v3);
}

uint64_t sub_27221D3B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2721F065C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_27221D41C(uint64_t a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v32 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = sub_2721F065C(&qword_280881B50, &qword_27237CF90);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  (*(v13 + 16))(&v32 - v14, a1, v12);
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == *MEMORY[0x277D85738])
  {
    v17 = sub_2722C389C();
    (*(v3 + 16))(v11, v17, v2);
    v18 = sub_27237725C();
    v19 = sub_272377E7C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2721E4000, v18, v19, "Speech Detector Output stream finished successfully.", v20, 2u);
      MEMORY[0x2743C69C0](v20, -1, -1);
    }

    return (*(v3 + 8))(v11, v2);
  }

  else
  {
    v22 = v16;
    v23 = *MEMORY[0x277D85740];
    v24 = sub_2722C389C();
    v25 = *(v3 + 16);
    if (v22 == v23)
    {
      v25(v9, v24, v2);
      v26 = sub_27237725C();
      v27 = sub_272377E7C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2721E4000, v26, v27, "Speech Detector Output stream was cancelled.", v28, 2u);
        MEMORY[0x2743C69C0](v28, -1, -1);
      }

      return (*(v3 + 8))(v9, v2);
    }

    else
    {
      v25(v6, v24, v2);
      v29 = sub_27237725C();
      v30 = sub_272377E7C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_2721E4000, v29, v30, "Speech Detector output stream: Unknown termination reason.", v31, 2u);
        MEMORY[0x2743C69C0](v31, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      return (*(v13 + 8))(v15, v12);
    }
  }
}

uint64_t sub_27221D800(void *a1, char *a2)
{
  v3 = v2;
  v71 = a2;
  v72 = a1;
  v4 = sub_27237728C();
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v67 = (&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v65 = &v62 - v8;
  MEMORY[0x28223BE20](v7);
  v66 = &v62 - v9;
  v10 = sub_2721F065C(&qword_280881AF8, &qword_27237CB80);
  v70 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v62 - v14;
  v16 = sub_2721F065C(&qword_280881AC8, &unk_27237CB20);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v62 - v17;
  v19 = sub_2721F065C(&qword_280881AA8, &unk_27237CAF0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v62 - v21;
  v23 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStreamBuilder;
  swift_beginAccess();
  v24 = v3 + v23;
  v25 = v19;
  v26 = v20;
  sub_2721F07F4(v24, v18, &qword_280881AC8, &unk_27237CB20);
  if ((v20[6])(v18, 1, v25) == 1)
  {
    sub_2721F40F0(v18, &qword_280881AC8, &unk_27237CB20);
    sub_27221AF24();
    swift_allocError();
    *v27 = 0xD000000000000022;
    v27[1] = 0x80000002723890F0;
    return swift_willThrow();
  }

  else
  {
    (v20[4])(v22, v18, v25);
    v73 = v72;
    v74 = v71;
    v29 = v72;
    sub_272377C6C();
    v30 = v70;
    (*(v70 + 16))(v13, v15, v10);
    v31 = (*(v30 + 88))(v13, v10);
    if (v31 == *MEMORY[0x277D85758])
    {

      (*(v30 + 8))(v15, v10);
      return v26[1](v22, v25);
    }

    else
    {
      v32 = v13;
      v64 = v29;
      v71 = v22;
      v72 = v25;
      if (v31 == *MEMORY[0x277D85750])
      {
        v67 = v26;
        v33 = *(v30 + 8);
        v33(v13, v10);
        v34 = sub_2722C389C();
        v36 = v68;
        v35 = v69;
        v37 = v66;
        (*(v68 + 16))(v66, v34, v69);
        v38 = sub_27237725C();
        v39 = sub_272377E8C();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v63 = v15;
          v41 = v33;
          v42 = v40;
          *v40 = 0;
          _os_log_impl(&dword_2721E4000, v38, v39, "Failed to enqueue audio", v40, 2u);
          MEMORY[0x2743C69C0](v42, -1, -1);

          (*(v36 + 8))(v37, v35);
          v41(v63, v10);
        }

        else
        {

          (*(v36 + 8))(v37, v35);
          v33(v15, v10);
        }

        return v67[1](v71, v72);
      }

      else
      {
        v43 = *MEMORY[0x277D85748];
        v44 = v31;
        v45 = sub_2722C389C();
        v47 = v68;
        v46 = v69;
        v48 = *(v68 + 16);
        if (v44 == v43)
        {
          v49 = v65;
          v48(v65, v45, v69);
          v50 = sub_27237725C();
          v51 = sub_272377E8C();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v63 = v15;
            v53 = v26;
            v54 = v52;
            *v52 = 0;
            _os_log_impl(&dword_2721E4000, v50, v51, "Stream was terminated, failed to enqueue audio", v52, 2u);
            MEMORY[0x2743C69C0](v54, -1, -1);

            (*(v47 + 8))(v49, v46);
            (*(v30 + 8))(v63, v10);
            return v53[1](v71, v72);
          }

          else
          {

            (*(v47 + 8))(v49, v46);
            (*(v30 + 8))(v15, v10);
            return v26[1](v71, v72);
          }
        }

        else
        {
          v48(v67, v45, v69);
          v55 = sub_27237725C();
          v56 = sub_272377E8C();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v66 = v32;
            v58 = v26;
            v59 = v57;
            *v57 = 0;
            _os_log_impl(&dword_2721E4000, v55, v56, "Unknown yield result", v57, 2u);
            v60 = v59;
            v26 = v58;
            v32 = v66;
            MEMORY[0x2743C69C0](v60, -1, -1);
          }

          (*(v47 + 8))(v67, v46);
          v61 = *(v30 + 8);
          v61(v15, v10);
          v26[1](v71, v72);
          return (v61)(v32, v10);
        }
      }
    }
  }
}

uint64_t sub_27221DFD4()
{
  v1 = v0;
  v2 = sub_2721F065C(&qword_280881AC8, &unk_27237CB20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_2721F065C(&qword_280881AC0, &qword_27237CB18);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  result = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_vadTask;
  if (*(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_vadTask))
  {
    v13 = dispatch_semaphore_create(0);
    v14 = sub_272377C3C();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    v15[5] = v1;
    v16 = v13;

    sub_27221CA6C(0, 0, v11, &unk_27237CB90, v15);

    sub_272377F5C();
    v17 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionTask;
    if (*(v1 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionTask))
    {

      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_272377CBC();

      *(v1 + v17) = 0;
    }

    if (*(v1 + v12))
    {

      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_272377CBC();

      *(v1 + v12) = 0;
    }

    else
    {
    }

    v18 = sub_2721F065C(&qword_280881AA0, &qword_27237CAE8);
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    v19 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStream;
    swift_beginAccess();
    sub_27221D3B4(v7, v1 + v19, &qword_280881AC0, &qword_27237CB18);
    swift_endAccess();
    v20 = sub_2721F065C(&qword_280881AA8, &unk_27237CAF0);
    (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
    v21 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStreamBuilder;
    swift_beginAccess();
    sub_27221D3B4(v4, v1 + v21, &qword_280881AC8, &unk_27237CB20);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_27221E398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_2721F065C(&qword_280881AD0, &unk_27237CB30);
  v5[10] = swift_task_alloc();
  v6 = sub_2721F065C(&qword_280881AB0, &unk_27237CB00);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  sub_2721F065C(&qword_280881AD8, &qword_27237CB40);
  v5[14] = swift_task_alloc();
  v7 = sub_2721F065C(&qword_280881AB8, &qword_27237CB10);
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  sub_2721F065C(&qword_280881AC8, &unk_27237CB20);
  v5[18] = swift_task_alloc();
  v8 = sub_2721F065C(&qword_280881AA8, &unk_27237CAF0);
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27221E5DC, 0, 0);
}

uint64_t sub_27221E5DC()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_stopProcessingActor);
  v0[22] = v1;
  v2 = *(*v1 + 120);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_27221E714;

  return v5(1);
}

uint64_t sub_27221E714()
{

  return MEMORY[0x2822009F8](sub_27221E82C, 0, 0);
}

uint64_t sub_27221E82C()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionBufferActor);
  v0[24] = v1;
  v2 = *(*v1 + 440);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_27221E968;

  return v5();
}

uint64_t sub_27221E968()
{

  return MEMORY[0x2822009F8](sub_27221EA80, 0, 0);
}

uint64_t sub_27221EA80()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStreamBuilder;
  swift_beginAccess();
  sub_2721F07F4(v4 + v5, v3, &qword_280881AC8, &unk_27237CB20);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2721F40F0(v0[18], &qword_280881AC8, &unk_27237CB20);
    sub_27221AF24();
    swift_allocError();
    *v6 = 0xD00000000000001ELL;
    v6[1] = 0x8000000272389420;
    swift_willThrow();
    sub_272377F6C();

    v7 = v0[1];
  }

  else
  {
    v8 = v0[15];
    v9 = v0[16];
    v10 = v0[14];
    v11 = v0[9];
    (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
    sub_272377C7C();
    sub_2721F07F4(v11 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputFeatureStreamBuilder, v10, &qword_280881AD8, &qword_27237CB40);
    if ((*(v9 + 48))(v10, 1, v8) == 1)
    {
      sub_2721F40F0(v0[14], &qword_280881AD8, &qword_27237CB40);
    }

    else
    {
      v13 = v0[16];
      v12 = v0[17];
      v14 = v0[15];
      (*(v13 + 32))(v12, v0[14], v14);
      sub_272377C7C();
      (*(v13 + 8))(v12, v14);
    }

    v15 = v0[11];
    v16 = v0[12];
    v18 = v0[9];
    v17 = v0[10];
    v19 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStreamBuilder;
    swift_beginAccess();
    sub_2721F07F4(v18 + v19, v17, &qword_280881AD0, &unk_27237CB30);
    v20 = (*(v16 + 48))(v17, 1, v15);
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    if (v20 == 1)
    {
      v24 = v0[10];
      (*(v22 + 8))(v0[21], v0[19]);
      sub_2721F40F0(v24, &qword_280881AD0, &unk_27237CB30);
    }

    else
    {
      v26 = v0[12];
      v25 = v0[13];
      v27 = v0[11];
      (*(v26 + 32))(v25, v0[10], v27);
      sub_272377C7C();
      (*(v26 + 8))(v25, v27);
      (*(v22 + 8))(v21, v23);
    }

    sub_272377F6C();

    v7 = v0[1];
  }

  return v7();
}

void *sub_27221EE40(uint64_t a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v6 frameCapacity:a1];
    if (v8)
    {
      v9 = v8;
      [v8 setFrameLength_];
      v10 = [v9 int16ChannelData];
      if (v10)
      {
        v11 = a1 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        v12 = 0;
        do
        {
          *(*v10 + v12) = 0;
          v12 += 2;
        }

        while (2 * a1 != v12);
      }
    }

    else
    {
      v9 = 0x8000000272389140;
      sub_2722032B4();
      swift_allocError();
      *v18 = 0xD000000000000019;
      v18[1] = 0x8000000272389140;
      swift_willThrow();
    }
  }

  else
  {
    v13 = sub_2722C3774();
    (*(v3 + 16))(v5, v13, v2);
    v14 = sub_27237725C();
    v15 = sub_272377E8C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2721E4000, v14, v15, "Failed to create audio format", v16, 2u);
      MEMORY[0x2743C69C0](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v9 = 0x8000000272389120;
    sub_2722032B4();
    swift_allocError();
    *v17 = 0xD00000000000001DLL;
    v17[1] = 0x8000000272389120;
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_27221F0E8(char a1)
{
  *(v2 + 3240) = v1;
  *(v2 + 3813) = a1;
  sub_2721F065C(&qword_2808819B8, &qword_27237C508);
  *(v2 + 3248) = swift_task_alloc();
  *(v2 + 3256) = swift_task_alloc();
  v3 = sub_2721F065C(&qword_280881B28, &qword_27237CF70);
  *(v2 + 3264) = v3;
  *(v2 + 3272) = *(v3 - 8);
  *(v2 + 3280) = swift_task_alloc();
  v4 = sub_2721F065C(&qword_280881AB8, &qword_27237CB10);
  *(v2 + 3288) = v4;
  *(v2 + 3296) = *(v4 - 8);
  *(v2 + 3304) = swift_task_alloc();
  *(v2 + 3312) = swift_task_alloc();
  *(v2 + 3320) = swift_task_alloc();
  v5 = sub_2721F065C(&qword_280881B30, &unk_27237CF78);
  *(v2 + 3328) = v5;
  *(v2 + 3336) = *(v5 - 8);
  *(v2 + 3344) = swift_task_alloc();
  v6 = sub_27237728C();
  *(v2 + 3352) = v6;
  *(v2 + 3360) = *(v6 - 8);
  *(v2 + 3368) = swift_task_alloc();
  *(v2 + 3376) = swift_task_alloc();
  *(v2 + 3384) = swift_task_alloc();
  sub_2721F065C(&qword_280881AD8, &qword_27237CB40);
  *(v2 + 3392) = swift_task_alloc();
  *(v2 + 3400) = swift_task_alloc();
  *(v2 + 3408) = swift_task_alloc();
  *(v2 + 3416) = swift_task_alloc();
  sub_2721F065C(&qword_280881AD0, &unk_27237CB30);
  *(v2 + 3424) = swift_task_alloc();
  *(v2 + 3432) = swift_task_alloc();
  *(v2 + 3440) = swift_task_alloc();
  *(v2 + 3448) = swift_task_alloc();
  v7 = sub_2721F065C(&qword_280881AB0, &unk_27237CB00);
  *(v2 + 3456) = v7;
  *(v2 + 3464) = *(v7 - 8);
  *(v2 + 3472) = swift_task_alloc();
  *(v2 + 3480) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27221F484, 0, 0);
}

uint64_t sub_27221F484()
{
  v1 = *(v0 + 3240);
  v2 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_featureCount;
  *(v0 + 3809) = *(v1 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_featureCount);
  *(v0 + 3812) = 0;
  sub_27222378C();
  sub_272377A8C();
  sub_272377A8C();
  if (*(v0 + 3232) == *(v0 + 3200))
  {
    v3 = 40;
  }

  else
  {
    v3 = 80;
  }

  type metadata accessor for VACircularMatrixBuffer();
  *(v0 + 3488) = sub_272302780(66, v3);
  *(v0 + 3811) = *(v1 + v2);
  *(v0 + 3810) = 0;
  sub_272377A8C();
  sub_272377A8C();
  if (*(v0 + 3208) == *(v0 + 3216))
  {
    type metadata accessor for VAFeatureExtract();
    v4 = VAFeatureExtract.__allocating_init()();
  }

  else
  {
    type metadata accessor for VATinyASRFeatureExtract();
    v4 = VATinyASRFeatureExtract.__allocating_init()();
  }

  v5 = v4;
  *(v0 + 3496) = v4;
  v6 = *(v0 + 3240);
  v7 = MEMORY[0x277D84F90];
  *(v0 + 3224) = MEMORY[0x277D84F90];
  sub_2722237E0((v0 + 528));
  v8 = *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_vadModel);
  *(v0 + 3504) = v8;
  if (!v8)
  {
    sub_27221AF24();
    swift_allocError();
    *v17 = 0xD000000000000010;
    v17[1] = 0x8000000272389330;
    swift_willThrow();
    goto LABEL_11;
  }

  v9 = *(v0 + 3464);
  v10 = *(v0 + 3456);
  v11 = *(v0 + 3448);
  v12 = *(v0 + 3240);
  v13 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStreamBuilder;
  *(v0 + 3512) = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStreamBuilder;
  swift_beginAccess();
  sub_2721F07F4(v12 + v13, v11, &qword_280881AD0, &unk_27237CB30);
  v14 = *(v9 + 48);
  *(v0 + 3520) = v14;
  *(v0 + 3528) = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v14(v11, 1, v10) != 1)
  {
    v20 = *(v0 + 3480);
    v21 = *(v0 + 3464);
    v22 = *(v0 + 3456);
    v23 = *(v0 + 3448);
    v24 = *(v0 + 3240);
    v25 = *(v21 + 32);
    *(v0 + 3536) = v25;
    *(v0 + 3544) = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v25(v20, v23, v22);
    v26 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_strideConfig;
    *(v0 + 3552) = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_strideConfig;
    v27 = *(v24 + v26);
    v28 = *((*MEMORY[0x277D85000] & *v27) + 0xD0);

    v29 = v27;
    v30 = v28();

    *(v0 + 3560) = 24 * v30;
    if ((v30 * 24) >> 64 == (24 * v30) >> 63)
    {
      if (24 * v30 + 0x4000000000000000 >= 0)
      {
        *(v0 + 3568) = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_stopProcessingActor;
        *(v0 + 3576) = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputFeatureStreamBuilder;
        *(v0 + 3584) = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionBufferActor;
        *(v0 + 3592) = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_speechInProgress;
        *(v0 + 3600) = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_minimumSilenceProbability;
        *(v0 + 3608) = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStream;
        swift_beginAccess();
        v34 = *(v0 + 608);
        *(v0 + 720) = *(v0 + 592);
        *(v0 + 736) = v34;
        v35 = *(v0 + 640);
        *(v0 + 752) = *(v0 + 624);
        *(v0 + 768) = v35;
        v36 = *(v0 + 544);
        *(v0 + 656) = *(v0 + 528);
        *(v0 + 672) = v36;
        v37 = *(v0 + 576);
        *(v0 + 688) = *(v0 + 560);
        *(v0 + 704) = v37;
        *(v0 + 3804) = 0;
        *(v0 + 3796) = 0;
        *(v0 + 3632) = v7;
        *(v0 + 3817) = 0;
        *(v0 + 3814) = 0;
        *(v0 + 3616) = 0u;
        v38 = *(*(v0 + 3240) + *(v0 + 3568));
        *(v0 + 3640) = v38;
        v39 = *v38 + 96;
        *(v0 + 3648) = *v39;
        *(v0 + 3656) = v39 & 0xFFFFFFFFFFFFLL | 0xC0DA000000000000;

        v31 = sub_27221FA50;
        v32 = v38;
        v33 = 0;

        return MEMORY[0x2822009F8](v31, v32, v33);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x2822009F8](v31, v32, v33);
  }

  v15 = *(v0 + 3448);

  sub_2721F40F0(v15, &qword_280881AD0, &unk_27237CB30);
  sub_27221AF24();
  swift_allocError();
  *v16 = 0xD00000000000001CLL;
  v16[1] = 0x8000000272389350;
  swift_willThrow();

LABEL_11:

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_27221FA50()
{
  *(v0 + 3818) = (*(v0 + 3648))() & 1;

  return MEMORY[0x2822009F8](sub_27221FAD0, 0, 0);
}

void sub_27221FAD0()
{
  if (*(v0 + 3818))
  {
    v1 = *(v0 + 3496);
    (*(*(v0 + 3464) + 8))(*(v0 + 3480), *(v0 + 3456));

    sub_2721F40F0(v0 + 656, &qword_280881A88, &qword_27237CA70);

    goto LABEL_3;
  }

  v3 = *(v0 + 3616);
  *(v0 + 3664) = v3 + 1;
  if (v3 == -1)
  {
    __break(1u);
    return;
  }

  v4 = *(v0 + 3520);
  v5 = *(v0 + 3456);
  v6 = *(v0 + 3440);
  sub_2721F07F4(*(v0 + 3240) + *(v0 + 3512), v6, &qword_280881AD0, &unk_27237CB30);
  LODWORD(v5) = v4(v6, 1, v5);
  sub_2721F40F0(v6, &qword_280881AD0, &unk_27237CB30);
  if (v5 == 1)
  {
    v7 = *(v0 + 3416);
    v8 = *(v0 + 3296);
    v9 = *(v0 + 3288);
    sub_2721F07F4(*(v0 + 3240) + *(v0 + 3576), v7, &qword_280881AD8, &qword_27237CB40);
    if ((*(v8 + 48))(v7, 1, v9) == 1)
    {
      v10 = *(v0 + 3416);
      v11 = *(v0 + 3368);
      v12 = *(v0 + 3360);
      v13 = *(v0 + 3352);

      sub_2721F40F0(v10, &qword_280881AD8, &qword_27237CB40);
      v14 = sub_2722C389C();
      (*(v12 + 16))(v11, v14, v13);
      v15 = sub_27237725C();
      v16 = sub_272377E7C();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 3496);
      v19 = *(v0 + 3480);
      v20 = *(v0 + 3464);
      v29 = *(v0 + 3368);
      v31 = *(v0 + 3456);
      v21 = *(v0 + 3360);
      v22 = *(v0 + 3352);
      if (v17)
      {
        v28 = *(v0 + 3480);
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_2721E4000, v15, v16, "output stream doesn't exist, stop predictions", v23, 2u);
        MEMORY[0x2743C69C0](v23, -1, -1);

        sub_2721F40F0(v0 + 656, &qword_280881A88, &qword_27237CA70);

        (*(v21 + 8))(v29, v22);
        (*(v20 + 8))(v28, v31);
      }

      else
      {

        sub_2721F40F0(v0 + 656, &qword_280881A88, &qword_27237CA70);

        (*(v21 + 8))(v29, v22);
        (*(v20 + 8))(v19, v31);
      }

LABEL_3:

      v2 = *(v0 + 8);

      v2();
      return;
    }

    sub_2721F40F0(*(v0 + 3416), &qword_280881AD8, &qword_27237CB40);
  }

  v24 = *(*(v0 + 3240) + *(v0 + 3584));
  *(v0 + 3672) = v24;
  v25 = *(*v24 + 448);

  v30 = (v25 + *v25);
  v26 = swift_task_alloc();
  *(v0 + 3680) = v26;
  *v26 = v0;
  v26[1] = sub_27222007C;
  v27 = *(v0 + 3813);

  (v30)(v27, 0, 1);
}

uint64_t sub_27222007C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 3688) = v2;

  if (v2)
  {

    v7 = sub_272222558;
  }

  else
  {
    *(v6 + 3696) = a2;
    *(v6 + 3704) = a1;
    v7 = sub_2722201D8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2722201D8()
{
  v1 = *(v0 + 3704);
  if (v1)
  {
    v2 = *(v0 + 3696);
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = *(v0 + 3704);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v0 + 3520);
    v6 = *(v0 + 3456);
    v7 = *(v0 + 3432);
    sub_2721F07F4(*(v0 + 3240) + *(v0 + 3512), v7, &qword_280881AD0, &unk_27237CB30);
    v8 = v5(v7, 1, v6);
    v9 = MEMORY[0x277D85000];
    if (v8 == 1)
    {
      sub_2721F40F0(*(v0 + 3432), &qword_280881AD0, &unk_27237CB30);
      v10 = *(v0 + 736);
      *(v0 + 848) = *(v0 + 720);
      *(v0 + 864) = v10;
      v11 = *(v0 + 768);
      *(v0 + 880) = *(v0 + 752);
      *(v0 + 896) = v11;
      v12 = *(v0 + 672);
      *(v0 + 784) = *(v0 + 656);
      *(v0 + 800) = v12;
      v13 = *(v0 + 704);
      *(v0 + 816) = *(v0 + 688);
      *(v0 + 832) = v13;
      v14 = *(v0 + 3632);
LABEL_39:
      LODWORD(v71) = *(v0 + 3815);
      goto LABEL_40;
    }

    v30 = *(v0 + 3592);
    v31 = *(v0 + 3552);
    v32 = *(v0 + 3240);
    (*(v0 + 3536))(*(v0 + 3472), *(v0 + 3432), *(v0 + 3456));
    v33 = *(v32 + v30);
    v34 = *(v32 + v31);
    v35 = *((*v9 & *v34) + 0xD0);
    if (v33 == 1)
    {
      v364 = v2;
      if (*(v0 + 3817) != 1)
      {
        v104 = *(v0 + 3664);

        v105 = v34;
        v106 = v35();

        v107 = sub_272222744(v106, v3);
        v108 = sub_272223918(v107);

        v109 = *(v0 + 3472);
        v110 = *(v0 + 3464);
        v111 = *(v0 + 3456);
        if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v104, 3) < 0xAAAAAAAAAAAAAABuLL)
        {
          v71 = *(v110 + 8);
          v148 = v108;
          (v71)(v109, v111);
          sub_2721F40F0(v0 + 656, &qword_280881A88, &qword_27237CA70);

          *(v0 + 2576) = v148;
          v2 = v364;
          *(v0 + 2584) = v364;
          *(v0 + 2592) = 0;
          *(v0 + 2594) = 1;
          *(v0 + 2600) = 0;
          *(v0 + 2608) = 1;
          *(v0 + 2616) = 0;
          *(v0 + 2624) = 1;
          *(v0 + 2632) = 0;
          *(v0 + 2640) = 1;
          *(v0 + 2648) = 0;
          *(v0 + 2656) = 1;
          *(v0 + 2664) = 0;
          *(v0 + 2672) = 1;
          *(v0 + 2680) = 0;
          *(v0 + 2688) = 1;
          *(v0 + 2692) = 0;
          *(v0 + 2696) = 1;
          *(v0 + 2697) = 0;
          *(v0 + 2700) = 0;
          nullsub_1();
          LODWORD(v71) = 0;
          v149 = *(v0 + 2656);
          *(v0 + 848) = *(v0 + 2640);
          *(v0 + 864) = v149;
          v150 = *(v0 + 2688);
          *(v0 + 880) = *(v0 + 2672);
          *(v0 + 896) = v150;
          v151 = *(v0 + 2592);
          *(v0 + 784) = *(v0 + 2576);
          *(v0 + 800) = v151;
          v116 = *(v0 + 2608);
          v117 = *(v0 + 2624);
        }

        else
        {
          v112 = *(v0 + 3344);
          v71 = *(v0 + 3336);
          v372 = *(v0 + 3328);
          *(v0 + 2704) = v108;
          *(v0 + 2712) = v364;
          *(v0 + 2720) = 0;
          *(v0 + 2722) = 1;
          *(v0 + 2728) = 0;
          *(v0 + 2736) = 1;
          *(v0 + 2744) = 0;
          *(v0 + 2752) = 1;
          *(v0 + 2760) = 0;
          *(v0 + 2768) = 1;
          *(v0 + 2776) = 0;
          *(v0 + 2784) = 1;
          *(v0 + 2792) = 0;
          *(v0 + 2800) = 1;
          *(v0 + 2808) = 0;
          *(v0 + 2816) = 1;
          *(v0 + 2820) = 0;
          *(v0 + 2824) = 1;
          *(v0 + 2825) = 0;
          *(v0 + 2828) = 0;
          sub_272377C6C();
          (*(v71 + 8))(v112, v372);
          (*(v110 + 8))(v109, v111);
          v2 = v364;
          LODWORD(v71) = 0;
          v113 = *(v0 + 736);
          *(v0 + 848) = *(v0 + 720);
          *(v0 + 864) = v113;
          v114 = *(v0 + 768);
          *(v0 + 880) = *(v0 + 752);
          *(v0 + 896) = v114;
          v115 = *(v0 + 672);
          *(v0 + 784) = *(v0 + 656);
          *(v0 + 800) = v115;
          v116 = *(v0 + 688);
          v117 = *(v0 + 704);
        }

        *(v0 + 816) = v116;
        *(v0 + 832) = v117;
        v14 = *(v0 + 3632);
        v9 = MEMORY[0x277D85000];
LABEL_40:
        v72 = *(v0 + 3664);
        v73 = *(v0 + 3488);
        v74 = (*((*v9 & **(v0 + 3496)) + 0x170))(v3);

        (*(*v73 + 168))(v74);

        if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v72, 3) >= 0xAAAAAAAAAAAAAABuLL)
        {
          v76 = *(v0 + 864);
          *(v0 + 720) = *(v0 + 848);
          *(v0 + 736) = v76;
          v77 = *(v0 + 896);
          *(v0 + 752) = *(v0 + 880);
          *(v0 + 768) = v77;
          v78 = *(v0 + 800);
          *(v0 + 656) = *(v0 + 784);
          *(v0 + 672) = v78;
          v79 = *(v0 + 832);
          *(v0 + 688) = *(v0 + 816);
          *(v0 + 704) = v79;
          v80 = *(v0 + 3804);
          v49 = *(v0 + 3796);
          v81 = *(v0 + 3624);
          v82 = *(v0 + 3817);
          v83 = *(v0 + 3814);
          goto LABEL_42;
        }

        v371 = v71;
        v87 = *(v0 + 3576);
        v88 = *(v0 + 3408);
        v89 = *(v0 + 3296);
        v90 = *(v0 + 3288);
        v91 = *(v0 + 3240);
        v81 = (*(**(v0 + 3488) + 176))(v75);
        sub_2721F07F4(v91 + v87, v88, &qword_280881AD8, &qword_27237CB40);
        v92 = *(v89 + 48);
        if (v92(v88, 1, v90) == 1)
        {
          sub_2721F40F0(*(v0 + 3408), &qword_280881AD8, &qword_27237CB40);
        }

        else
        {
          (*(*(v0 + 3296) + 32))(*(v0 + 3320), *(v0 + 3408), *(v0 + 3288));
          v93 = *(v0 + 3320);
          v94 = *(v0 + 3296);
          v95 = *(v0 + 3288);
          if (v371)
          {
            v96 = *(v0 + 3280);
            v97 = *(v0 + 3272);
            v98 = *(v0 + 3264);
            *(v0 + 3184) = v81;
            *(v0 + 3192) = 4;
            v99 = v95;
            sub_272377C6C();
            (*(v97 + 8))(v96, v98);
            (*(v94 + 8))(v93, v99);
LABEL_49:
            v83 = 0;
            LOBYTE(v71) = 0;
            v82 = 0;
            v100 = *(v0 + 864);
            *(v0 + 720) = *(v0 + 848);
            *(v0 + 736) = v100;
            v101 = *(v0 + 896);
            *(v0 + 752) = *(v0 + 880);
            *(v0 + 768) = v101;
            v102 = *(v0 + 800);
            *(v0 + 656) = *(v0 + 784);
            *(v0 + 672) = v102;
            v103 = *(v0 + 832);
            *(v0 + 688) = *(v0 + 816);
            *(v0 + 704) = v103;
            v80 = *(v0 + 3804);
            v49 = *(v0 + 3796);
            v81 = *(v0 + 3624);
            goto LABEL_42;
          }

          (*(v94 + 8))(*(v0 + 3320), v95);
        }

        v118 = *(v0 + 3688);
        (*(**(v0 + 3504) + 128))(v81);
        if (v118)
        {
          v119 = *(v0 + 3496);
          (*(*(v0 + 3464) + 8))(*(v0 + 3480), *(v0 + 3456));

          sub_2721F40F0(v0 + 784, &qword_280881A88, &qword_27237CA70);

LABEL_57:

          v52 = *(v0 + 8);
          goto LABEL_58;
        }

        if (*(v0 + 3814))
        {
          v120 = *(v0 + 3496);
          v365 = *(v0 + 3480);
          v121 = *(v0 + 3464);
          v122 = *(v0 + 3456);

          sub_27221AF24();
          swift_allocError();
          *v123 = 0xD000000000000040;
          v123[1] = 0x80000002723893D0;
          swift_willThrow();

          sub_2721F40F0(v0 + 784, &qword_280881A88, &qword_27237CA70);
          (*(v121 + 8))(v365, v122);
          goto LABEL_57;
        }

        v152 = (*(**(v0 + 3240) + 712))(*(*(v0 + 3240) + *(v0 + 3600)));
        v154 = v153;
        v156 = v155;

        if (v152)
        {
          v157 = *(v0 + 3608);
          v158 = *(v0 + 3256);
          v159 = *(v0 + 3240);
          *(v159 + *(v0 + 3592)) = 1;
          sub_2721F07F4(v159 + v157, v158, &qword_2808819B8, &qword_27237C508);
          v160 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
          if ((*(*(v160 - 8) + 48))(v158, 1, v160) == 1)
          {
            v161 = *(v0 + 3576);
            v162 = *(v0 + 3400);
            v163 = *(v0 + 3288);
            v164 = *(v0 + 3240);
            sub_2721F40F0(*(v0 + 3256), &qword_2808819B8, &qword_27237C508);
            sub_2721F07F4(v164 + v161, v162, &qword_280881AD8, &qword_27237CB40);
            if (v92(v162, 1, v163) == 1)
            {
              v165 = *(v0 + 3400);

              sub_2721F40F0(v165, &qword_280881AD8, &qword_27237CB40);
              goto LABEL_49;
            }

            v238 = *(v0 + 3624);
            (*(*(v0 + 3296) + 32))(*(v0 + 3312), *(v0 + 3400), *(v0 + 3288));
            if (!v238)
            {
              v327 = *(v0 + 3496);
              v368 = *(v0 + 3480);
              v328 = *(v0 + 3464);
              v359 = *(v0 + 3312);
              v362 = *(v0 + 3456);
              v329 = *(v0 + 3296);
              v330 = *(v0 + 3288);

              sub_27221AF24();
              swift_allocError();
              *v331 = 0xD000000000000026;
              v331[1] = 0x80000002723893A0;
              swift_willThrow();

              sub_2721F40F0(v0 + 784, &qword_280881A88, &qword_27237CA70);
              (*(v329 + 8))(v359, v330);
              (*(v328 + 8))(v368, v362);
              goto LABEL_57;
            }

            v239 = *(v0 + 3312);
            v240 = *(v0 + 3296);
            v241 = *(v0 + 3288);
            v242 = *(v0 + 3280);
            v71 = *(v0 + 3272);
            v243 = *(v0 + 3264);
            *(v0 + 3168) = *(v0 + 3624);
            *(v0 + 3176) = 0;
            sub_272377C6C();
            v244 = *(v71 + 8);
            v244(v242, v243);
            *(v0 + 3152) = v81;
            *(v0 + 3160) = 1;
            sub_272377C6C();
            v244(v242, v243);
            (*(v240 + 8))(v239, v241);
            v83 = 0;
            LOBYTE(v71) = 0;
            v82 = 0;
            v81 = 0;
            v245 = *(v0 + 864);
            *(v0 + 720) = *(v0 + 848);
            *(v0 + 736) = v245;
            v246 = *(v0 + 896);
            *(v0 + 752) = *(v0 + 880);
            *(v0 + 768) = v246;
            v247 = *(v0 + 800);
            *(v0 + 656) = *(v0 + 784);
            *(v0 + 672) = v247;
            v248 = *(v0 + 832);
            *(v0 + 688) = *(v0 + 816);
            *(v0 + 704) = v248;
            v80 = *(v0 + 3804);
            v49 = *(v0 + 3796);
LABEL_42:
            v84 = *(v0 + 3664);
            *(v0 + 3804) = v80;
            *(v0 + 3796) = v49;
            *(v0 + 3632) = v14;
            *(v0 + 3624) = v81;
            *(v0 + 3616) = v84;
            *(v0 + 3817) = v82;
            *(v0 + 3815) = v71;
            *(v0 + 3814) = v83;
            v85 = *(*(v0 + 3240) + *(v0 + 3568));
            *(v0 + 3640) = v85;
            v86 = *v85 + 96;
            *(v0 + 3648) = *v86;
            *(v0 + 3656) = v86 & 0xFFFFFFFFFFFFLL | 0xC0DA000000000000;

            v42 = sub_27221FA50;
            v43 = v85;
            v44 = 0;

            return MEMORY[0x2822009F8](v42, v43, v44);
          }

          v179 = *(v0 + 3560);
          v180 = *(v0 + 3256);

          sub_2721F40F0(v180, &qword_2808819B8, &qword_27237C508);
          v181 = sub_272223918(v14);

          *(v0 + 3224) = MEMORY[0x277D84F90];
          v358 = v181;
          if ([v181 frameLength] == 2 * v179)
          {
            v182 = 24;
          }

          else
          {
            v182 = 0;
          }

          v42 = type metadata accessor for VARequestContext(0);
          v373 = v154;
          if (!__OFADD__(v182, v154))
          {
            v183 = *(v0 + 3552);
            v184 = *(v0 + 3240);
            v185 = (v182 + v154);
            v186 = *(v184 + v183);
            v187 = MEMORY[0x277D85000];
            v188 = *((*MEMORY[0x277D85000] & *v186) + 0x1B0);
            v189 = v186;
            v190 = v188();

            v191 = *(v184 + v183);
            v192 = *((*v187 & *v191) + 0xA0);
            v193 = v191;
            v194 = v192();

            v42 = sub_2722325EC(v2, v190 * v185 / v194);
            v361 = v42;
            *(v0 + 3712) = 1;
            *(v0 + 3864) = 1;
            *(v0 + 3728) = 0;
            *(v0 + 3720) = 1;
            v195 = v182 + 24 - v373;
            if (!__OFSUB__(v182 + 24, v373))
            {
              if ((v195 & 0x8000000000000000) == 0)
              {
                v196 = *(*(v0 + 3240) + *(v0 + 3552));
                v197 = *((*v187 & *v196) + 0xD0);
                v198 = v196;
                v199 = v197();

                if ((v199 & 0x8000000000000000) == 0)
                {
                  if (is_mul_ok(v195, v199))
                  {
                    v71 = v2;
                    v200 = v195 * v199;
                    v201 = *(v0 + 3552);
                    v202 = *(v0 + 3240);
                    *(v0 + 3880) = 0;
                    v374 = v200;
                    v203 = v200;
                    v204 = *(v202 + v201);
                    v205 = *((*v187 & *v204) + 0xA0);
                    v206 = v204;
                    v207 = v205();

                    v208 = v203 / v207;
                    *(v0 + 3760) = 0;
                    *(v0 + 3848) = 0;
                    Strong = swift_unknownObjectWeakLoadStrong();
                    if (Strong)
                    {
                      v210 = Strong;
                      if ([Strong respondsToSelector_])
                      {
                        LODWORD(v212) = *(*(v0 + 3240) + *(v0 + 3600));
                        LODWORD(v211) = v156;
                        [v210 didDetectStartOfSpeechWithProbability:v361 threshold:v211 hostTime:v212];
                      }

                      swift_unknownObjectRelease();
                    }

                    v213 = *(v0 + 3344);
                    v214 = *(v0 + 3336);
                    v336 = *(v0 + 3328);
                    *(v0 + 2064) = v358;
                    *(v0 + 2072) = v71;
                    *(v0 + 2080) = 1;
                    *(v0 + 2082) = 0;
                    *(v0 + 2088) = v361;
                    v215 = *(v0 + 3728);
                    *(v0 + 2096) = v215;
                    *(v0 + 2104) = 0;
                    v216 = *(v0 + 3720);
                    *(v0 + 2112) = v216;
                    *(v0 + 2120) = v374;
                    v334 = *(v0 + 3880);
                    *(v0 + 2128) = v334;
                    *(v0 + 2136) = v208;
                    v338 = *(v0 + 3760);
                    *(v0 + 2144) = v338;
                    *(v0 + 2152) = 0;
                    v339 = *(v0 + 3712);
                    *(v0 + 2160) = v339;
                    *(v0 + 2168) = 0;
                    v342 = *(v0 + 3864);
                    *(v0 + 2176) = v342;
                    *(v0 + 2180) = v156;
                    v344 = *(v0 + 3848);
                    *(v0 + 2184) = v344;
                    *(v0 + 2185) = 0;
                    *(v0 + 2188) = 0;
                    v217 = *(v0 + 2064);
                    v218 = *(v0 + 2080);
                    v219 = *(v0 + 2112);
                    *(v0 + 2224) = *(v0 + 2096);
                    *(v0 + 2240) = v219;
                    *(v0 + 2192) = v217;
                    *(v0 + 2208) = v218;
                    v220 = *(v0 + 2128);
                    v221 = *(v0 + 2144);
                    v222 = *(v0 + 2176);
                    *(v0 + 2288) = *(v0 + 2160);
                    *(v0 + 2304) = v222;
                    *(v0 + 2256) = v220;
                    *(v0 + 2272) = v221;
                    sub_272218D40(v0 + 2064, v0 + 2320);
                    sub_272377C6C();
                    (*(v214 + 8))(v213, v336);
                    *(v0 + 1808) = v358;
                    *(v0 + 1816) = v71;
                    *(v0 + 1824) = 1;
                    *(v0 + 1826) = 0;
                    *(v0 + 1827) = *(v0 + 3777);
                    *(v0 + 1831) = *(v0 + 3781);
                    *(v0 + 1832) = v361;
                    *(v0 + 1840) = v215;
                    *(v0 + 1841) = *(v0 + 3721);
                    *(v0 + 1844) = *(v0 + 3724);
                    *(v0 + 1848) = 0;
                    *(v0 + 1856) = v216;
                    v223 = *(v0 + 3737);
                    *(v0 + 1860) = *(v0 + 3740);
                    *(v0 + 1857) = v223;
                    *(v0 + 1864) = v374;
                    *(v0 + 1872) = v334;
                    *(v0 + 1873) = *(v0 + 3753);
                    *(v0 + 1876) = *(v0 + 3756);
                    *(v0 + 1880) = v208;
                    *(v0 + 1888) = v338;
                    *(v0 + 1889) = *(v0 + 3769);
                    *(v0 + 1892) = *(v0 + 3772);
                    *(v0 + 1896) = 0;
                    *(v0 + 1904) = v339;
                    v224 = *(v0 + 3145);
                    *(v0 + 1908) = *(v0 + 3148);
                    *(v0 + 1905) = v224;
                    *(v0 + 1912) = 0;
                    *(v0 + 1920) = v342;
                    *(v0 + 1921) = *(v0 + 3801);
                    *(v0 + 1923) = *(v0 + 3803);
                    *(v0 + 1924) = v156;
                    *(v0 + 1928) = v344;
                    *(v0 + 1929) = 0;
                    *(v0 + 1932) = 0;
                    sub_272218F7C(v0 + 1808);
                    v83 = 0;
                    LOBYTE(v71) = 0;
                    v82 = 0;
                    v225 = *(v0 + 864);
                    *(v0 + 720) = *(v0 + 848);
                    *(v0 + 736) = v225;
                    v226 = *(v0 + 896);
                    *(v0 + 752) = *(v0 + 880);
                    *(v0 + 768) = v226;
                    v227 = *(v0 + 800);
                    *(v0 + 656) = *(v0 + 784);
                    *(v0 + 672) = v227;
                    v228 = *(v0 + 832);
                    *(v0 + 688) = *(v0 + 816);
                    *(v0 + 704) = v228;
                    v80 = *(v0 + 3804);
                    v49 = *(v0 + 3796);
                    v81 = *(v0 + 3624);
                    v14 = MEMORY[0x277D84F90];
                    goto LABEL_42;
                  }

LABEL_123:
                  __break(1u);
                  return MEMORY[0x2822009F8](v42, v43, v44);
                }

LABEL_122:
                __break(1u);
                goto LABEL_123;
              }

LABEL_121:
              __break(1u);
              goto LABEL_122;
            }

LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if ((v152 & 0x100) != 0)
        {
          v366 = v2;
          v229 = (v0 + 1552);
          v230 = *(v0 + 3248);
          sub_2721F07F4(*(v0 + 3240) + *(v0 + 3608), v230, &qword_2808819B8, &qword_27237C508);
          v231 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
          if ((*(*(v231 - 8) + 48))(v230, 1, v231) == 1)
          {
            v232 = *(v0 + 3576);
            v233 = *(v0 + 3392);
            v234 = *(v0 + 3288);
            v235 = *(v0 + 3240);
            sub_2721F40F0(*(v0 + 3248), &qword_2808819B8, &qword_27237C508);
            sub_2721F07F4(v235 + v232, v233, &qword_280881AD8, &qword_27237CB40);
            v236 = v92(v233, 1, v234);
            v237 = *(v0 + 3392);
            if (v236 == 1)
            {

              sub_2721F40F0(v237, &qword_280881AD8, &qword_27237CB40);
            }

            else
            {
              v281 = *(v0 + 3304);
              v282 = *(v0 + 3296);
              v283 = *(v0 + 3288);
              v284 = *(v0 + 3280);
              v285 = *(v0 + 3272);
              v375 = *(v0 + 3264);
              (*(v282 + 32))(v281, v237, v283);
              *(v0 + 3136) = v81;
              *(v0 + 3144) = 3;
              sub_272377C6C();
              (*(v285 + 8))(v284, v375);
              (*(v282 + 8))(v281, v283);
            }

            v286 = *(v0 + 864);
            *(v0 + 1616) = *(v0 + 848);
            *(v0 + 1632) = v286;
            v287 = *(v0 + 896);
            *(v0 + 1648) = *(v0 + 880);
            *(v0 + 1664) = v287;
            v288 = *(v0 + 800);
            *v229 = *(v0 + 784);
            *(v0 + 1568) = v288;
            v289 = *(v0 + 816);
            v290 = *(v0 + 832);
          }

          else
          {
            v262 = *(v0 + 3248);

            sub_2721F40F0(v262, &qword_2808819B8, &qword_27237C508);
            v263 = *(v0 + 864);
            *(v0 + 1744) = *(v0 + 848);
            *(v0 + 1760) = v263;
            v264 = *(v0 + 896);
            *(v0 + 1776) = *(v0 + 880);
            *(v0 + 1792) = v264;
            v265 = *(v0 + 800);
            *(v0 + 1680) = *(v0 + 784);
            *(v0 + 1696) = v265;
            v266 = *(v0 + 832);
            *(v0 + 1712) = *(v0 + 816);
            *(v0 + 1728) = v266;
            if (sub_272219874((v0 + 1680)) == 1)
            {
              v267 = *(v0 + 3496);
              v268 = *(v0 + 3480);
              v269 = *(v0 + 3464);
              v270 = *(v0 + 3456);

              sub_27221AF24();
              swift_allocError();
              *v271 = 0xD000000000000026;
              v271[1] = 0x8000000272389370;
              swift_willThrow();

              (*(v269 + 8))(v268, v270);
              goto LABEL_57;
            }

            v291 = *(v0 + 3552);
            v292 = *(v0 + 3240);
            type metadata accessor for VARequestContext(0);
            v293 = v154;
            v294 = *(v292 + v291);
            v295 = MEMORY[0x277D85000];
            v296 = *((*MEMORY[0x277D85000] & *v294) + 0x1B0);
            v297 = v294;
            v298 = v296();

            v299 = *(v292 + v291);
            v300 = *((*v295 & *v299) + 0xA0);
            v301 = v299;
            v302 = v300();

            v303 = sub_2722325EC(v366, v298 * v293 / v302);
            v304 = *(v0 + 1680);
            *(v0 + 3800) = 1;
            *(v0 + 3776) = 1;
            *(v0 + 3752) = 1;
            *(v0 + 3744) = 1;
            *(v0 + 3832) = 1;
            *(v0 + 3816) = 0;
            *(v0 + 3736) = 0;
            v305 = swift_unknownObjectWeakLoadStrong();
            if (v305)
            {
              v306 = v305;
              if ([v305 respondsToSelector_])
              {
                LODWORD(v308) = *(*(v0 + 3240) + *(v0 + 3600));
                LODWORD(v307) = v156;
                [v306 didDetectEndOfSpeechWithProbability:v303 threshold:v307 hostTime:v308];
              }

              swift_unknownObjectRelease();
            }

            v309 = *(v0 + 3344);
            v310 = *(v0 + 3336);
            v350 = *(v0 + 3328);
            *(v0 + 2960) = v304;
            *(v0 + 2968) = v366;
            *(v0 + 2976) = 256;
            *(v0 + 2978) = 0;
            *(v0 + 2984) = 0;
            v311 = *(v0 + 3832);
            *(v0 + 2992) = v311;
            *(v0 + 3000) = v303;
            v349 = *(v0 + 3816);
            *(v0 + 3008) = v349;
            *(v0 + 3016) = 0;
            v355 = *(v0 + 3800);
            *(v0 + 3024) = v355;
            *(v0 + 3032) = 0;
            v354 = *(v0 + 3776);
            *(v0 + 3040) = v354;
            *(v0 + 3048) = 0;
            v352 = *(v0 + 3752);
            *(v0 + 3056) = v352;
            *(v0 + 3064) = 0;
            v348 = *(v0 + 3744);
            *(v0 + 3072) = v348;
            *(v0 + 3076) = v156;
            v312 = *(v0 + 3736);
            *(v0 + 3080) = v312;
            *(v0 + 3081) = 0;
            *(v0 + 3084) = 0;
            v313 = *(v0 + 2960);
            v314 = *(v0 + 2976);
            v315 = *(v0 + 3008);
            *(v0 + 304) = *(v0 + 2992);
            *(v0 + 320) = v315;
            *(v0 + 272) = v313;
            *(v0 + 288) = v314;
            v316 = *(v0 + 3024);
            v317 = *(v0 + 3040);
            v318 = *(v0 + 3072);
            *(v0 + 368) = *(v0 + 3056);
            *(v0 + 384) = v318;
            *(v0 + 336) = v316;
            *(v0 + 352) = v317;
            sub_272218D40(v0 + 2960, v0 + 16);
            sub_272377C6C();
            (*(v310 + 8))(v309, v350);
            *(v0 + 2832) = v304;
            *(v0 + 2840) = v366;
            *(v0 + 2848) = 256;
            *(v0 + 2850) = 0;
            *(v0 + 2851) = *(v0 + 3787);
            *(v0 + 2855) = *(v0 + 3791);
            *(v0 + 2856) = 0;
            *(v0 + 2864) = v311;
            *(v0 + 2865) = *(v0 + 3729);
            *(v0 + 2868) = *(v0 + 3732);
            *(v0 + 2872) = v303;
            *(v0 + 2880) = v349;
            v319 = *(v0 + 3193);
            *(v0 + 2884) = *(v0 + 3196);
            *(v0 + 2881) = v319;
            *(v0 + 2888) = 0;
            *(v0 + 2896) = v355;
            *(v0 + 2904) = 0;
            *(v0 + 2912) = v354;
            *(v0 + 2920) = 0;
            *(v0 + 2928) = v352;
            *(v0 + 2936) = 0;
            *(v0 + 2944) = v348;
            *(v0 + 2948) = v156;
            *(v0 + 2952) = v312;
            *(v0 + 2953) = 0;
            *(v0 + 2956) = 0;
            sub_272218F7C(v0 + 2832);
            v320 = *(v0 + 608);
            *(v0 + 1616) = *(v0 + 592);
            *(v0 + 1632) = v320;
            v321 = *(v0 + 640);
            *(v0 + 1648) = *(v0 + 624);
            *(v0 + 1664) = v321;
            v322 = *(v0 + 544);
            *v229 = *(v0 + 528);
            *(v0 + 1568) = v322;
            v289 = *(v0 + 560);
            v290 = *(v0 + 576);
          }

          *(v0 + 1584) = v289;
          *(v0 + 1600) = v290;
          v323 = *(v0 + 1632);
          *(v0 + 720) = *(v0 + 1616);
          *(v0 + 736) = v323;
          v324 = *(v0 + 1664);
          *(v0 + 752) = *(v0 + 1648);
          *(v0 + 768) = v324;
          v325 = *(v0 + 1568);
          *(v0 + 656) = *v229;
          *(v0 + 672) = v325;
          v326 = *(v0 + 1600);
          *(v0 + 688) = *(v0 + 1584);
          *(v0 + 704) = v326;
          v80 = *(v0 + 3804);
          v49 = *(v0 + 3796);
          v83 = 1;
          LOBYTE(v71) = 1;
          v82 = 1;
          v81 = *(v0 + 3624);
          goto LABEL_42;
        }

        v71 = v0 + 1040;
        v166 = *(v0 + 864);
        *(v0 + 976) = *(v0 + 848);
        *(v0 + 992) = v166;
        v167 = *(v0 + 896);
        *(v0 + 1008) = *(v0 + 880);
        *(v0 + 1024) = v167;
        v168 = *(v0 + 800);
        *(v0 + 912) = *(v0 + 784);
        *(v0 + 928) = v168;
        v169 = *(v0 + 832);
        *(v0 + 944) = *(v0 + 816);
        *(v0 + 960) = v169;
        if (sub_272219874((v0 + 912)) == 1)
        {
          v170 = *(v0 + 3520);
          v171 = *(v0 + 3456);
          v172 = *(v0 + 3424);
          sub_2721F07F4(*(v0 + 3240) + *(v0 + 3512), v172, &qword_280881AD0, &unk_27237CB30);
          if (v170(v172, 1, v171) != 1)
          {
            v272 = *(v0 + 3424);

            sub_2721F40F0(v272, &qword_280881AD0, &unk_27237CB30);
            v273 = *(v0 + 864);
            *(v0 + 1104) = *(v0 + 848);
            *(v0 + 1120) = v273;
            v274 = *(v0 + 896);
            *(v0 + 1136) = *(v0 + 880);
            *(v0 + 1152) = v274;
            v275 = *(v0 + 800);
            *v71 = *(v0 + 784);
            *(v0 + 1056) = v275;
            v276 = *(v0 + 832);
            *(v0 + 1072) = *(v0 + 816);
            *(v0 + 1088) = v276;
            goto LABEL_102;
          }

          v173 = *(v0 + 3424);

          sub_2721F40F0(v173, &qword_280881AD0, &unk_27237CB30);
          v174 = *(v0 + 864);
          *(v0 + 1104) = *(v0 + 848);
          *(v0 + 1120) = v174;
          v175 = *(v0 + 896);
          *(v0 + 1136) = *(v0 + 880);
          *(v0 + 1152) = v175;
          v176 = *(v0 + 800);
          *v71 = *(v0 + 784);
          *(v0 + 1056) = v176;
          v177 = *(v0 + 816);
          v178 = *(v0 + 832);
        }

        else
        {
          v249 = *(v0 + 3344);
          v250 = *(v0 + 3336);
          v367 = *(v0 + 3328);
          v251 = *(v0 + 864);
          *(v0 + 1232) = *(v0 + 848);
          *(v0 + 1248) = v251;
          v252 = *(v0 + 896);
          *(v0 + 1264) = *(v0 + 880);
          *(v0 + 1280) = v252;
          v253 = *(v0 + 800);
          *(v0 + 1168) = *(v0 + 784);
          *(v0 + 1184) = v253;
          v254 = *(v0 + 832);
          *(v0 + 1200) = *(v0 + 816);
          *(v0 + 1216) = v254;
          sub_272218D40(v0 + 1168, v0 + 1296);

          v255 = *(v0 + 992);
          *(v0 + 1488) = *(v0 + 976);
          *(v0 + 1504) = v255;
          v256 = *(v0 + 1024);
          *(v0 + 1520) = *(v0 + 1008);
          *(v0 + 1536) = v256;
          v257 = *(v0 + 928);
          *(v0 + 1424) = *(v0 + 912);
          *(v0 + 1440) = v257;
          v258 = *(v0 + 960);
          *(v0 + 1456) = *(v0 + 944);
          *(v0 + 1472) = v258;
          sub_272377C6C();
          sub_2721F40F0(v0 + 784, &qword_280881A88, &qword_27237CA70);
          (*(v250 + 8))(v249, v367);
          v259 = *(v0 + 608);
          *(v0 + 1104) = *(v0 + 592);
          *(v0 + 1120) = v259;
          v260 = *(v0 + 640);
          *(v0 + 1136) = *(v0 + 624);
          *(v0 + 1152) = v260;
          v261 = *(v0 + 544);
          *v71 = *(v0 + 528);
          *(v0 + 1056) = v261;
          v177 = *(v0 + 560);
          v178 = *(v0 + 576);
        }

        *(v0 + 1072) = v177;
        *(v0 + 1088) = v178;
        v81 = *(v0 + 3624);
LABEL_102:
        v83 = 0;
        v277 = *(v0 + 1120);
        *(v0 + 720) = *(v0 + 1104);
        *(v0 + 736) = v277;
        v278 = *(v0 + 1152);
        *(v0 + 752) = *(v0 + 1136);
        *(v0 + 768) = v278;
        v279 = *(v0 + 1056);
        *(v0 + 656) = *v71;
        *(v0 + 672) = v279;
        v280 = *(v0 + 1088);
        *(v0 + 688) = *(v0 + 1072);
        *(v0 + 704) = v280;
        v80 = *(v0 + 3804);
        v49 = *(v0 + 3796);
        v82 = *(v0 + 3817);
        LOBYTE(v71) = v371;
        goto LABEL_42;
      }

      v36 = *(v0 + 3804);
      v37 = v34;
      v38 = v35();

      v39 = sub_272222744(v38, v3);
      v40 = sub_272223918(v39);

      *(v0 + 3808) = 1;
      *(v0 + 3824) = 1;
      *(v0 + 3840) = 1;
      *(v0 + 3856) = 1;
      *(v0 + 3872) = 1;
      *(v0 + 3768) = 1;
      *(v0 + 3792) = 1;
      v41 = v40;
      v42 = [v41 frameLength];
      v45 = v36 + v42;
      if (!__CFADD__(v36, v42))
      {
        v46 = *(v0 + 3560);
        v370 = v46 >= v45;
        if (v46 < v45)
        {
          v125 = *(v0 + 3376);
          v126 = *(v0 + 3360);
          v127 = *(v0 + 3352);

          v128 = sub_2722C389C();
          (*(v126 + 16))(v125, v128, v127);
          v129 = sub_27237725C();
          v130 = sub_272377E7C();
          if (os_log_type_enabled(v129, v130))
          {
            v131 = *(v0 + 3796);
            v132 = swift_slowAlloc();
            *v132 = 67109120;
            *(v132 + 4) = v131;
            _os_log_impl(&dword_2721E4000, v129, v130, "SpeechDetector: Audio stopped after sending %u bytes after speech end", v132, 8u);
            MEMORY[0x2743C69C0](v132, -1, -1);
          }

          v133 = *(v0 + 3376);
          v134 = *(v0 + 3360);
          v135 = *(v0 + 3352);

          (*(v134 + 8))(v133, v135);
          v136 = swift_unknownObjectWeakLoadStrong();
          if (v136)
          {
            v137 = v136;
            if ([v136 respondsToSelector_])
            {
              [v137 endOfAudioWithByteCountAfterEndOfSpeech_];
            }

            swift_unknownObjectRelease();
          }

          v357 = 0;
          v49 = 0;
          *(*(v0 + 3240) + *(v0 + 3592)) = 0;
          v51 = *(v0 + 3796);
          v50 = 1;
          goto LABEL_68;
        }

        v47 = *(v0 + 3804);
        v48 = [v41 frameLength];

        v49 = v47 + v48;
        if (!__CFADD__(v47, v48))
        {
          v50 = 0;
          v51 = 0;
          v357 = *(v0 + 3814);
LABEL_68:
          v332 = v50;
          v333 = v51;
          v335 = *(v0 + 3456);
          v138 = *(v0 + 3344);
          v139 = *(v0 + 3336);
          v351 = *(v0 + 3328);
          v353 = *(v0 + 3472);
          v356 = *(v0 + 3464);
          *(v0 + 1936) = v41;
          *(v0 + 1944) = v2;
          *(v0 + 1952) = 0;
          *(v0 + 1954) = 0;
          *(v0 + 1955) = *(v0 + 3782);
          *(v0 + 1959) = *(v0 + 3786);
          *(v0 + 1960) = 0;
          v347 = *(v0 + 3768);
          *(v0 + 1968) = v347;
          *(v0 + 1969) = *(v0 + 3161);
          *(v0 + 1972) = *(v0 + 3164);
          *(v0 + 1976) = 0;
          v346 = *(v0 + 3792);
          *(v0 + 1984) = v346;
          *(v0 + 1985) = *(v0 + 3177);
          *(v0 + 1988) = *(v0 + 3180);
          *(v0 + 1992) = 0;
          v345 = *(v0 + 3808);
          *(v0 + 2000) = v345;
          *(v0 + 2004) = *(v0 + 3716);
          *(v0 + 2001) = *(v0 + 3713);
          *(v0 + 2008) = 0;
          v343 = *(v0 + 3824);
          *(v0 + 2016) = v343;
          *(v0 + 2020) = *(v0 + 3748);
          *(v0 + 2017) = *(v0 + 3745);
          *(v0 + 2024) = 0;
          v341 = *(v0 + 3840);
          *(v0 + 2032) = v341;
          *(v0 + 2036) = *(v0 + 3764);
          *(v0 + 2033) = *(v0 + 3761);
          *(v0 + 2040) = 0;
          v340 = *(v0 + 3856);
          *(v0 + 2048) = v340;
          *(v0 + 2051) = *(v0 + 3795);
          *(v0 + 2049) = *(v0 + 3793);
          *(v0 + 2052) = 0;
          v337 = *(v0 + 3872);
          *(v0 + 2056) = v337;
          *(v0 + 2057) = 1;
          *(v0 + 2058) = v50;
          *(v0 + 2060) = v51;
          v140 = *(v0 + 1936);
          v141 = *(v0 + 1952);
          v142 = *(v0 + 1984);
          *(v0 + 176) = *(v0 + 1968);
          *(v0 + 192) = v142;
          *(v0 + 144) = v140;
          *(v0 + 160) = v141;
          v143 = *(v0 + 2000);
          v144 = *(v0 + 2016);
          v145 = *(v0 + 2048);
          *(v0 + 240) = *(v0 + 2032);
          *(v0 + 256) = v145;
          *(v0 + 208) = v143;
          *(v0 + 224) = v144;
          sub_272218D40(v0 + 1936, v0 + 2448);
          sub_272377C6C();
          (*(v139 + 8))(v138, v351);
          *(v0 + 400) = v41;
          *(v0 + 408) = v2;
          *(v0 + 416) = 0;
          *(v0 + 418) = 0;
          *(v0 + 419) = *(v0 + 3782);
          *(v0 + 423) = *(v0 + 3786);
          *(v0 + 424) = 0;
          *(v0 + 432) = v347;
          *(v0 + 433) = *(v0 + 3161);
          *(v0 + 436) = *(v0 + 3164);
          *(v0 + 440) = 0;
          *(v0 + 448) = v346;
          v146 = *(v0 + 3177);
          *(v0 + 452) = *(v0 + 3180);
          *(v0 + 449) = v146;
          *(v0 + 456) = 0;
          *(v0 + 464) = v345;
          *(v0 + 465) = *(v0 + 3713);
          *(v0 + 468) = *(v0 + 3716);
          *(v0 + 472) = 0;
          *(v0 + 480) = v343;
          *(v0 + 481) = *(v0 + 3745);
          *(v0 + 484) = *(v0 + 3748);
          *(v0 + 488) = 0;
          *(v0 + 496) = v341;
          v147 = *(v0 + 3761);
          *(v0 + 500) = *(v0 + 3764);
          *(v0 + 497) = v147;
          *(v0 + 504) = 0;
          *(v0 + 512) = v340;
          *(v0 + 515) = *(v0 + 3795);
          *(v0 + 513) = *(v0 + 3793);
          *(v0 + 516) = 0;
          *(v0 + 520) = v337;
          *(v0 + 521) = 1;
          *(v0 + 522) = v332;
          *(v0 + 524) = v333;
          sub_272218F7C(v0 + 400);
          (*(v356 + 8))(v353, v335);
          v14 = *(v0 + 3632);
          v81 = *(v0 + 3624);
          LOBYTE(v71) = v370;
          v82 = v370;
          v80 = v49;
          v83 = v357;
          goto LABEL_42;
        }

LABEL_118:
        __break(1u);
        goto LABEL_119;
      }
    }

    else
    {
      v53 = v34;
      v54 = v35();

      if ((v54 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        if (v4 >= v54)
        {
          v55 = v4 - v54;
        }

        else
        {
          v55 = 0;
        }

        v56 = *(v3 + 16);
        if (v56 >= v55 && v56 >= v4)
        {
          v57 = *(v0 + 3560);

          sub_27222291C(v58, v3 + 32, v55, (2 * v4) | 1);
          v14 = *(v0 + 3224);
          v59 = *(v14 + 2);
          if (v59 > 2 * v57)
          {
            v60 = *(v0 + 3560);
            v61 = v59 - 2 * v60;
            if (__OFSUB__(v59, 2 * v60))
            {
LABEL_115:
              __break(1u);
              goto LABEL_116;
            }

            if (v61)
            {
              if ((v61 & 0x8000000000000000) != 0)
              {
LABEL_116:
                __break(1u);
                goto LABEL_117;
              }

              v62 = 2 * v60;
              if (v59 < v61)
              {
LABEL_117:
                __break(1u);
                goto LABEL_118;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || v62 > *(v14 + 3) >> 1)
              {
                if (v59 <= v62)
                {
                  v64 = v59 - v61;
                }

                else
                {
                  v64 = v59;
                }

                v14 = sub_2721FF8B4(isUniquelyReferenced_nonNull_native, v64, 1, v14);
              }

              v65 = &v14[4 * v61 + 32];
              v66 = *(v14 + 2) - v61;
              memmove(v14 + 32, v65, 4 * v66);
              *(v14 + 2) = v66;
              *(v0 + 3224) = v14;
            }
          }

          (*(*(v0 + 3464) + 8))(*(v0 + 3472), *(v0 + 3456));
          v67 = *(v0 + 736);
          *(v0 + 848) = *(v0 + 720);
          *(v0 + 864) = v67;
          v68 = *(v0 + 768);
          *(v0 + 880) = *(v0 + 752);
          *(v0 + 896) = v68;
          v69 = *(v0 + 672);
          *(v0 + 784) = *(v0 + 656);
          *(v0 + 800) = v69;
          v70 = *(v0 + 704);
          *(v0 + 816) = *(v0 + 688);
          *(v0 + 832) = v70;
          goto LABEL_39;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_115;
  }

  v15 = *(v0 + 3384);
  v16 = *(v0 + 3360);
  v17 = *(v0 + 3352);

  v18 = sub_2722C389C();
  (*(v16 + 16))(v15, v18, v17);
  v19 = sub_27237725C();
  v20 = sub_272377E7C();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 3496);
  v23 = *(v0 + 3480);
  v24 = *(v0 + 3464);
  v25 = *(v0 + 3456);
  v26 = *(v0 + 3360);
  v363 = *(v0 + 3352);
  v369 = *(v0 + 3384);
  if (v21)
  {
    v360 = *(v0 + 3456);
    v27 = *(v0 + 3480);
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2721E4000, v19, v20, "processing was stopped, stop predictions", v28, 2u);
    v29 = v28;
    v23 = v27;
    v25 = v360;
    MEMORY[0x2743C69C0](v29, -1, -1);
  }

  else
  {
  }

  sub_2721F40F0(v0 + 656, &qword_280881A88, &qword_27237CA70);

  (*(v26 + 8))(v369, v363);
  (*(v24 + 8))(v23, v25);

  v52 = *(v0 + 8);
LABEL_58:

  return v52();
}

uint64_t sub_272222558()
{
  v1 = *(v0 + 3480);
  v2 = *(v0 + 3464);
  v3 = *(v0 + 3456);

  sub_2721F40F0(v0 + 656, &qword_280881A88, &qword_27237CA70);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_272222744(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v3 = result;
  if (!result)
  {

    return MEMORY[0x277D84F90];
  }

  if (*(a2 + 16) >= result)
  {
    v4 = result;
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v5 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  result = sub_2722005AC(0, v4, 0);
  v6 = v16;
  v7 = *(a2 + 16);
  if (!v7)
  {

    return v6;
  }

  v8 = 0;
  v9 = 32;
  do
  {
    v11 = *(a2 + v9);
    v12 = *(v16 + 16);
    if (v12 < v3)
    {
      v10 = *(v16 + 24);
      if (v12 >= v10 >> 1)
      {
        result = sub_2722005AC((v10 > 1), v12 + 1, 1);
      }

      *(v16 + 16) = v12 + 1;
      *(v16 + 4 * v12 + 32) = v11;
    }

    else
    {
      if (v8 >= v12)
      {
        __break(1u);
        goto LABEL_27;
      }

      *(v16 + 4 * v8 + 32) = v11;
      if ((v8 + 1) < v3)
      {
        ++v8;
      }

      else
      {
        v8 = 0;
      }
    }

    v9 += 4;
    --v7;
  }

  while (v7);

  if (!v8)
  {
    return v6;
  }

  v13 = *(v16 + 16);
  result = sub_2722005AC(0, v13, 0);
  if (v13 >= v8)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v14 = *(v16 + 16);
    if (v14 >= v8 && v14 >= v13)
    {

      sub_2722237F8(v15, v16 + 32, v8, (2 * v13) | 1);
      sub_2722237F8(v16, v16 + 32, 0, (2 * v8) | 1);
      return v5;
    }

    goto LABEL_30;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_27222291C(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_2721FF8B4(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 4 * v15 + 32), (a2 + 4 * a3), 4 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_272222A30(uint64_t a1, float a2)
{
  v5 = sub_27237728C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 0;
    while (1)
    {
      v15 = v14 + 3;
      if (__OFADD__(v14, 3))
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v14 < 0)
      {
        break;
      }

      if (v14 + 1 >= v13)
      {
        goto LABEL_23;
      }

      if (v14 + 2 >= v13)
      {
        goto LABEL_24;
      }

      v16 = (((*(a1 + 32 + 4 * v14) + 0.0) + *(a1 + 32 + 4 * (v14 + 1))) + *(a1 + 32 + 4 * (v14 + 2))) / 3.0;
      v17 = *(v2 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_speechInProgress);
      if (v17 == 1)
      {
        if (v16 > a2)
        {
          v24 = sub_2722C389C();
          (*(v6 + 16))(v12, v24, v5);
          v19 = sub_27237725C();
          v25 = sub_272377E7C();
          if (os_log_type_enabled(v19, v25))
          {
            v21 = swift_slowAlloc();
            *v21 = 134218240;
            *(v21 + 4) = v16;
            *(v21 + 12) = 2048;
            *(v21 + 14) = a2;
            _os_log_impl(&dword_2721E4000, v19, v25, "SpeechDetector: Pending Speech stopped, silence probability %f > %f", v21, 0x16u);
            v22 = 256;
LABEL_17:
            v23 = v17 ^ 1;
            MEMORY[0x2743C69C0](v21, -1, -1);
          }

          else
          {
            v23 = 0;
            v22 = 256;
          }

          goto LABEL_20;
        }
      }

      else if (v16 < a2)
      {
        v18 = sub_2722C389C();
        (*(v6 + 16))(v9, v18, v5);
        v19 = sub_27237725C();
        v20 = sub_272377E7C();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 134218240;
          *(v21 + 4) = v16;
          *(v21 + 12) = 2048;
          *(v21 + 14) = a2;
          _os_log_impl(&dword_2721E4000, v19, v20, "SpeechDetector: Speech started, silence probability %f < %f", v21, 0x16u);
          v22 = 0;
          v12 = v9;
          goto LABEL_17;
        }

        v22 = 0;
        v23 = 1;
        v12 = v9;
LABEL_20:

        (*(v6 + 8))(v12, v5);
        return v22 | v23;
      }

      v14 = v15;
      if (v15 >= v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_14:
    v22 = 0;
    v23 = 0;
    return v22 | v23;
  }

  return result;
}

uint64_t VASpeechDetector.deinit()
{
  sub_272216300(v0 + 16);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStream, &qword_280881AC0, &qword_27237CB18);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStreamBuilder, &qword_280881AC8, &unk_27237CB20);

  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStream, &qword_2808819B8, &qword_27237C508);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStreamBuilder, &qword_280881AD0, &unk_27237CB30);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputFeatureStream, &qword_2808819C0, &unk_27237C510);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputFeatureStreamBuilder, &qword_280881AD8, &qword_27237CB40);
  return v0;
}

uint64_t VASpeechDetector.__deallocating_deinit()
{
  VASpeechDetector.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_272222F18()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_272222F60()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_272211DBC;

  return sub_27221E398(v4, v5, v6, v2, v3);
}

unint64_t sub_272222FFC()
{
  result = qword_280881B00;
  if (!qword_280881B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881B00);
  }

  return result;
}

uint64_t sub_272223060(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2722230A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for E5RTTensorDescriptorComponentDatatype(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for E5RTTensorDescriptorComponentDatatype(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_272223244(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_272223258(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_2722232A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_2722232F0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_272223314(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_27222335C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2722233D4(uint64_t a1)
{
  sub_272219478(319, &qword_280881B08, &qword_280881AA0, &qword_27237CAE8);
  if (v1 <= 0x3F)
  {
    sub_272219478(319, &qword_280881B10, &qword_280881AA8, &unk_27237CAF0);
    if (v2 <= 0x3F)
    {
      sub_272219478(319, &qword_280881A10, &qword_280881900, &qword_27237C4F0);
      if (v3 <= 0x3F)
      {
        sub_272219478(319, &qword_280881B18, &qword_280881AB0, &unk_27237CB00);
        if (v4 <= 0x3F)
        {
          sub_272219478(319, &qword_280881A18, &qword_280881908, &qword_27237C4F8);
          if (v5 <= 0x3F)
          {
            sub_272219478(319, &qword_280881B20, &qword_280881AB8, &qword_27237CB10);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_27222378C()
{
  result = qword_280881B38;
  if (!qword_280881B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881B38);
  }

  return result;
}

double sub_2722237E0(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

char *sub_2722237F8(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = a4 >> 1;
  v10 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = *v4;
  v7 = *(*v4 + 16);
  v8 = v7 + v10;
  if (__OFADD__(v7, v10))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v7 <= v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = v7;
    }

    goto LABEL_11;
  }

  v5 = a3;
  v6 = a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v11;
  if (!result)
  {
    goto LABEL_8;
  }

  v12 = *(v11 + 24) >> 1;
  if (v12 < v8)
  {
    goto LABEL_19;
  }

  if (v9 == v5)
  {
    while (v10 > 0)
    {
      __break(1u);
LABEL_8:
      if (v7 <= v8)
      {
        v13 = v8;
      }

      else
      {
        v13 = v7;
      }

LABEL_11:
      result = sub_2722005AC(result, v13, 1);
      v11 = *v4;
      v12 = *(*v4 + 24) >> 1;
      if (v9 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v14 = *(v11 + 16);
  if (v12 - v14 < v10)
  {
    __break(1u);
  }

  else
  {
    result = memcpy((v11 + 4 * v14 + 32), (v6 + 4 * v5), 4 * v10);
    if (v10 <= 0)
    {
LABEL_16:
      result = swift_unknownObjectRelease();
      *v4 = v11;
      return result;
    }

    v15 = *(v11 + 16);
    v16 = __OFADD__(v15, v10);
    v17 = v15 + v10;
    if (!v16)
    {
      *(v11 + 16) = v17;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void *sub_272223918(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = sub_272377B5C();
    *(v3 + 16) = v1;
    bzero((v3 + 32), 2 * v1);

    v17 = MEMORY[0x277D84F90];
    sub_272215F8C(0, v1, 0);
    v4 = v17;
    v5 = (a1 + 32);
    while (1)
    {
      v6 = *v5;
      if ((*v5 & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v6 <= -32769.0)
      {
        goto LABEL_18;
      }

      if (v6 >= 32768.0)
      {
        goto LABEL_19;
      }

      v17 = v4;
      v8 = v4[2];
      v7 = v4[3];
      if (v8 >= v7 >> 1)
      {
        sub_272215F8C((v7 > 1), v8 + 1, 1);
        v4 = v17;
      }

      v4[2] = v8 + 1;
      *(v4 + v8 + 16) = v6;
      ++v5;
      if (!--v1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = MEMORY[0x277D84F90];

LABEL_11:
  v17 = 0x40CF400000000000;
  v18 = xmmword_27237C4D0;
  v19 = xmmword_27237C4E0;
  v9 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithStreamDescription_];
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = v4[2];
  if (HIDWORD(v10))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v11 = v9;
  v12 = objc_allocWithZone(MEMORY[0x277CB83C8]);
  v13 = [v12 initWithPCMFormat:v11 frameCapacity:v10, v17, v18, v19, v20];
  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = v13;
  v15 = [v13 int16ChannelData];
  if (v15)
  {
    v15 = *v15;
  }

  memcpy(v15, v4 + 4, 2 * v10);

  [v14 setFrameLength_];

  return v14;
}

unint64_t sub_272223B5C()
{
  result = qword_280881B40;
  if (!qword_280881B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881B40);
  }

  return result;
}

VoiceActions::TinyASRGatingMode_optional __swiftcall TinyASRGatingMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_272223C84()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_272223CD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_272223D58(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_272223DCC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t sub_272223E0C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 89);
  return result;
}

uint64_t sub_272223E50(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 89) = v2;
  return result;
}

uint64_t sub_272223E90()
{
  swift_beginAccess();
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_272223EDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_272223F30()
{
  swift_beginAccess();
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_272223F7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t sub_272224004(char a1)
{
  result = swift_beginAccess();
  *(v1 + 144) = a1;
  return result;
}

uint64_t sub_272224078(char a1)
{
  result = swift_beginAccess();
  *(v1 + 145) = a1;
  return result;
}

uint64_t sub_2722240EC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 146) = a1;
  return result;
}

uint64_t sub_27222412C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 147);
  return result;
}

uint64_t sub_272224170(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 147) = v2;
  return result;
}

uint64_t sub_2722241B0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 148);
  return result;
}

uint64_t sub_2722241F4(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 148) = v2;
  return result;
}

uint64_t VATasrConfiguration.__allocating_init(tasrModelPath:labelModelPath:joinerModelPath:contextEncoderModelPath:vadModelFilename:silenceModelFeatureCount:useContext:vocabFilename:useEspressoV2:computeUnits:espressoV1ModelPrefix:timingEnabled:shouldWaitForAdditionalLoopForFinal:useTransducer:gatedMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, char *a11, char a12, uint64_t a13, uint64_t a14, char a15, char *a16, uint64_t a17, uint64_t a18, char a19, char a20, char a21, char *a22)
{
  v24 = a14;
  v25 = swift_allocObject();
  v26 = *a11;
  v33 = *a16;
  v38 = *a22;
  *(v25 + 148) = 0;
  *(v25 + 32) = 0;
  *(v25 + 128) = 0u;
  *(v25 + 40) = 0;
  *(v25 + 112) = 0u;
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  swift_beginAccess();
  *(v25 + 112) = a3;
  *(v25 + 120) = a4;
  swift_beginAccess();
  *(v25 + 128) = a5;
  *(v25 + 136) = a6;
  swift_beginAccess();
  *(v25 + 32) = a7;
  *(v25 + 40) = a8;
  v27 = 0x2E454E415F444156;
  if (a10)
  {
    v27 = a9;
  }

  v28 = 0xEA00000000003565;
  if (a10)
  {
    v28 = a10;
  }

  *(v25 + 56) = v27;
  *(v25 + 64) = v28;
  *(v25 + 147) = v26;
  *(v25 + 48) = a12;
  *(v25 + 88) = a15;
  *(v25 + 89) = v33;
  *(v25 + 96) = a17;
  *(v25 + 104) = a18;
  if (!a14)
  {
    swift_bridgeObjectRetain_n();
    MEMORY[0x2743C4AD0](0x742E6261636F762FLL, 0xEA00000000007478);

    a13 = a1;
    v24 = a2;
  }

  *(v25 + 72) = a13;
  *(v25 + 80) = v24;
  *(v25 + 144) = a19 & 1;
  *(v25 + 145) = a20 & 1;
  *(v25 + 146) = a21 & 1;
  swift_beginAccess();
  *(v25 + 148) = v38;
  return v25;
}

uint64_t VATasrConfiguration.init(tasrModelPath:labelModelPath:joinerModelPath:contextEncoderModelPath:vadModelFilename:silenceModelFeatureCount:useContext:vocabFilename:useEspressoV2:computeUnits:espressoV1ModelPrefix:timingEnabled:shouldWaitForAdditionalLoopForFinal:useTransducer:gatedMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, char *a11, char a12, uint64_t a13, uint64_t a14, char a15, char *a16, uint64_t a17, uint64_t a18, char a19, char a20, char a21, char *a22)
{
  v23 = v22;
  v27 = a14;
  v35 = *a11;
  v36 = *a16;
  v39 = *a22;
  *(v22 + 32) = 0;
  *(v22 + 148) = 0;
  *(v22 + 128) = 0u;
  *(v22 + 40) = 0;
  *(v22 + 112) = 0u;
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  swift_beginAccess();
  *(v22 + 112) = a3;
  *(v22 + 120) = a4;
  swift_beginAccess();
  *(v22 + 128) = a5;
  *(v22 + 136) = a6;
  swift_beginAccess();
  *(v22 + 32) = a7;
  *(v22 + 40) = a8;

  v28 = 0x2E454E415F444156;
  if (a10)
  {
    v28 = a9;
  }

  v29 = 0xEA00000000003565;
  if (a10)
  {
    v29 = a10;
  }

  *(v22 + 56) = v28;
  *(v22 + 64) = v29;
  *(v22 + 147) = v35;
  *(v22 + 48) = a12;
  *(v22 + 88) = a15;
  *(v22 + 89) = v36;
  *(v22 + 96) = a17;
  *(v22 + 104) = a18;
  if (a14)
  {
  }

  else
  {

    MEMORY[0x2743C4AD0](0x742E6261636F762FLL, 0xEA00000000007478);

    a13 = a1;
    v27 = a2;
  }

  *(v23 + 72) = a13;
  *(v23 + 80) = v27;
  *(v23 + 144) = a19 & 1;
  *(v23 + 145) = a20 & 1;
  *(v23 + 146) = a21 & 1;
  swift_beginAccess();
  *(v23 + 148) = v39;
  return v23;
}

uint64_t static VATasrConfiguration.buildE23BSmallNoContext(timingEnabled:)(char a1)
{
  type metadata accessor for VATasrConfiguration();
  v2 = swift_allocObject();
  *(v2 + 148) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 16) = 0xD00000000000001ELL;
  *(v2 + 24) = 0x8000000272389460;
  swift_beginAccess();
  *(v2 + 120) = 0;
  *(v2 + 112) = 0;
  swift_beginAccess();
  *(v2 + 136) = 0;
  *(v2 + 128) = 0;
  swift_beginAccess();
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0x2E454E415F444156;
  *(v2 + 64) = 0xEA00000000003565;
  *(v2 + 147) = 0;
  *(v2 + 48) = 0;
  *(v2 + 88) = 257;
  *(v2 + 96) = 0x62382D6C65646F6DLL;
  *(v2 + 104) = 0xEA00000000007469;
  *(v2 + 72) = 0xD000000000000028;
  *(v2 + 80) = 0x8000000272389480;
  *(v2 + 144) = a1;
  *(v2 + 145) = 0;
  swift_beginAccess();
  *(v2 + 148) = 0;
  return v2;
}

uint64_t static VATasrConfiguration.buildE23BSmallContext(timingEnabled:)(char a1)
{
  type metadata accessor for VATasrConfiguration();
  v2 = swift_allocObject();
  *(v2 + 148) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 16) = 0xD00000000000001CLL;
  *(v2 + 24) = 0x80000002723894B0;
  swift_beginAccess();
  *(v2 + 120) = 0;
  *(v2 + 112) = 0;
  swift_beginAccess();
  *(v2 + 136) = 0;
  *(v2 + 128) = 0;
  swift_beginAccess();
  *(v2 + 32) = 0xD000000000000023;
  *(v2 + 40) = 0x80000002723894D0;
  *(v2 + 56) = 0x2E454E415F444156;
  *(v2 + 64) = 0xEA00000000003565;
  *(v2 + 147) = 0;
  *(v2 + 48) = 1;
  *(v2 + 88) = 257;
  *(v2 + 96) = 0x62382D6C65646F6DLL;
  *(v2 + 104) = 0xEA00000000007469;
  *(v2 + 72) = 0xD000000000000026;
  *(v2 + 80) = 0x8000000272389500;
  *(v2 + 144) = a1;
  *(v2 + 145) = 0;
  swift_beginAccess();
  *(v2 + 148) = 0;
  return v2;
}

uint64_t static VATasrConfiguration.buildE13BSmallNoContext(timingEnabled:)(char a1)
{
  type metadata accessor for VATasrConfiguration();
  v2 = swift_allocObject();
  *(v2 + 148) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 16) = 0xD000000000000011;
  *(v2 + 24) = 0x8000000272389530;
  swift_beginAccess();
  *(v2 + 120) = 0;
  *(v2 + 112) = 0;
  swift_beginAccess();
  *(v2 + 136) = 0;
  *(v2 + 128) = 0;
  swift_beginAccess();
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0x2E454E415F444156;
  *(v2 + 64) = 0xEA00000000003565;
  *(v2 + 147) = 0;
  *(v2 + 48) = 0;
  *(v2 + 88) = 256;
  *(v2 + 96) = 0x62382D6C65646F6DLL;
  *(v2 + 104) = 0xEA00000000007469;
  *(v2 + 72) = 0xD00000000000001BLL;
  *(v2 + 80) = 0x8000000272389550;
  *(v2 + 144) = a1;
  *(v2 + 145) = 0;
  swift_beginAccess();
  *(v2 + 148) = 0;
  return v2;
}

uint64_t static VATasrConfiguration.buildE13BNoContext(timingEnabled:)(char a1)
{
  type metadata accessor for VATasrConfiguration();
  v2 = swift_allocObject();
  *(v2 + 148) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 16) = 0x646F6D6C6D2E6233;
  *(v2 + 24) = 0xEB00000000636C65;
  swift_beginAccess();
  *(v2 + 120) = 0;
  *(v2 + 112) = 0;
  swift_beginAccess();
  *(v2 + 136) = 0;
  *(v2 + 128) = 0;
  swift_beginAccess();
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0x2E454E415F444156;
  *(v2 + 64) = 0xEA00000000003565;
  *(v2 + 147) = 0;
  *(v2 + 48) = 0;
  *(v2 + 88) = 256;
  *(v2 + 96) = 0x62382D6C65646F6DLL;
  *(v2 + 104) = 0xEA00000000007469;
  *(v2 + 72) = 0xD000000000000015;
  *(v2 + 80) = 0x8000000272389570;
  *(v2 + 144) = a1;
  *(v2 + 145) = 0;
  swift_beginAccess();
  *(v2 + 148) = 0;
  return v2;
}

uint64_t static VATasrConfiguration.buildE13BSmallContext(timingEnabled:)(char a1)
{
  type metadata accessor for VATasrConfiguration();
  v2 = swift_allocObject();
  *(v2 + 148) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 16) = 0xD000000000000019;
  *(v2 + 24) = 0x8000000272389590;
  swift_beginAccess();
  *(v2 + 120) = 0;
  *(v2 + 112) = 0;
  swift_beginAccess();
  *(v2 + 136) = 0;
  *(v2 + 128) = 0;
  swift_beginAccess();
  *(v2 + 32) = 0xD00000000000001DLL;
  *(v2 + 40) = 0x80000002723895B0;
  *(v2 + 56) = 0x2E454E415F444156;
  *(v2 + 64) = 0xEA00000000003565;
  *(v2 + 147) = 0;
  *(v2 + 48) = 1;
  *(v2 + 88) = 256;
  *(v2 + 96) = 0x62382D6C65646F6DLL;
  *(v2 + 104) = 0xEA00000000007469;
  *(v2 + 72) = 0xD000000000000023;
  *(v2 + 80) = 0x80000002723895D0;
  *(v2 + 144) = a1;
  *(v2 + 145) = 0;
  swift_beginAccess();
  *(v2 + 148) = 0;
  return v2;
}

uint64_t static VATasrConfiguration.buildE13BContext(timingEnabled:)(char a1)
{
  type metadata accessor for VATasrConfiguration();
  v2 = swift_allocObject();
  *(v2 + 148) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 16) = 0xD000000000000013;
  *(v2 + 24) = 0x8000000272389600;
  swift_beginAccess();
  *(v2 + 120) = 0;
  *(v2 + 112) = 0;
  swift_beginAccess();
  *(v2 + 136) = 0;
  *(v2 + 128) = 0;
  swift_beginAccess();
  *(v2 + 32) = 0xD000000000000017;
  *(v2 + 40) = 0x8000000272389620;
  *(v2 + 56) = 0x2E454E415F444156;
  *(v2 + 64) = 0xEA00000000003565;
  *(v2 + 147) = 0;
  *(v2 + 48) = 1;
  *(v2 + 88) = 256;
  *(v2 + 96) = 0x62382D6C65646F6DLL;
  *(v2 + 104) = 0xEA00000000007469;
  *(v2 + 72) = 0xD00000000000001DLL;
  *(v2 + 80) = 0x8000000272389640;
  *(v2 + 144) = a1;
  *(v2 + 145) = 0;
  swift_beginAccess();
  *(v2 + 148) = 0;
  return v2;
}

uint64_t static VATasrConfiguration.buildE1Transducer(timingEnabled:)(char a1)
{
  type metadata accessor for VATasrConfiguration();
  v2 = swift_allocObject();
  *(v2 + 148) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 16) = 0xD000000000000010;
  *(v2 + 24) = 0x8000000272389660;
  swift_beginAccess();
  *(v2 + 112) = 0xD000000000000016;
  *(v2 + 120) = 0x8000000272389680;
  swift_beginAccess();
  *(v2 + 128) = xmmword_27237CFA0;
  swift_beginAccess();
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0xD000000000000013;
  *(v2 + 64) = 0x80000002723896A0;
  *(v2 + 147) = 1;
  *(v2 + 48) = 0;
  *(v2 + 88) = 256;
  *(v2 + 96) = 0x6C65646F6DLL;
  *(v2 + 104) = 0xE500000000000000;
  *(v2 + 72) = 0xD00000000000001ALL;
  *(v2 + 80) = 0x80000002723896C0;
  *(v2 + 144) = a1;
  *(v2 + 145) = 256;
  swift_beginAccess();
  *(v2 + 148) = 0;
  return v2;
}

uint64_t static VATasrConfiguration.buildE1SmallTransducer(timingEnabled:shouldWaitForAdditionalLoopForFinal:gatedMode:)(char a1, char a2, char *a3)
{
  v7 = *a3;
  type metadata accessor for VATasrConfiguration();
  v3 = swift_allocObject();
  *(v3 + 148) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 16) = 0xD000000000000016;
  *(v3 + 24) = 0x80000002723896E0;
  swift_beginAccess();
  *(v3 + 112) = 0xD00000000000001CLL;
  *(v3 + 120) = 0x8000000272389700;
  swift_beginAccess();
  *(v3 + 128) = 0xD000000000000015;
  *(v3 + 136) = 0x8000000272389720;
  swift_beginAccess();
  *(v3 + 40) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0xD000000000000013;
  *(v3 + 64) = 0x80000002723896A0;
  *(v3 + 48) = 0;
  *(v3 + 88) = 256;
  *(v3 + 96) = 0x62382D6C65646F6DLL;
  *(v3 + 104) = 0xEA00000000007469;
  *(v3 + 72) = 0xD000000000000020;
  *(v3 + 80) = 0x8000000272389740;
  *(v3 + 144) = a1;
  *(v3 + 145) = a2;
  *(v3 + 146) = 257;
  swift_beginAccess();
  *(v3 + 148) = v7;
  return v3;
}

uint64_t static VATasrConfiguration.buildE1SmallFastTransducer(timingEnabled:shouldWaitForAdditionalLoopForFinal:gatedMode:)(char a1, char a2, char *a3)
{
  v7 = *a3;
  type metadata accessor for VATasrConfiguration();
  v3 = swift_allocObject();
  *(v3 + 148) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 16) = 0xD00000000000001BLL;
  *(v3 + 24) = 0x8000000272389770;
  swift_beginAccess();
  *(v3 + 112) = 0xD000000000000021;
  *(v3 + 120) = 0x8000000272389790;
  swift_beginAccess();
  *(v3 + 128) = 0xD00000000000001ALL;
  *(v3 + 136) = 0x80000002723897C0;
  swift_beginAccess();
  *(v3 + 40) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0xD000000000000013;
  *(v3 + 64) = 0x80000002723896A0;
  *(v3 + 48) = 0;
  *(v3 + 88) = 256;
  *(v3 + 96) = 0x62382D6C65646F6DLL;
  *(v3 + 104) = 0xEA00000000007469;
  *(v3 + 72) = 0xD000000000000025;
  *(v3 + 80) = 0x80000002723897E0;
  *(v3 + 144) = a1;
  *(v3 + 145) = a2;
  *(v3 + 146) = 257;
  swift_beginAccess();
  *(v3 + 148) = v7;
  return v3;
}

uint64_t static VATasrConfiguration.buildE1SmallFast1000Transducer(timingEnabled:shouldWaitForAdditionalLoopForFinal:gatedMode:)(char a1, char a2, char *a3)
{
  v7 = *a3;
  type metadata accessor for VATasrConfiguration();
  v3 = swift_allocObject();
  *(v3 + 148) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 16) = 0xD000000000000020;
  *(v3 + 24) = 0x8000000272389810;
  swift_beginAccess();
  *(v3 + 112) = 0xD000000000000026;
  *(v3 + 120) = 0x8000000272389840;
  swift_beginAccess();
  *(v3 + 128) = 0xD00000000000001FLL;
  *(v3 + 136) = 0x8000000272389870;
  swift_beginAccess();
  *(v3 + 40) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0xD000000000000013;
  *(v3 + 64) = 0x80000002723896A0;
  *(v3 + 48) = 0;
  *(v3 + 88) = 256;
  *(v3 + 96) = 0x62382D6C65646F6DLL;
  *(v3 + 104) = 0xEA00000000007469;
  *(v3 + 72) = 0xD00000000000002ALL;
  *(v3 + 80) = 0x8000000272389890;
  *(v3 + 144) = a1;
  *(v3 + 145) = a2;
  *(v3 + 146) = 257;
  swift_beginAccess();
  *(v3 + 148) = v7;
  return v3;
}

uint64_t static VATasrConfiguration.buildE1SmallFast500Transducer(timingEnabled:shouldWaitForAdditionalLoopForFinal:gatedMode:)(char a1, char a2, char *a3)
{
  v7 = *a3;
  type metadata accessor for VATasrConfiguration();
  v3 = swift_allocObject();
  *(v3 + 148) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 16) = 0xD00000000000001FLL;
  *(v3 + 24) = 0x80000002723898C0;
  swift_beginAccess();
  *(v3 + 112) = 0xD000000000000025;
  *(v3 + 120) = 0x80000002723898E0;
  swift_beginAccess();
  *(v3 + 128) = 0xD00000000000001ELL;
  *(v3 + 136) = 0x8000000272389910;
  swift_beginAccess();
  *(v3 + 40) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0xD000000000000013;
  *(v3 + 64) = 0x80000002723896A0;
  *(v3 + 48) = 0;
  *(v3 + 88) = 256;
  *(v3 + 96) = 0x62382D6C65646F6DLL;
  *(v3 + 104) = 0xEA00000000007469;
  *(v3 + 72) = 0xD000000000000029;
  *(v3 + 80) = 0x8000000272389930;
  *(v3 + 144) = a1;
  *(v3 + 145) = a2;
  *(v3 + 146) = 257;
  swift_beginAccess();
  *(v3 + 148) = v7;
  return v3;
}

uint64_t sub_27222584C()
{
  v1 = (*(*v0 + 224))();
  if (v2)
  {
    v5 = v1;

    MEMORY[0x2743C4AD0](0xD000000000000010, 0x80000002723899A0);

    return v5;
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v4 = 0xD000000000000038;
    v4[1] = 0x8000000272389960;
    return swift_willThrow();
  }
}

uint64_t sub_272225930()
{
  v2 = (*(*v0 + 200))();

  MEMORY[0x2743C4AD0](0x2E6769666E6F632FLL, 0xEC0000006E6F736ALL);

  return v2;
}

unint64_t sub_2722259B8(char a1)
{
  result = 0x65646F4D72736174;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0x65746E6F43657375;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6C69466261636F76;
      break;
    case 5:
      result = 0x6572707345657375;
      break;
    case 6:
      result = 0x55657475706D6F63;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x646F4D6C6562616CLL;
      break;
    case 9:
      result = 0x6F4D72656E696F6ALL;
      break;
    case 10:
      result = 0x6E45676E696D6974;
      break;
    case 11:
      result = 0xD000000000000023;
      break;
    case 12:
      result = 0x736E617254657375;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0x646F4D6465746167;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_272225C14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2722271A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_272225C48(uint64_t a1)
{
  v2 = sub_272226414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272225C84(uint64_t a1)
{
  v2 = sub_272226414();

  return MEMORY[0x2821FE720](a1, v2);
}

void *VATasrConfiguration.deinit()
{

  return v0;
}

uint64_t VATasrConfiguration.__deallocating_deinit()
{
  VATasrConfiguration.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_272225D44(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280881B60, &qword_27237CFB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  sub_27220300C(a1, a1[3]);
  sub_272226414();
  v9 = sub_2723787CC();
  (*(*v3 + 200))(v9);
  LOBYTE(v28) = 0;
  sub_27237858C();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    (*(*v3 + 224))(v10);
    LOBYTE(v28) = 1;
    sub_27237852C();

    (*(*v3 + 248))(v11);
    LOBYTE(v28) = 2;
    v12 = sub_27237859C();
    (*(*v3 + 272))(v12);
    LOBYTE(v28) = 3;
    sub_27237858C();

    (*(*v3 + 296))(v14);
    LOBYTE(v28) = 4;
    sub_27237858C();

    (*(*v3 + 320))(v15);
    LOBYTE(v28) = 5;
    v16 = sub_27237859C();
    (*(*v3 + 344))(&v28, v16);
    v27 = v28;
    v26 = 6;
    sub_272226468();
    v17 = sub_2723785DC();
    (*(*v3 + 368))(v17);
    LOBYTE(v28) = 7;
    sub_27237858C();

    (*(*v3 + 392))(v18);
    LOBYTE(v28) = 8;
    sub_27237852C();

    (*(*v3 + 416))(v19);
    LOBYTE(v28) = 9;
    sub_27237852C();

    (*(*v3 + 440))(v20);
    LOBYTE(v28) = 10;
    v21 = sub_27237859C();
    (*(*v3 + 464))(v21);
    LOBYTE(v28) = 11;
    v22 = sub_27237859C();
    (*(*v3 + 488))(v22);
    LOBYTE(v28) = 12;
    v23 = sub_27237859C();
    (*(*v3 + 512))(&v28, v23);
    v27 = v28;
    v26 = 13;
    sub_2722264BC();
    v24 = sub_2723785DC();
    (*(*v3 + 536))(&v28, v24);
    v27 = 14;
    sub_272226510();
    sub_2723785DC();
    return (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_272226414()
{
  result = qword_280886010[0];
  if (!qword_280886010[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280886010);
  }

  return result;
}

unint64_t sub_272226468()
{
  result = qword_280881B68;
  if (!qword_280881B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881B68);
  }

  return result;
}

unint64_t sub_2722264BC()
{
  result = qword_280881B70;
  if (!qword_280881B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881B70);
  }

  return result;
}

unint64_t sub_272226510()
{
  result = qword_280881B78;
  if (!qword_280881B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881B78);
  }

  return result;
}

uint64_t VATasrConfiguration.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  VATasrConfiguration.init(from:)(a1);
  return v2;
}

uint64_t VATasrConfiguration.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280881B80, &qword_27237CFB8);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v35 = a1;
  v36 = v3;
  *(v3 + 128) = 0u;
  v8 = v3 + 128;
  *(v8 - 96) = 0;
  *(v8 - 16) = 0u;
  *(v8 + 20) = 0;
  *(v8 - 88) = 0;
  sub_27220300C(a1, a1[3]);
  sub_272226414();
  v34 = v7;
  sub_2723787AC();
  if (v2)
  {
    v28 = v36;

    type metadata accessor for VATasrConfiguration();
    swift_deallocPartialClassInstance();
    sub_2722039C8(v35);
  }

  else
  {
    v30 = (v8 + 20);
    v31 = v8 - 16;
    v9 = v32;
    v40 = 0;
    v10 = sub_2723784AC();
    v12 = v36;
    *(v36 + 16) = v10;
    *(v12 + 24) = v13;
    v40 = 1;
    v14 = sub_27237843C();
    v16 = v15;
    swift_beginAccess();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;

    LOBYTE(v39[0]) = 2;
    *(v12 + 48) = sub_2723784BC() & 1;
    LOBYTE(v39[0]) = 3;
    *(v12 + 56) = sub_2723784AC();
    *(v12 + 64) = v17;
    LOBYTE(v39[0]) = 4;
    *(v12 + 72) = sub_2723784AC();
    *(v12 + 80) = v18;
    LOBYTE(v39[0]) = 5;
    *(v12 + 88) = sub_2723784BC() & 1;
    v38 = 6;
    sub_272226BE4();
    sub_2723784FC();
    *(v12 + 89) = v39[0];
    LOBYTE(v39[0]) = 7;
    *(v12 + 96) = sub_2723784AC();
    *(v12 + 104) = v19;
    LOBYTE(v39[0]) = 8;
    v20 = sub_27237843C();
    v22 = v21;
    swift_beginAccess();
    *(v12 + 112) = v20;
    *(v12 + 120) = v22;

    v38 = 9;
    v23 = sub_27237843C();
    v25 = v24;
    swift_beginAccess();
    v26 = v36;
    *(v36 + 128) = v23;
    *(v26 + 136) = v25;

    LOBYTE(v37[0]) = 10;
    *(v36 + 144) = sub_2723784BC() & 1;
    LOBYTE(v37[0]) = 11;
    *(v36 + 145) = sub_2723784BC() & 1;
    LOBYTE(v37[0]) = 12;
    *(v36 + 146) = sub_2723784BC() & 1;
    v41 = 13;
    sub_272226C38();
    sub_2723784FC();
    *(v36 + 147) = v37[0];
    LOBYTE(v37[0]) = 14;
    sub_272226C8C();
    sub_2723784FC();
    (*(v9 + 8))(v34, v33);
    LOBYTE(v16) = v41;
    v27 = v30;
    swift_beginAccess();
    *v27 = v16;
    sub_2722039C8(v35);
    return v36;
  }

  return v28;
}