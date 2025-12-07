uint64_t sub_23319249C(uint64_t a1)
{
  v25 = sub_23328D6EC();
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  sub_233121D34(a1, &v24 - v12, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_233121E04(v13, &unk_27DDE25D0, &unk_233290330);
  }

  sub_2331BDDC4(v13, v10, type metadata accessor for TTSVBError);
  v14 = sub_233225314();
  (*(v2 + 16))(v4, v14, v25);
  sub_2331BDBEC(v10, v7, type metadata accessor for TTSVBError);
  v15 = sub_23328D6CC();
  v16 = sub_23328DE3C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v17 = 138412290;
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v18 = swift_allocError();
    sub_2331BDBEC(v7, v19, type metadata accessor for TTSVBError);
    sub_2331524CC(&v28);
    v26 = v28;
    v27 = v29;
    swift_allocError();
    static TTSVBError.map(_:_:)(v18, &v26, v20);
    sub_2331220AC(v26, *(&v26 + 1), v27);

    v21 = _swift_stdlib_bridgeErrorToNSError();
    sub_2331BDC54(v7, type metadata accessor for TTSVBError);
    *(v17 + 4) = v21;
    v22 = v24;
    *v24 = v21;
    _os_log_impl(&dword_233109000, v15, v16, "%@", v17, 0xCu);
    sub_233121E04(v22, &qword_27DDE2978, &qword_233299A50);
    MEMORY[0x23839CFD0](v22, -1, -1);
    MEMORY[0x23839CFD0](v17, -1, -1);
  }

  else
  {

    sub_2331BDC54(v7, type metadata accessor for TTSVBError);
  }

  (*(v2 + 8))(v4, v25);
  return sub_2331BDC54(v10, type metadata accessor for TTSVBError);
}

void sub_2331928FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_23328D83C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_23328D85C();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v15 = *(v4 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
    if (v15)
    {
      v20 = 1;
      v16 = v15;
      v17 = sub_2331E511C(&v20);

      MEMORY[0x28223BE20](v18);
      *(&v19 - 6) = a1;
      *(&v19 - 5) = a2;
      *(&v19 - 4) = a3;
      *(&v19 - 3) = v17;
      *(&v19 - 2) = v4;
      sub_23328DF5C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_233192AD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for TTSVBLocalVoiceSampleMO();
  v9 = static TTSVBLocalVoiceSampleMO.requireSampleWithID(_:voiceID:moc:)(a1, a2, a3, a4);
  if (!v4)
  {
    v10 = v9;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
    MEMORY[0x28223BE20](v11 - 8);
    v13 = &v18 - v12;
    v14 = sub_23328CC9C();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    sub_2331B8434(v10, v13, 0.0);
    sub_233121E04(v13, &qword_27DDE19A0, &unk_233290360);
    [v10 setUserScore:0xFFFFFFFFLL];
    LODWORD(v15) = -1.0;
    [v10 setSnr:v15];
    LODWORD(v16) = -1.0;
    [v10 setSpl:v16];
    v17 = sub_23328D95C();
    [v10 setUserPhrase:v17];

    NSManagedObjectContext.trySave()();
  }
}

uint64_t TTSVBVoiceBankingManager.updateDataForSample(_:voiceID:audioFileURLOrNil:userScore:userPhrase:recordingDate:spl:splThreshold:snr:snrThreshold:completion:)(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v66 = a10;
  v67 = a11;
  v62 = a1;
  v63 = a9;
  v64 = a13;
  v65 = a14;
  v23 = j___s31TextToSpeechVoiceBankingSupport25TTSVBMaximumUserEditScoreSivg();
  static TTSVBAnalytics.sampleCaptured(spl:splThreshold:snr:snrThreshold:userScore:userScoreThreshold:)(a9, v23, a3, a4, a5, a6);
  v60 = sub_23328CE8C();
  v24 = *(*(v60 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v60);
  v61 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v26;
  v52 = v26;
  (*(v26 + 16))(v25);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v56 = *(v28 - 8);
  v29 = *(v56 + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v59 = &v51 - v30;
  sub_233121D34(a8, &v51 - v30, &qword_27DDE19A0, &unk_233290360);
  v57 = sub_23328CE1C();
  v31 = *(v57 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v57);
  v58 = &v51 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v33);
  v34 = (*(v27 + 80) + 40) & ~*(v27 + 80);
  v35 = (v24 + *(v56 + 80) + v34) & ~*(v56 + 80);
  v56 = (v29 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (*(v31 + 80) + v36 + 16) & ~*(v31 + 80);
  v55 = (v32 + v37 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v53 = v37;
  v54 = (v55 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v38 = (v54 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v39 = (v38 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v40 = swift_allocObject();
  v41 = v61;
  v42 = v62;
  *(v40 + 2) = v15;
  *(v40 + 3) = v42;
  *(v40 + 4) = a2;
  (*(v52 + 32))(&v40[v34], v41, v60);
  sub_233121D9C(v59, &v40[v35], &qword_27DDE19A0, &unk_233290360);
  v43 = v57;
  *&v40[v56] = v63;
  v44 = &v40[v36];
  v45 = v67;
  *v44 = v66;
  v44[1] = v45;
  (*(v31 + 32))(&v40[v53], v58, v43);
  v46 = v54;
  *&v40[v55] = a3;
  *&v40[v46] = a4;
  *&v40[v38] = a5;
  *&v40[v39] = a6;
  v47 = &v40[(v39 + 11) & 0xFFFFFFFFFFFFFFF8];
  v48 = v65;
  *v47 = v64;
  v47[1] = v48;
  v49 = v15;

  sub_233178950(sub_2331B3D44, v40, nullsub_1, 0, &unk_284875498, sub_2331BDE5C, &block_descriptor_572);
}

uint64_t sub_2331930D8(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, uint64_t a13, void (*a14)(char *), void (*a15)(char *))
{
  v76 = a8;
  v77 = a5;
  v73 = a6;
  v74 = a7;
  v69 = a4;
  v71 = a2;
  v72 = a3;
  v20 = sub_23328D83C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v70 = *(v24 - 8);
  MEMORY[0x28223BE20](v24 - 8);
  v68 = v25;
  v26 = &v59 - v25;
  v27 = sub_23328CE1C();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v26, a13, v27);
  (*(v28 + 56))(v26, 0, 1, v27);
  v75 = a1;
  v29 = *&a1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  *v23 = v29;
  (*(v21 + 104))(v23, *MEMORY[0x277D85200], v20);
  v30 = v29;
  LOBYTE(v29) = sub_23328D85C();
  result = (*(v21 + 8))(v23, v20);
  if (v29)
  {
    v65 = a14;
    v66 = a15;
    v32 = sub_23328CE8C();
    v67 = &v59;
    v61 = v32;
    v33 = *(*(v32 - 8) + 64);
    v34 = MEMORY[0x28223BE20](v32);
    v62 = &v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = v35;
    v59 = v35;
    (*(v35 + 16))(v34);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
    v69 = &v59;
    v38 = *(v37 - 8);
    v39 = v72;
    v40 = *(v38 + 64);
    MEMORY[0x28223BE20](v37 - 8);
    v60 = &v59 - v41;
    v42 = sub_233121D34(v77, &v59 - v41, &qword_27DDE19A0, &unk_233290360);
    v64 = &v59;
    MEMORY[0x28223BE20](v42);
    v68 = &v59 - v68;
    v63 = v26;
    sub_233121D34(v26, v68, &qword_27DDE1A18, &unk_233297730);
    v43 = (*(v36 + 80) + 40) & ~*(v36 + 80);
    v44 = (v33 + *(v38 + 80) + v43) & ~*(v38 + 80);
    v45 = (v40 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v45 + 11) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v46 + 11) & 0xFFFFFFFFFFFFFFF8;
    v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
    v49 = (*(v70 + 80) + v48 + 16) & ~*(v70 + 80);
    v50 = swift_allocObject();
    v51 = v75;
    v52 = v71;
    *(v50 + 2) = v75;
    *(v50 + 3) = v52;
    *(v50 + 4) = v39;
    (*(v59 + 32))(&v50[v43], v62, v61);
    sub_233121D9C(v60, &v50[v44], &qword_27DDE19A0, &unk_233290360);
    v53 = v74;
    *&v50[v45] = v73;
    v54 = &v50[v46];
    *v54 = a9;
    v54[1] = a10;
    v55 = &v50[v47];
    *v55 = a11;
    v55[1] = a12;
    v56 = &v50[v48];
    v57 = v76;
    *v56 = v53;
    v56[1] = v57;
    sub_233121D9C(v68, &v50[v49], &qword_27DDE1A18, &unk_233297730);
    v58 = v51;

    sub_2331B8F28(v77, v65, v66, v50);

    return sub_233121E04(v63, &qword_27DDE1A18, &unk_233297730);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_233193638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, float a10, float a11, float a12, float a13, uint64_t a14)
{
  v14 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (v14)
  {
    v18 = 1;
    v15 = v14;
    v16 = sub_2331E511C(&v18);

    MEMORY[0x28223BE20](v17);
    sub_23328DF5C();
  }

  else
  {
    __break(1u);
  }
}

void sub_233193780(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, float a10, float a11, float a12, float a13, uint64_t a14)
{
  type metadata accessor for TTSVBLocalVoiceSampleMO();
  v26 = static TTSVBLocalVoiceSampleMO.requireSampleWithID(_:voiceID:moc:)(a1, a2, a3, a4);
  if (v14)
  {
    return;
  }

  v27 = v26;
  sub_2331B8434(v26, a5, a9);
  if (a6 < -32768)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a6 >= 0x8000)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v27 setUserScore:a6];
  *&v28 = a10;
  [v27 setSpl:v28];
  *&v29 = a11;
  [v27 setSplThreshold:v29];
  *&v30 = a12;
  [v27 setSnr:v30];
  *&v31 = a13;
  [v27 setSnrThreshold:v31];
  v32 = sub_23328D95C();
  [v27 setUserPhrase:v32];

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v39 - v34;
  sub_233121D34(a14, &v39 - v34, &qword_27DDE1A18, &unk_233297730);
  v36 = sub_23328CE1C();
  v37 = *(v36 - 8);
  v38 = 0;
  if ((*(v37 + 48))(v35, 1, v36) != 1)
  {
    v38 = sub_23328CD9C();
    (*(v37 + 8))(v35, v36);
  }

  [v27 setRecordingDate:v38];

  NSManagedObjectContext.trySave()();
}

uint64_t sub_233193A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  v8[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v8[7] = swift_task_alloc();
  v10 = swift_task_alloc();
  v8[8] = v10;
  *v10 = v8;
  v10[1] = sub_233193AFC;

  return static TTSVBAudioTools.audioDurationForAudioFileSync(_:)(a4);
}

uint64_t sub_233193AFC(double a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_233193D44;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_233193C20;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_233193C20()
{
  v10 = v0;
  v1 = *(v0 + 72);
  (*(v0 + 16))(*(v0 + 80));
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  if (v1)
  {
    sub_2331524CC(&v6);
    v8 = v6;
    v9 = v7;
    static TTSVBError.map(_:_:)(v1, &v8, v2);
    sub_2331220AC(v8, *(&v8 + 1), v9);
    swift_storeEnumTagMultiPayload();
    v3(v2);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v3(v2);
  }

  sub_233121E04(*(v0 + 56), &unk_27DDE25D0, &unk_233290330);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_233193D44()
{
  v10 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];
  sub_2331524CC(&v6);
  v8 = v6;
  v9 = v7;
  static TTSVBError.map(_:_:)(v1, &v8, v2);
  sub_2331220AC(v8, *(&v8 + 1), v9);
  swift_storeEnumTagMultiPayload();
  v3(v2);

  sub_233121E04(v0[7], &unk_27DDE25D0, &unk_233290330);

  v4 = v0[1];

  return v4();
}

uint64_t sub_233193E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2958, &qword_233299A38);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_233121D34(a3, v25 - v10, &qword_27DDE2958, &qword_233299A38);
  v12 = sub_23328DCBC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_233121E04(v11, &qword_27DDE2958, &qword_233299A38);
  }

  else
  {
    sub_23328DCAC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23328DC7C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23328DA0C() + 32;
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

      sub_233121E04(a3, &qword_27DDE2958, &qword_233299A38);

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

  sub_233121E04(a3, &qword_27DDE2958, &qword_233299A38);
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

uint64_t sub_233194154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a7;
  v21 = a5;
  v12 = sub_23328CE8C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  (*(v13 + 16))(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12, v15);
  v16 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v7;
  *(v17 + 3) = a1;
  *(v17 + 4) = a2;
  (*(v13 + 32))(&v17[v16], &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v18 = v7;

  sub_233178950(v20, v17, a4, v21, &unk_284875498, sub_2331BDE5C, &block_descriptor_572);
}

void sub_2331942D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_23328D83C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7, v9);
  v13 = v12;
  LOBYTE(v12) = sub_23328D85C();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v14 = *(v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
    if (v14)
    {
      v19 = 1;
      v15 = v14;
      v16 = sub_2331E511C(&v19);

      MEMORY[0x28223BE20](v17);
      *(&v18 - 4) = v16;
      *(&v18 - 3) = a1;
      *(&v18 - 2) = a2;
      *(&v18 - 1) = a3;
      sub_23328DF5C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2331944A4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v28);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_23328D6EC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTSVBLocalVoiceMO();
  v36 = a2;
  v30 = a2;
  v31 = a3;
  if (static DSO<>.count(in:configure:)(a1, sub_2331BB9AC, v29, v14, &protocol witness table for TTSVBLocalVoiceMO) < 1)
  {
    sub_23310BA90(&v34);
    v32 = v34;
    v33 = v35;
    v22 = v27;
    v23 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(a4, a1, &v32);
    sub_2331220AC(v32, *(&v32 + 1), v33);
    if (!v22)
    {
      v24 = sub_23328D95C();
      [v23 setName_];

      NSManagedObjectContext.trySave()();
    }
  }

  else
  {
    v15 = sub_233225440();
    (*(v11 + 16))(v13, v15, v10);

    v16 = sub_23328D6CC();
    v17 = sub_23328DE1C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v27 = a3;
      v19 = v18;
      v20 = swift_slowAlloc();
      *&v34 = v20;
      *v19 = 136315138;
      v21 = v36;
      *(v19 + 4) = sub_23311A8F4(v36, v27, &v34);
      _os_log_impl(&dword_233109000, v16, v17, "Datastore already contains voice with name: %s. Bailing on create voice", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23839CFD0](v20, -1, -1);
      a3 = v27;
      MEMORY[0x23839CFD0](v19, -1, -1);

      (*(v11 + 8))(v13, v10);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
      v21 = v36;
    }

    v34 = xmmword_2332991C0;
    v35 = 3;
    *v9 = v21;
    v9[1] = a3;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    v26 = v25;

    TTSVBError.init(_:_:_:)(&v34, v9, 0, v26);
    swift_willThrow();
  }
}

void sub_23319486C(uint64_t a1)
{
  v3 = sub_23328D83C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3, v5);
  v9 = v8;
  v10 = sub_23328D85C();
  (*(v4 + 8))(v7, v3);
  if (v10)
  {
    v11 = sub_23317503C();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2331BB0E4;
    *(v12 + 24) = a1;
    aBlock[4] = sub_2331BB218;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23317E0C8;
    aBlock[3] = &block_descriptor_368;
    v13 = _Block_copy(aBlock);

    [v11 getAllTasksReplyOnQueue:v9 statusHandler:v13];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_233194A5C(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v63 = a3;
  v64 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v61);
  v5 = &v60 - v4;
  v6 = sub_23328D6EC();
  v65 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v60 - v10;
  MEMORY[0x28223BE20](v11);
  v14 = &v60 - v13;
  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23328E19C())
  {
    v62 = v5;
    if (!i)
    {
      break;
    }

    v5 = 0;
    v16 = a1 & 0xC000000000000001;
    v75 = a1 & 0xFFFFFFFFFFFFFF8;
    v71 = (v65 + 8);
    v72 = (v65 + 16);
    *&v12 = 136315394;
    v66 = v12;
    v69 = v6;
    v70 = a1;
    v67 = v14;
    v68 = v8;
    v73 = a1 & 0xC000000000000001;
    v74 = i;
    do
    {
      if (v16)
      {
        v18 = MEMORY[0x23839BFC0](v5, a1);
      }

      else
      {
        if (v5 >= *(v75 + 16))
        {
          goto LABEL_37;
        }

        v18 = *(a1 + 8 * v5 + 32);
      }

      v19 = v18;
      v20 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v21 = sub_233225514();
      (*v72)(v14, v21, v6);
      v22 = v19;
      v23 = sub_23328D6CC();
      v24 = sub_23328DE4C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v77 = v26;
        *v25 = v66;
        v27 = [v22 taskID];
        v28 = sub_23328D98C();
        v30 = v29;

        v31 = sub_23311A8F4(v28, v30, &v77);

        *(v25 + 4) = v31;
        *(v25 + 12) = 2080;
        v32 = TTSVBSiriTTSTrainerTaskStatusDescription([v22 status]);
        v33 = sub_23328D98C();
        v35 = v34;

        v36 = v33;
        v6 = v69;
        v37 = sub_23311A8F4(v36, v35, &v77);
        v8 = v68;

        *(v25 + 14) = v37;
        v14 = v67;
        _os_log_impl(&dword_233109000, v23, v24, "Existing task: %s - %s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23839CFD0](v26, -1, -1);
        v38 = v25;
        a1 = v70;
        MEMORY[0x23839CFD0](v38, -1, -1);
      }

      (*v71)(v14, v6);
      ++v5;
      v16 = v73;
      v17 = v74;
    }

    while (v20 != v74);
    v5 = 0;
    v77 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v16)
      {
        v39 = MEMORY[0x23839BFC0](v5, a1);
      }

      else
      {
        if (v5 >= *(v75 + 16))
        {
          goto LABEL_39;
        }

        v39 = *(a1 + 8 * v5 + 32);
      }

      v40 = v39;
      v14 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v39 isUnfinishedOrPending])
      {
        sub_23328E2BC();
        sub_23328E2EC();
        a1 = v70;
        sub_23328E2FC();
        sub_23328E2CC();
      }

      else
      {
      }

      ++v5;
      if (v14 == v17)
      {
        v41 = v77;
        goto LABEL_25;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  v41 = MEMORY[0x277D84F90];
LABEL_25:
  v42 = v41 < 0 || (v41 & 0x4000000000000000) != 0;
  if (v42)
  {
    if (sub_23328E19C())
    {
      goto LABEL_30;
    }
  }

  else if (*(v41 + 16))
  {
LABEL_30:
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD000000000000026, 0x80000002332A8890);
    if (v42)
    {
      v43 = sub_23328E19C();
    }

    else
    {
      v43 = *(v41 + 16);
    }

    v76 = v43;
    v44 = sub_23328E51C();
    MEMORY[0x23839B7E0](v44);

    MEMORY[0x23839B7E0](0xD000000000000016, 0x80000002332A88C0);
    v45 = v77;
    v46 = v78;
    v47 = sub_233225514();
    v48 = v65;
    (*(v65 + 16))(v8, v47, v6);

    v49 = sub_23328D6CC();
    v50 = sub_23328DE3C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v77 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_23311A8F4(v45, v46, &v77);
      _os_log_impl(&dword_233109000, v49, v50, "%s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x23839CFD0](v52, -1, -1);
      MEMORY[0x23839CFD0](v51, -1, -1);
    }

    (*(v48 + 8))(v8, v6);
    v53 = v62;
    TTSVBError.init(_:_:_:)(v45, v46, 0, 0, 0, v62);
    goto LABEL_45;
  }

  v54 = sub_233225514();
  v55 = v60;
  (*(v65 + 16))(v60, v54, v6);
  v56 = sub_23328D6CC();
  v57 = sub_23328DE4C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_233109000, v56, v57, "No pending training exist. Will proceed with new training request", v58, 2u);
    MEMORY[0x23839CFD0](v58, -1, -1);
  }

  (*(v65 + 8))(v55, v6);
  v53 = v62;
LABEL_45:
  swift_storeEnumTagMultiPayload();
  v64(v53);
  return sub_233121E04(v53, &unk_27DDE25D0, &unk_233290330);
}

TextToSpeechVoiceBankingSupport::TTSVBVoiceBankingManager::TrainingDataSource_optional __swiftcall TTSVBVoiceBankingManager.TrainingDataSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23328E37C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t TTSVBVoiceBankingManager.TrainingDataSource.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6F63655272657375;
  }
}

uint64_t sub_233195298(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x6F63655272657375;
  }

  if (v2)
  {
    v4 = 0xEE0073676E696472;
  }

  else
  {
    v4 = 0x80000002332A7F50;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6F63655272657375;
  }

  if (*a2)
  {
    v6 = 0x80000002332A7F50;
  }

  else
  {
    v6 = 0xEE0073676E696472;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23328E54C();
  }

  return v8 & 1;
}

uint64_t sub_233195350()
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2331953E4(uint64_t a1)
{
  sub_23328DA3C();
}

uint64_t sub_233195464(uint64_t a1)
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2331954F4@<X0>(char *a2@<X8>)
{
  v3 = sub_23328E37C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_233195554(unint64_t *a1@<X8>)
{
  v2 = 0x80000002332A7F50;
  v3 = 0x6F63655272657375;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEE0073676E696472;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t TTSVBVoiceBankingManager.train(voiceID:mode:startImmediately:trainingDataSource:validateTrainingSamples:overrideMinimumPhraseCount:completion:)(uint64_t *a1, uint64_t a2, int a3, unsigned __int8 *a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v87 = a8;
  LODWORD(v81) = a7;
  v98 = a6;
  LODWORD(v80) = a5;
  LODWORD(v79) = a3;
  v12 = sub_23328D7CC();
  v92 = *(v12 - 8);
  v93 = v12;
  MEMORY[0x28223BE20](v12);
  v90 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_23328D80C();
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v88 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23328D6EC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *a4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v82 = *(v19 - 8);
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v73 - v20;
  v22 = sub_23328CE8C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v96 = v21;
  v24(v21, 1, 1, v22);
  v25 = sub_233225514();
  v75 = v16;
  v26 = *(v16 + 16);
  v76 = v15;
  v27 = v26(v18, v25, v15);
  v28 = *(v23 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v30 = *(v23 + 16);
  v86 = a1;
  v78 = v23 + 16;
  v77 = v30;
  v30(&v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v22, v29);
  v31 = sub_23328D6CC();
  v32 = v98;
  v33 = v31;
  v34 = sub_23328DE4C();
  v35 = os_log_type_enabled(v33, v34);
  v95 = a2;
  v85 = v22;
  v84 = v23;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    aBlock[0] = v74;
    *v36 = 136316418;
    v37 = sub_23328CE3C();
    v39 = v38;
    (*(v23 + 8))(&v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
    v40 = sub_23311A8F4(v37, v39, aBlock);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2048;
    *(v36 + 22) = 1024;
    *(v36 + 24) = v79 & 1;
    v41 = v80;
    *(v36 + 28) = 1024;
    *(v36 + 30) = v41 & 1;
    v42 = v98;
    if (v81)
    {
      v42 = -1;
    }

    *(v36 + 14) = v95;
    *(v36 + 34) = 2048;
    *(v36 + 36) = v42;
    *(v36 + 44) = 2080;
    if (v97)
    {
      v43 = 0xD000000000000011;
    }

    else
    {
      v43 = 0x6F63655272657375;
    }

    if (v97)
    {
      v44 = 0x80000002332A7F50;
    }

    else
    {
      v44 = 0xEE0073676E696472;
    }

    v45 = sub_23311A8F4(v43, v44, aBlock);

    *(v36 + 46) = v45;
    _os_log_impl(&dword_233109000, v33, v34, "Got request to train voiceID=%s mode=%ld startImmediately=%{BOOL}d validateTrainingSamples=%{BOOL}d overrideMinimumPhraseCount=%ld trainingDataSource=%s", v36, 0x36u);
    v46 = v74;
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v46, -1, -1);
    v32 = v98;
    MEMORY[0x23839CFD0](v36, -1, -1);

    v47 = (*(v75 + 8))(v18, v76);
    a2 = v95;
  }

  else
  {

    (*(v23 + 8))(&v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
    v47 = (*(v75 + 8))(v18, v76);
  }

  v80 = a9;
  MEMORY[0x28223BE20](v47);
  v48 = v86;
  *(&v73 - 6) = v86;
  *(&v73 - 5) = a2;
  LODWORD(v76) = v49 & 1;
  *(&v73 - 32) = v49 & 1;
  LODWORD(v75) = v50 & 1;
  *(&v73 - 31) = v50 & 1;
  *(&v73 - 3) = v32;
  LODWORD(v74) = v51 & 1;
  *(&v73 - 16) = v51 & 1;
  *(&v73 - 15) = v97;
  v52 = sub_233175210();
  if (v52)
  {
    MEMORY[0x28223BE20](v52);
    *(&v73 - 2) = sub_2331B3F84;
    *(&v73 - 1) = (&v73 - 8);
    sub_23328D2BC();
  }

  v81 = &v73;
  v53 = v94;
  v79 = *&v94[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v54 = MEMORY[0x28223BE20](v52);
  v55 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v85;
  v57 = v77(v55, v48, v85, v54);
  v86 = &v73;
  v58 = v83;
  MEMORY[0x28223BE20](v57);
  sub_233121D34(v96, &v73 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27DDE19B0, &qword_233290370);
  v59 = v84;
  v60 = (*(v84 + 80) + 50) & ~*(v84 + 80);
  v61 = v60 + v28;
  v62 = (*(v82 + 80) + v61 + 1) & ~*(v82 + 80);
  v63 = swift_allocObject();
  v64 = v95;
  *(v63 + 16) = v53;
  *(v63 + 24) = v64;
  *(v63 + 32) = v76;
  *(v63 + 40) = v98;
  *(v63 + 48) = v74;
  *(v63 + 49) = v75;
  (*(v59 + 32))(v63 + v60, v55, v56);
  *(v63 + v61) = v97;
  sub_233121D9C(&v73 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0), v63 + v62, &qword_27DDE19B0, &qword_233290370);
  v65 = (v63 + ((v58 + v62 + 7) & 0xFFFFFFFFFFFFFFF8));
  v66 = v80;
  *v65 = v87;
  v65[1] = v66;
  aBlock[4] = sub_2331B3F88;
  aBlock[5] = v63;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_140;
  v67 = _Block_copy(aBlock);
  v68 = v53;

  v69 = v88;
  sub_23328D7DC();
  v99 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  v70 = v90;
  v71 = v93;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v69, v70, v67);
  _Block_release(v67);
  (*(v92 + 8))(v70, v71);
  (*(v89 + 8))(v69, v91);
  sub_233121E04(v96, &qword_27DDE19B0, &qword_233290370);
}

uint64_t sub_233195FE4(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332A8C00);
  v9 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v9);

  MEMORY[0x23839B7E0](0x3D65646F6D20, 0xE600000000000000);
  v10 = sub_23328E51C();
  MEMORY[0x23839B7E0](v10);

  MEMORY[0x23839B7E0](0xD000000000000012, 0x80000002332A8C20);
  if (a3)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (a3)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x23839B7E0](v11, v12);

  MEMORY[0x23839B7E0](0xD000000000000019, 0x80000002332A8C40);
  if (a4)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (a4)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x23839B7E0](v13, v14);

  MEMORY[0x23839B7E0](0xD00000000000001CLL, 0x80000002332A8C60);
  v15 = sub_23328E51C();
  MEMORY[0x23839B7E0](v15);

  MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332A8C80);
  if (a7)
  {
    v16 = 0xD000000000000011;
  }

  else
  {
    v16 = 0x6F63655272657375;
  }

  if (a7)
  {
    v17 = 0x80000002332A7F50;
  }

  else
  {
    v17 = 0xEE0073676E696472;
  }

  MEMORY[0x23839B7E0](v16, v17);

  return 0;
}

