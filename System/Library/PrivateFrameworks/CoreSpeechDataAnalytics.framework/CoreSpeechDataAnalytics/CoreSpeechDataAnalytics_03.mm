void sub_24791F32C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_24794EEF4();
  v2 = [v0 initWithSuiteName_];

  qword_27EE57500 = v2;
}

uint64_t static DataAnalyticsController.dataCollectionDefaults.getter()
{
  if (qword_27EE571B8 != -1)
  {
    swift_once();
  }

  v0 = qword_27EE57500;
  v1 = qword_27EE57500;
  return v0;
}

id DataAnalyticsController.init(locale:fbfBundleId:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (qword_27EE571B8 != -1)
  {
    swift_once();
  }

  v8 = qword_27EE57500;
  if (qword_27EE57500)
  {
    v9 = qword_27EE57500;
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  }

  v10 = type metadata accessor for Utils();
  v20 = type metadata accessor for DataAnalyticsController();
  v11 = objc_allocWithZone(v20);
  v12 = &v11[OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_samplingUtils];
  *v12 = v10;
  v12[1] = &off_285985D70;
  *&v11[OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_policyConfigUserDefaults] = v9;
  v13 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v14 = v8;
  v15 = v9;
  v22 = byte_285985048;
  if (sub_247918304(&v22, a1, a2, v15, a3, a4, v10, &off_285985D70, 0))
  {

    MEMORY[0x24C1AE560](v16);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24794F084();
    }

    sub_24794F0A4();

    v13 = v23;
  }

  v22 = byte_285985049;
  if (sub_247918304(&v22, a1, a2, v15, a3, a4, v10, &off_285985D70, 0))
  {

    MEMORY[0x24C1AE560](v17);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24794F084();
    }

    sub_24794F0A4();

    v13 = v23;
  }

  *&v11[OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_availableCollectionManagers] = v13;
  v21.receiver = v11;
  v21.super_class = v20;
  v18 = objc_msgSendSuper2(&v21, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v18;
}

id DataAnalyticsController.__allocating_init(policyConfigUserDefaults:locale:fbfBundleId:isMeDevice:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  v12 = type metadata accessor for Utils();
  v24 = type metadata accessor for DataAnalyticsController();
  v13 = objc_allocWithZone(v24);
  v14 = &v13[OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_samplingUtils];
  *v14 = v12;
  v14[1] = &off_285985D70;
  *&v13[OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_policyConfigUserDefaults] = a1;
  v15 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F90];
  v16 = a1;
  v27 = byte_285985070;
  v25 = a3;
  v17 = a3;
  v18 = a4;
  v19 = v16;
  if (sub_247918304(&v27, a2, v17, v16, v18, a5, v12, &off_285985D70, a6))
  {

    MEMORY[0x24C1AE560](v20);
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24794F084();
    }

    sub_24794F0A4();

    v15 = v28;
  }

  v27 = byte_285985071;
  if (sub_247918304(&v27, a2, v25, v19, v18, a5, v12, &off_285985D70, a6 & 1))
  {

    MEMORY[0x24C1AE560](v21);
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24794F084();
    }

    sub_24794F0A4();

    v15 = v28;
  }

  *&v13[OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_availableCollectionManagers] = v15;
  v26.receiver = v13;
  v26.super_class = v24;
  v22 = objc_msgSendSuper2(&v26, sel_init);

  return v22;
}

id DataAnalyticsController.__allocating_init(dataCollectionTypes:policyConfigUserDefaults:locale:fbfBundleId:isMeDevice:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  v12 = type metadata accessor for Utils();
  v24.super_class = type metadata accessor for DataAnalyticsController();
  v13 = objc_allocWithZone(v24.super_class);
  v14 = &v13[OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_samplingUtils];
  *v14 = v12;
  v14[1] = &off_285985D70;
  v24.receiver = v13;
  *&v13[OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_policyConfigUserDefaults] = a2;
  v29 = MEMORY[0x277D84F90];
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = (a1 + 32);
    v17 = a2;
    v18 = MEMORY[0x277D84F90];
    do
    {
      v19 = *v16++;
      v28 = v19;
      if (sub_247918304(&v28, a3, a4, v17, a5, a6, v12, &off_285985D70, a7 & 1))
      {

        MEMORY[0x24C1AE560](v20);
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24794F084();
        }

        sub_24794F0A4();

        v18 = v29;
      }

      --v15;
    }

    while (v15);
  }

  else
  {
    v21 = a2;
    v18 = MEMORY[0x277D84F90];
  }

  *(v24.receiver + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_availableCollectionManagers) = v18;
  v27 = v24;
  v22 = objc_msgSendSuper2(&v27, sel_init);

  return v22;
}

uint64_t sub_24791FB70(uint64_t result)
{
  v12 = result;
  v2 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_availableCollectionManagers);
  if (v2 >> 62)
  {
    result = sub_24794F414();
    v3 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_19:
    v4 = 0;
    return v4 & 1;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v3 >= 1)
  {

    v4 = 0;
    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1AE890](v5, v2);
        if ((v4 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);

        if ((v4 & 1) == 0)
        {
LABEL_11:
          swift_beginAccess();
          sub_2478E9680(v6 + 136, &v13, &qword_27EE574C0, &unk_247951550);
          if (v14)
          {
            sub_2478E2F88(&v13, v16);
            sub_247917728(v6 + 16, &v13);
            v7 = v14;
            v8 = v15;
            __swift_project_boxed_opaque_existential_1(&v13, v14);
            v9 = (*(v8 + 8))(v7, v8);
            __swift_destroy_boxed_opaque_existential_0(&v13);
            if (v9)
            {
              v10 = v17;
              v11 = v18;
              __swift_project_boxed_opaque_existential_1(v16, v17);
              v4 = (*(v11 + 8))(v12, v10, v11);
            }

            else
            {
              v4 = 0;
            }

            __swift_destroy_boxed_opaque_existential_0(v16);
          }

          else
          {

            sub_2478E9620(&v13, &qword_27EE574C0, &unk_247951550);
            v4 = 0;
          }

          goto LABEL_6;
        }
      }

      v4 = 1;
LABEL_6:
      if (v3 == ++v5)
      {

        return v4 & 1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24791FDCC(uint64_t result, uint64_t a2)
{
  v10 = result;
  v3 = *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_availableCollectionManagers);
  if (v3 >> 62)
  {
    result = sub_24794F414();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_16:
    v5 = 0;
    return v5 & 1;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v4 >= 1)
  {

    v5 = 0;
    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1AE890](v6, v3);
        if ((v5 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);

        if ((v5 & 1) == 0)
        {
LABEL_11:
          swift_beginAccess();
          sub_2478E9680(v7 + 136, &v12, &qword_27EE574C0, &unk_247951550);
          if (v13)
          {
            sub_2478E2F88(&v12, v14);
            v9 = v15;
            v8 = v16;
            __swift_project_boxed_opaque_existential_1(v14, v15);
            v5 = (*(v8 + 16))(v10, a2, v9, v8);

            __swift_destroy_boxed_opaque_existential_0(v14);
          }

          else
          {

            sub_2478E9620(&v12, &qword_27EE574C0, &unk_247951550);
            v5 = 0;
          }

          goto LABEL_6;
        }
      }

      v5 = 1;
LABEL_6:
      if (v4 == ++v6)
      {

        return v5 & 1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2479200BC(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v3[2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v3[3] = swift_task_alloc();
  v6 = sub_24794EBB4();
  v3[4] = v6;
  v3[5] = *(v6 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  type metadata accessor for DataAnalyticsProcessResult(0);
  v7 = swift_task_alloc();
  v3[8] = v7;
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_24792023C;

  return sub_247920EB4(v7, a1, v4);
}

uint64_t sub_24792023C()
{

  return MEMORY[0x2822009F8](sub_247920338, 0, 0);
}

uint64_t sub_247920338()
{
  v33 = v0;
  sub_247928418();
  if (v1)
  {
    v2 = v0[4];
    v3 = v0[5];
    v4 = v0[3];
    sub_2478E9680(v0[8], v4, &qword_27EE572D0, &unk_2479504E0);
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_2478E9620(v0[3], &qword_27EE572D0, &unk_2479504E0);
    }

    else
    {
      (*(v0[5] + 32))(v0[7], v0[3], v0[4]);
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v6 = v0[6];
      v5 = v0[7];
      v8 = v0[4];
      v7 = v0[5];
      v9 = sub_24794ED34();
      __swift_project_value_buffer(v9, qword_27EE58DF8);
      (*(v7 + 16))(v6, v5, v8);
      v10 = sub_24794ED14();
      v11 = sub_24794F154();
      v12 = os_log_type_enabled(v10, v11);
      v13 = v0[5];
      v14 = v0[6];
      v15 = v0[4];
      if (v12)
      {
        v16 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v32 = v31;
        *v16 = 136315138;
        sub_247927CAC(&qword_27EE57288, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v17 = sub_24794F4D4();
        v19 = v18;
        v20 = *(v13 + 8);
        v20(v14, v15);
        v21 = sub_247924380(v17, v19, &v32);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_2478E1000, v10, v11, "#DataAnalyticsController cleanup audio on and before date: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x24C1AF180](v31, -1, -1);
        MEMORY[0x24C1AF180](v16, -1, -1);
      }

      else
      {

        v20 = *(v13 + 8);
        v20(v14, v15);
      }

      (*(*(v0[2] + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_samplingUtils + 8) + 120))(v0[7]);
      v20(v0[7], v0[4]);
    }
  }

  DataAnalyticsProcessResult.getFinishedStatus()();
  if (v32 == 2)
  {
    v22 = 0;
LABEL_14:
    v23 = v0[8];
    sub_247928640();
    v25 = v24;
    v27 = v26;
    sub_2478E95CC();
    swift_allocError();
    *v28 = v25;
    *(v28 + 8) = v27;
    *(v28 + 16) = v22;
    swift_willThrow();
    sub_24792580C(v23);

    v29 = v0[1];
    goto LABEL_16;
  }

  DataAnalyticsProcessResult.getFinishedStatus()();
  if (v32 == 1)
  {
    v22 = 1;
    goto LABEL_14;
  }

  sub_24792580C(v0[8]);

  v29 = v0[1];
LABEL_16:

  return v29();
}

uint64_t sub_247920834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v7 = v4;
  v7[2] = a1;
  v7[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v7[4] = swift_task_alloc();
  v9 = sub_24794EBB4();
  v7[5] = v9;
  v7[6] = *(v9 - 8);
  v7[7] = swift_task_alloc();
  v7[8] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[9] = v10;
  *v10 = v7;
  v10[1] = sub_247920994;

  return sub_247920EB4(a1, a2, v5);
}

uint64_t sub_247920994()
{

  return MEMORY[0x2822009F8](sub_247920A90, 0, 0);
}

uint64_t sub_247920A90()
{
  v26 = v0;
  sub_247928418();
  if (v1)
  {
    v2 = v0[5];
    v3 = v0[6];
    v4 = v0[4];
    sub_2478E9680(v0[2], v4, &qword_27EE572D0, &unk_2479504E0);
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_2478E9620(v0[4], &qword_27EE572D0, &unk_2479504E0);
    }

    else
    {
      (*(v0[6] + 32))(v0[8], v0[4], v0[5]);
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v6 = v0[7];
      v5 = v0[8];
      v8 = v0[5];
      v7 = v0[6];
      v9 = sub_24794ED34();
      __swift_project_value_buffer(v9, qword_27EE58DF8);
      (*(v7 + 16))(v6, v5, v8);
      v10 = sub_24794ED14();
      v11 = sub_24794F154();
      v12 = os_log_type_enabled(v10, v11);
      v13 = v0[6];
      v14 = v0[7];
      v15 = v0[5];
      if (v12)
      {
        v16 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v16 = 136315138;
        sub_247927CAC(&qword_27EE57288, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v17 = sub_24794F4D4();
        v19 = v18;
        v20 = *(v13 + 8);
        v20(v14, v15);
        v21 = sub_247924380(v17, v19, &v25);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_2478E1000, v10, v11, "#DataAnalyticsController cleanup audio on and before date: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x24C1AF180](v24, -1, -1);
        MEMORY[0x24C1AF180](v16, -1, -1);
      }

      else
      {

        v20 = *(v13 + 8);
        v20(v14, v15);
      }

      (*(*(v0[3] + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_samplingUtils + 8) + 120))(v0[8]);
      v20(v0[8], v0[5]);
    }
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_247920EB4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 480) = a2;
  *(v4 + 488) = v3;
  *(v4 + 616) = a3;
  *(v4 + 472) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  *(v4 + 496) = swift_task_alloc();
  *(v4 + 504) = type metadata accessor for DataAnalyticsProcessResult(0);
  *(v4 + 512) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247920F88, 0, 0);
}

void sub_247920F88()
{
  v46 = v0;
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[61];
  v4 = sub_24794EBB4();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = *(v2 + 20);
  v7 = MEMORY[0x277D84F90];
  *(v1 + v6) = MEMORY[0x277D84F90];
  sub_2478E9620(v1, &qword_27EE572D0, &unk_2479504E0);
  v5(v1, 1, 1, v4);
  v0[54] = v7;
  v8 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23DataAnalyticsController_availableCollectionManagers);
  if (v8 >> 62)
  {
LABEL_57:
    v9 = sub_24794F414();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    if (v9 < 1)
    {
      __break(1u);
LABEL_59:
      __break(1u);
      return;
    }

    v11 = 0;
    v44 = v9;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1AE890](v11, v8);
      }

      else
      {
        v12 = *(v8 + 8 * v11 + 32);
      }

      sub_247917728(v12 + 16, (v0 + 2));
      v13 = v0[5];
      v14 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
      (*(v14 + 40))(v13, v14);
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      sub_247917728(v12 + 96, (v0 + 7));
      v15 = v0[10];
      v16 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v15);
      (*(v16 + 88))(v15, v16);
      __swift_destroy_boxed_opaque_existential_0(v0 + 7);
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v17 = sub_24794ED34();
      __swift_project_value_buffer(v17, qword_27EE58DF8);

      v18 = sub_24794ED14();
      v19 = sub_24794F154();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v45 = v21;
        *v20 = 136315138;
        v22 = *(v12 + 184);
        v23 = 0xD000000000000013;
        if (v22 == 2)
        {
          v23 = 0xD000000000000011;
        }

        v24 = 0x80000002479525A0;
        if (v22 == 2)
        {
          v24 = 0x8000000247952580;
        }

        v25 = 0xD000000000000015;
        if (*(v12 + 184))
        {
          v25 = 0x72506E6F74747562;
        }

        v26 = 0xEE00435346737365;
        if (!*(v12 + 184))
        {
          v26 = 0x8000000247952550;
        }

        if (*(v12 + 184) <= 1u)
        {
          v27 = v25;
        }

        else
        {
          v27 = v23;
        }

        if (*(v12 + 184) <= 1u)
        {
          v28 = v26;
        }

        else
        {
          v28 = v24;
        }

        v29 = sub_247924380(v27, v28, &v45);

        *(v20 + 4) = v29;
        _os_log_impl(&dword_2478E1000, v18, v19, "#DataAnalyticsController: Successfully loaded sampling info for %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x24C1AF180](v21, -1, -1);
        MEMORY[0x24C1AF180](v20, -1, -1);

        v9 = v44;
      }

      else
      {
      }

      MEMORY[0x24C1AE560](v30);
      if (*((v0[54] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[54] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24794F084();
      }

      sub_24794F0A4();

      v31 = v0[54];
      ++v11;
    }

    while (v9 != v11);

    v10 = MEMORY[0x277D84F90];
    if (!(v31 >> 62))
    {
LABEL_33:
      v8 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_34;
      }

      goto LABEL_52;
    }
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_33;
    }
  }

  v8 = sub_24794F414();
  if (v8)
  {
LABEL_34:
    if (v8 >= 1)
    {
      v32 = 0;
      v33 = v31 & 0xC000000000000001;
      do
      {
        if (v33)
        {
          v34 = MEMORY[0x24C1AE890](v32, v31);
        }

        else
        {
          v34 = *(v31 + 8 * v32 + 32);
        }

        ++v32;
        sub_247917728(v34 + 16, (v0 + 12));
        v35 = v0[15];
        v36 = v0[16];
        __swift_project_boxed_opaque_existential_1(v0 + 12, v35);
        (*(v36 + 16))(v35, v36);

        __swift_destroy_boxed_opaque_existential_0(v0 + 12);
      }

      while (v8 != v32);
      v37 = 0;
      v45 = v10;
      while (1)
      {
        if (v33)
        {
          v38 = MEMORY[0x24C1AE890](v37, v31);
        }

        else
        {
          if (v37 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_57;
          }

          v38 = *(v31 + 8 * v37 + 32);
        }

        sub_247917728(v38 + 16, (v0 + 17));
        v39 = v0[20];
        v40 = v0[21];
        __swift_project_boxed_opaque_existential_1(v0 + 17, v39);
        v41 = (*(v40 + 8))(v39, v40);
        __swift_destroy_boxed_opaque_existential_0(v0 + 17);
        if (v41)
        {
          sub_24794F3A4();
          sub_24794F3D4();
          sub_24794F3E4();
          sub_24794F3B4();
        }

        else
        {
        }

        if (v8 == ++v37)
        {
          v42 = v45;
          goto LABEL_53;
        }
      }
    }

    goto LABEL_59;
  }

LABEL_52:
  v42 = MEMORY[0x277D84F90];
LABEL_53:

  v0[65] = v42;
  v43 = swift_task_alloc();
  v0[66] = v43;
  *v43 = v0;
  v43[1] = sub_24792185C;

  sub_247925B80(v42);
}

uint64_t sub_24792185C(uint64_t a1)
{
  *(*v1 + 536) = a1;

  return MEMORY[0x2822009F8](sub_24792197C, 0, 0);
}

