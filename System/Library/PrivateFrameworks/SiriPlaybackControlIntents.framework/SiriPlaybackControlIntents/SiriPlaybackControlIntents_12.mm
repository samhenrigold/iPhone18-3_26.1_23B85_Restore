void sub_2689D8A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v9 = sub_268B36ED4();
  sub_2689D3650();
  sub_2689D6454(a1, v10, v11, v12, v13, v14, v15, v16, v21, v22, v24, v25, v26, v27, v28, v29, v30, v31, vars0, vars8);
  v18 = v17;
  v19 = objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
  v20 = v9;
  v23 = ResumeMediaIntentResponse.init(code:userActivity:)(v18, v9);
  a7();
}

id ResumeMediaIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResumeMediaIntentHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2689D8BEC(void *a1)
{
  v1 = [a1 settingAttributes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for ControlsSettingAttribute();
  v3 = sub_268B37CF4();

  return v3;
}

uint64_t sub_2689D8C4C(void *a1)
{
  v1 = [a1 targetBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268B37BF4();

  return v3;
}

id sub_2689D8CB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v26[3] = type metadata accessor for AnalyticsServiceImpl();
  v26[4] = &off_2879539D0;
  v26[0] = a4;
  sub_26890C900(a3, v25);
  sub_26890C900(v26, v23);
  sub_26890C900(a5, v22);
  sub_268B376A4();
  v10 = sub_268B37694();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v11);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_26892D53C(a2, v25, *v13, v22, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  sub_26890C900(a3, v25);
  sub_26890C900(v26, v23);
  sub_26890C900(a5, v22);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v16);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_2689D8F3C(a1, v15, v25, *v18, v22);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  return v20;
}

uint64_t sub_2689D8F08()
{

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

id sub_2689D8F3C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v28[3] = sub_268B36C54();
  v28[4] = MEMORY[0x277D5F680];
  v28[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v27[3] = v10;
  v27[4] = &off_2879539D0;
  v27[0] = a4;
  v11 = type metadata accessor for ResumeMediaIntentHandler(0);
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v26[3] = v10;
  v26[4] = &off_2879539D0;
  v26[0] = v17;
  if (qword_2802A5028 != -1)
  {
    swift_once();
  }

  v18 = qword_2802CDB28;
  sub_268B37A14();
  sub_26890C900(v28, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController]);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceSelector] = a2;
  sub_26890C900(v26, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService]);
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState]);
  sub_26890C900(a3, v25);
  sub_26890C900(a5, v24);
  type metadata accessor for AceServiceHelper();
  v19 = swift_allocObject();
  sub_2688E6514(v25, v19 + 16);
  sub_2688E6514(v24, v19 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_aceServiceHelper] = v19;
  sub_26890C900(a5, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_aceService]);
  v23.receiver = v12;
  v23.super_class = v11;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return v20;
}

void sub_2689D91C8()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v30[3] = v0;
  v30[4] = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(v1 - 8) + 32))(boxed_opaque_existential_1, v11, v1);
  v14 = type metadata accessor for AnalyticsServiceImpl();
  v29[3] = v14;
  v29[4] = &off_2879539D0;
  v29[0] = v5;
  v15 = type metadata accessor for ResumeMediaIntentHandler(0);
  v16 = objc_allocWithZone(v15);
  __swift_mutable_project_boxed_opaque_existential_1(v29, v14);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = (v19 - v18);
  (*(v21 + 16))(v19 - v18);
  v22 = *v20;
  v28[3] = v14;
  v28[4] = &off_2879539D0;
  v28[0] = v22;
  if (qword_2802A5028 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_2802A5028);
  }

  v23 = qword_2802CDB28;
  sub_268B37A14();
  sub_26890C900(v30, &v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController]);
  *&v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceSelector] = v9;
  sub_26890C900(v28, &v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService]);
  sub_26890C900(v7, &v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState]);
  sub_26890C900(v7, v27);
  sub_26890C900(v3, v26);
  type metadata accessor for AceServiceHelper();
  v24 = swift_allocObject();
  sub_2688E6514(v27, v24 + 16);
  sub_2688E6514(v26, v24 + 56);
  *&v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_aceServiceHelper] = v24;
  sub_26890C900(v3, &v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_aceService]);
  v25.receiver = v16;
  v25.super_class = v15;
  objc_msgSendSuper2(&v25, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689D9450()
{
  sub_268B37A24();
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 24, v2 | 7);
}

uint64_t type metadata accessor for ResumeMediaIntentHandler(uint64_t a1)
{
  result = qword_2802A6D48;
  if (!qword_2802A6D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2689D9538(uint64_t a1)
{
  result = sub_268B37A24();
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

uint64_t sub_2689D9754()
{
  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2689D9790(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2688C01F0;

  return sub_2689D3C70(a1, v5, v4);
}

uint64_t sub_2689D9844()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D68, &unk_268B42850);
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2689D98D0(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D68, &unk_268B42850);

  return sub_2689D45A4(a1);
}

uint64_t sub_2689D994C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2689D9984()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2689D99EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_8Tm()
{

  OUTLINED_FUNCTION_24_9();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_29_6(uint64_t a1)
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_32_5@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 24);

  return __swift_project_boxed_opaque_existential_1((v1 + a1), v3);
}

uint64_t OUTLINED_FUNCTION_34_5()
{

  return sub_268B36ED4();
}

uint64_t OUTLINED_FUNCTION_47_3()
{
}

unint64_t OUTLINED_FUNCTION_48_5(uint64_t a1, unint64_t a2)
{

  return sub_26892CDB8(a1, a2, (v2 - 88));
}

void sub_2689D9C28()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D90, qword_268B3EDB0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_8();
  sub_268B35034();
  if (v3)
  {

    sub_2689DD330();
    v13 = v12;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v8, qword_2802CDA10);
    v14 = OUTLINED_FUNCTION_23_10();
    v15(v14);
    swift_unknownObjectRetain();
    sub_268B37A34();
    v16 = sub_268B37F04();
    swift_unknownObjectRelease();
    if (OUTLINED_FUNCTION_33_8())
    {
      v30 = v6;
      v17 = OUTLINED_FUNCTION_172_0();
      v18 = OUTLINED_FUNCTION_173_0();
      v32 = v18;
      *v17 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A5750, &unk_268B3BDA0);
      v19 = sub_268B37C24();
      v16 = v20;
      v21 = sub_26892CDB8(v19, v20, &v32);

      *(v17 + 4) = v21;
      OUTLINED_FUNCTION_21_9(&dword_2688BB000, v22, v23, "Including SystemOffered in context update: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      OUTLINED_FUNCTION_12();
      v6 = v30;
      OUTLINED_FUNCTION_12();
    }

    else
    {
    }

    (*(v10 + 8))(v0, v8);
    sub_2689DD988();
    if (__swift_getEnumTagSinglePayload(v1, 1, v6) == 1)
    {

      swift_unknownObjectRelease();
      sub_2688C058C(v1, &qword_2802A6D90, qword_268B3EDB0);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_16_16();
      v25(v24);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62C0, &unk_268B3BD90);
      v27 = OUTLINED_FUNCTION_22_8(v26);
      v28 = OUTLINED_FUNCTION_15_13(v27, xmmword_268B3BBC0);
      v29(v28);
      sub_268B34FB4();
      swift_unknownObjectRelease();

      (*(v16 + 8))(v13, v6);
    }
  }

  sub_268B34FF4();
  sub_268B34FD4();

  sub_268B34FE4();

  sub_268B35014();

  sub_268B35004();
  sub_268B34FC4();
  OUTLINED_FUNCTION_23();
}

void sub_2689D9FD4()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D90, qword_268B3EDB0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_8();
  sub_268B35034();
  if (v3)
  {

    sub_2689DD330();
    v13 = v12;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v8, qword_2802CDA10);
    v14 = OUTLINED_FUNCTION_23_10();
    v15(v14);
    swift_unknownObjectRetain();
    sub_268B37A34();
    v16 = sub_268B37F04();
    swift_unknownObjectRelease();
    if (OUTLINED_FUNCTION_33_8())
    {
      v30 = v6;
      v17 = OUTLINED_FUNCTION_172_0();
      v18 = OUTLINED_FUNCTION_173_0();
      v32 = v18;
      *v17 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A5750, &unk_268B3BDA0);
      v19 = sub_268B37C24();
      v16 = v20;
      v21 = sub_26892CDB8(v19, v20, &v32);

      *(v17 + 4) = v21;
      OUTLINED_FUNCTION_21_9(&dword_2688BB000, v22, v23, "Including SystemOffered in context update: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      OUTLINED_FUNCTION_12();
      v6 = v30;
      OUTLINED_FUNCTION_12();
    }

    else
    {
    }

    (*(v10 + 8))(v0, v8);
    sub_2689DD988();
    if (__swift_getEnumTagSinglePayload(v1, 1, v6) == 1)
    {

      swift_unknownObjectRelease();
      sub_2688C058C(v1, &qword_2802A6D90, qword_268B3EDB0);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_16_16();
      v25(v24);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62C0, &unk_268B3BD90);
      v27 = OUTLINED_FUNCTION_22_8(v26);
      v28 = OUTLINED_FUNCTION_15_13(v27, xmmword_268B3BBC0);
      v29(v28);
      sub_268B34FB4();
      swift_unknownObjectRelease();

      (*(v16 + 8))(v13, v6);
    }
  }

  sub_268B34FF4();
  sub_268B34FD4();

  sub_268B34FE4();

  sub_268B35014();

  sub_268B35004();
  sub_268B34FC4();
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689DA380(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_268B37A54();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_2802CDA10);
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = v6;
    v19 = a5;
    v20 = a2;
    v21 = a1;
    v22 = a4;
    v23 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "ConfirmIntentStrategy.makePromptForConfirmation() called", v18, 2u);
    v24 = v23;
    a4 = v22;
    a1 = v21;
    a2 = v20;
    a5 = v19;
    v6 = v29;
    MEMORY[0x26D6266E0](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v25 = swift_allocObject();
  v25[2] = a4;
  v25[3] = a5;
  v25[4] = a2;
  v25[5] = v6;
  v25[6] = a1;

  v26 = a2;

  sub_2689DCA54();
}

void sub_2689DA704()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v24 = v5;
  v6 = v0;
  v25 = v8;
  v26 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v17 = __swift_project_value_buffer(v13, qword_2802CDA10);
  (*(v15 + 16))(v0, v17, v13);
  v18 = sub_268B37A34();
  v19 = sub_268B37ED4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_14();
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "ConfirmIntentStrategy.makePromptForConfirmation() called", v20, 2u);
    v6 = v0;
    OUTLINED_FUNCTION_12();
  }

  (*(v15 + 8))(v0, v13);
  v21 = swift_allocObject();
  v21[2] = v24;
  v21[3] = v25;
  v21[4] = v26;
  v21[5] = v6;
  v21[6] = v12;

  v22 = v26;

  v2(v23, v22, v10, v4, v21);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689DA904(char *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v70 = a6;
  v74 = a4;
  v75 = a5;
  v76 = a2;
  v77 = a3;
  v72 = a1;
  v6 = sub_268B37A54();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v67 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v64 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - v15;
  v17 = sub_268B34E24();
  v73 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = (&v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v20);
  v22 = &v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v24 = MEMORY[0x28223BE20](v23);
  v71 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v63 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v63 - v29;
  sub_2688C053C(v72, v22, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v22, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v31 = v69;
    v32 = __swift_project_value_buffer(v69, qword_2802CDA10);
    v34 = v67;
    v33 = v68;
    v68[2](v67, v32, v31);
    v35 = sub_268B37A34();
    v36 = sub_268B37EE4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2688BB000, v35, v36, "DefaultConfirmIntentStrategy.makeDialogForConfirmation Unable to generate dialog.", v37, 2u);
      MEMORY[0x26D6266E0](v37, -1, -1);
    }

    (*(v33 + 8))(v34, v31);
    sub_2688C2ECC();
    v38 = swift_allocError();
    *v39 = -75;
    v78[0] = v38;
    v79 = 1;
    v76(v78);
    return sub_2688C058C(v78, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_268954254(v22, v30, &unk_2802A56E0, &unk_268B3CDF0);
    sub_268947F08();
    v63 = v41;
    v67 = v42;
    v43 = __swift_project_boxed_opaque_existential_1(v75 + 8, v75[11]);
    v44 = *MEMORY[0x277D5BB48];
    v45 = *(v73 + 104);
    v68 = v19;
    v69 = v17;
    v45(v19, v44, v17);
    v72 = v30;
    sub_2688C053C(v30, v28, &unk_2802A56E0, &unk_268B3CDF0);

    v46 = sub_268B350F4();
    v47 = *(v46 - 8);
    (*(v47 + 32))(v16, v28, v46);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v46);
    v48 = sub_268B34B94();
    v49 = v65;
    __swift_storeEnumTagSinglePayload(v65, 1, 1, v48);
    v50 = *v43;
    v51 = v64;
    sub_2688C053C(v16, v64, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v51, 1, v46) == 1)
    {
      sub_2688C058C(v51, &unk_2802A57B0, &unk_268B3CE00);
      v52 = 0;
      v53 = 0;
    }

    else
    {
      v52 = sub_268B350B4();
      v53 = v54;
      (*(v47 + 8))(v51, v46);
    }

    v55 = v68;
    sub_2688E3A78(v70, v68, v74, v52, v53, v63, v67, v49, v50);

    sub_2688C058C(v49, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v16, &unk_2802A57B0, &unk_268B3CE00);
    (*(v73 + 8))(v55, v69);
    v56 = v75[16];
    v57 = v75[17];
    v75 = __swift_project_boxed_opaque_existential_1(v75 + 13, v56);
    v59 = v71;
    v58 = v72;
    sub_2688C053C(v72, v71, &unk_2802A56E0, &unk_268B3CDF0);
    v60 = *(v59 + *(v23 + 48));
    v61 = v66;
    sub_268B35034();

    sub_268B34FF4();
    sub_268B34FD4();

    sub_268B34FE4();

    sub_268B35014();

    sub_268B35004();
    sub_268B34FC4();
    v62 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v62);
    (*(v57 + 16))(v59, v60, v61, v76, v77, v56, v57);

    sub_2688C058C(v61, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v58, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v47 + 8))(v59, v46);
  }
}

void sub_2689DB180()
{
  OUTLINED_FUNCTION_26();
  v91 = v1;
  v82 = v2;
  v89 = v3;
  v94 = v4;
  v95 = v5;
  v96 = v6;
  v97 = v7;
  v92 = v8;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v87 = v10;
  v88 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v86 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v14);
  v85 = &v81 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v17);
  v84 = &v81 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v20 = OUTLINED_FUNCTION_22(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v83 = v21;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  v24 = &v81 - v23;
  v25 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v93 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v28);
  v30 = &v81 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  v90 = v33;
  OUTLINED_FUNCTION_8();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v81 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v81 - v38;
  sub_2688C053C(v92, v30, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v30, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v40 = v88;
    __swift_project_value_buffer(v88, qword_2802CDA10);
    v42 = v86;
    v41 = v87;
    OUTLINED_FUNCTION_14_11();
    v43(v42);
    v44 = sub_268B37A34();
    v45 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v45))
    {
      v46 = OUTLINED_FUNCTION_14();
      *v46 = 0;
      _os_log_impl(&dword_2688BB000, v44, v42, "DefaultConfirmIntentStrategy.makeDialogForConfirmation Unable to generate dialog.", v46, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v41 + 8))(v42, v40);
    sub_2688C2ECC();
    v47 = swift_allocError();
    *v48 = -75;
    v98[0] = v47;
    v99 = 1;
    v96(v98);
    sub_2688C058C(v98, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_268954254(v30, v39, &unk_2802A56E0, &unk_268B3CDF0);
    sub_268947F08();
    v82 = v49;
    v51 = v50;
    v52 = __swift_project_boxed_opaque_existential_1(v95 + 8, v95[11]);
    v53 = *MEMORY[0x277D5BB48];
    v54 = *(v93 + 104);
    v87 = v0;
    v88 = v25;
    v54(v0, v53, v25);
    v92 = v39;
    sub_2688C053C(v39, v37, &unk_2802A56E0, &unk_268B3CDF0);
    v86 = v31;

    v55 = sub_268B350F4();
    v56 = *(v55 - 8);
    (*(v56 + 32))(v24, v37, v55);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v55);
    sub_268B34B94();
    v60 = v84;
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
    v65 = *v52;
    v66 = v83;
    sub_2688C053C(v24, v83, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v66, 1, v55) == 1)
    {
      sub_2688C058C(v66, &unk_2802A57B0, &unk_268B3CE00);
      v67 = 0;
      v68 = 0;
    }

    else
    {
      v67 = sub_268B350B4();
      v68 = v69;
      (*(v56 + 8))(v66, v55);
    }

    v70 = v87;
    v91(v89, v87, v94, v67, v68, v82, v51, v60, v65);

    sub_2688C058C(v60, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v24, &unk_2802A57B0, &unk_268B3CE00);
    (*(v93 + 8))(v70, v88);
    v71 = v95[16];
    v72 = v95[17];
    v95 = __swift_project_boxed_opaque_existential_1(v95 + 13, v71);
    v73 = v92;
    v74 = v90;
    sub_2688C053C(v92, v90, &unk_2802A56E0, &unk_268B3CDF0);
    v75 = v85;
    v76 = *(v74 + *(v86 + 48));
    sub_268B35034();

    sub_268B34FF4();
    sub_268B34FD4();

    sub_268B34FE4();

    sub_268B35014();

    sub_268B35004();
    sub_268B34FC4();
    sub_268B35044();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
    (*(v72 + 16))(v74, v76, v75, v96, v97, v71, v72);

    sub_2688C058C(v75, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v73, &unk_2802A56E0, &unk_268B3CDF0);
    (*(v56 + 8))(v74, v55);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689DB95C(char *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v70 = a6;
  v74 = a4;
  v75 = a5;
  v76 = a2;
  v77 = a3;
  v72 = a1;
  v6 = sub_268B37A54();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v67 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v64 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - v15;
  v17 = sub_268B34E24();
  v73 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = (&v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v20);
  v22 = &v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v24 = MEMORY[0x28223BE20](v23);
  v71 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v63 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v63 - v29;
  sub_2688C053C(v72, v22, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v22, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v31 = v69;
    v32 = __swift_project_value_buffer(v69, qword_2802CDA10);
    v34 = v67;
    v33 = v68;
    v68[2](v67, v32, v31);
    v35 = sub_268B37A34();
    v36 = sub_268B37EE4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2688BB000, v35, v36, "DefaultConfirmIntentStrategy.makeDialogForConfirmation Unable to generate dialog.", v37, 2u);
      MEMORY[0x26D6266E0](v37, -1, -1);
    }

    (*(v33 + 8))(v34, v31);
    sub_2688C2ECC();
    v38 = swift_allocError();
    *v39 = -75;
    v78[0] = v38;
    v79 = 1;
    v76(v78);
    return sub_2688C058C(v78, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_268954254(v22, v30, &unk_2802A56E0, &unk_268B3CDF0);
    sub_268947F08();
    v63 = v41;
    v67 = v42;
    v43 = __swift_project_boxed_opaque_existential_1(v75 + 8, v75[11]);
    v44 = *MEMORY[0x277D5BB48];
    v45 = *(v73 + 104);
    v68 = v19;
    v69 = v17;
    v45(v19, v44, v17);
    v72 = v30;
    sub_2688C053C(v30, v28, &unk_2802A56E0, &unk_268B3CDF0);

    v46 = sub_268B350F4();
    v47 = *(v46 - 8);
    (*(v47 + 32))(v16, v28, v46);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v46);
    v48 = sub_268B34B94();
    v49 = v65;
    __swift_storeEnumTagSinglePayload(v65, 1, 1, v48);
    v50 = *v43;
    v51 = v64;
    sub_2688C053C(v16, v64, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v51, 1, v46) == 1)
    {
      sub_2688C058C(v51, &unk_2802A57B0, &unk_268B3CE00);
      v52 = 0;
      v53 = 0;
    }

    else
    {
      v52 = sub_268B350B4();
      v53 = v54;
      (*(v47 + 8))(v51, v46);
    }

    v55 = v68;
    sub_2688E2F3C(v70, v68, v74, v52, v53, v63, v67, v49, v50);

    sub_2688C058C(v49, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v16, &unk_2802A57B0, &unk_268B3CE00);
    (*(v73 + 8))(v55, v69);
    v56 = v75[16];
    v57 = v75[17];
    v75 = __swift_project_boxed_opaque_existential_1(v75 + 13, v56);
    v59 = v71;
    v58 = v72;
    sub_2688C053C(v72, v71, &unk_2802A56E0, &unk_268B3CDF0);
    v60 = *(v59 + *(v23 + 48));
    v61 = v66;
    sub_268B35034();

    sub_268B34FF4();
    sub_268B34FD4();

    sub_268B34FE4();

    sub_268B35014();

    sub_268B35004();
    sub_268B34FC4();
    v62 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v62);
    (*(v57 + 16))(v59, v60, v61, v76, v77, v56, v57);

    sub_2688C058C(v61, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v58, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v47 + 8))(v59, v46);
  }
}

uint64_t sub_2689DC1D8(char *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v70 = a6;
  v74 = a4;
  v75 = a5;
  v76 = a2;
  v77 = a3;
  v72 = a1;
  v6 = sub_268B37A54();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v67 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v64 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - v15;
  v17 = sub_268B34E24();
  v73 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = (&v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v20);
  v22 = &v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v24 = MEMORY[0x28223BE20](v23);
  v71 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v63 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v63 - v29;
  sub_2688C053C(v72, v22, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v22, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v31 = v69;
    v32 = __swift_project_value_buffer(v69, qword_2802CDA10);
    v34 = v67;
    v33 = v68;
    v68[2](v67, v32, v31);
    v35 = sub_268B37A34();
    v36 = sub_268B37EE4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2688BB000, v35, v36, "DefaultConfirmIntentStrategy.makeDialogForConfirmation Unable to generate dialog.", v37, 2u);
      MEMORY[0x26D6266E0](v37, -1, -1);
    }

    (*(v33 + 8))(v34, v31);
    sub_2688C2ECC();
    v38 = swift_allocError();
    *v39 = -75;
    v78[0] = v38;
    v79 = 1;
    v76(v78);
    return sub_2688C058C(v78, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_268954254(v22, v30, &unk_2802A56E0, &unk_268B3CDF0);
    sub_268947F08();
    v63 = v41;
    v67 = v42;
    v43 = __swift_project_boxed_opaque_existential_1(v75 + 8, v75[11]);
    v44 = *MEMORY[0x277D5BB48];
    v45 = *(v73 + 104);
    v68 = v19;
    v69 = v17;
    v45(v19, v44, v17);
    v72 = v30;
    sub_2688C053C(v30, v28, &unk_2802A56E0, &unk_268B3CDF0);

    v46 = sub_268B350F4();
    v47 = *(v46 - 8);
    (*(v47 + 32))(v16, v28, v46);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v46);
    v48 = sub_268B34B94();
    v49 = v65;
    __swift_storeEnumTagSinglePayload(v65, 1, 1, v48);
    v50 = *v43;
    v51 = v64;
    sub_2688C053C(v16, v64, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v51, 1, v46) == 1)
    {
      sub_2688C058C(v51, &unk_2802A57B0, &unk_268B3CE00);
      v52 = 0;
      v53 = 0;
    }

    else
    {
      v52 = sub_268B350B4();
      v53 = v54;
      (*(v47 + 8))(v51, v46);
    }

    v55 = v68;
    sub_2688E3AD8(v70, v68, v74, v52, v53, v63, v67, v49, v50);

    sub_2688C058C(v49, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v16, &unk_2802A57B0, &unk_268B3CE00);
    (*(v73 + 8))(v55, v69);
    v56 = v75[16];
    v57 = v75[17];
    v75 = __swift_project_boxed_opaque_existential_1(v75 + 13, v56);
    v59 = v71;
    v58 = v72;
    sub_2688C053C(v72, v71, &unk_2802A56E0, &unk_268B3CDF0);
    v60 = *(v59 + *(v23 + 48));
    v61 = v66;
    sub_268B35034();

    sub_268B34FF4();
    sub_268B34FD4();

    sub_268B34FE4();

    sub_268B35014();

    sub_268B35004();
    sub_268B34FC4();
    v62 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v62);
    (*(v57 + 16))(v59, v60, v61, v76, v77, v56, v57);

    sub_2688C058C(v61, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v58, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v47 + 8))(v59, v46);
  }
}

