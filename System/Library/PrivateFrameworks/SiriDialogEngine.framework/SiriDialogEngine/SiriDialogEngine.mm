uint64_t OUTLINED_FUNCTION_35_2@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v3 + a1);

  return sub_222CDF250((v2 + 16), v1, v5, 1);
}

uint64_t CATWrapper.deinit()
{
  v1 = OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_templateDir;
  sub_222D5210C();
  OUTLINED_FUNCTION_3_6();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_117()
{

  sub_222CE2920(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_119(uint64_t a1, uint64_t a2)
{

  return sub_222D52FAC();
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_222D52FBC();
}

uint64_t OUTLINED_FUNCTION_5_6(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1)
{

  return sub_222D52F1C();
}

uint64_t OUTLINED_FUNCTION_5_10(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_1()
{

  return sub_222D5305C();
}

void OUTLINED_FUNCTION_5_15()
{

  sub_222D284FC();
}

uint64_t OUTLINED_FUNCTION_5_18(uint64_t a1, uint64_t a2)
{

  return sub_222D5300C();
}

uint64_t OUTLINED_FUNCTION_5_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;

  return sub_222D5210C();
}

void *sub_222CDC320@<X0>(void *result@<X0>, void *a2@<X1>, void *a4@<X8>)
{
  if (*result != -1)
  {
    result = swift_once();
  }

  *a4 = *a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_19_1(uint64_t a1)
{
  v4 = *(v1 + 56) + 32 * a1;

  return sub_222CE4EC0(v4, v2 - 128);
}

void OUTLINED_FUNCTION_19_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_19_9(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_222D529DC();
}

uint64_t CATWrapperSimple.deinit()
{
  v1 = OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_templateDir;
  sub_222D5210C();
  OUTLINED_FUNCTION_3_6();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_222CDC53C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_222CDC59C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_29(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_222D5280C(a1, 72, 2, a4, v4, v5, v6);
}

id OUTLINED_FUNCTION_29_1(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t a1)
{

  return sub_222D52FBC();
}

void OUTLINED_FUNCTION_29_3(uint64_t a1)
{

  sub_222CFBFA4();
}

uint64_t OUTLINED_FUNCTION_29_4()
{

  return sub_222D2E9B4();
}

void CATWrapper.init(templateDir:options:globals:)()
{
  OUTLINED_FUNCTION_73();
  v26 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  v7 = OUTLINED_FUNCTION_52(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = sub_222D5210C();
  OUTLINED_FUNCTION_113();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  v19 = *v3;
  sub_222CDD5C0(v5, v9, &qword_27D03BE40, &unk_222D54A70);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    sub_222CDD130(v5, &qword_27D03BE40, &unk_222D54A70);
    v24 = *(v12 + 32);
    v24(v18, v9, v10);
    v24((v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_templateDir), v18, v10);
    goto LABEL_5;
  }

  sub_222CDD130(v9, &qword_27D03BE40, &unk_222D54A70);
  v20 = objc_opt_self();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  v23 = [v20 bundleTemplateDir_];

  if (v23)
  {
    sub_222D5292C();

    sub_222D520BC();

    sub_222CDD130(v5, &qword_27D03BE40, &unk_222D54A70);
    (*(v12 + 32))(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_templateDir, v16, v10);
LABEL_5:
    *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_options) = v19;
    *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_mockGlobals) = v26;
    OUTLINED_FUNCTION_74();
    return;
  }

  __break(1u);
}

uint64_t sub_222CDCA28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CATWrapperSimple.__allocating_init(options:globals:)(uint64_t *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = *a1;
  v9 = sub_222D5210C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  v12 = v8;
  return (*(v2 + 112))(v7, &v12, a2);
}

void CATWrapperSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  sub_222D5210C();
  OUTLINED_FUNCTION_3_14();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  v19 = *a2;
  sub_222CDCA28(a1, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) != 1)
  {
    sub_222CDD130(a1, &qword_27D03BE40, &unk_222D54A70);
    v24 = *(v12 + 32);
    v24(v18, v10, v4);
    v24((v3 + OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_templateDir), v18, v4);
    goto LABEL_5;
  }

  sub_222CDD130(v10, &qword_27D03BE40, &unk_222D54A70);
  v20 = objc_opt_self();
  OUTLINED_FUNCTION_96();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  v23 = [v20 bundleTemplateDir_];

  if (v23)
  {
    sub_222D5292C();

    sub_222D520BC();

    sub_222CDD130(a1, &qword_27D03BE40, &unk_222D54A70);
    (*(v12 + 32))(v3 + OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_templateDir, v16, v4);
LABEL_5:
    *(v3 + OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_options) = v19;
    *(v3 + OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_mockGlobals) = a3;
    *(v3 + OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_useResponseMode) = 1;
    return;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_3_1(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v4, 1, 1, a1);

  static CATEvaluator.evaluate(templateDir:typeName:propName:parameters:globals:)(v4, v6, v5, v3, v2, (v7 - 208), v1, v7 - 168);
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1)
{

  return sub_222D5305C();
}

uint64_t OUTLINED_FUNCTION_49(uint64_t a1, uint64_t a2)
{

  return sub_222D5305C();
}

uint64_t OUTLINED_FUNCTION_87(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_0_0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  sub_222CE3060(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_3_4@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;

  return sub_222D52F5C();
}

id OUTLINED_FUNCTION_3_7(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_3_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_222D52FBC();
}

uint64_t OUTLINED_FUNCTION_3_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_222D5305C();
}

uint64_t sub_222CDD130(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3_6();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t CATWrapper.__allocating_init(options:globals:)(uint64_t *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  v6 = OUTLINED_FUNCTION_52(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *a1;
  v10 = sub_222D5210C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  v13 = v9;
  return (*(v2 + 104))(v8, &v13, a2);
}

uint64_t OUTLINED_FUNCTION_52_1()
{
}

BOOL sub_222CDD2D8(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void OUTLINED_FUNCTION_9()
{

  sub_222CE3060(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return sub_222CDC59C(v2 - 128, v0, v1);
}

uint64_t OUTLINED_FUNCTION_14_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = v11;

  return swift_getWitnessTable(v10, a1, &a10, a4, a5, a6, a7, a8);
}

__n128 OUTLINED_FUNCTION_6_1()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 - 136));
  result = *(v0 - 168);
  v2 = *(v0 - 152);
  v3 = *(v0 - 144);
  v4 = *(v0 - 216);
  *v4 = result;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u64[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_118()
{

  return sub_222D52EFC();
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_222D52FBC();
}

id OUTLINED_FUNCTION_6_7(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_6_14()
{
  *(v0 - 124) = 0;
  *(v0 - 116) = 0;
  *(v0 - 72) = 0;
}

uint64_t OUTLINED_FUNCTION_6_15()
{
  v3 = (*(v1 + 56) + 32 * v0);

  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_222CDD5C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void OUTLINED_FUNCTION_12()
{
  *(v0 - 208) = 0u;
  *(v0 - 192) = 0u;

  sub_222CE2920(0, 0, 0, 0);
}

unint64_t OUTLINED_FUNCTION_12_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_222CE1050(a2, a3);
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return sub_222D520BC();
}

uint64_t dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_96();
  v14 = (*(v11 + 136) + **(v11 + 136));
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_222CF0BD0;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t sub_222CDD888()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_16();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_0_22(v3);

  return sub_222CDD920();
}

uint64_t sub_222CDD920()
{
  OUTLINED_FUNCTION_14_2();
  *(v1 + 200) = v2;
  *(v1 + 120) = v3;
  *(v1 + 128) = v0;
  *(v1 + 104) = v4;
  *(v1 + 112) = v5;
  v6 = sub_222D5284C();
  *(v1 + 136) = v6;
  *(v1 + 144) = *(v6 - 8);
  *(v1 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222CDEDF0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1)
{

  return sub_222D5305C();
}

void OUTLINED_FUNCTION_0_20()
{
  *(v2 + 8 * (v1 >> 6) + 64) |= 1 << v1;
  v4 = (*(v2 + 48) + 16 * v1);
  *v4 = v0;
  v4[1] = v3;
}

uint64_t static CATGlobals.defaultBuilder()()
{
  sub_222D5249C();
  static CATGlobals.defaultBuilder(deviceState:)();
  v1 = v0;
  sub_222CDC59C(v3, &qword_27D03C438, &unk_222D56DE0);
  return v1;
}

uint64_t sub_222CDDC78(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_222CDDCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280D3DAC0;
  if (!qword_280D3DAC0)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9C00], MEMORY[0x277D837D0], a3, v3, v4);
    atomic_store(result, &qword_280D3DAC0);
  }

  return result;
}

uint64_t sub_222CDDD04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C658, &qword_222D58030);
    v1 = sub_222D52EAC();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_222CDF618(v2, 1, &v4);

  return v4;
}

uint64_t OUTLINED_FUNCTION_73_0()
{
}

uint64_t OUTLINED_FUNCTION_20_0()
{
  sub_222CE0BC0((v0 - 168), (v0 - 136));

  return sub_222CE4EC0(v0 - 136, v0 - 168);
}

void OUTLINED_FUNCTION_26()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 88);
  v4 = *(v0 - 80);
  v5 = *(v0 - 72);

  sub_222CE2920(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_20_6()
{

  return sub_222D528EC();
}

uint64_t OUTLINED_FUNCTION_17()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_17_1()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 88);
  v4 = *(v0 - 80);
  v5 = *(v0 - 72);

  sub_222CE2920(v2, v3, v4, v5);
}

void OUTLINED_FUNCTION_17_3()
{

  JUMPOUT(0x223DCC290);
}

void *OUTLINED_FUNCTION_17_7(void *result)
{
  *(v2 + 88) = result;
  result[2] = v1;
  result[3] = v4;
  result[4] = v3;
  return result;
}

void static CATGlobals.defaultBuilder(deviceState:)()
{
  OUTLINED_FUNCTION_73();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C440, &unk_222D56DF0);
  v1 = OUTLINED_FUNCTION_52(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_22_6();
  v142 = v2 - v3;
  MEMORY[0x28223BE20](v4);
  v153 = &v137 - v5;
  OUTLINED_FUNCTION_18_6();
  v155 = sub_222D525AC();
  OUTLINED_FUNCTION_113();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_5();
  v11 = v10 - v9;
  v146 = sub_222D5239C();
  OUTLINED_FUNCTION_113();
  v145 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_5();
  v144 = v15 - v14;
  OUTLINED_FUNCTION_18_6();
  v149 = sub_222D5270C();
  OUTLINED_FUNCTION_113();
  v148 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22_6();
  v143 = v18 - v19;
  MEMORY[0x28223BE20](v20);
  v147 = &v137 - v21;
  OUTLINED_FUNCTION_18_6();
  v22 = sub_222D527DC();
  v23 = OUTLINED_FUNCTION_52(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_5();
  v158 = (v25 - v24);
  OUTLINED_FUNCTION_18_6();
  v26 = sub_222D5250C();
  OUTLINED_FUNCTION_113();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_5();
  v32 = v31 - v30;
  sub_222D521AC();
  OUTLINED_FUNCTION_113();
  v156 = v34;
  v157 = v33;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_5();
  v37 = v36 - v35;
  sub_222D5216C();
  v38 = OUTLINED_FUNCTION_23_6();
  v39 = OUTLINED_FUNCTION_65_0();
  CATGlobals.Builder.init(siriLocale:)(v39);
  v163[5] = v38;
  sub_222CE2B7C();
  if (v162)
  {
    sub_222CE2D34(&v161, v163);

    sub_222CE37D4();
    __swift_destroy_boxed_opaque_existential_1Tm(v163);
  }

  else
  {

    sub_222CDC59C(&v161, &qword_27D03C438, &unk_222D56DE0);
  }

  sub_222D524FC();
  v40 = sub_222D524DC();
  v154 = v7;
  v159 = v11;
  if (v40)
  {
    v41 = sub_222D524CC();

    sub_222D525BC();
    OUTLINED_FUNCTION_65_0();
    sub_222CE3AA0();
    (*(v156 + 8))(v37, v157);
    sub_222D525FC();
    v42 = sub_222CE31E0(v32);
    v44 = v43;
    (*(v28 + 8))(v32, v26);
    sub_222CE6518(v42, v44);

    sub_222CE6654(v41);
  }

  else
  {
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280D3DB78);
    }

    sub_222D52C3C();
    OUTLINED_FUNCTION_46_2("CATGlobals.defaultBuilder() - SiriEnvironment has no currentDevice for the current task");
    sub_222D5280C(v45);
  }

  v46 = v158;
  v47 = sub_222D524DC();
  if (v47)
  {
    v152 = v47;
    v48 = sub_222D524BC();
    v49 = sub_222D5277C();
    if (v50)
    {
      v51 = v48;
      sub_222D2F300(v49, v50);

      OUTLINED_FUNCTION_60_0();
      if (!v70)
      {
        OUTLINED_FUNCTION_0(&qword_280D3DB78);
      }

      sub_222D52C2C();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
      v53 = OUTLINED_FUNCTION_3_0(v52);
      *(v53 + 16) = xmmword_222D53980;
      v54 = *(v38 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_companionName + 8);
      v163[0] = *(v38 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_companionName);
      v163[1] = v54;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C448, &unk_222D56E00);
      v55 = sub_222D5297C();
      v57 = v56;
      *(v53 + 56) = MEMORY[0x277D837D0];
      *(v53 + 64) = sub_222CDDCB0(v55, v56, v58);
      *(v53 + 32) = v55;
      *(v53 + 40) = v57;
      OUTLINED_FUNCTION_46_2("CATGlobals.defaultBuilder() - companionName from SiriEnvironment's currentRequest: %s");
      sub_222D5280C(v59);

      v48 = v51;
      v46 = v158;
    }

    sub_222D5279C();
    v60 = sub_222D527CC();
    sub_222CE195C(v46);
    v61 = OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_isMultiUserEnabled;
    *(v38 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_isMultiUserEnabled) = v60 & 1;
    OUTLINED_FUNCTION_60_0();
    if (!v70)
    {
      OUTLINED_FUNCTION_0(&qword_280D3DB78);
    }

    v62 = qword_280D3DB80;
    sub_222D52C2C();
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v64 = OUTLINED_FUNCTION_3_0(v63);
    v151 = xmmword_222D53980;
    *(v64 + 16) = xmmword_222D53980;
    v65 = *(v38 + v61);
    v68 = sub_222CDDCB0(v64, v66, v67);
    v69 = v68;
    v70 = v65 == 0;
    v71 = 1702195828;
    if (!v65)
    {
      v71 = 0x65736C6166;
    }

    v72 = MEMORY[0x277D837D0];
    *(v64 + 56) = MEMORY[0x277D837D0];
    *(v64 + 64) = v68;
    if (v70)
    {
      v73 = 0xE500000000000000;
    }

    else
    {
      v73 = 0xE400000000000000;
    }

    *(v64 + 32) = v71;
    *(v64 + 40) = v73;
    OUTLINED_FUNCTION_74_0("CATGlobals.defaultBuilder() - isMultiUserEnabled from SiriEnvironment's currentRequest: %s", 90, 2, &dword_222CDA000, v62);

    sub_222D5279C();
    v74 = sub_222D527BC();
    sub_222CE195C(v46);
    v75 = OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_requiresUserGrounding;
    *(v38 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_requiresUserGrounding) = v74 & 1;
    sub_222D52C2C();
    v158 = v63;
    v76 = OUTLINED_FUNCTION_3_0(v63);
    *&v78 = OUTLINED_FUNCTION_67_0(v76).n128_u64[0];
    v79 = 0x65736C6166;
    if (*(v38 + v75))
    {
      v79 = 1702195828;
    }

    v80 = 0xE400000000000000;
    if (!*(v38 + v75))
    {
      v80 = 0xE500000000000000;
    }

    v77[7] = v72;
    v77[8] = v69;
    v77[4] = v79;
    v77[5] = v80;
    OUTLINED_FUNCTION_74_0("CATGlobals.defaultBuilder() - requiresUserGrounding from SiriEnvironment's currentRequest: %s", 93, 2, &dword_222CDA000, v62, v78);

    v141 = v48;
    sub_222D527AC();
    v160 = v62;
    v150 = v69;
    if (v81)
    {
      v82 = OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_siriLocale;
      OUTLINED_FUNCTION_25(v38 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_siriLocale, &v161);
      v83 = v156;
      v138 = *(v156 + 16);
      v84 = v157;
      v138(v37, v38 + v82, v157);
      v140 = sub_222D5217C();
      v139 = v85;
      v86 = *(v83 + 8);
      v86(v37, v84);
      sub_222D5216C();
      OUTLINED_FUNCTION_65_0();
      sub_222CE3AA0();

      v86(v37, v84);
      sub_222D52C1C();
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_222D53970;
      v138(v37, v38 + v82, v84);
      v88 = sub_222D5217C();
      v90 = v89;
      v86(v37, v84);
      v91 = v150;
      v92 = MEMORY[0x277D837D0];
      *(v87 + 56) = MEMORY[0x277D837D0];
      *(v87 + 64) = v91;
      *(v87 + 32) = v88;
      *(v87 + 40) = v90;
      *(v87 + 96) = v92;
      *(v87 + 104) = v91;
      v93 = v139;
      *(v87 + 72) = v140;
      *(v87 + 80) = v93;
      sub_222D5280C("CATGlobals.defaultBuilder() - responseLanguageVariant (%s) from SiriEnvironment's currentRequest overrides original siriLocale (%s)", v137, v138);
    }

    sub_222D524EC();
    v94 = v147;
    sub_222D5271C();

    v95 = v148;
    v96 = *(v148 + 104);
    v97 = v143;
    v98 = v149;
    v96(v143, *MEMORY[0x277D61DD8], v149);
    sub_222CE66DC(&qword_280D3D908, MEMORY[0x277D61DE8], MEMORY[0x277D61DF0]);
    OUTLINED_FUNCTION_43_2();
    v99 = v98;
    v100 = sub_222D528EC();
    v101 = *(v95 + 8);
    v101(v97, v98);
    if ((v100 & 1) == 0)
    {
      v96(v97, *MEMORY[0x277D61DE0], v98);
      OUTLINED_FUNCTION_43_2();
      v102 = sub_222D526FC();
      v101(v97, v98);
      v99 = v38;
      sub_222CE7FB4(v102 & 1);
    }

    sub_222D52C2C();
    v103 = OUTLINED_FUNCTION_3_0(v158);
    OUTLINED_FUNCTION_67_0(v103);
    v104 = sub_222CE6724(*(v38 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_isNetworkConnected));
    v105 = v150;
    v99[7] = MEMORY[0x277D837D0];
    v99[8] = v105;
    v99[4] = v104;
    v99[5] = v106;
    v107 = v160;
    OUTLINED_FUNCTION_74_0("CATGlobals.defaultBuilder() - isNetworkConnected from SiriEnvironment's networkAvailability: %s", 95, 2, &dword_222CDA000, v160);

    sub_222D524AC();
    v108 = v144;
    sub_222D5247C();

    v109 = sub_222D5238C();
    (*(v145 + 8))(v108, v146);
    v110 = v94;
    v111 = v155;
    if (v109)
    {
      v158 = v101;
      sub_222D2F344(v109);

      v112 = sub_222D52C2C();
      sub_222D5280C("CATGlobals.defaultBuilder() - Got user data from SiriEnvironment", 64, 2, &dword_222CDA000, v107, v112, MEMORY[0x277D84F90]);

      v158(v110, v98);
    }

    else
    {
      v101(v110, v98);
    }

    v115 = v153;
    v113 = v154;
  }

  else
  {
    OUTLINED_FUNCTION_60_0();
    v113 = v154;
    if (!v70)
    {
      OUTLINED_FUNCTION_0(&qword_280D3DB78);
    }

    v107 = qword_280D3DB80;
    v114 = sub_222D52C2C();
    sub_222D5280C("CATGlobals.defaultBuilder() - No SiriEnvironment for the current task", 69, 2, &dword_222CDA000, v107, v114, MEMORY[0x277D84F90]);
    v111 = v155;
    v115 = v153;
  }

  sub_222CE6928(v115);
  if (__swift_getEnumTagSinglePayload(v115, 1, v111) == 1)
  {
    sub_222CDC59C(v115, &qword_27D03C440, &unk_222D56DF0);
  }

  else
  {
    v160 = v107;
    v116 = OUTLINED_FUNCTION_112();
    v117(v116);
    sub_222CE6A60();

    OUTLINED_FUNCTION_60_0();
    if (!v70)
    {
      OUTLINED_FUNCTION_0(&qword_280D3DB78);
    }

    sub_222D52C2C();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v119 = OUTLINED_FUNCTION_3_0(v118);
    *(v119 + 16) = xmmword_222D53980;
    OUTLINED_FUNCTION_25(v38 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_responseMode, v163);
    v120 = v142;
    sub_222CE2B7C();
    sub_222CE12C4(v120, v121, v122, v123, v124, v125, v126, v127, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148);
    v129 = v128;
    v131 = v130;
    v132 = sub_222CDC59C(v120, &qword_27D03C440, &unk_222D56DF0);
    *(v119 + 56) = MEMORY[0x277D837D0];
    *(v119 + 64) = sub_222CDDCB0(v132, v133, v134);
    v135 = 0x6E776F6E6B6E55;
    if (v131)
    {
      v135 = v129;
    }

    v136 = 0xE700000000000000;
    if (v131)
    {
      v136 = v131;
    }

    *(v119 + 32) = v135;
    *(v119 + 40) = v136;
    OUTLINED_FUNCTION_74_0("CATGlobals.defaultBuilder() - Effective responseMode: %s", 56, 2, &dword_222CDA000, v160);

    (*(v113 + 8))(v159, v111);
  }

  OUTLINED_FUNCTION_74();
}

