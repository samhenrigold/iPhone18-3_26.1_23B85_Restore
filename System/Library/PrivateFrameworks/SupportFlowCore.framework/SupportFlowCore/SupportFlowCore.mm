uint64_t sub_232E2D978()
{

  return MEMORY[0x2821FE8E8](v0, 44, 7);
}

uint64_t sub_232E2D9B0()
{
  sub_232E4CA50();
  OUTLINED_FUNCTION_6();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 20, v2 | 7);
}

uint64_t sub_232E2DB58()
{

  OUTLINED_FUNCTION_20();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_232E2DB8C()
{

  OUTLINED_FUNCTION_20();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_232E2DC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD98B0, &qword_232E4D988);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_232E2DD3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD98B0, &qword_232E4D988);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_232E2E154()
{
  result = OUTLINED_FUNCTION_10_2();
  *v1 = *(v0 + *(result + 52));
  return result;
}

uint64_t sub_232E2E26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_232E4C980();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_232E2E2F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_232E4C980();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232E2E43C()
{
  v0 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v1 = [v0 Signals];
  result = swift_unknownObjectRelease();
  qword_27DDD9D00 = v1;
  return result;
}

uint64_t SupportFlowBiomeManager.sessionId.getter()
{
  v1 = *v0;

  return v1;
}

SupportFlowCore::SupportFlowBiomeManager::EventType_optional __swiftcall SupportFlowBiomeManager.EventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_232E4D0D0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SupportFlowBiomeManager.EventType.rawValue.getter()
{
  v1 = 0x61737265766E6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

unint64_t sub_232E2E5E0@<X0>(unint64_t *a1@<X8>)
{
  result = SupportFlowBiomeManager.EventType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void SupportFlowBiomeManager.init(sessionId:version:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_232E4C9B0();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  if (!a2)
  {
    sub_232E4C9A0();
    a1 = sub_232E4C990();
    a2 = v15;
    (*(v10 + 8))(v14, v8);
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
}

void SupportFlowBiomeManager.donateTroubleShootingActionEvent(actionId:title:url:flowId:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_14();
  v37 = v11;
  v38 = v12;
  v14 = v13;
  v35 = v15;
  v36 = v16;
  v34 = v17;
  v18 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  v22 = sub_232E4CBB0();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v33 = *v14;
  v26 = *v7;
  v27 = v7[1];
  v32 = *(v7 + 4);
  v42 = v8;
  v43 = v34;
  v44 = v35;
  v45 = v36;
  v46 = v37;
  OUTLINED_FUNCTION_7(sub_232E2EA50, &v41, v28, MEMORY[0x277D206D8]);
  v39[2] = v38;
  v40 = v10;
  OUTLINED_FUNCTION_13(sub_232E2EA74, v39, v29, MEMORY[0x277D206C0]);
  v47 = v26;
  v48 = v27;
  v49 = v32;
  OUTLINED_FUNCTION_9(v33);
  OUTLINED_FUNCTION_12(v30, v31);
  (*(v20 + 8))(v9, v18);
  (*(v24 + 8))(v10, v22);
  OUTLINED_FUNCTION_8();
}

uint64_t sub_232E2E8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD98B0, &qword_232E4D988);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;

  sub_232E4CBA0();

  sub_232E4CB80();
  sub_232E3227C(a6, v9, &qword_27DDD98B0, &qword_232E4D988);
  v10 = sub_232E4C8D0();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_232E322DC(v9, &qword_27DDD98B0, &qword_232E4D988);
  }

  else
  {
    sub_232E4C8A0();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  return sub_232E4CB60();
}

uint64_t sub_232E2EAAC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_232E4CC90();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = *a2;
  v18 = v4[1];
  v19 = *(v4 + 4);
  v34 = *v4;
  v35 = v18;
  v36 = v19;
  v37 = v17;
  v38 = a3;
  v39 = a4;
  v40 = a1;
  sub_232E4CCB0();
  if (qword_27DDD97F8 != -1)
  {
    swift_once();
  }

  sub_232E4CA20();
  sub_232E321C0(&qword_27DDD9870, MEMORY[0x277D20370], MEMORY[0x277D20368]);
  sub_232E4CA30();
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  sub_232E4CCA0();
  __swift_destroy_boxed_opaque_existential_0Tm(v41);
  if (qword_27DDD9850 != -1)
  {
    swift_once();
  }

  v20 = sub_232E4CCE0();
  __swift_project_value_buffer(v20, qword_27DDD9D18);
  (*(v10 + 16))(v14, v16, v9);
  v21 = sub_232E4CCC0();
  v22 = sub_232E4CF60();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v41[0] = v24;
    *v23 = 136315138;
    v25 = sub_232E308CC();
    v27 = v26;
    v33 = v16;
    v28 = *(v10 + 8);
    v28(v14, v9);
    v29 = sub_232E3161C(v25, v27, v41);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_232E2C000, v21, v22, "Event donated to Biome:\n%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x238397C80](v24, -1, -1);
    MEMORY[0x238397C80](v23, -1, -1);

    return (v28)(v33, v9);
  }

  else
  {

    v31 = *(v10 + 8);
    v31(v14, v9);
    return (v31)(v16, v9);
  }
}

void SupportFlowBiomeManager.donateTroubleShootingArticleEvent(articleId:url:flowId:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_14();
  v34 = v12;
  v35 = v13;
  v15 = v14;
  v33 = v16;
  v17 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  v21 = sub_232E4CC10();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1();
  v25 = *v15;
  v27 = *v8;
  v26 = v8[1];
  v31 = *(v8 + 4);
  v32 = v25;
  v39 = v9;
  v40 = v33;
  v41 = v34;
  OUTLINED_FUNCTION_7(sub_232E2F368, &v38, v28, MEMORY[0x277D20708]);
  v36[2] = v35;
  v37 = v11;
  v30 = OUTLINED_FUNCTION_13(sub_232E2F388, v36, v29, MEMORY[0x277D206C0]);
  v43 = v27;
  v44 = v26;
  v45 = v31;
  v42 = v32;
  OUTLINED_FUNCTION_12(v30, &v42);
  (*(v19 + 8))(v10, v17);
  (*(v23 + 8))(v11, v21);
  OUTLINED_FUNCTION_8();
}

uint64_t sub_232E2F200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD98B0, &qword_232E4D988);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;

  sub_232E4CB00();
  sub_232E3227C(a4, v7, &qword_27DDD98B0, &qword_232E4D988);
  v8 = sub_232E4C8D0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_232E322DC(v7, &qword_27DDD98B0, &qword_232E4D988);
  }

  else
  {
    sub_232E4C8A0();
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  return sub_232E4CAE0();
}

void SupportFlowBiomeManager.donateTroubleShootingSettingsEvent(settingId:value:flowId:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_14();
  v37 = v12;
  v38 = v13;
  v15 = v14;
  v35 = v16;
  v36 = v17;
  v18 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  v22 = sub_232E4CC60();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v26 = *v15;
  v27 = *v8;
  v28 = v8[1];
  v33 = *(v8 + 4);
  v34 = v26;
  v42 = v9;
  v43 = v35;
  v44 = v36;
  v45 = v37;
  OUTLINED_FUNCTION_7(sub_232E2F5D8, &v41, v29, MEMORY[0x277D20718]);
  v39[2] = v38;
  v40 = v11;
  OUTLINED_FUNCTION_13(sub_232E2F5F8, v39, v30, MEMORY[0x277D206C0]);
  v46 = v27;
  v47 = v28;
  v48 = v33;
  OUTLINED_FUNCTION_9(v34);
  OUTLINED_FUNCTION_12(v31, v32);
  (*(v20 + 8))(v10, v18);
  (*(v24 + 8))(v11, v22);
  OUTLINED_FUNCTION_8();
}

uint64_t sub_232E2F568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_232E4CB00();

  return sub_232E4CAE0();
}

void SupportFlowBiomeManager.donateTroubleShootingUserSelection(question:answer:flowId:stepId:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_14();
  v26 = v9;
  v27 = v10;
  v12 = v11;
  v13 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v17 = sub_232E4CB10();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2();
  v23 = v22 - v21;
  v25 = *v12;
  sub_232E4CCB0();
  sub_232E4CCB0();
  OUTLINED_FUNCTION_9(v25);
  sub_232E2EAAC(v8, v24, v26, v27);
  (*(v15 + 8))(v8, v13);
  (*(v19 + 8))(v23, v17);
  OUTLINED_FUNCTION_8();
}

uint64_t sub_232E2F824(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_232E4CB00();

  return sub_232E4CAE0();
}

uint64_t sub_232E2F8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unsigned int *a5)
{
  v10 = sub_232E4CBC0();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  sub_232E4CA50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  (*(v17 + 16))(v16 - v15, a2);
  sub_232E4CA70();
  v18 = a4(0);
  v19 = swift_allocBox();
  (*(*(v18 - 8) + 16))(v20, a3, v18);
  *v5 = v19;
  (*(v12 + 104))(v5, *a5, v10);
  return sub_232E4CA90();
}

void SupportFlowBiomeManager.donateSupportFlowSessionEvent(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_14();
  v9 = v8;
  type metadata accessor for SupportFlowSession(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v13 = (v12 - v11);
  sub_232E4C780();
  swift_allocObject();
  sub_232E4C770();
  sub_232E321C0(&qword_27DDD9858, type metadata accessor for SupportFlowSession, &protocol conformance descriptor for SupportFlowSession);
  v14 = sub_232E4C760();
  v16 = v15;

  v17 = objc_allocWithZone(MEMORY[0x277CF1168]);
  sub_232E31B64(v14, v16);
  v18 = sub_232E314F8(0xD000000000000021, 0x8000000232E4ED80, 0, 0, 0, 0, v14, v16);
  if (qword_27DDD97F0 != -1)
  {
    swift_once();
  }

  v19 = [qword_27DDD9D00 source];
  [v19 sendEvent_];

  if (qword_27DDD9850 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_27DDD9850);
  }

  v20 = sub_232E4CCE0();
  __swift_project_value_buffer(v20, qword_27DDD9D18);
  sub_232E31BBC(v9, v13);
  v21 = sub_232E4CCC0();
  v22 = sub_232E4CF60();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28 = v24;
    *v23 = 136315138;
    v25 = *v13;
    v26 = v13[1];

    sub_232E31C78(v13);
    v27 = sub_232E3161C(v25, v26, &v28);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_232E2C000, v21, v22, "Successfully donated session event to Biome for session: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
    sub_232E31C20(v14, v16);
  }

  else
  {
    sub_232E31C20(v14, v16);

    sub_232E31C78(v13);
  }

  OUTLINED_FUNCTION_8();
}

uint64_t SupportFlowBiomeManager.eventPublisher(for:type:interaction:session:)(unsigned __int8 *a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9868, &qword_232E4D858);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  v9 = sub_232E4CA50();
  OUTLINED_FUNCTION_0();
  v39 = v10;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  v15 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - v16;
  v42 = *a1;
  v18 = v2[1];
  v41 = *v2;
  v43 = v18;
  v40 = *(v2 + 4);
  if (qword_27DDD97F8 != -1)
  {
    swift_once();
  }

  v19 = sub_232E4CA20();
  sub_232E321C0(&qword_27DDD9870, MEMORY[0x277D20370], MEMORY[0x277D20368]);
  sub_232E4CA40();
  if (!v3)
  {
    sub_232E3227C(a2, v8, &qword_27DDD9868, &qword_232E4D858);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_232E322DC(v8, &qword_27DDD9868, &qword_232E4D858);
    }

    else
    {
      v20 = v39;
      v37 = *(v39 + 32);
      v37(v17, v8, v9);
      OUTLINED_FUNCTION_11();
      v38 = sub_232E4CCF0();
      v48 = v38;
      (*(v20 + 16))(v15, v17, v9);
      v21 = (*(v20 + 80) + 16) & ~*(v20 + 80);
      v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
      v23 = swift_allocObject();
      v37((v23 + v21), v15, v9);
      v24 = v43;
      v25 = v23 + v22;
      *v25 = v41;
      *(v25 + 8) = v24;
      *(v25 + 16) = v40;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9878, &qword_232E4D860);
      v46 = OUTLINED_FUNCTION_4(&qword_27DDD9880);
      __swift_allocate_boxed_opaque_existential_1(&v44);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9888, &qword_232E4D868);
      OUTLINED_FUNCTION_3();
      sub_232E31E44(v26, v27, &qword_232E4D868, v28);
      sub_232E4CD00();

      (*(v20 + 8))(v17, v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      sub_232E31E8C(&v44, v47);
    }

    v29 = v42;
    if (v42 != 12)
    {
      OUTLINED_FUNCTION_11();
      v48 = sub_232E4CCF0();
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      v31 = v43;
      *(v30 + 24) = v41;
      *(v30 + 32) = v31;
      *(v30 + 40) = v40;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9878, &qword_232E4D860);
      v46 = OUTLINED_FUNCTION_4(&qword_27DDD9880);
      __swift_allocate_boxed_opaque_existential_1(&v44);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9888, &qword_232E4D868);
      OUTLINED_FUNCTION_3();
      sub_232E31E44(v32, v33, &qword_232E4D868, v34);
      sub_232E4CD00();

      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      sub_232E31E8C(&v44, v47);
    }

    OUTLINED_FUNCTION_11();
    v19 = sub_232E4CCF0();
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
  }

  return v19;
}

uint64_t sub_232E30418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v5 = sub_232E4CA50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_232E4CAA0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E4CAB0();
  sub_232E4CA60();
  (*(v10 + 8))(v12, v9);
  sub_232E321C0(&qword_27DDD98A0, MEMORY[0x277D206B0], MEMORY[0x277D206B8]);
  sub_232E4CEC0();
  sub_232E4CEC0();
  (*(v6 + 8))(v8, v5);
  if (v20 == v19)
  {
    if (sub_232E4CC70() == a3 && v13 == v18)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_232E4D1D0();
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_232E3065C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_232E4CB20();
  v8 = v7;
  if (v6 == SupportFlowIdentifier.rawValue.getter() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_232E4D1D0();

    v12 = 0;
    if ((v11 & 1) == 0)
    {
      return v12 & 1;
    }
  }

  if (sub_232E4CC70() == a3 && v13 == a4)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_232E4D1D0();
  }

  return v12 & 1;
}

uint64_t sub_232E30760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v16 = a8;
  v15[1] = a6;
  v9 = a5;
  v10 = sub_232E4CAA0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_232E4CC80();
  if (v9 != 12)
  {
    v17 = a5;
    SupportFlowIdentifier.rawValue.getter();
  }

  sub_232E4CB30();

  sub_232E4CB40();
  (*(v11 + 16))(v13, v16, v10);
  return sub_232E4CAC0();
}

uint64_t sub_232E308CC()
{
  v0 = sub_232E4CBC0();
  v22 = *(v0 - 8);
  v23 = v0;
  MEMORY[0x28223BE20](v0);
  v21 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_232E4CA50();
  v2 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_232E4CAA0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_232E4D050();

  v24 = 0x203A776F6C46;
  v25 = 0xE600000000000000;
  v9 = sub_232E4CB20();
  MEMORY[0x238397350](v9);

  MEMORY[0x238397350](0xD000000000000014, 0x8000000232E4EDB0);
  sub_232E4CAB0();
  sub_232E4CA60();
  v10 = *(v6 + 8);
  v10(v8, v5);
  v11 = sub_232E30BE8();
  v13 = v12;
  (*(v2 + 8))(v4, v20);
  MEMORY[0x238397350](v11, v13);

  MEMORY[0x238397350](0x6E6F69746341202CLL, 0xEA0000000000203ALL);
  sub_232E4CAB0();
  v14 = v21;
  sub_232E4CA80();
  v10(v8, v5);
  v15 = v14;
  v16 = sub_232E30D50();
  v18 = v17;
  (*(v22 + 8))(v15, v23);
  MEMORY[0x238397350](v16, v18);

  return v24;
}

uint64_t sub_232E30BE8()
{
  v1 = v0;
  v2 = sub_232E4CA50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D206A8])
  {
    return 0x6574736567677553;
  }

  if (v6 == *MEMORY[0x277D206A0])
  {
    return 0x6465747563657845;
  }

  (*(v3 + 8))(v5, v2);
  return 0x6E776F6E6B6E55;
}

