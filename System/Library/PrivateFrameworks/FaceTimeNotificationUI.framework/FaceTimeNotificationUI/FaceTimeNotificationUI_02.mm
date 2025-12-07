double sub_24AA4C100(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__stopwatchValue) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();
  }

  return result;
}

Swift::Void __swiftcall AudioCallRecordingViewModel.observeRecordingStateNotifications()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856C8, &qword_24AAB75E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_24AAB51C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF859C0, &qword_24AAB7E70);
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v11 = &v16 - v10;
  v12 = [objc_opt_self() defaultCenter];
  sub_24AAB51D4();

  sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
  v13 = sub_24AAB5184();
  v17 = v13;
  v14 = sub_24AAB5174();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_24AA550A0(&qword_27EF856F0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_24AA550E8();
  sub_24AAB3C14();
  sub_24AA169C4(v4, &qword_27EF856C8, &qword_24AAB75E0);

  (*(v6 + 8))(v8, v5);
  swift_allocObject();
  swift_weakInit();
  sub_24AA16A68(&qword_27EF859C8, &qword_27EF859C0, &qword_24AAB7E70, MEMORY[0x277CBCD60]);
  v15 = v16;
  sub_24AAB3C44();

  (*(v9 + 8))(v11, v15);
  swift_getKeyPath();
  v17 = v1;
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v17 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  swift_beginAccess();
  sub_24AAB3B14();
  swift_endAccess();

  v17 = v1;
  swift_getKeyPath();
  sub_24AAB2D04();
}

Swift::Void __swiftcall AudioCallRecordingViewModel.observeRecordingAvailabilityNotification()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856C8, &qword_24AAB75E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_24AAB51C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF859C0, &qword_24AAB7E70);
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v11 = &v19 - v10;
  v12 = sub_24AAB3A64();
  v13 = sub_24AAB5144();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24AA0F000, v12, v13, "Observing TUCallRecordingAvailabilityChanged", v14, 2u);
    MEMORY[0x24C226630](v14, -1, -1);
  }

  v15 = [objc_opt_self() defaultCenter];
  sub_24AAB51D4();

  sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
  v16 = sub_24AAB5184();
  v20 = v16;
  v17 = sub_24AAB5174();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  sub_24AA550A0(&qword_27EF856F0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_24AA550E8();
  sub_24AAB3C14();
  sub_24AA169C4(v4, &qword_27EF856C8, &qword_24AAB75E0);

  (*(v6 + 8))(v8, v5);
  swift_allocObject();
  swift_weakInit();
  sub_24AA16A68(&qword_27EF859C8, &qword_27EF859C0, &qword_24AAB7E70, MEMORY[0x277CBCD60]);
  v18 = v19;
  sub_24AAB3C44();

  (*(v9 + 8))(v11, v18);
  swift_getKeyPath();
  v20 = v1;
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v20 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  swift_beginAccess();
  sub_24AAB3B14();
  swift_endAccess();

  v20 = v1;
  swift_getKeyPath();
  sub_24AAB2D04();
}

double sub_24AA4CB98(const char *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v28 = a1;
  v5 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856C8, &qword_24AAB75E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_24AAB51C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF859C0, &qword_24AAB7E70);
  v29 = *(v13 - 8);
  v30 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = sub_24AAB3A64();
  v17 = sub_24AAB5144();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v12;
    v19 = v18;
    *v18 = 0;
    _os_log_impl(&dword_24AA0F000, v16, v17, v28, v18, 2u);
    v12 = v27;
    MEMORY[0x24C226630](v19, -1, -1);
  }

  v20 = [objc_opt_self() defaultCenter];
  v21 = a2();
  sub_24AAB51D4();

  sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
  v22 = sub_24AAB5184();
  v31 = v22;
  v23 = sub_24AAB5174();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  sub_24AA550A0(&qword_27EF856F0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_24AA550E8();
  sub_24AAB3C14();
  sub_24AA169C4(v8, &qword_27EF856C8, &qword_24AAB75E0);

  (*(v10 + 8))(v12, v9);
  swift_allocObject();
  swift_weakInit();
  sub_24AA16A68(&qword_27EF859C8, &qword_27EF859C0, &qword_24AAB7E70, MEMORY[0x277CBCD60]);
  v24 = v30;
  sub_24AAB3C44();

  (*(v29 + 8))(v15, v24);
  swift_getKeyPath();
  v31 = v5;
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v31 = v5;
  swift_getKeyPath();
  sub_24AAB2D14();

  swift_beginAccess();
  sub_24AAB3B14();
  swift_endAccess();

  v31 = v5;
  swift_getKeyPath();
  sub_24AAB2D04();

  return result;
}

double sub_24AA4D0B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_24AAB29D4();
    if (!v29[3])
    {

      sub_24AA169C4(v29, &qword_27EF85740, &qword_24AAB76D0);
      return result;
    }

    sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return result;
    }

    v5 = [v28 callUUID];
    v6 = sub_24AAB4EF4();
    v8 = v7;

    if (v6 == *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID) && v8 == *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID + 8))
    {
    }

    else
    {
      v10 = sub_24AAB5474();

      if ((v10 & 1) == 0)
      {

        return result;
      }
    }

    v11 = v28;
    v12 = sub_24AAB3A64();
    v13 = sub_24AAB5144();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v29[0] = v15;
      *v14 = 136315138;
      v16 = [v11 recordingSession];
      if (v16)
      {
        v17 = v16;
        [v16 recordingState];

        type metadata accessor for TUCallRecordingState(0);
        v18 = sub_24AAB4F44();
        v20 = v19;
      }

      else
      {
        v20 = 0xE300000000000000;
        v18 = 7104878;
      }

      v21 = sub_24AA406B4(v18, v20, v29);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_24AA0F000, v12, v13, "TUCallRecordingStateChanged to %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x24C226630](v15, -1, -1);
      MEMORY[0x24C226630](v14, -1, -1);
    }

    v22 = [v11 recordingSession];
    v23 = v22;
    if (v22)
    {
      v24 = [v22 recordingState];

      v25 = v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
      swift_beginAccess();
      if (*(v25 + 4))
      {
LABEL_25:
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
        sub_24AAB2CE4();

        return result;
      }

      v26 = (v25 + 4);
    }

    else
    {
      v25 = v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
      swift_beginAccess();
      v24 = 0;
      v26 = (v25 + 4);
      if (*(v25 + 4))
      {
LABEL_24:
        *v25 = v24;
        *v26 = v23 == 0;
        sub_24AA50268();
        sub_24AA4AD50();

        return result;
      }
    }

    if (v23 && *v25 == v24)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  return result;
}

double sub_24AA4D504(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_24AAB29D4();
    if (!v25[3])
    {

      sub_24AA169C4(v25, &qword_27EF85740, &qword_24AAB76D0);
      return result;
    }

    sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return result;
    }

    v5 = [v24 callUUID];
    v6 = sub_24AAB4EF4();
    v8 = v7;

    if (v6 == *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID) && v8 == *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID + 8))
    {
    }

    else
    {
      v10 = sub_24AAB5474();

      if ((v10 & 1) == 0)
      {

        return result;
      }
    }

    v11 = v24;
    v12 = sub_24AAB3A64();
    v13 = sub_24AAB5144();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = [v11 recordingAvailability];

      _os_log_impl(&dword_24AA0F000, v12, v13, "TUCallRecordingAvailabilityChanged has changed to %d", v14, 8u);
      MEMORY[0x24C226630](v14, -1, -1);
    }

    else
    {

      v12 = v11;
    }

    v15 = [v11 recordingAvailability];
    v16 = v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability;
    if ((*(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability + 4) & 1) != 0 || *v16 != v15)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v25[0] = v4;
      sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
      sub_24AAB2CE4();
    }

    else
    {
      *(v16 + 4) = 0;
      sub_24AA4AD50();
    }

    v18 = [v11 recordingSession];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 recordingState];

      v21 = v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
      swift_beginAccess();
      if (*(v21 + 4))
      {
LABEL_27:
        v23 = swift_getKeyPath();
        MEMORY[0x28223BE20](v23);
        sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
        sub_24AAB2CE4();

        return result;
      }

      v22 = (v21 + 4);
    }

    else
    {
      v21 = v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
      swift_beginAccess();
      v20 = 0;
      v22 = (v21 + 4);
      if (*(v21 + 4))
      {
LABEL_26:
        *v21 = v20;
        *v22 = v19 == 0;
        sub_24AA50268();
        sub_24AA4AD50();

        return result;
      }
    }

    if (v19 && *v21 == v20)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  return result;
}

double sub_24AA4D9CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_24AAB29D4();
    if (!v13)
    {

      sub_24AA169C4(v12, &qword_27EF85740, &qword_24AAB76D0);
      return result;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_15;
    }

    if (v10 == *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID) && v11 == *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID + 8))
    {
    }

    else
    {
      v6 = sub_24AAB5474();

      if ((v6 & 1) == 0)
      {
LABEL_15:

        return result;
      }
    }

    v7 = sub_24AAB3A64();
    v8 = sub_24AAB5144();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24AA0F000, v7, v8, "Start pre-recording countdown", v9, 2u);
      MEMORY[0x24C226630](v9, -1, -1);
    }

    _s22FaceTimeNotificationUI27AudioCallRecordingViewModelC14startCountdownyyF_0();
    goto LABEL_15;
  }

  return result;
}

void sub_24AA4DB54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_24AAB29D4();
    if (!v12[3])
    {

      sub_24AA169C4(v12, &qword_27EF85740, &qword_24AAB76D0);
      return;
    }

    sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v4 = [v11 callUUID];
    v5 = sub_24AAB4EF4();
    v7 = v6;

    if (v5 == *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID) && v7 == *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID + 8))
    {
    }

    else
    {
      v9 = sub_24AAB5474();

      if ((v9 & 1) == 0)
      {
LABEL_17:

        return;
      }
    }

    if (*(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v12[0] = v3;
      sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
      sub_24AAB2CE4();
    }

    else
    {
      *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) = 0;
      sub_24AA50268();
      sub_24AA4AD50();
    }

    sub_24AA4AD50();
    goto LABEL_17;
  }
}

double sub_24AA4DDA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_24AAB29D4();
    if (!v10[3])
    {

      sub_24AA169C4(v10, &qword_27EF85740, &qword_24AAB76D0);
      return result;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_16;
    }

    if (v8 == *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID) && v9 == *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID + 8))
    {
    }

    else
    {
      v6 = sub_24AAB5474();

      if ((v6 & 1) == 0)
      {
LABEL_16:

        return result;
      }
    }

    if (*(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v10[0] = v4;
      sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
      sub_24AAB2CE4();
    }

    else
    {
      *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) = 0;
      sub_24AA50268();
      sub_24AA4AD50();
    }

    sub_24AA4AD50();
    goto LABEL_16;
  }

  return result;
}

uint64_t _s22FaceTimeNotificationUI27AudioCallRecordingViewModelC14startCountdownyyF_0()
{
  v61[1] = *MEMORY[0x277D85DE8];
  v1 = sub_24AAB2BD4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v58 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v59 = v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85868, &qword_24AAB7940);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v57 - v11;
  MEMORY[0x28223BE20](v10);
  v60 = v57 - v13;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass_];
  v17 = sub_24AAB4EE4();
  v18 = sub_24AAB4EE4();
  v19 = [v16 URLForResource:v17 withExtension:v18];

  if (v19)
  {
    sub_24AAB2BB4();

    (*(v2 + 56))(v12, 0, 1, v1);
  }

  else
  {
    (*(v2 + 56))(v12, 1, 1, v1);
  }

  v20 = v60;
  sub_24AA1A25C(v12, v60, &qword_27EF85868, &qword_24AAB7940);
  sub_24AA555D4(v20, v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_24AA169C4(v20, &qword_27EF85868, &qword_24AAB7940);
    v21 = v9;
  }

  else
  {
    v22 = v59;
    (*(v2 + 32))(v59, v9, v1);
    v23 = [v15 mainBundle];
    v24 = [v23 bundleIdentifier];

    if (v24)
    {
      v25 = sub_24AAB4EF4();
      v27 = v26;
      v57[1] = v0;
      v28 = sub_24AAB3A64();
      v29 = sub_24AAB5144();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v61[0] = v31;
        *v30 = 136315138;
        v32 = sub_24AA406B4(v25, v27, v61);

        *(v30 + 4) = v32;
        _os_log_impl(&dword_24AA0F000, v28, v29, "Requesting AVAudioApplication to allow playback for bundleName: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x24C226630](v31, -1, -1);
        MEMORY[0x24C226630](v30, -1, -1);
      }

      else
      {
      }

      v33 = objc_opt_self();
      v61[0] = 0;
      v34 = [v33 allowAppToInitiatePlaybackTemporarily:v24 error:v61];

      v35 = v61[0];
      v36 = v59;
      if (v34)
      {
        v37 = v58;
        (*(v2 + 16))(v58, v59, v1);
        v38 = objc_allocWithZone(MEMORY[0x277CB83D0]);
        v39 = v35;
        v40 = sub_24AA54124(v37);
        [v40 setNumberOfLoops_];
        LODWORD(v41) = 15.0;
        [v40 setVolume_];
        v42 = v40;
        sub_24AA4A870(v40);
        v43 = sub_24AAB3A64();
        v44 = sub_24AAB5144();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_24AA0F000, v43, v44, "Playing countdown tone.", v45, 2u);
          MEMORY[0x24C226630](v45, -1, -1);
        }

        [v42 play];
        (*(v2 + 8))(v36, v1);
      }

      else
      {
        v46 = v61[0];
        v47 = sub_24AAB2B04();

        swift_willThrow();
        (*(v2 + 8))(v36, v1);
        v48 = v47;
        v49 = sub_24AAB3A64();
        v50 = sub_24AAB5124();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v61[0] = v52;
          *v51 = 136315138;
          swift_getErrorValue();
          v53 = sub_24AAB54E4();
          v55 = sub_24AA406B4(v53, v54, v61);

          *(v51 + 4) = v55;
          _os_log_impl(&dword_24AA0F000, v49, v50, "Error playing countdown tone: %s", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v52);
          MEMORY[0x24C226630](v52, -1, -1);
          MEMORY[0x24C226630](v51, -1, -1);
        }

        else
        {
        }
      }

      v21 = v60;
    }

    else
    {
      (*(v2 + 8))(v22, v1);
      v21 = v20;
    }
  }

  return sub_24AA169C4(v21, &qword_27EF85868, &qword_24AAB7940);
}

uint64_t sub_24AA4E714()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  return *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__stopwatchValue);
}

void sub_24AA4E7BC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__stopwatchValue);
}

uint64_t sub_24AA4E86C()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__stopwatchValue;
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__stopwatchValue);
  swift_getKeyPath();
  sub_24AAB2CF4();

  v3 = ((((34953 * (*(v0 + v1) % 3600)) >> 16) >> 5) + (((*(v0 + v1) % 3600 + ((-30583 * (*(v0 + v1) % 3600)) >> 16)) & 0x8000) >> 15));
  swift_getKeyPath();
  sub_24AAB2CF4();

  v4 = *(v0 + v1) % 60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A60, &qword_24AAB8138);
  v5 = swift_allocObject();
  if (v2 < 3600)
  {
    *(v5 + 16) = xmmword_24AAB7D10;
    v8 = MEMORY[0x277D83B88];
    v9 = MEMORY[0x277D83C10];
    *(v5 + 56) = MEMORY[0x277D83B88];
    *(v5 + 64) = v9;
    *(v5 + 32) = v3;
    *(v5 + 96) = v8;
    *(v5 + 104) = v9;
    *(v5 + 72) = v4;
  }

  else
  {
    v6 = MEMORY[0x277D83B88];
    *(v5 + 16) = xmmword_24AAB6FC0;
    v7 = MEMORY[0x277D83C10];
    *(v5 + 56) = v6;
    *(v5 + 64) = v7;
    *(v5 + 32) = v2 / 0xE10uLL;
    *(v5 + 96) = v6;
    *(v5 + 104) = v7;
    *(v5 + 72) = v3;
    *(v5 + 136) = v6;
    *(v5 + 144) = v7;
    *(v5 + 112) = v4;
  }

  return sub_24AAB4F04();
}

double sub_24AA4EB00()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  return result;
}

double sub_24AA4EBAC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__timeSink);

  return result;
}

double sub_24AA4EC60(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__timeSink;
  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__timeSink))
  {
    if (a1)
    {
      sub_24AAB3B34();
      sub_24AA550A0(&qword_27EF85A18, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);

      v5 = sub_24AAB4E74();

      if (v5)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();

    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = a1;

  return result;
}

uint64_t sub_24AA4EE10(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for AudioCallRecordingButton(0);
  MEMORY[0x28223BE20](v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  swift_weakInit();
  *v5 = xmmword_24AAB7080;
  v5[16] = 2;
  v7 = type metadata accessor for AudioCallRecordingControl(0);

  sub_24AAB2B24();
  v8 = &v5[v7[6]];
  *v8 = 0xD000000000000015;
  *(v8 + 1) = 0x800000024AAD24B0;
  v9 = v7[7];
  if (qword_27EF84C70 != -1)
  {
    swift_once();
  }

  v10 = &v5[v9];
  v11 = unk_27EF91A00;
  v12 = qword_27EF91A08;
  v13 = unk_27EF91A10;
  *v10 = qword_27EF919F8;
  *(v10 + 1) = v11;
  *(v10 + 2) = v12;
  *(v10 + 3) = v13;
  v5[v7[8]] = 0;
  v5[v7[9]] = 0;
  v14 = &v5[*(v3 + 20)];
  *v14 = sub_24AA55578;
  v14[1] = v6;
  v15 = &v5[*(v3 + 24)];
  v18[1] = a2;

  sub_24AA1B750(v12, v13);

  sub_24AAB4B54();

  v16 = v18[3];
  *v15 = v18[2];
  *(v15 + 1) = v16;
  sub_24AA550A0(&qword_27EF85A00, type metadata accessor for AudioCallRecordingButton, &unk_24AAB859C);
  return sub_24AAB4BD4();
}

void sub_24AA4F070()
{
  v0 = sub_24AAB3A64();
  v1 = sub_24AAB5144();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_24AA0F000, v0, v1, "did tap start call recording", v2, 2u);
    MEMORY[0x24C226630](v2, -1, -1);
  }

  AudioCallRecordingViewModel.startRecordingButtonTapped()();
}

uint64_t sub_24AA4F120(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AudioCallCountDownButton(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for CountdownTimerViewModel(0);
  v7 = swift_allocObject();
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A40, &qword_24AAB8100);
  swift_allocObject();

  v7[5] = sub_24AAB3B64();
  sub_24AAB2D24();
  *v5 = xmmword_24AAB7080;
  v5[16] = 2;
  v8 = type metadata accessor for CallRecordingCountDownControl(0);
  sub_24AAB2B24();
  v9 = &v5[v8[6]];
  *v9 = 0x7269632E706F7473;
  *(v9 + 1) = 0xEB00000000656C63;
  v10 = v8[7];
  if (qword_27EF84C70 != -1)
  {
    swift_once();
  }

  v11 = &v5[v10];
  v12 = unk_27EF91A00;
  v13 = qword_27EF91A08;
  v14 = unk_27EF91A10;
  *v11 = qword_27EF919F8;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  v5[v8[8]] = 0;
  v5[v8[9]] = 0;
  v15 = &v5[v3[5]];
  *v15 = sub_24AA5597C;
  v15[1] = v6;
  v16 = &v5[v3[6]];
  *v16 = sub_24AA559AC;
  *(v16 + 1) = a2;
  *&v5[v3[7]] = 3;
  v17 = &v5[v3[8]];
  v23 = v7;

  sub_24AA1B750(v13, v14);
  sub_24AAB4B54();
  v18 = v25;
  *v17 = v24;
  *(v17 + 1) = v18;
  v19 = &v5[v3[9]];
  v23 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A48, &qword_24AAB8108);
  sub_24AAB4B54();

  v20 = v25;
  *v19 = v24;
  *(v19 + 1) = v20;
  sub_24AA550A0(&qword_27EF85A50, type metadata accessor for AudioCallCountDownButton, &unk_24AAB854C);
  return sub_24AAB4BD4();
}

void sub_24AA4F420()
{
  v0 = sub_24AAB3A64();
  v1 = sub_24AAB5144();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_24AA0F000, v0, v1, "did tap stop count down", v2, 2u);
    MEMORY[0x24C226630](v2, -1, -1);
  }

  sub_24AA4FF1C();
  v3 = [objc_opt_self() defaultCenter];
  v4 = sub_24AAB51B4();
  v5 = sub_24AAB4EE4();
  [v3 postNotificationName:v4 object:v5];
}

