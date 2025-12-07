uint64_t sub_2166C68D8()
{
  v2 = sub_217008144();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MusicUIPPT.Test(0);
  OUTLINED_FUNCTION_43_3();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v4 + 8);
  v10(v0 + v5, v2);
  v11 = v0 + v9;

  v12 = *(v1 + 28);
  sub_217005EF4();
  OUTLINED_FUNCTION_9_0();
  (*(v13 + 8))(v11 + v12);
  v10(v11 + *(v1 + 36), v2);

  return swift_deallocObject();
}

uint64_t sub_2166C6A54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2166C6ABC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_202_0();

    return v7();
  }

  else
  {
    v9 = *(v3 + 16);
    v10 = *(v5 + 8);

    return v10(v9);
  }
}

uint64_t sub_2166C6BDC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v7 + 296) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2166C6CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicUIPPT.Test(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2166C6D60()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_247();

  v1 = sub_217007C84();
  v2 = sub_21700EDA4();
  if (os_log_type_enabled(v1, v2))
  {
    *OUTLINED_FUNCTION_43() = 0;
    OUTLINED_FUNCTION_123_0();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_56_1();
  }

  v8 = v0[19];

  v10 = *(v8 + 8);
  v9 = v8 + 8;
  v0[39] = v10;
  v11 = OUTLINED_FUNCTION_115();
  v12(v11);
  if (qword_280E485B8 != -1)
  {
    OUTLINED_FUNCTION_122(&qword_280E485B8);
  }

  OUTLINED_FUNCTION_232();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94D0, &unk_21702BAF0);
  v14 = __swift_project_value_buffer(v13, qword_280E73E20);
  v15 = OUTLINED_FUNCTION_131(v14);
  v17 = v16(v15);
  OUTLINED_FUNCTION_244(v17, "UIBootstrap");
  v18 = *(v9 + 72);
  v0[43] = v18;
  v19 = v18;
  v20 = swift_task_alloc();
  v0[44] = v20;
  *v20 = v0;
  v21 = OUTLINED_FUNCTION_66_6(v20);

  return sub_216843200(v21, v22, v23, v24);
}