uint64_t sub_23319624C(void *a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36 = a6;
  v37 = a8;
  v35 = a5;
  v34 = a4;
  v33 = a3;
  v31 = a1;
  v32 = a2;
  v38 = a10;
  v39 = a11;
  v12 = sub_23328CE8C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a7, v12, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v21 = &v31 - v20;
  sub_233121D34(a9, &v31 - v20, &qword_27DDE19B0, &qword_233290370);
  v22 = (*(v13 + 80) + 50) & ~*(v13 + 80);
  v23 = v22 + v14;
  v24 = (*(v18 + 80) + v23 + 1) & ~*(v18 + 80);
  v25 = swift_allocObject();
  v26 = v31;
  *(v25 + 16) = v32;
  *(v25 + 24) = v26;
  *(v25 + 32) = v33;
  *(v25 + 40) = v34;
  *(v25 + 48) = v35 & 1;
  *(v25 + 49) = v36;
  (*(v13 + 32))(v25 + v22, v16, v12);
  *(v25 + v23) = v37 & 1;
  sub_233121D9C(v21, v25 + v24, &qword_27DDE19B0, &qword_233290370);
  v27 = (v25 + ((v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v28 = v39;
  *v27 = v38;
  v27[1] = v28;
  v29 = v26;

  sub_23319486C(v25);
}

unsigned __int8 *sub_2331964C8(uint64_t a1, uint64_t a2, char *a3, int a4, NSObject *a5, int a6, int a7, uint64_t (*a8)(char *, char *, uint64_t), unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v479 = a8;
  LODWORD(v481) = a7;
  LODWORD(v480) = a6;
  v477 = a5;
  v475 = a4;
  v493 = a12;
  v494 = a3;
  v492 = a11;
  v14 = sub_23328D7CC();
  v490 = *(v14 - 8);
  v491 = v14;
  MEMORY[0x28223BE20](v14);
  v488 = v437 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v489 = sub_23328D80C();
  v487 = *(v489 - 1);
  MEMORY[0x28223BE20](v489);
  v486 = v437 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v448 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v448);
  v449 = (v437 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v468 = type metadata accessor for TTSVBPath(0);
  MEMORY[0x28223BE20](v468);
  v469 = v437 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v482 = type metadata accessor for TTSVBVoiceModel(0);
  v478 = *(v482 - 8);
  MEMORY[0x28223BE20](v482);
  v453 = v437 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v451 = v437 - v21;
  MEMORY[0x28223BE20](v22);
  v454 = v437 - v23;
  MEMORY[0x28223BE20](v24);
  v457 = v437 - v25;
  MEMORY[0x28223BE20](v26);
  v447 = (v437 - v27);
  MEMORY[0x28223BE20](v28);
  v467 = v437 - v29;
  MEMORY[0x28223BE20](v30);
  v465 = (v437 - v31);
  MEMORY[0x28223BE20](v32);
  v476 = v437 - v33;
  v452 = v34;
  MEMORY[0x28223BE20](v35);
  v470 = v437 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  MEMORY[0x28223BE20](v37 - 8);
  v473 = v437 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v472 = v437 - v40;
  MEMORY[0x28223BE20](v41);
  v462 = (v437 - v42);
  MEMORY[0x28223BE20](v43);
  v483 = v437 - v44;
  v484 = sub_23328D6EC();
  v485 = *(v484 - 8);
  MEMORY[0x28223BE20](v484);
  v450 = v437 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v455 = v437 - v47;
  MEMORY[0x28223BE20](v48);
  v456 = v437 - v49;
  MEMORY[0x28223BE20](v50);
  v458 = v437 - v51;
  MEMORY[0x28223BE20](v52);
  v459 = v437 - v53;
  MEMORY[0x28223BE20](v54);
  v463 = v437 - v55;
  MEMORY[0x28223BE20](v56);
  v466 = v437 - v57;
  MEMORY[0x28223BE20](v58);
  v474 = v437 - v59;
  MEMORY[0x28223BE20](v60);
  *&v471 = v437 - v61;
  MEMORY[0x28223BE20](v62);
  v64 = v437 - v63;
  MEMORY[0x28223BE20](v65);
  v461 = v437 - v66;
  MEMORY[0x28223BE20](v67);
  v464 = v437 - v68;
  MEMORY[0x28223BE20](v69);
  v460 = v437 - v70;
  MEMORY[0x28223BE20](v71);
  v73 = v437 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v74);
  v76 = v437 - v75;
  v77 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v77);
  v79 = v437 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_233121D34(a1, v76, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331BDDC4(v76, v79, type metadata accessor for TTSVBError);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v80 = swift_allocError();
    sub_2331BDBEC(v79, v81, type metadata accessor for TTSVBError);
    swift_willThrow();
    sub_2331BDC54(v79, type metadata accessor for TTSVBError);
LABEL_4:
    v82 = swift_allocObject();
    v83 = v493;
    v82[2] = v492;
    v82[3] = v83;
    v82[4] = v80;
    v502 = sub_2331BE6E0;
    v503 = v82;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v500 = sub_2331221F8;
    v501 = &block_descriptor_374;
    v84 = _Block_copy(&aBlock);

    v85 = v80;
    v86 = v486;
    sub_23328D7DC();
    v496 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
    v87 = v488;
    v88 = v491;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v86, v87, v84);
    _Block_release(v84);

    (v490[1])(v87, v88);
    (*(v487 + 8))(v86, v489);
  }

  v446 = v77;
  sub_233121E04(v76, &unk_27DDE25D0, &unk_233290330);
  TTSVBRequireDiskSpaceAvailableForTraining(inMode:)(a2);
  v89 = v494;
  v445 = TTSVBVoiceBankingManager.audioService.getter();
  result = sub_2331C4568();
  v91 = *&v89[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  if (!v91)
  {
    __break(1u);
    goto LABEL_116;
  }

  v443 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore;
  *&v441 = *result;
  v440 = result[1];
  v92 = *(result + 1);
  LOBYTE(aBlock) = 1;
  *(&v441 + 1) = v92;
  v93 = v92;
  v94 = v91;
  v95 = sub_2331E511C(&aBlock);

  v96 = v484;
  if (a2 == 2)
  {
    v97 = sub_233225514();
    (*(v485 + 16))(v73, v97, v96);
    v98 = sub_23328D6CC();
    v99 = sub_23328DE4C();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_233109000, v98, v99, "requested training mode is PV2. Will force training to start immediately", v100, 2u);
      v101 = v100;
      v96 = v484;
      MEMORY[0x23839CFD0](v101, -1, -1);
    }

    (*(v485 + 8))(v73, v96);
    v475 = 1;
  }

  if (v480)
  {
    LOBYTE(aBlock) = a2 == 2;
    v477 = TTSVBMinimumUserPhraseCount(forExperience:)(&aBlock);
  }

  LODWORD(aBlock) = 0;
  sub_2331BB220();
  sub_23328E6FC();
  if (v481)
  {
    LOBYTE(aBlock) = a9 & 1;
    v102 = TTSVBVoiceBankingManager.recordedPhraseCount(forVoice:validDataOnly:trainingDataSource:)(v479, 1, &aBlock);
    v438 = a9;
    v481 = v93;
    v154 = v477;
    if (v102 >= v477)
    {
      v181 = sub_233225514();
      v182 = v485;
      v183 = v464;
      v480 = *(v485 + 16);
      v480(v464, v181, v96);
      v184 = sub_23328D6CC();
      v185 = sub_23328DE4C();
      v186 = os_log_type_enabled(v184, v185);
      v439 = a2;
      if (v186)
      {
        v187 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        *&aBlock = v188;
        *v187 = 136315394;
        if (v438)
        {
          v189 = 0xD000000000000011;
        }

        else
        {
          v189 = 0x6F63655272657375;
        }

        if (v438)
        {
          v190 = 0x80000002332A7F50;
        }

        else
        {
          v190 = 0xEE0073676E696472;
        }

        v191 = v95;
        v192 = sub_23311A8F4(v189, v190, &aBlock);

        *(v187 + 4) = v192;
        v95 = v191;
        *(v187 + 12) = 2048;
        *(v187 + 14) = v154;
        _os_log_impl(&dword_233109000, v184, v185, "validateTrainingSamples=true, trainingDataSource=%s and validPhraseCount is greater than minimum required=%ld", v187, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v188);
        v193 = v188;
        v96 = v484;
        MEMORY[0x23839CFD0](v193, -1, -1);
        MEMORY[0x23839CFD0](v187, -1, -1);

        v194 = *(v182 + 8);
        v194(v464, v96);
      }

      else
      {

        v194 = *(v182 + 8);
        v194(v183, v96);
      }

      v114 = v483;
    }

    else
    {
      v155 = v95;
      v156 = v102;
      LOBYTE(aBlock) = a9 & 1;
      v157 = TTSVBVoiceBankingManager.recordedPhraseCount(forVoice:validDataOnly:trainingDataSource:)(v479, 0, &aBlock);
      v242 = v157;
      v243 = v477;
      if (v157 < v477)
      {
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_23328E24C();
        MEMORY[0x23839B7E0](0xD00000000000004BLL, 0x80000002332A8980);
        v496 = v242;
        v244 = sub_23328E51C();
        MEMORY[0x23839B7E0](v244);

        MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A89D0);
        v496 = v243;
        v245 = sub_23328E51C();
        MEMORY[0x23839B7E0](v245);

        MEMORY[0x23839B7E0](0xD000000000000015, 0x80000002332A89F0);
        if (v438)
        {
          v246 = 0xD000000000000011;
        }

        else
        {
          v246 = 0x6F63655272657375;
        }

        if (v438)
        {
          v247 = 0x80000002332A7F50;
        }

        else
        {
          v247 = 0xEE0073676E696472;
        }

        MEMORY[0x23839B7E0](v246, v247);

        v248 = aBlock;
        sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
        v80 = swift_allocError();
        TTSVBError.init(_:_:_:)(v248, *(&v248 + 1), 0, 0, 0, v249);
        swift_willThrow();

        goto LABEL_4;
      }

      v257 = sub_233225514();
      v258 = v485;
      v259 = v460;
      v480 = *(v485 + 16);
      v480(v460, v257, v96);
      v260 = sub_23328D6CC();
      v261 = sub_23328DE4C();
      v262 = os_log_type_enabled(v260, v261);
      v439 = a2;
      if (v262)
      {
        v263 = v258;
        v264 = swift_slowAlloc();
        v265 = swift_slowAlloc();
        *&aBlock = v265;
        *v264 = 134218754;
        *(v264 + 4) = v156;
        *(v264 + 12) = 2048;
        *(v264 + 14) = v477;
        *(v264 + 22) = 2048;
        *(v264 + 24) = v242;
        *(v264 + 32) = 2080;
        if (v438)
        {
          v266 = 0xD000000000000011;
        }

        else
        {
          v266 = 0x6F63655272657375;
        }

        if (v438)
        {
          v267 = 0x80000002332A7F50;
        }

        else
        {
          v267 = 0xEE0073676E696472;
        }

        v268 = sub_23311A8F4(v266, v267, &aBlock);

        *(v264 + 34) = v268;
        _os_log_impl(&dword_233109000, v260, v261, "validPhraseCount=%ld is less than the ideal minimum=%ld, will continue to train with unfilteredPhraseCount=%ld. trainingDataSource=%s", v264, 0x2Au);
        __swift_destroy_boxed_opaque_existential_0(v265);
        v269 = v265;
        v96 = v484;
        MEMORY[0x23839CFD0](v269, -1, -1);
        MEMORY[0x23839CFD0](v264, -1, -1);

        v270 = v263;
      }

      else
      {

        v270 = v258;
      }

      v194 = *(v270 + 8);
      v194(v259, v96);
      v287 = sub_233167A18();
      sub_23319A328(&aBlock, *v287);
      v114 = v483;
      v95 = v155;
    }

    v239 = v479;
    TTSVBVoiceBankingManager.durationOfRecordingData(forVoice:validDataOnly:)(v479, 0);
    v241 = v240;
    TTSVBVoiceBankingManager.durationOfRecordingData(forVoice:validDataOnly:)(v239, 1);
    v442 = 0;
    v272 = v271;
    v273 = sub_233225514();
    v274 = v461;
    v480(v461, v273, v96);
    v275 = sub_23328D6CC();
    v276 = sub_23328DE4C();
    v277 = os_log_type_enabled(v275, v276);
    v444 = v95;
    v460 = v194;
    if (v277)
    {
      v278 = v194;
      v279 = swift_slowAlloc();
      v280 = v96;
      v281 = swift_slowAlloc();
      *&aBlock = v281;
      *v279 = 134218498;
      *(v279 + 4) = v241;
      *(v279 + 12) = 2048;
      *(v279 + 14) = v272;
      *(v279 + 22) = 2080;
      if (v438)
      {
        v282 = 0xD000000000000011;
      }

      else
      {
        v282 = 0x6F63655272657375;
      }

      if (v438)
      {
        v283 = 0x80000002332A7F50;
      }

      else
      {
        v283 = 0xEE0073676E696472;
      }

      v284 = sub_23311A8F4(v282, v283, &aBlock);

      *(v279 + 24) = v284;
      _os_log_impl(&dword_233109000, v275, v276, "Unfiltered training duration=%f | Valid recording duration=%f trainingDataSource=%s", v279, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v281);
      MEMORY[0x23839CFD0](v281, -1, -1);
      MEMORY[0x23839CFD0](v279, -1, -1);

      v278(v461, v280);
    }

    else
    {

      v194(v274, v96);
    }
  }

  else
  {
    v481 = v93;
    v103 = sub_233225514();
    v104 = v485;
    v480 = *(v485 + 16);
    v480(v64, v103, v96);
    v105 = sub_23328D6CC();
    v106 = sub_23328DE4C();
    v107 = os_log_type_enabled(v105, v106);
    v444 = v95;
    v439 = a2;
    v438 = a9;
    v442 = 0;
    if (v107)
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *&aBlock = v109;
      *v108 = 136315138;
      if (a9)
      {
        v110 = 0xD000000000000011;
      }

      else
      {
        v110 = 0x6F63655272657375;
      }

      if (a9)
      {
        v111 = 0x80000002332A7F50;
      }

      else
      {
        v111 = 0xEE0073676E696472;
      }

      v112 = sub_23311A8F4(v110, v111, &aBlock);

      *(v108 + 4) = v112;
      _os_log_impl(&dword_233109000, v105, v106, "validateTrainingSamples=false. Will train with all available data. trainingDataSource=%s", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v109);
      MEMORY[0x23839CFD0](v109, -1, -1);
      MEMORY[0x23839CFD0](v108, -1, -1);

      v113 = *(v104 + 8);
      v113(v64, v484);
    }

    else
    {

      v113 = *(v104 + 8);
      v113(v64, v96);
    }

    v114 = v483;
    v460 = v113;
    v115 = sub_233167A00();
    sub_23319A328(&aBlock, *v115);
  }

  v116 = *(v478 + 56);
  v437[1] = v478 + 56;
  v437[0] = v116;
  v116(v114, 1, 1, v482);
  v117 = sub_23328CE8C();
  v461 = v437;
  v118 = *(v117 - 8);
  v119 = *(v118 + 8);
  MEMORY[0x28223BE20](v117);
  v120 = (v119 + 15) & 0xFFFFFFFFFFFFFFF0;
  v121 = v437 - v120;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  MEMORY[0x28223BE20](v122 - 8);
  v124 = v437 - v123;
  sub_233121D34(a10, v437 - v123, &qword_27DDE19B0, &qword_233290370);
  v464 = v118;
  if ((*(v118 + 6))(v124, 1, v117) == 1)
  {
    v125 = v117;
    result = sub_233121E04(v124, &qword_27DDE19B0, &qword_233290370);
    v126 = *&v494[v443];
    if (v126)
    {
      v127 = v498;
      LOBYTE(aBlock) = 1;
      v128 = v126;
      v129 = sub_2331E511C(&aBlock);

      MEMORY[0x28223BE20](v130);
      v437[-6] = v479;
      v437[-5] = v129;
      v437[-4] = 1;
      LOBYTE(v437[-3]) = 0;
      v435 = v439;
      LODWORD(v436) = v127;
      v131 = v470;
      v132 = v482;
      v133 = v442;
      sub_23328DF5C();
      v80 = v133;
      v134 = v483;
      v135 = v444;
      if (v133)
      {
        sub_233121E04(v483, &qword_27DDE2388, &qword_233297728);

        goto LABEL_4;
      }

      sub_233121E04(v483, &qword_27DDE2388, &qword_233297728);

      v168 = v462;
      sub_2331BDDC4(v131, v462, type metadata accessor for TTSVBVoiceModel);
      (v437[0])(v168, 0, 1, v132);
      sub_233121D9C(v168, v134, &qword_27DDE2388, &qword_233297728);
      v139 = v484;
      v162 = v474;
      v159 = v473;
      v158 = v134;
      v161 = v132;
      goto LABEL_38;
    }

LABEL_116:
    __break(1u);
    return result;
  }

  v136 = v464;
  (*(v464 + 4))(v437 - v120, v124, v117);
  v137 = sub_233225514();
  v138 = v471;
  v139 = v484;
  v140 = (v480)(v471, v137, v484);
  v141 = MEMORY[0x28223BE20](v140);
  v142 = v437 - v120;
  v143 = v136;
  v144 = v138;
  v143[2](v437 - v120, v437 - v120, v117, v141);
  v145 = sub_23328D6CC();
  v146 = sub_23328DE4C();
  if (os_log_type_enabled(v145, v146))
  {
    v147 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v470 = v121;
    v149 = v148;
    *&aBlock = v148;
    *v147 = 136315138;
    sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
    v150 = sub_23328E51C();
    v152 = v151;
    v479 = *(v464 + 1);
    (v479)(v142, v117);
    v153 = sub_23311A8F4(v150, v152, &aBlock);
    v139 = v484;

    *(v147 + 4) = v153;
    _os_log_impl(&dword_233109000, v145, v146, "Existing model ID was specified. Attempting to re-use model. %s", v147, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v149);
    v121 = v470;
    MEMORY[0x23839CFD0](v149, -1, -1);
    MEMORY[0x23839CFD0](v147, -1, -1);
  }

  else
  {

    v479 = *(v464 + 1);
    (v479)(v142, v117);
  }

  (v460)(v144, v139);
  v158 = v483;
  v125 = v117;
  v159 = v473;
  type metadata accessor for TTSVBLocalVoiceModelMO();
  v135 = v444;
  v160 = static TTSVBLocalVoiceModelMO.findOrFetch(modelID:moc:)(v121, v444);
  v161 = v482;
  v162 = v474;
  if (v160)
  {
    v163 = v160;
    v164 = v482;
    v165 = v158;
    v166 = v472;
    (*((*MEMORY[0x277D85000] & *v160) + 0x58))(0);

    v167 = v166;
    v158 = v165;
    v161 = v164;
    (v479)(v121, v125);
    sub_233121E04(v158, &qword_27DDE2388, &qword_233297728);
  }

  else
  {
    (v479)(v121, v125);
    sub_233121E04(v158, &qword_27DDE2388, &qword_233297728);
    v167 = v472;
    (v437[0])(v472, 1, 1, v161);
  }

  sub_233121D9C(v167, v158, &qword_27DDE2388, &qword_233297728);
  v80 = v442;
LABEL_38:
  sub_233121D34(v158, v159, &qword_27DDE2388, &qword_233297728);
  if ((*(v478 + 48))(v159, 1, v161) == 1)
  {
    sub_233121E04(v158, &qword_27DDE2388, &qword_233297728);

    return sub_233121E04(v159, &qword_27DDE2388, &qword_233297728);
  }

  else
  {
    v470 = v125;
    v169 = v476;
    sub_2331BDDC4(v159, v476, type metadata accessor for TTSVBVoiceModel);
    v473 = sub_233225514();
    v472 = (v485 + 16);
    (v480)(v162);
    v170 = v465;
    sub_2331BDBEC(v169, v465, type metadata accessor for TTSVBVoiceModel);
    v171 = sub_23328D6CC();
    v172 = sub_23328DE4C();
    v173 = os_log_type_enabled(v171, v172);
    v444 = v135;
    if (v173)
    {
      v174 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      *&aBlock = v175;
      *v174 = 136315138;
      v176 = *v170;
      v177 = v170[1];

      sub_2331BDC54(v170, type metadata accessor for TTSVBVoiceModel);
      v178 = sub_23311A8F4(v176, v177, &aBlock);

      *(v174 + 4) = v178;
      _os_log_impl(&dword_233109000, v171, v172, "Training new model for '%s'", v174, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v175);
      v179 = v175;
      v139 = v484;
      MEMORY[0x23839CFD0](v179, -1, -1);
      MEMORY[0x23839CFD0](v174, -1, -1);

      v180 = v474;
    }

    else
    {

      sub_2331BDC54(v170, type metadata accessor for TTSVBVoiceModel);
      v180 = v162;
    }

    v195 = v460;
    (v460)(v180, v139);
    v196 = v466;
    v480(v466, v473, v139);
    v197 = v467;
    sub_2331BDBEC(v476, v467, type metadata accessor for TTSVBVoiceModel);
    v198 = sub_23328D6CC();
    v199 = sub_23328DE4C();
    if (os_log_type_enabled(v198, v199))
    {
      v200 = v195;
      v201 = v196;
      v202 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      *&aBlock = v203;
      *v202 = 136315138;
      v204 = sub_23328CE3C();
      v206 = v205;
      sub_2331BDC54(v197, type metadata accessor for TTSVBVoiceModel);
      v207 = sub_23311A8F4(v204, v206, &aBlock);

      *(v202 + 4) = v207;
      _os_log_impl(&dword_233109000, v198, v199, "Created model instance %s", v202, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v203);
      v208 = v203;
      v139 = v484;
      MEMORY[0x23839CFD0](v208, -1, -1);
      MEMORY[0x23839CFD0](v202, -1, -1);

      v200(v201, v139);
    }

    else
    {

      sub_2331BDC54(v197, type metadata accessor for TTSVBVoiceModel);
      v195(v196, v139);
    }

    v209 = sub_23328CC9C();
    v474 = v437;
    v479 = v209;
    v210 = *(v209 - 1);
    v211 = *(v210 + 64);
    MEMORY[0x28223BE20](v209);
    v212 = (v211 + 15) & 0xFFFFFFFFFFFFFFF0;
    v213 = (v437 - v212);
    v214 = v476;
    v215 = v469;
    sub_2331BDBEC(v476, v469, type metadata accessor for TTSVBVoiceModel);
    swift_storeEnumTagMultiPayload();
    TTSVBPath.url.getter(v437 - v212);
    sub_2331BDC54(v215, type metadata accessor for TTSVBPath);
    v216 = sub_2331DEBE8();
    v496 = *v216;
    v471 = xmmword_233299220;
    aBlock = xmmword_233299220;
    LOBYTE(v500) = 3;
    v217 = v496;
    _TTSVBFileManager.createDirectoryIfNeeded(_:attributes:deleteAndRecreateIfExists:problem:)(v437 - v212, 0, 1, &aBlock);
    if (v80)
    {

      (*(v210 + 8))(v437 - v212, v479);
      sub_233121E04(v483, &qword_27DDE2388, &qword_233297728);
      sub_2331BDC54(v214, type metadata accessor for TTSVBVoiceModel);
      goto LABEL_4;
    }

    v468 = v216;

    v218 = v210;
    v219 = v463;
    v220 = (v480)(v463, v473, v139);
    v466 = v437;
    v469 = v211;
    v221 = MEMORY[0x28223BE20](v220);
    v222 = v437 - v212;
    v223 = *(v218 + 16);
    v224 = v479;
    v464 = (v218 + 16);
    v462 = v223;
    (v223)(v222, v213, v479, v221);
    v225 = sub_23328D6CC();
    v226 = sub_23328DE4C();
    v227 = os_log_type_enabled(v225, v226);
    v467 = v218;
    if (v227)
    {
      v228 = swift_slowAlloc();
      v465 = v213;
      v229 = v228;
      v230 = swift_slowAlloc();
      *&aBlock = v230;
      *v229 = 136315138;
      v231 = sub_23328CC6C();
      v233 = v232;
      v234 = *(v218 + 8);
      v234(v222, v224);
      v235 = sub_23311A8F4(v231, v233, &aBlock);

      *(v229 + 4) = v235;
      _os_log_impl(&dword_233109000, v225, v226, "Using staging directory: %s", v229, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v230);
      MEMORY[0x23839CFD0](v230, -1, -1);
      v236 = v229;
      v213 = v465;
      MEMORY[0x23839CFD0](v236, -1, -1);

      v237 = v463;
      v238 = v484;
    }

    else
    {

      v234 = *(v218 + 8);
      v234(v222, v224);
      v237 = v219;
      v238 = v139;
    }

    v250 = (v460)(v237, v238);
    v251 = v469;
    MEMORY[0x28223BE20](v250);
    v252 = (v251 + 15) & 0xFFFFFFFFFFFFFFF0;
    v253 = v468;
    v496 = *v468;
    aBlock = 0uLL;
    LOBYTE(v500) = -1;
    v254 = v496;
    _TTSVBFileManager.getOrCreateDirectory(in:named:attributes:problem:)(v213, 7103853, 0xE300000000000000, 0, &aBlock, v437 - v252);

    v466 = (v467 + 8);
    v255 = (v234)(v437 - v252, v479);
    MEMORY[0x28223BE20](v255);
    v496 = *v253;
    aBlock = 0uLL;
    LOBYTE(v500) = -1;
    v256 = v496;
    _TTSVBFileManager.getOrCreateDirectory(in:named:attributes:problem:)(v213, 0x5F65636E656C6973, 0xEF64656D6D697274, 0, &aBlock, v437 - v252);

    v285 = (v234)(v437 - v252, v479);
    v463 = v437;
    MEMORY[0x28223BE20](v285);
    TTSVBVoiceModel.url.getter(v437 - v252);
    v496 = *v253;
    aBlock = v471;
    LOBYTE(v500) = 3;
    v286 = v496;
    _TTSVBFileManager.createDirectoryIfNeeded(_:attributes:deleteAndRecreateIfExists:problem:)(v437 - v252, 0, 1, &aBlock);
    *&v471 = v234;
    v465 = v213;

    v288 = v459;
    v289 = v484;
    v290 = (v480)(v459, v473);
    v461 = v437;
    v291 = MEMORY[0x28223BE20](v290);
    v292 = v437 - v252;
    v468 = (v437 - v252);
    (v462)(v437 - v252, v437 - v252, v479, v291);
    v293 = sub_23328D6CC();
    v294 = sub_23328DE4C();
    if (os_log_type_enabled(v293, v294))
    {
      v295 = swift_slowAlloc();
      v296 = swift_slowAlloc();
      *&aBlock = v296;
      *v295 = 136315138;
      v297 = sub_23328CC6C();
      v299 = v298;
      (v471)(v292, v479);
      v300 = sub_23311A8F4(v297, v299, &aBlock);
      v301 = v476;

      *(v295 + 4) = v300;
      _os_log_impl(&dword_233109000, v293, v294, "Using voice directory: %s", v295, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v296);
      MEMORY[0x23839CFD0](v296, -1, -1);
      MEMORY[0x23839CFD0](v295, -1, -1);

      v302 = v289;
      (v460)(v459, v289);
      v303 = v439;
    }

    else
    {

      (v471)(v437 - v252, v479);
      v304 = v288;
      v302 = v289;
      (v460)(v304, v289);
      v303 = v439;
      v301 = v476;
    }

    v305 = v458;
    v480(v458, v473, v302);
    v306 = sub_23328D6CC();
    v307 = sub_23328DE4C();
    if (os_log_type_enabled(v306, v307))
    {
      v308 = swift_slowAlloc();
      *v308 = 0;
      _os_log_impl(&dword_233109000, v306, v307, "Will write out training data", v308, 2u);
      MEMORY[0x23839CFD0](v308, -1, -1);
    }

    v439 = v303;

    v309 = v485 + 8;
    v310 = v484;
    (v460)(v305, v484);
    v311 = *(v482 + 20);
    LODWORD(v496) = v498;
    v312 = v441 | (v440 << 8);
    v313 = *(&v441 + 1);
    aBlock = v441 | (v440 << 8);
    LOBYTE(v495) = v438 & 1;
    v314 = v481;
    v315 = sub_2331B695C((v301 + v311), v465, &v496, &aBlock, v444, &v495, v477);
    v485 = v309;
    v481 = v314;
    v316 = v476;
    sub_2331BB2A0(v312, v313);
    v317 = v456;
    v480(v456, v473, v310);
    v318 = sub_23328D6CC();
    v319 = sub_23328DE4C();
    if (os_log_type_enabled(v318, v319))
    {
      v320 = swift_slowAlloc();
      *v320 = 134217984;
      *(v320 + 4) = v315;
      _os_log_impl(&dword_233109000, v318, v319, "Did write out training data. samplesWritten=%ld", v320, 0xCu);
      MEMORY[0x23839CFD0](v320, -1, -1);
    }

    v321 = (v460)(v317, v484);
    MEMORY[0x28223BE20](v321);
    v435 = v316;
    v436 = v315;
    v322 = v494;
    v323 = sub_233175210();
    v324 = v471;
    v325 = v439;
    if (v323)
    {
      v326 = v439;
      MEMORY[0x28223BE20](v323);
      v435 = sub_2331BB2B0;
      v436 = &v437[-4];
      sub_23328D2BC();

      v325 = v326;
    }

    v327 = TTSVBMinimumRequiredPhraseCount(forTrainingMode:)(v325);
    v328 = v469;
    if (v315 < v327)
    {
      v329 = v327;
      MEMORY[0x28223BE20](v327);
      v437[-4] = v316;
      v437[-3] = v315;
      v435 = v330;
      v331 = *&v322[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger];
      if (v331)
      {
        MEMORY[0x28223BE20](v330);
        v435 = sub_2331BB540;
        v436 = v332;

        sub_23328D2CC();
        sub_2331B9710(v331);
      }

      aBlock = xmmword_233298590;
      LOBYTE(v500) = 3;
      v496 = 0;
      v497 = 0xE000000000000000;
      sub_23328E24C();
      MEMORY[0x23839B7E0](0xD000000000000047, 0x80000002332A8910);
      v495 = v315;
      v333 = sub_23328E51C();
      MEMORY[0x23839B7E0](v333);

      MEMORY[0x23839B7E0](0xD000000000000019, 0x80000002332A8960);
      v495 = v329;
      v334 = sub_23328E51C();
      MEMORY[0x23839B7E0](v334);

      v335 = v497;
      v336 = v449;
      *v449 = v496;
      *(v336 + 8) = v335;
      swift_storeEnumTagMultiPayload();
      sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      v80 = swift_allocError();
      TTSVBError.init(_:_:_:)(&aBlock, v336, 0, v337);
      swift_willThrow();

      v338 = v479;
      v324(v468, v479);
      v324(v465, v338);
      sub_233121E04(v483, &qword_27DDE2388, &qword_233297728);
      sub_2331BDC54(v316, type metadata accessor for TTSVBVoiceModel);
      goto LABEL_4;
    }

    v339 = v455;
    v480(v455, v473, v484);
    v340 = v447;
    sub_2331BDBEC(v316, v447, type metadata accessor for TTSVBVoiceModel);
    sub_2331BDBEC(v316, v457, type metadata accessor for TTSVBVoiceModel);
    v341 = v454;
    v342 = sub_2331BDBEC(v316, v454, type metadata accessor for TTSVBVoiceModel);
    v491 = v437;
    v343 = MEMORY[0x28223BE20](v342);
    v344 = v437 - ((v328 + 15) & 0xFFFFFFFFFFFFFFF0);
    v345 = v479;
    v346 = v462;
    v347 = (v462)(v344, v465, v479, v343);
    v490 = v437;
    v348 = MEMORY[0x28223BE20](v347);
    v346(v344, v468, v345, v348);
    v349 = sub_23328D6CC();
    LODWORD(v489) = sub_23328DE4C();
    if (os_log_type_enabled(v349, v489))
    {
      v350 = swift_slowAlloc();
      v488 = swift_slowAlloc();
      *&aBlock = v488;
      *v350 = 136316162;
      v351 = *v340;
      v352 = v340[1];
      v353 = v457;

      sub_2331BDC54(v340, type metadata accessor for TTSVBVoiceModel);
      v354 = sub_23311A8F4(v351, v352, &aBlock);

      *(v350 + 4) = v354;
      *(v350 + 12) = 2080;
      v355 = v482;
      v356 = sub_23328CE3C();
      v358 = v357;
      sub_2331BDC54(v353, type metadata accessor for TTSVBVoiceModel);
      v359 = sub_23311A8F4(v356, v358, &aBlock);

      *(v350 + 14) = v359;
      *(v350 + 22) = 2080;
      v360 = *(v355 + 56);
      v328 = v469;
      v361 = v454;
      v362 = (v454 + v360);
      v363 = *v362;
      v364 = v362[1];

      sub_2331BDC54(v361, type metadata accessor for TTSVBVoiceModel);
      v365 = sub_23311A8F4(v363, v364, &aBlock);

      *(v350 + 24) = v365;
      *(v350 + 32) = 2080;
      v366 = sub_23328CC6C();
      v368 = v367;
      v369 = v471;
      (v471)(v344, v345);
      v370 = sub_23311A8F4(v366, v368, &aBlock);

      *(v350 + 34) = v370;
      *(v350 + 42) = 2080;
      v371 = sub_23328CC6C();
      v373 = v372;
      v369(v344, v345);
      v374 = sub_23311A8F4(v371, v373, &aBlock);

      *(v350 + 44) = v374;
      _os_log_impl(&dword_233109000, v349, v489, "Initializing Siri training task:\n - Name: '%s'\n - taskID: %s\n - Locale: %s\n - Data Path: %s\n - Output Path: %s", v350, 0x34u);
      v375 = v488;
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v375, -1, -1);
      MEMORY[0x23839CFD0](v350, -1, -1);

      v376 = v455;
    }

    else
    {

      v377 = v471;
      (v471)(v344, v345);
      v377(v344, v345);
      sub_2331BDC54(v341, type metadata accessor for TTSVBVoiceModel);
      sub_2331BDC54(v457, type metadata accessor for TTSVBVoiceModel);
      sub_2331BDC54(v340, type metadata accessor for TTSVBVoiceModel);
      v376 = v339;
    }

    (v460)(v376, v484);
    v378 = v482;
    v379 = v476;
    v486 = sub_23328CE3C();
    v380 = (v379 + *(v378 + 56));
    v382 = *v380;
    v381 = v380[1];
    v491 = v382;
    v487 = v381;
    v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
    v490 = v437;
    v384 = MEMORY[0x28223BE20](v383 - 8);
    v386 = v437 - v385;
    v387 = v467;
    v388 = (*(v467 + 56))(v437 - v385, 1, 1, v345, v384);
    v489 = v437;
    v389 = MEMORY[0x28223BE20](v388);
    v390 = v437 - ((v328 + 15) & 0xFFFFFFFFFFFFFFF0);
    v391 = v462;
    v392 = (v462)(v390, v465, v345, v389);
    v488 = v437;
    v393 = MEMORY[0x28223BE20](v392);
    v391(v390, v468, v345, v393);
    v394 = sub_23328D95C();

    v395 = sub_23328D95C();
    if ((*(v387 + 48))(v386, 1, v345) == 1)
    {
      v396 = 0;
    }

    else
    {
      v396 = sub_23328CBCC();
      (v471)(v386, v479);
    }

    v397 = objc_allocWithZone(TTSVBSiriTTSTrainerTask);
    v398 = sub_23328CBCC();
    v399 = sub_23328CBCC();
    LOBYTE(v435) = v475 & 1;
    v491 = [v397 initWithTaskID:v394 localeID:v395 trainingAssetURL:v396 dataAssetURL:v398 inferenceAssetURL:v399 trainingMode:v439 startImmediately:v435];

    v400 = v479;
    v401 = v471;
    (v471)(v390, v479);
    v401(v390, v400);
    v402 = v450;
    v403 = v484;
    v480(v450, v473, v484);
    v404 = v476;
    v405 = v451;
    sub_2331BDBEC(v476, v451, type metadata accessor for TTSVBVoiceModel);
    v406 = sub_23328D6CC();
    v407 = sub_23328DE4C();
    if (os_log_type_enabled(v406, v407))
    {
      v408 = v402;
      v409 = swift_slowAlloc();
      v410 = swift_slowAlloc();
      *&aBlock = v410;
      *v409 = 136315138;
      sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
      v411 = sub_23328E51C();
      v412 = v405;
      v414 = v413;
      sub_2331BDC54(v412, type metadata accessor for TTSVBVoiceModel);
      v415 = sub_23311A8F4(v411, v414, &aBlock);

      *(v409 + 4) = v415;
      _os_log_impl(&dword_233109000, v406, v407, "Will call startTraining() on session with taskID: %s", v409, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v410);
      MEMORY[0x23839CFD0](v410, -1, -1);
      MEMORY[0x23839CFD0](v409, -1, -1);

      v416 = v408;
    }

    else
    {

      sub_2331BDC54(v405, type metadata accessor for TTSVBVoiceModel);
      v416 = v402;
    }

    v417 = (v460)(v416, v403);
    MEMORY[0x28223BE20](v417);
    v435 = v404;
    v419 = *&v494[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger];
    v420 = v481;
    if (v419)
    {
      MEMORY[0x28223BE20](v418);
      v435 = sub_2331BB3CC;
      v436 = v421;

      sub_23328D2BC();
      sub_2331B9710(v419);
    }

    v422 = v494;
    v423 = sub_23317503C();
    v424 = v453;
    sub_2331BDBEC(v404, v453, type metadata accessor for TTSVBVoiceModel);
    v425 = (*(v478 + 80) + 16) & ~*(v478 + 80);
    v426 = (v452 + v425 + 7) & 0xFFFFFFFFFFFFFFF8;
    v427 = swift_allocObject();
    sub_2331BDDC4(v424, v427 + v425, type metadata accessor for TTSVBVoiceModel);
    *(v427 + v426) = v422;
    v428 = (v427 + ((v426 + 15) & 0xFFFFFFFFFFFFFFF8));
    v429 = v493;
    *v428 = v492;
    v428[1] = v429;
    v502 = sub_2331BB494;
    v503 = v427;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v500 = sub_23319B314;
    v501 = &block_descriptor_383;
    v430 = _Block_copy(&aBlock);
    v431 = v422;

    v432 = v491;
    [v423 startTraining:v491 replyOnQueue:0 trainingStartedHandler:v430];

    _Block_release(v430);
    v433 = v479;
    v434 = v471;
    (v471)(v468, v479);
    v434(v465, v433);
    sub_233121E04(v483, &qword_27DDE2388, &qword_233297728);
    return sub_2331BDC54(v404, type metadata accessor for TTSVBVoiceModel);
  }
}

