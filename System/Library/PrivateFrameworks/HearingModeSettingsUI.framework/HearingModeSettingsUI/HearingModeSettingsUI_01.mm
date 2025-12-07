uint64_t storeEnumTagSinglePayload for TableSectionViewModel.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_251FDF818()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251FDF850()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_251FDF88C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 2 || (v1 & 1) != 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = (*(*Strong + 240))(Strong);

      swift_beginAccess();
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        [v5 presentViewController:v4 animated:1 completion:0];
      }
    }
  }
}

uint64_t objectdestroy_33Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_251FDF9B0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 != 2 && (v1 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = (*(*Strong + 240))(Strong);

      swift_beginAccess();
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        [v5 presentViewController:v4 animated:1 completion:0];
      }
    }
  }
}

uint64_t sub_251FDFA90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6900, &qword_2520073C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251FDFB14()
{
  v0 = sub_2520043D0();
  __swift_allocate_value_buffer(v0, qword_27F4C93F8);
  __swift_project_value_buffer(v0, qword_27F4C93F8);
  return sub_2520043C0();
}

uint64_t sub_251FDFB88()
{
  if (qword_27F4C7FD0 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();

  return __swift_project_value_buffer(v0, qword_27F4C93F8);
}

uint64_t sub_251FDFBEC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4C7FD0 != -1)
  {
    swift_once();
  }

  v2 = sub_2520043D0();
  v3 = __swift_project_value_buffer(v2, qword_27F4C93F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_251FDFC94(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___deviceName);
  if (*(v2 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___deviceName + 8))
  {
    v4 = *v3;
  }

  else
  {
    type metadata accessor for AnyHearingFeatureContentProvider(0, a2);
    v5 = sub_251FDFD60();
    v6 = AnyHearingFeatureContentProvider.__allocating_init(device:)(v5);
    if (AnyHearingFeatureContentProvider.featureFlag.getter(v6, v7))
    {
      v4 = AnyHearingFeatureContentProvider.deviceMarketingName.getter();
      v9 = v8;
    }

    else
    {

      v9 = 0xEB000000006F7250;
      v4 = 0x2073646F50726941;
    }

    *v3 = v4;
    v3[1] = v9;
  }

  return v4;
}

void *sub_251FDFD60()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController__headphoneDevice;
  v8 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController__headphoneDevice);
  if (!v8 || (v9 = v8, v10 = sub_251FEAFA4(), v9, !v10))
  {
    sub_2520043A0();
    v11 = sub_2520043B0();
    v12 = sub_2520048B0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_251FC55E0(0x6E6F687064616568, 0xEF65636976654465, &v18);
      _os_log_impl(&dword_251FB5000, v11, v12, "%s: connected device !", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x253097030](v14, -1, -1);
      MEMORY[0x253097030](v13, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v10 = *(v1 + v7);
    v15 = v10;
  }

  return v10;
}

uint64_t sub_251FDFF90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController_listeners;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id HearingAidTuningVoiceEntertainmentController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2520046B0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id HearingAidTuningVoiceEntertainmentController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController__headphoneDevice] = 0;
  v5 = &v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___deviceName];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController_listeners] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___amplificationSliderSection] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___swipeControlAmpSwitchSection] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___transparencyBalanceSection] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___toneDarkLightSection] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___ownVoiceControlSection] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___ambientNoiseReductionSection] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___conversationBoostSection] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___resetAllTuningsSection] = 0;
  if (a2)
  {
    v6 = sub_2520046B0();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for HearingAidTuningVoiceEntertainmentController(a1, a2);
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

void sub_251FE028C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E48, &qword_252007E90);
  v59 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v54 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E50, &qword_252007E98);
  v60 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E58, &unk_252007EA0);
  v58 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v54 - v15;
  v17 = [v0 specifier];
  if (!v17)
  {
    __break(1u);
    goto LABEL_25;
  }

  v18 = v17;
  v19 = [v17 userInfo];

  if (v19)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
  }

  v65 = v63;
  v66 = v64;
  if (!*(&v64 + 1))
  {
    goto LABEL_17;
  }

  sub_251FD6770(0, &qword_27F4C69C0, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v20 = v62;
  v21 = sub_2520046B0();
  v57 = v20;
  v22 = [v20 objectForKey_];

  if (v22)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
  }

  v65 = v63;
  v66 = v64;
  if (!*(&v64 + 1))
  {

LABEL_17:
    sub_251FC6470(&v65, &qword_27F4C69B0, &unk_252007A00);
    goto LABEL_18;
  }

  sub_252003EC0();
  if (swift_dynamicCast())
  {
    v23 = v62;
    v24 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController__headphoneDevice);
    *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController__headphoneDevice) = v62;
    v55 = v23;

    (*((*MEMORY[0x277D85000] & *v0) + 0xE8))(MEMORY[0x277D84FA0]);
    v56 = v0;
    v25 = sub_251FDFD60();
    if (v25)
    {
      v26 = v25;
      v27 = sub_252003E60();

      sub_252003FC0();
      v28 = sub_252003E20();
      v29 = *(v60 + 8);
      v29(v12, v5);
      *&v65 = v28;
      v30 = sub_251FDFD60();
      if (v30)
      {
        v31 = v30;
        v32 = sub_252003E60();

        sub_252004070();
        v33 = sub_252003E20();
        (*(v59 + 8))(v4, v1);
        *&v63 = v33;
        v34 = sub_251FDFD60();
        if (v34)
        {
          v35 = v34;
          v36 = sub_252003E60();

          sub_252003F50();
          v37 = sub_252003E20();
          v29(v9, v5);
          v62 = v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E60, &unk_252007EB0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E68, &unk_2520084D0);
          v38 = MEMORY[0x277CBCD90];
          sub_251FD67B8(&qword_27F4C6E70, &qword_27F4C6E60, &unk_252007EB0, MEMORY[0x277CBCD90]);
          sub_251FD67B8(&qword_27F4C6E78, &qword_27F4C6E68, &unk_2520084D0, v38);
          sub_252004460();
          swift_allocObject();
          v39 = v56;
          swift_unknownObjectWeakInit();
          sub_251FD67B8(&qword_27F4C6E80, &qword_27F4C6E58, &unk_252007EA0, MEMORY[0x277CBCAF8]);
          sub_252004580();

          (*(v58 + 8))(v16, v13);
          v40 = (*((*MEMORY[0x277D85000] & *v39) + 0xF0))(&v65);
          sub_252004480();

          v41 = v40(&v65, 0);
          v43 = type metadata accessor for HearingAidTuningVoiceEntertainmentController(v41, v42);
          v61.receiver = v39;
          v61.super_class = v43;
          objc_msgSendSuper2(&v61, sel_viewDidLoad);

          return;
        }

        goto LABEL_27;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_18:
  if (qword_27F4C7FD0 != -1)
  {
    swift_once();
  }

  v44 = sub_2520043D0();
  __swift_project_value_buffer(v44, qword_27F4C93F8);
  v45 = sub_2520043B0();
  v46 = sub_2520048B0();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v65 = v48;
    *v47 = 136315650;
    *(v47 + 4) = sub_251FC55E0(0x4C64694477656976, 0xED0000292864616FLL, &v65);
    *(v47 + 12) = 2048;
    *(v47 + 14) = 50;
    *(v47 + 22) = 2080;
    sub_252003F10();
    v49 = sub_252003EF0();
    sub_252003EE0();

    sub_252003EC0();
    v50 = sub_252004610();
    v52 = v51;

    v53 = sub_251FC55E0(v50, v52, &v65);

    *(v47 + 24) = v53;
    _os_log_impl(&dword_251FB5000, v45, v46, "%s: %ld Depedencies not meet! %s", v47, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253097030](v48, -1, -1);
    MEMORY[0x253097030](v47, -1, -1);
  }
}

char *sub_251FE0B64()
{
  v1 = sub_251FDFD60();
  if (v1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C69C8, &qword_252007400);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252007E80;
    v3 = MEMORY[0x277D85000];
    *(inited + 32) = (*((*MEMORY[0x277D85000] & *v0) + 0xF8))();
    *(inited + 40) = (*((*v3 & *v0) + 0x110))();
    *(inited + 48) = (*((*v3 & *v0) + 0x128))();
    *(inited + 56) = (*((*v3 & *v0) + 0x140))();
    *(inited + 64) = (*((*v3 & *v0) + 0x170))();
    *(inited + 72) = (*((*v3 & *v0) + 0x188))();
    *(inited + 80) = (*((*v3 & *v0) + 0x158))();
    *(inited + 88) = (*((*v3 & *v0) + 0x1A0))();
    v4 = sub_251FD1C74(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C69D0, &qword_252007408);
    swift_arrayDestroy();
    sub_251FD6770(0, &qword_27F4C69B8, 0x277D3FAD8);
    v5 = sub_2520047A0();
    v6 = sub_2520046B0();
    [v0 setValue:v5 forKey:v6];

    v7 = sub_251FD1A78(v4);
  }

  else
  {
    sub_251FD6770(0, &qword_27F4C69B8, 0x277D3FAD8);
    v8 = sub_2520047A0();
    v9 = sub_2520046B0();
    [v0 setValue:v8 forKey:v9];

    if (qword_27F4C7FD0 != -1)
    {
      swift_once();
    }

    v10 = sub_2520043D0();
    __swift_project_value_buffer(v10, qword_27F4C93F8);
    v11 = sub_2520043B0();
    v12 = sub_2520048B0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_251FC55E0(0x6569666963657073, 0xEC00000029287372, &v16);
      *(v13 + 12) = 2048;
      *(v13 + 14) = 86;
      _os_log_impl(&dword_251FB5000, v11, v12, "%s: %ld Depedencies not meet, bailing out of specifiers returning empty conroller!", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x253097030](v14, -1, -1);
      MEMORY[0x253097030](v13, -1, -1);
    }

    return 0;
  }

  return v7;
}

uint64_t (*sub_251FE10F8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FE10A0();
  return sub_251FE1140;
}

uint64_t sub_251FE116C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_251FE11D4(void *a1)
{
  v2 = sub_2520042A0();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2520046A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252004680();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v31 = a1;
  sub_252004670();
  v12 = sub_252004660();
  sub_251FDFC94(v12, v13);
  sub_252004640();

  sub_252004660();
  v14 = sub_252004690();
  v16 = type metadata accessor for HearingAidTuningVoiceEntertainmentController(v14, v15);
  v17 = sub_251FEAB30(v9);
  v19 = v18;
  v20 = *(v6 + 8);
  v20(v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  swift_allocObject();
  sub_252004360();
  v29 = v17;
  v30 = v19;
  sub_252004310();

  v31 = a1;
  sub_252004620();
  sub_251FEAB30(v9);
  v20(v9, v5);
  v32 = v16;
  v31 = a1;
  v21 = a1;
  v22 = v26;
  sub_252004290();
  sub_252004320();

  (*(v27 + 8))(v22, v28);
  sub_252004330();

  v23 = sub_252004350();

  return v23;
}

uint64_t (*sub_251FE15C0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FE114C();
  return sub_251FE1608;
}

uint64_t sub_251FE1648(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *&v4[*a1];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = sub_251FE1744(v4, a2, a3, a4);
    *&v4[v5] = v7;
  }

  return v7;
}

uint64_t (*sub_251FE16C4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FE1614();
  return sub_251FE170C;
}

uint64_t sub_251FE1744(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a4;
  v5 = sub_2520042A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2520046A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v15 = sub_252004620();
  v17 = type metadata accessor for HearingAidTuningVoiceEntertainmentController(v15, v16);
  sub_251FEAB30(v14);
  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  swift_allocObject();
  sub_252004360();
  v23 = v17;
  v22 = a1;
  v18 = a1;
  sub_252004290();
  sub_252004320();

  (*(v6 + 8))(v9, v5);
  v21[4] = v18;
  sub_252004330();

  v19 = sub_252004350();

  return v19;
}

uint64_t (*sub_251FE19EC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FE1718();
  return sub_251FE1A34;
}

void sub_251FE1A60(void *a1)
{
  v2 = sub_2520042A0();
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2520046A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251FDFD60();
  if (!v12)
  {
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  v14 = sub_252003E60();

  LODWORD(v13) = sub_252004110();
  if (v13 != 1)
  {
    goto LABEL_9;
  }

  v15 = sub_251FDFD60();
  if (!v15)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  v17 = sub_252003E60();

  LODWORD(v16) = sub_252004140();
  if (v16 == 2)
  {
    goto LABEL_7;
  }

  v18 = sub_251FDFD60();
  if (v18)
  {
    v19 = v18;
    v20 = sub_252003E60();

    LODWORD(v19) = sub_252004140();
    if (v19 == 3)
    {
LABEL_7:
      v21 = sub_251FDFD60();
      if (v21)
      {
        v22 = v21;
        v23 = sub_252003E60();

        LODWORD(v22) = sub_252004140();
        v43[3] = v22 == 2;
        v44[0] = a1;
        v24 = sub_252004620();
        v26 = type metadata accessor for HearingAidTuningVoiceEntertainmentController(v24, v25);
        sub_251FEAB30(v11);
        (*(v8 + 8))(v11, v7);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
        swift_allocObject();
        sub_252004360();
        v44[3] = v26;
        v44[0] = a1;
        a1;
        sub_252004290();
        sub_252004320();

        v27 = (*(v3 + 8))(v6, v2);
        MEMORY[0x28223BE20](v27, v28);
        sub_252004330();

        sub_252004350();

        return;
      }

      goto LABEL_19;
    }

LABEL_9:
    if (qword_27F4C7FD0 != -1)
    {
      swift_once();
    }

    v29 = sub_2520043D0();
    __swift_project_value_buffer(v29, qword_27F4C93F8);
    v2 = a1;
    v30 = sub_2520043B0();
    v31 = sub_2520048C0();
    if (!os_log_type_enabled(v30, v31))
    {

      return;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v44[0] = v33;
    *v32 = 136315906;
    *(v32 + 4) = sub_251FC55E0(0xD000000000000016, 0x800000025200CF00, v44);
    *(v32 + 12) = 1024;
    v34 = sub_251FDFD60();
    if (v34)
    {
      v35 = v34;
      v36 = sub_252003E60();

      LODWORD(v35) = sub_252004110();
      *(v32 + 14) = v35 == 1;

      *(v32 + 18) = 1024;
      v37 = sub_251FDFD60();
      if (v37)
      {
        v38 = v37;
        v39 = sub_252003E60();

        LODWORD(v38) = sub_252004140();
        *(v32 + 20) = v38 == 2;

        *(v32 + 24) = 1024;
        v40 = sub_251FDFD60();
        if (v40)
        {
          v41 = v40;
          v42 = sub_252003E60();

          LODWORD(v41) = sub_252004140();
          *(v32 + 26) = v41 == 3;

          _os_log_impl(&dword_251FB5000, v30, v31, "%s: haV2 capability - %{BOOL}d hav2 region supported - %{BOOL}d hav2 region rescinded - %{BOOL}d", v32, 0x1Eu);
          __swift_destroy_boxed_opaque_existential_1Tm(v33);
          MEMORY[0x253097030](v33, -1, -1);
          MEMORY[0x253097030](v32, -1, -1);

          return;
        }

        goto LABEL_22;
      }

LABEL_21:

      __break(1u);
LABEL_22:

      __break(1u);
      goto LABEL_23;
    }

LABEL_20:

    __break(1u);
    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
}

uint64_t (*sub_251FE2058(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FE1A40();
  return sub_251FE20A0;
}

uint64_t sub_251FE20CC(void *a1)
{
  v2 = sub_2520042A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2520046A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1;
  v12 = sub_252004620();
  v14 = type metadata accessor for HearingAidTuningVoiceEntertainmentController(v12, v13);
  sub_251FEAB30(v11);
  (*(v8 + 8))(v11, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  swift_allocObject();
  sub_252004360();
  v21 = v14;
  v20 = a1;
  v15 = a1;
  sub_252004290();
  sub_252004320();

  (*(v3 + 8))(v6, v2);
  v19 = v15;
  sub_252004330();

  v16 = sub_252004350();

  return v16;
}

uint64_t (*sub_251FE2388(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FE20AC();
  return sub_251FE23D0;
}

uint64_t sub_251FE23FC(void *a1)
{
  v2 = sub_2520046A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2520042A0();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251FE26C0(a1);
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  swift_allocObject();
  sub_252004360();
  v22 = v11;
  v23 = v13;
  sub_252004310();

  v24 = a1;
  v14 = sub_252004620();
  v16 = type metadata accessor for HearingAidTuningVoiceEntertainmentController(v14, v15);
  sub_251FEAB30(v6);
  (*(v3 + 8))(v6, v2);
  v25 = v16;
  v24 = a1;
  v17 = a1;
  sub_252004290();
  sub_252004320();

  (*(v7 + 8))(v10, v21);
  v18 = sub_252004350();

  return v18;
}

void *sub_251FE26C0(uint64_t a1)
{
  v2 = sub_2520046A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252004680();
  MEMORY[0x28223BE20](v7 - 8, v8);
  result = sub_251FDFD60();
  if (result)
  {
    v10 = result;
    v11 = sub_252003E60();

    sub_252004110();
    result = sub_251FDFD60();
    if (result)
    {
      v12 = result;
      v13 = sub_252003E60();

      sub_252004140();
      v19[1] = a1;
      sub_252004670();
      v14 = sub_252004660();
      sub_251FDFC94(v14, v15);
      sub_252004640();

      sub_252004660();
      v16 = sub_252004690();
      type metadata accessor for HearingAidTuningVoiceEntertainmentController(v16, v17);
      v18 = sub_251FEAB30(v6);
      (*(v3 + 8))(v6, v2);
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_251FE2978(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FE23DC();
  return sub_251FE29C0;
}

uint64_t sub_251FE29EC(uint64_t a1)
{
  v2 = sub_2520046A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2520042A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  swift_allocObject();
  sub_252004360();
  *&v16[0] = a1;
  v12 = sub_252004620();
  type metadata accessor for HearingAidTuningVoiceEntertainmentController(v12, v13);
  sub_251FEAB30(v6);
  (*(v3 + 8))(v6, v2);
  memset(v16, 0, sizeof(v16));
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_252004290();
  sub_252004340();

  (*(v8 + 8))(v11, v7);
  v14 = sub_252004350();

  return v14;
}

uint64_t (*sub_251FE2CA0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FE29CC();
  return sub_251FE2CE8;
}

id sub_251FE2CF4()
{
  result = sub_251FDFD60();
  if (result)
  {
    v1 = result;
    v2 = sub_252003E60();

    sub_252003F30();
    v4 = v3;

    v5 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    LODWORD(v6) = v4;

    return [v5 initWithFloat_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_251FE2E08(void *a1)
{
  v2 = sub_251FDFD60();
  if (v2)
  {
    v3 = v2;
    v4 = sub_252003E60();

    [a1 floatValue];
    sub_252003F40();
  }

  else
  {
    __break(1u);
  }
}

void *sub_251FE2F0C()
{
  result = sub_251FDFD60();
  if (result)
  {
    v1 = result;
    v2 = sub_252003E60();

    sub_252004040();
    sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
    return sub_252004970();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_251FE306C(void *a1)
{
  v2 = sub_251FDFD60();
  if (v2)
  {
    v3 = v2;
    v4 = sub_252003E60();

    [a1 BOOLValue];
    sub_252004050();
  }

  else
  {
    __break(1u);
  }
}

id sub_251FE3188(uint64_t a1)
{
  v2 = v1;
  v4 = sub_252003B60();
  v6 = type metadata accessor for HearingAidTuningVoiceEntertainmentController(v4, v5);
  v16.receiver = v1;
  v16.super_class = v6;
  v7 = objc_msgSendSuper2(&v16, sel_tableView_cellForRowAtIndexPath_, a1, v4);

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8 && (v9 = v8, [v8 type] == 13))
  {
    v10 = v7;
    v11 = [v9 textLabel];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_opt_self() redColor];
      [v12 setTextColor_];
    }
  }

  else
  {

    v10 = sub_252003B60();
    v15.receiver = v2;
    v15.super_class = v6;
    v9 = objc_msgSendSuper2(&v15, sel_tableView_cellForRowAtIndexPath_, a1, v10);
  }

  return v9;
}

id HearingAidTuningVoiceEntertainmentController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HearingAidTuningVoiceEntertainmentController(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_251FE3528()
{
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController__headphoneDevice) = 0;
  v1 = (v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___deviceName);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController_listeners) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___amplificationSliderSection) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___swipeControlAmpSwitchSection) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___transparencyBalanceSection) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___toneDarkLightSection) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___ownVoiceControlSection) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___ambientNoiseReductionSection) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___conversationBoostSection) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___resetAllTuningsSection) = 0;
  sub_252004B10();
  __break(1u);
}

uint64_t sub_251FE3614()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_251FE364C()
{
  if (qword_27F4C7FD0 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();
  __swift_project_value_buffer(v0, qword_27F4C93F8);
  v1 = sub_2520043B0();
  v2 = sub_2520048C0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_251FB5000, v1, v2, "objectWillChange: reload called", v3, 2u);
    MEMORY[0x253097030](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong reloadSpecifiers];
  }
}

void type metadata accessor for HMMultiState()
{
  if (!qword_27F4C6E88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F4C6E88);
    }
  }
}

