uint64_t CharacteristicNotificationManager.disableReasons.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843670, &qword_20DD93CB8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  v10 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_disableReasons;
  swift_beginAccess();
  *(v1 + v10) = a1;

  *(v1 + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_isDisabled) = *(*(v1 + v10) + 16) != 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843688, &qword_20DD93CC0);
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
  sub_20DD65134();
  return (*(v7 + 8))(v9, v6);
}

uint64_t (*CharacteristicNotificationManager.disableReasons.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[4] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843670, &qword_20DD93CB8);
  v5[5] = v8;
  v9 = *(v8 - 8);
  v5[6] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v11 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_disableReasons;
  v5[7] = v10;
  v5[8] = v11;
  swift_beginAccess();
  return sub_20D9D7C44;
}

void sub_20D9D7C44(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[7];
  if (a2)
  {
    v5 = v3[4];
  }

  else
  {
    v6 = v3[5];
    v7 = v3[6];
    v5 = v3[4];
    *(v3[3] + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_isDisabled) = *(*(v3[3] + v3[8]) + 16) != 0;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843688, &qword_20DD93CC0);
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
    sub_20DD65134();
    (*(v7 + 8))(v4, v6);
  }

  free(v4);
  free(v5);

  free(v3);
}

uint64_t sub_20D9D7D78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v1 - 8);
  v31 = &v30 - v2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439B8, &qword_20DD94020);
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439C0, &qword_20DD94028);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  sub_20DD63744();
  type metadata accessor for CharacteristicNotificationManager.RegistrationRequest(0);
  sub_20D9EBA28(&qword_280E02290, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_20DD64114();
  v13 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscribedCharacteristics;
  *(v0 + v13) = sub_20D9D4E78(MEMORY[0x277D84F90]);
  *(v0 + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_previousNotificationState) = 0;
  sub_20D9D7510(0, &qword_280E01EF0, 0x277CD1A60);
  sub_20DD64114();
  *(v0 + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_disableReasons) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_isDisabled) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0);
  v14 = v30;
  (*(v3 + 104))(v5, *MEMORY[0x277D85778], v30);
  sub_20DD65124();
  (*(v3 + 8))(v5, v14);
  sub_20D9D7558(v12, v10, &qword_27C8439C0, &qword_20DD94028);
  v15 = *(v7 + 56);
  v16 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscriptionStream;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8436F0, &unk_20DD93D00);
  v18 = *(v17 - 8);
  (*(v18 + 32))(v0 + v16, v10, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
  v20 = *(v19 - 8);
  (*(v20 + 8))(&v10[v15], v19);
  sub_20D9D7558(v12, v10, &qword_27C8439C0, &qword_20DD94028);
  v21 = *(v7 + 56);
  v22 = v31;
  (*(v20 + 32))(v0 + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscriptionContinuation, &v10[v21], v19);
  (*(v18 + 8))(v10, v17);
  v23 = sub_20DD65114();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v24 = qword_27C842410;

  if (v24 != -1)
  {
    swift_once();
  }

  v26 = qword_27C843648;
  v27 = sub_20D9EBA28(&unk_27C843700, v25, type metadata accessor for CharacteristicNotificationActor, &protocol conformance descriptor for CharacteristicNotificationActor);
  v28 = swift_allocObject();
  v28[2] = v26;
  v28[3] = v27;
  v28[4] = v0;

  sub_20DA1C514(0, 0, v22, &unk_20DD94038, v28);

  sub_20D9D76EC(v12, &qword_27C8439C0, &qword_20DD94028);
  return v0;
}

uint64_t CharacteristicNotificationManager.endAllSubscriptions()()
{
  *(v1 + 40) = v0;
  if (qword_27C842410 != -1)
  {
    swift_once();
  }

  v2 = qword_27C843648;

  return MEMORY[0x2822009F8](sub_20D9D836C, v2, 0);
}

uint64_t sub_20D9D836C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436A0, &qword_20DD93CD8);
  sub_20DD640F4();
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_20D9D8410, 0, 0);
}

uint64_t sub_20D9D8410()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_20D9D84E4;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_20D9D84E4()
{

  return MEMORY[0x2822009F8](sub_20D9D85E0, 0, 0);
}

uint64_t CharacteristicNotificationManager.add(registrationRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a1;
  v6[7] = v5;
  v7 = sub_20DD63744();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  if (qword_27C842410 != -1)
  {
    swift_once();
  }

  v8 = qword_27C843648;
  v6[11] = qword_27C843648;

  return MEMORY[0x2822009F8](sub_20D9D86EC, v8, 0);
}

uint64_t sub_20D9D86EC()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedDispatcher];
  v3 = [v2 homeManager];

  if (v3)
  {

    v0[12] = [v1 sharedDispatcher];
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_20D9D8828;

    return HFHomeKitDispatcher.allHomes.getter();
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_20D9D8828(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v6 = v4[12];

    v7 = v5[1];

    return v7();
  }

  else
  {
    v9 = v4[11];
    v4[15] = a1;

    return MEMORY[0x2822009F8](sub_20D9D8990, v9, 0);
  }
}

uint64_t sub_20D9D8990()
{
  v16 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 48);

  *(v0 + 40) = *(v2 + 16);
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 40;
  v4 = sub_20D9DFD10(sub_20D9EB9C0, v3, v1);

  if (v4)
  {
    if (qword_27C842428 != -1)
    {
      swift_once();
    }

    v5 = sub_20DD64C44();
    __swift_project_value_buffer(v5, qword_27C843650);

    v6 = sub_20DD64C24();
    v7 = sub_20DD65384();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      v10 = CharacteristicNotificationManager.RegistrationRequest.description.getter();
      v12 = sub_20D9E0B38(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_20D9BF000, v6, v7, "Adding registration request: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F327D10](v9, -1, -1);
      MEMORY[0x20F327D10](v8, -1, -1);
    }

    (*(*(v0 + 72) + 16))(*(v0 + 80), *(v0 + 48) + OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager19RegistrationRequest_identifier, *(v0 + 64));
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436A0, &qword_20DD93CD8);
    sub_20DD64134();
    swift_endAccess();

    return MEMORY[0x2822009F8](sub_20D9D8C50, 0, 0);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_20D9D8C50()
{
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_20D9D8D24;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_20D9D8D24()
{

  return MEMORY[0x2822009F8](sub_20D9D8E20, 0, 0);
}

uint64_t sub_20D9D8E20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CharacteristicNotificationManager.remove(registrationRequest:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  if (qword_27C842410 != -1)
  {
    swift_once();
  }

  v3 = qword_27C843648;

  return MEMORY[0x2822009F8](sub_20D9D8F18, v3, 0);
}

uint64_t sub_20D9D8F18()
{
  v11 = v0;
  if (qword_27C842428 != -1)
  {
    swift_once();
  }

  v1 = sub_20DD64C44();
  __swift_project_value_buffer(v1, qword_27C843650);

  v2 = sub_20DD64C24();
  v3 = sub_20DD65384();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = CharacteristicNotificationManager.RegistrationRequest.description.getter();
    v8 = sub_20D9E0B38(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_20D9BF000, v2, v3, "Removing registration request: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F327D10](v5, -1, -1);
    MEMORY[0x20F327D10](v4, -1, -1);
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436A0, &qword_20DD93CD8);
  sub_20DD640E4();
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_20D9D9104, 0, 0);
}

uint64_t sub_20D9D9104()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_20D9D91D8;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_20D9D91D8()
{

  return MEMORY[0x2822009F8](sub_20D9EF648, 0, 0);
}

uint64_t sub_20D9D92D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843670, &qword_20DD93CB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843688, &qword_20DD93CC0);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v4, a1, v9);
  (*(v10 + 56))(v4, 0, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
  sub_20DD65134();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20D9D94B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439C8, &qword_20DD94040);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439D0, &qword_20DD94048);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  if (qword_27C842410 != -1)
  {
    swift_once();
  }

  v7 = qword_27C843648;
  v4[11] = qword_27C843648;

  return MEMORY[0x2822009F8](sub_20D9D9660, v7, 0);
}

uint64_t sub_20D9D9660()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8436F0, &unk_20DD93D00);
  sub_20DD65144();
  v2 = sub_20D9EBA28(&unk_27C843700, v1, type metadata accessor for CharacteristicNotificationActor, &protocol conformance descriptor for CharacteristicNotificationActor);
  v0[12] = v2;
  v3 = v0[11];
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_20D9D977C;
  v5 = v0[7];
  v6 = v0[8];

  return MEMORY[0x2822003E8](v5, v3, v2, v6);
}

uint64_t sub_20D9D977C()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_20D9D988C, v1, 0);
}

uint64_t sub_20D9D988C()
{
  v1 = v0[7];
  if ((*(v0[4] + 48))(v1, 1, v0[3]) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_20D9EF52C(v1, v0[6]);
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_20D9D99CC;

    return sub_20D9D9C80(v4, v5, v6, v7, v8);
  }
}

uint64_t sub_20D9D99CC()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_20D9D9ADC, v1, 0);
}

uint64_t sub_20D9D9ADC()
{
  v1 = v0[5];
  sub_20D9D7558(v0[6], v1, &qword_27C843668, &qword_20DD93CB0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843688, &qword_20DD93CC0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[5];
  v6 = v0[6];
  if (v4 == 1)
  {
    sub_20D9D76EC(v0[6], &qword_27C843668, &qword_20DD93CB0);
    sub_20D9D76EC(v5, &qword_27C843668, &qword_20DD93CB0);
  }

  else
  {
    sub_20DD650B4();
    sub_20D9D76EC(v6, &qword_27C843668, &qword_20DD93CB0);
    (*(v3 + 8))(v5, v2);
  }

  v7 = v0[11];
  v8 = v0[12];
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_20D9D977C;
  v10 = v0[7];
  v11 = v0[8];

  return MEMORY[0x2822003E8](v10, v7, v8, v11);
}

uint64_t sub_20D9D9C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[29] = v5;
  v6[30] = *v5;
  sub_20DD63744();
  v6[31] = swift_task_alloc();
  if (qword_27C842410 != -1)
  {
    swift_once();
  }

  v7 = qword_27C843648;
  v6[32] = qword_27C843648;

  return MEMORY[0x2822009F8](sub_20D9D9D70, v7, 0);
}

uint64_t sub_20D9D9D70()
{
  v81 = v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436A0, &qword_20DD93CD8);
  v1 = sub_20DD640D4();
  v79 = v0;
  swift_endAccess();
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_20D9E0AB0(*(v1 + 16), 0);
  v4 = sub_20D9EAF28(&v80, (v3 + 32), v2, v1);
  sub_20D9C51CC(v80);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    v3 = MEMORY[0x277D84F90];
  }

  v80 = MEMORY[0x277D84F90];
  LODWORD(v5) = v3 < 0 || (v3 & 0x4000000000000000) != 0;
  if (v5 == 1)
  {
    goto LABEL_92;
  }

  v6 = *(v3 + 16);