BOOL sub_23319A328(int *a1, int a2)
{
  sub_233156AF4();
  sub_23328E0FC();
  sub_233168AA8();
  v3 = sub_23328D90C();
  if (v3)
  {
    v4 = v6;
  }

  else
  {
    v4 = a2;
    sub_23328E11C();
  }

  *a1 = v4;
  return (v3 & 1) == 0;
}

uint64_t sub_23319A41C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, double))
{
  result = sub_233175210();
  if (result)
  {
    v9 = MEMORY[0x28223BE20](result);
    v10 = a1;
    v11 = a2;
    a4(a3, v9);
  }

  return result;
}

uint64_t sub_23319A4B4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v86 = a4;
  v87 = a5;
  v85 = a3;
  v94 = a2;
  v6 = sub_23328D7CC();
  v92 = *(v6 - 8);
  v93 = v6;
  MEMORY[0x28223BE20](v6);
  v89 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23328D80C();
  v90 = *(v8 - 8);
  v91 = v8;
  MEMORY[0x28223BE20](v8);
  v88 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for TTSVBError(0);
  v83 = *(v81 - 8);
  v13 = *(v83 + 64);
  MEMORY[0x28223BE20](v81);
  v84 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v78 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v78 - v18;
  v82 = type metadata accessor for TTSVBVoiceModel(0);
  MEMORY[0x28223BE20](v82);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v78 - v23;
  v25 = sub_23328D6EC();
  v95 = *(v25 - 8);
  v96 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v78 - v29;
  if (a1)
  {
    aBlock = xmmword_233298590;
    LOBYTE(v99) = 3;
    swift_storeEnumTagMultiPayload();
    v31 = a1;
    v32 = sub_23328CA6C();
    TTSVBError.init(_:_:_:)(&aBlock, v12, v32, v19);
    v33 = sub_233225514();
    (*(v95 + 16))(v27, v33, v96);
    v34 = v94;
    sub_2331BDBEC(v94, v21, type metadata accessor for TTSVBVoiceModel);
    v79 = v19;
    sub_2331BDBEC(v19, v16, type metadata accessor for TTSVBError);
    v35 = sub_23328D6CC();
    v36 = sub_23328DE3C();
    v37 = os_log_type_enabled(v35, v36);
    v80 = a1;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&aBlock = v39;
      *v38 = 136315394;
      sub_23328CE8C();
      sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
      v40 = sub_23328E51C();
      v42 = v41;
      sub_2331BDC54(v21, type metadata accessor for TTSVBVoiceModel);
      v43 = sub_23311A8F4(v40, v42, &aBlock);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2112;
      sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      swift_allocError();
      sub_2331BDBEC(v16, v44, type metadata accessor for TTSVBError);
      v45 = _swift_stdlib_bridgeErrorToNSError();
      sub_2331BDC54(v16, type metadata accessor for TTSVBError);
      *(v38 + 14) = v45;
      v46 = v78;
      *v78 = v45;
      _os_log_impl(&dword_233109000, v35, v36, "Error occurred requesting training task: %s. %@", v38, 0x16u);
      sub_233121E04(v46, &qword_27DDE2978, &qword_233299A50);
      MEMORY[0x23839CFD0](v46, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x23839CFD0](v39, -1, -1);
      v47 = v38;
      v34 = v94;
      MEMORY[0x23839CFD0](v47, -1, -1);
    }

    else
    {

      sub_2331BDC54(v16, type metadata accessor for TTSVBError);
      sub_2331BDC54(v21, type metadata accessor for TTSVBVoiceModel);
    }

    v58 = (*(v95 + 8))(v27, v96);
    MEMORY[0x28223BE20](v58);
    v59 = v79;
    *(&v78 - 2) = v34;
    *(&v78 - 1) = v59;
    v60 = sub_233175210();
    if (v60)
    {
      MEMORY[0x28223BE20](v60);
      *(&v78 - 2) = sub_2331BB778;
      *(&v78 - 1) = &v78 - 4;
      sub_23328D2CC();
    }

    v61 = v84;
    sub_2331BDBEC(v59, v84, type metadata accessor for TTSVBError);
    v62 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v63 = swift_allocObject();
    v64 = v87;
    *(v63 + 16) = v86;
    *(v63 + 24) = v64;
    sub_2331BDDC4(v61, v63 + v62, type metadata accessor for TTSVBError);
    v101 = sub_2331BB8B0;
    v102 = v63;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v99 = sub_2331221F8;
    v100 = &block_descriptor_398;
    v65 = _Block_copy(&aBlock);

    v66 = v88;
    sub_23328D7DC();
    v97 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
    v67 = v89;
    v68 = v93;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v66, v67, v65);

    _Block_release(v65);
    (*(v92 + 8))(v67, v68);
    (*(v90 + 8))(v66, v91);

    return sub_2331BDC54(v59, type metadata accessor for TTSVBError);
  }

  else
  {
    v48 = sub_233225514();
    (*(v95 + 16))(v30, v48, v96);
    v49 = v94;
    sub_2331BDBEC(v94, v24, type metadata accessor for TTSVBVoiceModel);
    v50 = sub_23328D6CC();
    v51 = sub_23328DE4C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&aBlock = v53;
      *v52 = 136315138;
      sub_23328CE8C();
      sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
      v54 = sub_23328E51C();
      v56 = v55;
      sub_2331BDC54(v24, type metadata accessor for TTSVBVoiceModel);
      v57 = sub_23311A8F4(v54, v56, &aBlock);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_233109000, v50, v51, "Successfully requested training task: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x23839CFD0](v53, -1, -1);
      MEMORY[0x23839CFD0](v52, -1, -1);
    }

    else
    {

      sub_2331BDC54(v24, type metadata accessor for TTSVBVoiceModel);
    }

    v70 = (*(v95 + 8))(v30, v96);
    MEMORY[0x28223BE20](v70);
    *(&v78 - 2) = v49;
    v71 = sub_233175210();
    if (v71)
    {
      MEMORY[0x28223BE20](v71);
      *(&v78 - 2) = sub_2331BB6B4;
      *(&v78 - 1) = &v78 - 4;
      sub_23328D2BC();
    }

    v72 = swift_allocObject();
    v73 = v87;
    *(v72 + 16) = v86;
    *(v72 + 24) = v73;
    v101 = sub_2331BE578;
    v102 = v72;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v99 = sub_2331221F8;
    v100 = &block_descriptor_391;
    v74 = _Block_copy(&aBlock);

    v75 = v88;
    sub_23328D7DC();
    v97 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
    v76 = v89;
    v77 = v93;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v75, v76, v74);
    _Block_release(v74);
    (*(v92 + 8))(v76, v77);
    (*(v90 + 8))(v75, v91);
  }
}

uint64_t sub_23319B228(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_2331BDBEC(a3, &v9 - v6, type metadata accessor for TTSVBError);
  swift_storeEnumTagMultiPayload();
  a1(v7);
  return sub_233121E04(v7, &unk_27DDE25D0, &unk_233290330);
}

void sub_23319B314(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t TTSVBVoiceBankingManager.discardTrainingTasks(_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_23328D7CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23328D80C();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_2331B3FB4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_146;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_23328D7DC();
  v18 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

void sub_23319B684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23328D6EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_233225514();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_23328D6CC();
  v12 = sub_23328DE4C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_233109000, v11, v12, "Will request discard of training tasks", v13, 2u);
    MEMORY[0x23839CFD0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  if (sub_233175210())
  {
    sub_23328D2BC();
  }

  v14 = sub_23317503C();
  v15 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  aBlock[4] = sub_2331BE6D4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331889C4;
  aBlock[3] = &block_descriptor_358;
  v17 = _Block_copy(aBlock);

  [v14 discardTrainingTasksReplyOnQueue:v15 completionHandler:v17];
  _Block_release(v17);
}

uint64_t sub_23319B900(void *a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  if (a1)
  {
    v7 = a1;
    sub_2331524CC(&v11);
    v9 = v11;
    v10 = v12;
    static TTSVBError.map(_:_:)(a1, &v9, v6);
    sub_2331220AC(v9, *(&v9 + 1), v10);
    swift_storeEnumTagMultiPayload();
    a2(v6);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    a2(v6);
  }

  return sub_233121E04(v6, &unk_27DDE25D0, &unk_233290330);
}

uint64_t TTSVBVoiceBankingManager.cancelTrainingTask(taskID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_23328D7CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23328D80C();
  v13 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v4[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v4;
  v16[5] = a3;
  v16[6] = a4;
  aBlock[4] = sub_2331B3FC0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_152;
  v17 = _Block_copy(aBlock);

  v18 = v4;

  sub_23328D7DC();
  v22 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

void sub_23319BD28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v9 = sub_23328D6EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_233225514();
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_23328D6CC();
  v15 = sub_23328DE4C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a5;
    v17 = v16;
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_23311A8F4(a1, a2, aBlock);
    _os_log_impl(&dword_233109000, v14, v15, "Will request cancelation of training task: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x23839CFD0](v18, -1, -1);
    v19 = v17;
    a5 = v27;
    MEMORY[0x23839CFD0](v19, -1, -1);
  }

  v20 = (*(v10 + 8))(v12, v9);
  MEMORY[0x28223BE20](v20);
  *(&v27 - 2) = a1;
  *(&v27 - 1) = a2;
  v21 = sub_233175210();
  if (v21)
  {
    MEMORY[0x28223BE20](v21);
    *(&v27 - 2) = sub_2331BB068;
    *(&v27 - 1) = (&v27 - 4);
    sub_23328D2BC();
  }

  v22 = sub_23317503C();
  v23 = sub_23328D95C();
  v24 = *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  v25 = swift_allocObject();
  *(v25 + 16) = v28;
  *(v25 + 24) = a5;
  aBlock[4] = sub_2331BE6D4;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331889C4;
  aBlock[3] = &block_descriptor_352;
  v26 = _Block_copy(aBlock);

  [v22 cancelTaskWithID:v23 replyOnQueue:v24 completionHandler:v26];
  _Block_release(v26);
}

uint64_t TTSVBVoiceBankingManager.startV1ToV2VoiceMigrationIfNeeded()()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2818, &qword_233299258);
  v1[4] = swift_task_alloc();
  v1[5] = type metadata accessor for TTSVBVoice(0);
  v1[6] = swift_task_alloc();
  v2 = sub_23328D6EC();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23319C1CC, 0, 0);
}

uint64_t sub_23319C1CC()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = v1;
  IsVoicebankingd = TTSVBProcessIsVoicebankingd(v3, v4);
  if (IsVoicebankingd)
  {
    v13 = v0[3];
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v15 = v13;
    sub_233178950(sub_2331B3FE0, v14, sub_2331B3FD8, v2, &unk_284875498, sub_2331BDE5C, &block_descriptor_572);

    v16 = swift_task_alloc();
    v0[12] = v16;
    *(v16 + 16) = v15;
    v17 = swift_task_alloc();
    v0[13] = v17;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2820, &qword_233299260);
    *v17 = v0;
    v17[1] = sub_23319C390;
    v10 = sub_2331B400C;
    IsVoicebankingd = (v0 + 2);
    v9 = 0x80000002332A7FD0;
    v6 = 0;
    v7 = 0;
    v8 = 0xD000000000000019;
    v11 = v16;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822008A0](IsVoicebankingd, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_23319C390()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_23319C4AC;
  }

  else
  {

    v2 = sub_23319C554;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23319C4AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23319C554()
{

  sub_2331B4940(v1);
  v3 = v2;

  v4 = *(v3 + 16);
  if (v4 != 1)
  {
    if (!v4)
    {
      v5 = v0[11];
      v6 = v0[7];
      v7 = v0[8];

      v8 = sub_233225314();
      (*(v7 + 16))(v5, v8, v6);
      v9 = sub_23328D6CC();
      v10 = sub_23328DE4C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_233109000, v9, v10, "No eligible V1->V2 voices found to migrate", v11, 2u);
        MEMORY[0x23839CFD0](v11, -1, -1);
      }

      v12 = v0[11];
      v13 = v0[7];
      v14 = v0[8];

      (*(v14 + 8))(v12, v13);
      if (sub_233175210())
      {
        sub_23328D2BC();
      }

      v15 = v0[1];

      return v15();
    }

    v17 = v0[10];
    v18 = v0[7];
    v19 = v0[8];
    v20 = sub_233225314();
    (*(v19 + 16))(v17, v20, v18);

    v21 = sub_23328D6CC();
    v22 = sub_23328DE4C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = *(v3 + 16);

      _os_log_impl(&dword_233109000, v21, v22, "Multiple (%ld) eligible V1->V2 voices found to migrate. Selecting one at random to migrate first", v23, 0xCu);
      MEMORY[0x23839CFD0](v23, -1, -1);
    }

    else
    {
    }

    (*(v0[8] + 8))(v0[10], v0[7]);
    v24 = swift_task_alloc();
    *(v24 + 16) = v3;
    if (sub_233175210())
    {
      v25 = swift_task_alloc();
      *(v25 + 16) = sub_2331B4AA4;
      *(v25 + 24) = v24;
      sub_23328D2BC();
    }
  }

  v26 = v0[4];
  sub_2331887E4(v3, v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2828, &qword_233299268);
  v28 = (*(*(v27 - 8) + 48))(v26, 1, v27);
  if (v28 == 1)
  {
    __break(1u);
  }

  else
  {
    v37 = v0[5];
    v36 = v0[6];
    v39 = v0[3];
    v38 = v0[4];

    sub_2331BDDC4(v38, v36, type metadata accessor for TTSVBVoice);
    v40 = v36 + *(v37 + 20);
    v41 = sub_233167D94();
    v43 = *v41;
    v42 = v41[1];
    v0[15] = v42;

    v44 = sub_233167B90();
    v46 = *v44;
    v45 = v44[1];
    v0[16] = v45;

    v47 = swift_task_alloc();
    v0[17] = v47;
    v47[2] = v39;
    v47[3] = v40;
    v47[4] = v43;
    v47[5] = v42;
    v47[6] = v46;
    v47[7] = v45;
    v28 = swift_task_alloc();
    v0[18] = v28;
    *v28 = v0;
    v28[1] = sub_23319CA44;
    v33 = sub_2331B4AA0;
    v32 = 0x80000002332A7FF0;
    v35 = MEMORY[0x277D84F78] + 8;
    v29 = 0;
    v30 = 0;
    v31 = 0xD00000000000004BLL;
    v34 = v47;
  }

  return MEMORY[0x2822008A0](v28, v29, v30, v31, v32, v33, v34, v35);
}

uint64_t sub_23319CA44()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_23319CD24;
  }

  else
  {

    v2 = sub_23319CB60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23319CB60()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v4 = sub_233225314();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_23328D6CC();
  v6 = sub_23328DE4C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_233109000, v5, v6, "Did perform V1->V2 voice migration task", v7, 2u);
    MEMORY[0x23839CFD0](v7, -1, -1);
  }

  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];

  (*(v9 + 8))(v8, v10);
  if (sub_233175210())
  {
    sub_23328D2BC();
  }

  sub_2331BDC54(v0[6], type metadata accessor for TTSVBVoice);

  v11 = v0[1];

  return v11();
}

uint64_t sub_23319CD24()
{
  v1 = *(v0 + 48);

  sub_2331BDC54(v1, type metadata accessor for TTSVBVoice);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23319CE00(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v34 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v34);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = sub_23328D6EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  sub_233121D34(a1, &v33 - v15, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331BDDC4(v16, v6, type metadata accessor for TTSVBError);
    v17 = sub_233225314();
    (*(v8 + 16))(v10, v17, v7);
    sub_2331BDBEC(v6, v35, type metadata accessor for TTSVBError);
    v18 = sub_23328D6CC();
    v19 = sub_23328DE4C();
    v20 = v6;
    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      swift_allocError();
      v23 = v35;
      sub_2331BDBEC(v35, v24, type metadata accessor for TTSVBError);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      sub_2331BDC54(v23, type metadata accessor for TTSVBError);
      *(v21 + 4) = v25;
      *v22 = v25;
      _os_log_impl(&dword_233109000, v18, v19, "[V1->V2 migration]: Failed to update cloud audio files %@.", v21, 0xCu);
      sub_233121E04(v22, &qword_27DDE2978, &qword_233299A50);
      MEMORY[0x23839CFD0](v22, -1, -1);
      MEMORY[0x23839CFD0](v21, -1, -1);
    }

    else
    {

      sub_2331BDC54(v35, type metadata accessor for TTSVBError);
    }

    v31 = (*(v8 + 8))(v10, v7);
    MEMORY[0x28223BE20](v31);
    *(&v33 - 2) = v20;
    v32 = sub_233175210();
    if (v32)
    {
      MEMORY[0x28223BE20](v32);
      *(&v33 - 2) = sub_2331BAF84;
      *(&v33 - 1) = (&v33 - 4);
      sub_23328D2BC();
    }

    return sub_2331BDC54(v20, type metadata accessor for TTSVBError);
  }

  else
  {
    v26 = sub_233225314();
    (*(v8 + 16))(v13, v26, v7);
    v27 = sub_23328D6CC();
    v28 = sub_23328DE4C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_233109000, v27, v28, "[V1->V2 migration]: Did update missing cloud audio files if neccesary.", v29, 2u);
      MEMORY[0x23839CFD0](v29, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    result = sub_233175210();
    if (result)
    {
      sub_23328D2BC();
    }
  }

  return result;
}

uint64_t sub_23319D394()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2820, &qword_233299260);
  *v3 = v0;
  v3[1] = sub_23319D49C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000019, 0x80000002332A7FD0, sub_2331BE6D8, v2, v4);
}

uint64_t sub_23319D49C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_23319D5D4;
  }

  else
  {

    v2 = sub_23319D5B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23319D5D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TTSVBVoiceBankingManager.createSupplementaryModelForVoiceAsync(voiceID:sourceVersion:targetVersion:)(uint64_t a1, void *a2, void *a3)
{
  v4[2] = a1;
  v4[3] = v3;
  v5 = a2[1];
  v4[4] = *a2;
  v4[5] = v5;
  v6 = a3[1];
  v4[6] = *a3;
  v4[7] = v6;
  return MEMORY[0x2822009F8](sub_23319D668, 0, 0);
}

uint64_t sub_23319D668()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v7 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = vextq_s8(*(v0 + 16), *(v0 + 16), 8uLL);
  *(v3 + 32) = v7;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_23319D77C;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD00000000000004BLL, 0x80000002332A7FF0, sub_2331BE67C, v3, v5);
}

uint64_t sub_23319D77C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_23319D8B0;
  }

  else
  {

    v2 = sub_23319D898;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23319D8B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23319D914(uint64_t a1, char *a2)
{
  v4 = sub_23328D7CC();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23328D80C();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE29A8, &qword_233299AC0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  v20[1] = *&a2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  (*(v11 + 16))(v20 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v11 + 32))(v16 + v15, v14, v10);
  aBlock[4] = sub_2331BAC10;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_326;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  sub_23328D7DC();
  v24 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v9, v6, v17);
  _Block_release(v17);
  (*(v23 + 8))(v6, v4);
  (*(v21 + 8))(v9, v22);
}

void sub_23319DCBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (v2)
  {
    LOBYTE(v6) = 1;
    v3 = v2;
    v4 = sub_2331E511C(&v6);

    MEMORY[0x28223BE20](v5);
    sub_23328DF5C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23319DDB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = a2;
  v49 = type metadata accessor for TTSVBVoice(0);
  v56 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v47 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for TTSVBLocalVoiceMO();
  v12 = sub_2331F88A8(v11, &protocol witness table for TTSVBLocalVoiceMO);
  v50 = a1;
  v53 = v11;
  v14 = static DSO<>.fetch(in:config:)(a1, v12, v13, v11, &protocol witness table for TTSVBLocalVoiceMO);

  if (v14 >> 62)
  {
    v15 = sub_23328E19C();
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_3:
      *&v54 = MEMORY[0x277D84F90];
      sub_2331229AC(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        goto LABEL_35;
      }

      v48 = v2;
      v16 = 0;
      v17 = v54;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x23839BFC0](v16, v14);
        }

        else
        {
          v18 = *(v14 + 8 * v16 + 32);
        }

        v19 = v18;
        TTSVBCommonVoiceMO.immutableVoice()(v53, &protocol witness table for TTSVBLocalVoiceMO, v10);

        *&v54 = v17;
        v21 = *(v17 + 16);
        v20 = *(v17 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2331229AC((v20 > 1), v21 + 1, 1);
          v17 = v54;
        }

        ++v16;
        *(v17 + 16) = v21 + 1;
        sub_2331BDDC4(v10, v17 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v21, type metadata accessor for TTSVBVoice);
      }

      while (v15 != v16);

      v3 = v48;
      goto LABEL_14;
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_14:
  v22 = sub_2331B9374(MEMORY[0x277D84F90]);
  v23 = v51;
  v48 = *(v17 + 16);
  if (!v48)
  {
LABEL_30:

    *&v54 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE29A8, &qword_233299AC0);
    return sub_23328DC9C();
  }

  v24 = 0;
  while (v24 < *(v17 + 16))
  {
    v25 = *(v56 + 72);
    v26 = v52;
    sub_2331BDBEC(v17 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + v25 * v24, v52, type metadata accessor for TTSVBVoice);
    sub_2331BDBEC(v26, v23, type metadata accessor for TTSVBVoice);
    v27 = *(v49 + 20);
    v54 = 0uLL;
    v55 = 3;
    v28 = static TTSVBLocalVoiceMO.modelVersions(forVoiceWithID:moc:problemForThrownError:)(v26 + v27, v50, &v54);
    if (v3)
    {

      sub_2331BDC54(v23, type metadata accessor for TTSVBVoice);
      sub_2331BDC54(v52, type metadata accessor for TTSVBVoice);
    }

    v29 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v23;
    v32 = isUniquelyReferenced_nonNull_native;
    *&v54 = v22;
    v33 = sub_2331B4340(v31);
    v35 = v22[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_33;
    }

    v39 = v34;
    if (v22[3] >= v38)
    {
      if ((v32 & 1) == 0)
      {
        v45 = v33;
        sub_2331B55F8();
        v33 = v45;
      }

      v23 = v51;
      v22 = v54;
      if (v39)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_2331B458C(v38, v32);
      v23 = v51;
      v33 = sub_2331B4340(v51);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_36;
      }

      v22 = v54;
      if (v39)
      {
LABEL_16:
        *(v22[7] + 8 * v33) = v29;

        sub_2331BDC54(v23, type metadata accessor for TTSVBVoice);
        sub_2331BDC54(v52, type metadata accessor for TTSVBVoice);
        goto LABEL_17;
      }
    }

    v22[(v33 >> 6) + 8] |= 1 << v33;
    v41 = v22[6] + v33 * v25;
    v42 = v33;
    sub_2331BDBEC(v23, v41, type metadata accessor for TTSVBVoice);
    *(v22[7] + 8 * v42) = v29;
    sub_2331BDC54(v23, type metadata accessor for TTSVBVoice);
    sub_2331BDC54(v52, type metadata accessor for TTSVBVoice);
    v43 = v22[2];
    v37 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v37)
    {
      goto LABEL_34;
    }

    v22[2] = v44;
LABEL_17:
    ++v24;
    v3 = 0;
    if (v48 == v24)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_23328E5AC();
  __break(1u);
  return result;
}

uint64_t sub_23319E320(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, unint64_t a7)
{
  v75 = a6;
  v68 = a5;
  v84 = a4;
  v86 = a2;
  v10 = sub_23328D7CC();
  v81 = *(v10 - 8);
  v82 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_23328D80C();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23328D6EC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v67 - v20;
  (*(v18 + 16))(&v67 - v20, a1, v17, v19);
  v22 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v23 = swift_allocObject();
  v24 = *(v18 + 32);
  v76 = v23;
  v25 = v17;
  v26 = v68;
  v24(v23 + v22, v21, v25);
  v27 = sub_233225514();
  v72 = v14;
  v28 = *(v14 + 16);
  v73 = v13;
  v28(v16, v27, v13);
  v29 = sub_23328CE8C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v33 = *(v30 + 16);
  v85 = a3;
  v71 = v30 + 16;
  v70 = v33;
  v33(&v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v29, v32);

  v69 = v16;
  v34 = a7;
  v35 = sub_23328D6CC();
  v36 = sub_23328DE4C();

  v37 = os_log_type_enabled(v35, v36);
  v83 = v34;
  v74 = v29;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315650;
    sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
    v40 = sub_23328E51C();
    v41 = v29;
    v43 = v42;
    (*(v30 + 8))(&v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v41);
    v44 = sub_23311A8F4(v40, v43, aBlock);

    *(v38 + 4) = v44;
    v34 = v83;
    v45 = v84;
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_23311A8F4(v45, v26, aBlock);
    *(v38 + 22) = 2080;
    v46 = v75;
    *(v38 + 24) = sub_23311A8F4(v75, v34, aBlock);
    _os_log_impl(&dword_233109000, v35, v36, "Requesting creation of supplemental model for voice: %s. source=%s target=%s", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v39, -1, -1);
    MEMORY[0x23839CFD0](v38, -1, -1);

    v47 = (*(v72 + 8))(v69, v73);
    v48 = v46;
  }

  else
  {

    (*(v30 + 8))(&v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
    v47 = (*(v72 + 8))(v69, v73);
    v45 = v84;
    v48 = v75;
  }

  MEMORY[0x28223BE20](v47);
  *(&v67 - 6) = v85;
  *(&v67 - 5) = v45;
  v49 = v26;
  *(&v67 - 4) = v26;
  *(&v67 - 3) = v48;
  *(&v67 - 2) = v34;
  v50 = sub_233175210();
  if (v50)
  {
    MEMORY[0x28223BE20](v50);
    *(&v67 - 2) = sub_2331BE52C;
    *(&v67 - 1) = (&v67 - 8);
    sub_23328D2BC();
  }

  v75 = &v67;
  v51 = v86;
  v73 = *&v86[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v52 = MEMORY[0x28223BE20](v50);
  v53 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v74;
  v70(v53, v85, v74, v52);
  v55 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v56 = v55 + v31;
  v57 = (v55 + v31) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  *(v58 + 2) = v84;
  *(v58 + 3) = v49;
  *(v58 + 4) = v48;
  *(v58 + 5) = v83;
  *(v58 + 6) = v51;
  (*(v30 + 32))(&v58[v55], v53, v54);
  v58[v56] = 2;
  v59 = &v58[v57];
  v60 = v76;
  *(v59 + 1) = sub_2331BAA54;
  *(v59 + 2) = v60;
  aBlock[4] = sub_2331BE530;
  aBlock[5] = v58;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_317;
  v61 = _Block_copy(aBlock);

  v62 = v51;

  v63 = v77;
  sub_23328D7DC();
  v87 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  v64 = v79;
  v65 = v82;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v63, v64, v61);
  _Block_release(v61);
  (*(v81 + 8))(v64, v65);
  (*(v78 + 8))(v63, v80);
}

