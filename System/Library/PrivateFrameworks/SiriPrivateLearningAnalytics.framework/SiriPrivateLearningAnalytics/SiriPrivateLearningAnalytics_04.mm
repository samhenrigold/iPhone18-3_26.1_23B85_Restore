uint64_t sub_222A727E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_222B02768();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v13;
  *(v14 + 40) = a3;
  *(v14 + 48) = a4;
  *(v14 + 56) = a1;
  *(v14 + 64) = a5;

  sub_222A72FE8(0, 0, v11, &unk_222B08CE8, v14);
}

uint64_t sub_222A72944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 97) = a8;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  return MEMORY[0x2822009F8](sub_222A7296C, 0, 0);
}

uint64_t sub_222A7296C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    *(v0 + 96) = *(v0 + 97);
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_222A72B38;

    return sub_222A735C0((v0 + 96));
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v4 = sub_222B02148();
    __swift_project_value_buffer(v4, qword_280CBC458);
    v5 = sub_222B02128();
    v6 = sub_222B028E8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_222A1C000, v5, v6, "The scheduler was deallocated, cancelling the execution of the user feedback learning platform", v7, 2u);
      MEMORY[0x223DC7E30](v7, -1, -1);
    }

    v8 = *(v0 + 64);
    v9 = *(v0 + 48);

    v9(v8);
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_222A72B38(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_222A72C38, 0, 0);
}

uint64_t sub_222A72C38()
{
  v1 = v0[11];
  v2 = v0[6];
  v5 = v0[8];

  sub_222A96CE4(v1);
  v2(v5);

  v3 = v0[1];

  return v3();
}

uint64_t sub_222A72CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_222A77A30(a3, v25 - v10);
  v12 = sub_222B02768();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_222A34F20(v11, &qword_27D01D720, &qword_222B07760);
  }

  else
  {
    sub_222B02758();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_222B026E8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_222B02408() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D738, &qword_222B08D40);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_222A34F20(a3, &qword_27D01D720, &qword_222B07760);

      return v22;
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

  sub_222A34F20(a3, &qword_27D01D720, &qword_222B07760);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D738, &qword_222B08D40);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_222A72FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_222A77A30(a3, v25 - v10);
  v12 = sub_222B02768();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_222A34F20(v11, &qword_27D01D720, &qword_222B07760);
  }

  else
  {
    sub_222B02758();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_222B026E8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_222B02408() + 32;
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

      sub_222A34F20(a3, &qword_27D01D720, &qword_222B07760);

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

  sub_222A34F20(a3, &qword_27D01D720, &qword_222B07760);
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

uint64_t sub_222A732D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_222A77A30(a3, v25 - v10);
  v12 = sub_222B02768();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_222A34F20(v11, &qword_27D01D720, &qword_222B07760);
  }

  else
  {
    sub_222B02758();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_222B026E8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_222B02408() + 32;
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

      sub_222A34F20(a3, &qword_27D01D720, &qword_222B07760);

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

  sub_222A34F20(a3, &qword_27D01D720, &qword_222B07760);
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

uint64_t sub_222A735C0(_BYTE *a1)
{
  *(v2 + 192) = v1;
  v4 = sub_222B020D8();
  *(v2 + 200) = v4;
  *(v2 + 208) = *(v4 - 8);
  *(v2 + 216) = swift_task_alloc();
  v5 = sub_222B02098();
  *(v2 + 224) = v5;
  *(v2 + 232) = *(v5 - 8);
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 304) = *a1;

  return MEMORY[0x2822009F8](sub_222A736F4, 0, 0);
}

uint64_t sub_222A736F4()
{
  v40 = v0;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v1 = sub_222B02148();
  *(v0 + 256) = __swift_project_value_buffer(v1, qword_280CBC458);
  v2 = sub_222B02128();
  v3 = sub_222B028D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v38 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_222A230FC(0xD000000000000029, 0x8000000222B125C0, &v38);
    _os_log_impl(&dword_222A1C000, v2, v3, "PluginScheduler.%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223DC7E30](v5, -1, -1);
    MEMORY[0x223DC7E30](v4, -1, -1);
  }

  v6 = (*(v0 + 192) + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_featureFlags);
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  *(v0 + 96) = &type metadata for SiriPrivateLearningFeatureFlag;
  *(v0 + 104) = sub_222A36228();
  *(v0 + 72) = 13;
  v9 = (*(v8 + 8))(v0 + 72, v7, v8);
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  if (v9)
  {
    if (*(v0 + 304) == 3)
    {
      v10 = *(v0 + 192);
      LOBYTE(v38) = 0;
      sub_222A42E40(v10 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_usageLogger, v0 + 112);
      SiriUserFeedbackLearningTask.init(context:usageLogger:)(&v38, (v0 + 112), v0 + 16);
      if (qword_280CB79E8 != -1)
      {
        swift_once();
      }

      v27 = *(v0 + 248);
      v28 = *(v0 + 224);
      v29 = *(v0 + 232);
      v30 = *(v0 + 192);
      v31 = sub_222B020C8();
      *(v0 + 264) = __swift_project_value_buffer(v31, qword_280CBC3F8);
      sub_222B02088();
      *(v0 + 272) = sub_222A6EF34("runUserFeedbackLearningPlatform", 31, 2, v27);
      v32 = *(v29 + 8);
      *(v0 + 280) = v32;
      *(v0 + 288) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v32(v27, v28);
      v33 = *(v30 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_userFeedbackLearningPlatform + 24);
      v34 = *(v30 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_userFeedbackLearningPlatform + 32);
      __swift_project_boxed_opaque_existential_1((v30 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_userFeedbackLearningPlatform), v33);
      v36 = (*(v34 + 16) + **(v34 + 16));
      v35 = swift_task_alloc();
      *(v0 + 296) = v35;
      *v35 = v0;
      v35[1] = sub_222A73DEC;

      return v36(v0 + 152, v0 + 16, v33, v34);
    }

    v18 = sub_222B02128();
    v19 = sub_222B028E8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 304);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37 = v22;
      v38 = 0;
      *v21 = 136315138;
      v39 = 0xE000000000000000;
      MEMORY[0x223DC66E0](0x736142746E657645, 0xEB000000005B6465);
      sub_222ACEB4C(v20);
      MEMORY[0x223DC66E0](93, 0xE100000000000000);
      v23 = sub_222A230FC(v38, v39, &v37);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_222A1C000, v18, v19, "Error: context is %s, only maintenance context is supported by the User Feedback Learning platform", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223DC7E30](v22, -1, -1);
      MEMORY[0x223DC7E30](v21, -1, -1);
    }
  }

  else
  {
    v11 = sub_222B02128();
    v12 = sub_222B028D8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v38 = v14;
      *v13 = 136315138;
      v15 = sub_222B02C98();
      v17 = sub_222A230FC(v15, v16, &v38);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_222A1C000, v11, v12, "%s is not enabled", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223DC7E30](v14, -1, -1);
      MEMORY[0x223DC7E30](v13, -1, -1);
    }
  }

  v24 = *(v0 + 8);
  v25 = MEMORY[0x277D84F90];

  return v24(v25);
}

uint64_t sub_222A73DEC()
{

  return MEMORY[0x2822009F8](sub_222A73EE8, 0, 0);
}

uint64_t sub_222A73EE8()
{
  v29 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[21];
  v4 = sub_222B020B8();
  sub_222B020E8();
  v5 = sub_222B029F8();
  if (sub_222B02B08())
  {
    v7 = v0[26];
    v6 = v0[27];
    v8 = v0[25];

    sub_222B02118();

    if ((*(v7 + 88))(v6, v8) == *MEMORY[0x277D85B00])
    {
      v9 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[26] + 8))(v0[27], v0[25]);
      v9 = "";
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_222B02078();
    _os_signpost_emit_with_name_impl(&dword_222A1C000, v4, v5, v11, "runUserFeedbackLearningPlatform", v9, v10, 2u);
    MEMORY[0x223DC7E30](v10, -1, -1);
  }

  v12 = v0[35];
  v13 = v0[30];
  v14 = v0[28];

  v12(v13, v14);
  if (v3)
  {
    v15 = v3;
    v16 = v3;
    v17 = sub_222B02128();
    v18 = sub_222B028E8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28[0] = v20;
      *v19 = 136315138;
      v0[23] = v3;
      v21 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v22 = sub_222B023D8();
      v24 = sub_222A230FC(v22, v23, v28);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_222A1C000, v17, v18, "Error running user feedback platform: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x223DC7E30](v20, -1, -1);
      MEMORY[0x223DC7E30](v19, -1, -1);
    }

    else
    {
    }
  }

  v28[0] = v1;
  v28[1] = v2;
  v28[2] = v3;
  v25 = SiriUserFeedbackLearningPlatformResult.toSchedulerResult()();

  sub_222A4DEB8((v0 + 2));

  v26 = v0[1];

  return v26(v25);
}

uint64_t sub_222A74204(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_222B01848();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v58[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v58[-v9];
  v11 = *a1;
  if (v11 != 3)
  {
    v64 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_timestampPath;
    v12 = sub_222A77318(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_timestampPath);
    if (!v12)
    {
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v33 = sub_222B02148();
      __swift_project_value_buffer(v33, qword_280CBC458);
      v34 = sub_222B02128();
      v35 = sub_222B028D8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_222A1C000, v34, v35, "Cannot retrieve the scheduler timestamp, the scheduler might not have run before", v36, 2u);
        MEMORY[0x223DC7E30](v36, -1, -1);
      }

      v67 = 0;
      v68 = 0xE000000000000000;
      MEMORY[0x223DC66E0](0x736142746E657645, 0xEB000000005B6465);
      sub_222ACEB4C(v11);
      MEMORY[0x223DC66E0](93, 0xE100000000000000);
      v37 = v67;
      v38 = v68;
      v39 = type metadata accessor for PluginSchedulerTimestamp();
      v40 = objc_allocWithZone(v39);
      v41 = &v40[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_scheduler];
      *v41 = v37;
      *(v41 + 1) = v38;
      *&v40[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_timestamp] = 0;
      v65.receiver = v40;
      v65.super_class = v39;
      v16 = objc_msgSendSuper2(&v65, sel_init);
      goto LABEL_20;
    }

    v13 = v12;
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v14 = sub_222B02148();
    v15 = __swift_project_value_buffer(v14, qword_280CBC458);
    v16 = v13;
    v63 = v15;
    v17 = sub_222B02128();
    v18 = sub_222B028D8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v61 = v19;
      v62 = swift_slowAlloc();
      v67 = v62;
      *v19 = 136315138;
      v20 = [v16 debugDescription];
      v60 = v17;
      v21 = v20;
      v22 = sub_222B02388();
      v59 = v18;
      v23 = v2;
      v24 = v22;
      v26 = v25;

      v27 = v24;
      v2 = v23;
      v28 = sub_222A230FC(v27, v26, &v67);

      v30 = v60;
      v29 = v61;
      *(v61 + 1) = v28;
      v31 = v29;
      _os_log_impl(&dword_222A1C000, v30, v59, "The scheduler retrieved the previous timestamp: %s", v29, 0xCu);
      v32 = v62;
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x223DC7E30](v32, -1, -1);
      MEMORY[0x223DC7E30](v31, -1, -1);
    }

    else
    {
    }

    sub_222B01838();
    sub_222B017B8();
    sub_222B017D8();
    v43 = v42;
    v44 = *(v5 + 8);
    v44(v8, v4);
    v44(v10, v4);
    if (v43 <= 30.0 || v43 >= 172800.0)
    {
      v46 = sub_222B02128();
      v47 = sub_222B028D8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 134217984;
        *(v48 + 4) = v43;
        _os_log_impl(&dword_222A1C000, v46, v47, "The scheduler time delta is outside the threshold, delta=%f", v48, 0xCu);
        MEMORY[0x223DC7E30](v48, -1, -1);
      }

LABEL_20:
      sub_222A747CC(v2 + v64);
      v49 = 0;
      goto LABEL_26;
    }
  }

  sub_222B01838();
  sub_222B017C8();
  v51 = v50;
  (*(v5 + 8))(v10, v4);
  if (v11 == 3)
  {
    v52 = 0xEB0000000065636ELL;
    v53 = 0x616E65746E69614DLL;
  }

  else
  {
    v67 = 0;
    v68 = 0xE000000000000000;
    MEMORY[0x223DC66E0](0x736142746E657645, 0xEB000000005B6465);
    sub_222ACEB4C(v11);
    MEMORY[0x223DC66E0](93, 0xE100000000000000);
    v53 = v67;
    v52 = v68;
  }

  v54 = type metadata accessor for PluginSchedulerTimestamp();
  v55 = objc_allocWithZone(v54);
  v56 = &v55[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_scheduler];
  *v56 = v53;
  v56[1] = v52;
  *&v55[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_timestamp] = v51;
  v66.receiver = v55;
  v66.super_class = v54;
  v16 = objc_msgSendSuper2(&v66, sel_init);
  sub_222A747CC(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_timestampPath);
  v49 = 1;
LABEL_26:

  return v49;
}

void sub_222A747CC(uint64_t a1)
{
  v52[1] = *MEMORY[0x277D85DE8];
  v3 = sub_222B01748();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v7 = sub_222B02148();
  __swift_project_value_buffer(v7, qword_280CBC458);
  (*(v4 + 16))(v6, a1, v3);
  v8 = v1;
  v9 = sub_222B02128();
  v10 = sub_222B028D8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52[0] = v49;
    *v11 = 136315394;
    v12 = [v8 debugDescription];
    v48 = v10;
    v13 = v12;
    v14 = sub_222B02388();
    v50 = a1;
    v15 = v14;
    v17 = v16;

    v18 = sub_222A230FC(v15, v17, v52);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2080;
    v19 = sub_222B01738();
    v21 = v20;
    (*(v4 + 8))(v6, v3);
    v22 = sub_222A230FC(v19, v21, v52);

    *(v11 + 14) = v22;
    _os_log_impl(&dword_222A1C000, v9, v48, "Updating timestamp to %s, path=%s", v11, 0x16u);
    v23 = v49;
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v23, -1, -1);
    MEMORY[0x223DC7E30](v11, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v24 = objc_opt_self();
  v52[0] = 0;
  v25 = [v24 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:v52];
  v26 = v52[0];
  if (v25)
  {
    v27 = sub_222B01798();
    v29 = v28;

    sub_222B017A8();
    sub_222A26530(v27, v29);
  }

  else
  {
    v30 = v26;
    v31 = sub_222B01628();

    swift_willThrow();
    v32 = v8;
    v33 = v31;
    v34 = sub_222B02128();
    v35 = sub_222B028E8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v52[0] = v37;
      *v36 = 136315394;
      v38 = [v32 debugDescription];
      v39 = sub_222B02388();
      v41 = v40;

      v42 = sub_222A230FC(v39, v41, v52);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2080;
      v51 = v31;
      v43 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v44 = sub_222B023D8();
      v46 = sub_222A230FC(v44, v45, v52);

      *(v36 + 14) = v46;
      _os_log_impl(&dword_222A1C000, v34, v35, "Cannot encode timestamp, timestamp=%s, error=%s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v37, -1, -1);
      MEMORY[0x223DC7E30](v36, -1, -1);
    }

    else
    {
    }
  }
}

void sub_222A74E70(unsigned __int8 *a1)
{
  v91[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v80 - v3;
  v5 = sub_222B01848();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v80 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v80 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v80 - v16;
  v88 = *a1;
  sub_222B01738();
  v18 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
  v19 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  v20 = [v18 initFileURLWithPath_];

  v21 = *MEMORY[0x277CBE7B0];
  v89 = 0;
  v91[0] = 0;
  v22 = [v20 getResourceValue:&v89 forKey:v21 error:v91];
  v23 = v89;
  if (!v22)
  {
    v49 = v91[0];
    swift_unknownObjectRetain();
    v50 = sub_222B01628();

    swift_willThrow();
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v51 = sub_222B02148();
    __swift_project_value_buffer(v51, qword_280CBC458);
    v52 = v50;
    v53 = sub_222B02128();
    v54 = sub_222B028E8();

    if (!os_log_type_enabled(v53, v54))
    {

LABEL_13:
      swift_unknownObjectRelease();
      return;
    }

    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412290;
    v57 = v50;
    v58 = _swift_stdlib_bridgeErrorToNSError();
    *(v55 + 4) = v58;
    *v56 = v58;
    _os_log_impl(&dword_222A1C000, v53, v54, "The scheduler was not able to retrieve the timestamp, error=%@", v55, 0xCu);
    sub_222A34F20(v56, &qword_27D01E4B0, &qword_222B0A530);
    MEMORY[0x223DC7E30](v56, -1, -1);
    MEMORY[0x223DC7E30](v55, -1, -1);

    goto LABEL_19;
  }

  v24 = v91[0];
  swift_unknownObjectRetain();

  if (!v23)
  {
LABEL_15:
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v59 = sub_222B02148();
    __swift_project_value_buffer(v59, qword_280CBC458);
    v53 = sub_222B02128();
    v60 = sub_222B028E8();
    if (os_log_type_enabled(v53, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_222A1C000, v53, v60, "The scheduler was not able to convert the timestamp to Date", v61, 2u);
      MEMORY[0x223DC7E30](v61, -1, -1);
    }

LABEL_19:
    swift_unknownObjectRelease();

    return;
  }

  v89 = v23;
  swift_unknownObjectRetain_n();
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
    (*(v6 + 56))(v4, 1, 1, v5);
    sub_222A34F20(v4, &qword_27D01D700, &qword_222B07320);
    goto LABEL_15;
  }

  (*(v6 + 56))(v4, 0, 1, v5);
  (*(v6 + 32))(v17, v4, v5);
  sub_222B01838();
  sub_222B017D8();
  v26 = v25;
  v27 = v6 + 8;
  v28 = *(v6 + 8);
  v28(v15, v5);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v29 = sub_222B02148();
  v30 = __swift_project_value_buffer(v29, qword_280CBC458);
  v84 = *(v6 + 16);
  v84(v12, v17, v5);
  v85 = v30;
  v31 = sub_222B02128();
  v83 = sub_222B028D8();
  if (os_log_type_enabled(v31, v83))
  {
    v32 = swift_slowAlloc();
    v81 = v32;
    v82 = swift_slowAlloc();
    v89 = v82;
    *v32 = 136315394;
    v33 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v87 = v6 + 8;
    v34 = v33;
    v35 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
    v80 = v31;
    v36 = v35;
    [v34 setDateFormat_];

    v37 = sub_222B017F8();
    v38 = [v34 stringFromDate_];
    v86 = v28;
    v39 = v9;
    v40 = v38;

    v41 = sub_222B02388();
    v43 = v42;

    v27 = v87;
    v9 = v39;
    v28 = v86;
    v86(v12, v5);
    v44 = sub_222A230FC(v41, v43, &v89);

    v46 = v80;
    v45 = v81;
    *(v81 + 1) = v44;
    *(v45 + 6) = 2048;
    *(v45 + 14) = v26;
    v47 = v45;
    _os_log_impl(&dword_222A1C000, v46, v83, "The scheduler retrieved the timestamp of the previous run: %s, delta=%f", v45, 0x16u);
    v48 = v82;
    __swift_destroy_boxed_opaque_existential_0(v82);
    MEMORY[0x223DC7E30](v48, -1, -1);
    MEMORY[0x223DC7E30](v47, -1, -1);
  }

  else
  {

    v28(v12, v5);
  }

  if (v26 > 172800.0)
  {
    v84(v9, v17, v5);
    v62 = sub_222B02128();
    v63 = sub_222B028F8();
    if (os_log_type_enabled(v62, v63))
    {
      LODWORD(v85) = v63;
      v86 = v28;
      v64 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v91[0] = v84;
      *v64 = 136315394;
      v65 = v88;
      v87 = v27;
      if (v88 == 3)
      {
        v66 = 0xEB0000000065636ELL;
        v67 = 0x616E65746E69614DLL;
      }

      else
      {
        v89 = 0;
        v90 = 0xE000000000000000;
        MEMORY[0x223DC66E0](0x736142746E657645, 0xEB000000005B6465);
        sub_222ACEB4C(v65);
        MEMORY[0x223DC66E0](93, 0xE100000000000000);
        v67 = v89;
        v66 = v90;
      }

      v68 = sub_222A230FC(v67, v66, v91);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2080;
      v69 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v70 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
      [v69 setDateFormat_];

      v71 = sub_222B017F8();
      v72 = v9;
      v73 = [v69 stringFromDate_];

      v74 = sub_222B02388();
      v76 = v75;

      v77 = v86;
      v86(v72, v5);
      v78 = sub_222A230FC(v74, v76, v91);

      *(v64 + 14) = v78;
      _os_log_impl(&dword_222A1C000, v62, v85, "The scheduler with context %s was unable to acquire the scheduling lock, the previous run timestamp: %s", v64, 0x16u);
      v79 = v84;
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v79, -1, -1);
      MEMORY[0x223DC7E30](v64, -1, -1);
      swift_unknownObjectRelease();

      v77(v17, v5);
    }

    else
    {
      swift_unknownObjectRelease();

      v28(v9, v5);
      v28(v17, v5);
    }

    goto LABEL_13;
  }

  v28(v17, v5);
  swift_unknownObjectRelease_n();
}

uint64_t PluginScheduler.deinit()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_lockPath;
  v2 = sub_222B01748();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_timestampPath, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceConfiguration));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceLowPowerModeDetector));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_usageLogger));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_userFeedbackLearningPlatform));
  return v0;
}

uint64_t PluginScheduler.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_lockPath;
  v2 = sub_222B01748();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_timestampPath, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceConfiguration));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceLowPowerModeDetector));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_usageLogger));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_userFeedbackLearningPlatform));

  return swift_deallocClassInstance();
}

uint64_t sub_222A75B10(char *a1, uint64_t a2, uint64_t a3)
{
  v8 = *a1;
  if (qword_280CB9568 != -1)
  {
    swift_once();
  }

  v5 = sub_222B01748();
  v6 = __swift_project_value_buffer(v5, qword_280CBC438);
  return sub_222A6F974(&v8, v6, a2, a3);
}

void sub_222A75BC0(void *a1)
{
  v2 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v3 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  [a1 encodeObject:v2 forKey:v3];

  v4 = sub_222B027B8();
  v5 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  [a1 encodeObject:v4 forKey:v5];
}

