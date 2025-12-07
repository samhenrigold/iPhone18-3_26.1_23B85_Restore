uint64_t sub_2456FDD3C()
{
  v1 = v0;
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_ignoreStitchCounter;
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_ignoreStitchCounter) = *(v0 + 624);
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsButtonTapStateCounter) = *(v0 + 632);
  v7 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsState;
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_previousAnalyticsState) = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsState);
  *(v0 + v7) = 3;
  sub_2457027AC();
  sub_245747D90();
  v8 = sub_245748940();
  v10 = v9;

  if ((v10 & 1) == 0 && v8 >= 1)
  {
    *(v1 + v6) = v8;
  }

  sub_245747CF0();

  v11 = sub_245747E50();
  v12 = sub_245748910();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(v1 + v6);

    _os_log_impl(&dword_2456DE000, v11, v12, "Beginning ignore stitch counter for %ld frames", v13, 0xCu);
    MEMORY[0x245D712D0](v13, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);

  v14 = sub_2456E7A6C();
  v15 = *&v14[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_currentTimestamp];
  v16 = *&v14[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_currentTimestamp + 16];
  v17 = *&v14[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_currentTimestamp + 8];

  v18 = *MEMORY[0x277CBECE8];
  time.value = v15;
  *&time.timescale = v17;
  time.epoch = v16;
  v19 = CMTimeCopyAsDictionary(&time, v18);
  if (v19)
  {
    v20 = v19;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      time.value = 0;
      sub_245748650();

      value = time.value;
      if (time.value)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  value = sub_24572FE70(MEMORY[0x277D84F90]);
LABEL_13:
  v22 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_buttonPressTimestamps;
  swift_beginAccess();
  v23 = *(v1 + v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v22) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_245702678(0, v23[2] + 1, 1, v23);
    *(v1 + v22) = v23;
  }

  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    v23 = sub_245702678((v25 > 1), v26 + 1, 1, v23);
  }

  v23[2] = v26 + 1;
  v23[v26 + 4] = value;
  *(v1 + v22) = v23;
  return swift_endAccess();
}

uint64_t sub_2456FE0A4()
{
  v1 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v12 = sub_2456F3E04();
  if (v12 <= 2)
  {
    v13 = v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___flashMode;
    *v13 = qword_24574AD28[v12];
    *(v13 + 8) = 0;
  }

  (*(v5 + 16))(v7, v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v4);
  *v3 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___flashMode) == 1;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2456FE2EC()
{
  v1 = sub_245747E60();
  v55 = *(v1 - 8);
  v56 = v1;
  MEMORY[0x28223BE20](v1);
  v58 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_245747DC0();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = (v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_245747DD0();
  v54 = *(v57 - 8);
  v5 = MEMORY[0x28223BE20](v57);
  v53 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = v40 - v7;
  v8 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v40 - v17;
  v19 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_failureReason);
  if (v19 == 11)
  {
    v43 = v40 - v17;
    v44 = v16;
    v45 = v14;
    v46 = v15;
    v47 = v10;
    v48 = v0;
    v41 = v11;
    v42 = v12;
    v40[1] = v8;
    (*(v49 + 104))(v51, *MEMORY[0x277CFFA38], v50);
    sub_245723158(MEMORY[0x277D84F90]);
    v20 = v52;
    sub_245747DE0();
    sub_245747CF0();
    v21 = v53;
    v22 = v54;
    v23 = v57;
    (*(v54 + 16))(v53, v20, v57);
    v24 = sub_245747E50();
    v25 = sub_245748920();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59 = v51;
      *v26 = 136315138;
      sub_245702840(&qword_27EE244B8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
      v27 = sub_245748C20();
      v28 = v21;
      v30 = v29;
      v31 = *(v22 + 8);
      v31(v28, v23);
      v32 = sub_24572EDDC(v27, v30, &v59);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_2456DE000, v24, v25, "Liveness unexpected error occurred: %s", v26, 0xCu);
      v33 = v51;
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x245D712D0](v33, -1, -1);
      MEMORY[0x245D712D0](v26, -1, -1);

      v34 = v31;
    }

    else
    {

      v34 = *(v22 + 8);
      v34(v21, v23);
    }

    (*(v55 + 8))(v58, v56);
    v36 = v41;
    v37 = v45;
    v38 = v42;
    (*(v42 + 16))(v45, v48 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v41);
    *v47 = 10;
    swift_storeEnumTagMultiPayload();
    v39 = v43;
    sub_2457488A0();
    (*(v38 + 8))(v37, v36);
    (*(v44 + 8))(v39, v46);
    return (v34)(v20, v23);
  }

  else
  {
    (*(v12 + 16))(v14, v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v11);
    *v10 = v19;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v12 + 8))(v14, v11);
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_2456FE9B4()
{
  v1 = sub_245747E60();
  v52 = *(v1 - 8);
  v53 = v1;
  MEMORY[0x28223BE20](v1);
  v58 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_245747DC0();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_245747DD0();
  v56 = *(v54 - 8);
  v5 = MEMORY[0x28223BE20](v54);
  v51 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = &v44 - v7;
  v60 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v60);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v61 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v57 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v14 = &v44 - v13;
  v15 = sub_245747D40();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v0;
  v20 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_failureReason);
  if (v20 == 11)
  {
    v45 = v14;
    v46 = v12;
    v47 = v9;
    v44 = v10;
    (*(v48 + 104))(v50, *MEMORY[0x277CFFA38], v49);
    sub_245723158(MEMORY[0x277D84F90]);
    v21 = v59;
    sub_245747DE0();
    sub_245747CF0();
    v22 = v51;
    v23 = v54;
    (*(v56 + 16))(v51, v21, v54);
    v24 = sub_245747E50();
    v25 = sub_245748920();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v62 = v27;
      *v26 = 136315138;
      sub_245702840(&qword_27EE244B8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
      v28 = sub_245748C20();
      v29 = v22;
      v31 = v30;
      v32 = *(v56 + 8);
      v32(v29, v23);
      v33 = sub_24572EDDC(v28, v31, &v62);

      *(v26 + 4) = v33;
      _os_log_impl(&dword_2456DE000, v24, v25, "Liveness unexpected error occurred: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x245D712D0](v27, -1, -1);
      MEMORY[0x245D712D0](v26, -1, -1);

      v34 = v32;
    }

    else
    {

      v34 = *(v56 + 8);
      v34(v22, v23);
    }

    (*(v52 + 8))(v58, v53);
    v37 = v44;
    v38 = v61;
    v39 = v55;
    v40 = v19 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation;
    v41 = v46;
    v42 = v47;
    (*(v61 + 16))(v46, v40, v44);
    *v42 = 10;
    swift_storeEnumTagMultiPayload();
    v43 = v45;
    sub_2457488A0();
    (*(v38 + 8))(v41, v37);
    (*(v57 + 8))(v43, v39);
    return (v34)(v59, v23);
  }

  else
  {
    sub_245747D30();
    sub_245747D20();
    (*(v16 + 8))(v18, v15);
    v35 = v61;
    (*(v61 + 16))(v12, v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v10);
    *v9 = v20;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v35 + 8))(v12, v10);
    return (*(v57 + 8))(v14, v55);
  }
}

uint64_t sub_2456FF120()
{
  v1 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  if (*(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
    sub_245748870();
  }

  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCause) = 1;
  (*(v5 + 16))(v7, v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v4);
  v12 = 10;
  if (!*(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsGesture + 8))
  {
    v12 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsGesture);
  }

  *v3 = v12;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_2456FF3B0(uint64_t a1)
{
  v3 = sub_245747E60();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v29 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  (*(v9 + 16))(v11, v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v8);
  sub_245702DF0(a1, v7, type metadata accessor for RGBLivenessResult);
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
  v16 = PADAuditDataRepositoryDefault();
  if (v16)
  {
    v17 = v16;
    v18 = sub_2457357D8();
    type metadata accessor for RGBLivenessResult(0);
    v19 = sub_245747C50();
    [v17 storeClassifierResult:v18 imageData:v19 signature:0 flags:0];
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = v27;
    v20 = v28;
    v22 = v29;
    sub_245747CF0();
    v23 = sub_245747E50();
    v24 = sub_245748910();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2456DE000, v23, v24, "Persist Capture internal settings is not enabled. Will not store the classifier results", v25, 2u);
      MEMORY[0x245D712D0](v25, -1, -1);
    }

    (*(v21 + 8))(v22, v20);
  }
}

uint64_t sub_2456FF760(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v4);
  v36 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v6 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x28223BE20](v9);
  v32 = &v28 - v10;
  v31 = sub_245747E60();
  v11 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747CF0();
  v14 = a1;
  v15 = sub_245747E50();
  v16 = sub_245748920();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30 = v4;
    v20 = v19;
    v37 = v19;
    *v18 = 136315138;
    swift_getErrorValue();
    v21 = sub_245748C20();
    v23 = sub_24572EDDC(v21, v22, &v37);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_2456DE000, v15, v16, "Liveness classifier unexpected error occurred: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x245D712D0](v20, -1, -1);
    v24 = v18;
    v2 = v29;
    MEMORY[0x245D712D0](v24, -1, -1);
  }

  (*(v11 + 8))(v13, v31);
  v25 = v35;
  (*(v6 + 16))(v8, v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v35);
  *v36 = 10;
  swift_storeEnumTagMultiPayload();
  v26 = v32;
  sub_2457488A0();
  (*(v6 + 8))(v8, v25);
  return (*(v33 + 8))(v26, v34);
}

uint64_t sub_2456FFB20(void *a1, uint64_t *a2)
{
  v3 = v2;
  v29 = a1;
  v30 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v30);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = *a2;
  v15 = a2[1];
  v25 = a2[2];
  v26 = v14;
  (*(v8 + 16))(v10, v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v7);

  v16 = sub_2456F3D98();
  memcpy(v31, (v3 + 64), sizeof(v31));
  v17 = sub_245720528();
  v18 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___remainingSelfieAttempts);
  *v6 = 0;
  v19 = v29;
  v20 = v25;
  v21 = v26;
  *(v6 + 1) = v29;
  *(v6 + 2) = v21;
  *(v6 + 3) = v15;
  *(v6 + 4) = v20;
  v6[40] = v16 < v17;
  *(v6 + 6) = v18;
  v6[56] = 0;
  swift_storeEnumTagMultiPayload();
  v22 = v19;
  sub_2457488A0();
  (*(v8 + 8))(v10, v7);
  return (*(v27 + 8))(v13, v28);
}

uint64_t sub_2456FFDA4(uint64_t a1)
{
  v2 = v1;
  v21 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v21);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22[-v12 - 8];
  v23 = *a1;
  v24 = *(a1 + 16);
  sub_2457027AC();
  v14 = sub_245747D70();
  LOBYTE(a1) = MEMORY[0x245D70730](v14);

  if (a1)
  {
    (*(v7 + 16))(v9, v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v6);
    *v5 = 9;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v7 + 8))(v9, v6);
    result = (*(v11 + 8))(v13, v10);
  }

  if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_firstTutorialVideoFinishedPlaying) == 1 && (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasCompletedGestureMonitoring) & 1) == 0)
  {
    if (BYTE4(v24) == 1)
    {
      v16 = 2;
LABEL_9:
      v22[0] = v16;
      result = sub_2457001A4(v22);
      goto LABEL_11;
    }

    if (BYTE5(v24) == 1)
    {
      v16 = 3;
      goto LABEL_9;
    }

    *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_consecutiveInvalidFrames) = 0;
  }

LABEL_11:
  if (v24 == 1)
  {
    v17 = v23 & 0xFFFFFFFFFFFFLL;
    if ((*(&v23 + 1) & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(*(&v23 + 1)) & 0xFLL;
    }

    if (v17)
    {
      if (BYTE3(v24) == 1)
      {
        v18 = *(v2 + 640);
        if (*(v18 + 184) == 1)
        {
          v19 = *(v18 + 176);
          if (v19)
          {

            v20 = v19;
            sub_245727FE8();
          }
        }
      }

      (*(v7 + 16))(v9, v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v6);
      *v5 = v23;
      *(v5 + 2) = v24;
      swift_storeEnumTagMultiPayload();
      sub_245702E58(&v23, v22);
    }

    else
    {
      (*(v7 + 16))(v9, v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v6);
      swift_storeEnumTagMultiPayload();
    }

    sub_2457488A0();
    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_2457001A4(unsigned __int8 *a1)
{
  v2 = v1;
  v22 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v22);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v18[-v13];
  v15 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_consecutiveInvalidFrames;
  v16 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_consecutiveInvalidFrames);
  v17 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    v20 = v12;
    v21 = result;
    v19 = *a1;
    *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_consecutiveInvalidFrames) = v17;
    memcpy(v23, (v2 + 64), sizeof(v23));
    result = sub_2457226A8();
    if (v17 >= result)
    {
      (*(v7 + 16))(v9, v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v6);
      *v5 = v19;
      swift_storeEnumTagMultiPayload();
      sub_2457488A0();
      (*(v7 + 8))(v9, v6);
      result = (*(v20 + 8))(v14, v21);
      *(v2 + v15) = 0;
    }
  }

  return result;
}

uint64_t sub_24570040C(uint64_t a1)
{
  v25 = a1;
  v2 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v2);
  v34 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v28 = &v25 - v7;
  v8 = sub_245747E60();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_245747DC0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_livePhotoTimeStamps;
  v16 = *(*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_livePhotoTimeStamps) + 16);
  memcpy(v37, (v1 + 64), sizeof(v37));
  if (v16 == sub_245722114() && *(*(v1 + v15) + 16))
  {
    sub_245748900();

    sub_2456EA3A4(v25, v37);
  }

  else
  {
    *&v37[0] = 0;
    *(&v37[0] + 1) = 0xE000000000000000;
    sub_245748AA0();
    v36 = v37[0];
    MEMORY[0x245D70540](0xD00000000000003FLL, 0x8000000245757B90);
    *&v37[0] = *(*(v1 + v15) + 16);
    v25 = v2;
    v18 = sub_245748BA0();
    MEMORY[0x245D70540](v18);

    MEMORY[0x245D70540](0x746365707865202CLL, 0xEC000000203A6465);
    memcpy(v37, (v1 + 64), sizeof(v37));
    v35 = sub_245722114();
    v19 = sub_245748BA0();
    MEMORY[0x245D70540](v19);

    (*(v12 + 104))(v14, *MEMORY[0x277CFFB10], v11);
    sub_245723158(MEMORY[0x277D84F90]);
    sub_245747DD0();
    sub_245702840(&qword_27EE244B8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
    v20 = swift_allocError();
    sub_245747DE0();
    sub_245747CF0();
    sub_245747D00();
    (*(v26 + 8))(v10, v27);

    v22 = v31;
    v21 = v32;
    v23 = v33;
    (*(v32 + 16))(v31, v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v33);
    *v34 = 10;
    swift_storeEnumTagMultiPayload();
    v24 = v28;
    sub_2457488A0();
    (*(v21 + 8))(v22, v23);
    return (*(v29 + 8))(v24, v30);
  }
}

uint64_t sub_2457009F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v34 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v31 = &v28 - v10;
  v11 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_invalidLivePhotoFrames);
  v12 = *(v11 + 16);
  if (v12)
  {
    v28 = v7;
    v29 = a1;
    v30 = v4;

    v13 = MEMORY[0x277D84F90];
    v14 = 32;
    do
    {
      if (*(v11 + v14) == 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2457059BC(0, *(v13 + 16) + 1, 1);
          v13 = v38;
        }

        v16 = *(v13 + 16);
        v15 = *(v13 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_2457059BC((v15 > 1), v16 + 1, 1);
          v13 = v38;
        }

        *(v13 + 16) = v16 + 1;
        *(v13 + v16 + 32) = 1;
      }

      ++v14;
      --v12;
    }

    while (v12);

    a1 = v29;
    v7 = v28;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v18 = *(v13 + 16);

  memcpy(v37, (v2 + 64), sizeof(v37));
  v19 = sub_245722114();
  memcpy(v36, (v2 + 64), sizeof(v36));
  result = sub_2457223E8();
  if (__OFSUB__(v19, result))
  {
    __break(1u);
  }

  else
  {
    v21 = v19 - result < v18;
    v22 = v35;
    v23 = v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation;
    v24 = v34;
    (*(v35 + 16))(v34, v23, v7);
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A18, &qword_24574AC48) + 48);
    v26 = sub_245747C30();
    (*(*(v26 - 8) + 16))(v6, a1, v26);
    v6[v25] = v21;
    swift_storeEnumTagMultiPayload();
    v27 = v31;
    sub_2457488A0();
    (*(v22 + 8))(v24, v7);
    return (*(v32 + 8))(v27, v33);
  }

  return result;
}

uint64_t sub_245700D9C(void *a1)
{
  v58 = sub_245747E60();
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v59 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_245747DC0();
  v62 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A00, &qword_24574AC38);
  MEMORY[0x28223BE20](v61);
  v6 = &v50 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A08, &qword_24574AC40);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  v66 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v66);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v64 = *(v21 - 8);
  v65 = v21;
  MEMORY[0x28223BE20](v21);
  v63 = &v50 - v22;
  type metadata accessor for Code(0);
  v68 = -11807;
  sub_245702840(&qword_27EE245A8, type metadata accessor for Code, &unk_24574A7B8);
  if ((sub_245747B20() & 1) == 0)
  {
    v53 = v20;
    v52 = v18;
    v54 = v17;
    v55 = v16;
    v51 = a1;
    swift_getErrorValue();
    sub_245748C30();
    v24 = v62;
    (*(v62 + 104))(v12, *MEMORY[0x277CFFA00], v3);
    (*(v24 + 56))(v12, 0, 1, v3);
    v25 = *(v61 + 48);
    sub_245703098(v14, v6, &qword_27EE24A08, &qword_24574AC40);
    sub_245703098(v12, &v6[v25], &qword_27EE24A08, &qword_24574AC40);
    v26 = *(v24 + 48);
    if (v26(v6, 1, v3) == 1)
    {
      sub_2456EEF50(v12, &qword_27EE24A08, &qword_24574AC40);
      sub_2456EEF50(v14, &qword_27EE24A08, &qword_24574AC40);
      v27 = v26(&v6[v25], 1, v3);
      v28 = v67;
      if (v27 == 1)
      {
        sub_2456EEF50(v6, &qword_27EE24A08, &qword_24574AC40);
LABEL_13:
        v18 = v52;
        v47 = v28 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation;
        v23 = v53;
        v17 = v54;
        (*(v52 + 16))(v53, v47, v54);
        v42 = 8;
LABEL_14:
        *v55 = v42;
        goto LABEL_15;
      }
    }

    else
    {
      v29 = v57;
      sub_245703098(v6, v57, &qword_27EE24A08, &qword_24574AC40);
      if (v26(&v6[v25], 1, v3) != 1)
      {
        v43 = &v6[v25];
        v44 = v56;
        (*(v24 + 32))(v56, v43, v3);
        sub_245702840(&qword_27EE24A10, MEMORY[0x277CFFE20], MEMORY[0x277CFFE28]);
        v45 = sub_245748690();
        v46 = *(v24 + 8);
        v46(v44, v3);
        sub_2456EEF50(v12, &qword_27EE24A08, &qword_24574AC40);
        sub_2456EEF50(v14, &qword_27EE24A08, &qword_24574AC40);
        v46(v29, v3);
        sub_2456EEF50(v6, &qword_27EE24A08, &qword_24574AC40);
        v28 = v67;
        v31 = v59;
        v30 = v60;
        if (v45)
        {
          goto LABEL_13;
        }

LABEL_9:
        sub_245747CF0();
        v32 = v51;
        v33 = v51;
        v34 = sub_245747E50();
        v35 = sub_245748920();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v68 = v37;
          *v36 = 136315138;
          swift_getErrorValue();
          v38 = sub_245748C20();
          v40 = sub_24572EDDC(v38, v39, &v68);

          *(v36 + 4) = v40;
          _os_log_impl(&dword_2456DE000, v34, v35, "Liveness AV session unexpected error occurred: %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v37);
          MEMORY[0x245D712D0](v37, -1, -1);
          MEMORY[0x245D712D0](v36, -1, -1);
        }

        (*(v30 + 8))(v31, v58);
        v18 = v52;
        v41 = v28 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation;
        v23 = v53;
        v17 = v54;
        (*(v52 + 16))(v53, v41, v54);
        v42 = 10;
        goto LABEL_14;
      }

      sub_2456EEF50(v12, &qword_27EE24A08, &qword_24574AC40);
      sub_2456EEF50(v14, &qword_27EE24A08, &qword_24574AC40);
      (*(v24 + 8))(v29, v3);
      v28 = v67;
    }

    sub_2456EEF50(v6, &qword_27EE24A00, &qword_24574AC38);
    v31 = v59;
    v30 = v60;
    goto LABEL_9;
  }

  (*(v18 + 16))(v20, v67 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v17);
  *v16 = 8;
  v23 = v20;
LABEL_15:
  swift_storeEnumTagMultiPayload();
  v48 = v63;
  sub_2457488A0();
  (*(v18 + 8))(v23, v17);
  return (*(v64 + 8))(v48, v65);
}