void sub_251FE37CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_251FDFD60();

    if (v2)
    {
      v3 = sub_252003E60();
      swift_allocObject();
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      sub_252003F20();
    }
  }
}

void sub_251FE38BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong reloadSpecifiers];
  }
}

unint64_t sub_251FE3920(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6EB0, qword_252007F80);
    v3 = sub_252004B50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_251FD4318(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_251FE3A24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AB8, &unk_2520084E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_251FE3A94(void *a1)
{
  v7 = type metadata accessor for HearingAidTuningValuesSliderCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E90, &qword_252007F48);
  [a1 setProperty:sub_252004BB0() forKey:{*MEMORY[0x277D3FE58], v7}];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AA0, &unk_252007F50);
  inited = swift_initStackObject();
  *(inited + 32) = 0x745F726564696C73;
  *(inited + 16) = xmmword_252007350;
  *(inited + 40) = 0xEB00000000657079;
  *(inited + 48) = 3;
  *(inited + 72) = &type metadata for HearingAidTuningValuesSliderCell.SliderType;
  *(inited + 80) = 0x6E6F687064616568;
  *(inited + 88) = 0xEF65636976654465;
  v3 = sub_251FDFD60();
  if (v3)
  {
    v4 = v3;
    *(inited + 120) = sub_252003EC0();
    *(inited + 96) = v4;
    sub_251FD4B5C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AB8, &unk_2520084E0);
    swift_arrayDestroy();
    v5 = sub_252004600();

    [a1 setUserInfo_];

    v6 = sub_2520047F0();
    [a1 setProperty:v6 forKey:*MEMORY[0x277D3FF38]];
  }

  else
  {
    __break(1u);
  }
}

void sub_251FE3C98(void *a1, char a2)
{
  v8 = type metadata accessor for HearingAidTuningValuesSliderCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E90, &qword_252007F48);
  [a1 setProperty:sub_252004BB0() forKey:{*MEMORY[0x277D3FE58], v8}];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AA0, &unk_252007F50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252007350;
  *(inited + 32) = 0x745F726564696C73;
  *(inited + 40) = 0xEB00000000657079;
  *(inited + 48) = a2;
  *(inited + 72) = &type metadata for HearingAidTuningValuesSliderCell.SliderType;
  *(inited + 80) = 0x6E6F687064616568;
  *(inited + 88) = 0xEF65636976654465;
  v5 = sub_251FDFD60();
  if (v5)
  {
    v6 = v5;
    *(inited + 120) = sub_252003EC0();
    *(inited + 96) = v6;
    sub_251FD4B5C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AB8, &unk_2520084E0);
    swift_arrayDestroy();
    v7 = sub_252004600();

    [a1 setUserInfo_];
  }

  else
  {
    __break(1u);
  }
}

void sub_251FE3E58(void *a1)
{
  v2 = sub_2520046B0();
  [a1 setProperty:v2 forKey:*MEMORY[0x277D3FF88]];
}

void sub_251FE3EC0(void *a1)
{
  type metadata accessor for HearingAidTuningAmplificationSliderCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E98, &qword_252007F68);
  [a1 setProperty:sub_252004BB0() forKey:*MEMORY[0x277D3FE58]];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6EA0, &qword_252007F70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252007360;
  *(inited + 32) = 0x6E6F687064616568;
  *(inited + 40) = 0xEF65636976654465;
  v3 = sub_251FDFD60();
  if (v3)
  {
    *(inited + 48) = v3;
    sub_251FE3920(inited);
    swift_setDeallocating();
    sub_251FC6470(inited + 32, &qword_27F4C6EA8, &qword_252007F78);
    sub_252003EC0();
    v4 = sub_252004600();

    [a1 setUserInfo_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_251FE402C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_allocWithZone(sub_252003E10());
  v5 = a3;

  return sub_252003E00();
}

id _HearingAidInternalViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _HearingAidInternalViewController.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for _HearingAidInternalViewController(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id _HearingAidInternalViewController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for _HearingAidInternalViewController(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_251FE4248()
{
  v0 = sub_2520043D0();
  __swift_allocate_value_buffer(v0, qword_27F4C9410);
  __swift_project_value_buffer(v0, qword_27F4C9410);
  return sub_2520043C0();
}

uint64_t sub_251FE42C8()
{
  if (qword_27F4C8060 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();

  return __swift_project_value_buffer(v0, qword_27F4C9410);
}

uint64_t sub_251FE432C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4C8060 != -1)
  {
    swift_once();
  }

  v2 = sub_2520043D0();
  v3 = __swift_project_value_buffer(v2, qword_27F4C9410);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_251FE44E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_flowController;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_251FE4540@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_251FE459C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x88);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

id sub_251FE46A4(void *a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_252004680();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = sub_2520046A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_flowController] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___primaryBoldButton] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___secondaryLinkButton] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_lisenters] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_serviceClient] = a1;
  type metadata accessor for AnyHearingFeatureContentProvider(0, v13);
  v34 = a1;
  v33 = a2;
  v14 = AnyHearingFeatureContentProvider.__allocating_init(device:)(a2);
  v16 = AnyHearingFeatureContentProvider.featureFlag.getter(v14, v15);
  v32 = v14;
  if (v16)
  {
    v17 = AnyHearingFeatureContentProvider.deviceMarketingName.getter();
  }

  else
  {
    v18 = 0xEB000000006F7250;
    v17 = 0x2073646F50726941;
  }

  v19 = &v3[OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_deviceName];
  *v19 = v17;
  v19[1] = v18;
  sub_252004620();
  sub_251FEAB30(v12);
  v20 = *(v9 + 8);
  v20(v12, v8);
  v21 = sub_2520046B0();
  v30 = v8;
  v31 = v21;

  sub_252004670();
  sub_252004660();

  sub_252004640();

  sub_252004660();

  sub_252004640();

  sub_252004660();
  sub_252004690();
  sub_251FEAB30(v12);
  v20(v12, v30);
  v22 = sub_2520046B0();

  v25 = type metadata accessor for HearingAssistWelcomeController(v23, v24);
  v35.receiver = v3;
  v35.super_class = v25;
  v26 = v31;
  v27 = objc_msgSendSuper2(&v35, sel_initWithTitle_detailText_icon_contentLayout_, v31, v22, 0, 2);

  return v27;
}

uint64_t sub_251FE4A6C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___primaryBoldButton);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___primaryBoldButton) = a1;
  return MEMORY[0x2821F96F8](a1, v2);
}

void (*sub_251FE4A80(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_251FE4A4C();
  return sub_251FE4AC8;
}

void sub_251FE4AC8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___primaryBoldButton);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___primaryBoldButton) = v2;
}

id sub_251FE4B00(uint64_t *a1, void *a2, SEL *a3, char a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v9 = [objc_opt_self() *a3];
    sub_251FE63A0(v9, a4);
    v10 = *(v4 + v5);
    *(v4 + v5) = v9;
    v7 = v9;

    v6 = 0;
  }

  v11 = v6;
  return v7;
}

uint64_t sub_251FE4B8C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___secondaryLinkButton);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___secondaryLinkButton) = a1;
  return MEMORY[0x2821F96F8](a1, v2);
}

void (*sub_251FE4BA0(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_251FE4AE0();
  return sub_251FE4BE8;
}

void sub_251FE4BE8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___secondaryLinkButton);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___secondaryLinkButton) = v2;
}

void sub_251FE4C00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2520043D0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*((*MEMORY[0x277D85000] & *v1) + 0x80))(v7);
  if (v10)
  {
    v11 = [v10 headphoneDevice];
    swift_unknownObjectRelease();
    v12 = objc_opt_self();
    sub_252003EB0();
    v13 = sub_2520046B0();

    v22 = [v12 makeTestResultsControllerWithSample:a1 bluetoothAddress:v13];

    v14 = [v2 navigationController];
    if (v14)
    {
      v15 = v14;
      [v14 pushViewController:v22 animated:1];
    }

    v16 = v22;
  }

  else
  {
    v17 = sub_251FE87D8();
    (*(v5 + 16))(v9, v17, v4);
    v18 = sub_2520043B0();
    v19 = sub_2520048B0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_251FB5000, v18, v19, "HearingAssistWelcomeController::audiogramIngestionDidSaveAudiogram early exit as we dont have a headphoneDevice no flow controller", v20, 2u);
      MEMORY[0x253097030](v20, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_251FE4F24(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_lisenters;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_251FE4FDC()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v54 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6EF0, &qword_252007A20);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v57 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6EF8, &qword_252007FE8);
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v60 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6F00, &unk_252007FF0);
  v64 = *(v11 - 8);
  v65 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v63 = &v54 - v13;
  v14 = sub_252004680();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v16 = sub_2520046A0();
  v66 = v16;
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for HearingAssistWelcomeController(v19, v22);
  v70.receiver = v0;
  v70.super_class = v23;
  objc_msgSendSuper2(&v70, sel_viewDidLoad);
  v69[0] = v0;
  sub_252004620();
  sub_251FEAB30(v21);
  v24 = *(v17 + 8);
  v24(v21, v16);
  v25 = sub_2520046B0();

  v69[0] = v0;
  sub_252004670();
  sub_252004660();
  v26 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_deviceName);
  v67 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_deviceName + 8);
  v68 = v26;
  sub_252004640();
  sub_252004660();
  sub_252004690();
  sub_251FEAB30(v21);
  v27 = v66;
  v24(v21, v66);
  v28 = sub_2520046B0();

  v29 = sub_2520046B0();
  [v1 addBulletedListItemWithTitle:v25 description:v28 symbolName:v29];

  v69[0] = v1;
  sub_252004620();
  sub_251FEAB30(v21);
  v24(v21, v27);
  v30 = sub_2520046B0();

  v69[0] = v1;
  sub_252004670();
  sub_252004660();
  sub_252004640();
  sub_252004660();
  sub_252004690();
  sub_251FEAB30(v21);
  v24(v21, v27);
  v31 = sub_2520046B0();

  v32 = sub_2520046B0();
  [v1 addBulletedListItemWithTitle:v30 description:v31 symbolName:v32];

  v33 = MEMORY[0x277D85000];
  v34 = (*((*MEMORY[0x277D85000] & *v1) + 0x80))();
  if (v34)
  {
    v35 = v34;
    sub_251FE5E90();
    v36 = [v35 headphoneDevice];
    v37 = sub_252003E60();

    v38 = v57;
    sub_252004000();

    v39 = v59;
    v40 = sub_252004500();
    (*(v58 + 8))(v38, v39);
    v69[0] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6BD0, &qword_252007A38);
    sub_251FD67B8(&qword_27F4C6F10, &unk_27F4C6BD0, &qword_252007A38, MEMORY[0x277CBCD90]);
    v41 = v60;
    sub_252004560();

    sub_251FD67B8(&qword_27F4C6F18, &qword_27F4C6EF8, &qword_252007FE8, MEMORY[0x277CBCC18]);
    sub_251FE7150();
    v42 = v62;
    v43 = v63;
    sub_252004570();
    (*(v61 + 8))(v41, v42);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_251FD67B8(&unk_27F4C6F40, &unk_27F4C6F00, &unk_252007FF0, MEMORY[0x277CBCBE0]);
    v44 = v65;
    sub_252004580();

    (*(v64 + 8))(v43, v44);
    v45 = (*((*v33 & *v1) + 0xE8))(v69);
    sub_252004480();

    v45(v69, 0);
    return swift_unknownObjectRelease();
  }

  else
  {
    v47 = sub_251FE87D8();
    v49 = v54;
    v48 = v55;
    v50 = v56;
    (*(v55 + 16))(v54, v47, v56);
    v51 = sub_2520043B0();
    v52 = sub_2520048B0();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_251FB5000, v51, v52, "Can not load HearingAssistWelcomeController due to depedencies not met flowController is nil", v53, 2u);
      MEMORY[0x253097030](v53, -1, -1);
    }

    return (*(v48 + 8))(v49, v50);
  }
}

void sub_251FE5990(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for HearingAssistWelcomeController(a1, a2);
  objc_msgSendSuper2(&v10, sel_viewDidAppear_, v4 & 1);
  sub_252003D90();
  v5 = sub_252003D70();
  sub_252003D50();
  sub_252003D80();

  v6 = sub_252003D70();
  v7 = (*((*MEMORY[0x277D85000] & *v3) + 0x80))();
  if (v7)
  {
    v8 = [v7 headphoneDevice];
    swift_unknownObjectRelease();
    v9 = sub_252003E50();

    [v9 productID];
  }

  sub_252003D80();
}

void sub_251FE5B14(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for HearingAssistWelcomeController(a1, a2);
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, v3 & 1);
  sub_252003F10();
  v4 = sub_252003EF0();
  v5 = sub_252003F00();

  v7[4] = sub_251FE5BFC;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_251FD9520;
  v7[3] = &block_descriptor_1;
  v6 = _Block_copy(v7);
  [v5 triggerFetchAudiogramsWithCompletion_];
  _Block_release(v6);
}

void sub_251FE5BFC(void *a1)
{
  if (qword_27F4C8060 != -1)
  {
    swift_once();
  }

  v2 = sub_2520043D0();
  __swift_project_value_buffer(v2, qword_27F4C9410);
  v3 = a1;
  oslog = sub_2520043B0();
  v4 = sub_2520048C0();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    if (a1)
    {
      v7 = 0x64656C696146;
    }

    else
    {
      v7 = 0x6564656563637553;
    }

    if (a1)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE900000000000064;
    }

    v9 = sub_251FC55E0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_251FB5000, oslog, v4, "Audiogram Refresh: [HearingAssistWelcomeController] Refresh Trigger %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x253097030](v6, -1, -1);
    MEMORY[0x253097030](v5, -1, -1);
  }
}

uint64_t sub_251FE5E90()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v45 - v9;
  v11 = sub_2520046A0();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (*((*MEMORY[0x277D85000] & *v0) + 0x80))(v14);
  if (v17)
  {
    v18 = v17;
    v46 = v10;
    v47 = v2;
    v19 = [v0 buttonTray];
    v48 = v0;
    v20 = sub_252004620();
    type metadata accessor for HearingAssistWelcomeController(v20, v21);
    sub_251FEAB30(v16);
    (*(v12 + 8))(v16, v11);
    v22 = sub_2520046B0();

    [v19 setCaptionText_];

    v23 = MEMORY[0x277D85000];
    v24 = *((*MEMORY[0x277D85000] & *v1) + 0xA0);
    v25 = v24();
    sub_251FE63A0(v25, 0);

    v26 = [v1 &selRef_sharedInstance];
    v27 = v24();
    [v26 addButton_];

    v28 = [v18 headphoneDevice];
    v29 = sub_252003E60();

    LODWORD(v24) = sub_252004120();
    if (v24 == 2)
    {
      v30 = *((*v23 & *v1) + 0xB8);
      v31 = v30();
      sub_251FE63A0(v31, 1);

      v32 = [v1 &selRef_sharedInstance];
      v33 = v30();
      [v32 addButton_];

      v34 = sub_251FE87D8();
      v36 = v46;
      v35 = v47;
      (*(v3 + 16))(v46, v34, v47);
      v37 = sub_2520043B0();
      v38 = sub_2520048B0();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_251FB5000, v37, v38, "Hearing Test Supported -- Adding second button", v39, 2u);
        MEMORY[0x253097030](v39, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return (*(v3 + 8))(v36, v35);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v40 = sub_251FE87D8();
    (*(v3 + 16))(v7, v40, v2);
    v41 = sub_2520043B0();
    v42 = sub_2520048B0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_251FB5000, v41, v42, "Can not load HearingAssistWelcomeController due to depedencies not met flowController is nil", v43, 2u);
      MEMORY[0x253097030](v43, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_251FE63A0(void *a1, char a2)
{
  v3 = v2;
  v34[0] = a1;
  v4 = sub_2520043D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2520046A0();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*((*MEMORY[0x277D85000] & *v2) + 0x80))(v12);
  if (v15)
  {
    v16 = v15;
    v17 = [v15 headphoneDevice];
    v18 = sub_252003E60();

    sub_252004120();
    v19 = [v16 headphoneDevice];
    v20 = sub_252003E60();

    v21 = sub_252003FD0();
    if (v21 >> 62)
    {
      sub_252004B20();
    }

    MEMORY[0x28223BE20](v22, v23);
    sub_2520049C0();
    v34[1] = v3;
    v28 = sub_252004620();
    type metadata accessor for HearingAssistWelcomeController(v28, v29);
    sub_251FEAB30(v14);
    (*(v10 + 8))(v14, v9);
    v30 = sub_2520046B0();

    v31 = v34[0];
    [v34[0] setTitle:v30 forState:0];

    sub_251FD6770(0, &qword_27F4C6BB0, 0x277D750C8);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = sub_2520049A0();
    [v31 addAction:v32 forControlEvents:64];

    return swift_unknownObjectRelease();
  }

  else
  {
    v24 = sub_251FE87D8();
    (*(v5 + 16))(v8, v24, v4);
    v25 = sub_2520043B0();
    v26 = sub_2520048B0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_251FB5000, v25, v26, "Can not load HearingAssistWelcomeController due to depedencies not met flowController is nil", v27, 2u);
      MEMORY[0x253097030](v27, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_251FE6A04(uint64_t a1)
{
  v1 = sub_2520043D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = MEMORY[0x277D85000];
    v8 = Strong;
    v9 = (*((*MEMORY[0x277D85000] & *Strong) + 0x80))();

    if (v9)
    {
      v10 = [v9 headphoneDevice];
      swift_unknownObjectRelease();
      type metadata accessor for HMHearingTestService(0, v11);
      v12 = HMHearingTestService.__allocating_init()();
      v13 = (*((*v7 & *v12) + 0x58))();

      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14 && (v15 = [v14 topViewController]) != 0)
      {
        v16 = v15;
        swift_beginAccess();
        v17 = swift_unknownObjectWeakLoadStrong();
        if (v17)
        {
          v18 = v17;
          v19 = *(v17 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_serviceClient);

          sub_252003D90();
          v20 = sub_252003D70();
          sub_252003D50();
          sub_252003D80();

          sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
          v21 = swift_allocObject();
          swift_beginAccess();
          v22 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakInit();
          v23 = swift_allocObject();
          v24 = swift_unknownObjectWeakLoadStrong();

          swift_unknownObjectWeakInit();

          v25 = swift_allocObject();
          *(v25 + 16) = v23;
          *(v25 + 24) = v16;

          v26 = v16;
          static HearingModeUIService.showOcclusionAlert(_:serviceClient:presentAction:passAction:)(v10, v19, sub_251FE75D4, v21, sub_251FE76A8, v25);
        }

        v10 = v13;
      }

      else
      {
        v16 = v13;
      }
    }
  }

  v28 = sub_251FE87D8();
  (*(v2 + 16))(v5, v28, v1);
  v29 = sub_2520043B0();
  v30 = sub_2520048B0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_251FB5000, v29, v30, "Unable to show results page as depedencies not met.", v31, 2u);
    MEMORY[0x253097030](v31, -1, -1);
  }

  return (*(v2 + 8))(v5, v1);
}

id HearingAssistWelcomeController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_2520046B0();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_2520046B0();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_2520046B0();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id HearingAssistWelcomeController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_2520046B0();

  if (a4)
  {
    v12 = sub_2520046B0();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id HearingAssistWelcomeController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HearingAssistWelcomeController(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_251FE7150()
{
  result = qword_27F4C6F20;
  if (!qword_27F4C6F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4C6F28, &qword_252008000);
    sub_251FE71D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C6F20);
  }

  return result;
}

