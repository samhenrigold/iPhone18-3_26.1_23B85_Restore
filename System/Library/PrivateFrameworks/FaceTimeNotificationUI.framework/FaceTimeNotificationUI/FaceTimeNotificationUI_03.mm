void sub_24AA6769C(uint64_t a1, float a2, float a3, float a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_24AA68860;
    *(v11 + 24) = v10;
    aBlock[4] = sub_24AA68374;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24AA67818;
    aBlock[3] = &block_descriptor_40;
    v12 = _Block_copy(aBlock);
    v13 = v8;

    *&v14 = a2;
    *&v15 = a3;
    *&v16 = a4;
    [v9 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
    _Block_release(v12);
  }
}

double sub_24AA67840(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

id sub_24AA678B4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24AA6799C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_barColor;
  *&v4[v9] = [objc_opt_self() systemGreenColor];
  v10 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_power] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_bandViews] = v10;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for DeviceWaveformView();
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 layer];
  v13 = sub_24AAB4EE4();
  [v12 setCompositingFilter_];

  sub_24AA67E80();
  return v11;
}

uint64_t sub_24AA67B98()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for DeviceWaveformView();
  objc_msgSendSuper2(&v20, sel_layoutSubviews);
  [v0 bounds];
  Width = CGRectGetWidth(v21);
  [v0 bounds];
  Height = CGRectGetHeight(v22);
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_bandViews;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (v4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24AAB52F4())
  {
    v18 = OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_barColor;
    v19 = OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_power;

    if (!i)
    {
      break;
    }

    v6 = 0;
    Width = (Width + -38.75) / 30.0;
    v7 = Height - (Width + Width) - Width;
    Height = Width * 0.5;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C225BD0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v12 = *(v4 + 8 * v6 + 32);
      }

      v13 = v12;
      v14 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v15 = *&v0[v19];
      v16 = 0.0;
      if (v6 < *(v15 + 16))
      {
        v16 = *(v15 + 4 * v6 + 32);
      }

      v8 = Width + v7 * v16;
      [v0 bounds];
      v9 = CGRectGetHeight(v23) * 0.5;
      [v13 setBackgroundColor_];
      [v13 setBounds_];
      v10 = [v13 layer];
      [v10 setPosition_];

      v11 = [v13 layer];
      [v11 setCornerRadius_];

      ++v6;
      if (v14 == i)
      {
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_24AA67E80()
{
  v1 = v0;
  v2 = *MEMORY[0x277CDA138];
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_barColor;
  v4 = 30;
  v5 = OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_bandViews;
  do
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v7 = [v6 layer];
    [v7 setAnchorPoint_];

    [v6 setBackgroundColor_];
    v8 = [v6 layer];
    [v8 setAllowsEdgeAntialiasing_];

    v9 = [v6 layer];
    [v9 setCornerCurve_];

    [v1 addSubview_];
    swift_beginAccess();
    v10 = v6;
    MEMORY[0x24C225850]();
    if (*((*&v1[v5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24AAB5044();
    }

    sub_24AAB5064();
    swift_endAccess();

    --v4;
  }

  while (v4);
}

id sub_24AA68038()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceWaveformView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24AA68104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF862A0;
  if (!qword_27EF862A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF862A0);
  }

  return result;
}

unint64_t sub_24AA68158()
{
  result = qword_27EF862D8;
  if (!qword_27EF862D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF863D0, qword_24AAB97D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF862D8);
  }

  return result;
}

uint64_t sub_24AA681D4()
{
  MEMORY[0x24C2266E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_24AA68228()
{
  result = qword_27EF862E8;
  if (!qword_27EF862E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF862E8);
  }

  return result;
}

unint64_t sub_24AA68274()
{
  result = qword_27EF862F8;
  if (!qword_27EF862F8)
  {
    sub_24AA68228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF862F8);
  }

  return result;
}

uint64_t sub_24AA682CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BE0, &qword_24AAB8710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AA6833C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24AA683D8(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24AAB3BB4();

  *a4 = v5;
}

uint64_t sub_24AA68490(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return sub_24AAB3BC4();
}

void sub_24AA6852C()
{
  *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView_cancellables) = MEMORY[0x277D84FA0];
  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView_animateUpdatesPassthrough;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF862A8, &unk_24AAB9668);
  swift_allocObject();
  *(v0 + v1) = sub_24AAB3B64();
  *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___backdropLayer) = 0;
  *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___localAudioView) = 0;
  *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___remoteAudioView) = 0;
  sub_24AAB53F4();
  __break(1u);
}

uint64_t sub_24AA68600(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    if (qword_27EF84C48 != -1)
    {
      return swift_once();
    }

    return result;
  }

  if (!v2)
  {
LABEL_23:
    if (qword_27EF84C48 != -1)
    {
      return swift_once();
    }

    return result;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  v5 = 1 - v2;
  v6 = 0.0;
  while (v5 != 1)
  {
    v7 = *v3;
    if (*v4 >= *v3)
    {
      v8 = *v3;
    }

    else
    {
      v8 = *v4;
    }

    if (v7 <= *v4)
    {
      v7 = *v4;
    }

    v9 = v7 - v8;
    if (v9 >= 0.25)
    {
      if (v6 < 0.25)
      {
        v6 = 0.25;
      }
    }

    else if (v9 >= 0.1)
    {
      if (v9 > v6)
      {
        v6 = v9;
      }
    }

    else if (v6 < 0.1)
    {
      v6 = 0.1;
      if (!v5)
      {
        goto LABEL_23;
      }

      goto LABEL_7;
    }

    if (!v5)
    {
      goto LABEL_23;
    }

LABEL_7:
    ++v5;
    ++v4;
    ++v3;
    if (v5 == 1)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return swift_once();
}

uint64_t sub_24AA687C8()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24AA68828()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_24AA68880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF86310;
  if (!qword_27EF86310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86310);
  }

  return result;
}

id sub_24AA688E0()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EF919A8 = result;
  return result;
}

id sub_24AA6896C()
{
  if (qword_27EF84C50 != -1)
  {
    swift_once();
  }

  v1 = qword_27EF919A8;
  qword_27EF919B0 = qword_27EF919A8;
  *algn_27EF919B8 = 0x617A696C61636F4CLL;
  qword_27EF919C0 = 0xEB00000000656C62;

  return v1;
}

uint64_t sub_24AA68A1C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24AAB3BB4();

  return v3;
}

NSObject *sub_24AA68A88(NSObject *a1)
{
  v2 = v1;
  v85 = a1;
  v3 = sub_24AAB3A84();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v73 = (&v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v72 = (&v70 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v71 = (&v70 - v10);
  MEMORY[0x28223BE20](v9);
  v74 = (&v70 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF862C8, &unk_24AAB9690);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v70 - v14;
  v16 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_logger;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_27EF919D8);
  v82 = v4;
  v83 = v3;
  v18 = *(v4 + 16);
  v84 = v16;
  v75 = v18;
  v76 = v4 + 16;
  v18(&v2[v16], v17, v3);
  v19 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_callCenter;
  *&v2[v19] = [objc_opt_self() sharedInstance];
  v77 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_controller;
  *&v2[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_controller] = 0;
  v78 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_telephonyTimer;
  *&v2[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_telephonyTimer] = 0;
  v20 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel__localPowerSpectrum;
  v21 = sub_24AAB5054();
  *(v21 + 16) = 30;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0u;
  *(v21 + 64) = 0u;
  *(v21 + 80) = 0u;
  *(v21 + 96) = 0u;
  *(v21 + 112) = 0u;
  *(v21 + 128) = 0u;
  *(v21 + 144) = 0;
  v88 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF863D0, qword_24AAB97D0);
  sub_24AAB3B94();
  v79 = v20;
  v80 = v13;
  v22 = *(v13 + 32);
  v22(&v2[v20], v15, v12);
  v23 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel__remotePowerSpectrum;
  v24 = sub_24AAB5054();
  *(v24 + 16) = 30;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *(v24 + 64) = 0u;
  *(v24 + 80) = 0u;
  *(v24 + 96) = 0u;
  *(v24 + 112) = 0u;
  *(v24 + 128) = 0u;
  *(v24 + 144) = 0;
  v88 = v24;
  sub_24AAB3B94();
  v81 = v12;
  v22(&v2[v23], v15, v12);
  v25 = v85;
  v26 = [v85 provider];
  v27 = [v26 isTelephonyProvider];

  if (v27)
  {
    *&v2[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_call] = v25;
    v28 = &v2[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_participantsToken];
    *v28 = 0;
    *(v28 + 1) = 0;
    v28[16] = 1;
    v29 = type metadata accessor for AudioPowerSpectrumViewModel(0);
    v86.receiver = v2;
    v86.super_class = v29;
    return [&v86 init];
  }

  v31 = [*&v2[v19] activeConversationForCall_];
  v70 = v23;
  if (!v31)
  {
    v35 = v83;
    v37 = v84;
    v38 = v74;
    v75(v74, &v2[v84], v83);
    v32 = sub_24AAB3A64();
    v39 = sub_24AAB5124();
    if (os_log_type_enabled(v32, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_24AA0F000, v32, v39, "AudioPowerSpectrumViewModel: can't find conversation for call.", v40, 2u);
      MEMORY[0x24C226630](v40, -1, -1);
      v41 = v25;
    }

    else
    {
      v41 = v32;
      v32 = v25;
    }

    v60 = v38;
    v61 = v81;
    v62 = v82;
    goto LABEL_25;
  }

  v32 = v31;
  v74 = v19;
  v33 = [v31 mergedActiveRemoteParticipants];
  sub_24AA442A0(0, &unk_27EF863F0, 0x277D6EEA8);
  sub_24AA6A5B0();
  v34 = sub_24AAB5114();

  v35 = v83;
  if ((v34 & 0xC000000000000001) != 0)
  {
    v36 = sub_24AAB52F4();
  }

  else
  {
    v36 = *(v34 + 16);
  }

  if (v36 != 1)
  {
    v37 = v84;
    v56 = v73;
    v75(v73, &v2[v84], v35);
    v41 = sub_24AAB3A64();
    v57 = sub_24AAB5124();
    if (os_log_type_enabled(v41, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      v59 = "AudioPowerSpectrumViewModel: not initializing for group call.";
LABEL_22:
      _os_log_impl(&dword_24AA0F000, v41, v57, v59, v58, 2u);
      MEMORY[0x24C226630](v58, -1, -1);

LABEL_24:
      v60 = v56;
      v61 = v81;
      v62 = v82;
      v19 = v74;
      goto LABEL_25;
    }

LABEL_23:

    v41 = v25;
    goto LABEL_24;
  }

  v42 = [v32 mergedActiveRemoteParticipants];
  v43 = sub_24AAB5114();

  v44 = sub_24AA58C64(v43);

  if (!v44)
  {
    v37 = v84;
    v56 = v71;
    v75(v71, &v2[v84], v35);
    v41 = sub_24AAB3A64();
    v57 = sub_24AAB5124();
    if (os_log_type_enabled(v41, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      v59 = "AudioPowerSpectrumViewModel: can't find remote participant for call.";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v45 = [v32 avcSessionToken];
  v46 = [v44 streamToken];
  v47 = v46;
  if (v45 && v46)
  {
    *&v2[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_call] = v25;
    v48 = &v2[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_participantsToken];
    *v48 = v45;
    *(v48 + 1) = v46;
    v48[16] = 0;
    v49 = type metadata accessor for AudioPowerSpectrumViewModel(0);
    v87.receiver = v2;
    v87.super_class = v49;
    v50 = v25;
    v51 = [&v87 init];
    sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
    v52 = v51;
    v53 = sub_24AAB5184();
    v54 = [objc_allocWithZone(MEMORY[0x277D6EDC8]) initWithDelegate:v52 queue:v53 binCount:30];

    v55 = *(&v52->isa + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_controller);
    *(&v52->isa + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_controller) = v54;

    return v52;
  }

  v73 = v44;
  v60 = v72;
  v75(v72, &v2[v84], v35);
  v65 = sub_24AAB3A64();
  v66 = sub_24AAB5124();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 134218240;
    *(v67 + 4) = v45;
    *(v67 + 12) = 2048;
    *(v67 + 14) = v47;
    _os_log_impl(&dword_24AA0F000, v65, v66, "AudioPowerSpectrumViewModel: invalid tokens (localParticipantToken = %ld, remoteParticipantToken = %ld).", v67, 0x16u);
    v68 = v67;
    v60 = v72;
    MEMORY[0x24C226630](v68, -1, -1);
    v69 = v25;
  }

  else
  {
    v69 = v65;
    v65 = v25;
  }

  v61 = v81;
  v62 = v82;
  v19 = v74;

  v41 = v32;
  v32 = v73;
  v37 = v84;
LABEL_25:

  v63 = *(v62 + 8);
  v63(v60, v35);
  v63(&v2[v37], v35);

  v64 = *(v80 + 8);
  v64(&v2[v79], v61);
  v64(&v2[v70], v61);
  type metadata accessor for AudioPowerSpectrumViewModel(0);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_24AA693E8()
{
  v1 = (v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_participantsToken);
  if (*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_participantsToken + 16))
  {
    v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_callCenter);
    v3 = [v2 callServicesClientCapabilities];
    [v3 setWantsFrequencyChangeNotifications_];

    v4 = [v2 callServicesClientCapabilities];
    [v4 save];

    v5 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:sel_updateTelephonySpectrum selector:0 userInfo:1 repeats:0.0666666667];
    v6 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_telephonyTimer);
    *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_telephonyTimer) = v5;
    v12 = v5;

    [v12 fire];
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_controller);
    if (v7)
    {
      v8 = *v1;
      v9 = v1[1];
      v12 = v7;
      [v12 registerParticipantPowerSpectrum:v8];
      [v12 registerParticipantPowerSpectrum:v9];
    }

    else
    {
      v12 = sub_24AAB3A64();
      v10 = sub_24AAB5124();
      if (os_log_type_enabled(v12, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_24AA0F000, v12, v10, "There is no TUAudioFrequencyController.", v11, 2u);
        MEMORY[0x24C226630](v11, -1, -1);
      }
    }
  }
}

id sub_24AA695C4()
{
  if (*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_participantsToken + 16))
  {
    result = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_telephonyTimer);
    v2 = sel_invalidate;

    return [result v2];
  }

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_controller;
  result = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_controller);
  if (result)
  {
    [result unregisterParticipantPowerSpectrum_];
    result = *(v0 + v3);
    if (result)
    {
      v2 = sel_unregisterParticipantPowerSpectrum_;

      return [result v2];
    }
  }

  return result;
}

id sub_24AA69680()
{
  v1 = &v0[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_participantsToken];
  if (v0[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_participantsToken + 16])
  {
    [*&v0[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_telephonyTimer] invalidate];
  }

  else
  {
    v2 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_controller;
    v3 = *&v0[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_controller];
    if (v3)
    {
      v4 = v1[1];
      [v3 unregisterParticipantPowerSpectrum_];
      v5 = *&v0[v2];
      if (v5)
      {
        [v5 unregisterParticipantPowerSpectrum_];
      }
    }
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for AudioPowerSpectrumViewModel(0);
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t type metadata accessor for AudioPowerSpectrumViewModel(uint64_t a1)
{
  result = qword_27EF863B8;
  if (!qword_27EF863B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_24AA699A0()
{
  v1 = *&v0[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_call];
  v2 = [v1 localFrequency];
  if (v2)
  {
    v3 = v2;
    v4 = sub_24AAB2C04();
    v6 = v5;

    v7 = [v1 translationSession];
    if (v7 && (v7, [v1 isUplinkMuted]))
    {
      v8 = sub_24AAB5054();
      *(v8 + 16) = 30;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      *(v8 + 64) = 0u;
      *(v8 + 80) = 0u;
      *(v8 + 96) = 0u;
      *(v8 + 112) = 0u;
      *(v8 + 128) = 0u;
      *(v8 + 144) = 0;
    }

    else
    {
      sub_24AA69BAC(v4, v6);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v0;
    sub_24AAB3BC4();
    sub_24AA190E8(v4, v6);
  }

  result = [v1 remoteFrequency];
  if (result)
  {
    v11 = result;
    v12 = sub_24AAB2C04();
    v14 = v13;

    sub_24AA69BAC(v12, v14);
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v0;
    sub_24AAB3BC4();
    return sub_24AA190E8(v12, v14);
  }

  return result;
}

uint64_t sub_24AA69BAC(uint64_t a1, unint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v11 = v2;
      v10 = sub_24AA6A3DC(MEMORY[0x277D84F90]);

      return v10;
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
LABEL_8:
    v8 = v2;
    sub_24AA6A4F4(v6, v7);
    v10 = v9;

    return v10;
  }

  if (v3)
  {
    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_8;
  }

  __src = a1;
  v16 = a2;
  v17 = BYTE2(a2);
  v18 = BYTE3(a2);
  v19 = BYTE4(a2);
  v4 = (a2 >> 50) & 0x3F;
  v20 = BYTE5(a2);
  if (v4)
  {
    v5 = sub_24AA69FFC((a2 >> 50) & 0x3F, 0);
    memcpy(v5 + 4, &__src, 4 * v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v13 = v2;
  v14 = sub_24AA6A3DC(v5);

  return v14;
}

void sub_24AA69D8C(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 && (a2 - a1 + 3) >= 7)
  {
    if (a2 - a1 >= 0)
    {
      v5 = a2 - a1;
    }

    else
    {
      v5 = a2 - a1 + 3;
    }

    v4 = sub_24AA69FFC(v5 >> 2, 0);
    memcpy(v4 + 4, a1, v5 & 0xFFFFFFFFFFFFFFFCLL);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v7 = sub_24AA6A3DC(v4);

  *a3 = v7;
}

void sub_24AA69E5C(uint64_t a1)
{
  sub_24AAB3A84();
  if (v1 <= 0x3F)
  {
    sub_24AA69F4C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24AA69F4C(uint64_t a1)
{
  if (!qword_27EF863C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF863D0, qword_24AAB97D0);
    v1 = sub_24AAB3BD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF863C8);
    }
  }
}

uint64_t sub_24AA69FBC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AudioPowerSpectrumViewModel(0);
  result = sub_24AAB3B44();
  *a2 = result;
  return result;
}

void *sub_24AA69FFC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E58, &qword_24AAB8CB0);
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

unint64_t sub_24AA6A080(unint64_t result, uint64_t a2)
{
  if ((v2[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_participantsToken + 16] & 1) == 0)
  {
    v3 = result;
    if (*&v2[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_participantsToken] == a2)
    {
      if (result >> 62)
      {
        v4 = sub_24AAB52F4();
      }

      else
      {
        v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v4)
      {
        v27 = MEMORY[0x277D84F90];
        result = sub_24AA5D45C(0, v4 & ~(v4 >> 63), 0);
        if ((v4 & 0x8000000000000000) == 0)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v4; ++i)
            {
              [MEMORY[0x24C225BD0](i v3)];
              v7 = v6;
              swift_unknownObjectRelease();
              v9 = *(v27 + 16);
              v8 = *(v27 + 24);
              if (v9 >= v8 >> 1)
              {
                sub_24AA5D45C((v8 > 1), v9 + 1, 1);
              }

              *(v27 + 16) = v9 + 1;
              *(v27 + 4 * v9 + 32) = v7;
            }
          }

          else
          {
            v16 = (v3 + 32);
            do
            {
              [*v16 floatValue];
              v19 = *(v27 + 16);
              v18 = *(v27 + 24);
              if (v19 >= v18 >> 1)
              {
                v20 = v17;
                sub_24AA5D45C((v18 > 1), v19 + 1, 1);
                v17 = v20;
              }

              *(v27 + 16) = v19 + 1;
              *(v27 + 4 * v19 + 32) = v17;
              ++v16;
              --v4;
            }

            while (v4);
          }

          goto LABEL_32;
        }

        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }
    }

    else
    {
      if (result >> 62)
      {
        v10 = sub_24AAB52F4();
      }

      else
      {
        v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v10)
      {
        v28 = MEMORY[0x277D84F90];
        result = sub_24AA5D45C(0, v10 & ~(v10 >> 63), 0);
        if ((v10 & 0x8000000000000000) == 0)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            for (j = 0; j != v10; ++j)
            {
              [MEMORY[0x24C225BD0](j v3)];
              v13 = v12;
              swift_unknownObjectRelease();
              v15 = *(v28 + 16);
              v14 = *(v28 + 24);
              if (v15 >= v14 >> 1)
              {
                sub_24AA5D45C((v14 > 1), v15 + 1, 1);
              }

              *(v28 + 16) = v15 + 1;
              *(v28 + 4 * v15 + 32) = v13;
            }
          }

          else
          {
            v21 = (v3 + 32);
            do
            {
              [*v21 floatValue];
              v24 = *(v28 + 16);
              v23 = *(v28 + 24);
              if (v24 >= v23 >> 1)
              {
                v25 = v22;
                sub_24AA5D45C((v23 > 1), v24 + 1, 1);
                v22 = v25;
              }

              *(v28 + 16) = v24 + 1;
              *(v28 + 4 * v24 + 32) = v22;
              ++v21;
              --v10;
            }

            while (v10);
          }

          goto LABEL_32;
        }

        goto LABEL_37;
      }
    }

LABEL_32:
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v2;
    return sub_24AAB3BC4();
  }

  return result;
}

uint64_t sub_24AA6A3DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    sub_24AA5D45C(0, v2, 0);
    result = v10;
    v4 = (a1 + 32);
    v5 = *(v10 + 16);
    do
    {
      if (*v4 >= -90.0)
      {
        v6 = *v4;
      }

      else
      {
        v6 = -90.0;
      }

      v7 = (v6 + 90.0) / 50.0;
      if (*v4 <= -40.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 1.0;
      }

      v11 = result;
      v9 = *(result + 24);
      if (v5 >= v9 >> 1)
      {
        sub_24AA5D45C((v9 > 1), v5 + 1, 1);
        result = v11;
      }

      *(result + 16) = v5 + 1;
      *(result + 4 * v5 + 32) = v8;
      ++v4;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_24AA6A4F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AAB2A64();
  if (v4)
  {
    v5 = sub_24AAB2A84();
    if (__OFSUB__(a1, v5))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v4 += a1 - v5;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_24AAB2A74();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = &v4[v9];
  if (v4)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  sub_24AA69D8C(v4, v11, &v12);
}

unint64_t sub_24AA6A5B0()
{
  result = qword_27EF857D0;
  if (!qword_27EF857D0)
  {
    sub_24AA442A0(255, &unk_27EF863F0, 0x277D6EEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF857D0);
  }

  return result;
}

id sub_24AA6A618()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for UIBackgroundBlurViewView();
  v1 = objc_msgSendSuper2(&v17, sel_init);
  v2 = [v1 layer];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86410, &unk_24AAB9940);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_24AAB7D10;
    v6 = *MEMORY[0x277CDA2C0];
    v7 = objc_allocWithZone(MEMORY[0x277CD9EA0]);
    v8 = v2;
    v9 = [v7 initWithType_];
    v16[0] = xmmword_24AAB98B0;
    v16[1] = xmmword_24AAB98C0;
    v16[2] = xmmword_24AAB98D0;
    v16[3] = xmmword_24AAB98E0;
    v16[4] = xmmword_24AAB98F0;
    v10 = [objc_opt_self() valueWithCAColorMatrix_];
    v11 = sub_24AAB4EE4();
    [v9 setValue:v10 forKey:v11];

    v12 = sub_24AA6A900();
    *(v5 + 56) = v12;
    *(v5 + 32) = v9;
    v13 = sub_24AA6A94C();
    *(v5 + 88) = v12;
    *(v5 + 64) = v13;
    v14 = sub_24AAB5014();

    [v4 setFilters_];

    v2 = v1;
  }

  else
  {
    v14 = v1;
  }

  return v1;
}

id sub_24AA6A8A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIBackgroundBlurViewView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24AA6A900()
{
  result = qword_27EF86418;
  if (!qword_27EF86418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF86418);
  }

  return result;
}

id sub_24AA6A94C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v1 = sub_24AAB5084();
  v2 = sub_24AAB4EE4();
  [v0 setValue:v1 forKey:v2];

  v3 = sub_24AAB5104();
  v4 = sub_24AAB4EE4();
  [v0 setValue:v3 forKey:v4];

  return v0;
}