void sub_2689DCA54()
{
  OUTLINED_FUNCTION_26();
  v71 = v0;
  v77 = v2;
  v78 = v1;
  v79 = v3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v4);
  v76 = (&v71 - v5);
  OUTLINED_FUNCTION_9();
  v6 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v74 = &v71 - v14;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  v72 = &v71 - v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v17);
  v19 = &v71 - v18;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    __swift_project_value_buffer(v6, qword_2802CDA10);
    v20 = v8;
    v22 = v8[2];
    v8 += 2;
    v21 = v22;
    OUTLINED_FUNCTION_30_8();
    v22();
    v23 = sub_268B37A34();
    v24 = sub_268B37ED4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_14();
      *v25 = 0;
      _os_log_impl(&dword_2688BB000, v23, v24, "SetRepeatStateConfirmIntentStrategy.makeDialogForConfirmation()", v25, 2u);
      OUTLINED_FUNCTION_12();
    }

    v26 = v20 + 1;
    v27 = v20[1];
    v27(v19, v6);
    v28 = v79;
    v29 = sub_268B18100(v79);
    if (!v29)
    {
      break;
    }

    v30 = v29;
    v73 = v26;
    v31 = sub_2688EFD0C();
    if (!v31)
    {

      break;
    }

    v32 = v31;
    v33 = [v28 repeatState];
    if ((v33 - 1) >= 3)
    {

      v57 = v72;
      OUTLINED_FUNCTION_30_8();
      v21();
      v58 = sub_268B37A34();
      v59 = sub_268B37EE4();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = OUTLINED_FUNCTION_14();
        *v60 = 0;
        _os_log_impl(&dword_2688BB000, v58, v59, "Unexpected repeat mode found", v60, 2u);
        OUTLINED_FUNCTION_12();
      }

      v27(v57, v6);
      sub_2688C2ECC();
      v54 = swift_allocError();
      v56 = 72;
      goto LABEL_16;
    }

    v79 = (v33 - 1) & 7;
    v34 = v74;
    OUTLINED_FUNCTION_30_8();
    v21();

    v35 = sub_268B37A34();
    v19 = sub_268B37EC4();

    if (os_log_type_enabled(v35, v19))
    {
      v36 = OUTLINED_FUNCTION_172_0();
      v8 = OUTLINED_FUNCTION_173_0();
      v80 = v8;
      *v36 = 136315138;
      v37 = type metadata accessor for Device();
      v38 = MEMORY[0x26D6256F0](v30, v37);
      v40 = sub_26892CDB8(v38, v39, &v80);

      *(v36 + 4) = v40;
      OUTLINED_FUNCTION_27();
      _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v46 = v74;
    }

    else
    {

      v46 = v34;
    }

    v27(v46, v6);
    v12 = 0;
    LODWORD(v79) = 3u >> v79;
    v62 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v32 == v12)
      {

        sub_268AB5420(v62, v79 & 1, v78, v77);

        goto LABEL_17;
      }

      if ((v30 & 0xC000000000000001) != 0)
      {
        v63 = MEMORY[0x26D625BD0](v12, v30);
      }

      else
      {
        if (v12 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v63 = *(v30 + 8 * v12 + 32);
      }

      v6 = v63;
      v8 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v64 = sub_268988580(v63);
      if (v65)
      {
        v19 = v64;
        v67 = v65;

        goto LABEL_29;
      }

      v19 = sub_268988568(v6);
      v67 = v66;

      ++v12;
      if (v67)
      {
LABEL_29:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2689876A4();
          v62 = v69;
        }

        v6 = *(v62 + 16);
        if (v6 >= *(v62 + 24) >> 1)
        {
          sub_2689876A4();
          v62 = v70;
        }

        *(v62 + 16) = v6 + 1;
        v68 = v62 + 16 * v6;
        *(v68 + 32) = v19;
        *(v68 + 40) = v67;
        v12 = v8;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_30_8();
  v21();
  v47 = sub_268B37A34();
  v48 = sub_268B37EE4();
  if (OUTLINED_FUNCTION_19(v48))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_27();
    _os_log_impl(v49, v50, v51, v52, v53, 2u);
    OUTLINED_FUNCTION_12();
  }

  v27(v12, v6);
  sub_2688C2ECC();
  v54 = swift_allocError();
  v56 = 71;
LABEL_16:
  *v55 = v56;
  v61 = v76;
  *v76 = v54;
  swift_storeEnumTagMultiPayload();
  v78(v61);
  sub_2688C058C(v61, &qword_2802A6300, &unk_268B3BD80);
LABEL_17:
  OUTLINED_FUNCTION_23();
}

void sub_2689DD0D8()
{
  type metadata accessor for SetRepeatStateConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_2689DD154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetRepeatStateConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689DD218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for SetRepeatStateConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_2689DD2B4(uint64_t a1)
{
  result = sub_2689DD2DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2689DD2DC()
{
  result = qword_2802A6D70;
  if (!qword_2802A6D70)
  {
    type metadata accessor for SetRepeatStateConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6D70);
  }

  return result;
}

void sub_2689DD330()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v56 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v57 = v5;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5770, &unk_268B3BDC0);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v15 = v13 - v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v53 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  v22 = sub_268B357A4();
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_268B3BBA0;
  *(v26 + 32) = v1;
  sub_268B35BD4();
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);

  v31 = MEMORY[0x26D623520](v26, v10);

  sub_2688C058C(v10, &unk_2802A62D0, &qword_268B3EDD0);
  v58 = v31;
  sub_268B36604();
  v55 = v21;
  sub_2688C058C(v21, &qword_2802A5770, &unk_268B3BDC0);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v22);
  sub_268954254(v19, v21, &qword_2802A5770, &unk_268B3BDC0);
  v35 = v56;
  sub_2688C053C(v21, v15, &qword_2802A5770, &unk_268B3BDC0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v22) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_26895417C();
    v36 = MEMORY[0x26D6259D0](v15);
    (*(*(v22 - 8) + 8))(v15, v22);
    v37 = objc_allocWithZone(MEMORY[0x277D5F5E8]);
    v56 = v36;
    v38 = [v37 initWithReference_];
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v2, qword_2802CDA10);
    OUTLINED_FUNCTION_14_11();
    v39 = v57;
    v40(v57);
    v41 = v38;
    v42 = sub_268B37A34();
    v43 = sub_268B37F04();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_172_0();
      v45 = OUTLINED_FUNCTION_173_0();
      v59 = v45;
      *v44 = 136315138;
      v46 = v35;
      v47 = v41;
      v48 = [v47 description];
      v49 = sub_268B37BF4();
      v54 = v2;
      v51 = v50;

      v52 = sub_26892CDB8(v49, v51, &v59);

      *(v44 + 4) = v52;
      _os_log_impl(&dword_2688BB000, v42, v43, "uso UserWantedToProceed: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      OUTLINED_FUNCTION_12();
      v21 = v55;
      OUTLINED_FUNCTION_12();

      v46[1](v57, v54);
    }

    else
    {

      v35[1](v39, v2);
    }

    [objc_allocWithZone(MEMORY[0x277D5F5A0]) initWithOfferedAct_];

    sub_2688C058C(v21, &qword_2802A5770, &unk_268B3BDC0);
    OUTLINED_FUNCTION_23();
  }
}

void sub_2689DD988()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v120 = v2;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v118 = v4;
  v119 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_78();
  v121 = v6;
  OUTLINED_FUNCTION_9();
  v122 = sub_268B35664();
  OUTLINED_FUNCTION_1();
  v105 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_78();
  v104 = v10;
  OUTLINED_FUNCTION_9();
  sub_268B35554();
  OUTLINED_FUNCTION_1();
  v116 = v12;
  v117 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_78();
  v113 = v14;
  OUTLINED_FUNCTION_9();
  sub_268B35614();
  OUTLINED_FUNCTION_1();
  v114 = v16;
  v115 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_78();
  v110 = v18;
  OUTLINED_FUNCTION_9();
  sub_268B355B4();
  OUTLINED_FUNCTION_1();
  v111 = v20;
  v112 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_78();
  v108 = v22;
  OUTLINED_FUNCTION_9();
  v23 = sub_268B35504();
  OUTLINED_FUNCTION_1();
  v109 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_78();
  v107 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v29);
  v31 = v101 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A5760, &unk_268B3BDB0);
  v33 = OUTLINED_FUNCTION_22(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_20_0();
  v36 = v34 - v35;
  v38 = MEMORY[0x28223BE20](v37);
  v40 = v101 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = v101 - v41;
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_268B3BBA0;
  *(v46 + 32) = v1;
  sub_268B35BD4();
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);

  v51 = MEMORY[0x26D623520](v46, v31);

  sub_2688C058C(v31, &unk_2802A62D0, &qword_268B3EDD0);
  sub_268B35BE4();
  sub_268B35C44();
  swift_allocObject();
  sub_268B35C34();
  v106 = v51;
  sub_268B356B4();
  sub_2688C058C(v42, &unk_2802A5760, &unk_268B3BDB0);

  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v23);
  sub_268954254(v40, v42, &unk_2802A5760, &unk_268B3BDB0);
  v55 = v42;
  sub_2688C053C(v42, v36, &unk_2802A5760, &unk_268B3BDB0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v23);
  v57 = v121;
  v58 = v122;
  v59 = v119;
  if (EnumTagSinglePayload == 1)
  {
    sub_2688C058C(v36, &unk_2802A5760, &unk_268B3BDB0);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v59, qword_2802CDA10);
    OUTLINED_FUNCTION_29_7();
    v60 = v103;
    v61(v103);

    v62 = sub_268B37A34();
    v63 = sub_268B37EE4();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = OUTLINED_FUNCTION_172_0();
      v65 = OUTLINED_FUNCTION_173_0();
      v102 = v55;
      v66 = v65;
      v123[0] = v65;
      *v64 = 136315138;
      v67 = sub_268B36614();
      v69 = sub_26892CDB8(v67, v68, v123);

      *(v64 + 4) = v69;
      _os_log_impl(&dword_2688BB000, v62, v63, "Unable to map graph into protoGraph: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      (*(v36 + 8))(v103, v59);
      v70 = v102;
    }

    else
    {

      (*(v36 + 8))(v60, v59);
      v70 = v42;
    }

    sub_2688C058C(v70, &unk_2802A5760, &unk_268B3BDB0);
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v58);
  }

  else
  {
    v102 = v42;
    v71 = v107;
    (*(v109 + 32))(v107, v36, v23);
    v72 = v108;
    sub_268B355A4();
    v73 = v110;
    sub_268B35604();
    v74 = v113;
    sub_268B35544();
    v75 = v104;
    sub_268B35654();
    OUTLINED_FUNCTION_14_11();
    v76(v101[1], v71, v23);
    sub_268B355F4();
    (*(v114 + 16))(v101[3], v73, v115);
    sub_268B35594();
    (*(v111 + 16))(v101[2], v72, v112);
    sub_268B35534();
    (*(v116 + 16))(v101[4], v74, v117);
    sub_268B35634();
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v59, qword_2802CDA10);
    OUTLINED_FUNCTION_29_7();
    v77(v57);
    v78 = sub_268B37A34();
    v79 = sub_268B37F04();
    v80 = OUTLINED_FUNCTION_19(v79);
    v81 = v105;
    v82 = v122;
    if (v80)
    {
      v83 = OUTLINED_FUNCTION_172_0();
      v84 = OUTLINED_FUNCTION_173_0();
      v123[0] = v84;
      *v83 = 136315138;
      swift_beginAccess();
      OUTLINED_FUNCTION_14_11();
      v85(v101[0], v75, v82);
      v86 = sub_268B37C24();
      v88 = sub_26892CDB8(v86, v87, v123);

      *(v83 + 4) = v88;
      v75 = v104;
      v81 = v105;
      OUTLINED_FUNCTION_27();
      _os_log_impl(v89, v90, v91, v92, v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v84);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      (*(v72 + 8))(v121, v59);
    }

    else
    {

      (*(v72 + 8))(v57, v59);
    }

    (*(v116 + 8))(v113, v117);
    (*(v114 + 8))(v110, v115);
    (*(v111 + 8))(v108, v112);
    (*(v109 + 8))(v107, v23);
    sub_2688C058C(v102, &unk_2802A5760, &unk_268B3BDB0);
    swift_beginAccess();
    OUTLINED_FUNCTION_14_11();
    v97(v120, v75, v82);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v98, v99, v100, v82);
    (*(v81 + 8))(v75, v82);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t objectdestroyTm_4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void OUTLINED_FUNCTION_21_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = *(v5 - 132);
  v8 = *(v5 - 128);

  _os_log_impl(a1, v8, v7, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_22_8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_31_8()
{

  return sub_268B35664();
}

BOOL OUTLINED_FUNCTION_33_8()
{
  *(v2 - 132) = v1;
  *(v2 - 128) = v0;

  return os_log_type_enabled(v0, v1);
}

id SetAudioLanguageIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SetAudioLanguageIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36C54();
  v27 = sub_268B36C44();
  sub_268B37204();
  v26 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v34);
  sub_268AD33CC(v33);
  sub_268B36754();
  v25 = sub_268B36734();
  v1 = sub_268B36C44();
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v3 + 16) = [v4 init];
  __swift_mutable_project_boxed_opaque_existential_1(v34, v34[3]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = (v7 - v6);
  (*(v9 + 16))(v7 - v6);
  v10 = *v8;
  v31 = v0;
  v32 = MEMORY[0x277D5F680];
  *&v30 = v1;
  v11 = type metadata accessor for AnalyticsServiceLogger();
  v29[4] = &off_28795F5E0;
  v29[3] = v11;
  v29[0] = v10;
  v28[4] = &off_287960608;
  v28[3] = v2;
  v28[0] = v3;
  type metadata accessor for AnalyticsServiceImpl();
  v12 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v29, v11);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = (v15 - v14);
  (*(v17 + 16))(v15 - v14);
  __swift_mutable_project_boxed_opaque_existential_1(v28, v2);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v21 = (v20 - v19);
  (*(v22 + 16))(v20 - v19);
  v23 = *v16;
  v24 = *v21;
  v12[5] = v11;
  v12[6] = &off_28795F5E0;
  v12[2] = v23;
  v12[21] = v2;
  v12[22] = &off_287960608;
  v12[18] = v24;
  sub_2688E6514(v33, (v12 + 7));
  v12[12] = v25;
  sub_2688E6514(&v30, (v12 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);

  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  sub_268B34C64();
  sub_2689E1D00(v27, v26, &v35, v12, v34);
  OUTLINED_FUNCTION_129();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_2689DEB80()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_7_12(v3);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  OUTLINED_FUNCTION_0_3();
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v1;
  v12 = qword_2802A5028;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_2802A5028);
  }

  qword_2802CDB28;
  sub_268B37A14();
  v13 = OUTLINED_FUNCTION_4_13();
  v14(v13);
  OUTLINED_FUNCTION_5_5();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_0_20(v15, 22);
  v17(v16);
  *(v15 + v0) = 1;
  v18 = v15 + v12;
  *(v18 + 8) = sub_2689969C0;
  *(v18 + 16) = v11;

  sub_268B38004();
  sub_268B37A04();

  sub_2689DED68(v19[0], v19[1], sub_2689E2048, v15);

  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689DED68(void *a1, char *a2, void (*a3)(void **), uint64_t a4)
{
  v8 = sub_268B37144();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v54 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v50 - v15;
  v17 = swift_allocObject();
  v58 = a3;
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_268958D98;
  *(v18 + 24) = v17;

  v19 = [a1 device];
  if (v19)
  {
    v20 = v19;
    v57 = a4;
    v21 = sub_2689EEF44();
    if (v22)
    {
      v53 = v21;
      v23 = [a1 language];
      if (v23 && (v24 = sub_268A6F4F4(v23), v25))
      {
        v58 = v24;
        v52 = v25;
        __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_analyticsService], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_analyticsService + 24]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_268B3BBA0;
        *(inited + 32) = v20;
        v51 = v20;
        sub_268920C54(inited);
        sub_268949478(0xD000000000000010, 0x8000000268B59B10, v27, inited);

        swift_setDeallocating();
        sub_268ACE718();
        v50[1] = __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_playbackController], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_playbackController + 24]);
        v28 = v54;
        v29 = v55;
        v30 = v56;
        (*(v55 + 104))(v54, *MEMORY[0x277D5F7D0], v56);
        v31 = swift_allocObject();
        v31[2] = sub_268958EA4;
        v31[3] = v18;
        v31[4] = a2;
        v32 = a2;
        sub_268B36D34();

        (*(v29 + 8))(v28, v30);
      }

      else
      {

        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v33 = __swift_project_value_buffer(v10, qword_2802CDA10);
        (*(v11 + 16))(v16, v33, v10);
        v34 = sub_268B37A34();
        v35 = sub_268B37EE4();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_2688BB000, v34, v35, "No language resolved and user requested to enable subtitles, returning failure", v36, 2u);
          MEMORY[0x26D6266E0](v36, -1, -1);
        }

        (*(v11 + 8))(v16, v10);
        v37 = sub_268B36EA4();
        v38 = objc_allocWithZone(type metadata accessor for SetAudioLanguageIntentResponse());
        v39 = v37;
        v40 = SetAudioLanguageIntentResponse.init(code:userActivity:)(5, v37);
        v59 = v40;
        v58(&v59);
      }
    }
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v14, v41, v10);
  v42 = sub_268B37A34();
  v43 = sub_268B37EE4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_2688BB000, v42, v43, "No device found in intent, returning failure", v44, 2u);
    MEMORY[0x26D6266E0](v44, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v45 = sub_268B36EA4();
  v46 = objc_allocWithZone(type metadata accessor for SetAudioLanguageIntentResponse());
  v47 = v45;
  v48 = SetAudioLanguageIntentResponse.init(code:userActivity:)(5, v45);
  v59 = v48;
  v58(&v59);
}

void sub_2689DF460(uint64_t a1, void (*a2)(void))
{
  v4 = sub_268B36ED4();
  v5 = sub_2689E153C(a1);
  v6 = objc_allocWithZone(type metadata accessor for SetAudioLanguageIntentResponse());
  v7 = v4;
  v8 = SetAudioLanguageIntentResponse.init(code:userActivity:)(v5, v4);
  a2();
}

void sub_2689DF55C(void *a1, NSObject *a2, void (**a3)(uint64_t, void *))
{
  v6 = sub_268B371E4();
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x28223BE20](v6);
  v72 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_268B36C04();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v70 - v14;
  v16 = swift_allocObject();
  v76 = a2;
  v77 = v16;
  *(v16 + 16) = a3;
  v17 = (&a2->isa + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_deviceState);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v78 = a3;
  _Block_copy(a3);
  if (!sub_2688C328C())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v9, qword_2802CDA10);
    (*(v10 + 16))(v15, v36, v9);
    v37 = sub_268B37A34();
    v38 = sub_268B37EE4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2688BB000, v37, v38, "Media controls are unsupported on this platform", v39, 2u);
      MEMORY[0x26D6266E0](v39, -1, -1);
    }

    (*(v10 + 8))(v15, v9);
    type metadata accessor for SetAudioLanguageDeviceResolutionResult();
    v40 = sub_268B1CD38(4);
    v41 = v78;
    v78[2](v78, v40);

    goto LABEL_23;
  }

  v18 = [a1 device];
  v19 = a1;
  if (v18)
  {
    v20 = v18;
    v21 = sub_26892D418(v18);
    if (v22)
    {
      v23 = v21;
      v24 = v22;
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v25 = __swift_project_value_buffer(v9, qword_2802CDA10);
      (*(v10 + 16))(v13, v25, v9);

      v26 = sub_268B37A34();
      v27 = sub_268B37F04();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v76 = v26;
        v29 = v23;
        v30 = v28;
        v31 = swift_slowAlloc();
        v79[0] = v31;
        *v30 = 136315138;
        v32 = sub_26892CDB8(v29, v24, v79);
        v33 = v19;
        v34 = v32;

        *(v30 + 4) = v34;
        v19 = v33;
        v35 = v76;
        _os_log_impl(&dword_2688BB000, v76, v27, "Disambiguated Intent with destinationDeviceId: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x26D6266E0](v31, -1, -1);
        MEMORY[0x26D6266E0](v30, -1, -1);
      }

      else
      {
      }

      (*(v10 + 8))(v13, v9);
      v44 = sub_268B1CCB0(v19);
      if (v44)
      {
        v45 = v44;
      }

      else
      {
        v45 = MEMORY[0x277D84F90];
      }

      sub_268983D74(v45);

      type metadata accessor for SetAudioLanguageDeviceResolutionResult();
      v40 = sub_268B2CC98(v20);
      v41 = v78;
      v78[2](v78, v40);

LABEL_23:
      v46 = v41;
      goto LABEL_24;
    }
  }

  if (sub_268B1CCB0(a1))
  {
    if (sub_2688EFD0C())
    {
      v42 = [a1 device];
      if (!v42)
      {
        v64 = v70;
        v63 = v71;
        v65 = v73;
        (*(v71 + 104))(v70, *MEMORY[0x277D5F640], v73);
        v66 = swift_allocObject();
        v67 = v77;
        *(v66 + 16) = sub_26892DC18;
        *(v66 + 24) = v67;

        v68 = v72;
        sub_268B37164();
        sub_2688F4CD4();

        (*(v74 + 8))(v68, v75);
        (*(v63 + 8))(v64, v65);

        v46 = v78;
        goto LABEL_24;
      }

      v43 = v42;
    }

    else
    {
    }
  }

  v47 = [a1 device];
  if (v47)
  {
    v48 = v47;
    sub_268988574(v47);
    if (v49)
    {
    }

    else
    {
      sub_2689E1C9C(0x76745F656C707061, 0xE800000000000000, v48);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_268B3BBA0;
    *(v52 + 32) = v48;
    v53 = swift_allocObject();
    v54 = v77;
    v53[2] = sub_26892DC18;
    v53[3] = v54;
    v53[4] = a1;

    v55 = v48;
    v56 = a1;
    sub_2688F6BEC();

    v46 = v78;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    if (sub_268B34D24())
    {
      type metadata accessor for SetAudioLanguageDeviceResolutionResult();
      v50 = sub_268B1CD38(3);
      v51 = v78;
      v78[2](v78, v50);

      v46 = v51;
    }

    else
    {
      type metadata accessor for Device();
      sub_268B36C54();
      v57 = sub_268B36C24();
      LOBYTE(v69) = 0;
      sub_268983F14(v57, v58, 0, 0, 0, 0, 0, 0, 0, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79[0], v79[1], v80);
      v60 = v59;
      type metadata accessor for SetAudioLanguageDeviceResolutionResult();
      v61 = sub_268B2CC98(v60);
      v62 = v78;
      v78[2](v78, v61);

      v46 = v62;
    }
  }

LABEL_24:
  _Block_release(v46);
}

void sub_2689E061C(unint64_t a1, char a2, void (*a3)(void))
{
  if (a2)
  {
    type metadata accessor for SetAudioLanguageDeviceResolutionResult();
    v4 = 1;
LABEL_9:
    v8 = sub_268B1CD38(v4);
    goto LABEL_10;
  }

  if (!sub_2688EFD0C())
  {
    type metadata accessor for SetAudioLanguageDeviceResolutionResult();
    v4 = 3;
    goto LABEL_9;
  }

  if (sub_2688EFD0C() == 1)
  {
    sub_2688EFD10();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D625BD0](0, a1);
    }

    else
    {
      v6 = *(a1 + 32);
    }

    v7 = v6;
    type metadata accessor for SetAudioLanguageDeviceResolutionResult();
    v9 = sub_268B2CC98(v7);
    a3();

    goto LABEL_11;
  }

  type metadata accessor for SetAudioLanguageDeviceResolutionResult();
  v8 = sub_268B2CCFC(a1);
LABEL_10:
  v9 = v8;
  a3();
LABEL_11:
}

void sub_2689E0734(unint64_t a1, __int16 a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x100) != 0)
  {
    type metadata accessor for SetAudioLanguageDeviceResolutionResult();
    v12 = 1;
LABEL_12:
    v13 = sub_268B1CD38(v12);
    goto LABEL_13;
  }

  if (!sub_2688EFD0C())
  {
    type metadata accessor for SetAudioLanguageDeviceResolutionResult();
    v12 = 2;
    goto LABEL_12;
  }

  if (sub_2688EFD0C() == 1)
  {
    sub_2688EFD10();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D625BD0](0, a1);
    }

    else
    {
      v8 = *(a1 + 32);
    }

    v9 = v8;
    v10 = sub_268B1CCB0(a5);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    sub_268983D74(v11);

    type metadata accessor for SetAudioLanguageDeviceResolutionResult();
    v14 = sub_268B2CC98(v9);
    a3();

    goto LABEL_14;
  }

  type metadata accessor for SetAudioLanguageDeviceResolutionResult();
  v13 = sub_268B2CCFC(a1);
LABEL_13:
  v14 = v13;
  a3();
LABEL_14:
}

void sub_2689E0898()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_7_12(v3);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  OUTLINED_FUNCTION_0_3();
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v1;
  v12 = qword_2802A5028;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_2802A5028);
  }

  qword_2802CDB28;
  sub_268B37A14();
  v13 = OUTLINED_FUNCTION_4_13();
  v14(v13);
  OUTLINED_FUNCTION_5_5();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_0_20(v15, 20);
  v17(v16);
  *(v15 + v0) = 0;
  v18 = v15 + v12;
  *(v18 + 8) = sub_268958724;
  *(v18 + 16) = v11;

  sub_268B38004();
  sub_268B37A04();

  sub_2689E0A7C(v19[0], v19[1], sub_2689E2048, v15);

  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_23();
}

void sub_2689E0A7C(void *a1, char *a2, void (*a3)(void **), uint64_t a4)
{
  v70 = a2;
  v80 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = &v70 - v7;
  v8 = sub_268B37144();
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x28223BE20](v8);
  v71 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v70 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v70 - v17;
  v19 = swift_allocObject();
  v76 = a3;
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_268958D98;
  *(v20 + 24) = v19;
  v77 = v20;
  v21 = qword_2802A4F30;
  v79 = a4;

  v78 = v19;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v23 = *(v11 + 16);
  v23(v18, v22, v10);
  v24 = sub_268B37A34();
  v25 = sub_268B37F04();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2688BB000, v24, v25, "Resolving language for set audio language", v26, 2u);
    MEMORY[0x26D6266E0](v26, -1, -1);
  }

  v27 = *(v11 + 8);
  v27(v18, v10);
  v28 = [v80 language];
  if (v28)
  {
    v29 = v28;
    sub_2689EF3E4(v28);
    if (v30)
    {

      v23(v16, v22, v10);
      v31 = sub_268B37A34();
      v32 = sub_268B37F04();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2688BB000, v31, v32, "Language already found in intent, returning it", v33, 2u);
        MEMORY[0x26D6266E0](v33, -1, -1);
      }

      v27(v16, v10);
      type metadata accessor for SetAudioLanguageLanguageResolutionResult();
      v34 = sub_268B2F5B4(v29);
      v81 = v34;
      v76(&v81);