unint64_t sub_251FE71D4()
{
  result = qword_27F4C6F30;
  if (!qword_27F4C6F30)
  {
    sub_251FD6770(255, &unk_27F4C6C00, 0x277CCD030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C6F30);
  }

  return result;
}

uint64_t sub_251FE723C()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_251FE7274()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong buttonTray];

    [v2 removeAllButtons];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_251FE5E90();
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_251FE7420(id result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    return [*(v3 + 16) removeAction:result forControlEvents:a3];
  }

  return result;
}

void sub_251FE7440()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationController];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_allocWithZone(MEMORY[0x277CEFE90]) initWithDelegate_];
      [v4 setAnalyticsClient_];
      [v3 presentViewController:v4 animated:1 completion:0];
    }
  }
}

void sub_251FE7504()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationController];

    if (v2)
    {
      type metadata accessor for HearingAidUserAgeCheckViewController(0, v3);
      v4 = sub_251FDD7EC();
      [v2 pushViewController:v4 animated:1];
    }
  }

  sub_252003D90();
  v5 = sub_252003D70();
  sub_252003D50();
  sub_252003D80();
}

void sub_251FE75D4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong navigationController];

    if (v4)
    {
      [v4 presentViewController:a1 animated:1 completion:0];
    }
  }
}

uint64_t sub_251FE7668()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_251FE76A8()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong navigationController];

    if (v4)
    {
      [v4 pushViewController:v1 animated:1];
    }
  }
}

uint64_t sub_251FE7740()
{
  v0 = sub_2520043D0();
  __swift_allocate_value_buffer(v0, qword_27F4C9428);
  __swift_project_value_buffer(v0, qword_27F4C9428);
  return sub_2520043C0();
}

uint64_t sub_251FE77B8()
{
  if (qword_27F4C8070 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();

  return __swift_project_value_buffer(v0, qword_27F4C9428);
}

uint64_t sub_251FE781C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4C8070 != -1)
  {
    swift_once();
  }

  v2 = sub_2520043D0();
  v3 = __swift_project_value_buffer(v2, qword_27F4C9428);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_251FE78C4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HearingTopLevelCaseObjectWrapper(a1, a2);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_252003AD0();

  return v4;
}

uint64_t HearingTopLevelCellUseCase.localizedStrings(_:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_2520046A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 <= 1)
  {
    if (!a2)
    {
      v24 = 0;
      sub_252004620();
      v8 = sub_251FEAB30(v7);
      v9 = *(v4 + 8);
      v9(v7, v3);
      v24 = 0;
      sub_252004620();
      v10 = v7;
LABEL_6:
      sub_251FEAB30(v10);
      v9(v7, v3);
      return v8;
    }

    if (a2 == 1)
    {
      v11 = sub_252003E60();
      v12 = sub_252003F60();

      v24 = 1;
      sub_252004620();
      v8 = sub_251FEAB30(v7);
      v13 = (*(v4 + 8))(v7, v3);
      if (v12)
      {
        type metadata accessor for HearingTopLevelCaseObjectWrapper(v13, v14);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v16 = [objc_opt_self() bundleForClass_];
        sub_252003AD0();
      }

      return v8;
    }

LABEL_31:
    v24 = a2;
    sub_252004BA0();
    __break(1u);
    goto LABEL_32;
  }

  if (a2 == 2)
  {
    v24 = 2;
    sub_252004620();
    v8 = sub_251FEAB30(v7);
    v9 = *(v4 + 8);
    v9(v7, v3);
    v24 = 2;
    sub_252004620();
    v10 = v7;
    goto LABEL_6;
  }

  if (a2 != 3)
  {
    goto LABEL_31;
  }

  v17 = sub_252003E60();
  v18 = sub_2520040D0();

  v19 = sub_252003E60();
  v20 = sub_252004080();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6FD0, &qword_252008080);
  if (v18)
  {
    if (v18 == 2)
    {
      if (v20 && v20 != 2)
      {
        if (v20 != 1)
        {
          goto LABEL_32;
        }

        goto LABEL_20;
      }

      goto LABEL_26;
    }

    if (v18 == 1)
    {
      if (!v20 || v20 == 2)
      {
        v24 = 3;
        goto LABEL_29;
      }

      if (v20 == 1)
      {
        v24 = 3;
        goto LABEL_29;
      }
    }
  }

  else
  {
    switch(v20)
    {
      case 2:
        goto LABEL_26;
      case 1:
LABEL_20:
        v24 = 3;
LABEL_29:
        sub_252004620();
        sub_251FEAB30(v7);
        v21 = *(v4 + 8);
        v21(v7, v3);
        v24 = 3;
        sub_252004620();
        v8 = sub_251FEAB30(v7);
        v21(v7, v3);
        return v8;
      case 0:
LABEL_26:
        v24 = 3;
        goto LABEL_29;
    }
  }

LABEL_32:
  result = sub_252004B80();
  __break(1u);
  return result;
}

unint64_t sub_251FE7F70@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_251FE85B4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t HearingOcclusionUseCase.localizedStrings(_:)(void *a1, uint64_t a2)
{
  v4 = sub_252004680();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = sub_2520046A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyHearingFeatureContentProvider(0, v11);
  v12 = a1;
  v13 = AnyHearingFeatureContentProvider.__allocating_init(device:)(a1);
  if (AnyHearingFeatureContentProvider.featureFlag.getter(v13, v14))
  {
    AnyHearingFeatureContentProvider.devicePlatformName.getter();
    if (a2 != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v19 = 1;
    sub_252004620();
    v18 = sub_251FEAB30(v10);
    v15 = *(v7 + 8);
    v15(v10, v6);
    v19 = 1;
    sub_252004670();
    sub_252004660();
    sub_252004640();

    sub_252004660();
    sub_252004690();
    v16 = v10;
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!a2)
  {

    v19 = 0;
    sub_252004620();
    v18 = sub_251FEAB30(v10);
    v15 = *(v7 + 8);
    v15(v10, v6);
    v19 = 0;
    sub_252004620();
    v16 = v10;
LABEL_7:
    sub_251FEAB30(v16);

    v15(v10, v6);
    return v18;
  }

  v19 = a2;
  result = sub_252004BA0();
  __break(1u);
  return result;
}

unint64_t HearingOcclusionUseCase.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

void *sub_251FE8360(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_251FE85C4(a1, v3 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingTopLevelCaseObjectWrapper_usecase);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

void *sub_251FE83D4(void *a1)
{
  v3 = sub_251FE85C4(a1, v1 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingTopLevelCaseObjectWrapper_usecase);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for HearingTopLevelCaseObjectWrapper(v3, v4);
  v5 = objc_msgSendSuper2(&v7, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

id HearingTopLevelCaseObjectWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HearingTopLevelCaseObjectWrapper.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HearingTopLevelCaseObjectWrapper(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_251FE85B4(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_251FE85C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_251FE862C()
{
  result = qword_27F4C6FE0;
  if (!qword_27F4C6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C6FE0);
  }

  return result;
}

unint64_t sub_251FE8684()
{
  result = qword_27F4C6FE8;
  if (!qword_27F4C6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C6FE8);
  }

  return result;
}

uint64_t sub_251FE8758()
{
  v0 = sub_2520043D0();
  __swift_allocate_value_buffer(v0, qword_27F4C9440);
  __swift_project_value_buffer(v0, qword_27F4C9440);
  return sub_2520043C0();
}

uint64_t sub_251FE87D8()
{
  if (qword_27F4C8500 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();

  return __swift_project_value_buffer(v0, qword_27F4C9440);
}

uint64_t sub_251FE883C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4C8500 != -1)
  {
    swift_once();
  }

  v2 = sub_2520043D0();
  v3 = __swift_project_value_buffer(v2, qword_27F4C9440);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_251FE89F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id sub_251FE8AA8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v7 = OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController;
  *&v6[OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController] = 0;
  swift_beginAccess();
  *&v6[v7] = a1;
  v10.receiver = v6;
  v10.super_class = v3;
  swift_unknownObjectRetain();
  v8 = objc_msgSendSuper2(&v10, sel_initWithRootViewController_, a2);
  [v8 setModalInPresentation_];
  [v8 setModalPresentationStyle_];

  swift_unknownObjectRelease();
  return v8;
}

id sub_251FE8B80(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController;
  *&v2[OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController] = 0;
  v6 = swift_beginAccess();
  *&v2[v5] = a1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for HearingFlowNavigationController(v6, v7);
  swift_unknownObjectRetain();
  v8 = objc_msgSendSuper2(&v10, sel_initWithRootViewController_, a2);
  [v8 setModalInPresentation_];
  [v8 setModalPresentationStyle_];

  swift_unknownObjectRelease();
  return v8;
}

void sub_251FE8C68()
{
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController) = 0;
  sub_252004B10();
  __break(1u);
}

void *sub_251FE8D38(void *result)
{
  if (result)
  {
    v2 = result;
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      v3 = result;
      v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
      v5 = v2;
      [v3 setFlowController_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_251FE8EC8(void *a1, char a2)
{
  sub_251FE90EC(a1);
  v17 = &unk_286450CA0;
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v7 = v5;
    v8 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
    v9 = a1;
    [v7 setFlowController_];

    v10 = swift_unknownObjectRelease();
    v12 = type metadata accessor for HearingFlowNavigationController(v10, v11);
    v15 = v2;
    v13 = &v15;
  }

  else
  {
    v12 = type metadata accessor for HearingFlowNavigationController(0, v6);
    v16.receiver = v2;
    v13 = &v16;
  }

  v13->super_class = v12;
  return [(objc_super *)v13 pushViewController:a1 animated:a2 & 1];
}

void sub_251FE90EC(void *a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = sub_2520046E0();
  v6 = v5;

  if (sub_252004770())
  {
    goto LABEL_3;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (sub_252003E10(), swift_dynamicCastClass()))
  {

    v14 = [a1 navigationItem];
    [v14 setHidesBackButton_];
  }

  else
  {
    if (v4 == 0xD000000000000027 && 0x800000025200D900 == v6)
    {
LABEL_3:

      return;
    }

    v7 = sub_252004B90();

    if (v7)
    {
      return;
    }

    v8 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:0 action:0];
    sub_251FD6770(0, &qword_27F4C6BB0, 0x277D750C8);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = sub_2520049A0();
    [v8 setPrimaryAction_];

    v11 = [a1 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6BA0, &qword_252007410);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2520073A0;
    *(v12 + 32) = v8;
    sub_251FD6770(0, &qword_27F4C6FF8, 0x277D751E0);
    v13 = v8;
    v14 = sub_2520047A0();

    [v11 setRightBarButtonItems_];
  }
}

void sub_251FE9404(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for HearingFlowNavigationController(a1, a2);
  objc_msgSendSuper2(&v5, sel_viewWillDisappear_, v3 & 1);
  sub_252003D90();
  v4 = sub_252003D70();
  sub_252003D60();
}

id sub_251FE94E0(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id sub_251FE95B8(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id sub_251FE96BC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HearingFlowNavigationController(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_251FE9700()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_251FE9738()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_251FE9798()
{
  v0 = sub_2520043D0();
  __swift_allocate_value_buffer(v0, qword_27F4C9458);
  __swift_project_value_buffer(v0, qword_27F4C9458);
  return sub_2520043C0();
}

uint64_t sub_251FE981C()
{
  if (qword_27F4C8508 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();

  return __swift_project_value_buffer(v0, qword_27F4C9458);
}

uint64_t sub_251FE9880@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4C8508 != -1)
  {
    swift_once();
  }

  v2 = sub_2520043D0();
  v3 = __swift_project_value_buffer(v2, qword_27F4C9458);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_251FE9928@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController_delegate;
  swift_beginAccess();
  return sub_251FE9980(v1 + v3, a1);
}

uint64_t sub_251FE9980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7008, "ҡ");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251FE99F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController_delegate;
  swift_beginAccess();
  sub_251FE9A50(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_251FE9A50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7008, "ҡ");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_251FE9B54(__int128 *a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController_delegate];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v2[OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___primaryBoldButton] = 0;
  *&v2[OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___secondaryLinkButton] = 0;
  v5 = [objc_opt_self() systemBlueColor];
  v6 = objc_opt_self();
  v7 = [v6 configurationWithHierarchicalColor_];

  v8 = sub_2520046B0();
  v9 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v9)
  {
    v10 = [v6 configurationWithPointSize:5 weight:48.0];
    v11 = [v9 imageByApplyingSymbolConfiguration_];

    sub_251FE78C4(0xD000000000000011, 0x800000025200D970);
    v12 = sub_2520046B0();

    v19.receiver = v2;
    v19.super_class = type metadata accessor for HMHearingProtectionPPEEnrollmentViewController(v13, v14);
    v15 = objc_msgSendSuper2(&v19, sel_initWithTitle_detailText_icon_contentLayout_, v12, 0, v11, 2);

    sub_251FC64D0(a1, v18);
    v16 = OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController_delegate;
    swift_beginAccess();
    v17 = v15;
    sub_251FE9A50(v18, v15 + v16);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_251FE9D98(uint64_t a1, uint64_t a2)
{
  v9.receiver = v2;
  v9.super_class = type metadata accessor for HMHearingProtectionPPEEnrollmentViewController(a1, a2);
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v3 = sub_2520046B0();
  sub_251FE78C4(0xD000000000000019, 0x800000025200D990);
  v4 = sub_2520046B0();

  v5 = sub_2520046B0();
  [v2 addBulletedListItemWithTitle:v3 description:v4 symbolName:v5];

  v6 = sub_2520046B0();
  sub_251FE78C4(0xD000000000000013, 0x800000025200D9B0);
  v7 = sub_2520046B0();

  v8 = sub_2520046B0();
  [v2 addBulletedListItemWithTitle:v6 description:v7 symbolName:v8];

  sub_251FEA3D0();
}

id sub_251FE9F40(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___primaryBoldButton;
  v4 = *(v2 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___primaryBoldButton);
  if (v4)
  {
    v5 = *(v2 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___primaryBoldButton);
  }

  else
  {
    v6 = [objc_opt_self() boldButton];
    sub_251FE78C4(0xD000000000000019, 0x800000025200D9D0);
    v7 = sub_2520046B0();

    [v6 setTitle:v7 forState:0];

    sub_251FEA548(0, v8);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = v9;
    v10 = v2;
    v11 = sub_2520049A0();
    [v6 addAction:v11 forControlEvents:{64, 0, 0, 0, sub_251FEA5CC, v15}];

    v12 = *(v10 + v3);
    *(v10 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v13 = v4;
  return v5;
}

uint64_t sub_251FEA0B4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___primaryBoldButton);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___primaryBoldButton) = a1;
  return MEMORY[0x2821F96F8](a1, v2);
}

void (*sub_251FEA0C8(id *a1, uint64_t a2))(uint64_t *a1)
{
  a1[1] = v2;
  *a1 = sub_251FE9F40(a1, a2);
  return sub_251FEA110;
}

void sub_251FEA110(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___primaryBoldButton);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___primaryBoldButton) = v2;
}

id sub_251FEA128()
{
  v1 = sub_2520046A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___secondaryLinkButton;
  v7 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___secondaryLinkButton);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___secondaryLinkButton);
  }

  else
  {
    v9 = [objc_opt_self() linkButton];
    v19[1] = v0;
    v10 = sub_252004620();
    type metadata accessor for HMHearingProtectionPPEEnrollmentViewController(v10, v11);
    v12 = v0;
    sub_251FEAB30(v5);
    (*(v2 + 8))(v5, v1);
    v13 = sub_2520046B0();

    [v9 setTitle:v13 forState:0];

    sub_251FEA548(0, v14);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = sub_2520049A0();
    [v9 addAction:v15 forControlEvents:64];

    v16 = *(v12 + v6);
    *(v12 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v17 = v7;
  return v8;
}

uint64_t sub_251FEA35C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___secondaryLinkButton);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___secondaryLinkButton) = a1;
  return MEMORY[0x2821F96F8](a1, v2);
}

void (*sub_251FEA370(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_251FEA128();
  return sub_251FEA3B8;
}

void sub_251FEA3B8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___secondaryLinkButton);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___secondaryLinkButton) = v2;
}

void sub_251FEA3D0()
{
  v1 = [v0 buttonTray];
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x88))();
  [v1 addButton_];

  v4 = [v0 buttonTray];
  v5 = (*((*v2 & *v0) + 0xA0))();
  [v4 addButton_];

  v6 = [v0 buttonTray];
  sub_251FE78C4(0xD000000000000018, 0x800000025200DAA0);
  v7 = sub_2520046B0();

  [v6 setCaptionText_];
}

unint64_t sub_251FEA548(uint64_t a1, uint64_t a2)
{
  result = qword_27F4C6BB0;
  if (!qword_27F4C6BB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4C6BB0);
  }

  return result;
}

uint64_t sub_251FEA594()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_251FEA5CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_251FEA61C();
  }
}