void *sub_24AA4F548()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AA0F000, v2, v3, "startRecord", v4, 2u);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();

    result = sub_24AA547B8();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) = 0;
    sub_24AA50268();
    sub_24AA4AD50();
    result = sub_24AA547B8();
    if (!result)
    {
      return result;
    }
  }

  v7 = result;
  v8 = sub_24AAB3A64();
  v9 = sub_24AAB5144();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24AA0F000, v8, v9, "activeCall", v10, 2u);
    MEMORY[0x24C226630](v10, -1, -1);
  }

  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  swift_allocObject();
  swift_weakInit();

  sub_24AAB2DE4();
}

uint64_t sub_24AA4F84C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for StopCallRecordingButton(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  swift_weakInit();
  *v4 = xmmword_24AAB7080;
  v4[16] = 2;
  v6 = type metadata accessor for StopCallRecordingControl(0);

  sub_24AAB2B24();
  v7 = &v4[v6[6]];
  *v7 = 0x6C69662E706F7473;
  *(v7 + 1) = 0xE90000000000006CLL;
  v8 = &v4[v6[7]];
  v9 = [objc_opt_self() systemRedColor];
  v10 = sub_24AAB49C4();

  *v8 = 0;
  *(v8 + 1) = v10;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  v4[v6[8]] = 0;
  v4[v6[9]] = 0;
  v11 = &v4[*(v2 + 20)];
  *v11 = sub_24AA55A7C;
  v11[1] = v5;
  sub_24AA550A0(&qword_27EF85A58, type metadata accessor for StopCallRecordingButton, &unk_24AAB84FC);
  return sub_24AAB4BD4();
}

double sub_24AA4FA10(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a2();
  }

  return result;
}

double sub_24AA4FA70@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canShowCallRecord) == 1)
  {
    swift_getKeyPath();
    sub_24AAB2CF4();

    if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) == 1)
    {
      v4 = type metadata accessor for CustomViewControl(0);
      *(a1 + 24) = v4;
      *(a1 + 32) = sub_24AA550A0(&qword_27EF85680, type metadata accessor for CustomViewControl, &unk_24AABB500);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
      sub_24AAB2B24();
      v6 = qword_27EF84C70;

      if (v6 != -1)
      {
        swift_once();
      }

      v7 = qword_27EF919F8;
      v8 = unk_27EF91A00;
      v9 = qword_27EF91A08;
      v10 = unk_27EF91A10;
      *(boxed_opaque_existential_1Tm + v4[8]) = 0;
      *(boxed_opaque_existential_1Tm + v4[9]) = 0;
      *boxed_opaque_existential_1Tm = xmmword_24AAB7080;
      *(boxed_opaque_existential_1Tm + 16) = 2;
      boxed_opaque_existential_1Tm[3] = 0;
      boxed_opaque_existential_1Tm[4] = 0xE000000000000000;
      v11 = (boxed_opaque_existential_1Tm + v4[7]);
      *v11 = v7;
      v11[1] = v8;
      v11[2] = v9;
      v11[3] = v10;
      v12 = (boxed_opaque_existential_1Tm + v4[10]);
      *v12 = 0xD000000000000017;
      v12[1] = 0x800000024AAD2510;
      v13 = (boxed_opaque_existential_1Tm + v4[11]);
      v14 = sub_24AA55954;
LABEL_6:
      *v13 = v14;
      v13[1] = v2;

      sub_24AA1B750(v9, v10);
      return result;
    }

    swift_getKeyPath();
    sub_24AAB2CF4();

    v16 = v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
    swift_beginAccess();
    if ((*(v16 + 4) & 1) == 0)
    {
      v17 = *v16;
      if (*v16 <= 2)
      {
        if (v17 == 1 || v17 == 2)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (v17 == 3)
        {
          v21 = type metadata accessor for CustomViewControl(0);
          *(a1 + 24) = v21;
          *(a1 + 32) = sub_24AA550A0(&qword_27EF85680, type metadata accessor for CustomViewControl, &unk_24AABB500);
          v22 = __swift_allocate_boxed_opaque_existential_1Tm(a1);
          sub_24AAB2B24();
          v23 = qword_27EF84C70;

          if (v23 != -1)
          {
            swift_once();
          }

          v24 = qword_27EF919F8;
          v25 = unk_27EF91A00;
          v9 = qword_27EF91A08;
          v10 = unk_27EF91A10;
          *(v22 + v21[8]) = 0;
          *(v22 + v21[9]) = 0;
          *v22 = xmmword_24AAB7080;
          *(v22 + 16) = 2;
          v22[3] = 0;
          v22[4] = 0xE000000000000000;
          v26 = (v22 + v21[7]);
          *v26 = v24;
          v26[1] = v25;
          v26[2] = v9;
          v26[3] = v10;
          v27 = (v22 + v21[10]);
          *v27 = 0xD000000000000010;
          v27[1] = 0x800000024AAD24F0;
          v13 = (v22 + v21[11]);
          v14 = sub_24AA5594C;
          goto LABEL_6;
        }

        if (v17 == 5 || v17 == 4)
        {
          goto LABEL_8;
        }
      }

      v18 = sub_24AAB3A64();
      v19 = sub_24AAB5144();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 67109120;
        *(v20 + 4) = v17;
        _os_log_impl(&dword_24AA0F000, v18, v19, "unknown recordingState %d", v20, 8u);
        MEMORY[0x24C226630](v20, -1, -1);
      }
    }
  }

LABEL_8:
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_24AA4FF1C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  swift_getKeyPath();
  v11 = v0;
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  if (*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__timeSink))
  {

    sub_24AAB3B24();
  }

  swift_getKeyPath();
  v11 = v0;
  sub_24AAB2CF4();

  [*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__avAudioPlayer) stop];
  v5 = sub_24AAB50F4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_24AAB50C4();

  v6 = sub_24AAB50B4();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_24AA330D4(0, 0, v4, &unk_24AAB80F8, v7);

  return result;
}

void *sub_24AA50128()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callCenter) currentCalls];
  sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
  v2 = sub_24AAB5024();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24AAB52F4())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C225BD0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isRecording])
      {

        return v6;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

void sub_24AA50268()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - v3;
  v5 = sub_24AAB2C54();
  v39 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v35 - v8;
  v9 = sub_24AAB2CD4();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_24AAB4ED4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel___observationRegistrar;
  v41[0] = v1;
  v37 = sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  v38 = v17;
  sub_24AAB2CF4();

  v40 = v1;
  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) == 1)
  {
    sub_24AAB4E84();
    (*(v11 + 16))(v14, v16, v10);
    if (qword_27EF84C50 != -1)
    {
      swift_once();
    }

    v18 = qword_27EF919A8;
    sub_24AAB2CC4();
    v19 = sub_24AAB4F14();
    v21 = v20;
    (*(v11 + 8))(v16, v10);
    sub_24AA4A584(v19, v21);
    return;
  }

  AudioCallRecordingViewModel.recordingStartedDate.getter(v4);
  v22 = v39;
  if ((*(v39 + 48))(v4, 1, v5) == 1)
  {
    sub_24AA169C4(v4, &qword_27EF855E8, &unk_24AABCB40);
    v23 = v40;
    v24 = (v40 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel);
    if (*(v40 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel + 8))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v35 - 3) = 0;
      *(&v35 - 2) = 0;
      *(&v35 - 4) = v23;
      v41[0] = v23;
      sub_24AAB2CE4();
    }

    else
    {
      *v24 = 0;
      v24[1] = 0;
    }

    return;
  }

  v26 = v35;
  (*(v22 + 32))(v35, v4, v5);
  v27 = v36;
  sub_24AAB2C34();
  sub_24AAB2C14();
  v29 = v28;
  v30 = v28;
  v31 = *(v22 + 8);
  v31(v27, v5);
  v31(v26, v5);
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v32 = v40;
  if (*(v40 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__stopwatchValue) != v29)
  {
    v33 = swift_getKeyPath();
    MEMORY[0x28223BE20](v33);
    *(&v35 - 2) = v32;
    *(&v35 - 1) = v29;
    v41[0] = v32;
    sub_24AAB2CE4();
  }

  strcpy(v41, "Recording - ");
  BYTE5(v41[1]) = 0;
  HIWORD(v41[1]) = -5120;
  v34 = sub_24AA4E86C();
  MEMORY[0x24C2257F0](v34);

  sub_24AA4A584(v41[0], v41[1]);
}

uint64_t sub_24AA5086C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24AAB50C4();
  *(v4 + 24) = sub_24AAB50B4();
  v6 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA50904, v6, v5);
}

uint64_t sub_24AA50904()
{

  sub_24AA50968();
  v1 = *(v0 + 8);

  return v1();
}

void sub_24AA50968()
{
  v0 = sub_24AA50128();
  if (v0 || (v2 = sub_24AA547B8()) != 0 && (v3 = v2, v4 = [v2 recordingSession], v3, v4) && (v5 = objc_msgSend(v4, sel_recordingState), v4, v5 == 2) && (v0 = sub_24AA547B8()) != 0)
  {
    v1 = v0;
    swift_getKeyPath();
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
    sub_24AAB2CF4();

    sub_24AAB2DD4();
  }
}

void sub_24AA50AB8(uint64_t a1)
{
  if (a1)
  {
    oslog = sub_24AAB3A64();
    v1 = sub_24AAB5144();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&dword_24AA0F000, oslog, v1, "Handling error: stop recording failed", v2, 2u);
      MEMORY[0x24C226630](v2, -1, -1);
    }
  }
}

uint64_t AudioCallRecordingViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_logger;
  v2 = sub_24AAB3A84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel___observationRegistrar;
  v4 = sub_24AAB2D34();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t AudioCallRecordingViewModel.__deallocating_deinit()
{
  AudioCallRecordingViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_24AA50CF0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v2 = (v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState);
  swift_beginAccess();
  return *v2 | (*(v2 + 4) << 32);
}

uint64_t (*sub_24AA50DF8(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = AudioCallRecordingViewModel.recordingState.modify(v2);
  return sub_24AA50E6C;
}

void sub_24AA50E6C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

double sub_24AA50F20(uint64_t a1, uint64_t a2)
{
  v3 = sub_24AAB3A84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v4 + 16))(v7, Strong + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_logger, v3);

      v9 = sub_24AAB3A64();
      v10 = sub_24AAB5144();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_24AA0F000, v9, v10, "Handling error: start recording failed", v11, 2u);
        MEMORY[0x24C226630](v11, -1, -1);
      }

      (*(v4 + 8))(v7, v3);
    }

    swift_beginAccess();
    v12 = swift_weakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = v12 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
      swift_beginAccess();
      if (*(v14 + 4) == 1)
      {
        *v14 = 0;
        *(v14 + 4) = 1;
        sub_24AA50268();
        sub_24AA4AD50();
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v16[-2] = v13;
        LODWORD(v16[-1]) = 0;
        BYTE4(v16[-1]) = 1;
        v16[2] = v13;
        sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
        sub_24AAB2CE4();
      }
    }
  }

  return result;
}

uint64_t sub_24AA512E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE8, &qword_24AAB85F0);
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - v4;
  v43 = type metadata accessor for AudioCallRecordingButton(0);
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85B78, &qword_24AAB85F8);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = &v36 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85B80, &qword_24AAB8600);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v11 = &v36 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85B88, &qword_24AAB8608);
  MEMORY[0x28223BE20](v37);
  v42 = &v36 - v12;
  sub_24AA56AD8(v2, &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioCallRecordingButton);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_24AA56B44(&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for AudioCallRecordingButton);
  sub_24AAB4BB4();
  v15 = type metadata accessor for AudioCallRecordingControl(0);
  v16 = *(v15 + 28);
  if (*(v2 + *(v15 + 36)) == 1 && (v17 = *(v2 + v16 + 24)) != 0)
  {
    v18 = *(v2 + v16 + 16);
  }

  else
  {
    v19 = (v2 + v16);
    v18 = *v19;
    v17 = v19[1];
  }

  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v20 = v3[9];
  *&v5[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  v21 = &v5[v3[10]];
  *v21 = v18;
  *(v21 + 1) = v17;
  v22 = &v5[v3[12]];
  *v22 = vdupq_n_s64(0x4041800000000000uLL);
  v22[1].i8[0] = 0;
  v23 = &v5[v3[13]];
  sub_24AA16A68(&qword_27EF85B90, &qword_27EF85B78, &qword_24AAB85F8, MEMORY[0x277CDF028]);
  sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0, &unk_24AAB8F68);
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v24 = v40;
  sub_24AAB47E4();
  sub_24AA169C4(v5, &qword_27EF84CE8, &qword_24AAB85F0);
  (*(v38 + 8))(v9, v24);
  v25 = v42;
  v26 = &v42[*(v37 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84D18, &qword_24AABDA10);
  sub_24AAB3F44();
  *v26 = swift_getKeyPath();
  (*(v39 + 32))(v25, v11, v41);
  v27 = (v2 + *(v43 + 24));
  v29 = *v27;
  v28 = v27[1];
  v46 = v29;
  v47 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85B98, &qword_24AAB86A0);
  sub_24AAB4B64();
  v30 = v45;
  swift_getKeyPath();
  v46 = v30;
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  LOBYTE(v20) = *(v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canStartRecord);

  KeyPath = swift_getKeyPath();
  v32 = swift_allocObject();
  *(v32 + 16) = (v20 & 1) == 0;
  v33 = v44;
  sub_24AA1A25C(v25, v44, &qword_27EF85B88, &qword_24AAB8608);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BA0, &unk_24AAB86D8);
  v35 = (v33 + *(result + 36));
  *v35 = KeyPath;
  v35[1] = sub_24AA56AD0;
  v35[2] = v32;
  return result;
}

void sub_24AA5191C(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  v3 = [objc_opt_self() configurationWithFont_];

  v4 = sub_24AAB4EE4();
  v5 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v5)
  {
    v6 = [v5 imageWithRenderingMode_];

    *a1 = sub_24AAB4AB4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24AA51A48(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  CallAction.hash(into:)(a1);
  v5 = a2(0);
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v6)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  sub_24AAB4F64();
  v7 = (v3 + *(v5 + 28));
  v9 = v7[2];
  v8 = v7[3];
  if (*v7)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (v8)
  {
    sub_24AAB5514();
    if (v9)
    {
      MEMORY[0x24C225D50](0);
      sub_24AAB4A04();
    }

    else
    {
      MEMORY[0x24C225D50](1);
    }

    sub_24AAB4A04();
  }

  else
  {
    sub_24AAB5514();
  }

  sub_24AAB5514();
  return sub_24AAB5514();
}

uint64_t sub_24AA51CA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE8, &qword_24AAB85F0);
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - v4;
  v6 = type metadata accessor for AudioCallCountDownButton(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F18, &qword_24AAB6720);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v10 = &v34 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BA8, &qword_24AAB86E8);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v12 = &v34 - v11;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BB0, &qword_24AAB86F0);
  MEMORY[0x28223BE20](v35);
  v36 = &v34 - v13;
  sub_24AA56AD8(v2, &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioCallCountDownButton);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v41 = v8;
  v15 = swift_allocObject();
  v42 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA56B44(v42, v15 + v14, type metadata accessor for AudioCallCountDownButton);
  v44 = v2;
  sub_24AAB4BB4();
  v16 = type metadata accessor for CallRecordingCountDownControl(0);
  v17 = *(v2 + *(v16 + 36));
  v18 = *(v16 + 28);
  v34 = v2;
  if (v17 == 1 && (v19 = *(v2 + v18 + 24)) != 0)
  {
    v20 = *(v2 + v18 + 16);
  }

  else
  {
    v21 = (v2 + v18);
    v20 = *v21;
    v19 = v21[1];
  }

  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v22 = v3[9];
  *&v5[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  v23 = &v5[v3[10]];
  *v23 = v20;
  *(v23 + 1) = v19;
  v24 = &v5[v3[12]];
  *v24 = vdupq_n_s64(0x4041800000000000uLL);
  v24[1].i8[0] = 0;
  v25 = &v5[v3[13]];
  sub_24AA16A68(&qword_27EF84F10, &qword_27EF84F18, &qword_24AAB6720, MEMORY[0x277CDF028]);
  sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0, &unk_24AAB8F68);
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v26 = v39;
  sub_24AAB47E4();
  sub_24AA169C4(v5, &qword_27EF84CE8, &qword_24AAB85F0);
  (*(v37 + 8))(v10, v26);
  v27 = v36;
  v28 = &v36[*(v35 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84D18, &qword_24AABDA10);
  sub_24AAB3F44();
  *v28 = swift_getKeyPath();
  (*(v38 + 32))(v27, v12, v40);
  v29 = v42;
  sub_24AA56AD8(v34, v42, type metadata accessor for AudioCallCountDownButton);
  v30 = swift_allocObject();
  sub_24AA56B44(v29, v30 + v14, type metadata accessor for AudioCallCountDownButton);
  v31 = v43;
  sub_24AA1A25C(v27, v43, &qword_27EF85BB0, &qword_24AAB86F0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BB8, &qword_24AAB86F8);
  v33 = (v31 + *(result + 36));
  *v33 = sub_24AA56D60;
  v33[1] = v30;
  v33[2] = 0;
  v33[3] = 0;
  return result;
}

uint64_t sub_24AA5224C(uint64_t a1)
{
  v2 = type metadata accessor for AudioCallCountDownButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BC0, &qword_24AAB8700);
  sub_24AAB4B64();
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel, &protocol conformance descriptor for CountdownTimerViewModel);
  sub_24AAB2CF4();

  if (*(v5 + 24))
  {

    sub_24AAB3B24();
  }

  sub_24AA539A4(0);
  sub_24AAB3B54();

  return (*(a1 + *(v2 + 20)))(v3);
}

void sub_24AA52390(uint64_t a2@<X8>)
{
  type metadata accessor for AudioCallCountDownButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BC0, &qword_24AAB8700);
  sub_24AAB4B64();
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel, &protocol conformance descriptor for CountdownTimerViewModel);
  sub_24AAB2CF4();

  sub_24AAB5444();
  sub_24AAB45D4();
  v3 = sub_24AAB4704();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
}

uint64_t CountdownTimerViewModel.remainingTime.getter()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel, &protocol conformance descriptor for CountdownTimerViewModel);
  sub_24AAB2CF4();

  return *(v0 + 16);
}

uint64_t sub_24AA5259C(uint64_t a1)
{
  v2 = type metadata accessor for AudioCallCountDownButton(0);
  v3 = (v2 - 8);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (a1 + v3[10]);
  v8 = v6[1];
  v20 = *v6;
  v7 = v20;
  v21 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BC0, &qword_24AAB8700);
  sub_24AAB4B64();
  sub_24AA52830(*(a1 + v3[9]));

  v20 = v7;
  v21 = v8;
  sub_24AAB4B64();
  v9 = *(v17 + 40);

  v20 = v9;
  sub_24AA56AD8(a1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioCallCountDownButton);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_24AA56B44(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for AudioCallCountDownButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A40, &qword_24AAB8100);
  sub_24AA16A68(&qword_27EF85BC8, &qword_27EF85A40, &qword_24AAB8100, MEMORY[0x277CBCE20]);
  sub_24AAB3C44();

  v12 = (a1 + v3[11]);
  v14 = v12[1];
  v20 = *v12;
  v13 = v20;
  v21 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BD0, &qword_24AAB8708);
  sub_24AAB4B64();
  sub_24AAB3B14();

  v17 = v13;
  v18 = v14;
  v16 = v19;
  sub_24AAB4B74();
}

double sub_24AA52830(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BE0, &qword_24AAB8710);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v14 - v5;
  if (a1 >= 1)
  {
    swift_getKeyPath();
    v15 = v1;
    sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel, &protocol conformance descriptor for CountdownTimerViewModel);
    sub_24AAB2CF4();

    if (v1[3])
    {

      sub_24AAB3B24();
    }

    sub_24AA539A4(0);
    v15 = 1;
    v16 = 2;
    sub_24AAB3B54();
    if (v1[4] != a1)
    {
      KeyPath = swift_getKeyPath();
      v14[0] = v14;
      MEMORY[0x28223BE20](KeyPath);
      v14[-2] = v1;
      v14[-1] = a1;
      v15 = v1;
      sub_24AAB2CE4();
    }

    if (v1[2] != a1)
    {
      v8 = swift_getKeyPath();
      v14[0] = v14;
      MEMORY[0x28223BE20](v8);
      v14[-2] = v1;
      v14[-1] = a1;
      v15 = v1;
      sub_24AAB2CE4();
    }

    swift_getKeyPath();
    v15 = v1;
    sub_24AAB2CF4();

    v15 = v1[4];
    v16 = 0;
    sub_24AAB3B54();
    sub_24AA442A0(0, &qword_27EF85BE8, 0x277CBEBB8);
    v9 = [objc_opt_self() mainRunLoop];
    v10 = sub_24AAB5234();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = sub_24AAB51F4();

    sub_24AA169C4(v6, &qword_27EF85BE0, &qword_24AAB8710);
    v15 = v11;
    sub_24AAB51E4();
    sub_24AA550A0(&qword_27EF85BF0, MEMORY[0x277CC9DF0], MEMORY[0x277CC9DE8]);
    v12 = sub_24AAB3B74();

    v15 = v12;
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BF8, &unk_24AAB8768);
    sub_24AA16A68(&qword_27EF85C00, &qword_27EF85BF8, &unk_24AAB8768, MEMORY[0x277CBCB30]);
    v13 = sub_24AAB3C44();

    return sub_24AA539A4(v13);
  }

  return result;
}