LABEL_18:

      return;
    }
  }

  v35 = [v80 device];
  if (v35)
  {
    v36 = v35;
    v37 = sub_26892D418(v35);
    if (v38)
    {
      v39 = v38;
      v76 = v37;
      v40 = [v80 language];
      if (v40 && (v41 = sub_268A6F500(v40), v42))
      {
        v43 = v41;
        v44 = v42;
        v45 = v70;
        v46 = *&v70[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_playbackController + 24];
        v75 = *&v70[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_playbackController + 32];
        v80 = __swift_project_boxed_opaque_existential_1(&v70[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_playbackController], v46);
        v47 = v73;
        v48 = v71;
        (*(v73 + 104))(v71, *MEMORY[0x277D5F7D0], v74);
        v49 = sub_268B37704();
        v50 = v72;
        __swift_storeEnumTagSinglePayload(v72, 1, 1, v49);
        v51 = swift_allocObject();
        v52 = v77;
        v51[2] = sub_2688E19F8;
        v51[3] = v52;
        v51[4] = v45;
        v53 = v45;
        sub_2689722C8(v43, v44, v48, v76, v39, v50, sub_2689E232C, v51, v46, v75);

        sub_2688C058C(v50, &unk_2802A7360, &qword_268B3F860);
        (*(v47 + 8))(v48, v74);
      }

      else
      {
        v54 = v70;
        v55 = *&v70[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_playbackController + 24];
        v56 = *&v70[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_playbackController + 32];
        v80 = __swift_project_boxed_opaque_existential_1(&v70[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_playbackController], v55);
        v58 = v73;
        v57 = v74;
        v59 = v71;
        (*(v73 + 104))(v71, *MEMORY[0x277D5F7D0], v74);
        v60 = sub_268B37704();
        v61 = v72;
        __swift_storeEnumTagSinglePayload(v72, 1, 1, v60);
        v62 = swift_allocObject();
        v63 = v77;
        v62[2] = sub_2688E19F8;
        v62[3] = v63;
        v62[4] = v54;
        v64 = v54;
        sub_2689722C8(0, 0, v59, v76, v39, v61, sub_2689E2290, v62, v55, v56);

        sub_2688C058C(v61, &unk_2802A7360, &qword_268B3F860);
        (*(v58 + 8))(v59, v57);
      }

      goto LABEL_18;
    }
  }

  v65 = v75;
  v23(v75, v22, v10);
  v66 = sub_268B37A34();
  v67 = sub_268B37EE4();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_2688BB000, v66, v67, "No device found in intent, returning failure", v68, 2u);
    MEMORY[0x26D6266E0](v68, -1, -1);
  }

  v27(v65, v10);
  type metadata accessor for SetAudioLanguageLanguageResolutionResult();
  v69 = sub_268B17B04(3);
  v81 = v69;
  v76(&v81);
}

void sub_2689E1288(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_2689E16CC();
  v5 = v4;
  a3();
}

uint64_t sub_2689E1310(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void sub_2689E13B8(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for SetAudioLanguageIntentResponse());
  v5 = SetAudioLanguageIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_2689E1424(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for SetAudioLanguageIntentResponse());
  v4 = SetAudioLanguageIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_2689E14B0(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

uint64_t sub_2689E153C(uint64_t a1)
{
  v2 = sub_268B36F24();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - v13;
  sub_26893B66C(a1, &v17 - v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return 4;
  }

  (*(v4 + 32))(v11, v14, v2);
  sub_268B36EC4();
  v15 = *(v4 + 8);
  v15(v8, v2);
  v15(v11, v2);
  return 5;
}

void sub_2689E16CC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v45 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6550, &qword_268B3F880);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_20_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  v12 = sub_268B372A4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20_0();
  v18 = v16 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v45 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v45 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v45 - v26;
  switch(v3)
  {
    case 1:
      v35 = *(v45 + 16);
      if (!v35)
      {
        type metadata accessor for SetAudioLanguageLanguageResolutionResult();
        v34 = 1;
        goto LABEL_21;
      }

      if (v35 != 1)
      {
        goto LABEL_16;
      }

      sub_2689A9A74(v45, v8);
      if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
      {
        sub_2688C058C(v8, &qword_2802A6550, &qword_268B3F880);
LABEL_16:
        v47 = MEMORY[0x277D84F90];
        sub_268B38234();
        v36 = type metadata accessor for LanguageOption();
        OUTLINED_FUNCTION_3_26(v36);
        do
        {
          v37 = OUTLINED_FUNCTION_14_12();
          v38 = v46;
          (v46)(v37);
          v38(v22, v25, v12);
          sub_2689EEFA0(v22);
          v39 = OUTLINED_FUNCTION_18_8();
          v40(v39);
          sub_268B38214();
          sub_268B38244();
          sub_268B38254();
          sub_268B38224();
          v27 += v45;
          --v35;
        }

        while (v35);
        goto LABEL_18;
      }

      (*(v14 + 32))(v18, v8, v12);
      type metadata accessor for SetAudioLanguageLanguageResolutionResult();
      type metadata accessor for LanguageOption();
      (*(v14 + 16))(v25, v18, v12);
      v44 = sub_2689EEFA0(v25);
      sub_268B2F5B4(v44);

      (*(v14 + 8))(v18, v12);
      goto LABEL_24;
    case 2:
      type metadata accessor for SetAudioLanguageLanguageResolutionResult();
      v34 = 2;
      goto LABEL_21;
    case 3:
      type metadata accessor for SetAudioLanguageLanguageResolutionResult();
      v34 = 4;
LABEL_21:
      sub_268B17B04(v34);
      goto LABEL_24;
    default:
      v28 = *(v45 + 16);
      if (!v28)
      {
        goto LABEL_19;
      }

      if (v28 != 1)
      {
        goto LABEL_6;
      }

      sub_2689A9A74(v45, v11);
      if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
      {
        sub_2688C058C(v11, &qword_2802A6550, &qword_268B3F880);
LABEL_6:
        if (v1)
        {
          v47 = MEMORY[0x277D84F90];
          sub_268B38234();
          v29 = type metadata accessor for LanguageOption();
          OUTLINED_FUNCTION_3_26(v29);
          do
          {
            v30 = OUTLINED_FUNCTION_14_12();
            v31 = v46;
            (v46)(v30);
            v31(v22, v25, v12);
            sub_2689EEFA0(v22);
            v32 = OUTLINED_FUNCTION_18_8();
            v33(v32);
            sub_268B38214();
            sub_268B38244();
            sub_268B38254();
            sub_268B38224();
            v27 += v45;
            --v28;
          }

          while (v28);
LABEL_18:
          type metadata accessor for SetAudioLanguageLanguageResolutionResult();
          sub_268B2F618(v47);
          OUTLINED_FUNCTION_129();
        }

        else
        {
LABEL_19:
          type metadata accessor for SetAudioLanguageLanguageResolutionResult();
          sub_268B17B04(1);
        }
      }

      else
      {
        (*(v14 + 32))(v27, v11, v12);
        type metadata accessor for SetAudioLanguageLanguageResolutionResult();
        type metadata accessor for LanguageOption();
        v41 = OUTLINED_FUNCTION_14_12();
        v42(v41);
        v43 = sub_2689EEFA0(v25);
        sub_268B2F5B4(v43);

        (*(v14 + 8))(v27, v12);
      }

LABEL_24:
      OUTLINED_FUNCTION_23();
      return;
  }
}

id SetAudioLanguageIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetAudioLanguageIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2689E1C9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();

  [a3 setType_];
}

id sub_2689E1D00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v34[3] = sub_268B36C54();
  v34[4] = MEMORY[0x277D5F680];
  v34[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v33[3] = v10;
  v33[4] = &off_2879539D0;
  v33[0] = a4;
  v11 = type metadata accessor for SetAudioLanguageIntentHandler();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v33, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v32[3] = v10;
  v32[4] = &off_2879539D0;
  v32[0] = v17;
  sub_26890C900(v34, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_playbackController]);
  sub_26890C900(a3, v31);
  sub_26890C900(v32, &v29);
  sub_26890C900(a5, v28);
  sub_268B376A4();
  v18 = sub_268B37694();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
  MEMORY[0x28223BE20](v19);
  v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = sub_26892D53C(a2, v31, *v21, v28, v18);
  __swift_destroy_boxed_opaque_existential_0Tm(&v29);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_deviceSelector] = v23;
  sub_26890C900(v32, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_analyticsService]);
  sub_26890C900(a3, v31);
  sub_26890C900(a5, &v29);
  type metadata accessor for AceServiceHelper();
  v24 = swift_allocObject();
  sub_2688E6514(v31, v24 + 16);
  sub_2688E6514(&v29, v24 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_aceServiceHelper] = v24;
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetAudioLanguageIntentHandler_deviceState]);
  v27.receiver = v12;
  v27.super_class = v11;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  __swift_destroy_boxed_opaque_existential_0Tm(v33);
  return v25;
}

uint64_t sub_2689E2014()
{

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2689E2074(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_268B37A24() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + v6);
  v10 = v2 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v2 + 32);

  return a2(a1, v7, v8, v13, v2 + v5, v9, v11, v12);
}

uint64_t sub_2689E223C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_5Tm_1()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_3_26(uint64_t result)
{
  *(v2 - 104) = *(v1 + 16);
  *(v2 - 96) = result;
  *(v2 - 112) = *(v1 + 72);
  return result;
}

id sub_2689E2390()
{
  if (qword_2802A5008 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDB08;
  qword_2802CD958 = qword_2802CDB08;

  return v1;
}

uint64_t sub_2689E23F4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v53 = a1;
  v52 = a3;
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v51 = v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v16 = __swift_project_value_buffer(v8, qword_2802CDA10);
  v49 = *(v10 + 16);
  v50 = v16;
  v49(v15);
  v17 = sub_268B37A34();
  v18 = sub_268B37ED4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_14();
    v48 = a2;
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v17, v18, "SetAudioLanguageHandleIntentStrategy.makeIntentHandledResponse()", v19, 2u);
    a2 = v48;
    OUTLINED_FUNCTION_12();
  }

  v20 = *(v10 + 8);
  v20(v15, v8);
  v21 = [a2 device];
  if (v21)
  {
    v22 = v21;
    LOWORD(v56[0]) = 0;
    BYTE2(v56[0]) = 0;
    v56[1] = 0;
    v56[2] = 0;
    v56[3] = 1;
    memset(&v56[4], 0, 59);
    memcpy(v57, &v56[1], 0x51uLL);
    sub_2688C058C(v57, &qword_2802A5C88, qword_268B418C0);
    LODWORD(v56[1]) = 0;
    memset(&v56[2], 0, 72);
    LOBYTE(v56[11]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_268B3BBA0;
    *(v23 + 32) = v22;
    v24 = a2;
    v25 = v22;
    sub_268AE35E8(v23);

    v26 = v54;
    v27 = sub_268AAC1F4(v54 + 2);
    memcpy(__dst, v56, 0x5BuLL);
    OUTLINED_FUNCTION_17_12();
    v28 = swift_allocObject();
    LODWORD(v23) = v28;
    v28[2] = v26;
    v28[3] = v24;
    v30 = v52;
    v29 = v53;
    v28[4] = v52;
    v28[5] = v29;
    v28[6] = v27;
    v28[7] = a4;
    v28[8] = a5;

    v31 = v24;
    v32 = v30;

    sub_268A36A00(__dst, sub_2689E5414, v23, v33, v34, v35, v36, v37, v48, v49, v50, v51, v52, v53, v54, v55, v56[0], v56[1], v56[2], v56[3], v56[4], v56[5], v56[6], v56[7], v56[8], v56[9], v56[10], v56[11], v57[0], v57[1], v57[2], v57[3], v57[4], v57[5], v57[6], v57[7], v57[8], v57[9], v57[10], v58[0], v58[1], v58[2], v58[3], v58[4]);

    memcpy(v58, v56, 0x5BuLL);
    return sub_2689E5448(v58);
  }

  else
  {
    v53 = a5;
    v39 = v51;
    (v49)(v51, v50, v8);
    v40 = sub_268B37A34();
    v41 = sub_268B37EE4();
    if (os_log_type_enabled(v40, v41))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_7(&dword_2688BB000, v42, v43, "No device present in intent");
      OUTLINED_FUNCTION_12();
    }

    v20(v39, v8);
    __swift_project_boxed_opaque_existential_1(v54 + 12, v54[15]);
    sub_2688C2ECC();
    v44 = OUTLINED_FUNCTION_26_1();
    *v45 = 63;
    sub_26894B450();

    v46 = OUTLINED_FUNCTION_26_1();
    *v47 = 63;
    __dst[0] = v46;
    LOBYTE(__dst[5]) = 1;
    a4(__dst);
    return sub_2688C058C(__dst, &unk_2802A57C0, &qword_268B3BE00);
  }
}

uint64_t sub_2689E2860(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v60 = a7;
  v61 = a8;
  v51 = a4;
  v52 = a6;
  v58 = a3;
  v59 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v10 - 8);
  v53 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v51 - v16;
  v57 = sub_268B34E24();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v51 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v24);
  v26 = (&v51 - v25);
  sub_2688F1FA4(a1, &v51 - v25, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    v28 = sub_268B36E84();
    if (v29)
    {
      v30 = v29;
      v52 = v28;
      v31 = a2;
      v32 = v58;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      v32 = v58;
      sub_268947F08();
      v52 = v38;
      v30 = v39;

      v31 = a2;
    }

    v40 = __swift_project_boxed_opaque_existential_1(v31 + 12, v31[15]);
    (*(v55 + 104))(v54, *MEMORY[0x277D5BC00], v57);
    v41 = sub_268B350F4();
    v42 = v56;
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v41);
    v43 = sub_268B34B94();
    v44 = v53;
    __swift_storeEnumTagSinglePayload(v53, 1, 1, v43);
    v45 = *v40;
    sub_2688F1FA4(v42, v15, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v15, 1, v41) == 1)
    {
      sub_2688C058C(v15, &unk_2802A57B0, &unk_268B3CE00);
      v46 = 0;
      v47 = 0;
    }

    else
    {
      v46 = sub_268B350B4();
      v47 = v48;
      (*(*(v41 - 8) + 8))(v15, v41);
    }

    v49 = v54;
    sub_2688E3A78(v59, v54, v32, v46, v47, v52, v30, v44, v45);

    sub_2688C058C(v44, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v56, &unk_2802A57B0, &unk_268B3CE00);
    (*(v55 + 8))(v49, v57);
    __swift_project_boxed_opaque_existential_1(v31 + 12, v31[15]);
    sub_26894B450();
    v62[0] = v27;
    v63 = 1;
    v50 = v27;
    v60(v62);

    return sub_2688C058C(v62, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v26, v23);
    __swift_project_boxed_opaque_existential_1(a2 + 17, a2[20]);
    v33 = sub_268B36FA4();
    sub_2688F1FA4(v23, v21, &unk_2802A56E0, &unk_268B3CDF0);
    v35 = *&v21[*(v18 + 48)];
    if (v33)
    {
      sub_2689E2E68(v21, v35, v58, v34, v59, v52, v60, v61);
    }

    else
    {
      sub_2689E361C(v21, v35, v58, v34, v59, v52, v60, v61);
    }

    sub_2688C058C(v23, &unk_2802A56E0, &unk_268B3CDF0);
    v36 = sub_268B350F4();
    return (*(*(v36 - 8) + 8))(v21, v36);
  }
}

uint64_t sub_2689E2E68(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v104 = a7;
  v105 = a8;
  v103 = a6;
  v98 = a5;
  v113 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74();
  v102 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_74();
  v97 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v19 = OUTLINED_FUNCTION_22(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v96 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  v109 = &v90 - v22;
  OUTLINED_FUNCTION_9();
  v110 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v108 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v107 = v26 - v25;
  OUTLINED_FUNCTION_9();
  v27 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3();
  v99 = v31;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v32);
  v34 = &v90 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  v101 = v37;
  OUTLINED_FUNCTION_8();
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v90 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v90 - v42;
  v44 = sub_268B350F4();
  v112 = *(v44 - 8);
  (*(v112 + 16))(v43, a1, v44);
  v111 = v35;
  *&v43[*(v35 + 48)] = a2;
  v45 = qword_2802A4F30;
  v46 = a2;
  if (v45 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v47 = __swift_project_value_buffer(v27, qword_2802CDA10);
  v48 = *(v29 + 16);
  v94 = v47;
  v95 = v29 + 16;
  v114 = v27;
  v93 = v48;
  (v48)(v34);
  v49 = sub_268B37A34();
  v50 = sub_268B37ED4();
  v51 = os_log_type_enabled(v49, v50);
  v106 = v44;
  if (v51)
  {
    v52 = OUTLINED_FUNCTION_14();
    *v52 = 0;
    _os_log_impl(&dword_2688BB000, v49, v50, "SetAudioLanguageHandleIntentStrategy#intentHandledResponse...", v52, 2u);
    v44 = v106;
    OUTLINED_FUNCTION_12();
  }

  v53 = *(v29 + 8);
  v100 = v29 + 8;
  v92 = v53;
  v53(v34, v114);
  OUTLINED_FUNCTION_6_22();
  sub_268947F08();
  v91 = v54;
  v56 = v55;
  v57 = __swift_project_boxed_opaque_existential_1(v9 + 12, v9[15]);
  (*(v108 + 104))(v107, *MEMORY[0x277D5BC10], v110);
  sub_2688F1FA4(v43, v41, &unk_2802A56E0, &unk_268B3CDF0);

  v58 = v112;
  v59 = v109;
  (*(v112 + 32))(v109, v41, v44);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v44);
  v63 = sub_268B34B94();
  v64 = v97;
  __swift_storeEnumTagSinglePayload(v97, 1, 1, v63);
  v65 = *v57;
  v66 = v59;
  v67 = v96;
  sub_2688F1FA4(v66, v96, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v67, 1, v44) == 1)
  {
    sub_2688C058C(v67, &unk_2802A57B0, &unk_268B3CE00);
    v68 = 0;
    v69 = 0;
  }

  else
  {
    v68 = sub_268B350B4();
    v69 = v70;
    (*(v58 + 8))(v67, v44);
  }

  v89 = v65;
  v71 = v107;
  v72 = v113;
  sub_2688E3A78(v98, v107, v113, v68, v69, v91, v56, v64, v89);

  sub_2688C058C(v64, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v109, &unk_2802A57B0, &unk_268B3CE00);
  (*(v108 + 8))(v71, v110);
  __swift_project_boxed_opaque_existential_1(v9 + 12, v9[15]);
  sub_268948308(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1(v9 + 12, v9[15]);
  OUTLINED_FUNCTION_7_16();
  v73 = v99;
  v93(v99, v94, v114);
  v74 = sub_268B37A34();
  v75 = sub_268B37ED4();
  if (os_log_type_enabled(v74, v75))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_7(&dword_2688BB000, v76, v77, "SetAudioLanguageHandleIntentStrategy#intentHandledResponse returning output");
    OUTLINED_FUNCTION_12();
  }

  v92(v73, v114);
  v78 = v9[35];
  v79 = v9[36];
  __swift_project_boxed_opaque_existential_1(v9 + 32, v78);
  v80 = v101;
  sub_2688F1FA4(v43, v101, &unk_2802A56E0, &unk_268B3CDF0);
  v81 = v43;
  v82 = *(v80 + *(v111 + 48));
  v83 = v102;
  sub_268A82B50(v72, v102);
  sub_268B35044();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
  (*(v79 + 8))(v80, v82, v83, v103, 1, v104, v105, v78, v79);

  sub_2688C058C(v83, &qword_2802A57F0, &qword_268B3DDB0);
  sub_2688C058C(v81, &unk_2802A56E0, &unk_268B3CDF0);
  return (*(v112 + 8))(v80, v106);
}

uint64_t sub_2689E361C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v9 = v8;
  v94 = a8;
  v95 = a7;
  v92 = a6;
  v87 = a5;
  v88 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74();
  v90 = v14;
  OUTLINED_FUNCTION_9();
  v93 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v91 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v89 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_74();
  v86 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v23 = OUTLINED_FUNCTION_22(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v85 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  v98 = &v83 - v26;
  OUTLINED_FUNCTION_9();
  v99 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v97 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_0();
  v96 = v30 - v29;
  OUTLINED_FUNCTION_9();
  v31 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_0();
  v37 = v36 - v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v83 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v44 = &v83 - v43;
  v45 = sub_268B350F4();
  v84 = *(v45 - 8);
  (*(v84 + 16))(v44, a1, v45);
  v46 = *(v38 + 48);
  v100 = v44;
  *&v44[v46] = a2;
  v47 = qword_2802A4F30;
  v48 = a2;
  if (v47 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v49 = __swift_project_value_buffer(v31, qword_2802CDA10);
  (*(v33 + 16))(v37, v49, v31);
  v50 = sub_268B37A34();
  v51 = sub_268B37ED4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = OUTLINED_FUNCTION_14();
    *v52 = 0;
    _os_log_impl(&dword_2688BB000, v50, v51, "SetAudioLanguageHandleIntentStrategy#legacyHandledResponse...", v52, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v33 + 8))(v37, v31);
  OUTLINED_FUNCTION_6_22();
  v53 = v88;
  sub_268947F08();
  v83 = v54;
  v56 = v55;
  v57 = __swift_project_boxed_opaque_existential_1(v9 + 12, v9[15]);
  (*(v97 + 104))(v96, *MEMORY[0x277D5BC10], v99);
  sub_2688F1FA4(v100, v42, &unk_2802A56E0, &unk_268B3CDF0);

  v58 = v84;
  v59 = v98;
  (*(v84 + 32))(v98, v42, v45);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v45);
  v63 = sub_268B34B94();
  v64 = v86;
  __swift_storeEnumTagSinglePayload(v86, 1, 1, v63);
  v65 = *v57;
  v66 = v85;
  sub_2688F1FA4(v59, v85, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v66, 1, v45) == 1)
  {
    sub_2688C058C(v66, &unk_2802A57B0, &unk_268B3CE00);
    v67 = 0;
    v68 = 0;
  }

  else
  {
    v67 = sub_268B350B4();
    v68 = v69;
    (*(v58 + 8))(v66, v45);
  }

  v70 = v89;
  v82 = v65;
  v71 = v96;
  sub_2688E3A78(v87, v96, v53, v67, v68, v83, v56, v64, v82);

  sub_2688C058C(v64, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v98, &unk_2802A57B0, &unk_268B3CE00);
  (*(v97 + 8))(v71, v99);
  __swift_project_boxed_opaque_existential_1(v9 + 12, v9[15]);
  sub_268948308(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1(v9 + 12, v9[15]);
  OUTLINED_FUNCTION_7_16();
  sub_268A82B50(v53, v70);
  v103[3] = sub_268B354F4();
  v103[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v103);
  v72 = 0;
  if (sub_2689F0948())
  {
    v72 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
    sub_2688C063C();
    v73 = sub_268B38064();
    [v72 setMinimumAutoDismissalTimeInMs_];

    [v72 setPremptivelyResumeMedia_];
  }

  __swift_project_boxed_opaque_existential_1(v9 + 2, v9[5]);
  sub_268B34CA4();
  v74 = v91;
  v75 = v90;
  v76 = v93;
  (*(v91 + 16))(v90, v70, v93);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v76);
  v102 = 0;
  memset(v101, 0, sizeof(v101));
  v80 = v100;
  sub_268B34EF4();

  sub_2688C058C(v101, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v75, &qword_2802A57F0, &qword_268B3DDB0);
  v104 = 0;
  v95(v103);
  (*(v74 + 8))(v70, v76);
  sub_2688C058C(v80, &unk_2802A56E0, &unk_268B3CDF0);
  return sub_2688C058C(v103, &unk_2802A57C0, &qword_268B3BE00);
}

uint64_t sub_2689E3E64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B36E84();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
  }

  else
  {
    swift_beginAccess();
    sub_268B38404();
    sub_268947F08();
    v12 = v14;
    v13 = v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000268B572E0;
  swift_beginAccess();
  sub_268B38404();
  v17 = sub_268B36E94();
  v19 = v18;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v17;
  *(inited + 56) = v19;
  v20 = sub_268B37B84();
  OUTLINED_FUNCTION_17_12();
  v21 = swift_allocObject();
  v21[2] = v5;
  v21[3] = a1;
  v21[4] = a2;
  v21[5] = v12;
  v21[6] = v13;
  v21[7] = a4;
  v21[8] = a5;
  v22 = v5[10];
  v23 = v6[11];
  __swift_project_boxed_opaque_existential_1(v6 + 7, v6[10]);

  v24 = a2;

  sub_2689CE860(0xD000000000000024, 0x8000000268B59D90, v20, sub_2689E53A0, v21, v22, v23);
}

