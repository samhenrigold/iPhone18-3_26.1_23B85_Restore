uint64_t sub_220ECAF8C(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  v3 = sub_220FC36E0();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220ECB050, 0, 0);
}

void sub_220ECB050()
{
  v2 = *(v0 + 24) * 1000.0;
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_32();
  sub_220F450D8(v3);
  sub_220FC39C0();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_220ECB174;
  OUTLINED_FUNCTION_63_0();

  sub_220F510BC();
}

uint64_t sub_220ECB174()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 64) = v0;

  v7 = OUTLINED_FUNCTION_63_0();
  v8(v7);
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_220ECB2C8()
{
  OUTLINED_FUNCTION_19();
  **(v0 + 16) = 0;

  OUTLINED_FUNCTION_32_0();

  return v1();
}

uint64_t sub_220ECB328()
{
  OUTLINED_FUNCTION_19();

  **(v0 + 16) = 1;

  OUTLINED_FUNCTION_32_0();

  return v1();
}

uint64_t sub_220ECB394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E518, &qword_220FD07D0);
  v5[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220ECB434, 0, 0);
}

uint64_t sub_220ECB434()
{
  OUTLINED_FUNCTION_32();
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_220FC3080();
  v0[6] = v2;

  swift_task_alloc();
  OUTLINED_FUNCTION_18();
  v0[7] = v3;
  *v3 = v4;
  v3[1] = sub_220ECB538;
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  return sub_220ECB6D8(v5, v2, v7, v6);
}

void sub_220ECB538()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    v7 = *(v3 + 40);

    sub_220E3B2DC(v7, &qword_27CF9E518, &qword_220FD07D0);
    OUTLINED_FUNCTION_33();

    MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_220ECB674()
{
  OUTLINED_FUNCTION_19();
  **(v0 + 16) = 1;

  OUTLINED_FUNCTION_32_0();

  return v1();
}

uint64_t sub_220ECB6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_220FBFDC0();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E518, &qword_220FD07D0);
  v4[23] = swift_task_alloc();
  v6 = sub_220FC3060();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220ECB830, 0, 0);
}

uint64_t sub_220ECB830()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_25();
  v0[15] = v0[17];
  sub_220FC3070();
  sub_220ECD080(&qword_27CF9E520, MEMORY[0x277CC9D78], MEMORY[0x277CC9D80]);

  sub_220FC2BA0();
  v0[27] = *MEMORY[0x277D76428];
  OUTLINED_FUNCTION_34_4();
  sub_220ECD080(v1, v2, MEMORY[0x277CC9D70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_18();
  v0[28] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_23_5(v3);
  OUTLINED_FUNCTION_61_0();

  return MEMORY[0x282200308](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_220ECB94C()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v3[29] = v0;

  if (v0)
  {
    (*(v3[25] + 8))(v3[26], v3[24]);
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220ECBA60()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 160);
  v2 = OUTLINED_FUNCTION_49();
  if (__swift_getEnumTagSinglePayload(v2, v3, v1) == 1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    v4 = 1;
LABEL_3:
    __swift_storeEnumTagSinglePayload(*(v0 + 128), v4, 1, *(v0 + 160));

    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_61_0();

    return v6(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v14 = *(*(v0 + 168) + 32);
  OUTLINED_FUNCTION_61_3();
  v14();
  v15 = sub_220FBFDB0();
  if (!v15)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
LABEL_20:
    sub_220E3B2DC(v0 + 56, &unk_27CF9D6B0, &qword_220FCD450);
    goto LABEL_21;
  }

  v16 = v15;
  *(v0 + 88) = sub_220FC2700();
  *(v0 + 96) = v17;
  sub_220FC3540();
  if (*(v16 + 16) && (v18 = sub_220F19514(), (v19 & 1) != 0))
  {
    sub_220E21408(*(v16 + 56) + 32 * v18, v0 + 56);
  }

  else
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  sub_220E81E90(v0 + 16);
  if (!*(v0 + 80))
  {
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    if (*(v0 + 104) == *(v0 + 144) && *(v0 + 112) == *(v0 + 152))
    {

LABEL_25:
      (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
      OUTLINED_FUNCTION_61_3();
      v14();
      v4 = 0;
      goto LABEL_3;
    }

    v21 = sub_220FC3940();

    if (v21)
    {
      goto LABEL_25;
    }
  }

LABEL_21:
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  OUTLINED_FUNCTION_34_4();
  sub_220ECD080(v22, v23, MEMORY[0x277CC9D70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_18();
  *(v0 + 224) = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_23_5(v24);
  OUTLINED_FUNCTION_61_0();

  return MEMORY[0x282200308](v26, v27, v28, v29, v30, v31, v32, v33);
}

uint64_t sub_220ECBD24()
{
  OUTLINED_FUNCTION_32();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220ECBDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_220ECBDCC, 0, 0);
}

uint64_t sub_220ECBDCC()
{
  OUTLINED_FUNCTION_19();
  sub_220FC2AB0();
  *(v0 + 40) = OUTLINED_FUNCTION_66_0(v1);
  OUTLINED_FUNCTION_60_2();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v2 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_220ECBE44()
{
  OUTLINED_FUNCTION_32();

  v0 = OUTLINED_FUNCTION_9();
  sub_220ECBEE4(v0, v1);
  OUTLINED_FUNCTION_32_0();

  return v2();
}

void sub_220ECBEE4(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70, &qword_220FCBAB0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v16 - v6;
  if (qword_27CF9C008 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_27CF9CBF8);
  sub_220ECC944(v8, v7, &qword_27CF9CF70, &qword_220FCBAB0);
  v9 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    sub_220E3B2DC(v7, &qword_27CF9CF70, &qword_220FCBAB0);
  }

  else
  {

    v10 = sub_220FC1780();
    v11 = sub_220FC2E30();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      *(v12 + 14) = sub_220E20FF8(a1, a2, &v17);
      _os_log_impl(&dword_220E15000, v10, v11, "Posting accessibility announcement %{private,mask.hash}s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223D9DDF0](v13, -1, -1);
      MEMORY[0x223D9DDF0](v12, -1, -1);
    }

    (*(*(v9 - 8) + 8))(v7, v9);
  }

  v14 = *MEMORY[0x277D76438];
  v15 = sub_220FC26C0();
  UIAccessibilityPostNotification(v14, v15);
}

uint64_t sub_220ECC154()
{
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_32_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  v1[1] = sub_220E5B490;
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_19_2();

  return sub_220EC9158(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_220ECC218()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_32_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_24(v1);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_40_0();

  return sub_220EC8B0C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_220ECC2BC()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_32_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_24(v1);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_40_0();

  return sub_220EC8C20(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_220ECC360()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_32_4();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_24(v3);

  return sub_220EC8834(v5, v6, v7, v1);
}

uint64_t sub_220ECC3F4()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_32_4();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_24(v3);

  return sub_220EC8568(v5, v6, v7, v1);
}

uint64_t sub_220ECC488()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_32_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_24(v1);
  v7.n128_f64[0] = OUTLINED_FUNCTION_62_1();

  return sub_220EC47A8(v7, v8, v3, v4, v5, v6);
}

void sub_220ECC534(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {
    MEMORY[0x2821F9730](a1, a2, a3);
  }
}

uint64_t sub_220ECC57C()
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_38_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E508, &qword_220FD5A80);
  OUTLINED_FUNCTION_8_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43(v1);
  *v2 = v3;
  v2[1] = sub_220E5B490;
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_19_2();

  return sub_220ECA668(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_220ECC670(uint64_t a1)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_32_4();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_24(v2);
  OUTLINED_FUNCTION_61_0();

  return sub_220ECBDA8(v4, v5, v6, v7, v8);
}

uint64_t sub_220ECC708()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  v1[1] = sub_220E5B490;
  OUTLINED_FUNCTION_40_0();

  return sub_220ECA898(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_84Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220ECC808(uint64_t a1)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_32_4();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_24(v2);
  OUTLINED_FUNCTION_61_0();

  return sub_220ECB394(v4, v5, v6, v7, v8);
}

uint64_t sub_220ECC8A0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_32_4();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_24(v3);

  return sub_220ECAF8C(v5, v1);
}

uint64_t sub_220ECC944(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_9();
  v6(v5);
  return a2;
}

uint64_t sub_220ECC9A0()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_35();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E578, &qword_220FD5B50);
  OUTLINED_FUNCTION_8_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43(v1);
  *v2 = v3;
  v2[1] = sub_220E5B490;
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_40_0();

  return sub_220EC9BB0(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_220ECCA80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E580, &qword_220FD0800);
  OUTLINED_FUNCTION_8_0(v2);
  return sub_220EC7020(a1);
}

uint64_t sub_220ECCB04()
{
  OUTLINED_FUNCTION_35();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E588, &qword_220FD5B70);
  OUTLINED_FUNCTION_29(v1);
  OUTLINED_FUNCTION_79();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_220E5B490;
  v8 = OUTLINED_FUNCTION_62_1();

  return sub_220EC6A80(v8, v9, v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_108Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v2 + v5);

  return MEMORY[0x2821FE8E8](v2, v5 + v6, v4 | 7);
}

uint64_t sub_220ECCCAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E588, &qword_220FD5B70);
  OUTLINED_FUNCTION_8_0(v0);
  v1 = OUTLINED_FUNCTION_48_3();

  return sub_220EC6DFC(v1, v2);
}

uint64_t sub_220ECCD30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_9();
  v5(v4);
  return a2;
}

uint64_t sub_220ECCD8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220ECCDE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SonifierDataState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220ECCE48()
{
  OUTLINED_FUNCTION_25();
  v1 = type metadata accessor for SonifierDataState(0);
  OUTLINED_FUNCTION_29(v1);
  OUTLINED_FUNCTION_79();
  v3 = *(v0 + v2);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_43(v4);
  *v5 = v6;
  v5[1] = sub_220E5B490;
  v7 = OUTLINED_FUNCTION_58();

  return sub_220EC376C(v7, v8, v9, v10, v3);
}

uint64_t sub_220ECCF3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SonifierDataState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_220ECCFA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090, &qword_220FC9D10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220ECD010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090, &qword_220FC9D10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_220ECD080(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220ECD0C8()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_32_4();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_24(v3);

  return sub_220EC2B7C(v5, v6, v7, v1);
}

void OUTLINED_FUNCTION_16_6(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

void OUTLINED_FUNCTION_35_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_50_3()
{

  JUMPOUT(0x223D9DDF0);
}

uint64_t OUTLINED_FUNCTION_54_3(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 48) = v1;
  *(a1 + 56) = v4 & 1;

  return swift_retain_n();
}

id OUTLINED_FUNCTION_55_2@<X0>(void *a1@<X8>)
{

  return a1;
}

void OUTLINED_FUNCTION_57_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_58_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_66_0(__n128 a1)
{

  return sub_220FC2AA0();
}

BOOL OUTLINED_FUNCTION_71_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_73_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_76_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_78(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_85()
{

  return swift_unknownObjectWeakLoadStrong();
}

void OUTLINED_FUNCTION_88()
{
}

id OUTLINED_FUNCTION_89(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t sub_220ECD4FC@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v3 = OUTLINED_FUNCTION_15_0();
  v4 = type metadata accessor for WeatherMapAnnotatedLocationData(v3);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocationPickerViewModel.Row(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v15);
  v19 = &v42 - v18;
  v47 = *v2;
  v20 = *(v1 + 16);
  v21 = MEMORY[0x277D84F90];
  v45 = v1;
  if (v20)
  {
    v43 = v16;
    v44 = v13;
    v49 = MEMORY[0x277D84F90];
    sub_220F0B330(0, v20, 0);
    v21 = v49;
    v22 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v23 = *(v5 + 72);
    do
    {
      sub_220ECFD14();
      v48 = v47;
      sub_220ECD8C8(v8, &v48, v19);
      sub_220ECFDC4(v8, type metadata accessor for WeatherMapAnnotatedLocationData);
      v49 = v21;
      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_220F0B330((v24 > 1), v25 + 1, 1);
        v21 = v49;
      }

      *(v21 + 16) = v25 + 1;
      sub_220ECFD6C();
      v22 += v23;
      --v20;
    }

    while (v20);
    v16 = v43;
    v13 = v44;
  }

  if (v47 == 5)
  {
    v26 = *(v21 + 16);
    if (v26)
    {
      v27 = &v13[*(v16 + 20)];
      v28 = v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v29 = *(v10 + 72);
      v30 = MEMORY[0x277D84F90];
      do
      {
        sub_220ECFD14();
        v31 = *(v27 + 5);
        v32 = v27[64];
        sub_220ECFDC4(v13, type metadata accessor for LocationPickerViewModel.Row);
        if (v32 == 3)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_220F37528(0, *(v30 + 16) + 1, 1, v30);
            v30 = v35;
          }

          v34 = *(v30 + 16);
          v33 = *(v30 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_220F37528(v33 > 1, v34 + 1, 1, v30);
            v30 = v36;
          }

          *(v30 + 16) = v34 + 1;
          *(v30 + 8 * v34 + 32) = v31;
        }

        v28 += v29;
        --v26;
      }

      while (v26);
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    v37 = sub_220ECF680(v30);
    v38 = v39;
  }

  else
  {
    v37 = 0;
    v38 = 1;
  }

  v40 = v46;
  result = sub_220ECF6C4(v45, v17);
  *v40 = v47;
  *(v40 + 8) = v21;
  *(v40 + 16) = v37;
  *(v40 + 24) = v38 & 1;
  *(v40 + 25) = result & 1;
  return result;
}

uint64_t sub_220ECD8C8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(char *, char *, char *)@<X1>, uint64_t a3@<X8>)
{
  v266 = a2;
  v267 = a3;
  v269 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E5B8, &qword_220FD08B8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v246 = &v220 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E5C0, &qword_220FD08C0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v244 = &v220 - v9;
  v248 = sub_220FC1FF0();
  v247 = *(v248 - 8);
  MEMORY[0x28223BE20](v248, v10);
  v245 = &v220 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E5C8, &qword_220FD08C8);
  v235 = *(v236 - 8);
  MEMORY[0x28223BE20](v236, v12);
  v234 = &v220 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E5D0, &qword_220FD08D0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v252 = &v220 - v16;
  v251 = sub_220FC2DB0();
  v260 = *(v251 - 8);
  MEMORY[0x28223BE20](v251, v17);
  v249 = &v220 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_220FC2DA0();
  v242 = *(v253 - 8);
  MEMORY[0x28223BE20](v253, v19);
  v250 = &v220 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = sub_220FC0950();
  v258 = *(v259 - 8);
  MEMORY[0x28223BE20](v259, v21);
  v257 = &v220 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E5D8, &qword_220FD08D8);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v255 = &v220 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v254 = &v220 - v28;
  v262 = sub_220FC2450();
  v264 = *(v262 - 8);
  MEMORY[0x28223BE20](v262, v29);
  v256 = &v220 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_220FC2F60();
  v232 = *(v233 - 1);
  MEMORY[0x28223BE20](v233, v31);
  v231 = &v220 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D050, &unk_220FD08E0);
  v229 = *(v230 - 8);
  MEMORY[0x28223BE20](v230, v33);
  v228 = (&v220 - v34);
  v227 = sub_220FC08D0();
  v224 = *(v227 - 8);
  MEMORY[0x28223BE20](v227, v35);
  v223 = &v220 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_220FC0890();
  v221 = *(v222 - 8);
  MEMORY[0x28223BE20](v222, v37);
  v220 = &v220 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D058, &unk_220FC9CB0);
  MEMORY[0x28223BE20](v39 - 8, v40);
  v238 = &v220 - v41;
  v42 = sub_220FC07C0();
  v237 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v220 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = sub_220FC0760();
  v265 = *(v268 - 1);
  MEMORY[0x28223BE20](v268, v46);
  v48 = &v220 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_220FC06F0();
  v225 = *(v226 - 8);
  MEMORY[0x28223BE20](v226, v49);
  v51 = (&v220 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8, &unk_220FD08F0);
  MEMORY[0x28223BE20](v52 - 8, v53);
  v243 = &v220 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55, v56);
  v241 = &v220 - v57;
  MEMORY[0x28223BE20](v58, v59);
  v240 = &v220 - v60;
  MEMORY[0x28223BE20](v61, v62);
  v239 = &v220 - v63;
  MEMORY[0x28223BE20](v64, v65);
  v67 = &v220 - v66;
  MEMORY[0x28223BE20](v68, v69);
  v71 = &v220 - v70;
  MEMORY[0x28223BE20](v72, v73);
  v75 = &v220 - v74;
  MEMORY[0x28223BE20](v76, v77);
  v79 = &v220 - v78;
  v263 = sub_220FC05E0();
  MEMORY[0x28223BE20](v263, v80);
  v261 = &v220 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82, v83);
  v85 = (&v220 - v84);
  MEMORY[0x28223BE20](v86, v87);
  v90 = &v220 - v89;
  v91 = *v266;
  if (v91 == 3)
  {
    v100 = v238;
    v101 = v45;
    v51 = v237;
    sub_220F05D10(v75);
    v67 = v268;
    if (__swift_getEnumTagSinglePayload(v75, 1, v268) == 1)
    {
      v102 = &qword_27CF9CEE8;
      v103 = &unk_220FD08F0;
      v104 = v75;
    }

    else
    {
      v110 = v265;
      v111 = v75;
      v112 = v48;
      (*(v265 + 32))(v48, v111, v67);
      sub_220FC0710();
      if (__swift_getEnumTagSinglePayload(v100, 1, v42) != 1)
      {
        v201 = v51;
        v51[4](v45, v100, v42);
        v202 = v220;
        sub_220FC07B0();
        v203 = sub_220FC0860();
        v266 = v42;
        v204 = v203;
        v206 = v205;
        (*(v221 + 8))(v202, v222);
        v274 = v204;
        v275 = v206;
        MEMORY[0x223D9BD60](32, 0xE100000000000000);
        v207 = v223;
        sub_220FC0790();
        v208 = sub_220FC08A0();
        v264 = v112;
        v209 = v208;
        v211 = v210;
        v51 = (v224 + 8);
        v263 = *(v224 + 8);
        (v263)(v207, v227);
        MEMORY[0x223D9BD60](v209, v211);

        v99 = v274;
        v98 = v275;
        v212 = v101;
        sub_220FC0790();
        v213 = sub_220FC08B0();
        v90 = v214;
        (v263)(v207, v227);
        v215 = v201[1];
        v85 = (v201 + 1);
        (v215)(v212, v266);
        (*(v110 + 8))(v264, v67);
        v71 = v213;
LABEL_37:
        v97 = 1;
        goto LABEL_41;
      }

      (*(v110 + 8))(v48, v67);
      v102 = &qword_27CF9D058;
      v103 = &unk_220FC9CB0;
      v104 = v100;
    }

    sub_220E3B2DC(v104, v102, v103);
    if (qword_2812C5B30 != -1)
    {
      swift_once();
    }

    v113 = qword_2812CE4B0;
    v99 = sub_220FBFF80();
    v98 = v114;

    v71 = 0;
    v90 = 0;
    goto LABEL_37;
  }

  if (v91 == 4)
  {
    v95 = v88;
    sub_220F05D10(v71);
    v96 = v268;
    if (__swift_getEnumTagSinglePayload(v71, 1, v268) == 1)
    {
      sub_220E3B2DC(v71, &qword_27CF9CEE8, &unk_220FD08F0);
      v97 = 2;
      v98 = 0xE200000000000000;
      v99 = 11565;
    }

    else
    {
      v105 = v261;
      sub_220FC0700();
      (*(v265 + 8))(v71, v96);
      v85 = v228;
      sub_220FC0580();
      (v95[1])(v105, v263);
      v90 = v231;
      sub_220FC2430();
      v106 = v264;
      v67 = v256;
      (*(v264 + 104))(v256, *MEMORY[0x277D7B408], v262);
      sub_220FC0C80();
      sub_220FC0C60();
      sub_220ECFE2C(&qword_27CF9D078, MEMORY[0x277D7B508], MEMORY[0x277D7B500]);
      v107 = v230;
      v71 = v233;
      v99 = sub_220FBFCB0();
      v98 = v108;

      v109 = *(v106 + 8);
      v51 = (v106 + 8);
      v109(v67, v262);
      (*(v232 + 8))(v90, v71);
      v229[1](v85, v107);
      v97 = 2;
    }

    goto LABEL_41;
  }

  v266 = v88;
  if (v91 != 5)
  {
    sub_220F05D10(v79);
    v67 = v268;
    if (__swift_getEnumTagSinglePayload(v79, 1, v268) == 1)
    {
      sub_220E3B2DC(v79, &qword_27CF9CEE8, &unk_220FD08F0);
    }

    else
    {
      sub_220FC0700();
      (*(v265 + 8))(v79, v67);
      v138 = v266;
      v139 = v85;
      v85 = v263;
      v266[4](v90, v139, v263);
      sub_220FC05D0();
      sub_220FC0570();
      v140 = sub_220FC06D0();
      v142 = v141;
      (*(v225 + 8))(v51, v226);
      if (v142)
      {
        v274 = v140;
        v275 = v142;
        v272 = 0x6C6C69662ELL;
        v273 = 0xE500000000000000;
        v270 = 0;
        v271 = 0xE000000000000000;
        sub_220E921A4();
        v99 = sub_220FC33E0();
        v98 = v143;

        v71 = sub_220FC0590();
        v144 = v138[1];
        v67 = (v138 + 1);
        v145 = v90;
        v90 = v146;
        (v144)(v145, v85);
LABEL_40:
        v97 = 0;
        goto LABEL_41;
      }

      v216 = v138[1];
      v67 = (v138 + 1);
      (v216)(v90, v85);
    }

    v99 = 0;
    v98 = 0;
    v71 = 0;
    v90 = 0;
    goto LABEL_40;
  }

  sub_220F05D10(v67);
  v92 = v268;
  if (__swift_getEnumTagSinglePayload(v67, 1, v268) == 1)
  {
    sub_220E3B2DC(v67, &qword_27CF9CEE8, &unk_220FD08F0);
    v93 = 1;
    v94 = v254;
  }

  else
  {
    v115 = v261;
    sub_220FC0700();
    (*(v265 + 8))(v67, v92);
    v116 = v257;
    sub_220FC05C0();
    (v266[1])(v115, v263);
    v94 = v254;
    sub_220FC0930();
    (*(v258 + 8))(v116, v259);
    v93 = 0;
  }

  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048, &unk_220FC9CA0);
  __swift_storeEnumTagSinglePayload(v94, v93, 1, v117);
  v118 = *MEMORY[0x277D7B490];
  v119 = v260;
  v120 = v249;
  v121 = v251;
  v233 = *(v260 + 104);
  (v233)(v249, v118, v251);
  v122 = sub_220FC03E0();
  v123 = v252;
  v232 = v122;
  __swift_storeEnumTagSinglePayload(v252, 1, 1, v122);
  sub_220FC2C50();
  v124 = v250;
  sub_220FC2420();

  sub_220E3B2DC(v123, &qword_27CF9E5D0, &qword_220FD08D0);
  v125 = *(v119 + 8);
  v260 = v119 + 8;
  v231 = v125;
  (v125)(v120, v121);
  v126 = v264;
  v127 = *(v264 + 104);
  v128 = v256;
  LODWORD(v230) = *MEMORY[0x277D7B400];
  v129 = v262;
  v229 = v127;
  (v127)(v256);
  v130 = sub_220ECFE2C(&qword_27CF9E5E0, MEMORY[0x277D7B488], MEMORY[0x277D7B480]);
  v131 = v253;
  v228 = v130;
  v238 = sub_220FC3390();
  v237 = v132;
  v133 = *(v126 + 8);
  v264 = v126 + 8;
  v133(v128, v129);
  v134 = *(v242 + 8);
  v134(v124, v131);
  v135 = v239;
  sub_220F05D10(v239);
  v136 = v268;
  if (__swift_getEnumTagSinglePayload(v135, 1, v268) == 1)
  {
    sub_220E3B2DC(v135, &qword_27CF9CEE8, &unk_220FD08F0);
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048, &unk_220FC9CA0);
    __swift_storeEnumTagSinglePayload(v255, 1, 1, v137);
  }

  else
  {
    v147 = v261;
    sub_220FC0700();
    (*(v265 + 8))(v135, v136);
    v148 = v257;
    sub_220FC05C0();
    (v266[1])(v147, v263);
    sub_220FC0920();
    (*(v258 + 8))(v148, v259);
  }

  v149 = v249;
  v150 = v251;
  (v233)(v249, *MEMORY[0x277D7B498], v251);
  v151 = v252;
  __swift_storeEnumTagSinglePayload(v252, 1, 1, v232);
  sub_220FC2C50();
  v152 = v250;
  sub_220FC2420();

  sub_220E3B2DC(v151, &qword_27CF9E5D0, &qword_220FD08D0);
  (v231)(v149, v150);
  v153 = v256;
  v154 = v262;
  (v229)(v256, v230, v262);
  v155 = v253;
  v156 = sub_220FC3390();
  v158 = v157;
  v133(v153, v154);
  v134(v152, v155);
  if (qword_2812C5B30 != -1)
  {
    swift_once();
  }

  v159 = qword_2812CE4B0;
  sub_220FBFF80();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0, &unk_220FCA870);
  v160 = swift_allocObject();
  *(v160 + 16) = xmmword_220FC8E10;
  v161 = MEMORY[0x277D837D0];
  *(v160 + 56) = MEMORY[0x277D837D0];
  v162 = sub_220E69720();
  v163 = v237;
  *(v160 + 32) = v238;
  *(v160 + 40) = v163;
  *(v160 + 96) = v161;
  *(v160 + 104) = v162;
  *(v160 + 64) = v162;
  *(v160 + 72) = v156;
  *(v160 + 80) = v158;
  v264 = sub_220FC26D0();
  v262 = v164;

  v165 = v240;
  sub_220F05D10(v240);
  v166 = v268;
  if (__swift_getEnumTagSinglePayload(v165, 1, v268) == 1)
  {
    sub_220E3B2DC(v165, &qword_27CF9CEE8, &unk_220FD08F0);
    v260 = 0;
    v167 = v265;
    v168 = v263;
  }

  else
  {
    v169 = v261;
    sub_220FC0700();
    v167 = v265;
    (*(v265 + 8))(v165, v166);
    v170 = v257;
    sub_220FC05C0();
    v168 = v263;
    (v266[1])(v169, v263);
    v171 = v234;
    sub_220FC0940();
    (*(v258 + 8))(v170, v259);
    v172 = v236;
    sub_220FBFC80();
    (*(v235 + 8))(v171, v172);
    v260 = sub_220FC2210();
  }

  v173 = v241;
  sub_220F05D10(v241);
  if (__swift_getEnumTagSinglePayload(v173, 1, v166) == 1)
  {
    sub_220E3B2DC(v173, &qword_27CF9CEE8, &unk_220FD08F0);
    v263 = 0xE200000000000000;
    v265 = 11565;
  }

  else
  {
    v174 = v261;
    sub_220FC0700();
    (*(v167 + 8))(v173, v166);
    v175 = v257;
    sub_220FC05C0();
    (v266[1])(v174, v168);
    sub_220FC0910();
    (*(v258 + 8))(v175, v259);
    v265 = sub_220FC08F0();
    v263 = v176;
  }

  v177 = v243;
  sub_220F05D10(v243);
  if (__swift_getEnumTagSinglePayload(v177, 1, v166) == 1)
  {
    sub_220E3B2DC(v177, &qword_27CF9CEE8, &unk_220FD08F0);
    v268 = 0;
    v266 = 0;
  }

  else
  {
    v178 = v261;
    sub_220FC0700();
    (*(v167 + 8))(v177, v166);
    v179 = v257;
    sub_220FC05C0();
    (v266[1])(v178, v168);
    sub_220FC0910();
    (*(v258 + 8))(v179, v259);
    v180 = sub_220FC0900();
    v182 = v181;
    v183 = qword_2812CE4B0;
    sub_220FBFF80();

    v184 = swift_allocObject();
    *(v184 + 16) = xmmword_220FC8E30;
    *(v184 + 56) = MEMORY[0x277D837D0];
    *(v184 + 64) = v162;
    *(v184 + 32) = v180;
    *(v184 + 40) = v182;
    v268 = sub_220FC26D0();
    v266 = v185;
  }

  v261 = OBJC_IVAR____TtC11WeatherMaps30LocationPickerViewModelFactory_measurements;
  v51 = v263;
  v274 = v265;
  v275 = v263;
  sub_220E921A4();

  v186 = sub_220FC2060();
  v188 = v187;
  v190 = v189;
  sub_220FC1F10();
  v191 = sub_220FC2030();
  v193 = v192;
  v195 = v194;

  sub_220ECFE1C(v186, v188, v190 & 1);

  v196 = sub_220FC1FC0();
  __swift_storeEnumTagSinglePayload(v244, 1, 1, v196);
  v197 = sub_220FC2040();
  __swift_storeEnumTagSinglePayload(v246, 1, 1, v197);
  v198 = v245;
  sub_220FC1FE0();
  sub_220FC1FD0();
  v3 = v199;
  v200 = v193;
  v90 = v265;
  sub_220ECFE1C(v191, v200, v195 & 1);

  (*(v247 + 8))(v198, v248);
  sub_220E3B2DC(v255, &qword_27CF9E5D8, &qword_220FD08D8);
  sub_220E3B2DC(v254, &qword_27CF9E5D8, &qword_220FD08D8);
  v97 = 3;
  v67 = v268;
  v99 = v264;
  v98 = v262;
  v71 = v260;
  v85 = v266;