uint64_t sub_232E30D50()
{
  v1 = sub_232E4CC60();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_232E4CB10();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_232E4CC10();
  v44 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_232E4CBB0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_232E4CBC0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, v0, v13);
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == *MEMORY[0x277D206E8])
  {
    (*(v14 + 96))(v16, v13);
    v18 = swift_projectBox();
    (*(v10 + 16))(v12, v18, v9);
    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    sub_232E4D050();

    strcpy(v45, "Action ID: ");
    HIDWORD(v45[1]) = -352321536;
    v19 = sub_232E4CB90();
    MEMORY[0x238397350](v19);

    MEMORY[0x238397350](0x3A656C746974202CLL, 0xE900000000000020);
    v20 = sub_232E4CB70();
    MEMORY[0x238397350](v20);

    MEMORY[0x238397350](0x203A4C5255202CLL, 0xE700000000000000);
    v21 = sub_232E4CB50();
    MEMORY[0x238397350](v21);

    v22 = v45[0];
    (*(v10 + 8))(v12, v9);
  }

  else if (v17 == *MEMORY[0x277D206F0])
  {
    (*(v14 + 96))(v16, v13);
    v23 = swift_projectBox();
    v24 = v44;
    (*(v44 + 16))(v8, v23, v6);
    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    sub_232E4D050();

    strcpy(v45, "Article ID: ");
    BYTE5(v45[1]) = 0;
    HIWORD(v45[1]) = -5120;
    v25 = sub_232E4CAF0();
    MEMORY[0x238397350](v25);

    MEMORY[0x238397350](0x203A4C5255202CLL, 0xE700000000000000);
    v26 = sub_232E4CAD0();
    MEMORY[0x238397350](v26);

    v22 = v45[0];
    (*(v24 + 8))(v8, v6);
  }

  else if (v17 == *MEMORY[0x277D206F8])
  {
    (*(v14 + 96))(v16, v13);
    v28 = swift_projectBox();
    v30 = v42;
    v29 = v43;
    (*(v42 + 16))(v3, v28, v43);
    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    sub_232E4D050();

    strcpy(v45, "Setting ID: ");
    BYTE5(v45[1]) = 0;
    HIWORD(v45[1]) = -5120;
    v31 = sub_232E4CAF0();
    MEMORY[0x238397350](v31);

    MEMORY[0x238397350](0x3A65756C6156202CLL, 0xE900000000000020);
    v32 = sub_232E4CAD0();
    MEMORY[0x238397350](v32);

    v22 = v45[0];
    (*(v30 + 8))(v3, v29);
  }

  else
  {
    if (v17 != *MEMORY[0x277D20700])
    {
      (*(v14 + 8))(v16, v13);
      return 0x206E776F6E6B6E55;
    }

    (*(v14 + 96))(v16, v13);
    v33 = swift_projectBox();
    v35 = v39;
    v34 = v40;
    v36 = v41;
    (*(v40 + 16))(v39, v33, v41);
    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    sub_232E4D050();

    v45[0] = 0xD000000000000016;
    v45[1] = 0x8000000232E4EDD0;
    v37 = sub_232E4CAF0();
    MEMORY[0x238397350](v37);

    MEMORY[0x238397350](0x726577736E41202CLL, 0xEA0000000000203ALL);
    v38 = sub_232E4CAD0();
    MEMORY[0x238397350](v38);

    v22 = v45[0];
    (*(v34 + 8))(v35, v36);
  }

  return v22;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_232E314F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a2)
  {
    v13 = sub_232E4CDD0();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = sub_232E4CDD0();

  if (a6)
  {
LABEL_4:
    v15 = sub_232E4CDD0();

    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  if (a8 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_232E4C8E0();
    sub_232E32268(a7, a8);
  }

  v17 = [v8 initWithContentIdentifier:v13 context:v14 osBuild:v15 userInfo:v16];

  return v17;
}

unint64_t sub_232E3161C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_232E316E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_232E32208(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_232E316E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_232E317E0(a5, a6);
    *a1 = v9;
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
    result = sub_232E4D090();
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

uint64_t sub_232E317E0(uint64_t a1, unint64_t a2)
{
  v3 = sub_232E3182C(a1, a2);
  sub_232E31944(&unk_284831668);
  return v3;
}

uint64_t sub_232E3182C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_232E4CE50())
  {
    result = sub_232E4A414(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_232E4D040();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_232E4D090();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_232E31944(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_232E31A28(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_232E31A28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD98A8, &qword_232E4D980);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_232E31B64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_232E31BBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportFlowSession(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232E31C20(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_232E31C78(uint64_t a1)
{
  v2 = type metadata accessor for SupportFlowSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_232E31E44(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_232E31E8C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_232E31EA4(uint64_t a1)
{
  v3 = *(sub_232E4CA50() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_232E30418(a1, v1 + v4, v6, v7);
}

unint64_t sub_232E31F4C()
{
  result = qword_27DDD9898;
  if (!qword_27DDD9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9898);
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_232E31FB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232E31FF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SupportFlowBiomeManager.EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SupportFlowBiomeManager.EventType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_232E321C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232E32208(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_232E32268(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_232E31C20(result, a2);
  }

  return result;
}

uint64_t sub_232E3227C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_232E322DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4(unint64_t *a1)
{
  v4 = MEMORY[0x277CBCC90];

  return sub_232E31E44(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232E4CCB0();
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1, char *a2)
{

  return sub_232E2EAAC(v2, a2, 0, 0);
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232E4CCB0();
}

void OUTLINED_FUNCTION_15()
{

  JUMPOUT(0x238397C80);
}

uint64_t OUTLINED_FUNCTION_16()
{

  return sub_232E4CAA0();
}

SupportFlowCore::EntryPoint __swiftcall EntryPoint.init(bundleIdentifier:)(Swift::String_optional bundleIdentifier)
{
  v2 = v1;
  if (bundleIdentifier.value._object)
  {
    v3 = sub_232E4D0D0();

    if (v3 <= 3)
    {
      v4 = 0x4000302u >> (8 * v3);
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 5;
  }

  *v2 = v4;
  return bundleIdentifier.value._countAndFlagsBits;
}

SupportFlowCore::EntryPoint_optional __swiftcall EntryPoint.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_232E4D0D0();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EntryPoint.rawValue.getter()
{
  result = 7368801;
  switch(*v0)
  {
    case 1:
      result = 0x6574654461746164;
      break;
    case 2:
      result = 0x72656C616964;
      break;
    case 3:
      result = 1769105779;
      break;
    case 4:
      result = 1936746868;
      break;
    case 5:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_232E32690()
{
  result = qword_27DDD98B8;
  if (!qword_27DDD98B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD98B8);
  }

  return result;
}

uint64_t sub_232E32708@<X0>(uint64_t *a1@<X8>)
{
  result = EntryPoint.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for EntryPoint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EntryPoint(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_232E32944()
{
  result = qword_27DDD98C0;
  if (!qword_27DDD98C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD98C0);
  }

  return result;
}

unint64_t SupportFlowIdentifier.rawValue.getter()
{
  result = 0x73646F50726961;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x79726574746162;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x64656C6261736964;
      break;
    case 5:
      result = 0x6150746F67726F66;
      break;
    case 6:
      result = 1818845549;
      break;
    case 7:
      result = 0x736567617373656DLL;
      break;
    case 8:
      result = 0x6573616863727570;
      break;
    case 9:
      result = 0x65526E6565726373;
      break;
    case 0xA:
      result = 0x6572617774666F73;
      break;
    case 0xB:
      result = 1768319351;
      break;
    default:
      return result;
  }

  return result;
}

SupportFlowCore::SupportFlowIdentifier_optional __swiftcall SupportFlowIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_232E4D0D0();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_232E32B6C()
{
  result = qword_28158FCC8;
  if (!qword_28158FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158FCC8);
  }

  return result;
}

unint64_t sub_232E32BE4@<X0>(unint64_t *a1@<X8>)
{
  result = SupportFlowIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_232E32C10()
{
  result = qword_27DDD98C8;
  if (!qword_27DDD98C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD98D0, &qword_232E4DB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD98C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SupportFlowIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SupportFlowIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_232E32E98()
{
  result = qword_27DDD98D8;
  if (!qword_27DDD98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD98D8);
  }

  return result;
}

uint64_t sub_232E32F08()
{
  v0 = sub_232E4C9B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E4C9A0();
  v4 = sub_232E4C990();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_27DDD98E0 = v4;
  *algn_27DDD98E8 = v6;
  dword_27DDD98F0 = 2;
  return result;
}

uint64_t sub_232E32FF0()
{
  v0 = sub_232E4CCE0();
  __swift_allocate_value_buffer(v0, qword_27DDD98F8);
  v1 = __swift_project_value_buffer(v0, qword_27DDD98F8);
  if (qword_27DDD9850 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DDD9D18);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_232E330B8()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_27DDD9910 = result;
  return result;
}

uint64_t sub_232E330F4()
{
  v7 = sub_232E4CFA0();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_232E4CF90();
  MEMORY[0x28223BE20](v3);
  v4 = sub_232E4CD40();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_232E38748(0, &qword_27DDD9980, 0x277D85C78);
  sub_232E4CD30();
  v8 = MEMORY[0x277D84F90];
  sub_232E3897C(&qword_27DDD9988, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9990, &qword_232E4DCC0);
  sub_232E38788(&qword_27DDD9998, &qword_27DDD9990, &qword_232E4DCC0);
  sub_232E4D010();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_232E4CFC0();
  qword_27DDD9918 = result;
  return result;
}

uint64_t static SupportFlowSessionManager.lastProcessedSessionDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDD9810 != -1)
  {
    OUTLINED_FUNCTION_9_0(&qword_27DDD9810);
  }

  v2 = qword_27DDD9910;
  v3 = OUTLINED_FUNCTION_21();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_232E4D000();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v5 = sub_232E4C980();
    v6 = swift_dynamicCast() ^ 1;
    v7 = a1;
    v8 = v5;
  }

  else
  {
    sub_232E322DC(v12, &qword_27DDD9920, &qword_232E4DC60);
    v8 = sub_232E4C980();
    v7 = a1;
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v6, 1, v8);
}

uint64_t sub_232E334D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportFlowSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232E3353C()
{
  if (qword_27DDD9810 != -1)
  {
    swift_once();
  }

  v0 = qword_27DDD9910;
  v1 = sub_232E4CDD0();
  v2 = [v0 dataForKey_];

  if (v2)
  {
    v3 = sub_232E4C8F0();
    v5 = v4;

    sub_232E4C750();
    swift_allocObject();
    sub_232E4C740();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9948, &unk_232E4DCA0);
    sub_232E384C0();
    sub_232E4C730();

    if (qword_27DDD9808 != -1)
    {
      swift_once();
    }

    v11 = sub_232E4CCE0();
    __swift_project_value_buffer(v11, qword_27DDD98F8);

    v12 = sub_232E4CCC0();
    v13 = sub_232E4CF60();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = *(v15 + 16);

      _os_log_impl(&dword_232E2C000, v12, v13, "Loaded %ld sessions from UserDefaults", v14, 0xCu);
      MEMORY[0x238397C80](v14, -1, -1);
    }

    else
    {
    }

    sub_232E31C20(v3, v5);

    return v15;
  }

  else
  {
    if (qword_27DDD9808 != -1)
    {
      swift_once();
    }

    v6 = sub_232E4CCE0();
    __swift_project_value_buffer(v6, qword_27DDD98F8);
    v7 = sub_232E4CCC0();
    v8 = sub_232E4CF60();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_232E2C000, v7, v8, "No session data found in UserDefaults", v9, 2u);
      MEMORY[0x238397C80](v9, -1, -1);
    }

    type metadata accessor for SupportFlowSession(0);

    return sub_232E4CD90();
  }
}

void sub_232E339D8(uint64_t a1)
{
  sub_232E4C780();
  swift_allocObject();
  sub_232E4C770();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9948, &unk_232E4DCA0);
  sub_232E3857C();
  v2 = sub_232E4C760();
  v4 = v3;

  if (qword_27DDD9810 != -1)
  {
    swift_once();
  }

  v5 = qword_27DDD9910;
  v6 = sub_232E4C8E0();
  v7 = sub_232E4CDD0();
  [v5 setObject:v6 forKey:v7];

  if (qword_27DDD9808 != -1)
  {
    swift_once();
  }

  v8 = sub_232E4CCE0();
  __swift_project_value_buffer(v8, qword_27DDD98F8);

  v9 = sub_232E4CCC0();
  v10 = sub_232E4CF60();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(a1 + 16);

    _os_log_impl(&dword_232E2C000, v9, v10, "Successfully saved session map with %ld sessions", v11, 0xCu);
    MEMORY[0x238397C80](v11, -1, -1);
  }

  else
  {
  }

  sub_232E31C20(v2, v4);
}

uint64_t sub_232E33D34(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_232E33DB8()
{
  OUTLINED_FUNCTION_14();
  v22 = v0;
  v23 = v1;
  v3 = v2;
  sub_232E4CD10();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v24 = sub_232E4CD40();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16_0();
  v6 = type metadata accessor for SupportFlowSession(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DDD9818 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_27DDD9818);
  }

  v21[1] = qword_27DDD9918;
  sub_232E31BBC(v3, v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_232E334D8(v9, v11 + v10);
  v26[4] = v22;
  v26[5] = v11;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(COERCE_DOUBLE(1107296256));
  v26[2] = v12;
  v26[3] = v23;
  v13 = _Block_copy(v26);
  sub_232E4CD20();
  v25 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_0();
  sub_232E3897C(v14, v15, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9930, &qword_232E4DC68);
  sub_232E38788(&qword_27DDD9938, &qword_27DDD9930, &qword_232E4DC68);
  OUTLINED_FUNCTION_8_0();
  sub_232E4D010();
  v16 = OUTLINED_FUNCTION_10_0();
  MEMORY[0x2383974C0](v16);
  _Block_release(v13);
  v17 = OUTLINED_FUNCTION_11_0();
  v18(v17);
  v19 = OUTLINED_FUNCTION_18();
  v20(v19);

  OUTLINED_FUNCTION_8();
}

void sub_232E34078(uint64_t *a1)
{
  v2 = type metadata accessor for SupportFlowSession(0);
  v3 = OUTLINED_FUNCTION_19(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  v7 = sub_232E3353C();
  v9 = *a1;
  v8 = a1[1];
  sub_232E31BBC(a1, v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_232E4A540(v6, v9, v8, isUniquelyReferenced_nonNull_native);

  sub_232E339D8(v7);

  if (qword_27DDD9808 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_27DDD9808);
  }

  v11 = sub_232E4CCE0();
  __swift_project_value_buffer(v11, qword_27DDD98F8);

  v12 = sub_232E4CCC0();
  v13 = sub_232E4CF60();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_23();
    v19 = OUTLINED_FUNCTION_22();
    *v14 = 136315138;
    v15 = OUTLINED_FUNCTION_11_0();
    v18 = sub_232E3161C(v15, v16, v17);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_232E2C000, v12, v13, "Successfully updated session with ID: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  else
  {
  }
}

uint64_t objectdestroyTm()
{
  OUTLINED_FUNCTION_14();
  v1 = (type metadata accessor for SupportFlowSession(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_232E4C980();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 8);
  v6(v2 + v3, v4);
  v6(v2 + v1[9], v4);

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8E8](v7, v8, v9);
}

void sub_232E34340()
{
  v1 = type metadata accessor for SupportFlowSession(0);
  OUTLINED_FUNCTION_19(v1);
  sub_232E34078((v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80))));
}

void sub_232E343B0()
{
  v0 = type metadata accessor for SupportFlowSession(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_232E3353C();
  v5 = v4;
  v6 = 0;
  v7 = v4 + 64;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v4 + 64);
  v11 = (v8 + 63) >> 6;
  if (v10)
  {
    while (1)
    {
      v12 = v6;
LABEL_9:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      sub_232E31BBC(*(v5 + 56) + *(v1 + 72) * (v13 | (v12 << 6)), v3);
      sub_232E34588(v3);
      sub_232E31C78(v3);
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  if (qword_27DDD9810 == -1)
  {
    goto LABEL_12;
  }

LABEL_14:
  swift_once();
LABEL_12:
  v14 = qword_27DDD9910;
  v15 = sub_232E4CDD0();
  [v14 removeObjectForKey_];
}

void sub_232E34588(uint64_t a1)
{
  v2 = type metadata accessor for SupportFlowSession(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v24[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = &v24[-1] - v6;
  sub_232E31BBC(a1, &v24[-1] - v6);
  SupportFlowSessionAnalyticsEvent.init(session:)(v7, v26);
  sub_232E365FC();
  sub_232E36DB4(v26);
  if (qword_27DDD9800 != -1)
  {
    swift_once();
  }

  v24[0] = qword_27DDD98E0;
  v24[1] = *algn_27DDD98E8;
  v25 = dword_27DDD98F0;

  SupportFlowBiomeManager.donateSupportFlowSessionEvent(_:)(a1, v8, v9, v10, v11, v12, v13, v14);

  if (qword_27DDD9808 != -1)
  {
    swift_once();
  }

  v15 = sub_232E4CCE0();
  __swift_project_value_buffer(v15, qword_27DDD98F8);
  sub_232E31BBC(a1, v5);
  v16 = sub_232E4CCC0();
  v17 = sub_232E4CF60();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24[0] = v19;
    *v18 = 136315138;
    v20 = *v5;
    v21 = v5[1];

    sub_232E31C78(v5);
    v22 = sub_232E3161C(v20, v21, v24);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_232E2C000, v16, v17, "Successfully logged analytics event for session: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x238397C80](v19, -1, -1);
    MEMORY[0x238397C80](v18, -1, -1);
  }

  else
  {

    sub_232E31C78(v5);
  }
}

void sub_232E3480C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  sub_232E4CD40();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16_0();
  if (qword_27DDD9818 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_27DDD9818);
  }

  v13[4] = v1;
  v13[5] = 0;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(COERCE_DOUBLE(1107296256));
  v13[2] = v4;
  v13[3] = v0;
  v5 = _Block_copy(v13);
  sub_232E4CD20();
  OUTLINED_FUNCTION_2_0();
  sub_232E3897C(v6, v7, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9930, &qword_232E4DC68);
  sub_232E38788(&qword_27DDD9938, &qword_27DDD9930, &qword_232E4DC68);
  OUTLINED_FUNCTION_8_0();
  sub_232E4D010();
  v8 = OUTLINED_FUNCTION_10_0();
  MEMORY[0x2383974C0](v8);
  _Block_release(v5);
  v9 = OUTLINED_FUNCTION_11_0();
  v10(v9);
  v11 = OUTLINED_FUNCTION_18();
  v12(v11);

  OUTLINED_FUNCTION_8();
}

uint64_t sub_232E34A0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9960, &qword_232E4DCB0);
  MEMORY[0x28223BE20](v0 - 8);
  v96 = &v84 - v1;
  v2 = type metadata accessor for SupportFlowSession(0);
  v102 = *(v2 - 8);
  v103 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v94 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v100 = &v84 - v6;
  MEMORY[0x28223BE20](v5);
  v98 = &v84 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD99A8, &qword_232E4DCC8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v84 - v12;
  v14 = sub_232E4C980();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v84 - v20;
  MEMORY[0x28223BE20](v19);
  v101 = &v84 - v22;
  v23 = sub_232E3353C();
  v24 = qword_27DDD9810;

  if (v24 != -1)
  {
LABEL_43:
    swift_once();
  }

  v25 = qword_27DDD9910;
  v26 = sub_232E4CDD0();
  LODWORD(v25) = [v25 BOOLForKey_];

  if (v25)
  {
    sub_232E4C900();
  }

  else
  {
    sub_232E4C970();
    sub_232E4C920();
    (*(v15 + 8))(v21, v14);
  }

  v27 = v18;
  if (qword_27DDD9808 != -1)
  {
    swift_once();
  }

  v28 = sub_232E4CCE0();
  v21 = __swift_project_value_buffer(v28, qword_27DDD98F8);
  (*(v15 + 16))(v18, v101, v14);
  v92 = v21;
  v29 = sub_232E4CCC0();
  v30 = sub_232E4CF60();
  v31 = os_log_type_enabled(v29, v30);
  v90 = v15;
  v91 = v14;
  if (v31)
  {
    v18 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v104[0] = v99;
    *v18 = 136315138;
    sub_232E3897C(&qword_27DDD9940, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v32 = sub_232E4D1B0();
    v33 = v27;
    v35 = v34;
    v89 = *(v15 + 8);
    v89(v33, v14);
    v36 = sub_232E3161C(v32, v35, v104);

    *(v18 + 4) = v36;
    _os_log_impl(&dword_232E2C000, v29, v30, "Starting cleanup of sessionMap sessions that are older than %s", v18, 0xCu);
    v21 = v99;
    __swift_destroy_boxed_opaque_existential_0Tm(v99);
    MEMORY[0x238397C80](v21, -1, -1);
    MEMORY[0x238397C80](v18, -1, -1);
  }

  else
  {

    v89 = *(v15 + 8);
    v89(v18, v14);
  }

  v38 = 0;
  v14 = (v23 + 8);
  v39 = 1 << *(v23 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v15 = v40 & v23[8];
  v95 = MEMORY[0x277D84F90];
  v41 = (v39 + 63) >> 6;
  *&v37 = 136315394;
  v88 = v37;
  v99 = v23;
  v97 = v11;
  while (1)
  {
    if (!v15)
    {
      while (1)
      {
        v42 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v42 >= v41)
        {
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD99B0, &unk_232E4DCD0);
          __swift_storeEnumTagSinglePayload(v11, 1, 1, v57);
          v15 = 0;
          goto LABEL_20;
        }

        v15 = *(v14 + 8 * v42);
        ++v38;
        if (v15)
        {
          v38 = v42;
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    v42 = v38;
LABEL_19:
    v43 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v44 = v43 | (v42 << 6);
    v45 = (v23[6] + 16 * v44);
    v47 = *v45;
    v46 = v45[1];
    v48 = v23[7] + *(v102 + 72) * v44;
    v49 = v98;
    sub_232E31BBC(v48, v98);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD99B0, &unk_232E4DCD0);
    v51 = *(v50 + 48);
    v52 = v97;
    *v97 = v47;
    *(v52 + 1) = v46;
    v11 = v52;
    sub_232E334D8(v49, &v52[v51]);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v50);

LABEL_20:
    sub_232E389C4(v11, v13);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD99B0, &unk_232E4DCD0);
    if (__swift_getEnumTagSinglePayload(v13, 1, v53) == 1)
    {
      break;
    }

    v18 = *v13;
    v54 = *(v13 + 1);
    v55 = &v13[*(v53 + 48)];
    v21 = v100;
    sub_232E334D8(v55, v100);
    v56 = sub_232E4C940();
    v23 = v99;
    if (v56)
    {
      sub_232E31BBC(v21, v94);

      v93 = sub_232E4CCC0();
      v58 = sub_232E4CF60();

      v87 = v58;
      if (os_log_type_enabled(v93, v58))
      {
        v59 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v104[0] = v85;
        *v59 = v88;
        v60 = sub_232E3161C(v18, v54, v104);
        v86 = v59;
        *(v59 + 4) = v60;
        *(v59 + 12) = 2080;
        sub_232E3897C(&qword_27DDD9940, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v84 = sub_232E4D1B0();
        v62 = v61;
        sub_232E31C78(v94);
        v84 = sub_232E3161C(v84, v62, v104);

        v63 = v86;
        *(v86 + 14) = v84;
        _os_log_impl(&dword_232E2C000, v93, v87, "Processing session for cleanup: %s, timestamp: %s", v63, 0x16u);
        v64 = v85;
        swift_arrayDestroy();
        MEMORY[0x238397C80](v64, -1, -1);
        MEMORY[0x238397C80](v86, -1, -1);
      }

      else
      {

        sub_232E31C78(v94);
      }

      sub_232E34588(v100);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_232E4A0A4(0, *(v95 + 16) + 1, 1, v95);
      }

      v21 = *(v95 + 16);
      v65 = *(v95 + 24);
      v93 = (v21 + 1);
      if (v21 >= v65 >> 1)
      {
        v95 = sub_232E4A0A4(v65 > 1, v21 + 1, 1, v95);
      }

      sub_232E31C78(v100);
      v66 = v95;
      *(v95 + 16) = v93;
      v67 = v66 + 16 * v21;
      *(v67 + 32) = v18;
      *(v67 + 40) = v54;
    }

    else
    {
      sub_232E31C78(v21);
    }
  }

  v68 = v99;

  v69 = *(v95 + 16);
  if (v69)
  {
    v70 = (v95 + 40);
    v71 = v96;
    do
    {
      v72 = *(v70 - 1);
      v73 = *v70;

      v74 = sub_232E4A484(v72, v73);
      LOBYTE(v72) = v75;

      if (v72)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v104[0] = v68;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9968, &qword_232E4DCB8);
        v71 = v96;
        sub_232E4D0A0();
        v68 = v104[0];

        sub_232E334D8(v68[7] + *(v102 + 72) * v74, v71);
        v76 = v103;
        sub_232E4D0B0();
        v77 = 0;
      }

      else
      {
        v77 = 1;
        v76 = v103;
      }

      __swift_storeEnumTagSinglePayload(v71, v77, 1, v76);
      sub_232E322DC(v71, &qword_27DDD9960, &qword_232E4DCB0);
      v70 += 2;
      --v69;
    }

    while (v69);
  }

  sub_232E339D8(v68);

  v78 = v95;

  v79 = sub_232E4CCC0();
  v80 = sub_232E4CF60();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 134217984;
    v82 = *(v78 + 16);

    *(v81 + 4) = v82;

    _os_log_impl(&dword_232E2C000, v79, v80, "Successfully cleaned up %ld old sessions", v81, 0xCu);
    MEMORY[0x238397C80](v81, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return (v89)(v101, v91);
}

uint64_t sub_232E35554()
{
  v106 = type metadata accessor for SupportFlowSession(0);
  v0 = *(v106 - 8);
  v1 = MEMORY[0x28223BE20](v106);
  v104 = v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v103 = (v96 - v4);
  v5 = MEMORY[0x28223BE20](v3);
  v115 = v96 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v114 = v96 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v117 = v96 - v10;
  MEMORY[0x28223BE20](v9);
  v105 = (v96 - v11);
  v12 = sub_232E4C980();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = v96 - v17;
  if (qword_27DDD9810 != -1)
  {
LABEL_52:
    swift_once();
  }

  v19 = qword_27DDD9910;
  v20 = sub_232E4CDD0();
  v21 = [v19 BOOLForKey_];

  sub_232E4C970();
  if (qword_27DDD9808 != -1)
  {
    swift_once();
  }

  v22 = sub_232E4CCE0();
  v23 = __swift_project_value_buffer(v22, qword_27DDD98F8);
  v24 = *(v13 + 16);
  v101 = v18;
  v24(v16, v18, v12);
  v107 = v23;
  v25 = v13;
  v26 = sub_232E4CCC0();
  v27 = sub_232E4CF60();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v119[0] = v29;
    *v28 = 136315138;
    v30 = sub_232E4C960();
    v31 = v12;
    v32 = v21;
    v33 = v0;
    v35 = v34;
    v36 = v16;
    v37 = v31;
    v98 = *(v25 + 8);
    v98(v36, v31);
    v38 = sub_232E3161C(v30, v35, v119);
    v0 = v33;
    v21 = v32;

    *(v28 + 4) = v38;
    _os_log_impl(&dword_232E2C000, v26, v27, "Processing sessions for logging - current time: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x238397C80](v29, -1, -1);
    MEMORY[0x238397C80](v28, -1, -1);

    v12 = v37;
  }

  else
  {

    v98 = *(v25 + 8);
    v98(v16, v12);
  }

  v39 = v25;
  v40 = sub_232E3353C();
  MEMORY[0x28223BE20](v40);
  LOBYTE(v96[-2]) = v21;
  v41 = v101;
  v96[-1] = v101;

  v42 = v40;
  v43 = sub_232E36348(sub_232E388F4, &v96[-4], v40);
  v45 = *(v43 + 16);
  if (v45)
  {
    v96[2] = v39;
    v97 = v12;
    v46 = (*(v0 + 80) + 32) & ~*(v0 + 80);
    v96[1] = v43;
    v47 = v43 + v46;
    v113 = *(v0 + 72);
    v100 = 0x8000000232E4ECB0;
    v99 = 0x8000000232E4EC90;
    *&v44 = 136315394;
    v102 = v44;
    v96[0] = v45;
    v48 = v45;
    v49 = v106;
    v50 = v105;
    do
    {
      v116 = v42;
      sub_232E31BBC(v47, v50);
      v51 = v117;
      sub_232E31BBC(v50, v117);
      v52 = *(v51 + v49[9]);
      v111 = *(v51 + v49[10]);
      v112 = v52;
      v53 = *(v51 + v49[6]);
      v13 = 0xE300000000000000;
      v54 = 7368801;
      v108 = v48;
      v109 = v47;
      switch(v53)
      {
        case 1:
          v54 = 0x6574654461746164;
          v13 = 0xEC000000726F7463;
          break;
        case 2:
          v13 = 0xE600000000000000;
          v54 = 0x72656C616964;
          break;
        case 3:
          v13 = 0xE400000000000000;
          v54 = 1769105779;
          break;
        case 4:
          v13 = 0xE400000000000000;
          v54 = 1936746868;
          break;
        case 5:
          v13 = 0xE700000000000000;
          v54 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v55 = v49[11];
      v110 = *(v117 + v49[12]);
      v56 = *(v117 + v49[13]);
      v58 = *(v117 + v55);
      v57 = *(v117 + v55 + 8);
      v59 = 0xE700000000000000;
      v60 = 0x73646F50726961;
      switch(*(v117 + v49[14]))
      {
        case 1:
          v60 = 0xD000000000000012;
          v61 = &v128;
          goto LABEL_23;
        case 2:
          v60 = 0x79726574746162;
          break;
        case 3:
          v60 = 0xD000000000000012;
          v61 = &v129;
LABEL_23:
          v59 = *(v61 - 32);
          break;
        case 4:
          v60 = 0x64656C6261736964;
          v59 = 0xEF746E756F636341;
          break;
        case 5:
          v60 = 0x6150746F67726F66;
          v62 = 0x64726F777373;
          goto LABEL_28;
        case 6:
          v59 = 0xE400000000000000;
          v60 = 1818845549;
          break;
        case 7:
          v59 = 0xE800000000000000;
          v60 = 0x736567617373656DLL;
          break;
        case 8:
          v59 = 0xE900000000000073;
          v60 = 0x6573616863727570;
          break;
        case 9:
          v60 = 0x65526E6565726373;
          v59 = 0xEC00000072696170;
          break;
        case 0xA:
          v60 = 0x6572617774666F73;
          v62 = 0x657461647055;
LABEL_28:
          v59 = v62 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 0xB:
          v59 = 0xE400000000000000;
          v60 = 1768319351;
          break;
        case 0xC:
          v60 = 0;
          v59 = 0xE000000000000000;
          break;
        default:
          break;
      }

      v63 = v49[16];
      v0 = v117;
      v64 = *(v117 + v49[15]);
      v12 = *(v117 + v63);

      sub_232E31C78(v0);
      LOBYTE(v119[0]) = v112;
      BYTE1(v119[0]) = v111;
      v119[1] = v54;
      v119[2] = v13;
      v120 = v110;
      v121 = v56;
      v122 = v58;
      v123 = v57;
      v124 = v60;
      v125 = v59;
      v126 = v64;
      v49 = v106;
      v127 = v12;
      sub_232E365FC();
      sub_232E36DB4(v119);
      v50 = v105;
      v65 = v114;
      sub_232E31BBC(v105, v114);
      *(v65 + v49[8]) = 1;
      v18 = *v50;
      v66 = v50[1];
      sub_232E31BBC(v65, v115);
      v67 = v116;
      swift_isUniquelyReferenced_nonNull_native();
      v118[0] = v67;
      v68 = sub_232E4A484(v18, v66);
      v70 = *(v67 + 16);
      v71 = (v69 & 1) == 0;
      v16 = (v70 + v71);
      if (__OFADD__(v70, v71))
      {
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v13 = v68;
      v0 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9968, &qword_232E4DCB8);
      if (sub_232E4D0A0())
      {
        v72 = sub_232E4A484(v18, v66);
        v12 = v104;
        v16 = v103;
        if ((v0 & 1) != (v73 & 1))
        {
          result = sub_232E4D200();
          __break(1u);
          return result;
        }

        v13 = v72;
      }

      else
      {
        v12 = v104;
        v16 = v103;
      }

      v42 = v118[0];
      if (v0)
      {
        sub_232E38918(v115, *(v118[0] + 56) + v13 * v113);
      }

      else
      {
        *(v118[0] + 8 * (v13 >> 6) + 64) |= 1 << v13;
        v74 = (v42[6] + 16 * v13);
        *v74 = v18;
        v74[1] = v66;
        sub_232E334D8(v115, v42[7] + v13 * v113);
        v75 = v42[2];
        v76 = __OFADD__(v75, 1);
        v77 = v75 + 1;
        if (v76)
        {
          goto LABEL_51;
        }

        v42[2] = v77;
      }

      sub_232E31BBC(v50, v16);
      sub_232E334D8(v50, v12);
      v78 = sub_232E4CCC0();
      v79 = sub_232E4CF60();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v118[0] = v81;
        *v80 = v102;
        v116 = v42;
        v82 = *v16;
        v83 = v16[1];

        sub_232E31C78(v16);
        v84 = sub_232E3161C(v82, v83, v118);

        *(v80 + 4) = v84;
        *(v80 + 12) = 2080;
        v85 = sub_232E4C960();
        v87 = v86;
        sub_232E31C78(v12);
        v88 = sub_232E3161C(v85, v87, v118);

        *(v80 + 14) = v88;
        v42 = v116;
        _os_log_impl(&dword_232E2C000, v78, v79, "Logged session event for session: %s, lastUpdated: %s", v80, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x238397C80](v81, -1, -1);
        MEMORY[0x238397C80](v80, -1, -1);
      }

      else
      {

        sub_232E31C78(v12);
        sub_232E31C78(v16);
      }

      sub_232E31C78(v114);
      v47 = v109 + v113;
      v48 = v108 - 1;
    }

    while (v108 != 1);

    sub_232E339D8(v42);
    v89 = sub_232E4CCC0();
    v90 = sub_232E4CF50();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 134217984;
      *(v91 + 4) = v96[0];
      _os_log_impl(&dword_232E2C000, v89, v90, "Successfully logged %ld session events", v91, 0xCu);
      MEMORY[0x238397C80](v91, -1, -1);
    }

    v12 = v97;
    v41 = v101;
  }

  else
  {

    v89 = sub_232E4CCC0();
    v92 = sub_232E4CF60();
    if (os_log_type_enabled(v89, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_232E2C000, v89, v92, "No sessions found to log (lastUpdated + 24 hours <= current time)", v93, 2u);
      MEMORY[0x238397C80](v93, -1, -1);
    }
  }

  v94 = v98;

  return v94(v41, v12);
}

uint64_t sub_232E361B4(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_232E4C980();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SupportFlowSession(0);
  sub_232E4C920();
  if (a2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_232E3897C(&qword_27DDD99A0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v10 = sub_232E4CDA0();
    (*(v6 + 8))(v8, v5);
    if ((v10 & 1) == 0)
    {
      v11 = 0;
      return v11 & 1;
    }
  }

  v11 = *(a1 + *(v9 + 32)) ^ 1;
  return v11 & 1;
}

unint64_t sub_232E36348(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v5 = type metadata accessor for SupportFlowSession(0);
  v38 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  result = MEMORY[0x28223BE20](v8);
  v13 = &v32 - v12;
  v14 = 0;
  v39 = a3;
  v17 = *(a3 + 64);
  v16 = a3 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v35 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v14;
    if (!v20)
    {
      break;
    }

LABEL_8:
    v23 = *(v38 + 72);
    sub_232E31BBC(*(v39 + 56) + v23 * (__clz(__rbit64(v20)) | (v14 << 6)), v10);
    sub_232E334D8(v10, v13);
    v24 = v36(v13);
    if (v3)
    {
      sub_232E31C78(v13);
      v31 = v35;

      return v31;
    }

    v20 &= v20 - 1;
    if (v24)
    {
      sub_232E334D8(v13, v34);
      v25 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_232E414C4(0, *(v25 + 16) + 1, 1);
        v25 = v40;
      }

      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v35 = v28 + 1;
        v33 = v28;
        sub_232E414C4((v27 > 1), v28 + 1, 1);
        v29 = v35;
        v28 = v33;
        v25 = v40;
      }

      *(v25 + 16) = v29;
      v30 = *(v38 + 80);
      v35 = v25;
      result = sub_232E334D8(v34, v25 + ((v30 + 32) & ~v30) + v28 * v23);
    }

    else
    {
      result = sub_232E31C78(v13);
    }
  }

  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v21)
    {

      return v35;
    }

    v20 = *(v16 + 8 * v14);
    ++v22;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232E365FC()
{
  v1 = sub_232E4CD10();
  v13 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_232E4CD40();
  v4 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E37A8C();
  v8 = v7;
  v9 = swift_allocObject();
  memcpy((v9 + 16), v0, 0x4AuLL);
  aBlock[4] = sub_232E38840;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_232E33D34;
  aBlock[3] = &block_descriptor_49;
  v10 = _Block_copy(aBlock);
  sub_232E38848(v0, v14);
  sub_232E4CD20();
  v14[0] = MEMORY[0x277D84F90];
  sub_232E3897C(&qword_27DDD9928, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9930, &qword_232E4DC68);
  sub_232E38788(&qword_27DDD9938, &qword_27DDD9930, &qword_232E4DC68);
  sub_232E4D010();
  MEMORY[0x2383974C0](0, v6, v3, v10);
  _Block_release(v10);

  (*(v13 + 8))(v3, v1);
  (*(v4 + 8))(v6, v12);
}