uint64_t sub_222CDEDF0()
{
  v41 = v0;
  if (qword_280D3DB78 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 200);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = qword_280D3DB80;
  sub_222D5283C();
  v8 = sub_222D52C6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_222D53980;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_222CDDCB0(v9, v10, v11);
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;

  v38 = v7;
  sub_222D5281C(v8, &dword_222CDA000, v7, "CATWrapperAsyncExecute", 22, 2, v1, "catID=%{public,signpost.telemetry:string1}@ enableTelemetry=YES ", 64, 2, v9);

  v12 = sub_222CDF250((v0 + 16), v3, *(v4 + OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_mockGlobals), *(v4 + OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_useResponseMode));
  *(v0 + 160) = v12;
  *(v0 + 168) = v13;
  v39 = v13;
  if (v2)
  {
    v14 = 0x6562616C206E6920;
  }

  else
  {
    v14 = 0;
  }

  if (v2)
  {
    v15 = 0xEE0065646F6D206CLL;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  if (qword_280D3B218 != -1)
  {
    swift_once();
  }

  v16 = sub_222D5286C();
  __swift_project_value_buffer(v16, qword_280D3DDA8);

  v17 = sub_222D5285C();
  v18 = sub_222D52C2C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v12;
    v20 = *(v0 + 104);
    v21 = *(v0 + 112);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v40 = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_222CE548C(v14, v15, &v40);
    *(v22 + 12) = 2080;
    v24 = v21;
    v12 = v19;
    *(v22 + 14) = sub_222CE548C(v20, v24, &v40);
    _os_log_impl(&dword_222CDA000, v17, v18, "Invoking CATExecutor (async)%s for catId: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCC290](v23, -1, -1);
    MEMORY[0x223DCC290](v22, -1, -1);
  }

  v25 = *(v0 + 152);
  v26 = *(v0 + 128);
  v27 = *(v0 + 200);
  v28 = sub_222D52C7C();
  LOBYTE(v37) = 2;
  sub_222D5281C(v28, &dword_222CDA000, v38, "CATWrapperAsyncExecute", 22, 2, v25, "Parameter conversion completed", 30, v37, MEMORY[0x277D84F90]);
  v29 = *(v26 + OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_options);
  if (v27 == 1)
  {
    if (qword_280D3DAD0 != -1)
    {
      swift_once();
    }

    v30 = qword_280D3DAD8;
    if ((qword_280D3DAD8 & ~v29) == 0)
    {
      v30 = 0;
    }

    v29 |= v30;
  }

  v31 = *(v0 + 128);
  type metadata accessor for CATDialog();
  v32 = OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_templateDir;
  sub_222CE3120(v0 + 16, v0 + 56);
  *(v0 + 96) = v29;
  v33 = swift_task_alloc();
  *(v0 + 176) = v33;
  *v33 = v0;
  v33[1] = sub_222CE5184;
  v34 = *(v0 + 104);
  v35 = *(v0 + 112);

  return static CATDialog.execute(templateDir:catId:parameters:globals:callback:options:)(v31 + v32, v34, v35, v12, v39, v0 + 56, (v0 + 96));
}

uint64_t sub_222CDF250(uint64_t *a1, uint64_t a2, void *a3, int a4)
{
  v37 = a4;
  v40 = a3;
  v42 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C440, &unk_222D56DF0);
  MEMORY[0x28223BE20](v5 - 8);
  v36 = &v36 - v6;
  v7 = 0;
  v8 = *(a2 + 16);
  v41 = a2;
  v9 = a2 + 32;
  v43 = MEMORY[0x277D84F90];
  v39 = v8;
  v38 = a2 + 32;
  while (1)
  {
    v10 = ~v7;
    v11 = v9 + 48 * v7;
    v12 = v8 - v7;
    if (v8 == v7)
    {
      break;
    }

    while (1)
    {
      sub_222CEA2E8(v11, &v46, &qword_27D03BDC8, &unk_222D53BC0);
      v13 = v46;
      v50 = v47;
      v51 = v48;
      v52 = v46;
      v53[0] = v47;
      v53[1] = v48;
      sub_222CEA2E8(v53, &v44, &qword_27D03BDA8, &unk_222D55070);
      if (v45)
      {
        sub_222CE0BC0(&v44, &v46);
        v49 = v13;

        sub_222CEB86C(&v46, &v50);
        __swift_destroy_boxed_opaque_existential_1Tm(&v46);
      }

      else
      {
        sub_222CDC53C(&v44, &qword_27D03BDA8, &unk_222D55070);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
      }

      sub_222CDC53C(&v52, &qword_27D03BDD0, &qword_222D58AD0);
      if (*(&v49 + 1))
      {
        break;
      }

      sub_222CDC53C(&v49, &qword_27D03C778, &unk_222D58AD8);
      --v10;
      v11 += 48;
      if (!--v12)
      {
        goto LABEL_14;
      }
    }

    v46 = v49;
    v47 = v50;
    v48 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_222CEC52C();
      v43 = v19;
    }

    v8 = v39;
    v9 = v38;
    v14 = *(v43 + 16);
    if (v14 >= *(v43 + 24) >> 1)
    {
      sub_222CEC52C();
      v43 = v20;
    }

    v7 = -v10;
    v15 = v43;
    *(v43 + 16) = v14 + 1;
    v16 = (v15 + 48 * v14);
    v17 = v46;
    v18 = v48;
    v16[3] = v47;
    v16[4] = v18;
    v16[2] = v17;
  }

LABEL_14:
  sub_222CDDD04(v43);
  v21 = v40;
  if (v40)
  {
    v22 = v40;
  }

  else
  {
    v23 = type metadata accessor for CATGlobals(0);
    v24 = static CATGlobals.defaultBuilder()();
    if ((v37 & 1) == 0)
    {
      sub_222D525AC();
      v25 = v36;
      OUTLINED_FUNCTION_42_1();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
      sub_222D2F640();

      sub_222CDC53C(v25, &qword_27D03C440, &unk_222D56DF0);
    }

    v30 = objc_allocWithZone(v23);
    v22 = CATGlobals.init(builder:)(v24);
  }

  v31 = type metadata accessor for CATWrapperCallback();
  v32 = swift_allocObject();
  *(v32 + 16) = v41;
  v33 = v42;
  v42[3] = v31;
  v33[4] = &off_283621070;
  v34 = v21;

  *v33 = v32;
  return OUTLINED_FUNCTION_6();
}

void sub_222CDF618(uint64_t a1, char a2, void *a3)
{
  v25 = *(a1 + 16);
  if (!v25)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_222D5312C();
      __break(1u);
      goto LABEL_22;
    }

    sub_222CEA2E8(i, &v30, &qword_27D03C3C8, &qword_222D56798);
    v8 = v30;
    v7 = v31;
    v28 = v30;
    v29 = v31;
    sub_222CE0BC0(&v32, v27);
    v9 = *a3;
    v11 = sub_222CE1050(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C318, &qword_222D56100);
      sub_222D52E5C();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v8;
    v19[1] = v7;
    sub_222CE0BC0(v27, (v18[7] + 32 * v11));
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    ++v5;
    v18[2] = v22;
    a2 = 1;
    if (v25 == v5)
    {

      return;
    }
  }

  sub_222D45D40(v14, a2 & 1);
  v16 = sub_222CE1050(v8, v7);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();
  v33 = v23;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C780, &qword_222D58AE8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v27);

    return;
  }

LABEL_22:
  sub_222D52DBC();
  MEMORY[0x223DCB4F0](0xD00000000000001BLL, 0x8000000222D5CF40);
  sub_222D52E3C();
  MEMORY[0x223DCB4F0](39, 0xE100000000000000);
  sub_222D52E7C();
  __break(1u);
}

uint64_t sub_222CDF950(uint64_t result, int a2, int a3)
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

uint64_t sub_222CDF990(uint64_t a1, int a2)
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

uint64_t sub_222CDF9D0()
{
  v0 = sub_222D5218C();
  v1 = [v0 af_aceTemperatureUnit];

  v2 = sub_222D5292C();
  v4 = v3;

  v5 = v2 == 0x737569736C6543 && v4 == 0xE700000000000000;
  if (v5 || (sub_222D5305C() & 1) != 0)
  {

    return 0x737569736C6563;
  }

  if (v2 == 0x65686E6572686146 && v4 == 0xEA00000000007469)
  {
  }

  else
  {
    v8 = sub_222D5305C();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  return 0x65686E6572686166;
}

unint64_t sub_222CDFAEC()
{
  OUTLINED_FUNCTION_19_7();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C658, &qword_222D58030);
    v2 = OUTLINED_FUNCTION_10_9();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_4_19();
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_12:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (*(v0 + 48) + ((v10 << 10) | (16 * v11)));
    v14 = *v12;
    v13 = v12[1];

    swift_dynamicCast();
    sub_222CE0BC0(&v23, v25);
    sub_222CE0BC0(v25, v26);
    sub_222CE0BC0(v26, &v24);
    result = sub_222CE1050(v14, v13);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      *v17 = v14;
      v17[1] = v13;

      v18 = (v2[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      result = sub_222CE0BC0(&v24, v18);
      v9 = v10;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v14;
      v19[1] = v13;
      result = sub_222CE0BC0(&v24, (v2[7] + 32 * result));
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_20;
      }

      v2[2] = v22;
      v9 = v10;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v0 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_222CDFD20()
{
  v0 = sub_222D5218C();
  v1 = [v0 objectForKey_];

  if (v1)
  {
    sub_222D52D6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      v2 = v7 == 0x63697274654DLL && v8 == 0xE600000000000000;
      if (v2 || (OUTLINED_FUNCTION_53_0(0x63697274654DLL, 0xE600000000000000) & 1) != 0)
      {

        return 0x63697274656DLL;
      }

      v4 = v7 == 776678997 && v8 == 0xE400000000000000;
      if (v4 || (OUTLINED_FUNCTION_53_0(776678997, 0xE400000000000000) & 1) != 0)
      {

        return 27509;
      }

      if (v7 == 777203285 && v8 == 0xE400000000000000)
      {

        return 29557;
      }

      v6 = OUTLINED_FUNCTION_53_0(777203285, 0xE400000000000000);

      if (v6)
      {
        return 29557;
      }
    }
  }

  else
  {
    sub_222CDC59C(v11, &qword_27D03BDA8, &unk_222D55070);
  }

  return 0;
}

void sub_222CDFEC4()
{
  OUTLINED_FUNCTION_73();
  v131 = v1;
  v141 = *MEMORY[0x277D85DE8];
  sub_222D5239C();
  OUTLINED_FUNCTION_113();
  v118 = v3;
  v119 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_5();
  v117 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C4F8, &qword_222D57158);
  OUTLINED_FUNCTION_52(v6);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v7);
  v126 = &v115 - v8;
  OUTLINED_FUNCTION_18_6();
  v135 = sub_222D521AC();
  OUTLINED_FUNCTION_113();
  v133 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_6();
  v116 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v134 = &v115 - v14;
  OUTLINED_FUNCTION_18_6();
  sub_222D51FBC();
  OUTLINED_FUNCTION_113();
  v123 = v16;
  v124 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_5();
  v122 = v18 - v17;
  OUTLINED_FUNCTION_18_6();
  v132 = sub_222D521DC();
  OUTLINED_FUNCTION_113();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_45_2();
  v22 = sub_222CE6268();
  v23 = 0x65736C6166;
  if (v22)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (v22)
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  v129 = v25;
  v130 = v24;
  v26 = [objc_opt_self() standardUserDefaults];
  v27 = sub_222D528FC();
  v28 = [v26 BOOLForKey_];

  if (v28)
  {
    v23 = 1702195828;
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  v140 = 0;
  v30 = sub_222D528FC();
  v31 = sub_222D528FC();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v30, *MEMORY[0x277CBF008], &v140 + 1);
  v33 = OUTLINED_FUNCTION_57_0();
  v36 = CFPreferencesGetAppBooleanValue(v33, v34, v35);
  v121 = v31;
  v127 = v29;
  v128 = v23;
  if (HIBYTE(v140))
  {
    if (AppBooleanValue)
    {
      v37 = 1919431730;
    }

    else
    {
      v37 = 1919431217;
    }

LABEL_18:
    v38 = 0xE400000000000000;
    goto LABEL_19;
  }

  if (v140)
  {
    if (v36)
    {
      v37 = 1919431217;
    }

    else
    {
      v37 = 1919431730;
    }

    goto LABEL_18;
  }

  v37 = 0;
  v38 = 0xE000000000000000;
LABEL_19:
  v125 = v38;
  v40 = v134;
  v39 = v135;
  sub_222D521CC();
  v41 = sub_222D521BC();
  v43 = v42;
  v44 = (*(v20 + 8))(v0, v132);
  v138 = v41;
  v139 = v43;
  v136 = 40;
  v137 = 0xE100000000000000;
  v47 = sub_222CE0BD0(v44, v45, v46);
  v48 = sub_222D52D3C();

  if (!v48[2])
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v132 = v37;
  v50 = v48[4];
  v49 = v48[5];

  v138 = v50;
  v139 = v49;
  v51 = v122;
  sub_222D51F3C();
  v47 = sub_222D52D4C();
  v37 = v52;
  (*(v123 + 8))(v51, v124);

  sub_222D524FC();
  v53 = sub_222D524DC();
  v120 = v30;
  if (!v53)
  {
    v55 = v126;
    __swift_storeEnumTagSinglePayload(v126, 1, 1, v39);
    v43 = v128;
LABEL_26:
    sub_222CDC59C(v55, &qword_27D03C4F8, &qword_222D57158);
    if (qword_280D3DB78 == -1)
    {
LABEL_27:
      sub_222D52C2C();
      OUTLINED_FUNCTION_46_2("Getting user settings for unit preferences from local defaults (Data was not available from SiriEnvironment)");
      sub_222D5280C(v61);
      sub_222D5219C();
      goto LABEL_28;
    }

LABEL_71:
    OUTLINED_FUNCTION_0(&qword_280D3DB78);
    goto LABEL_27;
  }

  sub_222D524AC();

  v54 = v117;
  sub_222D5247C();

  v55 = v126;
  sub_222D5237C();
  (*(v118 + 8))(v54, v119);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v55, 1, v39);
  v43 = v128;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_26;
  }

  v57 = v55;
  v58 = v133;
  v59 = v116;
  (*(v133 + 32))(v116, v57, v39);
  (*(v58 + 16))(v40, v59, v39);
  if (qword_280D3DB78 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280D3DB78);
  }

  sub_222D52C2C();
  OUTLINED_FUNCTION_46_2("Getting user settings for unit preferences from SiriEnvironment");
  sub_222D5280C(v60);
  (*(v58 + 8))(v59, v39);
LABEL_28:
  v62 = sub_222CDFD20();
  if (v63)
  {
    v64 = v62;
  }

  else
  {
    v64 = 29557;
  }

  if (v63)
  {
    v65 = v63;
  }

  else
  {
    v65 = 0xE200000000000000;
  }

  v66 = sub_222CDF9D0();
  if (v67)
  {
    v68 = v66;
  }

  else
  {
    v68 = 0x65686E6572686166;
  }

  if (v67)
  {
    v69 = v67;
  }

  else
  {
    v69 = 0xEA00000000007469;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C018, &qword_222D54A60);
  *(swift_initStackObject() + 16) = xmmword_222D56DD0;
  OUTLINED_FUNCTION_30_4();
  v70[4] = 0xD000000000000013;
  v70[5] = v71;
  v72 = v129;
  v70[6] = v130;
  v70[7] = v72;
  OUTLINED_FUNCTION_30_4();
  *(v74 + 64) = v73 + 3;
  *(v74 + 72) = v75;
  v76 = v125;
  *(v74 + 80) = v132;
  *(v74 + 88) = v76;
  strcpy((v74 + 96), "userCalendar");
  *(v74 + 109) = 0;
  *(v74 + 110) = -5120;
  *(v74 + 112) = v47;
  *(v74 + 120) = v37;
  OUTLINED_FUNCTION_30_4();
  v77[16] = v79;
  v77[17] = v78;
  v77[18] = v64;
  v77[19] = v65;
  OUTLINED_FUNCTION_30_4();
  v81[20] = v80 + 5;
  v81[21] = v82;
  v83 = v127;
  v81[22] = v43;
  v81[23] = v83;
  OUTLINED_FUNCTION_30_4();
  v84[24] = v86;
  v84[25] = v85;
  v84[26] = v68;
  v84[27] = v69;
  v87 = sub_222D528BC();
  v88 = *(v131 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_userSettings);
  if (v88 && *(v88 + 16))
  {
    v89 = v88 + 64;
    v90 = 1 << *(v88 + 32);
    v91 = -1;
    if (v90 < 64)
    {
      v91 = ~(-1 << v90);
    }

    v92 = v91 & *(v88 + 64);
    v40 = (v90 + 63) >> 6;

    v94 = 0;
    v132 = v93;
    while (1)
    {
      if (v92)
      {
        v95 = v92;
        goto LABEL_51;
      }

      do
      {
        v96 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          __break(1u);
          goto LABEL_70;
        }

        if (v96 >= v40)
        {

          v40 = v134;
          v39 = v135;
          goto LABEL_67;
        }

        v95 = *(v89 + 8 * v96);
        ++v94;
      }

      while (!v95);
      v94 = v96;
LABEL_51:
      v92 = (v95 - 1) & v95;
      if (!v87[2])
      {
        continue;
      }

      v97 = (v94 << 10) | (16 * __clz(__rbit64(v95)));
      v98 = (*(v93 + 48) + v97);
      v47 = *v98;
      v43 = v98[1];
      v99 = (*(v93 + 56) + v97);
      v37 = *v99;
      v39 = v99[1];

      v131 = v47;
      sub_222CE1050(v47, v43);
      if ((v100 & 1) == 0)
      {
        goto LABEL_56;
      }

      v101 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v101 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (!v101)
      {
LABEL_56:

        goto LABEL_57;
      }

      v130 = v37;
      LODWORD(v129) = swift_isUniquelyReferenced_nonNull_native();
      v138 = v87;
      v102 = sub_222CE1050(v131, v43);
      v104 = v87[2];
      v105 = (v103 & 1) == 0;
      v128 = v104 + v105;
      if (__OFADD__(v104, v105))
      {
        __break(1u);
LABEL_73:
        __break(1u);
      }

      v47 = v102;
      v37 = v103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C388, &qword_222D56710);
      if ((sub_222D52E4C() & 1) == 0)
      {
        goto LABEL_62;
      }

      v106 = sub_222CE1050(v131, v43);
      if ((v37 & 1) != (v107 & 1))
      {
        break;
      }

      v47 = v106;
LABEL_62:
      if (v37)
      {

        v87 = v138;
        v108 = (v138[7] + 16 * v47);
        *v108 = v130;
        v108[1] = v39;
LABEL_57:

        v93 = v132;
      }

      else
      {
        v87 = v138;
        v138[(v47 >> 6) + 8] |= 1 << v47;
        v109 = (v87[6] + 16 * v47);
        v110 = v130;
        *v109 = v131;
        v109[1] = v43;
        v111 = (v87[7] + 16 * v47);
        *v111 = v110;
        v111[1] = v39;
        v112 = v87[2];
        v113 = __OFADD__(v112, 1);
        v114 = v112 + 1;
        if (v113)
        {
          goto LABEL_73;
        }

        v87[2] = v114;
        v93 = v132;
      }
    }

    sub_222D5312C();
    __break(1u);
  }

  else
  {
LABEL_67:
    sub_222CDFAEC();

    (*(v133 + 8))(v40, v39);

    OUTLINED_FUNCTION_74();
  }
}

uint64_t CATGlobals.Builder.deinit(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_siriLocale;
  v4 = sub_222D521AC();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 8);
  v6(v2 + v3, v4);
  v6(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_deviceLocale, v4);
  OUTLINED_FUNCTION_73_0();
  sub_222CDC59C(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_device, &qword_27D03C438, &unk_222D56DE0);

  OUTLINED_FUNCTION_73_0();

  sub_222CDC59C(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_responseMode, &qword_27D03C440, &unk_222D56DF0);
  v7 = OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_unlockDevicePolicy;
  sub_222D5246C();
  OUTLINED_FUNCTION_34();
  (*(v8 + 8))(v2 + v7);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_73_0();

  return v2;
}

uint64_t CATGlobals.Builder.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  CATGlobals.Builder.deinit(a1, a2);
  v3 = *(*v2 + 48);
  v4 = *(*v2 + 52);

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_27(uint64_t result)
{
  v2[4] = v3;
  v2[5] = v4;
  v2[12] = v1;
  v2[13] = result;
  v2[8] = result;
  v2[9] = 1819242306;
  v2[10] = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_27_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

_OWORD *sub_222CE0BC0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_222CE0BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280D3DAC8;
  if (!qword_280D3DAC8)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83820], MEMORY[0x277D837D0], a3, v3, v4);
    atomic_store(result, &qword_280D3DAC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_74_0(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_222D5280C(a1, a2, a3, a4, a5, v5, v6);
}

uint64_t OUTLINED_FUNCTION_65(uint64_t result)
{
  v3[8] = result;
  v3[4] = v1;
  v3[5] = v2;
  return result;
}

__n128 OUTLINED_FUNCTION_67_0(__n128 *a1)
{
  result = *(v1 - 272);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_8()
{
  v2 = *(v0 - 376);
  v3 = *(v0 - 384);

  return sub_222CE6210(v2, v3);
}

void OUTLINED_FUNCTION_2_3(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v4, 1, 1, a1);

  static CATEvaluator.evaluate(templateDir:typeName:propName:parameters:globals:)(v4, v6, v5, v3, v2, (v7 - 200), v1, v7 - 168);
}

uint64_t OUTLINED_FUNCTION_2_15()
{

  return sub_222D5305C();
}

__n128 OUTLINED_FUNCTION_2_19(__n128 *a1)
{
  result = *(v1 - 304);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_23()
{

  return sub_222D5300C();
}

uint64_t OUTLINED_FUNCTION_2_24(uint64_t a1, uint64_t a2)
{

  return sub_222D52D2C();
}

_OWORD *sub_222CE0F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_2(a1, a2, a3);
  OUTLINED_FUNCTION_22_5();
  if (v8)
  {
    __break(1u);
LABEL_14:
    result = sub_222D5312C();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C318, &qword_222D56100);
  if (OUTLINED_FUNCTION_28_5(v11))
  {
    sub_222CE1050(v4, v3);
    OUTLINED_FUNCTION_15_4();
    if (!v13)
    {
      goto LABEL_14;
    }

    v9 = v12;
  }

  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((*(*v5 + 56) + 32 * v9));
    v14 = OUTLINED_FUNCTION_6();

    return sub_222CE0BC0(v14, v15);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_25_3();
    sub_222CE5908(v17, v18, v19, v20, v21);
  }
}

unint64_t sub_222CE1050(uint64_t a1, uint64_t a2)
{
  sub_222D5313C();
  sub_222D529DC();
  v4 = sub_222D5315C();

  return sub_222CE10C8(a1, a2, v4);
}

unint64_t sub_222CE10C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_222D5305C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_48_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_222D5305C();
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return swift_allocObject();
}

_OWORD *OUTLINED_FUNCTION_11_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v7 = a2 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;

  return sub_222CE0F5C(va, v7, 0xEA0000000000656DLL);
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1)
{

  return sub_222D52E4C();
}

void OUTLINED_FUNCTION_11_9()
{

  sub_222CECA4C();
}

void sub_222CE12C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_73();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C440, &unk_222D56DF0);
  OUTLINED_FUNCTION_52(v23);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_13_6();
  v25 = sub_222D525AC();
  OUTLINED_FUNCTION_113();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_22_6();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &a9 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &a9 - v33;
  sub_222CE2B7C();
  if (__swift_getEnumTagSinglePayload(v20, 1, v25) == 1)
  {
    sub_222CDC59C(v20, &qword_27D03C440, &unk_222D56DF0);
  }

  else
  {
    (*(v27 + 32))(v34, v20, v25);
    (*(v27 + 16))(v32, v34, v25);
    sub_222D5256C();
    OUTLINED_FUNCTION_19_6();
    sub_222CE66DC(v35, v36, MEMORY[0x277D61CD8]);
    v37 = OUTLINED_FUNCTION_20_6();
    v38 = *(v27 + 8);
    v39 = OUTLINED_FUNCTION_45();
    v38(v39);
    if (v37 & 1) != 0 || (sub_222D5258C(), v40 = OUTLINED_FUNCTION_20_6(), v41 = OUTLINED_FUNCTION_45(), v38(v41), (v40) || (sub_222D5257C(), v42 = OUTLINED_FUNCTION_20_6(), v43 = OUTLINED_FUNCTION_45(), v38(v43), (v42))
    {
      v44 = OUTLINED_FUNCTION_31_4();
      v38(v44);
    }

    else
    {
      sub_222D5259C();
      OUTLINED_FUNCTION_20_6();
      v45 = OUTLINED_FUNCTION_45();
      v38(v45);
      v46 = OUTLINED_FUNCTION_31_4();
      v38(v46);
    }

    v47 = OUTLINED_FUNCTION_6();
    v38(v47);
  }

  OUTLINED_FUNCTION_74();
}

uint64_t OUTLINED_FUNCTION_18_3(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_222CE548C(v11, v10, &a10);
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_222D5305C();
}

uint64_t OUTLINED_FUNCTION_18_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = a17;

  return __swift_mutable_project_boxed_opaque_existential_1(&a14, v18);
}

void *OUTLINED_FUNCTION_18_10(uint64_t a1, uint64_t a2, ...)
{

  return sub_222D5313C();
}