uint64_t sub_24AA6AC3C(uint64_t a1)
{
  result = sub_24AAB2B84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24AA6AFF4(uint64_t a1)
{
  result = sub_24AAB2B84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24AA6B098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AAB2B84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24AA6B170(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AAB2B84();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AA6B250(uint64_t a1)
{
  result = sub_24AAB2B84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22FaceTimeNotificationUI10CallActionO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_22FaceTimeNotificationUI17ControlAppearanceVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24AA6B388(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AA6B3D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24AA6B490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AAB2B84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24AA6B568(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AAB2B84();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AA6B648(uint64_t a1)
{
  result = sub_24AAB2B84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24AA6B794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24AAB2B84();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AA6B854(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_24AAB2B84();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24AA6B918(uint64_t a1)
{
  result = sub_24AAB2B84();
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

uint64_t sub_24AA6BAB8()
{
  if (*v0 != 1 || (v0[*(type metadata accessor for ShareControl(0) + 44)] & 1) != 0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A08, &qword_24AABB538);
  v2 = *(type metadata accessor for MenuItem(0) - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24AAB7D10;
  v6 = v5 + v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  v8 = v6 + *(v7 + 48);
  v9 = *(v7 + 64);
  sub_24AAB2B24();
  *v8 = xmmword_24AAB7030;
  *(v8 + 16) = 2;
  *(v6 + v9) = 1;
  v10 = *(*(v7 - 8) + 56);
  v10(v6, 0, 1, v7);
  v11 = v6 + v3;
  v12 = v11 + *(v7 + 48);
  v13 = *(v7 + 64);
  sub_24AAB2B24();
  *v12 = xmmword_24AAB9950;
  *(v12 + 16) = 2;
  *(v11 + v13) = v0[1];
  v10(v11, 0, 1, v7);
  return v5;
}

uint64_t sub_24AA6BCB8(uint64_t a1)
{
  sub_24AAB5514();
  sub_24AAB5514();
  CallAction.hash(into:)(a1);
  v3 = type metadata accessor for ShareControl(0);
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v4)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  sub_24AAB4F64();
  v5 = (v1 + *(v3 + 36));
  v7 = v5[2];
  v6 = v5[3];
  if (*v5)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (v6)
  {
    sub_24AAB5514();
    if (v7)
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
  sub_24AAB5514();
  return sub_24AAB5514();
}

uint64_t sub_24AA6BE98(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

uint64_t sub_24AA6BEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_24AAB2B84();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24AA6BF68(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[2];
  v5 = v2[3];

  sub_24AA1B750(v4, v5);
  return v3;
}

uint64_t sub_24AA6C030(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
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

uint64_t sub_24AA6C57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[5];
  v6 = v3[7];
  v5 = v3[8];
  CallAction.hash(into:)(a1);
  sub_24AAB4F64();
  if (v4)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (v5)
  {
    sub_24AAB5514();
    if (v6)
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

uint64_t sub_24AA6C6A4()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_24AA6C724()
{
  v1 = v0[5];
  v3 = v0[7];
  v2 = v0[8];

  sub_24AA1B750(v3, v2);
  return v1;
}

uint64_t sub_24AA6C78C()
{
  sub_24AAB54F4();
  sub_24AA6C57C(v3, v0, v1);
  return sub_24AAB5524();
}

uint64_t sub_24AA6C7D0(uint64_t a1)
{
  sub_24AAB54F4();
  sub_24AA6C57C(v4, v1, v2);
  return sub_24AAB5524();
}

uint64_t sub_24AA6C810(uint64_t a1)
{
  sub_24AAB5514();
  CallAction.hash(into:)(a1);
  v3 = type metadata accessor for AcceptControl(0);
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v4)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  v5 = (v1 + *(v3 + 28));
  v7 = v5[2];
  v6 = v5[3];
  if (*v5)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (v6)
  {
    sub_24AAB5514();
    if (v7)
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
  sub_24AAB5514();
  return sub_24AAB5514();
}

uint64_t sub_24AA6C9C4()
{
  if (*v0 != 1)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A08, &qword_24AABB538);
  v1 = *(type metadata accessor for MenuItem(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24AAB7070;
  v4 = v3 + v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  v6 = v4 + *(v5 + 48);
  v7 = *(v5 + 64);
  sub_24AAB2B24();
  *v6 = xmmword_24AAB9960;
  *(v6 + 16) = 2;
  *(v4 + v7) = 1;
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  return v3;
}

uint64_t sub_24AA6CB3C()
{
  if (*v0)
  {
    return 0x69662E6F65646976;
  }

  else
  {
    return 0x69662E656E6F6870;
  }
}

uint64_t sub_24AA6CB74@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_24AA15F10(v2, v3, v4);
}

uint64_t sub_24AA6CCD8()
{
  v1 = sub_24AAB4EC4();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  if (*(v0 + *(type metadata accessor for DeclineControlWithMenu(0) + 32)))
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A08, &qword_24AABB538);
  v5 = *(type metadata accessor for MenuItem(0) - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v22 = 4 * v6;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_24AAB9970;
  v8 = v23 + v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  v10 = v8 + *(v9 + 48);
  v11 = *(v9 + 64);
  sub_24AAB2B24();
  *v10 = xmmword_24AAB9980;
  *(v10 + 16) = 2;
  *(v8 + v11) = 1;
  v21 = *(*(v9 - 8) + 56);
  v21(v8, 0, 1, v9);
  v21(v8 + v6, 1, 1, v9);
  v12 = v8 + 2 * v6;
  v13 = v12 + *(v9 + 48);
  v20 = *(v9 + 64);
  sub_24AAB4EB4();
  sub_24AAB4EA4();
  sub_24AAB4E94();
  sub_24AAB4EA4();
  sub_24AAB2B44();
  *v13 = xmmword_24AAB9990;
  *(v13 + 16) = 0;
  *(v12 + v20) = 1;
  v21(v12, 0, 1, v9);
  v14 = v8 + 3 * v6;
  v15 = v14 + *(v9 + 48);
  v16 = *(v9 + 64);
  sub_24AAB4EB4();
  sub_24AAB4EA4();
  sub_24AAB4E94();
  sub_24AAB4EA4();
  sub_24AAB2B44();
  *v15 = xmmword_24AAB99A0;
  *(v15 + 16) = 0;
  *(v14 + v16) = 1;
  v21(v14, 0, 1, v9);
  v17 = v8 + v22;
  v18 = v8 + v22 + *(v9 + 48);
  v19 = *(v9 + 64);
  sub_24AAB4EB4();
  sub_24AAB4EA4();
  sub_24AAB4E94();
  sub_24AAB4EA4();
  sub_24AAB2B44();
  *v18 = xmmword_24AAB99B0;
  *(v18 + 16) = 0;
  *(v17 + v19) = 1;
  v21(v17, 0, 1, v9);
  return v23;
}

uint64_t sub_24AA6D17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CallAction.hash(into:)(a1);
  v4 = type metadata accessor for DeclineControlWithMenu(0);
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v5)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  sub_24AAB4F64();
  v6 = (v3 + *(v4 + 28));
  v8 = v6[2];
  v7 = v6[3];
  if (*v6)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (v7)
  {
    sub_24AAB5514();
    if (v8)
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
  sub_24AAB5514();
  return sub_24AAB5514();
}

uint64_t sub_24AA6D36C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_24AAB54F4();
  a3(v5);
  return sub_24AAB5524();
}

uint64_t sub_24AA6D3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_24AAB54F4();
  a4(v6);
  return sub_24AAB5524();
}

uint64_t sub_24AA6D7BC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
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

  v7 = (v3 + *(v5 + 24));
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

uint64_t sub_24AA6E234(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[2];
  v5 = v2[3];

  sub_24AA1B750(v4, v5);
  return v3;
}

uint64_t sub_24AA6E2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  sub_24AAB54F4();
  a4(v7, a3);
  return sub_24AAB5524();
}

uint64_t sub_24AA6E370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t))
{
  sub_24AAB54F4();
  a5(v8, a4);
  return sub_24AAB5524();
}

uint64_t sub_24AA6E410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_24AAB2B84();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24AA6E484(uint64_t a1)
{
  sub_24AAB54F4();
  sub_24AAB4F64();
  return sub_24AAB5524();
}

uint64_t sub_24AA6E4E4(uint64_t a1, uint64_t a2)
{
  sub_24AAB54F4();
  sub_24AAB4F64();
  return sub_24AAB5524();
}

uint64_t sub_24AA6E530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  if (*(a1 + v3) == *(a2 + v3) && *(a1 + v3 + 8) == *(a2 + v3 + 8))
  {
    return 1;
  }

  else
  {
    return sub_24AAB5474();
  }
}

uint64_t sub_24AA6E5AC(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF865B8, type metadata accessor for CustomViewControl, &unk_24AAB9CEC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6E604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AA6E64C(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF865C0, type metadata accessor for CustomViewControl, &unk_24AAB9D2C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6E6EC(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF865D0, type metadata accessor for KeypadControl, &unk_24AAB9DD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6E744(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF865D8, type metadata accessor for KeypadControl, &unk_24AAB9E10);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6E7E4(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF865E8, type metadata accessor for WaitOnHoldControl, &unk_24AAB9EB4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6E83C(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF865F0, type metadata accessor for WaitOnHoldControl, &unk_24AAB9EF4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6E8DC(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86600, type metadata accessor for ShareControl, &unk_24AAB9F98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6E934(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86608, type metadata accessor for ShareControl, &unk_24AAB9FD8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6E9D4(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86618, type metadata accessor for MoreMenuControl, &unk_24AABA098);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6EA2C(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86620, type metadata accessor for MoreMenuControl, &unk_24AABA0D8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6EA84(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86628, type metadata accessor for MoreMenuControl, &unk_24AABA11C);
  a1[2] = sub_24AA6E604(&qword_27EF86630, type metadata accessor for MoreMenuControl, &unk_24AABA138);
  result = sub_24AA6E604(&qword_27EF86638, type metadata accessor for MoreMenuControl, &unk_24AABA0F4);
  a1[3] = result;
  return result;
}

unint64_t sub_24AA6EB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF86640;
  if (!qword_27EF86640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86640);
  }

  return result;
}

unint64_t sub_24AA6EB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_24AA6EBB0(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AA6EBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF86648;
  if (!qword_27EF86648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86648);
  }

  return result;
}

unint64_t sub_24AA6EC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF86650;
  if (!qword_27EF86650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86650);
  }

  return result;
}

unint64_t sub_24AA6EC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_24AA6EC04(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6ECC8(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86660, type metadata accessor for DeclineControl, &unk_24AABA27C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6ED20(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86668, type metadata accessor for DeclineControl, &unk_24AABA2BC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6EDC0(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86678, type metadata accessor for AcceptControl, &unk_24AABA360);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6EE18(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86680, type metadata accessor for AcceptControl, &unk_24AABA3A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6EEB8(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86690, type metadata accessor for WaitOnHoldSuggestionControl, &unk_24AABB458);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6EF58(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF866A0, type metadata accessor for WaitOnHoldDeclineSuggestionControl, &unk_24AABB43C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6EFF8(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF866B0, type metadata accessor for UpgradeVideoControl, &unk_24AABA568);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F050(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF866B8, type metadata accessor for UpgradeVideoControl, &unk_24AABA5A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F0F0(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF866C8, type metadata accessor for EndControl, &unk_24AABA64C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F148(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF866D0, type metadata accessor for EndControl, &unk_24AABA68C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F1E8(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF866E0, type metadata accessor for RTTControl, &unk_24AABA730);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F240(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF866E8, type metadata accessor for RTTControl, &unk_24AABA770);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F2E0(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF866F8, type metadata accessor for DialControl, &unk_24AABA814);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F338(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86700, type metadata accessor for DialControl, "Ն4;<\"");
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F3D8(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86710, type metadata accessor for CancelDialControl, &unk_24AABA8F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F430(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86718, type metadata accessor for CancelDialControl, &unk_24AABA938);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F4D0(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF85820, type metadata accessor for TitledSwapControl, &unk_24AABB394);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F570(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86730, type metadata accessor for SwapControl, &unk_24AABAA60);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F5C8(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86738, type metadata accessor for SwapControl, &unk_24AABAAA0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F668(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86748, type metadata accessor for MergeControl, &unk_24AABAB44);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F6C0(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86750, type metadata accessor for MergeControl, &unk_24AABAB84);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F760(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF85838, type metadata accessor for UnholdControl, &unk_24AABB340);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F800(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86768, type metadata accessor for DeclineControlWithMenu, &unk_24AABACAC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F858(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86770, type metadata accessor for DeclineControlWithMenu, &unk_24AABACEC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F8F8(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86780, type metadata accessor for WaitOnHoldEndCallControl, &unk_24AABADAC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F950(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86788, type metadata accessor for WaitOnHoldEndCallControl, &unk_24AABADEC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F9F0(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86798, type metadata accessor for PickUpControl, &unk_24AABAE90);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FA48(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF867A0, type metadata accessor for PickUpControl, &unk_24AABAED0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FAE8(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF867B0, type metadata accessor for StopLiveVoicemailControl, &unk_24AABAF74);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FB40(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF867B8, type metadata accessor for StopLiveVoicemailControl, &unk_24AABAFB4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FBE0(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF867C8, type metadata accessor for LiveVoicemailControl, &unk_24AABB058);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FC38(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF867D0, type metadata accessor for LiveVoicemailControl, &unk_24AABB098);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FCD8(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF867E0, type metadata accessor for DeclineWithMessageControl, &unk_24AABB13C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FD30(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF867E8, type metadata accessor for DeclineWithMessageControl, &unk_24AABB17C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FDD0(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF867F8, type metadata accessor for BlockControl, &unk_24AABB27C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FE28(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86800, type metadata accessor for BlockControl, &unk_24AABB220);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FE80(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86808, type metadata accessor for DeclineWithMessageControl, &unk_24AABB1C0);
  a1[2] = sub_24AA6E604(&qword_27EF86810, type metadata accessor for DeclineWithMessageControl, &unk_24AABB1DC);
  result = sub_24AA6E604(&qword_27EF86818, type metadata accessor for DeclineWithMessageControl, &unk_24AABB198);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA6FF2C(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86820, type metadata accessor for LiveVoicemailControl, &unk_24AABB0DC);
  a1[2] = sub_24AA6E604(&qword_27EF86828, type metadata accessor for LiveVoicemailControl, &unk_24AABB0F8);
  result = sub_24AA6E604(&qword_27EF86830, type metadata accessor for LiveVoicemailControl, &unk_24AABB0B4);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA6FFD8(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86838, type metadata accessor for StopLiveVoicemailControl, &unk_24AABAFF8);
  a1[2] = sub_24AA6E604(&qword_27EF86840, type metadata accessor for StopLiveVoicemailControl, &unk_24AABB014);
  result = sub_24AA6E604(&qword_27EF86848, type metadata accessor for StopLiveVoicemailControl, &unk_24AABAFD0);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70084(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86850, type metadata accessor for PickUpControl, "}|4;<T");
  a1[2] = sub_24AA6E604(&qword_27EF86858, type metadata accessor for PickUpControl, "i{4; T");
  result = sub_24AA6E604(&qword_27EF86860, type metadata accessor for PickUpControl, &unk_24AABAEEC);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70130(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86868, type metadata accessor for WaitOnHoldEndCallControl, "a}4;HU");
  a1[2] = sub_24AA6E604(&qword_27EF86870, type metadata accessor for WaitOnHoldEndCallControl, "M|4;,U");
  result = sub_24AA6E604(&qword_27EF86878, type metadata accessor for WaitOnHoldEndCallControl, &unk_24AABAE08);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA701DC(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86880, type metadata accessor for DeclineControlWithMenu, "a~4;pV");
  a1[2] = sub_24AA6E604(&qword_27EF86888, type metadata accessor for DeclineControlWithMenu, "M}4;TV");
  result = sub_24AA6E604(&qword_27EF86890, type metadata accessor for DeclineControlWithMenu, &unk_24AABAD08);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70288(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86898, type metadata accessor for UnholdControl, &unk_24AABAC28);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA702E0(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF868A0, type metadata accessor for MergeControl, &unk_24AABABC8);
  a1[2] = sub_24AA6E604(&qword_27EF868A8, type metadata accessor for MergeControl, &unk_24AABABE4);
  result = sub_24AA6E604(&qword_27EF868B0, type metadata accessor for MergeControl, &unk_24AABABA0);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA7038C(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF868B8, type metadata accessor for SwapControl, &unk_24AABAAE4);
  a1[2] = sub_24AA6E604(&qword_27EF868C0, type metadata accessor for SwapControl, &unk_24AABAB00);
  result = sub_24AA6E604(&qword_27EF868C8, type metadata accessor for SwapControl, &unk_24AABAABC);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70438(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF868D0, type metadata accessor for TitledSwapControl, &unk_24AABA9DC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA70490(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF868D8, type metadata accessor for CancelDialControl, &unk_24AABA97C);
  a1[2] = sub_24AA6E604(&qword_27EF868E0, type metadata accessor for CancelDialControl, &unk_24AABA998);
  result = sub_24AA6E604(&qword_27EF868E8, type metadata accessor for CancelDialControl, &unk_24AABA954);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA7053C(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF868F0, type metadata accessor for DialControl, &unk_24AABA898);
  a1[2] = sub_24AA6E604(&qword_27EF868F8, type metadata accessor for DialControl, &unk_24AABA8B4);
  result = sub_24AA6E604(&qword_27EF86900, type metadata accessor for DialControl, &unk_24AABA870);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA705E8(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86908, type metadata accessor for RTTControl, &unk_24AABA7B4);
  a1[2] = sub_24AA6E604(&qword_27EF86910, type metadata accessor for RTTControl, &unk_24AABA7D0);
  result = sub_24AA6E604(&qword_27EF86918, type metadata accessor for RTTControl, &unk_24AABA78C);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70694(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86920, type metadata accessor for EndControl, &unk_24AABA6D0);
  a1[2] = sub_24AA6E604(&qword_27EF86928, type metadata accessor for EndControl, &unk_24AABA6EC);
  result = sub_24AA6E604(&qword_27EF86930, type metadata accessor for EndControl, &unk_24AABA6A8);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70740(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86938, type metadata accessor for UpgradeVideoControl, &unk_24AABA5EC);
  a1[2] = sub_24AA6E604(&qword_27EF86940, type metadata accessor for UpgradeVideoControl, &unk_24AABA608);
  result = sub_24AA6E604(&qword_27EF86948, type metadata accessor for UpgradeVideoControl, &unk_24AABA5C4);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA707EC(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86950, type metadata accessor for WaitOnHoldDeclineSuggestionControl, &unk_24AABA4E4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA70844(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86958, type metadata accessor for WaitOnHoldSuggestionControl, &unk_24AABA460);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA7089C(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86960, type metadata accessor for AcceptControl, &unk_24AABA3E4);
  a1[2] = sub_24AA6E604(&qword_27EF86968, type metadata accessor for AcceptControl, &unk_24AABA400);
  result = sub_24AA6E604(&qword_27EF86970, type metadata accessor for AcceptControl, &unk_24AABA3BC);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70948(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86978, type metadata accessor for DeclineControl, &unk_24AABA300);
  a1[2] = sub_24AA6E604(&qword_27EF86980, type metadata accessor for DeclineControl, &unk_24AABA31C);
  result = sub_24AA6E604(&qword_27EF86988, type metadata accessor for DeclineControl, &unk_24AABA2D8);
  a1[3] = result;
  return result;
}

unint64_t sub_24AA709F4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24AA70A2C(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_24AA70A80(v4, v5, v6);
  a1[2] = v7;
  result = sub_24AA70AD4(v7, v8, v9);
  a1[3] = result;
  return result;
}

unint64_t sub_24AA70A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF86990;
  if (!qword_27EF86990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86990);
  }

  return result;
}

unint64_t sub_24AA70A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF86998;
  if (!qword_27EF86998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86998);
  }

  return result;
}

unint64_t sub_24AA70AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF869A0;
  if (!qword_27EF869A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF869A0);
  }

  return result;
}

uint64_t sub_24AA70B28(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF869A8, type metadata accessor for ShareControl, &unk_24AABA01C);
  a1[2] = sub_24AA6E604(&qword_27EF869B0, type metadata accessor for ShareControl, &unk_24AABA038);
  result = sub_24AA6E604(&qword_27EF869B8, type metadata accessor for ShareControl, &unk_24AAB9FF4);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70BD4(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF869C0, type metadata accessor for WaitOnHoldControl, &unk_24AAB9F38);
  a1[2] = sub_24AA6E604(&qword_27EF869C8, type metadata accessor for WaitOnHoldControl, &unk_24AAB9F54);
  result = sub_24AA6E604(&qword_27EF869D0, type metadata accessor for WaitOnHoldControl, &unk_24AAB9F10);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70C80(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF869D8, type metadata accessor for CustomViewControl, &unk_24AAB9D70);
  a1[2] = sub_24AA6E604(&qword_27EF869E0, type metadata accessor for CustomViewControl, &unk_24AAB9D8C);
  result = sub_24AA6E604(&qword_27EF869E8, type metadata accessor for CustomViewControl, &unk_24AAB9D48);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70D2C(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF869F0, type metadata accessor for KeypadControl, &unk_24AAB9E54);
  a1[2] = sub_24AA6E604(&qword_27EF869F8, type metadata accessor for KeypadControl, &unk_24AAB9E70);
  result = sub_24AA6E604(&qword_27EF86A00, type metadata accessor for KeypadControl, &unk_24AAB9E2C);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_24AA70F28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v23 = *(a1 + 48);
  v24 = *(a1 + 40);
  v21 = *(a1 + 64);
  v22 = *(a1 + 56);
  v17 = *(a1 + 73);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  v20 = *(a2 + 40);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v18 = *(a2 + 72);
  v19 = *(a1 + 72);
  v16 = *(a2 + 73);
  v12 = *(a1 + 16);
  v13 = *(a2 + 16);
  v28 = *a1;
  v29 = v2;
  v30 = v12;
  v25 = v5;
  v26 = v6;
  v27 = v13;
  sub_24AA15F10(v28, v2, v12);
  sub_24AA15F10(v5, v6, v13);
  LOBYTE(v5) = _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(&v28, &v25);
  sub_24AA15ED0(v25, v26, v27);
  sub_24AA15ED0(v28, v29, v30);
  if ((v5 & 1) == 0 || (v3 != v7 || v4 != v8) && (sub_24AAB5474() & 1) == 0)
  {
    return 0;
  }

  v14 = sub_24AAAA8E0(v24, v23, v22, v21, v20, v9, v10, v11);
  result = 0;
  if (v14 && ((v19 ^ v18) & 1) == 0)
  {
    return v17 ^ v16 ^ 1u;
  }

  return result;
}

uint64_t sub_24AA71088(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v28 = v2;
  v29 = v3;
  v5 = *(a1 + 2);
  v7 = a1[24];
  v25 = *(a1 + 1);
  v26 = v5;
  v27 = v7;
  v8 = *(a2 + 2);
  v10 = a2[24];
  v22 = *(a2 + 1);
  v23 = v8;
  v24 = v10;
  sub_24AA15F10(v25, v5, v7);
  sub_24AA15F10(v22, v8, v10);
  v11 = _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(&v25, &v22);
  sub_24AA15ED0(v22, v23, v24);
  sub_24AA15ED0(v25, v26, v27);
  if (v11 & 1) != 0 && (v12 = type metadata accessor for ShareControl(0), (MEMORY[0x24C2233A0](&a1[v12[7]], &a2[v12[7]])) && ((v13 = v12[8], v14 = *&a1[v13], v15 = *&a1[v13 + 8], v16 = &a2[v13], v14 == *v16) && (v17 = a1, v18 = a2, v15 == *(v16 + 1)) || (v19 = sub_24AAB5474(), v18 = a2, v17 = a1, (v19)) && (v20 = v12[9], sub_24AAAA8E0(*&v17[v20], *&v17[v20 + 8], *&v17[v20 + 16], *&v17[v20 + 24], *&v18[v20], *&v18[v20 + 8], *&v18[v20 + 16], *&v18[v20 + 24])) && a1[v12[10]] == a2[v12[10]] && a1[v12[11]] == a2[v12[11]])
  {
    v21 = a1[v12[12]] ^ a2[v12[12]] ^ 1;
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_24AA71224(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v21 = v2;
  v22 = v3;
  v7 = *(a1 + 2);
  v8 = a1[24];
  v18 = *(a1 + 1);
  v19 = v7;
  v20 = v8;
  v9 = *(a2 + 2);
  v10 = a2[24];
  v15 = *(a2 + 1);
  v16 = v9;
  v17 = v10;
  sub_24AA15F10(v18, v7, v8);
  sub_24AA15F10(v15, v9, v10);
  v11 = _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(&v18, &v15);
  sub_24AA15ED0(v15, v16, v17);
  sub_24AA15ED0(v18, v19, v20);
  if (v11 & 1) != 0 && (v12 = type metadata accessor for AcceptControl(0), (MEMORY[0x24C2233A0](&a1[v12[6]], &a2[v12[6]])) && (v13 = v12[7], sub_24AAAA8E0(*&a1[v13], *&a1[v13 + 8], *&a1[v13 + 16], *&a1[v13 + 24], *&a2[v13], *&a2[v13 + 8], *&a2[v13 + 16], *&a2[v13 + 24])) && a1[v12[8]] == a2[v12[8]] && a1[v12[9]] == a2[v12[9]])
  {
    v14 = a1[v12[10]] ^ a2[v12[10]] ^ 1;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_24AA7136C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v18 = *a1;
  v19 = v6;
  v20 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v15 = *a2;
  v16 = v8;
  v17 = v9;
  sub_24AA15F10(v18, v6, v7);
  sub_24AA15F10(v15, v8, v9);
  v10 = _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(&v18, &v15);
  sub_24AA15ED0(v15, v16, v17);
  sub_24AA15ED0(v18, v19, v20);
  if (v10 & 1) != 0 && (v11 = a3(0), (MEMORY[0x24C2233A0](a1 + v11[5], a2 + v11[5])) && (v12 = v11[6], sub_24AAAA8E0(*(a1 + v12), *(a1 + v12 + 8), *(a1 + v12 + 16), *(a1 + v12 + 24), *(a2 + v12), *(a2 + v12 + 8), *(a2 + v12 + 16), *(a2 + v12 + 24))) && *(a1 + v11[7]) == *(a2 + v11[7]))
  {
    v13 = *(a1 + v11[8]) ^ *(a2 + v11[8]) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_24AA7148C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v20 = *a1;
  v21 = v4;
  v22 = v5;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v17 = *a2;
  v18 = v6;
  v19 = v7;
  sub_24AA15F10(v20, v4, v5);
  sub_24AA15F10(v17, v6, v7);
  v8 = _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(&v20, &v17);
  sub_24AA15ED0(v17, v18, v19);
  sub_24AA15ED0(v20, v21, v22);
  if (v8 & 1) != 0 && (v9 = type metadata accessor for DeclineControlWithMenu(0), (MEMORY[0x24C2233A0](a1 + v9[5], a2 + v9[5])) && ((v10 = v9[6], v11 = *(a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v11 == *v13) && v12 == v13[1] || (sub_24AAB5474()) && (v14 = v9[7], sub_24AAAA8E0(*(a1 + v14), *(a1 + v14 + 8), *(a1 + v14 + 16), *(a1 + v14 + 24), *(a2 + v14), *(a2 + v14 + 8), *(a2 + v14 + 16), *(a2 + v14 + 24))) && *(a1 + v9[8]) == *(a2 + v9[8]) && *(a1 + v9[9]) == *(a2 + v9[9]))
  {
    v15 = *(a1 + v9[10]) ^ *(a2 + v9[10]) ^ 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t CallAction.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x24C225D50](28);

      return sub_24AAB4F64();
    }

    else
    {
      switch(v3)
      {
        case 1:
          v6 = 1;
          break;
        case 2:
          v6 = 2;
          break;
        case 3:
          v6 = 3;
          break;
        case 4:
          v6 = 4;
          break;
        case 5:
          v6 = 6;
          break;
        case 6:
          v6 = 7;
          break;
        case 7:
          v6 = 8;
          break;
        case 8:
          v6 = 9;
          break;
        case 9:
          v6 = 10;
          break;
        case 10:
          v6 = 11;
          break;
        case 11:
          v6 = 12;
          break;
        case 12:
          v6 = 13;
          break;
        case 13:
          v6 = 14;
          break;
        case 14:
          v6 = 15;
          break;
        case 15:
          v6 = 16;
          break;
        case 16:
          v6 = 17;
          break;
        case 17:
          v6 = 18;
          break;
        case 18:
          v6 = 19;
          break;
        case 19:
          v6 = 20;
          break;
        case 20:
          v6 = 21;
          break;
        case 21:
          v6 = 22;
          break;
        case 22:
          v6 = 23;
          break;
        case 23:
          v6 = 24;
          break;
        case 24:
          v6 = 25;
          break;
        case 25:
          v6 = 26;
          break;
        case 26:
          v6 = 27;
          break;
        default:
          v6 = 0;
          break;
      }

      return MEMORY[0x24C225D50](v6);
    }
  }

  else
  {
    MEMORY[0x24C225D50](5);

    return MEMORY[0x2821FE678](a1, v3, v4);
  }
}

uint64_t CallAction.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_24AAB54F4();
  CallAction.hash(into:)(v3);
  return sub_24AAB5524();
}

uint64_t sub_24AA71970()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_24AAB54F4();
  CallAction.hash(into:)(v3);
  return sub_24AAB5524();
}

uint64_t sub_24AA719C8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_24AAB54F4();
  CallAction.hash(into:)(v4);
  return sub_24AAB5524();
}

uint64_t sub_24AA71A18()
{
  sub_24AA43A54(v0, v15);
  if (v17 > 2u)
  {
    if (v17 == 3)
    {
      sub_24AA15A64(v15, v13);
      sub_24AA15A64(v16, &v10);
      sub_24AAB5374();
      MEMORY[0x24C2257F0](0x2864656B63617473, 0xED0000203A706F74);
      __swift_project_boxed_opaque_existential_1(v13, v14);
      sub_24AAB5464();
      v1 = 0x6D6F74746F62202CLL;
      v2 = 0xEA0000000000203ALL;
    }

    else
    {
      if (v17 != 4)
      {
        return 1701736302;
      }

      sub_24AA15A64(v15, v13);
      sub_24AA15A64(v16, &v10);
      sub_24AAB5374();
      MEMORY[0x24C2257F0](0xD000000000000019, 0x800000024AAD2BE0);
      __swift_project_boxed_opaque_existential_1(v13, v14);
      sub_24AAB5464();
      v1 = 0x696C69617274202CLL;
      v2 = 0xEC000000203A676ELL;
    }

    MEMORY[0x24C2257F0](v1, v2);
    __swift_project_boxed_opaque_existential_1(&v10, v12);
    sub_24AAB5464();
    MEMORY[0x24C2257F0](41, 0xE100000000000000);
    v8 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(&v10);
    goto LABEL_13;
  }

  if (v17)
  {
    if (v17 == 1)
    {
      sub_24AA15A64(v15, v13);
      v10 = 0;
      v11 = 0xE000000000000000;
      sub_24AAB5374();
      MEMORY[0x24C2257F0](0xD000000000000016, 0x800000024AAD2C20);
      __swift_project_boxed_opaque_existential_1(v13, v14);
      sub_24AAB5464();
    }

    else
    {
      sub_24AA15A64(v15, v13);
      v10 = 0;
      v11 = 0xE000000000000000;
      sub_24AAB5374();
      MEMORY[0x24C2257F0](0xD000000000000017, 0x800000024AAD2C00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A28, &qword_24AABB848);
      sub_24AAB53E4();
    }

    MEMORY[0x24C2257F0](41, 0xE100000000000000);
    v8 = v10;
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    return v8;
  }

  v3 = *&v15[0];
  sub_24AAB5374();

  strcpy(v13, "hud(controls: ");
  v13[15] = -18;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85060, &unk_24AABB850);
  v5 = MEMORY[0x24C225880](v3, v4);
  v7 = v6;

  MEMORY[0x24C2257F0](v5, v7);

  MEMORY[0x24C2257F0](41, 0xE100000000000000);
  return *v13;
}

uint64_t sub_24AA71DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a3;
  v41 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24AAB5274();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v33 - v11;
  v39 = *(v8 - 8);
  v13 = v39;
  v14 = MEMORY[0x28223BE20](v10);
  v38 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  v42 = v6;
  (*(v6 + 16))(&v33 - v19, v4, a2);
  v21 = *(v6 + 56);
  v21(v20, 0, 1, a2);
  sub_24AA168B4(v41, v43);
  v22 = swift_dynamicCast();
  v21(v18, v22 ^ 1u, 1, a2);
  v37 = TupleTypeMetadata2;
  v23 = *(TupleTypeMetadata2 + 48);
  v41 = v13;
  v24 = *(v13 + 16);
  v24(v12, v20, v8);
  v40 = v18;
  v24(&v12[v23], v18, v8);
  v25 = *(v42 + 48);
  if (v25(v12, 1, a2) != 1)
  {
    v24(v38, v12, v8);
    if (v25(&v12[v23], 1, a2) != 1)
    {
      v28 = v42;
      v29 = v34;
      (*(v42 + 32))(v34, &v12[v23], a2);
      v30 = v38;
      v27 = sub_24AAB4E74();
      v31 = *(v28 + 8);
      v31(v29, a2);
      v26 = *(v39 + 8);
      v26(v20, v8);
      v31(v30, a2);
      v26(v12, v8);
      goto LABEL_8;
    }

    v26 = *(v39 + 8);
    v26(v20, v8);
    (*(v42 + 8))(v38, a2);
    goto LABEL_6;
  }

  v26 = *(v39 + 8);
  v26(v20, v8);
  if (v25(&v12[v23], 1, a2) != 1)
  {
LABEL_6:
    (*(v36 + 8))(v12, v37);
    v27 = 0;
    goto LABEL_8;
  }

  v26(v12, v8);
  v27 = 1;
LABEL_8:
  v26(v40, v8);
  return v27 & 1;
}

uint64_t LocalizedStringResource.hash(into:)(uint64_t a1)
{
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (!v1)
  {
    return sub_24AAB5514();
  }

  sub_24AAB5514();
  sub_24AAB4F64();
}

uint64_t LocalizedStringResource.hashValue.getter()
{
  sub_24AAB54F4();
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v0)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  return sub_24AAB5524();
}

uint64_t sub_24AA723B8()
{
  sub_24AAB54F4();
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v0)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  return sub_24AAB5524();
}

uint64_t sub_24AA72460(uint64_t a1)
{
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (!v1)
  {
    return sub_24AAB5514();
  }

  sub_24AAB5514();
  sub_24AAB4F64();
}

uint64_t sub_24AA72508(uint64_t a1)
{
  sub_24AAB54F4();
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v1)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  return sub_24AAB5524();
}

uint64_t _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v9 = sub_24AAB5554();
      sub_24AA15ED0(v3, v2, 0);
      v10 = v6;
      v11 = v5;
      v12 = 0;
      goto LABEL_11;
    }

    goto LABEL_20;
  }

  if (v4 != 1)
  {
    switch(v3)
    {
      case 1:
        if (v7 != 2 || v6 != 1 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v16 = 1;
        sub_24AA15ED0(1, 0, 2);
        return v16;
      case 2:
        if (v7 != 2 || v6 != 2 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 2;
        goto LABEL_257;
      case 3:
        if (v7 != 2 || v6 != 3 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 3;
        goto LABEL_257;
      case 4:
        if (v7 != 2 || v6 != 4 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 4;
        goto LABEL_257;
      case 5:
        if (v7 != 2 || v6 != 5 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 5;
        goto LABEL_257;
      case 6:
        if (v7 != 2 || v6 != 6 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 6;
        goto LABEL_257;
      case 7:
        if (v7 != 2 || v6 != 7 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 7;
        goto LABEL_257;
      case 8:
        if (v7 != 2 || v6 != 8 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 8;
        goto LABEL_257;
      case 9:
        if (v7 != 2 || v6 != 9 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 9;
        goto LABEL_257;
      case 10:
        if (v7 != 2 || v6 != 10 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 10;
        goto LABEL_257;
      case 11:
        if (v7 != 2 || v6 != 11 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 11;
        goto LABEL_257;
      case 12:
        if (v7 != 2 || v6 != 12 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 12;
        goto LABEL_257;
      case 13:
        if (v7 != 2 || v6 != 13 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 13;
        goto LABEL_257;
      case 14:
        if (v7 != 2 || v6 != 14 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 14;
        goto LABEL_257;
      case 15:
        if (v7 != 2 || v6 != 15 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 15;
        goto LABEL_257;
      case 16:
        if (v7 != 2 || v6 != 16 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 16;
        goto LABEL_257;
      case 17:
        if (v7 != 2 || v6 != 17 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 17;
        goto LABEL_257;
      case 18:
        if (v7 != 2 || v6 != 18 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 18;
        goto LABEL_257;
      case 19:
        if (v7 != 2 || v6 != 19 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 19;
        goto LABEL_257;
      case 20:
        if (v7 != 2 || v6 != 20 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 20;
        goto LABEL_257;
      case 21:
        if (v7 != 2 || v6 != 21 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 21;
        goto LABEL_257;
      case 22:
        if (v7 != 2 || v6 != 22 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 22;
        goto LABEL_257;
      case 23:
        if (v7 != 2 || v6 != 23 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 23;
        goto LABEL_257;
      case 24:
        if (v7 != 2 || v6 != 24 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 24;
        goto LABEL_257;
      case 25:
        if (v7 != 2 || v6 != 25 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 25;
        goto LABEL_257;
      case 26:
        if (v7 != 2 || v6 != 26 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 26;
        goto LABEL_257;
      default:
        if (v7 != 2 || (v5 | v6) != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v15 = 0;
LABEL_257:
        sub_24AA15ED0(v15, 0, 2);
        v16 = 1;
        break;
    }

    return v16;
  }

  if (v7 != 1)
  {

LABEL_20:
    sub_24AA15F10(v6, v5, v7);
    sub_24AA15ED0(v3, v2, v4);
    sub_24AA15ED0(v6, v5, v7);
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    LOBYTE(v9) = sub_24AAB5474();
    sub_24AA15F10(v6, v5, 1);
    sub_24AA15F10(v3, v2, 1);
    sub_24AA15ED0(v3, v2, 1);
    v10 = v6;
    v11 = v5;
    v12 = 1;
LABEL_11:
    sub_24AA15ED0(v10, v11, v12);
    return v9 & 1;
  }

  v16 = 1;
  sub_24AA15F10(*a1, v2, 1);
  sub_24AA15F10(v3, v2, 1);
  sub_24AA15ED0(v3, v2, 1);
  sub_24AA15ED0(v3, v2, 1);
  return v16;
}

unint64_t sub_24AA72C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF86A10;
  if (!qword_27EF86A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86A10);
  }

  return result;
}

unint64_t sub_24AA72C74()
{
  result = qword_27EF86A18;
  if (!qword_27EF86A18)
  {
    sub_24AAB2B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86A18);
  }

  return result;
}

uint64_t sub_24AA72CCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_24AA72D14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_24AA72D58(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_24AA72D80(uint64_t a1, unsigned int a2)
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
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AA72DBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
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

uint64_t sub_24AA72E10(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_24AA72E4C(uint64_t a1, uint64_t a2)
{
  sub_24AA43A54(a1, v55);
  sub_24AA43A54(a2, v57);
  if (v56 > 1u)
  {
    if (v56 == 2)
    {
      sub_24AA43A54(v55, v53);
      if (v59 == 2)
      {
LABEL_16:
        sub_24AA15A64(v53, &v50);
        sub_24AA15A64(v57, v48);
        v21 = *(&v51 + 1);
        v22 = __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
        v44 = v21;
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v43);
        (*(*(v21 - 8) + 16))(boxed_opaque_existential_1Tm, v22, v21);
        v24 = v49;
        v25 = __swift_project_boxed_opaque_existential_1(v48, v49);
        *(&v37 + 1) = v24;
        v26 = __swift_allocate_boxed_opaque_existential_1Tm(&v36);
        (*(*(v24 - 8) + 16))(v26, v25, v24);
        sub_24AA168B4(v43, v41);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85070, &qword_24AAB6A10);
        if (swift_dynamicCast())
        {
          v27 = *(&v46 + 1);
          v28 = v47;
          __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
          v19 = sub_24AA71DB8(&v36, v27, v28);
          __swift_destroy_boxed_opaque_existential_1Tm(&v45);
        }

        else
        {
          v47 = 0;
          v45 = 0u;
          v46 = 0u;
          sub_24AA169C4(&v45, &qword_27EF85078, &qword_24AAB6A18);
          v19 = 0;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v36);
        v29 = v43;
LABEL_32:
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        v33 = &v50;
LABEL_33:
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        sub_24AA4214C(v55);
        return v19 & 1;
      }
    }

    else
    {
      if (v56 != 3)
      {
        goto LABEL_20;
      }

      sub_24AA43A54(v55, v53);
      if (v59 == 3)
      {
        sub_24AA15A64(v53, &v50);
        sub_24AA15A64(v57, v48);
        sub_24AA15A64(v54, &v45);
        sub_24AA15A64(&v58, v43);
        v3 = *(&v51 + 1);
        v4 = __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
        v42 = v3;
        v5 = __swift_allocate_boxed_opaque_existential_1Tm(v41);
        (*(*(v3 - 8) + 16))(v5, v4, v3);
        v6 = v49;
        v7 = __swift_project_boxed_opaque_existential_1(v48, v49);
        v40 = v6;
        v8 = __swift_allocate_boxed_opaque_existential_1Tm(v39);
        (*(*(v6 - 8) + 16))(v8, v7, v6);
        sub_24AA168B4(v41, v35);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85070, &qword_24AAB6A10);
        if (swift_dynamicCast())
        {
          v9 = *(&v37 + 1);
          v10 = v38;
          __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
          LOBYTE(v9) = sub_24AA71DB8(v39, v9, v10);
          __swift_destroy_boxed_opaque_existential_1Tm(&v36);
          __swift_destroy_boxed_opaque_existential_1Tm(v39);
          __swift_destroy_boxed_opaque_existential_1Tm(v41);
          if (v9)
          {
            v11 = *(&v46 + 1);
            v12 = __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
            v42 = v11;
            v13 = __swift_allocate_boxed_opaque_existential_1Tm(v41);
            (*(*(v11 - 8) + 16))(v13, v12, v11);
            v14 = v44;
            v15 = __swift_project_boxed_opaque_existential_1(v43, v44);
            v40 = v14;
            v16 = __swift_allocate_boxed_opaque_existential_1Tm(v39);
            (*(*(v14 - 8) + 16))(v16, v15, v14);
            sub_24AA168B4(v41, v35);
            if (swift_dynamicCast())
            {
              v17 = *(&v37 + 1);
              v18 = v38;
              __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
              v19 = sub_24AA71DB8(v39, v17, v18);
              __swift_destroy_boxed_opaque_existential_1Tm(&v36);
            }

            else
            {
              v38 = 0;
              v36 = 0u;
              v37 = 0u;
              sub_24AA169C4(&v36, &qword_27EF85078, &qword_24AAB6A18);
              v19 = 0;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v39);
            __swift_destroy_boxed_opaque_existential_1Tm(v41);
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v38 = 0;
          v36 = 0u;
          v37 = 0u;
          sub_24AA169C4(&v36, &qword_27EF85078, &qword_24AAB6A18);
          __swift_destroy_boxed_opaque_existential_1Tm(v39);
          __swift_destroy_boxed_opaque_existential_1Tm(v41);
          v19 = 0;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        v29 = &v45;
        goto LABEL_32;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v54);
    }

LABEL_19:
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    goto LABEL_20;
  }

  if (v56)
  {
    if (v56 == 1)
    {
      sub_24AA43A54(v55, v53);
      if (v59 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }
  }

  else
  {
    sub_24AA43A54(v55, v53);
    v20 = *&v53[0];
    if (!v59)
    {
      v30 = *&v57[0];
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85010, &qword_24AABB840);
      v48[0] = v20;
      *(&v46 + 1) = v49;
      *&v45 = v30;
      sub_24AA168B4(v48, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85070, &qword_24AAB6A10);
      if (swift_dynamicCast())
      {
        v31 = *(&v51 + 1);
        v32 = v52;
        __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
        v19 = sub_24AA71DB8(&v45, v31, v32);
        __swift_destroy_boxed_opaque_existential_1Tm(&v50);
      }

      else
      {
        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        sub_24AA169C4(&v50, &qword_27EF85078, &qword_24AAB6A18);
        v19 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v45);
      v33 = v48;
      goto LABEL_33;
    }
  }

LABEL_20:
  sub_24AA169C4(v55, &qword_27EF86A20, &qword_24AABB838);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_24AA734BC(uint64_t a1, uint64_t a2)
{
  sub_24AA43A54(a1, v5);
  v3 = v6 == 0;
  sub_24AA4214C(v5);
  sub_24AA43A54(a2, v5);
  LODWORD(a2) = v6;
  sub_24AA4214C(v5);
  return v3 ^ (a2 == 0);
}

uint64_t (*EnvironmentValues.performCallAction.getter(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  sub_24AA73590(a1, a2, a3);
  sub_24AAB40A4();
  *(swift_allocObject() + 16) = v4;
  return sub_24AA736C8;
}

unint64_t sub_24AA73590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF86A30;
  if (!qword_27EF86A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86A30);
  }

  return result;
}

uint64_t sub_24AA73690()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t EnvironmentValues.performCallAction.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_24AA73590(v4, v5, v6);
  return sub_24AAB40B4();
}

uint64_t sub_24AA73794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24AA16768(a1, v13);
  v11[0] = swift_getKeyPath();
  v11[1] = 0;
  v12 = 0;
  *&v13[40] = xmmword_24AABB860;
  v14 = 0;
  sub_24AA16768(a1 + 40, v9);
  v7[0] = swift_getKeyPath();
  v7[1] = 0;
  v8 = 0;
  *&v9[40] = xmmword_24AABB860;
  v10 = 0;
  sub_24AA58880(v11, v6);
  sub_24AA58880(v7, v5);
  sub_24AA58880(v6, a2);
  sub_24AA58880(v5, a2 + 88);
  sub_24AA588DC(v7);
  sub_24AA588DC(v11);
  sub_24AA588DC(v5);
  return sub_24AA588DC(v6);
}

uint64_t sub_24AA7387C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24AAB41B4();
  *(a2 + 8) = 0x4018000000000000;
  *(a2 + 16) = 0;
  return sub_24AA73794(v2, a2 + 24);
}

uint64_t sub_24AA738B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24AA16768(a1, v12);
  v10[0] = swift_getKeyPath();
  v10[1] = 0;
  v11 = 0;
  v12[5] = 0x4041800000000000;
  sub_24AA16768(a1 + 40, v9);
  v7[0] = swift_getKeyPath();
  v7[1] = 0;
  v8 = 0;
  v9[5] = 0x4041800000000000;
  sub_24AA158F8(v10, v6);
  sub_24AA158F8(v7, v5);
  sub_24AA158F8(v6, a2);
  sub_24AA158F8(v5, a2 + 72);
  sub_24AA16820(v7);
  sub_24AA16820(v10);
  sub_24AA16820(v5);
  return sub_24AA16820(v6);
}

uint64_t sub_24AA73998@<X0>(uint64_t a6@<X8>)
{
  *a6 = sub_24AAB4104();
  *(a6 + 8) = 0x4024000000000000;
  *(a6 + 16) = 0;
  return sub_24AA738B8(v6, a6 + 24);
}

void (*EnvironmentValues.performCallAction.modify(uint64_t (***a1)()))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v6 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_24AA73590(v3, v4, v5);
  sub_24AAB40A4();
  v7 = swift_allocObject();
  *(v7 + 16) = *(v6 + 16);
  *v6 = sub_24AA77904;
  *(v6 + 8) = v7;
  return sub_24AA73ACC;
}

void sub_24AA73ACC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v2[2] = sub_24AA778D4;
    v2[3] = v5;

    sub_24AAB40B4();
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v2[2] = sub_24AA778D4;
    v2[3] = v6;
    sub_24AAB40B4();
  }

  free(v2);
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24AA73BF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AA73C3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24AA73CC0@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_24AAB42D4();
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86AF8, &qword_24AABBD90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B00, &qword_24AABBD98);
  v10 = *(v9 - 8);
  v24 = v9;
  v25 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B08, &qword_24AABBDA0);
  MEMORY[0x28223BE20](v23);
  v14 = &v22 - v13;
  v29 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84ED8, &qword_24AAB6708);
  sub_24AA15A84();
  sub_24AAB4624();
  sub_24AAB42C4();
  v15 = sub_24AA16A68(&qword_27EF86B10, &qword_27EF86AF8, &qword_24AABBD90, MEMORY[0x277CDE5B0]);
  v16 = sub_24AA77548(&qword_27EF86B18, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  sub_24AAB47D4();
  (*(v26 + 8))(v4, v2);
  (*(v6 + 8))(v8, v5);
  v30 = v5;
  v31 = v2;
  v32 = v15;
  v33 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v24;
  sub_24AAB48B4();
  (*(v25 + 8))(v12, v17);
  v18 = sub_24AAB4A44();
  KeyPath = swift_getKeyPath();
  v20 = &v14[*(v23 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  v28 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B20, &qword_24AABBDD8);
  sub_24AA77114();
  sub_24AA77348();
  sub_24AAB4884();
  return sub_24AA169C4(v14, &qword_27EF86B08, &qword_24AABBDA0);
}

uint64_t sub_24AA7411C(void *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v2);
  v9 = (*(v3 + 16))(v2, v3);
  swift_getKeyPath();
  sub_24AA77500(a1, v8);
  v4 = swift_allocObject();
  v5 = v8[1];
  v4[1] = v8[0];
  v4[2] = v5;
  v6 = v8[3];
  v4[3] = v8[2];
  v4[4] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F20, &qword_24AABBE20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EF0, &qword_24AAB6710);
  sub_24AA16A68(&qword_27EF84F28, &qword_27EF84F20, &qword_24AABBE20, MEMORY[0x277D83980]);
  sub_24AA77548(&qword_27EF84F30, type metadata accessor for MenuItem, &unk_24AABE8C0);
  sub_24AA15B08();
  return sub_24AAB4C74();
}

uint64_t sub_24AA742BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v45 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F08, &qword_24AAB6718);
  MEMORY[0x28223BE20](v44);
  v5 = &v38[-v4];
  v6 = sub_24AAB2B84();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F38, &unk_24AAB6780);
  MEMORY[0x28223BE20](v9);
  v11 = &v38[-v10];
  v12 = sub_24AAB4C64();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for MenuItem(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v38[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24AA15E0C(a1, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
  {
    sub_24AAB4C54();
    (*(v13 + 16))(v11, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_24AA77548(&qword_27EF84EF8, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    sub_24AA15BC4();
    sub_24AAB42B4();
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v21 = &v18[*(v19 + 48)];
    v40 = v9;
    v22 = *v21;
    v23 = *(v21 + 1);
    v39 = v18[*(v19 + 64)];
    v24 = v5;
    v25 = v21[16];
    (*(v42 + 32))(v8, v18, v43);
    sub_24AA77500(v41, v46);
    v26 = swift_allocObject();
    *(v26 + 16) = v22;
    *(v26 + 24) = v23;
    *(v26 + 32) = v25;
    v27 = v46[1];
    *(v26 + 40) = v46[0];
    *(v26 + 56) = v27;
    v28 = v46[3];
    *(v26 + 72) = v46[2];
    *(v26 + 88) = v28;
    MEMORY[0x28223BE20](v26);
    *&v38[-16] = v8;
    v29 = v22;
    v30 = v22;
    v31 = v23;
    v32 = v23;
    v34 = v33;
    sub_24AA15F00(v29, v31, v33);
    sub_24AAB4BB4();
    KeyPath = swift_getKeyPath();
    v36 = swift_allocObject();
    *(v36 + 16) = (v39 & 1) == 0;
    v37 = (v24 + *(v44 + 36));
    *v37 = KeyPath;
    v37[1] = sub_24AA7790C;
    v37[2] = v36;
    sub_24AA77748(v24, v11);
    swift_storeEnumTagMultiPayload();
    sub_24AA77548(&qword_27EF84EF8, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    sub_24AA15BC4();
    sub_24AAB42B4();
    sub_24AA15EC0(v30, v32, v34);
    sub_24AA169C4(v24, &qword_27EF84F08, &qword_24AAB6718);
    return (*(v42 + 8))(v8, v43);
  }
}

uint64_t sub_24AA7480C(void *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v2);
  v9 = (*(v3 + 16))(v2, v3);
  swift_getKeyPath();
  sub_24AA77500(a1, v8);
  v4 = swift_allocObject();
  v5 = v8[1];
  v4[1] = v8[0];
  v4[2] = v5;
  v6 = v8[3];
  v4[3] = v8[2];
  v4[4] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F20, &qword_24AABBE20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B50, &qword_24AABBDF0);
  sub_24AA16A68(&qword_27EF84F28, &qword_27EF84F20, &qword_24AABBE20, MEMORY[0x277D83980]);
  sub_24AA77548(&qword_27EF84F30, type metadata accessor for MenuItem, &unk_24AABE8C0);
  sub_24AA773CC();
  return sub_24AAB4C74();
}

uint64_t sub_24AA749AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F18, &qword_24AAB6720);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B60, &unk_24AABBDF8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v35 - v9;
  v11 = type metadata accessor for MenuItem(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24AAB2B84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA15E0C(a1, v13);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  if ((*(*(v18 - 8) + 48))(v13, 1, v18) == 1)
  {
    sub_24AA77590(v13);
    return (*(v8 + 56))(a3, 1, 1, v7);
  }

  else
  {
    v36 = v7;
    v37 = a3;
    v20 = &v13[*(v18 + 48)];
    v21 = *v20;
    v22 = *(v20 + 1);
    v23 = v20[16];
    v24 = v13[*(v18 + 64)];
    (*(v15 + 32))(v17, v13, v14);
    if (v24 == 1)
    {
      sub_24AA77500(v38, v42);
      v25 = swift_allocObject();
      v35[1] = v35;
      *(v25 + 16) = v21;
      *(v25 + 24) = v22;
      *(v25 + 32) = v23;
      v26 = v42[1];
      *(v25 + 40) = v42[0];
      *(v25 + 56) = v26;
      v27 = v42[3];
      *(v25 + 72) = v42[2];
      *(v25 + 88) = v27;
      MEMORY[0x28223BE20](v25);
      v35[-2] = v17;
      sub_24AA15F00(v21, v22, v23);
      v38 = v14;
      v28 = v23;
      v29 = v39;
      sub_24AAB4BB4();
      v30 = v28;
      v14 = v38;
      sub_24AA15EC0(v21, v22, v30);
      v32 = v40;
      v31 = v41;
      (*(v40 + 32))(v10, v29, v41);
      v33 = 0;
    }

    else
    {
      sub_24AA15EC0(v21, v22, v23);
      v33 = 1;
      v32 = v40;
      v31 = v41;
    }

    (*(v32 + 56))(v10, v33, 1, v31);
    v34 = v37;
    sub_24AA775EC(v10, v37);
    (*(v8 + 56))(v34, 0, 1, v36);
    return (*(v15 + 8))(v17, v14);
  }
}

double sub_24AA74E20(void (*a1)(uint64_t), uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_24AAB4094();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 0)
  {
    a1(v10);
  }

  else
  {
    v14 = *a4;
    v13 = *(a4 + 8);
    if (*(a4 + 16) == 1)
    {
    }

    else
    {
      v16 = v10;

      sub_24AAB5134();
      v17 = sub_24AAB44B4();
      sub_24AAB3A54();

      sub_24AAB4084();
      swift_getAtKeyPath();
      sub_24AA15934(v14, v13, 0);
      (*(v9 + 8))(v12, v16);
      v14 = v19[0];
    }

    v19[0] = a1;
    v19[1] = a2;
    v20 = a3;
    v14(v19);
  }

  return result;
}

uint64_t sub_24AA74FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24AAB2CD4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24AAB4ED4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24AAB2B84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  sub_24AAB2B14();
  if (qword_27EF84C50 != -1)
  {
    swift_once();
  }

  v10 = qword_27EF919A8;
  sub_24AAB2CC4();
  v22 = sub_24AAB4F14();
  v23 = v11;
  sub_24AA15894(v22, v11, v12);
  v13 = sub_24AAB4774();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = (*(v7 + 8))(v9, v6);
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  return result;
}

uint64_t sub_24AA75208@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v110 = a1;
  v112 = sub_24AAB4354();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v109 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_24AAB4404();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24AAB2CD4();
  MEMORY[0x28223BE20](v5 - 8);
  v104 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24AAB4ED4();
  MEMORY[0x28223BE20](v7 - 8);
  v101 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_24AAB2B84();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v102 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v113 = sub_24AAB4C44();
  MEMORY[0x28223BE20](v113);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24AAB3F14();
  MEMORY[0x28223BE20](v12);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A38, &qword_24AABB9D0);
  MEMORY[0x28223BE20](v15);
  v17 = &v87 - v16;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A40, &qword_24AABB9D8);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v19 = &v87 - v18;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A48, &qword_24AABB9E0);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v87 - v20;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A50, &qword_24AABB9E8);
  MEMORY[0x28223BE20](v94);
  v22 = &v87 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A58, &qword_24AABB9F0);
  MEMORY[0x28223BE20](v23 - 8);
  v95 = &v87 - v24;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A60, &qword_24AABB9F8);
  MEMORY[0x28223BE20](v97);
  v96 = &v87 - v25;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A68, &qword_24AABBA00);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v87 - v26;
  sub_24AA58880(v1, &v116);
  v27 = swift_allocObject();
  v28 = v119;
  *(v27 + 48) = v118;
  *(v27 + 64) = v28;
  *(v27 + 80) = v120;
  *(v27 + 96) = v121;
  v29 = v117;
  *(v27 + 16) = v116;
  *(v27 + 32) = v29;
  v114 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A70, &qword_24AABBA08);
  sub_24AA767BC();
  sub_24AAB4BB4();
  v30 = *(v1 + 48);
  v31 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  v88 = sub_24AAA9504(v30, v31);
  v87 = v32;
  if (*(v2 + 81))
  {
    v33 = *MEMORY[0x277CE0118];
    v34 = sub_24AAB4184();
    (*(*(v34 - 8) + 104))(v11, v33, v34);
    sub_24AA77548(&qword_27EF86A90, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
  }

  else
  {
    v35 = *(v12 + 20);
    v36 = *MEMORY[0x277CE0118];
    v37 = sub_24AAB4184();
    (*(*(v37 - 8) + 104))(&v14[v35], v36, v37);
    __asm { FMOV            V0.2D, #12.0 }

    *v14 = _Q0;
    sub_24AA77548(&qword_27EF86AD0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  }

  v43 = sub_24AAB4C94();
  v44 = *(v2 + 64);
  v45 = *(v2 + 72);
  v46 = *(v2 + 80);
  v113 = 0u;
  if (v46 == 1)
  {
    sub_24AA16768(v2 + 24, &v116);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A28, &qword_24AABB848);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EA0, &unk_24AAB66B0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v115);
    }

    else
    {
      v113 = xmmword_24AABB870;
    }
  }

  *&v17[v15[11]] = v43;
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v47 = v15[9];
  *&v17[v47] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  v48 = &v17[v15[10]];
  v49 = v87;
  *v48 = v88;
  v48[1] = v49;
  v50 = &v17[v15[12]];
  *v50 = v44;
  *(v50 + 1) = v45;
  v50[16] = v46;
  v51 = &v17[v15[13]];
  v52 = v113;
  *v51 = v113;
  v51[1] = v52;
  sub_24AA16A68(&qword_27EF86A98, &qword_27EF86A40, &qword_24AABB9D8, MEMORY[0x277CDF028]);
  sub_24AA16A68(&qword_27EF86AA0, &qword_27EF86A38, &qword_24AABB9D0, &unk_24AAB8F68);
  v53 = v91;
  v54 = v90;
  sub_24AAB47E4();
  sub_24AA169C4(v17, &qword_27EF86A38, &qword_24AABB9D0);
  (*(v89 + 8))(v19, v54);
  v55 = *(v2 + 48);
  v56 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), v55);
  LOBYTE(v55) = (*(v56 + 32))(v55, v56);
  KeyPath = swift_getKeyPath();
  v58 = swift_allocObject();
  *(v58 + 16) = v55 & 1;
  (*(v92 + 32))(v22, v53, v93);
  v59 = &v22[*(v94 + 36)];
  *v59 = KeyPath;
  v59[1] = sub_24AA56AD0;
  v59[2] = v58;
  v60 = *(v2 + 48);
  v61 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), v60);
  v62 = v102;
  (*(v61 + 16))(v60, v61);
  sub_24AAB2B14();
  if (qword_27EF84C50 != -1)
  {
    swift_once();
  }

  v63 = qword_27EF919A8;
  sub_24AAB2CC4();
  *&v116 = sub_24AAB4F14();
  *(&v116 + 1) = v64;
  sub_24AA15894(v116, v64, v65);
  v66 = sub_24AAB4774();
  v68 = v67;
  v70 = v69;
  (*(v103 + 8))(v62, v105);
  sub_24AA768E8();
  v71 = v95;
  sub_24AAB4854();
  sub_24AA158E8(v66, v68, v70 & 1);

  sub_24AA169C4(v22, &qword_27EF86A50, &qword_24AABB9E8);
  v72 = sub_24AAB4D64();
  v74 = v73;
  v75 = v97;
  v76 = v96;
  v77 = &v96[*(v97 + 36)];
  sub_24AA763B0(v2, v77);
  *(v77 + 8) = v72;
  *(v77 + 9) = v74;
  sub_24AA76A70(v71, v76);
  v78 = v106;
  sub_24AAB43F4();
  v79 = sub_24AA76AE0();
  v80 = v98;
  sub_24AAB4894();
  (*(v107 + 8))(v78, v108);
  sub_24AA169C4(v76, &qword_27EF86A60, &qword_24AABB9F8);
  sub_24AA58880(v2, &v116);
  v81 = swift_allocObject();
  v82 = v119;
  *(v81 + 48) = v118;
  *(v81 + 64) = v82;
  *(v81 + 80) = v120;
  *(v81 + 96) = v121;
  v83 = v117;
  *(v81 + 16) = v116;
  *(v81 + 32) = v83;
  v84 = v109;
  sub_24AAB4344();
  v115[0] = v75;
  v115[1] = v79;
  swift_getOpaqueTypeConformance2();
  v85 = v100;
  sub_24AAB4874();

  (*(v111 + 8))(v84, v112);
  return (*(v99 + 8))(v80, v85);
}

uint64_t sub_24AA76018@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24AAB2CD4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24AAB4ED4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24AAB2B84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA16768((a1 + 3), &v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A28, &qword_24AABB848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EA0, &unk_24AAB66B0);
  if (swift_dynamicCast())
  {
    sub_24AA15A64(&v30, &v36);
    v10 = *(&v37 + 1);
    v11 = v38;
    __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
    (*(v11 + 16))(v10, v11);
    v30 = sub_24AAB4AC4();
    v31 = 0uLL;
    LOBYTE(v32) = 0;
    sub_24AAB42B4();
    v28 = v33;
    v29 = v34;
    v12 = v35;
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v36);
    v15 = v28;
    v14 = v29;
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_24AA169C4(&v30, &qword_27EF86AD8, &qword_24AABBB08);
    v16 = a1[6];
    v17 = a1[7];
    __swift_project_boxed_opaque_existential_1(a1 + 3, v16);
    (*(v17 + 16))(v16, v17);
    sub_24AAB2B14();
    if (qword_27EF84C50 != -1)
    {
      swift_once();
    }

    v18 = qword_27EF919A8;
    sub_24AAB2CC4();
    *&v36 = sub_24AAB4F14();
    *(&v36 + 1) = v19;
    sub_24AA15894(v36, v19, v20);
    v21 = sub_24AAB4774();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    (*(v7 + 8))(v9, v6);
    *&v33 = v21;
    *(&v33 + 1) = v23;
    *&v34 = v25 & 1;
    *(&v34 + 1) = v27;
    v35 = 1;
    result = sub_24AAB42B4();
    v14 = v37;
    v15 = v36;
    v12 = v38;
  }

  *a2 = v15;
  *(a2 + 16) = v14;
  *(a2 + 32) = v12;
  return result;
}

double sub_24AA763B0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_24AA16768(a1 + 24, &KeyPath);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A28, &qword_24AABB848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EA8, &unk_24AABBAD0);
  if (swift_dynamicCast())
  {
    sub_24AA15A64(v11, v13);
    v3 = v14;
    v4 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v5 = *((*(v4 + 16))(v3, v4) + 16);

    if (v5)
    {
      sub_24AA16768(v13, v10 + 8);
      KeyPath = swift_getKeyPath();
      LOBYTE(v10[0]) = 0;
      v6 = v10[2];
      a2[2] = v10[1];
      a2[3] = v6;
      v7 = v10[0];
      *a2 = KeyPath;
      a2[1] = v7;
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_24AA169C4(v11, &qword_27EF84EB0, &unk_24AAB66C0);
  }

  result = 0.0;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

uint64_t sub_24AA764F8(void (**a1)(__int128 *))
{
  v2 = sub_24AAB4094();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA16768((a1 + 3), &v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A28, &qword_24AABB848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F48, &unk_24AABBAC0);
  if (swift_dynamicCast())
  {
    sub_24AA15A64(&v12, v17);
    v7 = *a1;
    v6 = a1[1];
    if (*(a1 + 16) == 1)
    {
    }

    else
    {

      sub_24AAB5134();
      v9 = sub_24AAB44B4();
      sub_24AAB3A54();

      sub_24AAB4084();
      swift_getAtKeyPath();
      sub_24AA15934(v7, v6, 0);
      (*(v3 + 8))(v5, v2);
      v7 = v15;
    }

    v10 = v18;
    v11 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v11 + 16))(&v15, v10, v11);
    v12 = v15;
    LOBYTE(v13) = v16;
    v7(&v12);

    sub_24AA15ED0(v12, *(&v12 + 1), v13);
    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    return sub_24AA169C4(&v12, &qword_27EF84F50, &qword_24AAB67C0);
  }
}

double sub_24AA76778@<D0>(uint64_t a1@<X8>)
{
  sub_24AA76018(*(v1 + 16), v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

unint64_t sub_24AA767BC()
{
  result = qword_27EF86A78;
  if (!qword_27EF86A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86A70, &qword_24AABBA08);
    sub_24AA76840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86A78);
  }

  return result;
}

unint64_t sub_24AA76840()
{
  result = qword_27EF86A80;
  if (!qword_27EF86A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86A88, &qword_24AABBA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86A80);
  }

  return result;
}

unint64_t sub_24AA768E8()
{
  result = qword_27EF86AA8;
  if (!qword_27EF86AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86A50, &qword_24AABB9E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86A40, &qword_24AABB9D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86A38, &qword_24AABB9D0);
    sub_24AA16A68(&qword_27EF86A98, &qword_27EF86A40, &qword_24AABB9D8, MEMORY[0x277CDF028]);
    sub_24AA16A68(&qword_27EF86AA0, &qword_27EF86A38, &qword_24AABB9D0, &unk_24AAB8F68);
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF84E40, &qword_27EF84E48, &qword_24AAB8FD0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86AA8);
  }

  return result;
}

uint64_t sub_24AA76A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A58, &qword_24AABB9F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AA76AE0()
{
  result = qword_27EF86AB0;
  if (!qword_27EF86AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86A60, &qword_24AABB9F8);
    sub_24AA76B98();
    sub_24AA16A68(&qword_27EF86AC0, &qword_27EF86AC8, &qword_24AABBAB8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86AB0);
  }

  return result;
}

unint64_t sub_24AA76B98()
{
  result = qword_27EF86AB8;
  if (!qword_27EF86AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86A58, &qword_24AABB9F0);
    sub_24AA768E8();
    sub_24AA77548(&qword_27EF84FE8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86AB8);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24AA76C68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AA76CB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_24AA76D2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AA76D74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24AA76DFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AA76E44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RoundedControl.Style(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_24AA76F58()
{
  result = qword_27EF86AE0;
  if (!qword_27EF86AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86AE8, qword_24AABBC30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86A60, &qword_24AABB9F8);
    sub_24AA76AE0();
    swift_getOpaqueTypeConformance2();
    sub_24AA77548(&qword_27EF84FE8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86AE0);
  }

  return result;
}

unint64_t sub_24AA77054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF86AF0;
  if (!qword_27EF86AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86AF0);
  }

  return result;
}

unint64_t sub_24AA77114()
{
  result = qword_27EF86B28;
  if (!qword_27EF86B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86B08, &qword_24AABBDA0);
    sub_24AA771CC();
    sub_24AA16A68(&qword_27EF85DF0, &qword_27EF85DF8, &qword_24AAB8C68, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86B28);
  }

  return result;
}

unint64_t sub_24AA771CC()
{
  result = qword_27EF86B30;
  if (!qword_27EF86B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86B38, &unk_24AABBDE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86AF8, &qword_24AABBD90);
    sub_24AAB42D4();
    sub_24AA16A68(&qword_27EF86B10, &qword_27EF86AF8, &qword_24AABBD90, MEMORY[0x277CDE5B0]);
    sub_24AA77548(&qword_27EF86B18, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_24AA77548(&qword_27EF84FE8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86B30);
  }

  return result;
}

unint64_t sub_24AA77348()
{
  result = qword_27EF86B40;
  if (!qword_27EF86B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86B20, &qword_24AABBDD8);
    sub_24AA773CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86B40);
  }

  return result;
}

unint64_t sub_24AA773CC()
{
  result = qword_27EF86B48;
  if (!qword_27EF86B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86B50, &qword_24AABBDF0);
    sub_24AA77450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86B48);
  }

  return result;
}

unint64_t sub_24AA77450()
{
  result = qword_27EF86B58;
  if (!qword_27EF86B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86B60, &unk_24AABBDF8);
    sub_24AA16A68(&qword_27EF84F10, &qword_27EF84F18, &qword_24AAB6720, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86B58);
  }

  return result;
}