uint64_t sub_2166C6ED4(uint64_t a1)
{
  v2 = type metadata accessor for MusicUIPPT.Test(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_251(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_251_0()
{

  return sub_217007CA4();
}

void OUTLINED_FUNCTION_53_3()
{
  *(v2 - 144) = 0;
  *(v2 - 136) = 0;
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
}

uint64_t OUTLINED_FUNCTION_53_5(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CC8CE8];

  return sub_2166D9530(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_53_6(uint64_t a1, uint64_t a2)
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_53_9(uint64_t a1)
{
  v4 = *(a1 + 48);
  v5 = *(v2 + 8);

  return sub_2168AEDA8(v5, v1 + v4, type metadata accessor for ContainerDetailTitlesView);
}

uint64_t OUTLINED_FUNCTION_53_10(uint64_t a1, __n128 a2)
{
  *(a1 + 16) = a2;
  *(a1 + 32) = v3;
  *(a1 + 40) = v2;

  return sub_2167A2998(a1);
}

uint64_t OUTLINED_FUNCTION_53_11()
{

  return sub_217007C94();
}

uint64_t OUTLINED_FUNCTION_53_14()
{

  return sub_216697664(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_53_17(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_53_18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 200) = a2;
  *(v2 - 192) = a1;
  return v2 - 200;
}

uint64_t OUTLINED_FUNCTION_53_20(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_53_23()
{
  type metadata accessor for PlaylistTrackLockup(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_221(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_54_5(uint64_t a1)
{

  return swift_once();
}

__n128 *OUTLINED_FUNCTION_54_6(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v3 = *(v2 - 168);
  result[2].n128_u64[0] = *(v2 - 160);
  result[2].n128_u64[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 120) = v2;
  *(v3 - 112) = a2;
  *(v3 - 136) = a1;

  return type metadata accessor for MusicUIPPT.Test(0);
}

void *OUTLINED_FUNCTION_54_8(uint64_t a1)
{
  v1[90] = a1;

  return memcpy(v1 + 114, v1 + 81, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_54_13(uint64_t a1)
{
  v4 = *(v2 - 208);

  return sub_21695BCCC(a1, v4, v1);
}

uint64_t OUTLINED_FUNCTION_54_15()
{

  return sub_216697664(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_54_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  v22 = *(v20 - 88);
  v23 = *(v20 - 80);

  return sub_2166A85FC(v22, v23, va);
}

uint64_t OUTLINED_FUNCTION_54_18()
{
}

uint64_t OUTLINED_FUNCTION_54_21()
{
}

uint64_t OUTLINED_FUNCTION_54_27()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_54_28(uint64_t a1)
{
  v7 = *(a1 + 24);
  *(v3 + 40) = v7;

  return sub_216683A80(v1 + v7, v2, v4, v5);
}

uint64_t sub_2166C7454@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC7MusicUI9Bootstrap_logger;
  v5 = sub_217007CA4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2166C74D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, char *a5@<X8>)
{
  v25 = a3;
  v26 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70B8, qword_21703E820);
  MEMORY[0x28223BE20](v8 - 8);
  v24 = &v23 - v9;
  v10 = sub_217005EF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E3C2D8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280E3C2E0);
  v15 = *(v11 + 16);
  v15(v13, v14, v10);
  *a5 = &unk_28290D870;
  v16 = type metadata accessor for MusicUIPPT.Test(0);
  v17 = &a5[*(v16 + 24)];
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = v25;
  v17[16] = v25;
  v15(&a5[*(v16 + 20)], v13, v10);
  v27 = 0;
  v28 = 0xE000000000000000;
  MEMORY[0x21CE9F490](1701670728, 0xE400000000000000);
  sub_2166C52E8(a1, a2, v18);
  if (v26)
  {
    v19 = 0x70616373646E614CLL;
  }

  else
  {
    v19 = 0x7469617274726F50;
  }

  if (v26)
  {
    v20 = 0xE900000000000065;
  }

  else
  {
    v20 = 0xE800000000000000;
  }

  MEMORY[0x21CE9F490](v19, v20);

  sub_217008154();
  if (qword_280E46108 != -1)
  {
    swift_once();
  }

  _s7SwiftUI11PPTTestCaseV4NameV05MusicB0E11descriptionSSvg_0();
  v21 = v24;
  sub_2166C552C(a5, v24);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v16);
  swift_beginAccess();
  sub_2166C5708();
  swift_endAccess();
  return (*(v11 + 8))(v13, v10);
}

uint64_t OUTLINED_FUNCTION_128_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v5 - 128);

  return sub_216683A80(v4, v7, a3, a4);
}

uint64_t sub_2166C7824()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_217005EF4();
  __swift_allocate_value_buffer(v3, qword_280E3C2E0);
  v4 = __swift_project_value_buffer(v3, qword_280E3C2E0);
  sub_217005ED4();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_65_4()
{

  return sub_2168A55D0(v0, type metadata accessor for ContentDescriptor.ContentKind.AppleCurator);
}

uint64_t OUTLINED_FUNCTION_65_12()
{
}

uint64_t OUTLINED_FUNCTION_65_15(uint64_t a1)
{
  v2[55] = a1;
  v2[56] = *(v3 + 16);
  v2[57] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_65_18()
{

  return sub_216FBFF10(v0);
}

uint64_t OUTLINED_FUNCTION_65_19()
{

  return sub_216FD530C(v0);
}

uint64_t OUTLINED_FUNCTION_246@<X0>(uint64_t a2@<X8>)
{
  v6 = (v4 + v2);
  *v6 = a2;
  v6[1] = v3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_246_0()
{
}

uint64_t OUTLINED_FUNCTION_246_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 - 144) = a4;
  *(v5 - 136) = v4;
  *(v5 - 160) = a3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_32_5()
{
  v2 = *(v1 - 456);
  v3 = v0 + v2[13];
  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v0 + v2[9]) = 0;
  return v0 + v2[10];
}

uint64_t OUTLINED_FUNCTION_32_8()
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_32_9()
{

  return sub_216C6C5E8(v0);
}

uint64_t OUTLINED_FUNCTION_32_11@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);

  return sub_216838830(v2, v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_32_14()
{

  return sub_2166A6F60(v2 - 128, v2 - 168, v0, v1);
}

uint64_t OUTLINED_FUNCTION_32_16()
{

  return sub_21700BC04();
}

uint64_t OUTLINED_FUNCTION_32_18(uint64_t result, void *a2)
{
  *a2 = v2;
  a2[1] = v3;
  *(v4 - 128) = result;
  *(v4 - 96) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_19(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_21700F554();
}

uint64_t OUTLINED_FUNCTION_32_21(uint64_t a1)
{

  return sub_2166997CC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_32_24()
{
}

uint64_t OUTLINED_FUNCTION_32_26()
{

  return type metadata accessor for JSSubscriptionStatusCoordinator();
}

uint64_t OUTLINED_FUNCTION_32_29()
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_32_30()
{

  return sub_217007CA4();
}

uint64_t OUTLINED_FUNCTION_32_34(uint64_t a1)
{

  return sub_216E3A3D8(v2, a1 + v1);
}

uint64_t OUTLINED_FUNCTION_32_38()
{

  return sub_216EF8278(v1, v0);
}

void View.registerBrowsePPTs<A, B>(pageProvider:)()
{
  OUTLINED_FUNCTION_49();
  v4 = OUTLINED_FUNCTION_44_7(v2, v3);
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_2_21();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42_2();
  v75 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_16_11(v8);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v10 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_17_11(v10);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105();
  v12 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_5_14(v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = OUTLINED_FUNCTION_9_16(v14, v72);
  OUTLINED_FUNCTION_15_4(v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_7(v17, v73);
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = OUTLINED_FUNCTION_3_25(v19, v74);
  sub_2166C89C4(v20, v21, v22, v23, v24);
  v25 = OUTLINED_FUNCTION_14_6();
  sub_2166C64F0(v25, v26, v27, v1, v28);
  sub_2166C6ED4(v0);
  v29 = OUTLINED_FUNCTION_55_4();
  sub_2166C89C4(v29, 5, 0, 0, v30);
  v31 = OUTLINED_FUNCTION_26_9();
  sub_2166C64F0(v31, v32, v33, v75, v34);
  sub_2166C6ED4(v0);
  v35 = OUTLINED_FUNCTION_31_11();
  v36(v35);
  OUTLINED_FUNCTION_47_4();
  sub_2166C89C4(v37, v38, v39, 0, v40);
  OUTLINED_FUNCTION_23_3();
  sub_2166C6ED4(v0);
  v41 = OUTLINED_FUNCTION_28_11();
  v42(v41);
  v43 = OUTLINED_FUNCTION_6_17();
  sub_2166C89C4(v43, v44, v45, 0, v46);
  OUTLINED_FUNCTION_25_3();
  sub_2166C6ED4(v0);
  v47 = OUTLINED_FUNCTION_33_8();
  v48(v47);
  v49 = OUTLINED_FUNCTION_7_10();
  sub_2166C89C4(v49, v50, v51, 1, v52);
  OUTLINED_FUNCTION_4_14();
  sub_2166C6ED4(v0);
  v53 = OUTLINED_FUNCTION_32_6();
  v54(v53);
  v55 = OUTLINED_FUNCTION_55_4();
  sub_2166C89C4(v55, 6, 0, 1, v56);
  OUTLINED_FUNCTION_12_12();
  sub_2166C6ED4(v0);
  v57 = OUTLINED_FUNCTION_29_6();
  v58(v57);
  OUTLINED_FUNCTION_47_4();
  sub_2166C89C4(v59, v60, v61, 1, v62);
  OUTLINED_FUNCTION_11_11();
  sub_2166C6ED4(v0);
  v63 = OUTLINED_FUNCTION_30_2();
  v64(v63);
  v65 = OUTLINED_FUNCTION_6_17();
  sub_2166C89C4(v65, v66, v67, 1, v68);
  v69 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_24_8(v69);
  sub_2166C6ED4(v0);
  v70 = OUTLINED_FUNCTION_35_6();
  v71(v70);
  OUTLINED_FUNCTION_26();
}

uint64_t OUTLINED_FUNCTION_49_5()
{

  return sub_217007EF4();
}

uint64_t OUTLINED_FUNCTION_49_7(unint64_t *a1)
{
  v4 = MEMORY[0x277D83958];

  return sub_2166D9530(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_49_8(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2080;
  *(v2 - 88) = 46;
  *(v2 - 80) = 0xE100000000000000;

  return sub_21700DF14();
}

uint64_t OUTLINED_FUNCTION_49_10()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 - 168));

  return type metadata accessor for ContentDescriptor(0);
}

uint64_t OUTLINED_FUNCTION_49_15@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_216681B04(v3 + a3, v4 - 128, a1, a2);
}

uint64_t OUTLINED_FUNCTION_49_17()
{

  return sub_216697664(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_49_20(uint64_t a1, uint64_t a2)
{

  return sub_216681B04(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_49_21(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_49_22(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_49_23(uint64_t a1)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_49_24()
{

  return sub_216B914F8(v3, v1 + v2, v0);
}

uint64_t OUTLINED_FUNCTION_49_27(uint64_t result)
{
  *(result + 16) = v3;
  *(result + 24) = v2;
  *(result + 32) = v1;
  *(result + 40) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_49_29(uint64_t a1)
{
  *(v1 + 480) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_49_30()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_49_31(uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_67_4()
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_67_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_217007E84();
}

uint64_t OUTLINED_FUNCTION_67_10(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 4) = a1;
  *(v3 + 12) = 2082;

  return sub_2166A85FC(v5, v4, va);
}

uint64_t OUTLINED_FUNCTION_67_13()
{

  return sub_21677A3F0(v1, v0);
}

uint64_t sub_2166C89C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, char *a5@<X8>)
{
  v25 = a3;
  v26 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70B8, qword_21703E820);
  MEMORY[0x28223BE20](v8 - 8);
  v24 = &v23 - v9;
  v10 = sub_217005EF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E395D0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280E395D8);
  v15 = *(v11 + 16);
  v15(v13, v14, v10);
  *a5 = &unk_28290D8A0;
  v16 = type metadata accessor for MusicUIPPT.Test(0);
  v17 = &a5[*(v16 + 24)];
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = v25;
  v17[16] = v25;
  v15(&a5[*(v16 + 20)], v13, v10);
  v27 = 0;
  v28 = 0xE000000000000000;
  MEMORY[0x21CE9F490](0x6573776F7242, 0xE600000000000000);
  sub_2166C52E8(a1, a2, v18);
  if (v26)
  {
    v19 = 0x70616373646E614CLL;
  }

  else
  {
    v19 = 0x7469617274726F50;
  }

  if (v26)
  {
    v20 = 0xE900000000000065;
  }

  else
  {
    v20 = 0xE800000000000000;
  }

  MEMORY[0x21CE9F490](v19, v20);

  sub_217008154();
  if (qword_280E46108 != -1)
  {
    swift_once();
  }

  _s7SwiftUI11PPTTestCaseV4NameV05MusicB0E11descriptionSSvg_0();
  v21 = v24;
  sub_2166C552C(a5, v24);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v16);
  swift_beginAccess();
  sub_2166C5708();
  swift_endAccess();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2166C8CC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_217005EF4();
  __swift_allocate_value_buffer(v3, qword_280E395D8);
  v4 = __swift_project_value_buffer(v3, qword_280E395D8);
  sub_217005ED4();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_66_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_66_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_66_7()
{

  return sub_21700CFA4();
}

uint64_t OUTLINED_FUNCTION_66_12()
{
  v2 = *(v0 - 240);
  *(v0 - 192) = *(v0 - 256);
  *(v0 - 176) = v2;
  *(v0 - 160) = *(v0 - 224);
  *(v0 - 144) = *(v0 - 208);

  return sub_216826960((v0 - 192) | 8, v0 - 136);
}

void OUTLINED_FUNCTION_66_14()
{
}

id OUTLINED_FUNCTION_156()
{
  v2 = *(v0 + 176);
  *(v0 + 56) = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_56_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return type metadata accessor for PageView(0, va);
}

uint64_t OUTLINED_FUNCTION_56_13()
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_56_14()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_56_22()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_56_23()
{

  return sub_216683A80(v4 + v3, v5 + v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_56_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_112_0()
{

  return swift_getOpaqueTypeMetadata2();
}

void OUTLINED_FUNCTION_112_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_112_4@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_2168AEDA8(v3, v2 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_112_8(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t sub_2166C9300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_40_3(uint64_t a1)
{

  return sub_2167826A4(v1, a1);
}

uint64_t OUTLINED_FUNCTION_40_6()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_40_7(uint64_t a1)
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_40_8()
{

  return sub_216697664(v0, v1, v2);
}

void OUTLINED_FUNCTION_40_10()
{
  v2 = *(v0 + 152);
}

uint64_t OUTLINED_FUNCTION_40_11()
{

  return sub_21678C1C4();
}

uint64_t OUTLINED_FUNCTION_40_17(uint64_t result)
{
  *(result + 64) = 0x6F54646461;
  *(result + 72) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_23(uint64_t a1)
{
  *(v1 + 120) = a1;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_40_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_40_26@<X0>(uint64_t a1@<X8>)
{
  v1[38] = a1;
  v1[31] = v5;
  v1[32] = v4;
  v1[33] = v3;
  v1[34] = v2;
  return v6 + 32;
}

uint64_t OUTLINED_FUNCTION_40_27(uint64_t a1)
{

  return sub_21700E494();
}

uint64_t OUTLINED_FUNCTION_40_28(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_21700F7D4();
}

uint64_t OUTLINED_FUNCTION_1186(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_2166A85FC(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_40_31(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

_OWORD *OUTLINED_FUNCTION_40_32()
{
  v4 = (*(v0 + 56) + 32 * v1);

  return sub_2166EF9C4(v4, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_195_0()
{
}

void View.registerRadioPPTs<A, B>(pageProvider:)()
{
  OUTLINED_FUNCTION_49();
  v4 = OUTLINED_FUNCTION_44_7(v2, v3);
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_2_21();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42_2();
  v75 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_16_11(v8);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v10 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_17_11(v10);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105();
  v12 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_5_14(v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = OUTLINED_FUNCTION_9_16(v14, v72);
  OUTLINED_FUNCTION_15_4(v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_7(v17, v73);
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = OUTLINED_FUNCTION_3_25(v19, v74);
  sub_2166C9BB8(v20, v21, v22, v23, v24);
  v25 = OUTLINED_FUNCTION_14_6();
  sub_2166C64F0(v25, v26, v27, v1, v28);
  sub_2166C6ED4(v0);
  v29 = OUTLINED_FUNCTION_55_4();
  sub_2166C9BB8(v29, 4, 0, 0, v30);
  v31 = OUTLINED_FUNCTION_26_9();
  sub_2166C64F0(v31, v32, v33, v75, v34);
  sub_2166C6ED4(v0);
  v35 = OUTLINED_FUNCTION_31_11();
  v36(v35);
  OUTLINED_FUNCTION_47_4();
  sub_2166C9BB8(v37, v38, v39, 0, v40);
  OUTLINED_FUNCTION_23_3();
  sub_2166C6ED4(v0);
  v41 = OUTLINED_FUNCTION_28_11();
  v42(v41);
  v43 = OUTLINED_FUNCTION_6_17();
  sub_2166C9BB8(v43, v44, v45, 0, v46);
  OUTLINED_FUNCTION_25_3();
  sub_2166C6ED4(v0);
  v47 = OUTLINED_FUNCTION_33_8();
  v48(v47);
  v49 = OUTLINED_FUNCTION_7_10();
  sub_2166C9BB8(v49, v50, v51, 1, v52);
  OUTLINED_FUNCTION_4_14();
  sub_2166C6ED4(v0);
  v53 = OUTLINED_FUNCTION_32_6();
  v54(v53);
  v55 = OUTLINED_FUNCTION_55_4();
  sub_2166C9BB8(v55, 5, 0, 1, v56);
  OUTLINED_FUNCTION_12_12();
  sub_2166C6ED4(v0);
  v57 = OUTLINED_FUNCTION_29_6();
  v58(v57);
  OUTLINED_FUNCTION_47_4();
  sub_2166C9BB8(v59, v60, v61, 1, v62);
  OUTLINED_FUNCTION_11_11();
  sub_2166C6ED4(v0);
  v63 = OUTLINED_FUNCTION_30_2();
  v64(v63);
  v65 = OUTLINED_FUNCTION_6_17();
  sub_2166C9BB8(v65, v66, v67, 1, v68);
  v69 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_24_8(v69);
  sub_2166C6ED4(v0);
  v70 = OUTLINED_FUNCTION_35_6();
  v71(v70);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2166C9BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, char *a5@<X8>)
{
  v25 = a3;
  v26 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70B8, qword_21703E820);
  MEMORY[0x28223BE20](v8 - 8);
  v24 = &v23 - v9;
  v10 = sub_217005EF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E39E88 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280E39E90);
  v15 = *(v11 + 16);
  v15(v13, v14, v10);
  *a5 = &unk_28290D8D0;
  v16 = type metadata accessor for MusicUIPPT.Test(0);
  v17 = &a5[*(v16 + 24)];
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = v25;
  v17[16] = v25;
  v15(&a5[*(v16 + 20)], v13, v10);
  v27 = 0;
  v28 = 0xE000000000000000;
  MEMORY[0x21CE9F490](0x6F69646152, 0xE500000000000000);
  sub_2166C52E8(a1, a2, v18);
  if (v26)
  {
    v19 = 0x70616373646E614CLL;
  }

  else
  {
    v19 = 0x7469617274726F50;
  }

  if (v26)
  {
    v20 = 0xE900000000000065;
  }

  else
  {
    v20 = 0xE800000000000000;
  }

  MEMORY[0x21CE9F490](v19, v20);

  sub_217008154();
  if (qword_280E46108 != -1)
  {
    swift_once();
  }

  _s7SwiftUI11PPTTestCaseV4NameV05MusicB0E11descriptionSSvg_0();
  v21 = v24;
  sub_2166C552C(a5, v24);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v16);
  swift_beginAccess();
  sub_2166C5708();
  swift_endAccess();
  return (*(v11 + 8))(v13, v10);
}

uint64_t type metadata accessor for MusicTabChangePublisher(uint64_t a1)
{
  result = qword_280E46AB8;
  if (!qword_280E46AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166C9F08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_217005EF4();
  __swift_allocate_value_buffer(v3, qword_280E39E90);
  v4 = __swift_project_value_buffer(v3, qword_280E39E90);
  sub_217005ED4();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

void sub_2166CA018(uint64_t a1)
{
  sub_2166CA810();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void View.registerArtistDetailPPTs<A, B>(pageProvider:)()
{
  OUTLINED_FUNCTION_49();
  v4 = OUTLINED_FUNCTION_54_7(v2, v3);
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_2_21();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42_2();
  v7 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  v9 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_16_11(v9);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105();
  v11 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_17_11(v11);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  v13 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_5_14(v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = OUTLINED_FUNCTION_9_16(v15, v81);
  OUTLINED_FUNCTION_15_4(v16);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_7(v18, v82);
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = OUTLINED_FUNCTION_3_25(v20, v83);
  sub_2166CA500(v21, v22, v23, v24, v25);
  v26 = OUTLINED_FUNCTION_14_6();
  sub_2166C64F0(v26, v27, v28, v1, v29);
  sub_2166C6ED4(v0);
  v30 = OUTLINED_FUNCTION_50_4();
  sub_2166CA500(v30, v31, v32, v33, v34);
  v35 = OUTLINED_FUNCTION_26_9();
  sub_2166C64F0(v35, v36, v37, v7, v38);
  sub_2166C6ED4(v0);
  v39 = OUTLINED_FUNCTION_31_11();
  v40(v39);
  v41 = OUTLINED_FUNCTION_48_4();
  sub_2166CA500(v41, v42, v43, v44, v45);
  OUTLINED_FUNCTION_23_3();
  sub_2166C6ED4(v0);
  v46 = OUTLINED_FUNCTION_28_11();
  v47(v46);
  v48 = OUTLINED_FUNCTION_6_17();
  sub_2166CA500(v48, v49, v50, 0, v51);
  OUTLINED_FUNCTION_25_3();
  sub_2166C6ED4(v0);
  v52 = OUTLINED_FUNCTION_33_8();
  v53(v52);
  v54 = OUTLINED_FUNCTION_7_10();
  sub_2166CA500(v54, v55, v56, 1, v57);
  OUTLINED_FUNCTION_4_14();
  sub_2166C6ED4(v0);
  v58 = OUTLINED_FUNCTION_32_6();
  v59(v58);
  v60 = OUTLINED_FUNCTION_49_6();
  sub_2166CA500(v60, v61, v62, v63, v64);
  OUTLINED_FUNCTION_12_12();
  sub_2166C6ED4(v0);
  v65 = OUTLINED_FUNCTION_29_6();
  v66(v65);
  v67 = OUTLINED_FUNCTION_46_5();
  sub_2166CA500(v67, v68, v69, v70, v71);
  OUTLINED_FUNCTION_11_11();
  sub_2166C6ED4(v0);
  v72 = OUTLINED_FUNCTION_30_2();
  v73(v72);
  v74 = OUTLINED_FUNCTION_6_17();
  sub_2166CA500(v74, v75, v76, 1, v77);
  v78 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_24_8(v78);
  sub_2166C6ED4(v0);
  v79 = OUTLINED_FUNCTION_35_6();
  v80(v79);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2166CA500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, char *a5@<X8>)
{
  v25 = a3;
  v26 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70B8, qword_21703E820);
  MEMORY[0x28223BE20](v8 - 8);
  v24 = &v23 - v9;
  v10 = sub_217005EF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E32650 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280E32658);
  v15 = *(v11 + 16);
  v15(v13, v14, v10);
  *a5 = &unk_28290D900;
  v16 = type metadata accessor for MusicUIPPT.Test(0);
  v17 = &a5[*(v16 + 24)];
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = v25;
  v17[16] = v25;
  v15(&a5[*(v16 + 20)], v13, v10);
  v27 = 0;
  v28 = 0xE000000000000000;
  MEMORY[0x21CE9F490](0x6544747369747241, 0xEC0000006C696174);
  sub_2166C52E8(a1, a2, v18);
  if (v26)
  {
    v19 = 0x70616373646E614CLL;
  }

  else
  {
    v19 = 0x7469617274726F50;
  }

  if (v26)
  {
    v20 = 0xE900000000000065;
  }

  else
  {
    v20 = 0xE800000000000000;
  }

  MEMORY[0x21CE9F490](v19, v20);

  sub_217008154();
  if (qword_280E46108 != -1)
  {
    swift_once();
  }

  _s7SwiftUI11PPTTestCaseV4NameV05MusicB0E11descriptionSSvg_0();
  v21 = v24;
  sub_2166C552C(a5, v24);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v16);
  swift_beginAccess();
  sub_2166C5708();
  swift_endAccess();
  return (*(v11 + 8))(v13, v10);
}

void sub_2166CA810()
{
  if (!qword_280E48470)
  {
    v0 = sub_217007E14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E48470);
    }
  }
}

uint64_t sub_2166CA860()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_217005EF4();
  __swift_allocate_value_buffer(v3, qword_280E32658);
  v4 = __swift_project_value_buffer(v3, qword_280E32658);
  sub_217005ED4();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_2166CA970(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC7MusicUI23MusicTabChangePublisher__publisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6610, &qword_217055580);
  swift_allocObject();
  *(v1 + v2) = sub_217007D84();
  swift_beginAccess();
  sub_217007DA4();
  swift_endAccess();
  return v1;
}

uint64_t OUTLINED_FUNCTION_62()
{
  *(v0 - 104) = 1;

  return sub_217005EF4();
}

uint64_t OUTLINED_FUNCTION_62_0(uint64_t a1)
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_62_1(double a1, __n128 a2)
{
  *(v3 + 944) = 257;
  *(v2 + 226) = a2;
  result = *(v3 + 678);
  *(v3 + 976) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_2()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_62_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_21700F7D4();
}

uint64_t OUTLINED_FUNCTION_62_5()
{
  v3 = *(v1 - 368);

  return sub_2168FB91C(v0, v3);
}

_OWORD *OUTLINED_FUNCTION_62_10()
{
  *(v1 - 328) = v0;

  return sub_2166EF9C4((v1 - 328), (v1 - 200));
}

uint64_t OUTLINED_FUNCTION_62_13()
{

  return sub_216F53680();
}

uint64_t type metadata accessor for PlaybackPresenter(uint64_t a1)
{
  result = qword_280E3FDA0;
  if (!qword_280E3FDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void View.registerReplayPPTs<A, B>(pageProvider:)()
{
  OUTLINED_FUNCTION_49();
  v4 = OUTLINED_FUNCTION_54_7(v2, v3);
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_2_21();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42_2();
  v7 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  v9 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_16_11(v9);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105();
  v11 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_17_11(v11);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  v13 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_5_14(v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = OUTLINED_FUNCTION_9_16(v15, v81);
  OUTLINED_FUNCTION_15_4(v16);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_7(v18, v82);
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = OUTLINED_FUNCTION_3_25(v20, v83);
  sub_2166CB140(v21, v22, v23, v24, v25);
  v26 = OUTLINED_FUNCTION_14_6();
  sub_2166C64F0(v26, v27, v28, v1, v29);
  sub_2166C6ED4(v0);
  v30 = OUTLINED_FUNCTION_50_4();
  sub_2166CB140(v30, v31, v32, v33, v34);
  v35 = OUTLINED_FUNCTION_26_9();
  sub_2166C64F0(v35, v36, v37, v7, v38);
  sub_2166C6ED4(v0);
  v39 = OUTLINED_FUNCTION_31_11();
  v40(v39);
  v41 = OUTLINED_FUNCTION_48_4();
  sub_2166CB140(v41, v42, v43, v44, v45);
  OUTLINED_FUNCTION_23_3();
  sub_2166C6ED4(v0);
  v46 = OUTLINED_FUNCTION_28_11();
  v47(v46);
  v48 = OUTLINED_FUNCTION_6_17();
  sub_2166CB140(v48, v49, v50, 0, v51);
  OUTLINED_FUNCTION_25_3();
  sub_2166C6ED4(v0);
  v52 = OUTLINED_FUNCTION_33_8();
  v53(v52);
  v54 = OUTLINED_FUNCTION_7_10();
  sub_2166CB140(v54, v55, v56, 1, v57);
  OUTLINED_FUNCTION_4_14();
  sub_2166C6ED4(v0);
  v58 = OUTLINED_FUNCTION_32_6();
  v59(v58);
  v60 = OUTLINED_FUNCTION_49_6();
  sub_2166CB140(v60, v61, v62, v63, v64);
  OUTLINED_FUNCTION_12_12();
  sub_2166C6ED4(v0);
  v65 = OUTLINED_FUNCTION_29_6();
  v66(v65);
  v67 = OUTLINED_FUNCTION_46_5();
  sub_2166CB140(v67, v68, v69, v70, v71);
  OUTLINED_FUNCTION_11_11();
  sub_2166C6ED4(v0);
  v72 = OUTLINED_FUNCTION_30_2();
  v73(v72);
  v74 = OUTLINED_FUNCTION_6_17();
  sub_2166CB140(v74, v75, v76, 1, v77);
  v78 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_24_8(v78);
  sub_2166C6ED4(v0);
  v79 = OUTLINED_FUNCTION_35_6();
  v80(v79);
  OUTLINED_FUNCTION_26();
}

void sub_2166CB098(uint64_t a1)
{
  sub_2166CB554(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2166CB140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, char *a5@<X8>)
{
  v25 = a3;
  v26 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70B8, qword_21703E820);
  MEMORY[0x28223BE20](v8 - 8);
  v24 = &v23 - v9;
  v10 = sub_217005EF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E38E28 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280E38E30);
  v15 = *(v11 + 16);
  v15(v13, v14, v10);
  *a5 = &unk_28290D930;
  v16 = type metadata accessor for MusicUIPPT.Test(0);
  v17 = &a5[*(v16 + 24)];
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = v25;
  v17[16] = v25;
  v15(&a5[*(v16 + 20)], v13, v10);
  v27 = 0;
  v28 = 0xE000000000000000;
  MEMORY[0x21CE9F490](0x79616C706552, 0xE600000000000000);
  sub_2166C52E8(a1, a2, v18);
  if (v26)
  {
    v19 = 0x70616373646E614CLL;
  }

  else
  {
    v19 = 0x7469617274726F50;
  }

  if (v26)
  {
    v20 = 0xE900000000000065;
  }

  else
  {
    v20 = 0xE800000000000000;
  }

  MEMORY[0x21CE9F490](v19, v20);

  sub_217008154();
  if (qword_280E46108 != -1)
  {
    swift_once();
  }

  _s7SwiftUI11PPTTestCaseV4NameV05MusicB0E11descriptionSSvg_0();
  v21 = v24;
  sub_2166C552C(a5, v24);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v16);
  swift_beginAccess();
  sub_2166C5708();
  swift_endAccess();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2166CB444()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_217005EF4();
  __swift_allocate_value_buffer(v3, qword_280E38E30);
  v4 = __swift_project_value_buffer(v3, qword_280E38E30);
  sub_217005ED4();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

void sub_2166CB554(uint64_t a1)
{
  if (!qword_280E48478)
  {
    sub_217006E44();
    v1 = sub_217007E14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E48478);
    }
  }
}

unint64_t sub_2166CB5AC()
{
  result = qword_280E29B28;
  if (!qword_280E29B28)
  {
    sub_216685F4C(255, &qword_280E29B30, 0x277D75940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E29B28);
  }

  return result;
}

void OUTLINED_FUNCTION_245_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_245_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 - 144) = a4;
  *(v5 - 136) = v4;
  *(v5 - 160) = a3;
  return 0;
}

uint64_t sub_2166CB670()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  v5 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  sub_21677BBA0();

  v7 = *MEMORY[0x277CBBF00];
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *(v1 + 32) = sub_2166B9AD0(v7, 0, 1, 1, sub_21686D62C, v1);

  return v1;
}

uint64_t sub_2166CB7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_2166E33FC;

  return sub_2166CB974();
}

uint64_t sub_2166CB884()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_2_10(v1);

  return sub_2166CB7F0(v2, v3, v4, v5);
}

uint64_t sub_2166CB974()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_2166E3168;

  return sub_2166CBB18();
}

double sub_2166CBA00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  v8 = swift_getEnumCaseMultiPayload() - 15;
  if (v8 >= 5)
  {
    (*(v4 + 8))(v7, a1);
    v9 = 1;
  }

  else
  {
    v9 = 4;
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = v9;
  *(a2 + 33) = v8 < 5;
  return result;
}

uint64_t sub_2166CBB18()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  type metadata accessor for CKAccountStatus(0);
  *v1 = v0;
  v1[1] = sub_2166E304C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001CLL, 0x80000002170832E0, sub_2166CC214, 0, v2);
}

uint64_t sub_2166CBC38(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + qword_280E73C80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - v5;
  v8 = v1 + *(v7 + 16);
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 1) = v10;
  *(v8 + 16) = *(v9 + 32);
  (*(v4 + 16))(v6, a1, v3);
  v11 = sub_217009444();
  (*(v4 + 8))(a1, v3);
  return v11;
}

uint64_t OUTLINED_FUNCTION_118_0()
{

  return sub_216681B04(v1, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_118_2(uint64_t a1, uint64_t a2)
{

  return sub_21700DC04();
}

uint64_t OUTLINED_FUNCTION_118_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_21700DD04();
}

id OUTLINED_FUNCTION_118_7()
{
  *(v1 + 128) = v0;

  return v0;
}

uint64_t type metadata accessor for UnifiedMessages.Coordinator(uint64_t a1)
{
  result = qword_280E41B90;
  if (!qword_280E41B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166CBE98(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

BOOL OUTLINED_FUNCTION_179()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_224_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_224_2()
{

  return sub_2166A6EA4();
}

void sub_2166CC010(uint64_t a1)
{
  sub_2166CBE98(319, &unk_280E483E0, &unk_27CABFAA8, &qword_217034518, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_2166CBE98(319, &qword_280E2A1D0, &qword_27CABFAB8, qword_217034538, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2166CBE98(319, &qword_280E483F0, &qword_27CAB8DF8, qword_21701B930, MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2166CC214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA2F8, qword_21701FC30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() defaultContainer];
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_2166E2FC0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2166E2EC8;
  aBlock[3] = &block_descriptor_2;
  v9 = _Block_copy(aBlock);

  [v6 accountStatusWithCompletionHandler_];
  _Block_release(v9);
}

uint64_t sub_2166CC3E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA2F8, qword_21701FC30);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_110_3()
{

  return sub_216697664(v2 - 168, v0, v1);
}

uint64_t OUTLINED_FUNCTION_110_4()
{
}

uint64_t OUTLINED_FUNCTION_110_5()
{

  return sub_21700DF14();
}

uint64_t OUTLINED_FUNCTION_110_6()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2166CC54C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_55();
  sub_2166D9530(v1, v2, v3, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 24) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_57_15(v5);

  return MEMORY[0x282180360](v7);
}

uint64_t OUTLINED_FUNCTION_135_0()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_135_3(unint64_t a1@<X8>)
{
  *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  v5 = (*(v1 + 48) + 16 * a1);
  *v5 = v2;
  v5[1] = v3;
}

uint64_t OUTLINED_FUNCTION_161()
{
  *(v0 + 1392) = 0;
  *(v0 + 1360) = 0u;
  *(v0 + 1376) = 0u;

  return sub_217005EF4();
}

uint64_t OUTLINED_FUNCTION_161_0()
{
}

uint64_t OUTLINED_FUNCTION_69_2(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 56) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_69_6(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  return sub_21700DA34();
}

double OUTLINED_FUNCTION_69_10()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

_OWORD *OUTLINED_FUNCTION_69_12(uint64_t a1, uint64_t a2, ...)
{

  return sub_2166EF9C4(&v4, &v5);
}

uint64_t OUTLINED_FUNCTION_69_16()
{
  type metadata accessor for AlbumTrackLockup(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_2166CC8A4@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA428, &qword_217063690);
  OUTLINED_FUNCTION_1();
  v99 = v1;
  v100 = v2;
  MEMORY[0x28223BE20](v1);
  v95 = &v81 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA430, &qword_217063698);
  OUTLINED_FUNCTION_1();
  v92 = v4;
  v93 = v5;
  MEMORY[0x28223BE20](v4);
  v89 = &v81 - v6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA438, &unk_2170636A0);
  OUTLINED_FUNCTION_1();
  v88 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v81 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v81 - v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_4();
  v84 = v24;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_4();
  v85 = v26;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_4();
  v86 = v28;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_4();
  v90 = v30;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_4();
  v91 = v32;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_4();
  v94 = v34;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_4();
  v96 = v36;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_4();
  v97 = v38;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_4();
  v98 = v40;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_4();
  v101 = v42;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_6_4();
  v102 = v44;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v45);
  v103 = &v81 - v46;
  type metadata accessor for ObjectGraph(0);
  sub_21700D5F4();
  sub_2166CD1F0(v19);
  v47 = *(v13 + 8);
  v47(v16, v11);
  sub_2166D3EA0(v22);
  v48 = OUTLINED_FUNCTION_45_0();
  (v47)(v48);
  v82 = v47;
  v105[3] = sub_21700D7C4();
  v105[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v105);
  sub_21700D7B4();
  sub_21700DDC4();
  v83 = *(v13 + 16);
  v49 = v84;
  v83(v84, v22, v11);
  sub_2166D9530(&qword_280E2A198, &qword_27CACA438, &unk_2170636A0, MEMORY[0x277D222C0]);
  v50 = v87;
  sub_21700D5A4();
  (*(v88 + 8))(v10, v50);
  v47(v22, v11);
  v51 = v89;
  sub_21700DE84();
  v52 = v85;
  v53 = v49;
  v54 = v49;
  v55 = v83;
  v83(v85, v53, v11);
  sub_2166D9530(&qword_280E2A190, &qword_27CACA430, &qword_217063698, MEMORY[0x277D222E0]);
  v56 = v92;
  sub_21700D5A4();
  (*(v93 + 8))(v51, v56);
  v57 = v54;
  v58 = v82;
  v82(v57, v11);
  v59 = v95;
  sub_21700DD24();
  v60 = v86;
  v55(v86, v52, v11);
  sub_2166D9530(&qword_280E2A1A0, &qword_27CACA428, &qword_217063690, MEMORY[0x277D22250]);
  v61 = v99;
  sub_21700D5A4();
  (*(v100 + 8))(v59, v61);
  v58(v52, v11);
  type metadata accessor for IntentActionImplementation();
  v105[0] = swift_allocObject();
  v62 = v90;
  v55(v90, v60, v11);
  sub_2166D458C(qword_280E34680, type metadata accessor for IntentActionImplementation, &unk_21702A95C);
  sub_21700D5A4();
  v58(v60, v11);

  v63 = v91;
  v55(v91, v62, v11);
  sub_2166D4E8C();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v64 = OUTLINED_FUNCTION_53_0();
  (v58)(v64);
  v55(v94, v63, v11);
  sub_2166D51E0();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v65 = OUTLINED_FUNCTION_53_0();
  (v58)(v65);
  v66 = OUTLINED_FUNCTION_5_128();
  (v55)(v66);
  sub_2166D5568();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v67 = OUTLINED_FUNCTION_45_0();
  (v58)(v67);
  v68 = OUTLINED_FUNCTION_4_138();
  (v55)(v68);
  sub_2166D5934();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v69 = OUTLINED_FUNCTION_53_0();
  (v58)(v69);
  v70 = OUTLINED_FUNCTION_5_128();
  (v55)(v70);
  sub_2166D5B38();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v71 = OUTLINED_FUNCTION_45_0();
  (v58)(v71);
  v72 = OUTLINED_FUNCTION_4_138();
  (v55)(v72);
  sub_2166D5C20();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v73 = OUTLINED_FUNCTION_53_0();
  (v58)(v73);
  v74 = OUTLINED_FUNCTION_5_128();
  (v55)(v74);
  sub_2166D5E2C();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v75 = OUTLINED_FUNCTION_45_0();
  (v58)(v75);
  v76 = v103;
  v77 = OUTLINED_FUNCTION_4_138();
  (v55)(v77);
  sub_2166D6228();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v78 = OUTLINED_FUNCTION_53_0();
  (v58)(v78);
  v55(v104, v76, v11);
  sub_216E1ECA8();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v79 = OUTLINED_FUNCTION_45_0();
  return (v58)(v79);
}

uint64_t sub_2166CD1F0@<X0>(char *a1@<X8>)
{
  v112 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v88 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v88 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v88 - v13;
  MEMORY[0x28223BE20](v15);
  v89 = &v88 - v16;
  MEMORY[0x28223BE20](v17);
  v90 = &v88 - v18;
  MEMORY[0x28223BE20](v19);
  v91 = &v88 - v20;
  MEMORY[0x28223BE20](v21);
  v92 = &v88 - v22;
  MEMORY[0x28223BE20](v23);
  v93 = &v88 - v24;
  MEMORY[0x28223BE20](v25);
  v94 = &v88 - v26;
  MEMORY[0x28223BE20](v27);
  v95 = &v88 - v28;
  MEMORY[0x28223BE20](v29);
  v96 = &v88 - v30;
  MEMORY[0x28223BE20](v31);
  v97 = &v88 - v32;
  MEMORY[0x28223BE20](v33);
  v98 = &v88 - v34;
  MEMORY[0x28223BE20](v35);
  v99 = &v88 - v36;
  MEMORY[0x28223BE20](v37);
  v100 = &v88 - v38;
  MEMORY[0x28223BE20](v39);
  v101 = &v88 - v40;
  MEMORY[0x28223BE20](v41);
  v102 = &v88 - v42;
  MEMORY[0x28223BE20](v43);
  v103 = &v88 - v44;
  MEMORY[0x28223BE20](v45);
  v104 = &v88 - v46;
  MEMORY[0x28223BE20](v47);
  v105 = &v88 - v48;
  MEMORY[0x28223BE20](v49);
  v106 = &v88 - v50;
  MEMORY[0x28223BE20](v51);
  v107 = &v88 - v52;
  MEMORY[0x28223BE20](v53);
  v108 = &v88 - v54;
  MEMORY[0x28223BE20](v55);
  v109 = &v88 - v56;
  MEMORY[0x28223BE20](v57);
  v110 = &v88 - v58;
  v60 = MEMORY[0x28223BE20](v59);
  v111 = &v88 - v61;
  v62 = *(v3 + 16);
  v62(v5, v1, v2, v60);
  sub_2166CDFC4();
  sub_21700D5A4();
  (v62)(v8, v5, v2);
  sub_2166CE2EC();
  sub_21700D5A4();
  v63 = *(v3 + 8);
  v63(v5, v2);
  (v62)(v11, v8, v2);
  sub_2166CEF38();
  sub_21700D5A4();
  v63(v8, v2);
  (v62)(v14, v11, v2);
  sub_2166CF05C();
  sub_21700D5A4();
  v63(v11, v2);
  v64 = v89;
  (v62)(v89, v14, v2);
  sub_2166CF2A8();
  sub_21700D5A4();
  v63(v14, v2);
  v65 = v90;
  (v62)(v90, v64, v2);
  sub_2166CF54C();
  sub_21700D5A4();
  v63(v64, v2);
  v66 = v91;
  (v62)(v91, v65, v2);
  sub_2166CFBCC();
  sub_21700D5A4();
  v63(v65, v2);
  v67 = v92;
  (v62)(v92, v66, v2);
  sub_2166CFDA8();
  sub_21700D5A4();
  v63(v66, v2);
  v68 = v93;
  (v62)(v93, v67, v2);
  sub_2166D0040();
  sub_21700D5A4();
  v63(v67, v2);
  v69 = v94;
  (v62)(v94, v68, v2);
  sub_2166D0244();
  sub_21700D5A4();
  v63(v68, v2);
  v70 = v95;
  (v62)(v95, v69, v2);
  sub_2166D04C8();
  sub_21700D5A4();
  v63(v69, v2);
  v71 = v96;
  (v62)(v96, v70, v2);
  sub_2166D0568();
  sub_21700D5A4();
  v63(v70, v2);
  v72 = v97;
  (v62)(v97, v71, v2);
  sub_2166D07B0();
  sub_21700D5A4();
  v63(v71, v2);
  v73 = v98;
  (v62)(v98, v72, v2);
  sub_2166D08F4();
  sub_21700D5A4();
  v63(v72, v2);
  v74 = v99;
  (v62)(v99, v73, v2);
  sub_2166D12C8();
  sub_21700D5A4();
  v63(v73, v2);
  v75 = v100;
  (v62)(v100, v74, v2);
  sub_2166D1384();
  sub_21700D5A4();
  v63(v74, v2);
  v76 = v101;
  (v62)(v101, v75, v2);
  sub_2166D25B4();
  sub_21700D5A4();
  v63(v75, v2);
  v77 = v102;
  (v62)(v102, v76, v2);
  sub_2166D28F8();
  sub_21700D5A4();
  v63(v76, v2);
  v78 = v103;
  (v62)(v103, v77, v2);
  sub_2166D2B44();
  sub_21700D5A4();
  v63(v77, v2);
  v79 = v104;
  (v62)(v104, v78, v2);
  sub_2166D2CD8();
  sub_21700D5A4();
  v63(v78, v2);
  v80 = v105;
  (v62)(v105, v79, v2);
  sub_2166D2DA4();
  sub_21700D5A4();
  v63(v79, v2);
  v81 = v106;
  (v62)(v106, v80, v2);
  sub_2166D3094();
  sub_21700D5A4();
  v63(v80, v2);
  v82 = v107;
  (v62)(v107, v81, v2);
  sub_2166D317C();
  sub_21700D5A4();
  v63(v81, v2);
  v83 = v108;
  (v62)(v108, v82, v2);
  sub_2166D332C();
  sub_21700D5A4();
  v63(v82, v2);
  v84 = v109;
  (v62)(v109, v83, v2);
  sub_2166D35F4();
  sub_21700D5A4();
  v63(v83, v2);
  v85 = v110;
  (v62)(v110, v84, v2);
  sub_2166D37C8();
  sub_21700D5A4();
  v63(v84, v2);
  v86 = v111;
  (v62)(v111, v85, v2);
  sub_2166D39FC();
  sub_21700D5A4();
  v63(v85, v2);
  (v62)(v112, v86, v2);
  sub_2166D3C04();
  sub_21700D5A4();
  return (v63)(v86, v2);
}

uint64_t OUTLINED_FUNCTION_196_0(uint64_t a1)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = v3;
}

uint64_t OUTLINED_FUNCTION_99_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_21700E494();
}

void OUTLINED_FUNCTION_144_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_144_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 112) = 0;
  *(v11 + 120) = a10;
  v14 = v13[1];
  *(v11 + 32) = *v13;
  *(v11 + 48) = v14;
  *(v11 + 64) = v13[2];
  *(v11 + 73) = *(v13 + 41);
  *(v11 + 96) = v12;
  *(v11 + 104) = v10 & 1;
  return v11;
}

uint64_t OUTLINED_FUNCTION_144_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_216FB315C();
}

unint64_t sub_2166CDFC4()
{
  result = qword_280E2CF18[0];
  if (!qword_280E2CF18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2CF18);
  }

  return result;
}

uint64_t type metadata accessor for ApproveAllFollowRequestsAction(uint64_t a1)
{
  result = qword_280E30E58;
  if (!qword_280E30E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166CE0B8()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_2166CE10C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

void sub_2166CE160(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_2166CE230();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for BrowsePageIntent(uint64_t a1)
{
  result = qword_27CAC3CF8;
  if (!qword_27CAC3CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166CE230()
{
  if (!qword_280E29E40)
  {
    v0 = sub_21700E984();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29E40);
    }
  }
}

void sub_2166CE280(uint64_t a1)
{
  sub_2166CE38C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2166CE2EC()
{
  result = qword_280E319B0[0];
  if (!qword_280E319B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E319B0);
  }

  return result;
}

uint64_t type metadata accessor for BlockUserAction(uint64_t a1)
{
  result = qword_280E42920;
  if (!qword_280E42920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166CE38C(uint64_t a1)
{
  if (!qword_280E44870)
  {
    type metadata accessor for ReferrerInfo(255);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E44870);
    }
  }
}

uint64_t sub_2166CE3E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE42C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE4BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE504(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE54C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE594(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE5DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE624(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE66C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE6B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE6FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE78C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE7D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE81C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE864(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE8AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE8F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE93C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE984(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CE9CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CEA14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CEA5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CEAA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CEAEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CEB34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CEB7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166CEBC4(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2166CEC40(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE6B4(qword_280E41430, type metadata accessor for BrowsePageIntent, &unk_21704A1C0);
  result = sub_2166CE6B4(qword_27CAC3D08, type metadata accessor for BrowsePageIntent, &unk_21704A1A4);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2166CECC4(uint64_t a1, void *a2)
{
  *(v2 + OBJC_IVAR____TtC7MusicUI17PlaybackPresenter_subscriptionStatusCoordinator) = a1;
  sub_2167B7D58(a2, v2 + 16);
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = *(v5 + 112);

  v6(v4, v5);
  swift_beginAccess();
  sub_217006E44();
  sub_217007DA4();
  swift_endAccess();
  swift_beginAccess();
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v2 + 16, v7);
  v9 = *(v8 + 128);

  v9(sub_216C6DFD8, v2, v7, v8);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v2;
}

uint64_t sub_2166CEE34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
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

uint64_t type metadata accessor for RadioPageIntent(uint64_t a1)
{
  result = qword_280E420C0;
  if (!qword_280E420C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2166CEF38()
{
  result = qword_280E2CFD8;
  if (!qword_280E2CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2CFD8);
  }

  return result;
}

uint64_t type metadata accessor for CancelFollowUserRequestAction(uint64_t a1)
{
  result = qword_280E319A0;
  if (!qword_280E319A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166CEFD8(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE984(&qword_280E42100, type metadata accessor for RadioPageIntent, &unk_21705D42C);
  result = sub_2166CE984(qword_280E42108, type metadata accessor for RadioPageIntent, &unk_21705D410);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2166CF05C()
{
  result = qword_280E2CF10;
  if (!qword_280E2CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2CF10);
  }

  return result;
}

uint64_t type metadata accessor for CompleteSocialOnboardingAction(uint64_t a1)
{
  result = qword_280E30D90;
  if (!qword_280E30D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166CF140(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2166CF1AC(uint64_t a1)
{
  sub_216688680(319);
  if (v1 <= 0x3F)
  {
    sub_216688560(319, &qword_280E2A070, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_21668A338(319, &qword_280E2A0C8, &qword_27CABF890, &qword_217033E20);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2166CF2A8()
{
  result = qword_280E2D1B0;
  if (!qword_280E2D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2D1B0);
  }

  return result;
}

uint64_t type metadata accessor for FindFriendsBatchFollowAction(uint64_t a1)
{
  result = qword_280E32450;
  if (!qword_280E32450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166CF358(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_2166CF478(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t MusicMetrics.PageFields.init(pageType:pageId:featureName:pageURL:pageContext:searchTerm:pageDetails:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *a4;
  *a9 = *a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v16;
  v17 = type metadata accessor for MusicMetrics.PageFields(0);
  result = sub_2166CF4DC(a5, a9 + v17[7]);
  v19 = (a9 + v17[8]);
  *v19 = a6;
  v19[1] = a7;
  v20 = (a9 + v17[9]);
  *v20 = a8;
  v20[1] = a10;
  *(a9 + v17[10]) = a11;
  return result;
}

void sub_2166CF478(uint64_t a1)
{
  if (!qword_280E29E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB74F8, &unk_217017160);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E29E28);
    }
  }
}

uint64_t sub_2166CF4DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2166CF54C()
{
  result = qword_280E30C88;
  if (!qword_280E30C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E30C88);
  }

  return result;
}

uint64_t sub_2166CF5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a6;
  v49 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v10 - 8);
  v51 = &v44 - v11;
  v53 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v47 = v14;
  v48 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  if (qword_280E2C138 != -1)
  {
    swift_once();
  }

  v18 = sub_217007CA4();
  __swift_project_value_buffer(v18, qword_280E2C140);
  v46 = *(v13 + 16);
  v46(v17, a1, AssociatedTypeWitness);
  v19 = sub_217007C84();
  v20 = sub_21700EDA4();
  v21 = os_log_type_enabled(v19, v20);
  v50 = a5;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v44 = a2;
    v23 = v22;
    v24 = swift_slowAlloc();
    v45 = a1;
    v25 = v24;
    v55 = v24;
    *v23 = 136446210;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 24))(&v56, AssociatedTypeWitness, AssociatedConformanceWitness);
    v54 = v56;
    v27 = sub_21700E594();
    v29 = v28;
    (*(v13 + 8))(v17, AssociatedTypeWitness);
    v30 = sub_2166A85FC(v27, v29, &v55);

    *(v23 + 4) = v30;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v31 = v25;
    a1 = v45;
    MEMORY[0x21CEA1440](v31, -1, -1);
    MEMORY[0x21CEA1440](v23, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v17, AssociatedTypeWitness);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    v34 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v34);
    v35 = v48;
    v46(v48, a1, AssociatedTypeWitness);
    sub_21700EA34();

    v36 = sub_21700EA24();
    v37 = (*(v13 + 80) + 72) & ~*(v13 + 80);
    v38 = swift_allocObject();
    v39 = MEMORY[0x277D85700];
    *(v38 + 2) = v36;
    *(v38 + 3) = v39;
    v40 = v49;
    v41 = v50;
    *(v38 + 4) = v53;
    *(v38 + 5) = v40;
    v42 = v52;
    *(v38 + 6) = v41;
    *(v38 + 7) = v42;
    *(v38 + 8) = v33;
    (*(v13 + 32))(&v38[v37], v35, AssociatedTypeWitness);
    sub_21677E95C();
  }

  return sub_21700D584();
}

uint64_t sub_2166CFA14()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t type metadata accessor for FollowUserAction(uint64_t a1)
{
  result = qword_280E412A8;
  if (!qword_280E412A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166CFB48(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2166CFBCC()
{
  result = qword_280E2D3D8;
  if (!qword_280E2D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2D3D8);
  }

  return result;
}

uint64_t sub_2166CFC20()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E2C140);
  __swift_project_value_buffer(v0, qword_280E2C140);
  return sub_217007C94();
}

uint64_t type metadata accessor for FollowRequestResponseAction(uint64_t a1)
{
  result = qword_280E33BA0;
  if (!qword_280E33BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2166CFCEC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_2166CFD0C(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7MusicUI0A5TabIDO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2166CFDA8()
{
  result = qword_280E2E130[0];
  if (!qword_280E2E130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2E130);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_86_4()
{
  *(v0 + 912) = v1;

  return sub_217005EF4();
}

uint64_t OUTLINED_FUNCTION_86_5(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  return sub_216888C34(0, 0, v1, &unk_21701D700, a1);
}

uint64_t OUTLINED_FUNCTION_86_6(uint64_t a1)
{

  return sub_21700E094();
}

void *OUTLINED_FUNCTION_86_7()
{
  v2 = *(v0 - 144);

  return __swift_project_boxed_opaque_existential_1((v0 - 168), v2);
}

uint64_t OUTLINED_FUNCTION_86_8()
{

  return sub_2168CBAB0(v0, type metadata accessor for BubbleLockup);
}

uint64_t OUTLINED_FUNCTION_86_12@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 40) = a1;

  return sub_216683A80(v1 + a1, v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_86_13()
{

  return sub_216F53680();
}

uint64_t OUTLINED_FUNCTION_86_15()
{
  v3 = (v1 + *(v0 + 20));
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + *(v0 + 24));
  *v4 = 0;
  v4[1] = 0;

  return type metadata accessor for AnyAction(0);
}

uint64_t OUTLINED_FUNCTION_86_16()
{
  *(v1 + v4) = v0;
  __swift_getEnumTagSinglePayload(v3, 1, v2);
}

uint64_t type metadata accessor for HideAllPlaylistsAction(uint64_t a1)
{
  result = qword_280E393D0;
  if (!qword_280E393D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2166D0040()
{
  result = qword_280E2D948[0];
  if (!qword_280E2D948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2D948);
  }

  return result;
}

uint64_t type metadata accessor for OpenFindFriendsPageAction(uint64_t a1)
{
  result = qword_280E35470;
  if (!qword_280E35470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2166D00E0(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
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

  for (; v5; v5 = sub_21700E694())
  {
    result = sub_2166B9480(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_21700F3A4();
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

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_21700F444();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
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

void *sub_2166D01F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_2166D00E0(a1, a2);
  sub_2166D03E4(&unk_28290D7D0);
  return v3;
}

unint64_t sub_2166D0244()
{
  result = qword_280E2C480[0];
  if (!qword_280E2C480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2C480);
  }

  return result;
}

void *sub_2166D0298(void *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2166D01F8(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = ((a6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_21700F444();
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

uint64_t type metadata accessor for AllowDeviceNotificationSettingsAction(uint64_t a1)
{
  result = qword_280E2DE50;
  if (!qword_280E2DE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D03E4(uint64_t result)
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

    result = sub_216781934(result, v7, 1, v3);
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

unint64_t sub_2166D04C8()
{
  result = qword_280E2C9C0;
  if (!qword_280E2C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C9C0);
  }

  return result;
}

uint64_t type metadata accessor for OpenSocialFollowRequestsPageAction(uint64_t a1)
{
  result = qword_280E2EB38;
  if (!qword_280E2EB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2166D0568()
{
  result = qword_280E2D290;
  if (!qword_280E2D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2D290);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_70_10()
{

  return sub_21700F364();
}

uint64_t type metadata accessor for PromptSuggestedHandleAction(uint64_t a1)
{
  result = qword_280E33338;
  if (!qword_280E33338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166D071C(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_216688154();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2166D07B0()
{
  result = qword_280E2CBF8;
  if (!qword_280E2CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2CBF8);
  }

  return result;
}

uint64_t type metadata accessor for OpenInClassicalExperienceAction(uint64_t a1)
{
  result = qword_280E301B8;
  if (!qword_280E301B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D0870(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    result = sub_21700C384();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2166D08F4()
{
  result = qword_280E2D298[0];
  if (!qword_280E2D298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2D298);
  }

  return result;
}

uint64_t sub_2166D0948(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[2];
  v6 = a1[4];
  type metadata accessor for CatalogPagePresenter(255, v5, v6, a4);
  swift_getWitnessTable();
  v7 = sub_2170081D4();
  v8 = v7;
  if (v9 <= 0x3F)
  {
    v30 = 0;
    v44 = v7;
    v10 = swift_checkMetadataState();
    v8 = v10;
    if (v11 <= 0x3F)
    {
      v31 = 0;
      v45 = v10;
      v46 = &type metadata for NavigationItemModel;
      v12 = type metadata accessor for AppDestinationPageProviderBox();
      if (v13 > 0x3F)
      {
        return v12;
      }

      v32 = 0;
      v47 = v12;
      v48 = MEMORY[0x277D837D0];
      v12 = type metadata accessor for UserSocialProfileCoordinator(319);
      if (v14 > 0x3F)
      {
        return v12;
      }

      v33 = 0;
      v49 = v12;
      v12 = type metadata accessor for SocialGraphController(319);
      if (v15 > 0x3F)
      {
        return v12;
      }

      v34 = 0;
      v50 = v12;
      v12 = type metadata accessor for SubscriptionStatusCoordinator();
      if (v16 > 0x3F)
      {
        return v12;
      }

      v35 = 0;
      v51 = v12;
      v12 = type metadata accessor for CloudLibraryStatusController(319);
      if (v17 > 0x3F)
      {
        return v12;
      }

      v36 = 0;
      v52 = v12;
      sub_2166DB34C(319);
      if (v18 > 0x3F)
      {
        return v12;
      }

      v37 = 0;
      v53 = v12;
      v12 = type metadata accessor for UnifiedMessages.Coordinator(319);
      if (v19 > 0x3F)
      {
        return v12;
      }

      v38 = 0;
      v54 = v12;
      sub_2166B49AC(319);
      if (v20 > 0x3F)
      {
        return v12;
      }

      v39 = 0;
      v55 = v12;
      sub_2168E4118(319, &qword_280E2B460, MEMORY[0x277CDF3E0]);
      if (v21 > 0x3F)
      {
        return v12;
      }

      v40 = 0;
      v56 = v12;
      sub_2166DB904();
      if (v22 > 0x3F)
      {
        return v12;
      }

      else
      {
        v41 = 0;
        v57 = v12;
        v23 = a1[5];
        v29[0] = v5;
        v29[1] = v8;
        v29[2] = v6;
        v29[3] = v23;
        type metadata accessor for PageView.ImpressionTracker(255, v29);
        swift_getWitnessTable();
        v24 = sub_2170081D4();
        v8 = v24;
        if (v25 <= 0x3F)
        {
          v42 = 0;
          v58 = v24;
          sub_2166DBA60(319);
          v8 = v26;
          if (v27 <= 0x3F)
          {
            v43 = 0;
            v59 = v26;
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v8;
}

void sub_2166D0C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  type metadata accessor for CatalogPagePresenter.State(255, v4, v5, a4);
  sub_21700F164();
  sub_217007E14();
  if (v6 <= 0x3F)
  {
    sub_2166D8B98(319, &qword_280E48430, &qword_27CAC0660, &unk_217038F18, MEMORY[0x277CBCED0]);
    if (v7 <= 0x3F)
    {
      sub_2166D8B98(319, &qword_280E48450, &qword_27CAB7930, &qword_21701A250, MEMORY[0x277CBCED0]);
      if (v8 <= 0x3F)
      {
        sub_2166BF8FC();
        if (v9 <= 0x3F)
        {
          sub_2166DABB4(319);
          if (v10 <= 0x3F)
          {
            sub_2166D8B98(319, &qword_280E48408, &qword_27CAB9180, &qword_21701C770, MEMORY[0x277CBCED0]);
            if (v12 <= 0x3F)
            {
              type metadata accessor for CatalogPagePresenter.InternalState(255, v4, v5, v11);
              sub_21700F164();
              if (v13 <= 0x3F)
              {
                sub_2166D8B98(319, &qword_280E2A1C0, &qword_27CAB8EF0, qword_217024020, MEMORY[0x277D83D88]);
                if (v14 <= 0x3F)
                {
                  swift_initClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2166D0FC8(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    result = sub_2166D10D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2166D104C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    sub_2166D8AC0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_2166D10D8()
{
  result = qword_280E2A430;
  if (!qword_280E2A430)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E2A430);
  }

  return result;
}

void sub_2166D1154(uint64_t a1)
{
  sub_21668A338(319, &qword_280E45790, &qword_27CABD4A0, &unk_217060FA0);
  if (v1 <= 0x3F)
  {
    sub_2166D1580(319, qword_280E2C950, type metadata accessor for Page.Footer, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2166D1580(319, &qword_280E29FC8, type metadata accessor for MappedSection, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PageMappedItemsStore();
        if (v4 <= 0x3F)
        {
          sub_21700D194();
          if (v5 <= 0x3F)
          {
            sub_21668A338(319, &qword_27CABFCF0, &qword_27CABFCF8, &qword_2170352D0);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2166D12C8()
{
  result = qword_280E2E6F0;
  if (!qword_280E2E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2E6F0);
  }

  return result;
}

unint64_t sub_2166D1384()
{
  result = qword_280E2C9B8;
  if (!qword_280E2C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C9B8);
  }

  return result;
}

uint64_t sub_2166D13F0(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      AssociatedTypeWitness = sub_217006714();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t type metadata accessor for CheckSocialHandleAvailabilityAction(uint64_t a1)
{
  result = qword_280E2E820;
  if (!qword_280E2E820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166D1580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2166D15E4(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SocialProfileUpdater(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2166D16D0(uint64_t a1)
{
  sub_2166D1B04(319, &qword_280E48380, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_2166D1C60(319, &unk_280E483A0, &qword_27CAC2918, &qword_217043B38);
    if (v2 <= 0x3F)
    {
      sub_2166D1B04(319, &qword_280E483C8, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        sub_2166D1C60(319, &qword_280E48410, &qword_27CAB6D60, &qword_217014E40);
        if (v4 <= 0x3F)
        {
          sub_2166D1C60(319, &qword_280E48368, qword_27CABD310, &qword_21702A090);
          if (v5 <= 0x3F)
          {
            sub_2166D1C60(319, &unk_280E48388, &qword_27CAB74F8, &unk_217017160);
            if (v6 <= 0x3F)
            {
              type metadata accessor for SocialProfileUpdater.UserProfileUpdateProperties(319);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_2166D1990(uint64_t a1)
{
  sub_2166D1C0C(319, qword_280E2C6D0, _s7SectionV6HeaderVMa);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MappedSection.Content(319);
    if (v2 <= 0x3F)
    {
      sub_2166D1C0C(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
      if (v3 <= 0x3F)
      {
        sub_21668A338(319, &qword_27CAC6540, &qword_27CAB7948, &unk_217017C20);
        if (v4 <= 0x3F)
        {
          sub_216688560(319, &qword_280E2C7C8, &_s7SectionV19BackgroundTreatmentON);
          if (v5 <= 0x3F)
          {
            sub_216688560(319, &qword_280E2C640, &_s7SectionV8ItemKindON);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2166D1B04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2166D1B54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2166D1BA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2166D1C0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2166D1C60(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_217007E14();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2166D1CD4(uint64_t a1)
{
  if (!qword_280E457E0)
  {
    v4[0] = type metadata accessor for AlbumDetailHeaderLockup(255);
    v4[1] = sub_2166D23CC(&qword_280E38970, type metadata accessor for AlbumDetailHeaderLockup, &unk_2170401D0);
    v4[2] = &off_28293B3E0;
    v4[3] = sub_2166D23CC(&qword_280E38958, type metadata accessor for AlbumDetailHeaderLockup, &unk_21702C2A0);
    v2 = type metadata accessor for MappedItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E457E0);
    }
  }
}

void sub_2166D1DB0(uint64_t a1)
{
  sub_2166D1CD4(319);
  if (v1 <= 0x3F)
  {
    sub_2166D2608(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AnimatedTextListItem(319);
      if (v3 <= 0x3F)
      {
        sub_2166D3000(319);
        if (v4 <= 0x3F)
        {
          sub_2166D3380(319);
          if (v5 <= 0x3F)
          {
            sub_2166D36EC(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for MappedArtistLatestReleaseAndTopSongs(319);
              if (v7 <= 0x3F)
              {
                sub_2166D4124(319);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for ContainerDetailTracklistFooterLockup(319);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for CuratorDetailHeaderComponentModel(319);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for EmptyStateLockup(319);
                      if (v11 <= 0x3F)
                      {
                        sub_2166D43E4(319);
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for GroupedTextListLockup(319);
                          if (v13 <= 0x3F)
                          {
                            sub_2166D473C(319);
                            if (v14 <= 0x3F)
                            {
                              sub_2166D4928(319);
                              if (v15 <= 0x3F)
                              {
                                sub_2166D4C5C(319);
                                if (v16 <= 0x3F)
                                {
                                  type metadata accessor for InlineUpsell(319);
                                  if (v17 <= 0x3F)
                                  {
                                    type metadata accessor for LandingUpsell(319);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_2166D4EE0(319);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_2166D5104(319);
                                        if (v20 <= 0x3F)
                                        {
                                          type metadata accessor for ListSection(319);
                                          if (v21 <= 0x3F)
                                          {
                                            type metadata accessor for GradientListRowModel(319);
                                            if (v22 <= 0x3F)
                                            {
                                              type metadata accessor for ParagraphComponentModel(319);
                                              if (v23 <= 0x3F)
                                              {
                                                sub_2166D53A4(319);
                                                if (v24 <= 0x3F)
                                                {
                                                  sub_2166D55BC(319);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    type metadata accessor for PopoverSelector(319);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      sub_2166D5988(319);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        sub_2166D5C74(319);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          sub_2166D5E80(319);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            type metadata accessor for SearchQueryContextLockup(319);
                                                            if (v30 <= 0x3F)
                                                            {
                                                              type metadata accessor for MappedSearchResultsList(319);
                                                              if (v31 <= 0x3F)
                                                              {
                                                                sub_2166D6470(319);
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  sub_2166D7008(319);
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    sub_2166D7140(319);
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(319);
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(319);
                                                                        if (v36 <= 0x3F)
                                                                        {
                                                                          sub_2166D72B8(319);
                                                                          if (v37 <= 0x3F)
                                                                          {
                                                                            type metadata accessor for SocialOnboardingUserNameHandlePageLockup(319);
                                                                            if (v38 <= 0x3F)
                                                                            {
                                                                              type metadata accessor for SocialOnboardingWelcomePageLockup(319);
                                                                              if (v39 <= 0x3F)
                                                                              {
                                                                                type metadata accessor for SocialProfileDetailHeaderLockup(319);
                                                                                if (v40 <= 0x3F)
                                                                                {
                                                                                  type metadata accessor for SocialProfileEditorHeaderLockup(319);
                                                                                  if (v41 <= 0x3F)
                                                                                  {
                                                                                    type metadata accessor for SocialProfileFindFriendsButtonComponentModel(319);
                                                                                    if (v42 <= 0x3F)
                                                                                    {
                                                                                      type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(319);
                                                                                      if (v43 <= 0x3F)
                                                                                      {
                                                                                        type metadata accessor for SocialProfileFollowRequestResponseHeader(319);
                                                                                        if (v44 <= 0x3F)
                                                                                        {
                                                                                          type metadata accessor for SocialProfileFollowRequestsPageComponentModel(319);
                                                                                          if (v45 <= 0x3F)
                                                                                          {
                                                                                            sub_2166D7538(319);
                                                                                            if (v46 <= 0x3F)
                                                                                            {
                                                                                              type metadata accessor for SocialOnboardingSharedPlaylistPageLockup(319);
                                                                                              if (v47 <= 0x3F)
                                                                                              {
                                                                                                type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup(319);
                                                                                                if (v48 <= 0x3F)
                                                                                                {
                                                                                                  type metadata accessor for SocialProfileHorizontalLockupSection(319);
                                                                                                  if (v49 <= 0x3F)
                                                                                                  {
                                                                                                    type metadata accessor for Spacer(319);
                                                                                                    if (v50 <= 0x3F)
                                                                                                    {
                                                                                                      sub_2166D76F8(319);
                                                                                                      if (v51 <= 0x3F)
                                                                                                      {
                                                                                                        sub_2166D79E8(319);
                                                                                                        if (v52 <= 0x3F)
                                                                                                        {
                                                                                                          sub_2166D7D5C(319);
                                                                                                          if (v53 <= 0x3F)
                                                                                                          {
                                                                                                            sub_2166D7FE0(319);
                                                                                                            if (v54 <= 0x3F)
                                                                                                            {
                                                                                                              sub_2166D8214(319);
                                                                                                              if (v55 <= 0x3F)
                                                                                                              {
                                                                                                                sub_2166D614C(319);
                                                                                                                if (v56 <= 0x3F)
                                                                                                                {
                                                                                                                  sub_2166D8338(319);
                                                                                                                  if (v57 <= 0x3F)
                                                                                                                  {
                                                                                                                    sub_2166D8414(319);
                                                                                                                    if (v58 <= 0x3F)
                                                                                                                    {
                                                                                                                      sub_2166D8594(319);
                                                                                                                      if (v59 <= 0x3F)
                                                                                                                      {
                                                                                                                        type metadata accessor for VerticalArtworkListItem(319);
                                                                                                                        if (v60 <= 0x3F)
                                                                                                                        {
                                                                                                                          sub_2166D8784(319);
                                                                                                                          if (v61 <= 0x3F)
                                                                                                                          {
                                                                                                                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
  }
}

void sub_2166D22C8(uint64_t a1)
{
  sub_21668A38C(319);
  if (v1 <= 0x3F)
  {
    sub_2166D1B04(319, &qword_280E48380, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2166D23CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D2434(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2166D2478(uint64_t a1)
{
  sub_21668A38C(319);
  if (v1 <= 0x3F)
  {
    sub_2166D1B04(319, &qword_280E29DE0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2166D1B04(319, &qword_280E29E40, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2166D25B4()
{
  result = qword_280E2DCB0;
  if (!qword_280E2DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2DCB0);
  }

  return result;
}

void sub_2166D2608(uint64_t a1)
{
  if (!qword_280E314F8[0])
  {
    v4[0] = type metadata accessor for AlbumTrackLockup(255);
    v4[1] = sub_2166D23CC(qword_280E41540, type metadata accessor for AlbumTrackLockup, &unk_217043794);
    v4[2] = &off_28293B3C0;
    v4[3] = sub_2166D23CC(&qword_280E41520, type metadata accessor for AlbumTrackLockup, &unk_21702C284);
    v2 = type metadata accessor for MappedContainerItemCollection(a1, v4);
    if (!v3)
    {
      atomic_store(v2, qword_280E314F8);
    }
  }
}

uint64_t type metadata accessor for ShareImageRequestAction(uint64_t a1)
{
  result = qword_280E37670;
  if (!qword_280E37670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D2778(uint64_t a1)
{
  v1 = sub_21700D284();
  if (v2 <= 0x3F)
  {
    sub_216688560(319, &qword_280E29DA0, MEMORY[0x277D83B88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_216688560(319, &qword_280E2A070, MEMORY[0x277D837D0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_2166D286C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2166D28B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2166D28F8()
{
  result = qword_280E2D348;
  if (!qword_280E2D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2D348);
  }

  return result;
}

uint64_t type metadata accessor for OpenSocialProfilePageAction(uint64_t a1)
{
  result = qword_280E335E8;
  if (!qword_280E335E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D2998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D29E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D2A28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D2A70(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2166D2AEC(uint64_t a1)
{
  result = sub_2166D2998(&qword_280E41528, type metadata accessor for AlbumTrackLockup, &unk_21702C268);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2166D2B44()
{
  result = qword_280E2D350[0];
  if (!qword_280E2D350[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2D350);
  }

  return result;
}

uint64_t type metadata accessor for OpenSocialProfileEditAction(uint64_t a1)
{
  result = qword_280E33650;
  if (!qword_280E33650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D2C04(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 16);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v10 = 0;
    v12 = result;
    v7 = v3;
    v8 = *(a1 + 24);
    v9 = v2;
    type metadata accessor for MappedContainerItem(255, &v7);
    result = sub_21700E984();
    if (v6 <= 0x3F)
    {
      v11 = 0;
      v13 = result;
      v14 = MEMORY[0x277D83B88];
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2166D2CD8()
{
  result = qword_280E2E630;
  if (!qword_280E2E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2E630);
  }

  return result;
}

uint64_t type metadata accessor for PromptBlockUserAction(uint64_t a1)
{
  result = qword_280E39F28;
  if (!qword_280E39F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2166D2DA4()
{
  result = qword_280E2D6B0[0];
  if (!qword_280E2D6B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2D6B0);
  }

  return result;
}

uint64_t sub_2166D2DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_checkMetadataState();
  if (v5 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v7 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    else
    {
      v4 = swift_getAssociatedTypeWitness();
      if (v8 <= 0x3F)
      {
        v4 = sub_217006714();
        if (v9 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return v4;
}

uint64_t type metadata accessor for PromptRemoveFollowerAction(uint64_t a1)
{
  result = qword_280E34208;
  if (!qword_280E34208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166D3000(uint64_t a1)
{
  if (!qword_280E43400)
  {
    v2 = type metadata accessor for AppsWithAccessComponentModel(255);
    v3 = sub_2166D23CC(&qword_280E32798, type metadata accessor for AppsWithAccessComponentModel, &unk_2170612A8);
    v5 = type metadata accessor for ItemCollection(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280E43400);
    }
  }
}

unint64_t sub_2166D3094()
{
  result = qword_280E2EAD0;
  if (!qword_280E2EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2EAD0);
  }

  return result;
}

uint64_t type metadata accessor for RemoveFollowerAction(uint64_t a1)
{
  result = qword_280E3BA20;
  if (!qword_280E3BA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D3134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2166D317C()
{
  result = qword_280E2C478;
  if (!qword_280E2C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C478);
  }

  return result;
}

uint64_t type metadata accessor for SocialOnboardingUpdateUserAttributesAction(uint64_t a1)
{
  result = qword_280E2D108;
  if (!qword_280E2D108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D327C(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2166D32F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_2166D332C()
{
  result = qword_280E2D1B8[0];
  if (!qword_280E2D1B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2D1B8);
  }

  return result;
}

void sub_2166D3380(uint64_t a1)
{
  if (!qword_280E3D9E0)
  {
    v4[0] = type metadata accessor for ArtistDetailHeaderLockup(255);
    v4[1] = sub_216906924(&qword_280E36D90, type metadata accessor for ArtistDetailHeaderLockup, &unk_2170411DC);
    v4[2] = &off_28293B400;
    v4[3] = sub_216906924(&qword_280E36D70, type metadata accessor for ArtistDetailHeaderLockup, &unk_21702C310);
    v2 = type metadata accessor for MappedContainerItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E3D9E0);
    }
  }
}

uint64_t type metadata accessor for StartSocialOnboardingAction(uint64_t a1)
{
  result = qword_280E32D28;
  if (!qword_280E32D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D34A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D34F0(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2166D35AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2166D35F4()
{
  result = qword_280E2FBA8[0];
  if (!qword_280E2FBA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2FBA8);
  }

  return result;
}

uint64_t type metadata accessor for UnblockUserAction(uint64_t a1)
{
  result = qword_280E3F578;
  if (!qword_280E3F578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D3694(uint64_t a1)
{
  result = sub_2166D2998(&qword_280E36D78, type metadata accessor for ArtistDetailHeaderLockup, &unk_21702C2F4);
  *(a1 + 8) = result;
  return result;
}

void sub_2166D36EC(uint64_t a1)
{
  if (!qword_280E457D0)
  {
    v4[0] = type metadata accessor for ArtistLatestReleaseLockup(255);
    v4[1] = sub_2166D3864(&qword_280E35C28, type metadata accessor for ArtistLatestReleaseLockup, &unk_217060798);
    v4[2] = &off_28293B3A0;
    v4[3] = sub_2166D3864(&qword_280E35C10, type metadata accessor for ArtistLatestReleaseLockup, &unk_21702C24C);
    v2 = type metadata accessor for MappedItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E457D0);
    }
  }
}

unint64_t sub_2166D37C8()
{
  result = qword_280E2F588[0];
  if (!qword_280E2F588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2F588);
  }

  return result;
}

uint64_t sub_2166D381C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D3864(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for UnfollowUserAction(uint64_t a1)
{
  result = qword_280E3E4A0;
  if (!qword_280E3E4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D38F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D3940(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2166D39FC()
{
  result = qword_280E2C470;
  if (!qword_280E2C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C470);
  }

  return result;
}

uint64_t type metadata accessor for UpdateFindFriendsPrivacySettingsAction(uint64_t a1)
{
  result = qword_280E2DA68;
  if (!qword_280E2DA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D3ABC(uint64_t a1)
{
  sub_2166D1C0C(319, &qword_280E2A1B8, MEMORY[0x277D21F70]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2166D1C0C(319, qword_280E2C6D0, _s7SectionV6HeaderVMa);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_21668A338(319, &qword_280E3C098, &qword_27CACB450, &qword_217069050);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_21668A338(319, &qword_280E457C8, &qword_27CABB7D0, &qword_2170479B0);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

unint64_t sub_2166D3C04()
{
  result = qword_280E2CA08[0];
  if (!qword_280E2CA08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2CA08);
  }

  return result;
}

uint64_t type metadata accessor for UpdateNotificationSettingsAction(uint64_t a1)
{
  result = qword_280E2F560;
  if (!qword_280E2F560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D3CEC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2166D3D30(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2166D3D74(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_2166D3DF8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2166D3DF8()
{
  if (!qword_280E29DE0)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29DE0);
    }
  }
}

uint64_t sub_2166D3E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2166D3EA0@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for SetPersistenceItemActionImplementation(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = *(v7 + 16);
  v11(&v13 - v9, v1, v6, v8);
  sub_2166D426C();
  sub_21700D5A4();
  sub_217007C94();
  (v11)(a1, v10, v6);
  sub_2166D458C(&qword_280E2DB40, type metadata accessor for SetPersistenceItemActionImplementation, &unk_2170403B8);
  sub_21700D5A4();
  sub_2166D4818(v5);
  return (*(v7 + 8))(v10, v6);
}

uint64_t type metadata accessor for SetPersistenceItemActionImplementation(uint64_t a1)
{
  result = qword_280E2DB08;
  if (!qword_280E2DB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_2166D40F8(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_2166D4124(uint64_t a1)
{
  if (!qword_280E3C090)
  {
    v4[0] = type metadata accessor for BubbleLockup(255);
    v4[1] = sub_2166D23CC(&qword_280E44DC0, type metadata accessor for BubbleLockup, "-P\x1Bk");
    v4[2] = &off_28293B380;
    v4[3] = sub_2166D23CC(&qword_280E44DA8, type metadata accessor for BubbleLockup, &unk_21702C230);
    v2 = type metadata accessor for MappedItemCollection(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E3C090);
    }
  }
}

uint64_t sub_2166D4200(uint64_t a1)
{
  result = sub_217007CA4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2166D426C()
{
  result = qword_280E2D288;
  if (!qword_280E2D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2D288);
  }

  return result;
}

uint64_t type metadata accessor for RemovePersistenceItemAction(uint64_t a1)
{
  result = qword_280E33298;
  if (!qword_280E33298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D4354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D439C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2166D43E4(uint64_t a1)
{
  if (!qword_280E3C068)
  {
    v4[0] = type metadata accessor for FlowcaseLockup(255);
    v4[1] = sub_2166D23CC(qword_280E43620, type metadata accessor for FlowcaseLockup, &unk_21702F2F8);
    v4[2] = &off_28293B340;
    v4[3] = sub_2166D23CC(&qword_280E43608, type metadata accessor for FlowcaseLockup, &unk_21702C1F8);
    v2 = type metadata accessor for MappedItemCollection(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E3C068);
    }
  }
}

uint64_t sub_2166D44C0(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2166D458C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SetPersistenceItemAction(uint64_t a1)
{
  result = qword_280E36010;
  if (!qword_280E36010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D4620(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D4668(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D46B0(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2166D473C(uint64_t a1)
{
  if (!qword_280E45800)
  {
    v4[0] = type metadata accessor for HeaderComponentModel(255);
    v4[1] = sub_2166D23CC(&qword_280E3C3A8, type metadata accessor for HeaderComponentModel, &unk_217066BA0);
    v4[2] = &off_28293B320;
    v4[3] = sub_2166D23CC(&qword_280E3C398, type metadata accessor for HeaderComponentModel, &unk_21702C1DC);
    v2 = type metadata accessor for MappedItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E45800);
    }
  }
}

uint64_t sub_2166D4818(uint64_t a1)
{
  v2 = type metadata accessor for SetPersistenceItemActionImplementation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2166D4874(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2166D4928(uint64_t a1)
{
  if (!qword_280E3C058)
  {
    v4[0] = type metadata accessor for HorizontalLockup(255);
    v4[1] = sub_2166D23CC(qword_280E410F0, type metadata accessor for HorizontalLockup, &unk_217015138);
    v4[2] = &off_28293B300;
    v4[3] = sub_2166D23CC(&qword_280E410D0, type metadata accessor for HorizontalLockup, &unk_21702C1C0);
    v2 = type metadata accessor for MappedItemCollection(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E3C058);
    }
  }
}

uint64_t type metadata accessor for IntentAction(uint64_t a1)
{
  result = qword_280E44C00;
  if (!qword_280E44C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166D4A98(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_2166D4B1C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2166D4B1C(uint64_t a1)
{
  if (!qword_280E2FA88)
  {
    v2 = sub_2166D4C08();
    v4 = type metadata accessor for AnyProtoRequestConvertibleIntent(a1, &type metadata for VoidExpressibleByJSON, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_280E2FA88);
    }
  }
}

uint64_t sub_2166D4B78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D4BC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2166D4C08()
{
  result = qword_280E39928;
  if (!qword_280E39928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E39928);
  }

  return result;
}

void sub_2166D4C5C(uint64_t a1)
{
  if (!qword_280E3C038)
  {
    v4[0] = type metadata accessor for HorizontalPosterLockup(255);
    v4[1] = sub_2166D23CC(qword_280E39370, type metadata accessor for HorizontalPosterLockup, &unk_217062870);
    v4[2] = &off_28293B2E0;
    v4[3] = sub_2166D23CC(&qword_280E39358, type metadata accessor for HorizontalPosterLockup, &unk_21702C1A4);
    v2 = type metadata accessor for MappedItemCollection(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E3C038);
    }
  }
}

unint64_t sub_2166D4D80(uint64_t a1)
{
  result = sub_2166D4E38();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2166D4DA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D4DF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2166D4E38()
{
  result = qword_280E39930[0];
  if (!qword_280E39930[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E39930);
  }

  return result;
}

unint64_t sub_2166D4E8C()
{
  result = qword_280E2E638;
  if (!qword_280E2E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2E638);
  }

  return result;
}

void sub_2166D4EE0(uint64_t a1)
{
  if (!qword_280E43418)
  {
    v2 = type metadata accessor for LinkComponentModel(255);
    v3 = sub_2166D23CC(&qword_280E3EC50, type metadata accessor for LinkComponentModel, &unk_21702DCA8);
    v5 = type metadata accessor for ItemCollection(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280E43418);
    }
  }
}

uint64_t sub_2166D4F74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ProcessDeepLinkAction(uint64_t a1)
{
  result = qword_280E39FD0;
  if (!qword_280E39FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166D5008(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_217005EF4();
    if (v2 <= 0x3F)
    {
      sub_2166CE38C(319);
      if (v3 <= 0x3F)
      {
        sub_21698FD58();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2166D5104(uint64_t a1)
{
  if (!qword_280E3C048)
  {
    v4[0] = type metadata accessor for LiveRadioGridLockup(255);
    v4[1] = sub_2166D23CC(qword_280E3DB38, type metadata accessor for LiveRadioGridLockup, &unk_217070820);
    v4[2] = &off_28293B2C0;
    v4[3] = sub_2166D23CC(&qword_280E3DB20, type metadata accessor for LiveRadioGridLockup, &unk_21702C188);
    v2 = type metadata accessor for MappedItemCollection(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E3C048);
    }
  }
}

unint64_t sub_2166D51E0()
{
  result = qword_280E2F960[0];
  if (!qword_280E2F960[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2F960);
  }

  return result;
}

uint64_t sub_2166D5234(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for InvalidationAction(uint64_t a1)
{
  result = qword_280E3EDA8;
  if (!qword_280E3EDA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166D5310(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_2166D5480(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2166D53A4(uint64_t a1)
{
  if (!qword_280E457B0)
  {
    v4[0] = type metadata accessor for PlaylistDetailHeaderLockup(255);
    v4[1] = sub_2166D23CC(qword_280E34400, type metadata accessor for PlaylistDetailHeaderLockup, &unk_217053180);
    v4[2] = &off_28293B2A0;
    v4[3] = sub_2166D23CC(&qword_280E343E8, type metadata accessor for PlaylistDetailHeaderLockup, &unk_21702C16C);
    v2 = type metadata accessor for MappedItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E457B0);
    }
  }
}

void sub_2166D5480(uint64_t a1)
{
  if (!qword_280E2A1E0)
  {
    sub_21700D704();
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2A1E0);
    }
  }
}

uint64_t sub_2166D5520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2166D5568()
{
  result = qword_280E2E650;
  if (!qword_280E2E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2E650);
  }

  return result;
}

void sub_2166D55BC(uint64_t a1)
{
  if (!qword_280E314F0)
  {
    v4[0] = type metadata accessor for PlaylistTrackLockup(255);
    v4[1] = sub_2166D56E4(qword_280E3D5F0, type metadata accessor for PlaylistTrackLockup, &unk_2170490C4);
    v4[2] = &off_28293B280;
    v4[3] = sub_2166D56E4(&qword_280E3D5C8, type metadata accessor for PlaylistTrackLockup, &unk_21702C150);
    v2 = type metadata accessor for MappedContainerItemCollection(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E314F0);
    }
  }
}

uint64_t type metadata accessor for OpenExternalURLAction(uint64_t a1)
{
  result = qword_280E3A698;
  if (!qword_280E3A698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D56E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D572C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D5774(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2166D57B8(uint64_t a1)
{
  result = sub_217005EF4();
  if (v2 <= 0x3F)
  {
    result = sub_21700D284();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_2166D58DC(uint64_t a1)
{
  result = sub_2166D2998(&qword_280E3D5D0, type metadata accessor for PlaylistTrackLockup, &unk_21702C134);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2166D5934()
{
  result = qword_280E2CA00;
  if (!qword_280E2CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2CA00);
  }

  return result;
}

void sub_2166D5988(uint64_t a1)
{
  if (!qword_280E3C088)
  {
    v4[0] = type metadata accessor for PosterLockup(255);
    v4[1] = sub_2166D23CC(qword_280E44990, type metadata accessor for PosterLockup, &unk_217028088);
    v4[2] = &off_28293B260;
    v4[3] = sub_2166D23CC(&qword_280E44978, type metadata accessor for PosterLockup, &unk_21702C118);
    v2 = type metadata accessor for MappedItemCollection(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E3C088);
    }
  }
}

uint64_t type metadata accessor for OpenUserAccountSettingsPageAction(uint64_t a1)
{
  result = qword_280E2F1B8;
  if (!qword_280E2F1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2166D5AB0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2166D5AF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2166D5B38()
{
  result = qword_280E2C9C8;
  if (!qword_280E2C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C9C8);
  }

  return result;
}

uint64_t type metadata accessor for OpenNotificationSettingsPageAction(uint64_t a1)
{
  result = qword_280E2EBC8;
  if (!qword_280E2EBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2166D5C20()
{
  result = qword_280E2D738[0];
  if (!qword_280E2D738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2D738);
  }

  return result;
}

void sub_2166D5C74(uint64_t a1)
{
  if (!qword_280E3C050)
  {
    v4[0] = type metadata accessor for RecentSearchLockup(255);
    v4[1] = sub_2166D23CC(qword_280E3E960, type metadata accessor for RecentSearchLockup, &unk_217025D44);
    v4[2] = &off_28293B240;
    v4[3] = sub_2166D23CC(&qword_280E3E948, type metadata accessor for RecentSearchLockup, &unk_21702C08C);
    v2 = type metadata accessor for MappedItemCollection(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E3C050);
    }
  }
}

uint64_t sub_2166D5D50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AllowExplicitContentAction(uint64_t a1)
{
  result = qword_280E349F8;
  if (!qword_280E349F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2166D5E2C()
{
  result = qword_280E344E0[0];
  if (!qword_280E344E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E344E0);
  }

  return result;
}

void sub_2166D5E80(uint64_t a1)
{
  if (!qword_280E43408)
  {
    v2 = type metadata accessor for SearchLandingBrickLockup(255);
    v3 = sub_2166D23CC(qword_280E363D0, type metadata accessor for SearchLandingBrickLockup, &unk_21701D410);
    v5 = type metadata accessor for ItemCollection(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280E43408);
    }
  }
}

uint64_t sub_2166D5F54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D5FE4(uint64_t a1)
{
  result = type metadata accessor for NoticeActionType(319);
  if (v2 <= 0x3F)
  {
    result = sub_21700D284();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2166D6068(uint64_t a1)
{
  if (!qword_280E3D698[0])
  {
    type metadata accessor for PlaylistAddableItem(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_280E3D698);
    }
  }
}

uint64_t sub_2166D60F4(uint64_t a1)
{
  sub_2166D6068(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_2166D614C(uint64_t a1)
{
  if (!qword_280E3C060)
  {
    v4[0] = type metadata accessor for TopSearchLockup(255);
    v4[1] = sub_2166D23CC(&qword_280E41D00, type metadata accessor for TopSearchLockup, &unk_21703FEF0);
    v4[2] = &off_28293B160;
    v4[3] = sub_2166D23CC(&qword_280E41CE8, type metadata accessor for TopSearchLockup, &unk_21702C000);
    v2 = type metadata accessor for MappedItemCollection(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E3C060);
    }
  }
}

unint64_t sub_2166D6228()
{
  result = qword_280E2E6F8;
  if (!qword_280E2E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2E6F8);
  }

  return result;
}

void sub_2166D627C(uint64_t a1)
{
  sub_2166D614C(319);
  if (v1 <= 0x3F)
  {
    sub_21700D194();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for EngagementEventAction(uint64_t a1)
{
  result = qword_280E3A9A0;
  if (!qword_280E3A9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D635C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2166D63EC(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_2166D654C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2166D6470(uint64_t a1)
{
  if (!qword_280E3C070)
  {
    v4[0] = _s6LockupVMa(255);
    v4[1] = sub_2166D23CC(&qword_280E439E8, _s6LockupVMa, &unk_21701C598);
    v4[2] = &off_28293B6A0;
    v4[3] = sub_2166D23CC(&qword_280E439D0, _s6LockupVMa, &unk_21702C070);
    v2 = type metadata accessor for MappedItemCollection(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E3C070);
    }
  }
}

void sub_2166D654C()
{
  if (!qword_280E2A0A0)
  {
    v0 = sub_21700E3F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A0A0);
    }
  }
}

uint64_t sub_2166D65B0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2166D65F4()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v128 = v4;
  v6 = v5;
  v122 = v7;
  v125 = v8;
  v9 = *(*v8 + 504);
  v10 = v9;
  v124 = *(*v8 + 512);
  type metadata accessor for PresentFullScreenCoverActionImplementation(0, v9, v124, v8);
  OUTLINED_FUNCTION_1();
  v120 = v11;
  v121 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_105();
  v119 = v14;
  v123 = v10;
  v129 = *(v10 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_105();
  v127 = v16;
  type metadata accessor for PresentSheetActionImplementation(0, v17, v124, v18);
  OUTLINED_FUNCTION_1();
  v112 = v19;
  v113 = v20;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v126 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_77();
  v102 = v26 - v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_4();
  v111 = v33;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_4();
  v114 = v35;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_4();
  v115 = v37;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_4();
  v116 = v39;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_4();
  v117 = v41;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v42);
  v118 = &v101 - v43;
  OUTLINED_FUNCTION_15_45();
  nullsub_1();
  OUTLINED_FUNCTION_5_71(v44);
  OUTLINED_FUNCTION_15_45();
  type metadata accessor for SelectTabActionImplementation(v45, v46, v47, v48);
  swift_unknownObjectRetain();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_45();
  sub_21700D5C4();
  swift_unknownObjectRelease();
  nullsub_1();
  v130 = v49;
  v131 = v50;
  OUTLINED_FUNCTION_15_45();
  type metadata accessor for DetachedFlowActionImplementation(v51, v52, v53, v54);
  swift_unknownObjectRetain();

  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_14_45();
  v55 = v103;
  OUTLINED_FUNCTION_18_35();
  v56 = v102;
  sub_21700D5C4();

  swift_unknownObjectRelease();
  v57 = *(v126 + 8);
  v57(v56, v23);
  v105 = v6;
  v106 = v3;
  v107 = v1;
  nullsub_1();
  OUTLINED_FUNCTION_5_71(v58);
  OUTLINED_FUNCTION_15_45();
  type metadata accessor for DetachedPopToRootActionImplementation(v59, v60, v61, v62);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_14_45();
  v63 = v108;
  OUTLINED_FUNCTION_18_35();
  sub_21700D5C4();
  swift_unknownObjectRelease();
  v57(v55, v23);
  v64 = v125;
  nullsub_1();
  v66 = OUTLINED_FUNCTION_5_71(v65);
  v67 = v123;
  type metadata accessor for DismissModalPresentationActionImplementation(v66, v123, v124, v68);
  v69 = v64;

  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_14_45();
  v70 = v104;
  OUTLINED_FUNCTION_18_35();
  sub_21700D5C4();

  v57(v63, v23);
  v71 = *(v129 + 16);
  v129 += 16;
  v108 = v71;
  v72 = v127;
  v71(v127, v128, v67);
  v73 = v110;
  sub_2166D7CBC(v72, v69, v110);

  v74 = v112;
  swift_getWitnessTable();
  v75 = v109;
  sub_21700D5C4();
  (*(v113 + 8))(v73, v74);
  v57(v70, v23);
  nullsub_1();
  v77 = OUTLINED_FUNCTION_5_71(v76);
  v78 = v67;
  v79 = v124;
  type metadata accessor for PresentAlertActionImplementation(v77, v67, v124, v80);

  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_14_45();
  v81 = v111;
  OUTLINED_FUNCTION_18_35();
  sub_21700D5C4();

  v57(v75, v23);
  nullsub_1();
  v83 = OUTLINED_FUNCTION_5_71(v82);
  type metadata accessor for PresentConfirmationDialogActionImplementation(v83, v78, v79, v84);

  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_14_45();
  v85 = v114;
  OUTLINED_FUNCTION_18_35();
  sub_21700D5C4();

  v57(v81, v23);
  v86 = *(v126 + 16);
  v87 = v115;
  v88 = v85;
  v86(v115, v85, v23);
  sub_2166D8A6C();
  v89 = v87;
  sub_21700D5A4();
  v57(v88, v23);
  v90 = v106;
  v91 = v107;
  nullsub_1();
  v93 = OUTLINED_FUNCTION_5_71(v92);
  type metadata accessor for SearchActionImplementation(v93, v90, v91, v94);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_14_45();
  v95 = v116;
  OUTLINED_FUNCTION_18_35();
  sub_21700D5C4();
  swift_unknownObjectRelease();
  v57(v89, v23);
  v96 = v117;
  v86(v117, v95, v23);
  sub_2166D9098();
  sub_21700D5A4();
  v57(v95, v23);
  v97 = v118;
  v86(v118, v96, v23);
  sub_2166D9234();
  sub_21700D5A4();
  v57(v96, v23);
  v98 = v127;
  v108(v127, v128, v123);
  v99 = v119;
  sub_2166D9578(v98, v125, v119);

  v100 = v120;
  swift_getWitnessTable();
  sub_21700D5C4();
  (*(v121 + 8))(v99, v100);
  v57(v97, v23);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2166D6F6C(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v4 = v2;
  if (v5 <= 0x3F)
  {
    v4 = type metadata accessor for PresentationStack(319, v2, *(a1 + 24), v3);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

void sub_2166D7008(uint64_t a1)
{
  if (!qword_280E43420)
  {
    v2 = type metadata accessor for SocialCardLockup(255);
    v3 = sub_2166D23CC(&qword_280E407F0, type metadata accessor for SocialCardLockup, &unk_217027CE8);
    v5 = type metadata accessor for ItemCollection(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280E43420);
    }
  }
}

uint64_t sub_2166D70B4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2166D7140(uint64_t a1)
{
  if (!qword_280E433F8)
  {
    FriendsPageLockup = type metadata accessor for SocialOnboardingFindFriendsPageLockup(255);
    v3 = sub_2166D23CC(qword_280E2DC28, type metadata accessor for SocialOnboardingFindFriendsPageLockup, &unk_2170412C0);
    v5 = type metadata accessor for ItemCollection(a1, FriendsPageLockup, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280E433F8);
    }
  }
}

uint64_t sub_2166D71EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D727C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_2166D72B8(uint64_t a1)
{
  if (!qword_280E3C028)
  {
    v4[0] = type metadata accessor for SocialOnboardingSharedPlaylistLockup(255);
    v4[1] = sub_2166D23CC(&qword_280E2DFF0, type metadata accessor for SocialOnboardingSharedPlaylistLockup, &unk_217047FE0);
    v4[2] = &off_28293B200;
    v4[3] = sub_2166D23CC(&qword_280E2DFD0, type metadata accessor for SocialOnboardingSharedPlaylistLockup, &unk_21702C054);
    v2 = type metadata accessor for MappedItemCollection(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E3C028);
    }
  }
}

uint64_t type metadata accessor for SelectTabAction(uint64_t a1)
{
  result = qword_280E42040;
  if (!qword_280E42040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D73E0(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2166D7454(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D74FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_2166D7538(uint64_t a1)
{
  if (!qword_280E3C030)
  {
    v4[0] = type metadata accessor for SocialProfileHorizontalLockup(255);
    v4[1] = sub_2166D23CC(&qword_280E310E0, type metadata accessor for SocialProfileHorizontalLockup, &unk_217034930);
    v4[2] = &off_28293B640;
    v4[3] = sub_2166D23CC(&qword_280E310C8, type metadata accessor for SocialProfileHorizontalLockup, &unk_21702C0E0);
    v2 = type metadata accessor for MappedItemCollection(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E3C030);
    }
  }
}

uint64_t sub_2166D7674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D76BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_2166D76F8(uint64_t a1)
{
  if (!qword_280E36650[0])
  {
    v4[0] = type metadata accessor for SplitPosterLockup(255);
    v4[1] = sub_2166D23CC(qword_280E3F790, type metadata accessor for SplitPosterLockup, &unk_21701BC90);
    v4[2] = &off_28293B1E0;
    v4[3] = sub_2166D23CC(&qword_280E3F778, type metadata accessor for SplitPosterLockup, &unk_21702C2D8);
    v2 = type metadata accessor for MappedItemPairCollection(a1, v4);
    if (!v3)
    {
      atomic_store(v2, qword_280E36650);
    }
  }
}

uint64_t sub_2166D77D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PopToRootAction(uint64_t a1)
{
  result = qword_280E424A8;
  if (!qword_280E424A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D7868(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2166D793C(uint64_t a1)
{
  result = sub_2166D2998(&qword_280E3F780, type metadata accessor for SplitPosterLockup, &unk_21702C2BC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2166D7994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_2166D79E8(uint64_t a1)
{
  if (!qword_280E3C078)
  {
    v4[0] = type metadata accessor for SquareLockup(255);
    v4[1] = sub_2166D23CC(&qword_280E445F0, type metadata accessor for SquareLockup, &unk_21704EAD0);
    v4[2] = &off_28293B1C0;
    v4[3] = sub_2166D23CC(&qword_280E445D0, type metadata accessor for SquareLockup, &unk_21702C038);
    v2 = type metadata accessor for MappedItemCollection(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E3C078);
    }
  }
}

uint64_t type metadata accessor for DismissModalPresentationAction(uint64_t a1)
{
  result = qword_280E30D18;
  if (!qword_280E30D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D7B10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D7B58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2166D7BA0(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_2166D7C24();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2166D7C24()
{
  if (!qword_280E29DB8)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29DB8);
    }
  }
}

uint64_t sub_2166D7CBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(*a2 + 504);
  (*(*(*(*a2 + 504) - 8) + 32))(a3, a1, *(*a2 + 504));
  result = type metadata accessor for PresentSheetActionImplementation(0, v6, *(v5 + 512), v7);
  *(a3 + *(result + 36)) = a2;
  return result;
}

void sub_2166D7D5C(uint64_t a1)
{
  if (!qword_280E45860)
  {
    v4[0] = type metadata accessor for SuperHeroLockup(255);
    v4[1] = sub_2166D7E84(qword_280E41E98, type metadata accessor for SuperHeroLockup, &unk_217044670);
    v4[2] = &off_28293B180;
    v4[3] = sub_2166D7E84(&qword_280E41E80, type metadata accessor for SuperHeroLockup, &unk_21702C01C);
    v2 = type metadata accessor for MappedItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E45860);
    }
  }
}

uint64_t type metadata accessor for PresentSheetAction(uint64_t a1)
{
  result = qword_280E3EA68;
  if (!qword_280E3EA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D7E84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D7ECC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D7F14(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ModalActionModelDestinations.Destination(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2166D7FE0(uint64_t a1)
{
  if (!qword_280E43428[0])
  {
    v2 = type metadata accessor for SuggestionItem(255);
    v3 = sub_2166D23CC(qword_280E42A28, type metadata accessor for SuggestionItem, &unk_217045960);
    v5 = type metadata accessor for ItemCollection(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_280E43428);
    }
  }
}

uint64_t type metadata accessor for ModalActionModelDestinations.Destination(uint64_t a1)
{
  result = qword_280E32238;
  if (!qword_280E32238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D80C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D8108(uint64_t a1)
{
  result = type metadata accessor for FlowAction(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MusicAppDestination(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MarketingSheetModel(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for CommerceWebViewModel(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for SubscriptionPurchaseViewModel(319);
          if (v6 <= 0x3F)
          {
            result = sub_2170077F4();
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2166D8214(uint64_t a1)
{
  if (!qword_280E43410)
  {
    v2 = type metadata accessor for TextListComponentModel(255);
    v3 = sub_2166D23CC(&qword_280E38AD0, type metadata accessor for TextListComponentModel, &unk_21701BF50);
    v5 = type metadata accessor for ItemCollection(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280E43410);
    }
  }
}

uint64_t sub_2166D82A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2166D8338(uint64_t a1)
{
  if (!qword_280E3C0A0[0])
  {
    v4[0] = type metadata accessor for TrackLockup(255);
    v4[1] = sub_2166D381C(&qword_280E44FA0, type metadata accessor for TrackLockup, &unk_21705C688);
    v4[2] = &off_28293B140;
    v4[3] = sub_2166D381C(&qword_280E44F88, type metadata accessor for TrackLockup, &unk_21702BFC8);
    v2 = type metadata accessor for MappedItemCollection(a1, v4);
    if (!v3)
    {
      atomic_store(v2, qword_280E3C0A0);
    }
  }
}

void sub_2166D8414(uint64_t a1)
{
  if (!qword_280E45828)
  {
    v4[0] = type metadata accessor for TVMovieDescription(255);
    v4[1] = sub_2166D23CC(qword_280E3E588, type metadata accessor for TVMovieDescription, &unk_21706591C);
    v4[2] = &off_28293B120;
    v4[3] = sub_2166D23CC(&qword_280E3E570, type metadata accessor for TVMovieDescription, &unk_21702BFAC);
    v2 = type metadata accessor for MappedItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E45828);
    }
  }
}

uint64_t sub_2166D84F0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2166D8594(uint64_t a1)
{
  if (!qword_280E457B8)
  {
    v4[0] = type metadata accessor for TVMovieDetailHeaderLockup(255);
    v4[1] = sub_2166D23CC(qword_280E34CE8, type metadata accessor for TVMovieDetailHeaderLockup, &unk_2170415F8);
    v4[2] = &off_28293B100;
    v4[3] = sub_2166D23CC(&qword_280E34CD0, type metadata accessor for TVMovieDetailHeaderLockup, &unk_21702BF90);
    v2 = type metadata accessor for MappedItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E457B8);
    }
  }
}

uint64_t sub_2166D8670(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2166D86B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for PresentAlertAction(uint64_t a1)
{
  result = qword_280E3EB00;
  if (!qword_280E3EB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166D8784(uint64_t a1)
{
  if (!qword_280E3C040)
  {
    v4[0] = type metadata accessor for VerticalVideoLockup(255);
    v4[1] = sub_2166D23CC(&qword_280E3CD90, type metadata accessor for VerticalVideoLockup, &unk_2170548D8);
    v4[2] = &off_28293B0A0;
    v4[3] = sub_2166D23CC(&qword_280E3CD78, type metadata accessor for VerticalVideoLockup, a0_0);
    v2 = type metadata accessor for MappedItemCollection(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E3C040);
    }
  }
}

uint64_t sub_2166D8860(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2166D88EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166D8934(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2166D89C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for PresentConfirmationDialogAction(uint64_t a1)
{
  result = qword_280E30120;
  if (!qword_280E30120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2166D8A6C()
{
  result = qword_280E314E8;
  if (!qword_280E314E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E314E8);
  }

  return result;
}

void sub_2166D8AC0(uint64_t a1)
{
  if (!qword_280E29AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABFAD0, &unk_217013D80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC98, &unk_21702A060);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E29AE0);
    }
  }
}

uint64_t type metadata accessor for ModalFlowAction(uint64_t a1)
{
  result = qword_280E42690;
  if (!qword_280E42690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166D8B98(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2166D8BFC(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FlowAction.Destination(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2166D8CF4(uint64_t a1)
{
  result = type metadata accessor for ArtistPageToolbarContentProvider(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CuratorPageToolbarContentProvider(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for SocialProfilePageToolbarContentProvider(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for GenericMusicItemToolbarContentProvider(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ReplayPageToolbarProvider(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2166D8DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for SearchAction(uint64_t a1)
{
  result = qword_280E44760;
  if (!qword_280E44760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166D8E6C(uint64_t a1)
{
  result = type metadata accessor for ArtistPageToolbarContent(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolbarProperties(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2166D8EF0(uint64_t a1)
{
  sub_216688560(319, qword_280E408A0, &type metadata for SearchParameters);
  if (v1 <= 0x3F)
  {
    sub_21700D284();
    if (v2 <= 0x3F)
    {
      sub_216688560(319, &qword_280E44FA8, &type metadata for SearchScope);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2166D8FB4(uint64_t a1)
{
  sub_2166D90EC(319);
  if (v1 <= 0x3F)
  {
    sub_21700C384();
    if (v2 <= 0x3F)
    {
      sub_21700DFD4();
      if (v3 <= 0x3F)
      {
        sub_216EBD790(319);
        if (v4 <= 0x3F)
        {
          sub_2166D9144(319);
          if (v5 <= 0x3F)
          {
            sub_2166D9618(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2166D9098()
{
  result = qword_280E2D938;
  if (!qword_280E2D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2D938);
  }

  return result;
}

void sub_2166D90EC(uint64_t a1)
{
  if (!qword_280E40340)
  {
    type metadata accessor for ContentDescriptor(255);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E40340);
    }
  }
}

void sub_2166D9144(uint64_t a1)
{
  if (!qword_280E2B428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACC448, &qword_21706C578);
    sub_2166D9530(qword_280E400E8, &qword_27CACC448, &qword_21706C578, &unk_21706C360);
    v1 = sub_2170081D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B428);
    }
  }
}

uint64_t type metadata accessor for RemoveAppWithAccessAction(uint64_t a1)
{
  result = qword_280E35168;
  if (!qword_280E35168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2166D9234()
{
  result = qword_280E2CB70[0];
  if (!qword_280E2CB70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2CB70);
  }

  return result;
}

uint64_t type metadata accessor for PromptRemoveAppWithAccessAction(uint64_t a1)
{
  result = qword_280E30080;
  if (!qword_280E30080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166D92EC(uint64_t a1)
{
  sub_2166D9478(319, &qword_280E4A460, MEMORY[0x277D2A4B8]);
  if (v1 <= 0x3F)
  {
    sub_217006714();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_2166D93E0(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_2166D94CC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2166D9478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2166D94CC(uint64_t a1)
{
  if (!qword_280E2A4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABDA20, &unk_2170187A0);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2A4F8);
    }
  }
}

uint64_t sub_2166D9530(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2166D9578@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(*a2 + 504);
  (*(*(*(*a2 + 504) - 8) + 32))(a3, a1, *(*a2 + 504));
  result = type metadata accessor for PresentFullScreenCoverActionImplementation(0, v6, *(v5 + 512), v7);
  *(a3 + *(result + 36)) = a2;
  return result;
}

void sub_2166D9618(uint64_t a1)
{
  if (!qword_280E2AC98)
  {
    type metadata accessor for SubscriptionStatusCoordinator();
    sub_216906924(&qword_280E30FC8, type metadata accessor for SubscriptionStatusCoordinator, &unk_217065168);
    v1 = sub_217008D04();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2AC98);
    }
  }
}

uint64_t type metadata accessor for PresentFullScreenCoverAction(uint64_t a1)
{
  result = qword_280E31FB0;
  if (!qword_280E31FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166D9718()
{
  OUTLINED_FUNCTION_49();
  v74 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_77();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v63 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26_34();
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_4();
  v63 = v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_4();
  v64 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  v65 = v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  v66 = v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  v67 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_4();
  v68 = v25;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_4();
  v69 = v27;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_4();
  v70 = v29;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_4();
  v71 = v31;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_4();
  v72 = v33;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v34);
  v73 = &v63 - v35;
  v36 = *(v4 + 16);
  OUTLINED_FUNCTION_42();
  v36();
  sub_2166D9DAC();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  (v36)(v11, v8, v2);
  sub_2166DA1D8();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v37 = *(v4 + 8);
  v37(v8, v2);
  (v36)(v0, v11, v2);
  sub_2166DA450();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v37(v11, v2);
  v38 = OUTLINED_FUNCTION_7_68();
  (v36)(v38);
  sub_2166DA6BC();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v39 = OUTLINED_FUNCTION_16_43();
  (v37)(v39);
  v40 = v63;
  v41 = OUTLINED_FUNCTION_8_58();
  (v36)(v41);
  sub_2166DA8FC();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v42 = OUTLINED_FUNCTION_97_1();
  (v37)(v42);
  v43 = v64;
  (v36)(v64, v40, v2);
  sub_2166DAB60();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v44 = OUTLINED_FUNCTION_16_43();
  (v37)(v44);
  (v36)(v65, v43, v2);
  sub_216AC7DFC();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v45 = OUTLINED_FUNCTION_16_43();
  (v37)(v45);
  v46 = OUTLINED_FUNCTION_8_58();
  (v36)(v46);
  sub_2166DACFC();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v47 = OUTLINED_FUNCTION_97_1();
  (v37)(v47);
  v48 = OUTLINED_FUNCTION_7_68();
  (v36)(v48);
  sub_2166DAF74();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v49 = OUTLINED_FUNCTION_16_43();
  (v37)(v49);
  v50 = OUTLINED_FUNCTION_8_58();
  (v36)(v50);
  sub_2166DB2F8();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v51 = OUTLINED_FUNCTION_97_1();
  (v37)(v51);
  v52 = OUTLINED_FUNCTION_7_68();
  (v36)(v52);
  sub_2166DB42C();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v53 = OUTLINED_FUNCTION_16_43();
  (v37)(v53);
  v54 = OUTLINED_FUNCTION_8_58();
  (v36)(v54);
  sub_2166DB550();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v55 = OUTLINED_FUNCTION_97_1();
  (v37)(v55);
  v56 = OUTLINED_FUNCTION_7_68();
  (v36)(v56);
  sub_2166DB6C4();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v57 = OUTLINED_FUNCTION_16_43();
  (v37)(v57);
  v58 = OUTLINED_FUNCTION_8_58();
  (v36)(v58);
  sub_2166DBA0C();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v59 = OUTLINED_FUNCTION_97_1();
  (v37)(v59);
  v60 = OUTLINED_FUNCTION_7_68();
  (v36)(v60);
  sub_2166DBC8C();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v61 = OUTLINED_FUNCTION_16_43();
  (v37)(v61);
  OUTLINED_FUNCTION_11_50();
  v36();
  sub_2166DC150();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v62 = OUTLINED_FUNCTION_97_1();
  (v37)(v62);
  OUTLINED_FUNCTION_26();
}

void sub_2166D9D28(uint64_t a1)
{
  sub_216688154();
  if (v1 <= 0x3F)
  {
    sub_217009124();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2166D9DAC()
{
  result = qword_280E2E648;
  if (!qword_280E2E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2E648);
  }

  return result;
}

void sub_2166D9E00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2166D9E90(uint64_t a1)
{
  result = type metadata accessor for CuratorToolbarContent(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolbarProperties(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2166D9F14(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    type metadata accessor for OpenFinancePageAction.Kind(319);
    if (v2 <= 0x3F)
    {
      sub_2166DA0E4(319);
      if (v3 <= 0x3F)
      {
        sub_2166DA168();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2166DA010(uint64_t a1)
{
  result = sub_217005EF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2166DA078(uint64_t a1)
{
  result = type metadata accessor for CuratorDetailHeaderComponentModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2166DA0E4(uint64_t a1)
{
  if (!qword_280E2A098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABFB20, &unk_217015300);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2A098);
    }
  }
}

void sub_2166DA168()
{
  if (!qword_280E3A600)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E3A600);
    }
  }
}

unint64_t sub_2166DA1D8()
{
  result = qword_280E2CE88[0];
  if (!qword_280E2CE88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2CE88);
  }

  return result;
}

uint64_t sub_2166DA22C(uint64_t a1)
{
  result = type metadata accessor for SocialProfileToolbarContent(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolbarProperties(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2166DA2B0(uint64_t a1)
{
  result = type metadata accessor for SocialProfileDescriptor(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for OpenUnifiedMessagesSheetAction(uint64_t a1)
{
  result = qword_280E30B10;
  if (!qword_280E30B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166DA388(uint64_t a1)
{
  sub_2166DA0E4(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = sub_21700D284();
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

unint64_t sub_2166DA450()
{
  result = qword_280E2D3E0;
  if (!qword_280E2D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2D3E0);
  }

  return result;
}

uint64_t type metadata accessor for SubscriptionPurchaseAction(uint64_t a1)
{
  result = qword_280E33CE8;
  if (!qword_280E33CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166DA4F0(uint64_t a1)
{
  result = type metadata accessor for GenericMusicItemToolbarContent(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolbarProperties(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2166DA574(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_2166DA0E4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2166DA600(uint64_t a1)
{
  sub_2166D90EC(319);
  if (v1 <= 0x3F)
  {
    sub_2170067A4();
    if (v2 <= 0x3F)
    {
      type metadata accessor for MenuContext(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2166DA6BC()
{
  result = qword_280E2DCC0[0];
  if (!qword_280E2DCC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2DCC0);
  }

  return result;
}

void sub_2166DA710(uint64_t a1)
{
  sub_2166DA7D0(319);
  if (v1 <= 0x3F)
  {
    sub_2166DA8D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for OpenAddToPlaylistAction(uint64_t a1)
{
  result = qword_280E37C68;
  if (!qword_280E37C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166DA7D0(uint64_t a1)
{
  if (!qword_280E2A368)
  {
    sub_21700C8E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB74B8, &unk_217017110);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E2A368);
    }
  }
}

void sub_2166DA850(uint64_t a1)
{
  sub_216AF7F78(319);
  if (v1 <= 0x3F)
  {
    sub_21700D284();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

ValueMetadata *sub_2166DA8D4()
{
  result = qword_280E460F8;
  if (!qword_280E460F8)
  {
    result = &type metadata for MusicSource;
    atomic_store(&type metadata for MusicSource, &qword_280E460F8);
  }

  return result;
}

unint64_t sub_2166DA8FC()
{
  result = qword_280E2DFF8;
  if (!qword_280E2DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2DFF8);
  }

  return result;
}

uint64_t type metadata accessor for OpenMoveToFolderAction(uint64_t a1)
{
  result = qword_280E39278;
  if (!qword_280E39278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166DA99C(uint64_t a1)
{
  result = sub_21700C924();
  if (v2 <= 0x3F)
  {
    result = sub_21700D284();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2166DAA20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2166DAA70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2166DAAC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2166DAB10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2166DAB60()
{
  result = qword_280E30600[0];
  if (!qword_280E30600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E30600);
  }

  return result;
}

void sub_2166DABB4(uint64_t a1)
{
  if (!qword_280E48440)
  {
    type metadata accessor for BackgroundConfiguration(255);
    v1 = sub_217007E14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E48440);
    }
  }
}

uint64_t type metadata accessor for ViewLyricsAction(uint64_t a1)
{
  result = qword_280E40660;
  if (!qword_280E40660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166DAC78(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    result = sub_21700C084();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2166DACFC()
{
  result = qword_280E30C80;
  if (!qword_280E30C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E30C80);
  }

  return result;
}

void sub_2166DAD50(uint64_t a1)
{
  sub_2166DAE14(319);
  if (v1 <= 0x3F)
  {
    sub_2166DAF18();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Artwork(319);
      if (v3 <= 0x3F)
      {
        sub_2166DAFC8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_2166DAE14(uint64_t a1)
{
  if (!qword_280E36640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE5D0, &qword_21702F5F8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_280E36640);
    }
  }
}

uint64_t sub_2166DAE94(uint64_t a1)
{
  result = type metadata accessor for GoToArtistContext(319);
  if (v2 <= 0x3F)
  {
    result = sub_21700D284();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2166DAF18()
{
  result = qword_280E36648;
  if (!qword_280E36648)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E36648);
  }

  return result;
}

unint64_t sub_2166DAF74()
{
  result = qword_280E31888[0];
  if (!qword_280E31888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E31888);
  }

  return result;
}

void sub_2166DAFC8(uint64_t a1)
{
  if (!qword_280E38A20[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABE5D8, &qword_21702F600);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_280E38A20);
    }
  }
}

uint64_t type metadata accessor for GoToAlbumAction(uint64_t a1)
{
  result = qword_280E42738;
  if (!qword_280E42738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166DB0BC(uint64_t a1)
{
  sub_21700C084();
  if (v1 <= 0x3F)
  {
    sub_2166DB204();
    if (v2 <= 0x3F)
    {
      sub_21700D284();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2166DB158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CatalogPagePresenter.InternalState.Content(255, *(a1 + 16), *(a1 + 24), a4);
  v5 = v4;
  sub_21700F164();
  if (v6 <= 0x3F && v5 <= 0x3F)
  {
    sub_2166D8AC0(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2166DB204()
{
  if (!qword_280E460F0)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E460F0);
    }
  }
}

uint64_t sub_2166DB254(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2166DB2F8()
{
  result = qword_280E32308[0];
  if (!qword_280E32308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E32308);
  }

  return result;
}

void sub_2166DB34C(uint64_t a1)
{
  if (!qword_280E2B350)
  {
    type metadata accessor for MusicTabChangePublisher(255);
    sub_2166DB5A4(&qword_280E46AC8, type metadata accessor for MusicTabChangePublisher, &unk_2170554F8);
    v1 = sub_2170086B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B350);
    }
  }
}

uint64_t type metadata accessor for GoToSongAction(uint64_t a1)
{
  result = qword_280E43530;
  if (!qword_280E43530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2166DB42C()
{
  result = qword_280E2F1F8;
  if (!qword_280E2F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2F1F8);
  }

  return result;
}

uint64_t type metadata accessor for GoToTVEpisodeAction(uint64_t a1)
{
  result = qword_280E3DFF0;
  if (!qword_280E3DFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166DB4CC(uint64_t a1)
{
  result = sub_2170073D4();
  if (v2 <= 0x3F)
  {
    result = sub_21700D284();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2166DB550()
{
  result = qword_280E2D940;
  if (!qword_280E2D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2D940);
  }

  return result;
}

uint64_t sub_2166DB5A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PresentExpandedTextAction(uint64_t a1)
{
  result = qword_280E35308;
  if (!qword_280E35308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166DB638(uint64_t a1)
{
  sub_216688154();
  if (v1 <= 0x3F)
  {
    sub_21700D284();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2166DB6C4()
{
  result = qword_280E47590[0];
  if (!qword_280E47590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E47590);
  }

  return result;
}

uint64_t type metadata accessor for ReportMusicItemConcernAction(uint64_t a1)
{
  result = qword_280E47618;
  if (!qword_280E47618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166DB764(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2166DB7C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2166DB82C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2170080E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2166DB880(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_2166DB96C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2166DB904()
{
  if (!qword_280E2B438)
  {
    v0 = sub_2170080E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B438);
    }
  }
}

void sub_2166DB96C(uint64_t a1)
{
  if (!qword_280E48328[0])
  {
    type metadata accessor for ReportableMusicItem(255);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, qword_280E48328);
    }
  }
}

unint64_t sub_2166DBA0C()
{
  result = qword_280E47828[0];
  if (!qword_280E47828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E47828);
  }

  return result;
}

void sub_2166DBA60(uint64_t a1)
{
  if (!qword_280E2A1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABFB60, &unk_21706CE20);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2A1A8);
    }
  }
}

uint64_t type metadata accessor for ShareMusicItemAction(uint64_t a1)
{
  result = qword_280E478B8;
  if (!qword_280E478B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166DBB28(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_2166DBBFC(319, qword_280E473A0, type metadata accessor for ShareableMusicItem);
    if (v2 <= 0x3F)
    {
      sub_2166DBBFC(319, &qword_280E4A510, MEMORY[0x277CC9260]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2166DBBFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2166DBC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_2166DBC8C()
{
  result = qword_280E2F360;
  if (!qword_280E2F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2F360);
  }

  return result;
}

uint64_t type metadata accessor for CollaborationAction(uint64_t a1)
{
  result = qword_280E3E2C0;
  if (!qword_280E3E2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166DBDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_1172();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC93E8, &unk_21705FBA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E20, &qword_21705FBA0);
  sub_2170089F4();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC93E0, &qword_21705FB98);
  sub_217009564();
  sub_2166DBFE0();
  OUTLINED_FUNCTION_7_5();
  sub_2166D9530(v6, &qword_27CAC6E20, &qword_21705FBA0, v7);
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2166DC098();
  OUTLINED_FUNCTION_74_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1171();
}

void sub_2166DBF04(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_2166DBF88(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2166DBF88(uint64_t a1)
{
  if (!qword_280E2A360)
  {
    sub_21700C924();
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2A360);
    }
  }
}

unint64_t sub_2166DBFE0()
{
  result = qword_280E2B318;
  if (!qword_280E2B318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC93E8, &unk_21705FBA8);
    sub_2166D9530(qword_280E48638, &qword_27CAB9140, &qword_21701C730, MEMORY[0x277D7EAF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B318);
  }

  return result;
}

unint64_t sub_2166DC098()
{
  result = qword_280E2B320;
  if (!qword_280E2B320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC93E0, &qword_21705FB98);
    sub_2166D9530(&qword_280E48630, &qword_27CAB9150, &qword_21701C740, MEMORY[0x277D7EB80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B320);
  }

  return result;
}

unint64_t sub_2166DC150()
{
  result = qword_280E2C468;
  if (!qword_280E2C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C468);
  }

  return result;
}

uint64_t type metadata accessor for PerformPlaylistCollaborationRequestAction(uint64_t a1)
{
  result = qword_280E2D328;
  if (!qword_280E2D328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166DC1F0@<X0>(uint64_t a1@<X8>)
{
  v3 = swift_allocObject();
  memcpy((v3 + 16), v1, 0x50uLL);

  sub_2166CBFB4(v1, &v6);
  type metadata accessor for BootstrapState(0);
  sub_2166DC484(&qword_280E43828, type metadata accessor for BootstrapState, &unk_217050A88);
  OUTLINED_FUNCTION_227();
  result = sub_217008684();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = sub_216DC2768;
  *(a1 + 24) = v3;
  *(a1 + 32) = 257;
  return result;
}

uint64_t sub_2166DC2CC()
{

  return swift_deallocObject();
}

uint64_t sub_2166DC368(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ContentDescriptor(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2166DC3F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166DC43C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2166DC484(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2166DC4CC()
{
  OUTLINED_FUNCTION_49();
  v107 = v2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1CA0, &qword_217040248);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105();
  v105 = v4;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1CA8, &qword_217040250);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  v103 = v6;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1CB0, &qword_217040258);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v8);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1CB8, &qword_217040260);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v10);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1CC0, &qword_217040268);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_26_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_4();
  v114 = v22;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_4();
  v115 = v24;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_4();
  v117 = v26;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_4();
  v118 = v28;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_4();
  v116 = v30;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_4();
  v108 = v34;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_4();
  v109 = v36;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_4();
  v100 = v40;
  OUTLINED_FUNCTION_3_1();
  v42 = MEMORY[0x28223BE20](v41);
  v102 = v92 - v43;
  v44 = v15 + 16;
  v45 = *(v15 + 16);
  (v45)(v19, v0, v13, v42);
  sub_2166DDBC0();
  OUTLINED_FUNCTION_20_34();
  sub_21700D5A4();
  OUTLINED_FUNCTION_15_45();
  v45();
  sub_2166DDD94();
  OUTLINED_FUNCTION_21_37();
  sub_21700D5A4();
  v46 = *(v15 + 8);
  v46(v19, v13);
  v47 = v114;
  OUTLINED_FUNCTION_28_27();
  v45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1CC8, &qword_217040270);
  v119 = &unk_21701B980;
  sub_2166D9530(&qword_280E339B0, &qword_27CAC1CC8, &qword_217040270, &unk_21701B980);
  OUTLINED_FUNCTION_11_50();
  OUTLINED_FUNCTION_20_34();
  v48 = v47;
  sub_21700D5A4();
  v120 = v15 + 8;
  v46(v1, v13);
  v49 = v115;
  (v45)(v115, v48, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1CD0, &qword_217040278);
  OUTLINED_FUNCTION_42();
  v50 = v119;
  sub_2166D9530(v51, v52, v53, v119);
  OUTLINED_FUNCTION_20_34();
  sub_21700D5A4();
  v46(v48, v13);
  OUTLINED_FUNCTION_28_27();
  v45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1CD8, &qword_217040280);
  sub_2166D9530(&qword_280E339C0, &qword_27CAC1CD8, &qword_217040280, v50);
  OUTLINED_FUNCTION_20_34();
  sub_21700D5A4();
  v46(v49, v13);
  OUTLINED_FUNCTION_15_45();
  v45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1CE0, &qword_217040288);
  OUTLINED_FUNCTION_42();
  v54 = v119;
  sub_2166D9530(v55, v56, v57, v119);
  sub_21700D5A4();
  v46(v117, v13);
  v58 = v116;
  OUTLINED_FUNCTION_28_27();
  v45();
  v110 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1CE8, &qword_217040290);
  sub_2166D9530(&qword_280E339B8, &qword_27CAC1CE8, &qword_217040290, v54);
  OUTLINED_FUNCTION_11_50();
  sub_21700D5A4();
  v46(v118, v13);
  v111 = v46;
  v59 = v92[1];
  OUTLINED_FUNCTION_15_45();
  v45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1CF0, &qword_217040298);
  sub_2166D9530(&qword_280E339C8, &qword_27CAC1CF0, &qword_217040298, v119);
  OUTLINED_FUNCTION_11_50();
  sub_21700D5A4();
  v46(v58, v13);
  v116 = 0xD00000000000001ALL;
  v113 = "siriBannerConfiguration";
  v60 = sub_21700E4D4();
  v61 = v93;
  *v93 = v60;
  v115 = "LibraryPinActionPinnedItem";
  *(v61 + 8) = OUTLINED_FUNCTION_23_34();
  v114 = "@JSValue16@0:8";
  v118 = "LibraryUnPinActionUnpinnedItem";
  v119 = 0xD000000000000015;
  sub_217007C94();
  v62 = v92[2];
  OUTLINED_FUNCTION_28_27();
  v112 = v44;
  v63 = v110;
  v110();
  v117 = &unk_2170363B0;
  sub_2166D9530(&qword_280E30BC8, &qword_27CAC1CC0, &qword_217040268, &unk_2170363B0);
  OUTLINED_FUNCTION_27_31();
  v64 = v62;
  sub_21700D5A4();
  sub_216697664(v61, &qword_27CAC1CC0, &qword_217040268);
  v65 = v111;
  v111(v59, v13);
  v66 = sub_21700E4D4();
  v67 = v95;
  *v95 = v66;
  v68 = OUTLINED_FUNCTION_23_34();
  *(v67 + 8) = v68;
  v69 = v114;
  OUTLINED_FUNCTION_9_57(v68, v114 | 0x8000000000000000);
  (v63)(v108, v64, v13);
  sub_2166D9530(&qword_280E30BB8, &qword_27CAC1CB8, &qword_217040260, v117);
  OUTLINED_FUNCTION_19_37();
  sub_21700D5A4();
  sub_216697664(v67, &qword_27CAC1CB8, &qword_217040260);
  v65(v64, v13);
  v70 = sub_21700E4D4();
  v71 = v99;
  *v99 = v70;
  v72 = sub_21700E4D4();
  *(v71 + 8) = v72;
  OUTLINED_FUNCTION_9_57(v72, v69 | 0x8000000000000000);
  v73 = v108;
  v74 = v110;
  (v110)(v109, v108, v13);
  sub_2166D9530(&qword_280E30BC0, &qword_27CAC1CB0, &qword_217040258, v117);
  OUTLINED_FUNCTION_19_37();
  sub_21700D5A4();
  sub_216697664(v71, &qword_27CAC1CB0, &qword_217040258);
  v75 = v111;
  v111(v73, v13);
  v76 = sub_21700E4D4();
  v77 = v103;
  *v103 = v76;
  v78 = sub_21700E4D4();
  *(v77 + 8) = v78;
  OUTLINED_FUNCTION_9_57(v78, v114 | 0x8000000000000000);
  v79 = v96;
  v80 = v109;
  (v74)(v96, v109, v13);
  v81 = v117;
  sub_2166D9530(&qword_280E30BB0, &qword_27CAC1CA8, &qword_217040250, v117);
  OUTLINED_FUNCTION_19_37();
  sub_21700D5A4();
  sub_216697664(v77, &qword_27CAC1CA8, &qword_217040250);
  v75(v80, v13);
  v82 = sub_21700E4D4();
  v83 = v105;
  *v105 = v82;
  v84 = OUTLINED_FUNCTION_23_34();
  *(v83 + 8) = v84;
  OUTLINED_FUNCTION_9_57(v84, v114 | 0x8000000000000000);
  v85 = v98;
  v86 = v110;
  (v110)(v98, v79, v13);
  sub_2166D9530(qword_280E30BD0, &qword_27CAC1CA0, &qword_217040248, v81);
  OUTLINED_FUNCTION_27_31();
  sub_21700D5A4();
  sub_216697664(v83, &qword_27CAC1CA0, &qword_217040248);
  v87 = v111;
  v111(v79, v13);
  v88 = v100;
  (v86)(v100, v85, v13);
  v89 = v86;
  sub_2166DEE20();
  OUTLINED_FUNCTION_21_37();
  sub_21700D5A4();
  v87(v85, v13);
  v90 = v87;
  v91 = v102;
  (v89)(v102, v88, v13);
  sub_2166DEFFC();
  OUTLINED_FUNCTION_21_37();
  sub_21700D5A4();
  v90(v88, v13);
  (v89)(v107, v91, v13);
  sub_2166DF71C();
  OUTLINED_FUNCTION_21_37();
  sub_21700D5A4();
  v90(v91, v13);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2166DD134@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217007D64();
  *a1 = result;
  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_2166DD1B0(uint64_t a1)
{
  type metadata accessor for Name(319);
  if (v1 <= 0x3F)
  {
    sub_217007CA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2166DD234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2;
  v110 = a2;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9150, &qword_21701C740);
  OUTLINED_FUNCTION_1();
  v100[6] = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC93E0, &qword_21705FB98);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v13);
  v111 = a1;
  v14 = *(a1 + 16);
  v100[3] = *(v14 - 8);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v17 - v16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E20, &qword_21705FBA0);
  v100[5] = v14;
  v18 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v103 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v22);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC93E8, &unk_21705FBA8);
  OUTLINED_FUNCTION_31_0();
  sub_217009564();
  OUTLINED_FUNCTION_64_16();
  v106 = v23;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9140, &qword_21701C730);
  OUTLINED_FUNCTION_1();
  v28 = v27;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_42_2();
  v105 = v14;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_48_1();
  MEMORY[0x28223BE20](v31);
  v33 = v100 - v32;
  v109 = v10;
  v108 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v107 = v34;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_41_1();
  v36 = sub_2166DDC34();
  if ((~v36 & 0xF000000000000007) == 0)
  {
    goto LABEL_8;
  }

  v39 = v5;
  v40 = v111;
  if (!(v36 >> 62))
  {
    v81 = *(v39 + 16);
    v102 = v38;
    v100[0] = v36;
    v101 = v37;
    v81();
    type metadata accessor for ExplicitBadgingPresenter(0);
    v82 = OUTLINED_FUNCTION_31_0();
    type metadata accessor for ObjectGraph(v82);
    OUTLINED_FUNCTION_116();
    sub_21700E094();
    v4 = *(v40 + 24);
    sub_2166DC484(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter, &unk_21701ED38);
    sub_21700A654();

    OUTLINED_FUNCTION_67();
    v83 = OUTLINED_FUNCTION_25_7();
    v84(v83);
    OUTLINED_FUNCTION_7_5();
    v89 = sub_2166D9530(v85, v86, v87, v88);
    v118 = v4;
    v119 = v89;
    OUTLINED_FUNCTION_0_9();
    WitnessTable = swift_getWitnessTable();
    v91 = v104;
    v92 = OUTLINED_FUNCTION_52_3();
    sub_2166C24DC(v92, v93, WitnessTable);
    v94 = *(v103 + 8);
    v95 = OUTLINED_FUNCTION_27_0();
    v94(v95);
    sub_2166C24DC(v91, v18, WitnessTable);
    v96 = sub_2166DBFE0();
    sub_2166C2CB0();
    v116 = v96;
    v117 = WitnessTable;
    OUTLINED_FUNCTION_6_1();
    swift_getWitnessTable();
    sub_2166DC098();
    OUTLINED_FUNCTION_26_37();
    sub_2166C2718();
    sub_2166DE78C(v100[0], v101, v102);
    OUTLINED_FUNCTION_67();
    v97 = OUTLINED_FUNCTION_26_37();
    v98(v97);
    v99 = OUTLINED_FUNCTION_27_0();
    v94(v99);
    (v94)(v104, v18);
    goto LABEL_13;
  }

  v5 = v39;
  if (v36 >> 62 == 1)
  {
    v41 = v36;
    v42 = (v36 & 0x3FFFFFFFFFFFFFFFLL);

    OUTLINED_FUNCTION_779();
    sub_217007564();
    if (*(v5 + 33))
    {
      v43 = 1.0;
    }

    else
    {
      v43 = 0.0;
    }

    v44 = v100[2];
    v45 = OUTLINED_FUNCTION_74_0();
    v46(v45);
    *(v44 + *(v109 + 36)) = v43;
    v47 = v102;
    sub_216DD9B04();
    sub_2166DBFE0();
    OUTLINED_FUNCTION_1234();
    OUTLINED_FUNCTION_7_5();
    v52 = sub_2166D9530(v48, v49, v50, v51);
    v128 = v4;
    v129 = v52;
    OUTLINED_FUNCTION_0_9();
    v53 = swift_getWitnessTable();
    v126 = v44;
    v127 = v53;
    OUTLINED_FUNCTION_6_1();
    swift_getWitnessTable();
    sub_2166DC098();
    OUTLINED_FUNCTION_588();
    sub_2166C2CB0();

    v54 = v47;
    v55 = &qword_27CAC93E0;
    v56 = &qword_21705FB98;
  }

  else
  {
LABEL_8:
    sub_217007514();
    if (*(v5 + 32))
    {
      v57 = 1.0;
    }

    else
    {
      v57 = 0.0;
    }

    (*(v28 + 32))(v3, v4, v26);
    *(v3 + *(v105 + 36)) = v57;
    OUTLINED_FUNCTION_74_0();
    sub_216DD9B04();
    sub_2166DBFE0();
    OUTLINED_FUNCTION_1234();
    OUTLINED_FUNCTION_7_5();
    v62 = sub_2166D9530(v58, v59, v60, v61);
    v114 = v4;
    v115 = v62;
    OUTLINED_FUNCTION_0_9();
    v63 = swift_getWitnessTable();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_942();
    sub_2166C2718();
    v112 = v3;
    v113 = v63;
    OUTLINED_FUNCTION_6_1();
    swift_getWitnessTable();
    sub_2166DC098();
    OUTLINED_FUNCTION_54_3();
    sub_2166C2718();
    OUTLINED_FUNCTION_67();
    v64 = OUTLINED_FUNCTION_54_3();
    v65(v64);
    v54 = v33;
    v55 = &qword_27CAC93E8;
    v56 = &unk_21705FBA8;
  }

  sub_2166997CC(v54, v55, v56);
LABEL_13:
  v66 = sub_2166DBFE0();
  OUTLINED_FUNCTION_7_5();
  v71 = sub_2166D9530(v67, v68, v69, v70);
  v124 = v4;
  v125 = v71;
  OUTLINED_FUNCTION_0_9();
  v72 = swift_getWitnessTable();
  v122 = v66;
  v123 = v72;
  v73 = swift_getWitnessTable();
  v74 = sub_2166DC098();
  v120 = v73;
  v121 = v74;
  swift_getWitnessTable();
  v75 = OUTLINED_FUNCTION_9_6();
  sub_2166C24DC(v75, v76, v77);
  OUTLINED_FUNCTION_67();
  v78 = OUTLINED_FUNCTION_9_6();
  return v79(v78);
}

unint64_t sub_2166DDBC0()
{
  result = qword_280E32470;
  if (!qword_280E32470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E32470);
  }

  return result;
}

uint64_t sub_2166DDC34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_2166DDCC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_20(a1, a2, a3, a4);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return v4;
}

uint64_t sub_2166DDD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_21700D284();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1075()
{

  return sub_21700B854();
}

unint64_t sub_2166DDD94()
{
  result = qword_280E33BC0;
  if (!qword_280E33BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E33BC0);
  }

  return result;
}