uint64_t sub_24792197C()
{
  v30 = v0;
  v1 = *(v0 + 536);
  if (v1 >> 62)
  {
    v2 = sub_24794F414();
    *(v0 + 544) = v2;
    if (v2)
    {
LABEL_3:
      v3 = *(v0 + 512);
      v4 = *(v0 + 496);
      *(v0 + 552) = sub_247923368(v4, *(v0 + 480), *(v0 + 616));
      sub_2479096C8(v4, v3);
      if (v2 < 1)
      {
        __break(1u);
      }

      else
      {
        v5 = *(v0 + 536);
        *(v0 + 560) = 0;
        if ((v5 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x24C1AE890](0);
        }

        else
        {
          v3 = *(v5 + 32);
        }

        *(v0 + 568) = v3;
        if (qword_27EE571C0 == -1)
        {
          goto LABEL_8;
        }
      }

      swift_once();
LABEL_8:
      v6 = sub_24794ED34();
      *(v0 + 576) = __swift_project_value_buffer(v6, qword_27EE58DF8);

      v7 = sub_24794ED14();
      v8 = sub_24794F154();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v29 = v10;
        *v9 = 136315138;
        *(v0 + 464) = v3;
        type metadata accessor for CollectionManager();
        sub_247927CAC(&qword_27EE57538, type metadata accessor for CollectionManager, &unk_247951500);
        v11 = sub_24794F4D4();
        v13 = sub_247924380(v11, v12, &v29);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_2478E1000, v7, v8, "#DataAnalyticsController start processing Records for : %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x24C1AF180](v10, -1, -1);
        MEMORY[0x24C1AF180](v9, -1, -1);
      }

      *(v0 + 352) = 0;
      *(v0 + 360) = 0;
      sub_247917728(v3 + 16, v0 + 176);
      v14 = *(v0 + 200);
      v15 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v14);
      v16 = (*(v15 + 32))(v14, v15);
      __swift_destroy_boxed_opaque_existential_0((v0 + 176));
      if (v16)
      {
        sub_247917728(v3 + 96, v0 + 216);
        v17 = *(v0 + 240);
        v18 = *(v0 + 248);
        __swift_project_boxed_opaque_existential_1((v0 + 216), v17);
        v28 = (*(v18 + 64) + **(v18 + 64));
        v19 = swift_task_alloc();
        *(v0 + 584) = v19;
        *v19 = v0;
        v19[1] = sub_247921EAC;

        return v28(v17, v18);
      }

      else
      {
        v21 = swift_task_alloc();
        *(v0 + 600) = v21;
        *v21 = v0;
        v21[1] = sub_247922710;
        v22 = *(v0 + 552);

        return sub_247911D74(v22);
      }
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 544) = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v23 = sub_24794ED34();
  __swift_project_value_buffer(v23, qword_27EE58DF8);
  v24 = sub_24794ED14();
  v25 = sub_24794F154();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2478E1000, v24, v25, "#DataAnalyticsController - no collection manager should sample", v26, 2u);
    MEMORY[0x24C1AF180](v26, -1, -1);
  }

  sub_247927C48(*(v0 + 512), *(v0 + 472));

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_247921EAC()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_247922060;
  }

  else
  {
    v2 = sub_247921FC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247921FC0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  v1 = swift_task_alloc();
  v0[75] = v1;
  *v1 = v0;
  v1[1] = sub_247922710;
  v2 = v0[69];

  return sub_247911D74(v2);
}

uint64_t sub_247922060()
{
  v41 = v0;
  v1 = *(v0 + 568);
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  *(v0 + 416) = 0;
  *(v0 + 424) = 0xE000000000000000;
  sub_24794F344();
  v2 = *(v0 + 424);
  *(v0 + 400) = *(v0 + 416);
  *(v0 + 408) = v2;
  if (*(v1 + 184) > 1u)
  {
    if (*(v1 + 184) == 2)
    {
      v3 = 0x8000000247952580;
      v4 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x80000002479525A0;
      v4 = 0xD000000000000013;
    }
  }

  else if (*(v1 + 184))
  {
    v3 = 0xEE00435346737365;
    v4 = 0x72506E6F74747562;
  }

  else
  {
    v3 = 0x8000000247952550;
    v4 = 0xD000000000000015;
  }

  v5 = *(v0 + 592);
  MEMORY[0x24C1AE4C0](v4, v3);

  MEMORY[0x24C1AE4C0](0xD00000000000002FLL, 0x8000000247956F00);
  *(v0 + 456) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
  sub_24794F3F4();
  v7 = *(v0 + 400);
  v6 = *(v0 + 408);
  swift_beginAccess();
  *(v0 + 352) = v7;
  *(v0 + 360) = v6;
  v8 = sub_24794ED14();
  v9 = sub_24794F164();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v40 = v11;
    *v10 = 136315138;

    v12 = sub_247924380(v7, v6, &v40);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_2478E1000, v8, v9, "#DataAnalyticsController: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1AF180](v11, -1, -1);
    MEMORY[0x24C1AF180](v10, -1, -1);
  }

  v13 = *(v0 + 592);
  v14 = *(v0 + 544);
  v15 = *(v0 + 560) + 1;
  v16 = *(*(v0 + 568) + 184);
  *(v0 + 256) = 0;
  *(v0 + 257) = v16;
  *(v0 + 264) = v7;
  *(v0 + 272) = v6;
  *(v0 + 280) = v13;

  sub_247928838((v0 + 256));

  if (v15 == v14)
  {
    v17 = *(v0 + 496);

    sub_2478E9620(v17, &qword_27EE572D0, &unk_2479504E0);
    sub_247927C48(*(v0 + 512), *(v0 + 472));

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 560) + 1;
    *(v0 + 560) = v20;
    v21 = *(v0 + 536);
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x24C1AE890]();
    }

    else
    {
      v22 = *(v21 + 8 * v20 + 32);
    }

    *(v0 + 568) = v22;
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v23 = sub_24794ED34();
    *(v0 + 576) = __swift_project_value_buffer(v23, qword_27EE58DF8);

    v24 = sub_24794ED14();
    v25 = sub_24794F154();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = v27;
      *v26 = 136315138;
      *(v0 + 464) = v22;
      type metadata accessor for CollectionManager();
      sub_247927CAC(&qword_27EE57538, type metadata accessor for CollectionManager, &unk_247951500);
      v28 = sub_24794F4D4();
      v30 = sub_247924380(v28, v29, &v40);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2478E1000, v24, v25, "#DataAnalyticsController start processing Records for : %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x24C1AF180](v27, -1, -1);
      MEMORY[0x24C1AF180](v26, -1, -1);
    }

    *(v0 + 352) = 0;
    *(v0 + 360) = 0;
    sub_247917728(v22 + 16, v0 + 176);
    v31 = *(v0 + 200);
    v32 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v31);
    v33 = (*(v32 + 32))(v31, v32);
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    if (v33)
    {
      sub_247917728(v22 + 96, v0 + 216);
      v34 = *(v0 + 240);
      v35 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v34);
      v39 = (*(v35 + 64) + **(v35 + 64));
      v36 = swift_task_alloc();
      *(v0 + 584) = v36;
      *v36 = v0;
      v36[1] = sub_247921EAC;

      return v39(v34, v35);
    }

    else
    {
      v37 = swift_task_alloc();
      *(v0 + 600) = v37;
      *v37 = v0;
      v37[1] = sub_247922710;
      v38 = *(v0 + 552);

      return sub_247911D74(v38);
    }
  }
}

uint64_t sub_247922710()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_247922CC0;
  }

  else
  {
    v2 = sub_247922824;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247922824()
{
  v28 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 560) + 1;
  v3 = *(*(v0 + 568) + 184);
  *(v0 + 256) = 1;
  *(v0 + 257) = v3;
  *(v0 + 272) = 0;
  *(v0 + 280) = 0;
  *(v0 + 264) = 0;
  sub_247928838((v0 + 256));

  if (v2 == v1)
  {
    v4 = *(v0 + 496);

    sub_2478E9620(v4, &qword_27EE572D0, &unk_2479504E0);
    sub_247927C48(*(v0 + 512), *(v0 + 472));

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 560) + 1;
    *(v0 + 560) = v7;
    v8 = *(v0 + 536);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C1AE890]();
    }

    else
    {
      v9 = *(v8 + 8 * v7 + 32);
    }

    *(v0 + 568) = v9;
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v10 = sub_24794ED34();
    *(v0 + 576) = __swift_project_value_buffer(v10, qword_27EE58DF8);

    v11 = sub_24794ED14();
    v12 = sub_24794F154();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 136315138;
      *(v0 + 464) = v9;
      type metadata accessor for CollectionManager();
      sub_247927CAC(&qword_27EE57538, type metadata accessor for CollectionManager, &unk_247951500);
      v15 = sub_24794F4D4();
      v17 = sub_247924380(v15, v16, &v27);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2478E1000, v11, v12, "#DataAnalyticsController start processing Records for : %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x24C1AF180](v14, -1, -1);
      MEMORY[0x24C1AF180](v13, -1, -1);
    }

    *(v0 + 352) = 0;
    *(v0 + 360) = 0;
    sub_247917728(v9 + 16, v0 + 176);
    v18 = *(v0 + 200);
    v19 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v18);
    v20 = (*(v19 + 32))(v18, v19);
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    if (v20)
    {
      sub_247917728(v9 + 96, v0 + 216);
      v21 = *(v0 + 240);
      v22 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v21);
      v26 = (*(v22 + 64) + **(v22 + 64));
      v23 = swift_task_alloc();
      *(v0 + 584) = v23;
      *v23 = v0;
      v23[1] = sub_247921EAC;

      return v26(v21, v22);
    }

    else
    {
      v24 = swift_task_alloc();
      *(v0 + 600) = v24;
      *v24 = v0;
      v24[1] = sub_247922710;
      v25 = *(v0 + 552);

      return sub_247911D74(v25);
    }
  }
}

uint64_t sub_247922CC0()
{
  v41 = v0;
  v1 = *(v0 + 568);
  *(v0 + 384) = 0;
  *(v0 + 392) = 0xE000000000000000;
  sub_24794F344();
  v2 = *(v0 + 392);
  *(v0 + 368) = *(v0 + 384);
  *(v0 + 376) = v2;
  if (*(v1 + 184) > 1u)
  {
    if (*(v1 + 184) == 2)
    {
      v3 = 0x8000000247952580;
      v4 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x80000002479525A0;
      v4 = 0xD000000000000013;
    }
  }

  else if (*(v1 + 184))
  {
    v3 = 0xEE00435346737365;
    v4 = 0x72506E6F74747562;
  }

  else
  {
    v3 = 0x8000000247952550;
    v4 = 0xD000000000000015;
  }

  v5 = *(v0 + 608);
  MEMORY[0x24C1AE4C0](v4, v3);

  MEMORY[0x24C1AE4C0](0xD000000000000027, 0x8000000247956ED0);
  *(v0 + 448) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
  sub_24794F3F4();
  v7 = *(v0 + 368);
  v6 = *(v0 + 376);
  swift_beginAccess();
  *(v0 + 352) = v7;
  *(v0 + 360) = v6;
  v8 = sub_24794ED14();
  v9 = sub_24794F164();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v40 = v11;
    *v10 = 136315138;

    v12 = sub_247924380(v7, v6, &v40);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_2478E1000, v8, v9, "#DataAnalyticsController: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1AF180](v11, -1, -1);
    MEMORY[0x24C1AF180](v10, -1, -1);
  }

  v13 = *(v0 + 608);
  v14 = *(v0 + 544);
  v15 = *(v0 + 560) + 1;
  v16 = *(*(v0 + 568) + 184);
  *(v0 + 256) = 0;
  *(v0 + 257) = v16;
  *(v0 + 264) = v7;
  *(v0 + 272) = v6;
  *(v0 + 280) = v13;

  sub_247928838((v0 + 256));

  if (v15 == v14)
  {
    v17 = *(v0 + 496);

    sub_2478E9620(v17, &qword_27EE572D0, &unk_2479504E0);
    sub_247927C48(*(v0 + 512), *(v0 + 472));

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 560) + 1;
    *(v0 + 560) = v20;
    v21 = *(v0 + 536);
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x24C1AE890]();
    }

    else
    {
      v22 = *(v21 + 8 * v20 + 32);
    }

    *(v0 + 568) = v22;
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v23 = sub_24794ED34();
    *(v0 + 576) = __swift_project_value_buffer(v23, qword_27EE58DF8);

    v24 = sub_24794ED14();
    v25 = sub_24794F154();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = v27;
      *v26 = 136315138;
      *(v0 + 464) = v22;
      type metadata accessor for CollectionManager();
      sub_247927CAC(&qword_27EE57538, type metadata accessor for CollectionManager, &unk_247951500);
      v28 = sub_24794F4D4();
      v30 = sub_247924380(v28, v29, &v40);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2478E1000, v24, v25, "#DataAnalyticsController start processing Records for : %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x24C1AF180](v27, -1, -1);
      MEMORY[0x24C1AF180](v26, -1, -1);
    }

    *(v0 + 352) = 0;
    *(v0 + 360) = 0;
    sub_247917728(v22 + 16, v0 + 176);
    v31 = *(v0 + 200);
    v32 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v31);
    v33 = (*(v32 + 32))(v31, v32);
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    if (v33)
    {
      sub_247917728(v22 + 96, v0 + 216);
      v34 = *(v0 + 240);
      v35 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v34);
      v39 = (*(v35 + 64) + **(v35 + 64));
      v36 = swift_task_alloc();
      *(v0 + 584) = v36;
      *v36 = v0;
      v36[1] = sub_247921EAC;

      return v39(v34, v35);
    }

    else
    {
      v37 = swift_task_alloc();
      *(v0 + 600) = v37;
      *v37 = v0;
      v37[1] = sub_247922710;
      v38 = *(v0 + 552);

      return sub_247911D74(v38);
    }
  }
}

