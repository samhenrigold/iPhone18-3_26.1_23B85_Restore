uint64_t sub_26901CEE0(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3868, &qword_26905A590);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for VoiceTrainingProxController();
  v13.receiver = v1;
  v13.super_class = v6;
  objc_msgSendSuper2(&v13, sel_viewDidAppear_, a1 & 1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_269057A64();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    sub_269057A44();
    swift_unknownObjectRetain();
    v10 = sub_269057A34();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v8;
    sub_269038934(0, 0, v5, &unk_26905A598, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_26901D098(uint64_t a1)
{
  if (*(a1 + 80))
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v3 = v1;
    v4 = sub_269057944();
    v17 = sub_26901E068;
    v18 = v2;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_26904BBEC;
    v16 = &block_descriptor_25;
    v5 = _Block_copy(&v13);
    v6 = [objc_opt_self() actionWithTitle:v4 style:1 handler:v5];

    _Block_release(v5);

    v7 = [v3 addAction_];
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  v9 = v1;
  v10 = sub_269057944();
  v17 = sub_26901E020;
  v18 = v8;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_26904BBEC;
  v16 = &block_descriptor_4;
  v11 = _Block_copy(&v13);
  v12 = [objc_opt_self() actionWithTitle:v10 style:0 handler:v11];

  _Block_release(v11);

  [v9 setDismissButtonAction_];
}

uint64_t sub_26901D2CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a3();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26901D32C(void *a1, char a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC9SiriSetup27VoiceTrainingProxController_viewModel;
  swift_beginAccess();
  sub_269009C7C(&v2[v6], &v68);
  v7 = v69;
  v8 = v70;
  __swift_project_boxed_opaque_existential_1(&v68, v69);
  v9 = (*(v8 + 32))(v7, v8);
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(&v68);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  if (v9 == (*(v13 + 32))(v12, v13) && v11 == v14)
  {
  }

  else
  {
    v16 = sub_269057DE4();

    if (v16)
    {
      goto LABEL_18;
    }

    v65 = a2;
    v17 = 0xD000000000000013;
    v18 = 0x800000026905D480;
    *&v68 = 0;
    *(&v68 + 1) = 0xE000000000000000;
    sub_269057C54();

    *&v68 = 0xD000000000000013;
    *(&v68 + 1) = 0x800000026905D4A0;
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    v21 = (*(v20 + 32))(v19, v20);
    MEMORY[0x26D62FBC0](v21);

    v22 = v68;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v23 = sub_269057774();
    __swift_project_value_buffer(v23, qword_2802F3FF8);
    v24 = sub_269057AA4();
    *&v68 = 0xD000000000000013;
    *(&v68 + 1) = 0x800000026905D480;
    v25 = HIBYTE(*(&v22 + 1)) & 0xFLL;
    if ((*(&v22 + 1) & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v66 = 32;
      v67 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v22, *(&v22 + 1));
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v18 = *(&v68 + 1);
      v17 = v68;
    }

    v26 = sub_269057764();
    if (os_log_type_enabled(v26, v24))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v66 = v28;
      *v27 = 136315138;
      v29 = sub_269010108(v17, v18, &v66);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_269002000, v26, v24, "%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x26D6309D0](v28, -1, -1);
      MEMORY[0x26D6309D0](v27, -1, -1);
    }

    else
    {
    }

    v30 = a1[3];
    v31 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v30);
    v32 = (*(v31 + 32))(v30, v31);
    sub_26901DA58(v32, v33, v65 & 1);
  }

LABEL_18:
  sub_269009C7C(&v3[v6], &v68);
  v34 = v69;
  v35 = v70;
  __swift_project_boxed_opaque_existential_1(&v68, v69);
  v36 = (*(v35 + 176))(v34, v35);
  v38 = v37;
  __swift_destroy_boxed_opaque_existential_1Tm(&v68);
  v39 = a1[3];
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v39);
  v41 = (*(v40 + 176))(v39, v40);
  if (!v38)
  {
    if (!v42)
    {
      goto LABEL_41;
    }

    goto LABEL_24;
  }

  if (!v42)
  {
LABEL_24:

    goto LABEL_25;
  }

  if (v36 == v41 && v38 == v42)
  {

    goto LABEL_41;
  }

  v64 = sub_269057DE4();

  if (v64)
  {
    goto LABEL_41;
  }

LABEL_25:
  v43 = 0xD000000000000013;
  *&v68 = 0;
  *(&v68 + 1) = 0xE000000000000000;
  sub_269057C54();

  *&v68 = 0xD00000000000001ELL;
  *(&v68 + 1) = 0x800000026905D4C0;
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  v46 = (*(v45 + 176))(v44, v45);
  if (v47)
  {
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0xE000000000000000;
  }

  v49 = 0x800000026905D480;
  MEMORY[0x26D62FBC0](v46, v48);

  v50 = *(&v68 + 1);
  v51 = v68;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v52 = sub_269057774();
  __swift_project_value_buffer(v52, qword_2802F3FF8);
  v53 = sub_269057AA4();
  *&v68 = 0xD000000000000013;
  *(&v68 + 1) = 0x800000026905D480;
  v54 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v54 = v51 & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {
    v66 = 32;
    v67 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v51, v50);
    MEMORY[0x26D62FBC0](v66, v67);

    v49 = *(&v68 + 1);
    v43 = v68;
  }

  v55 = sub_269057764();
  if (os_log_type_enabled(v55, v53))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v66 = v57;
    *v56 = 136315138;
    v58 = sub_269010108(v43, v49, &v66);

    *(v56 + 4) = v58;
    _os_log_impl(&dword_269002000, v55, v53, "%s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x26D6309D0](v57, -1, -1);
    MEMORY[0x26D6309D0](v56, -1, -1);
  }

  else
  {
  }

  v59 = a1[3];
  v60 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v59);
  (*(v60 + 176))(v59, v60);
  if (v61)
  {
    v62 = sub_269057944();
  }

  else
  {
    v62 = 0;
  }

  [v3 setBottomTrayTitle_];

LABEL_41:
  sub_269009C7C(a1, &v68);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(&v3[v6]);
  sub_269009D24(&v68, &v3[v6]);
  return swift_endAccess();
}

void sub_26901DA58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = v3 + OBJC_IVAR____TtC9SiriSetup27VoiceTrainingProxController_viewModel;
  swift_beginAccess();
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  v11 = *(v10 + 40);

  v11(a1, a2, v9, v10);
  swift_endAccess();
  v12 = sub_269057944();
  [v4 setTitle_];

  v13 = [objc_allocWithZone(MEMORY[0x277CDA000]) init];
  v14 = *MEMORY[0x277CDA7B8];
  v15 = objc_opt_self();
  v16 = v13;
  v17 = [v15 functionWithName_];
  [v16 setTimingFunction_];

  v18 = 0.2;
  if ((a3 & 1) == 0)
  {
    v18 = 0.0;
  }

  [v16 setDuration_];

  [v16 setType_];
  v19 = [v4 view];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 semanticContentAttribute];

    v22 = MEMORY[0x277CDA938];
    if (v21 != 4)
    {
      v22 = MEMORY[0x277CDA940];
    }

    v23 = *v22;
    [v16 setSubtype_];

    v24 = [v4 contentView];
    v25 = [v24 layer];

    [v25 removeAllAnimations];
    v26 = [v4 contentView];
    v27 = [v26 layer];

    [v27 addAnimation:v16 forKey:*MEMORY[0x277CDA920]];
  }

  else
  {
    __break(1u);
  }
}

id sub_26901DD40(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VoiceTrainingProxController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_26901DE38(uint64_t a1, uint64_t a2, SEL *a3, uint64_t a4)
{
  v5 = *(*v4 + OBJC_IVAR____TtC9SiriSetup27VoiceTrainingProxController_orbView);
  if (v5)
  {
    return [*(v5 + OBJC_IVAR____TtC9SiriSetup16OrbContainerView_orbView) *a3];
  }

  return result;
}

void sub_26901DE68(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*v3 + OBJC_IVAR____TtC9SiriSetup27VoiceTrainingProxController_orbView);
  if (v4)
  {
    v8 = *&v4[OBJC_IVAR____TtC9SiriSetup16OrbContainerView_checkMark];
    v9 = v4;
    v10 = v8;
    sub_26901BE7C(a1 & 1, a2, a3);
  }
}

id sub_26901DF20()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9SiriSetup27VoiceTrainingProxController_orbView);
  if (v1)
  {
    return [*(v1 + OBJC_IVAR____TtC9SiriSetup16OrbContainerView_orbView) setPowerLevel_];
  }

  return result;
}

uint64_t sub_26901DF50()
{

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_26901DFE8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26901E098()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26901E0D8(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26901E18C;

  return sub_26903F2C8();
}

uint64_t sub_26901E18C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26901E28C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_26901E2BC(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_26901E2F4()
{
  v1 = *(v0 + 104);

  return v1;
}

void sub_26901E32C(_BYTE *a1@<X8>)
{
  v2 = v1[185];
  v3 = v1[186];
  *a1 = v1[184];
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_26901E348()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  return v1;
}

uint64_t sub_26901E3BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  return v1;
}

uint64_t sub_26901E430()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  return v1;
}

uint64_t sub_26901E4A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();
}

uint64_t sub_26901E51C()
{
  v1 = OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__prelude;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3940, &qword_26905A840);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__title;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3948, &qword_26905A848);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__subtitle, v2);
  v6(v0 + OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__caption, v5);
  v7 = OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__primaryButtonTexts;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3950, &qword_26905A850);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v3(v0 + OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__secondaryButtonText, v2);
  v3(v0 + OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__linkText, v2);
  v3(v0 + OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__navigationTitle, v2);
  v3(v0 + OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__continueButtonText, v2);
  v3(v0 + OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__backButtonText, v2);
  v9 = OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__loading;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3958, &qword_26905A858);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__bulletItems;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3960, &qword_26905A860);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v3(v0 + OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__disclaimerText, v2);
  v13 = OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__configuration;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3968, &qword_26905A868);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v3(v0 + OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__languageCode, v2);
  return v0;
}

uint64_t sub_26901E820()
{
  sub_26901E51C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ObservableViewModel(uint64_t a1)
{
  result = qword_2802F38E8;
  if (!qword_2802F38E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26901E8CC(uint64_t a1)
{
  sub_26901EB10(319, &qword_2802F38F8, &qword_2802F3548, &unk_269059F70);
  if (v1 <= 0x3F)
  {
    sub_26901EB64(319, &qword_2802F3900, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_26901EB10(319, &qword_2802F3908, &qword_2802F3910, &qword_26905A5E0);
      if (v3 <= 0x3F)
      {
        sub_26901EB10(319, &qword_2802F3918, &qword_2802F3920, &qword_26905A5E8);
        if (v4 <= 0x3F)
        {
          sub_26901EB10(319, &qword_2802F3928, &qword_2802F3930, &qword_26905A5F0);
          if (v5 <= 0x3F)
          {
            sub_26901EB64(319, &qword_2802F3938, &type metadata for SiriSetupCoordinator.ViewConfiguration);
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

void sub_26901EB10(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_269057854();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26901EB64(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_269057854();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
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

uint64_t sub_26901EBC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26901EC0C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_26901ECA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_26901ECEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26901ED70@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ObservableViewModel(0);
  result = sub_269057824();
  *a2 = result;
  return result;
}

uint64_t sub_26901EDB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  return v1;
}

uint64_t sub_26901EE28(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_269057844();
}

uint64_t sub_26901EEA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  return v1;
}

uint64_t sub_26901EF20()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  return v1;
}

uint64_t sub_26901EF98()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();
}

uint64_t sub_26901F020@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_26901F0A0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_269057844();
}

double sub_26901F124@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_26901F1A4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_269057844();
}

uint64_t sub_26901F228@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  *a2 = v4;
  return result;
}

uint64_t sub_26901F2A8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_269057844();
}

uint64_t sub_26901F31C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_26901F3B0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_269057844();
}

uint64_t sub_26901F458(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_viewModel);
  swift_beginAccess();
  v4 = v3[11];
  v38[10] = v3[10];
  v38[11] = v4;
  v38[12] = v3[12];
  v5 = v3[7];
  v38[6] = v3[6];
  v38[7] = v5;
  v6 = v3[9];
  v38[8] = v3[8];
  v38[9] = v6;
  v7 = v3[3];
  v38[2] = v3[2];
  v38[3] = v7;
  v8 = v3[5];
  v38[4] = v3[4];
  v38[5] = v8;
  v9 = v3[1];
  v38[0] = *v3;
  v38[1] = v9;
  v10 = a1[11];
  v3[10] = a1[10];
  v3[11] = v10;
  v3[12] = a1[12];
  v11 = a1[7];
  v3[6] = a1[6];
  v3[7] = v11;
  v12 = a1[9];
  v3[8] = a1[8];
  v3[9] = v12;
  v13 = a1[3];
  v3[2] = a1[2];
  v3[3] = v13;
  v14 = a1[5];
  v3[4] = a1[4];
  v3[5] = v14;
  v15 = a1[1];
  *v3 = *a1;
  v3[1] = v15;
  result = sub_269009EE0(v38);
  v17 = v1 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_presentingViewController;
  v18 = *(v1 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_presentingViewController);
  if (v18)
  {
    v19 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    v36[5] = v18;
    v21 = v3[11];
    v37[10] = v3[10];
    v37[11] = v21;
    v37[12] = v3[12];
    v22 = v3[7];
    v37[6] = v3[6];
    v37[7] = v22;
    v23 = v3[9];
    v37[8] = v3[8];
    v37[9] = v23;
    v24 = v3[3];
    v37[2] = v3[2];
    v37[3] = v24;
    v25 = v3[5];
    v37[4] = v3[4];
    v37[5] = v25;
    v26 = v3[1];
    v37[0] = *v3;
    v37[1] = v26;
    v36[3] = &type metadata for ViewModel;
    v36[4] = &off_2879A7790;
    v27 = swift_allocObject();
    v36[0] = v27;
    v28 = v3[11];
    v27[11] = v3[10];
    v27[12] = v28;
    v27[13] = v3[12];
    v29 = v3[7];
    v27[7] = v3[6];
    v27[8] = v29;
    v30 = v3[9];
    v27[9] = v3[8];
    v27[10] = v30;
    v31 = v3[3];
    v27[3] = v3[2];
    v27[4] = v31;
    v32 = v3[5];
    v27[5] = v3[4];
    v27[6] = v32;
    v33 = v3[1];
    v27[1] = *v3;
    v27[2] = v33;
    v34 = *(v19 + 16);
    sub_269009E3C(v37, &v35);
    v34(v36, 1, ObjectType, v19);
    return __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  return result;
}

void (*sub_26901F628(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1E0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9SiriSetup14IntroPresenter_viewModel;
  *(v3 + 464) = v1;
  *(v3 + 472) = v4;
  swift_beginAccess();
  return sub_26901F6B0;
}

void sub_26901F6B0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[58];
    v5 = *(v4 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_presentingViewController);
    if (v5)
    {
      v6 = (v4 + v3[59]);
      v7 = *(v4 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_presentingViewController + 8);
      ObjectType = swift_getObjectType();
      v3[57] = v5;
      *v3 = *v6;
      v9 = v6[1];
      v10 = v6[2];
      v11 = v6[4];
      *(v3 + 3) = v6[3];
      *(v3 + 4) = v11;
      *(v3 + 1) = v9;
      *(v3 + 2) = v10;
      v12 = v6[5];
      v13 = v6[6];
      v14 = v6[8];
      *(v3 + 7) = v6[7];
      *(v3 + 8) = v14;
      *(v3 + 5) = v12;
      *(v3 + 6) = v13;
      v15 = v6[9];
      v16 = v6[10];
      v17 = v6[12];
      *(v3 + 11) = v6[11];
      *(v3 + 12) = v17;
      *(v3 + 9) = v15;
      *(v3 + 10) = v16;
      v3[55] = &type metadata for ViewModel;
      v3[56] = &off_2879A7790;
      v18 = swift_allocObject();
      v3[52] = v18;
      v18[1] = *v6;
      v19 = v6[4];
      v21 = v6[1];
      v20 = v6[2];
      v18[4] = v6[3];
      v18[5] = v19;
      v18[2] = v21;
      v18[3] = v20;
      v22 = v6[8];
      v24 = v6[5];
      v23 = v6[6];
      v18[8] = v6[7];
      v18[9] = v22;
      v18[6] = v24;
      v18[7] = v23;
      v25 = v6[12];
      v27 = v6[9];
      v26 = v6[10];
      v18[12] = v6[11];
      v18[13] = v25;
      v18[10] = v27;
      v18[11] = v26;
      v28 = *(v7 + 16);
      sub_269009E3C(v3, (v3 + 26));
      v28(v3 + 52, 1, ObjectType, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v3 + 52);
    }
  }

  free(v3);
}

char *sub_26901F810(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *&v6[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v6[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_presentingViewController];
  *v12 = 0;
  v12[1] = 0;
  v6[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_checkboxCheckedMac] = 1;
  v13 = &v6[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_dataSource];
  *v13 = a1;
  v13[1] = a2;
  v14 = &v6[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_dataSourceWriter];
  *v14 = a3;
  v14[1] = a4;
  ObjectType = swift_getObjectType();
  v16 = *(a2 + 80);
  v17 = a1;
  v18 = a3;
  v6[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_viewStyle] = v16(ObjectType, a2);
  *&v6[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_page] = a5;
  v19 = type metadata accessor for IntroPresenter();

  sub_26901FAD4(v17, a2, v64);
  v20 = &v6[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_viewModel];
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
  v28 = &v27[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_viewModel];
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
  v44 = sub_269023DD4(v19, &v50);
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
  v47 = &v27[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_presentingViewController];
  v48 = *&v27[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_presentingViewController];
  *v47 = v44;
  v47[1] = v46;

  return v27;
}

double sub_26901FAD4@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 48))(ObjectType, a2);
  v9 = *(a2 + 232);
  v10 = v9(ObjectType, a2);
  (*(a2 + 32))(&v396, ObjectType, a2);
  v378 = a3;
  if (v396 > 1u)
  {
    if (v396 != 2)
    {
      v17 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v10 = 0;
      v63 = 0xE000000000000000;
      v379 = 0xE000000000000000;
      v380 = 0;
      v382 = 0xE000000000000000;
      v383 = 0;
      goto LABEL_260;
    }

    LODWORD(v377) = v8;
    v29 = 0x800000026905D750;
    v376 = a1;
    v371 = ObjectType;
    v373 = a2;
    v367 = *(a2 + 88);
    v383 = v367(ObjectType, a2);
    v11 = v30;
    if (qword_2802F3248 != -1)
    {
      swift_once();
    }

    LODWORD(v375) = byte_2802F5130;
    v31 = sub_269051B18(byte_2802F5130);
    v17 = 0xD000000000000010;
    v385[0] = 0xD000000000000010;
    v385[1] = 0x800000026905D750;
    MEMORY[0x26D62FBC0](v31);

    v32 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    v35 = v33 >> 1;
    v36 = v34 + 1;
    if (v33 >> 1 <= v34)
    {
      v32 = sub_26904DCD8((v33 > 1), v34 + 1, 1, v32);
      v33 = *(v32 + 3);
      v35 = v33 >> 1;
    }

    *(v32 + 2) = v36;
    v37 = &v32[16 * v34];
    *(v37 + 4) = 0xD000000000000010;
    *(v37 + 5) = 0x800000026905D750;
    if (v35 < (v34 + 2))
    {
      v32 = sub_26904DCD8((v33 > 1), v34 + 2, 1, v32);
    }

    *(v32 + 2) = v34 + 2;
    v38 = &v32[16 * v36];
    *(v38 + 4) = 0xD000000000000010;
    *(v38 + 5) = 0x800000026905D750;
    v39 = (v32 + 40);
    v24 = -v34;
    v3 = -1;
    while (v24 + v3 != 1)
    {
      if (++v3 >= *(v32 + 2))
      {
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
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
LABEL_281:
        __break(1u);
LABEL_282:
        __break(1u);
LABEL_283:
        __break(1u);
        goto LABEL_284;
      }

      v10 = (v39 + 2);
      v40 = *(v39 - 1);
      v41 = *v39;

      v42 = sub_26902F7F4(v40, v41, 0);
      v44 = v43;

      v39 = v10;
      if (v44)
      {

        v17 = v42;
        v29 = v44;
        goto LABEL_92;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD000000000000010, 0x800000026905D750);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v66 = sub_269057774();
    __swift_project_value_buffer(v66, qword_2802F3FF8);
    v67 = sub_269057A94();
    v385[0] = 0xD00000000000003BLL;
    v385[1] = 0x800000026905BF00;
    v131 = sub_269057764();
    if (os_log_type_enabled(v131, v67))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v395[0] = v133;
      *v132 = 136315138;
      v134 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v395);

      *(v132 + 4) = v134;
      _os_log_impl(&dword_269002000, v131, v67, "%s", v132, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v133);
      MEMORY[0x26D6309D0](v133, -1, -1);
      MEMORY[0x26D6309D0](v132, -1, -1);
    }

    else
    {
    }

LABEL_92:
    v3 = v375;
    if (v11)
    {
      sub_26902FAA0(v17, v29, v383, v11);
    }

    sub_2690519EC(v375);
    strcpy(v395, "%DEVICE_NAME%");
    HIWORD(v395[1]) = -4864;
    v17 = sub_26900BE9C();
    sub_269057BE4();

    sub_2690519EC(v375);
    v374 = 0xD000000000000014;
    v395[0] = 0xD000000000000014;
    v395[1] = 0x800000026905BEA0;
    v135 = sub_269057BE4();
    v382 = v136;
    v383 = v135;

    v137 = 0x800000026905D770;
    v380 = v367(v371, v373);
    v139 = v138;
    v140 = sub_269051B18(v375);
    v10 = 0xD000000000000013;
    v385[0] = 0xD000000000000013;
    v385[1] = 0x800000026905D770;
    MEMORY[0x26D62FBC0](v140);

    v141 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v11 = *(v141 + 2);
    v142 = *(v141 + 3);
    v143 = v142 >> 1;
    v144 = v11 + 1;
    if (v142 >> 1 <= v11)
    {
      v141 = sub_26904DCD8((v142 > 1), v11 + 1, 1, v141);
      v142 = *(v141 + 3);
      v143 = v142 >> 1;
    }

    *(v141 + 2) = v144;
    v145 = &v141[16 * v11];
    *(v145 + 4) = 0xD000000000000013;
    *(v145 + 5) = 0x800000026905D770;
    v365 = v139;
    if (v143 < (v11 + 2))
    {
      v141 = sub_26904DCD8((v142 > 1), v11 + 2, 1, v141);
    }

    *(v141 + 2) = v11 + 2;
    v146 = &v141[16 * v144];
    *(v146 + 4) = 0xD000000000000013;
    *(v146 + 5) = 0x800000026905D770;
    v147 = (v141 + 40);
    v148 = -v11;
    v24 = -1;
    while (v148 + v24 != 1)
    {
      if (++v24 >= *(v141 + 2))
      {
        goto LABEL_273;
      }

      v3 = (v147 + 2);
      v149 = *(v147 - 1);
      v11 = *v147;

      v150 = sub_26902F7F4(v149, v11, 0);
      v152 = v151;

      v147 = v3;
      if (v152)
      {

        v10 = v150;
        v137 = v152;
        goto LABEL_152;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD000000000000013, 0x800000026905D770);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v153 = sub_269057774();
    __swift_project_value_buffer(v153, qword_2802F3FF8);
    v154 = sub_269057A94();
    v385[0] = 0xD00000000000003BLL;
    v385[1] = 0x800000026905BF00;
    v211 = sub_269057764();
    if (os_log_type_enabled(v211, v154))
    {
      v212 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      v395[0] = v213;
      *v212 = 136315138;
      v214 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v395);

      *(v212 + 4) = v214;
      _os_log_impl(&dword_269002000, v211, v154, "%s", v212, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v213);
      MEMORY[0x26D6309D0](v213, -1, -1);
      MEMORY[0x26D6309D0](v212, -1, -1);
    }

    else
    {
    }