LABEL_10:
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x20F326680](v8, v3);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v14 = v80;
          v7 = MEMORY[0x277D84F90];
          goto LABEL_26;
        }
      }

      else
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          v6 = sub_20DD655B4();
          goto LABEL_10;
        }

        v9 = *(v3 + 8 * v8 + 32);

        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_23;
        }
      }

      v11 = OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager19RegistrationRequest_subscribedCharacteristics;
      swift_beginAccess();
      v12 = *(v9 + v11);
      if ((v12 & 0xC000000000000001) != 0)
      {

        v13 = sub_20DD655B4();

        if (!v13)
        {
LABEL_20:

          goto LABEL_14;
        }
      }

      else if (!*(v12 + 16))
      {
        goto LABEL_20;
      }

      sub_20DD65754();
      sub_20DD65784();
      sub_20DD65794();
      sub_20DD65764();
LABEL_14:
      ++v8;
      if (v10 == v6)
      {
        goto LABEL_24;
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_26:
  v15 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
  if (v15)
  {
    v78 = sub_20DD655B4();
    if (v78)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v78 = *(v14 + 16);
    if (v78)
    {
      goto LABEL_32;
    }
  }

  v16 = *(v79 + 232);
  v17 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscribedCharacteristics;
  swift_beginAccess();
  if (!*(*(v16 + v17) + 16))
  {

    if (qword_27C842428 != -1)
    {
      swift_once();
    }

    v69 = sub_20DD64C44();
    __swift_project_value_buffer(v69, qword_27C843650);
    v70 = sub_20DD64C24();
    v71 = sub_20DD65384();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_20D9BF000, v70, v71, "No registrations to enable or disable", v72, 2u);
      MEMORY[0x20F327D10](v72, -1, -1);
    }

    v73 = v79;
    goto LABEL_86;
  }

LABEL_32:
  if (v5)
  {
    v18 = sub_20DD655B4();
  }

  else
  {
    v18 = *(v3 + 16);
  }

  if (v15)
  {
    v19 = sub_20DD655B4();
  }

  else
  {
    v19 = *(v14 + 16);
  }

  v3 = v78;
  v20 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
    __break(1u);
  }

  else if (qword_27C842428 == -1)
  {
    goto LABEL_40;
  }

  swift_once();
LABEL_40:
  v21 = sub_20DD64C44();
  *(v79 + 264) = __swift_project_value_buffer(v21, qword_27C843650);

  v22 = sub_20DD64C24();
  v23 = sub_20DD65384();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134218240;
    if (v15)
    {
      v25 = sub_20DD655B4();
    }

    else
    {
      v25 = *(v14 + 16);
    }

    *(v24 + 4) = v25;

    *(v24 + 12) = 2048;
    *(v24 + 14) = v20;
    _os_log_impl(&dword_20D9BF000, v22, v23, "Updating subscriptions for registrations (c:%ld, empty:%ld)", v24, 0x16u);
    MEMORY[0x20F327D10](v24, -1, -1);
  }

  else
  {
  }

  if (v78 && (*(*(v79 + 232) + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_isDisabled) & 1) != 0)
  {

    *(v79 + 304) = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_homesToClear;
    swift_beginAccess();
    *(v79 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436E0, &qword_20DD93CF8);
    v26 = sub_20DD640D4();
    *(v79 + 320) = v26;
    swift_endAccess();
    v27 = *(v26 + 32);
    *(v79 + 377) = v27;
    v28 = -1;
    v29 = -1 << v27;
    v30 = *(v26 + 64);
    if (-v29 < 64)
    {
      v28 = ~(-1 << -v29);
    }

    v31 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscribedCharacteristics;
    *(v79 + 328) = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscribedCharacteristics;
    v32 = v28 & v30;
    if (v32)
    {
      v33 = 0;
      v34 = *(v79 + 320);
LABEL_72:
      *(v79 + 336) = v32;
      *(v79 + 344) = v33;
      v59 = *(v79 + 232);
      v60 = *(*(v34 + 56) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));
      *(v79 + 352) = v60;
      swift_beginAccess();
      v61 = *(v59 + v31);
      v62 = *(v61 + 16);
      v63 = v60;
      v64 = v63;
      if (v62 && (v65 = sub_20D9CB2EC(v63), (v66 & 1) != 0))
      {
        v67 = *(*(v61 + 56) + 8 * v65);
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        if (v7 >> 62 && sub_20DD655B4())
        {
          sub_20D9EE5C0(MEMORY[0x277D84F90], &qword_27C843978, &qword_20DD93FE0, &qword_280E02100, 0x277CD1970);
          v67 = v76;
        }

        else
        {
          v67 = MEMORY[0x277D84FA0];
        }
      }

      *(v79 + 360) = v67;
      v68 = swift_task_alloc();
      *(v79 + 368) = v68;
      *v68 = v79;
      v68[1] = sub_20D9DAD78;

      return sub_20D9DB11C(v64, v67);
    }

    v57 = 0;
    v58 = ((63 - v29) >> 6) - 1;
    v34 = *(v79 + 320);
    while (v58 != v57)
    {
      v33 = v57 + 1;
      v32 = *(v34 + 8 * v57++ + 72);
      if (v32)
      {
        goto LABEL_72;
      }
    }

    v74 = *(v79 + 232);

    swift_beginAccess();
    v73 = v79;
    sub_20DD640F4();
    swift_endAccess();
    swift_beginAccess();
    *(v74 + v31) = MEMORY[0x277D84F98];

LABEL_86:

    v75 = *(v73 + 8);

    return v75();
  }

  v35 = sub_20DD64C24();
  v36 = sub_20DD65354();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_20D9BF000, v35, v36, "Current registrations:", v37, 2u);
    MEMORY[0x20F327D10](v37, -1, -1);
  }

  if (v78)
  {
    v38 = 0;
    v39 = v14 & 0xC000000000000001;
    v77 = v14 & 0xC000000000000001;
    do
    {
      if (v39)
      {
        LODWORD(v5) = MEMORY[0x20F326680](v38, v14);
        v48 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v38 >= *(v14 + 16))
        {
          goto LABEL_91;
        }

        v5 = *(v14 + 8 * v38 + 32);

        v48 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_90;
        }
      }

      v49 = sub_20DD64C24();
      v50 = sub_20DD65354();

      if (os_log_type_enabled(v49, v50))
      {
        v40 = v14;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v80 = v42;
        *v41 = 136315138;

        v43 = CharacteristicNotificationManager.RegistrationRequest.description.getter();
        v45 = v44;

        v46 = sub_20D9E0B38(v43, v45, &v80);
        v3 = v78;

        *(v41 + 4) = v46;
        _os_log_impl(&dword_20D9BF000, v49, v50, "%s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x20F327D10](v42, -1, -1);
        v47 = v41;
        v14 = v40;
        v39 = v77;
        MEMORY[0x20F327D10](v47, -1, -1);
      }

      else
      {
      }

      ++v38;
    }

    while (v48 != v3);
  }

  v51 = *(v79 + 232);
  v52 = sub_20D9EC1DC(v14);
  *(v79 + 272) = v52;

  v53 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscribedCharacteristics;
  *(v79 + 280) = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscribedCharacteristics;
  swift_beginAccess();
  v54 = *(v51 + v53);
  *(v79 + 288) = v54;

  v55 = swift_task_alloc();
  *(v79 + 296) = v55;
  *v55 = v79;
  v55[1] = sub_20D9DA7FC;

  return sub_20D9ECA60(v52, v54);
}

uint64_t sub_20D9DA7FC(char a1)
{
  v2 = *(*v1 + 256);
  *(*v1 + 376) = a1;

  return MEMORY[0x2822009F8](sub_20D9DA930, v2, 0);
}

void sub_20D9DA930()
{
  v53 = v0;
  v1 = *(v0 + 272);
  sub_20D9DB5C8(v1);
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v49 = v1;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = *(*(v49 + 48) + ((v8 << 9) | (8 * v9)));
      v11 = [v10 uniqueIdentifier];
      sub_20DD63714();

      swift_beginAccess();
      v12 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436E0, &qword_20DD93CF8);
      sub_20DD64134();
      swift_endAccess();

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  v13 = *(v51 + 376);
  v15 = *(v51 + 272);
  v14 = *(v51 + 280);
  v16 = *(v51 + 232);

  *(v16 + v14) = v15;

  if (sub_20DD64C14() & 1) != 0 && (v13)
  {
    v17 = *(*(v51 + 232) + *(v51 + 280));
    v18 = v17 + 64;
    v19 = -1;
    v20 = -1 << *(v17 + 32);
    if (-v20 < 64)
    {
      v19 = ~(-1 << -v20);
    }

    v21 = v19 & *(v17 + 64);
    v22 = (63 - v20) >> 6;

    v23 = 0;
    v46 = v17;
    if (v21)
    {
      goto LABEL_18;
    }

LABEL_19:
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_30;
      }

      if (v24 >= v22)
      {

        break;
      }

      v21 = *(v18 + 8 * v24);
      ++v23;
      if (v21)
      {
        while (1)
        {
          v25 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
          v26 = (v24 << 9) | (8 * v25);
          v27 = *(*(v17 + 56) + v26);
          v28 = *(*(v17 + 48) + v26);

          v29 = sub_20DD64C24();
          v30 = sub_20DD65384();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v52 = v48;
            *v31 = 136315394;
            v50 = v28;
            v32 = [v28 name];
            v47 = v30;
            v33 = sub_20DD64EB4();
            v35 = v34;

            v36 = sub_20D9E0B38(v33, v35, &v52);

            *(v31 + 4) = v36;
            *(v31 + 12) = 2080;
            v41 = Set<>.groupedDescription.getter(v27, v37, v38, v39, v40);
            v43 = v42;

            v44 = sub_20D9E0B38(v41, v43, &v52);

            *(v31 + 14) = v44;
            v17 = v46;
            _os_log_impl(&dword_20D9BF000, v29, v47, "%s: currently subscribed to %s", v31, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x20F327D10](v48, -1, -1);
            MEMORY[0x20F327D10](v31, -1, -1);

            v23 = v24;
            if (!v21)
            {
              goto LABEL_19;
            }
          }

          else
          {

            v23 = v24;
            if (!v21)
            {
              goto LABEL_19;
            }
          }

LABEL_18:
          v24 = v23;
        }
      }
    }
  }

  v45 = *(v51 + 8);

  v45();
}

uint64_t sub_20D9DAD78()
{
  v1 = *(*v0 + 256);

  return MEMORY[0x2822009F8](sub_20D9DAEA4, v1, 0);
}