unint64_t sub_247923368(uint64_t a1, uint64_t a2, int a3)
{
  v129 = a3;
  v123 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v115 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v120 = &v111 - v7;
  v8 = sub_24794EBB4();
  v127 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v119 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v118 = &v111 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v114 = &v111 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v128 = &v111 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v140 = &v111 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v111 - v20;
  MEMORY[0x28223BE20](v19);
  v134 = &v111 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57498, &unk_247951530);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v131 = &v111 - v27;
  if (qword_27EE571C0 != -1)
  {
LABEL_44:
    swift_once();
  }

  v28 = sub_24794ED34();
  v132 = __swift_project_value_buffer(v28, qword_27EE58DF8);
  v29 = sub_24794ED14();
  v30 = sub_24794F154();
  v31 = os_log_type_enabled(v29, v30);
  v136 = v26;
  if (v31)
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2478E1000, v29, v30, "#DatataAnalyticsController: randomRowsForEachDate", v32, 2u);
    v33 = v32;
    v26 = v136;
    MEMORY[0x24C1AF180](v33, -1, -1);
  }

  v34 = sub_2479270EC(a2);
  v122 = sub_24794E510(MEMORY[0x277D84F90]);
  v35 = v127 + 56;
  a2 = 1;
  v116 = *(v127 + 56);
  v116(v123, 1, 1, v8);
  v37 = 0;
  v38 = *(v34 + 64);
  v124 = v34 + 64;
  v126 = v34;
  v39 = 1 << *(v34 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v38;
  v42 = (v39 + 63) >> 6;
  v137 = (v35 - 40);
  v135 = (v35 - 24);
  v139 = (v35 - 48);
  v117 = v35;
  v121 = (v35 - 8);
  *&v36 = 136315138;
  v125 = v36;
  *&v36 = 134218242;
  v113 = v36;
  v133 = v21;
  v130 = v42;
LABEL_7:
  v43 = v37;
  while (1)
  {
    if (!v41)
    {
      if (v42 <= v43 + 1)
      {
        v45 = v43 + 1;
      }

      else
      {
        v45 = v42;
      }

      v46 = v45 - 1;
      while (1)
      {
        v44 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        if (v44 >= v42)
        {
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
          (*(*(v72 - 8) + 56))(v26, 1, 1, v72);
          v41 = 0;
          goto LABEL_20;
        }

        v41 = *(v124 + 8 * v44);
        ++v43;
        if (v41)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

    v44 = v43;
LABEL_19:
    v47 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v48 = v47 | (v44 << 6);
    v49 = v126;
    v50 = v127;
    v51 = v134;
    (*(v127 + 16))(v134, *(v126 + 48) + *(v127 + 72) * v48, v8);
    v52 = *(*(v49 + 56) + 8 * v48);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    v54 = *(v53 + 48);
    v55 = *(v50 + 32);
    v26 = v136;
    v55(v136, v51, v8);
    *&v26[v54] = v52;
    (*(*(v53 - 8) + 56))(v26, 0, 1, v53);

    v46 = v44;
    v21 = v133;
LABEL_20:
    v56 = v131;
    sub_247917674(v26, v131);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
    {
      break;
    }

    v138 = v46;
    v58 = *(v56 + *(v57 + 48));
    v59 = *v135;
    (*v135)(v21, v56, v8);
    type metadata accessor for Utils();
    v60 = v134;
    sub_24794EBA4();
    sub_247940B60(v60, v140);
    v61 = *v139;
    (*v139)(v60, v8);
    if (sub_24794EB84() & 1) == 0 || (v129)
    {
      v73 = v120;
      sub_2478E9680(v123, v120, &qword_27EE572D0, &unk_2479504E0);
      v74 = *v121;
      v75 = (*v121)(v73, 1, v8);
      sub_2478E9620(v73, &qword_27EE572D0, &unk_2479504E0);
      if (v75 == 1)
      {
        goto LABEL_32;
      }

      v76 = v115;
      sub_2478E9680(v123, v115, &qword_27EE572D0, &unk_2479504E0);
      if (v74(v76, 1, v8) == 1)
      {
        v77 = v114;
        sub_24794EB14();
        if (v74(v76, 1, v8) != 1)
        {
          sub_2478E9620(v76, &qword_27EE572D0, &unk_2479504E0);
        }
      }

      else
      {
        v78 = v114;
        v59(v114, v76, v8);
        v77 = v78;
      }

      v79 = sub_24794EB44();
      v61(v77, v8);
      if (v79)
      {
LABEL_32:
        v80 = v123;
        sub_2478E9620(v123, &qword_27EE572D0, &unk_2479504E0);
        v81 = *v137;
        (*v137)(v80, v140, v8);
        v116(v80, 0, 1, v8);
        v82 = v118;
        v81(v118, v133, v8);
        v83 = sub_24794ED14();
        v84 = sub_24794F154();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v112 = v85;
          v86 = swift_slowAlloc();
          v141[0] = v86;
          *v85 = v125;
          sub_247927CAC(&qword_27EE57288, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v87 = sub_24794F4D4();
          v89 = v88;
          v61(v82, v8);
          v90 = sub_247924380(v87, v89, v141);

          v91 = v112;
          *(v112 + 1) = v90;
          v92 = v91;
          _os_log_impl(&dword_2478E1000, v83, v84, "#DatataAnalyticsController: mostRecentDate set to %s for resutls processing", v91, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v86);
          MEMORY[0x24C1AF180](v86, -1, -1);
          MEMORY[0x24C1AF180](v92, -1, -1);
        }

        else
        {

          v61(v82, v8);
        }
      }

      v93 = v122;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v141[0] = v93;
      v21 = v133;
      sub_24794B954(v58, v133, isUniquelyReferenced_nonNull_native);
      v122 = v141[0];
      v95 = v119;
      (*v137)(v119, v140, v8);

      v96 = sub_24794ED14();
      v97 = sub_24794F154();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = v95;
        v100 = swift_slowAlloc();
        v141[0] = v100;
        *v98 = v113;
        LODWORD(v112) = v97;
        v101 = *(v58 + 16);

        *(v98 + 4) = v101;

        *(v98 + 12) = 2080;
        sub_247927CAC(&qword_27EE57288, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v102 = sub_24794F4D4();
        v104 = v103;
        v105 = v99;
        v21 = v133;
        v61(v105, v8);
        a2 = sub_247924380(v102, v104, v141);

        *(v98 + 14) = a2;
        _os_log_impl(&dword_2478E1000, v96, v112, "#DatataAnalyticsController: randomRowsForEachDate rows count: %ld for date: %s", v98, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v100);
        MEMORY[0x24C1AF180](v100, -1, -1);
        MEMORY[0x24C1AF180](v98, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        a2 = v139;
        v61(v95, v8);
      }

      v61(v140, v8);
      v61(v21, v8);
      v26 = v136;
      v42 = v130;
      v37 = v138;
      goto LABEL_7;
    }

    v62 = v128;
    (*v137)(v128, v21, v8);
    a2 = sub_24794ED14();
    v63 = sub_24794F154();
    if (os_log_type_enabled(a2, v63))
    {
      v64 = v8;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v141[0] = v66;
      *v65 = v125;
      sub_247927CAC(&qword_27EE57288, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v67 = sub_24794F4D4();
      v69 = v68;
      v61(v62, v64);
      v70 = sub_247924380(v67, v69, v141);
      v21 = v133;

      *(v65 + 4) = v70;
      _os_log_impl(&dword_2478E1000, a2, v63, "#DatataAnalyticsController: skipping process of today: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x24C1AF180](v66, -1, -1);
      v71 = v65;
      v8 = v64;
      MEMORY[0x24C1AF180](v71, -1, -1);

      v61(v140, v64);
      v61(v21, v64);
    }

    else
    {

      a2 = v139;
      v61(v62, v8);
      v61(v140, v8);
      v61(v21, v8);
    }

    v43 = v138;
    v26 = v136;
    v42 = v130;
  }

  v106 = v122;

  v107 = sub_24794ED14();
  v108 = sub_24794F154();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    *v109 = 134217984;
    *(v109 + 4) = *(v106 + 16);

    _os_log_impl(&dword_2478E1000, v107, v108, "#DatataAnalyticsController: randomRowsForEachDate rows count: %ld", v109, 0xCu);
    MEMORY[0x24C1AF180](v109, -1, -1);
  }

  else
  {
  }

  return v106;
}

id DataAnalyticsController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DataAnalyticsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataAnalyticsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_247924380(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24792444C(v11, 0, 0, 1, a1, a2);
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
    sub_2478F65EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24792444C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_247924558(a5, a6);
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
    result = sub_24794F394();
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

void *sub_247924558(uint64_t a1, unint64_t a2)
{
  v3 = sub_2479245A4(a1, a2);
  sub_2479246D4(&unk_285984E68);
  return v3;
}

void *sub_2479245A4(uint64_t a1, unint64_t a2)
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

  v6 = sub_247943568(v5, 0);
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

  result = sub_24794F394();
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
        v10 = sub_24794EFB4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_247943568(v10, 0);
        result = sub_24794F324();
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

void sub_2479246D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_2479247C0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

char *sub_2479247C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57530, &unk_247951740);
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

unint64_t sub_2479248B4(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v13 = a2 + 64;
  v14 = -1 << *(a2 + 32);
  v15 = (a1 + 1) & ~v14;
  if ((*(a2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = sub_24794F2A4();
    v18 = v16;
    v40 = (v17 + 1) & v16;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v44 = *(v19 + 56);
    v38 = (v19 - 8);
    v39 = v20;
    do
    {
      v21 = v44 * v15;
      v22 = v18;
      v23 = v19;
      v39(v12, *(a2 + 48) + v44 * v15, v8);
      sub_247927CAC(v41, v42, v43);
      v24 = sub_24794EEB4();
      result = (*v38)(v12, v8);
      v18 = v22;
      v25 = v24 & v22;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          result = v28 + v44 * a1;
          v29 = v28 + v21 + v44;
          v30 = v44 * a1 < v21 || result >= v29;
          v19 = v23;
          if (!v30)
          {
            if (v44 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v18 = v22;
            }

            v31 = *(a2 + 56);
            v32 = (v31 + 8 * a1);
            v33 = (v31 + 8 * v15);
            if (a1 != v15 || v32 >= v33 + 1)
            {
              *v32 = *v33;
              a1 = v15;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v19 = v23;
LABEL_4:
      v15 = (v15 + 1) & v18;
    }

    while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t (*sub_247924B68(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_24794EC04();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_247925464(v6);
  v6[12] = sub_247924E7C(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_247927CFC;
}

uint64_t (*sub_247924CA4(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_24794EBB4();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_24792548C(v6);
  v6[12] = sub_247925170(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_247924DE0;
}

void sub_247924DE4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_247924E7C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_24794EC04();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_24792C228(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_24794C8A0();
      v15 = v23;
      goto LABEL_14;
    }

    sub_24794A550(v20, a3 & 1);
    v15 = sub_24792C228(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_24794F514();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_24792502C;
}

void sub_24792502C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      sub_24794BBC4(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    sub_2479248B4(v5, v6, MEMORY[0x277CC95F0], &qword_27EE57528, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

void (*sub_247925170(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_24794EBB4();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_24792BFBC(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_24794CB48();
      v15 = v23;
      goto LABEL_14;
    }

    sub_24794AD08(v20, a3 & 1);
    v15 = sub_24792BFBC(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_24794F514();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_247925320;
}

void sub_247925320(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      sub_24794BC94(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    sub_2479248B4(v5, v6, MEMORY[0x277CC9578], &qword_27EE574B0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

uint64_t (*sub_247925464(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_247927CF4;
}

uint64_t (*sub_24792548C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2479254B4;
}

void sub_2479254C0()
{
  sub_2478F0668();
  if (v0)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v1 = sub_24794ED34();
    __swift_project_value_buffer(v1, qword_27EE58DF8);
    v2 = v0;
    v3 = sub_24794ED14();
    v4 = sub_24794F164();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = v0;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_2478E1000, v3, v4, "#DataAnalyticsController - Error while cleaning up local and remote events: %@", v5, 0xCu);
      sub_2478E9620(v6, &qword_27EE57280, &unk_2479503C0);
      MEMORY[0x24C1AF180](v6, -1, -1);
      MEMORY[0x24C1AF180](v5, -1, -1);
    }

    else
    {
    }
  }

  if (qword_27EE571B8 != -1)
  {
    swift_once();
  }

  v9 = qword_27EE57500;
  if (qword_27EE57500)
  {
    v10 = sub_24794EEF4();
    [v9 removePersistentDomainForName_];
  }

  sub_247947EF0();
}

void sub_2479256AC()
{
  sub_247947EF0();
  sub_2478F08E4();
  v1 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v2 = [v1 OnDeviceAnalytics];
  swift_unknownObjectRelease();
  v3 = [v2 AttentionAndInvocationSampling];
  swift_unknownObjectRelease();
  sub_2478F0540(v3);

  if (!v0)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v5 = sub_24794EEF4();
    v6 = [v4 initWithSuiteName_];

    if (v6)
    {
      sub_24793B51C(v6);
    }

    else
    {
      sub_2478E95CC();
      swift_allocError();
      *v7 = xmmword_247951680;
      *(v7 + 16) = 2;
      swift_willThrow();
    }
  }
}

uint64_t sub_24792580C(uint64_t a1)
{
  v2 = type metadata accessor for DataAnalyticsProcessResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of DataAnalyticsController.processRecords(siriRequestsRecords:processToday:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xA0);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2478E8998;

  return v9(a1, a2);
}

uint64_t dispatch thunk of DataAnalyticsController.processRecordsAndGetResult(siriRequestsRecords:processToday:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xA8);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2478E8998;

  return v11(a1, a2, a3);
}

uint64_t sub_247925BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = MEMORY[0x277D84F90];
  v7 = v4[19];
  if (v7 >> 62)
  {
    v8 = sub_24794F414();
    v4[20] = v8;
    if (v8)
    {
LABEL_3:
      if (v8 < 1)
      {
        __break(1u);
      }

      else
      {
        v9 = 0;
        v5 = 0xEE00435346737365;
        v29 = 0x8000000247952580;
        v30 = 0x8000000247952550;
        v31 = 0x80000002479525A0;
        v10 = MEMORY[0x277D84F90];
        while (1)
        {
          v4[21] = v9;
          v4[22] = v10;
          v11 = v4[19];
          if ((v11 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x24C1AE890](v9, v11, a3, a4);
          }

          else
          {
            v6 = *(v11 + 8 * v9 + 32);
          }

          v4[23] = v6;
          sub_247917728(v6 + 16, (v4 + 2));
          v12 = v4[5];
          v13 = v4[6];
          __swift_project_boxed_opaque_existential_1(v4 + 2, v12);
          v14 = (*(v13 + 24))(v12, v13);
          __swift_destroy_boxed_opaque_existential_0(v4 + 2);
          if (v14)
          {
            break;
          }

          MEMORY[0x24C1AE560](v15);
          if (*((v4[15] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4[15] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24794F084();
          }

          sub_24794F0A4();

          v10 = v4[15];
          v9 = v4[21] + 1;
          if (v9 == v4[20])
          {
            goto LABEL_27;
          }
        }

        if (qword_27EE571C0 == -1)
        {
          goto LABEL_14;
        }
      }

      swift_once();
LABEL_14:
      v16 = sub_24794ED34();
      __swift_project_value_buffer(v16, qword_27EE58DF8);

      v17 = sub_24794ED14();
      v18 = sub_24794F154();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v4[18] = v20;
        *v19 = 136315138;
        if (*(v6 + 184) > 1u)
        {
          if (*(v6 + 184) == 2)
          {
            v21 = 0xD000000000000011;
            v5 = v29;
          }

          else
          {
            v21 = 0xD000000000000013;
            v5 = v31;
          }
        }

        else
        {
          v21 = 0x72506E6F74747562;
          if (!*(v6 + 184))
          {
            v21 = 0xD000000000000015;
            v5 = v30;
          }
        }

        v22 = sub_247924380(v21, v5, v4 + 18);

        *(v19 + 4) = v22;
        _os_log_impl(&dword_2478E1000, v17, v18, "#DataAnalyticsController: Manager %s sampling cycle ended at start of processing", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x24C1AF180](v20, -1, -1);
        MEMORY[0x24C1AF180](v19, -1, -1);
      }

      sub_247917728(v6 + 96, (v4 + 7));
      v23 = v4[10];
      v24 = v4[11];
      __swift_project_boxed_opaque_existential_1(v4 + 7, v23);
      v25 = *(v24 + 8);
      v32 = (*(v25 + 8) + **(v25 + 8));
      v26 = swift_task_alloc();
      v4[24] = v26;
      *v26 = v4;
      v26[1] = sub_247926284;

      return v32(v23, v25);
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4[20] = v8;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_27:
  v28 = v4[1];

  return v28(v10);
}

uint64_t sub_247926284()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_247926A54;
  }

  else
  {
    v2 = sub_247926398;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247926398()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = v0 + 22;
  v1 = v0[22];
  v3 = v0[21] + 1;
  if (v3 == v0[20])
  {
LABEL_2:
    v4 = v0[1];

    return v4(v1);
  }

  v6 = v0 + 2;
  v7 = v0 + 16;
  v48 = v0 + 18;
  v8 = 0xEE00435346737365;
  v9 = v0[25];
  while (1)
  {
    v0[21] = v3;
    v0[22] = v1;
    v11 = v0[19];
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x24C1AE890](v3);
    }

    else
    {
      v12 = *(v11 + 8 * v3 + 32);
    }

    v0[23] = v12;
    sub_247917728(v12 + 16, v6);
    v13 = v0[5];
    v14 = v0[6];
    __swift_project_boxed_opaque_existential_1(v6, v13);
    v15 = (*(v14 + 24))(v13, v14);
    __swift_destroy_boxed_opaque_existential_0(v6);
    if (!v9)
    {
      break;
    }

    v16 = v7;
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v17 = sub_24794ED34();
    __swift_project_value_buffer(v17, qword_27EE58DF8);

    v18 = v9;
    v19 = sub_24794ED14();
    v20 = sub_24794F164();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[23];
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v16 = v24;
      *v23 = 136315394;
      v25 = *(v22 + 184);
      v26 = 0xD000000000000013;
      if (v25 == 2)
      {
        v26 = 0xD000000000000011;
      }

      v27 = 0x80000002479525A0;
      if (v25 == 2)
      {
        v27 = 0x8000000247952580;
      }

      v28 = 0xD000000000000015;
      if (*(v22 + 184))
      {
        v28 = 0x72506E6F74747562;
      }

      v29 = 0x8000000247952550;
      if (*(v22 + 184))
      {
        v29 = 0xEE00435346737365;
      }

      if (*(v22 + 184) <= 1u)
      {
        v30 = v28;
      }

      else
      {
        v30 = v26;
      }

      if (*(v22 + 184) <= 1u)
      {
        v31 = v29;
      }

      else
      {
        v31 = v27;
      }

      v32 = sub_247924380(v30, v31, v16);

      *(v23 + 4) = v32;
      *(v23 + 12) = 2080;
      swift_getErrorValue();
      v33 = sub_24794F524();
      v35 = sub_247924380(v33, v34, v16);

      *(v23 + 14) = v35;
      _os_log_impl(&dword_2478E1000, v19, v20, "#DataAnalyticsController: Manager %s checkAndEndDeviceSampling failed: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1AF180](v24, -1, -1);
      MEMORY[0x24C1AF180](v23, -1, -1);

      v2 = v0 + 22;
      v10 = v0 + 22;
      v8 = 0xEE00435346737365;
    }

    else
    {

      v10 = v2;
    }

    v7 = v16;
LABEL_8:
    v9 = 0;
    v1 = *v10;
    v3 = v0[21] + 1;
    if (v3 == v0[20])
    {
      goto LABEL_2;
    }
  }

  if ((v15 & 1) == 0)
  {

    MEMORY[0x24C1AE560](v36);
    if (*((v0[15] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[15] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24794F084();
    }

    sub_24794F0A4();

    v10 = v0 + 15;
    goto LABEL_8;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v37 = sub_24794ED34();
  __swift_project_value_buffer(v37, qword_27EE58DF8);

  v38 = sub_24794ED14();
  v39 = sub_24794F154();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v48 = v41;
    *v40 = 136315138;
    if (*(v12 + 184) > 1u)
    {
      if (*(v12 + 184) == 2)
      {
        v42 = 0xD000000000000011;
        v8 = 0x8000000247952580;
      }

      else
      {
        v42 = 0xD000000000000013;
        v8 = 0x80000002479525A0;
      }
    }

    else
    {
      v42 = 0x72506E6F74747562;
      if (!*(v12 + 184))
      {
        v42 = 0xD000000000000015;
        v8 = 0x8000000247952550;
      }
    }

    v43 = sub_247924380(v42, v8, v48);

    *(v40 + 4) = v43;
    _os_log_impl(&dword_2478E1000, v38, v39, "#DataAnalyticsController: Manager %s sampling cycle ended at start of processing", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x24C1AF180](v41, -1, -1);
    MEMORY[0x24C1AF180](v40, -1, -1);
  }

  sub_247917728(v12 + 96, (v0 + 7));
  v44 = v0[10];
  v45 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v44);
  v46 = *(v45 + 8);
  v49 = (*(v46 + 8) + **(v46 + 8));
  v47 = swift_task_alloc();
  v0[24] = v47;
  *v47 = v0;
  v47[1] = sub_247926284;

  return v49(v44, v46);
}

uint64_t sub_247926A54()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[25];
  v2 = 0x8000000247952550;
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v36 = sub_24794ED34();
  __swift_project_value_buffer(v36, qword_27EE58DF8);

  v3 = v1;
  v4 = sub_24794ED14();
  v5 = sub_24794F164();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[23];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v0[16] = v9;
    *v8 = 136315394;
    if (*(v7 + 184) > 1u)
    {
      if (*(v7 + 184) == 2)
      {
        v10 = 0xD000000000000011;
        v11 = 0x8000000247952580;
      }

      else
      {
        v10 = 0xD000000000000013;
        v11 = 0x80000002479525A0;
      }
    }

    else if (*(v7 + 184))
    {
      v10 = 0x72506E6F74747562;
      v11 = 0xEE00435346737365;
    }

    else
    {
      v10 = 0xD000000000000015;
      v11 = 0x8000000247952550;
    }

    v12 = sub_247924380(v10, v11, v0 + 16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_24794F524();
    v15 = sub_247924380(v13, v14, v0 + 16);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_2478E1000, v4, v5, "#DataAnalyticsController: Manager %s checkAndEndDeviceSampling failed: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1AF180](v9, -1, -1);
    MEMORY[0x24C1AF180](v8, -1, -1);

    v2 = 0x8000000247952550;
  }

  else
  {
  }

  for (i = v0[22]; ; i = v0[15])
  {
    v17 = v0[21] + 1;
    if (v17 == v0[20])
    {
      break;
    }

    v0[21] = v17;
    v0[22] = i;
    v18 = v0[19];
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x24C1AE890](v17);
    }

    else
    {
      v19 = *(v18 + 8 * v17 + 32);
    }

    v0[23] = v19;
    sub_247917728(v19 + 16, (v0 + 2));
    v20 = v0[5];
    v21 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v20);
    v22 = (*(v21 + 24))(v20, v21);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    if (v22)
    {
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v36, qword_27EE58DF8);

      v26 = sub_24794ED14();
      v27 = sub_24794F154();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v0[18] = v29;
        *v28 = 136315138;
        if (*(v19 + 184) > 1u)
        {
          if (*(v19 + 184) == 2)
          {
            v30 = 0xD000000000000011;
            v2 = 0x8000000247952580;
          }

          else
          {
            v30 = 0xD000000000000013;
            v2 = 0x80000002479525A0;
          }
        }

        else if (*(v19 + 184))
        {
          v30 = 0x72506E6F74747562;
          v2 = 0xEE00435346737365;
        }

        else
        {
          v30 = 0xD000000000000015;
        }

        v31 = sub_247924380(v30, v2, v0 + 18);

        *(v28 + 4) = v31;
        _os_log_impl(&dword_2478E1000, v26, v27, "#DataAnalyticsController: Manager %s sampling cycle ended at start of processing", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x24C1AF180](v29, -1, -1);
        MEMORY[0x24C1AF180](v28, -1, -1);
      }

      sub_247917728(v19 + 96, (v0 + 7));
      v32 = v0[10];
      v33 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v32);
      v34 = *(v33 + 8);
      v37 = (*(v34 + 8) + **(v34 + 8));
      v35 = swift_task_alloc();
      v0[24] = v35;
      *v35 = v0;
      v35[1] = sub_247926284;

      return v37(v32, v34);
    }

    MEMORY[0x24C1AE560](v23);
    if (*((v0[15] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[15] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24794F084();
    }

    sub_24794F0A4();
  }

  v24 = v0[1];

  return v24(i);
}

unint64_t sub_2479270EC(uint64_t a1)
{
  v2 = sub_24794EBB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v99 = &v86 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v86 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v86 - v13;
  MEMORY[0x28223BE20](v12);
  v101 = &v86 - v15;
  v106 = sub_24794E510(MEMORY[0x277D84F90]);
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v89 = v6;
  v16 = sub_24794ED34();
  v102 = __swift_project_value_buffer(v16, qword_27EE58DF8);
  v17 = sub_24794ED14();
  v18 = sub_24794F154();
  v19 = os_log_type_enabled(v17, v18);
  v98 = v14;
  if (v19)
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2478E1000, v17, v18, "#DatataAnalyticsController: groupRowsByDate", v20, 2u);
    v21 = v20;
    v14 = v98;
    MEMORY[0x24C1AF180](v21, -1, -1);
  }

  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = (a1 + 32);
    v96 = (v3 + 16);
    v100 = (v3 + 8);
    v25 = 0x8000000247952D50;
    *&v22 = 136315650;
    v87 = v22;
    *&v22 = 136315138;
    v86 = v22;
    v90 = xmmword_247951560;
    v88 = v2;
    v97 = v11;
    v94 = 0x8000000247952D50;
    do
    {
      v26 = *v24;
      v103[0] = 0xD000000000000017;
      v103[1] = v25;

      sub_24794F2E4();
      if (*(v26 + 16) && (v27 = sub_24792BEB4(v104), (v28 & 1) != 0))
      {
        sub_2478F65EC(*(v26 + 56) + 32 * v27, v105);
        sub_2478F6598(v104);
        if (swift_dynamicCast())
        {
          v29 = v101;
          sub_24794EB64();
          type metadata accessor for Utils();
          sub_247940B60(v29, v14);
          v30 = *v96;
          (*v96)(v11, v14, v2);
          v31 = v99;
          v95 = v30;
          v30(v99, v29, v2);

          v32 = sub_24794ED14();
          v33 = sub_24794F154();

          if (os_log_type_enabled(v32, v33))
          {
            v93 = v32;
            v34 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v103[0] = v91;
            *v34 = v87;
            *&v105[0] = 0x5F74736575716572;
            *(&v105[0] + 1) = 0xEA00000000006469;
            sub_24794F2E4();
            v35 = *(v26 + 16);
            v92 = v33;
            if (v35 && (v36 = sub_24792BEB4(v104), (v37 & 1) != 0))
            {
              sub_2478F65EC(*(v26 + 56) + 32 * v36, v105);
              sub_2478F6598(v104);
            }

            else
            {
              sub_2478F6598(v104);
              memset(v105, 0, sizeof(v105));
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57348, &unk_2479521B0);
            v39 = sub_24794EF14();
            v41 = sub_247924380(v39, v40, v103);

            *(v34 + 4) = v41;
            *(v34 + 12) = 2080;
            sub_247927CAC(&qword_27EE57288, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v2 = v88;
            v42 = sub_24794F4D4();
            v43 = v11;
            v45 = v44;
            v46 = *v100;
            (*v100)(v43, v2);
            v47 = sub_247924380(v42, v45, v103);

            *(v34 + 14) = v47;
            *(v34 + 22) = 2080;
            v48 = v99;
            v49 = sub_24794F4D4();
            v51 = v50;
            v52 = v48;
            v38 = v46;
            v46(v52, v2);
            v53 = sub_247924380(v49, v51, v103);

            *(v34 + 24) = v53;
            v54 = v93;
            _os_log_impl(&dword_2478E1000, v93, v92, "#DatataAnalyticsController: record row: %s, start of date: %s and eventDate: %s", v34, 0x20u);
            v55 = v91;
            swift_arrayDestroy();
            MEMORY[0x24C1AF180](v55, -1, -1);
            MEMORY[0x24C1AF180](v34, -1, -1);
          }

          else
          {

            v38 = *v100;
            (*v100)(v31, v2);
            v38(v11, v2);
          }

          v56 = sub_24794ED14();
          v57 = sub_24794F154();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v104[0] = v93;
            *v58 = v86;
            v59 = sub_24794EE94();
            v61 = v2;
            v62 = v38;
            v63 = sub_247924380(v59, v60, v104);

            *(v58 + 4) = v63;
            v38 = v62;
            v2 = v61;
            _os_log_impl(&dword_2478E1000, v56, v57, "#DatataAnalyticsController: groupRowsByDate current row %s", v58, 0xCu);
            v64 = v93;
            __swift_destroy_boxed_opaque_existential_0(v93);
            MEMORY[0x24C1AF180](v64, -1, -1);
            MEMORY[0x24C1AF180](v58, -1, -1);
          }

          v11 = v97;
          v14 = v98;
          v65 = v106;
          if (*(v106 + 16) && (sub_24792BFBC(v98), (v66 & 1) != 0))
          {
            v67 = v89;
            v95(v89, v14, v2);
            v69 = sub_24791F198(v104);
            v70 = *v68;
            if (*v68)
            {
              v71 = v68;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v71 = v70;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v70 = sub_24793ACB4(0, v70[2] + 1, 1, v70);
                *v71 = v70;
              }

              v74 = v70[2];
              v73 = v70[3];
              if (v74 >= v73 >> 1)
              {
                v70 = sub_24793ACB4((v73 > 1), v74 + 1, 1, v70);
                *v71 = v70;
              }

              v25 = v94;
              v70[2] = v74 + 1;
              v70[v74 + 4] = v26;
              (v69)(v104, 0);
              v38(v89, v2);
              v14 = v98;
              v38(v98, v2);
              v38(v101, v2);
              v11 = v97;
            }

            else
            {

              (v69)(v104, 0);
              v38(v67, v2);
              v38(v14, v2);
              v38(v101, v2);
              v11 = v97;
              v25 = v94;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57520, &unk_247951730);
            v75 = swift_allocObject();
            *(v75 + 16) = v90;
            *(v75 + 32) = v26;
            v76 = swift_isUniquelyReferenced_nonNull_native();
            v104[0] = v65;
            sub_24794B954(v75, v14, v76);
            v106 = v104[0];
            v38(v14, v2);
            v38(v101, v2);
            v25 = v94;
          }
        }

        else
        {
        }
      }

      else
      {

        sub_2478F6598(v104);
      }

      ++v24;
      --v23;
    }

    while (v23);
  }

  v77 = sub_24794ED14();
  v78 = sub_24794F154();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v104[0] = v80;
    *v79 = 136315138;
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574B8, &qword_247951548);
    sub_247927CAC(&qword_27EE574B0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    v81 = sub_24794EE94();
    v83 = v82;

    v84 = sub_247924380(v81, v83, v104);

    *(v79 + 4) = v84;
    _os_log_impl(&dword_2478E1000, v77, v78, "#DatataAnalyticsController: groupRowsByDate results %s", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v80);
    MEMORY[0x24C1AF180](v80, -1, -1);
    MEMORY[0x24C1AF180](v79, -1, -1);
  }

  swift_beginAccess();
  return v106;
}

uint64_t sub_247927C48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataAnalyticsProcessResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247927CAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s23CoreSpeechDataAnalytics0cD5ErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_10;
    }

    v17 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_24794F4E4();
      sub_24792831C(v6, v5, 0);
      sub_24792831C(v3, v2, 0);
      sub_24791778C(v3, v2, 0);
      v10 = v6;
      v11 = v5;
      v12 = 0;
      goto LABEL_24;
    }

    sub_24792831C(v17, v2, 0);
    sub_24792831C(v3, v2, 0);
    sub_24791778C(v3, v2, 0);
    v16 = v3;
    v19 = v2;
    v20 = 0;
LABEL_190:
    sub_24791778C(v16, v19, v20);
    return 1;
  }

  if (v4 != 1)
  {
    switch(v3)
    {
      case 1:
        if (v7 != 2 || v6 != 1 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v13 = 1;
        sub_24791778C(1, 0, 2u);
        return v13;
      case 2:
        if (v7 != 2 || v6 != 2 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v16 = 2;
        goto LABEL_189;
      case 3:
        if (v7 != 2 || v6 != 3 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v16 = 3;
        goto LABEL_189;
      case 4:
        if (v7 != 2 || v6 != 4 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v16 = 4;
        goto LABEL_189;
      case 5:
        if (v7 != 2 || v6 != 5 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v16 = 5;
        goto LABEL_189;
      case 6:
        if (v7 != 2 || v6 != 6 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v16 = 6;
        goto LABEL_189;
      case 7:
        if (v7 != 2 || v6 != 7 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v16 = 7;
        goto LABEL_189;
      case 8:
        if (v7 != 2 || v6 != 8 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v16 = 8;
        goto LABEL_189;
      case 9:
        if (v7 != 2 || v6 != 9 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v16 = 9;
        goto LABEL_189;
      case 10:
        if (v7 != 2 || v6 != 10 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v16 = 10;
        goto LABEL_189;
      case 11:
        if (v7 != 2 || v6 != 11 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v16 = 11;
        goto LABEL_189;
      case 12:
        if (v7 != 2 || v6 != 12 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v16 = 12;
        goto LABEL_189;
      case 13:
        if (v7 != 2 || v6 != 13 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v16 = 13;
        goto LABEL_189;
      case 14:
        if (v7 != 2 || v6 != 14 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v16 = 14;
        goto LABEL_189;
      case 15:
        if (v7 != 2 || v6 != 15 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v16 = 15;
        goto LABEL_189;
      case 16:
        if (v7 != 2 || v6 != 16 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v16 = 16;
        goto LABEL_189;
      case 17:
        if (v7 != 2 || v6 != 17 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v16 = 17;
        goto LABEL_189;
      case 18:
        if (v7 != 2 || v6 != 18 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v16 = 18;
        goto LABEL_189;
      default:
        if (v7 != 2 || (v5 | v6) != 0)
        {
          goto LABEL_10;
        }

        sub_24791778C(*a1, v2, 2u);
        v16 = 0;
LABEL_189:
        v19 = 0;
        v20 = 2;
        break;
    }

    goto LABEL_190;
  }

  if (v7 != 1)
  {
LABEL_10:
    sub_24792831C(*a2, a2[1], v7);
    sub_24792831C(v3, v2, v4);
    sub_24791778C(v3, v2, v4);
    sub_24791778C(v6, v5, v7);
    return 0;
  }

  if (v3 == v6 && v2 == v5)
  {
    v13 = 1;
    sub_24792831C(*a1, v2, 1u);
    sub_24792831C(v3, v2, 1u);
    sub_24791778C(v3, v2, 1u);
    sub_24791778C(v3, v2, 1u);
    return v13;
  }

  v9 = sub_24794F4E4();
  sub_24792831C(v6, v5, 1u);
  sub_24792831C(v3, v2, 1u);
  sub_24791778C(v3, v2, 1u);
  v10 = v6;
  v11 = v5;
  v12 = 1;
LABEL_24:
  sub_24791778C(v10, v11, v12);
  return v9 & 1;
}

uint64_t get_enum_tag_for_layout_string_23CoreSpeechDataAnalytics0cD5ErrorO(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_247928268(uint64_t a1, unsigned int a2)
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

uint64_t sub_2479282B0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2479282F4(uint64_t result, unsigned int a2)
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

double sub_24792831C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_247928334()
{
  v0 = sub_24794ED34();
  __swift_allocate_value_buffer(v0, qword_27EE58DF8);
  __swift_project_value_buffer(v0, qword_27EE58DF8);
  return sub_24794ED24();
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

void sub_247928418()
{
  v1 = *(v0 + *(type metadata accessor for DataAnalyticsProcessResult(0) + 20));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 33);
    while (v3 < *(v1 + 16))
    {
      v5 = *(v4 - 1);
      if (*v4 > 1u || *v4)
      {
        v6 = sub_24794F4E4();

        if (v6 & v5)
        {
          return;
        }
      }

      else
      {

        if (v5)
        {
          return;
        }
      }

      ++v3;
      v4 += 32;
      if (v2 == v3)
      {
        return;
      }
    }

    __break(1u);
  }
}

CoreSpeechDataAnalytics::DataAnalyticsProcessFinishStatus __swiftcall DataAnalyticsProcessResult.getFinishedStatus()()
{
  v2 = v0;
  v3 = type metadata accessor for DataAnalyticsProcessResult(0);
  v4 = *(v1 + *(v3 + 20));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    v7 = v5 + 1;
    v8 = v6;
    do
    {
      if (!--v7)
      {
        break;
      }

      v9 = *v8;
      v8 += 32;
    }

    while ((v9 & 1) != 0);
    v10 = v5 + 1;
    while (--v10)
    {
      v11 = *v6;
      v6 += 32;
      if (v11 == 1)
      {
        v12 = v7 != 0;
        goto LABEL_11;
      }
    }

    v12 = 2 * (v7 != 0);
  }

  else
  {
    v12 = 3;
  }

LABEL_11:
  *v2 = v12;
  return v3;
}

uint64_t type metadata accessor for DataAnalyticsProcessResult(uint64_t a1)
{
  result = qword_27EE57548;
  if (!qword_27EE57548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_247928640()
{
  v1 = *(v0 + *(type metadata accessor for DataAnalyticsProcessResult(0) + 20));
  v2 = *(v1 + 16);
  if (v2)
  {
    v20 = MEMORY[0x277D84F90];
    sub_247904798(0, v2, 0);
    v3 = v20;
    v4 = (v1 + 48);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v20 + 16);
      v7 = *(v20 + 24);
      v9 = v8 + 1;

      if (v8 >= v7 >> 1)
      {
        sub_247904798((v7 > 1), v8 + 1, 1);
      }

      v4 += 4;
      *(v20 + 16) = v9;
      v10 = v20 + 16 * v8;
      *(v10 + 32) = v6;
      *(v10 + 40) = v5;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    v9 = *(MEMORY[0x277D84F90] + 16);
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
LABEL_9:
  v13 = 16 * v11 + 40;
  while (1)
  {
    if (v9 == v11)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57560, &unk_2479519C0);
      sub_247928C30();
      sub_24794EEC4();

      return;
    }

    if (v11 >= *(v3 + 16))
    {
      break;
    }

    ++v11;
    v14 = v13 + 16;
    v15 = *(v3 + v13);
    v13 += 16;
    if (v15)
    {
      v16 = *(v3 + v14 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_24793A9D0(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = sub_24793A9D0((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v19 = &v12[16 * v18];
      *(v19 + 4) = v16;
      *(v19 + 5) = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_247928838(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = *(a1 + 3);
  v7 = *(type metadata accessor for DataAnalyticsProcessResult(0) + 20);
  v8 = *(v1 + v7);
  v9 = *(v8 + 2);
  if (v9 >= 0x14)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v14 = sub_24794ED34();
    __swift_project_value_buffer(v14, qword_27EE58DF8);
    oslog = sub_24794ED14();
    v15 = sub_24794F164();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 16777472;
      v16[4] = 20;
      _os_log_impl(&dword_2478E1000, oslog, v15, "#DataAnalyticsProcessResult: Max number of collection manager process result reached (%hhu)", v16, 5u);
      MEMORY[0x24C1AF180](v16, -1, -1);
    }
  }

  else
  {

    v10 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_24793B124(0, v9 + 1, 1, v8);
    }

    v12 = *(v8 + 2);
    v11 = *(v8 + 3);
    if (v12 >= v11 >> 1)
    {
      v8 = sub_24793B124((v11 > 1), v12 + 1, 1, v8);
    }

    *(v8 + 2) = v12 + 1;
    v13 = &v8[32 * v12];
    v13[32] = v2;
    v13[33] = v3;
    *(v13 + 5) = v5;
    *(v13 + 6) = v4;
    *(v13 + 7) = v6;
    *(v1 + v7) = v8;
  }
}

CoreSpeechDataAnalytics::DataAnalyticsProcessFinishStatus_optional __swiftcall DataAnalyticsProcessFinishStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

double DataAnalyticsProcessResult.getCollectionManagerProcessResults()()
{
  type metadata accessor for DataAnalyticsProcessResult(0);

  return result;
}

unint64_t sub_247928A78()
{
  result = qword_27EE57540;
  if (!qword_27EE57540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57540);
  }

  return result;
}

void sub_247928B04(uint64_t a1)
{
  sub_247928B88(319);
  if (v1 <= 0x3F)
  {
    sub_247928BE0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_247928B88(uint64_t a1)
{
  if (!qword_27EE57320)
  {
    sub_24794EBB4();
    v1 = sub_24794F234();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE57320);
    }
  }
}

void sub_247928BE0()
{
  if (!qword_27EE57558)
  {
    v0 = sub_24794F0B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE57558);
    }
  }
}

unint64_t sub_247928C30()
{
  result = qword_27EE57568;
  if (!qword_27EE57568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE57560, &unk_2479519C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57568);
  }

  return result;
}

id DeterministicUserSelector.__allocating_init(locale:deviceID:siriSharedUserId:anchorDate:samplingPercentage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v10 = v9;
  v41 = a8;
  v42 = a6;
  v43 = a7;
  v44 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_24794EBB4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v10;
  v23 = objc_allocWithZone(v10);
  v24 = &v23[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale];
  v40 = a1;
  *v24 = a1;
  *(v24 + 1) = a2;
  v25 = &v23[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID];
  *v25 = a3;
  *(v25 + 1) = a4;
  v26 = &v23[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId];
  v27 = v42;
  v28 = v43;
  *v26 = a5;
  *(v26 + 1) = v27;
  sub_2478EE3C8(v28, v18);
  v29 = *(v20 + 48);
  if (v29(v18, 1, v19) == 1)
  {
    v30 = qword_27EE571D0;

    if (v30 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v19, qword_27EE57578);
    (*(v20 + 16))(v22, v31, v19);
    if (v29(v18, 1, v19) != 1)
    {
      sub_2478E9620(v18, &qword_27EE572D0, &unk_2479504E0);
    }
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
  }

  (*(v20 + 32))(&v23[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_anchorDate], v22, v19);
  if (v44)
  {
    if (qword_27EE571C8 != -1)
    {
      swift_once();
    }

    v32 = off_27EE57570;
    if (*(off_27EE57570 + 2))
    {
      v33 = sub_24792BEF8(v40, a2);
      v35 = v34;

      v36 = 1.0;
      if (v35)
      {
        v36 = *(v32[7] + 8 * v33);
      }
    }

    else
    {

      v36 = 1.0;
    }
  }

  else
  {

    v36 = *&v41;
  }

  v37 = fmin(v36, 1.0);
  if (v37 < 0.0)
  {
    v37 = 0.0;
  }

  *&v23[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_samplingPercentage] = v37;
  v46.receiver = v23;
  v46.super_class = v45;
  v38 = objc_msgSendSuper2(&v46, sel_init);
  sub_2478E9620(v28, &qword_27EE572D0, &unk_2479504E0);
  return v38;
}

uint64_t sub_24792901C()
{
  v0 = sub_24794E208(&unk_285984F70);
  result = sub_2478E9620(&unk_285984F90, &qword_27EE57620, &qword_247951A60);
  off_27EE57570 = v0;
  return result;
}

uint64_t sub_24792906C()
{
  v0 = sub_24794EBB4();
  __swift_allocate_value_buffer(v0, qword_27EE57578);
  v1 = __swift_project_value_buffer(v0, qword_27EE57578);
  return sub_2479290B8(v1);
}

uint64_t sub_2479290B8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE575F8, &qword_247951A48);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57628, &qword_247951A68);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_24794E974();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24794ECC4();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = sub_24794ED04();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  sub_24794E964();
  sub_24794E934();
  sub_24794E954();
  sub_24794E924();
  if (qword_27EE571D8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v15, qword_27EE57590);
  sub_24794EC74();
  v17 = sub_24794EBB4();
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v4, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    return (*(v18 + 32))(a1, v4, v17);
  }

  return result;
}

uint64_t sub_247929474()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE575F8, &qword_247951A48);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_24794EC34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24794ECC4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v9, qword_27EE57590);
  v12 = __swift_project_value_buffer(v7, qword_27EE57590);
  (*(v4 + 104))(v6, *MEMORY[0x277CC9830], v3);
  sub_24794EC44();
  (*(v4 + 8))(v6, v3);
  sub_24794ECD4();
  v13 = sub_24794ED04();
  result = (*(*(v13 - 8) + 48))(v2, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_24794ECA4();
    return (*(v8 + 32))(v12, v11, v7);
  }

  return result;
}

uint64_t DeterministicUserSelector.locale.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale);

  return v1;
}

uint64_t DeterministicUserSelector.deviceID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID);

  return v1;
}

uint64_t DeterministicUserSelector.siriSharedUserId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId);

  return v1;
}

uint64_t DeterministicUserSelector.anchorDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_anchorDate;
  v4 = sub_24794EBB4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id DeterministicUserSelector.init(locale:deviceID:siriSharedUserId:anchorDate:samplingPercentage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v40 = a8;
  v41 = a6;
  v42 = a7;
  v43 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v38 - v16;
  v18 = sub_24794EBB4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &v9[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale];
  v39 = a1;
  *v22 = a1;
  *(v22 + 1) = a2;
  v23 = &v9[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID];
  *v23 = a3;
  *(v23 + 1) = a4;
  v24 = &v9[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId];
  *v24 = a5;
  v25 = v42;
  *(v24 + 1) = v41;
  sub_2478EE3C8(v25, v17);
  v26 = *(v19 + 48);
  if (v26(v17, 1, v18) == 1)
  {
    v27 = qword_27EE571D0;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v18, qword_27EE57578);
    (*(v19 + 16))(v21, v28, v18);
    if (v26(v17, 1, v18) != 1)
    {
      sub_2478E9620(v17, &qword_27EE572D0, &unk_2479504E0);
    }
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
  }

  (*(v19 + 32))(&v9[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_anchorDate], v21, v18);
  if (v43)
  {
    if (qword_27EE571C8 != -1)
    {
      swift_once();
    }

    v29 = off_27EE57570;
    if (*(off_27EE57570 + 2))
    {
      v30 = sub_24792BEF8(v39, a2);
      v32 = v31;

      v33 = 1.0;
      if (v32)
      {
        v33 = *(v29[7] + 8 * v30);
      }
    }

    else
    {

      v33 = 1.0;
    }
  }

  else
  {

    v33 = *&v40;
  }

  v34 = fmin(v33, 1.0);
  if (v34 < 0.0)
  {
    v34 = 0.0;
  }

  *&v9[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_samplingPercentage] = v34;
  v35 = type metadata accessor for DeterministicUserSelector(0);
  v44.receiver = v9;
  v44.super_class = v35;
  v36 = objc_msgSendSuper2(&v44, sel_init);
  sub_2478E9620(v25, &qword_27EE572D0, &unk_2479504E0);
  return v36;
}

id sub_247929B98(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_24794EBB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v41 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  if (a3)
  {
    v18 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_samplingPercentage);
  }

  else
  {
    v18 = *&a2;
  }

  v19 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale);
  v20 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale + 8);
  v21 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID + 8);
  v39 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID);
  v40 = v19;
  v22 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId + 8);
  v38 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId);
  sub_2478EE3C8(a1, v15);
  v23 = *(v8 + 48);
  if (v23(v15, 1, v7) == 1)
  {
    (*(v8 + 16))(v17, v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_anchorDate, v7);
    v24 = v23(v15, 1, v7);

    if (v24 != 1)
    {
      sub_2478E9620(v15, &qword_27EE572D0, &unk_2479504E0);
    }
  }

  else
  {
    (*(v8 + 32))(v17, v15, v7);
  }

  (*(v8 + 56))(v17, 0, 1, v7);
  v25 = type metadata accessor for DeterministicUserSelector(0);
  v26 = objc_allocWithZone(v25);
  v27 = &v26[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale];
  v28 = v39;
  *v27 = v40;
  *(v27 + 1) = v20;
  v29 = &v26[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID];
  *v29 = v28;
  *(v29 + 1) = v21;
  v30 = &v26[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId];
  *v30 = v38;
  *(v30 + 1) = v22;
  v31 = v41;
  sub_2478EE3C8(v17, v41);
  if (v23(v31, 1, v7) == 1)
  {
    v32 = v42;
    if (qword_27EE571D0 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v7, qword_27EE57578);
    (*(v8 + 16))(v32, v33, v7);
    if (v23(v31, 1, v7) != 1)
    {
      sub_2478E9620(v31, &qword_27EE572D0, &unk_2479504E0);
    }
  }

  else
  {
    v32 = v42;
    (*(v8 + 32))(v42, v31, v7);
  }

  (*(v8 + 32))(&v26[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_anchorDate], v32, v7);
  v34 = fmin(v18, 1.0);
  if (v34 < 0.0)
  {
    v34 = 0.0;
  }

  *&v26[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_samplingPercentage] = v34;
  v43.receiver = v26;
  v43.super_class = v25;
  v35 = objc_msgSendSuper2(&v43, sel_init);
  sub_2478E9620(v17, &qword_27EE572D0, &unk_2479504E0);
  return v35;
}