LABEL_41:
  v217 = v267;
  sub_220F05E6C(v267);
  result = type metadata accessor for LocationPickerViewModel.Row(0);
  v219 = v217 + *(result + 20);
  *v219 = v99;
  *(v219 + 8) = v98;
  *(v219 + 16) = v71;
  *(v219 + 24) = v90;
  *(v219 + 32) = v51;
  *(v219 + 40) = v3;
  *(v219 + 48) = v67;
  *(v219 + 56) = v85;
  *(v219 + 64) = v97;
  return result;
}

uint64_t sub_220ECF680(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_220ECF6C4(uint64_t a1, __n128 a2)
{
  v42 = a1;
  v45 = sub_220FC0FD0();
  v2 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v3);
  v44 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220FC1070();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  v13 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v35 - v19;
  if (sub_220FC0F90() == 16967 && v21 == 0xE200000000000000)
  {
  }

  else
  {
    v23 = sub_220FC3940();

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v24 = *(v42 + 16);
  if (!v24)
  {
    return 1;
  }

  v25 = v42 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v36 = (v9 + 16);
  v37 = (v9 + 32);
  v41 = (v9 + 8);
  v42 = v2 + 8;
  v39 = *(v13 + 72);
  v40 = v16;
  while (1)
  {
    sub_220ECFD14();
    sub_220ECFD14();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v38;
      sub_220ECFD6C();
      (*v36)(v12, v26, v8);
      sub_220ECFDC4(v26, type metadata accessor for WeatherMapAnnotatedLocation);
    }

    else
    {
      (*v37)(v12, v16, v8);
    }

    v27 = v8;
    __swift_project_boxed_opaque_existential_1((v46 + 16), *(v46 + 40));
    v28 = v44;
    sub_220FC0FF0();
    v29 = sub_220FC0F70();
    v31 = v30;
    (*v42)(v28, v45);
    (*v41)(v12, v27);
    if (v31 < 2)
    {
      break;
    }

    v8 = v27;
    if (v29 == 16967 && v31 == 0xE200000000000000)
    {
      sub_220E5E3D0(16967, 0xE200000000000000);
      sub_220ECFDC4(v20, type metadata accessor for WeatherMapAnnotatedLocationData);
    }

    else
    {
      v33 = sub_220FC3940();
      sub_220E5E3D0(v29, v31);
      sub_220ECFDC4(v20, type metadata accessor for WeatherMapAnnotatedLocationData);
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }

    v16 = v40;
    v25 += v39;
    if (!--v24)
    {
      return 1;
    }
  }

  sub_220ECFDC4(v20, type metadata accessor for WeatherMapAnnotatedLocationData);
  return 0;
}

uint64_t sub_220ECFB88()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = OBJC_IVAR____TtC11WeatherMaps30LocationPickerViewModelFactory_measurements;
  sub_220FC2010();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(&v0[v1]);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for LocationPickerViewModelFactory(uint64_t a1)
{
  result = qword_27CF9E5A8;
  if (!qword_27CF9E5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220ECFC78(uint64_t a1)
{
  result = sub_220FC2010();
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

uint64_t sub_220ECFD14()
{
  v2 = OUTLINED_FUNCTION_15_0();
  v3(v2);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_220ECFD6C()
{
  v2 = OUTLINED_FUNCTION_15_0();
  v3(v2);
  OUTLINED_FUNCTION_2();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_220ECFDC4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

double sub_220ECFE1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_220ECFE2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_220ECFE74(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    v2 = 26;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setBlendMode_];
}

id sub_220ECFE90()
{
  v126 = sub_220FC0040();
  OUTLINED_FUNCTION_6();
  v2 = v1;
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_1();
  v125 = v5;
  v6 = sub_220FC03E0();
  MEMORY[0x28223BE20](v6 - 8, v7);
  OUTLINED_FUNCTION_1();
  v124 = v8;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E568, &unk_220FD5B40);
  OUTLINED_FUNCTION_6();
  v10 = v9;
  MEMORY[0x28223BE20](v11, v12);
  v123 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v121 = (&v111 - v16);
  v120 = sub_220FC3910();
  OUTLINED_FUNCTION_6();
  v18 = v17;
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_1();
  v119 = v21;
  v127 = v0;
  v22 = &v0[OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_scale];
  v23 = *&v0[OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_scale + 56];
  v24 = v0[OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_scale + 72];
  if (v24 != 2 && (v24 & 1) != 0 && *(v22 + 64))
  {
  }

  else
  {
  }

  v25 = &qword_27CF9E000;
  v26 = *(v22 + 33);
  if (v26 == 2)
  {
    goto LABEL_7;
  }

  if (v26)
  {
    v38 = 0xEC00000078614D6ELL;
  }

  else
  {
    v38 = 0x8000000220FDB510;
  }

  if (v38 == 0xEC00000078614D6ELL && (v26 & 1) != 0)
  {

    goto LABEL_22;
  }

  v41 = sub_220FC3940();

  if (v41)
  {
LABEL_22:
    v118 = v22;
    v22 = v141;
    i = *(v23 + 16);
    v43 = i + 1;
    v44 = v23;
    while (--v43)
    {
      v45 = v44 + 56;
      v46 = *(v44 + 40);
      v44 += 56;
      if (v46)
      {
        v47 = v2;
        v48 = *v45;
        v49 = *(v45 + 8);

        v50 = v48;
        v2 = v47;
        v22 = v141;

        goto LABEL_64;
      }
    }

    goto LABEL_63;
  }

LABEL_7:
  memcpy(__dst, v22, 0x60uLL);
  sub_220E31B58(__dst, &v131);
  sub_220E312A4(1);
  v28 = v27;
  sub_220E31784(__dst);
  v126 = *&v127[OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_gradient];
  v25 = *(v28 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v25)
  {
    *&v137 = MEMORY[0x277D84F90];
    sub_220F0B1A0(0, v25, 0);
    v29 = *(v28 + 16);
    v30 = v137;
    v31 = v29 - 1;
    v32 = (v28 + 16 * v29 + 24);
    do
    {
      if (v31 == -1)
      {
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
        __break(1u);
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      if (v31 >= *(v28 + 16))
      {
        goto LABEL_110;
      }

      v33 = *v32;
      v34 = [v33 CGColor];
      type metadata accessor for CGColor(0);
      v133 = v35;

      *&v131 = v34;
      *&v137 = v30;
      v22 = *(v30 + 16);
      v36 = *(v30 + 24);
      v10 = (v22 + 1);
      if (v22 >= v36 >> 1)
      {
        v37 = OUTLINED_FUNCTION_0_1(v36);
        sub_220F0B1A0(v37, v22 + 1, 1);
        v30 = v137;
      }

      *(v30 + 16) = v10;
      sub_220E5D784(&v131, (v30 + 32 * v22 + 32));
      --v31;
      v32 -= 2;
      --v25;
    }

    while (v25);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  sub_220F85FE0(v30, v126);
  v25 = *(v28 + 16);
  if (v25)
  {
    *&v131 = v18;
    v30 = &v131;
    sub_220FC3670();
    v51 = *(v28 + 16);
    v52 = v51 - 1;
    v53 = 16 * v51 + 16;
    do
    {
      if (v52 == -1)
      {
        goto LABEL_111;
      }

      if (v52 >= *(v28 + 16))
      {
        goto LABEL_112;
      }

      v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      sub_220FC3640();
      v22 = *(v131 + 16);
      sub_220FC3680();
      sub_220FC3690();
      v30 = &v131;
      sub_220FC3650();
      --v52;
      v53 -= 16;
      --v25;
    }

    while (v25);

    v54 = v131;
  }

  else
  {

    v54 = MEMORY[0x277D84F90];
  }

  sub_220ED17E0(v54, v126);
  v10 = OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_labels;
  v30 = *&v127[OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_labels];
  v22 = v30 & 0xFFFFFFFFFFFFFF8;
  if (v30 >> 62)
  {
    goto LABEL_121;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_220FC34C0())
  {

    for (j = 0; i != j; ++j)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v56 = MEMORY[0x223D9CB30](j, v30);
      }

      else
      {
        if (j >= *(v22 + 16))
        {
          goto LABEL_108;
        }

        v56 = *(v30 + 8 * j + 32);
      }

      v25 = v56;
      if (__OFADD__(j, 1))
      {
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      [v56 removeFromSuperview];
    }

    v126 = 0;
    *&v137 = v18;
    v2 = *(v23 + 16);
    v22 = OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_backgroundEffectManager;
LABEL_45:
    v57 = 56 * v2;
    while (1)
    {
      if (!v2)
      {

        v68 = v127;
        *(v10 + v127) = v18;

        v30 = *(v10 + v68);
        v25 = v30 & 0xFFFFFFFFFFFFFF8;
        if (v30 >> 62)
        {
          v69 = sub_220FC34C0();
        }

        else
        {
          v69 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = (v30 & 0xC000000000000001);

        v23 = 0;
        v22 = &property descriptor for MapLocationAccessibilityModel.expiration;
        while (1)
        {
          if (v69 == v23)
          {
            goto LABEL_79;
          }

          if (v10)
          {
            OUTLINED_FUNCTION_6_15();
          }

          else
          {
            if (v23 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_114;
            }

            OUTLINED_FUNCTION_5_17();
          }

          OUTLINED_FUNCTION_2_27();
          if (v70)
          {
            goto LABEL_113;
          }

          [v127 addSubview_];

          ++v23;
        }
      }

      v2 = (v2 - 1);
      if (v2 >= *(v23 + 16))
      {
        break;
      }

      v58 = v57 - 56;
      v59 = *(v23 + v57 - 16);
      v57 -= 56;
      if (v59)
      {
        v60 = v23 + v58;
        v61 = *(v23 + v58 + 32);
        v62 = *(v60 + 48);
        v63 = *(v60 + 56);
        v64 = *(v60 + 64);
        v65 = *(v60 + 72);
        LOBYTE(v60) = *(v60 + 80);
        v132 = v62;
        v133 = v63;
        v134 = v64;
        v135 = v65;
        v136 = v60;
        *&v131 = v61;
        *(&v131 + 1) = v59;
        v66 = *&v127[v22];
        v25 = objc_allocWithZone(type metadata accessor for MapScaleLabelView());

        i = sub_220F7C804(&v131, v66);
        MEMORY[0x223D9BEA0]();
        j = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v67 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (j >= v67 >> 1)
        {
          OUTLINED_FUNCTION_0_1(v67);
          sub_220FC29C0();
        }

        v39 = sub_220FC29F0();
        v18 = v137;
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_63:
    v50 = 0;
    v49 = 0.0;
LABEL_64:
    __dst[0] = v23;
    v71 = 56 * i - 16;
    do
    {
      if (!i)
      {
        break;
      }

      --i;
      v72 = *(v23 + v71);
      v71 -= 56;
    }

    while (!v72);
    v112 = v10;
    v10 = &v111;
    MEMORY[0x28223BE20](v39, v40);
    *(&v111 - 2) = __dst;
    sub_220FB5050(sub_220ED18B8, i, v73, &v137);

    if (!v50)
    {
      sub_220E45374(&v137, &qword_27CF9E620, &qword_220FD0940);
      return [v127 setNeedsLayout];
    }

    v74 = v139;
    if (!v139)
    {

      goto LABEL_79;
    }

    v75 = v140;
    v76 = v138;
    *v22 = v137;

    *(v22 + 16) = *v22;
    sub_220E45374(&v142, &qword_27CF9CFD0, &unk_220FCBA10);
    v143[0] = v76;
    v143[1] = v74;
    sub_220ED18D8(v143);
    memcpy(__dst, v118, 0x60uLL);
    sub_220E31B58(__dst, &v131);
    sub_220E30DD0(1, v49, v75);
    v23 = v77;
    sub_220E31784(__dst);
    v118 = *&v127[*(v25 + 1512)];
    v78 = *(v23 + 16);
    v79 = MEMORY[0x277D84F90];
    if (v78)
    {
      v117 = v18;
      *&v129 = MEMORY[0x277D84F90];
      sub_220F0B1A0(0, v78, 0);
      v80 = *(v23 + 16);
      v30 = v129;
      v10 = (v80 - 1);
      v18 = (v23 + 16 * v80 + 24);
      while (v10 != -1)
      {
        if (v10 >= *(v23 + 16))
        {
          goto LABEL_118;
        }

        v81 = *v18;
        v82 = [v81 CGColor];
        type metadata accessor for CGColor(0);
        v133 = v83;

        *&v131 = v82;
        *&v129 = v30;
        v25 = *(v30 + 16);
        v84 = *(v30 + 24);
        if (v25 >= v84 >> 1)
        {
          v85 = OUTLINED_FUNCTION_0_1(v84);
          sub_220F0B1A0(v85, v25 + 1, 1);
          v30 = v129;
        }

        *(v30 + 16) = v25 + 1;
        sub_220E5D784(&v131, (v30 + 32 * v25 + 32));
        v10 = (v10 - 1);
        v18 -= 2;
        if (!--v78)
        {
          v18 = v117;
          v79 = MEMORY[0x277D84F90];
          goto LABEL_82;
        }
      }

LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v30 = MEMORY[0x277D84F90];
LABEL_82:
    sub_220F85FE0(v30, v118);
    v87 = *(v23 + 16);
    if (!v87)
    {
      break;
    }

    v117 = v2;
    v88 = v18;
    *&v131 = v79;
    v30 = &v131;
    sub_220FC3670();
    v89 = *(v23 + 16);
    v10 = (v89 - 1);
    v18 = (16 * v89 + 16);
    while (v10 != -1)
    {
      if (v10 >= *(v23 + 16))
      {
        goto LABEL_120;
      }

      v79 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      sub_220FC3640();
      v25 = *(v131 + 16);
      sub_220FC3680();
      sub_220FC3690();
      v30 = &v131;
      sub_220FC3650();
      v10 = (v10 - 1);
      v18 -= 2;
      if (!--v87)
      {

        v90 = v131;
        v18 = v88;
        v2 = v117;
        goto LABEL_89;
      }
    }

LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    ;
  }

  v90 = MEMORY[0x277D84F90];
LABEL_89:
  sub_220ED17E0(v90, v118);
  v111 = OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_labels;
  sub_220F43CDC();
  OUTLINED_FUNCTION_4_24();

  v113 = 0;
  v91 = MEMORY[0x277D84F90];
  v130 = MEMORY[0x277D84F90];
  v118 = OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_backgroundEffectManager;
  v92 = v75 - v49;
  LODWORD(v117) = *MEMORY[0x277D84670];
  v115 = (v18 + 1);
  v116 = (v18 + 13);
  v114 = (v2 + 1);
  v93 = (v112 + 1);
  v94 = 3;
  v96 = v122;
  v95 = v123;
  v18 = MEMORY[0x277D839F8];
  while (2)
  {
    if (v94 > 0)
    {
      v97 = v94 - 1;
LABEL_94:
      v98 = v92 * v94 / 3.0;
      v100 = v119;
      v99 = v120;
      (*v116)(v119, v117, v120);
      sub_220FC2BC0();
      v102 = v101;
      (*v115)(v100, v99);
      v128 = v102;
      sub_220FC0380();
      sub_220ED192C();
      sub_220FC0000();
      v103 = v125;
      sub_220FC0030();
      v10 = v121;
      MEMORY[0x223D99560](v103, v96);
      (*v114)(v103, v126);
      v104 = *v93;
      (*v93)(v95, v96);
      sub_220ED1980();
      sub_220FC25A0();
      v104(v10, v96);
      v105 = v98 / v92;
      if (v92 == 0.0)
      {
        v105 = 1.0;
      }

      v131 = v129;
      v132 = 0;
      v133 = 0xE000000000000000;
      v134 = v98;
      v135 = v105;
      v136 = 0;
      v106 = *&v118[v127];
      v107 = objc_allocWithZone(type metadata accessor for MapScaleLabelView());

      v79 = sub_220F7C804(&v131, v106);
      MEMORY[0x223D9BEA0]();
      v25 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v108 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (v25 >= v108 >> 1)
      {
        OUTLINED_FUNCTION_0_1(v108);
        sub_220FC29C0();
      }

      sub_220FC29F0();
      v91 = v130;
      v94 = v97;
      continue;
    }

    break;
  }

  if (!((v94 != 0) | v113 & 1))
  {
    v97 = 0;
    v113 = 1;
    goto LABEL_94;
  }

  v109 = v127;
  v110 = v111;
  *&v127[v111] = v91;

  v30 = *&v109[v110];
  sub_220F43CDC();
  OUTLINED_FUNCTION_4_24();
  v23 = 0;
  v22 = &property descriptor for MapLocationAccessibilityModel.expiration;
  while (v110 != v23)
  {
    if (v25)
    {
      OUTLINED_FUNCTION_6_15();
    }

    else
    {
      if (v23 >= v10[2])
      {
        goto LABEL_116;
      }

      OUTLINED_FUNCTION_5_17();
    }

    OUTLINED_FUNCTION_2_27();
    if (v70)
    {
      goto LABEL_115;
    }

    [v127 addSubview_];

    ++v23;
  }

LABEL_79:

  return [v127 setNeedsLayout];
}

id sub_220ED0CF4(const void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_gradient;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  *&v2[OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_labels] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_minimumSize] = xmmword_220FD0900;
  *&v2[OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_gradientWidth] = 0x4010000000000000;
  *&v2[OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_gradientLabelsMargin] = 0x4018000000000000;
  memcpy(&v2[OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_scale], a1, 0x60uLL);
  *&v2[OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_backgroundEffectManager] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220ED0E1C();

  return v7;
}

id sub_220ED0E1C()
{
  v1 = *&v0[OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_gradient];
  [v1 setCornerRadius_];
  v2 = [v0 layer];
  [v2 contentsScale];
  v4 = v3;

  [v1 setContentsScale_];
  v5 = [v0 layer];
  [v5 rasterizationScale];
  v7 = v6;

  [v1 setRasterizationScale_];
  v8 = [v0 layer];
  [v8 addSublayer_];

  return sub_220ECFE90();
}

void sub_220ED0F28()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_gradient;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  *(v0 + OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_labels) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_minimumSize) = xmmword_220FD0900;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_gradientWidth) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_gradientLabelsMargin) = 0x4018000000000000;
  sub_220FC3740();
  __break(1u);
}

id sub_220ED1010()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  [v0 bounds];
  sub_220ED10AC(v2, v3);
  return [v1 commit];
}

void sub_220ED10AC(double a1, double a2)
{
  v5 = [v2 effectiveUserInterfaceLayoutDirection];
  if (v5 == 1)
  {
    v6 = -6.0;
  }

  else
  {
    v6 = 10.0;
  }

  if (v5 == 1)
  {
    v7 = a1 + -6.0;
  }

  else
  {
    v7 = 2.0;
  }

  v8 = *&v2[OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_gradient];
  [v8 bounds];
  [v8 setBounds_];
  [v8 setPosition_];
  memcpy(__dst, &v2[OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_scale], 0x60uLL);
  sub_220E31B58(__dst, v21);
  v9 = sub_220ED1568(__dst);
  sub_220E31784(__dst);
  v10 = *&v2[OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_labels];
  v11 = sub_220F43CDC();
  if (v11)
  {
    v12 = v11;
    if (v11 < 1)
    {
      __break(1u);
    }

    else
    {

      v13 = 0;
      v14 = 0.0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x223D9CB30](v13, v10);
        }

        else
        {
          v15 = *(v10 + 8 * v13 + 32);
        }

        v16 = v15;
        ++v13;
        v17 = sub_220F7C3D0();
        [v17 ascender];
        v19 = v18;

        v20 = v16;
        [v20 sizeToFit];
        [v20 bounds];
        [v20 setBounds_];
        [v20 bounds];
        [v20 setCenter_];

        v14 = v14 + v9 + v19;
      }

      while (v12 != v13);
    }
  }
}