uint64_t sub_23319EC1C(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v5);
  v7 = v11 - v6;
  sub_233121D34(a1, v11 - v6, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331BDDC4(v7, v4, type metadata accessor for TTSVBError);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v8 = swift_allocError();
    sub_2331BDBEC(v4, v9, type metadata accessor for TTSVBError);
    v11[1] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    sub_23328DC8C();
    return sub_2331BDC54(v4, type metadata accessor for TTSVBError);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t TTSVBVoiceBankingManager.createSupplementaryModelForVoice(voiceID:sourceVersion:targetVersion:startTrainingImmediately:completion:)(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6)
{
  v72 = a5;
  v73 = a6;
  v71 = a4;
  v9 = sub_23328D7CC();
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x28223BE20](v9);
  v76 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_23328D80C();
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v74 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23328D6EC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2[1];
  v17 = *a3;
  v18 = a3[1];
  v81 = *a2;
  v82 = v17;
  v19 = sub_233225514();
  v65 = v13;
  v20 = *(v13 + 16);
  v66 = v12;
  v20(v15, v19, v12);
  v21 = sub_23328CE8C();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v69 = v24;
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v22 + 16);
  v68 = v22 + 16;
  v67 = v26;
  v26(v25, a1, v21, v23);

  v27 = sub_23328D6CC();
  v28 = sub_23328DE4C();

  v29 = os_log_type_enabled(v27, v28);
  v80 = v18;
  v70 = v21;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v64 = v16;
    v31 = v30;
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v31 = 136315650;
    sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
    v32 = sub_23328E51C();
    v33 = a1;
    v35 = v34;
    (*(v22 + 8))(v25, v21);
    v36 = sub_23311A8F4(v32, v35, aBlock);
    a1 = v33;
    v18 = v80;

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    v37 = v81;
    *(v31 + 14) = sub_23311A8F4(v81, v64, aBlock);
    *(v31 + 22) = 2080;
    v38 = v82;
    *(v31 + 24) = sub_23311A8F4(v82, v18, aBlock);
    _os_log_impl(&dword_233109000, v27, v28, "Requesting creation of supplemental model for voice: %s. source=%s target=%s", v31, 0x20u);
    v39 = v63;
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v39, -1, -1);
    v40 = v31;
    v16 = v64;
    MEMORY[0x23839CFD0](v40, -1, -1);

    v41 = (*(v65 + 8))(v15, v66);
  }

  else
  {

    (*(v22 + 8))(v25, v21);
    v41 = (*(v65 + 8))(v15, v66);
    v37 = v81;
    v38 = v82;
  }

  MEMORY[0x28223BE20](v41);
  *(&v62 - 6) = a1;
  *(&v62 - 5) = v37;
  *(&v62 - 4) = v16;
  *(&v62 - 3) = v38;
  *(&v62 - 2) = v18;
  v42 = sub_233175210();
  if (v42)
  {
    MEMORY[0x28223BE20](v42);
    *(&v62 - 2) = sub_2331B4B70;
    *(&v62 - 1) = (&v62 - 8);
    sub_23328D2BC();
  }

  v66 = &v62;
  v43 = v83;
  v65 = *&v83[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v44 = v69;
  v45 = MEMORY[0x28223BE20](v42);
  v46 = &v62 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v70;
  v67(v46, a1, v70, v45);
  v48 = (*(v22 + 80) + 56) & ~*(v22 + 80);
  v49 = v48 + v44;
  v50 = (v48 + v44) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  v52 = v82;
  *(v51 + 2) = v81;
  *(v51 + 3) = v16;
  v53 = v80;
  *(v51 + 4) = v52;
  *(v51 + 5) = v53;
  *(v51 + 6) = v43;
  (*(v22 + 32))(&v51[v48], v46, v47);
  v51[v49] = v71;
  v54 = &v51[v50];
  v55 = v73;
  *(v54 + 1) = v72;
  *(v54 + 2) = v55;
  aBlock[4] = sub_2331B4B74;
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_175;
  v56 = _Block_copy(aBlock);

  v57 = v43;

  v58 = v74;
  sub_23328D7DC();
  v84 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  v59 = v76;
  v60 = v79;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v58, v59, v56);
  _Block_release(v56);
  (*(v78 + 8))(v59, v60);
  (*(v75 + 8))(v58, v77);
}

uint64_t sub_23319F644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000035, 0x80000002332A84B0);
  sub_23328CE8C();
  sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
  v9 = sub_23328E51C();
  MEMORY[0x23839B7E0](v9);

  MEMORY[0x23839B7E0](0x656372756F73202ELL, 0xE90000000000003DLL);
  MEMORY[0x23839B7E0](a2, a3);
  MEMORY[0x23839B7E0](0x3D74656772617420, 0xE800000000000000);
  MEMORY[0x23839B7E0](a4, a5);
  return 0;
}

void sub_23319F77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, int a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v149) = a7;
  v150 = a6;
  v159 = a5;
  v156 = a8;
  v157 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2958, &qword_233299A38);
  MEMORY[0x28223BE20](v13 - 8);
  v147 = (v138 - v14);
  v158 = sub_23328D7CC();
  v155 = *(v158 - 1);
  MEMORY[0x28223BE20](v158);
  v152 = v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23328D80C();
  v153 = *(v16 - 8);
  v154 = v16;
  MEMORY[0x28223BE20](v16);
  v151 = v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23328D6EC();
  v148 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v21);
  v23 = v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&aBlock = a1;
  *(&aBlock + 1) = a2;
  v165 = a3;
  v166 = a4;
  static TTSVBVoiceModelVersion.validateVersionMigration(from:to:)(&aBlock, &v165);
  v144 = v21;
  v145 = v23;
  v146 = a1;
  v140 = v20;
  v142 = a4;
  v141 = v18;
  v24 = *(v159 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (v24)
  {
    v25 = a2;
    LOBYTE(aBlock) = 1;
    v26 = v24;
    v27 = sub_2331E511C(&aBlock);

    type metadata accessor for TTSVBLocalVoiceMO();
    v143 = xmmword_233299230;
    aBlock = xmmword_233299230;
    LOBYTE(v161) = 3;
    v28 = static TTSVBLocalVoiceMO.modelVersions(forVoiceWithID:moc:problemForThrownError:)(v150, v27, &aBlock);
    v36 = v28;
    v37 = v146;
    *&aBlock = v146;
    *(&aBlock + 1) = v25;
    MEMORY[0x28223BE20](v28);
    v138[-2] = &aBlock;
    v38 = sub_2331ACE00(sub_2331BA618, &v138[-4], v36);
    if ((v38 & 1) == 0)
    {

      aBlock = v143;
      LOBYTE(v161) = 3;
      v46 = v145;
      *v145 = v37;
      *(v46 + 8) = v25;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for TTSVBError(0);
      sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      v43 = swift_allocError();
      v48 = v47;

      TTSVBError.init(_:_:_:)(&aBlock, v46, 0, v48);
      swift_willThrow();

      v41 = v158;
      goto LABEL_3;
    }

    *&aBlock = a3;
    v39 = v142;
    *(&aBlock + 1) = v142;
    MEMORY[0x28223BE20](v38);
    v138[-2] = &aBlock;
    v40 = sub_2331ACE00(sub_2331BE538, &v138[-4], v36);

    v41 = v158;
    if (v40)
    {
      aBlock = v143;
      LOBYTE(v161) = 3;
      v42 = v145;
      *v145 = a3;
      *(v42 + 8) = v39;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for TTSVBError(0);
      sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      v43 = swift_allocError();
      v45 = v44;

      TTSVBError.init(_:_:_:)(&aBlock, v42, 0, v45);
      swift_willThrow();

LABEL_3:
      v29 = v155;
      v30 = v157;
LABEL_4:
      v31 = swift_allocObject();
      v31[2] = v156;
      v31[3] = v30;
      v31[4] = v43;
      v163 = sub_2331BE6E0;
      v164 = v31;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v161 = sub_2331221F8;
      v162 = &block_descriptor_273_0;
      v32 = _Block_copy(&aBlock);

      v33 = v43;
      v34 = v151;
      sub_23328D7DC();
      v165 = MEMORY[0x277D84F90];
      sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
      sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
      v35 = v152;
      sub_23328E14C();
      MEMORY[0x23839BC20](0, v34, v35, v32);
      _Block_release(v32);

      (*(v29 + 8))(v35, v41);
      (*(v153 + 8))(v34, v154);

      return;
    }

    v49 = sub_233167D94();
    v50 = v49[1];
    *&aBlock = *v49;
    *(&aBlock + 1) = v50;
    v51 = v25;
    v52 = v146;
    v165 = v146;
    v166 = v51;
    sub_23315CC14();

    LOBYTE(v50) = sub_23328D90C();

    if (v50 & 1) != 0 && (v53 = sub_233167B90(), v55 = *v53, v54 = v53[1], *&aBlock = v55, *(&aBlock + 1) = v54, v165 = a3, v166 = v39, , v56 = sub_23328D90C(), , (v56) || (v57 = sub_233167DE4(), v58 = v57[1], *&aBlock = *v57, *(&aBlock + 1) = v58, v165 = v52, v166 = v51, , v59 = sub_23328D90C(), , (v59) && (v60 = sub_233167B90(), v62 = *v60, v61 = v60[1], *&aBlock = v62, *(&aBlock + 1) = v61, v165 = a3, v166 = v39, , v63 = sub_23328D90C(), , (v63))
    {
      LODWORD(v142) = (v149 == 2) | v149;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
      v147 = v138;
      v145 = *(v64 - 8);
      v146 = *(v145 + 8);
      MEMORY[0x28223BE20](v64 - 8);
      v66 = v138 - v65;
      v67 = sub_23328CE8C();
      v68 = *(v67 - 8);
      v69 = v68;
      v70 = *(v68 + 56);
      v149 = v66;
      v70(v66, 1, 1, v67);
      v71 = sub_233225514();
      v72 = v148;
      v73 = v140;
      v74 = (*(v148 + 16))(v140, v71, v141);
      v138[1] = v138;
      v75 = *(v68 + 64);
      v76 = MEMORY[0x28223BE20](v74);
      v77 = *(v68 + 16);
      v144 = v68 + 16;
      *&v143 = v77;
      v77(v138 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0), v150, v67, v76);
      v78 = sub_23328D6CC();
      v79 = sub_23328DE4C();
      v80 = os_log_type_enabled(v78, v79);
      v139 = v27;
      if (v80)
      {
        v81 = v72;
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v138[0] = v68;
        v84 = v83;
        *&aBlock = v83;
        *v82 = 136316418;
        v85 = sub_23328CE3C();
        v87 = v86;
        (*(v138[0] + 8))(v138 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0), v67);
        v88 = sub_23311A8F4(v85, v87, &aBlock);

        *(v82 + 4) = v88;
        *(v82 + 12) = 2048;
        *(v82 + 14) = 2;
        *(v82 + 22) = 1024;
        *(v82 + 24) = v142 & 1;
        *(v82 + 28) = 1024;
        *(v82 + 30) = 1;
        *(v82 + 34) = 2048;
        *(v82 + 36) = -1;
        *(v82 + 44) = 2080;
        *(v82 + 46) = sub_23311A8F4(0x6F63655272657375, 0xEE0073676E696472, &aBlock);
        _os_log_impl(&dword_233109000, v78, v79, "Got request to train voiceID=%s mode=%ld startImmediately=%{BOOL}d validateTrainingSamples=%{BOOL}d overrideMinimumPhraseCount=%ld trainingDataSource=%s", v82, 0x36u);
        swift_arrayDestroy();
        v89 = v84;
        v69 = v138[0];
        MEMORY[0x23839CFD0](v89, -1, -1);
        MEMORY[0x23839CFD0](v82, -1, -1);

        v90 = (*(v81 + 8))(v140, v141);
      }

      else
      {

        (*(v68 + 8))(v138 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0), v67);
        v90 = (*(v72 + 8))(v73, v141);
      }

      v91 = v159;
      MEMORY[0x28223BE20](v90);
      v115 = v150;
      v138[-6] = v150;
      v138[-5] = 2;
      LODWORD(v142) = v116 & 1;
      LOBYTE(v138[-4]) = v116 & 1;
      BYTE1(v138[-4]) = 1;
      v138[-3] = 0;
      LOWORD(v138[-2]) = 1;
      v117 = sub_233175210();
      if (v117)
      {
        MEMORY[0x28223BE20](v117);
        v138[-2] = sub_2331BE524;
        v138[-1] = &v138[-8];
        sub_23328D2BC();
      }

      v159 = v138;
      v148 = *(v91 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
      v118 = MEMORY[0x28223BE20](v117);
      v119 = v138 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
      v120 = (v143)(v119, v115, v67, v118);
      v150 = v138;
      v121 = v146;
      MEMORY[0x28223BE20](v120);
      v122 = v138 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_233121D34(v149, v122, &qword_27DDE19B0, &qword_233290370);
      v123 = v91;
      v124 = (*(v69 + 80) + 50) & ~*(v69 + 80);
      v125 = v124 + v75;
      v126 = (v145[80] + v125 + 1) & ~v145[80];
      v127 = v121 + v126 + 7;
      v128 = v67;
      v129 = v127 & 0xFFFFFFFFFFFFFFF8;
      v130 = swift_allocObject();
      *(v130 + 16) = v123;
      *(v130 + 24) = 2;
      *(v130 + 32) = v142;
      *(v130 + 40) = 0;
      *(v130 + 48) = 257;
      (*(v69 + 32))(v130 + v124, v119, v128);
      *(v130 + v125) = 0;
      sub_233121D9C(v122, v130 + v126, &qword_27DDE19B0, &qword_233290370);
      v131 = (v130 + v129);
      v132 = v157;
      *v131 = v156;
      v131[1] = v132;
      v163 = sub_2331BE528;
      v164 = v130;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v161 = sub_2331221F8;
      v162 = &block_descriptor_287;
      v133 = _Block_copy(&aBlock);
      v134 = v123;

      v135 = v151;
      sub_23328D7DC();
      v165 = MEMORY[0x277D84F90];
      sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
      sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
      v136 = v152;
      v137 = v158;
      sub_23328E14C();
      MEMORY[0x23839BC20](0, v135, v136, v133);
      _Block_release(v133);
      (*(v155 + 8))(v136, v137);
      (*(v153 + 8))(v135, v154);
      sub_233121E04(v149, &qword_27DDE19B0, &qword_233290370);
    }

    else
    {
      v92 = sub_233167B90();
      v94 = *v92;
      v93 = v92[1];
      *&aBlock = v94;
      *(&aBlock + 1) = v93;
      v165 = v52;
      v166 = v51;

      v95 = sub_23328D90C();

      if ((v95 & 1) == 0 || (v96 = v57[1], *&aBlock = *v57, *(&aBlock + 1) = v96, v165 = a3, v166 = v39, , v97 = sub_23328D90C(), , (v97 & 1) == 0))
      {
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_23328E24C();

        *&aBlock = 0xD00000000000001FLL;
        *(&aBlock + 1) = 0x80000002332A8490;
        MEMORY[0x23839B7E0](v52, v51);
        MEMORY[0x23839B7E0](540945696, 0xE400000000000000);
        MEMORY[0x23839B7E0](a3, v39);
        v113 = *(&aBlock + 1);
        v112 = aBlock;
        type metadata accessor for TTSVBError(0);
        sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
        v43 = swift_allocError();
        TTSVBError.init(_:_:_:)(0xD000000000000024, 0x80000002332A8460, v112, v113, 0, v114);
        swift_willThrow();

        v30 = v157;
        v29 = v155;
        goto LABEL_4;
      }

      v98 = sub_23328DCBC();
      (*(*(v98 - 8) + 56))(v147, 1, 1, v98);
      v99 = sub_23328CE8C();
      v158 = v138;
      v100 = *(v99 - 8);
      v101 = *(v100 + 64);
      v102 = MEMORY[0x28223BE20](v99);
      v103 = v138 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v100 + 16))(v103, v150, v99, v102);
      v104 = (*(v100 + 80) + 40) & ~*(v100 + 80);
      v105 = v104 + v101;
      v106 = (v104 + v101) & 0xFFFFFFFFFFFFFFF8;
      v107 = swift_allocObject();
      *(v107 + 2) = 0;
      *(v107 + 3) = 0;
      v108 = v159;
      *(v107 + 4) = v159;
      (*(v100 + 32))(&v107[v104], v103, v99);
      v107[v105] = v149;
      v109 = &v107[v106];
      v110 = v157;
      *(v109 + 1) = v156;
      *(v109 + 2) = v110;
      v111 = v108;

      sub_233193E34(0, 0, v147, &unk_233299AA8, v107);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2331A0B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = a7;
  *(v8 + 152) = a8;
  *(v8 + 248) = a6;
  *(v8 + 128) = a4;
  *(v8 + 136) = a5;
  v10 = sub_23328D7CC();
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 - 8);
  *(v8 + 176) = swift_task_alloc();
  v11 = sub_23328D80C();
  *(v8 + 184) = v11;
  *(v8 + 192) = *(v11 - 8);
  *(v8 + 200) = swift_task_alloc();
  v12 = sub_23328D6EC();
  *(v8 + 208) = v12;
  *(v8 + 216) = *(v12 - 8);
  *(v8 + 224) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v8 + 232) = v13;
  *v13 = v8;
  v13[1] = sub_2331A0CE4;

  return TTSVBVoiceBankingManager.synthesizeAudioForTraining(voiceID:)(a5);
}

uint64_t sub_2331A0CE4()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_2331A1580;
  }

  else
  {
    v2 = sub_2331A0DF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2331A0DF8()
{
  v65 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[17];
  v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370) - 8);
  v61 = *(v60 + 64);
  v5 = swift_task_alloc();
  v6 = sub_23328CE8C();
  v7 = *(v6 - 8);
  v8 = v7;
  v63 = v5;
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_233225514();
  (*(v2 + 16))(v1, v9, v3);
  v10 = *(v7 + 64);
  v11 = swift_task_alloc();
  v12 = v4;
  v13 = v6;
  v58 = *(v8 + 16);
  (v58)(v11, v12, v6);
  v14 = sub_23328D6CC();
  v15 = sub_23328DE4C();
  v16 = os_log_type_enabled(v14, v15);
  v18 = v0[27];
  v17 = v0[28];
  v55 = v0[26];
  v19 = *(v0 + 248);
  v62 = v8;
  if (v16)
  {
    v53 = v10;
    v20 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v64 = v49;
    *v20 = 136316418;
    v51 = v17;
    v21 = sub_23328CE3C();
    v22 = v13;
    v24 = v23;
    v25 = *(v8 + 8);
    v26 = v22;
    v25(v11, v22);
    v27 = sub_23311A8F4(v21, v24, &v64);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2048;
    *(v20 + 14) = 1;
    *(v20 + 22) = 1024;
    v28 = v19 & 1;
    *(v20 + 24) = v28;
    *(v20 + 28) = 1024;
    *(v20 + 30) = 1;
    *(v20 + 34) = 2048;
    *(v20 + 36) = -1;
    *(v20 + 44) = 2080;
    *(v20 + 46) = sub_23311A8F4(0xD000000000000011, 0x80000002332A7F50, &v64);
    _os_log_impl(&dword_233109000, v14, v15, "Got request to train voiceID=%s mode=%ld startImmediately=%{BOOL}d validateTrainingSamples=%{BOOL}d overrideMinimumPhraseCount=%ld trainingDataSource=%s", v20, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v49, -1, -1);
    v29 = v20;
    v10 = v53;
    MEMORY[0x23839CFD0](v29, -1, -1);

    (*(v18 + 8))(v51, v55);
  }

  else
  {

    v30 = *(v8 + 8);
    v26 = v13;
    v30(v11, v13);
    (*(v18 + 8))(v17, v55);
    LOBYTE(v28) = v19 & 1;
  }

  v31 = v0[17];

  v32 = swift_task_alloc();
  *(v32 + 16) = v31;
  *(v32 + 24) = 1;
  v56 = v28;
  *(v32 + 32) = v28;
  *(v32 + 33) = 1;
  *(v32 + 40) = 0;
  *(v32 + 48) = 257;
  if (sub_233175210())
  {
    v33 = swift_task_alloc();
    *(v33 + 16) = sub_2331BE524;
    *(v33 + 24) = v32;
    sub_23328D2BC();
  }

  v46 = v0[25];
  v52 = v0[24];
  v54 = v0[23];
  v47 = v0[22];
  v48 = v0[20];
  v50 = v0[21];
  v44 = v0[18];
  v45 = v0[19];
  v34 = v0[16];

  v57 = swift_task_alloc();
  v58();
  v59 = swift_task_alloc();
  sub_233121D34(v63, v59, &qword_27DDE19B0, &qword_233290370);
  v35 = (*(v62 + 80) + 50) & ~*(v62 + 80);
  v36 = v35 + v10;
  v37 = (*(v60 + 80) + v36 + 1) & ~*(v60 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v34;
  *(v38 + 24) = 1;
  *(v38 + 32) = v56;
  *(v38 + 40) = 0;
  *(v38 + 48) = 257;
  (*(v62 + 32))(v38 + v35, v57, v26);
  *(v38 + v36) = 1;
  sub_233121D9C(v59, v38 + v37, &qword_27DDE19B0, &qword_233290370);
  v39 = (v38 + ((v61 + v37 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v39 = v44;
  v39[1] = v45;
  v0[12] = sub_2331BE528;
  v0[13] = v38;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_2331221F8;
  v0[11] = &block_descriptor_303;
  v40 = _Block_copy(v0 + 8);
  v41 = v34;

  sub_23328D7DC();
  v0[15] = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v46, v47, v40);
  _Block_release(v40);
  (*(v50 + 8))(v47, v48);
  (*(v52 + 8))(v46, v54);
  sub_233121E04(v63, &qword_27DDE19B0, &qword_233290370);

  v42 = v0[1];

  return v42();
}

uint64_t sub_2331A1580()
{
  v1 = v0[30];
  v2 = v0[22];
  v13 = v0[24];
  v14 = v0[23];
  v3 = v0[20];
  v12 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v11 = v0[25];
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = v1;
  v0[6] = sub_2331BA754;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2331221F8;
  v0[5] = &block_descriptor_293;
  v7 = _Block_copy(v0 + 2);

  v8 = v1;
  sub_23328D7DC();
  v0[14] = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v11, v2, v7);
  _Block_release(v7);

  (*(v12 + 8))(v2, v3);
  (*(v13 + 8))(v11, v14);

  v9 = v0[1];

  return v9();
}

uint64_t TTSVBVoiceBankingManager.synthesizeAudioForTraining(voiceID:)(uint64_t a1)
{
  v2[74] = v1;
  v2[73] = a1;
  v3 = sub_23328D0BC();
  v2[75] = v3;
  v2[76] = *(v3 - 8);
  v2[77] = swift_task_alloc();
  v4 = sub_23328CFBC();
  v2[78] = v4;
  v2[79] = *(v4 - 8);
  v2[80] = swift_task_alloc();
  v5 = sub_23328CFAC();
  v2[81] = v5;
  v2[82] = *(v5 - 8);
  v2[83] = swift_task_alloc();
  v6 = sub_23328D0DC();
  v2[84] = v6;
  v2[85] = *(v6 - 8);
  v2[86] = swift_task_alloc();
  v2[87] = type metadata accessor for TTSVBPath(0);
  v2[88] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2838, &qword_233299288);
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v7 = sub_23328D07C();
  v2[91] = v7;
  v2[92] = *(v7 - 8);
  v2[93] = swift_task_alloc();
  v8 = sub_23328CF9C();
  v2[94] = v8;
  v2[95] = *(v8 - 8);
  v2[96] = swift_task_alloc();
  v9 = sub_23328D04C();
  v2[97] = v9;
  v2[98] = *(v9 - 8);
  v2[99] = swift_task_alloc();
  v10 = sub_23328D6EC();
  v2[100] = v10;
  v2[101] = *(v10 - 8);
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2331A1BE0, 0, 0);
}

uint64_t sub_2331A1BE0(uint64_t a1)
{
  v76 = v1;
  v2 = *(v1 + 848);
  v3 = *(v1 + 808);
  v4 = *(v1 + 800);
  v5 = *(v1 + 584);
  v6 = sub_233225314();
  *(v1 + 856) = v6;
  v7 = *(v3 + 16);
  *(v1 + 864) = v7;
  *(v1 + 872) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v6, v4);
  v8 = sub_23328CE8C();
  *(v1 + 880) = v8;
  v9 = *(v8 - 8);
  *(v1 + 888) = v9;
  v10 = swift_task_alloc();
  v11 = *(v9 + 16);
  *(v1 + 896) = v11;
  *(v1 + 904) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v10, v5, v8);
  v12 = sub_23328D6CC();
  v13 = sub_23328DE4C();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v1 + 848);
  v16 = *(v1 + 808);
  v70 = *(v1 + 800);
  v67 = v8;
  if (v14)
  {
    v17 = swift_slowAlloc();
    v64 = v15;
    v18 = swift_slowAlloc();
    *&v74 = v18;
    *v17 = 136315138;
    sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
    v19 = sub_23328E51C();
    v20 = v8;
    v22 = v21;
    v23 = *(v9 + 8);
    v23(v10, v20);
    v24 = sub_23311A8F4(v19, v22, &v74);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_233109000, v12, v13, "Will synthesize speech samples using v2 model for voice: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x23839CFD0](v18, -1, -1);
    MEMORY[0x23839CFD0](v17, -1, -1);

    v25 = *(v16 + 8);
    v25(v64, v70);
  }

  else
  {

    v23 = *(v9 + 8);
    v23(v10, v8);
    v25 = *(v16 + 8);
    v25(v15, v70);
  }

  *(v1 + 920) = v23;
  *(v1 + 912) = v25;
  v26 = *(v1 + 592);

  v28 = *(v26 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (!v28)
  {
    __break(1u);
    return result;
  }

  v29 = *(v1 + 584);
  LOBYTE(v74) = 1;
  v30 = v28;
  v31 = sub_2331E511C(&v74);
  *(v1 + 928) = v31;

  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v72);
  v74 = v72;
  v75 = v73;
  v32 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(v29, v31, &v74);
  *(v1 + 936) = v32;
  *(v1 + 944) = 0;
  sub_2331220AC(v74, *(&v74 + 1), v75);
  v33 = swift_task_alloc();
  *(v1 + 952) = v33;
  v34 = [v32 voiceID];
  if (!v34)
  {

    type metadata accessor for TTSVBError(0);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD000000000000019, 0x80000002332A8040, 0, 0, 0, v49);
    swift_willThrow();

LABEL_36:

    v62 = *(v1 + 8);

    return v62();
  }

  v66 = v23;
  v63 = v33;
  v35 = v34;
  sub_23328CE6C();

  v36 = (*((*MEMORY[0x277D85000] & *v32) + 0x70))();
  v37 = v36;
  v65 = v31;
  if (v36 >> 62)
  {
LABEL_33:
    v38 = sub_23328E19C();
    if (v38)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

  v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
LABEL_34:

    type metadata accessor for TTSVBError(0);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD00000000000001FLL, 0x80000002332A80C0, 0, 0, 0, v61);
    swift_willThrow();

    v66(v63, v67);
LABEL_35:

    goto LABEL_36;
  }

LABEL_8:
  v39 = 0;
  while (1)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x23839BFC0](v39, v37);
    }

    else
    {
      if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v40 = *(v37 + 8 * v39 + 32);
    }

    v41 = v40;
    *(v1 + 960) = v40;
    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    type metadata accessor for TTSVBLocalVoiceModelMO();
    v43 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO, &protocol conformance descriptor for TTSVBLocalVoiceModelMO);
    TTSVBCommonVoiceModelMO.typedVersion.getter(v43, &v74);
    v44 = v74;
    v45 = sub_233167B90();
    v46 = v45[1];
    if (!*(&v44 + 1))
    {
      break;
    }

    v47 = *v45;
    *(v1 + 528) = v44;
    if (!v46)
    {

LABEL_10:

      goto LABEL_11;
    }

    *(v1 + 544) = v47;
    *(v1 + 552) = v46;
    sub_23315CC14();

    v48 = sub_23328D90C();

    if (v48)
    {
      goto LABEL_26;
    }

LABEL_11:
    ++v39;
    if (v42 == v38)
    {
      goto LABEL_34;
    }
  }

  if (v46)
  {

    goto LABEL_10;
  }

LABEL_26:

  v51 = (*((*MEMORY[0x277D85000] & *v41) + 0x60))(v50);
  v53 = v51;
  *(v1 + 968) = v51;
  *(v1 + 976) = v52;
  if (!v52)
  {
    type metadata accessor for TTSVBError(0);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD000000000000029, 0x80000002332A8060, v53, 0, 0, v60);
    swift_willThrow();

    v66(v63, v67);
    goto LABEL_35;
  }

  v54 = v52;
  v55 = *(v1 + 768);
  v71 = v51;
  v56 = *(v1 + 760);
  v68 = *(v1 + 752);
  sub_23328D0EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2848, &qword_233299290);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_233297630;
  sub_23328D03C();
  sub_23328D02C();
  *(v1 + 560) = v57;
  sub_2331B2AAC(&qword_27DDE2850, MEMORY[0x277D702B8], MEMORY[0x277D702C0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2858, &qword_23329D560);
  sub_23315246C(&qword_27DDE2860, &qword_27DDE2858, &qword_23329D560, MEMORY[0x277D83970]);
  sub_23328E14C();
  (*(v56 + 104))(v55, *MEMORY[0x277D700F8], v68);
  *(v1 + 984) = sub_23328CFCC();
  v69 = (*MEMORY[0x277D70320] + MEMORY[0x277D70320]);
  v58 = swift_task_alloc();
  *(v1 + 992) = v58;
  *v58 = v1;
  v58[1] = sub_2331A26D8;
  v59 = *(v1 + 720);

  return v69(v59, v71, v54);
}