uint64_t sub_232E368D0(uint64_t a1)
{
  v2 = sub_232E4CD10();
  v15 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_232E4CD40();
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E37A8C();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 20) = BYTE4(a1);
  *(v10 + 16) = a1;
  aBlock[4] = sub_232E386EC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_232E33D34;
  aBlock[3] = &block_descriptor_37;
  v11 = _Block_copy(aBlock);
  sub_232E4CD20();
  v16 = MEMORY[0x277D84F90];
  sub_232E3897C(&qword_27DDD9928, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9930, &qword_232E4DC68);
  sub_232E38788(&qword_27DDD9938, &qword_27DDD9930, &qword_232E4DC68);
  sub_232E4D010();
  MEMORY[0x2383974C0](0, v7, v4, v11);
  _Block_release(v11);

  (*(v15 + 8))(v4, v2);
  (*(v5 + 8))(v7, v14);
}

uint64_t static SupportFlowSessionManager.logSessionEvent(_:)(uint64_t a1)
{
  v2 = type metadata accessor for SupportFlowSession(0);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v21 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  sub_232E31BBC(a1, &v21 - v10);
  SupportFlowSessionAnalyticsEvent.init(session:)(v11, v23);
  sub_232E365FC();
  sub_232E36DB4(v23);
  sub_232E31BBC(a1, v9);
  v9[*(v3 + 40)] = 1;
  static SupportFlowSessionManager.updateSession(_:)(v9);
  if (qword_27DDD9808 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_27DDD9808);
  }

  v12 = sub_232E4CCE0();
  __swift_project_value_buffer(v12, qword_27DDD98F8);
  sub_232E31BBC(a1, v6);
  v13 = sub_232E4CCC0();
  v14 = sub_232E4CF60();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_23();
    v16 = OUTLINED_FUNCTION_22();
    v22 = v16;
    *v15 = 136315138;
    v17 = *v6;
    v18 = v6[1];

    sub_232E31C78(v6);
    v19 = sub_232E3161C(v17, v18, &v22);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_232E2C000, v13, v14, "Successfully logged session analytics event for session: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  else
  {

    sub_232E31C78(v6);
  }

  return sub_232E31C78(v9);
}