uint64_t sub_220ED1320()
{
  v2 = v0;
  i = OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_labels;
  v4 = *(v0 + OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_labels);
  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  for (result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = sub_220FC34C0())
  {
    v6 = *(v2 + i);
    v7 = 0.0;
    if (sub_220F43CDC())
    {
      sub_220F227B4();
      if ((v6 & 0xC000000000000001) != 0)
      {
LABEL_24:

        v8 = MEMORY[0x223D9CB30](0, v6);
      }

      else
      {
        v8 = *(v6 + 32);
      }

      v9 = sub_220F7C3D0();

      [v9 ascender];
    }

    v15 = i;
    v10 = *(v2 + i);
    v11 = sub_220F43CDC();

    for (i = 0; ; ++i)
    {
      if (v11 == i)
      {

        memcpy(__dst, (v2 + OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_scale), 0x60uLL);
        sub_220E31B58(__dst, v16);
        sub_220ED1568(__dst);
        sub_220E31784(__dst);
        v6 = v15;
        if (!__OFSUB__(sub_220F43CDC(), 1))
        {
          return sub_220F43CDC();
        }

        __break(1u);
        goto LABEL_24;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_6_15();
      }

      else
      {
        if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_5_17();
      }

      OUTLINED_FUNCTION_2_27();
      if (v12)
      {
        break;
      }

      [*&v1[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_label] sizeThatFits_];
      v14 = v13;

      if (v7 <= v14)
      {
        v7 = v14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return result;
}

double sub_220ED1568(uint64_t a1)
{
  v1 = *(a1 + 33);
  if (v1 == 2)
  {
    goto LABEL_2;
  }

  if (v1)
  {
    v4 = 0xEC00000078614D6ELL;
  }

  else
  {
    v4 = 0x8000000220FDB510;
  }

  if (v4 == 0xEC00000078614D6ELL && (v1 & 1) != 0)
  {

    return 22.0;
  }

  v5 = sub_220FC3940();

  result = 22.0;
  if ((v5 & 1) == 0)
  {
LABEL_2:
    v2 = sub_220FC29B0();
    result = 22.0;
    if (v2 >= 5)
    {
      result = 11.0;
      if (v2 > 6)
      {
        return 7.0;
      }
    }
  }

  return result;
}

BOOL sub_220ED16A8(void *a1)
{
  v1 = a1[1];
  if (!v1)
  {
    return 0;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

void sub_220ED17E0(uint64_t a1, void *a2)
{
  sub_220ED19E4();
  v3 = sub_220FC2960();

  [a2 setLocations_];
}

double sub_220ED1854@<D0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_220FB4F34(*a1, *a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    result = *&v8;
    *(a3 + 32) = v8;
    *(a3 + 48) = v9;
  }

  return result;
}

unint64_t sub_220ED192C()
{
  result = qword_2812C5DE0;
  if (!qword_2812C5DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5DE0);
  }

  return result;
}

unint64_t sub_220ED1980()
{
  result = qword_2812CA2A8;
  if (!qword_2812CA2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9E568, &unk_220FD5B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CA2A8);
  }

  return result;
}

unint64_t sub_220ED19E4()
{
  result = qword_2812C5B28;
  if (!qword_2812C5B28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C5B28);
  }

  return result;
}

void OUTLINED_FUNCTION_6_15()
{

  JUMPOUT(0x223D9CB30);
}

id sub_220ED1A40(double a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11WeatherMaps13ButtonDivider_thickness] = a1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v4 setUserInteractionEnabled_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [objc_opt_self() labelColor];
  v6 = [v5 colorWithAlphaComponent_];

  [v4 setBackgroundColor_];
  return v4;
}

void sub_220ED1C58(uint64_t a1@<X0>, char *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v54 = a5;
  v55 = a4;
  v56 = a2;
  sub_220FC04B0();
  OUTLINED_FUNCTION_6();
  v52 = v10;
  v53 = v9;
  MEMORY[0x28223BE20](v9, v11);
  OUTLINED_FUNCTION_3();
  v51 = v13 - v12;
  sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v49 = v15;
  v50 = v14;
  MEMORY[0x28223BE20](v14, v16);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v20 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  OUTLINED_FUNCTION_3();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8, &unk_220FD08F0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = &v48 - v27;
  v29 = sub_220FC0760();
  OUTLINED_FUNCTION_6();
  v31 = v30;
  MEMORY[0x28223BE20](v32, v33);
  OUTLINED_FUNCTION_3();
  v36 = v35 - v34;
  v37 = *a3;
  sub_220FBEEAC(v28);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_220E3B2DC(v28, &qword_27CF9CEE8, &unk_220FD08F0);
    sub_220ED200C(a6);
  }

  else
  {
    (*(v31 + 32))(v36, v28, v29);
    switch(v37)
    {
      case 5:
        type metadata accessor for WeatherMapAnnotationViewModel(0);
        OUTLINED_FUNCTION_3_25();
        sub_220ED3928(v42, v43, v54, v44);
        break;
      case 4:
        v39 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
        swift_beginAccess();
        sub_220ED5F30(a1 + v39, v24, type metadata accessor for WeatherMapAnnotatedLocationData);
        sub_220F05E6C(v19);
        sub_220ED5ED4(v24);
        v40 = v51;
        sub_220FC1050();
        (*(v49 + 8))(v19, v50);
        OUTLINED_FUNCTION_3_25();
        sub_220ED4504(v55, v56, v41);
        (*(v52 + 8))(v40, v53);
        break;
      case 3:
        OUTLINED_FUNCTION_3_25();
        sub_220ED2104(v56, v54, v38);
        break;
      default:
        type metadata accessor for WeatherMapAnnotationViewModel(0);
        v45 = OUTLINED_FUNCTION_3_25();
        sub_220ED2788(v45, v46, v47);
        break;
    }

    (*(v31 + 8))(v36, v29);
  }
}

double sub_220ED200C@<D0>(void *a1@<X8>)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E658, &unk_220FDA450) + 48);
  v3 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel(0);
  v4 = *(v3 + 28);
  v5 = objc_opt_self();
  *(a1 + v4) = [v5 systemGray3Color];
  type metadata accessor for WeatherMapAnnotationBackground(0);
  swift_storeEnumTagMultiPayload();
  v6 = [v5 whiteColor];
  *a1 = 11565;
  a1[1] = 0xE200000000000000;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 1;
  *(a1 + *(v3 + 32)) = v6;
  *(a1 + v2) = 0;
  type metadata accessor for WeatherMapAnnotationContentViewModel(0);

  swift_storeEnumTagMultiPayload();
  return result;
}

char *sub_220ED2104@<X0>(char *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v79 = a2;
  v84 = a1;
  v5 = sub_220FC08D0();
  v81 = *(v5 - 8);
  v82 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v78 = &v73 - v11;
  v12 = sub_220FC0890();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v83 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v73 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D058, &unk_220FC9CB0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v73 - v22;
  v24 = sub_220FC07C0();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FC0710();
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_220E3B2DC(v23, &qword_27CF9D058, &unk_220FC9CB0);
    return sub_220ED559C(v84, a3);
  }

  else
  {
    v30 = *(v25 + 32);
    v80 = v24;
    v30(v28, v23, v24);
    sub_220FC07B0();
    v31 = sub_220FC0870();
    v32 = *(v13 + 8);
    v32(v19, v12);
    v77 = v31;
    if (v31)
    {
      sub_220E1966C(0, &qword_2812C5CC0, 0x277CCABB8);
      v33 = sub_220FC2F20();
      sub_220FC07A0();
      v34 = sub_220FC2CA0();
      v35 = [v33 stringFromNumber_];

      if (v35)
      {
        v36 = sub_220FC2700();
        v75 = v37;
        v76 = v36;
      }

      else
      {
        v85 = sub_220FC07A0();
        v43 = sub_220FC38F0();
        v75 = v44;
        v76 = v43;
      }

      v45 = v78;
      sub_220FC0790();
      v46 = sub_220FC08C0();
      v48 = v47;
      (*(v81 + 8))(v45, v82);
      if (v48)
      {
        v49 = v46;
      }

      else
      {
        v49 = 0x6964656D2E697161;
      }

      v50 = 0xEA00000000006D75;
      if (v48)
      {
        v50 = v48;
      }

      v81 = v50;
      v82 = v49;
      v51 = objc_opt_self();
      v52 = &selRef_whiteColor;
      if (v79 != 2)
      {
        v52 = &selRef_blackColor;
      }

      v53 = [v51 *v52];
      v79 = [v53 colorWithAlphaComponent_];

      LODWORD(v78) = 1;
      v54 = sub_220FC07A0();
      v73 = 2;
      v74 = v54;
    }

    else
    {
      sub_220FC0790();
      v38 = sub_220FC08C0();
      v40 = v39;
      (*(v81 + 8))(v8, v82);
      if (v40)
      {
        v41 = v38;
      }

      else
      {
        v41 = 0x6964656D2E697161;
      }

      v42 = 0xEA00000000006D75;
      if (v40)
      {
        v42 = v40;
      }

      v75 = v42;
      v76 = v41;
      sub_220FC07B0();
      sub_220FC07A0();
      v74 = sub_220FC0840();
      v32(v19, v12);
      v81 = 0;
      v82 = 0;
      v73 = 0;
      v79 = 0;
      LODWORD(v78) = 65278;
    }

    sub_220FC07B0();
    v55 = sub_220FC0830();
    v32(v19, v12);
    v56 = v32;
    v57 = v83;
    sub_220FC07B0();
    v58 = sub_220FC0880();
    v60 = v59;
    v56(v57, v12);
    (*(v25 + 8))(v28, v80);
    v61 = type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel(0);
    v62 = v61[9];
    v63 = type metadata accessor for WeatherMapAnnotationViewModel(0);
    v64 = v84;
    v65 = *&v84[*(v63 + 48)];
    *(a3 + v62) = v65;
    type metadata accessor for WeatherMapAnnotationBackground(0);
    swift_storeEnumTagMultiPayload();
    v84 = *&v64[*(v63 + 40)];
    v66 = v84;
    v67 = v75;
    v68 = v76;
    *a3 = v55;
    *(a3 + 8) = v68;
    *(a3 + 16) = v67;
    *(a3 + 24) = (v77 & 1) == 0;
    *(a3 + 32) = v58;
    *(a3 + 40) = v60;
    *(a3 + 48) = v74;
    *(a3 + 56) = 0;
    v69 = v81;
    *(a3 + 64) = v82;
    *(a3 + 72) = v69;
    v70 = v79;
    *(a3 + 80) = v73;
    *(a3 + 88) = v70;
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
    *(a3 + 112) = v78;
    *(a3 + v61[10]) = v66;
    *(a3 + v61[11]) = v65;
    type metadata accessor for WeatherMapAnnotationContentViewModel(0);
    swift_storeEnumTagMultiPayload();
    v71 = v65;
    v72 = v84;

    return v72;
  }
}

void sub_220ED2788(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v168 = a2;
  v169 = a3;
  v165 = 0;
  v4 = sub_220FC2450();
  v156 = *(v4 - 8);
  v157 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v155 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220FC2F60();
  v153 = *(v7 - 8);
  v154 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v152 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v148 = &v137 - v12;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D050, &unk_220FD08E0);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v13);
  v149 = &v137 - v14;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E630, &unk_220FD0A20);
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139, v15);
  v137 = &v137 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E638, &qword_220FD23B0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v140 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v141 = &v137 - v22;
  v23 = sub_220FC06F0();
  v162 = *(v23 - 8);
  v163 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v161 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_220FC02B0();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v26);
  v28 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E640, &qword_220FD0A30);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v143 = &v137 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v164 = &v137 - v34;
  v35 = sub_220FC0800();
  v147 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v36);
  v142 = &v137 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v144 = &v137 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E648, &qword_220FD0A38);
  MEMORY[0x28223BE20](v41 - 8, v42);
  v44 = &v137 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v46);
  v48 = &v137 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E650, &qword_220FD0A40);
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v51);
  v159 = &v137 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53, v54);
  v56 = &v137 - v55;
  v57 = sub_220FC05E0();
  v166 = *(v57 - 8);
  v167 = v57;
  MEMORY[0x28223BE20](v57, v58);
  v60 = &v137 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FC0700();
  v170 = v60;
  LODWORD(v160) = sub_220FC0570();
  v158 = a1;
  sub_220FC0740();
  if (__swift_getEnumTagSinglePayload(v48, 1, v49) == 1)
  {
    sub_220E3B2DC(v48, &qword_27CF9E648, &qword_220FD0A38);
    v61 = v35;
  }

  else
  {
    (*(v50 + 32))(v56, v48, v49);
    sub_220FC0670();
    v62 = sub_220FC0980();
    v64 = MEMORY[0x28223BE20](v62, v63);
    v136 = v28;
    v65 = v164;
    sub_220EDB480(sub_220ED5FB0, v64);

    (*(v145 + 8))(v28, v146);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65, 1, v35);
    v61 = v35;
    if (EnumTagSinglePayload == 1)
    {
      (*(v50 + 8))(v56, v49);
      sub_220E3B2DC(v164, &qword_27CF9E640, &qword_220FD0A30);
    }

    else
    {
      v165 = v56;
      v67 = v50;
      v68 = v147;
      v69 = v144;
      (*(v147 + 32))(v144, v164, v61);
      v70 = sub_220F982A8();
      v71 = v170;
      if (v70)
      {
        v72 = v161;
        sub_220FC05D0();
        v164 = sub_220FC06D0();
        v160 = v73;
        (*(v162 + 8))(v72, v163);
        v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E658, &unk_220FDA450) + 48);
        v75 = v71;
        if (qword_2812C5B30 != -1)
        {
          swift_once();
        }

        v76 = qword_2812CE4B0;
        v136 = 0x8000000220FE09B0;
        v77 = sub_220FBFF80();
        v79 = v78;

        v80 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel(0);
        v81 = v169;
        sub_220ED5F30(v168, v169 + *(v80 + 28), type metadata accessor for WeatherMapAnnotationBackground);
        v82 = [objc_opt_self() whiteColor];
        (*(v147 + 8))(v144, v61);
        (*(v67 + 8))(v165, v49);
        (*(v166 + 8))(v75, v167);
        *v81 = v77;
        v81[1] = v79;
        v83 = v160;
        v81[2] = v164;
        v81[3] = v83;
        v81[4] = 1;
        *(v81 + *(v80 + 32)) = v82;
        *(v81 + v74) = 1;
        type metadata accessor for WeatherMapAnnotationContentViewModel(0);
        goto LABEL_18;
      }

      (*(v68 + 8))(v69, v61);
      (*(v50 + 8))(v165, v49);
    }
  }

  sub_220FC0740();
  v84 = __swift_getEnumTagSinglePayload(v44, 1, v49);
  v85 = v159;
  if (v84 == 1)
  {
    v86 = &qword_27CF9E648;
    v87 = &qword_220FD0A38;
LABEL_12:
    sub_220E3B2DC(v44, v86, v87);
LABEL_17:
    v88 = v161;
    sub_220FC05D0();
    v89 = sub_220FC06D0();
    v164 = v90;
    v165 = v89;
    (*(v162 + 8))(v88, v163);
    v163 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E658, &unk_220FDA450) + 48);
    v91 = v149;
    sub_220FC0580();
    v92 = v148;
    sub_220FC2430();
    v93 = v152;
    sub_220FC2F50();
    v94 = v154;
    v161 = *(v153 + 8);
    (v161)(v92, v154);
    v96 = v155;
    v95 = v156;
    v97 = v157;
    (*(v156 + 104))(v155, *MEMORY[0x277D7B408], v157);
    sub_220FC0C80();
    sub_220FC0C60();
    sub_220ED5FD0(&qword_27CF9D078, MEMORY[0x277D7B508], MEMORY[0x277D7B500]);
    v98 = v151;
    v162 = sub_220FBFCB0();
    v100 = v99;

    (*(v95 + 8))(v96, v97);
    (v161)(v93, v94);
    (*(v150 + 8))(v91, v98);
    v101 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel(0);
    v102 = v169;
    sub_220ED5F30(v168, v169 + *(v101 + 28), type metadata accessor for WeatherMapAnnotationBackground);
    v103 = [objc_opt_self() whiteColor];
    (*(v166 + 8))(v170, v167);
    *v102 = v162;
    v102[1] = v100;
    v104 = v164;
    v102[2] = v165;
    v102[3] = v104;
    v102[4] = 1;
    *(v102 + *(v101 + 32)) = v103;
    *(v102 + v163) = 0;
    type metadata accessor for WeatherMapAnnotationContentViewModel(0);
LABEL_18:
    swift_storeEnumTagMultiPayload();
    return;
  }

  (*(v50 + 32))(v159, v44, v49);
  if ((sub_220FC0970() & 1) == 0)
  {
    (*(v50 + 8))(v85, v49);
    goto LABEL_17;
  }

  v44 = v143;
  sub_220F983E0(v143);
  if (__swift_getEnumTagSinglePayload(v44, 1, v61) == 1)
  {
    (*(v50 + 8))(v85, v49);
    v86 = &qword_27CF9E640;
    v87 = &qword_220FD0A30;
    goto LABEL_12;
  }

  v105 = v147;
  v106 = v44;
  v107 = v142;
  (*(v147 + 32))(v142, v106, v61);
  sub_220F986A0();
  if (v108 < 1)
  {
    (*(v50 + 8))(v85, v49);
    (*(v105 + 8))(v107, v61);
    goto LABEL_17;
  }

  v164 = v61;
  v165 = v49;
  if (qword_2812C5B30 != -1)
  {
    swift_once();
  }

  v109 = qword_2812CE4B0;
  sub_220FBFF80();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0, &unk_220FCA870);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_220FC8E30;
  sub_220F986A0();
  v111 = MEMORY[0x277D83C10];
  *(v110 + 56) = MEMORY[0x277D83B88];
  *(v110 + 64) = v111;
  *(v110 + 32) = v112;
  v113 = sub_220FC2720();
  v115 = v114;

  v116 = v137;
  v117 = sub_220FC0730();
  MEMORY[0x28223BE20](v117, v118);
  v136 = v107;
  v119 = v141;
  sub_220EDB4AC(sub_220ED5F90, (&v137 - 4), v120, v121, v122, v123, v124, v125, v137, v138);
  (*(v138 + 8))(v116, v139);
  v126 = v140;
  sub_220ED6038(v119, v140, &qword_27CF9E638, &qword_220FD23B0);
  v127 = sub_220FC0540();
  if (__swift_getEnumTagSinglePayload(v126, 1, v127) == 1)
  {
    sub_220E3B2DC(v126, &qword_27CF9E638, &qword_220FD23B0);
    v128 = 0;
    v129 = 0;
  }

  else
  {
    v130 = v161;
    sub_220FC0530();
    (*(*(v127 - 8) + 8))(v126, v127);
    v128 = sub_220FC06D0();
    v129 = v131;
    (*(v162 + 8))(v130, v163);
  }

  v132 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E658, &unk_220FDA450) + 48);
  v133 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel(0);
  v134 = v169;
  sub_220ED5F30(v168, v169 + *(v133 + 28), type metadata accessor for WeatherMapAnnotationBackground);
  v135 = [objc_opt_self() whiteColor];
  sub_220E3B2DC(v141, &qword_27CF9E638, &qword_220FD23B0);
  (*(v50 + 8))(v159, v165);
  (*(v166 + 8))(v170, v167);
  *v134 = v113;
  v134[1] = v115;
  v134[2] = v128;
  v134[3] = v129;
  v134[4] = 1;
  *(v134 + *(v133 + 32)) = v135;
  *(v134 + v132) = 1;
  type metadata accessor for WeatherMapAnnotationContentViewModel(0);
  swift_storeEnumTagMultiPayload();
  (*(v147 + 8))(v142, v164);
}

void sub_220ED3928(uint64_t *a1@<X1>, uint64_t a2@<X2>, id a3@<X3>, uint64_t a4@<X8>)
{
  v111 = a2;
  v110 = a4;
  v119 = sub_220FC2450();
  v123 = *(v119 - 8);
  MEMORY[0x28223BE20](v119, v6);
  v116 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E5D0, &qword_220FD08D0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v114 = &v85 - v10;
  v115 = sub_220FC2DB0();
  v11 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v12);
  v117 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_220FC2DA0();
  v122 = *(v118 - 8);
  MEMORY[0x28223BE20](v118, v14);
  v109 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_220FC0950();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048, &unk_220FC9CA0);
  v112 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v21);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v85 - v26;
  v108 = sub_220FC05E0();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v28);
  v30 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FC0700();
  v31 = a1[1];
  v120 = v30;
  if (!v31)
  {
    v33 = objc_opt_self();
    if (a3 == 2)
    {
      v32 = [v33 whiteColor];
    }

    else
    {
      v32 = [v33 blackColor];
    }

    goto LABEL_8;
  }

  v124 = *a1;
  v125 = v31;
  memcpy(v126, a1 + 2, sizeof(v126));
  if (a3 == 2)
  {
    v32 = [objc_opt_self() whiteColor];
LABEL_8:
    v41 = v32;
    goto LABEL_9;
  }

  sub_220FC05C0();
  sub_220FC0930();
  (*(v17 + 8))(v20, v16);
  v34 = [objc_opt_self() metersPerSecond];
  v35 = v27;
  v36 = v121;
  sub_220FBFCD0();

  v106 = a3;
  v37 = *(v112 + 8);
  v37(v23, v36);
  sub_220FBFC80();
  v39 = v38;
  v40 = v36;
  v27 = v35;
  v37(v35, v40);
  a3 = v106;
  v41 = sub_220E311F4(0, v39);