uint64_t sub_2689E40D4(char *a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v120 = a7;
  v121 = a8;
  v118 = a5;
  v119 = a6;
  v122 = a4;
  v123 = a2;
  v117 = a3;
  v113 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v8 - 8);
  v112 = &v103 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v10 = MEMORY[0x28223BE20](v116);
  v111 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v105 = &v103 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v103 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v109 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v103 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v106 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v115 = &v103 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v103 - v26;
  MEMORY[0x28223BE20](v25);
  v107 = &v103 - v28;
  v29 = sub_268B34E24();
  v124 = *(v29 - 8);
  v125 = v29;
  v30 = MEMORY[0x28223BE20](v29);
  v114 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v104 = &v103 - v32;
  v33 = sub_268B37A54();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v110 = &v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v103 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v103 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v42);
  v44 = (&v103 - v43);
  sub_2688F1FA4(v113, &v103 - v43, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v44;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v46 = __swift_project_value_buffer(v33, qword_2802CDA10);
    (*(v34 + 16))(v41, v46, v33);
    v47 = sub_268B37A34();
    v48 = sub_268B37EE4();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v123;
    v51 = v104;
    if (v49)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2688BB000, v47, v48, "SetAudioLanguageHandleIntentStrategy#makeFailureHandlingIntentResponse failed to execute dialog", v52, 2u);
      MEMORY[0x26D6266E0](v52, -1, -1);
    }

    (*(v34 + 8))(v41, v33);
    v53 = __swift_project_boxed_opaque_existential_1(v50 + 12, v50[15]);
    (*(v124 + 104))(v51, *MEMORY[0x277D5BC00], v125);
    v54 = sub_268B350F4();
    v55 = v107;
    __swift_storeEnumTagSinglePayload(v107, 1, 1, v54);
    v56 = *MEMORY[0x277D5B8E0];
    v57 = sub_268B34B94();
    v58 = v108;
    (*(*(v57 - 8) + 104))(v108, v56, v57);
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v57);
    v59 = *v53;
    sub_2688F1FA4(v55, v27, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v27, 1, v54) == 1)
    {
      sub_2688C058C(v27, &unk_2802A57B0, &unk_268B3CE00);
      v60 = 0;
      v61 = 0;
    }

    else
    {
      v60 = sub_268B350B4();
      v61 = v80;
      (*(*(v54 - 8) + 8))(v27, v54);
    }

    sub_2688E3A78(v117, v51, v122, v60, v61, v118, v119, v58, v59);

    sub_2688C058C(v58, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v55, &unk_2802A57B0, &unk_268B3CE00);
    (*(v124 + 8))(v51, v125);
    __swift_project_boxed_opaque_existential_1(v50 + 12, v50[15]);
    sub_2688C2ECC();
    v81 = swift_allocError();
    *v82 = -88;
    sub_26894B450();

    v83 = swift_allocError();
    *v84 = -88;
    v126[0] = v83;
    v127 = 1;
    v120(v126);

    return sub_2688C058C(v126, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v44, v15);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v62 = __swift_project_value_buffer(v33, qword_2802CDA10);
    v63 = *(v34 + 16);
    v104 = v62;
    v103 = v63;
    (v63)(v39);
    v64 = sub_268B37A34();
    v65 = sub_268B37ED4();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_2688BB000, v64, v65, "SetAudioLanguageHandleIntentStrategy#makeFailureHandlingIntentResponse executed failure dialog creating output", v66, 2u);
      MEMORY[0x26D6266E0](v66, -1, -1);
    }

    v67 = *(v34 + 8);
    v108 = (v34 + 8);
    v67(v39, v33);
    v68 = __swift_project_boxed_opaque_existential_1(v123 + 12, v123[15]);
    (*(v124 + 104))(v114, *MEMORY[0x277D5BC00], v125);
    v113 = v15;
    v69 = v105;
    sub_2688F1FA4(v15, v105, &unk_2802A56E0, &unk_268B3CDF0);

    v70 = sub_268B350F4();
    v71 = *(v70 - 8);
    v72 = v115;
    (*(v71 + 32))(v115, v69, v70);
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v70);
    v73 = sub_268B34B94();
    v74 = v109;
    __swift_storeEnumTagSinglePayload(v109, 1, 1, v73);
    v75 = *v68;
    v76 = v106;
    sub_2688F1FA4(v72, v106, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v76, 1, v70);
    v107 = v71;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v76, &unk_2802A57B0, &unk_268B3CE00);
      v78 = 0;
      v79 = 0;
    }

    else
    {
      v78 = sub_268B350B4();
      v79 = v86;
      (*(v71 + 8))(v76, v70);
    }

    v87 = v110;
    v102 = v75;
    v88 = v114;
    sub_2688E3A78(v117, v114, v122, v78, v79, v118, v119, v74, v102);

    sub_2688C058C(v74, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v115, &unk_2802A57B0, &unk_268B3CE00);
    (*(v124 + 8))(v88, v125);
    v89 = v123;
    __swift_project_boxed_opaque_existential_1(v123 + 12, v123[15]);
    sub_2688C2ECC();
    v90 = swift_allocError();
    *v91 = 64;
    sub_26894B450();

    v103(v87, v104, v33);
    v92 = sub_268B37A34();
    v93 = sub_268B37ED4();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_2688BB000, v92, v93, "SetAudioLanguageHandleIntentStrategy#makeFailureHandlingIntentResponse returning failure output", v94, 2u);
      MEMORY[0x26D6266E0](v94, -1, -1);
    }

    v67(v87, v33);
    v95 = v89[35];
    v96 = v89[36];
    __swift_project_boxed_opaque_existential_1(v89 + 32, v95);
    v97 = v113;
    v98 = v111;
    sub_2688F1FA4(v113, v111, &unk_2802A56E0, &unk_268B3CDF0);
    v99 = *(v98 + *(v116 + 48));
    v100 = v112;
    sub_268A82B50(v122, v112);
    v101 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v100, 0, 1, v101);
    (*(v96 + 40))(v98, v99, v100, v120, v121, v95, v96);

    sub_2688C058C(v100, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v97, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v107 + 8))(v98, v70);
  }
}

void *sub_2689E4E04()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_26895F84C((v0 + 7));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  return v0;
}

uint64_t sub_2689E4E54()
{
  sub_2689E4E04();

  return MEMORY[0x2821FE8D8](v0, 296, 7);
}

uint64_t sub_2689E4EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetAudioLanguageHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689E4F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetAudioLanguageHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689E4FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetAudioLanguageHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689E5044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetAudioLanguageHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689E50C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetAudioLanguageHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_2689E5160()
{
  if (qword_2802A4E10 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD958;

  return v1;
}

uint64_t sub_2689E51BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetAudioLanguageHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_2689E520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetAudioLanguageHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_2689E5260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetAudioLanguageHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_2689E52CC(uint64_t a1)
{
  result = sub_2689E52F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2689E52F4()
{
  result = qword_2802A6DC0;
  if (!qword_2802A6DC0)
  {
    type metadata accessor for SetAudioLanguageHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6DC0);
  }

  return result;
}

uint64_t sub_2689E534C()
{

  OUTLINED_FUNCTION_17_12();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2689E53B8()
{

  OUTLINED_FUNCTION_17_12();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void OUTLINED_FUNCTION_7_16()
{

  sub_26894B450();
}

uint64_t sub_2689E54E0(unint64_t a1)
{
  sub_2689E5570(a1);
  sub_2688D95C4(v2);
  v4 = v3;
  sub_2689E59D0(a1);
  sub_268984794(v4);
  sub_2688DA200();
}

void sub_2689E5570(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5798, &qword_268B3BDE0);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = v21 - v3;
  v27 = sub_268B34EA4();
  v4 = *(v27 - 8);
  v5 = MEMORY[0x28223BE20](v27);
  v29 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - v7;
  v28 = sub_268B34DE4();
  v31 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_268B382A4())
  {
    v38 = MEMORY[0x277D84F90];
    sub_26894476C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return;
    }

    v12 = 0;
    v13 = v38;
    v25 = a1;
    v26 = a1 & 0xC000000000000001;
    v23 = (v4 + 16);
    v24 = "l.MediaReference";
    v22 = (v4 + 8);
    v21[0] = a1 & 0xFFFFFFFFFFFFFF8;
    v21[1] = v31 + 32;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v26)
      {
        v15 = MEMORY[0x26D625BD0](v12, a1);
      }

      else
      {
        if (v12 >= *(v21[0] + 16))
        {
          goto LABEL_18;
        }

        v15 = *(a1 + 8 * v12 + 32);
      }

      v4 = v15;
      sub_268B34E94();
      sub_268B34E64();
      v16 = sub_2689EF3F0(v4);
      if (v17)
      {
        v36 = v16;
        v37 = v17;
        v34 = 45;
        v35 = 0xE100000000000000;
        v32 = 95;
        v33 = 0xE100000000000000;
        sub_26895EF2C();
        sub_268B380B4();
      }

      sub_268B34E74();
      sub_268B34E84();
      v18 = v27;
      __swift_storeEnumTagSinglePayload(v30, 1, 1, v27);
      (*v23)(v29, v8, v18);
      sub_268B34DC4();
      (*v22)(v8, v18);

      v38 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_26894476C(v19 > 1, v20 + 1, 1);
        v13 = v38;
      }

      *(v13 + 16) = v20 + 1;
      (*(v31 + 32))(v13 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v20, v10, v28);
      ++v12;
      a1 = v25;
      if (v14 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

uint64_t sub_2689E59D0(unint64_t a1)
{
  v39 = sub_268B37A54();
  v2 = *(v39 - 8);
  result = MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    result = sub_268B382A4();
    v6 = result;
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  if (v6 >= 1)
  {
    v7 = 0;
    v41 = a1 & 0xC000000000000001;
    v35 = (v2 + 8);
    v36 = (v2 + 16);
    *&v4 = 138412290;
    v34 = v4;
    v8 = MEMORY[0x277D84F90];
    v40 = v6;
    v37 = a1;
    do
    {
      if (v41)
      {
        v9 = MEMORY[0x26D625BD0](v7, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = sub_268988504(v9);
      if (v12)
      {
        v13 = v11;
        v14 = v12;
        v44 = v7;
        v15 = sub_268B36434();
        OUTLINED_FUNCTION_245(v15);
        v43 = sub_268B36424();
        v16 = sub_268B36124();
        OUTLINED_FUNCTION_245(v16);
        v45 = sub_268B36114();
        v17 = sub_268B36414();
        OUTLINED_FUNCTION_245(v17);
        v42 = sub_268B36404();
        v18 = sub_268B36194();
        OUTLINED_FUNCTION_245(v18);
        sub_268B36184();
        v50 = v13;
        v51 = v14;
        v48 = 40;
        v49 = 0xE100000000000000;
        v46 = 0;
        v47 = 0xE000000000000000;
        sub_26895EF2C();
        OUTLINED_FUNCTION_0_29();
        v19 = sub_268B380B4();
        v21 = v20;

        v50 = v19;
        v51 = v21;
        v48 = 41;
        v49 = 0xE100000000000000;
        v46 = 0;
        v47 = 0xE000000000000000;
        OUTLINED_FUNCTION_0_29();
        sub_268B380B4();

        sub_2689EF38C(v10);
        v50 = sub_268B37254();
        v51 = v22;
        MEMORY[0x28223BE20](v50);
        v23 = sub_268ACD018();

        if (v23)
        {
          sub_268B360F4();
        }

        sub_268B36174();

        sub_268B363F4();

        sub_268B36104();

        sub_268B36594();

        MEMORY[0x26D6256C0](v24);
        v6 = v40;
        v7 = v44;
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268B37D14();
        }

        sub_268B37D44();

        v8 = v52;
        a1 = v37;
      }

      else
      {
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v25 = v39;
        v26 = __swift_project_value_buffer(v39, qword_2802CDA10);
        (*v36)(v38, v26, v25);
        v27 = v10;
        v28 = sub_268B37A34();
        v29 = sub_268B37EE4();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = v34;
          *(v30 + 4) = v27;
          *v31 = v27;
          v32 = v27;
          _os_log_impl(&dword_2688BB000, v28, v29, "LanguageNLContextProvider.makeDisambiguationTaskBuilder found languageOption without a Name: %@ ", v30, 0xCu);
          sub_26898BED0(v31);
          MEMORY[0x26D6266E0](v31, -1, -1);
          v33 = v30;
          v6 = v40;
          MEMORY[0x26D6266E0](v33, -1, -1);
        }

        else
        {
          v32 = v28;
          v28 = v27;
        }

        (*v35)(v38, v39);
      }

      ++v7;
    }

    while (v6 != v7);
    return v8;
  }

  __break(1u);
  return result;
}

id sub_2689E5F64()
{
  if (qword_2802A4EE8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9C8;
  qword_2802CD960 = qword_2802CD9C8;

  return v1;
}

void sub_2689E5FC8()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36F44();
  OUTLINED_FUNCTION_3_8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  sub_268B354A4();
  v7 = MEMORY[0x277D84F90];
  v8 = OUTLINED_FUNCTION_28_9();
  v9 = OUTLINED_FUNCTION_28_9();
  sub_268B36F34();
  v50 = type metadata accessor for BaseDialogProvider();
  OUTLINED_FUNCTION_20_14();
  v10 = swift_allocObject();
  v49 = v0;
  v67 = v0;
  v68 = MEMORY[0x277D5F6F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v66);
  (*(v2 + 32))(boxed_opaque_existential_1, v6, v0);
  *(v10 + 16) = 0;
  *(v10 + 24) = v8;
  *(v10 + 72) = v9;
  sub_2688E6514(&v66, v10 + 32);
  sub_2689209D0(&v66);
  sub_268AD33CC(&v63);
  sub_268B36754();
  v48 = sub_268B36734();
  v12 = sub_268B36C54();
  v13 = sub_268B36C44();
  v14 = type metadata accessor for MultiUserConnectionProvider();
  v15 = swift_allocObject();
  *(v15 + 16) = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  __swift_mutable_project_boxed_opaque_existential_1(&v66, v67);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v18 = OUTLINED_FUNCTION_16_17(v17);
  v19(v18);
  v20 = *v7;
  v61 = v12;
  v62 = MEMORY[0x277D5F680];
  *&v60 = v13;
  v21 = type metadata accessor for AnalyticsServiceLogger();
  v58 = v21;
  v59 = &off_28795F5E0;
  *&v57 = v20;
  v55 = v14;
  v56 = &off_287960608;
  v54[0] = v15;
  v22 = type metadata accessor for AnalyticsServiceImpl();
  v23 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v57, v21);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v26 = OUTLINED_FUNCTION_16_17(v25);
  v27(v26);
  __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_0();
  v30 = OUTLINED_FUNCTION_25_7(v29);
  v31(v30);
  v32 = *v7;
  v33 = *v20;
  v23[5] = v21;
  v23[6] = &off_28795F5E0;
  v23[2] = v32;
  v23[21] = v14;
  v23[22] = &off_287960608;
  v23[18] = v33;
  sub_2688E6514(&v63, (v23 + 7));
  v23[12] = v48;
  sub_2688E6514(&v60, (v23 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  __swift_destroy_boxed_opaque_existential_0Tm(&v57);
  __swift_destroy_boxed_opaque_existential_0Tm(&v66);
  v67 = v49;
  v68 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v66);
  sub_268B36F34();
  v34 = sub_268B36C44();
  v64 = v12;
  v65 = MEMORY[0x277D5F680];
  *&v63 = v34;
  v35 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v36 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  sub_2689E65E8();
  v58 = v50;
  v59 = &off_2879561B0;
  *&v57 = v10;
  v56 = &off_2879539D0;
  v55 = v22;
  v54[0] = v23;
  v52 = &type metadata for UserDefaultsProviderImpl;
  v53 = &off_287952DF0;
  v51[0] = v36;
  type metadata accessor for WhatDidTheySayHandleIntentStrategy();
  v37 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v54, v22);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  v40 = OUTLINED_FUNCTION_25_7(v39);
  v41(v40);
  __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_0();
  v44 = OUTLINED_FUNCTION_15_14(v43);
  v45(v44);
  v46 = *v10;
  v37[16] = v22;
  v37[17] = &off_2879539D0;
  v37[13] = *"setVolumeLevelIntent";
  v37[31] = &type metadata for UserDefaultsProviderImpl;
  v37[32] = &off_287952DF0;
  v37[28] = v46;
  sub_2688E6514(&v69, (v37 + 2));
  sub_26890C900(&v57, (v37 + 7));
  type metadata accessor for DialogProvider();
  v47 = swift_allocObject();
  sub_2688E6514(&v57, v47 + 16);
  v37[12] = v47;
  sub_2688E6514(&v66, (v37 + 18));
  sub_2688E6514(&v63, (v37 + 23));
  sub_2688E6514(&v60, (v37 + 33));
  __swift_destroy_boxed_opaque_existential_0Tm(v51);
  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  OUTLINED_FUNCTION_23();
}

void sub_2689E65E8()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = sub_268B36F44();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  sub_268B354A4();
  v10 = sub_268B36F34();
  sub_268AF7C54(v30, v10);
  __swift_mutable_project_boxed_opaque_existential_1(v30, v30[3]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v13 = OUTLINED_FUNCTION_15_14(v12);
  v14(v13);
  v15 = *v0;
  v28 = v3;
  v29 = MEMORY[0x277D5F6F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
  (*(v5 + 16))(boxed_opaque_existential_1, v9, v3);
  v17 = type metadata accessor for AnalyticsServiceImpl();
  v26[3] = v17;
  v26[4] = &off_2879539D0;
  v26[0] = v15;
  v18 = type metadata accessor for SiriPlaybackControlsOutputProvider();
  v19 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v26, v17);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v23 = (v22 - v21);
  (*(v24 + 16))(v22 - v21);
  v25 = *v23;
  v19[15] = v17;
  v19[16] = &off_2879539D0;
  v19[12] = v25;
  sub_2688E6514(&v31, (v19 + 7));
  sub_2688E6514(&v27, (v19 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  (*(v5 + 8))(v9, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  v2[3] = v18;
  v2[4] = &off_28795B170;
  *v2 = v19;
  OUTLINED_FUNCTION_23();
}

void sub_2689E6860()
{
  OUTLINED_FUNCTION_26();
  __dst = v0;
  v2 = v1;
  v4 = v3;
  v46 = v6;
  v47 = v5;
  v8 = v7;
  v9 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v48 = v13;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v15 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v44 = *(v11 + 16);
  v45 = v15;
  (v44)(v0);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_14();
    v43 = v8;
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "WhatDidTheySayHandleIntentStrategy.makeIntentHandledResponse()", v18, 2u);
    OUTLINED_FUNCTION_12();
  }

  v19 = *(v11 + 8);
  v19(v0, v9);
  v20 = [v8 device];
  if (v20)
  {
    v21 = v20;
    LOWORD(v51[0]) = 0;
    BYTE2(v51[0]) = 0;
    v51[1] = 0;
    v51[2] = 0;
    v51[3] = 1;
    memset(&v51[4], 0, 59);
    memcpy(v52, &v51[1], 0x51uLL);
    sub_2688C058C(v52, &qword_2802A5C88, qword_268B418C0);
    LODWORD(v51[1]) = 0;
    memset(&v51[2], 0, 72);
    LOBYTE(v51[11]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_268B3BBA0;
    *(v22 + 32) = v21;
    v23 = v8;
    v24 = v21;
    sub_268AE3884();

    v25 = sub_268AAC1F4(__dst + 2);
    memcpy(v54, v51, 0x5BuLL);
    v26 = swift_allocObject();
    v26[2] = __dst;
    v26[3] = v23;
    v26[4] = v46;
    v26[5] = v47;
    v26[6] = v4;
    v26[7] = v2;
    v26[8] = v25;

    v27 = v23;
    v28 = v46;

    sub_268A36BF4(v54, sub_2689EA094, v26, v29, v30, v31, v32, v33, v43, v44, v45, v46, v47, v48, __dst, v50, v51[0], v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7], v51[8], v51[9], v51[10], v51[11], v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8], v52[9], v52[10], v53[0], v53[1], v53[2], v53[3], v53[4]);

    memcpy(v53, v51, 0x5BuLL);
    sub_2689EA0A8(v53);
  }

  else
  {
    v44(v48, v45, v9);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_7(&dword_2688BB000, v36, v37, "No device present in intent");
      OUTLINED_FUNCTION_12();
    }

    v19(v48, v9);
    __swift_project_boxed_opaque_existential_1(__dst + 13, __dst[16]);
    sub_2688C2ECC();
    v38 = OUTLINED_FUNCTION_26_1();
    *v39 = -109;
    OUTLINED_FUNCTION_5_10();
    sub_26894B450();

    v40 = OUTLINED_FUNCTION_26_1();
    *v41 = -109;
    v42 = OUTLINED_FUNCTION_24_10(v40);
    v4(v42);
    sub_2688C058C(v54, &unk_2802A57C0, &qword_268B3BE00);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689E6C90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7, uint64_t a8)
{
  v50 = a8;
  v51 = a4;
  v59 = a6;
  v60 = a7;
  v57 = a3;
  v58 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v10 - 8);
  v52 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v55 = &v50 - v16;
  v56 = sub_268B34E24();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v24);
  v26 = (&v50 - v25);
  sub_2688F1FA4(a1, &v50 - v25, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    v28 = sub_268B36E84();
    if (v29)
    {
      v30 = v29;
      v51 = v28;
      v31 = a2;
      v32 = v57;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      v32 = v57;
      sub_268947F08();
      v51 = v37;
      v30 = v38;

      v31 = a2;
    }

    v39 = __swift_project_boxed_opaque_existential_1(v31 + 13, v31[16]);
    (*(v54 + 104))(v53, *MEMORY[0x277D5BC00], v56);
    v40 = sub_268B350F4();
    v41 = v55;
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v40);
    v42 = sub_268B34B94();
    v43 = v52;
    __swift_storeEnumTagSinglePayload(v52, 1, 1, v42);
    v44 = *v39;
    sub_2688F1FA4(v41, v15, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v15, 1, v40) == 1)
    {
      sub_2688C058C(v15, &unk_2802A57B0, &unk_268B3CE00);
      v45 = 0;
      v46 = 0;
    }

    else
    {
      v45 = sub_268B350B4();
      v46 = v47;
      (*(*(v40 - 8) + 8))(v15, v40);
    }

    v48 = v53;
    sub_2688E3AD8(v58, v53, v32, v45, v46, v51, v30, v43, v44);

    sub_2688C058C(v43, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v55, &unk_2802A57B0, &unk_268B3CE00);
    (*(v54 + 8))(v48, v56);
    __swift_project_boxed_opaque_existential_1(v31 + 13, v31[16]);
    sub_26894B450();
    v61[0] = v27;
    v62 = 1;
    v49 = v27;
    v59(v61);

    return sub_2688C058C(v61, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v26, v23);
    __swift_project_boxed_opaque_existential_1(a2 + 18, a2[21]);
    v33 = sub_268B36FA4();
    sub_2688F1FA4(v23, v21, &unk_2802A56E0, &unk_268B3CDF0);
    v34 = *&v21[*(v18 + 48)];
    if (v33)
    {
      sub_2689E729C();
    }

    else
    {
      sub_2689E7A1C();
    }

    sub_2688C058C(v23, &unk_2802A56E0, &unk_268B3CDF0);
    v35 = sub_268B350F4();
    return (*(*(v35 - 8) + 8))(v21, v35);
  }
}

void sub_2689E729C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v95 = v3;
  v96 = v4;
  v89 = v5;
  v104 = v6;
  v105 = v7;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74();
  v94 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74();
  v88 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v92 = v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  v100 = &v83 - v20;
  OUTLINED_FUNCTION_9();
  v101 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v99 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_0();
  v98 = v24 - v23;
  OUTLINED_FUNCTION_9();
  v25 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  v90 = v29;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_15();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  v93 = v33;
  OUTLINED_FUNCTION_8();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v83 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = OUTLINED_FUNCTION_27_4();
  v39 = *(v38 - 8);
  (*(v39 + 16))(v0, v104, v38);
  v102 = v31;
  v40 = *(v31 + 48);
  v104 = v0;
  *(v0 + v40) = v9;
  v41 = qword_2802A4F30;
  v42 = v9;
  if (v41 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v43 = __swift_project_value_buffer(v25, qword_2802CDA10);
  v86 = *(v27 + 16);
  v87 = v43;
  v103 = v25;
  (v86)(v1);
  v44 = sub_268B37A34();
  v45 = sub_268B37ED4();
  v46 = os_log_type_enabled(v44, v45);
  v97 = v39;
  if (v46)
  {
    v47 = OUTLINED_FUNCTION_14();
    *v47 = 0;
    _os_log_impl(&dword_2688BB000, v44, v45, "WhatDidTheySayHandleIntentStrategy#intentHandledResponse...", v47, 2u);
    v39 = v97;
    OUTLINED_FUNCTION_12();
  }

  v48 = *(v27 + 8);
  v91 = v27 + 8;
  v85 = v48;
  v48(v1, v103);
  OUTLINED_FUNCTION_12_14();
  sub_268947F08();
  v84 = v49;
  v51 = v50;
  v52 = __swift_project_boxed_opaque_existential_1(v1 + 13, v1[16]);
  (*(v99 + 104))(v98, *MEMORY[0x277D5BC10], v101);
  sub_2688F1FA4(v104, v37, &unk_2802A56E0, &unk_268B3CDF0);

  v53 = v100;
  (*(v39 + 32))(v100, v37, v38);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v38);
  v57 = sub_268B34B94();
  v58 = v88;
  __swift_storeEnumTagSinglePayload(v88, 1, 1, v57);
  v59 = *v52;
  v60 = v53;
  v61 = v92;
  sub_2688F1FA4(v60, v92, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v61, 1, v38) == 1)
  {
    sub_2688C058C(v61, &unk_2802A57B0, &unk_268B3CE00);
    v62 = 0;
    v63 = 0;
  }

  else
  {
    v62 = sub_268B350B4();
    v63 = v64;
    (*(v39 + 8))(v61, v38);
  }

  v92 = v38;
  v82 = v59;
  v65 = v98;
  v66 = v105;
  sub_2688E3AD8(v89, v98, v105, v62, v63, v84, v51, v58, v82);

  sub_2688C058C(v58, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v100, &unk_2802A57B0, &unk_268B3CE00);
  (*(v99 + 8))(v65, v101);
  OUTLINED_FUNCTION_10_15();
  sub_268948308(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_5_10();
  sub_26894B450();
  v67 = v90;
  v68 = v103;
  v86(v90, v87, v103);
  v69 = sub_268B37A34();
  v70 = sub_268B37ED4();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = OUTLINED_FUNCTION_14();
    *v71 = 0;
    _os_log_impl(&dword_2688BB000, v69, v70, "WhatDidTheySayHandleIntentStrategy#intentHandledResponse returning output", v71, 2u);
    OUTLINED_FUNCTION_12();
  }

  v85(v67, v68);
  v72 = v2[36];
  v73 = v2[37];
  __swift_project_boxed_opaque_existential_1(v2 + 33, v72);
  v74 = v104;
  v75 = v93;
  sub_2688F1FA4(v104, v93, &unk_2802A56E0, &unk_268B3CDF0);
  v76 = *(v75 + *(v102 + 48));
  v77 = v94;
  sub_268A82B50(v66, v94);
  sub_268B35044();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  (*(v73 + 8))(v75, v76, v77, MEMORY[0x277D84F90], 1, v95, v96, v72, v73);

  sub_2688C058C(v77, &qword_2802A57F0, &qword_268B3DDB0);
  sub_2688C058C(v74, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v97 + 8))(v75, v92);
  OUTLINED_FUNCTION_23();
}

