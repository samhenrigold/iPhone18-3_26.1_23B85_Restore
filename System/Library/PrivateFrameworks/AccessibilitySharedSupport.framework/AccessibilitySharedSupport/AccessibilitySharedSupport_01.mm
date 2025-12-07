uint64_t sub_1C0EE59DC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  MEMORY[0x1EEE9AC00](v3 - 8, v4, v5, v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE777F8, &qword_1C0F56F60);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11, v12, v13);
  v15 = &v20 - v14;
  (*(v10 + 104))(&v20 - v14, *MEMORY[0x1E69E8618], v9);
  type metadata accessor for AXSpeechTranscriber.Event(0);
  v16 = sub_1C0F50340();
  result = (*(v10 + 8))(v15, v9);
  if (v16)
  {
    v18 = sub_1C0F50320();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = a2;

    sub_1C0ED973C(0, 0, v8, &unk_1C0F56F70, v19);
  }

  return result;
}

uint64_t sub_1C0EE5BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v4[7] = type metadata accessor for AXSpeechTranscriber.Event.FinishEvent(0);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C0EE5C68, 0, 0);
}

uint64_t sub_1C0EE5C68()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    swift_storeEnumTagMultiPayload();
    sub_1C0F502F0();
    *(v0 + 80) = sub_1C0F502E0();
    v3 = sub_1C0F502B0();

    return MEMORY[0x1EEE6DFA0](sub_1C0EE5D78, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1C0EE5D78()
{
  v1 = *(v0 + 64);

  sub_1C0ED696C(v1);

  sub_1C0EE9EC8(v1, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);

  return MEMORY[0x1EEE6DFA0](sub_1C0EE5E10, 0, 0);
}

uint64_t sub_1C0EE5E10()
{
  **(v0 + 40) = *(v0 + 72) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C0EE5E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1C0F502F0();
  v5[3] = sub_1C0F502E0();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1C0EE5F3C;

  return sub_1C0ED0E20(a5);
}

uint64_t sub_1C0EE5F3C()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EE6078, v1, v0);
}

uint64_t sub_1C0EE6078()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s26AccessibilitySharedSupport19AXSpeechTranscriberC19cancelTranscriptionyyAC06SpeechE5ErrorOYKF(_BYTE *a1)
{
  v3 = type metadata accessor for AXSpeechTranscriber.Event.FinishEvent(0);
  MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v11 = v1;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  if (*(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState) == 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_1C0ED696C(v8);
    return sub_1C0EE9EC8(v8, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);
  }

  else
  {
    *a1 = 1;
    v10[15] = 1;
    sub_1C0EE7894();
    return swift_willThrowTypedImpl();
  }
}

uint64_t _s26AccessibilitySharedSupport19AXSpeechTranscriberC19finishTranscriptionyyAC06SpeechE5ErrorOYKF(_BYTE *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  MEMORY[0x1EEE9AC00](v4 - 8, v5, v6, v7);
  v9 = &v15[-v8];
  swift_getKeyPath();
  v16 = v1;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
  sub_1C0F4F960();

  if (*(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState) == 2)
  {
    v10 = sub_1C0F50320();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    sub_1C0F502F0();

    v11 = sub_1C0F502E0();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v3;
    sub_1C0ED943C(0, 0, v9, &unk_1C0F56270, v12);
  }

  else
  {
    *a1 = 1;
    v15[7] = 1;
    sub_1C0EE7894();
    return swift_willThrowTypedImpl();
  }
}

uint64_t sub_1C0EE6434()
{
  *(v0 + 16) = sub_1C0F502F0();
  *(v0 + 24) = sub_1C0F502E0();
  *(v0 + 40) = 1;
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1C0EE64F0;

  return sub_1C0ED7AE0((v0 + 40));
}

uint64_t sub_1C0EE64F0()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EEFE8C, v1, v0);
}

Swift::Void __swiftcall AXSpeechTranscriber.dumpStateToLogger()()
{
  v1 = v0;
  v2 = sub_1C0F4F750();
  v129 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v7 = v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77340, &qword_1C0F561F8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9, v10, v11);
  v13 = v114 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77320, &qword_1C0F561F0);
  MEMORY[0x1EEE9AC00](v14, v15, v16, v17);
  v128 = v114 - v18;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77310, &qword_1C0F561E8);
  MEMORY[0x1EEE9AC00](v127, v19, v20, v21);
  v126 = v114 - v22;
  v125 = sub_1C0F4F630();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125, v23, v24, v25);
  v27 = v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0);
  MEMORY[0x1EEE9AC00](v28, v29, v30, v31);
  v33 = v114 - v32;
  swift_retain_n();
  v34 = sub_1C0F4FD00();
  v35 = sub_1C0F50480();
  if (os_log_type_enabled(v34, v35))
  {
    v120 = v35;
    v121 = v34;
    v114[0] = v7;
    v36 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v136 = v119;
    *v36 = 136319490;
    swift_getKeyPath();
    v123 = v2;
    v122 = v13;
    v37 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber___observationRegistrar;
    v135 = v1;
    v38 = sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber, &protocol conformance descriptor for AXSpeechTranscriber);
    v117 = v14;
    v39 = v38;
    v40 = v37;
    sub_1C0F4F960();

    v41 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation;
    swift_beginAccess();
    sub_1C0EED570(&v1[v41], v33, &qword_1EBE772B0, &qword_1C0F561E0);
    v42 = sub_1C0F501D0();
    v44 = sub_1C0EE9754(v42, v43, &v136);

    *(v36 + 4) = v44;
    *(v36 + 12) = 2080;
    swift_getKeyPath();
    v134 = v1;
    sub_1C0F4F960();

    v134 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionSessionTask];

    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773E0, &qword_1C0F562C8);
    v45 = sub_1C0F501D0();
    v47 = sub_1C0EE9754(v45, v46, &v136);

    *(v36 + 14) = v47;
    *(v36 + 22) = 2080;
    swift_getKeyPath();
    v134 = v1;
    sub_1C0F4F960();

    LOBYTE(v134) = v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState];
    v48 = sub_1C0F501D0();
    v50 = sub_1C0EE9754(v48, v49, &v136);

    *(v36 + 24) = v50;
    *(v36 + 32) = 2080;
    swift_getKeyPath();
    v134 = v1;
    sub_1C0F4F960();

    v134 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__assetDownloadProgress];
    v51 = v134;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773E8, &qword_1C0F562F8);
    v52 = sub_1C0F501D0();
    v54 = sub_1C0EE9754(v52, v53, &v136);

    *(v36 + 34) = v54;
    *(v36 + 42) = 2080;
    swift_getKeyPath();
    v134 = v1;
    sub_1C0F4F960();

    v134 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat];
    v55 = v134;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773F0, &qword_1C0F56328);
    v56 = sub_1C0F501D0();
    v58 = sub_1C0EE9754(v56, v57, &v136);

    *(v36 + 44) = v58;
    *(v36 + 52) = 2080;
    swift_getKeyPath();
    v134 = v1;
    sub_1C0F4F960();

    v134 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzer];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773F8, &qword_1C0F56358);
    v59 = sub_1C0F501D0();
    v61 = sub_1C0EE9754(v59, v60, &v136);

    *(v36 + 54) = v61;
    *(v36 + 62) = 2080;
    swift_getKeyPath();
    v134 = v1;
    sub_1C0F4F960();

    v134 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__longFormSpeechTranscriber];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77400, &qword_1C0F56388);
    v62 = sub_1C0F501D0();
    v64 = sub_1C0EE9754(v62, v63, &v136);

    *(v36 + 64) = v64;
    *(v36 + 72) = 2080;
    swift_getKeyPath();
    v134 = v1;
    sub_1C0F4F960();

    v134 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__speechDetector];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77408, &qword_1C0F563B8);
    v65 = sub_1C0F501D0();
    v67 = sub_1C0EE9754(v65, v66, &v136);

    *(v36 + 74) = v67;
    *(v36 + 82) = 2080;
    swift_getKeyPath();
    v134 = v1;
    v116 = v39;
    sub_1C0F4F960();

    v134 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__shortFormDictationTranscriber];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77410, &qword_1C0F563E8);
    v68 = sub_1C0F501D0();
    v70 = sub_1C0EE9754(v68, v69, &v136);

    *(v36 + 84) = v70;
    *(v36 + 92) = 2080;
    swift_getKeyPath();
    v134 = v1;
    v114[1] = v40;
    sub_1C0F4F960();

    v71 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__volatileTranscript;
    swift_beginAccess();
    v72 = v124;
    v115 = *(v124 + 16);
    v73 = v27;
    v74 = v125;
    v115(v27, &v1[v71], v125);
    v114[2] = sub_1C0EE9CFC(&qword_1EBE77418, MEMORY[0x1E6968848], MEMORY[0x1E6968870]);
    v75 = sub_1C0F50780();
    v77 = v76;
    v78 = *(v72 + 8);
    v78(v73, v74);
    v79 = sub_1C0EE9754(v75, v77, &v136);

    *(v36 + 94) = v79;
    *(v36 + 102) = 2080;
    swift_getKeyPath();
    v133 = v1;
    sub_1C0F4F960();

    v80 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__finalizedTranscript;
    swift_beginAccess();
    v115(v73, &v1[v80], v74);
    v81 = sub_1C0F50780();
    v83 = v82;
    v78(v73, v74);
    v84 = sub_1C0EE9754(v81, v83, &v136);

    *(v36 + 104) = v84;
    *(v36 + 112) = 2080;
    swift_getKeyPath();
    v132 = v1;
    sub_1C0F4F960();

    v85 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputStream;
    swift_beginAccess();
    sub_1C0EED570(&v1[v85], v126, &qword_1EBE77310, &qword_1C0F561E8);
    v86 = sub_1C0F501D0();
    v88 = sub_1C0EE9754(v86, v87, &v136);

    *(v36 + 114) = v88;
    *(v36 + 122) = 2080;
    swift_getKeyPath();
    v131 = v1;
    sub_1C0F4F960();

    v89 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputContinuation;
    swift_beginAccess();
    sub_1C0EED570(&v1[v89], v128, &qword_1EBE77320, &qword_1C0F561F0);
    v90 = sub_1C0F501D0();
    v92 = sub_1C0EE9754(v90, v91, &v136);

    *(v36 + 124) = v92;
    *(v36 + 132) = 32;
    *(v36 + 133) = 8;
    swift_getKeyPath();
    v130 = v1;
    sub_1C0F4F960();

    v130 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__recognizerTask];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77420, &qword_1C0F564B8);
    v93 = sub_1C0F501D0();
    v95 = sub_1C0EE9754(v93, v94, &v136);

    *(v36 + 134) = v95;
    *(v36 + 142) = 32;
    *(v36 + 143) = 8;
    swift_getKeyPath();
    v130 = v1;
    sub_1C0F4F960();
    v96 = v123;

    v130 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__detectionTask];

    v97 = sub_1C0F501D0();
    v99 = sub_1C0EE9754(v97, v98, &v136);

    *(v36 + 144) = v99;
    *(v36 + 152) = 32;
    *(v36 + 153) = 8;
    swift_getKeyPath();
    v130 = v1;
    sub_1C0F4F960();

    v130 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionAutoEndpointTimeoutTask];

    v100 = sub_1C0F501D0();
    v102 = sub_1C0EE9754(v100, v101, &v136);

    *(v36 + 154) = v102;
    *(v36 + 162) = 0;
    *(v36 + 163) = 4;
    swift_getKeyPath();
    v130 = v1;
    sub_1C0F4F960();

    LODWORD(v89) = v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__enableAutomaticEndpointing];

    *(v36 + 164) = v89;

    *(v36 + 168) = 32;
    *(v36 + 169) = 8;
    v103 = v129;
    swift_getKeyPath();
    v130 = v1;
    v104 = v122;
    sub_1C0F4F960();

    v105 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFileURL;
    swift_beginAccess();
    sub_1C0EED570(&v1[v105], v104, &qword_1EBE77340, &qword_1C0F561F8);
    if ((*(v103 + 48))(v104, 1, v96))
    {
      sub_1C0EEFAA8(v104, &qword_1EBE77340, &qword_1C0F561F8);
      v106 = 0xE500000000000000;
      v107 = 0x3E6C696E3CLL;
    }

    else
    {
      v108 = v114[0];
      (*(v103 + 16))(v114[0], v104, v96);
      sub_1C0EEFAA8(v104, &qword_1EBE77340, &qword_1C0F561F8);
      v109 = sub_1C0F4F730();
      v106 = v110;
      (*(v103 + 8))(v108, v96);
      v107 = v109;
    }

    v111 = sub_1C0EE9754(v107, v106, &v136);

    *(v36 + 170) = v111;
    v112 = v121;
    _os_log_impl(&dword_1C0E8A000, v121, v120, "clientEventStreamContinuation: %s\ntranscriptionSessionTask: %s\ntranscriptionState: %s\nassetDownloadProgress: %s\nanalyzerFormat: %s\nanalyzer: %s\nlongFormSpeechTranscriber: %s\nspeechDetector: %s\nshortFormDictationTranscriber: %s\nvolatileTranscript: %s\nfinalizedTranscript: %s\nanalyzerInputStream: %s\nanalyzerInputContinuation: %s\nrecognizerTask: %s\ndetectionTask: %s\ntranscriptionAutoEndpointTimeoutTask: %s\nenableAutomaticEndpointing: %{BOOL}d\naudioFileURL: %s", v36, 0xB2u);
    v113 = v119;
    swift_arrayDestroy();
    MEMORY[0x1C68EB070](v113, -1, -1);
    MEMORY[0x1C68EB070](v36, -1, -1);
  }

  else
  {
  }
}

uint64_t AXSpeechTranscriber.AudioBuffer.Metadata.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0) + 20);
  v4 = sub_1C0F4F830();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AXSpeechTranscriber.AudioBuffer.Metadata.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0) + 24);
  v4 = sub_1C0F4F830();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AXSpeechTranscriber.AudioBuffer.Metadata.init(startTime:endTime:sessionStartTimeDelta:sessionEndTimeDelta:rms:smoothedRms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, float a6@<S2>, float a7@<S3>)
{
  sub_1C0F4F850();
  v14 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
  v15 = v14[5];
  v16 = sub_1C0F4F830();
  v17 = *(*(v16 - 8) + 32);
  v17(a3 + v15, a1, v16);
  result = (v17)(a3 + v14[6], a2, v16);
  *(a3 + v14[7]) = a4;
  *(a3 + v14[8]) = a5;
  *(a3 + v14[9]) = a6;
  *(a3 + v14[10]) = a7;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C0EE7894()
{
  result = qword_1EBE773D8;
  if (!qword_1EBE773D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE773D8);
  }

  return result;
}