uint64_t sub_2457018CC(uint64_t a1)
{
  v3 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  (*(v7 + 16))(v9, v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v6);
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_245701ADC()
{
  v1 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  (*(v5 + 16))(v7, v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v4);
  *v3 = 5;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_245701CEC(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v4 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  (*(v8 + 16))(v10, v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v7);
  v15 = v18;
  *v6 = a1;
  v6[1] = v15;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v8 + 8))(v10, v7);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_245701F08(void *a1)
{
  v3 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  (*(v7 + 16))(v9, v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v6);
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  v14 = a1;
  sub_2457488A0();
  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24570211C(uint64_t a1)
{
  v3 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  (*(v7 + 16))(v9, v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v6);
  v14 = sub_245747C30();
  (*(*(v14 - 8) + 16))(v5, a1, v14);
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

char *sub_245702364(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A40, &qword_24574ACD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_245702458(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A48, &qword_24574ACD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_245702574(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A50, &unk_24574ACE0);
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

void *sub_245702678(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A20, &unk_24574AC50);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248B8, &qword_24574AA38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2457027AC()
{
  result = qword_27EE248B0;
  if (!qword_27EE248B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE248B0);
  }

  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_245702840(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24570298C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2457029F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_245702A54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2456F3D40;

  return sub_2456FC580(a1, v4, v5, v6);
}

unint64_t sub_245702B08(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 24 * result + 24 * a3;
  v10 = (v6 + 32 + 24 * a2);
  if (result != v10 || result >= v10 + 24 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 24 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_245702BC0(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_245702C64(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_245702D3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2456EEC10;

  return sub_2456FC580(a1, v4, v5, v6);
}

uint64_t sub_245702DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_245702F10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2456F3D40;

  return sub_2456FCBB4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_245702FD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2456F3D40;

  return sub_2456FD1D4(a1, v4, v5, v7, v6);
}

uint64_t sub_245703098(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_245703100(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_245703158(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

char *sub_2457031A4(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *a2;
  v6 = [a1 orientation];
  v31 = *(v2 + 136);
  v32 = *(v2 + 120);
  v7 = [v4 faces];
  sub_2456E730C(0, &qword_27EE247D8, 0x277CFF228);
  v8 = sub_2457487A0();

  if (v8 >> 62)
  {
    v9 = sub_245748B70();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_13:

    v12 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_3:
  *&v38[0] = MEMORY[0x277D84F90];
  result = sub_2457059DC(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    return result;
  }

  v29 = v4;
  v30 = __PAIR64__(v5, v6);
  v11 = 0;
  v12 = *&v38[0];
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x245D70890](v11, v8);
    }

    else
    {
      v13 = *(v8 + 8 * v11 + 32);
    }

    v14 = v13;
    [v13 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    *&v38[0] = v12;
    v24 = *(v12 + 16);
    v23 = *(v12 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_2457059DC((v23 > 1), v24 + 1, 1);
      v12 = *&v38[0];
    }

    ++v11;
    *(v12 + 16) = v24 + 1;
    v25 = (v12 + 32 * v24);
    v25[4] = v16;
    v25[5] = v18;
    v25[6] = v20;
    v25[7] = v22;
  }

  while (v9 != v11);

  v6 = v30;
  v5 = HIDWORD(v30);
  v4 = v29;
LABEL_14:
  v40 = 1;
  if (v5 == 2)
  {
    v26 = v3[19];
  }

  else
  {
    v26 = -1;
  }

  v27 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  v28 = [v4 buffer];
  LOBYTE(v33) = v5;
  DWORD1(v33) = v6;
  *(&v33 + 1) = v26;
  v34 = v32;
  *v35 = v31;
  *&v35[16] = v12;
  *&v35[24] = 0;
  v35[28] = v40;
  v35[29] = 2;
  (*(v27 + 8))(&v36);

  v38[0] = v33;
  v38[1] = v32;
  v39[0] = v31;
  *(v39 + 14) = *&v35[14];
  sub_2457059FC(v38);
  v33 = v36;
  *&v34 = v37;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v36 = v33;
    v37 = v34;
    sub_2456FFDA4(&v36);
    swift_unknownObjectRelease();
  }

  return sub_245705A50(&v33);
}

id sub_245703494(uint64_t a1)
{
  v2 = *(v1 + 168);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = PADAuditDataRepositoryDefault();
    v4 = *(v1 + 168);
    *(v1 + 168) = v3;
    swift_unknownObjectRetain();
    sub_2457058E0(v4);
  }

  sub_245706468(v2);
  return v3;
}

uint64_t sub_2457034F8(uint64_t a1, char a2, uint64_t a3, char a4, __int128 *a5)
{
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  v11 = [objc_allocWithZone(type metadata accessor for AVSessionManager()) init];
  *(v5 + 32) = v11;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 159) = 0;
  *(v5 + 168) = xmmword_24574AD40;
  *(v5 + 184) = 1;
  *(v5 + 192) = 0;
  v12 = OBJC_IVAR____TtC18CoreIDVRGBLiveness23RGBLivenessImageManager_videoURL;
  v13 = sub_245747C30();
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  *(v5 + 80) = a1;
  *(v5 + 88) = a2 & 1;
  *(v5 + 96) = a3;
  *(v5 + 104) = a4 & 1;
  sub_245703100(a5, v5 + 40);
  *&v11[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_delegate + 8] = &off_28587A858;
  swift_unknownObjectWeakAssign();
  return v5;
}

void sub_24570362C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_245747E60();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747CF0();
  v8 = sub_245747E50();
  v9 = sub_245748910();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2456DE000, v8, v9, "Attaching AVSession to previewLayer", v10, 2u);
    MEMORY[0x245D712D0](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = *(v2 + 176);
  if (v11)
  {
    v12 = v11;
    v13 = sub_245728334();

    [v13 setSession_];
  }
}

void sub_2457037A4()
{
  v1 = v0;
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747CF0();
  v6 = sub_245747E50();
  v7 = sub_245748910();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2456DE000, v6, v7, "Detaching AVSession from previewLayer", v8, 2u);
    MEMORY[0x245D712D0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + 176);
  if (v9)
  {
    v10 = v9;
    v11 = sub_245728334();

    [v11 setSession_];
  }
}

uint64_t sub_245703918(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = sub_245747E60();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v53[-v11];
  if ((v4 & 0x100) == 0)
  {
    v13 = *(v3 + 192);
    *(v3 + 192) = a1;
    v14 = a1;

    sub_245747CF0();
    v15 = sub_245747E50();
    v16 = sub_245748910();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = v14;
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2456DE000, v15, v16, "Picture is ready.", v18, 2u);
      v19 = v18;
      v14 = v17;
      MEMORY[0x245D712D0](v19, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    v20 = [v14 orientation];
    v57 = *(v3 + 136);
    v58 = *(v3 + 120);
    v21 = [v14 faces];
    sub_2456E730C(0, &qword_27EE247D8, 0x277CFF228);
    v22 = sub_2457487A0();

    if (v22 >> 62)
    {
      v23 = sub_245748B70();
      if (v23)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
LABEL_6:
        *&v64 = MEMORY[0x277D84F90];
        result = sub_2457059DC(0, v23 & ~(v23 >> 63), 0);
        if (v23 < 0)
        {
          __break(1u);
          return result;
        }

        v54 = v20;
        v55 = v14;
        v56 = v3;
        v25 = 0;
        v26 = v64;
        do
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x245D70890](v25, v22);
          }

          else
          {
            v27 = *(v22 + 8 * v25 + 32);
          }

          v28 = v27;
          [v27 bounds];
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v36 = v35;

          *&v64 = v26;
          v38 = *(v26 + 16);
          v37 = *(v26 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_2457059DC((v37 > 1), v38 + 1, 1);
            v26 = v64;
          }

          ++v25;
          *(v26 + 16) = v38 + 1;
          v39 = (v26 + 32 * v38);
          v39[4] = v30;
          v39[5] = v32;
          v39[6] = v34;
          v39[7] = v36;
        }

        while (v23 != v25);

        v3 = v56;
        v14 = v55;
        v20 = v54;
        goto LABEL_22;
      }
    }

    v26 = MEMORY[0x277D84F90];
LABEL_22:
    v49 = CACurrentMediaTime() - *(v3 + 112);
    v69 = 0;
    LOBYTE(v64) = 4;
    *(&v64 + 1) = v70;
    BYTE3(v64) = v71;
    DWORD1(v64) = v20;
    *(&v64 + 1) = -1;
    v65 = v58;
    *v66 = v57;
    *&v66[16] = v26;
    *&v66[24] = v49;
    v66[28] = 0;
    v66[29] = v4 & 1;
    v50 = *(v3 + 72);
    __swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));
    v51 = [v14 buffer];
    v59 = v64;
    v60 = v65;
    v61[0] = *v66;
    *(v61 + 14) = *&v66[14];
    (*(v50 + 8))(&v62);

    sub_2457059FC(&v64);
    v67 = v62;
    v68 = v63;
    sub_245747CE0();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return sub_245705A50(&v67);
    }

    v52 = sub_245703F74(v14);
    v59 = v67;
    *&v60 = v68;
    sub_2456FFB20(v52, &v59);

    swift_unknownObjectRelease();
  }

  sub_245747CF0();
  v40 = a1;
  v41 = sub_245747E50();
  v42 = sub_245748920();
  sub_2457059B0(a1);
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v64 = v44;
    *v43 = 136315138;
    swift_getErrorValue();
    v45 = sub_245748C20();
    v47 = sub_24572EDDC(v45, v46, &v64);
    *&v58 = v6;
    v48 = v47;

    *(v43 + 4) = v48;
    _os_log_impl(&dword_2456DE000, v41, v42, "Selfie capture failed to capture photo: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    MEMORY[0x245D712D0](v44, -1, -1);
    MEMORY[0x245D712D0](v43, -1, -1);

    (*(v7 + 8))(v10, v58);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_245700D9C(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_245703F74(void *a1)
{
  v3 = [a1 orientation] - 2;
  if (v3 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_24574AF20[v3];
  }

  v5 = [a1 buffer];
  v6 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];

  v7 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCIImage:v6 scale:v4 orientation:1.0];
  [v7 size];
  v9 = v8;
  [v7 size];
  if (!*(v1 + 88))
  {
    v9 = *(v1 + 80);
  }

  if (*(v1 + 104))
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v1 + 96);
  }

  [v7 size];
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = v9;
  v25.size.height = v11;
  v24 = AVMakeRectWithAspectRatioInsideRect(v23, v25);
  width = v24.size.width;
  height = v24.size.height;
  v14 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v15 = swift_allocObject();
  *(v15 + 2) = v7;
  v15[3] = width;
  v15[4] = height;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2456F3CFC;
  *(v16 + 24) = v15;
  v22[4] = sub_245705AA4;
  v22[5] = v16;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_245703158;
  v22[3] = &block_descriptor_3;
  v17 = _Block_copy(v22);
  v18 = v7;

  v19 = [v14 imageWithActions_];

  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_245704218(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_245748810();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_2457487F0();
  v8 = a1;

  v9 = sub_2457487E0();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = v2;
  sub_245736B60(0, 0, v6, &unk_24574AED0, v10);

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = off_28587A600;
    type metadata accessor for RGBLivenessController(0);
    v13(v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24570439C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_245747E60();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_245747C30();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE24860, &unk_24574AF10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v32 - v14);
  sub_245703098(a1, &v32 - v14, qword_27EE24860, &unk_24574AF10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    if (*(v2 + 161) == 1)
    {
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_14:
        (*(v10 + 8))(v12, v9);
        return;
      }

      sub_24570040C(v12);
    }

    else
    {
      (*(v10 + 16))(v8, v12, v9);
      (*(v10 + 56))(v8, 0, 1, v9);
      v26 = OBJC_IVAR____TtC18CoreIDVRGBLiveness23RGBLivenessImageManager_videoURL;
      swift_beginAccess();
      sub_2456E729C(v8, v2 + v26);
      swift_endAccess();
      sub_245705CDC(v12);
      v27 = sub_245747CE0();
      v28 = sub_245703494(v27);
      if (v28)
      {
        v29 = v28;
        v30 = sub_245747BF0();
        [v29 storeUnencryptedVideoFrom_];

        swift_unknownObjectRelease();
      }

      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_14;
      }

      v31 = off_28587A620;
      type metadata accessor for RGBLivenessController(0);
      v31(v12);
    }

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v16 = *v15;
  v17 = v32;
  sub_245747CF0();
  v18 = v16;
  v19 = sub_245747E50();
  v20 = sub_245748920();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v35[0] = v22;
    *v21 = 136315138;
    swift_getErrorValue();
    v23 = sub_245748C20();
    v25 = sub_24572EDDC(v23, v24, v35);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_2456DE000, v19, v20, "Capturing video failed: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x245D712D0](v22, -1, -1);
    MEMORY[0x245D712D0](v21, -1, -1);
  }

  (*(v33 + 8))(v17, v34);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_245700D9C(v16);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_245704888(uint64_t a1)
{
  v2 = sub_245747E60();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v42 = &v41 - v6;
  v7 = sub_245747C30();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A70, &unk_24574AEE0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v41 - v15);
  sub_245703098(a1, &v41 - v15, &qword_27EE24A70, &unk_24574AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    sub_245747CF0();
    v18 = v17;
    v19 = sub_245747E50();
    v20 = sub_245748920();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v45 = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = sub_245748C20();
      v25 = sub_24572EDDC(v23, v24, &v45);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2456DE000, v19, v20, "Trimming live photo failed: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x245D712D0](v22, -1, -1);
      MEMORY[0x245D712D0](v21, -1, -1);
    }

    (*(v43 + 8))(v5, v44);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_245700D9C(v17);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    (*(v8 + 32))(v13, v16, v7);
    sub_245747CF0();
    (*(v8 + 16))(v11, v13, v7);
    v26 = sub_245747E50();
    v27 = sub_245748910();
    v28 = v7;
    if (os_log_type_enabled(v26, v27))
    {
      v29 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v45 = v41;
      *v29 = 136315138;
      v30 = sub_245747BD0();
      v31 = v7;
      v33 = v32;
      v34 = *(v8 + 8);
      v34(v11, v31);
      v35 = sub_24572EDDC(v30, v33, &v45);
      v28 = v31;

      *(v29 + 4) = v35;
      _os_log_impl(&dword_2456DE000, v26, v27, "Trimmed Live Photo is ready at %s.", v29, 0xCu);
      v36 = v41;
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x245D712D0](v36, -1, -1);
      MEMORY[0x245D712D0](v29, -1, -1);
    }

    else
    {

      v34 = *(v8 + 8);
      v34(v11, v28);
    }

    (*(v43 + 8))(v42, v44);
    v37 = sub_245705CDC(v13);
    v38 = sub_245703494(v37);
    if (v38)
    {
      v39 = v38;
      v40 = sub_245747BF0();
      [v39 storeUnencryptedVideoFrom_];

      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2457009F0(v13);
      swift_unknownObjectRelease();
    }

    v34(v13, v28);
  }
}

uint64_t sub_245704DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2457487F0();
  v5[4] = sub_2457487E0();
  v7 = sub_2457487C0();

  return MEMORY[0x2822009F8](sub_245704E70, v7, v6);
}

uint64_t sub_245704E70()
{
  v1 = v0[2];

  v2 = [v1 faces];
  sub_2456E730C(0, &qword_27EE247D8, 0x277CFF228);
  v3 = sub_2457487A0();

  if (v3 >> 62)
  {
    result = sub_245748B70();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:

    goto LABEL_12;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x245D70890](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;
  v7 = v0[3];

  [v6 bounds];

  CGRectVN2AV();
  v12 = *(v7 + 176);
  if (v12)
  {
    v13 = v11;
    v14 = v10;
    v15 = v9;
    v16 = v8;
    sub_2456E730C(0, &qword_27EE248B0, 0x277CBEBD0);
    v17 = v12;
    v18 = sub_245747D50();
    v19 = MEMORY[0x245D70730](v18);

    if (v19)
    {
      v20 = sub_245728620();
      [v20 setBorderWidth_];

      v21 = *&v17[OBJC_IVAR____TtC18CoreIDVRGBLiveness24RGBLivenessCameraPreview____lazy_storage___objectLayer];
      v22 = sub_245728334();
      [v22 rectForMetadataOutputRectOfInterest_];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      [v21 setFrame_];
    }

    else
    {
    }
  }

LABEL_12:
  v31 = v0[3];
  v32 = v31[22];
  if (v32)
  {
    v33 = v32;
    v34 = sub_245728334();
    [v33 frame];
    [v34 metadataOutputRectOfInterestForRect_];

    v31 = v0[3];
  }

  CGRectAV2VN();
  v31[15] = v37;
  v31[16] = v38;
  v31[17] = v39;
  v31[18] = v40;
  v41 = v0[1];

  return v41();
}

uint64_t sub_245705198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_245747E60();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245705258, 0, 0);
}

uint64_t sub_245705258()
{
  v1 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v2 = sub_245747BF0();
  v0[7] = [v1 initWithURL:v2 options:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A78, &qword_24574AF00);
  v3 = sub_245747CD0();
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_245705364;

  return MEMORY[0x2821FAF00](v0 + 11, v3, 0, 0);
}