LABEL_9:
  v42 = v41;
  v113 = v27;
  v87 = v16;
  v43 = objc_opt_self();
  v106 = v42;
  v44 = [v43 secondaryLabelColor];
  v45 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v46 = [v44 resolvedColorWithTraitCollection_];

  v105 = v46;
  sub_220FC05C0();
  sub_220FC0930();
  v91 = *(v17 + 8);
  v91(v20, v16);
  sub_220FC2C70();
  v102 = *MEMORY[0x277D7B490];
  v47 = v11;
  v48 = *(v11 + 104);
  v100 = v11 + 104;
  v101 = v48;
  v49 = v117;
  v50 = v115;
  v48(v117);
  v99 = sub_220FC03E0();
  v51 = v114;
  __swift_storeEnumTagSinglePayload(v114, 1, 1, v99);
  v52 = v109;
  sub_220FC2420();

  sub_220E3B2DC(v51, &qword_27CF9E5D0, &qword_220FD08D0);
  v53 = *(v47 + 8);
  v97 = v47 + 8;
  v98 = v53;
  v53(v49, v50);
  v96 = *MEMORY[0x277D7B408];
  v54 = v123;
  v55 = *(v123 + 104);
  v94 = v123 + 104;
  v95 = v55;
  v56 = v116;
  v57 = v119;
  v55(v116);
  v93 = sub_220FC0C80();
  sub_220FC0C60();
  v90 = sub_220ED5FD0(&qword_27CF9E5E0, MEMORY[0x277D7B488], MEMORY[0x277D7B480]);
  v58 = v121;
  v59 = v118;
  v60 = v113;
  v104 = sub_220FBFCB0();
  v103 = v61;

  v62 = *(v54 + 8);
  v123 = v54 + 8;
  v89 = v62;
  v62(v56, v57);
  v63 = *(v122 + 8);
  v122 += 8;
  v88 = v63;
  v64 = v52;
  v63(v52, v59);
  v86 = *(v112 + 8);
  v86(v60, v58);
  sub_220FC05C0();
  sub_220FC0910();
  v65 = v87;
  v66 = v91;
  v91(v20, v87);
  sub_220FC08F0();
  v112 = sub_220FC2780();
  v92 = v67;

  sub_220FC05C0();
  sub_220FC0930();
  v66(v20, v65);
  sub_220FC2C60();
  v68 = v117;
  v69 = v115;
  v101(v117, v102, v115);
  v70 = v114;
  __swift_storeEnumTagSinglePayload(v114, 1, 1, v99);
  sub_220FC2420();

  sub_220E3B2DC(v70, &qword_27CF9E5D0, &qword_220FD08D0);
  v98(v68, v69);
  v71 = v116;
  v72 = v119;
  v95(v116, v96, v119);
  sub_220FC0C60();
  v73 = v121;
  v74 = v118;
  v75 = v113;
  sub_220FBFCB0();

  v89(v71, v72);
  v88(v64, v74);
  v86(v75, v73);
  v76 = sub_220FC2780();
  v78 = v77;
  v79 = v106;

  (*(v107 + 8))(v120, v108);
  v80 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel(0);
  v81 = v110;
  sub_220ED5F30(v111, v110 + *(v80 + 28), type metadata accessor for WeatherMapAnnotationBackground);
  v82 = v103;
  *v81 = v104;
  *(v81 + 8) = v82;
  v83 = v92;
  *(v81 + 16) = v112;
  *(v81 + 24) = v83;
  v84 = v105;
  *(v81 + 32) = v105;
  *(v81 + 40) = v76;
  *(v81 + 48) = v78;
  *(v81 + 56) = v84;
  *(v81 + 72) = 0;
  *(v81 + 80) = 0;
  *(v81 + 64) = 0;
  *(v81 + 88) = 0x8000;
  *(v81 + *(v80 + 32)) = v79;
  type metadata accessor for WeatherMapAnnotationContentViewModel(0);
  swift_storeEnumTagMultiPayload();
}

void sub_220ED4504(uint64_t *a1@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v148 = a3;
  v156 = a1;
  v147 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E5D0, &qword_220FD08D0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v146 = &v126 - v6;
  v161 = sub_220FC2450();
  v165 = *(v161 - 8);
  MEMORY[0x28223BE20](v161, v7);
  v164 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_220FC2F60();
  v155 = *(v163 - 8);
  MEMORY[0x28223BE20](v163, v9);
  v149 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v162 = &v126 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E660, &qword_220FD0A48);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v154 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v153 = &v126 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D050, &unk_220FD08E0);
  v158 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v166 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v167 = &v126 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v126 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3A0, &unk_220FCA860);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v33 = &v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v126 - v36;
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v126 - v40;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D398, &unk_220FD7300);
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142, v42);
  v44 = &v126 - v43;
  v140 = sub_220FC05E0();
  v138 = *(v140 - 8);
  MEMORY[0x28223BE20](v140, v45);
  v47 = &v126 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_220FC0470();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145, v48);
  v50 = &v126 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FC0410();
  sub_220FC0700();
  sub_220FC0720();
  v143 = v50;
  v169 = v50;
  v139 = v44;
  sub_220EDB85C(sub_220ED6018, v168, v51, v52, v53, v54, v55, v56, v126, v127);
  v160 = v41;
  sub_220ED6038(v41, v37, &qword_27CF9D3A0, &unk_220FCA860);
  v57 = sub_220FC04F0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v57);
  v59 = v20;
  v159 = v47;
  if (EnumTagSinglePayload == 1)
  {
    v60 = v158;
    sub_220E3B2DC(v37, &qword_27CF9D3A0, &unk_220FCA860);
    v61 = v153;
    __swift_storeEnumTagSinglePayload(v153, 1, 1, v20);
    v62 = v29;
    sub_220FC0580();
    if (__swift_getEnumTagSinglePayload(v61, 1, v20) != 1)
    {
      sub_220E3B2DC(v61, &qword_27CF9E660, &qword_220FD0A48);
    }
  }

  else
  {
    v63 = v153;
    sub_220FC04C0();
    (*(*(v57 - 8) + 8))(v37, v57);
    __swift_storeEnumTagSinglePayload(v63, 0, 1, v20);
    v60 = v158;
    v62 = v29;
    (*(v158 + 32))(v29, v63, v20);
  }

  sub_220ED6038(v160, v33, &qword_27CF9D3A0, &unk_220FCA860);
  v64 = __swift_getEnumTagSinglePayload(v33, 1, v57);
  v65 = v155;
  if (v64 == 1)
  {
    sub_220E3B2DC(v33, &qword_27CF9D3A0, &unk_220FCA860);
    v66 = v154;
    __swift_storeEnumTagSinglePayload(v154, 1, 1, v20);
    sub_220FC0580();
    if (__swift_getEnumTagSinglePayload(v66, 1, v20) != 1)
    {
      sub_220E3B2DC(v66, &qword_27CF9E660, &qword_220FD0A48);
    }
  }

  else
  {
    v67 = v154;
    sub_220FC04D0();
    (*(*(v57 - 8) + 8))(v33, v57);
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v20);
    (*(v60 + 32))(v167, v67, v20);
  }

  sub_220FC0580();
  v68 = v156[1];
  v157 = v62;
  if (v68)
  {
    v170 = *v156;
    v171 = v68;
    memcpy(v172, v156 + 2, sizeof(v172));
    sub_220FBFC80();
    v70 = v69;
    sub_220FBFC80();
    sub_220E30DD0(0, v70, v71);
    v137 = v72;
    sub_220FBFC80();
    v136 = sub_220E311F4(0, v73);
    sub_220FBFC80();
    v75 = sub_220E311F4(0, v74);
  }

  else
  {
    sub_220FBFC80();
    v77 = v76;
    sub_220FBFC80();
    sub_220ED5944(v77, v78);
    v137 = v79;
    sub_220FBFC80();
    v136 = sub_220ED5B7C();
    sub_220FBFC80();
    v75 = sub_220ED5B7C();
  }

  v156 = v75;
  v80 = v162;
  sub_220FC2430();
  v81 = v149;
  sub_220FC2F50();
  v82 = *(v65 + 1);
  v83 = v163;
  v82(v80, v163);
  v84 = v165;
  v85 = *(v165 + 104);
  v86 = v164;
  LODWORD(v153) = *MEMORY[0x277D7B408];
  v87 = v161;
  v154 = v165 + 104;
  v152 = v85;
  v85(v164);
  v151 = sub_220FC0C80();
  sub_220FC0C60();
  v150 = sub_220ED5FD0(&qword_27CF9D078, MEMORY[0x277D7B508], MEMORY[0x277D7B500]);
  v135 = sub_220FBFCB0();
  v134 = v88;

  v89 = *(v84 + 8);
  v165 = v84 + 8;
  v89(v86, v87);
  v155 = v82;
  v82(v81, v83);
  sub_220FBFC80();
  v91 = round(v90);
  if ((*&v91 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v91 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v91 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_220FBFC80();
  v93 = round(v92);
  if ((*&v93 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v93 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v93 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v149 = v89;
  v94 = v93;
  if (v93 < v91)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_220FBFC80();
  v96 = round(v95);
  if ((*&v96 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v96 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v96 < 9.22337204e18)
  {
    v133 = v96;
    sub_220FC2C90();
    v132 = v91;
    v97 = sub_220FC03E0();
    v131 = v94;
    v128 = v97;
    v98 = v146;
    __swift_storeEnumTagSinglePayload(v146, 1, 1, v97);
    v99 = v162;
    sub_220FC2440();

    sub_220E3B2DC(v98, &qword_27CF9E5D0, &qword_220FD08D0);
    v100 = v164;
    v101 = v161;
    v152(v164, v153, v161);
    sub_220FC0C60();
    v127 = v59;
    v102 = v101;
    v103 = v147;
    v104 = v163;
    v130 = sub_220FBFCB0();
    v129 = v105;

    (v149)(v100, v102);
    v155(v99, v104);
    sub_220FC2C90();
    __swift_storeEnumTagSinglePayload(v98, 1, 1, v128);
    v106 = v99;
    sub_220FC2440();

    sub_220E3B2DC(v98, &qword_27CF9E5D0, &qword_220FD08D0);
    v152(v100, v153, v102);
    sub_220FC0C60();
    v107 = v127;
    v108 = v167;
    v154 = sub_220FBFCB0();
    v153 = v109;

    v110 = v136;

    (v149)(v100, v102);
    v155(v106, v104);
    v111 = *(v158 + 8);
    v111(v166, v107);
    v111(v108, v107);
    v111(v157, v107);
    sub_220E3B2DC(v160, &qword_27CF9D3A0, &unk_220FCA860);
    (*(v141 + 8))(v139, v142);
    (*(v138 + 8))(v159, v140);
    v112 = type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel(0);
    v113 = v112[9];
    v114 = type metadata accessor for WeatherMapAnnotationViewModel(0);
    v115 = v148;
    v116 = *(v148 + *(v114 + 48));
    *(v103 + v113) = v116;
    type metadata accessor for WeatherMapAnnotationBackground(0);
    swift_storeEnumTagMultiPayload();
    v117 = *(v115 + *(v114 + 40));
    v118 = v135;
    *v103 = v137;
    *(v103 + 8) = v118;
    *(v103 + 16) = v134;
    *(v103 + 24) = 0;
    v119 = v131;
    *(v103 + 32) = v132;
    *(v103 + 40) = v119;
    *(v103 + 48) = v133;
    *(v103 + 56) = 0;
    v120 = v129;
    *(v103 + 64) = v130;
    *(v103 + 72) = v120;
    v121 = v153;
    *(v103 + 80) = v154;
    *(v103 + 88) = v121;
    v122 = v156;
    *(v103 + 96) = v110;
    *(v103 + 104) = v122;
    *(v103 + 112) = 0x4000;
    *(v103 + v112[10]) = v117;
    *(v103 + v112[11]) = v116;
    type metadata accessor for WeatherMapAnnotationContentViewModel(0);
    swift_storeEnumTagMultiPayload();
    v123 = *(v144 + 8);
    v124 = v116;
    v125 = v117;
    v123(v143, v145);
    return;
  }

LABEL_32:
  __break(1u);
}

id sub_220ED559C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA80, &unk_220FD0A10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_220FC8E10;
  *(v4 + 32) = 0;
  v5 = objc_opt_self();
  *(v4 + 40) = [v5 systemGray5Color];
  *(v4 + 48) = 0x3FF0000000000000;
  *(v4 + 56) = [v5 systemGray5Color];
  v6 = type metadata accessor for WeatherMapAnnotationViewModel(0);
  v7 = v6[9];
  v8 = type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel(0);
  sub_220ED5F30(a1 + v7, a2 + v8[9], type metadata accessor for WeatherMapAnnotationBackground);
  v9 = *(a1 + v6[10]);
  v12 = *(a1 + v6[12]);
  *a2 = v4;
  *(a2 + 8) = xmmword_220FD0970;
  *(a2 + 24) = 0;
  *(a2 + 32) = xmmword_220FD0980;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = -258;
  *(a2 + v8[10]) = v9;
  *(a2 + v8[11]) = v12;
  type metadata accessor for WeatherMapAnnotationContentViewModel(0);
  swift_storeEnumTagMultiPayload();
  v10 = v9;

  return v12;
}

uint64_t sub_220ED5724()
{
  v0 = sub_220FC02B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = v12 - v7;
  sub_220FC07F0();
  sub_220FC0520();
  v9 = sub_220FC01F0();
  v10 = *(v1 + 8);
  v10(v4, v0);
  v10(v8, v0);
  return v9 & 1;
}

uint64_t sub_220ED5858()
{
  v0 = sub_220FC02B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FC04E0();
  v5 = sub_220FC0420();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

void sub_220ED5944(double a1, double a2)
{
  v2 = fmin(fmax(a1, -40.0), 55.0);
  v3 = fmin(fmax(a2, -40.0), 55.0);
  v4 = sub_220ED5B7C();
  v5 = sub_220ED5B7C();
  v6 = sub_220ED5C2C();
  v7 = 0;
  v8 = *(v6 + 16);
  v9 = MEMORY[0x277D84F90];
LABEL_2:
  v10 = (v6 + 32 + 16 * v7);
  while (v8 != v7)
  {
    if (v7 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_18;
    }

    v11 = v10 + 2;
    ++v7;
    v12 = *v10;
    v13 = v2 < *v10 && v12 < v3;
    v10 += 2;
    if (v13)
    {
      v14 = *(v11 - 1);
      v15 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F0B120(0, *(v9 + 16) + 1, 1);
      }

      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_220F0B120((v16 > 1), v17 + 1, 1);
      }

      *(v9 + 16) = v17 + 1;
      v18 = v9 + 16 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v14;
      v5 = v15;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA80, &unk_220FD0A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E30;
  *(inited + 32) = v2;
  *(inited + 40) = v4;
  v23 = inited;
  v20 = v4;
  sub_220F34A14(v9);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_220FC8E30;
  *(v21 + 32) = v3;
  *(v21 + 40) = v5;
  v22 = v5;
  sub_220F34A14(v21);
  if (v2 <= v3)
  {
    sub_220E30C24(v23, v2, v3);

    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_220ED5B7C()
{
  v0 = sub_220ED5C2C();
  sub_220E30C24(v0, -40.0, 55.0);

  v1 = sub_220FC2A00();

  v2 = sub_220FC3210();

  return v2;
}

uint64_t sub_220ED5C2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA80, &unk_220FD0A10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_220FD0990;
  *(v0 + 32) = 0xC044000000000000;
  sub_220E1966C(0, &qword_2812C5B58, 0x277D75348);
  *(v0 + 40) = sub_220FC3220();
  *(v0 + 48) = 0xC037547AE147AE14;
  *(v0 + 56) = sub_220FC3220();
  *(v0 + 64) = 0xC034000000000000;
  *(v0 + 72) = sub_220FC3220();
  *(v0 + 80) = 0xC02870A3D70A3D71;
  *(v0 + 88) = sub_220FC3220();
  *(v0 + 96) = 0xBFF1C28F5C28F5C3;
  *(v0 + 104) = sub_220FC3220();
  *(v0 + 112) = 0;
  *(v0 + 120) = sub_220FC3220();
  *(v0 + 128) = 0x4024000000000000;
  *(v0 + 136) = sub_220FC3220();
  *(v0 + 144) = 0x4034000000000000;
  *(v0 + 152) = sub_220FC3220();
  *(v0 + 160) = 0x40351C28F5C28F5CLL;
  *(v0 + 168) = sub_220FC3220();
  *(v0 + 176) = 0x403AAB851EB851ECLL;
  *(v0 + 184) = sub_220FC3220();
  *(v0 + 192) = 0x403E000000000000;
  *(v0 + 200) = sub_220FC3220();
  *(v0 + 208) = 0x40401C28F5C28F5CLL;
  *(v0 + 216) = sub_220FC3220();
  *(v0 + 224) = 0x40463851EB851EB8;
  *(v0 + 232) = sub_220FC3220();
  *(v0 + 240) = 0x404B800000000000;
  *(v0 + 248) = sub_220FC3220();
  return v0;
}

uint64_t sub_220ED5ED4(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220ED5F30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220ED5FD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220ED6038(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_220ED6098(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v36 = MEMORY[0x277D84F90];
    v35 = *(a1 + 16);
    sub_220F0B428(0, v2, 0);
    v5 = sub_220EF6D6C(a1);
    v8 = v35;
    v9 = v5;
    v10 = 0;
    v11 = a1 + 56;
    v12 = *(a2 + 104);
    v33 = a2;
    v13 = *(a2 + 112);
    v34 = v12;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(a1 + 32))
      {
        v14 = v9 >> 6;
        if ((*(v11 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_25;
        }

        if (*(a1 + 36) != v6)
        {
          goto LABEL_26;
        }

        v15 = *(a1 + 48) + 32 * v9;
        v16 = *v15;
        v17 = *(v15 + 16);
        v18 = *(v15 + 24);
        v20 = *(v36 + 16);
        v19 = *(v36 + 24);
        if (v20 >= v19 >> 1)
        {
          v32 = v6;
          v31 = v7;
          v30 = v16;
          sub_220F0B428((v19 > 1), v20 + 1, 1);
          v16 = v30;
          v7 = v31;
          v6 = v32;
          v12 = v34;
          v11 = a1 + 56;
          v8 = v35;
        }

        *(v36 + 16) = v20 + 1;
        v21 = v36 + 48 * v20;
        *(v21 + 32) = v16;
        *(v21 + 48) = v17;
        *(v21 + 56) = v18;
        *(v21 + 64) = v12;
        *(v21 + 72) = v13;
        if (v7)
        {
          goto LABEL_30;
        }

        v22 = 1 << *(a1 + 32);
        if (v9 >= v22)
        {
          goto LABEL_27;
        }

        v23 = *(v11 + 8 * v14);
        if ((v23 & (1 << v9)) == 0)
        {
          goto LABEL_28;
        }

        if (*(a1 + 36) != v6)
        {
          goto LABEL_29;
        }

        v24 = v23 & (-2 << (v9 & 0x3F));
        if (v24)
        {
          v22 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v25 = v14 << 6;
          v26 = v14 + 1;
          v27 = (a1 + 64 + 8 * v14);
          while (v26 < (v22 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              sub_220EDAB04(v9, v6, 0);
              v12 = v34;
              v11 = a1 + 56;
              v8 = v35;
              v22 = __clz(__rbit64(v28)) + v25;
              goto LABEL_19;
            }
          }

          sub_220EDAB04(v9, v6, 0);
          v12 = v34;
          v11 = a1 + 56;
          v8 = v35;
        }

LABEL_19:
        if (++v10 == v8)
        {
          sub_220ED9D20(v33);
          return;
        }

        v7 = 0;
        v6 = *(a1 + 36);
        v9 = v22;
        if (v22 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    sub_220ED9D20(a2);
  }
}

id sub_220ED6358()
{
  result = *(v0 + 96);
  if (result)
  {
    result = [result setPreferredFramesPerSecond_];
  }

  *(v0 + 105) = 0;
  return result;
}

uint64_t sub_220ED63A8()
{
  OUTLINED_FUNCTION_19();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_220ED6470;

  return MEMORY[0x2822007B8](v1);
}

uint64_t sub_220ED6470()
{
  OUTLINED_FUNCTION_19();

  return MEMORY[0x2822009F8](sub_220ED6568, 0, 0);
}

uint64_t sub_220ED657C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  *(v5 + OBJC_IVAR____TtC11WeatherMaps8Particle_bucket) = 0;
  *(v5 + 16) = a1;
  v8 = *(a2 + 16);
  *(v5 + 24) = *a2;
  *(v5 + 40) = v8;
  *(v5 + 56) = *(a2 + 32);
  v9 = *(a3 + 16);
  *(v5 + 64) = *a3;
  *(v5 + 80) = v9;
  *(v5 + 96) = *(a3 + 32);
  v10 = OBJC_IVAR____TtC11WeatherMaps8Particle_speed;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048, &unk_220FC9CA0);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v5 + v10, a4, v11);
  *(v5 + OBJC_IVAR____TtC11WeatherMaps8Particle_life) = a5;
  *(v5 + 100) = 0;
  (*(v12 + 8))(a4, v11);
  *(v5 + 108) = 0;
  return v5;
}

uint64_t sub_220ED669C()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps8Particle_speed;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048, &unk_220FC9CA0);
  OUTLINED_FUNCTION_0_17();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_220ED6770(uint64_t a1)
{
  sub_220ED6840(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_220ED6840(uint64_t a1)
{
  if (!qword_27CF9E680)
  {
    sub_220E1966C(255, &qword_2812C5D00, 0x277CCAE40);
    v1 = sub_220FBFD00();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF9E680);
    }
  }
}

__n128 sub_220ED68CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for VectorField();
  sub_220EB702C();
  v4 = sub_220FC2600();
  sub_220ED9D20(a1);
  v5 = *(a1 + 88);
  v6 = *(a1 + 16);
  v7 = *(a1 + 120);
  *a2 = MEMORY[0x277D84FA0];
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 88) = v5;
  *(a2 + 92) = 0;
  *(a2 + 96) = v4;
  result = *(a1 + 104);
  *(a2 + 104) = result;
  *(a2 + 120) = v7;
  return result;
}

__n128 sub_220ED6988@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for VectorField();
  sub_220EB702C();
  v2 = sub_220FC2600();
  *a1 = MEMORY[0x277D84FA0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  result = *MEMORY[0x277CD4BB0];
  *(a1 + 72) = *(MEMORY[0x277CD4BB0] + 16);
  *(a1 + 56) = result;
  *(a1 + 88) = 0x40000000;
  *(a1 + 92) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = v2;
  *(a1 + 120) = 1065353216;
  return result;
}

uint64_t sub_220ED6A20()
{
  type metadata accessor for WindParticleActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27CF9E668 = v0;
  return result;
}

uint64_t sub_220ED6A60(__n128 a1)
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v1);
}

double sub_220ED6AB4()
{
  if (qword_27CF9C0C0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_220ED6B10(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WindParticleActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_220ED6B4C(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    v2 = result;
    v3 = sub_220FC1130();
    OUTLINED_FUNCTION_1_34(v3);
    *(v1 + 200) = v2;
    *(v1 + 192) = 1;
    return sub_220FC1140();
  }

  return result;
}

uint64_t sub_220ED6BDC(uint64_t a1, float a2)
{
  v4 = sub_220FC1130();
  OUTLINED_FUNCTION_1_34(v4);
  *(v2 + 304) = a2;
  return sub_220FC1140();
}

void sub_220ED6C34(uint64_t result)
{
  if (*(v1 + 105) == (result & 1))
  {
    if (result)
    {
      sub_220ED6358();
    }

    else
    {
      sub_220ED6C54();
    }
  }
}

void sub_220ED6C54()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 mainScreen];
    v5 = [v4 maximumFramesPerSecond];

    if (*(v0 + 112) >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = *(v0 + 112);
    }

    [v3 setPreferredFramesPerSecond_];

    *(v0 + 105) = 1;
  }

  else
  {
    if (qword_27CF9BFC8 != -1)
    {
      OUTLINED_FUNCTION_2_28(&qword_27CF9BFC8);
    }

    v7 = sub_220FC17A0();
    __swift_project_value_buffer(v7, qword_27CF9CB38);
    oslog = sub_220FC1780();
    v8 = sub_220FC2E10();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_220E15000, oslog, v8, "[Wind] Can only start particle simulator in free mode with a displayLink!", v9, 2u);
      MEMORY[0x223D9DDF0](v9, -1, -1);
    }
  }
}