void sub_2689E7A1C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v91 = v4;
  v92 = v3;
  v89 = v5;
  v84 = v6;
  v85 = v7;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74();
  v87 = v14;
  OUTLINED_FUNCTION_9();
  v90 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v88 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v86 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_74();
  v83 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v23 = OUTLINED_FUNCTION_22(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v82 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  v95 = &v80 - v26;
  OUTLINED_FUNCTION_9();
  v96 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v94 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_0();
  v93 = v30 - v29;
  OUTLINED_FUNCTION_9();
  v31 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_0();
  v37 = v36 - v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v80 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = OUTLINED_FUNCTION_27_4();
  v81 = *(v43 - 8);
  (*(v81 + 16))(v0, v11, v43);
  v44 = *(v38 + 48);
  v97 = v0;
  *(v0 + v44) = v9;
  v45 = qword_2802A4F30;
  v46 = v9;
  if (v45 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v47 = __swift_project_value_buffer(v31, qword_2802CDA10);
  (*(v33 + 16))(v37, v47, v31);
  v48 = sub_268B37A34();
  v49 = sub_268B37ED4();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = OUTLINED_FUNCTION_14();
    *v50 = 0;
    _os_log_impl(&dword_2688BB000, v48, v49, "WhatDidTheySayHandleIntentStrategy#legacyHandledResponse...", v50, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v33 + 8))(v37, v31);
  OUTLINED_FUNCTION_12_14();
  v51 = v85;
  sub_268947F08();
  v80 = v52;
  v54 = v53;
  v55 = __swift_project_boxed_opaque_existential_1(v2 + 13, v2[16]);
  (*(v94 + 104))(v93, *MEMORY[0x277D5BC10], v96);
  sub_2688F1FA4(v97, v42, &unk_2802A56E0, &unk_268B3CDF0);

  v56 = v81;
  v57 = v95;
  (*(v81 + 32))(v95, v42, v43);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v43);
  v61 = sub_268B34B94();
  v62 = v83;
  __swift_storeEnumTagSinglePayload(v83, 1, 1, v61);
  v63 = *v55;
  v64 = v82;
  sub_2688F1FA4(v57, v82, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v64, 1, v43) == 1)
  {
    sub_2688C058C(v64, &unk_2802A57B0, &unk_268B3CE00);
    v65 = 0;
    v66 = 0;
  }

  else
  {
    v65 = sub_268B350B4();
    v66 = v67;
    (*(v56 + 8))(v64, v43);
  }

  v68 = v86;
  v79 = v63;
  v69 = v93;
  sub_2688E3AD8(v84, v93, v51, v65, v66, v80, v54, v62, v79);

  sub_2688C058C(v62, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v95, &unk_2802A57B0, &unk_268B3CE00);
  (*(v94 + 8))(v69, v96);
  OUTLINED_FUNCTION_10_15();
  sub_268948308(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_5_10();
  sub_26894B450();
  sub_268A82B50(v51, v68);
  v100[3] = sub_268B354F4();
  v100[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v100);
  v70 = 0;
  if (sub_2689F0948())
  {
    v70 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
    sub_2688C063C();
    v71 = sub_268B38064();
    [v70 setMinimumAutoDismissalTimeInMs_];

    [v70 setPremptivelyResumeMedia_];
  }

  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_268B34CA4();
  v72 = v88;
  v73 = v87;
  v74 = v90;
  (*(v88 + 16))(v87, v68, v90);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v74);
  v99 = 0;
  memset(v98, 0, sizeof(v98));
  v78 = v97;
  sub_268B34EF4();

  sub_2688C058C(v98, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v73, &qword_2802A57F0, &qword_268B3DDB0);
  v101 = 0;
  v92(v100);
  (*(v72 + 8))(v68, v74);
  sub_2688C058C(v78, &unk_2802A56E0, &unk_268B3CDF0);
  sub_2688C058C(v100, &unk_2802A57C0, &qword_268B3BE00);
  OUTLINED_FUNCTION_23();
}

void sub_2689E8230()
{
  OUTLINED_FUNCTION_26();
  v92 = v1;
  v93 = v0;
  v99 = v2;
  v100 = v3;
  v5 = v4;
  v91 = v6;
  sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v87 = v8;
  v88 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v86 = v10 - v9;
  OUTLINED_FUNCTION_9();
  v11 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v85 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  v18 = &v81 - v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v20 = __swift_project_value_buffer(v11, qword_2802CDA10);
  v21 = v13 + 16;
  v96 = *(v13 + 16);
  v97 = v20;
  (v96)(v0);
  v22 = sub_268B37A34();
  v23 = sub_268B37ED4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_14();
    *v24 = 0;
    _os_log_impl(&dword_2688BB000, v22, v23, "WhatDidTheySayHandleIntentStrategy.makeFailureHandlingIntentResponse()", v24, 2u);
    OUTLINED_FUNCTION_12();
  }

  v95 = *(v13 + 8);
  v95(v0, v11);
  v25 = sub_268B36E84();
  v98 = v13 + 8;
  if (v26)
  {
    v89 = v26;
    v90 = v25;
  }

  else
  {
    v27 = OBJC_IVAR___WhatDidTheySayIntentResponse_code;
    swift_beginAccess();
    v103[0] = *(v5 + v27);
    sub_268B38404();
    sub_268947F08();
    v89 = v29;
    v90 = v28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  OUTLINED_FUNCTION_20_14();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_268B3BBC0;
  *(v30 + 32) = 0xD000000000000010;
  *(v30 + 40) = 0x8000000268B572E0;
  v31 = OBJC_IVAR___WhatDidTheySayIntentResponse_code;
  swift_beginAccess();
  v103[0] = *(v5 + v31);
  sub_268B38404();
  v32 = sub_268B36E94();
  v34 = v33;

  *(v30 + 72) = MEMORY[0x277D837D0];
  *(v30 + 48) = v32;
  *(v30 + 56) = v34;
  v94 = sub_268B37B84();
  sub_268B36754();
  v35 = sub_268B36734();
  if (!v35)
  {
    v35 = sub_268B36744();
  }

  v36 = v35;
  v84 = v21;
  v96(v18, v97, v11);

  v37 = sub_268B37A34();
  v38 = sub_268B37ED4();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v83 = v11;
    v40 = v39;
    v81 = swift_slowAlloc();
    v82 = v18;
    v103[0] = v81;
    *v40 = 136315138;
    sub_268B36714();
    v41 = v31;
    v42 = v5;
    v43 = v36;
    v44 = v86;
    sub_268B36B14();

    v45 = sub_268B36784();
    v47 = v46;
    v48 = v44;
    v36 = v43;
    v5 = v42;
    v31 = v41;
    (*(v87 + 8))(v48, v88);
    v49 = sub_26892CDB8(v45, v47, v103);

    *(v40 + 4) = v49;
    _os_log_impl(&dword_2688BB000, v37, v38, "WhatDidTheySayHandleIntentStrategy.makeFailureHandlingIntentResponse cached responseMode = %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v81);
    OUTLINED_FUNCTION_12();
    v11 = v83;
    OUTLINED_FUNCTION_12();

    v50 = v82;
  }

  else
  {

    v50 = v18;
  }

  v95(v50, v11);
  v51 = v92;
  v52 = v99;
  OUTLINED_FUNCTION_20_14();
  v53 = swift_allocObject();
  v54 = v93;
  v53[2] = v36;
  v53[3] = v54;
  v55 = v90;
  v53[4] = v91;
  v53[5] = v52;
  v56 = v89;
  v53[6] = v55;
  v53[7] = v56;
  v57 = v100;
  v53[8] = v51;
  v53[9] = v57;
  switch(*(v5 + v31))
  {
    case 'e':

      v58 = v52;

      OUTLINED_FUNCTION_6_23();
      sub_268A367E4(0);
      goto LABEL_17;
    case 'f':
      LOWORD(v102[0]) = 0;
      BYTE2(v102[0]) = 0;
      v102[1] = 0;
      v102[2] = 0;
      v102[3] = 1;
      memset(&v102[4], 0, 61);

      v64 = v52;

      v65 = [v64 device];
      if (v65)
      {
        v66 = v65;
        memcpy(v103, &v102[1], 0x51uLL);
        sub_2688C058C(v103, &qword_2802A5C88, qword_268B418C0);
        LODWORD(v102[1]) = 0;
        memset(&v102[2], 0, 72);
        LOBYTE(v102[11]) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_268B3BBA0;
        *(v67 + 32) = v66;
        v68 = v66;
        sub_268AE38AC(v67, v69, v70, v71);
      }

      memcpy(v103, v102, 0x5DuLL);
      OUTLINED_FUNCTION_6_23();
      sub_268ABB0EC();

      memcpy(v101, v102, 0x5DuLL);
      sub_2689E9FB8(v101);
      break;
    case 'g':
      v59 = v52;
      v60 = v54[10];
      v61 = v54[11];
      __swift_project_boxed_opaque_existential_1(v54 + 7, v60);

      v62 = v59;

      sub_2689CE860(0xD000000000000025, 0x8000000268B59E30, v94, sub_2689E9F84, v53, v60, v61);
      goto LABEL_17;
    case 'h':

      v63 = v52;

      sub_268A363C0(0, 0, 0);
LABEL_17:

      break;
    default:

      v72 = v52;

      v73 = v85;
      v96(v85, v97, v11);
      v74 = sub_268B37A34();
      v75 = sub_268B37ED4();
      if (os_log_type_enabled(v74, v75))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_7(&dword_2688BB000, v76, v77, "WhatDidTheySayHandleIntentStrategy.makeFailureHandlingIntentResponse()");
        OUTLINED_FUNCTION_12();
      }

      v95(v73, v11);
      sub_2688C2ECC();
      v78 = swift_allocError();
      *v79 = -107;
      v80 = OUTLINED_FUNCTION_24_10(v78);
      v51(v80);

      sub_2688C058C(v103, &unk_2802A57C0, &qword_268B3BE00);
      break;
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689E8C2C(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v123 = a8;
  v121 = a6;
  v122 = a7;
  v119 = a3;
  v120 = a5;
  v124 = a4;
  v126 = a2;
  v113 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v8 - 8);
  v112 = &v103 - v9;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v10 = MEMORY[0x28223BE20](v117);
  v111 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v105 = &v103 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v103 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v109 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v103 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v106 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v116 = &v103 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v103 - v26;
  MEMORY[0x28223BE20](v25);
  v107 = &v103 - v28;
  v118 = sub_268B34E24();
  v125 = *(v118 - 8);
  v29 = MEMORY[0x28223BE20](v118);
  v115 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v114 = &v103 - v31;
  v32 = sub_268B37A54();
  v129 = *(v32 - 8);
  v33 = MEMORY[0x28223BE20](v32);
  v110 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v103 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v103 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v40);
  v42 = (&v103 - v41);
  sub_2688F1FA4(v113, &v103 - v41, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = *v42;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v32, qword_2802CDA10);
    (*(v129 + 16))(v39, v44, v32);
    v45 = sub_268B37A34();
    v46 = sub_268B37EE4();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v118;
    v49 = v107;
    if (v47)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_2688BB000, v45, v46, "WhatDidTheySayHandleIntentStrategy.makeFailureHandlingIntentResponse failed to execute dialog", v50, 2u);
      MEMORY[0x26D6266E0](v50, -1, -1);
    }

    (*(v129 + 8))(v39, v32);
    v51 = __swift_project_boxed_opaque_existential_1(v126 + 13, v126[16]);
    (*(v125 + 104))(v114, *MEMORY[0x277D5BC00], v48);
    v52 = sub_268B350F4();
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v52);
    v53 = *MEMORY[0x277D5B8E0];
    v54 = sub_268B34B94();
    v55 = v108;
    (*(*(v54 - 8) + 104))(v108, v53, v54);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v54);
    v56 = *v51;
    sub_2688F1FA4(v49, v27, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v27, 1, v52) == 1)
    {
      sub_2688C058C(v27, &unk_2802A57B0, &unk_268B3CE00);
      v57 = 0;
      v58 = 0;
    }

    else
    {
      v57 = sub_268B350B4();
      v58 = v78;
      (*(*(v52 - 8) + 8))(v27, v52);
    }

    v101 = v56;
    v79 = v114;
    sub_2688E3AD8(v119, v114, v124, v57, v58, v120, v121, v55, v101);

    sub_2688C058C(v55, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v49, &unk_2802A57B0, &unk_268B3CE00);
    (*(v125 + 8))(v79, v48);
    __swift_project_boxed_opaque_existential_1(v126 + 13, v126[16]);
    sub_2688C2ECC();
    v80 = swift_allocError();
    *v81 = -89;
    sub_26894B450();

    v82 = swift_allocError();
    *v83 = -89;
    v127[0] = v82;
    v128 = 1;
    v122(v127);

    return sub_2688C058C(v127, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v42, v15);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v59 = __swift_project_value_buffer(v32, qword_2802CDA10);
    v60 = *(v129 + 16);
    v108 = v59;
    v107 = v60;
    (v60)(v37);
    v61 = sub_268B37A34();
    v62 = sub_268B37ED4();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_2688BB000, v61, v62, "WhatDidTheySayHandleIntentStrategy.makeFailureHandlingIntentResponse executed failure dialog creating output", v63, 2u);
      MEMORY[0x26D6266E0](v63, -1, -1);
    }

    v64 = *(v129 + 8);
    v129 += 8;
    v104 = v64;
    v64(v37, v32);
    v65 = __swift_project_boxed_opaque_existential_1(v126 + 13, v126[16]);
    v66 = v118;
    (*(v125 + 104))(v115, *MEMORY[0x277D5BC00], v118);
    v114 = v15;
    v67 = v105;
    sub_2688F1FA4(v15, v105, &unk_2802A56E0, &unk_268B3CDF0);

    v68 = sub_268B350F4();
    v69 = *(v68 - 8);
    v70 = v116;
    (*(v69 + 32))(v116, v67, v68);
    __swift_storeEnumTagSinglePayload(v70, 0, 1, v68);
    v71 = sub_268B34B94();
    v72 = v109;
    __swift_storeEnumTagSinglePayload(v109, 1, 1, v71);
    v73 = *v65;
    v74 = v106;
    sub_2688F1FA4(v70, v106, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v74, 1, v68);
    v113 = v69;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v74, &unk_2802A57B0, &unk_268B3CE00);
      v76 = 0;
      v77 = 0;
    }

    else
    {
      v105 = v73;
      v85 = v74;
      v76 = sub_268B350B4();
      v77 = v86;
      v73 = v105;
      (*(v69 + 8))(v85, v68);
    }

    v102 = v73;
    v87 = v115;
    sub_2688E3AD8(v119, v115, v124, v76, v77, v120, v121, v72, v102);

    sub_2688C058C(v72, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v116, &unk_2802A57B0, &unk_268B3CE00);
    (*(v125 + 8))(v87, v66);
    __swift_project_boxed_opaque_existential_1(v126 + 13, v126[16]);
    sub_2688C2ECC();
    v88 = swift_allocError();
    *v89 = -108;
    sub_26894B450();

    v90 = v110;
    (v107)(v110, v108, v32);
    v91 = sub_268B37A34();
    v92 = sub_268B37ED4();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_2688BB000, v91, v92, "WhatDidTheySayHandleIntentStrategy.makeFailureHandlingIntentResponse returning failure output", v93, 2u);
      MEMORY[0x26D6266E0](v93, -1, -1);
    }

    v104(v90, v32);
    v94 = v126[36];
    v95 = v126[37];
    __swift_project_boxed_opaque_existential_1(v126 + 33, v94);
    v96 = v114;
    v97 = v111;
    sub_2688F1FA4(v114, v111, &unk_2802A56E0, &unk_268B3CDF0);
    v98 = *(v97 + *(v117 + 48));
    v99 = v112;
    sub_268A82B50(v124, v112);
    v100 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v99, 0, 1, v100);
    (*(v95 + 40))(v97, v98, v99, v122, v123, v94, v95);

    sub_2688C058C(v99, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v96, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v113 + 8))(v97, v68);
  }
}

void *sub_2689E99D8()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_26895F84C((v0 + 7));

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  return v0;
}

uint64_t sub_2689E9A30()
{
  sub_2689E99D8();

  return MEMORY[0x2821FE8D8](v0, 304, 7);
}

uint64_t sub_2689E9A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for WhatDidTheySayHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689E9B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for WhatDidTheySayHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689E9B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for WhatDidTheySayHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689E9C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for WhatDidTheySayHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689E9C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for WhatDidTheySayHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_2689E9D3C()
{
  if (qword_2802A4E18 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD960;

  return v1;
}

uint64_t sub_2689E9D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for WhatDidTheySayHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_2689E9DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for WhatDidTheySayHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_2689E9E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for WhatDidTheySayHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_2689E9EA8(uint64_t a1)
{
  result = sub_2689E9ED0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2689E9ED0()
{
  result = qword_2802A6E10;
  if (!qword_2802A6E10)
  {
    type metadata accessor for WhatDidTheySayHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6E10);
  }

  return result;
}

uint64_t sub_2689E9F28()
{

  OUTLINED_FUNCTION_20_14();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2689EA034()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t OUTLINED_FUNCTION_24_10(uint64_t a1)
{
  *(v1 - 184) = a1;
  *(v1 - 144) = 1;
  return v1 - 184;
}

uint64_t OUTLINED_FUNCTION_28_9()
{

  return sub_268B37B84();
}

Swift::String_optional __swiftcall UsoTask_skipBackward_uso_NoEntity.verb()()
{
  v0 = 0x73756F6976657270;
  v1 = 0xE800000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_skipBackward_uso_NoEntity.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
      }

      sub_268B35B44();

      return v2;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2689EA4B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_2689EA50C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_2689EA560(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2689EA5B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2689EA608(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2689EA65C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2689EA6B0(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2689EA704(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2689EA768(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2689EA7BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2689EA820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2689EA884(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2689EA8E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_2689EA94C(uint64_t a1)
{
  result = sub_2689EA9F8(&qword_2802A6E18, &protocol conformance descriptor for UsoTask_skipBackward_uso_NoEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689EA9F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B362C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id GetVolumeLevelIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_2689EAA74()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v46 = v2;
  v3 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v45 = v7;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v9 = __swift_project_value_buffer(v3, qword_2802CDA10);
  v10 = *(v5 + 16);
  v10(v0, v9, v3);
  v11 = sub_268B37A34();
  v12 = sub_268B37ED4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v46 & 1;
    _os_log_impl(&dword_2688BB000, v11, v12, "Getting routeId from intent. PreferContextRouteId: %{BOOL}d", v13, 8u);
    v1 = v0;
    OUTLINED_FUNCTION_12();
  }

  v44 = *(v5 + 8);
  v44(v0, v3);
  v14 = [v1 device];
  if (v14)
  {
    v15 = v14;
    v16 = v1;
    v17 = [v14 routeId];

    if (v17)
    {
      v18 = sub_268B37BF4();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v1 = v16;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  sub_268B36C54();
  v21 = sub_268B36C24();
  if (v20)
  {
    if (v18 == v21 && v20 == v22)
    {
    }

    else
    {
      v24 = sub_268B38444();

      if ((v24 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v25 = sub_268A3239C();
    if (v26)
    {
      v27 = v25;
      v28 = v26;
      v10(v45, v9, v3);

      v29 = sub_268B37A34();
      v30 = sub_268B37F04();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v47 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_26892CDB8(v27, v28, &v47);
        OUTLINED_FUNCTION_37_7();
        _os_log_impl(v33, v34, v35, v36, v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      v44(v45, v3);
      goto LABEL_35;
    }
  }

  else
  {
  }

LABEL_24:
  v37 = [v1 device];
  v38 = v37;
  if (v46)
  {
    if (v37)
    {
      v39 = [v37 context];

      if (v39)
      {
        v40 = [v39 routeId];

        if (v40)
        {
          sub_268B37BF4();

          goto LABEL_35;
        }
      }
    }

    v42 = [v1 device];
    if (!v42)
    {
      goto LABEL_35;
    }

    v38 = v42;
    v41 = [v42 routeId];
  }

  else
  {
    if (!v37)
    {
      goto LABEL_35;
    }

    v41 = [v37 routeId];
  }

  v43 = v41;

  if (v43)
  {
    sub_268B37BF4();
  }

LABEL_35:
  OUTLINED_FUNCTION_23();
}

void GetVolumeLevelIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  sub_268B36F44();
  OUTLINED_FUNCTION_1();
  v50 = v0;
  v51 = v1;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_0();
  v49 = (v3 - v2);
  v4 = sub_268B36C54();
  v47 = sub_268B36C44();
  sub_268B37204();
  v48 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v70);
  sub_268AD33CC(&v67);
  sub_268B36754();
  v46 = sub_268B36734();
  v5 = sub_268B36C44();
  v6 = type metadata accessor for MultiUserConnectionProvider();
  v7 = swift_allocObject();
  v8 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v7 + 16) = [v8 init];
  __swift_mutable_project_boxed_opaque_existential_1(v70, v70[3]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = (v11 - v10);
  (*(v13 + 16))(v11 - v10);
  v14 = *v12;
  v65 = v4;
  v66 = MEMORY[0x277D5F680];
  *&v64 = v5;
  v15 = type metadata accessor for AnalyticsServiceLogger();
  v62 = v15;
  v63 = &off_28795F5E0;
  v61[0] = v14;
  v59 = v6;
  v60 = &off_287960608;
  v58[0] = v7;
  v16 = type metadata accessor for AnalyticsServiceImpl();
  v17 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v61, v15);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v20 = OUTLINED_FUNCTION_78_1(v19);
  v21(v20);
  __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_0();
  v25 = (v24 - v23);
  (*(v26 + 16))(v24 - v23);
  v27 = *v14;
  v28 = *v25;
  v17[5] = v15;
  v17[6] = &off_28795F5E0;
  v17[2] = v27;
  v17[21] = v6;
  v17[22] = &off_287960608;
  v17[18] = v28;
  sub_2688E6514(&v67, (v17 + 7));
  v17[12] = v46;
  sub_2688E6514(&v64, (v17 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v58);
  __swift_destroy_boxed_opaque_existential_0Tm(v61);

  __swift_destroy_boxed_opaque_existential_0Tm(v70);
  sub_268B34C64();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D48, &qword_268B3D700);
  v30 = sub_268B37754();
  sub_268B36F34();
  v68 = v4;
  v69 = MEMORY[0x277D5F680];
  *&v67 = v47;
  v65 = v16;
  v66 = &off_2879539D0;
  *&v64 = v17;
  v62 = v29;
  v63 = sub_26892CBBC();
  v61[0] = v30;
  v59 = v50;
  v60 = MEMORY[0x277D5F6F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  (*(v51 + 16))(boxed_opaque_existential_1, v49, v50);
  VolumeLevelIntentHandler = type metadata accessor for GetVolumeLevelIntentHandler();
  v33 = objc_allocWithZone(VolumeLevelIntentHandler);
  __swift_mutable_project_boxed_opaque_existential_1(&v64, v65);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_0();
  v36 = OUTLINED_FUNCTION_78_1(v35);
  v37(v36);
  v38 = *v49;
  v57[3] = v16;
  v57[4] = &off_2879539D0;
  v57[0] = v38;
  sub_26890C900(v71, v56);
  sub_26890C900(v57, &v54);
  sub_26890C900(v70, v53);
  sub_268B376A4();

  v39 = sub_268B37694();
  __swift_mutable_project_boxed_opaque_existential_1(&v54, v55);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_0();
  v42 = OUTLINED_FUNCTION_78_1(v41);
  v43(v42);
  v44 = sub_26892D53C(v48, v56, *v49, v53, v39);
  __swift_destroy_boxed_opaque_existential_0Tm(&v54);
  *&v33[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceSelector] = v44;
  sub_26890C900(&v67, &v33[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_playbackController]);
  sub_26890C900(v71, &v33[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState]);
  sub_26890C900(v71, v56);
  sub_26890C900(v70, &v54);
  type metadata accessor for AceServiceHelper();
  v45 = swift_allocObject();
  sub_2688E6514(v56, v45 + 16);
  sub_2688E6514(&v54, v45 + 56);
  *&v33[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_aceServiceHelper] = v45;
  sub_26890C900(v61, &v33[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_accessoryVolumeController]);
  sub_26890C900(v58, &v33[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider]);
  v52.receiver = v33;
  v52.super_class = VolumeLevelIntentHandler;
  objc_msgSendSuper2(&v52, sel_init);

  (*(v51 + 8))(v49, v50);
  __swift_destroy_boxed_opaque_existential_0Tm(v70);
  __swift_destroy_boxed_opaque_existential_0Tm(v71);
  __swift_destroy_boxed_opaque_existential_0Tm(v58);
  __swift_destroy_boxed_opaque_existential_0Tm(v61);
  __swift_destroy_boxed_opaque_existential_0Tm(&v67);
  __swift_destroy_boxed_opaque_existential_0Tm(v57);
  __swift_destroy_boxed_opaque_existential_0Tm(&v64);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_2689EB678(void *a1, char *a2, void (**a3)(void, void *))
{
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v52 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v51 = &v51 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v54 = swift_allocObject();
  v55 = a3;
  *(v54 + 16) = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v53 = *(v7 + 16);
  (v53)(v13, v14, v6);
  v15 = sub_268B37A34();
  v16 = sub_268B37F04();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v6;
    v18 = v7;
    v19 = a1;
    v20 = a2;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "GetVolumeLevel.GetVolumeLevelIntentHandler.handle() called", v21, 2u);
    v22 = v21;
    a2 = v20;
    a1 = v19;
    v7 = v18;
    v6 = v17;
    MEMORY[0x26D6266E0](v22, -1, -1);
  }

  v23 = *(v7 + 8);
  v23(v13, v6);
  sub_2689EAA74();
  if (v25)
  {
    v26 = v25;
    v27 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v52 = v24;
      v28 = v51;
      (v53)(v51, v14, v6);
      v29 = sub_268B37A34();
      v30 = sub_268B37ED4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v53 = a2;
        v32 = v31;
        v33 = a1;
        v34 = swift_slowAlloc();
        v56 = v34;
        *v32 = 136315138;
        *(v32 + 4) = sub_26892CDB8(v52, v26, &v56);
        _os_log_impl(&dword_2688BB000, v29, v30, "Getting the volume for route Id: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        v35 = v34;
        a1 = v33;
        MEMORY[0x26D6266E0](v35, -1, -1);
        v36 = v32;
        a2 = v53;
        MEMORY[0x26D6266E0](v36, -1, -1);
      }

      v23(v28, v6);
      v37 = v55;
      v38 = [a1 device];
      if (v38)
      {
        v39 = v38;
        if (sub_268984BA0())
        {
          __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_accessoryVolumeController], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_accessoryVolumeController + 24]);
          v40 = swift_allocObject();
          v41 = v54;
          *(v40 + 16) = sub_26892D9D4;
          *(v40 + 24) = v41;

          sub_268B37764();

LABEL_20:

          goto LABEL_21;
        }
      }

      __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_playbackController], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_playbackController + 24]);
      v49 = swift_allocObject();
      v50 = v54;
      *(v49 + 16) = sub_26892D9D4;
      *(v49 + 24) = v50;

      sub_268B36CD4();

      goto LABEL_20;
    }
  }

  v42 = v52;
  (v53)(v52, v14, v6);
  v43 = sub_268B37A34();
  v44 = sub_268B37EE4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2688BB000, v43, v44, "Missing routeId in intent", v45, 2u);
    MEMORY[0x26D6266E0](v45, -1, -1);
  }

  v23(v42, v6);
  v46 = sub_268B36EA4();
  objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentResponse());
  v47 = v46;
  v48 = GetVolumeLevelIntentResponse.init(code:userActivity:)(5, v46);
  v37 = v55;
  v55[2](v55, v48);

LABEL_21:
  _Block_release(v37);
}

void sub_2689EBC90()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v56 = v2;
  v57 = v3;
  v5 = v4;
  v6 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v54 = v10;
  OUTLINED_FUNCTION_8();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v53 - v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v15 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v16 = *(v8 + 16);
  v55 = v15;
  v16(v0);
  v17 = sub_268B37A34();
  v18 = sub_268B37F04();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_14();
    v53 = v16;
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v17, v18, "GetVolumeLevel.GetVolumeLevelIntentHandler.handle() called", v19, 2u);
    v1 = v0;
    v16 = v53;
    OUTLINED_FUNCTION_12();
  }

  v20 = *(v8 + 8);
  v20(v0, v6);
  sub_2689EAA74();
  if (v22)
  {
    v23 = v22;
    v24 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v24 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      v54 = v21;
      (v16)(v14, v55, v6);
      v25 = sub_268B37A34();
      v26 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_115_0(v26))
      {
        v27 = v1;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v55 = v14;
        v30 = v5;
        v31 = v29;
        v58 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_26892CDB8(v54, v23, &v58);
        OUTLINED_FUNCTION_37_7();
        _os_log_impl(v32, v33, v34, v35, v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        v5 = v30;
        OUTLINED_FUNCTION_12();
        v1 = v27;
        OUTLINED_FUNCTION_12();

        v36 = v55;
      }

      else
      {

        v36 = v14;
      }

      v20(v36, v6);
      v49 = [v5 device];
      if (v49)
      {
        v50 = v49;
        if (sub_268984BA0())
        {
          OUTLINED_FUNCTION_18_9((v1 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_accessoryVolumeController));
          v51 = swift_allocObject();
          *(v51 + 24) = OUTLINED_FUNCTION_6_24(v51);

          sub_268B37764();

LABEL_21:

          goto LABEL_22;
        }
      }

      OUTLINED_FUNCTION_18_9((v1 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_playbackController));
      v52 = swift_allocObject();
      *(v52 + 24) = OUTLINED_FUNCTION_6_24(v52);

      sub_268B36CD4();

      goto LABEL_21;
    }
  }

  v37 = v54;
  (v16)(v54, v55, v6);
  v38 = sub_268B37A34();
  v39 = sub_268B37EE4();
  if (OUTLINED_FUNCTION_115_0(v39))
  {
    v40 = OUTLINED_FUNCTION_14();
    *v40 = 0;
    OUTLINED_FUNCTION_37_7();
    _os_log_impl(v41, v42, v43, v44, v40, 2u);
    OUTLINED_FUNCTION_12();
  }

  v20(v37, v6);
  OUTLINED_FUNCTION_25_2();
  v45 = sub_268B36EA4();
  v46 = objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentResponse());
  v47 = v45;
  v48 = GetVolumeLevelIntentResponse.init(code:userActivity:)(5, v45);
  v56();