uint64_t sub_2331A26D8()
{

  return MEMORY[0x2822009F8](sub_2331A27D4, 0, 0);
}

uint64_t sub_2331A27D4()
{
  v78 = v0;
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 984);
    v5 = *(v0 + 976);
    v6 = *(v0 + 968);
    v7 = *(v0 + 960);
    v8 = *(v0 + 952);
    v9 = *(v0 + 936);
    v70 = *(v0 + 920);
    v65 = *(v0 + 928);
    v68 = *(v0 + 880);
    sub_233121E04(v3, &qword_27DDE2838, &qword_233299288);
    sub_23328E24C();

    v75 = 0xD000000000000027;
    v76 = 0x80000002332A8090;
    MEMORY[0x23839B7E0](v6, v5);

    type metadata accessor for TTSVBError(0);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD000000000000027, 0x80000002332A8090, 0, 0, 0, v10);
    swift_willThrow();

    v70(v8, v68);
LABEL_5:

    v27 = *(v0 + 8);

    return v27();
  }

  v11 = *(v0 + 952);
  v72 = *(v0 + 944);
  v12 = *(v0 + 896);
  v13 = *(v0 + 880);
  v14 = *(v0 + 704);
  (*(v1 + 32))(*(v0 + 744), v3, v2);
  v15 = sub_23328CC9C();
  *(v0 + 1000) = v15;
  v71 = v15;
  v16 = *(v15 - 8);
  v17 = v16;
  *(v0 + 1008) = v16;
  *(v0 + 1016) = *(v16 + 64);
  v18 = swift_task_alloc();
  *(v0 + 1024) = v18;
  v12(v14, v11, v13);
  swift_storeEnumTagMultiPayload();
  TTSVBPath.url.getter(v18);
  sub_2331BDC54(v14, type metadata accessor for TTSVBPath);
  v74 = *sub_2331DEBE8();
  v75 = 0;
  v76 = 0;
  v77 = -1;
  v19 = v74;
  v20 = sub_233126E60();
  _TTSVBFileManager.createDirectoryIfNeeded(_:attributes:deleteAndRecreateIfExists:problem:)(v18, 0, v20 & 1, &v75);
  if (v72)
  {
    v21 = *(v0 + 984);
    v22 = *(v0 + 952);
    v23 = *(v0 + 936);
    v24 = *(v0 + 928);
    v66 = *(v0 + 880);
    v69 = *(v0 + 920);
    v62 = *(v0 + 744);
    v25 = *(v0 + 736);
    v26 = *(v0 + 728);

    (*(v17 + 8))(v18, v71);
    (*(v25 + 8))(v62, v26);
    v69(v22, v66);

    goto LABEL_5;
  }

  v29 = *(v0 + 864);
  v30 = *(v0 + 856);
  v31 = *(v0 + 840);
  v32 = *(v0 + 800);

  v29(v31, v30, v32);
  v73 = swift_task_alloc();
  (*(v17 + 16))(v73, v18, v71);
  v33 = sub_23328D6CC();
  v34 = sub_23328DE4C();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 912);
  v37 = *(v0 + 840);
  v38 = *(v0 + 800);
  if (v35)
  {
    v39 = swift_slowAlloc();
    v67 = v38;
    v40 = swift_slowAlloc();
    v75 = v40;
    *v39 = 136315138;
    v64 = v36;
    v61 = sub_23328CC6C();
    v63 = v37;
    v42 = v41;
    v43 = *(v17 + 8);
    v43(v73, v71);
    v44 = sub_23311A8F4(v61, v42, &v75);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_233109000, v33, v34, "Using directory for synthesizes samples: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x23839CFD0](v40, -1, -1);
    MEMORY[0x23839CFD0](v39, -1, -1);

    v64(v63, v67);
  }

  else
  {

    v43 = *(v17 + 8);
    v43(v73, v71);
    v36(v37, v38);
  }

  *(v0 + 1032) = v43;
  v45 = *(v0 + 936);

  *(v0 + 1040) = [objc_opt_self() defaultManager];
  LOBYTE(v75) = 0;
  *(v0 + 1048) = TTSVBMinimumUserPhraseCount(forExperience:)(&v75);
  v46 = [v45 localeID];
  if (v46)
  {
    v54 = v46;
    v55 = *(v0 + 592);

    v56 = sub_23328D98C();
    v58 = v57;

    *(v0 + 1056) = v58;
    v59 = swift_task_alloc();
    *(v0 + 1064) = v59;
    v59[2] = v55;
    v59[3] = v56;
    v59[4] = v58;
    v59[5] = @"default";
    v60 = swift_task_alloc();
    *(v0 + 1072) = v60;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2810, &qword_233299248);
    *v60 = v0;
    v60[1] = sub_2331A2FA8;
    v51 = sub_2331BE500;
    v46 = (v0 + 568);
    v49 = 0xD000000000000033;
    v50 = 0x80000002332A7F90;
    v47 = 0;
    v48 = 0;
    v52 = v59;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822008A0](v46, v47, v48, v49, v50, v51, v52, v53);
}

uint64_t sub_2331A2FA8()
{
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v2 = sub_2331A3D28;
  }

  else
  {

    v2 = sub_2331A30D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2331A30D0()
{
  v123 = v0;
  v1 = *(v0 + 568);
  *(v0 + 1088) = v1;
  *(v0 + 1096) = *(v1 + 16);
  v2 = sub_23328CE1C();
  *(v0 + 1104) = v2;
  v3 = *(v2 - 8);
  *(v0 + 1112) = v3;
  *(v0 + 1120) = *(v3 + 64);
  *(v0 + 1128) = swift_task_alloc();
  result = sub_23328CE0C();
  v5 = *(v1 + 16);
  *(v0 + 1136) = v5;
  if (v5)
  {
    v6 = 0;
    v7 = (v0 + 16);
    *(v0 + 1200) = *MEMORY[0x277D70198];
    *(v0 + 1204) = *MEMORY[0x277D701A0];
    v8 = 32;
    while (1)
    {
      *(v0 + 1144) = v6;
      v9 = *(v0 + 1088);
      if (v6 >= *(v9 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = *(v0 + 1048);
      v11 = *(v9 + v8 + 32);
      v12 = *(v9 + v8 + 48);
      v13 = *(v9 + v8 + 16);
      *(v0 + 136) = *(v9 + v8);
      *(v0 + 184) = v12;
      *(v0 + 168) = v11;
      *(v0 + 152) = v13;
      v15 = *(v9 + v8 + 80);
      v14 = *(v9 + v8 + 96);
      v16 = *(v9 + v8 + 112);
      *(v0 + 200) = *(v9 + v8 + 64);
      *(v0 + 248) = v16;
      *(v0 + 232) = v14;
      *(v0 + 216) = v15;
      memmove(v7, (v9 + v8), 0x78uLL);
      if (v10 < v6)
      {
        sub_2331B4B78(v0 + 136, v0 + 376);

        sub_2331B4CC8(v7);
        goto LABEL_9;
      }

      v112 = v8;
      v115 = v6;
      v17 = *(v0 + 952);
      v18 = v7;
      v19 = *(v0 + 896);
      v20 = *(v0 + 880);
      v21 = *(v0 + 704);
      v119 = *(v0 + 1040);
      v22 = swift_task_alloc();
      *(v0 + 1152) = v22;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1930, &unk_2332901D0);
      v24 = *(v23 + 48);
      v25 = v21 + *(v23 + 64);
      v19(v21, v17, v20);
      v7 = v18;
      v26 = *v18;
      *(v0 + 496) = *v18;
      *(v21 + v24) = v26;
      sub_2331B4B78(v0 + 136, v0 + 256);
      sub_2331B4BD4(v0 + 496, v0 + 512);
      v27 = sub_2331C464C();
      v28 = *(v27 + 1);
      *v25 = *v27;
      *(v25 + 8) = v28;
      swift_storeEnumTagMultiPayload();
      v29 = v28;
      TTSVBPath.url.getter(v22);
      sub_2331BDC54(v21, type metadata accessor for TTSVBPath);
      sub_23328CC6C();
      v30 = sub_23328D95C();

      LODWORD(v21) = [v119 fileExistsAtPath_];

      if (!v21)
      {
        break;
      }

      ++v6;
      v31 = *(v0 + 1136);
      (*(v0 + 1032))(v22, *(v0 + 1000));
      sub_2331B4CC8(v18);

      v8 = v112 + 120;
      if (v115 + 1 == v31)
      {
        goto LABEL_7;
      }
    }

    v121 = v22;
    v92 = *(v0 + 1204);
    v90 = *(v0 + 1200);
    v111 = *(v0 + 856);
    v114 = *(v0 + 864);
    v106 = *(v0 + 832);
    v109 = *(v0 + 800);
    v62 = *(v0 + 736);
    v63 = *(v0 + 728);
    v64 = *(v0 + 712);
    v65 = *(v0 + 664);
    v66 = *(v0 + 656);
    v67 = *(v0 + 640);
    v68 = *(v0 + 632);
    v86 = *(v0 + 648);
    v88 = *(v0 + 624);
    (*(v62 + 16))(v64, *(v0 + 744), v63);
    (*(v62 + 56))(v64, 0, 1, v63);
    *(swift_task_alloc() + 16) = v7;
    (*(v66 + 104))(v65, v90, v86);
    (*(v68 + 104))(v67, v92, v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2868, &qword_233299298);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_233290950;
    sub_23328D0AC();
    sub_23328D09C();
    sub_23328D08C();
    *(v0 + 576) = v69;
    sub_2331B2AAC(&qword_27DDE2870, MEMORY[0x277D70340], MEMORY[0x277D70348]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2878, &unk_2332992A0);
    sub_23315246C(&qword_27DDE2880, &qword_27DDE2878, &unk_2332992A0, MEMORY[0x277D83970]);
    sub_23328E14C();
    sub_23328D0CC();
    sub_2331B4CC8(v7);

    *(v0 + 1160) = swift_task_alloc();
    sub_23328CE0C();
    v114(v106, v111, v109);
    v70 = sub_23328D6CC();
    v71 = sub_23328DE4C();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = *(v0 + 1096);
      v73 = *(v0 + 1048);
      v74 = swift_slowAlloc();
      *v74 = 134218496;
      *(v74 + 4) = v115 + 1;
      *(v74 + 12) = 2048;
      *(v74 + 14) = v72;
      *(v74 + 22) = 2048;
      *(v74 + 24) = v73;
      _os_log_impl(&dword_233109000, v70, v71, "Will synthesize sample %ld of %ld. (stopping at %ld required)", v74, 0x20u);
      MEMORY[0x23839CFD0](v74, -1, -1);
    }

    v75 = *(v0 + 912);
    v76 = *(v0 + 832);
    v77 = *(v0 + 808);
    v78 = *(v0 + 800);

    *(v0 + 1168) = (v77 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v75(v76, v78);
    v79 = sub_2331B9558(MEMORY[0x277D84F90]);
    *(v0 + 1176) = v79;
    v118 = (*MEMORY[0x277D70328] + MEMORY[0x277D70328]);
    v80 = swift_task_alloc();
    *(v0 + 1184) = v80;
    *v80 = v0;
    v80[1] = sub_2331A3F38;
    v81 = *(v0 + 688);

    return v118(v81, v121, v79);
  }

  else
  {
LABEL_7:

LABEL_9:
    v32 = *(v0 + 1128);
    v33 = *(v0 + 1112);
    v34 = *(v0 + 1104);
    (*(v0 + 864))(*(v0 + 816), *(v0 + 856), *(v0 + 800));
    v120 = swift_task_alloc();
    (*(v33 + 16))(v120, v32, v34);
    v35 = sub_23328D6CC();
    v36 = sub_23328DE4C();
    v116 = v35;
    v37 = os_log_type_enabled(v35, v36);
    v117 = *(v0 + 1128);
    if (v37)
    {
      v38 = *(v0 + 1112);
      v39 = *(v0 + 1104);
      v85 = *(v0 + 1040);
      v107 = *(v0 + 1032);
      v101 = *(v0 + 1000);
      v103 = *(v0 + 1024);
      v82 = *(v0 + 960);
      v83 = *(v0 + 984);
      v113 = *(v0 + 952);
      v84 = *(v0 + 936);
      v87 = *(v0 + 928);
      v110 = *(v0 + 920);
      v105 = *(v0 + 880);
      v91 = *(v0 + 816);
      v93 = *(v0 + 912);
      v89 = *(v0 + 800);
      v95 = *(v0 + 736);
      v97 = *(v0 + 728);
      v99 = *(v0 + 744);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v122 = v41;
      *v40 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_233297B30;
      v43 = swift_task_alloc();
      sub_23328CE0C();
      sub_23328CD8C();
      v45 = v44;
      v46 = *(v38 + 8);
      v46(v43, v39);

      v47 = MEMORY[0x277D83A80];
      *(v42 + 56) = MEMORY[0x277D839F8];
      *(v42 + 64) = v47;
      *(v42 + 32) = v45;
      v48 = sub_23328D9BC();
      v50 = v49;
      v46(v120, v39);
      v51 = sub_23311A8F4(v48, v50, &v122);

      *(v40 + 4) = v51;
      _os_log_impl(&dword_233109000, v116, v36, "Did finish synthesizing samples. total time=%s)", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x23839CFD0](v41, -1, -1);
      MEMORY[0x23839CFD0](v40, -1, -1);

      v93(v91, v89);
      v46(v117, v39);
      v107(v103, v101);
      (*(v95 + 8))(v99, v97);
    }

    else
    {
      v52 = *(v0 + 1112);
      v53 = *(v0 + 1104);
      v54 = *(v0 + 1040);
      v108 = *(v0 + 1032);
      v102 = *(v0 + 1000);
      v104 = *(v0 + 1024);
      v55 = *(v0 + 984);
      v56 = *(v0 + 936);
      v57 = *(v0 + 928);
      v110 = *(v0 + 920);
      v113 = *(v0 + 952);
      v105 = *(v0 + 880);
      v94 = *(v0 + 816);
      v96 = *(v0 + 912);
      v58 = *(v0 + 800);
      v59 = *(v0 + 736);
      v98 = *(v0 + 728);
      v100 = *(v0 + 744);

      v60 = *(v52 + 8);
      v60(v120, v53);
      v96(v94, v58);
      v60(v117, v53);
      v108(v104, v102);
      (*(v59 + 8))(v100, v98);
    }

    v110(v113, v105);

    v61 = *(v0 + 8);

    return v61();
  }
}

uint64_t sub_2331A3D28()
{
  v1 = v0[130];
  v2 = v0[128];
  v13 = v0[125];
  v3 = v0[123];
  v4 = v0[120];
  v5 = v0[119];
  v6 = v0[117];
  v7 = v0[116];
  v14 = v0[129];
  v15 = v0[110];
  v16 = v0[115];
  v8 = v0[92];
  v11 = v0[91];
  v12 = v0[93];

  v14(v2, v13);
  (*(v8 + 8))(v12, v11);
  v16(v5, v15);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2331A3F38()
{
  *(*v1 + 1192) = v0;

  if (v0)
  {

    v2 = sub_2331A4FD0;
  }

  else
  {
    v2 = sub_2331A4080;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2331A4080()
{
  v164 = v0;
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1104);
  (*(v0 + 864))(*(v0 + 824), *(v0 + 856), *(v0 + 800));
  v159 = swift_task_alloc();
  (*(v2 + 16))(v159, v1, v3);
  v4 = sub_23328D6CC();
  v5 = sub_23328DE4C();
  v150 = v4;
  v6 = os_log_type_enabled(v4, v5);
  v156 = *(v0 + 1160);
  v147 = *(v0 + 1152);
  v7 = *(v0 + 1112);
  if (v6)
  {
    v8 = *(v0 + 1104);
    v9 = *(v0 + 1096);
    v143 = *(v0 + 1032);
    v140 = *(v0 + 1000);
    v130 = *(v0 + 912);
    v127 = *(v0 + 824);
    v124 = *(v0 + 800);
    v137 = *(v0 + 688);
    v10 = *(v0 + 1144) + 1;
    v133 = *(v0 + 672);
    v134 = *(v0 + 680);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v163[0] = v12;
    *v11 = 134218498;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v9;
    *(v11 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_233297B30;
    v14 = swift_task_alloc();
    sub_23328CE0C();
    sub_23328CD8C();
    v16 = v15;
    v17 = *(v7 + 8);
    v17(v14, v8);

    v18 = MEMORY[0x277D83A80];
    *(v13 + 56) = MEMORY[0x277D839F8];
    *(v13 + 64) = v18;
    *(v13 + 32) = v16;
    v19 = sub_23328D9BC();
    v21 = v20;
    v17(v159, v8);
    v22 = sub_23311A8F4(v19, v21, v163);

    *(v11 + 24) = v22;
    _os_log_impl(&dword_233109000, v150, v5, "Did synthesize sample %ld of %ld. synthesis time=%s", v11, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23839CFD0](v12, -1, -1);
    MEMORY[0x23839CFD0](v11, -1, -1);

    v130(v127, v124);
    v17(v156, v8);
    (*(v134 + 8))(v137, v133);
  }

  else
  {
    v23 = *(v0 + 1104);
    v140 = *(v0 + 1000);
    v143 = *(v0 + 1032);
    v24 = *(v0 + 912);
    v25 = *(v0 + 824);
    v26 = *(v0 + 800);
    v27 = *(v0 + 688);
    v28 = *(v0 + 680);
    v29 = *(v0 + 672);

    v30 = *(v7 + 8);
    v30(v159, v23);
    v24(v25, v26);
    v30(v156, v23);
    (*(v28 + 8))(v27, v29);
  }

  v143(v147, v140);
  v31 = *(v0 + 1136);
  v32 = *(v0 + 1144) + 1;

  if (v32 == v31)
  {
LABEL_10:

LABEL_12:
    v61 = *(v0 + 1128);
    v62 = *(v0 + 1112);
    v63 = *(v0 + 1104);
    (*(v0 + 864))(*(v0 + 816), *(v0 + 856), *(v0 + 800));
    v161 = swift_task_alloc();
    (*(v62 + 16))(v161, v61, v63);
    v64 = sub_23328D6CC();
    v65 = sub_23328DE4C();
    v155 = v64;
    v66 = os_log_type_enabled(v64, v65);
    v157 = *(v0 + 1128);
    if (v66)
    {
      v67 = *(v0 + 1112);
      v68 = *(v0 + 1104);
      v114 = *(v0 + 1040);
      v144 = *(v0 + 1032);
      v135 = *(v0 + 1000);
      v138 = *(v0 + 1024);
      v111 = *(v0 + 960);
      v112 = *(v0 + 984);
      v152 = *(v0 + 952);
      v113 = *(v0 + 936);
      v116 = *(v0 + 928);
      v148 = *(v0 + 920);
      v141 = *(v0 + 880);
      v120 = *(v0 + 816);
      v122 = *(v0 + 912);
      v118 = *(v0 + 800);
      v125 = *(v0 + 736);
      v128 = *(v0 + 728);
      v131 = *(v0 + 744);
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v163[0] = v70;
      *v69 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_233297B30;
      v72 = swift_task_alloc();
      sub_23328CE0C();
      sub_23328CD8C();
      v74 = v73;
      v75 = *(v67 + 8);
      v75(v72, v68);

      v76 = MEMORY[0x277D83A80];
      *(v71 + 56) = MEMORY[0x277D839F8];
      *(v71 + 64) = v76;
      *(v71 + 32) = v74;
      v77 = sub_23328D9BC();
      v79 = v78;
      v75(v161, v68);
      v80 = sub_23311A8F4(v77, v79, v163);

      *(v69 + 4) = v80;
      _os_log_impl(&dword_233109000, v155, v65, "Did finish synthesizing samples. total time=%s)", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x23839CFD0](v70, -1, -1);
      MEMORY[0x23839CFD0](v69, -1, -1);

      v122(v120, v118);
      v75(v157, v68);
      v144(v138, v135);
      (*(v125 + 8))(v131, v128);
    }

    else
    {
      v81 = *(v0 + 1112);
      v82 = *(v0 + 1104);
      v83 = *(v0 + 1040);
      v145 = *(v0 + 1032);
      v136 = *(v0 + 1000);
      v139 = *(v0 + 1024);
      v84 = *(v0 + 984);
      v85 = *(v0 + 936);
      v86 = *(v0 + 928);
      v148 = *(v0 + 920);
      v152 = *(v0 + 952);
      v141 = *(v0 + 880);
      v123 = *(v0 + 816);
      v126 = *(v0 + 912);
      v87 = *(v0 + 800);
      v88 = *(v0 + 736);
      v129 = *(v0 + 728);
      v132 = *(v0 + 744);

      v89 = *(v81 + 8);
      v89(v161, v82);
      v126(v123, v87);
      v89(v157, v82);
      v145(v139, v136);
      (*(v88 + 8))(v132, v129);
    }

    v148(v152, v141);

    v90 = *(v0 + 8);

    return v90();
  }

  else
  {
    v34 = (v0 + 16);
    v35 = *(v0 + 1144);
    v36 = v35 + 1;
    v37 = 120 * v35 + 152;
    while (1)
    {
      *(v0 + 1144) = v36;
      v38 = *(v0 + 1088);
      if (v36 >= *(v38 + 16))
      {
        __break(1u);
        return result;
      }

      v39 = *(v0 + 1048);
      v40 = *(v38 + v37 + 32);
      v41 = *(v38 + v37 + 48);
      v42 = *(v38 + v37 + 16);
      *(v0 + 136) = *(v38 + v37);
      *(v0 + 184) = v41;
      *(v0 + 168) = v40;
      *(v0 + 152) = v42;
      v44 = *(v38 + v37 + 80);
      v43 = *(v38 + v37 + 96);
      v45 = *(v38 + v37 + 112);
      *(v0 + 200) = *(v38 + v37 + 64);
      *(v0 + 248) = v45;
      *(v0 + 232) = v43;
      *(v0 + 216) = v44;
      memmove(v34, (v38 + v37), 0x78uLL);
      if (v39 < v36)
      {
        sub_2331B4B78(v0 + 136, v0 + 376);

        sub_2331B4CC8(v34);
        goto LABEL_12;
      }

      v151 = v37;
      v154 = v36;
      v46 = *(v0 + 952);
      v47 = v34;
      v48 = *(v0 + 896);
      v49 = *(v0 + 880);
      v50 = *(v0 + 704);
      v160 = *(v0 + 1040);
      v51 = swift_task_alloc();
      *(v0 + 1152) = v51;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1930, &unk_2332901D0);
      v53 = *(v52 + 48);
      v54 = v50 + *(v52 + 64);
      v48(v50, v46, v49);
      v34 = v47;
      v55 = *v47;
      *(v0 + 496) = *v47;
      *(v50 + v53) = v55;
      sub_2331B4B78(v0 + 136, v0 + 256);
      sub_2331B4BD4(v0 + 496, v0 + 512);
      v56 = sub_2331C464C();
      v57 = *(v56 + 1);
      *v54 = *v56;
      *(v54 + 8) = v57;
      swift_storeEnumTagMultiPayload();
      v58 = v57;
      TTSVBPath.url.getter(v51);
      sub_2331BDC54(v50, type metadata accessor for TTSVBPath);
      sub_23328CC6C();
      v59 = sub_23328D95C();

      LODWORD(v50) = [v160 fileExistsAtPath_];

      if (!v50)
      {
        break;
      }

      ++v36;
      v60 = *(v0 + 1136);
      (*(v0 + 1032))(v51, *(v0 + 1000));
      sub_2331B4CC8(v47);

      v37 = v151 + 120;
      if (v154 + 1 == v60)
      {
        goto LABEL_10;
      }
    }

    v162 = v51;
    v121 = *(v0 + 1204);
    v119 = *(v0 + 1200);
    v149 = *(v0 + 856);
    v153 = *(v0 + 864);
    v142 = *(v0 + 832);
    v146 = *(v0 + 800);
    v91 = *(v0 + 736);
    v92 = *(v0 + 728);
    v93 = *(v0 + 712);
    v94 = *(v0 + 664);
    v95 = *(v0 + 656);
    v96 = *(v0 + 640);
    v97 = *(v0 + 632);
    v115 = *(v0 + 648);
    v117 = *(v0 + 624);
    (*(v91 + 16))(v93, *(v0 + 744), v92);
    (*(v91 + 56))(v93, 0, 1, v92);
    *(swift_task_alloc() + 16) = v34;
    (*(v95 + 104))(v94, v119, v115);
    (*(v97 + 104))(v96, v121, v117);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2868, &qword_233299298);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_233290950;
    sub_23328D0AC();
    sub_23328D09C();
    sub_23328D08C();
    *(v0 + 576) = v98;
    sub_2331B2AAC(&qword_27DDE2870, MEMORY[0x277D70340], MEMORY[0x277D70348]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2878, &unk_2332992A0);
    sub_23315246C(&qword_27DDE2880, &qword_27DDE2878, &unk_2332992A0, MEMORY[0x277D83970]);
    sub_23328E14C();
    sub_23328D0CC();
    sub_2331B4CC8(v34);

    *(v0 + 1160) = swift_task_alloc();
    sub_23328CE0C();
    v153(v142, v149, v146);
    v99 = sub_23328D6CC();
    v100 = sub_23328DE4C();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = *(v0 + 1096);
      v102 = *(v0 + 1048);
      v103 = swift_slowAlloc();
      *v103 = 134218496;
      *(v103 + 4) = v154 + 1;
      *(v103 + 12) = 2048;
      *(v103 + 14) = v101;
      *(v103 + 22) = 2048;
      *(v103 + 24) = v102;
      _os_log_impl(&dword_233109000, v99, v100, "Will synthesize sample %ld of %ld. (stopping at %ld required)", v103, 0x20u);
      MEMORY[0x23839CFD0](v103, -1, -1);
    }

    v104 = *(v0 + 912);
    v105 = *(v0 + 832);
    v106 = *(v0 + 808);
    v107 = *(v0 + 800);

    *(v0 + 1168) = (v106 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v104(v105, v107);
    v108 = sub_2331B9558(MEMORY[0x277D84F90]);
    *(v0 + 1176) = v108;
    v158 = (*MEMORY[0x277D70328] + MEMORY[0x277D70328]);
    v109 = swift_task_alloc();
    *(v0 + 1184) = v109;
    *v109 = v0;
    v109[1] = sub_2331A3F38;
    v110 = *(v0 + 688);

    return v158(v110, v162, v108);
  }
}

uint64_t sub_2331A4FD0()
{
  v1 = *(v0 + 1160);
  v18 = *(v0 + 1152);
  v2 = *(v0 + 1112);
  v15 = *(v0 + 1104);
  v3 = *(v0 + 1040);
  v16 = *(v0 + 1032);
  v20 = *(v0 + 1024);
  v21 = *(v0 + 1128);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 984);
  v6 = *(v0 + 936);
  v7 = *(v0 + 928);
  v23 = *(v0 + 920);
  v24 = *(v0 + 952);
  v22 = *(v0 + 880);
  v19 = *(v0 + 744);
  v8 = *(v0 + 736);
  v17 = *(v0 + 728);
  v9 = *(v0 + 680);
  v13 = *(v0 + 672);
  v14 = *(v0 + 688);

  v10 = *(v2 + 8);
  v10(v1, v15);
  (*(v9 + 8))(v14, v13);
  v16(v18, v4);
  v10(v21, v15);
  v16(v20, v4);
  (*(v8 + 8))(v19, v17);
  v23(v24, v22);

  v11 = *(v0 + 8);

  return v11();
}

Swift::Void __swiftcall TTSVBVoiceBankingManager.sendMockUserNotification()()
{
  v0 = [objc_opt_self() defaultCenter];
  [v0 postNotificationName:*sub_233169640() object:0];
}

uint64_t sub_2331A531C()
{
  v1 = v0;
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23328D83C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = TTSVBProcessIsVoicebankingd(v10, v11);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  *v9 = v13;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v14 = v13;
  LOBYTE(v13) = sub_23328D85C();
  result = (*(v7 + 8))(v9, v6);
  if ((v13 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = sub_233225440();
  (*(v3 + 16))(v5, v15, v2);
  v16 = sub_23328D6CC();
  v17 = sub_23328DE4C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_233109000, v16, v17, "Will import voices from cloud store to local store", v18, 2u);
    MEMORY[0x23839CFD0](v18, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  result = sub_233175210();
  if (result)
  {
    sub_23328D2BC();
  }

  v19 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  if (!v19)
  {
    goto LABEL_13;
  }

  LOBYTE(aBlock[0]) = 1;
  v20 = v19;
  v21 = sub_2331E511C(aBlock);

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v1;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2331B9BBC;
  *(v23 + 24) = v22;
  aBlock[4] = sub_2331B9BC4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331A8974;
  aBlock[3] = &block_descriptor_219_0;
  v24 = _Block_copy(aBlock);
  v25 = v21;
  v26 = v1;

  [v25 performBlockAndWait_];

  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_2331A5704()
{
  v1 = v0;
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23328D83C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = TTSVBProcessIsVoicebankingd(v10, v11);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  *v9 = v13;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v14 = v13;
  LOBYTE(v13) = sub_23328D85C();
  result = (*(v7 + 8))(v9, v6);
  if ((v13 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = sub_233225440();
  (*(v3 + 16))(v5, v15, v2);
  v16 = sub_23328D6CC();
  v17 = sub_23328DE4C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_233109000, v16, v17, "Will update download status for local models", v18, 2u);
    MEMORY[0x23839CFD0](v18, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  result = sub_233175210();
  if (result)
  {
    sub_23328D2BC();
  }

  v19 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  if (!v19)
  {
    goto LABEL_13;
  }

  LOBYTE(aBlock[0]) = 1;
  v20 = v19;
  v21 = sub_2331E511C(aBlock);

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v1;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2331BA4CC;
  *(v23 + 24) = v22;
  aBlock[4] = sub_2331BE574;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331A8974;
  aBlock[3] = &block_descriptor_264;
  v24 = _Block_copy(aBlock);
  v25 = v21;
  v26 = v1;

  [v25 performBlockAndWait_];

  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_2331A5B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = TTSVBProcessIsVoicebankingd(a1, a2);
  if (result)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    v10 = v4;
    sub_233178950(a4, v9, a1, a2, &unk_284875498, sub_2331BDE5C, &block_descriptor_572);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2331A5BC0(unint64_t a1, uint64_t a2)
{
  v336 = a2;
  v295 = type metadata accessor for _TTSVBFileManager.TTSVBRelativePath(0);
  v294 = *(v295 - 8);
  MEMORY[0x28223BE20](v295);
  v304 = &v293 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v293 - v5);
  v7 = sub_23328D6EC();
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v306 = &v293 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v310 = &v293 - v11;
  MEMORY[0x28223BE20](v12);
  v329 = &v293 - v13;
  MEMORY[0x28223BE20](v14);
  v313 = &v293 - v15;
  MEMORY[0x28223BE20](v16);
  v312 = &v293 - v17;
  MEMORY[0x28223BE20](v18);
  v335 = &v293 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = (&v293 - v21);
  MEMORY[0x28223BE20](v23);
  v25 = (&v293 - v24);
  MEMORY[0x28223BE20](v26);
  v311 = &v293 - v27;
  MEMORY[0x28223BE20](v28);
  v314 = &v293 - v29;
  MEMORY[0x28223BE20](v30);
  v300 = &v293 - v31;
  v32 = type metadata accessor for TTSVBLocalVoiceMO();
  v33 = sub_2331F88A8(v32, &protocol witness table for TTSVBLocalVoiceMO);
  v318 = v32;
  v35 = static DSO<>.fetch(in:config:)(a1, v33, v34, v32, &protocol witness table for TTSVBLocalVoiceMO);

  v37 = v35;
  v326 = v35;
  if (v35 >> 62)
  {
    goto LABEL_137;
  }

  v38 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
LABEL_138:

    NSManagedObjectContext.saveOrRollback()();
    return;
  }

LABEL_3:
  v39 = 0;
  v321 = 0;
  v334 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger;
  v325 = v37 & 0xC000000000000001;
  v299 = v37 & 0xFFFFFFFFFFFFFF8;
  v298 = v37 + 32;
  v346 = (v8 + 16);
  v347 = (v8 + 8);
  *&v36 = 136315138;
  v337 = v36;
  *&v36 = 134217984;
  v297 = v36;
  v324 = v38;
  v349 = a1;
  v322 = v6;
  v348 = v7;
  v332 = v22;
  v305 = v25;
  while (1)
  {
    if (v325)
    {
      v40 = v39;
      v41 = MEMORY[0x23839BFC0](v39, v37);
      v42 = __OFADD__(v40, 1);
      v43 = v40 + 1;
      if (v42)
      {
        goto LABEL_135;
      }
    }

    else
    {
      if (v39 >= *(v299 + 16))
      {
        goto LABEL_136;
      }

      v44 = v39;
      v41 = *(v298 + 8 * v39);
      v42 = __OFADD__(v44, 1);
      v43 = v44 + 1;
      if (v42)
      {
        goto LABEL_135;
      }
    }

    v333 = v43;
    v45 = *((*MEMORY[0x277D85000] & *v41) + 0x60);
    v46 = (*MEMORY[0x277D85000] & *v41) + 96;
    v353 = v41;
    v331 = v45;
    v330 = v46;
    v47 = v45();
    v8 = v47;
    v6 = *(v47 + 16);
    if (v6)
    {
      v7 = (v47 + 32);
      v22 = MEMORY[0x277D84F90];
      a1 = 0;
      while (a1 < *(v8 + 16))
      {
        v354 = *&v7[4 * a1];
        v25 = (a1 + 1);
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        if (TTSVBCommonVoiceModelMO.status.getter(ObjectType, *(&v354 + 1)) == 7)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v356 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_233154978(0, v22[2] + 1, 1);
            v22 = v356;
          }

          v50 = v354;
          v52 = v22[2];
          v51 = v22[3];
          if (v52 >= v51 >> 1)
          {
            sub_233154978((v51 > 1), v52 + 1, 1);
            v50 = v354;
            v22 = v356;
          }

          v22[2] = v52 + 1;
          *&v22[2 * v52 + 4] = v50;
          if ((v6 - 1) == a1)
          {
            goto LABEL_25;
          }

          ++a1;
        }

        else
        {
          swift_unknownObjectRelease();
          ++a1;
          if (v6 == v25)
          {
            goto LABEL_25;
          }
        }
      }

      __break(1u);
      goto LABEL_134;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_25:

    v53 = v22[2];

    v54 = sub_233225440();
    v55 = *v346;
    if (!v53)
    {
      v66 = v300;
      v7 = v348;
      v55(v300, v54, v348);
      v8 = v353;
      v67 = sub_23328D6CC();
      v68 = sub_23328DE4C();

      v69 = os_log_type_enabled(v67, v68);
      a1 = v349;
      if (v69)
      {
        v22 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v356 = v6;
        *v22 = v337;
        v70 = TTSVBCommonVoiceMO.displayName.getter(v318, &protocol witness table for TTSVBLocalVoiceMO);
        v72 = sub_23311A8F4(v70, v71, &v356);

        *(v22 + 4) = v72;
        v7 = v348;
        _os_log_impl(&dword_233109000, v67, v68, "Found voice but it didn't have any completed models. Skipping: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x23839CFD0](v6, -1, -1);
        MEMORY[0x23839CFD0](v22, -1, -1);
      }

      else
      {
      }

      (*v347)(v66, v7);
      goto LABEL_5;
    }

    v56 = v314;
    v343 = v54;
    v57 = v348;
    v344 = v55;
    (v55)(v314);
    v22 = v353;
    v58 = sub_23328D6CC();
    v59 = sub_23328DE4C();

    v60 = os_log_type_enabled(v58, v59);
    a1 = v349;
    if (v60)
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v356 = v62;
      *v61 = v337;
      v63 = TTSVBCommonVoiceMO.displayName.getter(v318, &protocol witness table for TTSVBLocalVoiceMO);
      v65 = sub_23311A8F4(v63, v64, &v356);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_233109000, v58, v59, "Considering local voice: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x23839CFD0](v62, -1, -1);
      MEMORY[0x23839CFD0](v61, -1, -1);
    }

    v345 = *v347;
    v345(v56, v57);
    v73 = [v22 voiceID];
    v74 = sub_23328CE8C();
    v75 = *(v74 - 8);
    v76 = *(v75 + 64);
    MEMORY[0x28223BE20](v74);
    if (!v73)
    {
      break;
    }

    v6 = type metadata accessor for TTSVBCloudVoiceMO();
    sub_23328CE6C();

    v77 = static TTSVBCloudVoiceMO.voiceExists(withID:moc:)(&v293 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
    v323 = v75;
    v78 = v75 + 8;
    v319 = *(v75 + 8);
    v319(&v293 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0), v74);
    v25 = &unk_2789C4000;
    if (v77)
    {
      v7 = v348;
      v344(v311, v343, v348);
      v79 = sub_23328D6CC();
      v80 = sub_23328DE4C();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_233109000, v79, v80, "Cloud voice exists for local voice: Skipping.", v81, 2u);
        MEMORY[0x23839CFD0](v81, -1, -1);
      }

      v82 = (v345)(v311, v7);
      MEMORY[0x28223BE20](v82);
      v8 = (&v293 - 4);
      *(&v293 - 2) = v22;
      v83 = sub_233175210();
      if (v83)
      {
        MEMORY[0x28223BE20](v83);
        *(&v293 - 2) = sub_2331BD1D4;
        *(&v293 - 1) = v8;
        sub_23328D2BC();
      }

      goto LABEL_5;
    }

    v302 = v78;
    v84 = v305;
    v85 = v348;
    v344(v305, v343, v348);
    v86 = v22;
    v87 = sub_23328D6CC();
    v88 = sub_23328DE4C();

    v89 = os_log_type_enabled(v87, v88);
    v317 = v74;
    v303 = v76;
    if (v89)
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v356 = v91;
      *v90 = v337;
      v92 = TTSVBCommonVoiceMO.displayName.getter(v318, &protocol witness table for TTSVBLocalVoiceMO);
      v94 = sub_23311A8F4(v92, v93, &v356);

      *(v90 + 4) = v94;
      v25 = &unk_2789C4000;
      _os_log_impl(&dword_233109000, v87, v88, "Making new cloud voice for local voice: %s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v91);
      MEMORY[0x23839CFD0](v91, -1, -1);
      MEMORY[0x23839CFD0](v90, -1, -1);

      v95 = v305;
      v96 = v348;
    }

    else
    {

      v95 = v84;
      v96 = v85;
    }

    v97 = (v345)(v95, v96);
    MEMORY[0x28223BE20](v97);
    *(&v293 - 2) = v86;
    v98 = sub_233175210();
    if (v98)
    {
      MEMORY[0x28223BE20](v98);
      *(&v293 - 2) = sub_2331BCE7C;
      *(&v293 - 1) = (&v293 - 4);
      sub_23328D2BC();
    }

    v99 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) v25[384]];
    v100 = v86;
    v328 = v99;
    sub_233122464(v100, &protocol witness table for TTSVBLocalVoiceMO, v6, &protocol witness table for TTSVBCloudVoiceMO);
    v327 = v100;

    v320 = (MEMORY[0x277D84F90] >> 62);
    if (MEMORY[0x277D84F90] >> 62)
    {
      v292 = MEMORY[0x277D84F90];
      if (sub_23328E19C())
      {
        sub_2331B9F80(v292, &qword_27DDE2A40, &qword_233299B40, type metadata accessor for TTSVBCloudVoiceSampleMO);
      }

      else
      {
        v101 = MEMORY[0x277D84FA0];
      }
    }

    else
    {
      v101 = MEMORY[0x277D84FA0];
    }

    v358[0] = v101;
    v102 = (*((*MEMORY[0x277D85000] & *v327) + 0x58))();
    v22 = *(v102 + 16);
    v316 = v102;
    if (v22)
    {
      v103 = v102;
      v342 = type metadata accessor for TTSVBCloudVoiceSampleMO();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v104 = (v103 + 40);
      do
      {
        *&v354 = v22;
        v110 = *(v104 - 1);
        v109 = *v104;
        v350 = v104;
        v351 = v109;
        v111 = objc_allocWithZone(ObjCClassFromMetadata);
        swift_unknownObjectRetain();
        v112 = [v111 v25[384]];
        v113 = sub_2331B2AAC(&qword_27DDE2370, type metadata accessor for TTSVBCloudVoiceSampleMO, &protocol conformance descriptor for TTSVBCloudVoiceSampleMO);
        v352 = v112;
        TTSVBCommonVoiceSampleMO.shallowUpdate(fromSample:)(v110, v109, v342, v113);
        v114 = sub_23328CC9C();
        v353 = &v293;
        v115 = *(v114 - 8);
        v116 = *(v115 + 64);
        MEMORY[0x28223BE20](v114);
        v117 = swift_getObjectType();
        v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
        MEMORY[0x28223BE20](v118 - 8);
        v120 = &v293 - v119;
        v121 = v351;
        v351 = v110;
        v122 = v115;
        TTSVBCommonVoiceSampleMO.url.getter(v117, v121, &v293 - v119);
        if ((*(v115 + 48))(v120, 1, v114) == 1)
        {
          sub_233121E04(v120, &qword_27DDE19A0, &unk_233290360);
          v25 = &unk_2789C4000;
          v105 = v354;
          v106 = v352;
        }

        else
        {
          (*(v115 + 32))(&v293 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0), v120, v114);
          v356 = *sub_2331DEBE8();
          v123 = v356;
          v124 = _TTSVBFileManager.fileExists(_:)(&v293 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0));

          v125 = (v115 + 16);
          v126 = &v293 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
          if ((v124 & 1) == 0)
          {
            v146 = v335;
            v147 = v348;
            v148 = (v344)(v335, v343, v348);
            v340 = &v293;
            v149 = MEMORY[0x28223BE20](v148);
            v150 = &v293 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*v125)(v150, v150, v114, v149);
            v151 = sub_23328D6CC();
            v152 = sub_23328DE3C();
            if (os_log_type_enabled(v151, v152))
            {
              v153 = swift_slowAlloc();
              v338 = swift_slowAlloc();
              v356 = v338;
              *v153 = v337;
              sub_2331BC7FC(&qword_27DDE29B8, MEMORY[0x28220BDE0], MEMORY[0x28220BE70]);
              v154 = sub_23328E51C();
              v155 = v126;
              v157 = v156;
              v158 = v150;
              v159 = *(v122 + 8);
              v159(v158, v114);
              v160 = sub_23311A8F4(v154, v157, &v356);
              v126 = v155;

              *(v153 + 4) = v160;
              _os_log_impl(&dword_233109000, v151, v152, "Failed to add file backed future for audio recording. File doesn't exist. Skipping.: %s.", v153, 0xCu);
              v161 = v338;
              __swift_destroy_boxed_opaque_existential_0(v338);
              MEMORY[0x23839CFD0](v161, -1, -1);
              MEMORY[0x23839CFD0](v153, -1, -1);

              swift_unknownObjectRelease();
              v162 = v335;
              v163 = v348;
            }

            else
            {

              swift_unknownObjectRelease();
              v173 = v150;
              v159 = *(v122 + 8);
              v159(v173, v114);
              v162 = v146;
              v163 = v147;
            }

            v345(v162, v163);
            v25 = &unk_2789C4000;
            v105 = v354;
            v108 = v350;
            v159(v126, v114);
            a1 = v349;
            goto LABEL_49;
          }

          v127 = v332;
          v128 = v348;
          v129 = (v344)(v332, v343, v348);
          v338 = &v293;
          v130 = MEMORY[0x28223BE20](v129);
          v131 = &v293 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
          v132 = *v125;
          v340 = v131;
          v132(v131, v131, v114, v130);
          v133 = sub_23328D6CC();
          v134 = sub_23328DE4C();
          v135 = os_log_type_enabled(v133, v134);
          v339 = v114;
          if (v135)
          {
            v136 = swift_slowAlloc();
            v137 = swift_slowAlloc();
            v356 = v137;
            *v136 = v337;
            sub_2331BC7FC(&qword_27DDE29B8, MEMORY[0x28220BDE0], MEMORY[0x28220BE70]);
            v138 = sub_23328E51C();
            v140 = v139;
            v141 = v114;
            v142 = *(v122 + 8);
            v142(v131, v141);
            v143 = sub_23311A8F4(v138, v140, &v356);

            *(v136 + 4) = v143;
            _os_log_impl(&dword_233109000, v133, v134, "Adding file backed future for audio recording: %s.", v136, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v137);
            MEMORY[0x23839CFD0](v137, -1, -1);
            MEMORY[0x23839CFD0](v136, -1, -1);

            v144 = v127;
            v145 = v348;
          }

          else
          {

            v164 = v114;
            v142 = *(v122 + 8);
            v142(v131, v164);
            v144 = v127;
            v145 = v128;
          }

          v165 = (v345)(v144, v145);
          v105 = v354;
          MEMORY[0x28223BE20](v165);
          *(&v293 - 2) = v340;
          v167 = *(v336 + v334);
          v25 = &unk_2789C4000;
          if (v167)
          {
            MEMORY[0x28223BE20](v166);
            *(&v293 - 2) = sub_2331BD10C;
            *(&v293 - 1) = v168;

            sub_23328D2BC();
            sub_2331B9710(v167);
          }

          v169 = objc_opt_self();
          v170 = v340;
          v171 = sub_23328CBCC();
          v172 = [v169 createFutureForFileAtURL_];

          v106 = v352;
          [v352 setAudioFuture_];
          swift_unknownObjectRelease();
          v142(v170, v339);
        }

        swift_beginAccess();
        v107 = v106;
        sub_2331B5838(&v357, v107, type metadata accessor for TTSVBCloudVoiceSampleMO, &qword_27DDE2A40, &qword_233299B40, type metadata accessor for TTSVBCloudVoiceSampleMO);
        swift_endAccess();

        swift_unknownObjectRelease();
        a1 = v349;
        v108 = v350;
LABEL_49:
        v104 = v108 + 2;
        v22 = (v105 - 1);
      }

      while (v22);
    }

    v174 = v348;
    v344(v312, v343, v348);
    v175 = sub_23328D6CC();
    v176 = sub_23328DE4C();
    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      *v177 = v297;
      swift_beginAccess();
      if ((v358[0] & 0xC000000000000001) != 0)
      {

        v22 = sub_23328E19C();
      }

      else
      {
        v22 = *(v358[0] + 16);
      }

      *(v177 + 4) = v22;
      _os_log_impl(&dword_233109000, v175, v176, "Adding %ld samples to cloud voice", v177, 0xCu);
      MEMORY[0x23839CFD0](v177, -1, -1);
    }

    v178 = (v345)(v312, v174);
    MEMORY[0x28223BE20](v178);
    *(&v293 - 2) = v358;
    v180 = *(v336 + v334);
    if (v180)
    {
      MEMORY[0x28223BE20](v179);
      *(&v293 - 2) = sub_2331BCF0C;
      *(&v293 - 1) = v181;

      sub_23328D2BC();
      sub_2331B9710(v180);
    }

    swift_beginAccess();
    v182 = v358[0];
    type metadata accessor for TTSVBCloudVoiceSampleMO();
    sub_2331B2AAC(&qword_27DDE2A30, type metadata accessor for TTSVBCloudVoiceSampleMO, MEMORY[0x277D85378]);

    v183 = sub_23328DD0C();

    [v328 addSamples_];

    v309 = v182;
    if (v320 && (v184 = MEMORY[0x277D84F90], sub_23328E19C()))
    {
      sub_2331B9F80(v184, &qword_27DDE2A48, &unk_233299B48, type metadata accessor for TTSVBCloudVoiceModelMO);
    }

    else
    {
      v185 = MEMORY[0x277D84FA0];
    }

    v357 = v185;
    v186 = v331();
    v7 = *(v186 + 16);
    *&v354 = v186;
    if (v7)
    {
      v187 = v186;
      v22 = type metadata accessor for TTSVBCloudVoiceModelMO();
      v188 = swift_getObjCClassFromMetadata();
      v189 = (v187 + 40);
      do
      {
        v191 = *(v189 - 1);
        v190 = *v189;
        v192 = objc_allocWithZone(v188);
        swift_unknownObjectRetain();
        v193 = [v192 v25[384]];
        v194 = sub_2331B2AAC(&qword_27DDE2358, type metadata accessor for TTSVBCloudVoiceModelMO, &protocol conformance descriptor for TTSVBCloudVoiceModelMO);
        TTSVBCommonVoiceModelMO.shallowUpdate(fromModel:)(v191, v190, v22, v194);
        swift_beginAccess();
        v195 = v193;
        sub_2331B5838(&v355, v195, type metadata accessor for TTSVBCloudVoiceModelMO, &qword_27DDE2A48, &unk_233299B48, type metadata accessor for TTSVBCloudVoiceModelMO);
        swift_endAccess();

        swift_unknownObjectRelease();
        v189 += 2;
        v7 = (v7 - 1);
      }

      while (v7);
    }

    v196 = v348;
    v344(v313, v343, v348);
    v197 = sub_23328D6CC();
    v198 = sub_23328DE4C();
    v199 = os_log_type_enabled(v197, v198);
    v200 = v323;
    if (v199)
    {
      v201 = swift_slowAlloc();
      *v201 = v297;
      swift_beginAccess();
      if ((v357 & 0xC000000000000001) != 0)
      {

        v22 = sub_23328E19C();
      }

      else
      {
        v22 = *(v357 + 16);
      }

      *(v201 + 4) = v22;
      _os_log_impl(&dword_233109000, v197, v198, "Adding %ld models to cloud voice", v201, 0xCu);
      MEMORY[0x23839CFD0](v201, -1, -1);
    }

    v202 = (v345)(v313, v196);
    MEMORY[0x28223BE20](v202);
    *(&v293 - 2) = &v357;
    v204 = *(v336 + v334);
    if (v204)
    {
      MEMORY[0x28223BE20](v203);
      *(&v293 - 2) = sub_2331BD00C;
      *(&v293 - 1) = v205;

      sub_23328D2BC();
      sub_2331B9710(v204);
    }

    swift_beginAccess();
    v8 = v357;
    v6 = type metadata accessor for TTSVBCloudVoiceModelMO();
    sub_2331B2AAC(&qword_27DDE2A38, type metadata accessor for TTSVBCloudVoiceModelMO, MEMORY[0x277D85378]);

    v206 = sub_23328DD0C();

    [v328 addModels_];

    v308 = v8;
    if ((v8 & 0xC000000000000001) != 0)
    {

      sub_23328E18C();
      sub_23328DD4C();
      v8 = v358[1];
      v207 = v358[2];
      v208 = v358[3];
      v209 = v358[4];
      v25 = v358[5];
    }

    else
    {
      v210 = -1 << *(v8 + 32);
      v207 = v8 + 56;
      v211 = ~v210;
      v212 = -v210;
      if (v212 < 64)
      {
        v213 = ~(-1 << v212);
      }

      else
      {
        v213 = -1;
      }

      v25 = (v213 & *(v8 + 56));

      v208 = v211;
      v209 = 0;
    }

    v307 = v208;
    v214 = (v208 + 64) >> 6;
    v316 = (v200 + 56);
    v315 = (v200 + 48);
    v301 = (v200 + 16);
    v340 = v214;
    v350 = v6;
    v342 = v207;
    ObjCClassFromMetadata = v8;
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_93;
    }