uint64_t sub_24AA77548(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AA77590(uint64_t a1)
{
  v2 = type metadata accessor for MenuItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AA775EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B60, &unk_24AABBDF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_21Tm(uint64_t a1)
{
  sub_24AA15934(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 40));

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_76Tm()
{
  sub_24AA15EC0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_24AA15934(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_24AA77748(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F08, &qword_24AAB6718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA77840()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86B08, &qword_24AABBDA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86B20, &qword_24AABBDD8);
  sub_24AA77114();
  sub_24AA77348();
  return swift_getOpaqueTypeConformance2();
}

void *CallNotificationView.init(viewModel:)@<X0>(void *a2@<X8>)
{
  a2[2] = 0;
  v3 = *(type metadata accessor for CallNotificationView(0) + 24);
  *(a2 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CallNotificationViewModel(0);
  result = sub_24AAB4B54();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t View.notificationBackground()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v21 = a3;
  v5 = type metadata accessor for NotificationBackground(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24AAB3EE4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v15 = *(v5 + 20);
  *&v7[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x24C225190](v7, a1, v5, a2);
  sub_24AA81D94(v7, type metadata accessor for NotificationBackground);
  v16 = sub_24AA80D80(&qword_27EF86B88, type metadata accessor for NotificationBackground, "\tBu7PG");
  v22 = a2;
  v23 = v16;
  swift_getWitnessTable();
  v17 = *(v9 + 16);
  v17(v14, v12, v8);
  v18 = *(v9 + 8);
  v18(v12, v8);
  v17(v21, v14, v8);
  return (v18)(v14, v8);
}

uint64_t CallNotificationView.viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  return v1;
}

void *sub_24AA77D78@<X0>(void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  result = sub_24AAB4B64();
  *a2 = v4;
  return result;
}

uint64_t sub_24AA77DD0(uint64_t *a1, void *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  return sub_24AAB4B74();
}

void (*CallNotificationView.viewModel.modify(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = v1[1];
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  return sub_24AA77F28;
}

void sub_24AA77F28(uint64_t a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  v3[2] = *(*a1 + 48);
  v3[5] = v3[4];
  v3[3] = v4;
  if (a2)
  {

    sub_24AAB4B74();
  }

  else
  {
    sub_24AAB4B74();
  }

  free(v3);
}

uint64_t CallNotificationView.$viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B84();
  return v1;
}

uint64_t sub_24AA7802C@<X0>(void *a1@<X8>)
{
  v3 = sub_24AAB4094();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CallNotificationView(0);
  sub_24AA1695C(v1 + *(v10 + 24), v9, &qword_27EF85290, &qword_24AAB9020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24AAB3CE4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24AAB5134();
    v13 = sub_24AAB44B4();
    sub_24AAB3A54();

    sub_24AAB4084();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24AA78234@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = sub_24AAB3CE4();
  v95 = *(v3 - 8);
  v96 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v92 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v91 = &v79 - v6;
  v7 = sub_24AAB4DB4();
  v93 = *(v7 - 8);
  v94 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85438, &qword_24AABC780);
  MEMORY[0x28223BE20](v89);
  v90 = &v79 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86EB8, &qword_24AABC788);
  v99 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v88 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v87 = &v79 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86EC0, &qword_24AABC790);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v79 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86EC8, &qword_24AABC798);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v98 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - v24;
  v26 = *a1;
  v27 = a1[1];
  v100 = a1;
  v103 = v26;
  v104 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v28 = sub_24AA1F130();

  if (v28)
  {
    v29 = sub_24AAB40E4();
  }

  else
  {
    v29 = sub_24AAB4104();
  }

  *v25 = v29;
  *(v25 + 1) = 0;
  v25[16] = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86ED0, &qword_24AABC7A0);
  sub_24AA78B1C(v100, &v25[*(v30 + 44)]);
  v103 = v26;
  v104 = v27;
  sub_24AAB4B64();
  v31 = v101;
  swift_getKeyPath();
  v103 = v31;
  sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v32 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  swift_beginAccess();
  v33 = *(v31 + v32);

  if (v33 && (swift_getKeyPath(), v101 = v33, sub_24AA80D80(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel), sub_24AAB2CF4(), , v35 = *(v33 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel), v34 = *(v33 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel + 8), , v36 = , v34))
  {
    v101 = v35;
    v102 = v34;
    sub_24AA15894(v36, v37, v38);
    v39 = v20;
    v40 = sub_24AAB4774();
    v41 = v18;
    v43 = v42;
    v45 = v44;
    v85 = v9;
    sub_24AAB4554();
    v80 = sub_24AAB4704();
    v79 = v46;
    v86 = v11;
    v48 = v47;

    v49 = v40;
    v20 = v39;
    v50 = v43;
    v18 = v41;
    sub_24AA158E8(v49, v50, v45 & 1);

    v51 = [objc_opt_self() secondaryLabelColor];
    v101 = sub_24AAB49C4();
    v52 = v80;
    v53 = v79;
    v83 = sub_24AAB46F4();
    v82 = v54;
    v81 = v55;
    v84 = v56;
    LOBYTE(v55) = v48 & 1;
    v11 = v86;
    sub_24AA158E8(v52, v53, v55);

    v57 = v91;
    sub_24AA7802C(v91);
    v59 = v95;
    v58 = v96;
    v60 = v92;
    (*(v95 + 104))(v92, *MEMORY[0x277CDF3C0], v96);
    LOBYTE(v52) = sub_24AAB3CD4();
    v61 = *(v59 + 8);
    v61(v60, v58);
    v61(v57, v58);
    v62 = v93;
    v63 = MEMORY[0x277CE13B8];
    if ((v52 & 1) == 0)
    {
      v63 = MEMORY[0x277CE13B0];
    }

    v64 = v85;
    v65 = v94;
    (*(v93 + 104))(v85, *v63, v94);
    v66 = v90;
    (*(v62 + 32))(&v90[*(v89 + 36)], v64, v65);
    v67 = v82;
    *v66 = v83;
    *(v66 + 1) = v67;
    v66[16] = v81 & 1;
    *(v66 + 3) = v84;
    KeyPath = swift_getKeyPath();
    v69 = v66;
    v70 = v88;
    sub_24AA1A25C(v69, v88, &qword_27EF85438, &qword_24AABC780);
    v71 = v70 + *(v11 + 36);
    *v71 = KeyPath;
    *(v71 + 8) = 0;
    v72 = v70;
    v73 = v87;
    sub_24AA1A25C(v72, v87, &qword_27EF86EB8, &qword_24AABC788);
    sub_24AA1A25C(v73, v20, &qword_27EF86EB8, &qword_24AABC788);
    v74 = 0;
  }

  else
  {
    v74 = 1;
  }

  (*(v99 + 56))(v20, v74, 1, v11);
  v75 = v98;
  sub_24AA1695C(v25, v98, &qword_27EF86EC8, &qword_24AABC798);
  sub_24AA1695C(v20, v18, &qword_27EF86EC0, &qword_24AABC790);
  v76 = v97;
  sub_24AA1695C(v75, v97, &qword_27EF86EC8, &qword_24AABC798);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86ED8, &qword_24AABC7D0);
  sub_24AA1695C(v18, v76 + *(v77 + 48), &qword_27EF86EC0, &qword_24AABC790);
  sub_24AA169C4(v20, &qword_27EF86EC0, &qword_24AABC790);
  sub_24AA169C4(v25, &qword_27EF86EC8, &qword_24AABC798);
  sub_24AA169C4(v18, &qword_27EF86EC0, &qword_24AABC790);
  return sub_24AA169C4(v75, &qword_27EF86EC8, &qword_24AABC798);
}