LABEL_22:
  OUTLINED_FUNCTION_23();
}

void sub_2689EC184(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x100000000) != 0)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v7, v11, v4);
    v12 = sub_268B37A34();
    v13 = sub_268B37EE4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2688BB000, v12, v13, "Failed to get volume for accessory", v14, 2u);
      MEMORY[0x26D6266E0](v14, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v15 = sub_268B36EA4();
    v16 = objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentResponse());
    v17 = v15;
    v18 = GetVolumeLevelIntentResponse.init(code:userActivity:)(5, v15);
    (a2)();
  }

  else
  {
    v8 = objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentResponse());
    v20 = GetVolumeLevelIntentResponse.init(code:userActivity:)(4, 0);
    v9 = sub_268B37E04();
    [v20 setCurrentVolumeLevel_];

    a2(v20);
    v10 = v20;
  }
}

void sub_2689EC440(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v57 = a2;
  v58 = sub_268B37A54();
  v5 = *(v58 - 8);
  v6 = MEMORY[0x28223BE20](v58);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v52 - v9;
  v10 = sub_268B36F24();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DD8, qword_268B42E80);
  MEMORY[0x28223BE20](v17);
  v19 = (&v52 - v18);
  v55 = a1;
  sub_2689EEE54(a1, &v52 - v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = a3;
    (*(v11 + 32))(v16, v19, v10);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v20 = v58;
    v21 = __swift_project_value_buffer(v58, qword_2802CDA10);
    v22 = v56;
    (*(v5 + 16))(v56, v21, v20);
    v23 = *(v11 + 16);
    v53 = v16;
    v23(v14, v16, v10);
    v24 = v10;
    v25 = sub_268B37A34();
    v26 = sub_268B37EE4();
    v27 = v5;
    if (os_log_type_enabled(v25, v26))
    {
      v28 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v59 = v52;
      *v28 = 136446210;
      sub_2689EEEC4();
      v29 = sub_268B38404();
      v30 = v24;
      v32 = v31;
      v33 = *(v11 + 8);
      v34 = v14;
      v35 = v30;
      v33(v34, v30);
      v36 = sub_26892CDB8(v29, v32, &v59);

      *(v28 + 4) = v36;
      _os_log_impl(&dword_2688BB000, v25, v26, "An error occurred in the GetVolumeLevel media remote call: %{public}s", v28, 0xCu);
      v37 = v52;
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x26D6266E0](v37, -1, -1);
      MEMORY[0x26D6266E0](v28, -1, -1);

      (*(v27 + 8))(v56, v58);
      v24 = v35;
    }

    else
    {

      v33 = *(v11 + 8);
      v33(v14, v24);
      (*(v27 + 8))(v22, v20);
    }

    v48 = sub_268B36ED4();
    v49 = objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentResponse());
    v50 = v48;
    v51 = GetVolumeLevelIntentResponse.init(code:userActivity:)(5, v48);
    v57();

    v33(v53, v24);
  }

  else
  {
    v38 = v5;
    v39 = *v19;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v40 = v58;
    v41 = __swift_project_value_buffer(v58, qword_2802CDA10);
    (*(v38 + 16))(v8, v41, v40);
    v42 = sub_268B37A34();
    v43 = sub_268B37ED4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134217984;
      *(v44 + 4) = v39;
      _os_log_impl(&dword_2688BB000, v42, v43, "The current volume level from GetVolumeLevel media remote call is: %f", v44, 0xCu);
      MEMORY[0x26D6266E0](v44, -1, -1);
    }

    (*(v38 + 8))(v8, v40);
    v45 = objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentResponse());
    v46 = GetVolumeLevelIntentResponse.init(code:userActivity:)(4, 0);
    v47 = sub_268B37E04();
    [v46 setCurrentVolumeLevel_];

    (v57)(v46);
  }
}

void sub_2689ECA60(void *a1, char *a2, const void *a3)
{
  v95 = a2;
  v91 = a1;
  v4 = sub_268B371E4();
  v83 = *(v4 - 8);
  v84 = v4;
  MEMORY[0x28223BE20](v4);
  v82 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_268B36C04();
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x28223BE20](v6);
  v87 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v85 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v86 = &v81 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v90 = &v81 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v81 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v81 - v19;
  v93 = swift_allocObject();
  v94 = a3;
  *(v93 + 16) = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v8, qword_2802CDA10);
  v22 = *(v9 + 16);
  v22(v20, v21, v8);
  v23 = sub_268B37A34();
  v24 = sub_268B37F04();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v9;
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2688BB000, v23, v24, "GetVolumeLevel.GetVolumeLevelIntentHandler.resolveDevices() called", v26, 2u);
    v27 = v26;
    v9 = v25;
    MEMORY[0x26D6266E0](v27, -1, -1);
  }

  v92 = *(v9 + 8);
  v92(v20, v8);
  v28 = &v95[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState];
  __swift_project_boxed_opaque_existential_1(&v95[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState], *&v95[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState + 24]);
  if ((sub_268B34D14() & 1) == 0)
  {
    v35 = v91;
    v36 = [v91 device];
    if (v36)
    {
      v37 = v36;
      v38 = sub_26892D418(v36);
      if (v39)
      {
        v40 = v39;
        v95 = (v9 + 8);
        v41 = v38;
        v42 = v90;
        v22(v90, v21, v8);
        v43 = sub_268B37A34();
        v44 = sub_268B37F04();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v96 = v46;
          *v45 = 136315138;
          v47 = sub_26892CDB8(v41, v40, &v96);

          *(v45 + 4) = v47;
          _os_log_impl(&dword_2688BB000, v43, v44, "Disambiguated Intent with destinationDeviceId: %s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v46);
          MEMORY[0x26D6266E0](v46, -1, -1);
          MEMORY[0x26D6266E0](v45, -1, -1);
        }

        else
        {
        }

        v92(v42, v8);
        v34 = v94;
        v55 = sub_268B1CCB0(v91);
        if (v55)
        {
          v56 = v55;
        }

        else
        {
          v56 = MEMORY[0x277D84F90];
        }

        sub_268983D74(v56);

        type metadata accessor for GetVolumeLevelDeviceResolutionResult();
        v33 = sub_268B2CC98(v37);
        (v34)[2](v34, v33);

        goto LABEL_28;
      }

      v35 = v91;
    }

    if (sub_268B1CCB0(v35))
    {
      if (sub_2688EFD0C())
      {
        if (!sub_268B1CC90(v35))
        {
          v72 = v95;
          v74 = v87;
          v73 = v88;
          v75 = v89;
          (*(v88 + 104))(v87, *MEMORY[0x277D5F648], v89);
          v76 = swift_allocObject();
          v77 = v93;
          v76[2] = sub_26892DC18;
          v76[3] = v77;
          v76[4] = v72;

          v78 = v72;
          v79 = v82;
          sub_268B37164();
          sub_2688F4CD4();

          (*(v83 + 8))(v79, v84);
          (*(v73 + 8))(v74, v75);
          goto LABEL_39;
        }
      }
    }

    if (!sub_268B1CC90(v35))
    {
      v57 = v86;
      v22(v86, v21, v8);
      v58 = sub_268B37A34();
      v59 = sub_268B37F04();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_2688BB000, v58, v59, "No context or device query, falling back to local device", v60, 2u);
        MEMORY[0x26D6266E0](v60, -1, -1);
      }

      v92(v57, v8);
      __swift_project_boxed_opaque_existential_1(v28, *(v28 + 3));
      if (sub_268B34D04() & 1) == 0 || (__swift_project_boxed_opaque_existential_1(&v95[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider], *&v95[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider + 24]), (sub_268B36F94()))
      {
        type metadata accessor for Device();
        sub_268B36C54();
        v61 = sub_268B36C24();
        v63 = v62;

        LOBYTE(v80) = 0;
        sub_268983F14(v61, v63, 0, 0, 0, 0, 0, 0, v64, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
        v66 = v65;
        type metadata accessor for GetVolumeLevelDeviceResolutionResult();
        v67 = sub_268B2CC98(v66);
        v34 = v94;
        (*(v94 + 2))(v94, v67);

        goto LABEL_29;
      }

      type metadata accessor for GetVolumeLevelDeviceResolutionResult();
      v32 = 2;
      goto LABEL_9;
    }

    __swift_project_boxed_opaque_existential_1(v28, *(v28 + 3));
    if ((sub_2688C3240() & 1) == 0)
    {

      v68 = v85;
      v22(v85, v21, v8);
      v69 = sub_268B37A34();
      v70 = sub_268B37EE4();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_2688BB000, v69, v70, "GetVolume requests for Whole House Audio are unsupported on this platform", v71, 2u);
        MEMORY[0x26D6266E0](v71, -1, -1);
      }

      v92(v68, v8);
      type metadata accessor for GetVolumeLevelDeviceResolutionResult();
      v32 = 6;
      goto LABEL_9;
    }

    sub_268B1CCB0(v35);
    v48 = v95;
    sub_268920A60();

    v50 = v87;
    v49 = v88;
    v51 = v89;
    (*(v88 + 104))(v87, *MEMORY[0x277D5F648], v89);
    v52 = swift_allocObject();
    v53 = v93;
    v52[2] = sub_26892DC18;
    v52[3] = v53;
    v52[4] = v48;

    v54 = v48;
    sub_2688F80CC();

    (*(v49 + 8))(v50, v51);
LABEL_39:

    v34 = v94;
    goto LABEL_29;
  }

  v22(v18, v21, v8);
  v29 = sub_268B37A34();
  v30 = sub_268B37EE4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2688BB000, v29, v30, "Can't do volume controls on CarPlay, returning unsupported.", v31, 2u);
    MEMORY[0x26D6266E0](v31, -1, -1);
  }

  v92(v18, v8);
  type metadata accessor for GetVolumeLevelDeviceResolutionResult();
  v32 = 3;
LABEL_9:
  v33 = sub_268B17B04(v32);
  v34 = v94;
  (*(v94 + 2))(v94, v33);

LABEL_28:

LABEL_29:
  _Block_release(v34);
}

void sub_2689ED5A4()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v103 = v2;
  v104 = v3;
  v99 = v4;
  sub_268B371E4();
  OUTLINED_FUNCTION_1();
  v92 = v6;
  v93 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v91 = v8 - v7;
  v9 = sub_268B36C04();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v96 = v14 - v13;
  v15 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v98 = v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  v95 = (&v90 - v21);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  v94 = (&v90 - v23);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  v97 = (&v90 - v25);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v27 = __swift_project_value_buffer(v15, qword_2802CDA10);
  v28 = *(v17 + 16);
  v100 = v27;
  v101 = v28;
  v28(v0);
  v29 = sub_268B37A34();
  v30 = sub_268B37F04();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_14();
    *v31 = 0;
    _os_log_impl(&dword_2688BB000, v29, v30, "GetVolumeLevel.GetVolumeLevelIntentHandler.resolveDevices() called", v31, 2u);
    v1 = v0;
    OUTLINED_FUNCTION_12();
  }

  v32 = *(v17 + 8);
  v102 = v17 + 8;
  v32(v0, v15);
  v33 = &v1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState], *&v1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState + 24]);
  if (sub_268B34D14())
  {
    v34 = v98;
    v101(v98, v100, v15);
    v35 = sub_268B37A34();
    v36 = sub_268B37EE4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_14();
      *v37 = 0;
      _os_log_impl(&dword_2688BB000, v35, v36, "Can't do volume controls on CarPlay, returning unsupported.", v37, 2u);
      OUTLINED_FUNCTION_12();
    }

    v32(v34, v15);
    type metadata accessor for GetVolumeLevelDeviceResolutionResult();
    v38 = 3;
LABEL_9:
    v39 = sub_268B17B04(v38);
    v103();
LABEL_28:

    goto LABEL_29;
  }

  v98 = v32;
  v40 = v99;
  v41 = [v99 device];
  if (v41)
  {
    v42 = v41;
    v43 = sub_26892D418(v41);
    if (v44)
    {
      v45 = v43;
      v46 = v44;
      v101(v97, v100, v15);
      v47 = sub_268B37A34();
      v48 = sub_268B37F04();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v105 = v50;
        *v49 = 136315138;
        v51 = sub_26892CDB8(v45, v46, &v105);

        *(v49 + 4) = v51;
        _os_log_impl(&dword_2688BB000, v47, v48, "Disambiguated Intent with destinationDeviceId: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {
      }

      OUTLINED_FUNCTION_10_16();
      v57();
      v58 = sub_268B1CCB0(v99);
      if (v58)
      {
        v59 = v58;
      }

      else
      {
        v59 = MEMORY[0x277D84F90];
      }

      sub_268983D74(v59);

      type metadata accessor for GetVolumeLevelDeviceResolutionResult();
      v39 = sub_268B2CC98(v42);
      v103();

      goto LABEL_28;
    }

    v40 = v99;
  }

  if (sub_268B1CCB0(v40))
  {
    if (sub_2688EFD0C())
    {
      if (!sub_268B1CC90(v40))
      {
        v82 = OUTLINED_FUNCTION_11_18();
        v83(v82);
        v84 = v1;
        v85 = swift_allocObject();
        *(v85 + 24) = OUTLINED_FUNCTION_6_24(v85);
        *(v85 + 32) = v84;

        v86 = v84;
        v87 = v91;
        sub_268B37164();
        sub_2688F4CD4();

        (*(v92 + 8))(v87, v93);
        (*(v11 + 8))(v33, v9);
        goto LABEL_29;
      }
    }
  }

  if (!sub_268B1CC90(v40))
  {
    v101(v95, v100, v15);
    v60 = sub_268B37A34();
    v61 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v61))
    {
      v62 = OUTLINED_FUNCTION_14();
      *v62 = 0;
      OUTLINED_FUNCTION_37_7();
      _os_log_impl(v63, v64, v65, v66, v62, 2u);
      OUTLINED_FUNCTION_12();
    }

    OUTLINED_FUNCTION_10_16();
    v67();
    OUTLINED_FUNCTION_18_9(v33);
    if (sub_268B34D04() & 1) == 0 || (OUTLINED_FUNCTION_18_9(&v1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider]), (sub_268B36F94()))
    {
      type metadata accessor for Device();
      sub_268B36C54();
      sub_268B36C24();
      LOBYTE(v89) = 0;

      OUTLINED_FUNCTION_25_2();
      sub_268983F14(v68, v69, v70, v71, v72, v73, v74, 0, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
      v76 = v75;
      type metadata accessor for GetVolumeLevelDeviceResolutionResult();
      v77 = sub_268B2CC98(v76);
      v103();

      goto LABEL_29;
    }

    type metadata accessor for GetVolumeLevelDeviceResolutionResult();
    v38 = 2;
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(v33, *(v33 + 3));
  if ((sub_2688C3240() & 1) == 0)
  {

    v101(v94, v100, v15);
    v78 = sub_268B37A34();
    v79 = sub_268B37EE4();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = OUTLINED_FUNCTION_14();
      *v80 = 0;
      _os_log_impl(&dword_2688BB000, v78, v79, "GetVolume requests for Whole House Audio are unsupported on this platform", v80, 2u);
      OUTLINED_FUNCTION_12();
    }

    OUTLINED_FUNCTION_10_16();
    v81();
    type metadata accessor for GetVolumeLevelDeviceResolutionResult();
    v38 = 6;
    goto LABEL_9;
  }

  sub_268B1CCB0(v40);
  sub_268920A60();

  v52 = OUTLINED_FUNCTION_11_18();
  v53(v52);
  v54 = v9;
  v55 = swift_allocObject();
  *(v55 + 24) = OUTLINED_FUNCTION_6_24(v55);
  *(v55 + 32) = v1;

  v56 = v1;
  sub_2688F80CC();

  (*(v11 + 8))(v33, v54);
LABEL_29:
  OUTLINED_FUNCTION_23();
}

void sub_2689EDF2C(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    type metadata accessor for GetVolumeLevelDeviceResolutionResult();
    v13 = 4;
LABEL_19:
    v27[0] = sub_268B17B04(v13);
    a3();
LABEL_20:
    v21 = v27[0];

    return;
  }

  if (!sub_2688EFD0C())
  {
    type metadata accessor for GetVolumeLevelDeviceResolutionResult();
    v13 = 1;
    goto LABEL_19;
  }

  if (sub_2688EFD0C() != 1)
  {
    type metadata accessor for GetVolumeLevelDeviceResolutionResult();
    v13 = 5;
    goto LABEL_19;
  }

  sub_2688EFD10();
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x26D625BD0](0, a1);
  }

  else
  {
    v14 = *(a1 + 32);
  }

  v15 = v14;
  v16 = sub_268988574(v14);
  if (v17)
  {
    if (v16 == 0x7674656C707061 && v17 == 0xE700000000000000)
    {

      goto LABEL_24;
    }

    v19 = sub_268B38444();

    if (v19)
    {
      goto LABEL_24;
    }
  }

  v20 = sub_2689840D4();
  if ((v20 - 1) < 4)
  {
    goto LABEL_25;
  }

  if (v20)
  {
    v27[1] = v20;
    sub_268B38474();
    __break(1u);
    return;
  }

  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState), *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState + 24));
  if ((sub_268B34D04() & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_24:
  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider), *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider + 24));
  if (sub_268B36F94())
  {
LABEL_25:
    type metadata accessor for GetVolumeLevelDeviceResolutionResult();
    v27[0] = sub_268B2CC98(v15);
    a3();

    goto LABEL_20;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v9, qword_2802CDA10);
  (*(v10 + 16))(v12, v22, v9);
  v23 = sub_268B37A34();
  v24 = sub_268B37F04();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2688BB000, v23, v24, "Can't do volume controls on Apple TV, returning unsupported.", v25, 2u);
    MEMORY[0x26D6266E0](v25, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  type metadata accessor for GetVolumeLevelDeviceResolutionResult();
  v26 = sub_268B17B04(2);
  a3();
}

