void sub_269049CAC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_269049D18(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  v5 = 0xD000000000000022;
  v6 = 0x800000026905F990;
  if (a1)
  {
    sub_269057C54();

    swift_getErrorValue();
    v7 = sub_269057E44();
    MEMORY[0x26D62FBC0](v7);

    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v8 = sub_269057774();
    __swift_project_value_buffer(v8, qword_2802F3FF8);
    v9 = sub_269057A94();
    v26 = 0xD000000000000022;
    v27 = 0x800000026905F990;
    v10 = (0x800000026905FA90 >> 56) & 0xF;
    if ((0x800000026905FA90 & 0x2000000000000000) == 0)
    {
      v10 = 28;
    }

    if (v10)
    {
      v25[0] = 32;
      v25[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD00000000000001CLL, 0x800000026905FA90);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v5 = v26;
      v6 = v27;
    }

    v11 = sub_269057764();
    if (os_log_type_enabled(v11, v9))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25[0] = v13;
      *v12 = 136315138;
      v14 = sub_269010108(v5, v6, v25);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_269002000, v11, v9, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x26D6309D0](v13, -1, -1);
      MEMORY[0x26D6309D0](v12, -1, -1);
    }

    else
    {
    }

    v22 = 0;
    v23 = 0;
  }

  else
  {
    v26 = a2;
    v27 = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
    v17 = sub_269057964();
    v19 = v18;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v20 = sub_269057774();
    __swift_project_value_buffer(v20, qword_2802F3FF8);
    v21 = sub_269057AA4();
    sub_269053434(v21, 0xD000000000000022, 0x800000026905F990, 0xD000000000000017, 0x800000026905FA70, v17, v19);

    v22 = a2;
    v23 = a3;
  }

  return a4(v22, v23);
}

uint64_t sub_26904A03C(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = 0xE000000000000000;
  sub_269057C54();

  if (a1)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (a1)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x26D62FBC0](v7, v8);

  MEMORY[0x26D62FBC0](0xD000000000000014, 0x800000026905FA20);
  v9 = *(a2 + OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID + 8);
  if (v9)
  {
    v10 = *(a2 + OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID);
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v6 = v9;
  }

  MEMORY[0x26D62FBC0](v10, v6);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v11 = sub_269057774();
  __swift_project_value_buffer(v11, qword_2802F3FF8);
  v12 = sub_269057AA4();
  sub_269053434(v12, 0xD000000000000028, 0x800000026905FA40, 0xD00000000000001BLL, 0x800000026905FA00, 0, 0xE000000000000000);

  return a3(a1 & 1);
}

void sub_26904A204(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC9SiriSetup8Defaults_internalSiriDataSharingStatus) = a1;
  if (a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC9SiriSetup8Defaults_settingsQueue);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_26904FA00;
    *(v4 + 24) = v3;
    v20 = sub_26904FA18;
    v21 = v4;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_26904AAC0;
    v19 = &block_descriptor_98;
    v5 = _Block_copy(&aBlock);
    v6 = v2;

    dispatch_sync(v6, v5);

    _Block_release(v5);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if ((v5 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v7 = 0x800000026905BBC0;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v8 = 0xD000000000000015;
  v9 = sub_269057774();
  __swift_project_value_buffer(v9, qword_2802F3FF8);
  v10 = sub_269057A94();
  aBlock = 0xD000000000000015;
  v17 = 0x800000026905BBC0;
  if ((" for language code " & 0x2F00000000000000) != 0x2000000000000000)
  {
    v15[0] = 32;
    v15[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD00000000000003FLL, 0x800000026905F7C0);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v8 = aBlock;
    v7 = v17;
  }

  v11 = sub_269057764();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15[0] = v13;
    *v12 = 136315138;
    v14 = sub_269010108(v8, v7, v15);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_269002000, v11, v10, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D6309D0](v13, -1, -1);
    MEMORY[0x26D6309D0](v12, -1, -1);
  }

  else
  {
  }
}

void sub_26904A500(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC9SiriSetup8Defaults_internalSiriDataSharingStatus);
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9SiriSetup8Defaults_settings);
    v5 = sub_269057944();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    aBlock[4] = sub_26904FA78;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_269049CAC;
    aBlock[3] = &block_descriptor_104;
    v7 = _Block_copy(aBlock);
    v8 = v3;

    [v4 setSiriDataSharingOptInStatus:v2 propagateToHomeAccessories:0 source:1 reason:v5 completion:v7];
    _Block_release(v7);
  }
}

void sub_26904A66C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    sub_269057C54();
    MEMORY[0x26D62FBC0](0x1000000000000039, 0x800000026905F840);
    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3FA0, &qword_26905B5C0);
    sub_269057CB4();
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v4 = sub_269057774();
    __swift_project_value_buffer(v4, qword_2802F3FF8);
    v5 = sub_269057A94();
    v18 = 0xD000000000000015;
    v19 = 0x800000026905BBC0;
    v6 = sub_269057764();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      v9 = sub_269010108(0xD000000000000015, 0x800000026905BBC0, &v17);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_269002000, v6, v5, "%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D6309D0](v8, -1, -1);
      MEMORY[0x26D6309D0](v7, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_269057C54();
    MEMORY[0x26D62FBC0](0x1000000000000031, 0x800000026905F800);
    v17 = *(a2 + OBJC_IVAR____TtC9SiriSetup8Defaults_internalSiriDataSharingStatus);
    type metadata accessor for AFSiriDataSharingOptInStatus(0);
    sub_269057CB4();
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v11 = sub_269057774();
    __swift_project_value_buffer(v11, qword_2802F3FF8);
    v12 = sub_269057AA4();
    v18 = 0xD000000000000015;
    v19 = 0x800000026905BBC0;
    v13 = sub_269057764();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      v16 = sub_269010108(0xD000000000000015, 0x800000026905BBC0, &v17);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_269002000, v13, v12, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x26D6309D0](v15, -1, -1);
      MEMORY[0x26D6309D0](v14, -1, -1);
    }

    else
    {
    }
  }
}

void sub_26904AAE8(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = Strong;
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC9SiriSetup8Defaults_settings);

    aBlock[4] = sub_26904FB38;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26904B07C;
    aBlock[3] = &block_descriptor_129;
    v7 = _Block_copy(aBlock);

    [v6 getSiriDataSharingOptInStatusWithCompletion_];
    _Block_release(v7);
  }

  *a2 = v5 == 0;
}

void sub_26904AC0C(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a1;
    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD000000000000039, 0x800000026905FB30);
    v20[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3FA0, &qword_26905B5C0);
    sub_269057CB4();
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v5 = sub_269057774();
    __swift_project_value_buffer(v5, qword_2802F3FF8);
    v6 = sub_269057A94();
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000026905FAD0;
    v7 = sub_269057764();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20[0] = v9;
      *v8 = 136315138;
      v10 = sub_269010108(0xD00000000000001CLL, 0x800000026905FAD0, v20);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_269002000, v7, v6, "%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D6309D0](v9, -1, -1);
      MEMORY[0x26D6309D0](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *&Strong[OBJC_IVAR____TtC9SiriSetup8Defaults_internalSiriDataSharingStatus] = a2;
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD000000000000031, 0x800000026905FAF0);
    v19 = a2;
    type metadata accessor for AFSiriDataSharingOptInStatus(0);
    sub_269057CB4();
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v13 = sub_269057774();
    __swift_project_value_buffer(v13, qword_2802F3FF8);
    v14 = sub_269057AA4();
    v20[0] = 0xD00000000000001CLL;
    v20[1] = 0x800000026905FAD0;
    v15 = sub_269057764();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315138;
      v18 = sub_269010108(0xD00000000000001CLL, 0x800000026905FAD0, &v19);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_269002000, v15, v14, "%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x26D6309D0](v17, -1, -1);
      MEMORY[0x26D6309D0](v16, -1, -1);
    }

    else
    {
    }
  }
}

void sub_26904B07C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

void sub_26904B0F4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*a1 == 2)
  {

LABEL_4:
    v7 = 2;
    goto LABEL_6;
  }

  v6 = sub_269057DE4();

  if (v6)
  {
    goto LABEL_4;
  }

  v7 = 1;
LABEL_6:
  v22 = v7;
  v8 = sub_26904ED24();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD000000000000035, 0x800000026905F700);
  v10 = MEMORY[0x26D62FC10](v9, MEMORY[0x277D837D0]);
  MEMORY[0x26D62FBC0](v10);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v11 = sub_269057774();
  __swift_project_value_buffer(v11, qword_2802F3FF8);
  v12 = sub_269057AA4();
  aBlock = 0xD000000000000028;
  v25 = 0x800000026905F6D0;
  v13 = sub_269057764();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 136315138;
    v16 = sub_269010108(0xD000000000000028, 0x800000026905F6D0, &v30);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_269002000, v13, v12, "%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x26D6309D0](v15, -1, -1);
    MEMORY[0x26D6309D0](v14, -1, -1);
  }

  else
  {
  }

  v17 = *&v4[OBJC_IVAR____TtC9SiriSetup8Defaults_enablementFlowConfigurationProvider];
  v18 = sub_2690579C4();

  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = a2;
  v19[4] = a3;
  v28 = sub_26904F950;
  v29 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_26904BBEC;
  v27 = &block_descriptor_9;
  v20 = _Block_copy(&aBlock);
  v21 = v4;

  [v17 configurationForEnablementFlow:v22 recognitionLanguageCodes:v18 completion:v20];
  _Block_release(v20);
}

uint64_t sub_26904B504(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_269057874();
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2690578A4();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26900A408(0, &qword_2802F3E00, 0x277D85C78);
  v13 = sub_269057B34();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = sub_26904F9F4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_91;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  sub_269057884();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_269048D88(&qword_2802F3420, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_26904FA88(&qword_2802F3430, &unk_2802F3E10, &unk_269059E90, MEMORY[0x277D83970]);
  sub_269057C14();
  MEMORY[0x26D62FD80](0, v12, v9, v16);
  _Block_release(v16);

  (*(v20 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v19);
}

void sub_26904B834(uint64_t a1, void *a2, void (*a3)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v27 = a3;
    if (qword_2802F3220 != -1)
    {
      swift_once();
    }

    v7 = [objc_opt_self() sharedPreferences];
    v8 = [v7 languageCode];

    if (v8)
    {
      v9 = sub_269057954();
      v11 = v10;
    }

    else
    {
      v9 = sub_26904EF14();
      v11 = v12;
    }

    v13 = *&v6[OBJC_IVAR____TtC9SiriSetup8Defaults_enablementConfiguration];
    *&v6[OBJC_IVAR____TtC9SiriSetup8Defaults_enablementConfiguration] = a2;
    v14 = a2;

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002FLL, 0x800000026905F770);
    v15 = [v14 description];
    v16 = sub_269057954();
    v18 = v17;

    MEMORY[0x26D62FBC0](v16, v18);

    MEMORY[0x26D62FBC0](0xD000000000000013, 0x800000026905F7A0);
    MEMORY[0x26D62FBC0](v9, v11);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v19 = sub_269057774();
    __swift_project_value_buffer(v19, qword_2802F3FF8);
    v20 = sub_269057AA4();
    v28[2] = 0xD000000000000028;
    v28[3] = 0x800000026905F6D0;
    v21 = sub_269057764();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28[0] = v23;
      *v22 = 136315138;
      v24 = sub_269010108(0xD000000000000028, 0x800000026905F6D0, v28);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_269002000, v21, v20, "%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x26D6309D0](v23, -1, -1);
      MEMORY[0x26D6309D0](v22, -1, -1);
    }

    else
    {
    }

    v25 = sub_269057944();

    v26 = [v14 requiresVoiceSelectionForRecognitionLanguage_];

    v27(v26);
  }
}