uint64_t sub_20D9DAEA4()
{
  v2 = *(v1 + 344);
  v3 = (*(v1 + 336) - 1) & *(v1 + 336);
  if (v3)
  {
    v4 = *(v1 + 320);
LABEL_7:
    *(v1 + 336) = v3;
    *(v1 + 344) = v2;
    v6 = *(v1 + 328);
    v7 = *(v1 + 232);
    v8 = *(*(v4 + 56) + ((v2 << 9) | (8 * __clz(__rbit64(v3)))));
    *(v1 + 352) = v8;
    swift_beginAccess();
    v9 = *(v7 + v6);
    v10 = *(v9 + 16);
    v11 = v8;
    v0 = v11;
    if (v10 && (v12 = sub_20D9CB2EC(v11), (v13 & 1) != 0))
    {
      v14 = *(*(v9 + 56) + 8 * v12);
      swift_endAccess();
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      swift_endAccess();
      if (v15 >> 62)
      {
LABEL_19:
        if (sub_20DD655B4())
        {
          sub_20D9EE5C0(MEMORY[0x277D84F90], &qword_27C843978, &qword_20DD93FE0, &qword_280E02100, 0x277CD1970);
          v14 = v21;
          goto LABEL_12;
        }
      }

      v14 = MEMORY[0x277D84FA0];
    }

LABEL_12:
    *(v1 + 360) = v14;
    v16 = swift_task_alloc();
    *(v1 + 368) = v16;
    *v16 = v1;
    v16[1] = sub_20D9DAD78;

    return sub_20D9DB11C(v0, v14);
  }

  while (1)
  {
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v5 >= (((1 << *(v1 + 377)) + 63) >> 6))
    {
      break;
    }

    v4 = *(v1 + 320);
    v3 = *(v4 + 8 * v5 + 64);
    ++v2;
    if (v3)
    {
      v2 = v5;
      goto LABEL_7;
    }
  }

  v18 = *(v1 + 328);
  v19 = *(v1 + 232);

  swift_beginAccess();
  sub_20DD640F4();
  swift_endAccess();
  swift_beginAccess();
  *(v19 + v18) = MEMORY[0x277D84F98];

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_20D9DB11C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (qword_27C842410 != -1)
  {
    swift_once();
  }

  v4 = qword_27C843648;

  return MEMORY[0x2822009F8](sub_20D9DB1B8, v4, 0);
}

uint64_t sub_20D9DB1B8()
{
  v34 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = [v3 hf_allServices];
  sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
  v5 = sub_20DD64FD4();

  v6 = v3;
  v7 = sub_20D9EDED8(v5, v2, v1, v6);

  v9 = sub_20DA0D258(v8, v7, v2);
  v0[5] = v9;

  if (qword_27C842428 != -1)
  {
    swift_once();
  }

  v10 = v0[2];
  v11 = sub_20DD64C44();
  __swift_project_value_buffer(v11, qword_27C843650);
  v12 = v10;

  v13 = sub_20DD64C24();
  v14 = sub_20DD65384();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[2];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33[0] = v17;
    *v16 = 136315394;
    v18 = [v15 name];
    v19 = sub_20DD64EB4();
    v21 = v20;

    v22 = sub_20D9E0B38(v19, v21, v33);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v27 = Set<>.groupedDescription.getter(v9, v23, v24, v25, v26);
    v29 = sub_20D9E0B38(v27, v28, v33);

    *(v16 + 14) = v29;
    _os_log_impl(&dword_20D9BF000, v13, v14, "%s: Disabling whole home notifications using %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v17, -1, -1);
    MEMORY[0x20F327D10](v16, -1, -1);
  }

  v30 = swift_task_alloc();
  v0[6] = v30;
  *v30 = v0;
  v30[1] = sub_20D9DB4B8;
  v31 = v0[2];

  return sub_20D9EC494(0, v31, v9);
}

uint64_t sub_20D9DB4B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_20D9DB5C8(uint64_t a1)
{
  v3 = [objc_opt_self() sharedDispatcher];
  v4 = [v3 homeManager];

  if (v4)
  {

    v20 = MEMORY[0x277D84F98];
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;

    for (i = 0; v7; i = v10)
    {
      v10 = i;
LABEL_9:
      v11 = (v10 << 9) | (8 * __clz(__rbit64(v7)));
      v12 = *(*(a1 + 56) + v11);
      v19[0] = *(*(a1 + 48) + v11);
      v19[1] = v12;
      v3 = v19[0];

      sub_20D9DC0C4(&v20, v19, v1);
      v7 &= v7 - 1;
    }

    while (1)
    {
      v10 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        v13 = v20;
        v14 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_previousNotificationState;
        swift_beginAccess();
        *(v1 + v14) = v13;

        v15 = type metadata accessor for CharacteristicNotificationManager.StateContainer();
        v16 = objc_allocWithZone(v15);
        *&v16[OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager14StateContainer_characteristicsEnabled] = v13;
        v18.receiver = v16;
        v18.super_class = v15;
        v17 = objc_msgSendSuper2(&v18, sel_init);
        [objc_opt_self() setOverrideNotificationsStateContainer_];

        return;
      }

      v7 = *(a1 + 64 + 8 * v10);
      ++i;
      if (v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);

    __break(1u);
  }
}

uint64_t Set<>.groupedDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v80 = sub_20DD63744();
  v6 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20DD641F4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v74 - v13;
  v15 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (!sub_20DD655B4())
    {
      goto LABEL_8;
    }
  }

  else if (!*(a1 + 16))
  {
LABEL_8:
    sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
    sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
    return sub_20DD651F4();
  }

  if ((sub_20DD64C14() & 1) == 0)
  {
    goto LABEL_8;
  }

  v77 = v8;
  v78 = sub_20D9D4EA0(MEMORY[0x277D84F90]);
  v81 = v6;
  v76 = v12;
  if (v15)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
    sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
    sub_20DD65284();
    a1 = v86;
    v16 = v87;
    v17 = v88;
    v15 = v89;
    v18 = v90;
  }

  else
  {
    v20 = -1 << *(a1 + 32);
    v16 = a1 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v18 = v22 & *(a1 + 56);
  }

  v82 = v17;
  v23 = (v17 + 64) >> 6;
  v75 = (v9 + 8);
LABEL_14:
  v24 = &selRef_posterFrameGenerationRequests;
  while (1)
  {
    v25 = v15;
    if (a1 < 0)
    {
      break;
    }

    v26 = v15;
    v27 = v18;
    if (!v18)
    {
      while (1)
      {
        v15 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v15 >= v23)
        {
          goto LABEL_31;
        }

        v27 = *(v16 + 8 * v15);
        ++v26;
        if (v27)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_54;
    }

LABEL_20:
    v18 = (v27 - 1) & v27;
    v28 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v28)
    {
      goto LABEL_31;
    }

LABEL_24:
    v30 = [v28 v24[500]];
    if (v30)
    {
      v74 = v30;
      v31 = v78;
      if (*(v78 + 16) && (v32 = sub_20D9CB33C(v74), (v33 & 1) != 0))
      {
        v84 = *(*(v31 + 56) + 8 * v32);
      }

      else
      {
        v84 = MEMORY[0x277D84FA0];
      }

      v35 = v76;
      v34 = v77;
      sub_20DD653B4();
      sub_20D9E1318(v14, v35);
      (*v75)(v14, v34);
      v36 = v84;
      v37 = v78;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v37;
      v39 = v74;
      sub_20D9D0374(v36, v74, isUniquelyReferenced_nonNull_native);

      v78 = v83;
      goto LABEL_14;
    }
  }

  v29 = sub_20DD655F4();
  if (v29)
  {
    v83 = v29;
    sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
    swift_dynamicCast();
    v28 = v84;
    v24 = &selRef_posterFrameGenerationRequests;
    if (v84)
    {
      goto LABEL_24;
    }
  }

LABEL_31:
  sub_20D9C51CC(a1);
  v23 = v78;
  v40 = *(v78 + 16);
  if (!v40)
  {
    goto LABEL_34;
  }

  v41 = sub_20D9E0AB0(*(v78 + 16), 0);
  v42 = sub_20D9EB07C(&v84, v41 + 4, v40, v23);
  v43 = v84;
  swift_bridgeObjectRetain_n();
  sub_20D9C51CC(v43);
  if (v42 != v40)
  {
    __break(1u);
LABEL_34:

    v41 = MEMORY[0x277D84F90];
  }

  v84 = v41;
  a1 = 0;
  sub_20D9E8D00(&v84);

  v25 = v84;
  if ((v84 & 0x8000000000000000) == 0 && (v84 & 0x4000000000000000) == 0)
  {
    v44 = *(v84 + 16);
    if (v44)
    {
      goto LABEL_38;
    }

LABEL_55:
    v47 = MEMORY[0x277D84F90];
LABEL_56:

    v84 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8436B0, &qword_20DD93CF0);
    sub_20D9EF5F8(&qword_27C844020, &unk_27C8436B0, &qword_20DD93CF0, MEMORY[0x277D83958]);
    v71 = sub_20DD64E44();
    v73 = v72;

    v84 = 592475;
    v85 = 0xE300000000000000;
    MEMORY[0x20F325E90](v71, v73);

    MEMORY[0x20F325E90](23818, 0xE200000000000000);

    return v84;
  }

LABEL_54:
  v44 = sub_20DD655B4();
  if (!v44)
  {
    goto LABEL_55;
  }