uint64_t sub_220ED6DC0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_220FC17A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &__src[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_220FC1160();
  MEMORY[0x28223BE20](v11 - 8, v12);
  *(v2 + 16) = MEMORY[0x277D84F90];
  *(v2 + 56) = 0;
  *(v2 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 105) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  v13 = MEMORY[0x277D84FA0];
  *(v2 + 168) = 0;
  *(v2 + 176) = v13;
  sub_220ED6988(__src);
  memcpy((v2 + 184), __src, 0x7CuLL);
  sub_220FC1150();
  sub_220FC1180();
  swift_allocObject();
  *(v2 + 312) = sub_220FC1170();
  *(v2 + 320) = 0;
  *(v2 + 328) = v13;
  sub_220FC1150();
  swift_allocObject();
  *(v2 + 336) = sub_220FC1170();
  if (qword_27CF9BFC8 != -1)
  {
    OUTLINED_FUNCTION_2_28(&qword_27CF9BFC8);
  }

  v14 = __swift_project_value_buffer(v6, qword_27CF9CB38);
  (*(v7 + 16))(v10, v14, v6);
  result = sub_220FC1700();
  *(v2 + 104) = a2 & 1;
  *(v2 + 32) = *a1;
  *(v2 + 40) = vextq_s8(*(a1 + 8), *(a1 + 8), 4uLL);
  v16 = *(a1 + 32);
  *(v2 + 112) = v16;
  v17 = vcvtd_n_f64_s64(v16, 1uLL);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 160) = v17;
  v18 = v16 * 0.1;
  if (COERCE__INT64(fabs(v18)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v2 + 168) = v18;
  type metadata accessor for TiledVectorField();
  swift_allocObject();
  *(v2 + 80) = sub_220E2FB88(32);
  v19 = *(a1 + 24);
  type metadata accessor for ParticleBucket();
  swift_allocObject();
  sub_220EEE0D0(v19);
  *(v3 + 24) = v20;
  sub_220ED7118();
  if (a2)
  {
    sub_220ED7580();
  }

  *(v3 + 56) = 1;
  return v3;
}

void sub_220ED7118()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048, &unk_220FC9CA0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v43 = v44 - v4 + 40;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70, &qword_220FCBAB0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = v44 - v7 + 40;
  if (qword_27CF9C018 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_27CF9CC28);
  sub_220E335D0(v9, v8);
  v10 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    sub_220E6ED9C(v8, &qword_27CF9CF70, &qword_220FCBAB0);
  }

  else
  {

    v11 = sub_220FC1780();
    v12 = sub_220FC2E30();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134218240;
      *(v13 + 4) = v1[4];
      *(v13 + 12) = 2048;
      *(v13 + 14) = *(v1[22] + 16);

      _os_log_impl(&dword_220E15000, v11, v12, "[Wind] Reloading simulation (%ld particles on %ld visible tiles)...", v13, 0x16u);
      MEMORY[0x223D9DDF0](v13, -1, -1);
    }

    else
    {
    }

    (*(*(v10 - 8) + 8))(v8, v10);
  }

  swift_beginAccess();
  v1[2] = MEMORY[0x277D84F90];

  v14 = v1[4];
  if (v14 < 0)
  {
    __break(1u);
  }

  else if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      sub_220ED9D50(0.0, 1.0);
      v17 = v16;
      sub_220ED9D50(0.0, 1.0);
      v19 = v1[22];
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v18;

        v22 = sub_220ED9DF4(v20);
        v23 = sub_220FC3440();
        v24 = sub_220EDA9D4(v23, *(v19 + 36), 0, v22, v19);
        v26 = v25;
        v28 = v27;
        v29 = sub_220EF6E60(v24, v25, v27 & 1, v19);
        v31 = v30;
        v33 = v32;
        v35 = v34;

        sub_220EDAB04(v24, v26, v28 & 1);
        v44[0] = v17;
        v44[1] = v21;
        v45 = v29;
        v46 = v31;
        v47 = v33;
        v48 = v35;
        v36 = [objc_opt_self() metersPerSecond];
        sub_220E1966C(0, &qword_2812C5D00, 0x277CCAE40);
        v37 = v43;
        sub_220FBFC70();
        sub_220ED7998(v38);
        v40 = v39;
        type metadata accessor for Particle(0);
        v41 = swift_allocObject();
        sub_220ED657C(i, v44, v44, v37, v40);
        sub_220EEDD10(v41);

        swift_beginAccess();

        MEMORY[0x223D9BEA0](v42);
        sub_220F09670();
        sub_220FC29F0();
        swift_endAccess();
      }
    }
  }
}

void sub_220ED7580()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70, &qword_220FCBAB0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = v20 - v4;
  if (qword_27CF9C018 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_27CF9CC28);
  sub_220E335D0(v6, v5);
  v7 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    sub_220E6ED9C(v5, &qword_27CF9CF70, &qword_220FCBAB0);
  }

  else
  {
    v8 = sub_220FC1780();
    v9 = sub_220FC2E30();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_220E15000, v8, v9, "[Wind] Setting up display link...", v10, 2u);
      MEMORY[0x223D9DDF0](v10, -1, -1);
    }

    (*(*(v7 - 8) + 8))(v5, v7);
  }

  sub_220E1966C(0, &qword_27CF9E6A8, 0x277CD9E48);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E6B0, &qword_220FD0E08);
  v12 = objc_allocWithZone(v11);

  v13 = sub_220FC15C0();
  v20[3] = v11;
  v20[0] = v13;
  v14 = sub_220EE8D2C(v20, sel_tick_);
  v15 = [objc_opt_self() mainScreen];
  v16 = [v15 maximumFramesPerSecond];

  if (*(v1 + 112) >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = *(v1 + 112);
  }

  [v14 setPreferredFramesPerSecond_];
  v18 = [objc_opt_self() currentRunLoop];
  [v14 addToRunLoop:v18 forMode:*MEMORY[0x277CBE738]];

  v19 = *(v1 + 96);
  *(v1 + 96) = v14;
}

uint64_t sub_220ED7840()
{
  if (*(v0 + 104) == 1)
  {
    sub_220ED7FE8();
  }

  *(v0 + 56) = 0;

  sub_220E22990(v0 + 64);

  memcpy(v4, (v0 + 184), 0x7CuLL);
  sub_220ED9D20(v4);

  v1 = OBJC_IVAR____TtC11WeatherMaps21WindParticleSimulator_signposter;
  sub_220FC1720();
  OUTLINED_FUNCTION_0_17();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_220ED7918()
{
  sub_220ED7840();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_220ED7998(double a1)
{
  v2 = v1[10];
  v3 = v2 * v1[11];
  v4 = v2 * v1[12];
  if (v3 > v4)
  {
    __break(1u);
  }

  else
  {
    sub_220ED9D50(v3, v4);
  }
}

uint64_t sub_220ED79B8(uint64_t a1, uint64_t a2)
{
  sub_220FC1130();
  swift_beginAccess();
  if (*(v2 + 288) == *(a1 + 32) && *(v2 + 296) == *(a1 + 40))
  {
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v2 + 280);
    sub_220E97D08(a2);
    *(v2 + 280) = v6;
    swift_endAccess();
    sub_220FC1130();
    swift_beginAccess();
    sub_220E4A07C(v7, a1);
    swift_endAccess();
    sub_220FC1140();
  }

  return sub_220FC1140();
}

uint64_t sub_220ED7AD0(uint64_t a1)
{
  v3 = sub_220FC1130();
  OUTLINED_FUNCTION_1_34(v3);
  *(v1 + 184) = a1;

  return sub_220FC1140();
}

uint64_t sub_220ED7B2C(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  v25 = sub_220FC1130();
  OUTLINED_FUNCTION_1_34(v25);
  *(v17 + 208) = a2;
  *(v17 + 216) = a3;
  *(v17 + 224) = a4;
  *(v17 + 232) = a5;
  *(v17 + 240) = a6;
  *(v17 + 248) = a7;
  *(v17 + 256) = a8;
  *(v17 + 264) = a9;
  *(v17 + 272) = a17;
  *(v17 + 276) = 1;
  return sub_220FC1140();
}

uint64_t sub_220ED7BD0(uint64_t a1, double a2)
{
  sub_220FC1130();
  swift_beginAccess();
  if (*(v2 + 288) != a1 || *(v2 + 296) != a2)
  {
    *(v2 + 288) = a1;
    *(v2 + 296) = a2;
    sub_220FC1130();
    swift_beginAccess();
    *(v2 + 328) = MEMORY[0x277D84FA0];

    sub_220FC1140();
  }

  return sub_220FC1140();
}

BOOL sub_220ED7C88(uint64_t a1)
{
  sub_220FC1130();
  swift_beginAccess();
  v3 = sub_220F281D0(a1, *(v1 + 328));
  sub_220FC1140();
  return (v3 & 1) == 0;
}

void sub_220ED7CF4(uint64_t result, uint64_t a2)
{
  if ((*(v2 + 105) & 1) == 0)
  {
    sub_220ED7D10(0, result, a2);
  }
}

void sub_220ED7D10(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90, &unk_220FC9CE0);
  *&v10 = MEMORY[0x28223BE20](v8 - 8, v9).n128_u64[0];
  v12 = &v18 - v11;
  if (a1)
  {
    [a1 timestamp];
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_220FC2AE0();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v4;
  *(v16 + 40) = v14;
  *(v16 + 48) = a1 == 0;
  *(v16 + 56) = a1;
  *(v16 + 64) = a2;
  *(v16 + 72) = a3;

  v17 = a1;
  sub_220E1AADC(a2, a3);
  sub_220F9BB1C(0, 0, v12, &unk_220FD0DE0, v16);
}

double sub_220ED7E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E508, &qword_220FD5A80);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v11 - v6;
  (*(v3 + 16))(&v11 - v6, a1, v2, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v7, v2);
  sub_220ED7CF4(sub_220ED9B8C, v9);

  return result;
}

void sub_220ED7FE8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70, &qword_220FCBAB0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v13 - v4;
  if (qword_27CF9C018 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_27CF9CC28);
  sub_220E335D0(v6, v5);
  v7 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    sub_220E6ED9C(v5, &qword_27CF9CF70, &qword_220FCBAB0);
  }

  else
  {
    v8 = sub_220FC1780();
    v9 = sub_220FC2E30();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_220E15000, v8, v9, "[Wind] Tearing down display link...", v10, 2u);
      MEMORY[0x223D9DDF0](v10, -1, -1);
    }

    (*(*(v7 - 8) + 8))(v5, v7);
  }

  sub_220ED6358();
  v11 = *(v1 + 96);
  if (v11)
  {
    [v11 invalidate];
    v12 = *(v1 + 96);
  }

  else
  {
    v12 = 0;
  }

  *(v1 + 96) = 0;
}

void sub_220ED81C4(void *a1)
{
  if (*(v1 + 105) == 1)
  {
    sub_220ED7D10(a1, 0, 0);
  }
}

uint64_t sub_220ED8230(uint64_t a1, __n128 a2)
{
  result = sub_220FC1720();
  if (v3 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_220ED834C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 124))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_220ED838C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 124) = 1;
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

    *(result + 124) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220ED83FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v10;
  *(v8 + 24) = a5;
  *(v8 + 32) = a7;
  *(v8 + 56) = a6;
  *(v8 + 16) = a4;
  return MEMORY[0x2822009F8](sub_220ED8430, 0, 0);
}

uint64_t sub_220ED8430()
{
  OUTLINED_FUNCTION_19();
  if (qword_27CF9C0C0 != -1)
  {
    swift_once();
  }

  v0 = qword_27CF9E668;

  return MEMORY[0x2822009F8](sub_220ED84C0, v0, 0);
}

uint64_t sub_220ED84C0()
{
  OUTLINED_FUNCTION_19();
  sub_220ED852C(*(v0 + 24), *(v0 + 56) & 1, *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_220ED852C(uint64_t a1, int a2, uint64_t a3, void (*a4)(void), char *a5)
{
  v6 = v5;
  v94 = a4;
  v91 = a2;
  v92 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70, &qword_220FCBAB0);
  MEMORY[0x28223BE20](v8, v9);
  v97 = (&v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v84 - v13;
  v15 = sub_220FC16F0();
  v95 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v84 - v21;
  sub_220FC1710();
  v96 = v22;
  sub_220FC16D0();
  if (*(v5 + 320) == 1)
  {
    v23 = sub_220FC1710();
    v24 = sub_220FC3050();
    if (sub_220FC3360())
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = sub_220FC16E0();
      _os_signpost_emit_with_name_impl(&dword_220E15000, v23, v24, v26, "windSimulationSkippedFrame", "", v25, 2u);
      MEMORY[0x223D9DDF0](v25, -1, -1);
    }

    if (v94)
    {
      v94();
    }
  }

  else
  {
    v88 = a5;
    *(v5 + 320) = 1;
    v27 = sub_220FC1710();
    v28 = sub_220FC3040();
    v29 = sub_220FC3360();
    v98 = v5;
    if (v29)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = sub_220FC16E0();
      _os_signpost_emit_with_name_impl(&dword_220E15000, v27, v28, v31, "windSimulationCycle", "", v30, 2u);
      v32 = v30;
      v6 = v98;
      MEMORY[0x223D9DDF0](v32, -1, -1);
    }

    (*(v95 + 16))(v18, v96, v15);
    sub_220FC1760();
    swift_allocObject();
    v89 = sub_220FC1750();
    sub_220FC1130();
    swift_beginAccess();
    memcpy(v103, (v6 + 184), 0x7CuLL);
    sub_220ED9CE8(v103, v101);
    sub_220ED9CE8(v103, v101);
    sub_220ED68CC(v103, v101);
    swift_beginAccess();
    memcpy(v100, (v6 + 184), 0x7CuLL);
    v102 = v101[0];
    memcpy((v6 + 184), v101, 0x7CuLL);
    sub_220ED9D20(v100);
    *(v6 + 184) = *(v6 + 176);

    swift_endAccess();
    sub_220E6ED9C(&v102, &qword_27CF9E6A0, &unk_220FD0DF0);
    sub_220FC1140();
    v33 = v103[0];
    v34 = *(v6 + 176);

    v35 = sub_220ED92B0(v33, v34);

    v37 = sub_220ED92B0(v36, v33);

    v38 = *(v35 + 16);
    v39 = &qword_27CF9C000;
    v93 = v35;
    v90 = v15;
    if (v38)
    {
      if (qword_27CF9C018 != -1)
      {
LABEL_58:
        swift_once();
      }

      v40 = __swift_project_value_buffer(v8, qword_27CF9CC28);
      sub_220E335D0(v40, v14);
      v41 = sub_220FC17A0();
      if (__swift_getEnumTagSinglePayload(v14, 1, v41) == 1)
      {
        sub_220E6ED9C(v14, &qword_27CF9CF70, &qword_220FCBAB0);
      }

      else
      {

        v42 = sub_220FC1780();
        v43 = sub_220FC2E30();

        v87 = v43;
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v99[0] = v86;
          *v44 = 136315138;
          sub_220E304BC();
          v45 = sub_220FC2C20();
          v85 = v42;
          v47 = sub_220E20FF8(v45, v46, v99);

          v48 = v44;
          *(v44 + 4) = v47;
          v35 = v93;
          v6 = v98;
          v49 = v48;
          _os_log_impl(&dword_220E15000, v42, v87, "[Wind] Tiles outOfView=%s", v48, 0xCu);
          v50 = v86;
          __swift_destroy_boxed_opaque_existential_0(v86);
          MEMORY[0x223D9DDF0](v50, -1, -1);
          MEMORY[0x223D9DDF0](v49, -1, -1);
        }

        else
        {
        }

        v39 = &qword_27CF9C000;
        (*(*(v41 - 8) + 8))(v14, v41);
      }
    }

    if (*(v37 + 16))
    {
      if (v39[3] != -1)
      {
        swift_once();
      }

      v51 = __swift_project_value_buffer(v8, qword_27CF9CC28);
      v52 = v97;
      sub_220E335D0(v51, v97);
      v8 = sub_220FC17A0();
      if (__swift_getEnumTagSinglePayload(v52, 1, v8) == 1)
      {

        sub_220E6ED9C(v52, &qword_27CF9CF70, &qword_220FCBAB0);
      }

      else
      {

        v53 = sub_220FC1780();
        v54 = sub_220FC2E30();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v87 = v54;
          v56 = v55;
          v86 = swift_slowAlloc();
          v99[0] = v86;
          *v56 = 136315138;
          sub_220E304BC();
          v57 = sub_220FC2C20();
          v59 = v58;

          v60 = v57;
          v35 = v93;
          v6 = v98;
          v37 = sub_220E20FF8(v60, v59, v99);

          *(v56 + 4) = v37;
          _os_log_impl(&dword_220E15000, v53, v87, "[Wind] Tiles newInView=%s", v56, 0xCu);
          v61 = v86;
          __swift_destroy_boxed_opaque_existential_0(v86);
          MEMORY[0x223D9DDF0](v61, -1, -1);
          v52 = v97;
          MEMORY[0x223D9DDF0](v56, -1, -1);
        }

        else
        {
        }

        (*(*(v8 - 8) + 8))(v52, v8);
      }
    }

    else
    {
    }

    *(v6 + 176) = v33;

    v39 = *(v6 + 80);

    sub_220E2FD2C(v35);

    v62 = v103[12] + 64;
    v63 = 1 << *(v103[12] + 32);
    v64 = -1;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    v6 = v64 & *(v103[12] + 64);
    v14 = ((v63 + 63) >> 6);
    v97 = v103[12];

    v65 = 0;
    while (v6)
    {
      v66 = v65;
      v35 = v98;
LABEL_35:
      v67 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v68 = v67 | (v66 << 6);
      v69 = v97[6] + 48 * v68;
      v70 = *v69;
      v37 = *(v69 + 8);
      v33 = *(v69 + 16);
      v71 = *(v69 + 24);
      v8 = *(v97[7] + 8 * v68);
      v72 = *(v35 + 80);

      v73 = v70;
      v39 = v72;
      sub_220E2FC60(v73, v37, v33, v8, v71);
    }

    v35 = v98;
    while (1)
    {
      v66 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        __break(1u);
        goto LABEL_58;
      }

      if (v66 >= v14)
      {
        break;
      }

      v6 = *(v62 + 8 * v66);
      ++v65;
      if (v6)
      {
        v65 = v66;
        goto LABEL_35;
      }
    }

    v15 = v90;
    v74 = v94;
    if (v103[1])
    {
      if (*(*(v35 + 176) + 16))
      {
        *(v35 + 32) = v103[2];
        sub_220ED7118();
      }

      else
      {
        *(v35 + 192) = 1;
      }
    }

    if ((v103[11] & 0x100000000) != 0 || *(v93 + 16) || v97[2])
    {
      v104[0] = *&v103[3];
      v104[1] = *&v103[5];
      v104[2] = *&v103[7];
      v104[3] = *&v103[9];
      v105 = v103[11];
      v106 = 512;

      sub_220E2FF54(v104);
      v76 = v75;

      *(v35 + 88) = v76;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v78 = v93;
    if (Strong)
    {
      sub_220EDF534(v35, v93);
      swift_unknownObjectRelease();
    }

    sub_220ED9CE8(v103, v99);
    sub_220ED6098(v78, v103);
    v80 = v79;

    if (v80[2])
    {
      sub_220FC1130();
      swift_beginAccess();
      sub_220ED9304(v80);
      swift_endAccess();

      sub_220FC1140();
    }

    else
    {
    }

    if (*(*(v35 + 176) + 16) && (, v81 = sub_220E2FEF8(), , !v81))
    {
      sub_220ED9370(v92, v91 & 1, v103);
      sub_220ED9684(v103, v74, v88);
      sub_220ED9D20(v103);
    }

    else
    {
      v82 = sub_220ED9D20(v103);
      if (v74)
      {
        (v74)(v82);
      }
    }

    sub_220ED9050(v35, v89);
  }

  return (*(v95 + 8))(v96, v15);
}

uint64_t sub_220ED9050(uint64_t a1, uint64_t a2)
{
  v3 = sub_220FC1730();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_220FC16F0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_220FC1710();
  sub_220FC1740();
  v19 = sub_220FC3030();
  if (sub_220FC3360())
  {

    sub_220FC1770();

    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x277D85B00])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v7, v3);
      v14 = "";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_220FC16E0();
    _os_signpost_emit_with_name_impl(&dword_220E15000, v13, v19, v16, "windSimulationCycle", v14, v15, 2u);
    MEMORY[0x223D9DDF0](v15, -1, -1);
  }

  result = (*(v9 + 8))(v12, v8);
  *(a1 + 320) = 0;
  return result;
}

uint64_t sub_220ED92B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_220ED9E80(a1);
    return a2;
  }

  else
  {

    return sub_220ED9F84(a1, a2);
  }
}

void sub_220ED9304(void *result)
{
  if (*(*v1 + 16))
  {
    v2 = result[2];
    if (v2)
    {
      v3 = result + 4;
      do
      {
        v4 = v3[1];
        v6[0] = *v3;
        v6[1] = v4;
        v6[2] = v3[2];
        sub_220EE7D40(v6, v5);
        v3 += 3;
        --v2;
      }

      while (v2);
    }
  }
}