void static SupportFlowSessionManager.logLookbackEvent(abandon:entryPoint:duration:)()
{
  if (qword_27DDD9808 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_27DDD9808);
  }

  v0 = sub_232E4CCE0();
  __swift_project_value_buffer(v0, qword_27DDD98F8);
  oslog = sub_232E4CCC0();
  v1 = sub_232E4CF70();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_232E2C000, oslog, v1, "Deprecated logLookbackEvent called - update to use session-based method", v2, 2u);
    OUTLINED_FUNCTION_15();
  }
}

void static SupportFlowSessionManager.logLookbackEvent(for:duration:)(void *a1, char *a2)
{
  v4 = type metadata accessor for SupportFlowSession(0);
  v5 = OUTLINED_FUNCTION_19(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v8 = (v7 - v6);
  sub_232E368D0(*(a1 + *(v9 + 44)) | (*(a1 + *(v9 + 32)) << 8) | qword_232E4DD20[*a2] | qword_232E4DD00[*a2] | qword_232E4DCE0[*a2]);
  static SupportFlowSessionManager.removeProcessedSession(_:)();
  if (qword_27DDD9808 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_27DDD9808);
  }

  v10 = sub_232E4CCE0();
  __swift_project_value_buffer(v10, qword_27DDD98F8);
  sub_232E31BBC(a1, v8);
  v11 = sub_232E4CCC0();
  v12 = sub_232E4CF60();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_23();
    v14 = OUTLINED_FUNCTION_22();
    v18 = v14;
    *v13 = 136315138;
    v15 = *v8;
    v16 = v8[1];

    sub_232E31C78(v8);
    v17 = sub_232E3161C(v15, v16, &v18);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_232E2C000, v11, v12, "Successfully logged lookback analytics event and removed session: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  else
  {

    sub_232E31C78(v8);
  }
}

void static SupportFlowSessionManager.removeProcessedSession(_:)()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  sub_232E4CD40();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16_0();
  if (qword_27DDD9818 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_27DDD9818);
  }

  OUTLINED_FUNCTION_20();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v0;
  v14[4] = sub_232E383A8;
  v14[5] = v4;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(COERCE_DOUBLE(1107296256));
  v14[2] = v5;
  v14[3] = &block_descriptor_21;
  v6 = _Block_copy(v14);

  sub_232E4CD20();
  OUTLINED_FUNCTION_2_0();
  sub_232E3897C(v7, v8, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9930, &qword_232E4DC68);
  sub_232E38788(&qword_27DDD9938, &qword_27DDD9930, &qword_232E4DC68);
  OUTLINED_FUNCTION_8_0();
  sub_232E4D010();
  v9 = OUTLINED_FUNCTION_10_0();
  MEMORY[0x2383974C0](v9);
  _Block_release(v6);
  v10 = OUTLINED_FUNCTION_11_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_18();
  v13(v12);

  OUTLINED_FUNCTION_8();
}

void static SupportFlowSessionManager.updateLastProcessedSessionDate(with:)()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = sub_232E4C980();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  if (qword_27DDD9810 != -1)
  {
    OUTLINED_FUNCTION_9_0(&qword_27DDD9810);
  }

  v7 = qword_27DDD9910;
  v8 = sub_232E4C930();
  v9 = OUTLINED_FUNCTION_21();
  [v7 setObject:v8 forKey:v9];

  if (qword_27DDD9808 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_27DDD9808);
  }

  v10 = sub_232E4CCE0();
  __swift_project_value_buffer(v10, qword_27DDD98F8);
  (*(v5 + 16))(v0, v2, v3);
  v11 = sub_232E4CCC0();
  v12 = sub_232E4CF60();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_23();
    v14 = OUTLINED_FUNCTION_22();
    v23 = v14;
    *v13 = 136315138;
    sub_232E3897C(&qword_27DDD9940, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v15 = sub_232E4D1B0();
    v17 = v16;
    v18 = OUTLINED_FUNCTION_11_0();
    v19(v18);
    v20 = sub_232E3161C(v15, v17, &v23);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_232E2C000, v11, v12, "Successfully updated previous lookback date to: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  else
  {

    v21 = OUTLINED_FUNCTION_11_0();
    v22(v21);
  }

  OUTLINED_FUNCTION_8();
}

void static SupportFlowSessionManager.getSessionMap(completion:)()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  sub_232E4CD40();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16_0();
  if (qword_27DDD9818 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_27DDD9818);
  }

  OUTLINED_FUNCTION_20();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v0;
  v14[4] = sub_232E383B0;
  v14[5] = v4;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(COERCE_DOUBLE(1107296256));
  v14[2] = v5;
  v14[3] = &block_descriptor_27;
  v6 = _Block_copy(v14);

  sub_232E4CD20();
  OUTLINED_FUNCTION_2_0();
  sub_232E3897C(v7, v8, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9930, &qword_232E4DC68);
  sub_232E38788(&qword_27DDD9938, &qword_27DDD9930, &qword_232E4DC68);
  OUTLINED_FUNCTION_8_0();
  sub_232E4D010();
  v9 = OUTLINED_FUNCTION_10_0();
  MEMORY[0x2383974C0](v9);
  _Block_release(v6);
  v10 = OUTLINED_FUNCTION_11_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_18();
  v13(v12);

  OUTLINED_FUNCTION_8();
}

uint64_t sub_232E37788(void (*a1)(void))
{
  sub_232E3353C();
  a1();
}

void sub_232E377D8(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9960, &qword_232E4DCB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_232E3353C();
  v8 = sub_232E4A484(a1, a2);
  if (v9)
  {
    v10 = v8;
    swift_isUniquelyReferenced_nonNull_native();
    v22 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9968, &qword_232E4DCB8);
    sub_232E4D0A0();
    v7 = v22;

    v11 = *(v7 + 56);
    v12 = type metadata accessor for SupportFlowSession(0);
    sub_232E334D8(v11 + *(*(v12 - 8) + 72) * v10, v6);
    sub_232E4D0B0();
    v13 = v6;
    v14 = 0;
    v15 = v12;
  }

  else
  {
    v15 = type metadata accessor for SupportFlowSession(0);
    v13 = v6;
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
  sub_232E322DC(v6, &qword_27DDD9960, &qword_232E4DCB0);
  sub_232E339D8(v7);

  if (qword_27DDD9808 != -1)
  {
    swift_once();
  }

  v16 = sub_232E4CCE0();
  __swift_project_value_buffer(v16, qword_27DDD98F8);

  v17 = sub_232E4CCC0();
  v18 = sub_232E4CF60();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_232E3161C(a1, a2, &v22);
    _os_log_impl(&dword_232E2C000, v17, v18, "Removed processed session from map: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x238397C80](v20, -1, -1);
    MEMORY[0x238397C80](v19, -1, -1);
  }
}

void sub_232E37A8C()
{
  OUTLINED_FUNCTION_14();
  v7 = sub_232E4CFA0();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  sub_232E4CF90();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v5 = sub_232E4CD40();
  v6 = OUTLINED_FUNCTION_19(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16_0();
  sub_232E38748(0, &qword_27DDD9980, 0x277D85C78);
  sub_232E4CD30();
  sub_232E3897C(&qword_27DDD9988, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9990, &qword_232E4DCC0);
  sub_232E38788(&qword_27DDD9998, &qword_27DDD9990, &qword_232E4DCC0);
  sub_232E4D010();
  (*(v2 + 104))(v0, *MEMORY[0x277D85260], v7);
  sub_232E4CFC0();
  OUTLINED_FUNCTION_8();
}

void sub_232E37C98(const void *a1)
{
  if (qword_27DDD9850 != -1)
  {
    swift_once();
  }

  v2 = sub_232E4CCE0();
  __swift_project_value_buffer(v2, qword_27DDD9D18);
  sub_232E38848(a1, __dst);
  v3 = sub_232E4CCC0();
  v4 = sub_232E4CF80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_232E3161C(0xD000000000000015, 0x8000000232E4EE60, v14);
    *(v5 + 12) = 2080;
    memcpy(__dst, a1, 0x4AuLL);
    SupportFlowSessionAnalyticsEvent.eventRepresentation()();
    sub_232E38748(0, &qword_27DDD9978, 0x277D82BB8);
    v7 = sub_232E4CD80();
    v9 = v8;
    sub_232E36DB4(a1);

    v10 = sub_232E3161C(v7, v9, v14);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_232E2C000, v3, v4, "Logging analytics event %s with %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238397C80](v6, -1, -1);
    MEMORY[0x238397C80](v5, -1, -1);
  }

  else
  {

    sub_232E36DB4(a1);
  }

  v11 = sub_232E4CDD0();
  v12 = swift_allocObject();
  memcpy((v12 + 16), a1, 0x4AuLL);
  v14[4] = sub_232E388EC;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_232E3830C;
  v14[3] = &block_descriptor_55;
  v13 = _Block_copy(v14);
  sub_232E38848(a1, __dst);

  AnalyticsSendEventLazy();
  _Block_release(v13);
}

void sub_232E37F8C(unint64_t a1)
{
  if (qword_27DDD9850 != -1)
  {
    swift_once();
  }

  v2 = a1 & 0x10000;
  v3 = a1 & 0x1000000;
  v4 = a1 & 0x100000000;
  v5 = sub_232E4CCE0();
  __swift_project_value_buffer(v5, qword_27DDD9D18);
  v6 = sub_232E4CCC0();
  v7 = sub_232E4CF80();
  v8 = a1 >> 8;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_232E3161C(0xD000000000000016, 0x8000000232E4EE20, aBlock);
    *(v9 + 12) = 2080;
    v22 = a1 & 1;
    v11 = v2 >> 16;
    v12 = v3 >> 24;
    v13 = HIDWORD(v4);
    v23 = a1 >> 8;
    SupportFlowLookbackAnalyticsEvent.eventRepresentation()();
    sub_232E38748(0, &qword_27DDD9978, 0x277D82BB8);
    v14 = sub_232E4CD80();
    v16 = v15;

    v8 = sub_232E3161C(v14, v16, aBlock);

    *(v9 + 14) = v8;
    LOBYTE(v8) = v23;
    _os_log_impl(&dword_232E2C000, v6, v7, "Logging analytics event %s with %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238397C80](v10, -1, -1);
    v17 = v9;
    v18 = v22;
    MEMORY[0x238397C80](v17, -1, -1);
  }

  else
  {

    v18 = a1 & 1;
    v11 = v2 >> 16;
    v12 = v3 >> 24;
    v13 = HIDWORD(v4);
  }

  v19 = sub_232E4CDD0();
  v20 = swift_allocObject();
  v20[16] = v18;
  v20[17] = v8;
  v20[18] = v11;
  v20[19] = v12;
  v20[20] = v13;
  aBlock[4] = sub_232E38740;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_232E3830C;
  aBlock[3] = &block_descriptor_43;
  v21 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v21);
}