LABEL_38:
  if (v44 >= 1)
  {
    v45 = 0;
    v46 = v25 & 0xC000000000000001;
    v76 = (v81 + 8);
    v47 = MEMORY[0x277D84F90];
    v77 = v25 & 0xC000000000000001;
    do
    {
      if (v46)
      {
        v48 = MEMORY[0x20F326680](v45, v25);
      }

      else
      {
        v48 = *(v25 + 8 * v45 + 32);
      }

      v49 = v48;
      if (*(v23 + 16) && (v50 = sub_20D9CB33C(v48), (v51 & 1) != 0) && *(*(*(v23 + 56) + 8 * v50) + 16))
      {

        v53 = sub_20D9DF9A0(v52);
        v82 = a1;

        v84 = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8436B0, &qword_20DD93CF0);
        sub_20D9EF5F8(&qword_27C844020, &unk_27C8436B0, &qword_20DD93CF0, MEMORY[0x277D83958]);
        v81 = sub_20DD64E44();
        v55 = v54;

        v56 = [v49 name];
        v57 = sub_20DD64EB4();
        v58 = v47;
        v60 = v59;

        v84 = v57;
        v85 = v60;
        MEMORY[0x20F325E90](10272, 0xE200000000000000);
        v61 = [v49 uniqueIdentifier];
        v62 = v79;
        sub_20DD63714();

        sub_20D9EBA28(&qword_27C8436C0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v63 = v80;
        v64 = sub_20DD65934();
        MEMORY[0x20F325E90](v64);

        v65 = v63;
        v47 = v58;
        (*v76)(v62, v65);
        MEMORY[0x20F325E90](1528838697, 0xE400000000000000);
        MEMORY[0x20F325E90](v81, v55);

        MEMORY[0x20F325E90](93, 0xE100000000000000);
        v66 = v84;
        v67 = v85;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_20D9E0040(0, *(v58 + 2) + 1, 1, v58);
        }

        v69 = *(v47 + 2);
        v68 = *(v47 + 3);
        a1 = v82;
        if (v69 >= v68 >> 1)
        {
          v47 = sub_20D9E0040((v68 > 1), v69 + 1, 1, v47);
        }

        *(v47 + 2) = v69 + 1;
        v70 = &v47[16 * v69];
        *(v70 + 4) = v66;
        *(v70 + 5) = v67;
        v46 = v77;
        v23 = v78;
      }

      else
      {
      }

      ++v45;
    }

    while (v44 != v45);
    goto LABEL_56;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_20D9DC0C4(void *a1, uint64_t a2, uint64_t a3)
{
  v110 = a3;
  v99 = a1;
  v119 = sub_20DD636C4();
  v112 = *(v119 - 8);
  v4 = MEMORY[0x28223BE20](v119);
  v117 = v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v109 = v97 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v97 - v11;
  v114 = sub_20DD63744();
  v105 = *(v114 - 8);
  v13 = MEMORY[0x28223BE20](v114);
  v15 = v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v97 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v97 - v19;
  v21 = *(a2 + 8);
  v22 = *a2;

  v23 = [v22 hf_safeUniqueIdentifier];
  if (!v23)
  {

    return;
  }

  v100 = v18;
  v24 = v23;
  sub_20DD63714();

  v25 = sub_20D9D4FC0(MEMORY[0x277D84F90]);
  v118 = v12;
  v103 = v20;
  v98 = v22;
  if ((v21 & 0xC000000000000001) != 0)
  {
    sub_20DD65564();
    sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
    sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
    sub_20DD65284();
    v21 = v122;
    v26 = v123;
    v27 = v124;
    v28 = v125;
    v29 = v126;
  }

  else
  {
    v28 = 0;
    v30 = -1 << *(v21 + 32);
    v26 = v21 + 56;
    v27 = ~v30;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v29 = v32 & *(v21 + 56);
  }

  v97[2] = v27;
  v33 = (v27 + 64) >> 6;
  v108 = (v112 + 56);
  v97[1] = v112 + 16;
  v113 = (v105 + 8);
  v107 = (v112 + 48);
  v116 = (v112 + 32);
  v102 = v105 + 16;
  v101 = v112 + 40;
  v104 = v21;
  v111 = v26;
  v106 = v33;
  while (v21 < 0)
  {
    v40 = sub_20DD655F4();
    v37 = v118;
    if (!v40 || (v127 = v40, sub_20D9D7510(0, &qword_280E02100, 0x277CD1970), swift_dynamicCast(), v39 = v121, v36 = v28, v38 = v29, !v121))
    {
LABEL_43:
      sub_20D9C51CC(v21);
      v94 = v99;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v121 = *v94;
      v96 = v103;
      sub_20D9D0788(v25, v103, isUniquelyReferenced_nonNull_native);

      *v94 = v121;
      (*v113)(v96, v114);
      return;
    }

LABEL_21:
    v120 = v39;
    v115 = v38;
    v41 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_previousNotificationState;
    v42 = v110;
    swift_beginAccess();
    v47 = *(v42 + v41);
    if (v47 && *(v47 + 16) && (v48 = sub_20D9CB38C(v103, v43, v44, v45, v46), (v49 & 1) != 0))
    {
      v50 = *(*(v47 + 56) + 8 * v48);

      v51 = [v120 uniqueIdentifier];
      v52 = v100;
      sub_20DD63714();
      v57 = v119;
      if (*(v50 + 16) && (v58 = sub_20D9CB38C(v52, v53, v54, v55, v56), (v59 & 1) != 0))
      {
        (*(v112 + 16))(v37, *(v50 + 56) + *(v112 + 72) * v58, v57);
        v60 = 0;
      }

      else
      {
        v60 = 1;
      }

      v21 = v104;

      v61 = v119;
      (*v108)(v37, v60, 1, v119);
      swift_endAccess();

      (*v113)(v100, v114);
    }

    else
    {
      swift_endAccess();
      v61 = v119;
      (*v108)(v37, 1, 1, v119);
    }

    v62 = [v120 uniqueIdentifier];
    sub_20DD63714();

    sub_20D9D7558(v37, v10, &unk_27C843810, &qword_20DD93F00);
    v63 = *v107;
    v64 = (*v107)(v10, 1, v61);
    v65 = v109;
    if (v64 == 1)
    {
      sub_20DD63684();
      if (v63(v10, 1, v61) != 1)
      {
        sub_20D9D76EC(v10, &unk_27C843810, &qword_20DD93F00);
      }
    }

    else
    {
      (*v116)(v109, v10, v61);
    }

    v66 = v10;
    v67 = *v116;
    (*v116)(v117, v65, v61);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v121 = v25;
    v73 = sub_20D9CB38C(v15, v69, v70, v71, v72);
    v75 = v25[2];
    v76 = (v74 & 1) == 0;
    v77 = __OFADD__(v75, v76);
    v78 = v75 + v76;
    if (v77)
    {
      goto LABEL_45;
    }

    v79 = v74;
    if (v25[3] >= v78)
    {
      if ((v68 & 1) == 0)
      {
        v93 = v73;
        sub_20D9D25A8();
        v73 = v93;
      }
    }

    else
    {
      sub_20D9CC600(v78, v68);
      v73 = sub_20D9CB38C(v15, v80, v81, v82, v83);
      if ((v79 & 1) != (v84 & 1))
      {
        goto LABEL_47;
      }
    }

    v85 = v119;
    v25 = v121;
    if (v79)
    {
      (*(v112 + 40))(v121[7] + *(v112 + 72) * v73, v117, v119);

      (*v113)(v15, v114);
      sub_20D9D76EC(v118, &unk_27C843810, &qword_20DD93F00);
      v28 = v36;
      v29 = v115;
      v10 = v66;
    }

    else
    {
      v121[(v73 >> 6) + 8] |= 1 << v73;
      v86 = v15;
      v87 = v105;
      v88 = v73;
      v89 = v114;
      (*(v105 + 16))(v25[6] + *(v105 + 72) * v73, v86, v114);
      v67((v25[7] + *(v112 + 72) * v88), v117, v85);

      v90 = *(v87 + 8);
      v15 = v86;
      v90(v86, v89);
      sub_20D9D76EC(v118, &unk_27C843810, &qword_20DD93F00);
      v91 = v25[2];
      v77 = __OFADD__(v91, 1);
      v92 = v91 + 1;
      if (v77)
      {
        goto LABEL_46;
      }

      v25[2] = v92;
      v28 = v36;
      v29 = v115;
      v10 = v66;
      v21 = v104;
    }

    v26 = v111;
    v33 = v106;
  }

  v34 = v28;
  v35 = v29;
  v36 = v28;
  v37 = v118;
  if (v29)
  {
LABEL_17:
    v38 = (v35 - 1) & v35;
    v39 = *(*(v21 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
    if (!v39)
    {
      goto LABEL_43;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v36 >= v33)
    {
      goto LABEL_43;
    }

    v35 = *(v26 + 8 * v36);
    ++v34;
    if (v35)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  sub_20DD659E4();
  __break(1u);
}

uint64_t CharacteristicNotificationManager.deinit()
{
  v1 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_registrationRequests;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436A0, &qword_20DD93CD8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_homesToClear;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436E0, &qword_20DD93CF8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscriptionStream;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8436F0, &unk_20DD93D00);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscriptionContinuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t CharacteristicNotificationManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_registrationRequests;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436A0, &qword_20DD93CD8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_homesToClear;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436E0, &qword_20DD93CF8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscriptionStream;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8436F0, &unk_20DD93D00);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscriptionContinuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_20D9DCD90@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, void *a4@<X8>)
{
  v7 = [*a1 characteristics];
  v8 = sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  v9 = sub_20DD64FD4();

  v10 = v9;
  v57 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
    goto LABEL_30;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v11)
  {
    v43 = a4;
    v12 = 0;
    v13 = v10 & 0xC000000000000001;
    v14 = v10 & 0xFFFFFFFFFFFFFF8;
    v44 = v10;
    v15 = v10 + 32;
    v50 = a2 & 0xC000000000000001;
    v55 = a2 + 56;
    v49 = v8;
    v53 = v10 & 0xC000000000000001;
    v54 = v11;
    v51 = v10 + 32;
    v52 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13)
      {
        v10 = MEMORY[0x20F326680](v12, v44);
      }

      else
      {
        if (v12 >= *(v14 + 16))
        {
          goto LABEL_29;
        }

        v10 = *(v15 + 8 * v12);
      }

      a4 = v10;
      if (__OFADD__(v12++, 1))
      {
        break;
      }

      if ([v10 isNotificationEnabled])
      {
        if (!v50)
        {
          if (*(a2 + 16))
          {
            v19 = sub_20DD65444();
            v20 = -1 << *(a2 + 32);
            v21 = v19 & ~v20;
            if ((*(v55 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
            {
              v22 = ~v20;
              do
              {
                v23 = *(*(a2 + 48) + 8 * v21);
                v24 = sub_20DD65454();

                if (v24)
                {
                  goto LABEL_24;
                }

                v21 = (v21 + 1) & v22;
              }

              while (((*(v55 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
            }
          }

LABEL_18:
          if (qword_27C842428 != -1)
          {
            swift_once();
          }

          v25 = sub_20DD64C44();
          __swift_project_value_buffer(v25, qword_27C843650);
          v26 = a4;
          v27 = a3;
          v28 = sub_20DD64C24();
          v29 = sub_20DD65364();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v56 = v48;
            *v30 = 136315394;
            v31 = [v27 name];
            log = v28;
            v32 = a2;
            v33 = sub_20DD64EB4();
            v45 = v29;
            v34 = a3;
            v36 = v35;

            v37 = v33;
            a2 = v32;
            v38 = sub_20D9E0B38(v37, v36, &v56);
            a3 = v34;

            *(v30 + 4) = v38;
            *(v30 + 12) = 2112;
            *(v30 + 14) = v26;
            *v47 = v26;
            v39 = v26;
            _os_log_impl(&dword_20D9BF000, log, v45, "%s: Found notification enabled characteristic we weren't tracking: %@", v30, 0x16u);
            sub_20D9D76EC(v47, &unk_27C843630, &qword_20DD94080);
            MEMORY[0x20F327D10](v47, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v48);
            MEMORY[0x20F327D10](v48, -1, -1);
            MEMORY[0x20F327D10](v30, -1, -1);
          }

          else
          {
          }

          v8 = v49;
          goto LABEL_24;
        }

        v17 = a4;
        v18 = sub_20DD65604();

        if ((v18 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_24:
        sub_20DD65754();
        sub_20DD65784();
        sub_20DD65794();
        v10 = sub_20DD65764();
        v13 = v53;
        v11 = v54;
        v15 = v51;
        v14 = v52;
        if (v12 == v54)
        {
LABEL_27:
          v40 = v57;
          a4 = v43;
          goto LABEL_32;
        }
      }

      else
      {

        if (v12 == v11)
        {
          goto LABEL_27;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v41 = v10;
    v11 = sub_20DD655B4();
    v10 = v41;
  }

  v40 = MEMORY[0x277D84F90];
LABEL_32:

  *a4 = v40;
  return result;
}

uint64_t sub_20D9DD1F8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

void sub_20D9DD28C(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_20D9E3254(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9))));

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_20D9DD3AC(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *))
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_20DD65564();
    sub_20D9D7510(0, a2, a3);
    sub_20D9EC18C(a4, a2, a3);
    sub_20DD65284();
    v6 = v24[1];
    v10 = v24[2];
    v11 = v24[3];
    v12 = v24[4];
    v13 = v24[5];
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(a1 + 32);
    v10 = (a1 + 56);
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = (v16 & *(a1 + 56));
  }

  v17 = (v11 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v21 = (v19 - 1) & v19;
    if (!*(*(v6 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19))))))
    {
LABEL_18:
      sub_20D9C51CC(v6);
      return;
    }

    while (1)
    {
      a5(v24);

      v12 = v20;
      v13 = v21;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_20DD655F4())
      {
        sub_20D9D7510(0, a2, a3);
        swift_dynamicCast();
        v20 = v12;
        v21 = v13;
        if (v24[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v20 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_18;
    }

    v19 = v10[v20];
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_20D9DD5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_20DD63744();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v30 - v12;
  result = MEMORY[0x28223BE20](v11);
  v16 = v30 - v15;
  v17 = 0;
  v31 = a1;
  v20 = *(a1 + 56);
  v19 = a1 + 56;
  v18 = v20;
  v21 = 1 << *(v19 - 24);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v30[1] = v7 + 32;
  v30[2] = v7 + 16;
  v30[0] = v7 + 8;
  if ((v22 & v18) != 0)
  {
    do
    {
      v25 = v17;
LABEL_9:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      (*(v7 + 16))(v16, *(v31 + 48) + *(v7 + 72) * (v26 | (v25 << 6)), v6);
      (*(v7 + 32))(v10, v16, v6);
      sub_20D9E2834(v13, v10, v27, v28, v29);
      result = (*(v7 + 8))(v13, v6);
    }

    while (v23);
  }

  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v24)
    {
    }

    v23 = *(v19 + 8 * v25);
    ++v17;
    if (v23)
    {
      v17 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t CharacteristicNotificationManager.RegistrationRequest.reason.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

double sub_20D9DD7F4(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

uint64_t CharacteristicNotificationManager.RegistrationRequest.__allocating_init(home:characteristics:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  CharacteristicNotificationManager.RegistrationRequest.init(home:characteristics:reason:)(a1, a2, a3, a4);
  return v8;
}

void *CharacteristicNotificationManager.RegistrationRequest.init(home:characteristics:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20DD63734();
  if (MEMORY[0x277D84F90] >> 62 && sub_20DD655B4())
  {
    sub_20D9EE5C0(MEMORY[0x277D84F90], &qword_27C843978, &qword_20DD93FE0, &qword_280E02100, 0x277CD1970);
    v9 = v12;
  }

  else
  {
    v9 = MEMORY[0x277D84FA0];
  }

  *(v4 + OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager19RegistrationRequest_subscribedCharacteristics) = v9;
  v4[2] = a1;
  v4[3] = a3;
  v4[4] = a4;
  v10 = OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager19RegistrationRequest_subscribedCharacteristics;
  swift_beginAccess();
  *(v4 + v10) = a2;

  return v4;
}

uint64_t CharacteristicNotificationManager.RegistrationRequest.deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_20DD65114();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_20D9DDEBC(0, 0, v3, &unk_20DD93D18, v5);

  sub_20D9D76EC(v3, &qword_27C8443F0, &qword_20DD93820);

  v6 = OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager19RegistrationRequest_identifier;
  v7 = sub_20DD63744();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return v0;
}

uint64_t sub_20D9DDB00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0);
  v0[2] = swift_task_alloc();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843670, &qword_20DD93CB8);
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D9DDC00, 0, 0);
}

uint64_t sub_20D9DDC00()
{
  if (qword_27C842410 != -1)
  {
    swift_once();
  }

  v1 = qword_27C843648;
  *(v0 + 48) = qword_27C843648;

  return MEMORY[0x2822009F8](sub_20D9DDC98, v1, 0);
}

uint64_t sub_20D9DDC98()
{
  if (qword_27C842408 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_20D9DDD28, v1, 0);
}

uint64_t sub_20D9DDD28()
{
  *(v0 + 56) = qword_27C843640;

  return MEMORY[0x2822009F8](sub_20D9DDD9C, 0, 0);
}

uint64_t sub_20D9DDD9C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843688, &qword_20DD93CC0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
  sub_20DD65134();

  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_20D9DDEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20D9D7558(a3, v25 - v10, &qword_27C8443F0, &qword_20DD93820);
  v12 = sub_20DD65114();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20D9D76EC(v11, &qword_27C8443F0, &qword_20DD93820);
  }

  else
  {
    sub_20DD65104();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20DD65094();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20DD64EF4() + 32;
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

uint64_t CharacteristicNotificationManager.RegistrationRequest.__deallocating_deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_20DD65114();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_20D9DDEBC(0, 0, v3, &unk_20DD93D20, v5);

  sub_20D9D76EC(v3, &qword_27C8443F0, &qword_20DD93820);

  v6 = OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager19RegistrationRequest_identifier;
  v7 = sub_20DD63744();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocClassInstance();
}