uint64_t sub_245705364()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_245705518;
  }

  else
  {
    v4 = *(v2 + 56);

    v3 = sub_245705484;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_245705484()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = *(v0 + 24);
  *(v0 + 112) = *(v0 + 88);
  *(v0 + 120) = v2;
  *(v0 + 128) = v1;
  Seconds = CMTimeGetSeconds((v0 + 112));
  sub_24571E538(v3, Seconds);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_245705518()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  v3 = *MEMORY[0x277CC08F0];
  v4 = *(MEMORY[0x277CC08F0] + 8);
  v5 = *(MEMORY[0x277CC08F0] + 16);
  sub_245747CF0();
  v6 = v1;
  v7 = sub_245747E50();
  v8 = sub_245748920();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 80);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2456DE000, v7, v8, "Failed to retrieve asset duration: %@", v11, 0xCu);
    sub_2456EEF50(v12, qword_27EE24A80, &qword_24574AF08);
    MEMORY[0x245D712D0](v12, -1, -1);
    MEMORY[0x245D712D0](v11, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  v15 = *(v0 + 24);
  *(v0 + 112) = v3;
  *(v0 + 120) = v4;
  *(v0 + 128) = v5;
  Seconds = CMTimeGetSeconds((v0 + 112));
  sub_24571E538(v15, Seconds);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2457056F0()
{
  sub_2456EEF28(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  sub_2457058E0(*(v0 + 168));

  sub_2456EEF50(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness23RGBLivenessImageManager_videoURL, &qword_27EE244D0, &unk_245749FF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RGBLivenessImageManager(uint64_t a1)
{
  result = qword_27EE24A58;
  if (!qword_27EE24A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2457057E8(uint64_t a1)
{
  sub_2456E5E10(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2457058E0(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2457058F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2456EEC10;

  return sub_245704DD8(a1, v4, v5, v7, v6);
}

char *sub_2457059BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_245705AE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2457059DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_245705BD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_2456E6F9C(a2 + 32, a1 + 32);
}

char *sub_245705AE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A40, &qword_24574ACD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_245705BD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A68, &qword_24574AED8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

uint64_t sub_245705CDC(uint64_t a1)
{
  v71[4] = *MEMORY[0x277D85DE8];
  v2 = sub_245747C30();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v59[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = v5;
  MEMORY[0x28223BE20](v4);
  v69 = &v59[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = &v59[-v9];
  v10 = sub_245747E60();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v59[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v64 = &v59[-v15];
  MEMORY[0x28223BE20](v14);
  v17 = &v59[-v16];
  v18 = sub_24572FB08(MEMORY[0x277D84F90]);
  v19 = [objc_opt_self() defaultManager];
  sub_245747C20();
  v20 = sub_2457486C0();

  v71[0] = 0;
  v21 = [v19 attributesOfItemAtPath:v20 error:v71];

  v22 = v71[0];
  if (v21)
  {

    type metadata accessor for FileAttributeKey(0);
    sub_245706598();
    v18 = sub_245748660();

    v24 = v65;
    v23 = v66;
    if (!*(v18 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v25 = v22;
    v26 = sub_245747BB0();

    swift_willThrow();
    sub_245747CF0();
    (*(v3 + 16))(v6, a1, v2);
    v27 = v26;
    v28 = sub_245747E50();
    v29 = sub_245748920();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v62 = a1;
      v31 = v30;
      v61 = swift_slowAlloc();
      v71[0] = v61;
      *v31 = 136315394;
      v60 = v29;
      v32 = sub_245747C20();
      v63 = v2;
      v34 = v33;
      (*(v3 + 8))(v6, v63);
      v35 = sub_24572EDDC(v32, v34, v71);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      swift_getErrorValue();
      v36 = sub_245748C20();
      v38 = sub_24572EDDC(v36, v37, v71);

      *(v31 + 14) = v38;
      v2 = v63;
      _os_log_impl(&dword_2456DE000, v28, v60, "Failed to retrieve file size for item at path %s, error: %s", v31, 0x16u);
      v39 = v61;
      swift_arrayDestroy();
      MEMORY[0x245D712D0](v39, -1, -1);
      v40 = v31;
      a1 = v62;
      MEMORY[0x245D712D0](v40, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v24 = v65;
    v41 = v13;
    v23 = v66;
    (*(v65 + 8))(v41, v66);
    if (!*(v18 + 16))
    {
      goto LABEL_11;
    }
  }

  v42 = sub_24572F384(*MEMORY[0x277CCA1C0]);
  if ((v43 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_2456E6F9C(*(v18 + 56) + 32 * v42, v71);

  if (swift_dynamicCast())
  {
    v44 = v70;
    goto LABEL_15;
  }

LABEL_12:
  sub_245747CF0();
  v45 = sub_245747E50();
  v46 = sub_245748920();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_2456DE000, v45, v46, "Failed to retrieve file size from fileAttributes.", v47, 2u);
    MEMORY[0x245D712D0](v47, -1, -1);
  }

  (*(v24 + 8))(v17, v23);
  v44 = 0;
LABEL_15:
  v48 = v64;
  sub_245747CF0();
  v49 = sub_245747E50();
  v50 = sub_245748910();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 134217984;
    *(v51 + 4) = v44;
    _os_log_impl(&dword_2456DE000, v49, v50, "Video is ready. Got %llu bytes", v51, 0xCu);
    MEMORY[0x245D712D0](v51, -1, -1);
  }

  (*(v24 + 8))(v48, v23);
  v52 = sub_245748810();
  v53 = v67;
  (*(*(v52 - 8) + 56))(v67, 1, 1, v52);
  v54 = v69;
  (*(v3 + 16))(v69, a1, v2);
  v55 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v56 = (v68 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  (*(v3 + 32))(v57 + v55, v54, v2);
  *(v57 + v56) = v44;
  sub_245736B60(0, 0, v53, &unk_24574AEF8, v57);
}

uint64_t sub_245706468(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_245706478(uint64_t a1)
{
  v4 = *(sub_245747C30() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2456F3D40;

  return sub_245705198(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_245706598()
{
  result = qword_27EE244C0;
  if (!qword_27EE244C0)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE244C0);
  }

  return result;
}

uint64_t sub_2457065F8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_24570698C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_245706680(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_2457067BC(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_24570698C()
{
  result = qword_27EE24B08;
  if (!qword_27EE24B08)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27EE24B08);
  }

  return result;
}

void sub_245706A00(uint64_t a1)
{
  type metadata accessor for RGBLivenessModel.PassiveConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_245706B24();
    if (v2 <= 0x3F)
    {
      sub_2457076E4(319, &qword_27EE24B28, &type metadata for RGBLivenessError, " isCycle ");
      if (v3 <= 0x3F)
      {
        type metadata accessor for RGBLivenessResult(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_245706B24()
{
  result = qword_27EE24B20;
  if (!qword_27EE24B20)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27EE24B20);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_245706B70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_245706BB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RGBLivenessModel.MonitoringFinishedConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RGBLivenessModel.MonitoringFinishedConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_245706CF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_245706D54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_245706DC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_245706E24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RGBLivenessModel.StandbyConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for RGBLivenessModel.StandbyConfiguration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24570701C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_245707078(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_245707110(uint64_t a1)
{
  v1 = MEMORY[0x277D839B0];
  sub_2457072C4(319, &qword_27EE24B40, MEMORY[0x277D83B88]);
  if (v2 <= 0x3F)
  {
    sub_24570726C(319, &qword_27EE24B48, &qword_27EE24B50, 0x277D755B8);
    if (v3 <= 0x3F)
    {
      sub_24570726C(319, &qword_27EE24B58, &qword_27EE24B60, 0x277CFF230);
      if (v4 <= 0x3F)
      {
        sub_2457072C4(319, &qword_27EE24B68, &type metadata for RGBLivenessImageQualityGuidance);
        if (v5 <= 0x3F)
        {
          sub_2456E5E10(319);
          if (v6 <= 0x3F)
          {
            sub_2457072C4(319, &qword_27EE24B70, v1);
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24570726C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_2456E730C(255, a3, a4);
    v5 = sub_245748A40();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2457072C4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_245748A40();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_245707390(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2457073C8(uint64_t a1)
{
  sub_245707550();
  if (v1 <= 0x3F)
  {
    sub_245707580();
    if (v2 <= 0x3F)
    {
      sub_2457075B0();
      if (v3 <= 0x3F)
      {
        sub_2457075E0();
        if (v4 <= 0x3F)
        {
          type metadata accessor for PADLivenessGesture(319);
          if (v5 <= 0x3F)
          {
            sub_2456E730C(319, &qword_27EE24B60, 0x277CFF230);
            if (v6 <= 0x3F)
            {
              sub_245747C30();
              if (v7 <= 0x3F)
              {
                sub_245707610(319);
                if (v8 <= 0x3F)
                {
                  sub_24570767C(319);
                  if (v9 <= 0x3F)
                  {
                    sub_2457076E4(319, &qword_27EE24BB8, MEMORY[0x277D839B0], "isSelfieRequired didSkipLastGesture ");
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for RGBLivenessResult(319);
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
  }
}

ValueMetadata *sub_245707550()
{
  result = qword_27EE24B88;
  if (!qword_27EE24B88)
  {
    result = &type metadata for RGBLivenessModel.Chute;
    atomic_store(&type metadata for RGBLivenessModel.Chute, &qword_27EE24B88);
  }

  return result;
}

uint64_t sub_245707580()
{
  result = qword_27EE24B90;
  if (!qword_27EE24B90)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27EE24B90);
  }

  return result;
}

uint64_t sub_2457075B0()
{
  result = qword_27EE24B98;
  if (!qword_27EE24B98)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27EE24B98);
  }

  return result;
}

uint64_t sub_2457075E0()
{
  result = qword_27EE24BA0;
  if (!qword_27EE24BA0)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27EE24BA0);
  }

  return result;
}

void sub_245707610(uint64_t a1)
{
  if (!qword_27EE24BA8)
  {
    sub_245747C30();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE24BA8);
    }
  }
}

void sub_24570767C(uint64_t a1)
{
  if (!qword_27EE24BB0)
  {
    type metadata accessor for PADLivenessGesture(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE24BB0);
    }
  }
}

void sub_2457076E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for LivenessAnalyticsAlertCause(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LivenessAnalyticsAlertCause(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2457078AC()
{
  result = qword_27EE24BC0;
  if (!qword_27EE24BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE24BC0);
  }

  return result;
}

unint64_t sub_245707900()
{
  v1 = type metadata accessor for RGBLivenessModel.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245709900(v0, v3, type metadata accessor for RGBLivenessModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x7075746573;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
      sub_24570CE00(v3, type metadata accessor for RGBLivenessModel.State);
      result = 0xD000000000000010;
      break;
    case 3:
      sub_24570CE00(v3, type metadata accessor for RGBLivenessModel.State);
      result = 0xD000000000000012;
      break;
    case 4:
      sub_24570CE00(v3, type metadata accessor for RGBLivenessModel.State);
      result = 0x656C626D61657270;
      break;
    case 5:
      result = 0x7962646E617473;
      break;
    case 6:
      sub_24570CE00(v3, type metadata accessor for RGBLivenessModel.State);
      result = 0x5465727574736567;
      break;
    case 7:
      sub_24570CE00(v3, type metadata accessor for RGBLivenessModel.State);
      result = 0x6C6169726F747574;
      break;
    case 8:
      sub_24570CE00(v3, type metadata accessor for RGBLivenessModel.State);
      result = 0x626D616572507861;
      break;
    case 9:
      sub_24570CE00(v3, type metadata accessor for RGBLivenessModel.State);
      result = 0x69726F74696E6F6DLL;
      break;
    case 10:
      sub_24570CE00(v3, type metadata accessor for RGBLivenessModel.State);
      result = 0x4365727574736567;
      break;
    case 11:
      sub_24570CE00(v3, type metadata accessor for RGBLivenessModel.State);
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
    case 15:
      sub_24570CE00(v3, type metadata accessor for RGBLivenessModel.State);
      result = 0x72506569666C6573;
      break;
    case 14:
      result = 0x61436569666C6573;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x64656C696166;
      break;
    case 18:
      result = 0x74726174736572;
      break;
    case 19:
      sub_24570CE00(v3, type metadata accessor for RGBLivenessModel.State);
      result = 0x64656873696E6966;
      break;
    case 20:
      return result;
    default:
      sub_24570CE00(v3, type metadata accessor for RGBLivenessModel.State);
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_245707D8C()
{
  v0 = sub_245707900();
  v2 = v1;
  if (v0 == sub_245707900() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_245748BC0();
  }

  return v4 & 1;
}

uint64_t sub_245707E1C()
{
  v1 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245709900(v0, v3, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x6C65636E6163;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v22 = *v3;
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      sub_245748AA0();

      v23 = 0x80000002457583D0;
      v24 = 0xD00000000000001FLL;
      goto LABEL_38;
    case 2:
      v22 = *v3;
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      sub_245748AA0();

      v23 = 0x8000000245758340;
      v24 = 0xD000000000000022;
      goto LABEL_38;
    case 3:
      v13 = *v3;
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      sub_245748AA0();

      v52[0] = 0xD000000000000020;
      v52[1] = 0x8000000245758310;
      v51 = v13;
      sub_24570CDAC();
      v8 = sub_245748C20();
      goto LABEL_46;
    case 4:
      v22 = *v3;
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      sub_245748AA0();

      v23 = 0x80000002457582A0;
      v24 = 0xD000000000000020;
LABEL_38:
      v52[0] = v24;
      v52[1] = v23;
      v7 = v22 == 0;
      if (v22)
      {
        v8 = 1702195828;
      }

      else
      {
        v8 = 0x65736C6166;
      }

      v9 = 0xE500000000000000;
      v10 = 0xE400000000000000;
      goto LABEL_42;
    case 5:
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_75;
      }

      v34 = result;
      v17 = 0x8000000245758280;
      v18 = sub_245748700();
      v20 = v35;

      v21 = 0xD000000000000019;
      goto LABEL_63;
    case 6:
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_73;
      }

      v25 = result;
      v26 = "gestureRetried(gesture: ";
      goto LABEL_59;
    case 7:
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_77;
      }

      v25 = result;
      v26 = "gestureSkipped(gesture: ";
LABEL_59:
      v17 = (v26 - 32) | 0x8000000000000000;
      v18 = sub_245748700();
      v20 = v47;

      v21 = 0xD000000000000018;
      goto LABEL_63;
    case 8:
      result = PADLivenessGestureToString();
      if (result)
      {
        v16 = result;
        v17 = 0x8000000245758210;
        v18 = sub_245748700();
        v20 = v19;

        v21 = 0xD000000000000023;
LABEL_63:
        v52[0] = v21;
        v52[1] = v17;
        MEMORY[0x245D70540](v18, v20);
LABEL_64:

        MEMORY[0x245D70540](41, 0xE100000000000000);

        return v52[0];
      }

      else
      {
        __break(1u);
LABEL_73:
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
      }

      return result;
    case 9:
      v46 = *v3;
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      sub_245748AA0();
      MEMORY[0x245D70540](0x2874726174736572, 0xEF203A6573756163);
      v51 = v46;
      goto LABEL_55;
    case 10:
      v12 = *v3;
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      sub_245748AA0();
      MEMORY[0x245D70540](0xD000000000000015, 0x80000002457581F0);
      v51 = v12;
LABEL_55:
      sub_245748B50();
      goto LABEL_56;
    case 11:
      sub_24570CE00(v3, type metadata accessor for RGBLivenessModel.Event);
      v15 = 0x43656D617266;
      return v15 & 0xFFFFFFFFFFFFLL | 0x7061000000000000;
    case 12:
      sub_24570CE00(v3, type metadata accessor for RGBLivenessModel.Event);
      return 0x61436569666C6573;
    case 13:
      sub_24570CE00(v3, type metadata accessor for RGBLivenessModel.Event);
      return 0xD000000000000019;
    case 14:
      sub_24570CE00(v3, type metadata accessor for RGBLivenessModel.Event);
      v15 = 0x436F65646976;
      return v15 & 0xFFFFFFFFFFFFLL | 0x7061000000000000;
    case 15:
      v11 = sub_245747C30();
      (*(*(v11 - 8) + 8))(v3, v11);
      return 0xD000000000000011;
    case 16:
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_74;
      }

      v27 = result;
      v17 = 0x8000000245758130;
      v18 = sub_245748700();
      v20 = v28;

      v21 = 0xD00000000000001DLL;
      goto LABEL_63;
    case 17:
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_76;
      }

      v36 = result;
      v37 = sub_245748700();
      v39 = v38;

      v52[0] = 0xD000000000000021;
      v52[1] = 0x8000000245758100;
      MEMORY[0x245D70540](v37, v39);

      MEMORY[0x245D70540](0x203A7478656E202CLL, 0xE800000000000000);

      v40 = v52[0];
      v41 = v52[1];
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_79;
      }

      v42 = result;
      v43 = sub_245748700();
      v45 = v44;

      v52[0] = v40;
      v52[1] = v41;

      MEMORY[0x245D70540](v43, v45);

      goto LABEL_64;
    case 18:
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_78;
      }

      v48 = result;
      v17 = 0x80000002457580D0;
      v18 = sub_245748700();
      v20 = v49;

      v21 = 0xD000000000000022;
      goto LABEL_63;
    case 19:
      v29 = *v3;
      v30 = v3[1];
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      sub_245748AA0();
      MEMORY[0x245D70540](0xD00000000000002BLL, 0x8000000245758080);
      if (v29)
      {
        v31 = 1702195828;
      }

      else
      {
        v31 = 0x65736C6166;
      }

      if (v29)
      {
        v32 = 0xE400000000000000;
      }

      else
      {
        v32 = 0xE500000000000000;
      }

      MEMORY[0x245D70540](v31, v32);

      MEMORY[0x245D70540](0xD000000000000016, 0x80000002457580B0);
      if (v30)
      {
        v8 = 1702195828;
      }

      else
      {
        v8 = 0x65736C6166;
      }

      if (v30)
      {
        v33 = 0xE400000000000000;
      }

      else
      {
        v33 = 0xE500000000000000;
      }

      goto LABEL_45;
    case 20:
      sub_24570CE00(v3, type metadata accessor for RGBLivenessModel.Event);
      return 0xD000000000000013;
    case 21:
      return result;
    case 22:
    case 29:
      return 0xD000000000000013;
    case 23:
      return 0xD000000000000012;
    case 24:
      return 0xD000000000000015;
    case 25:
      return 0xD00000000000001ALL;
    case 26:
      return 0xD000000000000019;
    case 27:
      return 0xD000000000000019;
    case 28:
      return 0xD000000000000010;
    case 30:
      return 0xD000000000000018;
    case 31:
      return 0x6544686374697473;
    default:
      v6 = *v3;
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      sub_245748AA0();

      strcpy(v52, "start(chute: ");
      HIWORD(v52[1]) = -4864;
      v7 = v6 == 0;
      if (v6)
      {
        v8 = 0x65766973736170;
      }

      else
      {
        v8 = 0x657669746361;
      }

      v9 = 0xE600000000000000;
      v10 = 0xE700000000000000;
LABEL_42:
      if (v7)
      {
        v33 = v9;
      }

      else
      {
        v33 = v10;
      }

LABEL_45:
      v14 = v33;
LABEL_46:
      MEMORY[0x245D70540](v8, v14);

LABEL_56:
      MEMORY[0x245D70540](41, 0xE100000000000000);
      return v52[0];
  }
}

uint64_t sub_2457087C8()
{
  v1 = *v0;
  sub_245748C80();
  MEMORY[0x245D70A70](v1);
  return sub_245748CB0();
}

uint64_t sub_24570883C()
{
  v1 = *v0;
  sub_245748C80();
  MEMORY[0x245D70A70](v1);
  return sub_245748CB0();
}

uint64_t sub_245708880()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24BC8, &qword_24574CAB0);
  __swift_allocate_value_buffer(v0, qword_27EE258E8);
  v1 = __swift_project_value_buffer(v0, qword_27EE258E8);
  type metadata accessor for RGBLivenessModel.State(0);
  result = swift_storeEnumTagMultiPayload();
  v3 = (v1 + *(v0 + 36));
  *v3 = sub_2457089A4;
  v3[1] = 0;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2457089A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v106 = a1;
  v108 = a3;
  v4 = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v104 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  *&v105 = &v103 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v103 = &v103 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v103 - v11;
  *&v109 = type metadata accessor for RGBLivenessModel.State(0);
  MEMORY[0x28223BE20](v109);
  v14 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RGBLivenessModel.Event(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (&v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v103 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v103 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v103 - v26);
  MEMORY[0x28223BE20](v25);
  v29 = &v103 - v28;
  v107 = a2;
  sub_245709900(a2, &v103 - v28, type metadata accessor for RGBLivenessModel.Event);
  v117 = v29;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v31 = *v117;
LABEL_6:
    sub_24570CDAC();
    swift_allocError();
    *v34 = v31;
    return swift_willThrow();
  }

  if (EnumCaseMultiPayload == 10)
  {
    v31 = *v117;
    if (((1 << *v117) & 0x33C) != 0)
    {
      v32 = v108;
      *v108 = v31;
      v32[1] = 0;
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_6;
  }

  v35 = v106;
  sub_245709900(v106, v14, type metadata accessor for RGBLivenessModel.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v62 = v103;
      sub_24570CE90(v14, v103, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      v36 = v107;
      v63 = v110;
      sub_245709F44(v107, v62, v108);
      goto LABEL_37;
    case 2u:
      v62 = v105;
      sub_24570CE90(v14, v105, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      v36 = v107;
      v63 = v110;
      sub_24570A420(v107, v62, v108);
      goto LABEL_37;
    case 3u:
      v62 = v104;
      sub_24570CE90(v14, v104, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      v36 = v107;
      v63 = v110;
      sub_24570AAF0(v107, v62, v108);
LABEL_37:
      v38 = v63;
      if (v63)
      {
        v39 = type metadata accessor for RGBLivenessModel.PassiveConfiguration;
        v40 = v62;
        goto LABEL_70;
      }

      v72 = v62;
      goto LABEL_93;
    case 4u:
      v51 = v14[40];
      v115[0] = *v14;
      v105 = *(v14 + 8);
      *&v115[8] = v105;
      v109 = *(v14 + 24);
      *&v115[24] = v109;
      v115[40] = v51;
      v36 = v107;
      v52 = v110;
      sub_24570AD60(v107, v115, v108);
      goto LABEL_54;
    case 5u:
      if (v14[1])
      {
        v77 = 256;
      }

      else
      {
        v77 = 0;
      }

      v36 = v107;
      v78 = v110;
      sub_24570AF54(v107, v77 | *v14, v108);
      v38 = v78;
      if (!v78)
      {
        goto LABEL_94;
      }

      goto LABEL_71;
    case 6u:
      v80 = *(v14 + 1);
      *v115 = *v14;
      *&v115[16] = v80;
      v82 = *v14;
      v81 = *(v14 + 1);
      *&v115[32] = *(v14 + 2);
      *&v115[41] = *(v14 + 41);
      v111 = v82;
      v112 = v81;
      *v113 = *(v14 + 2);
      *&v113[9] = *(v14 + 41);
      v36 = v107;
      v71 = v110;
      sub_24570B130(v107, &v111, v108);
      goto LABEL_66;
    case 7u:
      v68 = *(v14 + 1);
      *v115 = *v14;
      *&v115[16] = v68;
      v70 = *v14;
      v69 = *(v14 + 1);
      *&v115[32] = *(v14 + 2);
      *&v115[41] = *(v14 + 41);
      v111 = v70;
      v112 = v69;
      *v113 = *(v14 + 2);
      *&v113[9] = *(v14 + 41);
      v36 = v107;
      v71 = v110;
      sub_24570B4F4(v107, &v111, v108);
      goto LABEL_66;
    case 8u:
      v88 = *(v14 + 1);
      *v115 = *v14;
      *&v115[16] = v88;
      v90 = *v14;
      v89 = *(v14 + 1);
      *&v115[32] = *(v14 + 2);
      *&v115[41] = *(v14 + 41);
      v111 = v90;
      v112 = v89;
      *v113 = *(v14 + 2);
      *&v113[9] = *(v14 + 41);
      v36 = v107;
      v71 = v110;
      sub_24570B76C(v107, &v111, v108);
LABEL_66:
      v38 = v71;
      if (v71)
      {
        sub_2457028DC(v115);
        goto LABEL_71;
      }

      sub_2457028DC(v115);
      goto LABEL_94;
    case 9u:
      v58 = *(v14 + 1);
      v59 = *(v14 + 3);
      *&v115[32] = *(v14 + 2);
      *&v115[48] = v59;
      v60 = *(v14 + 1);
      *v115 = *v14;
      *&v115[16] = v60;
      v61 = *(v14 + 3);
      *v113 = *&v115[32];
      *&v113[16] = v61;
      v116 = *(v14 + 8);
      v114 = *(v14 + 8);
      v111 = *v115;
      v112 = v58;
      v36 = v107;
      v50 = v110;
      sub_24570BA14(v107, &v111, v108);
      goto LABEL_62;
    case 0xAu:
      v84 = *(v14 + 1);
      v85 = *(v14 + 3);
      *&v115[32] = *(v14 + 2);
      *&v115[48] = v85;
      v86 = *(v14 + 1);
      *v115 = *v14;
      *&v115[16] = v86;
      v87 = *(v14 + 3);
      *v113 = *&v115[32];
      *&v113[16] = v87;
      v116 = *(v14 + 8);
      v114 = *(v14 + 8);
      v111 = *v115;
      v112 = v84;
      v36 = v107;
      v50 = v110;
      sub_24570BDC8(v107, &v111, v108);
      goto LABEL_62;
    case 0xBu:
      v46 = *(v14 + 1);
      v47 = *(v14 + 3);
      *&v115[32] = *(v14 + 2);
      *&v115[48] = v47;
      v48 = *(v14 + 1);
      *v115 = *v14;
      *&v115[16] = v48;
      v49 = *(v14 + 3);
      *v113 = *&v115[32];
      *&v113[16] = v49;
      v116 = *(v14 + 8);
      v114 = *(v14 + 8);
      v111 = *v115;
      v112 = v46;
      v36 = v107;
      v50 = v110;
      sub_24570C02C(v107, &v111, v108);
LABEL_62:
      v38 = v50;
      if (v50)
      {
        sub_245702888(v115);
        goto LABEL_71;
      }

      sub_245702888(v115);
      goto LABEL_94;
    case 0xCu:
      v53 = 0x100000000;
      if (!v14[4])
      {
        v53 = 0;
      }

      v54 = 0x1000000;
      if (!v14[3])
      {
        v54 = 0;
      }

      v55 = 0x10000;
      if (!v14[2])
      {
        v55 = 0;
      }

      v56 = 256;
      if (!v14[1])
      {
        v56 = 0;
      }

      v36 = v107;
      v57 = v110;
      sub_24570C2D0(v107, v56 | *v14 | v55 | v54 | v53, v108);
      v38 = v57;
      if (!v57)
      {
        goto LABEL_94;
      }

      goto LABEL_71;
    case 0xDu:
      v79 = v14[40];
      v115[0] = *v14;
      v105 = *(v14 + 8);
      *&v115[8] = v105;
      v109 = *(v14 + 24);
      *&v115[24] = v109;
      v115[40] = v79;
      v36 = v107;
      v52 = v110;
      sub_24570C594(v107, v115, v108);
LABEL_54:
      v38 = v52;
      if (v52)
      {

        goto LABEL_71;
      }

      goto LABEL_94;
    case 0xEu:
      v36 = v107;
      sub_245709900(v107, v27, type metadata accessor for RGBLivenessModel.Event);
      v42 = swift_getEnumCaseMultiPayload();
      if (v42 <= 12)
      {
        if (v42 != 11)
        {
          v43 = v117;
          if (v42 == 12)
          {
            v44 = v27[1];
            v45 = v108;
            *v108 = *v27;
            *(v45 + 1) = v44;
            *(v45 + 2) = v27[2];
            *(v45 + 41) = *(v27 + 41);
            goto LABEL_90;
          }

          goto LABEL_83;
        }

        goto LABEL_88;
      }

      if (v42 == 13)
      {
LABEL_88:
        sub_24570CE00(v27, type metadata accessor for RGBLivenessModel.Event);
        v43 = v117;
        goto LABEL_89;
      }

      v43 = v117;
      if (v42 != 30)
      {
LABEL_83:
        sub_24570CDAC();
        v38 = swift_allocError();
        *v95 = 6;
        swift_willThrow();
        sub_24570CE00(v27, type metadata accessor for RGBLivenessModel.Event);
        goto LABEL_72;
      }

LABEL_89:
      *v108 = 1;
LABEL_90:
      swift_storeEnumTagMultiPayload();
      return sub_24570CE00(v43, type metadata accessor for RGBLivenessModel.Event);
    case 0xFu:
      v64 = *(v14 + 1);
      *v115 = *v14;
      *&v115[16] = v64;
      v66 = *v14;
      v65 = *(v14 + 1);
      *&v115[32] = *(v14 + 2);
      *&v115[41] = *(v14 + 41);
      v111 = v66;
      v112 = v65;
      *v113 = *(v14 + 2);
      *&v113[9] = *(v14 + 41);
      v36 = v107;
      v67 = v110;
      sub_24570C7A8(v107, &v111, v108);
      v38 = v67;
      if (v67)
      {
        sub_24570CE60(v115);
        goto LABEL_71;
      }

      sub_24570CE60(v115);
      goto LABEL_94;
    case 0x10u:
      v36 = v107;
      sub_245709900(v107, v24, type metadata accessor for RGBLivenessModel.Event);
      v41 = swift_getEnumCaseMultiPayload();
      if (v41 > 19)
      {
        if (v41 == 30)
        {
          goto LABEL_80;
        }

        if (v41 == 20)
        {
          sub_24570CE90(v24, v108, type metadata accessor for RGBLivenessResult);
          swift_storeEnumTagMultiPayload();
          goto LABEL_94;
        }
      }

      else if (v41 == 11 || v41 == 13)
      {
        sub_24570CE00(v24, type metadata accessor for RGBLivenessModel.Event);
LABEL_80:
        *v108 = 1;
        swift_storeEnumTagMultiPayload();
        goto LABEL_94;
      }

      sub_24570CDAC();
      v38 = swift_allocError();
      *v98 = 6;
      swift_willThrow();
      v39 = type metadata accessor for RGBLivenessModel.Event;
      v40 = v24;
LABEL_70:
      sub_24570CE00(v40, v39);
LABEL_71:
      v43 = v117;
      goto LABEL_72;
    case 0x11u:
      v73 = *v14;
      sub_245709900(v107, v21, type metadata accessor for RGBLivenessModel.Event);
      v74 = swift_getEnumCaseMultiPayload();
      if (v74 > 0x1E)
      {
        goto LABEL_100;
      }

      if (((1 << v74) & 0x400A0010) != 0)
      {
        goto LABEL_44;
      }

      if (((1 << v74) & 0x2800) != 0)
      {
        sub_24570CE00(v21, type metadata accessor for RGBLivenessModel.Event);
LABEL_44:
        v75 = v108;
        *v108 = v73;
        v75[1] = 1;
        goto LABEL_45;
      }

      if (v74 == 22)
      {
        *v108 = 0;
LABEL_45:
        swift_storeEnumTagMultiPayload();
        goto LABEL_94;
      }

LABEL_100:
      sub_24570CDAC();
      v38 = swift_allocError();
      *v102 = 6;
      swift_willThrow();
      sub_24570CE00(v21, type metadata accessor for RGBLivenessModel.Event);
      v43 = v117;
      v36 = v107;
      goto LABEL_72;
    case 0x12u:
      v36 = v107;
      sub_245709900(v107, v18, type metadata accessor for RGBLivenessModel.Event);
      v83 = swift_getEnumCaseMultiPayload();
      if (v83 > 15)
      {
        v43 = v117;
        if (v83 == 30)
        {
          goto LABEL_87;
        }

        if (v83 == 16)
        {
          v96 = *v18;
          v97 = v108;
          *v108 = 0;
          *(v97 + 1) = v96;
          *(v97 + 1) = 0u;
          *(v97 + 2) = 0u;
          *(v97 + 41) = 0u;
          goto LABEL_90;
        }
      }

      else
      {
        v43 = v117;
        if (v83 == 11 || v83 == 13)
        {
          sub_24570CE00(v18, type metadata accessor for RGBLivenessModel.Event);
LABEL_87:
          *v108 = 1;
          goto LABEL_90;
        }
      }

      sub_24570CDAC();
      v99 = swift_allocError();
      *v100 = 6;
      swift_willThrow();
      v101 = v18;
      v38 = v99;
      sub_24570CE00(v101, type metadata accessor for RGBLivenessModel.Event);
LABEL_72:
      *v115 = v38;
      v92 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
      if (swift_dynamicCast())
      {
        if (v111 == 6)
        {

          sub_24570CA5C(v36, v35);
          sub_24570CDAC();
          swift_allocError();
          *v93 = 6;
          swift_willThrow();
        }
      }

      v94 = v43;
      return sub_24570CE00(v94, type metadata accessor for RGBLivenessModel.Event);
    case 0x13u:
      v36 = v107;
      sub_24570CA5C(v107, v35);
      sub_24570CDAC();
      v38 = swift_allocError();
      *v91 = 6;
      swift_willThrow();
      v39 = type metadata accessor for RGBLivenessModel.State;
      v40 = v14;
      goto LABEL_70;
    case 0x14u:
      v36 = v107;
      v76 = v110;
      sub_245709968(v107, v108);
      v38 = v76;
      if (!v76)
      {
        goto LABEL_94;
      }

      goto LABEL_71;
    default:
      sub_24570CE90(v14, v12, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      v36 = v107;
      v37 = v110;
      sub_245709B60(v107, v12, v108);
      v38 = v37;
      if (v37)
      {
        v39 = type metadata accessor for RGBLivenessModel.PassiveConfiguration;
        v40 = v12;
        goto LABEL_70;
      }

      v72 = v12;
LABEL_93:
      sub_24570CE00(v72, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
LABEL_94:
      v94 = v117;
      return sub_24570CE00(v94, type metadata accessor for RGBLivenessModel.Event);
  }
}

uint64_t sub_245709900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_245709968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245709900(a1, v6, type metadata accessor for RGBLivenessModel.Event);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24570CDAC();
    swift_allocError();
    *v7 = 6;
    swift_willThrow();
    return sub_24570CE00(v6, type metadata accessor for RGBLivenessModel.Event);
  }

  else
  {
    if (*v6)
    {
      v9 = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
      v10 = v9[10];
      v11 = sub_245747C30();
      (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 72) = 0u;
      *(a2 + v9[11]) = 0;
      *(a2 + v9[12]) = 0;
      *(a2 + v9[13]) = 0;
      *(a2 + v9[14]) = 0;
      *(a2 + v9[15]) = 2;
      *(a2 + v9[16]) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 2;
    }

    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_245709B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  *&v28 = a1;
  v29 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v29);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v13 = *(a2 + 40);
  v12 = *(a2 + 48);
  v27 = *(a2 + 56);
  v14 = v7[12];
  v15 = sub_245747C30();
  (*(*(v15 - 8) + 56))(&v9[v14], 1, 1, v15);
  v16 = *(a2 + v7[13]);
  *v9 = 1;
  *(v9 + 1) = v10;
  v9[16] = v11;
  *(v9 + 5) = v13;
  *(v9 + 3) = 0;
  *(v9 + 4) = 0;
  v18 = v27;
  v17 = v28;
  *(v9 + 6) = v12;
  *(v9 + 7) = v18;
  *(v9 + 9) = 0;
  *(v9 + 10) = 0;
  *(v9 + 8) = 0;
  v19 = v7[13];
  v9[v19] = v16;
  v9[v7[14]] = 0;
  v9[v7[15]] = 0;
  v9[v7[16]] = 0;
  v20 = v7[17];
  v9[v20] = 2;
  v9[v7[18]] = 0;
  sub_245709900(v17, v5, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 21)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v9[v20] = *v5;
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload == 11)
    {
      *(v9 + 4) = *v5;
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload != 13)
    {
LABEL_15:
      sub_24570CDAC();
      swift_allocError();
      *v23 = 6;
      swift_willThrow();

      sub_24570CE00(v5, type metadata accessor for RGBLivenessModel.Event);
      return sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
    }

    v28 = *v5;
    v22 = *(v5 + 2);

    *(v9 + 40) = v28;
    *(v9 + 7) = v22;
  }

  else
  {
    if (EnumCaseMultiPayload <= 28)
    {
      if (EnumCaseMultiPayload == 22)
      {
        *v9 = 0;
        sub_245709900(v9, v26, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
        type metadata accessor for RGBLivenessModel.State(0);
LABEL_20:
        swift_storeEnumTagMultiPayload();

        return sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      }

      if (EnumCaseMultiPayload == 28)
      {
        v9[v19] = 1;
LABEL_19:
        sub_245709900(v9, v26, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
        type metadata accessor for RGBLivenessModel.State(0);
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 29)
    {
      v9[v19] = 0;
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload != 30)
    {
      goto LABEL_15;
    }

    *(v9 + 5) = 0;
    *(v9 + 6) = 0;
    *(v9 + 7) = 0;
  }

  sub_245709900(v9, v26, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
  type metadata accessor for RGBLivenessModel.State(0);
  swift_storeEnumTagMultiPayload();
  return sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
}

uint64_t sub_245709F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  *&v39 = a1;
  v41 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v41);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 72);
  v13 = *(a2 + 80);
  v15 = v7[12];
  v38 = *(a2 + 56);
  v40 = *(a2 + 40);
  v36 = v15;
  sub_2456E7040(a2 + v15, &v9[v15]);
  *(v9 + 40) = v40;
  v35 = v9 + 40;
  v16 = *(a2 + v7[16]);
  *v9 = 1;
  *(v9 + 1) = v10;
  v9[16] = v11;
  v17 = v5;
  *(v9 + 3) = v12;
  *(v9 + 4) = 0;
  *(v9 + 56) = v38;
  *(v9 + 9) = v14;
  *(v9 + 10) = v13;
  v9[v7[13]] = 0;
  v9[v7[14]] = 0;
  v9[v7[15]] = 0;
  v18 = v7[16];
  v9[v18] = v16;
  v9[v7[17]] = 2;
  v9[v7[18]] = 0;
  sub_245709900(v39, v5, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload == 11)
    {
      *(v9 + 4) = *v5;
      sub_245709900(v9, v37, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      type metadata accessor for RGBLivenessModel.State(0);
      swift_storeEnumTagMultiPayload();
      v32 = v12;

      return sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
    }

    if (EnumCaseMultiPayload == 12)
    {
      v22 = *(v5 + 1);
      v39 = *(v5 + 1);
      v23 = *(v5 + 4);
      *(v9 + 1) = *(v5 + 6);
      v9[16] = 0;
      *(v9 + 3) = v22;

      *(v9 + 4) = v39;
      *(v9 + 10) = v23;
      goto LABEL_10;
    }

LABEL_15:
    sub_24570CDAC();
    swift_allocError();
    *v33 = 6;
    swift_willThrow();
    v34 = v12;

    sub_24570CE00(v5, type metadata accessor for RGBLivenessModel.Event);
    return sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
  }

  if (EnumCaseMultiPayload == 13)
  {
    v39 = *v5;
    v24 = *(v5 + 2);

    v25 = v12;

    *(v9 + 40) = v39;
    *(v9 + 7) = v24;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 15)
  {
    v26 = v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A18, &qword_24574AC48) + 48)];
    v27 = v12;

    v28 = v36;
    sub_2456E70B0(&v9[v36]);
    v29 = sub_245747C30();
    v30 = *(v29 - 8);
    (*(v30 + 32))(&v9[v28], v17, v29);
    (*(v30 + 56))(&v9[v28], 0, 1, v29);
    v9[v18] = v26;
    *v9 = 0;
    sub_245709900(v9, v37, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
    type metadata accessor for RGBLivenessModel.State(0);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 30)
  {
    goto LABEL_15;
  }

  v20 = v12;

  v21 = v35;
  *v35 = 0;
  v21[1] = 0;
  v21[2] = 0;
LABEL_10:
  sub_245709900(v9, v37, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
  type metadata accessor for RGBLivenessModel.State(0);
LABEL_12:
  swift_storeEnumTagMultiPayload();
  return sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
}

id sub_24570A420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v63 = a1;
  v4 = sub_245747E60();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v57 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v62);
  v61 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
  v8 = MEMORY[0x28223BE20](v7);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 64);
  v17 = *(a2 + 72);
  v18 = *(a2 + 80);
  sub_2456E7040(a2 + *(v10 + 40), &v53 + *(v10 + 40) - v11);
  v19 = *(a2 + v7[12]);
  v20 = *(a2 + v7[14]);
  v21 = *(a2 + v7[16]);
  *v12 = 1;
  v54 = v13;
  *(v12 + 1) = v13;
  v55 = v14;
  v12[16] = v14;
  v22 = v20;
  v64 = v15;
  *(v12 + 3) = v15;
  v23 = v17;
  v24 = v61;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  *(v12 + 8) = v16;
  *(v12 + 9) = v23;
  *(v12 + 10) = v18;
  v12[v7[11]] = 0;
  v25 = v7[12];
  v12[v25] = v19;
  v12[v7[13]] = 0;
  v12[v7[14]] = v20;
  v12[v7[15]] = 2;
  v26 = v7[16];
  v12[v26] = v21;
  sub_245709900(v63, v24, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 23)
  {
    v29 = v22;
    v30 = v57;
    v31 = v58;
    v32 = v59;
    if (EnumCaseMultiPayload > 12)
    {
      if (EnumCaseMultiPayload == 13)
      {
        goto LABEL_22;
      }

      if (EnumCaseMultiPayload != 22)
      {
        goto LABEL_30;
      }

      if (!v29)
      {
        v33 = *(a2 + 72);
        if (!v33)
        {
          goto LABEL_38;
        }

        if (!((v33 & 0x2000000000000000) != 0 ? HIBYTE(v33) & 0xF : *(a2 + 64) & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload != 11)
        {
          goto LABEL_30;
        }

LABEL_22:

        v35 = v64;
        sub_24570CE00(v24, type metadata accessor for RGBLivenessModel.Event);
        goto LABEL_23;
      }

      if (v29)
      {

        v36 = v64;
        v37 = v30;
        sub_245747CF0();
        v38 = sub_245747E50();
        v39 = sub_245748920();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_2456DE000, v38, v39, "LivePhoto was invalid, user should only be allowed to retake.", v40, 2u);
          MEMORY[0x245D712D0](v40, -1, -1);
        }

        (*(v31 + 8))(v37, v32);
        sub_24570CDAC();
        swift_allocError();
        *v41 = 6;
        swift_willThrow();
        v42 = type metadata accessor for RGBLivenessModel.PassiveConfiguration;
        v43 = v12;
        return sub_24570CE00(v43, v42);
      }

      v47 = *(a2 + 72);
      if (v47)
      {
        if ((v47 & 0x2000000000000000) != 0 ? HIBYTE(v47) & 0xF : *(a2 + 64) & 0xFFFFFFFFFFFFLL)
        {
          if ((*(a2 + 81) & 1) == 0)
          {
            goto LABEL_38;
          }

          v12[v26] = 1;
LABEL_29:
          sub_24570CE90(v12, v60, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
          type metadata accessor for RGBLivenessModel.State(0);
LABEL_39:
          swift_storeEnumTagMultiPayload();

          return v64;
        }
      }
    }

LABEL_40:

    v49 = v64;
    sub_24570CE00(v12, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
    v50 = v7[10];
    v51 = sub_245747C30();
    v52 = v56;
    (*(*(v51 - 8) + 56))(&v56[v50], 1, 1, v51);
    *v52 = 0;
    *(v52 + 8) = v54;
    *(v52 + 16) = v55;
    *(v52 + 40) = 0u;
    *(v52 + 56) = 0u;
    *(v52 + 72) = 0u;
    *(v52 + 24) = 0u;
    *(v52 + v7[11]) = 0;
    *(v52 + v7[12]) = 0;
    *(v52 + v7[13]) = 1;
    *(v52 + v7[14]) = 0;
    *(v52 + v7[15]) = 2;
    *(v52 + v7[16]) = 0;
    sub_24570CE90(v52, v60, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload <= 25)
  {
    v12[v25] = EnumCaseMultiPayload == 24;
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 26)
  {
LABEL_38:
    *v12 = 0;
    sub_24570CE90(v12, v60, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
    type metadata accessor for RGBLivenessModel.State(0);
    goto LABEL_39;
  }

  if (EnumCaseMultiPayload == 27)
  {
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload != 30)
  {
LABEL_30:
    sub_24570CDAC();
    swift_allocError();
    *v44 = 6;
    swift_willThrow();

    v45 = v64;
    sub_24570CE00(v12, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
    v42 = type metadata accessor for RGBLivenessModel.Event;
    v43 = v24;
    return sub_24570CE00(v43, v42);
  }

  v28 = v64;
LABEL_23:
  sub_24570CE90(v12, v60, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
  type metadata accessor for RGBLivenessModel.State(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24570AAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245709900(a1, v11, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 19)
  {
    if (EnumCaseMultiPayload != 11 && EnumCaseMultiPayload != 13)
    {
      goto LABEL_13;
    }

    sub_24570CE00(v11, type metadata accessor for RGBLivenessModel.Event);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 30)
  {
LABEL_11:
    sub_2456E7040(a2 + v6[10], &v8[v6[10]]);
    *v8 = 1;
    *(v8 + 1) = 0;
    v8[16] = 1;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 72) = 0u;
    *(v8 + 24) = 0u;
    v8[v6[11]] = 0;
    v8[v6[12]] = 0;
    v8[v6[13]] = 0;
    v8[v6[14]] = 0;
    v8[v6[15]] = 2;
    v8[v6[16]] = 0;
    sub_24570CE90(v8, a3, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 20)
  {
    sub_24570CE90(v11, a3, type metadata accessor for RGBLivenessResult);
LABEL_12:
    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_13:
  sub_24570CDAC();
  swift_allocError();
  *v15 = 6;
  swift_willThrow();
  return sub_24570CE00(v11, type metadata accessor for RGBLivenessModel.Event);
}

uint64_t sub_24570AD60@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  sub_245709900(a1, v8, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 21)
  {
    if (EnumCaseMultiPayload == 11)
    {
      v16 = *v8;
      *a3 = 1;
      *(a3 + 8) = v16;
      *(a3 + 16) = v10;
      *(a3 + 24) = v9;
      *(a3 + 32) = v11;
      *(a3 + 40) = 2;
      type metadata accessor for RGBLivenessModel.State(0);
      swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 13)
    {
      v13 = v8[2];
      *a3 = 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = *v8;
      *(a3 + 32) = v13;
LABEL_11:
      *(a3 + 40) = 2;
      type metadata accessor for RGBLivenessModel.State(0);
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 30)
  {
    *a3 = 1;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 22)
  {
LABEL_8:
    sub_24570CDAC();
    swift_allocError();
    *v14 = 6;
    swift_willThrow();
    return sub_24570CE00(v8, type metadata accessor for RGBLivenessModel.Event);
  }

  *a3 = 0;
  type metadata accessor for RGBLivenessModel.State(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24570AF54@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v3 = HIBYTE(a2);
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245709900(a1, v8, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 15)
  {
    if (EnumCaseMultiPayload != 11 && EnumCaseMultiPayload != 13)
    {
      goto LABEL_15;
    }

    sub_24570CE00(v8, type metadata accessor for RGBLivenessModel.Event);
LABEL_12:
    *a3 = 1;
    *(a3 + 1) = v3 & 1;
    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

  switch(EnumCaseMultiPayload)
  {
    case 30:
      goto LABEL_12;
    case 19:
      v12 = *v8;
      v13 = v8[1];
      *a3 = 0;
      *(a3 + 1) = v13;
      *(a3 + 2) = v12;
      *(a3 + 3) = 0;
      type metadata accessor for RGBLivenessModel.State(0);
      return swift_storeEnumTagMultiPayload();
    case 16:
      v10 = *v8;
      *a3 = 0;
      *(a3 + 8) = v10;
      type metadata accessor for RGBLivenessModel.State(0);
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 41) = 0u;
      return swift_storeEnumTagMultiPayload();
  }

LABEL_15:
  sub_24570CDAC();
  swift_allocError();
  *v15 = 6;
  swift_willThrow();
  return sub_24570CE00(v8, type metadata accessor for RGBLivenessModel.Event);
}

uint64_t sub_24570B130@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = *(a2 + 2);
  v33 = *(a2 + 1);
  v34 = v10;
  v12 = *(a2 + 4);
  v11 = *(a2 + 5);
  v13 = *(a2 + 6);
  v14 = a2[56];
  sub_245709900(a1, v8, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 16)
  {
    if (EnumCaseMultiPayload <= 10)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (*v8 == 1)
        {
          *a3 = 0;
          v24 = v34;
          *(a3 + 8) = v33;
          *(a3 + 16) = v24;
          *(a3 + 24) = 0;
          *(a3 + 32) = v12;
          *(a3 + 40) = v11;
          *(a3 + 48) = v13;
          *(a3 + 56) = v14;
          type metadata accessor for RGBLivenessModel.State(0);
LABEL_23:
          swift_storeEnumTagMultiPayload();
        }

        *a3 = 256;
        type metadata accessor for RGBLivenessModel.State(0);
        return swift_storeEnumTagMultiPayload();
      }

      if (EnumCaseMultiPayload == 4)
      {
        if (*v8 == 1)
        {
          *a3 = v9;
          v16 = v34;
          *(a3 + 8) = v33;
          *(a3 + 16) = v16;
          *(a3 + 24) = 0;
          *(a3 + 32) = v12;
          *(a3 + 40) = v11;
          *(a3 + 48) = v13;
          *(a3 + 56) = 1;
LABEL_22:
          type metadata accessor for RGBLivenessModel.State(0);
          goto LABEL_23;
        }

        goto LABEL_17;
      }

      goto LABEL_25;
    }

    if (EnumCaseMultiPayload == 11)
    {
      v27 = *v8;
      *a3 = 1;
      v28 = v34;
      *(a3 + 8) = v33;
      *(a3 + 16) = v28;
      *(a3 + 24) = v27;
      *(a3 + 32) = v12;
      *(a3 + 40) = v11;
      *(a3 + 48) = v13;
      *(a3 + 56) = v14;
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload != 13)
    {
      goto LABEL_25;
    }

    v20 = *v8;
    v19 = *(v8 + 1);
    v21 = v8[17];
    v22 = (*(v8 + 18) << 16) | (*(v8 + 11) << 48) | v8[16] | (v21 << 8);
    if (v21)
    {
      *a3 = 0;
      *(a3 + 8) = v33;
      *(a3 + 16) = v34;
      *(a3 + 24) = 0;
      *(a3 + 32) = v20;
      *(a3 + 40) = v19;
      *(a3 + 48) = v22;
      *(a3 + 56) = 0;
      type metadata accessor for RGBLivenessModel.State(0);
      return swift_storeEnumTagMultiPayload();
    }

    *a3 = 1;
    *(a3 + 8) = v33;
    *(a3 + 16) = v34;
    *(a3 + 24) = 0;
    *(a3 + 32) = v20;
    *(a3 + 40) = v19;
    *(a3 + 48) = v22;
LABEL_28:
    *(a3 + 56) = v14;
    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload > 21)
  {
    if (EnumCaseMultiPayload != 30)
    {
      if (EnumCaseMultiPayload == 22)
      {
LABEL_17:
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 1;
        v23 = v34;
        *(a3 + 24) = v33;
        *(a3 + 32) = v23;
        type metadata accessor for RGBLivenessModel.State(0);
        *(a3 + 40) = 0u;
        *(a3 + 56) = 0u;
        return swift_storeEnumTagMultiPayload();
      }

LABEL_25:
      sub_24570CDAC();
      swift_allocError();
      *v31 = 6;
      swift_willThrow();
      return sub_24570CE00(v8, type metadata accessor for RGBLivenessModel.Event);
    }

    *a3 = 1;
    v30 = v34;
    *(a3 + 8) = v33;
    *(a3 + 16) = v30;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 17)
  {
    v25 = *v8;
    v26 = *(v8 + 1);
    v35 = 0;
    *a3 = 0;
    *(a3 + 8) = v25;
    *(a3 + 16) = 0;
    *(a3 + 24) = v26;
    type metadata accessor for RGBLivenessModel.State(0);
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0;
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload != 19)
  {
    goto LABEL_25;
  }

  v17 = *v8;
  v18 = v8[1];
  *a3 = 0;
  *(a3 + 1) = v18;
  *(a3 + 2) = v17;
  *(a3 + 3) = 0;
  type metadata accessor for RGBLivenessModel.State(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24570B4F4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = *(a2 + 5);
  v13 = *(a2 + 6);
  v24 = *(a2 + 4);
  v25 = v13;
  v14 = a2[56];
  sub_245709900(a1, v8, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 16)
  {
    if (EnumCaseMultiPayload == 30)
    {
      *a3 = 0;
      *(a3 + 8) = v10;
      *(a3 + 16) = v11;
      type metadata accessor for RGBLivenessModel.State(0);
      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0;
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 19)
    {
      v22 = *v8;
      v23 = v8[1];
      *a3 = 0;
      *(a3 + 1) = v23;
      *(a3 + 2) = v22;
      *(a3 + 3) = 0;
      type metadata accessor for RGBLivenessModel.State(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload != 17)
    {
LABEL_13:
      sub_24570CDAC();
      swift_allocError();
      *v18 = 6;
      swift_willThrow();
      return sub_24570CE00(v8, type metadata accessor for RGBLivenessModel.Event);
    }

    v17 = *(v8 + 1);
    *a3 = v9;
    *(a3 + 8) = v17;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 4)
  {
    *a3 = 1;
    *(a3 + 8) = v10;
LABEL_11:
    *(a3 + 16) = v11;
    *(a3 + 24) = 0;
LABEL_15:
    v21 = v25;
    *(a3 + 32) = v24;
    *(a3 + 40) = v12;
    *(a3 + 48) = v21;
    *(a3 + 56) = v14;
    type metadata accessor for RGBLivenessModel.State(0);
    swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 11)
  {
    v20 = *v8;
    *a3 = v9;
    *(a3 + 8) = v10;
    *(a3 + 16) = v11;
    *(a3 + 24) = v20;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 13)
  {
    goto LABEL_13;
  }

  v16 = *(v8 + 2);
  *a3 = 1;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 24) = 0;
  *(a3 + 32) = *v8;
  *(a3 + 48) = v16;
  *(a3 + 56) = v14;
  type metadata accessor for RGBLivenessModel.State(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24570B76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 8);
  v9 = *(a2 + 16);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v24 = *(a2 + 48);
  v13 = *(a2 + 56);
  sub_245709900(a1, v8, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 16)
  {
    if (EnumCaseMultiPayload == 4)
    {
      *a3 = 1;
      *(a3 + 8) = v10;
      *(a3 + 16) = v9;
LABEL_16:
      *(a3 + 24) = 0;
LABEL_21:
      *(a3 + 32) = v12;
      *(a3 + 40) = v11;
      *(a3 + 48) = v24;
      *(a3 + 56) = v13;
      type metadata accessor for RGBLivenessModel.State(0);
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 11)
    {
      v22 = *v8;
      *a3 = 1;
      *(a3 + 8) = v10;
      *(a3 + 16) = v9;
      *(a3 + 24) = v22;
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload != 13)
    {
      goto LABEL_14;
    }

    v17 = *(v8 + 2);
    *a3 = 1;
    *(a3 + 8) = v10;
    *(a3 + 16) = v9;
    *(a3 + 24) = 0;
    *(a3 + 32) = *v8;
    *(a3 + 48) = v17;
LABEL_18:
    *(a3 + 56) = v13;
    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload <= 21)
  {
    if (EnumCaseMultiPayload != 17)
    {
      if (EnumCaseMultiPayload == 19)
      {
        v15 = *v8;
        v16 = v8[1];
        *a3 = 0;
        *(a3 + 1) = v16;
        *(a3 + 2) = v15;
        *(a3 + 3) = 0;
        type metadata accessor for RGBLivenessModel.State(0);
        return swift_storeEnumTagMultiPayload();
      }

LABEL_14:
      sub_24570CDAC();
      swift_allocError();
      *v19 = 6;
      swift_willThrow();
      return sub_24570CE00(v8, type metadata accessor for RGBLivenessModel.Event);
    }

    v21 = *(v8 + 1);
    *a3 = 1;
    *(a3 + 8) = v21;
    *(a3 + 16) = 0;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 30)
  {
    *a3 = 1;
    *(a3 + 8) = v10;
    *(a3 + 16) = v9;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 22)
  {
    goto LABEL_14;
  }

  *a3 = 0;
  *(a3 + 8) = v10;
  *(a3 + 16) = v9;
  *(a3 + 24) = 0;
  *(a3 + 32) = v12;
  v18 = v24;
  *(a3 + 40) = v11;
  *(a3 + 48) = v18;
  *(a3 + 56) = 0;
  type metadata accessor for RGBLivenessModel.State(0);
LABEL_22:
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_24570BA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v12 = *(a2 + 24);
  v11 = *(a2 + 32);
  v13 = *(a2 + 56);
  v31 = *(a2 + 48);
  v32 = v13;
  v14 = *(a2 + 64);
  sub_245709900(a1, v8, type metadata accessor for RGBLivenessModel.Event);
  result = swift_getEnumCaseMultiPayload();
  if (result > 16)
  {
    if (result <= 18)
    {
      if (result == 17)
      {
        v21 = *v8;
        v22 = *(v8 + 1);
        v34 = 0;
        *a3 = 0;
        *(a3 + 8) = v21;
        *(a3 + 16) = 0;
        *(a3 + 24) = v22;
        *(a3 + 32) = 0;
        v23 = v31;
        v24 = v32;
        *(a3 + 40) = 0;
        *(a3 + 48) = v23;
        *(a3 + 56) = v24;
        *(a3 + 64) = v14;
        type metadata accessor for RGBLivenessModel.State(0);
        goto LABEL_24;
      }

      if (v11)
      {
        v16 = v11 + 1;
        if (!__OFADD__(v11, 1))
        {
          v33 = v10;
          goto LABEL_13;
        }

        goto LABEL_31;
      }

      goto LABEL_27;
    }

    if (result == 19)
    {
      v28 = *v8;
      v29 = v8[1];
      *a3 = 0;
      *(a3 + 1) = v29;
      *(a3 + 2) = v28;
      *(a3 + 3) = 0;
      type metadata accessor for RGBLivenessModel.State(0);
    }

    else
    {
      if (result != 30)
      {
        goto LABEL_26;
      }

      v38 = v10;
      *a3 = 1;
      *(a3 + 8) = v9;
      *(a3 + 16) = v10;
      *(a3 + 24) = v12;
      *(a3 + 32) = v11;
      type metadata accessor for RGBLivenessModel.State(0);
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (result > 10)
  {
    if (result == 11)
    {
      v25 = *v8;
      v36 = v10;
      *a3 = 1;
      *(a3 + 8) = v9;
      *(a3 + 16) = v10;
      *(a3 + 24) = v12;
      *(a3 + 32) = v11;
      v26 = v31;
      v27 = v32;
      *(a3 + 40) = v25;
      *(a3 + 48) = v26;
      *(a3 + 56) = v27;
      *(a3 + 64) = v14;
      type metadata accessor for RGBLivenessModel.State(0);
      goto LABEL_24;
    }

    if (result != 13)
    {
      goto LABEL_26;
    }

    v19 = *(v8 + 2);
    v37 = v10;
    *a3 = 1;
    *(a3 + 8) = v9;
    *(a3 + 16) = v10;
    *(a3 + 24) = v12;
    *(a3 + 32) = v11;
    *(a3 + 40) = 0;
    *(a3 + 48) = *v8;
    *(a3 + 64) = v19;
    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (result == 1)
  {
    v20 = *v8;
    *a3 = 0;
    if (v20 == 1)
    {
      *(a3 + 8) = v12;
      *(a3 + 16) = v11;
      type metadata accessor for RGBLivenessModel.State(0);
      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0;
    }

    else
    {
      *(a3 + 1) = 1;
      type metadata accessor for RGBLivenessModel.State(0);
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (result != 5)
  {
LABEL_26:
    sub_24570CDAC();
    swift_allocError();
    *v30 = 6;
    swift_willThrow();
    return sub_24570CE00(v8, type metadata accessor for RGBLivenessModel.Event);
  }

  if (!v11)
  {
LABEL_27:
    *a3 = 0;
    *(a3 + 8) = v12;
    *(a3 + 16) = 1;
    type metadata accessor for RGBLivenessModel.State(0);
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0;
    return swift_storeEnumTagMultiPayload();
  }

  v16 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    v35 = v10;
LABEL_13:
    *a3 = 0;
    *(a3 + 8) = v9;
    *(a3 + 16) = v10;
    *(a3 + 24) = v12;
    *(a3 + 32) = v16;
    v17 = v31;
    v18 = v32;
    *(a3 + 40) = 0;
    *(a3 + 48) = v17;
    *(a3 + 56) = v18;
    *(a3 + 64) = v14;
    type metadata accessor for RGBLivenessModel.State(0);
LABEL_24:
    swift_storeEnumTagMultiPayload();
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_24570BDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v24 = *(a2 + 8);
  v25 = v10;
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  v14 = *(a2 + 64);
  sub_245709900(a1, v8, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 15)
  {
    if (EnumCaseMultiPayload == 11)
    {
      v20 = *v8;
      v26 = v9;
      *a3 = 1;
      v21 = v25;
      *(a3 + 8) = v24;
      *(a3 + 16) = v9;
      *(a3 + 24) = v11;
      *(a3 + 32) = v21;
      *(a3 + 40) = v20;
      *(a3 + 48) = v12;
      *(a3 + 56) = v13;
      *(a3 + 64) = v14;
      type metadata accessor for RGBLivenessModel.State(0);
      swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 13)
    {
      v16 = v8[2];
      v27 = v9;
      *a3 = 1;
      v17 = v25;
      *(a3 + 8) = v24;
      *(a3 + 16) = v9;
      *(a3 + 24) = v11;
      *(a3 + 32) = v17;
      *(a3 + 40) = 0;
      *(a3 + 48) = *v8;
      *(a3 + 64) = v16;
      type metadata accessor for RGBLivenessModel.State(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 16:
        goto LABEL_5;
      case 30:
        v28 = v9;
        *a3 = 1;
        v18 = v25;
        *(a3 + 8) = v24;
        *(a3 + 16) = v9;
        *(a3 + 24) = v11;
        *(a3 + 32) = v18;
        type metadata accessor for RGBLivenessModel.State(0);
        *(a3 + 40) = 0u;
        *(a3 + 56) = 0u;
        return swift_storeEnumTagMultiPayload();
      case 22:
LABEL_5:
        *a3 = 0;
        *(a3 + 8) = v11;
        type metadata accessor for RGBLivenessModel.State(0);
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *(a3 + 41) = 0u;
        return swift_storeEnumTagMultiPayload();
    }
  }

  sub_24570CDAC();
  swift_allocError();
  *v22 = 6;
  swift_willThrow();
  return sub_24570CE00(v8, type metadata accessor for RGBLivenessModel.Event);
}

uint64_t sub_24570C02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  v25 = *(a2 + 24);
  v26 = v11;
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  v14 = *(a2 + 64);
  sub_245709900(a1, v8, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *a3 = 256;
LABEL_14:
      type metadata accessor for RGBLivenessModel.State(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 11)
    {
      v17 = *v8;
      v27 = v10;
      *a3 = 1;
      *(a3 + 8) = v9;
      *(a3 + 16) = v10;
      v18 = v26;
      *(a3 + 24) = v25;
      *(a3 + 32) = v18;
      *(a3 + 40) = v17;
      *(a3 + 48) = v12;
      *(a3 + 56) = v13;
      *(a3 + 64) = v14;
      type metadata accessor for RGBLivenessModel.State(0);
      swift_storeEnumTagMultiPayload();
    }

LABEL_15:
    sub_24570CDAC();
    swift_allocError();
    *v23 = 6;
    swift_willThrow();
    return sub_24570CE00(v8, type metadata accessor for RGBLivenessModel.Event);
  }

  if (EnumCaseMultiPayload != 13)
  {
    if (EnumCaseMultiPayload == 30)
    {
      v29 = v10;
      *a3 = 1;
      *(a3 + 8) = v9;
      *(a3 + 16) = v10;
      v22 = v26;
      *(a3 + 24) = v25;
      *(a3 + 32) = v22;
      type metadata accessor for RGBLivenessModel.State(0);
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 22)
    {
      *a3 = 0;
      v16 = v26;
      if (v26 <= 2)
      {
        *(a3 + 8) = v25;
        *(a3 + 16) = v16;
        type metadata accessor for RGBLivenessModel.State(0);
        *(a3 + 24) = 0u;
        *(a3 + 40) = 0u;
        *(a3 + 56) = 0;
        return swift_storeEnumTagMultiPayload();
      }

      *(a3 + 1) = 1;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v20 = v8[2];
  v28 = v10;
  *a3 = 1;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  v21 = v26;
  *(a3 + 24) = v25;
  *(a3 + 32) = v21;
  *(a3 + 40) = 0;
  *(a3 + 48) = *v8;
  *(a3 + 64) = v20;
  type metadata accessor for RGBLivenessModel.State(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24570C2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = BYTE1(a2) & 1;
  v6 = a2 & 0x10000;
  v7 = a2 & 0x1000000;
  v8 = a2 & 0x100000000;
  v9 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245709900(a1, v11, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 13)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      if (EnumCaseMultiPayload != 11 && EnumCaseMultiPayload != 13)
      {
        goto LABEL_18;
      }

      sub_24570CE00(v11, type metadata accessor for RGBLivenessModel.Event);
    }

    goto LABEL_14;
  }

  switch(EnumCaseMultiPayload)
  {
    case 14:
      if (v7)
      {
        *a3 = 0;
        if (v6)
        {
          *(a3 + 24) = 0u;
          *(a3 + 8) = 0u;
          *(a3 + 40) = 2;
        }

        type metadata accessor for RGBLivenessModel.State(0);
      }

      else
      {
        *a3 = 1;
        *(a3 + 1) = v5;
        *(a3 + 2) = BYTE2(v6);
        *(a3 + 3) = 256;
        type metadata accessor for RGBLivenessModel.State(0);
      }

      swift_storeEnumTagMultiPayload();
      return sub_24570CE00(v11, type metadata accessor for RGBLivenessModel.Event);
    case 30:
LABEL_14:
      *a3 = 1;
      *(a3 + 1) = v5;
      *(a3 + 2) = BYTE2(v6);
      *(a3 + 3) = BYTE3(v7);
      *(a3 + 4) = BYTE4(v8);
LABEL_15:
      type metadata accessor for RGBLivenessModel.State(0);
      return swift_storeEnumTagMultiPayload();
    case 22:
      if (v8)
      {
        *a3 = 0;
        if (v6)
        {
          *(a3 + 24) = 0u;
          *(a3 + 8) = 0u;
          *(a3 + 40) = 2;
        }
      }

      else
      {
        *a3 = 1;
        *(a3 + 1) = v5;
        *(a3 + 2) = BYTE2(v6);
        *(a3 + 3) = 1;
      }

      goto LABEL_15;
  }

LABEL_18:
  sub_24570CDAC();
  swift_allocError();
  *v15 = 6;
  swift_willThrow();
  return sub_24570CE00(v11, type metadata accessor for RGBLivenessModel.Event);
}

uint64_t sub_24570C594@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  sub_245709900(a1, v8, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 12)
  {
    switch(EnumCaseMultiPayload)
    {
      case 13:
        v15 = *(v8 + 2);
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = *v8;
        *(a3 + 32) = v15;
        break;
      case 30:
        *a3 = 1;
        *(a3 + 8) = 0u;
        *(a3 + 24) = 0u;
        break;
      case 22:
        *a3 = 0;
        type metadata accessor for RGBLivenessModel.State(0);
        return swift_storeEnumTagMultiPayload();
      default:
        goto LABEL_15;
    }

    *(a3 + 40) = 2;
    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 2)
  {
    v14 = *v8;
    *a3 = 1;
    *(a3 + 8) = 0;
    *(a3 + 16) = v10;
    *(a3 + 24) = v9;
    *(a3 + 32) = v11;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 11)
  {
    v13 = *v8;
    *a3 = 1;
    *(a3 + 8) = v13;
    *(a3 + 16) = v10;
    *(a3 + 24) = v9;
    *(a3 + 32) = v11;
    v14 = 2;
LABEL_14:
    *(a3 + 40) = v14;
    type metadata accessor for RGBLivenessModel.State(0);
    swift_storeEnumTagMultiPayload();
  }

LABEL_15:
  sub_24570CDAC();
  swift_allocError();
  *v17 = 6;
  swift_willThrow();
  return sub_24570CE00(v8, type metadata accessor for RGBLivenessModel.Event);
}

id sub_24570C7A8@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v12 = *(a2 + 3);
  v11 = *(a2 + 4);
  LODWORD(v7) = a2[40];
  v21 = *a2;
  v22 = v7;
  v23 = *(a2 + 6);
  v13 = a2[56];
  sub_245709900(a1, v8, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 21)
  {
    if (EnumCaseMultiPayload <= 10)
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_33;
        }

        goto LABEL_18;
      }

      if (v12)
      {
        v17 = HIBYTE(v12) & 0xF;
        if ((v12 & 0x2000000000000000) == 0)
        {
          v17 = v10 & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          if ((v11 & 0x100) != 0)
          {
            v18 = v22;
            *a3 = v21;
            *(a3 + 8) = v9;
            *(a3 + 16) = v10;
            *(a3 + 24) = v12;
            *(a3 + 32) = v11;
            *(a3 + 40) = v18;
            *(a3 + 48) = v23;
            *(a3 + 56) = 1;
            goto LABEL_19;
          }

          goto LABEL_31;
        }
      }

      goto LABEL_30;
    }

    if (EnumCaseMultiPayload != 11 && EnumCaseMultiPayload != 13)
    {
      goto LABEL_33;
    }

    sub_24570CE00(v8, type metadata accessor for RGBLivenessModel.Event);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload <= 26)
  {
    if (EnumCaseMultiPayload == 22)
    {
      if (v12)
      {
        v19 = HIBYTE(v12) & 0xF;
        if ((v12 & 0x2000000000000000) == 0)
        {
          v19 = v10 & 0xFFFFFFFFFFFFLL;
        }

        if (v19)
        {
          goto LABEL_30;
        }
      }
    }

    else if (EnumCaseMultiPayload != 26)
    {
      goto LABEL_33;
    }

LABEL_31:
    *a3 = 0;
    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 27)
  {
LABEL_30:
    *a3 = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 2;
    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 30)
  {
LABEL_18:
    *a3 = 1;
    *(a3 + 8) = v9;
    *(a3 + 16) = v10;
    *(a3 + 24) = v12;
    *(a3 + 32) = v11;
    *(a3 + 40) = v22;
    *(a3 + 48) = v23;
    *(a3 + 56) = v13;
LABEL_19:
    type metadata accessor for RGBLivenessModel.State(0);
    swift_storeEnumTagMultiPayload();

    return v9;
  }

LABEL_33:
  sub_24570CDAC();
  swift_allocError();
  *v20 = 6;
  swift_willThrow();
  return sub_24570CE00(v8, type metadata accessor for RGBLivenessModel.Event);
}

uint64_t sub_24570CA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RGBLivenessModel.Event(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_245747E60();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747CF0();
  sub_245709900(a1, v9, type metadata accessor for RGBLivenessModel.Event);
  sub_245709900(a2, v6, type metadata accessor for RGBLivenessModel.State);
  v14 = sub_245747E50();
  v15 = sub_245748920();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = v10;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136315394;
    v19 = sub_245707E1C();
    v21 = v20;
    sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.Event);
    v22 = sub_24572EDDC(v19, v21, &v29);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = sub_245707900();
    v25 = v24;
    sub_24570CE00(v6, type metadata accessor for RGBLivenessModel.State);
    v26 = sub_24572EDDC(v23, v25, &v29);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_2456DE000, v14, v15, "Invalid event %s received during state %s.", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D712D0](v18, -1, -1);
    MEMORY[0x245D712D0](v17, -1, -1);

    return (*(v11 + 8))(v13, v28);
  }

  else
  {

    sub_24570CE00(v6, type metadata accessor for RGBLivenessModel.State);
    sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.Event);
    return (*(v11 + 8))(v13, v10);
  }
}

unint64_t sub_24570CDAC()
{
  result = qword_27EE24BD0;
  if (!qword_27EE24BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE24BD0);
  }

  return result;
}

uint64_t sub_24570CE00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24570CE90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24570CF30()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 16);
}

uint64_t sub_24570CFA0(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_24570D088@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  memcpy(__dst, (v1 + 24), sizeof(__dst));
  memcpy(a1, (v1 + 24), 0x240uLL);
  return sub_2456F3944(__dst, &v4);
}

uint64_t sub_24570D12C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  __dst[0] = v3;
  sub_24571B9BC();
  sub_245747CA0();

  memcpy(__dst, (v3 + 24), sizeof(__dst));
  memcpy(a2, (v3 + 24), 0x240uLL);
  return sub_2456F3944(__dst, &v5);
}

uint64_t sub_24570D1D0(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747C90();
}

uint64_t sub_24570D280()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 600);
}

uint64_t sub_24570D2F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 600);
  return result;
}

uint64_t sub_24570D390(uint64_t result)
{
  if (*(v1 + 600) == (result & 1))
  {
    *(v1 + 600) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_24570D470()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 601);
}

uint64_t sub_24570D4E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 601);
  return result;
}

uint64_t sub_24570D580(uint64_t result)
{
  if (*(v1 + 601) == (result & 1))
  {
    *(v1 + 601) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_24570D660@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a1 = *(v1 + 608);
  *(a1 + 8) = *(v1 + 616);
}

uint64_t sub_24570D6EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 608);
  *(a2 + 8) = *(v3 + 616);
}

uint64_t sub_24570D778(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747C90();
}

uint64_t sub_24570D828()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 632);
}

uint64_t sub_24570D898@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 632);
  return result;
}

uint64_t sub_24570D938(uint64_t result)
{
  v2 = *(v1 + 632);
  if (v2 == 9)
  {
    if (result != 9)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24571B9BC();
      sub_245747C90();
    }
  }

  else if (v2 != result)
  {
    goto LABEL_3;
  }

  *(v1 + 632) = result;
  return result;
}

uint64_t sub_24570DA28()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 656);

  return v1;
}

uint64_t sub_24570DAAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 664);
  *a2 = *(v3 + 656);
  a2[1] = v4;
}

uint64_t sub_24570DB44(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 664);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 656) == a1 && v5 == a2;
      if (v6 || (sub_245748BC0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 656) = a1;
  *(v2 + 664) = a2;
}

uint64_t sub_24570DC88()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 672);

  return v1;
}