LABEL_152:
    if (v365)
    {
      v10 = sub_26902FAA0(v10, v137, v380, v365);
    }

    sub_2690519EC(v375);
    strcpy(v395, "%DEVICE_NAME%");
    HIWORD(v395[1]) = -4864;
    v215 = sub_269057BE4();
    v217 = v216;

    sub_2690519EC(v375);
    v385[0] = v215;
    v385[1] = v217;
    v395[0] = 0xD000000000000014;
    v395[1] = 0x800000026905BEA0;
    v218 = sub_269057BE4();
    v379 = v219;
    v380 = v218;

    if (v377)
    {
      v220 = sub_269051B18(v375);
      v11 = 0xD000000000000016;
      v385[0] = 0xD000000000000016;
      v385[1] = 0x800000026905D7D0;
      MEMORY[0x26D62FBC0](v220);

      v221 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v223 = *(v221 + 2);
      v222 = *(v221 + 3);
      v224 = v222 >> 1;
      v225 = v223 + 1;
      if (v222 >> 1 <= v223)
      {
        v221 = sub_26904DCD8((v222 > 1), v223 + 1, 1, v221);
        v222 = *(v221 + 3);
        v224 = v222 >> 1;
      }

      *(v221 + 2) = v225;
      v226 = &v221[16 * v223];
      *(v226 + 4) = 0xD000000000000016;
      *(v226 + 5) = 0x800000026905D7D0;
      if (v224 < (v223 + 2))
      {
        v221 = sub_26904DCD8((v222 > 1), v223 + 2, 1, v221);
      }

      *(v221 + 2) = v223 + 2;
      v227 = &v221[16 * v225];
      *(v227 + 4) = 0xD000000000000016;
      *(v227 + 5) = 0x800000026905D7D0;
      v228 = (v221 + 40);
      v24 = -v223;
      v3 = -1;
      while (v24 + v3 != 1)
      {
        if (++v3 >= *(v221 + 2))
        {
          goto LABEL_282;
        }

        v10 = (v228 + 2);
        v229 = *(v228 - 1);
        v230 = *v228;

        sub_26902F7F4(v229, v230, 0);
        v232 = v231;

        v228 = v10;
        if (v232)
        {

          v233 = v375;
          goto LABEL_235;
        }
      }

      sub_269057C54();
      MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
      MEMORY[0x26D62FBC0](0xD000000000000016, 0x800000026905D7D0);
      MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v251 = sub_269057774();
      __swift_project_value_buffer(v251, qword_2802F3FF8);
      v252 = sub_269057A94();
      v385[0] = 0xD00000000000003BLL;
      v385[1] = 0x800000026905BF00;
      v3 = 0xD00000000000003BLL;
      v318 = sub_269057764();
      if (os_log_type_enabled(v318, v252))
      {
        v319 = swift_slowAlloc();
        v320 = swift_slowAlloc();
        v395[0] = v320;
        *v319 = 136315138;
        v3 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v395);

        *(v319 + 4) = v3;
        _os_log_impl(&dword_269002000, v318, v252, "%s", v319, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v320);
        MEMORY[0x26D6309D0](v320, -1, -1);
        MEMORY[0x26D6309D0](v319, -1, -1);
      }

      else
      {
      }

      v233 = v375;
LABEL_235:
      sub_2690519EC(v233);
      strcpy(v395, "%DEVICE_NAME%");
      HIWORD(v395[1]) = -4864;
      v321 = sub_269057BE4();
      v323 = v322;

      sub_2690519EC(v233);
      v385[0] = v321;
      v385[1] = v323;
      v395[0] = 0xD000000000000014;
      v395[1] = 0x800000026905BEA0;
      v10 = sub_269057BE4();
      v377 = v324;
    }

    else
    {
      v234 = 0x800000026905D790;
      v377 = v367(v371, v373);
      v236 = v235;
      v237 = sub_269051B18(v375);
      v11 = 0xD000000000000012;
      v385[0] = 0xD000000000000012;
      v385[1] = 0x800000026905D790;
      MEMORY[0x26D62FBC0](v237);

      v238 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v240 = *(v238 + 2);
      v239 = *(v238 + 3);
      v241 = v239 >> 1;
      v242 = v240 + 1;
      if (v239 >> 1 <= v240)
      {
        v238 = sub_26904DCD8((v239 > 1), v240 + 1, 1, v238);
        v239 = *(v238 + 3);
        v241 = v239 >> 1;
      }

      *(v238 + 2) = v242;
      v243 = &v238[16 * v240];
      *(v243 + 4) = 0xD000000000000012;
      *(v243 + 5) = 0x800000026905D790;
      v376 = v236;
      if (v241 < (v240 + 2))
      {
        v238 = sub_26904DCD8((v239 > 1), v240 + 2, 1, v238);
      }

      *(v238 + 2) = v240 + 2;
      v244 = &v238[16 * v242];
      *(v244 + 4) = 0xD000000000000012;
      *(v244 + 5) = 0x800000026905D790;
      v245 = (v238 + 40);
      v24 = -v240;
      v3 = -1;
      while (v24 + v3 != 1)
      {
        if (++v3 >= *(v238 + 2))
        {
          goto LABEL_283;
        }

        v10 = (v245 + 2);
        v246 = *(v245 - 1);
        v247 = *v245;

        v248 = sub_26902F7F4(v246, v247, 0);
        v250 = v249;

        v245 = v10;
        if (v250)
        {

          v11 = v248;
          v234 = v250;
          goto LABEL_240;
        }
      }

      sub_269057C54();
      MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
      MEMORY[0x26D62FBC0](0xD000000000000012, 0x800000026905D790);
      MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v253 = sub_269057774();
      __swift_project_value_buffer(v253, qword_2802F3FF8);
      v254 = sub_269057A94();
      v385[0] = 0xD00000000000003BLL;
      v385[1] = 0x800000026905BF00;
      v325 = sub_269057764();
      if (os_log_type_enabled(v325, v254))
      {
        v326 = swift_slowAlloc();
        v327 = swift_slowAlloc();
        v395[0] = v327;
        *v326 = 136315138;
        v328 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v395);

        *(v326 + 4) = v328;
        _os_log_impl(&dword_269002000, v325, v254, "%s", v326, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v327);
        MEMORY[0x26D6309D0](v327, -1, -1);
        MEMORY[0x26D6309D0](v326, -1, -1);
      }

      else
      {
      }

LABEL_240:
      v233 = v375;
      v3 = v376;
      if (v376)
      {
        sub_26902FAA0(v11, v234, v377, v376);
      }

      sub_2690519EC(v375);
      strcpy(v395, "%DEVICE_NAME%");
      HIWORD(v395[1]) = -4864;
      v329 = sub_269057BE4();
      v331 = v330;

      sub_2690519EC(v375);
      v385[0] = v329;
      v385[1] = v331;
      v395[0] = 0xD000000000000014;
      v395[1] = 0x800000026905BEA0;
      v10 = sub_269057BE4();
      v377 = v332;
    }

    v333 = sub_269051B18(v233);
    v385[0] = 0xD000000000000014;
    v385[1] = 0x800000026905D7B0;
    MEMORY[0x26D62FBC0](v333);

    v334 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v11 = *(v334 + 2);
    v335 = *(v334 + 3);
    v336 = v335 >> 1;
    v337 = v11 + 1;
    if (v335 >> 1 <= v11)
    {
      v334 = sub_26904DCD8((v335 > 1), v11 + 1, 1, v334);
      v335 = *(v334 + 3);
      v336 = v335 >> 1;
    }

    *(v334 + 2) = v337;
    v338 = &v334[16 * v11];
    *(v338 + 4) = 0xD000000000000014;
    *(v338 + 5) = 0x800000026905D7B0;
    if (v336 < (v11 + 2))
    {
      v334 = sub_26904DCD8((v335 > 1), v11 + 2, 1, v334);
    }

    *(v334 + 2) = v11 + 2;
    v339 = &v334[16 * v337];
    *(v339 + 4) = 0xD000000000000014;
    *(v339 + 5) = 0x800000026905D7B0;
    v340 = (v334 + 40);
    v341 = -v11;
    v24 = -1;
    while (v341 + v24 != 1)
    {
      if (++v24 >= *(v334 + 2))
      {
        goto LABEL_277;
      }

      v3 = (v340 + 2);
      v342 = *(v340 - 1);
      v11 = *v340;

      sub_26902F7F4(v342, v11, 0);
      v344 = v343;

      v340 = v3;
      if (v344)
      {

        v345 = v375;
        goto LABEL_258;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD000000000000014, 0x800000026905D7B0);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v346 = sub_269057774();
    __swift_project_value_buffer(v346, qword_2802F3FF8);
    v347 = sub_269057A94();
    v385[0] = 0xD00000000000003BLL;
    v385[1] = 0x800000026905BF00;
    v348 = sub_269057764();
    if (os_log_type_enabled(v348, v347))
    {
      v349 = swift_slowAlloc();
      v350 = swift_slowAlloc();
      v395[0] = v350;
      *v349 = 136315138;
      v351 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v395);

      *(v349 + 4) = v351;
      _os_log_impl(&dword_269002000, v348, v347, "%s", v349, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v350);
      MEMORY[0x26D6309D0](v350, -1, -1);
      MEMORY[0x26D6309D0](v349, -1, -1);
    }

    else
    {
    }

    v345 = v375;
LABEL_258:
    sub_2690519EC(v345);
    strcpy(v395, "%DEVICE_NAME%");
    HIWORD(v395[1]) = -4864;
    v352 = sub_269057BE4();
    v354 = v353;

    sub_2690519EC(v345);
    v385[0] = v352;
    v385[1] = v354;
    v395[0] = 0xD000000000000014;
    v395[1] = 0x800000026905BEA0;
    v61 = sub_269057BE4();
    v62 = v355;

    v17 = 0;
    v59 = 0;
    v60 = 0;
    goto LABEL_259;
  }

  if (v396)
  {
    if (qword_2802F3248 != -1)
    {
      swift_once();
    }

    v24 = 0xEB00000000454C54;
    LODWORD(v376) = byte_2802F5130;
    v45 = sub_269051B18(byte_2802F5130);
    strcpy(v385, "INTRO_TITLE");
    HIDWORD(v385[1]) = -352321536;
    MEMORY[0x26D62FBC0](v45);

    v46 = v385[0];
    v47 = v385[1];
    v48 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v17 = *(v48 + 2);
    v49 = *(v48 + 3);
    v50 = v49 >> 1;
    v51 = v17 + 1;
    if (v49 >> 1 <= v17)
    {
      v48 = sub_26904DCD8((v49 > 1), v17 + 1, 1, v48);
      v49 = *(v48 + 3);
      v50 = v49 >> 1;
    }

    *(v48 + 2) = v51;
    v52 = &v48[16 * v17];
    *(v52 + 4) = v46;
    *(v52 + 5) = v47;
    LODWORD(v377) = v8;
    if (v50 < (v17 + 2))
    {
      v48 = sub_26904DCD8((v49 > 1), v17 + 2, 1, v48);
    }

    *(v48 + 2) = v17 + 2;
    v53 = &v48[16 * v51];
    *(v53 + 4) = 0x49545F4F52544E49;
    *(v53 + 5) = 0xEB00000000454C54;
    v54 = (v48 + 40);
    v11 = -v17;
    v55 = -1;
    while (v11 + v55 != 1)
    {
      if (++v55 >= *(v48 + 2))
      {
        goto LABEL_271;
      }

      v3 = (v54 + 2);
      v56 = *(v54 - 1);
      v17 = *v54;

      sub_26902F7F4(v56, v17, 0);
      v58 = v57;

      v54 = v3;
      if (v58)
      {

        goto LABEL_50;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0x49545F4F52544E49, 0xEB00000000454C54);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v68 = sub_269057774();
    __swift_project_value_buffer(v68, qword_2802F3FF8);
    v69 = sub_269057A94();
    v385[0] = 0xD00000000000003BLL;
    v385[1] = 0x800000026905BF00;
    v70 = sub_269057764();
    if (os_log_type_enabled(v70, v69))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v395[0] = v72;
      *v71 = 136315138;
      v73 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v395);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_269002000, v70, v69, "%s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x26D6309D0](v72, -1, -1);
      MEMORY[0x26D6309D0](v71, -1, -1);
    }

    else
    {
    }

LABEL_50:
    v11 = 0x55535F4F52544E49;
    sub_2690519EC(v376);
    strcpy(v395, "%DEVICE_NAME%");
    HIWORD(v395[1]) = -4864;
    v17 = sub_26900BE9C();
    sub_269057BE4();

    sub_2690519EC(v376);
    v374 = 0xD000000000000014;
    v375 = 0x800000026905BEA0;
    v395[0] = 0xD000000000000014;
    v395[1] = 0x800000026905BEA0;
    v74 = sub_269057BE4();
    v382 = v75;
    v383 = v74;

    v76 = sub_269051B18(v376);
    strcpy(v385, "INTRO_SUBTITLE");
    HIBYTE(v385[1]) = -18;
    MEMORY[0x26D62FBC0](v76);

    v77 = v385[0];
    v78 = v385[1];
    v79 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v81 = *(v79 + 2);
    v80 = *(v79 + 3);
    v82 = v80 >> 1;
    v83 = v81 + 1;
    if (v80 >> 1 <= v81)
    {
      v79 = sub_26904DCD8((v80 > 1), v81 + 1, 1, v79);
      v80 = *(v79 + 3);
      v82 = v80 >> 1;
    }

    *(v79 + 2) = v83;
    v84 = &v79[16 * v81];
    *(v84 + 4) = v77;
    *(v84 + 5) = v78;
    if (v82 < (v81 + 2))
    {
      v79 = sub_26904DCD8((v80 > 1), v81 + 2, 1, v79);
    }

    *(v79 + 2) = v81 + 2;
    v85 = &v79[16 * v83];
    strcpy(v85 + 32, "INTRO_SUBTITLE");
    v85[47] = -18;
    v86 = (v79 + 40);
    v24 = -v81;
    v3 = -1;
    while (v24 + v3 != 1)
    {
      if (++v3 >= *(v79 + 2))
      {
        goto LABEL_272;
      }

      v10 = (v86 + 2);
      v87 = *(v86 - 1);
      v88 = *v86;

      sub_26902F7F4(v87, v88, 0);
      v90 = v89;

      v86 = v10;
      if (v90)
      {

        goto LABEL_110;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0x55535F4F52544E49, 0xEE00454C54495442);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v91 = sub_269057774();
    v10 = __swift_project_value_buffer(v91, qword_2802F3FF8);
    v92 = sub_269057A94();
    v385[0] = 0xD00000000000003BLL;
    v385[1] = 0x800000026905BF00;
    v155 = sub_269057764();
    if (os_log_type_enabled(v155, v92))
    {
      v10 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v395[0] = v156;
      *v10 = 136315138;
      v157 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v395);

      *(v10 + 4) = v157;
      _os_log_impl(&dword_269002000, v155, v92, "%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v156);
      MEMORY[0x26D6309D0](v156, -1, -1);
      MEMORY[0x26D6309D0](v10, -1, -1);
    }

    else
    {
    }

LABEL_110:
    sub_2690519EC(v376);
    strcpy(v395, "%DEVICE_NAME%");
    HIWORD(v395[1]) = -4864;
    v158 = sub_269057BE4();
    v160 = v159;

    sub_2690519EC(v376);
    v385[0] = v158;
    v385[1] = v160;
    v395[0] = 0xD000000000000014;
    v395[1] = 0x800000026905BEA0;
    v161 = sub_269057BE4();
    v379 = v162;
    v380 = v161;

    v163 = sub_269051B18(v376);
    if (v377)
    {
      v165 = 0x800000026905D7D0;
      v11 = 0xD000000000000016;
      v385[0] = 0xD000000000000016;
      v385[1] = 0x800000026905D7D0;
      MEMORY[0x26D62FBC0](v163, v164);

      v166 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v168 = *(v166 + 2);
      v167 = *(v166 + 3);
      v169 = v167 >> 1;
      v170 = v168 + 1;
      if (v167 >> 1 <= v168)
      {
        v166 = sub_26904DCD8((v167 > 1), v168 + 1, 1, v166);
        v167 = *(v166 + 3);
        v169 = v167 >> 1;
      }

      *(v166 + 2) = v170;
      v171 = &v166[16 * v168];
      *(v171 + 4) = 0xD000000000000016;
      *(v171 + 5) = 0x800000026905D7D0;
      if (v169 < (v168 + 2))
      {
        v166 = sub_26904DCD8((v167 > 1), v168 + 2, 1, v166);
      }

      *(v166 + 2) = v168 + 2;
      v172 = &v166[16 * v170];
      *(v172 + 4) = 0xD000000000000016;
      *(v172 + 5) = 0x800000026905D7D0;
      v173 = (v166 + 40);
      v24 = -v168;
      v3 = -1;
      while (v24 + v3 != 1)
      {
        if (++v3 >= *(v166 + 2))
        {
          goto LABEL_280;
        }

        v10 = (v173 + 2);
        v174 = *(v173 - 1);
        v175 = *v173;

        sub_26902F7F4(v174, v175, 0);
        v177 = v176;

        v173 = v10;
        if (v177)
        {
          goto LABEL_128;
        }
      }
    }

    else
    {
      v165 = 0x800000026905D7F0;
      v11 = 0xD000000000000016;
      v385[0] = 0xD000000000000016;
      v385[1] = 0x800000026905D7F0;
      MEMORY[0x26D62FBC0](v163, v164);

      v178 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v180 = *(v178 + 2);
      v179 = *(v178 + 3);
      v181 = v179 >> 1;
      v182 = v180 + 1;
      if (v179 >> 1 <= v180)
      {
        v178 = sub_26904DCD8((v179 > 1), v180 + 1, 1, v178);
        v179 = *(v178 + 3);
        v181 = v179 >> 1;
      }

      *(v178 + 2) = v182;
      v183 = &v178[16 * v180];
      *(v183 + 4) = 0xD000000000000016;
      *(v183 + 5) = 0x800000026905D7F0;
      if (v181 < (v180 + 2))
      {
        v178 = sub_26904DCD8((v179 > 1), v180 + 2, 1, v178);
      }

      *(v178 + 2) = v180 + 2;
      v184 = &v178[16 * v182];
      *(v184 + 4) = 0xD000000000000016;
      *(v184 + 5) = 0x800000026905D7F0;
      v185 = (v178 + 40);
      v24 = -v180;
      v3 = -1;
      while (v24 + v3 != 1)
      {
        if (++v3 >= *(v178 + 2))
        {
          goto LABEL_281;
        }

        v10 = (v185 + 2);
        v186 = *(v185 - 1);
        v187 = *v185;

        sub_26902F7F4(v186, v187, 0);
        v189 = v188;

        v185 = v10;
        if (v189)
        {
LABEL_128:

          goto LABEL_183;
        }
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD000000000000016, v165);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v190 = sub_269057774();
    v10 = __swift_project_value_buffer(v190, qword_2802F3FF8);
    v191 = sub_269057A94();
    v385[0] = 0xD00000000000003BLL;
    v385[1] = 0x800000026905BF00;
    v255 = sub_269057764();
    if (os_log_type_enabled(v255, v191))
    {
      v256 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v395[0] = v10;
      *v256 = 136315138;
      v257 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v395);

      *(v256 + 4) = v257;
      _os_log_impl(&dword_269002000, v255, v191, "%s", v256, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x26D6309D0](v10, -1, -1);
      MEMORY[0x26D6309D0](v256, -1, -1);
    }

    else
    {
    }

LABEL_183:
    sub_2690519EC(v376);
    strcpy(v395, "%DEVICE_NAME%");
    HIWORD(v395[1]) = -4864;
    sub_269057BE4();

    sub_2690519EC(v376);
    v395[0] = 0xD000000000000014;
    v395[1] = 0x800000026905BEA0;
    v368 = sub_269057BE4();
    v377 = v258;

    v11 = 0x45535F4F52544E49;
    v259 = sub_269051B18(v376);
    v385[0] = 0x45535F4F52544E49;
    v385[1] = 0xEF595241444E4F43;
    MEMORY[0x26D62FBC0](v259);

    v260 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v262 = *(v260 + 2);
    v261 = *(v260 + 3);
    v263 = v261 >> 1;
    v264 = v262 + 1;
    if (v261 >> 1 <= v262)
    {
      v260 = sub_26904DCD8((v261 > 1), v262 + 1, 1, v260);
      v261 = *(v260 + 3);
      v263 = v261 >> 1;
    }

    *(v260 + 2) = v264;
    v265 = &v260[16 * v262];
    *(v265 + 4) = 0x45535F4F52544E49;
    *(v265 + 5) = 0xEF595241444E4F43;
    if (v263 < (v262 + 2))
    {
      v260 = sub_26904DCD8((v261 > 1), v262 + 2, 1, v260);
    }

    *(v260 + 2) = v262 + 2;
    v266 = &v260[16 * v264];
    *(v266 + 4) = 0x45535F4F52544E49;
    *(v266 + 5) = 0xEF595241444E4F43;
    v267 = (v260 + 40);
    v24 = -v262;
    v3 = -1;
    while (v24 + v3 != 1)
    {
      if (++v3 >= *(v260 + 2))
      {
        goto LABEL_275;
      }

      v10 = (v267 + 2);
      v268 = *(v267 - 1);
      v269 = *v267;

      sub_26902F7F4(v268, v269, 0);
      v271 = v270;

      v267 = v10;
      if (v271)
      {

        goto LABEL_215;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0x45535F4F52544E49, 0xEF595241444E4F43);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v272 = sub_269057774();
    __swift_project_value_buffer(v272, qword_2802F3FF8);
    v273 = sub_269057A94();
    v385[0] = 0xD00000000000003BLL;
    v385[1] = 0x800000026905BF00;
    v294 = sub_269057764();
    if (os_log_type_enabled(v294, v273))
    {
      v295 = swift_slowAlloc();
      v296 = swift_slowAlloc();
      v395[0] = v296;
      *v295 = 136315138;
      v297 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v395);

      *(v295 + 4) = v297;
      _os_log_impl(&dword_269002000, v294, v273, "%s", v295, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v296);
      MEMORY[0x26D6309D0](v296, -1, -1);
      MEMORY[0x26D6309D0](v295, -1, -1);
    }

    else
    {
    }

LABEL_215:
    sub_2690519EC(v376);
    strcpy(v395, "%DEVICE_NAME%");
    HIWORD(v395[1]) = -4864;
    v298 = sub_269057BE4();
    v300 = v299;

    sub_2690519EC(v376);
    v385[0] = v298;
    v385[1] = v300;
    v395[0] = 0xD000000000000014;
    v395[1] = 0x800000026905BEA0;
    v59 = sub_269057BE4();
    v60 = v301;

    v17 = 0;
    v61 = 0;
    v62 = 0;
    v10 = v368;
LABEL_259:
    v63 = v377;
    goto LABEL_260;
  }

  v366 = v9;
  v370 = ObjectType;
  v372 = a2;
  if (qword_2802F3248 != -1)
  {
    swift_once();
  }

  v11 = 0xEB00000000454C54;
  LODWORD(v375) = byte_2802F5130;
  v12 = sub_269051B18(byte_2802F5130);
  strcpy(v385, "INTRO_TITLE");
  HIDWORD(v385[1]) = -352321536;
  MEMORY[0x26D62FBC0](v12);

  v13 = v385[0];
  v14 = v385[1];
  v15 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  v18 = v16 >> 1;
  v19 = v17 + 1;
  if (v16 >> 1 <= v17)
  {
    v15 = sub_26904DCD8((v16 > 1), v17 + 1, 1, v15);
    v16 = *(v15 + 3);
    v18 = v16 >> 1;
  }

  *(v15 + 2) = v19;
  v20 = &v15[16 * v17];
  *(v20 + 4) = v13;
  *(v20 + 5) = v14;
  v376 = a1;
  if (v18 < (v17 + 2))
  {
    v15 = sub_26904DCD8((v16 > 1), v17 + 2, 1, v15);
  }

  *(v15 + 2) = v17 + 2;
  v21 = &v15[16 * v19];
  *(v21 + 4) = 0x49545F4F52544E49;
  *(v21 + 5) = 0xEB00000000454C54;
  v22 = (v15 + 40);
  v23 = -v17;
  v24 = -1;
  while (v23 + v24 != 1)
  {
    if (++v24 >= *(v15 + 2))
    {
      __break(1u);
      goto LABEL_270;
    }

    v3 = (v22 + 2);
    v25 = *(v22 - 1);
    v17 = *v22;

    sub_26902F7F4(v25, v17, 0);
    v27 = v26;

    v22 = v3;
    if (v27)
    {

      v28 = v375;
      goto LABEL_66;
    }
  }

  v384 = v10;

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0x49545F4F52544E49, 0xEB00000000454C54);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v64 = sub_269057774();
  __swift_project_value_buffer(v64, qword_2802F3FF8);
  v65 = sub_269057A94();
  v385[0] = 0xD00000000000003BLL;
  v385[1] = 0x800000026905BF00;
  v28 = v375;
  v93 = sub_269057764();
  if (os_log_type_enabled(v93, v65))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v395[0] = v95;
    *v94 = 136315138;
    v96 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v395);

    *(v94 + 4) = v96;
    _os_log_impl(&dword_269002000, v93, v65, "%s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v95);
    MEMORY[0x26D6309D0](v95, -1, -1);
    MEMORY[0x26D6309D0](v94, -1, -1);
  }

  else
  {
  }

  v10 = v384;