id sub_222A75D1C(void *a1)
{
  sub_222A250BC(0, &unk_280CB83F0, 0x277CCACA8);
  v2 = sub_222B02AB8();
  if (v2)
  {
    v3 = v2;
    v4 = sub_222B02388();
    v6 = v5;

    sub_222A250BC(0, &qword_280CB8400, 0x277CCABB0);
    v7 = sub_222B02AB8();
    if (v7)
    {
      v8 = v7;
      [v7 doubleValue];
      v10 = v9;
      v11 = type metadata accessor for PluginSchedulerTimestamp();
      v12 = objc_allocWithZone(v11);
      v13 = &v12[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_scheduler];
      *v13 = v4;
      v13[1] = v6;
      *&v12[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_timestamp] = v10;
      v16.receiver = v12;
      v16.super_class = v11;
      v14 = objc_msgSendSuper2(&v16, sel_init);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v14;
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_222A75F2C()
{
  v1 = sub_222B01848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222B017B8();
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_222B02C88();
  MEMORY[0x223DC66E0](0xD000000000000025, 0x8000000222B12550);
  MEMORY[0x223DC66E0](*(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_scheduler), *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24PluginSchedulerTimestamp_scheduler + 8));
  MEMORY[0x223DC66E0](0x73656D6974202C22, 0xEE00203A706D6174);
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v6 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  [v5 setDateFormat_];

  v7 = sub_222B017F8();
  v8 = [v5 stringFromDate_];

  v9 = sub_222B02388();
  v11 = v10;

  MEMORY[0x223DC66E0](v9, v11);

  MEMORY[0x223DC66E0](41, 0xE100000000000000);
  v12 = v14[0];
  (*(v2 + 8))(v4, v1);
  return v12;
}

id sub_222A76180(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PluginSchedulerTimestamp();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_222A761C8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222A7625C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A77EE0;

  return v6(a1);
}

uint64_t sub_222A76354(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A7644C;

  return v6(a1);
}

uint64_t sub_222A7644C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_222A7656C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_222A765D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_222B02DC8();
  }

  return sub_222B02CC8();
}

void sub_222A76634()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_32;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2 > 1)
  {
    do
    {
      v3 = 0;
      v4 = v2 - 2;
      while (1)
      {
        v14 = 0;
        MEMORY[0x223DC7E50](&v14, 8);
        v6 = (v14 * v2) >> 64;
        if (v2 > v14 * v2)
        {
          v7 = -v2 % v2;
          if (v7 > v14 * v2)
          {
            do
            {
              v14 = 0;
              MEMORY[0x223DC7E50](&v14, 8);
            }

            while (v7 > v14 * v2);
            v6 = (v14 * v2) >> 64;
          }
        }

        v8 = v3 + v6;
        if (__OFADD__(v3, v6))
        {
          break;
        }

        if (v3 != v8)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x223DC6F00](v3, v1);
            v11 = MEMORY[0x223DC6F00](v8, v1);
          }

          else
          {
            v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v3 >= v9)
            {
              goto LABEL_29;
            }

            if (v8 >= v9)
            {
              goto LABEL_30;
            }

            v10 = *(v1 + 32 + 8 * v3);
            v11 = *(v1 + 32 + 8 * v8);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
          {
            v1 = sub_222A765D0(v1);
            v12 = (v1 >> 62) & 1;
          }

          else
          {
            LODWORD(v12) = 0;
          }

          v13 = v1 & 0xFFFFFFFFFFFFFF8;
          *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v11;

          if ((v1 & 0x8000000000000000) != 0 || v12)
          {
            v1 = sub_222A765D0(v1);
            v13 = v1 & 0xFFFFFFFFFFFFFF8;
            if ((v8 & 0x8000000000000000) != 0)
            {
LABEL_27:
              __break(1u);
              break;
            }
          }

          else if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }

          if (v8 >= *(v13 + 16))
          {
            goto LABEL_31;
          }

          *(v13 + 8 * v8 + 32) = v10;

          *v0 = v1;
        }

        --v2;
        if (v3++ == v4)
        {
          return;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      if (sub_222B02DC8() < 2)
      {
        break;
      }

      v2 = sub_222B02DC8();
    }

    while (v2 >= 2);
  }
}

uint64_t sub_222A76848(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_222A7693C;

  return v5(v2 + 16);
}

uint64_t sub_222A7693C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_222A76A6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D730, qword_222B0E750);
    v3 = sub_222B02C38();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_222B03128();

      sub_222B02448();
      result = sub_222B03168();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_222B02F78();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_222A76BD4(void *a1)
{
  v2 = v1;
  v4 = sub_222B01748();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = a1;
  v8 = a1;
  sub_222B01688();
  v9 = *(v5 + 32);
  v9(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_lockPath, v7, v4);
  sub_222B01688();
  v9(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_timestampPath, v7, v4);
  v10 = type metadata accessor for DefaultDeviceConfiguration();
  swift_allocObject();
  v11 = sub_222ADD0B0();
  v12 = (v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceConfiguration);
  v12[3] = v10;
  v12[4] = &off_2835F8A98;
  *v12 = v11;
  v13 = [objc_opt_self() processInfo];
  v14 = (v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceLowPowerModeDetector);
  v14[3] = sub_222A250BC(0, &qword_280CB8458, 0x277CCAC38);
  v14[4] = &off_2835F4FF8;
  *v14 = v13;
  if (qword_280CB9C20 != -1)
  {
    swift_once();
  }

  *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_eventBasedEnabledPlugins) = qword_280CB9C30;
  *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_minEventBasedProcessingThreshold) = 0x403E000000000000;
  *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_maxEventBasedProcessingThreshold) = 0x4105180000000000;
  v15 = v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_featureFlags;
  *(v15 + 24) = &type metadata for EnvironmentFeatureFlags;
  *(v15 + 32) = &protocol witness table for EnvironmentFeatureFlags;
  v16 = v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_usageLogger;
  *(v16 + 24) = &type metadata for UsageLogger;
  *(v16 + 32) = &protocol witness table for UsageLogger;
  v17 = v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_userFeedbackLearningPlatform;
  *(v17 + 24) = &type metadata for SiriUserFeedbackLearningMLRuntimePlatform;
  *(v17 + 32) = &protocol witness table for SiriUserFeedbackLearningMLRuntimePlatform;

  return v2;
}

uint64_t _s28SiriPrivateLearningAnalytics15PluginSchedulerCACycfC_0()
{
  v9 = sub_222B02988();
  v0 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v2 = v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_222B02968();
  MEMORY[0x28223BE20](v3);
  v4 = sub_222B02238();
  MEMORY[0x28223BE20](v4 - 8);
  v8[1] = sub_222A250BC(0, &qword_280CBA208, 0x277D85C78);
  sub_222B02218();
  v10 = MEMORY[0x277D84F90];
  sub_222A77D34(&unk_280CBA210, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D728, &unk_222B08D20);
  sub_222A77D7C(&unk_280CBA220, &qword_27D01D728, &unk_222B08D20);
  sub_222B02BB8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v9);
  v5 = sub_222B029A8();
  type metadata accessor for PluginScheduler(0);
  swift_allocObject();
  v6 = sub_222A76BD4(v5);

  return v6;
}

uint64_t type metadata accessor for PluginScheduler(uint64_t a1)
{
  result = qword_280CB9BE8;
  if (!qword_280CB9BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222A7718C(uint64_t a1)
{
  result = sub_222B01748();
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

uint64_t sub_222A77318(uint64_t a1)
{
  v2 = sub_222B01748();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = sub_222B01758();
  v9 = v8;
  sub_222A250BC(0, &qword_280CB8440, 0x277CCAAC8);
  type metadata accessor for PluginSchedulerTimestamp();
  v10 = sub_222B02918();
  if (v10)
  {
    v21 = v10;
    sub_222A26530(v7, v9);
    return v21;
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v11 = sub_222B02148();
    __swift_project_value_buffer(v11, qword_280CBC458);
    (*(v3 + 16))(v6, a1, v2);
    v12 = sub_222B02128();
    v13 = sub_222B028E8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v14 = 136315138;
      sub_222A77D34(&qword_280CB8310, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v15 = sub_222B02F38();
      v17 = v16;
      (*(v3 + 8))(v6, v2);
      v18 = sub_222A230FC(v15, v17, &v23);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_222A1C000, v12, v13, "Cannot decode scheduler timestamp, path=%s", v14, 0xCu);
      v19 = v22;
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223DC7E30](v19, -1, -1);
      MEMORY[0x223DC7E30](v14, -1, -1);
      sub_222A26530(v7, v9);
    }

    else
    {
      sub_222A26530(v7, v9);

      (*(v3 + 8))(v6, v2);
    }

    return 0;
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222A77954(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_222A34620;

  return sub_222A72944(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_222A77A30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A77AA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A35344;

  return sub_222A7625C(a1, v4);
}

uint64_t sub_222A77B58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A35344;

  return sub_222A76354(a1, v4);
}

uint64_t sub_222A77C10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A34620;

  return sub_222A76354(a1, v4);
}

uint64_t sub_222A77CC8()
{
  v1 = *(sub_222B01748() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = v0 + ((*(v1 + 80) + 41) & ~*(v1 + 80));

  return sub_222A6FE50(v2, v3, v4, v5, v6);
}

uint64_t sub_222A77D34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222A77D7C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_222A77E24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A35344;

  return sub_222A76848(a1, v4);
}

uint64_t SandboxOperation.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_222B02E48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_222A77F60()
{
  sub_222B03128();
  sub_222B02448();
  return sub_222B03168();
}

uint64_t sub_222A77FD4(uint64_t a1)
{
  sub_222B03128();
  sub_222B02448();
  return sub_222B03168();
}

uint64_t sub_222A78028@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_222B02E48();

  *a2 = v3 != 0;
  return result;
}

BOOL checkSandbox(operation:path:)(uint64_t a1)
{
  sub_222B01738();
  v1 = objc_opt_self();
  v2 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v3 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  v4 = [v1 checkOperation:v2 forPath:v3];

  return v4 != 1;
}

unint64_t sub_222A78150()
{
  result = qword_27D01D740;
  if (!qword_27D01D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D740);
  }

  return result;
}

id StreamBookmark.__allocating_init(name:date:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_222B017C8();
  v7 = v6;
  v8 = type metadata accessor for StreamBookmark();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
  *v10 = a1;
  *(v10 + 1) = a2;
  *&v9[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark] = 0;
  v11 = &v9[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate];
  *v11 = v7;
  v11[8] = 0;
  v15.receiver = v9;
  v15.super_class = v8;
  v12 = objc_msgSendSuper2(&v15, sel_init);
  v13 = sub_222B01848();
  (*(*(v13 - 8) + 8))(a3, v13);
  return v12;
}

uint64_t static StreamBookmark.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27D01D750 = a1;
  return result;
}

uint64_t StreamBookmark.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name);

  return v1;
}

id StreamBookmark.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamBookmark();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
  *v6 = a1;
  *(v6 + 1) = a2;
  *&v5[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark] = 0;
  v7 = &v5[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate];
  *v7 = 0;
  v7[8] = 1;
  v9.receiver = v5;
  v9.super_class = v4;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_222A784F8()
{
  if (*(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate + 8);
  }
}

uint64_t sub_222A78524(void *a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = *&v1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
  v4 = *&v1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8];
  v5 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v6 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  [a1 encodeObject:v5 forKey:v6];

  if (v1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate + 8])
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  v8 = v7;
  v9 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  [a1 encodeObject:v8 forKey:v9];

  v10 = *&v1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark];
  if (!v10)
  {
LABEL_13:
    v14 = 0;
    v16 = 0xF000000000000000;
    goto LABEL_14;
  }

  v11 = objc_opt_self();
  v32[0] = 0;
  swift_unknownObjectRetain();
  v12 = [v11 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v32];
  v13 = v32[0];
  if (!v12)
  {
    v17 = v13;
    v18 = sub_222B01628();

    swift_willThrow();
    if (qword_27D01C4D8 != -1)
    {
      swift_once();
    }

    v19 = sub_222B02148();
    __swift_project_value_buffer(v19, qword_27D01D758);
    v20 = v1;
    v21 = v18;
    v22 = sub_222B02128();
    v23 = sub_222B028E8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32[0] = v31;
      *v24 = 136315394;
      *(v24 + 4) = sub_222A230FC(v3, v4, v32);
      *(v24 + 12) = 2080;
      v25 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v26 = sub_222B023D8();
      v28 = sub_222A230FC(v26, v27, v32);

      *(v24 + 14) = v28;
      _os_log_impl(&dword_222A1C000, v22, v23, "Unable to encode the bookmark data for %s, error=%s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v31, -1, -1);
      MEMORY[0x223DC7E30](v24, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v10 = 0;
    goto LABEL_13;
  }

  v14 = sub_222B01798();
  v16 = v15;

  swift_unknownObjectRelease();
  v10 = sub_222B01788();
LABEL_14:
  v29 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  [a1 encodeObject:v10 forKey:v29];
  swift_unknownObjectRelease();

  return sub_222A398A4(v14, v16);
}

id StreamBookmark.init(coder:)(void *a1)
{
  v49[4] = *MEMORY[0x277D85DE8];
  sub_222A250BC(0, &unk_280CB83F0, 0x277CCACA8);
  v2 = sub_222B02AB8();
  if (v2)
  {
    v3 = v2;
    v4 = sub_222B02388();
    v6 = v5;

    sub_222A250BC(0, &qword_280CB8418, 0x277CBEA90);
    v7 = sub_222B02AB8();
    if (v7)
    {
      v46 = v4;
      v8 = v7;
      v9 = sub_222B01798();
      v11 = v10;

      v12 = objc_opt_self();
      v13 = objc_opt_self();
      sub_222A55AB8(v9, v11);
      v14 = [v13 bm_allowedClassesForSecureCodingBMBookmark];
      sub_222B027E8();

      v15 = sub_222B027D8();

      v16 = sub_222B01788();
      v49[0] = 0;
      v17 = [v12 unarchivedObjectOfClasses:v15 fromData:v16 error:v49];

      if (v17)
      {
        v18 = v49[0];
        sub_222B02BA8();
        sub_222A26530(v9, v11);
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D788, &unk_222B08EB0);
        if (swift_dynamicCast())
        {
          v19 = v47;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v21 = v49[0];
        v22 = sub_222B01628();

        swift_willThrow();
        if (qword_27D01C4D8 != -1)
        {
          swift_once();
        }

        v23 = sub_222B02148();
        __swift_project_value_buffer(v23, qword_27D01D758);

        v24 = v22;
        v25 = sub_222B02128();
        v26 = sub_222B028E8();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v49[0] = v45;
          *v27 = 136315394;
          *(v27 + 4) = sub_222A230FC(v46, v6, v49);
          *(v27 + 12) = 2080;
          v28 = v22;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
          v29 = sub_222B023D8();
          v44 = v6;
          v31 = v25;
          v32 = sub_222A230FC(v29, v30, v49);

          *(v27 + 14) = v32;
          v33 = v26;
          v34 = v31;
          v6 = v44;
          _os_log_impl(&dword_222A1C000, v34, v33, "Unable to decode the bookmark data for %s, error=%s", v27, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DC7E30](v45, -1, -1);
          v35 = v27;
          v4 = v46;
          MEMORY[0x223DC7E30](v35, -1, -1);
          sub_222A26530(v9, v11);
        }

        else
        {
          sub_222A26530(v9, v11);
        }

        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
      v9 = 0;
      v11 = 0xF000000000000000;
    }

    sub_222A250BC(0, &qword_280CB8400, 0x277CCABB0);
    v36 = sub_222B02AB8();
    if (v36)
    {
      sub_222B027A8();
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v39 = type metadata accessor for StreamBookmark();
    v40 = objc_allocWithZone(v39);
    v41 = &v40[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
    *v41 = v4;
    v41[1] = v6;
    *&v40[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark] = v19;
    v42 = &v40[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate];
    *v42 = v38;
    v42[8] = v36 == 0;
    v48.receiver = v40;
    v48.super_class = v39;
    swift_unknownObjectRetain();
    v20 = objc_msgSendSuper2(&v48, sel_init);

    sub_222A398A4(v9, v11);
    swift_unknownObjectRelease();
    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v20;
}

unint64_t sub_222A78FC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  MEMORY[0x28223BE20](v1);
  v3 = v10 - v2;
  if (*(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate + 8))
  {
    v4 = sub_222B01848();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  }

  else
  {
    sub_222B017B8();
    v5 = sub_222B01848();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  }

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_222B02C88();

  v11 = 0xD000000000000016;
  v12 = 0x8000000222B12710;
  MEMORY[0x223DC66E0](*(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name), *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8));
  MEMORY[0x223DC66E0](0x6D6B6F6F62202C22, 0xED0000203A6B7261);
  v10[1] = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D798, &qword_222B08EC0);
  v6 = sub_222B02B18();
  MEMORY[0x223DC66E0](v6);

  MEMORY[0x223DC66E0](0x203A65746164202CLL, 0xE800000000000000);
  v7 = sub_222B02B18();
  MEMORY[0x223DC66E0](v7);

  v8 = v11;
  sub_222A34F20(v3, &qword_27D01D700, &qword_222B07320);
  return v8;
}

id StreamBookmark.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static StreamBookmarkCollection.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27D01D751 = a1;
  return result;
}

id StreamBookmarkCollection.__allocating_init(bookmarks:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection_bookmarks] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id StreamBookmarkCollection.init(bookmarks:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection_bookmarks] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StreamBookmarkCollection();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_222A794F4(void *a1)
{
  type metadata accessor for StreamBookmark();
  v2 = sub_222B025D8();
  v3 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  [a1 encodeObject:v2 forKey:v3];
}

id StreamBookmarkCollection.init(coder:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D7A8, &qword_222B08EC8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_222B05260;
  *(v2 + 32) = sub_222A250BC(0, &qword_280CB8410, 0x277CBEA60);
  *(v2 + 40) = type metadata accessor for StreamBookmark();
  sub_222B02AC8();

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D7B0, qword_222B08ED8);
    if (swift_dynamicCast())
    {
      v3 = type metadata accessor for StreamBookmarkCollection();
      v4 = objc_allocWithZone(v3);
      *&v4[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection_bookmarks] = v8;
      v7.receiver = v4;
      v7.super_class = v3;
      v5 = objc_msgSendSuper2(&v7, sel_init);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v5;
    }
  }

  else
  {

    sub_222A34F20(v9, &unk_27D01CB00, &qword_222B08ED0);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_222A798B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_222A798FC()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_27D01D758);
  v1 = __swift_project_value_buffer(v0, qword_27D01D758);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222A79B5C(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = 0xEB00000000676E69;
      v2 = 0x6B636F6C426E6F4ELL;
    }

    else
    {
      sub_222B02C88();

      v3 = sub_222B029B8();
      MEMORY[0x223DC66E0](v3);

      MEMORY[0x223DC66E0](0x706D65747461202CLL, 0xEC000000203A7374);
      v4 = sub_222B02F38();
      MEMORY[0x223DC66E0](v4);

      MEMORY[0x223DC66E0](41, 0xE100000000000000);
      v2 = 0xD00000000000001BLL;
      v1 = 0x8000000222B12960;
    }
  }

  else
  {
    v1 = 0xE800000000000000;
    v2 = 0x676E696B636F6C42;
  }

  MEMORY[0x223DC66E0](v2, v1);

  MEMORY[0x223DC66E0](93, 0xE100000000000000);
  return 0x6B636F4C656C6946;
}

uint64_t sub_222A79CD4()
{
  v0 = type metadata accessor for FileLockDarwinDefault();
  v9[3] = v0;
  v9[4] = &off_2835F55A8;
  v9[0] = swift_allocObject();
  type metadata accessor for FileLock();
  v1 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v9, v0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v4);
  v6 = *v4;
  v1[5] = v0;
  v1[6] = &off_2835F55A8;
  v1[2] = v6;
  result = __swift_destroy_boxed_opaque_existential_0(v9);
  qword_280CBC410 = v1;
  return result;
}