void sub_24AA52CDC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*(a1 + 8))
  {
    sub_24AA442A0(0, &qword_27EF85BD8, 0x277D86200);
    oslog = sub_24AAB5264();
    v3 = sub_24AAB5144();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_11;
    }

    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v2;
    v5 = "total time: %ld";
    goto LABEL_7;
  }

  if (*(a1 + 8) == 1)
  {
    sub_24AA442A0(0, &qword_27EF85BD8, 0x277D86200);
    oslog = sub_24AAB5264();
    v3 = sub_24AAB5144();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_11;
    }

    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v2;
    v5 = "Remaining: %ld seconds";
LABEL_7:
    _os_log_impl(&dword_24AA0F000, oslog, v3, v5, v4, 0xCu);
    MEMORY[0x24C226630](v4, -1, -1);
    goto LABEL_11;
  }

  if (!v2)
  {
    v7 = type metadata accessor for AudioCallCountDownButton(0);
    (*(a2 + *(v7 + 24)))();
  }

  sub_24AA442A0(0, &qword_27EF85BD8, 0x277D86200);
  oslog = sub_24AAB5264();
  sub_24AAB5144();
  sub_24AAB3A44();
LABEL_11:
}

uint64_t sub_24AA52F00(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_24AA52F38@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_24AA15F10(v2, v3, v4);
}

uint64_t sub_24AA52F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24AAB2B84();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24AA52FDC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[2];
  v5 = v2[3];

  sub_24AA1B750(v4, v5);
  return v3;
}

uint64_t sub_24AA53054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_24AAB54F4();
  sub_24AA51A48(v6, a3, v4);
  return sub_24AAB5524();
}

uint64_t sub_24AA530E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_24AAB54F4();
  sub_24AA51A48(v7, a4, v5);
  return sub_24AAB5524();
}

uint64_t sub_24AA53154@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE8, &qword_24AAB85F0);
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - v4;
  v6 = type metadata accessor for StopCallRecordingButton(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CF8, &unk_24AAB6310);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C08, &qword_24AAB8778);
  v34 = *(v12 - 8);
  v35 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  sub_24AA56AD8(v2, &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StopCallRecordingButton);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_24AA56B44(&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for StopCallRecordingButton);
  v37 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EB8, &unk_24AAB8780);
  sub_24AA15964();
  sub_24AAB4BB4();
  v17 = type metadata accessor for StopCallRecordingControl(0);
  v18 = *(v17 + 28);
  if (*(v2 + *(v17 + 36)) == 1 && (v19 = *(v2 + v18 + 24)) != 0)
  {
    v20 = *(v2 + v18 + 16);
  }

  else
  {
    v21 = (v2 + v18);
    v20 = *v21;
    v19 = v21[1];
  }

  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v22 = v3[9];
  *&v5[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  v23 = &v5[v3[10]];
  *v23 = v20;
  *(v23 + 1) = v19;
  v24 = &v5[v3[12]];
  *v24 = vdupq_n_s64(0x4041800000000000uLL);
  v24[1].i8[0] = 0;
  v25 = &v5[v3[13]];
  sub_24AA16A68(&qword_27EF84D00, &qword_27EF84CF8, &unk_24AAB6310, MEMORY[0x277CDF028]);
  sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0, &unk_24AAB8F68);
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v26 = v33;
  sub_24AAB47E4();
  sub_24AA169C4(v5, &qword_27EF84CE8, &qword_24AAB85F0);
  (*(v32 + 8))(v11, v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C10, &qword_24AAB8790);
  v28 = v36;
  v29 = (v36 + *(v27 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84D18, &qword_24AABDA10);
  sub_24AAB3F44();
  *v29 = swift_getKeyPath();
  return (*(v34 + 32))(v28, v14, v35);
}

uint64_t sub_24AA53608@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for StopCallRecordingControl(0);

  v3 = sub_24AAB4AC4();
  v4 = sub_24AAB45D4();
  result = swift_getKeyPath();
  *a2 = v3;
  a2[1] = result;
  a2[2] = v4;
  return result;
}

void sub_24AA53680(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel, &protocol conformance descriptor for CountdownTimerViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + 16);
}

double sub_24AA53750(uint64_t a1)
{
  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel, &protocol conformance descriptor for CountdownTimerViewModel);
    sub_24AAB2CE4();
  }

  return result;
}

double sub_24AA53854()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel, &protocol conformance descriptor for CountdownTimerViewModel);
  sub_24AAB2CF4();

  return result;
}

double sub_24AA538F8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel, &protocol conformance descriptor for CountdownTimerViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + 24);

  return result;
}

double sub_24AA539A4(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 24))
  {
    if (a1)
    {
      sub_24AAB3B34();
      sub_24AA550A0(&qword_27EF85A18, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);

      v4 = sub_24AAB4E74();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel, &protocol conformance descriptor for CountdownTimerViewModel);
    sub_24AAB2CE4();

    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 24) = a1;

  return result;
}

uint64_t sub_24AA53B4C()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel, &protocol conformance descriptor for CountdownTimerViewModel);
  sub_24AAB2CF4();

  return *(v0 + 32);
}

void sub_24AA53BEC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel, &protocol conformance descriptor for CountdownTimerViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + 32);
}

double sub_24AA53C94(uint64_t a1)
{
  if (*(v1 + 32) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel, &protocol conformance descriptor for CountdownTimerViewModel);
    sub_24AAB2CE4();
  }

  return result;
}

double sub_24AA53D98(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24AA53DF0();
  }

  return result;
}

void sub_24AA53DF0()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel, &protocol conformance descriptor for CountdownTimerViewModel);
  sub_24AAB2CF4();

  if (*(v0 + 16) < 2)
  {
    swift_getKeyPath();
    sub_24AAB2CF4();

    if (*(v0 + 24))
    {

      sub_24AAB3B24();
    }

    sub_24AA539A4(0);
    goto LABEL_7;
  }

  swift_getKeyPath();
  sub_24AAB2CF4();

  swift_getKeyPath();
  sub_24AAB2D14();

  v1 = *(v0 + 16);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (!v2)
  {
    *(v0 + 16) = v3;
    swift_getKeyPath();
    sub_24AAB2D04();

    swift_getKeyPath();
    sub_24AAB2CF4();

LABEL_7:
    sub_24AAB3B54();
    return;
  }

  __break(1u);
}

uint64_t CountdownTimerViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI23CountdownTimerViewModel___observationRegistrar;
  v2 = sub_24AAB2D34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CountdownTimerViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI23CountdownTimerViewModel___observationRegistrar;
  v2 = sub_24AAB2D34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

id sub_24AA54124(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_24AAB2BA4();
  v13[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_24AAB2BD4();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_24AAB2B04();

    swift_willThrow();
    v11 = sub_24AAB2BD4();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

void sub_24AA54270(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

LABEL_43:
      MEMORY[0x2821FCF40](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_24AA54564(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    sub_24AAB3B34();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v5 = &qword_27EF85A10;
    if (!v12)
    {
LABEL_27:
      v16 = v13;
      while (1)
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v17 = *(v9 + 8 * v13);
        ++v16;
        if (v17)
        {
          v22 = (v17 - 1) & v17;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v22 = (v12 - 1) & v12;
LABEL_32:
      sub_24AA550A0(&qword_27EF85A10, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);

      v18 = sub_24AAB4E64();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if (((*(v15 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        break;
      }

      v21 = ~v19;
      sub_24AA550A0(&qword_27EF85A18, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
      while ((sub_24AAB4E74() & 1) == 0)
      {
        v20 = (v20 + 1) & v21;
        if (((*(v15 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = (v10 + 63) >> 6;
      v12 = v22;
      v5 = &qword_27EF85A10;
      if (!v22)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

void sub_24AA54564(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_24AAB52F4())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v7 &= v7 - 1;
LABEL_12:

      v11 = sub_24AAB5324();

      if ((v11 & 1) == 0)
      {
        return;
      }
    }

    v9 = v4;
    while (1)
    {
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v10 = *(a2 + 56 + 8 * v4);
      ++v9;
      if (v10)
      {
        v7 = (v10 - 1) & v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24AA54668(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v22 = *a1;
  v23 = v6;
  v24 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v19 = *a2;
  v20 = v8;
  v21 = v9;
  sub_24AA15F10(v22, v6, v7);
  sub_24AA15F10(v19, v8, v9);
  v10 = _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(&v22, &v19);
  sub_24AA15ED0(v19, v20, v21);
  sub_24AA15ED0(v22, v23, v24);
  if (v10 & 1) != 0 && (v11 = a3(0), (MEMORY[0x24C2233A0](a1 + v11[5], a2 + v11[5])) && ((v12 = v11[6], v13 = *(a1 + v12), v14 = *(a1 + v12 + 8), v15 = (a2 + v12), v13 == *v15) && v14 == v15[1] || (sub_24AAB5474()) && (v16 = v11[7], sub_24AAAA8E0(*(a1 + v16), *(a1 + v16 + 8), *(a1 + v16 + 16), *(a1 + v16 + 24), *(a2 + v16), *(a2 + v16 + 8), *(a2 + v16 + 16), *(a2 + v16 + 24))) && *(a1 + v11[8]) == *(a2 + v11[8]))
  {
    v17 = *(a1 + v11[9]) ^ *(a2 + v11[9]) ^ 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void *sub_24AA547B8()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 currentCalls];

  sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
  v2 = sub_24AAB5024();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24AAB52F4())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C225BD0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isActive])
      {

        return v6;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t _s22FaceTimeNotificationUI27AudioCallRecordingViewModelC16changesPublisher7Combine03AnyK0Vyyts5NeverOGvg_0()
{
  v0 = sub_24AAB51C4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A20, &qword_24AAB80C0);
  v46 = *(v44 - 8);
  v7 = MEMORY[0x28223BE20](v44);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v45 = &v40 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v47 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v48 = &v40 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A28, &unk_24AABE070);
  v15 = *(v14 - 8);
  v50 = v14;
  v51 = v15;
  MEMORY[0x28223BE20](v14);
  v49 = &v40 - v16;
  v17 = objc_opt_self();
  v18 = [v17 defaultCenter];
  sub_24AAB51D4();

  v19 = [v17 defaultCenter];
  sub_24AAB51D4();

  sub_24AA550A0(&qword_27EF856F0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_24AAB3C04();
  v20 = *(v1 + 8);
  v20(v4, v0);
  v41 = v0;
  v20(v6, v0);
  v42 = v1 + 8;
  v21 = v17;
  v40 = v17;
  v22 = [v17 defaultCenter];
  v23 = sub_24AAB5194();
  sub_24AAB51D4();

  v24 = v44;
  v25 = v45;
  v26 = v43;
  sub_24AAB3B04();
  v20(v6, v0);
  v27 = *(v46 + 8);
  v27(v26, v24);
  v28 = [v21 defaultCenter];
  v29 = sub_24AAB51B4();
  sub_24AAB51D4();

  v30 = v47;
  v31 = v25;
  sub_24AAB3B04();
  v32 = v41;
  v20(v6, v41);
  v27(v31, v24);
  v33 = [v40 defaultCenter];
  v34 = sub_24AAB51A4();
  sub_24AAB51D4();

  v35 = v48;
  sub_24AAB3B04();
  v20(v6, v32);
  v27(v30, v24);
  sub_24AA16A68(&qword_27EF85A30, &qword_27EF85A20, &qword_24AAB80C0, MEMORY[0x277CBCD48]);
  v36 = v49;
  sub_24AAB3BF4();
  v27(v35, v24);
  sub_24AA16A68(&qword_27EF85A38, &qword_27EF85A28, &unk_24AABE070, MEMORY[0x277CBCC08]);
  v37 = v50;
  v38 = sub_24AAB3BE4();
  (*(v51 + 8))(v36, v37);
  return v38;
}

uint64_t sub_24AA550A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24AA550E8()
{
  result = qword_27EF85720;
  if (!qword_27EF85720)
  {
    sub_24AA442A0(255, &qword_27EF86400, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85720);
  }

  return result;
}

uint64_t sub_24AA55150()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AA55224(uint64_t a1)
{
  result = sub_24AAB3A84();
  if (v2 <= 0x3F)
  {
    result = sub_24AAB2D34();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24AA553A8(uint64_t a1)
{
  result = sub_24AAB2D34();
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CountdownTimerViewModel.TimerState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for CountdownTimerViewModel.TimerState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_24AA55518(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_24AA55530(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_24AA555D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85868, &qword_24AAB7940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24AA55648(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24AA4A870(v1);
}

void sub_24AA55678()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__avAudioPlayer);
  *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__avAudioPlayer) = v2;
  v4 = v2;
}

void sub_24AA556E4()
{
  v1 = *(v0 + 28);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability;
  *v2 = *(v0 + 24);
  *(v2 + 4) = v1;
  sub_24AA4AD50();
}

void sub_24AA55780()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__callRecordingService) = *(v0 + 24);
}

uint64_t sub_24AA557E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AA55820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA43DBC;

  return sub_24AA5086C(a1, v4, v5, v6);
}

void sub_24AA558F0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__timeSink) = *(v0 + 24);
}

void sub_24AA559D8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) = *(v0 + 24);
  sub_24AA50268();
  sub_24AA4AD50();
}

uint64_t sub_24AA55ACC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AA55B04()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_24AA55C1C(uint64_t a1)
{
  result = type metadata accessor for StopCallRecordingControl(319);
  if (v2 <= 0x3F)
  {
    result = sub_24AA55CA0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24AA55CA0()
{
  result = qword_27EF85A88;
  if (!qword_27EF85A88)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27EF85A88);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_97Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_98Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24AA55EEC(uint64_t a1)
{
  type metadata accessor for CallRecordingCountDownControl(319);
  if (v1 <= 0x3F)
  {
    sub_24AA55CA0();
    if (v2 <= 0x3F)
    {
      sub_24AA5638C(319, &qword_27EF85AB0, type metadata accessor for CountdownTimerViewModel);
      if (v3 <= 0x3F)
      {
        sub_24AA55FCC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24AA55FCC(uint64_t a1)
{
  if (!qword_27EF85AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85A48, &qword_24AAB8108);
    v1 = sub_24AAB4B94();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF85AB8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AAB2B84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AAB2B84();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AA561DC(uint64_t a1)
{
  result = sub_24AAB2B84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24AA562D4(uint64_t a1)
{
  type metadata accessor for AudioCallRecordingControl(319);
  if (v1 <= 0x3F)
  {
    sub_24AA55CA0();
    if (v2 <= 0x3F)
    {
      sub_24AA5638C(319, &qword_27EF85AE0, type metadata accessor for AudioCallRecordingViewModel);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24AA5638C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24AAB4B94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24AA56428(uint64_t a1)
{
  result = sub_24AA550A0(&qword_27EF85AF0, type metadata accessor for AudioCallRecordingControl, &unk_24AAB8224);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA56480(uint64_t a1)
{
  result = sub_24AA550A0(&qword_27EF85AF8, type metadata accessor for AudioCallRecordingControl, &unk_24AAB8264);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA564D8(void *a1)
{
  a1[1] = sub_24AA550A0(&qword_27EF85B00, type metadata accessor for AudioCallRecordingControl, &unk_24AAB82A8);
  a1[2] = sub_24AA550A0(&qword_27EF85B08, type metadata accessor for AudioCallRecordingControl, "է4;<x");
  result = sub_24AA550A0(&qword_27EF85B10, type metadata accessor for AudioCallRecordingControl, &unk_24AAB8280);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA565CC(uint64_t a1)
{
  result = sub_24AA550A0(&qword_27EF85B20, type metadata accessor for CallRecordingCountDownControl, &unk_24AAB8324);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA56624(uint64_t a1)
{
  result = sub_24AA550A0(&qword_27EF85B28, type metadata accessor for CallRecordingCountDownControl, "ū4;Lw");
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA5667C(void *a1)
{
  a1[1] = sub_24AA550A0(&qword_27EF85B30, type metadata accessor for CallRecordingCountDownControl, &unk_24AAB83A8);
  a1[2] = sub_24AA550A0(&qword_27EF85B38, type metadata accessor for CallRecordingCountDownControl, &unk_24AAB83C4);
  result = sub_24AA550A0(&qword_27EF85B40, type metadata accessor for CallRecordingCountDownControl, "Y(x70w");
  a1[3] = result;
  return result;
}

uint64_t sub_24AA56770(uint64_t a1)
{
  result = sub_24AA550A0(&qword_27EF85B50, type metadata accessor for StopCallRecordingControl, &unk_24AAB8424);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA567C8(uint64_t a1)
{
  result = sub_24AA550A0(&qword_27EF85B58, type metadata accessor for StopCallRecordingControl, &unk_24AAB8464);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA56820(void *a1)
{
  a1[1] = sub_24AA550A0(&qword_27EF85B60, type metadata accessor for StopCallRecordingControl, &unk_24AAB84A8);
  a1[2] = sub_24AA550A0(&qword_27EF85B68, type metadata accessor for StopCallRecordingControl, &unk_24AAB84C4);
  result = sub_24AA550A0(&qword_27EF85B70, type metadata accessor for StopCallRecordingControl, &unk_24AAB8480);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA56920()
{
  v1 = *(type metadata accessor for AudioCallRecordingButton(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_24AA15ED0(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v5 = type metadata accessor for AudioCallRecordingControl(0);
  v6 = *(v5 + 20);
  v7 = sub_24AAB2B84();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);

  v8 = v0 + v4 + *(v5 + 28);

  if (*(v8 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_24AA56AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AA56B44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_167Tm()
{
  v1 = *(type metadata accessor for AudioCallCountDownButton(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_24AA15ED0(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v5 = type metadata accessor for CallRecordingCountDownControl(0);
  v6 = *(v5 + 20);
  v7 = sub_24AAB2B84();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);

  v8 = v0 + v4 + *(v5 + 28);

  if (*(v8 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_24AA56D78(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AudioCallCountDownButton(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_24AA56DEC(uint64_t *a1)
{
  v3 = *(type metadata accessor for AudioCallCountDownButton(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_24AA52CDC(a1, v4);
}

void sub_24AA56EEC()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

uint64_t sub_24AA56F28()
{
  v1 = *(type metadata accessor for StopCallRecordingButton(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_24AA15ED0(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v5 = type metadata accessor for StopCallRecordingControl(0);
  v6 = *(v5 + 20);
  v7 = sub_24AAB2B84();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);

  v8 = v0 + v4 + *(v5 + 28);

  if (*(v8 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

unint64_t sub_24AA5711C()
{
  result = qword_27EF85C18;
  if (!qword_27EF85C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85BA0, &unk_24AAB86D8);
    sub_24AA571D4();
    sub_24AA16A68(&qword_27EF84E40, &qword_27EF84E48, &qword_24AAB8FD0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C18);
  }

  return result;
}

unint64_t sub_24AA571D4()
{
  result = qword_27EF85C20;
  if (!qword_27EF85C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85B88, &qword_24AAB8608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85B78, &qword_24AAB85F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE8, &qword_24AAB85F0);
    sub_24AA16A68(&qword_27EF85B90, &qword_27EF85B78, &qword_24AAB85F8, MEMORY[0x277CDF028]);
    sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0, &unk_24AAB8F68);
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF84D10, &qword_27EF84D18, &qword_24AABDA10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C20);
  }

  return result;
}

unint64_t sub_24AA57360()
{
  result = qword_27EF85C28;
  if (!qword_27EF85C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85BB8, &qword_24AAB86F8);
    sub_24AA573EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C28);
  }

  return result;
}

unint64_t sub_24AA573EC()
{
  result = qword_27EF85C30;
  if (!qword_27EF85C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85BB0, &qword_24AAB86F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84F18, &qword_24AAB6720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE8, &qword_24AAB85F0);
    sub_24AA16A68(&qword_27EF84F10, &qword_27EF84F18, &qword_24AAB6720, MEMORY[0x277CDF028]);
    sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0, &unk_24AAB8F68);
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF84D10, &qword_27EF84D18, &qword_24AABDA10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C30);
  }

  return result;
}

unint64_t sub_24AA57578()
{
  result = qword_27EF85C38;
  if (!qword_27EF85C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85C10, &qword_24AAB8790);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CF8, &unk_24AAB6310);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE8, &qword_24AAB85F0);
    sub_24AA16A68(&qword_27EF84D00, &qword_27EF84CF8, &unk_24AAB6310, MEMORY[0x277CDF028]);
    sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0, &unk_24AAB8F68);
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF84D10, &qword_27EF84D18, &qword_24AABDA10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C38);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22FaceTimeNotificationUI18CallControlsRecipeO(uint64_t a1)
{
  if ((*(a1 + 80) & 7u) <= 4)
  {
    return *(a1 + 80) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24AA57868(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 81))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 80);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24AA578B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_24AA57938(uint64_t a1)
{
  v1 = sub_24AA43A54(a1, v77);
  if (v79 > 2u)
  {
    if (v79 == 3)
    {
      sub_24AA15A64(v77, &v66);
      sub_24AA15A64(v78, v60);
      v34 = v68;
      v35 = v69;
      v36 = __swift_project_boxed_opaque_existential_1(&v66, v68);
      *&v54[24] = v34;
      v55 = *(*(v35 + 8) + 8);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v54);
      (*(*(v34 - 8) + 16))(boxed_opaque_existential_1Tm, v36, v34);
      v38 = v61;
      v39 = v62;
      v40 = __swift_project_boxed_opaque_existential_1(v60, v61);
      v57 = v38;
      v58 = *(*(v39 + 8) + 8);
      v41 = __swift_allocate_boxed_opaque_existential_1Tm(v56);
      (*(*(v38 - 8) + 16))(v41, v40, v38);
      v59 = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
      v42 = sub_24AA58930(v54, v70);
      v74 = 0;
      v45 = sub_24AA585B4(v42, v43, v44);
      sub_24AA58608(v45, v46, v47);
      sub_24AAB42B4();
      sub_24AA1695C(v63, v70, &qword_27EF85C68, &qword_24AAB8938);
      v75 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C68, &qword_24AAB8938);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C88, &unk_24AAB8940);
      sub_24AA58528();
      sub_24AA5865C();
      sub_24AAB42B4();
      sub_24AA169C4(v63, &qword_27EF85C68, &qword_24AAB8938);
      sub_24AA1695C(v65, v70, &qword_27EF85C50, &qword_24AAB8930);
      v76 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C50, &qword_24AAB8930);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C48, &qword_24AAB8928);
      sub_24AA5849C();
      sub_24AA5873C();
      sub_24AAB42B4();
      sub_24AA169C4(v65, &qword_27EF85C50, &qword_24AAB8930);
      sub_24AA5898C(v54);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v66);
    }

    if (v79 == 4)
    {
      sub_24AA15A64(v77, v54);
      sub_24AA15A64(v78, &v66);
      v14 = *&v54[24];
      v15 = v55;
      v16 = __swift_project_boxed_opaque_existential_1(v54, *&v54[24]);
      v63[3] = v14;
      v63[4] = *(v15 + 16);
      v17 = __swift_allocate_boxed_opaque_existential_1Tm(v63);
      (*(*(v14 - 8) + 16))(v17, v16, v14);
      v18 = v68;
      v19 = v69;
      v20 = __swift_project_boxed_opaque_existential_1(&v66, v68);
      v64[3] = v18;
      v64[4] = *(v19 + 16);
      v21 = __swift_allocate_boxed_opaque_existential_1Tm(v64);
      (*(*(v18 - 8) + 16))(v21, v20, v18);
      v22 = sub_24AA587C8(v63, v70);
      v73 = 0;
      sub_24AA58448(v22, v23, v24);
      sub_24AAB42B4();
      sub_24AA1695C(v65, v70, &qword_27EF85C48, &qword_24AAB8928);
      v76 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C50, &qword_24AAB8930);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C48, &qword_24AAB8928);
      sub_24AA5849C();
      sub_24AA5873C();
      sub_24AAB42B4();
      sub_24AA169C4(v65, &qword_27EF85C48, &qword_24AAB8928);
      sub_24AA58824(v63);
      __swift_destroy_boxed_opaque_existential_1Tm(&v66);
      return __swift_destroy_boxed_opaque_existential_1Tm(v54);
    }

    v73 = 1;
    sub_24AA58448(v1, v2, v3);
    sub_24AAB42B4();
    sub_24AA1695C(v65, v70, &qword_27EF85C48, &qword_24AAB8928);
    v76 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C50, &qword_24AAB8930);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C48, &qword_24AAB8928);
    sub_24AA5849C();
    sub_24AA5873C();
    sub_24AAB42B4();
    v32 = &qword_27EF85C48;
    v33 = &qword_24AAB8928;
  }

  else
  {
    if (v79)
    {
      if (v79 == 1)
      {
        sub_24AA15A64(v77, &v66);
        v4 = v68;
        v5 = v69;
        v6 = __swift_project_boxed_opaque_existential_1(&v66, v68);
        v56[1] = v4;
        v56[2] = *(v5 + 16);
        v7 = __swift_allocate_boxed_opaque_existential_1Tm(&v54[24]);
        (*(*(v4 - 8) + 16))(v7, v6, v4);
        *v54 = swift_getKeyPath();
        v54[16] = 0;
        v57 = 0x4041800000000000;
        v8 = sub_24AA158F8(v54, v70);
        v72 = 0;
        v11 = sub_24AA167CC(v8, v9, v10);
        sub_24AA586E8(v11, v12, v13);
        sub_24AAB42B4();
        sub_24AA1695C(v63, v70, &qword_27EF85C88, &unk_24AAB8940);
        v75 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C68, &qword_24AAB8938);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C88, &unk_24AAB8940);
        sub_24AA58528();
        sub_24AA5865C();
        sub_24AAB42B4();
        sub_24AA169C4(v63, &qword_27EF85C88, &unk_24AAB8940);
        sub_24AA1695C(v65, v70, &qword_27EF85C50, &qword_24AAB8930);
        v76 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C50, &qword_24AAB8930);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C48, &qword_24AAB8928);
        sub_24AA5849C();
        sub_24AA5873C();
        sub_24AAB42B4();
        sub_24AA169C4(v65, &qword_27EF85C50, &qword_24AAB8930);
        sub_24AA16820(v54);
      }

      else
      {
        sub_24AA15A64(v77, &v66);
        sub_24AA16768(&v66, &v54[24]);
        *v54 = swift_getKeyPath();
        v54[16] = 0;
        v57 = 0;
        v58 = 0;
        LOWORD(v59) = 1;
        v48 = sub_24AA58880(v54, v70);
        v74 = 1;
        v51 = sub_24AA585B4(v48, v49, v50);
        sub_24AA58608(v51, v52, v53);
        sub_24AAB42B4();
        sub_24AA1695C(v63, v70, &qword_27EF85C68, &qword_24AAB8938);
        v75 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C68, &qword_24AAB8938);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C88, &unk_24AAB8940);
        sub_24AA58528();
        sub_24AA5865C();
        sub_24AAB42B4();
        sub_24AA169C4(v63, &qword_27EF85C68, &qword_24AAB8938);
        sub_24AA1695C(v65, v70, &qword_27EF85C50, &qword_24AAB8930);
        v76 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C50, &qword_24AAB8930);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C48, &qword_24AAB8928);
        sub_24AA5849C();
        sub_24AA5873C();
        sub_24AAB42B4();
        sub_24AA169C4(v65, &qword_27EF85C50, &qword_24AAB8930);
        sub_24AA588DC(v54);
      }

      return __swift_destroy_boxed_opaque_existential_1Tm(&v66);
    }

    sub_24AA15F30(*&v77[0], v54);
    v60[0] = *v54;
    v66 = *&v54[8];
    v67 = v54[24];
    v80[0] = v55;
    v70[0] = *v54;
    v70[1] = *&v54[16];
    v71 = v55;
    v72 = 1;
    sub_24AA1695C(v60, v65, &qword_27EF85010, &qword_24AABB840);
    sub_24AA1695C(&v66, v65, &qword_27EF85018, &qword_24AAB69F0);
    v26 = sub_24AA1695C(v80, v65, &qword_27EF85020, &qword_24AAB69F8);
    v29 = sub_24AA167CC(v26, v27, v28);
    sub_24AA586E8(v29, v30, v31);
    sub_24AAB42B4();
    sub_24AA1695C(v63, v70, &qword_27EF85C88, &unk_24AAB8940);
    v75 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C68, &qword_24AAB8938);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C88, &unk_24AAB8940);
    sub_24AA58528();
    sub_24AA5865C();
    sub_24AAB42B4();
    sub_24AA169C4(v63, &qword_27EF85C88, &unk_24AAB8940);
    sub_24AA1695C(v65, v70, &qword_27EF85C50, &qword_24AAB8930);
    v76 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C50, &qword_24AAB8930);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C48, &qword_24AAB8928);
    sub_24AA5849C();
    sub_24AA5873C();
    sub_24AAB42B4();
    sub_24AA169C4(v60, &qword_27EF85010, &qword_24AABB840);
    sub_24AA169C4(&v66, &qword_27EF85018, &qword_24AAB69F0);
    sub_24AA169C4(v80, &qword_27EF85020, &qword_24AAB69F8);
    v32 = &qword_27EF85C50;
    v33 = &qword_24AAB8930;
  }

  return sub_24AA169C4(v65, v32, v33);
}

uint64_t sub_24AA58414@<X0>(uint64_t a1@<X8>)
{
  sub_24AA57938(v1);
  result = sub_24AAB4D44();
  *(a1 + 96) = 0;
  *(a1 + 104) = result;
  *(a1 + 112) = v4;
  return result;
}

unint64_t sub_24AA58448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF85C40;
  if (!qword_27EF85C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C40);
  }

  return result;
}

unint64_t sub_24AA5849C()
{
  result = qword_27EF85C58;
  if (!qword_27EF85C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85C50, &qword_24AAB8930);
    sub_24AA58528();
    sub_24AA5865C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C58);
  }

  return result;
}

unint64_t sub_24AA58528()
{
  result = qword_27EF85C60;
  if (!qword_27EF85C60)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85C68, &qword_24AAB8938);
    v6 = sub_24AA585B4(v1, v2, v3);
    sub_24AA58608(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C60);
  }

  return result;
}

unint64_t sub_24AA585B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF85C70;
  if (!qword_27EF85C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C70);
  }

  return result;
}

unint64_t sub_24AA58608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF85C78;
  if (!qword_27EF85C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C78);
  }

  return result;
}

unint64_t sub_24AA5865C()
{
  result = qword_27EF85C80;
  if (!qword_27EF85C80)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85C88, &unk_24AAB8940);
    v6 = sub_24AA167CC(v1, v2, v3);
    sub_24AA586E8(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C80);
  }

  return result;
}

unint64_t sub_24AA586E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF85C90;
  if (!qword_27EF85C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C90);
  }

  return result;
}

unint64_t sub_24AA5873C()
{
  result = qword_27EF85C98;
  if (!qword_27EF85C98)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85C48, &qword_24AAB8928);
    sub_24AA58448(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C98);
  }

  return result;
}