BOOL sub_24792A018(uint64_t a1, uint64_t a2)
{
  v5 = sub_24794E974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v67 - v10;
  v12 = sub_24794EBB4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - v16;
  sub_2478EE3C8(a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2478E9620(v11, &qword_27EE572D0, &unk_2479504E0);
  }

  else
  {
    v67 = v2;
    v68 = v12;
    v69 = v13;
    v70 = a1;
    (*(v13 + 32))(v17, v11, v12);
    if (qword_27EE571D8 != -1)
    {
      swift_once();
    }

    v32 = sub_24794ECC4();
    __swift_project_value_buffer(v32, qword_27EE57590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574E0, &qword_247951588);
    v33 = sub_24794ECB4();
    v34 = *(v33 - 8);
    v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_247951560;
    (*(v34 + 104))(v36 + v35, *MEMORY[0x277CC9968], v33);
    sub_24792CE2C(v36);
    swift_setDeallocating();
    (*(v34 + 8))(v36 + v35, v33);
    swift_deallocClassInstance();
    a1 = v70;
    sub_24794EC64();

    v37 = sub_24794E914();
    v39 = v38;
    (*(v6 + 8))(v8, v5);
    v40 = v17;
    if (v39)
    {
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v41 = sub_24794ED34();
      __swift_project_value_buffer(v41, qword_27EE58DF8);
      v42 = sub_24794ED14();
      v43 = sub_24794F164();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v69;
      if (v44)
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_2478E1000, v42, v43, "#DeterministicUserSelector: Failed to calculate days between collection start date and current date. Not sampling user.", v46, 2u);
        MEMORY[0x24C1AF180](v46, -1, -1);
      }

      (*(v45 + 8))(v17, v68);
      return 0;
    }

    v47 = v37 <= 30;
    v2 = v67;
    if (!v47)
    {
      v48 = v69;
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v49 = sub_24794ED34();
      __swift_project_value_buffer(v49, qword_27EE58DF8);
      v50 = v71;
      v51 = v68;
      (*(v48 + 16))(v71, a1, v68);
      v52 = sub_24794ED14();
      v53 = sub_24794F144();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v72 = v55;
        *v54 = 136315394;
        sub_24792DC94(&qword_27EE57288, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v56 = sub_24794F4D4();
        v58 = v57;
        v59 = *(v48 + 8);
        v59(v50, v51);
        v60 = sub_247924380(v56, v58, &v72);

        *(v54 + 4) = v60;
        *(v54 + 12) = 2048;
        *(v54 + 14) = 30;
        _os_log_impl(&dword_2478E1000, v52, v53, "#DeterministicUserSelector: Current date (%s) is beyond the collection window duration (%ld days). Not sampling user.", v54, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x24C1AF180](v55, -1, -1);
        MEMORY[0x24C1AF180](v54, -1, -1);

        v59(v40, v51);
      }

      else
      {

        v65 = *(v48 + 8);
        v65(v50, v51);
        v65(v40, v51);
      }

      return 0;
    }

    (*(v69 + 8))(v17, v68);
  }

  v18 = _s23CoreSpeechDataAnalytics25DeterministicUserSelectorC09calculateF4Slot8deviceID010siriSharedF2Id6localeSo8NSNumberCSgSS_SSSgSStFZ_0(*(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID), *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID + 8), *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId), *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId + 8), *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale), *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale + 8));
  if (!v18)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v61 = sub_24794ED34();
    __swift_project_value_buffer(v61, qword_27EE58DF8);
    v62 = sub_24794ED14();
    v63 = sub_24794F164();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_2478E1000, v62, v63, "#DeterministicUserSelector: Failed to calculate user slot. Not sampling user.", v64, 2u);
      MEMORY[0x24C1AF180](v64, -1, -1);
    }

    return 0;
  }

  v19 = v18;
  v20 = [v18 integerValue];

  v21 = sub_24792B37C(a1);
  if (v21 < 0)
  {
    v22 = -1;
  }

  else
  {
    v22 = v21 % 25;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v23 = sub_24794ED34();
  __swift_project_value_buffer(v23, qword_27EE58DF8);
  v24 = sub_24794ED14();
  v25 = sub_24794F144();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134218240;
    *(v26 + 4) = v20;
    *(v26 + 12) = 2048;
    *(v26 + 14) = v22;
    _os_log_impl(&dword_2478E1000, v24, v25, "#DeterministicUserSelector: userSlot: %ld, currentSlot: %ld", v26, 0x16u);
    MEMORY[0x24C1AF180](v26, -1, -1);
  }

  if (v20 != v22)
  {
    return 0;
  }

  v27 = sub_24794ED14();
  v28 = sub_24794F144();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2478E1000, v27, v28, "#DeterminisitcUserSelector: User is eligible to sample", v29, 2u);
    MEMORY[0x24C1AF180](v29, -1, -1);
  }

  v30 = sub_24792B37C(a1);
  return sub_24792B5F4(v30);
}