void sub_220ED9370(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_220ED9728(a1, a2 & 1);
  swift_beginAccess();
  v6 = *(v3 + 16);
  v7 = sub_220F43CDC();
  v8 = v6 & 0xC000000000000001;
  v9 = v6 & 0xFFFFFFFFFFFFFF8;

  v48 = -v7;
  v10 = 4;
  v46 = v5;
  v44 = v6 & 0xC000000000000001;
  v45 = v6;
  v43 = v6 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v48 + v10 == 4)
    {

      return;
    }

    if (v8)
    {
      v11 = MEMORY[0x223D9CB30]();
    }

    else
    {
      if ((v10 - 4) >= *(v9 + 16))
      {
        goto LABEL_27;
      }

      v11 = *(v6 + 8 * v10);
    }

    v49 = v11;
    if (v5)
    {
      sub_220F283B4(*(v11 + 32), *(v11 + 40), *(v11 + 48), *(v4 + 176), *(v11 + 56));
      if ((v12 & 1) == 0)
      {
        *(v11 + OBJC_IVAR____TtC11WeatherMaps8Particle_life) = 0;
      }
    }

    v13 = OBJC_IVAR____TtC11WeatherMaps8Particle_life;
    if (*(v11 + OBJC_IVAR____TtC11WeatherMaps8Particle_life) <= 0.0)
    {

      sub_220ED7998(v17);
      *(v11 + v13) = v18;
      sub_220ED9D50(0.0, 1.0);
      v20 = v19;
      sub_220ED9D50(0.0, 1.0);
      v22 = *(v4 + 176);
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v21;

        v25 = sub_220ED9DF4(v23);
        v26 = sub_220FC3440();
        v27 = sub_220EDA9D4(v26, *(v22 + 36), 0, v25, v22);
        v29 = v28;
        v31 = v30;
        v32 = sub_220EF6E60(v27, v28, v30 & 1, v22);
        v34 = v33;
        v36 = v35;
        v38 = v37;

        v39 = v31 & 1;
        v40 = v29;
        v9 = v43;
        v8 = v44;
        sub_220EDAB04(v27, v40, v39);
        *(v11 + 24) = v20;
        *(v11 + 28) = v24;
        *(v11 + 32) = v32;
        *(v11 + 40) = v34;
        *(v11 + 48) = v36;
        *(v11 + 56) = v38;
        *(v11 + 64) = v20;
        *(v11 + 68) = v24;
        *(v11 + 72) = v32;
        *(v11 + 80) = v34;
        v6 = v45;
        *(v11 + 88) = v36;
        v5 = v46;
        *(v11 + 96) = v38;
      }
    }

    else
    {
      v14 = *(a3 + 120);

      sub_220ED97F0(&v49, v14);
      if ((v5 & 0x100) != 0)
      {
        sub_220EEDD10(v11);
      }

      v15 = *(v11 + OBJC_IVAR____TtC11WeatherMaps8Particle_bucket);
      v16 = v15 ? *(v15 + 36) : 0.0;
      *(v11 + v13) = *(v11 + v13) - v16;
    }

    swift_beginAccess();
    v41 = *(v4 + 16);
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v4 + 16) = v41;
    if (!isUniquelyReferenced_nonNull_bridgeObject || v41 < 0 || (v41 & 0x4000000000000000) != 0)
    {
      v41 = sub_220E98DA8();
      *(v4 + 16) = v41;
    }

    if ((v10 - 4) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    *((v41 & 0xFFFFFFFFFFFFFF8) + 8 * v10) = v11;
    *(v4 + 16) = v41;
    swift_endAccess();

    ++v10;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

double sub_220ED9684(uint64_t a1, char **a2, char *a3)
{
  v4 = *(v3 + 88);
  if (v4 && swift_unknownObjectWeakLoadStrong())
  {

    sub_220EDF4A8(v3, v4, a1, a2, a3);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220ED9728(uint64_t result, char a2)
{
  if (*(v2 + 105) == 1 && (a2 & 1) == 0)
  {
    v3 = *(v2 + 120) + 0.5;
    v4 = v3 <= *&result;
    if (v3 <= *&result)
    {
      *(v2 + 120) = *&result;
    }

    if (*(v2 + 128) + 0.1 <= *&result)
    {
      *(v2 + 128) = *&result;
      v5 = 256;
    }

    else
    {
      v5 = 0;
    }

    return v5 | v4;
  }

  v6 = *(v2 + 136);
  v7 = *(v2 + 160);
  v8 = __OFADD__(v6, v7);
  v9 = v6 + v7;
  if (v8)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(v2 + 152);
  v11 = v10 < v9;
  v4 = v10 >= v9;
  if (!v11)
  {
    *(v2 + 136) = v10;
  }

  v12 = *(v2 + 144);
  v13 = *(v2 + 168);
  v8 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v8)
  {
    goto LABEL_18;
  }

  if (v10 >= v14)
  {
    *(v2 + 144) = v10;
  }

  if (!__OFADD__(v10, 1))
  {
    *(v2 + 152) = v10 + 1;
    v5 = (v10 >= v14) << 8;
    return v5 | v4;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_220ED97F0(uint64_t *a1, float a2)
{
  v3 = *(v2 + 88);
  if (v3)
  {
    v5 = *a1;
    v6 = *(*a1 + 40);
    v36[0] = *(*a1 + 24);
    v36[1] = v6;
    v37 = *(v5 + 56);

    sub_220EC0680(v36);
    v26 = v7;
    v27 = v8;
    v9 = *(v5 + 24);
    v10 = *(v5 + 32);
    v11 = *(v5 + 40);
    v12 = *(v5 + 48);
    v13 = *(v5 + 56);
    v14 = *(v2 + 52);
    sub_220EECE70(v28, v7);
    v16 = v26;
    v15 = v27;
    v17 = __PAIR64__(LODWORD(v27), LODWORD(v26));
    if (v33)
    {
      v18 = v10;
      v19 = v11;
      v20 = v12;
      v21 = v13;
      v22 = v9;
    }

    else
    {
      v23 = (v26 - v28[0]) * *(v3 + 136);
      v24 = (v27 - v28[1]) * *(v3 + 144);
      v25 = vadd_f32(__PAIR64__(LODWORD(v27), LODWORD(v26)), vmul_n_f32(vadd_f32(vmul_n_f32(v32, v23 * v24), vadd_f32(vmul_n_f32(v30, (1.0 - v23) * v24), vadd_f32(vmul_n_f32(v29, (1.0 - v23) * (1.0 - v24)), vmul_n_f32(v31, v23 * (1.0 - v24))))), (v14 / 1000.0) * a2));
      sub_220EC07C4(v34, v25.f32[0], v25.f32[1]);
      v17 = v25;
      v16 = v26;
      v15 = v27;
      v22 = v34[0];
      v18 = v34[1];
      v19 = v34[2];
      v20 = v34[3];
      v21 = v35;
    }

    *(v5 + 24) = v22;
    *(v5 + 32) = v18;
    *(v5 + 40) = v19;
    *(v5 + 48) = v20;
    *(v5 + 56) = v21;
    *(v5 + 64) = v9;
    *(v5 + 72) = v10;
    *(v5 + 80) = v11;
    *(v5 + 88) = v12;
    *(v5 + 96) = v13;
    *(v5 + 100) = v17;
    *(v5 + 108) = v16;
    *(v5 + 112) = v15;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048, &unk_220FC9CA0);
    sub_220FBFC90();
    swift_endAccess();
  }
}

void (*sub_220ED9A0C(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_beginAccess();
  *(v3 + 8) = *(v1 + 304);
  return sub_220ED9A84;
}

void sub_220ED9A84(uint64_t a1)
{
  v1 = *a1;
  sub_220ED6BDC(a1, *(*a1 + 32));

  free(v1);
}

void (*sub_220ED9ACC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = (*(v1 + 105) & 1) == 0;
  return sub_220ED9B00;
}

unint64_t sub_220ED9B2C()
{
  result = qword_27CF9E698;
  if (!qword_27CF9E698)
  {
    type metadata accessor for WindParticleActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E698);
  }

  return result;
}

uint64_t sub_220ED9B8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E508, &qword_220FD5A80);

  return sub_220ED7FAC();
}

uint64_t sub_220ED9BF8(uint64_t a1)
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
  v11[1] = sub_220E566F8;

  return sub_220ED83FC(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_220ED9D50(float a1, float a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE_INT(fabs(a2 - a1)) > 2139095039)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = 0;
  MEMORY[0x223D9DE10](&v5, 8);
  if (((v4 * vcvts_n_f32_u64(v5 & 0xFFFFFF, 0x18uLL)) + a1) == a2)
  {
    sub_220ED9D50(a1, a2);
  }
}

unint64_t sub_220ED9DF4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x223D9DE10](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x223D9DE10](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_220ED9E80(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(a1 + 48) + ((v9 << 11) | (32 * v10));
        sub_220EE7ECC(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_220ED9F84(uint64_t a1, uint64_t a2)
{
  v72 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v58 = 0;
    v4 = 0;
    v5 = *(a1 + 56);
    v64 = a1 + 56;
    v6 = -1 << *(a1 + 32);
    v63 = ~v6;
    if (-v6 < 64)
    {
      v7 = ~(-1 << -v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & v5;
    v9 = (63 - v6) >> 6;
    v65 = a2;
    v66 = a1;
    v10 = (a2 + 56);
    do
    {
LABEL_6:
      if (!v8)
      {
        v12 = v4;
        v13 = v64;
        v11 = v65;
        while (1)
        {
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v14 >= v9)
          {

            goto LABEL_59;
          }

          v8 = *(v64 + 8 * v14);
          ++v12;
          if (v8)
          {
            v4 = v14;
            goto LABEL_13;
          }
        }

LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v11 = v65;
LABEL_13:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = *(a1 + 48) + ((v4 << 11) | (32 * v15));
      v2 = *v16;
      v17 = *(v16 + 8);
      v18 = *(v16 + 16);
      v19 = *(v16 + 24);
      sub_220FC3A40();
      MEMORY[0x223D9CFA0](v2);
      MEMORY[0x223D9CFA0](v17);
      MEMORY[0x223D9CFA0](v18);
      sub_220FC3A70();
      v20 = sub_220FC3A90();
      v21 = -1 << *(v11 + 32);
      v13 = v20 & ~v21;
      a1 = v66;
      v3 = v13 >> 6;
      v11 = 1 << v13;
    }

    while (((1 << v13) & v10[v13 >> 6]) == 0);
    while (1)
    {
      v22 = *(v65 + 48) + 32 * v13;
      v23 = *v22 == v2 && *(v22 + 8) == v17;
      v24 = v23 && *(v22 + 16) == v18;
      if (v24 && *(v22 + 24) == v19)
      {
        break;
      }

      v13 = (v13 + 1) & ~v21;
      v3 = v13 >> 6;
      v11 = 1 << v13;
      if ((v10[v13 >> 6] & (1 << v13)) == 0)
      {
        goto LABEL_6;
      }
    }

    v69 = v63;
    v70 = v4;
    v71 = v8;
    v68[0] = v66;
    v68[1] = v64;
    v26 = (63 - v21) >> 6;
    v2 = 8 * v26;

    v59 = v26;
    if (v26 <= 0x80)
    {
LABEL_28:
      v60 = &v58;
      MEMORY[0x28223BE20](v27, v28);
      v13 = &v58 - v29;
      memcpy(&v58 - v29, v10, v2);
      v30 = *(v65 + 16);
      v31 = *(v13 + 8 * v3) & ~v11;
      v11 = v65;
      v62 = v13;
      *(v13 + 8 * v3) = v31;
      v32 = v30 - 1;
      while (2)
      {
        v61 = v32;
        while (1)
        {
LABEL_30:
          if (!v8)
          {
            v33 = v66;
            v2 = v64;
            while (1)
            {
              v34 = v4 + 1;
              if (__OFADD__(v4, 1))
              {
                break;
              }

              if (v34 >= v9)
              {
                v11 = sub_220EDA76C(v62, v59, v61, v11);
                goto LABEL_56;
              }

              v8 = *(v64 + 8 * v34);
              ++v4;
              if (v8)
              {
                v4 = v34;
                goto LABEL_37;
              }
            }

            __break(1u);
            goto LABEL_62;
          }

          v33 = v66;
LABEL_37:
          v35 = __clz(__rbit64(v8));
          v8 &= v8 - 1;
          v36 = *(v33 + 48) + ((v4 << 11) | (32 * v35));
          v37 = *v36;
          v3 = *(v36 + 8);
          v38 = *(v36 + 16);
          v39 = *(v36 + 24);
          sub_220FC3A40();
          v13 = &v67;
          MEMORY[0x223D9CFA0](v37);
          MEMORY[0x223D9CFA0](v3);
          MEMORY[0x223D9CFA0](v38);
          sub_220FC3A70();
          v40 = sub_220FC3A90();
          v41 = -1 << *(v11 + 32);
          v42 = v40 & ~v41;
          v43 = v42 >> 6;
          v44 = 1 << v42;
          if (((1 << v42) & v10[v42 >> 6]) != 0)
          {
            v45 = ~v41;
            while (1)
            {
              v46 = *(v11 + 48) + 32 * v42;
              v47 = *v46 == v37 && *(v46 + 8) == v3;
              v48 = v47 && *(v46 + 16) == v38;
              if (v48 && *(v46 + 24) == v39)
              {
                break;
              }

              v42 = (v42 + 1) & v45;
              v43 = v42 >> 6;
              v44 = 1 << v42;
              if ((v10[v42 >> 6] & (1 << v42)) == 0)
              {
                goto LABEL_30;
              }
            }

            v50 = v62[v43];
            v62[v43] = v50 & ~v44;
            if ((v50 & v44) != 0)
            {
              break;
            }
          }
        }

        v32 = v61 - 1;
        if (__OFSUB__(v61, 1))
        {
          __break(1u);
        }

        if (v61 != 1)
        {
          continue;
        }

        break;
      }

      v11 = MEMORY[0x277D84FA0];
LABEL_56:
      v51 = v66;
      goto LABEL_59;
    }

LABEL_63:
    v53 = v65;

    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_28;
    }

    v54 = swift_slowAlloc();
    v55 = v58;
    v56 = sub_220EDA6E4(v54, v59, v10, v59, v53, v13, v68);
    if (!v55)
    {
      v57 = v56;

      MEMORY[0x223D9DDF0](v54, -1, -1);
      v51 = v68[0];
      v63 = v69;
      v11 = v57;
LABEL_59:
      sub_220EA9CB8(v51);
      return v11;
    }

    result = MEMORY[0x223D9DDF0](v54, -1, -1);
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_220EDA4CC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v30 = v9;
    while (1)
    {
LABEL_3:
      v11 = a5[3];
      v12 = a5[4];
      if (!v12)
      {
        while (1)
        {
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v13 >= ((a5[2] + 64) >> 6))
          {
            a5[3] = v11;
            a5[4] = 0;

            return sub_220EDA76C(v7, a2, v30, a3);
          }

          v12 = *(a5[1] + 8 * v13);
          ++v11;
          if (v12)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_28;
      }

      v13 = a5[3];
LABEL_8:
      v14 = *(*a5 + 48) + ((v13 << 11) | (32 * __clz(__rbit64(v12))));
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      v18 = *(v14 + 24);
      a5[3] = v13;
      a5[4] = (v12 - 1) & v12;
      sub_220FC3A40();
      MEMORY[0x223D9CFA0](v15);
      MEMORY[0x223D9CFA0](v16);
      MEMORY[0x223D9CFA0](v17);
      sub_220FC3A70();
      result = sub_220FC3A90();
      v19 = -1 << *(a3 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) != 0)
      {
        v23 = ~v19;
        while (1)
        {
          v24 = *(a3 + 48) + 32 * v20;
          v25 = *v24 == v15 && *(v24 + 8) == v16;
          v26 = v25 && *(v24 + 16) == v17;
          if (v26 && *(v24 + 24) == v18)
          {
            break;
          }

          v20 = (v20 + 1) & v23;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if ((*(v10 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
          {
            goto LABEL_3;
          }
        }

        v28 = v7[v21];
        v7[v21] = v28 & ~v22;
        if ((v28 & v22) != 0)
        {
          break;
        }
      }
    }

    v9 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_28:
      __break(1u);
      return result;
    }

    if (v30 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_220EDA6E4(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_220EDA4CC(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_220EDA76C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D000, &qword_220FD0E00);
  result = sub_220FC3590();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v32 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(v4 + 48) + 32 * (v13 | (v11 << 6));
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
    sub_220FC3A40();
    MEMORY[0x223D9CFA0](v18);
    MEMORY[0x223D9CFA0](v17);
    MEMORY[0x223D9CFA0](v19);
    sub_220FC3A70();
    result = sub_220FC3A90();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v9 + 48) + 32 * v24;
    *v29 = v18;
    *(v29 + 8) = v17;
    *(v29 + 16) = v19;
    *(v29 + 24) = v20;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v31;
    v10 = v32;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v32 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_220EDA9D4(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v5 = a3;
  v6 = result;
  if (a4)
  {
    v7 = 0;
    while ((v5 & 1) == 0)
    {
      if ((v6 & 0x8000000000000000) != 0 || (v8 = 1 << *(a5 + 32), v6 >= v8))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v9 = v6 >> 6;
      v10 = *(a5 + 56 + 8 * (v6 >> 6));
      if (((v10 >> v6) & 1) == 0)
      {
        goto LABEL_21;
      }

      if (*(a5 + 36) != a2)
      {
        goto LABEL_22;
      }

      v11 = v10 & (-2 << (v6 & 0x3F));
      if (v11)
      {
        v6 = __clz(__rbit64(v11)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a5 + 64 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v15 = *v14++;
          result = v15;
          v12 += 64;
          ++v13;
          if (v15)
          {
            v6 = __clz(__rbit64(result)) + v12;
            goto LABEL_16;
          }
        }

        v6 = 1 << *(a5 + 32);
      }

LABEL_16:
      v5 = 0;
      if (++v7 >= a4)
      {
        return v6;
      }
    }

    goto LABEL_24;
  }

  sub_220EDAB10(result, a2, a3 & 1);
  return v6;
}

double sub_220EDAB04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_220EDAB10(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void *sub_220EDAB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned __int8 a9, uint64_t a10)
{
  v47 = a8;
  v44 = a6;
  v48 = a5;
  v46 = a4;
  v45 = a9;
  v14 = type metadata accessor for WeatherMapOverlayTimeConstraints(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a10;
  v19 = *(a10 + 8);
  v20 = *(a10 + 16);
  v39 = a1;
  v21 = a1;
  v22 = v48;
  sub_220E1E2A8(v21, v54);
  v40 = a7;
  sub_220E5ADF8(a7, v17);
  v51[0] = v18;
  v51[1] = v19;
  v52 = v20;
  v23 = objc_allocWithZone(type metadata accessor for MapKitDynamicTileOverlay(0));
  swift_unknownObjectRetain();
  sub_220E4E4D8(a2, v53);
  v41 = v18;
  v42 = v19;
  v24 = v18;
  v25 = a2;
  v26 = v44;
  v27 = v19;
  v28 = v20;
  sub_220E5AFB8(v24, v27, v20);
  v43 = a3;
  v29 = sub_220F5F75C(v54, v25, a3, v46, v22, v26 & 0xFFFFFFFFFFLL, v17, v47, v45, v51);
  memcpy(v54, (v25 + 16), 0xB8uLL);
  v30 = sub_220E435CC(v54);
  sub_220E22B0C(v54);
  if (v30 == 1 && (v26 & 0x8000000000) == 0)
  {
    if (qword_2812C7508 != -1)
    {
      swift_once();
    }

    v31 = sub_220E1B804();

    if (v31)
    {
      sub_220E1E2A8(v39, v51);
      sub_220E5ADF8(v40, v17);
      v33 = v41;
      v32 = v42;
      v49[0] = v41;
      v49[1] = v42;
      v50 = v28;
      v34 = objc_allocWithZone(type metadata accessor for HashOverlay(0));
      v35 = v43;
      swift_unknownObjectRetain();
      sub_220E4E4D8(v25, v53);
      sub_220E5AFB8(v33, v32, v28);
      v36 = sub_220E82B3C(v51, v25, v35, v46, v48, v26 & 0xFFFFFFFFFFLL, v17, v47 & 1, v45 & 1, v49, 512);

      return v36;
    }
  }

  return v29;
}

BOOL sub_220EDADFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E630, &unk_220FD0A20);
  sub_220E453D4(&qword_2812CA248, &qword_27CF9E630, &unk_220FD0A20, MEMORY[0x277CE37B8]);
  sub_220FC2CC0();
  sub_220FC2CE0();
  return v2 == v1;
}

BOOL sub_220EDAEA0(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t WeatherDataModel.rainExpectation.getter@<X0>(char *a1@<X8>)
{
  v55 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E630, &unk_220FD0A20);
  OUTLINED_FUNCTION_6();
  v51 = v2;
  v52 = v1;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v3, v4);
  v50 = v48 - v5;
  sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v53 = v7;
  v54 = v6;
  MEMORY[0x28223BE20](v6, v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E640, &qword_220FD0A30);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v12, v13);
  v15 = v48 - v14;
  v16 = sub_220FC0800();
  OUTLINED_FUNCTION_6();
  v49 = v17;
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_3();
  v22 = v21 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E648, &qword_220FD0A38);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v23, v24);
  v26 = v48 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E650, &qword_220FD0A40);
  OUTLINED_FUNCTION_6();
  v29 = v28;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v30, v31);
  v33 = v48 - v32;
  result = sub_220EDBE74();
  if ((v35 & 1) == 0 && !result)
  {
    goto LABEL_3;
  }

  sub_220FC0740();
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    v37 = &qword_27CF9E648;
    v38 = &qword_220FD0A38;
    v39 = v26;
LABEL_8:
    sub_220E45374(v39, v37, v38);
    goto LABEL_9;
  }

  (*(v29 + 32))(v33, v26, v27);
  sub_220FC0670();
  v40 = sub_220FC0980();
  v48[1] = v48;
  MEMORY[0x28223BE20](v40, v41);
  v48[-2] = v11;
  sub_220EDBCC0();

  (*(v53 + 8))(v11, v54);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    (*(v29 + 8))(v33, v27);
    v37 = &qword_27CF9E640;
    v38 = &qword_220FD0A30;
    v39 = v15;
    goto LABEL_8;
  }

  v45 = v49;
  (*(v49 + 32))(v22, v15, v16);
  v46 = sub_220F982A8();
  (*(v45 + 8))(v22, v16);
  result = (*(v29 + 8))(v33, v27);
  if (v46)
  {
LABEL_3:
    v36 = 0;
    goto LABEL_24;
  }

LABEL_9:
  result = sub_220EDBE74();
  if ((v42 & 1) == 0 && result < 60)
  {
    goto LABEL_11;
  }

  v43 = v50;
  sub_220FC0730();
  v44 = sub_220EDADFC();
  result = (*(v51 + 8))(v43, v52);
  if (v44)
  {
    v36 = 5;
    goto LABEL_24;
  }

  result = WeatherDataModel.hoursUntilNextPrecipitation.getter();
  if (v47)
  {
    v36 = 4;
    goto LABEL_24;
  }

  if (result)
  {
    if (result >= 3)
    {
      if (result < 6)
      {
        v36 = 3;
      }

      else
      {
        v36 = 4;
      }
    }

    else
    {
      v36 = 2;
    }
  }

  else
  {
LABEL_11:
    v36 = 1;
  }

LABEL_24:
  *v55 = v36;
  return result;
}

unint64_t RainExpectation.debugDescription.getter()
{
  result = 0x756F68207478656ELL;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x786973207478656ELL;
      break;
    case 4:
      result = 1701736302;
      break;
    case 5:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      result = 7827310;
      break;
  }

  return result;
}

void sub_220EDB4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_15_4(v11, v12, v13);
  v14 = sub_220FC0540();
  OUTLINED_FUNCTION_6();
  v16 = v15;
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_7_12(v19, v50[0]);
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_16_7(v22, v23, v24, v25, v26, v27, v28, v29, v50[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E630, &unk_220FD0A20);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v30, v31);
  v33 = v50 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E6C0, &qword_220FD0F58) - 8;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v35, v36);
  v37 = OUTLINED_FUNCTION_6_16();
  v38(v37);
  v39 = v14;
  OUTLINED_FUNCTION_1_35(&qword_2812CA250);
  sub_220FC28E0();
  v40 = *(v34 + 44);
  OUTLINED_FUNCTION_3_26(&qword_2812CA248);
  OUTLINED_FUNCTION_10_10();
  while (1)
  {
    OUTLINED_FUNCTION_18_6();
    if (*(v10 + v40) == v51)
    {
      sub_220E45374(v10, &qword_27CF9E6C0, &qword_220FD0F58);
      v48 = 1;
      v14 = v50[0];
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_12_10();
    v41 = OUTLINED_FUNCTION_8_16();
    v42(v41);
    (v33)(&v51, 0);
    OUTLINED_FUNCTION_17_6();
    v43 = OUTLINED_FUNCTION_5_18();
    (v14)(v43);
    v44 = v50[5];
    v45 = (v50[2])(v33);
    v33 = v44;
    if (v44)
    {
      (*v14)(a10, v16);
      sub_220E45374(v10, &qword_27CF9E6C0, &qword_220FD0F58);
      goto LABEL_10;
    }

    if (v45)
    {
      break;
    }

    v46 = OUTLINED_FUNCTION_11_7();
    v47(v46);
  }

  sub_220E45374(v10, &qword_27CF9E6C0, &qword_220FD0F58);
  v49 = OUTLINED_FUNCTION_9_12();
  (v14)(v49);
  v39 = v16;
  v48 = 0;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v14, v48, 1, v39);
LABEL_10:
  OUTLINED_FUNCTION_8_10();
}