unint64_t sub_24AA589E4()
{
  result = qword_27EF85CA0;
  if (!qword_27EF85CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85CA8, &qword_24AAB8978);
    sub_24AA58A70();
    sub_24AA58B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85CA0);
  }

  return result;
}

unint64_t sub_24AA58A70()
{
  result = qword_27EF85CB0;
  if (!qword_27EF85CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85CB8, &qword_24AAB8980);
    sub_24AA58AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85CB0);
  }

  return result;
}

unint64_t sub_24AA58AF4()
{
  result = qword_27EF85CC0;
  if (!qword_27EF85CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85CC8, &qword_24AAB8988);
    sub_24AA5849C();
    sub_24AA5873C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85CC0);
  }

  return result;
}

unint64_t sub_24AA58B80()
{
  result = qword_27EF85CD0;
  if (!qword_27EF85CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85CD8, &unk_24AAB8990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85CD0);
  }

  return result;
}

uint64_t sub_24AA58BE4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_24AAB4F84();
  return sub_24AAB4FE4();
}

uint64_t sub_24AA58C78(uint64_t a1)
{
  v2 = sub_24AAB5294();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_24AA60088(v2, *(a1 + 36), 0, a1);
}

uint64_t sub_24AA58CF4(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_24AAB52B4();
    v9 = v8;
    v10 = sub_24AAB5334();
    v12 = v11;
    v13 = MEMORY[0x24C225B10](v7, v9, v10, v11);
    sub_24AA6007C(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_24AA6007C(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v7 = sub_24AAB5294();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_24AA5E474(v7, v9, v6 != 0, a1, a2, a3);
  v16 = v15;
  sub_24AA6007C(v7, v9, v6 != 0);
  return v16;
}

uint64_t sub_24AA58E28(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = a1;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = sub_24AAB4FD4();
    }

    else if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v5 = sub_24AAB5394();
      }

      v4 = *v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 8);
}

void *KeypadViewModel.__allocating_init(call:combinedInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return sub_24AA5E68C(a1, a3, a4, v4, ObjectType, a2);
}

uint64_t sub_24AA58F20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D98, &qword_24AAB8C08);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_24AAB89A0;
  v3 = (v30 + v2);
  v4 = v0[14];
  *v3 = 49;
  *(v3 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v5 = sub_24AAB2B84();
  v6 = *(*(v5 - 8) + 56);
  v6(&v3[v4], 0, 1, v5);
  v7 = &v3[v1];
  v8 = v0[14];
  *v7 = 50;
  *(v7 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v6(&v3[v1 + v8], 0, 1, v5);
  v9 = &v3[2 * v1];
  v10 = v0[14];
  *v9 = 51;
  *(v9 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v6(&v9[v10], 0, 1, v5);
  v11 = &v3[3 * v1];
  v12 = v0[14];
  *v11 = 52;
  *(v11 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v6(&v11[v12], 0, 1, v5);
  v13 = &v3[4 * v1];
  v14 = v0[14];
  *v13 = 53;
  *(v13 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v6(&v13[v14], 0, 1, v5);
  v15 = &v3[5 * v1];
  v16 = v0[14];
  *v15 = 54;
  *(v15 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v6(&v15[v16], 0, 1, v5);
  v17 = &v3[6 * v1];
  v18 = v0[14];
  *v17 = 55;
  *(v17 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v6(&v17[v18], 0, 1, v5);
  v19 = &v3[7 * v1];
  v20 = v0[14];
  *v19 = 56;
  *(v19 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v6(&v19[v20], 0, 1, v5);
  v21 = &v3[8 * v1];
  v22 = v0[14];
  *v21 = 57;
  *(v21 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v6(&v21[v22], 0, 1, v5);
  v23 = &v3[9 * v1];
  v24 = v0[14];
  *v23 = 42;
  *(v23 + 1) = 0xE100000000000000;
  v6(&v23[v24], 1, 1, v5);
  v25 = &v3[10 * v1];
  v26 = v0[14];
  *v25 = 48;
  *(v25 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v6(&v25[v26], 0, 1, v5);
  v27 = &v3[11 * v1];
  v28 = v0[14];
  *v27 = 35;
  *(v27 + 1) = 0xE100000000000000;
  result = (v6)(&v27[v28], 1, 1, v5);
  off_27EF85CE0 = v30;
  return result;
}

uint64_t sub_24AA59334()
{
  swift_getKeyPath();
  sub_24AA5F534(&qword_27EF85CF8, type metadata accessor for KeypadViewModel, &protocol conformance descriptor for KeypadViewModel);
  sub_24AAB2CF4();

  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_24AA593F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_24AAB5474() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA5F534(&qword_27EF85CF8, type metadata accessor for KeypadViewModel, &protocol conformance descriptor for KeypadViewModel);
    sub_24AAB2CE4();
  }
}

uint64_t sub_24AA5954C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

void *KeypadViewModel.init(call:combinedInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return sub_24AA5E6FC(a1, a3, a4, v4, ObjectType, a2);
}

void sub_24AA59620(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v32 = a1;
  v33 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0);
  v4 = *(v35 - 8);
  v5 = MEMORY[0x28223BE20](v35);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v30 - v9);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  if (qword_27EF84C40 != -1)
  {
    v11 = swift_once();
  }

  v14 = off_27EF85CE0;
  v15 = *(off_27EF85CE0 + 2);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v31 = v3;
    v36[0] = MEMORY[0x277D84F90];
    sub_24AA5D43C(0, v15, 0);
    v16 = v36[0];
    v17 = v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v34 = *(v4 + 72);
    do
    {
      sub_24AA1695C(v17, v13, &qword_27EF85D88, &qword_24AAB8BF0);
      sub_24AA1695C(v13, v10, &qword_27EF85D88, &qword_24AAB8BF0);
      v19 = *v10;
      v18 = v10[1];
      v20 = *(v35 + 48);
      *v7 = *v10;
      v7[1] = v18;
      sub_24AA1A25C(v10 + v20, v7 + v20, &qword_27EF85D90, &qword_24AAB8BF8);

      sub_24AA169C4(v7, &qword_27EF85D88, &qword_24AAB8BF0);
      v11 = sub_24AA169C4(v13, &qword_27EF85D88, &qword_24AAB8BF0);
      v36[0] = v16;
      v22 = *(v16 + 16);
      v21 = *(v16 + 24);
      if (v22 >= v21 >> 1)
      {
        v11 = sub_24AA5D43C((v21 > 1), v22 + 1, 1);
        v16 = v36[0];
      }

      *(v16 + 16) = v22 + 1;
      v23 = v16 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v18;
      v17 += v34;
      --v15;
    }

    while (v15);
    v3 = v31;
  }

  v25 = v32;
  v24 = v33;
  v36[0] = v32;
  v36[1] = v33;
  MEMORY[0x28223BE20](v11);
  *(&v30 - 2) = v36;
  v26 = sub_24AA5D68C(sub_24AA60254, (&v30 - 4), v16);

  if (v26)
  {
    swift_getKeyPath();
    v36[0] = v3;
    sub_24AA5F534(&qword_27EF85CF8, type metadata accessor for KeypadViewModel, &protocol conformance descriptor for KeypadViewModel);
    sub_24AAB2CF4();

    v36[0] = v3;
    swift_getKeyPath();
    sub_24AAB2D14();

    swift_beginAccess();
    MEMORY[0x24C2257F0](v25, v24);
    swift_endAccess();
    v36[0] = v3;
    swift_getKeyPath();
    sub_24AAB2D04();

    v27 = sub_24AA58E28(v25, v24);
    if ((v27 & 0x100) != 0)
    {
      __break(1u);
    }

    else
    {
      v28 = v27;
      swift_getObjectType();
      sub_24AAB38A4();
      v29 = [objc_allocWithZone(MEMORY[0x277D6EEC8]) init];
      [v29 attemptToPlayKey_];
    }
  }
}

uint64_t KeypadViewModel.deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI15KeypadViewModel___observationRegistrar;
  v2 = sub_24AAB2D34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t KeypadViewModel.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI15KeypadViewModel___observationRegistrar;
  v2 = sub_24AAB2D34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t KeypadView.init(viewModel:)@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for KeypadView(0);
  v4 = (a2 + *(v3 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85CF0, &qword_24AAB89C0);
  sub_24AAB4B54();
  *v4 = v9;
  v4[1] = v10;
  v5 = a2 + *(v3 + 24);
  *v5 = sub_24AAB3C94() & 1;
  *(v5 + 8) = v6;
  *(v5 + 16) = v7 & 1;
  type metadata accessor for KeypadViewModel(0);
  sub_24AA5F534(&qword_27EF85CF8, type metadata accessor for KeypadViewModel, &protocol conformance descriptor for KeypadViewModel);
  return sub_24AAB4CB4();
}

uint64_t KeypadView.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24AAB41B4();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D00, &qword_24AAB89C8);
  return sub_24AA59CBC(v2, a2 + *(v4 + 44));
}

uint64_t sub_24AA59CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for KeypadView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E60, &qword_24AAB8CE0);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E68, &qword_24AAB8CE8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v37 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  sub_24AA5A094(&v37 - v17);
  sub_24AA5A7B8(v13);
  v19 = sub_24AAB4D44();
  v38 = v20;
  v39 = v19;
  v21 = &v13[*(v9 + 44)];
  sub_24AA5F38C(a1, v7);
  v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v23 = swift_allocObject();
  sub_24AA5F3F4(v7, v23 + v22);
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_24AAB4B54();
  v45 = sub_24AA5F458;
  v46 = v23;
  v24 = (a1 + *(v4 + 32));
  v25 = *v24;
  v26 = *(v24 + 1);
  LOBYTE(v24) = v24[16];
  LOBYTE(v42) = v25;
  v43 = v26;
  v44 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E70, &qword_24AAB8CF0);
  v27 = sub_24AAB3C84();
  sub_24AA5F4D8(v27, v28, v29);
  sub_24AAB48F4();

  v30 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E80, &qword_24AAB8CF8) + 36)];
  v31 = v38;
  *v30 = v39;
  v30[1] = v31;
  v32 = v37;
  sub_24AA1695C(v18, v37, &qword_27EF85E68, &qword_24AAB8CE8);
  v33 = v40;
  sub_24AA1695C(v13, v40, &qword_27EF85E60, &qword_24AAB8CE0);
  v34 = v41;
  sub_24AA1695C(v32, v41, &qword_27EF85E68, &qword_24AAB8CE8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E88, &qword_24AAB8D00);
  sub_24AA1695C(v33, v34 + *(v35 + 48), &qword_27EF85E60, &qword_24AAB8CE0);
  sub_24AA169C4(v13, &qword_27EF85E60, &qword_24AAB8CE0);
  sub_24AA169C4(v18, &qword_27EF85E68, &qword_24AAB8CE8);
  sub_24AA169C4(v33, &qword_27EF85E60, &qword_24AAB8CE0);
  return sub_24AA169C4(v32, &qword_27EF85E68, &qword_24AAB8CE8);
}