id sub_24792A954()
{
  v1 = _s23CoreSpeechDataAnalytics25DeterministicUserSelectorC09calculateF4Slot8deviceID010siriSharedF2Id6localeSo8NSNumberCSgSS_SSSgSStFZ_0(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID), *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID + 8), *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId), *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId + 8), *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale), *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale + 8));
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

uint64_t sub_24792A9DC(uint64_t a1)
{
  v1 = sub_24792B37C(a1);
  if (v1 < 0)
  {
    return -1;
  }

  else
  {
    return v1 % 25;
  }
}

uint64_t static DeterministicUserSelector.calculateAnchorDate(targetSlot:currentDate:)@<X0>(unint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_24794ECB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  if (a1 > 0x18)
  {
    v16 = sub_24794EBB4();
    v17 = *(*(v16 - 8) + 56);

    return v17(a3, 1, 1, v16);
  }

  else
  {
    if (qword_27EE571D8 != -1)
    {
      swift_once();
    }

    v12 = sub_24794ECC4();
    __swift_project_value_buffer(v12, qword_27EE57590);
    (*(v6 + 104))(v8, *MEMORY[0x277CC9968], v5);
    sub_24794EC84();
    (*(v6 + 8))(v8, v5);
    v13 = sub_24794EBB4();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v11, 1, v13) == 1)
    {
      sub_2478E9620(v11, &qword_27EE572D0, &unk_2479504E0);
      return (*(v14 + 56))(a3, 1, 1, v13);
    }

    else
    {
      (*(v14 + 32))(a3, v11, v13);
      return (*(v14 + 56))(a3, 0, 1, v13);
    }
  }
}

uint64_t static DeterministicUserSelector.calculateAnchorDate(targetSlot:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24794ECB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_24794EBB4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24794EBA4();
  if (a1 >= 0x19)
  {
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    if (qword_27EE571D8 != -1)
    {
      swift_once();
    }

    v15 = sub_24794ECC4();
    __swift_project_value_buffer(v15, qword_27EE57590);
    (*(v5 + 104))(v7, *MEMORY[0x277CC9968], v4);
    sub_24794EC84();
    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v14, v11);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(a2, v10, v11);
      v16 = 0;
      return (*(v12 + 56))(a2, v16, 1, v11);
    }

    sub_2478E9620(v10, &qword_27EE572D0, &unk_2479504E0);
  }

  v16 = 1;
  return (*(v12 + 56))(a2, v16, 1, v11);
}

unint64_t sub_24792B37C(uint64_t a1)
{
  v14[1] = a1;
  v1 = sub_24794E974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE571D8 != -1)
  {
    swift_once();
  }

  v5 = sub_24794ECC4();
  __swift_project_value_buffer(v5, qword_27EE57590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574E0, &qword_247951588);
  v6 = sub_24794ECB4();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_247951560;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x277CC9968], v6);
  sub_24792CE2C(v9);
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  swift_deallocClassInstance();
  sub_24794EC64();

  v10 = sub_24794E914();
  LOBYTE(v8) = v11;
  (*(v2 + 8))(v4, v1);
  v12 = 0;
  if ((v8 & 1) == 0 && (v12 = v10, v10 < 0))
  {
    return -1;
  }

  else
  {
    return v12 / 0x1E;
  }
}

BOOL sub_24792B5F4(uint64_t a1)
{
  sub_24792D14C(*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID), *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID + 8), *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId), *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId + 8), *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale), *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale + 8));
  v5 = sub_24792D294(v3, v4, 1);
  v7 = v6;

  if (v7)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v8 = sub_24794ED34();
    __swift_project_value_buffer(v8, qword_27EE58DF8);
    v9 = sub_24794ED14();
    v10 = sub_24794F164();
    if (!os_log_type_enabled(v9, v10))
    {
      v12 = 0;
      goto LABEL_12;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2478E1000, v9, v10, "#DeterministicUserSelector: Failed to calculate hash segment for sampling decision", v11, 2u);
    v12 = 0;
    goto LABEL_10;
  }

  v13 = vcvtd_n_f64_u64(v5, 0x40uLL);
  v14 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_samplingPercentage);
  v12 = v13 < v14;
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v15 = sub_24794ED34();
  __swift_project_value_buffer(v15, qword_27EE58DF8);
  v9 = sub_24794ED14();
  v16 = sub_24794F154();
  if (os_log_type_enabled(v9, v16))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = a1;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v13 < v14;
    _os_log_impl(&dword_2478E1000, v9, v16, "#DeterministicUserSelector: Sampling decision for window %ld: %{BOOL}d", v11, 0x12u);
LABEL_10:
    MEMORY[0x24C1AF180](v11, -1, -1);
  }

LABEL_12:

  return v12;
}