_BYTE *CATGlobals.init(builder:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_siriLocale;
  OUTLINED_FUNCTION_25(a1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_siriLocale, v18);
  v4 = OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_siriLocale;
  sub_222D521AC();
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(&v1[v4], a1 + v3);
  v6 = *(a1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_siriVoiceGender + 8);
  v7 = &v1[OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_siriVoiceGender];
  *v7 = *(a1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_siriVoiceGender);
  v7[1] = v6;
  *&v1[OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_dialogMetadata] = *(a1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_dialogMetadata);
  v8 = *(a1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_interactionId + 8);
  v9 = &v1[OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_interactionId];
  *v9 = *(a1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_interactionId);
  v9[1] = v8;
  v10 = *(a1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_executionRequestId + 8);
  v11 = &v1[OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_executionRequestId];
  *v11 = *(a1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_executionRequestId);
  v11[1] = v10;
  v1[OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_isMultiUserEnabled] = *(a1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_isMultiUserEnabled);
  v1[OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_requiresUserGrounding] = *(a1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_requiresUserGrounding);
  *&v1[OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_randomSeed] = *(a1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_randomSeed);
  OUTLINED_FUNCTION_25(a1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_responseMode, v17);
  sub_222CE2B7C();
  *&v1[OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_currentTime] = *(a1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_currentTime);
  *&v1[OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_customPronunciations] = *(a1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_customPronunciations);
  v12 = type metadata accessor for CATGlobals(0);

  sub_222CE1A04();
  *&v1[OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_globalParameters] = v13;
  sub_222CDFEC4();
  *&v1[OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_userSettings] = v14;
  v16.receiver = v1;
  v16.super_class = v12;
  objc_msgSendSuper2(&v16, sel_init);
  OUTLINED_FUNCTION_66_0();

  return v1;
}

uint64_t sub_222CE195C(uint64_t a1)
{
  v2 = sub_222D527DC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

void sub_222CE1A04()
{
  OUTLINED_FUNCTION_73();
  v2 = v1;
  v131[3] = *MEMORY[0x277D85DE8];
  sub_222D521AC();
  OUTLINED_FUNCTION_113();
  v114 = v4;
  v115 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_5();
  v113 = v6 - v5;
  OUTLINED_FUNCTION_18_6();
  sub_222D5274C();
  OUTLINED_FUNCTION_113();
  v108 = v8;
  v109 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_5();
  v107 = v10 - v9;
  OUTLINED_FUNCTION_18_6();
  v11 = sub_222D527DC();
  v12 = OUTLINED_FUNCTION_52(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_5();
  v110 = v14 - v13;
  OUTLINED_FUNCTION_18_6();
  v112 = sub_222D527FC();
  OUTLINED_FUNCTION_113();
  v117 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_5();
  v116 = v18 - v17;
  OUTLINED_FUNCTION_18_6();
  v19 = sub_222D5246C();
  OUTLINED_FUNCTION_113();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_45_2();
  v23 = OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_currentDevice;
  if (*(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_currentDevice) || (OUTLINED_FUNCTION_25(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_device, v131), sub_222CE2B7C(), v24 = *(&v125 + 1), sub_222CDC59C(&v124, &qword_27D03C438, &unk_222D56DE0), v24) || *(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_isNetworkConnected) != 2 || *(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_companionName + 8))
  {
    type metadata accessor for SirikitDeviceState();
    OUTLINED_FUNCTION_25(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_device, &v120);
    sub_222CE2B7C();
    v25 = OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_unlockDevicePolicy;
    OUTLINED_FUNCTION_25(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_unlockDevicePolicy, &v119);
    (*(v21 + 16))(v0, v2 + v25, v19);
    v26 = *(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_companionName);
    v27 = *(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_companionName + 8);
    v28 = *(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_isNetworkConnected);

    SirikitDeviceState.__allocating_init(currentDevice:deviceState:unlockPolicy:isNetworkConnected:companionName:)(v29, &v124, v0, v28, v26, v27);
    v30 = sub_222CF1308();
    *(&v125 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
    *&v124 = v30;
    v31 = OUTLINED_FUNCTION_68_0();
    sub_222CE0BC0(v31, v32);
    v33 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    *&v121 = v33;
    sub_222CE0F5C(&v129, 0x656369766564, 0xE600000000000000);

    v34 = v121;
  }

  else
  {
    v34 = MEMORY[0x277D84F98];
  }

  v35 = *(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_user);
  if (v35)
  {
    v36 = v35;
    v37 = sub_222D2EA48(v36);
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280D3DB78);
    }

    v38 = qword_280D3DB80;
    v39 = sub_222D52C2C();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v41 = OUTLINED_FUNCTION_3_0(v40);
    *(v41 + 16) = xmmword_222D53980;
    v42 = sub_222D33854(v36, &selRef_firstName);
    v44 = v43;
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = sub_222CDDCB0(v42, v43, v45);
    v46 = 4999502;
    if (v44)
    {
      v46 = v42;
    }

    v47 = 0xE300000000000000;
    if (v44)
    {
      v47 = v44;
    }

    *(v41 + 32) = v46;
    *(v41 + 40) = v47;
    sub_222D5280C("Using SAPerson from builder.user: firstName = %{private}@", 57, 2, &dword_222CDA000, v38, v39, v41);

LABEL_14:

LABEL_15:
    *(&v125 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
    *&v124 = v37;
    v48 = OUTLINED_FUNCTION_68_0();
    sub_222CE0BC0(v48, v49);
    swift_isUniquelyReferenced_nonNull_native();
    *&v121 = v34;
    sub_222CE0F5C(&v129, 1919251317, 0xE400000000000000);
    v34 = v121;
    goto LABEL_42;
  }

  if (*(v2 + v23))
  {

    v50 = sub_222D5261C();
    if (v50)
    {
      v51 = v50;
      v37 = sub_222D2EA48(v50);
      if (qword_280D3DB78 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280D3DB78);
      }

      v118 = qword_280D3DB80;
      v52 = sub_222D52C2C();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
      v54 = OUTLINED_FUNCTION_3_0(v53);
      *(v54 + 16) = xmmword_222D53980;
      v55 = sub_222D33854(v51, &selRef_firstName);
      v57 = v56;
      *(v54 + 56) = MEMORY[0x277D837D0];
      *(v54 + 64) = sub_222CDDCB0(v55, v56, v58);
      v59 = 4999502;
      if (v57)
      {
        v59 = v55;
      }

      v60 = 0xE300000000000000;
      if (v57)
      {
        v60 = v57;
      }

      *(v54 + 32) = v59;
      *(v54 + 40) = v60;
      sub_222D5280C("Using meCard from current device: firstName=%{private}@", 55, 2, &dword_222CDA000, v118, v52, v54);

      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_25(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_device, &v128);
  sub_222CE2B7C();
  if (v130)
  {
    sub_222CE2D34(&v129, &v124);
    __swift_project_boxed_opaque_existential_1(&v124, *(&v125 + 1));
    sub_222D5222C();
    if (__swift_getEnumTagSinglePayload(v110, 1, v112) == 1)
    {
      sub_222CE195C(v110);
    }

    else
    {
      (*(v117 + 32))(v116, v110, v112);
      sub_222D527EC();
      OUTLINED_FUNCTION_63_0();
      sub_222CE2B7C();
      if (*(&v122 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
        sub_222D5273C();
        v61 = sub_222D5272C();
        (*(v108 + 8))(v107, v109);
        __swift_destroy_boxed_opaque_existential_1Tm(&v121);
        if (v61)
        {
          v37 = sub_222D2ED50(v61);
          if (qword_280D3DB78 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_280D3DB78);
          }

          v111 = qword_280D3DB80;
          v62 = sub_222D52C2C();
          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
          v64 = OUTLINED_FUNCTION_3_0(v63);
          *(v64 + 16) = xmmword_222D53980;
          v65 = [v61 givenName];
          v66 = sub_222D5292C();
          v68 = v67;

          *(v64 + 56) = MEMORY[0x277D837D0];
          *(v64 + 64) = sub_222CDDCB0(v69, v70, v71);
          *(v64 + 32) = v66;
          *(v64 + 40) = v68;
          sub_222D5280C("Using meCard from device state: givenName=%{private}@", 53, 2, &dword_222CDA000, v111, v62, v64);

          sub_222CDC59C(&v129, &qword_27D03C500, &qword_222D57160);
          (*(v117 + 8))(v116, v112);
          __swift_destroy_boxed_opaque_existential_1Tm(&v124);
          goto LABEL_15;
        }

        sub_222CDC59C(&v129, &qword_27D03C500, &qword_222D57160);
        (*(v117 + 8))(v116, v112);
      }

      else
      {
        sub_222CDC59C(&v129, &qword_27D03C500, &qword_222D57160);
        (*(v117 + 8))(v116, v112);
        sub_222CDC59C(&v121, &qword_27D03C500, &qword_222D57160);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v124);
  }

  else
  {
    sub_222CDC59C(&v129, &qword_27D03C438, &unk_222D56DE0);
  }

  if (qword_280D3DB78 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280D3DB78);
  }

  sub_222D52C2C();
  OUTLINED_FUNCTION_46_2("No user information available");
  sub_222D5280C(v72);
LABEL_42:
  sub_222D51F2C();
  swift_allocObject();
  v73 = sub_222D51F1C();
  v74 = *(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_now + 8);
  v75 = *(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_now + 16);
  v76 = *(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_now + 24);
  v77 = *(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_now + 32);
  v78 = *(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_now + 40);
  *&v124 = *(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_now);
  BYTE8(v124) = v74;
  *&v125 = v75;
  BYTE8(v125) = v76;
  v126 = v77;
  v127 = v78;
  sub_222CE5CC8(v73, v79, v80);

  sub_222D51F0C();

  v81 = objc_opt_self();
  OUTLINED_FUNCTION_43_2();
  v82 = sub_222D5212C();
  *&v129 = 0;
  v83 = [v81 JSONObjectWithData:v82 options:4 error:&v129];

  v84 = v129;
  if (v83)
  {
    sub_222D52D6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v85 = v84;
    v86 = sub_222D5207C();

    swift_willThrow();
    v124 = 0u;
    v125 = 0u;
  }

  OUTLINED_FUNCTION_68_0();
  sub_222CE2B7C();
  if (v130)
  {
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_53;
    }

    v88 = v121;
    sub_222CE5C64(1935893875, 0xE400000000000000, v121, &v129);
    if (v130)
    {
      if (swift_dynamicCast())
      {
        v130 = MEMORY[0x277D839F8];
        *&v129 = v121;
        v89 = OUTLINED_FUNCTION_63_0();
        sub_222CE0BC0(v89, v90);
        swift_isUniquelyReferenced_nonNull_native();
        v123 = v88;
        sub_222CE0F5C(&v121, 1935893875, 0xE400000000000000);
        v91 = v123;

        sub_222CDC59C(&v124, &qword_27D03BDA8, &unk_222D55070);
        *&v124 = v91;
        *(&v125 + 1) = v87;

        goto LABEL_53;
      }
    }

    else
    {
      sub_222CDC59C(&v129, &qword_27D03BDA8, &unk_222D55070);
    }
  }

  else
  {
    sub_222CDC59C(&v129, &qword_27D03BDA8, &unk_222D55070);
  }

LABEL_53:
  OUTLINED_FUNCTION_68_0();
  sub_222CE2B7C();
  if (v130)
  {
    v92 = OUTLINED_FUNCTION_63_0();
    sub_222CE0BC0(v92, v93);
    swift_isUniquelyReferenced_nonNull_native();
    v123 = v34;
    sub_222CE0F5C(&v121, 7827310, 0xE300000000000000);
    v34 = v123;
  }

  else
  {
    sub_222CDC59C(&v129, &qword_27D03BDA8, &unk_222D55070);
    v94 = sub_222CE1050(7827310, 0xE300000000000000);
    if (v95)
    {
      v96 = v94;
      swift_isUniquelyReferenced_nonNull_native();
      v123 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C318, &qword_222D56100);
      sub_222D52E4C();
      v34 = v123;

      sub_222CE0BC0((*(v34 + 56) + 32 * v96), &v121);
      sub_222D52E6C();
    }

    else
    {
      v121 = 0u;
      v122 = 0u;
    }

    sub_222CDC59C(&v121, &qword_27D03BDA8, &unk_222D55070);
  }

  v97 = OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_deviceLocale;
  OUTLINED_FUNCTION_25(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_deviceLocale, &v123);
  (*(v114 + 16))(v113, v2 + v97, v115);
  v98 = sub_222D5217C();
  v100 = v99;
  v101 = OUTLINED_FUNCTION_25_4();
  v102(v101);
  v130 = MEMORY[0x277D837D0];
  *&v129 = v98;
  *(&v129 + 1) = v100;
  v103 = OUTLINED_FUNCTION_63_0();
  sub_222CE0BC0(v103, v104);
  swift_isUniquelyReferenced_nonNull_native();
  sub_222CE0F5C(&v121, 0x6F4C656369766564, 0xEC000000656C6163);
  v105 = OUTLINED_FUNCTION_43_2();
  sub_222CE6210(v105, v106);
  sub_222CDC59C(&v124, &qword_27D03BDA8, &unk_222D55070);
  if (!*(v34 + 16))
  {
  }

  OUTLINED_FUNCTION_74();
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 96) = result;
  *(v4 - 88) = a2;
  *(v4 - 80) = a3;
  *(v4 - 72) = a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_7(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_24_9()
{
}

void sub_222CE2920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t OUTLINED_FUNCTION_25_2()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_25_6()
{
  sub_222D45868(v0);

  return sub_222D45868(v1);
}

uint64_t OUTLINED_FUNCTION_25_8()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_9_2()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 136);
  v4 = *(v0 - 128);
  v5 = *(v0 - 120);

  sub_222CE2920(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_40()
{
}

uint64_t OUTLINED_FUNCTION_9_5@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;

  return sub_222D52F5C();
}

uint64_t OUTLINED_FUNCTION_9_7(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_9_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_9_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, __int128 a9, __n128 a11, uint64_t a12)
{
  *v12 = a9;
  result = a11;
  *(v12 + 16) = a11;
  *(v12 + 32) = a12;
  return result;
}

uint64_t sub_222CE2B7C()
{
  OUTLINED_FUNCTION_32_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_6();
  v4(v3);
  return v0;
}

void OUTLINED_FUNCTION_28_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;

  sub_222CE3060(a1, a2, a3, a4);
}

id OUTLINED_FUNCTION_28_1(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_28_3(uint64_t a1)
{

  return sub_222D52F1C();
}

uint64_t OUTLINED_FUNCTION_28_5(uint64_t a1)
{

  return sub_222D52E4C();
}

uint64_t OUTLINED_FUNCTION_28_6()
{

  return swift_beginAccess();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_222CE2D34(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 OUTLINED_FUNCTION_32()
{
  result = *(v0 - 208);
  v2 = *(v0 - 192);
  v3 = *(v0 - 216);
  *v3 = result;
  *(v3 + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_4()
{
}

uint64_t OUTLINED_FUNCTION_32_5(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_222D529DC();
}

void OUTLINED_FUNCTION_33(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v4 = *(v3 - 216);
  *v4 = a2;
  v4[1].n128_u64[0] = a1;
  v4[1].n128_u64[1] = v2;
}

uint64_t OUTLINED_FUNCTION_33_1()
{
}

uint64_t OUTLINED_FUNCTION_33_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_31_5(int a1, const char *a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return [v11 a2];
}

void *OUTLINED_FUNCTION_31_6(uint64_t a1, ...)
{

  return sub_222D5313C();
}

__n128 *OUTLINED_FUNCTION_21(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 - 168) = 0;
  *(v2 - 160) = 0xE000000000000000;
  return result;
}

void OUTLINED_FUNCTION_21_3(uint64_t a1)
{

  sub_222CFBFA4();
}

void sub_222CE3060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_222CE3120(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1)
{
  *(v2 - 176) = a1;
  *(v2 - 200) = v1;

  return sub_222D5210C();
}

uint64_t OUTLINED_FUNCTION_55_0()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_222D5222C();
}

uint64_t sub_222CE31E0(uint64_t a1)
{
  v3 = sub_222D5250C();
  OUTLINED_FUNCTION_113();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_45_2();
  (*(v5 + 16))(v1, a1, v3);
  v7 = OUTLINED_FUNCTION_112();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D61B60])
  {
    return 1701601645;
  }

  if (v9 == *MEMORY[0x277D61B68])
  {
    return 0x656C616D6566;
  }

  v10 = 0x6E776F6E6B6E75;
  if (v9 != *MEMORY[0x277D61B70])
  {
    v11 = OUTLINED_FUNCTION_112();
    v12(v11);
  }

  return v10;
}

uint64_t OUTLINED_FUNCTION_49_0()
{
}

uint64_t CATGlobals.Builder.init(siriLocale:)(uint64_t a1)
{
  v2 = v1;
  sub_222D5220C();
  OUTLINED_FUNCTION_113();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_5();
  v4 = sub_222D5215C();
  OUTLINED_FUNCTION_113();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_45_2();
  v8 = [objc_opt_self() preferredLanguages];
  v9 = sub_222D52B3C();

  if (*(v9 + 16))
  {
  }

  OUTLINED_FUNCTION_43_2();
  sub_222D5216C();
  v10 = (v1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_siriVoiceGender);
  *v10 = 0x6E776F6E6B6E75;
  v10[1] = 0xE700000000000000;
  *(v1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_isNetworkConnected) = 2;
  *(v1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_isMultiUserEnabled) = 0;
  *(v1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_requiresUserGrounding) = 0;
  *(v1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_randomSeed) = 0;
  *(v1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_currentTime) = 0;
  v11 = v1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_device;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_currentDevice) = 0;
  v12 = (v1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_companionName);
  *v12 = 0;
  v12[1] = 0;
  *(v1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_user) = 0;
  v13 = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_userSettings) = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_customPronunciations) = v13;
  v14 = v1 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_now;
  sub_222D5214C();
  sub_222D5213C();
  v16 = v15;
  (*(v6 + 8))(v1, v4);
  sub_222D521FC();
  v17 = sub_222D521EC();
  v19 = v18;
  v20 = OUTLINED_FUNCTION_25_4();
  v21(v20);
  *v14 = v16;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 1;
  *(v14 + 32) = v17;
  *(v14 + 40) = v19;
  v22 = OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_responseMode;
  v23 = sub_222D525AC();
  __swift_storeEnumTagSinglePayload(v2 + v22, 1, 1, v23);
  sub_222D5245C();
  sub_222D524FC();
  if (!sub_222D524DC() || (sub_222D524BC(), , v24 = sub_222D5278C(), v26 = v25, , !v26))
  {

    v24 = 0;
    v26 = 0xE000000000000000;
  }

  v27 = (v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_interactionId);
  *v27 = v24;
  v27[1] = v26;
  if (!sub_222D524DC() || (sub_222D524BC(), , v28 = sub_222D5275C(), v30 = v29, , !v30))
  {

    v28 = 0;
    v30 = 0xE000000000000000;
  }

  v31 = (v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_executionRequestId);
  *v31 = v28;
  v31[1] = v30;
  *(v2 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_dialogMetadata) = 0;
  v32 = OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_siriLocale;
  sub_222D521AC();
  OUTLINED_FUNCTION_34();
  (*(v33 + 32))(v2 + v32, a1);
  return v2;
}

void sub_222CE37D4()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_32_3();
  v3 = sub_222D527DC();
  v4 = OUTLINED_FUNCTION_52(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_36_5();
  sub_222D5250C();
  OUTLINED_FUNCTION_113();
  v21 = v6;
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_5();
  v9 = v8 - v7;
  v10 = sub_222D521AC();
  OUTLINED_FUNCTION_113();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_5();
  v16 = v15 - v14;
  v17 = *v1;
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_222D5226C();
  sub_222CE3AA0();
  (*(v12 + 8))(v16, v10);
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_222D522BC();
  v18 = sub_222CE31E0(v9);
  v20 = v19;
  (*(v21 + 8))(v9, v22);
  sub_222CE6518(v18, v20);

  OUTLINED_FUNCTION_55_0();
  LOBYTE(v18) = sub_222D527CC();
  sub_222CE195C(v2);
  *(v17 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_isMultiUserEnabled) = v18 & 1;
  OUTLINED_FUNCTION_55_0();
  LOBYTE(v18) = sub_222D527BC();
  sub_222CE195C(v2);
  *(v17 + OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_requiresUserGrounding) = v18 & 1;
  sub_222CE6588(v0);

  OUTLINED_FUNCTION_74();
}

uint64_t OUTLINED_FUNCTION_34_2(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *v11 = a1;

  return sub_222CE548C(v10, v9, va);
}

uint64_t sub_222CE3AC0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2(0);
  OUTLINED_FUNCTION_113();
  v6 = v5;
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_6();
  (*(v6 + 16))(v2, a1, v4);
  OUTLINED_FUNCTION_28_6();
  v8 = OUTLINED_FUNCTION_58_0();
  v9(v8);
  swift_endAccess();
}

void sub_222CE3BA4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_222CE3C10(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for CATResultProvider();
  sub_222CE3D68(a1, a2, a3);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C1B8, &qword_222D556D0);
    return sub_222D52B9C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C1B8, &qword_222D556D0);
    return sub_222D52BAC();
  }
}

uint64_t sub_222CE3CC4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C1B8, &qword_222D556D0);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return sub_222CE3C10(a1, v3, v4);
}