LABEL_66:
  sub_2690519EC(v28);
  strcpy(v395, "%DEVICE_NAME%");
  HIWORD(v395[1]) = -4864;
  sub_26900BE9C();
  v97 = sub_269057BE4();
  v99 = v98;

  sub_2690519EC(v28);
  v385[0] = v97;
  v385[1] = v99;
  v374 = 0xD000000000000014;
  v395[0] = 0xD000000000000014;
  v395[1] = 0x800000026905BEA0;
  v100 = sub_269057BE4();
  v382 = v101;
  v383 = v100;

  if (v10)
  {
    v17 = 0xEE00454C54495442;
    v11 = 0x55535F4F52544E49;
    v102 = sub_269051B18(v28);
    strcpy(v385, "INTRO_SUBTITLE");
    HIBYTE(v385[1]) = -18;
    MEMORY[0x26D62FBC0](v102);

    v103 = v385[0];
    v24 = v385[1];
    v104 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v106 = *(v104 + 2);
    v105 = *(v104 + 3);
    v107 = v105 >> 1;
    v108 = v106 + 1;
    if (v105 >> 1 <= v106)
    {
      v104 = sub_26904DCD8((v105 > 1), v106 + 1, 1, v104);
      v105 = *(v104 + 3);
      v107 = v105 >> 1;
    }

    *(v104 + 2) = v108;
    v109 = &v104[16 * v106];
    *(v109 + 4) = v103;
    *(v109 + 5) = v24;
    if (v107 < (v106 + 2))
    {
      v104 = sub_26904DCD8((v105 > 1), v106 + 2, 1, v104);
    }

    *(v104 + 2) = v106 + 2;
    v110 = &v104[16 * v108];
    strcpy(v110 + 32, "INTRO_SUBTITLE");
    v110[47] = -18;
    v111 = (v104 + 40);
    v112 = -v106;
    v3 = -1;
    while (v112 + v3 != 1)
    {
      if (++v3 >= *(v104 + 2))
      {
        goto LABEL_278;
      }

      v10 = (v111 + 2);
      v113 = *(v111 - 1);
      v24 = *v111;

      sub_26902F7F4(v113, v24, 0);
      v115 = v114;

      v111 = v10;
      if (v115)
      {
        goto LABEL_84;
      }
    }
  }

  else
  {
    v17 = 0x800000026905D810;
    v116 = sub_269051B18(v28);
    v11 = 0xD000000000000013;
    v385[0] = 0xD000000000000013;
    v385[1] = 0x800000026905D810;
    MEMORY[0x26D62FBC0](v116);

    v24 = 0x800000026905D810;
    v117 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v119 = *(v117 + 2);
    v118 = *(v117 + 3);
    v120 = v118 >> 1;
    v121 = v119 + 1;
    if (v118 >> 1 <= v119)
    {
      v117 = sub_26904DCD8((v118 > 1), v119 + 1, 1, v117);
      v118 = *(v117 + 3);
      v120 = v118 >> 1;
    }

    *(v117 + 2) = v121;
    v122 = &v117[16 * v119];
    *(v122 + 4) = 0xD000000000000013;
    *(v122 + 5) = 0x800000026905D810;
    if (v120 < (v119 + 2))
    {
      v117 = sub_26904DCD8((v118 > 1), v119 + 2, 1, v117);
    }

    *(v117 + 2) = v119 + 2;
    v123 = &v117[16 * v121];
    *(v123 + 4) = 0xD000000000000013;
    *(v123 + 5) = 0x800000026905D810;
    v124 = (v117 + 40);
    v125 = -v119;
    v3 = -1;
    while (v125 + v3 != 1)
    {
      if (++v3 >= *(v117 + 2))
      {
        goto LABEL_279;
      }

      v10 = (v124 + 2);
      v126 = *(v124 - 1);
      v24 = *v124;

      sub_26902F7F4(v126, v24, 0);
      v128 = v127;

      v124 = v10;
      if (v128)
      {
LABEL_84:

        v129 = v375;
        goto LABEL_136;
      }
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](v11, v17);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v130 = sub_269057774();
  __swift_project_value_buffer(v130, qword_2802F3FF8);
  v24 = sub_269057A94();
  v385[0] = 0xD00000000000003BLL;
  v385[1] = 0x800000026905BF00;
  v129 = v375;
  v192 = sub_269057764();
  if (os_log_type_enabled(v192, v24))
  {
    v193 = swift_slowAlloc();
    v381 = v24;
    v24 = swift_slowAlloc();
    v395[0] = v24;
    *v193 = 136315138;
    v194 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v395);

    *(v193 + 4) = v194;
    _os_log_impl(&dword_269002000, v192, v381, "%s", v193, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x26D6309D0](v24, -1, -1);
    MEMORY[0x26D6309D0](v193, -1, -1);
  }

  else
  {
  }

LABEL_136:
  sub_2690519EC(v129);
  strcpy(v395, "%DEVICE_NAME%");
  HIWORD(v395[1]) = -4864;
  sub_269057BE4();

  sub_2690519EC(v129);
  v395[0] = 0xD000000000000014;
  v395[1] = 0x800000026905BEA0;
  v195 = sub_269057BE4();
  v379 = v196;
  v380 = v195;

  v10 = 0x800000026905D7F0;
  v197 = sub_269051B18(v129);
  v3 = 0xD000000000000016;
  v385[0] = 0xD000000000000016;
  v385[1] = 0x800000026905D7F0;
  MEMORY[0x26D62FBC0](v197);

  v198 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v17 = *(v198 + 2);
  v199 = *(v198 + 3);
  v200 = v199 >> 1;
  v201 = v17 + 1;
  if (v199 >> 1 <= v17)
  {
    v198 = sub_26904DCD8((v199 > 1), v17 + 1, 1, v198);
    v199 = *(v198 + 3);
    v200 = v199 >> 1;
  }

  *(v198 + 2) = v201;
  v202 = &v198[16 * v17];
  *(v202 + 4) = 0xD000000000000016;
  *(v202 + 5) = 0x800000026905D7F0;
  if (v200 < (v17 + 2))
  {
    v198 = sub_26904DCD8((v199 > 1), v17 + 2, 1, v198);
  }

  *(v198 + 2) = v17 + 2;
  v203 = &v198[16 * v201];
  *(v203 + 4) = 0xD000000000000016;
  *(v203 + 5) = 0x800000026905D7F0;
  v204 = (v198 + 40);
  v11 = -v17;
  v205 = -1;
  while (v11 + v205 != 1)
  {
    if (++v205 >= *(v198 + 2))
    {
      goto LABEL_274;
    }

    v24 = (v204 + 2);
    v206 = *(v204 - 1);
    v17 = *v204;

    sub_26902F7F4(v206, v17, 0);
    v208 = v207;

    v204 = v24;
    if (v208)
    {

      v10 = v208;
      goto LABEL_199;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000016, 0x800000026905D7F0);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v209 = sub_269057774();
  __swift_project_value_buffer(v209, qword_2802F3FF8);
  v210 = sub_269057A94();
  v385[0] = 0xD00000000000003BLL;
  v385[1] = 0x800000026905BF00;
  v274 = sub_269057764();
  if (os_log_type_enabled(v274, v210))
  {
    v275 = swift_slowAlloc();
    v276 = swift_slowAlloc();
    v395[0] = v276;
    *v275 = 136315138;
    v277 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v395);

    *(v275 + 4) = v277;
    _os_log_impl(&dword_269002000, v274, v210, "%s", v275, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v276);
    MEMORY[0x26D6309D0](v276, -1, -1);
    MEMORY[0x26D6309D0](v275, -1, -1);
  }

  else
  {
  }

LABEL_199:
  v17 = 0xEF595241444E4F43;
  v11 = 0x45535F4F52544E49;
  sub_2690519EC(v375);
  strcpy(v395, "%DEVICE_NAME%");
  HIWORD(v395[1]) = -4864;
  sub_269057BE4();

  sub_2690519EC(v375);
  v395[0] = 0xD000000000000014;
  v395[1] = 0x800000026905BEA0;
  v369 = sub_269057BE4();
  v377 = v278;

  v279 = sub_269051B18(v375);
  v385[0] = 0x45535F4F52544E49;
  v385[1] = 0xEF595241444E4F43;
  MEMORY[0x26D62FBC0](v279);

  v280 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v282 = *(v280 + 2);
  v281 = *(v280 + 3);
  v283 = v281 >> 1;
  v284 = v282 + 1;
  if (v281 >> 1 <= v282)
  {
    v280 = sub_26904DCD8((v281 > 1), v282 + 1, 1, v280);
    v281 = *(v280 + 3);
    v283 = v281 >> 1;
  }

  *(v280 + 2) = v284;
  v285 = &v280[16 * v282];
  *(v285 + 4) = 0x45535F4F52544E49;
  *(v285 + 5) = 0xEF595241444E4F43;
  if (v283 < (v282 + 2))
  {
    v280 = sub_26904DCD8((v281 > 1), v282 + 2, 1, v280);
  }

  *(v280 + 2) = v282 + 2;
  v286 = &v280[16 * v284];
  *(v286 + 4) = 0x45535F4F52544E49;
  *(v286 + 5) = 0xEF595241444E4F43;
  v287 = (v280 + 40);
  v24 = -v282;
  v3 = -1;
  while (v24 + v3 != 1)
  {
    if (++v3 >= *(v280 + 2))
    {
      goto LABEL_276;
    }

    v10 = (v287 + 2);
    v288 = *(v287 - 1);
    v289 = *v287;

    sub_26902F7F4(v288, v289, 0);
    v291 = v290;

    v287 = v10;
    if (v291)
    {

      goto LABEL_220;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0x45535F4F52544E49, 0xEF595241444E4F43);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v292 = sub_269057774();
  __swift_project_value_buffer(v292, qword_2802F3FF8);
  v293 = sub_269057A94();
  v385[0] = 0xD00000000000003BLL;
  v385[1] = 0x800000026905BF00;
  v302 = sub_269057764();
  if (os_log_type_enabled(v302, v293))
  {
    v303 = swift_slowAlloc();
    v304 = swift_slowAlloc();
    v395[0] = v304;
    *v303 = 136315138;
    v305 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v395);

    *(v303 + 4) = v305;
    _os_log_impl(&dword_269002000, v302, v293, "%s", v303, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v304);
    MEMORY[0x26D6309D0](v304, -1, -1);
    MEMORY[0x26D6309D0](v303, -1, -1);
  }

  else
  {
  }

LABEL_220:
  sub_2690519EC(v375);
  strcpy(v395, "%DEVICE_NAME%");
  HIWORD(v395[1]) = -4864;
  v306 = sub_269057BE4();
  v308 = v307;

  sub_2690519EC(v375);
  v385[0] = v306;
  v385[1] = v308;
  v395[0] = 0xD000000000000014;
  v395[1] = 0x800000026905BEA0;
  v309 = sub_269057BE4();
  v311 = v310;

  v17 = 0;
  if (v366(v370, v372))
  {
    v17 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_26904DDE4(0, *(v17 + 16) + 1, 1, v17);
    }

    v313 = *(v17 + 16);
    v312 = *(v17 + 24);
    if (v313 >= v312 >> 1)
    {
      v17 = sub_26904DDE4((v312 > 1), v313 + 1, 1, v17);
    }

    *(v17 + 16) = v313 + 1;
    v314 = v17 + 48 * v313;
    strcpy((v314 + 32), "quote.bubble");
    *(v314 + 45) = 0;
    *(v314 + 46) = -5120;
    *(v314 + 48) = 0xD000000000000011;
    *(v314 + 56) = 0x800000026905D830;
    *(v314 + 64) = 0xD000000000000014;
    *(v314 + 72) = 0x800000026905D850;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_26904DDE4(0, *(v17 + 16) + 1, 1, v17);
    }

    v316 = *(v17 + 16);
    v315 = *(v17 + 24);
    if (v316 >= v315 >> 1)
    {
      v17 = sub_26904DDE4((v315 > 1), v316 + 1, 1, v17);
    }

    *(v17 + 16) = v316 + 1;
    v317 = (v17 + 48 * v316);
    v317[4] = 0xD00000000000001DLL;
    v317[5] = 0x800000026905D870;
    v317[6] = 0xD000000000000011;
    v317[7] = 0x800000026905D890;
    v317[8] = 0xD000000000000014;
    v317[9] = 0x800000026905D8B0;
  }

  v59 = 0;
  v60 = 0;
  v10 = v369;
  v63 = v377;
  v61 = v309;
  v62 = v311;
LABEL_260:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F36F0, &qword_26905A3C0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_269059EE0;
  *(v24 + 32) = v10;
  *(v24 + 40) = v63;
  v3 = 0x800000026905D710;

  sub_269057C54();
  v395[0] = 0;
  v395[1] = 0xE000000000000000;
  MEMORY[0x26D62FBC0](0xD00000000000001ALL, 0x800000026905D730);
  v385[0] = 0;
  v385[1] = 0;
  v385[2] = v383;
  v385[3] = v382;
  v385[4] = v380;
  v385[5] = v379;
  v385[6] = 0;
  v385[7] = 0xE000000000000000;
  v385[8] = v24;
  v385[9] = v61;
  v376 = v62;
  v377 = v61;
  v385[10] = v62;
  v386 = 0u;
  v387 = 0u;
  v388 = 0u;
  v374 = v60;
  v375 = v59;
  v389 = v59;
  v390 = v60;
  v391 = 2;
  v392 = v17;
  v393 = 0;
  v394[0] = 0;
  *(v394 + 7) = 0;
  v394[2] = 0;
  v394[3] = 0;
  sub_269057CB4();
  v11 = v395[0];
  v10 = v395[1];
  if (qword_2802F3258 != -1)
  {
LABEL_284:
    swift_once();
  }

  v356 = sub_269057774();
  __swift_project_value_buffer(v356, qword_2802F3FF8);
  v357 = sub_269057AA4();
  v358 = 0xD00000000000001CLL;
  v385[0] = 0xD00000000000001CLL;
  v385[1] = v3;
  v359 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v359 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v359)
  {
    v395[0] = 32;
    v395[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v11, v10);
    MEMORY[0x26D62FBC0](v395[0], v395[1]);

    v358 = v385[0];
    v3 = v385[1];
  }

  v360 = sub_269057764();
  if (os_log_type_enabled(v360, v357))
  {
    v361 = swift_slowAlloc();
    v362 = swift_slowAlloc();
    v395[0] = v362;
    *v361 = 136315138;
    v363 = sub_269010108(v358, v3, v395);

    *(v361 + 4) = v363;
    _os_log_impl(&dword_269002000, v360, v357, "%s", v361, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v362);
    MEMORY[0x26D6309D0](v362, -1, -1);
    MEMORY[0x26D6309D0](v361, -1, -1);
  }

  else
  {
  }

  *v378 = 0;
  *(v378 + 8) = 0;
  *(v378 + 16) = v383;
  *(v378 + 24) = v382;
  *(v378 + 32) = v380;
  *(v378 + 40) = v379;
  *(v378 + 48) = 0;
  *(v378 + 56) = 0xE000000000000000;
  *(v378 + 64) = v24;
  *(v378 + 72) = v377;
  *(v378 + 80) = v376;
  result = 0.0;
  *(v378 + 88) = 0u;
  *(v378 + 104) = 0u;
  *(v378 + 120) = 0u;
  *(v378 + 136) = v375;
  *(v378 + 144) = v374;
  *(v378 + 152) = 2;
  *(v378 + 153) = v385[0];
  *(v378 + 156) = *(v385 + 3);
  *(v378 + 183) = 0;
  *(v378 + 160) = v17;
  *(v378 + 168) = 0;
  *(v378 + 176) = 0;
  *(v378 + 187) = v395[0];
  *(v378 + 191) = BYTE4(v395[0]);
  *(v378 + 192) = 0;
  *(v378 + 200) = 0;
  return result;
}

char *sub_269023DD4(char a1, _OWORD *a2)
{
  v2 = a2[11];
  v47[10] = a2[10];
  v47[11] = v2;
  v47[12] = a2[12];
  v3 = a2[7];
  v47[6] = a2[6];
  v47[7] = v3;
  v4 = a2[9];
  v47[8] = a2[8];
  v47[9] = v4;
  v5 = a2[3];
  v47[2] = a2[2];
  v47[3] = v5;
  v6 = a2[5];
  v47[4] = a2[4];
  v47[5] = v6;
  v7 = a2[1];
  v47[0] = *a2;
  v47[1] = v7;
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = 0x800000026905D8D0;
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v9 = 0xD000000000000028;
      v10 = sub_269057774();
      __swift_project_value_buffer(v10, qword_2802F3FF8);
      v11 = sub_269057A94();
      *&v34 = 0xD000000000000028;
      *(&v34 + 1) = 0x800000026905D8D0;
      if (("rViewStyle(_:viewModel:)" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v33[0] = 32;
        v33[1] = 0xE100000000000000;
        MEMORY[0x26D62FBC0](0xD000000000000029, 0x800000026905D900);
        MEMORY[0x26D62FBC0](32, 0xE100000000000000);

        v8 = *(&v34 + 1);
        v9 = v34;
      }

      v12 = sub_269057764();
      if (os_log_type_enabled(v12, v11))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v33[0] = v14;
        *v13 = 136315138;
        v15 = sub_269010108(v9, v8, v33);

        *(v13 + 4) = v15;
        _os_log_impl(&dword_269002000, v12, v11, "%s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
        MEMORY[0x26D6309D0](v14, -1, -1);
        MEMORY[0x26D6309D0](v13, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    else
    {
      v25 = a2[11];
      v44 = a2[10];
      v45 = v25;
      v46 = a2[12];
      v26 = a2[7];
      v40 = a2[6];
      v41 = v26;
      v27 = a2[9];
      v42 = a2[8];
      v43 = v27;
      v28 = a2[3];
      v36 = a2[2];
      v37 = v28;
      v29 = a2[5];
      v38 = a2[4];
      v39 = v29;
      v30 = a2[1];
      v34 = *a2;
      v35 = v30;
      v31 = objc_allocWithZone(type metadata accessor for IntroProxCardController());
      sub_269009E3C(v47, v33);
      v24 = sub_26904FC48(&v34);
      *&v24[OBJC_IVAR____TtC9SiriSetup23IntroProxCardController_delegate + 8] = &off_2879A7A40;
      swift_unknownObjectWeakAssign();
    }
  }

  else
  {
    v16 = a2[11];
    v44 = a2[10];
    v45 = v16;
    v46 = a2[12];
    v17 = a2[7];
    v40 = a2[6];
    v41 = v17;
    v18 = a2[9];
    v42 = a2[8];
    v43 = v18;
    v19 = a2[3];
    v36 = a2[2];
    v37 = v19;
    v20 = a2[5];
    v38 = a2[4];
    v39 = v20;
    v21 = a2[1];
    v34 = *a2;
    v35 = v21;
    v22 = objc_allocWithZone(type metadata accessor for IntroWelcomeController());
    sub_269009E3C(v47, v33);
    sub_269028E84(&v34);
    v24 = v23;
    *&v23[OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_delegate + 8] = &off_2879A7A40;
    swift_unknownObjectWeakAssign();
  }

  return v24;
}

id sub_269024140(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IntroPresenter();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26902425C@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_viewModel);
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

void (*sub_269024330(uint64_t **a1))(void *a1)
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
  v2[4] = sub_26901F628(v2);
  return sub_26901AFE8;
}

void *sub_2690243A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_presentingViewController);
  v2 = v1;
  return v1;
}