__n128 sub_24AA5A094@<Q0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F38, &qword_24AAB8D90);
  v62 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = &v59 - v1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F40, &qword_24AAB8D98);
  MEMORY[0x28223BE20](v60);
  v3 = &v59 - v2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F48, &qword_24AAB8DA0);
  MEMORY[0x28223BE20](v64);
  v66 = &v59 - v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F50, &qword_24AAB8DA8);
  MEMORY[0x28223BE20](v63);
  v67 = &v59 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D18, &qword_24AAB8AA0);
  sub_24AAB4CA4();
  v6 = v69;
  swift_getKeyPath();
  *&v69 = v6;
  sub_24AA5F534(&qword_27EF85CF8, type metadata accessor for KeypadViewModel, &protocol conformance descriptor for KeypadViewModel);
  sub_24AAB2CF4();

  swift_beginAccess();
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);

  v12 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v12 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    sub_24AAB4CA4();
    v13 = v69;
    swift_getKeyPath();
    *&v69 = v13;
    sub_24AAB2CF4();

    swift_beginAccess();
    v15 = *(v13 + 32);
    v14 = *(v13 + 40);
  }

  else
  {
    v14 = 0xE100000000000000;
    v15 = 32;
  }

  *&v69 = v15;
  *(&v69 + 1) = v14;
  sub_24AA15894(v9, v10, v11);
  v16 = sub_24AAB4774();
  v18 = v17;
  v20 = v19;
  sub_24AAB4554();
  sub_24AAB4604();

  v21 = sub_24AAB4704();
  v23 = v22;
  v25 = v24;

  sub_24AA158E8(v16, v18, v20 & 1);

  sub_24AAB45A4();
  v26 = sub_24AAB4634();
  v28 = v27;
  LOBYTE(v18) = v29;
  v31 = v30;
  sub_24AA158E8(v21, v23, v25 & 1);

  *&v69 = v26;
  *(&v69 + 1) = v28;
  LOBYTE(v70) = v18 & 1;
  *(&v70 + 1) = v31;
  v32 = v61;
  sub_24AAB49A4();
  sub_24AA158E8(v26, v28, v18 & 1);

  LOBYTE(v26) = sub_24AAB44C4();
  sub_24AAB3C54();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  (*(v62 + 32))(v3, v32, v65);
  v41 = &v3[*(v60 + 36)];
  *v41 = v26;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  sub_24AAB4D44();
  sub_24AAB3F24();
  v42 = v3;
  v43 = v66;
  sub_24AA1A25C(v42, v66, &qword_27EF85F40, &qword_24AAB8D98);
  v44 = (v43 + *(v64 + 36));
  v45 = v74;
  v44[4] = v73;
  v44[5] = v45;
  v44[6] = v75;
  v47 = v70;
  v46 = v71;
  *v44 = v69;
  v44[1] = v47;
  v48 = v72;
  v44[2] = v46;
  v44[3] = v48;
  v49 = v67;
  v50 = &v67[*(v63 + 36)];
  v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F58, &qword_24AAB8DB0) + 28);
  v52 = *MEMORY[0x277CE0B20];
  v53 = sub_24AAB46D4();
  (*(*(v53 - 8) + 104))(v50 + v51, v52, v53);
  *v50 = swift_getKeyPath();
  sub_24AA1A25C(v43, v49, &qword_27EF85F48, &qword_24AAB8DA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F60, qword_24AAB8DE8);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_24AAB6FC0;
  *(v54 + 32) = sub_24AAB4A24();
  *(v54 + 40) = sub_24AAB4A44();
  *(v54 + 48) = sub_24AAB4A44();
  MEMORY[0x24C225520](v54);
  sub_24AAB3E54();
  v55 = v76;
  v56 = v68;
  sub_24AA1A25C(v49, v68, &qword_27EF85F50, &qword_24AAB8DA8);
  v57 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E68, &qword_24AAB8CE8) + 36);
  *v57 = v55;
  result = v77;
  *(v57 + 24) = v78;
  *(v57 + 8) = result;
  return result;
}

uint64_t sub_24AA5A7B8@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v1 = sub_24AAB2CD4();
  MEMORY[0x28223BE20](v1 - 8);
  v58 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24AAB4ED4();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v51 = &v46 - v6;
  v7 = type metadata accessor for KeypadView(0);
  v55 = *(v7 - 8);
  v54 = *(v55 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_24AAB42F4();
  MEMORY[0x28223BE20](v50);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24AAB4CE4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_24AAB4CF4();
  v15 = *(v14 - 8);
  v16 = v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85EA0, &qword_24AAB8D18);
  MEMORY[0x28223BE20](v47);
  v20 = &v46 - v19;
  *v13 = xmmword_24AAB6290;
  (*(v11 + 104))(v13, *MEMORY[0x277CDF108], v10);
  sub_24AAB4D04();
  v21 = sub_24AAB5054();
  *(v21 + 16) = 3;
  v22 = v21 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v23 = *(v15 + 16);
  v23(v22, v18, v14);
  v24 = v15;
  v25 = v49;
  v26 = *(v24 + 72);
  v23(v22 + v26, v18, v14);
  v27 = v47;
  v28 = v18;
  v29 = v51;
  (*(v16 + 32))(v22 + 2 * v26, v28, v14);
  v30 = v53;
  v60 = v53;
  sub_24AAB41B4();
  LODWORD(v61) = 0;
  sub_24AA5F534(&qword_27EF85058, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_24AAB5574();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85EA8, &qword_24AAB8D20);
  sub_24AA5F57C();
  v31 = v56;
  sub_24AAB4DC4();
  v32 = v52;
  sub_24AA5F38C(v30, v52);
  v33 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v34 = swift_allocObject();
  v35 = v34 + v33;
  v36 = v57;
  sub_24AA5F3F4(v32, v35);
  v37 = &v20[*(v27 + 36)];
  *v37 = sub_24AA5F7F0;
  v37[1] = v34;
  v37[2] = 0;
  v37[3] = 0;
  sub_24AAB4E84();
  (*(v31 + 16))(v25, v29, v36);
  if (qword_27EF84C50 != -1)
  {
    swift_once();
  }

  v38 = qword_27EF919A8;
  sub_24AAB2CC4();
  v39 = sub_24AAB4F14();
  v41 = v40;
  (*(v31 + 8))(v29, v36);
  v61 = v39;
  v62 = v41;
  v42 = sub_24AA5F850();
  sub_24AA15894(v42, v43, v44);
  sub_24AAB4864();

  return sub_24AA169C4(v20, &qword_27EF85EA0, &qword_24AAB8D18);
}

uint64_t sub_24AA5AE28(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D18, &qword_24AAB8AA0);
  sub_24AAB4CA4();
  sub_24AA59620(a1, a2);

  type metadata accessor for KeypadView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E90, &qword_24AAB8D08);
  sub_24AAB4B64();
  sub_24AA5D800(&v6, a1, a2);

  sub_24AAB4B74();
}

uint64_t sub_24AA5AF3C(uint64_t a1)
{
  v2 = type metadata accessor for KeypadView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_27EF84C40 != -1)
  {
    swift_once();
  }

  v13[5] = off_27EF85CE0;
  swift_getKeyPath();
  sub_24AA5F38C(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_24AA5F3F4(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85EE8, &qword_24AAB8D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85EF0, &qword_24AAB8D60);
  sub_24AA16A68(&qword_27EF85EF8, &qword_27EF85EE8, &qword_24AAB8D58, MEMORY[0x277D83980]);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85EB8, &qword_24AAB8D28);
  v8 = sub_24AA16A68(&qword_27EF85EC0, &qword_27EF85EB8, &qword_24AAB8D28, MEMORY[0x277CDF028]);
  v11 = sub_24AA5F684(v8, v9, v10);
  v13[1] = v7;
  v13[2] = &type metadata for KeypadButtonStyle;
  v13[3] = v8;
  v13[4] = v11;
  swift_getOpaqueTypeConformance2();
  return sub_24AAB4C74();
}

uint64_t sub_24AA5B1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v41 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0);
  v6 = *(v5 - 8);
  v36 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for KeypadView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85EB8, &qword_24AAB8D28);
  v14 = *(v13 - 8);
  v38 = v13;
  v39 = v14;
  MEMORY[0x28223BE20](v13);
  v42 = &v33 - v15;
  sub_24AA5F38C(a2, v12);
  sub_24AA1695C(a1, v8, &qword_27EF85D88, &qword_24AAB8BF0);
  v16 = *(v10 + 80);
  v17 = (v16 + 16) & ~v16;
  v18 = *(v6 + 80);
  v37 = v11 + v18;
  v35 = v16 | v18;
  v19 = swift_allocObject();
  sub_24AA5F3F4(v12, v19 + v17);
  sub_24AA1A25C(v8, v19 + ((v11 + v18 + v17) & ~v18), &qword_27EF85D88, &qword_24AAB8BF0);
  v43 = a1;
  v34 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F00, &qword_24AAB8D68);
  sub_24AA16A68(&qword_27EF85F08, &qword_27EF85F00, &qword_24AAB8D68, MEMORY[0x277CE1198]);
  sub_24AAB4BB4();
  sub_24AA5F38C(v41, v12);
  sub_24AA1695C(a1, v8, &qword_27EF85D88, &qword_24AAB8BF0);
  sub_24AAB50C4();
  v20 = sub_24AAB50B4();
  v21 = (v16 + 32) & ~v16;
  v22 = (v37 + v21) & ~v18;
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v20;
  *(v23 + 24) = v24;
  sub_24AA5F3F4(v12, v23 + v21);
  sub_24AA1A25C(v8, v23 + v22, &qword_27EF85D88, &qword_24AAB8BF0);
  sub_24AA5F38C(v41, v12);
  sub_24AA1695C(v34, v8, &qword_27EF85D88, &qword_24AAB8BF0);
  v25 = sub_24AAB50B4();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = MEMORY[0x277D85700];
  sub_24AA5F3F4(v12, v26 + v21);
  sub_24AA1A25C(v8, v26 + v22, &qword_27EF85D88, &qword_24AAB8BF0);
  sub_24AAB4C14();
  v27 = sub_24AA16A68(&qword_27EF85EC0, &qword_27EF85EB8, &qword_24AAB8D28, MEMORY[0x277CDF028]);
  sub_24AA5F684(v27, v28, v29);
  v30 = v38;
  v31 = v42;
  sub_24AAB47E4();

  return (*(v39 + 8))(v31, v30);
}

double sub_24AA5B690(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D18, &qword_24AAB8AA0);
  sub_24AAB4CA4();
  sub_24AA59620(*a2, *(a2 + 8));

  return result;
}

double sub_24AA5B6EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24AAB41B4();
  v18 = 1;
  sub_24AA5B824(a1, &v11);
  v23 = v15;
  v24[0] = v16[0];
  *(v24 + 10) = *(v16 + 10);
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v25[0] = v11;
  v25[1] = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v26[0] = v16[0];
  *(v26 + 10) = *(v16 + 10);
  sub_24AA1695C(&v19, &v10, &qword_27EF85F10, &unk_24AAB8D70);
  sub_24AA169C4(v25, &qword_27EF85F10, &unk_24AAB8D70);
  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[87] = v24[0];
  *&v17[97] = *(v24 + 10);
  *&v17[7] = v19;
  *&v17[23] = v20;
  *&v17[39] = v21;
  v5 = *&v17[80];
  *(a2 + 81) = *&v17[64];
  *(a2 + 97) = v5;
  *(a2 + 113) = *&v17[96];
  v6 = *&v17[16];
  *(a2 + 17) = *v17;
  *(a2 + 33) = v6;
  result = *&v17[32];
  v8 = *&v17[48];
  *(a2 + 49) = *&v17[32];
  v9 = v18;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 129) = v17[112];
  *(a2 + 65) = v8;
  return result;
}

__n128 sub_24AA5B824@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F18, &qword_24AABD640);
  MEMORY[0x28223BE20](v3 - 8);
  v104 = v95 - v4;
  v5 = sub_24AAB2CD4();
  MEMORY[0x28223BE20](v5 - 8);
  v103 = (v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24AAB4ED4();
  MEMORY[0x28223BE20](v7 - 8);
  v101 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = v95 - v13;
  v15 = sub_24AAB2B84();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v100 = v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v106 = v95 - v19;
  sub_24AA1695C(a1, v14, &qword_27EF85D88, &qword_24AAB8BF0);

  v20 = *(v9 + 48);
  if ((*(v16 + 48))(&v14[v20], 1, v15) == 1)
  {
    sub_24AA169C4(&v14[v20], &qword_27EF85D90, &qword_24AAB8BF8);
    v21 = sub_24AA1695C(a1, v12, &qword_27EF85D88, &qword_24AAB8BF0);
    v22 = v12[1];
    v23 = *(v9 + 48);
    *&v129 = *v12;
    *(&v129 + 1) = v22;
    sub_24AA15894(v21, v24, v25);
    v26 = sub_24AAB4774();
    v28 = v27;
    v30 = v29;
    sub_24AA169C4(v12 + v23, &qword_27EF85D90, &qword_24AAB8BF8);
    sub_24AAB45C4();
    sub_24AAB4604();

    v31 = sub_24AAB4704();
    v33 = v32;
    LOBYTE(v23) = v34;
    v36 = v35;

    sub_24AA158E8(v26, v28, v30 & 1);

    LOBYTE(v108) = v23 & 1;
    v124 = 1;
    *&v118 = v31;
    *(&v118 + 1) = v33;
    LOBYTE(v119) = v23 & 1;
    *(&v119 + 1) = v112[0];
    DWORD1(v119) = *(v112 + 3);
    *(&v119 + 1) = v36;
    v122 = v127;
    v123[0] = v128[0];
    *(v123 + 9) = *(v128 + 9);
    v121 = v126;
    v120 = v125;
    BYTE9(v123[1]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F20, &qword_24AAB8D80);
    sub_24AA16A68(&qword_27EF85F28, &qword_27EF85F20, &qword_24AAB8D80, MEMORY[0x277CE14C0]);
    sub_24AAB42B4();
  }

  else
  {
    (*(v16 + 32))(v106, &v14[v20], v15);
    v37 = sub_24AA1695C(a1, v12, &qword_27EF85D88, &qword_24AAB8BF0);
    v38 = *v12;
    v39 = v12[1];
    v102 = v15;
    v40 = *(v9 + 48);
    *&v129 = v38;
    *(&v129 + 1) = v39;
    v95[1] = sub_24AA15894(v37, v41, v42);
    v43 = sub_24AAB4774();
    v45 = v44;
    v47 = v46;
    sub_24AA169C4(v12 + v40, &qword_27EF85D90, &qword_24AAB8BF8);
    sub_24AAB4554();
    v48 = sub_24AAB4704();
    v49 = v16;
    v51 = v50;
    v53 = v52;
    v54 = v49;

    v55 = v43;
    v56 = v102;
    sub_24AA158E8(v55, v45, v47 & 1);

    sub_24AAB4594();
    v57 = sub_24AAB4634();
    v97 = v58;
    v98 = v57;
    v96 = v59;
    v99 = v60;
    sub_24AA158E8(v48, v51, v53 & 1);

    v61 = v100;
    (*(v54 + 16))(v100, v106, v56);
    sub_24AAB2B14();
    if (qword_27EF84C50 != -1)
    {
      swift_once();
    }

    v62 = qword_27EF919A8;
    sub_24AAB2CC4();
    *&v129 = sub_24AAB4F14();
    *(&v129 + 1) = v63;
    v64 = sub_24AAB4774();
    v66 = v65;
    v68 = v67;
    v69 = *(v54 + 8);
    v101 = (v54 + 8);
    v103 = v69;
    v69(v61, v56);
    sub_24AAB4594();
    v70 = sub_24AAB4564();
    v71 = v104;
    (*(*(v70 - 8) + 56))(v104, 1, 1, v70);
    sub_24AAB45B4();
    sub_24AA169C4(v71, &qword_27EF85F18, &qword_24AABD640);
    v72 = sub_24AAB4704();
    v74 = v73;
    v76 = v75;

    sub_24AA158E8(v64, v66, v68 & 1);

    v77 = sub_24AAB4714();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    sub_24AA158E8(v72, v74, v76 & 1);

    LOBYTE(v72) = sub_24AAB4504();
    sub_24AAB3C54();
    *&v108 = v77;
    *(&v108 + 1) = v79;
    v109.n128_u8[0] = v81 & 1;
    *(v109.n128_u32 + 1) = v129;
    v109.n128_u32[1] = *(&v129 + 3);
    v109.n128_u64[1] = v83;
    LOBYTE(v110) = v72;
    DWORD1(v110) = *(&v118 + 3);
    *(&v110 + 1) = v118;
    *(&v110 + 1) = v84;
    *&v111[0] = v85;
    *(&v111[0] + 1) = v86;
    *&v111[1] = v87;
    BYTE8(v111[1]) = 0;
    *(v128 + 9) = *(v111 + 9);
    v128[0] = v111[0];
    v127 = v110;
    v126 = v109;
    v125 = v108;
    v112[0] = v108;
    *(v113 + 9) = *(v111 + 9);
    v112[2] = v110;
    v113[0] = v111[0];
    v112[1] = v109;
    *(v117 + 9) = *(v111 + 9);
    LOBYTE(v77) = v96 & 1;
    v107 = v96 & 1;
    v116 = v110;
    v117[0] = v111[0];
    v114 = v108;
    v115 = v109;
    LOBYTE(v72) = v96 & 1;
    v89 = v97;
    v88 = v98;
    sub_24AA1A814(v98, v97, v96 & 1);
    v90 = v99;

    sub_24AA1695C(&v108, &v129, &qword_27EF85F30, &qword_24AAB8D88);
    sub_24AA1A814(v88, v89, v77);

    sub_24AA1695C(v112, &v129, &qword_27EF85F30, &qword_24AAB8D88);
    sub_24AA169C4(&v125, &qword_27EF85F30, &qword_24AAB8D88);
    sub_24AA158E8(v88, v89, v77);

    v132 = v115;
    v133 = v116;
    *v134 = v117[0];
    *&v134[9] = *(v117 + 9);
    v124 = 0;
    *&v129 = v88;
    *(&v129 + 1) = v89;
    LOBYTE(v130) = v72;
    *(&v130 + 1) = v90;
    v131 = v114;
    v134[25] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F20, &qword_24AAB8D80);
    sub_24AA16A68(&qword_27EF85F28, &qword_27EF85F20, &qword_24AAB8D80, MEMORY[0x277CE14C0]);
    sub_24AAB42B4();
    sub_24AA169C4(&v108, &qword_27EF85F30, &qword_24AAB8D88);
    sub_24AA158E8(v88, v89, v77);

    v103(v106, v102);
    v133 = v122;
    *v134 = v123[0];
    *&v134[10] = *(v123 + 10);
    v129 = v118;
    v130 = v119;
    v131 = v120;
    v132 = v121;
  }

  v91 = *v134;
  v92 = v105;
  *(v105 + 64) = v133;
  *(v92 + 80) = v91;
  *(v92 + 90) = *&v134[10];
  v93 = v130;
  *v92 = v129;
  *(v92 + 16) = v93;
  result = v132;
  *(v92 + 32) = v131;
  *(v92 + 48) = result;
  return result;
}