id sub_232E3830C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_232E38748(0, &qword_27DDD9978, 0x277D82BB8);
    v4 = sub_232E4CD70();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t getEnumTagSinglePayload for SupportFlowSessionManager(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for SupportFlowSessionManager(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_232E384C0()
{
  result = qword_27DDD9950;
  if (!qword_27DDD9950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD9948, &unk_232E4DCA0);
    sub_232E3897C(&qword_27DDD9958, type metadata accessor for SupportFlowSession, &protocol conformance descriptor for SupportFlowSession);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9950);
  }

  return result;
}

unint64_t sub_232E3857C()
{
  result = qword_27DDD9970;
  if (!qword_27DDD9970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD9948, &unk_232E4DCA0);
    sub_232E3897C(&qword_27DDD9858, type metadata accessor for SupportFlowSession, &protocol conformance descriptor for SupportFlowSession);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9970);
  }

  return result;
}

void sub_232E386A0(unsigned __int8 *a1)
{
  v1 = 0x100000000;
  if (!a1[4])
  {
    v1 = 0;
  }

  v2 = 0x1000000;
  if (!a1[3])
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if (!a1[2])
  {
    v3 = 0;
  }

  sub_232E37F8C(v3 | *a1 | (a1[1] << 8) | v2 | v1);
}

uint64_t sub_232E38748(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_232E38788(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_45Tm()
{

  return MEMORY[0x2821FE8E8](v0, 90, 7);
}

uint64_t sub_232E38918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportFlowSession(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_232E3897C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232E389C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD99A8, &qword_232E4DCC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17()
{

  return sub_232E4CD10();
}

uint64_t OUTLINED_FUNCTION_21()
{

  return sub_232E4CDD0();
}

uint64_t OUTLINED_FUNCTION_22()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_slowAlloc();
}

uint64_t sub_232E390CC(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  sub_232E4D210();
  a2(v5, a1);
  return sub_232E4D230();
}

uint64_t sub_232E39128(uint64_t a1, char a2)
{
  sub_232E4CE30();
}

uint64_t sub_232E391E8(uint64_t a1, char a2)
{
  sub_232E4CE30();
}

uint64_t sub_232E39298(uint64_t a1, char a2)
{
  sub_232E4CE30();
}

uint64_t sub_232E392E8(uint64_t a1, char a2)
{
  sub_232E4CE30();
}

uint64_t sub_232E393BC(uint64_t a1, char a2)
{
  sub_232E4CE30();
}

uint64_t sub_232E39460(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_5_1();
  }

  else
  {
    OUTLINED_FUNCTION_18_0();
  }

  sub_232E4CE30();
}

uint64_t sub_232E394BC(uint64_t a1)
{
  SupportFlowIdentifier.rawValue.getter();
  sub_232E4CE30();
}

uint64_t sub_232E3951C(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_4_1();
  }

  sub_232E4CE30();
}

uint64_t sub_232E395A4(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  sub_232E4D210();
  if (!v2)
  {
    OUTLINED_FUNCTION_4_1();
  }

  sub_232E4CE30();

  return sub_232E4D230();
}

uint64_t sub_232E39640(uint64_t a1)
{
  sub_232E4D210();
  SupportFlowIdentifier.rawValue.getter();
  sub_232E4CE30();

  return sub_232E4D230();
}

uint64_t sub_232E396A4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_232E4D210();
  if (v2)
  {
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_5_1();
  }

  else
  {
    OUTLINED_FUNCTION_18_0();
  }

  sub_232E4CE30();

  return sub_232E4D230();
}

uint64_t sub_232E39744(uint64_t a1, char a2)
{
  sub_232E4D210();
  sub_232E4CE30();

  return sub_232E4D230();
}

uint64_t sub_232E397C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_232E4D210();
  a3(v6, a2);
  return sub_232E4D230();
}

id sub_232E39814()
{
  v0 = sub_232E4C9D0();
  MEMORY[0x28223BE20](v0 - 8);
  v142 = &v130 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_232E4CDC0();
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v138 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v139 = &v130 - v6;
  MEMORY[0x28223BE20](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD98B0, &qword_232E4D988);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v130 - v8;
  v145 = sub_232E4C8D0();
  v143 = *(v145 - 8);
  v10 = MEMORY[0x28223BE20](v145);
  v140 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v130 - v13;
  MEMORY[0x28223BE20](v12);
  v144 = &v130 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A10, &qword_232E4DD70);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v130 - v17);
  v19 = type metadata accessor for ReentryUserInfo(0);
  MEMORY[0x28223BE20](v19);
  v146 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9AE8, &qword_232E4EB60);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v130 - v25;
  v27 = sub_232E4C7A0();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E47990(4, v26);
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_232E322DC(v26, &qword_27DDD9AE8, &qword_232E4EB60);
    if (qword_28158FCA8 != -1)
    {
      swift_once();
    }

    v31 = sub_232E4CCE0();
    __swift_project_value_buffer(v31, qword_28158FCB0);
    v32 = sub_232E4CCC0();
    v33 = sub_232E4CF70();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_232E2C000, v32, v33, "Invalid time interval.", v34, 2u);
      MEMORY[0x238397C80](v34, -1, -1);
    }

    return 0;
  }

  (*(v28 + 32))(v30, v26, v27);
  v137 = v28;
  v35 = v30;
  v36 = *(v28 + 16);
  v141 = v35;
  v36(v24);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v27);
  v136 = "v16@?0@NSError8";
  v37 = sub_232E48140(0xD00000000000002DLL, 0x8000000232E4F6A0, 0, 0, v24);
  sub_232E322DC(v24, &qword_27DDD9AE8, &qword_232E4EB60);
  if (!v37)
  {
    if (qword_28158FCA8 != -1)
    {
      swift_once();
    }

    v43 = sub_232E4CCE0();
    __swift_project_value_buffer(v43, qword_28158FCB0);
    v44 = sub_232E4CCC0();
    v45 = sub_232E4CF50();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v147[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_232E3161C(0xD00000000000002DLL, v136 | 0x8000000000000000, v147);
      _os_log_impl(&dword_232E2C000, v44, v45, "Found no current %s event.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x238397C80](v47, -1, -1);
      MEMORY[0x238397C80](v46, -1, -1);
    }

    goto LABEL_19;
  }

  v135 = v37;
  sub_232E3ACCC(v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_232E322DC(v18, &qword_27DDD9A10, &qword_232E4DD70);
    if (qword_28158FCA8 != -1)
    {
      swift_once();
    }

    v38 = sub_232E4CCE0();
    __swift_project_value_buffer(v38, qword_28158FCB0);
    v39 = sub_232E4CCC0();
    v40 = sub_232E4CF70();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v147[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_232E3161C(0xD00000000000002DLL, v136 | 0x8000000000000000, v147);
      _os_log_impl(&dword_232E2C000, v39, v40, "Invalid userInfo in %s event.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x238397C80](v42, -1, -1);
      MEMORY[0x238397C80](v41, -1, -1);
    }

LABEL_19:
    (*(v137 + 8))(v141, v27);
    return 0;
  }

  v48 = v18;
  v49 = v146;
  sub_232E3E200(v48, v146);
  if ((*(v49 + v19[6]) & 1) == 0)
  {

    goto LABEL_32;
  }

  v50 = sub_232E4D1D0();

  if (v50)
  {
LABEL_32:
    if (qword_28158FCA8 != -1)
    {
      swift_once();
    }

    v65 = sub_232E4CCE0();
    __swift_project_value_buffer(v65, qword_28158FCB0);
    v66 = sub_232E4CCC0();
    v67 = sub_232E4CF50();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v147[0] = v69;
      *v68 = 136315138;
      *(v68 + 4) = sub_232E3161C(0xD00000000000002DLL, v136 | 0x8000000000000000, v147);
      _os_log_impl(&dword_232E2C000, v66, v67, "Notification for event %s is canceled.", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v69);
      MEMORY[0x238397C80](v69, -1, -1);
      MEMORY[0x238397C80](v68, -1, -1);
    }

    (*(v137 + 8))(v141, v27);
    v64 = v49;
    goto LABEL_37;
  }

  v51 = (v49 + v19[7]);
  if (v51[1])
  {
    v52 = *v51;
    v133 = v51[1];
    v134 = v52;
    v53 = v51[2];
    v54 = v51[3];
    (v36)(v24, v141, v27);
    v55 = v133;
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v27);
    v132 = v53;
    v56 = sub_232E48140(v134, v55, v53, v54, v24);
    sub_232E322DC(v24, &qword_27DDD9AE8, &qword_232E4EB60);
    if (!v56)
    {
      if (qword_28158FCA8 != -1)
      {
        swift_once();
      }

      v87 = sub_232E4CCE0();
      __swift_project_value_buffer(v87, qword_28158FCB0);

      v88 = v55;

      v89 = sub_232E4CCC0();
      v90 = sub_232E4CF60();
      sub_232E3E000(v134, v55, v132, v54);
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v147[0] = v92;
        *v91 = 136315138;
        *(v91 + 4) = sub_232E3161C(v134, v88, v147);
        _os_log_impl(&dword_232E2C000, v89, v90, "No event for required signal %s.", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v92);
        MEMORY[0x238397C80](v92, -1, -1);
        MEMORY[0x238397C80](v91, -1, -1);
      }

      (*(v137 + 8))(v141, v27);
      v64 = v146;
      goto LABEL_37;
    }
  }

  v57 = v146;
  sub_232E3227C(v146, v9, &qword_27DDD98B0, &qword_232E4D988);
  v58 = v145;
  if (__swift_getEnumTagSinglePayload(v9, 1, v145) == 1)
  {
    sub_232E322DC(v9, &qword_27DDD98B0, &qword_232E4D988);
    if (qword_28158FCA8 != -1)
    {
      swift_once();
    }

    v59 = sub_232E4CCE0();
    __swift_project_value_buffer(v59, qword_28158FCB0);
    v60 = sub_232E4CCC0();
    v61 = sub_232E4CF70();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v147[0] = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_232E3161C(0xD00000000000002DLL, v136 | 0x8000000000000000, v147);
      _os_log_impl(&dword_232E2C000, v60, v61, "⚠️ No deep link URL provided in %s event", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      MEMORY[0x238397C80](v63, -1, -1);
      MEMORY[0x238397C80](v62, -1, -1);
    }

    (*(v137 + 8))(v141, v27);
    v64 = v57;
LABEL_37:
    sub_232E3E0A8(v64);
    return 0;
  }

  v72 = v143;
  v73 = v144;
  (*(v143 + 32))(v144, v9, v58);
  if (qword_28158FCA8 != -1)
  {
    swift_once();
  }

  v74 = sub_232E4CCE0();
  v75 = __swift_project_value_buffer(v74, qword_28158FCB0);
  v132 = *(v72 + 16);
  v133 = v72 + 16;
  v132(v14, v73, v58);
  v76 = v72;
  v134 = v75;
  v77 = sub_232E4CCC0();
  v78 = sub_232E4CF60();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v130 = v79;
    v131 = swift_slowAlloc();
    v147[0] = v131;
    *v79 = 136315138;
    sub_232E3E2B8(&qword_27DDD9A18, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v80 = sub_232E4D1B0();
    v82 = v81;
    v136 = *(v76 + 8);
    (v136)(v14, v58);
    v83 = sub_232E3161C(v80, v82, v147);

    v84 = v130;
    *(v130 + 1) = v83;
    v85 = v84;
    _os_log_impl(&dword_232E2C000, v77, v78, "Got reentry url from defaults. URL: %s.", v84, 0xCu);
    v86 = v131;
    __swift_destroy_boxed_opaque_existential_0Tm(v131);
    MEMORY[0x238397C80](v86, -1, -1);
    MEMORY[0x238397C80](v85, -1, -1);
  }

  else
  {

    v136 = *(v72 + 8);
    (v136)(v14, v58);
  }

  sub_232E4CDB0();
  sub_232E38748(0, &qword_27DDD9AF0, 0x277CCA8D8);
  v93 = sub_232E4CFD0();
  v94 = v144;
  if (!v93)
  {
    v95 = [objc_opt_self() mainBundle];
  }

  sub_232E4C9C0();
  sub_232E4CE00();
  v96 = (v146 + v19[5]);
  v97 = v96[1];
  if (v97)
  {
    v98 = *v96;

    sub_232E4CDB0();
    if (!sub_232E4CFD0())
    {
      v99 = [objc_opt_self() mainBundle];
    }

    sub_232E4C9C0();
    sub_232E4CE00();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9AF8, &qword_232E4E0B0);
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_232E4DD40;
    *(v100 + 56) = MEMORY[0x277D837D0];
    *(v100 + 64) = sub_232E3E264();
    *(v100 + 32) = v98;
    *(v100 + 40) = v97;

    sub_232E4CDF0();

    v94 = v144;
  }

  else
  {
    sub_232E4CDB0();
    if (!sub_232E4CFD0())
    {
      v101 = [objc_opt_self() mainBundle];
    }

    sub_232E4C9C0();
    sub_232E4CE00();
  }

  v102 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v103 = sub_232E4CDD0();

  [v102 setTitle_];

  v104 = sub_232E4CDD0();

  [v102 setBody_];

  v105 = sub_232E4CDD0();
  [v102 setCategoryIdentifier_];

  [v102 setShouldPreemptPresentedNotification_];
  [v102 setInterruptionLevel_];
  v106 = sub_232E4C8B0();
  [v102 setDefaultActionURL_];

  [v102 setShouldSuppressDefaultAction_];
  [v102 setShouldAuthenticateDefaultAction_];
  [v102 setShouldIgnoreDoNotDisturb_];
  v107 = v140;
  v108 = v145;
  v132(v140, v94, v145);
  v70 = v102;
  v109 = sub_232E4CCC0();
  v110 = sub_232E4CF60();

  v111 = os_log_type_enabled(v109, v110);
  v112 = v146;
  if (v111)
  {
    v113 = v107;
    v114 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v147[0] = v142;
    *v114 = 136315394;
    v115 = [v70 title];
    v116 = sub_232E4CDE0();
    v118 = v117;

    v119 = sub_232E3161C(v116, v118, v147);

    *(v114 + 4) = v119;
    *(v114 + 12) = 2080;
    sub_232E3E2B8(&qword_27DDD9A18, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v120 = v113;
    v121 = v145;
    v122 = sub_232E4D1B0();
    v124 = v123;
    v125 = v121;
    v126 = v136;
    (v136)(v120, v125);
    v127 = sub_232E3161C(v122, v124, v147);

    *(v114 + 14) = v127;
    _os_log_impl(&dword_232E2C000, v109, v110, "Returning notification content %s URL: %s.", v114, 0x16u);
    v128 = v142;
    swift_arrayDestroy();
    v112 = v146;
    MEMORY[0x238397C80](v128, -1, -1);
    MEMORY[0x238397C80](v114, -1, -1);

    v126(v144, v145);
  }

  else
  {

    v129 = v136;
    (v136)(v107, v108);
    v129(v94, v108);
  }

  (*(v137 + 8))(v141, v27);
  sub_232E3E0A8(v112);
  return v70;
}

uint64_t sub_232E3ACCC@<X0>(void *a1@<X8>)
{
  v3 = [v1 eventBody];
  if (v3 && (v4 = sub_232E4C42C(v3), v5 >> 60 != 15))
  {
    v9 = v4;
    v10 = v5;
    sub_232E4C750();
    swift_allocObject();
    sub_232E4C740();
    v11 = type metadata accessor for ReentryUserInfo(0);
    sub_232E3E2B8(&qword_27DDD9B00, type metadata accessor for ReentryUserInfo, &unk_232E4DF64);
    sub_232E4C730();
    sub_232E32268(v9, v10);

    v7 = a1;
    v8 = 0;
    v6 = v11;
  }

  else
  {
    v6 = type metadata accessor for ReentryUserInfo(0);
    v7 = a1;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v6);
}

uint64_t static DeviceEventCoordinator.presentReentryNotificationIfNeeded(clear:)(char a1)
{
  *(v1 + 200) = a1;
  v2 = sub_232E4C9B0();
  *(v1 + 144) = v2;
  *(v1 + 152) = *(v2 - 8);
  *(v1 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232E3B03C, 0, 0);
}