void sub_220EDB774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_5_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_220F43CDC();
  for (i = 0; ; ++i)
  {
    if (v27 == i)
    {
      goto LABEL_13;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x223D9CB30](i, v24);
    }

    else
    {
      if (i >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v29 = *(v24 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    a10 = v29;
    v30 = v26(&a10);
    if (v20)
    {
      swift_unknownObjectRelease();
LABEL_13:
      OUTLINED_FUNCTION_8_10();
      return;
    }

    if (v30)
    {
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_220EDB85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_15_4(v11, v12, v13);
  v14 = sub_220FC04F0();
  OUTLINED_FUNCTION_6();
  v16 = v15;
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_7_12(v19, v50[0]);
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_16_7(v22, v23, v24, v25, v26, v27, v28, v29, v50[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D398, &unk_220FD7300);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v30, v31);
  v33 = v50 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E6C8, &unk_220FD0F60) - 8;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v35, v36);
  v37 = OUTLINED_FUNCTION_6_16();
  v38(v37);
  v39 = v14;
  OUTLINED_FUNCTION_1_35(&qword_27CF9E6D0);
  sub_220FC28E0();
  v40 = *(v34 + 44);
  OUTLINED_FUNCTION_3_26(&qword_27CF9E6D8);
  OUTLINED_FUNCTION_10_10();
  while (1)
  {
    OUTLINED_FUNCTION_18_6();
    if (*(v10 + v40) == v51)
    {
      sub_220E45374(v10, &qword_27CF9E6C8, &unk_220FD0F60);
      v48 = 1;
      v14 = v50[0];
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_12_10();
    v41 = OUTLINED_FUNCTION_8_16();
    v42(v41);
    (v33)(&v51, 0);
    OUTLINED_FUNCTION_17_6();
    v43 = OUTLINED_FUNCTION_5_18();
    (v14)(v43);
    v44 = v50[5];
    v45 = (v50[2])(v33);
    v33 = v44;
    if (v44)
    {
      (*v14)(a10, v16);
      sub_220E45374(v10, &qword_27CF9E6C8, &unk_220FD0F60);
      goto LABEL_10;
    }

    if (v45)
    {
      break;
    }

    v46 = OUTLINED_FUNCTION_11_7();
    v47(v46);
  }

  sub_220E45374(v10, &qword_27CF9E6C8, &unk_220FD0F60);
  v49 = OUTLINED_FUNCTION_9_12();
  (v14)(v49);
  v39 = v16;
  v48 = 0;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v14, v48, 1, v39);
LABEL_10:
  OUTLINED_FUNCTION_8_10();
}

void sub_220EDBB50()
{
  OUTLINED_FUNCTION_5_0();
  v2 = v1;
  v4 = v3;
  v19 = v5;
  v6 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  OUTLINED_FUNCTION_6();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = 0;
  v15 = *(v2 + 16);
  while (1)
  {
    if (v15 == v14)
    {
      v17 = 1;
      v18 = v19;
      goto LABEL_9;
    }

    sub_220EDC548(v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v13);
    v16 = v4(v13);
    if (v0)
    {
      sub_220ED5ED4(v13);
      goto LABEL_10;
    }

    if (v16)
    {
      break;
    }

    sub_220ED5ED4(v13);
    ++v14;
  }

  v18 = v19;
  sub_220EDC5AC(v13, v19);
  v17 = 0;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v18, v17, 1, v6);
LABEL_10:
  OUTLINED_FUNCTION_8_10();
}

void sub_220EDBCC0()
{
  OUTLINED_FUNCTION_5_0();
  v2 = v1;
  v20 = v4;
  v21 = v3;
  v6 = v5(0);
  OUTLINED_FUNCTION_6();
  v8 = v7;
  OUTLINED_FUNCTION_5();
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v20 - v12;
  v14 = 0;
  v15 = *(v2 + 16);
  v16 = (v8 + 8);
  while (1)
  {
    if (v15 == v14)
    {
      v18 = 1;
      v19 = v20;
      goto LABEL_9;
    }

    (*(v8 + 16))(v13, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v6, v11);
    v17 = v21(v13);
    if (v0)
    {
      (*v16)(v13, v6);
      goto LABEL_10;
    }

    if (v17)
    {
      break;
    }

    (*v16)(v13, v6);
    ++v14;
  }

  v19 = v20;
  (*(v8 + 32))(v20, v13, v6);
  v18 = 0;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v19, v18, 1, v6);
LABEL_10:
  OUTLINED_FUNCTION_8_10();
}

uint64_t sub_220EDBE74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E640, &qword_220FD0A30);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v24 - v2;
  v4 = sub_220FC0800();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E648, &qword_220FD0A38);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E650, &qword_220FD0A40);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v24 - v16;
  sub_220FC0740();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    v18 = &qword_27CF9E648;
    v19 = &qword_220FD0A38;
    v20 = v12;
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    if ((sub_220FC0970() & 1) == 0)
    {
      (*(v14 + 8))(v17, v13);
      return 0;
    }

    sub_220F983E0(v3);
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v8, v3, v4);
      sub_220F986A0();
      v21 = v23;
      (*(v5 + 8))(v8, v4);
      (*(v14 + 8))(v17, v13);
      return v21;
    }

    (*(v14 + 8))(v17, v13);
    v18 = &qword_27CF9E640;
    v19 = &qword_220FD0A30;
    v20 = v3;
  }

  sub_220E45374(v20, v18, v19);
  return 0;
}

uint64_t WeatherDataModel.hoursUntilNextPrecipitation.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E638, &qword_220FD23B0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E630, &unk_220FD0A20);
  OUTLINED_FUNCTION_6();
  v6 = v5;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v22 - v9;
  v11 = sub_220FC0540();
  OUTLINED_FUNCTION_6();
  v13 = v12;
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  sub_220FC0730();
  sub_220F987A4(v3);
  (*(v6 + 8))(v10, v4);
  if (__swift_getEnumTagSinglePayload(v3, 1, v11) == 1)
  {
    sub_220E45374(v3, &qword_27CF9E638, &qword_220FD23B0);
    return 0;
  }

  else
  {
    (*(v13 + 32))(v18, v3, v11);
    sub_220F98D08();
    v19 = v20;
    (*(v13 + 8))(v18, v11);
  }

  return v19;
}

uint64_t RainExpectation.hashValue.getter()
{
  v1 = *v0;
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](v1);
  return sub_220FC3A90();
}

unint64_t sub_220EDC418()
{
  result = qword_27CF9E6B8;
  if (!qword_27CF9E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E6B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RainExpectation(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_220EDC548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220EDC5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_15_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v5 - 128) = v3;
  *(v5 - 120) = v4;
  *(v5 - 144) = a1;
  *(v5 - 136) = a2;
  *(v5 - 160) = a3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return sub_220FC2CF0();
}

void *OUTLINED_FUNCTION_18_6()
{

  return sub_220FC2CE0();
}

uint64_t sub_220EDC770(void *a1, double a2)
{
  *(v2 + 16) = a2;
  [a1 _coordinateForPoint_];
  v5 = MKMapPointForCoordinate(v20);
  y = v5.y;
  if (v5.x < 0.0)
  {
    x = 0.0;
  }

  else
  {
    x = v5.x;
  }

  v8 = [a1 image];
  [v8 size];
  v10 = v9;

  v11 = [a1 image];
  [v11 size];
  v13 = v12;

  [a1 _coordinateForPoint_];
  v14 = MKMapPointForCoordinate(v21);
  if (v5.y < 0.0)
  {
    y = 0.0;
  }

  v15 = [a1 image];
  [v15 size];
  v17 = v16;

  return sub_220EDC8CC(x, y, fabs(v14.x), vabdd_f64(v14.y, y), v17, v18, a2);
}

uint64_t sub_220EDC8CC(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v56 = a5 / a3;
  v15 = log2(a5 / a3) + 21.0;
  if (v15 < 0.0)
  {
    v15 = 0.0;
  }

  v16 = v15 + 0.01;
  v17 = floor(v15 + 0.01);
  if (v17 <= -9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v18 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v58 = a7;
  v19 = a4;
  v57 = v17 - 1;
  v20 = v18;
  v21 = exp2(v18);
  if (v17 == INFINITY || v21 == INFINITY)
  {
    goto LABEL_55;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v22 = exp2(v16 - v20);
  v23 = v21;
  v24 = a1 / *MEMORY[0x277CD4BC0] * v23;
  v25 = floor(v24);
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v26 = floor((a1 + a3) / *MEMORY[0x277CD4BC0] * v23);
  if (v26 <= -9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v27 = *(MEMORY[0x277CD4BC0] + 8);
  v28 = a2 / v27 * v23;
  v29 = floor(v28);
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_63;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v30 = floor((a2 + v19) / v27 * v23);
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v8 = v21;
  v17 = round(((v22 + -1.0) * 0.5 + 0.5) * v58);
  v10 = v25;
  v7 = v29;
  v9 = v30;
  *&v58 = v26;
  if (v26 >= v25 && v9 >= v7)
  {
    v41 = round(v17 * (v7 - v28) + v17 * (v7 - v7));
    v42 = round(v17 * (v10 - v24) + v17 * (v10 - v10));
    v60 = v29;
    sub_220F373A4();
    v44 = v58;
    v43 = v60;
    v46 = v45;
    v47 = v57;
    while (2)
    {
      v48 = __OFSUB__(v10, v8);
      v49 = !v48;
      v7 = v43;
      v50 = v41;
      while (1)
      {
        if (v10 >= v8)
        {
          v51 = v10 - v8;
        }

        else
        {
          v51 = v10;
        }

        if (v10 >= v8 && !v49)
        {
          goto LABEL_50;
        }

        v52 = *(v46 + 16);
        if (v52 >= *(v46 + 24) >> 1)
        {
          sub_220F373A4();
          v44 = v58;
          v43 = v60;
          v47 = v57;
          v46 = v54;
        }

        *(v46 + 16) = v52 + 1;
        v53 = v46 + 56 * v52;
        *(v53 + 32) = v51;
        *(v53 + 40) = v7;
        *(v53 + 48) = v47;
        *(v53 + 56) = v42;
        *(v53 + 64) = v50;
        *(v53 + 72) = v17;
        *(v53 + 80) = v17;
        if (v9 == v7)
        {
          break;
        }

        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v50 = v17 + v50;
        ++v7;
      }

      if (v10 == *&v44)
      {
        return v46;
      }

      if (!__OFADD__(v10++, 1))
      {
        v42 = v17 + v42;
        continue;
      }

      break;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (qword_2812C5EF8 != -1)
  {
LABEL_69:
    swift_once();
  }

  v32 = sub_220FC17A0();
  __swift_project_value_buffer(v32, qword_2812C5F00);
  v33 = sub_220FC1780();
  v34 = sub_220FC2E10();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v61 = v36;
    *v35 = 134350851;
    *(v35 + 4) = v10;
    *(v35 + 12) = 2050;
    *(v35 + 14) = v58;
    *(v35 + 22) = 2050;
    *(v35 + 24) = v7;
    *(v35 + 32) = 2050;
    *(v35 + 34) = v9;
    *(v35 + 42) = 2081;
    type metadata accessor for MKMapRect(0);
    sub_220EDD0FC();
    v37 = sub_220FC38F0();
    v39 = sub_220E20FF8(v37, v38, &v61);

    *(v35 + 44) = v39;
    *(v35 + 52) = 2050;
    *(v35 + 54) = v8;
    *(v35 + 62) = 2050;
    *(v35 + 64) = v17;
    *(v35 + 72) = 2050;
    *(v35 + 74) = v56;
    _os_log_impl(&dword_220E15000, v33, v34, "Invalid tile coordinates. Return empty tileset. minTileX=%{public}ld, maxTileX=%{public}ld, minTileY=%{public}ld, maxTileY=%{public}ld, mapRect=%{private}s, tilesAtZoomLevel=%{public}ld, scaledTileSize=%{public}f, zoomScale=%{public}f", v35, 0x52u);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x223D9DDF0](v36, -1, -1);
    MEMORY[0x223D9DDF0](v35, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_220EDCE50@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90, &qword_220FC8F20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC9880;
  v4 = MEMORY[0x277D83B88];
  v5 = *(v1 + 8);
  *(inited + 48) = *v1;
  *(inited + 72) = v4;
  *(inited + 80) = 121;
  *(inited + 32) = 120;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = v5;
  *(inited + 120) = v4;
  *(inited + 128) = 122;
  v6 = *(v1 + 16);
  *(inited + 136) = 0xE100000000000000;
  *(inited + 144) = v6;
  *(inited + 168) = v4;
  *(inited + 176) = 1952671090;
  *(inited + 184) = 0xE400000000000000;
  type metadata accessor for CGRect(0);
  *(inited + 216) = v7;
  v8 = swift_allocObject();
  *(inited + 192) = v8;
  v9 = *(v1 + 40);
  *(v8 + 16) = *(v1 + 24);
  *(v8 + 32) = v9;
  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E6E8, &qword_220FD10A0);
  a1[4] = sub_220EDD044();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_220FC12A0();
}

uint64_t sub_220EDCFB0(uint64_t a1)
{
  sub_220EDD0A8();

  return sub_220FC1290();
}

unint64_t sub_220EDCFF0()
{
  result = qword_27CF9E6E0;
  if (!qword_27CF9E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E6E0);
  }

  return result;
}

unint64_t sub_220EDD044()
{
  result = qword_27CF9E6F0;
  if (!qword_27CF9E6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9E6E8, &qword_220FD10A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E6F0);
  }

  return result;
}

unint64_t sub_220EDD0A8()
{
  result = qword_27CF9E6F8;
  if (!qword_27CF9E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E6F8);
  }

  return result;
}

unint64_t sub_220EDD0FC()
{
  result = qword_2812C5B10;
  if (!qword_2812C5B10)
  {
    type metadata accessor for MKMapRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5B10);
  }

  return result;
}

unint64_t sub_220EDD164(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = v4 + OBJC_IVAR____TtC11WeatherMaps27WindParticleOverlayRenderer_particleRenderer;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 8))(v15, v10, v11);
  *(v4 + OBJC_IVAR____TtC11WeatherMaps27WindParticleOverlayRenderer_device) = *(*__swift_project_boxed_opaque_existential_1(v15, v15[3]) + 16);
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_0(v15);
  result = sub_220EC02F4();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(result >> 43))
  {
    *(v4 + OBJC_IVAR____TtC11WeatherMaps27WindParticleOverlayRenderer_tileCostBytes) = result << 20;
    sub_220E1E30C(a1, v15);
    sub_220E1E30C(a2, v14);
    v13 = sub_220F5AA64(v15, v14, a3, a4);
    __swift_destroy_boxed_opaque_existential_0(a2);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v13;
  }

  __break(1u);
  return result;
}

BOOL sub_220EDD2B4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = (v4 + OBJC_IVAR____TtC11WeatherMaps27WindParticleOverlayRenderer_particleRenderer);
  swift_beginAccess();
  v7 = v6[3];
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(v6, v7);
    return sub_220F2B190(a1);
  }

  else
  {
    return 0;
  }
}

void sub_220EDD358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, uint64_t a7, uint64_t a8, void *a9)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70, &qword_220FCBAB0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v30 - v15;
  v17 = (v9 + OBJC_IVAR____TtC11WeatherMaps27WindParticleOverlayRenderer_particleRenderer);
  swift_beginAccess();
  v18 = v17[3];
  if (v18 && (__swift_project_boxed_opaque_existential_1(v17, v18), OUTLINED_FUNCTION_2_29(), (v19 = sub_220F2ACD8()) != 0))
  {
    sub_220EDD5D0(a9, v19, a5, a6 & 1);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27CF9C000 != -1)
    {
      OUTLINED_FUNCTION_0_39(&qword_27CF9C000);
    }

    v20 = __swift_project_value_buffer(v12, qword_27CF9CBE0);
    sub_220E335D0(v20, v16);
    v21 = sub_220FC17A0();
    if (__swift_getEnumTagSinglePayload(v16, 1, v21) == 1)
    {
      sub_220EDDB38(v16, &qword_27CF9CF70, &qword_220FCBAB0);
    }

    else
    {
      v22 = sub_220FC1780();
      v23 = sub_220FC2E30();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30 = v25;
        *v24 = 136315138;
        OUTLINED_FUNCTION_2_29();
        v26 = sub_220EEBA60();
        v28 = sub_220E20FF8(v26, v27, &v30);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_220E15000, v22, v23, "[WindParticle] Could not get texture at %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        OUTLINED_FUNCTION_15();
        OUTLINED_FUNCTION_15();
      }

      OUTLINED_FUNCTION_12();
      (*(v29 + 8))(v16, v21);
    }
  }
}

void sub_220EDD5D0(void *a1, uint64_t a2, void *a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70, &qword_220FCBAB0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v37[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v37[-1] - v15;
  v17 = a1[6];
  v18 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v17);
  (*(v18 + 8))(v37, v17, v18);
  v19 = __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  v20 = sub_220F744CC(*v19, a3, a4 & 1);
  __swift_destroy_boxed_opaque_existential_0(v37);
  if (v20)
  {
    if (a1[2])
    {
      v21 = [swift_unknownObjectRetain() blitCommandEncoder];
      if (v21)
      {
        v22 = v21;
        [v21 copyFromTexture:a2 toTexture:v20];
        [v22 endEncoding];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    if (qword_27CF9C000 != -1)
    {
      OUTLINED_FUNCTION_0_39(&qword_27CF9C000);
    }

    v30 = __swift_project_value_buffer(v8, qword_27CF9CBE0);
    sub_220E335D0(v30, v16);
    v31 = sub_220FC17A0();
    if (__swift_getEnumTagSinglePayload(v16, 1, v31) == 1)
    {
      swift_unknownObjectRelease();
      v25 = v16;
      goto LABEL_17;
    }

    v32 = sub_220FC1780();
    v33 = sub_220FC2E30();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_220E15000, v32, v33, "[WindParticle] could not create copy encoder", v34, 2u);
      OUTLINED_FUNCTION_15();
    }

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_12();
    (*(v35 + 8))(v16, v31);
  }

  else
  {
    if (qword_27CF9C000 != -1)
    {
      OUTLINED_FUNCTION_0_39(&qword_27CF9C000);
    }

    v23 = __swift_project_value_buffer(v8, qword_27CF9CBE0);
    sub_220E335D0(v23, v12);
    v24 = sub_220FC17A0();
    if (__swift_getEnumTagSinglePayload(v12, 1, v24) == 1)
    {
      v25 = v12;
LABEL_17:
      sub_220EDDB38(v25, &qword_27CF9CF70, &qword_220FCBAB0);
      return;
    }

    v26 = sub_220FC1780();
    v27 = sub_220FC2E30();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_220E15000, v26, v27, "[WindParticle] could not create output texture", v28, 2u);
      OUTLINED_FUNCTION_15();
    }

    OUTLINED_FUNCTION_12();
    (*(v29 + 8))(v12, v24);
  }
}

char *sub_220EDD9DC()
{
  v0 = sub_220F5ADAC();
  swift_unknownObjectRelease();
  sub_220EDDB38(&v0[OBJC_IVAR____TtC11WeatherMaps27WindParticleOverlayRenderer_particleRenderer], &qword_27CF9E728, &unk_220FD1220);
  return v0;
}

uint64_t sub_220EDDA34()
{
  v0 = sub_220EDD9DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for WindParticleOverlayRenderer(uint64_t a1)
{
  result = qword_27CF9E710;
  if (!qword_27CF9E710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220EDDB38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_12();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_220EDDB94()
{

  sub_220FC13E0();

  return v1;
}

uint64_t sub_220EDDBD8()
{

  sub_220FC13E0();

  return v1;
}

double sub_220EDDC1C()
{
  OUTLINED_FUNCTION_1_36();
  sub_220FC13F0();

  return result;
}

double sub_220EDDC58()
{
  OUTLINED_FUNCTION_1_36();
  sub_220FC13F0();

  return result;
}

void *sub_220EDDC94()
{

  return v0;
}

uint64_t sub_220EDDCCC()
{
  sub_220EDDC94();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void sub_220EDDD00()
{
  v1 = v0;
  sub_220FC11C0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70, &qword_220FCBAB0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5, v6);
  v8 = v52 - v7;
  if (qword_27CF9C018 != -1)
  {
    OUTLINED_FUNCTION_0_41(&qword_27CF9C018);
  }

  v9 = __swift_project_value_buffer(v4, qword_27CF9CC28);
  sub_220ED6038(v9, v8, &qword_27CF9CF70, &qword_220FCBAB0);
  v10 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    sub_220E3B2DC(v8, &qword_27CF9CF70, &qword_220FCBAB0);
  }

  else
  {
    v11 = sub_220FC1780();
    v12 = sub_220FC2E30();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_20_0();
      *v13 = 0;
      _os_log_impl(&dword_220E15000, v11, v12, "[Wind] Setting up wind...", v13, 2u);
      OUTLINED_FUNCTION_15();
    }

    (*(*(v10 - 8) + 8))(v8, v10);
  }

  if (DeviceIsVerySlow())
  {
    sub_220E9B9B0(v64);
  }

  else
  {
    sub_220E9B9BC(v64);
  }

  v14 = v65;
  v15 = v1 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_configuration;
  v16 = v64[1];
  *v15 = v64[0];
  *(v15 + 16) = v16;
  *(v15 + 32) = v64[2];
  *(v15 + 48) = v14;

  v17 = *(v15 + 24);
  if (v17)
  {
    v52[2] = v10;
    v18 = *(v15 + 48);
    v20 = *(v15 + 32);
    v19 = *(v15 + 40);
    v22 = *(v15 + 8);
    v21 = *(v15 + 16);
    v56[0] = *v15;
    v56[1] = v22;
    v56[2] = v21;
    v56[3] = v17;
    v56[4] = v20;
    v57 = v19 & 0x101;
    v58 = BYTE2(v19) & 1;
    v59 = BYTE3(v19) & 1;
    v60 = *(&v19 + 1);
    v61 = v18;
    v62[0] = v56[0];
    v62[1] = v22;
    v62[2] = v21;
    v62[3] = v17;
    v62[4] = v20;
    v62[5] = v19;
    v63 = v18;
    v23 = *(v1 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_renderSettings + 9);
    v66[0] = v56[0];
    v66[1] = v22;
    v66[2] = v21;
    v66[3] = v17;
    v66[4] = v20;
    type metadata accessor for WindParticleSimulator(0);
    swift_allocObject();
    sub_220EDFC44(v62, v55);
    sub_220EDFC44(v56, v55);
    v53 = v23;
    v24 = sub_220ED6DC0(v66, v23);
    *(v1 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleSimulator) = v24;

    *(v24 + 72) = &off_283482568;
    swift_unknownObjectWeakAssign();
    v55[0] = MEMORY[0x277D84F90];
    sub_220E1DDB4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E760, &qword_220FDA320);
    sub_220E453D4(&qword_2812C5D98, &qword_27CF9E760, &qword_220FDA320, MEMORY[0x277D83970]);
    sub_220FC3430();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E768, &qword_220FD1230);
    swift_allocObject();
    sub_220FC1360();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E770, &qword_220FD1238);
    swift_allocObject();
    v25 = sub_220FC24D0();
    v26 = sub_220E453D4(&qword_27CF9E778, &qword_27CF9E770, &qword_220FD1238, MEMORY[0x277D7B430]);
    v27 = (v1 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_playbackCoordinator);
    *v27 = v25;
    v27[1] = v26;
    swift_unknownObjectRelease();
    if (*(v1 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay))
    {
      type metadata accessor for MapKitDynamicTileOverlay(0);
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v29 = *(v28 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_overlayRenderer + 8);
        ObjectType = swift_getObjectType();
        v31 = *(v29 + 40);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();

        v31(v32, &off_283482580, ObjectType, v29);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    if (*(v1 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_effectTileOverlay) && (type metadata accessor for MapKitDynamicTileOverlay(0), (v33 = swift_dynamicCastClass()) != 0) && (v34 = *(v33 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_overlayRenderer), object_getClass(v34) == _TtC11WeatherMaps27WindParticleOverlayRenderer) && v34)
    {
      v35 = v57;
      v36 = HIBYTE(v57);
      v37 = v58;
      v38 = v59;
      v39 = v60;
      sub_220E1E2A8(v34 + 16, v54);
      v52[0] = type metadata accessor for MetalTiledParticleRenderer();
      v52[1] = swift_allocObject();
      if (v36)
      {
        v40 = 256;
      }

      else
      {
        v40 = 0;
      }

      v41 = v40 | v35;
      if (v37)
      {
        v42 = 0x10000;
      }

      else
      {
        v42 = 0;
      }

      if (v38)
      {
        v43 = 0x1000000;
      }

      else
      {
        v43 = 0;
      }

      v44 = v42 | v43;

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_220F28488(v24, v41 | v44, v54, 512, v39);
      v49 = v48;

      v55[3] = v52[0];
      v55[4] = &off_283484A58;
      swift_unknownObjectRelease();
      v55[0] = v49;
      v50 = OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleRenderer;
      swift_beginAccess();
      sub_220EDFBD4(v55, v1 + v50);
      swift_endAccess();
      sub_220ED6038(v1 + v50, v55, &qword_27CF9E728, &unk_220FD1220);
      v51 = OBJC_IVAR____TtC11WeatherMaps27WindParticleOverlayRenderer_particleRenderer;
      swift_beginAccess();
      sub_220EDFBD4(v55, v34 + v51);
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    else
    {
    }

    if (v53)
    {
      sub_220ED6C54();
    }
  }

  else
  {
    if (qword_2812C5EC8 != -1)
    {
      OUTLINED_FUNCTION_16(&qword_2812C5EC8);
    }

    __swift_project_value_buffer(v10, qword_2812C5ED0);
    v45 = sub_220FC1780();
    v46 = sub_220FC2E30();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_20_0();
      *v47 = 0;
      _os_log_impl(&dword_220E15000, v45, v46, "[Wind] Could not setup configuration!", v47, 2u);
      OUTLINED_FUNCTION_15();
    }
  }
}