uint64_t sub_24AA78B1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v99 = sub_24AAB40D4();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86EE0, &qword_24AABC7D8);
  v98 = *(v100 - 8);
  v4 = MEMORY[0x28223BE20](v100);
  v95 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v96 = &v93 - v6;
  v7 = type metadata accessor for CallStatusViewModel(0);
  MEMORY[0x28223BE20](v7 - 8);
  v101 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86EE8, &qword_24AABC7E0);
  v9 = MEMORY[0x28223BE20](v111);
  v113 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v119 = &v93 - v11;
  v115 = sub_24AAB3F04();
  v109 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v108 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CallNotificationView(0);
  v103 = *(v13 - 8);
  v14 = *(v103 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86EF0, &qword_24AABC7E8);
  v106 = *(v15 - 8);
  v107 = v15;
  MEMORY[0x28223BE20](v15);
  v105 = &v93 - v16;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86EF8, &qword_24AABC7F0);
  v17 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v104 = &v93 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F00, &qword_24AABC7F8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v112 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v93 - v22;
  v24 = *a1;
  v25 = a1;
  v117 = a1[1];
  v118 = v24;
  *&v148 = v24;
  *(&v148 + 1) = v117;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v26 = v132;
  swift_getKeyPath();
  *&v148 = v26;
  v102 = sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  LODWORD(a1) = *(v26 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad);

  v27 = 1;
  if (a1 == 1)
  {
    sub_24AA832B8(v25, &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CallNotificationView);
    v28 = (*(v103 + 80) + 16) & ~*(v103 + 80);
    v29 = swift_allocObject();
    sub_24AA80DCC(&v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F80, &qword_24AABC898);
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86F88, &qword_24AABC8A0);
    v31 = sub_24AA833B0();
    *&v148 = v30;
    *(&v148 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    v32 = v105;
    sub_24AAB4BB4();
    v33 = v108;
    sub_24AAB3EF4();
    sub_24AA16A68(&qword_27EF86FB8, &qword_27EF86EF0, &qword_24AABC7E8, MEMORY[0x277CDF028]);
    sub_24AA80D80(&qword_27EF86FC0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v34 = v104;
    v35 = v107;
    v36 = v115;
    sub_24AAB47D4();
    (*(v109 + 8))(v33, v36);
    (*(v106 + 8))(v32, v35);
    (*(v17 + 32))(v23, v34, v116);
    v27 = 0;
  }

  v37 = *(v17 + 56);
  v115 = v23;
  v37(v23, v27, 1, v116);
  v38 = v118;
  *&v132 = v118;
  *(&v132 + 1) = v117;
  sub_24AAB4B84();
  v39 = v148;
  v40 = v149;
  swift_getKeyPath();
  v148 = v39;
  *&v149 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F08, &qword_24AABD230);
  v41 = v119;
  sub_24AAB4C04();

  *&v122 = v38;
  v42 = v117;
  *(&v122 + 1) = v117;
  sub_24AAB4B84();
  v43 = v132;
  v44 = v133;
  swift_getKeyPath();
  v132 = v43;
  *&v133 = v44;
  sub_24AAB4C04();

  v116 = *(&v122 + 1);
  v45 = v122;
  LODWORD(v109) = v123;

  v46 = v118;
  v139 = v118;
  v140 = v42;
  sub_24AAB4B64();
  v47 = sub_24AA1F130();

  v48 = type metadata accessor for CallStatusView(0);
  *(v41 + v48[9]) = 0;
  v49 = v48[10];
  *(v41 + v49) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  v50 = v41 + v48[5];
  v51 = v116;
  *v50 = v45;
  *(v50 + 8) = v51;
  *(v50 + 16) = v109;
  *(v41 + v48[6]) = !v47;
  *(v41 + v48[7]) = 1;
  *(v41 + v48[8]) = 0x4041000000000000;
  *(v41 + *(v111 + 36)) = 0;
  *&v148 = v46;
  *(&v148 + 1) = v42;
  sub_24AAB4B64();
  sub_24AA3A2B0(&v148);

  if (v153 == 255)
  {
    sub_24AA169C4(&v148, &qword_27EF85568, &qword_24AABC830);
    *&v148 = v46;
    *(&v148 + 1) = v42;
    sub_24AAB4B64();
    v56 = v132;
    swift_getKeyPath();
    *&v148 = v56;
    sub_24AAB2CF4();

    v57 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
    swift_beginAccess();
    sub_24AA43A54(v56 + v57, &v148);

    v134 = v150;
    v135 = v151;
    v136 = v152;
    LODWORD(v57) = v153;
    v137[0] = v153;
    v132 = v148;
    v133 = v149;
    sub_24AA4214C(&v132);
    v55 = v115;
    if (v57)
    {
      *&v148 = v46;
      *(&v148 + 1) = v42;
      sub_24AAB4B64();
      v58 = v132;
      swift_getKeyPath();
      *&v148 = v58;
      sub_24AAB2CF4();

      v59 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
      swift_beginAccess();
      sub_24AA43A54(v58 + v59, &v139);

      LOBYTE(v148) = 1;
      *(&v148 + 1) = 0x4014000000000000;
      LOBYTE(v132) = 0;
      *(&v132 + 1) = 0x4014000000000000;
      sub_24AA82490(v60, v61, v62);
      v145 = sub_24AAB3DA4();
      sub_24AA1695C(&v139, &v148, &qword_27EF86F10, &qword_24AABC838);
      LOBYTE(v154) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F10, &qword_24AABC838);
      sub_24AA82F50();
      sub_24AAB42B4();
      sub_24AA1695C(&v122, &v132, &qword_27EF86F28, &qword_24AABC840);
      v138 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F28, &qword_24AABC840);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F30, &qword_24AABC848);
      sub_24AA8305C();
      sub_24AA830E0();
      sub_24AAB42B4();
      sub_24AA169C4(&v122, &qword_27EF86F28, &qword_24AABC840);
      sub_24AA169C4(&v139, &qword_27EF86F10, &qword_24AABC838);
      goto LABEL_12;
    }

    *&v148 = v46;
    *(&v148 + 1) = v42;
    sub_24AAB4B64();
    v63 = v132;
    swift_getKeyPath();
    *&v148 = v63;
    sub_24AAB2CF4();

    v64 = *(v63 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waveformViewModel);
    v65 = v64;

    if (v64)
    {
      *&v148 = v46;
      *(&v148 + 1) = v42;
      sub_24AAB4B64();
      v66 = v132;
      swift_getKeyPath();
      *&v148 = v66;
      sub_24AAB2CF4();

      v67 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__statusViewModel;
      swift_beginAccess();
      v68 = v101;
      sub_24AA832B8(v66 + v67, v101, type metadata accessor for CallStatusViewModel);

      v69 = *(v68 + 24);

      sub_24AA81D94(v68, type metadata accessor for CallStatusViewModel);
      if (!v69)
      {
        v78 = v65;
        sub_24AAB4D44();
        sub_24AAB3D54();
        v111 = v139;
        v79 = v140;
        v80 = v142;
        v118 = v143;
        v116 = v141;
        v117 = v144;
        v81 = v94;
        sub_24AAB40C4();
        sub_24AAB4DA4();
        v82 = sub_24AA80D80(&qword_27EF86F78, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
        v83 = v96;
        v84 = v99;
        sub_24AAB3CC4();

        (*(v97 + 8))(v81, v84);
        v85 = v98;
        v86 = v100;
        (*(v98 + 16))(v95, v83, v100);
        *&v148 = v84;
        *(&v148 + 1) = v82;
        swift_getOpaqueTypeConformance2();
        v87 = sub_24AAB3DC4();
        (*(v85 + 8))(v83, v86);
        LOBYTE(v82) = sub_24AAB4524();
        v88 = sub_24AAB4514();
        sub_24AAB4514();
        if (sub_24AAB4514() != v82)
        {
          v88 = sub_24AAB4514();
        }

        v121 = v79;
        v120 = v80;
        sub_24AAB3C54();
        v128 = 0;
        *&v122 = v78;
        *(&v122 + 1) = v111;
        LOBYTE(v123) = v121;
        *(&v123 + 1) = *v131;
        DWORD1(v123) = *&v131[3];
        *(&v123 + 1) = v116;
        LOBYTE(v124) = v120;
        *(&v124 + 1) = *v130;
        DWORD1(v124) = *&v130[3];
        *(&v124 + 1) = v118;
        *&v125 = v117;
        *(&v125 + 1) = v87;
        LOBYTE(v126) = v88;
        DWORD1(v126) = *&v129[3];
        *(&v126 + 1) = *v129;
        *(&v126 + 1) = v89;
        *&v127[0] = v90;
        *(&v127[0] + 1) = v91;
        *&v127[1] = v92;
        BYTE8(v127[1]) = 0;
        v135 = v125;
        v136 = v126;
        *v137 = v127[0];
        *&v137[9] = *(v127 + 9);
        v132 = v122;
        v133 = v123;
        v134 = v124;
        v138 = 1;
        sub_24AA1695C(&v122, &v148, &qword_27EF86F30, &qword_24AABC848);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F28, &qword_24AABC840);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F30, &qword_24AABC848);
        sub_24AA8305C();
        sub_24AA830E0();
        sub_24AAB42B4();

        sub_24AA169C4(&v122, &qword_27EF86F30, &qword_24AABC848);
        goto LABEL_5;
      }
    }

    v154 = 0;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v155 = -256;
    goto LABEL_12;
  }

  v146[2] = v150;
  v146[3] = v151;
  v146[4] = v152;
  v147 = v153;
  v146[0] = v148;
  v146[1] = v149;
  v52 = sub_24AA43A54(v146, &v139);
  LOBYTE(v148) = 1;
  *(&v148 + 1) = 0x4014000000000000;
  LOBYTE(v132) = 0;
  *(&v132 + 1) = 0x4014000000000000;
  sub_24AA82490(v52, v53, v54);
  v145 = sub_24AAB3DA4();
  sub_24AA1695C(&v139, &v148, &qword_27EF86F10, &qword_24AABC838);
  LOBYTE(v154) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F10, &qword_24AABC838);
  sub_24AA82F50();
  sub_24AAB42B4();
  sub_24AA1695C(&v122, &v132, &qword_27EF86F28, &qword_24AABC840);
  v138 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F28, &qword_24AABC840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F30, &qword_24AABC848);
  sub_24AA8305C();
  sub_24AA830E0();
  sub_24AAB42B4();
  sub_24AA169C4(&v122, &qword_27EF86F28, &qword_24AABC840);
  sub_24AA169C4(&v139, &qword_27EF86F10, &qword_24AABC838);
  sub_24AA4214C(v146);