void sub_26904BBEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_26904BC54(uint64_t a1)
{
  v2 = sub_26904ED24();
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR____TtC9SiriSetup8Defaults_voiceTriggerPrefs;
    v5 = v2 + 40;
    v6 = -*(v2 + 16);
    v7 = -1;
    while (1)
    {
      if (v6 + v7 == -1)
      {
LABEL_6:

        return;
      }

      if (++v7 >= *(v3 + 16))
      {
        break;
      }

      v8 = v5 + 16;
      v9 = *(v1 + v4);

      v10 = v9;
      v11 = sub_269057944();

      v12 = [v10 isCompactVoiceTriggerAvailableForLanguageCode_];

      v5 = v8;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

char *sub_26904BD48(char *a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v73 = a3;
  v72 = a2;
  v6 = sub_269057B24();
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x28223BE20](v6);
  v78 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_269057B04();
  MEMORY[0x28223BE20](v76);
  v77 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2690578A4();
  MEMORY[0x28223BE20](v9 - 8);
  v75 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = &v4[OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v4[OBJC_IVAR____TtC9SiriSetup8Defaults_siriSharedUserId];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v4[OBJC_IVAR____TtC9SiriSetup8Defaults_personaId];
  *v14 = 0;
  v14[1] = 0;
  v4[OBJC_IVAR____TtC9SiriSetup8Defaults_hasVoiceProfileInCloud] = 0;
  v15 = OBJC_IVAR____TtC9SiriSetup8Defaults_localDataSource;
  v16 = type metadata accessor for LocalDataSource();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_personaId];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_iCloudAltDSID];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriSharedUserId];
  *v20 = 0;
  v20[1] = 0;
  v21 = OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguageOptions;
  *&v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguageOptions] = 0;
  v22 = &v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_languageCode];
  *v22 = 0;
  v22[1] = 0;
  v23 = OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice;
  *&v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice] = 0;
  v24 = &v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVolume];
  *v24 = 0;
  v24[4] = 1;
  v25 = &v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguage];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC9SiriSetup15LocalDataSource_overrideViewStyle;
  v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_overrideViewStyle] = 3;
  *v22 = 0;
  v22[1] = 0;
  v27 = &v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_bestSupportedLanguageCode];
  *v27 = 0x53552D6E65;
  v27[1] = 0xE500000000000000;
  v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_enrollmentMode] = 0;
  *&v17[v21] = 0;
  v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_canSkipVoiceTraining] = 0;
  v17[v26] = 3;
  v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_isSATEnrolled] = 0;
  v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_isFirstTimeSetup] = 0;
  v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_hasVoiceProfileInCloud] = 0;
  v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriEnabled] = 0;
  v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_setupDismissed] = 0;
  v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_recognizeMyVoiceEnabled] = 0;
  v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_voiceTriggerEnabled] = 0;
  v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriInCallEnabled] = 0;
  *&v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriDataSharingStatus] = 0;
  v28 = *&v17[v23];
  *&v17[v23] = 0;

  *v24 = 0;
  v24[4] = 1;
  v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_requiresVoiceSelection] = 0;
  v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_requiresLanguageSelection] = 0;
  v17[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_showMultitriggerForSetup] = 1;
  v90.receiver = v17;
  v90.super_class = v16;
  *&v4[v15] = objc_msgSendSuper2(&v90, sel_init);
  v4[OBJC_IVAR____TtC9SiriSetup8Defaults_setupDismissed] = 0;
  *&v4[OBJC_IVAR____TtC9SiriSetup8Defaults_enablementConfiguration] = 0;
  *&v4[OBJC_IVAR____TtC9SiriSetup8Defaults_internalSiriDataSharingStatus] = 0;
  v4[OBJC_IVAR____TtC9SiriSetup8Defaults_shouldShowIntro] = 1;
  v74 = "Error setting voice trigger to ";
  aBlock = 0;
  v82 = 0xE000000000000000;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000001ALL, 0x800000026905F930);
  v29 = v11;
  LOBYTE(v87) = v11;
  sub_269057CB4();
  MEMORY[0x26D62FBC0](0xD000000000000013, 0x800000026905F950);
  v30 = aBlock;
  v31 = v82;
  v32 = v72;
  aBlock = v72;
  v82 = v73;
  v33 = v73;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
  v34 = sub_269057964();
  v36 = v35;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v37 = sub_269057774();
  v38 = __swift_project_value_buffer(v37, qword_2802F3FF8);
  v39 = sub_269057AA4();
  v40 = v74 | 0x8000000000000000;
  v74 = v38;
  sub_269053434(v39, 0xD000000000000019, v40, v30, v31, v34, v36);

  v4[OBJC_IVAR____TtC9SiriSetup8Defaults_enrollmentMode] = v29;
  *v12 = v32;
  v12[1] = v33;

  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v41 = [objc_allocWithZone(MEMORY[0x277CEF3A8]) init];
  *&v4[OBJC_IVAR____TtC9SiriSetup8Defaults_settings] = v41;
  sub_26900A408(0, &qword_2802F3E00, 0x277D85C78);
  sub_269057884();
  aBlock = MEMORY[0x277D84F90];
  sub_269048D88(&qword_2802F39B0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F39B8, &qword_26905A8E8);
  sub_26904FA88(&qword_2802F39C0, &qword_2802F39B8, &qword_26905A8E8, MEMORY[0x277D83970]);
  sub_269057C14();
  (*(v79 + 104))(v78, *MEMORY[0x277D85260], v80);
  v42 = 0xD000000000000022;
  *&v4[OBJC_IVAR____TtC9SiriSetup8Defaults_settingsQueue] = sub_269057B74();
  v43 = &v4[OBJC_IVAR____TtC9SiriSetup8Defaults_siriVolume];
  *v43 = 0;
  v43[4] = 1;
  v44 = [objc_allocWithZone(SRSVoiceProfileManager) init];
  *&v4[OBJC_IVAR____TtC9SiriSetup8Defaults_voiceProfileManager] = v44;
  v45 = [objc_allocWithZone(SRSVTPreferences) init];
  *&v4[OBJC_IVAR____TtC9SiriSetup8Defaults_voiceTriggerPrefs] = v45;
  v46 = [objc_allocWithZone(MEMORY[0x277CEF298]) init];
  *&v4[OBJC_IVAR____TtC9SiriSetup8Defaults_enablementFlowConfigurationProvider] = v46;
  v47 = type metadata accessor for Defaults();
  v89.receiver = v4;
  v89.super_class = v47;
  v48 = objc_msgSendSuper2(&v89, sel_init);
  v49 = *&v48[OBJC_IVAR____TtC9SiriSetup8Defaults_settingsQueue];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = v48;
  v51 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3FB0, &unk_26905B5D0);
  sub_269057B44();

  sub_2690493A8();
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  v53 = 0x800000026905F990;
  v54 = v50;
  v55 = sub_269057A84();
  aBlock = 0xD000000000000022;
  v82 = 0x800000026905F990;
  if (("serId(completion:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v87 = 32;
    v88 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000029, 0x800000026905F9C0);
    MEMORY[0x26D62FBC0](v87, v88);

    v42 = aBlock;
    v53 = v82;
  }

  v56 = sub_269057764();
  if (os_log_type_enabled(v56, v55))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v87 = v58;
    *v57 = 136315138;
    v59 = sub_269010108(v42, v53, &v87);

    *(v57 + 4) = v59;
    _os_log_impl(&dword_269002000, v56, v55, "%s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x26D6309D0](v58, -1, -1);
    MEMORY[0x26D6309D0](v57, -1, -1);
  }

  else
  {
  }

  v60 = *&v54[OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID + 8];
  if (v60)
  {
    v61 = *&v54[OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID];
  }

  else
  {
    v61 = 0;
  }

  if (v60)
  {
    v62 = *&v54[OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID + 8];
  }

  else
  {
    v62 = 0xE000000000000000;
  }

  sub_26900A408(0, &qword_2802F3E28, 0x277CEF318);
  v63 = swift_allocObject();
  *(v63 + 16) = sub_26904FC24;
  *(v63 + 24) = v52;

  sub_269014FD0(v61, v62, sub_26904FB24, v63);

  v64 = swift_allocObject();
  *(v64 + 16) = v54;
  v65 = *&v54[OBJC_IVAR____TtC9SiriSetup8Defaults_settings];
  v66 = swift_allocObject();
  v66[2] = v54;
  v66[3] = sub_26904FC44;
  v66[4] = v64;
  v85 = sub_26904FB2C;
  v86 = v66;
  aBlock = MEMORY[0x277D85DD0];
  v82 = 1107296256;
  v83 = sub_2690277C8;
  v84 = &block_descriptor_126;
  v67 = _Block_copy(&aBlock);
  v68 = v54;
  v69 = v65;

  [v69 fetchMultiUserVoiceIdentificationSetting_];
  _Block_release(v67);

  return v68;
}

char *sub_26904C870(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v107 = a2;
  v108 = a3;
  v8 = sub_269057B24();
  v113 = *(v8 - 8);
  v114 = v8;
  MEMORY[0x28223BE20](v8);
  v112 = &v105[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v110 = sub_269057B04();
  MEMORY[0x28223BE20](v110);
  v111 = &v105[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_2690578A4();
  MEMORY[0x28223BE20](v11 - 8);
  v109 = &v105[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v106 = *a1;
  v13 = &v5[OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v5[OBJC_IVAR____TtC9SiriSetup8Defaults_siriSharedUserId];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v5[OBJC_IVAR____TtC9SiriSetup8Defaults_personaId];
  *v15 = 0;
  v15[1] = 0;
  v5[OBJC_IVAR____TtC9SiriSetup8Defaults_hasVoiceProfileInCloud] = 0;
  v16 = OBJC_IVAR____TtC9SiriSetup8Defaults_localDataSource;
  v17 = type metadata accessor for LocalDataSource();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_personaId];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_iCloudAltDSID];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriSharedUserId];
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguageOptions;
  *&v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguageOptions] = 0;
  v23 = &v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_languageCode];
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice;
  *&v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice] = 0;
  v25 = &v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVolume];
  *v25 = 0;
  v25[4] = 1;
  v26 = &v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguage];
  *v26 = 0;
  v26[1] = 0;
  v27 = OBJC_IVAR____TtC9SiriSetup15LocalDataSource_overrideViewStyle;
  v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_overrideViewStyle] = 3;
  *v23 = 0;
  v23[1] = 0;
  v28 = &v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_bestSupportedLanguageCode];
  *v28 = 0x53552D6E65;
  v28[1] = 0xE500000000000000;
  v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_enrollmentMode] = 0;
  *&v18[v22] = 0;
  v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_canSkipVoiceTraining] = 0;
  v18[v27] = 3;
  v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_isSATEnrolled] = 0;
  v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_isFirstTimeSetup] = 0;
  v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_hasVoiceProfileInCloud] = 0;
  v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriEnabled] = 0;
  v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_setupDismissed] = 0;
  v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_recognizeMyVoiceEnabled] = 0;
  v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_voiceTriggerEnabled] = 0;
  v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriInCallEnabled] = 0;
  *&v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriDataSharingStatus] = 0;
  v29 = *&v18[v24];
  *&v18[v24] = 0;

  *v25 = 0;
  v25[4] = 1;
  v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_requiresVoiceSelection] = 0;
  v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_requiresLanguageSelection] = 0;
  v18[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_showMultitriggerForSetup] = 1;
  v129.receiver = v18;
  v129.super_class = v17;
  *&v5[v16] = objc_msgSendSuper2(&v129, sel_init);
  v5[OBJC_IVAR____TtC9SiriSetup8Defaults_setupDismissed] = 0;
  *&v5[OBJC_IVAR____TtC9SiriSetup8Defaults_enablementConfiguration] = 0;
  *&v5[OBJC_IVAR____TtC9SiriSetup8Defaults_internalSiriDataSharingStatus] = 0;
  v5[OBJC_IVAR____TtC9SiriSetup8Defaults_shouldShowIntro] = 1;
  v30 = 0x800000026905FB70;
  aBlock = 0;
  v121 = 0xE000000000000000;
  sub_269057C54();

  aBlock = 0xD000000000000022;
  v121 = 0x800000026905FBA0;
  v118 = a4;
  v115 = a4;
  v117 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3540, &qword_269059F68);
  v31 = sub_269057964();
  MEMORY[0x26D62FBC0](v31);

  v33 = aBlock;
  v32 = v121;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v34 = sub_269057774();
  v116 = __swift_project_value_buffer(v34, qword_2802F3FF8);
  v35 = sub_269057AA4();
  v36 = 0xD000000000000020;
  aBlock = 0xD000000000000020;
  v121 = 0x800000026905FB70;
  v37 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v37 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    v118 = 32;
    v119 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v33, v32);
    MEMORY[0x26D62FBC0](v118, v119);

    v36 = aBlock;
    v30 = v121;
  }

  v38 = sub_269057764();
  if (os_log_type_enabled(v38, v35))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v118 = v40;
    *v39 = 136315138;
    v41 = sub_269010108(v36, v30, &v118);

    *(v39 + 4) = v41;
    _os_log_impl(&dword_269002000, v38, v35, "%s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x26D6309D0](v40, -1, -1);
    MEMORY[0x26D6309D0](v39, -1, -1);
  }

  else
  {
  }

  v42 = v115;
  v5[OBJC_IVAR____TtC9SiriSetup8Defaults_enrollmentMode] = v106;
  v43 = v108;
  *v13 = v107;
  v13[1] = v43;

  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v44 = [objc_allocWithZone(MEMORY[0x277CEF3A8]) init];
  *&v5[OBJC_IVAR____TtC9SiriSetup8Defaults_settings] = v44;
  sub_26900A408(0, &qword_2802F3E00, 0x277D85C78);
  sub_269057884();
  aBlock = MEMORY[0x277D84F90];
  sub_269048D88(&qword_2802F39B0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F39B8, &qword_26905A8E8);
  sub_26904FA88(&qword_2802F39C0, &qword_2802F39B8, &qword_26905A8E8, MEMORY[0x277D83970]);
  sub_269057C14();
  (*(v113 + 104))(v112, *MEMORY[0x277D85260], v114);
  *&v5[OBJC_IVAR____TtC9SiriSetup8Defaults_settingsQueue] = sub_269057B74();
  if (v42)
  {
    v45 = v117;
    v46 = &v117[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume];
    swift_beginAccess();
    v47 = *v46;
    v48 = v46[4];
  }

  else
  {
    v47 = 0;
    v48 = 1;
    v45 = v117;
  }

  v49 = &v5[OBJC_IVAR____TtC9SiriSetup8Defaults_siriVolume];
  *v49 = v47;
  v49[4] = v48;
  v50 = [objc_allocWithZone(SRSVoiceProfileManager) init];
  *&v5[OBJC_IVAR____TtC9SiriSetup8Defaults_voiceProfileManager] = v50;
  v51 = [objc_allocWithZone(SRSVTPreferences) init];
  *&v5[OBJC_IVAR____TtC9SiriSetup8Defaults_voiceTriggerPrefs] = v51;
  v52 = [objc_allocWithZone(MEMORY[0x277CEF298]) init];
  *&v5[OBJC_IVAR____TtC9SiriSetup8Defaults_enablementFlowConfigurationProvider] = v52;
  v53 = type metadata accessor for Defaults();
  v128.receiver = v5;
  v128.super_class = v53;
  v54 = objc_msgSendSuper2(&v128, sel_init);
  v55 = v54;
  if (v42)
  {
    v56 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus;
    swift_beginAccess();
    v57 = *&v45[v56];
    v58 = v45;
    v59 = v55;
    sub_26904A204(v57);
    v60 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_hasVoiceProfileInCloud;
    swift_beginAccess();
    v59[OBJC_IVAR____TtC9SiriSetup8Defaults_hasVoiceProfileInCloud] = v58[v60];
    v61 = &v58[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriSharedUserId];
    swift_beginAccess();
    v62 = *(v61 + 1);
    v63 = &v59[OBJC_IVAR____TtC9SiriSetup8Defaults_siriSharedUserId];
    *v63 = *v61;
    *(v63 + 1) = v62;

    v64 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled;
    swift_beginAccess();
    sub_2690497A0(v58[v64]);
    v65 = &v58[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriLanguage];
    swift_beginAccess();
    v67 = *v65;
    v66 = v65[1];

    sub_269048F98(v67, v66);
    v68 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
    swift_beginAccess();
    v69 = *&v58[v68];
    v70 = *&v59[OBJC_IVAR____TtC9SiriSetup8Defaults_localDataSource];
    v71 = *(v70 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice);
    *(v70 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice) = v69;
    v72 = v69;

    v73 = [objc_opt_self() sharedPreferences];
    [v73 setOutputVoice_];
  }

  else
  {
    v74 = v54;
  }

  if (*&v55[OBJC_IVAR____TtC9SiriSetup8Defaults_internalSiriDataSharingStatus])
  {
    v75 = v55;
    if (!v42)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v76 = *&v55[OBJC_IVAR____TtC9SiriSetup8Defaults_settingsQueue];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v77 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3FB0, &unk_26905B5D0);
    sub_269057B44();

    v75 = v55;
    if (!v42)
    {
      goto LABEL_24;
    }
  }

  v78 = v55[OBJC_IVAR____TtC9SiriSetup8Defaults_hasVoiceProfileInCloud];

  if (v78)
  {
    goto LABEL_25;
  }

  sub_2690493A8();
  v79 = swift_allocObject();
  *(v79 + 16) = v55;
  v80 = *&v55[OBJC_IVAR____TtC9SiriSetup8Defaults_settings];
  v81 = swift_allocObject();
  v81[2] = v55;
  v81[3] = sub_26904FC44;
  v81[4] = v79;
  v124 = sub_26904FC00;
  v125 = v81;
  aBlock = MEMORY[0x277D85DD0];
  v121 = 1107296256;
  v122 = sub_2690277C8;
  v123 = &block_descriptor_156;
  v82 = _Block_copy(&aBlock);
  v83 = v55;
  v75 = v80;

  [v75 fetchMultiUserVoiceIdentificationSetting_];
  _Block_release(v82);