void sub_220EDE544(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v11 = v10;
  v53 = a9;
  v54 = a8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70, &qword_220FCBAB0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v46 - v22;
  v47 = a10;
  v51 = a1;
  v52 = a2;
  v48 = a5;
  v49 = a6;
  v50 = a7;
  sub_220F1208C(a1, a2, a3, a4, a5, a6, a7, v54, a9, a10);
  if (qword_27CF9C018 != -1)
  {
    OUTLINED_FUNCTION_0_41(&qword_27CF9C018);
  }

  v24 = __swift_project_value_buffer(v19, qword_27CF9CC28);
  sub_220ED6038(v24, v23, &qword_27CF9CF70, &qword_220FCBAB0);
  v25 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v23, 1, v25) == 1)
  {
    sub_220E3B2DC(v23, &qword_27CF9CF70, &qword_220FCBAB0);
  }

  else
  {
    v26 = sub_220FC1780();
    v27 = sub_220FC2E30();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v59 = v29;
      *v28 = 136315138;
      v55 = v51;
      v56 = v52;
      v57 = a3;
      v58 = a4;
      type metadata accessor for CGRect(0);
      v30 = sub_220FC2750();
      v32 = sub_220E20FF8(v30, v31, &v59);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_220E15000, v26, v27, "[Wind] Map region did change, frame=%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_15();
    }

    (*(*(v25 - 8) + 8))(v23, v25);
  }

  v33 = OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleSimulator;
  if (*(v11 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleSimulator))
  {
    *&v34 = v47 / a9 * v47;

    sub_220ED7B2C(v35, v51, v52, a3, a4, v48, v49, v50, v54, v36, v37, v38, v39, v40, v41, v42, v34);

    v43 = *(v11 + v33);
    if (v43)
    {
      if (*(v43 + 56) == 1)
      {
        v44 = (v11 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_viewportSize);
        if (*(v11 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_viewportSize) != a3 || *(v11 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_viewportSize + 8) != a4)
        {
          *v44 = a3;
          v44[1] = a4;

          sub_220EDF040(a3, a4);
        }
      }
    }
  }
}

void sub_220EDE89C(uint64_t a1, double a2)
{
  v4 = &v2[OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_animationPosition];
  if (*&v2[OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_animationPosition] != a1 || *&v2[OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_animationPosition + 8] != a2)
  {
    *v4 = a1;
    v4[1] = a2;
    v7 = sub_220E835CC(&OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer____lazy_storage___dynamicTileWeatherOverlayRenderer, &OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay, 1);
    if (v7)
    {
      OUTLINED_FUNCTION_4_25(v7);
    }

    v8 = sub_220E835CC(&OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer____lazy_storage___dynamicTileEffectOverlayRenderer, &OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_effectTileOverlay, 0);
    if (v8)
    {
      OUTLINED_FUNCTION_4_25(v8);
    }

    if (*&v2[OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleSimulator])
    {

      sub_220ED7BD0(a1, a2);
    }
  }
}

double sub_220EDE9A0(uint64_t a1, uint64_t a2)
{
  result = sub_220F12298(a1, a2);
  if (*(v2 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleSimulator))
  {

    sub_220ED7AD0(a1);
  }

  return result;
}

uint64_t sub_220EDEA18()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70, &qword_220FCBAB0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3, v4);
  v6 = v17 - v5 + 16;
  if (qword_27CF9C018 != -1)
  {
    OUTLINED_FUNCTION_0_41(&qword_27CF9C018);
  }

  v7 = __swift_project_value_buffer(v2, qword_27CF9CC28);
  sub_220ED6038(v7, v6, &qword_27CF9CF70, &qword_220FCBAB0);
  v8 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    sub_220E3B2DC(v6, &qword_27CF9CF70, &qword_220FCBAB0);
  }

  else
  {
    v9 = sub_220FC1780();
    v10 = sub_220FC2E30();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_20_0();
      *v11 = 0;
      _os_log_impl(&dword_220E15000, v9, v10, "[Wind] Tearing down wind...", v11, 2u);
      OUTLINED_FUNCTION_15();
    }

    (*(*(v8 - 8) + 8))(v6, v8);
  }

  v12 = OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleSimulator;
  v13 = *(v1 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleSimulator);
  if (v13 && *(v13 + 104) == 1)
  {

    sub_220ED7FE8();
  }

  *(v1 + v12) = 0;

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v14 = OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleRenderer;
  swift_beginAccess();
  sub_220EDFBD4(v17, v1 + v14);
  return swift_endAccess();
}

char *sub_220EDEC3C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay);
  if (v3)
  {
    v4 = v3 == a1;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (result = sub_220E835CC(&OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer____lazy_storage___dynamicTileWeatherOverlayRenderer, &OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay, 1)) == 0)
  {
    v6 = *(v1 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_effectTileOverlay);
    if (v6)
    {
      v7 = v6 == a1;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      return sub_220E835CC(&OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer____lazy_storage___dynamicTileEffectOverlayRenderer, &OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_effectTileOverlay, 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_220EDECD0()
{
  v0 = sub_220E835CC(&OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer____lazy_storage___dynamicTileWeatherOverlayRenderer, &OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay, 1);
  if (v0)
  {
    v1 = v0;
    v0[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_isPlaying] = 1;
    sub_220EB34BC();
  }

  v2 = sub_220E835CC(&OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer____lazy_storage___dynamicTileEffectOverlayRenderer, &OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_effectTileOverlay, 0);
  if (v2)
  {
    v2[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_isPlaying] = 1;
    v3 = v2;
    sub_220EB34BC();
  }
}

uint64_t sub_220EDEDBC()
{
  swift_allocObject();
  swift_weakInit();

  sub_220FC15D0();

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_220EDEEA4;

  return sub_220F12414();
}

uint64_t sub_220EDEEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *v8;

  v10 = *(v12 + 8);

  return v10(a1);
}

double sub_220EDEFA0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_220EDDD00();
  }

  return result;
}

double sub_220EDEFF8(void (*a1)(uint64_t), uint64_t a2)
{
  sub_220EDEA18();

  return sub_220F12524(a1);
}

void sub_220EDF040(double a1, double a2)
{
  if (!*(v2 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_configuration + 24))
  {
    return;
  }

  v3 = *(v2 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_configuration + 48);

  if (sub_220FC3140())
  {

    return;
  }

  v4 = *(v2 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_viewportSize);
  v5 = *(v2 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_viewportSize + 8);

  v6 = v4 + v5;
  v7 = v3 * (v6 * 5.0);
  if ((LODWORD(v7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v7 <= -9.2234e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7 >= 9.2234e18)
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (*(v2 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleSimulator))
  {
    v8 = v7;

    sub_220ED6B4C(v8);
  }
}

double sub_220EDF180()
{
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_playbackCoordinator))
  {
    swift_getObjectType();
    swift_allocObject();
    swift_weakInit();
    swift_unknownObjectRetain();

    sub_220FC24F0();

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_220EDF264(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = sub_220E835CC(&OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer____lazy_storage___dynamicTileWeatherOverlayRenderer, &OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay, 1);

    if (v1)
    {
      v1[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_isPlaying] = 0;
      sub_220EB34BC();
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = sub_220E835CC(&OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer____lazy_storage___dynamicTileEffectOverlayRenderer, &OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_effectTileOverlay, 0);

    if (v2)
    {
      v2[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_isPlaying] = 0;
      sub_220EB34BC();
    }
  }
}

double sub_220EDF35C()
{
  v1 = v0;
  v2 = sub_220E835CC(&OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer____lazy_storage___dynamicTileWeatherOverlayRenderer, &OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay, 1);
  if (v2)
  {
    v3 = v2;
    v2[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_isPlaying] = 1;
    sub_220EB34BC();
  }

  v4 = sub_220E835CC(&OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer____lazy_storage___dynamicTileEffectOverlayRenderer, &OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_effectTileOverlay, 0);
  if (v4)
  {
    v6 = v4;
    v4[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_isPlaying] = 1;
    sub_220EB34BC();
  }

  if (*(v1 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_playbackCoordinator))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_220FC24E0();

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220EDF458()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleSimulator);
  if (v1)
  {
    result = swift_beginAccess();
    *(v1 + 192) = 1;
  }

  return result;
}

void sub_220EDF4A8(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, char *a5)
{
  v10 = (v5 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleRenderer);
  swift_beginAccess();
  v11 = v10[3];
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1(v10, v11);
    sub_220F29090(a2, a3, a4, a5);
  }
}

void sub_220EDF534(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v2 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleRenderer);

  swift_beginAccess();
  v9 = 0;
  while (v7)
  {
    v10 = v7;
LABEL_10:
    v7 = (v10 - 1) & v10;
    v12 = v8[3];
    if (v12)
    {
      v13 = *(*(a2 + 48) + ((v9 << 11) | (32 * __clz(__rbit64(v10)))));
      __swift_project_boxed_opaque_existential_1(v8, v12);
      sub_220F2AF28(v13);
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v5 + 63) >> 6))
    {

      return;
    }

    v10 = *(v4 + 8 * v11);
    ++v9;
    if (v10)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_220EDF670(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E780, &unk_220FD1240);
  v4 = sub_220FC29E0();
  *(v4 + 16) = 1024;
  bzero((v4 + 32), 0x800uLL);
  MTLRegionMake2D_1(&v32);
  v5 = v32;
  v6 = v33;
  v7 = v34;
  if (qword_27CF9C0D0 != -1)
  {
    v29 = v33;
    v30 = v32;
    v28 = v34;
    swift_once();
    v7 = v28;
    v6 = v29;
    v5 = v30;
  }

  v32 = v5;
  v33 = v6;
  v34 = v7;
  [a2 getBytes:v4 + 32 bytesPerRow:64 fromRegion:&v32 mipmapLevel:{qword_27CFAF530, v28, v29, v30}];
  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = (v4 + 33);
    v10 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    do
    {
      v12 = *(v9 - 1);
      v13 = *v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F37778();
        v10 = v18;
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        OUTLINED_FUNCTION_5_19(v14);
        sub_220F37778();
        v10 = v19;
      }

      *(v10 + 16) = v15 + 1;
      *(v10 + 4 * v15 + 32) = ((v12 - 128) * -0.0078125) * 70.0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F37778();
        v11 = v20;
      }

      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_5_19(v16);
        sub_220F37778();
        v11 = v21;
      }

      v9 += 2;
      *(v11 + 16) = v17 + 1;
      *(v11 + 4 * v17 + 32) = ((v13 - 128) * -0.0078125) * 70.0;
      --v8;
    }

    while (v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
  }

  v22 = *a1;
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  v25 = *(a1 + 24);
  type metadata accessor for VectorField();
  swift_allocObject();
  sub_220F5A644(32, v10, v11, v22, v23, v24, 32, v25);
  v27 = v26;
  if (*(v31 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleSimulator))
  {

    sub_220ED79B8(a1, v27);
  }
}

uint64_t sub_220EDF92C(uint64_t a1)
{
  if (!*(v1 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleSimulator))
  {
    return 0;
  }

  LOBYTE(a1) = sub_220ED7C88(a1);

  return a1 & 1;
}

void sub_220EDF984()
{
  sub_220E3B2DC(v0 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleRenderer, &qword_27CF9E728, &unk_220FD1220);

  swift_unknownObjectRelease();
  sub_220E83E94(*(v0 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer____lazy_storage___dynamicTileWeatherOverlayRenderer));
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer____lazy_storage___dynamicTileEffectOverlayRenderer);

  sub_220E83E94(v1);
}

uint64_t sub_220EDFA18()
{
  v0 = sub_220F11AA0();
  sub_220E3B2DC(v0 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleRenderer, &qword_27CF9E728, &unk_220FD1220);

  swift_unknownObjectRelease();
  sub_220E83E94(*(v0 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer____lazy_storage___dynamicTileWeatherOverlayRenderer));
  sub_220E83E94(*(v0 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer____lazy_storage___dynamicTileEffectOverlayRenderer));
  return v0;
}

uint64_t sub_220EDFAB4()
{
  v0 = sub_220EDFA18();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for WindWeatherMapOverlayContainer(uint64_t a1)
{
  result = qword_27CF9E750;
  if (!qword_27CF9E750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220EDFBD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E728, &unk_220FD1220);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_220EDFCA0@<D0>(void *a1@<X8>)
{
  *a1 = v1;

  return result;
}

int64x2_t MTLRegionMake2D_1@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = vdupq_n_s64(0x20uLL);
  *(a1 + 24) = result;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_220EDFCE0(uint64_t a1, uint64_t a2)
{
  if (sub_220FC1010())
  {
    v4 = type metadata accessor for LocationPickerViewModel.Row(0);
    memcpy(v7, (a1 + *(v4 + 20)), 0x41uLL);
    memcpy(__dst, (a2 + *(v4 + 20)), 0x41uLL);
    v5 = sub_220EDFD68(v7, __dst);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_220EDFD68(double *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = a1[5];
  v10 = *(a1 + 6);
  v11 = *(a1 + 7);
  switch(*(a1 + 64))
  {
    case 1:
      if (*(a2 + 64) != 1)
      {
        return 0;
      }

      v15 = *a2;
      v12 = a2[1];
      v13 = a2[2];
      v14 = a2[3];
      goto LABEL_26;
    case 2:
      if (*(a2 + 64) != 2)
      {
        return 0;
      }

      if (v4 == *a2 && v5 == a2[1])
      {
        return 1;
      }

      return sub_220FC3940();
    case 3:
      if (*(a2 + 64) != 3)
      {
        return 0;
      }

      v19 = a2[2];
      v18 = a2[3];
      v20 = a2[4];
      v21 = *(a2 + 5);
      v23 = a2[6];
      v22 = a2[7];
      v24 = v4 == *a2 && v5 == a2[1];
      if (!v24 && (sub_220FC3940() & 1) == 0)
      {
        return 0;
      }

      if (v6)
      {
        if (!v19)
        {
          return 0;
        }

        v25 = sub_220FC2230();

        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v19)
      {
        return 0;
      }

      if (v7 == v18 && v8 == v20)
      {
        if (v9 != v21)
        {
          return 0;
        }
      }

      else
      {
        v28 = sub_220FC3940();
        result = 0;
        if ((v28 & 1) == 0 || v9 != v21)
        {
          return result;
        }
      }

      if (!v11)
      {
        return !v22;
      }

      if (!v22)
      {
        return 0;
      }

      if (v10 == v23 && v11 == v22)
      {
        return 1;
      }

      return (sub_220FC3940() & 1) != 0;
    default:
      if (*(a2 + 64))
      {
        return 0;
      }

      v12 = a2[1];
      v13 = a2[2];
      v14 = a2[3];
      if (v5)
      {
        if (!v12)
        {
          return 0;
        }

        v15 = *a2;
LABEL_26:
        v26 = v4 == v15 && v5 == v12;
        if (!v26 && (sub_220FC3940() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v12)
      {
        return 0;
      }

      if (!v7)
      {
        return !v14;
      }

      if (!v14)
      {
        return 0;
      }

      if (v6 == v13 && v7 == v14)
      {
        return 1;
      }

      return (sub_220FC3940() & 1) != 0;
  }
}

uint64_t sub_220EDFFB0(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *(a1 + 24);
  v5 = *(a1 + 25);
  v6 = *a2;
  v7 = a2[2];
  v8 = *(a2 + 24);
  v9 = *(a2 + 25);
  switch(v2)
  {
    case 5:
      if (v6 != 5)
      {
        return 0;
      }

      break;
    case 4:
      if (v6 != 4)
      {
        return 0;
      }

      break;
    case 3:
      if (v6 != 3)
      {
        return 0;
      }

      break;
    default:
      if (v2 != v6 || (v6 - 6) >= 0xFFFFFFFD)
      {
        return 0;
      }

      break;
  }

  sub_220F34EF8();
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v7)
    {
      v13 = v8;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  return v5 ^ v9 ^ 1u;
}

uint64_t sub_220EE0088@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_220EDFCDC(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_220EE00B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90, &qword_220FC8F20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC9EF0;
  *(inited + 32) = 0x4B79616C7265766FLL;
  *(inited + 40) = 0xEB00000000646E69;
  *(inited + 48) = v3;
  *(inited + 72) = &type metadata for WeatherMapOverlayKind;
  *(inited + 80) = 1937207154;
  *(inited + 88) = 0xE400000000000000;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E7A0, &qword_220FD13A0);
  *(inited + 96) = v4;
  *(inited + 120) = v7;
  *(inited + 128) = 0x6F50726941657375;
  *(inited + 136) = 0xEF6E6F6974756C6CLL;
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = v5;

  OUTLINED_FUNCTION_0_42();
  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E7A8, &qword_220FD13A8);
  a1[4] = sub_220E5D7E8(&qword_27CF9E7B0, &qword_27CF9E7A8, &qword_220FD13A8);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_220FC12A0();
}

uint64_t sub_220EE0254(uint64_t a1)
{
  sub_220EE0A1C();

  return sub_220FC1290();
}

uint64_t sub_220EE0290@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90, &qword_220FC8F20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E10;
  *(inited + 32) = 0x6E6F697461636F6CLL;
  *(inited + 40) = 0xE800000000000000;
  v5 = sub_220FC1070();
  *(inited + 72) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v2, v5);
  *(inited + 80) = 0x746E65746E6F63;
  *(inited + 88) = 0xE700000000000000;
  v7 = type metadata accessor for LocationPickerViewModel.Row(0);
  memcpy(__dst, (v2 + *(v7 + 20)), 0x41uLL);
  *(inited + 120) = &type metadata for LocationPickerViewModel.RowContent;
  v8 = swift_allocObject();
  *(inited + 96) = v8;
  memcpy((v8 + 16), __dst, 0x41uLL);
  sub_220EE0B18(__dst, &v10);
  OUTLINED_FUNCTION_0_42();
  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E7C0, &qword_220FD13B0);
  a1[4] = sub_220E5D7E8(&qword_27CF9E7C8, &qword_27CF9E7C0, &qword_220FD13B0);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_220FC12A0();
}

uint64_t sub_220EE0454(uint64_t a1)
{
  sub_220EE0B50(&qword_27CF9E7D0, &unk_220FD12D0);

  return sub_220FC1290();
}

uint64_t sub_220EE04AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E7D8, &qword_220FD13B8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22 - v7;
  v9 = *v1;
  switch(*(v1 + 64))
  {
    case 1:
      v15 = *(v1 + 24);
      v22 = *(v1 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90, &qword_220FC8F20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_220FC8E10;
      *(inited + 32) = 0x7470697263736564;
      *(inited + 40) = 0xEB000000006E6F69;
      v17 = MEMORY[0x277D837D0];
      *(inited + 48) = v9;
      *(inited + 56) = v3;
      *(inited + 72) = v17;
      *(inited + 80) = 0x726F6C6F63;
      *(inited + 120) = v17;
      v18 = 7104878;
      if (v15)
      {
        v18 = v22;
      }

      v19 = 0xE300000000000000;
      if (v15)
      {
        v19 = v15;
      }

      *(inited + 88) = 0xE500000000000000;
      *(inited + 96) = v18;
      *(inited + 104) = v19;

      OUTLINED_FUNCTION_0_42();
      sub_220FC2600();
      break;
    case 2:
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90, &qword_220FC8F20);
      v13 = swift_initStackObject();
      v14 = OUTLINED_FUNCTION_1_37(v13, xmmword_220FC8E30);
      v14[4].n128_u64[1] = MEMORY[0x277D837D0];
      v14[3].n128_u64[0] = v9;
      v14[3].n128_u64[1] = v3;

      OUTLINED_FUNCTION_0_42();
      sub_220FC2600();
      break;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90, &qword_220FC8F20);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_220FC8E30;
      *(v10 + 32) = 0xD000000000000011;
      *(v10 + 40) = 0x8000000220FE0FF0;
      *(v10 + 72) = MEMORY[0x277D837D0];
      v11 = 7104878;
      if (v3)
      {
        v11 = v9;
      }

      v12 = 0xE300000000000000;
      if (v3)
      {
        v12 = v3;
      }

      *(v10 + 48) = v11;
      *(v10 + 56) = v12;

      OUTLINED_FUNCTION_0_42();
      sub_220FC2600();
      break;
  }

  sub_220FC12A0();
  a1[3] = v4;
  a1[4] = sub_220E5D7E8(&qword_27CF9E7E0, &qword_27CF9E7D8, &qword_220FD13B8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(v5 + 32))(boxed_opaque_existential_1, v8, v4);
}

uint64_t sub_220EE08B0(uint64_t a1)
{
  sub_220EE0B94();

  return sub_220FC1290();
}

unint64_t sub_220EE08F0()
{
  result = qword_27CF9E788;
  if (!qword_27CF9E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E788);
  }

  return result;
}

uint64_t type metadata accessor for LocationPickerViewModel.Row(uint64_t a1)
{
  result = qword_27CF9E7F0;
  if (!qword_27CF9E7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_220EE09C8()
{
  result = qword_27CF9E798;
  if (!qword_27CF9E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E798);
  }

  return result;
}

unint64_t sub_220EE0A1C()
{
  result = qword_27CF9E7B8;
  if (!qword_27CF9E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E7B8);
  }

  return result;
}

double sub_220EE0A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  switch(a9)
  {
    case 0:
    case 1:

      goto LABEL_4;
    case 2:
      goto LABEL_4;
    case 3:

LABEL_4:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220EE0B50(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocationPickerViewModel.Row(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_220EE0B94()
{
  result = qword_27CF9E7E8;
  if (!qword_27CF9E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E7E8);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_220EE0BFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_220EE0C3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220EE0CB8(uint64_t a1)
{
  result = sub_220FC1070();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220EE0D38(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 65))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220EE0D78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_220EE0E10()
{
  OUTLINED_FUNCTION_19();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E818, &qword_220FD1780);
  *v1 = v0;
  v1[1] = sub_220EE0EF4;

  return MEMORY[0x282200830](v0 + 16);
}

uint64_t sub_220EE0EF4()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *(v4 + 40) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_220EE1068()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 40));
  sub_220EE2DCC((v1 + 16));

  os_unfair_lock_unlock((v1 + 40));
}

void sub_220EE10C0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 10);
  v2 = OUTLINED_FUNCTION_7_13();
  sub_220EE37AC(v2);
  os_unfair_lock_unlock(v1 + 10);
}

void sub_220EE1110()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 10);
  v2 = OUTLINED_FUNCTION_7_13();
  sub_220EE3540(v2);
  os_unfair_lock_unlock(v1 + 10);
}

void sub_220EE1160()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 10);
  v2 = OUTLINED_FUNCTION_7_13();
  sub_220EE3A00(v2);
  os_unfair_lock_unlock(v1 + 10);
}