uint64_t sub_2295B7710()
{

  return MEMORY[0x2822009F8](sub_2295B77F0, 0, 0);
}

uint64_t sub_2295B77F0()
{
  v50 = v0;
  v1 = v0[18];
  v2 = [v1 value];

  swift_unknownObjectRelease();
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {

        sub_2297A46D4();
        v3 = sub_22A4DD05C();
        v4 = sub_22A4DDCDC();
        v5 = os_log_type_enabled(v3, v4);
        v6 = v0[40];
        v7 = v0[33];
        v8 = v0[25];
        if (v5)
        {
          v9 = v0[21];
          v47 = v0[40];
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v49[0] = v11;
          *v10 = 136315138;
          v12 = sub_2295B8B7C(v9);
          v14 = sub_2295A3E30(v12, v13, v49);

          *(v10 + 4) = v14;
          v15 = "%s No designated Find My device";
LABEL_20:
          _os_log_impl(&dword_229538000, v3, v4, v15, v10, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v11);
          MEMORY[0x22AAD4E50](v11, -1, -1);
          MEMORY[0x22AAD4E50](v10, -1, -1);

          v47(v7, v8);
LABEL_22:
          v44 = swift_task_alloc();
          v0[42] = v44;
          *v44 = v0;
          v44[1] = sub_2295B7E4C;

          return sub_2295B6168();
        }

        goto LABEL_21;
      }

      goto LABEL_10;
    }

    sub_2297A46D4();
    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCCC();
    v33 = os_log_type_enabled(v16, v17);
    v19 = v0[40];
    v21 = v0[37];
    v20 = v0[38];
    v22 = v0[35];
    v23 = v0[25];
    if (v33)
    {
      v48 = v0[35];
      v34 = v0[21];
      v46 = v0[40];
      v25 = swift_slowAlloc();
      v45 = v23;
      v26 = swift_slowAlloc();
      v49[0] = v26;
      *v25 = 136315138;
      v35 = sub_2295B8B7C(v34);
      v37 = sub_2295A3E30(v35, v36, v49);

      *(v25 + 4) = v37;
      v30 = "%s Skipping onboarding fix, Find My status is unknown";
      goto LABEL_13;
    }

LABEL_14:

    v19(v22, v23);
    goto LABEL_15;
  }

  if (v2 == 2)
  {

    sub_2297A46D4();
    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDCDC();
    v39 = os_log_type_enabled(v3, v4);
    v6 = v0[40];
    v7 = v0[32];
    v8 = v0[25];
    if (v39)
    {
      v40 = v0[21];
      v47 = v0[40];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v49[0] = v11;
      *v10 = 136315138;
      v41 = sub_2295B8B7C(v40);
      v43 = sub_2295A3E30(v41, v42, v49);

      *(v10 + 4) = v43;
      v15 = "%s This is the designated Find My device";
      goto LABEL_20;
    }

LABEL_21:

    v6(v7, v8);
    goto LABEL_22;
  }

  if (v2 != 3)
  {
LABEL_10:
    sub_22A4DE1FC();

    v49[0] = 0xD00000000000001ALL;
    v49[1] = 0x800000022A58C2A0;
    v0[19] = v2;
    type metadata accessor for HMDFMFStatus(0);
    v31 = sub_22A4DBA6C();
    MEMORY[0x22AAD08C0](v31);

    return sub_22A4DE39C();
  }

  sub_2297A46D4();
  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDCCC();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[40];
  v21 = v0[37];
  v20 = v0[38];
  v22 = v0[34];
  v23 = v0[25];
  if (!v18)
  {
    goto LABEL_14;
  }

  v48 = v0[34];
  v24 = v0[21];
  v46 = v0[40];
  v25 = swift_slowAlloc();
  v45 = v23;
  v26 = swift_slowAlloc();
  v49[0] = v26;
  *v25 = 136315138;
  v27 = sub_2295B8B7C(v24);
  v29 = sub_2295A3E30(v27, v28, v49);

  *(v25 + 4) = v29;
  v30 = "%s Skipping onboarding fix, another devices is designated as the Find My device";
LABEL_13:
  _os_log_impl(&dword_229538000, v16, v17, v30, v25, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v26);
  MEMORY[0x22AAD4E50](v26, -1, -1);
  MEMORY[0x22AAD4E50](v25, -1, -1);

  v46(v48, v45);
LABEL_15:

  v38 = v0[1];

  return v38(0);
}

uint64_t sub_2295B7E4C(char a1)
{
  *(*v1 + 344) = a1;

  return MEMORY[0x2822009F8](sub_2295B7F4C, 0, 0);
}

uint64_t sub_2295B7F4C(uint64_t a1)
{
  v24 = v1;
  v22 = *(v1 + 344);
  if (v22 == 1)
  {
    sub_2297A46D4();
    v2 = sub_22A4DD05C();
    v3 = sub_22A4DDCCC();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 320);
    v7 = *(v1 + 296);
    v6 = *(v1 + 304);
    v8 = *(v1 + 248);
    v9 = *(v1 + 200);
    if (v4)
    {
      v21 = *(v1 + 248);
      v10 = *(v1 + 168);
      v20 = *(v1 + 320);
      v11 = swift_slowAlloc();
      v19 = v9;
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136315138;
      v13 = sub_2295B8B7C(v10);
      v15 = sub_2295A3E30(v13, v14, &v23);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_229538000, v2, v3, "%s Skipping onboarding fix, home has residents", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x22AAD4E50](v12, -1, -1);
      MEMORY[0x22AAD4E50](v11, -1, -1);

      v20(v21, v19);
    }

    else
    {

      v5(v8, v9);
    }
  }

  else
  {
    v16 = *(v1 + 296);
  }

  v17 = *(v1 + 8);

  return v17(v22 ^ 1u);
}

uint64_t sub_2295B819C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D900, &qword_22A578F08);
  return sub_22A4DD8FC();
}

uint64_t sub_2295B81FC(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = a3;
  v26 = sub_22A4DD26C();
  v29 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DD29C();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v24 = [a2 workQueue];
  (*(v11 + 16))(v14, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v15, v14, v10);
  *(v17 + v16) = a2;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v25;
  aBlock[4] = sub_2295B9584;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_3;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  sub_22A4DD28C();
  v30 = MEMORY[0x277D84F90];
  sub_2295B9744(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_22953E5DC();
  v20 = v26;
  sub_22A4DE03C();
  v21 = v24;
  MEMORY[0x22AAD0F80](0, v9, v6, v18);
  _Block_release(v18);

  (*(v29 + 8))(v6, v20);
  (*(v27 + 8))(v9, v28);
}

void sub_2295B85AC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = sub_22A4DD5AC();
  v12 = [objc_opt_self() allMessageDestinations];
  v13 = [objc_allocWithZone(MEMORY[0x277D0F848]) initWithName:v11 destination:v12 payload:0];

  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v10, v6);
  *(v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_2295B9628;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2297986BC;
  aBlock[3] = &block_descriptor_22;
  v16 = _Block_copy(aBlock);

  [v13 setResponseHandler_];
  _Block_release(v16);
  [a2 _setDidOnboardEventLog_message_];
}

uint64_t sub_2295B8808(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  if (!a1)
  {
    sub_2297A46D4();
    v28 = sub_22A4DD05C();
    v29 = sub_22A4DDD0C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41 = v31;
      *v30 = 136315138;
      v32 = sub_2295B8B7C(a4);
      v34 = sub_2295A3E30(v32, v33, &v41);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_229538000, v28, v29, "%s Successfully fixed onboarding flag", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AAD4E50](v31, -1, -1);
      MEMORY[0x22AAD4E50](v30, -1, -1);
    }

    v35 = *(v8 + 8);
    v36 = v11;
    goto LABEL_8;
  }

  v14 = a1;
  sub_2297A46D4();
  v15 = a1;
  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDCEC();

  if (!os_log_type_enabled(v16, v17))
  {

    v35 = *(v8 + 8);
    v36 = v13;
LABEL_8:
    v35(v36, v7);
    goto LABEL_9;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v39 = v7;
  v20 = v19;
  v21 = swift_slowAlloc();
  v40 = a3;
  v41 = v21;
  v22 = v21;
  *v18 = 136315394;
  v23 = sub_2295B8B7C(a4);
  v25 = sub_2295A3E30(v23, v24, &v41);

  *(v18 + 4) = v25;
  *(v18 + 12) = 2112;
  v26 = a1;
  v27 = _swift_stdlib_bridgeErrorToNSError();
  *(v18 + 14) = v27;
  *v20 = v27;
  _os_log_impl(&dword_229538000, v16, v17, "%s Failed to fix onboarding flag: %@", v18, 0x16u);
  sub_22953EAE4(v20, &qword_27D87D7D0, &unk_22A578D90);
  MEMORY[0x22AAD4E50](v20, -1, -1);
  __swift_destroy_boxed_opaque_existential_0(v22);
  MEMORY[0x22AAD4E50](v22, -1, -1);
  MEMORY[0x22AAD4E50](v18, -1, -1);

  (*(v8 + 8))(v13, v39);
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  return sub_22A4DD8FC();
}

uint64_t sub_2295B8B7C(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = +[(HMDHome *)ObjCClassFromMetadata];
  v3 = sub_22A4DD5EC();

  return v3;
}

id sub_2295B8C74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResidentDiscoveryListener(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ResidentDiscoveryListener(uint64_t a1)
{
  result = qword_27D87D860;
  if (!qword_27D87D860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2295B8D34(uint64_t a1)
{
  sub_2295B8DC4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2295B8DC4(uint64_t a1)
{
  if (!qword_27D87D870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87D878, "6o\b");
    v1 = sub_22A4DDF9C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D87D870);
    }
  }
}

uint64_t sub_2295B8F44(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8E0, &unk_22A578EC0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtC13HomeKitDaemonP33_8BAA1CB4456490773E1DD9AD12A50A5425ResidentDiscoveryListener_continuation;
  if (a2)
  {
    swift_beginAccess();
    sub_2295B9338(v2 + v11, v10);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D878, "6o\b");
    v13 = *(v12 - 8);
    result = (*(v13 + 48))(v10, 1, v12);
    if (result != 1)
    {
      v19 = a2;
      v15 = a2;
      sub_22A4DD8EC();
      return (*(v13 + 8))(v10, v12);
    }

    __break(1u);
    goto LABEL_8;
  }

  swift_beginAccess();
  sub_2295B9338(v2 + v11, v8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D878, "6o\b");
  v17 = *(v16 - 8);
  result = (*(v17 + 48))(v8, 1, v16);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v19 = a1;
  v18 = a1;
  sub_22A4DD8FC();
  return (*(v17 + 8))(v8, v16);
}

uint64_t sub_2295B916C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8E0, &unk_22A578EC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - v4;
  v6 = OBJC_IVAR____TtC13HomeKitDaemonP33_8BAA1CB4456490773E1DD9AD12A50A5425ResidentDiscoveryListener_continuation;
  swift_beginAccess();
  sub_2295B9338(v1 + v6, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D878, "6o\b");
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v10 = a1;
    }

    else
    {
      type metadata accessor for HMError(0);
      v12[1] = -1;
      sub_22956AD8C(MEMORY[0x277D84F90]);
      sub_2295B9744(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
      sub_22A4DB3CC();
      v10 = v13;
    }

    v13 = v10;
    v11 = a1;
    sub_22A4DD8EC();
    return (*(v8 + 8))(v5, v7);
  }

  return result;
}

uint64_t sub_2295B9338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8E0, &unk_22A578EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295B93A8(uint64_t a1)
{
  v4 = *(sub_22A4DB7DC() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_2295B4F68(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2295B94C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_2295B48C4();
}

void sub_2295B9584()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_2295B85AC(v0 + v2, v4, v5);
}

uint64_t sub_2295B9628(void *a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2295B8808(a1, a2, v2 + v6, v7);
}

unint64_t sub_2295B96E0()
{
  result = qword_27D87D908;
  if (!qword_27D87D908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87D908);
  }

  return result;
}

uint64_t sub_2295B9744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2295B9794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8E0, &unk_22A578EC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295B9814(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22A4DB7DC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v1 + v7);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v1 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_229586D38;

  return sub_2295B587C(a1, v9, v10, v1 + v6, v8, v12, v13);
}

uint64_t objectdestroy_40Tm()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_2295B9A4C()
{
  sub_22A4DE1FC();
  v4 = type metadata accessor for HomeDeviceEntity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D928, &unk_22A579008);
  v1 = sub_22A4DBA6C();
  MEMORY[0x22AAD08C0](v1);

  MEMORY[0x22AAD08C0](0x203A6469202CLL, 0xE600000000000000);
  sub_22A4DB7DC();
  sub_2295BEFD0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v2 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v2);

  MEMORY[0x22AAD08C0](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x22AAD08C0](*(v0 + *(v4 + 24)), *(v0 + *(v4 + 24) + 8));
  MEMORY[0x22AAD08C0](0x203A65707974202CLL, 0xE800000000000000);
  sub_22A4DE31C();
  return 0;
}

uint64_t sub_2295B9BDC(NSObject *a1, char *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v142 = a4;
  v154 = a3;
  v146 = a1;
  v147 = a2;
  v6 = sub_22A4DB7DC();
  v150 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v151 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v145 = &v129 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v135 = &v129 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v134 = &v129 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v139 = &v129 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v144 = &v129 - v18;
  MEMORY[0x28223BE20](v17);
  v143 = &v129 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D930, &qword_22A579018);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v133 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v136 = &v129 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v129 - v25;
  v157 = type metadata accessor for HomeDeviceEntity(0);
  v152 = *(v157 - 8);
  v27 = MEMORY[0x28223BE20](v157);
  v130 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v131 = &v129 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v137 = &v129 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v138 = &v129 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v129 = &v129 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = (&v129 - v38);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = (&v129 - v41);
  v43 = MEMORY[0x28223BE20](v40);
  v132 = &v129 - v44;
  MEMORY[0x28223BE20](v43);
  v153 = &v129 - v45;
  v158 = MEMORY[0x277D84FA0];
  v46 = [v4 services];
  sub_229562F68(0, &unk_27D87D360, off_278666310);
  v47 = sub_22A4DD83C();

  if (v47 >> 62)
  {
    goto LABEL_68;
  }

  v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v140 = v39;
  v141 = v42;
  v148 = v6;
  if (v48)
  {
    v49 = 0;
    v155 = v47 & 0xFFFFFFFFFFFFFF8;
    v156 = v47 & 0xC000000000000001;
    v42 = (v152 + 48);
    v50 = MEMORY[0x277D84F90];
    v51 = (v152 + 56);
    v149 = v5;
    v39 = v48;
    while (1)
    {
      if (v156)
      {
        v52 = MEMORY[0x22AAD13F0](v49, v47);
      }

      else
      {
        if (v49 >= *(v155 + 16))
        {
          goto LABEL_66;
        }

        v52 = *(v47 + 8 * v49 + 32);
      }

      v53 = v52;
      v6 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        v48 = sub_22A4DE0EC();
        goto LABEL_3;
      }

      if ([v52 isHidden])
      {

        (*v51)(v26, 1, 1, v157);
      }

      else
      {
        sub_2295BB004(v154, v5, v26);

        if ((*v42)(v26, 1, v157) != 1)
        {
          sub_22957A0B4(v26, v153, type metadata accessor for HomeDeviceEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_22958ADD8(0, v50[2] + 1, 1, v50);
          }

          v55 = v50[2];
          v54 = v50[3];
          if (v55 >= v54 >> 1)
          {
            v50 = sub_22958ADD8((v54 > 1), v55 + 1, 1, v50);
          }

          v50[2] = v55 + 1;
          sub_22957A0B4(v153, v50 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v55, type metadata accessor for HomeDeviceEntity);
          v5 = v149;
          goto LABEL_7;
        }
      }

      sub_22953EAE4(v26, &qword_27D87D930, &qword_22A579018);
LABEL_7:
      ++v49;
      if (v6 == v39)
      {
        goto LABEL_21;
      }
    }
  }

  v50 = MEMORY[0x277D84F90];
LABEL_21:

  sub_22959D024(v50);

  v56 = [v5 mediaProfile];
  v57 = v148;
  v59 = v140;
  v58 = v141;
  if (v56)
  {
    v60 = v56;
    v61 = v136;
    sub_2295BCE4C(v146, v147, v5, v136);
    if ((*(v152 + 48))(v61, 1, v157) == 1)
    {

      sub_22953EAE4(v61, &qword_27D87D930, &qword_22A579018);
    }

    else
    {
      v62 = v61;
      v63 = v132;
      sub_22957A0B4(v62, v132, type metadata accessor for HomeDeviceEntity);
      sub_22959E67C(v63, v59);
      sub_2295708D8(v58, v59);

      sub_22959E6E0(v58);
      sub_22959E6E0(v63);
    }
  }

  v64 = [v5 cameraProfiles];
  sub_229562F68(0, &qword_27D87D938, off_278666080);
  sub_22959E62C(&qword_27D881EF0, &qword_27D87D938, off_278666080);
  v65 = sub_22A4DDB6C();

  if ((v65 & 0xC000000000000001) != 0)
  {
    v66 = sub_22A4DE0EC();
  }

  else
  {
    v66 = *(v65 + 16);
  }

  if (v66)
  {
    v67 = [v5 cameraProfiles];
    v68 = sub_22A4DDB6C();

    v69 = sub_22962D598(v68);

    if (v69)
    {
      v70 = v133;
      sub_2295BDA18(v146, v147, v5, v133);
      if ((*(v152 + 48))(v70, 1, v157) == 1)
      {

        sub_22953EAE4(v70, &qword_27D87D930, &qword_22A579018);
      }

      else
      {
        v71 = v70;
        v72 = v129;
        sub_22957A0B4(v71, v129, type metadata accessor for HomeDeviceEntity);
        sub_22959E67C(v72, v59);
        sub_2295708D8(v58, v59);

        sub_22959E6E0(v58);
        sub_22959E6E0(v72);
      }
    }
  }

  v73 = [v5 siriEndpointProfile];
  if (v73)
  {
    v74 = v73;
    v75 = [v5 uuid];
    sub_22A4DB79C();

    v76 = [v74 uniqueIdentifier];
    sub_22A4DB79C();

    sub_22965C1A0(&unk_283CDA588);

    v77 = *MEMORY[0x277CCF2A8];
    v78 = [v74 uniqueIdentifier];
    v79 = v139;
    sub_22A4DB79C();

    v80 = sub_22A4DB77C();
    v81 = *(v150 + 8);
    v81(v79, v57);
    v82 = hm_assistantIdentifier();

    if (v82)
    {
      v83 = sub_22A4DD5EC();
      v85 = v84;
    }

    else
    {
      v83 = 0;
      v85 = 0;
    }

    v81(v143, v57);
    v86 = v157;
    v26 = v137;
    v87 = &v137[*(v157 + 20)];
    *v87 = v83;
    v87[1] = v85;
    (*(v150 + 32))(v26, v144, v57);
    v88 = &v26[*(v86 + 24)];
    v89 = v147;
    *v88 = v146;
    *(v88 + 1) = v89;
    v26[*(v86 + 28)] = 41;
    v90 = v138;
    sub_22957A0B4(v26, v138, type metadata accessor for HomeDeviceEntity);
    sub_22959E67C(v90, v59);

    sub_2295708D8(v58, v59);

    sub_22959E6E0(v58);
    sub_22959E6E0(v90);
  }

  v91 = [v5 lightProfiles];
  sub_229562F68(0, &unk_27D880970, off_278666228);
  sub_22959E62C(&unk_27D87E4A0, &unk_27D880970, off_278666228);
  v92 = sub_22A4DDB6C();

  if ((v92 & 0xC000000000000001) != 0)
  {
    v93 = sub_22A4DE0EC();
  }

  else
  {
    v93 = *(v92 + 16);
  }

  if (v93)
  {
    v94 = [v5 lightProfiles];
    v95 = sub_22A4DDB6C();

    v96 = sub_22962D5AC(v95);

    if (v96)
    {
      if ([v96 isNaturalLightingSupported])
      {
        v97 = [v5 uuid];
        sub_22A4DB79C();

        v98 = [v96 uniqueIdentifier];
        sub_22A4DB79C();

        sub_22965C1A0(&unk_283CDA5B0);

        v99 = *MEMORY[0x277CCF2A8];
        v100 = [v96 uniqueIdentifier];
        v101 = v139;
        sub_22A4DB79C();

        v102 = sub_22A4DB77C();
        v103 = *(v150 + 8);
        v103(v101, v57);
        v104 = hm_assistantIdentifier();

        if (v104)
        {
          v105 = sub_22A4DD5EC();
          v107 = v106;
        }

        else
        {
          v105 = 0;
          v107 = 0;
        }

        v103(v134, v57);
        v108 = v157;
        v26 = v130;
        v109 = &v130[*(v157 + 20)];
        *v109 = v105;
        v109[1] = v107;
        (*(v150 + 32))(v26, v135, v57);
        v110 = &v26[*(v108 + 24)];
        v111 = v147;
        *v110 = v146;
        *(v110 + 1) = v111;
        v26[*(v108 + 28)] = 17;
        v112 = v131;
        sub_22957A0B4(v26, v131, type metadata accessor for HomeDeviceEntity);
        sub_22959E67C(v112, v59);

        sub_2295708D8(v58, v59);

        sub_22959E6E0(v58);
        sub_22959E6E0(v112);
      }

      else
      {
      }
    }
  }

  v113 = [v5 bridge];
  if (v113)
  {

    v114 = [v5 identifiersForBridgedAccessories];
    sub_2295BEFD0(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v6 = v57;
    v115 = sub_22A4DDB6C();

    v116 = 0;
    v42 = 0;
    v5 = (v115 + 56);
    v117 = 1 << *(v115 + 32);
    v118 = -1;
    if (v117 < 64)
    {
      v118 = ~(-1 << v117);
    }

    v47 = v118 & *(v115 + 56);
    v119 = (v117 + 63) >> 6;
    v156 = v150 + 16;
    v157 = v115;
    v155 = v150 + 32;
    v39 = (v150 + 8);
    while (v47)
    {
LABEL_60:
      v121 = v150;
      v122 = v145;
      (*(v150 + 16))(v145, *(v157 + 48) + *(v150 + 72) * (__clz(__rbit64(v47)) | (v116 << 6)), v6);
      v123 = v151;
      (*(v121 + 32))(v151, v122, v6);
      v124 = [v154 accessories];
      sub_229562F68(0, &qword_281401C30, off_278665FE8);
      v125 = sub_22A4DD83C();

      MEMORY[0x28223BE20](v126);
      *(&v129 - 2) = v123;
      v26 = sub_22968FFF0(sub_2295C0F44, (&v129 - 4), v125);

      if (v26)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v127 = sub_2295B9BDC(v146, v147, v154, v142);
          sub_2295948C4(v127);
        }
      }

      v47 &= v47 - 1;
      v6 = v148;
      (*v39)(v151);
    }

    while (1)
    {
      v120 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
        goto LABEL_67;
      }

      if (v120 >= v119)
      {

        return v158;
      }

      v47 = *(v5 + v120);
      ++v116;
      if (v47)
      {
        v116 = v120;
        goto LABEL_60;
      }
    }
  }

  return v158;
}