void sub_222A79DEC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  v5 = sub_222B01748();
  v6 = *(v5 - 8);
  v91 = v5;
  v92 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v84[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v84[-v11];
  v13 = MEMORY[0x28223BE20](v10);
  v89 = &v84[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v84[-v15];
  v17 = a1;
  sub_222B01738();
  sub_222B02188();
  sub_222B021A8();
  sub_222B02178();
  sub_222B02198();
  sub_222B02408();

  v18 = sub_222B02158();

  if (v18 < 0)
  {
    if (qword_280CB8548 != -1)
    {
      swift_once();
    }

    v37 = sub_222B02148();
    __swift_project_value_buffer(v37, qword_280CB8550);
    v38 = v91;
    v39 = v92;
    (*(v92 + 16))(v9, a1, v91);
    v40 = sub_222B02128();
    v41 = sub_222B028E8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v94[0] = v43;
      *v42 = 136315650;
      sub_222A7BC00(&qword_280CB8310, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v44 = sub_222B02F38();
      v46 = v45;
      (*(v39 + 8))(v9, v38);
      v47 = sub_222A230FC(v44, v46, v94);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      v49 = MEMORY[0x223DC63B0](v48);
      if (!strerror(v49))
      {
LABEL_27:
        __break(1u);
        return;
      }

      v50 = sub_222B024A8();
      v52 = sub_222A230FC(v50, v51, v94);

      *(v42 + 14) = v52;
      *(v42 + 22) = 1024;
      *(v42 + 24) = MEMORY[0x223DC63B0](v53);
      _os_log_impl(&dword_222A1C000, v40, v41, "Cannot open lock file %s: %s, %d", v42, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v43, -1, -1);
      MEMORY[0x223DC7E30](v42, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v9, v38);
    }

    v68 = v90;
    *(v90 + 32) = 0;
    *v68 = 0u;
    v68[1] = 0u;
    return;
  }

  if (a2)
  {
    v19 = 6;
  }

  else
  {
    v19 = 2;
  }

  if (flock(v18, v19))
  {
    v20 = v91;
    if (qword_280CB8548 != -1)
    {
      swift_once();
    }

    v21 = sub_222B02148();
    __swift_project_value_buffer(v21, qword_280CB8550);
    v22 = v92;
    (*(v92 + 16))(v12, a1, v20);
    v23 = sub_222B02128();
    v24 = sub_222B028E8();
    if (!os_log_type_enabled(v23, v24))
    {

      (*(v22 + 8))(v12, v20);
      goto LABEL_21;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v94[0] = v26;
    *v25 = 136315650;
    v27 = sub_222B01738();
    v29 = v28;
    (*(v22 + 8))(v12, v20);
    v30 = sub_222A230FC(v27, v29, v94);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    v32 = MEMORY[0x223DC63B0](v31);
    if (strerror(v32))
    {
      v33 = sub_222B024A8();
      v35 = sub_222A230FC(v33, v34, v94);

      *(v25 + 14) = v35;
      *(v25 + 22) = 1024;
      *(v25 + 24) = MEMORY[0x223DC63B0](v36);
      _os_log_impl(&dword_222A1C000, v23, v24, "Failed to acquire lock file: %s, %s, %d", v25, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v26, -1, -1);
      MEMORY[0x223DC7E30](v25, -1, -1);

LABEL_21:
      v67 = v90;
      *(v90 + 32) = 0;
      *v67 = 0u;
      v67[1] = 0u;
      close(v18);
      return;
    }

    __break(1u);
    goto LABEL_27;
  }

  v54 = v91;
  if (qword_280CB8548 != -1)
  {
    swift_once();
  }

  v55 = sub_222B02148();
  __swift_project_value_buffer(v55, qword_280CB8550);
  v56 = v92;
  v57 = *(v92 + 16);
  v57(v16, a1, v54);
  v58 = sub_222B02128();
  v59 = sub_222B028D8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v94[0] = v86;
    *v60 = 136315394;
    v85 = v59;
    v61 = sub_222B01738();
    v87 = v17;
    v62 = v57;
    v64 = v63;
    (*(v56 + 8))(v16, v54);
    v65 = sub_222A230FC(v61, v64, v94);
    v57 = v62;
    v17 = v87;

    *(v60 + 4) = v65;
    *(v60 + 12) = 1024;
    *(v60 + 14) = v18;
    _os_log_impl(&dword_222A1C000, v58, v85, "Acquired a file lock for path %s, fd=%d", v60, 0x12u);
    v66 = v86;
    __swift_destroy_boxed_opaque_existential_0(v86);
    MEMORY[0x223DC7E30](v66, -1, -1);
    MEMORY[0x223DC7E30](v60, -1, -1);
  }

  else
  {

    (*(v56 + 8))(v16, v54);
  }

  v69 = v89;
  v57(v89, v17, v54);
  sub_222A42E40((v88 + 16), v94);
  v70 = __swift_mutable_project_boxed_opaque_existential_1(v94, v94[3]);
  v88 = v84;
  MEMORY[0x28223BE20](v70);
  v72 = &v84[-((v71 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v73 + 16))(v72);
  v74 = *v72;
  v75 = type metadata accessor for FileLockDarwinDefault();
  v93[3] = v75;
  v93[4] = &off_2835F55A8;
  v93[0] = v74;
  v76 = type metadata accessor for FileLockContextExclusive(0);
  v77 = swift_allocObject();
  v78 = __swift_mutable_project_boxed_opaque_existential_1(v93, v75);
  MEMORY[0x28223BE20](v78);
  v80 = &v84[-((v79 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v81 + 16))(v80);
  v82 = *v80;
  *(v77 + 40) = v75;
  *(v77 + 48) = &off_2835F55A8;
  *(v77 + 16) = v82;
  *(v77 + 60) = 0;
  *(v77 + 56) = v18;
  (*(v56 + 32))(v77 + OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_9A16EB635EAE528C9CC424A4A1DE53F824FileLockContextExclusive_path, v69, v54);
  __swift_destroy_boxed_opaque_existential_0(v93);
  __swift_destroy_boxed_opaque_existential_0(v94);
  v83 = v90;
  *(v90 + 24) = v76;
  v83[4] = &off_2835F5590;
  *v83 = v77;
}

void sub_222A7A74C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t))
{
  v121 = a6;
  v122 = a5;
  v118 = a4;
  v120 = a3;
  v110 = sub_222B021D8();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_222B02238();
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_222B021B8();
  v113 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v112 = (&v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = sub_222B02268();
  v119 = *(v115 - 8);
  v12 = MEMORY[0x28223BE20](v115);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v95 - v15;
  v17 = sub_222B01748();
  v117 = *(v17 - 8);
  v18 = *(v117 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v95 - v20;
  sub_222A79DEC(a1, a2, &v127);
  if (v128)
  {
    sub_222A1E5A8(&v127, aBlock);
    v122(0, 0);
    v22 = *__swift_project_boxed_opaque_existential_1(aBlock, v124);
    v128 = type metadata accessor for FileLockContextExclusive(0);
    v129 = &off_2835F5590;
    *&v127 = v22;
    __swift_project_boxed_opaque_existential_1(&v127, v128);

    sub_222A7B5D0();
    __swift_destroy_boxed_opaque_existential_0(&v127);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    return;
  }

  v101 = v21;
  v97 = v18;
  v99 = v14;
  v116 = a2;
  v102 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v17;
  v114 = a1;
  v103 = v16;
  v98 = v6;
  sub_222A7BAC4(&v127);
  if (qword_280CB8548 != -1)
  {
    swift_once();
  }

  v23 = sub_222B02148();
  v24 = __swift_project_value_buffer(v23, qword_280CB8550);
  v25 = v117;
  v26 = v101;
  v27 = v104;
  v96 = *(v117 + 16);
  v96(v101, v114, v104);
  v28 = v116;
  sub_222A42840(v116);
  v100 = v24;
  v29 = sub_222B02128();
  v30 = sub_222B028E8();
  sub_222A34E38(v28);
  v31 = os_log_type_enabled(v29, v30);
  v32 = v122;
  if (v31)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v33 = 134218498;
    *(v33 + 4) = v118;
    *(v33 + 12) = 2080;
    v35 = sub_222A79B5C(v116);
    v36 = v30;
    v38 = v27;
    v39 = sub_222A230FC(v35, v37, aBlock);

    *(v33 + 14) = v39;
    *(v33 + 22) = 2080;
    v40 = sub_222B01738();
    v42 = v41;
    (*(v25 + 8))(v26, v38);
    v43 = sub_222A230FC(v40, v42, aBlock);

    *(v33 + 24) = v43;
    _os_log_impl(&dword_222A1C000, v29, v36, "Attempt %ld to acquire lock file (%s) failed: %s", v33, 0x20u);
    swift_arrayDestroy();
    v32 = v122;
    MEMORY[0x223DC7E30](v34, -1, -1);
    v28 = v116;
    MEMORY[0x223DC7E30](v33, -1, -1);
  }

  else
  {

    (*(v25 + 8))(v26, v27);
  }

  v44 = v119;
  v45 = v102;
  v46 = swift_allocObject();
  v47 = v46;
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  v48 = v28 >= 2;
  v49 = v28;
  v50 = v103;
  if (v48)
  {
    v58 = v49;
    v59 = v49;
    v60 = v118;
    if (v118 >= v120)
    {
      v88 = sub_222A7B364(v47);
      v90 = v89;
      v91 = sub_222B02128();
      v92 = sub_222B028E8();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        aBlock[0] = v94;
        *v93 = 136315138;
        *(v93 + 4) = sub_222A230FC(v88, v90, aBlock);
        _os_log_impl(&dword_222A1C000, v91, v92, "%s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v94);
        MEMORY[0x223DC7E30](v94, -1, -1);
        MEMORY[0x223DC7E30](v93, -1, -1);
      }

      v32(v88, v90);

      sub_222A34E38(v58);
      goto LABEL_22;
    }

    v102 = v59;
    sub_222B02248();
    v61 = exp2(v60);
    if (v61 == INFINITY)
    {
      __break(1u);
    }

    else
    {
      v62 = v111;
      v63 = v113;
      v64 = v112;
      if (v61 > -9.22337204e18)
      {
        v101 = v47;
        v65 = v99;
        if (v61 < 9.22337204e18)
        {
          v66 = v61;
          if (v61 >= 15)
          {
            v66 = 15;
          }

          *v112 = v66;
          v67 = v62;
          v68 = v63;
          v63[13](v64, *MEMORY[0x277D85188], v62);
          MEMORY[0x223DC64C0](v65, v64);
          (v68[1])(v64, v67);
          v69 = *(v44 + 8);
          v119 = v44 + 8;
          v113 = v69;
          (v69)(v65, v115);
          v70 = v45;
          v71 = v45;
          v72 = v104;
          v96(v70, v114, v104);
          v73 = v117;
          v74 = (*(v117 + 80) + 24) & ~*(v117 + 80);
          v75 = v50;
          v76 = (v97 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
          v77 = (v76 + 23) & 0xFFFFFFFFFFFFFFF8;
          v78 = swift_allocObject();
          *(v78 + 16) = v98;
          (*(v73 + 32))(v78 + v74, v71, v72);
          v79 = (v78 + v76);
          v80 = v116;
          v82 = v120;
          v81 = v121;
          *v79 = v116;
          v79[1] = v82;
          *(v78 + v77) = v118;
          v83 = (v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8));
          *v83 = v122;
          v83[1] = v81;
          v125 = sub_222A7BB2C;
          v126 = v78;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_222AD9FB4;
          v124 = &block_descriptor_7;
          v84 = _Block_copy(aBlock);
          sub_222A42840(v80);

          v85 = v105;
          sub_222B02208();
          *&v127 = MEMORY[0x277D84F90];
          sub_222A7BC00(qword_280CBA240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
          sub_222A7BC48();
          v86 = v107;
          v87 = v110;
          sub_222B02BB8();
          MEMORY[0x223DC6BC0](v75, v85, v86, v84);
          _Block_release(v84);
          sub_222A34E38(v80);
          (*(v109 + 8))(v86, v87);
          (*(v106 + 8))(v85, v108);
          (v113)(v75, v115);

LABEL_22:

          return;
        }

LABEL_25:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v51 = sub_222A7B364(v46);
  v53 = v52;
  v54 = sub_222B02128();
  v55 = sub_222B028E8();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v56 = 136315138;
    *(v56 + 4) = sub_222A230FC(v51, v53, aBlock);
    _os_log_impl(&dword_222A1C000, v54, v55, "%s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x223DC7E30](v57, -1, -1);
    MEMORY[0x223DC7E30](v56, -1, -1);
  }

  v32(v51, v53);
}

unint64_t sub_222A7B364(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    sub_222B02C88();

    sub_222B01748();
    sub_222A7BC00(&qword_280CB8310, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v3 = sub_222B02F38();
    MEMORY[0x223DC66E0](v3);

    v2 = 0xD000000000000022;
    swift_beginAccess();
    *(a1 + 16) = 0xD000000000000022;
    *(a1 + 24) = 0x8000000222B12980;
  }

  return v2;
}

uint64_t sub_222A7B488()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_222A7B4E4()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_280CB8550);
  v1 = __swift_project_value_buffer(v0, qword_280CB8550);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_222A7B5D0()
{
  if ((*(v0 + 60) & 1) == 0)
  {
    *(v0 + 60) = 1;
    v1 = *(v0 + 56);
    if (flock(v1, 12))
    {
      if (qword_280CB8548 != -1)
      {
        swift_once();
      }

      v2 = sub_222B02148();
      __swift_project_value_buffer(v2, qword_280CB8550);

      v3 = sub_222B02128();
      v4 = sub_222B028E8();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v24 = v6;
        *v5 = 136315650;
        v7 = sub_222B01738();
        v9 = sub_222A230FC(v7, v8, &v24);

        *(v5 + 4) = v9;
        *(v5 + 12) = 2080;
        v11 = MEMORY[0x223DC63B0](v10);
        if (!strerror(v11))
        {
          __break(1u);
          return;
        }

        v12 = sub_222B024A8();
        v14 = sub_222A230FC(v12, v13, &v24);

        *(v5 + 14) = v14;
        *(v5 + 22) = 1024;
        *(v5 + 24) = MEMORY[0x223DC63B0](v15);
        _os_log_impl(&dword_222A1C000, v3, v4, "Failed to unlock file: %s, %s, %d", v5, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x223DC7E30](v6, -1, -1);
        MEMORY[0x223DC7E30](v5, -1, -1);
      }
    }

    close(v1);
    if (qword_280CB8548 != -1)
    {
      swift_once();
    }

    v16 = sub_222B02148();
    __swift_project_value_buffer(v16, qword_280CB8550);
    swift_retain_n();
    v17 = sub_222B02128();
    v18 = sub_222B028D8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v19 = 136315394;
      v21 = sub_222B01738();
      v23 = sub_222A230FC(v21, v22, &v24);

      *(v19 + 4) = v23;
      *(v19 + 12) = 1024;

      *(v19 + 14) = v1;

      _os_log_impl(&dword_222A1C000, v17, v18, "Released the file lock for path %s, fd=%d", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x223DC7E30](v20, -1, -1);
      MEMORY[0x223DC7E30](v19, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_222A7B90C()
{
  if ((*(v0 + 60) & 1) == 0)
  {
    sub_222A7B5D0();
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_9A16EB635EAE528C9CC424A4A1DE53F824FileLockContextExclusive_path;
  v2 = sub_222B01748();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FileLockContextExclusive(uint64_t a1)
{
  result = qword_280CB8C88;
  if (!qword_280CB8C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222A7BA10(uint64_t a1)
{
  result = sub_222B01748();
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

uint64_t sub_222A7BAC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D6F0, &unk_222B08CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_222A7BB2C()
{
  v1 = *(sub_222B01748() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_222A7A74C(v0 + v2, *(v0 + v3), *(v0 + v3 + 8), v5 + 1, *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222A7BC00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_222A7BC48()
{
  result = qword_280CBA230;
  if (!qword_280CBA230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D718, &unk_222B0A160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA230);
  }

  return result;
}

void sub_222A7BCAC(uint64_t a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v2 = sub_222B01748();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v31[-v7];
  v9 = [objc_opt_self() defaultManager];
  sub_222B01708();
  v10 = sub_222B016A8();
  v11 = *(v3 + 8);
  v11(v8, v2);
  v35[0] = 0;
  v12 = [v9 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:v35];

  v13 = v35[0];
  if (v12)
  {

    v14 = v13;
  }

  else
  {
    v33 = v35[0];
    v15 = v35[0];
    v16 = sub_222B01628();

    swift_willThrow();
    if (qword_280CB8548 != -1)
    {
      swift_once();
    }

    v17 = sub_222B02148();
    __swift_project_value_buffer(v17, qword_280CB8550);
    (*(v3 + 16))(v6, a1, v2);
    v18 = v16;
    v19 = sub_222B02128();
    v20 = sub_222B028E8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35[0] = v33;
      *v21 = 136315394;
      v32 = v20;
      sub_222B01708();
      sub_222A7BC00(&qword_280CB8310, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v22 = sub_222B02F38();
      v24 = v23;
      v11(v8, v2);
      v11(v6, v2);
      v25 = sub_222A230FC(v22, v24, v35);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v34 = v16;
      v26 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v27 = sub_222B023D8();
      v29 = sub_222A230FC(v27, v28, v35);

      *(v21 + 14) = v29;
      _os_log_impl(&dword_222A1C000, v19, v32, "Cannot create the file lock directory: %s, error=%s", v21, 0x16u);
      v30 = v33;
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v30, -1, -1);
      MEMORY[0x223DC7E30](v21, -1, -1);
    }

    else
    {

      v11(v6, v2);
    }
  }
}

id sub_222A7C100(uint64_t a1)
{
  v3 = *(v1 + 72);
  swift_beginAccess();
  v4 = *(v3 + 24);
  if (*(v4 + 16))
  {

    v5 = sub_222A26F40(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      return v7;
    }
  }

  return 0;
}

uint64_t sub_222A7C1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D838, &qword_222B0C0D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v22[-v12];
  swift_beginAccess();
  v14 = *(v2 + 64);
  v23 = a1;

  sub_222AAAD30(sub_222A816BC, v22, v14, v7);

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D840, &qword_222B09660);
  if ((*(*(v15 - 8) + 48))(v7, 1, v15) == 1)
  {
    sub_222A34F20(v7, &qword_27D01D838, &qword_222B0C0D0);
    v16 = sub_222B018D8();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  }

  else
  {
    v17 = *&v7[*(v15 + 48) + 8];
    if (*(v17 + 16))
    {
      v16 = sub_222B018D8();
      v18 = *(v16 - 8);
      (*(v18 + 16))(v13, v17 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v16);

      (*(v18 + 56))(v13, 0, 1, v16);
    }

    else
    {

      v16 = sub_222B018D8();
      (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    }

    sub_222B018D8();
    (*(*(v16 - 8) + 8))(v7, v16);
  }

  sub_222A65A04(v13, v11);
  sub_222B018D8();
  v19 = *(v16 - 8);
  v20 = *(v19 + 48);
  if (v20(v11, 1, v16) != 1)
  {
    return (*(v19 + 32))(a2, v11, v16);
  }

  (*(v19 + 16))(a2, a1, v16);
  result = (v20)(v11, 1, v16);
  if (result != 1)
  {
    return sub_222A34F20(v11, &unk_27D01DA50, &unk_222B04E20);
  }

  return result;
}

uint64_t sub_222A7C5DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_222B018D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D840, &qword_222B09660) + 48));
  v12 = *v10;
  v11 = v10[1];
  v13 = v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v14 = *(v11 + 16);
  v26[1] = v3;
  if (v12)
  {

    sub_222AB384C(a2, v13, v14, (v12 + 16), v12 + 32);
    v16 = v15;

    v17 = v16 ^ 1;
  }

  else if (v14)
  {
    v26[3] = a2;
    v21 = *(v7 + 16);
    v19 = v7 + 16;
    v20 = v21;
    v22 = *(v19 + 56);
    v23 = (v19 - 8);
    v24 = v14 - 1;
    do
    {
      v25 = v24;
      v20(v9, v13, v6);
      sub_222A2DB64(&qword_280CB8300, MEMORY[0x277CC9610]);
      v17 = sub_222B02338();
      (*v23)(v9, v6);
      if (v17)
      {
        break;
      }

      v24 = v25 - 1;
      v13 += v22;
    }

    while (v25);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void sub_222A7C7BC(char a1@<W1>, char *a2@<X8>)
{
  v4 = sub_222A49F98();
  v5 = v4;
  v26 = v6;
  if ((a1 & 1) != 0 && [v4 anyEventType] != 17)
  {
    goto LABEL_20;
  }

  v7 = [v5 anyEventType];
  if (v7 > 18)
  {
    if (v7 > 22)
    {
      switch(v7)
      {
        case 23:
          KeyPath = swift_getKeyPath();
          sub_222A7DE0C(v5, 9u, KeyPath, 0, 0, &unk_280CB4B70, 0x277D587F0, &qword_27D01D828, a2, &qword_222B09648, &qword_27D01D830, &unk_222B09650);
          break;
        case 38:
          v25 = swift_getKeyPath();
          sub_222A7DE0C(v5, 0x13u, v25, 0, 0, &qword_280CB4AF8, 0x277D59C50, &qword_27D01D808, a2, &qword_222B09628, &qword_27D01D810, &qword_222B09630);
          break;
        case 61:
          v11 = swift_getKeyPath();
          v12 = swift_getKeyPath();
          v13 = swift_getKeyPath();
          sub_222A7DE0C(v5, 0x1Fu, v11, v12, v13, &qword_280CB4B60, 0x277D5A630, &qword_27D01D818, a2, &qword_222B09638, &qword_27D01D820, &qword_222B09640);
          goto LABEL_26;
        default:
          goto LABEL_20;
      }

      goto LABEL_33;
    }

    if (v7 == 19)
    {
      sub_222A7F5A8();
      v17 = swift_getKeyPath();
      v18 = swift_getKeyPath();
      sub_222A7DE0C(v5, 1u, v17, v18, 0, &qword_280CB4B00, 0x277D59610, &qword_27D01D7F8, a2, &qword_222B09618, &qword_27D01D800, &qword_222B09620);
    }

    else
    {
      if (v7 != 20)
      {
        goto LABEL_20;
      }

      v14 = swift_getKeyPath();
      v15 = swift_getKeyPath();
      sub_222A7DE0C(v5, 8u, v14, v15, 0, &unk_280CB4B48, 0x277D56858, &qword_27D01D7C8, a2, &qword_222B095E8, &qword_27D01D7D0, &qword_222B095F0);
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v7 <= 12)
  {
    if (v7 == 1)
    {
      sub_222A7ED84(v5, v26, a2);
      goto LABEL_21;
    }

    if (v7 == 9)
    {
      sub_222A7D5B0(v5, a2);
LABEL_21:

LABEL_34:

      return;
    }

LABEL_20:
    v16 = sub_222B018D8();
    (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
    goto LABEL_21;
  }

  if (v7 == 13)
  {
    v19 = swift_getKeyPath();
    v20 = swift_getKeyPath();
    v21 = swift_getKeyPath();
    sub_222A7DE0C(v5, 3u, v19, v20, v21, &unk_280CB4B18, 0x277D57500, &qword_27D01D7D8, a2, &qword_222B095F8, &qword_27D01D7E0, &qword_222B09600);
    goto LABEL_26;
  }

  if (v7 != 17)
  {
    if (v7 == 18)
    {
      v8 = swift_getKeyPath();
      v9 = swift_getKeyPath();
      v10 = swift_getKeyPath();
      sub_222A7DE0C(v5, 7u, v8, v9, v10, &unk_280CB4B30, 0x277D590F0, &qword_27D01D7E8, a2, &qword_222B09608, &qword_27D01D7F0, &qword_222B09610);
LABEL_26:

      goto LABEL_33;
    }

    goto LABEL_20;
  }

  sub_222A7CD20(v5, v26);

  v23 = sub_222B018D8();
  v24 = *(*(v23 - 8) + 56);

  v24(a2, 1, 1, v23);
}

void sub_222A7CD20(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v71 - v6;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  v73 = v8;
  v74 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v71 - v13;
  v15 = [a1 payload];
  if (v15)
  {
    v16 = v15;
    v17 = sub_222B01798();
    v19 = v18;

    v20 = sub_222B01788();
    sub_222A26530(v17, v19);
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_allocWithZone(MEMORY[0x277D57038]) initWithData_];

  if (v21)
  {
    if (!a2)
    {
      goto LABEL_22;
    }

    v22 = [a2 timestamp];
    if (!v22)
    {
      goto LABEL_22;
    }

    v23 = v22;
    v24 = [v22 clockIdentifier];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 value];
      if (v26)
      {
        v72 = v23;
        v27 = v26;
        v28 = sub_222B01798();
        v30 = v29;

        sub_222A67044(v28, v30, v7);
        sub_222A26530(v28, v30);
        v31 = v73;
        isUniquelyReferenced_nonNull_native = v74;
        if ((v74[6].isa)(v7, 1, v73) == 1)
        {

LABEL_21:
          sub_222A34F20(v7, &unk_27D01DA50, &unk_222B04E20);
LABEL_22:
          if (qword_280CBA628 != -1)
          {
            swift_once();
          }

          v44 = sub_222B02148();
          __swift_project_value_buffer(v44, qword_280CBC458);
          v45 = a2;
          v46 = sub_222B02128();
          v47 = sub_222B028D8();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v75[0] = v49;
            *v48 = 136315138;
            if (a2)
            {
              v50 = [v45 dictionaryRepresentation];
              if (v50)
              {
                v51 = v50;
                a2 = sub_222B022B8();
              }

              else
              {
                a2 = 0;
              }
            }

            v76 = a2;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D7C0, qword_222B09110);
            v52 = sub_222B023D8();
            v54 = sub_222A230FC(v52, v53, v75);

            *(v48 + 4) = v54;
            _os_log_impl(&dword_222A1C000, v46, v47, "Missing logical timestamp for DIM metadata: %s", v48, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v49);
            MEMORY[0x223DC7E30](v49, -1, -1);
            MEMORY[0x223DC7E30](v48, -1, -1);
          }

          return;
        }

        (*(isUniquelyReferenced_nonNull_native + 32))(v14, v7, v31);
        v55 = [v21 wrapAsAnyEvent];
        if (!v55)
        {
LABEL_42:
          v68 = [v21 deviceFixedContext];
          v69 = v72;
          if (v68)
          {
            v70 = v68;

            sub_222A663E4(v14, v69, v70);

            (*(isUniquelyReferenced_nonNull_native + 8))(v14, v31);
          }

          else
          {
            (*(isUniquelyReferenced_nonNull_native + 8))(v14, v31);
          }

          sub_222A1F4CC(v55, 0);
          return;
        }

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = *(v2 + 56);
        v56 = v76;
        v57 = v2;
        *(v2 + 56) = 0x8000000000000000;
        v59 = sub_222A26F40(v14);
        v60 = v56[2];
        v61 = (v58 & 1) == 0;
        v62 = v60 + v61;
        if (__OFADD__(v60, v61))
        {
          __break(1u);
LABEL_47:
          sub_222B02648();
          v31 = v73;
LABEL_41:
          sub_222B02688();
          swift_endAccess();

          v55 = sub_222A7D5A0;
          goto LABEL_42;
        }

        v63 = v58;
        if (v56[3] >= v62)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_222A2C4C0();
            v31 = v73;
            v66 = v57;
            v56 = v76;
LABEL_38:
            isUniquelyReferenced_nonNull_native = v74;
            *(v66 + 56) = v56;
            if ((v63 & 1) == 0)
            {
              (*(isUniquelyReferenced_nonNull_native + 16))(v12, v14, v31);
              sub_222AEC4C8();
            }

            v67 = (v56[7] + 8 * v59);
            v55 = v55;
            MEMORY[0x223DC6810]();
            if (*((*v67 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_41;
            }

            goto LABEL_47;
          }

LABEL_37:
          v66 = v57;
          goto LABEL_38;
        }

        sub_222A28C30(v62, isUniquelyReferenced_nonNull_native);
        v56 = v76;
        v64 = sub_222A26F40(v14);
        if ((v63 & 1) == (v65 & 1))
        {
          v59 = v64;
          goto LABEL_37;
        }

LABEL_50:
        sub_222B030B8();
        __break(1u);
        return;
      }
    }

    (v74[7].isa)(v7, 1, 1, v73);
    goto LABEL_21;
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v33 = sub_222B02148();
  __swift_project_value_buffer(v33, qword_280CBC458);
  v34 = a1;
  v74 = sub_222B02128();
  v35 = sub_222B028D8();
  if (os_log_type_enabled(v74, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v75[0] = v37;
    *v36 = 136315138;
    v38 = [v34 dictionaryRepresentation];

    if (v38)
    {
      sub_222B022B8();

      v39 = sub_222B022C8();
      v41 = v40;

      v42 = sub_222A230FC(v39, v41, v75);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_222A1C000, v74, v35, "Expected DIM client event for event: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x223DC7E30](v37, -1, -1);
      MEMORY[0x223DC7E30](v36, -1, -1);

      return;
    }

    __break(1u);
    goto LABEL_50;
  }

  v43 = v74;
}

uint64_t sub_222A7D5B0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v64 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_222B018D8();
  v65 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v61 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v62 = &v58 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v58 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v58 - v21;
  v63 = a1;
  v23 = [a1 payload];
  if (v23)
  {
    v24 = v23;
    v25 = sub_222B01798();
    v27 = v26;

    v28 = sub_222B01788();
    sub_222A26530(v25, v27);
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) initWithData_];

  if (v29)
  {
    v60 = v2;
    sub_222A25788(v29);
    sub_222A7DBD4(v29, 1, v12);
    v30 = *(v65 + 48);
    if (v30(v12, 1, v13) == 1)
    {

      sub_222A34F20(v12, &unk_27D01DA50, &unk_222B04E20);
      return (*(v65 + 56))(v64, 1, 1, v13);
    }

    v34 = v22;
    v35 = *(v65 + 32);
    v36 = v12;
    v37 = v65 + 32;
    v35(v34, v36, v13);
    sub_222A7DBD4(v29, 43, v10);
    if (v30(v10, 1, v13) != 1)
    {
      v35(v20, v10, v13);
      sub_222A7F9E4(v34, v20);
      (*(v65 + 8))(v20, v13);
      v38 = 0;
      goto LABEL_23;
    }

    v59 = v35;
    sub_222A34F20(v10, &unk_27D01DA50, &unk_222B04E20);
    sub_222A7DBD4(v29, 2, v7);
    if (v30(v7, 1, v13) == 1)
    {
      sub_222A34F20(v7, &unk_27D01DA50, &unk_222B04E20);
      v38 = 0;
      v35 = v59;
LABEL_23:
      sub_222ADF020(1, v34, v63);

      v57 = v64;
      v35(v64, v34, v13);
      (*(v65 + 56))(v57, 0, 1, v13);
      return sub_222A1F4CC(v38, 0);
    }

    v39 = v62;
    v58 = v37;
    v35 = v59;
    v59(v62, v7, v13);
    v40 = v60;
    v41 = v39;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v40 + 64);
    v43 = v66;
    *(v40 + 64) = 0x8000000000000000;
    v45 = sub_222A26F40(v39);
    v46 = v43[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v37) = v44;
      if (v43[3] < v48)
      {
        sub_222A296E8(v48, isUniquelyReferenced_nonNull_native);
        v43 = v66;
        v49 = sub_222A26F40(v41);
        if ((v37 & 1) != (v50 & 1))
        {
          result = sub_222B030B8();
          __break(1u);
          return result;
        }

        v45 = v49;
        *(v40 + 64) = v43;
        if (v37)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        *(v40 + 64) = v43;
        if (v44)
        {
LABEL_22:
          sub_222A80094(v34);
          swift_endAccess();
          (*(v65 + 8))(v41, v13);
          v38 = sub_222A7DDDC;
          goto LABEL_23;
        }

LABEL_21:
        sub_222A80890(MEMORY[0x277D84F90]);
        v52 = v51;
        v54 = v53;
        v55 = v61;
        (*(v65 + 16))(v61, v41, v13);
        v56 = v55;
        v35 = v59;
        sub_222AEA63C(v45, v56, v52, v54, v43);
        goto LABEL_22;
      }
    }

    sub_222A2C90C();
    v43 = v66;
    *(v40 + 64) = v66;
    if (v37)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v32 = v64;
  v33 = *(v65 + 56);

  return v33(v32, 1, 1, v13);
}

uint64_t sub_222A7DBD4@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [a1 source];
  if (v6 && (v7 = v6, v8 = [v6 component], v7, v8 == a2))
  {
    v9 = [a1 source];
    if (!v9)
    {
      goto LABEL_15;
    }

    v10 = v9;
    v11 = [v9 uuid];

    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = [v11 value];
    if (v12)
    {
LABEL_6:
      v13 = v12;
      v14 = sub_222B01798();
      v16 = v15;

      sub_222A67044(v14, v16, a3);

      return sub_222A26530(v14, v16);
    }
  }

  else
  {
    v18 = [a1 target];
    if (!v18)
    {
      goto LABEL_15;
    }

    v19 = v18;
    v20 = [v18 component];

    if (v20 != a2)
    {
      goto LABEL_15;
    }

    v21 = [a1 target];
    if (!v21)
    {
      goto LABEL_15;
    }

    v22 = v21;
    v11 = [v21 uuid];

    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = [v11 value];
    if (v12)
    {
      goto LABEL_6;
    }
  }

LABEL_15:
  v23 = sub_222B018D8();
  v24 = *(*(v23 - 8) + 56);

  return v24(a3, 1, 1, v23);
}

void sub_222A7DDDC(uint64_t *a1@<X8>)
{
  sub_222A80890(MEMORY[0x277D84F90]);
  *a1 = v2;
  a1[1] = v3;
}

void sub_222A7DE0C(void *a1@<X0>, unsigned int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, unint64_t *a6@<X5>, void *a7@<X6>, uint64_t *a8@<X7>, char *a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12)
{
  v147 = a4;
  v144 = a2;
  v150 = a9;
  v141 = a12;
  v139 = a8;
  v140 = a11;
  v138 = a10;
  v17 = sub_222B018D8();
  v153 = *(v17 - 1);
  v18 = MEMORY[0x28223BE20](v17);
  v142 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v145 = &v137 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v143 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v137 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v137 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v137 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v151 = &v137 - v34;
  MEMORY[0x28223BE20](v33);
  v152 = &v137 - v35;
  sub_222A250BC(0, a6, a7);
  v148 = a1;
  v36 = [a1 payload];
  if (v36)
  {
    v37 = v36;
    v38 = sub_222B01798();
    v40 = v39;

    v41 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v42 = sub_222B01788();
    sub_222A26530(v38, v40);
    v43 = v41;
  }

  else
  {
    v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v42 = 0;
  }

  v44 = [v43 initWithData_];

  if (v44)
  {
    v154[0] = v44;
    v45 = v44;
    swift_getAtKeyPath();

    v46 = v155;
    v149 = v32;
    v137 = a3;
    if (v155)
    {
      v47 = [v155 value];
      v48 = a5;
      if (v47)
      {
        v49 = v47;
        v50 = sub_222B01798();
        v51 = v17;
        v53 = v52;

        sub_222A67044(v50, v53, v152);
        v54 = v53;
        v17 = v51;
        v32 = v149;
        sub_222A26530(v50, v54);
      }

      else
      {

        (*(v153 + 56))(v152, 1, 1, v17);
      }

      v64 = v147;
      v63 = v151;
      if (v147)
      {
LABEL_19:
        v154[0] = v45;
        v65 = v45;

        swift_getAtKeyPath();

        v66 = v155;
        if (v155)
        {
          v67 = [v155 value];
          if (v67)
          {
            v68 = v67;
            v69 = v17;
            v70 = sub_222B01798();
            v72 = v71;

            sub_222A67044(v70, v72, v151);
            v73 = v70;
            v17 = v69;
            v32 = v149;
            v74 = v72;
            v63 = v151;
            sub_222A26530(v73, v74);
            goto LABEL_30;
          }
        }

        (*(v153 + 56))(v63, 1, 1, v17);
LABEL_30:

        if (v48)
        {
LABEL_31:
          v154[0] = v45;
          v88 = v45;

          swift_getAtKeyPath();

          v89 = v155;
          if (v155)
          {
            v90 = [v155 value];
            if (v90)
            {
              v91 = v90;
              v92 = v17;
              v93 = sub_222B01798();
              v95 = v94;

              sub_222A67044(v93, v95, v149);
              v96 = v93;
              v17 = v92;
              v32 = v149;
              v97 = v95;
              v63 = v151;
              sub_222A26530(v96, v97);
LABEL_36:

LABEL_37:
              sub_222A6E45C(v32, v29);
              v98 = *(v153 + 48);
              if (v98(v29, 1, v17) == 1)
              {
                sub_222A34F20(v29, &unk_27D01DA50, &unk_222B04E20);
                sub_222A6E45C(v63, v26);
                if (v98(v26, 1, v17) == 1)
                {
                  sub_222A34F20(v26, &unk_27D01DA50, &unk_222B04E20);
                  v99 = v143;
                  sub_222A6E45C(v152, v143);
                  if (v98(v99, 1, v17) == 1)
                  {
                    sub_222A34F20(v99, &unk_27D01DA50, &unk_222B04E20);
                    if (qword_280CBA628 != -1)
                    {
                      swift_once();
                    }

                    v100 = sub_222B02148();
                    __swift_project_value_buffer(v100, qword_280CBC458);

                    v101 = v137;

                    v59 = v45;

                    v102 = sub_222B02128();
                    v103 = sub_222B028E8();

                    if (os_log_type_enabled(v102, v103))
                    {
                      v148 = v17;
                      v104 = v48;
                      v105 = swift_slowAlloc();
                      v147 = swift_slowAlloc();
                      v154[0] = v147;
                      *v105 = 136315906;
                      v155 = v64;

                      __swift_instantiateConcreteTypeFromMangledNameV2(v139, v138);
                      v106 = sub_222B023D8();
                      v108 = sub_222A230FC(v106, v107, v154);

                      *(v105 + 4) = v108;
                      *(v105 + 12) = 2080;
                      v155 = v104;

                      v109 = sub_222B023D8();
                      v111 = sub_222A230FC(v109, v110, v154);

                      *(v105 + 14) = v111;
                      *(v105 + 22) = 2080;
                      v155 = v101;

                      __swift_instantiateConcreteTypeFromMangledNameV2(v140, v141);
                      v112 = sub_222B023D8();
                      v114 = sub_222A230FC(v112, v113, v154);

                      *(v105 + 24) = v114;
                      *(v105 + 32) = 2080;
                      v115 = [v59 dictionaryRepresentation];
                      if (v115)
                      {
                        v116 = v115;
                        sub_222B022B8();

                        v117 = sub_222B022C8();
                        v119 = v118;

                        v120 = sub_222A230FC(v117, v119, v154);

                        *(v105 + 34) = v120;
                        _os_log_impl(&dword_222A1C000, v102, v103, "    Failed to extract either request ID, sub-request ID or component UUID.\n    Tried keypaths '%s'/'%s'/'%s'.\n    For event: %s)", v105, 0x2Au);
                        v121 = v147;
                        swift_arrayDestroy();
                        MEMORY[0x223DC7E30](v121, -1, -1);
                        MEMORY[0x223DC7E30](v105, -1, -1);

                        sub_222A34F20(v149, &unk_27D01DA50, &unk_222B04E20);
                        sub_222A34F20(v151, &unk_27D01DA50, &unk_222B04E20);
                        sub_222A34F20(v152, &unk_27D01DA50, &unk_222B04E20);
                        v17 = v148;
LABEL_55:
                        v128 = *(v153 + 56);
                        v129 = v150;
                        v131 = 1;
                        goto LABEL_56;
                      }

                      goto LABEL_64;
                    }

LABEL_54:
                    sub_222A34F20(v149, &unk_27D01DA50, &unk_222B04E20);
                    sub_222A34F20(v63, &unk_27D01DA50, &unk_222B04E20);
                    sub_222A34F20(v152, &unk_27D01DA50, &unk_222B04E20);
                    goto LABEL_55;
                  }

                  v132 = *(v153 + 32);
                  v133 = v142;
                  v132(v142, v99, v17);
                  v134 = v144;
                  sub_222ADF020(v144, v133, v148);
                  if (v134 == 1)
                  {

                    sub_222A34F20(v149, &unk_27D01DA50, &unk_222B04E20);
                    sub_222A34F20(v63, &unk_27D01DA50, &unk_222B04E20);
                    sub_222A34F20(v152, &unk_27D01DA50, &unk_222B04E20);
                    v135 = v150;
                    v132(v150, v133, v17);
                    v128 = *(v153 + 56);
                    v129 = v135;
                    goto LABEL_50;
                  }

                  v136 = sub_222A26364(v134, v133);
                  if (!*(v136 + 16))
                  {

                    (*(v153 + 8))(v133, v17);
                    goto LABEL_54;
                  }

                  v130 = v150;
                  (*(v153 + 16))(v150, v136 + ((*(v153 + 80) + 32) & ~*(v153 + 80)), v17);

                  (*(v153 + 8))(v133, v17);
                }

                else
                {
                  v130 = v150;
                  (*(v153 + 32))(v150, v26, v17);
                  sub_222ADF440(v130, v148);
                }

                sub_222A34F20(v149, &unk_27D01DA50, &unk_222B04E20);
                sub_222A34F20(v63, &unk_27D01DA50, &unk_222B04E20);
                sub_222A34F20(v152, &unk_27D01DA50, &unk_222B04E20);
                v128 = *(v153 + 56);
                v129 = v130;
LABEL_50:
                v131 = 0;
LABEL_56:
                v128(v129, v131, 1, v17);
                return;
              }

              v122 = v145;
              (*(v153 + 32))(v145, v29, v17);
              v123 = v146;
              sub_222ADF440(v122, v148);
              swift_beginAccess();
              v124 = *(v123 + 48);
              if (*(v124 + 16))
              {

                v125 = sub_222A26F40(v122);
                if (v126)
                {
                  v127 = v150;
                  (*(v153 + 16))(v150, *(v124 + 56) + *(v153 + 72) * v125, v17);

                  (*(v153 + 8))(v122, v17);
                  sub_222A34F20(v149, &unk_27D01DA50, &unk_222B04E20);
                  sub_222A34F20(v63, &unk_27D01DA50, &unk_222B04E20);
                  sub_222A34F20(v152, &unk_27D01DA50, &unk_222B04E20);

                  v128 = *(v153 + 56);
                  v129 = v127;
                  goto LABEL_50;
                }
              }

              else
              {
              }

              (*(v153 + 8))(v122, v17);
              goto LABEL_54;
            }
          }

          (*(v153 + 56))(v32, 1, 1, v17);
          goto LABEL_36;
        }

LABEL_15:
        (*(v153 + 56))(v32, 1, 1, v17);
        goto LABEL_37;
      }
    }

    else
    {
      (*(v153 + 56))(v152, 1, 1, v17);
      v63 = v151;
      v48 = a5;
      v64 = v147;
      if (v147)
      {
        goto LABEL_19;
      }
    }

    (*(v153 + 56))(v63, 1, 1, v17);
    if (v48)
    {
      goto LABEL_31;
    }

    goto LABEL_15;
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v55 = sub_222B02148();
  __swift_project_value_buffer(v55, qword_280CBC458);
  v56 = v148;
  v57 = sub_222B02128();
  v58 = sub_222B028D8();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v154[0] = v60;
    *v59 = 136315394;
    if (v144 > 0x42)
    {
      v61 = @"COMPONENTNAME_UNKNOWN";
      v62 = @"COMPONENTNAME_UNKNOWN";
    }

    else
    {
      v61 = off_2784B8F80[v144];
      v62 = off_2784B9198[v144];
    }

    v75 = v61;
    v76 = v62;
    v77 = sub_222B02388();
    v79 = v78;

    v80 = sub_222A230FC(v77, v79, v154);

    *(v59 + 1) = v80;
    *(v59 + 6) = 2080;
    v81 = [v56 dictionaryRepresentation];

    if (!v81)
    {
      __break(1u);
LABEL_64:

      __break(1u);
      return;
    }

    sub_222B022B8();

    v82 = sub_222B022C8();
    v84 = v83;

    v85 = sub_222A230FC(v82, v84, v154);

    *(v59 + 14) = v85;
    _os_log_impl(&dword_222A1C000, v57, v58, "Failed to decode event of expected type '%s'; event: %s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v60, -1, -1);
    MEMORY[0x223DC7E30](v59, -1, -1);
  }

  else
  {
  }

  v86 = *(v153 + 56);
  v87 = v150;

  v86(v87, 1, 1, v17);
}

void sub_222A7ED84(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v78 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v71[-v6];
  v79 = sub_222B018D8();
  v8 = *(v79 - 8);
  v9 = MEMORY[0x28223BE20](v79);
  v11 = &v71[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v71[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v71[-v15];
  v17 = [a1 payload];
  if (v17)
  {
    v18 = v17;
    v19 = sub_222B01798();
    v21 = v20;

    v22 = sub_222B01788();
    sub_222A26530(v19, v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_allocWithZone(MEMORY[0x277D5A800]) initWithData_];

  if (v23)
  {
    v24 = [v23 eventMetadata];
    if (v24 && (v25 = v24, v26 = [v24 turnID], v25, v26))
    {
      v76 = v16;
      v27 = sub_222B01798();
      v29 = v28;

      v75 = v29;
      sub_222A67044(v27, v29, v7);
      v30 = v79;
      if ((*(v8 + 48))(v7, 1, v79) != 1)
      {
        v74 = v27;
        (*(v8 + 32))(v76, v7, v30);
        v45 = [v23 deviceDynamicContext];
        v46 = v77;
        if (v45)
        {

          if (v46)
          {
            v47 = [v46 timestamp];
            if (v47)
            {
              v48 = v47;
              (*(v8 + 16))(v14, v76, v79);
              swift_beginAccess();

              v49 = v48;
              sub_222AC59B4(v48, v14);
              swift_endAccess();

              v46 = v77;
            }
          }
        }

        v50 = sub_222A81314(v23, v46);
        v51 = v50;
        if (v50)
        {
          v52 = v50;
        }

        else
        {
          v77 = v3;
          if (qword_280CBA628 != -1)
          {
            swift_once();
          }

          v53 = sub_222B02148();
          __swift_project_value_buffer(v53, qword_280CBC458);
          v54 = v79;
          (*(v8 + 16))(v11, v76, v79);
          v55 = v23;
          v56 = sub_222B02128();
          v57 = sub_222B028E8();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v80[0] = v73;
            *v58 = 134218242;
            *(v58 + 4) = [v55 whichEvent_Type];

            *(v58 + 12) = 2080;
            v72 = v57;
            v59 = sub_222B01868();
            v61 = v60;
            (*(v8 + 8))(v11, v54);
            v62 = sub_222A230FC(v59, v61, v80);

            *(v58 + 14) = v62;
            _os_log_impl(&dword_222A1C000, v56, v72, "Missing timestamp metadata for backfilling UEI event; type: %lu; turn: %s", v58, 0x16u);
            v63 = v73;
            __swift_destroy_boxed_opaque_existential_0(v73);
            MEMORY[0x223DC7E30](v63, -1, -1);
            MEMORY[0x223DC7E30](v58, -1, -1);
          }

          else
          {

            (*(v8 + 8))(v11, v54);
          }

          v52 = a1;
        }

        v64 = v74;
        v65 = v51;
        v66 = v76;
        sub_222ADF020(2, v76, v52);
        v67 = sub_222A26364(2, v66);
        if (*(v67 + 16))
        {
          v68 = v78;
          v69 = v79;
          (*(v8 + 16))(v78, v67 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v79);
          sub_222A26530(v64, v75);

          (*(v8 + 8))(v66, v69);
          v44 = v69;
          v43 = v68;
          v42 = 0;
        }

        else
        {

          sub_222A26530(v64, v75);

          v70 = v79;
          (*(v8 + 8))(v66, v79);
          v44 = v70;
          v42 = 1;
          v43 = v78;
        }

        goto LABEL_17;
      }

      sub_222A26530(v27, v75);

      sub_222A34F20(v7, &unk_27D01DA50, &unk_222B04E20);
    }

    else
    {
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v31 = sub_222B02148();
  __swift_project_value_buffer(v31, qword_280CBC458);
  v32 = a1;
  v33 = sub_222B02128();
  v34 = sub_222B028E8();
  if (!os_log_type_enabled(v33, v34))
  {

    goto LABEL_16;
  }

  v35 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  v80[0] = v36;
  *v35 = 136315138;
  v37 = [v32 dictionaryRepresentation];

  if (v37)
  {
    sub_222B022B8();

    v38 = sub_222B022C8();
    v40 = v39;

    v41 = sub_222A230FC(v38, v40, v80);

    *(v35 + 4) = v41;
    _os_log_impl(&dword_222A1C000, v33, v34, "Failed to UEI data and/or turn ID from event: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x223DC7E30](v36, -1, -1);
    MEMORY[0x223DC7E30](v35, -1, -1);
LABEL_16:

    v42 = 1;
    v43 = v78;
    v44 = v79;
LABEL_17:
    (*(v8 + 56))(v43, v42, 1, v44);
    return;
  }

  __break(1u);
}

void *sub_222A7F5A8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - v6;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  result = sub_222A66E6C();
  if (result)
  {
    v16 = result;
    v17 = [result eventMetadata];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 requestId];

      if (v19)
      {
        v20 = [v19 value];
        if (v20)
        {
          v40 = v1;
          v41 = v5;
          v21 = v20;
          v22 = sub_222B01798();
          v24 = v23;

          sub_222A67044(v22, v24, v7);
          sub_222A26530(v22, v24);
          v25 = *(v9 + 48);
          if (v25(v7, 1, v8) != 1)
          {
            v39 = *(v9 + 32);
            v39(v14, v7, v8);
            v27 = [v16 subRequestContext];
            if (v27 && (v28 = v27, v29 = [v27 subRequestId], v28, v29))
            {
              v30 = [v29 value];
              if (v30)
              {
                v31 = v30;
                v32 = sub_222B01798();
                v37 = v33;
                v38 = v32;

                v34 = v41;
                sub_222A67044(v38, v37, v41);

                sub_222A26530(v38, v37);
                if (v25(v34, 1, v8) != 1)
                {
                  v39(v12, v34, v8);
                  sub_222A7F9E4(v14, v12);

                  v35 = *(v9 + 8);
                  v35(v12, v8);
                  return (v35)(v14, v8);
                }
              }

              else
              {

                v34 = v41;
                (*(v9 + 56))(v41, 1, 1, v8);
              }

              (*(v9 + 8))(v14, v8);
            }

            else
            {

              (*(v9 + 8))(v14, v8);
              v34 = v41;
              (*(v9 + 56))(v41, 1, 1, v8);
            }

            v26 = v34;
            return sub_222A34F20(v26, &unk_27D01DA50, &unk_222B04E20);
          }

LABEL_9:
          v26 = v7;
          return sub_222A34F20(v26, &unk_27D01DA50, &unk_222B04E20);
        }
      }
    }

    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_9;
  }

  return result;
}

void sub_222A7F9E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - v7;
  v9 = sub_222B018D8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v45 = &v40 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  sub_222A2DB64(&qword_280CB8300, MEMORY[0x277CC9610]);
  if (sub_222B02338())
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v21 = sub_222B02148();
    __swift_project_value_buffer(v21, qword_280CBC458);
    (*(v10 + 16))(v13, a1, v9);
    v22 = sub_222B02128();
    v23 = sub_222B028E8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v47[0] = v25;
      *v24 = 136315138;
      sub_222A2DB64(&qword_280CB82F8, MEMORY[0x277CC9628]);
      v26 = sub_222B02F38();
      v28 = v27;
      (*(v10 + 8))(v13, v9);
      v29 = sub_222A230FC(v26, v28, v47);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_222A1C000, v22, v23, "Request %s uses the same id for sub-request and request id. Ignoring subrequest linking.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x223DC7E30](v25, -1, -1);
      MEMORY[0x223DC7E30](v24, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    return;
  }

  v41 = a2;
  v42 = v8;
  v43 = *(v10 + 16);
  v43(v18, a2, v9);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v2 + 40);
  v31 = v46;
  *(v3 + 40) = 0x8000000000000000;
  v44 = a1;
  sub_222A26F40(a1);
  v33 = *(v31 + 16);
  v34 = (v32 & 1) == 0;
  v35 = v33 + v34;
  if (__OFADD__(v33, v34))
  {
    __break(1u);
LABEL_16:
    sub_222A2C79C();
    v31 = v46;
    goto LABEL_12;
  }

  LOBYTE(a1) = v32;
  if (*(v31 + 24) < v35)
  {
    sub_222A2907C(v35, isUniquelyReferenced_nonNull_native);
    v31 = v46;
    sub_222A26F40(v44);
    if ((a1 & 1) != (v36 & 1))
    {
      sub_222B030B8();
      __break(1u);
      return;
    }

    goto LABEL_12;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v37 = v42;
  *(v3 + 40) = v31;
  if ((a1 & 1) == 0)
  {
    v43(v45, v44, v9);
    sub_222AEC4C8();
  }

  sub_222AE4114(v20, v18);
  (*(v10 + 8))(v20, v9);
  swift_endAccess();
  v38 = v45;
  v39 = v43;
  v43(v45, v41, v9);
  v39(v37, v44, v9);
  (*(v10 + 56))(v37, 0, 1, v9);
  swift_beginAccess();
  sub_222AC5B74(v37, v38);
  swift_endAccess();
}

void *sub_222A7FF10()
{

  return v0;
}

uint64_t sub_222A7FF68()
{
  sub_222A7FF10();

  return swift_deallocClassInstance();
}

void *sub_222A7FFC0()
{
  type metadata accessor for RequestLinkTable();
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = sub_222A394AC(MEMORY[0x277D84F90]);
  v0[2] = v1;
  type metadata accessor for ComponentEventTable();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F98];
  *(v3 + 16) = MEMORY[0x277D84F98];
  v0[3] = v3;
  v5 = sub_222A3A264(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D7B8, &unk_222B09100);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v0[4] = v6;
  v0[5] = v4;
  v0[6] = v4;
  v0[7] = v4;
  v0[8] = v4;
  type metadata accessor for LogicalClockTable();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v4;
  v0[9] = v7;
  return v0;
}

uint64_t sub_222A80094(uint64_t a1)
{
  v3 = sub_222B018D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v7 = v1[1];
  v9 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v10 = *(v7 + 16);
  if (*v1)
  {

    sub_222AB384C(a1, v9, v10, (v8 + 16), v8 + 32);
    v12 = v11;
    v14 = v13;

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v10)
    {
      v21[1] = v1;
      v16 = 0;
      v19 = *(v4 + 16);
      v18 = v4 + 16;
      v17 = v19;
      v22 = *(v18 + 56);
      v23 = v10;
      while (1)
      {
        v17(v6, v9, v3);
        sub_222A2DB64(&qword_280CB8300, MEMORY[0x277CC9610]);
        v20 = sub_222B02338();
        (*(v18 - 8))(v6, v3);
        if (v20)
        {
          return 0;
        }

        ++v16;
        v9 += v22;
        if (v23 == v16)
        {
          v14 = 0;
          goto LABEL_10;
        }
      }
    }

    v14 = 0;
  }

LABEL_10:
  sub_222A80288(a1, v14);
  return 1;
}

uint64_t sub_222A80288(uint64_t a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = v2 + 1;
  v9 = v2[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[1] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_222A23D50(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_222A23D50((v11 > 1), v12 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v7, v4);
  v2[1] = v9;
  v14 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    if (MEMORY[0x223DC60E0](*(v14 + 16) & 0x3FLL) > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v15 = *v2;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = sub_222B01EA8();

        *v2 = v16;
        v15 = v16;
      }

      if (v15)
      {
        return sub_222B01E58();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_222A804D0();
}

uint64_t sub_222A804D0()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x223DC6100](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_222A80570(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_222A80570(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x223DC6100](v6, a2);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x223DC6110](v8, a4);
    sub_222A805F0(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_222A8068C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v29 = a4;
  v30 = a1;
  v6 = sub_222B018D8();
  result = MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2;
  if (a2)
  {
    if ((v38 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v13 = *(v8 + 16);
      v12 = v8 + 16;
      v26 = *(v12 + 56);
      v27 = v13;
      v28 = v12;
      v25 = (v12 - 8);
      v13(v10, v30, v6);
      while (1)
      {
        sub_222A2DB64(&qword_280CBA1F0, MEMORY[0x277CC9600]);
        result = sub_222B022E8();
        v14 = 1 << *a3;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
          break;
        }

        v17 = v16 & result;
        v18 = v29;
        v19 = sub_222B01E48();
        v21 = v20;
        v23 = v22;
        (*v25)(v10, v6);
        v31 = a3;
        v32 = v18;
        v33 = v17;
        v34 = v19;
        v35 = v21;
        v36 = v23;
        v37 = 0;
        while (v34)
        {
          sub_222B01E88();
        }

        result = sub_222B01E78();
        if (++v11 == v38)
        {
          return result;
        }

        v27(v10, v30 + v26 * v11, v6);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_222A80890(uint64_t a1)
{
  v2 = sub_222B018D8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - v7;
  v9 = sub_222A80B6C();
  v10 = sub_222A80B74(&v32, a1, 0, 1, v9);
  v11 = *(a1 + 16);
  v12 = v32;
  if (v32 != v11)
  {
    if ((v32 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 >= v32)
    {
      v30 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v29 = a1 + v30;
      sub_222AAA2B4(a1, a1 + v30, 0, (2 * v32) | 1);
      v33 = v10;
      v34 = v13;
      if (*(a1 + 16) >= v11)
      {
        v27[1] = v10;
        v27[2] = a1;
        v16 = *(v3 + 16);
        v15 = v3 + 16;
        v14 = v16;
        v31 = *(v15 + 56);
        v17 = (v15 - 8);

        v28 = v11;
        while (1)
        {
          v19 = v15;
          v14(v8, v29 + v31 * v12, v2);
          v20 = v33;
          v21 = v34 + v30;
          v22 = *(v34 + 16);
          if (v33)
          {

            sub_222AB384C(v8, v21, v22, (v20 + 16), v20 + 32);
            v24 = v23;
            v18 = v25;

            if ((v24 & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          else
          {
            if (v22)
            {
              do
              {
                v14(v6, v21, v2);
                sub_222A2DB64(&qword_280CB8300, MEMORY[0x277CC9610]);
                v26 = sub_222B02338();
                (*v17)(v6, v2);
                if (v26)
                {
                  goto LABEL_8;
                }

                v21 += v31;
              }

              while (--v22);
            }

            v18 = 0;
          }

          sub_222A80288(v8, v18);
LABEL_8:
          ++v12;
          (*v17)(v8, v2);
          v15 = v19;
          if (v12 == v28)
          {

            return;
          }
        }
      }

LABEL_20:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_222A80B74(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x223DC6100](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = MEMORY[0x223DC6110]();
    v15 = *(sub_222B018D8() - 8);
    sub_222A80FA0(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v8, (v14 + 16), v14 + 32);
    *a1 = v16;
    return v14;
  }

  else if (v8 >= 2)
  {
    v17 = *(sub_222B018D8() - 8);
    v18 = sub_222A80CC8(a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v8);
    result = 0;
    *a1 = v18;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

void *sub_222A80CC8(uint64_t a1, uint64_t a2)
{
  v5 = sub_222B018D8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v26 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v33 = MEMORY[0x277D84F90];
  result = sub_222A23D50(0, a2 & ~(a2 >> 63), 0);
  v12 = v33;
  if (!a2)
  {
LABEL_11:

    return a2;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v24 = a2;
    v25 = v2;
    v13 = 0;
    v29 = (v6 + 8);
    v22[1] = v6 + 32;
    v23 = a1;
    v14 = *(v6 + 16);
    v15 = *(v6 + 72);
    v30 = v14;
    v31 = v6 + 16;
    do
    {
      v27 = v13;
      v28 = v13 + 1;
      v14(v10, (a1 + v15 * v13), v5);
      v16 = *(v12 + 16) + 1;
      v32 = v12;
      while (--v16)
      {
        sub_222A2DB64(&qword_280CB8300, MEMORY[0x277CC9610]);
        v12 += v15;
        if (sub_222B02338())
        {
          (*v29)(v10, v5);
          a2 = v27;
          goto LABEL_11;
        }
      }

      v17 = v26;
      v30(v26, v10, v5);
      v33 = v32;
      v19 = *(v32 + 16);
      v18 = *(v32 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_222A23D50((v18 > 1), v19 + 1, 1);
        v17 = v26;
      }

      (*(v6 + 8))(v10, v5);
      v20 = v33;
      *(v33 + 16) = v19 + 1;
      v21 = v17;
      v12 = v20;
      (*(v6 + 32))(v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v19 * v15, v21, v5);
      a1 = v23;
      a2 = v24;
      v13 = v28;
      v14 = v30;
    }

    while (v28 != v24);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_222A80FA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v35 = a4;
  v8 = sub_222B018D8();
  v36 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v31 - v13;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v34 = a3;
    v31 = v4;
    v15 = 0;
    v16 = (v36 + 8);
    v32 = a2;
    v33 = a1;
    while (1)
    {
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v37 = v15 + 1;
      v52 = *(v36 + 72);
      v17 = *(v36 + 16);
      v42 = v15;
      v43 = a1 + v52 * v15;
      v17(v14);
      v18 = v34;
      sub_222A2DB64(&qword_280CBA1F0, MEMORY[0x277CC9600]);
      result = sub_222B022E8();
      v19 = 1 << *v18;
      v20 = __OFSUB__(v19, 1);
      v21 = v19 - 1;
      if (v20)
      {
        goto LABEL_15;
      }

      v41 = v21 & result;
      v22 = v35;
      v23 = sub_222B01E48();
      v39 = v24;
      v40 = v23;
      v38 = v25;
      v26 = *v16;
      (*v16)(v14, v8);
      *&v44 = v18;
      *(&v44 + 1) = v22;
      *&v45 = v41;
      *(&v45 + 1) = v40;
      *&v46 = v39;
      *(&v46 + 1) = v38;
      v47 = 0;
      v51 = 0;
      v48 = v44;
      v49 = v45;
      v50 = v46;
      v27 = sub_222B01E68();
      a1 = v33;
      if ((v28 & 1) == 0)
      {
        break;
      }

LABEL_4:
      result = sub_222B01E78();
      v15 = v37;
      if (v37 == v32)
      {
        return 1;
      }
    }

    while (1)
    {
      (v17)(v14, a1 + v27 * v52, v8);
      (v17)(v11, v43, v8);
      sub_222A2DB64(&qword_280CB8300, MEMORY[0x277CC9610]);
      v29 = sub_222B02338();
      v26(v11, v8);
      v26(v14, v8);
      if (v29)
      {
        return 0;
      }

      sub_222B01E88();
      v48 = v44;
      v49 = v45;
      v50 = v46;
      v51 = v47;
      v27 = sub_222B01E68();
      if (v30)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

id sub_222A81314(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  if (!a2)
  {
    return 0;
  }

  result = [a2 timestamp];
  if (result)
  {
    v11 = result;
    v12 = [result timestampInNanoseconds];

    result = [a2 timestamp];
    if (result)
    {
      v13 = result;
      v14 = [result clockIdentifier];

      if (v14)
      {
        v15 = [v14 toSafeNSUUID];

        if (v15)
        {
          sub_222B01898();

          v16 = sub_222B018D8();
          (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
        }

        else
        {
          v16 = sub_222B018D8();
          (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
        }

        sub_222A65A04(v7, v9);
        sub_222B018D8();
        v17 = *(v16 - 8);
        if ((*(v17 + 48))(v9, 1, v16) == 1)
        {
          sub_222A34F20(v9, &unk_27D01DA50, &unk_222B04E20);
        }

        else
        {
          sub_222B01868();
          (*(v17 + 8))(v9, v16);
          v18 = [a1 eventMetadata];
          if (v18 || (v18 = [objc_allocWithZone(MEMORY[0x277D5A808]) init]) != 0)
          {
            v19 = v18;
            [v18 setEventGeneratedRelativeToBootTimeTimestampNs_];
            v20 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

            [v19 setEventGeneratedTimestampRefId_];

            [a1 setEventMetadata_];
            v21 = [a1 wrapAsAnyEvent];

            return v21;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_222A816E4()
{
  v1 = [v0 typeName];
  sub_222B02388();

  sub_222A397FC();
  v2 = sub_222B02B68();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 16 + 16 * v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_222A8184C()
{
  result = MEMORY[0x223DC66E0](0xD000000000000014, 0x8000000222B12F10);
  qword_280CB4CB8 = 0xD000000000000036;
  unk_280CB4CC0 = 0x8000000222B12DB0;
  return result;
}

uint64_t sub_222A81908()
{
  if (qword_280CB4CB0 != -1)
  {
    swift_once();
  }

  v1 = qword_280CB4CB8;
  v2 = unk_280CB4CC0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DC66E0](0xD00000000000001DLL, 0x8000000222B12E10);

  qword_280CB4CA0 = v1;
  *algn_280CB4CA8 = v2;
  return result;
}

uint64_t sub_222A81A20()
{
  if (qword_280CB4C80 != -1)
  {
    swift_once();
  }

  v1 = qword_280CB4C88;
  v2 = qword_280CB4C90;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DC66E0](0x7461642E73636970, 0xE900000000000061);

  qword_280CB4CF0 = v1;
  unk_280CB4CF8 = v2;
  return result;
}

uint64_t sub_222A81B0C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v4 = [v2 containerURLForSecurityApplicationGroupIdentifier_];

  if (v4)
  {
    sub_222B01718();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_222B01748();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t static Config.universalSuggestionsStoreDir.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_222B01F68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_222A81B0C(&v13 - v7);
  v9 = sub_222B01748();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_222A81E38(v8);
    v11 = 1;
  }

  else
  {
    sub_222B01F58();
    sub_222B016C8();
    (*(v3 + 8))(v5, v2);
    (*(v10 + 8))(v8, v9);
    v11 = 0;
  }

  return (*(v10 + 56))(a1, v11, 1, v9);
}

uint64_t sub_222A81E38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Config.universalSuggestionsStoreFilePath.getter()
{
  v0 = sub_222B01F68();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_222B01748();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  sub_222A81B0C(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_222A81E38(v6);
    return 0;
  }

  else
  {
    sub_222B01F58();
    sub_222B016C8();
    v15 = *(v1 + 8);
    v15(v3, v0);
    v16 = *(v8 + 8);
    v16(v6, v7);
    sub_222B01F48();
    sub_222B016C8();
    v15(v3, v0);
    v16(v11, v7);
    v17 = sub_222B01728();
    v16(v13, v7);
    return v17;
  }
}

uint64_t sub_222A82194(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = MEMORY[0x223DC66E0](a2, 0xE500000000000000);
  *a3 = 0xD000000000000036;
  *a4 = 0x8000000222B12DB0;
  return result;
}

uint64_t sub_222A82244()
{
  if (qword_280CB4C60 != -1)
  {
    swift_once();
  }

  v1 = qword_280CB4C68;
  v2 = *algn_280CB4C70;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DC66E0](0x7461642E736D6970, 0xE900000000000061);

  qword_280CB4CD0 = v1;
  unk_280CB4CD8 = v2;
  return result;
}

uint64_t sub_222A82314(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

id sub_222A82480(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GroundTruthModelWipePhoneCallGroundTruthMigration();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_222A824DC(void *a1, void *a2, void *a3)
{
  v7 = [a1 entity];
  v8 = [v7 name];

  if (v8)
  {
    v9 = sub_222B02388();
    v11 = v10;

    if (v9 == 0xD000000000000011 && 0x8000000222B11A30 == v11)
    {
    }

    else
    {
      v13 = sub_222B02F78();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v14 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
    v15 = [a1 primitiveValueForKey_];

    if (v15)
    {
      sub_222B02BA8();
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
    }

    v44[0] = v42;
    v44[1] = v43;
    if (*(&v43 + 1))
    {
      v16 = swift_dynamicCast();
      if (v16)
      {
        v39 = a2;
        v44[0] = v41;
        MEMORY[0x28223BE20](v16);
        v37[2] = v44;
        v17 = sub_222AF69D0(sub_222A82928, v37, &unk_2835F16A8);

        if ((v17 & 1) == 0)
        {
          v18 = [v39 destinationEntityName];
          if (v18)
          {
            v19 = v18;
            v37[4] = v3;
            v20 = objc_opt_self();
            v21 = [a3 destinationContext];
            v22 = [v20 insertNewObjectForEntityForName:v19 inManagedObjectContext:v21];

            v45 = v22;
            v23 = [v22 entity];
            v24 = [v23 attributesByName];

            sub_222A82948();
            v25 = sub_222B022B8();

            v26 = v25 + 64;
            v27 = 1 << *(v25 + 32);
            v28 = -1;
            if (v27 < 64)
            {
              v28 = ~(-1 << v27);
            }

            v29 = v28 & *(v25 + 64);
            v30 = (v27 + 63) >> 6;
            v40 = v25;

            v31 = 0;
            v38 = a3;
            if (v29)
            {
              goto LABEL_24;
            }

            while (1)
            {
              v32 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
                break;
              }

              if (v32 >= v30)
              {

                v36 = v45;
                [a3 associateSourceInstance:a1 withDestinationInstance:v45 forEntityMapping:v39];

                return;
              }

              v29 = *(v26 + 8 * v32);
              ++v31;
              if (v29)
              {
                v31 = v32;
                do
                {
LABEL_24:
                  v29 &= v29 - 1;

                  v33 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
                  v34 = [a1 valueForKey_];

                  v35 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

                  [v45 setValue:v34 forKey:v35];
                  swift_unknownObjectRelease();

                  a3 = v38;
                }

                while (v29);
                continue;
              }
            }

            __break(1u);
          }
        }
      }
    }

    else
    {
      sub_222A254C4(v44);
    }
  }
}

unint64_t sub_222A82948()
{
  result = qword_27D01D848;
  if (!qword_27D01D848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D01D848);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningAnalytics15PluginLoadErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_222A829B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_222A829F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_222A82A3C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_222A82A7C(id *a1)
{
  v1 = *a1;
  v2 = [*a1 intent];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_222B05260;
    v6 = [v4 typeName];
    v7 = sub_222B02388();
    v9 = v8;

    v10 = type metadata accessor for SetTaskAttributeFeature.EventType(0);
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    *(v11 + 24) = v9;
    *(v5 + 56) = v10;
    *(v5 + 64) = sub_222A82DEC(&qword_27D01D850, type metadata accessor for SetTaskAttributeFeature.EventType);
    *(v5 + 32) = v11;
    v12 = [v1 _donatedBySiri];
    v13 = type metadata accessor for SetTaskAttributeFeature.DonatedBySiri(0);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v5 + 96) = v13;
    *(v5 + 104) = sub_222A82DEC(&qword_27D01D858, type metadata accessor for SetTaskAttributeFeature.DonatedBySiri);
    *(v5 + 72) = v14;
    v15 = [v4 taskTitle];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 spokenPhrase];
      v18 = sub_222B02388();
      v20 = v19;

      v21 = type metadata accessor for SetTaskAttributeFeature.TaskContents(0);
      v22 = swift_allocObject();
      *(v22 + 16) = v18;
      *(v22 + 24) = v20;
      v5 = sub_222AA8FDC(1, 3, 1, v5);

      v25 = v21;
      v26 = sub_222A82DEC(&qword_27D01D860, type metadata accessor for SetTaskAttributeFeature.TaskContents);
      *&v24 = v22;
      *(v5 + 16) = 3;
      sub_222A2577C(&v24, v5 + 112);
    }

    else
    {
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t SetTaskAttributeFeature.DonatedBySiri.__allocating_init(value:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SetTaskAttributeFeature.TaskContents.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t SetTaskAttributeFeature.DonatedBySiri.init(value:)(char a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + 16) = a1 & 1;
  }

  return v1;
}

uint64_t sub_222A82DEC(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t SetTaskAttributeFeature.DonatedBySiri.__allocating_init(value:)(unsigned __int8 a1)
{
  v2 = a1;
  result = swift_allocObject();
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1 & 1;
  }

  return result;
}

uint64_t sub_222A82F60(char *a1)
{
  v1 = *a1;
  type metadata accessor for SetTaskAttributeFeature.DonatedBySiri(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222A82F98(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for SetTaskAttributeFeature.DonatedBySiri(0);
  result = swift_allocObject();
  if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1 & 1;
  }

  return result;
}

uint64_t SetTaskAttributeFeature.TaskContents.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t SetTaskAttributeFeature.TaskContents.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222A83098(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_222A830EC(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v2 = a1[1];
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v3;
    *(result + 24) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0B8, &unk_222B07340);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t sub_222A83220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v5[8] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222A83294, 0, 0);
}

uint64_t sub_222A83294()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_222A83344;
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[6];

  return MEMORY[0x282200308](v3, v4, v2);
}

uint64_t sub_222A83344()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222A5E6C4, 0, 0);
  }

  else
  {
    swift_endAccess();
    v3 = *(v2 + 8);

    return v3();
  }
}

void *sub_222A834A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v13 = swift_allocBox();
  (*(*(a3 - 8) + 32))(v14, a1, a3);
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = v13;
  *a7 = a6;
  a7[1] = result;
  return result;
}

uint64_t sub_222A8354C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v5[8] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222A835C0, 0, 0);
}

uint64_t sub_222A835C0()
{
  swift_beginAccess();
  sub_222B02B48();
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AnyAsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_222A83678, 0, 0);
}

uint64_t sub_222A83678()
{
  v4 = (**(v0 + 24) + ***(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_222A8376C;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t sub_222A8376C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_222A83860(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222A34620;

  return AnyAsyncIterator.next()(a1);
}

uint64_t sub_222A838F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_222A83940(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_222A83988(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222A839DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_222A35344;

  return sub_222A8354C(a1, v6, v4, v5, v7);
}

uint64_t sub_222A83A9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_222A34620;

  return sub_222A83220(a1, v6, v4, v5, v7);
}

id _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO24suggestionDomainMetadata0h10GenerationI0So0e14PLUSSuggestioniJ0CSgSo0elkI0V_tFZ_0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59DC8]) init];
  if (v2)
  {
    v3 = v2;
    [v2 setSuggestionGenerationDomain_];
    return v3;
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v5 = sub_222B02148();
    __swift_project_value_buffer(v5, qword_280CBC458);
    v6 = sub_222B02128();
    v7 = sub_222B028E8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_222A230FC(0xD000000000000035, 0x8000000222B13130, &v10);
      _os_log_impl(&dword_222A1C000, v6, v7, "PLUSSchemaEventConstructor.%s:  failed to create PLUS SELF event templates", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223DC7E30](v9, -1, -1);
      MEMORY[0x223DC7E30](v8, -1, -1);
    }

    return 0;
  }
}

id _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO35suggestionChangeDataCaptureMetadata10changeTypeSo0e10PLUSChangejkL0CSgSo0eojkN0V_tFZ_0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59C48]) init];
  if (v2)
  {
    v3 = v2;
    [v2 setOperationType_];
    return v3;
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v5 = sub_222B02148();
    __swift_project_value_buffer(v5, qword_280CBC458);
    v6 = sub_222B02128();
    v7 = sub_222B028E8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_222A230FC(0xD000000000000030, 0x8000000222B130F0, &v10);
      _os_log_impl(&dword_222A1C000, v6, v7, "PLUSSchemaMessageConstructor.%s:  failed to create PLUS SELF event templates", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223DC7E30](v9, -1, -1);
      MEMORY[0x223DC7E30](v8, -1, -1);
    }

    return 0;
  }
}

id PBCodable.wrapAsAnyEvent(time:turnID:)(uint64_t a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v4 = result;
    v5 = objc_allocWithZone(MEMORY[0x277D5A808]);
    v6 = v1;
    v7 = [v5 init];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      v10 = sub_222B01878();
      v11 = AFTurnIdentifierGetBytes();

      if (v11)
      {
        v12 = sub_222B01798();
        v14 = v13;

        v11 = sub_222B01788();
        sub_222A26530(v12, v14);
      }

      [v9 setTurnID_];

      if (a1 < 0)
      {
        __break(1u);
        goto LABEL_21;
      }

      [v9 setEventGeneratedRelativeToBootTimeTimestampNs_];
    }

    v15 = [objc_allocWithZone(MEMORY[0x277D5A800]) init];
    if (v15)
    {
      v16 = v15;
      [v15 setEventType_];
      [v16 setEventMetadata_];
      v17 = [v16 wrapAsAnyEvent];
      if (v17)
      {
        v18 = v17;

        return v18;
      }

      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v23 = sub_222B02148();
      __swift_project_value_buffer(v23, qword_280CBC458);
      v20 = sub_222B02128();
      v24 = sub_222B028E8();
      if (os_log_type_enabled(v20, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_222A1C000, v20, v24, "Failed to wrap SISchemaClientEvent as SISchemaAnyEvent", v25, 2u);
        MEMORY[0x223DC7E30](v25, -1, -1);
      }

      goto LABEL_18;
    }

    if (qword_280CBA628 == -1)
    {
LABEL_11:
      v19 = sub_222B02148();
      __swift_project_value_buffer(v19, qword_280CBC458);
      v20 = sub_222B02128();
      v21 = sub_222B028E8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_222A1C000, v20, v21, "Failed to create a SISchemaClientEvent", v22, 2u);
        MEMORY[0x223DC7E30](v22, -1, -1);
      }

LABEL_18:

      return 0;
    }

LABEL_21:
    swift_once();
    goto LABEL_11;
  }

  return result;
}

uint64_t DismissalTimestampFeature.__allocating_init(value:)(double a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t DismissalReasonFeature.__allocating_init(value:)(int a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_222A84214()
{
  result = sub_222A96DD8(&unk_2835F1718);
  qword_280CB5D88 = &unk_2835F16E8;
  return result;
}

uint64_t static DismissalFeatureExtractor.allUserDismissalEvents.getter()
{
  if (qword_280CB5D80 != -1)
  {
    swift_once();
  }
}

uint64_t DismissalTimestampFeature.init(value:)(double a1)
{
  result = v1;
  *(v1 + 16) = a1;
  return result;
}

uint64_t DismissalTimestampFeature.__allocating_init(value:)(uint64_t a1, char a2)
{
  result = swift_allocObject();
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D108, &unk_222B06230);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1;
  }

  return result;
}

uint64_t DismissalTimestampFeature.init(value:)(uint64_t a1, char a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D108, &unk_222B06230);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v2 + 16) = a1;
  }

  return v2;
}

uint64_t sub_222A843D4(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for DismissalTimestampFeature(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222A8440C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  type metadata accessor for DismissalTimestampFeature(0);
  result = swift_allocObject();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D108, &unk_222B06230);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1;
  }

  return result;
}

uint64_t DismissalReasonFeature.__allocating_init(value:)(uint64_t a1)
{
  result = swift_allocObject();
  if ((a1 & 0x100000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D898, &qword_222B09A28);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1;
  }

  return result;
}

uint64_t DismissalReasonFeature.init(value:)(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D898, &qword_222B09A28);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + 16) = a1;
  }

  return v1;
}

uint64_t sub_222A84578(int *a1)
{
  v1 = *a1;
  type metadata accessor for DismissalReasonFeature(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222A845B0(int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  type metadata accessor for DismissalReasonFeature(0);
  result = swift_allocObject();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D898, &qword_222B09A28);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1;
  }

  return result;
}

void *sub_222A84628(unint64_t a1)
{
  v1 = a1;
  *&v64 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_34:
    a1 = sub_222B02DC8();
    v3 = a1;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_35:
    v63 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_35;
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v62 = v1;
  v63 = MEMORY[0x277D84F90];
  v6 = &off_2784BA000;
  v61 = v1 & 0xC000000000000001;
  do
  {
    v7 = v4;
    while (1)
    {
      if (v5)
      {
        v8 = MEMORY[0x223DC6F00](v7, v1);
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_33;
        }

        v8 = *(v1 + 8 * v7 + 32);
      }

      v9 = v8;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if ([v8 v6[94]] == 6)
      {
        v10 = [v9 payload];
        if (v10)
        {
          v11 = v10;
          v12 = sub_222B01798();
          v14 = v13;

          v15 = sub_222B01788();
          v16 = v14;
          v6 = &off_2784BA000;
          sub_222A26530(v12, v16);
        }

        else
        {
          v15 = 0;
        }

        v18 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

        v17 = [v18 event];
        if (!v17)
        {
          v17 = v9;
          goto LABEL_6;
        }
      }

      else
      {
        v17 = v9;
      }

      v19 = sub_222A40414();
      [v17 v6[94]];
      v20 = sub_222B02A28();
      if (!v20 || v19 != v20)
      {

        goto LABEL_6;
      }

      v21 = [v17 payload];
      if (v21)
      {
        v22 = v21;
        v23 = v3;
        v24 = sub_222B01798();
        v26 = v25;

        v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v28 = sub_222B01788();
        v29 = v24;
        v3 = v23;
        v30 = v26;
        v5 = v61;
        v1 = v62;
        sub_222A26530(v29, v30);
        v31 = v27;
      }

      else
      {
        v31 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v28 = 0;
      }

      v32 = [v31 initWithData_];

      if (!v32)
      {
        v17 = v9;
        v6 = &off_2784BA000;
        goto LABEL_6;
      }

      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();

      v17 = v32;
      v6 = &off_2784BA000;
      if (v33)
      {
        break;
      }

LABEL_6:

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_36;
      }
    }

    MEMORY[0x223DC6810]();
    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_222B02648();
    }

    a1 = sub_222B02688();
    v63 = v64;
  }

  while (v4 != v3);
LABEL_36:
  *&v64 = v63;
  if (v63 >> 62)
  {
    goto LABEL_70;
  }

  for (i = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = a1)
  {
    while (!__OFSUB__(i--, 1))
    {
      if ((v63 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x223DC6F00](i, v63);
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

        if (i >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v36 = *(v63 + 32 + 8 * i);
      }

      v37 = v36;
      v38 = [v36 uiStateTransition];
      if (v38)
      {
        v39 = v38;
        v40 = [v38 dismissed];

        if (v40)
        {
          [v40 dismissalReason];

          goto LABEL_50;
        }
      }

      if (!i)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    a1 = sub_222B02DC8();
  }

LABEL_50:
  MEMORY[0x28223BE20](a1);
  v60[2] = &v64;
  v42 = sub_222A9DCE0(sub_222A6E41C, v60, i, v41);

  if (!v42)
  {
    return MEMORY[0x277D84F90];
  }

  if (([v42 hasDeviceDynamicContext] & 1) != 0 && (getEventTimestampFromContext(from:context:)(v42, v42), (v44 & 1) == 0))
  {
    v46 = v43;
    v47 = type metadata accessor for DismissalTimestampFeature(0);
    v48 = swift_allocObject();
    *(v48 + 16) = v46;
    v45 = sub_222AA8FDC(0, 1, 1, MEMORY[0x277D84F90]);
    v50 = v45[2];
    v49 = v45[3];
    if (v50 >= v49 >> 1)
    {
      v45 = sub_222AA8FDC((v49 > 1), v50 + 1, 1, v45);
    }

    v65 = v47;
    v66 = sub_222A84D74(&qword_27D01D8B0, type metadata accessor for DismissalTimestampFeature);
    *&v64 = v48;
    v45[2] = v50 + 1;
    sub_222A2577C(&v64, &v45[5 * v50 + 4]);
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  v51 = [v42 uiStateTransition];
  if (v51 && (v52 = v51, v53 = [v51 dismissed], v52, v53))
  {
    v54 = [v53 dismissalReason];

    v55 = type metadata accessor for DismissalReasonFeature(0);
    v56 = swift_allocObject();
    *(v56 + 16) = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_222AA8FDC(0, v45[2] + 1, 1, v45);
    }

    v58 = v45[2];
    v57 = v45[3];
    if (v58 >= v57 >> 1)
    {
      v45 = sub_222AA8FDC((v57 > 1), v58 + 1, 1, v45);
    }

    v65 = v55;
    v66 = sub_222A84D74(qword_280CB6328, type metadata accessor for DismissalReasonFeature);
    *&v64 = v56;
    v45[2] = v58 + 1;
    sub_222A2577C(&v64, &v45[5 * v58 + 4]);
  }

  else
  {
  }

  return v45;
}

uint64_t sub_222A84D74(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

id sub_222A84E10(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GroundTruthModelV1toV2CoreDataMigration();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t Conversation.init(_:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D538, &unk_222B07E30);
  v4 = swift_allocObject();
  v4[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  if (a1 >> 62)
  {
    v6 = sub_222B02DC8();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = sub_222A84F40();
  result = swift_allocObject();
  *(result + 16) = v6;
  v4[2] = v5;
  v4[3] = v7;
  v4[4] = result;
  v4[5] = v7;
  *a2 = v4;
  return result;
}

unint64_t sub_222A84F40()
{
  result = qword_280CB4AB0;
  if (!qword_280CB4AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01DCE0, &qword_222B0D8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB4AB0);
  }

  return result;
}

void *sub_222A84FB0()
{
  v0 = sub_222B018D8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v155 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v140 = &v139 - v5;
  MEMORY[0x28223BE20](v4);
  v147 = &v139 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v142 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v151 = &v139 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v141 = &v139 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v139 - v15;
  MEMORY[0x28223BE20](v14);
  v156 = &v139 - v17;
  v18 = MEMORY[0x277D84F90];
  v19 = sub_222A3A288(MEMORY[0x277D84F90]);
  v146 = sub_222B02D68();
  sub_222B02E18();
  v20 = v164;
  if (!v164)
  {
LABEL_93:

    v122 = v18[2];
    v123 = MEMORY[0x277D84F90];
    if (v122)
    {
      v153 = v19;
      v164 = MEMORY[0x277D84F90];
      sub_222A23D94(0, v122, 0);
      v154 = v18;
      v124 = v18 + 4;
      v123 = v164;
      do
      {
        v125 = *v124;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D538, &unk_222B07E30);
        v126 = swift_allocObject();
        v126[6] = v125;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
        v127 = swift_allocObject();
        *(v127 + 16) = 0;
        if (v125 >> 62)
        {
          v128 = sub_222B02DC8();
        }

        else
        {
          v128 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v129 = sub_222A84F40();
        v130 = swift_allocObject();
        *(v130 + 16) = v128;
        v126[2] = v127;
        v126[3] = v129;
        v126[4] = v130;
        v126[5] = v129;
        v164 = v123;
        v131 = v123[2];
        v132 = v123[3];

        if (v131 >= v132 >> 1)
        {
          sub_222A23D94((v132 > 1), v131 + 1, 1);
          v123 = v164;
        }

        v123[2] = v131 + 1;
        v123[v131 + 4] = v126;
        ++v124;
        --v122;
      }

      while (v122);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D8B8, &unk_222B09BE0);
    v133 = swift_allocObject();
    v133[6] = v123;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
    v134 = swift_allocObject();
    *(v134 + 16) = 0;
    v135 = sub_222A84F40();
    v136 = v123[2];
    v137 = swift_allocObject();
    *(v137 + 16) = v136;

    v133[2] = v134;
    v133[3] = v135;
    v133[4] = v137;
    v133[5] = v135;
    return v133;
  }

  v159 = (v1 + 56);
  v161 = (v1 + 48);
  v144 = (v1 + 32);
  v150 = (v1 + 16);
  v148 = (v1 + 8);
  v143 = xmmword_222B06DF0;
  v21 = &off_2784BA000;
  v158 = v0;
  v145 = v1;
  while (2)
  {
    v157 = v20;
    v153 = v19;
    v154 = v18;
    v23 = *(v20 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events);
    v152 = v23 >> 62;
    v24 = v23 & 0xFFFFFFFFFFFFFF8;
    if (v23 >> 62)
    {
      v25 = sub_222B02DC8();
    }

    else
    {
      v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v160 = v23 & 0xC000000000000001;
    v149 = v23 + 32;

    v26 = 0;
    v162 = v23;
    while (1)
    {
      if (v25 == v26)
      {
        goto LABEL_39;
      }

      if (v160)
      {
        v27 = MEMORY[0x223DC6F00](v26, v23);
      }

      else
      {
        if (v26 >= *(v24 + 16))
        {
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v27 = *(v23 + 8 * v26 + 32);
      }

      v28 = v27;
      if ([v27 v21[94]] == 6)
      {
        v29 = [v28 payload];
        if (v29)
        {
          v30 = v29;
          v31 = sub_222B01798();
          v33 = v32;

          v34 = sub_222B01788();
          v35 = v33;
          v21 = &off_2784BA000;
          sub_222A26530(v31, v35);
        }

        else
        {
          v34 = 0;
        }

        v37 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

        v36 = [v37 event];
        if (!v36)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v36 = v28;
      }

      v38 = sub_222A40414();
      [v36 v21[94]];
      v39 = sub_222B02A28();
      if (!v39 || v38 != v39)
      {
        goto LABEL_31;
      }

      v40 = [v36 payload];
      if (v40)
      {
        v41 = v40;
        v42 = sub_222B01798();
        v44 = v43;

        v45 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v46 = sub_222B01788();
        v47 = v42;
        v21 = &off_2784BA000;
        sub_222A26530(v47, v44);
        v48 = v45;
      }

      else
      {
        v48 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v46 = 0;
      }

      v49 = [v48 initWithData_];

      if (!v49)
      {
        goto LABEL_30;
      }

      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();

      if (!v50)
      {
        v36 = v49;
LABEL_30:
        v0 = v158;
LABEL_31:

LABEL_32:
        (*v159)(v16, 1, 1, v0);
        v49 = v28;
        goto LABEL_33;
      }

      v51 = [v50 clientConversationTrace];
      if (v51 && (v52 = v51, v53 = [v51 previousTurnID], v52, v53))
      {
        v54 = sub_222B01798();
        v56 = v55;

        sub_222A67044(v54, v56, v16);
        sub_222A26530(v54, v56);

        v0 = v158;
      }

      else
      {
        v0 = v158;
        (*v159)(v16, 1, 1, v158);
      }

LABEL_33:

      v57 = (*v161)(v16, 1, v0);
      sub_222A264C8(v16);
      v23 = v162;
      if (v57 != 1)
      {
        break;
      }

      v58 = __OFADD__(v26++, 1);
      if (v58)
      {
        goto LABEL_104;
      }
    }

    v25 = v26;
LABEL_39:
    v59 = v151;
    v60 = v156;
    if (!v152)
    {
      if (v25 != *(v24 + 16))
      {
        goto LABEL_41;
      }

LABEL_49:
      v75 = 1;
      v64 = v153;
      v18 = v154;
      v65 = v145;
      v66 = v147;
LABEL_54:
      (*v159)(v60, v75, 1, v0);

      sub_222A6E45C(v60, v59);
      if ((*v161)(v59, 1, v0) == 1)
      {
        sub_222A264C8(v59);
        goto LABEL_70;
      }

      (*v144)(v66, v59, v0);
      if (v64[2])
      {
        v77 = sub_222A26F40(v66);
        if (v78)
        {
          v79 = *(v64[7] + 8 * v77);
          if ((v79 & 0x8000000000000000) != 0)
          {
            goto LABEL_108;
          }

          if (v79 >= v18[2])
          {
            goto LABEL_109;
          }

          v164 = v18[v79 + 4];

          MEMORY[0x223DC6810](v80);
          if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_222B02648();
          }

          sub_222B02688();
          v81 = v164;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_222A765B8(v18);
          }

          v82 = v157;
          if (v79 >= v18[2])
          {
            goto LABEL_110;
          }

          v18[v79 + 4] = v81;

          v83 = v0;
          v84 = *v150;
          v85 = v140;
          (*v150)(v140, v82 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID, v83);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v163 = v64;
          v87 = sub_222A26F40(v85);
          v89 = v64[2];
          v90 = (v88 & 1) == 0;
          v58 = __OFADD__(v89, v90);
          v91 = v89 + v90;
          if (v58)
          {
            goto LABEL_111;
          }

          v92 = v88;
          if (v64[3] >= v91)
          {
            v21 = &off_2784BA000;
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_78;
            }

            v121 = v87;
            sub_222A2CB9C();
            v87 = v121;
            v19 = v163;
            if (v92)
            {
              goto LABEL_3;
            }

LABEL_79:
            v19[(v87 >> 6) + 8] |= 1 << v87;
            v107 = v87;
            v108 = v140;
            v109 = v158;
            v84(v19[6] + *(v65 + 72) * v87, v140, v158);
            v0 = v109;
            *(v19[7] + 8 * v107) = v79;

            v110 = *(v65 + 8);
            v110(v108, v109);
            v110(v147, v109);
            sub_222A264C8(v156);
            v111 = v19[2];
            v58 = __OFADD__(v111, 1);
            v112 = v111 + 1;
            if (!v58)
            {
              v19[2] = v112;
              goto LABEL_4;
            }

            goto LABEL_112;
          }

          sub_222A29AC0(v91, isUniquelyReferenced_nonNull_native);
          v87 = sub_222A26F40(v140);
          v21 = &off_2784BA000;
          if ((v92 & 1) != (v93 & 1))
          {
            goto LABEL_114;
          }

LABEL_78:
          v19 = v163;
          if ((v92 & 1) == 0)
          {
            goto LABEL_79;
          }

LABEL_3:
          *(v19[7] + 8 * v87) = v79;

          v22 = *v148;
          v0 = v158;
          (*v148)(v140, v158);
          v22(v147, v0);
          sub_222A264C8(v156);
LABEL_4:
          sub_222B02E18();
          v20 = v164;
          if (!v164)
          {
            goto LABEL_93;
          }

          continue;
        }
      }

      (*v148)(v66, v0);
LABEL_70:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
      v94 = swift_allocObject();
      *(v94 + 16) = v143;
      v95 = v157;
      *(v94 + 32) = v157;
      v96 = *v150;
      v97 = v155;
      (*v150)(v155, v95 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID, v0);
      v98 = v18[2];

      v99 = swift_isUniquelyReferenced_nonNull_native();
      v164 = v64;
      v100 = sub_222A26F40(v97);
      v102 = v64[2];
      v103 = (v101 & 1) == 0;
      v58 = __OFADD__(v102, v103);
      v104 = v102 + v103;
      if (!v58)
      {
        v105 = v101;
        if (v64[3] >= v104)
        {
          v21 = &off_2784BA000;
          if (v99)
          {
            goto LABEL_75;
          }

          v113 = v100;
          sub_222A2CB9C();
          v100 = v113;
          v19 = v164;
          if ((v105 & 1) == 0)
          {
            goto LABEL_84;
          }

LABEL_76:
          *(v19[7] + 8 * v100) = v98;
          v0 = v158;
          (*v148)(v155, v158);
LABEL_86:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_222AA9834(0, v18[2] + 1, 1, v18);
          }

          v120 = v18[2];
          v119 = v18[3];
          if (v120 >= v119 >> 1)
          {
            v18 = sub_222AA9834((v119 > 1), v120 + 1, 1, v18);
          }

          sub_222A264C8(v156);
          v18[2] = v120 + 1;
          v18[v120 + 4] = v94;
          goto LABEL_4;
        }

        sub_222A29AC0(v104, v99);
        v100 = sub_222A26F40(v155);
        v21 = &off_2784BA000;
        if ((v105 & 1) != (v106 & 1))
        {
          goto LABEL_114;
        }

LABEL_75:
        v19 = v164;
        if (v105)
        {
          goto LABEL_76;
        }

LABEL_84:
        v19[(v100 >> 6) + 8] |= 1 << v100;
        v114 = v100;
        v115 = v155;
        v116 = v158;
        v96(v19[6] + *(v65 + 72) * v100, v155, v158);
        *(v19[7] + 8 * v114) = v98;
        v0 = v116;
        (*(v65 + 8))(v115, v116);
        v117 = v19[2];
        v58 = __OFADD__(v117, 1);
        v118 = v117 + 1;
        if (!v58)
        {
          v19[2] = v118;
          v21 = &off_2784BA000;
          goto LABEL_86;
        }

LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    break;
  }

  if (v25 == sub_222B02DC8())
  {
    goto LABEL_49;
  }

LABEL_41:
  if (v160)
  {
    v61 = MEMORY[0x223DC6F00](v25, v23);
  }

  else
  {
    if (v25 >= *(v24 + 16))
    {
      goto LABEL_106;
    }

    v61 = *(v149 + 8 * v25);
  }

  v62 = v61;
  v63 = sub_222A66E54();
  v64 = v153;
  v18 = v154;
  v65 = v145;
  v66 = v147;
  if (v63)
  {
    v67 = v63;
    v68 = [v63 clientConversationTrace];
    if (v68 && (v69 = v68, v70 = [v68 previousTurnID], v69, v70))
    {
      v71 = sub_222B01798();
      v73 = v72;

      v74 = v141;
      sub_222A67044(v71, v73, v141);
      sub_222A26530(v71, v73);

      v62 = v67;
      v0 = v158;
    }

    else
    {
      v0 = v158;
      v74 = v141;
      (*v159)(v141, 1, 1, v158);

      v62 = v67;
    }
  }

  else
  {
    v74 = v141;
    (*v159)(v141, 1, 1, v0);
  }

  v76 = v142;
  sub_222A6E45C(v74, v142);
  if ((*v161)(v76, 1, v0) != 1)
  {
    v60 = v156;
    (*v144)(v156, v76, v0);
    sub_222A264C8(v74);
    v75 = 0;
    v59 = v151;
    goto LABEL_54;
  }

LABEL_113:
  __break(1u);
LABEL_114:
  result = sub_222B030B8();
  __break(1u);
  return result;
}

uint64_t sub_222A85F4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_222A85F94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222A85FE4(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  sub_222A6EEE8();
  if ((sub_222B02AE8() & 1) == 0)
  {
    return 0;
  }

  v6 = sub_222B02AE8() & (v3 == v5);
  if (v2 == v4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222A860D4()
{
  sub_222A86648(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_222A861B4(uint64_t a1, unsigned int a2)
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

uint64_t sub_222A861FC(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222A86258(uint64_t a1, uint64_t a2)
{
  v2 = sub_222B02E48();

  if (v2 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_222A862A4(void *a1)
{
  v2 = [a1 intentName];
  v3 = sub_222B02388();
  v5 = v4;

  sub_222A250BC(0, &qword_27D01D8C8, 0x277CD41A8);
  v6 = [swift_getObjCClassFromMetadata() typeName];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  v8 = sub_222B02388();
  v10 = v9;

  if (v3 == v8 && v5 == v10)
  {
  }

  else
  {
    v12 = sub_222B02F78();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  v14 = [a1 slotValue];
  v15 = sub_222B02388();
  v17 = v16;

  if (v15 == 0x746361746E6F63 && v17 == 0xE700000000000000)
  {
    goto LABEL_12;
  }

  v18 = sub_222B02F78();

  if (v18)
  {
    return 1;
  }

  v19 = [a1 slotValue];
  v20 = sub_222B02388();
  v22 = v21;

  if (v20 == 0x73746361746E6F63 && v22 == 0xE800000000000000)
  {
LABEL_12:

    return 1;
  }

  v23 = sub_222B02F78();

  return v23 & 1;
}

uint64_t sub_222A864B4(void *a1)
{
  v2 = [a1 intentName];
  v3 = sub_222B02388();
  v5 = v4;

  sub_222A250BC(0, &qword_27D01D8C0, 0x277CD4078);
  v6 = [swift_getObjCClassFromMetadata() typeName];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  v8 = sub_222B02388();
  v10 = v9;

  if (v3 == v8 && v5 == v10)
  {
  }

  else
  {
    v12 = sub_222B02F78();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  v14 = [a1 slotValue];
  v15 = sub_222B02388();
  v17 = v16;

  if (v15 == 0x6E65697069636572 && v17 == 0xE900000000000074)
  {

    return 1;
  }

  else
  {
    v18 = sub_222B02F78();

    return v18 & 1;
  }
}

void sub_222A86648(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

ValueMetadata *sub_222A866C0(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v1 = 0xE400000000000000;
      v2 = 1701736270;
      goto LABEL_13;
    }

    if (a1 == 1)
    {
      v1 = 0x8000000222B135D0;
      v2 = 0xD00000000000002ALL;
      goto LABEL_13;
    }

LABEL_12:
    v2 = 0xD00000000000001BLL;
    v1 = 0x8000000222B13600;
    goto LABEL_13;
  }

  if (a1 == 2)
  {
    v1 = 0x8000000222B135A0;
    v2 = 0xD00000000000002BLL;
    goto LABEL_13;
  }

  if (a1 == 3)
  {
    v1 = 0x8000000222B13570;
    v2 = 0xD00000000000002FLL;
    goto LABEL_13;
  }

  if (a1 != 4)
  {
    goto LABEL_12;
  }

  v1 = 0x8000000222B13540;
  v2 = 0xD00000000000002DLL;
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D938, &qword_222B0A138);
  v4 = sub_222B023D8();

  MEMORY[0x223DC66E0](46, 0xE100000000000000);

  MEMORY[0x223DC66E0](v2, v1);

  return v4;
}

BOOL sub_222A86848(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (!v2)
    {
      return !v3;
    }

    if (v2 == 1)
    {
      return v3 == 1;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        return v3 == 2;
      case 3:
        return v3 == 3;
      case 4:
        return v3 == 4;
    }
  }

  if (v3 < 5)
  {
    return 0;
  }

  sub_222A250BC(0, &qword_280CB4AE8, 0x277D82BB8);
  return sub_222B02AE8() & 1;
}

uint64_t sub_222A8691C()
{
  v1 = *v0;
  sub_222B03128();
  MEMORY[0x223DC7380](v1 + 1);
  return sub_222B03168();
}

uint64_t sub_222A86994(uint64_t a1)
{
  v2 = *v1;
  sub_222B03128();
  MEMORY[0x223DC7380](v2 + 1);
  return sub_222B03168();
}

void *sub_222A869D8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

void *sub_222A86A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 48) = 0;
  v5 = sub_222A3A470(MEMORY[0x277D84F90]);
  v46 = *(a3 + 16);
  v6 = 0;
  if (!v46)
  {
LABEL_30:
    v43[2] = a1;
    v43[3] = a3;
    v43[4] = v5;
    v43[5] = a2;
    sub_222A1F4CC(v6, 0);
    return v43;
  }

  v7 = 0;
  v45 = a3 + 32;
  v44 = a3;
  while (1)
  {
    if (v7 >= *(a3 + 16))
    {
      goto LABEL_34;
    }

    v47 = v7;
    sub_222A42E40(v45 + 40 * v7, v51);
    v8 = v52;
    v9 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v10 = (*(v9 + 24))(v8, v9);
    v11 = *(v10 + 16);
    if (v11)
    {
      break;
    }

LABEL_26:

    if (qword_280CB4C08 != -1)
    {
      swift_once();
    }

    v31 = sub_222B02148();
    __swift_project_value_buffer(v31, qword_280CB4C10);
    sub_222A42E40(v51, &v49);
    v32 = sub_222B02128();
    v33 = sub_222B028D8();
    a3 = v44;
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = v35;
      *v34 = 136315138;
      __swift_project_boxed_opaque_existential_1(&v49, v50);
      swift_getDynamicType();
      v36 = sub_222B03228();
      v38 = v37;
      __swift_destroy_boxed_opaque_existential_0(&v49);
      v39 = sub_222A230FC(v36, v38, &v48);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_222A1C000, v32, v33, "BiomeSiriEventScenarioProcessor Adding a filter: %s ", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x223DC7E30](v35, -1, -1);
      MEMORY[0x223DC7E30](v34, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(&v49);
    }

    v7 = v47 + 1;
    __swift_destroy_boxed_opaque_existential_0(v51);
    if (v47 + 1 == v46)
    {
      goto LABEL_30;
    }
  }

  v12 = 0;
  while (v12 < *(v10 + 16))
  {
    v13 = *(v10 + 32 + v12);
    sub_222A42E40(v51, &v49);
    sub_222A1F4CC(v6, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v5;
    v16 = sub_222A27244(v13);
    v17 = v5[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_32;
    }

    v20 = v15;
    if (v5[3] >= v19)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v5 = v48;
        if (v15)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_222A2CE0C();
        v5 = v48;
        if (v20)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_222A29E6C(v19, isUniquelyReferenced_nonNull_native);
      v21 = sub_222A27244(v13);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_35;
      }

      v16 = v21;
      v5 = v48;
      if (v20)
      {
        goto LABEL_18;
      }
    }

    v5[(v16 >> 6) + 8] |= 1 << v16;
    *(v5[6] + v16) = v13;
    *(v5[7] + 8 * v16) = MEMORY[0x277D84F90];
    v23 = v5[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_33;
    }

    v5[2] = v25;
LABEL_18:
    v26 = v5[7];
    v27 = *(v26 + 8 * v16);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + 8 * v16) = v27;
    if ((v28 & 1) == 0)
    {
      v27 = sub_222AA998C(0, v27[2] + 1, 1, v27);
      *(v26 + 8 * v16) = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      v27 = sub_222AA998C((v29 > 1), v30 + 1, 1, v27);
      *(v26 + 8 * v16) = v27;
    }

    ++v12;
    v27[2] = v30 + 1;
    sub_222A1E5A8(&v49, &v27[5 * v30 + 4]);
    v6 = sub_222A7D5A0;
    if (v11 == v12)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_222B030B8();
  __break(1u);
  return result;
}

uint64_t sub_222A86E7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_222B021D8();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_222B02238();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  swift_weakInit();
  v16 = *(v3 + 16);
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_222A8B820;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_103;
  v14 = _Block_copy(aBlock);

  sub_222B02208();
  v19 = MEMORY[0x277D84F90];
  sub_222A8B840(qword_280CBA240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
  sub_222B02BB8();
  MEMORY[0x223DC6BE0](0, v11, v8, v14);
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

void sub_222A87180(unint64_t a1, int64_t a2, int64_t a3)
{
  if (qword_280CB4C08 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v6 = sub_222B02148();
    __swift_project_value_buffer(v6, qword_280CB4C10);
    v7 = sub_222B02128();
    v8 = sub_222B028D8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_222A1C000, v7, v8, "BiomeSiriEventScenarioProcessor received a subscribe request", v9, 2u);
      MEMORY[0x223DC7E30](v9, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      v13 = sub_222B02128();
      v17 = sub_222B028D8();
      if (os_log_type_enabled(v13, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_222A1C000, v13, v17, "Skipping BiomeSiriEventScenarioProcessor subscription, the scenario processor was deallocated", v18, 2u);
        MEMORY[0x223DC7E30](v18, -1, -1);
      }

      goto LABEL_11;
    }

    v11 = Strong;
    v12 = *(Strong + 48);
    v13 = sub_222B02128();
    v14 = sub_222B028D8();
    v15 = os_log_type_enabled(v13, v14);
    if (v12)
    {
      if (v15)
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_222A1C000, v13, v14, "Skipping BiomeSiriEventScenarioProcessor subscription, the scenario processor is already subscribed", v16, 2u);
        MEMORY[0x223DC7E30](v16, -1, -1);
      }

LABEL_11:

      return;
    }

    v48 = a1;
    v49 = a2;
    v50 = a3;
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_222A1C000, v13, v14, "BiomeSiriEventScenarioProcessor is starting to subscribe to Biome streams", v19, 2u);
      MEMORY[0x223DC7E30](v19, -1, -1);
    }

    v20 = v11[5];
    v23 = *(v20 + 64);
    v22 = v20 + 64;
    v21 = v23;
    v24 = 1 << *(v11[5] + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    a1 = v25 & v21;
    a2 = (v24 + 63) >> 6;
    v53 = v11[5];

    a3 = 0;
    v51 = MEMORY[0x277D84F90];
    v52 = v11;
    if (a1)
    {
      break;
    }

LABEL_20:
    if (a2 <= a3 + 1)
    {
      v27 = a3 + 1;
    }

    else
    {
      v27 = a2;
    }

    v28 = v27 - 1;
    while (1)
    {
      v26 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        break;
      }

      if (v26 >= a2)
      {
        a1 = 0;
        v56 = 0u;
        v57 = 0u;
        a3 = v28;
        v55 = 0u;
        goto LABEL_29;
      }

      a1 = *(v22 + 8 * v26);
      ++a3;
      if (a1)
      {
        a3 = v26;
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v26 = a3;
LABEL_28:
    v29 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v30 = v29 | (v26 << 6);
    v31 = *(*(v53 + 48) + v30);
    sub_222A42E40(*(v53 + 56) + 40 * v30, v54);
    LOBYTE(v55) = v31;
    sub_222A1E5A8(v54, &v55 + 8);
LABEL_29:
    v58[1] = v56;
    v58[2] = v57;
    v58[0] = v55;
    if (!v57)
    {
      break;
    }

    v32 = LOBYTE(v58[0]);
    sub_222A1E5A8((v58 + 8), &v55);
    if (*(v11[4] + 16) && (sub_222A27244(v32), (v33 & 1) != 0))
    {
      sub_222A42E40(&v55, v54);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_222AA99B0(0, v51[2] + 1, 1, v51);
      }

      v43 = v51[2];
      v42 = v51[3];
      if (v43 >= v42 >> 1)
      {
        v51 = sub_222AA99B0((v42 > 1), v43 + 1, 1, v51);
      }

      v51[2] = v43 + 1;
      sub_222A1E5A8(v54, &v51[5 * v43 + 4]);
      v44 = *(&v56 + 1);
      v45 = v57;
      __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
      v46 = swift_allocObject();
      *(v46 + 16) = v48;
      *(v46 + 24) = v32;
      *(v46 + 32) = v49;
      *(v46 + 40) = v50;
      v47 = *(v45 + 16);

      v47(sub_222A8B82C, v46, v44, v45);

      __swift_destroy_boxed_opaque_existential_0(&v55);
      v11 = v52;
      if (!a1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v34 = sub_222B02128();
      v35 = sub_222B028D8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *&v54[0] = v37;
        *v36 = 136315138;
        v38 = sub_222B023F8();
        v40 = sub_222A230FC(v38, v39, v54);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_222A1C000, v34, v35, "Skipping starting a Biome subscription for stream %s, no filters to process", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        v41 = v37;
        v11 = v52;
        MEMORY[0x223DC7E30](v41, -1, -1);
        MEMORY[0x223DC7E30](v36, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_0(&v55);
      if (!a1)
      {
        goto LABEL_20;
      }
    }
  }

  v11[6] = v51;
}

uint64_t sub_222A87774(void *a1, int a2, uint64_t a3, unsigned int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v23 = a3;
  v24 = a1;
  v22 = a2;
  v6 = sub_222B02098();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_222B020C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280CB79E0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_280CBC3E0);
  (*(v10 + 16))(v12, v13, v9);
  sub_222B02088();
  v14 = swift_slowAlloc();
  *v14 = 0;
  v15 = sub_222B020B8();
  v16 = sub_222B02A08();
  v17 = sub_222B02078();
  _os_signpost_emit_with_name_impl(&dword_222A1C000, v15, v16, v17, "processBiomeEventFilters", "", v14, 2u);
  sub_222A87A18(v23, v25, v24, v22 & 1, v26);
  v18 = sub_222B029F8();
  v19 = sub_222B02078();
  _os_signpost_emit_with_name_impl(&dword_222A1C000, v15, v18, v19, "processBiomeEventFilters", "", v14, 2u);

  MEMORY[0x223DC7E30](v14, -1, -1);
  (*(v28 + 8))(v8, v29);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_222A87A18(uint64_t a1, uint64_t a2, void *a3, char a4, void (*a5)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_280CB4C08 != -1)
    {
      swift_once();
    }

    v11 = sub_222B02148();
    __swift_project_value_buffer(v11, qword_280CB4C10);
    v12 = sub_222B02128();
    v13 = sub_222B028E8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136315138;
      v16 = sub_222B023F8();
      v18 = sub_222A230FC(v16, v17, &v27);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_222A1C000, v12, v13, "Subscriber for %s is dropping a Biome event: the scenario processor does not exist", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x223DC7E30](v15, -1, -1);
      MEMORY[0x223DC7E30](v14, -1, -1);
    }

    goto LABEL_13;
  }

  if (!*(Strong + 48))
  {
    if (qword_280CB4C08 != -1)
    {
      swift_once();
    }

    v19 = sub_222B02148();
    __swift_project_value_buffer(v19, qword_280CB4C10);
    v12 = sub_222B02128();
    v20 = sub_222B028E8();
    if (os_log_type_enabled(v12, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315138;
      v23 = sub_222B023F8();
      v25 = sub_222A230FC(v23, v24, &v27);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_222A1C000, v12, v20, "Subscriber for %s is dropping a Biome event: the scenario processor is not subscribed", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223DC7E30](v22, -1, -1);
      MEMORY[0x223DC7E30](v21, -1, -1);
    }

LABEL_13:

    v10 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v10 = sub_222A88214(a3, a4 & 1, a2);

LABEL_14:
  a5(v10);
}

uint64_t sub_222A87D2C()
{
  v1 = sub_222B021D8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222B02238();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 16);
  aBlock[4] = sub_222A8B818;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_94;
  v8 = _Block_copy(aBlock);

  sub_222B02208();
  v12 = MEMORY[0x277D84F90];
  sub_222A8B840(qword_280CBA240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
  sub_222B02BB8();
  MEMORY[0x223DC6BE0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_222A87FCC(uint64_t a1)
{
  if (qword_280CB4C08 != -1)
  {
    swift_once();
  }

  v2 = sub_222B02148();
  __swift_project_value_buffer(v2, qword_280CB4C10);
  v3 = sub_222B02128();
  v4 = sub_222B028D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_222A1C000, v3, v4, "BiomeSiriEventScenarioProcessor received an unsubscribe request", v5, 2u);
    MEMORY[0x223DC7E30](v5, -1, -1);
  }

  v6 = *(a1 + 48);
  if (v6)
  {

    v7 = sub_222B02128();
    v8 = sub_222B028D8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_222A1C000, v7, v8, "BiomeSiriEventScenarioProcessor is starting to unsubscribe from Biome streams", v9, 2u);
      MEMORY[0x223DC7E30](v9, -1, -1);
    }

    v10 = *(v6 + 16);
    if (v10)
    {
      v11 = v6 + 32;
      do
      {
        sub_222A42E40(v11, v20);
        v12 = v21;
        v13 = v22;
        __swift_project_boxed_opaque_existential_1(v20, v21);
        (*(v13 + 24))(v12, v13);
        __swift_destroy_boxed_opaque_existential_0(v20);
        v11 += 40;
        --v10;
      }

      while (v10);
    }

    v14 = *(a1 + 24);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + 32;
      do
      {
        sub_222A42E40(v16, v20);
        v17 = v21;
        v18 = v22;
        __swift_project_boxed_opaque_existential_1(v20, v21);
        (*(v18 + 8))(v17, v18);
        __swift_destroy_boxed_opaque_existential_0(v20);
        v16 += 40;
        --v15;
      }

      while (v15);
    }
  }

  *(a1 + 48) = 0;
}