uint64_t sub_232E3B03C()
{
  if (qword_28158FCA8 != -1)
  {
    OUTLINED_FUNCTION_1_2(&qword_28158FCA8);
  }

  v1 = sub_232E4CCE0();
  __swift_project_value_buffer(v1, qword_28158FCB0);
  v2 = sub_232E4CCC0();
  v3 = sub_232E4CF60();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_232E2C000, v2, v3, "Present reentry notification if needed.", v4, 2u);
    OUTLINED_FUNCTION_15();
  }

  v5 = sub_232E39814();
  v0[21] = v5;
  if (v5)
  {
    v6 = v5;
    v8 = v0[19];
    v7 = v0[20];
    v9 = v0[18];
    sub_232E38748(0, &qword_27DDD99F8, 0x277CE1FC0);
    sub_232E4C9A0();
    v10 = sub_232E4C990();
    v12 = v11;
    (*(v8 + 8))(v7, v9);
    v13 = sub_232E3B5B4(v10, v12, v6, 0);
    v0[22] = v13;
    sub_232E38748(0, &qword_27DDD9A00, 0x277CE2028);
    v14 = sub_232E3B638(0xD000000000000015, 0x8000000232E4EC30);
    v0[23] = v14;
    v0[2] = v0;
    v0[3] = sub_232E3B370;
    v15 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A08, &qword_232E4DD68);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_232E3B6AC;
    v0[13] = &block_descriptor_0;
    v0[14] = v15;
    [v14 addNotificationRequest:v13 withCompletionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v16 = sub_232E4CCC0();
    v17 = sub_232E4CF70();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_232E2C000, v16, v17, "No hmt reentry notification", v18, 2u);
      OUTLINED_FUNCTION_15();
    }

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_232E3B370()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_232E3B510;
  }

  else
  {
    v2 = sub_232E3B480;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232E3B480()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    static DeviceEventCoordinator.clearReentryNotification()();
  }

  else
  {

    v1 = v2;
  }

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_232E3B510()
{
  v2 = *(v1 + 192);
  swift_willThrow();

  OUTLINED_FUNCTION_16_1();
  if (v3)
  {
    static DeviceEventCoordinator.clearReentryNotification()();
  }

  else
  {
  }

  v4 = *(v1 + 8);

  return v4();
}

id sub_232E3B5B4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_232E4CDD0();

  v7 = [swift_getObjCClassFromMetadata() requestWithIdentifier:v6 content:a3 trigger:a4];

  return v7;
}

id sub_232E3B638(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_232E4CDD0();

  v4 = [v2 initWithBundleIdentifier_];

  return v4;
}

uint64_t sub_232E3B6AC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_232E3B71C(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_232E3B71C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9AE0, &qword_232E4E0A8);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t static DeviceEventCoordinator.clearReentryNotification()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A10, &qword_232E4DD70);
  OUTLINED_FUNCTION_19(v0);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v1);
  v3 = &v17 - v2;
  if (qword_28158FCA8 != -1)
  {
    OUTLINED_FUNCTION_1_2(&qword_28158FCA8);
  }

  v4 = sub_232E4CCE0();
  __swift_project_value_buffer(v4, qword_28158FCB0);
  v5 = sub_232E4CCC0();
  v6 = sub_232E4CF60();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_232E2C000, v5, v6, "Clear reentry notification.", v7, 2u);
    OUTLINED_FUNCTION_15();
  }

  v8 = type metadata accessor for ReentryUserInfo(0);
  v3[v8[6]] = 0;
  v9 = sub_232E4C8D0();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  v10 = &v3[v8[7]];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = &v3[v8[5]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OUTLINED_FUNCTION_7_0();
  v15 = __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
  OUTLINED_FUNCTION_11_1(v15, 0x8000000232E4F6A0);
  return sub_232E322DC(v3, &qword_27DDD9A10, &qword_232E4DD70);
}

uint64_t static DeviceEventCoordinator.recordReentryNotificationURL(url:title:requiredSignal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v64 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A10, &qword_232E4DD70);
  OUTLINED_FUNCTION_19(v7);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v55 - v9;
  v11 = sub_232E4C8D0();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v58 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - v17;
  v19 = *a4;
  v61 = a4[1];
  v62 = v19;
  v20 = a4[2];
  v59 = a4[3];
  v60 = v20;
  if (qword_28158FCA8 != -1)
  {
    OUTLINED_FUNCTION_1_2(&qword_28158FCA8);
  }

  v21 = sub_232E4CCE0();
  __swift_project_value_buffer(v21, qword_28158FCB0);
  v22 = *(v13 + 16);
  v63 = a1;
  v57 = v22;
  v22(v18, a1, v11);

  v23 = sub_232E4CCC0();
  v24 = sub_232E4CF60();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v65 = a3;
    v26 = v25;
    v56 = swift_slowAlloc();
    v68 = v56;
    *v26 = 136315394;
    sub_232E3E2B8(&qword_27DDD9A18, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v27 = sub_232E4D1B0();
    v29 = v28;
    v30 = OUTLINED_FUNCTION_9_1();
    v31(v30);
    v32 = sub_232E3161C(v27, v29, &v68);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2080;
    v33 = v64;
    v66 = v64;
    v67 = v65;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A20, &qword_232E4DD78);
    v34 = sub_232E4CE10();
    v36 = sub_232E3161C(v34, v35, &v68);

    *(v26 + 14) = v36;
    _os_log_impl(&dword_232E2C000, v23, v24, "Record reentry notification URL %s with title %s.", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15();
    a3 = v65;
    OUTLINED_FUNCTION_15();
  }

  else
  {

    v37 = OUTLINED_FUNCTION_9_1();
    v38(v37);
    v33 = v64;
  }

  v39 = v58;
  v57(v58, v63, v11);
  v40 = type metadata accessor for ReentryUserInfo(0);
  v10[v40[6]] = 1;
  (*(v13 + 32))(v10, v39, v11);
  v41 = OUTLINED_FUNCTION_7_0();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v11);
  v44 = &v10[v40[5]];
  *v44 = v33;
  *(v44 + 1) = a3;
  v45 = &v10[v40[7]];
  v47 = v61;
  v46 = v62;
  *v45 = v62;
  *(v45 + 1) = v47;
  v49 = v59;
  v48 = v60;
  *(v45 + 2) = v60;
  *(v45 + 3) = v49;
  v50 = OUTLINED_FUNCTION_7_0();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v40);

  sub_232E3D908(v46, v47, v48, v49);
  OUTLINED_FUNCTION_11_1(v53, 0x8000000232E4F6A0);
  return sub_232E322DC(v10, &qword_27DDD9A10, &qword_232E4DD70);
}

void sub_232E3BD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A10, &qword_232E4DD70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v14 = [v13 Signals];
  swift_unknownObjectRelease();
  sub_232E38748(0, &qword_27DDD9AD0, 0x277CF1168);
  sub_232E3227C(a5, v12, &qword_27DDD9A10, &qword_232E4DD70);

  v15 = sub_232E3BED8(a1, a2, a3, a4, 0, 0, v12);
  v16 = [v14 source];
  [v16 sendEvent_];
}

id sub_232E3BED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a5;
  v26 = a3;
  v11 = type metadata accessor for ReentryUserInfo(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A10, &qword_232E4DD70);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  sub_232E3227C(a7, &v26 - v15, &qword_27DDD9A10, &qword_232E4DD70);
  if (__swift_getEnumTagSinglePayload(v16, 1, v11) == 1)
  {
    v17 = 0;
    v18 = 0xF000000000000000;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_232E3E200(v16, v13);
    sub_232E3C144(v28);
    sub_232E3E0A8(v13);
    v17 = v28[0];
    v18 = v28[1];
    if (a2)
    {
LABEL_3:
      v19 = sub_232E4CDD0();

      if (a4)
      {
        goto LABEL_4;
      }

LABEL_8:
      v20 = 0;
      if (a6)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v19 = 0;
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_4:
  v20 = sub_232E4CDD0();

  if (a6)
  {
LABEL_5:
    v21 = sub_232E4CDD0();

    goto LABEL_10;
  }

LABEL_9:
  v21 = 0;
LABEL_10:
  if (v18 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    sub_232E31B64(v17, v18);
    v22 = sub_232E4C8E0();
    sub_232E32268(v17, v18);
  }

  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = [v23 initWithContentIdentifier:v19 context:v20 osBuild:v21 userInfo:{v22, v26, v27}];

  sub_232E32268(v17, v18);
  sub_232E322DC(a7, &qword_27DDD9A10, &qword_232E4DD70);
  return v24;
}

void sub_232E3C144(uint64_t *a2@<X8>)
{
  sub_232E4C780();
  swift_allocObject();
  sub_232E4C770();
  type metadata accessor for ReentryUserInfo(0);
  sub_232E3E2B8(&qword_27DDD9AD8, type metadata accessor for ReentryUserInfo, &unk_232E4DF3C);
  v4 = sub_232E4C760();
  if (v2)
  {

    if (qword_28158FCA8 != -1)
    {
      swift_once();
    }

    v6 = sub_232E4CCE0();
    __swift_project_value_buffer(v6, qword_28158FCB0);
    MEMORY[0x238397B60](v2);
    v7 = sub_232E4CCC0();
    v8 = sub_232E4CF70();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      MEMORY[0x238397B60](v2);
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&dword_232E2C000, v7, v8, "❌ Error encoding ReentryUserInfo: %@", v9, 0xCu);
      sub_232E322DC(v10, &qword_27DDD9860, &qword_232E4D850);
      MEMORY[0x238397C80](v10, -1, -1);
      MEMORY[0x238397C80](v9, -1, -1);
    }

    else
    {
    }

    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v12 = v4;
    v13 = v5;
  }

  *a2 = v12;
  a2[1] = v13;
}

uint64_t sub_232E3C35C()
{
  if (qword_27DDD9830 != -1)
  {
    swift_once();
  }

  qword_27DDD99B8 = qword_27DDD9D08;
  unk_27DDD99C0 = unk_27DDD9D10;
  qword_27DDD99C8 = 0;
  unk_27DDD99D0 = 0;
}

uint64_t static ReentrySignal.resetNetworkSettings.getter()
{
  if (qword_27DDD9820 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_20_0(&qword_27DDD99B8);
}

uint64_t sub_232E3C43C()
{
  if (qword_28158FC88 != -1)
  {
    swift_once();
  }

  qword_27DDD99D8 = qword_28158FDF0;
  unk_27DDD99E0 = *algn_28158FDF8;
  xmmword_27DDD99E8 = xmmword_232E4DD50;
}

uint64_t static ReentrySignal.softwareUpdate.getter()
{
  if (qword_27DDD9828 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_20_0(&qword_27DDD99D8);
}

uint64_t sub_232E3C524(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_232E4D1D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_232E4D1D0();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_232E3C634(char a1)
{
  sub_232E4D210();
  MEMORY[0x238397730](a1 & 1);
  return sub_232E4D230();
}

uint64_t sub_232E3C688(char a1)
{
  if (a1)
  {
    return 0x747865746E6F63;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_232E3C6E0(uint64_t a1)
{
  v2 = *v1;
  sub_232E4D210();
  MEMORY[0x238397730](v2);
  return sub_232E4D230();
}

uint64_t sub_232E3C72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232E3C524(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232E3C774@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232E3C5F4();
  *a1 = result;
  return result;
}

uint64_t sub_232E3C79C(uint64_t a1)
{
  v2 = sub_232E3D94C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232E3C7D8(uint64_t a1)
{
  v2 = sub_232E3D94C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ReentrySignal.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_19_0();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A28, &qword_232E4DD80);
  OUTLINED_FUNCTION_0();
  v34 = v28;
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v29);
  v31 = v33 - v30;
  v32 = *(v23 + 16);
  v33[1] = *(v23 + 24);
  v33[2] = v32;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_232E3D94C();
  sub_232E4D250();
  sub_232E4D160();
  if (!v24)
  {
    sub_232E4D140();
  }

  (*(v34 + 8))(v31, v27);
  OUTLINED_FUNCTION_21_0();
}

void ReentrySignal.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_19_0();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A38, &qword_232E4DD88);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v28);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_232E3D94C();
  sub_232E4D240();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  else
  {
    v29 = sub_232E4D100();
    v31 = v30;
    v32 = sub_232E4D0E0();
    v34 = v33;
    v37 = v32;
    v35 = OUTLINED_FUNCTION_9_1();
    v36(v35);
    *v27 = v29;
    v27[1] = v31;
    v27[2] = v37;
    v27[3] = v34;

    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_232E3CB44(uint64_t a1, uint64_t a2)
{
  v2 = sub_232E4D0D0();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232E3CB98(char a1)
{
  if (a1)
  {
    return 0x656D75736572;
  }

  else
  {
    return 0x6C65636E6163;
  }
}

unint64_t sub_232E3CBC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_232E4D0D0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_232E3CC0C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 7107189;
      break;
    case 3:
      result = 0x6465726975716572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_232E3CCDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_232E3CB44(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_232E3CD0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232E3CB98(*v1);
  *a1 = result;
  a1[1] = 0xE600000000000000;
  return result;
}

unint64_t sub_232E3CE60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_232E3CBC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_232E3CE90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232E3CC0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_232E3CEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232E3CBC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232E3CEF8(uint64_t a1)
{
  v2 = sub_232E3DEA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232E3CF34(uint64_t a1)
{
  v2 = sub_232E3DEA0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_232E3CF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_19_0();
  v79 = v23;
  v25 = v24;
  v74 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD98B0, &qword_232E4D988);
  OUTLINED_FUNCTION_19(v27);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v28);
  v77 = &v70 - v29;
  sub_232E4C8D0();
  OUTLINED_FUNCTION_0();
  v75 = v31;
  v76 = v30;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A88, &qword_232E4E098);
  OUTLINED_FUNCTION_0();
  v78 = v36;
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v37);
  v39 = &v70 - v38;
  v40 = type metadata accessor for ReentryUserInfo(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2();
  v44 = v43 - v42;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_232E3DEA0();
  v45 = v79;
  sub_232E4D240();
  if (v45)
  {
    goto LABEL_3;
  }

  v73 = v34;
  v46 = v77;
  v79 = v44;
  sub_232E3DEF4();
  OUTLINED_FUNCTION_17_0();
  sub_232E4D130();
  v72 = v39;
  v47 = v80;
  v48 = v79;
  *(v79 + v40[6]) = v80;
  if (v47 == 1)
  {

    v49 = v25;
  }

  else
  {
    v50 = sub_232E4D1D0();

    v49 = v25;
    if ((v50 & 1) == 0)
    {
      v56 = 1;
      v57 = v76;
LABEL_12:
      __swift_storeEnumTagSinglePayload(v48, v56, 1, v57);
      sub_232E3DFAC();
      OUTLINED_FUNCTION_17_0();
      sub_232E4D0F0();
      v61 = (v48 + v40[7]);
      v62 = v81;
      *v61 = v80;
      v61[1] = v62;
      LOBYTE(v80) = 1;
      v63 = sub_232E4D0E0();
      v78 = v64;
      v65 = v63;
      v66 = OUTLINED_FUNCTION_13_0();
      v67(v66);
      v68 = (v48 + v40[5]);
      v69 = v78;
      *v68 = v65;
      v68[1] = v69;
      sub_232E3E044(v48, v74);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      sub_232E3E0A8(v48);
      goto LABEL_4;
    }
  }

  LOBYTE(v80) = 2;
  v51 = v46;
  v71 = sub_232E4D100();
  v53 = v52;
  sub_232E4C8C0();
  v54 = v76;
  if (__swift_getEnumTagSinglePayload(v51, 1, v76) != 1)
  {

    v58 = v51;
    v59 = *(v75 + 32);
    v60 = v73;
    v59(v73, v58, v54);
    v59(v48, v60, v54);
    v56 = 0;
    v57 = v54;
    goto LABEL_12;
  }

  sub_232E322DC(v51, &qword_27DDD98B0, &qword_232E4D988);
  *&v80 = 0;
  *(&v80 + 1) = 0xE000000000000000;
  sub_232E4D050();

  *&v80 = 0xD000000000000014;
  *(&v80 + 1) = 0x8000000232E4F6D0;
  MEMORY[0x238397350](v71, v53);

  sub_232E4D080();
  swift_allocError();
  v25 = v49;
  sub_232E3DF48();
  v55 = v72;
  sub_232E4D070();

  swift_willThrow();
  (*(v78 + 8))(v55, v35);
LABEL_3:
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
LABEL_4:
  OUTLINED_FUNCTION_21_0();
}

void sub_232E3D4FC(uint64_t a1)
{
  OUTLINED_FUNCTION_19_0();
  v32 = v2;
  v3 = v1;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD98B0, &qword_232E4D988);
  OUTLINED_FUNCTION_19(v6);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  sub_232E4C8D0();
  OUTLINED_FUNCTION_0();
  v30 = v11;
  v31 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9AB0, &qword_232E4E0A0);
  OUTLINED_FUNCTION_0();
  v17 = v16;
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v18);
  v20 = &v29 - v19;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_232E3DEA0();
  sub_232E4D250();
  v21 = type metadata accessor for ReentryUserInfo(0);
  LOBYTE(v33) = *(v3 + *(v21 + 24));
  sub_232E3E104();
  OUTLINED_FUNCTION_15_0();
  v22 = v32;
  sub_232E4D190();
  if (!v22)
  {
    v29 = v21;
    v23 = v30;
    v32 = v17;
    sub_232E3227C(v3, v9, &qword_27DDD98B0, &qword_232E4D988);
    v24 = v31;
    if (__swift_getEnumTagSinglePayload(v9, 1, v31) == 1)
    {
      sub_232E322DC(v9, &qword_27DDD98B0, &qword_232E4D988);
    }

    else
    {
      (*(v23 + 32))(v14, v9, v24);
      sub_232E4C8A0();
      OUTLINED_FUNCTION_10_1(2);
      sub_232E4D160();
      (*(v23 + 8))(v14, v24);
    }

    v25 = (v3 + *(v29 + 28));
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[3];
    v33 = *v25;
    v34 = v26;
    v35 = v27;
    v36 = v28;
    sub_232E3D908(v33, v26, v27, v28);
    sub_232E3E158();
    OUTLINED_FUNCTION_15_0();
    sub_232E4D150();
    sub_232E3E000(v33, v34, v35, v36);
    v17 = v32;
    OUTLINED_FUNCTION_10_1(1);
    sub_232E4D140();
  }

  (*(v17 + 8))(v20, v15);
  OUTLINED_FUNCTION_21_0();
}