LABEL_5:
  v55 = v115;
LABEL_12:
  v70 = v112;
  sub_24AA1695C(v55, v112, &qword_27EF86F00, &qword_24AABC7F8);
  v71 = v119;
  v72 = v113;
  sub_24AA1695C(v119, v113, &qword_27EF86EE8, &qword_24AABC7E0);
  sub_24AA1695C(&v148, &v132, &qword_27EF86F68, &qword_24AABC860);
  v73 = v55;
  v74 = v114;
  sub_24AA1695C(v70, v114, &qword_27EF86F00, &qword_24AABC7F8);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F70, &qword_24AABC868);
  sub_24AA1695C(v72, v74 + v75[12], &qword_27EF86EE8, &qword_24AABC7E0);
  v76 = v74 + v75[16];
  *v76 = 0;
  *(v76 + 8) = 1;
  sub_24AA1695C(&v132, v74 + v75[20], &qword_27EF86F68, &qword_24AABC860);
  sub_24AA169C4(&v148, &qword_27EF86F68, &qword_24AABC860);
  sub_24AA169C4(v71, &qword_27EF86EE8, &qword_24AABC7E0);
  sub_24AA169C4(v73, &qword_27EF86F00, &qword_24AABC7F8);
  sub_24AA169C4(&v132, &qword_27EF86F68, &qword_24AABC860);
  sub_24AA169C4(v72, &qword_27EF86EE8, &qword_24AABC7E0);
  return sub_24AA169C4(v70, &qword_27EF86F00, &qword_24AABC7F8);
}

double sub_24AA79E54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v1 = xmmword_24AAB6FD0;
  v2 = 2;
  sub_24AA2F6C4(&v1);

  return result;
}

uint64_t sub_24AA79EC8@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86FC8, &qword_24AABC8B8);
  v1 = *(v24[0] - 8);
  MEMORY[0x28223BE20](v24[0]);
  v3 = v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86FA0, &qword_24AABC8A8);
  MEMORY[0x28223BE20](v4);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F88, &qword_24AABC8A0);
  MEMORY[0x28223BE20](v7);
  v9 = v24 - v8;
  v24[7] = sub_24AAB4AC4();
  sub_24AAB4594();
  sub_24AAB47C4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DE8, &qword_24AABC4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AAB7D10;
  v11 = sub_24AAB4534();
  *(inited + 32) = v11;
  v12 = sub_24AAB4524();
  *(inited + 33) = v12;
  v13 = sub_24AAB4514();
  sub_24AAB4514();
  if (sub_24AAB4514() != v11)
  {
    v13 = sub_24AAB4514();
  }

  sub_24AAB4514();
  if (sub_24AAB4514() != v12)
  {
    v13 = sub_24AAB4514();
  }

  sub_24AAB3C54();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  (*(v1 + 32))(v6, v3, v24[0]);
  v22 = &v6[*(v4 + 36)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  sub_24AA1A25C(v6, v9, &qword_27EF86FA0, &qword_24AABC8A8);
  v9[*(v7 + 36)] = 0;
  sub_24AA833B0();
  sub_24AAB4794();
  return sub_24AA169C4(v9, &qword_27EF86F88, &qword_24AABC8A0);
}