uint64_t sub_222A88214(void *a1, char a2, uint64_t a3)
{
  LOBYTE(v4) = a3;
  if ((a2 & 1) == 0)
  {
    if (qword_280CB4C08 == -1)
    {
LABEL_7:
      v12 = sub_222B02148();
      __swift_project_value_buffer(v12, qword_280CB4C10);
      v13 = a1;
      v14 = sub_222B02128();
      v15 = sub_222B028D8();
      sub_222A8B80C(a1, 0);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v53[0] = v17;
        *v16 = 136315394;
        LOBYTE(v52[0]) = v4;
        v18 = sub_222B023F8();
        v20 = sub_222A230FC(v18, v19, v53);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        v52[0] = a1;
        v21 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D460, qword_222B07A50);
        v22 = sub_222B023D8();
        v24 = sub_222A230FC(v22, v23, v53);

        *(v16 + 14) = v24;
        _os_log_impl(&dword_222A1C000, v14, v15, "Subscriber for %s reached completion, error=%s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DC7E30](v17, -1, -1);
        MEMORY[0x223DC7E30](v16, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_28:
    swift_once();
    goto LABEL_7;
  }

  v6 = *(v3 + 32);
  v7 = MEMORY[0x277D84F90];
  if (!*(v6 + 16))
  {
    v10 = MEMORY[0x277D84F90];
    v11 = *(MEMORY[0x277D84F90] + 16);
    if (!v11)
    {
      goto LABEL_24;
    }

LABEL_11:
    v56 = v7;
    sub_222A23DB4(0, v11, 0);
    v25 = 0;
    v4 = v7;
    v26 = v10 + 32;
    v47 = v10;
    v48 = a1;
    v49 = v11;
    while (v25 < *(v10 + 16))
    {
      sub_222A42E40(v26, v53);
      v27 = v54;
      v28 = v55;
      __swift_project_boxed_opaque_existential_1(v53, v54);
      v29 = (*(v28 + 16))(a1, v27, v28);
      if (v29)
      {
        if (qword_280CB4C08 != -1)
        {
          swift_once();
        }

        v30 = sub_222B02148();
        __swift_project_value_buffer(v30, qword_280CB4C10);
        sub_222A42E40(v53, v52);
        sub_222A8B7EC(v29);
        v31 = sub_222B02128();
        v32 = sub_222B028D8();
        sub_222A8B7FC(v29);
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v51 = v34;
          *v33 = 136315394;
          sub_222A42E40(v52, v50);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D950, &unk_222B0A150);
          v35 = sub_222B023D8();
          v37 = v36;
          __swift_destroy_boxed_opaque_existential_0(v52);
          v38 = sub_222A230FC(v35, v37, &v51);

          *(v33 + 4) = v38;
          *(v33 + 12) = 2080;
          sub_222A8B7EC(v29);
          v39 = sub_222A866C0(v29);
          v41 = v40;
          sub_222A8B7FC(v29);
          v42 = sub_222A230FC(v39, v41, &v51);
          v10 = v47;

          *(v33 + 14) = v42;
          _os_log_impl(&dword_222A1C000, v31, v32, "%s detected the Biome scenario %s", v33, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DC7E30](v34, -1, -1);
          v43 = v33;
          a1 = v48;
          MEMORY[0x223DC7E30](v43, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(v52);
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v53);
      v56 = v4;
      v45 = *(v4 + 16);
      v44 = *(v4 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_222A23DB4((v44 > 1), v45 + 1, 1);
        v4 = v56;
      }

      ++v25;
      *(v4 + 16) = v45 + 1;
      *(v4 + 8 * v45 + 32) = v29;
      v26 += 40;
      if (v49 == v25)
      {

        return v4;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v8 = sub_222A27244(a3);
  if (v9)
  {
    v10 = *(*(v6 + 56) + 8 * v8);

    v11 = *(v10 + 16);
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  v10 = MEMORY[0x277D84F90];
  v11 = *(MEMORY[0x277D84F90] + 16);
  if (v11)
  {
    goto LABEL_11;
  }

LABEL_24:

  return MEMORY[0x277D84F90];
}

uint64_t sub_222A88728()
{

  return swift_deallocClassInstance();
}

unint64_t sub_222A887A4()
{
  result = sub_222A887CC();
  qword_27D01D8D0 = result;
  *algn_27D01D8D8 = v1;
  qword_27D01D8E0 = v2;
  return result;
}

unint64_t sub_222A887CC()
{
  sub_222A250BC(0, &qword_27D01D8C8, 0x277CD41A8);
  v0 = [swift_getObjCClassFromMetadata() typeName];
  if (v0)
  {
    v1 = v0;
    sub_222A250BC(0, &qword_27D01D8C0, 0x277CD4078);
    v2 = [swift_getObjCClassFromMetadata() typeName];
    if (v2)
    {
      v3 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01C968, &qword_222B04928);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_222B05260;
      v5 = sub_222A250BC(0, &unk_280CB83F0, 0x277CCACA8);
      *(v4 + 32) = v1;
      *(v4 + 88) = v5;
      *(v4 + 56) = v5;
      *(v4 + 64) = v3;
      v6 = objc_allocWithZone(MEMORY[0x277CBEB98]);
      v7 = sub_222B025D8();

      [v6 initWithArray_];
      goto LABEL_9;
    }
  }

  [objc_allocWithZone(MEMORY[0x277CBEB98]) init];
  if (qword_280CB4C08 != -1)
  {
    swift_once();
  }

  v8 = sub_222B02148();
  __swift_project_value_buffer(v8, qword_280CB4C10);
  v7 = sub_222B02128();
  v9 = sub_222B028E8();
  if (os_log_type_enabled(v7, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_222A1C000, v7, v9, "Cannot retrieve intent type names for INStartCallIntent / INSendMessageIntent", v10, 2u);
    MEMORY[0x223DC7E30](v10, -1, -1);
  }

LABEL_9:

  return 0xD000000000000014;
}

unint64_t sub_222A889EC()
{
  result = sub_222A88A14();
  qword_27D01D8E8 = result;
  unk_27D01D8F0 = v1;
  qword_27D01D8F8 = v2;
  return result;
}

unint64_t sub_222A88A14()
{
  v3 = MEMORY[0x277D84F90];
  sub_222B02D38();
  _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  sub_222B02D18();
  sub_222B02D48();
  sub_222B02D58();
  sub_222B02D28();
  _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  sub_222B02D18();
  sub_222B02D48();
  sub_222B02D58();
  sub_222B02D28();
  _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  sub_222B02D18();
  sub_222B02D48();
  sub_222B02D58();
  sub_222B02D28();
  sub_222A22648(v3);

  v0 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v1 = sub_222B025D8();

  [v0 initWithArray_];

  return 0xD000000000000013;
}

void sub_222A88CB0()
{
  sub_222A2265C(&unk_2835F1990);
  v0 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v1 = sub_222B025D8();

  v2 = [v0 initWithArray_];

  qword_27D01D900 = 0xD000000000000012;
  *algn_27D01D908 = 0x8000000222B136E0;
  qword_27D01D910 = v2;
}

void sub_222A88D58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_280CB4C08 != -1)
  {
    swift_once();
  }

  v6 = sub_222B02148();
  __swift_project_value_buffer(v6, qword_280CB4C10);
  v7 = sub_222B02128();
  v8 = sub_222B028D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_222A1C000, v7, v8, "BiomeSiriExecutionStreamSubscriber subscribing", v9, 2u);
    MEMORY[0x223DC7E30](v9, -1, -1);
  }

  v10 = [objc_opt_self() siriExecutionStream];
  v11 = [v10 publisher];

  if (qword_27D01C4E8 != -1)
  {
    swift_once();
  }

  v12 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v13 = [v11 filterWithKeyPath:v12 comparison:3 value:qword_27D01D8E0];

  if (qword_27D01C4F0 != -1)
  {
    swift_once();
  }

  v14 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v15 = [v13 filterWithKeyPath:v14 comparison:3 value:qword_27D01D8F8];

  if (qword_27D01C4F8 != -1)
  {
    swift_once();
  }

  v16 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v17 = [v15 filterWithKeyPath:v16 comparison:3 value:qword_27D01D910];

  v18 = [v17 subscribeOn_];
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v28 = sub_222A8B9C8;
  v29 = v19;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_222A30CA0;
  v27 = &block_descriptor_83;
  v20 = _Block_copy(&v24);

  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v28 = sub_222A8B7C4;
  v29 = v21;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_222A89160;
  v27 = &block_descriptor_89;
  v22 = _Block_copy(&v24);

  v23 = [v18 sinkWithCompletion:v20 receiveInput:v22];
  _Block_release(v22);
  _Block_release(v20);
}

uint64_t sub_222A89160(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_222A891C0()
{
  v1 = v0;
  if (qword_280CB4C08 != -1)
  {
    swift_once();
  }

  v2 = sub_222B02148();
  __swift_project_value_buffer(v2, qword_280CB4C10);
  v3 = sub_222B02128();
  v4 = sub_222B028D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_222A1C000, v3, v4, "BiomeSiriExecutionStreamSubscriber unsubscribing", v5, 2u);
    MEMORY[0x223DC7E30](v5, -1, -1);
  }

  v6 = [objc_opt_self() siriExecutionStream];
  v7 = [v6 publisher];

  v8 = [v7 subscribeOn_];
  v16 = nullsub_1;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_222A30CA0;
  v15 = &block_descriptor_74;
  v9 = _Block_copy(&v12);
  v16 = nullsub_1;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_222A89160;
  v15 = &block_descriptor_77;
  v10 = _Block_copy(&v12);
  v11 = [v8 sinkWithCompletion:v9 receiveInput:v10];
  _Block_release(v10);
  _Block_release(v9);

  [v11 cancel];
}