id sub_222CE3D68(void *a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_47_0();
  if (!v8 || (v9 = sub_222CE4BD8(a1, &selRef_status), !v10))
  {

    v11 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  if (v9 != v3 || v10 != 0xE700000000000000)
  {
LABEL_10:
    if ((sub_222D5305C() & 1) == 0)
    {
      if (a1 && (v17 = sub_222CE4BD8(a1, &selRef_error), v18))
      {
        v3 = v18;
      }

      else
      {

        v17 = OUTLINED_FUNCTION_32_1();
      }

      v14 = sub_222D0B314(v17, v3, v11, v12);

      return v14;
    }
  }

  v14 = [objc_allocWithZone(MEMORY[0x277D052B8]) init];
  v310 = a1;
  if (a1 && (v15 = sub_222CE4C38(a1)) != 0)
  {
    v16 = v15;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v19 = *(v16 + 16);
  if (!v19)
  {

    goto LABEL_154;
  }

  v308 = a2;
  v309 = a3;
  OUTLINED_FUNCTION_27_1();
  v314 = "Engine17CATResultProvider";
  v312 = v14;
  v313 = "unfilteredContent";
  v311 = "unfilteredCaption";
  v20 = 32;
  do
  {
    v21 = *(v16 + v20);
    if (!*(v21 + 16))
    {
      goto LABEL_29;
    }

    v22 = OUTLINED_FUNCTION_23_2();
    v24 = sub_222CE1050(v22, v23);
    if ((v25 & 1) == 0 || (v26 = sub_222CE4EC0(*(v21 + 56) + 32 * v24, &v317), OUTLINED_FUNCTION_4_4(v26, v27, v28, v29, v30, v31, v32, v33, v307, v308, v309, v310, v311, v312, v313, v314, v315), (swift_dynamicCast() & 1) == 0))
    {
LABEL_28:

      goto LABEL_29;
    }

    if (v315 == a3 && v316 == 0xE600000000000000)
    {
    }

    else
    {
      v35 = OUTLINED_FUNCTION_48_0(v315, v316, a3);

      if ((v35 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v36 = [objc_allocWithZone(MEMORY[0x277D052B0]) init];
    sub_222CE5C64(25705, 0xE200000000000000, v21, &v317);
    if (!v318)
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
LABEL_36:
      OUTLINED_FUNCTION_32_1();
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_4_4(v37, v38, v39, v40, v41, v42, v43, v44, v307, v308, v309, v310, v311, v312, v313, v314, v315);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_37:
    v45 = sub_222D528FC();

    [v36 setId_];

    v46 = OUTLINED_FUNCTION_17_2();
    sub_222CE5C64(v46, v47, v21, v48);
    if (v318)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      OUTLINED_FUNCTION_4_4(v49, v50, v51, v49, v52, v53, v54, v55, v307, v308, v309, v310, v311, v312, v313, v314, v315);
      if (swift_dynamicCast())
      {
        v56 = v315;
        goto LABEL_42;
      }
    }

    else
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
    }

    v56 = MEMORY[0x277D84F98];
LABEL_42:
    v57 = OUTLINED_FUNCTION_2_5();
    sub_222CE5C64(v57, v58, v56, v59);
    if (!v318)
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
LABEL_46:
      OUTLINED_FUNCTION_21_1();
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_4_4(v60, v61, v62, v63, v64, v65, v66, v67, v307, v308, v309, v310, v311, v312, v313, v314, v315);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_47:
    sub_222D528FC();
    v68 = OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_28_1(v68, sel_setFullPrint_);

    v69 = OUTLINED_FUNCTION_1_7();
    sub_222CE5C64(v69, v70, v56, v71);
    if (!v318)
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
LABEL_51:
      OUTLINED_FUNCTION_21_1();
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_4_4(v72, v73, v74, v75, v76, v77, v78, v79, v307, v308, v309, v310, v311, v312, v313, v314, v315);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_52:
    sub_222D528FC();
    v80 = OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_28_1(v80, sel_setFullSpeak_);

    v81 = OUTLINED_FUNCTION_3_5();
    sub_222CE5C64(v81, v4, v56, v82);
    if (!v318)
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
LABEL_56:
      OUTLINED_FUNCTION_21_1();
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_4_4(v83, v84, v85, v86, v87, v88, v89, v90, v307, v308, v309, v310, v311, v312, v313, v314, v315);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_56;
    }

LABEL_57:
    sub_222D528FC();
    v91 = OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_28_1(v91, sel_setRedactedFullPrint_);

    v92 = OUTLINED_FUNCTION_0_3();
    sub_222CE5C64(v92, v93, v56, v94);

    if (!v318)
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
LABEL_61:
      OUTLINED_FUNCTION_32_1();
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_4_4(v95, v96, v97, v98, v99, v100, v101, v102, v307, v308, v309, v310, v311, v312, v313, v314, v315);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_62:
    sub_222D528FC();
    v103 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_28_1(v103, sel_setRedactedFullSpeak_);

    v104 = OUTLINED_FUNCTION_6_4();
    sub_222CE5C64(v104, v105, v21, v106);
    v107 = v318;
    sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
    if (!v107)
    {
      goto LABEL_89;
    }

    v108 = OUTLINED_FUNCTION_6_4();
    sub_222CE5C64(v108, v109, v21, v110);
    if (v318)
    {
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      OUTLINED_FUNCTION_4_4(v111, v112, v113, v111, v114, v115, v116, v117, v307, v308, v309, v310, v311, v312, v313, v314, v315);
      if (swift_dynamicCast())
      {
        v118 = v315;
        goto LABEL_68;
      }
    }

    else
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
    }

    v118 = MEMORY[0x277D84F98];
LABEL_68:
    v119 = OUTLINED_FUNCTION_2_5();
    sub_222CE5C64(v119, v120, v118, v121);
    if (!v318)
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
LABEL_72:
      OUTLINED_FUNCTION_21_1();
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_4_4(v122, v123, v124, v125, v126, v127, v128, v129, v307, v308, v309, v310, v311, v312, v313, v314, v315);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_73:
    sub_222D528FC();
    v130 = OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_28_1(v130, sel_setSupportingPrint_);

    v131 = OUTLINED_FUNCTION_1_7();
    sub_222CE5C64(v131, v132, v118, v133);
    if (!v318)
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
LABEL_77:
      OUTLINED_FUNCTION_21_1();
      goto LABEL_78;
    }

    OUTLINED_FUNCTION_4_4(v134, v135, v136, v137, v138, v139, v140, v141, v307, v308, v309, v310, v311, v312, v313, v314, v315);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_77;
    }

LABEL_78:
    sub_222D528FC();
    v142 = OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_28_1(v142, sel_setSupportingSpeak_);

    v143 = OUTLINED_FUNCTION_3_5();
    sub_222CE5C64(v143, v4, v118, v144);
    if (!v318)
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
LABEL_82:
      OUTLINED_FUNCTION_21_1();
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_4_4(v145, v146, v147, v148, v149, v150, v151, v152, v307, v308, v309, v310, v311, v312, v313, v314, v315);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_82;
    }

LABEL_83:
    sub_222D528FC();
    v153 = OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_28_1(v153, sel_setRedactedSupportingPrint_);

    v154 = OUTLINED_FUNCTION_0_3();
    sub_222CE5C64(v154, v155, v118, v156);

    if (v318)
    {
      OUTLINED_FUNCTION_4_4(v157, v158, v159, v160, v161, v162, v163, v164, v307, v308, v309, v310, v311, v312, v313, v314, v315);
      if (swift_dynamicCast())
      {
        goto LABEL_88;
      }
    }

    else
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
    }

    OUTLINED_FUNCTION_32_1();
LABEL_88:
    sub_222D528FC();
    v165 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_28_1(v165, sel_setRedactedSupportingSpeak_);

LABEL_89:
    v166 = OUTLINED_FUNCTION_9_3();
    sub_222CE5C64(v166, v167, v21, v168);
    v169 = v318;
    sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
    if (!v169)
    {
      goto LABEL_116;
    }

    v170 = OUTLINED_FUNCTION_9_3();
    sub_222CE5C64(v170, v171, v21, v172);
    if (v318)
    {
      v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      OUTLINED_FUNCTION_4_4(v173, v174, v175, v173, v176, v177, v178, v179, v307, v308, v309, v310, v311, v312, v313, v314, v315);
      if (swift_dynamicCast())
      {
        v180 = v315;
        goto LABEL_95;
      }
    }

    else
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
    }

    v180 = MEMORY[0x277D84F98];
LABEL_95:
    v181 = OUTLINED_FUNCTION_2_5();
    sub_222CE5C64(v181, v182, v180, v183);
    if (!v318)
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
LABEL_99:
      OUTLINED_FUNCTION_21_1();
      goto LABEL_100;
    }

    OUTLINED_FUNCTION_4_4(v184, v185, v186, v187, v188, v189, v190, v191, v307, v308, v309, v310, v311, v312, v313, v314, v315);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_99;
    }

LABEL_100:
    sub_222D528FC();
    v192 = OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_28_1(v192, sel_setUnfilteredFullPrint_);

    v193 = OUTLINED_FUNCTION_1_7();
    sub_222CE5C64(v193, v194, v180, v195);
    if (!v318)
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
LABEL_104:
      OUTLINED_FUNCTION_21_1();
      goto LABEL_105;
    }

    OUTLINED_FUNCTION_4_4(v196, v197, v198, v199, v200, v201, v202, v203, v307, v308, v309, v310, v311, v312, v313, v314, v315);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_104;
    }

LABEL_105:
    sub_222D528FC();
    v204 = OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_28_1(v204, sel_setUnfilteredFullSpeak_);

    v205 = OUTLINED_FUNCTION_3_5();
    sub_222CE5C64(v205, v4, v180, v206);
    if (!v318)
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
LABEL_109:
      OUTLINED_FUNCTION_21_1();
      goto LABEL_110;
    }

    OUTLINED_FUNCTION_4_4(v207, v208, v209, v210, v211, v212, v213, v214, v307, v308, v309, v310, v311, v312, v313, v314, v315);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_109;
    }

LABEL_110:
    sub_222D528FC();
    v215 = OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_28_1(v215, sel_setUnfilteredRedactedFullPrint_);

    v216 = OUTLINED_FUNCTION_0_3();
    sub_222CE5C64(v216, v217, v180, v218);

    if (v318)
    {
      OUTLINED_FUNCTION_4_4(v219, v220, v221, v222, v223, v224, v225, v226, v307, v308, v309, v310, v311, v312, v313, v314, v315);
      if (swift_dynamicCast())
      {
        goto LABEL_115;
      }
    }

    else
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
    }

    OUTLINED_FUNCTION_32_1();
LABEL_115:
    sub_222D528FC();
    v227 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_28_1(v227, sel_setUnfilteredRedactedFullSpeak_);

LABEL_116:
    v228 = OUTLINED_FUNCTION_9_3();
    sub_222CE5C64(v228, v229, v21, v230);
    v231 = v318;
    sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
    if (!v231)
    {
      goto LABEL_133;
    }

    v232 = OUTLINED_FUNCTION_9_3();
    sub_222CE5C64(v232, v233, v21, v234);
    if (v318)
    {
      v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      OUTLINED_FUNCTION_4_4(v235, v236, v237, v235, v238, v239, v240, v241, v307, v308, v309, v310, v311, v312, v313, v314, v315);
      if (swift_dynamicCast())
      {
        v242 = v315;
        goto LABEL_122;
      }
    }

    else
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
    }

    v242 = MEMORY[0x277D84F98];
LABEL_122:
    v243 = OUTLINED_FUNCTION_2_5();
    sub_222CE5C64(v243, v244, v242, v245);
    if (!v318)
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
LABEL_126:
      OUTLINED_FUNCTION_21_1();
      goto LABEL_127;
    }

    OUTLINED_FUNCTION_4_4(v246, v247, v248, v249, v250, v251, v252, v253, v307, v308, v309, v310, v311, v312, v313, v314, v315);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_126;
    }

LABEL_127:
    sub_222D528FC();
    v254 = OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_28_1(v254, sel_setUnfilteredSupportingPrint_);

    v255 = OUTLINED_FUNCTION_1_7();
    sub_222CE5C64(v255, v256, v242, v257);

    if (v318)
    {
      OUTLINED_FUNCTION_4_4(v258, v259, v260, v261, v262, v263, v264, v265, v307, v308, v309, v310, v311, v312, v313, v314, v315);
      if (swift_dynamicCast())
      {
        goto LABEL_132;
      }
    }

    else
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
    }

    OUTLINED_FUNCTION_32_1();
LABEL_132:
    sub_222D528FC();
    v266 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_28_1(v266, sel_setUnfilteredSupportingSpeak_);

LABEL_133:
    v267 = OUTLINED_FUNCTION_11_2();
    sub_222CE5C64(v267, v268, v21, v269);
    if (v318)
    {
      OUTLINED_FUNCTION_4_4(v270, v271, v272, v273, v274, v275, v276, v277, v307, v308, v309, v310, v311, v312, v313, v314, v315);
      if (swift_dynamicCast())
      {
        v278 = v315;
        goto LABEL_138;
      }
    }

    else
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
    }

    v278 = 0;
LABEL_138:
    [v36 setPrintOnly_];
    v279 = OUTLINED_FUNCTION_10_1();
    sub_222CE5C64(v279, v280, v21, v281);
    if (v318)
    {
      OUTLINED_FUNCTION_4_4(v282, v283, v284, v285, v286, v287, v288, v289, v307, v308, v309, v310, v311, v312, v313, v314, v315);
      if (swift_dynamicCast())
      {
        v290 = v315;
        v291 = 1;
        goto LABEL_143;
      }
    }

    else
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
    }

    v290 = 0;
    v291 = 0;
LABEL_143:
    [v36 setSpokenOnly_];
    [v36 setSpokenOnlyDefined_];
    sub_222CE5C64(0xD000000000000014, v311 | 0x8000000000000000, v21, &v317);

    if (!v318)
    {
      sub_222CDC59C(&v317, &qword_27D03BDA8, &unk_222D55070);
LABEL_147:
      v300 = 0;
      goto LABEL_148;
    }

    OUTLINED_FUNCTION_4_4(v292, v293, v294, v295, v296, v297, v298, v299, v307, v308, v309, v310, v311, v312, v313, v314, v315);
    if (!swift_dynamicCast())
    {
      goto LABEL_147;
    }

    v300 = v315;
LABEL_148:
    [v36 setIsApprovedForGrading_];
    v301 = v36;
    v4 = v312;
    v302 = [v312 dialog];
    sub_222CEE364(0, &qword_280D3B148, 0x277D052B0);
    OUTLINED_FUNCTION_46_0();
    a3 = sub_222D52B3C();

    *&v317 = a3;
    MEMORY[0x223DCB5F0]();
    if (*((v317 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v317 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_222D52B5C();
    }

    sub_222D52B7C();
    OUTLINED_FUNCTION_46_0();
    v303 = sub_222D52B2C();

    [v312 setDialog_];

    OUTLINED_FUNCTION_27_1();
LABEL_29:
    v20 += 8;
    --v19;
  }

  while (v19);

  v14 = v312;
LABEL_154:
  if (!v310 || !sub_222CEE3A4(v310))
  {
    sub_222D528BC();
  }

  v304 = sub_222D5288C();

  [v14 setMeta_];

  v305 = sub_222D528FC();
  OUTLINED_FUNCTION_29_1(v305, sel_setCatId_);

  return v14;
}

uint64_t sub_222CE4BD8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_222D5292C();

  return v4;
}

uint64_t sub_222CE4C38(void *a1)
{
  v1 = [a1 response];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  v3 = sub_222D52B3C();

  return v3;
}

uint64_t OUTLINED_FUNCTION_10_3@<X0>(char a2@<W8>)
{
  *(v2 - 96) = a2;

  return sub_222D52FEC();
}

uint64_t OUTLINED_FUNCTION_10_4()
{
}

unint64_t OUTLINED_FUNCTION_10_8()
{

  return sub_222CE1050(v0, v1);
}

uint64_t OUTLINED_FUNCTION_10_9()
{

  return sub_222D52EAC();
}

uint64_t sub_222CE4EC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_2@<X0>(char a2@<W8>)
{
  *(v2 - 96) = a2;

  return sub_222D52FEC();
}

uint64_t OUTLINED_FUNCTION_4_5(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_13()
{
  v2 = v0[2];
  *(v1 - 104) = v0[3];
  *(v1 - 96) = v2;
  v3 = v0[4];
  *(v1 - 120) = v0[5];
  *(v1 - 112) = v3;
  v4 = v0[6];
  *(v1 - 136) = v0[7];
  *(v1 - 128) = v4;
}

uint64_t OUTLINED_FUNCTION_4_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_4_21()
{

  return sub_222D5305C();
}

uint64_t sub_222CE5184()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2_20();
  v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_5_5();
  *v6 = v5;
  *(v4 + 184) = v1;

  if (v1)
  {
    sub_222CDD130(v4 + 56, &qword_27D03C020, &unk_222D54A80);

    v7 = sub_222D3E218;
  }

  else
  {
    *(v4 + 192) = v0;
    sub_222CDD130(v4 + 56, &qword_27D03C020, &unk_222D54A80);

    v7 = sub_222CED750;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_222CE52DC()
{
  OUTLINED_FUNCTION_14_2();
  v2 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v5 = v4;
  *(v2 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_222CE53E8()
{
  OUTLINED_FUNCTION_14_2();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_222CE548C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_23();
  v9 = sub_222CE5724(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_222CE4EC0(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v10;
}

uint64_t sub_222CE5550(uint64_t a1, unint64_t a2)
{
  v3 = sub_222CE559C(a1, a2);
  sub_222CE5824(&unk_283618F30);
  return v3;
}

uint64_t sub_222CE559C(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_222D52A3C())
  {
    result = sub_222CE56B4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_222D52D9C();
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
          result = sub_222D52E2C();
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

void *sub_222CE56B4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDC0, &qword_222D54B10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_222CE5724(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_222CE5550(a5, a6);
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
    result = sub_222D52E2C();
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

uint64_t sub_222CE5824(uint64_t result)
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

    result = sub_222D109E4(result, v7, 1, v3);
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

_OWORD *sub_222CE5908(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_222CE0BC0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t SirikitDeviceState.__deallocating_deinit()
{
  SirikitDeviceState.deinit();
  v0 = OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t SirikitDeviceState.deinit()
{
  sub_222CE2920(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_222CE2920(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_222CE2920(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  sub_222CE2920(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));
  sub_222CE2920(*(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200));
  sub_222CE2920(*(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));
  sub_222CE2920(*(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264));
  sub_222CE2920(*(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296));
  sub_222CE2920(*(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328));

  return v0;
}

uint64_t SirikitDeviceRestrictions.__deallocating_deinit()
{
  v1 = OUTLINED_FUNCTION_1_8();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_1_2(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_222D5280C(a1, a2, 2, a4, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t result)
{
  v3[4] = v1;
  v3[5] = v4;
  v3[12] = v2;
  v3[13] = result;
  v3[8] = result;
  v3[9] = 0x6C62616B61657053;
  v3[10] = 0xEF676E6972745365;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_6@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{

  return sub_222D0A25C(a1, v3, v2, a2);
}

id OUTLINED_FUNCTION_1_10(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_1_17(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_222CE6C78(a1, a2, a3, 2, 0, 0);
}

uint64_t OUTLINED_FUNCTION_1_22@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return sub_222D4D814(a1, a2, a3);
}

double sub_222CE5C64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_222CE1050(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_222CE4EC0(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

unint64_t sub_222CE5CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280D3DB58;
  if (!qword_280D3DB58)
  {
    result = swift_getWitnessTable(aYN, &type metadata for Now, a3, v3, v4);
    atomic_store(result, &qword_280D3DB58);
  }

  return result;
}

uint64_t sub_222CE5D1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C4C0, &qword_222D57128);
  OUTLINED_FUNCTION_113();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v4);
  v6 = &v11[-v5];
  v7 = OUTLINED_FUNCTION_48_2();
  sub_222CE5F34(v7, v8, v9);
  OUTLINED_FUNCTION_47_2();
  sub_222D531AC();
  v11[15] = 0;
  OUTLINED_FUNCTION_34_4();
  sub_222D52FAC();
  if (!v0)
  {
    OUTLINED_FUNCTION_62_0();
    OUTLINED_FUNCTION_34_4();
    sub_222D52FAC();
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_34_4();
    sub_222D52F8C();
  }

  return (*(v3 + 8))(v6, v1);
}

uint64_t OUTLINED_FUNCTION_44_0(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_43(uint64_t result)
{
  v2[4] = v3;
  v2[5] = v4;
  v2[12] = v1;
  v2[13] = result;
  v2[8] = result;
  v2[9] = 0x656C62756F44;
  v2[10] = 0xE600000000000000;
  return result;
}

unint64_t sub_222CE5F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280D3DB70;
  if (!qword_280D3DB70)
  {
    result = swift_getWitnessTable(aCn0, &type metadata for Now.CodingKeys, a3, v3, v4);
    atomic_store(result, &qword_280D3DB70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_30(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_222D5280C(a1, 56, 2, a4, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_30_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + 32 * a1;

  return sub_222CE4EC0(v4, v2 - 128);
}

uint64_t OUTLINED_FUNCTION_30_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_30_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_222D5318C();
}

_BYTE *storeEnumTagSinglePayload for Now.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x222CE6114);
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

uint64_t sub_222CE6148(char a1)
{
  if (!a1)
  {
    return 1935893875;
  }

  if (a1 == 1)
  {
    return 0x657366664F637475;
  }

  return 0x656E6F5A656D6974;
}

uint64_t OUTLINED_FUNCTION_58@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  *(v4 - 240) = a3;
  *(v4 - 232) = result;
  *(v4 - 224) = a2;
  *(v4 - 216) = a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_57()
{

  return sub_222D013F4();
}

uint64_t sub_222CE6210(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_222CE6268()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 siriResponseShouldAlwaysPrint];

  if ((v1 & 1) == 0)
  {
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280D3DB78);
    }

    v4 = qword_280D3DB80;
    v5 = sub_222D52C1C();
    sub_222D5280C("getAlwaysDisplayDialogFromSystem: User setting is false -> return false", 71, 2, &dword_222CDA000, v4, v5, MEMORY[0x277D84F90]);
    return 0;
  }

  if (AFDeviceSupportsSystemAssistantExperience())
  {
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280D3DB78);
    }

    v2 = qword_280D3DB80;
    v3 = sub_222D52C1C();
    sub_222D5280C("getAlwaysDisplayDialogFromSystem: SAE is true -> return false", 61, 2, &dword_222CDA000, v2, v3, MEMORY[0x277D84F90]);
    return 0;
  }

  if (qword_280D3DB78 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280D3DB78);
  }

  v7 = qword_280D3DB80;
  v8 = sub_222D52C1C();
  sub_222D5280C("getAlwaysDisplayDialogFromSystem: User setting is true and SAE is false -> return true", 86, 2, &dword_222CDA000, v7, v8, MEMORY[0x277D84F90]);
  return 1;
}

uint64_t OUTLINED_FUNCTION_26_0(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_222D5280C(a1, 56, 2, a4, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_26_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17)
{

  return sub_222D249C4(v17, a13, a14, a15, a17);
}

_OWORD *OUTLINED_FUNCTION_26_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return sub_222CE0BC0(&a14, &a11);
}

uint64_t sub_222CE64A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C438, &unk_222D56DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222CE6524(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_69_0(a1, a2, *a3);
}

uint64_t sub_222CE6588(uint64_t a1)
{
  sub_222CE3120(a1, v2);
  swift_beginAccess();
  sub_222CE65FC();
  swift_endAccess();
}

uint64_t sub_222CE65FC()
{
  OUTLINED_FUNCTION_32_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_6();
  v4(v3);
  return v0;
}

uint64_t sub_222CE6654(uint64_t a1)
{
  OUTLINED_FUNCTION_56_0(a1, OBJC_IVAR____TtCC16SiriDialogEngine10CATGlobals7Builder_currentDevice);
}

uint64_t OUTLINED_FUNCTION_54_0(uint64_t a1)
{

  return sub_222D5305C();
}

uint64_t sub_222CE66DC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222CE6724(char a1)
{
  sub_222D5270C();
  OUTLINED_FUNCTION_113();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_36_5();
  v3 = OUTLINED_FUNCTION_57_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_31_4();
  v7 = v6(v5);
  if (v7 == *MEMORY[0x277D61DD8])
  {
    v8 = 0xE800000000000000;
    v9 = 0x6E776F6E6B6E752ELL;
  }

  else if (v7 == *MEMORY[0x277D61DD0])
  {
    v8 = 0xEC000000656C6261;
    v9 = 0x6C696176616E752ELL;
  }

  else if (v7 == *MEMORY[0x277D61DE0])
  {
    v8 = 0xEA0000000000656CLL;
    v9 = 0x62616C696176612ELL;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_31_4();
    v11(v10);
    v8 = 0xE700000000000000;
    v9 = 0x64696C61766E69;
  }

  v12 = 1702195828;
  if ((a1 & 1) == 0)
  {
    v12 = 0x65736C6166;
  }

  v13 = 7104878;
  if (a1 != 2)
  {
    v13 = v12;
  }

  v15 = v13;
  MEMORY[0x223DCB4F0](10272, 0xE200000000000000);
  MEMORY[0x223DCB4F0](v9, v8);

  MEMORY[0x223DCB4F0](41, 0xE100000000000000);
  return v15;
}

uint64_t sub_222CE6928@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_222D525AC();
  OUTLINED_FUNCTION_113();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_5();
  sub_222D524FC();
  if (sub_222D524DC())
  {
    sub_222D524BC();

    sub_222D5276C();

    v4 = OUTLINED_FUNCTION_57_0();
    v5(v4);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }
}

uint64_t sub_222CE6A60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C440, &unk_222D56DF0);
  OUTLINED_FUNCTION_52(v1);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_13_6();
  v3 = sub_222D525AC();
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_25_4();
  v5(v4);
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v3);
  swift_beginAccess();
  sub_222CE65FC();
  swift_endAccess();
}

uint64_t SirikitDeviceState.__allocating_init(currentDevice:deviceState:unlockPolicy:isNetworkConnected:companionName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_222CE6C78(a1, a2, a3, a4, a5, a6);

  OUTLINED_FUNCTION_2_17();
  v10 = v9(v8);

  sub_222D5246C();
  OUTLINED_FUNCTION_3_6();
  (*(v11 + 8))(a3);
  sub_222CDD130(a2, &qword_27D03C438, &unk_222D56DE0);
  return v10;
}

uint64_t sub_222CE6C78(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for SirikitDeviceState.Builder();
  swift_allocObject();
  v12 = SirikitDeviceState.Builder.init()();
  v17 = v12;
  sub_222CE64A8(a2, &v14);
  if (v15)
  {
    sub_222CE2D34(&v14, v16);

    sub_222CE6E80(&v17, v16, a3);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_222CDD130(&v14, &qword_27D03C438, &unk_222D56DE0);
  if (a1)
  {
LABEL_3:

    sub_222CEF7E4(&v17, a1);
  }

LABEL_4:
  if (a4 != 2)
  {
    (*(*v12 + 1120))(a4 & 1);
  }

  if (a6)
  {
    (*(*v12 + 1232))(a5, a6, 0, 0);
  }

  return v12;
}

uint64_t SirikitDeviceState.Builder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  bzero((v0 + 40), 0x128uLL);
  return v0;
}

uint64_t sub_222CE6E80(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = sub_222D521AC();
  v98 = *(v5 - 8);
  v99 = v5;
  MEMORY[0x28223BE20](v5);
  v97 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222D5250C();
  v95 = *(v7 - 8);
  v96 = v7;
  MEMORY[0x28223BE20](v7);
  v94 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222D527DC();
  MEMORY[0x28223BE20](v9 - 8);
  v90 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222D5255C();
  v92 = *(v11 - 8);
  v93 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_222D526EC();
  v14 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v18 = sub_222D5235C();
  v19 = (*(*v17 + 992))(v18 & 1);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v20 = sub_222D5232C();
  v21 = (*(*v19 + 1000))(v20 & 1);

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v22 = sub_222D522FC();
  v23 = (*(*v21 + 1008))(v22 & 1);

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v24 = sub_222D5233C();
  v25 = (*(*v23 + 1016))(v24 & 1);

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v26 = sub_222D5231C();
  v27 = (*(*v25 + 1024))(v26 & 1);

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v28 = sub_222D5230C();
  v29 = (*(*v27 + 1032))(v28 & 1);

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v30 = sub_222D5225C();
  v31 = (*(*v29 + 1040))(v30 & 1);

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v32 = sub_222D5234C();
  v33 = (*(*v31 + 1048))(v32 & 1);

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v34 = sub_222D5228C();
  v35 = (*(*v33 + 1056))(v34 & 1);

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v36 = sub_222D5224C();
  v37 = (*(*v35 + 1064))(v36 & 1);

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v38 = sub_222D522CC();
  v39 = (*(*v37 + 1072))(v38 & 1);

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v40 = sub_222D522AC();
  v41 = (*(*v39 + 1080))((v40 & 1) == 0);

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v42 = sub_222D522AC();
  v43 = (*(*v41 + 1088))(v42 & 1);

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v44 = sub_222D5223C();
  v45 = (*(*v43 + 1096))(v44 & 1);

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v46 = sub_222D522DC();
  v47 = (*(*v45 + 1104))(v46 & 1);

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v48 = sub_222D5236C();
  v49 = (*(*v47 + 1112))(v48 & 1);

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_222D5229C();
  v50 = sub_222D526DC();
  v52 = v51;
  (*(v14 + 8))(v16, v91);
  v100 = v50;
  v101 = v52;
  v102 = v50;
  v103 = v52;
  v53 = *(*v49 + 1128);

  v54 = v53(&v100);

  sub_222CE2920(v100, v101, v102, v103);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_222D5227C();
  v55 = sub_222D5254C();
  v57 = v56;
  (*(v92 + 8))(v13, v93);
  v100 = v55;
  v101 = v57;
  v102 = v55;
  v103 = v57;
  v58 = *(*v54 + 1144);

  v59 = v58(&v100);

  sub_222CE2920(v100, v101, v102, v103);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v60 = v90;
  sub_222D5222C();
  LOBYTE(v55) = sub_222D527CC();
  sub_222CE195C(v60);
  v61 = 0x64656C6261736964;
  if (v55)
  {
    v61 = 0x64656C62616E65;
    v62 = 0xE700000000000000;
  }

  else
  {
    v62 = 0xE800000000000000;
  }

  v100 = v61;
  v101 = v62;
  v102 = v61;
  v103 = v62;
  v63 = *(*v59 + 1160);

  v64 = v63(&v100);

  sub_222CE2920(v100, v101, v102, v103);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v65 = v94;
  sub_222D522BC();
  v66 = sub_222CE31E0(v65);
  v68 = v67;
  (*(v95 + 8))(v65, v96);
  v100 = v66;
  v101 = v68;
  v102 = v66;
  v103 = v68;
  v69 = *(*v64 + 1176);

  v70 = v69(&v100);

  sub_222CE2920(v100, v101, v102, v103);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v71 = sub_222D5221C();
  v73 = 0xE000000000000000;
  if (v72)
  {
    v73 = v72;
    v74 = v71;
  }

  else
  {
    v74 = 0;
  }

  v100 = v74;
  v101 = v73;
  v102 = v74;
  v103 = v73;
  v75 = *(*v70 + 1192);

  v76 = v75(&v100);

  sub_222CE2920(v100, v101, v102, v103);
  v100 = sub_222CE87A4(a2);
  v101 = v77;
  v102 = v100;
  v103 = v77;
  v78 = *(*v76 + 1208);

  v79 = v78(&v100);

  sub_222CE2920(v100, v101, v102, v103);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v80 = v97;
  sub_222D5226C();
  v81 = sub_222D5217C();
  v83 = v82;
  (*(v98 + 8))(v80, v99);
  v100 = v81;
  v101 = v83;
  v102 = v81;
  v103 = v83;
  v84 = *(*v79 + 1240);

  v85 = v84(&v100);

  sub_222CE2920(v100, v101, v102, v103);
  v86 = sub_222CF0418(a2);
  (*(*v85 + 1272))(v86);

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v87 = sub_222D522EC();
  (*(*v17 + 984))(v87 & 1);
}

uint64_t sub_222CE7D44(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 17, a2);
  *(v2 + 17) = a1;
}

uint64_t sub_222CE7D80(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 18, a2);
  *(v2 + 18) = a1;
}

uint64_t sub_222CE7DBC(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 19, a2);
  *(v2 + 19) = a1;
}

uint64_t sub_222CE7DF8(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 20, a2);
  *(v2 + 20) = a1;
}

uint64_t sub_222CE7E34(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 22, a2);
  *(v2 + 22) = a1;
}