uint64_t sub_24570DD0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 680);
  *a2 = *(v3 + 672);
  a2[1] = v4;
}

uint64_t sub_24570DDA4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 680);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 672) == a1 && v5 == a2;
      if (v6 || (sub_245748BC0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 672) = a1;
  *(v2 + 680) = a2;
}

uint64_t sub_24570DEE8()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 688);

  return v1;
}

uint64_t sub_24570DF6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 696);
  *a2 = *(v3 + 688);
  a2[1] = v4;
}

uint64_t sub_24570E004(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 696);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 688) == a1 && v5 == a2;
      if (v6 || (sub_245748BC0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 688) = a1;
  *(v2 + 696) = a2;
}

uint64_t sub_24570E148()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 704);
}

uint64_t sub_24570E1B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 704);
  return result;
}

uint64_t sub_24570E258(uint64_t result)
{
  if (*(v1 + 704) == (result & 1))
  {
    *(v1 + 704) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_24570E338()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 705);
}

uint64_t sub_24570E3A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 705);
  return result;
}

uint64_t sub_24570E448(uint64_t result)
{
  if (*(v1 + 705) == (result & 1))
  {
    *(v1 + 705) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_24570E528()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 712);

  return v1;
}

uint64_t sub_24570E5AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 720);
  *a2 = *(v3 + 712);
  a2[1] = v4;
}