void sub_222A89480(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_280CB4C08 != -1)
  {
    swift_once();
  }

  v6 = sub_222B02148();
  __swift_project_value_buffer(v6, qword_280CB4C10);
  v7 = sub_222B02128();
  v8 = sub_222B028D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_222A1C000, v7, v8, "BiomeSiriUIStreamSubscriber subscribing", v9, 2u);
    MEMORY[0x223DC7E30](v9, -1, -1);
  }

  v10 = [objc_opt_self() siriUIStream];
  v11 = [v10 publisher];

  v12 = [v11 subscribeOn_];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v22 = sub_222A8B738;
  v23 = v13;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_222A30CA0;
  v21 = &block_descriptor_65;
  v14 = _Block_copy(&v18);

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v22 = sub_222A8B73C;
  v23 = v15;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_222A89160;
  v21 = &block_descriptor_71;
  v16 = _Block_copy(&v18);

  v17 = [v12 sinkWithCompletion:v14 receiveInput:v16];
  _Block_release(v16);
  _Block_release(v14);
}

void sub_222A89734()
{
  v1 = v0;
  if (qword_280CB4C08 != -1)
  {
    swift_once();
  }

  v2 = sub_222B02148();
  __swift_project_value_buffer(v2, qword_280CB4C10);
  v3 = sub_222B02128();
  v4 = sub_222B028D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_222A1C000, v3, v4, "BiomeSiriUIStreamSubscriber unsubscribing", v5, 2u);
    MEMORY[0x223DC7E30](v5, -1, -1);
  }

  v6 = [objc_opt_self() siriUIStream];
  v7 = [v6 publisher];

  v8 = [v7 subscribeOn_];
  v16 = nullsub_1;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_222A30CA0;
  v15 = &block_descriptor_56;
  v9 = _Block_copy(&v12);
  v16 = nullsub_1;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_222A89160;
  v15 = &block_descriptor_59;
  v10 = _Block_copy(&v12);
  v11 = [v8 sinkWithCompletion:v9 receiveInput:v10];
  _Block_release(v10);
  _Block_release(v9);

  [v11 cancel];
}