uint64_t type metadata accessor for ReentryUserInfo(uint64_t a1)
{
  result = qword_27DDD9A40;
  if (!qword_27DDD9A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232E3D908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_232E3D94C()
{
  result = qword_27DDD9A30;
  if (!qword_27DDD9A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9A30);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_232E3D9AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232E3D9EC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_232E3DA74(uint64_t a1)
{
  sub_232E3DB38(319);
  if (v1 <= 0x3F)
  {
    sub_232E3DB90(319, &qword_27DDD9A58, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_232E3DB90(319, &qword_27DDD9A60, &type metadata for ReentrySignal);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232E3DB38(uint64_t a1)
{
  if (!qword_27DDD9A50)
  {
    sub_232E4C8D0();
    v1 = sub_232E4CFE0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DDD9A50);
    }
  }
}

void sub_232E3DB90(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_232E4CFE0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_232E3DBDC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_232E3DC64(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_232E3DD44()
{
  result = qword_27DDD9A68;
  if (!qword_27DDD9A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9A68);
  }

  return result;
}

unint64_t sub_232E3DD9C()
{
  result = qword_27DDD9A70;
  if (!qword_27DDD9A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9A70);
  }

  return result;
}

unint64_t sub_232E3DDF4()
{
  result = qword_27DDD9A78;
  if (!qword_27DDD9A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9A78);
  }

  return result;
}

unint64_t sub_232E3DE4C()
{
  result = qword_27DDD9A80;
  if (!qword_27DDD9A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9A80);
  }

  return result;
}

unint64_t sub_232E3DEA0()
{
  result = qword_27DDD9A90;
  if (!qword_27DDD9A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9A90);
  }

  return result;
}

unint64_t sub_232E3DEF4()
{
  result = qword_27DDD9A98;
  if (!qword_27DDD9A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9A98);
  }

  return result;
}

unint64_t sub_232E3DF48()
{
  result = qword_27DDD9AA0;
  if (!qword_27DDD9AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD9A88, &qword_232E4E098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9AA0);
  }

  return result;
}

unint64_t sub_232E3DFAC()
{
  result = qword_27DDD9AA8;
  if (!qword_27DDD9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9AA8);
  }

  return result;
}

void sub_232E3E000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_232E3E044(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReentryUserInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232E3E0A8(uint64_t a1)
{
  v2 = type metadata accessor for ReentryUserInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232E3E104()
{
  result = qword_27DDD9AB8;
  if (!qword_27DDD9AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9AB8);
  }

  return result;
}

unint64_t sub_232E3E158()
{
  result = qword_27DDD9AC0;
  if (!qword_27DDD9AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9AC0);
  }

  return result;
}

unint64_t sub_232E3E1AC()
{
  result = qword_27DDD9AC8;
  if (!qword_27DDD9AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9AC8);
  }

  return result;
}

uint64_t sub_232E3E200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReentryUserInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_232E3E264()
{
  result = qword_28158FCA0;
  if (!qword_28158FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158FCA0);
  }

  return result;
}

uint64_t sub_232E3E2B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for ReentryUserInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ReentryUserInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_232E3E468()
{
  result = qword_27DDD9B08;
  if (!qword_27DDD9B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9B08);
  }

  return result;
}

unint64_t sub_232E3E4C0()
{
  result = qword_27DDD9B10;
  if (!qword_27DDD9B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9B10);
  }

  return result;
}

unint64_t sub_232E3E518()
{
  result = qword_27DDD9B18;
  if (!qword_27DDD9B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9B18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_11_1(uint64_t a1, uint64_t a2)
{

  sub_232E3BD3C(0xD00000000000002DLL, a2, 0, 0, v2);
}

uint64_t OUTLINED_FUNCTION_20_0@<X0>(void *a1@<X8>)
{
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  *v1 = *a1;
  v1[1] = v3;
  v1[2] = v5;
  v1[3] = v4;
}

uint64_t sub_232E3E74C()
{
  OUTLINED_FUNCTION_0_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9AF8, &qword_232E4E0B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232E4DD40;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_232E3E264();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  result = sub_232E4CDF0();
  *v1 = result;
  *v0 = v6;
  return result;
}

uint64_t sub_232E3E858()
{
  OUTLINED_FUNCTION_0_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9AF8, &qword_232E4E0B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232E4DD40;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_232E3E264();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  result = sub_232E4CDF0();
  *v1 = result;
  *v0 = v6;
  return result;
}

uint64_t SupportFlowSessionAnalyticsEvent.init(session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SupportFlowSession(0);
  v22 = *(a1 + v4[10]);
  v23 = *(a1 + v4[9]);
  v5 = 0xE300000000000000;
  v6 = 7368801;
  v7 = v4;
  switch(*(a1 + v4[6]))
  {
    case 1:
      v5 = 0xEC000000726F7463;
      v6 = 0x6574654461746164;
      break;
    case 2:
      v5 = 0xE600000000000000;
      v6 = 0x72656C616964;
      break;
    case 3:
      v5 = 0xE400000000000000;
      v6 = 1769105779;
      break;
    case 4:
      v5 = 0xE400000000000000;
      v6 = 1936746868;
      break;
    case 5:
      v5 = 0xE700000000000000;
      v6 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v20 = v6;
  v21 = v5;
  v8 = v4[11];
  v9 = *(a1 + v4[12]);
  v10 = *(a1 + v4[13]);
  v12 = *(a1 + v8);
  v11 = *(a1 + v8 + 8);
  if (*(a1 + v4[14]) == 12)
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    v13 = SupportFlowIdentifier.rawValue.getter();
    v14 = v15;
  }

  v16 = v7[16];
  v17 = *(a1 + v7[15]);
  v18 = *(a1 + v16);

  result = sub_232E31C78(a1);
  *a2 = v23;
  *(a2 + 1) = v22;
  *(a2 + 8) = v20;
  *(a2 + 16) = v21;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  *(a2 + 48) = v11;
  *(a2 + 56) = v13;
  *(a2 + 64) = v14;
  *(a2 + 72) = v17;
  *(a2 + 73) = v18;
  return result;
}

uint64_t SupportFlowSessionAnalyticsEvent.eventRepresentation()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B20, &qword_232E4E210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232E4E200;
  *(inited + 32) = 0x6E6F646E616261;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_232E4CF10();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x8000000232E4F890;
  *(inited + 72) = sub_232E4CF10();
  *(inited + 80) = 0x6F705F7972746E65;
  *(inited + 88) = 0xEB00000000746E69;
  *(inited + 96) = sub_232E4CDD0();
  strcpy((inited + 104), "featured_topic");
  *(inited + 119) = -18;
  *(inited + 120) = sub_232E4CF10();
  *(inited + 128) = 0x7263735F7473616CLL;
  *(inited + 136) = 0xEB000000006E6565;
  *(inited + 144) = sub_232E4CF30();
  *(inited + 152) = 0x64695F70657473;
  *(inited + 160) = 0xE700000000000000;
  *(inited + 168) = sub_232E4CDD0();
  *(inited + 176) = 0x6369706F74;
  *(inited + 184) = 0xE500000000000000;
  *(inited + 192) = sub_232E4CDD0();
  *(inited + 200) = 0x6165735F73657375;
  *(inited + 208) = 0xEB00000000686372;
  *(inited + 216) = sub_232E4CF10();
  strcpy((inited + 224), "warm_handoff");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  *(inited + 240) = sub_232E4CF10();
  sub_232E3ECD4();
  return sub_232E4CD90();
}

unint64_t sub_232E3ECD4()
{
  result = qword_27DDD9978;
  if (!qword_27DDD9978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDD9978);
  }

  return result;
}