uint64_t sub_2295BAC18(NSObject *a1, char *a2)
{
  v3 = v2;
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D930, &qword_22A579018);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for HomeDeviceEntity(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v3 hasMediaProfile])
  {
    sub_22A4DD5EC();
    sub_2295BED30();
    sub_22A4DD06C();
    v18 = v3;
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCEC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_229538000, v19, v20, "Unable to create HomeDeviceEntity for %@ as there is no media profile for it", v21, 0xCu);
      sub_22953EAE4(v22, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v22, -1, -1);
      MEMORY[0x22AAD4E50](v21, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    return MEMORY[0x277D84FA0];
  }

  v17 = [v3 mediaProfile];
  sub_2295BCE4C(a1, a2, v3, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_22953EAE4(v12, &qword_27D87D930, &qword_22A579018);
    return MEMORY[0x277D84FA0];
  }

  sub_22957A0B4(v12, v16, type metadata accessor for HomeDeviceEntity);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D460, &unk_22A578600);
  v25 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_22A576180;
  sub_22959E67C(v16, v26 + v25);
  v27 = sub_22965C354(v26);
  swift_setDeallocating();
  sub_22959E6E0(v26 + v25);
  swift_deallocClassInstance();
  sub_22959E6E0(v16);
  return v27;
}

uint64_t sub_2295BB004@<X0>(void *a1@<X2>, void *a2@<X4>, uint64_t a3@<X8>)
{
  v4 = v3;
  v189 = a2;
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v188 = &v178 - v13;
  MEMORY[0x28223BE20](v12);
  v191 = &v178 - v14;
  v15 = sub_22A4DD07C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v193 = &v178 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v190 = &v178 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v192 = &v178 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v178 - v26;
  v196 = v4;
  v28 = [v4 name];
  if (!v28)
  {
    goto LABEL_12;
  }

  v184 = a1;
  v185 = v11;
  v186 = v8;
  v29 = v28;
  v30 = sub_22A4DD5EC();
  v32 = v31;

  v33 = HIBYTE(v32) & 0xF;
  v187 = v30;
  v194 = v32;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33 || (v197 = [objc_opt_self() getSharedInstance]) == 0)
  {

LABEL_12:
    sub_22A4DD5EC();
    v36 = type metadata accessor for HomeDeviceEntity(0);
    sub_2295BED30();
    sub_22A4DD06C();
    v50 = v196;
    v51 = sub_22A4DD05C();
    v52 = sub_22A4DDCEC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v50;
      *v54 = v50;
      v55 = v50;
      _os_log_impl(&dword_229538000, v51, v52, "Service does not have a name. %@", v53, 0xCu);
      sub_22953EAE4(v54, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v54, -1, -1);
      MEMORY[0x22AAD4E50](v53, -1, -1);
    }

    (*(v16 + 8))(v19, v15);
    return (*(*(v36 - 8) + 56))(a3, 1, 1, v36);
  }

  v181 = v7;
  v182 = v15;
  v34 = [v196 type];
  if (!v34)
  {
    sub_22A4DD5EC();
    v34 = sub_22A4DD5AC();
  }

  v35 = [v197 shouldFilterServiceOfType_];

  v183 = v16;
  if (v35)
  {
    sub_22A4DD5EC();
    v36 = type metadata accessor for HomeDeviceEntity(0);
    sub_2295BED30();
    sub_22A4DD06C();
    v37 = v196;
    v38 = v194;

    v39 = sub_22A4DD05C();
    v40 = sub_22A4DDCCC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      v199[0] = v196;
      *v41 = 136315394;
      v42 = [v37 type];
      v43 = sub_22A4DD5EC();
      v44 = a3;
      v46 = v45;

      v47 = sub_2295A3E30(v43, v46, v199);
      a3 = v44;

      *(v41 + 4) = v47;
      *(v41 + 12) = 2080;
      v48 = sub_2295A3E30(v187, v38, v199);

      *(v41 + 14) = v48;
      _os_log_impl(&dword_229538000, v39, v40, "Siri does not support %s. Ignoring %s.", v41, 0x16u);
      v49 = v196;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v49, -1, -1);
      MEMORY[0x22AAD4E50](v41, -1, -1);
    }

    else
    {
    }

    (*(v183 + 8))(v27, v182);
    return (*(*(v36 - 8) + 56))(a3, 1, 1, v36);
  }

  v180 = a3;
  v57 = [v196 characteristics];
  v179 = sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  v58 = sub_22A4DD83C();

  v199[0] = MEMORY[0x277D84F90];
  if (v58 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v60 = 0;
    v16 = v58 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v58 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x22AAD13F0](v60, v58);
      }

      else
      {
        if (v60 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v61 = *(v58 + 8 * v60 + 32);
      }

      v62 = v61;
      v63 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      v198 = v61;
      if (sub_2295BC4FC(&v198, v197))
      {
        sub_22A4DE27C();
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
      }

      else
      {
      }

      ++v60;
      if (v63 == i)
      {
        v64 = v199[0];
        v16 = v183;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v64 = MEMORY[0x277D84F90];
LABEL_35:

  if (v64 < 0 || (v64 & 0x4000000000000000) != 0)
  {
    goto LABEL_94;
  }

  for (j = *(v64 + 16); j; j = sub_22A4DE0EC())
  {
    v199[0] = MEMORY[0x277D84FA0];
    if (qword_27D87B8E0 != -1)
    {
      swift_once();
    }

    v65 = qword_27D8AB670;
    v66 = [v196 serviceType];
    v67 = sub_22A4DD5EC();
    v69 = v68;

    if (*(v65 + 16))
    {
      v70 = sub_229543DBC(v67, v69);
      v72 = v71;

      if (v72)
      {
        sub_229570E00(&v198, *(*(v65 + 56) + v70));
      }
    }

    else
    {
    }

    v73 = [v196 serviceType];
    if (!v73)
    {
      sub_22A4DD5EC();
      v73 = sub_22A4DD5AC();
    }

    v74 = [v197 getServiceTypeAlias_];

    if (v74)
    {
      v75 = sub_22A4DD5EC();
      v77 = v76;

      if (*(v65 + 16))
      {
        v78 = sub_229543DBC(v75, v77);
        v80 = v79;

        if (v80)
        {
          sub_229570E00(&v198, *(*(v65 + 56) + v78));
        }
      }

      else
      {
      }
    }

    v81 = [v196 associatedServiceType];
    if (v81)
    {
      v82 = v81;
      v83 = sub_22A4DD5EC();
      v85 = v84;

      if (*(v65 + 16))
      {
        v86 = sub_229543DBC(v83, v85);
        v88 = v87;

        if (v88)
        {
          sub_229570E00(&v198, *(*(v65 + 56) + v86));
        }
      }

      else
      {
      }
    }

    v89 = 0;
    v16 = v64 & 0xC000000000000001;
    v90 = MEMORY[0x277D84F90];
LABEL_57:
    v192 = v90;
    v91 = v89;
    while (1)
    {
      if (v16)
      {
        v92 = MEMORY[0x22AAD13F0](v91, v64);
      }

      else
      {
        if (v91 >= *(v64 + 16))
        {
          goto LABEL_93;
        }

        v92 = *(v64 + 8 * v91 + 32);
      }

      v93 = v92;
      v89 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        break;
      }

      if (qword_27D87B8D0 != -1)
      {
        swift_once();
      }

      v94 = qword_27D8AB660;
      v95 = [v93 type];
      v96 = sub_22A4DD5EC();
      v98 = v97;

      if (*(v94 + 16))
      {
        v99 = sub_229543DBC(v96, v98);
        v101 = v100;

        if (v101)
        {
          v102 = *(*(v94 + 56) + v99);

          v90 = v192;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v90 = sub_22958AE28(0, *(v90 + 2) + 1, 1, v90);
          }

          v105 = *(v90 + 2);
          v104 = *(v90 + 3);
          if (v105 >= v104 >> 1)
          {
            v90 = sub_22958AE28((v104 > 1), v105 + 1, 1, v90);
          }

          *(v90 + 2) = v105 + 1;
          v90[v105 + 32] = v102;
          if (v89 == j)
          {
LABEL_77:
            v106 = v199[0];

            v108 = sub_22962D5C0(v107);

            if (v108 == 43)
            {

              v109 = v193;
              goto LABEL_83;
            }

            v109 = v193;
            if (*(v90 + 2))
            {
              LODWORD(v193) = v108;
              j = v106;

              sub_22967229C(v90);

              sub_22A4DD5EC();
              v110 = type metadata accessor for HomeDeviceEntity(0);
              sub_2295BED30();
              v111 = v190;
              sub_22A4DD06C();
              v112 = v196;
              v113 = v189;

              v114 = sub_22A4DD05C();
              v115 = sub_22A4DDCDC();

              if (os_log_type_enabled(v114, v115))
              {
                v116 = swift_slowAlloc();
                v117 = swift_slowAlloc();
                v192 = swift_slowAlloc();
                v198 = v192;
                *v116 = 138413314;
                v118 = [v113 category];
                *(v116 + 4) = v118;
                *v117 = v118;
                *(v116 + 12) = 2080;
                sub_2295C0F64();
                v196 = v113;
                LODWORD(v189) = v115;

                v119 = sub_22A4DDB7C();
                v121 = v120;

                v122 = sub_2295A3E30(v119, v121, &v198);

                *(v116 + 14) = v122;
                *(v116 + 22) = 2080;
                sub_2295C0FB8();
                v123 = sub_22A4DDB7C();
                v125 = v124;

                v126 = sub_2295A3E30(v123, v125, &v198);

                *(v116 + 24) = v126;
                *(v116 + 32) = 2080;
                v127 = [v112 &selRef_shouldShowProvideFeedbackButton];
                v128 = v191;
                sub_22A4DB79C();

                sub_2295BEFD0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                v129 = v181;
                v130 = sub_22A4DE5CC();
                v132 = v131;
                (*(v186 + 8))(v128, v129);
                v133 = sub_2295A3E30(v130, v132, &v198);

                *(v116 + 34) = v133;
                v113 = v196;
                *(v116 + 42) = 2112;
                *(v116 + 44) = v112;
                v117[1] = v112;
                v134 = v112;
                _os_log_impl(&dword_229538000, v114, v189, "Found %@, %s and %s for %s, %@", v116, 0x34u);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
                swift_arrayDestroy();
                MEMORY[0x22AAD4E50](v117, -1, -1);
                v135 = v192;
                swift_arrayDestroy();
                MEMORY[0x22AAD4E50](v135, -1, -1);
                MEMORY[0x22AAD4E50](v116, -1, -1);

                (*(v183 + 8))(v190, v182);
              }

              else
              {

                (*(v183 + 8))(v111, v182);
              }

              v158 = v180;
              v159 = v188;
              v160 = [v113 uuid];
              sub_22A4DB79C();

              v161 = [v112 spiClientIdentifier];
              sub_22A4DB79C();

              v162 = [v112 urlString];
              v163 = v194;
              if (v162)
              {
                v164 = v162;
                v165 = sub_22A4DD5EC();
                v167 = v166;
              }

              else
              {
                v165 = 0;
                v167 = 0;
              }

              v168 = sub_2295BC924(v184);
              sub_229672310(v168);

              v169 = v186;
              v170 = v181;
              (*(v186 + 8))(v159, v181);
              v171 = (v158 + v110[5]);
              *v171 = v165;
              v171[1] = v167;
              (*(v169 + 32))(v158, v185, v170);
              v172 = (v158 + v110[6]);
              *v172 = v187;
              v172[1] = v163;
              *(v158 + v110[7]) = v193;
              (*(*(v110 - 1) + 56))(v158, 0, 1, v110);
            }

            else
            {

LABEL_83:

              sub_22A4DD5EC();
              v136 = type metadata accessor for HomeDeviceEntity(0);
              sub_2295BED30();
              sub_22A4DD06C();
              v137 = v196;

              v138 = sub_22A4DD05C();
              v139 = sub_22A4DDCEC();

              if (!os_log_type_enabled(v138, v139))
              {

                (*(v183 + 8))(v109, v182);
                (*(*(v136 - 8) + 56))(v180, 1, 1, v136);
              }

              v140 = swift_slowAlloc();
              v196 = swift_slowAlloc();
              v198 = v196;
              *v140 = 136315650;
              v141 = [v137 spiClientIdentifier];
              v142 = v191;
              sub_22A4DB79C();

              sub_2295BEFD0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              j = v106;
              v143 = v181;
              v144 = sub_22A4DE5CC();
              v146 = v145;
              (*(v186 + 8))(v142, v143);
              v147 = sub_2295A3E30(v144, v146, &v198);

              *(v140 + 4) = v147;
              *(v140 + 12) = 2080;
              v148 = [v137 serviceType];
              v149 = sub_22A4DD5EC();
              v151 = v150;

              v152 = sub_2295A3E30(v149, v151, &v198);

              *(v140 + 14) = v152;
              *(v140 + 22) = 2080;
              v153 = MEMORY[0x22AAD0A20](v64, v179);
              v155 = v154;

              v156 = sub_2295A3E30(v153, v155, &v198);

              *(v140 + 24) = v156;
              _os_log_impl(&dword_229538000, v138, v139, "Could not figure out device type or capabilities for %s, %s, %s", v140, 0x20u);
              v157 = v196;
              swift_arrayDestroy();
              MEMORY[0x22AAD4E50](v157, -1, -1);
              MEMORY[0x22AAD4E50](v140, -1, -1);

              (*(v183 + 8))(v193, v182);
              (*(*(v136 - 8) + 56))(v180, 1, 1, v136);
            }
          }

          goto LABEL_57;
        }
      }

      else
      {
      }

      ++v91;
      if (v89 == j)
      {
        v90 = v192;
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    ;
  }

  sub_22A4DD5EC();
  v173 = type metadata accessor for HomeDeviceEntity(0);
  sub_2295BED30();
  v174 = v192;
  sub_22A4DD06C();
  v175 = sub_22A4DD05C();
  v176 = sub_22A4DDCDC();
  if (os_log_type_enabled(v175, v176))
  {
    v177 = swift_slowAlloc();
    *v177 = 0;
    _os_log_impl(&dword_229538000, v175, v176, "Only consider the services that have one or more Siri controllable attributes", v177, 2u);
    MEMORY[0x22AAD4E50](v177, -1, -1);
  }

  (*(v16 + 8))(v174, v182);
  return (*(*(v173 - 8) + 56))(v180, 1, 1, v173);
}

uint64_t sub_2295BC4FC(id *a1, void *a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = *a1;
  v12 = [*a1 type];
  if (!v12)
  {
    sub_22A4DD5EC();
    v12 = sub_22A4DD5AC();
  }

  v13 = sub_22A4DD5EC();
  v15 = v14;
  v16 = [a2 shouldFilterCharacteristicOfTypeFromApp_];

  if (v16)
  {

    sub_22A4DD5EC();
    type metadata accessor for HomeDeviceEntity(0);
    sub_2295BED30();
    sub_22A4DD06C();
    v17 = v11;
    v18 = sub_22A4DD05C();
    v19 = sub_22A4DDCDC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_229538000, v18, v19, "Skipping %@ as it is not controllable by Siri", v20, 0xCu);
      sub_22953EAE4(v21, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v21, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    if (qword_27D87B8D0 != -1)
    {
      swift_once();
    }

    if (*(qword_27D8AB660 + 16))
    {
      sub_229543DBC(v13, v15);
      if (v23)
      {

        return 1;
      }
    }

    sub_22A4DD5EC();
    type metadata accessor for HomeDeviceEntity(0);
    sub_2295BED30();
    sub_22A4DD06C();

    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCDC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31 = v28;
      *v27 = 136315138;
      v29 = sub_2295A3E30(v13, v15, &v31);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_229538000, v25, v26, "Did not find mapping of %s to a HomeCapability", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v27, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
  }

  return 0;
}

void *sub_2295BC924(void *a1)
{
  v55 = sub_22A4DB7DC();
  v2 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HomeGroupEntity(0);
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v46 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v45 = &v45 - v8;
  MEMORY[0x28223BE20](v7);
  v53 = &v45 - v9;
  v10 = [a1 serviceGroups];
  sub_229562F68(0, &unk_281401B60, off_278666318);
  v11 = sub_22A4DD83C();

  if (v11 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v13 = 0;
    v51 = v11 & 0xFFFFFFFFFFFFFF8;
    v52 = v11 & 0xC000000000000001;
    v49 = v2 + 1;
    v57 = MEMORY[0x277D84F90];
    v50 = i;
    while (1)
    {
      if (v52)
      {
        v15 = MEMORY[0x22AAD13F0](v13, v11);
      }

      else
      {
        if (v13 >= *(v51 + 16))
        {
          goto LABEL_21;
        }

        v15 = *(v11 + 8 * v13 + 32);
      }

      v2 = v15;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v17 = v11;
      v18 = [v15 serviceUUIDs];
      v19 = sub_22A4DD83C();

      v20 = [v56 uuid];
      v21 = v54;
      sub_22A4DB79C();

      v22 = sub_22A4DB76C();
      v24 = v23;
      v25 = (*v49)(v21, v55);
      v58[0] = v22;
      v58[1] = v24;
      MEMORY[0x28223BE20](v25);
      *(&v45 - 2) = v58;
      LOBYTE(v22) = sub_22986A5E0(sub_22959E60C, (&v45 - 4), v19);

      if (v22)
      {
        v26 = [v2 urlString];
        if (v26)
        {
          v27 = v26;
          v28 = sub_22A4DD5EC();
          v30 = v29;
        }

        else
        {
          v28 = 0;
          v30 = 0;
        }

        v31 = v46;
        *v46 = v28;
        v31[1] = v30;
        v32 = [v2 spiClientIdentifier];
        v33 = v48;
        sub_22A4DB79C();

        v34 = [v2 name];
        v35 = sub_22A4DD5EC();
        v37 = v36;

        v38 = (v31 + *(v33 + 24));
        *v38 = v35;
        v38[1] = v37;
        v39 = v31;
        v40 = v45;
        sub_22957A0B4(v39, v45, type metadata accessor for HomeGroupEntity);
        sub_22957A0B4(v40, v53, type metadata accessor for HomeGroupEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_22958AE00(0, v57[2] + 1, 1, v57);
        }

        v11 = v17;
        v42 = v57[2];
        v41 = v57[3];
        v2 = (v42 + 1);
        v14 = v50;
        if (v42 >= v41 >> 1)
        {
          v57 = sub_22958AE00((v41 > 1), v42 + 1, 1, v57);
        }

        v43 = v57;
        v57[2] = v2;
        sub_22957A0B4(v53, v43 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v42, type metadata accessor for HomeGroupEntity);
      }

      else
      {

        v11 = v17;
        v14 = v50;
      }

      ++v13;
      if (v16 == v14)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v57 = MEMORY[0x277D84F90];
LABEL_24:

  return v57;
}

uint64_t sub_2295BCE4C@<X0>(NSObject *a1@<X0>, char *a2@<X1>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v5 = v4;
  v98 = a1;
  v99 = a2;
  v108 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v106 = v7;
  v107 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v104 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v95 = &v94 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = (&v94 - v13);
  v15 = sub_22A4DB7DC();
  v101 = *(v15 - 8);
  v102 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v97 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v94 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v94 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D930, &qword_22A579018);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v94 - v24;
  v26 = [a3 category];
  v27 = [v26 categoryType];

  v28 = sub_22A4DD5EC();
  v30 = v29;

  v31 = [v5 uniqueIdentifier];
  sub_22A4DB79C();

  v32 = [a3 spiClientIdentifier];
  v103 = v20;
  sub_22A4DB79C();

  v33 = [v5 urlString];
  if (v33)
  {
    v34 = v33;
    v96 = sub_22A4DD5EC();
    v36 = v35;
  }

  else
  {
    v96 = 0;
    v36 = 0;
  }

  if (qword_27D87B8D8 != -1)
  {
    swift_once();
  }

  v105 = v25;
  v37 = qword_27D8AB668;
  if (!*(qword_27D8AB668 + 16) || (v38 = sub_229543DBC(v28, v30), (v39 & 1) == 0))
  {

    sub_22A4DD5EC();
    v43 = type metadata accessor for HomeDeviceEntity(0);
    sub_2295BED30();
    sub_22A4DD06C();

    v44 = sub_22A4DD05C();
    v45 = sub_22A4DDCEC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v109 = v47;
      *v46 = 136315138;
      v48 = sub_2295A3E30(v28, v30, &v109);
      v98 = v14;
      v99 = v22;
      v50 = v101;
      v49 = v102;
      v51 = v5;
      v52 = v48;

      *(v46 + 4) = v52;
      v5 = v51;
      _os_log_impl(&dword_229538000, v44, v45, "Unable to map accessory category %s to a device type.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      v53 = v106;
      MEMORY[0x22AAD4E50](v47, -1, -1);
      MEMORY[0x22AAD4E50](v46, -1, -1);

      (*(v107 + 8))(v98, v53);
LABEL_14:
      v54 = *(v50 + 8);
      v54(v103, v49);
      v54(v99, v49);
LABEL_17:
      v57 = v105;
      (*(*(v43 - 1) + 56))(v105, 1, 1, v43);
      goto LABEL_21;
    }

    (*(v107 + 8))(v14, v106);
LABEL_16:
    v55 = v102;
    v56 = *(v101 + 8);
    v56(v103, v102);
    v56(v22, v55);
    goto LABEL_17;
  }

  v40 = *(*(v37 + 56) + v38);
  if (v28 != sub_22A4DD5EC() || v30 != v41)
  {
    v58 = sub_22A4DE60C();

    if (v58)
    {
      v42 = &unk_283CDA448;
      goto LABEL_20;
    }

    if (v28 == sub_22A4DD5EC() && v30 == v76)
    {
      v42 = &unk_283CDA470;
      goto LABEL_11;
    }

    v77 = sub_22A4DE60C();

    if (v77)
    {
      v42 = &unk_283CDA470;
      goto LABEL_20;
    }

    if (v28 == sub_22A4DD5EC() && v30 == v78)
    {
LABEL_34:
      v42 = &unk_283CDA498;
      goto LABEL_11;
    }

    v79 = sub_22A4DE60C();

    if (v79)
    {
      goto LABEL_36;
    }

    if (v28 == sub_22A4DD5EC() && v30 == v80)
    {
      goto LABEL_34;
    }

    v81 = sub_22A4DE60C();

    if (v81)
    {
LABEL_36:
      v42 = &unk_283CDA498;
      goto LABEL_20;
    }

    if (v28 == sub_22A4DD5EC() && v30 == v82)
    {
      v42 = &unk_283CDA4C0;
      goto LABEL_11;
    }

    v83 = sub_22A4DE60C();

    if (v83)
    {
      v42 = &unk_283CDA4C0;
      goto LABEL_20;
    }

    sub_22A4DD5EC();
    v43 = type metadata accessor for HomeDeviceEntity(0);
    sub_2295BED30();
    v84 = v95;
    sub_22A4DD06C();

    v85 = sub_22A4DD05C();
    v86 = sub_22A4DDCEC();

    v98 = v85;
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v109 = v88;
      *v87 = 136315138;
      v89 = sub_2295A3E30(v28, v30, &v109);
      v99 = v22;
      v50 = v101;
      v49 = v102;
      v90 = v5;
      v91 = v89;

      *(v87 + 4) = v91;
      v5 = v90;
      v92 = v98;
      _os_log_impl(&dword_229538000, v98, v86, "Please add support for %s to HomeDeviceEntity.", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v88);
      v93 = v106;
      MEMORY[0x22AAD4E50](v88, -1, -1);
      MEMORY[0x22AAD4E50](v87, -1, -1);

      (*(v107 + 8))(v95, v93);
      goto LABEL_14;
    }

    (*(v107 + 8))(v84, v106);
    goto LABEL_16;
  }

  v42 = &unk_283CDA448;
LABEL_11:

LABEL_20:

  sub_22965C1A0(v42);

  v60 = v101;
  v59 = v102;
  v61 = v97;
  (*(v101 + 16))(v97, v22, v102);
  v62 = *(v60 + 8);
  v62(v103, v59);
  v62(v22, v59);
  v43 = type metadata accessor for HomeDeviceEntity(0);
  v63 = v105;
  v64 = &v105[v43[5]];
  *v64 = v96;
  v64[1] = v36;
  (*(v60 + 32))(v63, v61, v59);
  v65 = (v63 + v43[6]);
  v66 = v99;
  *v65 = v98;
  v65[1] = v66;
  *(v63 + v43[7]) = v40;
  v57 = v63;
  (*(*(v43 - 1) + 56))(v63, 0, 1, v43);

LABEL_21:
  type metadata accessor for HomeDeviceEntity(0);
  v67 = *(v43 - 1);
  if ((*(v67 + 48))(v57, 1, v43) == 1)
  {
    sub_22953EAE4(v57, &qword_27D87D930, &qword_22A579018);
    sub_22A4DDBFC();
    v68 = v5;
    v69 = sub_22A4DD05C();
    v70 = sub_22A4DDCEC();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 138412290;
      *(v71 + 4) = v68;
      *v72 = v68;
      v73 = v68;
      _os_log_impl(&dword_229538000, v69, v70, "Unable to create HomeDeviceEntity for %@", v71, 0xCu);
      sub_22953EAE4(v72, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v72, -1, -1);
      MEMORY[0x22AAD4E50](v71, -1, -1);
    }

    (*(v107 + 8))(v104, v106);
    v74 = 1;
  }

  else
  {
    sub_22957A0B4(v57, v108, type metadata accessor for HomeDeviceEntity);
    v74 = 0;
  }

  return (*(v67 + 56))(v108, v74, 1, v43);
}