uint64_t sub_222A899F4()
{
  sub_222A250BC(0, &unk_280CB83F0, 0x277CCACA8);
  result = sub_222B02AF8();
  qword_27D01D918 = result;
  return result;
}

void sub_222A89A48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_280CB4C08 != -1)
  {
    swift_once();
  }

  v6 = sub_222B02148();
  __swift_project_value_buffer(v6, qword_280CB4C10);
  v7 = sub_222B02128();
  v8 = sub_222B028D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_222A1C000, v7, v8, "BiomeIntentStreamSubscriber subscribing", v9, 2u);
    MEMORY[0x223DC7E30](v9, -1, -1);
  }

  v10 = [objc_opt_self() intent];
  v11 = [v10 publisher];

  v12 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  if (qword_27D01C500 != -1)
  {
    swift_once();
  }

  v13 = [v11 filterWithKeyPath:v12 comparison:0 value:qword_27D01D918];

  v14 = [v13 subscribeOn_];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v24 = sub_222A8B9C8;
  v25 = v15;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_222A30CA0;
  v23 = &block_descriptor_47;
  v16 = _Block_copy(&v20);

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v24 = sub_222A8B710;
  v25 = v17;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_222A89160;
  v23 = &block_descriptor_53;
  v18 = _Block_copy(&v20);

  v19 = [v14 sinkWithCompletion:v16 receiveInput:v18];
  _Block_release(v18);
  _Block_release(v16);
}