void sub_2689EE2F8(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v34 - v14;
  if ((a2 & 1) == 0)
  {
    if (!sub_2688EFD0C())
    {
      type metadata accessor for GetVolumeLevelDeviceResolutionResult();
      goto LABEL_19;
    }

    if (sub_2688EFD0C() != 1)
    {
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v25 = __swift_project_value_buffer(v9, qword_2802CDA10);
      (*(v10 + 16))(v13, v25, v9);
      v26 = sub_268B37A34();
      v27 = sub_268B37EE4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2688BB000, v26, v27, "Multiple devices selected, returning unsupported.", v28, 2u);
        MEMORY[0x26D6266E0](v28, -1, -1);
      }

      (*(v10 + 8))(v13, v9);
      type metadata accessor for GetVolumeLevelDeviceResolutionResult();
      v29 = sub_268B17B04(5);
      a3();
      goto LABEL_37;
    }

    sub_2688EFD10();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x26D625BD0](0, a1);
    }

    else
    {
      v17 = *(a1 + 32);
    }

    v18 = v17;
    v19 = sub_268988574(v17);
    if (!v20)
    {
      goto LABEL_14;
    }

    if (v19 == 0x7674656C707061 && v20 == 0xE700000000000000)
    {
    }

    else
    {
      v22 = sub_268B38444();

      if ((v22 & 1) == 0)
      {
LABEL_14:
        v23 = sub_2689840D4();
        if ((v23 - 1) < 4)
        {
          goto LABEL_31;
        }

        if (v23)
        {
          v34[1] = v23;
          sub_268B38474();
          __break(1u);
          return;
        }

        __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState), *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState + 24));
        if ((sub_268B34D04() & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider), *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider + 24));
    if (sub_268B36F94())
    {
LABEL_31:
      type metadata accessor for GetVolumeLevelDeviceResolutionResult();
      v34[0] = sub_268B2CC98(v18);
      a3();

      goto LABEL_21;
    }

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v9, qword_2802CDA10);
    (*(v10 + 16))(v15, v30, v9);
    v31 = sub_268B37A34();
    v32 = sub_268B37EE4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2688BB000, v31, v32, "Can't do volume controls on Apple TV, returning unsupported.", v33, 2u);
      MEMORY[0x26D6266E0](v33, -1, -1);
    }

    (*(v10 + 8))(v15, v9);
    type metadata accessor for GetVolumeLevelDeviceResolutionResult();
    v29 = sub_268B17B04(2);
    a3();

LABEL_37:
    return;
  }

  type metadata accessor for GetVolumeLevelDeviceResolutionResult();
  if (a1)
  {
LABEL_19:
    v16 = 1;
    goto LABEL_20;
  }

  v16 = 4;
LABEL_20:
  v34[0] = sub_268B17B04(v16);
  a3();
LABEL_21:
  v24 = v34[0];
}

void sub_2689EE7F8(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_268B37A34();
  v10 = sub_268B37F04();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2688BB000, v9, v10, "GetVolumeLevel.GetVolumeLevelIntentHandler.confirm() called", v11, 2u);
    MEMORY[0x26D6266E0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v12 = objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentResponse());
  v13 = GetVolumeLevelIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v13);

  _Block_release(a3);
}

void sub_2689EE9D0(uint64_t a1, void (*a2)(void))
{
  v3 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v10 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v5 + 16))(v9, v10, v3);
  v11 = sub_268B37A34();
  v12 = sub_268B37F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_14();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "GetVolumeLevel.GetVolumeLevelIntentHandler.confirm() called", v13, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v5 + 8))(v9, v3);
  v14 = objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentResponse());
  v15 = GetVolumeLevelIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_2689EEB80(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

id GetVolumeLevelIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GetVolumeLevelIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2689EECE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2689EEDFC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2689EEE54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DD8, qword_268B42E80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2689EEEC4()
{
  result = qword_2802A5DE0;
  if (!qword_2802A5DE0)
  {
    sub_268B36F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5DE0);
  }

  return result;
}

id sub_2689EEFA0(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37BC4();
  v6 = [v4 initWithIdentifier:0 displayString:v5];

  v7 = v6;
  v8 = sub_268B37224();
  sub_268997010(v8, v9, v7, &selRef_setName_);
  v10 = sub_268B37234();
  sub_268A1A108(v10, v11, v7);
  v12 = sub_268B37214();
  sub_268997010(v12, v13, v7, &selRef_setLanguageIdentifier_);
  v14 = sub_268B37244();
  sub_2689EF3FC(v14, v7);
  sub_268B37294();
  v15 = sub_268B37D64();
  [v7 setIsActive_];

  v16 = sub_268B372A4();
  (*(*(v16 - 8) + 8))(a1, v16);
  return v7;
}