uint64_t sub_2690243E8()
{
  v1 = v0;
  v2 = 0xD000000000000015;
  if (*(v0 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_viewStyle) == 1 && (*(v0 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_checkboxCheckedMac) & 1) == 0)
  {
    v12 = 0x800000026905D1F0;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v13 = sub_269057774();
    __swift_project_value_buffer(v13, qword_2802F3FF8);
    v14 = sub_269057AA4();
    v22 = 0xD000000000000015;
    v23 = 0x800000026905D1F0;
    if (("Siri from intro action" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v20 = 32;
      v21 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD00000000000003DLL, 0x800000026905D6D0);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v2 = v22;
      v12 = v23;
    }

    v15 = sub_269057764();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136315138;
      v18 = sub_269010108(v2, v12, &v20);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_269002000, v15, v14, "%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x26D6309D0](v17, -1, -1);
      MEMORY[0x26D6309D0](v16, -1, -1);
    }

    else
    {
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {

      sub_26900D268(v19);
      goto LABEL_21;
    }
  }

  else
  {
    v3 = 0x800000026905D1F0;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v4 = sub_269057774();
    __swift_project_value_buffer(v4, qword_2802F3FF8);
    v5 = sub_269057AA4();
    v22 = 0xD000000000000015;
    v23 = 0x800000026905D1F0;
    if (("Dismissed from intro" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v20 = 32;
      v21 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000036, 0x800000026905D690);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v2 = v22;
      v3 = v23;
    }

    v6 = sub_269057764();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315138;
      v9 = sub_269010108(v2, v3, &v20);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_269002000, v6, v5, "%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D6309D0](v8, -1, -1);
      MEMORY[0x26D6309D0](v7, -1, -1);
    }

    else
    {
    }

    *(*(v1 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_dataSourceWriter) + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriEnabled) = 2;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {

      sub_26900E6C8(v11);
LABEL_21:

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_269024810()
{
  v1 = v0;
  v2 = 0x800000026905D1B0;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v3 = 0xD000000000000017;
  v4 = sub_269057774();
  __swift_project_value_buffer(v4, qword_2802F3FF8);
  v5 = sub_269057AA4();
  v13 = 0xD000000000000017;
  v14 = 0x800000026905D1B0;
  if (("checkboxCheckedMac" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v12[0] = 32;
    v12[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000014, 0x800000026905D670);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v3 = v13;
    v2 = v14;
  }

  v6 = sub_269057764();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    v9 = sub_269010108(v3, v2, v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_269002000, v6, v5, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6309D0](v8, -1, -1);
    MEMORY[0x26D6309D0](v7, -1, -1);
  }

  else
  {
  }

  *(*(v1 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_dataSourceWriter) + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_setupDismissed) = 2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_26900E964(v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_269024A60()
{

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_269024AF8()
{
  type metadata accessor for Analytics();
  v0 = swift_allocObject();
  result = sub_269024B34();
  qword_2802F5108 = v0;
  return result;
}

uint64_t sub_269024B34()
{
  v1 = sub_2690576E4();
  v18 = *(v1 - 8);
  v19 = v1;
  MEMORY[0x28223BE20](v1);
  v17 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_269057B24();
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269057B04();
  MEMORY[0x28223BE20](v6);
  v7 = sub_2690578A4();
  MEMORY[0x28223BE20](v7 - 8);
  type metadata accessor for AssistantSiriAnalyticsProvider();
  *(v0 + 16) = swift_allocObject();
  sub_269010AA8();
  sub_269057884();
  v20 = MEMORY[0x277D84F90];
  sub_269025718();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F39B8, &qword_26905A8E8);
  sub_269025770();
  sub_269057C14();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v16);
  v8 = sub_269057B74();
  v9 = v15;
  *(v15 + 24) = v8;
  v10 = v17;
  sub_2690576D4();
  v11 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v12 = sub_2690576C4();
  v13 = [v11 initWithNSUUID_];

  (*(v18 + 8))(v10, v19);
  result = v9;
  *(v9 + 32) = v13;
  return result;
}

void sub_269024E38()
{
  v1 = v0;
  v2 = sub_2690576E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(SetupSchemaProvisionalSiriSetupContext) init];
  if (v6)
  {
    v21 = v6;
    v7 = [objc_allocWithZone(SetupSchemaProvisionalSiriSetupStarted) init];
    if (v7)
    {
      v8 = v7;
      sub_2690576D4();
      v9 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v10 = sub_2690576C4();
      v11 = [v9 initWithNSUUID_];

      (*(v3 + 8))(v5, v2);
      v12 = *(v1 + 32);
      *(v1 + 32) = v11;

      [v8 setExists_];
      [v21 setStarted_];
      v13 = objc_allocWithZone(SetupSchemaProvisionalSiriSetupEvent);
      v14 = v21;
      v15 = [v13 init];
      if (v15)
      {
        v16 = v15;
        v17 = [objc_allocWithZone(SetupSchemaProvisionalSiriSetupEventMetadata) init];
        if (v17)
        {
          v18 = v17;
          [v17 setSetupId_];
          [v16 setEventMetadata_];
          [v16 setSiriSetupContext_];
          if (qword_2802F3220 != -1)
          {
            swift_once();
          }

          [objc_msgSend(objc_opt_self() sharedStream)];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      v19 = v21;
    }
  }
}

void sub_26902511C(char a1, char a2)
{
  v5 = [objc_allocWithZone(SetupSchemaProvisionalSiriSetupContext) init];
  if (!v5)
  {
    return;
  }

  v14 = v5;
  v6 = [objc_allocWithZone(SetupSchemaProvisionalSiriSetupEnded) init];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  [v6 setSiriEnabled_];
  [v7 setDismissed_];
  [v14 setEnded_];
  v8 = objc_allocWithZone(SetupSchemaProvisionalSiriSetupEvent);
  v14 = v14;
  v9 = [v8 init];
  if (!v9)
  {

LABEL_12:
    v12 = v14;
    goto LABEL_13;
  }

  v13 = v9;
  v10 = [objc_allocWithZone(SetupSchemaProvisionalSiriSetupEventMetadata) init];
  if (v10)
  {
    v11 = v10;
    [v10 setSetupId_];
    [v13 setEventMetadata_];
    [v13 setSiriSetupContext_];
    if (qword_2802F3220 != -1)
    {
      swift_once();
    }

    [objc_msgSend(objc_opt_self() sharedStream)];

    swift_unknownObjectRelease();
    return;
  }

  v12 = v13;
LABEL_13:
}

void sub_26902536C(char *a1)
{
  v2 = *a1;
  v3 = [objc_allocWithZone(SetupSchemaProvisionalSiriSetupContext) init];
  if (!v3)
  {
    return;
  }

  v12 = v3;
  v4 = [objc_allocWithZone(SetupSchemaProvisionalSiriSetupStep) init];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  [v4 setPage_];
  [v12 setStep_];
  v6 = objc_allocWithZone(SetupSchemaProvisionalSiriSetupEvent);
  v12 = v12;
  v7 = [v6 init];
  if (!v7)
  {

LABEL_12:
    v10 = v12;
    goto LABEL_13;
  }

  v11 = v7;
  v8 = [objc_allocWithZone(SetupSchemaProvisionalSiriSetupEventMetadata) init];
  if (v8)
  {
    v9 = v8;
    [v8 setSetupId_];
    [v11 setEventMetadata_];
    [v11 setSiriSetupContext_];
    if (qword_2802F3220 != -1)
    {
      swift_once();
    }

    [objc_msgSend(objc_opt_self() sharedStream)];

    swift_unknownObjectRelease();
    return;
  }

  v10 = v11;
LABEL_13:
}

uint64_t sub_26902559C()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void sub_269025608(uint64_t a1)
{
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v2 = [objc_opt_self() sharedAnalytics];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 newTurnBasedInstrumentationContext];
  }

  else
  {
    v4 = 0;
  }

  v6 = [objc_allocWithZone(MEMORY[0x277D5A928]) init];
  [v6 setInvocationSource_];
  v5 = v6;
  if (v6)
  {
    if (v4)
    {
      [v4 emitInstrumentation_];

      v5 = v6;
    }
  }

  else
  {
    v5 = v4;
  }
}

unint64_t sub_269025718()
{
  result = qword_2802F39B0;
  if (!qword_2802F39B0)
  {
    sub_269057B04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F39B0);
  }

  return result;
}

unint64_t sub_269025770()
{
  result = qword_2802F39C0;
  if (!qword_2802F39C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802F39B8, &qword_26905A8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F39C0);
  }

  return result;
}

__int128 *sub_2690257D4(__int128 *a1)
{
  v2 = a1[11];
  v36 = a1[10];
  v37 = v2;
  v38 = a1[12];
  v3 = a1[7];
  v32 = a1[6];
  v33 = v3;
  v4 = a1[9];
  v34 = a1[8];
  v35 = v4;
  v5 = a1[3];
  v28 = a1[2];
  v29 = v5;
  v6 = a1[5];
  v30 = a1[4];
  v31 = v6;
  v7 = a1[1];
  v27[0] = *a1;
  v27[1] = v7;
  *&v1[OBJC_IVAR____TtC9SiriSetup28DataSharingWelcomeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9SiriSetup28DataSharingWelcomeController_orbView] = 0;
  v8 = sub_269057944();
  if (*(&v28 + 1))
  {

    v9 = sub_269057944();
  }

  else
  {
    v9 = 0;
  }

  v26.receiver = v1;
  v26.super_class = type metadata accessor for DataSharingWelcomeController();
  v10 = objc_msgSendSuper2(&v26, sel_initWithTitle_detailText_icon_contentLayout_, v8, v9, 0, 2);

  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 buttonWithType_];
  v14 = [v13 titleLabel];
  if (v14)
  {
    v15 = v14;
    [v14 setAdjustsFontSizeToFitWidth_];
  }

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  if (v32)
  {

    v16 = sub_269057944();
  }

  else
  {
    v16 = 0;
  }

  [v13 setTitle:v16 forState:0];

  [v13 addTarget:v12 action:sel_aboutDataSharingTapped forControlEvents:64];
  v17 = [v12 headerView];

  [v17 addAccessoryButton_];
  if (v30 && *(v30 + 16))
  {
    v18 = objc_opt_self();

    v19 = [v18 boldButton];
    v20 = sub_269057944();

    [v19 setTitle:v20 forState:0];

    [v19 addTarget:v12 action:sel_shareTapped forControlEvents:64];
    v21 = [v12 buttonTray];
    [v21 addButton_];
  }

  if (v31)
  {

    sub_269009EE0(v27);
    v22 = [objc_opt_self() linkButton];
    v23 = sub_269057944();

    [v22 setTitle:v23 forState:0];

    [v22 addTarget:v12 action:sel_notNowTapped forControlEvents:64];
    v24 = [v12 buttonTray];
    [v24 addButton_];
  }

  else
  {

    sub_269009EE0(v27);
  }

  return v12;
}

void sub_269025BAC()
{
  v1 = sub_269057944();
  v2 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v2)
  {
    [v2 setPresentingViewController_];
  }

  [v2 present];
}

void sub_269025CD4(char *a1, uint64_t a2, void (*a3)(void))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = a1;
    a3();
    swift_unknownObjectRelease();
  }
}

id sub_269025DC0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DataSharingWelcomeController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_269025E64(__int128 *a1)
{
  v2 = a1[11];
  v38 = a1[10];
  v39 = v2;
  v40 = a1[12];
  v3 = a1[7];
  v34 = a1[6];
  v35 = v3;
  v4 = a1[9];
  v36 = a1[8];
  v37 = v4;
  v5 = a1[3];
  v30 = a1[2];
  v31 = v5;
  v6 = a1[5];
  v32 = a1[4];
  v33 = v6;
  v7 = a1[1];
  v29[0] = *a1;
  v29[1] = v7;
  *&v1[OBJC_IVAR____TtC9SiriSetup24SuccessWelcomeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9SiriSetup24SuccessWelcomeController_orbView] = 0;
  v8 = sub_269057944();
  if (*(&v30 + 1))
  {

    v9 = sub_269057944();
  }

  else
  {
    v9 = 0;
  }

  v28.receiver = v1;
  v28.super_class = type metadata accessor for SuccessWelcomeController();
  v10 = objc_msgSendSuper2(&v28, sel_initWithTitle_detailText_icon_contentLayout_, v8, v9, 0, 2);

  v11 = objc_allocWithZone(type metadata accessor for OrbContainerView());
  v12 = v10;
  v13 = sub_269012CF0(1);
  v14 = [v12 headerView];
  v15 = [v14 customIconContainerView];

  if (v15)
  {
    [v15 addSubview_];
  }

  v16 = [v12 headerView];

  v17 = [v16 customIconContainerView];
  if (v17)
  {
    [v17 setClipsToBounds_];
  }

  v18 = *(v12 + OBJC_IVAR____TtC9SiriSetup24SuccessWelcomeController_orbView);
  *(v12 + OBJC_IVAR____TtC9SiriSetup24SuccessWelcomeController_orbView) = v13;
  v27 = v13;

  v19 = v32;
  if (v32)
  {
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  sub_269009EE0(v29);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = objc_opt_self();
    v22 = v19 + 40;
    do
    {

      v23 = [v21 boldButton];
      v24 = sub_269057944();

      [v23 setTitle:v24 forState:0];

      [v23 addTarget:v12 action:sel_doneTapped forControlEvents:64];
      v25 = [v12 buttonTray];
      [v25 addButton_];

      v22 += 16;
      --v20;
    }

    while (v20);
  }

  return v12;
}

uint64_t sub_26902617C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = 0x800000026905D1F0;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v2 = 0xD000000000000015;
    v3 = sub_269057774();
    __swift_project_value_buffer(v3, qword_2802F3FF8);
    v4 = sub_269057AA4();
    v11 = 0xD000000000000015;
    v12 = 0x800000026905D1F0;
    if (("SuccessWelcomeController" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v10[0] = 32;
      v10[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905DB10);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v2 = v11;
      v1 = v12;
    }

    v5 = sub_269057764();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v10[0] = v7;
      *v6 = 136315138;
      v8 = sub_269010108(v2, v1, v10);

      *(v6 + 4) = v8;
      _os_log_impl(&dword_269002000, v5, v4, "%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x26D6309D0](v7, -1, -1);
      MEMORY[0x26D6309D0](v6, -1, -1);
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {

      sub_26900E6C8(v9);

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_26902647C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SuccessWelcomeController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_26902661C(__int128 *a1)
{
  v3 = a1[11];
  v43 = a1[10];
  v44 = v3;
  v45 = a1[12];
  v4 = a1[7];
  v39 = a1[6];
  v40 = v4;
  v5 = a1[9];
  v41 = a1[8];
  v42 = v5;
  v6 = a1[3];
  v35 = a1[2];
  v36 = v6;
  v7 = a1[5];
  v37 = a1[4];
  v38 = v7;
  v8 = a1[1];
  v34[0] = *a1;
  v34[1] = v8;
  *&v1[OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_orbView] = 0;
  v9 = &v1[OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_viewModel];
  v10 = a1[11];
  *(v9 + 10) = a1[10];
  *(v9 + 11) = v10;
  *(v9 + 12) = a1[12];
  v11 = a1[7];
  *(v9 + 6) = a1[6];
  *(v9 + 7) = v11;
  v12 = a1[9];
  *(v9 + 8) = a1[8];
  *(v9 + 9) = v12;
  v13 = a1[3];
  *(v9 + 2) = a1[2];
  *(v9 + 3) = v13;
  v14 = a1[5];
  *(v9 + 4) = a1[4];
  *(v9 + 5) = v14;
  v15 = a1[1];
  *v9 = *a1;
  *(v9 + 1) = v15;
  sub_269009E3C(v34, v33);
  v16 = sub_269057944();
  if (*(&v35 + 1))
  {

    v17 = sub_269057944();
  }

  else
  {
    v17 = 0;
  }

  v32.receiver = v1;
  v32.super_class = type metadata accessor for VoiceTrainingWelcomeController();
  v18 = objc_msgSendSuper2(&v32, sel_initWithTitle_detailText_icon_contentLayout_, v16, v17, 0, 2);

  v19 = objc_allocWithZone(type metadata accessor for OrbContainerView());
  v20 = v18;
  v21 = sub_269012CF0(1);
  v22 = [v20 headerView];
  v23 = [v22 customIconContainerView];

  if (v23)
  {
    [v23 addSubview_];
  }

  v24 = [v20 headerView];
  v25 = [v24 customIconContainerView];

  if (v25)
  {
    [v25 setClipsToBounds_];
  }

  v26 = *(v20 + OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_orbView);
  *(v20 + OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_orbView) = v21;
  v27 = v21;

  v28 = [objc_opt_self() linkButton];
  if (v38)
  {

    v29 = sub_269057944();
    sub_269009EE0(v34);
  }

  else
  {
    sub_269009EE0(v34);
    v29 = 0;
  }

  [v28 setTitle:v29 forState:0];

  [v28 addTarget:v20 action:sel_secondaryButtonTapped forControlEvents:64];
  v30 = [v20 buttonTray];

  [v30 addButton_];
  return v20;
}

void sub_269026954(void *a1, char a2)
{
  v3 = v2;
  v5 = &v2[OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_viewModel];
  v7 = *&v2[OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_viewModel + 16];
  v6 = *&v2[OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_viewModel + 24];
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = *(v9 + 32);

  v60 = v10;
  if (v7 == v10(v8, v9) && v6 == v11)
  {
  }

  else
  {
    v13 = sub_269057DE4();

    if (v13)
    {
      goto LABEL_18;
    }

    v57 = v3;
    v14 = 0xD000000000000013;
    v15 = 0x800000026905D480;
    sub_269057C54();

    v16 = v10(v8, v9);
    MEMORY[0x26D62FBC0](v16);

    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v17 = sub_269057774();
    __swift_project_value_buffer(v17, qword_2802F3FF8);
    v58 = sub_269057AA4();
    v64 = 0xD000000000000013;
    v65 = 0x800000026905D480;
    v18 = (0x800000026905D4A0 >> 56) & 0xF;
    if ((0x800000026905D4A0 & 0x2000000000000000) == 0)
    {
      v18 = 19;
    }

    if (v18)
    {
      v62 = 32;
      v63 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000013, 0x800000026905D4A0);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v14 = v64;
      v15 = v65;
    }

    v19 = sub_269057764();
    if (os_log_type_enabled(v19, v58))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v62 = v21;
      *v20 = 136315138;
      v22 = sub_269010108(v14, v15, &v62);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_269002000, v19, v58, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x26D6309D0](v21, -1, -1);
      MEMORY[0x26D6309D0](v20, -1, -1);
    }

    else
    {
    }

    v23 = v60(v8, v9);
    v3 = v57;
    sub_269027254(v23, v24, a2 & 1);
  }

LABEL_18:
  v26 = *(v5 + 13);
  v25 = *(v5 + 14);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = *(v28 + 176);

  v30 = v29(v27, v28);
  if (!v25)
  {
    if (!v31)
    {
      return;
    }

    goto LABEL_27;
  }

  if (!v31)
  {
LABEL_27:

LABEL_28:
    v34 = 0xD000000000000013;
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_269057C54();

    v64 = 0xD00000000000001ELL;
    v65 = 0x800000026905D4C0;
    v35 = a1[3];
    v36 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v35);
    v37 = (*(v36 + 176))(v35, v36);
    if (v38)
    {
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0xE000000000000000;
    }

    v40 = 0x800000026905D480;
    MEMORY[0x26D62FBC0](v37, v39);

    v42 = v64;
    v41 = v65;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v43 = sub_269057774();
    __swift_project_value_buffer(v43, qword_2802F3FF8);
    v44 = sub_269057AA4();
    v64 = 0xD000000000000013;
    v65 = 0x800000026905D480;
    v45 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v45 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
      v62 = 32;
      v63 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v42, v41);
      MEMORY[0x26D62FBC0](v62, v63);

      v34 = v64;
      v40 = v65;
    }

    v46 = sub_269057764();
    if (os_log_type_enabled(v46, v44))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v62 = v48;
      *v47 = 136315138;
      v49 = sub_269010108(v34, v40, &v62);

      *(v47 + 4) = v49;
      _os_log_impl(&dword_269002000, v46, v44, "%s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x26D6309D0](v48, -1, -1);
      MEMORY[0x26D6309D0](v47, -1, -1);
    }

    else
    {
    }

    v50 = a1[3];
    v51 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v50);
    v52 = (*(v51 + 176))(v50, v51);
    if (v53)
    {
      v54 = v52;
    }

    else
    {
      v54 = 0;
    }

    if (v53)
    {
      v55 = v53;
    }

    else
    {
      v55 = 0xE000000000000000;
    }

    *(v5 + 13) = v54;
    *(v5 + 14) = v55;

    v56 = [v3 navigationItem];
    v61 = sub_269057944();
    [v56 setTitle_];

    return;
  }

  if (v26 != v30 || v25 != v31)
  {
    v33 = sub_269057DE4();

    if (v33)
    {
      return;
    }

    goto LABEL_28;
  }
}

uint64_t sub_269027024(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3868, &qword_26905A590);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for VoiceTrainingWelcomeController();
  v13.receiver = v1;
  v13.super_class = v6;
  objc_msgSendSuper2(&v13, sel_viewDidAppear_, a1 & 1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_269057A64();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    sub_269057A44();
    swift_unknownObjectRetain();
    v10 = sub_269057A34();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v8;
    sub_269038934(0, 0, v5, &unk_26905A598, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_269027254(uint64_t a1, uint64_t a2, char a3)
{
  v5 = &v3[OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_viewModel];
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;

  v6 = [v3 headerView];
  v7 = sub_269057944();
  [v6 setTitle_];

  v8 = [objc_allocWithZone(MEMORY[0x277CDA000]) init];
  v9 = *MEMORY[0x277CDA7B8];
  v10 = objc_opt_self();
  v11 = v8;
  v12 = [v10 functionWithName_];
  [v11 setTimingFunction_];

  v13 = 0.2;
  if ((a3 & 1) == 0)
  {
    v13 = 0.0;
  }

  [v11 setDuration_];

  [v11 setType_];
  v14 = [v3 view];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 semanticContentAttribute];

    v17 = MEMORY[0x277CDA938];
    if (v16 != 4)
    {
      v17 = MEMORY[0x277CDA940];
    }

    v18 = *v17;
    [v11 setSubtype_];

    v19 = [v3 headerView];
    v20 = [v19 layer];

    [v20 removeAllAnimations];
    v21 = [v3 headerView];
    v22 = [v21 layer];

    [v22 addAnimation:v11 forKey:*MEMORY[0x277CDA920]];
  }

  else
  {
    __break(1u);
  }
}

id sub_269027540(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VoiceTrainingWelcomeController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_26902764C(uint64_t a1, uint64_t a2, SEL *a3, uint64_t a4)
{
  v5 = *(*v4 + OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_orbView);
  if (v5)
  {
    return [*(v5 + OBJC_IVAR____TtC9SiriSetup16OrbContainerView_orbView) *a3];
  }

  return result;
}

void sub_26902767C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*v3 + OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_orbView);
  if (v4)
  {
    v8 = *&v4[OBJC_IVAR____TtC9SiriSetup16OrbContainerView_checkMark];
    v9 = v4;
    v10 = v8;
    sub_26901BE7C(a1 & 1, a2, a3);
  }
}

id sub_269027734()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_orbView);
  if (v1)
  {
    return [*(v1 + OBJC_IVAR____TtC9SiriSetup16OrbContainerView_orbView) setPowerLevel_];
  }

  return result;
}

uint64_t sub_269027788()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2690277C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

__int128 *sub_26902781C(__int128 *a1)
{
  v2 = a1[11];
  v32 = a1[10];
  v33 = v2;
  v34 = a1[12];
  v3 = a1[7];
  v28 = a1[6];
  v29 = v3;
  v4 = a1[9];
  v30 = a1[8];
  v31 = v4;
  v5 = a1[3];
  v24 = a1[2];
  v25 = v5;
  v6 = a1[5];
  v26 = a1[4];
  v27 = v6;
  v7 = a1[1];
  v23[0] = *a1;
  v23[1] = v7;
  *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_orbView] = 0;
  *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_player] = 0;
  *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_playerLooper] = 0;
  *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_playerViewController] = 0;
  v8 = sub_269057944();
  if (*(&v24 + 1))
  {

    v9 = sub_269057944();
  }

  else
  {
    v9 = 0;
  }

  v22.receiver = v1;
  v22.super_class = type metadata accessor for EducationWelcomeController();
  v10 = objc_msgSendSuper2(&v22, sel_initWithTitle_detailText_icon_contentLayout_, v8, v9, 0, 2);

  v11 = v10;
  v12 = [v11 headerView];
  [v12 setAlpha_];

  v13 = [v11 contentView];
  [v13 setAlpha_];

  sub_269028084();
  v14 = v26;
  if (v26)
  {
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  sub_269009EE0(v23);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = objc_opt_self();
    v17 = v14 + 40;
    do
    {

      v18 = [v16 boldButton];
      v19 = sub_269057944();

      [v18 setTitle:v19 forState:0];

      [v18 addTarget:v11 action:sel_continueTapped forControlEvents:64];
      v20 = [v11 buttonTray];
      [v20 addButton_];

      v17 += 16;
      --v15;
    }

    while (v15);
  }

  return v11;
}