id sub_251FEA61C()
{
  v1 = v0;
  if (qword_27F4C8508 != -1)
  {
    swift_once();
  }

  v2 = sub_2520043D0();
  __swift_project_value_buffer(v2, qword_27F4C9458);
  v3 = sub_2520043B0();
  v4 = sub_2520048C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_251FB5000, v3, v4, "PPE setup complete", v5, 2u);
    MEMORY[0x253097030](v5, -1, -1);
  }

  (*((*MEMORY[0x277D85000] & *v1) + 0x68))(v12);
  if (v12[3])
  {
    sub_251FE85C4(v12, v9);
    sub_251FEAA9C(v12);
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    sub_251FEAA9C(v12);
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

id HMHearingProtectionPPEEnrollmentViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_2520046B0();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_2520046B0();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_2520046B0();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id HMHearingProtectionPPEEnrollmentViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_2520046B0();

  if (a4)
  {
    v12 = sub_2520046B0();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id HMHearingProtectionPPEEnrollmentViewController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HMHearingProtectionPPEEnrollmentViewController(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_251FEAA9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7008, "ҡ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251FEAB30(uint64_t a1)
{
  v2 = sub_252003B50();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_2520046A0();
  MEMORY[0x28223BE20](v4, v5);
  (*(v7 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for HearingAidSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_252003B40();
  return sub_252004700();
}

uint64_t sub_251FEAC98(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = sub_252003B50();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_2520046A0();
  MEMORY[0x28223BE20](v7, v8);
  (*(v10 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for HearingAidSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_252003B40();
  return sub_252004700();
}

uint64_t sub_251FEAE14()
{
  v0 = sub_2520043D0();
  __swift_allocate_value_buffer(v0, qword_27F4C9470);
  __swift_project_value_buffer(v0, qword_27F4C9470);
  return sub_2520043C0();
}

uint64_t sub_251FEAE98()
{
  if (qword_27F4C8510 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();

  return __swift_project_value_buffer(v0, qword_27F4C9470);
}

uint64_t sub_251FEAEFC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4C8510 != -1)
  {
    swift_once();
  }

  v2 = sub_2520043D0();
  v3 = __swift_project_value_buffer(v2, qword_27F4C9470);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_251FEAFA4()
{
  sub_252003F10();
  v0 = sub_252003EF0();
  v1 = sub_252003EB0();
  v3 = v2;
  v4 = sub_252003EE0();

  if (*(v4 + 16))
  {
    v5 = sub_251FD4318(v1, v3);
    v7 = v6;

    if (v7)
    {
      v8 = *(*(v4 + 56) + 8 * v5);

      if (qword_27F4C8510 != -1)
      {
        swift_once();
      }

      v9 = sub_2520043D0();
      __swift_project_value_buffer(v9, qword_27F4C9470);
      v10 = v8;
      v11 = sub_2520043B0();
      v12 = sub_2520048A0();
      v13 = v10;

      if (os_log_type_enabled(v11, v12))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v27 = v16;
        *v14 = 138412546;
        *(v14 + 4) = v13;
        *v15 = v13;
        *(v14 + 12) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6B30, &unk_252007820);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_252007360;
        *(v17 + 56) = sub_252003EC0();
        *(v17 + 64) = sub_251FF2BC8(&qword_27F4C7020, MEMORY[0x277D0FBA8], MEMORY[0x277D85388]);
        *(v17 + 32) = v13;
        v18 = v13;
        v19 = sub_2520046F0();
        v21 = sub_251FC55E0(v19, v20, &v27);

        *(v14 + 14) = v21;
        _os_log_impl(&dword_251FB5000, v11, v12, "Connected Device is device: %@::%s", v14, 0x16u);
        sub_251FC6470(v15, &qword_27F4C68E8, &qword_252007318);
        MEMORY[0x253097030](v15, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x253097030](v16, -1, -1);
        MEMORY[0x253097030](v14, -1, -1);
      }

      return v13;
    }
  }

  else
  {
  }

  if (qword_27F4C8510 != -1)
  {
    swift_once();
  }

  v23 = sub_2520043D0();
  __swift_project_value_buffer(v23, qword_27F4C9470);
  v24 = sub_2520043B0();
  v25 = sub_2520048B0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_251FB5000, v24, v25, "Connected Device is nil!", v26, 2u);
    MEMORY[0x253097030](v26, -1, -1);
  }

  return 0;
}

Swift::Void __swiftcall HearingModeUIService.configHearingModeClient()()
{
  v1 = v0;
  v2 = sub_252004930();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v21 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2520048F0();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_2520045C0();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = [objc_allocWithZone(MEMORY[0x277D12B98]) init];
  [v0 setHmsClient_];

  v10 = [v0 hmsClient];
  v20[1] = sub_251FD6770(0, &qword_27F4C6928, 0x277D85C78);
  sub_2520045B0();
  aBlock = MEMORY[0x277D84F90];
  sub_251FF2BC8(&qword_27F4C7028, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7030, &unk_252008490);
  sub_251FD67B8(&qword_27F4C7038, &qword_27F4C7030, &unk_252008490, MEMORY[0x277D83970]);
  sub_252004A10();
  (*(v22 + 104))(v21, *MEMORY[0x277D85260], v23);
  v11 = sub_252004950();
  [v10 setDispatchQueue_];

  v12 = [v1 hmsClient];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = sub_251FF2C48;
  v29 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_251FEB7F4;
  v27 = &block_descriptor_2;
  v14 = _Block_copy(&aBlock);

  [v12 setInterruptionHandler_];
  _Block_release(v14);

  v15 = [v1 hmsClient];
  v16 = swift_unknownObjectWeakInit();
  MEMORY[0x2530970B0](v16);
  v28 = sub_251FEB838;
  v29 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_251FEB7F4;
  v27 = &block_descriptor_6;
  v17 = _Block_copy(&aBlock);
  [v15 setInvalidationHandler_];
  _Block_release(v17);

  v18 = [v1 hmsClient];
  v28 = sub_251FEB990;
  v29 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_251FD9520;
  v27 = &block_descriptor_9;
  v19 = _Block_copy(&aBlock);
  [v18 activateWithCompletion_];
  _Block_release(v19);
}

uint64_t sub_251FEB7F4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_251FEB838()
{
  if (qword_27F4C8510 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();
  __swift_project_value_buffer(v0, qword_27F4C9470);
  oslog = sub_2520043B0();
  v1 = sub_2520048B0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_251FC55E0(0xD000000000000019, 0x800000025200EE90, &v5);
    *(v2 + 12) = 2048;
    *(v2 + 14) = 49;
    _os_log_impl(&dword_251FB5000, oslog, v1, "HearingModeUIService: %s: %ld hearing client invalidated! Retrying to standup discovery stack", v2, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x253097030](v3, -1, -1);
    MEMORY[0x253097030](v2, -1, -1);
  }
}

void sub_251FEB990(uint64_t a1)
{
  if (a1)
  {
    if (qword_27F4C8510 != -1)
    {
      swift_once();
    }

    v1 = sub_2520043D0();
    __swift_project_value_buffer(v1, qword_27F4C9470);
    oslog = sub_2520043B0();
    v2 = sub_2520048B0();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v6 = v4;
      *v3 = 136315394;
      *(v3 + 4) = sub_251FC55E0(0xD000000000000019, 0x800000025200EE90, &v6);
      *(v3 + 12) = 2048;
      *(v3 + 14) = 56;
      _os_log_impl(&dword_251FB5000, oslog, v2, "HearingModeUIService: %s: %ld failed to acitivate HMServiceClient", v3, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x253097030](v4, -1, -1);
      MEMORY[0x253097030](v3, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_251FEBB50()
{
  v0 = sub_251FF4D18(&unk_28643B728);
  result = swift_arrayDestroy();
  qword_27F4C8520 = v0;
  return result;
}

uint64_t sub_251FEBB9C()
{
  v0 = sub_251FF4D18(&unk_28643B778);
  result = swift_arrayDestroy();
  qword_27F4C8530 = v0;
  return result;
}

id HearingModeUIService.decoratedSpecifiers(_:device:)(unint64_t a1, uint64_t a2)
{
  result = sub_252003E60();
  *&v112[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_82;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v109 = result;
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x253096650](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_79;
        }

        result = *(a1 + 8 * v6 + 32);
      }

      v7 = result;
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        v40 = result;
        v4 = sub_252004B20();
        result = v40;
        goto LABEL_3;
      }

      if (qword_27F4C8518 != -1)
      {
        swift_once();
      }

      v9 = qword_27F4C8520;

      result = [v7 identifier];
      if (!result)
      {
        goto LABEL_152;
      }

      v10 = result;
      v11 = sub_2520046E0();
      v13 = v12;

      LOBYTE(v10) = sub_251FECBD4(v11, v13, v9);

      if (v10)
      {
        goto LABEL_7;
      }

      v14 = [v7 identifier];
      if (!v14)
      {
        goto LABEL_28;
      }

      v15 = v14;
      v16 = sub_2520046E0();
      v18 = v17;

      if (v16 == 0xD000000000000015 && 0x800000025200DB50 == v18 || (sub_252004B90() & 1) != 0)
      {

        if (([v105 shouldShowHearingProtection] & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_7;
      }

      if (v16 == 0xD000000000000011 && 0x800000025200DB70 == v18 || (sub_252004B90() & 1) != 0)
      {
        break;
      }

      if (v16 == 0x5F474E4952414548 && v18 == 0xEF44495F54534554 || (sub_252004B90() & 1) != 0)
      {

        v19 = sub_252004120();
LABEL_27:
        if (v19 == 1)
        {
          goto LABEL_28;
        }

        goto LABEL_7;
      }

      if (v16 == 0xD000000000000016 && 0x800000025200DB90 == v18)
      {
      }

      else
      {
        v20 = sub_252004B90();

        if ((v20 & 1) == 0)
        {
LABEL_28:

          goto LABEL_8;
        }
      }

LABEL_7:
      sub_252004AB0();
      sub_252004AE0();
      sub_252004AF0();
      result = sub_252004AC0();
LABEL_8:
      ++v6;
      if (v8 == v4)
      {
        a1 = *&v112[0];
        v5 = MEMORY[0x277D84F90];
        goto LABEL_39;
      }
    }

    v19 = sub_252004160();
    goto LABEL_27;
  }

  a1 = MEMORY[0x277D84F90];
LABEL_39:
  v21 = MEMORY[0x277D3FF38];
  if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
  {
    v41 = v5;
    v42 = sub_252004B20();
    v5 = v41;
    v22 = v42;
    if (v42)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v22 = *(a1 + 16);
    if (v22)
    {
LABEL_42:
      *&v112[0] = v5;
      result = sub_252004AD0();
      if (v22 < 0)
      {
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
        return result;
      }

      v23 = 0;
      v103 = 0x800000025200DB90;
      v106 = *v21;
      do
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_80;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x253096650](v23, a1);
        }

        else
        {
          if (v23 >= *(a1 + 16))
          {
            goto LABEL_81;
          }

          v25 = *(a1 + 8 * v23 + 32);
        }

        v26 = v25;
        v27 = [v25 identifier];
        if (v27)
        {
          v28 = v27;
          v29 = sub_2520046E0();
          v31 = v30;

          v32 = v29 == 0xD000000000000015 && 0x800000025200DB50 == v31;
          if (v32 || (sub_252004B90() & 1) != 0)
          {

            if (sub_2520041B0() != 2)
            {
              sub_2520041F0();
            }
          }

          else if (v29 == 0xD000000000000011 && 0x800000025200DB70 == v31 || (sub_252004B90() & 1) != 0)
          {

            sub_252004160();
          }

          else if (v29 == 0x5F474E4952414548 && v31 == 0xEF44495F54534554 || (sub_252004B90() & 1) != 0)
          {

            sub_252004120();
          }

          else if (v29 == 0xD000000000000016 && v103 == v31)
          {
          }

          else
          {
            sub_252004B90();
          }
        }

        if (qword_27F4C8518 != -1)
        {
          swift_once();
        }

        v33 = qword_27F4C8520;

        result = [v26 identifier];
        if (!result)
        {
          goto LABEL_153;
        }

        v34 = result;
        v35 = sub_2520046E0();
        v37 = v36;

        LOBYTE(v35) = sub_251FECBD4(v35, v37, v33);

        if ((v35 & 1) == 0)
        {
          v38 = sub_2520047F0();
          [v26 setProperty:v38 forKey:v106];
        }

        sub_252004AB0();
        sub_252004AE0();
        sub_252004AF0();
        result = sub_252004AC0();
        ++v23;
      }

      while (v24 != v22);

      v39 = *&v112[0];
      goto LABEL_85;
    }
  }

  v39 = MEMORY[0x277D84F90];
LABEL_85:
  v43 = v39 >> 62;
  if (v39 >> 62)
  {
    goto LABEL_148;
  }

  for (i = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252004B20())
  {
    v45 = MEMORY[0x277D84F90];
    v111 = v39;
    v46 = MEMORY[0x277D3FF38];
    v104 = v43;
    if (!i)
    {
      break;
    }

    v115 = MEMORY[0x277D84F90];
    result = sub_251FF36AC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      goto LABEL_151;
    }

    v47 = 0;
    v45 = v115;
    v110 = v39 & 0xC000000000000001;
    v107 = v39 & 0xFFFFFFFFFFFFFF8;
    v48 = *v46;
    while (1)
    {
      v43 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v110)
      {
        v49 = MEMORY[0x253096650](v47, v111);
      }

      else
      {
        if (v47 >= *(v107 + 16))
        {
          goto LABEL_147;
        }

        v49 = *(v111 + 8 * v47 + 32);
      }

      v50 = v49;
      *&v112[0] = 0;
      *(&v112[0] + 1) = 0xE000000000000000;
      sub_252004A70();
      v51 = [v50 description];
      v52 = sub_2520046E0();
      v54 = v53;

      v113 = v52;
      v114 = v54;
      MEMORY[0x253096310](0x6C62616E65202D20, 0xEC000000203A6465);
      if ([v50 propertyForKey_])
      {
        sub_252004A00();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v112, 0, 32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C69B0, &unk_252007A00);
      v55 = sub_252004710();
      MEMORY[0x253096310](v55);

      v39 = v113;
      v56 = v114;
      v115 = v45;
      v58 = *(v45 + 16);
      v57 = *(v45 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_251FF36AC((v57 > 1), v58 + 1, 1);
        v45 = v115;
      }

      *(v45 + 16) = v58 + 1;
      v59 = v45 + 16 * v58;
      *(v59 + 32) = v39;
      *(v59 + 40) = v56;
      ++v47;
      if (v43 == i)
      {
        goto LABEL_101;
      }
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    ;
  }

LABEL_101:
  v60 = 7104878;
  if ([v105 delegate] && (objc_opt_self(), v61 = swift_dynamicCastObjCClass(), swift_unknownObjectRelease(), v61))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6B30, &unk_252007820);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_252007360;
    result = [v105 delegate];
    if (!result)
    {
      goto LABEL_155;
    }

    objc_opt_self();
    v63 = swift_dynamicCastObjCClassUnconditional();
    *(v62 + 56) = sub_251FD6770(0, &qword_27F4C7040, 0x277D3FA48);
    *(v62 + 64) = sub_251FF36CC();
    *(v62 + 32) = v63;
    v60 = sub_2520046F0();
    v65 = v64;
  }

  else
  {
    v65 = 0xE300000000000000;
  }

  if (qword_27F4C8510 != -1)
  {
    swift_once();
  }

  v66 = sub_2520043D0();
  __swift_project_value_buffer(v66, qword_27F4C9470);
  v67 = v109;

  v68 = sub_2520043B0();
  v69 = sub_2520048C0();

  v108 = v67;
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v112[0] = v71;
    *v70 = 136316674;
    v72 = sub_252004010();
    v74 = sub_251FC55E0(v72, v73, v112);

    *(v70 + 4) = v74;
    v75 = v67;
    *(v70 + 12) = 256;
    LOBYTE(v74) = sub_2520041B0();

    *(v70 + 14) = v74;
    *(v70 + 15) = 256;
    LOBYTE(v74) = sub_2520041F0();

    *(v70 + 17) = v74;
    *(v70 + 18) = 256;
    LOBYTE(v74) = sub_252004160();

    *(v70 + 20) = v74;
    *(v70 + 21) = 256;
    v76 = sub_252004120();

    *(v70 + 23) = v76;
    *(v70 + 24) = 2080;
    v77 = MEMORY[0x253096390](v45, MEMORY[0x277D837D0]);
    v79 = v78;

    v80 = sub_251FC55E0(v77, v79, v112);

    *(v70 + 26) = v80;
    *(v70 + 34) = 2080;
    v81 = sub_251FC55E0(v60, v65, v112);

    *(v70 + 36) = v81;
    _os_log_impl(&dword_251FB5000, v68, v69, "HearingModeUIService decoratedSpecifiers for %s: HP: %hhu PPE:%hhu HA:%hhu  HT:%hhu VS:%s BTSC:%s", v70, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x253097030](v71, -1, -1);
    MEMORY[0x253097030](v70, -1, -1);
  }

  else
  {
  }

  v39 = [v105 headphoneDevice];
  v82 = objc_allocWithZone(sub_252003D10());
  v83 = sub_252003D00();
  sub_252003CF0();

  v113 = MEMORY[0x277D84F90];
  if (!v104)
  {
    v84 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v84)
    {
      goto LABEL_138;
    }

    goto LABEL_113;
  }

  v84 = sub_252004B20();
  if (v84)
  {
LABEL_113:
    v85 = 0;
    v109 = (v111 & 0xFFFFFFFFFFFFFF8);
    v43 = v111 + 32;
    while (1)
    {
      if ((v111 & 0xC000000000000001) != 0)
      {
        v86 = MEMORY[0x253096650](v85, v111);
      }

      else
      {
        if (v85 >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_146;
        }

        v86 = *(v43 + 8 * v85);
      }

      v39 = v86;
      if (__OFADD__(v85++, 1))
      {
        goto LABEL_145;
      }

      if (qword_27F4C8528 != -1)
      {
        swift_once();
      }

      v88 = qword_27F4C8530;

      result = [v39 identifier];
      if (!result)
      {
        goto LABEL_154;
      }

      v89 = result;
      v90 = sub_2520046E0();
      v92 = v91;

      if (*(v88 + 16) && (sub_252004C00(), sub_252004730(), v93 = sub_252004C20(), v94 = -1 << *(v88 + 32), v95 = v93 & ~v94, ((*(v88 + 56 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) != 0))
      {
        v96 = ~v94;
        while (1)
        {
          v97 = (*(v88 + 48) + 16 * v95);
          v98 = *v97 == v90 && v97[1] == v92;
          if (v98 || (sub_252004B90() & 1) != 0)
          {
            break;
          }

          v95 = (v95 + 1) & v96;
          if (((*(v88 + 56 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
          {
            goto LABEL_114;
          }
        }

        sub_252004AB0();
        sub_252004AE0();
        sub_252004AF0();
        sub_252004AC0();
        if (v85 == v84)
        {
LABEL_135:
          v99 = v113;
          v100 = v108;
          if ((v113 & 0x8000000000000000) == 0)
          {
            goto LABEL_139;
          }

          goto LABEL_149;
        }
      }

      else
      {
LABEL_114:

        if (v85 == v84)
        {
          goto LABEL_135;
        }
      }
    }
  }

LABEL_138:
  v99 = MEMORY[0x277D84F90];
  v100 = v108;
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
  {
LABEL_139:
    if ((v99 & 0x4000000000000000) == 0)
    {
      v101 = *(v99 + 16);
      goto LABEL_141;
    }
  }

LABEL_149:
  v101 = sub_252004B20();
LABEL_141:
  v102 = v111;

  if (v101 <= 0)
  {

    v102 = MEMORY[0x277D84F90];
  }

  sub_251FECD44(v102);

  return v102;
}

uint64_t sub_251FECBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_252004C00();
  sub_252004730();
  v6 = sub_252004C20();
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
    if (v11 || (sub_252004B90() & 1) != 0)
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

Swift::Void __swiftcall HearingModeUIService.submitHPDeviceAnalytics()()
{
  v1 = [v0 headphoneDevice];
  v2 = objc_allocWithZone(sub_252003D10());
  v3 = sub_252003D00();
  sub_252003CF0();
}

void sub_251FECD44(uint64_t a1)
{
  v2 = v1;
  v82 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7050, &qword_2520084A0);
  v74 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v67 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7058, &qword_2520084A8);
  v79 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v67 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v67 - v17;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7060, &qword_2520084B0);
  MEMORY[0x28223BE20](v77, v19);
  v75 = &v67 - v20;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7068, &qword_2520084B8);
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v21);
  v76 = &v67 - v22;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7070, &qword_2520084C0);
  v73 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v23);
  v81 = &v67 - v24;
  sub_251FED80C();
  v72 = sub_252004490();
  v25 = sub_252004600();

  swift_beginAccess();
  objc_setAssociatedObject(v1, &byte_27F4C9488, v25, 1);
  swift_endAccess();

  v26 = sub_251FEAFA4();
  if (v26)
  {
    v27 = v26;
    v71 = v11;
    v28 = v18;
    v29 = sub_252003E60();

    v30 = [v2 delegate];
    if (v30)
    {
      v31 = v30;
      objc_opt_self();
      v32 = swift_dynamicCastObjCClass();
      if (v32)
      {
        v67 = v31;
        v68 = v29;
        v69 = v32;
        sub_2520041C0();
        v33 = sub_252004500();
        v70 = v2;
        v34 = *(v79 + 1);
        v34(v28, v7);
        v35 = v6;
        v36 = v3;
        v87 = v33;
        sub_252004170();
        v37 = sub_252004500();
        v34(v15, v7);
        v79 = v34;
        v86 = v37;
        v38 = v71;
        sub_252004130();
        v39 = sub_252004500();
        v34(v38, v7);
        v85 = v39;
        sub_252004100();
        v40 = sub_252004500();
        (*(v74 + 8))(v35, v36);
        v84 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7078, &qword_2520084C8);
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E68, &unk_2520084D0);
        v41 = MEMORY[0x277CBCD90];
        sub_251FD67B8(&qword_27F4C7080, &qword_27F4C7078, &qword_2520084C8, MEMORY[0x277CBCD90]);
        sub_251FD67B8(&qword_27F4C6E78, &qword_27F4C6E68, &unk_2520084D0, v41);
        sub_252004470();
        v42 = v68;
        sub_252004200();
        v43 = sub_252004500();
        v79(v28, v7);
        v87 = v43;
        sub_251FD67B8(&qword_27F4C7088, &qword_27F4C7060, &qword_2520084B0, MEMORY[0x277CBCB00]);
        v44 = v76;
        sub_252004450();
        sub_251FD67B8(&qword_27F4C7090, &qword_27F4C7068, &qword_2520084B8, MEMORY[0x277CBCAF0]);
        v45 = v80;
        v46 = v81;
        sub_252004560();
        (*(v78 + 8))(v44, v45);
        v47 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v48 = swift_allocObject();
        v49 = v70;
        swift_unknownObjectWeakInit();
        v50 = swift_allocObject();
        v50[2] = v42;
        v50[3] = v47;
        v51 = v82;
        v50[4] = v48;
        v50[5] = v51;
        sub_251FD67B8(&qword_27F4C7098, &qword_27F4C7070, &qword_2520084C0, MEMORY[0x277CBCC18]);
        v52 = v42;

        v53 = v83;
        v54 = sub_252004580();

        v55 = sub_251FED80C();
        if (v55)
        {
          v56 = v55;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v87 = v56;
          sub_251FF4724(v54, 0x4F676E6972616548, 0xEF72657672657362, isUniquelyReferenced_nonNull_native);
          if (v87)
          {
            v58 = sub_252004600();
          }

          else
          {
            v58 = 0;
          }

          swift_beginAccess();
          objc_setAssociatedObject(v49, &byte_27F4C9488, v58, 1);
          swift_endAccess();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          (*(v73 + 8))(v46, v53);
        }

        else
        {
          __break(1u);
        }

        return;
      }

      swift_unknownObjectRelease();
    }

    if (qword_27F4C8510 != -1)
    {
      swift_once();
    }

    v63 = sub_2520043D0();
    __swift_project_value_buffer(v63, qword_27F4C9470);
    v64 = sub_2520043B0();
    v65 = sub_2520048B0();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_251FB5000, v64, v65, "observeSpecifiers: no delegate!", v66, 2u);
      MEMORY[0x253097030](v66, -1, -1);
    }
  }

  else
  {
    if (qword_27F4C8510 != -1)
    {
      swift_once();
    }

    v59 = sub_2520043D0();
    __swift_project_value_buffer(v59, qword_27F4C9470);
    v60 = sub_2520043B0();
    v61 = sub_2520048B0();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_251FB5000, v60, v61, "HearingModeUIService listener precondition fail no device", v62, 2u);
      MEMORY[0x253097030](v62, -1, -1);
    }
  }
}