uint64_t sub_24570E644(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 720);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 712) == a1 && v5 == a2;
      if (v6 || (sub_245748BC0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 712) = a1;
  *(v2 + 720) = a2;
}

void *sub_24570E788()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 728);
  v2 = v1;
  return v1;
}

id sub_24570E800@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 728);
  *a2 = v4;

  return v4;
}

void sub_24570E888(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24570E8B8(v1);
}

void sub_24570E8B8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 728);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_2456E730C(0, &qword_27EE24B50, 0x277D755B8);
  v5 = v4;
  v6 = a1;
  v7 = sub_245748A10();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 728);
LABEL_8:
  *(v2 + 728) = a1;
}

uint64_t sub_24570EA18()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 736);
}

uint64_t sub_24570EA88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 736);
  return result;
}

uint64_t sub_24570EB28(uint64_t result)
{
  if (*(v1 + 736) == (result & 1))
  {
    *(v1 + 736) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_24570EC08()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 737);
}

uint64_t sub_24570EC78(uint64_t result)
{
  if (*(v1 + 737) == (result & 1))
  {
    *(v1 + 737) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_24570ED60()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 744);

  return v1;
}

uint64_t sub_24570EDE4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 744) == a1 && *(v2 + 752) == a2;
  if (v5 || (sub_245748BC0() & 1) != 0)
  {
    *(v2 + 744) = a1;
    *(v2 + 752) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }
}