uint64_t sub_24792B820(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57610, &qword_247951A50);
  if (swift_dynamicCast())
  {
    sub_2478E2F88(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_24794E9B4();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_0(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2478E9620(__src, &qword_27EE57618, &qword_247951A58);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_24794F394();
  }

  sub_24792C850(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_24792D1F4(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_24792C918(sub_24792DD40, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_24794EAC4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_247943F60(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_24794EFB4();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_24794EFE4();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_24794F394();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_247943F60(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_24794EFC4();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_24794EAD4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_24794EAD4();
    sub_24792DDA8(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_24792DDA8(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_24792DC40(*&__src[0], *(&__src[0] + 1));

  sub_24791EFD8(v32, *(&v32 + 1));
  return v32;
}

id DeterministicUserSelector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeterministicUserSelector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeterministicUserSelector(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24792BEB4(uint64_t a1)
{
  v2 = sub_24794F2C4();

  return sub_24792C2FC(a1, v2);
}

unint64_t sub_24792BEF8(uint64_t a1, uint64_t a2)
{
  sub_24794F584();
  sub_24794EF74();
  v4 = sub_24794F5B4();

  return sub_24792C3C4(a1, a2, v4);
}

uint64_t type metadata accessor for DeterministicUserSelector(uint64_t a1)
{
  result = qword_27EE575C0;
  if (!qword_27EE575C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24792BFBC(uint64_t a1)
{
  sub_24794EBB4();
  v2 = MEMORY[0x277CC9578];
  sub_24792DC94(&qword_27EE574B0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v3 = sub_24794EEB4();
  return sub_24792C6B0(a1, v3, MEMORY[0x277CC9578], &qword_27EE575D0, v2, MEMORY[0x277CC9598]);
}

unint64_t sub_24792C090(uint64_t a1)
{
  v1 = a1;
  sub_24794F584();
  sub_24794F5A4();
  v2 = sub_24794F5B4();

  return sub_24792C47C(v1, v2);
}

unint64_t sub_24792C0FC(uint64_t a1)
{
  v1 = a1;
  sub_24794F584();
  MEMORY[0x24C1AEAB0](v1);
  v2 = sub_24794F5B4();

  return sub_24792C4E8(v1, v2);
}

unint64_t sub_24792C168(uint64_t a1)
{
  sub_24794F584();

  sub_24794EF74();

  sub_24794F5A4();
  v2 = *(a1 + 40);
  sub_24794F224();

  sub_24794F5A4();
  v3 = sub_24794F5B4();

  return sub_24792C558(a1, v3);
}

unint64_t sub_24792C228(uint64_t a1)
{
  sub_24794EC04();
  v2 = MEMORY[0x277CC95F0];
  sub_24792DC94(&qword_27EE57528, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_24794EEB4();
  return sub_24792C6B0(a1, v3, MEMORY[0x277CC95F0], &qword_27EE575D8, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_24792C2FC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24792DB98(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C1AE7F0](v9, a1);
      sub_2478F6598(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24792C3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24794F4E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24792C47C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24792C4E8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24792C558(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      v10 = *(v9 + 16) == *(a1 + 16) && *(v9 + 24) == *(a1 + 24);
      if (v10 || (sub_24794F4E4()) && *(v9 + 32) == *(a1 + 32))
      {
        sub_24792DBF4();
        v11 = *(v9 + 40);
        v12 = *(a1 + 40);

        v13 = v11;
        v14 = v12;
        v15 = sub_24794F214();

        if (v15)
        {
          v16 = *(v9 + 80);
          v17 = *(v9 + 84);

          v18 = *(a1 + 84);
          if (v17)
          {
            if (*(a1 + 84))
            {
              return v5;
            }
          }

          else
          {
            if (v16 != *(a1 + 80))
            {
              v18 = 1;
            }

            if ((v18 & 1) == 0)
            {
              return v5;
            }
          }
        }

        else
        {
        }
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24792C6B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_24792DC94(v23, v24, v25);
      v19 = sub_24794EEE4();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t *sub_24792C850@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_2479366F8(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_24794E904();
      swift_allocObject();
      v8 = sub_24794E8B4();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_24794EAB4();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_24792C918(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_24791EFD8(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_24791EFD8(v7, v6);
    *v4 = xmmword_2479519D0;
    sub_24791EFD8(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_24794E8C4() && __OFSUB__(v7, sub_24794E8F4()))
      {
LABEL_26:
        __break(1u);
      }

      sub_24794E904();
      swift_allocObject();
      v14 = sub_24794E8A4();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_24792CD28(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_24791EFD8(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_2479519D0;
    sub_24791EFD8(0, 0xC000000000000000);
    sub_24794EA94();
    result = sub_24792CD28(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

void *sub_24792CCBC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_24792CD28(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_24794E8C4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_24794E8F4();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_24794E8E4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_24792CDDC@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_24794F354();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24792CE2C(uint64_t a1)
{
  v2 = sub_24794ECB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE575E0, &qword_247951A40);
    v9 = sub_24794F314();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_24792DC94(&qword_27EE575E8, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_24794EEB4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_24792DC94(&qword_27EE575F0, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_24794EEE4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_24792D14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {

    MEMORY[0x24C1AE4C0](95, 0xE100000000000000);
    MEMORY[0x24C1AE4C0](a3, a4);
  }

  else
  {
  }

  MEMORY[0x24C1AE4C0](95, 0xE100000000000000);
  MEMORY[0x24C1AE4C0](a5, a6);
}

uint64_t sub_24792D1F4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_247936010(result);
    }

    else
    {
      sub_24794E904();
      swift_allocObject();
      sub_24794E8D4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_24794EAB4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_24792D294(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v48 = a3;
  v5 = sub_24794EE64();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24794EE34();
  v49 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_24792B820(a1, a2);
  v14 = v13;
  sub_24792DC94(&qword_27EE57600, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_24794EE24();
  sub_24792DC40(v12, v14);
  sub_247935D50(v12, v14, v8);
  v46 = v12;
  v47 = v14;
  sub_24791EFD8(v12, v14);
  v15 = v48;
  sub_24794EE14();
  (*(v6 + 8))(v8, v5);
  v16 = v49;
  v54 = v9;
  v55 = sub_24792DC94(&qword_27EE57608, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  v17 = __swift_allocate_boxed_opaque_existential_1(&v52);
  (*(v16 + 16))(v17, v11, v9);
  __swift_project_boxed_opaque_existential_1(&v52, v54);
  sub_24794E9B4();
  v19 = v50;
  v18 = v51;
  __swift_destroy_boxed_opaque_existential_0(&v52);
  if ((v15 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_36;
  }

  v20 = v18 >> 62;
  if ((v18 >> 62) <= 1)
  {
    if (!v20)
    {
      v21 = BYTE6(v18);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v20 != 2)
  {
    v21 = 0;
    goto LABEL_12;
  }

  v23 = *(v19 + 16);
  v22 = *(v19 + 24);
  v21 = v22 - v23;
  if (__OFSUB__(v22, v23))
  {
    __break(1u);
LABEL_9:
    if (__OFSUB__(HIDWORD(v19), v19))
    {
      __break(1u);
      goto LABEL_39;
    }

    v21 = HIDWORD(v19) - v19;
  }

LABEL_12:
  if (__OFADD__(8 * v15, 8))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v21 < 8 * v15 + 8)
  {
    if (qword_27EE571C0 == -1)
    {
LABEL_15:
      v24 = sub_24794ED34();
      __swift_project_value_buffer(v24, qword_27EE58DF8);
      v25 = sub_24794ED14();
      v26 = sub_24794F164();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = v15;
        v29 = v27;
        *v27 = 134217984;
        *(v27 + 4) = v28;
        _os_log_impl(&dword_2478E1000, v25, v26, "#DeterministicUserSelector: Requested hash segment %ld is out of bounds for SHA256 digest.", v27, 0xCu);
        MEMORY[0x24C1AF180](v29, -1, -1);

        sub_24791EFD8(v46, v47);
        sub_24791EFD8(v19, v18);
      }

      else
      {
        sub_24791EFD8(v19, v18);
        sub_24791EFD8(v46, v47);
      }

      v35 = 0;
      goto LABEL_34;
    }

LABEL_37:
    swift_once();
    goto LABEL_15;
  }

  v48 = 8 * v15 + 8;
  v30 = v9;
  v31 = v11;
  sub_24792DC40(v19, v18);
  sub_24791AD04(8 * v15, v19, v18, &v50);
  sub_24792E2E4(8, v50, v51, &v52);
  v32 = v52;
  v33 = v53;
  v34 = v53 >> 62;
  if ((v53 >> 62) > 1)
  {
    if (v34 != 2)
    {
      sub_24791EFD8(v52, v53);
      sub_24791EFD8(v46, v47);
      sub_24791EFD8(v19, v18);
      v35 = 0;
      goto LABEL_33;
    }

    v36 = *(v52 + 16);
    v37 = sub_24794E8C4();
    if (!v37)
    {
      goto LABEL_42;
    }

    v38 = v37;
    v39 = sub_24794E8F4();
    if (__OFSUB__(v36, v39))
    {
      goto LABEL_40;
    }

    v40 = (v36 - v39 + v38);
    sub_24794E8E4();
    if (v40)
    {
LABEL_31:
      v45 = *v40;
      sub_24791EFD8(v32, v33);
      sub_24791EFD8(v46, v47);
      sub_24791EFD8(v19, v18);
      v35 = bswap64(v45);
      v16 = v49;
      goto LABEL_33;
    }

    __break(1u);
  }

  else if (!v34)
  {
    sub_24791EFD8(v52, v53);
    sub_24791EFD8(v46, v47);
    sub_24791EFD8(v19, v18);
    v35 = bswap64(v32);
LABEL_33:
    v11 = v31;
    v9 = v30;
LABEL_34:
    (*(v16 + 8))(v11, v9);
    return v35;
  }

  if (v32 > v32 >> 32)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    sub_24794E8E4();
    __break(1u);
    goto LABEL_43;
  }

  v41 = sub_24794E8C4();
  if (!v41)
  {
LABEL_43:
    result = sub_24794E8E4();
    goto LABEL_44;
  }

  v42 = v41;
  v43 = sub_24794E8F4();
  if (__OFSUB__(v32, v43))
  {
    goto LABEL_41;
  }

  v40 = (v32 - v43 + v42);
  result = sub_24794E8E4();
  if (v40)
  {
    goto LABEL_31;
  }

LABEL_44:
  __break(1u);
  return result;
}

id _s23CoreSpeechDataAnalytics25DeterministicUserSelectorC09calculateF4Slot8deviceID010siriSharedF2Id6localeSo8NSNumberCSgSS_SSSgSStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_24792D14C(a1, a2, a3, a4, a5, a6);
  v8 = sub_24792D294(v6, v7, 0);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v11 = sub_24794ED34();
  __swift_project_value_buffer(v11, qword_27EE58DF8);
  v12 = sub_24794ED14();
  v13 = sub_24794F164();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2478E1000, v12, v13, "#DeterministicUserSelector: Failed to calculate hash segment for user slot assignment", v14, 2u);
    MEMORY[0x24C1AF180](v14, -1, -1);
  }

  return 0;
}

uint64_t sub_24792D9B8(uint64_t a1)
{
  result = sub_24794EBB4();
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

unint64_t sub_24792DBF4()
{
  result = qword_27EE57408;
  if (!qword_27EE57408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE57408);
  }

  return result;
}

uint64_t sub_24792DC40(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24792DC94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_24792DD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_24792CCBC(sub_24792DDBC, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_24792DDA8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24791EFD8(result, a2);
  }

  return result;
}

uint64_t sub_24792DDDC()
{
  v1 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_voiceProfileId;
  v2 = sub_24794EC04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EnrollmentMetadata(uint64_t a1)
{
  result = qword_27EE57630;
  if (!qword_27EE57630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24792DEE0(uint64_t a1)
{
  result = sub_24794EC04();
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

uint64_t sub_24792DF78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - v3;
  v5 = sub_24794EC04();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  if (*(a1 + 16))
  {
    v12 = sub_24792BEF8(0x6F72506563696F76, 0xEE006449656C6966);
    if (v13)
    {
      sub_2478F65EC(*(a1 + 56) + 32 * v12, v23);
      if (swift_dynamicCast())
      {
        sub_24794EBC4();

        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          sub_2478FB164(v4);
        }

        else
        {
          v14 = *(v6 + 32);
          v14(v11, v4, v5);
          if (*(a1 + 16))
          {
            v15 = sub_24792BEF8(0x656C61636F6CLL, 0xE600000000000000);
            if (v16)
            {
              sub_2478F65EC(*(a1 + 56) + 32 * v15, v23);
              if (swift_dynamicCast())
              {
                v17 = v22[0];
                v18 = v22[1];
                v14(v9, v11, v5);
                type metadata accessor for EnrollmentMetadata(0);
                v19 = swift_allocObject();
                v14((v19 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_voiceProfileId), v9, v5);
                result = v19;
                v21 = (v19 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_locale);
                *v21 = v17;
                v21[1] = v18;
                return result;
              }
            }
          }

          (*(v6 + 8))(v11, v5);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_24792E250(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24794EC04();
    return a2;
  }

  return result;
}

uint64_t sub_24792E2E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_24792FCA8(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_24792FC44(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_24794EAE4();
    v15 = v14;
    result = sub_24791EFD8(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_24792E42C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1;
  *(v3 + 96) = xmmword_247951AA0;
  v8 = [a1 tdtiEnrollmentUtterances];
  if (v8)
  {
    v9 = v8;
    sub_2478E9538(0, &qword_27EE572E0, 0x277D65398);
    v10 = sub_24794F064();

    if (!(v10 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_4;
      }

LABEL_8:

      if (qword_27EE571C0 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }
  }

  if (!sub_24794F414())
  {
    goto LABEL_8;
  }

LABEL_4:
  v11 = [v7 locale];
  if (v11)
  {
    v12 = v11;
    v13 = sub_24794EF04();
    v15 = v14;
  }

  else
  {
    v15 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
  }

  v27 = [v7 profileID];
  if (!v27)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v28 = v27;
  v29 = sub_24794EF04();
  v31 = v30;

  v32 = sub_24792FD5C(v10, v13, v15, a2, a3, v29, v31);

  if (!v32)
  {

    goto LABEL_23;
  }

  v4[3] = v15;
  v4[4] = v7;
  v4[2] = v13;
  v4[10] = a2;
  v4[11] = a3;
  v33 = v4[12];
  v34 = v4[13];
  *(v4 + 6) = xmmword_247951AA0;
  v7 = v7;
  sub_24792DDA8(v33, v34);
  v4[5] = v32;
  v35 = v10 & 0xC000000000000001;
  if ((v10 & 0xC000000000000001) == 0)
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v36 = *(v10 + 32);
      goto LABEL_18;
    }

    __break(1u);
LABEL_33:
    swift_once();
LABEL_9:
    v16 = sub_24794ED34();
    __swift_project_value_buffer(v16, qword_27EE58DF8);
    v17 = v7;
    v18 = sub_24794ED14();
    v19 = sub_24794F164();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v48 = v21;
      *v20 = 136315138;
      v22 = [v17 profileID];

      if (!v22)
      {
LABEL_36:
        __break(1u);
        return;
      }

      v23 = sub_24794EF04();
      v25 = v24;

      v26 = sub_247924380(v23, v25, &v48);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_2478E1000, v18, v19, "#EnrollmentProfileData: enrollment Utterances from voice profile: %s is nil or empty", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x24C1AF180](v21, -1, -1);
      MEMORY[0x24C1AF180](v20, -1, -1);
    }

    else
    {
    }

LABEL_23:
    sub_24792DDA8(v4[12], v4[13]);
    type metadata accessor for EnrollmentProfileData();
    swift_deallocPartialClassInstance();
    return;
  }

  v36 = MEMORY[0x24C1AE890](0, v10);
LABEL_18:
  v37 = v36;
  v38 = [v36 productVersion];

  if (!v38)
  {
    v4[8] = 0;
    v4[9] = 0;
    if (v35)
    {
      goto LABEL_20;
    }

    goto LABEL_25;
  }

  v39 = sub_24794EF04();
  v41 = v40;

  v4[8] = v39;
  v4[9] = v41;
  if (!v35)
  {
LABEL_25:
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v42 = *(v10 + 32);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_20:
  v42 = MEMORY[0x24C1AE890](0, v10);
LABEL_27:
  v43 = v42;

  v44 = [v43 productType];

  if (v44)
  {
    v45 = sub_24794EF04();
    v47 = v46;
  }

  else
  {

    v45 = 0;
    v47 = 0;
  }

  v4[6] = v45;
  v4[7] = v47;
}

void sub_24792E89C()
{
  if (*(v0 + 104) >> 60 == 15)
  {
    v16 = v0;
    v2 = *(v0 + 40);
    if (v2 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24794F414())
    {
      v4 = 0;
      while ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1AE890](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_15;
        }

LABEL_12:
        if (*(v5 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_dedupeHashBytes + 8) >> 60 == 15)
        {
          sub_247934B70();
          if (v1)
          {

            return;
          }
        }

        ++v4;
        if (v6 == i)
        {
          goto LABEL_18;
        }
      }

      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v5 = *(v2 + 8 * v4 + 32);

      v6 = v4 + 1;
      if (!__OFADD__(v4, 1))
      {
        goto LABEL_12;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
    if (v2 >> 62)
    {
      v7 = sub_24794F414();
      if (v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_20:
        if (v7 < 1)
        {
          __break(1u);
          return;
        }

        v8 = 0;
        v17 = 0xF000000000000000;
        v18 = 0;
        v19 = -1;
        do
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x24C1AE890](v8, v2);
          }

          else
          {
            v9 = *(v2 + 8 * v8 + 32);
          }

          v10 = (v9 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_dedupeHashBytes);
          v11 = *(v9 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_dedupeHashBytes + 8);
          if (v11 >> 60 == 15)
          {
          }

          else
          {
            v12 = *v10;
            sub_24793044C(*v10, *(v9 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_dedupeHashBytes + 8));
            v13 = sub_247930210(v12, v11);

            if (v13 >= v19)
            {
              sub_24792DDA8(v12, v11);
            }

            else
            {
              sub_24792DDA8(v18, v17);
              v19 = v13;
              v17 = v11;
              v18 = v12;
            }
          }

          ++v8;
        }

        while (v7 != v8);
        goto LABEL_33;
      }
    }

    v17 = 0xF000000000000000;
    v18 = 0;
LABEL_33:
    v14 = *(v16 + 96);
    v15 = *(v16 + 104);
    *(v16 + 96) = v18;
    *(v16 + 104) = v17;
    sub_24792DDA8(v14, v15);
  }
}

uint64_t sub_24792EB10()
{
  v1 = *(v0[2] + 40);
  v0[3] = v1;
  if (v1 >> 62)
  {
    result = sub_24794F414();
    v0[4] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_24792E89C();
    v6 = v0[1];

    return v6();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[4] = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v3 = v0[3];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1AE890](0);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v3 + 32);
  }

  v0[5] = v4;
  v0[6] = 1;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_24792EC70;

  return sub_2479337A4();
}

uint64_t sub_24792EC70()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_24792EED0;
  }

  else
  {
    v2 = sub_24792ED84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24792ED84()
{
  v1 = v0[6];
  v2 = v0[4];

  if (v1 == v2)
  {
    sub_24792E89C();
    v4 = v0[1];

    return v4();
  }

  v5 = v0[6];
  v6 = v0[3];
  if ((v6 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x24C1AE890](v0[6]);
    v7 = result;
  }

  else
  {
    if (v5 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v7 = *(v6 + 8 * v5 + 32);
  }

  v0[5] = v7;
  v0[6] = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_24792EC70;

  return sub_2479337A4();
}

uint64_t sub_24792EED0()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_24792EF34()
{
  v5 = v0[5];
  v6 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_76;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1AE890](0, v5);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_81;
      }

      v8 = *(v5 + 32);
    }

    v9 = [*(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_enrollmentUtterance) productType];
    if (v9)
    {
      v1 = v9;
      v3 = sub_24794EF04();
      v2 = v10;

      v11 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v6)
      {
        goto LABEL_9;
      }

LABEL_13:
      if (!*(v11 + 16))
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }
  }

  v3 = 0;
  v2 = 0;
  v11 = v5 & 0xFFFFFFFFFFFFFF8;
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (!sub_24794F414())
  {
    goto LABEL_20;
  }

LABEL_14:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x24C1AE890](0, v5);
    goto LABEL_17;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v5 + 32);

LABEL_17:
    v13 = [*(v12 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_enrollmentUtterance) productVersion];
    if (v13)
    {
      v14 = v13;
      sub_24794EF04();
      v50 = v15;

LABEL_21:
      v49 = v3;
      v51 = v2;
      v52 = v6;
      v53 = MEMORY[0x277D84F90];
      v3 = v0;
      v2 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v6)
      {
        v4 = sub_24794F414();
      }

      else
      {
        v4 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = 0;
      v6 = v5 & 0xC000000000000001;
      v1 = MEMORY[0x277D84F90];
      while (v4 != v16)
      {
        if (v6)
        {
          v0 = MEMORY[0x24C1AE890](v16, v5);
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_74;
          }
        }

        else
        {
          if (v16 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_75;
          }

          v0 = *(v5 + 8 * v16 + 32);

          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            v7 = sub_24794F414();
            goto LABEL_3;
          }
        }

        v18 = sub_247934FA4();

        ++v16;
        if (v18)
        {
          MEMORY[0x24C1AE560](v19);
          if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24794F084();
          }

          v0 = &v53;
          sub_24794F0A4();
          v1 = v53;
          v16 = v17;
        }
      }

      v4 = v1 >> 62;
      if (v1 >> 62)
      {
        v20 = sub_24794F414();
      }

      else
      {
        v20 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = v3;
      v3 = v52;
      if (v52)
      {
        if (v20 != sub_24794F414())
        {
LABEL_40:

          if (qword_27EE571C0 != -1)
          {
            goto LABEL_82;
          }

          goto LABEL_41;
        }
      }

      else if (v20 != *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      if (v4)
      {
        v28 = v50;
        v27 = v51;
        if (sub_24794F414())
        {
          goto LABEL_47;
        }
      }

      else
      {
        v28 = v50;
        v27 = v51;
        if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_47:
          v29 = v21[13];
          if (v29 >> 60 != 15)
          {
            v36 = v21[12];
            v37 = v21[2];
            v38 = v21[3];
            v39 = objc_allocWithZone(MEMORY[0x277D58900]);
            sub_24792DC40(v36, v29);
            sub_24792DC40(v36, v29);
            result = [v39 init];
            if (result)
            {
              v41 = result;
              v42 = result;
              v43 = _sSo17SISchemaISOLocaleC23CoreSpeechDataAnalyticsE10fromStringyABSgSSFZ_0(v37, v38);
              [v42 setSiriInputLocale_];

              if (v27)
              {
                v44 = sub_24794EEF4();
              }

              else
              {
                v44 = 0;
              }

              [v42 setDeviceType_];

              if (v28)
              {
                v46 = sub_24794EEF4();
              }

              else
              {
                v46 = 0;
              }

              [v42 setProductVersion_];

              sub_24792DC40(v36, v29);
              v47 = sub_24794EAF4();
              sub_24792DDA8(v36, v29);
              [v42 setEnrollmentDataDedupeHashBytes_];

              sub_2478E9538(0, &qword_27EE57640, 0x277D58908);
              v48 = sub_24794F054();

              [v42 setEnrollmentUtterances_];

              sub_24792DDA8(v36, v29);
              sub_24792DDA8(v36, v29);
              return v41;
            }

            else
            {
              __break(1u);
            }

            return result;
          }

          if (qword_27EE571C0 != -1)
          {
            swift_once();
          }

          v30 = sub_24794ED34();
          __swift_project_value_buffer(v30, qword_27EE58DF8);
          v31 = sub_24794ED14();
          v32 = sub_24794F164();
          if (!os_log_type_enabled(v31, v32))
          {
LABEL_59:

            return 0;
          }

          v33 = swift_slowAlloc();
          *v33 = 0;
          v34 = "#EnrollmentProfileData: enrollment dedupe hash bytes is nil";
LABEL_58:
          _os_log_impl(&dword_2478E1000, v31, v32, v34, v33, 2u);
          MEMORY[0x24C1AF180](v33, -1, -1);
          goto LABEL_59;
        }
      }

      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v35 = sub_24794ED34();
      __swift_project_value_buffer(v35, qword_27EE58DF8);
      v31 = sub_24794ED14();
      v32 = sub_24794F164();
      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_59;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "#EnrollmentProfileData: enrollmentUtterances schema are empty";
      goto LABEL_58;
    }

LABEL_20:
    v50 = 0;
    goto LABEL_21;
  }

LABEL_81:
  __break(1u);
LABEL_82:
  swift_once();
LABEL_41:
  v22 = sub_24794ED34();
  __swift_project_value_buffer(v22, qword_27EE58DF8);

  v23 = sub_24794ED14();
  v24 = sub_24794F164();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134218240;
    if (v3)
    {
      v26 = sub_24794F414();
    }

    else
    {
      v26 = *(v2 + 16);
    }

    *(v25 + 4) = v26;

    *(v25 + 12) = 2048;
    if (v4)
    {
      v45 = sub_24794F414();
    }

    else
    {
      v45 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v25 + 14) = v45;

    _os_log_impl(&dword_2478E1000, v23, v24, "#EnrollmentProfileData: Failed to generate schema for some utterances. Expected %ld, got %ld", v25, 0x16u);
    MEMORY[0x24C1AF180](v25, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return 0;
}

uint64_t sub_24792F6E4()
{

  sub_24792DDA8(*(v0 + 96), *(v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t sub_24792F768(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_24794EAD4();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_24792F8A0(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_24792F8A0(v4, v5);
  }

  return sub_24794EAD4();
}

uint64_t sub_24792F8A0(uint64_t a1, uint64_t a2)
{
  result = sub_24794E8C4();
  if (!result || (result = sub_24794E8F4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_24794E8E4();
      return sub_24794EAD4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_24792F934(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v22 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_24791EFD8(v5, v4);
      __b = v5;
      v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_2479519D0;
      sub_24791EFD8(0, 0xC000000000000000);
      result = sub_24792FB9C(&__b, v2);
      v7 = __b;
      v8 = v21 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      sub_24791EFD8(v5, v4);
      __b = v5;
      LOWORD(v21) = v4;
      BYTE2(v21) = BYTE2(v4);
      BYTE3(v21) = BYTE3(v4);
      BYTE4(v21) = BYTE4(v4);
      BYTE5(v21) = BYTE5(v4);
      BYTE6(v21) = BYTE6(v4);
      result = memset(&__b, __c, BYTE6(v4));
      v7 = __b;
      v8 = v21 | ((WORD2(v21) | (BYTE6(v21) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    return result;
  }

  if (v6 != 2)
  {
    return result;
  }

  sub_24791EFD8(v5, v4);
  __b = v5;
  v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_2479519D0;
  sub_24791EFD8(0, 0xC000000000000000);
  sub_24794EA94();
  v9 = v21;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  result = sub_24794E8C4();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_24794E8F4();
  v14 = v10 - v13;
  if (__OFSUB__(v10, v13))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v15 = __OFSUB__(v11, v10);
  v16 = v11 - v10;
  if (v15)
  {
    goto LABEL_16;
  }

  v17 = sub_24794E8E4();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  result = memset(v12 + v14, v2, v18);
  *v3 = __b;
  v3[1] = v9 | 0x8000000000000000;
  return result;
}

uint64_t sub_24792FB9C(int *a1, int a2)
{
  result = sub_24794EAA4();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_24794E8C4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_24794E8F4();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_24794E8E4();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

uint64_t sub_24792FC44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_24792FCA8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t sub_24792FD5C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v34 = a6;
  v9 = a1;
  v40 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_28:
    v10 = sub_24794F414();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = 0;
    v7 = v9 & 0xC000000000000001;
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
    v36 = v9;
    do
    {
      if (v7)
      {
        v14 = MEMORY[0x24C1AE890](v12, v9);
      }

      else
      {
        if (v12 >= *(v13 + 16))
        {
          goto LABEL_27;
        }

        v14 = *(v9 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if ([v14 isExplicit])
      {
        sub_24794F3A4();
        sub_24794F3D4();
        sub_24794F3E4();
        sub_24794F3B4();
        v9 = v36;
      }

      else
      {
      }

      ++v12;
    }

    while (v16 != v10);
    v17 = v40;
    v11 = MEMORY[0x277D84F90];
    if ((v40 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  v17 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if ((v17 & 0x4000000000000000) != 0)
  {
LABEL_29:
    v18 = sub_24794F414();
    if (!v18)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  v18 = *(v17 + 16);
  if (!v18)
  {
LABEL_30:

    v7 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

LABEL_19:
  v40 = v11;
  sub_24794F3C4();
  if (v18 < 0)
  {
    __break(1u);
LABEL_45:
    swift_once();
    goto LABEL_34;
  }

  v19 = 0;
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x24C1AE890](v19, v17);
    }

    else
    {
      v20 = *(v17 + 8 * v19 + 32);
    }

    v21 = v20;
    ++v19;
    type metadata accessor for EnrollmentUtteranceData(0);
    v22 = swift_allocObject();
    v23 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_donationId;
    v24 = sub_24794EC04();
    (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
    *(v22 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_dedupeHashBytes) = xmmword_247951AA0;
    v25 = (v22 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_locale);
    *v25 = a2;
    v25[1] = a3;
    *(v22 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_enrollmentUtterance) = v21;
    v26 = (v22 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics23EnrollmentUtteranceData_samplingUtils);
    *v26 = a4;
    v26[1] = a5;

    sub_24794F3A4();
    sub_24794F3D4();
    sub_24794F3E4();
    sub_24794F3B4();
  }

  while (v18 != v19);

  v7 = v40;
LABEL_31:
  v11 = v7 >> 62;
  if (v7 >> 62)
  {
    if (sub_24794F414() == 5)
    {
      return v7;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) == 5)
  {
    return v7;
  }

  if (qword_27EE571C0 != -1)
  {
    goto LABEL_45;
  }

LABEL_34:
  v27 = sub_24794ED34();
  __swift_project_value_buffer(v27, qword_27EE58DF8);

  v28 = sub_24794ED14();
  v29 = sub_24794F164();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v40 = v31;
    *v30 = 134218242;
    if (v11)
    {
      v32 = sub_24794F414();
    }

    else
    {
      v32 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v30 + 4) = v32;

    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_247924380(v34, a7, &v40);
    _os_log_impl(&dword_2478E1000, v28, v29, "#EnrollmentProfileData: Expected 5 enrollment utterances, but got %ld for voice profile: %s", v30, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x24C1AF180](v31, -1, -1);
    MEMORY[0x24C1AF180](v30, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return 0;
}

uint64_t sub_247930210(uint64_t a1, unint64_t a2)
{
  sub_24792DC40(a1, a2);
  sub_24792E2E4(8, a1, a2, v35);
  v4 = v35[0];
  v5 = v35[1];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v7 = 0;
    if (v6 != 2)
    {
      goto LABEL_10;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v7 = v8 - v9;
    if (!v10)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v7) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = v7;
LABEL_10:
  v10 = __OFSUB__(8, v7);
  v11 = 8 - v7;
  if (v10)
  {
    __break(1u);
    goto LABEL_26;
  }

  v31 = sub_24792D1F4(v11 & ~(v11 >> 63));
  v32 = v12;
  sub_24792F934(&v31, 0);
  v13 = v31;
  v14 = v32;
  v36 = v4;
  v37 = v5;
  v33 = MEMORY[0x277CC9318];
  v34 = MEMORY[0x277CC9300];
  v15 = __swift_project_boxed_opaque_existential_1(&v31, MEMORY[0x277CC9318]);
  v16 = *v15;
  v17 = v15[1];
  sub_24792DC40(v4, v5);
  sub_24792DC40(v13, v14);
  sub_24792F768(v16, v17, &v36);
  sub_24791EFD8(v13, v14);
  sub_24791EFD8(v4, v5);
  __swift_destroy_boxed_opaque_existential_0(&v31);
  v19 = v36;
  v18 = v37;
  v20 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v20 != 2)
    {
      sub_24791EFD8(v36, v37);
      return 0;
    }

    v22 = *(v36 + 16);
    v23 = sub_24794E8C4();
    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = v23;
    v25 = sub_24794E8F4();
    if (!__OFSUB__(v22, v25))
    {
      v26 = (v22 - v25 + v24);
      sub_24794E8E4();
      if (v26)
      {
LABEL_23:
        v30 = *v26;
        sub_24791EFD8(v19, v18);
        return bswap64(v30);
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (!v20)
  {
    sub_24791EFD8(v36, v37);
    return bswap64(v19);
  }

  if (v36 > v36 >> 32)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_24794E8E4();
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v27 = sub_24794E8C4();
  if (v27)
  {
    v28 = v27;
    v29 = sub_24794E8F4();
    if (!__OFSUB__(v19, v29))
    {
      v26 = (v19 - v29 + v28);
      result = sub_24794E8E4();
      if (v26)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }

    goto LABEL_29;
  }

LABEL_32:
  result = sub_24794E8E4();
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_24793044C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24792DC40(result, a2);
  }

  return result;
}

uint64_t sub_247930480()
{
  v1 = v0[2];
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  type metadata accessor for EnrollmentProfileData();
  swift_allocObject();
  sub_24792E42C(v3, v2, v4);
  v0[3] = v5;
  if (v5)
  {
    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_247930644;

    return sub_24792EAF0();
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v8 = sub_24794ED34();
    __swift_project_value_buffer(v8, qword_27EE58DF8);
    v9 = sub_24794ED14();
    v10 = sub_24794F164();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2478E1000, v9, v10, "#EnrollmentProfileDataGenerator: cannot generate enrollmentProfile data", v11, 2u);
      MEMORY[0x24C1AF180](v11, -1, -1);
    }

    v12 = v0[1];

    return v12(0);
  }
}

uint64_t sub_247930644()
{
  v2 = *v1;
  v2[5] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24793077C, 0, 0);
  }

  else
  {
    v3 = v2[3];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_24793077C()
{
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_24794ED34();
  __swift_project_value_buffer(v2, qword_27EE58DF8);
  v3 = v1;
  v4 = sub_24794ED14();
  v5 = sub_24794F164();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2478E1000, v4, v5, "#EnrollmentProfileDataGenerator: Failed to prepare enrollment profile for upload: %@", v8, 0xCu);
    sub_2478EFF2C(v9);
    MEMORY[0x24C1AF180](v9, -1, -1);
    MEMORY[0x24C1AF180](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_247930928()
{

  return swift_deallocClassInstance();
}

uint64_t sub_247930984()
{
  v1[2] = v0;
  v2 = sub_24794EBB4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247930A44, 0, 0);
}

uint64_t sub_247930A44()
{
  v1 = [*(*(v0[2] + 16) + 16) getVoiceProfile];
  v0[6] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 dateAdded];
    if (v3)
    {
      v4 = v3;
      sub_24794EB94();

      v5 = [v2 locale];
      if (v5)
      {
        v6 = v5;
        v7 = sub_24794EF04();
        v9 = v8;

        v0[7] = v7;
        v0[8] = v9;
        v10 = swift_task_alloc();
        v0[9] = v10;
        *v10 = v0;
        v10[1] = sub_247930D3C;
        v11 = v0[5];

        return sub_247931E1C(v2, v11, v7, v9);
      }

      (*(v0[4] + 8))(v0[5], v0[3]);
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v16 = sub_24794ED34();
    __swift_project_value_buffer(v16, qword_27EE58DF8);
    v17 = sub_24794ED14();
    v18 = sub_24794F164();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2478E1000, v17, v18, "#EnrollmentRecordsGenerator: enrolledDate or locale being nil for voiceProfile", v19, 2u);
      MEMORY[0x24C1AF180](v19, -1, -1);
    }
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v13 = sub_24794ED34();
    __swift_project_value_buffer(v13, qword_27EE58DF8);
    v2 = sub_24794ED14();
    v14 = sub_24794F164();
    if (os_log_type_enabled(v2, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2478E1000, v2, v14, "#EnrollmentRecordsGenerator: voiceProfile being nil", v15, 2u);
      MEMORY[0x24C1AF180](v15, -1, -1);
    }
  }

  v20 = v0[1];
  v21 = MEMORY[0x277D84F90];

  return v20(v21);
}

uint64_t sub_247930D3C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;

  return MEMORY[0x2822009F8](sub_247930E3C, 0, 0);
}

void sub_247930E3C()
{
  v27 = v0;
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_24794ED34();
  __swift_project_value_buffer(v2, qword_27EE58DF8);

  v3 = v1;
  v4 = sub_24794ED14();
  v5 = sub_24794F144();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315394;
    v10 = sub_24794EC04();
    v11 = MEMORY[0x24C1AE590](v6, v10);
    v13 = sub_247924380(v11, v12, &v26);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v14 = [v7 profileID];

    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = sub_24794EF04();
    v17 = v16;

    v18 = sub_247924380(v15, v17, &v26);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_2478E1000, v4, v5, "#EnrollmentRecordsGenerator: generated donationIds: %s for profile: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1AF180](v9, -1, -1);
    MEMORY[0x24C1AF180](v8, -1, -1);
  }

  else
  {
    v19 = v0[6];
  }

  v20 = v0[5];
  v21 = v0[6];
  v22 = v0[3];
  v23 = v0[4];
  v24 = sub_2479310DC(v0[10], v0[11], v0[7], v0[8]);

  (*(v23 + 8))(v20, v22);

  v25 = v0[1];

  v25(v24);
}

uint64_t sub_2479310DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v96 = a3;
  v97 = a4;
  v99 = sub_24794EC04();
  v6 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v100 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57668, &qword_247951BC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v81 - v9;
  v11 = sub_24794EEF4();
  v12 = MGGetStringAnswer();

  if (v12)
  {
    *&v83 = sub_24794EF04();
    *(&v83 + 1) = v13;
  }

  else
  {
    v83 = 0uLL;
  }

  v14 = sub_24794EEF4();
  v15 = MGGetStringAnswer();

  if (v15)
  {
    v16 = sub_24794EF04();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v95 = v81 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics26EnrollmentRecordsGenerator_currentDate;
  v105[54] = a1;
  v105[55] = 0;
  v93 = 0x8000000247952D50;
  v94 = (v6 + 32);
  v105[56] = a2;
  v105[57] = 0;
  v106 = 0;
  v91 = 0x8000000247952F10;
  v92 = 0x8000000247952EF0;
  v89 = 0x8000000247952D70;
  v90 = (v6 + 16);
  v19 = HIBYTE(*(&v83 + 1)) & 0xFLL;
  if ((*(&v83 + 1) & 0x2000000000000000) == 0)
  {
    v19 = v83 & 0xFFFFFFFFFFFFLL;
  }

  v20 = HIBYTE(v18) & 0xF;
  *&v82 = v16;
  *(&v82 + 1) = v18;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (*(&v83 + 1))
  {
    v21 = v19 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21;
  v88 = v22;
  v84 = (v6 + 8);
  if (v18)
  {
    v23 = v20 == 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = v23;
  v85 = v24;

  v25 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D837D0];
  v87 = xmmword_247951B50;
  v86 = v10;
  v27 = v100;
  while (1)
  {
    sub_247931B7C(v10);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57670, &qword_247951BD0);
    if ((*(*(v28 - 8) + 48))(v10, 1, v28) == 1)
    {

      v67 = v25[2];
      if (!v67)
      {

        return MEMORY[0x277D84F90];
      }

      v68 = *(v81 + 24);
      v105[0] = MEMORY[0x277D84F90];
      sub_24794F3C4();
      v69 = *(v68 + 16);
      for (i = 32; ; i += 8)
      {
        if (v69 > 1)
        {
          if (v69 == 2)
          {
            type metadata accessor for MetricsCalcRecord(0);
            swift_allocObject();

            sub_247900C7C(v79);
            goto LABEL_58;
          }
        }

        else if (v69)
        {
          type metadata accessor for ButtonPressRequestRecord(0);
          *(swift_allocObject() + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) = 0;

          v73 = sub_2478F0B18(v72);
          v74 = v73;
          v75 = *(v73 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best + 8);
          if (v75)
          {
            v76 = *(v73 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale);
            if (v76)
            {
              v100 = *(v73 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best);

              v77 = v76;
              v78 = SISchemaISOLocale.toString()();

              LOBYTE(v77) = sub_247944340(v100, v75, v78._countAndFlagsBits, v78._object);

              *(v74 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) = v77;
            }
          }

          goto LABEL_58;
        }

        type metadata accessor for SiriRequestRecord(0);
        swift_allocObject();

        sub_2478F0B18(v71);
LABEL_58:
        sub_24794F3A4();
        sub_24794F3D4();
        sub_24794F3E4();
        sub_24794F3B4();
        if (!--v67)
        {

          return v105[0];
        }
      }
    }

    v98 = v25;
    v29 = &v10[*(v28 + 48)];
    v30 = *v29;
    v31 = *(v29 + 1);
    v32 = v99;
    (*v94)(v27, v10, v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57678, &qword_247951BD8);
    inited = swift_initStackObject();
    *(inited + 16) = v87;
    v105[0] = 0xD000000000000017;
    v105[1] = v93;
    sub_24794F2E4();
    sub_24794EB74();
    *(inited + 96) = MEMORY[0x277D839F8];
    *(inited + 72) = v34;
    v105[0] = 0xD000000000000014;
    v105[1] = v92;
    sub_24794F2E4();
    *(inited + 168) = MEMORY[0x277D839B0];
    *(inited + 144) = 1;
    v105[0] = 0xD000000000000016;
    v105[1] = v91;
    sub_24794F2E4();
    *(inited + 240) = v32;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
    (*v90)(boxed_opaque_existential_1, v27, v32);
    strcpy(v105, "trigger_phrase");
    HIBYTE(v105[1]) = -18;
    sub_24794F2E4();
    *(inited + 312) = v26;
    *(inited + 288) = v30;
    *(inited + 296) = v31;
    v105[0] = 0xD000000000000011;
    v105[1] = v89;
    sub_24794F2E4();
    *(inited + 384) = v26;
    v36 = v97;
    *(inited + 360) = v96;
    *(inited + 368) = v36;

    v37 = sub_24794CF98(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57680, &unk_247951BE0);
    swift_arrayDestroy();
    if (v88)
    {
      v10 = v86;
      v25 = v98;
      if ((v85 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_50;
    }

    strcpy(&v103, "device_type");
    HIDWORD(v103) = -352321536;
    sub_24794F2E4();
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57438, &qword_247950E90);
    v103 = v83;
    sub_247933794(&v103, v102);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = v37;
    v39 = sub_24792BEB4(v105);
    v41 = v37[2];
    v42 = (v40 & 1) == 0;
    v43 = __OFADD__(v41, v42);
    v44 = v41 + v42;
    if (v43)
    {
      break;
    }

    v45 = v40;
    if (v37[3] >= v44)
    {
      v10 = v86;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v60 = v39;
        sub_24794BD68();
        v39 = v60;
      }
    }

    else
    {
      sub_247949164(v44, isUniquelyReferenced_nonNull_native);
      v39 = sub_24792BEB4(v105);
      v10 = v86;
      if ((v45 & 1) != (v46 & 1))
      {
        goto LABEL_72;
      }
    }

    v25 = v98;
    v37 = v101;
    if (v45)
    {
      v47 = (v101[7] + 32 * v39);
      __swift_destroy_boxed_opaque_existential_0(v47);
      sub_247933794(v102, v47);
    }

    else
    {
      v101[(v39 >> 6) + 8] |= 1 << v39;
      v48 = v39;
      sub_24792DB98(v105, v37[6] + 40 * v39);
      sub_247933794(v102, (v37[7] + 32 * v48));
      v49 = v37[2];
      v43 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v43)
      {
        goto LABEL_70;
      }

      v37[2] = v50;
    }

    sub_2478F6598(v105);
    if ((v85 & 1) == 0)
    {
LABEL_39:
      strcpy(&v103, "system_build");
      BYTE13(v103) = 0;
      HIWORD(v103) = -5120;
      sub_24794F2E4();
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57438, &qword_247950E90);
      v103 = v82;
      sub_247933794(&v103, v102);

      v51 = swift_isUniquelyReferenced_nonNull_native();
      v101 = v37;
      v52 = sub_24792BEB4(v105);
      v54 = v37[2];
      v55 = (v53 & 1) == 0;
      v43 = __OFADD__(v54, v55);
      v56 = v54 + v55;
      if (v43)
      {
        goto LABEL_69;
      }

      v57 = v53;
      if (v37[3] >= v56)
      {
        if (v51)
        {
          goto LABEL_44;
        }

        v61 = v52;
        sub_24794BD68();
        v52 = v61;
        v37 = v101;
        if ((v57 & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_45:
        v59 = (v37[7] + 32 * v52);
        __swift_destroy_boxed_opaque_existential_0(v59);
        sub_247933794(v102, v59);
      }

      else
      {
        sub_247949164(v56, v51);
        v52 = sub_24792BEB4(v105);
        if ((v57 & 1) != (v58 & 1))
        {
          goto LABEL_72;
        }

LABEL_44:
        v37 = v101;
        if (v57)
        {
          goto LABEL_45;
        }

LABEL_47:
        v37[(v52 >> 6) + 8] |= 1 << v52;
        v62 = v52;
        sub_24792DB98(v105, v37[6] + 40 * v52);
        sub_247933794(v102, (v37[7] + 32 * v62));
        v63 = v37[2];
        v43 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v43)
        {
          goto LABEL_71;
        }

        v37[2] = v64;
      }

      sub_2478F6598(v105);
    }

LABEL_50:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_24793ACB4(0, v25[2] + 1, 1, v25);
    }

    v66 = v25[2];
    v65 = v25[3];
    if (v66 >= v65 >> 1)
    {
      v25 = sub_24793ACB4((v65 > 1), v66 + 1, 1, v25);
    }

    (*v84)(v100, v99);
    v25[2] = v66 + 1;
    v25[v66 + 4] = v37;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  result = sub_24794F514();
  __break(1u);
  return result;
}

void sub_247931B7C(uint64_t a1@<X8>)
{
  v3 = sub_24794EC04();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32) != 1)
  {
    v9 = *(v1 + 8);
    v10 = *(*v1 + 16);
    if (v9 != v10)
    {
      if (v9 >= v10)
      {
        __break(1u);
      }

      else
      {
        v11 = *(v4 + 16);
        v12 = *v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9;
        *(v1 + 8) = v9 + 1;
        v11(v6, v12, v3);
        v13 = *(v1 + 16);
        v14 = *(v1 + 24);
        v15 = *(v13 + 16);
        if (v14 == v15)
        {
          (*(v4 + 8))(v6, v3);
          goto LABEL_9;
        }

        if (v14 < v15)
        {
          v17 = v13 + 16 * v14;
          v19 = *(v17 + 32);
          v18 = *(v17 + 40);
          *(v1 + 24) = v14 + 1;
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57670, &qword_247951BD0);
          v21 = (a1 + *(v20 + 48));
          (*(v4 + 32))(a1, v6, v3);
          *v21 = v19;
          v21[1] = v18;
          (*(*(v20 - 8) + 56))(a1, 0, 1, v20);

          return;
        }
      }

      __break(1u);
      return;
    }

LABEL_9:
    *(v1 + 32) = 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57670, &qword_247951BD0);
    (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    return;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57670, &qword_247951BD0);
  v8 = *(*(v7 - 8) + 56);

  v8(a1, 1, 1, v7);
}

uint64_t sub_247931E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_24794EC24();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v5[11] = swift_task_alloc();
  v7 = sub_24794EC04();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v8 = sub_24794EA84();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247932018, 0, 0);
}

void sub_247932018()
{
  v74 = v0;
  v73[1] = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 24) tdtiEnrollmentUtterances];
  if (!v1)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 24);
    v47 = sub_24794ED34();
    __swift_project_value_buffer(v47, qword_27EE58DF8);
    v48 = v46;
    v49 = sub_24794ED14();
    v50 = sub_24794F164();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 24);
    if (v51)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v73[0] = v54;
      *v53 = 136315138;
      v55 = [v52 profileID];

      if (!v55)
      {
        __break(1u);
        return;
      }

      v56 = sub_24794EF04();
      v58 = v57;

      v59 = sub_247924380(v56, v58, v73);

      *(v53 + 4) = v59;
      _os_log_impl(&dword_2478E1000, v49, v50, "#EnrollmentRecordsGenerator: enrollment Utterances from voice profile: %s is nil", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x24C1AF180](v54, -1, -1);
      MEMORY[0x24C1AF180](v53, -1, -1);
    }

    else
    {
    }

    goto LABEL_45;
  }

  v2 = v1;
  sub_2479336F0();
  v3 = sub_24794F064();
  *(v0 + 160) = v3;

  if (v3 >> 62)
  {
LABEL_43:
    v68 = sub_24794F414();
    *(v0 + 168) = v68;
    if (v68)
    {
      goto LABEL_4;
    }

    goto LABEL_44;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 168) = v4;
  if (!v4)
  {
LABEL_44:

LABEL_45:

    v69 = *(v0 + 8);
    v70 = MEMORY[0x277D84F90];
    v71 = MEMORY[0x277D84F90];

    v69(v70, v71);
    return;
  }

LABEL_4:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = 0x27EE57000;
  while (1)
  {
    *(v0 + 176) = v6;
    *(v0 + 184) = v6;
    v15 = *(v0 + 160);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x24C1AE890](v5);
    }

    else
    {
      if (v5 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v16 = *(v15 + 8 * v5 + 32);
    }

    v14 = v16;
    *(v0 + 192) = v16;
    *(v0 + 200) = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v17 = [v16 enrollmentUtteranceUrl];
    if (!v17)
    {
      if (*(v7 + 448) != -1)
      {
        swift_once();
      }

      v31 = sub_24794ED34();
      __swift_project_value_buffer(v31, qword_27EE58DF8);
      v32 = sub_24794ED14();
      v33 = sub_24794F164();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_2478E1000, v32, v33, "#EnrollmentRecordsGenerator: cannot get audioUrl", v34, 2u);
        MEMORY[0x24C1AF180](v34, -1, -1);
      }

      goto LABEL_8;
    }

    v18 = v17;
    sub_24794EA64();

    v19 = objc_allocWithZone(MEMORY[0x277CB8398]);
    v20 = sub_24794EA34();
    *(v0 + 16) = 0;
    v21 = [v19 initForReading:v20 commonFormat:3 interleaved:0 error:v0 + 16];

    v22 = *(v0 + 16);
    if (!v21)
    {
      v35 = v22;
      v36 = sub_24794E9D4();

      swift_willThrow();
      if (*(v7 + 448) != -1)
      {
        swift_once();
      }

      v37 = sub_24794ED34();
      __swift_project_value_buffer(v37, qword_27EE58DF8);
      v38 = v36;
      v39 = sub_24794ED14();
      v40 = sub_24794F164();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        v43 = v36;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v44;
        *v42 = v44;
        _os_log_impl(&dword_2478E1000, v39, v40, "#EnrollmentRecordsGenerator: error creating AVAudioFile: %@", v41, 0xCu);
        sub_2478E9620(v42, &qword_27EE57280, &unk_2479503C0);
        v45 = v42;
        v7 = 0x27EE57000;
        MEMORY[0x24C1AF180](v45, -1, -1);
        MEMORY[0x24C1AF180](v41, -1, -1);
      }

      else
      {
      }

      goto LABEL_7;
    }

    v23 = v22;
    v24 = [v21 processingFormat];
    [v24 sampleRate];
    v26 = v25;

    if (v26 == 16000.0)
    {
      break;
    }

    if (*(v7 + 448) != -1)
    {
      swift_once();
    }

    v27 = sub_24794ED34();
    __swift_project_value_buffer(v27, qword_27EE58DF8);
    v28 = v21;
    v29 = sub_24794ED14();
    v30 = sub_24794F164();

    if (os_log_type_enabled(v29, v30))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      v9 = [v28 processingFormat];
      [v9 sampleRate];
      v11 = v10;

      *(v8 + 4) = v11;
      _os_log_impl(&dword_2478E1000, v29, v30, "#EnrollmentRecordsGenerator: audio sampling rate: %f is not 16kHz, skipping utterance sampling", v8, 0xCu);
      v12 = v8;
      v7 = 0x27EE57000uLL;
      MEMORY[0x24C1AF180](v12, -1, -1);
      v13 = v14;
      v14 = v29;
    }

    else
    {
      v13 = v28;
      v28 = v29;
    }

LABEL_7:
    (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
LABEL_8:
    v5 = *(v0 + 200);
    if (v5 == *(v0 + 168))
    {
      goto LABEL_44;
    }
  }

  v60 = *(v0 + 56);

  v62 = *(v60 + 32);
  v61 = *(v60 + 40);

  sub_24794EC14();
  v72 = (*(v61 + 208) + **(v61 + 208));
  v63 = swift_task_alloc();
  *(v0 + 208) = v63;
  *v63 = v0;
  v63[1] = sub_2479328C8;
  v64 = *(v0 + 152);
  v66 = *(v0 + 80);
  v65 = *(v0 + 88);
  v67 = *(v0 + 32);

  v72(v65, v67, v64, v66, v62, v61);
}

uint64_t sub_2479328C8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_247932A4C, 0, 0);
}

uint64_t sub_247932A4C()
{
  v106 = v0;
  v105[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2478E9620(v3, &qword_27EE57278, &unk_247950590);
    if (qword_27EE571C0 != -1)
    {
LABEL_57:
      swift_once();
    }

    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v8 = sub_24794ED34();
    __swift_project_value_buffer(v8, qword_27EE58DF8);
    (*(v7 + 16))(v4, v5, v6);
    v9 = sub_24794ED14();
    v10 = sub_24794F164();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 144);
    v103 = *(v0 + 152);
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    if (v11)
    {
      v100 = *(v0 + 192);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v105[0] = v16;
      *v15 = 136315138;
      sub_24793373C();
      v17 = sub_24794F4D4();
      v19 = v18;
      v20 = *(v13 + 8);
      v20(v12, v14);
      v21 = sub_247924380(v17, v19, v105);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_2478E1000, v9, v10, "#EnrollmentRecordsGenerator: cannot donate audio file: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C1AF180](v16, -1, -1);
      MEMORY[0x24C1AF180](v15, -1, -1);

      v20(v103, v14);
    }

    else
    {

      v35 = *(v13 + 8);
      v35(v12, v14);
      v35(v103, v14);
    }

    v26 = *(v0 + 176);
    v36 = *(v0 + 184);
  }

  else
  {
    v23 = *(v0 + 112);
    v22 = *(v0 + 120);
    v24 = *(v2 + 32);
    v24(v22, v3, v1);
    (*(v2 + 16))(v23, v22, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v0 + 176);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_24793AADC(0, v26[2] + 1, 1, *(v0 + 176));
    }

    v28 = v26[2];
    v27 = v26[3];
    if (v28 >= v27 >> 1)
    {
      v26 = sub_24793AADC((v27 > 1), v28 + 1, 1, v26);
    }

    v29 = *(v0 + 192);
    v31 = *(v0 + 104);
    v30 = *(v0 + 112);
    v32 = *(v0 + 96);
    v26[2] = v28 + 1;
    v24(v26 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v28, v30, v32);
    v33 = [v29 triggerPhrase];
    if (v33 == 2)
    {
      v104 = 0xE400000000000000;
      v34 = 1769105747;
    }

    else if (v33 == 1)
    {
      v104 = 0xE200000000000000;
      v34 = 21320;
    }

    else
    {
      v104 = 0xE700000000000000;
      v34 = 0x6E776F6E6B6E55;
    }

    v101 = v34;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v0 + 184);
    if ((v37 & 1) == 0)
    {
      v36 = sub_24793A9D0(0, *(v36 + 2) + 1, 1, *(v0 + 184));
    }

    v39 = *(v36 + 2);
    v38 = *(v36 + 3);
    if (v39 >= v38 >> 1)
    {
      v36 = sub_24793A9D0((v38 > 1), v39 + 1, 1, v36);
    }

    v40 = *(v0 + 152);
    v41 = *(v0 + 128);
    v42 = *(v0 + 136);
    v43 = *(v0 + 120);
    v45 = *(v0 + 96);
    v44 = *(v0 + 104);

    (*(v44 + 8))(v43, v45);
    (*(v42 + 8))(v40, v41);
    *(v36 + 2) = v39 + 1;
    v46 = &v36[16 * v39];
    *(v46 + 4) = v101;
    *(v46 + 5) = v104;
  }

  v47 = *(v0 + 200);
  if (v47 == *(v0 + 168))
  {
LABEL_22:

    v48 = *(v0 + 8);

    return v48(v26, v36);
  }

  v50 = off_278EB5000;
  v51 = 0x27EE57000uLL;
  while (1)
  {
    *(v0 + 176) = v26;
    *(v0 + 184) = v36;
    v52 = *(v0 + 160);
    if ((v52 & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x24C1AE890](v47);
    }

    else
    {
      if (v47 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v53 = *(v52 + 8 * v47 + 32);
    }

    v54 = v53;
    *(v0 + 192) = v53;
    *(v0 + 200) = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v55 = [v53 v50[490]];
    if (!v55)
    {
      if (*(v51 + 448) != -1)
      {
        swift_once();
      }

      v75 = sub_24794ED34();
      __swift_project_value_buffer(v75, qword_27EE58DF8);
      v76 = sub_24794ED14();
      v77 = sub_24794F164();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_2478E1000, v76, v77, "#EnrollmentRecordsGenerator: cannot get audioUrl", v78, 2u);
        v79 = v78;
        v51 = 0x27EE57000;
        MEMORY[0x24C1AF180](v79, -1, -1);
      }

      goto LABEL_27;
    }

    v56 = v55;
    sub_24794EA64();

    v57 = objc_allocWithZone(MEMORY[0x277CB8398]);
    v58 = sub_24794EA34();
    *(v0 + 16) = 0;
    v59 = [v57 initForReading:v58 commonFormat:3 interleaved:0 error:v0 + 16];

    v60 = *(v0 + 16);
    if (!v59)
    {
      v80 = v60;
      v81 = sub_24794E9D4();

      swift_willThrow();
      if (*(v51 + 448) != -1)
      {
        swift_once();
      }

      v82 = sub_24794ED34();
      __swift_project_value_buffer(v82, qword_27EE58DF8);
      v83 = v81;
      v84 = sub_24794ED14();
      v85 = sub_24794F164();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *v86 = 138412290;
        v88 = v81;
        v89 = _swift_stdlib_bridgeErrorToNSError();
        *(v86 + 4) = v89;
        *v87 = v89;
        _os_log_impl(&dword_2478E1000, v84, v85, "#EnrollmentRecordsGenerator: error creating AVAudioFile: %@", v86, 0xCu);
        sub_2478E9620(v87, &qword_27EE57280, &unk_2479503C0);
        v90 = v87;
        v50 = off_278EB5000;
        MEMORY[0x24C1AF180](v90, -1, -1);
        v91 = v86;
        v51 = 0x27EE57000;
        MEMORY[0x24C1AF180](v91, -1, -1);
      }

      else
      {
      }

      goto LABEL_51;
    }

    v61 = v60;
    v62 = [v59 processingFormat];
    [v62 sampleRate];
    v64 = v63;

    if (v64 == 16000.0)
    {
      break;
    }

    if (*(v51 + 448) != -1)
    {
      swift_once();
    }

    v65 = sub_24794ED34();
    __swift_project_value_buffer(v65, qword_27EE58DF8);
    v66 = v59;
    v67 = sub_24794ED14();
    v68 = sub_24794F164();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 134217984;
      v70 = [v66 processingFormat];
      [v70 sampleRate];
      v72 = v71;

      v51 = 0x27EE57000;
      *(v69 + 4) = v72;
      _os_log_impl(&dword_2478E1000, v67, v68, "#EnrollmentRecordsGenerator: audio sampling rate: %f is not 16kHz, skipping utterance sampling", v69, 0xCu);
      v73 = v69;
      v50 = off_278EB5000;
      MEMORY[0x24C1AF180](v73, -1, -1);
      v74 = v54;
      v54 = v67;
    }

    else
    {
      v74 = v66;
      v66 = v67;
    }

LABEL_51:
    (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
LABEL_27:
    v47 = *(v0 + 200);
    if (v47 == *(v0 + 168))
    {
      goto LABEL_22;
    }
  }

  v92 = *(v0 + 56);

  v94 = *(v92 + 32);
  v93 = *(v92 + 40);

  sub_24794EC14();
  v102 = (*(v93 + 208) + **(v93 + 208));
  v95 = swift_task_alloc();
  *(v0 + 208) = v95;
  *v95 = v0;
  v95[1] = sub_2479328C8;
  v96 = *(v0 + 152);
  v98 = *(v0 + 80);
  v97 = *(v0 + 88);
  v99 = *(v0 + 32);

  return v102(v97, v99, v96, v98, v94, v93);
}