LABEL_90:
    while (2)
    {
      v215 = sub_23328E1BC();
      if (v215)
      {
        v355 = v215;
        swift_dynamicCast();
        v216 = v356;
        v217 = v209;
        v7 = v25;
        if (v356)
        {
          while (1)
          {
            *&v354 = v7;
            v220 = sub_2331B2AAC(&qword_27DDE2358, type metadata accessor for TTSVBCloudVoiceModelMO, &protocol conformance descriptor for TTSVBCloudVoiceModelMO);
            v7 = v216;
            if (TTSVBCommonVoiceModelMO.supportsFileBackedFutureSync.getter(v6, v220))
            {
              break;
            }

            v228 = v329;
            v229 = v348;
            v344(v329, v343, v348);
            v230 = v7;
            v231 = sub_23328D6CC();
            v232 = sub_23328DE1C();

            if (!os_log_type_enabled(v231, v232))
            {

              v345(v228, v229);
LABEL_125:
              v209 = v217;
              v25 = v354;
              goto LABEL_126;
            }

            v7 = swift_slowAlloc();
            v233 = swift_slowAlloc();
            v356 = v233;
            *v7 = v337;
            v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
            v22 = ((*(*(v234 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
            v235 = (&v293 - v22);
            v236 = [v230 modelID];
            v351 = &v293;
            MEMORY[0x28223BE20](v236);
            v238 = (&v293 - v22);
            v353 = v233;
            v352 = &v293;
            if (v237)
            {
              v22 = v237;
              sub_23328CE6C();

              v239 = 0;
            }

            else
            {
              v239 = 1;
            }

            v272 = v317;
            (*v316)(v238, v239, 1, v317);
            sub_233121D9C(v238, v235, &qword_27DDE19B0, &qword_233290370);
            v273 = (*v315)(v235, 1, v272);
            if (v273)
            {
              sub_233121E04(v235, &qword_27DDE19B0, &qword_233290370);
              v274 = 0xE500000000000000;
              v275 = 0x3E6C696E3CLL;
            }

            else
            {
              v339 = &v293;
              v286 = MEMORY[0x28223BE20](v273);
              v22 = (&v293 - ((v287 + 15) & 0xFFFFFFFFFFFFFFF0));
              (*v301)(v22, v235, v272, v286);
              sub_233121E04(v235, &qword_27DDE19B0, &qword_233290370);
              v288 = sub_23328CE3C();
              v274 = v289;
              v319(v22, v272);
              v275 = v288;
            }

            v290 = sub_23311A8F4(v275, v274, &v356);

            *(v7 + 1) = v290;
            _os_log_impl(&dword_233109000, v231, v232, "Skipping file-backed future creation for model: %s. Model version does not use file backed futures", v7, 0xCu);
            v291 = v353;
            __swift_destroy_boxed_opaque_existential_0(v353);
            MEMORY[0x23839CFD0](v291, -1, -1);
            MEMORY[0x23839CFD0](v7, -1, -1);

            v345(v329, v348);
            v209 = v217;
            v25 = v354;
            a1 = v349;
LABEL_126:
            v6 = v350;
            v207 = v342;
            v8 = ObjCClassFromMetadata;
            v214 = v340;
            if (ObjCClassFromMetadata < 0)
            {
              goto LABEL_90;
            }

LABEL_93:
            v218 = v209;
            v219 = v25;
            v217 = v209;
            if (!v25)
            {
              while (1)
              {
                v217 = v218 + 1;
                if (__OFADD__(v218, 1))
                {
                  break;
                }

                if (v217 >= v214)
                {
                  v25 = 0;
                  goto LABEL_129;
                }

                v219 = *(v207 + 8 * v217);
                ++v218;
                if (v219)
                {
                  goto LABEL_97;
                }
              }

LABEL_134:
              __break(1u);
LABEL_135:
              __break(1u);
LABEL_136:
              __break(1u);
LABEL_137:
              v38 = sub_23328E19C();
              v37 = v326;
              if (!v38)
              {
                goto LABEL_138;
              }

              goto LABEL_3;
            }

LABEL_97:
            v7 = ((v219 - 1) & v219);
            v216 = *(*(v8 + 48) + ((v217 << 9) | (8 * __clz(__rbit64(v219)))));
            if (!v216)
            {
              goto LABEL_129;
            }
          }

          v221 = sub_23328CC9C();
          v22 = &v293;
          v339 = *(v221 - 8);
          v222 = v339[8];
          MEMORY[0x28223BE20](v221);
          v223 = (v222 + 15) & 0xFFFFFFFFFFFFFFF0;
          v353 = &v293;
          v225 = MEMORY[0x28223BE20](v224);
          v226 = v322;
          (*((*MEMORY[0x277D85000] & *v216) + 0x60))(0, v225);
          v227 = type metadata accessor for TTSVBVoiceModel(0);
          if ((*(*(v227 - 8) + 48))(v226, 1, v227) == 1)
          {

            sub_233121E04(v226, &qword_27DDE2388, &qword_233297728);
            v209 = v217;
            v25 = v354;
            v6 = v350;
            v207 = v342;
            v8 = ObjCClassFromMetadata;
            v214 = v340;
            a1 = v349;
            if (ObjCClassFromMetadata < 0)
            {
              continue;
            }

            goto LABEL_93;
          }

          v330 = &v293;
          TTSVBVoiceModel.url.getter(&v293 - v223);
          sub_2331BDC54(v226, type metadata accessor for TTSVBVoiceModel);
          v240 = v339;
          (v339[4])(&v293 - v223, &v293 - v223, v221);
          v241 = v310;
          v22 = v348;
          v242 = (v344)(v310, v343, v348);
          v353 = &v293;
          v243 = MEMORY[0x28223BE20](v242);
          v244 = &v293 - v223;
          v245 = v240[2];
          v338 = (&v293 - v223);
          v245(&v293 - v223, &v293 - v223, v221, v243);
          v246 = sub_23328D6CC();
          v247 = sub_23328DE4C();
          v248 = os_log_type_enabled(v246, v247);
          v331 = v7;
          v323 = v221;
          if (v248)
          {
            v22 = swift_slowAlloc();
            v249 = swift_slowAlloc();
            v356 = v249;
            *v22 = v337;
            v250 = sub_23328CC6C();
            v252 = v251;
            v320 = v240[1];
            v320(v244, v221);
            v253 = sub_23311A8F4(v250, v252, &v356);
            v254 = v348;

            *(v22 + 4) = v253;
            _os_log_impl(&dword_233109000, v246, v247, "Creating file futures for model at %s", v22, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v249);
            MEMORY[0x23839CFD0](v249, -1, -1);
            MEMORY[0x23839CFD0](v22, -1, -1);

            v345(v310, v254);
            v255 = v304;
            v256 = v306;
            v257 = v321;
          }

          else
          {

            v320 = v240[1];
            v320(v244, v221);
            v345(v241, v22);
            v255 = v304;
            v256 = v306;
            v257 = v321;
            v254 = v22;
          }

          v356 = *sub_2331DEBE8();
          v258 = v356;
          v259 = v338;
          v260 = _TTSVBFileManager.getRelativePathsForFilesInTree(_:)(v338);
          v7 = v257;
          a1 = v349;
          if (v257)
          {

            v344(v256, v343, v254);
            v261 = v257;
            v262 = sub_23328D6CC();
            v263 = sub_23328DE3C();

            if (os_log_type_enabled(v262, v263))
            {
              v264 = swift_slowAlloc();
              v265 = swift_slowAlloc();
              v356 = v265;
              *v264 = v337;
              v266 = sub_23328CA6C();
              v267 = v7;
              v7 = [v266 description];

              v268 = sub_23328D98C();
              v270 = v269;

              v22 = sub_23311A8F4(v268, v270, &v356);

              *(v264 + 4) = v22;
              _os_log_impl(&dword_233109000, v262, v263, "cannot make file future: %s", v264, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v265);
              MEMORY[0x23839CFD0](v265, -1, -1);
              MEMORY[0x23839CFD0](v264, -1, -1);

              v345(v306, v348);
              v271 = v338;
            }

            else
            {

              v345(v256, v254);
              v271 = v259;
            }

            v320(v271, v323);
            v321 = 0;
          }

          else
          {
            v276 = v260;
            v321 = 0;

            v277 = v276[2];
            if (v277)
            {
              type metadata accessor for TTSVBCloudVoiceModelFileMO();
              v353 = swift_getObjCClassFromMetadata();
              v352 = objc_opt_self();
              v278 = (*(v294 + 80) + 32) & ~*(v294 + 80);
              v279 = v255;
              v296 = v276;
              v280 = v276 + v278;
              v351 = *(v294 + 72);
              v22 = &unk_2789C4000;
              v281 = v331;
              do
              {
                sub_2331BDBEC(v280, v279, type metadata accessor for _TTSVBFileManager.TTSVBRelativePath);
                v282 = objc_allocWithZone(v353);
                v283 = [v282 initWithContext_];
                v284 = sub_23328D95C();
                [v283 setRelativePath_];

                [v283 setModel_];
                v285 = sub_23328CBCC();
                v7 = [v352 createFutureForFileAtURL_];

                [v283 setFileFuture_];
                swift_unknownObjectRelease();
                sub_2331BDC54(v279, type metadata accessor for _TTSVBFileManager.TTSVBRelativePath);
                v280 += v351;
                --v277;
              }

              while (v277);

              a1 = v349;
            }

            else
            {
            }

            v320(v338, v323);
          }

          goto LABEL_125;
        }
      }

      break;
    }

LABEL_129:
    sub_233113BBC(v8);

LABEL_5:
    v39 = v333;
    v37 = v326;
    if (v333 == v324)
    {
      goto LABEL_138;
    }
  }

  __break(1u);
}

void sub_2331A899C(void *a1, char *a2)
{
  v459 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2958, &qword_233299A38);
  MEMORY[0x28223BE20](v3 - 8);
  v423 = &v397 - v4;
  v415 = sub_23328D7CC();
  v5 = *(v415 - 8);
  MEMORY[0x28223BE20](v415);
  v414 = &v397 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v413 = sub_23328D80C();
  v7 = *(v413 - 8);
  MEMORY[0x28223BE20](v413);
  v412 = &v397 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23328D6EC();
  v422 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v418 = &v397 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v431 = &v397 - v12;
  MEMORY[0x28223BE20](v13);
  v424 = &v397 - v14;
  MEMORY[0x28223BE20](v15);
  v420 = &v397 - v16;
  MEMORY[0x28223BE20](v17);
  v417 = &v397 - v18;
  MEMORY[0x28223BE20](v19);
  v416 = &v397 - v20;
  MEMORY[0x28223BE20](v21);
  v419 = &v397 - v22;
  MEMORY[0x28223BE20](v23);
  v429 = &v397 - v24;
  MEMORY[0x28223BE20](v25);
  *&v445 = &v397 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v397 - v28;
  MEMORY[0x28223BE20](v30);
  v432 = &v397 - v31;
  v32 = type metadata accessor for TTSVBCloudVoiceMO();
  v33 = sub_2331F88A8(v32, &protocol witness table for TTSVBCloudVoiceMO);
  v447 = v32;
  v35 = static DSO<>.fetch(in:config:)(a1, v33, v34, v32, &protocol witness table for TTSVBCloudVoiceMO);

  v36 = type metadata accessor for TTSVBLocalVoiceMO();
  v37 = sub_2331F88A8(v36, &protocol witness table for TTSVBLocalVoiceMO);
  v464 = a1;
  v452 = v36;
  v430 = static DSO<>.fetch(in:config:)(a1, v37, v38, v36, &protocol witness table for TTSVBLocalVoiceMO);

  v474 = MEMORY[0x277D84F90];
  v421 = v35;
  if (v35 >> 62)
  {
    goto LABEL_278;
  }

  v40 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v461 = v9;
  v41 = v432;
  if (v40)
  {
    v42 = 0;
    v446 = 0;
    v411 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue;
    v443 = v421 & 0xC000000000000001;
    v444 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger;
    v441 = v421 + 32;
    v442 = v421 & 0xFFFFFFFFFFFFFF8;
    v455 = v422 + 16;
    v454 = (v422 + 8);
    v409 = (v5 + 8);
    v410 = v469;
    v408 = (v7 + 8);
    *&v39 = 136315138;
    v428 = v39;
    v440 = MEMORY[0x277D84F90] >> 62;
    *&v39 = 134217984;
    v427 = v39;
    *&v39 = 136316418;
    v407 = v39;
    v426 = v29;
    v437 = v40;
LABEL_8:
    if (v443)
    {
      v43 = v42;
      v44 = MEMORY[0x23839BFC0](v42, v421);
    }

    else
    {
      if (v42 >= *(v442 + 16))
      {
        goto LABEL_273;
      }

      v43 = v42;
      v44 = *(v441 + 8 * v42);
    }

    v5 = v44;
    v45 = __OFADD__(v43, 1);
    v7 = v43 + 1;
    if (v45)
    {
      goto LABEL_272;
    }

    v451 = v7;
    v46 = [v44 voiceID];
    v47 = sub_23328CE8C();
    v48 = *(v47 - 8);
    MEMORY[0x28223BE20](v47);
    v438 = v49;
    v50 = &v397 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!v46)
    {
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
      return;
    }

    sub_23328CE6C();

    v51 = static TTSVBLocalVoiceMO.voiceExists(withID:moc:)(v50, v464);
    v439 = v48;
    v435 = v48[1];
    v436 = v48 + 1;
    v435(v50, v47);
    v52 = sub_233225440();
    v53 = *v455;
    if (v51)
    {
      (v53)(v41, v52, v9);
      v5 = v5;
      v7 = sub_23328D6CC();
      v54 = sub_23328DE4C();

      if (os_log_type_enabled(v7, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *&v468 = v56;
        *v55 = v428;
        v57 = TTSVBCommonVoiceMO.displayName.getter(v447, &protocol witness table for TTSVBCloudVoiceMO);
        v59 = sub_23311A8F4(v57, v58, &v468);

        *(v55 + 4) = v59;
        v9 = v461;
        _os_log_impl(&dword_233109000, v7, v54, "Local voice already exists for cloud voice: %s. Moving on to next cloud voice", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        v60 = v56;
        v41 = v432;
        MEMORY[0x23839CFD0](v60, -1, -1);
        MEMORY[0x23839CFD0](v55, -1, -1);
      }

      else
      {
      }

      (*v454)(v41, v9);
      goto LABEL_7;
    }

    v456 = v52;
    v53(v29);
    v61 = v5;
    v62 = sub_23328D6CC();
    v63 = sub_23328DE4C();

    v64 = os_log_type_enabled(v62, v63);
    v425 = v47;
    if (v64)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v468 = v66;
      *v65 = v428;
      v67 = TTSVBCommonVoiceMO.displayName.getter(v447, &protocol witness table for TTSVBCloudVoiceMO);
      v69 = sub_23311A8F4(v67, v68, &v468);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_233109000, v62, v63, "Making new local voice for cloud voice: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x23839CFD0](v66, -1, -1);
      MEMORY[0x23839CFD0](v65, -1, -1);

      v70 = *v454;
      v71 = v29;
      v72 = v461;
    }

    else
    {

      v70 = *v454;
      v71 = v29;
      v72 = v9;
    }

    v460 = v70;
    v73 = (v70)(v71, v72);
    MEMORY[0x28223BE20](v73);
    *(&v397 - 2) = v61;
    v74 = sub_233175210();
    if (v74)
    {
      MEMORY[0x28223BE20](v74);
      *(&v397 - 2) = sub_2331B9BEC;
      *(&v397 - 1) = (&v397 - 4);
      sub_23328D2BC();
    }

    v75 = v452;
    v76 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v77 = [v76 initWithContext_];
    v78 = v61;
    v453 = v77;
    sub_233122464(v78, &protocol witness table for TTSVBCloudVoiceMO, v75, &protocol witness table for TTSVBLocalVoiceMO);
    v450 = v78;

    if (v440 && (v301 = MEMORY[0x277D84F90], sub_23328E19C()))
    {
      sub_2331B9F80(v301, &qword_27DDE2980, &qword_233299A58, type metadata accessor for TTSVBLocalVoiceSampleMO);
    }

    else
    {
      v79 = MEMORY[0x277D84FA0];
    }

    v458 = v53;
    v473 = v79;
    v80 = (*((*MEMORY[0x277D85000] & *v450) + 0x58))();
    v81 = *(v80 + 2);
    v463 = v80;
    if (v81)
    {
      v82 = v80;
      *&v465 = type metadata accessor for TTSVBLocalVoiceSampleMO();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v84 = (v82 + 40);
      v85 = v464;
      do
      {
        v87 = *(v84 - 1);
        v86 = *v84;
        v88 = objc_allocWithZone(ObjCClassFromMetadata);
        swift_unknownObjectRetain();
        v89 = [v88 initWithContext_];
        v90 = sub_2331B2AAC(&qword_27DDE2960, type metadata accessor for TTSVBLocalVoiceSampleMO, &protocol conformance descriptor for TTSVBLocalVoiceSampleMO);
        TTSVBCommonVoiceSampleMO.shallowUpdate(fromSample:)(v87, v86, v465, v90);
        swift_beginAccess();
        v91 = v89;
        sub_2331B5838(&v466, v91, type metadata accessor for TTSVBLocalVoiceSampleMO, &qword_27DDE2980, &qword_233299A58, type metadata accessor for TTSVBLocalVoiceSampleMO);
        swift_endAccess();

        swift_unknownObjectRelease();
        v84 += 2;
        --v81;
      }

      while (v81);
    }

    v92 = v461;
    (v458)(v445, v456, v461);
    v93 = sub_23328D6CC();
    v94 = sub_23328DE4C();
    v95 = os_log_type_enabled(v93, v94);
    v96 = MEMORY[0x277D84F90];
    if (v95)
    {
      v97 = swift_slowAlloc();
      *v97 = v427;
      swift_beginAccess();
      if ((v473 & 0xC000000000000001) != 0)
      {

        v98 = sub_23328E19C();
      }

      else
      {
        v98 = *(v473 + 16);
      }

      *(v97 + 4) = v98;
      _os_log_impl(&dword_233109000, v93, v94, "Adding %ld samples to local voice", v97, 0xCu);
      MEMORY[0x23839CFD0](v97, -1, -1);
    }

    v99 = (v460)(v445, v92);
    MEMORY[0x28223BE20](v99);
    *(&v397 - 2) = &v473;
    v101 = *&v459[v444];
    if (v101)
    {
      MEMORY[0x28223BE20](v100);
      *(&v397 - 2) = sub_2331B9C7C;
      *(&v397 - 1) = v102;

      sub_23328D2BC();
      sub_2331B9710(v101);
    }

    swift_beginAccess();
    v103 = v473;
    type metadata accessor for TTSVBLocalVoiceSampleMO();
    sub_2331B2AAC(&qword_27DDE2968, type metadata accessor for TTSVBLocalVoiceSampleMO, MEMORY[0x277D85378]);

    v104 = sub_23328DD0C();

    [v453 addSamples_];

    v433 = v103;
    if (v440 && sub_23328E19C())
    {
      sub_2331B9F80(v96, &qword_27DDE2988, &unk_233299A60, type metadata accessor for TTSVBLocalVoiceModelMO);
    }

    else
    {
      v105 = MEMORY[0x277D84FA0];
    }

    v472 = v105;
    v106 = (*((*MEMORY[0x277D85000] & *v450) + 0x60))();
    v107 = *(v106 + 16);
    if (v107)
    {
      v108 = type metadata accessor for TTSVBLocalVoiceModelMO();
      v109 = swift_getObjCClassFromMetadata();
      v110 = (v106 + 40);
      do
      {
        v112 = *(v110 - 1);
        v113 = *v110;
        v114 = objc_allocWithZone(v109);
        swift_unknownObjectRetain();
        v115 = [v114 initWithContext_];
        v116 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO, &protocol conformance descriptor for TTSVBLocalVoiceModelMO);
        TTSVBCommonVoiceModelMO.shallowUpdate(fromModel:)(v112, v113, v108, v116);
        if ((TTSVBCommonVoiceModelMO.supportsFileBackedFutureSync.getter(v108, v116) & 1) == 0)
        {
          TTSVBCommonVoiceModelMO.trainingStatus.setter(0, v108, v116);
          TTSVBCommonVoiceModelMO.status.setter(0, v108, v116);
        }

        swift_beginAccess();
        v111 = v115;
        sub_2331B5838(&v466, v111, type metadata accessor for TTSVBLocalVoiceModelMO, &qword_27DDE2988, &unk_233299A60, type metadata accessor for TTSVBLocalVoiceModelMO);
        swift_endAccess();

        swift_unknownObjectRelease();
        v110 += 2;
        --v107;
      }

      while (v107);
    }

    v117 = v429;
    v118 = v461;
    (v458)(v429, v456, v461);
    v119 = sub_23328D6CC();
    v120 = sub_23328DE4C();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = v427;
      swift_beginAccess();
      if ((v472 & 0xC000000000000001) != 0)
      {

        v122 = sub_23328E19C();
      }

      else
      {
        v122 = *(v472 + 16);
      }

      *(v121 + 4) = v122;
      _os_log_impl(&dword_233109000, v119, v120, "Adding %ld models to local voice", v121, 0xCu);
      MEMORY[0x23839CFD0](v121, -1, -1);
    }

    v123 = (v460)(v117, v118);
    v7 = &v397;
    MEMORY[0x28223BE20](v123);
    *(&v397 - 2) = &v472;
    v125 = *&v459[v444];
    if (v125)
    {
      MEMORY[0x28223BE20](v124);
      *(&v397 - 2) = sub_2331B9D7C;
      *(&v397 - 1) = v126;

      sub_23328D2BC();
      sub_2331B9710(v125);
    }

    swift_beginAccess();
    v29 = v472;
    v127 = type metadata accessor for TTSVBLocalVoiceModelMO();
    v128 = sub_2331B2AAC(&qword_27DDE2970, type metadata accessor for TTSVBLocalVoiceModelMO, MEMORY[0x277D85378]);

    v129 = sub_23328DD0C();

    [v453 addModels_];

    v448 = v128;
    *&v449 = v29 & 0xC000000000000001;
    v457 = v29;
    *&v465 = v127;
    if ((v29 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_23328E18C();
      sub_23328DD4C();
      v29 = v475;
      v5 = v476;
      v130 = v477;
      v131 = v478;
      v9 = v479;
    }

    else
    {
      v132 = -1 << *(v29 + 32);
      v5 = v29 + 56;
      v130 = ~v132;
      v133 = -v132;
      if (v133 < 64)
      {
        v134 = ~(-1 << v133);
      }

      else
      {
        v134 = -1;
      }

      v9 = v134 & *(v29 + 56);
      swift_bridgeObjectRetain_n();
      v131 = 0;
    }

    v434 = v130;
    v135 = (v130 + 64) >> 6;
    while (1)
    {
      if ((v29 & 0x8000000000000000) != 0)
      {
        v141 = sub_23328E1BC();
        if (!v141)
        {
          goto LABEL_74;
        }

        *&v466 = v141;
        swift_dynamicCast();
        v140 = v468;
        v138 = v131;
        v139 = v9;
        if (!v468)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v136 = v131;
        v137 = v9;
        v138 = v131;
        if (!v9)
        {
          while (1)
          {
            v138 = v136 + 1;
            if (__OFADD__(v136, 1))
            {
              __break(1u);
              goto LABEL_269;
            }

            if (v138 >= v135)
            {
              break;
            }

            v137 = *(v5 + 8 * v138);
            v136 = (v136 + 1);
            if (v137)
            {
              goto LABEL_64;
            }
          }

LABEL_74:
          sub_233113BBC(v29);
          v7 = v457;

LABEL_75:
          v148 = v465;
          if (!v449)
          {
            goto LABEL_93;
          }

          goto LABEL_76;
        }

LABEL_64:
        v139 = (v137 - 1) & v137;
        v140 = *(*(v29 + 48) + ((v138 << 9) | (8 * __clz(__rbit64(v137)))));
        if (!v140)
        {
          goto LABEL_74;
        }
      }

      v462 = v131;
      v142 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO, &protocol conformance descriptor for TTSVBLocalVoiceModelMO);
      v463 = v140;
      TTSVBCommonVoiceModelMO.typedVersion.getter(v142, &v468);
      v7 = *(&v468 + 1);
      v143 = v468;
      v144 = sub_233167B90();
      v145 = v144[1];
      if (!v7)
      {
        break;
      }

      v146 = *v144;
      v466 = __PAIR128__(v7, v143);
      if (!v145)
      {

LABEL_57:

        goto LABEL_58;
      }

      v470 = v146;
      v471 = v145;
      sub_23315CC14();

      v147 = sub_23328D90C();

      if (v147)
      {
        sub_233113BBC(v29);
LABEL_79:

        v153 = TTSVBIsPersonalVoiceVersion2Enabled();
        v154 = v461;
        v155 = v420;
        v148 = v465;
        v156 = v458;
        if (v153 && TTSVBDeviceSupportsV2Voices()())
        {
          v156(v419, v456, v154);
          v157 = sub_23328D6CC();
          v158 = sub_23328DE4C();
          if (os_log_type_enabled(v157, v158))
          {
            v159 = swift_slowAlloc();
            *v159 = 0;
            _os_log_impl(&dword_233109000, v157, v158, "Found new LLASSI voice model when importing cloud voices to local database.", v159, 2u);
            MEMORY[0x23839CFD0](v159, -1, -1);
          }

          v160 = (v460)(v419, v154);
          v29 = &v397;
          v161 = v438;
          v162 = MEMORY[0x28223BE20](v160);
          v163 = (&v397 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0));
          v164 = [v453 voiceID];
          MEMORY[0x28223BE20](v164);
          v166 = v439;
          if (v165)
          {
            v405 = &v397;
            v167 = v165;
            sub_23328CE6C();

            v168 = v166[4];
            v169 = v425;
            v434 = v166 + 4;
            v406 = v168;
            v168(v163, v163, v425);
            v170 = v416;
            v156(v416, v456, v154);
            v171 = v463;
            v172 = sub_23328D6CC();
            v173 = sub_23328DE4C();

            v174 = os_log_type_enabled(v172, v173);
            v463 = v163;
            v462 = v171;
            if (v174)
            {
              v175 = swift_slowAlloc();
              v176 = swift_slowAlloc();
              *&v468 = v176;
              *v175 = v428;
              v177 = [v171 voice];
              if (v177 && (v178 = v177, v179 = [v177 name], v178, v179))
              {
                v180 = sub_23328D98C();
                v182 = v181;

                v183 = v180;
                v154 = v461;
              }

              else
              {
                v182 = 0xE600000000000000;
                v183 = 0x3E656E6F6E3CLL;
              }

              v243 = sub_23311A8F4(v183, v182, &v468);

              *(v175 + 4) = v243;
              _os_log_impl(&dword_233109000, v172, v173, "LLASSI voice model: %s. Attempting to train.", v175, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v176);
              MEMORY[0x23839CFD0](v176, -1, -1);
              MEMORY[0x23839CFD0](v175, -1, -1);

              (v460)(v416, v154);
              v169 = v425;
              v166 = v439;
            }

            else
            {

              (v460)(v170, v154);
            }

            v244 = [v462 modelID];
            v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
            v404 = &v397;
            v400 = *(v245 - 8);
            v401 = *(v400 + 64);
            MEMORY[0x28223BE20](v245 - 8);
            v247 = &v397 - v246;
            if (v244)
            {
              sub_23328CE6C();

              v248 = 0;
            }

            else
            {
              v248 = 1;
            }

            v249 = v166[7];
            v456 = v247;
            v250 = v249(v247, v248, 1, v169);
            v403 = &v397;
            v251 = v438;
            v252 = MEMORY[0x28223BE20](v250);
            v253 = (v251 + 15) & 0xFFFFFFFFFFFFFFF0;
            v255 = v166[2];
            v254 = v166 + 2;
            v256 = v463;
            v255(&v397 - v253, v463, v169, v252);
            v257 = *(v254 + 64);
            v258 = v254;
            v259 = (v257 + 16) & ~v257;
            v398 = v257;
            v399 = v257 | 7;
            v402 = swift_allocObject();
            v406(v402 + v259, &v397 - v253, v169);
            v260 = sub_233225514();
            v261 = v417;
            v262 = (v458)(v417, v260, v154);
            v458 = &v397;
            v263 = v256;
            v264 = v255;
            v265 = MEMORY[0x28223BE20](v262);
            v266 = v154;
            v267 = &v397 - v253;
            v439 = v258;
            v255(&v397 - v253, v263, v169, v265);
            v268 = sub_23328D6CC();
            v269 = sub_23328DE4C();
            if (os_log_type_enabled(v268, v269))
            {
              v270 = swift_slowAlloc();
              v271 = swift_slowAlloc();
              *&v468 = v271;
              *v270 = v407;
              v272 = sub_23328CE3C();
              v274 = v273;
              v435(v267, v169);
              v275 = sub_23311A8F4(v272, v274, &v468);

              *(v270 + 4) = v275;
              *(v270 + 12) = 2048;
              *(v270 + 14) = 2;
              *(v270 + 22) = 1024;
              *(v270 + 24) = 1;
              *(v270 + 28) = 1024;
              *(v270 + 30) = 1;
              *(v270 + 34) = 2048;
              *(v270 + 36) = -1;
              *(v270 + 44) = 2080;
              *(v270 + 46) = sub_23311A8F4(0x6F63655272657375, 0xEE0073676E696472, &v468);
              _os_log_impl(&dword_233109000, v268, v269, "Got request to train voiceID=%s mode=%ld startImmediately=%{BOOL}d validateTrainingSamples=%{BOOL}d overrideMinimumPhraseCount=%ld trainingDataSource=%s", v270, 0x36u);
              swift_arrayDestroy();
              v276 = v271;
              v263 = v463;
              MEMORY[0x23839CFD0](v276, -1, -1);
              MEMORY[0x23839CFD0](v270, -1, -1);

              v277 = (v460)(v417, v461);
            }

            else
            {

              v435(&v397 - v253, v169);
              v277 = (v460)(v261, v266);
            }

            v278 = v398;
            MEMORY[0x28223BE20](v277);
            *(&v397 - 6) = v263;
            *(&v397 - 5) = 2;
            *(&v397 - 16) = 257;
            *(&v397 - 3) = 0;
            *(&v397 - 8) = 1;
            v280 = *&v459[v444];
            if (v280)
            {
              MEMORY[0x28223BE20](v279);
              *(&v397 - 2) = sub_2331BE524;
              *(&v397 - 1) = v281;

              sub_23328D2BC();
              v279 = sub_2331B9710(v280);
            }

            v460 = &v397;
            v397 = *&v459[v411];
            v282 = v438;
            v283 = MEMORY[0x28223BE20](v279);
            v284 = &v397 - ((v282 + 15) & 0xFFFFFFFFFFFFFFF0);
            v285 = v425;
            v286 = v264(v284, v463, v425, v283);
            v458 = &v397;
            v287 = v401;
            MEMORY[0x28223BE20](v286);
            v288 = &v397 - ((v287 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_233121D34(v456, v288, &qword_27DDE19B0, &qword_233290370);
            v289 = (v278 + 50) & ~v278;
            v290 = v289 + v282;
            v291 = (v289 + v282 + *(v400 + 80) + 1) & ~*(v400 + 80);
            v292 = (v287 + v291 + 7) & 0xFFFFFFFFFFFFFFF8;
            v293 = swift_allocObject();
            v294 = v459;
            *(v293 + 16) = v459;
            *(v293 + 24) = 2;
            *(v293 + 32) = 1;
            *(v293 + 40) = 0;
            *(v293 + 48) = 257;
            v406(v293 + v289, v284, v285);
            *(v293 + v290) = 0;
            sub_233121D9C(v288, v293 + v291, &qword_27DDE19B0, &qword_233290370);
            v295 = (v293 + v292);
            v29 = v402;
            *v295 = sub_2331B9F10;
            v295[1] = v29;
            v469[2] = sub_2331BE528;
            v469[3] = v293;
            *&v468 = MEMORY[0x277D85DD0];
            *(&v468 + 1) = 1107296256;
            v469[0] = sub_2331221F8;
            v469[1] = &block_descriptor_238;
            v296 = _Block_copy(&v468);
            v297 = v294;

            v298 = v412;
            sub_23328D7DC();
            *&v466 = MEMORY[0x277D84F90];
            sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
            sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
            v300 = v414;
            v299 = v415;
            sub_23328E14C();
            MEMORY[0x23839BC20](0, v298, v300, v296);
            _Block_release(v296);

            (*v409)(v300, v299);
            (*v408)(v298, v413);
            sub_233121E04(v456, &qword_27DDE19B0, &qword_233290370);

            v435(v463, v425);
            v7 = v457;
            goto LABEL_75;
          }
        }

        else
        {
          v156(v155, v456, v154);
          v184 = sub_23328D6CC();
          v185 = sub_23328DE4C();
          if (os_log_type_enabled(v184, v185))
          {
            v186 = swift_slowAlloc();
            *v186 = 0;
            _os_log_impl(&dword_233109000, v184, v185, "Found llassi model but device doesn't support PV2. Bailing on attempt to train.", v186, 2u);
            MEMORY[0x23839CFD0](v186, -1, -1);
          }

          else
          {
          }

          (v460)(v155, v154);
        }

        v7 = v457;
        if (!v449)
        {
LABEL_93:
          v187 = -1 << *(v7 + 32);
          v149 = v7 + 56;
          v150 = ~v187;
          v188 = -v187;
          if (v188 < 64)
          {
            v189 = ~(-1 << v188);
          }

          else
          {
            v189 = -1;
          }

          v152 = (v189 & *(v7 + 56));
          swift_bridgeObjectRetain_n();
          v151 = 0;
LABEL_97:
          v456 = v150;
          v5 = (v150 + 64) >> 6;
          v460 = v7;
          while (1)
          {
            v9 = v152;
            v190 = v151;
            if (v7 < 0)
            {
              v195 = sub_23328E1BC();
              if (!v195 || (*&v466 = v195, swift_dynamicCast(), v194 = v468, v193 = v9, !v468))
              {
LABEL_116:
                sub_233113BBC(v7);
                v7 = v457;

                v463 = 0;
                if (v449)
                {
                  goto LABEL_117;
                }

LABEL_119:
                v205 = -1 << *(v7 + 32);
                v29 = v7 + 56;
                v202 = ~v205;
                v206 = -v205;
                if (v206 < 64)
                {
                  v207 = ~(-1 << v206);
                }

                else
                {
                  v207 = -1;
                }

                v204 = (v207 & *(v7 + 56));
                swift_bridgeObjectRetain_n();
                v203 = 0;
LABEL_123:
                v439 = v202;
                v208 = (v202 + 64) >> 6;
                v458 = v7;
                while (1)
                {
                  v5 = v204;
                  v209 = v203;
                  if (v7 < 0)
                  {
                    v214 = sub_23328E1BC();
                    if (!v214)
                    {
                      goto LABEL_141;
                    }

                    *&v466 = v214;
                    swift_dynamicCast();
                    v213 = v468;
                    v212 = v5;
                    if (!v468)
                    {
                      goto LABEL_141;
                    }
                  }

                  else
                  {
                    v210 = v203;
                    for (i = v5; !i; ++v210)
                    {
                      v203 = v210 + 1;
                      if (__OFADD__(v210, 1))
                      {
                        goto LABEL_270;
                      }

                      if (v203 >= v208)
                      {
                        goto LABEL_141;
                      }

                      i = *(v29 + 8 * v203);
                    }

                    v212 = ((i - 1) & i);
                    v213 = *(*(v7 + 48) + ((v203 << 9) | (8 * __clz(__rbit64(i)))));
                    if (!v213)
                    {
LABEL_141:
                      sub_233113BBC(v7);
                      v5 = v457;

                      v460 = 0;
                      if (v449)
                      {
LABEL_142:

                        swift_unknownObjectRetain();
                        sub_23328E18C();
                        sub_23328DD4C();
                        v5 = v490;
                        v29 = v491;
                        v221 = v492;
                        v222 = v493;
                        v223 = v494;
                        goto LABEL_148;
                      }

LABEL_144:
                      v224 = -1 << *(v5 + 32);
                      v29 = v5 + 56;
                      v221 = ~v224;
                      v225 = -v224;
                      if (v225 < 64)
                      {
                        v226 = ~(-1 << v225);
                      }

                      else
                      {
                        v226 = -1;
                      }

                      v223 = (v226 & *(v5 + 56));
                      swift_bridgeObjectRetain_n();
                      v222 = 0;
LABEL_148:
                      v456 = v221;
                      v227 = (v221 + 64) >> 6;
                      while (1)
                      {
                        v9 = v222;
                        if (v5 < 0)
                        {
                          v231 = sub_23328E1BC();
                          if (!v231)
                          {
                            v230 = v463;
LABEL_166:
                            sub_233113BBC(v5);
                            v7 = v457;

                            v41 = v432;
                            if (v460 | v230)
                            {
                              v238 = sub_23328DCBC();
                              v5 = v423;
                              (*(*(v238 - 8) + 56))(v423, 1, 1, v238);
                              v239 = swift_allocObject();
                              v239[2] = 0;
                              v239[3] = 0;
                              v240 = v459;
                              v239[4] = v459;
                              v241 = v240;
                              sub_233193E34(0, 0, v5, &unk_233299A48, v239);

                              v242 = v450;
                            }

                            else
                            {

                              v242 = v453;
                            }

                            v9 = v461;
                            v29 = v426;
LABEL_7:
                            v42 = v451;
                            if (v451 == v437)
                            {
                              goto LABEL_194;
                            }

                            goto LABEL_8;
                          }

                          *&v466 = v231;
                          swift_dynamicCast();
                          v7 = v468;
                          v462 = v223;
                          v230 = v463;
                          if (!v468)
                          {
                            goto LABEL_166;
                          }
                        }

                        else
                        {
                          v228 = v222;
                          v229 = v223;
                          v230 = v463;
                          if (!v223)
                          {
                            do
                            {
                              v222 = v228 + 1;
                              if (__OFADD__(v228, 1))
                              {
                                goto LABEL_271;
                              }

                              if (v222 >= v227)
                              {
                                goto LABEL_166;
                              }

                              v229 = *(v29 + 8 * v222);
                              ++v228;
                            }

                            while (!v229);
                          }

                          v462 = ((v229 - 1) & v229);
                          v7 = *(*(v5 + 48) + ((v222 << 9) | (8 * __clz(__rbit64(v229)))));
                          if (!v7)
                          {
                            goto LABEL_166;
                          }
                        }

                        v458 = v223;
                        v232 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO, &protocol conformance descriptor for TTSVBLocalVoiceModelMO);
                        TTSVBCommonVoiceModelMO.typedVersion.getter(v232, &v468);
                        v233 = v468;
                        v234 = sub_233167B90();
                        v235 = v234[1];
                        if (!*(&v233 + 1))
                        {

                          if (!v235)
                          {

                            sub_233113BBC(v5);

                            swift_bridgeObjectRelease_n();

                            goto LABEL_176;
                          }

                          goto LABEL_150;
                        }

                        v236 = *v234;
                        v466 = v233;
                        if (!v235)
                        {

LABEL_150:

                          v223 = v462;
                          continue;
                        }

                        *&v449 = v9;
                        v470 = v236;
                        v471 = v235;
                        sub_23315CC14();
                        swift_bridgeObjectRetain_n();
                        swift_bridgeObjectRetain_n();
                        v237 = sub_23328D90C();

                        v223 = v462;
                        if (v237)
                        {

                          sub_233113BBC(v5);

                          swift_bridgeObjectRelease_n();
LABEL_176:
                          v9 = v461;
                          v29 = v426;
                          v41 = v432;
                          goto LABEL_7;
                        }
                      }
                    }
                  }

                  v462 = v212;
                  v456 = v209;
                  v215 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO, &protocol conformance descriptor for TTSVBLocalVoiceModelMO);
                  v9 = v148;
                  TTSVBCommonVoiceModelMO.typedVersion.getter(v215, &v468);
                  v7 = *(&v468 + 1);
                  v216 = v468;
                  v217 = sub_233167DE4();
                  v218 = v217[1];
                  if (!v7)
                  {
                    break;
                  }

                  v460 = v213;
                  v219 = *v217;
                  v466 = __PAIR128__(v7, v216);
                  if (!v218)
                  {

LABEL_125:
                    v148 = v9;

                    v7 = v458;
                    v204 = v462;
                    continue;
                  }

                  v470 = v219;
                  v471 = v218;
                  sub_23315CC14();
                  swift_bridgeObjectRetain_n();
                  swift_bridgeObjectRetain_n();
                  v148 = v465;
                  v220 = sub_23328D90C();

                  v7 = v458;
                  v204 = v462;
                  if (v220)
                  {
                    sub_233113BBC(v458);
                    v5 = v457;

                    if (v449)
                    {
                      goto LABEL_142;
                    }

                    goto LABEL_144;
                  }
                }

                if (!v218)
                {
                  v460 = v213;
                  sub_233113BBC(v458);
                  v5 = v457;

                  if (v449)
                  {
                    goto LABEL_142;
                  }

                  goto LABEL_144;
                }

                goto LABEL_125;
              }
            }

            else
            {
              v191 = v151;
              v192 = v9;
              if (!v9)
              {
                while (1)
                {
                  v151 = v191 + 1;
                  if (__OFADD__(v191, 1))
                  {
                    break;
                  }

                  if (v151 >= v5)
                  {
                    v9 = 0;
                    goto LABEL_116;
                  }

                  v192 = *(v149 + 8 * v151);
                  ++v191;
                  if (v192)
                  {
                    goto LABEL_105;
                  }
                }

LABEL_269:
                __break(1u);
LABEL_270:
                __break(1u);
LABEL_271:
                __break(1u);
LABEL_272:
                __break(1u);
LABEL_273:
                __break(1u);
LABEL_274:
                __break(1u);
LABEL_275:
                __break(1u);
LABEL_276:
                __break(1u);
LABEL_277:
                __break(1u);
LABEL_278:
                v40 = sub_23328E19C();
                goto LABEL_3;
              }

LABEL_105:
              v193 = ((v192 - 1) & v192);
              v194 = *(*(v7 + 48) + ((v151 << 9) | (8 * __clz(__rbit64(v192)))));
              if (!v194)
              {
                goto LABEL_116;
              }
            }

            v462 = v193;
            v458 = v190;
            v196 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO, &protocol conformance descriptor for TTSVBLocalVoiceModelMO);
            v29 = v148;
            TTSVBCommonVoiceModelMO.typedVersion.getter(v196, &v468);
            v197 = v468;
            v198 = sub_233167D94();
            v199 = v198[1];
            if (!*(&v197 + 1))
            {
              break;
            }

            v463 = v194;
            v200 = *v198;
            v466 = v197;
            if (!v199)
            {

LABEL_99:

              v7 = v460;
              v152 = v462;
              continue;
            }

            v470 = v200;
            v471 = v199;
            sub_23315CC14();
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            v148 = v465;
            v201 = sub_23328D90C();

            v7 = v460;
            v152 = v462;
            if (v201)
            {
              sub_233113BBC(v460);
              v7 = v457;

              if (!v449)
              {
                goto LABEL_119;
              }

LABEL_117:

              swift_unknownObjectRetain();
              sub_23328E18C();
              sub_23328DD4C();
              v7 = v485;
              v29 = v486;
              v202 = v487;
              v203 = v488;
              v204 = v489;
              goto LABEL_123;
            }
          }

          if (!v199)
          {
            v463 = v194;
            sub_233113BBC(v460);
            v7 = v457;

            if (!v449)
            {
              goto LABEL_119;
            }

            goto LABEL_117;
          }

          goto LABEL_99;
        }

LABEL_76:

        swift_unknownObjectRetain();
        sub_23328E18C();
        sub_23328DD4C();
        v7 = v480;
        v149 = v481;
        v150 = v482;
        v151 = v483;
        v152 = v484;
        goto LABEL_97;
      }