LABEL_24:

LABEL_25:
  if (!*&v55[OBJC_IVAR____TtC9SiriSetup8Defaults_siriSharedUserId + 8])
  {
    v84 = swift_allocObject();
    *(v84 + 16) = v55;
    v85 = 0x800000026905F990;
    v86 = v55;
    v87 = sub_269057A84();
    v88 = 0xD000000000000022;
    aBlock = 0xD000000000000022;
    v121 = 0x800000026905F990;
    if (("serId(completion:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v126 = 32;
      v127 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000029, 0x800000026905F9C0);
      MEMORY[0x26D62FBC0](v126, v127);

      v88 = aBlock;
      v85 = v121;
    }

    v89 = sub_269057764();
    if (os_log_type_enabled(v89, v87))
    {
      v90 = v88;
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v126 = v92;
      *v91 = 136315138;
      v93 = sub_269010108(v90, v85, &v126);

      *(v91 + 4) = v93;
      _os_log_impl(&dword_269002000, v89, v87, "%s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      v42 = v115;
      MEMORY[0x26D6309D0](v92, -1, -1);
      MEMORY[0x26D6309D0](v91, -1, -1);
    }

    else
    {
    }

    v94 = *&v86[OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID + 8];
    if (v94)
    {
      v95 = *&v86[OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID];
    }

    else
    {
      v95 = 0;
    }

    if (v94)
    {
      v96 = *&v86[OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID + 8];
    }

    else
    {
      v96 = 0xE000000000000000;
    }

    sub_26900A408(0, &qword_2802F3E28, 0x277CEF318);
    v97 = swift_allocObject();
    *(v97 + 16) = sub_26904FB40;
    *(v97 + 24) = v84;

    sub_269014FD0(v95, v96, sub_26904FC40, v97);

    v45 = v117;
  }

  if (v42)
  {
    if ((*(*&v55[OBJC_IVAR____TtC9SiriSetup8Defaults_localDataSource] + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_recognizeMyVoiceEnabled) & 1) == 0)
    {
      v98 = swift_allocObject();
      *(v98 + 16) = v55;
      v99 = *&v55[OBJC_IVAR____TtC9SiriSetup8Defaults_settings];
      v100 = swift_allocObject();
      v100[2] = v55;
      v100[3] = sub_26904FB94;
      v100[4] = v98;
      v124 = sub_26904FC00;
      v125 = v100;
      aBlock = MEMORY[0x277D85DD0];
      v121 = 1107296256;
      v122 = sub_2690277C8;
      v123 = &block_descriptor_146;
      v101 = _Block_copy(&aBlock);
      v102 = v55;
      v103 = v99;

      [v103 fetchMultiUserVoiceIdentificationSetting_];
      _Block_release(v101);

      v45 = v103;
    }
  }

  return v55;
}

id sub_26904D7F4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Defaults();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26904D924()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID);

  return v1;
}

uint64_t sub_26904D960()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_siriSharedUserId);

  return v1;
}

uint64_t sub_26904D99C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_personaId);

  return v1;
}

uint64_t sub_26904D9F8()
{
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  return BYSetupAssistantNeedsToRun();
}

uint64_t sub_26904DA70()
{
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 languageCode];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_269057954();

  return v2;
}

id sub_26904DB34()
{
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 assistantIsEnabled];

  return v1;
}

id sub_26904DC10()
{
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 outputVoice];

  return v1;
}

char *sub_26904DCD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F36F0, &qword_26905A3C0);
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