void sub_24AA7A1E0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v21 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  swift_getKeyPath();
  v20 = v18[0];
  sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v5 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  swift_beginAccess();
  v6 = *(v18[0] + v5);

  if (v6)
  {
    swift_getKeyPath();
    v18[0] = v6;
    sub_24AA80D80(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
    sub_24AAB2CF4();

    if (*(v6 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__isShowingTranscripts) == 1)
    {
      CallScreeningViewModel.transcriptView()(v18);

      v7 = v18[0];
      v8 = v18[0];
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  v18[0] = v3;
  v18[1] = v4;
  sub_24AAB4B64();
  v9 = v19;
  swift_getKeyPath();
  v18[0] = v9;
  sub_24AAB2CF4();

  v10 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callTranslationViewModel;
  swift_beginAccess();
  v11 = *&v9[v10];

  if (!v11)
  {
LABEL_12:
    v13 = 1;
    goto LABEL_13;
  }

  swift_getKeyPath();
  v19 = v11;
  sub_24AA80D80(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel);
  sub_24AAB2CF4();

  if (v11[32] != 1)
  {

    goto LABEL_12;
  }

  v12 = OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_viewController;
  v13 = *&v11[OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_viewController];
  if (!v13)
  {
    v13 = sub_24AAB2F44();
    v14 = *&v11[v12];
    *&v11[v12] = v13;
  }

  v15 = v13;

  v16 = v15;
LABEL_13:
  v17 = v7;
  sub_24AA4345C(v13);

  sub_24AA421A0(v13);
  *a2 = v7;
  a2[1] = v13;
  sub_24AA421A0(v13);
}

uint64_t sub_24AA7A520(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v138 = v2;
  v3 = type metadata accessor for CallNotificationView(0);
  v127 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v128 = v4;
  v136 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DA0, &qword_24AABC3E0);
  v133 = *(v5 - 8);
  v134 = v5;
  MEMORY[0x28223BE20](v5);
  v130 = &v123 - v6;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DA8, &qword_24AABC3E8);
  MEMORY[0x28223BE20](v129);
  v135 = &v123 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DB0, &qword_24AABC3F0);
  v141 = *(v8 - 8);
  v142 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v132 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v131 = &v123 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DB8, &qword_24AABC3F8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v137 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v123 - v15;
  v17 = v1[1];
  *&v190[0] = *v1;
  v18 = *&v190[0];
  *(&v190[0] + 1) = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v20 = *&v189[0];
  swift_getKeyPath();
  *&v190[0] = v20;
  v21 = sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v22 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
  swift_beginAccess();
  sub_24AA43A54(v20 + v22, &v153);

  v196 = v158[0];
  v193 = v155;
  v194 = v156;
  v195 = v157;
  v191 = v153;
  v192 = v154;
  v145 = v18;
  v146 = v21;
  v143 = v17;
  v144 = v16;
  v139 = v19;
  v140 = v1;
  if (LOBYTE(v158[0]))
  {
    sub_24AA4214C(&v191);
    *&v190[0] = v18;
    *(&v190[0] + 1) = v17;
    sub_24AAB4B64();
    swift_getObjectType();
    v23 = sub_24AAB3944();

    if (v23)
    {
      sub_24AAB4A44();
      v24 = sub_24AAB4A54();

      sub_24AAB4D44();
      sub_24AAB3D54();
      *&v179[6] = v191;
      *&v179[22] = v192;
      *&v179[38] = v193;
      v25 = sub_24AAB44C4();
      *&v180[0] = v24;
      WORD4(v180[0]) = 256;
      *(v180 + 10) = *v179;
      *(&v180[1] + 10) = *&v179[16];
      *(&v180[2] + 10) = *&v179[32];
      *(&v180[3] + 1) = *&v179[46];
      LOBYTE(v181[0]) = v25;
      *(v181 + 8) = 0u;
      *(&v181[1] + 8) = 0u;
      BYTE8(v181[2]) = 1;
      *&v190[0] = v18;
      *(&v190[0] + 1) = v17;
      sub_24AAB4B64();
      v26 = *&v189[0];
      swift_getKeyPath();
      *&v190[0] = v26;
      sub_24AAB2CF4();

      v27 = *(v26 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle + 8);

      if (v27)
      {

        v28 = sub_24AAB41C4();
      }

      else
      {
        v28 = sub_24AAB41B4();
      }

      v126 = v28;
      v147[0] = 1;
      sub_24AA7C0E8(v140, v190);
      v172[0] = v190[4];
      v172[1] = v190[5];
      v172[2] = v190[6];
      v173 = *&v190[7];
      v171[0] = v190[0];
      v171[1] = v190[1];
      v171[2] = v190[2];
      v171[3] = v190[3];
      v174[0] = v190[0];
      v174[1] = v190[1];
      v174[2] = v190[2];
      v174[3] = v190[3];
      v175[0] = v190[4];
      v175[1] = v190[5];
      v175[2] = v190[6];
      v176 = *&v190[7];
      sub_24AA1695C(v171, v189, &qword_27EF86E00, &qword_24AABC528);
      sub_24AA169C4(v174, &qword_27EF86E00, &qword_24AABC528);
      *(&v177[4] + 7) = v172[0];
      *(&v177[5] + 7) = v172[1];
      *(&v177[6] + 7) = v172[2];
      *(v177 + 7) = v171[0];
      *(&v177[1] + 7) = v171[1];
      *(&v177[2] + 7) = v171[2];
      *(&v177[7] + 7) = v173;
      *(&v177[3] + 7) = v171[3];
      v57 = v147[0];
      v58 = sub_24AAB44D4();
      LOBYTE(v200) = 1;
      *&v190[0] = v145;
      *(&v190[0] + 1) = v143;
      sub_24AAB4B64();
      v59 = *&v189[0];
      swift_getKeyPath();
      *&v190[0] = v59;
      sub_24AAB2CF4();

      v60 = *(v59 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle + 8);

      if (v60)
      {

        sub_24AAB4D54();
      }

      else
      {
        sub_24AAB4D44();
      }

      v61 = sub_24AAB3F24();
      *&v178[55] = v209;
      *&v178[71] = v210;
      *&v178[87] = v211;
      *&v178[103] = v212;
      *&v178[7] = v206;
      *&v178[23] = v207;
      *&v178[39] = v208;
      LOBYTE(v190[0]) = 1;
      *(&v190[0] + 1) = 0x4014000000000000;
      LOBYTE(v189[0]) = 0;
      *(&v189[0] + 1) = 0x4014000000000000;
      sub_24AA82490(v61, v62, v63);
      sub_24AAB3DA4();
      MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
      sub_24AAB4D74();

      sub_24AAB3DB4();

      v64 = sub_24AAB3D64();

      v182[0] = v126;
      LOBYTE(v182[1]) = v57;
      *(&v182[5] + 1) = v177[4];
      *(&v182[6] + 1) = v177[5];
      *(&v182[7] + 1) = v177[6];
      v182[8] = *(&v177[6] + 15);
      *(&v182[1] + 1) = v177[0];
      *(&v182[2] + 1) = v177[1];
      *(&v182[3] + 1) = v177[2];
      *(&v182[4] + 1) = v177[3];
      LOBYTE(v182[9]) = v58;
      *(&v182[9] + 8) = 0u;
      *(&v182[10] + 8) = 0u;
      BYTE8(v182[11]) = 1;
      *(&v182[16] + 9) = *&v178[80];
      *(&v182[17] + 9) = *&v178[96];
      *(&v182[15] + 9) = *&v178[64];
      *(&v182[11] + 9) = *v178;
      *(&v182[12] + 9) = *&v178[16];
      *(&v182[13] + 9) = *&v178[32];
      *(&v182[14] + 9) = *&v178[48];
      *(&v182[18] + 1) = *&v178[111];
      *&v182[19] = v64;
      v157 = v181[0];
      v158[0] = v181[1];
      *(v158 + 9) = *(&v181[1] + 9);
      v153 = v180[0];
      v154 = v180[1];
      v155 = v180[2];
      v156 = v180[3];
      memcpy(v189, v182, 0x138uLL);
      v163 = v181[0];
      v164[0] = v181[1];
      *(v164 + 9) = *(&v181[1] + 9);
      v159 = v180[0];
      v160 = v180[1];
      v161 = v180[2];
      v162 = v180[3];
      v152[0] = v180[0];
      v152[1] = v180[1];
      *(&v152[5] + 9) = *(&v181[1] + 9);
      v152[2] = v180[2];
      v152[3] = v180[3];
      v152[4] = v181[0];
      v152[5] = v181[1];
      memcpy(v183, v182, 0x138uLL);
      memcpy(&v152[7], v182, 0x138uLL);
      sub_24AA1695C(v180, v190, &qword_27EF86DE0, &qword_24AABC4E8);
      sub_24AA1695C(v182, v190, &qword_27EF86E08, &qword_24AABC530);
      sub_24AA1695C(&v159, v190, &qword_27EF86DE0, &qword_24AABC4E8);
      sub_24AA1695C(v183, v190, &qword_27EF86E08, &qword_24AABC530);
      sub_24AA169C4(v189, &qword_27EF86E08, &qword_24AABC530);
      v169 = v157;
      v170[0] = v158[0];
      *(v170 + 9) = *(v158 + 9);
      v165 = v153;
      v166 = v154;
      v167 = v155;
      v168 = v156;
      sub_24AA169C4(&v165, &qword_27EF86DE0, &qword_24AABC4E8);
      memcpy(v190, v152, 0x1A8uLL);
      BYTE8(v190[26]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86E10, &qword_24AABC538);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86E18, &qword_24AABC540);
      v65 = MEMORY[0x277CE14C0];
      sub_24AA16A68(&qword_27EF86E20, &qword_27EF86E10, &qword_24AABC538, MEMORY[0x277CE14C0]);
      sub_24AA16A68(&qword_27EF86E28, &qword_27EF86E18, &qword_24AABC540, v65);
      sub_24AAB42B4();
      sub_24AA169C4(v182, &qword_27EF86E08, &qword_24AABC530);
      sub_24AA169C4(v180, &qword_27EF86DE0, &qword_24AABC4E8);
      v18 = v145;
      v17 = v143;
    }

    else
    {
      v198 = 0;
      memset(v197, 0, sizeof(v197));
      v199 = -1;
    }
  }

  else
  {
    sub_24AA4214C(&v191);
    v126 = sub_24AAB41B4();
    LOBYTE(v183[0]) = 0;
    sub_24AA7A1E0(v1, v190);
    v123 = *(&v190[0] + 1);
    v124 = *&v190[0];
    sub_24AAB4D44();
    v29 = sub_24AAB3D54();
    v30 = v200;
    v31 = v17;
    v32 = v202;
    v33 = v204;
    v34 = v205;
    v151 = v201;
    v150 = v203;
    LOBYTE(v190[0]) = 1;
    *(&v190[0] + 1) = 0x4014000000000000;
    LOBYTE(v189[0]) = 0;
    *(&v189[0] + 1) = 0x4014000000000000;
    v125 = sub_24AA82490(v29, v35, v36);
    sub_24AAB3DA4();
    MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
    sub_24AAB4D74();

    sub_24AAB3DB4();

    v37 = sub_24AAB3D64();

    v174[0] = v126;
    LOBYTE(v174[1]) = v183[0];
    *(&v174[1] + 1) = v124;
    *&v174[2] = v123;
    *(&v174[2] + 1) = v30;
    LOBYTE(v174[3]) = v151;
    *(&v174[3] + 1) = v32;
    LOBYTE(v175[0]) = v150;
    *(&v175[0] + 1) = v33;
    v38 = v145;
    *&v175[1] = v34;
    *(&v175[1] + 1) = v37;
    *&v190[0] = v145;
    *(&v190[0] + 1) = v31;
    sub_24AAB4B64();
    v39 = sub_24AA1F130();

    LODWORD(v126) = v39;
    *&v190[0] = v38;
    *(&v190[0] + 1) = v31;
    sub_24AAB4B64();
    v40 = *&v189[0];
    swift_getKeyPath();
    *&v190[0] = v40;
    sub_24AAB2CF4();

    v41 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
    swift_beginAccess();
    sub_24AA43A54(v40 + v41, &v206);

    LOBYTE(v190[0]) = 1;
    *(&v190[0] + 1) = 0x4014000000000000;
    LOBYTE(v189[0]) = 0;
    *(&v189[0] + 1) = 0x4014000000000000;
    *(&v211 + 1) = sub_24AAB3DA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DE8, &qword_24AABC4F0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_24AAB7D10;
    LOBYTE(v40) = sub_24AAB44C4();
    *(v42 + 32) = v40;
    v43 = sub_24AAB44F4();
    *(v42 + 33) = v43;
    v44 = sub_24AAB4514();
    sub_24AAB4514();
    if (sub_24AAB4514() != v40)
    {
      v44 = sub_24AAB4514();
    }

    v45 = !v39;

    sub_24AAB4514();
    if (sub_24AAB4514() != v43)
    {
      v44 = sub_24AAB4514();
    }

    sub_24AAB3C54();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v171[2] = v208;
    v171[3] = v209;
    v172[0] = v210;
    v172[1] = v211;
    v171[0] = v206;
    v171[1] = v207;
    v148 = 0;
    KeyPath = swift_getKeyPath();
    *&v190[0] = v38;
    *(&v190[0] + 1) = v143;
    sub_24AAB4B64();
    v55 = sub_24AA1F130();

    v183[2] = v171[2];
    v183[3] = v171[3];
    v183[4] = v172[0];
    v183[5] = v172[1];
    v183[0] = v171[0];
    v183[1] = v171[1];
    LOBYTE(v183[6]) = v44;
    *(&v183[6] + 1) = v47;
    *&v183[7] = v49;
    *(&v183[7] + 1) = v51;
    *&v183[8] = v53;
    BYTE8(v183[8]) = v148;
    HIDWORD(v183[8]) = *&v149[3];
    *(&v183[8] + 9) = *v149;
    *&v183[9] = KeyPath;
    BYTE8(v183[9]) = v55;
    v161 = v174[2];
    v162 = v174[3];
    v163 = v175[0];
    v164[0] = v175[1];
    v159 = v174[0];
    v160 = v174[1];
    sub_24AA1695C(v183, v182, &qword_27EF86E30, &qword_24AABC570);
    v167 = v161;
    v168 = v162;
    v169 = v163;
    v170[0] = v164[0];
    v165 = v159;
    v166 = v160;
    v189[2] = v161;
    v189[3] = v162;
    v189[4] = v163;
    v189[5] = v164[0];
    v189[0] = v159;
    v189[1] = v160;
    *&v189[6] = 0;
    BYTE8(v189[6]) = v126;
    BYTE9(v189[6]) = v45;
    sub_24AA1695C(v182, &v189[7], &qword_27EF86E30, &qword_24AABC570);
    sub_24AA1695C(v174, v190, &qword_27EF86E38, &qword_24AABC578);
    sub_24AA1695C(&v165, v190, &qword_27EF86E38, &qword_24AABC578);
    sub_24AA169C4(v182, &qword_27EF86E30, &qword_24AABC570);
    v180[2] = v161;
    v180[3] = v162;
    v181[0] = v163;
    v181[1] = v164[0];
    v180[0] = v159;
    v180[1] = v160;
    sub_24AA169C4(v180, &qword_27EF86E38, &qword_24AABC578);
    sub_24AA1695C(v189, v190, &qword_27EF86E10, &qword_24AABC538);
    BYTE8(v190[26]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86E10, &qword_24AABC538);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86E18, &qword_24AABC540);
    v56 = MEMORY[0x277CE14C0];
    sub_24AA16A68(&qword_27EF86E20, &qword_27EF86E10, &qword_24AABC538, MEMORY[0x277CE14C0]);
    v17 = v143;
    sub_24AA16A68(&qword_27EF86E28, &qword_27EF86E18, &qword_24AABC540, v56);
    sub_24AAB42B4();
    sub_24AA169C4(v174, &qword_27EF86E38, &qword_24AABC578);
    v18 = v145;
    sub_24AA169C4(v189, &qword_27EF86E10, &qword_24AABC538);
    sub_24AA169C4(v183, &qword_27EF86E30, &qword_24AABC570);
  }

  *&v190[0] = v18;
  *(&v190[0] + 1) = v17;
  sub_24AAB4B64();
  v66 = *&v189[0];
  swift_getKeyPath();
  *&v190[0] = v66;
  sub_24AAB2CF4();

  v67 = *(v66 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__moreMenuViewModel);

  if (v67)
  {
    sub_24AAB30C4();
    v70 = v142;
    if (v68)
    {
      v71 = v69;
      v126 = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DE8, &qword_24AABC4F0);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_24AAB7D10;
      v73 = sub_24AAB44C4();
      *(v72 + 32) = v73;
      v74 = sub_24AAB44F4();
      *(v72 + 33) = v74;
      v75 = sub_24AAB4514();
      sub_24AAB4514();
      if (sub_24AAB4514() != v73)
      {
        v75 = sub_24AAB4514();
      }

      sub_24AAB4514();
      if (sub_24AAB4514() != v74)
      {
        v75 = sub_24AAB4514();
      }

      sub_24AAB3C54();
      *&v190[0] = v71;
      BYTE8(v190[0]) = v75;
      *&v190[1] = v76;
      *(&v190[1] + 1) = v77;
      *&v190[2] = v78;
      *(&v190[2] + 1) = v79;
      LOBYTE(v190[3]) = 0;

      LOBYTE(v189[0]) = sub_24AAB30D4() & 1;
      v125 = type metadata accessor for CallNotificationView;
      v80 = v140;
      v81 = v136;
      sub_24AA832B8(v140, v136, type metadata accessor for CallNotificationView);
      v82 = *(v127 + 80);
      v124 = v71;
      v83 = (v82 + 16) & ~v82;
      v127 = v83 + v128;
      v128 = (v83 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
      v84 = v128;
      v85 = swift_allocObject();
      sub_24AA80DCC(v81, v85 + v83);
      *(v85 + v84) = v67;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DF0, &qword_24AABC4F8);
      sub_24AA82840();
      v86 = v130;
      sub_24AAB4954();

      v87 = v80;
      v88 = v80;
      v89 = v125;
      sub_24AA832B8(v88, v81, v125);
      v90 = swift_allocObject();
      sub_24AA80DCC(v81, v90 + v83);
      v91 = v135;
      (*(v133 + 32))(v135, v86, v134);
      v92 = (v91 + *(v129 + 36));
      *v92 = sub_24AA829E8;
      v92[1] = v90;
      v92[2] = 0;
      v92[3] = 0;
      sub_24AA832B8(v87, v81, v89);
      v93 = v128;
      v94 = swift_allocObject();
      sub_24AA80DCC(v81, v94 + v83);
      *(v94 + v93) = v67;
      v95 = v132;
      sub_24AA1A25C(v91, v132, &qword_27EF86DA8, &qword_24AABC3E8);
      v70 = v142;
      v96 = (v95 + *(v142 + 36));
      *v96 = 0;
      v96[1] = 0;
      v96[2] = sub_24AA82B38;
      v96[3] = v94;
      v97 = v95;
      v98 = v131;
      sub_24AA1A25C(v97, v131, &qword_27EF86DB0, &qword_24AABC3F0);
      v99 = v144;
      sub_24AA1A25C(v98, v144, &qword_27EF86DB0, &qword_24AABC3F0);
      v100 = 0;
      v18 = v145;
      v17 = v143;
    }

    else
    {

      v100 = 1;
      v99 = v144;
    }
  }

  else
  {
    v100 = 1;
    v99 = v144;
    v70 = v142;
  }

  (*(v141 + 56))(v99, v100, 1, v70);
  *&v190[0] = v18;
  *(&v190[0] + 1) = v17;
  sub_24AAB4B64();
  v101 = *&v189[0];
  swift_getKeyPath();
  *&v190[0] = v101;
  sub_24AAB2CF4();

  v102 = *(v101 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__isHoldDetected);

  if (v102 == 1 && (*&v190[0] = v18, *(&v190[0] + 1) = v17, sub_24AAB4B64(), v103 = *&v189[0], swift_getKeyPath(), *&v190[0] = v103, sub_24AAB2CF4(), , v104 = *(v103 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__userHasDeclinedSmartHolding), , (v104 & 1) == 0))
  {
    sub_24AAB4A44();
    v105 = sub_24AAB4A54();

    sub_24AAB4D44();
    sub_24AAB3D54();
    *&v188[6] = v180[0];
    *&v188[22] = v180[1];
    *&v188[38] = v180[2];
    v106 = sub_24AAB44C4();
    v107 = v106;
    LODWORD(v142) = v106;
    LOBYTE(v190[0]) = 1;
    v183[0] = sub_24AAB4104();
    LOBYTE(v183[1]) = 1;
    sub_24AA7D014(&v183[1] + 8);
    v184 = sub_24AAB44D4();
    v185 = 0u;
    v186 = 0u;
    v187 = 1;
    sub_24AA1695C(v183, v182, &qword_27EF86DD8, &qword_24AABC4E0);
    *&v171[0] = v105;
    WORD4(v171[0]) = 256;
    *(v171 + 10) = *v188;
    *(&v171[1] + 10) = *&v188[16];
    *(&v171[2] + 10) = *&v188[32];
    *(&v171[3] + 1) = *&v188[46];
    LOBYTE(v172[0]) = v107;
    *(v172 + 8) = 0u;
    *(&v172[1] + 8) = 0u;
    BYTE8(v172[2]) = 1;
    v189[1] = v171[1];
    v189[0] = v171[0];
    *(&v189[5] + 9) = *(&v172[1] + 9);
    v189[5] = v172[1];
    v189[4] = v172[0];
    v189[2] = v171[2];
    v189[3] = v171[3];
    sub_24AA1695C(v182, &v189[7], &qword_27EF86DD8, &qword_24AABC4E0);
    sub_24AA1695C(v171, v190, &qword_27EF86DE0, &qword_24AABC4E8);
    sub_24AA169C4(v183, &qword_27EF86DD8, &qword_24AABC4E0);
    sub_24AA169C4(v182, &qword_27EF86DD8, &qword_24AABC4E0);
    *&v174[0] = v105;
    WORD4(v174[0]) = 256;
    v18 = v145;
    *(v174 + 10) = *v188;
    *(&v174[1] + 10) = *&v188[16];
    *(&v174[2] + 10) = *&v188[32];
    *(&v174[3] + 1) = *&v188[46];
    LOBYTE(v175[0]) = v142;
    *(v175 + 8) = 0u;
    *(&v175[1] + 8) = 0u;
    BYTE8(v175[2]) = 1;
    sub_24AA169C4(v174, &qword_27EF86DE0, &qword_24AABC4E8);
    memcpy(v190, v189, 0x269uLL);
  }

  else
  {
    bzero(v190, 0x269uLL);
  }

  *&v189[0] = v18;
  *(&v189[0] + 1) = v17;
  sub_24AAB4B64();
  v108 = *&v183[0];
  swift_getKeyPath();
  *&v189[0] = v108;
  sub_24AAB2CF4();

  v109 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT;
  swift_beginAccess();
  v110 = *(v108 + v109);

  v145 = 0;
  v146 = 0;
  v111 = 0;
  v112 = 0;
  v141 = 0;
  v142 = 0;
  v140 = 0;
  if (v110 == 1)
  {
    *&v189[0] = v18;
    *(&v189[0] + 1) = v17;
    sub_24AAB4B64();
    swift_unknownObjectRetain();

    objc_opt_self();
    v146 = swift_dynamicCastObjCClass();
    if (v146)
    {
      sub_24AAB4D44();
      sub_24AAB3D54();
      v111 = *&v182[0];
      v112 = BYTE8(v182[0]);
      v145 = *&v182[1];
      v142 = BYTE8(v182[1]);
      v140 = *(&v182[2] + 1);
      v141 = *&v182[2];
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRelease();
      v145 = 0;
      v146 = 0;
      v111 = 0;
      v112 = 0;
      v141 = 0;
      v142 = 0;
      v140 = 0;
    }
  }

  sub_24AA1695C(v197, v183, &qword_27EF86DC0, &qword_24AABC4A0);
  v113 = v144;
  v114 = v111;
  v115 = v137;
  sub_24AA1695C(v144, v137, &qword_27EF86DB8, &qword_24AABC3F8);
  sub_24AA1695C(v190, v189, &qword_27EF86DC8, &qword_24AABC4A8);
  v116 = v138;
  sub_24AA1695C(v183, v138, &qword_27EF86DC0, &qword_24AABC4A0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DD0, &qword_24AABC4B0);
  sub_24AA1695C(v115, v116 + v117[12], &qword_27EF86DB8, &qword_24AABC3F8);
  sub_24AA1695C(v189, v116 + v117[16], &qword_27EF86DC8, &qword_24AABC4A8);
  v118 = (v116 + v117[20]);
  v119 = v145;
  v120 = v146;
  *v118 = v146;
  v118[1] = v114;
  v118[2] = v112;
  v118[3] = v119;
  v121 = v141;
  v118[4] = v142;
  v118[5] = v121;
  v118[6] = v140;
  sub_24AA169C4(v190, &qword_27EF86DC8, &qword_24AABC4A8);
  sub_24AA169C4(v113, &qword_27EF86DB8, &qword_24AABC3F8);
  sub_24AA169C4(v197, &qword_27EF86DC0, &qword_24AABC4A0);

  sub_24AA169C4(v189, &qword_27EF86DC8, &qword_24AABC4A8);
  sub_24AA169C4(v115, &qword_27EF86DB8, &qword_24AABC3F8);
  return sub_24AA169C4(v183, &qword_27EF86DC0, &qword_24AABC4A0);
}

uint64_t sub_24AA7C0E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855C0, &unk_24AAB7270);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v101 = &v92 - v7;
  v8 = sub_24AAB2AA4();
  v9 = *(v8 - 8);
  v94 = v8;
  v95 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v92 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v93 = &v92 - v12;
  v13 = sub_24AAB4154();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = a1[1];
  *&v111 = *a1;
  v14 = v111;
  *(&v111 + 1) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v17 = v119;
  swift_getKeyPath();
  *&v111 = v17;
  v18 = sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  LODWORD(a1) = *(v17 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showWaitOnHoldErrorSymbol);

  v98 = v15;
  v99 = v14;
  v96 = v18;
  v97 = v16;
  if (a1 == 1)
  {
    sub_24AAB4144();
    sub_24AAB4134();
    sub_24AAB4AC4();
    sub_24AAB4124();

    sub_24AAB4134();
    *&v111 = v14;
    *(&v111 + 1) = v15;
    sub_24AAB4B64();
    v19 = v119;
    swift_getKeyPath();
    *&v111 = v19;
    sub_24AAB2CF4();

    v20 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldStatusMessage;
    swift_beginAccess();
    v21 = v101;
    sub_24AA1695C(v19 + v20, v101, &qword_27EF855C0, &unk_24AAB7270);

    v22 = v95;
    v23 = *(v95 + 48);
    v24 = v21;
    v25 = v94;
    if (v23(v24, 1, v94) == 1)
    {
      v26 = v93;
      sub_24AAB2A94();
      v27 = v23(v101, 1, v25);
      v28 = v26;
      if (v27 != 1)
      {
        sub_24AA169C4(v101, &qword_27EF855C0, &unk_24AAB7270);
      }
    }

    else
    {
      v28 = v93;
      (*(v22 + 32))(v93, v101, v25);
    }

    sub_24AAB4114();
    (*(v22 + 8))(v28, v25);
    sub_24AAB4134();
    sub_24AAB4174();
    if (qword_27EF84C50 != -1)
    {
      swift_once();
    }

    v34 = qword_27EF919A8;
    v35 = sub_24AAB4754();
    v37 = v36;
    v39 = v38;
    sub_24AAB45F4();
    v40 = sub_24AAB4704();
    v42 = v41;
    v44 = v43;
    v46 = v45;

    sub_24AA158E8(v35, v37, v39 & 1);

    KeyPath = swift_getKeyPath();
    v48 = swift_getKeyPath();
    LOBYTE(v109[0]) = v44 & 1;
    LOBYTE(v103) = 0;
    v102 = 0;
    *&v111 = v40;
    *(&v111 + 1) = v42;
    LOBYTE(v112) = v44 & 1;
    *(&v112 + 1) = v46;
    *&v113 = KeyPath;
    *(&v113 + 1) = 2;
    LOBYTE(v114) = 0;
    *(&v114 + 1) = v48;
    LOBYTE(v115) = 0;
    *(&v115 + 1) = *&v117[0];
    *(&v115 + 1) = *(v117 + 7);
    LOBYTE(v116) = 0;
  }

  else
  {
    *&v111 = v14;
    *(&v111 + 1) = v15;
    sub_24AAB4B64();
    v29 = v119;
    swift_getKeyPath();
    *&v111 = v29;
    sub_24AAB2CF4();

    v30 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldStatusMessage;
    swift_beginAccess();
    sub_24AA1695C(v29 + v30, v6, &qword_27EF855C0, &unk_24AAB7270);

    v31 = v94;
    v32 = v95;
    v33 = *(v95 + 48);
    if (v33(v6, 1, v94) == 1)
    {
      sub_24AAB2A94();
      if (v33(v6, 1, v31) != 1)
      {
        sub_24AA169C4(v6, &qword_27EF855C0, &unk_24AAB7270);
      }
    }

    else
    {
      (*(v32 + 32))(v92, v6, v31);
    }

    v49 = sub_24AAB4764();
    v51 = v50;
    v53 = v52;
    sub_24AAB45F4();
    v101 = sub_24AAB4704();
    v55 = v54;
    v57 = v56;
    v59 = v58;

    sub_24AA158E8(v49, v51, v53 & 1);

    v60 = swift_getKeyPath();
    v61 = swift_getKeyPath();
    LOBYTE(v117[0]) = v57 & 1;
    LOBYTE(v109[0]) = 0;
    LOBYTE(v111) = 1;
    *(&v111 + 1) = 0x4014000000000000;
    LOBYTE(v119) = 0;
    *(&v119 + 1) = 0x4014000000000000;
    sub_24AA82490(v61, v62, v63);
    sub_24AAB3DA4();
    MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
    sub_24AAB4D74();

    sub_24AAB3DB4();

    v64 = sub_24AAB3D64();

    LOBYTE(v103) = 1;
    *&v111 = v101;
    *(&v111 + 1) = v55;
    LOBYTE(v112) = v57 & 1;
    *(&v112 + 1) = v59;
    *&v113 = v60;
    *(&v113 + 1) = 2;
    LOBYTE(v114) = 0;
    *(&v114 + 1) = v61;
    LOBYTE(v115) = 0;
    *(&v115 + 1) = v64;
    LOBYTE(v116) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86E40, &qword_24AABC6B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86E48, &qword_24AABC6B8);
  sub_24AA82C58();
  sub_24AA82DC8();
  sub_24AAB42B4();
  *&v111 = v99;
  *(&v111 + 1) = v98;
  sub_24AAB4B64();
  v65 = *&v117[0];
  swift_getKeyPath();
  *&v111 = v65;
  sub_24AAB2CF4();

  v67 = *(v65 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle);
  v66 = *(v65 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle + 8);

  if (v66)
  {
    *&v111 = v67;
    *(&v111 + 1) = v66;
    sub_24AA15894(v68, v69, v70);
    v71 = sub_24AAB4774();
    v73 = v72;
    v75 = v74;
    sub_24AAB45F4();
    v76 = sub_24AAB4704();
    v78 = v77;
    v80 = v79;

    sub_24AA158E8(v71, v73, v75 & 1);

    LODWORD(v111) = sub_24AAB4314();
    v66 = sub_24AAB46F4();
    v82 = v81;
    LOBYTE(v73) = v83;
    v85 = v84;
    sub_24AA158E8(v76, v78, v80 & 1);

    v86 = v73 & 1;
    sub_24AA1A814(v66, v82, v73 & 1);
  }

  else
  {
    v82 = 0;
    v86 = 0;
    v85 = 0;
  }

  v105 = v121;
  v106 = v122;
  v107 = v123;
  v108 = v124;
  v109[2] = v121;
  v109[3] = v122;
  v103 = v119;
  v104 = v120;
  v109[4] = v123;
  v110 = v124;
  v109[0] = v119;
  v109[1] = v120;
  v111 = v119;
  v112 = v120;
  LOBYTE(v116) = v124;
  v114 = v122;
  v115 = v123;
  v113 = v121;
  sub_24AA1695C(v109, v117, &qword_27EF86E90, &qword_24AABC6D8);
  sub_24AA82E80(v66, v82, v86, v85);
  sub_24AA82EC4(v66, v82, v86, v85);
  v87 = v114;
  v88 = v100;
  *(v100 + 32) = v113;
  *(v88 + 48) = v87;
  *(v88 + 64) = v115;
  v89 = v116;
  v90 = v112;
  *v88 = v111;
  *(v88 + 16) = v90;
  *(v88 + 80) = v89;
  *(v88 + 88) = v66;
  *(v88 + 96) = v82;
  *(v88 + 104) = v86;
  *(v88 + 112) = v85;
  sub_24AA82EC4(v66, v82, v86, v85);
  v117[2] = v105;
  v117[3] = v106;
  v117[4] = v107;
  v118 = v108;
  v117[0] = v103;
  v117[1] = v104;
  return sub_24AA169C4(v117, &qword_27EF86E90, &qword_24AABC6D8);
}