uint64_t sub_222CE7E70(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 23, a2);
  *(v2 + 23) = a1;
}

uint64_t sub_222CE7EAC(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 31, a2);
  *(v2 + 31) = a1;
}

void sub_222CE7EE8()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 5), v5);
  v1[5] = v0;
  v1[6] = v2;
  v1[7] = v3;
  v1[8] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222CE7F40()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 9), v5);
  v1[9] = v0;
  v1[10] = v2;
  v1[11] = v3;
  v1[12] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t OUTLINED_FUNCTION_41(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_41_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_41_3(uint64_t a1)
{

  return sub_222D5282C();
}

uint64_t sub_222CE804C(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 21, a2);
  *(v2 + 21) = a1;
}

uint64_t sub_222CE8088(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 24, a2);
  *(v2 + 24) = a1;
}

uint64_t sub_222CE80C4(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 25, a2);
  *(v2 + 25) = a1;
}

uint64_t sub_222CE8100(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 26, a2);
  *(v2 + 26) = a1;
}

uint64_t sub_222CE813C(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 27, a2);
  *(v2 + 27) = a1;
}

uint64_t sub_222CE8178(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 28, a2);
  *(v2 + 28) = a1;
}

uint64_t sub_222CE81B4(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 29, a2);
  *(v2 + 29) = a1;
}

uint64_t sub_222CE81F0(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 30, a2);
  *(v2 + 30) = a1;
}

uint64_t sub_222CE822C(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 32, a2);
  *(v2 + 32) = a1;
}

uint64_t sub_222CE829C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C3C0, &qword_222D56790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222D56DC0;
  *(inited + 32) = 0x656C61636F6CLL;
  *(inited + 40) = 0xE600000000000000;
  v3 = sub_222D5217C();
  v4 = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  *(inited + 72) = v4;
  *(inited + 80) = 0x7265646E6567;
  *(inited + 88) = 0xE600000000000000;
  v6 = *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_siriVoiceGender + 8);
  *(inited + 96) = *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_siriVoiceGender);
  *(inited + 104) = v6;
  *(inited + 120) = v4;
  strcpy((inited + 128), "interactionId");
  *(inited + 142) = -4864;
  v7 = *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_interactionId + 8);
  *(inited + 144) = *(v1 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_interactionId);
  *(inited + 152) = v7;
  OUTLINED_FUNCTION_30_4();
  *(inited + 168) = v4;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = v8;
  v9 = *(v1 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_executionRequestId + 8);
  *(inited + 192) = *(v1 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_executionRequestId);
  *(inited + 200) = v9;
  *(inited + 216) = v4;
  *(inited + 224) = 0x65737569746C756DLL;
  *(inited + 232) = 0xE900000000000072;
  v10 = MEMORY[0x277D839B0];
  *(inited + 240) = *(v1 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_isMultiUserEnabled);
  *(inited + 264) = v10;
  *(inited + 272) = 0x6E69646E756F7267;
  *(inited + 280) = 0xE900000000000067;
  *(inited + 288) = *(v1 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_requiresUserGrounding);
  *(inited + 312) = v10;
  *(inited + 320) = 0x65536D6F646E6172;
  *(inited + 328) = 0xEA00000000006465;
  v11 = MEMORY[0x277D84CC0];
  *(inited + 336) = *(v1 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_randomSeed);
  *(inited + 360) = v11;
  *(inited + 368) = 0x54746E6572727563;
  *(inited + 376) = 0xEB00000000656D69;
  v12 = *(v1 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_currentTime);
  *(inited + 408) = MEMORY[0x277D83B88];
  *(inited + 384) = v12;

  v20 = sub_222D528BC();
  v21 = *(v1 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_dialogMetadata);
  if (v21 && *(v21 + 16))
  {
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C130, &qword_222D55008);
    *&v103 = v21;
    OUTLINED_FUNCTION_26_4(v105, v22, v23, v24, v25, v26, v27, v28, v89, v94, v100, v101, v102, v103);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_4();
    v35 = OUTLINED_FUNCTION_14_5(v29, 0x654D676F6C616964, 0xEE00617461646174, v30, v31, v32, v33, v34, v90, v95, v100);
    sub_222CE0F5C(v35, v36, v37);
    v20 = v94;
  }

  sub_222CE12C4(v1 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_responseMode, v13, v14, v15, v16, v17, v18, v19, v89, v94, v100, *(&v100 + 1), v101, v102, v103, *(&v103 + 1), v104, v105, v106[0], v106[1]);
  if (v39)
  {
    v105 = v4;
    *&v103 = v38;
    *(&v103 + 1) = v39;
    OUTLINED_FUNCTION_26_4(v38, v39, v40, v41, v42, v43, v44, v45, v91, v96, v100, v101, v102, v103);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_4();
    v52 = OUTLINED_FUNCTION_14_5(v46, 0x65736E6F70736572, 0xEC00000065646F4DLL, v47, v48, v49, v50, v51, v92, v97, v100);
    sub_222CE0F5C(v52, v53, v54);
    v20 = v96;
  }

  v55 = *(v1 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_globalParameters);
  if (v55)
  {
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
    *&v103 = v55;
    OUTLINED_FUNCTION_26_4(v105, v56, v57, v58, v59, v60, v61, v62, v91, v96, v100, v101, v102, v103);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_4();
    sub_222CE0F5C(&v100, 0xD000000000000010, 0x8000000222D59C60);
    v20 = v96;
  }

  v63 = *(v1 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_userSettings);
  if (v63)
  {
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
    *&v103 = v63;
    OUTLINED_FUNCTION_26_4(v105, v64, v65, v66, v67, v68, v69, v70, v91, v96, v100, v101, v102, v103);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_4();
    v77 = OUTLINED_FUNCTION_14_5(v71, 0x7474655372657375, 0xEC00000073676E69, v72, v73, v74, v75, v76, v93, v98, v100);
    sub_222CE0F5C(v77, v78, v79);
    v20 = v96;
  }

  v80 = *(v1 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_customPronunciations);
  if (v80)
  {
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C130, &qword_222D55008);
    *&v103 = v80;
    OUTLINED_FUNCTION_26_4(v105, v81, v82, v83, v84, v85, v86, v87, v91, v96, v100, v101, v102, v103);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_4();
    sub_222CE0F5C(&v100, 0xD000000000000014, 0x8000000222D59C40);
    return v99;
  }

  return v20;
}

void sub_222CE86F4()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 17), v5);
  v1[17] = v0;
  v1[18] = v2;
  v1[19] = v3;
  v1[20] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222CE874C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 21), v5);
  v1[21] = v0;
  v1[22] = v2;
  v1[23] = v3;
  v1[24] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t sub_222CE87A4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_222D5235C())
  {
    return 0x646F70656D6F68;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_222D5232C())
  {
    return 0x61775F656C707061;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_222D522FC())
  {
    return 6513005;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_222D5233C())
  {
    return 0x76745F656C707061;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_222D5225C())
  {
    return 0x5F7974696C616572;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_222D5231C())
  {
    return 0x656E6F687069;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_222D5230C())
  {
    return 1684107369;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_222D5234C())
  {
    return 0x79616C705F726163;
  }

  else
  {
    return 0x746375646F7270;
  }
}

void sub_222CE89C0()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 33), v5);
  v1[33] = v0;
  v1[34] = v2;
  v1[35] = v3;
  v1[36] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222CE8A18()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 13), v5);
  v1[13] = v0;
  v1[14] = v2;
  v1[15] = v3;
  v1[16] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222CE8AA4()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 25), v5);
  v1[25] = v0;
  v1[26] = v2;
  v1[27] = v3;
  v1[28] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222CE8B08(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_222D528FC();

  [a3 *a4];
}

void sub_222CE8D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = v7[5];
  v13 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v14);
  v15 = objc_allocWithZone(type metadata accessor for CATParamsWrapper());
  *&v15[OBJC_IVAR____TtC16SiriDialogEngineP33_0765C0C49696B08FD742D29DC8B43ED916CATParamsWrapper_mCatParams] = a7;
  v16 = a7;
  v17 = CATCallbackParams.init(fromParams:)(0);
  (*(v13 + 16))(a1, a2, a3, a4, a5, a6, v17, v14, v13);
}

id CATCallbackParams.init(fromParams:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC16SiriDialogEngine17CATCallbackParams_params] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CATCallbackParams();
  return objc_msgSendSuper2(&v3, sel_init);
}

double sub_222CE8EB4@<D0>(const char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (qword_280D3DB78 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280D3DB78);
  }

  sub_222D52C2C();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_222D53960;
  v13 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v16 = sub_222CDDCB0(v12, v14, v15);
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 96) = v13;
  *(v12 + 104) = v16;
  *(v12 + 64) = v16;
  *(v12 + 72) = a3;
  *(v12 + 80) = a4;
  *(v12 + 136) = v13;
  *(v12 + 144) = v16;
  *(v12 + 112) = a5;
  *(v12 + 120) = a6;

  OUTLINED_FUNCTION_2_2();
  sub_222D5280C(v17);

  sub_222CE9140(a1, a2, &v27);
  if (v28)
  {
    sub_222CE0BC0(&v27, v29);
    sub_222D52C4C();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_222D53970;
    *(v18 + 56) = v13;
    *(v18 + 64) = v16;
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;

    sub_222D52E3C();
    v19 = v27;
    *(v18 + 96) = v13;
    *(v18 + 104) = v16;
    *(v18 + 72) = v19;
    OUTLINED_FUNCTION_2_2();
    sub_222D5280C(v20);

    sub_222CEB86C(v29, a7);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    sub_222CDC53C(&v27, &qword_27D03BDA8, &unk_222D55070);
    sub_222D52C4C();
    v22 = OUTLINED_FUNCTION_3_0(v25);
    *(v22 + 16) = xmmword_222D53980;
    *(v22 + 56) = v13;
    *(v22 + 64) = v16;
    *(v22 + 32) = a1;
    *(v22 + 40) = a2;

    OUTLINED_FUNCTION_2_2();
    sub_222D5280C(v23);

    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
  }

  return result;
}

_OWORD *sub_222CE9140@<X0>(const char *a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v80[0] = 46;
  v80[1] = 0xE100000000000000;
  v73 = v80;

  v6 = sub_222CE98B4(0x7FFFFFFFFFFFFFFFLL, 1, sub_222CE9D88, v72, a1, a2, v5);
  v7 = *(v6 + 2);
  if (v7)
  {
    v70 = a2;
    v8 = a1;
    v80[0] = MEMORY[0x277D84F90];
    sub_222CEA040(0, v7, 0);
    v9 = v80[0];
    v10 = v6 + 56;
    do
    {

      v11 = OUTLINED_FUNCTION_6();
      v12 = MEMORY[0x223DCB480](v11);
      v14 = v13;

      v80[0] = v9;
      v16 = v9[2];
      v15 = v9[3];
      if (v16 >= v15 >> 1)
      {
        sub_222CEA040((v15 > 1), v16 + 1, 1);
        v9 = v80[0];
      }

      v9[2] = v16 + 1;
      v17 = &v9[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
      v10 += 32;
      --v7;
    }

    while (v7);

    a1 = v8;
    a2 = v70;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v18 = v9[2];
  if (v18)
  {
  }

  v19 = OUTLINED_FUNCTION_6();
  v21 = sub_222CEA060(v19, v20);
  v23 = v22;
  v25 = v24;
  v27 = v26;

  if (!v23)
  {

    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280D3DB78);
    }

    sub_222D52C2C();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v41 = OUTLINED_FUNCTION_3_0(v40);
    *(v41 + 16) = xmmword_222D53980;
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = sub_222CDDCB0(v41, v42, v43);
    *(v41 + 32) = a1;
    *(v41 + 40) = a2;

    OUTLINED_FUNCTION_1_2("Invalid key path: %s", 20, v44, &dword_222CDA000);
    goto LABEL_38;
  }

  sub_222CEA34C(v21, v23, v74);
  sub_222CEA47C(v74, v25, v27 & 1, v75);
  sub_222CDC53C(v74, &qword_27D03BDA8, &unk_222D55070);
  if (v76)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDE8, &qword_222D53BE0);
    if (swift_dynamicCast())
    {
      if (v78)
      {
        v69 = a1;
        sub_222CE2D34(&v77, v80);
        *&v74[0] = v21;
        *(&v74[0] + 1) = v23;

        v28 = sub_222D4E844(1, v9);
        sub_222CF6224(1, v28, v29, v30, v31);
        v33 = v32;
        v35 = v34 >> 1;
        for (i = (v36 + 16 * v32 + 8); ; i += 2)
        {
          if (v35 == v33)
          {
            swift_unknownObjectRelease();

            v55 = sub_222D3B588(v9);
            v57 = v56;

            sub_222CF63E8(v80, v55, v57, &v77);

            if (v78)
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v80);
              return sub_222CE0BC0(&v77, a3);
            }

            sub_222CDC53C(&v77, &qword_27D03BDA8, &unk_222D55070);
            if (qword_280D3DB78 != -1)
            {
              OUTLINED_FUNCTION_0(&qword_280D3DB78);
            }

            sub_222D52C2C();
            v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
            v65 = OUTLINED_FUNCTION_3_0(v64);
            *(v65 + 16) = xmmword_222D53980;
            *(v65 + 56) = MEMORY[0x277D837D0];
            *(v65 + 64) = sub_222CDDCB0(v65, v66, v67);
            *(v65 + 32) = v69;
            *(v65 + 40) = a2;

            OUTLINED_FUNCTION_1_2("Value not present at key path: %s", 33, v68, &dword_222CDA000);
            goto LABEL_47;
          }

          if (v33 >= v35)
          {
            __break(1u);
            goto LABEL_52;
          }

          v39 = *(i - 1);
          v38 = *i;
          *&v77 = 46;
          *(&v77 + 1) = 0xE100000000000000;

          MEMORY[0x223DCB4F0](v39, v38);
          v18 = *(&v77 + 1);
          MEMORY[0x223DCB4F0](v77, *(&v77 + 1));

          sub_222CF63E8(v80, v39, v38, v75);

          if (!v76)
          {

            sub_222CDC53C(v75, &qword_27D03BDA8, &unk_222D55070);
            OUTLINED_FUNCTION_5();
            v79 = 0;
            goto LABEL_45;
          }

          if ((swift_dynamicCast() & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_44;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v80);
          sub_222CE2D34(&v77, v80);
          ++v33;
        }

        v79 = 0;
        OUTLINED_FUNCTION_5();
LABEL_44:

LABEL_45:
        sub_222CDC53C(&v77, &qword_27D03BDE0, &qword_222D53BD8);
        if (qword_280D3DB78 != -1)
        {
          goto LABEL_54;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v79 = 0;
      OUTLINED_FUNCTION_5();
    }
  }

  else
  {

    sub_222CDC53C(v75, &qword_27D03BDA8, &unk_222D55070);
    OUTLINED_FUNCTION_5();
    v79 = 0;
  }

  sub_222CDC53C(&v77, &qword_27D03BDE0, &qword_222D53BD8);
  if (qword_280D3DB78 != -1)
  {
LABEL_52:
    OUTLINED_FUNCTION_0(&qword_280D3DB78);
  }

  sub_222D52C2C();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v46 = OUTLINED_FUNCTION_3_0(v45);
  *(v46 + 16) = xmmword_222D53980;
  if (!v18)
  {
    v47 = 0;
    v48 = 0;
    goto LABEL_32;
  }

  if (v9[2])
  {
    v47 = v9[4];
    v48 = v9[5];

LABEL_32:

    *(v46 + 56) = MEMORY[0x277D837D0];
    *(v46 + 64) = sub_222CDDCB0(v49, v50, v51);
    if (v48)
    {
      v52 = v47;
    }

    else
    {
      v52 = 0;
    }

    v53 = 0xE000000000000000;
    if (v48)
    {
      v53 = v48;
    }

    *(v46 + 32) = v52;
    *(v46 + 40) = v53;
    sub_222D5280C("Value not present at key path: %s", v69);
LABEL_38:

    goto LABEL_39;
  }

  __break(1u);
LABEL_54:
  OUTLINED_FUNCTION_0(&qword_280D3DB78);
LABEL_46:
  sub_222D52C2C();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v59 = OUTLINED_FUNCTION_3_0(v58);
  *(v59 + 16) = xmmword_222D53980;
  v60 = v74[0];
  *(v59 + 56) = MEMORY[0x277D837D0];
  *(v59 + 64) = sub_222CDDCB0(v59, v61, v62);
  *(v59 + 32) = v60;
  OUTLINED_FUNCTION_1_2("Value not present at key path: %s", 33, v63, &dword_222CDA000);
  swift_unknownObjectRelease();
LABEL_47:

  result = __swift_destroy_boxed_opaque_existential_1Tm(v80);
LABEL_39:
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

char *sub_222CE98B4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v39 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    sub_222D52AEC();
    OUTLINED_FUNCTION_10_4();
    v14 = sub_222CE9E38(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 2);
    a7 = *(v14 + 3);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_38:
      *(v14 + 2) = v10;
      v29 = &v14[32 * v9];
      *(v29 + 4) = v7;
      *(v29 + 5) = v11;
      *(v29 + 6) = v12;
      *(v29 + 7) = v13;
      return v14;
    }