void sub_269027AD4(uint64_t a1)
{
  v2 = a1;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for EducationWelcomeController();
  objc_msgSendSuper2(&v19, sel_viewDidAppear_, v2 & 1);
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v17 = sub_269028DE4;
  v18 = v4;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_26900BEF0;
  v16 = &block_descriptor_5;
  v5 = _Block_copy(&v13);
  v6 = v1;

  [v3 animateWithDuration:0 delay:v5 options:0 animations:0.4 completion:0.0];
  _Block_release(v5);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v17 = sub_269028E20;
  v18 = v7;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_26900BEF0;
  v16 = &block_descriptor_23;
  v8 = _Block_copy(&v13);
  v9 = v6;

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v17 = sub_269028E44;
  v18 = v10;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_2690277C8;
  v16 = &block_descriptor_29;
  v11 = _Block_copy(&v13);
  v12 = v9;

  [v3 animateWithDuration:0 delay:v8 options:v11 animations:0.4 completion:0.3];
  _Block_release(v11);
  _Block_release(v8);
}

uint64_t sub_269027D94()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = 0x800000026905D1F0;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v2 = 0xD000000000000015;
    v3 = sub_269057774();
    __swift_project_value_buffer(v3, qword_2802F3FF8);
    v4 = sub_269057AA4();
    v11 = 0xD000000000000015;
    v12 = 0x800000026905D1F0;
    if (("roller not initialized" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v10[0] = 32;
      v10[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000017, 0x800000026905DD90);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v2 = v11;
      v1 = v12;
    }

    v5 = sub_269057764();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v10[0] = v7;
      *v6 = 136315138;
      v8 = sub_269010108(v2, v1, v10);

      *(v6 + 4) = v8;
      _os_log_impl(&dword_269002000, v5, v4, "%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x26D6309D0](v7, -1, -1);
      MEMORY[0x26D6309D0](v6, -1, -1);
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {

      sub_26900E6C8(v9);

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_269028030(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  [v2 setAlpha_];
}

void sub_269028084()
{
  v1 = v0;
  v2 = sub_2690576A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802F3240 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();

  v8 = [v7 bundleForClass_];
  v9 = sub_269057944();
  v10 = sub_269057944();
  v11 = [v8 pathForResource:v9 ofType:v10];

  if (v11)
  {
    v91 = v3;
    sub_269057954();

    sub_269057684();
    v12 = objc_allocWithZone(MEMORY[0x277CE65B0]);
    v13 = sub_269057694();
    v14 = [v12 initWithURL_];

    v15 = [objc_allocWithZone(MEMORY[0x277CE65F8]) initWithPlayerItem_];
    v16 = *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_player];
    *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_player] = v15;
    v17 = v15;

    v92 = v2;
    if (v17)
    {
      v18 = [objc_allocWithZone(MEMORY[0x277CB85E0]) init];
      v19 = *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_playerViewController];
      *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_playerViewController] = v18;
      v20 = v18;

      if (v20)
      {
        v89 = v17;
        v90 = v14;
        [v20 setShowsPlaybackControls_];
        [v20 setAllowsPictureInPicturePlayback_];
        v21 = v20;
        v22 = [v21 view];
        if (v22)
        {
          v23 = v22;
          [v22 setTranslatesAutoresizingMaskIntoConstraints_];

          v24 = [v21 view];
          if (v24)
          {
            v25 = v24;
            v88 = v8;
            v26 = [objc_opt_self() systemBackgroundColor];
            [v25 setBackgroundColor_];

            v27 = [v1 contentView];
            v28 = [v21 view];
            if (v28)
            {
              v29 = v28;
              v87 = v5;
              [v27 addSubview_];

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3400, &unk_26905AB40);
              v30 = swift_allocObject();
              *(v30 + 16) = xmmword_26905AB00;
              v31 = [v21 view];
              if (v31)
              {
                v32 = v31;
                v33 = [v31 topAnchor];

                v34 = [v1 contentView];
                v35 = [v34 topAnchor];

                v36 = [v33 constraintEqualToAnchor:v35 constant:60.0];
                *(v30 + 32) = v36;
                v37 = [v21 view];
                if (v37)
                {
                  v38 = v37;
                  v39 = [v37 centerXAnchor];

                  v40 = [v1 contentView];
                  v41 = [v40 centerXAnchor];

                  v42 = [v39 constraintEqualToAnchor_];
                  *(v30 + 40) = v42;
                  v43 = [v21 view];
                  if (v43)
                  {
                    v44 = v43;
                    v45 = [v43 heightAnchor];

                    v46 = [v45 constraintEqualToConstant_];
                    *(v30 + 48) = v46;
                    v47 = [v21 view];

                    v48 = v87;
                    if (v47)
                    {

                      v49 = objc_opt_self();

                      v50 = [v47 widthAnchor];

                      v51 = [v50 constraintEqualToConstant_];
                      *(v30 + 56) = v51;
                      sub_26901BDD8();
                      v52 = sub_2690579C4();

                      [v49 activateConstraints_];

                      v53 = v89;
                      [v21 setPlayer_];
                      v54 = objc_allocWithZone(MEMORY[0x277CE65E0]);
                      v55 = *(MEMORY[0x277CC08C8] + 16);
                      v93[0] = *MEMORY[0x277CC08C8];
                      v93[1] = v55;
                      v93[2] = *(MEMORY[0x277CC08C8] + 32);
                      v56 = v90;
                      v57 = [v54 initWithPlayer:v53 templateItem:v90 timeRange:v93];

                      (*(v91 + 8))(v48, v92);
                      v58 = *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_playerLooper];
                      *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_playerLooper] = v57;

                      return;
                    }

                    goto LABEL_44;
                  }

LABEL_43:
                  __break(1u);
LABEL_44:
                  __break(1u);
                  return;
                }

LABEL_42:
                __break(1u);
                goto LABEL_43;
              }

LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

LABEL_40:
            __break(1u);
            goto LABEL_41;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_40;
      }

      v76 = v8;

      v77 = 0x800000026905DCF0;
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v78 = 0xD000000000000012;
      v79 = sub_269057774();
      __swift_project_value_buffer(v79, qword_2802F3FF8);
      v80 = sub_269057A94();
      *&v93[0] = 0xD000000000000012;
      *(&v93[0] + 1) = 0x800000026905DCF0;
      if (("AVQueuePlayer not initialized" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v94 = 32;
        v95 = 0xE100000000000000;
        MEMORY[0x26D62FBC0](0xD000000000000026, 0x800000026905DD60);
        MEMORY[0x26D62FBC0](v94, v95);

        v77 = *(&v93[0] + 1);
        v78 = *&v93[0];
      }

      v71 = sub_269057764();
      if (os_log_type_enabled(v71, v80))
      {
        v81 = swift_slowAlloc();
        v82 = v14;
        v83 = swift_slowAlloc();
        v94 = v83;
        *v81 = 136315138;
        v84 = sub_269010108(v78, v77, &v94);
        v85 = v17;
        v86 = v84;

        *(v81 + 4) = v86;
        _os_log_impl(&dword_269002000, v71, v80, "%s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v83);
        MEMORY[0x26D6309D0](v83, -1, -1);
        MEMORY[0x26D6309D0](v81, -1, -1);

        goto LABEL_37;
      }
    }

    else
    {

      v67 = 0x800000026905DCF0;
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v68 = 0xD000000000000012;
      v69 = sub_269057774();
      __swift_project_value_buffer(v69, qword_2802F3FF8);
      v70 = sub_269057A94();
      *&v93[0] = 0xD000000000000012;
      *(&v93[0] + 1) = 0x800000026905DCF0;
      if (("iri Education Video" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v94 = 32;
        v95 = 0xE100000000000000;
        MEMORY[0x26D62FBC0](0xD00000000000001DLL, 0x800000026905DD40);
        MEMORY[0x26D62FBC0](v94, v95);

        v67 = *(&v93[0] + 1);
        v68 = *&v93[0];
      }

      v71 = sub_269057764();
      if (os_log_type_enabled(v71, v70))
      {
        v72 = swift_slowAlloc();
        v73 = v14;
        v74 = swift_slowAlloc();
        v94 = v74;
        *v72 = 136315138;
        v75 = sub_269010108(v68, v67, &v94);

        *(v72 + 4) = v75;
        _os_log_impl(&dword_269002000, v71, v70, "%s", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        MEMORY[0x26D6309D0](v74, -1, -1);
        MEMORY[0x26D6309D0](v72, -1, -1);

LABEL_37:
        (*(v91 + 8))(v5, v92);
        return;
      }
    }

    goto LABEL_37;
  }

  v59 = 0x800000026905DCF0;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v60 = 0xD000000000000012;
  v61 = sub_269057774();
  __swift_project_value_buffer(v61, qword_2802F3FF8);
  v62 = sub_269057A94();
  *&v93[0] = 0xD000000000000012;
  *(&v93[0] + 1) = 0x800000026905DCF0;
  if (("setupVideoPlayer()" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v94 = 32;
    v95 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000023, 0x800000026905DD10);
    MEMORY[0x26D62FBC0](v94, v95);

    v59 = *(&v93[0] + 1);
    v60 = *&v93[0];
  }

  v63 = sub_269057764();
  if (os_log_type_enabled(v63, v62))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v94 = v65;
    *v64 = 136315138;
    v66 = sub_269010108(v60, v59, &v94);

    *(v64 + 4) = v66;
    _os_log_impl(&dword_269002000, v63, v62, "%s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    MEMORY[0x26D6309D0](v65, -1, -1);
    MEMORY[0x26D6309D0](v64, -1, -1);
  }

  else
  {
  }
}

id sub_269028CD8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EducationWelcomeController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_269028DAC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_269028E44(double a1)
{
  result = *(*(v1 + 16) + OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_player);
  if (result)
  {
    LODWORD(a1) = 1.0;
    return [result playImmediatelyAtRate_];
  }

  return result;
}

void sub_269028E84(__int128 *a1)
{
  v191 = sub_269057714();
  v3 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v190 = &v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[11];
  v208 = a1[10];
  v209 = v5;
  v210 = a1[12];
  v6 = a1[7];
  v204 = a1[6];
  v205 = v6;
  v7 = a1[9];
  v206 = a1[8];
  v207 = v7;
  v8 = a1[3];
  v200 = a1[2];
  v201 = v8;
  v9 = a1[5];
  v202 = a1[4];
  v203 = v9;
  v10 = a1[1];
  v199[0] = *a1;
  v199[1] = v10;
  *&v1[OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_orbView] = 0;
  v1[OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_isLoading] = 0;
  v11 = &v1[OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_viewModel];
  v11[3] = &type metadata for ViewModel;
  v11[4] = &off_2879A7790;
  v12 = swift_allocObject();
  *v11 = v12;
  v13 = a1[11];
  v12[11] = a1[10];
  v12[12] = v13;
  v12[13] = a1[12];
  v14 = a1[7];
  v12[7] = a1[6];
  v12[8] = v14;
  v15 = a1[9];
  v12[9] = a1[8];
  v12[10] = v15;
  v16 = a1[3];
  v12[3] = a1[2];
  v12[4] = v16;
  v17 = a1[5];
  v12[5] = a1[4];
  v12[6] = v17;
  v18 = a1[1];
  v12[1] = *a1;
  v12[2] = v18;
  sub_269009E3C(v199, &v197);
  v19 = sub_269057944();
  if (*(&v200 + 1))
  {

    v20 = sub_269057944();
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_269017F70();
  v22 = type metadata accessor for IntroWelcomeController();
  v196.receiver = v1;
  v196.super_class = v22;
  v166 = objc_msgSendSuper2(&v196, sel_initWithTitle_detailText_icon_contentLayout_, v19, v20, v21, 2);

  v23 = v208;
  if (!v208 || (v172 = *(v208 + 16)) == 0)
  {
LABEL_75:
    if (v202)
    {
      v148 = v202;
    }

    else
    {
      v148 = MEMORY[0x277D84F90];
    }

    v149 = *(v148 + 16);
    v191 = v148;
    if (v149)
    {
      v192 = objc_opt_self();

      v150 = v148 + 40;
      v151 = v166;
      do
      {

        v152 = [v192 boldButton];
        v153 = sub_269057944();

        [v152 setTitle:v153 forState:0];

        [v152 addTarget:v151 action:sel_continueTapped forControlEvents:64];
        v154 = [v151 &selRef_readFrom_];
        [v154 byte_279C4A092];

        v150 += 16;
        --v149;
      }

      while (v149);
    }

    else
    {
    }

    v155 = [objc_opt_self() linkButton];
    if (v203)
    {

      v156 = sub_269057944();
      sub_269009EE0(v199);
    }

    else
    {
      sub_269009EE0(v199);
      v156 = 0;
    }

    v157 = v166;
    [v155 setTitle:v156 forState:{0, v164}];

    v158 = v157;
    [v155 addTarget:v158 action:sel_skipTapped forControlEvents:64];
    v159 = [v158 buttonTray];
    [v159 addButton_];

    v160 = objc_opt_self();
    v161 = sub_269057944();
    v162 = [v160 linkWithBundleIdentifier_];

    v163 = [v158 buttonTray];
    [v163 setPrivacyLinkController_];

    *(v158 + OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_isLoading) = 0;
    return;
  }

  v24 = objc_opt_self();
  v170 = v23 + 32;
  v171 = v24;
  v188 = (v3 + 8);
  v189 = "T@NSString,N,R";
  v168 = ":localDevice:targetDevice:)";
  v169 = 0x800000026905BF00;
  v167 = "ocalizable string for key ";
  v178 = 0x800000026905BEA0;

  v25 = 0;
  *&v26 = 136315138;
  v164 = v26;
  v165 = v23;
  while (1)
  {
    if (v25 >= *(v23 + 16))
    {
      goto LABEL_89;
    }

    v27 = (v170 + 48 * v25);
    v28 = v27[2];
    v29 = v27[3];
    v30 = v27[5];
    v182 = v27[4];
    v183 = v28;
    v31 = v27[1];

    v32 = sub_269057944();
    v33 = [v171 _systemImageNamed_];

    if (v33)
    {
      break;
    }

LABEL_8:
    if (++v25 == v172)
    {

      goto LABEL_75;
    }
  }

  v180 = v30;
  v181 = v29;
  if (qword_2802F3248 != -1)
  {
    swift_once();
  }

  v179 = byte_2802F5130;
  v34 = sub_269051B18(byte_2802F5130);
  v36 = v35;
  v37 = v181;
  v197 = v183;
  v198 = v181;

  MEMORY[0x26D62FBC0](v34, v36);

  v38 = v197;
  v39 = v198;
  v40 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v42 = *(v40 + 2);
  v41 = *(v40 + 3);
  v185 = v40;
  v43 = v42 + 1;
  if (v42 >= v41 >> 1)
  {
    v185 = sub_26904DCD8((v41 > 1), v42 + 1, 1, v185);
  }

  v44 = v185;
  *(v185 + 2) = v43;
  v45 = &v44[16 * v42];
  *(v45 + 4) = v38;
  *(v45 + 5) = v39;
  v46 = *(v44 + 3);

  v184 = v42 + 2;
  v176 = v31;
  v177 = v25;
  v175 = v33;
  if ((v42 + 2) > (v46 >> 1))
  {
    v185 = sub_26904DCD8((v46 > 1), v184, 1, v185);
  }

  v47 = 0;
  v48 = v185;
  *(v185 + 2) = v184;
  v49 = &v48[16 * v43];
  *(v49 + 4) = v183;
  *(v49 + 5) = v37;
  v50 = (v48 + 40);
  while (v47 < *(v185 + 2))
  {
    v52 = *(v50 - 1);
    v51 = *v50;

    v187 = 0xD000000000000018;
    v53 = sub_269057944();
    v54 = objc_opt_self();
    v55 = [v54 bundleWithIdentifier_];

    if (!v55)
    {
      v55 = [v54 mainBundle];
    }

    v56 = [objc_opt_self() currentLocale];
    v57 = v190;
    sub_269057704();

    sub_2690576F4();
    v186 = *v188;
    v186(v57, v191);
    if (qword_2802F3238 != -1)
    {
      swift_once();
    }

    v58 = qword_2802F5118;
    v59 = sub_269057944();
    v192 = v51;
    v60 = v52;
    v61 = v59;
    v62 = v55;
    v63 = sub_269057944();

    v64 = [v58 localizedStringForKey:v61 gender:0 table:0 bundle:v62 languageCode:v63];

    if (v64)
    {
      v65 = sub_269057954();
      v67 = v66;

      if (v65 != v60 || v67 != v192)
      {
        v68 = sub_269057DE4();

        if ((v68 & 1) == 0)
        {

          v183 = v65;
          goto LABEL_43;
        }

        goto LABEL_19;
      }
    }

LABEL_19:
    ++v47;
    v50 += 2;
    if (v184 == v47)
    {

      v197 = 0;
      v198 = 0xE000000000000000;
      sub_269057C54();
      MEMORY[0x26D62FBC0](0xD00000000000002ALL, v168 | 0x8000000000000000);
      MEMORY[0x26D62FBC0](v183, v181);
      MEMORY[0x26D62FBC0](0xD000000000000015, v167 | 0x8000000000000000);
      v69 = v197;
      v70 = v198;
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v71 = sub_269057774();
      __swift_project_value_buffer(v71, qword_2802F3FF8);
      v72 = sub_269057A94();
      v73 = v169;
      v197 = 0xD00000000000003BLL;
      v198 = v169;
      v74 = HIBYTE(v70) & 0xF;
      if ((v70 & 0x2000000000000000) == 0)
      {
        v74 = v69 & 0xFFFFFFFFFFFFLL;
      }

      if (v74)
      {
        v195[0] = 32;
        v195[1] = 0xE100000000000000;
        MEMORY[0x26D62FBC0](v69, v70);
        MEMORY[0x26D62FBC0](v195[0], v195[1]);

        v75 = v197;
        v73 = v198;
      }

      else
      {
        v75 = 0xD00000000000003BLL;
      }

      v76 = sub_269057764();
      if (os_log_type_enabled(v76, v72))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v195[0] = v78;
        *v77 = v164;
        v79 = sub_269010108(v75, v73, v195);

        *(v77 + 4) = v79;
        _os_log_impl(&dword_269002000, v76, v72, "%s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v78);
        MEMORY[0x26D6309D0](v78, -1, -1);
        MEMORY[0x26D6309D0](v77, -1, -1);
      }

      else
      {
      }

      v67 = v181;

LABEL_43:
      v80 = v179;
      v81 = sub_2690519EC(v179);
      v197 = v183;
      v198 = v67;
      v194 = v82;
      strcpy(v195, "%DEVICE_NAME%");
      HIWORD(v195[1]) = -4864;
      v193 = v81;
      v83 = sub_26900BE9C();
      v84 = sub_269057BE4();
      v86 = v85;

      v87 = sub_2690519EC(v80);
      v197 = v84;
      v198 = v86;
      v173 = 0xD000000000000014;
      v195[0] = 0xD000000000000014;
      v195[1] = v178;
      v193 = v87;
      v194 = v88;
      v183 = v83;
      sub_269057BE4();

      v174 = sub_269057944();

      v89 = sub_269051B18(v80);
      v91 = v90;
      v92 = v180;
      v197 = v182;
      v198 = v180;

      MEMORY[0x26D62FBC0](v89, v91);

      v93 = v197;
      v94 = v198;
      v95 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v97 = *(v95 + 2);
      v96 = *(v95 + 3);
      v185 = v95;
      v98 = v97 + 1;
      if (v97 >= v96 >> 1)
      {
        v185 = sub_26904DCD8((v96 > 1), v97 + 1, 1, v185);
      }

      v99 = v185;
      *(v185 + 2) = v98;
      v100 = &v99[16 * v97];
      *(v100 + 4) = v93;
      *(v100 + 5) = v94;
      v101 = *(v99 + 3);

      v184 = v97 + 2;
      if ((v97 + 2) > (v101 >> 1))
      {
        v185 = sub_26904DCD8((v101 > 1), v184, 1, v185);
      }

      v102 = 0;
      v103 = v185;
      *(v185 + 2) = v184;
      v104 = &v103[16 * v98];
      *(v104 + 4) = v182;
      *(v104 + 5) = v92;
      v105 = (v103 + 40);
      while (2)
      {
        if (v102 >= *(v185 + 2))
        {
          goto LABEL_88;
        }

        v107 = *(v105 - 1);
        v106 = *v105;

        v108 = sub_269057944();
        v109 = objc_opt_self();
        v110 = [v109 bundleWithIdentifier_];

        if (!v110)
        {
          v110 = [v109 mainBundle];
        }

        v111 = [objc_opt_self() currentLocale];
        v112 = v190;
        sub_269057704();

        sub_2690576F4();
        v186(v112, v191);
        if (qword_2802F3238 != -1)
        {
          swift_once();
        }

        v113 = qword_2802F5118;
        v114 = sub_269057944();
        v192 = v106;
        v115 = v107;
        v116 = v114;
        v117 = v110;
        v118 = sub_269057944();

        v119 = [v113 localizedStringForKey:v116 gender:0 table:0 bundle:v117 languageCode:v118];

        if (v119)
        {
          v120 = sub_269057954();
          v122 = v121;

          if (v120 == v115 && v122 == v192)
          {

            goto LABEL_48;
          }

          v123 = sub_269057DE4();

          if ((v123 & 1) == 0)
          {

            v182 = v120;
            v23 = v165;
LABEL_73:
            v136 = v179;
            v137 = sub_2690519EC(v179);
            v197 = v182;
            v198 = v122;
            v194 = v138;
            strcpy(v195, "%DEVICE_NAME%");
            HIWORD(v195[1]) = -4864;
            v193 = v137;
            v139 = sub_269057BE4();
            v141 = v140;

            v142 = sub_2690519EC(v136);
            v197 = v139;
            v198 = v141;
            v195[0] = v173;
            v195[1] = v178;
            v193 = v142;
            v194 = v143;
            sub_269057BE4();

            v144 = sub_269057944();

            v145 = [objc_opt_self() whiteColor];
            v147 = v174;
            v146 = v175;
            [v166 addBulletedListItemWithTitle:v174 description:v144 image:v175 tintColor:v145];

            v25 = v177;
            goto LABEL_8;
          }
        }

        else
        {
LABEL_48:
        }

        ++v102;
        v105 += 2;
        if (v184 == v102)
        {

          v197 = 0;
          v198 = 0xE000000000000000;
          sub_269057C54();
          MEMORY[0x26D62FBC0](0xD00000000000002ALL, v168 | 0x8000000000000000);
          MEMORY[0x26D62FBC0](v182, v180);
          MEMORY[0x26D62FBC0](0xD000000000000015, v167 | 0x8000000000000000);
          v124 = v197;
          v125 = v198;
          if (qword_2802F3258 != -1)
          {
            swift_once();
          }

          v126 = sub_269057774();
          __swift_project_value_buffer(v126, qword_2802F3FF8);
          v127 = sub_269057A94();
          v128 = v169;
          v197 = 0xD00000000000003BLL;
          v198 = v169;
          v129 = HIBYTE(v125) & 0xF;
          if ((v125 & 0x2000000000000000) == 0)
          {
            v129 = v124 & 0xFFFFFFFFFFFFLL;
          }

          if (v129)
          {
            v195[0] = 32;
            v195[1] = 0xE100000000000000;
            MEMORY[0x26D62FBC0](v124, v125);
            MEMORY[0x26D62FBC0](v195[0], v195[1]);

            v130 = v197;
            v128 = v198;
          }

          else
          {
            v130 = 0xD00000000000003BLL;
          }

          v131 = sub_269057764();
          if (os_log_type_enabled(v131, v127))
          {
            v132 = swift_slowAlloc();
            v133 = swift_slowAlloc();
            v195[0] = v133;
            *v132 = v164;
            v134 = sub_269010108(v130, v128, v195);

            *(v132 + 4) = v134;
            _os_log_impl(&dword_269002000, v131, v127, "%s", v132, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v133);
            MEMORY[0x26D6309D0](v133, -1, -1);
            MEMORY[0x26D6309D0](v132, -1, -1);
          }

          else
          {
          }

          v135 = v180;

          v122 = v135;
          v23 = v165;
          goto LABEL_73;
        }

        continue;
      }
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
}

void sub_26902A258()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_isLoading;
  if (*(v0 + OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_isLoading))
  {
    v3 = 0x800000026905DE50;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v4 = 0xD000000000000010;
    v5 = sub_269057774();
    __swift_project_value_buffer(v5, qword_2802F3FF8);
    v6 = sub_269057AA4();
    v12 = 0xD000000000000010;
    v13 = 0x800000026905DE50;
    if (("roller" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v11[0] = 32;
      v11[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000028, 0x800000026905DE20);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v4 = v12;
      v3 = v13;
    }

    v7 = sub_269057764();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      v10 = sub_269010108(v4, v3, v11);

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

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2690243E8();
    swift_unknownObjectRelease();
  }

  *(v1 + v2) = 1;
}

void sub_26902A4A8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_isLoading;
  if (*(v0 + OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_isLoading))
  {
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v3 = 0x7070615470696B73;
    v4 = sub_269057774();
    __swift_project_value_buffer(v4, qword_2802F3FF8);
    v5 = sub_269057AA4();
    v6 = 0xEC00000029286465;
    strcpy(v12, "skipTapped()");
    BYTE5(v12[1]) = 0;
    HIWORD(v12[1]) = -5120;
    if (("roller" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v11[0] = 32;
      v11[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000028, 0x800000026905DE20);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v3 = v12[0];
      v6 = v12[1];
    }

    v7 = sub_269057764();
    if (os_log_type_enabled(v7, v5))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      v10 = sub_269010108(v3, v6, v11);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_269002000, v7, v5, "%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D6309D0](v9, -1, -1);
      MEMORY[0x26D6309D0](v8, -1, -1);
    }

    else
    {
    }
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_269024810();
    swift_unknownObjectRelease();
  }

  *(v1 + v2) = 1;
}

void sub_26902A700()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v1 startAnimating];
  v2 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  v3 = [v0 navigationItem];
  [v3 setRightBarButtonItem:v2 animated:1];

  v4 = [v0 buttonTray];
  [v4 showButtonsBusy];
}

id sub_26902A850(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IntroWelcomeController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26902A91C(void *a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_viewModel;
  swift_beginAccess();
  sub_269009C7C(v1 + v3, &v14);
  v4 = v15;
  v5 = v16;
  __swift_project_boxed_opaque_existential_1(&v14, v15);
  v6 = (*(v5 + 248))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(&v14);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 248))(v7, v8);
  if (v6 == 2)
  {
    if (v9 == 2)
    {
      goto LABEL_9;
    }
  }

  else if (v9 != 2 && ((v6 ^ v9) & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 248))(v10, v11);
  if (v12 != 2 && (v12 & 1) != 0)
  {
    sub_26902A700();
  }

LABEL_9:
  sub_269009C7C(a1, &v14);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  sub_269009D24(&v14, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_26902AAA8()
{

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_26902AB40()
{
  v1 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_hasVoiceProfileInCloud;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26902AB84(char a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_hasVoiceProfileInCloud;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26902AC34()
{
  v1 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26902AC78(char a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26902ADA0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_26902AE14(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_26902AE74(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

void sub_26902AF30(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_26902AF90()
{
  v1 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26902AFDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

unint64_t sub_26902B094()
{
  v1 = (v0 + OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32);
}

uint64_t sub_26902B0EC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume;
  result = swift_beginAccess();
  *v3 = a1;
  *(v3 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_26902B1A0()
{
  v1 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26902B1E4(char a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26902B294()
{
  v1 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_voiceTriggerEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26902B2D8(char a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_voiceTriggerEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26902B388()
{
  v1 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriInCallEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26902B3CC(char a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriInCallEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26902B47C()
{
  v1 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26902B4C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id AssistantConfiguration.__allocating_init(hasVoiceProfileInCloud:siriEnabled:siriLanguage:siriSharedUserId:siriVoice:recognizeMyVoiceEnabled:voiceTriggerEnabled:siriInCallEnabled:siriDataSharingStatus:systemLanguage:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v50 = *MEMORY[0x277D85DE8];
  v20 = objc_allocWithZone(v13);
  v21 = &v20[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriLanguage];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v20[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriSharedUserId];
  *v22 = 0;
  v22[1] = 0;
  v23 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  *&v20[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice] = 0;
  v24 = &v20[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume];
  *v24 = 0;
  v24[4] = 1;
  v20[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_hasVoiceProfileInCloud] = a1;
  v20[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriEnabled] = a2;
  v25 = v20;
  swift_beginAccess();
  *v21 = a3;
  v21[1] = a4;
  swift_beginAccess();
  *v22 = a5;
  v22[1] = a6;
  swift_beginAccess();
  *&v25[v23] = a7;
  v25[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled] = a8;
  v25[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_voiceTriggerEnabled] = a9;
  v25[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriInCallEnabled] = a10;
  *&v25[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus] = a11;
  if (!a13)
  {
    v26 = a7;
    goto LABEL_20;
  }

  if (!a4)
  {
    v45 = v25;
    v47 = 0;
    v27 = qword_2802F3220;
    v26 = a7;
    if (v27 != -1)
    {
      swift_once();
    }

    v28 = [objc_opt_self() sharedPreferences];
    v29 = sub_269057944();
    v30 = [v28 allSiriLanguageCodesForSystemLanguageCode:v29 isGoodFit:&v47];

    if (v30)
    {
      v31 = sub_2690579D4();

      if (v31[2])
      {
        v32 = v31[4];
        v33 = v31[5];

        *v21 = v32;
        v21[1] = v33;

        sub_269057C54();
        MEMORY[0x26D62FBC0](0xD00000000000001BLL, 0x800000026905DF80);
        MEMORY[0x26D62FBC0](a12, a13);

        MEMORY[0x26D62FBC0](0xD00000000000002FLL, 0x800000026905DFD0);
        MEMORY[0x26D62FBC0](v32, v33);

        if (qword_2802F3258 != -1)
        {
          swift_once();
        }

        v34 = sub_269057774();
        __swift_project_value_buffer(v34, qword_2802F3FF8);
        v35 = sub_269057AA4();
        v36 = sub_269057764();
        if (os_log_type_enabled(v36, v35))
        {
LABEL_17:
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v49 = v39;
          *v38 = 136315138;
          v40 = sub_269010108(0xD0000000000000B4, 0x800000026905DEC0, &v49);

          *(v38 + 4) = v40;
          _os_log_impl(&dword_269002000, v36, v35, "%s", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v39);
          MEMORY[0x26D6309D0](v39, -1, -1);
          MEMORY[0x26D6309D0](v38, -1, -1);
LABEL_19:

          v25 = v45;
          goto LABEL_20;
        }

LABEL_18:

        goto LABEL_19;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000001BLL, 0x800000026905DF80);
    MEMORY[0x26D62FBC0](a12, a13);

    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905DFA0);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v37 = sub_269057774();
    __swift_project_value_buffer(v37, qword_2802F3FF8);
    v35 = sub_269057A94();
    v36 = sub_269057764();
    if (os_log_type_enabled(v36, v35))
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v26 = a7;

LABEL_20:
  v48.receiver = v25;
  v48.super_class = v46;
  v41 = objc_msgSendSuper2(&v48, sel_init);

  return v41;
}

id AssistantConfiguration.init(hasVoiceProfileInCloud:siriEnabled:siriLanguage:siriSharedUserId:siriVoice:recognizeMyVoiceEnabled:voiceTriggerEnabled:siriInCallEnabled:siriDataSharingStatus:systemLanguage:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v52 = *MEMORY[0x277D85DE8];
  v19 = &v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriLanguage];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriSharedUserId];
  *v20 = 0;
  v20[1] = 0;
  v21 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  *&v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice] = 0;
  v22 = &v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume];
  *v22 = 0;
  v22[4] = 1;
  v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_hasVoiceProfileInCloud] = a1;
  v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriEnabled] = a2;
  swift_beginAccess();
  *v19 = a3;
  v19[1] = a4;
  swift_beginAccess();
  *v20 = a5;
  v20[1] = a6;
  swift_beginAccess();
  v23 = *&v13[v21];
  *&v13[v21] = a7;
  v24 = a7;

  v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled] = a8;
  v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_voiceTriggerEnabled] = a9;
  v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriInCallEnabled] = a10;
  *&v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus] = a11;
  if (!a13)
  {

    goto LABEL_22;
  }

  if (a4)
  {

    goto LABEL_22;
  }

  v49 = 0;
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v25 = [objc_opt_self() sharedPreferences];
  v26 = sub_269057944();
  v27 = [v25 allSiriLanguageCodesForSystemLanguageCode:v26 isGoodFit:&v49];

  if (v27)
  {
    v28 = sub_2690579D4();

    if (v28[2])
    {
      v29 = v13;
      v31 = v28[4];
      v30 = v28[5];

      *v19 = v31;
      v19[1] = v30;

      sub_269057C54();
      MEMORY[0x26D62FBC0](0xD00000000000001BLL, 0x800000026905DF80);
      MEMORY[0x26D62FBC0](a12, a13);

      MEMORY[0x26D62FBC0](0xD00000000000002FLL, 0x800000026905DFD0);
      MEMORY[0x26D62FBC0](v31, v30);

      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v32 = sub_269057774();
      __swift_project_value_buffer(v32, qword_2802F3FF8);
      v33 = sub_269057AA4();
      v34 = sub_269057764();
      if (os_log_type_enabled(v34, v33))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v51 = v36;
        *v35 = 136315138;
        v37 = sub_269010108(0xD0000000000000B4, 0x800000026905DEC0, &v51);

        *(v35 + 4) = v37;
        _os_log_impl(&dword_269002000, v34, v33, "%s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x26D6309D0](v36, -1, -1);
        MEMORY[0x26D6309D0](v35, -1, -1);
      }

      else
      {
      }

      v13 = v29;
      goto LABEL_22;
    }
  }

  v38 = v13;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000001BLL, 0x800000026905DF80);
  MEMORY[0x26D62FBC0](a12, a13);

  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905DFA0);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v39 = sub_269057774();
  __swift_project_value_buffer(v39, qword_2802F3FF8);
  v40 = sub_269057A94();
  v41 = sub_269057764();
  if (os_log_type_enabled(v41, v40))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v51 = v43;
    *v42 = 136315138;
    v44 = sub_269010108(0xD0000000000000B4, 0x800000026905DEC0, &v51);

    *(v42 + 4) = v44;
    _os_log_impl(&dword_269002000, v41, v40, "%s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x26D6309D0](v43, -1, -1);
    MEMORY[0x26D6309D0](v42, -1, -1);
  }

  else
  {
  }

  v13 = v38;
LABEL_22:
  v45 = type metadata accessor for AssistantConfiguration();
  v50.receiver = v13;
  v50.super_class = v45;
  v46 = objc_msgSendSuper2(&v50, sel_init);

  return v46;
}

uint64_t sub_26902C320()
{
  v1 = v0;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000001ALL, 0x800000026905E000);
  v2 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_hasVoiceProfileInCloud;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v1 + v2))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x26D62FBC0](v3, v4);

  MEMORY[0x26D62FBC0](0xD000000000000010, 0x800000026905E020);
  v5 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriEnabled;
  swift_beginAccess();
  if (*(v1 + v5))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v1 + v5))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x26D62FBC0](v6, v7);

  MEMORY[0x26D62FBC0](0xD000000000000011, 0x800000026905E040);
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
  v8 = sub_269057964();
  MEMORY[0x26D62FBC0](v8);

  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905E060);
  swift_beginAccess();

  v9 = sub_269057964();
  MEMORY[0x26D62FBC0](v9);

  MEMORY[0x26D62FBC0](0x6F5669726973203BLL, 0xEE00203D20656369);
  v10 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  swift_beginAccess();
  v11 = *(v1 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3AB0, &qword_26905AB78);
  v12 = sub_269057964();
  MEMORY[0x26D62FBC0](v12);

  MEMORY[0x26D62FBC0](0x6F5669726973203BLL, 0xEF203D20656D756CLL);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3AB8, &qword_26905AB80);
  v13 = sub_269057964();
  MEMORY[0x26D62FBC0](v13);

  MEMORY[0x26D62FBC0](0xD00000000000001CLL, 0x800000026905E080);
  v14 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled;
  swift_beginAccess();
  if (*(v1 + v14))
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (*(v1 + v14))
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x26D62FBC0](v15, v16);

  MEMORY[0x26D62FBC0](0xD000000000000018, 0x800000026905E0A0);
  v17 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_voiceTriggerEnabled;
  swift_beginAccess();
  if (*(v1 + v17))
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (*(v1 + v17))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x26D62FBC0](v18, v19);

  MEMORY[0x26D62FBC0](0xD000000000000016, 0x800000026905E0C0);
  v20 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriInCallEnabled;
  swift_beginAccess();
  if (*(v1 + v20))
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (*(v1 + v20))
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x26D62FBC0](v21, v22);

  MEMORY[0x26D62FBC0](0xD00000000000001ALL, 0x800000026905E0E0);
  swift_beginAccess();
  type metadata accessor for AFSiriDataSharingOptInStatus(0);
  v23 = sub_269057964();
  MEMORY[0x26D62FBC0](v23);

  MEMORY[0x26D62FBC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_26902C7C0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000013;
    v6 = 0xD000000000000011;
    if (a1 != 8)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000017;
    if (a1 == 5)
    {
      v7 = 0x756C6F5669726973;
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
    v1 = 0x62616E4569726973;
    v2 = 0x676E614C69726973;
    v3 = 0x63696F5669726973;
    if (a1 == 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000016;
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

uint64_t sub_26902C924(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_26902C7C0(*a1);
  v5 = v4;
  if (v3 == sub_26902C7C0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_269057DE4();
  }

  return v8 & 1;
}

uint64_t sub_26902C9AC()
{
  v1 = *v0;
  sub_269057E54();
  sub_26902C7C0(v1);
  sub_269057984();

  return sub_269057E84();
}

uint64_t sub_26902CA10(uint64_t a1)
{
  sub_26902C7C0(*v1);
  sub_269057984();
}

uint64_t sub_26902CA64(uint64_t a1)
{
  v2 = *v1;
  sub_269057E54();
  sub_26902C7C0(v2);
  sub_269057984();

  return sub_269057E84();
}

unint64_t sub_26902CAC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26902E258(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26902CAF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26902C7C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_26902CB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26902E258(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26902CB7C(uint64_t a1)
{
  v2 = sub_26902E09C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26902CBB8(uint64_t a1)
{
  v2 = sub_26902E09C();

  return MEMORY[0x2821FE720](a1, v2);
}

_BYTE *AssistantConfiguration.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3AC0, &qword_26905AB88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = &v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriLanguage];
  *v9 = 0;
  v9[1] = 0;
  v33 = v9;
  v10 = &v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriSharedUserId];
  *v10 = 0;
  v10[1] = 0;
  v30 = a1;
  v31 = v10;
  v32 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  *&v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice] = 0;
  v11 = &v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume];
  *v11 = 0;
  v11[4] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26902E09C();
  sub_269057E94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v30);

    type metadata accessor for AssistantConfiguration();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v29 = v6;
    v40 = 0;
    v12 = sub_269057D34();
    v13 = v31;
    v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_hasVoiceProfileInCloud] = v12 & 1;
    v40 = 1;
    v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriEnabled] = sub_269057D34() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
    v40 = 2;
    v28 = sub_26902E198(&qword_2802F3AD0, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
    sub_269057D54();
    v15 = v39;
    v27 = v38;
    v16 = v33;
    swift_beginAccess();
    *v16 = v27;
    v16[1] = v15;

    LOBYTE(v38) = 3;
    sub_269057D54();
    v17 = v36;
    v18 = v37;
    v28 = v5;
    swift_beginAccess();
    *v13 = v17;
    v13[1] = v18;

    v35 = 4;
    sub_26902E0F0();
    sub_269057D54();
    v19 = v36;
    v20 = v37;
    sub_26900A408(0, &qword_2802F3AE0, 0x277CCAAC8);
    sub_26900A408(0, &qword_2802F3AE8, 0x277CEF528);
    v21 = sub_269057AE4();
    v27 = v19;
    v22 = v32;
    swift_beginAccess();
    v23 = *&v3[v22];
    *&v3[v22] = v21;

    v35 = 5;
    v24 = sub_269057D24();
    swift_beginAccess();
    *v11 = v24;
    v11[4] = BYTE4(v24) & 1;
    v41 = 6;
    v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled] = sub_269057D34() & 1;
    v41 = 7;
    v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_voiceTriggerEnabled] = sub_269057D34() & 1;
    v41 = 8;
    v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriInCallEnabled] = sub_269057D34() & 1;
    v41 = 9;
    v25 = sub_269057D44();
    (*(v29 + 8))(v8, v28);
    sub_26902E144(v27, v20);
    *&v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus] = v25;
    v26 = type metadata accessor for AssistantConfiguration();
    v34.receiver = v3;
    v34.super_class = v26;
    v3 = objc_msgSendSuper2(&v34, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  return v3;
}