uint64_t sub_24AA5C258@<X0>(uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  type metadata accessor for KeypadView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E90, &qword_24AAB8D08);
  sub_24AAB4B64();
  LOBYTE(a2) = sub_24AA5C2EC(*a2, a2[1], v6);

  *a3 = a2 & 1;
  return result;
}

uint64_t sub_24AA5C2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_24AAB54F4();
  sub_24AAB4F64();
  v6 = sub_24AAB5524();
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
    if (v11 || (sub_24AAB5474() & 1) != 0)
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

uint64_t sub_24AA5C3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  v6 = a5[1];
  type metadata accessor for KeypadView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E90, &qword_24AAB8D08);
  sub_24AAB4B64();
  sub_24AA5E0C4(v5, v6);

  sub_24AAB4B74();
}

double sub_24AA5C4B0(uint64_t a1)
{
  type metadata accessor for KeypadView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E70, &qword_24AAB8CF0);
  sub_24AAB3C64();
  sub_24AAB3C74();

  return result;
}

uint64_t sub_24AA5C570@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24AAB41B4();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D00, &qword_24AAB89C8);
  return sub_24AA59CBC(v2, a2 + *(v4 + 44));
}

uint64_t sub_24AA5C5C4@<X0>(uint64_t a1@<X8>)
{
  v9[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D58, &unk_24AAB8BD0);
  MEMORY[0x28223BE20](v2);
  v4 = v9 - v3;
  sub_24AAB4164();
  v15 = *v1;
  v5 = *(v1 + 2);
  v13 = *v1;
  v14 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D60, &unk_24AABE9C0);
  sub_24AAB4B84();
  sub_24AAB4DE4();
  *&v4[*(v2 + 36)] = 0;
  v11 = v15;
  v12 = v5;
  sub_24AAB4B64();
  v11 = v15;
  v16 = v5;
  v6 = swift_allocObject();
  v7 = v1[1];
  *(v6 + 16) = *v1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v1 + 4);
  sub_24AA5EE00(&v11, v10);
  sub_24AA1695C(&v16, v10, &qword_27EF85D68, &qword_24AAB8BE0);
  sub_24AA5EE5C();

  sub_24AAB4954();

  return sub_24AA169C4(v4, &qword_27EF85D58, &unk_24AAB8BD0);
}

uint64_t sub_24AA5C814(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v43 = a3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0);
  v44 = *(v48 - 8);
  v5 = MEMORY[0x28223BE20](v48);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v43 - v9);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v43 - v12;
  v14 = *a1;
  v15 = a1[1];
  v17 = *a2;
  v16 = a2[1];
  if (v14 != v17 || v15 != v16)
  {
    result = sub_24AAB5474();
    if ((result & 1) == 0)
    {
      v19 = sub_24AAB4F74();
      result = sub_24AAB4F74();
      if (result < v19)
      {
        v20 = 0xE000000000000000;
        v51 = 0;
        v52 = 0xE000000000000000;
        v21 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v21 = v17 & 0xFFFFFFFFFFFFLL;
        }

        v50[2] = v17;
        v50[3] = v16;
        v50[4] = 0;
        v50[5] = v21;

        v22 = sub_24AAB4FB4();
        if (v23)
        {
          v24 = v22;
          v25 = v23;
          v26 = 0;
          do
          {
            if (qword_27EF84C40 != -1)
            {
              v22 = swift_once();
            }

            v28 = off_27EF85CE0;
            v29 = *(off_27EF85CE0 + 2);
            if (v29)
            {
              v45 = v24;
              v46 = v25;
              v47 = v26;
              v50[0] = MEMORY[0x277D84F90];
              sub_24AA5D43C(0, v29, 0);
              v30 = v50[0];
              v31 = v28 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
              v49 = *(v44 + 72);
              do
              {
                sub_24AA1695C(v31, v13, &qword_27EF85D88, &qword_24AAB8BF0);
                sub_24AA1695C(v13, v10, &qword_27EF85D88, &qword_24AAB8BF0);
                v33 = *v10;
                v32 = v10[1];
                v34 = *(v48 + 48);
                *v7 = *v10;
                v7[1] = v32;
                sub_24AA1A25C(v10 + v34, v7 + v34, &qword_27EF85D90, &qword_24AAB8BF8);

                sub_24AA169C4(v7, &qword_27EF85D88, &qword_24AAB8BF0);
                v22 = sub_24AA169C4(v13, &qword_27EF85D88, &qword_24AAB8BF0);
                v50[0] = v30;
                v36 = *(v30 + 16);
                v35 = *(v30 + 24);
                if (v36 >= v35 >> 1)
                {
                  v22 = sub_24AA5D43C((v35 > 1), v36 + 1, 1);
                  v30 = v50[0];
                }

                *(v30 + 16) = v36 + 1;
                v37 = v30 + 16 * v36;
                *(v37 + 32) = v33;
                *(v37 + 40) = v32;
                v31 += v49;
                --v29;
              }

              while (v29);
              v25 = v46;
              v26 = v47;
              v24 = v45;
            }

            else
            {
              v30 = MEMORY[0x277D84F90];
            }

            v50[0] = v24;
            v50[1] = v25;
            MEMORY[0x28223BE20](v22);
            *(&v43 - 2) = v50;

            v38 = sub_24AA5D68C(sub_24AA5EF14, (&v43 - 4), v30);

            if (v38)
            {
              MEMORY[0x24C2257E0](v24, v25);
            }

            v22 = sub_24AAB4FB4();
            v24 = v22;
            v25 = v27;
          }

          while (v27);
          v39 = v51;
          v20 = v52;
        }

        else
        {
          v39 = 0;
        }

        v40 = sub_24AA58BE4(v39, v20);
        v42 = v41;

        if (v42)
        {
          (*(v43 + 24))(v40, v42);
        }
      }
    }
  }

  return result;
}

uint64_t sub_24AA5CC70@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85DA0, &qword_24AAB8C10);
  MEMORY[0x28223BE20](v8);
  v10 = (&v32 - v9);
  v11 = [objc_opt_self() quaternarySystemFillColor];
  v12 = sub_24AAB49C4();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85DA8, &qword_24AAB8C18) + 36);
  v14 = *MEMORY[0x277CE13B8];
  v15 = sub_24AAB4DB4();
  (*(*(v15 - 8) + 104))(v10 + v13, v14, v15);
  *v10 = v12;
  sub_24AAB4D44();
  sub_24AAB3D54();
  v16 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85DB0, &qword_24AAB8C20) + 36));
  v17 = v35;
  *v16 = v34;
  v16[1] = v17;
  v16[2] = v36;
  v18 = sub_24AAB4D44();
  v20 = v19;
  v21 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85DB8, &qword_24AAB8C28) + 36);
  sub_24AAB43B4();
  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85DC0, &qword_24AAB8C30) + 36)];
  *v22 = v18;
  v22[1] = v20;
  v23 = sub_24AAB4A44();
  KeyPath = swift_getKeyPath();
  v25 = (v10 + *(v8 + 36));
  *v25 = KeyPath;
  v25[1] = v23;
  sub_24AA5EF88();
  sub_24AAB4794();
  sub_24AA169C4(v10, &qword_27EF85DA0, &qword_24AAB8C10);
  v26 = sub_24AAB4D44();
  v28 = v27;
  v29 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E00, &qword_24AAB8C70) + 36);
  sub_24AA5CEFC(a2, a3, v33, v29);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E08, &qword_24AAB8C78);
  v31 = (v29 + *(result + 36));
  *v31 = v26;
  v31[1] = v28;
  return result;
}

uint64_t sub_24AA5CEFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v29 = a1;
  v30 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E10, &qword_24AAB8C80);
  MEMORY[0x28223BE20](v6);
  v8 = (&v27 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E18, &qword_24AAB8C88);
  MEMORY[0x28223BE20](v9);
  v11 = (&v27 - v10);
  v12 = sub_24AAB49D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_24AAB43C4())
  {
    (*(v13 + 104))(v15, *MEMORY[0x277CE0EE0], v12);
    v16 = sub_24AAB4A74();
    sub_24AAB3D94();
    sub_24AAB3D84();
    MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
    sub_24AAB3DB4();

    v17 = sub_24AAB3D64();

    *v11 = v16;
    v11[1] = v17;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E30, &unk_24AAB8CA0);
    sub_24AA5F254();
    sub_24AA16A68(&qword_27EF85E50, &qword_27EF85E10, &qword_24AAB8C80, MEMORY[0x277CE1148]);
    sub_24AAB42B4();
  }

  else
  {
    v27 = v9;
    v28 = a4;
    v32 = v29;
    v33 = v30;
    v18 = a3 & 1;
    v34 = a3 & 1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E20, &qword_24AAB8C90);
    MEMORY[0x24C225430](&v31, v19);
    if (v31 != 1)
    {
      v24 = 1;
      a4 = v28;
      goto LABEL_7;
    }

    (*(v13 + 104))(v15, *MEMORY[0x277CE0EE0], v12);
    v20 = sub_24AAB4A74();
    sub_24AAB3D94();
    sub_24AAB3D84();
    MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
    sub_24AAB3DB4();

    v21 = sub_24AAB3D64();

    v22 = swift_allocObject();
    v23 = v30;
    *(v22 + 16) = v29;
    *(v22 + 24) = v23;
    *(v22 + 32) = v18;

    sub_24AAB2CA4();
    *v8 = v20;
    v8[1] = v21;
    v8[2] = sub_24AA5F248;
    v8[3] = v22;
    v8[4] = 0;
    v8[5] = 0;
    sub_24AA1695C(v8, v11, &qword_27EF85E10, &qword_24AAB8C80);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E30, &unk_24AAB8CA0);
    sub_24AA5F254();
    sub_24AA16A68(&qword_27EF85E50, &qword_27EF85E10, &qword_24AAB8C80, MEMORY[0x277CE1148]);
    a4 = v28;
    sub_24AAB42B4();
    sub_24AA169C4(v8, &qword_27EF85E10, &qword_24AAB8C80);
  }

  v24 = 0;
LABEL_7:
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E28, &qword_24AAB8C98);
  return (*(*(v25 - 8) + 56))(a4, v24, 1, v25);
}

char *sub_24AA5D43C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24AA5D47C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24AA5D45C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24AA5D588(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24AA5D47C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87040, &qword_24AAB8C00);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_24AA5D588(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E58, &qword_24AAB8CB0);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_24AA5D68C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_24AA5D738(uint64_t a1)
{
  v2 = sub_24AAB46D4();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24AAB3F94();
}

uint64_t sub_24AA5D800(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24AAB54F4();
  sub_24AAB4F64();
  v8 = sub_24AAB5524();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24AAB5474() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_24AA5DBB0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_24AA5D950(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E98, &qword_24AAB8D10);
  v4 = sub_24AAB5354();
  v5 = v4;
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
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_24AAB54F4();
      sub_24AAB4F64();
      v21 = sub_24AAB5524();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_24AA5DBB0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24AA5D950(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_24AA5DD30();
      goto LABEL_16;
    }

    sub_24AA5DE8C(v8 + 1);
  }

  v10 = *v4;
  sub_24AAB54F4();
  sub_24AAB4F64();
  v11 = sub_24AAB5524();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_24AAB5474() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_24AAB5494();
  __break(1u);
}

void sub_24AA5DD30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E98, &qword_24AAB8D10);
  v2 = *v0;
  v3 = sub_24AAB5344();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_24AA5DE8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E98, &qword_24AAB8D10);
  v4 = sub_24AAB5354();
  v5 = v4;
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
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_24AAB54F4();

      sub_24AAB4F64();
      v20 = sub_24AAB5524();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }
}

uint64_t sub_24AA5E0C4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_24AAB54F4();
  sub_24AAB4F64();
  v6 = sub_24AAB5524();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_24AAB5474() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24AA5DD30();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_24AA5E200(v8);
  *v2 = v16;
  return v12;
}

void sub_24AA5E200(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24AAB52A4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_24AAB54F4();

        sub_24AAB4F64();
        v10 = sub_24AAB5524();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

uint64_t sub_24AA5E3C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24AAB4064();
  *a1 = result;
  return result;
}

uint64_t sub_24AA5E41C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AAB5474() & 1;
  }
}

void sub_24AA5E474(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x24C225B50](a1, a2, v11);
      sub_24AA442A0(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_24AA442A0(0, a5, a6);
    if (sub_24AAB52D4() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_24AAB52E4();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_24AAB5204();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_24AAB5214();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

void *sub_24AA5E68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for KeypadViewModel(0);
  v10 = swift_allocObject();
  sub_24AAB2D24();
  v10[2] = a1;
  v10[3] = a6;
  v10[4] = a2;
  v10[5] = a3;
  return v10;
}

void *sub_24AA5E6FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_24AAB2D24();
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a2;
  a4[5] = a3;
  return a4;
}

uint64_t sub_24AA5E7BC(uint64_t a1)
{
  result = sub_24AAB2D34();
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

uint64_t sub_24AA5E898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D18, &qword_24AAB8AA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24AA5E974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D18, &qword_24AAB8AA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24AA5EA38(uint64_t a1)
{
  sub_24AA5EAD4(319);
  if (v1 <= 0x3F)
  {
    sub_24AA5EB2C(319);
    if (v2 <= 0x3F)
    {
      sub_24AA5EB90();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24AA5EAD4(uint64_t a1)
{
  if (!qword_27EF85D30)
  {
    type metadata accessor for KeypadViewModel(255);
    v1 = sub_24AAB4CC4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF85D30);
    }
  }
}

void sub_24AA5EB2C(uint64_t a1)
{
  if (!qword_27EF85D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85CF0, &qword_24AAB89C0);
    v1 = sub_24AAB4B94();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF85D38);
    }
  }
}

void sub_24AA5EB90()
{
  if (!qword_27EF85D40)
  {
    v0 = sub_24AAB3CB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF85D40);
    }
  }
}

uint64_t sub_24AA5EC2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24AA5EC74(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24AA5ECE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_24AA5ED28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24AA5EDB0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_24AA5EE5C()
{
  result = qword_27EF85D70;
  if (!qword_27EF85D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85D58, &unk_24AAB8BD0);
    sub_24AA16A68(&qword_27EF85D78, &qword_27EF85D80, &qword_24AAB8BE8, MEMORY[0x277CDF1A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85D70);
  }

  return result;
}

uint64_t sub_24AA5EF30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24AAB4064();
  *a1 = result;
  return result;
}

unint64_t sub_24AA5EF88()
{
  result = qword_27EF85DC8;
  if (!qword_27EF85DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85DA0, &qword_24AAB8C10);
    sub_24AA5F040();
    sub_24AA16A68(&qword_27EF85DF0, &qword_27EF85DF8, &qword_24AAB8C68, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85DC8);
  }

  return result;
}

unint64_t sub_24AA5F040()
{
  result = qword_27EF85DD0;
  if (!qword_27EF85DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85DB8, &qword_24AAB8C28);
    sub_24AA5F0F8();
    sub_24AA16A68(&qword_27EF85DE8, &qword_27EF85DC0, &qword_24AAB8C30, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85DD0);
  }

  return result;
}

unint64_t sub_24AA5F0F8()
{
  result = qword_27EF85DD8;
  if (!qword_27EF85DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85DB0, &qword_24AAB8C20);
    sub_24AA5F184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85DD8);
  }

  return result;
}

unint64_t sub_24AA5F184()
{
  result = qword_27EF85DE0;
  if (!qword_27EF85DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85DA8, &qword_24AAB8C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85DE0);
  }

  return result;
}

uint64_t sub_24AA5F208()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

unint64_t sub_24AA5F254()
{
  result = qword_27EF85E38;
  if (!qword_27EF85E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85E30, &unk_24AAB8CA0);
    sub_24AA16A68(&qword_27EF85E40, &qword_27EF85E48, &qword_24AAB91C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85E38);
  }

  return result;
}

uint64_t sub_24AA5F30C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AAB5474() & 1;
  }
}

uint64_t sub_24AA5F38C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeypadView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA5F3F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeypadView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA5F458(uint64_t a1, unint64_t a2)
{
  v5 = *(type metadata accessor for KeypadView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24AA5AE28(a1, a2, v6);
}

unint64_t sub_24AA5F4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF85E78;
  if (!qword_27EF85E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85E78);
  }

  return result;
}

uint64_t sub_24AA5F534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24AA5F57C()
{
  result = qword_27EF85EB0;
  if (!qword_27EF85EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85EA8, &qword_24AAB8D20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85EB8, &qword_24AAB8D28);
    v3 = sub_24AA16A68(&qword_27EF85EC0, &qword_27EF85EB8, &qword_24AAB8D28, MEMORY[0x277CDF028]);
    sub_24AA5F684(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85EB0);
  }

  return result;
}

unint64_t sub_24AA5F684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF85EC8;
  if (!qword_27EF85EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85EC8);
  }

  return result;
}

uint64_t objectdestroy_33Tm()
{
  v1 = *(type metadata accessor for KeypadView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D18, &qword_24AAB8AA0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_24AA5F7F0()
{
  v1 = *(type metadata accessor for KeypadView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24AA5C4B0(v2);
}

unint64_t sub_24AA5F850()
{
  result = qword_27EF85ED0;
  if (!qword_27EF85ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85EA0, &qword_24AAB8D18);
    sub_24AA16A68(&qword_27EF85ED8, &qword_27EF85EE0, &qword_24AAB8D30, MEMORY[0x277CDF170]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85ED0);
  }

  return result;
}

uint64_t sub_24AA5F908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for KeypadView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24AA5B1B0(a1, v6, a2);
}

uint64_t sub_24AA5F988()
{
  v1 = *(type metadata accessor for KeypadView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = *(*v5 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D18, &qword_24AAB8AA0);
  (*(*(v9 - 8) + 8))(v0 + v3, v9);

  v10 = v5[14];
  v11 = sub_24AAB2B84();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v0 + v7 + v10, v11);
  }

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v2 | v6 | 7);
}

double sub_24AA5FB94()
{
  v1 = *(type metadata accessor for KeypadView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0) - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_24AA5B690(v0 + v2, v5);
}

uint64_t sub_24AA5FC78@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for KeypadView(0) - 8);
  v4 = ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0) - 8);
  v6 = (v1 + ((v4 + *(v5 + 80)) & ~*(v5 + 80)));

  return sub_24AA5C258(v6, a1);
}

uint64_t objectdestroy_48Tm()
{
  v1 = *(type metadata accessor for KeypadView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = *(*v5 + 64);
  swift_unknownObjectRelease();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D18, &qword_24AAB8AA0);
  (*(*(v9 - 8) + 8))(v0 + v3, v9);

  v10 = v5[14];
  v11 = sub_24AAB2B84();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v0 + v7 + v10, v11);
  }

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_24AA5FF70(uint64_t a1)
{
  v3 = *(type metadata accessor for KeypadView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80)));

  return sub_24AA5C3E4(a1, v7, v8, v1 + v4, v9);
}

uint64_t sub_24AA6007C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_24AA60088(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24AA600D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85D58, &unk_24AAB8BD0);
  sub_24AA5EE5C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24AA60154()
{
  result = qword_27EF85F68;
  if (!qword_27EF85F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85E00, &qword_24AAB8C70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85DA0, &qword_24AAB8C10);
    sub_24AA5EF88();
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF85F70, &qword_27EF85E08, &qword_24AAB8C78, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85F68);
  }

  return result;
}

id sub_24AA603A8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for UIBackdropView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_24AA60410()
{
  v0 = [objc_allocWithZone(type metadata accessor for UIBackdropView()) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 clearColor];
  [v2 setBackgroundColor_];

  return v2;
}

uint64_t sub_24AA604EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA60634(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24AA60550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA60634(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24AA605B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24AA60634(a1, a2, a3);
  sub_24AAB4284();
  __break(1u);
}

unint64_t sub_24AA605E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF85F78;
  if (!qword_27EF85F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85F78);
  }

  return result;
}

unint64_t sub_24AA60634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF85F80;
  if (!qword_27EF85F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85F80);
  }

  return result;
}

unint64_t sub_24AA60688()
{
  result = qword_27EF85F88[0];
  if (!qword_27EF85F88[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27EF85F88);
  }

  return result;
}