uint64_t sub_24570EF1C()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 760);

  return v1;
}

uint64_t sub_24570EFA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 768);
  *a2 = *(v3 + 760);
  a2[1] = v4;
}

uint64_t sub_24570F038(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 768);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 760) == a1 && v5 == a2;
      if (v6 || (sub_245748BC0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 760) = a1;
  *(v2 + 768) = a2;
}

uint64_t sub_24570F17C()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 776);

  return v1;
}

uint64_t sub_24570F200@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 784);
  *a2 = *(v3 + 776);
  a2[1] = v4;
}

uint64_t sub_24570F298(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 776) == a1 && *(v2 + 784) == a2;
  if (v5 || (sub_245748BC0() & 1) != 0)
  {
    *(v2 + 776) = a1;
    *(v2 + 784) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }
}

uint64_t sub_24570F3D0()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 792);

  return v1;
}

uint64_t sub_24570F454@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 800);
  *a2 = *(v3 + 792);
  a2[1] = v4;
}

uint64_t sub_24570F4EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 800);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 792) == a1 && v5 == a2;
      if (v6 || (sub_245748BC0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 792) = a1;
  *(v2 + 800) = a2;
}

uint64_t sub_24570F630()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 808);

  return v1;
}

uint64_t sub_24570F6B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 816);
  *a2 = *(v3 + 808);
  a2[1] = v4;
}

uint64_t sub_24570F74C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 816);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 808) == a1 && v5 == a2;
      if (v6 || (sub_245748BC0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 808) = a1;
  *(v2 + 816) = a2;
}

uint64_t sub_24570F890()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 824);

  return v1;
}

uint64_t sub_24570F914@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 832);
  *a2 = *(v3 + 824);
  a2[1] = v4;
}

uint64_t sub_24570F9AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_24570F9F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 832);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 824) == a1 && v5 == a2;
      if (v6 || (sub_245748BC0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 824) = a1;
  *(v2 + 832) = a2;
}

uint64_t sub_24570FB38()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();
}

uint64_t sub_24570FBAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 840);
}

uint64_t sub_24570FC54(uint64_t a1)
{

  v3 = sub_2457484B0();

  if (v3)
  {
    *(v1 + 840) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }
}

uint64_t sub_24570FD78()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 848);

  return v1;
}

uint64_t sub_24570FDFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 856);
  *a2 = *(v3 + 848);
  a2[1] = v4;
}

uint64_t sub_24570FE94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_24570FEDC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 848) == a1 && *(v2 + 856) == a2;
  if (v5 || (sub_245748BC0() & 1) != 0)
  {
    *(v2 + 848) = a1;
    *(v2 + 856) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }
}

uint64_t sub_245710014()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 864);
}

uint64_t sub_245710084@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 864);
  return result;
}

uint64_t sub_245710124(uint64_t result)
{
  if (*(v1 + 864) == (result & 1))
  {
    *(v1 + 864) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_245710204()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();
}

uint64_t sub_245710278@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 888);
}

uint64_t sub_245710320(uint64_t a1)
{
  if (!*(v1 + 888))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = sub_2457484B0();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 888) = a1;
}

uint64_t sub_245710458()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 896);
}

uint64_t sub_2457104C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 896);
  return result;
}

uint64_t sub_245710568(uint64_t result)
{
  if (*(v1 + 896) == (result & 1))
  {
    *(v1 + 896) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_245710648()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 897);
}

uint64_t sub_2457106B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 897);
  return result;
}

uint64_t sub_245710758(uint64_t result)
{
  if (*(v1 + 897) == (result & 1))
  {
    *(v1 + 897) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_245710838()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 898);
}

uint64_t sub_2457108A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 898);
  return result;
}

uint64_t sub_245710920(uint64_t result)
{
  if (*(v1 + 898) == (result & 1))
  {
    *(v1 + 898) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

id sub_245710A00()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 904);

  return v1;
}

id sub_245710A80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 904);
  *a2 = v4;

  return v4;
}

void sub_245710B34(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 904);
  sub_2456E730C(0, &qword_27EE24F38, 0x277CE6598);
  v5 = v4;
  v6 = sub_245748A10();

  if (v6)
  {
    v7 = *(v2 + 904);
    *(v2 + 904) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }
}

uint64_t sub_245710C70()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 912);
}

uint64_t sub_245710CE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 912);
  return result;
}

uint64_t sub_245710D58(uint64_t result)
{
  if (*(v1 + 912) == (result & 1))
  {
    *(v1 + 912) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_245710E38()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 913);
}

uint64_t sub_245710EA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 913);
  return result;
}