uint64_t CharacteristicNotificationManager.RegistrationRequest.add(characteristics:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843670, &qword_20DD93CB8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  swift_beginAccess();

  sub_20D9DD3AC(v8, &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9E10E0);
  swift_endAccess();
  if (qword_27C842408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436A0, &qword_20DD93CD8);
  v9 = sub_20DD64124();
  swift_endAccess();
  if (!v9)
  {
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843688, &qword_20DD93CC0);
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
  sub_20DD65134();

  return (*(v5 + 8))(v7, v4);
}

uint64_t CharacteristicNotificationManager.RegistrationRequest.remove(characteristics:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843670, &qword_20DD93CB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  swift_beginAccess();
  sub_20D9E9C28(a1, &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9EA074);
  swift_endAccess();
  if (qword_27C842408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436A0, &qword_20DD93CD8);
  v9 = sub_20DD64124();
  swift_endAccess();
  if (!v9)
  {
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843688, &qword_20DD93CC0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
  sub_20DD65134();

  return (*(v6 + 8))(v8, v5);
}

uint64_t CharacteristicNotificationManager.RegistrationRequest.replaceCharacteristics(with:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843670, &qword_20DD93CB8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager19RegistrationRequest_subscribedCharacteristics;
  swift_beginAccess();

  *(v2 + v10) = MEMORY[0x277D84FA0];

  sub_20D9DD3AC(v11, &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9E10E0);
  swift_endAccess();
  if (qword_27C842408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436A0, &qword_20DD93CD8);
  v12 = sub_20DD64124();
  swift_endAccess();
  if (!v12)
  {
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843688, &qword_20DD93CC0);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
  sub_20DD65134();

  return (*(v7 + 8))(v9, v6);
}

unint64_t CharacteristicNotificationManager.RegistrationRequest.description.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 24);
    sub_20DD65704();

    v9 = 0xD000000000000011;
    MEMORY[0x20F325E90](v2, v1);
  }

  else
  {
    sub_20DD65704();

    v9 = 0xD000000000000010;
    sub_20DD63744();
    sub_20D9EBA28(&qword_27C8436C0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v3 = sub_20DD65934();
    MEMORY[0x20F325E90](v3);
  }

  MEMORY[0x20F325E90](0x3A6E69202CLL, 0xE500000000000000);
  v4 = [*(v0 + 16) name];
  v5 = sub_20DD64EB4();
  v7 = v6;

  MEMORY[0x20F325E90](v5, v7);

  MEMORY[0x20F325E90](125, 0xE100000000000000);
  return v9;
}

uint64_t sub_20D9DED48@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a6@<X8>)
{
  v10 = sub_20DD63744();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v47 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  v20 = [a2 hf_safeUniqueIdentifier];
  if (v20)
  {
    v21 = v20;
    sub_20DD63714();

    (*(v11 + 32))(v19, v17, v10);
    v26 = *(v6 + OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager14StateContainer_characteristicsEnabled);
    if (*(v26 + 16) && (v27 = sub_20D9CB38C(v19, v22, v23, v24, v25), (v28 & 1) != 0))
    {
      v29 = *(*(v26 + 56) + 8 * v27);

      v30 = [a1 uniqueIdentifier];
      sub_20DD63714();

      if (*(v29 + 16))
      {
        v35 = sub_20D9CB38C(v14, v31, v32, v33, v34);
        if (v36)
        {
          v37 = v35;
          v38 = *(v29 + 56);
          v39 = sub_20DD636C4();
          v40 = *(v39 - 8);
          (*(v40 + 16))(a6, v38 + *(v40 + 72) * v37, v39);
          v41 = *(v11 + 8);
          v41(v14, v10);
          v41(v19, v10);

          return (*(v40 + 56))(a6, 0, 1, v39);
        }
      }

      v45 = *(v11 + 8);
      v45(v14, v10);
      v45(v19, v10);
    }

    else
    {
      (*(v11 + 8))(v19, v10);
    }

    v46 = sub_20DD636C4();
    return (*(*(v46 - 8) + 56))(a6, 1, 1, v46);
  }

  else
  {
    v43 = sub_20DD636C4();
    v44 = *(*(v43 - 8) + 56);

    return v44(a6, 1, 1, v43);
  }
}

BOOL sub_20D9DF358(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_20DD636C4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  sub_20D9DED48(a1, a2, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20D9D76EC(v6, &unk_27C843810, &qword_20DD93F00);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v15 = [a1 valueUpdatedTime];
    sub_20DD63674();

    sub_20DD635A4();
    v17 = v16;
    v18 = *(v8 + 8);
    v18(v11, v7);
    v18(v13, v7);
    return v17 > -1.0;
  }
}

id sub_20D9DF600()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20D9DF648()
{
  type metadata accessor for CharacteristicNotificationActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27C843648 = v0;
  return result;
}

uint64_t sub_20D9DF6B0(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t CharacteristicNotificationActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20D9DF778()
{
  if (qword_27C842410 != -1)
  {
    swift_once();
  }
}

uint64_t sub_20D9DF7DC()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C84C588);
  __swift_project_value_buffer(v0, qword_27C84C588);
  return sub_20DD64C34();
}

uint64_t sub_20D9DF858()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C84C5A0);
  __swift_project_value_buffer(v0, qword_27C84C5A0);
  return sub_20DD64C34();
}