LABEL_41:
    v14 = sub_222CE9E38((a7 > 1), v10, 1, v14);
    goto LABEL_38;
  }

  v7 = a4;
  v14 = (4 * v16);
  v37 = MEMORY[0x277D84F90];
  v17 = 15;
  while (1)
  {
    v35 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if ((v17 >> 14) == v14)
      {
        v17 = v35;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_8_7();
      v18 = sub_222D52ACC();
      v12 = v19;
      v38[0] = v18;
      v38[1] = v19;
      v20 = v39(v38);
      if (v8)
      {

        return v14;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      OUTLINED_FUNCTION_8_7();
      v17 = sub_222D529FC();
    }

    v23 = (v35 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v35 >> 14)
    {
      break;
    }

    v36 = sub_222D52AEC();
    v31 = v25;
    v32 = v24;
    v30 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_222CE9E38(0, *(v37 + 2) + 1, 1, v37);
    }

    v13 = *(v37 + 2);
    v27 = *(v37 + 3);
    v12 = v13 + 1;
    if (v13 >= v27 >> 1)
    {
      v37 = sub_222CE9E38((v27 > 1), v13 + 1, 1, v37);
    }

    *(v37 + 2) = v12;
    v28 = &v37[32 * v13];
    *(v28 + 4) = v36;
    *(v28 + 5) = v32;
    *(v28 + 6) = v31;
    *(v28 + 7) = v30;
LABEL_20:
    OUTLINED_FUNCTION_8_7();
    v17 = sub_222D529FC();
    if ((v23 & 1) == 0 && *(v37 + 2) == a1)
    {
LABEL_30:
      if (v17 >> 14) == v14 && (a2)
      {

        return v37;
      }

      if (v14 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_222D52AEC();
        OUTLINED_FUNCTION_10_4();
        v14 = v37;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v14 + 2);
          a7 = *(v14 + 3);
          goto LABEL_37;
        }
      }

      v14 = sub_222CE9E38(0, *(v14 + 2) + 1, 1, v14);
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_5(uint64_t a1)
{

  return sub_222D5305C();
}

uint64_t OUTLINED_FUNCTION_8_14(uint64_t a1, uint64_t a2)
{

  return sub_222D52D2C();
}

uint64_t sub_222CE9DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_222D5305C() & 1;
  }
}

char *sub_222CE9E38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C3B0, &unk_222D56778);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_222CE9F40(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C138, &qword_222D55038);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_222D289CC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_222CEA040(void *a1, int64_t a2, char a3)
{
  result = sub_222CE9F40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_222CEA060(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1;
  v31[0] = 91;
  v31[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](a1);
  v30[2] = v31;
  swift_bridgeObjectRetain_n();
  v5 = sub_222CE98B4(0x7FFFFFFFFFFFFFFFLL, 1, sub_222CE9D68, v30, v3, a2, v4);
  v6 = v5;
  if (*(v5 + 2) == 2 && (*(v5 + 9) ^ *(v5 + 8)) >> 14)
  {

    OUTLINED_FUNCTION_4();
    sub_222D52CDC();
    OUTLINED_FUNCTION_4();
    v8 = sub_222D52D1C();
    v10 = v9;

    if (v8 == 93 && v10 == 0xE100000000000000)
    {
    }

    else
    {
      v12 = sub_222D5305C();

      if ((v12 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (*(v6 + 2))
    {

      v13 = OUTLINED_FUNCTION_6();
      v3 = MEMORY[0x223DCB480](v13);

      v14 = *(v6 + 8);
      v15 = *(v6 + 9);
      v16 = *(v6 + 10);
      v17 = *(v6 + 11);

      v18 = sub_222CF613C(1, v14, v15, v16, v17);
      v22 = v21;
      if ((v18 ^ v19) >> 14)
      {
        v23 = v18;
        v24 = v19;
        v25 = v20;
        sub_222CF7340(v18, v19, v20, v21, 10);
        if ((v26 & 0x100) != 0)
        {
          sub_222CF6920(v23, v24, v25, v22, 10);
          v29 = v28;

          if ((v29 & 1) == 0)
          {
            return v3;
          }
        }

        else
        {
          v27 = v26;

          if ((v27 & 1) == 0)
          {
            return v3;
          }
        }

LABEL_20:

        return 0;
      }
    }

    else
    {
      __break(1u);
    }

    goto LABEL_20;
  }

LABEL_4:

  return v3;
}

uint64_t sub_222CEA2E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_6();
  v6(v5);
  return a2;
}

uint64_t sub_222CEA34C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = result;
  v6 = 0;
  v7 = *(v3 + 16);
  v8 = *(v7 + 16);
  for (i = v7 + 32; ; i += 48)
  {
    if (v8 == v6)
    {
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    if (v6 >= *(v7 + 16))
    {
      break;
    }

    sub_222CEA2E8(i, v13, &qword_27D03BDC8, &unk_222D53BC0);
    v16 = v14;
    v17 = v15;
    v10 = v13[0] == v5 && v13[1] == a2;
    if (v10 || (sub_222D5305C() & 1) != 0)
    {
      v18 = v14;
      v19 = v15;

      v11 = v19;
      *a3 = v18;
      a3[1] = v11;
      return result;
    }

    result = sub_222CDC53C(v13, &qword_27D03BDD0, &qword_222D58AD0);
    ++v6;
  }

  __break(1u);
  return result;
}

double sub_222CEA47C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  if (a3)
  {
    sub_222CEA2E8(a1, a4, &qword_27D03BDA8, &unk_222D55070);
    return result;
  }

  sub_222CEA2E8(a1, v8, &qword_27D03BDA8, &unk_222D55070);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDB0, &unk_222D53BB0);
    if (swift_dynamicCast())
    {
      if ((a2 & 0x8000000000000000) == 0 && *(v7 + 16) > a2)
      {
        sub_222CE4EC0(v7 + 32 * a2 + 32, a4);

        return result;
      }
    }
  }

  else
  {
    sub_222CDC53C(v8, &qword_27D03BDA8, &unk_222D55070);
  }

  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

uint64_t sub_222CEA5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, char *, uint64_t, void))
{
  v8 = sub_222D521AC();
  OUTLINED_FUNCTION_113();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a2, v8);
  v14 = a4(a1, v13, a3, 0);
  (*(v10 + 8))(a2, v8);
  return v14;
}

void *DialogPerson.__allocating_init(person:locale:useConversationalName:useRelationshipName:)(void *a1, uint64_t a2, char a3, char a4)
{
  v8 = sub_222D521AC();
  OUTLINED_FUNCTION_113();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = a1;
    if (sub_222CEA8B0())
    {
      if (qword_280D3DB78 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280D3DB78);
      }

      v15 = qword_280D3DB80;
      v16 = sub_222D52C2C();
      sub_222D5280C("Constructing DialogPerson for unnamed INPerson", 46, 2, &dword_222CDA000, v15, v16, MEMORY[0x277D84F90]);
      v17 = DialogPerson.__allocating_init(unnamedPerson:)(v14);
    }

    else
    {
      if (qword_280D3DB78 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280D3DB78);
      }

      v18 = qword_280D3DB80;
      v19 = sub_222D52C2C();
      sub_222D5280C("Constructing DialogPerson for named INPerson", 44, 2, &dword_222CDA000, v18, v19, MEMORY[0x277D84F90]);
      (*(v10 + 16))(v13, a2, v8);
      v17 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:useRelationshipName:)(v14, v13, a3 & 1, a4 & 1);
    }

    a1 = v17;
  }

  (*(v10 + 8))(a2, v8);
  return a1;
}

uint64_t sub_222CEA8B0()
{
  v1 = [v0 personHandle];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = sub_222CEAAA0(v1);
  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = v3;
  v6 = v4;
  if (sub_222CEAB04())
  {

LABEL_5:

LABEL_7:
    v7 = 0;
    return v7 & 1;
  }

  v9 = sub_222CEAD08(v0);
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = v9;
  v12 = v10;
  v13 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v13 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

LABEL_21:

LABEL_22:
    v7 = 1;
    return v7 & 1;
  }

  if ([v2 type] == 2)
  {

    v14 = sub_222D0AD14(v11, v12);

    if (v14)
    {
      v15 = sub_222D0AF3C(v11, v12);
      v17 = v16;
      if (v15 == sub_222D0AF3C(v5, v6) && v17 == v18)
      {
        v7 = 1;
      }

      else
      {
        v7 = sub_222D5305C();
      }

      return v7 & 1;
    }

    goto LABEL_5;
  }

  if (v11 == v5 && v12 == v6)
  {

    goto LABEL_22;
  }

  v21 = sub_222D5305C();

  return v21 & 1;
}

uint64_t sub_222CEAAA0(void *a1)
{
  v1 = [a1 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_222D5292C();

  return v3;
}

uint64_t sub_222CEAB04()
{
  v1 = v0;
  v2 = sub_222D5206C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [v1 nameComponents];
  if (v6)
  {
    sub_222D5202C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BFF0, &qword_222D54A28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222D54950;
    *(inited + 32) = sub_222D51FCC();
    *(inited + 40) = v8;
    v9 = sub_222D5200C();
    v11 = v10;
    *(inited + 48) = v9;
    *(inited + 56) = v10;
    v12 = sub_222D51FEC();
    v14 = v13;
    *(inited + 64) = v12;
    *(inited + 72) = v13;
    v15 = sub_222D5203C();
    v17 = v16;
    *(inited + 80) = v15;
    *(inited + 88) = v16;
    v18 = *(inited + 40);
    if (v18)
    {
      if ((v18 & 0x2000000000000000) != 0 ? HIBYTE(v18) & 0xF : *(inited + 32) & 0xFFFFFFFFFFFFLL)
      {
        goto LABEL_15;
      }
    }

    if (v11)
    {
      v20 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v20 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {
        goto LABEL_15;
      }
    }

    if (!v14)
    {
      goto LABEL_19;
    }

    v21 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v21 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
LABEL_15:
    }

    else
    {
LABEL_19:

      if (!v17)
      {
        goto LABEL_23;
      }

      v23 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v23 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (!v23)
      {
LABEL_23:
        v6 = 0;
        goto LABEL_17;
      }
    }

    v6 = 1;
LABEL_17:
    (*(v3 + 8))(v5, v2);
  }

  return v6;
}

uint64_t sub_222CEAD08(void *a1)
{
  v1 = [a1 _displayName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_222D5292C();

  return v3;
}

uint64_t DialogPerson.__allocating_init(unnamedPerson:)(void *a1)
{
  type metadata accessor for DialogPersonHandle();
  v3 = DialogPersonHandle.__allocating_init(handle:)([a1 personHandle]);
  type metadata accessor for DialogPerson.Builder();
  swift_allocObject();
  v4 = *DialogPerson.Builder.init()();
  v5 = (*(v4 + 664))(v3);

  v6 = (*(v1 + 240))(v5);

  return v6;
}

uint64_t DialogPersonHandle.__allocating_init(handle:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = v1;
  v3 = a1;
  v4 = INIntentSlotValueTransformToContactHandle();
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  type metadata accessor for DialogPersonHandle.Builder();
  swift_allocObject();
  v6 = DialogPersonHandle.Builder.init()();
  v8 = v7;
  v9 = [v5 type];
  switch(v9)
  {
    case 0:
      v10 = @"Unknown";
      goto LABEL_11;
    case 1:
      v10 = @"EmailAddress";
      goto LABEL_11;
    case 2:
      v10 = @"PhoneNumber";
      goto LABEL_11;
    case 3:
      v10 = @"Website";
      goto LABEL_11;
    case 4:
      v10 = @"InstantMessage";
LABEL_11:
      v12 = v10;
      break;
    default:
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v9];
      break;
  }

  v13 = v10;
  v14 = sub_222D5292C();
  v16 = v15;

  v28 = v14;
  v29 = v16;
  v30 = v14;
  v31 = v16;
  v17 = *(*v8 + 192);

  v17(&v28);

  sub_222CE2920(v28, v29, v30, v31);
  v18 = sub_222CEAAA0(v3);
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v28 = v20;
  v29 = v19;
  v30 = v20;
  v31 = v19;
  v21 = *(*v8 + 208);

  v21(&v28);

  sub_222CE2920(v28, v29, v30, v31);
  v22 = [v3 label];
  if (v22)
  {
    v23 = v22;
    v24 = sub_222D5292C();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v28 = v24;
  v29 = v26;
  v30 = v24;
  v31 = v26;
  (*(*v8 + 224))(&v28);

  sub_222CE2920(v28, v29, v30, v31);
  v11 = (*(v2 + 152))(v8);

  return v11;
}

double DialogPersonHandle.Builder.init()()
{
  result = 0.0;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  return result;
}

uint64_t DialogPersonHandle.__allocating_init(builder:)(void *a1)
{
  OUTLINED_FUNCTION_15_0();
  v2 = swift_allocObject();
  DialogPersonHandle.init(builder:)(a1);
  return v2;
}

uint64_t DialogPerson.Builder.init()()
{
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  bzero((v0 + 16), 0xCAuLL);
  *(v0 + 272) = 0;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  return v0;
}

void sub_222CEB1F0()
{
  OUTLINED_FUNCTION_116();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  OUTLINED_FUNCTION_67((v0 + 6), v6);
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = v4;
  v0[9] = v5;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222CEB24C()
{
  OUTLINED_FUNCTION_116();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  OUTLINED_FUNCTION_67((v0 + 10), v6);
  v0[10] = v2;
  v0[11] = v3;
  v0[12] = v4;
  v0[13] = v5;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void *DialogPersonHandle.init(builder:)(void *a1)
{
  v1[2] = 0;
  swift_beginAccess();
  v21 = a1[3];
  v22 = a1[2];
  v19 = a1[5];
  v20 = a1[4];
  v1[3] = v22;
  v1[4] = v21;
  v1[5] = v20;
  v1[6] = v19;
  swift_beginAccess();
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[9];
  v1[7] = v3;
  v1[8] = v4;
  v1[9] = v5;
  v1[10] = v6;
  swift_beginAccess();
  v7 = a1[10];
  v8 = a1[11];
  v9 = a1[12];
  v10 = a1[13];
  v1[11] = v7;
  v1[12] = v8;
  v1[13] = v9;
  v1[14] = v10;
  v17 = (*v1 + 160);
  v18 = *v17;
  sub_222CE3060(v22, v21, v20, v19);
  sub_222CE3060(v3, v4, v5, v6);
  sub_222CE3060(v7, v8, v9, v10);
  if ((v18() & 1) == 0)
  {
    if (qword_280D3DB78 != -1)
    {
      swift_once();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_222D53980;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BFA8, &qword_222D546E8);
    v12 = sub_222D5297C();
    v14 = v13;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_222CDDCB0(v12, v13, v15);
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    sub_222D5280C("Building an instance of %s without all required inputs", v17);
  }

  return v1;
}

uint64_t DialogPersonHandle.Builder.__deallocating_deinit()
{
  DialogPersonHandle.Builder.deinit();
  v0 = OUTLINED_FUNCTION_16_2();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t *DialogPersonHandle.Builder.deinit()
{
  sub_222CE2920(v0[2], v0[3], v0[4], v0[5]);
  sub_222CE2920(v0[6], v0[7], v0[8], v0[9]);
  sub_222CE2920(v0[10], v0[11], v0[12], v0[13]);
  return v0;
}

uint64_t sub_222CEB588()
{
  if (qword_280D3DB78 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280D3DB78);
  }

  v2 = v0[16];
  v1 = v0[17];
  v3 = qword_280D3DB80;
  v0[23] = qword_280D3DB80;
  v4 = v3;
  sub_222D5283C();
  sub_222D52C6C();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v6 = OUTLINED_FUNCTION_3_0(v5);
  *(v6 + 16) = xmmword_222D53980;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_222CDDCB0(v6, v7, v8);
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;

  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_10_2();
  sub_222D5281C(v9, v10, v11, v12, v13, v14, v15, v16);

  v0[24] = OUTLINED_FUNCTION_35_2(OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_mockGlobals);
  v0[25] = v17;
  if (qword_280D3B218 != -1)
  {
    OUTLINED_FUNCTION_4_5(&qword_280D3B218);
  }

  v18 = sub_222D5286C();
  v0[26] = __swift_project_value_buffer(v18, qword_280D3DDA8);

  v19 = sub_222D5285C();
  v20 = sub_222D52C2C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_26_2();
    v43 = OUTLINED_FUNCTION_25_2();
    *(v21 + 4) = OUTLINED_FUNCTION_34_2(4.8149e-34, v43, v22, v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_36_2(&dword_222CDA000, v29, v30, "Invoking CATExecutor (async) for patternId: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_17_3();
  }

  v31 = v0[22];
  v32 = v0[19];
  sub_222D52C7C();
  OUTLINED_FUNCTION_2_6();
  sub_222D5281C(v33, &dword_222CDA000, v4, "CATWrapperAsyncExecutePattern", 29, 2, v31, "Parameter conversion completed");
  type metadata accessor for CATResponse();
  sub_222CE3120((v0 + 2), (v0 + 7));
  v0[15] = *(v32 + OBJC_IVAR____TtC16SiriDialogEngine10CATWrapper_options);
  v34 = swift_task_alloc();
  v0[27] = v34;
  *v34 = v0;
  v34[1] = sub_222CED330;
  v35 = OUTLINED_FUNCTION_22_2();

  return static CATResponse.executePattern(templateDir:patternId:parameters:globals:callback:options:)(v35, v36, v37, v38, v39, v40, v41);
}

uint64_t sub_222CEB86C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_222CE4EC0(a1, v74);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDE8, &qword_222D53BE0);
  OUTLINED_FUNCTION_15_7(v3, v4, v5, v3, v6, v7, v8, v9, v67, *(&v67 + 1), v68, *(&v68 + 1), v69, v70, v71, v72);
  if (swift_dynamicCast())
  {
    sub_222CE2D34(&v72, &v67);
    v10 = *(&v68 + 1);
    v11 = v69;
    __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
    v12 = (*(v11 + 24))(v10, v11);
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
    *a2 = v12;
    __swift_destroy_boxed_opaque_existential_1Tm(&v67);
    return __swift_destroy_boxed_opaque_existential_1Tm(v74);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDB0, &unk_222D53BB0);
  v21 = OUTLINED_FUNCTION_33_5(&v71, v14, v15, v16, v17, v18, v19, v20, v67, *(&v67 + 1), v68, *(&v68 + 1), v69);
  if (v21)
  {
    v29 = v71;
    v30 = *(v71 + 16);
    if (v30)
    {
      v70 = MEMORY[0x277D84F90];
      sub_222D271EC(0, v30, 0);
      v31 = v70;
      v32 = v29 + 32;
      do
      {
        sub_222CE4EC0(v32, &v67);
        sub_222CEB86C(&v67, &v72);
        __swift_destroy_boxed_opaque_existential_1Tm(&v67);
        v70 = v31;
        v34 = *(v31 + 16);
        v33 = *(v31 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_222D271EC((v33 > 1), v34 + 1, 1);
          v31 = v70;
        }

        *(v31 + 16) = v34 + 1;
        sub_222CE0BC0(&v72, (v31 + 32 * v34 + 32));
        v32 += 32;
        --v30;
      }

      while (v30);
    }

    else
    {

      v31 = MEMORY[0x277D84F90];
    }

    a2[3] = v13;
    *a2 = v31;
    return __swift_destroy_boxed_opaque_existential_1Tm(v74);
  }

  v35 = MEMORY[0x277D839F8];
  OUTLINED_FUNCTION_15_7(v21, v22, v23, v24, v25, v26, v27, v28, v67, *(&v67 + 1), v68, *(&v68 + 1), v69, v70, v71, v72);
  v36 = swift_dynamicCast();
  if (v36)
  {
    v44 = v72;
    a2[3] = v35;
    *a2 = v44;
    return __swift_destroy_boxed_opaque_existential_1Tm(v74);
  }

  v45 = MEMORY[0x277D839B0];
  OUTLINED_FUNCTION_15_7(v36, v37, v38, v39, v40, v41, v42, v43, v67, *(&v67 + 1), v68, *(&v68 + 1), v69, v70, v71, v72);
  v46 = swift_dynamicCast();
  if (v46)
  {
    v53 = v72;
    a2[3] = v45;
    *a2 = v53;
    return __swift_destroy_boxed_opaque_existential_1Tm(v74);
  }

  OUTLINED_FUNCTION_15_7(v46, v47, v48, &type metadata for SpeakableString, v49, v50, v51, v52, v67, *(&v67 + 1), v68, *(&v68 + 1), v69, v70, v71, v72);
  if (swift_dynamicCast())
  {
    v67 = v72;
    v68 = v73;
    v62 = sub_222CEC474();
    v64 = v63;
    a2[3] = MEMORY[0x277D837D0];

LABEL_21:
    *a2 = v62;
    a2[1] = v64;
    return __swift_destroy_boxed_opaque_existential_1Tm(v74);
  }

  v65 = MEMORY[0x277D837D0];
  result = OUTLINED_FUNCTION_33_5(&v67, v55, v56, v57, v58, v59, v60, v61, v67, *(&v67 + 1), v68, *(&v68 + 1), v69);
  if (result)
  {
    v72 = v67;
    v73 = v67;

    v62 = sub_222CEC474();
    v64 = v66;
    a2[3] = v65;
    swift_bridgeObjectRelease_n();
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_222CEBB94()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 18), v5);
  v1[18] = v0;
  v1[19] = v2;
  v1[20] = v3;
  v1[21] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t sub_222CEBBEC(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 216, a2);
  *(v2 + 216) = a1;
}

uint64_t sub_222CEBC54(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 217, a2);
  *(v2 + 217) = a1;
}

void sub_222CEBCBC()
{
  OUTLINED_FUNCTION_116();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  OUTLINED_FUNCTION_67((v0 + 2), v6);
  v0[2] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[5] = v5;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t sub_222CEBD3C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 224, a2);
  *(v2 + 224) = a1;
}

uint64_t dispatch thunk of DialogPerson.Builder.withPersonHandle(_:)()
{
  return (*(*v0 + 664))();
}

{
  return (*(*v0 + 672))();
}

uint64_t sub_222CEBDC0(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 232, a2);
  *(v2 + 232) = a1;
}

uint64_t sub_222CEBE28(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 176, a2);
  *(v2 + 176) = a1;
}

uint64_t dispatch thunk of DialogPerson.Builder.withPronoun(_:)()
{
  return (*(*v0 + 616))();
}

{
  return (*(*v0 + 624))();
}

uint64_t sub_222CEBEAC()
{
  type metadata accessor for DialogPerson();
  v0 = swift_allocObject();

  DialogPerson.init(builder:)(v1);
  return v0;
}

uint64_t *DialogPerson.Builder.deinit()
{
  sub_222CE2920(v0[2], v0[3], v0[4], v0[5]);
  sub_222CE2920(v0[6], v0[7], v0[8], v0[9]);
  sub_222CE2920(v0[10], v0[11], v0[12], v0[13]);
  sub_222CE2920(v0[14], v0[15], v0[16], v0[17]);
  sub_222CE2920(v0[18], v0[19], v0[20], v0[21]);

  sub_222CE2920(v0[23], v0[24], v0[25], v0[26]);

  sub_222CE2920(v0[30], v0[31], v0[32], v0[33]);
  return v0;
}

uint64_t DialogPerson.Builder.__deallocating_deinit()
{
  DialogPerson.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 273, 7);
}

uint64_t sub_222CEC014()
{
  type metadata accessor for DialogPersonHandle();
  v0 = swift_allocObject();

  DialogPersonHandle.init(builder:)(v1);
  return v0;
}