void sub_24AA7CBD4(uint64_t a1, _BYTE *a2, void *a3)
{
  if (*a2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
    sub_24AAB4B64();
    if (*(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
      sub_24AAB2CE4();
    }

    else
    {
      *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView) = 0;
      sub_24AA1CEF0(0);
    }

    sub_24AAB30E4();
  }
}

double sub_24AA7CD4C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  if (*(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView) == 1)
  {
    *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView) = 1;
    sub_24AA1CEF0(1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  return result;
}

uint64_t sub_24AA7CEAC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  if (*(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView) = 0;
    sub_24AA1CEF0(0);
  }

  return sub_24AAB30E4();
}

uint64_t sub_24AA7D014@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_24AAB41C4();
  LOBYTE(v46[0]) = 1;
  sub_24AA7D36C(&v18);
  v39 = v22;
  v40 = v23;
  v41[0] = *v24;
  *(v41 + 12) = *&v24[12];
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  v42[0] = v18;
  v42[1] = v19;
  v42[2] = v20;
  v42[3] = v21;
  v42[4] = v22;
  v42[5] = v23;
  v43[0] = *v24;
  *(v43 + 12) = *&v24[12];
  sub_24AA1695C(&v35, v17, &qword_27EF86E98, &qword_24AABC708);
  sub_24AA169C4(v42, &qword_27EF86E98, &qword_24AABC708);
  *&v34[71] = v39;
  *&v34[87] = v40;
  *&v34[103] = v41[0];
  *&v34[115] = *(v41 + 12);
  *&v34[7] = v35;
  *&v34[23] = v36;
  *&v34[39] = v37;
  *&v34[55] = v38;
  v4 = v46[0];
  *&v18 = sub_24AAB41B4();
  *(&v18 + 1) = 0x4018000000000000;
  LOBYTE(v19) = 0;
  sub_24AA7D6A4(&v19 + 8);
  v5 = sub_24AAB4D44();
  v25 = 0;
  v26 = v5;
  v27 = v6;
  v7 = sub_24AAB4504();
  sub_24AAB3C54();
  v28 = v7;
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  v33 = 0;
  sub_24AA1695C(&v18, v17, &qword_27EF86EA0, &qword_24AABC710);
  *&v45[33] = *&v34[32];
  *&v45[17] = *&v34[16];
  *&v45[81] = *&v34[80];
  *&v45[97] = *&v34[96];
  *&v45[113] = *&v34[112];
  *&v45[49] = *&v34[48];
  v44 = v3;
  v45[0] = v4;
  *&v45[128] = *&v34[127];
  *&v45[65] = *&v34[64];
  *&v45[1] = *v34;
  v12 = *&v45[96];
  *(a2 + 96) = *&v45[80];
  *(a2 + 112) = v12;
  *(a2 + 128) = *&v45[112];
  *(a2 + 144) = *&v45[128];
  v13 = *&v45[32];
  *(a2 + 32) = *&v45[16];
  *(a2 + 48) = v13;
  v14 = *&v45[64];
  *(a2 + 64) = *&v45[48];
  *(a2 + 80) = v14;
  v15 = *v45;
  *a2 = v44;
  *(a2 + 16) = v15;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  sub_24AA1695C(v17, a2 + 168, &qword_27EF86EA0, &qword_24AABC710);
  sub_24AA1695C(&v44, v46, &qword_27EF86EA8, &qword_24AABC718);
  sub_24AA169C4(&v18, &qword_27EF86EA0, &qword_24AABC710);
  sub_24AA169C4(v17, &qword_27EF86EA0, &qword_24AABC710);
  v53 = *&v34[80];
  v54 = *&v34[96];
  *v55 = *&v34[112];
  v49 = *&v34[16];
  v50 = *&v34[32];
  v51 = *&v34[48];
  v52 = *&v34[64];
  v46[0] = v3;
  v46[1] = 0;
  v47 = v4;
  *&v55[15] = *&v34[127];
  v48 = *v34;
  return sub_24AA169C4(v46, &qword_27EF86EA8, &qword_24AABC718);
}

uint64_t sub_24AA7D36C@<X0>(uint64_t a1@<X8>)
{
  sub_24AAB4164();
  if (qword_27EF84C50 != -1)
  {
    swift_once();
  }

  v2 = qword_27EF919A8;
  v3 = sub_24AAB4754();
  v5 = v4;
  v7 = v6;
  sub_24AAB4614();
  v8 = sub_24AAB4704();
  v10 = v9;
  v12 = v11;

  sub_24AA158E8(v3, v5, v7 & 1);

  sub_24AAB4574();
  v13 = sub_24AAB4634();
  v36 = v14;
  v37 = v13;
  v35 = v15;
  v34 = v16;
  sub_24AA158E8(v8, v10, v12 & 1);

  sub_24AAB4164();
  v17 = sub_24AAB4754();
  v19 = v18;
  LOBYTE(v3) = v20;
  v22 = v21;
  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v25 = v3 & 1;
  v26 = sub_24AAB45F4();
  v27 = swift_getKeyPath();
  v28 = sub_24AAB4314();
  v38[96] = v35 & 1;
  *&v39 = v17;
  *(&v39 + 1) = v19;
  LOBYTE(v40) = v25;
  *(&v40 + 1) = v22;
  v41 = KeyPath;
  LOBYTE(v42) = 1;
  *(&v42 + 1) = v24;
  v43[0] = 0;
  *&v43[8] = v27;
  *&v43[16] = v26;
  *&v43[24] = v28;
  *a1 = v37;
  *(a1 + 8) = v36;
  *(a1 + 16) = v35 & 1;
  v29 = *v44;
  *(a1 + 20) = *&v44[3];
  *(a1 + 17) = v29;
  *(a1 + 24) = v34;
  v30 = v42;
  v31 = *v43;
  *(a1 + 108) = *&v43[12];
  *(a1 + 80) = v30;
  *(a1 + 96) = v31;
  v32 = v41;
  *(a1 + 48) = v40;
  *(a1 + 64) = v32;
  *(a1 + 32) = v39;
  v45[0] = v17;
  v45[1] = v19;
  v46 = v25;
  v47 = v22;
  v48 = KeyPath;
  v49 = 0;
  v50 = 1;
  v51 = v24;
  v52 = 0;
  v53 = v27;
  v54 = v26;
  v55 = v28;
  sub_24AA1A814(v37, v36, v35 & 1);

  sub_24AA1695C(&v39, v38, &qword_27EF86EB0, &qword_24AABC778);
  sub_24AA169C4(v45, &qword_27EF86EB0, &qword_24AABC778);
  sub_24AA158E8(v37, v36, v35 & 1);
}

uint64_t sub_24AA7D6A4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WaitOnHoldSuggestionControl(0);
  v24[3] = v2;
  v24[4] = sub_24AA80D80(&qword_27EF86690, type metadata accessor for WaitOnHoldSuggestionControl, &unk_24AABB458);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v24);
  *boxed_opaque_existential_1Tm = xmmword_24AAB7040;
  *(boxed_opaque_existential_1Tm + 16) = 2;
  sub_24AAB2B24();
  v4 = (boxed_opaque_existential_1Tm + v2[6]);
  v5 = sub_24AAB4A64();
  v6 = sub_24AAB4A44();
  v7 = sub_24AAB4A14();
  *v4 = 0;
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  *(boxed_opaque_existential_1Tm + v2[7]) = 0;
  *(boxed_opaque_existential_1Tm + v2[8]) = 0;
  v22[0] = swift_getKeyPath();
  v22[1] = 0;
  v23 = 0;
  v25 = xmmword_24AABBE40;
  v26 = 256;
  v8 = type metadata accessor for WaitOnHoldDeclineSuggestionControl(0);
  v19[3] = v8;
  v19[4] = sub_24AA80D80(&qword_27EF866A0, type metadata accessor for WaitOnHoldDeclineSuggestionControl, &unk_24AABB43C);
  v9 = __swift_allocate_boxed_opaque_existential_1Tm(v19);
  *v9 = xmmword_24AABBE50;
  *(v9 + 16) = 2;
  sub_24AAB2B24();
  v10 = (v9 + v8[6]);
  v11 = sub_24AAB4A64();
  v12 = sub_24AAB4A44();
  v13 = sub_24AAB4A14();
  *v10 = 0;
  v10[1] = v11;
  v10[2] = v12;
  v10[3] = v13;
  *(v9 + v8[7]) = 0;
  *(v9 + v8[8]) = 0;
  v17[0] = swift_getKeyPath();
  v17[1] = 0;
  v18 = 0;
  v20 = xmmword_24AABBE40;
  v21 = 256;
  sub_24AA58880(v22, v16);
  sub_24AA58880(v17, v15);
  sub_24AA58880(v16, a1);
  sub_24AA58880(v15, a1 + 88);
  sub_24AA588DC(v17);
  sub_24AA588DC(v22);
  sub_24AA588DC(v15);
  return sub_24AA588DC(v16);
}

uint64_t CallNotificationView.displayCall.getter@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B98, &qword_24AABBF08);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v53 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84C88, &qword_24AABBF10);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v53 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BA0, &qword_24AABBF18);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BA8, &qword_24AABBF20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v53 - v12);
  *v13 = sub_24AAB4D34();
  v13[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BB0, &qword_24AABBF28);
  sub_24AA7E22C(v1, (v13 + *(v15 + 44)));
  v56 = v1;
  v17 = v1[1];
  *&v66 = *v1;
  v16 = v66;
  *(&v66 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  sub_24AA1F130();

  sub_24AAB4D44();
  sub_24AAB3F24();
  sub_24AA1A25C(v13, v10, &qword_27EF86BA8, &qword_24AABBF20);
  v18 = &v10[*(v8 + 44)];
  v19 = v71;
  *(v18 + 4) = v70;
  *(v18 + 5) = v19;
  *(v18 + 6) = v72;
  v20 = v67;
  *v18 = v66;
  *(v18 + 1) = v20;
  v21 = v69;
  *(v18 + 2) = v68;
  *(v18 + 3) = v21;
  *&v73 = v16;
  *(&v73 + 1) = v17;
  sub_24AAB4B64();
  v22 = v64;
  swift_getKeyPath();
  *&v73 = v22;
  sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  sub_24AAB4D44();
  sub_24AAB3D54();
  sub_24AA1A25C(v10, v6, &qword_27EF86BA0, &qword_24AABBF18);
  v23 = *(v4 + 44);
  v58 = v6;
  v24 = &v6[v23];
  v25 = v74;
  *v24 = v73;
  *(v24 + 1) = v25;
  *(v24 + 2) = v75;
  v26 = type metadata accessor for CallNotificationView(0);
  v57 = &v53;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26 - 8);
  sub_24AA832B8(v56, &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CallNotificationView);
  sub_24AAB50C4();
  v29 = sub_24AAB50B4();
  v30 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D85700];
  *(v31 + 16) = v29;
  *(v31 + 24) = v32;
  sub_24AA80DCC(&v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
  v33 = sub_24AAB50F4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = &v53 - v36;
  sub_24AAB50D4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v54 = sub_24AAB3E94();
    v55 = &v53;
    v53 = *(v54 - 8);
    MEMORY[0x28223BE20](v54);
    v39 = &v53 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    v64 = 0;
    v65 = 0xE000000000000000;
    v56 = &v53;
    sub_24AAB5374();

    v64 = 0xD00000000000003ELL;
    v65 = 0x800000024AAD2CE0;
    v63 = 230;
    v40 = sub_24AAB5444();
    MEMORY[0x24C2257F0](v40);

    MEMORY[0x28223BE20](v41);
    (*(v34 + 16))(&v53 - v36, v37, v33);
    sub_24AAB3E84();
    (*(v34 + 8))(v37, v33);
    v42 = v59;
    sub_24AA1A25C(v58, v59, &qword_27EF84C88, &qword_24AABBF10);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84C90, &qword_24AAB62B0);
    (*(v53 + 32))(v42 + *(v43 + 36), v39, v54);
  }

  else
  {
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84C98, &qword_24AAB62B8);
    v42 = v59;
    v45 = (v59 + *(v44 + 36));
    v46 = sub_24AAB3E14();
    (*(v34 + 32))(&v45[*(v46 + 20)], &v53 - v36, v33);
    *v45 = &unk_24AABBF60;
    *(v45 + 1) = v31;
    sub_24AA1A25C(v58, v42, &qword_27EF84C88, &qword_24AABBF10);
  }

  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BB8, &unk_24AABBF70) + 36);
  v48 = *MEMORY[0x277CDF3C0];
  v49 = sub_24AAB3CE4();
  v50 = *(v49 - 8);
  v51 = v62;
  (*(v50 + 104))(v62 + v47, v48, v49);
  (*(v50 + 56))(v51 + v47, 0, 1, v49);
  return (*(v60 + 32))(v51, v42, v61);
}

void sub_24AA7E22C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CB8, &qword_24AABC2A8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = *a1;
  v10 = a1[1];
  v29 = *a1;
  v30 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v11 = sub_24AA1F130();

  if (!v11)
  {
    v14 = 0;
LABEL_6:
    v25 = 0;
    v26 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v13 = 0;
    goto LABEL_8;
  }

  v29 = v9;
  v30 = v10;
  sub_24AAB4B64();
  v12 = v28;
  swift_getKeyPath();
  v29 = v12;
  sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v13 = *(v12 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__posterViewModel);

  if (!v13)
  {
    v14 = 0;
    v25 = 0;
    v26 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  swift_getKeyPath();
  v29 = v13;
  sub_24AA80D80(&qword_27EF85528, type metadata accessor for CallNotificationPosterViewModel, &protocol conformance descriptor for CallNotificationPosterViewModel);
  sub_24AAB2CF4();

  v14 = *(v13 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView);
  v15 = v14;

  if (!v14)
  {
    goto LABEL_6;
  }

  sub_24AAB4D44();
  sub_24AAB3D54();
  v25 = v30;
  v26 = v29;
  v16 = v31;
  v17 = v32;
  v18 = v33;
  v13 = v34;
  v19 = v15;
LABEL_8:
  *v8 = sub_24AAB41B4();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CC0, &qword_24AABC2B0);
  sub_24AA7E598(a1, &v8[*(v20 + 44)]);
  v21 = v27;
  sub_24AA1695C(v8, v27, &qword_27EF86CB8, &qword_24AABC2A8);
  v22 = v25;
  v23 = v26;
  *a2 = v14;
  a2[1] = v23;
  a2[2] = v22;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v18;
  a2[6] = v13;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CC8, &qword_24AABC2B8);
  sub_24AA1695C(v21, a2 + *(v24 + 48), &qword_27EF86CB8, &qword_24AABC2A8);
  sub_24AA169C4(v8, &qword_27EF86CB8, &qword_24AABC2A8);
  sub_24AA169C4(v21, &qword_27EF86CB8, &qword_24AABC2A8);
}

uint64_t sub_24AA7E598@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = type metadata accessor for CallNotificationView(0);
  v78 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = v4;
  v80 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CD0, &qword_24AABC310);
  MEMORY[0x28223BE20](v77);
  v6 = &v75 - v5;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CD8, &qword_24AABC318);
  MEMORY[0x28223BE20](v88);
  v81 = &v75 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CE0, &qword_24AABC320);
  MEMORY[0x28223BE20](v83);
  v85 = &v75 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CE8, &qword_24AABC328);
  MEMORY[0x28223BE20](v84);
  v76 = &v75 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CF0, &qword_24AABC330);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v89 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v87 = &v75 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CF8, &qword_24AABC338);
  v15 = v14 - 8;
  v16 = MEMORY[0x28223BE20](v14);
  v86 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v75 - v18;
  *v19 = sub_24AAB41C4();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86D00, &qword_24AABC340);
  sub_24AA78234(a1, &v19[*(v20 + 44)]);
  v21 = sub_24AAB44D4();
  v22 = &v19[*(v15 + 44)];
  *v22 = v21;
  __asm { FMOV            V0.2D, #14.0 }

  *(v22 + 8) = _Q0;
  *(v22 + 24) = _Q0;
  v22[40] = 0;
  v28 = *a1;
  v29 = a1[1];
  v82 = a1;
  v93 = v28;
  v94 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v30 = v95;
  swift_getKeyPath();
  v93 = v30;
  sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  LODWORD(v15) = *(v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad);

  if (v15 == 1 && (v93 = v28, v94 = v29, sub_24AAB4B64(), v31 = v95, swift_getKeyPath(), v93 = v31, sub_24AAB2CF4(), , v32 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__keypadViewModel, swift_beginAccess(), v33 = *(v31 + v32), , , v33))
  {
    v34 = type metadata accessor for KeypadView(0);
    v35 = v76;
    v36 = &v76[*(v34 + 20)];
    v91 = MEMORY[0x277D84FA0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85CF0, &qword_24AAB89C0);
    sub_24AAB4B54();
    v37 = v96;
    *v36 = v95;
    *(v36 + 1) = v37;
    v38 = v35 + *(v34 + 24);
    *v38 = sub_24AAB3C94() & 1;
    *(v38 + 8) = v39;
    *(v38 + 16) = v40 & 1;
    type metadata accessor for KeypadViewModel(0);
    sub_24AA80D80(&qword_27EF85CF8, type metadata accessor for KeypadViewModel, &protocol conformance descriptor for KeypadViewModel);
    sub_24AAB4CB4();
    v41 = sub_24AAB4D44();
    v43 = v42;
    v44 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86D68, &qword_24AABC370) + 36);
    *v44 = 0;
    *(v44 + 8) = v41;
    *(v44 + 16) = v43;
    v45 = sub_24AAB4DD4();
    sub_24AAB4E04();
    v47 = v46;
    v49 = v48;
    LODWORD(v41) = sub_24AAB43D4();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86D58, &qword_24AABC368);
    v51 = v35 + *(v50 + 36);
    *v51 = 0x746E65746E6F63;
    *(v51 + 8) = 0xE700000000000000;
    *(v51 + 16) = v45;
    *(v51 + 24) = v41;
    *(v51 + 32) = v47;
    *(v51 + 40) = v49;
    *(v51 + 48) = 1;
    LOBYTE(v95) = 1;
    v96 = 0x4014000000000000;
    LOBYTE(v91) = 0;
    v92 = 0x4014000000000000;
    sub_24AA82490(v50, v52, v53);
    sub_24AAB3DA4();
    MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
    sub_24AAB4D74();

    sub_24AAB3DB4();

    v54 = sub_24AAB3D64();

    v55 = v85;
    *(v35 + *(v84 + 36)) = v54;
    sub_24AA1695C(v35, v55, &qword_27EF86CE8, &qword_24AABC328);
    swift_storeEnumTagMultiPayload();
    sub_24AA82110();
    sub_24AA82368();
    v56 = v87;
    sub_24AAB42B4();

    sub_24AA169C4(v35, &qword_27EF86CE8, &qword_24AABC328);
  }

  else
  {
    *v6 = sub_24AAB41B4();
    *(v6 + 1) = 0;
    v6[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86D08, &qword_24AABC348);
    v57 = v82;
    sub_24AA7A520(v82);
    v58 = sub_24AAB4DD4();
    sub_24AAB4E04();
    v59 = &v6[*(v77 + 36)];
    *v59 = 0x746E65746E6F63;
    *(v59 + 1) = 0xE700000000000000;
    *(v59 + 2) = v58;
    *(v59 + 6) = 0;
    *(v59 + 4) = v60;
    *(v59 + 5) = v61;
    v59[48] = 1;
    v95 = v28;
    v96 = v29;
    sub_24AAB4B64();
    sub_24AA1F130();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86D10, &qword_24AABC350);
    sub_24AA81F20();
    sub_24AA82004();
    v62 = v81;
    sub_24AAB4784();
    sub_24AA169C4(v6, &qword_27EF86CD0, &qword_24AABC310);
    v63 = sub_24AAB4D44();
    v65 = v64;
    v66 = v80;
    sub_24AA832B8(v57, v80, type metadata accessor for CallNotificationView);
    v67 = (*(v78 + 80) + 16) & ~*(v78 + 80);
    v68 = swift_allocObject();
    sub_24AA80DCC(v66, v68 + v67);
    v69 = (v62 + *(v88 + 36));
    *v69 = sub_24AA82090;
    v69[1] = v68;
    v69[2] = v63;
    v69[3] = v65;
    sub_24AA1695C(v62, v85, &qword_27EF86CD8, &qword_24AABC318);
    swift_storeEnumTagMultiPayload();
    sub_24AA82110();
    sub_24AA82368();
    v56 = v87;
    sub_24AAB42B4();
    sub_24AA169C4(v62, &qword_27EF86CD8, &qword_24AABC318);
  }

  v70 = v86;
  sub_24AA1695C(v19, v86, &qword_27EF86CF8, &qword_24AABC338);
  v71 = v89;
  sub_24AA1695C(v56, v89, &qword_27EF86CF0, &qword_24AABC330);
  v72 = v90;
  sub_24AA1695C(v70, v90, &qword_27EF86CF8, &qword_24AABC338);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86D90, &qword_24AABC380);
  sub_24AA1695C(v71, v72 + *(v73 + 48), &qword_27EF86CF0, &qword_24AABC330);
  sub_24AA169C4(v56, &qword_27EF86CF0, &qword_24AABC330);
  sub_24AA169C4(v19, &qword_27EF86CF8, &qword_24AABC338);
  sub_24AA169C4(v71, &qword_27EF86CF0, &qword_24AABC330);
  return sub_24AA169C4(v70, &qword_27EF86CF8, &qword_24AABC338);
}

__n128 sub_24AA7EFD0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24AAB4D44();
  sub_24AAB3F24();
  sub_24AA1695C(a1, a2, &qword_27EF86CD0, &qword_24AABC310);
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86D10, &qword_24AABC350) + 36));
  v4[4] = v10;
  v4[5] = v11;
  v4[6] = v12;
  *v4 = v6;
  v4[1] = v7;
  result = v9;
  v4[2] = v8;
  v4[3] = v9;
  return result;
}

uint64_t sub_24AA7F0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a1;
  v5 = sub_24AAB3DF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CallNotificationView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = sub_24AAB4A24();
  sub_24AA832B8(a2, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CallNotificationView);
  (*(v6 + 16))(v8, v18, v5);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_24AA80DCC(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  result = (*(v6 + 32))(v15 + v14, v8, v5);
  *a3 = v12;
  a3[1] = sub_24AA82694;
  a3[2] = v15;
  a3[3] = 0;
  a3[4] = 0;
  return result;
}

void sub_24AA7F29C(uint64_t *a1)
{
  v2 = sub_24AAB42E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[1];
  v12 = *a1;
  v13 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v7 = v11[1];
  swift_getKeyPath();
  v12 = v7;
  sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v8 = *(v7 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__posterViewModel);

  if (v8)
  {
    sub_24AAB4364();
    sub_24AAB3DE4();
    (*(v3 + 8))(v5, v2);
    swift_getKeyPath();
    v12 = v8;
    sub_24AA80D80(&qword_27EF85528, type metadata accessor for CallNotificationPosterViewModel, &protocol conformance descriptor for CallNotificationPosterViewModel);
    sub_24AAB2CF4();

    v9 = *(v8 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController);
    if (v9)
    {
      v10 = v9;
      sub_24AAB3AC4();
    }
  }
}

uint64_t sub_24AA7F50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_24AAB50C4();
  v3[6] = sub_24AAB50B4();
  v5 = sub_24AAB5094();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x2822009F8](sub_24AA7F5A4, v5, v4);
}

uint64_t sub_24AA7F5A4()
{
  v1 = v0[5];
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_24AA7F66C;

  return CallNotificationViewModel.observe()();
}

uint64_t sub_24AA7F66C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24AA7F7B0, v3, v2);
}