void sub_26902D288(void *a1)
{
  v3 = v1;
  v35 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3AF0, &qword_26905AB90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26902E09C();
  sub_269057EA4();
  swift_beginAccess();
  v34 = 0;
  sub_269057D74();
  if (!v2)
  {
    swift_beginAccess();
    v33 = 1;
    sub_269057D74();
    v9 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriLanguage;
    swift_beginAccess();
    v32 = *(v3 + v9);
    LOBYTE(v31) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
    sub_26902E198(&qword_2802F3AF8, MEMORY[0x277D837D8], MEMORY[0x277D84F40]);
    sub_269057D94();
    v10 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriSharedUserId;
    swift_beginAccess();
    v31 = *(v3 + v10);
    v30 = 3;
    sub_269057D94();
    v11 = v3 + OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume;
    swift_beginAccess();
    v12 = *(v11 + 4);
    v30 = 5;
    v29 = v12;
    sub_269057D64();
    swift_beginAccess();
    v29 = 6;
    sub_269057D74();
    swift_beginAccess();
    v28 = 7;
    sub_269057D74();
    swift_beginAccess();
    v27 = 8;
    sub_269057D74();
    v13 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
    swift_beginAccess();
    v14 = *(v3 + v13);
    if (!v14)
    {
LABEL_6:
      swift_beginAccess();
      v25 = 9;
      sub_269057D84();
      goto LABEL_7;
    }

    v15 = objc_opt_self();
    v26[0] = 0;
    v16 = v14;
    v17 = [v15 archivedDataWithRootObject:v16 requiringSecureCoding:0 error:v26];
    v18 = v26[0];
    if (v17)
    {
      v24 = v16;
      v19 = sub_2690576B4();
      v21 = v20;

      v26[0] = v19;
      v26[1] = v21;
      v25 = 4;
      sub_26902E204();
      sub_269057D94();

      sub_26902E144(v19, v21);
      goto LABEL_6;
    }

    v22 = v18;
    sub_269057674();

    swift_willThrow();
  }

LABEL_7:
  (*(v6 + 8))(v8, v5);
}

uint64_t static AssistantConfiguration.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_2802F3A50 = a1;
  return result;
}

void sub_26902D950(void *a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_hasVoiceProfileInCloud;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = sub_269057944();
  [a1 encodeBool:v4 forKey:v5];

  v6 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriEnabled;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = sub_269057944();
  [a1 encodeBool:v7 forKey:v8];

  v9 = v1 + OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriLanguage;
  swift_beginAccess();
  if (*(v9 + 8))
  {

    v10 = sub_269057944();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_269057944();
  [a1 encodeObject:v10 forKey:v11];
  swift_unknownObjectRelease();

  v12 = v1 + OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriSharedUserId;
  swift_beginAccess();
  if (*(v12 + 8))
  {

    v13 = sub_269057944();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_269057944();
  [a1 encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();

  v15 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  swift_beginAccess();
  v16 = *(v1 + v15);
  v17 = sub_269057944();
  [a1 encodeObject:v16 forKey:v17];

  v18 = (v1 + OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume);
  swift_beginAccess();
  if ((v18[1] & 1) == 0)
  {
    v19 = *v18;
    v20 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    LODWORD(v21) = v19;
    v22 = [v20 initWithFloat_];
    v23 = sub_269057944();
    [a1 encodeObject:v22 forKey:v23];
  }

  v24 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled;
  swift_beginAccess();
  v25 = *(v1 + v24);
  v26 = sub_269057944();
  [a1 encodeBool:v25 forKey:v26];

  v27 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_voiceTriggerEnabled;
  swift_beginAccess();
  v28 = *(v1 + v27);
  v29 = sub_269057944();
  [a1 encodeBool:v28 forKey:v29];

  v30 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriInCallEnabled;
  swift_beginAccess();
  v31 = *(v1 + v30);
  v32 = sub_269057944();
  [a1 encodeBool:v31 forKey:v32];

  v33 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus;
  swift_beginAccess();
  v34 = *(v1 + v33);
  v35 = sub_269057944();
  [a1 encodeInteger:v34 forKey:v35];
}

id AssistantConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_26902E2A4(a1);

  return v4;
}

id AssistantConfiguration.init(coder:)(void *a1)
{
  v2 = sub_26902E2A4(a1);

  return v2;
}

id AssistantConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AssistantConfiguration.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AssistantConfiguration();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

_BYTE *sub_26902E000@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for AssistantConfiguration());
  result = AssistantConfiguration.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_26902E09C()
{
  result = qword_2802F3AC8;
  if (!qword_2802F3AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3AC8);
  }

  return result;
}

unint64_t sub_26902E0F0()
{
  result = qword_2802F3AD8;
  if (!qword_2802F3AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3AD8);
  }

  return result;
}

double sub_26902E144(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_26902E198(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802F3548, &unk_269059F70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26902E204()
{
  result = qword_2802F3B00;
  if (!qword_2802F3B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3B00);
  }

  return result;
}

unint64_t sub_26902E258(uint64_t a1, uint64_t a2)
{
  v2 = sub_269057D14();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

id sub_26902E2A4(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriLanguage];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriSharedUserId];
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  *&v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice] = 0;
  v7 = &v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume];
  *v7 = 0;
  v7[4] = 1;
  v8 = sub_269057944();
  v37 = [a1 decodeIntegerForKey_];

  v9 = sub_269057944();
  v33 = [a1 decodeBoolForKey_];

  v10 = sub_269057944();
  v32 = [a1 decodeBoolForKey_];

  v11 = sub_269057944();
  v36 = [a1 decodeBoolForKey_];

  v12 = sub_269057944();
  v35 = [a1 decodeBoolForKey_];

  v13 = sub_269057944();
  v34 = [a1 decodeBoolForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3B88, &qword_26905AD68);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_269059EE0;
  v15 = sub_26900A408(0, &unk_2802F3B90, 0x277CCACA8);
  *(v14 + 32) = v15;
  sub_269057B94();

  if (v42)
  {
    v16 = swift_dynamicCast();
    v17 = v39;
    if (!v16)
    {
      v17 = 0;
    }

    v31 = v17;
    if (v16)
    {
      v18 = v40;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    sub_26902F628(v41);
    v31 = 0;
    v18 = 0;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_269059EE0;
  *(v19 + 32) = v15;
  sub_269057B94();

  if (v42)
  {
    v20 = swift_dynamicCast();
    if (v20)
    {
      v21 = v39;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = v40;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    sub_26902F628(v41);
    v21 = 0;
    v22 = 0;
  }

  sub_26900A408(0, &qword_2802F3AE8, 0x277CEF528);
  v23 = sub_269057B84();
  sub_26900A408(0, &unk_2802F3BA0, 0x277CCABB0);
  v24 = sub_269057B84();
  v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_hasVoiceProfileInCloud] = v33;
  v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriEnabled] = v32;
  swift_beginAccess();
  *v4 = v31;
  v4[1] = v18;

  swift_beginAccess();
  *v5 = v21;
  v5[1] = v22;

  swift_beginAccess();
  v25 = *&v2[v6];
  *&v2[v6] = v23;
  v26 = v23;

  if (v24)
  {
    v27 = v24;
    [v27 floatValue];
    v29 = v28;
  }

  else
  {

    v29 = 0;
  }

  swift_beginAccess();
  *v7 = v29;
  v7[4] = v24 == 0;
  v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled] = v36;
  v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_voiceTriggerEnabled] = v35;
  v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriInCallEnabled] = v34;
  *&v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus] = v37;
  v38.receiver = v2;
  v38.super_class = type metadata accessor for AssistantConfiguration();
  return objc_msgSendSuper2(&v38, sel_init);
}