uint64_t sub_245710F48(uint64_t result)
{
  if (*(v1 + 913) == (result & 1))
  {
    *(v1 + 913) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_245711028(const void *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 600) = 1;
  *(v1 + 608) = 0;
  *(v1 + 624) = 0;
  *(v1 + 616) = 0;
  *(v1 + 632) = 9;
  v3 = 0uLL;
  *(v1 + 640) = 0u;
  *(v1 + 656) = 0u;
  *(v1 + 672) = 0u;
  *(v1 + 688) = 0u;
  *(v1 + 704) = 0;
  *(v1 + 712) = 0;
  *(v1 + 728) = 0;
  *(v1 + 720) = 0;
  *(v1 + 736) = 0;
  if (qword_27EE242A8 != -1)
  {
    swift_once();
    v3 = 0uLL;
  }

  v4 = unk_27EE24E40;
  *(v1 + 744) = qword_27EE24E38;
  *(v1 + 752) = v4;
  *(v1 + 760) = v3;
  v5 = qword_27EE24298;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = unk_27EE24E20;
  *(v1 + 776) = qword_27EE24E18;
  *(v1 + 784) = v6;
  *(v1 + 792) = 0u;
  *(v1 + 808) = 0u;
  *(v1 + 824) = 0u;

  *(v1 + 840) = sub_245748490();
  if (qword_27EE242D8 != -1)
  {
    swift_once();
  }

  v7 = unk_27EE24EA0;
  *(v1 + 848) = qword_27EE24E98;
  *(v1 + 856) = v7;
  *(v1 + 864) = 0;

  *(v1 + 872) = sub_245748490();
  *(v1 + 880) = sub_245748490();
  *(v1 + 888) = 0;
  *(v1 + 896) = 256;
  *(v1 + 898) = 1;
  v8 = [objc_allocWithZone(MEMORY[0x277CE6598]) init];
  [v8 setMuted_];
  [v8 setActionAtItemEnd_];
  [v8 setAudiovisualBackgroundPlaybackPolicy_];
  *(v1 + 904) = v8;
  *(v1 + 912) = 0;
  *(v1 + 916) = 1106247680;
  if (qword_27EE24218 != -1)
  {
    swift_once();
  }

  v9 = unk_27EE24D20;
  *(v1 + 920) = qword_27EE24D18;
  *(v1 + 928) = v9;
  *(v1 + 936) = 1;
  *(v1 + 940) = 0;
  *(v1 + 937) = 0;

  sub_245747CB0();
  memcpy((v1 + 24), a1, 0x240uLL);
  return v1;
}

void sub_2457112E0(uint64_t a1)
{
  v3 = (v1 + 600);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v442 - v5;
  v7 = sub_245747C30();
  v447 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v446 = &v442 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v448 = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
  v9 = MEMORY[0x28223BE20](v448);
  v11 = &v442 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v442 - v13);
  MEMORY[0x28223BE20](v12);
  v16 = &v442 - v15;
  v17 = type metadata accessor for RGBLivenessModel.State(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v442 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24571B948(a1, v19);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_24571C1B8(v19, v14);
      if (v3[264])
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v43 = v449;
        *(&v442 - 2) = v449;
        *(&v442 - 8) = 0;
        *&v451[0] = v43;
        sub_24571B9BC();
        sub_245747C90();
      }

      else
      {
        v3[264] = 0;
        v43 = v449;
      }

      if (*(v43 + 664))
      {
        v94 = swift_getKeyPath();
        MEMORY[0x28223BE20](v94);
        *(&v442 - 3) = 0;
        *(&v442 - 2) = 0;
        *(&v442 - 4) = v43;
        *&v451[0] = v43;
        sub_24571B9BC();
        sub_245747C90();

        if (*(v43 + 680))
        {
LABEL_78:
          v95 = swift_getKeyPath();
          MEMORY[0x28223BE20](v95);
          *(&v442 - 3) = 0;
          *(&v442 - 2) = 0;
          *(&v442 - 4) = v43;
          *&v451[0] = v43;
          sub_24571B9BC();
          sub_245747C90();

          goto LABEL_148;
        }
      }

      else
      {
        *(v43 + 656) = 0u;
        if (*(v43 + 680))
        {
          goto LABEL_78;
        }
      }

      *(v43 + 672) = 0u;
LABEL_148:
      if (qword_27EE24210 != -1)
      {
        swift_once();
      }

      v184 = qword_27EE24D08;
      v185 = unk_27EE24D10;

      sub_24570E004(v184, v185);
      if (*(v43 + 720))
      {
        v186 = swift_getKeyPath();
        MEMORY[0x28223BE20](v186);
        *(&v442 - 3) = 0;
        *(&v442 - 2) = 0;
        *(&v442 - 4) = v43;
        *&v451[0] = v43;
        sub_24571B9BC();
        sub_245747C90();

        if (v3[105])
        {
LABEL_152:
          v3[105] = 1;
          goto LABEL_155;
        }
      }

      else
      {
        *(v43 + 712) = 0u;
        if (v3[105])
        {
          goto LABEL_152;
        }
      }

      v187 = swift_getKeyPath();
      MEMORY[0x28223BE20](v187);
      *(&v442 - 2) = v43;
      *(&v442 - 8) = 1;
      *&v451[0] = v43;
      sub_24571B9BC();
      sub_245747C90();

LABEL_155:
      if (v3[296] == 1)
      {
        v3[296] = 1;
      }

      else
      {
        v188 = swift_getKeyPath();
        MEMORY[0x28223BE20](v188);
        *(&v442 - 2) = v43;
        *(&v442 - 8) = 1;
        *&v451[0] = v43;
        sub_24571B9BC();
        sub_245747C90();
      }

      v189 = v14[6];
      if (v189)
      {
        v190 = v14[7];
        v191 = v14[5];
      }

      else
      {
        v451[0] = *(v43 + 920);
        v190 = *(v43 + 936);
        *&v451[1] = v190;
        v189 = *(&v451[0] + 1);
        v191 = *&v451[0];
        sub_245702E58(v451, v452);
      }

      v192 = swift_getKeyPath();
      MEMORY[0x28223BE20](v192);
      *(&v442 - 4) = v43;
      *(&v442 - 3) = v191;
      *(&v442 - 2) = v189;
      *(&v442 - 1) = v190;
      *&v451[0] = v43;
      sub_24571B9BC();
      sub_245747C90();

      sub_2457029F4(v14, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      return;
    case 2u:
      sub_24571C1B8(v19, v11);
      sub_2456E7040(&v11[*(v448 + 40)], v6);
      v53 = v447;
      if ((v447)[6](v6, 1, v7) == 1)
      {
        sub_2457029F4(v11, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
        sub_2456E70B0(v6);
        return;
      }

      (v53)[4](v446, v6, v7);
      v118 = swift_getKeyPath();
      v442 = &v442;
      MEMORY[0x28223BE20](v118);
      v119 = v449;
      *(&v442 - 4) = v449;
      *(&v442 - 3) = 0;
      *(&v442 - 2) = 0;
      *(&v442 - 1) = 0;
      v120 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessViewConfig___observationRegistrar;
      *&v451[0] = v119;
      v121 = sub_24571B9BC();
      v444 = v120;
      v122 = v3;
      v123 = v450;
      sub_245747C90();

      if (v122[297])
      {
        v124 = swift_getKeyPath();
        *&v450 = &v442;
        MEMORY[0x28223BE20](v124);
        *(&v442 - 2) = v119;
        *(&v442 - 8) = 0;
        *&v451[0] = v119;
        v125 = v121;
        sub_245747C90();
      }

      else
      {
        v125 = v121;
        v122[297] = 0;
      }

      v242 = *v122;
      v445 = v122;
      if (v242)
      {
        v243 = swift_getKeyPath();
        MEMORY[0x28223BE20](v243);
        v244 = v449;
        *(&v442 - 2) = v449;
        *(&v442 - 8) = 0;
        *&v451[0] = v244;
        sub_245747C90();
      }

      else
      {
        *v122 = 0;
      }

      sub_245710320(0);
      v245 = *(v11 + 3);
      v246 = v245;
      sub_24570E8B8(v245);
      v247 = *v11;
      v443 = v125;
      if ((v247 & 1) == 0)
      {
        v252 = v445;
        if (v445[264] == 1)
        {
          v445[264] = 1;
        }

        else
        {
          v360 = swift_getKeyPath();
          MEMORY[0x28223BE20](v360);
          v361 = v449;
          *(&v442 - 2) = v449;
          *(&v442 - 8) = 1;
          *&v451[0] = v361;
          sub_245747C90();
        }

        if (v252[136] == 1)
        {
          v252[136] = 1;
          v362 = v449;
        }

        else
        {
          v363 = swift_getKeyPath();
          MEMORY[0x28223BE20](v363);
          v362 = v449;
          *(&v442 - 2) = v449;
          *(&v442 - 8) = 1;
          *&v451[0] = v362;
          sub_245747C90();
        }

        swift_getKeyPath();
        *&v451[0] = v362;
        sub_245747CA0();

        v364 = *(v362 + 904);
        v365 = objc_allocWithZone(MEMORY[0x277CE65B0]);
        v366 = v364;
        v367 = sub_245747BF0();
        v368 = [v365 initWithURL_];

        [v366 replaceCurrentItemWithPlayerItem_];
        goto LABEL_382;
      }

      *&v450 = v123;
      v248 = v11[*(v448 + 48)];
      swift_getKeyPath();
      if (v248 == 1)
      {
        v249 = v449;
        *&v451[0] = v449;
        sub_245747CA0();

        v250 = v445;
        if ((v445[312] & 1) == 0)
        {
          v251 = swift_getKeyPath();
          v442 = &v442;
          MEMORY[0x28223BE20](v251);
          *(&v442 - 2) = v249;
          *(&v442 - 8) = 1;
          *&v451[0] = v249;
          v123 = v450;
          sub_245747C90();

          if (v250[313] == 1)
          {
            v250[313] = 1;
          }

          else
          {
            v439 = swift_getKeyPath();
            MEMORY[0x28223BE20](v439);
            *(&v442 - 2) = v249;
            *(&v442 - 8) = 1;
            *&v451[0] = v249;
            sub_245747C90();
          }

          swift_getKeyPath();
          *&v451[0] = v249;
          sub_245747CA0();

          [*(v249 + 904) play];
          goto LABEL_382;
        }
      }

      else
      {
        v356 = v449;
        *&v451[0] = v449;
        sub_245747CA0();

        v357 = v445;
        if (v445[312] == 1)
        {
          v358 = swift_getKeyPath();
          v442 = &v442;
          MEMORY[0x28223BE20](v358);
          *(&v442 - 2) = v356;
          *(&v442 - 8) = 0;
          *&v451[0] = v356;
          v123 = v450;
          sub_245747C90();

          if (v357[313])
          {
            v359 = swift_getKeyPath();
            MEMORY[0x28223BE20](v359);
            *(&v442 - 2) = v356;
            *(&v442 - 8) = 0;
            *&v451[0] = v356;
            sub_245747C90();
          }

          else
          {
            v357[313] = 0;
          }

          swift_getKeyPath();
          *&v451[0] = v356;
          sub_245747CA0();

          [*(v356 + 904) pause];
          swift_getKeyPath();
          *&v451[0] = v356;
          sub_245747CA0();

          v440 = *(v356 + 904);
          v441 = *(MEMORY[0x277CC08F0] + 16);
          v451[0] = *MEMORY[0x277CC08F0];
          *&v451[1] = v441;
          [v440 seekToTime_];
          goto LABEL_382;
        }
      }

      v123 = v450;
LABEL_382:
      if (v11[*(v448 + 56)] == 1)
      {
        if (qword_27EE24240 != -1)
        {
          swift_once();
        }

        v369 = qword_27EE24D68;
        v370 = unk_27EE24D70;

        sub_24570DB44(v369, v370);
        if (qword_27EE24248 != -1)
        {
          swift_once();
        }

        v372 = qword_27EE24D78;
        v371 = unk_27EE24D80;

        sub_24570DDA4(v372, v371);
        if (qword_27EE241F0 != -1)
        {
          swift_once();
        }

        v374 = qword_27EE24CC8;
        v373 = unk_27EE24CD0;

        sub_24570E004(v374, v373);
        v375 = 0;
        v376 = 0;
      }

      else
      {
        v377 = *(v11 + 72);
        v378 = *(v11 + 9);
        if (!v378)
        {
          goto LABEL_401;
        }

        v379 = *(v11 + 8);
        v380 = HIBYTE(v378) & 0xF;
        if ((v378 & 0x2000000000000000) == 0)
        {
          v380 = v379 & 0xFFFFFFFFFFFFLL;
        }

        if (v380)
        {
          *&v451[0] = *(v11 + 8);
          *(v451 + 8) = v377;
          sub_245702E58(v451, v452);
          if (qword_27EE24250 != -1)
          {
            swift_once();
          }

          v381 = qword_27EE24D88;
          v382 = unk_27EE24D90;

          sub_24570DB44(v381, v382);
          sub_24570DDA4(v379, v378);
          if (qword_27EE241F0 != -1)
          {
            swift_once();
          }

          v384 = qword_27EE24CC8;
          v383 = unk_27EE24CD0;

          sub_24570E004(v384, v383);
          if (qword_27EE242B0 != -1)
          {
            swift_once();
          }

          v386 = qword_27EE24E48;
          v385 = unk_27EE24E50;

          v375 = v386;
          v376 = v385;
        }

        else
        {
LABEL_401:
          if (qword_27EE24220 != -1)
          {
            swift_once();
          }

          v387 = qword_27EE24D28;
          v388 = unk_27EE24D30;

          sub_24570DB44(v387, v388);
          if (qword_27EE24228 != -1)
          {
            swift_once();
          }

          v390 = qword_27EE24D38;
          v389 = unk_27EE24D40;

          sub_24570DDA4(v390, v389);
          if (qword_27EE24268 != -1)
          {
            swift_once();
          }

          v392 = qword_27EE24DB8;
          v391 = qword_27EE24DC0;

          sub_24570E004(v392, v391);
          if ((v11[16] & 1) != 0 || *(v11 + 1) >= 1)
          {
            if (qword_27EE24258 != -1)
            {
              swift_once();
            }

            v393 = qword_27EE24D98;
            v394 = unk_27EE24DA0;
          }

          else
          {
            v393 = 0;
            v394 = 0;
          }

          v375 = v393;
          v376 = v394;
        }
      }

      sub_24570E644(v375, v376);
      if (v11[*(v448 + 64)] == 1)
      {
        if (v445[137] == 1)
        {
          v445[137] = 1;
        }

        else
        {
          v422 = swift_getKeyPath();
          MEMORY[0x28223BE20](v422);
          v423 = v449;
          *(&v442 - 2) = v449;
          *(&v442 - 8) = 1;
          *&v451[0] = v423;
          sub_245747C90();
        }

        *&v450 = v123;
        if (qword_27EE242F0 != -1)
        {
          swift_once();
        }

        v424 = qword_27EE24EC8;
        v425 = unk_27EE24ED0;

        v426 = v449;
        sub_24570EDE4(v424, v425);
        if (qword_27EE242F8 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24F28, &qword_24574B5C8);
        v427 = swift_allocObject();
        *(v427 + 16) = xmmword_24574A850;
        swift_getKeyPath();
        *&v451[0] = v426;
        sub_245747CA0();

        v428 = *(v426 + 568);
        v429 = *(v426 + 576);
        *(v427 + 56) = MEMORY[0x277D837D0];
        *(v427 + 64) = sub_24571BAB4();
        *(v427 + 32) = v428;
        *(v427 + 40) = v429;

        v430 = sub_2457486D0();
        v432 = v431;

        sub_24570F038(v430, v432);
        if (qword_27EE242B0 != -1)
        {
          swift_once();
        }

        v433 = qword_27EE24E48;
        v434 = unk_27EE24E50;

        sub_24570F4EC(v433, v434);
        if (qword_27EE24308 != -1)
        {
          swift_once();
        }

        v435 = qword_27EE24EF8;
        v436 = unk_27EE24F00;

        sub_24570F9F4(v435, v436);
      }

      if (v445[105])
      {
        v437 = swift_getKeyPath();
        MEMORY[0x28223BE20](v437);
        v438 = v449;
        *(&v442 - 2) = v449;
        *(&v442 - 8) = 0;
        *&v451[0] = v438;
        sub_245747C90();
      }

      else
      {
        v445[105] = 0;
      }

      (v447[1])(v446, v7);
      v160 = type metadata accessor for RGBLivenessModel.PassiveConfiguration;
      v161 = v11;
      goto LABEL_171;
    case 3u:
      if (v3[104] == 1)
      {
        v3[104] = 1;
        v65 = v449;
      }

      else
      {
        v168 = swift_getKeyPath();
        MEMORY[0x28223BE20](v168);
        v65 = v449;
        *(&v442 - 2) = v449;
        *(&v442 - 8) = 1;
        *&v451[0] = v65;
        sub_24571B9BC();
        sub_245747C90();
      }

      if (*(v65 + 720))
      {
        v169 = swift_getKeyPath();
        MEMORY[0x28223BE20](v169);
        *(&v442 - 3) = 0;
        *(&v442 - 2) = 0;
        *(&v442 - 4) = v65;
        *&v451[0] = v65;
        sub_24571B9BC();
        sub_245747C90();
      }

      else
      {
        *(v65 + 712) = 0u;
      }

      goto LABEL_170;
    case 4u:
      v68 = *v19;
      v69 = *(v19 + 2);
      v70 = *(v19 + 3);
      v71 = *(v19 + 4);
      v447 = *(v19 + 1);
      *&v448 = v70;
      v445 = v3;
      if (v68)
      {
        v72 = v449;
      }

      else
      {
        v173 = v69;
        v174 = v449;
        sub_24570E8B8(0);
        if (v3[264])
        {
          v175 = swift_getKeyPath();
          MEMORY[0x28223BE20](v175);
          *(&v442 - 2) = v174;
          *(&v442 - 8) = 0;
          *&v451[0] = v174;
          sub_24571B9BC();
          v176 = v3;
          v177 = v450;
          sub_245747C90();
          *&v450 = v177;
          v3 = v176;
        }

        else
        {
          v3[264] = 0;
        }

        if (v3[136])
        {
          v290 = swift_getKeyPath();
          MEMORY[0x28223BE20](v290);
          *(&v442 - 2) = v174;
          *(&v442 - 8) = 0;
          *&v451[0] = v174;
          sub_24571B9BC();
          v291 = v3;
          v292 = v450;
          sub_245747C90();
          *&v450 = v292;
          v3 = v291;
        }

        else
        {
          v3[136] = 0;
        }

        if (v3[313])
        {
          v293 = swift_getKeyPath();
          MEMORY[0x28223BE20](v293);
          *(&v442 - 2) = v174;
          *(&v442 - 8) = 0;
          *&v451[0] = v174;
          sub_24571B9BC();
          v294 = v3;
          v295 = v450;
          sub_245747C90();
          *&v450 = v295;
          v3 = v294;
        }

        else
        {
          v3[313] = 0;
        }

        if (*v3 == 1)
        {
          *v3 = 1;
        }

        else
        {
          v296 = swift_getKeyPath();
          MEMORY[0x28223BE20](v296);
          *(&v442 - 2) = v174;
          *(&v442 - 8) = 1;
          *&v451[0] = v174;
          sub_24571B9BC();
          v297 = v3;
          v298 = v450;
          sub_245747C90();
          *&v450 = v298;
          v3 = v297;
        }

        if (v3[297] == 1)
        {
          v3[297] = 1;
        }

        else
        {
          v299 = swift_getKeyPath();
          MEMORY[0x28223BE20](v299);
          *(&v442 - 2) = v174;
          *(&v442 - 8) = 1;
          *&v451[0] = v174;
          sub_24571B9BC();
          v300 = v450;
          sub_245747C90();
          *&v450 = v300;
        }

        if (qword_27EE24190 != -1)
        {
          swift_once();
        }

        v301 = qword_27EE24C08;
        v302 = unk_27EE24C10;

        sub_24570DB44(v301, v302);
        if (qword_27EE24198 != -1)
        {
          swift_once();
        }

        v303 = qword_27EE24C18;
        v304 = unk_27EE24C20;

        sub_24570DDA4(v303, v304);
        if (qword_27EE241A0 != -1)
        {
          swift_once();
        }

        v305 = qword_27EE24C28;
        v306 = unk_27EE24C30;

        v307 = v305;
        v72 = v174;
        sub_24570E004(v307, v306);
        sub_24570E644(0, 0);
        v69 = v173;
      }

      v308 = swift_getKeyPath();
      MEMORY[0x28223BE20](v308);
      *(&v442 - 4) = v72;
      *(&v442 - 3) = v69;
      v309 = v448;
      *(&v442 - 2) = v448;
      *(&v442 - 1) = v71;
      v310 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessViewConfig___observationRegistrar;
      *&v451[0] = v72;
      sub_24571B9BC();

      *&v450 = v310;
      sub_245747C90();

      if (v309)
      {
        v311 = (v71 >> 8) & 1;
        v312 = v445;
        if ((v311 ^ v445[105]))
        {
LABEL_319:
          v313 = swift_getKeyPath();
          MEMORY[0x28223BE20](v313);
          v314 = v449;
          *(&v442 - 2) = v449;
          *(&v442 - 8) = v311;
          *&v451[0] = v314;
          sub_245747C90();

          return;
        }
      }

      else
      {
        LOBYTE(v311) = 0;
        v312 = v445;
        if (v445[105])
        {
          goto LABEL_319;
        }
      }

      v312[105] = v311;

      return;
    case 5u:
      if (qword_27EE241A8 != -1)
      {
        swift_once();
      }

      v54 = qword_27EE24C38;
      v55 = unk_27EE24C40;

      v27 = v449;
      sub_24570DB44(v54, v55);
      if (*(v27 + 680))
      {
        v56 = swift_getKeyPath();
        MEMORY[0x28223BE20](v56);
        *(&v442 - 3) = 0;
        *(&v442 - 2) = 0;
        *(&v442 - 4) = v27;
        *&v451[0] = v27;
        sub_24571B9BC();
        sub_245747C90();

        if (*(v27 + 696))
        {
LABEL_35:
          v57 = swift_getKeyPath();
          MEMORY[0x28223BE20](v57);
          *(&v442 - 3) = 0;
          *(&v442 - 2) = 0;
          *(&v442 - 4) = v27;
          *&v451[0] = v27;
          sub_24571B9BC();
          sub_245747C90();

          if (v3[104])
          {
LABEL_36:
            v3[104] = 1;
            return;
          }

LABEL_164:
          v193 = swift_getKeyPath();
          MEMORY[0x28223BE20](v193);
          *(&v442 - 2) = v27;
          *(&v442 - 8) = 1;
          *&v451[0] = v27;
          sub_24571B9BC();
LABEL_215:
          sub_245747C90();

          return;
        }
      }

      else
      {
        *(v27 + 672) = 0u;
        if (*(v27 + 696))
        {
          goto LABEL_35;
        }
      }

      *(v27 + 688) = 0u;
      if (v3[104])
      {
        goto LABEL_36;
      }

      goto LABEL_164;
    case 6u:
      v75 = *(v19 + 1);
      v451[0] = *v19;
      v451[1] = v75;
      v451[2] = *(v19 + 2);
      *(&v451[2] + 9) = *(v19 + 41);
      if (v451[0])
      {
        v76 = v449;
      }

      else
      {
        v178 = *(&v451[0] + 1);
        v179 = sub_245730830(*(&v451[0] + 1));
        v76 = v449;
        sub_24570D938(v179);
        if (v3[1] == 1)
        {
          v3[1] = 1;
        }

        else
        {
          v336 = swift_getKeyPath();
          MEMORY[0x28223BE20](v336);
          *(&v442 - 2) = v76;
          *(&v442 - 8) = 1;
          v452[0] = v76;
          sub_24571B9BC();
          v337 = v3;
          v338 = v450;
          sub_245747C90();
          *&v450 = v338;
          v3 = v337;
        }

        if (v3[104])
        {
          v339 = swift_getKeyPath();
          MEMORY[0x28223BE20](v339);
          *(&v442 - 2) = v76;
          *(&v442 - 8) = 0;
          v452[0] = v76;
          sub_24571B9BC();
          v340 = v450;
          sub_245747C90();
        }

        else
        {
          v3[104] = 0;
          v340 = v450;
        }

        if (*&v451[1] < 1)
        {
          if (qword_27EE241A8 != -1)
          {
            swift_once();
          }

          v344 = qword_27EE24C38;

          v341 = v344;
        }

        else
        {
          v341 = sub_24571BB38(v178);
        }

        sub_24570DB44(v341, v342);
        swift_getKeyPath();
        v452[0] = v76;
        sub_24571B9BC();
        sub_245747CA0();

        if (*(v76 + 16) == 1)
        {
          if (qword_27EE241B8 != -1)
          {
            swift_once();
          }

          v345 = qword_27EE24C58;
          v346 = unk_27EE24C60;
        }

        else
        {
          v345 = 0;
          v346 = 0;
        }

        sub_24570DDA4(v345, v346);
        sub_24570E004(0, 0);
        swift_getKeyPath();
        v452[0] = v76;
        sub_245747CA0();

        v347 = 0;
        v348 = 0;
        if ((*(v76 + 16) & 1) == 0)
        {
          if (qword_27EE241B0 != -1)
          {
            swift_once();
          }

          v347 = qword_27EE24C48;
          v348 = unk_27EE24C50;
        }

        *&v450 = v340;
        sub_24570E644(v347, v348);
      }

      swift_getKeyPath();
      v452[0] = v76;
      sub_24571B9BC();
      sub_245747CA0();

      if (*(v76 + 16) == 1 && BYTE8(v451[3]) == 1)
      {
        if (qword_27EE241C0 != -1)
        {
          swift_once();
        }

        v349 = qword_27EE24C68;
        v350 = unk_27EE24C70;

        sub_24570E004(v349, v350);
        if (qword_27EE241C8 != -1)
        {
          swift_once();
        }

        v351 = qword_27EE24C78;
        v352 = unk_27EE24C80;

        sub_24570E644(v351, v352);
      }

      v353 = v451[2];
      v354 = *&v451[3];
      v355 = swift_getKeyPath();
      MEMORY[0x28223BE20](v355);
      *(&v442 - 4) = v76;
      *(&v442 - 3) = v353;
      *(&v442 - 1) = v354;
      v452[0] = v76;

      sub_245747C90();
      sub_2457028DC(v451);

      return;
    case 7u:
      v40 = *(v19 + 1);
      v451[0] = *v19;
      v451[1] = v40;
      v451[2] = *(v19 + 2);
      *(&v451[2] + 9) = *(v19 + 41);
      if (v451[0])
      {
        v41 = v449;
      }

      else
      {
        v41 = v449;
        if (*(v449 + 632) != 9)
        {
          v90 = swift_getKeyPath();
          MEMORY[0x28223BE20](v90);
          *(&v442 - 2) = v41;
          *(&v442 - 8) = 9;
          v452[0] = v41;
          sub_24571B9BC();
          v91 = v3;
          v92 = v450;
          sub_245747C90();
          *&v450 = v92;
          v3 = v91;
        }

        if (v3[1])
        {
          v93 = swift_getKeyPath();
          MEMORY[0x28223BE20](v93);
          *(&v442 - 2) = v41;
          *(&v442 - 8) = 0;
          v452[0] = v41;
          sub_24571B9BC();
          sub_245747C90();
        }

        else
        {
          v3[1] = 0;
        }

        sub_24570E004(0, 0);
        sub_24570E644(0, 0);
      }

      v239 = v451[2];
      v240 = *&v451[3];
      v241 = swift_getKeyPath();
      MEMORY[0x28223BE20](v241);
      *(&v442 - 4) = v41;
      *(&v442 - 3) = v239;
      *(&v442 - 1) = v240;
      v452[0] = v41;
      sub_24571B9BC();

      sub_245747C90();
      sub_2457028DC(v451);
      goto LABEL_295;
    case 8u:
      v73 = *(v19 + 1);
      v451[0] = *v19;
      v451[1] = v73;
      v451[2] = *(v19 + 2);
      *(&v451[2] + 9) = *(v19 + 41);
      v445 = v3;
      if (v451[0])
      {
        v74 = v449;
      }

      else
      {
        v74 = v449;
        if (*(v449 + 16) == 1)
        {
          *(v449 + 16) = 1;
        }

        else
        {
          v317 = swift_getKeyPath();
          MEMORY[0x28223BE20](v317);
          *(&v442 - 2) = v74;
          *(&v442 - 8) = 1;
          v452[0] = v74;
          sub_24571B9BC();
          sub_245747C90();
        }

        if (*(v74 + 632) != 9)
        {
          v318 = swift_getKeyPath();
          MEMORY[0x28223BE20](v318);
          *(&v442 - 2) = v74;
          *(&v442 - 8) = 9;
          v452[0] = v74;
          sub_24571B9BC();
          sub_245747C90();
        }

        if (qword_27EE241B0 != -1)
        {
          swift_once();
        }

        v319 = qword_27EE24C48;
        v320 = unk_27EE24C50;

        sub_24570DB44(v319, v320);
        if (qword_27EE241D0 != -1)
        {
          swift_once();
        }

        v321 = qword_27EE24C88;
        v322 = unk_27EE24C90;

        sub_24570DDA4(v321, v322);
        sub_24570E644(0, 0);
        if (qword_27EE24268 != -1)
        {
          swift_once();
        }

        v323 = qword_27EE24DB8;
        v324 = qword_27EE24DC0;

        sub_24570E004(v323, v324);
      }

      v325 = v451[2];
      v326 = *&v451[3];
      v327 = swift_getKeyPath();
      MEMORY[0x28223BE20](v327);
      *(&v442 - 4) = v74;
      *(&v442 - 3) = v325;
      *(&v442 - 1) = v326;
      v328 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessViewConfig___observationRegistrar;
      v452[0] = v74;
      sub_24571B9BC();

      *&v450 = v328;
      sub_245747C90();

      if (*(&v325 + 1))
      {
        v329 = (v326 & 0x100) == 0;
        v330 = v445;
        if ((v445[1] ^ v329))
        {
LABEL_336:
          v331 = v330;
          v332 = v449;
          v333 = swift_getKeyPath();
          MEMORY[0x28223BE20](v333);
          *(&v442 - 2) = v332;
          *(&v442 - 8) = v329;
          v452[0] = v332;
          sub_245747C90();

          goto LABEL_339;
        }
      }

      else
      {
        v330 = v445;
        LOBYTE(v329) = 1;
        if ((v445[1] & 1) == 0)
        {
          goto LABEL_336;
        }
      }

      v331 = v330;
      v332 = v449;
      v330[1] = v329;
LABEL_339:
      if (*(&v325 + 1))
      {
        v334 = (v326 >> 8) & 1;
        if ((v334 ^ v331[105]))
        {
LABEL_341:
          v335 = swift_getKeyPath();
          MEMORY[0x28223BE20](v335);
          *(&v442 - 2) = v332;
          *(&v442 - 8) = v334;
          v452[0] = v332;
          sub_245747C90();

          sub_2457028DC(v451);
          return;
        }
      }

      else
      {
        LOBYTE(v334) = 0;
        if (v331[105])
        {
          goto LABEL_341;
        }
      }

      v331[105] = v334;
      sub_2457028DC(v451);
      return;
    case 9u:
      v35 = *(v19 + 1);
      v451[0] = *v19;
      v451[1] = v35;
      v36 = *(v19 + 3);
      v451[2] = *(v19 + 2);
      v451[3] = v36;
      *&v451[4] = *(v19 + 8);
      if (v451[0])
      {
        v37 = v449;
      }

      else
      {
        v37 = v449;
        if (*(v449 + 632) != 9)
        {
          v83 = swift_getKeyPath();
          MEMORY[0x28223BE20](v83);
          *(&v442 - 2) = v37;
          *(&v442 - 8) = 9;
          v452[0] = v37;
          sub_24571B9BC();
          v84 = v3;
          v85 = v450;
          sub_245747C90();
          *&v450 = v85;
          v3 = v84;
        }

        if (v3[1])
        {
          v86 = swift_getKeyPath();
          MEMORY[0x28223BE20](v86);
          *(&v442 - 2) = v37;
          *(&v442 - 8) = 0;
          v452[0] = v37;
          sub_24571B9BC();
          sub_245747C90();
        }

        else
        {
          v3[1] = 0;
        }

        v226 = sub_24571BD0C(*(&v451[1] + 1));
        sub_24570DB44(v226, v227);
        sub_24570DDA4(0, 0);
        sub_24570E004(0, 0);
        swift_getKeyPath();
        v452[0] = v37;
        sub_24571B9BC();
        sub_245747CA0();

        if (*(v37 + 16) == 1)
        {
          if (qword_27EE241C8 != -1)
          {
            swift_once();
          }

          v228 = &qword_27EE24C78;
        }

        else
        {
          if (qword_27EE241B0 != -1)
          {
            swift_once();
          }

          v228 = &qword_27EE24C48;
        }

        v229 = *v228;
        v230 = v228[1];

        sub_24570E644(v229, v230);
      }

      goto LABEL_294;
    case 0xAu:
      v38 = *(v19 + 1);
      v451[0] = *v19;
      v451[1] = v38;
      v39 = *(v19 + 3);
      v451[2] = *(v19 + 2);
      v451[3] = v39;
      *&v451[4] = *(v19 + 8);
      if (v451[0])
      {
        v37 = v449;
      }

      else
      {
        v37 = v449;
        if (*(v449 + 632) != 9)
        {
          v87 = swift_getKeyPath();
          MEMORY[0x28223BE20](v87);
          *(&v442 - 2) = v37;
          *(&v442 - 8) = 9;
          v452[0] = v37;
          sub_24571B9BC();
          v88 = v3;
          v89 = v450;
          sub_245747C90();
          *&v450 = v89;
          v3 = v88;
        }

        if (v3[1])
        {
          v3[1] = 1;
        }

        else
        {
          v231 = swift_getKeyPath();
          MEMORY[0x28223BE20](v231);
          *(&v442 - 2) = v37;
          *(&v442 - 8) = 1;
          v452[0] = v37;
          sub_24571B9BC();
          v232 = v3;
          v233 = v450;
          sub_245747C90();
          *&v450 = v233;
          v3 = v232;
        }

        if (qword_27EE241D8 != -1)
        {
          swift_once();
        }

        v234 = qword_27EE24C98;
        v235 = unk_27EE24CA0;

        sub_24570DB44(v234, v235);
        sub_24570DDA4(0, 0);
        swift_getKeyPath();
        v452[0] = v37;
        sub_24571B9BC();
        sub_245747CA0();

        v236 = 0;
        v237 = 0;
        if (*(v37 + 16) == 1)
        {
          if (qword_27EE24268 != -1)
          {
            swift_once();
          }

          v236 = qword_27EE24DB8;
          v237 = qword_27EE24DC0;
        }

        sub_24570E004(v236, v237);
        sub_24570E644(0, 0);
        if (v3[298])
        {
          v238 = swift_getKeyPath();
          MEMORY[0x28223BE20](v238);
          *(&v442 - 2) = v37;
          *(&v442 - 8) = 0;
          v452[0] = v37;
          sub_245747C90();
        }

        else
        {
          v3[298] = 0;
        }
      }

      goto LABEL_294;
    case 0xBu:
      v66 = *(v19 + 1);
      v451[0] = *v19;
      v451[1] = v66;
      v67 = *(v19 + 3);
      v451[2] = *(v19 + 2);
      v451[3] = v67;
      *&v451[4] = *(v19 + 8);
      if (v451[0])
      {
        v37 = v449;
      }

      else
      {
        v37 = v449;
        if (*(v449 + 632) != 9)
        {
          v170 = swift_getKeyPath();
          MEMORY[0x28223BE20](v170);
          *(&v442 - 2) = v37;
          *(&v442 - 8) = 9;
          v452[0] = v37;
          sub_24571B9BC();
          v171 = v3;
          v172 = v450;
          sub_245747C90();
          *&v450 = v172;
          v3 = v171;
        }

        if (v3[1])
        {
          v3[1] = 1;
        }

        else
        {
          v274 = swift_getKeyPath();
          MEMORY[0x28223BE20](v274);
          *(&v442 - 2) = v37;
          *(&v442 - 8) = 1;
          v452[0] = v37;
          sub_24571B9BC();
          sub_245747C90();
        }

        if (qword_27EE241E0 != -1)
        {
          swift_once();
        }

        v275 = qword_27EE24CA8;
        v276 = qword_27EE24CB0;

        sub_24570DB44(v275, v276);
        if (*&v451[2] == 2)
        {
          if (qword_27EE241F0 != -1)
          {
            swift_once();
          }

          v277 = qword_27EE24CC8;
          v278 = unk_27EE24CD0;

          sub_24570E004(v277, v278);
          if (qword_27EE241C8 != -1)
          {
            swift_once();
          }

          v279 = qword_27EE24C78;
          v280 = unk_27EE24C80;

          sub_24570E644(v279, v280);
          v281 = sub_24571BF78(*(&v451[1] + 1));
        }

        else
        {
          if (qword_27EE24268 != -1)
          {
            swift_once();
          }

          v283 = qword_27EE24DB8;
          v284 = qword_27EE24DC0;

          sub_24570E004(v283, v284);
          sub_24570E644(0, 0);
          if (qword_27EE241E8 != -1)
          {
            swift_once();
          }

          v285 = qword_27EE24CB8;
          v286 = unk_27EE24CC0;

          v281 = v285;
          v282 = v286;
        }

        sub_24570DDA4(v281, v282);
      }

LABEL_294:
      v287 = v451[3];
      v288 = *&v451[4];
      v289 = swift_getKeyPath();
      MEMORY[0x28223BE20](v289);
      *(&v442 - 4) = v37;
      *(&v442 - 3) = v287;
      *(&v442 - 1) = v288;
      v452[0] = v37;
      sub_24571B9BC();

      sub_245747C90();
      sub_245702888(v451);
LABEL_295:

      return;
    case 0xCu:
      v28 = v19[3];
      if (*v19)
      {
        goto LABEL_211;
      }

      v29 = v19[1];
      v30 = v19[2];
      v31 = v449;
      if (*(v449 + 632) != 9)
      {
        v32 = swift_getKeyPath();
        MEMORY[0x28223BE20](v32);
        *(&v442 - 2) = v31;
        *(&v442 - 8) = 9;
        *&v451[0] = v31;
        sub_24571B9BC();
        v33 = v3;
        v34 = v450;
        sub_245747C90();
        *&v450 = v34;
        v3 = v33;
      }

      if (v3[1])
      {
        v3[1] = 1;
      }

      else
      {
        v203 = swift_getKeyPath();
        MEMORY[0x28223BE20](v203);
        *(&v442 - 2) = v31;
        *(&v442 - 8) = 1;
        *&v451[0] = v31;
        sub_24571B9BC();
        v204 = v3;
        v205 = v450;
        sub_245747C90();
        *&v450 = v205;
        v3 = v204;
      }

      if (v3[104])
      {
        v206 = swift_getKeyPath();
        MEMORY[0x28223BE20](v206);
        *(&v442 - 2) = v31;
        *(&v442 - 8) = 0;
        *&v451[0] = v31;
        sub_24571B9BC();
        v207 = v3;
        v208 = v450;
        sub_245747C90();
        *&v450 = v208;
        v3 = v207;
      }

      else
      {
        v3[104] = 0;
      }

      sub_24570E644(0, 0);
      if (v30)
      {
        if (qword_27EE241F8 != -1)
        {
          swift_once();
        }

        v210 = qword_27EE24CD8;
        v209 = unk_27EE24CE0;
        v211 = qword_27EE24200;

        if (v211 == -1)
        {
          if (!v29)
          {
LABEL_190:
            sub_24570DB44(v210, v209);
            sub_24570DDA4(0, 0);
            if (qword_27EE24268 != -1)
            {
              swift_once();
            }

            v213 = &qword_27EE24DB8;
            goto LABEL_210;
          }
        }

        else
        {
          swift_once();
          if (!v29)
          {
            goto LABEL_190;
          }
        }

        v210 = qword_27EE24CE8;
        v212 = unk_27EE24CF0;

        v209 = v212;
        goto LABEL_190;
      }

      if (qword_27EE242B8 != -1)
      {
        swift_once();
      }

      LODWORD(v448) = v28;
      v214 = unk_27EE24E60;
      v446 = qword_27EE24E58;
      v215 = qword_27EE242C0;

      if (v215 != -1)
      {
        swift_once();
      }

      LODWORD(v447) = v29;
      v445 = v3;
      v217 = qword_27EE24E68;
      v216 = unk_27EE24E70;
      v218 = qword_27EE242C8;

      if (v218 != -1)
      {
        swift_once();
      }

      v220 = qword_27EE24E78;
      v219 = unk_27EE24E80;
      swift_getKeyPath();
      *&v451[0] = v449;
      sub_24571B9BC();

      sub_245747CA0();

      if (v445[298])
      {
        v221 = v220;
      }

      else
      {
        v221 = v217;
      }

      if (v445[298])
      {
        v216 = v219;
      }

      if (v447)
      {
        v214 = v216;
      }

      else
      {
        v221 = v446;
      }

      sub_24570DB44(v221, v214);
      sub_24570DDA4(0, 0);
      if (qword_27EE242D0 != -1)
      {
        swift_once();
      }

      v213 = &qword_27EE24E88;
      v3 = v445;
      v28 = v448;
LABEL_210:
      v222 = *v213;
      v223 = v213[1];

      sub_24570E004(v222, v223);
LABEL_211:
      if (v28)
      {
        if (v3[104] == 1)
        {
          v3[104] = 1;
          return;
        }

        v224 = swift_getKeyPath();
        MEMORY[0x28223BE20](v224);
        v225 = v449;
        *(&v442 - 2) = v449;
        *(&v442 - 8) = 1;
        *&v451[0] = v225;
        sub_24571B9BC();
        goto LABEL_215;
      }

      return;
    case 0xDu:
      v44 = *v19;
      v45 = *(v19 + 2);
      *&v448 = *(v19 + 1);
      v46 = *(v19 + 3);
      v47 = *(v19 + 4);
      v48 = v19[40];
      if (v44)
      {
        if (v48 == 2)
        {
          goto LABEL_27;
        }
      }

      else
      {
        swift_getKeyPath();
        v96 = v449;
        *&v451[0] = v449;
        sub_24571B9BC();
        sub_245747CA0();

        memcpy(v451, (v96 + 24), sizeof(v451));
        sub_245720840();

        sub_245710320(v97);
        if (v48 == 2)
        {
LABEL_27:
          if (v3[136])
          {
LABEL_28:
            v49 = swift_getKeyPath();
            MEMORY[0x28223BE20](v49);
            v50 = v3;
            v51 = v449;
            *(&v442 - 2) = v449;
            *(&v442 - 8) = 0;
            *&v451[0] = v51;
            sub_24571B9BC();
            v52 = v450;
            sub_245747C90();
            *&v450 = v52;
            v3 = v50;

            goto LABEL_82;
          }

LABEL_81:
          v3[136] = 0;
LABEL_82:
          if (*v3 == 1)
          {
            *v3 = 1;
            if ((v3[1] & 1) == 0)
            {
              goto LABEL_84;
            }
          }

          else
          {
            v100 = swift_getKeyPath();
            MEMORY[0x28223BE20](v100);
            v101 = v3;
            v102 = v449;
            *(&v442 - 2) = v449;
            *(&v442 - 8) = 1;
            *&v451[0] = v102;
            sub_24571B9BC();
            v103 = v450;
            sub_245747C90();
            *&v450 = v103;
            v3 = v101;

            if ((v101[1] & 1) == 0)
            {
LABEL_84:
              v3[1] = 0;
              if ((v3[104] & 1) == 0)
              {
                goto LABEL_85;
              }

              goto LABEL_89;
            }
          }

          v104 = swift_getKeyPath();
          MEMORY[0x28223BE20](v104);
          v105 = v3;
          v106 = v449;
          *(&v442 - 2) = v449;
          *(&v442 - 8) = 0;
          *&v451[0] = v106;
          sub_24571B9BC();
          v107 = v450;
          sub_245747C90();
          *&v450 = v107;
          v3 = v105;

          if ((v105[104] & 1) == 0)
          {
LABEL_85:
            v3[104] = 0;
            if ((v3[296] & 1) == 0)
            {
LABEL_86:
              v3[296] = 0;
              v99 = v449;
LABEL_91:
              sub_24570E8B8(0);
              v113 = swift_getKeyPath();
              MEMORY[0x28223BE20](v113);
              *(&v442 - 4) = v99;
              *(&v442 - 3) = v45;
              *(&v442 - 2) = v46;
              *(&v442 - 1) = v47;
              *&v451[0] = v99;
              sub_24571B9BC();

              sub_245747C90();

              if (qword_27EE24230 != -1)
              {
                swift_once();
              }

              v114 = qword_27EE24D48;
              v115 = unk_27EE24D50;

              sub_24570DB44(v114, v115);
              sub_24570DDA4(0, 0);
              if (qword_27EE24208 != -1)
              {
                swift_once();
              }

              v116 = qword_27EE24CF8;
              v117 = unk_27EE24D00;

              sub_24570E004(v116, v117);
              sub_24570E644(0, 0);

              return;
            }

LABEL_90:
            v112 = swift_getKeyPath();
            MEMORY[0x28223BE20](v112);
            v99 = v449;
            *(&v442 - 2) = v449;
            *(&v442 - 8) = 0;
            *&v451[0] = v99;
            sub_24571B9BC();
            sub_245747C90();

            goto LABEL_91;
          }

LABEL_89:
          v108 = swift_getKeyPath();
          MEMORY[0x28223BE20](v108);
          v109 = v3;
          v110 = v449;
          *(&v442 - 2) = v449;
          *(&v442 - 8) = 0;
          *&v451[0] = v110;
          sub_24571B9BC();
          v111 = v450;
          sub_245747C90();
          *&v450 = v111;
          v3 = v109;

          if ((v109[296] & 1) == 0)
          {
            goto LABEL_86;
          }

          goto LABEL_90;
        }
      }

      sub_245710320(v98);
      if (v3[136])
      {
        goto LABEL_28;
      }

      goto LABEL_81;
    case 0xEu:
      if (v3[104] == 1)
      {
        v3[104] = 1;
        v27 = v449;
      }

      else
      {
        v80 = swift_getKeyPath();
        MEMORY[0x28223BE20](v80);
        v27 = v449;
        *(&v442 - 2) = v449;
        *(&v442 - 8) = 1;
        *&v451[0] = v27;
        sub_24571B9BC();
        v81 = v3;
        v82 = v450;
        sub_245747C90();
        *&v450 = v82;
        v3 = v81;
      }

      if (v3[296] != 1)
      {
        goto LABEL_164;
      }

      v3[296] = 1;
      return;
    case 0xFu:
      v58 = *v19;
      v447 = *(v19 + 1);
      v448 = *(v19 + 24);
      v59 = v19[56];
      if (v58)
      {
        v60 = v449;
        goto LABEL_412;
      }

      LODWORD(v446) = v19[56];
      v162 = *(v19 + 2);
      v443 = *(v19 + 6);
      v444 = v162;
      v163 = swift_getKeyPath();
      MEMORY[0x28223BE20](v163);
      v60 = v449;
      *(&v442 - 4) = v449;
      *(&v442 - 3) = 0;
      *(&v442 - 2) = 0;
      *(&v442 - 1) = 0;
      *&v451[0] = v60;
      sub_24571B9BC();
      v445 = v3;
      v164 = v450;
      sub_245747C90();
      v165 = v164;
      v3 = v445;

      v166 = v447;
      v167 = v447;
      sub_24570E8B8(v166);
      if (v3[136] == 1)
      {
        *&v450 = v165;
        v3[136] = 1;
      }

      else
      {
        v253 = swift_getKeyPath();
        MEMORY[0x28223BE20](v253);
        *(&v442 - 2) = v60;
        *(&v442 - 8) = 1;
        *&v451[0] = v60;
        sub_245747C90();
        *&v450 = v165;
        v3 = v445;
      }

      if (v3[264])
      {
        v254 = swift_getKeyPath();
        MEMORY[0x28223BE20](v254);
        *(&v442 - 2) = v60;
        *(&v442 - 8) = 0;
        *&v451[0] = v60;
        v255 = v450;
        sub_245747C90();
        *&v450 = v255;
        v3 = v445;
      }

      else
      {
        v3[264] = 0;
      }

      if (*v3)
      {
        v256 = swift_getKeyPath();
        MEMORY[0x28223BE20](v256);
        *(&v442 - 2) = v60;
        *(&v442 - 8) = 0;
        *&v451[0] = v60;
        v257 = v450;
        sub_245747C90();
        *&v450 = v257;
        v3 = v445;
      }

      else
      {
        *v3 = 0;
      }

      if (v3[104])
      {
        v258 = swift_getKeyPath();
        MEMORY[0x28223BE20](v258);
        *(&v442 - 2) = v60;
        *(&v442 - 8) = 0;
        *&v451[0] = v60;
        v259 = v450;
        sub_245747C90();
        *&v450 = v259;
        v3 = v445;
      }

      else
      {
        v3[104] = 0;
      }

      v260 = v444;
      sub_245710320(0);
      v261 = v448;
      if (v448)
      {
        v262 = BYTE7(v448) & 0xF;
        if ((v448 & 0x2000000000000000) == 0)
        {
          v262 = v260 & 0xFFFFFFFFFFFFLL;
        }

        if (v262)
        {
          *&v451[0] = v260;
          *(v451 + 8) = v448;
          sub_245702E58(v451, v452);
          if (qword_27EE242E0 != -1)
          {
            swift_once();
          }

          v263 = qword_27EE24EA8;
          v264 = unk_27EE24EB0;

          sub_24570DB44(v263, v264);
          sub_24570DDA4(v260, v261);
          if (qword_27EE241F0 != -1)
          {
            swift_once();
          }

          v265 = qword_27EE24CC8;
          v266 = unk_27EE24CD0;

          sub_24570E004(v265, v266);
          if (qword_27EE242B0 != -1)
          {
            swift_once();
          }

          v267 = &qword_27EE24E48;
LABEL_278:
          v272 = *v267;
          v273 = v267[1];

          goto LABEL_411;
        }
      }

      if (qword_27EE24238 != -1)
      {
        swift_once();
      }

      v268 = qword_27EE24D58;
      v269 = unk_27EE24D60;

      sub_24570DB44(v268, v269);
      sub_24570DDA4(0, 0);
      if (qword_27EE24268 != -1)
      {
        swift_once();
      }

      v270 = qword_27EE24DB8;
      v271 = qword_27EE24DC0;

      sub_24570E004(v270, v271);
      if (v443 >= 1)
      {
        if (qword_27EE24260 != -1)
        {
          swift_once();
        }

        v267 = &qword_27EE24DA8;
        goto LABEL_278;
      }

      v272 = 0;
      v273 = 0;
LABEL_411:
      sub_24570E644(v272, v273);
      v59 = v446;
LABEL_412:
      if (v59)
      {
        if (v3[137] == 1)
        {
          v3[137] = 1;
        }

        else
        {
          v395 = swift_getKeyPath();
          MEMORY[0x28223BE20](v395);
          *(&v442 - 2) = v60;
          *(&v442 - 8) = 1;
          *&v451[0] = v60;
          sub_24571B9BC();
          sub_245747C90();
        }

        if (qword_27EE242E8 != -1)
        {
          swift_once();
        }

        v396 = qword_27EE24EB8;
        v397 = unk_27EE24EC0;

        sub_24570EDE4(v396, v397);
        if (qword_27EE242F8 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24F28, &qword_24574B5C8);
        v398 = swift_allocObject();
        *(v398 + 16) = xmmword_24574A850;
        swift_getKeyPath();
        *&v451[0] = v60;
        sub_24571B9BC();
        sub_245747CA0();

        v399 = *(v60 + 568);
        v400 = *(v60 + 576);
        *(v398 + 56) = MEMORY[0x277D837D0];
        *(v398 + 64) = sub_24571BAB4();
        *(v398 + 32) = v399;
        *(v398 + 40) = v400;

        v401 = sub_2457486D0();
        v403 = v402;

        sub_24570F038(v401, v403);
        if (qword_27EE242B0 != -1)
        {
          swift_once();
        }

        v404 = qword_27EE24E48;
        v405 = unk_27EE24E50;

        sub_24570F4EC(v404, v405);
        if (qword_27EE24300 != -1)
        {
          swift_once();
        }

        v406 = qword_27EE24EE8;
        v407 = unk_27EE24EF0;

        sub_24570F9F4(v406, v407);
      }

      return;
    case 0x10u:
      if ((*v19 & 1) == 0)
      {
        if (v3[104] == 1)
        {
          v3[104] = 1;
        }

        else
        {
          v315 = swift_getKeyPath();
          MEMORY[0x28223BE20](v315);
          v316 = v449;
          *(&v442 - 2) = v449;
          *(&v442 - 8) = 1;
          *&v451[0] = v316;
          sub_24571B9BC();
          sub_245747C90();
        }

        sub_24570E644(0, 0);
      }

      return;
    case 0x11u:
      v77 = *v19;
      v78 = v449;
      v79 = *(v449 + 632);
      v445 = v3;
      if (v79 != 9)
      {
        v180 = swift_getKeyPath();
        MEMORY[0x28223BE20](v180);
        *(&v442 - 2) = v78;
        *(&v442 - 8) = 9;
        *&v451[0] = v78;
        sub_24571B9BC();
        sub_245747C90();
      }

      v181 = swift_getKeyPath();
      MEMORY[0x28223BE20](v181);
      *(&v442 - 4) = v78;
      *(&v442 - 3) = 0;
      *(&v442 - 2) = 0;
      *(&v442 - 1) = 0;
      *&v451[0] = v78;
      sub_24571B9BC();
      sub_245747C90();

      if ((v77 - 2) < 2 || v77 == 5)
      {
        if (v445[1] == 1)
        {
          v445[1] = 1;
        }

        else
        {
          v195 = swift_getKeyPath();
          MEMORY[0x28223BE20](v195);
          v196 = v449;
          *(&v442 - 2) = v449;
          *(&v442 - 8) = 1;
          *&v451[0] = v196;
          sub_245747C90();
        }

        if (qword_27EE24270 != -1)
        {
          swift_once();
        }

        v197 = qword_27EE24DC8;
        v198 = qword_27EE24DD0;

        sub_24570DB44(v197, v198);
        if (qword_27EE24278 != -1)
        {
          swift_once();
        }

        v199 = qword_27EE24DD8;
        v200 = unk_27EE24DE0;

        sub_24570DDA4(v199, v200);
        if (qword_27EE24280 != -1)
        {
          swift_once();
        }

        v201 = qword_27EE24DE8;
        v202 = unk_27EE24DF0;

        sub_24570E004(v201, v202);
        sub_24570E644(0, 0);
      }

      else if (v77 == 8)
      {
        v183 = v449;
        if (v445[137] == 1)
        {
          v445[137] = 1;
        }

        else
        {
          v408 = swift_getKeyPath();
          MEMORY[0x28223BE20](v408);
          *(&v442 - 2) = v183;
          *(&v442 - 8) = 1;
          *&v451[0] = v183;
          sub_245747C90();
        }

        if (qword_27EE24288 != -1)
        {
          swift_once();
        }

        v409 = qword_27EE24DF8;
        v410 = unk_27EE24E00;

        sub_24570EDE4(v409, v410);
        if (qword_27EE24290 != -1)
        {
          swift_once();
        }

        v411 = qword_27EE24E08;
        v412 = unk_27EE24E10;

        sub_24570F038(v411, v412);
        if (qword_27EE24298 != -1)
        {
          swift_once();
        }

        v413 = qword_27EE24E18;
        v414 = unk_27EE24E20;

        sub_24570F298(v413, v414);
        if (qword_27EE242A0 != -1)
        {
          swift_once();
        }

        v415 = qword_27EE24E28;
        v416 = unk_27EE24E30;

        sub_24570F74C(v415, v416);
      }

      else
      {
        v343 = v449;
        if (v445[137] == 1)
        {
          v445[137] = 1;
        }

        else
        {
          v417 = swift_getKeyPath();
          MEMORY[0x28223BE20](v417);
          *(&v442 - 2) = v343;
          *(&v442 - 8) = 1;
          *&v451[0] = v343;
          sub_245747C90();
        }

        if (qword_27EE242A8 != -1)
        {
          swift_once();
        }

        v418 = qword_27EE24E38;
        v419 = unk_27EE24E40;

        sub_24570EDE4(v418, v419);
        sub_24570F038(0, 0);
        if (qword_27EE24298 != -1)
        {
          swift_once();
        }

        v420 = qword_27EE24E18;
        v421 = unk_27EE24E20;

        sub_24570F298(v420, v421);
        sub_24570F74C(0, 0);
      }

      return;
    case 0x12u:
      v61 = v449;
      if (*(v449 + 664))
      {
        v62 = swift_getKeyPath();
        MEMORY[0x28223BE20](v62);
        *(&v442 - 3) = 0;
        *(&v442 - 2) = 0;
        *(&v442 - 4) = v61;
        *&v451[0] = v61;
        sub_24571B9BC();
        sub_245747C90();

        if (*(v61 + 680))
        {
          goto LABEL_41;
        }
      }

      else
      {
        *(v449 + 656) = 0u;
        if (*(v61 + 680))
        {
LABEL_41:
          v63 = swift_getKeyPath();
          MEMORY[0x28223BE20](v63);
          *(&v442 - 3) = 0;
          *(&v442 - 2) = 0;
          *(&v442 - 4) = v61;
          *&v451[0] = v61;
          sub_24571B9BC();
          sub_245747C90();

          if (*(v61 + 696))
          {
            goto LABEL_42;
          }

          goto LABEL_167;
        }
      }

      *(v61 + 672) = 0u;
      if (*(v61 + 696))
      {
LABEL_42:
        v64 = swift_getKeyPath();
        MEMORY[0x28223BE20](v64);
        *(&v442 - 3) = 0;
        *(&v442 - 2) = 0;
        *(&v442 - 4) = v61;
        *&v451[0] = v61;
        sub_24571B9BC();
        sub_245747C90();

        if (v3[104])
        {
LABEL_43:
          v3[104] = 1;
          return;
        }

LABEL_168:
        v194 = swift_getKeyPath();
        MEMORY[0x28223BE20](v194);
        *(&v442 - 2) = v61;
        *(&v442 - 8) = 1;
        *&v451[0] = v61;
        sub_24571B9BC();
        sub_245747C90();

        return;
      }

LABEL_167:
      *(v61 + 688) = 0u;
      if (v3[104])
      {
        goto LABEL_43;
      }

      goto LABEL_168;
    case 0x13u:
LABEL_170:
      v160 = type metadata accessor for RGBLivenessModel.State;
      v161 = v19;
      goto LABEL_171;
    case 0x14u:
      return;
    default:
      sub_24571C1B8(v19, v16);
      if ((*v16 & 1) == 0)
      {
        swift_getKeyPath();
        v20 = v449;
        *&v451[0] = v449;
        sub_24571B9BC();
        sub_245747CA0();

        memcpy(v451, (v20 + 24), sizeof(v451));
        sub_245720840();

        sub_245710320(v21);
      }

      if (v16[*(v448 + 60)] != 2)
      {

        sub_245710320(v22);
      }

      if (v3[264])
      {
        v23 = swift_getKeyPath();
        MEMORY[0x28223BE20](v23);
        v24 = v449;
        *(&v442 - 2) = v449;
        *(&v442 - 8) = 0;
        *&v451[0] = v24;
        sub_24571B9BC();
        v25 = v3;
        v26 = v450;
        sub_245747C90();
        *&v450 = v26;
        v3 = v25;

        if ((v25[136] & 1) == 0)
        {
          goto LABEL_8;
        }

LABEL_99:
        v126 = swift_getKeyPath();
        MEMORY[0x28223BE20](v126);
        v127 = v449;
        *(&v442 - 2) = v449;
        *(&v442 - 8) = 0;
        *&v451[0] = v127;
        sub_24571B9BC();
        v128 = v3;
        v129 = v450;
        sub_245747C90();
        *&v450 = v129;
        v3 = v128;

        if ((v128[313] & 1) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_100;
      }

      v3[264] = 0;
      if (v3[136])
      {
        goto LABEL_99;
      }

LABEL_8:
      v3[136] = 0;
      if ((v3[313] & 1) == 0)
      {
LABEL_9:
        v3[313] = 0;
        goto LABEL_101;
      }

LABEL_100:
      v130 = swift_getKeyPath();
      MEMORY[0x28223BE20](v130);
      v131 = v449;
      *(&v442 - 2) = v449;
      *(&v442 - 8) = 0;
      *&v451[0] = v131;
      sub_24571B9BC();
      v132 = v3;
      v133 = v450;
      sub_245747C90();
      *&v450 = v133;
      v3 = v132;

LABEL_101:
      if (v3[297] == 1)
      {
        v3[297] = 1;
      }

      else
      {
        v134 = swift_getKeyPath();
        MEMORY[0x28223BE20](v134);
        v135 = v449;
        *(&v442 - 2) = v449;
        *(&v442 - 8) = 1;
        *&v451[0] = v135;
        sub_24571B9BC();
        v136 = v3;
        v137 = v450;
        sub_245747C90();
        *&v450 = v137;
        v3 = v136;
      }

      if (*v3 == 1)
      {
        *v3 = 1;
      }

      else
      {
        v138 = swift_getKeyPath();
        MEMORY[0x28223BE20](v138);
        v139 = v449;
        *(&v442 - 2) = v449;
        *(&v442 - 8) = 1;
        *&v451[0] = v139;
        sub_24571B9BC();
        v140 = v3;
        v141 = v450;
        sub_245747C90();
        *&v450 = v141;
        v3 = v140;
      }

      v142 = v3[296];
      v445 = v3;
      if (v142)
      {
        v143 = swift_getKeyPath();
        MEMORY[0x28223BE20](v143);
        v144 = v449;
        *(&v442 - 2) = v449;
        *(&v442 - 8) = 0;
        *&v451[0] = v144;
        sub_24571B9BC();
        sub_245747C90();
      }

      else
      {
        v3[296] = 0;
        v144 = v449;
      }

      sub_24570E8B8(0);
      v450 = *(v16 + 40);
      v145 = *(v16 + 7);
      v146 = swift_getKeyPath();
      MEMORY[0x28223BE20](v146);
      *(&v442 - 4) = v144;
      *(&v442 - 3) = v450;
      *(&v442 - 1) = v145;
      v147 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessViewConfig___observationRegistrar;
      *&v451[0] = v144;
      sub_24571B9BC();
      *&v450 = v147;
      sub_245747C90();

      if (qword_27EE24178 != -1)
      {
        swift_once();
      }

      v148 = qword_27EE24BD8;
      v149 = unk_27EE24BE0;

      sub_24570DB44(v148, v149);
      if (qword_27EE24180 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24F28, &qword_24574B5C8);
      v150 = swift_allocObject();
      *(v150 + 16) = xmmword_24574A850;
      swift_getKeyPath();
      *&v451[0] = v144;
      sub_245747CA0();

      memcpy(v451, (v144 + 24), sizeof(v451));
      v151 = sub_245722114();
      v152 = MEMORY[0x277D83B08];
      *(v150 + 56) = MEMORY[0x277D83A90];
      *(v150 + 64) = v152;
      *(v150 + 32) = (v151 / 30.0) * 0.5;
      v153 = sub_2457486D0();
      v155 = v154;

      sub_24570DDA4(v153, v155);
      if (qword_27EE24188 != -1)
      {
        swift_once();
      }

      v156 = qword_27EE24BF8;
      v157 = unk_27EE24C00;

      sub_24570E004(v156, v157);
      sub_24570E644(0, 0);
      v158 = (v16[*(v448 + 44)] ^ 1) & 1;
      if (v158 == v445[105])
      {
        v445[105] = v158;
      }

      else
      {
        v159 = swift_getKeyPath();
        MEMORY[0x28223BE20](v159);
        *(&v442 - 2) = v144;
        *(&v442 - 8) = v158;
        *&v451[0] = v144;
        sub_245747C90();
      }

      v160 = type metadata accessor for RGBLivenessModel.PassiveConfiguration;
      v161 = v16;
LABEL_171:
      sub_2457029F4(v161, v160);
      return;
  }
}