char *sub_26904DDE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3FA8, &qword_26905B5C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26904DF04(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F36F0, &qword_26905A3C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_26904DF88(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x26D62FE90](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_269057CD4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_26904E0B0(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

      v9 = (a1)(v12);

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

void sub_26904E15C(uint64_t a1, uint64_t a2)
{
  v4 = 0xD000000000000011;
  v5 = sub_26904F3F0(*(a2 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriEnabled), *(a1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriEnabled), 0x62616E4569726973, 0xEB0000000064656CLL);
  v6 = *(a2 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_voiceTriggerEnabled);
  v56[6] = v5;
  v56[7] = v7;
  v8 = sub_26904F3F0(v6, *(a1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_voiceTriggerEnabled), 0xD000000000000013, 0x800000026905BB80);
  v9 = *(a2 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_recognizeMyVoiceEnabled);
  v56[8] = v8;
  v56[9] = v10;
  v11 = sub_26904F3F0(v9, *(a1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_recognizeMyVoiceEnabled), 0xD000000000000017, 0x800000026905BB60);
  v12 = *(a2 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriInCallEnabled);
  v56[10] = v11;
  v56[11] = v13;
  v56[12] = sub_26904F3F0(v12, *(a1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriInCallEnabled), 0xD000000000000011, 0x800000026905BBA0);
  v56[13] = v14;
  v15 = *(a2 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice);
  v16 = *(a1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice);
  v17 = v16;
  v18 = v15;
  v19 = sub_26904F578(v15, v16, 0x63696F5669726973, 0xE900000000000065);
  v21 = v20;

  v56[14] = v19;
  v56[15] = v21;
  v22 = a2 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguage;
  v23 = *(a2 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguage);
  v24 = *(v22 + 8);
  v25 = a1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_languageCode;
  v26 = *(a1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_languageCode);
  v27 = *(v25 + 8);

  v28 = sub_26904F75C(v23, v24, v26, v27, 0x676E614C69726973, 0xEC00000065676175);
  v30 = v29;

  v31 = 0;
  v56[16] = v28;
  v56[17] = v30;
  v32 = MEMORY[0x277D84F90];
LABEL_2:
  if (v31 <= 6)
  {
    v33 = 6;
  }

  else
  {
    v33 = v31;
  }

  v34 = v33 + 1;
  v35 = 16 * v31 + 40;
  while (v31 != 6)
  {
    if (v34 == ++v31)
    {
      __break(1u);
LABEL_26:
      swift_once();
      goto LABEL_16;
    }

    v36 = v35 + 16;
    v37 = *(&v56[2] + v35);
    v35 += 16;
    if (v37)
    {
      v38 = *(&v56[-1] + v36);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_26904DCD8(0, *(v32 + 16) + 1, 1, v32);
      }

      v40 = *(v32 + 16);
      v39 = *(v32 + 24);
      if (v40 >= v39 >> 1)
      {
        v32 = sub_26904DCD8((v39 > 1), v40 + 1, 1, v32);
      }

      *(v32 + 16) = v40 + 1;
      v41 = v32 + 16 * v40;
      *(v41 + 32) = v38;
      *(v41 + 40) = v37;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
  swift_arrayDestroy();
  if (!*(v32 + 16))
  {

    return;
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD000000000000036, 0x800000026905F640);
  v54 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3F90, &qword_26905B5B8);
  sub_26904FA88(&qword_2802F3F98, &qword_2802F3F90, &qword_26905B5B8, MEMORY[0x277D83958]);
  v42 = sub_269057934();
  v44 = v43;

  MEMORY[0x26D62FBC0](v42, v44);

  v4 = 0;
  v32 = 0xE000000000000000;
  if (qword_2802F3258 != -1)
  {
    goto LABEL_26;
  }

LABEL_16:
  v45 = 0x6F28796669726576;
  v46 = sub_269057774();
  __swift_project_value_buffer(v46, qword_2802F3FF8);
  v47 = sub_269057A94();
  v48 = 0xEE00293A72656874;
  strcpy(v56, "verify(other:)");
  HIBYTE(v56[1]) = -18;
  v49 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v49 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v49)
  {
    v54 = 32;
    v55 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v4, v32);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v45 = v56[0];
    v48 = v56[1];
  }

  v50 = sub_269057764();
  if (os_log_type_enabled(v50, v47))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v54 = v52;
    *v51 = 136315138;
    v53 = sub_269010108(v45, v48, &v54);

    *(v51 + 4) = v53;
    _os_log_impl(&dword_269002000, v50, v47, "%s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x26D6309D0](v52, -1, -1);
    MEMORY[0x26D6309D0](v51, -1, -1);
  }

  else
  {
  }
}

void sub_26904E6C4(uint64_t a1, char *a2)
{
  v2 = a2;
  v4 = a2[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriEnabled];
  if (qword_2802F3220 != -1)
  {
LABEL_31:
    swift_once();
  }

  v5 = objc_opt_self();
  v6 = [v5 sharedPreferences];
  v7 = [v6 assistantIsEnabled];

  v56[6] = sub_26904F3F0(v4, v7, 0x62616E4569726973, 0xEB0000000064656CLL);
  v56[7] = v8;
  v9 = sub_26904F3F0(v2[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_voiceTriggerEnabled], [*(a1 + OBJC_IVAR____TtC9SiriSetup8Defaults_voiceTriggerPrefs) voiceTriggerEnabled], 0xD000000000000013, 0x800000026905BB80);
  v10 = v2[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_recognizeMyVoiceEnabled];
  v11 = *(a1 + OBJC_IVAR____TtC9SiriSetup8Defaults_localDataSource);
  v56[8] = v9;
  v56[9] = v12;
  v56[10] = sub_26904F3F0(v10, *(v11 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_recognizeMyVoiceEnabled), 0xD000000000000017, 0x800000026905BB60);
  v56[11] = v13;
  v56[12] = sub_26904F3F0(v2[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriInCallEnabled], 0, 0xD000000000000011, 0x800000026905BBA0);
  v56[13] = v14;
  v15 = *&v2[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice];
  v16 = v15;
  v17 = [v5 sharedPreferences];
  v18 = [v17 outputVoice];

  v19 = sub_26904F578(v15, v18, 0x63696F5669726973, 0xE900000000000065);
  v21 = v20;

  v56[14] = v19;
  v56[15] = v21;
  v23 = *&v2[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguage];
  v22 = *&v2[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguage + 8];

  v24 = [v5 sharedPreferences];
  v25 = [v24 languageCode];

  if (v25)
  {
    v26 = sub_269057954();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  a1 = sub_26904F75C(v23, v22, v26, v28, 0x676E614C69726973, 0xEC00000065676175);
  v30 = v29;

  v31 = 0;
  v56[16] = a1;
  v56[17] = v30;
  v4 = 6;
  v2 = MEMORY[0x277D84F90];
LABEL_6:
  if (v31 <= 6)
  {
    v32 = 6;
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 + 1;
  v34 = 16 * v31 + 40;
  while (v31 != 6)
  {
    if (v33 == ++v31)
    {
      __break(1u);
      goto LABEL_31;
    }

    v35 = v34 + 16;
    v36 = *(&v56[2] + v34);
    v34 += 16;
    if (v36)
    {
      v37 = *(&v56[-1] + v35);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_26904DCD8(0, *(v2 + 2) + 1, 1, v2);
      }

      v39 = *(v2 + 2);
      v38 = *(v2 + 3);
      a1 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v2 = sub_26904DCD8((v38 > 1), v39 + 1, 1, v2);
      }

      *(v2 + 2) = a1;
      v40 = &v2[16 * v39];
      *(v40 + 4) = v37;
      *(v40 + 5) = v36;
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
  swift_arrayDestroy();
  if (*(v2 + 2))
  {
    v56[1] = 0xE000000000000000;
    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD000000000000036, 0x800000026905F640);
    v54 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3F90, &qword_26905B5B8);
    sub_26904FA88(&qword_2802F3F98, &qword_2802F3F90, &qword_26905B5B8, MEMORY[0x277D83958]);
    v41 = sub_269057934();
    v43 = v42;

    MEMORY[0x26D62FBC0](v41, v43);

    v44 = v56[1];
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v45 = 0x6F28796669726576;
    v46 = sub_269057774();
    __swift_project_value_buffer(v46, qword_2802F3FF8);
    v47 = sub_269057A94();
    v48 = 0xEE00293A72656874;
    strcpy(v56, "verify(other:)");
    HIBYTE(v56[1]) = -18;
    v49 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v49 = 0;
    }

    if (v49)
    {
      v54 = 32;
      v55 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0, v44);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v45 = v56[0];
      v48 = v56[1];
    }

    v50 = sub_269057764();
    if (os_log_type_enabled(v50, v47))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v54 = v52;
      *v51 = 136315138;
      v53 = sub_269010108(v45, v48, &v54);

      *(v51 + 4) = v53;
      _os_log_impl(&dword_269002000, v50, v47, "%s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x26D6309D0](v52, -1, -1);
      MEMORY[0x26D6309D0](v51, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_26904ED24()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = sub_269057714();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIBYTE(v10) = 0;
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v4 = [objc_opt_self() sharedPreferences];
  v5 = [objc_opt_self() currentLocale];
  sub_269057704();

  sub_2690576F4();
  (*(v1 + 8))(v3, v0);
  v6 = sub_269057944();

  v7 = [v4 allSiriLanguageCodesForSystemLanguageCode:v6 isGoodFit:&v10 + 7];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_2690579D4();

  return v8;
}

uint64_t sub_26904EF14()
{
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 bestSupportedLanguageCodeForLanguageCode_];

  if (v1)
  {
    v2 = sub_269057954();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v5 = 0xD000000000000019;
  v6 = 0x800000026905F680;
  sub_269057C54();

  v16 = v2;
  v17 = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
  v7 = sub_269057964();
  MEMORY[0x26D62FBC0](v7);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v8 = sub_269057774();
  __swift_project_value_buffer(v8, qword_2802F3FF8);
  v9 = sub_269057AA4();
  v18 = 0xD000000000000019;
  v19 = 0x800000026905F680;
  v10 = (0x800000026905F6A0 >> 56) & 0xF;
  if ((0x800000026905F6A0 & 0x2000000000000000) == 0)
  {
    v10 = 46;
  }

  if (v10)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD00000000000002ELL, 0x800000026905F6A0);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v5 = v18;
    v6 = v19;
  }

  v11 = sub_269057764();
  if (os_log_type_enabled(v11, v9))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    v14 = sub_269010108(v5, v6, &v16);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_269002000, v11, v9, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D6309D0](v13, -1, -1);
    MEMORY[0x26D6309D0](v12, -1, -1);
  }

  else
  {
  }

  if (v4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26904F200()
{
  result = sub_26904ED24();
  if (result)
  {
    if (*(result + 16) <= 1uLL)
    {
    }

    else
    {
      v1 = result;
      if (qword_2802F3220 != -1)
      {
        swift_once();
      }

      v2 = objc_opt_self();
      v3 = [v2 sharedPreferences];
      v4 = [v3 languageCode];

      if (!v4 || (v4, v5 = [v2 sharedPreferences], v6 = objc_msgSend(v5, sel_languageCode), v5, !v6))
      {

        return 1;
      }

      v7 = sub_269057954();
      v9 = v8;

      v13[0] = v7;
      v13[1] = v9;
      MEMORY[0x28223BE20](v10);
      v12[2] = v13;
      v11 = sub_26904E0B0(sub_26904F398, v12, v1);

      if (v11)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_26904F398(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_269057DE4() & 1;
  }
}

uint64_t sub_26904F3F0(int a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 2)
  {
    return 0;
  }

  sub_269057DF4();
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  result = 0;
  if (!v9 && ((a1 ^ a2) & 1) != 0)
  {
    BYTE8(v10) = 0;
    sub_269057C54();
    MEMORY[0x26D62FBC0](a3, a4);
    MEMORY[0x26D62FBC0](0x746365707865203ALL, 0xEB00000000206465);
    sub_269057CB4();
    MEMORY[0x26D62FBC0](0x20646E756F66203BLL, 0xE800000000000000);
    *&v10 = a2 & 1;
    sub_269057CB4();
    return *(&v10 + 1);
  }

  return result;
}

uint64_t sub_26904F578(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 1)
  {
    return 0;
  }

  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3AB0, &qword_26905AB78);
  sub_269057DF4();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  if (v10)
  {
    return 0;
  }

  if (a1)
  {
    if (!a2)
    {
      goto LABEL_10;
    }

    sub_26900A408(0, &qword_2802F3AE8, 0x277CEF528);
    sub_26904F92C(a1);
    v11 = a2;
    v12 = sub_269057BA4();

    sub_26904F93C(a1);
    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

LABEL_10:
  sub_269057C54();
  MEMORY[0x26D62FBC0](a3, a4);
  MEMORY[0x26D62FBC0](0x746365707865203ALL, 0xEB00000000206465);
  sub_269057CB4();
  MEMORY[0x26D62FBC0](0x20646E756F66203BLL, 0xE800000000000000);
  sub_269057CB4();
  return 0;
}

uint64_t sub_26904F75C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 == 1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
  sub_269057DF4();
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  if (v13)
  {
    return 0;
  }

  if (a2)
  {
    if (!a4 || (a1 != a3 || a2 != a4) && (sub_269057DE4() & 1) == 0)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (!a4)
  {
    return 0;
  }

LABEL_12:
  sub_269057C54();
  MEMORY[0x26D62FBC0](a5, a6);
  MEMORY[0x26D62FBC0](0x746365707865203ALL, 0xEB00000000206465);
  sub_269057CB4();
  MEMORY[0x26D62FBC0](0x20646E756F66203BLL, 0xE800000000000000);
  sub_269057CB4();
  return 0;
}

id sub_26904F92C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_26904F93C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26904F974()
{
  MEMORY[0x26D630A50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26904F9AC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26904FA40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26904FA88(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26904FAEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26904FB44(uint64_t a1, uint64_t a2)
{
  v3 = (*(v2 + 16) + OBJC_IVAR____TtC9SiriSetup8Defaults_siriSharedUserId);
  *v3 = a1;
  v3[1] = a2;
}

void *sub_26904FC48(__int128 *a1)
{
  v3 = a1[11];
  v90 = a1[10];
  v91 = v3;
  v92 = a1[12];
  v4 = a1[7];
  v86 = a1[6];
  v87 = v4;
  v5 = a1[9];
  v88 = a1[8];
  v89 = v5;
  v6 = a1[3];
  v82 = a1[2];
  v83 = v6;
  v7 = a1[5];
  v84 = a1[4];
  v85 = v7;
  v8 = a1[1];
  v80 = *a1;
  v81 = v8;
  *&v1[OBJC_IVAR____TtC9SiriSetup23IntroProxCardController_orbView] = 0;
  *&v1[OBJC_IVAR____TtC9SiriSetup23IntroProxCardController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v1[OBJC_IVAR____TtC9SiriSetup23IntroProxCardController_viewModel];
  *(v9 + 3) = &type metadata for ViewModel;
  *(v9 + 4) = &off_2879A7790;
  v10 = swift_allocObject();
  *v9 = v10;
  v11 = a1[11];
  v10[11] = a1[10];
  v10[12] = v11;
  v10[13] = a1[12];
  v12 = a1[7];
  v10[7] = a1[6];
  v10[8] = v12;
  v13 = a1[9];
  v10[9] = a1[8];
  v10[10] = v13;
  v14 = a1[3];
  v10[3] = a1[2];
  v10[4] = v14;
  v15 = a1[5];
  v10[5] = a1[4];
  v10[6] = v15;
  v16 = a1[1];
  v10[1] = *a1;
  v10[2] = v16;
  v17 = objc_allocWithZone(MEMORY[0x277D43320]);
  sub_269009E3C(&v80, v79);
  v18 = [v17 initWithCardStyle_];
  v78.receiver = v1;
  v78.super_class = type metadata accessor for IntroProxCardController();
  v19 = objc_msgSendSuper2(&v78, sel_initWithContentView_, v18);
  v20 = sub_269057944();
  [v19 setTitle_];

  if (*(&v82 + 1))
  {

    v21 = sub_269057944();
  }

  else
  {
    v21 = 0;
  }

  [v19 setSubtitle_];

  v22 = sub_269017F70();
  v23 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  v24 = v23;
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  [v24 setContentMode_];
  [v18 addSubview_];
  v25 = [objc_allocWithZone(MEMORY[0x277D43360]) initWithStyle_];
  if (v91)
  {

    v26 = sub_269057944();
  }

  else
  {
    v26 = 0;
  }

  [v25 setText_];

  v27 = v25;
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  [v27 setNumberOfLines_];
  [v18 addSubview_];
  v28 = [v18 mainContentGuide];
  v29 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3400, &unk_26905AB40);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_26905B600;
  v77 = v18;
  v31 = [v24 topAnchor];
  v32 = [v28 topAnchor];
  v33 = [v31 constraintGreaterThanOrEqualToAnchor_];

  *(v30 + 32) = v33;
  v34 = [v24 centerXAnchor];
  v35 = [v28 centerXAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v30 + 40) = v36;
  v37 = [v24 heightAnchor];
  v38 = [v37 constraintEqualToConstant_];

  *(v30 + 48) = v38;
  v39 = [v27 topAnchor];
  v40 = [v24 bottomAnchor];

  v41 = [v39 constraintEqualToAnchor:v40 constant:30.0];
  *(v30 + 56) = v41;
  v42 = [v27 leadingAnchor];
  v43 = [v28 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v30 + 64) = v44;
  v45 = [v27 trailingAnchor];
  v46 = [v28 trailingAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v30 + 72) = v47;
  sub_26900A408(0, &qword_2802F3408, 0x277CCAAD0);
  v48 = sub_2690579C4();

  v76 = v29;
  [v29 activateConstraints_];

  if (v86)
  {
    v49 = objc_opt_self();

    v50 = [v49 buttonWithType_];
    [v50 setTranslatesAutoresizingMaskIntoConstraints_];
    v51 = sub_269057944();

    [v50 setTitle:v51 forState:0];

    v52 = v75;
    [v50 addTarget:v75 action:sel_tappedLink forControlEvents:0x2000];
    sub_269054398();
    [v18 addSubview_];
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_26905B610;
    v54 = [v50 topAnchor];
    v55 = [v27 bottomAnchor];

    v56 = [v54 &selRef_whichContextevent + 6];
    *(v53 + 32) = v56;
    v57 = [v50 leadingAnchor];
    v58 = [v28 leadingAnchor];
    v59 = [v57 constraintEqualToAnchor_];

    *(v53 + 40) = v59;
    v60 = [v50 trailingAnchor];
    v61 = [v28 trailingAnchor];
    v62 = [v60 constraintEqualToAnchor_];

    *(v53 + 48) = v62;
    v63 = [v50 centerXAnchor];
    v64 = [v28 centerXAnchor];
    v65 = [v63 constraintEqualToAnchor_];

    *(v53 + 56) = v65;
    v66 = [v50 bottomAnchor];

    v67 = [v28 bottomAnchor];
    v68 = [v66 constraintEqualToAnchor_];

    *(v53 + 64) = v68;
    v69 = sub_2690579C4();

    [v76 activateConstraints_];
  }

  else
  {
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_26905B620;
    v71 = [v27 bottomAnchor];

    v72 = [v28 bottomAnchor];
    v73 = [v71 constraintEqualToAnchor:v72 constant:-5.0];

    *(v70 + 32) = v73;
    v69 = sub_2690579C4();

    [v76 activateConstraints_];
    v52 = v75;
  }

  [v52 setDismissalType_];
  v79[10] = v90;
  v79[11] = v91;
  v79[12] = v92;
  v79[6] = v86;
  v79[7] = v87;
  v79[8] = v88;
  v79[9] = v89;
  v79[2] = v82;
  v79[3] = v83;
  v79[4] = v84;
  v79[5] = v85;
  v79[0] = v80;
  v79[1] = v81;
  sub_269050DB8(v79);
  sub_269009EE0(&v80);
  if (BYTE10(v91) == 1)
  {
    sub_269050A40();
  }

  return v52;
}

void sub_26905067C()
{
  v1 = sub_269057944();
  v2 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v2)
  {
    [v2 setPresentingViewController_];
  }

  [v2 present];
}

void sub_269050774(void *a1)
{
  v2 = v1;
  v4 = [v2 actions];
  sub_26900A408(0, &qword_2802F33F8, 0x277D432F0);
  v5 = sub_2690579D4();

  if (v5 >> 62)
  {
    if (sub_269057CD4())
    {
      goto LABEL_3;
    }

LABEL_13:

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x26D62FE90](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = a1;
  v9 = sub_269057BA4();

  if ((v9 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    sub_2690243E8();

    swift_unknownObjectRelease();
  }
}

void sub_2690508E8(void *a1)
{
  v2 = v1;
  v4 = [v2 actions];
  sub_26900A408(0, &qword_2802F33F8, 0x277D432F0);
  v5 = sub_2690579D4();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

LABEL_10:
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_269024810();

      swift_unknownObjectRelease();
    }

    return;
  }

  if (!sub_269057CD4())
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x26D62FE90](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = a1;
  v9 = sub_269057BA4();

  if ((v9 & 1) == 0)
  {
    goto LABEL_10;
  }
}

void sub_269050A40()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v2 = sub_269057944();
  v4[4] = sub_2690516D4;
  v4[5] = v1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_26900BEF0;
  v4[3] = &block_descriptor_30_0;
  v3 = _Block_copy(v4);

  [v0 setAuxiliaryButtonWithSymbolName:v2 handler:v3];
  _Block_release(v3);
}

void sub_269050B68(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();

    if (v3)
    {
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v4 = sub_269057774();
      __swift_project_value_buffer(v4, qword_2802F3FF8);
      v5 = sub_269057AA4();
      v10[2] = 0xD000000000000012;
      v10[3] = 0x800000026905BDA0;
      v10[0] = 32;
      v10[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0x6F7266206B636142, 0xEF6F72746E69206DLL);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v6 = sub_269057764();
      if (os_log_type_enabled(v6, v5))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v10[0] = v8;
        *v7 = 136315138;
        v9 = sub_269010108(0xD000000000000012, 0x800000026905BDA0, v10);

        *(v7 + 4) = v9;
        _os_log_impl(&dword_269002000, v6, v5, "%s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        MEMORY[0x26D6309D0](v8, -1, -1);
        MEMORY[0x26D6309D0](v7, -1, -1);
      }

      else
      {
      }

      if (swift_unknownObjectWeakLoadStrong())
      {

        sub_26900EFCC();

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_269050DB8(void *a1)
{
  v2 = v1;
  v3 = a1[8];
  v4 = a1[10];
  v5 = &off_279C4A000;
  if (v3 && *(v3 + 16))
  {
    sub_26900A408(0, &unk_2802F3410, 0x277D43308);

    v6 = sub_2690542F4();
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    v8 = v2;
    v9 = sub_269057944();

    v29 = sub_269051678;
    v30 = v7;
    v25 = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_26904BBEC;
    v28 = &block_descriptor_24_0;
    v10 = _Block_copy(&v25);
    v11 = [objc_opt_self() actionWithTitle:v9 customColors:v6 handler:v10];

    v12 = v10;
    v5 = &off_279C4A000;
    _Block_release(v12);

    v13 = [v8 addAction_];
  }

  if (v4)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v2;
    v15 = v2;
    v16 = sub_269057944();
    v29 = sub_269051654;
    v30 = v14;
    v25 = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_26904BBEC;
    v28 = &block_descriptor_18_0;
    v17 = _Block_copy(&v25);
    v18 = [objc_opt_self() actionWithTitle:v16 style:1 handler:v17];

    _Block_release(v17);

    v19 = [v15 v5[178]];
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  v21 = v2;
  v22 = sub_269057944();
  v29 = sub_269051634;
  v30 = v20;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_26904BBEC;
  v28 = &block_descriptor_10;
  v23 = _Block_copy(&v25);
  v24 = [objc_opt_self() actionWithTitle:v22 style:0 handler:v23];

  _Block_release(v23);

  [v21 setDismissButtonAction_];
}

uint64_t sub_26905113C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = 0x800000026905BD40;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v4 = 0xD000000000000015;
    v5 = sub_269057774();
    __swift_project_value_buffer(v5, qword_2802F3FF8);
    v6 = sub_269057AA4();
    v13 = 0xD000000000000015;
    v14 = 0x800000026905BD40;
    if (("troller" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v12[0] = 32;
      v12[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000012, 0x800000026905FC10);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v4 = v13;
      v3 = v14;
    }

    v7 = sub_269057764();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12[0] = v9;
      *v8 = 136315138;
      v10 = sub_269010108(v4, v3, v12);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_269002000, v7, v6, "%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D6309D0](v9, -1, -1);
      MEMORY[0x26D6309D0](v8, -1, -1);
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {

      sub_26900E964(v11);

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_2690513C0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IntroProxCardController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26905148C(void *a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup23IntroProxCardController_viewModel;
  swift_beginAccess();
  sub_269009C7C(v1 + v3, &v14);
  v4 = v15;
  v5 = v16;
  __swift_project_boxed_opaque_existential_1(&v14, v15);
  (*(v5 + 296))(&v12, v4, v5);
  v6 = BYTE2(v12);
  __swift_destroy_boxed_opaque_existential_1Tm(&v14);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 296))(&v13, v7, v8);
  if (v6 != BYTE2(v13))
  {
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    (*(v10 + 296))(&v14, v9, v10);
    if (BYTE2(v14) == 1)
    {
      sub_269050A40();
    }
  }

  sub_269009C7C(a1, &v14);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  sub_269009D24(&v14, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2690515FC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26905169C()
{
  MEMORY[0x26D630A50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2690516DC()
{

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t DataSourceType.hashValue.getter()
{
  v1 = *v0;
  sub_269057E54();
  MEMORY[0x26D630090](v1);
  return sub_269057E84();
}

unint64_t sub_26905183C()
{
  result = qword_2802F3FD0;
  if (!qword_2802F3FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3FD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataSourceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DataSourceType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2690519EC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x646F50656D6F48;
    v6 = 0xD000000000000010;
    if (a1 != 8)
    {
      v6 = 0x656369766564;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x615720656C707041;
    if (a1 != 5)
    {
      v7 = 0x565420656C707041;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656E6F685069;
    v2 = 1685016681;
    v3 = 6512973;
    if (a1 != 3)
    {
      v3 = 0x73646F50726941;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1684099177;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_269051B18(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x444F50454D4F485FLL;
    v6 = 0x4E4F495349565FLL;
    if (a1 != 8)
    {
      v6 = 0;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x48435441575FLL;
    if (a1 != 5)
    {
      v7 = 0x5654454C5050415FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x454E4F4850495FLL;
    v2 = 0x444F50495FLL;
    v3 = 1128353119;
    if (a1 != 3)
    {
      v3 = 0x53444F505249415FLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x444150495FLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_269051C30()
{
  result = SRSGetDeviceClass();
  if ((result - 1) > 0xA)
  {
    v1 = 9;
  }

  else
  {
    v1 = byte_26905B6FE[(result - 1)];
  }

  byte_2802F5130 = v1;
  return result;
}

__int128 *sub_269051C70(__int128 *a1)
{
  v3 = a1[11];
  v117 = a1[10];
  v118 = v3;
  v119 = a1[12];
  v4 = a1[7];
  v113 = a1[6];
  v114 = v4;
  v5 = a1[9];
  v115 = a1[8];
  v116 = v5;
  v6 = a1[3];
  v109 = a1[2];
  v110 = v6;
  v7 = a1[5];
  v111 = a1[4];
  v112 = v7;
  v8 = a1[1];
  v108[0] = *a1;
  v108[1] = v8;
  *&v1[OBJC_IVAR____TtC9SiriSetup29DataSharingProxCardController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9SiriSetup29DataSharingProxCardController_orbView] = 0;
  v9 = &v1[OBJC_IVAR____TtC9SiriSetup29DataSharingProxCardController_viewModel];
  *(v9 + 3) = &type metadata for ViewModel;
  *(v9 + 4) = &off_2879A7790;
  v10 = swift_allocObject();
  *v9 = v10;
  v11 = a1[11];
  v10[11] = a1[10];
  v10[12] = v11;
  v10[13] = a1[12];
  v12 = a1[7];
  v10[7] = a1[6];
  v10[8] = v12;
  v13 = a1[9];
  v10[9] = a1[8];
  v10[10] = v13;
  v14 = a1[3];
  v10[3] = a1[2];
  v10[4] = v14;
  v15 = a1[5];
  v10[5] = a1[4];
  v10[6] = v15;
  v16 = a1[1];
  v10[1] = *a1;
  v10[2] = v16;
  v17 = objc_allocWithZone(MEMORY[0x277D43320]);
  sub_269009E3C(v108, &aBlock);
  v18 = [v17 init];
  v101.receiver = v1;
  v101.super_class = type metadata accessor for DataSharingProxCardController();
  v19 = objc_msgSendSuper2(&v101, sel_initWithContentView_, v18);
  v20 = sub_269057944();
  [v19 setTitle_];

  v21 = sub_269057944();
  v22 = objc_opt_self();
  v23 = [v22 _systemImageNamed_];

  if (!v23)
  {
    v24 = sub_269057944();
    v23 = [v22 systemImageNamed_];
  }

  v25 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  [v25 setContentMode_];
  [v18 addSubview_];
  v26 = [objc_allocWithZone(MEMORY[0x277D43360]) initWithStyle_];
  v98 = v23;
  v96 = v19;
  if (*(&v109 + 1))
  {

    v27 = sub_269057944();
  }

  else
  {
    v27 = 0;
  }

  [v26 setText_];

  v28 = v26;
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  [v28 setNumberOfLines_];
  [v18 addSubview_];
  v29 = [v18 mainContentGuide];
  v99 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3400, &unk_26905AB40);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_26905B600;
  v100 = v18;
  v31 = [v25 topAnchor];
  v32 = [v29 topAnchor];
  v33 = [v31 constraintGreaterThanOrEqualToAnchor:v32 constant:25.0];

  *(v30 + 32) = v33;
  v34 = [v25 centerXAnchor];
  v35 = [v29 centerXAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v30 + 40) = v36;
  v37 = [v25 heightAnchor];
  v38 = [v37 constraintEqualToConstant_];

  *(v30 + 48) = v38;
  v39 = [v28 topAnchor];
  v40 = [v25 bottomAnchor];
  v97 = v25;

  v41 = [v39 constraintEqualToAnchor:v40 constant:45.0];
  *(v30 + 56) = v41;
  v42 = [v28 leadingAnchor];
  v43 = [v29 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v30 + 64) = v44;
  v45 = v18;
  v46 = [v28 trailingAnchor];
  v47 = v29;
  v48 = [v29 trailingAnchor];
  v49 = [v46 constraintEqualToAnchor_];

  *(v30 + 72) = v49;
  sub_26900A408(0, &qword_2802F3408, 0x277CCAAD0);
  v50 = sub_2690579C4();

  [v99 activateConstraints_];

  if (v113)
  {
    v51 = objc_opt_self();

    v52 = [v51 buttonWithType_];
    [v52 setTranslatesAutoresizingMaskIntoConstraints_];
    v53 = sub_269057944();

    [v52 setTitle:v53 forState:0];

    v54 = v96;
    [v52 addTarget:v96 action:sel_tappedLink forControlEvents:0x2000];
    sub_269054398();
    [v45 addSubview_];
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_26905B610;
    v56 = [v52 topAnchor];
    v57 = [v28 bottomAnchor];

    v58 = [v56 constraintEqualToAnchor:v57 constant:*MEMORY[0x277D43380]];
    *(v55 + 32) = v58;
    v59 = [v52 leadingAnchor];
    v60 = v47;
    v61 = [v47 leadingAnchor];
    v62 = [v59 constraintEqualToAnchor_];

    *(v55 + 40) = v62;
    v63 = [v52 trailingAnchor];
    v64 = [v47 trailingAnchor];
    v65 = [v63 constraintEqualToAnchor_];

    *(v55 + 48) = v65;
    v66 = [v52 centerXAnchor];
    v67 = [v47 centerXAnchor];
    v68 = [v66 constraintEqualToAnchor_];

    *(v55 + 56) = v68;
    v69 = [v52 bottomAnchor];

    v70 = [v47 bottomAnchor];
    v71 = [v69 constraintEqualToAnchor_];

    *(v55 + 64) = v71;
    v72 = sub_2690579C4();

    [v99 activateConstraints_];
  }

  else
  {
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_26905B620;
    v74 = [v28 bottomAnchor];

    v75 = [v47 bottomAnchor];
    v76 = [v74 constraintEqualToAnchor:v75 constant:-5.0];

    *(v73 + 32) = v76;
    v72 = sub_2690579C4();

    [v99 activateConstraints_];
    v60 = v47;
    v54 = v96;
  }

  v77 = v54;
  [v77 setDismissalType_];
  if (v111 && *(v111 + 16))
  {
  }

  sub_26900A408(0, &unk_2802F3410, 0x277D43308);
  v78 = sub_2690542F4();
  v79 = swift_allocObject();
  *(v79 + 16) = v77;
  v80 = v77;
  v81 = sub_269057944();

  v106 = sub_2690531E4;
  v107 = v79;
  aBlock = MEMORY[0x277D85DD0];
  v103 = 1107296256;
  v104 = sub_26904BBEC;
  v105 = &block_descriptor_23_0;
  v82 = _Block_copy(&aBlock);
  v83 = objc_opt_self();
  v84 = [v83 actionWithTitle:v81 customColors:v78 handler:v82];

  _Block_release(v82);

  v85 = swift_allocObject();
  *(v85 + 16) = v80;
  v86 = v80;

  v87 = sub_269057944();

  v106 = sub_269053214;
  v107 = v85;
  aBlock = MEMORY[0x277D85DD0];
  v103 = 1107296256;
  v104 = sub_26904BBEC;
  v105 = &block_descriptor_29_0;
  v88 = _Block_copy(&aBlock);
  v89 = [v83 actionWithTitle:v87 style:1 handler:v88];

  _Block_release(v88);

  v90 = swift_allocObject();
  *(v90 + 16) = v86;
  v91 = v86;
  v92 = sub_269057944();
  v106 = sub_269053244;
  v107 = v90;
  aBlock = MEMORY[0x277D85DD0];
  v103 = 1107296256;
  v104 = sub_26904BBEC;
  v105 = &block_descriptor_35;
  v93 = _Block_copy(&aBlock);
  v94 = [v83 actionWithTitle:v92 style:0 handler:v93];

  _Block_release(v93);

  [v91 setDismissButtonAction_];

  sub_269009EE0(v108);
  if (BYTE10(v118) == 1)
  {
    sub_269052A78();
  }

  return v91;
}

uint64_t sub_269052A18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a3();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_269052A78()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v2 = sub_269057944();
  v4[4] = sub_2690530F4;
  v4[5] = v1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_26900BEF0;
  v4[3] = &block_descriptor_11;
  v3 = _Block_copy(v4);

  [v0 setAuxiliaryButtonWithSymbolName:v2 handler:v3];
  _Block_release(v3);
}

void sub_269052BA0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();

    if (v3)
    {
      v4 = 0x800000026905BDA0;
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v5 = 0xD000000000000012;
      v6 = sub_269057774();
      __swift_project_value_buffer(v6, qword_2802F3FF8);
      v7 = sub_269057AA4();
      v13 = 0xD000000000000012;
      v14 = 0x800000026905BDA0;
      if (("DataSharingProxCardController" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v12[0] = 32;
        v12[1] = 0xE100000000000000;
        MEMORY[0x26D62FBC0](0xD000000000000012, 0x800000026905FCB0);
        MEMORY[0x26D62FBC0](32, 0xE100000000000000);

        v5 = v13;
        v4 = v14;
      }

      v8 = sub_269057764();
      if (os_log_type_enabled(v8, v7))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v12[0] = v10;
        *v9 = 136315138;
        v11 = sub_269010108(v5, v4, v12);

        *(v9 + 4) = v11;
        _os_log_impl(&dword_269002000, v8, v7, "%s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x26D6309D0](v10, -1, -1);
        MEMORY[0x26D6309D0](v9, -1, -1);
      }

      else
      {
      }

      if (swift_unknownObjectWeakLoadStrong())
      {

        sub_26900EFCC();

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

id sub_269052E74(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DataSharingProxCardController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_269052F4C(void *a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup29DataSharingProxCardController_viewModel;
  swift_beginAccess();
  sub_269009C7C(v1 + v3, &v14);
  v4 = v15;
  v5 = v16;
  __swift_project_boxed_opaque_existential_1(&v14, v15);
  (*(v5 + 296))(&v12, v4, v5);
  v6 = BYTE2(v12);
  __swift_destroy_boxed_opaque_existential_1Tm(&v14);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 296))(&v13, v7, v8);
  if (v6 != BYTE2(v13))
  {
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    (*(v10 + 296))(&v14, v9, v10);
    if (BYTE2(v14) == 1)
    {
      sub_269052A78();
    }
  }

  sub_269009C7C(a1, &v14);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  sub_269009D24(&v14, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2690530BC()
{
  MEMORY[0x26D630A50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269053114()
{

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_2690531AC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269053294()
{
  sub_2690533E8();
  result = sub_269057BC4();
  qword_2802F3FF0 = result;
  return result;
}

uint64_t sub_2690532F8()
{
  v0 = sub_269057774();
  __swift_allocate_value_buffer(v0, qword_2802F3FF8);
  __swift_project_value_buffer(v0, qword_2802F3FF8);
  if (qword_2802F3250 != -1)
  {
    swift_once();
  }

  v1 = qword_2802F3FF0;
  return sub_269057784();
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

unint64_t sub_2690533E8()
{
  result = qword_2802F4010;
  if (!qword_2802F4010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802F4010);
  }

  return result;
}

void sub_269053434(os_log_type_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v24 = a2;
  v25 = a3;
  if (!a5)
  {
    goto LABEL_7;
  }

  v12 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v12 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v23[1] = 0xE100000000000000;

    MEMORY[0x26D62FBC0](a4, a5);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    if (!a7)
    {
LABEL_6:
      v14 = v24;
      v13 = v25;
      goto LABEL_13;
    }
  }

  else
  {
LABEL_7:

    if (!a7)
    {
      goto LABEL_6;
    }
  }

  v15 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v15 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v14 = v24;
  v13 = v25;
  if (!v15)
  {
LABEL_13:
    log = sub_269057764();
    if (os_log_type_enabled(log, a1))
    {
      v16 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23[0] = v20;
      *v16 = 136315138;
      v21 = sub_269010108(v14, v13, v23);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_269002000, log, a1, "%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      v19 = v20;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  log = sub_269057764();
  if (os_log_type_enabled(log, a1))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23[0] = v17;
    *v16 = 136315395;
    v18 = sub_269010108(v14, v13, v23);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2081;
    *(v16 + 14) = sub_269010108(a6, a7, v23);
    _os_log_impl(&dword_269002000, log, a1, "%s %{private}s", v16, 0x16u);
    swift_arrayDestroy();
    v19 = v17;
LABEL_15:
    MEMORY[0x26D6309D0](v19, -1, -1);
    MEMORY[0x26D6309D0](v16, -1, -1);

    return;
  }

LABEL_16:
}

id sub_2690538A0(void *a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup10ColorLayer_layerRedColor;
  *&v1[v3] = CGColorCreateGenericRGB(0.96875, 0.25390625, 0.36328125, 1.0);
  v4 = OBJC_IVAR____TtC9SiriSetup10ColorLayer_layerBlueColor;
  *&v1[v4] = CGColorCreateGenericRGB(0.15625, 0.52734375, 0.9921875, 1.0);
  v5 = OBJC_IVAR____TtC9SiriSetup10ColorLayer_layerBackgroundColor;
  *&v1[v5] = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ColorLayer();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

void sub_269053AA8()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 bounds];
  v10 = v9;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v0 bounds];
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v11 < 9.22337204e18)
  {
    v12 = v11;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v14 = __CGBitmapContextCreate(v10, v12, DeviceRGB);

    if (v14)
    {
      v41.origin.x = v2;
      v41.origin.y = v4;
      v41.size.width = v6;
      v41.size.height = v8;
      CGContextClearRect(v14, v41);
    }

    v39 = v4;
    v15 = [v0 presentationLayer];
    v16 = 0.0;
    v17 = 0.0;
    if (v15)
    {
      v18 = v15;
      [v15 phase];
      v17 = v19;
    }

    rect = v8;
    v20 = (v17 + -0.57) / 0.4 * 12.0;
    if (v20 > -10.0)
    {
      v16 = 1.0;
      if (v20 < 10.0)
      {
        v16 = 1.0 / (exp(-v20) + 1.0);
      }
    }

    v21 = (v17 + -0.4) / 0.8 * 12.0;
    v22 = 0.0;
    v23 = 0.0;
    if (v21 > -10.0)
    {
      v23 = 1.0;
      if (v21 < 10.0)
      {
        v23 = 1.0 / (exp(-v21) + 1.0);
      }
    }

    v24 = (v17 + -0.6) / 0.3 * 12.0;
    if (v24 > -10.0)
    {
      v22 = 1.0;
      if (v24 < 10.0)
      {
        v22 = 1.0 / (exp(-v24) + 1.0);
      }
    }

    v25 = (v17 + -0.35) / 0.6 * 12.0;
    v26 = 0.0;
    v27 = 0.0;
    if (v25 > -10.0)
    {
      v27 = 1.0;
      if (v25 < 10.0)
      {
        v27 = 1.0 / (exp(-v25) + 1.0);
      }
    }

    v28 = (v17 + -0.3) / 0.4 * 12.0;
    if (v28 > -10.0)
    {
      v26 = 1.0;
      if (v28 < 10.0)
      {
        v26 = 1.0 / (exp(-v28) + 1.0);
      }
    }

    v29 = [objc_opt_self() currentTraitCollection];
    v30 = [v29 userInterfaceStyle];

    if (v30 == 1)
    {
    }

    else
    {
      v31 = sub_269057DE4();

      if ((v31 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v16 = 0.0;
LABEL_30:
    if (v14)
    {
      CGContextSetFillColorWithColor(v14, *&v0[OBJC_IVAR____TtC9SiriSetup10ColorLayer_layerRedColor]);
      v42.origin.x = v2;
      v42.origin.y = v39;
      v42.size.width = v6 * v26;
      v42.size.height = rect;
      CGContextFillRect(v14, v42);
      CGContextSetFillColorWithColor(v14, *&v0[OBJC_IVAR____TtC9SiriSetup10ColorLayer_layerBlueColor]);
      v43.origin.x = v2;
      v43.origin.y = v39;
      v43.size.width = v6 * v27;
      v43.size.height = rect;
      CGContextFillRect(v14, v43);
    }

    GenericRGB = CGColorCreateGenericRGB((1.0 - v22) * 0.37890625, (1.0 - v22) * 0.98828125, (1.0 - v22) * 0.67578125, 1.0);
    if (v14)
    {
      CGContextSetFillColorWithColor(v14, GenericRGB);
      v44.origin.y = v39;
      v44.origin.x = v2;
      v44.size.width = v6 * v23;
      v44.size.height = rect;
      CGContextFillRect(v14, v44);
    }

    CopyWithAlpha = CGColorCreateCopyWithAlpha(*&v0[OBJC_IVAR____TtC9SiriSetup10ColorLayer_layerBackgroundColor], v16);
    if (CopyWithAlpha)
    {
      v34 = CopyWithAlpha;
      if (!v14)
      {

        goto LABEL_41;
      }

      CGContextSetFillColorWithColor(v14, CopyWithAlpha);
      v35 = v14;
      [v0 bounds];
      CGContextFillRect(v35, v45);
    }

    else if (!v14)
    {
      goto LABEL_41;
    }

    Image = CGBitmapContextCreateImage(v14);
    if (Image)
    {
      v40 = Image;
      type metadata accessor for CGImage(0);
      v37 = sub_269057DD4();

LABEL_42:
      [v0 setContents_];

      swift_unknownObjectRelease();
      return;
    }

LABEL_41:
    v37 = 0;
    goto LABEL_42;
  }

LABEL_48:
  __break(1u);
}

id sub_269054038(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6573616870 && a2 == 0xE500000000000000;
  if (v3 || (sub_269057DE4() & 1) != 0)
  {
    v4 = sub_269057944();
    v5 = [objc_opt_self() animationWithKeyPath_];

    v6 = *MEMORY[0x277CDA7C8];
    v7 = objc_opt_self();
    v8 = v5;
    v9 = [v7 functionWithName_];
    [v8 setTimingFunction_];

    [v2 phase];
    v10 = sub_269057754();
    [v8 setFromValue_];
  }

  else
  {
    v11 = sub_269057944();
    v13.receiver = v2;
    v13.super_class = type metadata accessor for ColorLayer();
    v8 = objc_msgSendSuper2(&v13, sel_actionForKey_, v11);
  }

  return v8;
}

id sub_269054220(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ColorLayer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2690542F4()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 systemBlueColor];
  v3 = [v1 whiteColor];
  v4 = [ObjCClassFromMetadata initWithBackgroundColor:v2 textColor:v3];

  return v4;
}

void sub_269054398()
{
  v1 = [v0 titleLabel];
  if (v1)
  {
    v13 = v1;
    v2 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    v3 = [v2 fontDescriptorWithSymbolicTraits_];

    if (v3)
    {
      v4 = v3;
      [v4 pointSize];
      v6 = [objc_opt_self() fontWithDescriptor:v4 size:v5];

      [v13 setFont_];
      [v13 setAdjustsFontForContentSizeCategory_];
      [v13 setNumberOfLines_];
      [v13 setTextAlignment_];
      v7 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3400, &unk_26905AB40);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_26905B620;
      v9 = [v0 heightAnchor];
      v10 = [v13 heightAnchor];
      v11 = [v9 constraintEqualToAnchor_];

      *(v8 + 32) = v11;
      sub_26901BDD8();
      v12 = sub_2690579C4();

      [v7 activateConstraints_];
    }
  }
}

char *sub_2690545F0(void *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *&v6[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v6[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_presentingViewController];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v6[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_dataSource];
  *v13 = a1;
  v13[1] = a2;
  v14 = &v6[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_dataSourceWriter];
  *v14 = a3;
  v14[1] = a4;
  ObjectType = swift_getObjectType();
  v16 = *(a2 + 80);
  v17 = a1;
  v18 = a3;
  v6[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_viewStyle] = v16(ObjectType, a2);
  *&v6[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_page] = a5;
  v19 = type metadata accessor for SuccessPresenter();

  sub_2690548A4(a2, v64);
  v20 = &v6[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_viewModel];
  v21 = v64[11];
  v20[10] = v64[10];
  v20[11] = v21;
  v20[12] = v64[12];
  v22 = v64[7];
  v20[6] = v64[6];
  v20[7] = v22;
  v23 = v64[9];
  v20[8] = v64[8];
  v20[9] = v23;
  v24 = v64[3];
  v20[2] = v64[2];
  v20[3] = v24;
  v25 = v64[5];
  v20[4] = v64[4];
  v20[5] = v25;
  v26 = v64[1];
  *v20 = v64[0];
  v20[1] = v26;
  v63.receiver = v6;
  v63.super_class = v19;
  v27 = objc_msgSendSuper2(&v63, sel_init);
  LOBYTE(v19) = v16(ObjectType, a2);
  v28 = &v27[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_viewModel];
  swift_beginAccess();
  v65[0] = *v28;
  v29 = *(v28 + 1);
  v30 = *(v28 + 2);
  v31 = *(v28 + 4);
  v65[3] = *(v28 + 3);
  v65[4] = v31;
  v65[1] = v29;
  v65[2] = v30;
  v32 = *(v28 + 5);
  v33 = *(v28 + 6);
  v34 = *(v28 + 8);
  v65[7] = *(v28 + 7);
  v65[8] = v34;
  v65[5] = v32;
  v65[6] = v33;
  v35 = *(v28 + 9);
  v36 = *(v28 + 10);
  v37 = *(v28 + 12);
  v65[11] = *(v28 + 11);
  v65[12] = v37;
  v65[9] = v35;
  v65[10] = v36;
  v38 = *(v28 + 11);
  v60 = *(v28 + 10);
  v61 = v38;
  v62 = *(v28 + 12);
  v39 = *(v28 + 7);
  v56 = *(v28 + 6);
  v57 = v39;
  v40 = *(v28 + 9);
  v58 = *(v28 + 8);
  v59 = v40;
  v41 = *(v28 + 3);
  v52 = *(v28 + 2);
  v53 = v41;
  v42 = *(v28 + 5);
  v54 = *(v28 + 4);
  v55 = v42;
  v43 = *(v28 + 1);
  v50 = *v28;
  v51 = v43;
  sub_269009E3C(v65, v66);
  v44 = sub_269056710(v19, &v50);
  v46 = v45;

  v66[10] = v60;
  v66[11] = v61;
  v66[12] = v62;
  v66[6] = v56;
  v66[7] = v57;
  v66[8] = v58;
  v66[9] = v59;
  v66[2] = v52;
  v66[3] = v53;
  v66[4] = v54;
  v66[5] = v55;
  v66[0] = v50;
  v66[1] = v51;
  sub_269009EE0(v66);
  v47 = &v27[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_presentingViewController];
  v48 = *&v27[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_presentingViewController];
  *v47 = v44;
  v47[1] = v46;

  return v27;
}

double sub_2690548A4@<D0>(unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ObjectType = swift_getObjectType();
  v218 = a2;
  v213 = *(a2 + 88);
  v216 = v213(ObjectType, a2);
  v219 = v4;
  if (qword_2802F3248 != -1)
  {
LABEL_120:
    swift_once();
  }

  v5 = 0xED0000454C544954;
  v6 = 0x5F53534543435553;
  v220 = byte_2802F5130;
  v7 = sub_269051B18(byte_2802F5130);
  strcpy(v221, "SUCCESS_TITLE");
  HIWORD(v221[1]) = -4864;
  MEMORY[0x26D62FBC0](v7);

  v8 = v221[0];
  v9 = v221[1];
  v10 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  v13 = v11 >> 1;
  v14 = v12 + 1;
  if (v11 >> 1 <= v12)
  {
    v10 = sub_26904DCD8((v11 > 1), v12 + 1, 1, v10);
    v11 = *(v10 + 3);
    v13 = v11 >> 1;
  }

  *(v10 + 2) = v14;
  v15 = &v10[16 * v12];
  *(v15 + 4) = v8;
  *(v15 + 5) = v9;
  if (v13 < (v12 + 2))
  {
    v10 = sub_26904DCD8((v11 > 1), v12 + 2, 1, v10);
  }

  *(v10 + 2) = v12 + 2;
  v16 = &v10[16 * v14];
  strcpy(v16 + 32, "SUCCESS_TITLE");
  *(v16 + 23) = -4864;
  v17 = (v10 + 40);
  v18 = -v12;
  v19 = -1;
  while (v18 + v19 != 1)
  {
    if (++v19 >= *(v10 + 2))
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
      goto LABEL_120;
    }

    v20 = v17 + 2;
    v21 = *(v17 - 1);
    v22 = *v17;

    v23 = sub_26902F7F4(v21, v22, 0);
    v25 = v24;

    v17 = v20;
    if (v25)
    {

      v6 = v23;
      v5 = v25;
      v26 = v219;
      if (!v219)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0x5F53534543435553, 0xED0000454C544954);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v27 = sub_269057774();
  __swift_project_value_buffer(v27, qword_2802F3FF8);
  v28 = sub_269057A94();
  v221[0] = 0xD00000000000003BLL;
  v221[1] = 0x800000026905BF00;
  v29 = sub_269057764();
  if (os_log_type_enabled(v29, v28))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v235[0] = v31;
    *v30 = 136315138;
    v32 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v235);

    *(v30 + 4) = v32;
    _os_log_impl(&dword_269002000, v29, v28, "%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x26D6309D0](v31, -1, -1);
    MEMORY[0x26D6309D0](v30, -1, -1);
  }

  else
  {
  }

  v26 = v219;
  if (v219)
  {
LABEL_18:
    sub_26902FAA0(v6, v5, v216, v26);
  }

LABEL_19:
  v33 = sub_2690519EC(v220);
  strcpy(v235, "%DEVICE_NAME%");
  HIWORD(v235[1]) = -4864;
  v233 = v33;
  v234 = v34;
  sub_26900BE9C();
  sub_269057BE4();

  v35 = sub_2690519EC(v220);
  v219 = 0xD000000000000014;
  v235[0] = 0xD000000000000014;
  v235[1] = 0x800000026905BEA0;
  v216 = 0x800000026905BEA0;
  v233 = v35;
  v234 = v36;
  v37 = sub_269057BE4();
  v214 = v38;
  v215 = v37;

  v39 = 0x800000026905FE80;
  v213 = v213(ObjectType, v218);
  v41 = v40;
  v42 = sub_269051B18(v220);
  v43 = 0xD000000000000010;
  v221[0] = 0xD000000000000010;
  v221[1] = 0x800000026905FE80;
  MEMORY[0x26D62FBC0](v42);

  v44 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v46 = *(v44 + 2);
  v45 = *(v44 + 3);
  v47 = v45 >> 1;
  v48 = v46 + 1;
  if (v45 >> 1 <= v46)
  {
    v44 = sub_26904DCD8((v45 > 1), v46 + 1, 1, v44);
    v45 = *(v44 + 3);
    v47 = v45 >> 1;
  }

  *(v44 + 2) = v48;
  v49 = &v44[16 * v46];
  *(v49 + 4) = 0xD000000000000010;
  *(v49 + 5) = 0x800000026905FE80;
  v210 = v41;
  if (v47 < (v46 + 2))
  {
    v44 = sub_26904DCD8((v45 > 1), v46 + 2, 1, v44);
  }

  *(v44 + 2) = v46 + 2;
  v50 = &v44[16 * v48];
  *(v50 + 4) = 0xD000000000000010;
  *(v50 + 5) = 0x800000026905FE80;
  v51 = (v44 + 40);
  v52 = -v46;
  v53 = -1;
  while (v52 + v53 != 1)
  {
    if (++v53 >= *(v44 + 2))
    {
      goto LABEL_115;
    }

    v54 = v51 + 2;
    v55 = *(v51 - 1);
    v56 = *v51;

    v57 = sub_26902F7F4(v55, v56, 0);
    v59 = v58;

    v51 = v54;
    if (v59)
    {

      v43 = v57;
      v39 = v59;
      goto LABEL_34;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000010, 0x800000026905FE80);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v60 = sub_269057774();
  __swift_project_value_buffer(v60, qword_2802F3FF8);
  v61 = sub_269057A94();
  v221[0] = 0xD00000000000003BLL;
  v221[1] = 0x800000026905BF00;
  v62 = sub_269057764();
  if (os_log_type_enabled(v62, v61))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v235[0] = v64;
    *v63 = 136315138;
    v65 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v235);

    *(v63 + 4) = v65;
    _os_log_impl(&dword_269002000, v62, v61, "%s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    MEMORY[0x26D6309D0](v64, -1, -1);
    MEMORY[0x26D6309D0](v63, -1, -1);
  }

  else
  {
  }

LABEL_34:
  if (v210)
  {
    sub_26902FAA0(v43, v39, v213, v210);
  }

  v66 = sub_2690519EC(v220);
  v234 = v67;
  strcpy(v235, "%DEVICE_NAME%");
  HIWORD(v235[1]) = -4864;
  v233 = v66;
  v68 = sub_269057BE4();
  v70 = v69;

  v71 = sub_2690519EC(v220);
  v221[0] = v68;
  v221[1] = v70;
  v235[0] = 0xD000000000000014;
  v235[1] = 0x800000026905BEA0;
  v233 = v71;
  v234 = v72;
  v73 = sub_269057BE4();
  v212 = v74;
  v213 = v73;

  (*(v218 + 32))(&v232, ObjectType);
  if (v232 > 1u)
  {
    if (v232 != 2)
    {
      v123 = 0;
      v124 = 0;
      v125 = 0;
      v126 = 0xE000000000000000;
      goto LABEL_104;
    }

    v91 = sub_269051B18(v220);
    v221[0] = 0xD000000000000018;
    v221[1] = 0x800000026905FEC0;
    MEMORY[0x26D62FBC0](v91);

    v92 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v94 = *(v92 + 2);
    v93 = *(v92 + 3);
    v95 = v93 >> 1;
    v96 = v94 + 1;
    if (v93 >> 1 <= v94)
    {
      v92 = sub_26904DCD8((v93 > 1), v94 + 1, 1, v92);
      v93 = *(v92 + 3);
      v95 = v93 >> 1;
    }

    *(v92 + 2) = v96;
    v97 = &v92[16 * v94];
    *(v97 + 4) = 0xD000000000000018;
    *(v97 + 5) = 0x800000026905FEC0;
    if (v95 < (v94 + 2))
    {
      v92 = sub_26904DCD8((v93 > 1), v94 + 2, 1, v92);
    }

    *(v92 + 2) = v94 + 2;
    v98 = &v92[16 * v96];
    *(v98 + 4) = 0xD000000000000018;
    *(v98 + 5) = 0x800000026905FEC0;
    v99 = (v92 + 40);
    v100 = -v94;
    v101 = -1;
    while (v100 + v101 != 1)
    {
      if (++v101 >= *(v92 + 2))
      {
        goto LABEL_117;
      }

      v102 = v99 + 2;
      v103 = *(v99 - 1);
      v104 = *v99;

      sub_26902F7F4(v103, v104, 0);
      v106 = v105;

      v99 = v102;
      if (v106)
      {

        goto LABEL_84;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD000000000000018, 0x800000026905FEC0);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v133 = sub_269057774();
    __swift_project_value_buffer(v133, qword_2802F3FF8);
    v134 = sub_269057A94();
    v221[0] = 0xD00000000000003BLL;
    v221[1] = 0x800000026905BF00;
    v135 = sub_269057764();
    if (os_log_type_enabled(v135, v134))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v235[0] = v137;
      *v136 = 136315138;
      v138 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v235);

      *(v136 + 4) = v138;
      _os_log_impl(&dword_269002000, v135, v134, "%s", v136, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v137);
      MEMORY[0x26D6309D0](v137, -1, -1);
      MEMORY[0x26D6309D0](v136, -1, -1);
    }

    else
    {
    }

LABEL_84:
    v153 = sub_2690519EC(v220);
    v234 = v154;
    strcpy(v235, "%DEVICE_NAME%");
    HIWORD(v235[1]) = -4864;
    v233 = v153;
    v155 = sub_269057BE4();
    v157 = v156;

    v158 = sub_2690519EC(v220);
    v221[0] = v155;
    v221[1] = v157;
    v235[0] = 0xD000000000000014;
    v235[1] = 0x800000026905BEA0;
    v233 = v158;
    v234 = v159;
    v125 = sub_269057BE4();
    v126 = v160;

    goto LABEL_85;
  }

  if (!v232)
  {
    v75 = sub_269051B18(v220);
    v221[0] = 0xD000000000000014;
    v221[1] = 0x800000026905FF00;
    MEMORY[0x26D62FBC0](v75);

    v76 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v78 = *(v76 + 2);
    v77 = *(v76 + 3);
    v79 = v77 >> 1;
    v80 = v78 + 1;
    if (v77 >> 1 <= v78)
    {
      v76 = sub_26904DCD8((v77 > 1), v78 + 1, 1, v76);
      v77 = *(v76 + 3);
      v79 = v77 >> 1;
    }

    *(v76 + 2) = v80;
    v81 = &v76[16 * v78];
    *(v81 + 4) = 0xD000000000000014;
    *(v81 + 5) = 0x800000026905FF00;
    if (v79 < (v78 + 2))
    {
      v76 = sub_26904DCD8((v77 > 1), v78 + 2, 1, v76);
    }

    *(v76 + 2) = v78 + 2;
    v82 = &v76[16 * v80];
    *(v82 + 4) = 0xD000000000000014;
    *(v82 + 5) = 0x800000026905FF00;
    v83 = (v76 + 40);
    v84 = -v78;
    v85 = -1;
    while (v84 + v85 != 1)
    {
      if (++v85 >= *(v76 + 2))
      {
        goto LABEL_116;
      }

      v86 = v83 + 2;
      v87 = *(v83 - 1);
      v88 = *v83;

      sub_26902F7F4(v87, v88, 0);
      v90 = v89;

      v83 = v86;
      if (v90)
      {

        goto LABEL_81;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD000000000000014, 0x800000026905FF00);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v127 = sub_269057774();
    __swift_project_value_buffer(v127, qword_2802F3FF8);
    v128 = sub_269057A94();
    v221[0] = 0xD00000000000003BLL;
    v221[1] = 0x800000026905BF00;
    v129 = sub_269057764();
    if (os_log_type_enabled(v129, v128))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v235[0] = v131;
      *v130 = 136315138;
      v132 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v235);

      *(v130 + 4) = v132;
      _os_log_impl(&dword_269002000, v129, v128, "%s", v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v131);
      MEMORY[0x26D6309D0](v131, -1, -1);
      MEMORY[0x26D6309D0](v130, -1, -1);
    }

    else
    {
    }

LABEL_81:
    v145 = sub_2690519EC(v220);
    v234 = v146;
    strcpy(v235, "%DEVICE_NAME%");
    HIWORD(v235[1]) = -4864;
    v233 = v145;
    v147 = sub_269057BE4();
    v149 = v148;

    v150 = sub_2690519EC(v220);
    v221[0] = v147;
    v221[1] = v149;
    v235[0] = 0xD000000000000014;
    v235[1] = 0x800000026905BEA0;
    v233 = v150;
    v234 = v151;
    v125 = sub_269057BE4();
    v126 = v152;

LABEL_85:

    v123 = 0;
    v124 = 0;
    goto LABEL_104;
  }

  v107 = sub_269051B18(v220);
  v221[0] = 0xD000000000000018;
  v221[1] = 0x800000026905FEC0;
  MEMORY[0x26D62FBC0](v107);

  v108 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v110 = *(v108 + 2);
  v109 = *(v108 + 3);
  v111 = v109 >> 1;
  v112 = v110 + 1;
  if (v109 >> 1 <= v110)
  {
    v108 = sub_26904DCD8((v109 > 1), v110 + 1, 1, v108);
    v109 = *(v108 + 3);
    v111 = v109 >> 1;
  }

  *(v108 + 2) = v112;
  v113 = &v108[16 * v110];
  *(v113 + 4) = 0xD000000000000018;
  *(v113 + 5) = 0x800000026905FEC0;
  if (v111 < (v110 + 2))
  {
    v108 = sub_26904DCD8((v109 > 1), v110 + 2, 1, v108);
  }

  *(v108 + 2) = v110 + 2;
  v114 = &v108[16 * v112];
  *(v114 + 4) = 0xD000000000000018;
  *(v114 + 5) = 0x800000026905FEC0;
  v115 = (v108 + 40);
  v116 = -v110;
  v117 = -1;
  while (v116 + v117 != 1)
  {
    if (++v117 >= *(v108 + 2))
    {
      goto LABEL_118;
    }

    v118 = v115 + 2;
    v119 = *(v115 - 1);
    v120 = *v115;

    sub_26902F7F4(v119, v120, 0);
    v122 = v121;

    v115 = v118;
    if (v122)
    {

      goto LABEL_88;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000018, 0x800000026905FEC0);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v139 = sub_269057774();
  __swift_project_value_buffer(v139, qword_2802F3FF8);
  v140 = sub_269057A94();
  v221[0] = 0xD00000000000003BLL;
  v221[1] = 0x800000026905BF00;
  v141 = sub_269057764();
  if (os_log_type_enabled(v141, v140))
  {
    v142 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    v235[0] = v143;
    *v142 = 136315138;
    v144 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v235);

    *(v142 + 4) = v144;
    _os_log_impl(&dword_269002000, v141, v140, "%s", v142, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v143);
    MEMORY[0x26D6309D0](v143, -1, -1);
    MEMORY[0x26D6309D0](v142, -1, -1);
  }

  else
  {
  }

LABEL_88:
  v161 = sub_2690519EC(v220);
  v234 = v162;
  strcpy(v235, "%DEVICE_NAME%");
  HIWORD(v235[1]) = -4864;
  v233 = v161;
  sub_269057BE4();

  v163 = sub_2690519EC(v220);
  v235[0] = 0xD000000000000014;
  v235[1] = 0x800000026905BEA0;
  v233 = v163;
  v234 = v164;
  v125 = sub_269057BE4();
  v126 = v165;

  v166 = sub_269051B18(v220);
  v218 = 0xD000000000000016;
  v221[0] = 0xD000000000000016;
  v221[1] = 0x800000026905FEE0;
  MEMORY[0x26D62FBC0](v166);

  v167 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v169 = *(v167 + 2);
  v168 = *(v167 + 3);
  v170 = v168 >> 1;
  v171 = v169 + 1;
  if (v168 >> 1 <= v169)
  {
    v167 = sub_26904DCD8((v168 > 1), v169 + 1, 1, v167);
    v168 = *(v167 + 3);
    v170 = v168 >> 1;
  }

  *(v167 + 2) = v171;
  v172 = &v167[16 * v169];
  *(v172 + 4) = 0xD000000000000016;
  *(v172 + 5) = 0x800000026905FEE0;
  if (v170 < (v169 + 2))
  {
    v167 = sub_26904DCD8((v168 > 1), v169 + 2, 1, v167);
  }

  *(v167 + 2) = v169 + 2;
  v173 = &v167[16 * v171];
  *(v173 + 4) = 0xD000000000000016;
  *(v173 + 5) = 0x800000026905FEE0;
  v174 = (v167 + 40);
  v175 = -v169;
  v176 = -1;
  while (v175 + v176 != 1)
  {
    if (++v176 >= *(v167 + 2))
    {
      goto LABEL_119;
    }

    v177 = v174 + 2;
    v178 = *(v174 - 1);
    v179 = *v174;

    sub_26902F7F4(v178, v179, 0);
    v181 = v180;

    v174 = v177;
    if (v181)
    {

      goto LABEL_103;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000016, 0x800000026905FEE0);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v182 = sub_269057774();
  __swift_project_value_buffer(v182, qword_2802F3FF8);
  v183 = sub_269057A94();
  v221[0] = 0xD00000000000003BLL;
  v221[1] = 0x800000026905BF00;
  v184 = sub_269057764();
  if (os_log_type_enabled(v184, v183))
  {
    v185 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    v235[0] = v186;
    *v185 = 136315138;
    v187 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v235);

    *(v185 + 4) = v187;
    _os_log_impl(&dword_269002000, v184, v183, "%s", v185, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v186);
    MEMORY[0x26D6309D0](v186, -1, -1);
    MEMORY[0x26D6309D0](v185, -1, -1);
  }

  else
  {
  }

LABEL_103:
  v188 = sub_2690519EC(v220);
  v234 = v189;
  strcpy(v235, "%DEVICE_NAME%");
  HIWORD(v235[1]) = -4864;
  v233 = v188;
  v190 = sub_269057BE4();
  v192 = v191;

  v193 = sub_2690519EC(v220);
  v221[0] = v190;
  v221[1] = v192;
  v235[0] = 0xD000000000000014;
  v235[1] = 0x800000026905BEA0;
  v233 = v193;
  v234 = v194;
  v123 = sub_269057BE4();
  v124 = v195;

LABEL_104:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F36F0, &qword_26905A3C0);
  v196 = swift_allocObject();
  *(v196 + 16) = xmmword_269059EE0;
  *(v196 + 32) = v125;
  *(v196 + 40) = v126;
  v197 = 0x800000026905D710;
  sub_269057C54();
  v235[0] = 0;
  v235[1] = 0xE000000000000000;
  v198 = 0xD00000000000001CLL;
  MEMORY[0x26D62FBC0](0xD00000000000001CLL, 0x800000026905FEA0);
  v221[0] = 0;
  v221[1] = 0;
  v221[2] = v215;
  v221[3] = v214;
  v221[4] = v213;
  v221[5] = v212;
  v221[6] = 0;
  v221[7] = 0xE000000000000000;
  v221[8] = v196;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v226 = v123;
  v227 = v124;
  v228 = 2;
  v229 = 0;
  v230 = 0;
  v231[0] = 0;
  *(v231 + 7) = 0;
  v231[2] = 0;
  v231[3] = 0;
  sub_269057CB4();
  v199 = v235[0];
  v200 = v235[1];
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v201 = sub_269057774();
  __swift_project_value_buffer(v201, qword_2802F3FF8);
  v202 = sub_269057AA4();
  v221[0] = 0xD00000000000001CLL;
  v221[1] = 0x800000026905D710;
  v203 = HIBYTE(v200) & 0xF;
  if ((v200 & 0x2000000000000000) == 0)
  {
    v203 = v199 & 0xFFFFFFFFFFFFLL;
  }

  if (v203)
  {
    v235[0] = 32;
    v235[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v199, v200);
    MEMORY[0x26D62FBC0](v235[0], v235[1]);

    v198 = v221[0];
    v197 = v221[1];
  }

  v204 = sub_269057764();
  if (os_log_type_enabled(v204, v202))
  {
    v205 = swift_slowAlloc();
    v206 = swift_slowAlloc();
    v235[0] = v206;
    *v205 = 136315138;
    v207 = sub_269010108(v198, v197, v235);

    *(v205 + 4) = v207;
    _os_log_impl(&dword_269002000, v204, v202, "%s", v205, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v206);
    MEMORY[0x26D6309D0](v206, -1, -1);
    MEMORY[0x26D6309D0](v205, -1, -1);
  }

  else
  {
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = v215;
  *(a3 + 24) = v214;
  *(a3 + 32) = v213;
  *(a3 + 40) = v212;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0xE000000000000000;
  *(a3 + 64) = v196;
  result = 0.0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = v123;
  *(a3 + 144) = v124;
  *(a3 + 152) = 2;
  v209 = v221[0];
  *(a3 + 156) = *(v221 + 3);
  *(a3 + 153) = v209;
  *(a3 + 168) = 0;
  *(a3 + 176) = 0;
  *(a3 + 183) = 0;
  *(a3 + 160) = 0;
  *(a3 + 187) = v235[0];
  *(a3 + 191) = BYTE4(v235[0]);
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  return result;
}

char *sub_269056710(char a1, _OWORD *a2)
{
  v2 = a2[11];
  v48[10] = a2[10];
  v48[11] = v2;
  v48[12] = a2[12];
  v3 = a2[7];
  v48[6] = a2[6];
  v48[7] = v3;
  v4 = a2[9];
  v48[8] = a2[8];
  v48[9] = v4;
  v5 = a2[3];
  v48[2] = a2[2];
  v48[3] = v5;
  v6 = a2[5];
  v48[4] = a2[4];
  v48[5] = v6;
  v7 = a2[1];
  v48[0] = *a2;
  v48[1] = v7;
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = 0xD000000000000028;
      v9 = 0x800000026905D8D0;
      *&v35 = 0;
      *(&v35 + 1) = 0xE000000000000000;
      sub_269057C54();
      MEMORY[0x26D62FBC0](0xD00000000000002CLL, 0x800000026905FE10);
      LOBYTE(v34[0]) = 1;
      sub_269057CB4();
      MEMORY[0x26D62FBC0](0xD000000000000014, 0x800000026905FE40);
      v10 = v35;
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v11 = sub_269057774();
      __swift_project_value_buffer(v11, qword_2802F3FF8);
      v12 = sub_269057A94();
      *&v35 = 0xD000000000000028;
      *(&v35 + 1) = 0x800000026905D8D0;
      v13 = HIBYTE(*(&v10 + 1)) & 0xFLL;
      if ((*(&v10 + 1) & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        v34[0] = 32;
        v34[1] = 0xE100000000000000;
        MEMORY[0x26D62FBC0](v10, *(&v10 + 1));
        MEMORY[0x26D62FBC0](32, 0xE100000000000000);

        v9 = *(&v35 + 1);
        v8 = v35;
      }

      v14 = sub_269057764();
      if (os_log_type_enabled(v14, v12))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v34[0] = v16;
        *v15 = 136315138;
        v17 = sub_269010108(v8, v9, v34);

        *(v15 + 4) = v17;
        _os_log_impl(&dword_269002000, v14, v12, "%s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x26D6309D0](v16, -1, -1);
        MEMORY[0x26D6309D0](v15, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    else
    {
      v26 = a2[11];
      v45 = a2[10];
      v46 = v26;
      v47 = a2[12];
      v27 = a2[7];
      v41 = a2[6];
      v42 = v27;
      v28 = a2[9];
      v43 = a2[8];
      v44 = v28;
      v29 = a2[3];
      v37 = a2[2];
      v38 = v29;
      v30 = a2[5];
      v39 = a2[4];
      v40 = v30;
      v31 = a2[1];
      v35 = *a2;
      v36 = v31;
      v32 = objc_allocWithZone(type metadata accessor for SuccessProxCardController());
      sub_269009E3C(v48, v34);
      v25 = sub_269032658(&v35);
      *&v25[OBJC_IVAR____TtC9SiriSetup25SuccessProxCardController_delegate + 8] = &off_2879A9000;
      swift_unknownObjectWeakAssign();
    }
  }

  else
  {
    v18 = a2[11];
    v45 = a2[10];
    v46 = v18;
    v47 = a2[12];
    v19 = a2[7];
    v41 = a2[6];
    v42 = v19;
    v20 = a2[9];
    v43 = a2[8];
    v44 = v20;
    v21 = a2[3];
    v37 = a2[2];
    v38 = v21;
    v22 = a2[5];
    v39 = a2[4];
    v40 = v22;
    v23 = a2[1];
    v35 = *a2;
    v36 = v23;
    v24 = objc_allocWithZone(type metadata accessor for SuccessWelcomeController());
    sub_269009E3C(v48, v34);
    v25 = sub_269025E64(&v35);
    *&v25[OBJC_IVAR____TtC9SiriSetup24SuccessWelcomeController_delegate + 8] = &off_2879A9000;
    swift_unknownObjectWeakAssign();
  }

  return v25;
}

id sub_269056B00(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SuccessPresenter();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_269056C1C@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_viewModel);
  swift_beginAccess();
  v4 = v3[9];
  v5 = v3[11];
  v32 = v3[10];
  v33 = v5;
  v6 = v3[11];
  v34 = v3[12];
  v7 = v3[5];
  v8 = v3[7];
  v28 = v3[6];
  v9 = v28;
  v29 = v8;
  v10 = v3[7];
  v11 = v3[9];
  v30 = v3[8];
  v12 = v30;
  v31 = v11;
  v13 = v3[1];
  v14 = v3[3];
  v24 = v3[2];
  v15 = v24;
  v25 = v14;
  v16 = v3[3];
  v17 = v3[5];
  v26 = v3[4];
  v18 = v26;
  v27 = v17;
  v19 = v3[1];
  v23[0] = *v3;
  v20 = v23[0];
  v23[1] = v19;
  a1[10] = v32;
  a1[11] = v6;
  a1[12] = v3[12];
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v12;
  a1[9] = v4;
  a1[2] = v15;
  a1[3] = v16;
  a1[4] = v18;
  a1[5] = v7;
  *a1 = v20;
  a1[1] = v13;
  return sub_269009E3C(v23, v22);
}

uint64_t sub_269056CEC(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_viewModel);
  swift_beginAccess();
  v4 = v3[10];
  v5 = v3[11];
  v6 = v3[8];
  v19[9] = v3[9];
  v19[10] = v4;
  v7 = v3[12];
  v19[11] = v5;
  v19[12] = v7;
  v8 = v3[6];
  v19[7] = v3[7];
  v19[8] = v6;
  v9 = v3[3];
  v19[2] = v3[2];
  v19[3] = v9;
  v10 = v3[4];
  v19[5] = v3[5];
  v19[6] = v8;
  v19[4] = v10;
  v11 = v3[1];
  v19[0] = *v3;
  v19[1] = v11;
  v12 = a1[11];
  v3[10] = a1[10];
  v3[11] = v12;
  v3[12] = a1[12];
  v13 = a1[7];
  v3[6] = a1[6];
  v3[7] = v13;
  v14 = a1[9];
  v3[8] = a1[8];
  v3[9] = v14;
  v15 = a1[3];
  v3[2] = a1[2];
  v3[3] = v15;
  v16 = a1[5];
  v3[4] = a1[4];
  v3[5] = v16;
  v17 = a1[1];
  *v3 = *a1;
  v3[1] = v17;
  return sub_269009EE0(v19);
}

void *sub_269056E18()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_presentingViewController);
  v2 = v1;
  return v1;
}

void sub_269056E60(uint64_t a1)
{
  v3 = (a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriLanguage);
  v4 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriLanguage + 8);
  if (v4)
  {
    v5 = (v1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_languageCode);
    *v5 = *v3;
    v5[1] = v4;
  }

  v6 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriVoice);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice);
    *(v1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice) = v6;
    v8 = v6;
  }

  v9 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriEnabled);
  if (v9)
  {
    *(v1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriEnabled) = v9 == 2;
  }

  if ((*(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriDataSharingStatus + 8) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriDataSharingStatus) = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriDataSharingStatus);
  }

  v10 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_voiceTriggerEnabled);
  if (v10)
  {
    *(v1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_voiceTriggerEnabled) = v10 == 2;
  }

  v11 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_recognizeMyVoiceEnabled);
  if (v11)
  {
    *(v1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_recognizeMyVoiceEnabled) = v11 == 2;
  }

  v12 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriInCallEnabled);
  if (v12)
  {
    *(v1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriInCallEnabled) = v12 == 2;
  }
}

id sub_269056FE8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LocalDataSource();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_269057104()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_iCloudAltDSID);

  return v1;
}

uint64_t sub_269057140()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriSharedUserId);

  return v1;
}

uint64_t sub_26905717C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_personaId);

  return v1;
}

uint64_t sub_26905721C()
{
  result = *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_overrideViewStyle);
  if (result == 3)
  {
    return 0x20100u >> (8 * *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_enrollmentMode));
  }

  return result;
}

uint64_t sub_269057250()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_languageCode);

  return v1;
}

uint64_t sub_26905728C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_bestSupportedLanguageCode);

  return v1;
}

void *sub_269057318()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice);
  v2 = v1;
  return v1;
}

void *sub_2690573B4(char a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 56))(v14);
  *(v7 + 152) = a1;
  v6(v14, 0);
  result = (*(a3 + 80))(a2, a3);
  if (result)
  {
    v10 = v9;
    v11 = result;
    ObjectType = swift_getObjectType();
    v14[5] = v11;
    v13 = *(a3 + 40);
    v14[3] = &type metadata for ViewModel;
    v14[4] = &off_2879A7790;
    v14[0] = swift_allocObject();
    v13(a2, a3);
    (*(v10 + 16))(v14, 1, ObjectType, v10);

    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  return result;
}

uint64_t sub_2690574E8()
{

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

unint64_t sub_269057594()
{
  result = qword_2802F4128;
  if (!qword_2802F4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F4128);
  }

  return result;
}