double keypath_get_8Tm@<D0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;

  return result;
}

id sub_26902E884@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_26902E8F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume;
  result = swift_beginAccess();
  v5 = *(v3 + 4);
  *a2 = *v3;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_26902E94C(int *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2 + OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 4) = v3;
  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_26902EA98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_26902EAF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_26902EB44@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_2802F3A50;
  return result;
}

uint64_t sub_26902EB90(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_2802F3A50 = v1;
  return result;
}

uint64_t getEnumTagSinglePayload for AssistantConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssistantConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26902F524()
{
  result = qword_2802F3B70;
  if (!qword_2802F3B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3B70);
  }

  return result;
}

unint64_t sub_26902F57C()
{
  result = qword_2802F3B78;
  if (!qword_2802F3B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3B78);
  }

  return result;
}

unint64_t sub_26902F5D4()
{
  result = qword_2802F3B80;
  if (!qword_2802F3B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3B80);
  }

  return result;
}

uint64_t sub_26902F628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E30, &unk_26905AD70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_26902F71C()
{
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  result = [objc_allocWithZone(SRSVTPreferences) init];
  qword_2802F5110 = result;
  return result;
}

id sub_26902F780()
{
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    qword_2802F5118 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26902F7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269057714();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269057944();
  v11 = objc_opt_self();
  v12 = [v11 bundleWithIdentifier_];

  if (!v12)
  {
    v12 = [v11 mainBundle];
  }

  v13 = [objc_opt_self() currentLocale];
  sub_269057704();

  sub_2690576F4();
  (*(v7 + 8))(v9, v6);
  if (qword_2802F3238 != -1)
  {
    swift_once();
  }

  v14 = qword_2802F5118;
  v15 = sub_269057944();
  v16 = v12;
  v17 = sub_269057944();

  v18 = [v14 localizedStringForKey:v15 gender:a3 table:0 bundle:v16 languageCode:v17];

  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = sub_269057954();
  v21 = v20;

  if (v19 == a1 && v21 == a2)
  {

LABEL_9:

    return 0;
  }

  v23 = sub_269057DE4();

  if ((v23 & 1) == 0)
  {
    return v19;
  }

  return 0;
}

uint64_t sub_26902FAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = qword_2802F3230;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_2802F5110;
  v6 = sub_269057944();
  [v5 compactVoiceTriggerEnabled_];

  sub_26900BE9C();
  v7 = sub_269057BF4();

  if (v7)
  {
    sub_269057BF4();
  }

  v8 = sub_269057944();
  v9 = [v5 localizedTriggerPhraseForLanguageCode_];

  sub_269057954();
  v10 = sub_269057944();
  v11 = [v5 localizedCompactTriggerPhraseForLanguageCode_];

  sub_269057954();
  sub_269057BE4();

  v12 = sub_269057BE4();

  return v12;
}

uint64_t sub_26902FDE4(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_viewModel);
  swift_beginAccess();
  v4 = v3[11];
  v38[10] = v3[10];
  v38[11] = v4;
  v38[12] = v3[12];
  v5 = v3[7];
  v38[6] = v3[6];
  v38[7] = v5;
  v6 = v3[9];
  v38[8] = v3[8];
  v38[9] = v6;
  v7 = v3[3];
  v38[2] = v3[2];
  v38[3] = v7;
  v8 = v3[5];
  v38[4] = v3[4];
  v38[5] = v8;
  v9 = v3[1];
  v38[0] = *v3;
  v38[1] = v9;
  v10 = a1[11];
  v3[10] = a1[10];
  v3[11] = v10;
  v3[12] = a1[12];
  v11 = a1[7];
  v3[6] = a1[6];
  v3[7] = v11;
  v12 = a1[9];
  v3[8] = a1[8];
  v3[9] = v12;
  v13 = a1[3];
  v3[2] = a1[2];
  v3[3] = v13;
  v14 = a1[5];
  v3[4] = a1[4];
  v3[5] = v14;
  v15 = a1[1];
  *v3 = *a1;
  v3[1] = v15;
  result = sub_269009EE0(v38);
  v17 = v1 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_presentingViewController;
  v18 = *(v1 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_presentingViewController);
  if (v18)
  {
    v19 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    v36[5] = v18;
    v21 = v3[11];
    v37[10] = v3[10];
    v37[11] = v21;
    v37[12] = v3[12];
    v22 = v3[7];
    v37[6] = v3[6];
    v37[7] = v22;
    v23 = v3[9];
    v37[8] = v3[8];
    v37[9] = v23;
    v24 = v3[3];
    v37[2] = v3[2];
    v37[3] = v24;
    v25 = v3[5];
    v37[4] = v3[4];
    v37[5] = v25;
    v26 = v3[1];
    v37[0] = *v3;
    v37[1] = v26;
    v36[3] = &type metadata for ViewModel;
    v36[4] = &off_2879A7790;
    v27 = swift_allocObject();
    v36[0] = v27;
    v28 = v3[11];
    v27[11] = v3[10];
    v27[12] = v28;
    v27[13] = v3[12];
    v29 = v3[7];
    v27[7] = v3[6];
    v27[8] = v29;
    v30 = v3[9];
    v27[9] = v3[8];
    v27[10] = v30;
    v31 = v3[3];
    v27[3] = v3[2];
    v27[4] = v31;
    v32 = v3[5];
    v27[5] = v3[4];
    v27[6] = v32;
    v33 = v3[1];
    v27[1] = *v3;
    v27[2] = v33;
    v34 = *(v19 + 16);
    sub_269009E3C(v37, &v35);
    v34(v36, 1, ObjectType, v19);
    return __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  return result;
}

void (*sub_26902FFB4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1E0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_viewModel;
  *(v3 + 464) = v1;
  *(v3 + 472) = v4;
  swift_beginAccess();
  return sub_26903003C;
}

void sub_26903003C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[58];
    v5 = *(v4 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_presentingViewController);
    if (v5)
    {
      v6 = (v4 + v3[59]);
      v7 = *(v4 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_presentingViewController + 8);
      ObjectType = swift_getObjectType();
      v3[57] = v5;
      *v3 = *v6;
      v9 = v6[1];
      v10 = v6[2];
      v11 = v6[4];
      *(v3 + 3) = v6[3];
      *(v3 + 4) = v11;
      *(v3 + 1) = v9;
      *(v3 + 2) = v10;
      v12 = v6[5];
      v13 = v6[6];
      v14 = v6[8];
      *(v3 + 7) = v6[7];
      *(v3 + 8) = v14;
      *(v3 + 5) = v12;
      *(v3 + 6) = v13;
      v15 = v6[9];
      v16 = v6[10];
      v17 = v6[12];
      *(v3 + 11) = v6[11];
      *(v3 + 12) = v17;
      *(v3 + 9) = v15;
      *(v3 + 10) = v16;
      v3[55] = &type metadata for ViewModel;
      v3[56] = &off_2879A7790;
      v18 = swift_allocObject();
      v3[52] = v18;
      v18[1] = *v6;
      v19 = v6[4];
      v21 = v6[1];
      v20 = v6[2];
      v18[4] = v6[3];
      v18[5] = v19;
      v18[2] = v21;
      v18[3] = v20;
      v22 = v6[8];
      v24 = v6[5];
      v23 = v6[6];
      v18[8] = v6[7];
      v18[9] = v22;
      v18[6] = v24;
      v18[7] = v23;
      v25 = v6[12];
      v27 = v6[9];
      v26 = v6[10];
      v18[12] = v6[11];
      v18[13] = v25;
      v18[10] = v27;
      v18[11] = v26;
      v28 = *(v7 + 16);
      sub_269009E3C(v3, (v3 + 26));
      v28(v3 + 52, 1, ObjectType, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v3 + 52);
    }
  }

  free(v3);
}

char *sub_26903019C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *&v6[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v6[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_presentingViewController];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v6[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_dataSource];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = &v6[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_dataSourceWriter];
  *v14 = a3;
  *(v14 + 1) = a4;
  ObjectType = swift_getObjectType();
  v16 = *(a2 + 80);
  v17 = a1;
  v18 = a3;
  v160 = ObjectType;
  v161 = a2;
  v157 = v6;
  v6[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_viewStyle] = v16(ObjectType, a2);
  v19 = 0x800000026905E230;
  if (qword_2802F3248 != -1)
  {
LABEL_68:
    swift_once();
  }

  v163 = byte_2802F5130;
  v20 = sub_269051B18(byte_2802F5130);
  *&v179[0] = 0xD000000000000015;
  *(&v179[0] + 1) = v19;
  MEMORY[0x26D62FBC0](v20);

  v21 = v179[0];
  v22 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  v25 = v23 >> 1;
  v26 = v24 + 1;
  if (v23 >> 1 <= v24)
  {
    v22 = sub_26904DCD8((v23 > 1), v24 + 1, 1, v22);
    v23 = *(v22 + 3);
    v25 = v23 >> 1;
  }

  *(v22 + 2) = v26;
  *&v22[16 * v24 + 32] = v21;
  v158 = v18;
  if (v25 < (v24 + 2))
  {
    v22 = sub_26904DCD8((v23 > 1), v24 + 2, 1, v22);
  }

  *(v22 + 2) = v24 + 2;
  v27 = &v22[16 * v26];
  *(v27 + 4) = 0xD000000000000015;
  *(v27 + 5) = v19;
  v28 = (v22 + 40);
  v29 = -v24;
  v18 = -1;
  v159 = a5;
  v162 = v17;
  while (v29 + v18 != 1)
  {
    if (++v18 >= *(v22 + 2))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v30 = v28 + 2;
    v31 = *(v28 - 1);
    v32 = *v28;

    v33 = sub_26902F7F4(v31, v32, 0);
    v35 = v34;

    v28 = v30;
    if (v35)
    {

      v19 = v35;
      goto LABEL_21;
    }
  }

  v36 = 0x800000026905BF00;
  *&v179[0] = 0;
  *(&v179[0] + 1) = 0xE000000000000000;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000015, v19);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  v37 = *(&v179[0] + 1);
  v38 = *&v179[0];
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v39 = sub_269057774();
  __swift_project_value_buffer(v39, qword_2802F3FF8);
  v40 = sub_269057A94();
  v41 = 0xD00000000000003BLL;
  *&v179[0] = 0xD00000000000003BLL;
  *(&v179[0] + 1) = 0x800000026905BF00;
  v42 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v42 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
    *&v178[0] = 32;
    *(&v178[0] + 1) = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v38, v37);
    MEMORY[0x26D62FBC0](*&v178[0], *(&v178[0] + 1));

    v36 = *(&v179[0] + 1);
    v41 = *&v179[0];
  }

  v43 = sub_269057764();
  if (os_log_type_enabled(v43, v40))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v178[0] = v45;
    *v44 = 136315138;
    v46 = sub_269010108(v41, v36, v178);

    *(v44 + 4) = v46;
    _os_log_impl(&dword_269002000, v43, v40, "%s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x26D6309D0](v45, -1, -1);
    MEMORY[0x26D6309D0](v44, -1, -1);
  }

  else
  {
  }

  v33 = 0xD000000000000015;
LABEL_21:
  sub_2690519EC(v163);
  *&v179[0] = v33;
  *(&v179[0] + 1) = v19;
  strcpy(v178, "%DEVICE_NAME%");
  HIWORD(v178[0]) = -4864;
  v17 = sub_26900BE9C();
  a5 = MEMORY[0x277D837D0];
  v47 = sub_269057BE4();
  v49 = v48;

  v50 = sub_2690519EC(v163);
  *&v179[0] = v47;
  *(&v179[0] + 1) = v49;
  *&v178[0] = 0xD000000000000014;
  *(&v178[0] + 1) = 0x800000026905BEA0;
  *&v164 = v50;
  *(&v164 + 1) = v51;
  v52 = sub_269057BE4();
  v155 = v53;
  v156 = v52;

  v19 = 0x800000026905E250;
  v54 = sub_269051B18(v163);
  *&v179[0] = 0xD000000000000016;
  *(&v179[0] + 1) = 0x800000026905E250;
  MEMORY[0x26D62FBC0](v54);

  v55 = v179[0];
  v56 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v58 = *(v56 + 2);
  v57 = *(v56 + 3);
  v59 = v57 >> 1;
  v60 = v58 + 1;
  if (v57 >> 1 <= v58)
  {
    v56 = sub_26904DCD8((v57 > 1), v58 + 1, 1, v56);
    v57 = *(v56 + 3);
    v59 = v57 >> 1;
  }

  *(v56 + 2) = v60;
  *&v56[16 * v58 + 32] = v55;
  if (v59 < (v58 + 2))
  {
    v56 = sub_26904DCD8((v57 > 1), v58 + 2, 1, v56);
  }

  *(v56 + 2) = v58 + 2;
  v61 = &v56[16 * v60];
  *(v61 + 4) = 0xD000000000000016;
  *(v61 + 5) = 0x800000026905E250;
  v62 = (v56 + 40);
  v63 = -v58;
  v18 = -1;
  while (v63 + v18 != 1)
  {
    if (++v18 >= *(v56 + 2))
    {
      goto LABEL_66;
    }

    v64 = v62 + 2;
    v65 = *(v62 - 1);
    v66 = *v62;

    v67 = sub_26902F7F4(v65, v66, 0);
    v69 = v68;

    v62 = v64;
    if (v69)
    {

      v19 = v69;
      goto LABEL_40;
    }
  }

  v70 = 0x800000026905BF00;
  *&v179[0] = 0;
  *(&v179[0] + 1) = 0xE000000000000000;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000016, 0x800000026905E250);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  v71 = *(&v179[0] + 1);
  v72 = *&v179[0];
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v73 = sub_269057774();
  __swift_project_value_buffer(v73, qword_2802F3FF8);
  v74 = sub_269057A94();
  v75 = 0xD00000000000003BLL;
  *&v179[0] = 0xD00000000000003BLL;
  *(&v179[0] + 1) = 0x800000026905BF00;
  v76 = HIBYTE(v71) & 0xF;
  if ((v71 & 0x2000000000000000) == 0)
  {
    v76 = v72 & 0xFFFFFFFFFFFFLL;
  }

  if (v76)
  {
    *&v178[0] = 32;
    *(&v178[0] + 1) = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v72, v71);
    MEMORY[0x26D62FBC0](*&v178[0], *(&v178[0] + 1));

    v70 = *(&v179[0] + 1);
    v75 = *&v179[0];
  }

  v77 = sub_269057764();
  if (os_log_type_enabled(v77, v74))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *&v178[0] = v79;
    *v78 = 136315138;
    v80 = sub_269010108(v75, v70, v178);

    *(v78 + 4) = v80;
    _os_log_impl(&dword_269002000, v77, v74, "%s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    MEMORY[0x26D6309D0](v79, -1, -1);
    MEMORY[0x26D6309D0](v78, -1, -1);
  }

  else
  {
  }

  v67 = 0xD000000000000016;
LABEL_40:
  sub_2690519EC(v163);
  *&v179[0] = v67;
  *(&v179[0] + 1) = v19;
  strcpy(v178, "%DEVICE_NAME%");
  HIWORD(v178[0]) = -4864;
  v81 = sub_269057BE4();
  v83 = v82;

  v84 = sub_2690519EC(v163);
  *&v179[0] = v81;
  *(&v179[0] + 1) = v83;
  *&v178[0] = 0xD000000000000014;
  *(&v178[0] + 1) = 0x800000026905BEA0;
  *&v164 = v84;
  *(&v164 + 1) = v85;
  v86 = sub_269057BE4();
  v153 = v87;
  v154 = v86;

  (*(v161 + 32))(&v183, v160);
  v88 = 0x800000026905E270;
  v89 = sub_269051B18(v163);
  *&v179[0] = 0xD000000000000014;
  *(&v179[0] + 1) = 0x800000026905E270;
  MEMORY[0x26D62FBC0](v89);

  v90 = v179[0];
  v91 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v93 = *(v91 + 2);
  v92 = *(v91 + 3);
  v94 = v92 >> 1;
  v95 = v93 + 1;
  if (v92 >> 1 <= v93)
  {
    v91 = sub_26904DCD8((v92 > 1), v93 + 1, 1, v91);
    v92 = *(v91 + 3);
    v94 = v92 >> 1;
  }

  *(v91 + 2) = v95;
  *&v91[16 * v93 + 32] = v90;
  v19 = v93 + 2;
  if (v94 < (v93 + 2))
  {
    v91 = sub_26904DCD8((v92 > 1), v93 + 2, 1, v91);
  }

  *(v91 + 2) = v19;
  v96 = &v91[16 * v95];
  *(v96 + 4) = 0xD000000000000014;
  *(v96 + 5) = 0x800000026905E270;
  v97 = (v91 + 40);
  v98 = -v93;
  v18 = -1;
  while (v98 + v18 != 1)
  {
    if (++v18 >= *(v91 + 2))
    {
      goto LABEL_67;
    }

    v99 = v97 + 2;
    v100 = *(v97 - 1);
    v101 = *v97;

    v102 = sub_26902F7F4(v100, v101, 0);
    v19 = v103;

    v97 = v99;
    if (v19)
    {

      v88 = v19;
      goto LABEL_59;
    }
  }

  v104 = 0x800000026905BF00;
  *&v179[0] = 0;
  *(&v179[0] + 1) = 0xE000000000000000;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000014, 0x800000026905E270);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  v105 = *(&v179[0] + 1);
  v106 = *&v179[0];
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v107 = sub_269057774();
  __swift_project_value_buffer(v107, qword_2802F3FF8);
  v108 = sub_269057A94();
  v109 = 0xD00000000000003BLL;
  *&v179[0] = 0xD00000000000003BLL;
  *(&v179[0] + 1) = 0x800000026905BF00;
  v110 = HIBYTE(v105) & 0xF;
  if ((v105 & 0x2000000000000000) == 0)
  {
    v110 = v106 & 0xFFFFFFFFFFFFLL;
  }

  if (v110)
  {
    *&v178[0] = 32;
    *(&v178[0] + 1) = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v106, v105);
    MEMORY[0x26D62FBC0](*&v178[0], *(&v178[0] + 1));

    v104 = *(&v179[0] + 1);
    v109 = *&v179[0];
  }

  v111 = sub_269057764();
  if (os_log_type_enabled(v111, v108))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    *&v178[0] = v113;
    *v112 = 136315138;
    v114 = sub_269010108(v109, v104, v178);

    *(v112 + 4) = v114;
    _os_log_impl(&dword_269002000, v111, v108, "%s", v112, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v113);
    MEMORY[0x26D6309D0](v113, -1, -1);
    MEMORY[0x26D6309D0](v112, -1, -1);
  }

  else
  {
  }

  v102 = 0xD000000000000014;
LABEL_59:
  sub_2690519EC(v163);
  *&v179[0] = v102;
  *(&v179[0] + 1) = v88;
  strcpy(v178, "%DEVICE_NAME%");
  HIWORD(v178[0]) = -4864;
  v115 = sub_269057BE4();
  v117 = v116;

  v118 = sub_2690519EC(v163);
  *&v179[0] = v115;
  *(&v179[0] + 1) = v117;
  *&v178[0] = 0xD000000000000014;
  *(&v178[0] + 1) = 0x800000026905BEA0;
  *&v164 = v118;
  *(&v164 + 1) = v119;
  v120 = sub_269057BE4();
  v122 = v121;

  v123 = &v157[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_viewModel];
  *v123 = 0u;
  *(v123 + 2) = v156;
  *(v123 + 3) = v155;
  *(v123 + 4) = 0;
  *(v123 + 40) = 0u;
  *(v123 + 7) = 0xE000000000000000;
  *(v123 + 8) = 0;
  *(v123 + 9) = v154;
  *(v123 + 10) = v153;
  *(v123 + 88) = 0u;
  *(v123 + 104) = 0u;
  *(v123 + 15) = v120;
  *(v123 + 16) = v122;
  *(v123 + 136) = 0u;
  v123[152] = 2;
  v124 = *v182;
  *(v123 + 39) = *&v182[3];
  *(v123 + 153) = v124;
  *(v123 + 20) = 0;
  *(v123 + 21) = 0;
  *(v123 + 183) = 0;
  *(v123 + 22) = 0;
  v125 = v180;
  v123[191] = v181;
  *(v123 + 187) = v125;
  *(v123 + 24) = 0;
  *(v123 + 25) = 0;
  *&v157[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_page] = v159;
  v126 = *&v158[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriLanguage + 8];
  if (v126)
  {
    v127 = &v157[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_languageOption];
    *v127 = *&v158[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriLanguage];
    *(v127 + 1) = v126;

    v128 = 0x2802F3000;
    v129 = v162;
  }

  else
  {
    v130 = *(v161 + 88);

    v129 = v162;
    v131 = v130(v160, v161);
    v128 = 0x2802F3000uLL;
    if (!v132)
    {
      v131 = (*(v161 + 96))(v160, v161);
    }

    v133 = &v157[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_languageOption];
    *v133 = v131;
    v133[1] = v132;
  }

  v177.receiver = v157;
  v177.super_class = type metadata accessor for VoiceSelectionPresenter();

  v134 = objc_msgSendSuper2(&v177, sel_init, a5, v17, v17, v17);
  v135 = &v134[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_viewModel];
  v136 = v134[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_viewStyle];
  swift_beginAccess();
  v178[0] = *v135;
  v137 = v135[1];
  v138 = v135[2];
  v139 = v135[4];
  v178[3] = v135[3];
  v178[4] = v139;
  v178[1] = v137;
  v178[2] = v138;
  v140 = v135[5];
  v141 = v135[6];
  v142 = v135[8];
  v178[7] = v135[7];
  v178[8] = v142;
  v178[5] = v140;
  v178[6] = v141;
  v143 = v135[9];
  v144 = v135[10];
  v145 = v135[12];
  v178[11] = v135[11];
  v178[12] = v145;
  v178[9] = v143;
  v178[10] = v144;
  v173 = v135[9];
  v174 = v135[10];
  v175 = v135[11];
  v176 = v135[12];
  v169 = v135[5];
  v170 = v135[6];
  v171 = v135[7];
  v172 = v135[8];
  v165 = v135[1];
  v166 = v135[2];
  v167 = v135[3];
  v168 = v135[4];
  v164 = *v135;
  v146 = v134;
  sub_269009E3C(v178, v179);
  v147 = sub_26903132C(v136, &v164);
  v149 = v148;

  v179[10] = v174;
  v179[11] = v175;
  v179[12] = v176;
  v179[6] = v170;
  v179[7] = v171;
  v179[8] = v172;
  v179[9] = v173;
  v179[2] = v166;
  v179[3] = v167;
  v179[4] = v168;
  v179[5] = v169;
  v179[0] = v164;
  v179[1] = v165;
  sub_269009EE0(v179);
  v150 = &v146[*(v128 + 3112)];
  v151 = *v150;
  *v150 = v147;
  *(v150 + 1) = v149;

  return v146;
}