uint64_t sub_251FED80C()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &byte_27F4C9488);
  swift_endAccess();
  if (v1)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70E0, &qword_252008660);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_251FC6470(v6, &qword_27F4C69B0, &unk_252007A00);
  }

  return 0;
}

uint64_t sub_251FED8FC(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_252004AD0();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_251FC6534(i, v5);
    sub_251FD6770(0, &qword_27F4C69B8, 0x277D3FAD8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_252004AB0();
    sub_252004AE0();
    sub_252004AF0();
    sub_252004AC0();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_251FEDA58(char a1)
{
  result = swift_beginAccess();
  byte_27F4C9488 = a1;
  return result;
}

Swift::Bool __swiftcall HearingModeUIService._showOcclusionDetectionPlacard()()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 headphoneDevice];
  if (!v7 || (v8 = v7, v9 = sub_251FEAFA4(), v8, !v9))
  {
    sub_2520043A0();
    v27 = sub_2520043B0();
    v28 = sub_2520048B0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v60 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_251FC55E0(0xD000000000000020, 0x800000025200DBD0, &v60);
      _os_log_impl(&dword_251FB5000, v27, v28, "%s: No headphone device", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x253097030](v30, -1, -1);
      MEMORY[0x253097030](v29, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  v10 = sub_252003E60();
  v11 = sub_2520041B0();

  if (v11 != 2 || (v12 = sub_252003E60(), v13 = sub_252004150(), v12, v13 != 1) || (v14 = sub_252003E60(), v15 = sub_2520041E0(), v14, !v15))
  {
    if (qword_27F4C8510 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_27F4C9470);
    v31 = v9;
    v32 = sub_2520043B0();
    v33 = sub_2520048B0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v60 = v35;
      *v34 = 136315906;
      *(v34 + 4) = sub_251FC55E0(0xD000000000000020, 0x800000025200DBD0, &v60);
      *(v34 + 12) = 2080;
      v36 = sub_252003E60();
      v37 = sub_2520041B0();

      if (v37 == 2)
      {
        v38 = 0x6574726F70707553;
      }

      else
      {
        v38 = 0x7070755320746F4ELL;
      }

      if (v37 == 2)
      {
        v39 = 0xE900000000000064;
      }

      else
      {
        v39 = 0xED0000646574726FLL;
      }

      v40 = sub_251FC55E0(v38, v39, &v60);

      *(v34 + 14) = v40;
      *(v34 + 22) = 2080;
      v41 = sub_252003E60();
      v42 = sub_252004150();

      if (v42 == 1)
      {
        v43 = 0x64656C62616E45;
      }

      else
      {
        v43 = 0x62616E4520746F4ELL;
      }

      if (v42 == 1)
      {
        v44 = 0xE700000000000000;
      }

      else
      {
        v44 = 0xEB0000000064656CLL;
      }

      v45 = sub_251FC55E0(v43, v44, &v60);

      *(v34 + 24) = v45;
      *(v34 + 32) = 2080;
      v46 = sub_252003E60();
      LODWORD(v45) = sub_2520041E0();

      HMOcclusionResultToString(v45);
      v47 = sub_252004750();
      v49 = sub_251FC55E0(v47, v48, &v60);

      *(v34 + 34) = v49;
      _os_log_impl(&dword_251FB5000, v32, v33, "%s: Region status %s HearingProtection %s Occlusion Result %s returning without showing placard", v34, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x253097030](v35, -1, -1);
      MEMORY[0x253097030](v34, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v16 = sub_252003E60();
  v17 = sub_2520041E0();

  HIDWORD(v59) = v17 == 2;
  if (qword_27F4C8510 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27F4C9470);
  v18 = sub_2520043B0();
  v19 = sub_2520048C0();
  if (!os_log_type_enabled(v18, v19))
  {

    if (byte_27F4C8538)
    {
      goto LABEL_19;
    }

LABEL_42:

    goto LABEL_54;
  }

  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v60 = v21;
  *v20 = 136315394;
  v22 = 0xE400000000000000;
  v23 = 0x776F68536F4ELL;
  if (byte_27F4C8538 == 1)
  {
    v23 = 2003789907;
  }

  else
  {
    v22 = 0xE600000000000000;
  }

  if (byte_27F4C8538)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0x6E776F6E6B6E55;
  }

  if (byte_27F4C8538)
  {
    v25 = v22;
  }

  else
  {
    v25 = 0xE700000000000000;
  }

  v26 = sub_251FC55E0(v24, v25, &v60);

  *(v20 + 4) = v26;
  *(v20 + 12) = 1024;
  *(v20 + 14) = v17 == 2;
  _os_log_impl(&dword_251FB5000, v18, v19, "previousShouldShowPlacardStatus %s shouldShowPlacard %{BOOL}d", v20, 0x12u);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  MEMORY[0x253097030](v21, -1, -1);
  MEMORY[0x253097030](v20, -1, -1);

  if (!byte_27F4C8538)
  {
    goto LABEL_42;
  }

LABEL_19:
  v51 = sub_252004B90();

  if (v51)
  {
    goto LABEL_54;
  }

  if (byte_27F4C8538 && byte_27F4C8538 == 1)
  {

    goto LABEL_48;
  }

  v52 = sub_252004B90();

  if (v52)
  {
LABEL_48:
    if (v17 != 2)
    {
      goto LABEL_54;
    }
  }

  if (byte_27F4C8538 && byte_27F4C8538 == 2)
  {
  }

  else
  {
    v53 = sub_252004B90();

    if ((v53 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  if (v17 != 2)
  {
LABEL_60:
    v58 = 2;
    goto LABEL_61;
  }

LABEL_54:
  v54 = [v1 hmsClient];
  v55 = sub_252003E60();
  sub_252004010();

  v56 = sub_2520046B0();

  if (v17 == 2)
  {
    v57 = 7;
  }

  else
  {
    v57 = 8;
  }

  [v54 occlusionIndicationShownForDeviceAddress:v56 featureID:2 type:v57 action:0];

LABEL_58:
  if (v17 != 2)
  {
    goto LABEL_60;
  }

  v58 = 1;
LABEL_61:
  byte_27F4C8538 = v58;

  return BYTE4(v59);
}

unint64_t HearingModeUIService._getHearingAssistPayload(_:device:inUsecase:)(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AA0, &unk_252007F50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252008480;
  *(inited + 32) = 0x65726464612D7462;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEA00000000007373;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v10 = sub_251FF6CD0();
  v12 = *v10;
  v11 = v10[1];
  *(inited + 80) = v12;
  *(inited + 88) = v11;

  v13 = [v4 hmsClient];
  *(inited + 120) = sub_251FD6770(0, &qword_27F4C70A0, 0x277D12B98);
  *(inited + 96) = v13;
  sub_2520042F0();
  *(inited + 128) = sub_2520042E0();
  *(inited + 136) = v14;
  *(inited + 168) = sub_252003EC0();
  *(inited + 144) = a3;
  v15 = a3;
  *(inited + 176) = sub_2520042C0();
  *(inited + 184) = v16;
  v17 = HearingTopLevelCellUseCase.init(rawValue:)(a4);
  LOBYTE(a4) = v18;
  v26[3] = &type metadata for HearingTopLevelCellUseCase;
  v19 = sub_251FF4F40();
  if (a4)
  {
    v21 = 0;
  }

  else
  {
    v21 = v17;
  }

  v26[4] = v19;
  v26[0] = v21;
  v22 = type metadata accessor for HearingTopLevelCaseObjectWrapper(0, v20);
  v23 = sub_251FE8360(v26);
  *(inited + 216) = v22;
  *(inited + 192) = v23;
  v24 = sub_251FD4B5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AB8, &unk_2520084E0);
  swift_arrayDestroy();
  return v24;
}

id sub_251FEE604(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, id, uint64_t))
{
  v10 = sub_2520046E0();
  v12 = v11;
  v13 = a4;
  v14 = a1;
  a6(v10, v12, v13, a5);

  v15 = sub_252004600();

  return v15;
}

void sub_251FEE6D4(int a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, NSObject *a10)
{
  v40 = a4;
  v41 = a6;
  v39 = a3;
  v42 = a1;
  v14 = a10;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70B8, &qword_252008608);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v36 - v17;
  if (qword_27F4C8510 != -1)
  {
    swift_once();
  }

  v19 = sub_2520043D0();
  __swift_project_value_buffer(v19, qword_27F4C9470);
  v20 = a2;
  v21 = sub_2520043B0();
  v22 = sub_2520048C0();

  if (os_log_type_enabled(v21, v22))
  {
    v37 = a8;
    v38 = a10;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v43 = v24;
    *v23 = 67109378;
    *(v23 + 4) = v42;
    *(v23 + 8) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v25 = sub_252004BE0();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0xE000000000000000;
    }

    v28 = sub_251FC55E0(v25, v27, &v43);

    *(v23 + 10) = v28;
    _os_log_impl(&dword_251FB5000, v21, v22, "fetchOcclusionResult: %d %s", v23, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x253097030](v24, -1, -1);
    MEMORY[0x253097030](v23, -1, -1);

    a8 = v37;
    v14 = v38;
  }

  else
  {
  }

  v29 = sub_252004840();
  (*(*(v29 - 8) + 56))(v18, 1, 1, v29);
  sub_252004820();
  v30 = v39;

  v31 = sub_252004810();
  v32 = swift_allocObject();
  v33 = MEMORY[0x277D85700];
  *(v32 + 16) = v31;
  *(v32 + 24) = v33;
  *(v32 + 32) = v42;
  v35 = v40;
  v34 = v41;
  *(v32 + 40) = v30;
  *(v32 + 48) = v35;
  *(v32 + 56) = a5;
  *(v32 + 64) = v34;
  *(v32 + 72) = a7;
  *(v32 + 80) = a8;
  *(v32 + 88) = a9;
  sub_251FEEC50(0, 0, v18, &unk_252008618, v32);

  dispatch_group_leave(v14);
}

uint64_t sub_251FEE9D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v14;
  *(v8 + 48) = v13;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  *(v8 + 80) = a4;
  sub_252004820();
  *(v8 + 72) = sub_252004810();
  v10 = sub_252004800();

  return MEMORY[0x2822009F8](sub_251FEEA88, v10, v9);
}

uint64_t sub_251FEEA88()
{
  v1 = *(v0 + 80);

  if (v1 <= 2)
  {
    if (v1 < 2)
    {
      v3 = *(v0 + 40);
      v4 = sub_252003D30();
      v3();

      goto LABEL_10;
    }

    if (v1 == 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if ((v1 - 3) < 4)
    {
      (*(v0 + 56))(v2);
      goto LABEL_10;
    }

    if (v1 == 7)
    {
LABEL_9:
      v6 = *(v0 + 40);
      v5 = *(v0 + 48);
      sub_252003EA0();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = v5;

      v8 = sub_252003D40();

      v6(v8);
    }
  }

LABEL_10:
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_251FEEC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70B8, &qword_252008608);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_251FC6348(a3, v26 - v11, &qword_27F4C70B8, &qword_252008608);
  v13 = sub_252004840();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_251FC6470(v12, &qword_27F4C70B8, &qword_252008608);
  }

  else
  {
    sub_252004830();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_252004800();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_252004720() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_251FC6470(a3, &qword_27F4C70B8, &qword_252008608);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_251FC6470(a3, &qword_27F4C70B8, &qword_252008608);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_251FEEF50(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

Swift::Void __swiftcall HearingModeUIService._showOcclusionTutorial()()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 headphoneDevice];
  if (v7 && (v8 = v7, v9 = sub_251FEAFA4(), v8, v9))
  {
    v27[0] = sub_252003EB0();
    v27[1] = v10;
    v26[2] = 45;
    v26[3] = 0xE100000000000000;
    v26[0] = 58;
    v26[1] = 0xE100000000000000;
    sub_251FD671C();
    sub_2520049E0();

    sub_252003EA0();
    v11 = objc_allocWithZone(sub_252003DB0());
    v12 = sub_252003DA0();
    [v12 setModalInPresentation_];
    v13 = [v12 navigationItem];
    sub_251FD6770(0, &qword_27F4C6FF8, 0x277D751E0);
    sub_251FD6770(0, &qword_27F4C6BB0, 0x277D750C8);
    *(swift_allocObject() + 16) = v12;
    v14 = v12;
    sub_2520049A0();
    v15 = sub_2520048D0();
    [v13 setRightBarButtonItem_];

    v16 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    v17 = [v1 delegate];
    if (v17)
    {
      v18 = v17;
      if ([v17 respondsToSelector_])
      {
        [v18 presentViewController_];
      }

      swift_unknownObjectRelease();
    }

    v19 = [v1 hmsClient];
    v20 = sub_252003E60();
    sub_252004010();

    v21 = sub_2520046B0();

    [v19 occlusionIndicationShownForDeviceAddress:v21 featureID:2 type:7 action:3];
  }

  else
  {
    sub_2520043A0();
    v22 = sub_2520043B0();
    v23 = sub_2520048B0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_251FC55E0(0xD000000000000018, 0x800000025200DC00, v27);
      _os_log_impl(&dword_251FB5000, v22, v23, "%s: No headphone device", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x253097030](v25, -1, -1);
      MEMORY[0x253097030](v24, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

Swift::Void __swiftcall HearingModeUIService.hearingTestTapped()()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 headphoneDevice];
  if (v7 && (v8 = v7, v20 = sub_251FEAFA4(), v8, v20))
  {
    v9 = sub_252003E40();
    if (v9)
    {
      v10 = v9;
      v11 = [v9 hearingTestCapability];

      if (v11 == 2)
      {
        v12 = [v1 hmsClient];
        v13 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v14 = swift_allocObject();
        swift_unknownObjectWeakInit();

        _sSo20HearingModeUIServiceC0aB10SettingsUIE18showOcclusionAlert_13serviceClient13presentAction04passL0y16HeadphoneManager0N6DeviceC_So09HMServiceJ0CySo16UIViewControllerCcyyctFZ_0(v20, v12, sub_251FF55F8, v13, sub_251FF56A0, v14);
      }

      else
      {
        [v1 presentCapabilityAlertForHearingAssistance:0 device:v20];
        v19 = v20;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_2520043A0();
    v15 = sub_2520043B0();
    v16 = sub_2520048B0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_251FC55E0(0xD000000000000013, 0x800000025200DC20, &v21);
      _os_log_impl(&dword_251FB5000, v15, v16, "%s: No headphone device", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x253097030](v18, -1, -1);
      MEMORY[0x253097030](v17, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

Swift::Bool __swiftcall HearingModeUIService._getHearingAssist()()
{
  v1 = sub_2520043D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 headphoneDevice];
  if (v6 && (v7 = v6, v8 = sub_251FEAFA4(), v7, v8))
  {
    v9 = sub_252003E60();
    v10 = sub_2520040F0();

    return v10 == 1;
  }

  else
  {
    sub_2520043A0();
    v12 = sub_2520043B0();
    v13 = sub_2520048B0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_251FC55E0(0xD000000000000013, 0x800000025200DC40, &v17);
      _os_log_impl(&dword_251FB5000, v12, v13, "%s: No headphone device", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x253097030](v15, -1, -1);
      MEMORY[0x253097030](v14, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }
}

void HearingModeUIService.presentCapabilityAlert(forHearingAssistance:device:)(int a1, void *a2)
{
  v3 = v2;
  v35 = a1;
  v5 = sub_252004680();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_2520046A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = v2;
  sub_252004620();
  v12 = sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
  v37 = sub_251FEAC98(v11, "Alert Title", 11, 2u);
  v38 = v13;
  v14 = *(v8 + 8);
  v14(v11, v7);
  type metadata accessor for AnyHearingFeatureContentProvider(0, v15);
  v16 = a2;
  v17 = AnyHearingFeatureContentProvider.__allocating_init(device:)(a2);
  v19 = AnyHearingFeatureContentProvider.featureFlag.getter(v17, v18);
  v39 = v17;
  if (v19)
  {
    v36 = AnyHearingFeatureContentProvider.devicePlatformName.getter();
  }

  else
  {
    v36 = 0x73646F50726941;
  }

  v20 = [objc_opt_self() currentDevice];
  [v20 userInterfaceIdiom];

  aBlock[0] = v3;
  sub_252004620();
  v34[1] = sub_251FEAB30(v11);
  v14(v11, v7);
  v40 = v12;
  aBlock[0] = v3;
  sub_252004620();
  sub_251FEAB30(v11);
  v14(v11, v7);
  v34[0] = v3;
  aBlock[0] = v3;
  sub_252004670();
  sub_252004660();
  sub_252004640();

  sub_252004660();
  sub_252004640();
  sub_252004660();
  sub_252004640();

  sub_252004660();
  sub_252004640();

  sub_252004660();
  sub_252004690();
  sub_251FEAC98(v11, "Alert Subtitle", 14, 2u);
  v14(v11, v7);
  v21 = sub_2520046B0();

  v22 = sub_2520046B0();

  v23 = [objc_opt_self() alertControllerWithTitle:v21 message:v22 preferredStyle:1];

  v24 = v14;
  v25 = v34[0];
  aBlock[0] = v34[0];
  sub_252004620();
  sub_251FEAC98(v11, "Alert Action", 12, 2u);
  v24(v11, v7);
  v26 = sub_2520046B0();

  aBlock[4] = sub_251FF0184;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251FC8818;
  aBlock[3] = &block_descriptor_24;
  v27 = _Block_copy(aBlock);

  v28 = objc_opt_self();
  v29 = [v28 actionWithTitle:v26 style:0 handler:v27];
  _Block_release(v27);

  aBlock[0] = v25;
  sub_252004620();
  sub_251FEAC98(v11, "Alert Action", 12, 2u);
  v24(v11, v7);
  v30 = sub_2520046B0();

  v31 = [v28 actionWithTitle:v30 style:0 handler:0];

  [v23 addAction_];
  [v23 addAction_];
  [v23 setPreferredAction_];
  v32 = [v25 delegate];
  if (v32)
  {
    v33 = v32;
    if (([v32 respondsToSelector_] & 1) == 0)
    {

      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    [v33 presentViewController_];

    swift_unknownObjectRelease();
  }

  else
  {
  }

LABEL_10:
}

uint64_t sub_251FF0184()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A58, &qword_252007790);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v13 - v2;
  v4 = sub_252003B10();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252003B00();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_251FC6470(v3, &qword_27F4C6A58, &qword_252007790);
  }

  (*(v5 + 32))(v8, v3, v4);
  v10 = [objc_opt_self() sharedApplication];
  v11 = sub_252003AF0();
  sub_251FD4C8C(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_251FF2BC8(&qword_27F4C6A60, type metadata accessor for OpenExternalURLOptionsKey, &unk_2520079B4);
  v12 = sub_252004600();

  [v10 openURL:v11 options:v12 completionHandler:0];

  return (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall HearingModeUIService.submitHADeviceAnalytics(enrolled:)(Swift::Int enrolled)
{
  v11 = [objc_allocWithZone(sub_252003D10()) init];
  v2 = [v1 headphoneDevice];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 headphoneDevice];
    if (v4)
    {
      v5 = v4;
      v6 = sub_252003E50();

      [v6 productID];
      v7 = sub_252004C30();
    }

    else
    {
      v7 = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
    }

    v9 = v7;
    sub_252003CC0();

    v10 = sub_252004860();
    sub_252003CC0();

    sub_252003CD0();
    v8 = v3;
  }

  else
  {
    v8 = v11;
  }
}

Swift::String __swiftcall HearingModeUIService.getHearingAidString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_252004680();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2520046A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v97 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2520043D0();
  v98 = *(v11 - 8);
  v99 = v11;
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v95 = &v90 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v90 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v90 - v24;
  sub_252003F10();
  v26 = sub_252003EF0();
  v104[0] = countAndFlagsBits;
  v104[1] = object;
  v102 = 58;
  v103 = 0xE100000000000000;
  v100 = 45;
  v101 = 0xE100000000000000;
  sub_251FD671C();
  v27 = sub_2520049E0();
  v29 = v28;
  v30 = sub_252003EE0();

  if (*(v30 + 16))
  {
    v31 = sub_251FD4318(v27, v29);
    v33 = v32;

    if (v33)
    {
      v92 = v6;
      v94 = v7;
      v34 = *(*(v30 + 56) + 8 * v31);

      v35 = sub_252003E60();
      sub_2520043A0();
      v36 = v35;
      v37 = sub_2520043B0();
      v38 = sub_2520048C0();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v104[0] = v91;
        *v39 = 136315906;
        v40 = sub_2520041B0();
        HMRegionStatusToString(v40);
        v41 = sub_252004750();
        v43 = sub_251FC55E0(v41, v42, v104);
        v93 = v8;
        v44 = v43;

        *(v39 + 4) = v44;
        *(v39 + 12) = 2080;
        v45 = sub_252004120();
        HMRegionStatusToString(v45);
        v46 = sub_252004750();
        v48 = sub_251FC55E0(v46, v47, v104);

        *(v39 + 14) = v48;
        *(v39 + 22) = 2080;
        v49 = sub_252004160();
        HMRegionStatusToString(v49);
        v50 = sub_252004750();
        v52 = sub_251FC55E0(v50, v51, v104);

        *(v39 + 24) = v52;
        *(v39 + 32) = 2080;
        v53 = v36;
        v54 = sub_2520041F0();
        HMRegionStatusToString(v54);
        v55 = sub_252004750();
        v57 = sub_251FC55E0(v55, v56, v104);

        *(v39 + 34) = v57;
        v8 = v93;
        _os_log_impl(&dword_251FB5000, v37, v38, "Hearing Mode: Fetching footer with mode HP - %s, HT - %s, HA - %s HP PPE - %s", v39, 0x2Au);
        v58 = v91;
        swift_arrayDestroy();
        MEMORY[0x253097030](v58, -1, -1);
        MEMORY[0x253097030](v39, -1, -1);
      }

      else
      {
        v53 = v36;
      }

      v64 = *(v98 + 8);
      v64(v25, v99);
      type metadata accessor for AnyHearingFeatureContentProvider(0, v65);
      v93 = v34;
      v66 = AnyHearingFeatureContentProvider.__allocating_init(device:)(v34);
      if (AnyHearingFeatureContentProvider.featureFlag.getter(v66, v67))
      {
        AnyHearingFeatureContentProvider.deviceMarketingName.getter();
      }

      v68 = v53;
      v69 = v66;
      if (sub_2520041D0() == 1)
      {
        v70 = sub_2520041B0();
        v71 = sub_2520041F0();
        if (v70 != 2 && v71 != 2)
        {
          if (v70 != 3 && v71 != 3)
          {
            if (v71 != 1 || v70 != 1)
            {
              sub_252004120();
              sub_252004160();
              goto LABEL_68;
            }

            v72 = sub_252004120();
            v73 = sub_252004160();
            goto LABEL_25;
          }

          v72 = sub_252004120();
          v73 = sub_252004160();
          goto LABEL_41;
        }

        v72 = sub_252004120();
        v73 = sub_252004160();
      }

      else
      {
        sub_2520043A0();
        v74 = sub_2520043B0();
        v75 = sub_2520048C0();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&dword_251FB5000, v74, v75, "Hearing Mode: PPE Capability not supported! Default to HP region status", v76, 2u);
          MEMORY[0x253097030](v76, -1, -1);
        }

        v64(v22, v99);
        v77 = sub_2520041B0();
        v72 = sub_252004120();
        v73 = sub_252004160();
        if (v77 == 3)
        {
LABEL_41:
          if (v72 != 3)
          {
            if (v72 != 2)
            {
              if (v72 != 1)
              {
                goto LABEL_68;
              }

              if (v73 != 3)
              {
                if (v73 != 2)
                {
                  if (v73 != 1)
                  {
                    goto LABEL_68;
                  }

                  v78 = v97;
                  v104[0] = v96;
                  sub_252004620();
                  sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
                  v79 = "Footer, hearing protection rescinded";
                  goto LABEL_48;
                }

                v104[0] = v96;
                sub_252004670();
                sub_252004660();
                sub_252004640();

                sub_252004660();
                v78 = v97;
                sub_252004690();
                sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
                v79 = "Footer, hearing protection rescinded and hearing assist supported";
LABEL_93:
                v80 = v78;
                v81 = 65;
                goto LABEL_72;
              }

              v78 = v97;
              v104[0] = v96;
              sub_252004620();
              sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
              v79 = "Footer, hearing protection and hearing assist rescinded";
              goto LABEL_96;
            }

            switch(v73)
            {
              case 3:
                v104[0] = v96;
                sub_252004670();
                sub_252004660();
                sub_252004640();

                sub_252004660();
                v78 = v97;
                sub_252004690();
                sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
                v79 = "Footer, hearing test supported, hearing protection and hearing assist rescinded";
                break;
              case 2:
                v104[0] = v96;
                sub_252004670();
                sub_252004660();
                sub_252004640();

                sub_252004660();
                v78 = v97;
                sub_252004690();
                sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
                v79 = "Footer, hearing test and hearing assist supported, hearing protection rescinded";
                break;
              case 1:
                v104[0] = v96;
                sub_252004670();
                sub_252004660();
                sub_252004640();

                sub_252004660();
                v78 = v97;
                sub_252004690();
                sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
                v79 = "Footer, hearing protection rescinded and hearing test supported";
                goto LABEL_61;
              default:
                goto LABEL_68;
            }

            goto LABEL_91;
          }

          if (v73 != 3)
          {
            if (v73 == 2)
            {
              v104[0] = v96;
              sub_252004670();
              sub_252004660();
              sub_252004640();

              sub_252004660();
              v78 = v97;
              sub_252004690();
              sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
              v79 = "Footer, hearing assist supported, hearing protection and hearing test rescinded";
              goto LABEL_91;
            }

            if (v73 != 1)
            {
              goto LABEL_68;
            }

            v78 = v97;
            v104[0] = v96;
            sub_252004620();
            sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
            v79 = "Footer, hearing protection and hearing test rescinded";
LABEL_66:
            v80 = v78;
            v81 = 53;
            goto LABEL_72;
          }

          v78 = v97;
          v104[0] = v96;
          sub_252004620();
          sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
          v79 = "Footer, all rescinded";
          goto LABEL_71;
        }

        if (v77 != 2)
        {
          if (v77 != 1)
          {
            goto LABEL_68;
          }

LABEL_25:
          switch(v72)
          {
            case 3:
              if (v73 == 3)
              {

                v78 = v97;
                v104[0] = v96;
                sub_252004620();
                sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
                v79 = "Footer, hearing test and hearing assist rescinded";
                goto LABEL_103;
              }

              if (v73 != 2)
              {
                if (v73 != 1)
                {
                  goto LABEL_68;
                }

                v78 = v97;
                v104[0] = v96;
                sub_252004620();
                sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
                v79 = "Footer, hearing test rescinded";
                goto LABEL_81;
              }

              v104[0] = v96;
              sub_252004670();
              sub_252004660();
              sub_252004640();

              sub_252004660();
              v78 = v97;
              sub_252004690();
              sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
              v79 = "Footer, hearing test rescinded and hearing assist supported";
              break;
            case 2:
              if (v73 != 3)
              {
                if (v73 != 2)
                {
                  if (v73 != 1)
                  {
                    goto LABEL_68;
                  }

                  v104[0] = v96;
                  sub_252004670();
                  sub_252004660();
                  sub_252004640();

                  sub_252004660();
                  v78 = v97;
                  sub_252004690();
                  sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
                  v79 = "Footer, hearing test supported";
LABEL_81:
                  v80 = v78;
                  v81 = 30;
                  goto LABEL_72;
                }

                v104[0] = v96;
                sub_252004670();
                sub_252004660();
                sub_252004640();

                sub_252004660();
                v78 = v97;
                sub_252004690();
                sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
                v79 = "Footer, hearing test and hearing assist supported";
LABEL_103:
                v80 = v78;
                v81 = 49;
                goto LABEL_72;
              }

              v104[0] = v96;
              sub_252004670();
              sub_252004660();
              sub_252004640();

              sub_252004660();
              v78 = v97;
              sub_252004690();
              sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
              v79 = "Footer, hearing test supported and hearing assist rescinded";
              break;
            case 1:
              switch(v73)
              {
                case 3:

                  v78 = v97;
                  v104[0] = v96;
                  sub_252004620();
                  sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
                  v79 = "Footer, hearing assist rescinded";
                  break;
                case 2:
                  v104[0] = v96;
                  sub_252004670();
                  sub_252004660();
                  sub_252004640();

                  sub_252004660();
                  v78 = v97;
                  sub_252004690();
                  sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
                  v79 = "Footer, hearing assist supported";
                  break;
                case 1:

                  v78 = v97;
                  v104[0] = v96;
                  sub_252004620();
                  sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
                  v79 = "Footer, all unsupported";
                  v80 = v78;
                  v81 = 23;
LABEL_72:
                  v86 = sub_251FEAC98(v80, v79, v81, 2u);
                  v88 = v87;

                  (*(v8 + 1))(v78, v94);
                  v63 = v88;
                  v62 = v86;
                  goto LABEL_106;
                default:
                  goto LABEL_68;
              }

              v80 = v78;
              v81 = 32;
              goto LABEL_72;
            default:
LABEL_68:

              v82 = v95;
              sub_2520043A0();
              v83 = sub_2520043B0();
              v84 = sub_2520048C0();
              if (os_log_type_enabled(v83, v84))
              {
                v85 = swift_slowAlloc();
                *v85 = 0;
                _os_log_impl(&dword_251FB5000, v83, v84, "Hearing Mode: Reached erroneous state", v85, 2u);
                MEMORY[0x253097030](v85, -1, -1);
              }

              v64(v82, v99);
              v78 = v97;
              v104[0] = v96;
              sub_252004620();
              sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
              v79 = "Erroneous state State";
              goto LABEL_71;
          }

          v80 = v78;
          v81 = 59;
          goto LABEL_72;
        }
      }

      if (v72 == 3)
      {
        switch(v73)
        {
          case 3:
            v104[0] = v96;
            sub_252004670();
            sub_252004660();
            sub_252004640();

            sub_252004660();
            v78 = v97;
            sub_252004690();
            sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
            v79 = "Footer, hearing protection supported, hearing test and hearing assist rescinded";
            break;
          case 2:
            v104[0] = v96;
            sub_252004670();
            sub_252004660();
            sub_252004640();
            sub_252004660();
            sub_252004640();

            sub_252004660();
            v78 = v97;
            sub_252004690();
            sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
            v79 = "Footer, hearing protection and hearing assist supported, hearing test rescinded";
            break;
          case 1:
            v104[0] = v96;
            sub_252004670();
            sub_252004660();
            sub_252004640();

            sub_252004660();
            v78 = v97;
            sub_252004690();
            sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
            v79 = "Footer, hearing protection supported and hearing test rescinded";
LABEL_61:
            v80 = v78;
            v81 = 63;
            goto LABEL_72;
          default:
            goto LABEL_68;
        }

LABEL_91:
        v80 = v78;
        v81 = 79;
        goto LABEL_72;
      }

      if (v72 != 2)
      {
        if (v72 != 1)
        {
          goto LABEL_68;
        }

        if (v73 == 3)
        {
          v104[0] = v96;
          sub_252004670();
          sub_252004660();
          sub_252004640();

          sub_252004660();
          v78 = v97;
          sub_252004690();
          sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
          v79 = "Footer, hearing protection supported and hearing assist rescinded";
          goto LABEL_93;
        }

        if (v73 != 2)
        {
          if (v73 != 1)
          {
            goto LABEL_68;
          }

          v104[0] = v96;
          sub_252004670();
          sub_252004660();
          sub_252004640();

          sub_252004660();
          v78 = v97;
          sub_252004690();
          sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
          v79 = "Footer, hearing protection supported";
LABEL_48:
          v80 = v78;
          v81 = 36;
          goto LABEL_72;
        }

        v104[0] = v96;
        sub_252004670();
        sub_252004660();
        sub_252004640();
        sub_252004660();
        sub_252004640();

        sub_252004660();
        v78 = v97;
        sub_252004690();
        sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
        v79 = "Footer, hearing protection and hearing assist supported";
LABEL_96:
        v80 = v78;
        v81 = 55;
        goto LABEL_72;
      }

      if (v73 == 3)
      {
        v104[0] = v96;
        sub_252004670();
        sub_252004660();
        sub_252004640();
        sub_252004660();
        sub_252004640();

        sub_252004660();
        v78 = v97;
        sub_252004690();
        sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
        v79 = "Footer, hearing protection and hearing test supported, hearing assist rescinded";
        goto LABEL_91;
      }

      if (v73 != 2)
      {
        if (v73 != 1)
        {
          goto LABEL_68;
        }

        v104[0] = v96;
        sub_252004670();
        sub_252004660();
        sub_252004640();
        sub_252004660();
        sub_252004640();

        sub_252004660();
        v78 = v97;
        sub_252004690();
        sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
        v79 = "Footer, hearing protection and hearing test supported";
        goto LABEL_66;
      }

      v104[0] = v96;
      sub_252004670();
      sub_252004660();
      sub_252004640();
      sub_252004660();
      sub_252004640();

      sub_252004660();
      v78 = v97;
      sub_252004690();
      sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
      v79 = "Footer, all supported";
LABEL_71:
      v80 = v78;
      v81 = 21;
      goto LABEL_72;
    }
  }

  else
  {
  }

  sub_2520043A0();
  v59 = sub_2520043B0();
  v60 = sub_2520048C0();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_251FB5000, v59, v60, "Hearing Mode: Invalid BT Address while fetching footer", v61, 2u);
    MEMORY[0x253097030](v61, -1, -1);
  }

  (*(v98 + 8))(v15, v99);
  v62 = 0;
  v63 = 0xE000000000000000;
LABEL_106:
  result._object = v63;
  result._countAndFlagsBits = v62;
  return result;
}