uint64_t sub_1C0EE7910(uint64_t a1)
{
  v4 = *(type metadata accessor for AXSpeechTranscriber.InputConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C0EEFCF4;

  return sub_1C0EE5E80(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1C0EE7A28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C0EEFCF4;

  return sub_1C0EE6434();
}

uint64_t sub_1C0EE7ADC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C0F4F860();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

AccessibilitySharedSupport::AXSpeechTranscriber::TranscriberStyle_optional __swiftcall AXSpeechTranscriber.TranscriberStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C0F50660();

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

unint64_t AXSpeechTranscriber.TranscriberStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1C0EE7C38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = "OSubstitution";
  }

  else
  {
    v4 = "speechTranscriber";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (*a2)
  {
    v7 = "speechTranscriber";
  }

  else
  {
    v7 = "OSubstitution";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C0F50790();
  }

  return v9 & 1;
}

uint64_t sub_1C0EE7CE4()
{
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

uint64_t sub_1C0EE7D64(uint64_t a1)
{
  sub_1C0F50200();
}

uint64_t sub_1C0EE7DD0(uint64_t a1)
{
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

uint64_t sub_1C0EE7E4C@<X0>(char *a2@<X8>)
{
  v3 = sub_1C0F50660();

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

void sub_1C0EE7EAC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v1)
  {
    v3 = "speechTranscriber";
  }

  else
  {
    v3 = "OSubstitution";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_1C0EE7F04@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t AXSpeechTranscriber.InputConfiguration.locale.setter(uint64_t a1)
{
  v3 = sub_1C0F4F940();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AXSpeechTranscriber.InputConfiguration.transcriberStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t AXSpeechTranscriber.InputConfiguration.transcriberStyle.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t AXSpeechTranscriber.InputConfiguration.downloadTranscriptionModelIfNeeded.setter(char a1)
{
  result = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t AXSpeechTranscriber.InputConfiguration.enableAutomaticEndpointing.setter(char a1)
{
  result = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t AXSpeechTranscriber.InputConfiguration.generateFourierTransforms.setter(char a1)
{
  result = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t AXSpeechTranscriber.InputConfiguration.generateAudioFile.setter(char a1)
{
  result = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t AXSpeechTranscriber.InputConfiguration.emitsAudioBufferMetadataUpdates.setter(char a1)
{
  result = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

id AXSpeechTranscriber.InputConfiguration.audioSession.getter()
{
  v1 = *(v0 + *(type metadata accessor for AXSpeechTranscriber.InputConfiguration(0) + 44));

  return v1;
}

void AXSpeechTranscriber.InputConfiguration.audioSession.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AXSpeechTranscriber.InputConfiguration(0) + 44);

  *(v1 + v3) = a1;
}

id AXSpeechTranscriber.InputConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1C0F4F900();
  v2 = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  *(a1 + v2[5]) = 0;
  *(a1 + v2[6]) = 1;
  *(a1 + v2[7]) = 1;
  *(a1 + v2[8]) = 1;
  *(a1 + v2[9]) = 1;
  *(a1 + v2[10]) = 1;
  v3 = v2[11];
  result = [objc_opt_self() sharedInstance];
  *(a1 + v3) = result;
  return result;
}

uint64_t AXSpeechTranscriber.TranscriptionState.hashValue.getter()
{
  v1 = *v0;
  sub_1C0F50850();
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

uint64_t _s26AccessibilitySharedSupport19AXSpeechTranscriberC06SpeechE5ErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1C0F50850();
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

uint64_t sub_1C0EE85B8(uint64_t a1)
{
  v2 = *v1;
  sub_1C0F50850();
  MEMORY[0x1C68EA070](v2);
  return sub_1C0F50890();
}

uint64_t AXSpeechTranscriber.Event.FinishEvent.description.getter()
{
  v1 = type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  v5 = MEMORY[0x1EEE9AC00](v1, v2, v3, v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8, v9, v10);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77340, &qword_1C0F561F8);
  v17 = MEMORY[0x1EEE9AC00](v13 - 8, v14, v15, v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20, v21, v22);
  v24 = &v52 - v23;
  v25 = sub_1C0F4F630();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27, v28, v29);
  v52 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for AXSpeechTranscriber.Event.FinishEvent(0);
  MEMORY[0x1EEE9AC00](v31, v32, v33, v34);
  v36 = &v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0EE9DA0(v0, v36, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1C0EE9E60(v36, v12, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
      v54 = 0x273D726F727245;
      v55 = 0xE700000000000000;
      sub_1C0EE9DA0(v12, v7, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
      v46 = sub_1C0F501D0();
      MEMORY[0x1C68E9A50](v46);

      MEMORY[0x1C68E9A50](39, 0xE100000000000000);
      v47 = v54;
      sub_1C0EE9EC8(v12, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    }

    else
    {
      return 0x656C6C65636E6143;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v48 = *v36;
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_1C0F505A0();
    MEMORY[0x1C68E9A50](0xD000000000000018, 0x80000001C0F65F60);
    v53 = v48;
    sub_1C0F50610();
    return v54;
  }

  else
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77430, &qword_1C0F56560);
    v39 = v36[*(v38 + 48)];
    v40 = *(v38 + 64);
    (*(v26 + 32))(v52, v36, v25);
    sub_1C0EE9F28(&v36[v40], v24);
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_1C0F505A0();
    MEMORY[0x1C68E9A50](0x657A696C616E6946, 0xEF273D7478655464);
    sub_1C0EE9CFC(&qword_1EBE77418, MEMORY[0x1E6968848], MEMORY[0x1E6968870]);
    v41 = sub_1C0F50780();
    MEMORY[0x1C68E9A50](v41);

    MEMORY[0x1C68E9A50](0x6E6F736165722027, 0xE90000000000003DLL);
    v53 = v39;
    sub_1C0F50610();
    MEMORY[0x1C68E9A50](0x3D6C727520, 0xE500000000000000);
    sub_1C0EED570(v24, v19, &qword_1EBE77340, &qword_1C0F561F8);
    v42 = sub_1C0F4F750();
    v43 = *(v42 - 8);
    if ((*(v43 + 48))(v19, 1, v42) == 1)
    {
      sub_1C0EEFAA8(v19, &qword_1EBE77340, &qword_1C0F561F8);
      v44 = 0xE500000000000000;
      v45 = 0x3E6C696E3CLL;
    }

    else
    {
      v49 = sub_1C0F4F730();
      v44 = v50;
      (*(v43 + 8))(v19, v42);
      v45 = v49;
    }

    MEMORY[0x1C68E9A50](v45, v44);

    v47 = v54;
    sub_1C0EEFAA8(v24, &qword_1EBE77340, &qword_1C0F561F8);
    (*(v26 + 8))(v52, v25);
  }

  return v47;
}

uint64_t AXSpeechTranscriber.Event.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AXSpeechTranscriber.Event.FinishEvent(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3, v4, v5);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C0F4F630();
  v9 = *(v8 - 8);
  v13 = MEMORY[0x1EEE9AC00](v8, v10, v11, v12);
  v15 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v16, v17, v18);
  v20 = &v38[-v19];
  v21 = type metadata accessor for AXSpeechTranscriber.Event(0);
  MEMORY[0x1EEE9AC00](v21, v22, v23, v24);
  v26 = &v38[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C0EE9DA0(v1, v26, type metadata accessor for AXSpeechTranscriber.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77438, &qword_1C0F56568) + 48);
      v33 = *(v9 + 32);
      v33(v20, v26, v8);
      v33(v15, &v26[v32], v8);
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      sub_1C0F505A0();

      v40[0] = 0xD00000000000001BLL;
      v40[1] = 0x80000001C0F65FB0;
      sub_1C0EE9CFC(&qword_1EBE77418, MEMORY[0x1E6968848], MEMORY[0x1E6968870]);
      v34 = sub_1C0F50780();
      MEMORY[0x1C68E9A50](v34);

      MEMORY[0x1C68E9A50](0x696C616E69662027, 0xEC0000003D64657ALL);
      v35 = sub_1C0F50780();
      MEMORY[0x1C68E9A50](v35);

      MEMORY[0x1C68E9A50](93, 0xE100000000000000);
      v28 = v40[0];
      v36 = *(v9 + 8);
      v36(v15, v8);
      v36(v20, v8);
    }

    else
    {
      v29 = *v26;
      v30 = v26[1];
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      sub_1C0F505A0();
      MEMORY[0x1C68E9A50](0xD00000000000001FLL, 0x80000001C0F65FD0);
      v39 = v29;
      sub_1C0F50610();
      MEMORY[0x1C68E9A50](1030714400, 0xE400000000000000);
      v39 = v30;
      sub_1C0F50610();
      MEMORY[0x1C68E9A50](93, 0xE100000000000000);
      return v40[0];
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1C0EE9EC8(v26, type metadata accessor for AXSpeechTranscriber.Event);
    return 0x72656E6547646944;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1C0EE9EC8(v26, type metadata accessor for AXSpeechTranscriber.Event);
    return 0xD000000000000023;
  }

  else
  {
    sub_1C0EE9E60(v26, v7, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);
    strcpy(v40, "DidFinish: [");
    BYTE5(v40[1]) = 0;
    HIWORD(v40[1]) = -5120;
    v31 = AXSpeechTranscriber.Event.FinishEvent.description.getter();
    MEMORY[0x1C68E9A50](v31);

    MEMORY[0x1C68E9A50](93, 0xE100000000000000);
    v28 = v40[0];
    sub_1C0EE9EC8(v7, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);
  }

  return v28;
}

id sub_1C0EE9114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1C0F4F700();
  v6 = sub_1C0F50150();

  v15[0] = 0;
  v7 = [v3 initForWriting:v5 settings:v6 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_1C0F4F750();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_1C0F4F6B0();

    swift_willThrow();
    v13 = sub_1C0F4F750();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

uint64_t sub_1C0EE929C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1C0F505E0();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1C0EE939C, 0, 0);
}

uint64_t sub_1C0EE939C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1C0F505F0();
  v5 = sub_1C0EE9CFC(&qword_1EBE776D8, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1C0F507D0();
  sub_1C0EE9CFC(&qword_1EBE776E0, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1C0F50600();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1C0EE952C;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1C0EE952C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C0EE96E8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1C0EE96E8()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1C0EE9754(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C0EE9820(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C0EED190(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1C0EE9820(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C0EE992C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1C0F505D0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1C0EE992C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C0EE9978(a1, a2);
  sub_1C0EE9AA8(&unk_1F4053978);
  return v3;
}

void *sub_1C0EE9978(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C0EE9B94(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C0F505D0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C0F50250();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C0EE9B94(v10, 0);
        result = sub_1C0F50590();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C0EE9AA8(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C0EE9C08(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C0EE9B94(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775F8, &qword_1C0F56BB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C0EE9C08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775F8, &qword_1C0F56BB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1C0EE9CFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C0EE9DA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C0EE9E28(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C0EE9E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C0EE9EC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C0EE9F28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77340, &qword_1C0F561F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C0EE9FE4()
{
  result = qword_1EBE77448;
  if (!qword_1EBE77448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77448);
  }

  return result;
}

unint64_t sub_1C0EEA03C()
{
  result = qword_1EBE77450;
  if (!qword_1EBE77450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77450);
  }

  return result;
}

unint64_t sub_1C0EEA094()
{
  result = qword_1EBE77458;
  if (!qword_1EBE77458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77458);
  }

  return result;
}

unint64_t sub_1C0EEA0EC()
{
  result = qword_1EBE77460;
  if (!qword_1EBE77460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77460);
  }

  return result;
}

void sub_1C0EEA148(uint64_t a1)
{
  sub_1C0F4FD30();
  if (v1 <= 0x3F)
  {
    sub_1C0EEA5C4(319, &qword_1EBE77490, &qword_1EBE773C0, &qword_1C0F56228);
    if (v2 <= 0x3F)
    {
      sub_1C0F4F630();
      if (v3 <= 0x3F)
      {
        sub_1C0EEA5C4(319, &qword_1EBE77498, &qword_1EBE774A0, &qword_1C0F56970);
        if (v4 <= 0x3F)
        {
          sub_1C0EEA5C4(319, &qword_1EBE774A8, &qword_1EBE774B0, &qword_1C0F56978);
          if (v5 <= 0x3F)
          {
            sub_1C0EEA560(319, &qword_1EBE774B8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1C0EEA560(319, &qword_1EBE774C0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1C0EEA5C4(319, &qword_1EBE774C8, &qword_1EBE774D0, &qword_1C0F56998);
                if (v8 <= 0x3F)
                {
                  sub_1C0F4F9A0();
                  if (v9 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_1C0EEA560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C0EEA5C4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1C0F50500();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C0EEA664(uint64_t a1)
{
  result = sub_1C0EED60C(319, &qword_1EBE774E8, 0x1E6958440);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C0EEA720(uint64_t a1)
{
  result = sub_1C0F4F860();
  if (v2 <= 0x3F)
  {
    result = sub_1C0F4F830();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C0EEA808(uint64_t a1)
{
  result = sub_1C0F4F940();
  if (v2 <= 0x3F)
  {
    result = sub_1C0EED60C(319, &qword_1EBE77510, 0x1E6958460);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXSpeechTranscriber.TranscriptionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXSpeechTranscriber.TranscriptionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1C0EEAA10(uint64_t a1)
{
  sub_1C0EEAAC0();
  if (v1 <= 0x3F)
  {
    sub_1C0EEAB20(319);
    if (v2 <= 0x3F)
    {
      sub_1C0EEAB88();
      if (v3 <= 0x3F)
      {
        sub_1C0EEAC20(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for AXSpeechTranscriber.Event.FinishEvent(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C0EEAAC0()
{
  if (!qword_1EBE77528)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBE77528);
    }
  }
}

void sub_1C0EEAB20(uint64_t a1)
{
  if (!qword_1EBE77530)
  {
    sub_1C0F4F630();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBE77530);
    }
  }
}

void sub_1C0EEAB88()
{
  if (!qword_1EBE77538)
  {
    sub_1C0EEABD0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE77538);
    }
  }
}

void sub_1C0EEABD0()
{
  if (!qword_1EBE77540)
  {
    v0 = sub_1C0F502A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE77540);
    }
  }
}

void sub_1C0EEAC20(uint64_t a1)
{
  if (!qword_1EBE77548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE77550, &qword_1C0F56A50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBE77548);
    }
  }
}

void sub_1C0EEAC98(uint64_t a1)
{
  sub_1C0EEAD20(319);
  if (v1 <= 0x3F)
  {
    sub_1C0EEADA8();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1C0EEAD20(uint64_t a1)
{
  if (!qword_1EBE77568)
  {
    sub_1C0F4F630();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE77340, &qword_1C0F561F8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBE77568);
    }
  }
}

ValueMetadata *sub_1C0EEADA8()
{
  result = qword_1EBE77570;
  if (!qword_1EBE77570)
  {
    result = &type metadata for AXSpeechTranscriber.Event.FinishEvent.FinishReason;
    atomic_store(&type metadata for AXSpeechTranscriber.Event.FinishEvent.FinishReason, &qword_1EBE77570);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityActionRequestState.HandledCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AccessibilityActionRequestState.HandledCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1C0EEAF88(uint64_t a1)
{
  sub_1C0EEB074();
  if (v1 <= 0x3F)
  {
    sub_1C0F4F940();
    if (v2 <= 0x3F)
    {
      sub_1C0EEA560(319, &qword_1EBE77590, MEMORY[0x1E6969770], MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1C0EEB0D8(319);
        if (v4 <= 0x3F)
        {
          sub_1C0EEB140(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1C0EEB074()
{
  result = qword_1EBE77588;
  if (!qword_1EBE77588)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBE77588);
  }

  return result;
}

void sub_1C0EEB0D8(uint64_t a1)
{
  if (!qword_1EBE77598)
  {
    sub_1C0EED60C(255, &qword_1EBE775A0, 0x1E696ABC0);
    v1 = sub_1C0F50500();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBE77598);
    }
  }
}

void sub_1C0EEB140(uint64_t a1)
{
  if (!qword_1EBE775A8)
  {
    sub_1C0F4F750();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE775B0, &qword_1C0F56AE0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBE775A8);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C0EEB1F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C0EEB23C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

size_t sub_1C0EEB294(char a1, uint64_t a2, char a3)
{
  v6 = *v3;
  v7 = (*v3 + 16);
  v8 = *v7;
  v9 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
  v10 = v9;
  if (v8 >= a2)
  {
    v19 = *(*(v9 - 8) + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77658, &qword_1C0F56D50);
    v16 = swift_allocObject();
    v20 = *(v6 + 24);
    *(v16 + 16) = v8;
    *(v16 + 24) = v20;
    if (v20 >= 1)
    {
      sub_1C0EEB5FC(v16 + 16, v16 + ((v19 + 40) & ~v19), v7, v6 + ((v19 + 40) & ~v19));
    }

    goto LABEL_19;
  }

  sub_1C0F4FCE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  if (a1)
  {
    v13 = *(v6 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77658, &qword_1C0F56D50);
    v14 = *(v11 + 72);
    v15 = (v12 + 40) & ~v12;
    v16 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v16);
    if (v14)
    {
      if (result - v15 != 0x8000000000000000 || v14 != -1)
      {
        *(v16 + 16) = (result - v15) / v14;
        *(v16 + 24) = v13;
        *(v16 + 32) = 0;
        if (v13 >= 1)
        {
          sub_1C0EEB7D4(v16 + 16, v16 + v15, v7, v6 + v15);
          *(v6 + 24) = 0;
        }

LABEL_19:

        *v3 = v16;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77658, &qword_1C0F56D50);
  v21 = *(v11 + 72);
  v22 = (v12 + 40) & ~v12;
  v16 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v16);
  if (!v21)
  {
    goto LABEL_21;
  }

  if (result - v22 != 0x8000000000000000 || v21 != -1)
  {
    v24 = *(v6 + 24);
    *(v16 + 16) = (result - v22) / v21;
    *(v16 + 24) = v24;
    *(v16 + 32) = 0;
    if (v24 >= 1)
    {
      sub_1C0EEB968(v16 + 16, v16 + v22, v7, v6 + v22);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1C0EEB504()
{
  v1 = *v0;
  v2 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
  v3 = *(v1 + 16);
  v4 = *(*(v2 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77658, &qword_1C0F56D50);
  v5 = swift_allocObject();
  v6 = *(v1 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  if (v6 >= 1)
  {
    sub_1C0EEB5FC(v5 + 16, v5 + ((v4 + 40) & ~v4), (v1 + 16), v1 + ((v4 + 40) & ~v4));
  }

  *v0 = v5;
  return result;
}

void sub_1C0EEB5FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
  if (v5 >= v7)
  {
    v9 = 0;
    v8 = 0;
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v9)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void *sub_1C0EEB714@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = result[1];
    v8 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    if (v5 >= v7)
    {
      v11 = 0;
      v12 = 0;
      v13 = v7;
LABEL_6:
      *a3 = a2 + *(v9 + 72) * v4;
      *(a3 + 8) = v13;
      *(a3 + 16) = v11;
      *(a3 + 24) = v12;
      *(a3 + 32) = v5 >= v7;
      return result;
    }

    v12 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v13 = v5;
      v11 = a2;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_1C0EEB7D4(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_37;
  }

  v8 = a3[1];
  v9 = *(type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v9 + 72);
  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    goto LABEL_22;
  }

  if (!a4)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v16 = a4 + v14 * v4;
  if (v16 <= a2 && v16 + v14 * v11 > a2)
  {
    if (v16 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    swift_arrayInitWithTakeFrontToBack();
  }

LABEL_22:
  if (v5 < v8 && v10 >= 1)
  {
    if (v15)
    {
      v19 = a2 + v14 * v11;
      if (v19 < v15 || v19 >= v15 + v14 * v10)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v19 != v15)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      return;
    }

LABEL_39:
    __break(1u);
  }
}

void sub_1C0EEB968(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = v5;
      v10 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = 0;
  v8 = 0;
  v9 = v7;
LABEL_6:
  if (v9 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_1C0EEBA8C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void *sub_1C0EEBB38(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = sub_1C0EEB714(a1, a2, &v13);
  v7 = v14;
  if (v14 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v13)
  {
    v8 = v14 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
    result = swift_arrayInitWithCopy();
  }

  v9 = *a4 + v7;
  if (__OFADD__(*a4, v7))
  {
    goto LABEL_22;
  }

  *a4 = v9;
  if (v17)
  {
    return result;
  }

  v10 = v16;
  if (__OFADD__(v7, v16))
  {
    goto LABEL_23;
  }

  v11 = v16;
  if (v7 + v16 < v7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = v15;
  if (*a3)
  {
    result = (type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0) - 8);
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else if (!v15)
  {
    goto LABEL_18;
  }

  if (v10)
  {
    if (v11 < v10)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
    result = swift_arrayInitWithCopy();
    v9 = *a4;
  }

LABEL_18:
  if (__OFADD__(v9, v10))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *a4 = v9 + v10;
  return result;
}

uint64_t sub_1C0EEBC7C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C0EEBD70;

  return v5(v2 + 32);
}

uint64_t sub_1C0EEBD70()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1C0EEBE84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C0EEFCF4;

  return sub_1C0EEBC7C(a1, v4);
}

uint64_t sub_1C0EEBF3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0F4F830();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6, v7, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77370, &qword_1C0F56200);
  MEMORY[0x1EEE9AC00](v11 - 8, v12, v13, v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77628, &qword_1C0F56CA0);
  v21 = MEMORY[0x1EEE9AC00](v17 - 8, v18, v19, v20);
  v23 = &v30 - v22;
  v24 = *(v21 + 56);
  sub_1C0EED570(a1, &v30 - v22, &qword_1EBE77370, &qword_1C0F56200);
  sub_1C0EED570(a2, &v23[v24], &qword_1EBE77370, &qword_1C0F56200);
  v25 = *(v5 + 48);
  if (v25(v23, 1, v4) != 1)
  {
    sub_1C0EED570(v23, v16, &qword_1EBE77370, &qword_1C0F56200);
    if (v25(&v23[v24], 1, v4) != 1)
    {
      (*(v5 + 32))(v10, &v23[v24], v4);
      sub_1C0EE9CFC(&qword_1EBE77630, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v27 = sub_1C0F50190();
      v28 = *(v5 + 8);
      v28(v10, v4);
      v28(v16, v4);
      sub_1C0EEFAA8(v23, &qword_1EBE77370, &qword_1C0F56200);
      v26 = v27 ^ 1;
      return v26 & 1;
    }

    (*(v5 + 8))(v16, v4);
    goto LABEL_6;
  }

  if (v25(&v23[v24], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0EEFAA8(v23, &qword_1EBE77628, &qword_1C0F56CA0);
    v26 = 1;
    return v26 & 1;
  }

  sub_1C0EEFAA8(v23, &qword_1EBE77370, &qword_1C0F56200);
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1C0EEC25C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774D0, &qword_1C0F56998);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6, v7, v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77390, &qword_1C0F56208);
  MEMORY[0x1EEE9AC00](v11 - 8, v12, v13, v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77680, &qword_1C0F56DC0);
  v21 = MEMORY[0x1EEE9AC00](v17 - 8, v18, v19, v20);
  v23 = &v30 - v22;
  v24 = *(v21 + 56);
  sub_1C0EED570(a1, &v30 - v22, &qword_1EBE77390, &qword_1C0F56208);
  sub_1C0EED570(a2, &v23[v24], &qword_1EBE77390, &qword_1C0F56208);
  v25 = *(v5 + 48);
  if (v25(v23, 1, v4) != 1)
  {
    sub_1C0EED570(v23, v16, &qword_1EBE77390, &qword_1C0F56208);
    if (v25(&v23[v24], 1, v4) != 1)
    {
      (*(v5 + 32))(v10, &v23[v24], v4);
      sub_1C0EEFB08(&qword_1EBE77688, &qword_1EBE774D0, &qword_1C0F56998, MEMORY[0x1E69E8670]);
      v27 = sub_1C0F50190();
      v28 = *(v5 + 8);
      v28(v10, v4);
      v28(v16, v4);
      sub_1C0EEFAA8(v23, &qword_1EBE77390, &qword_1C0F56208);
      v26 = v27 ^ 1;
      return v26 & 1;
    }

    (*(v5 + 8))(v16, v4);
    goto LABEL_6;
  }

  if (v25(&v23[v24], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0EEFAA8(v23, &qword_1EBE77680, &qword_1C0F56DC0);
    v26 = 1;
    return v26 & 1;
  }

  sub_1C0EEFAA8(v23, &qword_1EBE77390, &qword_1C0F56208);
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1C0EEC580(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773C0, &qword_1C0F56228);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6, v7, v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12, v13, v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE777E8, &qword_1C0F56F58);
  v21 = MEMORY[0x1EEE9AC00](v17 - 8, v18, v19, v20);
  v23 = &v30 - v22;
  v24 = *(v21 + 56);
  sub_1C0EED570(a1, &v30 - v22, &qword_1EBE772B0, &qword_1C0F561E0);
  sub_1C0EED570(a2, &v23[v24], &qword_1EBE772B0, &qword_1C0F561E0);
  v25 = *(v5 + 48);
  if (v25(v23, 1, v4) != 1)
  {
    sub_1C0EED570(v23, v16, &qword_1EBE772B0, &qword_1C0F561E0);
    if (v25(&v23[v24], 1, v4) != 1)
    {
      (*(v5 + 32))(v10, &v23[v24], v4);
      sub_1C0EEFB08(&qword_1EBE777F0, &qword_1EBE773C0, &qword_1C0F56228, MEMORY[0x1E69E8670]);
      v27 = sub_1C0F50190();
      v28 = *(v5 + 8);
      v28(v10, v4);
      v28(v16, v4);
      sub_1C0EEFAA8(v23, &qword_1EBE772B0, &qword_1C0F561E0);
      v26 = v27 ^ 1;
      return v26 & 1;
    }

    (*(v5 + 8))(v16, v4);
    goto LABEL_6;
  }

  if (v25(&v23[v24], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0EEFAA8(v23, &qword_1EBE777E8, &qword_1C0F56F58);
    v26 = 1;
    return v26 & 1;
  }

  sub_1C0EEFAA8(v23, &qword_1EBE772B0, &qword_1C0F561E0);
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1C0EEC8A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774B0, &qword_1C0F56978);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6, v7, v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77320, &qword_1C0F561F0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12, v13, v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775D0, &qword_1C0F56BB0);
  v21 = MEMORY[0x1EEE9AC00](v17 - 8, v18, v19, v20);
  v23 = &v30 - v22;
  v24 = *(v21 + 56);
  sub_1C0EED570(a1, &v30 - v22, &qword_1EBE77320, &qword_1C0F561F0);
  sub_1C0EED570(a2, &v23[v24], &qword_1EBE77320, &qword_1C0F561F0);
  v25 = *(v5 + 48);
  if (v25(v23, 1, v4) != 1)
  {
    sub_1C0EED570(v23, v16, &qword_1EBE77320, &qword_1C0F561F0);
    if (v25(&v23[v24], 1, v4) != 1)
    {
      (*(v5 + 32))(v10, &v23[v24], v4);
      sub_1C0EEFB08(&qword_1EBE775D8, &qword_1EBE774B0, &qword_1C0F56978, MEMORY[0x1E69E8670]);
      v27 = sub_1C0F50190();
      v28 = *(v5 + 8);
      v28(v10, v4);
      v28(v16, v4);
      sub_1C0EEFAA8(v23, &qword_1EBE77320, &qword_1C0F561F0);
      v26 = v27 ^ 1;
      return v26 & 1;
    }

    (*(v5 + 8))(v16, v4);
    goto LABEL_6;
  }

  if (v25(&v23[v24], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0EEFAA8(v23, &qword_1EBE775D0, &qword_1C0F56BB0);
    v26 = 1;
    return v26 & 1;
  }

  sub_1C0EEFAA8(v23, &qword_1EBE77320, &qword_1C0F561F0);
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1C0EECBC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0F4F750();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6, v7, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77340, &qword_1C0F561F8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12, v13, v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775C0, &qword_1C0F56BA8);
  v21 = MEMORY[0x1EEE9AC00](v17 - 8, v18, v19, v20);
  v23 = &v30 - v22;
  v24 = *(v21 + 56);
  sub_1C0EED570(a1, &v30 - v22, &qword_1EBE77340, &qword_1C0F561F8);
  sub_1C0EED570(a2, &v23[v24], &qword_1EBE77340, &qword_1C0F561F8);
  v25 = *(v5 + 48);
  if (v25(v23, 1, v4) != 1)
  {
    sub_1C0EED570(v23, v16, &qword_1EBE77340, &qword_1C0F561F8);
    if (v25(&v23[v24], 1, v4) != 1)
    {
      (*(v5 + 32))(v10, &v23[v24], v4);
      sub_1C0EE9CFC(&qword_1EBE775C8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v27 = sub_1C0F50190();
      v28 = *(v5 + 8);
      v28(v10, v4);
      v28(v16, v4);
      sub_1C0EEFAA8(v23, &qword_1EBE77340, &qword_1C0F561F8);
      v26 = v27 ^ 1;
      return v26 & 1;
    }

    (*(v5 + 8))(v16, v4);
    goto LABEL_6;
  }

  if (v25(&v23[v24], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0EEFAA8(v23, &qword_1EBE775C0, &qword_1C0F56BA8);
    v26 = 1;
    return v26 & 1;
  }

  sub_1C0EEFAA8(v23, &qword_1EBE77340, &qword_1C0F561F8);
  v26 = 0;
  return v26 & 1;
}

void sub_1C0EED0C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat) = v2;
  v4 = v2;
}

void sub_1C0EED104()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__assetDownloadProgress);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__assetDownloadProgress) = v2;
  v4 = v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_1C0EED190(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C0EED1F0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState) = *(v0 + 24);
  v4 = v2;
  return sub_1C0ECEA80(&v4);
}

void sub_1C0EED2AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFile);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFile) = v2;
  v4 = v2;
}

uint64_t sub_1C0EED320()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftMagnitudes) = *(v0 + 24);

  return sub_1C0EE3084();
}

uint64_t sub_1C0EED374(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C0EEFCF4;

  return sub_1C0EF70FC(a1, v4);
}

uint64_t sub_1C0EED460()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__soundFloorRMSHistory) = *(v0 + 24);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C0EED4C4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__converter) = *(v0 + 24);
}

unint64_t sub_1C0EED51C()
{
  result = qword_1EBE77670;
  if (!qword_1EBE77670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77670);
  }

  return result;
}

uint64_t sub_1C0EED570(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C0EED60C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1C0EED654()
{
  v1 = *(sub_1C0F4F830() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 32) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  return sub_1C0EE3F58(v7, v8, v0 + v4, v0 + v5, v6);
}

uint64_t sub_1C0EED6F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77370, &qword_1C0F56200);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0EED764(uint64_t a1)
{
  v2 = sub_1C0F4FDC0();
  v3 = *(v2 - 8);
  v7 = MEMORY[0x1EEE9AC00](v2, v4, v5, v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10, v11, v12);
  v43 = &v36 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77760, &qword_1C0F56ED8);
    v15 = sub_1C0F50580();
    v16 = 0;
    v18 = *(v3 + 16);
    v17 = v3 + 16;
    v41 = v18;
    v42 = v15 + 56;
    v19 = *(v17 + 64);
    v38 = v14;
    v39 = a1 + ((v19 + 32) & ~v19);
    v20 = *(v17 + 56);
    v21 = (v17 - 8);
    v37 = (v17 + 16);
    while (1)
    {
      v40 = v16;
      v41(v43, v39 + v20 * v16, v2);
      sub_1C0EE9CFC(&qword_1EBE77768, MEMORY[0x1E697B8A0], MEMORY[0x1E697B8A8]);
      v22 = sub_1C0F50170();
      v23 = ~(-1 << *(v15 + 32));
      v24 = v22 & v23;
      v25 = (v22 & v23) >> 6;
      v26 = *(v42 + 8 * v25);
      v27 = 1 << (v22 & v23);
      if ((v27 & v26) != 0)
      {
        while (1)
        {
          v28 = v17;
          v41(v9, *(v15 + 48) + v24 * v20, v2);
          sub_1C0EE9CFC(&qword_1EBE77770, MEMORY[0x1E697B8A0], MEMORY[0x1E697B8B0]);
          v29 = sub_1C0F50190();
          v30 = *v21;
          (*v21)(v9, v2);
          if (v29)
          {
            break;
          }

          v24 = (v24 + 1) & v23;
          v25 = v24 >> 6;
          v26 = *(v42 + 8 * (v24 >> 6));
          v27 = 1 << v24;
          v17 = v28;
          if (((1 << v24) & v26) == 0)
          {
            goto LABEL_8;
          }
        }

        v30(v43, v2);
        v17 = v28;
      }

      else
      {
LABEL_8:
        v31 = v43;
        *(v42 + 8 * v25) = v27 | v26;
        result = (*v37)(*(v15 + 48) + v24 * v20, v31, v2);
        v33 = *(v15 + 16);
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          __break(1u);
          return result;
        }

        *(v15 + 16) = v35;
      }

      v16 = v40 + 1;
      if (v40 + 1 == v38)
      {
        return v15;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1C0EEDA84(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v3 = sub_1C0F4F940();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1C0F4F8A0();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = sub_1C0F502F0();
  v2[12] = sub_1C0F502E0();
  v5 = sub_1C0F4FE10();
  v6 = sub_1C0EE9CFC(&qword_1EBE77758, MEMORY[0x1E697B8E0], MEMORY[0x1E697B8D0]);
  v7 = swift_task_alloc();
  v2[13] = v7;
  *v7 = v2;
  v7[1] = sub_1C0EEDC44;

  return MEMORY[0x1EEDD8DE8](v5, v6);
}

uint64_t sub_1C0EEDC44(uint64_t a1)
{
  *(*v1 + 112) = a1;

  v3 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EEDD88, v3, v2);
}

uint64_t sub_1C0EEDD88()
{
  v1 = v0[14];

  v2 = *(v1 + 16);
  v3 = v0[14];
  v4 = v0[9];
  if (v2)
  {
    v5 = v0[6];
    v39 = MEMORY[0x1E69E7CC0];
    sub_1C0EF8E6C(0, v2, 0);
    v6 = v39;
    v7 = *(v5 + 16);
    v5 += 16;
    v36 = v7;
    v8 = v3 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v34 = *(v5 + 56);
    v38 = *MEMORY[0x1E6969640];
    v37 = v0;
    v31 = (v5 - 8);
    v32 = (v4 + 8);
    v33 = (v4 + 104);
    do
    {
      v9 = v0[10];
      v10 = v0[7];
      v11 = v0[8];
      v12 = v0[5];
      v36(v10, v8, v12);
      v35 = *v33;
      (*v33)(v9, v38, v11);
      v13 = sub_1C0F4F870();
      v15 = v14;
      (*v32)(v9, v11);
      (*v31)(v10, v12);
      v17 = *(v39 + 16);
      v16 = *(v39 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1C0EF8E6C((v16 > 1), v17 + 1, 1);
      }

      *(v39 + 16) = v17 + 1;
      v18 = v39 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v8 += v34;
      --v2;
      v0 = v37;
    }

    while (v2);

    v19 = v38;
    v20 = v35;
  }

  else
  {

    v19 = *MEMORY[0x1E6969640];
    v20 = *(v4 + 104);
    v6 = MEMORY[0x1E69E7CC0];
  }

  v21 = v0[9];
  v22 = v0[10];
  v23 = v0[8];
  v20(v22, v19, v23);
  v24 = sub_1C0F4F870();
  v26 = v25;
  (*(v21 + 8))(v22, v23);
  v0[2] = v24;
  v0[3] = v26;
  v27 = swift_task_alloc();
  *(v27 + 16) = v0 + 2;
  v28 = sub_1C0EEBA8C(sub_1C0EEFE1C, v27, v6);

  v29 = v0[1];

  return v29(v28 & 1);
}

uint64_t sub_1C0EEE06C(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_1C0F4F8A0();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = sub_1C0F502F0();
  v1[9] = sub_1C0F502E0();
  sub_1C0F4FE10();
  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v1;
  v3[1] = sub_1C0EEE180;

  return MEMORY[0x1EEDD8DF8]();
}

uint64_t sub_1C0EEE180(uint64_t a1)
{
  *(*v1 + 88) = a1;

  v3 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EEE2C4, v3, v2);
}

uint64_t sub_1C0EEE2C4()
{
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  v5 = sub_1C0EFC610(v1);

  v6 = sub_1C0EE2A08(v5);

  (*(v3 + 104))(v2, *MEMORY[0x1E6969640], v4);
  v7 = sub_1C0F4F870();
  v9 = v8;
  (*(v3 + 8))(v2, v4);
  v0[2] = v7;
  v0[3] = v9;
  v10 = swift_task_alloc();
  *(v10 + 16) = v0 + 2;
  v11 = sub_1C0EEBA8C(sub_1C0EEF63C, v10, v6);

  v12 = v0[1];

  return v12(v11 & 1);
}

uint64_t sub_1C0EEE428(uint64_t a1)
{
  v2 = sub_1C0F4FF60();
  v3 = *(v2 - 8);
  v7 = MEMORY[0x1EEE9AC00](v2, v4, v5, v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10, v11, v12);
  v43 = &v36 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE777C8, &qword_1C0F56F48);
    v15 = sub_1C0F50580();
    v16 = 0;
    v18 = *(v3 + 16);
    v17 = v3 + 16;
    v41 = v18;
    v42 = v15 + 56;
    v19 = *(v17 + 64);
    v38 = v14;
    v39 = a1 + ((v19 + 32) & ~v19);
    v20 = *(v17 + 56);
    v21 = (v17 - 8);
    v37 = (v17 + 16);
    while (1)
    {
      v40 = v16;
      v41(v43, v39 + v20 * v16, v2);
      sub_1C0EE9CFC(&qword_1EBE777D0, MEMORY[0x1E697B948], MEMORY[0x1E697B950]);
      v22 = sub_1C0F50170();
      v23 = ~(-1 << *(v15 + 32));
      v24 = v22 & v23;
      v25 = (v22 & v23) >> 6;
      v26 = *(v42 + 8 * v25);
      v27 = 1 << (v22 & v23);
      if ((v27 & v26) != 0)
      {
        while (1)
        {
          v28 = v17;
          v41(v9, *(v15 + 48) + v24 * v20, v2);
          sub_1C0EE9CFC(&qword_1EBE777D8, MEMORY[0x1E697B948], MEMORY[0x1E697B958]);
          v29 = sub_1C0F50190();
          v30 = *v21;
          (*v21)(v9, v2);
          if (v29)
          {
            break;
          }

          v24 = (v24 + 1) & v23;
          v25 = v24 >> 6;
          v26 = *(v42 + 8 * (v24 >> 6));
          v27 = 1 << v24;
          v17 = v28;
          if (((1 << v24) & v26) == 0)
          {
            goto LABEL_8;
          }
        }

        v30(v43, v2);
        v17 = v28;
      }

      else
      {
LABEL_8:
        v31 = v43;
        *(v42 + 8 * v25) = v27 | v26;
        result = (*v37)(*(v15 + 48) + v24 * v20, v31, v2);
        v33 = *(v15 + 16);
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          __break(1u);
          return result;
        }

        *(v15 + 16) = v35;
      }

      v16 = v40 + 1;
      if (v40 + 1 == v38)
      {
        return v15;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1C0EEE748(uint64_t a1)
{
  v2 = sub_1C0F4FF70();
  v3 = *(v2 - 8);
  v7 = MEMORY[0x1EEE9AC00](v2, v4, v5, v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10, v11, v12);
  v43 = &v36 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE777B0, &qword_1C0F56F40);
    v15 = sub_1C0F50580();
    v16 = 0;
    v18 = *(v3 + 16);
    v17 = v3 + 16;
    v41 = v18;
    v42 = v15 + 56;
    v19 = *(v17 + 64);
    v38 = v14;
    v39 = a1 + ((v19 + 32) & ~v19);
    v20 = *(v17 + 56);
    v21 = (v17 - 8);
    v37 = (v17 + 16);
    while (1)
    {
      v40 = v16;
      v41(v43, v39 + v20 * v16, v2);
      sub_1C0EE9CFC(&qword_1EBE777B8, MEMORY[0x1E697B968], MEMORY[0x1E697B970]);
      v22 = sub_1C0F50170();
      v23 = ~(-1 << *(v15 + 32));
      v24 = v22 & v23;
      v25 = (v22 & v23) >> 6;
      v26 = *(v42 + 8 * v25);
      v27 = 1 << (v22 & v23);
      if ((v27 & v26) != 0)
      {
        while (1)
        {
          v28 = v17;
          v41(v9, *(v15 + 48) + v24 * v20, v2);
          sub_1C0EE9CFC(&qword_1EBE777C0, MEMORY[0x1E697B968], MEMORY[0x1E697B978]);
          v29 = sub_1C0F50190();
          v30 = *v21;
          (*v21)(v9, v2);
          if (v29)
          {
            break;
          }

          v24 = (v24 + 1) & v23;
          v25 = v24 >> 6;
          v26 = *(v42 + 8 * (v24 >> 6));
          v27 = 1 << v24;
          v17 = v28;
          if (((1 << v24) & v26) == 0)
          {
            goto LABEL_8;
          }
        }

        v30(v43, v2);
        v17 = v28;
      }

      else
      {
LABEL_8:
        v31 = v43;
        *(v42 + 8 * v25) = v27 | v26;
        result = (*v37)(*(v15 + 48) + v24 * v20, v31, v2);
        v33 = *(v15 + 16);
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          __break(1u);
          return result;
        }

        *(v15 + 16) = v35;
      }

      v16 = v40 + 1;
      if (v40 + 1 == v38)
      {
        return v15;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1C0EEEA68(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v3 = sub_1C0F4F940();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1C0F4F8A0();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = sub_1C0F502F0();
  v2[12] = sub_1C0F502E0();
  v5 = sub_1C0F4FFC0();
  v6 = sub_1C0EE9CFC(&qword_1EBE777A8, MEMORY[0x1E697B9A8], MEMORY[0x1E697B998]);
  v7 = swift_task_alloc();
  v2[13] = v7;
  *v7 = v2;
  v7[1] = sub_1C0EEDC44;

  return MEMORY[0x1EEDD8DE8](v5, v6);
}

uint64_t sub_1C0EEEC28(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_1C0F4F8A0();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = sub_1C0F502F0();
  v1[9] = sub_1C0F502E0();
  sub_1C0F4FFC0();
  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v1;
  v3[1] = sub_1C0EEED3C;

  return MEMORY[0x1EEDD8F10]();
}

uint64_t sub_1C0EEED3C(uint64_t a1)
{
  *(*v1 + 88) = a1;

  v3 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EEEE80, v3, v2);
}

uint64_t sub_1C0EEEE80()
{
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  v5 = sub_1C0EFC610(v1);

  v6 = sub_1C0EE2A08(v5);

  (*(v3 + 104))(v2, *MEMORY[0x1E6969640], v4);
  v7 = sub_1C0F4F870();
  v9 = v8;
  (*(v3 + 8))(v2, v4);
  v0[2] = v7;
  v0[3] = v9;
  v10 = swift_task_alloc();
  *(v10 + 16) = v0 + 2;
  v11 = sub_1C0EEBA8C(sub_1C0EEFE1C, v10, v6);

  v12 = v0[1];

  return v12(v11 & 1);
}

unint64_t sub_1C0EEEFE4(void *a1)
{
  __C[4] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE776C0, &qword_1C0F56E08);
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v7 = &v34 - v6;
  v8 = sub_1C0F50020();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10, v11, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 format];
  v16 = [v15 commonFormat];

  v17 = 0;
  if (v16 == 1)
  {
    v18 = [a1 frameLength];
    v19 = [a1 format];
    v20 = [v19 channelCount];

    v17 = 0;
    if (v18)
    {
      if (v20)
      {
        v21 = v20;
        v22 = [a1 floatChannelData];
        if (v22)
        {
          v23 = v22;
          v24 = 0.0;
          v25 = v21;
          do
          {
            v26 = *v23++;
            LODWORD(__C[0]) = 0;
            vDSP_svesq(v26, 1, __C, v18);
            v24 = v24 + *__C;
            --v25;
          }

          while (v25);
        }

        else
        {
          v34 = v20;
          [a1 audioBufferList];
          sub_1C0F50030();
          v36 = v9;
          (*(v9 + 16))(v7, v14, v8);
          v27 = *(v2 + 36);
          sub_1C0EE9CFC(&qword_1EBE776C8, MEMORY[0x1E69E7DC8], MEMORY[0x1E69E7DD0]);
          v35 = v14;
          sub_1C0F50420();
          v24 = 0.0;
          while (1)
          {
            sub_1C0F50430();
            if (*&v7[v27] == __C[0])
            {
              break;
            }

            v28 = sub_1C0F50450();
            v30 = *(v29 + 4);
            v31 = *(v29 + 8);
            v28(__C, 0);
            sub_1C0F50440();
            if (v31)
            {
              LODWORD(__C[0]) = 0;
              vDSP_svesq(v31, 1, __C, v30 >> 2);
              v24 = v24 + *__C;
            }
          }

          sub_1C0EEFAA8(v7, &qword_1EBE776C0, &qword_1C0F56E08);
          (*(v36 + 8))(v35, v8);
          v21 = v34;
        }

        v32 = v18 * v21;
        if ((v18 * v21) >> 64 != v32 >> 63)
        {
          __break(1u);
        }

        v17 = COERCE_UNSIGNED_INT(sqrtf(v24 / v32) * 1000.0);
      }
    }
  }

  LOBYTE(__C[0]) = v16 != 1;
  return v17 | ((v16 != 1) << 32);
}

uint64_t sub_1C0EEF3B0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother;
  v3 = *v1;
  v4 = v1[1];
  *(v2 + 32) = *(v1 + 4);
  *v2 = v3;
  *(v2 + 16) = v4;
}

uint64_t sub_1C0EEF408(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C0EEFCF4;

  return sub_1C0ED8DCC(a1, v4, v5, v6);
}

uint64_t sub_1C0EEF4C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C0EEFCF4;

  return sub_1C0EDE7CC(a1, v4, v5, v7, v6);
}

uint64_t sub_1C0EEF588(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C0EEFCF4;

  return sub_1C0EDE150(a1, v4, v5, v6);
}

uint64_t sub_1C0EEF658(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1C0EEF664(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t objectdestroy_292Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C0EEF6F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C0EEFCF4;

  return sub_1C0EDFF0C(a1, v4, v5, v7, v6);
}

uint64_t sub_1C0EEF7B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C0EEF864;

  return sub_1C0EDE150(a1, v4, v5, v6);
}

uint64_t sub_1C0EEF864()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C0EEF958(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C0F50790() & 1;
  }
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1C0EEFA0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C0EEFAA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C0EEFB08(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_6Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1C0EEFB9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C0EEF864;

  return sub_1C0EE5BD4(a1, v4, v5, v6);
}

uint64_t sub_1C0EEFE90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1701869940;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0x80000001C0F65ED0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x65756C6176;
    }

    else
    {
      v4 = 0x656C746974;
    }

    v5 = 0xE500000000000000;
  }

  v6 = 1701869940;
  v7 = 0x80000001C0F65ED0;
  if (a2 == 2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (a2)
  {
    v2 = 0x65756C6176;
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
    v9 = 0xE500000000000000;
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
    v10 = sub_1C0F50790();
  }

  return v10 & 1;
}

uint64_t sub_1C0EEFFB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x65756C6176;
    }

    else
    {
      v4 = 0x656C746974;
    }

    v5 = 0xE500000000000000;
  }

  else if (a1 == 2)
  {
    v5 = 0xE400000000000000;
    v4 = 1701869940;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0xD000000000000019;
    }

    if (v3 == 3)
    {
      v5 = 0x80000001C0F65ED0;
    }

    else
    {
      v5 = 0x80000001C0F65EF0;
    }
  }

  if (a2 <= 1u)
  {
    v6 = 0xE500000000000000;
    v7 = 0xE500000000000000;
    v8 = 0x65756C6176;
    v9 = a2 == 0;
LABEL_18:
    if (v9)
    {
      v10 = v2;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }

    if (v4 != v10)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (a2 != 2)
  {
    v2 = 0xD000000000000011;
    v6 = 0x80000001C0F65ED0;
    v7 = 0x80000001C0F65EF0;
    v8 = 0xD000000000000019;
    v9 = a2 == 3;
    goto LABEL_18;
  }

  v11 = 0xE400000000000000;
  if (v4 != 1701869940)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (v5 != v11)
  {
LABEL_28:
    v12 = sub_1C0F50790();
    goto LABEL_29;
  }

  v12 = 1;
LABEL_29:

  return v12 & 1;
}

uint64_t VOMapsItem.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VOMapsItem.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t VOMapsItem.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t VOMapsItem.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t VOMapsItem.type.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t VOMapsItem.type.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t VOMapsItem.latitude.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t VOMapsItem.longitude.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t VOMapsItem.headingDirection.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t VOMapsItem.headingDirection.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t VOMapsItem.distanceFromMyLocation.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t VOMapsItem.distanceFromMyLocation.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t VOMapsItem.mapWidthScale.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t VOMapsItem.mapWidthScale.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t VOMapsItem.mapHeightScale.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t VOMapsItem.mapHeightScale.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t VOMapsItem.mapHeadingDirection.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t VOMapsItem.mapHeadingDirection.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

void __swiftcall VOMapsItem.init(title:value:type:latitude:longitude:headingDirection:distanceFromMyLocation:mapWidthScale:mapHeightScale:mapHeadingDirection:)(AccessibilitySharedSupport::VOMapsItem *__return_ptr retstr, Swift::String_optional title, Swift::String_optional value, Swift::String_optional type, Swift::Double_optional latitude, Swift::Double_optional longitude, Swift::String_optional headingDirection, Swift::String_optional distanceFromMyLocation, Swift::String_optional mapWidthScale, Swift::String_optional mapHeightScale, Swift::String_optional mapHeadingDirection)
{
  retstr->distance.value = v12;
  *&retstr->distance.is_nil = 0;
  LOBYTE(retstr[1].title.value._countAndFlagsBits) = 1;
  retstr->title = title;
  retstr->value = value;
  retstr->type = type;
  retstr->latitude.value = *&latitude.is_nil;
  retstr->latitude.is_nil = longitude.is_nil;
  *(&retstr->longitude.value + 7) = headingDirection.value._countAndFlagsBits;
  LOBYTE(retstr->headingDirection.value._countAndFlagsBits) = headingDirection.value._object & 1;
  *&retstr->headingDirection.value._object = distanceFromMyLocation;
  *&retstr->distanceFromMyLocation.value._object = mapWidthScale;
  *&retstr->mapWidthScale.value._object = mapHeightScale;
  *&retstr->mapHeightScale.value._object = mapHeadingDirection;
  retstr->mapHeadingDirection.value._object = v11;
}

uint64_t sub_1C0EF063C()
{
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

uint64_t sub_1C0EF0714(uint64_t a1)
{
  sub_1C0F50200();
}

uint64_t sub_1C0EF07D8(uint64_t a1)
{
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

unint64_t sub_1C0EF08AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C0EFC888(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C0EF08DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746974;
  v5 = 0xE400000000000000;
  v6 = 1701869940;
  v7 = 0xD000000000000011;
  v8 = 0x80000001C0F65ED0;
  if (v2 != 3)
  {
    v7 = 0xD000000000000019;
    v8 = 0x80000001C0F65EF0;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x65756C6176;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1C0EF0970()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 1701869940;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65756C6176;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1C0EF0A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C0EFC888(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C0EF0A40(uint64_t a1)
{
  v2 = sub_1C0EF0D38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0EF0A7C(uint64_t a1)
{
  v2 = sub_1C0EF0D38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VOMapsItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77808, &qword_1C0F56FF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5, v6, v7);
  v9 = v18 - v8;
  v10 = v1[3];
  v19 = v1[2];
  v20 = v10;
  v11 = v1[5];
  v21 = v1[4];
  v12 = v1[11];
  v18[4] = v1[10];
  v18[5] = v11;
  v13 = v1[13];
  v18[2] = v1[12];
  v18[3] = v12;
  v18[1] = v13;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0EF0D38();
  sub_1C0F508B0();
  v27 = 0;
  v14 = v22;
  sub_1C0F50710();
  if (v14)
  {
    return (*(v4 + 8))(v9, v3);
  }

  if (v20)
  {
    v16 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v16 = v19 & 0xFFFFFFFFFFFFLL;
    }

    v17 = v4;
    if (v16)
    {
      v23 = 1;
      sub_1C0F50710();
    }
  }

  else
  {
    v17 = v4;
  }

  v26 = 2;
  sub_1C0F50710();
  v25 = 3;
  sub_1C0F50710();
  v24 = 4;
  sub_1C0F50710();
  return (*(v17 + 8))(v9, v3);
}

unint64_t sub_1C0EF0D38()
{
  result = qword_1EBE77810;
  if (!qword_1EBE77810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77810);
  }

  return result;
}

uint64_t VOMapsItem.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77818, qword_1C0F56FF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7, v8, v9);
  v11 = &v38 - v10;
  v77 = 1;
  v75 = 1;
  v73 = 1;
  v12 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v12);
  sub_1C0EF0D38();
  sub_1C0F508A0();
  if (v2)
  {
    v78 = v2;
    v42 = 0;
    __swift_destroy_boxed_opaque_existential_0(v43);
    v55 = 0uLL;
    v56 = 0uLL;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = v77;
    *v61 = *v76;
    *&v61[3] = *&v76[3];
    v62 = 0;
    v63 = v75;
    *v64 = *v74;
    *&v64[3] = *&v74[3];
    v65 = 0;
    v66 = v42;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0;
    v72 = v73;
  }

  else
  {
    v13 = a2;
    LOBYTE(v55) = 0;
    *&v41 = sub_1C0F50690();
    *(&v41 + 1) = v15;
    LOBYTE(v55) = 1;
    *&v40 = sub_1C0F50690();
    *(&v40 + 1) = v16;
    LOBYTE(v55) = 2;
    v17 = sub_1C0F50690();
    v19 = v18;
    LOBYTE(v55) = 3;
    v20 = sub_1C0F50690();
    v22 = v21;
    v39 = v20;
    v54 = 4;
    v23 = sub_1C0F50690();
    v78 = 0;
    v24 = *(v6 + 8);
    v25 = v23;
    v42 = v23;
    v26 = v11;
    v28 = v27;
    v24(v26, v5);
    v44 = v41;
    v45 = v40;
    *&v46 = v17;
    *(&v46 + 1) = v19;
    *&v47 = 0;
    v29 = v77;
    BYTE8(v47) = v77;
    *&v48 = 0;
    v30 = v75;
    BYTE8(v48) = v75;
    *&v49 = v39;
    *(&v49 + 1) = v22;
    *&v50 = v25;
    *(&v50 + 1) = v28;
    v51 = 0u;
    v52 = 0u;
    memset(v53, 0, 24);
    v31 = v17;
    v32 = v22;
    v33 = v19;
    LOBYTE(v19) = v73;
    v53[24] = v73;
    v13[6] = v50;
    v13[7] = 0u;
    v34 = *v53;
    v13[8] = v52;
    v13[9] = v34;
    v35 = v47;
    v13[2] = v46;
    v13[3] = v35;
    v36 = v49;
    v13[4] = v48;
    v13[5] = v36;
    v37 = v45;
    *v13 = v44;
    v13[1] = v37;
    *(v13 + 153) = *&v53[9];
    sub_1C0EF1234(&v44, &v55);
    __swift_destroy_boxed_opaque_existential_0(v43);
    v55 = v41;
    v56 = v40;
    v57 = v31;
    v58 = v33;
    v59 = 0;
    v60 = v29;
    v62 = 0;
    v63 = v30;
    v65 = v39;
    v66 = v32;
    *&v67 = v42;
    *(&v67 + 1) = v28;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0;
    v72 = v19;
  }

  return sub_1C0EF1204(&v55);
}

uint64_t VOMapsItem.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v17 = *(v1 + 56);
  v14 = *(v1 + 48);
  v15 = *(v1 + 64);
  v18 = *(v1 + 72);
  v4 = *(v1 + 88);
  v5 = *(v1 + 104);
  v6 = *(v1 + 120);
  v7 = *(v1 + 136);
  v19 = *(v1 + 152);
  v16 = *(v1 + 160);
  v20 = *(v1 + 168);
  if (*(v1 + 8))
  {
    sub_1C0F50870();
    sub_1C0F50200();
    v8 = v7;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1C0F50870();
    v8 = v7;
    if (v2)
    {
LABEL_3:
      sub_1C0F50870();
      sub_1C0F50200();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  sub_1C0F50870();
  if (v3)
  {
LABEL_4:
    sub_1C0F50870();
    sub_1C0F50200();
    if (v17)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  sub_1C0F50870();
  if (v17)
  {
LABEL_5:
    sub_1C0F50870();
    if (!v18)
    {
      goto LABEL_6;
    }

LABEL_23:
    sub_1C0F50870();
    if (v4)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_19:
  sub_1C0F50870();
  if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v14;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1C68EA090](v12);
  if (v18)
  {
    goto LABEL_23;
  }

LABEL_6:
  sub_1C0F50870();
  if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v15;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1C68EA090](v9);
  if (v4)
  {
LABEL_10:
    sub_1C0F50870();
    sub_1C0F50200();
    v10 = v19;
    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  sub_1C0F50870();
  v10 = v19;
  if (v5)
  {
LABEL_11:
    sub_1C0F50870();
    sub_1C0F50200();
    if (v6)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  sub_1C0F50870();
  if (v6)
  {
LABEL_12:
    sub_1C0F50870();
    sub_1C0F50200();
    if (v8)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  sub_1C0F50870();
  if (v8)
  {
LABEL_13:
    sub_1C0F50870();
    sub_1C0F50200();
    if (v10)
    {
      goto LABEL_14;
    }

LABEL_28:
    sub_1C0F50870();
    if (v20)
    {
      return sub_1C0F50870();
    }

    goto LABEL_29;
  }

LABEL_27:
  sub_1C0F50870();
  if (!v10)
  {
    goto LABEL_28;
  }

LABEL_14:
  sub_1C0F50870();
  sub_1C0F50200();
  if (v20)
  {
    return sub_1C0F50870();
  }

LABEL_29:
  sub_1C0F50870();
  if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v16;
  }

  else
  {
    v13 = 0;
  }

  return MEMORY[0x1C68EA090](v13);
}

uint64_t VOMapsItem.hashValue.getter()
{
  sub_1C0F50850();
  VOMapsItem.hash(into:)(v1);
  return sub_1C0F50890();
}

uint64_t sub_1C0EF1538()
{
  sub_1C0F50850();
  VOMapsItem.hash(into:)(v1);
  return sub_1C0F50890();
}

uint64_t sub_1C0EF157C(uint64_t a1)
{
  sub_1C0F50850();
  VOMapsItem.hash(into:)(v2);
  return sub_1C0F50890();
}

void __swiftcall VOMapsItem.init(title:value:type:latitude:longitude:distanceFromMyLocation:mapWidthScale:mapHeightScale:)(AccessibilitySharedSupport::VOMapsItem *__return_ptr retstr, Swift::String_optional title, Swift::String_optional value, Swift::String_optional type, Swift::Double_optional latitude, Swift::Double_optional longitude, Swift::String_optional distanceFromMyLocation, Swift::String_optional mapWidthScale, Swift::String_optional mapHeightScale)
{
  retstr->title = title;
  retstr->value = value;
  retstr->type = type;
  retstr->latitude.value = *&latitude.is_nil;
  retstr->latitude.is_nil = longitude.is_nil;
  *(&retstr->longitude.value + 7) = distanceFromMyLocation.value._countAndFlagsBits;
  LOBYTE(retstr->headingDirection.value._countAndFlagsBits) = distanceFromMyLocation.value._object & 1;
  retstr->headingDirection.value._object = 0;
  retstr->distanceFromMyLocation.value._countAndFlagsBits = 0;
  *&retstr->distanceFromMyLocation.value._object = mapWidthScale;
  *&retstr->mapWidthScale.value._object = mapHeightScale;
  retstr->mapHeightScale.value._object = v9;
  retstr->mapHeadingDirection.value._countAndFlagsBits = v10;
  retstr->distance.value = 0.0;
  *&retstr->distance.is_nil = 0;
  retstr->mapHeadingDirection.value._object = 0;
  LOBYTE(retstr[1].title.value._countAndFlagsBits) = 1;
}

uint64_t sub_1C0EF1654(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE779A8, &qword_1C0F57888);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5, v6, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0EFF2AC();
  sub_1C0F508B0();
  v11[15] = 0;
  sub_1C0F50710();
  if (v1)
  {
    return (*(v4 + 8))(v9, v3);
  }

  v11[14] = 1;
  sub_1C0F50710();
  v11[13] = 2;
  sub_1C0F50710();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1C0EF17F4(uint64_t a1)
{
  if (v1[1])
  {
    sub_1C0F50870();
    sub_1C0F50200();
    if (v1[3])
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1C0F50870();
    if (v1[5])
    {
      goto LABEL_4;
    }

    return sub_1C0F50870();
  }

  sub_1C0F50870();
  if (!v1[3])
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1C0F50870();
  sub_1C0F50200();
  if (!v1[5])
  {
    return sub_1C0F50870();
  }

LABEL_4:
  sub_1C0F50870();

  return sub_1C0F50200();
}

uint64_t sub_1C0EF18D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x735F746867696568;
  v4 = 0xEC000000656C6163;
  if (v2 != 1)
  {
    v3 = 0x7461746E6569726FLL;
    v4 = 0xEB000000006E6F69;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x63735F6874646977;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000656C61;
  }

  v7 = 0x735F746867696568;
  v8 = 0xEC000000656C6163;
  if (*a2 != 1)
  {
    v7 = 0x7461746E6569726FLL;
    v8 = 0xEB000000006E6F69;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x63735F6874646977;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000656C61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C0F50790();
  }

  return v11 & 1;
}

uint64_t sub_1C0EF19F8()
{
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

uint64_t sub_1C0EF1AB4(uint64_t a1)
{
  sub_1C0F50200();
}

uint64_t sub_1C0EF1B5C(uint64_t a1)
{
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

unint64_t sub_1C0EF1C14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C0EFC8D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C0EF1C44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656C61;
  v4 = 0xEC000000656C6163;
  v5 = 0x735F746867696568;
  if (v2 != 1)
  {
    v5 = 0x7461746E6569726FLL;
    v4 = 0xEB000000006E6F69;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x63735F6874646977;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1C0EF1CBC()
{
  v1 = 0x735F746867696568;
  if (*v0 != 1)
  {
    v1 = 0x7461746E6569726FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x63735F6874646977;
  }
}

unint64_t sub_1C0EF1D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C0EFC8D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C0EF1D58(uint64_t a1)
{
  v2 = sub_1C0EFF2AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0EF1D94(uint64_t a1)
{
  v2 = sub_1C0EFF2AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0EF1DD0()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = v0[2];
  sub_1C0F50850();
  sub_1C0EF17F4(v3);
  return sub_1C0F50890();
}

uint64_t sub_1C0EF1E60(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = v1[2];
  sub_1C0F50850();
  sub_1C0EF17F4(v4);
  return sub_1C0F50890();
}

double sub_1C0EF1EB0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1C0EFC920(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1C0EF1F30(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1C0EFB904(v7, v8) & 1;
}

uint64_t sub_1C0EF1F78(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE779B0, &qword_1C0F57890);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5, v6, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0EFF300();
  sub_1C0F508B0();
  v11[15] = 0;
  sub_1C0F50710();
  if (v1)
  {
    return (*(v4 + 8))(v9, v3);
  }

  v11[14] = 1;
  sub_1C0F50710();
  v11[13] = 2;
  sub_1C0F50710();
  v11[12] = 3;
  sub_1C0F50710();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1C0EF2138(uint64_t a1)
{
  if (v1[1])
  {
    sub_1C0F50870();
    sub_1C0F50200();
    if (v1[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1C0F50870();
    if (v1[3])
    {
LABEL_3:
      sub_1C0F50870();
      sub_1C0F50200();
      if (v1[5])
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_1C0F50870();
      if (v1[7])
      {
        goto LABEL_5;
      }

      return sub_1C0F50870();
    }
  }

  sub_1C0F50870();
  if (!v1[5])
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_1C0F50870();
  sub_1C0F50200();
  if (!v1[7])
  {
    return sub_1C0F50870();
  }

LABEL_5:
  sub_1C0F50870();

  return sub_1C0F50200();
}

uint64_t sub_1C0EF2254()
{
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

uint64_t sub_1C0EF230C(uint64_t a1)
{
  sub_1C0F50200();
}

uint64_t sub_1C0EF23B0(uint64_t a1)
{
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

unint64_t sub_1C0EF2464@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C0EFCB24(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C0EF2494(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C746974;
  v4 = 0xE400000000000000;
  v5 = 1701869940;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000011;
    v4 = 0x80000001C0F65ED0;
  }

  if (*v1)
  {
    v3 = 0x65756C6176;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1C0EF2508()
{
  v1 = 0x656C746974;
  v2 = 1701869940;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x65756C6176;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C0EF2578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C0EFCB24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C0EF25AC(uint64_t a1)
{
  v2 = sub_1C0EFF300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0EF25E8(uint64_t a1)
{
  v2 = sub_1C0EFF300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0EF2624()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v2 = v0[3];
  v7 = v0[2];
  v8 = v2;
  sub_1C0F50850();
  sub_1C0EF2138(v4);
  return sub_1C0F50890();
}

uint64_t sub_1C0EF26B4(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = v1[3];
  v8 = v1[2];
  v9 = v3;
  sub_1C0F50850();
  sub_1C0EF2138(v5);
  return sub_1C0F50890();
}

double sub_1C0EF2704@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1C0EFCB70(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_1C0EF2784(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1C0EFBA14(v7, v8) & 1;
}

uint64_t sub_1C0EF27D0()
{
  v1 = v0[1];
  if (v1 < 2)
  {
    return 0;
  }

  v2 = v0[3];
  if (!v2)
  {
    return 0;
  }

  v3 = v0[2];
  v20 = v0[4];
  v21 = *v0;
  v22 = v0[5];

  v4 = sub_1C0F501A0();
  v5 = objc_opt_self();
  v6 = [v5 bundleWithIdentifier_];

  if (v6)
  {
    sub_1C0F4F640();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778D0, &qword_1C0F574A8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0F561C0;
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1C0EFEE24();
  *(v8 + 32) = v3;
  *(v8 + 40) = v2;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = v21;
  *(v8 + 80) = v1;
  v11 = sub_1C0F501C0();
  v13 = v12;

  MEMORY[0x1C68E9A50](v11, v13);

  if (v22)
  {

    MEMORY[0x1C68E9A50](32, 0xE100000000000000);
    v14 = sub_1C0F501A0();
    v15 = [v5 bundleWithIdentifier_];

    if (v15)
    {
      sub_1C0F4F640();
    }

    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C0F561D0;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = v10;
    *(v16 + 32) = v20;
    *(v16 + 40) = v22;
    v17 = sub_1C0F501C0();
    v19 = v18;

    MEMORY[0x1C68E9A50](v17, v19);
  }

  return 0;
}

uint64_t sub_1C0EF2AD4()
{
  v1 = v0[7];
  if (v1 != 1)
  {
    v2 = v0[6];
    v3 = v0[11];
    if (v3 && ((v5 = v0[8], v4 = v0[9], v7 = v0[12], v6 = v0[13], v0[10] == 0xD000000000000013) ? (v8 = v3 == 0x80000001C0F66780) : (v8 = 0), v8 || (sub_1C0F50790() & 1) != 0))
    {
      v9 = MEMORY[0x1E69E6158];
      if (v4)
      {
        v10 = HIBYTE(v4) & 0xF;
        if ((v4 & 0x2000000000000000) == 0)
        {
          v10 = v5 & 0xFFFFFFFFFFFFLL;
        }

        if (v10)
        {

          v11 = sub_1C0F501A0();
          v12 = [objc_opt_self() bundleWithIdentifier_];

          if (v12)
          {
            sub_1C0F4F640();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778D0, &qword_1C0F574A8);
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_1C0F561D0;
          v18 = MEMORY[0x1E69E6158];
          *(v17 + 56) = MEMORY[0x1E69E6158];
          *(v17 + 64) = sub_1C0EFEE24();
          *(v17 + 32) = v5;
          *(v17 + 40) = v4;
          v9 = v18;
          v19 = sub_1C0F501C0();
          v21 = v20;

          MEMORY[0x1C68E9A50](v19, v21);
        }
      }

      if (v6)
      {

        MEMORY[0x1C68E9A50](32, 0xE100000000000000);
        v22 = sub_1C0F501A0();
        v23 = [objc_opt_self() bundleWithIdentifier_];

        if (v23)
        {
          sub_1C0F4F640();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778D0, &qword_1C0F574A8);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1C0F561D0;
        *(v24 + 56) = v9;
        *(v24 + 64) = sub_1C0EFEE24();
        *(v24 + 32) = v7;
        *(v24 + 40) = v6;
LABEL_26:
        v25 = sub_1C0F501C0();
        v27 = v26;

        MEMORY[0x1C68E9A50](v25, v27);
      }
    }

    else if (v1)
    {
      v13 = HIBYTE(v1) & 0xF;
      if ((v1 & 0x2000000000000000) == 0)
      {
        v13 = v2 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {

        v14 = sub_1C0F501A0();
        v15 = [objc_opt_self() bundleWithIdentifier_];

        if (v15)
        {
          sub_1C0F4F640();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778D0, &qword_1C0F574A8);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1C0F561D0;
        *(v16 + 56) = MEMORY[0x1E69E6158];
        *(v16 + 64) = sub_1C0EFEE24();
        *(v16 + 32) = v2;
        *(v16 + 40) = v1;
        goto LABEL_26;
      }
    }
  }

  return 0;
}

uint64_t sub_1C0EF2F4C()
{
  v95 = 0;
  v96 = 0xE000000000000000;
  v1 = *(v0 + 112);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  v3 = sub_1C0F501A0();
  v85 = objc_opt_self();
  v4 = [v85 bundleWithIdentifier_];

  if (!v2)
  {
    v9 = 0xE000000000000000;
    if (v4)
    {
      v10 = sub_1C0F4F640();
      v9 = v11;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x1C68E9A50](v10, v9);

    return v95;
  }

  v5 = 0xE000000000000000;
  if (v4)
  {
    v6 = sub_1C0F4F640();
    v5 = v7;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1C68E9A50](v6, v5);

  result = sub_1C0EFCE70(MEMORY[0x1E69E7CC0]);
  v12 = 0;
  v92 = result;
  v93 = v13;
  v94 = v14;
  v15 = v1 + 32;
  v83 = v1 + 32;
  do
  {
    if (v12 == v2)
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      return result;
    }

    v16 = (v15 + 176 * v12);
    v17 = v16[1];
    v18 = v16[13];
    if (v17)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v86 = *v16;
      v20 = v16[12];
      v22 = v92;
      v21 = v93;
      v23 = v94;
      v24 = *(v93 + 16);
      if (v92)
      {

        v25 = sub_1C0EFA52C(v20, v18, v21 + 32, v24, (v22 + 16), v22 + 32);
        v27 = v26;

        if ((v27 & 1) == 0)
        {
          if ((v25 & 0x8000000000000000) != 0)
          {
            goto LABEL_86;
          }

LABEL_31:
          if (v25 >= *(v23 + 16))
          {
            goto LABEL_87;
          }

          goto LABEL_32;
        }
      }

      else
      {
        if (v24)
        {
          v25 = 0;
          v28 = (v93 + 40);
          while (1)
          {
            v29 = *(v28 - 1) == v20 && v18 == *v28;
            if (v29 || (sub_1C0F50790() & 1) != 0)
            {
              break;
            }

            ++v25;
            v28 += 2;
            if (v24 == v25)
            {
              goto LABEL_28;
            }
          }

          goto LABEL_31;
        }

LABEL_28:
      }

      sub_1C0EF384C(MEMORY[0x1E69E7CC0], v20, v18);
LABEL_32:
      v31 = sub_1C0EF3A58(&v88, v20, v18);
      v32 = *v30;
      if (*v30)
      {
        v33 = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v33 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = sub_1C0F22330(0, *(v32 + 2) + 1, 1, v32);
          *v33 = v32;
        }

        v36 = *(v32 + 2);
        v35 = *(v32 + 3);
        if (v36 >= v35 >> 1)
        {
          v32 = sub_1C0F22330((v35 > 1), v36 + 1, 1, v32);
          *v33 = v32;
        }

        *(v32 + 2) = v36 + 1;
        v37 = &v32[16 * v36];
        *(v37 + 4) = v86;
        *(v37 + 5) = v17;
      }

      else
      {
      }

      (v31)(&v88, 0);

      v15 = v83;
    }

    ++v12;
  }

  while (v12 != v2);
  v38 = v93;
  v39 = *(v93 + 16);
  if (v39 < 0x10)
  {

    v41 = v39;
    if (!v39)
    {
      goto LABEL_73;
    }

LABEL_42:
    v76 = v39;
    v42 = 0;
    v84 = v40 + 32;
    v43 = v92;
    v79 = v94;
    v77 = (v38 + 40);
    v78 = v94 + 32;
    v81 = v41;
    v82 = v38;
    v80 = v92;
    while (1)
    {
      v50 = (v84 + 16 * v42);
      v51 = *v50;
      v52 = v50[1];
      v53 = *(v38 + 16);
      if (!v43)
      {
        break;
      }

      v54 = sub_1C0EFA52C(v51, v52, v38 + 32, v53, (v43 + 16), v43 + 32);
      v56 = v55;

      v57 = MEMORY[0x1E69E7CC0];
      if ((v56 & 1) == 0)
      {
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_84;
        }

LABEL_58:
        if (v54 >= *(v79 + 16))
        {
          goto LABEL_85;
        }

        v57 = *(v78 + 8 * v54);
        goto LABEL_60;
      }

LABEL_61:
      v88 = v51;
      v89 = v52;
      v90 = 44;
      v91 = 0xE100000000000000;
      sub_1C0EED51C();
      v60 = sub_1C0F50510();

      v61 = v60[2];
      if (v61)
      {
        v62 = v60[5];
        v87 = v60[4];

        if (v61 == 1)
        {
          v63 = 0;
          v64 = 0xE000000000000000;
        }

        else
        {
          v63 = v60[6];
          v64 = v60[7];
        }
      }

      else
      {
        v87 = 0;
        v63 = 0;
        v62 = 0xE000000000000000;
        v64 = 0xE000000000000000;
      }

      v65 = v57[2];
      if (v65 == 1)
      {
        v66 = v57[4];
        v67 = v57[5];
      }

      else
      {
        v88 = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778E8, &qword_1C0F574E0);
        sub_1C0EFEDC0();
        v66 = sub_1C0F50180();
        v67 = v68;
      }

      MEMORY[0x1C68E9A50](32, 0xE100000000000000);
      v69 = sub_1C0F501A0();
      v70 = [v85 bundleWithIdentifier_];

      if (v70)
      {
        sub_1C0F4F640();
      }

      ++v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778D0, &qword_1C0F574A8);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1C0F56F80;
      *(v44 + 56) = MEMORY[0x1E69E6530];
      *(v44 + 64) = MEMORY[0x1E69E65A8];
      *(v44 + 32) = v65;
      v45 = MEMORY[0x1E69E6158];
      *(v44 + 96) = MEMORY[0x1E69E6158];
      v46 = sub_1C0EFEE24();
      *(v44 + 72) = v63;
      *(v44 + 80) = v64;
      *(v44 + 136) = v45;
      *(v44 + 144) = v46;
      *(v44 + 104) = v46;
      *(v44 + 112) = v87;
      *(v44 + 120) = v62;
      *(v44 + 176) = v45;
      *(v44 + 184) = v46;
      *(v44 + 152) = v66;
      *(v44 + 160) = v67;
      v47 = sub_1C0F501C0();
      v49 = v48;

      MEMORY[0x1C68E9A50](v47, v49);

      v38 = v82;
      v43 = v80;
      if (v42 == v81)
      {

        v39 = v76;
        goto LABEL_74;
      }
    }

    if (v53)
    {
      v54 = 0;
      v58 = v77;
      while (1)
      {
        v59 = *(v58 - 1) == v51 && *v58 == v52;
        if (v59 || (sub_1C0F50790() & 1) != 0)
        {
          break;
        }

        ++v54;
        v58 += 2;
        if (v53 == v54)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_58;
    }

LABEL_56:
    v57 = MEMORY[0x1E69E7CC0];
LABEL_60:

    goto LABEL_61;
  }

  sub_1C0EFA678(v93, v93 + 32, 0, 0x1FuLL);
  v41 = *(v40 + 16);
  if (v41)
  {
    goto LABEL_42;
  }

LABEL_73:

LABEL_74:
  if (v39 >= 0x10)
  {
    v71 = sub_1C0F501A0();
    v72 = [v85 bundleWithIdentifier_];

    v73 = 0xE000000000000000;
    if (v72)
    {
      v74 = sub_1C0F4F640();
      v73 = v75;
    }

    else
    {
      v74 = 0;
    }

    v88 = 32;
    v89 = 0xE100000000000000;
    MEMORY[0x1C68E9A50](v74, v73);

    MEMORY[0x1C68E9A50](v88, v89);
  }

  return v95;
}

uint64_t sub_1C0EF384C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v8 + 16);
  if (*v3)
  {

    v10 = sub_1C0EFA52C(a2, a3, v8 + 32, v9, (v7 + 16), v7 + 32);
    v12 = v11;
    v9 = v13;

    if ((v12 & 1) == 0)
    {

      if (!a1)
      {
        goto LABEL_28;
      }

LABEL_22:
      v22 = v3[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C0EFA504(v22);
        v22 = result;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v10 < v22[2])
      {
        v22[v10 + 4] = a1;

        v3[2] = v22;
        return result;
      }

      __break(1u);
      return result;
    }
  }

  else if (v9)
  {
    v10 = 0;
    v14 = (v8 + 40);
    while (1)
    {
      v15 = *(v14 - 1) == a2 && *v14 == a3;
      if (v15 || (sub_1C0F50790() & 1) != 0)
      {
        break;
      }

      ++v10;
      v14 += 2;
      if (v9 == v10)
      {
        v9 = 0;
        goto LABEL_14;
      }
    }

    if (!a1)
    {
      v9 = 0;
LABEL_28:
      sub_1C0EF9738(v10, v9);

      sub_1C0EF98A0(v10);
LABEL_29:
    }

    goto LABEL_22;
  }

LABEL_14:
  if (!a1)
  {
    goto LABEL_29;
  }

  sub_1C0EF95C0(a2, a3, v9);

  v18 = v3[2];
  v16 = v3 + 2;
  v17 = v18;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v18;
  if ((result & 1) == 0)
  {
    result = sub_1C0EF8EAC(0, *(v17 + 16) + 1, 1);
    v17 = *v16;
  }

  v21 = *(v17 + 16);
  v20 = *(v17 + 24);
  if (v21 >= v20 >> 1)
  {
    result = sub_1C0EF8EAC((v20 > 1), v21 + 1, 1);
    v17 = *v16;
  }

  *(v17 + 16) = v21 + 1;
  *(v17 + 8 * v21 + 32) = a1;
  *v16 = v17;
  return result;
}

void (*sub_1C0EF3A58(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[2] = a3;
  v7[3] = v3;
  *v7 = 0;
  v7[1] = a2;
  v9 = sub_1C0EF99AC(a2, a3, v7);
  *(v8 + 48) = v10;
  v8[4] = v9;
  v8[5] = v11;
  return sub_1C0EF3AF4;
}

void sub_1C0EF3AF4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if ((*a1)[6])
  {
    if (v2)
    {
      v3 = v1[5];
      v5 = v1[2];
      v4 = v1[3];
      v6 = v1[1];

      sub_1C0EF95C0(v6, v5, v3);
      v9 = *(v4 + 16);
      v7 = (v4 + 16);
      v8 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v7 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C0EF8EAC(0, *(v8 + 16) + 1, 1);
        v8 = *v7;
      }

      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_1C0EF8EAC((v11 > 1), v12 + 1, 1);
        v13 = v12 + 1;
        v8 = *v7;
      }

      *(v8 + 16) = v13;
      *(v8 + 8 * v12 + 32) = v2;
      *v7 = v8;
    }
  }

  else
  {
    v14 = v1[3];
    v17 = *(v14 + 16);
    v15 = (v14 + 16);
    v16 = v17;
    if (v2)
    {

      v18 = swift_isUniquelyReferenced_nonNull_native();
      *v15 = v16;
      if ((v18 & 1) == 0)
      {
        sub_1C0EF8EAC(0, *(v16 + 16) + 1, 1);
        v16 = *v15;
      }

      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
      v21 = v19 + 1;
      if (v19 >= v20 >> 1)
      {
        v30 = *(v16 + 16);
        v31 = v19 + 1;
        sub_1C0EF8EAC((v20 > 1), v19 + 1, 1);
        v21 = v31;
        v19 = v30;
        v16 = *v15;
      }

      v22 = v1[4];
      *(v16 + 16) = v21;
      *(v16 + 8 * v19 + 32) = v2;
      *v15 = v16;
      sub_1C0EF9B0C(v22, v19);
    }

    else
    {
      v23 = v1[4];
      if (v23 < *(v16 + 16))
      {
        v24 = sub_1C0EF98A0(v23);
        v25 = *v15;
        v26 = swift_isUniquelyReferenced_nonNull_native();
        *v15 = v25;
        if ((v26 & 1) == 0)
        {
          sub_1C0EF8EAC(0, *(v25 + 16) + 1, 1);
          v25 = *v15;
        }

        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        v29 = v28 + 1;
        if (v28 >= v27 >> 1)
        {
          sub_1C0EF8EAC((v27 > 1), v28 + 1, 1);
          v29 = v28 + 1;
          v25 = *v15;
        }

        *(v25 + 16) = v29;
        *(v25 + 8 * v28 + 32) = v24;
        *v15 = v25;
        v23 = v1[4];
      }

      sub_1C0EF9738(v23, v1[5]);
    }
  }

  free(v1);
}

uint64_t sub_1C0EF3D20(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77890, &qword_1C0F57488);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7, v8, v9);
  v11 = &v18[-v10];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0EFE910();
  sub_1C0F508B0();
  v12 = v3[1];
  v22 = *v3;
  v23 = v12;
  v24 = v3[2];
  LOBYTE(v20[0]) = 0;
  sub_1C0EFEA98();
  sub_1C0F50730();
  if (!v2)
  {
    v13 = v3[3];
    v14 = v3[5];
    v27 = v3[4];
    v28 = v14;
    v15 = v3[5];
    v29 = v3[6];
    v22 = v13;
    v23 = v27;
    v16 = v3[3];
    v24 = v15;
    v25 = v3[6];
    v26 = v16;
    v21 = 1;
    sub_1C0EED570(&v26, v20, &qword_1EBE77870, &qword_1C0F57478);
    sub_1C0EFEAEC();
    sub_1C0F50730();
    v20[0] = v22;
    v20[1] = v23;
    v20[2] = v24;
    v20[3] = v25;
    sub_1C0EEFAA8(v20, &qword_1EBE77870, &qword_1C0F57478);
    v19 = *(v3 + 14);
    v18[7] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77878, &qword_1C0F57480);
    sub_1C0EFEB40(&qword_1EBE778A8, sub_1C0EFEBB8, MEMORY[0x1E69E6300]);
    sub_1C0F50730();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1C0EF4008(uint64_t a1)
{
  v3 = v1[1];
  if (v3 == 1)
  {
    sub_1C0F50870();
  }

  else
  {
    v44 = *v1;
    v45 = v3;
    v4 = *(v1 + 2);
    v46 = *(v1 + 1);
    v47 = v4;
    sub_1C0F50870();
    sub_1C0EF17F4(a1);
  }

  v5 = v1[7];
  if (v5 == 1)
  {
    sub_1C0F50870();
    v6 = v1[14];
    if (v6)
    {
      goto LABEL_6;
    }

    return sub_1C0F50870();
  }

  v23 = v1[6];
  v24 = *(v1 + 5);
  v41 = *(v1 + 4);
  v42 = v24;
  v43 = *(v1 + 6);
  v39 = v23;
  v40 = v5;
  sub_1C0F50870();
  sub_1C0EF2138(a1);
  v6 = v1[14];
  if (!v6)
  {
    return sub_1C0F50870();
  }

LABEL_6:
  sub_1C0F50870();
  v7 = *(v6 + 16);
  result = MEMORY[0x1C68EA070](v7);
  if (v7)
  {
    v9 = (v6 + 32);
    do
    {
      v10 = *v9;
      v11 = v9[2];
      v25[1] = v9[1];
      v25[2] = v11;
      v25[0] = v10;
      v12 = v9[3];
      v13 = v9[4];
      v14 = v9[6];
      v25[5] = v9[5];
      v25[6] = v14;
      v25[3] = v12;
      v25[4] = v13;
      v15 = v9[7];
      v16 = v9[8];
      v17 = v9[9];
      *&v26[9] = *(v9 + 153);
      v25[8] = v16;
      *v26 = v17;
      v25[7] = v15;
      v18 = v9[9];
      v37 = v9[8];
      v38[0] = v18;
      *(v38 + 9) = *(v9 + 153);
      v19 = v9[5];
      v33 = v9[4];
      v34 = v19;
      v20 = v9[7];
      v35 = v9[6];
      v36 = v20;
      v21 = v9[1];
      v29 = *v9;
      v30 = v21;
      v22 = v9[3];
      v31 = v9[2];
      v32 = v22;
      sub_1C0EF1234(v25, v27);
      VOMapsItem.hash(into:)(a1);
      v27[8] = v37;
      v28[0] = v38[0];
      *(v28 + 9) = *(v38 + 9);
      v27[4] = v33;
      v27[5] = v34;
      v27[6] = v35;
      v27[7] = v36;
      v27[0] = v29;
      v27[1] = v30;
      v27[2] = v31;
      v27[3] = v32;
      result = sub_1C0EF1204(v27);
      v9 += 11;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1C0EF41DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7461636F6C5F796DLL;
  v4 = 0xEB000000006E6F69;
  if (v2 != 1)
  {
    v3 = 0x6E5F736563616C70;
    v4 = 0xEE00656D5F726165;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6F666E695F70616DLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x7461636F6C5F796DLL;
  v8 = 0xEB000000006E6F69;
  if (*a2 != 1)
  {
    v7 = 0x6E5F736563616C70;
    v8 = 0xEE00656D5F726165;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6F666E695F70616DLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C0F50790();
  }

  return v11 & 1;
}

uint64_t sub_1C0EF4308()
{
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

uint64_t sub_1C0EF43C0(uint64_t a1)
{
  sub_1C0F50200();
}

uint64_t sub_1C0EF4464(uint64_t a1)
{
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

unint64_t sub_1C0EF4518@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C0EFD048(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C0EF4548(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEB000000006E6F69;
  v5 = 0x7461636F6C5F796DLL;
  if (v2 != 1)
  {
    v5 = 0x6E5F736563616C70;
    v4 = 0xEE00656D5F726165;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F666E695F70616DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1C0EF45BC()
{
  v1 = 0x7461636F6C5F796DLL;
  if (*v0 != 1)
  {
    v1 = 0x6E5F736563616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F666E695F70616DLL;
  }
}

unint64_t sub_1C0EF462C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C0EFD048(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C0EF4654(uint64_t a1)
{
  v2 = sub_1C0EFE910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0EF4690(uint64_t a1)
{
  v2 = sub_1C0EFE910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0EF46CC()
{
  v1 = v0[5];
  v10 = v0[4];
  v11 = v1;
  v12 = v0[6];
  v13 = *(v0 + 14);
  v2 = v0[1];
  v6 = *v0;
  v7 = v2;
  v3 = v0[3];
  v8 = v0[2];
  v9 = v3;
  sub_1C0F50850();
  sub_1C0EF4008(v5);
  return sub_1C0F50890();
}

uint64_t sub_1C0EF4790(uint64_t a1)
{
  v2 = v1[5];
  v11 = v1[4];
  v12 = v2;
  v13 = v1[6];
  v14 = *(v1 + 14);
  v3 = v1[1];
  v7 = *v1;
  v8 = v3;
  v4 = v1[3];
  v9 = v1[2];
  v10 = v4;
  sub_1C0F50850();
  sub_1C0EF4008(v6);
  return sub_1C0F50890();
}

double sub_1C0EF47FC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1C0EFD094(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

BOOL sub_1C0EF48B8(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_1C0EFC0DC(v12, v14);
}

unint64_t sub_1C0EF493C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77938, &qword_1C0F57518);
    v2 = sub_1C0F50650();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_1C0EFEECC(&v22, v24);
        sub_1C0EFEECC(v24, v25);
        sub_1C0EFEECC(v25, &v23);
        result = sub_1C0EFA930(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_1C0EFEECC(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_1C0EFEECC(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C0EF4B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a7;
  v8[29] = a8;
  v8[26] = a5;
  v8[27] = a6;
  v8[25] = a4;
  v9 = sub_1C0F4F750();
  v8[30] = v9;
  v8[31] = *(v9 - 8);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C0EF4C9C, 0, 0);
}

uint64_t sub_1C0EF4C9C()
{
  v1 = NSTemporaryDirectory();
  sub_1C0F501B0();

  sub_1C0F4F6E0();

  *(v0 + 280) = sub_1C0F502F0();
  *(v0 + 288) = sub_1C0F502E0();
  v3 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EF4DAC, v3, v2);
}

uint64_t sub_1C0EF4DAC()
{

  return MEMORY[0x1EEE6DFA0](sub_1C0EF4E40, 0, 0);
}

uint64_t sub_1C0EF4E40(uint64_t a1)
{
  *(v1 + 296) = sub_1C0F502E0();
  v3 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EF4F00, v3, v2);
}

uint64_t sub_1C0EF4F00()
{

  return MEMORY[0x1EEE6DFA0](sub_1C0EF4F94, 0, 0);
}

uint64_t sub_1C0EF4F94()
{
  v26 = v0;
  v25[1] = *MEMORY[0x1E69E9840];
  sub_1C0F4F710();
  v1 = sub_1C0F50460();
  v2 = AXLogVoiceOverMapsAI();
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  if (os_log_type_enabled(v2, v1))
  {
    v5 = v0[25];
    v4 = v0[26];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1C0EE9754(v5, v4, v25);
    _os_log_impl(&dword_1C0E8A000, v3, v1, "[VOMapsManager] response: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1C68EB070](v7, -1, -1);
    MEMORY[0x1C68EB070](v6, -1, -1);
  }

  v8 = sub_1C0F50460();
  v9 = AXLogVoiceOverMapsAI();
  if (!v9)
  {
LABEL_12:
    __break(1u);
  }

  v10 = v9;
  (*(v0[31] + 16))(v0[32], v0[33], v0[30]);
  v11 = os_log_type_enabled(v10, v8);
  v13 = v0[31];
  v12 = v0[32];
  v14 = v0[30];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25[0] = v16;
    *v15 = 136315138;
    v17 = sub_1C0F4F6D0();
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_1C0EE9754(v17, v19, v25);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1C0E8A000, v10, v8, "[VOMapsManager] save response in background thread in %s.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1C68EB070](v16, -1, -1);
    MEMORY[0x1C68EB070](v15, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778D8, &qword_1C0F574C8);
  inited = swift_initStackObject();
  v0[38] = inited;
  *(inited + 16) = xmmword_1C0F56F90;
  v0[39] = sub_1C0F502E0();
  v23 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EF52B0, v23, v22);
}

uint64_t sub_1C0EF52B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1C0EF5344, 0, 0);
}

uint64_t sub_1C0EF5344(uint64_t a1)
{
  *(v1 + 320) = sub_1C0F502E0();
  v3 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EF5404, v3, v2);
}

uint64_t sub_1C0EF5404()
{

  return MEMORY[0x1EEE6DFA0](sub_1C0EF5498, 0, 0);
}

uint64_t sub_1C0EF5498(uint64_t a1)
{
  v2 = v1[38];
  v3 = v1[27];
  v2[4] = 0x6D614E6C65646F6DLL;
  v2[5] = 0xE900000000000065;
  v2[9] = MEMORY[0x1E69E6530];
  v2[6] = v3;
  v1[41] = sub_1C0F502E0();
  v5 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EF558C, v5, v4);
}

uint64_t sub_1C0EF558C()
{

  return MEMORY[0x1EEE6DFA0](sub_1C0EF5620, 0, 0);
}

uint64_t sub_1C0EF5620(uint64_t a1)
{
  *(v1 + 336) = sub_1C0F502E0();
  v3 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EF56E0, v3, v2);
}

uint64_t sub_1C0EF56E0()
{

  return MEMORY[0x1EEE6DFA0](sub_1C0EF5774, 0, 0);
}

uint64_t sub_1C0EF5774()
{
  v1 = v0[38];
  v3 = v0[28];
  v2 = v0[29];
  v1[10] = 0x74706D6F7270;
  v1[11] = 0xE600000000000000;
  v1[15] = MEMORY[0x1E69E6158];
  v1[12] = v3;
  v1[13] = v2;

  v0[43] = sub_1C0F502E0();
  v5 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EF5864, v5, v4);
}

uint64_t sub_1C0EF5864()
{

  return MEMORY[0x1EEE6DFA0](sub_1C0EF58F8, 0, 0);
}

uint64_t sub_1C0EF58F8(uint64_t a1)
{
  *(v1 + 352) = sub_1C0F502E0();
  v3 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EF59B8, v3, v2);
}

uint64_t sub_1C0EF59B8()
{

  return MEMORY[0x1EEE6DFA0](sub_1C0EF5A4C, 0, 0);
}

NSObject *sub_1C0EF5A4C()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v1[16] = 0x65736E6F70736572;
  v1[17] = 0xE800000000000000;
  v1[21] = MEMORY[0x1E69E6158];
  v1[18] = v3;
  v1[19] = v2;

  sub_1C0F22A2C(v1);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778E0, &unk_1C0F574D0);
  swift_arrayDestroy();
  v4 = objc_opt_self();
  v5 = sub_1C0F50150();

  *(v0 + 192) = 0;
  v6 = [v4 dataWithPropertyList:v5 format:100 options:0 error:v0 + 192];

  v7 = *(v0 + 192);
  if (v6)
  {
    v8 = sub_1C0F4F7B0();
    v10 = v9;

    sub_1C0F4F7C0();
    v24 = *(v0 + 264);
    v23 = *(v0 + 272);
    v25 = *(v0 + 240);
    v26 = *(v0 + 248);
    sub_1C0EFED6C(v8, v10);
    v27 = *(v26 + 8);
    v27(v24, v25);
    v27(v23, v25);
  }

  else
  {
    v11 = v7;
    v12 = sub_1C0F4F6B0();

    swift_willThrow();
    v13 = *(v0 + 272);
    v14 = *(v0 + 240);
    v15 = *(*(v0 + 248) + 8);
    v15(*(v0 + 264), v14);
    v15(v13, v14);
    v16 = sub_1C0F50470();
    result = AXLogVoiceOverMapsAI();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v18 = result;
    if (os_log_type_enabled(result, v16))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v12;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1C0E8A000, v18, v16, "[VOMapsManager] error saving output. %@", v19, 0xCu);
      sub_1C0EEFAA8(v20, &qword_1EBE776D0, &qword_1C0F56E10);
      MEMORY[0x1C68EB070](v20, -1, -1);
      MEMORY[0x1C68EB070](v19, -1, -1);
    }

    else
    {
    }
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1C0EF5DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  MEMORY[0x1EEE9AC00](v9 - 8, v10, v11, v12);
  v14 = v28 - v13;
  sub_1C0EED570(a3, v28 - v13, &qword_1EBE773B0, &qword_1C0F57F40);
  v15 = sub_1C0F50320();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    sub_1C0EEFAA8(v14, &qword_1EBE773B0, &qword_1C0F57F40);
  }

  else
  {
    sub_1C0F50310();
    (*(v16 + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_1C0F502B0();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_1C0F501E0() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

id sub_1C0EF606C()
{
  result = [objc_allocWithZone(type metadata accessor for VOMapsManager()) init];
  qword_1EBE77800 = result;
  return result;
}

id VOMapsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static VOMapsManager.sharedInstance.getter()
{
  if (qword_1EBE77188 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBE77800;

  return v1;
}

uint64_t sub_1C0EF612C(uint64_t a1)
{
  v2[147] = v1;
  v2[146] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  v2[148] = swift_task_alloc();
  sub_1C0F502F0();
  v2[149] = sub_1C0F502E0();
  v4 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EF6200, v4, v3);
}

void sub_1C0EF6200()
{
  v169 = v0;
  v1 = *(v0 + 1176);
  v2 = sub_1C0EFD4F4();
  v142 = OBJC_IVAR____TtC26AccessibilitySharedSupport13VOMapsManager_inputFileDict;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport13VOMapsManager_inputFileDict) = v2;

  v4 = sub_1C0EFC798(v3);

  v5 = *(v4 + 16);
  v141 = v1;
  if (v5)
  {
    v6 = sub_1C0EF7370(v5, 0);
    v7 = sub_1C0EFB754(&v159, v6 + 32, v5, v4);
    sub_1C0EFD8B0(v159);
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v154 = *(v6 + 2);
  if (v154)
  {
    v8 = 0;
    v143 = (v144 + 368);
    v138 = (v144 + 1016);
    v9 = 32;
    v152 = v6;
    do
    {
      if (v8 >= *(v6 + 2))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v10 = *&v6[v9];
      v11 = *&v6[v9 + 16];
      *(v144 + 48) = *&v6[v9 + 32];
      v12 = *&v6[v9 + 48];
      v13 = *&v6[v9 + 64];
      v14 = *&v6[v9 + 96];
      *(v144 + 96) = *&v6[v9 + 80];
      *(v144 + 112) = v14;
      *(v144 + 64) = v12;
      *(v144 + 80) = v13;
      v15 = *&v6[v9 + 112];
      v16 = *&v6[v9 + 128];
      v17 = *&v6[v9 + 144];
      *(v144 + 169) = *&v6[v9 + 153];
      *(v144 + 144) = v16;
      *(v144 + 160) = v17;
      *(v144 + 128) = v15;
      *(v144 + 16) = v10;
      *(v144 + 32) = v11;
      v156 = *(v144 + 56);
      if (v156)
      {
        v18 = *(v144 + 160);
        v19 = *(v144 + 144);
        v147 = *(v144 + 168);
        v148 = *(v144 + 152);
        v20 = *(v144 + 128);
        v21 = *(v144 + 96);
        v149 = *(v144 + 104);
        v150 = *(v144 + 136);
        v22 = *(v144 + 48);
        v151 = *(v144 + 40);
        v23 = *(v144 + 16);
        v24 = *(v144 + 32);
        v145 = *(v144 + 24);
        sub_1C0EF1234(v144 + 16, v144 + 192);
        if (sub_1C0F50260())
        {
          v155 = v23;
          v135 = v20;
          v140 = v24;
          v139 = v19;
          v31 = v18;

          v157 = *(v144 + 16);
          v158 = *(v144 + 32);
          v32 = *(v144 + 144);
          v163 = *(v144 + 128);
          v164 = v32;
          v165[0] = *(v144 + 160);
          *(v165 + 9) = *(v144 + 169);
          v33 = *(v144 + 80);
          v159 = *(v144 + 64);
          v160 = v33;
          v34 = *(v144 + 112);
          v161 = *(v144 + 96);
          v162 = v34;

          v35 = sub_1C0F50210();
          v36 = sub_1C0EFD8B8(v35, v22, v156);
          v38 = v37;
          v40 = v39;
          v42 = v41;

          v137 = MEMORY[0x1C68E9A00](v36, v38, v40, v42);
          v44 = v43;

          v136 = v44;

          v45 = *(v152 + 2);
          v134 = v31;
          if (v45)
          {
            v46 = 0;
            v47 = v152 + 32;
            v48 = MEMORY[0x1E69E7CC0];
            v49 = v23;
            v50 = v145;
            v51 = v144;
            while (2)
            {
              v52 = &v47[176 * v46];
              v53 = v46;
LABEL_22:
              if (v53 >= v45)
              {
                goto LABEL_67;
              }

              v55 = *v52;
              v56 = *(v52 + 2);
              *(v144 + 384) = *(v52 + 1);
              *(v144 + 400) = v56;
              *v143 = v55;
              v57 = *(v52 + 3);
              v58 = *(v52 + 4);
              v59 = *(v52 + 6);
              *(v144 + 448) = *(v52 + 5);
              *(v144 + 464) = v59;
              *(v144 + 416) = v57;
              *(v144 + 432) = v58;
              v60 = *(v52 + 7);
              v61 = *(v52 + 8);
              v62 = *(v52 + 9);
              *(v144 + 521) = *(v52 + 153);
              *(v144 + 496) = v61;
              *(v144 + 512) = v62;
              *(v144 + 480) = v60;
              v46 = v53 + 1;
              if (__OFADD__(v53, 1))
              {
                goto LABEL_68;
              }

              v63 = v51[47];
              if (v63)
              {
                if (!v50)
                {
                  goto LABEL_31;
                }

                if (v51[46] != v49 || v63 != v50)
                {
                  v64 = sub_1C0F50790();
                  v51 = v144;
                  v50 = v145;
                  v49 = v155;
                  if ((v64 & 1) == 0)
                  {
                    goto LABEL_31;
                  }
                }
              }

              else if (v50)
              {
LABEL_31:
                v65 = v51[51];
                if (!v65 || (v51[50] != 1684107122 || v65 != 0xE400000000000000) && (v54 = sub_1C0F50790(), v51 = v144, v50 = v145, v49 = v155, (v54 & 1) == 0))
                {
                  sub_1C0EF1234(v143, (v51 + 68));
                  v66 = v48;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v167 = v48;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1C0EF8ECC(0, *(v48 + 2) + 1, 1);
                    v66 = v167;
                  }

                  v69 = *(v66 + 16);
                  v68 = *(v66 + 24);
                  v51 = v144;
                  if (v69 >= v68 >> 1)
                  {
                    sub_1C0EF8ECC((v68 > 1), v69 + 1, 1);
                    v51 = v144;
                    v66 = v167;
                  }

                  *(v66 + 16) = v69 + 1;
                  v48 = v66;
                  v70 = (v66 + 176 * v69);
                  v71 = *v143;
                  v72 = *(v144 + 400);
                  v70[3] = *(v144 + 384);
                  v70[4] = v72;
                  v70[2] = v71;
                  v73 = *(v144 + 416);
                  v74 = *(v144 + 432);
                  v75 = *(v144 + 464);
                  v70[7] = *(v144 + 448);
                  v70[8] = v75;
                  v70[5] = v73;
                  v70[6] = v74;
                  v76 = *(v144 + 480);
                  v77 = *(v144 + 496);
                  v78 = *(v144 + 512);
                  *(v70 + 185) = *(v144 + 521);
                  v70[10] = v77;
                  v70[11] = v78;
                  v70[9] = v76;
                  v49 = v155;
                  v47 = v152 + 32;
                  v50 = v145;
                  if (v46 != v45)
                  {
                    continue;
                  }

                  goto LABEL_42;
                }
              }

              break;
            }

            ++v53;
            v52 += 176;
            if (v46 == v45)
            {
              goto LABEL_42;
            }

            goto LABEL_22;
          }

          v48 = MEMORY[0x1E69E7CC0];
LABEL_42:

          v79 = *(v48 + 2);
          if (!v79)
          {
            v85 = v139;
            v84 = v21;
            v86 = v140;
LABEL_55:
            v166 = v48;

            sub_1C0EFAA60(&v166);
            v114 = v166;
            *(v144 + 1016) = v135;
            *(v144 + 1024) = v150;
            *(v144 + 1032) = v85;
            *(v144 + 1040) = v148;
            *(v144 + 1048) = v134;
            *(v144 + 1056) = v147;
            *(v144 + 1064) = v155;
            *(v144 + 1072) = v145;
            *(v144 + 1080) = v86;
            *(v144 + 1088) = v151;
            *(v144 + 1096) = v137;
            *(v144 + 1104) = v136;
            *(v144 + 1112) = v84;
            *(v144 + 1120) = v149;
            *(v144 + 1128) = v114;
            v115 = *v138;
            v116 = *(v144 + 1032);
            v117 = *(v144 + 1064);
            *(v144 + 928) = *(v144 + 1048);
            *(v144 + 944) = v117;
            *(v144 + 896) = v115;
            *(v144 + 912) = v116;
            v118 = *(v144 + 1080);
            v119 = *(v144 + 1096);
            v120 = *(v144 + 1112);
            *(v144 + 1008) = *(v144 + 1128);
            *(v144 + 976) = v119;
            *(v144 + 992) = v120;
            *(v144 + 960) = v118;
            v167 = sub_1C0EF27D0();
            v168 = v121;
            MEMORY[0x1C68E9A50](32, 0xE100000000000000);
            v122 = sub_1C0EF2AD4();
            MEMORY[0x1C68E9A50](v122);

            MEMORY[0x1C68E9A50](32, 0xE100000000000000);
            v123 = sub_1C0EF2F4C();
            MEMORY[0x1C68E9A50](v123);

            sub_1C0EFD968(v138);
            v28 = v167;
            v29 = v168;
            if (AXSSIsAppleInternalBuild())
            {
              v124 = v141;
              v125 = *(v141 + v142);
              if (v125 && *(v125 + 16))
              {

                v126 = sub_1C0EFA930(0x7074754F65766173, 0xEA00000000007475);
                if (v127)
                {
                  sub_1C0EED190(*(v125 + 56) + 32 * v126, v144 + 1136);

                  if (swift_dynamicCast() & 1) != 0 && (*(v144 + 185))
                  {
                    v128 = *(v144 + 1184);

                    sub_1C0F50300();
                    v129 = sub_1C0F50320();
                    (*(*(v129 - 8) + 56))(v128, 0, 1, v129);
                    v130 = swift_allocObject();
                    *(v130 + 16) = 0;
                    *(v130 + 24) = 0;
                    *(v130 + 32) = v28;
                    *(v130 + 40) = v29;
                    *(v130 + 48) = xmmword_1C0F56FA0;
                    *(v130 + 64) = 0xE000000000000000;
                    sub_1C0EF5DAC(0, 0, v128, &unk_1C0F57018, v130);

                    sub_1C0EEFAA8(v128, &qword_1EBE773B0, &qword_1C0F57F40);
                  }
                }

                else
                {
                }
              }
            }

            else
            {

              v124 = v141;
            }

            v27 = v144;
            *(v144 + 720) = v157;
            *(v144 + 736) = v158;
            *(v144 + 752) = v137;
            *(v144 + 760) = v136;
            v131 = v164;
            *(v144 + 832) = v163;
            *(v144 + 848) = v131;
            *(v144 + 864) = v165[0];
            v132 = v160;
            *(v144 + 768) = v159;
            *(v144 + 784) = v132;
            v133 = v162;
            *(v144 + 800) = v161;
            *(v144 + 816) = v133;
            *(v144 + 873) = *(v165 + 9);
            sub_1C0EF1204(v144 + 720);
            *(v124 + v142) = 0;

            goto LABEL_14;
          }

          v80 = *(v144 + 72) | *(v144 + 88);
          v146 = *(v144 + 64);
          v153 = *(v144 + 80);
          v81 = __sincos_stret(v146 * 0.0174532925);
          v82 = 0;
          v83 = 200;
          v85 = v139;
          v84 = v21;
          v86 = v140;
          while (v82 < *(v48 + 2))
          {
            if ((v80 & 1) == 0)
            {
              v87 = &v48[v83];
              if ((v48[v83 - 112] & 1) == 0 && (*(v87 - 96) & 1) == 0)
              {
                v88 = *(v87 - 15);
                v89 = *(v87 - 13);
                v90 = sin((v88 - v146) * 0.0174532925 * 0.5);
                v91 = v90 * v90;
                v92 = __sincos_stret(v88 * 0.0174532925);
                v93 = sin((v89 - v153) * 0.0174532925 * 0.5);
                v94 = v91 + v81.__cosval * v92.__cosval * (v93 * v93);
                v95 = sqrt(v94);
                v96 = sqrt(1.0 - v94);
                v97 = atan2(v95, v96);
                v98 = (v81.__sinval * -21000.0 + 6378160.0) * (v97 + v97);
                v99 = __sincos_stret(v89 * 0.0174532925 - v153 * 0.0174532925);
                v100 = atan2(v92.__cosval * v99.__sinval, v81.__cosval * v92.__sinval - v81.__sinval * v92.__cosval * v99.__cosval);
                v101 = fmod(v100, 6.28318531) * 57.2957795;
                v102 = sub_1C0EFDA74(v98);
                v104 = v103;
                sub_1C0EFDF3C(v101);
                v105 = v48;
                v107 = v106;
                v109 = v108;
                v167 = v102;
                v168 = v104;
                MEMORY[0x1C68E9A50](44, 0xE100000000000000);
                v110 = v107;
                v48 = v105;
                MEMORY[0x1C68E9A50](v110, v109);

                v111 = v167;
                v112 = v168;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v48 = sub_1C0EF9598(v105);
                }

                v86 = v140;
                if (v82 >= *(v48 + 2))
                {
                  goto LABEL_70;
                }

                v113 = &v48[v83];
                *(v113 - 9) = v111;
                *(v113 - 8) = v112;

                if (v82 >= *(v48 + 2))
                {
                  goto LABEL_71;
                }

                *(v113 - 1) = v98;
                *v113 = 0;
                v85 = v139;
                v84 = v21;
              }
            }

            ++v82;
            v83 += 176;
            if (v79 == v82)
            {
              goto LABEL_55;
            }
          }

LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
          return;
        }

        sub_1C0EF1204(v144 + 16);
        v6 = v152;
      }

      ++v8;
      v9 += 176;
    }

    while (v154 != v8);
  }

  sub_1C0F50470();
  v25 = AXLogVoiceOverMapsAI();
  if (!v25)
  {
    goto LABEL_72;
  }

  v26 = v25;
  v27 = v144;

  sub_1C0F4FCF0();

  *(v141 + v142) = 0;

  v28 = 0;
  v29 = 0;
LABEL_14:

  v30 = *(v27 + 8);

  v30(v28, v29);
}

id VOMapsManager.init()()
{
  *&v0[OBJC_IVAR____TtC26AccessibilitySharedSupport13VOMapsManager_inputFileDict] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VOMapsManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VOMapsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VOMapsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C0EF6E90(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v75 = v2;
  v76 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[7];
    v9 = v5[9];
    v60 = v5[8];
    v61[0] = v9;
    *(v61 + 9) = *(v5 + 153);
    v10 = v5[3];
    v11 = v5[5];
    v56 = v5[4];
    v57 = v11;
    v12 = v5[5];
    v13 = v5[7];
    v58 = v5[6];
    v59 = v13;
    v14 = v5[1];
    v53[0] = *v5;
    v53[1] = v14;
    v15 = v5[3];
    v17 = *v5;
    v16 = v5[1];
    v54 = v5[2];
    v55 = v15;
    v18 = v5[9];
    v51 = v60;
    v52[0] = v18;
    *(v52 + 9) = *(v5 + 153);
    v47 = v56;
    v48 = v12;
    v49 = v58;
    v50 = v8;
    v43 = v17;
    v44 = v16;
    v45 = v54;
    v46 = v10;
    v19 = v6[7];
    v20 = v6[9];
    v69 = v6[8];
    v70[0] = v20;
    *(v70 + 9) = *(v6 + 153);
    v21 = v6[3];
    v22 = v6[5];
    v65 = v6[4];
    v66 = v22;
    v23 = v6[5];
    v24 = v6[7];
    v67 = v6[6];
    v68 = v24;
    v25 = v6[1];
    v62[0] = *v6;
    v62[1] = v25;
    v26 = v6[3];
    v28 = *v6;
    v27 = v6[1];
    v63 = v6[2];
    v64 = v26;
    v29 = v6[9];
    v41 = v69;
    v42[0] = v29;
    *(v42 + 9) = *(v6 + 153);
    v37 = v65;
    v38 = v23;
    v39 = v67;
    v40 = v19;
    v33 = v28;
    v34 = v27;
    v35 = v63;
    v36 = v21;
    v30 = _s26AccessibilitySharedSupport10VOMapsItemV2eeoiySbAC_ACtFZ_0(&v43, &v33);
    v71[8] = v41;
    v72[0] = v42[0];
    *(v72 + 9) = *(v42 + 9);
    v71[4] = v37;
    v71[5] = v38;
    v71[6] = v39;
    v71[7] = v40;
    v71[0] = v33;
    v71[1] = v34;
    v71[2] = v35;
    v71[3] = v36;
    sub_1C0EF1234(v53, v32);
    sub_1C0EF1234(v62, v32);
    sub_1C0EF1204(v71);
    v73[8] = v51;
    v74[0] = v52[0];
    *(v74 + 9) = *(v52 + 9);
    v73[4] = v47;
    v73[5] = v48;
    v73[6] = v49;
    v73[7] = v50;
    v73[0] = v43;
    v73[1] = v44;
    v73[2] = v45;
    v73[3] = v46;
    sub_1C0EF1204(v73);
    if (!v30)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 11;
    v5 += 11;
  }

  return 1;
}

uint64_t sub_1C0EF70A0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0EF70FC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C0EF71F4;

  return v6(a1);
}

uint64_t sub_1C0EF71F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_1C0EF72EC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77940, &qword_1C0F57520);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_1C0EF7370(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77918, &qword_1C0F57500);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2E8BA2E8BA2E8BA3) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

uint64_t sub_1C0EF7408(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1C0F4F940();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8, v9, v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  sub_1C0EFEEDC(&qword_1EBE77948, MEMORY[0x1E6969780]);
  v36 = a2;
  v14 = sub_1C0F50170();
  v15 = v13 + 56;
  v34 = v13 + 56;
  v35 = v13;
  v16 = -1 << *(v13 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v31 = v2;
    v32 = a1;
    v33 = ~v16;
    v30 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v29[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v12, *(v35 + 48) + v21 * v17, v6);
      sub_1C0EFEEDC(&qword_1EBE77950, MEMORY[0x1E6969788]);
      v24 = sub_1C0F50190();
      v25 = *v22;
      (*v22)(v12, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v33;
      v18 = v23;
      if (((*(v34 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v25(v36, v6);
    v23(v32, *(v35 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v18(v12, v36, v6);
    v37 = *v3;
    sub_1C0EF7FFC(v12, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1C0EF76C0(__int128 *a1, __int128 *a2)
{
  v4 = a2[9];
  v69 = a2[8];
  v70[0] = v4;
  *(v70 + 9) = *(a2 + 153);
  v5 = a2[5];
  v65 = a2[4];
  v66 = v5;
  v6 = a2[7];
  v67 = a2[6];
  v68 = v6;
  v7 = a2[1];
  v61 = *a2;
  v62 = v7;
  v8 = a2[3];
  v63 = a2[2];
  v64 = v8;
  v9 = *v2;
  sub_1C0F50850();
  VOMapsItem.hash(into:)(&v71);
  v10 = sub_1C0F50890();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = (*(v9 + 48) + 176 * v12);
      v16 = v14[1];
      v15 = v14[2];
      v59[0] = *v14;
      v59[1] = v16;
      v59[2] = v15;
      v17 = v14[3];
      v18 = v14[4];
      v19 = v14[6];
      v59[5] = v14[5];
      v59[6] = v19;
      v59[3] = v17;
      v59[4] = v18;
      v20 = v14[7];
      v21 = v14[8];
      v22 = v14[9];
      *(v60 + 9) = *(v14 + 153);
      v59[8] = v21;
      v60[0] = v22;
      v59[7] = v20;
      v56 = v14[7];
      v57 = v14[8];
      v58[0] = v14[9];
      *(v58 + 9) = *(v14 + 153);
      v52 = v14[3];
      v53 = v14[4];
      v54 = v14[5];
      v55 = v14[6];
      v49 = *v14;
      v50 = v14[1];
      v51 = v14[2];
      v23 = _s26AccessibilitySharedSupport10VOMapsItemV2eeoiySbAC_ACtFZ_0(&v49, &v61);
      v80[0] = v58[0];
      *(v80 + 9) = *(v58 + 9);
      v75 = v53;
      v76 = v54;
      v78 = v56;
      v79 = v57;
      v77 = v55;
      v71 = v49;
      v72 = v50;
      v73 = v51;
      v74 = v52;
      sub_1C0EF1234(v59, v47);
      sub_1C0EF1204(&v71);
      if (v23)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v47[8] = v69;
    v48[0] = v70[0];
    *(v48 + 9) = *(v70 + 9);
    v47[4] = v65;
    v47[5] = v66;
    v47[6] = v67;
    v47[7] = v68;
    v47[0] = v61;
    v47[1] = v62;
    v47[2] = v63;
    v47[3] = v64;
    sub_1C0EF1204(v47);
    v31 = (*(v9 + 48) + 176 * v12);
    v32 = v31[7];
    v33 = v31[8];
    v34 = v31[9];
    *(v58 + 9) = *(v31 + 153);
    v57 = v33;
    v58[0] = v34;
    v56 = v32;
    v35 = v31[3];
    v36 = v31[4];
    v37 = v31[6];
    v54 = v31[5];
    v55 = v37;
    v52 = v35;
    v53 = v36;
    v39 = v31[1];
    v38 = v31[2];
    v49 = *v31;
    v50 = v39;
    v51 = v38;
    v40 = v31[9];
    a1[8] = v31[8];
    a1[9] = v40;
    *(a1 + 153) = *(v31 + 153);
    v41 = v31[5];
    a1[4] = v31[4];
    a1[5] = v41;
    v42 = v31[7];
    a1[6] = v31[6];
    a1[7] = v42;
    v43 = v31[1];
    *a1 = *v31;
    a1[1] = v43;
    v44 = v31[3];
    a1[2] = v31[2];
    a1[3] = v44;
    sub_1C0EF1234(&v49, v46);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80[0] = v70[0];
    *(v80 + 9) = *(v70 + 9);
    v75 = v65;
    v76 = v66;
    v78 = v68;
    v79 = v69;
    v77 = v67;
    v71 = v61;
    v72 = v62;
    v73 = v63;
    v74 = v64;
    *&v49 = *v45;
    sub_1C0EF1234(&v71, v59);
    sub_1C0EF8278(&v71, v12, isUniquelyReferenced_nonNull_native);
    *v45 = v49;
    v25 = v70[0];
    a1[8] = v69;
    a1[9] = v25;
    *(a1 + 153) = *(v70 + 9);
    v26 = v66;
    a1[4] = v65;
    a1[5] = v26;
    v27 = v68;
    a1[6] = v67;
    a1[7] = v27;
    v28 = v62;
    *a1 = v61;
    a1[1] = v28;
    v29 = v64;
    result = 1;
    a1[2] = v63;
    a1[3] = v29;
  }

  return result;
}

uint64_t sub_1C0EF7A28(uint64_t a1)
{
  v2 = v1;
  v39 = sub_1C0F4F940();
  v3 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v4, v5, v6);
  v38 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77958, &qword_1C0F57528);
  result = sub_1C0F50570();
  v10 = result;
  if (*(v8 + 16))
  {
    v33 = v1;
    v34 = v8;
    v11 = 0;
    v12 = (v8 + 56);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v37 = v3 + 32;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = *(v8 + 48) + *(v3 + 72) * (v19 | (v11 << 6));
      v23 = *(v3 + 32);
      v35 = *(v3 + 72);
      v36 = v23;
      v23(v38, v22, v39);
      sub_1C0EFEEDC(&qword_1EBE77948, MEMORY[0x1E6969780]);
      result = sub_1C0F50170();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v36(*(v10 + 48) + v18 * v35, v38, v39);
      ++*(v10 + 16);
      v8 = v34;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v8 + 32);
    if (v31 >= 64)
    {
      bzero(v12, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v31;
    }

    v2 = v33;
    *(v8 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t sub_1C0EF7D70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77928, &qword_1C0F57508);
  result = sub_1C0F50570();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; ++*(v5 + 16))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v15 = (*(v3 + 48) + 176 * (v12 | (v6 << 6)));
      v16 = v15[8];
      v17 = v15[6];
      v52 = v15[7];
      v53 = v16;
      v18 = v15[8];
      v54[0] = v15[9];
      *(v54 + 9) = *(v15 + 153);
      v19 = v15[3];
      v20 = v15[5];
      v49 = v15[4];
      v50 = v20;
      v21 = v15[5];
      v51 = v15[6];
      v22 = v15[1];
      v45 = *v15;
      v46 = v22;
      v23 = v15[3];
      v25 = *v15;
      v24 = v15[1];
      v47 = v15[2];
      v48 = v23;
      v26 = v15[9];
      v43 = v18;
      v44[0] = v26;
      *(v44 + 9) = *(v15 + 153);
      v39 = v49;
      v40 = v21;
      v41 = v17;
      v42 = v52;
      v35 = v25;
      v36 = v24;
      v37 = v47;
      v38 = v19;
      sub_1C0F50850();
      VOMapsItem.hash(into:)(v34);
      sub_1C0F50890();
      result = sub_1C0F50550();
      *(v5 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v27 = (*(v5 + 48) + 176 * result);
      v28 = v54[0];
      v27[8] = v53;
      v27[9] = v28;
      *(v27 + 153) = *(v54 + 9);
      v29 = v50;
      v27[4] = v49;
      v27[5] = v29;
      v30 = v52;
      v27[6] = v51;
      v27[7] = v30;
      v31 = v46;
      *v27 = v45;
      v27[1] = v31;
      v32 = v48;
      v27[2] = v47;
      v27[3] = v32;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= i)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero((v3 + 56), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v33;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C0EF7FFC(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_1C0F4F940();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8, v9, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C0EF7A28(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1C0EF8508();
      goto LABEL_12;
    }

    sub_1C0EF88F4(v13 + 1);
  }

  v15 = *v3;
  sub_1C0EFEEDC(&qword_1EBE77948, MEMORY[0x1E6969780]);
  v16 = sub_1C0F50170();
  v17 = v15 + 56;
  v33 = v15;
  v18 = -1 << *(v15 + 32);
  a2 = v16 & ~v18;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v12, *(v33 + 48) + v23 * a2, v6);
      sub_1C0EFEEDC(&qword_1EBE77950, MEMORY[0x1E6969788]);
      v24 = sub_1C0F50190();
      (*(v21 - 8))(v12, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C0F507B0();
  __break(1u);
  return result;
}

__int128 *sub_1C0EF8278(__int128 *result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result[9];
  v64 = result[8];
  v65[0] = v6;
  *(v65 + 9) = *(result + 153);
  v7 = result[5];
  v60 = result[4];
  v61 = v7;
  v8 = result[7];
  v62 = result[6];
  v63 = v8;
  v9 = result[1];
  v56 = *result;
  v57 = v9;
  v10 = result[3];
  v58 = result[2];
  v59 = v10;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C0EF7D70(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1C0EF8740();
      goto LABEL_12;
    }

    sub_1C0EF8BFC(v11 + 1);
  }

  v13 = *v3;
  sub_1C0F50850();
  VOMapsItem.hash(into:)(v54);
  result = sub_1C0F50890();
  v14 = -1 << *(v13 + 32);
  a2 = result & ~v14;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    do
    {
      v16 = (*(v13 + 48) + 176 * a2);
      v18 = v16[1];
      v17 = v16[2];
      v52[0] = *v16;
      v52[1] = v18;
      v52[2] = v17;
      v19 = v16[3];
      v20 = v16[4];
      v21 = v16[6];
      v52[5] = v16[5];
      v52[6] = v21;
      v52[3] = v19;
      v52[4] = v20;
      v22 = v16[7];
      v23 = v16[8];
      v24 = v16[9];
      *(v53 + 9) = *(v16 + 153);
      v52[8] = v23;
      v53[0] = v24;
      v52[7] = v22;
      v25 = v16[9];
      v50 = v16[8];
      v51[0] = v25;
      *(v51 + 9) = *(v16 + 153);
      v26 = v16[5];
      v46 = v16[4];
      v47 = v26;
      v27 = v16[7];
      v48 = v16[6];
      v49 = v27;
      v28 = v16[1];
      v42 = *v16;
      v43 = v28;
      v29 = v16[3];
      v44 = v16[2];
      v45 = v29;
      v30 = _s26AccessibilitySharedSupport10VOMapsItemV2eeoiySbAC_ACtFZ_0(&v42, &v56);
      v54[8] = v50;
      v55[0] = v51[0];
      *(v55 + 9) = *(v51 + 9);
      v54[4] = v46;
      v54[5] = v47;
      v54[6] = v48;
      v54[7] = v49;
      v54[0] = v42;
      v54[1] = v43;
      v54[2] = v44;
      v54[3] = v45;
      sub_1C0EF1234(v52, &v41);
      result = sub_1C0EF1204(v54);
      if (v30)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v31 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v32 = (*(v31 + 48) + 176 * a2);
  v33 = v61;
  v32[4] = v60;
  v32[5] = v33;
  *(v32 + 153) = *(v65 + 9);
  v34 = v65[0];
  v32[8] = v64;
  v32[9] = v34;
  v35 = v63;
  v32[6] = v62;
  v32[7] = v35;
  v36 = v57;
  *v32 = v56;
  v32[1] = v36;
  v37 = v59;
  v32[2] = v58;
  v32[3] = v37;
  v38 = *(v31 + 16);
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (!v39)
  {
    *(v31 + 16) = v40;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C0F507B0();
  __break(1u);
  return result;
}

void *sub_1C0EF8508()
{
  v1 = v0;
  v2 = sub_1C0F4F940();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4, v5, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77958, &qword_1C0F57528);
  v9 = *v0;
  v10 = sub_1C0F50560();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v1;
    result = (v10 + 56);
    v13 = v9 + 56;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v13 + 8 * v14)
    {
      result = memmove(result, (v9 + 56), 8 * v14);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v3 + 32;
    for (i = v3 + 16; v18; result = (*(v3 + 32))(*(v11 + 48) + v23, v8, v2))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_14:
      v23 = *(v3 + 72) * (v20 | (v15 << 6));
      (*(v3 + 16))(v8, *(v9 + 48) + v23, v2);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v1 = v25;
        goto LABEL_18;
      }

      v22 = *(v13 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v11;
  }

  return result;
}

void *sub_1C0EF8740()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77928, &qword_1C0F57508);
  v2 = *v0;
  v3 = sub_1C0F50560();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1C0EF1234(v27, &v26))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 176 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[3];
      v19 = v17[4];
      v20 = v17[6];
      v27[5] = v17[5];
      v27[6] = v20;
      v27[3] = v18;
      v27[4] = v19;
      v21 = v17[7];
      v22 = v17[8];
      v23 = v17[9];
      *(v28 + 9) = *(v17 + 153);
      v27[8] = v22;
      v28[0] = v23;
      v27[7] = v21;
      v25 = v17[1];
      v24 = v17[2];
      v27[0] = *v17;
      v27[1] = v25;
      v27[2] = v24;
      memmove((*(v4 + 48) + v16), v17, 0xA9uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

uint64_t sub_1C0EF88F4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1C0F4F940();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v4, v5, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77958, &qword_1C0F57528);
  v10 = sub_1C0F50570();
  result = v9;
  if (*(v9 + 16))
  {
    v31 = v1;
    v12 = 0;
    v13 = v9 + 56;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v34 = v3 + 16;
    v35 = v3;
    v18 = v10 + 56;
    v32 = (v3 + 32);
    v33 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = *(v35 + 72);
      (*(v35 + 16))(v8, *(result + 48) + v23 * (v20 | (v12 << 6)), v36);
      sub_1C0EFEEDC(&qword_1EBE77948, MEMORY[0x1E6969780]);
      result = sub_1C0F50170();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v18 + 8 * v26);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v19 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v32)(*(v10 + 48) + v19 * v23, v8, v36);
      ++*(v10 + 16);
      result = v33;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v10;
  }

  return result;
}

unint64_t sub_1C0EF8BFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77928, &qword_1C0F57508);
  result = sub_1C0F50570();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    for (i = (v7 + 63) >> 6; v9; ++*(v5 + 16))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v14 = (*(v3 + 48) + 176 * (v11 | (v6 << 6)));
      v16 = *v14;
      v15 = v14[1];
      v51 = v14[2];
      v17 = v14[3];
      v18 = v14[4];
      v19 = v14[6];
      v54 = v14[5];
      v55 = v19;
      v52 = v17;
      v53 = v18;
      v20 = v14[7];
      v21 = v14[8];
      v22 = v14[9];
      *(v58 + 9) = *(v14 + 153);
      v57 = v21;
      v58[0] = v22;
      v56 = v20;
      v49 = v16;
      v50 = v15;
      v23 = v14[9];
      v47 = v14[8];
      v48[0] = v23;
      *(v48 + 9) = *(v14 + 153);
      v24 = v14[5];
      v43 = v14[4];
      v44 = v24;
      v25 = v14[7];
      v45 = v14[6];
      v46 = v25;
      v26 = v14[1];
      v39 = *v14;
      v40 = v26;
      v27 = v14[3];
      v41 = v14[2];
      v42 = v27;
      sub_1C0F50850();
      sub_1C0EF1234(&v49, v37);
      VOMapsItem.hash(into:)(v38);
      sub_1C0F50890();
      result = sub_1C0F50550();
      *(v5 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v28 = (*(v5 + 48) + 176 * result);
      v30 = v50;
      v29 = v51;
      *v28 = v49;
      v28[1] = v30;
      v28[2] = v29;
      v31 = v55;
      v33 = v52;
      v32 = v53;
      v28[5] = v54;
      v28[6] = v31;
      v28[3] = v33;
      v28[4] = v32;
      v34 = v56;
      v35 = v57;
      v36 = v58[0];
      *(v28 + 153) = *(v58 + 9);
      v28[8] = v35;
      v28[9] = v36;
      v28[7] = v34;
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= i)
      {

        v2 = v1;
        goto LABEL_16;
      }

      v13 = *(v3 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v2 = v5;
  }

  return result;
}

char *sub_1C0EF8E6C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C0EF8F2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0EF8E8C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C0EF9038(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C0EF8EAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C0EF913C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0EF8ECC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C0EF9270(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0EF8EEC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C0EF9394(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0EF8F0C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C0EF9488(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0EF8F2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77908, &unk_1C0F574F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0EF9038(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77940, &qword_1C0F57520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_1C0EF913C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77900, &qword_1C0F574E8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778E8, &qword_1C0F574E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0EF9270(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77918, &qword_1C0F57500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0EF9394(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778C8, &qword_1C0F574A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1C0EF9488(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778C0, &qword_1C0F5AF20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1C0EF95C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((result & 1) == 0)
  {
    result = sub_1C0EF8E6C(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_1C0EF8E6C((v11 > 1), v12 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v12 + 1;
  v13 = v8 + 16 * v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v4[1] = v8;
  v14 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    if (MEMORY[0x1C68E9490](*(v14 + 16) & 0x3FLL) > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v15 = *v4;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = sub_1C0F4FCA0();

        *v4 = v16;
        v15 = v16;
      }

      if (v15)
      {
        return sub_1C0F4FC40();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_1C0EF9BEC();
}