uint64_t sub_232E3ED18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F646E616261 && a2 == 0xE700000000000000;
  if (v4 || (sub_232E4D1D0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x737463656E6E6F63 && a2 == 0xEF746E6567416F54;
    if (v6 || (sub_232E4D1D0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x696F507972746E65 && a2 == 0xEA0000000000746ELL;
      if (v7 || (sub_232E4D1D0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465727574616566 && a2 == 0xED00006369706F54;
        if (v8 || (sub_232E4D1D0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x657263537473616CLL && a2 == 0xEA00000000006E65;
          if (v9 || (sub_232E4D1D0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x644970657473 && a2 == 0xE600000000000000;
            if (v10 || (sub_232E4D1D0() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
              if (v11 || (sub_232E4D1D0() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7261655373657375 && a2 == 0xEA00000000006863;
                if (v12 || (sub_232E4D1D0() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x646E61486D726177 && a2 == 0xEB0000000066666FLL)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_232E4D1D0();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_232E3F02C(unsigned __int8 a1)
{
  sub_232E4D210();
  MEMORY[0x238397730](a1);
  return sub_232E4D230();
}

uint64_t sub_232E3F074(char a1)
{
  result = 0x6E6F646E616261;
  switch(a1)
  {
    case 1:
      result = 0x737463656E6E6F63;
      break;
    case 2:
      result = 0x696F507972746E65;
      break;
    case 3:
      result = 0x6465727574616566;
      break;
    case 4:
      result = 0x657263537473616CLL;
      break;
    case 5:
      result = 0x644970657473;
      break;
    case 6:
      result = 0x6369706F74;
      break;
    case 7:
      result = 0x7261655373657375;
      break;
    case 8:
      result = 0x646E61486D726177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_232E3F1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232E3ED18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232E3F1E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232E3EFEC();
  *a1 = result;
  return result;
}

uint64_t sub_232E3F210(uint64_t a1)
{
  v2 = sub_232E3F544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232E3F24C(uint64_t a1)
{
  v2 = sub_232E3F544();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SupportFlowSessionAnalyticsEvent.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B28, &qword_232E4E218);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v19 - v6;
  v23 = *(v1 + 1);
  v8 = *(v1 + 8);
  v21 = *(v1 + 16);
  v22 = v8;
  v20 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + 56);
  v19[4] = *(v1 + 48);
  v19[5] = v9;
  v19[1] = v11;
  v19[2] = *(v1 + 64);
  v19[3] = v10;
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_232E3F544();
  sub_232E4D250();
  v33 = 0;
  v16 = v24;
  sub_232E4D170();
  if (v16)
  {
    return (*(v4 + 8))(v7, v15);
  }

  v32 = 1;
  sub_232E4D170();
  v31 = 2;
  v24 = v7;
  sub_232E4D160();
  v30 = 3;
  OUTLINED_FUNCTION_2_3();
  sub_232E4D170();
  v29 = 4;
  OUTLINED_FUNCTION_2_3();
  sub_232E4D180();
  v28 = 5;
  sub_232E4D160();
  v27 = 6;
  v17 = v24;
  sub_232E4D160();
  v26 = 7;
  OUTLINED_FUNCTION_2_3();
  sub_232E4D170();
  v25 = 8;
  OUTLINED_FUNCTION_2_3();
  sub_232E4D170();
  return (*(v4 + 8))(v17, v15);
}

unint64_t sub_232E3F544()
{
  result = qword_27DDD9B30;
  if (!qword_27DDD9B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9B30);
  }

  return result;
}

uint64_t SupportFlowSessionAnalyticsEvent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B38, &qword_232E4E220);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232E3F544();
  sub_232E4D240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v26[0] = 0;
  v6 = sub_232E4D110();
  OUTLINED_FUNCTION_0_3(1);
  v37 = sub_232E4D110();
  OUTLINED_FUNCTION_0_3(2);
  v7 = sub_232E4D100();
  v24 = v8;
  OUTLINED_FUNCTION_0_3(3);
  v22 = sub_232E4D110();
  OUTLINED_FUNCTION_0_3(4);
  v21 = sub_232E4D120();
  OUTLINED_FUNCTION_0_3(5);
  v20 = sub_232E4D100();
  v23 = v9;
  OUTLINED_FUNCTION_0_3(6);
  v19 = sub_232E4D100();
  v18 = v7;
  v11 = v10;
  OUTLINED_FUNCTION_0_3(7);
  v17 = sub_232E4D110();
  v38 = 8;
  v12 = sub_232E4D110();
  v16 = v37 & 1;
  v22 &= 1u;
  v37 = v17 & 1;
  v13 = OUTLINED_FUNCTION_1_3();
  v14(v13);
  LOBYTE(__src[0]) = v6 & 1;
  BYTE1(__src[0]) = v16;
  __src[1] = v18;
  __src[2] = v24;
  LOBYTE(__src[3]) = v22;
  __src[4] = v21;
  __src[5] = v20;
  __src[6] = v23;
  __src[7] = v19;
  __src[8] = v11;
  LOBYTE(__src[9]) = v37;
  BYTE1(__src[9]) = v12 & 1;
  memcpy(a2, __src, 0x4AuLL);
  sub_232E38848(__src, v26);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v26[0] = v6 & 1;
  v26[1] = v16;
  v27 = v18;
  v28 = v24;
  v29 = v22;
  v30 = v21;
  v31 = v20;
  v32 = v23;
  v33 = v19;
  v34 = v11;
  v35 = v37;
  v36 = v12 & 1;
  return sub_232E36DB4(v26);
}

uint64_t sub_232E3FA18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 74))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232E3FA58(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SupportFlowSessionAnalyticsEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SupportFlowSessionAnalyticsEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_232E3FC24()
{
  result = qword_27DDD9B40;
  if (!qword_27DDD9B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9B40);
  }

  return result;
}

unint64_t sub_232E3FC7C()
{
  result = qword_27DDD9B48;
  if (!qword_27DDD9B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9B48);
  }

  return result;
}

unint64_t sub_232E3FCD4()
{
  result = qword_27DDD9B50;
  if (!qword_27DDD9B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9B50);
  }

  return result;
}

void static URL.deepLink(_:stepId:sessionId:referrer:)()
{
  OUTLINED_FUNCTION_14();
  v36 = v0;
  v37 = v1;
  v3 = v2;
  v5 = v4;
  v35 = sub_232E4C7E0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = sub_232E4C880();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v19 = *v5;
  sub_232E4C870();
  OUTLINED_FUNCTION_21_1();
  sub_232E4C860();
  MEMORY[0x238396D50](0, 0xE000000000000000);
  if (v19 != 12)
  {
    SupportFlowIdentifier.rawValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B58, &qword_232E4E410);
    *(swift_allocObject() + 16) = xmmword_232E4DD40;
    sub_232E4C7B0();

    sub_232E4C810();
    if (v3)
    {
      v21 = sub_232E4C7F0();
      if (*v20)
      {
        v22 = v20;
        sub_232E4C7B0();
        sub_232E4127C();
        sub_232E412C8(*(*v22 + 16));
        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_23_0();
        v23();
      }

      v24 = OUTLINED_FUNCTION_24();
      v21(v24);
    }

    if (v36)
    {
      v26 = sub_232E4C7F0();
      if (*v25)
      {
        v27 = v25;
        sub_232E4C7B0();
        sub_232E4127C();
        sub_232E412C8(*(*v27 + 16));
        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_23_0();
        v28();
      }

      v29 = OUTLINED_FUNCTION_24();
      v26(v29);
    }

    if (v37)
    {
      v31 = sub_232E4C7F0();
      if (*v30)
      {
        v32 = v30;
        sub_232E4C7B0();
        sub_232E4127C();
        sub_232E412C8(*(*v32 + 16));
        v33 = OUTLINED_FUNCTION_4_2();
        (*(v7 + 32))(v33, v11, v35);
      }

      v34 = OUTLINED_FUNCTION_24();
      v31(v34);
    }
  }

  sub_232E4C830();
  (*(v14 + 8))(v18, v12);
  OUTLINED_FUNCTION_8();
}

uint64_t SupportFlowURLParameter.rawValue.getter()
{
  result = 1701869940;
  switch(*v0)
  {
    case 1:
      result = 0x6E6F6973736573;
      break;
    case 2:
      result = 1885697139;
      break;
    case 3:
      result = 0x7265727265666572;
      break;
    default:
      return result;
  }

  return result;
}

void URL.flowStep.getter()
{
  OUTLINED_FUNCTION_14();
  v4 = sub_232E4C7E0();
  OUTLINED_FUNCTION_0();
  v32 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B60, &qword_232E4E418);
  OUTLINED_FUNCTION_19(v10);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B68, &qword_232E4E420);
  OUTLINED_FUNCTION_19(v12);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_1();
  v14 = sub_232E4C880();
  OUTLINED_FUNCTION_12_0(v14);
  if (v24)
  {
    v15 = &qword_27DDD9B60;
    v16 = &qword_232E4E418;
    v17 = v2;
    goto LABEL_20;
  }

  sub_232E4C800();
  OUTLINED_FUNCTION_8_1();
  (*(v18 + 8))(v2, v3);
  if (!v1)
  {
    goto LABEL_21;
  }

  v19 = *(v1 + 16);
  if (!v19)
  {
LABEL_14:

    v29 = 1;
LABEL_17:
    OUTLINED_FUNCTION_5_2(v28, v29);
    if (!v24)
    {
      sub_232E4C7D0();
      v30 = OUTLINED_FUNCTION_3_3();
      v31(v30);
LABEL_21:
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_8();
      return;
    }

    v15 = &qword_27DDD9B68;
    v16 = &qword_232E4E420;
    v17 = v0;
LABEL_20:
    sub_232E41308(v17, v15, v16);
    goto LABEL_21;
  }

  v20 = 0;
  OUTLINED_FUNCTION_9_2();
  v22 = v1 + v21;
  while (v20 < *(v1 + 16))
  {
    (*(v32 + 16))(v9, v22 + *(v32 + 72) * v20, v4);
    v24 = sub_232E4C7C0() == 1885697139 && v23 == 0xE400000000000000;
    if (v24)
    {

LABEL_16:

      v28 = (*(v32 + 32))(v0, v9, v4);
      v29 = 0;
      goto LABEL_17;
    }

    v25 = sub_232E4D1D0();

    if (v25)
    {
      goto LABEL_16;
    }

    ++v20;
    v26 = OUTLINED_FUNCTION_17_1();
    v27(v26);
    if (v19 == v20)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void URL.flowSession.getter()
{
  OUTLINED_FUNCTION_14();
  sub_232E4C7E0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B60, &qword_232E4E418);
  OUTLINED_FUNCTION_19(v5);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B68, &qword_232E4E420);
  OUTLINED_FUNCTION_19(v7);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_1();
  v9 = sub_232E4C880();
  OUTLINED_FUNCTION_12_0(v9);
  if (v21)
  {
    v10 = &qword_27DDD9B60;
    v11 = &qword_232E4E418;
    v12 = v2;
    goto LABEL_20;
  }

  sub_232E4C800();
  OUTLINED_FUNCTION_8_1();
  (*(v13 + 8))(v2, v3);
  if (!v1)
  {
    goto LABEL_21;
  }

  v32 = v0;
  v33 = *(v1 + 16);
  if (!v33)
  {
LABEL_14:

    v27 = 1;
    v17 = v32;
LABEL_17:
    OUTLINED_FUNCTION_5_2(v26, v27);
    if (!v21)
    {
      sub_232E4C7D0();
      v30 = OUTLINED_FUNCTION_3_3();
      v31(v30);
LABEL_21:
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_8();
      return;
    }

    v10 = &qword_27DDD9B68;
    v11 = &qword_232E4E420;
    v12 = v17;
LABEL_20:
    sub_232E41308(v12, v10, v11);
    goto LABEL_21;
  }

  v14 = 0;
  v15 = 0x6E6F6973736573;
  OUTLINED_FUNCTION_9_2();
  v17 = v1 + v16;
  while (v14 < *(v1 + 16))
  {
    v18 = OUTLINED_FUNCTION_14_0();
    v19(v18);
    v21 = sub_232E4C7C0() == v15 && v20 == 0xE700000000000000;
    if (v21)
    {

LABEL_16:

      v28 = OUTLINED_FUNCTION_13_1();
      v26 = v29(v28);
      v27 = 0;
      goto LABEL_17;
    }

    v22 = v15;
    v23 = sub_232E4D1D0();

    if (v23)
    {
      goto LABEL_16;
    }

    ++v14;
    v24 = OUTLINED_FUNCTION_17_1();
    v25(v24);
    v15 = v22;
    if (v33 == v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void URL.referrer.getter()
{
  OUTLINED_FUNCTION_14();
  sub_232E4C7E0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B60, &qword_232E4E418);
  OUTLINED_FUNCTION_19(v5);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B68, &qword_232E4E420);
  OUTLINED_FUNCTION_19(v7);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_1();
  v9 = sub_232E4C880();
  OUTLINED_FUNCTION_12_0(v9);
  if (v21)
  {
    v10 = &qword_27DDD9B60;
    v11 = &qword_232E4E418;
    v12 = v2;
    goto LABEL_20;
  }

  sub_232E4C800();
  OUTLINED_FUNCTION_8_1();
  (*(v13 + 8))(v2, v3);
  if (!v1)
  {
    goto LABEL_21;
  }

  v32 = v0;
  v33 = *(v1 + 16);
  if (!v33)
  {
LABEL_14:

    v27 = 1;
    v17 = v32;
LABEL_17:
    OUTLINED_FUNCTION_5_2(v26, v27);
    if (!v21)
    {
      sub_232E4C7D0();
      v30 = OUTLINED_FUNCTION_3_3();
      v31(v30);
LABEL_21:
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_8();
      return;
    }

    v10 = &qword_27DDD9B68;
    v11 = &qword_232E4E420;
    v12 = v17;
LABEL_20:
    sub_232E41308(v12, v10, v11);
    goto LABEL_21;
  }

  v14 = 0;
  v15 = 0x7265727265666572;
  OUTLINED_FUNCTION_9_2();
  v17 = v1 + v16;
  while (v14 < *(v1 + 16))
  {
    v18 = OUTLINED_FUNCTION_14_0();
    v19(v18);
    v21 = sub_232E4C7C0() == v15 && v20 == 0xE800000000000000;
    if (v21)
    {

LABEL_16:

      v28 = OUTLINED_FUNCTION_13_1();
      v26 = v29(v28);
      v27 = 0;
      goto LABEL_17;
    }

    v22 = v15;
    v23 = sub_232E4D1D0();

    if (v23)
    {
      goto LABEL_16;
    }

    ++v14;
    v24 = OUTLINED_FUNCTION_17_1();
    v25(v24);
    v15 = v22;
    if (v33 == v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void static URL.isValid(supportFlowURL:)()
{
  OUTLINED_FUNCTION_14();
  v58 = sub_232E4C7E0();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B60, &qword_232E4E418);
  OUTLINED_FUNCTION_19(v7);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v9 = sub_232E4C880();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  sub_232E4C820();
  if (__swift_getEnumTagSinglePayload(v0, 1, v9) == 1)
  {
    sub_232E41308(v0, &qword_27DDD9B60, &qword_232E4E418);
    goto LABEL_45;
  }

  (*(v11 + 32))(v15, v0, v9);
  v16 = sub_232E4C850();
  if (!v17)
  {
LABEL_9:
    (*(v11 + 8))(v15, v9);
    goto LABEL_45;
  }

  if (v16 == 0x6674726F70707573 && v17 == 0xEB00000000776F6CLL)
  {
  }

  else
  {
    v19 = sub_232E4D1D0();

    if ((v19 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v20 = sub_232E4C800();
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v23 = *(v22 + 16);
  if (v23)
  {
    v59 = MEMORY[0x277D84F90];
    sub_232E414E4(0, v23, 0);
    v24 = v59;
    v25 = v2 + 16;
    v26 = *(v2 + 16);
    v27 = v22 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v56 = *(v25 + 56);
    v57 = v26;
    v28 = (v25 - 8);
    do
    {
      v57(v6, v27, v58);
      v29 = sub_232E4C7C0();
      v31 = v30;
      (*v28)(v6, v58);
      v33 = *(v59 + 16);
      v32 = *(v59 + 24);
      if (v33 >= v32 >> 1)
      {
        OUTLINED_FUNCTION_18_1(v32);
      }

      *(v59 + 16) = v33 + 1;
      v34 = v59 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v31;
      v27 += v56;
      --v23;
    }

    while (v23);

    v21 = MEMORY[0x277D84F90];
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v35 = sub_232E40EFC(v24);
  sub_232E414E4(0, 4, 0);
  v36 = 0;
  v37 = v21;
  do
  {
    v38 = 0xE400000000000000;
    v39 = 1701869940;
    switch(byte_284831A00[v36 + 32])
    {
      case 1:
        v38 = 0xE700000000000000;
        v39 = 0x6E6F6973736573;
        break;
      case 2:
        v39 = 1885697139;
        break;
      case 3:
        v38 = 0xE800000000000000;
        v39 = 0x7265727265666572;
        break;
      default:
        break;
    }

    v60 = v37;
    v41 = *(v37 + 16);
    v40 = *(v37 + 24);
    if (v41 >= v40 >> 1)
    {
      OUTLINED_FUNCTION_18_1(v40);
      v37 = v60;
    }

    ++v36;
    *(v37 + 16) = v41 + 1;
    v42 = v37 + 16 * v41;
    *(v42 + 32) = v39;
    *(v42 + 40) = v38;
  }

  while (v36 != 4);
  v43 = sub_232E40EFC(v37);
  v44 = sub_232E40FC8(v43, v35);

  if (v44)
  {
    v45 = 0;
    while (byte_284831A00[v45 + 32])
    {
LABEL_32:
      if (++v45 == 4)
      {
        goto LABEL_44;
      }
    }

    if (*(v35 + 16))
    {
      sub_232E4D210();
      sub_232E4CE30();
      v46 = sub_232E4D230();
      v47 = ~(-1 << *(v35 + 32));
      while (1)
      {
        v48 = v46 & v47;
        if (((*(v35 + 56 + (((v46 & v47) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v46 & v47)) & 1) == 0)
        {
          break;
        }

        v49 = (*(v35 + 48) + 16 * v48);
        if (*v49 != 1701869940 || v49[1] != 0xE400000000000000)
        {
          v51 = sub_232E4D1D0();
          v46 = v48 + 1;
          if ((v51 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_32;
      }
    }

LABEL_44:

    v54 = OUTLINED_FUNCTION_16_2();
    v55(v54);
  }

  else
  {
    v52 = OUTLINED_FUNCTION_16_2();
    v53(v52);
  }

LABEL_45:
  OUTLINED_FUNCTION_8();
}

uint64_t sub_232E40EFC(uint64_t a1)
{
  result = MEMORY[0x238397430](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_232E41BB4(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_232E40FC8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v23 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        sub_232E4D210();

        sub_232E4CE30();
        v17 = sub_232E4D230();
        v18 = ~(-1 << *(a1 + 32));
        do
        {
          v19 = v17 & v18;
          if (((*(v9 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
          {

            return 0;
          }

          v20 = (*(a1 + 48) + 16 * v19);
          if (*v20 == v16 && v20[1] == v15)
          {
            break;
          }

          v22 = sub_232E4D1D0();
          v17 = v19 + 1;
        }

        while ((v22 & 1) == 0);

        v2 = v23;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

SupportFlowCore::SupportFlowURLParameter_optional __swiftcall SupportFlowURLParameter.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_232E4D0D0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_232E41214@<X0>(uint64_t *a1@<X8>)
{
  result = SupportFlowURLParameter.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_232E4127C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_232E49FB8(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_232E412C8(void *result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    result = sub_232E49FB8((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_232E41308(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_232E41380(char *result, uint64_t a2, void *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_4(result, a2, a3);
  }

  return result;
}

uint64_t sub_232E41398(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

uint64_t sub_232E41460(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_232E4E400;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_232E414C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232E416C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_232E414E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232E41888(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_232E41508()
{
  result = qword_27DDD9B70;
  if (!qword_27DDD9B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9B70);
  }

  return result;
}

unint64_t sub_232E41560()
{
  result = qword_27DDD9B78;
  if (!qword_27DDD9B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD9B80, &qword_232E4E4C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9B78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SupportFlowURLParameter(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

char *sub_232E416A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232E41990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232E416C0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9BB0, &unk_232E4E560);
  v10 = *(type metadata accessor for SupportFlowSession(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for SupportFlowSession(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_232E41398(a4 + v16, v8, v13 + v16, type metadata accessor for SupportFlowSession);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_232E41888(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9BA8, &unk_232E4EBD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_232E41990(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B88, &qword_232E4E538);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

void *sub_232E41A84(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B90, &unk_232E4E540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B98, &qword_232E4EBA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL sub_232E41BB4(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_232E4D210();
  sub_232E4CE30();
  v8 = sub_232E4D230();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_232E4D1D0() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_232E41F5C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_232E41D00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9BA0, &unk_232E4E550);
  result = sub_232E4D030();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_232E41460(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_232E4D210();
    sub_232E4CE30();
    result = sub_232E4D230();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_232E41F5C(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_232E41D00(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_232E4221C(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_232E4D210();
      sub_232E4CE30();
      result = sub_232E4D230();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_232E4D1D0() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_232E420C4();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_232E4D1F0();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_232E420C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9BA0, &unk_232E4E550);
  v2 = *v0;
  v3 = sub_232E4D020();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

uint64_t sub_232E4221C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9BA0, &unk_232E4E550);
  result = sub_232E4D030();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_232E4D210();

        sub_232E4CE30();
        result = sub_232E4D230();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_2()
{
  v4 = *v1;
  *(v4 + 16) = v0 + 1;
  return v4 + v2 + v0 * *(v3 - 168);
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return sub_232E4C820();
}

char *OUTLINED_FUNCTION_18_1@<X0>(unint64_t a1@<X8>)
{

  return sub_232E414E4((a1 > 1), v1, 1);
}

SupportFlowCore::BundleIdentifier_optional __swiftcall BundleIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_232E4D0D0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BundleIdentifier.rawValue.getter()
{
  result = 0x6C7070612E6D6F63;
  switch(*v0)
  {
    case 1:
    case 3:
      return result;
    case 2:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

unint64_t sub_232E42730()
{
  result = qword_27DDD9BB8;
  if (!qword_27DDD9BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9BB8);
  }

  return result;
}

unint64_t sub_232E427A8@<X0>(unint64_t *a1@<X8>)
{
  result = BundleIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for BundleIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

SupportFlowCore::SupportFlowLookbackAnalyticsEvent __swiftcall SupportFlowLookbackAnalyticsEvent.init(abandon:entryPoint:duration:)(Swift::Bool abandon, SupportFlowCore::EntryPoint entryPoint, SupportFlowCore::ContactSupportWindow_optional duration)
{
  v4 = *entryPoint;
  v5 = *duration.value & 0xF;
  *v3 = abandon;
  v3[1] = v4;
  v3[2] = (3u >> v5) & 1;
  v3[3] = 1u >> v5;
  v3[4] = (7u >> v5) & 1;
  result.abandon = abandon;
  return result;
}

uint64_t SupportFlowLookbackAnalyticsEvent.eventRepresentation()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B20, &qword_232E4E210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232E4E670;
  *(inited + 32) = 0x6E6F646E616261;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_232E4CF10();
  *(inited + 56) = 0x6F705F7972746E65;
  *(inited + 64) = 0xEB00000000746E69;
  v1 = sub_232E4CDD0();

  *(inited + 72) = v1;
  *(inited + 80) = 0x7961645F31;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = sub_232E4CF10();
  *(inited + 104) = 0x72756F685F31;
  *(inited + 112) = 0xE600000000000000;
  *(inited + 120) = sub_232E4CF10();
  *(inited + 128) = 0x6B6565775F31;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = sub_232E4CF10();
  sub_232E3ECD4();
  return sub_232E4CD90();
}

uint64_t sub_232E42ADC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F646E616261 && a2 == 0xE700000000000000;
  if (v4 || (sub_232E4D1D0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696F507972746E65 && a2 == 0xEA0000000000746ELL;
    if (v6 || (sub_232E4D1D0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x796144656E6FLL && a2 == 0xE600000000000000;
      if (v7 || (sub_232E4D1D0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72756F48656E6FLL && a2 == 0xE700000000000000;
        if (v8 || (sub_232E4D1D0() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6B656557656E6FLL && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_232E4D1D0();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_232E42C90(char a1)
{
  result = 0x6E6F646E616261;
  switch(a1)
  {
    case 1:
      result = 0x696F507972746E65;
      break;
    case 2:
      result = 0x796144656E6FLL;
      break;
    case 3:
      result = 0x72756F48656E6FLL;
      break;
    case 4:
      result = 0x6B656557656E6FLL;
      break;
    default:
      return result;
  }

  return result;
}