uint64_t HearingModeUIService.setTopLevelCellClass(_:)(void *a1)
{
  sub_2520042F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AC0, &unk_2520077E0);
  [a1 setProperty:sub_252004BB0() forKey:*MEMORY[0x277D3FE58]];
  return swift_unknownObjectRelease();
}

Swift::Bool __swiftcall HearingModeUIService.shouldShowHearingProtection()()
{
  v1 = sub_2520043D0();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v66 - v9;
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v66 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v66 - v16;
  v18 = [v0 headphoneDevice];
  if (v18 && (v19 = v18, v20 = sub_251FEAFA4(), v19, v20))
  {
    v21 = sub_252003E60();
    v22 = sub_2520041B0();
    v67 = v14;
    v68 = (v22 == 2 || sub_2520041B0() == 3) && sub_252004180() == 1;
    sub_2520043A0();
    v28 = v21;
    v29 = v20;
    v30 = sub_2520043B0();
    v31 = sub_2520048C0();

    v32 = os_log_type_enabled(v30, v31);
    v71 = v2;
    v72 = v1;
    v70 = v10;
    v66 = v29;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v73 = v69;
      *v33 = 136315906;
      *(v33 + 4) = sub_251FC55E0(0xD00000000000001DLL, 0x800000025200ED80, &v73);
      *(v33 + 12) = 2080;
      v34 = sub_252003EA0();
      v36 = sub_251FC55E0(v34, v35, &v73);

      *(v33 + 14) = v36;
      *(v33 + 22) = 256;
      LOBYTE(v36) = sub_2520041B0();

      *(v33 + 24) = v36;
      *(v33 + 25) = 256;
      LOBYTE(v36) = sub_252004180();

      *(v33 + 27) = v36;
      _os_log_impl(&dword_251FB5000, v30, v31, "%s: for %s, HP status: %hhu, HP capability: %hhd", v33, 0x1Cu);
      v37 = v69;
      swift_arrayDestroy();
      MEMORY[0x253097030](v37, -1, -1);
      MEMORY[0x253097030](v33, -1, -1);

      v38 = *(v71 + 8);
      v38(v17, v72);
    }

    else
    {

      v38 = *(v2 + 8);
      v38(v17, v1);
    }

    v39 = v67;
    if (v68)
    {
      v40 = 1;
    }

    else
    {
      v40 = (sub_2520041F0() == 2 || sub_2520041F0() == 3) && sub_2520041D0() == 1;
    }

    v41 = v66;
    v68 = v40;
    sub_2520043A0();
    v42 = v28;
    v43 = v41;
    v44 = sub_2520043B0();
    v45 = sub_2520048C0();

    v46 = os_log_type_enabled(v44, v45);
    v69 = v38;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v73 = v48;
      *v47 = 136315906;
      *(v47 + 4) = sub_251FC55E0(0xD00000000000001DLL, 0x800000025200ED80, &v73);
      *(v47 + 12) = 2080;
      v49 = sub_252003EA0();
      v51 = sub_251FC55E0(v49, v50, &v73);

      *(v47 + 14) = v51;
      *(v47 + 22) = 256;
      v52 = sub_2520041F0();

      *(v47 + 24) = v52;
      *(v47 + 25) = 256;
      v53 = sub_2520041D0();

      *(v47 + 27) = v53;
      _os_log_impl(&dword_251FB5000, v44, v45, "%s: for %s, PPE status: %hhu, PPE capability: %hhd", v47, 0x1Cu);
      swift_arrayDestroy();
      v54 = v48;
      v38 = v69;
      MEMORY[0x253097030](v54, -1, -1);
      MEMORY[0x253097030](v47, -1, -1);
    }

    else
    {
    }

    v55 = v72;
    v38(v39, v72);
    v56 = v70;
    sub_2520043A0();
    v57 = v43;
    v58 = sub_2520043B0();
    v59 = sub_2520048C0();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v73 = v61;
      *v60 = 136315650;
      *(v60 + 4) = sub_251FC55E0(0xD00000000000001DLL, 0x800000025200ED80, &v73);
      *(v60 + 12) = 2080;
      v62 = sub_252003EA0();
      v64 = sub_251FC55E0(v62, v63, &v73);

      *(v60 + 14) = v64;
      *(v60 + 22) = 1024;
      v65 = v68;
      *(v60 + 24) = v68;
      _os_log_impl(&dword_251FB5000, v58, v59, "%s: for %s, shouldShow: %{BOOL}d", v60, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x253097030](v61, -1, -1);
      MEMORY[0x253097030](v60, -1, -1);

      (v69)(v70, v55);
      return v65;
    }

    else
    {

      v38(v56, v55);
      return v68;
    }
  }

  else
  {
    sub_2520043A0();
    v23 = sub_2520043B0();
    v24 = sub_2520048B0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v73 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_251FC55E0(0xD00000000000001DLL, 0x800000025200ED80, &v73);
      _os_log_impl(&dword_251FB5000, v23, v24, "%s: No headphone device", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x253097030](v26, -1, -1);
      MEMORY[0x253097030](v25, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
    return 0;
  }
}

uint64_t sub_251FF29D8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_251FF2AD0;

  return v6(a1);
}