LABEL_58:
      v131 = v138;
      v9 = v139;
    }

    if (!v145)
    {
      sub_233113BBC(v29);

      goto LABEL_79;
    }

    v7 = 0;
    goto LABEL_57;
  }

  v446 = 0;
LABEL_194:
  if (v430 >> 62)
  {
    v302 = sub_23328E19C();
  }

  else
  {
    v302 = *((v430 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = &off_233290000;
  if (!v302)
  {
    v458 = MEMORY[0x277D84F90];
LABEL_239:
    if (v458 >> 62)
    {
      v5 = sub_23328E19C();
      if (v5)
      {
LABEL_241:
        v352 = 0;
        v460 = v458 & 0xC000000000000001;
        v448 = (v458 & 0xFFFFFFFFFFFFFF8);
        v462 = (v422 + 16);
        v463 = (v422 + 8);
        *&v39 = *(v7 + 640);
        v449 = v39;
        v455 = v5;
        do
        {
          if (v460)
          {
            v353 = MEMORY[0x23839BFC0](v352, v458);
            v7 = v431;
          }

          else
          {
            v7 = v431;
            if (v352 >= v448[2])
            {
              goto LABEL_277;
            }

            v353 = *(v458 + 8 * v352 + 32);
          }

          if (__OFADD__(v352, 1))
          {
            goto LABEL_275;
          }

          *&v465 = v352 + 1;
          v354 = sub_233225440();
          v355 = *v462;
          v456 = v354;
          v457 = v355;
          v355(v7);
          v29 = v353;
          v356 = sub_23328D6CC();
          v357 = sub_23328DE4C();

          if (os_log_type_enabled(v356, v357))
          {
            LODWORD(v454) = v357;
            v358 = swift_slowAlloc();
            v453 = swift_slowAlloc();
            *&v468 = v453;
            *v358 = v449;
            v359 = TTSVBCommonVoiceMO.displayName.getter(v452, &protocol witness table for TTSVBLocalVoiceMO);
            v361 = sub_23311A8F4(v359, v360, &v468);

            *(v358 + 4) = v361;
            *(v358 + 12) = 2080;
            v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
            v451 = &v397;
            v363 = &v397 - ((*(*(v362 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
            v364 = [v29 voiceID];
            v450 = &v397;
            MEMORY[0x28223BE20](v364);
            if (v365)
            {
              v366 = v365;
              sub_23328CE6C();

              v367 = 0;
            }

            else
            {
              v367 = 1;
            }

            v370 = sub_23328CE8C();
            v371 = *(v370 - 8);
            (*(v371 + 56))(v363, v367, 1, v370);
            sub_233121D9C(v363, v363, &qword_27DDE19B0, &qword_233290370);
            v372 = (*(v371 + 48))(v363, 1, v370);
            if (v372)
            {
              sub_233121E04(v363, &qword_27DDE19B0, &qword_233290370);
              v373 = 0xE600000000000000;
              v374 = 0x3E656E6F6E3CLL;
            }

            else
            {
              v447 = &v397;
              v375 = MEMORY[0x28223BE20](v372);
              v377 = &v397 - ((v376 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v371 + 16))(v377, v363, v370, v375);
              sub_233121E04(v363, &qword_27DDE19B0, &qword_233290370);
              v378 = sub_23328CE3C();
              v373 = v379;
              (*(v371 + 8))(v377, v370);
              v374 = v378;
            }

            v380 = sub_23311A8F4(v374, v373, &v468);

            *(v358 + 14) = v380;
            _os_log_impl(&dword_233109000, v356, v454, "Deleting local voice: %s. %s", v358, 0x16u);
            v381 = v453;
            swift_arrayDestroy();
            MEMORY[0x23839CFD0](v381, -1, -1);
            MEMORY[0x23839CFD0](v358, -1, -1);

            v306 = *v463;
            v369 = (*v463)(v431, v461);
          }

          else
          {
            v368 = v9;

            v306 = *v463;
            v369 = (*v463)(v7, v368);
          }

          MEMORY[0x28223BE20](v369);
          *(&v397 - 2) = v29;
          v382 = sub_233175210();
          if (v382)
          {
            MEMORY[0x28223BE20](v382);
            *(&v397 - 2) = sub_2331BA27C;
            *(&v397 - 1) = (&v397 - 4);
            sub_23328D2BC();
          }

          v383 = [v29 voiceID];
          v384 = sub_23328CE8C();
          v385 = *(v384 - 8);
          MEMORY[0x28223BE20](v384);
          v387 = &v397 - ((v386 + 15) & 0xFFFFFFFFFFFFFFF0);
          if (!v383)
          {
            goto LABEL_284;
          }

          sub_23328CE6C();

          v388 = v446;
          sub_2331771DC(v387);
          v446 = v388;
          if (v388)
          {
            (*(v385 + 8))(v387, v384);

            v5 = v418;
            v457(v418, v456, v461);
            v307 = v446;
            v389 = v446;
            v305 = sub_23328D6CC();
            v390 = sub_23328DE3C();

            if (!os_log_type_enabled(v305, v390))
            {
              goto LABEL_265;
            }

            v391 = swift_slowAlloc();
            v392 = swift_slowAlloc();
            *v391 = 138412290;
            sub_2331524CC(&v468);
            v466 = v468;
            v467 = v469[0];
            type metadata accessor for TTSVBError(0);
            sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
            swift_allocError();
            static TTSVBError.map(_:_:)(v307, &v466, v393);
            sub_2331220AC(v466, *(&v466 + 1), v467);
            v394 = _swift_stdlib_bridgeErrorToNSError();
            *(v391 + 4) = v394;
            *v392 = v394;
            _os_log_impl(&dword_233109000, v305, v390, "%@", v391, 0xCu);
            sub_233121E04(v392, &qword_27DDE2978, &qword_233299A50);
            MEMORY[0x23839CFD0](v392, -1, -1);
            v395 = v391;
            v5 = v418;
            MEMORY[0x23839CFD0](v395, -1, -1);

            goto LABEL_266;
          }

          (*(v385 + 8))(v387, v384);

          ++v352;
          v5 = v455;
          v9 = v461;
        }

        while (v465 != v455);
      }
    }

    else
    {
      v5 = *((v458 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_241;
      }
    }

    goto LABEL_267;
  }

  v29 = 0;
  v457 = (v430 & 0xC000000000000001);
  v455 = v430 & 0xFFFFFFFFFFFFFF8;
  v454 = (v430 + 32);
  v453 = (v422 + 16);
  v451 = (v422 + 8);
  *&v39 = 136315394;
  v445 = v39;
  v458 = MEMORY[0x277D84F90];
  v456 = v302;
  while (1)
  {
    if (v457)
    {
      v303 = MEMORY[0x23839BFC0](v29, v430);
      v45 = __OFADD__(v29++, 1);
      if (v45)
      {
        goto LABEL_274;
      }
    }

    else
    {
      if (v29 >= *(v455 + 16))
      {
        goto LABEL_276;
      }

      v303 = v454[v29];
      v45 = __OFADD__(v29++, 1);
      if (v45)
      {
        goto LABEL_274;
      }
    }

    v462 = v29;
    v304 = *((*MEMORY[0x277D85000] & *v303) + 0x60);
    v463 = v303;
    v305 = v303;
    v5 = v304();
    v306 = *(v5 + 16);
    if (v306)
    {
      break;
    }

    v307 = MEMORY[0x277D84F90];
LABEL_219:

    v315 = v307[2];

    if (v315)
    {
      v316 = [v463 voiceID];
      v317 = sub_23328CE8C();
      v318 = *(v317 - 8);
      v319 = *(v318 + 64);
      MEMORY[0x28223BE20](v317);
      v5 = &v397 - ((v319 + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = v461;
      if (!v316)
      {
        goto LABEL_283;
      }

      sub_23328CE6C();

      v320 = static TTSVBCloudVoiceMO.voiceExists(withID:moc:)(&v397 - ((v319 + 15) & 0xFFFFFFFFFFFFFFF0), v464);
      *&v465 = *(v318 + 8);
      (v465)(&v397 - ((v319 + 15) & 0xFFFFFFFFFFFFFFF0), v317);
      if (v320)
      {

        goto LABEL_199;
      }

      v321 = sub_233225440();
      v322 = v424;
      (*v453)(v424, v321, v9);
      v323 = v463;
      v324 = sub_23328D6CC();
      v325 = sub_23328DE4C();

      if (os_log_type_enabled(v324, v325))
      {
        LODWORD(v450) = v325;
        v460 = v324;
        v326 = swift_slowAlloc();
        *&v449 = swift_slowAlloc();
        *&v468 = v449;
        *v326 = v445;
        v327 = TTSVBCommonVoiceMO.displayName.getter(v452, &protocol witness table for TTSVBLocalVoiceMO);
        v329 = sub_23311A8F4(v327, v328, &v468);

        *(v326 + 4) = v329;
        v458 = v326;
        *(v326 + 12) = 2080;
        v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
        v448 = &v397;
        v331 = *(*(v330 - 8) + 64);
        v332 = MEMORY[0x28223BE20](v330 - 8);
        v333 = (v331 + 15) & 0xFFFFFFFFFFFFFFF0;
        v334 = &v397 - v333;
        v463 = v323;
        v335 = [v323 voiceID];
        MEMORY[0x28223BE20](v335);
        if (v336)
        {
          sub_23328CE6C();

          v337 = 0;
        }

        else
        {
          v337 = 1;
        }

        (*(v318 + 56))(&v397 - v333, v337, 1, v317);
        sub_233121D9C(&v397 - v333, &v397 - v333, &qword_27DDE19B0, &qword_233290370);
        v341 = (*(v318 + 48))(v334, 1, v317);
        v9 = v461;
        if (v341)
        {
          sub_233121E04(v334, &qword_27DDE19B0, &qword_233290370);
          v342 = 0xE600000000000000;
          v343 = 0x3E656E6F6E3CLL;
        }

        else
        {
          v344 = MEMORY[0x28223BE20](v341);
          (*(v318 + 16))(&v397 - ((v319 + 15) & 0xFFFFFFFFFFFFFFF0), v334, v317, v344);
          sub_233121E04(v334, &qword_27DDE19B0, &qword_233290370);
          v345 = sub_23328CE3C();
          v342 = v346;
          (v465)(&v397 - ((v319 + 15) & 0xFFFFFFFFFFFFFFF0), v317);
          v343 = v345;
          v9 = v461;
        }

        v339 = v456;
        v29 = v462;
        v340 = v463;
        v347 = sub_23311A8F4(v343, v342, &v468);

        v348 = v458;
        *(v458 + 14) = v347;
        v349 = v460;
        _os_log_impl(&dword_233109000, v460, v450, "Found local voice with completed voice model that doesn't exist in cloud database: %s. %s", v348, 0x16u);
        v350 = v449;
        swift_arrayDestroy();
        MEMORY[0x23839CFD0](v350, -1, -1);
        MEMORY[0x23839CFD0](v348, -1, -1);

        v338 = (*v451)(v424, v9);
      }

      else
      {

        v338 = (*v451)(v322, v9);
        v339 = v456;
        v29 = v462;
        v340 = v323;
      }

      MEMORY[0x28223BE20](v338);
      *(&v397 - 2) = v340;
      v351 = sub_233175210();
      if (v351)
      {
        MEMORY[0x28223BE20](v351);
        *(&v397 - 2) = sub_2331BA274;
        *(&v397 - 1) = (&v397 - 4);
        sub_23328D2BC();
      }

      v5 = v340;
      MEMORY[0x23839B920]();
      if (*((v474 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v474 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23328DC1C();
      }

      sub_23328DC4C();

      v458 = v474;
      v7 = 0x233290000;
      if (v29 == v339)
      {
        goto LABEL_239;
      }
    }

    else
    {

      v9 = v461;
LABEL_199:
      v29 = v462;
      if (v462 == v456)
      {
        goto LABEL_239;
      }
    }
  }

  v460 = (v306 - 1);
  v307 = MEMORY[0x277D84F90];
  v308 = 0;
  while (v308 < *(v5 + 16))
  {
    v465 = *(v5 + 32 + 16 * v308);
    v309 = (v308 + 1);
    v305 = v465;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    if (TTSVBCommonVoiceModelMO.status.getter(ObjectType, *(&v465 + 1)) == 7)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v468 = v307;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v305 = &v468;
        sub_233154978(0, v307[2] + 1, 1);
        v307 = v468;
      }

      v312 = v465;
      v314 = v307[2];
      v313 = v307[3];
      if (v314 >= v313 >> 1)
      {
        v305 = &v468;
        sub_233154978((v313 > 1), v314 + 1, 1);
        v312 = v465;
        v307 = v468;
      }

      v307[2] = v314 + 1;
      *&v307[2 * v314 + 4] = v312;
      v7 = 0x233290000;
      if (v460 == v308)
      {
        goto LABEL_219;
      }

      ++v308;
    }

    else
    {
      swift_unknownObjectRelease();
      ++v308;
      if (v306 == v309)
      {
        goto LABEL_219;
      }
    }
  }

  __break(1u);
LABEL_265:

LABEL_266:
  (v306)(v5, v461);
LABEL_267:
  v396 = [objc_opt_self() defaultCenter];
  [v396 postNotificationName:*sub_233169594() object:0];

  NSManagedObjectContext.saveOrRollback()();
}

uint64_t sub_2331AC634(uint64_t a1, uint64_t a2)
{
  v57 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v57);
  v5 = &v52[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v52[-v7];
  v9 = sub_23328D6EC();
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v52[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v52[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v15);
  v17 = &v52[-v16];
  sub_233121D34(a1, &v52[-v16], &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331BDDC4(v17, v8, type metadata accessor for TTSVBError);
    v18 = sub_233225440();
    (*(v58 + 16))(v11, v18, v59);
    v19 = sub_23328CE8C();
    v20 = *(v19 - 8);
    v21 = MEMORY[0x28223BE20](v19);
    v23 = &v52[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v20 + 16))(v23, a2, v19, v21);
    sub_2331BDBEC(v8, v5, type metadata accessor for TTSVBError);
    v24 = sub_23328D6CC();
    v25 = sub_23328DE3C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v56 = v52;
      v27 = v26;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v60 = v55;
      *v27 = 136315394;
      v53 = v25;
      v28 = sub_23328CE3C();
      v30 = v29;
      (*(v20 + 8))(v23, v19);
      v31 = sub_23311A8F4(v28, v30, &v60);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2112;
      sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      swift_allocError();
      sub_2331BDBEC(v5, v32, type metadata accessor for TTSVBError);
      v33 = _swift_stdlib_bridgeErrorToNSError();
      sub_2331BDC54(v5, type metadata accessor for TTSVBError);
      *(v27 + 14) = v33;
      v34 = v54;
      *v54 = v33;
      _os_log_impl(&dword_233109000, v24, v53, "TTSVBVoiceBankingManager: (queue_importCloudVoicesIntoLocalDatastore) Error training new model for voice ID: %s. Error: %@", v27, 0x16u);
      sub_233121E04(v34, &qword_27DDE2978, &qword_233299A50);
      MEMORY[0x23839CFD0](v34, -1, -1);
      v35 = v55;
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x23839CFD0](v35, -1, -1);
      MEMORY[0x23839CFD0](v27, -1, -1);
    }

    else
    {

      sub_2331BDC54(v5, type metadata accessor for TTSVBError);
      (*(v20 + 8))(v23, v19);
    }

    (*(v58 + 8))(v11, v59);
    return sub_2331BDC54(v8, type metadata accessor for TTSVBError);
  }

  else
  {
    v36 = sub_233225440();
    (*(v58 + 16))(v14, v36, v59);
    v37 = sub_23328CE8C();
    v38 = *(v37 - 8);
    v39 = MEMORY[0x28223BE20](v37);
    v41 = &v52[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v38 + 16))(v41, a2, v37, v39);
    v42 = sub_23328D6CC();
    v43 = sub_23328DE4C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v56 = v52;
      v46 = v45;
      v60 = v45;
      *v44 = 136315138;
      v47 = sub_23328CE3C();
      v49 = v48;
      (*(v38 + 8))(v41, v37);
      v50 = sub_23311A8F4(v47, v49, &v60);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_233109000, v42, v43, "TTSVBVoiceBankingManager: (queue_importCloudVoicesIntoLocalDatastore) Succesfully kicked off training model for voice ID: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x23839CFD0](v46, -1, -1);
      MEMORY[0x23839CFD0](v44, -1, -1);
    }

    else
    {

      (*(v38 + 8))(v41, v37);
    }

    return (*(v58 + 8))(v14, v59);
  }
}

uint64_t sub_2331ACD54(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_2331ACE00(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = v6;
      v9 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v9;

      v10 = a1(v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 2;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_2331ACEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23328D6EC();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2331ACF78, 0, 0);
}

uint64_t sub_2331ACF78(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[3];
  v4 = v1[4];
  v5 = sub_233225314();
  v1[7] = v5;
  v6 = *(v4 + 16);
  v1[8] = v6;
  v1[9] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_23328D6CC();
  v8 = sub_23328DE4C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_233109000, v7, v8, "TTSVBVoiceBankingManager: Will perform V1->V2 voice migration task", v9, 2u);
    MEMORY[0x23839CFD0](v9, -1, -1);
  }

  v10 = v1[6];
  v11 = v1[3];
  v12 = v1[4];

  v13 = *(v12 + 8);
  v1[10] = v13;
  v13(v10, v11);
  if (sub_233175210())
  {
    sub_23328D2BC();
  }

  v14 = swift_task_alloc();
  v1[11] = v14;
  *v14 = v1;
  v14[1] = sub_2331AD120;

  return TTSVBVoiceBankingManager.startV1ToV2VoiceMigrationIfNeeded()();
}

uint64_t sub_2331AD120()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2331AD264, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2331AD264()
{
  v1 = *(v0 + 96);
  (*(v0 + 64))(*(v0 + 40), *(v0 + 56), *(v0 + 24));
  v2 = v1;
  v3 = sub_23328D6CC();
  v4 = sub_23328DE3C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_233109000, v3, v4, "TTSVBVoiceBankingManager: V1->V2 voice migration task failed: %@", v6, 0xCu);
    sub_233121E04(v7, &qword_27DDE2978, &qword_233299A50);
    MEMORY[0x23839CFD0](v7, -1, -1);
    MEMORY[0x23839CFD0](v6, -1, -1);
  }

  v10 = *(v0 + 80);
  v11 = *(v0 + 40);
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);

  v10(v11, v12);
  v14 = *(v13 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger);
  v15 = *(v0 + 96);
  if (v14)
  {

    sub_23328D2CC();

    sub_2331B9710(v14);
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2331AD454(void *a1)
{
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000049, 0x80000002332A8230);
  v2 = type metadata accessor for TTSVBLocalVoiceMO();
  v3 = TTSVBCommonVoiceMO.displayName.getter(v2, &protocol witness table for TTSVBLocalVoiceMO);
  MEMORY[0x23839B7E0](v3);

  MEMORY[0x23839B7E0](8238, 0xE200000000000000);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v5 = v20 - ((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 voiceID];
  MEMORY[0x28223BE20](v6);
  if (v7)
  {
    v8 = v7;
    sub_23328CE6C();

    v9 = sub_23328CE8C();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  }

  else
  {
    v9 = sub_23328CE8C();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  }

  sub_233121D9C(v5, v5, &qword_27DDE19B0, &qword_233290370);
  sub_23328CE8C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v5, 1, v9);
  if (v11)
  {
    sub_233121E04(v5, &qword_27DDE19B0, &qword_233290370);
    v12 = 0xE600000000000000;
    v13 = 0x3E656E6F6E3CLL;
  }

  else
  {
    v14 = MEMORY[0x28223BE20](v11);
    v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v16, v5, v9, v14);
    sub_233121E04(v5, &qword_27DDE19B0, &qword_233290370);
    v17 = sub_23328CE3C();
    v12 = v18;
    (*(v10 + 8))(v16, v9);
    v13 = v17;
  }

  MEMORY[0x23839B7E0](v13, v12);

  return v20[0];
}

uint64_t sub_2331AD758(void *a1)
{
  sub_23328E24C();

  v20[0] = 0xD000000000000016;
  v20[1] = 0x80000002332A8210;
  v2 = type metadata accessor for TTSVBLocalVoiceMO();
  v3 = TTSVBCommonVoiceMO.displayName.getter(v2, &protocol witness table for TTSVBLocalVoiceMO);
  MEMORY[0x23839B7E0](v3);

  MEMORY[0x23839B7E0](8238, 0xE200000000000000);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v5 = v20 - ((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 voiceID];
  MEMORY[0x28223BE20](v6);
  if (v7)
  {
    v8 = v7;
    sub_23328CE6C();

    v9 = sub_23328CE8C();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  }

  else
  {
    v9 = sub_23328CE8C();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  }

  sub_233121D9C(v5, v5, &qword_27DDE19B0, &qword_233290370);
  sub_23328CE8C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v5, 1, v9);
  if (v11)
  {
    sub_233121E04(v5, &qword_27DDE19B0, &qword_233290370);
    v12 = 0xE600000000000000;
    v13 = 0x3E656E6F6E3CLL;
  }

  else
  {
    v14 = MEMORY[0x28223BE20](v11);
    v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v16, v5, v9, v14);
    sub_233121E04(v5, &qword_27DDE19B0, &qword_233290370);
    v17 = sub_23328CE3C();
    v12 = v18;
    (*(v10 + 8))(v16, v9);
    v13 = v17;
  }

  MEMORY[0x23839B7E0](v13, v12);

  return v20[0];
}