char *sub_26903132C(char a1, _OWORD *a2)
{
  v3 = a2[11];
  v76[10] = a2[10];
  v76[11] = v3;
  v76[12] = a2[12];
  v4 = a2[7];
  v76[6] = a2[6];
  v76[7] = v4;
  v5 = a2[9];
  v76[8] = a2[8];
  v76[9] = v5;
  v6 = a2[3];
  v76[2] = a2[2];
  v76[3] = v6;
  v7 = a2[5];
  v76[4] = a2[4];
  v76[5] = v7;
  v8 = a2[1];
  v76[0] = *a2;
  v76[1] = v8;
  if (a1)
  {
    if (a1 == 1)
    {
      v9 = 0xD000000000000030;
      v10 = 0x800000026905BF90;
      *&v63 = 0;
      *(&v63 + 1) = 0xE000000000000000;
      sub_269057C54();
      MEMORY[0x26D62FBC0](0xD000000000000033, 0x800000026905E290);
      LOBYTE(v62[0]) = 1;
      sub_269057CB4();
      MEMORY[0x26D62FBC0](0x6C696E202CLL, 0xE500000000000000);
      v11 = v63;
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v12 = sub_269057774();
      __swift_project_value_buffer(v12, qword_2802F3FF8);
      v13 = sub_269057A94();
      *&v63 = 0xD000000000000030;
      *(&v63 + 1) = 0x800000026905BF90;
      v14 = HIBYTE(*(&v11 + 1)) & 0xFLL;
      if ((*(&v11 + 1) & 0x2000000000000000) == 0)
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v62[0] = 32;
        v62[1] = 0xE100000000000000;
        MEMORY[0x26D62FBC0](v11, *(&v11 + 1));
        MEMORY[0x26D62FBC0](32, 0xE100000000000000);

        v10 = *(&v63 + 1);
        v9 = v63;
      }

      v15 = sub_269057764();
      if (os_log_type_enabled(v15, v13))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v62[0] = v17;
        *v16 = 136315138;
        v18 = sub_269010108(v9, v10, v62);

        *(v16 + 4) = v18;
        _os_log_impl(&dword_269002000, v15, v13, "%s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        MEMORY[0x26D6309D0](v17, -1, -1);
        MEMORY[0x26D6309D0](v16, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    else
    {
      v29 = a2[11];
      v73 = a2[10];
      v74 = v29;
      v75 = a2[12];
      v30 = a2[7];
      v69 = a2[6];
      v70 = v30;
      v31 = a2[9];
      v71 = a2[8];
      v72 = v31;
      v32 = a2[3];
      v65 = a2[2];
      v66 = v32;
      v33 = a2[5];
      v67 = a2[4];
      v68 = v33;
      v34 = a2[1];
      v63 = *a2;
      v64 = v34;
      v35 = (v2 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_languageOption);
      v36 = *(v2 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_languageOption);
      v37 = *(v2 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_languageOption + 8);
      v38 = objc_allocWithZone(type metadata accessor for VoiceSelectionProxCardController());
      sub_269009E3C(v76, v62);

      v28 = sub_2690085B8(&v63, v36, v37);
      *&v28[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_delegate + 8] = &off_2879A7D90;
      swift_unknownObjectWeakAssign();
      v40 = *v35;
      v39 = v35[1];
      v41 = v2 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_dataSource;
      v42 = *(v2 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_dataSource);
      v43 = *(v41 + 8);
      ObjectType = swift_getObjectType();
      v45 = *(v43 + 168);

      v46 = v42;
      v47 = v45(ObjectType, v43);

      if (v47)
      {
        v48 = [v47 languageCode];

        if (v48)
        {
          v49 = sub_269057954();
          v51 = v50;

          if (v40 == v49 && v39 == v51)
          {
          }

          else
          {
            v52 = sub_269057DE4();

            if ((v52 & 1) == 0)
            {
              return v28;
            }
          }

          v53 = *v41;
          v54 = *(v41 + 8);
          v55 = swift_getObjectType();
          v56 = *(v54 + 168);
          v57 = v53;
          v58 = v56(v55, v54);

          v59 = *&v28[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_currentVoiceSelection];
          *&v28[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_currentVoiceSelection] = v58;
          v60 = v58;

          sub_269008414();
          return v28;
        }
      }
    }
  }

  else
  {
    v19 = a2[11];
    v73 = a2[10];
    v74 = v19;
    v75 = a2[12];
    v20 = a2[7];
    v69 = a2[6];
    v70 = v20;
    v21 = a2[9];
    v71 = a2[8];
    v72 = v21;
    v22 = a2[3];
    v65 = a2[2];
    v66 = v22;
    v23 = a2[5];
    v67 = a2[4];
    v68 = v23;
    v24 = a2[1];
    v63 = *a2;
    v64 = v24;
    v25 = *(v2 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_languageOption);
    v26 = *(v2 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_languageOption + 8);
    objc_allocWithZone(type metadata accessor for VoiceSelectionWelcomeController());
    sub_269009E3C(v76, v62);

    sub_26901342C(&v63, v25, v26);
    v28 = v27;
    *&v27[OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_delegate + 8] = &off_2879A7D90;
    swift_unknownObjectWeakAssign();
  }

  return v28;
}

id sub_2690318C8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VoiceSelectionPresenter();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2690319F8@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_viewModel);
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

void (*sub_269031ACC(uint64_t **a1))(void *a1)
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
  v2[4] = sub_26902FFB4(v2);
  return sub_26901AFE8;
}

void *sub_269031B3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_presentingViewController);
  v2 = v1;
  return v1;
}

uint64_t sub_269031B84(void *a1)
{
  v2 = v1;
  v4 = 0xD00000000000001BLL;
  v5 = 0x800000026905E300;
  sub_269057C54();

  v20[0] = a1;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3AB0, &qword_26905AB78);
  v7 = sub_269057964();
  MEMORY[0x26D62FBC0](v7);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v8 = sub_269057774();
  __swift_project_value_buffer(v8, qword_2802F3FF8);
  v9 = sub_269057AA4();
  v21 = 0xD00000000000001BLL;
  v22 = 0x800000026905E300;
  v10 = (0x800000026905E320 >> 56) & 0xF;
  if ((0x800000026905E320 & 0x2000000000000000) == 0)
  {
    v10 = 22;
  }

  if (v10)
  {
    v20[0] = 32;
    v20[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000016, 0x800000026905E320);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v4 = v21;
    v5 = v22;
  }

  v11 = sub_269057764();
  if (os_log_type_enabled(v11, v9))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v12 = 136315138;
    v14 = sub_269010108(v4, v5, v20);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_269002000, v11, v9, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D6309D0](v13, -1, -1);
    MEMORY[0x26D6309D0](v12, -1, -1);
  }

  else
  {
  }

  if (a1)
  {
    v15 = *(v2 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_dataSourceWriter);
    v16 = *(v15 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriVoice);
    *(v15 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriVoice) = a1;
    v17 = v6;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_26900E6C8(v19);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_269031E3C()
{

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t SiriSetupEnrollmentResult.voiceProfileId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SiriSetupEnrollmentResult.voiceProfileId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_269031FD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_26903202C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

SiriSetup::SiriSetupEnrollmentMode_optional __swiftcall SiriSetupEnrollmentMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_269057D14();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SiriSetupEnrollmentMode.rawValue.getter()
{
  v1 = 0x6464754220534F69;
  v2 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v2 = 0x7453206B63697551;
  }

  if (*v0)
  {
    v1 = 0x754220534F63616DLL;
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

unint64_t sub_269032194()
{
  result = qword_2802F3C50;
  if (!qword_2802F3C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3C50);
  }

  return result;
}

uint64_t sub_2690321E8()
{
  sub_269057E54();
  sub_269057984();

  return sub_269057E84();
}

uint64_t sub_2690322C4(uint64_t a1)
{
  sub_269057984();
}

uint64_t sub_26903238C(uint64_t a1)
{
  sub_269057E54();
  sub_269057984();

  return sub_269057E84();
}

void sub_269032470(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000079;
  v3 = 0x6464754220534F69;
  v4 = 0x800000026905BBF0;
  v5 = 0xD00000000000001ALL;
  if (*v1 != 2)
  {
    v5 = 0x7453206B63697551;
    v4 = 0xEB00000000747261;
  }

  if (*v1)
  {
    v3 = 0x754220534F63616DLL;
    v2 = 0xEB00000000796464;
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

uint64_t getEnumTagSinglePayload for SiriSetupEnrollmentMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriSetupEnrollmentMode(uint64_t result, unsigned int a2, unsigned int a3)
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

char *sub_269032658(__int128 *a1)
{
  v2 = a1[11];
  v36 = a1[10];
  v37 = v2;
  v38 = a1[12];
  v3 = a1[7];
  v32 = a1[6];
  v33 = v3;
  v4 = a1[9];
  v34 = a1[8];
  v35 = v4;
  v5 = a1[3];
  v28 = a1[2];
  v29 = v5;
  v6 = a1[5];
  v30 = a1[4];
  v31 = v6;
  v7 = a1[1];
  v26 = *a1;
  v27 = v7;
  *&v1[OBJC_IVAR____TtC9SiriSetup25SuccessProxCardController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9SiriSetup25SuccessProxCardController_orbView] = 0;
  v8 = type metadata accessor for SiriSetupProxCardView();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC9SiriSetup21SiriSetupProxCardView_constraintsSpecified] = 0;
  v10 = objc_allocWithZone(type metadata accessor for OrbContainerView());
  *&v9[OBJC_IVAR____TtC9SiriSetup21SiriSetupProxCardView_orbView] = sub_269012CF0(0);
  v9[OBJC_IVAR____TtC9SiriSetup21SiriSetupProxCardView_orbOverTitle] = 1;
  v25.receiver = v9;
  v25.super_class = v8;
  v11 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v12 = OBJC_IVAR____TtC9SiriSetup21SiriSetupProxCardView_orbView;
  [v11 addSubview_];
  [*(v11 + v12) intrinsicContentSize];
  v14 = v13;
  [v11 layoutMargins];
  [v11 setLayoutMargins_];
  v24.receiver = v1;
  v24.super_class = type metadata accessor for SuccessProxCardController();
  v16 = objc_msgSendSuper2(&v24, sel_initWithContentView_, v11);
  v17 = sub_269057944();
  [v16 setTitle_];

  if (*(&v28 + 1))
  {

    v18 = sub_269057944();
  }

  else
  {
    v18 = 0;
  }

  [v16 setSubtitle_];

  [v16 setDismissalType_];
  v19 = *(v11 + v12);
  v20 = *(v16 + OBJC_IVAR____TtC9SiriSetup25SuccessProxCardController_orbView);
  *(v16 + OBJC_IVAR____TtC9SiriSetup25SuccessProxCardController_orbView) = v19;
  v21 = v19;

  v23[10] = v36;
  v23[11] = v37;
  v23[12] = v38;
  v23[6] = v32;
  v23[7] = v33;
  v23[8] = v34;
  v23[9] = v35;
  v23[2] = v28;
  v23[3] = v29;
  v23[4] = v30;
  v23[5] = v31;
  v23[0] = v26;
  v23[1] = v27;
  sub_269032C58(v23);

  sub_269009EE0(&v26);
  return v16;
}

void sub_2690328F4(unint64_t a1)
{
  v2 = v1;
  v4 = [v2 actions];
  v5 = sub_26900A408(0, &qword_2802F33F8, 0x277D432F0);
  v6 = sub_2690579D4();

  if (v6 >> 62)
  {
    if (sub_269057CD4())
    {
LABEL_3:
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D62FE90](0, v6);
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_26:
          swift_once();
LABEL_9:
          v11 = 0xD000000000000015;
          v12 = sub_269057774();
          __swift_project_value_buffer(v12, qword_2802F3FF8);
          v13 = sub_269057AA4();
          v20 = 0xD000000000000015;
          v21 = v5;
          if ((a1 & 0x2F00000000000000) != 0x2000000000000000)
          {
            v19[0] = 32;
            v19[1] = 0xE100000000000000;
            MEMORY[0x26D62FBC0](0xD000000000000015, a1 | 0x8000000000000000);
            MEMORY[0x26D62FBC0](32, 0xE100000000000000);

            v11 = v20;
            v5 = v21;
          }

          v14 = sub_269057764();
          if (os_log_type_enabled(v14, v13))
          {
            v15 = swift_slowAlloc();
            v16 = swift_slowAlloc();
            v19[0] = v16;
            *v15 = 136315138;
            v17 = sub_269010108(v11, v5, v19);

            *(v15 + 4) = v17;
            _os_log_impl(&dword_269002000, v14, v13, "%s", v15, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v16);
            MEMORY[0x26D6309D0](v16, -1, -1);
            MEMORY[0x26D6309D0](v15, -1, -1);
          }

          else
          {
          }

          if (swift_unknownObjectWeakLoadStrong())
          {

            sub_26900E6C8(v18);

            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          return;
        }

        v7 = *(v6 + 32);
      }

      v8 = v7;

      v9 = a1;
      v10 = sub_269057BA4();

      if ((v10 & 1) == 0 || !swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v5 = 0x800000026905D1F0;
      a1 = "SuccessWelcomeController";
      if (qword_2802F3258 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }
}

void sub_269032C58(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 64);
  if (v3 && *(v3 + 16))
  {
    sub_26900A408(0, &unk_2802F3410, 0x277D43308);

    v4 = sub_2690542F4();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    v6 = v2;
    v7 = sub_269057944();

    v20 = sub_269033254;
    v21 = v5;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_26904BBEC;
    v19 = &block_descriptor_14_0;
    v8 = _Block_copy(&v16);
    v9 = [objc_opt_self() actionWithTitle:v7 customColors:v4 handler:v8];

    _Block_release(v8);

    v10 = [v6 addAction_];
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  v12 = v2;
  v13 = sub_269057944();
  v20 = sub_269033234;
  v21 = v11;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_26904BBEC;
  v19 = &block_descriptor_6;
  v14 = _Block_copy(&v16);
  v15 = [objc_opt_self() actionWithTitle:v13 style:0 handler:v14];

  _Block_release(v14);

  [v12 setDismissButtonAction_];
}

uint64_t sub_269032ED4(uint64_t a1, uint64_t a2)
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
    if (("SuccessProxCardController" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v12[0] = 32;
      v12[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000014, 0x800000026905E370);
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

id sub_269033158(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SuccessProxCardController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2690331FC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_269033284(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3E80, &unk_26905B180);
    v2 = sub_269057D04();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_26901729C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_26901729C(v29, v30);
    v14 = sub_269057C34();
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_26901729C(v30, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_26903354C(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewModel);
  swift_beginAccess();
  v4 = v3[11];
  v38[10] = v3[10];
  v38[11] = v4;
  v38[12] = v3[12];
  v5 = v3[7];
  v38[6] = v3[6];
  v38[7] = v5;
  v6 = v3[9];
  v38[8] = v3[8];
  v38[9] = v6;
  v7 = v3[3];
  v38[2] = v3[2];
  v38[3] = v7;
  v8 = v3[5];
  v38[4] = v3[4];
  v38[5] = v8;
  v9 = v3[1];
  v38[0] = *v3;
  v38[1] = v9;
  v10 = a1[11];
  v3[10] = a1[10];
  v3[11] = v10;
  v3[12] = a1[12];
  v11 = a1[7];
  v3[6] = a1[6];
  v3[7] = v11;
  v12 = a1[9];
  v3[8] = a1[8];
  v3[9] = v12;
  v13 = a1[3];
  v3[2] = a1[2];
  v3[3] = v13;
  v14 = a1[5];
  v3[4] = a1[4];
  v3[5] = v14;
  v15 = a1[1];
  *v3 = *a1;
  v3[1] = v15;
  result = sub_269009EE0(v38);
  if (*(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState))
  {
    v17 = v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController;
    v18 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController);
    if (v18)
    {
      v19 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      v36[5] = v18;
      v21 = v3[11];
      v37[10] = v3[10];
      v37[11] = v21;
      v37[12] = v3[12];
      v22 = v3[7];
      v37[6] = v3[6];
      v37[7] = v22;
      v23 = v3[9];
      v37[8] = v3[8];
      v37[9] = v23;
      v24 = v3[3];
      v37[2] = v3[2];
      v37[3] = v24;
      v25 = v3[5];
      v37[4] = v3[4];
      v37[5] = v25;
      v26 = v3[1];
      v37[0] = *v3;
      v37[1] = v26;
      v36[3] = &type metadata for ViewModel;
      v36[4] = &off_2879A7790;
      v27 = swift_allocObject();
      v36[0] = v27;
      v28 = v3[11];
      v27[11] = v3[10];
      v27[12] = v28;
      v27[13] = v3[12];
      v29 = v3[7];
      v27[7] = v3[6];
      v27[8] = v29;
      v30 = v3[9];
      v27[9] = v3[8];
      v27[10] = v30;
      v31 = v3[3];
      v27[3] = v3[2];
      v27[4] = v31;
      v32 = v3[5];
      v27[5] = v3[4];
      v27[6] = v32;
      v33 = v3[1];
      v27[1] = *v3;
      v27[2] = v33;
      v34 = *(v19 + 16);
      sub_269009E3C(v37, &v35);
      v34(v36, 0, ObjectType, v19);
      return __swift_destroy_boxed_opaque_existential_1Tm(v36);
    }
  }

  return result;
}

void (*sub_26903372C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1E0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewModel;
  *(v3 + 464) = v1;
  *(v3 + 472) = v4;
  swift_beginAccess();
  return sub_2690337B4;
}

void sub_2690337B4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[58];
    if (*(v4 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState))
    {
      v5 = *(v4 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController);
      if (v5)
      {
        v6 = (v4 + v3[59]);
        v7 = *(v4 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController + 8);
        ObjectType = swift_getObjectType();
        v3[57] = v5;
        *v3 = *v6;
        v9 = v6[1];
        v10 = v6[2];
        v11 = v6[4];
        *(v3 + 3) = v6[3];
        *(v3 + 4) = v11;
        *(v3 + 1) = v9;
        *(v3 + 2) = v10;
        v12 = v6[5];
        v13 = v6[6];
        v14 = v6[8];
        *(v3 + 7) = v6[7];
        *(v3 + 8) = v14;
        *(v3 + 5) = v12;
        *(v3 + 6) = v13;
        v15 = v6[9];
        v16 = v6[10];
        v17 = v6[12];
        *(v3 + 11) = v6[11];
        *(v3 + 12) = v17;
        *(v3 + 9) = v15;
        *(v3 + 10) = v16;
        v3[55] = &type metadata for ViewModel;
        v3[56] = &off_2879A7790;
        v18 = swift_allocObject();
        v3[52] = v18;
        v18[1] = *v6;
        v19 = v6[4];
        v21 = v6[1];
        v20 = v6[2];
        v18[4] = v6[3];
        v18[5] = v19;
        v18[2] = v21;
        v18[3] = v20;
        v22 = v6[8];
        v24 = v6[5];
        v23 = v6[6];
        v18[8] = v6[7];
        v18[9] = v22;
        v18[6] = v24;
        v18[7] = v23;
        v25 = v6[12];
        v27 = v6[9];
        v26 = v6[10];
        v18[12] = v6[11];
        v18[13] = v25;
        v18[10] = v27;
        v18[11] = v26;
        v28 = *(v7 + 16);
        sub_269009E3C(v3, (v3 + 26));
        v28(v3 + 52, 0, ObjectType, v7);
        __swift_destroy_boxed_opaque_existential_1Tm(v3 + 52);
      }
    }
  }

  free(v3);
}

char *sub_269033924(void *a1, uint64_t (**a2)(uint64_t, uint64_t), void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_preEnrollmentVoiceTriggerState] = 0;
  v15 = &v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController];
  v15[1] = 0;
  v15[2] = 0;
  *v15 = 0;
  *&v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_AVVCRetryCount] = 0;
  v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_isCanceled] = 0;
  v16 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_voiceProfileManager;
  *&v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_voiceProfileManager] = 0;
  v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState] = 0;
  v49 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager;
  *&v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager] = 0;
  *&v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingSessionId] = 0;
  sub_2690576D4();
  *&v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator] = 0;
  v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_lastPlayedTryAgain] = 0;
  v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_currentAnimationCompleted] = 0;
  v17 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_animationContinuation;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3D30, &qword_26905B098);
  (*(*(v18 - 8) + 56))(&v8[v17], 1, 1, v18);
  *&v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_clearCaptionsTask] = 0;
  *&v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_page] = a7;
  v19 = &v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource];
  *v19 = a1;
  v19[1] = a2;
  v20 = &v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSourceWriter];
  *v20 = a3;
  v20[1] = a4;
  v21 = &v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewModel];
  *v21 = 0;
  *(v21 + 1) = 0;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0xE000000000000000;
  *(v21 + 4) = 0;
  *(v21 + 5) = 0;
  *(v21 + 6) = 0;
  *(v21 + 7) = 0xE000000000000000;
  *(v21 + 4) = 0u;
  *(v21 + 5) = 0u;
  *(v21 + 6) = 0u;
  *(v21 + 7) = 0u;
  *(v21 + 8) = 0u;
  *(v21 + 18) = 0;
  v21[152] = 2;
  *(v21 + 21) = 0;
  *(v21 + 22) = 0;
  *(v21 + 20) = 0;
  *(v21 + 183) = 0;
  *(v21 + 24) = 0;
  *(v21 + 25) = 0;
  v22 = swift_getObjectType();
  v23 = a2[10];

  v24 = a1;
  v48 = a3;
  v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewStyle] = v23(v22, a2);
  if (a6 && (objc_opt_self(), (v25 = swift_dynamicCastObjCClass()) != 0))
  {
    v26 = v25;
    v27 = a6;
    v28 = v26;
  }

  else
  {
    if (qword_2802F3220 != -1)
    {
      swift_once();
    }

    v28 = [objc_allocWithZone(SRSVoiceProfileManager) init];
  }

  v29 = a5;
  v30 = *&v8[v16];
  *&v8[v16] = v28;

  if (a5 && (objc_opt_self(), (v31 = swift_dynamicCastObjCClass()) != 0))
  {
    v32 = v31;
    v29 = a5;
  }

  else
  {
    a2[11](v22, a2);
    a2[2](v22, a2);
    if (qword_2802F3220 != -1)
    {
      swift_once();
    }

    v33 = objc_allocWithZone(SRSVoiceTrainingManager);
    v34 = sub_269057944();

    v35 = sub_269057944();

    v32 = [v33 initWithLanguageCode:v34 withSharedUserId:v35];
  }

  v36 = *&v8[v49];
  *&v8[v49] = v32;

  v52.receiver = v8;
  v52.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v52, sel_init);
  v38 = v37[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewStyle];
  v39 = v37;
  v40 = sub_269033DB0(v38);
  v42 = v41;
  v44 = v43;

  v45 = &v39[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController];
  v46 = *&v39[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController];
  *v45 = v40;
  v45[1] = v42;
  v45[2] = v44;

  return v39;
}