void sub_24AA606DC(uint64_t a1)
{
  sub_24AA60CA4();
  if (v1 <= 0x3F)
  {
    sub_24AA63758(319, &qword_27EF86018, MEMORY[0x277CE0228], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_24AA63758(319, &qword_27EF86020, type metadata accessor for CGSize, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24AA60804(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_24AAB41A4() - 8);
  v7 = 8;
  if (*(v6 + 64) > 8uLL)
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 & 0xF8;
  v14 = v13 | 7;
  v15 = v7 + 8;
  v16 = v11 + 16;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v17 = ((*(v8 + 64) + ((v16 + ((v15 + ((v13 + 16) & ~v14)) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 31) & 0xFFFFFFFFFFFFFFF8) + 32;
  v18 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = a2 - v12 + 1;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v24 = v22 - 1;
    if (v18)
    {
      v24 = 0;
      v25 = *a1;
    }

    else
    {
      v25 = 0;
    }

    return v12 + (v25 | v24) + 1;
  }

  if (v21)
  {
    v22 = *(a1 + v17);
    if (v22)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  v26 = (v15 + ((a1 + v14 + 9) & ~v14)) & 0xFFFFFFFFFFFFFFF8;
  if ((v9 & 0x80000000) != 0)
  {
    v28 = *(v8 + 48);

    return v28((v16 + v26) & ~v11);
  }

  else
  {
    v27 = *(v26 + 8);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }
}

void sub_24AA60A24(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_24AAB41A4() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 & 0xF8 | 7;
  v16 = v9 + 8;
  v17 = ((*(v10 + 64) + ((v13 + 16 + ((v16 + (((v12 & 0xF8) + 16) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 31) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v14 >= a3)
  {
    v20 = 0;
    v21 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v10 + 64) + ((v13 + 16 + ((v16 + (((v12 & 0xF8) + 16) & ~v15)) & 0xFFFFFFF8)) & ~v13) + 31) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v18 = a3 - v14 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v24 = ((v16 + ((a1 + v15 + 9) & ~v15)) & 0xFFFFFFFFFFFFFFF8);
      if ((v11 & 0x80000000) != 0)
      {
        v25 = *(v10 + 56);

        v25((v24 + v13 + 16) & ~v13, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *v24 = a2 & 0x7FFFFFFF;
        v24[1] = 0;
      }

      else
      {
        v24[1] = (a2 - 1);
      }

      return;
    }
  }

  if (v17)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v17)
  {
    v23 = ~v14 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

void sub_24AA60CA4()
{
  if (!qword_27EF86010)
  {
    v0 = sub_24AAB3CF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF86010);
    }
  }
}

uint64_t sub_24AA60D38@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = sub_24AAB3CE4();
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v65 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v64 = &v53 - v5;
  v6 = sub_24AAB4DB4();
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x28223BE20](v6);
  v63 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85DA8, &qword_24AAB8C18);
  v8 = MEMORY[0x28223BE20](v70);
  v62 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF860A8, &qword_24AAB9190);
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF860B0, &qword_24AAB9198);
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  v18 = sub_24AAB4094();
  v61 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF860B8, &qword_24AAB91A0);
  MEMORY[0x28223BE20](v71);
  v22 = &v53 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF860C0, &qword_24AAB91A8);
  MEMORY[0x28223BE20](v23);
  v26 = (&v53 - v25);
  if (*v1)
  {
    *v26 = *v1;
    swift_storeEnumTagMultiPayload();
    sub_24AA63B30();

    return sub_24AAB42B4();
  }

  v53 = v18;
  v54 = v11;
  v55 = v17;
  v56 = v26;
  v57 = v24;
  v58 = v22;
  v28 = v69;
  v59 = v15;
  v60 = v14;
  v29 = v1 + *(type metadata accessor for ControlPlatter(0) + 24);
  v30 = *v29;
  if (v29[8] == 1)
  {
    v31 = v28;
    v32 = v55;
    if ((v30 & 1) == 0)
    {
LABEL_5:
      v33 = [objc_opt_self() quaternarySystemFillColor];
      v34 = sub_24AAB49C4();
      v35 = v64;
      sub_24AA63250(&qword_27EF85290, &qword_24AAB9020, MEMORY[0x277CDF3E0], v64);
      v36 = v68;
      v37 = v65;
      (*(v68 + 104))(v65, *MEMORY[0x277CDF3C0], v31);
      v38 = sub_24AAB3CD4();
      v39 = *(v36 + 8);
      v39(v37, v31);
      v39(v35, v31);
      v40 = v66;
      v41 = MEMORY[0x277CE13B8];
      if ((v38 & 1) == 0)
      {
        v41 = MEMORY[0x277CE13B0];
      }

      v42 = v63;
      v43 = v67;
      (*(v66 + 104))(v63, *v41, v67);
      v44 = v62;
      (*(v40 + 32))(v62 + *(v70 + 36), v42, v43);
      *v44 = v34;
      v45 = &qword_27EF85DA8;
      v46 = &qword_24AAB8C18;
      v47 = v54;
      sub_24AA1A25C(v44, v54, &qword_27EF85DA8, &qword_24AAB8C18);
      sub_24AA1695C(v47, v60, &qword_27EF85DA8, &qword_24AAB8C18);
      swift_storeEnumTagMultiPayload();
      sub_24AA16A68(&qword_27EF860C8, &qword_27EF860B0, &qword_24AAB9198, MEMORY[0x277CDF3A0]);
      sub_24AA5F184();
      v48 = v58;
      sub_24AAB42B4();
      v49 = v47;
      goto LABEL_10;
    }
  }

  else
  {

    sub_24AAB5134();
    v50 = sub_24AAB44B4();
    sub_24AAB3A54();

    sub_24AAB4084();
    swift_getAtKeyPath();
    v51 = sub_24AA630E4(v30, 0);
    (*(v61 + 8))(v20, v53, v51);
    v31 = v28;
    v32 = v55;
    if (v73 != 1)
    {
      goto LABEL_5;
    }
  }

  sub_24AAB2D44();
  v52 = v60;
  *(v32 + *(v59 + 56)) = 256;
  v45 = &qword_27EF860B0;
  v46 = &qword_24AAB9198;
  sub_24AA1695C(v32, v52, &qword_27EF860B0, &qword_24AAB9198);
  swift_storeEnumTagMultiPayload();
  sub_24AA16A68(&qword_27EF860C8, &qword_27EF860B0, &qword_24AAB9198, MEMORY[0x277CDF3A0]);
  sub_24AA5F184();
  v48 = v58;
  sub_24AAB42B4();
  v49 = v32;
LABEL_10:
  sub_24AA169C4(v49, v45, v46);
  sub_24AA1695C(v48, v56, &qword_27EF860B8, &qword_24AAB91A0);
  swift_storeEnumTagMultiPayload();
  sub_24AA63B30();
  sub_24AAB42B4();
  return sub_24AA169C4(v48, &qword_27EF860B8, &qword_24AAB91A0);
}

uint64_t sub_24AA61508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24AA63450(a1, a2, a3);
  sub_24AAB40A4();
  return v4;
}

void *sub_24AA61544@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_24AA63450(a2, a3, a4);
  result = sub_24AAB40A4();
  *a1 = v6;
  return result;
}

uint64_t sub_24AA615F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v142 = a1;
  v143 = a3;
  v4 = *(a2 + 24);
  v117 = *(a2 + 16);
  v118 = v4;
  sub_24AAB3E04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF852F0, &unk_24AAB8FA0);
  sub_24AAB3EE4();
  v5 = sub_24AAB5274();
  v140 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v139 = v99 - v6;
  v138 = sub_24AAB4094();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85258, &qword_24AAB6C00) - 8;
  MEMORY[0x28223BE20](v102);
  v100 = v99 - v8;
  *&v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86028, &qword_24AAB8FB0) - 8;
  MEMORY[0x28223BE20](v107);
  v103 = v99 - v9;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86030, &qword_24AAB8FB8) - 8;
  MEMORY[0x28223BE20](v108);
  v104 = v99 - v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86038, &qword_24AAB8FC0) - 8;
  MEMORY[0x28223BE20](v105);
  v101 = v99 - v11;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86040, &qword_24AAB8FC8);
  MEMORY[0x28223BE20](v112);
  v114 = v99 - v12;
  sub_24AAB3D14();
  v13 = sub_24AAB3EE4();
  v125 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v110 = v99 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84E48, &qword_24AAB8FD0);
  v15 = sub_24AAB3EE4();
  v128 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v144 = v99 - v16;
  v17 = sub_24AAB3EE4();
  v132 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v129 = v99 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86048, &qword_24AAB8FD8);
  v19 = sub_24AAB3EE4();
  v133 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v131 = v99 - v20;
  WitnessTable = swift_getWitnessTable();
  v22 = sub_24AA16A68(&qword_27EF852E8, &qword_27EF852F0, &unk_24AAB8FA0, MEMORY[0x277CE0740]);
  v158 = WitnessTable;
  v159 = v22;
  v157 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v141 = v5;
  v123 = v23;
  sub_24AAB3F34();
  v24 = sub_24AAB3EE4();
  v124 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v122 = v99 - v25;
  v26 = sub_24AA62D14();
  v99[0] = v26;
  v27 = swift_getWitnessTable();
  v155 = v26;
  v156 = v27;
  v126 = v13;
  v28 = swift_getWitnessTable();
  v29 = sub_24AA16A68(&qword_27EF84E40, &qword_27EF84E48, &qword_24AAB8FD0, MEMORY[0x277CE08A0]);
  v99[1] = v28;
  v153 = v28;
  v154 = v29;
  v130 = v15;
  v106 = swift_getWitnessTable();
  v151 = v106;
  v152 = MEMORY[0x277CDF900];
  v134 = v17;
  v30 = swift_getWitnessTable();
  v31 = sub_24AA16A68(&qword_27EF86070, &qword_27EF86048, &qword_24AAB8FD8, MEMORY[0x277CE01A0]);
  v109 = v30;
  v149 = v30;
  v150 = v31;
  v135 = v19;
  v32 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v111 = v32;
  v147 = v32;
  v148 = v33;
  v34 = swift_getWitnessTable();
  v127 = v24;
  *&v160 = v24;
  *(&v160 + 1) = v34;
  v116 = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v119 = *(OpaqueTypeMetadata2 - 8);
  v35 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v113 = v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v115 = v99 - v37;
  v38 = v100;
  sub_24AAB43B4();
  v39 = v121;
  v40 = (v121 + *(a2 + 40));
  v41 = v40[1];
  *(v38 + *(v102 + 44)) = v41;

  sub_24AAB4D44();
  v42 = v39;
  sub_24AAB3D54();
  v43 = v103;
  sub_24AA1A25C(v38, v103, &qword_27EF85258, &qword_24AAB6C00);
  v44 = (v43 + *(v107 + 44));
  v45 = v161;
  v46 = v162;
  *v44 = v160;
  v44[1] = v45;
  v44[2] = v46;
  v47 = (v42 + *(a2 + 52));
  v48 = v47[1];
  v107 = *v47;
  v102 = v48;
  LOBYTE(v24) = sub_24AAB44D4();
  v49 = v43;
  v50 = v104;
  sub_24AA1A25C(v49, v104, &qword_27EF86028, &qword_24AAB8FB0);
  v51 = v50 + *(v108 + 44);
  *v51 = v24;
  *(v51 + 24) = v102;
  *(v51 + 8) = v107;
  *(v51 + 40) = 0;
  v52 = *v40;
  v53 = v101;
  v54 = &v101[*(v105 + 44)];
  *v54 = *v40;
  v55 = type metadata accessor for ControlPlatter(0);
  v56 = *(v55 + 20);
  *&v54[v56] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  v57 = &v54[*(v55 + 24)];
  *v57 = swift_getKeyPath();
  v57[8] = 0;
  swift_retain_n();
  v58 = sub_24AAB4D44();
  v60 = v59;
  v61 = &v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85298, &unk_24AAB8FE0) + 36)];
  *v61 = v58;
  v61[1] = v60;
  sub_24AA1A25C(v50, v53, &qword_27EF86030, &qword_24AAB8FB8);
  LOBYTE(v32) = sub_24AAB43C4();
  v62 = sub_24AAB4D44();
  v64 = v63;
  v65 = v114;
  sub_24AA1A25C(v53, v114, &qword_27EF86038, &qword_24AAB8FC0);
  v66 = v65 + *(v112 + 36);
  *v66 = v32 & 1;
  *(v66 + 8) = v62;
  *(v66 + 16) = v64;
  v142 = a2;
  v67 = v110;
  sub_24AAB4994();
  sub_24AA169C4(v65, &qword_27EF86040, &qword_24AAB8FC8);
  v68 = *v42;
  v69 = *(v42 + 8);
  if (v69 == 1)
  {
    v70 = v138;
    v71 = v137;
  }

  else
  {

    sub_24AAB5134();
    v72 = sub_24AAB44B4();
    sub_24AAB3A54();

    v73 = v136;
    sub_24AAB4084();
    swift_getAtKeyPath();
    v74 = sub_24AA630E4(v68, 0);
    v71 = v137;
    v70 = v138;
    (*(v137 + 8))(v73, v138, v74);
  }

  v75 = v126;
  sub_24AAB4934();
  (*(v125 + 8))(v67, v75);
  if (!v69)
  {

    sub_24AAB5134();
    v76 = v71;
    v77 = sub_24AAB44B4();
    sub_24AAB3A54();

    v78 = v136;
    sub_24AAB4084();
    swift_getAtKeyPath();
    v79 = sub_24AA630E4(v68, 0);
    (*(v76 + 8))(v78, v70, v79);
  }

  v80 = v129;
  v81 = v130;
  v82 = v144;
  sub_24AAB4904();
  v83 = (*(v128 + 8))(v82, v81);
  v145 = v52;
  v146 = v41;
  sub_24AA630F0(v83, v84, v85);

  v86 = v131;
  v87 = v134;
  sub_24AAB4984();

  (*(v132 + 8))(v80, v87);
  v88 = v139;
  sub_24AA62658(v142, v139);
  sub_24AAB4D44();
  v89 = v122;
  v90 = v135;
  v91 = v141;
  sub_24AAB4924();
  (*(v140 + 8))(v88, v91);
  (*(v133 + 8))(v86, v90);
  v92 = v113;
  v93 = v127;
  v94 = v116;
  sub_24AAB4794();
  (*(v124 + 8))(v89, v93);
  v145 = v93;
  v146 = v94;
  swift_getOpaqueTypeConformance2();
  v95 = v115;
  v96 = OpaqueTypeMetadata2;
  sub_24AA8373C();
  v97 = *(v119 + 8);
  v97(v92, v96);
  sub_24AA8373C();
  return (v97)(v95, v96);
}

uint64_t sub_24AA62658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v2 = *(a1 + 16);
  v40[1] = *(a1 + 24);
  v40[2] = v2;
  v3 = sub_24AAB3E04();
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v41 = v40 - v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF852F0, &unk_24AAB8FA0);
  v49 = v3;
  v5 = sub_24AAB3EE4();
  v46 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v44 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = v40 - v8;
  v9 = sub_24AAB41A4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v40 - v14;
  v45 = sub_24AAB5274();
  v48 = *(v45 - 8);
  v16 = MEMORY[0x28223BE20](v45);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v47 = v40 - v19;
  sub_24AA63250(&qword_27EF84DF0, &qword_24AAB6650, MEMORY[0x277CE0228], v15);
  (*(v10 + 104))(v13, *MEMORY[0x277CE0220], v9);
  v20 = sub_24AAB3CD4();
  v21 = *(v10 + 8);
  v21(v13, v9);
  v21(v15, v9);
  if (v20)
  {
    v22 = v41;
    sub_24AAB4B44();
    v23 = [objc_opt_self() secondaryLabelColor];
    v53 = sub_24AAB49C4();
    v24 = v49;
    WitnessTable = swift_getWitnessTable();
    v26 = v44;
    sub_24AAB4844();

    (*(v42 + 8))(v22, v24);
    v27 = sub_24AA16A68(&qword_27EF852E8, &qword_27EF852F0, &unk_24AAB8FA0, MEMORY[0x277CE0740]);
    v51 = WitnessTable;
    v52 = v27;
    swift_getWitnessTable();
    v28 = v43;
    sub_24AA8373C();
    v29 = v46;
    v30 = *(v46 + 8);
    v30(v26, v5);
    sub_24AA8373C();
    v30(v28, v5);
    (*(v29 + 32))(v18, v26, v5);
    (*(v29 + 56))(v18, 0, 1, v5);
  }

  else
  {
    (*(v46 + 56))(v18, 1, 1, v5);
    v31 = swift_getWitnessTable();
    v32 = sub_24AA16A68(&qword_27EF852E8, &qword_27EF852F0, &unk_24AAB8FA0, MEMORY[0x277CE0740]);
    v57 = v31;
    v58 = v32;
    swift_getWitnessTable();
  }

  v34 = v47;
  v33 = v48;
  v35 = v45;
  (*(v48 + 16))(v47, v18, v45);
  v36 = *(v33 + 8);
  v36(v18, v35);
  v37 = swift_getWitnessTable();
  v38 = sub_24AA16A68(&qword_27EF852E8, &qword_27EF852F0, &unk_24AAB8FA0, MEMORY[0x277CE0740]);
  v55 = v37;
  v56 = v38;
  v54 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24AA8373C();
  return (v36)(v34, v35);
}

unint64_t sub_24AA62D14()
{
  result = qword_27EF86050;
  if (!qword_27EF86050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86040, &qword_24AAB8FC8);
    sub_24AA62DCC();
    sub_24AA16A68(&qword_27EF85300, &qword_27EF85308, &qword_24AAB6CB0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86050);
  }

  return result;
}

unint64_t sub_24AA62DCC()
{
  result = qword_27EF86058;
  if (!qword_27EF86058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86038, &qword_24AAB8FC0);
    sub_24AA62E84();
    sub_24AA16A68(&qword_27EF852F8, &qword_27EF85298, &unk_24AAB8FE0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86058);
  }

  return result;
}

unint64_t sub_24AA62E84()
{
  result = qword_27EF86060;
  if (!qword_27EF86060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86030, &qword_24AAB8FB8);
    sub_24AA62F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86060);
  }

  return result;
}

unint64_t sub_24AA62F10()
{
  result = qword_27EF86068;
  if (!qword_27EF86068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86028, &qword_24AAB8FB0);
    sub_24AA19F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86068);
  }

  return result;
}

unint64_t sub_24AA62F9C()
{
  result = qword_27EF852E0;
  if (!qword_27EF852E0)
  {
    sub_24AAB43A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF852E0);
  }

  return result;
}

uint64_t type metadata accessor for ControlPlatter(uint64_t a1)
{
  result = qword_27EF86090;
  if (!qword_27EF86090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_24AA63048@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_24AA63450(a2, a3, a4);
  result = sub_24AAB40A4();
  *a1 = v6;
  return result;
}

double sub_24AA630E4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_24AA630F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF86078;
  if (!qword_27EF86078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86078);
  }

  return result;
}

void sub_24AA63144(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    sub_24AAB4A44();
    v3 = sub_24AAB4A54();

    sub_24AAB3D94();
    sub_24AAB3D84();
    sub_24AAB4D84();
    sub_24AAB4D74();

    sub_24AAB3DB4();

    v4 = sub_24AAB3D64();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_24AA63250@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_24AAB4094();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_24AA1695C(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_24AAB5134();
    v19 = sub_24AAB44B4();
    sub_24AAB3A54();

    sub_24AAB4084();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

unint64_t sub_24AA63450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF86080;
  if (!qword_27EF86080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86080);
  }

  return result;
}

uint64_t sub_24AA63508(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86088, qword_24AABD4A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_24AA635E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86088, qword_24AABD4A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24AA63694(uint64_t a1)
{
  sub_24AA63758(319, &qword_27EF860A0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24AA60CA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24AA63758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24AA637BC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86040, &qword_24AAB8FC8);
  sub_24AAB3D14();
  sub_24AAB3EE4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84E48, &qword_24AAB8FD0);
  sub_24AAB3EE4();
  sub_24AAB3EE4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86048, &qword_24AAB8FD8);
  sub_24AAB3EE4();
  sub_24AAB3E04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF852F0, &unk_24AAB8FA0);
  sub_24AAB3EE4();
  sub_24AAB5274();
  swift_getWitnessTable();
  sub_24AA16A68(&qword_27EF852E8, &qword_27EF852F0, &unk_24AAB8FA0, MEMORY[0x277CE0740]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24AAB3F34();
  sub_24AAB3EE4();
  sub_24AA62D14();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24AA16A68(&qword_27EF84E40, &qword_27EF84E48, &qword_24AAB8FD0, MEMORY[0x277CE08A0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24AA16A68(&qword_27EF86070, &qword_27EF86048, &qword_24AAB8FD8, MEMORY[0x277CE01A0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24AA63B30()
{
  result = qword_27EF860D0;
  if (!qword_27EF860D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF860B8, &qword_24AAB91A0);
    sub_24AA16A68(&qword_27EF860C8, &qword_27EF860B0, &qword_24AAB9198, MEMORY[0x277CDF3A0]);
    sub_24AA5F184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF860D0);
  }

  return result;
}

unint64_t sub_24AA63BEC()
{
  result = qword_27EF860D8;
  if (!qword_27EF860D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF860E0, &unk_24AAB91B0);
    sub_24AA5F254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF860D8);
  }

  return result;
}

unint64_t sub_24AA63C74()
{
  result = qword_27EF860E8;
  if (!qword_27EF860E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF860F0, &qword_24AAB91C8);
    sub_24AA63B30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF860E8);
  }

  return result;
}