uint64_t sub_251FF2AD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_251FF2BC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251FF2C10()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_251FF2C48()
{
  if (qword_27F4C8510 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();
  __swift_project_value_buffer(v0, qword_27F4C9470);
  v1 = sub_2520043B0();
  v2 = sub_2520048B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7[0] = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_251FC55E0(0xD000000000000019, 0x800000025200EE90, v7);
    *(v3 + 12) = 2048;
    *(v3 + 14) = 44;
    _os_log_impl(&dword_251FB5000, v1, v2, "HearingModeUIService: %s: %ld hearing client interrupted! Retrying to standup discovery stack", v3, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x253097030](v4, -1, -1);
    MEMORY[0x253097030](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong configHearingModeClient];
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251FF2DE8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_252004C00();
  sub_252004730();
  v8 = sub_252004C20();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_252004B90() & 1) != 0)
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

    sub_251FF3198(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_251FF2F38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70E8, &qword_252008668);
  result = sub_252004A50();
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
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_252004C00();
      sub_252004730();
      result = sub_252004C20();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_251FF3198(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_251FF2F38(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_251FF3318();
      goto LABEL_16;
    }

    sub_251FF3474(v8 + 1);
  }

  v10 = *v4;
  sub_252004C00();
  sub_252004730();
  result = sub_252004C20();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_252004B90();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_252004BC0();
  __break(1u);
  return result;
}

void *sub_251FF3318()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70E8, &qword_252008668);
  v2 = *v0;
  v3 = sub_252004A40();
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

  return result;
}

uint64_t sub_251FF3474(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70E8, &qword_252008668);
  result = sub_252004A50();
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
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_252004C00();

      sub_252004730();
      result = sub_252004C20();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

char *sub_251FF36AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251FF40CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_251FF36CC()
{
  result = qword_27F4C7048;
  if (!qword_27F4C7048)
  {
    sub_251FD6770(255, &qword_27F4C7040, 0x277D3FA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C7048);
  }

  return result;
}

uint64_t sub_251FF3734()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_251FF3784()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  if (qword_27F4C8510 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v72 = sub_2520043D0();
    __swift_project_value_buffer(v72, qword_27F4C9470);
    v4 = v1;

    v5 = sub_2520043B0();
    v6 = sub_2520048C0();

    v67 = v3;
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v75[0] = v8;
      *v7 = 136316418;
      v9 = sub_252004010();
      v11 = sub_251FC55E0(v9, v10, v75);

      *(v7 + 4) = v11;
      *(v7 + 12) = 256;
      v12 = sub_2520041B0();

      *(v7 + 14) = v12;
      *(v7 + 15) = 256;
      v13 = sub_2520041F0();

      *(v7 + 17) = v13;
      *(v7 + 18) = 256;
      v14 = sub_252004160();

      *(v7 + 20) = v14;
      *(v7 + 21) = 256;
      v15 = sub_252004120();

      *(v7 + 23) = v15;
      *(v7 + 24) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6B30, &unk_252007820);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_252007360;
      swift_beginAccess();
      v74[0] = swift_unknownObjectWeakLoadStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70D0, &qword_252008648);
      v17 = sub_252004710();
      v19 = v18;
      *(v16 + 56) = MEMORY[0x277D837D0];
      *(v16 + 64) = sub_251FD6800();
      *(v16 + 32) = v17;
      *(v16 + 40) = v19;
      v20 = sub_2520046F0();
      v22 = sub_251FC55E0(v20, v21, v75);

      *(v7 + 26) = v22;
      _os_log_impl(&dword_251FB5000, v5, v6, "HearingModeUIService listener triggered for %s: HP: %hhu PPE: %hhu HA:%hhu  HT:%hhu BTSC:%s", v7, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x253097030](v8, -1, -1);
      MEMORY[0x253097030](v7, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_26;
    }

    v24 = Strong;
    v1 = [Strong specifiers];
    v3 = sub_2520047B0();

    v25 = sub_251FED8FC(v3);

    if (!v25)
    {

LABEL_26:
      v47 = sub_2520043B0();
      v48 = sub_2520048B0();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_251FB5000, v47, v48, "HearingModeUIService depedencies not met! no specifiers or we are being deallocated!", v49, 2u);
        MEMORY[0x253097030](v49, -1, -1);
      }

LABEL_50:

      return;
    }

    v26 = v25 & 0xFFFFFFFFFFFFFF8;
    if (v25 >> 62)
    {
      v27 = sub_252004B20();
    }

    else
    {
      v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v65 = v2;
    v66 = v24;
    v70 = v27;
    v71 = v25 & 0xFFFFFFFFFFFFFF8;
    if (v27)
    {
      v69 = v25 & 0xC000000000000001;
      v2 = MEMORY[0x277D84F98];
      v28 = 4;
      while (1)
      {
        v29 = v28 - 4;
        if (v69)
        {
          v30 = MEMORY[0x253096650](v28 - 4, v25);
        }

        else
        {
          if (v29 >= *(v26 + 16))
          {
            goto LABEL_54;
          }

          v30 = *(v25 + 8 * v28);
        }

        v1 = v30;
        v3 = (v28 - 3);
        if (__OFADD__(v29, 1))
        {
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        if (qword_27F4C8510 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v72, qword_27F4C9470);
        v31 = v1;
        v32 = sub_2520043B0();
        v33 = sub_2520048C0();
        v73 = v28 - 3;
        if (os_log_type_enabled(v32, v33))
        {
          v68 = v2;
          v34 = v25;
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v74[0] = v36;
          *v35 = 136315138;
          v37 = [v31 identifier];

          if (!v37)
          {
            goto LABEL_61;
          }

          v38 = sub_2520046E0();
          v40 = v39;

          v41 = sub_251FC55E0(v38, v40, v74);

          *(v35 + 4) = v41;
          _os_log_impl(&dword_251FB5000, v32, v33, "updatedSpecifiersMap adding identifier: %s", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
          MEMORY[0x253097030](v36, -1, -1);
          MEMORY[0x253097030](v35, -1, -1);

          v25 = v34;
          v27 = v70;
          v26 = v71;
          v2 = v68;
        }

        else
        {
        }

        v42 = [v31 identifier];
        if (!v42)
        {
          break;
        }

        v43 = v42;
        v3 = sub_2520046E0();
        v45 = v44;

        v1 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74[0] = v2;
        sub_251FF48C4(v1, v3, v45, isUniquelyReferenced_nonNull_native);

        v2 = v74[0];

        ++v28;
        if (v73 == v27)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
      return;
    }

    v2 = MEMORY[0x277D84F98];
LABEL_29:
    v50 = v67 >> 62 ? sub_252004B20() : *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = *(v2 + 16);

    if (v50 != v3)
    {
      break;
    }

    v1 = sub_2520043B0();
    v51 = sub_2520048C0();
    v2 = v65;
    if (os_log_type_enabled(v1, v51))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_251FB5000, v1, v51, "HearingModeUIService listener triggered reload ID", v3, 2u);
      MEMORY[0x253097030](v3, -1, -1);
    }

    swift_beginAccess();
    v52 = swift_unknownObjectWeakLoadStrong();
    if (v52)
    {
      v1 = v52;
      sub_251FD1A78(v67);
      v3 = sub_2520047A0();

      sub_251FD1A78(v25);
      v53 = sub_2520047A0();

      [v1 replaceContiguousSpecifiers:v3 withSpecifiers:v53];
    }

    if (!v27)
    {
LABEL_51:

      return;
    }

    v54 = 4;
    while (1)
    {
      v56 = v54 - 4;
      if ((v25 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x253096650](v54 - 4, v25);
      }

      else
      {
        if (v56 >= *(v26 + 16))
        {
          goto LABEL_56;
        }

        v57 = *(v25 + 8 * v54);
      }

      v1 = v57;
      v58 = v54 - 3;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      swift_beginAccess();
      v59 = swift_unknownObjectWeakLoadStrong();
      if (v59)
      {
        v60 = v59;
        v3 = [v1 identifier];
        [v60 reloadSpecifierID_];
      }

      ++v54;
      v55 = v58 == v70;
      v26 = v71;
      if (v55)
      {
        goto LABEL_51;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
  }

  v61 = sub_2520043B0();
  v62 = sub_2520048C0();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_251FB5000, v61, v62, "HearingModeUIService listener triggered reload all", v63, 2u);
    MEMORY[0x253097030](v63, -1, -1);
  }

  swift_beginAccess();
  v64 = swift_unknownObjectWeakLoadStrong();
  if (v64)
  {
    v47 = v64;
    [v64 reloadSpecifiers];

    goto LABEL_50;
  }
}

char *sub_251FF40CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70F0, &unk_252008670);
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

uint64_t sub_251FF41D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70C8, &qword_252008640);
  v34 = v4;
  result = sub_252004B40();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_252004C00();
      sub_252004730();
      result = sub_252004C20();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_251FF4480(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70D8, &qword_252008658);
  v35 = v4;
  result = sub_252004B40();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_252004C00();
      sub_252004730();
      result = sub_252004C20();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_251FF4724(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_251FD4318(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_251FF41D8(v16, a4 & 1);
      v11 = sub_251FD4318(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_252004BD0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_251FF4A3C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

const char *HMOcclusionResultToString(unsigned int a1)
{
  if (a1 > 7)
  {
    return "?";
  }

  else
  {
    return off_2796F1F08[a1];
  }
}

uint64_t sub_251FF48C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_251FD4318(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_251FF4480(v16, a4 & 1);
      v11 = sub_251FD4318(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = sub_252004BD0();
        __break(1u);
        return MEMORY[0x2821F96F8](v11, v23);
      }
    }

    else
    {
      v19 = v11;
      sub_251FF4BAC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8](v11, v23);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

void *sub_251FF4A3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70C8, &qword_252008640);
  v2 = *v0;
  v3 = sub_252004B30();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

id sub_251FF4BAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70D8, &qword_252008658);
  v2 = *v0;
  v3 = sub_252004B30();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

uint64_t sub_251FF4D18(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x253096420](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_251FF2DE8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t _sSo20HearingModeUIServiceC0aB10SettingsUIE20_getOcclusionPayload_6device9inUsecaseSDySSypGSS_16HeadphoneManager0L6DeviceCSitF_0(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AA0, &unk_252007F50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252008480;
  *(inited + 32) = 0x65726464612D7462;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEA00000000007373;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_2520042F0();

  *(inited + 80) = sub_2520042E0();
  *(inited + 88) = v9;
  *(inited + 120) = sub_252003EC0();
  *(inited + 96) = a3;
  v10 = a3;
  *(inited + 128) = sub_2520042C0();
  *(inited + 136) = v11;
  v12 = HearingOcclusionUseCase.init(rawValue:)(a4);
  LOBYTE(a4) = v13;
  v22[3] = &type metadata for HearingOcclusionUseCase;
  v14 = sub_251FF5EC0();
  if (a4)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  v22[4] = v14;
  v22[0] = v16;
  v17 = type metadata accessor for HearingTopLevelCaseObjectWrapper(0, v15);
  v18 = sub_251FE8360(v22);
  *(inited + 168) = v17;
  *(inited + 144) = v18;
  *(inited + 176) = sub_2520042D0();
  *(inited + 184) = v19;
  *(inited + 216) = MEMORY[0x277D839B0];
  *(inited + 192) = 1;
  v20 = sub_251FD4B5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AB8, &unk_2520084E0);
  swift_arrayDestroy();
  return v20;
}

unint64_t sub_251FF4F40()
{
  result = qword_27F4C70A8;
  if (!qword_27F4C70A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C70A8);
  }

  return result;
}

unint64_t _sSo20HearingModeUIServiceC0aB10SettingsUIE04_getA17ProtectionPayload_6device9inUsecaseSDySSypGSS_16HeadphoneManager0L6DeviceCSitF_0(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AA0, &unk_252007F50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2520073B0;
  *(inited + 32) = 0x65726464612D7462;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEA00000000007373;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_2520042F0();

  *(inited + 80) = sub_2520042E0();
  *(inited + 88) = v9;
  *(inited + 120) = sub_252003EC0();
  *(inited + 96) = a3;
  v10 = a3;
  *(inited + 128) = sub_2520042C0();
  *(inited + 136) = v11;
  v12 = HearingTopLevelCellUseCase.init(rawValue:)(a4);
  LOBYTE(a4) = v13;
  v21[3] = &type metadata for HearingTopLevelCellUseCase;
  v14 = sub_251FF4F40();
  if (a4)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  v21[4] = v14;
  v21[0] = v16;
  v17 = type metadata accessor for HearingTopLevelCaseObjectWrapper(0, v15);
  v18 = sub_251FE8360(v21);
  *(inited + 168) = v17;
  *(inited + 144) = v18;
  v19 = sub_251FD4B5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AB8, &unk_2520084E0);
  swift_arrayDestroy();
  return v19;
}

void _sSo20HearingModeUIServiceC0aB10SettingsUIE18showOcclusionAlert_13serviceClient13presentAction04passL0y16HeadphoneManager0N6DeviceC_So09HMServiceJ0CySo16UIViewControllerCcyyctFZ_0(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v39 = a2;
  v41 = a4;
  v42 = a3;
  v40 = sub_2520045E0();
  v37 = *(v40 - 8);
  v9 = MEMORY[0x28223BE20](v40, v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v36 - v13;
  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  aBlock = sub_252003EB0();
  v44 = v16;
  v51 = 45;
  v52 = 0xE100000000000000;
  v49 = 58;
  v50 = 0xE100000000000000;
  sub_251FD671C();
  v17 = sub_2520049E0();
  v19 = v18;

  v20 = sub_252003E50();
  v21 = [v20 identifier];

  if (v21)
  {
    sub_2520046E0();
  }

  v22 = sub_2520046B0();

  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = v17;
  v36[1] = v17;
  v25 = v41;
  v24 = v42;
  v23[4] = v19;
  v23[5] = v24;
  v23[6] = v25;
  v23[7] = a5;
  v23[8] = v38;
  v23[9] = v15;
  v47 = sub_251FF5A90;
  v48 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_251FEEF50;
  v46 = &block_descriptor_35;
  v26 = _Block_copy(&aBlock);
  v27 = a1;

  v28 = v15;

  [v39 fetchOcclusionResultForDeviceIdentifier:v22 featureID:3 completion:v26];
  _Block_release(v26);

  sub_2520045D0();
  sub_2520045F0();
  v29 = *(v37 + 8);
  v30 = v40;
  v29(v11, v40);
  sub_2520048E0();
  v29(v14, v30);
  if (sub_2520045A0())
  {
    if (qword_27F4C8510 != -1)
    {
      swift_once();
    }

    v31 = sub_2520043D0();
    __swift_project_value_buffer(v31, qword_27F4C9470);
    v32 = sub_2520043B0();
    v33 = sub_2520048B0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_251FB5000, v32, v33, "timeout for fetching fetchOcclusionResult: Timed Out", v34, 2u);
      MEMORY[0x253097030](v34, -1, -1);
    }

    v35 = sub_252003D30();

    v42(v35);
  }

  else
  {
  }
}

uint64_t sub_251FF551C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_251FF5554()
{
  v1 = [*(v0 + 16) navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 presentingViewController];

    if (v3)
    {
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_251FF55F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong delegate];

    if (v4)
    {
      if ([v4 respondsToSelector_])
      {
        [v4 presentViewController_];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_251FF56A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong delegate];

    if (v2)
    {
      if ([v2 respondsToSelector_])
      {
        type metadata accessor for HMHearingTestService(0, v3);
        v4 = HMHearingTestService.__allocating_init()();
        v5 = (*((*MEMORY[0x277D85000] & *v4) + 0x58))();

        [v2 presentViewController_];
      }

      swift_unknownObjectRelease();
    }
  }
}

const char *HMRegionStatusToString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "?";
  }

  else
  {
    return off_2796F1F48[a1];
  }
}

unint64_t _sSo20HearingModeUIServiceC0aB10SettingsUIE03getA7AidLinkyS2SF_0(uint64_t a1, uint64_t a2)
{
  v2 = 0xD000000000000034;
  sub_252003F10();
  v3 = sub_252003EF0();
  sub_251FD671C();
  v4 = sub_2520049E0();
  v6 = v5;
  v7 = sub_252003EE0();

  if (!*(v7 + 16))
  {

    goto LABEL_8;
  }

  v8 = sub_251FD4318(v4, v6);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_8:

    return v2;
  }

  v11 = *(*(v7 + 56) + 8 * v8);

  v12 = sub_252003E60();
  if (sub_2520041B0() == 3 || sub_252004120() == 3 || sub_252004160() == 3)
  {

    return 0xD000000000000020;
  }

  else
  {
  }

  return v2;
}

uint64_t _s14AssociatedKeysVwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s14AssociatedKeysVwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_251FF5A38()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_251FF5AC4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_251FF5B1C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_251FF5BFC;

  return sub_251FEE9D4(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_251FF5BFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_251FF5CF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251FF5D28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_251FF6028;

  return sub_251FF29D8(a1, v4);
}

uint64_t sub_251FF5DE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_251FF5BFC;

  return sub_251FF29D8(a1, v4);
}

unint64_t sub_251FF5EC0()
{
  result = qword_27F4C70C0;
  if (!qword_27F4C70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C70C0);
  }

  return result;
}

Swift::Void __swiftcall UIView.pinToOther(_:)(UIView *a1)
{
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6BA0, &qword_252007410);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252007390;
  v5 = [v1 leadingAnchor];
  v6 = [(UIView *)a1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v1 trailingAnchor];
  v9 = [(UIView *)a1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [v1 topAnchor];
  v12 = [(UIView *)a1 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [v1 bottomAnchor];
  v15 = [(UIView *)a1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  sub_251FD6770(0, &qword_27F4C69D8, 0x277CCAAD0);
  v17 = sub_2520047A0();

  [v3 activateConstraints_];
}

void sub_251FF6298(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  UIView.pinToOther(_:)(v4);
}

id sub_251FF6304(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7100, &qword_252008778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252007360;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_251FD6770(0, &qword_27F4C7108, 0x277D74300);
  *(inited + 40) = a3;
  v6 = v5;
  v7 = a3;
  sub_251FF68C0(inited);
  swift_setDeallocating();
  sub_251FF69C8(inited + 32);
  v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v9 = sub_2520046B0();
  type metadata accessor for Key();
  sub_251FF6C18(&qword_27F4C7118, &unk_252008900);
  v10 = sub_252004600();

  v11 = [v8 initWithString:v9 attributes:v10];

  [v13 appendAttributedString_];

  return v13;
}

void OBWelcomeController.fitNoiseSetupCancelButton(fitDelegate:)(uint64_t a1)
{
  v3 = sub_2520043D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = objc_allocWithZone(MEMORY[0x277D751E0]);
    swift_unknownObjectRetain();
    v9 = [v8 initWithBarButtonSystemItem:1 target:0 action:0];
    sub_251FD6770(0, &qword_27F4C6BB0, 0x277D750C8);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = a1;
    swift_unknownObjectRetain();
    v12 = v1;
    v13 = sub_2520049A0();
    [v9 setPrimaryAction_];

    v14 = [v12 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6BA0, &qword_252007410);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2520073A0;
    *(v15 + 32) = v9;
    sub_251FD6770(0, &qword_27F4C6FF8, 0x277D751E0);
    v16 = v9;
    v22 = sub_2520047A0();

    [v14 setRightBarButtonItems_];
    swift_unknownObjectRelease();

    v17 = v22;
  }

  else
  {
    sub_252004390();
    v18 = sub_2520043B0();
    v19 = sub_2520048B0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_251FB5000, v18, v19, "No delegate", v20, 2u);
      MEMORY[0x253097030](v20, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

void sub_251FF67C0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  OBWelcomeController.fitNoiseSetupCancelButton(fitDelegate:)(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_251FF6828(uint64_t a1)
{
  v2 = sub_251FF6C18(&qword_27F4C7118, &unk_252008900);
  v3 = sub_251FF6C18(&qword_27F4C7140, &unk_252008854);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_251FF68C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7148, &qword_252008948);
    v3 = sub_252004B50();
    v4 = a1 + 32;

    while (1)
    {
      sub_251FF6C5C(v4, &v12);
      v5 = v12;
      result = sub_251FD4390(v12, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_251FC63B0(&v13, (v3[7] + 32 * result));
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_251FF69C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7110, &unk_252008780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Key()
{
  if (!qword_27F4C7120)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F4C7120);
    }
  }
}

uint64_t sub_251FF6A80()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251FF6AB8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_251FF6AF8()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([v1 respondsToSelector_])
    {
      [v1 fitNoiseCheckCancelled_];
    }
  }
}

uint64_t sub_251FF6C18(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251FF6C5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7110, &unk_252008780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251FF6CF8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___deviceName);
  if (*(v2 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___deviceName + 8))
  {
    v4 = *v3;
  }

  else
  {
    type metadata accessor for AnyHearingFeatureContentProvider(0, a2);
    v5 = sub_251FF6DB8();
    v6 = AnyHearingFeatureContentProvider.__allocating_init(device:)(v5);
    if (AnyHearingFeatureContentProvider.featureFlag.getter(v6, v7))
    {
      v4 = AnyHearingFeatureContentProvider.deviceMarketingName.getter();
      v9 = v8;
    }

    else
    {

      v9 = 0xEB000000006F7250;
      v4 = 0x2073646F50726941;
    }

    *v3 = v4;
    v3[1] = v9;
  }

  return v4;
}