uint64_t DialogPerson.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_25(a1 + 16, v46);
  v31 = *(a1 + 24);
  v32 = *(a1 + 16);
  v29 = *(a1 + 40);
  v30 = *(a1 + 32);
  *(v1 + 24) = v32;
  *(v1 + 32) = v31;
  *(v1 + 40) = v30;
  *(v1 + 48) = v29;
  OUTLINED_FUNCTION_25(a1 + 48, v45);
  v27 = *(a1 + 56);
  v28 = *(a1 + 48);
  v25 = *(a1 + 72);
  v26 = *(a1 + 64);
  *(v1 + 56) = v28;
  *(v1 + 64) = v27;
  *(v1 + 72) = v26;
  *(v1 + 80) = v25;
  OUTLINED_FUNCTION_25(a1 + 80, v44);
  v23 = *(a1 + 88);
  v24 = *(a1 + 80);
  v21 = *(a1 + 104);
  v22 = *(a1 + 96);
  *(v1 + 88) = v24;
  *(v1 + 96) = v23;
  *(v1 + 104) = v22;
  *(v1 + 112) = v21;
  OUTLINED_FUNCTION_25(a1 + 112, v43);
  v19 = *(a1 + 120);
  v20 = *(a1 + 112);
  v17 = *(a1 + 136);
  v18 = *(a1 + 128);
  *(v1 + 120) = v20;
  *(v1 + 128) = v19;
  *(v1 + 136) = v18;
  *(v1 + 144) = v17;
  OUTLINED_FUNCTION_25(a1 + 144, v42);
  v15 = *(a1 + 152);
  v16 = *(a1 + 144);
  v13 = *(a1 + 168);
  v14 = *(a1 + 160);
  *(v1 + 152) = v16;
  *(v1 + 160) = v15;
  *(v1 + 168) = v14;
  *(v1 + 176) = v13;
  OUTLINED_FUNCTION_25(a1 + 176, v41);
  *(v1 + 184) = *(a1 + 176);
  OUTLINED_FUNCTION_25(a1 + 184, v40);
  v3 = *(a1 + 192);
  v4 = *(a1 + 200);
  v11 = *(a1 + 208);
  v12 = *(a1 + 184);
  *(v1 + 192) = v12;
  *(v1 + 200) = v3;
  *(v1 + 208) = v4;
  *(v1 + 216) = v11;
  OUTLINED_FUNCTION_25(a1 + 216, v39);
  *(v1 + 224) = *(a1 + 216);
  OUTLINED_FUNCTION_25(a1 + 217, v38);
  *(v1 + 225) = *(a1 + 217);
  OUTLINED_FUNCTION_25(a1 + 224, v37);
  *(v1 + 232) = *(a1 + 224);
  OUTLINED_FUNCTION_25(a1 + 232, v36);
  *(v1 + 240) = *(a1 + 232);
  OUTLINED_FUNCTION_25(a1 + 233, v35);
  *(v1 + 241) = *(a1 + 233);
  OUTLINED_FUNCTION_25(a1 + 240, v34);
  v5 = *(a1 + 240);
  v6 = *(a1 + 248);
  v8 = *(a1 + 256);
  v7 = *(a1 + 264);
  *(v1 + 248) = v5;
  *(v1 + 256) = v6;
  *(v1 + 264) = v8;
  *(v1 + 272) = v7;
  OUTLINED_FUNCTION_25(a1 + 272, v33);
  v9 = *(a1 + 272);
  sub_222CE3060(v32, v31, v30, v29);
  sub_222CE3060(v28, v27, v26, v25);
  sub_222CE3060(v24, v23, v22, v21);
  sub_222CE3060(v20, v19, v18, v17);
  sub_222CE3060(v16, v15, v14, v13);

  sub_222CE3060(v12, v3, v4, v11);

  sub_222CE3060(v5, v6, v8, v7);

  *(v1 + 280) = v9;
  return v1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t dispatch thunk of CATWrapper.executePattern(patternId:parameters:)()
{
  OUTLINED_FUNCTION_28_2();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_21_2(v1);

  return v3(v2);
}

uint64_t sub_222CEC3C0()
{
  OUTLINED_FUNCTION_14_2();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v5 = sub_222D5284C();
  v1[20] = v5;
  OUTLINED_FUNCTION_24_2(v5);
  v1[21] = v6;
  v1[22] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_222CEC474()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *v0 == v1 && v0[1] == v2;
  if (v3 || (sub_222D5305C() & 1) != 0)
  {
    v4 = OUTLINED_FUNCTION_3_21();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_3_21();
    MEMORY[0x223DCB4F0](v6);
    MEMORY[0x223DCB4F0](0x3A7374742FLL, 0xE500000000000000);
    v4 = v1;
    v5 = v2;
  }

  MEMORY[0x223DCB4F0](v4, v5);
  MEMORY[0x223DCB4F0](93, 0xE100000000000000);
  return v8;
}

void sub_222CEC52C()
{
  OUTLINED_FUNCTION_7_8();
  if (v4)
  {
    OUTLINED_FUNCTION_2_12();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_6_12();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_13();
    }
  }

  OUTLINED_FUNCTION_4_14();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C3C0, &qword_222D56790);
    v8 = OUTLINED_FUNCTION_9_7(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_5_10(v9);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v8 != v0 || v0 + 32 + 48 * v2 <= (v8 + 32))
    {
      memmove((v8 + 32), (v0 + 32), 48 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C3C8, &qword_222D56798);
    swift_arrayInitWithCopy();
  }
}

uint64_t CATType.toDictionary.getter()
{
  v0 = sub_222D51F2C();
  OUTLINED_FUNCTION_24_7(v0);
  sub_222D51F1C();
  OUTLINED_FUNCTION_11_7();
  sub_222D51F0C();
  OUTLINED_FUNCTION_32_4();
  objc_opt_self();
  OUTLINED_FUNCTION_12_6();
  v2 = sub_222D5212C();
  v9 = OUTLINED_FUNCTION_31_5(v2, sel_JSONObjectWithData_options_error_, v3, v4, v5, v6, v7, v8, v24, v25, v27);

  if (v9)
  {
    v10 = 0;
    sub_222D52D6C();
    swift_unknownObjectRelease();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
    v12 = MEMORY[0x277D84F70];
    if (OUTLINED_FUNCTION_30_5(v11, v13, v14, v11, v15))
    {
      v16 = OUTLINED_FUNCTION_112();
      sub_222CE6210(v16, v17);
      return v26;
    }

    else
    {
      sub_222D528BC();
      v22 = OUTLINED_FUNCTION_12_6();
      sub_222CE6210(v22, v23);
    }
  }

  else
  {
    v18 = 0;
    OUTLINED_FUNCTION_21_7();
    v19 = sub_222D5207C();

    v12 = v19;
    swift_willThrow();
    v20 = OUTLINED_FUNCTION_112();
    sub_222CE6210(v20, v21);
    sub_222D528BC();
  }

  return v12;
}

uint64_t static CATDialog.execute(templateDir:catId:parameters:globals:callback:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7[7] = a5;
  v7[8] = a6;
  v7[5] = a3;
  v7[6] = a4;
  v7[3] = a1;
  v7[4] = a2;
  v7[9] = *a7;
  OUTLINED_FUNCTION_23();
  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_222CEC844()
{
  type metadata accessor for CATExecutor();
  sub_222CECA4C();
  v2 = v1;
  v0[10] = v1;
  if (v3)
  {
    swift_willThrow();

LABEL_3:
    OUTLINED_FUNCTION_13();

    return v4();
  }

  if (!v1)
  {
    type metadata accessor for CATResultProvider();
    sub_222D0B314(0xD000000000000021, 0x8000000222D5B000, 0x6C616E7265746E69, 0xEE00726F7272652DLL);
    swift_willThrow();
    goto LABEL_3;
  }

  v7 = v0[4];
  v6 = v0[5];
  v8 = swift_task_alloc();
  v0[11] = v8;
  v8[2] = v2;
  v8[3] = v7;
  v8[4] = v6;
  v9 = swift_task_alloc();
  v0[12] = v9;
  sub_222CEF068();
  *v9 = v0;
  v9[1] = sub_222CE52DC;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822008A0]();
}

void sub_222CECA4C()
{
  OUTLINED_FUNCTION_73();
  v1 = v0;
  v44 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_222D5284C();
  OUTLINED_FUNCTION_113();
  v45 = v12;
  v46 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_5();
  v15 = v14 - v13;
  v16 = *v1;
  if (qword_280D3DB78 != -1)
  {
    swift_once();
  }

  qword_280D3DB80;
  sub_222D5283C();
  sub_222D52C6C();
  sub_222D5282C();
  v18 = sub_222D5217C();
  v19 = v17;
  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17 == 0xE000000000000000;
  }

  v21 = &unk_280D3D000;
  if (!v20)
  {
    v22 = sub_222D5305C();
    v21 = &unk_280D3D000;
    if ((v22 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (v21[359] != -1)
  {
    OUTLINED_FUNCTION_3_9(&qword_280D3DB38);
  }

  if ((qword_280D3DB40 & v16) == 0)
  {

    sub_222D52C5C();
    v27 = v15;
    sub_222D5282C();
    type metadata accessor for CATResultProvider();
    OUTLINED_FUNCTION_0_5();
    sub_222D0B314(0xD000000000000023, v28, v29, v30);
  }

  else
  {
LABEL_11:
    sub_222CEE42C(v6);
    v23 = [objc_allocWithZone(MEMORY[0x277D05290]) init];
    v24 = sub_222D520FC();
    sub_222CE8AFC(v24, v25, v23);
    sub_222CEEA28(v10, v8, v23);
    sub_222CEEA80(v18, v19, v23);
    v26 = *(v4 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_dialogMetadata);
    if (v26)
    {
      sub_222CEED68();
      sub_222D5288C();
      v26 = OUTLINED_FUNCTION_40();
    }

    else
    {
      v19 = 0;
    }

    OUTLINED_FUNCTION_6_7(v26, sel_setDialogMetadata_);

    v31 = sub_222D528FC();
    OUTLINED_FUNCTION_6_7(v31, sel_setInteractionId_);

    v32 = sub_222D528FC();
    OUTLINED_FUNCTION_6_7(v32, sel_setExecutionRequestId_);

    sub_222CEEA8C();
    v34 = v33;

    sub_222CEECE8(v34, v23);
    v35 = *(v4 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_globalParameters);
    if (v35)
    {
      sub_222CEEA8C();
      sub_222D5288C();
      v35 = OUTLINED_FUNCTION_40();
    }

    else
    {
      v34 = 0;
    }

    OUTLINED_FUNCTION_6_7(v35, sel_setGlobalParameters_);

    v36 = *(v4 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_userSettings);
    if (v36)
    {
      sub_222CEEA8C();
      sub_222D5288C();
      v36 = OUTLINED_FUNCTION_40();
    }

    else
    {
      v34 = 0;
    }

    OUTLINED_FUNCTION_6_7(v36, sel_setUserSettings_);

    if (qword_280D3DB38 != -1)
    {
      OUTLINED_FUNCTION_3_9(&qword_280D3DB38);
    }

    OUTLINED_FUNCTION_4_8();
    [v23 setVisual_];
    if (qword_280D3DAE0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_4_8();
    [v23 setDebug_];
    if (qword_280D3DAF0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_4_8();
    [v23 setTest_];
    if (qword_280D3DB48 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_4_8();
    [v23 setResetState_];
    [v23 setMultiuser_];
    [v23 setGrounding_];
    if (qword_280D3DB00 != -1)
    {
      swift_once();
    }

    [v23 setEnableUpdates_];
    if (qword_280D3DB28 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_4_8();
    [v23 setCreateTrace_];
    v37 = sub_222D528FC();
    OUTLINED_FUNCTION_6_7(v37, sel_setVoiceGender_);

    [v23 setRandomSeed_];
    [v23 setCurrentTime_];
    v38 = *(v4 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_customPronunciations);
    if (v38)
    {
      sub_222CEED68();
      sub_222D5288C();
      v38 = OUTLINED_FUNCTION_40();
    }

    else
    {
      v37 = 0;
    }

    v27 = v15;
    OUTLINED_FUNCTION_6_7(v38, sel_setCustomPronunciations_);

    if (qword_280D3DAD0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_4_8();
    [v23 setIsLabelMode_];
    if (qword_280D3DB10 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_4_8();
    [v23 setDisableLogging_];
    if (*(v44 + 24))
    {
      sub_222CEEFC0(v44, v48, &qword_27D03C020, &unk_222D54A80);
      v39 = swift_allocObject();
      v40 = v48[1];
      *(v39 + 16) = v48[0];
      *(v39 + 32) = v40;
      *(v39 + 48) = v49;
      v41 = swift_allocObject();
      *(v41 + 16) = sub_222D151A0;
      *(v41 + 24) = v39;
      v47[4] = sub_222D151A8;
      v47[5] = v41;
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 1107296256;
      v47[2] = sub_222D14E84;
      v47[3] = &block_descriptor_11_0;
      v42 = _Block_copy(v47);

      OUTLINED_FUNCTION_6_7(v43, sel_setCallback_);
      _Block_release(v42);
    }

    sub_222D52C5C();
    sub_222D5282C();
  }

  (*(v45 + 8))(v27, v46);
  OUTLINED_FUNCTION_74();
}

uint64_t sub_222CED2B8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222CED2F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222CED330()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  OUTLINED_FUNCTION_9_4();
  *v4 = v3;
  v3[12] = v1;
  v3[13] = v5;
  v3[14] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_5_5();
  *v7 = v6;
  v3[28] = v0;

  sub_222CDD130((v3 + 7), &qword_27D03C020, &unk_222D54A80);

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t OUTLINED_FUNCTION_23_6()
{
  type metadata accessor for CATGlobals.Builder(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_3(uint64_t a1, uint64_t a2)
{

  return sub_222D52D2C();
}

__n128 OUTLINED_FUNCTION_13_8()
{
  v1 = *(v0 + 112);
  *(v0 + 32) = *(v0 + 96);
  *(v0 + 48) = v1;
  result = *(v0 + 128);
  v3 = *(v0 + 144);
  *(v0 + 64) = result;
  *(v0 + 80) = v3;
  return result;
}

void OUTLINED_FUNCTION_7_5()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x223DCC290);
}

void OUTLINED_FUNCTION_7_10()
{

  sub_222D284FC();
}

uint64_t OUTLINED_FUNCTION_7_12(uint64_t a1, uint64_t a2)
{

  return sub_222D5305C();
}

id OUTLINED_FUNCTION_7_14@<X0>(uint64_t a1@<X8>)
{

  return sub_222D0B314(0xD000000000000023, (a1 - 32) | 0x8000000000000000, 0x6C616E7265746E69, 0xEE00726F7272652DLL);
}

uint64_t sub_222CED750()
{
  OUTLINED_FUNCTION_4_20();
  if (v5)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0xEE0065646F6D206CLL;
  }

  if (v5)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x6562616C206E6920;
  }

  sub_222CED828(v1, v10, v9, v6, v7);

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  (*(v4 + 8))(v1, v0);

  OUTLINED_FUNCTION_10_10();
  v12 = *(v2 + 192);

  return v11(v12);
}

void sub_222CED828(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_222D52C5C();
  if (qword_280D3DB78 != -1)
  {
    swift_once();
  }

  sub_222D5282C();
  if (qword_280D3B218 != -1)
  {
    swift_once();
  }

  v9 = sub_222D5286C();
  __swift_project_value_buffer(v9, qword_280D3DDA8);

  oslog = sub_222D5285C();
  v10 = sub_222D52C2C();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_222CE548C(a2, a3, &v14);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_222CE548C(a4, a5, &v14);
    _os_log_impl(&dword_222CDA000, oslog, v10, "CATExecutor (async)%s completed for catId: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCC290](v12, -1, -1);
    MEMORY[0x223DCC290](v11, -1, -1);
  }
}

uint64_t sub_222CEDA34()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_222CEDA6C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2_20();
  v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_5_5();
  *v6 = v5;

  if (v1)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = v0;

    return MEMORY[0x2822009F8](sub_222CEDBA4, 0, 0);
  }
}

uint64_t sub_222CEDBA4()
{
  OUTLINED_FUNCTION_14_2();
  v1 = v0[5];
  type metadata accessor for LabelExecutionResult(0, v0[2], v0[3], v2);
  LabelExecutionResult.__allocating_init(_:)(v1);
  OUTLINED_FUNCTION_10_10();

  return v3();
}

uint64_t LabelExecutionResult.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  LabelExecutionResult.init(_:)(a1);
  return v2;
}

uint64_t LabelExecutionResult.init(_:)(void *a1)
{
  *(v1 + 16) = MEMORY[0x277D84F98];
  v3 = (v1 + 16);
  v4 = [a1 dialog];
  sub_222CEE128();
  v5 = sub_222D52B3C();

  v6 = sub_222CEE16C(v5);
  if (!v6)
  {

    return v1;
  }

  v7 = v6;
  if (v6 < 1)
  {
    goto LABEL_31;
  }

  v60 = a1;
  v61 = v1;
  v8 = 0;
  v9 = 0;
  v63 = v5;
  v64 = v5 & 0xC000000000000001;
  v10 = &property descriptor for DialogPerson.mockGlobals;
  v62 = v6;
  while (1)
  {
    if (v64)
    {
      v11 = MEMORY[0x223DCB8A0](v8, v5);
    }

    else
    {
      v11 = *(v5 + 8 * v8 + 32);
    }

    v12 = v11;
    v13 = [v11 v10[281]];
    v14 = sub_222D5292C();
    v16 = v15;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {
      goto LABEL_25;
    }

    v18 = [v12 v10[281]];
    v19 = sub_222D5292C();
    v21 = v20;

    v69[0] = 35;
    v69[1] = 0xE100000000000000;
    MEMORY[0x28223BE20](v22);
    v58[2] = v69;
    v23 = sub_222CE98B4(0x7FFFFFFFFFFFFFFFLL, 1, sub_222CE9D68, v58, v19, v21, &v59);
    v24 = *(v23 + 2);
    v65 = v8;
    v66 = v9;
    if (v24 < 4)
    {

      v33 = [v12 v10[281]];
      v30 = sub_222D5292C();
      v32 = v34;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v24 - 3 > *(v23 + 3) >> 1)
      {
        v23 = sub_222CE9E38(isUniquelyReferenced_nonNull_native, v24, 1, v23);
      }

      swift_arrayDestroy();
      v26 = *(v23 + 2);
      memmove(v23 + 32, v23 + 128, 32 * v26 - 96);
      *(v23 + 2) = v26 - 3;
      v69[0] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C390, &qword_222D56718);
      v27 = sub_222CF0AA4();
      sub_222CF0B08(v27, v28, v29);
      v30 = sub_222D52AFC();
      v32 = v31;
    }

    v35 = [v12 fullPrint];
    v36 = sub_222D5292C();
    v67 = v37;

    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v68 = *v3;
    v38 = v68;
    v39 = v3;
    *v3 = 0x8000000000000000;
    v40 = v30;
    v41 = v32;
    v42 = sub_222CE1050(v30, v32);
    if (__OFADD__(v38[2], (v43 & 1) == 0))
    {
      break;
    }

    v44 = v42;
    v45 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C388, &qword_222D56710);
    if (sub_222D52E4C())
    {
      v46 = sub_222CE1050(v40, v41);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_32;
      }

      v44 = v46;
    }

    v48 = v68;
    if (v45)
    {
      v49 = (v68[7] + 16 * v44);
      v50 = v67;
      *v49 = v36;
      v49[1] = v50;
    }

    else
    {
      v68[(v44 >> 6) + 8] |= 1 << v44;
      v51 = (v48[6] + 16 * v44);
      *v51 = v40;
      v51[1] = v41;
      v52 = (v48[7] + 16 * v44);
      v53 = v67;
      *v52 = v36;
      v52[1] = v53;
      v54 = v48[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_30;
      }

      v48[2] = v56;
    }

    *v39 = v48;
    v3 = v39;
    swift_endAccess();
    v7 = v62;
    v5 = v63;
    v8 = v65;
    v9 = v66;
    v10 = &property descriptor for DialogPerson.mockGlobals;
LABEL_25:
    ++v8;

    if (v7 == v8)
    {

      return v61;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_222D5312C();
  __break(1u);
  return result;
}

unint64_t sub_222CEE128()
{
  result = qword_280D3B148;
  if (!qword_280D3B148)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D3B148);
  }

  return result;
}

uint64_t sub_222CEE16C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

void sub_222CEE190(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_222CEE21C(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03CA10, &qword_222D59878);

  return sub_222CEE2A8(a1, a2);
}

uint64_t sub_222CEE2A8(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03CA10, &qword_222D59878);
    return sub_222D52B9C();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03CA10, &qword_222D59878);
    return sub_222D52BAC();
  }
}

uint64_t sub_222CEE32C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_222CEE364(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_222CEE3A4(void *a1)
{
  v1 = [a1 meta];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_222D5289C();

  return v3;
}

uint64_t sub_222CEE42C(uint64_t a1)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v51 = a1;

  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  v50 = v3;
  if (v6)
  {
    while (1)
    {
      v10 = v8;
LABEL_9:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v10 << 6);
      v13 = (*(v51 + 48) + 16 * v12);
      v2 = *v13;
      v1 = v13[1];
      sub_222CE4EC0(*(v51 + 56) + 32 * v12, &v53);
      *&v63 = v2;
      *(&v63 + 1) = v1;
      sub_222CE0BC0(&v53, &v64);

LABEL_10:
      v66 = v63;
      v67[0] = v64;
      v67[1] = v65;
      v14 = *(&v63 + 1);
      if (!*(&v63 + 1))
      {

        return v9;
      }

      v15 = v66;
      sub_222CE0BC0(v67, &v60);
      sub_222CE4EC0(&v60, &v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDE8, &qword_222D53BE0);
      if (swift_dynamicCast())
      {
        break;
      }

      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      sub_222D3B520(&v53);
      sub_222CE4EC0(&v60, &v63);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDB0, &unk_222D53BB0);
      if (OUTLINED_FUNCTION_3_16(v20, v21, v22, v23, v24, v25, v26, v27, v49, v50, v51, v52, v53, *(&v53 + 1), v54, *(&v54 + 1), v55, v56, v57, *(&v57 + 1), v58, v59, v60, *(&v60 + 1), v61, v62, v63))
      {
        LOBYTE(v2) = v53;
        v28 = sub_222D3B2A8(v53);

        *(&v64 + 1) = v1;
        *&v63 = v28;
        sub_222CE0BC0(&v63, &v53);
        swift_isUniquelyReferenced_nonNull_native();
        *&v57 = v9;
        OUTLINED_FUNCTION_10_8();
        OUTLINED_FUNCTION_1_18();
        if (v18)
        {
          goto LABEL_61;
        }

        OUTLINED_FUNCTION_9_10();
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C318, &qword_222D56100);
        if (OUTLINED_FUNCTION_11_6(v29))
        {
          v1 = v57;
          sub_222CE1050(v3, v14);
          OUTLINED_FUNCTION_2_18();
          if (!v19)
          {
            goto LABEL_68;
          }
        }

        v3 = v50;
        if (v2)
        {
LABEL_45:

          v9 = v57;
          OUTLINED_FUNCTION_6_15();
          v45 = &v53;
          goto LABEL_54;
        }

        v9 = v57;
        OUTLINED_FUNCTION_0_20();
        sub_222CE0BC0(&v53, v46);
        __swift_destroy_boxed_opaque_existential_1Tm(&v60);
        OUTLINED_FUNCTION_8_10();
        if (v18)
        {
          goto LABEL_65;
        }
      }

      else
      {
        sub_222CE4EC0(&v60, &v63);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
        if (OUTLINED_FUNCTION_3_16(v30, v31, v32, v33, v34, v35, v36, v37, v15, v50, v51, v52, v53, *(&v53 + 1), v54, *(&v54 + 1), v55, v56, v57, *(&v57 + 1), v58, v59, v60, *(&v60 + 1), v61, v62, v63))
        {
          LOBYTE(v2) = v53;
          v38 = sub_222CEE42C(v53);

          *(&v64 + 1) = v1;
          *&v63 = v38;
          sub_222CE0BC0(&v63, &v53);
          swift_isUniquelyReferenced_nonNull_native();
          *&v57 = v9;
          v1 = v9;
          sub_222CE1050(v49, v14);
          OUTLINED_FUNCTION_1_18();
          if (v18)
          {
            goto LABEL_63;
          }

          OUTLINED_FUNCTION_9_10();
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C318, &qword_222D56100);
          if (OUTLINED_FUNCTION_11_6(v39))
          {
            v1 = v57;
            sub_222CE1050(v49, v14);
            OUTLINED_FUNCTION_2_18();
            if (!v19)
            {
              goto LABEL_68;
            }

            if (v2)
            {
              goto LABEL_45;
            }
          }

          else if (v2)
          {
            goto LABEL_45;
          }

          v9 = v57;
          OUTLINED_FUNCTION_0_20();
          sub_222CE0BC0(&v53, v47);
          __swift_destroy_boxed_opaque_existential_1Tm(&v60);
          OUTLINED_FUNCTION_8_10();
          if (v18)
          {
            goto LABEL_67;
          }
        }

        else
        {
          sub_222CE4EC0(&v60, &v63);
          swift_isUniquelyReferenced_nonNull_native();
          *&v53 = v9;
          sub_222CE1050(v49, v14);
          OUTLINED_FUNCTION_1_18();
          if (v18)
          {
            goto LABEL_64;
          }

          OUTLINED_FUNCTION_9_10();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C318, &qword_222D56100);
          v1 = &v53;
          if (sub_222D52E4C())
          {
            v1 = v53;
            sub_222CE1050(v49, v14);
            OUTLINED_FUNCTION_2_18();
            if (!v19)
            {
              goto LABEL_68;
            }

            if (v2)
            {
LABEL_53:

              v9 = v53;
              OUTLINED_FUNCTION_6_15();
              v45 = &v63;
LABEL_54:
              sub_222CE0BC0(v45, v1);
              v42 = &v60;
LABEL_55:
              __swift_destroy_boxed_opaque_existential_1Tm(v42);
              goto LABEL_56;
            }
          }

          else if (v2)
          {
            goto LABEL_53;
          }

          v9 = v53;
          OUTLINED_FUNCTION_0_20();
          sub_222CE0BC0(&v63, v43);
          __swift_destroy_boxed_opaque_existential_1Tm(&v60);
          OUTLINED_FUNCTION_8_10();
          if (v18)
          {
            goto LABEL_66;
          }
        }
      }

      *(v9 + 16) = v44;