uint64_t sub_24AA7F7B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CallNotificationView.body.getter()
{
  v1 = v0;
  v100 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  swift_getKeyPath();
  v99 = v97;
  sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v2 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  swift_beginAccess();
  v3 = *(v97 + v2);

  if (v3 && (swift_getKeyPath(), v97 = v3, sub_24AA80D80(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel), sub_24AAB2CF4(), , v5 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity), v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity + 8), v6 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity + 16), sub_24AA80F1C(v5, v4, v6), , v5))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BC8, &unk_24AABBFD8);
    v93 = *(v7 - 8);
    v94 = v7;
    v8 = MEMORY[0x28223BE20](v7);
    v92 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v90 = &v79;
    MEMORY[0x28223BE20](v8);
    v89 = &v79 - v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CA0, &unk_24AAB62C0);
    v88 = &v79;
    MEMORY[0x28223BE20](v11);
    v13 = &v79 - v12;

    v95 = v6;
    sub_24AAB2F84();
    v14 = sub_24AAB44C4();
    sub_24AAB3C54();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BF0, &unk_24AABBFF0) + 36)];
    *v23 = v14;
    *(v23 + 1) = v16;
    *(v23 + 2) = v18;
    *(v23 + 3) = v20;
    *(v23 + 4) = v22;
    v23[40] = 0;
    v24 = sub_24AAB44E4();
    sub_24AAB3C54();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BE0, &qword_24AABBFE8) + 36)];
    *v33 = v24;
    *(v33 + 1) = v26;
    *(v33 + 2) = v28;
    *(v33 + 3) = v30;
    *(v33 + 4) = v32;
    v33[40] = 0;
    v34 = sub_24AAB44F4();
    sub_24AAB3C54();
    v91 = v11;
    v35 = *(v11 + 36);
    v87 = v13;
    v36 = &v13[v35];
    *v36 = v34;
    *(v36 + 1) = v37;
    *(v36 + 2) = v38;
    *(v36 + 3) = v39;
    *(v36 + 4) = v40;
    v36[40] = 0;
    v41 = type metadata accessor for CallNotificationView(0);
    v86 = &v79;
    v42 = *(v41 - 8);
    v43 = *(v42 + 64);
    MEMORY[0x28223BE20](v41 - 8);
    sub_24AA832B8(v1, &v79 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CallNotificationView);
    sub_24AAB50C4();
    v44 = sub_24AAB50B4();
    v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v46 = swift_allocObject();
    v47 = MEMORY[0x277D85700];
    *(v46 + 16) = v44;
    *(v46 + 24) = v47;
    sub_24AA80DCC(&v79 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v46 + v45);
    v48 = sub_24AAB50F4();
    v85 = &v79;
    v84 = v48;
    v49 = *(v48 - 8);
    v50 = *(v49 + 64);
    MEMORY[0x28223BE20](v48);
    v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
    v52 = &v79 - v51;
    sub_24AAB50D4();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v81 = sub_24AAB3E94();
      v82 = &v79;
      v80 = *(v81 - 8);
      MEMORY[0x28223BE20](v81);
      v54 = &v79 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
      v97 = 0;
      v98 = 0xE000000000000000;
      sub_24AAB5374();

      v97 = 0xD00000000000003ELL;
      v98 = 0x800000024AAD2CE0;
      v96 = 246;
      v55 = sub_24AAB5444();
      v83 = v4;
      MEMORY[0x24C2257F0](v55);

      v79 = &v79;
      MEMORY[0x28223BE20](v56);
      v57 = &v79 - v51;
      v58 = &v79 - v51;
      v59 = v84;
      (*(v49 + 16))(v57, v58, v84);
      sub_24AAB3E84();
      (*(v49 + 8))(v52, v59);
      v60 = v89;
      sub_24AA1A25C(v87, v89, &qword_27EF84CA0, &unk_24AAB62C0);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CA8, &unk_24AABC010);
      (*(v80 + 32))(v60 + *(v61 + 36), v54, v81);
    }

    else
    {
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CB0, &unk_24AAB62D0);
      v60 = v89;
      v71 = (v89 + *(v70 + 36));
      v72 = sub_24AAB3E14();
      (*(v49 + 32))(&v71[*(v72 + 20)], v52, v84);
      *v71 = &unk_24AABC008;
      *(v71 + 1) = v46;
      sub_24AA1A25C(v87, v60, &qword_27EF84CA0, &unk_24AAB62C0);
    }

    v74 = v92;
    v73 = v93;
    v75 = v94;
    (*(v93 + 32))(v92, v60, v94);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BC0, &qword_24AABBFD0);
    MEMORY[0x28223BE20](v76);
    (*(v73 + 16))(&v79 - v77, v74, v75);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BB8, &unk_24AABBF70);
    v78 = sub_24AA80F68();
    v97 = v91;
    v98 = v78;
    swift_getOpaqueTypeConformance2();
    sub_24AA8113C();
    sub_24AAB42B4();

    return (*(v73 + 8))(v74, v75);
  }

  else
  {
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BB8, &unk_24AABBF70);
    MEMORY[0x28223BE20](v62);
    v64 = &v79 - v63;
    CallNotificationView.displayCall.getter(&v79 - v63);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BC0, &qword_24AABBFD0);
    MEMORY[0x28223BE20](v65);
    sub_24AA1695C(v64, &v79 - v66, &qword_27EF86BB8, &unk_24AABBF70);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BC8, &unk_24AABBFD8);
    v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CA0, &unk_24AAB62C0);
    v68 = sub_24AA80F68();
    v97 = v67;
    v98 = v68;
    swift_getOpaqueTypeConformance2();
    sub_24AA8113C();
    sub_24AAB42B4();
    return sub_24AA169C4(v64, &qword_27EF86BB8, &unk_24AABBF70);
  }
}

uint64_t sub_24AA802FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_24AAB50C4();
  v3[6] = sub_24AAB50B4();
  v5 = sub_24AAB5094();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x2822009F8](sub_24AA80394, v5, v4);
}

uint64_t sub_24AA80394()
{
  v1 = v0[5];
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_24AA8045C;

  return CallNotificationViewModel.observe()();
}

uint64_t sub_24AA8045C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24AA83758, v3, v2);
}

uint64_t sub_24AA805A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a1;
  v49 = a2;
  v48 = sub_24AAB3F14();
  MEMORY[0x28223BE20](v48);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24AAB4AA4();
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86C68, &qword_24AABC240);
  v45 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = sub_24AAB4D44();
  v17 = v16;
  v18 = sub_24AAB4D44();
  v20 = v19;
  sub_24AA809F4(v3, &v52);
  v21 = v52;
  v22 = v53;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86C70, &qword_24AABC248);
  (*(*(v23 - 8) + 16))(v14, v47, v23);
  v24 = &v14[*(v12 + 36)];
  *v24 = v18;
  *(v24 + 1) = v20;
  *(v24 + 2) = v21;
  v24[24] = v22;
  *(v24 + 4) = v15;
  *(v24 + 5) = v17;
  sub_24AAB4A84();
  v25 = v46;
  MEMORY[0x24C2252E0](1);
  v26 = *(v51 + 8);
  v51 += 8;
  v26(v10, v50);
  v27 = v48;
  v28 = *(v48 + 20);
  LODWORD(v47) = *MEMORY[0x277CE0118];
  v29 = v47;
  v30 = sub_24AAB4184();
  v44 = *(*(v30 - 8) + 104);
  v44(&v5[v28], v29, v30);
  __asm { FMOV            V0.2D, #31.0 }

  v43 = _Q0;
  *v5 = _Q0;
  sub_24AA81CB0();
  sub_24AA80D80(&qword_27EF86AD0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  v36 = v49;
  sub_24AAB47F4();
  sub_24AA81D94(v5, MEMORY[0x277CDFC08]);
  v26(v25, v50);
  sub_24AA169C4(v14, &qword_27EF86C68, &qword_24AABC240);
  v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86C98, &unk_24AABC258) + 36));
  v44(&v37[*(v27 + 20)], v47, v30);
  *v37 = v43;
  *&v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF852A0, &unk_24AAB6CA0) + 36)] = 256;
  v38 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CA0, &qword_24AABC268) + 36));
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86CA8, &qword_24AABC270) + 28);
  v40 = *MEMORY[0x277CDF3C0];
  v41 = sub_24AAB3CE4();
  (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
  result = swift_getKeyPath();
  *v38 = result;
  return result;
}

uint64_t sub_24AA809F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24AAB4094();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*(a1 + 8) != 1)
  {

    sub_24AAB5134();
    v11 = sub_24AAB44B4();
    sub_24AAB3A54();

    sub_24AAB4084();
    swift_getAtKeyPath();
    v12 = sub_24AA630E4(v8, 0);
    (*(v5 + 8))(v7, v4, v12);
    if (v18 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = [objc_opt_self() systemGroupedBackgroundColor];
    v16 = sub_24AAB49C4();
    v17 = 0;
    goto LABEL_6;
  }

  if (v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [objc_opt_self() systemGroupedBackgroundColor];
  sub_24AAB49C4();
  v10 = sub_24AAB4A54();

  v16 = v10;
  v17 = 1;
LABEL_6:
  result = sub_24AAB42B4();
  v15 = v19;
  *a2 = v18;
  *(a2 + 8) = v15;
  return result;
}

uint64_t sub_24AA80C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA81EBC(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24AA80C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA81EBC(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24AA80CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24AA81EBC(a1, a2, a3);
  sub_24AAB4474();
  __break(1u);
}

uint64_t sub_24AA80D24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24AAB3FF4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24AA80D80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AA80DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallNotificationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA80E30()
{
  v2 = *(type metadata accessor for CallNotificationView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AA43DBC;

  return sub_24AA7F50C(v4, v5, v0 + v3);
}

double sub_24AA80F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_24AA80F68()
{
  result = qword_27EF86BD0;
  if (!qword_27EF86BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CA0, &unk_24AAB62C0);
    sub_24AA80FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86BD0);
  }

  return result;
}

unint64_t sub_24AA80FF4()
{
  result = qword_27EF86BD8;
  if (!qword_27EF86BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86BE0, &qword_24AABBFE8);
    sub_24AA81080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86BD8);
  }

  return result;
}

unint64_t sub_24AA81080()
{
  result = qword_27EF86BE8;
  if (!qword_27EF86BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86BF0, &unk_24AABBFF0);
    sub_24AA80D80(&qword_27EF86BF8, MEMORY[0x277CFBA18], MEMORY[0x277CFBA10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86BE8);
  }

  return result;
}

unint64_t sub_24AA8113C()
{
  result = qword_27EF86C00;
  if (!qword_27EF86C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86BB8, &unk_24AABBF70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84C88, &qword_24AABBF10);
    sub_24AA81230();
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF84D48, &qword_27EF84D50, &qword_24AAB6330, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86C00);
  }

  return result;
}

unint64_t sub_24AA81230()
{
  result = qword_27EF86C08;
  if (!qword_27EF86C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84C88, &qword_24AABBF10);
    sub_24AA812BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86C08);
  }

  return result;
}

unint64_t sub_24AA812BC()
{
  result = qword_27EF86C10;
  if (!qword_27EF86C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86BA0, &qword_24AABBF18);
    sub_24AA16A68(&qword_27EF86C18, &qword_27EF86BA8, &qword_24AABBF20, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86C10);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for CallNotificationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24AAB3CE4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AA814A0()
{
  v2 = *(type metadata accessor for CallNotificationView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AA44FD0;

  return sub_24AA802FC(v4, v5, v0 + v3);
}

uint64_t sub_24AA815B4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86088, qword_24AABD4A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24AA81684(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86088, qword_24AABD4A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24AA81734(uint64_t a1)
{
  sub_24AA81BD8(319, &qword_27EF86C30, type metadata accessor for CallNotificationViewModel, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_24AA81BD8(319, &qword_27EF860A0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24AA81828()
{
  result = qword_27EF86C38;
  if (!qword_27EF86C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86C40, &qword_24AABC0B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CA0, &unk_24AAB62C0);
    sub_24AA80F68();
    swift_getOpaqueTypeConformance2();
    sub_24AA8113C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86C38);
  }

  return result;
}

uint64_t sub_24AA818F0(uint64_t *a1)
{
  type metadata accessor for NotificationBackground(255);
  sub_24AAB3EE4();
  sub_24AA80D80(&qword_27EF86B88, type metadata accessor for NotificationBackground, "\tBu7PG");
  return swift_getWitnessTable();
}

uint64_t sub_24AA819B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86C48, &qword_24AABC108);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AA81A78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86C48, &qword_24AABC108);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24AA81B24(uint64_t a1)
{
  sub_24AA60CA4();
  if (v1 <= 0x3F)
  {
    sub_24AA81BD8(319, &qword_27EF86018, MEMORY[0x277CE0228], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24AA81BD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24AA81C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF86C60;
  if (!qword_27EF86C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86C60);
  }

  return result;
}

unint64_t sub_24AA81CB0()
{
  result = qword_27EF86C78;
  if (!qword_27EF86C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86C68, &qword_24AABC240);
    sub_24AA16A68(&qword_27EF86C80, &qword_27EF86C70, &qword_24AABC248, MEMORY[0x277CE04B0]);
    sub_24AA16A68(&qword_27EF86C88, &qword_27EF86C90, &qword_24AABC250, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86C78);
  }

  return result;
}

uint64_t sub_24AA81D94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24AA81DF4(uint64_t a1)
{
  v2 = sub_24AAB3CE4();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24AAB3F74();
}

unint64_t sub_24AA81EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF86CB0;
  if (!qword_27EF86CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86CB0);
  }

  return result;
}

unint64_t sub_24AA81F20()
{
  result = qword_27EF86D18;
  if (!qword_27EF86D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86CD0, &qword_24AABC310);
    sub_24AA16A68(&qword_27EF86D20, &qword_27EF86D28, &qword_24AABC358, MEMORY[0x277CE1198]);
    sub_24AA16A68(&qword_27EF86D30, &qword_27EF86D38, &qword_24AABC360, MEMORY[0x277CE05B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86D18);
  }

  return result;
}

unint64_t sub_24AA82004()
{
  result = qword_27EF86D40;
  if (!qword_27EF86D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86D10, &qword_24AABC350);
    sub_24AA81F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86D40);
  }

  return result;
}

uint64_t sub_24AA82090@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for CallNotificationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24AA7F0A0(a1, v6, a2);
}

unint64_t sub_24AA82110()
{
  result = qword_27EF86D48;
  if (!qword_27EF86D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86CE8, &qword_24AABC328);
    sub_24AA821C8();
    sub_24AA16A68(&qword_27EF85E40, &qword_27EF85E48, &qword_24AAB91C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86D48);
  }

  return result;
}

unint64_t sub_24AA821C8()
{
  result = qword_27EF86D50;
  if (!qword_27EF86D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86D58, &qword_24AABC368);
    sub_24AA82280();
    sub_24AA16A68(&qword_27EF86D30, &qword_27EF86D38, &qword_24AABC360, MEMORY[0x277CE05B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86D50);
  }

  return result;
}

unint64_t sub_24AA82280()
{
  result = qword_27EF86D60;
  if (!qword_27EF86D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86D68, &qword_24AABC370);
    sub_24AA80D80(&qword_27EF86D70, type metadata accessor for KeypadView, &protocol conformance descriptor for KeypadView);
    sub_24AA16A68(&qword_27EF85CD0, &qword_27EF85CD8, &unk_24AAB8990, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86D60);
  }

  return result;
}

unint64_t sub_24AA82368()
{
  result = qword_27EF86D78;
  if (!qword_27EF86D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86CD8, &qword_24AABC318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86CD0, &qword_24AABC310);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86D10, &qword_24AABC350);
    sub_24AA81F20();
    sub_24AA82004();
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF86D80, &qword_27EF86D88, &qword_24AABC378, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86D78);
  }

  return result;
}

unint64_t sub_24AA82490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF86D98;
  if (!qword_27EF86D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86D98);
  }

  return result;
}

uint64_t sub_24AA824E4()
{
  v1 = (type metadata accessor for CallNotificationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_24AAB3DF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24AAB3CE4();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + v8, v11 | 7);
}

void sub_24AA82694()
{
  v1 = *(type metadata accessor for CallNotificationView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_24AAB3DF4();

  sub_24AA7F29C((v0 + v2));
}

void sub_24AA82794(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for CallNotificationView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_24AA7CBD4(a1, a2, v6);
}

unint64_t sub_24AA82840()
{
  result = qword_27EF86DF8;
  if (!qword_27EF86DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86DF0, &qword_24AABC4F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86DF8);
  }

  return result;
}

uint64_t objectdestroy_55Tm()
{
  v1 = (type metadata accessor for CallNotificationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24AAB3CE4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_90Tm()
{
  v1 = (type metadata accessor for CallNotificationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24AAB3CE4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24AA82B38()
{
  v1 = *(type metadata accessor for CallNotificationView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_24AA7CEAC(v2);
}

uint64_t sub_24AA82C04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24AAB3FD4();
  *a1 = result;
  return result;
}

unint64_t sub_24AA82C58()
{
  result = qword_27EF86E50;
  if (!qword_27EF86E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86E40, &qword_24AABC6B0);
    sub_24AA82D10();
    sub_24AA16A68(&qword_27EF86E78, &qword_27EF86E80, &qword_24AABC6D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86E50);
  }

  return result;
}

unint64_t sub_24AA82D10()
{
  result = qword_27EF86E58;
  if (!qword_27EF86E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86E60, &qword_24AABC6C0);
    sub_24AA16A68(&qword_27EF86E68, &qword_27EF86E70, &qword_24AABC6C8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86E58);
  }

  return result;
}

unint64_t sub_24AA82DC8()
{
  result = qword_27EF86E88;
  if (!qword_27EF86E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86E48, &qword_24AABC6B8);
    sub_24AA82C58();
    sub_24AA16A68(&qword_27EF85E40, &qword_27EF85E48, &qword_24AAB91C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86E88);
  }

  return result;
}

uint64_t sub_24AA82E80(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24AA1A814(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24AA82EC4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24AA158E8(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_24AA82F50()
{
  result = qword_27EF86F18;
  if (!qword_27EF86F18)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86F10, &qword_24AABC838);
    sub_24AA83008(v1, v2, v3);
    sub_24AA16A68(&qword_27EF85E40, &qword_27EF85E48, &qword_24AAB91C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86F18);
  }

  return result;
}

unint64_t sub_24AA83008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF86F20;
  if (!qword_27EF86F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86F20);
  }

  return result;
}

unint64_t sub_24AA8305C()
{
  result = qword_27EF86F38;
  if (!qword_27EF86F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86F28, &qword_24AABC840);
    sub_24AA82F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86F38);
  }

  return result;
}

unint64_t sub_24AA830E0()
{
  result = qword_27EF86F40;
  if (!qword_27EF86F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86F30, &qword_24AABC848);
    sub_24AA8316C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86F40);
  }

  return result;
}

unint64_t sub_24AA8316C()
{
  result = qword_27EF86F48;
  if (!qword_27EF86F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86F50, &qword_24AABC850);
    sub_24AA83224();
    sub_24AA16A68(&qword_27EF85E40, &qword_27EF85E48, &qword_24AAB91C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86F48);
  }

  return result;
}

unint64_t sub_24AA83224()
{
  result = qword_27EF86F58;
  if (!qword_27EF86F58)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86F60, &qword_24AABC858);
    sub_24AA68104(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86F58);
  }

  return result;
}

uint64_t sub_24AA832B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AA8333C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CallNotificationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_24AA833B0()
{
  result = qword_27EF86F90;
  if (!qword_27EF86F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86F88, &qword_24AABC8A0);
    sub_24AA83468();
    sub_24AA16A68(&qword_27EF86FA8, &qword_27EF86FB0, &qword_24AABC8B0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86F90);
  }

  return result;
}

unint64_t sub_24AA83468()
{
  result = qword_27EF86F98;
  if (!qword_27EF86F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86FA0, &qword_24AABC8A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86F98);
  }

  return result;
}

unint64_t sub_24AA83528()
{
  result = qword_27EF86FD0;
  if (!qword_27EF86FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86CA0, &qword_24AABC268);
    sub_24AA835E0();
    sub_24AA16A68(&unk_27EF86FE0, &qword_27EF86CA8, &qword_24AABC270, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86FD0);
  }

  return result;
}

unint64_t sub_24AA835E0()
{
  result = qword_27EF86FD8;
  if (!qword_27EF86FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86C98, &unk_24AABC258);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86C68, &qword_24AABC240);
    sub_24AAB3F14();
    sub_24AA81CB0();
    sub_24AA80D80(&qword_27EF86AD0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF85310, &qword_27EF852A0, &unk_24AAB6CA0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86FD8);
  }

  return result;
}

uint64_t sub_24AA8375C(void *a1, char a2)
{
  if (a2)
  {
    strcpy(v8, ".joinRequest(");
    HIWORD(v8[1]) = -4864;
    v3 = &unk_27EF87018;
    v4 = 0x277D6EEF0;
  }

  else
  {
    strcpy(v8, ".dialRequest(");
    HIWORD(v8[1]) = -4864;
    v3 = &unk_27EF87020;
    v4 = 0x277D6EED0;
  }

  sub_24AA442A0(0, v3, v4);
  v5 = a1;
  v6 = sub_24AAB4F44();
  MEMORY[0x24C2257F0](v6);

  return v8[0];
}

id sub_24AA8382C(void *a1, char a2)
{
  v57[1] = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    v6 = [a1 handle];
    if (!v6)
    {
LABEL_32:
      v41 = objc_allocWithZone(MEMORY[0x277CBDA58]);

      return [v41 init];
    }

    v7 = v6;
    v8 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
    v9 = [objc_allocWithZone(MEMORY[0x277CBDBF0]) init];
    v10 = [v9 descriptorForRequiredKeys];

    v11 = [objc_opt_self() sharedInstance];
    v12 = [v11 contactStore];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87048, &qword_24AABD020);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24AABC8C0;
    *(v13 + 32) = v7;
    sub_24AA442A0(0, &qword_27EF87050, 0x277D6EEE8);
    v14 = v7;
    v15 = sub_24AAB5014();

    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24AABC8D0;
    *(v16 + 32) = v8;
    *(v16 + 40) = v10;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87058, &qword_24AABCA68);
    v17 = sub_24AAB5014();

    v57[0] = 0;
    v18 = [v12 tu:v15 contactsByHandleForHandles:v17 keyDescriptors:v57 error:?];

    v19 = v57[0];
    if (v18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87060, &unk_24AABCA70);
      sub_24AA84A68(&qword_27EF87068, &qword_27EF87050, 0x277D6EEE8);
      v20 = sub_24AAB4E54();
      v21 = v19;

      v22 = sub_24AA58C78(v20);

      if (v22)
      {
        if (v22 >> 62)
        {
          if (sub_24AAB52F4())
          {
            goto LABEL_9;
          }
        }

        else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_9:
          if ((v22 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x24C225BD0](0, v22);
          }

          else
          {
            if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
            }

            v23 = *(v22 + 32);
          }

          v24 = v23;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return v24;
        }
      }
    }

    else
    {
      v38 = v57[0];
      v39 = sub_24AAB2B04();

      swift_willThrow();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87040, &qword_24AAB8C00);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_24AAB7070;
    v51 = [v14 value];
    v52 = sub_24AAB4EF4();
    v54 = v53;

    *(v50 + 32) = v52;
    *(v50 + 40) = v54;
    v55 = sub_24AAB5014();

    v56 = [objc_opt_self() contactWithDisplayName:0 handleStrings:v55];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return v56;
  }

  v3 = [a1 remoteMembers];
  sub_24AA442A0(0, &qword_27EF87030, 0x277D6EEA0);
  sub_24AA84A68(&qword_27EF87038, &qword_27EF87030, 0x277D6EEA0);
  v4 = sub_24AAB5114();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_24AAB52F4();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  if (v5 != 1)
  {
    if (qword_27EF84C68 != -1)
    {
      swift_once();
    }

    v33 = sub_24AAB3A84();
    __swift_project_value_buffer(v33, qword_27EF919D8);
    v34 = sub_24AAB3A64();
    v35 = sub_24AAB5134();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_31;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "The must be exactly one participant to start the audio call.";
    goto LABEL_30;
  }

  v25 = [a1 remoteMembers];
  v26 = sub_24AAB5114();

  v27 = sub_24AA58CE0(v26);

  if (!v27)
  {
    if (qword_27EF84C68 != -1)
    {
      swift_once();
    }

    v40 = sub_24AAB3A84();
    __swift_project_value_buffer(v40, qword_27EF919D8);
    v34 = sub_24AAB3A64();
    v35 = sub_24AAB5134();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_31;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "No remote members.";
LABEL_30:
    _os_log_impl(&dword_24AA0F000, v34, v35, v37, v36, 2u);
    MEMORY[0x24C226630](v36, -1, -1);
LABEL_31:

    goto LABEL_32;
  }

  v28 = [objc_opt_self() sharedInstance];
  v29 = [v28 contactStore];

  v30 = [v27 handle];
  v31 = [v30 value];

  if (!v31)
  {
    sub_24AAB4EF4();
    v31 = sub_24AAB4EE4();
  }

  v24 = [v29 contactForDestinationId_];

  if (v24)
  {

    return v24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87040, &qword_24AAB8C00);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_24AAB7070;
  v43 = [v27 handle];
  v44 = [v43 value];

  v45 = sub_24AAB4EF4();
  v47 = v46;

  *(v42 + 32) = v45;
  *(v42 + 40) = v47;
  v48 = sub_24AAB5014();

  v49 = [objc_opt_self() contactWithDisplayName:0 handleStrings:v48];

  return v49;
}