uint64_t LanguageOption.description.getter()
{
  sub_268B381C4();
  MEMORY[0x26D625650](0xD00000000000001ELL, 0x8000000268B59FF0);
  sub_2688EF000(v0, &selRef_name);
  OUTLINED_FUNCTION_66_1();

  MEMORY[0x26D625650](0x6175676E616C202CLL, 0xEF203A6761546567);
  sub_2688EF000(v0, &selRef_languageTag);
  OUTLINED_FUNCTION_66_1();

  MEMORY[0x26D625650](0xD000000000000016, 0x8000000268B5A010);
  sub_2688EF000(v0, &selRef_languageIdentifier);
  OUTLINED_FUNCTION_66_1();

  MEMORY[0x26D625650](0x657669746361202CLL, 0xEA0000000000203ALL);
  v1 = [v0 isActive];
  sub_2688C063C();
  v2 = sub_268B38054();
  v3 = v2;
  if (v1)
  {
    sub_268B38074();
  }

  else
  {
  }

  OUTLINED_FUNCTION_66_1();

  MEMORY[0x26D625650](0xD000000000000013, 0x8000000268B5A030);
  v4 = sub_2689EF38C(v0);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = MEMORY[0x26D6256F0](v5, MEMORY[0x277D837D0]);
  v8 = v7;

  MEMORY[0x26D625650](v6, v8);

  MEMORY[0x26D625650](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_2689EF38C(void *a1)
{
  v1 = [a1 characteristics];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268B37CF4();

  return v3;
}

void sub_2689EF3FC(uint64_t a1, void *a2)
{
  v3 = sub_268B37CE4();

  [a2 setCharacteristics_];
}

Swift::String_optional __swiftcall UsoTask_unrequest_common_MediaItem.verb()()
{
  v0 = 1701079400;
  v1 = 0xE400000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_2689EF4B4(uint64_t a1)
{
  result = sub_2689EF578(&qword_2802A6E60, &protocol conformance descriptor for UsoTask_unrequest_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689EF578(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B363D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2689EF5F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_2689EF644(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_2689EF698(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2689EF6EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2689EF740(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2689EF794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2689EF7E8(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2689EF83C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2689EF8A0(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2689EF8F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2689EF958(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2689EF9BC(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2689EFA20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

Swift::String_optional __swiftcall UsoTask_noVerb_common_MediaItem.verb()()
{
  v1 = sub_268B35FC4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v62 = &v57[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6E78, &qword_268B42FF0);
  v4 = MEMORY[0x28223BE20](v67);
  v6 = &v57[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v57[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6E80, qword_268B42FF8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v65 = &v57[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v66 = &v57[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v57[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v57[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v57[-v23];
  v64 = v0;
  sub_268B356E4();
  v61 = v12;
  if (v68 && (v25 = sub_268B35B74(), , v25))
  {
    sub_268B35FB4();
  }

  else
  {
    OUTLINED_FUNCTION_4_20(v24, 1);
  }

  v26 = *MEMORY[0x277D5EBF0];
  v63 = *(v2 + 104);
  v63(v22, v26, v1);
  OUTLINED_FUNCTION_4_20(v22, 0);
  v27 = *(v67 + 48);
  sub_2689F01D4(v24, v8);
  sub_2689F01D4(v22, &v8[v27]);
  OUTLINED_FUNCTION_124(v8);
  if (v31)
  {
    v28 = OUTLINED_FUNCTION_3_27();
    sub_2688EF38C(v28, v29, qword_268B42FF8);
    sub_2688EF38C(v24, &qword_2802A6E80, qword_268B42FF8);
    OUTLINED_FUNCTION_124(&v8[v27]);
    if (v31)
    {
      v30 = 1885956979;
      sub_2688EF38C(v8, &qword_2802A6E80, qword_268B42FF8);
LABEL_30:
      v44 = 0xE400000000000000;
      goto LABEL_33;
    }

    goto LABEL_13;
  }

  sub_2689F01D4(v8, v19);
  OUTLINED_FUNCTION_124(&v8[v27]);
  if (v31)
  {
    v32 = OUTLINED_FUNCTION_3_27();
    sub_2688EF38C(v32, v33, qword_268B42FF8);
    sub_2688EF38C(v24, &qword_2802A6E80, qword_268B42FF8);
    (*(v2 + 8))(v19, v1);
LABEL_13:
    sub_2688EF38C(v8, &qword_2802A6E78, &qword_268B42FF0);
    goto LABEL_14;
  }

  v45 = &v8[v27];
  v46 = v62;
  (*(v2 + 32))(v62, v45, v1);
  OUTLINED_FUNCTION_1_32();
  sub_2689F0334(v47, v48, MEMORY[0x277D5EC80]);
  v58 = sub_268B37BB4();
  v59 = v2;
  v60 = v6;
  v49 = *(v2 + 8);
  v49(v46, v1);
  sub_2688EF38C(v22, &qword_2802A6E80, qword_268B42FF8);
  sub_2688EF38C(v24, &qword_2802A6E80, qword_268B42FF8);
  v49(v19, v1);
  v2 = v59;
  v6 = v60;
  sub_2688EF38C(v8, &qword_2802A6E80, qword_268B42FF8);
  if (v58)
  {
    v30 = 1885956979;
    goto LABEL_30;
  }

LABEL_14:
  sub_268B356E4();
  if (v68 && (v34 = sub_268B35B74(), , v34))
  {
    v35 = v66;
    sub_268B35FB4();
  }

  else
  {
    v35 = v66;
    OUTLINED_FUNCTION_4_20(v66, 1);
  }

  v36 = v65;
  v63(v65, *MEMORY[0x277D5EC68], v1);
  OUTLINED_FUNCTION_4_20(v36, 0);
  v37 = *(v67 + 48);
  sub_2689F01D4(v35, v6);
  sub_2689F01D4(v36, &v6[v37]);
  OUTLINED_FUNCTION_124(v6);
  if (v31)
  {
    sub_2688EF38C(v36, &qword_2802A6E80, qword_268B42FF8);
    v38 = OUTLINED_FUNCTION_3_27();
    sub_2688EF38C(v38, v39, qword_268B42FF8);
    OUTLINED_FUNCTION_124(&v6[v37]);
    if (v31)
    {
      sub_2688EF38C(v6, &qword_2802A6E80, qword_268B42FF8);
LABEL_32:
      v44 = 0xE800000000000000;
      v30 = 0x73756F6976657270;
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  v40 = v61;
  sub_2689F01D4(v6, v61);
  OUTLINED_FUNCTION_124(&v6[v37]);
  if (v41)
  {
    sub_2688EF38C(v36, &qword_2802A6E80, qword_268B42FF8);
    v42 = OUTLINED_FUNCTION_3_27();
    sub_2688EF38C(v42, v43, qword_268B42FF8);
    (*(v2 + 8))(v40, v1);
LABEL_26:
    sub_2688EF38C(v6, &qword_2802A6E78, &qword_268B42FF0);
    goto LABEL_27;
  }

  v50 = v62;
  (*(v2 + 32))(v62, &v6[v37], v1);
  OUTLINED_FUNCTION_1_32();
  sub_2689F0334(v51, v52, MEMORY[0x277D5EC80]);
  v53 = sub_268B37BB4();
  v54 = *(v2 + 8);
  v54(v50, v1);
  sub_2688EF38C(v36, &qword_2802A6E80, qword_268B42FF8);
  sub_2688EF38C(v35, &qword_2802A6E80, qword_268B42FF8);
  v54(v40, v1);
  sub_2688EF38C(v6, &qword_2802A6E80, qword_268B42FF8);
  if (v53)
  {
    goto LABEL_32;
  }

LABEL_27:
  v30 = 0;
  v44 = 0;
LABEL_33:
  v55 = v30;
  result.value._object = v44;
  result.value._countAndFlagsBits = v55;
  return result;
}

uint64_t sub_2689F01D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6E80, qword_268B42FF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2689F024C(uint64_t a1)
{
  result = sub_2689F0334(&qword_2802A6E90, MEMORY[0x277D5EFB8], &protocol conformance descriptor for UsoTask_noVerb_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689F0334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2689F03C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_2689F0418(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_2689F046C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2689F04C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2689F0514(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2689F0568(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2689F05BC(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2689F0610(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2689F0674(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2689F06C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2689F072C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2689F0790(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2689F07F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t OUTLINED_FUNCTION_4_20(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_2689F0948()
{
  v62 = sub_268B37A54();
  v1 = *(v62 - 8);
  v2 = MEMORY[0x28223BE20](v62);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v61 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v61 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v61 - v11;
  OUTLINED_FUNCTION_1_33();
  if ((sub_268B34CE4() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_33();
    if ((sub_268B34CC4() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_33();
      if ((sub_268B34CD4() & 1) == 0)
      {
        OUTLINED_FUNCTION_1_33();
        if ((sub_268B34D14() & 1) == 0)
        {
          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
          }

          v56 = v62;
          __swift_project_value_buffer(v62, qword_2802CDA10);
          OUTLINED_FUNCTION_13_5();
          v57(v4);
          v58 = sub_268B37A34();
          v59 = sub_268B37ED4();
          if (OUTLINED_FUNCTION_196(v59))
          {
            v60 = swift_slowAlloc();
            *v60 = 0;
            _os_log_impl(&dword_2688BB000, v58, v59, "INIntent#shouldSetRequestEndBehavior not iOS, returning false", v60, 2u);
            OUTLINED_FUNCTION_12();
          }

          (*(v1 + 8))(v4, v56);
          goto LABEL_44;
        }
      }
    }
  }

  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v0, ObjectType, &protocol descriptor for DeviceSelectableIntent))
  {
    v15 = v14;
    v16 = swift_getObjectType();
    v17 = *(v15 + 24);
    v18 = v0;
    v19 = v17(v16, v15);
    if (v19)
    {
      v20 = v19;
      v61 = v1;
      v1 = v18;
      v21 = sub_2688EFD0C();
      v22 = 0;
      v23 = v20 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v24 = v21 != v22;
        if (v21 == v22)
        {
LABEL_16:

          v18 = v1;
          v1 = v61;
          goto LABEL_21;
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x26D625BD0](v22, v20);
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v25 = *(v20 + 8 * v22 + 32);
        }

        v26 = v25;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        v18 = sub_268983434(v25);

        ++v22;
        if (v18)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
    }

    else
    {
      v24 = 0;
LABEL_21:
      v23 = v62;
      if (qword_2802A4F30 == -1)
      {
        goto LABEL_22;
      }
    }

    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
LABEL_22:
    __swift_project_value_buffer(v23, qword_2802CDA10);
    OUTLINED_FUNCTION_13_5();
    v35(v12);
    v36 = sub_268B37A34();
    v37 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_196(v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 67109120;
      v38[1] = v24;
      OUTLINED_FUNCTION_3_28(&dword_2688BB000, v39, v40, "INIntent#shouldSetRequestEndBehavior Intent is DeviceSelectableIntent with shouldSetRequestEndBehavior: %{BOOL}d");
      OUTLINED_FUNCTION_12();
      v41 = v18;
    }

    else
    {
      v41 = v36;
      v36 = v18;
    }

    (*(v1 + 8))(v12, v23);
    return v24 & 1;
  }

  v27 = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v0, v27, &protocol descriptor for SingleDeviceSelectableIntent))
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v42 = v62;
    __swift_project_value_buffer(v62, qword_2802CDA10);
    OUTLINED_FUNCTION_13_5();
    v43(v7);
    v44 = sub_268B37A34();
    v45 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_196(v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2688BB000, v44, v45, "INIntent#shouldSetRequestEndBehavior Unexpected intent type, returning false", v46, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v1 + 8))(v7, v42);
LABEL_44:
    LOBYTE(v24) = 0;
    return v24 & 1;
  }

  v29 = v28;
  v30 = swift_getObjectType();
  v31 = *(v29 + 24);
  v32 = v0;
  v33 = v31(v30, v29);
  if (v33)
  {
    v34 = v33;
    LOBYTE(v24) = sub_268983434(v33);
  }

  else
  {
    LOBYTE(v24) = 0;
  }

  v47 = v62;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v47, qword_2802CDA10);
  OUTLINED_FUNCTION_13_5();
  v48(v10);
  v49 = sub_268B37A34();
  v50 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_196(v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 67109120;
    v51[1] = v24 & 1;
    OUTLINED_FUNCTION_3_28(&dword_2688BB000, v52, v53, "INIntent#shouldSetRequestEndBehavior Intent is SingleDeviceSelectableIntent with shouldSetRequestEndBehavior: %{BOOL}d");
    OUTLINED_FUNCTION_12();
    v54 = v32;
  }

  else
  {
    v54 = v49;
    v49 = v32;
  }

  (*(v1 + 8))(v10, v47);
  return v24 & 1;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_1_33()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

void OUTLINED_FUNCTION_3_28(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

id sub_2689F0FC0()
{
  result = [objc_allocWithZone(type metadata accessor for PauseMediaIntentHandler()) init];
  qword_2802CD968 = result;
  return result;
}

uint64_t sub_2689F0FF4()
{
  v7 = sub_268B37F44();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_268B37F34();
  MEMORY[0x28223BE20](v3);
  v4 = sub_268B37B14();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_2688EA03C(0, &qword_2802A7320, 0x277D85C78);
  sub_268B37AF4();
  v8 = MEMORY[0x277D84F90];
  sub_2689F36B8(&unk_2802A5890, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_268B37F74();
  qword_2802CD970 = result;
  return result;
}

uint64_t sub_2689F1258(uint64_t a1)
{
  v1 = sub_268B35454();
  if (v1 == 0xD00000000000003ALL && 0x8000000268B58F50 == v2)
  {
    goto LABEL_17;
  }

  v4 = OUTLINED_FUNCTION_11_19(v1);

  if ((v4 & 1) == 0)
  {
    v6 = sub_268B35454();
    if (v6 != 0xD00000000000003ALL || 0x8000000268B5A120 != v7)
    {
      v9 = OUTLINED_FUNCTION_11_19(v6);

      if (v9)
      {
        goto LABEL_6;
      }

      if (sub_268B35454() != 0xD00000000000003CLL || 0x8000000268B57880 != v10)
      {
        v5 = sub_268B38444();
LABEL_18:

        return v5 & 1;
      }
    }

LABEL_17:
    v5 = 1;
    goto LABEL_18;
  }

LABEL_6:
  v5 = 1;
  return v5 & 1;
}

uint64_t sub_2689F134C(char *a1)
{
  v103 = a1;
  v94 = sub_268B35434();
  OUTLINED_FUNCTION_1();
  v92 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v91 = v4 - v3;
  v5 = sub_268B35474();
  OUTLINED_FUNCTION_1();
  v95 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v97 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v10 - 8);
  v101 = &v89 - v11;
  v12 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v102 = v14;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  v17 = &v89 - v16;
  v18 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v93 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  v90 = &v89 - v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  v96 = &v89 - v26;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v27);
  v29 = &v89 - v28;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v18, qword_2802CDA10);
  v31 = *(v20 + 16);
  v98 = v30;
  v99 = v31;
  v100 = (v20 + 16);
  (v31)(v29);
  v32 = sub_268B37A34();
  v33 = sub_268B37F04();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v89 = v5;
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "PauseMediaFlowStrategy#actionForInput called", v34, 2u);
    v5 = v89;
    OUTLINED_FUNCTION_12();
  }

  v35 = *(v20 + 8);
  v35(v29, v18);
  v36 = v103;
  sub_268B35414();
  v37 = OUTLINED_FUNCTION_230();
  v39 = v38(v37);
  if (v39 == *MEMORY[0x277D5C128])
  {
    goto LABEL_6;
  }

  if (v39 == *MEMORY[0x277D5C150])
  {
    v56 = OUTLINED_FUNCTION_230();
    v57(v56);
    v58 = v95;
    v59 = v97;
    (*(v95 + 32))(v97, v17, v5);
    if (sub_2689F1258(v59))
    {
      sub_268B34EC4();
    }

    else
    {
      v73 = v90;
      OUTLINED_FUNCTION_4_21();
      v74();
      v75 = sub_268B37A34();
      v76 = sub_268B37EE4();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        OUTLINED_FUNCTION_7_17(v77);
        OUTLINED_FUNCTION_23_4(&dword_2688BB000, v78, v79, "PauseMediaFlowStrategy#actionForInput unexpected direct invocation identifier");
        v59 = v97;
        OUTLINED_FUNCTION_12();
      }

      v35(v73, v18);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_2_22();
      OUTLINED_FUNCTION_1_34(v80 + 21, v81, v82);
      sub_268B34ED4();
    }

    return (*(v58 + 8))(v59, v5);
  }

  else
  {
    if (v39 == *MEMORY[0x277D5C160])
    {
LABEL_6:
      v40 = OUTLINED_FUNCTION_230();
      v41(v40);
      sub_268B35414();
      v42 = v101;
      sub_26893BA8C(v101);
      v43 = type metadata accessor for MediaPlayerIntent(0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v43);
      sub_2688C2E64(v42);
      if (EnumTagSinglePayload != 1)
      {
        return sub_268B34EC4();
      }

      v45 = v96;
      OUTLINED_FUNCTION_4_21();
      v46();
      v47 = sub_268B37A34();
      v48 = sub_268B37EE4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        OUTLINED_FUNCTION_7_17(v49);
        OUTLINED_FUNCTION_23_4(&dword_2688BB000, v50, v51, "PauseMediaFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse");
        OUTLINED_FUNCTION_12();
      }

      v35(v45, v18);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_2_22();
      OUTLINED_FUNCTION_1_34(v52 + 25, v53, v54);
      return sub_268B34ED4();
    }

    v101 = v12;
    OUTLINED_FUNCTION_4_21();
    v60();
    v61 = v91;
    v62 = v92;
    (*(v92 + 16))(v91, v36, v94);
    v63 = sub_268B37A34();
    v64 = sub_268B37EE4();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v103 = v17;
      v66 = v65;
      v98 = v65;
      v100 = swift_slowAlloc();
      v104 = v100;
      *v66 = 136315138;
      v99 = v63;
      sub_268B35414();
      LODWORD(v102) = v64;
      v67 = sub_268B37C24();
      v69 = v68;
      (*(v62 + 8))(v61, v94);
      v70 = sub_26892CDB8(v67, v69, &v104);

      v71 = v98;
      v72 = v99;
      *(v98 + 4) = v70;
      _os_log_impl(&dword_2688BB000, v72, v102, "PauseMediaFlowStrategy#actionForInput received an unsupported parse type %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v100);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    else
    {

      (*(v62 + 8))(v61, v94);
    }

    v35(v93, v18);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_2_22();
    OUTLINED_FUNCTION_1_34(v84 | v83, v85, v86);
    sub_268B34ED4();
    v87 = OUTLINED_FUNCTION_230();
    return v88(v87);
  }
}

uint64_t sub_2689F1BEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v34 = a3;
  v36 = a2;
  v35 = sub_268B37AB4();
  OUTLINED_FUNCTION_1();
  v41 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  sub_268B37B14();
  OUTLINED_FUNCTION_1();
  v39 = v11;
  v40 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  v15 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v21 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4E28 != -1)
  {
    swift_once();
  }

  v33 = qword_2802CD970;
  (*(v17 + 16))(&v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v22 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v23 = (v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v36;
  *(v24 + 16) = v36;
  (*(v17 + 32))(v24 + v22, v21, v15);
  v26 = (v24 + v23);
  v28 = v37;
  v27 = v38;
  *v26 = v34;
  v26[1] = v28;
  *(v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8)) = v27;
  aBlock[4] = sub_2689F35B4;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0B300;
  aBlock[3] = &block_descriptor_3;
  v29 = _Block_copy(aBlock);
  v30 = v25;

  sub_268B37AE4();
  v42 = MEMORY[0x277D84F90];
  sub_2689F36B8(&unk_2802A7010, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v31 = v35;
  sub_268B38124();
  MEMORY[0x26D625950](0, v14, v9, v29);
  _Block_release(v29);
  (*(v41 + 8))(v9, v31);
  (*(v39 + 8))(v14, v40);
}

void sub_2689F1FB8(void *a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4, void *a5)
{
  v119 = a5;
  v128 = a3;
  v129 = a4;
  v131 = a2;
  v6 = sub_268B35474();
  v114 = *(v6 - 8);
  v115 = v6;
  MEMORY[0x28223BE20](v6);
  v118 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v8 - 8);
  v124 = &v111 - v9;
  v123 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v123);
  v116 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_268B35494();
  v11 = *(v132 - 8);
  v12 = MEMORY[0x28223BE20](v132);
  v112 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v117 = &v111 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v126 = &v111 - v17;
  MEMORY[0x28223BE20](v16);
  v130 = &v111 - v18;
  v19 = sub_268B37A54();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v113 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v111 = &v111 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v125 = &v111 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v111 - v27;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v19, qword_2802CDA10);
  v30 = *(v20 + 16);
  v120 = v29;
  v121 = v30;
  (v30)(v28);
  v31 = sub_268B37A34();
  v32 = sub_268B37F04();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = a1;
    v34 = v20;
    v35 = v19;
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_2688BB000, v31, v32, "PauseMediaFlowStrategy#makeIntentFromParse called", v36, 2u);
    v37 = v36;
    v19 = v35;
    v20 = v34;
    a1 = v33;
    MEMORY[0x26D6266E0](v37, -1, -1);
  }

  v38 = *(v20 + 8);
  v38(v28, v19);
  v122 = v20 + 8;
  if (a1)
  {
    v39 = a1;
    v127 = a1;
  }

  else
  {
    v39 = 0;
    v127 = [objc_allocWithZone(type metadata accessor for PauseMediaIntent()) init];
  }

  v40 = v130;
  v41 = v131;
  v42 = *(v11 + 16);
  v43 = v132;
  v42(v130, v131, v132);
  v44 = (*(v11 + 88))(v40, v43);
  if (v44 == *MEMORY[0x277D5C128])
  {
    goto LABEL_9;
  }

  if (v44 == *MEMORY[0x277D5C150])
  {
    (*(v11 + 96))(v40, v132);
    v70 = v114;
    v69 = v115;
    v71 = v118;
    (*(v114 + 32))(v118, v40, v115);
    v72 = v39;
    if (sub_2689F1258(v71))
    {
      sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
      v73 = sub_268B38054();
      v74 = v127;
      [v127 setIsDirectInvocation_];

      (*(v70 + 8))(v71, v69);
      goto LABEL_16;
    }

    v100 = v38;
    v101 = v111;
    v121(v111, v120, v19);
    v102 = sub_268B37A34();
    v103 = sub_268B37EE4();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = v19;
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_2688BB000, v102, v103, "PauseMediaFlowStrategy#makeIntentFromParse unexpected direct invocation identifier", v105, 2u);
      v106 = v105;
      v19 = v104;
      v71 = v118;
      MEMORY[0x26D6266E0](v106, -1, -1);
    }

    v100(v101, v19);
    type metadata accessor for ErrorFilingHelper();
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(0xD00000000000002ELL, 0x8000000268B5A0C0, 0x64654D6573756150, 0xEA00000000006169, 0xD000000000000014, 0x8000000268B56D40);
    sub_2688C2ECC();
    v107 = swift_allocError();
    *v108 = 36;
    v128(v107, 1);

    (*(v70 + 8))(v71, v69);
  }

  else
  {
    v41 = v131;
    if (v44 == *MEMORY[0x277D5C160])
    {
LABEL_9:
      v45 = *(v11 + 8);
      v46 = v39;
      v47 = v132;
      v131 = v45;
      (v45)(v40, v132);
      v48 = v126;
      v42(v126, v41, v47);
      v49 = v124;
      sub_26893BC0C(v48, 1, v50, v51, v52, v53, v54, v55, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
      if (__swift_getEnumTagSinglePayload(v49, 1, v123) == 1)
      {
        v123 = v38;
        sub_2688C2E64(v49);
        v121(v125, v120, v19);
        v56 = v117;
        v42(v117, v41, v132);
        v57 = sub_268B37A34();
        v58 = sub_268B37EE4();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v124 = v19;
          v61 = v60;
          v133[0] = v60;
          *v59 = 136315138;
          v62 = v132;
          v42(v126, v56, v132);
          v63 = sub_268B37C24();
          v65 = v64;
          (v131)(v56, v62);
          v66 = sub_26892CDB8(v63, v65, v133);

          *(v59 + 4) = v66;
          _os_log_impl(&dword_2688BB000, v57, v58, "PauseMediaFlowStrategy#makeIntentFromParse failed to create MediaPlayerIntent from parse: %s", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v61);
          MEMORY[0x26D6266E0](v61, -1, -1);
          MEMORY[0x26D6266E0](v59, -1, -1);

          v68 = v124;
          v67 = v125;
        }

        else
        {

          (v131)(v56, v132);
          v67 = v125;
          v68 = v19;
        }

        v123(v67, v68);
        type metadata accessor for ErrorFilingHelper();
        static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(0xD000000000000032, 0x8000000268B56D00, 0x64654D6573756150, 0xEA00000000006169, 0xD000000000000014, 0x8000000268B56D40);
        sub_2688C2ECC();
        v98 = swift_allocError();
        *v99 = 35;
        v128(v98, 1);

        return;
      }

      v75 = v116;
      sub_2688C0464(v49, v116);
      v74 = v127;
      sub_268982750(v75);
      sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
      v76 = sub_268B38054();
      [v74 setIsDirectInvocation_];

      sub_2688C2F6C(v75);
LABEL_16:
      v77 = v119;
      v78 = v119[5];
      v79 = v119[6];
      __swift_project_boxed_opaque_existential_1(v119 + 2, v78);
      v80 = swift_allocObject();
      v81 = v129;
      v80[2] = v128;
      v80[3] = v81;
      v80[4] = v74;
      v82 = v74;

      sub_268AD35F4(v82, &off_287953B08, (v77 + 7), sub_2689F36AC, v80, v78, v79);

      return;
    }

    v123 = v38;
    v121(v113, v120, v19);
    v83 = v112;
    v42(v112, v41, v132);
    v84 = v39;
    v85 = sub_268B37A34();
    v86 = sub_268B37EE4();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v133[0] = v131;
      *v87 = 136315138;
      v88 = v132;
      v42(v126, v83, v132);
      v89 = sub_268B37C24();
      v124 = v19;
      v90 = v89;
      v92 = v91;
      v93 = *(v11 + 8);
      v93(v83, v88);
      v94 = sub_26892CDB8(v90, v92, v133);

      *(v87 + 4) = v94;
      _os_log_impl(&dword_2688BB000, v85, v86, "PauseMediaFlowStrategy#makeIntentFromParse unexpected parse type in makeIntentFromParse: %s", v87, 0xCu);
      v95 = v131;
      __swift_destroy_boxed_opaque_existential_0Tm(v131);
      MEMORY[0x26D6266E0](v95, -1, -1);
      MEMORY[0x26D6266E0](v87, -1, -1);

      v96 = v113;
      v97 = v124;
    }

    else
    {

      v93 = *(v11 + 8);
      v93(v83, v132);
      v96 = v113;
      v97 = v19;
    }

    v123(v96, v97);
    type metadata accessor for ErrorFilingHelper();
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(0xD000000000000024, 0x8000000268B5A090, 0x64654D6573756150, 0xEA00000000006169, 0xD000000000000014, 0x8000000268B56D40);
    sub_2688C2ECC();
    v109 = swift_allocError();
    *v110 = 37;
    v128(v109, 1);

    v93(v130, v132);
  }
}

uint64_t sub_2689F2CD8(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_268B37A34();
  v11 = sub_268B37F04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2688BB000, v10, v11, "PauseMediaFlowStrategy#makeIntentFromParse finished creating intent from parse", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return a1(a3, 0);
}

uint64_t sub_2689F2ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2689F2F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_2689F2FAC()
{
  if (qword_2802A4E20 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD968;

  return v1;
}

uint64_t sub_2689F3008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2689F3074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2689F30E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2689F314C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_2689F319C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_2689F31F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2689F325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689F32D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689F342C(uint64_t a1, uint64_t a2)
{
  result = sub_2689F36B8(&qword_2802A6EB0, a2, type metadata accessor for PauseMediaFlowStrategy, &unk_268B43240);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689F34CC()
{
  v1 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

void sub_2689F35B4()
{
  v1 = *(sub_268B35494() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = v0 + v3;
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = *(v6 + 8);

  sub_2689F1FB8(v5, (v0 + v2), v8, v9, v7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2689F366C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2689F36B8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{

  return static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(a1, a3 | 0x8000000000000000, a2, 0xEA00000000006169, 0xD000000000000014, v3 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_11_19(uint64_t a1)
{

  return sub_268B38444();
}

id SetShuffleStateIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SetShuffleStateIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36C54();
  v27 = sub_268B36C44();
  sub_268B37204();
  v26 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v34);
  sub_268AD33CC(v33);
  sub_268B36754();
  v25 = sub_268B36734();
  v1 = sub_268B36C44();
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v3 + 16) = [v4 init];
  __swift_mutable_project_boxed_opaque_existential_1(v34, v34[3]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = (v7 - v6);
  (*(v9 + 16))(v7 - v6);
  v10 = *v8;
  v31 = v0;
  v32 = MEMORY[0x277D5F680];
  *&v30 = v1;
  v11 = type metadata accessor for AnalyticsServiceLogger();
  v29[4] = &off_28795F5E0;
  v29[3] = v11;
  v29[0] = v10;
  v28[4] = &off_287960608;
  v28[3] = v2;
  v28[0] = v3;
  type metadata accessor for AnalyticsServiceImpl();
  v12 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v29, v11);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = (v15 - v14);
  (*(v17 + 16))(v15 - v14);
  __swift_mutable_project_boxed_opaque_existential_1(v28, v2);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v21 = (v20 - v19);
  (*(v22 + 16))(v20 - v19);
  v23 = *v16;
  v24 = *v21;
  v12[5] = v11;
  v12[6] = &off_28795F5E0;
  v12[2] = v23;
  v12[21] = v2;
  v12[22] = &off_287960608;
  v12[18] = v24;
  sub_2688E6514(v33, (v12 + 7));
  v12[12] = v25;
  sub_2688E6514(&v30, (v12 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);

  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  sub_268B34C64();
  sub_2689F7824(v27, v26, &v35, v12, v34);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_2689F3BA0()
{
  OUTLINED_FUNCTION_26();
  v25 = v1;
  v26 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A24();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = v3;
  v17 = qword_2802A5028;

  if (v17 != -1)
  {
    swift_once();
  }

  qword_2802CDB28;
  sub_268B37A14();
  v18 = OUTLINED_FUNCTION_192();
  v19(v18);
  v20 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v21 = v20 + v10;
  v22 = (v20 + v10) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = "handleShuffleMedia";
  *(v23 + 24) = 18;
  *(v23 + 32) = 2;
  (*(v8 + 32))(v23 + v20, v13, v6);
  *(v23 + v21) = 1;
  v24 = v23 + v22;
  *(v24 + 8) = sub_268958724;
  *(v24 + 16) = v16;

  sub_268B38004();
  sub_268B37A04();

  sub_2689F3DF8(v25, v26, sub_268958A64, v23);

  (*(v8 + 8))(v15, v6);
  OUTLINED_FUNCTION_23();
}

void sub_2689F3DF8(void *a1, char *a2, void (*a3)(char **), uint64_t a4)
{
  v76 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v74 - v8;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v75 = &v74 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v74 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v74 - v20;
  v22 = sub_268B370C4();
  v78 = *(v22 - 8);
  v79 = v22;
  MEMORY[0x28223BE20](v22);
  v77 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  v80 = a3;
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_268958D98;
  *(v25 + 24) = v24;
  v81 = a4;

  v26 = sub_268B18100(a1);
  if (!v26)
  {
    goto LABEL_10;
  }

  v27 = v26;
  if (!sub_2688EFD0C())
  {

LABEL_10:

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v10, qword_2802CDA10);
    (*(v11 + 16))(v21, v34, v10);
    v35 = sub_268B37A34();
    v36 = sub_268B37EE4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2688BB000, v35, v36, "No devices found in SetShuffleStateIntent, returning failure", v37, 2u);
      MEMORY[0x26D6266E0](v37, -1, -1);
    }

    (*(v11 + 8))(v21, v10);
LABEL_23:
    v51 = sub_268B36EA4();
    v52 = objc_allocWithZone(type metadata accessor for SetShuffleStateIntentResponse());
    v53 = v51;
    v54 = SetShuffleStateIntentResponse.init(code:userActivity:)(5, v51);
    v83 = v54;
    v80(&v83);

    goto LABEL_24;
  }

  v28 = [a1 shuffleState];
  v29 = MEMORY[0x277D5F7A0];
  switch(v28)
  {
    case 0uLL:
    case 3uLL:

      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v30 = __swift_project_value_buffer(v10, qword_2802CDA10);
      (*(v11 + 16))(v14, v30, v10);
      v31 = sub_268B37A34();
      v32 = sub_268B37EE4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2688BB000, v31, v32, "Unexpected shuffle mode", v33, 2u);
        MEMORY[0x26D6266E0](v33, -1, -1);
      }

      (*(v11 + 8))(v14, v10);
      goto LABEL_23;
    case 1uLL:
      break;
    case 2uLL:
      v29 = MEMORY[0x277D5F798];
      break;
    default:

      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v47 = __swift_project_value_buffer(v10, qword_2802CDA10);
      (*(v11 + 16))(v19, v47, v10);
      v48 = sub_268B37A34();
      v49 = sub_268B37EE4();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_2688BB000, v48, v49, "Uknown shuffle mode", v50, 2u);
        MEMORY[0x26D6266E0](v50, -1, -1);
      }

      (*(v11 + 8))(v19, v10);
      goto LABEL_23;
  }

  (*(v78 + 104))(v77, *v29, v79);
  v38 = v76;
  __swift_project_boxed_opaque_existential_1(&v76[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_analyticsService], *&v76[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_analyticsService + 24]);
  sub_268920C54(v27);
  sub_268949478(0x6666756853746573, 0xEF6574617453656CLL, v39, v27);

  sub_268921344();
  v41 = v40;

  if (*(v41 + 16))
  {
    v42 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v42);
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    sub_2688DB634();

    __swift_project_boxed_opaque_existential_1(&v38[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_playbackController], *&v38[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_playbackController + 24]);
    v44 = swift_allocObject();
    v44[2] = sub_2688E19F8;
    v44[3] = v25;
    v44[4] = v38;
    v45 = v38;
    v46 = v77;
    sub_268B36CF4();

    (*(v78 + 8))(v46, v79);

LABEL_24:

    return;
  }

  v55 = v79;

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v56 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v57 = v75;
  (*(v11 + 16))(v75, v56, v10);
  v58 = a1;
  v59 = sub_268B37A34();
  v60 = sub_268B37EE4();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v83 = v62;
    *v61 = 136315138;
    v82 = sub_268B18100(v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B30, &qword_268B3EE70);
    v63 = sub_268B38094();
    v65 = v64;

    v66 = sub_26892CDB8(v63, v65, &v83);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_2688BB000, v59, v60, "Unable to get route ids for the intent devices: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    v67 = v62;
    v55 = v79;
    MEMORY[0x26D6266E0](v67, -1, -1);
    MEMORY[0x26D6266E0](v61, -1, -1);

    (*(v11 + 8))(v75, v10);
  }

  else
  {

    (*(v11 + 8))(v57, v10);
  }

  v69 = v77;
  v68 = v78;
  v70 = sub_268B36EA4();
  v71 = objc_allocWithZone(type metadata accessor for SetShuffleStateIntentResponse());
  v72 = v70;
  v73 = SetShuffleStateIntentResponse.init(code:userActivity:)(5, v70);
  v83 = v73;
  v80(&v83);

  (*(v68 + 8))(v69, v55);
}

uint64_t sub_2689F488C()
{
  v1 = sub_268B37A54();
  v0[7] = v1;
  v0[8] = *(v1 - 8);
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v2 = sub_268B36A24();
  v0[11] = v2;
  v0[12] = *(v2 - 8);
  v0[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802A6EF0, &unk_268B502B0);
  v0[14] = swift_task_alloc();
  v3 = sub_268B34674();
  v0[15] = v3;
  v0[16] = *(v3 - 8);
  v0[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2689F4A44, 0, 0);
}

uint64_t sub_2689F4A44()
{
  sub_268B36754();
  if (!sub_268B36734())
  {
    goto LABEL_5;
  }

  sub_268B36714();

  sub_268B36AF4();
  v2 = v1;

  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = v0[14];
  v3 = v0[15];
  sub_268B34624();

  if (__swift_getEnumTagSinglePayload(v4, 1, v3) == 1)
  {
    sub_2688C058C(v0[14], qword_2802A6EF0, &unk_268B502B0);
LABEL_5:
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v5 = v0[10];
    v6 = v0[8];
    OUTLINED_FUNCTION_82(v0[7], qword_2802CDA10);
    (*(v6 + 16))(v5);
    v7 = sub_268B37A34();
    v8 = sub_268B37EE4();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[10];
    v11 = v0[7];
    v12 = v0[8];
    if (v9)
    {
      v13 = OUTLINED_FUNCTION_14();
      *v13 = 0;
      _os_log_impl(&dword_2688BB000, v7, v8, "Unable to resolve requestId. Not donating Shuffle engagement", v13, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v12 + 8))(v10, v11);
    OUTLINED_FUNCTION_26_7();

    OUTLINED_FUNCTION_222();

    return v14();
  }

  (*(v0[16] + 32))(v0[17], v0[14], v0[15]);
  sub_268B37B84();
  sub_268B36A14();
  sub_268B369F4();
  sub_268B369E4();
  v16 = v0[5];
  v17 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
  v18 = *(v17 + 16);
  v19 = swift_task_alloc();
  v0[18] = v19;
  *v19 = v0;
  v19[1] = sub_2689F4D34;
  v20 = v0[17];
  v21 = v0[13];

  return MEMORY[0x2821C6008](v21, v20, v16, v18);
}

uint64_t sub_2689F4D34()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_2689F4EF8;
  }

  else
  {
    v2 = sub_2689F4E48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2689F4E48()
{
  v4 = OUTLINED_FUNCTION_22_9();
  v5(v4);
  (*(v2 + 8))(v1, v0);
  __swift_destroy_boxed_opaque_existential_0Tm((v3 + 16));
  OUTLINED_FUNCTION_26_7();

  OUTLINED_FUNCTION_222();

  return v6();
}

uint64_t sub_2689F4EF8()
{
  v4 = OUTLINED_FUNCTION_22_9();
  v5(v4);
  (*(v2 + 8))(v1, v0);
  __swift_destroy_boxed_opaque_existential_0Tm(v3 + 2);
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v6 = v3[19];
  v8 = v3[8];
  v7 = v3[9];
  OUTLINED_FUNCTION_82(v3[7], qword_2802CDA10);
  (*(v8 + 16))(v7);
  v9 = v6;
  v10 = sub_268B37A34();
  v11 = sub_268B37EE4();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v3[19];
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_172_0();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v13;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_2688BB000, v10, v11, "Error donating shuffle engagement: %@", v14, 0xCu);
    sub_2688C058C(v15, &qword_2802A6420, &unk_268B3C680);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {
  }

  (*(v3[8] + 8))(v3[9], v3[7]);
  OUTLINED_FUNCTION_26_7();

  OUTLINED_FUNCTION_222();

  return v18();
}

void sub_2689F50F4(uint64_t a1, void (*a2)(void))
{
  v3 = sub_268B36ED4();
  sub_2689F7408();
  v5 = v4;
  v6 = objc_allocWithZone(type metadata accessor for SetShuffleStateIntentResponse());
  v7 = v3;
  v8 = SetShuffleStateIntentResponse.init(code:userActivity:)(v5, v3);
  a2();
}

void sub_2689F5644(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_268B36C04();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v33 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v36 = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v31 = *(v10 + 16);
  v32 = v15;
  v31(v14);
  v16 = sub_268B37A34();
  v17 = sub_268B37F04();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a1;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "Resolving devices for set shuffle state", v19, 2u);
    v20 = v19;
    a1 = v18;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  v21 = *(v10 + 8);
  v21(v14, v9);
  if ((sub_268921060() & 1) != 0 && (__swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_deviceState), *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_deviceState + 24)), (sub_2688C3240() & 1) == 0))
  {
    v25 = v33;
    (v31)(v33, v32, v9);
    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2688BB000, v26, v27, "Whole House Audio requests are unsupported on this platform", v28, 2u);
      MEMORY[0x26D6266E0](v28, -1, -1);
    }

    v21(v25, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetShuffleStateDevicesResolutionResult();
    *(v29 + 32) = sub_268B17B04(2);
    v30 = sub_268B37CE4();
    v24 = v36;
    (v36)[2](v36, v30);
  }

  else
  {
    v23 = v34;
    v22 = v35;
    (*(v34 + 104))(v8, *MEMORY[0x277D5F650], v35);
    [a1 mediaType];
    v24 = v36;
    _Block_copy(v36);
    sub_268908AF4();
    (*(v23 + 8))(v8, v22);
  }

  _Block_release(v24);
  _Block_release(v24);
}

void sub_2689F5A9C()
{
  OUTLINED_FUNCTION_26();
  v37 = v1;
  v38 = v2;
  v39 = v4;
  v40 = v3;
  v36 = sub_268B36C04();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20_0();
  v35 = (v15 - v16);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v20 = __swift_project_value_buffer(v11, qword_2802CDA10);
  v34 = *(v13 + 16);
  v34(v19, v20, v11);
  v21 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_27_7();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_14();
    *v23 = 0;
    _os_log_impl(&dword_2688BB000, v21, v0, "Resolving devices for set shuffle state", v23, 2u);
    OUTLINED_FUNCTION_12();
  }

  v24 = *(v13 + 8);
  v25 = OUTLINED_FUNCTION_138();
  v24(v25);
  if ((sub_268921060() & 1) != 0 && (v26 = *(v37 + OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_deviceState + 24), __swift_project_boxed_opaque_existential_1((v37 + OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_deviceState), v26), (sub_2688C3240() & 1) == 0))
  {
    v28 = v35;
    v34(v35, v20, v11);
    v29 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_27_7();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v31);
      OUTLINED_FUNCTION_21_6(&dword_2688BB000, v29, v26, "Whole House Audio requests are unsupported on this platform");
      OUTLINED_FUNCTION_83_0();
    }

    (v24)(v28, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v32 = swift_allocObject();
    OUTLINED_FUNCTION_16_18(v32, xmmword_268B3BBA0);
    v32[2].n128_u64[0] = sub_268B17B04(2);
    v38(v32);
  }

  else
  {
    v27 = v36;
    (*(v6 + 104))(v10, *MEMORY[0x277D5F650], v36);
    [v40 mediaType];

    sub_2689093B4();
    (*(v6 + 8))(v10, v27);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2689F5E28()
{
  OUTLINED_FUNCTION_26();
  v75 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17_6();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v68 - v22;
  if (v7)
  {
    if (v7 == OS_LOG_TYPE_INFO)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      __swift_project_value_buffer(v10, qword_2802CDA10);
      OUTLINED_FUNCTION_1_13();
      v24(v0);

      v25 = sub_268B37A34();
      v26 = sub_268B37F04();
      sub_268958D4C(v9, 1u);
      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_172_0();
        v73 = v3;
        v74 = v5;
        v28 = v27;
        v29 = OUTLINED_FUNCTION_173_0();
        OUTLINED_FUNCTION_28_10(v29);
        *v28 = 136315138;
        v30 = type metadata accessor for Device();
        v31 = MEMORY[0x26D6256F0](v9, v30);
        v33 = OUTLINED_FUNCTION_30_3(v31, v32);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_2688BB000, v25, v26, "SetShuffleStateIntentHandler#resolveDevices Disambiguating between devices: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v3);
        OUTLINED_FUNCTION_83_0();
        OUTLINED_FUNCTION_12();
      }

      (*(v12 + 8))(v0, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v34 = swift_allocObject();
      OUTLINED_FUNCTION_16_18(v34, xmmword_268B3BBA0);
      v34[2].n128_u64[0] = sub_268B2CCFC(v9);
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v73 = v3;
      v74 = v5;
      OUTLINED_FUNCTION_82(v10, qword_2802CDA10);
      v51 = *(v12 + 16);
      v71 = v52;
      v72 = v12 + 16;
      v70 = v51;
      (v51)(v23);
      v53 = sub_268B37A34();
      sub_268B37EE4();
      OUTLINED_FUNCTION_27_7();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = OUTLINED_FUNCTION_172_0();
        v69 = OUTLINED_FUNCTION_173_0();
        v77 = v69;
        *v55 = 136315138;
        v76 = v9 & 1;
        sub_26890C84C();
        v56 = sub_268B384A4();
        v58 = sub_26892CDB8(v56, v57, &v77);

        *(v55 + 4) = v58;
        _os_log_impl(&dword_2688BB000, v53, v7, "SetShuffleStateIntentHandler#resolveDevices Error resolving devices: %s", v55, 0xCu);
        OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_12();
      }

      v59 = *(v12 + 8);
      v59(v23, v10);
      if (v9)
      {
        v70(v16, v71, v10);
        v60 = sub_268B37A34();
        v61 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_19(v61))
        {
          v62 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v62);
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v63, v64, "SetShuffleStateIntentHandler#resolveDevices .noMatchingDevicesFound");
          OUTLINED_FUNCTION_83_0();
        }

        v59(v16, v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v65 = swift_allocObject();
        OUTLINED_FUNCTION_16_18(v65, xmmword_268B3BBA0);
        v66 = OUTLINED_FUNCTION_33_9();
        v67 = sub_268B17B04(v66);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v65 = swift_allocObject();
        OUTLINED_FUNCTION_16_18(v65, xmmword_268B3BBA0);
        v67 = [swift_getObjCClassFromMetadata() notRequired];
      }

      v65[2].n128_u64[0] = v67;
    }

    goto LABEL_30;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v10, qword_2802CDA10);
  OUTLINED_FUNCTION_1_13();
  v35(v21);

  v36 = sub_268B37A34();
  v37 = sub_268B37F04();
  sub_268958D4C(v9, 0);
  v38 = os_log_type_enabled(v36, v37);
  v74 = v5;
  if (v38)
  {
    v39 = OUTLINED_FUNCTION_172_0();
    v73 = v3;
    v40 = v39;
    v41 = OUTLINED_FUNCTION_173_0();
    OUTLINED_FUNCTION_28_10(v41);
    *v40 = 136315138;
    v42 = type metadata accessor for Device();
    v43 = MEMORY[0x26D6256F0](v9, v42);
    v45 = sub_26892CDB8(v43, v44, &v77);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_2688BB000, v36, v37, "SetShuffleStateIntentHandler#resolveDevices Success resolving devices: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_12();
  }

  (*(v12 + 8))(v21, v10);
  v46 = sub_2688EFD0C();
  if (!v46)
  {
    goto LABEL_30;
  }

  v47 = v46;
  v77 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v47 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SetShuffleStateDevicesResolutionResult();
    v48 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x26D625BD0](v48, v9);
      }

      else
      {
        v49 = *(v9 + 8 * v48 + 32);
      }

      v50 = v49;
      ++v48;
      sub_268B2CC98(v49);

      sub_268B38214();
      OUTLINED_FUNCTION_25_8();
      sub_268B38254();
      sub_268B38224();
    }

    while (v47 != v48);
LABEL_30:
    OUTLINED_FUNCTION_192();
    sub_2689A25C4();

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}