uint64_t sub_2295BDA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v5 = v4;
  v88 = a1;
  v89 = a2;
  v98 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_22A4DD07C();
  v96 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v95 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v85[0] = v85 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = v85 - v12;
  v14 = sub_22A4DB7DC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v85 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v85 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D930, &qword_22A579018);
  MEMORY[0x28223BE20](v23 - 8);
  v94 = v85 - v24;
  v85[1] = *MEMORY[0x277CCE8B8];
  v97 = sub_22A4DD5EC();
  v26 = v25;
  v27 = [v5 uniqueIdentifier];
  v93 = v22;
  v28 = v20;
  sub_22A4DB79C();

  v29 = [a3 spiClientIdentifier];
  sub_22A4DB79C();

  v92 = v5;
  v30 = [v5 urlString];
  if (v30)
  {
    v31 = v30;
    v86 = sub_22A4DD5EC();
    v33 = v32;
  }

  else
  {
    v86 = 0;
    v33 = 0;
  }

  v34 = v26;
  v35 = v97;
  if (qword_27D87B8D8 != -1)
  {
    swift_once();
  }

  v36 = qword_27D8AB668;
  if (!*(qword_27D8AB668 + 16) || (v37 = sub_229543DBC(v35, v26), (v38 & 1) == 0))
  {

    sub_22A4DD5EC();
    v42 = type metadata accessor for HomeDeviceEntity(0);
    sub_2295BED30();
    sub_22A4DD06C();

    v43 = sub_22A4DD05C();
    v44 = sub_22A4DDCEC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v90 = v7;
      v47 = v46;
      v99 = v46;
      *v45 = 136315138;
      v48 = sub_2295A3E30(v97, v34, &v99);
      v97 = v28;
      v49 = v48;

      *(v45 + 4) = v49;
      _os_log_impl(&dword_229538000, v43, v44, "Unable to map accessory category %s to a device type.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      v50 = v47;
      v7 = v90;
      MEMORY[0x22AAD4E50](v50, -1, -1);
      MEMORY[0x22AAD4E50](v45, -1, -1);

      (*(v96 + 8))(v13, v7);
      v51 = *(v15 + 8);
      v51(v97, v14);
LABEL_16:
      v51(v93, v14);
      v52 = v94;
      (*(*(v42 - 1) + 56))(v94, 1, 1, v42);
      goto LABEL_20;
    }

    (*(v96 + 8))(v13, v7);
LABEL_15:
    v51 = *(v15 + 8);
    v51(v28, v14);
    goto LABEL_16;
  }

  v90 = v7;
  v39 = *(*(v36 + 56) + v37);
  if (v35 != sub_22A4DD5EC() || v26 != v40)
  {
    v53 = sub_22A4DE60C();

    if (v53)
    {
      v41 = &unk_283CDA4E8;
      goto LABEL_19;
    }

    if (v35 == sub_22A4DD5EC() && v26 == v71)
    {
      v41 = &unk_283CDA510;
      goto LABEL_11;
    }

    v72 = sub_22A4DE60C();

    if (v72)
    {
      v41 = &unk_283CDA510;
      goto LABEL_19;
    }

    if (v35 == sub_22A4DD5EC() && v26 == v73)
    {
LABEL_33:
      v41 = &unk_283CDA538;
      goto LABEL_11;
    }

    v74 = sub_22A4DE60C();

    if (v74)
    {
      goto LABEL_35;
    }

    if (v35 == sub_22A4DD5EC() && v26 == v75)
    {
      goto LABEL_33;
    }

    v76 = sub_22A4DE60C();

    if (v76)
    {
LABEL_35:
      v41 = &unk_283CDA538;
      goto LABEL_19;
    }

    if (v35 == sub_22A4DD5EC() && v26 == v77)
    {
      v41 = &unk_283CDA560;
      goto LABEL_11;
    }

    v78 = sub_22A4DE60C();

    if (v78)
    {
      v41 = &unk_283CDA560;
      goto LABEL_19;
    }

    sub_22A4DD5EC();
    v42 = type metadata accessor for HomeDeviceEntity(0);
    sub_2295BED30();
    v79 = v85[0];
    sub_22A4DD06C();

    v80 = sub_22A4DD05C();
    v81 = sub_22A4DDCEC();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v99 = v83;
      *v82 = 136315138;
      v84 = sub_2295A3E30(v97, v34, &v99);

      *(v82 + 4) = v84;
      _os_log_impl(&dword_229538000, v80, v81, "Please add support for %s to HomeDeviceEntity.", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x22AAD4E50](v83, -1, -1);
      MEMORY[0x22AAD4E50](v82, -1, -1);
    }

    else
    {
    }

    v7 = v90;
    (*(v96 + 8))(v79, v90);
    goto LABEL_15;
  }

  v41 = &unk_283CDA4E8;
LABEL_11:

LABEL_19:

  sub_22965C1A0(v41);

  v54 = v87;
  v55 = v93;
  (*(v15 + 16))(v87, v93, v14);
  v56 = *(v15 + 8);
  v56(v28, v14);
  v56(v55, v14);
  v42 = type metadata accessor for HomeDeviceEntity(0);
  v52 = v94;
  v57 = &v94[v42[5]];
  *v57 = v86;
  v57[1] = v33;
  (*(v15 + 32))(v52, v54, v14);
  v58 = (v52 + v42[6]);
  v59 = v89;
  *v58 = v88;
  v58[1] = v59;
  *(v52 + v42[7]) = v39;
  (*(*(v42 - 1) + 56))(v52, 0, 1, v42);

  v7 = v90;
LABEL_20:
  type metadata accessor for HomeDeviceEntity(0);
  v60 = *(v42 - 1);
  if ((*(v60 + 48))(v52, 1, v42) == 1)
  {
    sub_22953EAE4(v52, &qword_27D87D930, &qword_22A579018);
    sub_22A4DDBFC();
    v61 = v92;
    v62 = sub_22A4DD05C();
    v63 = sub_22A4DDCEC();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = v7;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138412290;
      *(v65 + 4) = v61;
      *v66 = v61;
      v67 = v61;
      _os_log_impl(&dword_229538000, v62, v63, "Unable to create HomeDeviceEntity for %@", v65, 0xCu);
      sub_22953EAE4(v66, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v66, -1, -1);
      v68 = v65;
      v7 = v64;
      MEMORY[0x22AAD4E50](v68, -1, -1);
    }

    (*(v96 + 8))(v95, v7);
    v69 = 1;
  }

  else
  {
    sub_22957A0B4(v52, v98, type metadata accessor for HomeDeviceEntity);
    v69 = 0;
  }

  return (*(v60 + 56))(v98, v69, 1, v42);
}

uint64_t sub_2295BE544(id *a1, uint64_t a2)
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  sub_22A4DB79C();

  v8 = sub_22A4DB78C();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

char *sub_2295BE650()
{
  v1 = [v0 accessoryProfiles];
  if (v1)
  {
    v2 = v1;
    sub_229562F68(0, &qword_27D87D950, off_278665FF0);
    v3 = sub_22A4DD83C();

    if (v3 >> 62)
    {
LABEL_23:
      v4 = sub_22A4DE0EC();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v6 = MEMORY[0x277D84F90];
        v7 = &selRef_markChangedForMessage_triggerModel_;
        do
        {
          v8 = v5;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x22AAD13F0](v8, v3);
            }

            else
            {
              if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v9 = *(v3 + 8 * v8 + 32);
            }

            v10 = v9;
            v5 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            objc_opt_self();
            v11 = swift_dynamicCastObjCClass();
            if (v11)
            {
              break;
            }

            ++v8;
            if (v5 == v4)
            {
              goto LABEL_25;
            }
          }

          v12 = [v11 v7[310]];
          v13 = sub_22A4DD5EC();
          v19 = v14;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_22958A53C(0, *(v6 + 2) + 1, 1, v6);
          }

          v16 = *(v6 + 2);
          v15 = *(v6 + 3);
          if (v16 >= v15 >> 1)
          {
            v6 = sub_22958A53C((v15 > 1), v16 + 1, 1, v6);
          }

          *(v6 + 2) = v16 + 1;
          v17 = &v6[16 * v16];
          *(v17 + 4) = v13;
          *(v17 + 5) = v19;
          v7 = &selRef_markChangedForMessage_triggerModel_;
        }

        while (v5 != v4);
        goto LABEL_25;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v6 = MEMORY[0x277D84F90];
LABEL_25:

    return v6;
  }

  return MEMORY[0x277D84F90];
}

id sub_2295BE854(void *a1, void *a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  result = [a2 mediaGroupsAggregateConsumer];
  if (result)
  {
    v15 = result;
    v16 = [a1 audioGroupIdentifier];
    if (v16)
    {
      v17 = v16;
      sub_22A4DB79C();

      (*(v5 + 32))(v13, v11, v4);
      v18 = [a1 parentIdentifier];
      sub_22A4DB79C();

      LOBYTE(v18) = sub_22A4DB78C();
      v19 = *(v5 + 8);
      v19(v8, v4);
      if ((v18 & 1) == 0)
      {
        v20 = sub_22A4DB77C();
        v21 = [v15 groupWithIdentifier_];

        if (v21)
        {
          v22 = sub_2295BEB54(v21, a2);

          v19(v13, v4);
          return v22;
        }

        v23 = sub_22A4DB77C();
        v24 = [v15 destinationControllerDataWithIdentifier_];

        if (v24)
        {
          v25 = [v24 identifier];
          sub_22A4DB79C();

          v26 = sub_22A4DB76C();
          v19(v8, v4);
          v19(v13, v4);
          return v26;
        }
      }

      v19(v13, v4);
    }

    return 0;
  }

  return result;
}

uint64_t sub_2295BEB54(void *a1, void *a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 mediaGroupsAggregateConsumer];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  v10 = [a1 identifier];
  sub_22A4DB79C();

  v11 = sub_22A4DB77C();
  (*(v5 + 8))(v7, v4);
  v12 = [v9 destinationWithParentIdentifier_];

  if (!v12)
  {

LABEL_6:
    v16 = [a1 identifier];
    sub_22A4DB79C();

    v13 = sub_22A4DB76C();
    (*(v5 + 8))(v7, v4);
    return v13;
  }

  v13 = sub_2295BE854(v12, a2);
  v15 = v14;

  if (!v15)
  {
    goto LABEL_6;
  }

  return v13;
}

uint64_t sub_2295BED30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D928, &unk_22A579008);
  v0 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_2295BEDA8()
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295BEFD0(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295BEE30(uint64_t a1)
{
  sub_22A4DB7DC();
  sub_2295BEFD0(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_22A4DD4FC();
}

uint64_t sub_2295BEEB4(uint64_t a1)
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295BEFD0(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t type metadata accessor for HomeDeviceEntity(uint64_t a1)
{
  result = qword_281403610;
  if (!qword_281403610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2295BEFD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2295BF018()
{
  v1 = v0;
  v72[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for HomeDeviceEntity(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v69 - v6;
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v69 - v13;
  if (qword_27D87B8E8 != -1)
  {
    swift_once();
  }

  v15 = qword_27D8AB678;
  if (!*(qword_27D8AB678 + 16) || (v16 = sub_2296DBDF0(*(v1 + *(v2 + 28))), (v17 & 1) == 0))
  {
    sub_22A4DD5EC();
    sub_2295BED30();
    sub_22A4DD06C();
    sub_22959E67C(v1, v7);
    v36 = sub_22A4DD05C();
    v37 = sub_22A4DDCEC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v72[0] = v39;
      *v38 = 136315138;
      v40 = sub_2295B9A4C();
      v42 = v41;
      sub_22959E6E0(v7);
      v43 = sub_2295A3E30(v40, v42, v72);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_229538000, v36, v37, "Failed to create CCHomeService for %s as there is no cascade device type for it", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AAD4E50](v39, -1, -1);
      MEMORY[0x22AAD4E50](v38, -1, -1);
    }

    else
    {

      sub_22959E6E0(v7);
    }

    (*(v9 + 8))(v14, v8);
    return 0;
  }

  v18 = *(*(v15 + 56) + 4 * v16);
  v19 = objc_allocWithZone(MEMORY[0x277D21000]);
  v20 = sub_22A4DD5AC();
  v72[0] = 0;
  v21 = [v19 initWithName:v20 deviceType:v18 error:v72];

  v22 = v72[0];
  if (!v21)
  {
    v45 = v72[0];
    v46 = sub_22A4DB3EC();

    swift_willThrow();
    goto LABEL_15;
  }

  v23 = objc_allocWithZone(MEMORY[0x277D20FE0]);
  v72[0] = 0;
  v24 = v21;
  v25 = v22;
  v26 = [v23 initWithEntity:v24 entityType:4 error:v72];
  if (!v26)
  {
    v47 = v72[0];
    v46 = sub_22A4DB3EC();

    swift_willThrow();
    goto LABEL_15;
  }

  v70 = v26;
  v71 = v9;
  v27 = v72[0];

  v28 = sub_22A4DB76C();
  v69 = v24;
  v29 = v28;
  v31 = v30;
  v32 = (v1 + *(v2 + 20));
  v33 = *v32;
  v34 = v32[1];
  v35 = objc_allocWithZone(MEMORY[0x277D20FE8]);

  v61 = sub_2295C3654(v29, v31, v33, v34);
  v62 = v69;
  v63 = objc_allocWithZone(MEMORY[0x277CF94C8]);
  v72[0] = 0;
  v64 = v70;
  v65 = [v63 initWithContent:v70 metaContent:v61 error:v72];
  v66 = v72[0];
  if (!v65)
  {
    v67 = v66;
    v68 = v64;
    v46 = sub_22A4DB3EC();

    swift_willThrow();
    v9 = v71;
LABEL_15:
    sub_22A4DD5EC();
    sub_2295BED30();
    sub_22A4DD06C();
    sub_22959E67C(v1, v5);
    v48 = v46;
    v49 = sub_22A4DD05C();
    v50 = sub_22A4DDCEC();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v71 = v9;
      v53 = v52;
      v54 = swift_slowAlloc();
      v72[0] = v54;
      *v51 = 136315394;
      v55 = sub_2295B9A4C();
      v70 = v8;
      v57 = v56;
      sub_22959E6E0(v5);
      v58 = sub_2295A3E30(v55, v57, v72);

      *(v51 + 4) = v58;
      *(v51 + 12) = 2112;
      v59 = v46;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 14) = v60;
      *v53 = v60;
      _os_log_impl(&dword_229538000, v49, v50, "Failed to create CCHomeService for %s: %@", v51, 0x16u);
      sub_22953EAE4(v53, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v53, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x22AAD4E50](v54, -1, -1);
      MEMORY[0x22AAD4E50](v51, -1, -1);

      (*(v71 + 8))(v12, v70);
    }

    else
    {

      sub_22959E6E0(v5);
      (*(v9 + 8))(v12, v8);
    }

    return 0;
  }

  return v65;
}

uint64_t sub_2295BF710(void *a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = [a1 destinationIdentifier];
  if (v9)
  {
    v10 = v9;
    sub_22A4DB79C();

    (*(v3 + 32))(v8, v5, v2);
    (*(v3 + 56))(v8, 0, 1, v2);
    sub_22953EAE4(v8, &unk_27D87D2A0, &unk_22A578BD0);
    v11 = [a1 identifier];
    sub_22A4DB79C();

    v12 = sub_22A4DB76C();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v3 + 56))(v8, 1, 1, v2);
    sub_22953EAE4(v8, &unk_27D87D2A0, &unk_22A578BD0);
    return 0;
  }

  return v12;
}

uint64_t sub_2295BF928(uint64_t a1, _BYTE *a2, void *a3)
{
  v4 = v3;
  v108 = a1;
  v109 = a2;
  ObjectType = swift_getObjectType();
  v7 = sub_22A4DD07C();
  v116 = *(v7 - 8);
  v117 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v111 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v106 = &v101[-v11];
  MEMORY[0x28223BE20](v10);
  v13 = &v101[-v12];
  v14 = sub_22A4DB7DC();
  v112 = *(v14 - 8);
  v113 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v107 = &v101[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v101[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v101[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D930, &qword_22A579018);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v101[-v23];
  v25 = type metadata accessor for HomeDeviceEntity(0);
  v114 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v110 = &v101[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = [v3 audioDestination];
  if (v27)
  {
    v28 = v27;
    sub_2295BE854(v27, a3);
  }

  else
  {
    v29 = [v3 audioDestinationControllerData];
    if (!v29)
    {
      goto LABEL_6;
    }

    v28 = v29;
    sub_2295BF710(v29);
  }

LABEL_6:
  v118 = v25;
  v115 = v24;
  v30 = [v3 category];
  v31 = [v30 categoryType];

  v32 = sub_22A4DD5EC();
  v34 = v33;

  v35 = [v4 spiClientIdentifier];
  sub_22A4DB79C();

  v36 = [v4 uuid];
  sub_22A4DB79C();

  v37 = [v4 urlString];
  if (v37)
  {
    v38 = v37;
    v39 = sub_22A4DD5EC();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  sub_2295BE650();

  if (qword_27D87B8D8 != -1)
  {
    swift_once();
  }

  v42 = qword_27D8AB668;
  if (!*(qword_27D8AB668 + 16) || (v43 = sub_229543DBC(v32, v34), (v44 & 1) == 0))
  {

    sub_22A4DD5EC();
    sub_2295BED30();
    sub_22A4DD06C();

    v51 = sub_22A4DD05C();
    v52 = sub_22A4DDCEC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v109 = v21;
      v55 = v54;
      v119 = v54;
      *v53 = 136315138;
      v56 = sub_2295A3E30(v32, v34, &v119);

      *(v53 + 4) = v56;
      _os_log_impl(&dword_229538000, v51, v52, "Unable to map accessory category %s to a device type.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      v58 = v116;
      v57 = v117;
      MEMORY[0x22AAD4E50](v55, -1, -1);
      MEMORY[0x22AAD4E50](v53, -1, -1);

      (*(v58 + 8))(v13, v57);
      v59 = v113;
      v60 = *(v112 + 8);
      v60(v19, v113);
      v60(v109, v59);
    }

    else
    {

      (*(v116 + 8))(v13, v117);
      v61 = v113;
      v62 = *(v112 + 8);
      v62(v19, v113);
      v62(v21, v61);
    }

    goto LABEL_20;
  }

  v105 = ObjectType;
  v102 = *(*(v42 + 56) + v43);
  v45 = sub_22A4DD5EC();
  v103 = v39;
  v104 = v19;
  if (v32 != v45 || v34 != v46)
  {
    v64 = v21;
    v65 = sub_22A4DE60C();

    if (v65)
    {
      v47 = v64;
      v48 = &unk_283CDA5D8;
LABEL_23:
      v49 = v115;
      v50 = v118;
      goto LABEL_24;
    }

    if (v32 == sub_22A4DD5EC() && v34 == v84)
    {
      v47 = v64;
      v48 = &unk_283CDA600;
      goto LABEL_16;
    }

    v85 = sub_22A4DE60C();

    if (v85)
    {
      v47 = v64;
      v48 = &unk_283CDA600;
      goto LABEL_23;
    }

    if (v32 == sub_22A4DD5EC() && v34 == v86)
    {
LABEL_37:
      v47 = v64;
      v48 = &unk_283CDA628;
      goto LABEL_16;
    }

    v87 = sub_22A4DE60C();

    if (v87)
    {
      goto LABEL_39;
    }

    if (v32 == sub_22A4DD5EC() && v34 == v88)
    {
      goto LABEL_37;
    }

    v89 = sub_22A4DE60C();

    if (v89)
    {
LABEL_39:
      v47 = v64;
      v48 = &unk_283CDA628;
      goto LABEL_23;
    }

    if (v32 == sub_22A4DD5EC() && v34 == v90)
    {
      v47 = v64;
      v48 = &unk_283CDA650;
      goto LABEL_16;
    }

    v91 = sub_22A4DE60C();

    v92 = v34;
    if (v91)
    {
      v47 = v64;
      v48 = &unk_283CDA650;
      goto LABEL_23;
    }

    sub_22A4DD5EC();
    sub_2295BED30();
    v93 = v106;
    sub_22A4DD06C();

    v94 = sub_22A4DD05C();
    v95 = sub_22A4DDCEC();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v119 = v97;
      *v96 = 136315138;
      v98 = sub_2295A3E30(v32, v92, &v119);

      *(v96 + 4) = v98;
      _os_log_impl(&dword_229538000, v94, v95, "Please add support for %s to HomeDeviceEntity.", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x22AAD4E50](v97, -1, -1);
      MEMORY[0x22AAD4E50](v96, -1, -1);
    }

    else
    {
    }

    (*(v116 + 8))(v93, v117);
    v99 = v113;
    v100 = *(v112 + 8);
    v100(v19, v113);
    v100(v64, v99);
LABEL_20:
    v63 = v114;
    v49 = v115;
    v50 = v118;
    (*(v114 + 56))(v115, 1, 1, v118);
    goto LABEL_25;
  }

  v47 = v21;
  v48 = &unk_283CDA5D8;
LABEL_16:
  v49 = v115;
  v50 = v118;

LABEL_24:

  sub_22965C1A0(v48);

  v67 = v112;
  v66 = v113;
  v68 = v107;
  (*(v112 + 16))(v107, v47, v113);
  v69 = *(v67 + 8);
  v69(v104, v66);
  v69(v47, v66);
  v70 = (v49 + v50[5]);
  *v70 = v103;
  v70[1] = v41;
  (*(v67 + 32))(v49, v68, v66);
  v71 = (v49 + v50[6]);
  v72 = v109;
  *v71 = v108;
  v71[1] = v72;
  *(v49 + v50[7]) = v102;
  v63 = v114;
  (*(v114 + 56))(v49, 0, 1, v50);

LABEL_25:
  if ((*(v63 + 48))(v49, 1, v50) == 1)
  {
    sub_22953EAE4(v49, &qword_27D87D930, &qword_22A579018);
    sub_22A4DDBFC();
    v73 = v4;
    v74 = sub_22A4DD05C();
    v75 = sub_22A4DDCEC();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v76 = 138412290;
      *(v76 + 4) = v73;
      *v77 = v73;
      v78 = v73;
      _os_log_impl(&dword_229538000, v74, v75, "Unable to create HomeDeviceEntity for %@", v76, 0xCu);
      sub_22953EAE4(v77, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v77, -1, -1);
      MEMORY[0x22AAD4E50](v76, -1, -1);
    }

    (*(v116 + 8))(v111, v117);
    return MEMORY[0x277D84FA0];
  }

  else
  {
    v80 = v110;
    sub_22957A0B4(v49, v110, type metadata accessor for HomeDeviceEntity);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D460, &unk_22A578600);
    v81 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_22A576180;
    sub_22959E67C(v80, v82 + v81);
    v83 = sub_22965C354(v82);
    swift_setDeallocating();
    sub_22959E6E0(v82 + v81);
    swift_deallocClassInstance();
    sub_22959E6E0(v80);
    return v83;
  }
}

uint64_t sub_2295C05F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = [v2 matterAdapter];
  v14 = [v13 supportsRVC];

  if (!v14)
  {
    return MEMORY[0x277D84FA0];
  }

  v31 = a1;
  v32 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D460, &unk_22A578600);
  v15 = type metadata accessor for HomeDeviceEntity(0);
  v16 = (*(*(v15 - 1) + 80) + 32) & ~*(*(v15 - 1) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22A576180;
  v18 = v17 + v16;
  v19 = [v3 uuid];
  sub_22A4DB79C();

  v20 = [v3 spiClientIdentifier];
  sub_22A4DB79C();

  sub_22965C1A0(&unk_283CDA678);

  v21 = [v3 urlString];
  if (v21)
  {
    v22 = v21;
    v23 = sub_22A4DD5EC();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  (*(v7 + 8))(v12, v6);
  v27 = (v18 + v15[5]);
  *v27 = v23;
  v27[1] = v25;
  (*(v7 + 32))(v18, v10, v6);
  v28 = (v18 + v15[6]);
  v29 = v32;
  *v28 = v31;
  v28[1] = v29;
  *(v18 + v15[7]) = 24;

  v30 = sub_22965C354(v17);
  swift_setDeallocating();
  sub_22959E6E0(v18);
  swift_deallocClassInstance();
  return v30;
}

uint64_t sub_2295C08E4(void *a1, void *a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v45 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  v14 = [a1 name];
  v15 = sub_22A4DD5EC();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    sub_22A4DD5EC();
    type metadata accessor for HomeDeviceEntity(0);
    sub_2295BED30();
    sub_22A4DD06C();
    v23 = a1;
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCEC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&dword_229538000, v24, v25, "No name found for accessory or it is empty: %@", v26, 0xCu);
      sub_22953EAE4(v27, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v26, -1, -1);
    }

    (*(v5 + 8))(v13, v4);
    return MEMORY[0x277D84FA0];
  }

  if (!a2)
  {

    sub_22A4DD5EC();
    type metadata accessor for HomeDeviceEntity(0);
    sub_2295BED30();
    sub_22A4DD06C();
    v29 = a1;
    v30 = sub_22A4DD05C();
    v31 = sub_22A4DDCEC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v29;
      *v33 = v29;
      v34 = v29;
      _os_log_impl(&dword_229538000, v30, v31, "Accessory does not belong to a home: %@", v32, 0xCu);
      sub_22953EAE4(v33, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v33, -1, -1);
      MEMORY[0x22AAD4E50](v32, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return MEMORY[0x277D84FA0];
  }

  v19 = a2;
  v20 = [a1 room];
  v46 = MEMORY[0x277D84FA0];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v21 = a1;
    v22 = sub_2295B9BDC(v15, v17, v19, v20);
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v21 = a1;
      v22 = sub_2295BAC18(v15, v17);
    }

    else
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v37 = a1;
          v38 = sub_2295C05F0(v15, v17);

          sub_2295948C4(v38);
        }

        else
        {

          sub_22A4DD5EC();
          type metadata accessor for HomeDeviceEntity(0);
          sub_2295BED30();
          sub_22A4DD06C();
          v39 = a1;
          v40 = sub_22A4DD05C();
          v41 = sub_22A4DDCEC();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            *v42 = 138412290;
            *(v42 + 4) = v39;
            *v43 = v39;
            v44 = v39;
            _os_log_impl(&dword_229538000, v40, v41, "Unknown type of accessory found: %@", v42, 0xCu);
            sub_22953EAE4(v43, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v43, -1, -1);
            MEMORY[0x22AAD4E50](v42, -1, -1);
          }

          (*(v5 + 8))(v11, v4);
        }

        return v46;
      }

      v21 = a1;
      v22 = sub_2295BF928(v15, v17, v19);
    }
  }

  v36 = v22;

  sub_2295948C4(v36);

  return v46;
}