uint64_t sub_2331ADA5C(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v3 = sub_23328D6EC();
  v86 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v78 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v79 = v74 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v74 - v8;
  v10 = type metadata accessor for TTSVBVoiceModel(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v76 = (v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (v74 - v14);
  MEMORY[0x28223BE20](v16);
  v89 = v74 - v17;
  v18 = type metadata accessor for TTSVBLocalVoiceModelMO();
  v19 = sub_2331F88A8(v18, &protocol witness table for TTSVBLocalVoiceModelMO);
  v87 = v18;
  v21 = static DSO<>.fetch(in:config:)(a1, v19, v20, v18, &protocol witness table for TTSVBLocalVoiceModelMO);

  if (v21 >> 62)
  {
    result = sub_23328E19C();
    v24 = result;
  }

  else
  {
    v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v89;
  if (v24)
  {
    if (v24 >= 1)
    {
      v80 = v15;
      v74[1] = a1;
      v26 = 0;
      v92 = v21 & 0xC000000000000001;
      v90 = 0;
      v91 = (v11 + 48);
      v82 = (v86 + 8);
      v83 = (v86 + 16);
      *&v23 = 136315138;
      v77 = v23;
      v85 = v21;
      v86 = v3;
      v81 = v10;
      v27 = v79;
      v84 = v24;
      v75 = v9;
      while (1)
      {
        v28 = v92 ? MEMORY[0x23839BFC0](v26, v21) : *(v21 + 8 * v26 + 32);
        v29 = v28;
        (*((*MEMORY[0x277D85000] & *v28) + 0x58))(0);
        if ((*v91)(v9, 1, v10) != 1)
        {
          break;
        }

        sub_233121E04(v9, &qword_27DDE2388, &qword_233297728);
LABEL_7:
        if (v24 == ++v26)
        {
          goto LABEL_29;
        }
      }

      sub_2331BDDC4(v9, v25, type metadata accessor for TTSVBVoiceModel);
      v30 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO, &protocol conformance descriptor for TTSVBLocalVoiceModelMO);
      if (TTSVBCommonVoiceModelMO.supportsFileBackedFutureSync.getter(v87, v30))
      {
        v31 = *sub_2331DEBE8();
        v93[0] = v31;
        v32 = sub_23328CC9C();
        v33 = *(v32 - 8);
        MEMORY[0x28223BE20](v32);
        v35 = v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
        v36 = v31;
        TTSVBVoiceModel.url.getter(v35);
        v37 = v25;
        v38 = v90;
        sub_2331E143C(v35);
        v90 = v38;
        if (v38)
        {
          (*(v33 + 8))(v35, v32);

          sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
          v39 = sub_23328DFBC();
          [v29 setIsDownloaded_];

          v40 = sub_233225440();
          v41 = v78;
          v42 = v86;
          (*v83)(v78, v40, v86);
          v43 = v76;
          sub_2331BDBEC(v37, v76, type metadata accessor for TTSVBVoiceModel);
          v44 = sub_23328D6CC();
          v45 = sub_23328DE4C();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v93[0] = v47;
            *v46 = v77;
            v48 = *v43;
            v49 = v43[1];

            sub_2331BDC54(v43, type metadata accessor for TTSVBVoiceModel);
            v50 = sub_23311A8F4(v48, v49, v93);

            *(v46 + 4) = v50;
            v51 = v86;
            _os_log_impl(&dword_233109000, v44, v45, "Setting local model as not downloaded: %s", v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v47);
            MEMORY[0x23839CFD0](v47, -1, -1);
            MEMORY[0x23839CFD0](v46, -1, -1);

            v52 = v51;
            v53 = (*v82)(v78, v51);
          }

          else
          {

            sub_2331BDC54(v43, type metadata accessor for TTSVBVoiceModel);
            v52 = v42;
            v53 = (*v82)(v41, v42);
          }

          v67 = v81;
          MEMORY[0x28223BE20](v53);
          v25 = v89;
          v74[-2] = v89;
          v73 = sub_233175210();
          v68 = v79;
          if (v73)
          {
            MEMORY[0x28223BE20](v73);
            v74[-2] = sub_2331BA544;
            v74[-1] = &v74[-4];
            sub_23328D2BC();
          }

          else
          {
          }

          v90 = 0;
LABEL_28:
          sub_2331BDC54(v25, type metadata accessor for TTSVBVoiceModel);
          v27 = v68;
          v3 = v52;
          v10 = v67;
          v24 = v84;
          v21 = v85;
          goto LABEL_7;
        }

        (*(v33 + 8))(v35, v32);

        v3 = v86;
        v27 = v79;
        v10 = v81;
        v25 = v37;
      }

      sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
      v54 = sub_23328DFBC();
      [v29 setIsDownloaded_];

      v55 = sub_233225440();
      (*v83)(v27, v55, v3);
      v56 = v25;
      v57 = v80;
      sub_2331BDBEC(v56, v80, type metadata accessor for TTSVBVoiceModel);
      v58 = sub_23328D6CC();
      v59 = sub_23328DE4C();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v93[0] = v61;
        *v60 = v77;
        v62 = v27;
        v64 = *v57;
        v63 = v57[1];

        sub_2331BDC54(v57, type metadata accessor for TTSVBVoiceModel);
        v65 = sub_23311A8F4(v64, v63, v93);

        *(v60 + 4) = v65;
        _os_log_impl(&dword_233109000, v58, v59, "Setting local model as downloaded: %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v61);
        v66 = v86;
        MEMORY[0x23839CFD0](v61, -1, -1);
        v67 = v81;
        MEMORY[0x23839CFD0](v60, -1, -1);

        v68 = v62;
        v69 = v62;
        v9 = v75;
        v52 = v66;
        v70 = (*v82)(v69, v66);
      }

      else
      {
        v67 = v10;

        sub_2331BDC54(v57, type metadata accessor for TTSVBVoiceModel);
        v71 = v3;
        v68 = v27;
        v52 = v71;
        v70 = (*v82)(v27, v71);
      }

      MEMORY[0x28223BE20](v70);
      v25 = v89;
      v74[-2] = v89;
      v72 = sub_233175210();
      if (v72)
      {
        MEMORY[0x28223BE20](v72);
        v74[-2] = sub_2331BA4D4;
        v74[-1] = &v74[-4];
        sub_23328D2BC();
      }

      goto LABEL_28;
    }

    __break(1u);
  }

  else
  {
LABEL_29:

    return NSManagedObjectContext.saveOrRollback()();
  }

  return result;
}