void *sub_251FF6DB8()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__headphoneDevice;
  v8 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__headphoneDevice);
  if (!v8 || (v9 = v8, v10 = sub_251FEAFA4(), v9, !v10))
  {
    sub_2520043A0();
    v11 = sub_2520043B0();
    v12 = sub_2520048B0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_251FC55E0(0x6E6F687064616568, 0xEF65636976654465, &v18);
      _os_log_impl(&dword_251FB5000, v11, v12, "%s: connected device !", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x253097030](v14, -1, -1);
      MEMORY[0x253097030](v13, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v10 = *(v1 + v7);
    v15 = v10;
  }

  return v10;
}

uint64_t sub_251FF6FF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController_listeners;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id HearingAidSettingsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2520046B0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id HearingAidSettingsViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__headphoneDevice] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__hmsClient] = 0;
  v5 = &v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___deviceName];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController_address];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController_listeners] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___hearingOptionsControlCenterSection] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___adjustMediaAssistSection] = 0;
  if (a2)
  {
    v7 = sub_2520046B0();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for HearingAidSettingsViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

uint64_t sub_251FF72C8()
{
  v1 = sub_2520046A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2520042A0();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  swift_allocObject();
  sub_252004360();
  v16 = v0;
  sub_252004310();

  v17 = v0;
  sub_252004620();
  v10 = type metadata accessor for HearingAidSettingsViewController();
  sub_251FEAB30(v5);
  (*(v2 + 8))(v5, v1);
  v18 = v10;
  v17 = v0;
  v11 = v0;
  sub_252004290();
  sub_252004320();

  (*(v6 + 8))(v9, v15);
  sub_252004330();

  v12 = sub_252004350();

  return v12;
}

uint64_t sub_251FF7590(void *a1, uint64_t a2)
{
  v4 = sub_2520046A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252004680();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7240, &qword_252008A78);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v27 - v13;
  v15 = sub_252003B30();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__headphoneDevice);
  if (v20)
  {
    v30 = a2;
    v31 = v5;
    v21 = v20;
    sub_252003E30();

    sub_252004270();

    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v19, v14, v15);
      v22 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      [v22 setDateStyle_];
      [v22 setTimeStyle_];
      v23 = sub_252003B20();
      v24 = [v22 stringFromDate_];

      sub_2520046E0();
      v28 = v4;
      v29 = a1;

      v32 = v30;
      sub_252004670();
      sub_252004660();
      sub_252004640();

      sub_252004660();
      sub_252004690();
      type metadata accessor for HearingAidSettingsViewController();
      sub_251FEAC98(v8, "Prefix e.g Using Test Results from June 12, 2022", 48, 2u);
      (*(v31 + 8))(v8, v28);
      v25 = sub_2520046B0();

      [v29 setProperty:v25 forKey:*MEMORY[0x277D3FF88]];

      return (*(v16 + 8))(v19, v15);
    }
  }

  else
  {
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  return sub_251FC6470(v14, &qword_27F4C7240, &qword_252008A78);
}

uint64_t sub_251FF79C4()
{
  v1 = sub_2520042A0();
  v15 = *(v1 - 8);
  v16 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2520046A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v0;
  sub_252004620();
  v10 = type metadata accessor for HearingAidSettingsViewController();
  sub_251FEAB30(v9);
  v11 = *(v6 + 8);
  v11(v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  swift_allocObject();
  sub_252004360();
  v17 = v0;
  sub_252004310();

  v18 = v0;
  sub_252004620();
  sub_251FEAB30(v9);
  v11(v9, v5);
  v19 = v10;
  v18 = v0;
  v12 = v0;
  sub_252004290();
  sub_252004320();

  (*(v15 + 8))(v4, v16);
  v13 = sub_252004350();

  return v13;
}

uint64_t sub_251FF7CC8(uint64_t a1, uint64_t a2)
{
  v14[2] = a1;
  v3 = sub_252004680();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = sub_2520046A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2;
  sub_252004620();
  type metadata accessor for HearingAidSettingsViewController();
  v14[1] = sub_251FEAB30(v9);
  v10 = *(v6 + 8);
  v10(v9, v5);
  v15 = a2;
  sub_252004670();
  v11 = sub_252004660();
  sub_251FF6CF8(v11, v12);
  sub_252004640();

  sub_252004660();
  sub_252004690();
  sub_251FEAB30(v9);
  v10(v9, v5);
  sub_252004890();
}

uint64_t sub_251FF7F28(void *a1)
{
  v2 = sub_2520046A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2520042A0();
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  swift_allocObject();
  sub_252004360();
  v17 = a1;
  sub_252004310();

  v18 = a1;
  sub_252004620();
  v11 = type metadata accessor for HearingAidSettingsViewController();
  sub_251FEAB30(v6);
  (*(v3 + 8))(v6, v2);
  v19 = v11;
  v18 = a1;
  v12 = a1;
  sub_252004290();
  sub_252004320();

  (*(v7 + 8))(v10, v16);
  sub_252004330();

  v13 = sub_252004350();

  return v13;
}

void sub_251FF81F0(void *a1, uint64_t a2)
{
  v4 = sub_2520046A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = a2;
  sub_252004620();
  type metadata accessor for HearingAidSettingsViewController();
  sub_251FEAB30(v8);
  (*(v5 + 8))(v8, v4);
  v9 = sub_2520046B0();

  [a1 setProperty:v9 forKey:*MEMORY[0x277D3FF88]];
}

uint64_t (*sub_251FF836C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FF7F08();
  return sub_251FF83B4;
}

uint64_t sub_251FF83E0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_251FF8448(void *a1)
{
  v2 = sub_2520046A0();
  v21 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2520042A0();
  v8 = *(v7 - 8);
  v23 = v7;
  v24 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  swift_allocObject();
  sub_252004360();
  v25 = a1;
  sub_252004620();
  v12 = type metadata accessor for HearingAidSettingsViewController();
  sub_251FEAB30(v6);
  v13 = *(v3 + 8);
  v20[1] = v3 + 8;
  v22 = v13;
  v13(v6, v2);
  v26 = v12;
  v25 = a1;
  v14 = a1;
  sub_252004290();
  sub_252004320();

  v15 = v23;
  v16 = *(v24 + 8);
  v24 += 8;
  v16(v11, v23);
  v25 = v14;
  sub_252004620();
  sub_251FEAB30(v6);
  v22(v6, v21);
  v26 = v12;
  v25 = v14;
  v17 = v14;
  sub_252004290();
  sub_252004320();

  v16(v11, v15);
  v18 = sub_252004350();

  return v18;
}

uint64_t (*sub_251FF87FC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FF83C0();
  return sub_251FF8844;
}

void *sub_251FF8850()
{
  v1 = v0;
  v40 = sub_2520042A0();
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v2);
  v39 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252004680();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = sub_2520046A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v47 = v0;
  sub_252004620();
  v11 = type metadata accessor for HearingAidSettingsViewController();
  v37 = sub_251FEAC98(v10, "This is appended at the end of a string Hearing Aid is only intended for people with perceived mild to moderate hearing loss", 126, 2u);
  v41 = v12;
  v13 = *(v7 + 8);
  v13(v10, v6);
  *&v47 = v0;
  sub_252004670();
  v14 = sub_252004660();
  sub_251FF6CF8(v14, v15);
  sub_252004640();

  sub_252004660();
  v16 = v11;
  sub_252004690();
  v17 = sub_251FEAB30(v10);
  v19 = v18;
  v13(v10, v6);
  *&v47 = v0;
  sub_252004620();
  sub_251FEAB30(v10);
  v38 = v13;
  v35[1] = v7 + 8;
  v13(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  swift_allocObject();
  sub_252004360();
  v42 = v17;
  v43 = v19;
  v44 = v37;
  v45 = v41;
  v46 = v0;
  sub_252004310();

  result = sub_251FF6DB8();
  if (result)
  {
    v21 = result;
    v22 = sub_252003E60();

    LODWORD(v21) = sub_252004080();
    if (!v21)
    {

      *&v47 = v1;
      sub_252004620();
      sub_251FEAB30(v10);
      v38(v10, v6);
      *(&v48 + 1) = v16;
      *&v47 = v1;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = v1;
      v34 = v39;
      sub_252004290();
      sub_252004340();
      (*(v36 + 8))(v34, v40);
      v32 = sub_252004350();

LABEL_8:

      return v32;
    }

    *&v47 = v1;
    sub_252004620();
    v35[0] = v16;
    sub_251FEAB30(v10);
    v37 = v6;
    v38(v10, v6);
    v47 = 0u;
    v48 = 0u;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = v39;
    sub_252004290();
    sub_252004340();

    v24 = *(v36 + 8);
    v24(v23, v40);
    result = sub_251FF6DB8();
    if (result)
    {
      v25 = result;

      v26 = sub_252003E60();

      LODWORD(v25) = sub_252004080();
      if (v25 == 1)
      {
        *&v47 = v1;
        sub_252004620();
        v27 = v35[0];
        sub_251FEAB30(v10);
        v38(v10, v37);
        *(&v48 + 1) = v27;
        *&v47 = v1;
        type metadata accessor for HearingAidTuningVoiceEntertainmentController(0, v28);
        v1;
        v29 = v39;
        sub_252004290();
        sub_252004320();
        v30 = (v24)(v29, v40);
        MEMORY[0x28223BE20](v30, v31);
        sub_252004330();
      }

      v32 = sub_252004350();
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_251FF9044()
{
  v1 = v0;
  v2 = sub_2520046A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2520042A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_251FF6DB8();
  if (result)
  {
    v13 = result;
    v14 = sub_252003E60();

    LODWORD(v13) = sub_252004080();
    if (!v13)
    {
      return MEMORY[0x277D84F90];
    }

    result = sub_251FF6DB8();
    if (result)
    {
      v15 = result;
      v16 = sub_252003E50();

      v17 = [v16 firmwareVersion];
      v24 = v8;
      v25 = v7;
      if (v17)
      {
        v23 = sub_2520046E0();
      }

      else
      {
        v23 = 0;
      }

      v22 = (*((*MEMORY[0x277D85000] & *v1) + 0x158))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
      swift_allocObject();
      sub_252004360();
      v26 = v1;
      sub_252004620();
      v19 = type metadata accessor for HearingAidSettingsViewController();
      sub_251FEAB30(v6);
      (*(v3 + 8))(v6, v2);
      v27 = v19;
      v26 = v1;
      sub_251FD6770(0, &qword_27F4C7188, off_2796F1698);
      v1;
      sub_252004290();
      sub_252004320();

      v20 = (*(v24 + 8))(v11, v25);
      MEMORY[0x28223BE20](v20, v21);
      sub_252004330();

      v18 = sub_252004350();

      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_251FF9424()
{
  result = sub_251FF6DB8();
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v1 = result;
  v2 = sub_252003E60();

  LODWORD(v1) = sub_252004140();
  if (v1 != 2)
  {
    return 1;
  }

  result = sub_251FF6DB8();
  if (!result)
  {
    goto LABEL_9;
  }

  v3 = result;
  v4 = sub_252003E60();

  LODWORD(v3) = sub_252004110();
  if (v3 == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_251FF94C4()
{
  v1 = sub_2520043D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252004920();
  v128 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v127 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6900, &qword_2520073C0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v126 = &v102 - v11;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7190, &unk_252008950);
  MEMORY[0x28223BE20](v119, v12);
  v118 = &v102 - v13;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E48, &qword_252007E90);
  v15 = MEMORY[0x28223BE20](v117, v14);
  v116 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = MEMORY[0x28223BE20](v18, v19);
  MEMORY[0x28223BE20](v20, v21);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7198, &qword_252008960);
  MEMORY[0x28223BE20](v111, v22);
  v108 = &v102 - v23;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C71A0, &qword_252008968);
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114, v24);
  v109 = &v102 - v25;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C71A8, &qword_252008970);
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v26);
  v110 = &v102 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C71B0, &qword_252008978);
  v121 = *(v28 - 8);
  v122 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v120 = &v102 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C71B8, &unk_252008980);
  v124 = *(v31 - 8);
  v125 = v31;
  MEMORY[0x28223BE20](v31, v32);
  v123 = &v102 - v33;
  v34 = [v0 specifier];
  if (!v34)
  {
    __break(1u);
    goto LABEL_37;
  }

  v35 = v34;
  v36 = [v34 userInfo];

  if (v36)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v131 = 0u;
    v132 = 0u;
  }

  v37 = v1;
  v133 = v131;
  v134 = v132;
  if (!*(&v132 + 1))
  {
    goto LABEL_28;
  }

  sub_251FD6770(0, &qword_27F4C69C0, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_29;
  }

  v106 = v6;
  v38 = v130;
  v39 = sub_2520046B0();
  v107 = v38;
  v40 = [v38 objectForKey_];

  if (v40)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v131 = 0u;
    v132 = 0u;
  }

  v133 = v131;
  v134 = v132;
  v37 = v1;
  if (!*(&v132 + 1))
  {

LABEL_28:
    sub_251FC6470(&v133, &qword_27F4C69B0, &unk_252007A00);
    goto LABEL_29;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_29;
  }

  v105 = v130;
  v41 = sub_2520046B0();
  v42 = v107;
  v43 = [v107 objectForKey_];

  if (v43)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v131 = 0u;
    v132 = 0u;
  }

  v133 = v131;
  v134 = v132;
  v37 = v1;
  if (!*(&v132 + 1))
  {

    goto LABEL_28;
  }

  sub_251FD6770(0, &qword_27F4C70A0, 0x277D12B98);
  if (swift_dynamicCast())
  {
    v104 = v0;
    v103 = v130;
    sub_252003F10();
    v44 = sub_252003EF0();
    v133 = v105;
    *&v131 = 58;
    *(&v131 + 1) = 0xE100000000000000;
    *&v130 = 45;
    *(&v130 + 1) = 0xE100000000000000;
    sub_251FD671C();
    v102 = sub_2520049E0();
    v46 = v45;
    v47 = v44;
    v48 = sub_252003EE0();

    if (*(v48 + 16))
    {
      v102 = sub_251FD4318(v102, v46);
      v50 = v49;

      if (v50)
      {
        v51 = *(*(v48 + 56) + 8 * v102);

        v52 = v104;
        v53 = *(v104 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__hmsClient);
        v54 = v103;
        *(v104 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__hmsClient) = v103;
        v55 = v54;

        v56 = *(v52 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__headphoneDevice);
        *(v52 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__headphoneDevice) = v51;
        v57 = v51;

        v58 = (v52 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController_address);
        v59 = *(&v105 + 1);
        *v58 = v105;
        v58[1] = v59;

        v60 = sub_251FF6DB8();
        if (v60)
        {
          v61 = v60;
          v62 = sub_252003E60();

          sub_2520040E0();
          v63 = sub_251FF6DB8();
          if (v63)
          {
            v64 = v63;
            *&v105 = v57;
            v65 = sub_252003E60();

            sub_252003FE0();
            v66 = sub_251FF6DB8();
            if (v66)
            {
              v67 = v66;
              v68 = sub_252003E60();

              sub_252003FF0();
              sub_251FD67B8(&qword_27F4C71C0, &qword_27F4C6E48, &qword_252007E90, MEMORY[0x277D0FB98]);
              sub_252004460();
              v69 = sub_251FF6DB8();
              if (v69)
              {
                v70 = v69;
                v103 = v55;
                v71 = sub_252003E60();

                sub_2520040B0();
                v72 = sub_251FF6DB8();
                if (v72)
                {
                  v73 = v72;

                  sub_252003E30();

                  sub_252004280();

                  v74 = MEMORY[0x277CBCAF8];
                  sub_251FD67B8(&qword_27F4C71C8, &qword_27F4C7198, &qword_252008960, MEMORY[0x277CBCAF8]);
                  sub_251FD67B8(&qword_27F4C71D0, &qword_27F4C7190, &unk_252008950, MEMORY[0x277D0FB98]);
                  v75 = v109;
                  sub_252004460();
                  sub_251FD67B8(&qword_27F4C71D8, &qword_27F4C71A0, &qword_252008968, v74);
                  v76 = v110;
                  v77 = v114;
                  sub_252004560();
                  (*(v112 + 8))(v75, v77);
                  sub_251FD67B8(&qword_27F4C71E0, &qword_27F4C71A8, &qword_252008970, MEMORY[0x277CBCC18]);
                  v78 = v115;
                  v79 = sub_252004520();
                  (*(v113 + 8))(v76, v78);
                  *&v133 = v79;
                  sub_251FD6770(0, &qword_27F4C6928, 0x277D85C78);
                  v80 = sub_252004940();
                  *&v131 = v80;
                  v81 = sub_252004900();
                  v119 = *(*(v81 - 8) + 56);
                  v82 = v126;
                  v119(v126, 1, 1, v81);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C71E8, &unk_252008990);
                  sub_251FD67B8(&qword_27F4C71F0, &qword_27F4C71E8, &unk_252008990, MEMORY[0x277CBCD90]);
                  sub_251FD3B60();
                  v83 = v120;
                  sub_252004540();
                  sub_251FC6470(v82, &qword_27F4C6900, &qword_2520073C0);

                  v84 = v127;
                  sub_252004910();
                  v85 = sub_252004940();
                  *&v133 = v85;
                  v119(v82, 1, 1, v81);
                  sub_251FD67B8(&qword_27F4C71F8, &qword_27F4C71B0, &qword_252008978, MEMORY[0x277CBCD60]);
                  v86 = v122;
                  v87 = v123;
                  sub_252004550();
                  sub_251FC6470(v82, &qword_27F4C6900, &qword_2520073C0);

                  (*(v128 + 8))(v84, v106);
                  (*(v121 + 8))(v83, v86);
                  swift_allocObject();
                  v88 = v104;
                  swift_unknownObjectWeakInit();
                  sub_251FD67B8(&qword_27F4C7200, &qword_27F4C71B8, &unk_252008980, MEMORY[0x277CBCCF8]);
                  v89 = v125;
                  sub_252004580();

                  (*(v124 + 8))(v87, v89);
                  v90 = (*((*MEMORY[0x277D85000] & *v88) + 0x100))(&v133);
                  sub_252004480();

                  v90(&v133, 0);
                  v91 = type metadata accessor for HearingAidSettingsViewController();
                  v129.receiver = v88;
                  v129.super_class = v91;
                  objc_msgSendSuper2(&v129, sel_viewDidLoad);

                  return;
                }

                goto LABEL_41;
              }

LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
              return;
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
    }

    v37 = v1;
  }

  else
  {
  }

LABEL_29:
  v92 = sub_251FDFB88();
  (*(v2 + 16))(v5, v92, v37);
  v93 = sub_2520043B0();
  v94 = sub_2520048B0();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *&v133 = v96;
    *v95 = 136315650;
    *(v95 + 4) = sub_251FC55E0(0x4C64694477656976, 0xED0000292864616FLL, &v133);
    *(v95 + 12) = 2048;
    *(v95 + 14) = 214;
    *(v95 + 22) = 2080;
    sub_252003F10();
    v97 = sub_252003EF0();
    sub_252003EE0();

    sub_252003EC0();
    v98 = sub_252004610();
    v100 = v99;

    v101 = sub_251FC55E0(v98, v100, &v133);

    *(v95 + 24) = v101;
    _os_log_impl(&dword_251FB5000, v93, v94, "%s: %ld Dependencies not meet! %s", v95, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253097030](v96, -1, -1);
    MEMORY[0x253097030](v95, -1, -1);
  }

  (*(v2 + 8))(v5, v37);
}