unint64_t sub_2295C0F64()
{
  result = qword_27D87D940;
  if (!qword_27D87D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D940);
  }

  return result;
}

unint64_t sub_2295C0FB8()
{
  result = qword_27D87D948;
  if (!qword_27D87D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D948);
  }

  return result;
}

void sub_2295C1034(uint64_t a1)
{
  sub_22A4DB7DC();
  if (v1 <= 0x3F)
  {
    sub_2295C10D0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2295C10D0()
{
  if (!qword_281401CE0)
  {
    v0 = sub_22A4DDF9C();
    if (!v1)
    {
      atomic_store(v0, &qword_281401CE0);
    }
  }
}

uint64_t sub_2295C1120()
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295C153C(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295C11BC(uint64_t a1)
{
  sub_22A4DB7DC();
  sub_2295C153C(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_22A4DD4FC();
}

uint64_t sub_2295C123C(uint64_t a1)
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295C153C(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295C12E4()
{
  sub_22A4DE1FC();
  v1 = type metadata accessor for HomeEntity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D960, &qword_22A579120);
  v2 = sub_22A4DBA6C();

  MEMORY[0x22AAD08C0](0x203A6469202CLL, 0xE600000000000000);
  sub_22A4DB7DC();
  sub_2295C153C(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v3 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v3);

  MEMORY[0x22AAD08C0](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x22AAD08C0](*(v0 + *(v1 + 24)), *(v0 + *(v1 + 24) + 8));
  return v2;
}

uint64_t sub_2295C142C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D960, &qword_22A579120);
  v0 = sub_22A4DBA6C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t type metadata accessor for HomeEntity(uint64_t a1)
{
  result = qword_2814032A8;
  if (!qword_2814032A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2295C153C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2295C1584()
{
  v1 = v0;
  v48[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for HomeEntity(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22A4DD07C();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277D20FD0]);
  v9 = sub_22A4DD5AC();
  v48[0] = 0;
  v10 = [v8 initWithName:v9 error:v48];

  v11 = v48[0];
  v47 = v7;
  if (v10)
  {
    v12 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v48[0] = 0;
    v13 = v10;
    v14 = v11;
    v15 = [v12 initWithEntity:v13 entityType:1 error:v48];
    if (v15)
    {
      v16 = v15;
      v45 = v5;
      v17 = v48[0];

      v18 = sub_22A4DB76C();
      v20 = v19;
      v22 = *v1;
      v21 = v1[1];
      v23 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v40 = sub_2295C3654(v18, v20, v22, v21);
      v41 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v48[0] = 0;
      v42 = [v41 initWithContent:v16 metaContent:v40 error:v48];
      v43 = v48[0];
      if (v42)
      {

        return v42;
      }

      v44 = v43;
      v25 = sub_22A4DB3EC();

      swift_willThrow();
      v5 = v45;
    }

    else
    {
      v26 = v48[0];
      v25 = sub_22A4DB3EC();

      swift_willThrow();
    }

    v7 = v47;
  }

  else
  {
    v24 = v48[0];
    v25 = sub_22A4DB3EC();

    swift_willThrow();
  }

  sub_22A4DD5EC();
  sub_2295C142C();
  sub_22A4DD06C();
  sub_2295C1A64(v1, v4);
  v27 = v25;
  v28 = sub_22A4DD05C();
  v29 = sub_22A4DDCEC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v48[0] = v32;
    *v30 = 136315394;
    v33 = sub_2295C12E4();
    v35 = v34;
    sub_2295C1AC8(v4);
    v36 = sub_2295A3E30(v33, v35, v48);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2112;
    v37 = v25;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 14) = v38;
    *v31 = v38;
    _os_log_impl(&dword_229538000, v28, v29, "Failed to create CCHome for %s: %@", v30, 0x16u);
    sub_2295A1C40(v31);
    MEMORY[0x22AAD4E50](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AAD4E50](v32, -1, -1);
    MEMORY[0x22AAD4E50](v30, -1, -1);

    (*(v46 + 8))(v47, v5);
  }

  else
  {

    sub_2295C1AC8(v4);
    (*(v46 + 8))(v7, v5);
  }

  return 0;
}

uint64_t sub_2295C1A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295C1AC8(uint64_t a1)
{
  v2 = type metadata accessor for HomeEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2295C1B4C(uint64_t a1)
{
  sub_2295C10D0();
  if (v1 <= 0x3F)
  {
    sub_22A4DB7DC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for HomeGroupEntity(uint64_t a1)
{
  result = qword_2814036A8;
  if (!qword_2814036A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2295C1C6C(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [a1 urlString];
  if (v6)
  {
    v7 = v6;
    v8 = sub_22A4DD5EC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a3 = v8;
  a3[1] = v10;
  v11 = [a1 spiClientIdentifier];
  v12 = type metadata accessor for HomeGroupEntity(0);
  sub_22A4DB79C();

  v13 = [a1 name];
  v14 = sub_22A4DD5EC();
  v16 = v15;

  v17 = (a3 + *(v12 + 24));
  *v17 = v14;
  v17[1] = v16;
}

uint64_t sub_2295C1D64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 home];
  if (v8)
  {
    sub_2295C1C6C(a1, v8, a2);
    v9 = type metadata accessor for HomeGroupEntity(0);
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 0, 1, v9);
  }

  else
  {
    sub_22A4DD5EC();
    v12 = type metadata accessor for HomeGroupEntity(0);
    sub_2295C215C();
    sub_22A4DD06C();
    v13 = a1;
    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCEC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_229538000, v14, v15, "serviceGroup %@ does not have a home", v16, 0xCu);
      sub_2295A1C40(v17);
      MEMORY[0x22AAD4E50](v17, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

uint64_t sub_2295C2014()
{
  sub_22A4DE1FC();
  v1 = type metadata accessor for HomeGroupEntity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D968, &qword_22A579200);
  v2 = sub_22A4DBA6C();

  MEMORY[0x22AAD08C0](0x203A6469202CLL, 0xE600000000000000);
  sub_22A4DB7DC();
  sub_2295C238C(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v3 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v3);

  MEMORY[0x22AAD08C0](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x22AAD08C0](*(v0 + *(v1 + 24)), *(v0 + *(v1 + 24) + 8));
  return v2;
}

uint64_t sub_2295C215C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D968, &qword_22A579200);
  v0 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_2295C21D8()
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295C238C(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295C2274(uint64_t a1)
{
  sub_22A4DB7DC();
  sub_2295C238C(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_22A4DD4FC();
}

uint64_t sub_2295C22F4(uint64_t a1)
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295C238C(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295C238C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2295C23D4()
{
  v1 = v0;
  v48[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for HomeGroupEntity(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22A4DD07C();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277D21028]);
  v9 = sub_22A4DD5AC();
  v48[0] = 0;
  v10 = [v8 initWithName:v9 error:v48];

  v11 = v48[0];
  v47 = v7;
  if (v10)
  {
    v12 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v48[0] = 0;
    v13 = v10;
    v14 = v11;
    v15 = [v12 initWithEntity:v13 entityType:5 error:v48];
    if (v15)
    {
      v16 = v15;
      v45 = v5;
      v17 = v48[0];

      v18 = sub_22A4DB76C();
      v20 = v19;
      v22 = *v1;
      v21 = v1[1];
      v23 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v40 = sub_2295C3654(v18, v20, v22, v21);
      v41 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v48[0] = 0;
      v42 = [v41 initWithContent:v16 metaContent:v40 error:v48];
      v43 = v48[0];
      if (v42)
      {

        return v42;
      }

      v44 = v43;
      v25 = sub_22A4DB3EC();

      swift_willThrow();
      v5 = v45;
    }

    else
    {
      v26 = v48[0];
      v25 = sub_22A4DB3EC();

      swift_willThrow();
    }

    v7 = v47;
  }

  else
  {
    v24 = v48[0];
    v25 = sub_22A4DB3EC();

    swift_willThrow();
  }

  sub_22A4DD5EC();
  sub_2295C215C();
  sub_22A4DD06C();
  sub_2295C28B4(v1, v4);
  v27 = v25;
  v28 = sub_22A4DD05C();
  v29 = sub_22A4DDCEC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v48[0] = v32;
    *v30 = 136315394;
    v33 = sub_2295C2014();
    v35 = v34;
    sub_2295C2918(v4);
    v36 = sub_2295A3E30(v33, v35, v48);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2112;
    v37 = v25;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 14) = v38;
    *v31 = v38;
    _os_log_impl(&dword_229538000, v28, v29, "Failed to create CCHomeRoom for %s: %@", v30, 0x16u);
    sub_2295A1C40(v31);
    MEMORY[0x22AAD4E50](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AAD4E50](v32, -1, -1);
    MEMORY[0x22AAD4E50](v30, -1, -1);

    (*(v46 + 8))(v47, v5);
  }

  else
  {

    sub_2295C2918(v4);
    (*(v46 + 8))(v7, v5);
  }

  return 0;
}

uint64_t sub_2295C28B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeGroupEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295C2918(uint64_t a1)
{
  v2 = type metadata accessor for HomeGroupEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2295C299C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 urlString];
  if (v6)
  {
    v7 = v6;
    v8 = sub_22A4DD5EC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = type metadata accessor for RoomEntity(0);
  v12 = (a3 + *(v11 + 20));
  *v12 = v8;
  v12[1] = v10;
  v13 = [a1 spiClientIdentifier];
  sub_22A4DB79C();

  v14 = [a1 name];
  v15 = sub_22A4DD5EC();
  v17 = v16;

  v18 = (a3 + *(v11 + 24));
  *v18 = v15;
  v18[1] = v17;
}

uint64_t sub_2295C2A94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 home];
  if (v8)
  {
    sub_2295C299C(a1, v8, a2);
    v9 = type metadata accessor for RoomEntity(0);
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 0, 1, v9);
  }

  else
  {
    sub_22A4DD5EC();
    v12 = type metadata accessor for RoomEntity(0);
    sub_2295C2E88();
    sub_22A4DD06C();
    v13 = a1;
    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCEC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_229538000, v14, v15, "room %@ has no home", v16, 0xCu);
      sub_2295A1C40(v17);
      MEMORY[0x22AAD4E50](v17, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

uint64_t sub_2295C2D44()
{
  sub_22A4DE1FC();
  v1 = type metadata accessor for RoomEntity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D978, &qword_22A5792E0);
  v2 = sub_22A4DBA6C();

  MEMORY[0x22AAD08C0](0x203A6469202CLL, 0xE600000000000000);
  sub_22A4DB7DC();
  sub_2295C3128(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v3 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v3);

  MEMORY[0x22AAD08C0](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x22AAD08C0](*(v0 + *(v1 + 24)), *(v0 + *(v1 + 24) + 8));
  return v2;
}

uint64_t sub_2295C2E88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D978, &qword_22A5792E0);
  v0 = sub_22A4DBA6C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_2295C2F04()
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295C3128(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295C2F8C(uint64_t a1)
{
  sub_22A4DB7DC();
  sub_2295C3128(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_22A4DD4FC();
}

uint64_t sub_2295C3010(uint64_t a1)
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295C3128(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t type metadata accessor for RoomEntity(uint64_t a1)
{
  result = qword_281403050;
  if (!qword_281403050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2295C3128(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2295C3170()
{
  v1 = v0;
  v49[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for RoomEntity(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22A4DD07C();
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277D20FF0]);
  v9 = sub_22A4DD5AC();
  v49[0] = 0;
  v10 = [v8 initWithName:v9 error:v49];

  v11 = v49[0];
  v48 = v7;
  if (v10)
  {
    v12 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v49[0] = 0;
    v13 = v10;
    v14 = v11;
    v15 = [v12 initWithEntity:v13 entityType:3 error:v49];
    if (v15)
    {
      v16 = v15;
      v46 = v5;
      v17 = v49[0];

      v18 = sub_22A4DB76C();
      v20 = v19;
      v21 = (v1 + *(v2 + 20));
      v23 = *v21;
      v22 = v21[1];
      v24 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v41 = sub_2295C3654(v18, v20, v23, v22);
      v42 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v49[0] = 0;
      v43 = [v42 initWithContent:v16 metaContent:v41 error:v49];
      v44 = v49[0];
      if (v43)
      {

        return v43;
      }

      v45 = v44;
      v26 = sub_22A4DB3EC();

      swift_willThrow();
      v5 = v46;
    }

    else
    {
      v27 = v49[0];
      v26 = sub_22A4DB3EC();

      swift_willThrow();
    }

    v7 = v48;
  }

  else
  {
    v25 = v49[0];
    v26 = sub_22A4DB3EC();

    swift_willThrow();
  }

  sub_22A4DD5EC();
  sub_2295C2E88();
  sub_22A4DD06C();
  sub_2295C375C(v1, v4);
  v28 = v26;
  v29 = sub_22A4DD05C();
  v30 = sub_22A4DDCEC();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v49[0] = v33;
    *v31 = 136315394;
    v34 = sub_2295C2D44();
    v36 = v35;
    sub_2295C37C0(v4);
    v37 = sub_2295A3E30(v34, v36, v49);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2112;
    v38 = v26;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 14) = v39;
    *v32 = v39;
    _os_log_impl(&dword_229538000, v29, v30, "Failed to create CCHomeRoom for %s: %@", v31, 0x16u);
    sub_2295A1C40(v32);
    MEMORY[0x22AAD4E50](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AAD4E50](v33, -1, -1);
    MEMORY[0x22AAD4E50](v31, -1, -1);

    (*(v47 + 8))(v48, v5);
  }

  else
  {

    sub_2295C37C0(v4);
    (*(v47 + 8))(v7, v5);
  }

  return 0;
}

id sub_2295C3654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = sub_22A4DD5AC();

  if (a4)
  {
    v7 = sub_22A4DD5AC();
  }

  else
  {
    v7 = 0;
  }

  v12[0] = 0;
  v8 = [v4 initWithSourceItemIdentifier:v6 assistantHomeKitIdentifier:v7 error:v12];

  if (v8)
  {
    v9 = v12[0];
  }

  else
  {
    v10 = v12[0];
    sub_22A4DB3EC();

    swift_willThrow();
  }

  return v8;
}

uint64_t sub_2295C375C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoomEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295C37C0(uint64_t a1)
{
  v2 = type metadata accessor for RoomEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2295C3844(uint64_t a1)
{
  sub_22A4DB7DC();
  if (v1 <= 0x3F)
  {
    sub_2295C10D0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2295C38D0(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [a1 urlString];
  if (v6)
  {
    v7 = v6;
    v8 = sub_22A4DD5EC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a3 = v8;
  a3[1] = v10;
  v11 = [a1 spiClientIdentifier];
  v12 = type metadata accessor for SceneEntity(0);
  sub_22A4DB79C();

  v13 = [a1 name];
  v14 = sub_22A4DD5EC();
  v16 = v15;

  v17 = (a3 + *(v12 + 24));
  *v17 = v14;
  v17[1] = v16;
}

uint64_t sub_2295C39C8()
{
  sub_22A4DE1FC();
  v1 = type metadata accessor for SceneEntity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D988, &qword_22A5793C0);
  v2 = sub_22A4DBA6C();

  MEMORY[0x22AAD08C0](0x203A6469202CLL, 0xE600000000000000);
  sub_22A4DB7DC();
  sub_2295C4084(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v3 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v3);

  MEMORY[0x22AAD08C0](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x22AAD08C0](*(v0 + *(v1 + 24)), *(v0 + *(v1 + 24) + 8));
  return v2;
}

uint64_t sub_2295C3B10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D988, &qword_22A5793C0);
  v0 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_2295C3B8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 home];
  if (v8)
  {
    sub_2295C38D0(a1, v8, a2);
    v9 = type metadata accessor for SceneEntity(0);
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 0, 1, v9);
  }

  else
  {
    sub_22A4DD5EC();
    v12 = type metadata accessor for SceneEntity(0);
    sub_2295C3B10();
    sub_22A4DD06C();
    v13 = a1;
    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCEC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_229538000, v14, v15, "Scene does not have valid home reference: %@", v16, 0xCu);
      sub_2295A1C40(v17);
      MEMORY[0x22AAD4E50](v17, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

uint64_t sub_2295C3E3C()
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295C4084(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295C3ED8(uint64_t a1)
{
  sub_22A4DB7DC();
  sub_2295C4084(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_22A4DD4FC();
}

uint64_t sub_2295C3F58(uint64_t a1)
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295C4084(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t type metadata accessor for SceneEntity(uint64_t a1)
{
  result = qword_281402DE8;
  if (!qword_281402DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2295C4084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2295C40CC()
{
  v1 = v0;
  v48[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for SceneEntity(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22A4DD07C();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277D20FF8]);
  v9 = sub_22A4DD5AC();
  v48[0] = 0;
  v10 = [v8 initWithName:v9 error:v48];

  v11 = v48[0];
  v47 = v7;
  if (v10)
  {
    v12 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v48[0] = 0;
    v13 = v10;
    v14 = v11;
    v15 = [v12 initWithEntity:v13 entityType:6 error:v48];
    if (v15)
    {
      v16 = v15;
      v45 = v5;
      v17 = v48[0];

      v18 = sub_22A4DB76C();
      v20 = v19;
      v22 = *v1;
      v21 = v1[1];
      v23 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v40 = sub_2295C3654(v18, v20, v22, v21);
      v41 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v48[0] = 0;
      v42 = [v41 initWithContent:v16 metaContent:v40 error:v48];
      v43 = v48[0];
      if (v42)
      {

        return v42;
      }

      v44 = v43;
      v25 = sub_22A4DB3EC();

      swift_willThrow();
      v5 = v45;
    }

    else
    {
      v26 = v48[0];
      v25 = sub_22A4DB3EC();

      swift_willThrow();
    }

    v7 = v47;
  }

  else
  {
    v24 = v48[0];
    v25 = sub_22A4DB3EC();

    swift_willThrow();
  }

  sub_22A4DD5EC();
  sub_2295C3B10();
  sub_22A4DD06C();
  sub_2295C45AC(v1, v4);
  v27 = v25;
  v28 = sub_22A4DD05C();
  v29 = sub_22A4DDCEC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v48[0] = v32;
    *v30 = 136315394;
    v33 = sub_2295C39C8();
    v35 = v34;
    sub_2295C4610(v4);
    v36 = sub_2295A3E30(v33, v35, v48);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2112;
    v37 = v25;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 14) = v38;
    *v31 = v38;
    _os_log_impl(&dword_229538000, v28, v29, "Failed to create CCHomeScene for %s: %@", v30, 0x16u);
    sub_2295A1C40(v31);
    MEMORY[0x22AAD4E50](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AAD4E50](v32, -1, -1);
    MEMORY[0x22AAD4E50](v30, -1, -1);

    (*(v46 + 8))(v47, v5);
  }

  else
  {

    sub_2295C4610(v4);
    (*(v46 + 8))(v7, v5);
  }

  return 0;
}

uint64_t sub_2295C45AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295C4610(uint64_t a1)
{
  v2 = type metadata accessor for SceneEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2295C4694()
{
  sub_22A4DE1FC();
  v1 = type metadata accessor for ZoneEntity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D990, &qword_22A5794A0);
  v2 = sub_22A4DBA6C();

  MEMORY[0x22AAD08C0](0x203A6469202CLL, 0xE600000000000000);
  sub_22A4DB7DC();
  sub_2295C4AA0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v3 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v3);

  MEMORY[0x22AAD08C0](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x22AAD08C0](*(v0 + *(v1 + 24)), *(v0 + *(v1 + 24) + 8));
  return v2;
}

uint64_t sub_2295C47DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D990, &qword_22A5794A0);
  v0 = sub_22A4DBA6C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_2295C4858()
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295C4AA0(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295C48F4(uint64_t a1)
{
  sub_22A4DB7DC();
  sub_2295C4AA0(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_22A4DD4FC();
}

uint64_t sub_2295C4974(uint64_t a1)
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295C4AA0(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t type metadata accessor for ZoneEntity(uint64_t a1)
{
  result = qword_281402FA8;
  if (!qword_281402FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2295C4AA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2295C4AE8()
{
  v1 = v0;
  v48[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for ZoneEntity(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22A4DD07C();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277D21038]);
  v9 = sub_22A4DD5AC();
  v48[0] = 0;
  v10 = [v8 initWithName:v9 error:v48];

  v11 = v48[0];
  v47 = v7;
  if (v10)
  {
    v12 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v48[0] = 0;
    v13 = v10;
    v14 = v11;
    v15 = [v12 initWithEntity:v13 entityType:2 error:v48];
    if (v15)
    {
      v16 = v15;
      v45 = v5;
      v17 = v48[0];

      v18 = sub_22A4DB76C();
      v20 = v19;
      v22 = *v1;
      v21 = v1[1];
      v23 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v40 = sub_2295C3654(v18, v20, v22, v21);
      v41 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v48[0] = 0;
      v42 = [v41 initWithContent:v16 metaContent:v40 error:v48];
      v43 = v48[0];
      if (v42)
      {

        return v42;
      }

      v44 = v43;
      v25 = sub_22A4DB3EC();

      swift_willThrow();
      v5 = v45;
    }

    else
    {
      v26 = v48[0];
      v25 = sub_22A4DB3EC();

      swift_willThrow();
    }

    v7 = v47;
  }

  else
  {
    v24 = v48[0];
    v25 = sub_22A4DB3EC();

    swift_willThrow();
  }

  sub_22A4DD5EC();
  sub_2295C47DC();
  sub_22A4DD06C();
  sub_2295C4FC8(v1, v4);
  v27 = v25;
  v28 = sub_22A4DD05C();
  v29 = sub_22A4DDCEC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v48[0] = v32;
    *v30 = 136315394;
    v33 = sub_2295C4694();
    v35 = v34;
    sub_2295C502C(v4);
    v36 = sub_2295A3E30(v33, v35, v48);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2112;
    v37 = v25;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 14) = v38;
    *v31 = v38;
    _os_log_impl(&dword_229538000, v28, v29, "Failed to create CCHomeZone for %s: %@", v30, 0x16u);
    sub_2295A1C40(v31);
    MEMORY[0x22AAD4E50](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AAD4E50](v32, -1, -1);
    MEMORY[0x22AAD4E50](v30, -1, -1);

    (*(v46 + 8))(v47, v5);
  }

  else
  {

    sub_2295C502C(v4);
    (*(v46 + 8))(v7, v5);
  }

  return 0;
}

uint64_t sub_2295C4FC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoneEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295C502C(uint64_t a1)
{
  v2 = type metadata accessor for ZoneEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2295C50B0(char a1)
{
  result = 0x7265776F70;
  switch(a1)
  {
    case 1:
      return 0x6669727550726961;
    case 2:
    case 13:
    case 39:
      return 0xD000000000000010;
    case 3:
      return 0x676E696772616863;
    case 4:
      return 0x5379726574746162;
    case 5:
    case 11:
    case 17:
    case 30:
    case 38:
      return 0xD000000000000012;
    case 6:
      return 0xD000000000000011;
    case 7:
      v4 = 1635020658;
      return v4 | 0x6E6F697400000000;
    case 8:
      return 0xD000000000000011;
    case 9:
      return 0x646F4D676E697773;
    case 10:
      return 0x65646F4D6E6166;
    case 12:
      return 0xD000000000000011;
    case 14:
      return 1801678700;
    case 15:
      return 0x6573696172;
    case 16:
      v4 = 1769172848;
      return v4 | 0x6E6F697400000000;
    case 18:
    case 29:
      return 0xD000000000000013;
    case 19:
      return 0x656E746867697262;
    case 20:
      return 0x726F6C6F63;
    case 21:
      return 0x4C6C61727574616ELL;
    case 22:
      return 0x696C617551726961;
    case 23:
      return 0x6E6544656E6F7A6FLL;
    case 24:
    case 33:
    case 34:
    case 43:
      return 0xD000000000000016;
    case 25:
    case 44:
      return 0xD000000000000015;
    case 26:
      v3 = 892489040;
      goto LABEL_42;
    case 27:
      v3 = 808537424;
LABEL_42:
      result = v3 | 0x736E654400000000;
      break;
    case 28:
    case 31:
    case 32:
      result = 0xD000000000000017;
      break;
    case 35:
      result = 0x6576654C6B616570;
      break;
    case 36:
      result = 0xD000000000000011;
      break;
    case 37:
      result = 0x657465446B61656CLL;
      break;
    case 40:
      result = 0x79746964696D7568;
      break;
    case 41:
      result = 0x74536E6F69746F6DLL;
      break;
    case 42:
      result = 0x746544656B6F6D73;
      break;
    case 45:
      result = 0x69666964696D7568;
      break;
    case 46:
      result = 0xD000000000000011;
      break;
    case 47:
      result = 0x6573556E69;
      break;
    case 48:
      result = 1886352499;
      break;
    case 49:
      result = 0x656D75736572;
      break;
    case 50:
      result = 0x6573756170;
      break;
    case 51:
      result = 0x676E696E61656C63;
      break;
    case 52:
      result = 0x7274536F65646976;
      break;
    case 53:
      result = 0x696C436F65646976;
      break;
    case 54:
      result = 0xD000000000000011;
      break;
    case 55:
      result = 0x4579616C70726961;
      break;
    case 56:
      result = 0x616964656DLL;
      break;
    case 57:
      result = 0x6D6F637265746E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2295C5640()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D998, &qword_22A5794E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22A5794D0;
  *(v0 + 32) = sub_22A4DD5EC();
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  *(v0 + 56) = sub_22A4DD5EC();
  *(v0 + 64) = v2;
  *(v0 + 72) = 2;
  *(v0 + 80) = sub_22A4DD5EC();
  *(v0 + 88) = v3;
  *(v0 + 96) = 1;
  *(v0 + 104) = sub_22A4DD5EC();
  *(v0 + 112) = v4;
  *(v0 + 120) = 3;
  *(v0 + 128) = sub_22A4DD5EC();
  *(v0 + 136) = v5;
  *(v0 + 144) = 4;
  *(v0 + 152) = sub_22A4DD5EC();
  *(v0 + 160) = v6;
  *(v0 + 168) = 4;
  *(v0 + 176) = sub_22A4DD5EC();
  *(v0 + 184) = v7;
  *(v0 + 192) = 5;
  *(v0 + 200) = sub_22A4DD5EC();
  *(v0 + 208) = v8;
  *(v0 + 216) = 6;
  *(v0 + 224) = sub_22A4DD5EC();
  *(v0 + 232) = v9;
  *(v0 + 240) = 7;
  *(v0 + 248) = sub_22A4DD5EC();
  *(v0 + 256) = v10;
  *(v0 + 264) = 8;
  *(v0 + 272) = sub_22A4DD5EC();
  *(v0 + 280) = v11;
  *(v0 + 288) = 9;
  *(v0 + 296) = sub_22A4DD5EC();
  *(v0 + 304) = v12;
  *(v0 + 312) = 10;
  *(v0 + 320) = sub_22A4DD5EC();
  *(v0 + 328) = v13;
  *(v0 + 336) = 11;
  *(v0 + 344) = sub_22A4DD5EC();
  *(v0 + 352) = v14;
  *(v0 + 360) = 12;
  *(v0 + 368) = sub_22A4DD5EC();
  *(v0 + 376) = v15;
  *(v0 + 384) = 13;
  *(v0 + 392) = sub_22A4DD5EC();
  *(v0 + 400) = v16;
  *(v0 + 408) = 13;
  *(v0 + 416) = sub_22A4DD5EC();
  *(v0 + 424) = v17;
  *(v0 + 432) = 14;
  *(v0 + 440) = sub_22A4DD5EC();
  *(v0 + 448) = v18;
  *(v0 + 456) = 14;
  *(v0 + 464) = sub_22A4DD5EC();
  *(v0 + 472) = v19;
  *(v0 + 480) = 15;
  *(v0 + 488) = sub_22A4DD5EC();
  *(v0 + 496) = v20;
  *(v0 + 504) = 15;
  *(v0 + 512) = sub_22A4DD5EC();
  *(v0 + 520) = v21;
  *(v0 + 528) = 16;
  *(v0 + 536) = sub_22A4DD5EC();
  *(v0 + 544) = v22;
  *(v0 + 552) = 16;
  *(v0 + 560) = sub_22A4DD5EC();
  *(v0 + 568) = v23;
  *(v0 + 576) = 17;
  *(v0 + 584) = sub_22A4DD5EC();
  *(v0 + 592) = v24;
  *(v0 + 600) = 17;
  *(v0 + 608) = sub_22A4DD5EC();
  *(v0 + 616) = v25;
  *(v0 + 624) = 18;
  *(v0 + 632) = sub_22A4DD5EC();
  *(v0 + 640) = v26;
  *(v0 + 648) = 19;
  *(v0 + 656) = sub_22A4DD5EC();
  *(v0 + 664) = v27;
  *(v0 + 672) = 20;
  *(v0 + 680) = sub_22A4DD5EC();
  *(v0 + 688) = v28;
  *(v0 + 696) = 20;
  *(v0 + 704) = sub_22A4DD5EC();
  *(v0 + 712) = v29;
  *(v0 + 720) = 22;
  *(v0 + 728) = sub_22A4DD5EC();
  *(v0 + 736) = v30;
  *(v0 + 744) = 23;
  *(v0 + 752) = sub_22A4DD5EC();
  *(v0 + 760) = v31;
  *(v0 + 768) = 24;
  *(v0 + 776) = sub_22A4DD5EC();
  *(v0 + 784) = v32;
  *(v0 + 792) = 25;
  *(v0 + 800) = sub_22A4DD5EC();
  *(v0 + 808) = v33;
  *(v0 + 816) = 26;
  *(v0 + 824) = sub_22A4DD5EC();
  *(v0 + 832) = v34;
  *(v0 + 840) = 27;
  *(v0 + 848) = sub_22A4DD5EC();
  *(v0 + 856) = v35;
  *(v0 + 864) = 28;
  *(v0 + 872) = sub_22A4DD5EC();
  *(v0 + 880) = v36;
  *(v0 + 888) = 34;
  *(v0 + 896) = sub_22A4DD5EC();
  *(v0 + 904) = v37;
  *(v0 + 912) = 30;
  *(v0 + 920) = sub_22A4DD5EC();
  *(v0 + 928) = v38;
  *(v0 + 936) = 33;
  *(v0 + 944) = sub_22A4DD5EC();
  *(v0 + 952) = v39;
  *(v0 + 960) = 31;
  *(v0 + 968) = sub_22A4DD5EC();
  *(v0 + 976) = v40;
  *(v0 + 984) = 29;
  *(v0 + 992) = sub_22A4DD5EC();
  *(v0 + 1000) = v41;
  *(v0 + 1008) = 32;
  *(v0 + 1016) = sub_22A4DD5EC();
  *(v0 + 1024) = v42;
  *(v0 + 1032) = 37;
  *(v0 + 1040) = sub_22A4DD5EC();
  *(v0 + 1048) = v43;
  *(v0 + 1056) = 38;
  *(v0 + 1064) = sub_22A4DD5EC();
  *(v0 + 1072) = v44;
  *(v0 + 1080) = 39;
  *(v0 + 1088) = sub_22A4DD5EC();
  *(v0 + 1096) = v45;
  *(v0 + 1104) = 36;
  *(v0 + 1112) = sub_22A4DD5EC();
  *(v0 + 1120) = v46;
  *(v0 + 1128) = 40;
  *(v0 + 1136) = sub_22A4DD5EC();
  *(v0 + 1144) = v47;
  *(v0 + 1152) = 41;
  *(v0 + 1160) = sub_22A4DD5EC();
  *(v0 + 1168) = v48;
  *(v0 + 1176) = 42;
  *(v0 + 1184) = sub_22A4DD5EC();
  *(v0 + 1192) = v49;
  *(v0 + 1200) = 43;
  *(v0 + 1208) = sub_22A4DD5EC();
  *(v0 + 1216) = v50;
  *(v0 + 1224) = 44;
  *(v0 + 1232) = sub_22A4DD5EC();
  *(v0 + 1240) = v51;
  *(v0 + 1248) = 45;
  *(v0 + 1256) = sub_22A4DD5EC();
  *(v0 + 1264) = v52;
  *(v0 + 1272) = 46;
  *(v0 + 1280) = sub_22A4DD5EC();
  *(v0 + 1288) = v53;
  *(v0 + 1296) = 47;
  *(v0 + 1304) = sub_22A4DD5EC();
  *(v0 + 1312) = v54;
  *(v0 + 1320) = 54;
  v55 = sub_22956AEF8(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9A0, &qword_22A5794E8);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27D8AB660 = v55;
  return result;
}

uint64_t sub_2295C5D3C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2295C50B0(*a1);
  v5 = v4;
  if (v3 == sub_2295C50B0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22A4DE60C();
  }

  return v8 & 1;
}

uint64_t sub_2295C5DC4()
{
  v1 = *v0;
  sub_22A4DE77C();
  sub_2295C50B0(v1);
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

uint64_t sub_2295C5E28(uint64_t a1)
{
  sub_2295C50B0(*v1);
  sub_22A4DD6BC();
}

uint64_t sub_2295C5E7C(uint64_t a1)
{
  v2 = *v1;
  sub_22A4DE77C();
  sub_2295C50B0(v2);
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

unint64_t sub_2295C5EDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2295C60E0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2295C5F0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2295C50B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for HomeCapability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC7)
  {
    goto LABEL_17;
  }

  if (a2 + 57 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 57) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 57;
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

      return (*a1 | (v4 << 8)) - 57;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 57;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3A;
  v8 = v6 - 58;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeCapability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 57 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 57) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC7)
  {
    v4 = 0;
  }

  if (a2 > 0xC6)
  {
    v5 = ((a2 - 199) >> 8) + 1;
    *result = a2 + 57;
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
    *result = a2 + 57;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2295C608C()
{
  result = qword_2814036C0;
  if (!qword_2814036C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814036C0);
  }

  return result;
}

unint64_t sub_2295C60E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_22A4DE62C();

  if (v2 >= 0x3A)
  {
    return 58;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2295C6134(char a1)
{
  result = 0x6669727550726961;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x79726574746162;
      break;
    case 3:
      result = 0x6172656D6163;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x53746361746E6F63;
      break;
    case 7:
      result = 0x6C6C6542726F6F64;
      break;
    case 8:
      result = 0x6B636F4C726F6F64;
      break;
    case 9:
      result = 7233894;
      break;
    case 10:
      result = 0x746563756166;
      break;
    case 11:
      result = 0x7265746C6966;
      break;
    case 12:
      result = 0x6F44656761726167;
      break;
    case 13:
      result = 0x6F43726574616568;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0x79746964696D7568;
      break;
    case 16:
      result = 0x736E65536B61656CLL;
      break;
    case 17:
      result = 0x6C7562746867696CLL;
      break;
    case 18:
      v3 = 0x53746867696CLL;
      goto LABEL_42;
    case 19:
      result = 0x65536E6F69746F6DLL;
      break;
    case 20:
    case 21:
      result = 0x657A69726F746F6DLL;
      break;
    case 22:
      result = 0x636E61707563636FLL;
      break;
    case 23:
      result = 0x74656C74756FLL;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0x7974697275636573;
      break;
    case 26:
      result = 0x7265776F6873;
      break;
    case 27:
      result = 1802398067;
      break;
    case 28:
      result = 1952541811;
      break;
    case 29:
      v3 = 0x53656B6F6D73;
LABEL_42:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 30:
      result = 0x656C6B6E69727073;
      break;
    case 31:
      result = 0x686374697773;
      break;
    case 32:
      result = 0x69736976656C6574;
      break;
    case 33:
      result = 0xD000000000000011;
      break;
    case 34:
      result = 0x74736F6D72656874;
      break;
    case 35:
      result = 0x65766C6176;
      break;
    case 36:
      result = 0x6F43776F646E6977;
      break;
    case 37:
      result = 0x706F4D746F626F72;
      break;
    case 38:
      result = 0x646F50656D6F68;
      break;
    case 39:
      result = 0x5654656C707061;
      break;
    case 40:
      result = 0x72656B61657073;
      break;
    case 41:
      result = 0x6B63696B65646973;
      break;
    case 42:
      result = 0x736564616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2295C65C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9A8, &qword_22A5795D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5795B0;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 40) = v1;
  *(inited + 48) = 25;
  *(inited + 56) = sub_22A4DD5EC();
  *(inited + 64) = v2;
  *(inited + 72) = 20;
  *(inited + 80) = sub_22A4DD5EC();
  *(inited + 88) = v3;
  *(inited + 96) = 8;
  *(inited + 104) = sub_22A4DD5EC();
  *(inited + 112) = v4;
  *(inited + 120) = 9;
  *(inited + 128) = sub_22A4DD5EC();
  *(inited + 136) = v5;
  *(inited + 144) = 12;
  *(inited + 152) = sub_22A4DD5EC();
  *(inited + 160) = v6;
  *(inited + 168) = 3;
  *(inited + 176) = sub_22A4DD5EC();
  *(inited + 184) = v7;
  *(inited + 192) = 17;
  *(inited + 200) = sub_22A4DD5EC();
  *(inited + 208) = v8;
  *(inited + 216) = 23;
  *(inited + 224) = sub_22A4DD5EC();
  *(inited + 232) = v9;
  *(inited + 240) = 31;
  *(inited + 248) = sub_22A4DD5EC();
  *(inited + 256) = v10;
  *(inited + 264) = 31;
  *(inited + 272) = sub_22A4DD5EC();
  *(inited + 280) = v11;
  *(inited + 288) = 34;
  *(inited + 296) = sub_22A4DD5EC();
  *(inited + 304) = v12;
  *(inited + 312) = 7;
  *(inited + 320) = sub_22A4DD5EC();
  *(inited + 328) = v13;
  *(inited + 336) = 21;
  *(inited + 344) = sub_22A4DD5EC();
  *(inited + 352) = v14;
  *(inited + 360) = 36;
  *(inited + 368) = sub_22A4DD5EC();
  *(inited + 376) = v15;
  *(inited + 384) = 14;
  *(inited + 392) = sub_22A4DD5EC();
  *(inited + 400) = v16;
  *(inited + 408) = 13;
  *(inited + 416) = sub_22A4DD5EC();
  *(inited + 424) = v17;
  *(inited + 432) = 13;
  *(inited + 440) = sub_22A4DD5EC();
  *(inited + 448) = v18;
  *(inited + 456) = 14;
  *(inited + 464) = sub_22A4DD5EC();
  *(inited + 472) = v19;
  *(inited + 480) = 0;
  *(inited + 488) = sub_22A4DD5EC();
  *(inited + 496) = v20;
  *(inited + 504) = 39;
  *(inited + 512) = sub_22A4DD5EC();
  *(inited + 520) = v21;
  *(inited + 528) = 38;
  *(inited + 536) = sub_22A4DD5EC();
  *(inited + 544) = v22;
  *(inited + 552) = 40;
  *(inited + 560) = sub_22A4DD5EC();
  *(inited + 568) = v23;
  *(inited + 576) = 40;
  *(inited + 584) = sub_22A4DD5EC();
  *(inited + 592) = v24;
  *(inited + 600) = 30;
  *(inited + 608) = sub_22A4DD5EC();
  *(inited + 616) = v25;
  *(inited + 624) = 26;
  *(inited + 632) = sub_22A4DD5EC();
  *(inited + 640) = v26;
  *(inited + 648) = 27;
  *(inited + 656) = sub_22A4DD5EC();
  *(inited + 664) = v27;
  *(inited + 672) = 32;
  *(inited + 680) = sub_22A4DD5EC();
  *(inited + 688) = v28;
  *(inited + 696) = 32;
  *(inited + 704) = sub_22A4DD5EC();
  *(inited + 712) = v29;
  *(inited + 720) = 32;
  v30 = sub_22956AEE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9B0, &qword_22A5795D8);
  result = swift_arrayDestroy();
  qword_27D8AB668 = v30;
  return result;
}

uint64_t sub_2295C69A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9A8, &qword_22A5795D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22A5795C0;
  *(v0 + 32) = sub_22A4DD5EC();
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  *(v0 + 56) = sub_22A4DD5EC();
  *(v0 + 64) = v2;
  *(v0 + 72) = 1;
  *(v0 + 80) = sub_22A4DD5EC();
  *(v0 + 88) = v3;
  *(v0 + 96) = 2;
  *(v0 + 104) = sub_22A4DD5EC();
  *(v0 + 112) = v4;
  *(v0 + 120) = 4;
  *(v0 + 128) = sub_22A4DD5EC();
  *(v0 + 136) = v5;
  *(v0 + 144) = 5;
  *(v0 + 152) = sub_22A4DD5EC();
  *(v0 + 160) = v6;
  *(v0 + 168) = 6;
  *(v0 + 176) = sub_22A4DD5EC();
  *(v0 + 184) = v7;
  *(v0 + 192) = 7;
  *(v0 + 200) = sub_22A4DD5EC();
  *(v0 + 208) = v8;
  *(v0 + 216) = 8;
  *(v0 + 224) = sub_22A4DD5EC();
  *(v0 + 232) = v9;
  *(v0 + 240) = 9;
  *(v0 + 248) = sub_22A4DD5EC();
  *(v0 + 256) = v10;
  *(v0 + 264) = 9;
  *(v0 + 272) = sub_22A4DD5EC();
  *(v0 + 280) = v11;
  *(v0 + 288) = 10;
  *(v0 + 296) = sub_22A4DD5EC();
  *(v0 + 304) = v12;
  *(v0 + 312) = 11;
  *(v0 + 320) = sub_22A4DD5EC();
  *(v0 + 328) = v13;
  *(v0 + 336) = 12;
  *(v0 + 344) = sub_22A4DD5EC();
  *(v0 + 352) = v14;
  *(v0 + 360) = 13;
  *(v0 + 368) = sub_22A4DD5EC();
  *(v0 + 376) = v15;
  *(v0 + 384) = 14;
  *(v0 + 392) = sub_22A4DD5EC();
  *(v0 + 400) = v16;
  *(v0 + 408) = 15;
  *(v0 + 416) = sub_22A4DD5EC();
  *(v0 + 424) = v17;
  *(v0 + 432) = 16;
  *(v0 + 440) = sub_22A4DD5EC();
  *(v0 + 448) = v18;
  *(v0 + 456) = 17;
  *(v0 + 464) = sub_22A4DD5EC();
  *(v0 + 472) = v19;
  *(v0 + 480) = 18;
  *(v0 + 488) = sub_22A4DD5EC();
  *(v0 + 496) = v20;
  *(v0 + 504) = 19;
  *(v0 + 512) = sub_22A4DD5EC();
  *(v0 + 520) = v21;
  *(v0 + 528) = 20;
  *(v0 + 536) = sub_22A4DD5EC();
  *(v0 + 544) = v22;
  *(v0 + 552) = 21;
  *(v0 + 560) = sub_22A4DD5EC();
  *(v0 + 568) = v23;
  *(v0 + 576) = 22;
  *(v0 + 584) = sub_22A4DD5EC();
  *(v0 + 592) = v24;
  *(v0 + 600) = 23;
  *(v0 + 608) = sub_22A4DD5EC();
  *(v0 + 616) = v25;
  *(v0 + 624) = 25;
  *(v0 + 632) = sub_22A4DD5EC();
  *(v0 + 640) = v26;
  *(v0 + 648) = 28;
  *(v0 + 656) = sub_22A4DD5EC();
  *(v0 + 664) = v27;
  *(v0 + 672) = 29;
  *(v0 + 680) = sub_22A4DD5EC();
  *(v0 + 688) = v28;
  *(v0 + 696) = 40;
  *(v0 + 704) = sub_22A4DD5EC();
  *(v0 + 712) = v29;
  *(v0 + 720) = 30;
  *(v0 + 728) = sub_22A4DD5EC();
  *(v0 + 736) = v30;
  *(v0 + 744) = 31;
  *(v0 + 752) = sub_22A4DD5EC();
  *(v0 + 760) = v31;
  *(v0 + 768) = 33;
  *(v0 + 776) = sub_22A4DD5EC();
  *(v0 + 784) = v32;
  *(v0 + 792) = 34;
  *(v0 + 800) = sub_22A4DD5EC();
  *(v0 + 808) = v33;
  *(v0 + 816) = 35;
  *(v0 + 824) = sub_22A4DD5EC();
  *(v0 + 832) = v34;
  *(v0 + 840) = 36;
  *(v0 + 848) = sub_22A4DD5EC();
  *(v0 + 856) = v35;
  *(v0 + 864) = 32;
  *(v0 + 872) = sub_22A4DD5EC();
  *(v0 + 880) = v36;
  *(v0 + 888) = 30;
  *(v0 + 896) = sub_22A4DD5EC();
  *(v0 + 904) = v37;
  *(v0 + 912) = 30;
  *(v0 + 920) = sub_22A4DD5EC();
  *(v0 + 928) = v38;
  *(v0 + 936) = 10;
  *(v0 + 944) = sub_22A4DD5EC();
  *(v0 + 952) = v39;
  *(v0 + 960) = 26;
  *(v0 + 968) = sub_22A4DD5EC();
  *(v0 + 976) = v40;
  *(v0 + 984) = 30;
  *(v0 + 992) = sub_22A4DD5EC();
  *(v0 + 1000) = v41;
  *(v0 + 1008) = 3;
  *(v0 + 1016) = sub_22A4DD5EC();
  *(v0 + 1024) = v42;
  *(v0 + 1032) = 3;
  *(v0 + 1040) = sub_22A4DD5EC();
  *(v0 + 1048) = v43;
  *(v0 + 1056) = 3;
  *(v0 + 1064) = sub_22A4DD5EC();
  *(v0 + 1072) = v44;
  *(v0 + 1080) = 3;
  v45 = sub_22956AEE4(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9B0, &qword_22A5795D8);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27D8AB670 = v45;
  return result;
}

unint64_t sub_2295C6F5C()
{
  result = sub_22956B000(&unk_283CDA6A0);
  qword_27D8AB678 = result;
  return result;
}

uint64_t sub_2295C6F84(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2295C6134(*a1);
  v5 = v4;
  if (v3 == sub_2295C6134(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22A4DE60C();
  }

  return v8 & 1;
}

uint64_t sub_2295C700C()
{
  v1 = *v0;
  sub_22A4DE77C();
  sub_2295C6134(v1);
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

uint64_t sub_2295C7070(uint64_t a1)
{
  sub_2295C6134(*v1);
  sub_22A4DD6BC();
}

uint64_t sub_2295C70C4(uint64_t a1)
{
  v2 = *v1;
  sub_22A4DE77C();
  sub_2295C6134(v2);
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

unint64_t sub_2295C7124@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2295C7328(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2295C7154@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2295C6134(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for HomeDeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD6)
  {
    goto LABEL_17;
  }

  if (a2 + 42 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 42) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 42;
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

      return (*a1 | (v4 << 8)) - 42;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 42;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v8 = v6 - 43;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeDeviceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD6)
  {
    v4 = 0;
  }

  if (a2 > 0xD5)
  {
    v5 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
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
    *result = a2 + 42;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2295C72D4()
{
  result = qword_27D87D9B8;
  if (!qword_27D87D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D9B8);
  }

  return result;
}

unint64_t sub_2295C7328(uint64_t a1, uint64_t a2)
{
  v2 = sub_22A4DE62C();

  if (v2 >= 0x2B)
  {
    return 43;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for HomeError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD0)
  {
    goto LABEL_17;
  }

  if (a2 + 48 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 48) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 48;
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

      return (*a1 | (v4 << 8)) - 48;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 48;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x31;
  v8 = v6 - 49;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 48 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 48) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD0)
  {
    v4 = 0;
  }

  if (a2 > 0xCF)
  {
    v5 = ((a2 - 208) >> 8) + 1;
    *result = a2 + 48;
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
    *result = a2 + 48;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2295C74CC(char a1)
{
  result = 0x6544737365636361;
  switch(a1)
  {
    case 1:
    case 16:
    case 22:
      return 0xD000000000000016;
    case 2:
    case 15:
    case 23:
    case 30:
      v3 = 5;
      goto LABEL_27;
    case 3:
      v3 = 11;
      goto LABEL_27;
    case 4:
    case 32:
    case 42:
    case 46:
      return 0xD00000000000001CLL;
    case 5:
      return 0x6F4C656369766564;
    case 6:
      return 0x4D6E696274737564;
    case 7:
      return 0x466E696274737564;
    case 8:
      return 0xD000000000000010;
    case 9:
      return 0x6574746142776F6CLL;
    case 10:
      return 0x694D646150706F6DLL;
    case 11:
    case 20:
      return 0xD000000000000014;
    case 12:
      return 0xD000000000000013;
    case 13:
      return 0xD000000000000010;
    case 14:
    case 24:
    case 25:
      return 0xD000000000000011;
    case 17:
    case 40:
    case 41:
    case 48:
      return 0xD000000000000017;
    case 18:
    case 19:
    case 29:
      return 0xD000000000000012;
    case 21:
      return 0xD000000000000010;
    case 26:
      return 0xD000000000000010;
    case 27:
      return 0x6E61547265746177;
    case 28:
      return 0xD000000000000010;
    case 31:
    case 34:
    case 37:
      return 0xD00000000000002ELL;
    case 33:
      return 0xD000000000000018;
    case 35:
      return 0xD00000000000001FLL;
    case 36:
      return 0xD000000000000020;
    case 38:
      return 0xD000000000000025;
    case 39:
      return 0xD000000000000028;
    case 43:
      v3 = 9;
LABEL_27:
      result = v3 | 0xD000000000000010;
      break;
    case 44:
      result = 0x6C616E7265746E69;
      break;
    case 45:
      result = 0xD000000000000010;
      break;
    case 47:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2295C7954(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2295C74CC(*a1);
  v5 = v4;
  if (v3 == sub_2295C74CC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22A4DE60C();
  }

  return v8 & 1;
}

uint64_t sub_2295C79DC()
{
  v1 = *v0;
  sub_22A4DE77C();
  sub_2295C74CC(v1);
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

uint64_t sub_2295C7A40(uint64_t a1)
{
  sub_2295C74CC(*v1);
  sub_22A4DD6BC();
}

uint64_t sub_2295C7A94(uint64_t a1)
{
  v2 = *v1;
  sub_22A4DE77C();
  sub_2295C74CC(v2);
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

unint64_t sub_2295C7AF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2295C7BB4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2295C7B24@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2295C74CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2295C7B54()
{
  result = qword_27D87D9C0;
  if (!qword_27D87D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D9C0);
  }

  return result;
}

unint64_t sub_2295C7BB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_22A4DE62C();

  if (v2 >= 0x31)
  {
    return 49;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2295C7C08()
{
  result = sub_22A4DD5AC();
  qword_2814050B8 = result;
  return result;
}

uint64_t sub_2295C7C40()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  sub_22953EAE4(v0 + 192, &qword_27D87EA00, &qword_22A579B80);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2295C7D04()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = sub_22A4DD07C();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
  v1[14] = swift_task_alloc();
  v3 = sub_22A4DCFCC();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295C7E90, v0, 0);
}

uint64_t sub_2295C7E90()
{
  if (qword_281402D58 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DCFFC();
  __swift_project_value_buffer(v1, qword_2814050D0);
  sub_22A4DCFBC();
  v2 = sub_22A4DCFEC();
  v3 = sub_22A4DDE0C();
  if (sub_22A4DDF5C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_22A4DCFAC();
    _os_signpost_emit_with_name_impl(&dword_229538000, v2, v3, v5, "CascadeIndexer.indexAllHomes.signpost", "", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[16];

  (*(v9 + 16))(v6, v7, v8);
  sub_22A4DD03C();
  swift_allocObject();
  v0[19] = sub_22A4DD02C();
  (*(v9 + 8))(v7, v8);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_2295C8074;
  v11 = v0[14];

  return sub_2295C8C2C(v11);
}

uint64_t sub_2295C8074()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_2295C8764;
  }

  else
  {
    v4 = sub_2295C81A0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2295C81A0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[7];
  v4 = *(v3 + 136);
  v5 = __swift_project_boxed_opaque_existential_0((v3 + 112), v4);
  v6 = *(v4 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v4);
  v8 = *v7;
  v0[22] = *v7;
  v9 = *(v6 + 8);
  v10 = v8;
  v9(v7, v4);

  v0[5] = v2;
  v0[6] = &off_283CDDAD8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2295D1ED0(v1, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v12 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v13 = swift_task_alloc();
  v0[23] = v13;
  *v13 = v0;
  v13[1] = sub_2295C8360;

  return sub_2295D18BC(v10, v12);
}

uint64_t sub_2295C8360()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  v4 = swift_task_alloc();
  *(v1 + 192) = v4;
  *v4 = v3;
  v4[1] = sub_2295C84C0;

  return sub_2295C9168();
}

uint64_t sub_2295C84C0()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_2295C85D0, v1, 0);
}

uint64_t sub_2295C85D0()
{
  sub_229541CB0(v0[8], &off_283CDDA20);
  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDCCC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_229538000, v1, v2, "Finished marking the cascade donation as complete", v8, 2u);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  (*(v7 + 8))(v5, v6);
  sub_2295D1E70(v4, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  sub_2295C8950("CascadeIndexer.indexAllHomes.signpost", 37, 2, v0[19]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2295C8764()
{
  v1 = v0[21];
  sub_229541CB0(v0[8], &off_283CDDA20);
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCEC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[21];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_229538000, v3, v4, "Error occurred during cascade donation: %@", v7, 0xCu);
    sub_22953EAE4(v8, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[10] + 8))(v0[11], v0[9]);
  sub_2295C8950("CascadeIndexer.indexAllHomes.signpost", 37, 2, v0[19]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2295C8950(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = sub_22A4DD00C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DCFCC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281402D58 != -1)
  {
    swift_once();
  }

  v13 = sub_22A4DCFFC();
  __swift_project_value_buffer(v13, qword_2814050D0);
  v14 = sub_22A4DCFEC();
  sub_22A4DD01C();
  v19 = sub_22A4DDDFC();
  result = sub_22A4DDF5C();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_22A4DD04C();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_22A4DCFAC();
      _os_signpost_emit_with_name_impl(&dword_229538000, v14, v19, v18, a1, v16, v17, 2u);
      MEMORY[0x22AAD4E50](v17, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2295C8C2C(uint64_t a1)
{
  v1[19] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9E8, &qword_22A579918);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295C8CF8, 0, 0);
}

uint64_t sub_2295C8CF8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[20];
  v10 = objc_opt_self();
  sub_229562F68(0, &qword_281401B98, 0x277CF9500);
  v7 = sub_22A4DD81C();
  v1[23] = v7;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_2295C8F08;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_229562F68(0, &qword_281401B18, 0x277CF94B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v4 + 32))(boxed_opaque_existential_1, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2295CA908;
  v1[13] = &block_descriptor_4;
  [v10 fullSetDonationWithItemType:7690 descriptors:v7 completion:?];
  (*(v4 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2295C8F08()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_2295C90EC;
  }

  else
  {
    v2 = sub_2295C9018;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2295C9018()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  *v2 = v1;
  type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
  sub_22A4DD5EC();
  type metadata accessor for CascadeIndexer();
  sub_2295C9454();
  sub_22A4DD06C();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2295C90EC(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2295C9168()
{
  *(v1 + 24) = v0;

  return MEMORY[0x2822009F8](sub_2295C91F8, 0, 0);
}

uint64_t sub_2295C91F8()
{
  v1 = **(v0 + 24);
  *(v0 + 16) = 0;
  v2 = [v1 finish_];
  v3 = *(v0 + 16);
  if (v2)
  {
    type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
    v4 = v3;
    v5 = sub_22A4DD05C();
    v6 = sub_22A4DDCCC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_229538000, v5, v6, "Successfully finished donating items to Cascade", v7, 2u);
      MEMORY[0x22AAD4E50](v7, -1, -1);
    }

    goto LABEL_6;
  }

  v8 = v3;
  v9 = sub_22A4DB3EC();

  swift_willThrow();
  type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
  v10 = v9;
  v5 = sub_22A4DD05C();
  v11 = sub_22A4DDCEC();

  if (os_log_type_enabled(v5, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_229538000, v5, v11, "Error occurred while trying to finish the cascade indexing session: %@", v12, 0xCu);
    sub_22953EAE4(v13, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

LABEL_6:
    goto LABEL_8;
  }

LABEL_8:
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2295C9454()
{
  swift_getMetatypeMetadata();
  v0 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_2295C94C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6[-v2];
  if (v0[29])
  {

    sub_22A4DDA7C();
  }

  sub_2295C9C1C();
  __swift_project_boxed_opaque_existential_0(v0 + 19, v0[22]);
  sub_22A4DD98C();
  v4 = sub_22A4DD9DC();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v7[3] = swift_getAssociatedTypeWitness();
  v7[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v7);

  sub_22A4DBAFC();

  sub_22953EAE4(v3, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_22953ED1C(v7, (v0 + 24));
  return swift_endAccess();
}

uint64_t sub_2295C96C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22953ED8C;

  return sub_2295C7D04();
}

uint64_t sub_2295C9750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_22A4DD07C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295C9810, 0, 0);
}

uint64_t sub_2295C9810()
{
  sub_229541CB0(v0[6], &off_283CDDA20);
  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDCCC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_229538000, v1, v2, "Full donation of the home graph requested", v3, 2u);
    MEMORY[0x22AAD4E50](v3, -1, -1);
  }

  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  (*(v5 + 8))(v4, v6);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2295C9994, Strong, 0);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2295C9994()
{
  sub_2295C94C0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295C9C1C()
{
  v1 = (v0 + 24);
  v2 = *v0;
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  sub_2295B23D0(v1, &v12);
  if (!*(&v13 + 1))
  {
    return sub_22953EAE4(&v12, &qword_27D87EA00, &qword_22A579B80);
  }

  sub_229557188(&v12, v15);
  sub_229541CB0(v2, &off_283CDDA20);
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_229538000, v7, v8, "Cancelling the debounce timer", v9, 2u);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  __swift_project_boxed_opaque_existential_0(v15, v15[3]);
  sub_22A4DBC8C();
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  swift_beginAccess();
  sub_22953ED1C(&v12, v1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t sub_2295C9E64()
{
  sub_2295C9C1C();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2295C9EFC;

  return sub_2295C9FF0();
}

uint64_t sub_2295C9EFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2295C9FF0()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295CA08C, v0, 0);
}

uint64_t sub_2295CA08C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_22A4DD9DC();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_22957F3C0(0, 0, v1, &unk_22A579840, v5);
  v0[4] = v6;
  *(v2 + 232) = v6;

  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_2295CA214;
  v8 = MEMORY[0x277D84A98];
  v9 = MEMORY[0x277D84AC0];
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v0 + 6, v6, v10, v8, v9);
}

uint64_t sub_2295CA214()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_2295CA324, v1, 0);
}

uint64_t sub_2295CA324()
{
  v1 = *(v0 + 16);

  *(v1 + 232) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2295CA3BC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2295CA474, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_2295CA474()
{
  v1 = v0[6];
  v2 = *(v1 + 136);
  v3 = __swift_project_boxed_opaque_existential_0((v1 + 112), v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[7] = *(v5 + 8);
  v6 = *(v4 + 8);

  v6(v5, v2);

  v11 = (*MEMORY[0x277D0EF80] + MEMORY[0x277D0EF80]);

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_2295CA610;
  v8 = v0[6];
  v9 = MEMORY[0x277D84F78] + 8;

  return v11(&unk_22A579850, v8, v9);
}

uint64_t sub_2295CA610(uint64_t a1)
{

  return MEMORY[0x2822009F8](sub_2295CA758, 0, 0);
}

uint64_t sub_2295CA758()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295CA7B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229569B30;

  return sub_2295CA39C(a1, v4, v5, v6);
}

uint64_t sub_2295CA86C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229569B30;

  return sub_2295C96C0();
}

void sub_2295CA908(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9E8, &qword_22A579918);
    sub_22A4DD8EC();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9E8, &qword_22A579918);
    sub_22A4DD8FC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2295CA9B8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for RoomEntity(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295CAAB0, 0, 0);
}

uint64_t sub_2295CAAB0()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v42 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2295D1ED0(v4, v7, type metadata accessor for RoomEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_283CDD768;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_2295D1ED0(v7, boxed_opaque_existential_1, type metadata accessor for RoomEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_2295C3170();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v31 = v14;
          v32 = sub_22A4DB3EC();

          swift_willThrow();
          sub_2295D1E70(v15, type metadata accessor for RoomEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
          v33 = v32;
          v34 = sub_22A4DD05C();
          v35 = sub_22A4DDCEC();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = 138412290;
            v38 = v32;
            v39 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 4) = v39;
            *v37 = v39;
            _os_log_impl(&dword_229538000, v34, v35, "Could not donate entities to cascade: %@", v36, 0xCu);
            sub_22953EAE4(v37, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v37, -1, -1);
            MEMORY[0x22AAD4E50](v36, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_2295D1E70(v15, type metadata accessor for RoomEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
        sub_2295D1ED0(v17, v18, type metadata accessor for RoomEntity);
        v19 = sub_22A4DD05C();
        v20 = sub_22A4DDCEC();
        v21 = os_log_type_enabled(v19, v20);
        v23 = *(v0 + 96);
        v22 = *(v0 + 104);
        if (v21)
        {
          v43 = *(v0 + 104);
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v44[0] = v25;
          *v24 = 136315138;
          v26 = sub_22A4DBA6C();
          v28 = v27;
          sub_2295D1E70(v23, type metadata accessor for RoomEntity);
          v29 = sub_2295A3E30(v26, v28, v44);

          *(v24 + 4) = v29;
          _os_log_impl(&dword_229538000, v19, v20, "Unable to create CascadeItem for %s)", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x22AAD4E50](v25, -1, -1);
          v30 = v24;
          v5 = v42;
          MEMORY[0x22AAD4E50](v30, -1, -1);

          v6 = v43;
        }

        else
        {

          sub_2295D1E70(v23, type metadata accessor for RoomEntity);
          v6 = v22;
        }

        sub_2295D1E70(v6, type metadata accessor for RoomEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2295CAF38(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for ZoneEntity(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295CB030, 0, 0);
}

uint64_t sub_2295CB030()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v42 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2295D1ED0(v4, v7, type metadata accessor for ZoneEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_283CDD7C8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_2295D1ED0(v7, boxed_opaque_existential_1, type metadata accessor for ZoneEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_2295C4AE8();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v31 = v14;
          v32 = sub_22A4DB3EC();

          swift_willThrow();
          sub_2295D1E70(v15, type metadata accessor for ZoneEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
          v33 = v32;
          v34 = sub_22A4DD05C();
          v35 = sub_22A4DDCEC();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = 138412290;
            v38 = v32;
            v39 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 4) = v39;
            *v37 = v39;
            _os_log_impl(&dword_229538000, v34, v35, "Could not donate entities to cascade: %@", v36, 0xCu);
            sub_22953EAE4(v37, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v37, -1, -1);
            MEMORY[0x22AAD4E50](v36, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_2295D1E70(v15, type metadata accessor for ZoneEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
        sub_2295D1ED0(v17, v18, type metadata accessor for ZoneEntity);
        v19 = sub_22A4DD05C();
        v20 = sub_22A4DDCEC();
        v21 = os_log_type_enabled(v19, v20);
        v23 = *(v0 + 96);
        v22 = *(v0 + 104);
        if (v21)
        {
          v43 = *(v0 + 104);
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v44[0] = v25;
          *v24 = 136315138;
          v26 = sub_22A4DBA6C();
          v28 = v27;
          sub_2295D1E70(v23, type metadata accessor for ZoneEntity);
          v29 = sub_2295A3E30(v26, v28, v44);

          *(v24 + 4) = v29;
          _os_log_impl(&dword_229538000, v19, v20, "Unable to create CascadeItem for %s)", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x22AAD4E50](v25, -1, -1);
          v30 = v24;
          v5 = v42;
          MEMORY[0x22AAD4E50](v30, -1, -1);

          v6 = v43;
        }

        else
        {

          sub_2295D1E70(v23, type metadata accessor for ZoneEntity);
          v6 = v22;
        }

        sub_2295D1E70(v6, type metadata accessor for ZoneEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2295CB4B8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for SceneEntity(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295CB5B0, 0, 0);
}

uint64_t sub_2295CB5B0()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v42 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2295D1ED0(v4, v7, type metadata accessor for SceneEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_283CDD798;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_2295D1ED0(v7, boxed_opaque_existential_1, type metadata accessor for SceneEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_2295C40CC();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v31 = v14;
          v32 = sub_22A4DB3EC();

          swift_willThrow();
          sub_2295D1E70(v15, type metadata accessor for SceneEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
          v33 = v32;
          v34 = sub_22A4DD05C();
          v35 = sub_22A4DDCEC();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = 138412290;
            v38 = v32;
            v39 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 4) = v39;
            *v37 = v39;
            _os_log_impl(&dword_229538000, v34, v35, "Could not donate entities to cascade: %@", v36, 0xCu);
            sub_22953EAE4(v37, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v37, -1, -1);
            MEMORY[0x22AAD4E50](v36, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_2295D1E70(v15, type metadata accessor for SceneEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
        sub_2295D1ED0(v17, v18, type metadata accessor for SceneEntity);
        v19 = sub_22A4DD05C();
        v20 = sub_22A4DDCEC();
        v21 = os_log_type_enabled(v19, v20);
        v23 = *(v0 + 96);
        v22 = *(v0 + 104);
        if (v21)
        {
          v43 = *(v0 + 104);
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v44[0] = v25;
          *v24 = 136315138;
          v26 = sub_22A4DBA6C();
          v28 = v27;
          sub_2295D1E70(v23, type metadata accessor for SceneEntity);
          v29 = sub_2295A3E30(v26, v28, v44);

          *(v24 + 4) = v29;
          _os_log_impl(&dword_229538000, v19, v20, "Unable to create CascadeItem for %s)", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x22AAD4E50](v25, -1, -1);
          v30 = v24;
          v5 = v42;
          MEMORY[0x22AAD4E50](v30, -1, -1);

          v6 = v43;
        }

        else
        {

          sub_2295D1E70(v23, type metadata accessor for SceneEntity);
          v6 = v22;
        }

        sub_2295D1E70(v6, type metadata accessor for SceneEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2295CBA38(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for HomeDeviceEntity(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295CBB30, 0, 0);
}

uint64_t sub_2295CBB30()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v42 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2295D1ED0(v4, v7, type metadata accessor for HomeDeviceEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_283CDD6D8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_2295D1ED0(v7, boxed_opaque_existential_1, type metadata accessor for HomeDeviceEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_2295BF018();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v31 = v14;
          v32 = sub_22A4DB3EC();

          swift_willThrow();
          sub_2295D1E70(v15, type metadata accessor for HomeDeviceEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
          v33 = v32;
          v34 = sub_22A4DD05C();
          v35 = sub_22A4DDCEC();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = 138412290;
            v38 = v32;
            v39 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 4) = v39;
            *v37 = v39;
            _os_log_impl(&dword_229538000, v34, v35, "Could not donate entities to cascade: %@", v36, 0xCu);
            sub_22953EAE4(v37, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v37, -1, -1);
            MEMORY[0x22AAD4E50](v36, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_2295D1E70(v15, type metadata accessor for HomeDeviceEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
        sub_2295D1ED0(v17, v18, type metadata accessor for HomeDeviceEntity);
        v19 = sub_22A4DD05C();
        v20 = sub_22A4DDCEC();
        v21 = os_log_type_enabled(v19, v20);
        v23 = *(v0 + 96);
        v22 = *(v0 + 104);
        if (v21)
        {
          v43 = *(v0 + 104);
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v44[0] = v25;
          *v24 = 136315138;
          v26 = sub_22A4DBA6C();
          v28 = v27;
          sub_2295D1E70(v23, type metadata accessor for HomeDeviceEntity);
          v29 = sub_2295A3E30(v26, v28, v44);

          *(v24 + 4) = v29;
          _os_log_impl(&dword_229538000, v19, v20, "Unable to create CascadeItem for %s)", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x22AAD4E50](v25, -1, -1);
          v30 = v24;
          v5 = v42;
          MEMORY[0x22AAD4E50](v30, -1, -1);

          v6 = v43;
        }

        else
        {

          sub_2295D1E70(v23, type metadata accessor for HomeDeviceEntity);
          v6 = v22;
        }

        sub_2295D1E70(v6, type metadata accessor for HomeDeviceEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2295CBFB8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for HomeGroupEntity(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295CC0B0, 0, 0);
}

uint64_t sub_2295CC0B0()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v42 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2295D1ED0(v4, v7, type metadata accessor for HomeGroupEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_283CDD738;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_2295D1ED0(v7, boxed_opaque_existential_1, type metadata accessor for HomeGroupEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_2295C23D4();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v31 = v14;
          v32 = sub_22A4DB3EC();

          swift_willThrow();
          sub_2295D1E70(v15, type metadata accessor for HomeGroupEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
          v33 = v32;
          v34 = sub_22A4DD05C();
          v35 = sub_22A4DDCEC();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = 138412290;
            v38 = v32;
            v39 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 4) = v39;
            *v37 = v39;
            _os_log_impl(&dword_229538000, v34, v35, "Could not donate entities to cascade: %@", v36, 0xCu);
            sub_22953EAE4(v37, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v37, -1, -1);
            MEMORY[0x22AAD4E50](v36, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_2295D1E70(v15, type metadata accessor for HomeGroupEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
        sub_2295D1ED0(v17, v18, type metadata accessor for HomeGroupEntity);
        v19 = sub_22A4DD05C();
        v20 = sub_22A4DDCEC();
        v21 = os_log_type_enabled(v19, v20);
        v23 = *(v0 + 96);
        v22 = *(v0 + 104);
        if (v21)
        {
          v43 = *(v0 + 104);
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v44[0] = v25;
          *v24 = 136315138;
          v26 = sub_22A4DBA6C();
          v28 = v27;
          sub_2295D1E70(v23, type metadata accessor for HomeGroupEntity);
          v29 = sub_2295A3E30(v26, v28, v44);

          *(v24 + 4) = v29;
          _os_log_impl(&dword_229538000, v19, v20, "Unable to create CascadeItem for %s)", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x22AAD4E50](v25, -1, -1);
          v30 = v24;
          v5 = v42;
          MEMORY[0x22AAD4E50](v30, -1, -1);

          v6 = v43;
        }

        else
        {

          sub_2295D1E70(v23, type metadata accessor for HomeGroupEntity);
          v6 = v22;
        }

        sub_2295D1E70(v6, type metadata accessor for HomeGroupEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2295CC538(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for HomeEntity(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295CC630, 0, 0);
}

uint64_t sub_2295CC630()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v42 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2295D1ED0(v4, v7, type metadata accessor for HomeEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_283CDD708;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_2295D1ED0(v7, boxed_opaque_existential_1, type metadata accessor for HomeEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_2295C1584();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v31 = v14;
          v32 = sub_22A4DB3EC();

          swift_willThrow();
          sub_2295D1E70(v15, type metadata accessor for HomeEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
          v33 = v32;
          v34 = sub_22A4DD05C();
          v35 = sub_22A4DDCEC();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = 138412290;
            v38 = v32;
            v39 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 4) = v39;
            *v37 = v39;
            _os_log_impl(&dword_229538000, v34, v35, "Could not donate entities to cascade: %@", v36, 0xCu);
            sub_22953EAE4(v37, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v37, -1, -1);
            MEMORY[0x22AAD4E50](v36, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_2295D1E70(v15, type metadata accessor for HomeEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
        sub_2295D1ED0(v17, v18, type metadata accessor for HomeEntity);
        v19 = sub_22A4DD05C();
        v20 = sub_22A4DDCEC();
        v21 = os_log_type_enabled(v19, v20);
        v23 = *(v0 + 96);
        v22 = *(v0 + 104);
        if (v21)
        {
          v43 = *(v0 + 104);
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v44[0] = v25;
          *v24 = 136315138;
          v26 = sub_22A4DBA6C();
          v28 = v27;
          sub_2295D1E70(v23, type metadata accessor for HomeEntity);
          v29 = sub_2295A3E30(v26, v28, v44);

          *(v24 + 4) = v29;
          _os_log_impl(&dword_229538000, v19, v20, "Unable to create CascadeItem for %s)", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x22AAD4E50](v25, -1, -1);
          v30 = v24;
          v5 = v42;
          MEMORY[0x22AAD4E50](v30, -1, -1);

          v6 = v43;
        }

        else
        {

          sub_2295D1E70(v23, type metadata accessor for HomeEntity);
          v6 = v22;
        }

        sub_2295D1E70(v6, type metadata accessor for HomeEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2295CCAB8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_229586D38;

  return sub_2295C9E44(v0);
}

uint64_t objectdestroy_29Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2295CCB94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2295C9750(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for CascadeIndexer.CascadeIndexingSession(uint64_t a1)
{
  result = qword_281402C38;
  if (!qword_281402C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2295CCCA0(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v4 = sub_22A4DD07C();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[5] = type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
  v2[6] = &off_283CDDAD8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  sub_2295D1ED0(a2, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);

  return MEMORY[0x2822009F8](sub_2295CCDA0, 0, 0);
}

uint64_t sub_2295CCDA0()
{
  v1 = [*(v0 + 56) home];
  *(v0 + 88) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D468, &qword_22A5798F0);
    v4 = *(*(type metadata accessor for HomeGroupEntity(0) - 8) + 80);
    *(v0 + 112) = v4;
    v5 = (v4 + 32) & ~v4;
    v6 = swift_allocObject();
    *(v0 + 96) = v6;
    *(v6 + 16) = xmmword_22A576180;
    sub_2295C1C6C(v3, v2, (v6 + v5));
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_2295CD0D8;

    return sub_2295CBFB8(v6);
  }

  else
  {
    v9 = *(v0 + 56);
    sub_22A4DD5EC();
    off_283CDDE58();
    sub_22A4DD06C();
    v10 = v9;
    v11 = sub_22A4DD05C();
    v12 = sub_22A4DDCEC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 56);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v13;
      *v15 = v13;
      v16 = v13;
      _os_log_impl(&dword_229538000, v11, v12, "Could not index %@ as it does not have valid home pointer", v14, 0xCu);
      sub_22953EAE4(v15, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v15, -1, -1);
      MEMORY[0x22AAD4E50](v14, -1, -1);
    }

    v18 = *(v0 + 72);
    v17 = *(v0 + 80);
    v19 = *(v0 + 64);

    (*(v18 + 8))(v17, v19);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_2295CD0D8()
{
  v1 = *(*v0 + 96);
  v2 = (*(*v0 + 112) + 32) & ~*(*v0 + 112);

  swift_setDeallocating();
  sub_2295D1E70(v1 + v2, type metadata accessor for HomeGroupEntity);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_2295CD228, 0, 0);
}

uint64_t sub_2295CD228()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295CD29C(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v4 = sub_22A4DD07C();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9D8, &qword_22A579900);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for SceneEntity(0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[5] = type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
  v2[6] = &off_283CDDAD8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  sub_2295D1ED0(a2, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);

  return MEMORY[0x2822009F8](sub_2295CD430, 0, 0);
}

uint64_t sub_2295CD430()
{
  v34 = v0;
  v1 = [*(v0 + 64) type];
  v2 = sub_22A4DD5EC();
  v4 = v3;

  if (v2 == sub_22A4DD5EC() && v4 == v5)
  {

    goto LABEL_11;
  }

  v7 = sub_22A4DE60C();

  if (v7)
  {
LABEL_11:
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v25 = *(v0 + 8);

    return v25();
  }

  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v10 = *(v0 + 96);
  sub_2295C3B8C(*(v0 + 64), v10);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = *(v0 + 64);
    sub_22953EAE4(*(v0 + 96), &qword_27D87D9D8, &qword_22A579900);
    sub_22A4DD5EC();
    off_283CDDE58();
    sub_22A4DD06C();
    v12 = v11;
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCEC();

    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 72);
    if (v15)
    {
      v19 = *(v0 + 64);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136315138;
      *(v0 + 56) = v19;
      sub_229562F68(0, &qword_281401C20, off_278666020);
      v22 = sub_22A4DBA6C();
      v24 = sub_2295A3E30(v22, v23, &v33);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_229538000, v13, v14, "Unable to create SceneEntity from scene %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AAD4E50](v21, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    goto LABEL_11;
  }

  v28 = *(v0 + 112);
  v27 = *(v0 + 120);
  sub_2295D1E08(*(v0 + 96), v27, type metadata accessor for SceneEntity);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9E0, &qword_22A579908);
  v29 = *(v28 + 80);
  *(v0 + 144) = v29;
  v30 = (v29 + 32) & ~v29;
  v31 = swift_allocObject();
  *(v0 + 128) = v31;
  *(v31 + 16) = xmmword_22A576180;
  sub_2295D1ED0(v27, v31 + v30, type metadata accessor for SceneEntity);
  v32 = swift_task_alloc();
  *(v0 + 136) = v32;
  *v32 = v0;
  v32[1] = sub_2295CD850;

  return sub_2295CB4B8(v31);
}

uint64_t sub_2295CD850()
{
  v1 = *(*v0 + 128);
  v2 = (*(*v0 + 144) + 32) & ~*(*v0 + 144);

  swift_setDeallocating();
  sub_2295D1E70(v1 + v2, type metadata accessor for SceneEntity);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_2295CD9A0, 0, 0);
}

uint64_t sub_2295CD9A0()
{
  sub_2295D1E70(v0[15], type metadata accessor for SceneEntity);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2295CDA44(uint64_t a1, uint64_t a2)
{
  v2[52] = a1;
  v4 = sub_22A4DD07C();
  v2[53] = v4;
  v2[54] = *(v4 - 8);
  v2[55] = swift_task_alloc();
  v5 = type metadata accessor for RoomEntity(0);
  v2[56] = v5;
  v2[57] = *(v5 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v6 = type metadata accessor for ZoneEntity(0);
  v2[60] = v6;
  v2[61] = *(v6 - 8);
  v2[62] = swift_task_alloc();
  v7 = type metadata accessor for HomeEntity(0);
  v2[63] = v7;
  v2[64] = *(v7 - 8);
  v2[65] = swift_task_alloc();
  v8 = type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
  v2[66] = v8;
  v2[5] = v8;
  v2[6] = &off_283CDDAD8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  sub_2295D1ED0(a2, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);

  return MEMORY[0x2822009F8](sub_2295CDC68, 0, 0);
}

uint64_t sub_2295CDC68()
{
  v1 = [*(v0 + 416) urlString];
  if (v1)
  {
    v2 = v1;
    v3 = sub_22A4DD5EC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 520);
  v8 = *(v0 + 504);
  v7 = *(v0 + 512);
  v9 = *(v0 + 416);
  *v6 = v3;
  v6[1] = v5;
  v10 = [v9 spiClientIdentifier];
  sub_22A4DB79C();

  v11 = [v9 name];
  v12 = sub_22A4DD5EC();
  v14 = v13;

  v15 = (v6 + *(v8 + 24));
  *v15 = v12;
  v15[1] = v14;
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9C8, &qword_22A5798A0);
  v16 = *(v7 + 80);
  *(v0 + 784) = v16;
  v17 = (v16 + 32) & ~v16;
  v18 = swift_allocObject();
  *(v0 + 536) = v18;
  *(v18 + 16) = xmmword_22A576180;
  sub_2295D1ED0(v6, v18 + v17, type metadata accessor for HomeEntity);
  v19 = swift_task_alloc();
  *(v0 + 544) = v19;
  *v19 = v0;
  v19[1] = sub_2295CDE5C;

  return sub_2295CC538(v18);
}

uint64_t sub_2295CDE5C()
{
  v1 = *(*v0 + 536);
  v2 = (*(*v0 + 784) + 32) & ~*(*v0 + 784);

  swift_setDeallocating();
  sub_2295D1E70(v1 + v2, type metadata accessor for HomeEntity);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_2295CDFAC, 0, 0);
}

int64_t sub_2295CDFAC()
{
  v1 = [*(v0 + 416) rooms];
  sub_229562F68(0, &unk_2814017A0, off_278666308);
  v2 = sub_22A4DD83C();
  *(v0 + 552) = v2;

  if (v2 >> 62)
  {
    v4 = sub_22A4DE0EC();
    *(v0 + 560) = v4;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 560) = v4;
    if (v4)
    {
LABEL_3:
      if (v4 >= 1)
      {
        v5 = 0;
        *(v0 + 568) = *MEMORY[0x277D0F1A8];
        *&v3 = 138412290;
        v123 = v3;
        while (1)
        {
          *(v0 + 752) = v5;
          v10 = *(v0 + 552);
          v11 = (v10 & 0xC000000000000001) != 0 ? MEMORY[0x22AAD13F0](v5) : *(v10 + 8 * v5 + 32);
          v12 = v11;
          *(v0 + 760) = v11;
          v13 = *(v0 + 528);
          v14 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 80) = v13;
          *(v0 + 88) = &off_283CDDAD8;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
          sub_2295D1ED0(v14, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v16 = __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
          *(v0 + 120) = v13;
          *(v0 + 128) = &off_283CDDAD8;
          v17 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
          sub_2295D1ED0(v16, v17, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v18 = [v12 home];
          if (v18)
          {
            break;
          }

          sub_22A4DD5EC();
          off_283CDD788();
          sub_22A4DD06C();
          v19 = v12;
          v20 = sub_22A4DD05C();
          v21 = sub_22A4DDCEC();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            *v22 = v123;
            *(v22 + 4) = v19;
            *v23 = v19;
            v24 = v19;
            _os_log_impl(&dword_229538000, v20, v21, "room %@ has no home", v22, 0xCu);
            sub_22953EAE4(v23, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v23, -1, -1);
            MEMORY[0x22AAD4E50](v22, -1, -1);
          }

          ++v5;
          v6 = *(v0 + 560);
          v8 = *(v0 + 432);
          v7 = *(v0 + 440);
          v9 = *(v0 + 424);

          (*(v8 + 8))(v7, v9);
          __swift_destroy_boxed_opaque_existential_0((v0 + 96));
          __swift_destroy_boxed_opaque_existential_0((v0 + 56));

          if (v5 == v6)
          {
            goto LABEL_17;
          }
        }

        v25 = v18;
        v26 = v12;
        v27 = [v26 urlString];
        if (v27)
        {
          v28 = v27;
          v29 = sub_22A4DD5EC();
          v31 = v30;
        }

        else
        {
          v29 = 0;
          v31 = 0;
        }

        v33 = *(v0 + 464);
        v32 = *(v0 + 472);
        v35 = *(v0 + 448);
        v34 = *(v0 + 456);
        v36 = (v33 + *(v35 + 20));
        *v36 = v29;
        v36[1] = v31;
        v37 = [v26 spiClientIdentifier];
        sub_22A4DB79C();

        v38 = [v26 name];
        v39 = sub_22A4DD5EC();
        v41 = v40;

        v42 = (v33 + *(v35 + 24));
        *v42 = v39;
        v42[1] = v41;
        sub_2295D1E08(v33, v32, type metadata accessor for RoomEntity);
        __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D478, &qword_22A5798E0);
        v43 = *(v34 + 80);
        *(v0 + 792) = v43;
        v44 = (v43 + 32) & ~v43;
        v45 = swift_allocObject();
        *(v0 + 768) = v45;
        *(v45 + 16) = xmmword_22A576180;
        sub_2295D1ED0(v32, v45 + v44, type metadata accessor for RoomEntity);
        v124 = sub_2295CA9B8;
        v46 = swift_task_alloc();
        *(v0 + 776) = v46;
        *v46 = v0;
        v46[1] = sub_2295D0968;
        v47 = v45;
        goto LABEL_27;
      }

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }
  }

LABEL_17:
  v48 = *(v0 + 416);

  v49 = [v48 zones];
  sub_229562F68(0, &qword_281401788, off_278666398);
  v50 = sub_22A4DD83C();
  *(v0 + 576) = v50;

  if (v50 >> 62)
  {
    v51 = sub_22A4DE0EC();
    *(v0 + 584) = v51;
    if (v51)
    {
LABEL_19:
      if (v51 >= 1)
      {
        *(v0 + 720) = 0;
        v52 = *(v0 + 576);
        if ((v52 & 0xC000000000000001) != 0)
        {
          v53 = MEMORY[0x22AAD13F0](0);
        }

        else
        {
          v53 = *(v52 + 32);
        }

        v54 = v53;
        *(v0 + 728) = v53;
        v55 = *(v0 + 528);
        v56 = *(v0 + 488);
        v57 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 160) = v55;
        *(v0 + 168) = &off_283CDDAD8;
        v58 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
        sub_2295D1ED0(v57, v58, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v59 = __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
        *(v0 + 200) = v55;
        *(v0 + 208) = &off_283CDDAD8;
        v60 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
        sub_2295D1ED0(v59, v60, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        __swift_project_boxed_opaque_existential_0((v0 + 176), *(v0 + 200));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9D0, &qword_22A5798B8);
        v61 = *(v56 + 80);
        *(v0 + 788) = v61;
        v62 = (v61 + 32) & ~v61;
        v63 = swift_allocObject();
        *(v0 + 736) = v63;
        *(v63 + 16) = xmmword_22A576180;
        v64 = v54;
        v65 = [v64 urlString];
        if (v65)
        {
          v66 = v65;
          v67 = sub_22A4DD5EC();
          v69 = v68;
        }

        else
        {
          v67 = 0;
          v69 = 0;
        }

        v70 = *(v0 + 496);
        v71 = *(v0 + 480);
        *v70 = v67;
        v70[1] = v69;
        v72 = [v64 spiClientIdentifier];
        sub_22A4DB79C();

        v73 = [v64 name];
        v74 = sub_22A4DD5EC();
        v76 = v75;

        v77 = (v70 + *(v71 + 24));
        *v77 = v74;
        v77[1] = v76;
        sub_2295D1E08(v70, v63 + v62, type metadata accessor for ZoneEntity);
        v124 = sub_2295CAF38;
        v78 = swift_task_alloc();
        *(v0 + 744) = v78;
        *v78 = v0;
        v78[1] = sub_2295CFEA8;
        v47 = v63;
        goto LABEL_27;
      }

      goto LABEL_43;
    }
  }

  else
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 584) = v51;
    if (v51)
    {
      goto LABEL_19;
    }
  }

  v80 = *(v0 + 416);

  result = [v80 actionSets];
  if (!result)
  {
LABEL_76:
    __break(1u);
    return result;
  }

  v81 = result;
  sub_229562F68(0, &qword_281401C20, off_278666020);
  v82 = sub_22A4DD83C();
  *(v0 + 592) = v82;

  if (!(v82 >> 62))
  {
    v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 600) = v83;
    if (!v83)
    {
      goto LABEL_45;
    }

    goto LABEL_34;
  }

LABEL_44:
  v83 = sub_22A4DE0EC();
  *(v0 + 600) = v83;
  if (!v83)
  {
LABEL_45:
    v93 = *(v0 + 416);

    v94 = [v93 accessories];
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    v95 = sub_22A4DD83C();
    *(v0 + 608) = v95;

    if (!(v95 >> 62))
    {
      v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 616) = v96;
      if (v96)
      {
LABEL_47:
        if (v96 < 1)
        {
          __break(1u);
        }

        else
        {
          *(v0 + 664) = 0;
          v97 = *(v0 + 608);
          if ((v97 & 0xC000000000000001) != 0)
          {
            v98 = MEMORY[0x22AAD13F0](0);
          }

          else
          {
            v98 = *(v97 + 32);
          }

          v99 = v98;
          *(v0 + 672) = v98;
          v100 = *(v0 + 528);
          v101 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 280) = v100;
          *(v0 + 288) = &off_283CDDAD8;
          v102 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
          sub_2295D1ED0(v101, v102, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v103 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
          *(v0 + 320) = v100;
          *(v0 + 328) = &off_283CDDAD8;
          v104 = __swift_allocate_boxed_opaque_existential_1((v0 + 296));
          sub_2295D1ED0(v103, v104, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
          v105 = [v99 home];
          v106 = sub_2295C08E4(v99, v105);

          v107 = v106[2];
          if (!v107)
          {
            goto LABEL_57;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D460, &unk_22A578600);
          v108 = *(type metadata accessor for HomeDeviceEntity(0) - 8);
          v109 = *(v108 + 72);
          v110 = (*(v108 + 80) + 32) & ~*(v108 + 80);
          v111 = swift_allocObject();
          result = _swift_stdlib_malloc_size(v111);
          if (v109)
          {
            if (result - v110 != 0x8000000000000000 || v109 != -1)
            {
              v111[2] = v107;
              v111[3] = 2 * ((result - v110) / v109);
              v112 = sub_22971573C((v0 + 336), v111 + v110, v107, v106);
              sub_22953EE84(*(v0 + 336));
              if (v112 == v107)
              {
LABEL_58:
                *(v0 + 680) = v111;
                v124 = sub_2295CBA38;
                v113 = swift_task_alloc();
                *(v0 + 688) = v113;
                *v113 = v0;
                v113[1] = sub_2295CF108;
                v47 = v111;
LABEL_27:

                return v124(v47);
              }

              __break(1u);
LABEL_57:

              v111 = MEMORY[0x277D84F90];
              goto LABEL_58;
            }

            goto LABEL_75;
          }
        }

        __break(1u);
        goto LABEL_70;
      }

LABEL_61:
      v114 = *(v0 + 416);

      v115 = [v114 serviceGroups];
      sub_229562F68(0, &unk_281401B60, off_278666318);
      v116 = sub_22A4DD83C();
      *(v0 + 624) = v116;

      if (!(v116 >> 62))
      {
        result = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 632) = result;
        if (!result)
        {
LABEL_71:
          sub_2295D1E70(*(v0 + 520), type metadata accessor for HomeEntity);

          __swift_destroy_boxed_opaque_existential_0((v0 + 16));

          v122 = *(v0 + 8);

          return v122();
        }

        goto LABEL_63;
      }

LABEL_70:
      result = sub_22A4DE0EC();
      *(v0 + 632) = result;
      if (!result)
      {
        goto LABEL_71;
      }

LABEL_63:
      if (result < 1)
      {
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      *(v0 + 640) = 0;
      v117 = *(v0 + 624);
      if ((v117 & 0xC000000000000001) != 0)
      {
        v118 = MEMORY[0x22AAD13F0](0);
      }

      else
      {
        v118 = *(v117 + 32);
      }

      v86 = v118;
      *(v0 + 648) = v118;
      v119 = *(v0 + 528);
      v120 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      *(v0 + 400) = v119;
      *(v0 + 408) = &off_283CDDAD8;
      v121 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
      sub_2295D1ED0(v120, v121, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
      v90 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
      v125 = sub_2295CCCA0;
      v91 = swift_task_alloc();
      *(v0 + 656) = v91;
      *v91 = v0;
      v92 = sub_2295CEDFC;
      goto LABEL_39;
    }

LABEL_60:
    v96 = sub_22A4DE0EC();
    *(v0 + 616) = v96;
    if (v96)
    {
      goto LABEL_47;
    }

    goto LABEL_61;
  }

LABEL_34:
  if (v83 < 1)
  {
    __break(1u);
    goto LABEL_60;
  }

  *(v0 + 696) = 0;
  v84 = *(v0 + 592);
  if ((v84 & 0xC000000000000001) != 0)
  {
    v85 = MEMORY[0x22AAD13F0](0);
  }

  else
  {
    v85 = *(v84 + 32);
  }

  v86 = v85;
  *(v0 + 704) = v85;
  v87 = *(v0 + 528);
  v88 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  *(v0 + 240) = v87;
  *(v0 + 248) = &off_283CDDAD8;
  v89 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
  sub_2295D1ED0(v88, v89, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v90 = __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
  v125 = sub_2295CD29C;
  v91 = swift_task_alloc();
  *(v0 + 712) = v91;
  *v91 = v0;
  v92 = sub_2295CF734;
LABEL_39:
  v91[1] = v92;

  return v125(v86, v90);
}

uint64_t sub_2295CEDFC()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 376));

  return MEMORY[0x2822009F8](sub_2295CEF00, 0, 0);
}

uint64_t sub_2295CEF00()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);

  if (v1 + 1 == v2)
  {
    sub_2295D1E70(*(v0 + 520), type metadata accessor for HomeEntity);

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 640) + 1;
    *(v0 + 640) = v5;
    v6 = *(v0 + 624);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x22AAD13F0]();
    }

    else
    {
      v7 = *(v6 + 8 * v5 + 32);
    }

    v8 = v7;
    *(v0 + 648) = v7;
    v9 = *(v0 + 528);
    v10 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 400) = v9;
    *(v0 + 408) = &off_283CDDAD8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
    sub_2295D1ED0(v10, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v12 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
    v13 = swift_task_alloc();
    *(v0 + 656) = v13;
    *v13 = v0;
    v13[1] = sub_2295CEDFC;

    return sub_2295CCCA0(v8, v12);
  }
}

uint64_t sub_2295CF108()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 296));
  __swift_destroy_boxed_opaque_existential_0((v1 + 256));

  return MEMORY[0x2822009F8](sub_2295CF230, 0, 0);
}

int64_t sub_2295CF230()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 616);

  if (v1 + 1 != v2)
  {
    v9 = *(v0 + 664) + 1;
    *(v0 + 664) = v9;
    v10 = *(v0 + 608);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x22AAD13F0]();
    }

    else
    {
      v11 = *(v10 + 8 * v9 + 32);
    }

    v12 = v11;
    *(v0 + 672) = v11;
    v13 = *(v0 + 528);
    v14 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 280) = v13;
    *(v0 + 288) = &off_283CDDAD8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
    sub_2295D1ED0(v14, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v16 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
    *(v0 + 320) = v13;
    *(v0 + 328) = &off_283CDDAD8;
    v17 = __swift_allocate_boxed_opaque_existential_1((v0 + 296));
    sub_2295D1ED0(v16, v17, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
    v18 = [v12 home];
    v19 = sub_2295C08E4(v12, v18);

    v20 = v19[2];
    if (v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D460, &unk_22A578600);
      v21 = *(type metadata accessor for HomeDeviceEntity(0) - 8);
      v22 = *(v21 + 72);
      v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v24 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v24);
      if (!v22)
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      if (result - v23 == 0x8000000000000000 && v22 == -1)
      {
        goto LABEL_32;
      }

      v24[2] = v20;
      v24[3] = 2 * ((result - v23) / v22);
      v26 = sub_22971573C((v0 + 336), v24 + v23, v20, v19);
      sub_22953EE84(*(v0 + 336));
      if (v26 == v20)
      {
        goto LABEL_19;
      }

      __break(1u);
    }

    v24 = MEMORY[0x277D84F90];
LABEL_19:
    *(v0 + 680) = v24;
    v27 = swift_task_alloc();
    *(v0 + 688) = v27;
    *v27 = v0;
    v27[1] = sub_2295CF108;

    return sub_2295CBA38(v24);
  }

  v3 = *(v0 + 416);

  v4 = [v3 serviceGroups];
  sub_229562F68(0, &unk_281401B60, off_278666318);
  v5 = sub_22A4DD83C();
  *(v0 + 624) = v5;

  if (v5 >> 62)
  {
    result = sub_22A4DE0EC();
    *(v0 + 632) = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 632) = result;
    if (result)
    {
LABEL_4:
      if (result >= 1)
      {
        *(v0 + 640) = 0;
        v7 = *(v0 + 624);
        if ((v7 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x22AAD13F0](0);
        }

        else
        {
          v8 = *(v7 + 32);
        }

        v28 = v8;
        *(v0 + 648) = v8;
        v29 = *(v0 + 528);
        v30 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 400) = v29;
        *(v0 + 408) = &off_283CDDAD8;
        v31 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
        sub_2295D1ED0(v30, v31, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v32 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
        v33 = swift_task_alloc();
        *(v0 + 656) = v33;
        *v33 = v0;
        v33[1] = sub_2295CEDFC;

        return sub_2295CCCA0(v28, v32);
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  sub_2295D1E70(*(v0 + 520), type metadata accessor for HomeEntity);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_2295CF734()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 216));

  return MEMORY[0x2822009F8](sub_2295CF838, 0, 0);
}

int64_t sub_2295CF838()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 600);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 416);

    v4 = [v3 accessories];
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    v5 = sub_22A4DD83C();
    *(v0 + 608) = v5;

    if (v5 >> 62)
    {
      v6 = sub_22A4DE0EC();
      *(v0 + 616) = v6;
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 616) = v6;
      if (v6)
      {
LABEL_4:
        if (v6 < 1)
        {
          __break(1u);
        }

        else
        {
          *(v0 + 664) = 0;
          v7 = *(v0 + 608);
          if ((v7 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x22AAD13F0](0);
          }

          else
          {
            v8 = *(v7 + 32);
          }

          v20 = v8;
          *(v0 + 672) = v8;
          v21 = *(v0 + 528);
          v22 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 280) = v21;
          *(v0 + 288) = &off_283CDDAD8;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
          sub_2295D1ED0(v22, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v24 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
          *(v0 + 320) = v21;
          *(v0 + 328) = &off_283CDDAD8;
          v25 = __swift_allocate_boxed_opaque_existential_1((v0 + 296));
          sub_2295D1ED0(v24, v25, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
          v26 = [v20 home];
          v27 = sub_2295C08E4(v20, v26);

          v28 = v27[2];
          if (!v28)
          {
            goto LABEL_21;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D460, &unk_22A578600);
          v29 = *(type metadata accessor for HomeDeviceEntity(0) - 8);
          v30 = *(v29 + 72);
          v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
          v32 = swift_allocObject();
          result = _swift_stdlib_malloc_size(v32);
          if (v30)
          {
            if (result - v31 != 0x8000000000000000 || v30 != -1)
            {
              v32[2] = v28;
              v32[3] = 2 * ((result - v31) / v30);
              v33 = sub_22971573C((v0 + 336), v32 + v31, v28, v27);
              sub_22953EE84(*(v0 + 336));
              if (v33 == v28)
              {
LABEL_22:
                *(v0 + 680) = v32;
                v34 = swift_task_alloc();
                *(v0 + 688) = v34;
                *v34 = v0;
                v34[1] = sub_2295CF108;

                return sub_2295CBA38(v32);
              }

              __break(1u);
LABEL_21:

              v32 = MEMORY[0x277D84F90];
              goto LABEL_22;
            }

LABEL_40:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_35;
      }
    }

    v35 = *(v0 + 416);

    v36 = [v35 serviceGroups];
    sub_229562F68(0, &unk_281401B60, off_278666318);
    v37 = sub_22A4DD83C();
    *(v0 + 624) = v37;

    if (!(v37 >> 62))
    {
      result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 632) = result;
      if (!result)
      {
LABEL_36:
        sub_2295D1E70(*(v0 + 520), type metadata accessor for HomeEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));

        v43 = *(v0 + 8);

        return v43();
      }

      goto LABEL_28;
    }

LABEL_35:
    result = sub_22A4DE0EC();
    *(v0 + 632) = result;
    if (!result)
    {
      goto LABEL_36;
    }

LABEL_28:
    if (result < 1)
    {
      __break(1u);
      goto LABEL_40;
    }

    *(v0 + 640) = 0;
    v38 = *(v0 + 624);
    if ((v38 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x22AAD13F0](0);
    }

    else
    {
      v39 = *(v38 + 32);
    }

    v12 = v39;
    *(v0 + 648) = v39;
    v40 = *(v0 + 528);
    v41 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 400) = v40;
    *(v0 + 408) = &off_283CDDAD8;
    v42 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
    sub_2295D1ED0(v41, v42, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v16 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
    v44 = sub_2295CCCA0;
    v17 = swift_task_alloc();
    *(v0 + 656) = v17;
    *v17 = v0;
    v18 = sub_2295CEDFC;
    goto LABEL_11;
  }

  v9 = *(v0 + 696) + 1;
  *(v0 + 696) = v9;
  v10 = *(v0 + 592);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x22AAD13F0]();
  }

  else
  {
    v11 = *(v10 + 8 * v9 + 32);
  }

  v12 = v11;
  *(v0 + 704) = v11;
  v13 = *(v0 + 528);
  v14 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  *(v0 + 240) = v13;
  *(v0 + 248) = &off_283CDDAD8;
  v15 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
  sub_2295D1ED0(v14, v15, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v16 = __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
  v44 = sub_2295CD29C;
  v17 = swift_task_alloc();
  *(v0 + 712) = v17;
  *v17 = v0;
  v18 = sub_2295CF734;
LABEL_11:
  v17[1] = v18;

  return v44(v12, v16);
}

uint64_t sub_2295CFEA8()
{
  v1 = *v0;
  v2 = *(*v0 + 736);
  v3 = (*(v1 + 788) + 32) & ~*(v1 + 788);

  swift_setDeallocating();
  sub_2295D1E70(v2 + v3, type metadata accessor for ZoneEntity);
  swift_deallocClassInstance();
  __swift_destroy_boxed_opaque_existential_0((v1 + 176));
  __swift_destroy_boxed_opaque_existential_0((v1 + 136));

  return MEMORY[0x2822009F8](sub_2295D0010, 0, 0);
}

int64_t sub_2295D0010()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 584);

  if (v1 + 1 != v2)
  {
    v10 = *(v0 + 720) + 1;
    *(v0 + 720) = v10;
    v11 = *(v0 + 576);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x22AAD13F0]();
    }

    else
    {
      v12 = *(v11 + 8 * v10 + 32);
    }

    v13 = v12;
    *(v0 + 728) = v12;
    v14 = *(v0 + 528);
    v15 = *(v0 + 488);
    v16 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 160) = v14;
    *(v0 + 168) = &off_283CDDAD8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    sub_2295D1ED0(v16, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v18 = __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
    *(v0 + 200) = v14;
    *(v0 + 208) = &off_283CDDAD8;
    v19 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
    sub_2295D1ED0(v18, v19, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    __swift_project_boxed_opaque_existential_0((v0 + 176), *(v0 + 200));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9D0, &qword_22A5798B8);
    v20 = *(v15 + 80);
    *(v0 + 788) = v20;
    v21 = (v20 + 32) & ~v20;
    v22 = swift_allocObject();
    *(v0 + 736) = v22;
    *(v22 + 16) = xmmword_22A576180;
    v23 = v13;
    v24 = [v23 urlString];
    if (v24)
    {
      v25 = v24;
      v26 = sub_22A4DD5EC();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = *(v0 + 496);
    v30 = *(v0 + 480);
    *v29 = v26;
    v29[1] = v28;
    v31 = [v23 spiClientIdentifier];
    sub_22A4DB79C();

    v32 = [v23 name];
    v33 = sub_22A4DD5EC();
    v35 = v34;

    v36 = (v29 + *(v30 + 24));
    *v36 = v33;
    v36[1] = v35;
    sub_2295D1E08(v29, v22 + v21, type metadata accessor for ZoneEntity);
    v76 = sub_2295CAF38;
    v37 = swift_task_alloc();
    *(v0 + 744) = v37;
    *v37 = v0;
    v37[1] = sub_2295CFEA8;
    v38 = v22;
    goto LABEL_15;
  }

  v3 = *(v0 + 416);

  result = [v3 actionSets];
  if (!result)
  {
LABEL_55:
    __break(1u);
    return result;
  }

  v5 = result;
  sub_229562F68(0, &qword_281401C20, off_278666020);
  v6 = sub_22A4DD83C();
  *(v0 + 592) = v6;

  if (v6 >> 62)
  {
    v7 = sub_22A4DE0EC();
    *(v0 + 600) = v7;
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 600) = v7;
    if (v7)
    {
LABEL_5:
      if (v7 >= 1)
      {
        *(v0 + 696) = 0;
        v8 = *(v0 + 592);
        if ((v8 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x22AAD13F0](0);
        }

        else
        {
          v9 = *(v8 + 32);
        }

        v39 = v9;
        *(v0 + 704) = v9;
        v40 = *(v0 + 528);
        v41 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 240) = v40;
        *(v0 + 248) = &off_283CDDAD8;
        v42 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
        sub_2295D1ED0(v41, v42, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v43 = __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
        v77 = sub_2295CD29C;
        v44 = swift_task_alloc();
        *(v0 + 712) = v44;
        *v44 = v0;
        v45 = sub_2295CF734;
LABEL_20:
        v44[1] = v45;

        return v77(v39, v43);
      }

      __break(1u);
      goto LABEL_39;
    }
  }

  v46 = *(v0 + 416);

  v47 = [v46 accessories];
  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v48 = sub_22A4DD83C();
  *(v0 + 608) = v48;

  if (!(v48 >> 62))
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 616) = v49;
    if (!v49)
    {
      goto LABEL_40;
    }

    goto LABEL_26;
  }

LABEL_39:
  v49 = sub_22A4DE0EC();
  *(v0 + 616) = v49;
  if (!v49)
  {
LABEL_40:
    v67 = *(v0 + 416);

    v68 = [v67 serviceGroups];
    sub_229562F68(0, &unk_281401B60, off_278666318);
    v69 = sub_22A4DD83C();
    *(v0 + 624) = v69;

    if (!(v69 >> 62))
    {
      result = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 632) = result;
      if (result)
      {
LABEL_42:
        if (result >= 1)
        {
          *(v0 + 640) = 0;
          v70 = *(v0 + 624);
          if ((v70 & 0xC000000000000001) != 0)
          {
            v71 = MEMORY[0x22AAD13F0](0);
          }

          else
          {
            v71 = *(v70 + 32);
          }

          v39 = v71;
          *(v0 + 648) = v71;
          v72 = *(v0 + 528);
          v73 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 400) = v72;
          *(v0 + 408) = &off_283CDDAD8;
          v74 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
          sub_2295D1ED0(v73, v74, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v43 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
          v77 = sub_2295CCCA0;
          v44 = swift_task_alloc();
          *(v0 + 656) = v44;
          *v44 = v0;
          v45 = sub_2295CEDFC;
          goto LABEL_20;
        }

        __break(1u);
        goto LABEL_54;
      }

      goto LABEL_50;
    }

LABEL_49:
    result = sub_22A4DE0EC();
    *(v0 + 632) = result;
    if (result)
    {
      goto LABEL_42;
    }

LABEL_50:
    sub_2295D1E70(*(v0 + 520), type metadata accessor for HomeEntity);

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v75 = *(v0 + 8);

    return v75();
  }

LABEL_26:
  if (v49 < 1)
  {
    __break(1u);
    goto LABEL_48;
  }

  *(v0 + 664) = 0;
  v50 = *(v0 + 608);
  if ((v50 & 0xC000000000000001) != 0)
  {
    v51 = MEMORY[0x22AAD13F0](0);
  }

  else
  {
    v51 = *(v50 + 32);
  }

  v52 = v51;
  *(v0 + 672) = v51;
  v53 = *(v0 + 528);
  v54 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  *(v0 + 280) = v53;
  *(v0 + 288) = &off_283CDDAD8;
  v55 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
  sub_2295D1ED0(v54, v55, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v56 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
  *(v0 + 320) = v53;
  *(v0 + 328) = &off_283CDDAD8;
  v57 = __swift_allocate_boxed_opaque_existential_1((v0 + 296));
  sub_2295D1ED0(v56, v57, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
  v58 = [v52 home];
  v59 = sub_2295C08E4(v52, v58);

  v60 = v59[2];
  if (!v60)
  {
    goto LABEL_36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D460, &unk_22A578600);
  v61 = *(type metadata accessor for HomeDeviceEntity(0) - 8);
  v62 = *(v61 + 72);
  v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v64 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v64);
  if (!v62)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (result - v63 == 0x8000000000000000 && v62 == -1)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v64[2] = v60;
  v64[3] = 2 * ((result - v63) / v62);
  v65 = sub_22971573C((v0 + 336), v64 + v63, v60, v59);
  sub_22953EE84(*(v0 + 336));
  if (v65 == v60)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_36:

  v64 = MEMORY[0x277D84F90];
LABEL_37:
  *(v0 + 680) = v64;
  v76 = sub_2295CBA38;
  v66 = swift_task_alloc();
  *(v0 + 688) = v66;
  *v66 = v0;
  v66[1] = sub_2295CF108;
  v38 = v64;
LABEL_15:

  return v76(v38);
}