uint64_t sub_20D9DF8D8()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C843650);
  v1 = __swift_project_value_buffer(v0, qword_27C843650);
  if (qword_27C842420 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27C84C5A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_20D9DF9A0(uint64_t a1)
{
  v42 = sub_20DD641F4();
  v3 = *(v42 - 8);
  v4 = MEMORY[0x28223BE20](v42);
  v41 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v40 = &v33 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v33 = v1;
  v47 = MEMORY[0x277D84F90];
  sub_20DA4AF84(0, v7, 0);
  v8 = v47;
  v9 = a1 + 56;
  result = sub_20DD65514();
  v11 = result;
  v12 = 0;
  v37 = v3 + 8;
  v38 = v3 + 16;
  v34 = a1 + 64;
  v35 = v7;
  v36 = v3;
  v39 = a1 + 56;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v43 = v12;
    v44 = *(a1 + 36);
    v45 = v11 >> 6;
    v14 = *(a1 + 48) + *(v3 + 72) * v11;
    v15 = *(v3 + 16);
    v46 = v8;
    v16 = v40;
    v17 = v42;
    v15(v40, v14, v42);
    v18 = a1;
    v15(v41, v16, v17);
    v19 = sub_20DD64ED4();
    v21 = v20;
    v22 = v16;
    v8 = v46;
    result = (*(v3 + 8))(v22, v17);
    v47 = v8;
    v24 = *(v8 + 16);
    v23 = *(v8 + 24);
    if (v24 >= v23 >> 1)
    {
      result = sub_20DA4AF84((v23 > 1), v24 + 1, 1);
      v8 = v47;
    }

    *(v8 + 16) = v24 + 1;
    v25 = v8 + 16 * v24;
    *(v25 + 32) = v19;
    *(v25 + 40) = v21;
    v13 = 1 << *(v18 + 32);
    a1 = v18;
    v9 = v39;
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v26 = *(v39 + 8 * v45);
    if ((v26 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v44 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v27 = v26 & (-2 << (v11 & 0x3F));
    if (v27)
    {
      v13 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v45 << 6;
      v29 = v45 + 1;
      v30 = (v34 + 8 * v45);
      while (v29 < (v13 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_20D9EF46C(v11, v44, 0);
          v13 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_20D9EF46C(v11, v44, 0);
    }

LABEL_4:
    v12 = v43 + 1;
    v11 = v13;
    v3 = v36;
    if (v43 + 1 == v35)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_20D9DFD10(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = MEMORY[0x20F326680](v5, a3);
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
      v13 = sub_20DD655B4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_20D9DFE38(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

uint64_t sub_20D9DFEE4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = *(*(v2 + 56) + 8 * v11);
    v13 = *(*(v2 + 48) + 8 * v11);

    sub_20D9CB2EC(v13);
    v15 = v14;

    if ((v15 & 1) == 0)
    {

      return 0;
    }

    v17 = sub_20DA2C03C(v16, v12);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

char *sub_20D9E0040(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
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

char *sub_20D9E014C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8437F0, &unk_20DD93EE0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_20D9E0250(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843968, &unk_20DD93FD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843970, &qword_20DD95690);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20D9E0398(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843FB0, &unk_20DD95650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438F0, &qword_20DD93F90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20D9E04F4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8438C8, &qword_20DD93F78);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438D0, &unk_20DD93F80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20D9E0650(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_20D9E082C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8437F8, &unk_20DD95610);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_20D9E0930(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
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

void *sub_20D9E09B4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844690, &qword_20DD93F60);
  v4 = *(sub_20DD636C4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_20D9E0AB0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_20D9E0B38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20D9E0C04(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_20D9D7174(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_20D9E0C04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_20D9E0D10(a5, a6);
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
    result = sub_20DD65744();
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

void *sub_20D9E0D10(uint64_t a1, unint64_t a2)
{
  v3 = sub_20D9E0D5C(a1, a2);
  sub_20D9E0E8C(&unk_2824A30E8);
  return v3;
}

void *sub_20D9E0D5C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_20D9E0F78(v5, 0);
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

  result = sub_20DD65744();
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
        v10 = sub_20DD64F44();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20D9E0F78(v10, 0);
        result = sub_20DD656F4();
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

uint64_t sub_20D9E0E8C(uint64_t result)
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

  result = sub_20D9E0FEC(result, v11, 1, v3);
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

void *sub_20D9E0F78(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439B0, &qword_20DD94018);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20D9E0FEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439B0, &qword_20DD94018);
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

uint64_t sub_20D9E10E0(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_20DD655C4();

    if (v9)
    {

      sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_20DD655B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20D9E3788(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_20D9F6AEC(v20 + 1);
    }

    v18 = v8;
    sub_20D9F96FC();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  v11 = sub_20DD65444();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_20D9E48E8(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20DD65454();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_20D9E1318(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20DD641F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20D9EBA28(&qword_27C843998, 255, MEMORY[0x277D16340], MEMORY[0x277D16358]);
  v33 = a2;
  v11 = sub_20DD64E24();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_20D9EBA28(&unk_27C8439A0, 255, MEMORY[0x277D16340], MEMORY[0x277D16368]);
      v21 = sub_20DD64E64();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_20D9E4A78(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20D9E1600(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_20DD65A64();
  sub_20DA02910(v26, a2);
  v7 = sub_20DD65AA4();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_31:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26[0] = *v3;
    sub_20D9E4D48(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v26[0];
    result = 1;
    goto LABEL_34;
  }

  v10 = ~v8;
  v11 = 0x800000020DD97E80;
  v12 = 0x6E696D7575636156;
  v13 = 0x676E6970706F4DLL;
  while (1)
  {
    v14 = *(*(v6 + 48) + v9);
    if (v14 == 5)
    {
      if (a2 == 5)
      {
        goto LABEL_33;
      }

      goto LABEL_4;
    }

    if (v14 == 4)
    {
      if (a2 == 4)
      {
        goto LABEL_33;
      }

      goto LABEL_4;
    }

    if ((a2 & 0xFE) == 4)
    {
      goto LABEL_4;
    }

    if (v14 == 3)
    {
      if (a2 == 3)
      {
        goto LABEL_33;
      }

      goto LABEL_4;
    }

    if (a2 == 3)
    {
      goto LABEL_4;
    }

    v15 = 0xE900000000000067;
    v25 = a1;
    if (*(*(v6 + 48) + v9))
    {
      if (v14 == 1)
      {
        v16 = 0xE700000000000000;
        v17 = v13;
        v18 = a2;
        if (!a2)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v17 = 0xD000000000000013;
        v16 = v11;
        v18 = a2;
        if (!a2)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v17 = 0x6E696D7575636156;
      v16 = 0xE900000000000067;
      v18 = a2;
      if (!a2)
      {
        goto LABEL_25;
      }
    }

    v12 = v18 == 1 ? v13 : 0xD000000000000013;
    v15 = v18 == 1 ? 0xE700000000000000 : v11;
LABEL_25:
    if (v17 == v12 && v16 == v15)
    {
      break;
    }

    v23 = v11;
    v24 = v3;
    v19 = v13;
    v20 = sub_20DD65974();

    v13 = v19;
    v12 = 0x6E696D7575636156;
    v11 = v23;
    v3 = v24;
    a1 = v25;
    if (v20)
    {
      goto LABEL_33;
    }

LABEL_4:
    v9 = (v9 + 1) & v10;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  a1 = v25;
LABEL_33:
  result = 0;
  LOBYTE(a2) = *(*(v6 + 48) + v9);
LABEL_34:
  *a1 = a2;
  return result;
}

uint64_t sub_20D9E188C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_20DD655C4();

    if (v9)
    {

      sub_20D9D7510(0, &qword_27C843958, off_277DEFC90);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_20DD655B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20D9E3978(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_20D9F7160(v20 + 1);
    }

    v18 = v8;
    sub_20D9F96FC();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_20D9D7510(0, &qword_27C843958, off_277DEFC90);
  v11 = sub_20DD65444();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_20D9E5014(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20DD65454();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_20D9E1AC4(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_20DD655C4();

    if (v9)
    {

      sub_20D9D7510(0, &unk_27C843940, off_277DEF398);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_20DD655B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20D9E3B68(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_20D9F7174(v20 + 1);
    }

    v18 = v8;
    sub_20D9F96FC();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_20D9D7510(0, &unk_27C843940, off_277DEF398);
  v11 = sub_20DD65444();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_20D9E51A4(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20DD65454();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_20D9E1CFC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_20DD655C4();

    if (v9)
    {

      sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_20DD655B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20D9E3D58(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_20D9F7188(v20 + 1);
    }

    v18 = v8;
    sub_20D9F96FC();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
  v11 = sub_20DD65444();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_20D9E5334(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20DD65454();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_20D9E1F34(void *a1, void *a2)
{
  v4 = *v2;
  sub_20DD65A64();
  sub_20DD65A84();
  if (a2)
  {
    v5 = a2;
    sub_20DD65464();
  }

  v6 = sub_20DD65AA4();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v16 = a2;
    sub_20D9E54C4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    *a1 = a2;
    return 1;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = *(*(v4 + 48) + 8 * v8);
    if (!v10)
    {
      break;
    }

    if (a2)
    {
      sub_20D9D7510(0, &unk_280E020A0, off_277DEF390);
      v11 = a2;
      v12 = v10;
      v13 = sub_20DD65454();

      if (v13)
      {

        v14 = *(*(v4 + 48) + 8 * v8);
        goto LABEL_13;
      }
    }

LABEL_6:
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (a2)
  {
    goto LABEL_6;
  }

  v14 = 0;
LABEL_13:
  *a1 = v14;
  v18 = v14;
  return 0;
}

uint64_t sub_20D9E20DC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20DD64674();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20D9EBA28(&qword_27C8438A0, 255, MEMORY[0x277D17688], MEMORY[0x277D17690]);
  v33 = a2;
  v11 = sub_20DD64E24();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_20D9EBA28(&qword_27C8438A8, 255, MEMORY[0x277D17688], MEMORY[0x277D17698]);
      v21 = sub_20DD64E64();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_20D9E56A4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20D9E23C4(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_20DD655C4();

    if (v9)
    {

      sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_20DD655B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20D9E3F48(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_20D9F776C(v20 + 1);
    }

    v18 = v8;
    sub_20D9F96FC();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
  v11 = sub_20DD65444();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_20D9E5974(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20DD65454();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_20D9E25FC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_20DD655C4();

    if (v9)
    {

      sub_20D9D7510(0, &unk_280E01EE0, 0x277CD1D88);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_20DD655B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20D9E4138(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_20D9F7780(v20 + 1);
    }

    v18 = v8;
    sub_20D9F96FC();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_20D9D7510(0, &unk_280E01EE0, 0x277CD1D88);
  v11 = sub_20DD65444();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_20D9E5B04(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20DD65454();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_20D9E2834(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_20DD63744();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v5;
  sub_20D9EBA28(&qword_280E02290, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v38 = a2;
  v14 = sub_20DD64E24();
  v15 = v13 + 56;
  v36 = v13 + 56;
  v37 = v13;
  v16 = -1 << *(v13 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v33 = v5;
    v34 = a1;
    v35 = ~v16;
    v32 = v10;
    v20 = *(v10 + 16);
    v19 = v10 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v31[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v12, *(v37 + 48) + v21 * v17, v9);
      sub_20D9EBA28(&qword_280E02288, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v24 = sub_20DD64E64();
      v25 = *v22;
      (*v22)(v12, v9);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v35;
      v18 = v23;
      if (((*(v36 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v6 = v33;
        a1 = v34;
        v10 = v32;
        goto LABEL_7;
      }
    }

    v25(v38, v9);
    v23(v34, *(v37 + 48) + v21 * v17, v9);
    return 0;
  }

  else
  {
    v18 = *(v10 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v38;
    v18(v12, v38, v9);
    v39 = *v6;
    sub_20D9E5C94(v12, v17, isUniquelyReferenced_nonNull_native, v28, v29);
    *v6 = v39;
    (*(v10 + 32))(a1, v27, v9);
    return 1;
  }
}

uint64_t sub_20D9E2B1C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_20DD655C4();

    if (v9)
    {

      type metadata accessor for MatterAccessoryLikeItem(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_20DD655B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20D9E4328(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_20D9F7AF0(v20 + 1);
    }

    v18 = v8;
    sub_20D9F96FC();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for MatterAccessoryLikeItem(0);
  v11 = sub_20DD65444();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_20D9E5F64(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20DD65454();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_20D9E2D34(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20DD63FE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20D9EBA28(&qword_27C844380, 255, MEMORY[0x277D15B60], MEMORY[0x277D15B68]);
  v33 = a2;
  v11 = sub_20DD64E24();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_20D9EBA28(&qword_27C8434C0, 255, MEMORY[0x277D15B60], MEMORY[0x277D15B70]);
      v21 = sub_20DD64E64();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_20D9E60E4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20D9E301C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_20DD655C4();

    if (v9)
    {

      sub_20D9D7510(0, &unk_27C843860, off_277DEFE38);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_20DD655B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20D9E4508(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_20D9F7E60(v20 + 1);
    }

    v18 = v8;
    sub_20D9F96FC();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_20D9D7510(0, &unk_27C843860, off_277DEFE38);
  v11 = sub_20DD65444();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_20D9E63B4(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20DD65454();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_20D9E3254(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_20DD64EB4();
  sub_20DD65A64();
  sub_20DD64F24();
  v7 = sub_20DD65AA4();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_20DD64EB4();
      v13 = v12;
      if (v11 == sub_20DD64EB4() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_20DD65974();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_20D9E6544(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_20D9E3400(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_20DD65A64();
  sub_20DD64F24();
  v8 = sub_20DD65AA4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_20DD65974() & 1) != 0)
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

    sub_20D9E672C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_20D9E3550(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_20DD655C4();

    if (v9)
    {

      sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_20DD655B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20D9E46F8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_20D9F8350(v20 + 1);
    }

    v18 = v8;
    sub_20D9F96FC();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
  v11 = sub_20DD65444();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_20D9E68AC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20DD65454();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_20D9E3788(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843978, &qword_20DD93FE0);
    v2 = sub_20DD656C4();
    v15 = v2;
    sub_20DD65564();
    if (sub_20DD655F4())
    {
      sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_20D9F6AEC(v9 + 1);
        }

        v2 = v15;
        result = sub_20DD65444();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_20DD655F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20D9E3978(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843950, &qword_20DD93FC0);
    v2 = sub_20DD656C4();
    v15 = v2;
    sub_20DD65564();
    if (sub_20DD655F4())
    {
      sub_20D9D7510(0, &qword_27C843958, off_277DEFC90);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_20D9F7160(v9 + 1);
        }

        v2 = v15;
        result = sub_20DD65444();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_20DD655F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20D9E3B68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843BC0, &qword_20DD93FB8);
    v2 = sub_20DD656C4();
    v15 = v2;
    sub_20DD65564();
    if (sub_20DD655F4())
    {
      sub_20D9D7510(0, &unk_27C843940, off_277DEF398);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_20D9F7174(v9 + 1);
        }

        v2 = v15;
        result = sub_20DD65444();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_20DD655F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20D9E3D58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843920, &qword_20DD93FA8);
    v2 = sub_20DD656C4();
    v15 = v2;
    sub_20DD65564();
    if (sub_20DD655F4())
    {
      sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_20D9F7188(v9 + 1);
        }

        v2 = v15;
        result = sub_20DD65444();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_20DD655F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20D9E3F48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843888, &qword_20DD93F50);
    v2 = sub_20DD656C4();
    v15 = v2;
    sub_20DD65564();
    if (sub_20DD655F4())
    {
      sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_20D9F776C(v9 + 1);
        }

        v2 = v15;
        result = sub_20DD65444();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_20DD655F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20D9E4138(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843880, &qword_20DD93F48);
    v2 = sub_20DD656C4();
    v15 = v2;
    sub_20DD65564();
    if (sub_20DD655F4())
    {
      sub_20D9D7510(0, &unk_280E01EE0, 0x277CD1D88);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_20D9F7780(v9 + 1);
        }

        v2 = v15;
        result = sub_20DD65444();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_20DD655F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20D9E4328(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843850, &qword_20DD93F28);
    v2 = sub_20DD656C4();
    v15 = v2;
    sub_20DD65564();
    if (sub_20DD655F4())
    {
      type metadata accessor for MatterAccessoryLikeItem(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_20D9F7AF0(v9 + 1);
        }

        v2 = v15;
        result = sub_20DD65444();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_20DD655F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20D9E4508(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843B80, &qword_20DD93F38);
    v2 = sub_20DD656C4();
    v15 = v2;
    sub_20DD65564();
    if (sub_20DD655F4())
    {
      sub_20D9D7510(0, &unk_27C843860, off_277DEFE38);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_20D9F7E60(v9 + 1);
        }

        v2 = v15;
        result = sub_20DD65444();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_20DD655F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20D9E46F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843820, &qword_20DD93F08);
    v2 = sub_20DD656C4();
    v15 = v2;
    sub_20DD65564();
    if (sub_20DD655F4())
    {
      sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_20D9F8350(v9 + 1);
        }

        v2 = v15;
        result = sub_20DD65444();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_20DD655F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

void sub_20D9E48E8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F6AEC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20D9E71B0(&qword_27C843978, &qword_20DD93FE0);
      goto LABEL_12;
    }

    sub_20D9E8918(v6 + 1, &qword_27C843978, &qword_20DD93FE0);
  }

  v8 = *v3;
  v9 = sub_20DD65444();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20DD65454();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20DD659D4();
  __break(1u);
}

uint64_t sub_20D9E4A78(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_20DD641F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F6B00(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_20D9E6CCC(MEMORY[0x277D16340], qword_27C843BD0, &qword_20DD94010);
      goto LABEL_12;
    }

    sub_20D9E72F0(v10 + 1);
  }

  v12 = *v3;
  sub_20D9EBA28(&qword_27C843998, 255, MEMORY[0x277D16340], MEMORY[0x277D16358]);
  v13 = sub_20DD64E24();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_20D9EBA28(&unk_27C8439A0, 255, MEMORY[0x277D16340], MEMORY[0x277D16368]);
      v21 = sub_20DD64E64();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20DD659D4();
  __break(1u);
  return result;
}

uint64_t sub_20D9E4D48(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_20D9F6E5C(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_20D9E6A3C();
        goto LABEL_39;
      }

      sub_20D9E7610(v7 + 1);
    }

    v9 = *v3;
    sub_20DD65A64();
    sub_20DA02910(v23, v6);
    result = sub_20DD65AA4();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(v9 + 48) + a2);
        if (v12 == 5)
        {
          if (v6 == 5)
          {
            goto LABEL_43;
          }

          goto LABEL_11;
        }

        if (v12 == 4)
        {
          if (v6 == 4)
          {
            goto LABEL_43;
          }

          goto LABEL_11;
        }

        if ((v6 & 0xFE) == 4)
        {
          goto LABEL_11;
        }

        if (v12 == 3)
        {
          if (v6 == 3)
          {
            goto LABEL_43;
          }

          goto LABEL_11;
        }

        if (v6 == 3)
        {
          goto LABEL_11;
        }

        if (*(*(v9 + 48) + a2))
        {
          if (v12 == 1)
          {
            v13 = 0xE700000000000000;
            v14 = 0x676E6970706F4DLL;
            v15 = v6;
            if (v6)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v14 = 0xD000000000000013;
            v13 = 0x800000020DD97E80;
            v15 = v6;
            if (v6)
            {
LABEL_26:
              if (v15 == 1)
              {
                v16 = 0x676E6970706F4DLL;
              }

              else
              {
                v16 = 0xD000000000000013;
              }

              if (v15 == 1)
              {
                v17 = 0xE700000000000000;
              }

              else
              {
                v17 = 0x800000020DD97E80;
              }

              if (v14 != v16)
              {
                goto LABEL_37;
              }

              goto LABEL_36;
            }
          }
        }

        else
        {
          v14 = 0x6E696D7575636156;
          v13 = 0xE900000000000067;
          v15 = v6;
          if (v6)
          {
            goto LABEL_26;
          }
        }

        v17 = 0xE900000000000067;
        if (v14 != 0x6E696D7575636156)
        {
          goto LABEL_37;
        }

LABEL_36:
        if (v13 == v17)
        {
          goto LABEL_42;
        }

LABEL_37:
        v18 = sub_20DD65974();

        if (v18)
        {
          goto LABEL_43;
        }

LABEL_11:
        a2 = (a2 + 1) & v11;
      }

      while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_39:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_42:

LABEL_43:
    result = sub_20DD659D4();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v22;
  }

  return result;
}

void sub_20D9E5014(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F7160(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20D9E71B0(&qword_27C843950, &qword_20DD93FC0);
      goto LABEL_12;
    }

    sub_20D9E8918(v6 + 1, &qword_27C843950, &qword_20DD93FC0);
  }

  v8 = *v3;
  v9 = sub_20DD65444();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_20D9D7510(0, &qword_27C843958, off_277DEFC90);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20DD65454();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20DD659D4();
  __break(1u);
}

void sub_20D9E51A4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F7174(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20D9E71B0(&unk_27C843BC0, &qword_20DD93FB8);
      goto LABEL_12;
    }

    sub_20D9E8918(v6 + 1, &unk_27C843BC0, &qword_20DD93FB8);
  }

  v8 = *v3;
  v9 = sub_20DD65444();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_20D9D7510(0, &unk_27C843940, off_277DEF398);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20DD65454();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20DD659D4();
  __break(1u);
}

void sub_20D9E5334(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F7188(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20D9E71B0(&unk_27C843920, &qword_20DD93FA8);
      goto LABEL_12;
    }

    sub_20D9E8918(v6 + 1, &unk_27C843920, &qword_20DD93FA8);
  }

  v8 = *v3;
  v9 = sub_20DD65444();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20DD65454();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20DD659D4();
  __break(1u);
}

void sub_20D9E54C4(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_20D9F719C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_20D9E6B7C();
      goto LABEL_18;
    }

    sub_20D9E78E4(v7 + 1);
  }

  v9 = *v3;
  sub_20DD65A64();
  sub_20DD65A84();
  if (a1)
  {
    v10 = a1;
    sub_20DD65464();
  }

  v11 = sub_20DD65AA4();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      if (v14)
      {
        if (a1)
        {
          sub_20D9D7510(0, &unk_280E020A0, off_277DEF390);
          v15 = a1;
          v16 = v14;
          v17 = sub_20DD65454();

          if (v17)
          {
LABEL_17:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843910, &qword_20DD93F98);
            sub_20DD659D4();
            __break(1u);
            break;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_17;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }
}

uint64_t sub_20D9E56A4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_20DD64674();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F7410(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_20D9E6CCC(MEMORY[0x277D17688], &qword_27C8438B0, &qword_20DD93F68);
      goto LABEL_12;
    }

    sub_20D9E7B2C(v10 + 1);
  }

  v12 = *v3;
  sub_20D9EBA28(&qword_27C8438A0, 255, MEMORY[0x277D17688], MEMORY[0x277D17690]);
  v13 = sub_20DD64E24();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_20D9EBA28(&qword_27C8438A8, 255, MEMORY[0x277D17688], MEMORY[0x277D17698]);
      v21 = sub_20DD64E64();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20DD659D4();
  __break(1u);
  return result;
}

void sub_20D9E5974(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F776C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20D9E71B0(&qword_27C843888, &qword_20DD93F50);
      goto LABEL_12;
    }

    sub_20D9E8918(v6 + 1, &qword_27C843888, &qword_20DD93F50);
  }

  v8 = *v3;
  v9 = sub_20DD65444();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20DD65454();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20DD659D4();
  __break(1u);
}

void sub_20D9E5B04(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F7780(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20D9E71B0(&qword_27C843880, &qword_20DD93F48);
      goto LABEL_12;
    }

    sub_20D9E8918(v6 + 1, &qword_27C843880, &qword_20DD93F48);
  }

  v8 = *v3;
  v9 = sub_20DD65444();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_20D9D7510(0, &unk_280E01EE0, 0x277CD1D88);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20DD65454();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20DD659D4();
  __break(1u);
}

uint64_t sub_20D9E5C94(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v37 = a1;
  v8 = sub_20DD63744();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*v5 + 16);
  v17 = *(*v5 + 24);
  v34 = v5;
  v35 = v9;
  if (v17 > v16 && (v6 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    sub_20D9F7794(v16 + 1);
  }

  else
  {
    if (v17 > v16)
    {
      sub_20D9E6CCC(MEMORY[0x277CC95F0], &unk_27C843830, &unk_20DD93F10);
      goto LABEL_12;
    }

    sub_20D9E7E4C(v16 + 1, v10, v11, v12, v13);
  }

  v18 = *v5;
  sub_20D9EBA28(&qword_280E02290, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v19 = sub_20DD64E24();
  v20 = v18 + 56;
  v36 = v18;
  v21 = -1 << *(v18 + 32);
  a2 = v19 & ~v21;
  if ((*(v18 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v22 = ~v21;
    v25 = *(v9 + 16);
    v24 = v9 + 16;
    v23 = v25;
    v26 = *(v24 + 56);
    do
    {
      v23(v15, *(v36 + 48) + v26 * a2, v8);
      sub_20D9EBA28(&qword_280E02288, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v27 = sub_20DD64E64();
      (*(v24 - 8))(v15, v8);
      if (v27)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v22;
    }

    while (((*(v20 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v28 = v35;
  v29 = *v34;
  *(v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v28 + 32))(*(v29 + 48) + *(v28 + 72) * a2, v37, v8);
  v31 = *(v29 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (!v32)
  {
    *(v29 + 16) = v33;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20DD659D4();
  __break(1u);
  return result;
}

void sub_20D9E5F64(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F7AF0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20D9E71B0(&unk_27C843850, &qword_20DD93F28);
      goto LABEL_12;
    }

    sub_20D9E8918(v6 + 1, &unk_27C843850, &qword_20DD93F28);
  }

  v8 = *v3;
  v9 = sub_20DD65444();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for MatterAccessoryLikeItem(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20DD65454();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20DD659D4();
  __break(1u);
}

uint64_t sub_20D9E60E4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_20DD63FE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F7B04(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_20D9E6CCC(MEMORY[0x277D15B60], &qword_27C843B70, &qword_20DD93F30);
      goto LABEL_12;
    }

    sub_20D9E816C(v10 + 1);
  }

  v12 = *v3;
  sub_20D9EBA28(&qword_27C844380, 255, MEMORY[0x277D15B60], MEMORY[0x277D15B68]);
  v13 = sub_20DD64E24();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_20D9EBA28(&qword_27C8434C0, 255, MEMORY[0x277D15B60], MEMORY[0x277D15B70]);
      v21 = sub_20DD64E64();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20DD659D4();
  __break(1u);
  return result;
}

void sub_20D9E63B4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F7E60(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20D9E71B0(&unk_27C843B80, &qword_20DD93F38);
      goto LABEL_12;
    }

    sub_20D9E8918(v6 + 1, &unk_27C843B80, &qword_20DD93F38);
  }

  v8 = *v3;
  v9 = sub_20DD65444();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_20D9D7510(0, &unk_27C843860, off_277DEFE38);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20DD65454();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20DD659D4();
  __break(1u);
}

uint64_t sub_20D9E6544(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_20D9F7E74(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_20D9E6F04();
      goto LABEL_16;
    }

    sub_20D9E848C(v7 + 1);
  }

  v9 = *v3;
  sub_20DD64EB4();
  sub_20DD65A64();
  sub_20DD64F24();
  v10 = sub_20DD65AA4();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for HFItemProviderInvalidationReason(0);
    do
    {
      v13 = sub_20DD64EB4();
      v15 = v14;
      if (v13 == sub_20DD64EB4() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_20DD65974();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_20DD659D4();
  __break(1u);
  return result;
}

void sub_20D9E672C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_20D9F80F0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_20D9E7054();
      goto LABEL_16;
    }

    sub_20D9E86E0(v8 + 1);
  }

  v10 = *v4;
  sub_20DD65A64();
  sub_20DD64F24();
  v11 = sub_20DD65AA4();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_20DD65974() & 1) != 0)
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
  sub_20DD659D4();
  __break(1u);
}

void sub_20D9E68AC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F8350(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20D9E71B0(&unk_27C843820, &qword_20DD93F08);
      goto LABEL_12;
    }

    sub_20D9E8918(v6 + 1, &unk_27C843820, &qword_20DD93F08);
  }

  v8 = *v3;
  v9 = sub_20DD65444();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20DD65454();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20DD659D4();
  __break(1u);
}

void *sub_20D9E6A3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843960, &qword_20DD93FC8);
  v2 = *v0;
  v3 = sub_20DD656A4();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_20D9E6B7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843BA0, &qword_20DD93FA0);
  v2 = *v0;
  v3 = sub_20DD656A4();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_20D9E6CCC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_20DD656A4();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

id sub_20D9E6F04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843B60, &qword_20DD93ED8);
  v2 = *v0;
  v3 = sub_20DD656A4();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void sub_20D9E7054()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843848, &qword_20DD93F20);
  v2 = *v0;
  v3 = sub_20DD656A4();
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

id sub_20D9E71B0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_20DD656A4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_20D9E72F0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_20DD641F4();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C843BD0, &qword_20DD94010);
  v7 = sub_20DD656B4();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_20D9EBA28(&qword_27C843998, 255, MEMORY[0x277D16340], MEMORY[0x277D16358]);
      result = sub_20DD64E24();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_20D9E7610(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843960, &qword_20DD93FC8);
  result = sub_20DD656B4();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_33:
    *v2 = v5;
    return result;
  }

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
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_20DD65A64();
    if (v16 == 5)
    {
      v17 = 1;
      goto LABEL_19;
    }

    if (v16 == 4)
    {
      v17 = 0;
LABEL_19:
      MEMORY[0x20F3269D0](v17);
      goto LABEL_20;
    }

    MEMORY[0x20F3269D0](2);
    sub_20DD65A84();
    if (v16 != 3)
    {
      sub_20DD64F24();
    }

LABEL_20:
    result = sub_20DD65AA4();
    v18 = -1 << *(v5 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v20);
        if (v24 != -1)
        {
          v12 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_35;
    }

    v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    *(*(v5 + 48) + v12) = v16;
    ++*(v5 + 16);
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v10)
    {

      v2 = v1;
      goto LABEL_33;
    }

    v15 = *(v3 + 56 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v9 = (v15 - 1) & v15;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_20D9E78E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843BA0, &qword_20DD93FA0);
  result = sub_20DD656B4();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_20DD65A64();
      sub_20DD65A84();
      if (v16)
      {
        v17 = v16;
        sub_20DD65464();
      }

      result = sub_20DD65AA4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_28;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_20D9E7B2C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_20DD64674();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8438B0, &qword_20DD93F68);
  v7 = sub_20DD656B4();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_20D9EBA28(&qword_27C8438A0, 255, MEMORY[0x277D17688], MEMORY[0x277D17690]);
      result = sub_20DD64E24();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_20D9E7E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = sub_20DD63744();
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843830, &unk_20DD93F10);
  v11 = sub_20DD656B4();
  result = v10;
  if (*(v10 + 16))
  {
    v32 = v5;
    v13 = 0;
    v14 = v10 + 56;
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v35 = v7 + 16;
    v36 = v7;
    v19 = v11 + 56;
    v33 = (v7 + 32);
    v34 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = *(v36 + 72);
      (*(v36 + 16))(v9, *(result + 48) + v24 * (v21 | (v13 << 6)), v37);
      sub_20D9EBA28(&qword_280E02290, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_20DD64E24();
      v25 = -1 << *(v11 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v19 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v19 + 8 * v27);
          if (v31 != -1)
          {
            v20 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v20 = __clz(__rbit64((-1 << v26) & ~*(v19 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v33)(*(v11 + 48) + v20 * v24, v9, v37);
      ++*(v11 + 16);
      result = v34;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v6 = v32;
        goto LABEL_26;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
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
    *v6 = v11;
  }

  return result;
}

uint64_t sub_20D9E816C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_20DD63FE4();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843B70, &qword_20DD93F30);
  v7 = sub_20DD656B4();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_20D9EBA28(&qword_27C844380, 255, MEMORY[0x277D15B60], MEMORY[0x277D15B68]);
      result = sub_20DD64E24();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_20D9E848C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843B60, &qword_20DD93ED8);
  result = sub_20DD656B4();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_20DD64EB4();
      sub_20DD65A64();
      v18 = v17;
      sub_20DD64F24();
      v19 = sub_20DD65AA4();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_20D9E86E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843848, &qword_20DD93F20);
  result = sub_20DD656B4();
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
      sub_20DD65A64();

      sub_20DD64F24();
      result = sub_20DD65AA4();
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

uint64_t sub_20D9E8918(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_20DD656B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_20DD65444();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_20D9E8B24(unint64_t a1, unint64_t a2)
{
  sub_20D9D7510(0, &qword_280E01EF0, 0x277CD1A60);
  if (a2 >> 62)
  {
    v4 = sub_20DD65854();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_20DD65704();
    v6 = 0xD000000000000046;
    v5 = 0x800000020DD97EF0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_20DD65704();
  v5 = 0x800000020DD97EA0;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x20F325E90](v6, v5);
  v8 = sub_20DD65B04();
  MEMORY[0x20F325E90](v8);

  MEMORY[0x20F325E90](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_20DD65B04();
  MEMORY[0x20F325E90](v9);

  result = sub_20DD65824();
  __break(1u);
  return result;
}

uint64_t sub_20D9E8D00(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_20DA73C60(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_20D9E8D7C(v6);
  return sub_20DD65764();
}

uint64_t sub_20D9E8D7C(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_20DD65924();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
        v6 = sub_20DD65034();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_20D9E900C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_20D9E8E90(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20D9E8E90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 name];
      v11 = sub_20DD64EB4();
      v13 = v12;

      v14 = [v9 name];
      v15 = sub_20DD64EB4();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_20DD65974();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_20D9E900C(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_20D9E980C((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_20DA73550(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_20DA734C4(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_20DA73550(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 name];
      v16 = sub_20DD64EB4();
      v18 = v17;

      v19 = [v14 name];
      v20 = sub_20DD64EB4();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = sub_20DD65974();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 name];
          v5 = sub_20DD64EB4();
          v29 = v28;

          v30 = [v26 name];
          v31 = sub_20DD64EB4();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = sub_20DD65974();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_20D9E014C(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_20D9E014C((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_20D9E980C((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_20DA73550(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_20DA734C4(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 name];
    v5 = sub_20DD64EB4();
    v51 = v50;

    v52 = [v48 name];
    v53 = sub_20DD64EB4();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = sub_20DD65974();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}