LABEL_56:
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    sub_222CE2D34(&v53, &v63);
    v2 = *(&v64 + 1);
    v16 = v65;
    __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
    v17 = (*(v16 + 24))(v2, v16);
    *(&v54 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
    *&v53 = v17;
    sub_222CE0BC0(&v53, &v57);
    swift_isUniquelyReferenced_nonNull_native();
    v52 = v9;
    OUTLINED_FUNCTION_10_8();
    OUTLINED_FUNCTION_1_18();
    if (v18)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_9_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C318, &qword_222D56100);
    v1 = &v52;
    if (sub_222D52E4C())
    {
      v1 = v52;
      sub_222CE1050(v3, v14);
      OUTLINED_FUNCTION_2_18();
      if (!v19)
      {
        goto LABEL_68;
      }
    }

    v3 = v50;
    if (v2)
    {

      v9 = v52;
      OUTLINED_FUNCTION_6_15();
      sub_222CE0BC0(&v57, v1);
      __swift_destroy_boxed_opaque_existential_1Tm(&v60);
    }

    else
    {
      v9 = v52;
      OUTLINED_FUNCTION_0_20();
      sub_222CE0BC0(&v57, v40);
      __swift_destroy_boxed_opaque_existential_1Tm(&v60);
      OUTLINED_FUNCTION_8_10();
      if (v18)
      {
        goto LABEL_62;
      }

      *(v9 + 16) = v41;
    }

    v42 = &v63;
    goto LABEL_55;
  }

LABEL_5:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v6 = 0;
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      goto LABEL_10;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = sub_222D5312C();
  __break(1u);
  return result;
}

void sub_222CEEA28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_222D528FC();
  [a3 setCatId_];
}

void sub_222CEEA8C()
{
  OUTLINED_FUNCTION_19_7();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C668, &qword_222D58038);
    v2 = OUTLINED_FUNCTION_10_9();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_4_19();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(v0 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_222CE4EC0(*(v0 + 56) + 32 * v11, v46);
    *&v45 = v14;
    *(&v45 + 1) = v13;
    v43[2] = v45;
    v44[0] = v46[0];
    v44[1] = v46[1];
    v43[0] = v45;

    swift_dynamicCast();
    sub_222CE0BC0(v44, v38);
    v39 = v34;
    v40 = v36;
    v41 = v37;
    sub_222CE0BC0(v38, v42);
    v35 = v39;
    v36 = v40;
    v37 = v41;
    sub_222CE0BC0(v42, v43);
    v15 = sub_222D52D8C() & ~(-1 << *(v2 + 32));
    if (((-1 << v15) & ~*(v8 + 8 * (v15 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_8_11();
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        if (*(v8 + 8 * v16) != -1)
        {
          OUTLINED_FUNCTION_7_11();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_3_17();
LABEL_21:
    v6 &= v6 - 1;
    OUTLINED_FUNCTION_6_16();
    *(v8 + v20) |= v21;
    OUTLINED_FUNCTION_9_11(v22, v23, v24, v25, v26, v27, v28, v29, v30, v35, v31, v36);
    sub_222CE0BC0(v43, (v33 + 32 * v32));
    OUTLINED_FUNCTION_12_5();
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v0 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_222CEECE8(uint64_t a1, void *a2)
{
  v3 = sub_222D5288C();

  [a2 setParameters_];
}

void sub_222CEED68()
{
  OUTLINED_FUNCTION_19_7();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C668, &qword_222D58038);
    v2 = OUTLINED_FUNCTION_10_9();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_21_6();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  v8 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v11 = (*(v0 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = v11[1];
    *&v32[0] = *v11;
    *(&v32[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_222CE0BC0(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_222CE0BC0(v31, v32);
    sub_222D52D8C();
    OUTLINED_FUNCTION_14_6();
    if (((v15 << v14) & ~*(v8 + 8 * v13)) == 0)
    {
      OUTLINED_FUNCTION_8_11();
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        if (*(v8 + 8 * v16) != -1)
        {
          OUTLINED_FUNCTION_7_11();
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    OUTLINED_FUNCTION_3_17();
LABEL_18:
    v5 &= v5 - 1;
    OUTLINED_FUNCTION_6_16();
    *(v8 + v20) |= v21;
    v23 = *(v2 + 48) + 40 * v22;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    sub_222CE0BC0(v32, (*(v2 + 56) + 32 * v22));
    OUTLINED_FUNCTION_12_5();
  }

  while (v5);
LABEL_5:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v5 = *(v0 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_222CEEFC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_222CEF068()
{
  result = qword_280D3B140;
  if (!qword_280D3B140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D3B140);
  }

  return result;
}

void sub_222CEF0B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C1B8, &qword_222D556D0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  (*(v9 + 16))(aBlock - v10, a1, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  (*(v9 + 32))(v13 + v12, v11, v8);
  aBlock[4] = sub_222CE3CC4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222CE3BA4;
  aBlock[3] = &block_descriptor_1;
  v14 = _Block_copy(aBlock);

  [a2 executeWithCompletionBlock_];
  _Block_release(v14);
}

uint64_t sub_222CEF288()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C1B8, &qword_222D556D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t dispatch thunk of CATGlobals.Builder.withResponseMode(_:)()
{
  return (*(*v0 + 880))();
}

{
  return (*(*v0 + 888))();
}

uint64_t sub_222CEF388()
{
  OUTLINED_FUNCTION_14_2();
  v2 = *v1;
  OUTLINED_FUNCTION_3_22();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_5();
  *v5 = v4;
  *(v2 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_222CEF4A8()
{
  OUTLINED_FUNCTION_33_2();
  sub_222D52C5C();
  OUTLINED_FUNCTION_10_2();
  sub_222D5282C();

  v2 = sub_222D5285C();
  v3 = sub_222D52C2C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[25];
  if (v4)
  {
    OUTLINED_FUNCTION_26_2();
    v6 = OUTLINED_FUNCTION_20_3();
    *(v1 + 4) = OUTLINED_FUNCTION_18_3(4.8149e-34, v6, v7, v8, v9, v10, v11, v12, v13, v6);
    OUTLINED_FUNCTION_19_2(&dword_222CDA000, v14, v15, "CATExecutor (async) completed for patternId: %s");
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_17_3();
  }

  v16 = v0[13];
  v18 = v0[21];
  v17 = v0[22];
  v19 = v0[20];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  (*(v18 + 8))(v17, v19);

  v20 = v0[1];

  return v20(v16);
}

uint64_t sub_222CEF600()
{
  OUTLINED_FUNCTION_14_2();
  v2 = v1;
  OUTLINED_FUNCTION_15_2();
  v3 = *v0;
  OUTLINED_FUNCTION_5_5();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t SirikitDeviceRestrictions.init(builder:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  OUTLINED_FUNCTION_8(a1 + 16, a2);
  v4 = *(a1 + 16);

  *(v2 + 24) = v4;
  return v2;
}

uint64_t sub_222CEF750(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 328, a2);
  *(v2 + 328) = a1;
}

uint64_t sub_222CEF7A8(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 16, a2);
  *(v2 + 16) = a1;
}

void sub_222CEF7E4(uint64_t *a1, uint64_t a2)
{
  v3 = sub_222D521AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222D5250C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = sub_222D526BC();
  (*(*v11 + 992))(v12 & 1);

  v13 = sub_222D5268C();
  (*(*v11 + 1000))(v13 & 1);

  v14 = sub_222D5265C();
  (*(*v11 + 1008))(v14 & 1);

  v15 = sub_222D5269C();
  (*(*v11 + 1016))(v15 & 1);

  v16 = sub_222D5267C();
  (*(*v11 + 1024))(v16 & 1);

  v17 = sub_222D5266C();
  (*(*v11 + 1032))(v17 & 1);

  v18 = sub_222D526CC();
  (*(*v11 + 1040))(v18 & 1);

  v19 = sub_222D526AC();
  v20 = (*(*v11 + 1048))(v19 & 1);
  v21 = sub_222D525EC();
  v22 = (*(*v20 + 1056))(v21 & 1);

  v23 = sub_222D5263C();
  v24 = (*(*v22 + 1072))(v23 & 1);

  v25 = sub_222D5262C();
  v26 = (*(*v24 + 1080))(v25 & 1);

  v27 = sub_222D5262C();
  v28 = (*(*v26 + 1088))((v27 & 1) == 0);

  v29 = sub_222D5264C();
  v30 = (*(*v28 + 1104))(v29 & 1);

  sub_222D525FC();
  v31 = sub_222CE31E0(v10);
  v33 = v32;
  (*(v8 + 8))(v10, v7);
  v50 = v31;
  v51 = v33;
  v52 = v31;
  v53 = v33;
  v34 = *(*v30 + 1176);

  v35 = v34(&v50);

  sub_222CE2920(v50, v51, v52, v53);
  v50 = sub_222CF0540();
  v51 = v36;
  v52 = v50;
  v53 = v36;
  v37 = *(*v35 + 1208);

  v38 = v37(&v50);

  sub_222CE2920(v50, v51, v52, v53);
  sub_222D525BC();
  v39 = sub_222D5217C();
  v41 = v40;
  (*(v4 + 8))(v6, v3);
  v50 = v39;
  v51 = v41;
  v52 = v39;
  v53 = v41;
  v42 = *(*v38 + 1240);

  v43 = v42(&v50);

  sub_222CE2920(v50, v51, v52, v53);
  v44 = sub_222D5260C();
  v46 = 0xE000000000000000;
  if (v45)
  {
    v46 = v45;
    v47 = v44;
  }

  else
  {
    v47 = 0;
  }

  v50 = v47;
  v51 = v46;
  v52 = v47;
  v53 = v46;
  v48 = *(*v43 + 1256);

  v48(&v50);

  sub_222CE2920(v50, v51, v52, v53);
}

uint64_t DialogPerson.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_30_2();
  v2 = swift_allocObject();
  DialogPerson.init(builder:)(a1);
  return v2;
}

void sub_222CEFFE4()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 10), v5);
  v1[10] = v0;
  v1[11] = v2;
  v1[12] = v3;
  v1[13] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222CF0068()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 14), v5);
  v1[14] = v0;
  v1[15] = v2;
  v1[16] = v3;
  v1[17] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222CF0104()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 23), v5);
  v1[23] = v0;
  v1[24] = v2;
  v1[25] = v3;
  v1[26] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t DialogPerson.__deallocating_deinit()
{
  DialogPerson.deinit();
  v0 = OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t DialogPersonHandle.deinit()
{
  sub_222CE2920(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_222CE2920(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  sub_222CE2920(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  return v0;
}

void sub_222CF01F8()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 2), v5);
  v1[2] = v0;
  v1[3] = v2;
  v1[4] = v3;
  v1[5] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222CF0250()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 6), v5);
  v1[6] = v0;
  v1[7] = v2;
  v1[8] = v3;
  v1[9] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t DialogPerson.deinit()
{
  sub_222CE2920(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_222CE2920(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  sub_222CE2920(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  sub_222CE2920(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  sub_222CE2920(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));

  sub_222CE2920(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216));

  sub_222CE2920(*(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272));
  return v0;
}

uint64_t DialogPersonHandle.__deallocating_deinit()
{
  DialogPersonHandle.deinit();
  v0 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

_BYTE *sub_222CF03B0()
{
  v0 = objc_allocWithZone(type metadata accessor for CATGlobals(0));

  return CATGlobals.init(builder:)(v1);
}

uint64_t sub_222CF0418(void *a1)
{
  type metadata accessor for SirikitDeviceRestrictions.Builder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_222D5234C())
  {
    v3 = 1;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v3 = sub_222D5223C();
  }

  swift_beginAccess();
  *(inited + 16) = v3 & 1;
  type metadata accessor for SirikitDeviceRestrictions();
  swift_allocObject();
  return SirikitDeviceRestrictions.init(builder:)(inited, v4);
}

uint64_t sub_222CF0540()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C5C8, &qword_222D57958);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v25 - v1;
  v3 = sub_222D5251C();
  v26 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = sub_222D5253C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  sub_222D525DC();
  (*(v9 + 104))(v12, *MEMORY[0x277D61BE8], v8);
  v15 = sub_222D5252C();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v16(v14, v8);
  if (v15)
  {
    return 0x79616C705F726163;
  }

  sub_222D525CC();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    v17 = 0x746375646F7270;
    sub_222CDD130(v2, &qword_27D03C5C8, &qword_222D57958);
  }

  else
  {
    v18 = v26;
    (*(v26 + 32))(v7, v2, v3);
    v19 = v25;
    (*(v18 + 16))(v25, v7, v3);
    v20 = (*(v18 + 88))(v19, v3);
    if (v20 == *MEMORY[0x277D61BA8])
    {
      (*(v18 + 8))(v7, v3);
      return 0x656E6F687069;
    }

    else
    {
      v21 = v20;
      if (v20 == *MEMORY[0x277D61B98])
      {
        (*(v18 + 8))(v7, v3);
        return 1684107369;
      }

      else if (v20 == *MEMORY[0x277D61BB8])
      {
        (*(v18 + 8))(v7, v3);
        return 0x646F70656D6F68;
      }

      else if (v20 == *MEMORY[0x277D61BB0])
      {
        (*(v18 + 8))(v7, v3);
        return 0x76745F656C707061;
      }

      else if (v20 == *MEMORY[0x277D61B90])
      {
        (*(v18 + 8))(v7, v3);
        return 6513005;
      }

      else if (v20 == *MEMORY[0x277D61BA0])
      {
        (*(v18 + 8))(v7, v3);
        return 0x61775F656C707061;
      }

      else
      {
        v22 = *MEMORY[0x277D61BC0];
        v23 = *(v18 + 8);
        v23(v7, v3);
        if (v21 == v22)
        {
          return 0x5F7974696C616572;
        }

        else
        {
          v17 = 0x746375646F7270;
          v23(v19, v3);
        }
      }
    }
  }

  return v17;
}

void sub_222CF0A4C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 37), v5);
  v1[37] = v0;
  v1[38] = v2;
  v1[39] = v3;
  v1[40] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

unint64_t sub_222CF0AA4()
{
  result = qword_280D3B150;
  if (!qword_280D3B150)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C390, &qword_222D56718);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_280D3B150);
  }

  return result;
}

unint64_t sub_222CF0B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280D3B158;
  if (!qword_280D3B158)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83E70], MEMORY[0x277D83E40], a3, v3, v4);
    atomic_store(result, &qword_280D3B158);
  }

  return result;
}

uint64_t sub_222CF0B5C(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67(v2 + 33, a2);
  *(v2 + 33) = a1;
}

uint64_t SirikitDeviceState.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_27_0();
  v2 = swift_allocObject();
  SirikitDeviceState.init(builder:)(a1);
  return v2;
}

uint64_t sub_222CF0BD0()
{
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_2_20();
  v2 = *v1;
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;

  OUTLINED_FUNCTION_10_10();

  return v4(v0);
}

uint64_t SirikitDeviceState.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_25(a1 + 16, v68);
  *(v1 + 24) = *(a1 + 16);
  OUTLINED_FUNCTION_25(a1 + 17, v67);
  *(v1 + 25) = *(a1 + 17);
  OUTLINED_FUNCTION_25(a1 + 18, v66);
  *(v1 + 26) = *(a1 + 18);
  OUTLINED_FUNCTION_25(a1 + 19, v65);
  *(v1 + 27) = *(a1 + 19);
  OUTLINED_FUNCTION_25(a1 + 20, v64);
  *(v1 + 28) = *(a1 + 20);
  OUTLINED_FUNCTION_25(a1 + 21, v63);
  *(v1 + 29) = *(a1 + 21);
  OUTLINED_FUNCTION_25(a1 + 22, v62);
  *(v1 + 30) = *(a1 + 22);
  OUTLINED_FUNCTION_25(a1 + 23, v61);
  *(v1 + 31) = *(a1 + 23);
  OUTLINED_FUNCTION_25(a1 + 24, v60);
  *(v1 + 32) = *(a1 + 24);
  OUTLINED_FUNCTION_25(a1 + 25, v59);
  *(v1 + 33) = *(a1 + 25);
  OUTLINED_FUNCTION_25(a1 + 26, v58);
  *(v1 + 34) = *(a1 + 26);
  OUTLINED_FUNCTION_25(a1 + 27, v57);
  *(v1 + 35) = *(a1 + 27);
  OUTLINED_FUNCTION_25(a1 + 28, v56);
  *(v1 + 36) = *(a1 + 28);
  OUTLINED_FUNCTION_25(a1 + 29, v55);
  *(v1 + 37) = *(a1 + 29);
  OUTLINED_FUNCTION_25(a1 + 30, v54);
  *(v1 + 38) = *(a1 + 30);
  OUTLINED_FUNCTION_25(a1 + 31, v53);
  *(v1 + 39) = *(a1 + 31);
  OUTLINED_FUNCTION_25(a1 + 32, v52);
  *(v1 + 40) = *(a1 + 32);
  OUTLINED_FUNCTION_25(a1 + 33, v51);
  *(v1 + 41) = *(a1 + 33);
  OUTLINED_FUNCTION_25(a1 + 40, v50);
  v39 = *(a1 + 48);
  v40 = *(a1 + 40);
  v37 = *(a1 + 64);
  v38 = *(a1 + 56);
  *(v1 + 48) = v40;
  *(v1 + 56) = v39;
  *(v1 + 64) = v38;
  *(v1 + 72) = v37;
  OUTLINED_FUNCTION_25(a1 + 72, v49);
  v35 = *(a1 + 80);
  v36 = *(a1 + 72);
  v33 = *(a1 + 96);
  v34 = *(a1 + 88);
  *(v1 + 80) = v36;
  *(v1 + 88) = v35;
  *(v1 + 96) = v34;
  *(v1 + 104) = v33;
  OUTLINED_FUNCTION_25(a1 + 104, v48);
  v31 = *(a1 + 112);
  v32 = *(a1 + 104);
  v29 = *(a1 + 128);
  v30 = *(a1 + 120);
  *(v1 + 112) = v32;
  *(v1 + 120) = v31;
  *(v1 + 128) = v30;
  *(v1 + 136) = v29;
  OUTLINED_FUNCTION_25(a1 + 136, v47);
  v27 = *(a1 + 144);
  v28 = *(a1 + 136);
  v25 = *(a1 + 160);
  v26 = *(a1 + 152);
  *(v1 + 144) = v28;
  *(v1 + 152) = v27;
  *(v1 + 160) = v26;
  *(v1 + 168) = v25;
  OUTLINED_FUNCTION_25(a1 + 168, v46);
  v23 = *(a1 + 176);
  v24 = *(a1 + 168);
  v21 = *(a1 + 192);
  v22 = *(a1 + 184);
  *(v1 + 176) = v24;
  *(v1 + 184) = v23;
  *(v1 + 192) = v22;
  *(v1 + 200) = v21;
  OUTLINED_FUNCTION_25(a1 + 200, v45);
  v19 = *(a1 + 208);
  v20 = *(a1 + 200);
  v17 = *(a1 + 224);
  v18 = *(a1 + 216);
  *(v1 + 208) = v20;
  *(v1 + 216) = v19;
  *(v1 + 224) = v18;
  *(v1 + 232) = v17;
  OUTLINED_FUNCTION_25(a1 + 232, v44);
  v15 = *(a1 + 240);
  v16 = *(a1 + 232);
  v13 = *(a1 + 256);
  v14 = *(a1 + 248);
  *(v1 + 240) = v16;
  *(v1 + 248) = v15;
  *(v1 + 256) = v14;
  *(v1 + 264) = v13;
  OUTLINED_FUNCTION_25(a1 + 264, v43);
  v3 = *(a1 + 272);
  v12 = *(a1 + 264);
  v4 = *(a1 + 280);
  v5 = *(a1 + 288);
  *(v1 + 272) = v12;
  *(v1 + 280) = v3;
  *(v1 + 288) = v4;
  *(v1 + 296) = v5;
  OUTLINED_FUNCTION_25(a1 + 296, v42);
  v6 = *(a1 + 296);
  v7 = *(a1 + 304);
  v8 = *(a1 + 312);
  v9 = *(a1 + 320);
  *(v1 + 304) = v6;
  *(v1 + 312) = v7;
  *(v1 + 320) = v8;
  *(v1 + 328) = v9;
  OUTLINED_FUNCTION_25(a1 + 328, v41);
  v10 = *(a1 + 328);
  sub_222CE3060(v40, v39, v38, v37);
  sub_222CE3060(v36, v35, v34, v33);
  sub_222CE3060(v32, v31, v30, v29);
  sub_222CE3060(v28, v27, v26, v25);
  sub_222CE3060(v24, v23, v22, v21);
  sub_222CE3060(v20, v19, v18, v17);
  sub_222CE3060(v16, v15, v14, v13);
  sub_222CE3060(v12, v3, v4, v5);
  sub_222CE3060(v6, v7, v8, v9);

  *(v1 + 336) = v10;
  return v1;
}