void sub_222A89D80(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, char a4, const char *a5)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    type metadata accessor for AnyBiomeEvent();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = a4;
    swift_unknownObjectRetain();
    a2(v10, 1);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_280CB4C08 != -1)
    {
      swift_once();
    }

    v11 = sub_222B02148();
    __swift_project_value_buffer(v11, qword_280CB4C10);
    oslog = sub_222B02128();
    v12 = sub_222B028D8();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_222A1C000, oslog, v12, a5, v13, 2u);
      MEMORY[0x223DC7E30](v13, -1, -1);
    }
  }
}

void sub_222A89F20()
{
  v1 = v0;
  if (qword_280CB4C08 != -1)
  {
    swift_once();
  }

  v2 = sub_222B02148();
  __swift_project_value_buffer(v2, qword_280CB4C10);
  v3 = sub_222B02128();
  v4 = sub_222B028D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_222A1C000, v3, v4, "BiomeIntentStreamSubscriber unsubscribing", v5, 2u);
    MEMORY[0x223DC7E30](v5, -1, -1);
  }

  v6 = [objc_opt_self() intent];
  v7 = [v6 publisher];

  v8 = [v7 subscribeOn_];
  v16 = nullsub_1;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_222A30CA0;
  v15 = &block_descriptor_8;
  v9 = _Block_copy(&v12);
  v16 = nullsub_1;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_222A89160;
  v15 = &block_descriptor_44;
  v10 = _Block_copy(&v12);
  v11 = [v8 sinkWithCompletion:v9 receiveInput:v10];
  _Block_release(v10);
  _Block_release(v9);

  [v11 cancel];
}