void sub_24AA63D00(char *a3@<X8>)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = sub_24AAB35A4();
  v5 = sub_24AAB3574();
  if ([v4 isFaceTimeProvider])
  {
    swift_unknownObjectRelease();

    if (v5)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v7 = [v4 isTelephonyProvider];
    swift_unknownObjectRelease();

    if (v7)
    {
      v6 = 0;
    }

    else
    {
      v6 = 3;
    }
  }

  *a3 = v6;
}

uint64_t CallAvatarView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = sub_24AAB4404();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF860F8, &qword_24AAB91D0);
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = *(a1 + 24);
  v31 = *(a1 + 16);
  v32 = v9;
  sub_24AAB3F34();
  v10 = sub_24AAB3EE4();
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = OpaqueTypeConformance2;
  WitnessTable = swift_getWitnessTable();
  v45 = OpaqueTypeConformance2;
  v46 = WitnessTable;
  v15 = swift_getWitnessTable();
  v43 = v10;
  v44 = v15;
  v30 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  v18 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  v23 = v2;
  v24 = *(v2 + 16);
  v28 = *v23;
  sub_24AAB2F04();
  sub_24AAB4D24();
  v39 = v31;
  v40 = v32;
  v41 = v28;
  v42 = v24;
  sub_24AAB4914();
  (*(v34 + 8))(v8, v6);
  v25 = v35;
  sub_24AAB43F4();
  sub_24AAB4894();
  (*(v36 + 8))(v25, v37);
  (*(v33 + 8))(v12, v10);
  v43 = v10;
  v44 = v15;
  swift_getOpaqueTypeConformance2();
  sub_24AA8373C();
  v26 = *(v17 + 8);
  v26(v20, OpaqueTypeMetadata2);
  sub_24AA8373C();
  return (v26)(v22, OpaqueTypeMetadata2);
}

uint64_t sub_24AA64228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v16 - v11;
  v13(v10);
  sub_24AA8373C();
  v14 = *(v6 + 8);
  v14(v9, a4);
  sub_24AA8373C();
  return (v14)(v12, a4);
}

uint64_t CallBadgeView.Badge.hashValue.getter()
{
  v1 = *v0;
  sub_24AAB54F4();
  MEMORY[0x24C225D50](v1);
  return sub_24AAB5524();
}

uint64_t CallBadgeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v2 = sub_24AAB4AD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86100, &qword_24AAB91D8);
  MEMORY[0x28223BE20](v68);
  v7 = &v61 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86108, &qword_24AAB91E0);
  MEMORY[0x28223BE20](v66);
  v9 = &v61 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86110, &qword_24AAB91E8);
  MEMORY[0x28223BE20](v62);
  v11 = &v61 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86118, &qword_24AAB91F0);
  MEMORY[0x28223BE20](v67);
  v13 = &v61 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86120, &qword_24AAB91F8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v61 - v15;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86128, &qword_24AAB9200);
  MEMORY[0x28223BE20](v61);
  v18 = &v61 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86130, &qword_24AAB9208);
  MEMORY[0x28223BE20](v19);
  v65 = &v61 - v22;
  v23 = *v1;
  if (v23 <= 1)
  {
    v63 = v21;
    v64 = v20;
    if (v23)
    {
      if (qword_27EF84C50 != -1)
      {
        swift_once();
      }

      v50 = qword_27EF919A8;
      sub_24AAB4B24();
      (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
      v51 = sub_24AAB4B14();

      (*(v3 + 8))(v5, v2);
      sub_24AAB4D44();
      sub_24AAB3D54();
      v79 = v81;
      v78 = v83;
      *&v70 = v51;
      *(&v70 + 1) = v80;
      LOBYTE(v71) = v81;
      *(&v71 + 1) = v82;
      LOBYTE(v72[0]) = v83;
      *(v72 + 8) = v84;
      __asm { FMOV            V0.2D, #4.0 }

      *(&v72[1] + 8) = _Q0;
      sub_24AAB4164();
      v53 = sub_24AAB4754();
      v55 = v54;
      LOBYTE(v51) = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86138, &qword_24AAB9210);
      sub_24AA655E0();
      sub_24AAB4854();
      sub_24AA158E8(v53, v55, v51 & 1);

      v76 = v72[1];
      *&v77 = *&v72[2];
      v74 = v71;
      v75 = v72[0];
      v73 = v70;
      sub_24AA169C4(&v73, &qword_27EF86138, &qword_24AAB9210);
      v38 = &qword_27EF86100;
      v39 = &qword_24AAB91D8;
      sub_24AA1695C(v7, v11, &qword_27EF86100, &qword_24AAB91D8);
      swift_storeEnumTagMultiPayload();
      sub_24AA65720();
      sub_24AA659B0(&qword_27EF86198, &qword_27EF86100, &qword_24AAB91D8, sub_24AA655E0);
      sub_24AAB42B4();
      sub_24AA1695C(v13, v9, &qword_27EF86118, &qword_24AAB91F0);
      swift_storeEnumTagMultiPayload();
      sub_24AA656F0();
      v40 = v65;
      sub_24AAB42B4();
      sub_24AA169C4(v13, &qword_27EF86118, &qword_24AAB91F0);
      v41 = v7;
    }

    else
    {
      sub_24AAB4AC4();
      sub_24AAB41D4();
      v24 = sub_24AAB41E4();
      (*(*(v24 - 8) + 56))(v16, 0, 1, v24);
      v25 = sub_24AAB4B04();

      sub_24AA169C4(v16, &qword_27EF86120, &qword_24AAB91F8);
      v26 = sub_24AAB4A14();
      sub_24AAB4D44();
      sub_24AAB3D54();
      v79 = v81;
      v78 = v83;
      *&v70 = v25;
      *(&v70 + 1) = v26;
      *&v71 = v80;
      BYTE8(v71) = v81;
      *&v72[0] = v82;
      BYTE8(v72[0]) = v83;
      __asm { FMOV            V1.2D, #2.0 }

      v72[1] = v84;
      v72[2] = _Q1;
      sub_24AAB4164();
      if (qword_27EF84C50 != -1)
      {
        swift_once();
      }

      v32 = qword_27EF919A8;
      v33 = sub_24AAB4754();
      v35 = v34;
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86170, &qword_24AAB9220);
      sub_24AA65750();
      sub_24AAB4854();
      sub_24AA158E8(v33, v35, v37 & 1);

      v76 = v72[1];
      v77 = v72[2];
      v74 = v71;
      v75 = v72[0];
      v73 = v70;
      sub_24AA169C4(&v73, &qword_27EF86170, &qword_24AAB9220);
      v38 = &qword_27EF86128;
      v39 = &qword_24AAB9200;
      sub_24AA1695C(v18, v11, &qword_27EF86128, &qword_24AAB9200);
      swift_storeEnumTagMultiPayload();
      sub_24AA65720();
      sub_24AA659B0(&qword_27EF86198, &qword_27EF86100, &qword_24AAB91D8, sub_24AA655E0);
      sub_24AAB42B4();
      sub_24AA1695C(v13, v9, &qword_27EF86118, &qword_24AAB91F0);
      swift_storeEnumTagMultiPayload();
      sub_24AA656F0();
      v40 = v65;
      sub_24AAB42B4();
      sub_24AA169C4(v13, &qword_27EF86118, &qword_24AAB91F0);
      v41 = v18;
    }

    v48 = v38;
    v49 = v39;
LABEL_14:
    sub_24AA169C4(v41, v48, v49);
    v57 = v69;
    sub_24AA65A34(v40, v69);
    return (*(v63 + 56))(v57, 0, 1, v64);
  }

  if (v23 == 2)
  {
    v63 = v21;
    v64 = v20;
    if (qword_27EF84C50 != -1)
    {
      swift_once();
    }

    v42 = qword_27EF919A8;
    sub_24AAB4B24();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v43 = sub_24AAB4B14();

    (*(v3 + 8))(v5, v2);
    sub_24AAB4D44();
    sub_24AAB3D54();
    v79 = v81;
    v78 = v83;
    *&v70 = v43;
    *(&v70 + 1) = v80;
    LOBYTE(v71) = v81;
    *(&v71 + 1) = v82;
    LOBYTE(v72[0]) = v83;
    *(v72 + 8) = v84;
    *&v72[2] = 0;
    *(&v72[1] + 1) = 0;
    sub_24AAB4164();
    v44 = sub_24AAB4754();
    v46 = v45;
    LOBYTE(v43) = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86138, &qword_24AAB9210);
    sub_24AA655E0();
    sub_24AAB4854();
    sub_24AA158E8(v44, v46, v43 & 1);

    v76 = v72[1];
    *&v77 = *&v72[2];
    v74 = v71;
    v75 = v72[0];
    v73 = v70;
    sub_24AA169C4(&v73, &qword_27EF86138, &qword_24AAB9210);
    sub_24AA1695C(v7, v9, &qword_27EF86100, &qword_24AAB91D8);
    swift_storeEnumTagMultiPayload();
    sub_24AA656F0();
    sub_24AA659B0(&qword_27EF86198, &qword_27EF86100, &qword_24AAB91D8, sub_24AA655E0);
    v40 = v65;
    sub_24AAB42B4();
    v41 = v7;
    v48 = &qword_27EF86100;
    v49 = &qword_24AAB91D8;
    goto LABEL_14;
  }

  v59 = *(v21 + 56);
  v60 = v69;

  return v59(v60, 1, 1);
}

void AvatarView.makeUIViewController(context:)()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CBDBF0]) init];
  sub_24AA65AA4();
  v3 = sub_24AAB5014();
  [v2 setContacts_];

  v4 = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v5 = [v4 callerIDSyncMacEnabled];

  if (v5)
  {
    if (v1 >> 62)
    {
      if (sub_24AAB52F4() != 1 || !sub_24AAB52F4())
      {
        return;
      }
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      return;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ([*(v1 + 32) contactType] == 1)
      {
        v6 = [v2 view];
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          [v7 setStyle_];
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void AvatarView.updateUIViewController(_:context:)(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    sub_24AA65AA4();
    v4 = a1;
    v5 = sub_24AAB5014();
    [v3 setContacts_];
  }
}

void sub_24AA65438(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    sub_24AA65AA4();
    v4 = a1;
    v5 = sub_24AAB5014();
    [v3 setContacts_];
  }
}

uint64_t sub_24AA654F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA662A4(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24AA65554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA662A4(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24AA655B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24AA662A4(a1, a2, a3);
  sub_24AAB4474();
  __break(1u);
}

unint64_t sub_24AA655E0()
{
  result = qword_27EF86140;
  if (!qword_27EF86140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86138, &qword_24AAB9210);
    sub_24AA6566C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86140);
  }

  return result;
}

unint64_t sub_24AA6566C()
{
  result = qword_27EF86148;
  if (!qword_27EF86148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86150, &qword_24AAB9218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86148);
  }

  return result;
}

unint64_t sub_24AA65750()
{
  result = qword_27EF86168;
  if (!qword_27EF86168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86170, &qword_24AAB9220);
    sub_24AA657DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86168);
  }

  return result;
}

unint64_t sub_24AA657DC()
{
  result = qword_27EF86178;
  if (!qword_27EF86178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86180, &qword_24AAB9228);
    sub_24AA65868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86178);
  }

  return result;
}

unint64_t sub_24AA65868()
{
  result = qword_27EF86188;
  if (!qword_27EF86188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86190, &unk_24AAB9230);
    sub_24AA658F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86188);
  }

  return result;
}

unint64_t sub_24AA658F4()
{
  result = qword_27EF852E8;
  if (!qword_27EF852E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF852F0, &unk_24AAB8FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF852E8);
  }

  return result;
}

unint64_t sub_24AA65958()
{
  result = qword_27EF84FE8;
  if (!qword_27EF84FE8)
  {
    sub_24AAB44A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84FE8);
  }

  return result;
}

uint64_t sub_24AA659B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24AA65958();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AA65A34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86130, &qword_24AAB9208);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AA65AA4()
{
  result = qword_27EF861A0;
  if (!qword_27EF861A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF861A0);
  }

  return result;
}

unint64_t sub_24AA65B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF861A8;
  if (!qword_27EF861A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF861A8);
  }

  return result;
}

unint64_t sub_24AA65BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF861B0[0];
  if (!qword_27EF861B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF861B0);
  }

  return result;
}

uint64_t sub_24AA65C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24AA65C5C(uint64_t *a1, int a2)
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

uint64_t sub_24AA65CA4(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CallBadgeView(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for CallBadgeView(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CallBadgeView.Badge(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CallBadgeView.Badge(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24AA65FB8(uint64_t *a1, int a2)
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

uint64_t sub_24AA66000(uint64_t result, int a2, int a3)
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

uint64_t sub_24AA6604C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF860F8, &qword_24AAB91D0);
  sub_24AAB3F34();
  sub_24AAB3EE4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24AA66144()
{
  result = qword_27EF86238;
  if (!qword_27EF86238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86240, qword_24AAB94F8);
    sub_24AA661F4(&qword_27EF86248, &qword_27EF86130, &qword_24AAB9208, sub_24AA656F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86238);
  }

  return result;
}

uint64_t sub_24AA661F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24AA659B0(&qword_27EF86198, &qword_27EF86100, &qword_24AAB91D8, sub_24AA655E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24AA662A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF86250;
  if (!qword_27EF86250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86250);
  }

  return result;
}

id sub_24AA66320()
{
  v1 = *v0;
  v2 = objc_allocWithZone(type metadata accessor for AudioPowerSpectrumView());
  return sub_24AA66794(v1);
}

uint64_t sub_24AA66354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA68880(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24AA663B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA68880(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24AA6641C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24AA68880(a1, a2, a3);
  sub_24AAB4284();
  __break(1u);
}

void sub_24AA66444()
{
  sub_24AAB5164();
  dword_27EF91998 = v0;
  *algn_27EF9199C = v1;
  dword_27EF919A0 = v2;
}

id sub_24AA66490()
{
  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___backdropLayer;
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___backdropLayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___backdropLayer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CD9E08]) init];
    [v4 setScale_];
    v5 = v4;
    v6 = sub_24AAB4EE4();
    [v5 setCompositingFilter_];

    LODWORD(v7) = 1057803469;
    [v5 setOpacity_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

char *sub_24AA66570()
{
  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___localAudioView;
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___localAudioView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___localAudioView);
  }

  else
  {
    v4 = sub_24AA665D0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_24AA665D0()
{
  type metadata accessor for DeviceWaveformView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [objc_opt_self() orangeColor];
  v2 = *&v0[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_barColor];
  *&v0[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_barColor] = v1;
  v3 = v1;

  v4 = v0;
  [v4 setNeedsLayout];

  v5 = [v4 layer];
  CATransform3DMakeScale(&v7, -1.0, 1.0, 1.0);
  [v5 setTransform_];

  return v4;
}

char *sub_24AA666C0()
{
  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___remoteAudioView;
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___remoteAudioView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___remoteAudioView);
  }

  else
  {
    type metadata accessor for DeviceWaveformView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = [objc_opt_self() systemGreenColor];
    v6 = *&v4[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_barColor];
    *&v4[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_barColor] = v5;
    v7 = v5;

    [v4 setNeedsLayout];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_24AA66794(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView_cancellables] = MEMORY[0x277D84FA0];
  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView_animateUpdatesPassthrough;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF862A8, &unk_24AAB9668);
  swift_allocObject();
  *&v1[v4] = sub_24AAB3B64();
  *&v1[OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___backdropLayer] = 0;
  *&v1[OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___localAudioView] = 0;
  *&v1[OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___remoteAudioView] = 0;
  *&v1[OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView_viewModel] = a1;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 clearColor];
  [v8 setBackgroundColor_];

  v10 = sub_24AA666C0();
  [v8 addSubview_];

  v11 = sub_24AA66570();
  [v8 addSubview_];

  v12 = [v8 layer];
  v13 = sub_24AA66490();
  [v12 addSublayer_];

  sub_24AA66968();
  return v8;
}

double sub_24AA66968()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BE0, &qword_24AAB8710);
  MEMORY[0x28223BE20](v1 - 8);
  v36 = v28 - v2;
  v3 = sub_24AAB5254();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF862B0, &qword_24AAB9678);
  v6 = *(v5 - 8);
  v39 = v5;
  v40 = v6;
  MEMORY[0x28223BE20](v5);
  v35 = v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF862B8, &qword_24AAB9680);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF862C0, &qword_24AAB9688);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - v14;
  sub_24AA693E8();
  swift_beginAccess();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF862C8, &unk_24AAB9690);
  sub_24AAB3BA4();
  swift_endAccess();
  v31 = sub_24AA16A68(&qword_27EF862D0, &qword_27EF862B8, &qword_24AAB9680, MEMORY[0x277CBCEC8]);
  v30 = sub_24AA68158();
  sub_24AAB3C34();
  v16 = *(v9 + 8);
  v28[1] = v9 + 8;
  v29 = v16;
  v16(v11, v8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_24AA16A68(&qword_27EF862E0, &qword_27EF862C0, &qword_24AAB9688, MEMORY[0x277CBCBE0]);
  sub_24AAB3C44();

  v17 = *(v13 + 8);
  v28[0] = v13 + 8;
  v17(v15, v12);
  v18 = OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView_cancellables;
  swift_beginAccess();
  sub_24AAB3B14();
  swift_endAccess();

  swift_beginAccess();
  sub_24AAB3BA4();
  swift_endAccess();
  sub_24AAB3C34();
  v29(v11, v8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_24AAB3C44();

  v17(v15, v12);
  v33 = v18;
  swift_beginAccess();
  sub_24AAB3B14();
  swift_endAccess();

  v42 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView_animateUpdatesPassthrough);

  v19 = v34;
  sub_24AAB5244();
  v20 = [objc_opt_self() mainRunLoop];
  v41 = v20;
  v21 = sub_24AAB5234();
  v22 = v36;
  (*(*(v21 - 8) + 56))(v36, 1, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF862A8, &unk_24AAB9668);
  sub_24AA68228();
  sub_24AA16A68(&qword_27EF862F0, &qword_27EF862A8, &unk_24AAB9668, MEMORY[0x277CBCE20]);
  sub_24AA68274();
  v23 = v35;
  sub_24AAB3C24();
  sub_24AA682CC(v22);

  (*(v37 + 8))(v19, v38);

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_24AA68334;
  *(v25 + 24) = v24;
  sub_24AA16A68(&qword_27EF86300, &qword_27EF862B0, &qword_24AAB9678, MEMORY[0x277CBCCF8]);
  v26 = v39;
  sub_24AAB3C44();

  (*(v40 + 8))(v23, v26);
  swift_beginAccess();
  sub_24AAB3B14();
  swift_endAccess();

  return result;
}

double sub_24AA6720C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF862A8, &unk_24AAB9668);
    sub_24AA16A68(&qword_27EF86308, &qword_27EF862A8, &unk_24AAB9668, MEMORY[0x277CBCE18]);
    sub_24AAB3B84();
  }

  return result;
}

void sub_24AA672DC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_24AA67330();
  }
}

void sub_24AA67330()
{
  v1 = sub_24AA666C0();
  v2 = *&v1[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_power];

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___remoteAudioView;
  v4 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___remoteAudioView);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  sub_24AAB3BB4();

  *&v5[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_power] = v23[0];

  [v5 setNeedsLayout];

  [*(v0 + v3) setNeedsLayout];
  v6 = *(*(v0 + v3) + OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_power);

  sub_24AA68600(v2, v6);

  v7 = sub_24AA66570();
  v8 = *&v7[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_power];

  v9 = OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___localAudioView;
  v10 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___localAudioView);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  sub_24AAB3BB4();

  *&v11[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_power] = v23[0];

  [v11 setNeedsLayout];

  [*(v0 + v9) setNeedsLayout];
  v12 = *(*(v0 + v9) + OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_power);

  sub_24AA68600(v8, v12);

  if (qword_27EF84C48 != -1)
  {
    swift_once();
  }

  sub_24AAB5164();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v14;
  *(v21 + 28) = v16;
  *(v21 + 32) = v18;
  v23[4] = sub_24AA68800;
  v23[5] = v21;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_24AA67840;
  v23[3] = &block_descriptor_2;
  v22 = _Block_copy(v23);

  [v19 animateWithDuration:0 delay:v22 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.0];
  _Block_release(v22);
}