id sub_222A8A1E0(uint64_t a1)
{
  v3 = sub_222B02098();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D940, &unk_222B0A140);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v77 - v11;
  if (*(a1 + 24))
  {
    if (qword_27D01C510 != -1)
    {
      swift_once();
    }

    v13 = sub_222B02148();
    __swift_project_value_buffer(v13, qword_27D01D920);
    v14 = sub_222B02128();
    v15 = sub_222B028D8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222A1C000, v14, v15, "BiomeFilter: received non-intent Biome event", v16, 2u);
      MEMORY[0x223DC7E30](v16, -1, -1);
    }

    return 0;
  }

  v17 = *(a1 + 16);
  sub_222A8B0A8(v17, 0);
  v18 = [v17 eventBody];
  if (!v18)
  {
    if (qword_27D01C510 != -1)
    {
      swift_once();
    }

    v24 = sub_222B02148();
    __swift_project_value_buffer(v24, qword_27D01D920);
    v25 = sub_222B02128();
    v26 = sub_222B028E8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_222A1C000, v25, v26, "BiomeFilter: could not unwrap event body", v27, 2u);
      MEMORY[0x223DC7E30](v27, -1, -1);
    }

    goto LABEL_31;
  }

  v81 = v18;
  v19 = [v18 intentClass];
  if (!v19)
  {
    goto LABEL_25;
  }

  v80 = v17;
  v20 = v19;
  v21 = sub_222B02388();
  v23 = v22;

  if (v21 == 0xD000000000000011 && 0x8000000222B13620 == v23)
  {

    v17 = v80;
    goto LABEL_17;
  }

  v28 = sub_222B02F78();

  v17 = v80;
  if ((v28 & 1) == 0)
  {
LABEL_25:
    if (qword_27D01C510 != -1)
    {
      swift_once();
    }

    v41 = sub_222B02148();
    __swift_project_value_buffer(v41, qword_27D01D920);
    v25 = sub_222B02128();
    v42 = sub_222B028D8();
    if (!os_log_type_enabled(v25, v42))
    {
      goto LABEL_30;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "BiomeFilter received Biome intent event that's not INStartCallIntent, skipping";
    goto LABEL_29;
  }

LABEL_17:
  v79 = v1;
  if (qword_27D01C510 != -1)
  {
    swift_once();
  }

  v29 = sub_222B02148();
  __swift_project_value_buffer(v29, qword_27D01D920);
  v30 = sub_222B02128();
  v31 = sub_222B028D8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_222A1C000, v30, v31, "BiomeFilter received Biome intent event INStartCallIntent", v32, 2u);
    MEMORY[0x223DC7E30](v32, -1, -1);
  }

  if ([v81 donatedBySiri])
  {
    v33 = sub_222B02128();
    v34 = sub_222B028D8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_222A1C000, v33, v34, "BiomeFilter: event donated by Siri", v35, 2u);
      MEMORY[0x223DC7E30](v35, -1, -1);
    }

    v36 = v81;
    [v81 absoluteTimestamp];
    v38 = v37;

    sub_222A86648(v17, 0);
    result = 0;
    v40 = v79;
    *(v79 + 32) = v38;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 1;
    return result;
  }

  if ([v81 interactionDirection] != 2)
  {
    v25 = sub_222B02128();
    v42 = sub_222B028D8();
    if (!os_log_type_enabled(v25, v42))
    {
      goto LABEL_30;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "BiomeFilter: direction incoming, skipping";
    goto LABEL_29;
  }

  if (*(v79 + 40))
  {
    v25 = sub_222B02128();
    v42 = sub_222B028D8();
    if (!os_log_type_enabled(v25, v42))
    {
      goto LABEL_30;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "BiomeFilter: no lastSiriCallTimestamp, skipping";
LABEL_29:
    _os_log_impl(&dword_222A1C000, v25, v42, v44, v43, 2u);
    MEMORY[0x223DC7E30](v43, -1, -1);
LABEL_30:

LABEL_31:
    sub_222A86648(v17, 0);

    return 0;
  }

  v45 = *(v79 + 32);
  v46 = [v81 interaction];
  v47 = sub_222B01798();
  v49 = v48;

  v50 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_222A55AB8(v47, v49);
  v78 = v49;
  v70 = sub_222A8B560(v47, v49);
  sub_222A26530(v47, v78);
  sub_222A250BC(0, &qword_27D01D948, 0x277CD3D58);
  v77 = v70;
  sub_222B02388();
  v71 = sub_222B02AB8();

  if (v71)
  {
    v72 = v77;
    [v77 finishDecoding];

    sub_222A26530(v47, v78);
    v73 = [v71 dateInterval];

    v74 = v79;
    if (v73)
    {
      sub_222B01568();

      v75 = sub_222B015A8();
      (*(*(v75 - 8) + 56))(v10, 0, 1, v75);
    }

    else
    {
      v75 = sub_222B015A8();
      (*(*(v75 - 8) + 56))(v10, 1, 1, v75);
    }

    sub_222A8B620(v10, v12);
    sub_222B015A8();
    if ((*(*(v75 - 8) + 48))(v12, 1, v75))
    {
      sub_222A8B690(v12);
      v51 = 0.0;
    }

    else
    {
      sub_222B01598();
      v74 = v79;
      v51 = v76;
      sub_222A8B690(v12);
    }
  }

  else
  {

    sub_222A26530(v47, v78);
    v51 = 0.0;
    v74 = v79;
  }

  [v81 absoluteTimestamp];
  if (v52 - v45 <= 5.0 && v51 == 0.0)
  {
    if (*(v74 + 56) == 1)
    {
      v53 = sub_222B02128();
      v54 = sub_222B028D8();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_222A1C000, v53, v54, "BiomeFilter: event user hangup", v55, 2u);
        MEMORY[0x223DC7E30](v55, -1, -1);
      }

      v56 = v81;
      [v81 absoluteTimestamp];
      v58 = v57;

      sub_222A86648(v17, 0);
      result = 0;
      v59 = v79;
      *(v79 + 48) = v58;
      *(v59 + 56) = 0;
      return result;
    }
  }

  else if (*(v74 + 56))
  {
    v25 = sub_222B02128();
    v42 = sub_222B028D8();
    if (!os_log_type_enabled(v25, v42))
    {
      goto LABEL_30;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "BiomeFilter: no lastUserHangupTimeStamp, skipping";
    goto LABEL_29;
  }

  v60 = *(v74 + 48);
  [v81 absoluteTimestamp];
  v62 = v51 > 0.0 && v61 - v60 <= 60.0;
  v63 = sub_222B02128();
  v64 = sub_222B028D8();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 67109120;
    *(v65 + 4) = v62;
    _os_log_impl(&dword_222A1C000, v63, v64, "BiomeFilter decided isUserCallAfterHangupSiriCall:%{BOOL}d", v65, 8u);
    MEMORY[0x223DC7E30](v65, -1, -1);
  }

  v66 = v79;
  *(v79 + 32) = 0;
  *(v66 + 40) = 1;
  *(v66 + 48) = 0;
  *(v66 + 56) = 1;
  if (!v62)
  {

    sub_222A86648(v17, 0);
    return 0;
  }

  v67 = qword_280CB79E8;
  v68 = v81;
  if (v67 != -1)
  {
    swift_once();
  }

  v69 = sub_222B020C8();
  __swift_project_value_buffer(v69, qword_280CBC3F8);
  sub_222B02088();
  sub_222A6F5D4("events.filters.UserCallAfterHangupSiriCall", 42, 2);
  sub_222A86648(v80, 0);

  (*(v4 + 8))(v6, v3);
  return v81;
}