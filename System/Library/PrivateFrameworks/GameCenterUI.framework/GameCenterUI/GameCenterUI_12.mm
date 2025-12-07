uint64_t sub_24E08F178(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 56) = a4;
  v6 = sub_24E347638();
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();
  sub_24E348068();
  *(v5 + 48) = sub_24E348058();
  v8 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E08F270, v8, v7);
}

uint64_t sub_24E08F270()
{

  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  sub_24E08A7A4();
  sub_24E32EAD0(2, v2, 8, 0, v1);
  v3 = OUTLINED_FUNCTION_27_1();
  v4(v3);

  OUTLINED_FUNCTION_12_5();

  return v5();
}

uint64_t sub_24E08F3A8()
{
  type metadata accessor for DashboardOverlayPresenter();
  swift_allocObject();
  result = sub_24E08F3E4();
  qword_27F20AD30 = result;
  return result;
}

uint64_t sub_24E08F3E4()
{
  v1 = v0;
  v2 = sub_24E343D48();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 104))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D0C2F0], v3);
  v6 = objc_allocWithZone(sub_24E343E48());
  v7 = sub_24E343D98();
  *(v0 + 16) = v7;
  v8 = v7;

  sub_24E343DF8();

  swift_weakInit();
  sub_24E343D58();
  swift_weakDestroy();
  return v1;
}

uint64_t sub_24E08F514()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  sub_24E348068();
  v4 = sub_24E348058();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  sub_24DFC8700(0, 0, v2, &unk_24E373558, v5);
}

uint64_t sub_24E08F5FC()
{
  sub_24E348068();
  *(v0 + 16) = sub_24E348058();
  v2 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E090484, v2, v1);
}

uint64_t sub_24E08F690()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v1);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_31_7();
  v3 = sub_24E348098();
  OUTLINED_FUNCTION_29_10(v0, v4, v5, v3);
  v6 = sub_24E348058();
  OUTLINED_FUNCTION_16_4();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  OUTLINED_FUNCTION_35_7(v7, v9, v10, v11, v7);
}

uint64_t sub_24E08F740()
{
  sub_24E348068();
  *(v0 + 16) = sub_24E348058();
  v2 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E08F7D4, v2, v1);
}

uint64_t sub_24E08F7D4()
{
  OUTLINED_FUNCTION_9_7();

  v0 = [objc_opt_self() shared];
  [v0 setIsPresentingGameCenter_];

  OUTLINED_FUNCTION_12_5();

  return v1();
}

uint64_t sub_24E08F920(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;

  sub_24E08F9A8();
}

uint64_t sub_24E08F9A8()
{
  OUTLINED_FUNCTION_32_9();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_20();
  v6 = sub_24E348098();
  OUTLINED_FUNCTION_29_10(v1, v7, v8, v6);
  v9 = v3;
  v10 = sub_24E348058();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_24DFC8700(0, 0, v1, v0, v11);
}

uint64_t sub_24E08FAA4()
{
  v1 = OUTLINED_FUNCTION_3_35();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_24E08FAF8(uint64_t a1)
{
  v2 = type metadata accessor for AccessPoint.Model(0);
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v6 = v5 - v4;
  sub_24E09040C(a1, v5 - v4);
  return sub_24E299630(v6);
}

id sub_24E08FB88(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

uint64_t sub_24E08FBA8(uint64_t a1)
{
  v2 = type metadata accessor for AccessPoint.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24E08FC04(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_24E08FC30()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_50(v1);

  return sub_24E08D440();
}

uint64_t sub_24E08FCC0()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_50(v1);

  return sub_24E08D94C();
}

void sub_24E08FD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_24E347CB8();

  v7 = sub_24E347CB8();

  [a5 reportEvent:v6 type:v7];
}

uint64_t sub_24E08FDF4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_4(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_3_50(v5);

  return sub_24E08F178(v7, v8, v1, v3, v2);
}

uint64_t sub_24E08FEC8()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_10_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_50(v1);
  OUTLINED_FUNCTION_22_14();

  return sub_24E068E00(v3, v4, v5, v6);
}

uint64_t sub_24E08FF58()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_10_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_50(v1);
  OUTLINED_FUNCTION_22_14();

  return sub_24E068B00(v3, v4, v5, v6);
}

uint64_t sub_24E08FFE8()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_10_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_50(v1);
  OUTLINED_FUNCTION_22_14();

  return sub_24E06887C(v3, v4, v5, v6);
}

uint64_t sub_24E090078()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_50(v1);

  return sub_24E08F740();
}

uint64_t sub_24E090108()
{
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_12_5();

  return v0();
}

uint64_t sub_24E0901FC()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_50(v1);

  return sub_24E08F5FC();
}

uint64_t sub_24E09028C()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_10_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_50(v1);
  OUTLINED_FUNCTION_22_14();

  return sub_24E08DEB4(v3, v4, v5, v6);
}

uint64_t objectdestroy_111Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24E09035C()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_10_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_50(v1);
  OUTLINED_FUNCTION_22_14();

  return sub_24E08E3B8(v3, v4, v5, v6);
}

uint64_t sub_24E09040C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessPoint.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_74(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_42(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_20(uint64_t a1)
{

  return sub_24E3487E8();
}

uint64_t OUTLINED_FUNCTION_28_10()
{

  return sub_24E344E58();
}

uint64_t OUTLINED_FUNCTION_29_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);

  return sub_24E348068();
}

uint64_t OUTLINED_FUNCTION_35_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_24DFC8700(0, 0, v6, v5, a5);
}

uint64_t OUTLINED_FUNCTION_36_5(uint64_t a1)
{

  return sub_24E348058();
}

uint64_t OUTLINED_FUNCTION_38_4(uint64_t a1)
{

  return sub_24E348058();
}

uint64_t type metadata accessor for DashboardSidebarCellView(uint64_t a1)
{
  result = qword_27F1E2978;
  if (!qword_27F1E2978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E090714()
{
  v0 = [objc_opt_self() systemWhiteColor];
  v1 = [v0 colorWithAlphaComponent_];

  qword_27F20AD38 = v1;
  qword_27F20AD40 = 0x4034000000000000;
}

double sub_24E090788@<D0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X8>)
{
  v4 = *a1;
  v37 = a1[1];
  v38 = v4;
  v5 = sub_24E343FC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[2].i8[0])
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vdupq_n_s64(v9);
  __asm { FMOV            V2.2D, #16.0 }

  if (qword_27F1DE000 != -1)
  {
    v35 = _Q2;
    v36 = v10;
    swift_once();
    _Q2 = v35;
    v10 = v36;
  }

  v33 = vbslq_s8(v10, _Q2, v37);
  v34 = vbslq_s8(v10, _Q2, v38);
  v16 = sub_24E344158();
  v32 = __swift_project_value_buffer(v16, &unk_27F20BC00);
  v17 = *(v16 - 8);
  v38.i64[0] = *(v17 + 16);
  v36.i64[0] = v17 + 16;
  (v38.i64[0])(v8, v32, v16);
  v37.i32[0] = *MEMORY[0x277D22618];
  v35.i64[0] = v6[13];
  (v35.i64[0])(v8);
  v18 = sub_24E3444F8();
  v19 = MEMORY[0x277D22798];
  a2[3].i64[1] = v18;
  a2[4].i64[0] = v19;
  __swift_allocate_boxed_opaque_existential_1(a2[2].i64);
  v40 = v5;
  v41 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  v21 = v6[2];
  v21(boxed_opaque_existential_1, v8, v5);
  sub_24E344508();
  v22 = v6[1];
  v22(v8, v5);
  v31 = v16;
  (v38.i64[0])(v8, v32, v16);
  (v35.i64[0])(v8, v37.u32[0], v5);
  v32 = v18;
  a2[6].i64[0] = v18;
  a2[6].i64[1] = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&a2[4].i64[1]);
  v40 = v5;
  v41 = MEMORY[0x277D22628];
  v23 = __swift_allocate_boxed_opaque_existential_1(v39);
  v30[1] = v6 + 2;
  v21(v23, v8, v5);
  sub_24E344508();
  v22(v8, v5);
  v24 = MEMORY[0x277D22A30];
  a2[8].i64[1] = MEMORY[0x277D839F8];
  a2[9].i64[0] = v24;
  a2[7].i64[0] = 0x4024000000000000;
  if (qword_27F1DDFF8 != -1)
  {
    swift_once();
  }

  v25 = v31;
  v26 = __swift_project_value_buffer(v31, &unk_27F20BBE8);
  (v38.i64[0])(v8, v26, v25);
  (v35.i64[0])(v8, v37.u32[0], v5);
  a2[11].i64[0] = v32;
  a2[11].i64[1] = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&a2[9].i64[1]);
  v40 = v5;
  v41 = MEMORY[0x277D22628];
  v27 = __swift_allocate_boxed_opaque_existential_1(v39);
  v21(v27, v8, v5);
  sub_24E344508();
  v22(v8, v5);
  v29 = v33;
  result = *v34.i64;
  *a2 = v34;
  a2[1] = v29;
  return result;
}

char *sub_24E090BA0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v57 - v12;
  v14 = &v4[qword_27F1E2940];
  if (qword_27F1DD7C8 != -1)
  {
    OUTLINED_FUNCTION_2_46();
    swift_once();
  }

  v15 = qword_27F20AD38;
  v16 = qword_27F20AD40;
  *v14 = qword_27F20AD38;
  v14[1] = v16;
  v17 = qword_27F1E2948;
  v18 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v19 = v15;
  *&v5[v17] = [v18 init];
  v20 = qword_27F1E2950;
  if (qword_27F1DD7D0 != -1)
  {
    OUTLINED_FUNCTION_1_66();
    swift_once();
  }

  v21 = sub_24E344158();
  __swift_project_value_buffer(v21, qword_27F1E2910);
  v22 = *(*(v21 - 8) + 16);
  v23 = OUTLINED_FUNCTION_6_37();
  v22(v23);
  OUTLINED_FUNCTION_10_1();
  v24 = type metadata accessor for DynamicTypeLabel(0);
  v25 = objc_allocWithZone(v24);
  *&v5[v20] = OUTLINED_FUNCTION_6_24(v13, 0, 1);
  v26 = qword_27F1E2958;
  if (qword_27F1DD7D8 != -1)
  {
    OUTLINED_FUNCTION_0_75();
    swift_once();
  }

  __swift_project_value_buffer(v21, qword_27F1E2928);
  v27 = OUTLINED_FUNCTION_6_37();
  v22(v27);
  OUTLINED_FUNCTION_10_1();
  v28 = objc_allocWithZone(v24);
  *&v5[v26] = OUTLINED_FUNCTION_6_24(v13, 0, 2);
  v29 = qword_27F1E2960;
  type metadata accessor for BackgroundView();
  *&v5[v29] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5[qword_27F1E2968] = 0;
  v5[qword_27F1E2970] = 0;
  v57.receiver = v5;
  v57.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v57, sel_initWithFrame_, a1, a2, a3, a4);
  v31 = OUTLINED_FUNCTION_7_2();
  [v32 v33];
  OUTLINED_FUNCTION_5_26();
  sub_24E09108C();
  v34 = qword_27F1E2950;
  OUTLINED_FUNCTION_5_26();
  v35 = *&v30[v34];
  v36 = qword_27F1DE118;
  v37 = v35;
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for PlayerCardTheme(0);
  v39 = __swift_project_value_buffer(v38, qword_27F20BF00);
  v40 = GKIsRemoteUI();
  v41 = objc_opt_self();
  v42 = &selRef_whiteColor;
  if (!v40)
  {
    v42 = &selRef_labelColor;
  }

  v43 = [v41 *v42];
  v44 = OUTLINED_FUNCTION_6_37();
  [v44 v45];

  v46 = qword_27F1E2958;
  OUTLINED_FUNCTION_5_26();
  v47 = *&v30[v46];
  v48 = objc_opt_self();
  v49 = v47;
  v50 = [v48 secondaryLabelColor];
  [v49 setTextColor_];

  v51 = [*&v30[v46] layer];
  if (*(v39 + *(v38 + 56) + 8))
  {
    sub_24E347CB8();
  }

  v52 = OUTLINED_FUNCTION_6_37();
  [v52 v53];

  swift_unknownObjectRelease();
  v54 = qword_27F1E2948;
  OUTLINED_FUNCTION_5_26();
  [*&v30[v54] setContentMode_];
  [*&v30[v54] setTintColor_];
  [*&v30[v54] setIsAccessibilityElement_];
  v55 = [*&v30[v54] layer];
  [v55 setCompositingFilter_];

  return v30;
}

id sub_24E09108C()
{
  v1 = v0;
  v2 = *(v0 + qword_27F1E2960);
  v3 = v1 + qword_27F1E2940;
  v8 = *(v1 + qword_27F1E2940);
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v4 = v8;
  sub_24DFEB8F4(&v8);
  [v2 _setContinuousCornerRadius_];
  v5 = [v2 layer];
  [v5 setCompositingFilter_];

  v6 = [v2 layer];
  [v6 setMaskedCorners_];

  return sub_24E0914C0();
}

void sub_24E0911AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = (v0 + qword_27F1E2940);
  if (qword_27F1DD7C8 != -1)
  {
    OUTLINED_FUNCTION_2_46();
    swift_once();
  }

  v6 = qword_27F20AD38;
  v7 = qword_27F20AD40;
  *v5 = qword_27F20AD38;
  v5[1] = v7;
  v8 = qword_27F1E2948;
  v9 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v10 = v6;
  *(v1 + v8) = [v9 init];
  v11 = qword_27F1E2950;
  if (qword_27F1DD7D0 != -1)
  {
    OUTLINED_FUNCTION_1_66();
    swift_once();
  }

  v12 = sub_24E344158();
  v13 = __swift_project_value_buffer(v12, qword_27F1E2910);
  v14 = *(*(v12 - 8) + 16);
  v14(v4, v13, v12);
  OUTLINED_FUNCTION_1_22();
  v15 = type metadata accessor for DynamicTypeLabel(0);
  v16 = objc_allocWithZone(v15);
  *(v1 + v11) = OUTLINED_FUNCTION_6_24(v4, 0, 1);
  v17 = qword_27F1E2958;
  if (qword_27F1DD7D8 != -1)
  {
    OUTLINED_FUNCTION_0_75();
    swift_once();
  }

  v18 = __swift_project_value_buffer(v12, qword_27F1E2928);
  v14(v4, v18, v12);
  OUTLINED_FUNCTION_1_22();
  v19 = objc_allocWithZone(v15);
  *(v1 + v17) = OUTLINED_FUNCTION_6_24(v4, 0, 2);
  v20 = qword_27F1E2960;
  type metadata accessor for BackgroundView();
  *(v1 + v20) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + qword_27F1E2968) = 0;
  *(v1 + qword_27F1E2970) = 0;
  sub_24E348AE8();
  __break(1u);
}

id sub_24E0914C0()
{
  if (*(v0 + qword_27F1E2968))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + qword_27F1E2970) ^ 1;
  }

  return [*(v0 + qword_27F1E2960) setHidden_];
}

BOOL sub_24E091504@<W0>(int8x16_t **a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  [v2 layoutMargins];
  v20.i64[0] = v4;
  v20.i64[1] = v5;
  v21 = v6;
  v22 = v7;
  v23 = 0;
  a1[3] = &type metadata for DashboardSidebarCellLayout;
  a1[4] = sub_24E09252C();
  v8 = swift_allocObject();
  *a1 = v8;
  sub_24E090788(&v20, v8 + 1);
  v9 = *&v2[qword_27F1E2948];
  v10 = sub_24DF88A8C(0, &qword_27F1DFF00, 0x277D755E8);
  v11 = MEMORY[0x277D22A38];
  v8[14].i64[1] = v10;
  v8[15].i64[0] = v11;
  v8[13].i64[0] = v9;
  v12 = *&v2[qword_27F1E2950];
  v13 = type metadata accessor for DynamicTypeLabel(0);
  v14 = MEMORY[0x277D22A70];
  v8[17].i64[0] = v13;
  v8[17].i64[1] = v14;
  v8[15].i64[1] = v12;
  v15 = *&v2[qword_27F1E2958];
  v8[19].i64[1] = v13;
  v8[20].i64[0] = v14;
  v8[18].i64[0] = v15;
  v16 = v9;
  v17 = v12;
  v18 = v15;
  result = sub_24E00CF10();
  v8[20].i8[8] = result;
  return result;
}

void sub_24E091628(void *a1, double a2, double a3)
{
  v3 = [a1 traitCollection];
  sub_24E344518();

  OUTLINED_FUNCTION_7_2();
}

double sub_24E091698(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_24E091628(a5, a2, a3);
  v11 = v10;
  swift_unknownObjectRelease();

  return v11;
}

double sub_24E091720(void *a1, void *a2)
{
  v48 = a1;
  sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  v52 = v4;
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_14();
  v51 = v5;
  v6 = sub_24E344448();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_3_14();
  v49 = v7;
  v8 = sub_24E344388();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v55 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  sub_24E344378();
  v54 = sub_24DF88A8C(0, &qword_27F1DEE28, 0x277D74300);
  if (qword_27F1DD7D0 != -1)
  {
    OUTLINED_FUNCTION_1_66();
    swift_once();
  }

  v22 = sub_24E344158();
  v23 = __swift_project_value_buffer(v22, qword_27F1E2910);
  v24 = [a2 traitCollection];
  v25 = MEMORY[0x25303F0C0](v23, v24);
  v56 = a2;
  v26 = v25;

  sub_24E344368();
  v50 = v10;
  v27 = *(v10 + 1);
  v27(v15, v8);
  sub_24E344358();
  v27(v18, v8);
  sub_24E344378();
  v28 = v21;
  if (qword_27F1DD7D8 != -1)
  {
    OUTLINED_FUNCTION_0_75();
    swift_once();
  }

  v29 = __swift_project_value_buffer(v22, qword_27F1E2928);
  v30 = [v56 traitCollection];
  v31 = MEMORY[0x25303F0C0](v29, v30);

  sub_24E344368();
  v27(v15, v8);
  sub_24E344358();
  v54 = v27;
  v27(v18, v8);
  v46 = v48[5];
  if (v48[17])
  {
    v32 = v48[23];
    v47 = v48[22];
    v48 = v32;
  }

  else
  {
    v48 = 0xEB00000000726564;
    v47 = 0x6C6F686563616C70;
  }

  v33 = v50;
  memset(v62, 0, sizeof(v62));
  v63 = 1;

  sub_24E090788(v62, v57);
  sub_24E344438();
  v58[3] = sub_24E344528();
  v58[4] = MEMORY[0x277D227A8];
  __swift_allocate_boxed_opaque_existential_1(v58);
  sub_24E344538();
  v34 = *(v33 + 2);
  v34(v18, v28, v8);
  sub_24E344558();
  v35 = sub_24E344568();
  v50 = v28;
  v36 = v35;
  v37 = MEMORY[0x277D227B8];
  v59[3] = v35;
  v59[4] = MEMORY[0x277D227B8];
  __swift_allocate_boxed_opaque_existential_1(v59);
  sub_24E344578();
  v38 = v55;
  v34(v18, v55, v8);
  sub_24E344558();
  v60[3] = v36;
  v60[4] = v37;
  __swift_allocate_boxed_opaque_existential_1(v60);
  sub_24E344578();
  v61 = 0;
  v39 = [v56 traitCollection];
  v40 = v51;
  sub_24E250F80(v51);
  v41 = v53;
  sub_24E344A18();
  v43 = v42;

  (*(v52 + 8))(v40, v41);
  sub_24E0924D8(v57);
  v44 = v54;
  v54(v38, v8);
  v44(v50, v8);
  return v43;
}

id sub_24E091CC8()
{
  v1 = *&v0[qword_27F1E2960];
  [v0 bounds];

  return [v1 setFrame_];
}

void sub_24E091D1C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = qword_27F1E2948;
  v6 = *(v2 + qword_27F1E2948);
  v7 = sub_24E091E6C(a1, a2);
  if (v7 == 9)
  {
    v8 = v6;
    v9 = 0;
  }

  else
  {
    v10 = v7;
    v11 = *MEMORY[0x277D76A08];
    v12 = objc_opt_self();
    v13 = v6;
    v14 = [v12 configurationWithTextStyle:v11 scale:-1];
    v9 = sub_24E012D68(v14, v10);
  }

  [v6 setImage_];

  v15 = *(v2 + v5);
  sub_24E091E88(a1, v3);
  if (v16)
  {
    v17 = v15;
    v19 = sub_24E347CB8();
  }

  else
  {
    v18 = v15;
    v19 = 0;
  }

  [v15 setAccessibilityIdentifier_];
}

unint64_t sub_24E091E88(uint64_t a1, char a2)
{
  result = 0;
  switch(a2)
  {
    case 1:
      result = 0xD000000000000032;
      break;
    case 2:
      result = 0xD000000000000032;
      break;
    case 3:
      result = 0xD000000000000030;
      break;
    case 4:
      result = 0xD00000000000002CLL;
      break;
    case 5:
      return result;
    default:
      result = 0xD00000000000002ELL;
      break;
  }

  return result;
}

void sub_24E091F44(void *a1)
{
  v2 = *(v1 + qword_27F1E2958);
  if (a1[1])
  {
    v3 = sub_24E347CB8();
  }

  else
  {
    v3 = 0;
  }

  [v2 setText_];

  sub_24DFD8050(0xD00000000000002BLL, 0x800000024E3A1FE0, v2);
}

id sub_24E091FCC()
{
  v1 = *&v0[qword_27F1E2950];
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2988, &qword_24E3736B8);
  sub_24E347128();

  sub_24DFA0B40(v9[0], v9[1], v1);
  [v1 setIsAccessibilityElement_];
  sub_24DFD8050(0xD000000000000026, 0x800000024E3A1E90, v1);
  swift_getKeyPath();
  sub_24E347128();

  memcpy(__dst, __src, sizeof(__dst));
  swift_getKeyPath();
  sub_24E347128();

  sub_24E091F44(__dst);
  sub_24DF959D0(v5, v6);
  memcpy(v9, __dst, sizeof(v9));
  sub_24E018E54(v9);
  swift_getKeyPath();
  sub_24E347128();

  v2 = __src[0];
  v3 = __src[1];
  sub_24E091D1C(__src[0], LOBYTE(__src[1]));
  sub_24DF959D0(v2, v3);
  return [v0 setNeedsLayout];
}

id sub_24E0921A4()
{
  [*(v0 + qword_27F1E2950) setText_];
  [*(v0 + qword_27F1E2958) setText_];
  v1 = qword_27F1E2948;
  [*(v0 + qword_27F1E2948) setImage_];
  v2 = *(v0 + v1);

  return [v2 setAccessibilityIdentifier_];
}

id sub_24E092230()
{
  v0 = sub_24E092264();

  return v0;
}

void *sub_24E092264()
{
  v1 = *(v0 + qword_27F1E2950);
  v2 = v1;
  return v1;
}

id sub_24E092294()
{
  v0 = sub_24E0922C8();

  return v0;
}

void *sub_24E0922C8()
{
  v1 = *(v0 + qword_27F1E2958);
  v2 = v1;
  return v1;
}

void sub_24E0922F8()
{
  v1 = *(v0 + qword_27F1E2960);
}

void sub_24E092368(uint64_t a1)
{
  v2 = *(a1 + qword_27F1E2960);
}

uint64_t sub_24E09248C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E09252C()
{
  result = qword_27F1E2990;
  if (!qword_27F1E2990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2990);
  }

  return result;
}

id static GKDaemonProxy.refreshContentsPublisher(type:)(uint64_t a1)
{
  v1 = a1;
  v2 = sub_24E348418();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2998, &qword_24E373700);
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = [objc_opt_self() defaultCenter];
  result = GKRefreshDataTypeAsString();
  if (result)
  {
    v16 = result;
    sub_24E348428();

    *(swift_allocObject() + 16) = v1;
    sub_24DFFD8A0();
    sub_24E344EB8();

    (*(v4 + 8))(v7, v2);
    sub_24DFB4C28(&qword_27F1E29A0, &qword_27F1E2998, &qword_24E373700, MEMORY[0x277CBCC08]);
    v17 = sub_24E344E88();
    (*(v10 + 8))(v13, v8);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E092824@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_24E342F18();
  *a1 = v3;
  *(a1 + 8) = result;
  return result;
}

uint64_t static GKDaemonProxy.refreshContentsPublisher(types:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E29A8, &qword_24E373708);
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      static GKDaemonProxy.refreshContentsPublisher(type:)(v11);
      MEMORY[0x25303EA30]();
      if (*(v15 + 16) >= *(v15 + 24) >> 1)
      {
        sub_24E347F48();
      }

      sub_24E347F88();
      --v9;
    }

    while (v9);
    v8 = v15;
  }

  v14 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E29B0, &qword_24E373710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E29B8, &qword_24E373718);
  sub_24DFB4C28(&qword_27F1E29C0, &qword_27F1E29B0, &qword_24E373710, MEMORY[0x277CBCD90]);
  sub_24DFB4C28(&qword_27F1E29C8, &qword_27F1E29B8, &qword_24E373718, MEMORY[0x277D83970]);
  sub_24E344D88();
  sub_24DFB4C28(&qword_27F1E29D0, &qword_27F1E29A8, &qword_24E373708, MEMORY[0x277CBCD48]);
  v12 = sub_24E344E88();
  (*(v4 + 8))(v7, v2);
  return v12;
}

uint64_t sub_24E092AA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E092AF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24E092B54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E092B74(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_24E092BB0()
{
  result = qword_27F1E29D8;
  if (!qword_27F1E29D8)
  {
    type metadata accessor for AchievementsByGameAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E29D8);
  }

  return result;
}

uint64_t sub_24E092C08(uint64_t *a1, uint64_t a2)
{
  v3 = sub_24E347218();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  type metadata accessor for AchievementsByGameAction(0);
  sub_24DFD8A60();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = a1[2];
    if (v10)
    {
      type metadata accessor for AchievementsByGamePresenter(0);
      sub_24E07C5C8(v10);
    }

    else
    {
      v12 = *a1;
      v13 = a1[1];
      type metadata accessor for AchievementsByGamePresenter(0);
      swift_allocObject();

      sub_24E07C650(v12, v13);
    }

    v14 = objc_allocWithZone(type metadata accessor for AchievementsByGameViewController());

    sub_24DFDD4DC();
    v16 = v15;
    v17 = [v9 navigationController];
    if (v17)
    {
      v18 = v17;
      [v17 pushViewController:v16 animated:1];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820, &unk_24E376E20);
    (*(v4 + 104))(v6, *MEMORY[0x277D21CA8], v3);
    v11 = sub_24E347AA8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820, &unk_24E376E20);
    (*(v4 + 104))(v6, *MEMORY[0x277D21CA8], v3);
    return sub_24E347AA8();
  }

  return v11;
}

double sub_24E092E74(double a1, double a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E27A0, &qword_24E373140);
  sub_24E347148();
  v6 = [a4 traitCollection];
  v7 = sub_24E094024(v9, a1);

  return v7;
}

id sub_24E092F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *&v3[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_titleLabel];
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E27A0, &qword_24E373140);
  sub_24E347128();

  v29.receiver = v5;
  v29.super_class = type metadata accessor for DynamicTypeLinkedLabel(0);
  objc_msgSendSuper2(&v29, sel_setAttributedText_);
  sub_24E05FDE0();

  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5_43(KeyPath, v7, v8, v9, v10);

  v11 = v28[2];

  if (v11)
  {
    v12 = swift_getKeyPath();
    OUTLINED_FUNCTION_5_43(v12, v13, v14, v15, v16);

    v17 = v28[2];
    if (v17)
    {
      v27 = MEMORY[0x277D84F90];
      sub_24E348A68();
      v18 = 10;
      do
      {
        [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
        v18 += 7;
        --v17;
      }

      while (v17);

      v19 = v27;
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
    }

    sub_24E0D4368(v19, 0);
  }

  v20 = *&v3[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_playerGroupSubartworkView];
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_5_43(v21, v22, v23, v24, v25);

  if (v28)
  {
  }

  [v20 setHidden_];
  *&v3[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_objectGraph] = a3;

  sub_24E347148();
  *&v3[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_componentData] = v28;

  return [v3 setNeedsLayout];
}

uint64_t sub_24E0931E8()
{
  sub_24E0605D0();
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_playerGroupSubartworkView) setHidden_];
  sub_24E0D8E24(0);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_objectGraph) = 0;

  *(v0 + OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_componentData) = 0;
}

uint64_t sub_24E093274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_24E344128();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v6 + OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_playerGroupSubartworkView);
  result = [v15 isHidden];
  if ((result & 1) == 0)
  {
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E27A0, &qword_24E373140);
    sub_24E347128();

    v17 = v22[0];
    if (v22[0])
    {
      if (qword_27F1DD7E0 != -1)
      {
        OUTLINED_FUNCTION_0_76();
        swift_once();
      }

      v18 = type metadata accessor for ActivityFeedSharedView.Metrics(0);
      v19 = *(__swift_project_value_buffer(v18, qword_27F20AD58) + *(v18 + 32) + 8);
      sub_24E344138();
      sub_24E344108();
      v22[0] = 0;
      v22[1] = 0;
      v21 = sub_24E0ABE8C(v22, 0, v20, v19);
      LOBYTE(v22[0]) = *(v17 + 56);
      sub_24E0D8DC8(v22);
      if (*(a6 + qword_27F1EB198))
      {

        sub_24E0624A4(v21, 2, 1, v15);

        return (*(v10 + 8))(v14, v8);
      }

      else
      {
        (*(v10 + 8))(v14, v8);
      }
    }
  }

  return result;
}

uint64_t sub_24E0934B0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + qword_27F1EB198))
  {
    v3 = *(v2 + OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_playerGroupSubartworkView);

    sub_24E17DAC4(v3, 1);
  }

  return result;
}

uint64_t sub_24E093524()
{
  v1 = sub_24E344158();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for ActivityFeedSharedView.Metrics(0);
  __swift_allocate_value_buffer(v10, qword_27F20AD58);
  v11 = __swift_project_value_buffer(v10, qword_27F20AD58);
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  if (ShouldUsePadUI)
  {
    if (qword_27F1DE0A8 != -1)
    {
      ShouldUsePadUI = OUTLINED_FUNCTION_2_47(&qword_27F1DE0A8);
    }

    OUTLINED_FUNCTION_3_51(ShouldUsePadUI, &unk_27F20BDF8);
    v13 = OUTLINED_FUNCTION_7_30();
    v14 = v0(v13);
    if (qword_27F1DE0B0 != -1)
    {
      v14 = swift_once();
    }

    OUTLINED_FUNCTION_3_51(v14, &unk_27F20BE10);
    v15 = v0(v6);
    if (qword_27F1DE008 != -1)
    {
      v15 = swift_once();
    }

    OUTLINED_FUNCTION_3_51(v15, &unk_27F20BC18);
    v0(v11 + v10[10]);
    v16 = 2.0;
    v17 = 16.0;
    v18 = 0x4046000000000000;
  }

  else
  {
    if (qword_27F1DE0A8 != -1)
    {
      ShouldUsePadUI = OUTLINED_FUNCTION_2_47(&qword_27F1DE0A8);
    }

    OUTLINED_FUNCTION_3_51(ShouldUsePadUI, &unk_27F20BDF8);
    v19 = OUTLINED_FUNCTION_7_30();
    v20 = v0(v19);
    if (qword_27F1DE0A0 != -1)
    {
      v20 = swift_once();
    }

    OUTLINED_FUNCTION_3_51(v20, &unk_27F20BDE0);
    v21 = v0(v6);
    if (qword_27F1DE0D0 != -1)
    {
      v21 = swift_once();
    }

    OUTLINED_FUNCTION_3_51(v21, &unk_27F20BE70);
    v0(v11 + v10[10]);
    v16 = 4.0;
    v17 = 20.0;
    v18 = 0x4042000000000000;
  }

  v22 = v18;
  v23 = *(v3 + 32);
  v23(v11, v9, v1);
  result = (v23)(v11 + v10[5], v6, v1);
  *(v11 + v10[6]) = 0x4030000000000000;
  v25 = (v11 + v10[7]);
  *v25 = v22;
  v25[1] = v22;
  v26 = (v11 + v10[8]);
  *v26 = v17;
  v26[1] = v17;
  v27 = (v11 + v10[9]);
  *v27 = 0.0;
  v27[1] = 0.0;
  v27[2] = v16;
  v27[3] = v16;
  return result;
}

char *sub_24E09386C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39[-v12];
  v14 = OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_titleLabel;
  if (qword_27F1DD7E0 != -1)
  {
    OUTLINED_FUNCTION_0_76();
    swift_once();
  }

  v15 = type metadata accessor for ActivityFeedSharedView.Metrics(0);
  v16 = __swift_project_value_buffer(v15, qword_27F20AD58);
  v17 = sub_24E344158();
  (*(*(v17 - 8) + 16))(v13, v16, v17);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v17);
  v18 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *&v5[v14] = OUTLINED_FUNCTION_4_43();
  type metadata accessor for GKPlayerGroupView();
  static GKPlayerGroupView.create()();
  if (!v19)
  {
    v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  *&v5[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_playerGroupView] = v19;
  v20 = OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_playerGroupSubartworkView;
  v21 = type metadata accessor for ArtworkView();
  *&v5[v20] = sub_24E0D89D0(v21);
  *&v5[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_objectGraph] = 0;
  *&v5[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_componentData] = 0;
  v41.receiver = v5;
  v41.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v41, sel_initWithFrame_, a1, a2, a3, a4);
  v23 = *MEMORY[0x277D768C8];
  v24 = *(MEMORY[0x277D768C8] + 8);
  v25 = *(MEMORY[0x277D768C8] + 16);
  v26 = *(MEMORY[0x277D768C8] + 24);
  v27 = v22;
  [v27 setLayoutMargins_];
  v28 = OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_titleLabel;
  v29 = *&v27[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_titleLabel];
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 clearColor];
  [v31 setBackgroundColor_];

  v33 = *&v27[v28];
  v40[3] = ObjectType;
  v40[4] = &off_28611A2B8;
  v40[0] = v27;
  v34 = OBJC_IVAR____TtC12GameCenterUI22DynamicTypeLinkedLabel_linkInteractionDelegate;
  swift_beginAccess();
  v35 = v33;
  sub_24E094E2C(v40, v33 + v34);
  swift_endAccess();

  sub_24DFD8050(0xD000000000000030, 0x800000024E3A4610, *&v27[v28]);
  [v27 addSubview_];
  v36 = OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_playerGroupView;
  sub_24DFD8050(0xD000000000000033, 0x800000024E3A4650, *&v27[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_playerGroupView]);
  [v27 addSubview_];
  v37 = OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_playerGroupSubartworkView;
  sub_24DFD8050(0xD00000000000003ALL, 0x800000024E3A4690, *&v27[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_playerGroupSubartworkView]);
  [*&v27[v36] addSubview_];

  return v27;
}

void sub_24E093C14()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_titleLabel;
  if (qword_27F1DD7E0 != -1)
  {
    OUTLINED_FUNCTION_0_76();
    swift_once();
  }

  v6 = type metadata accessor for ActivityFeedSharedView.Metrics(0);
  v7 = __swift_project_value_buffer(v6, qword_27F20AD58);
  v8 = sub_24E344158();
  (*(*(v8 - 8) + 16))(v4, v7, v8);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v8);
  v9 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *(v1 + v5) = OUTLINED_FUNCTION_4_43();
  type metadata accessor for GKPlayerGroupView();
  static GKPlayerGroupView.create()();
  if (!v10)
  {
    v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  *(v1 + OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_playerGroupView) = v10;
  v11 = OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_playerGroupSubartworkView;
  v12 = type metadata accessor for ArtworkView();
  *(v1 + v11) = sub_24E0D89D0(v12);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_objectGraph) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_componentData) = 0;
  sub_24E348AE8();
  __break(1u);
}

char *sub_24E093E08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  if (qword_27F1DD7E0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for ActivityFeedSharedView.Metrics(0);
  v4 = __swift_project_value_buffer(v3, qword_27F20AD58);
  v5 = sub_24E344158();
  (*(*(v5 - 8) + 16))(v2, v4, v5);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
  v6 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  result = sub_24E060A5C(v2, 0, 0, 0, 1, 0);
  qword_27F1E29E0 = result;
  return result;
}

void sub_24E093F4C(uint64_t a1, double a2)
{
  if (qword_27F1DD7E8 != -1)
  {
    swift_once();
  }

  v4 = qword_27F1E29E0;
  v5.receiver = qword_27F1E29E0;
  v5.super_class = type metadata accessor for DynamicTypeLinkedLabel(0);
  objc_msgSendSuper2(&v5, sel_setAttributedText_, a1);
  sub_24E05FDE0();
  [v4 setFrame_];
  [v4 sizeToFit];
  [v4 frame];
  CGRectGetHeight(v6);
}

double sub_24E094024(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_cachedCalculatedHeight;
  swift_beginAccess();
  if (!*(*(a1 + v4) + 16) || (sub_24E26AD30(a2), (v5 & 1) == 0))
  {
    v6 = qword_27F1DD7E0;
    v7 = *(a1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_attributedTitle);
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for ActivityFeedSharedView.Metrics(0);
    v9 = __swift_project_value_buffer(v8, qword_27F20AD58);
    sub_24E093F4C(v7, a2 - *(v9 + *(v8 + 28)) - *(v9 + *(v8 + 24)));
    v11 = v9 + *(v8 + 28);
    if (v10 > *(v11 + 8))
    {
      v12 = v10;
    }

    else
    {
      v12 = *(v11 + 8);
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(a1 + v4);
    sub_24E058224(isUniquelyReferenced_nonNull_native, v12, a2);
    *(a1 + v4) = v15;
    swift_endAccess();
  }

  return a2;
}

double sub_24E0941A0(double a1)
{
  v2 = *&v1[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_componentData];
  if (!v2)
  {
    return 0.0;
  }

  swift_getObjectType();

  v4 = [v1 traitCollection];
  v5 = sub_24E094024(v2, a1);

  return v5;
}

id sub_24E0942A8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_24E344128();
  OUTLINED_FUNCTION_0_14();
  v33 = v4;
  v34 = v3;
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35.receiver = v1;
  v35.super_class = ObjectType;
  objc_msgSendSuper2(&v35, sel_layoutSubviews, v5);
  if (qword_27F1DD7E0 != -1)
  {
    OUTLINED_FUNCTION_0_76();
    swift_once();
  }

  v7 = type metadata accessor for ActivityFeedSharedView.Metrics(0);
  v8 = __swift_project_value_buffer(v7, qword_27F20AD58);
  v9 = (v8 + *(v7 + 28));
  v10 = *v9;
  v11 = v9[1];
  v12 = *&v1[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_playerGroupView];
  v13 = [v1 traitCollection];
  v14 = &selRef_iconURLString;
  [v13 layoutDirection];

  [v1 bounds];
  sub_24E348518();
  [v12 setFrame_];
  v15 = OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_componentData;
  v16 = *&v1[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_componentData];
  if (v16)
  {
    v17 = v10 + *(v8 + *(v7 + 24));
    v18 = *(v16 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_attributedTitle);

    v19 = v18;
    [v1 bounds];
    Width = CGRectGetWidth(v36);
    sub_24E093F4C(v19, Width - v17);
    v21 = *&v1[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_titleLabel];
    v22 = [v1 traitCollection];
    [v22 layoutDirection];

    [v1 bounds];
    v14 = 0x1FAADE000;
    sub_24E348518();
    [v21 setFrame_];
  }

  v23 = *&v1[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_playerGroupSubartworkView];
  if (([v23 isHidden] & 1) == 0 && (v24 = *&v1[v15]) != 0 && *(v24 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_playerSubArtwork))
  {

    v25 = v14;
    v26 = v32;
    sub_24E344138();
    sub_24E344108();
    v37.origin.x = OUTLINED_FUNCTION_6_38();
    v37.size.width = v10;
    v37.size.height = v11;
    CGRectGetWidth(v37);
    v38.origin.x = OUTLINED_FUNCTION_6_38();
    v38.size.width = v10;
    v38.size.height = v11;
    CGRectGetHeight(v38);
    v27 = [v1 traitCollection];
    [v27 (v25 + 1912)];

    OUTLINED_FUNCTION_6_38();
    sub_24E348518();
    [v23 setFrame_];

    return (*(v33 + 8))(v26, v34);
  }

  else
  {
    v29 = OUTLINED_FUNCTION_6_38();
    return [v23 v30];
  }
}

void sub_24E0946F8(void *a1)
{
  v16.receiver = v1;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    v3 = a1;
    v4 = [v1 traitCollection];
    v5 = [v4 preferredContentSizeCategory];

    v6 = [v3 preferredContentSizeCategory];
    v7 = sub_24E347CF8();
    v9 = v8;
    if (v7 == sub_24E347CF8() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_24E348C08();

      if ((v12 & 1) == 0)
      {
        v13 = *&v1[OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_componentData];
        if (v13)
        {
          sub_24E094DD8();

          v14 = sub_24E347C28();

          v15 = OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_cachedCalculatedHeight;
          swift_beginAccess();
          *(v13 + v15) = v14;

          return;
        }
      }
    }
  }
}

id sub_24E09491C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_attributedTitle);
  *a2 = v2;
  return v2;
}

void sub_24E094938(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_attributedTitle);
  *(*a2 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_attributedTitle) = *a1;
  v3 = v2;
}

double sub_24E09498C@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_playerSubArtwork);

  return result;
}

uint64_t sub_24E0949A8(uint64_t *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_playerSubArtwork) = *a1;
}

uint64_t sub_24E094A70()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12GameCenterUI22ActivityFeedSharedView_titleLabel) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24E347CF8();

  return v3;
}

uint64_t sub_24E094D44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ActivityFeedSharedView.Metrics(uint64_t a1)
{
  result = qword_27F1E2A18;
  if (!qword_27F1E2A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24E094DD8()
{
  result = qword_27F1E2A10;
  if (!qword_27F1E2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2A10);
  }

  return result;
}

uint64_t sub_24E094E2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2220, qword_24E371F50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E094EC4(uint64_t a1)
{
  v1 = sub_24E344158();
  if (v2 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v4 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for UIEdgeInsets(319);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_2_47(uint64_t a1)
{

  return swift_once();
}

char *OUTLINED_FUNCTION_4_43()
{

  return sub_24E060A5C(v0, 0, 0, 0, 1, 0);
}

void *OUTLINED_FUNCTION_5_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_24E347128();
}

uint64_t sub_24E095044(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectWeakInit();
  *(v6 + 96) = 0u;
  *(v6 + 112) = 0u;
  swift_unknownObjectWeakAssign();

  v13 = *(a2 + 16);
  *(v6 + 24) = *a2;
  *(v6 + 40) = v13;
  *(v6 + 56) = *(a2 + 32);
  *(v6 + 64) = a3;
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  *(v6 + 88) = a6;
  return v6;
}

uint64_t sub_24E0950D4()
{
  v25 = sub_24E346FA8();
  v0 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v2 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - v5;
  v7 = sub_24E347388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = type metadata accessor for ObjectGraph(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1D0, &unk_24E367D50);
  v24 = v0;
  *(swift_allocObject() + 16) = xmmword_24E369B70;
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  (*(v8 + 16))(v10, qword_27F20B960 + OBJC_IVAR____TtC12GameCenterUI9GKMetrics_pipeline, v7);
  sub_24E346F98();
  (*(v8 + 8))(v10, v7);
  v11 = v23[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_24E095648(Strong, v6);

  sub_24E346F98();
  (*(v4 + 8))(v6, v3);
  type metadata accessor for ArtworkLoader();
  v28[0] = sub_24E2002B8(0);
  sub_24E346F98();

  sub_24E347308();
  v13 = v11[8];
  if (v13)
  {
    sub_24DF88A8C(0, &unk_27F1DFCF0, 0x277D0C048);
    v28[0] = v13;
    v14 = v13;
    sub_24E346F98();
    sub_24E347318();

    v16 = v24;
    v15 = v25;
    (*(v24 + 8))(v2, v25);
  }

  else
  {
    v16 = v24;
    v15 = v25;
  }

  sub_24E09797C((v11 + 3), &v26);
  if (v27)
  {
    sub_24DE56CE8(&v26, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EACB0, qword_24E375630);
    sub_24E346F98();
    sub_24E347318();

    (*(v16 + 8))(v2, v15);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_24DF8C95C(&v26, &qword_27F1E1B70, qword_24E3756A0);
  }

  sub_24E3476A8();
  v28[0] = v11[9];
  sub_24E346F98();
  v17 = sub_24E347318();

  v18 = *(v16 + 8);
  v18(v2, v15);
  v19 = v11[10];
  if (v19)
  {
    v20 = v11[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0, &unk_24E36C100);
    v28[0] = v19;
    v28[1] = v20;
    swift_unknownObjectRetain();
    sub_24E346F98();
    v21 = sub_24E347318();

    swift_unknownObjectRelease();
    v18(v2, v15);
    v17 = v21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2B60, &qword_24E3739B8);
  v28[0] = v17;
  return sub_24E347AA8();
}

void sub_24E095648(void *a1@<X0>, uint64_t a2@<X8>)
{
  v191 = a1;
  v189 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E2A28, &unk_24E373990);
  OUTLINED_FUNCTION_0_14();
  v195 = v2;
  v196 = v3;
  MEMORY[0x28223BE20](v2);
  v190 = v183 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E2A30, &unk_24E373998);
  OUTLINED_FUNCTION_0_14();
  v201 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = v183 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_31();
  v186 = v22;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_31();
  v187 = v24;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_31();
  v188 = v26;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_31();
  v192 = v28;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_31();
  v193 = v30;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v43);
  v45 = v183 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = v183 - v47;
  MEMORY[0x28223BE20](v49);
  v198 = v183 - v50;
  type metadata accessor for ObjectGraph(0);
  sub_24E3473C8();
  sub_24E347958();
  v51 = v12 + 16;
  v52 = *(v12 + 16);
  v53 = OUTLINED_FUNCTION_27_2();
  (v52)(v53);
  sub_24DFB4C28(&unk_27F1E2A38, &unk_27F1E2A30, &unk_24E373998, MEMORY[0x277D222E0]);
  sub_24E347398();
  v54 = v5;
  v55 = v12;
  v201[1](v9, v54);
  v56 = (v12 + 8);
  v57 = *(v12 + 8);
  v194 = v45;
  v58 = v45;
  v59 = v10;
  (v57)(v58, v10);
  v204 = sub_24E3474D8();
  v205 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v202);
  sub_24E3474C8();
  v60 = v190;
  sub_24E347948();
  OUTLINED_FUNCTION_11_21();
  v197 = v52;
  v199 = v51;
  v52();
  sub_24DFB4C28(&unk_27F1E2A40, &unk_27F1E2A28, &unk_24E373990, MEMORY[0x277D222C0]);
  v61 = v195;
  v62 = v191;
  sub_24E347398();
  (*(v196 + 8))(v60, v61);
  v195 = v48;
  v63 = OUTLINED_FUNCTION_27_2();
  v200 = v57;
  v201 = v56;
  v57(v63);
  if (v62)
  {
    v196 = v55;
    OUTLINED_FUNCTION_16_19();
    swift_unknownObjectWeakAssign();
    v64 = v186;
    v65 = v197;
    (v197)(v186, v198, v59);
    sub_24E09719C();
    v66 = v62;
    OUTLINED_FUNCTION_5_44();
    sub_24E347398();
    sub_24E0971F0(v202);
    OUTLINED_FUNCTION_16_19();
    swift_unknownObjectWeakAssign();
    (v65)(v187, v64, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E2A50, &unk_24E3739A8);
    sub_24DFB4C28(&unk_27F1E2A58, &unk_27F1E2A50, &unk_24E3739A8, &unk_24E3773D0);
    OUTLINED_FUNCTION_2_48();
    sub_24E347398();
    sub_24DF8C95C(v202, &unk_27F1E2A50, &unk_24E3739A8);
    v67 = v200;
    (v200)(v64, v59);
    OUTLINED_FUNCTION_16_19();
    swift_unknownObjectWeakAssign();
    v68 = v188;
    OUTLINED_FUNCTION_11_21();
    v65();
    sub_24E097244();
    OUTLINED_FUNCTION_5_44();
    sub_24E347398();
    sub_24E097298(v202);
    v69 = OUTLINED_FUNCTION_27_2();
    v67(v69);
    OUTLINED_FUNCTION_16_19();
    swift_unknownObjectWeakAssign();
    (v65)(v192, v68, v59);
    sub_24E0972EC();
    OUTLINED_FUNCTION_5_44();
    sub_24E347398();
    sub_24E097340(v202);
    (v67)(v68, v59);
    OUTLINED_FUNCTION_16_19();
    swift_unknownObjectWeakAssign();
    v70 = v194;
    OUTLINED_FUNCTION_14_11();
    v65();
    sub_24E097394();
    OUTLINED_FUNCTION_5_44();
    sub_24E347398();
    sub_24E0973E8(v202);
    v71 = OUTLINED_FUNCTION_18_2();
    v67(v71);
    v72 = objc_allocWithZone(type metadata accessor for RemoveFriendActionImplementation());
    v190 = v66;
    v73 = sub_24E2FF050(v190);
    OUTLINED_FUNCTION_18_17(v73);
    (v65)(v195, v70, v59);
    sub_24E097784(&unk_27F1E2A78, type metadata accessor for RemoveFriendActionImplementation, &unk_24E38D7E4);
    OUTLINED_FUNCTION_2_48();
    sub_24E347398();
    (v67)(v70, v59);

    type metadata accessor for AppStoreProductActionImplementation();
    v74 = swift_allocObject();
    OUTLINED_FUNCTION_18_17(v74);
    OUTLINED_FUNCTION_11_21();
    v65();
    sub_24E097784(&unk_27F1E2A80, type metadata accessor for AppStoreProductActionImplementation, &unk_24E37F084);
    OUTLINED_FUNCTION_2_48();
    sub_24E347398();
    v75 = OUTLINED_FUNCTION_27_2();
    v67(v75);

    v191 = objc_opt_self();
    v76 = [v191 shared];
    if (v76)
    {
      v77 = v76;
      type metadata accessor for ShareAchievementActionImplementation();
      swift_allocObject();
      v78 = v190;
      v79 = sub_24E2FA45C(v78, v77);
      OUTLINED_FUNCTION_8_31(v79);
      OUTLINED_FUNCTION_9_29();
      v80 = v197;
      v197();
      sub_24E097784(&unk_27F1E2A88, type metadata accessor for ShareAchievementActionImplementation, &unk_24E38D3D8);
      OUTLINED_FUNCTION_0_77();
      sub_24E347398();
      v81 = OUTLINED_FUNCTION_13_25();
      v82 = v201;
      v200(v81);

      v83 = type metadata accessor for ChallengePlayersActionImplementation();
      OUTLINED_FUNCTION_14_19(v83);
      v193 = v78;
      v84 = sub_24E1579C4(v193);
      OUTLINED_FUNCTION_8_31(v84);
      v85 = OUTLINED_FUNCTION_4_44(&v205);
      (v80)(v85);
      sub_24E097784(&unk_27F1E2A90, type metadata accessor for ChallengePlayersActionImplementation, &unk_24E388AD8);
      OUTLINED_FUNCTION_0_77();
      sub_24E347398();
      v86 = OUTLINED_FUNCTION_27_2();
      v87 = v200;
      v200(v86);

      v88 = [objc_allocWithZone(type metadata accessor for ExternalUrlActionImplementation()) init];
      OUTLINED_FUNCTION_18_17(v88);
      v89 = OUTLINED_FUNCTION_3_52(&v206);
      (v80)(v89);
      sub_24E097784(&unk_27F1E2A98, type metadata accessor for ExternalUrlActionImplementation, &unk_24E376DE0);
      OUTLINED_FUNCTION_2_48();
      sub_24E347398();
      v90 = OUTLINED_FUNCTION_13_25();
      v87(v90);

      v91 = v183[10];
      OUTLINED_FUNCTION_11_21();
      v80();
      sub_24E09743C();
      sub_24E347398();
      v92 = OUTLINED_FUNCTION_27_2();
      v87(v92);
      v93 = v87;
      OUTLINED_FUNCTION_16_19();
      v94 = v193;
      swift_unknownObjectWeakAssign();
      v95 = v183[11];
      OUTLINED_FUNCTION_14_11();
      v80();
      sub_24E097490();
      OUTLINED_FUNCTION_5_44();
      sub_24E347398();
      sub_24E0974E4(v202);
      v96 = OUTLINED_FUNCTION_18_2();
      v93(v96);
      OUTLINED_FUNCTION_16_19();
      swift_unknownObjectWeakAssign();
      (v80)(v183[12], v95, v59);
      sub_24E097538();
      OUTLINED_FUNCTION_5_44();
      sub_24E347398();
      sub_24E09758C(v202);
      (v93)(v95, v59);
      v97 = type metadata accessor for ChallengeListActionImplementation();
      OUTLINED_FUNCTION_14_19(v97);
      v98 = v94;
      v99 = sub_24E1579C4(v98);
      OUTLINED_FUNCTION_8_31(v99);
      v100 = OUTLINED_FUNCTION_4_44(&v207);
      (v80)(v100);
      sub_24E097784(&unk_27F1E2AB8, type metadata accessor for ChallengeListActionImplementation, &unk_24E37D1C4);
      OUTLINED_FUNCTION_0_77();
      sub_24E347398();
      v101 = OUTLINED_FUNCTION_27_2();
      v93(v101);

      OUTLINED_FUNCTION_16_19();
      swift_unknownObjectWeakAssign();
      v102 = OUTLINED_FUNCTION_3_52(&v208);
      (v80)(v102);
      sub_24E0975E0();
      OUTLINED_FUNCTION_5_44();
      sub_24E347398();
      sub_24E097634(v202);
      v103 = OUTLINED_FUNCTION_13_25();
      v93(v103);
      v104 = type metadata accessor for ScrollToTopActionImplementation();
      OUTLINED_FUNCTION_14_19(v104);
      v105 = v98;
      v106 = sub_24E1579C4(v105);
      OUTLINED_FUNCTION_8_31(v106);
      v107 = OUTLINED_FUNCTION_4_44(&v209);
      (v80)(v107);
      sub_24E097784(&unk_27F1E2AC8, type metadata accessor for ScrollToTopActionImplementation, &unk_24E37F270);
      OUTLINED_FUNCTION_0_77();
      sub_24E347398();
      v108 = OUTLINED_FUNCTION_27_2();
      v93(v108);

      MoreActionImplementation = type metadata accessor for LoadMoreActionImplementation();
      OUTLINED_FUNCTION_14_19(MoreActionImplementation);
      v110 = v105;
      v111 = sub_24E1579C4(v110);
      OUTLINED_FUNCTION_8_31(v111);
      v112 = OUTLINED_FUNCTION_3_52(&v210);
      (v80)(v112);
      sub_24E097784(&unk_27F1E2AD0, type metadata accessor for LoadMoreActionImplementation, &unk_24E37F990);
      OUTLINED_FUNCTION_0_77();
      sub_24E347398();
      v113 = OUTLINED_FUNCTION_13_25();
      v114 = v200;
      v200(v113);

      OUTLINED_FUNCTION_16_19();
      swift_unknownObjectWeakAssign();
      v115 = v183[17];
      OUTLINED_FUNCTION_11_21();
      v80();
      sub_24E097688();
      OUTLINED_FUNCTION_5_44();
      sub_24E347398();
      sub_24E0976DC(v202);
      v116 = OUTLINED_FUNCTION_27_2();
      v114(v116);
      v117 = v184;
      (v80)(v184, v115, v59);
      sub_24E097730();
      sub_24E347398();
      v118 = v115;
      v119 = v114;
      (v114)(v118, v59);
      v120 = v198;
      v121 = OUTLINED_FUNCTION_13_25();
      v119(v121);
      v122 = *(v196 + 32);
      v196 += 32;
      v193 = v122;
      (v122)(v120, v117, v59);
      v123 = objc_allocWithZone(type metadata accessor for ProfilePrivacyActionImplementation(0));
      v124 = v110;
      v125 = sub_24E30E2B8(v124);
      OUTLINED_FUNCTION_8_31(v125);
      v126 = v194;
      OUTLINED_FUNCTION_9_29();
      v80();
      sub_24E097784(&unk_27F1E2AE8, type metadata accessor for ProfilePrivacyActionImplementation, &unk_24E38DF60);
      OUTLINED_FUNCTION_0_77();
      sub_24E347398();

      type metadata accessor for PlayerAvatarPickerActionImplementation();
      swift_allocObject();
      v127 = v124;
      v128 = sub_24E18DB9C(v127);
      OUTLINED_FUNCTION_8_31(v128);
      (v80)(v195, v126, v59);
      v129 = v80;
      sub_24E097784(&unk_27F1E2AF0, type metadata accessor for PlayerAvatarPickerActionImplementation, &unk_24E37F3F8);
      OUTLINED_FUNCTION_0_77();
      sub_24E347398();
      v130 = v200;
      (v200)(v126, v59);

      v131 = type metadata accessor for TermsAndConditionsActionImplementation();
      OUTLINED_FUNCTION_14_19(v131);
      v132 = v127;
      v133 = sub_24E1579C4(v132);
      OUTLINED_FUNCTION_8_31(v133);
      v134 = v185;
      OUTLINED_FUNCTION_11_21();
      v129();
      sub_24E097784(&unk_27F1E2AF8, type metadata accessor for TermsAndConditionsActionImplementation, &unk_24E3828F8);
      OUTLINED_FUNCTION_0_77();
      sub_24E347398();
      v135 = OUTLINED_FUNCTION_27_2();
      v130(v135);

      v136 = [v191 shared];
      if (v136)
      {
        v137 = v136;
        type metadata accessor for AddFriendsActionImplementation(0);
        v138 = swift_allocObject();
        v139 = v132;
        v140 = sub_24E31926C(v139, v137);
        OUTLINED_FUNCTION_8_31(v140);
        v141 = v197;
        (v197)(v183[0], v134, v59);
        sub_24E097784(&unk_27F1E2B00, type metadata accessor for AddFriendsActionImplementation, &unk_24E38E828);
        OUTLINED_FUNCTION_0_77();
        sub_24E347398();
        (v200)(v134, v59);

        v142 = objc_allocWithZone(type metadata accessor for PrivacyPolicyActionImplementation());
        v143 = v139;
        v144 = sub_24E088750(v143);
        OUTLINED_FUNCTION_8_31(v144);
        v145 = OUTLINED_FUNCTION_3_52(&v199);
        (v141)(v145);
        sub_24E097784(&unk_27F1E2B08, type metadata accessor for PrivacyPolicyActionImplementation, &unk_24E3732E4);
        OUTLINED_FUNCTION_0_77();
        sub_24E347398();
        v146 = OUTLINED_FUNCTION_13_25();
        v200(v146);

        v147 = objc_allocWithZone(type metadata accessor for PrivacyAndSettingsActionImplementation());
        v148 = v143;
        v149 = sub_24E0B9928(v148);
        OUTLINED_FUNCTION_8_31(v149);
        v150 = OUTLINED_FUNCTION_4_44(&v200);
        (v141)(v150);
        sub_24E097784(&unk_27F1E2B10, type metadata accessor for PrivacyAndSettingsActionImplementation, &unk_24E3755E8);
        OUTLINED_FUNCTION_0_77();
        sub_24E347398();
        v151 = OUTLINED_FUNCTION_27_2();
        v152 = v200;
        v200(v151);

        v153 = objc_allocWithZone(type metadata accessor for FriendListAccessActionImplementation());
        v154 = v148;
        v155 = sub_24E124708(v154);
        OUTLINED_FUNCTION_8_31(v155);
        v156 = OUTLINED_FUNCTION_3_52(&v201);
        v157 = v197;
        (v197)(v156);
        sub_24E097784(&unk_27F1E2B18, type metadata accessor for FriendListAccessActionImplementation, &unk_24E37A5B8);
        OUTLINED_FUNCTION_0_77();
        sub_24E347398();
        v158 = OUTLINED_FUNCTION_13_25();
        v152(v158);

        v159 = objc_allocWithZone(type metadata accessor for ReportFriendActionImplementation());
        v160 = v154;
        v161 = sub_24E011A70(v160);
        OUTLINED_FUNCTION_8_31(v161);
        v162 = OUTLINED_FUNCTION_4_44(v202);
        (v157)(v162);
        sub_24E097784(&unk_27F1E2B20, type metadata accessor for ReportFriendActionImplementation, &unk_24E36ECC4);
        OUTLINED_FUNCTION_0_77();
        sub_24E347398();
        v163 = OUTLINED_FUNCTION_27_2();
        v152(v163);

        v164 = type metadata accessor for GameCenterSignInActionImplementation();
        v165 = objc_allocWithZone(v164);
        v191 = v160;
        v166 = sub_24E0D7BF8(v191);
        OUTLINED_FUNCTION_8_31(v166);
        v167 = v183[5];
        OUTLINED_FUNCTION_9_29();
        v157();
        sub_24E097784(&unk_27F1E2B28, type metadata accessor for GameCenterSignInActionImplementation, &unk_24E3764E8);
        OUTLINED_FUNCTION_0_77();
        sub_24E347398();
        v168 = OUTLINED_FUNCTION_13_25();
        v152(v168);

        v169 = [objc_allocWithZone(type metadata accessor for GameCenterSignOutActionImplementation()) init];
        OUTLINED_FUNCTION_18_17(v169);
        (v157)(v183[6], v167, v59);
        sub_24E097784(&unk_27F1E2B30, type metadata accessor for GameCenterSignOutActionImplementation, &unk_24E3835A8);
        OUTLINED_FUNCTION_2_48();
        sub_24E347398();
        (v152)(v167, v59);
        v170 = OUTLINED_FUNCTION_18_2();
        v152(v170);

        OUTLINED_FUNCTION_9_29();
        (v193)();
        v171 = [objc_allocWithZone(type metadata accessor for BlackListCoreRecencyContactActionImplementation()) init];
        OUTLINED_FUNCTION_18_17(v171);
        OUTLINED_FUNCTION_14_11();
        v157();
        sub_24E097784(&unk_27F1E2B38, type metadata accessor for BlackListCoreRecencyContactActionImplementation, &unk_24E3887E0);
        OUTLINED_FUNCTION_2_48();
        sub_24E347398();

        v172 = v191;
        v202[0] = v191;
        v173 = v194;
        OUTLINED_FUNCTION_9_29();
        v157();
        sub_24E0977CC();
        v174 = v172;
        OUTLINED_FUNCTION_5_44();
        sub_24E347398();
        v175 = OUTLINED_FUNCTION_13_25();
        v152(v175);

        v202[0] = v174;
        (v157)(v195, v173, v59);
        sub_24E097820();
        v176 = v174;
        OUTLINED_FUNCTION_5_44();
        sub_24E347398();
        (v152)(v173, v59);
        v177 = OUTLINED_FUNCTION_18_2();
        v152(v177);

        OUTLINED_FUNCTION_9_29();
        (v193)();
        v178 = objc_opt_self();
        v179 = v176;
        v180 = [v178 local];
        LOBYTE(v173) = [objc_opt_self() isPreferences];

        OUTLINED_FUNCTION_16_19();
        swift_unknownObjectWeakAssign();

        v202[1] = v180;
        v203 = v173;
        OUTLINED_FUNCTION_14_11();
        v157();
        sub_24E097874();
        OUTLINED_FUNCTION_5_44();
        sub_24E347398();
        sub_24E0978C8(v202);
        v181 = OUTLINED_FUNCTION_18_2();
        v152(v181);
        OUTLINED_FUNCTION_9_29();
        (v193)();
        v202[0] = v179;
        OUTLINED_FUNCTION_14_11();
        v157();
        sub_24E09791C();
        OUTLINED_FUNCTION_5_44();
        sub_24E347398();
        v182 = OUTLINED_FUNCTION_18_2();
        v152(v182);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    (*(v55 + 32))(v189, v198, v59);
  }
}

uint64_t sub_24E096F10()
{
  sub_24E0950D4();
  v0 = sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
  swift_retain_n();
  v1 = sub_24E348368();
  v3[3] = v0;
  v3[4] = MEMORY[0x277D225C0];
  v3[0] = v1;
  sub_24E347A78();

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_24E097004(uint64_t result)
{
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 120);

    v2(v3);

    return sub_24DE73FA0(v2, v4);
  }

  return result;
}

uint64_t sub_24E097074(uint64_t result)
{
  v2 = *(v1 + 96);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 104);

    v2(v3);

    return sub_24DE73FA0(v2, v4);
  }

  return result;
}

uint64_t sub_24E0970E4()
{
  MEMORY[0x253040FB0](v0 + 16);
  sub_24DF8C95C(v0 + 24, &qword_27F1E1B70, qword_24E3756A0);

  swift_unknownObjectRelease();
  sub_24DE73FA0(*(v0 + 96), *(v0 + 104));
  sub_24DE73FA0(*(v0 + 112), *(v0 + 120));
  return v0;
}

uint64_t sub_24E097144()
{
  sub_24E0970E4();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

unint64_t sub_24E09719C()
{
  result = qword_27F1E2A48;
  if (!qword_27F1E2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2A48);
  }

  return result;
}

unint64_t sub_24E097244()
{
  result = qword_27F1E2A60;
  if (!qword_27F1E2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2A60);
  }

  return result;
}

unint64_t sub_24E0972EC()
{
  result = qword_27F1E2A68;
  if (!qword_27F1E2A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2A68);
  }

  return result;
}

unint64_t sub_24E097394()
{
  result = qword_27F1E2A70;
  if (!qword_27F1E2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2A70);
  }

  return result;
}

unint64_t sub_24E09743C()
{
  result = qword_27F1E2AA0;
  if (!qword_27F1E2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2AA0);
  }

  return result;
}

unint64_t sub_24E097490()
{
  result = qword_27F1E2AA8;
  if (!qword_27F1E2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2AA8);
  }

  return result;
}

unint64_t sub_24E097538()
{
  result = qword_27F1E2AB0;
  if (!qword_27F1E2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2AB0);
  }

  return result;
}

unint64_t sub_24E0975E0()
{
  result = qword_27F1E2AC0;
  if (!qword_27F1E2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2AC0);
  }

  return result;
}

unint64_t sub_24E097688()
{
  result = qword_27F1E2AD8;
  if (!qword_27F1E2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2AD8);
  }

  return result;
}

unint64_t sub_24E097730()
{
  result = qword_27F1E2AE0;
  if (!qword_27F1E2AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2AE0);
  }

  return result;
}

uint64_t sub_24E097784(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E0977CC()
{
  result = qword_27F1E2B40;
  if (!qword_27F1E2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2B40);
  }

  return result;
}

unint64_t sub_24E097820()
{
  result = qword_27F1E2B48;
  if (!qword_27F1E2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2B48);
  }

  return result;
}

unint64_t sub_24E097874()
{
  result = qword_27F1E2B50;
  if (!qword_27F1E2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2B50);
  }

  return result;
}

unint64_t sub_24E09791C()
{
  result = qword_27F1E2B58;
  if (!qword_27F1E2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2B58);
  }

  return result;
}

uint64_t sub_24E09797C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1B70, qword_24E3756A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_14_19(uint64_t a1)
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_16_19()
{

  swift_unknownObjectWeakInit();
  return result;
}

uint64_t sub_24E097AC0@<X0>(double *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  type metadata accessor for MicaViewInfo();
  sub_24E0027D4();

  v8 = sub_24E3455C8();
  v10 = v9;
  v11 = *(a1 + 2);
  v12 = *(a1 + 3);

  v13 = GKGameCenterUIFrameworkBundle();
  v14 = a1[6];
  v15 = objc_allocWithZone(MicaPlayer);
  result = sub_24E098040(v11, v12, v13, v14);
  if (result)
  {
    v17 = result;

    *a2 = v8;
    *(a2 + 8) = v10;
    *(a2 + 16) = a3;
    *(a2 + 24) = a4;
    *(a2 + 32) = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24E097BAC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v2 = *(v0 + 32);
  v3 = [v1 layer];
  v4 = *(v0 + 8);
  v5 = sub_24E347CF8();
  sub_24E0981C4(v3, 1, v5, v6, v2);

  if (*(v4 + 40) == 1)
  {
    [v2 play];
  }

  return v1;
}

void sub_24E097C6C()
{
  v1 = sub_24E098248(0x6F422065626F6C47, 0xEC00000072656472, 1, *(v0 + 32));
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 labelColor];
    v5 = [v4 CGColor];

    [v3 setBorderColor_];
  }

  v6 = [objc_opt_self() labelColor];
  sub_24E097D7C(v6);
}

void sub_24E097D7C(void *a1)
{
  v3 = sub_24E3431D8();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + 32) rootLayer];
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = v8;
  v13[0] = v3;
  sub_24E0982B4();
  v10 = [v9 mp:swift_getObjCClassFromMetadata() allLayersWithKindOfClass:?];

  if (!v10)
  {
LABEL_8:
    __break(1u);
    return;
  }

  sub_24E3485A8();
  while (1)
  {
    sub_24E3431C8();
    if (!v16)
    {
      break;
    }

    sub_24E024710(&v15, &v14);
    swift_dynamicCast();
    v11 = v13[1];
    v12 = [a1 CGColor];
    [v11 setFillColor_];
  }

  (*(v4 + 8))(v7, v13[0]);
}

uint64_t sub_24E097F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E0982F8();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24E097FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E0982F8();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24E098018(uint64_t a1)
{
  sub_24E0982F8();
  sub_24E345E08();
  __break(1u);
}

id sub_24E098040(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  if (a2)
  {
    v7 = sub_24E347CB8();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithFileName:v7 bundle:a3 retinaScale:a4];

  return v8;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24E0980D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24E098114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E098170()
{
  result = qword_27F1E2B68;
  if (!qword_27F1E2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2B68);
  }

  return result;
}

void sub_24E0981C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_24E347CB8();

  [a5 addToLayer:a1 onTop:a2 & 1 gravity:v8];
}

id sub_24E098248(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = sub_24E347CB8();

  v7 = [a4 publishedLayerWithKey:v6 required:a3 & 1];

  return v7;
}

unint64_t sub_24E0982B4()
{
  result = qword_27F1E2B70;
  if (!qword_27F1E2B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E2B70);
  }

  return result;
}

unint64_t sub_24E0982F8()
{
  result = qword_27F1E2B78;
  if (!qword_27F1E2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2B78);
  }

  return result;
}

void sub_24E09834C(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderView;
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v3 = OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderView;
    v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderView);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  sub_24E0986BC();
}

void sub_24E0983D0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderWidth;
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderWidth) >= COERCE_DOUBLE(1))
  {
    v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderView);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderView);
    }

    else
    {
      type metadata accessor for BorderView();
      v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v4 = v5;
      sub_24E09834C(v5);
      v3 = 0;
    }

    v6 = *(v1 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderColor);
    v7 = v3;
    v8 = v6;
    sub_24E1357E8(v6);
    v9 = *(v1 + v2);
    v12 = v4;
    v10 = [v12 layer];
    [v10 setBorderWidth_];

    v11 = (*((*MEMORY[0x277D85000] & *v1) + 0xB8))();
    sub_24E135884(v11);

    sub_24E0985DC(v12, *(v1 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_cornerStyle), *(v1 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_cornerRadius));
  }

  else
  {

    sub_24E09834C(0);
  }
}

void sub_24E098584(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderColor);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderColor) = a1;
  v3 = a1;

  sub_24E0983D0();
}

BOOL sub_24E0985DC(void *a1, char a2, double a3)
{
  v6 = sel__setCornerRadius_;
  if (a2)
  {
    v6 = sel__setContinuousCornerRadius_;
  }

  if (a3 < COERCE_DOUBLE(1))
  {
    [a1 _setContinuousCornerRadius_];
  }

  else
  {
    [a1 v6];
  }

  v7 = sel__setContinuousCornerRadius_;
  if (a2)
  {
    v7 = sel__setCornerRadius_;
  }

  if (a3 < COERCE_DOUBLE(1))
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  if (a3 < COERCE_DOUBLE(1))
  {
    [a1 _setCornerRadius_];
  }

  else
  {
    [a1 v7];
  }

  v9 = [a1 layer];
  [v9 setAllowsEdgeAntialiasing_];

  return a3 >= COERCE_DOUBLE(1);
}

id sub_24E0986BC()
{
  if (*&v0[OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderView])
  {
    return [v0 addSubview_];
  }

  return result;
}

id sub_24E0986E0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_cornerRadius] = 0;
  v4[OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_cornerStyle] = 1;
  *&v4[OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_roundedCorners] = -1;
  *&v4[OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderView] = 0;
  v9 = OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderColor;
  *&v4[v9] = [objc_opt_self() clearColor];
  *&v4[OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderWidth] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for RoundedCornerView();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  [v10 setClipsToBounds_];
  return v10;
}

void sub_24E0987F8()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_cornerRadius) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_cornerStyle) = 1;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_roundedCorners) = -1;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderView) = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderColor;
  *(v0 + v1) = [objc_opt_self() clearColor];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderWidth) = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E0988E4()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for RoundedCornerView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }
}

void sub_24E0989A4(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RoundedCornerView();
  objc_msgSendSuper2(&v5, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (!a1 || v4 != [a1 userInterfaceStyle])
  {
    sub_24E0983D0();
  }
}

id sub_24E098AB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoundedCornerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for CornerStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24E098C34()
{
  result = qword_27F1E2BB0;
  if (!qword_27F1E2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2BB0);
  }

  return result;
}

__n128 */= infix(_:_:)(__n128 *a1, float64x2_t a2, float64_t a3)
{
  a2.f64[1] = a3;
  return OUTLINED_FUNCTION_0_78(a1, vmulq_f64(*a1, a2));
}

{
  a2.f64[1] = a3;
  return OUTLINED_FUNCTION_0_78(a1, vdivq_f64(*a1, a2));
}

double + infix(_:_:)(double a1, double a2, double a3)
{
  return a1 + a3;
}

{
  return a1 + a3;
}

double - infix(_:_:)(double a1, double a2, double a3)
{
  return a1 - a3;
}

{
  return a1 - a3;
}

double * infix(_:_:)(double a1, double a2, double a3)
{
  return a1 * a3;
}

{
  return a1 * a3;
}

double / infix(_:_:)(double a1, double a2, double a3)
{
  return a1 / a3;
}

{
  return a1 / a3;
}

__n128 *+= infix(_:_:)(__n128 *a1, float64x2_t a2, float64_t a3)
{
  a2.f64[1] = a3;
  return OUTLINED_FUNCTION_0_78(a1, vaddq_f64(*a1, a2));
}

{
  a2.f64[1] = a3;
  return OUTLINED_FUNCTION_0_78(a1, vaddq_f64(*a1, a2));
}

__n128 *-= infix(_:_:)(__n128 *a1, float64x2_t a2, float64_t a3)
{
  a2.f64[1] = a3;
  return OUTLINED_FUNCTION_0_78(a1, vsubq_f64(*a1, a2));
}

{
  a2.f64[1] = a3;
  return OUTLINED_FUNCTION_0_78(a1, vsubq_f64(*a1, a2));
}

uint64_t sub_24E098E2C()
{
  v1 = sub_24E343FC8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_16();
  if (qword_27F1DDF38 != -1)
  {
    OUTLINED_FUNCTION_3_53(&qword_27F1DDF38);
  }

  v3 = sub_24E344158();
  v4 = __swift_project_value_buffer(v3, &unk_27F20B9A8);
  (*(*(v3 - 8) + 16))(v0, v4, v3);
  (*(v2 + 104))(v0, *MEMORY[0x277D22618], v1);
  v7[3] = v1;
  v7[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(v2 + 16))(boxed_opaque_existential_1, v0, v1);
  sub_24E344508();
  return (*(v2 + 8))(v0, v1);
}

void sub_24E098FB8()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  sub_24E343FC8();
  OUTLINED_FUNCTION_2_49();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_16();
  v20 = [objc_opt_self() secondaryLabelColor];
  if (qword_27F1DDF30 != -1)
  {
    swift_once();
  }

  v6 = sub_24E344158();
  __swift_project_value_buffer(v6, &unk_27F20B990);
  type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_4_45();
  v8 = *(v7 + 16);
  OUTLINED_FUNCTION_9_30();
  v8();
  OUTLINED_FUNCTION_9_30();
  v8();
  v9 = OUTLINED_FUNCTION_15_18(*MEMORY[0x277D22618], *(v4 + 104));
  v10(v9);
  OUTLINED_FUNCTION_14_20(MEMORY[0x277D22628]);
  OUTLINED_FUNCTION_6_39();
  v18 = v11;
  v11();
  sub_24E344508();
  v12 = OUTLINED_FUNCTION_24_3();
  v17 = v13;
  v13(v12);
  if (qword_27F1DDF28 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, &unk_27F20B978);
  (v8)(v0, v14, v6);
  v15 = OUTLINED_FUNCTION_5_45();
  v19(v15);
  OUTLINED_FUNCTION_11_22(MEMORY[0x277D22628]);
  OUTLINED_FUNCTION_6_39();
  v18();
  sub_24E344508();
  v16 = OUTLINED_FUNCTION_24_3();
  v17(v16);
  sub_24E098E2C();
  v2[1] = 0;
  v2[2] = 0;
  *v2 = v20;
  OUTLINED_FUNCTION_18();
}

void sub_24E099250()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  sub_24E343FC8();
  OUTLINED_FUNCTION_2_49();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_16();
  v22 = [objc_opt_self() labelColor];
  if (qword_27F1DE090 != -1)
  {
    OUTLINED_FUNCTION_1_67(&qword_27F1DE090);
  }

  v6 = sub_24E344158();
  __swift_project_value_buffer(v6, &unk_27F20BDB0);
  v7 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_4_45();
  v9 = *(v8 + 16);
  OUTLINED_FUNCTION_9_30();
  v9();
  if (qword_27F1DDF38 != -1)
  {
    OUTLINED_FUNCTION_3_53(&qword_27F1DDF38);
  }

  v21 = __swift_project_value_buffer(v6, &unk_27F20B9A8);
  (v9)(v0);
  v10 = OUTLINED_FUNCTION_15_18(*MEMORY[0x277D22618], *(v4 + 104));
  v11(v10);
  OUTLINED_FUNCTION_14_20(MEMORY[0x277D22628]);
  OUTLINED_FUNCTION_6_39();
  v19 = v12;
  v12();
  sub_24E344508();
  v13 = *(v4 + 8);
  v14 = OUTLINED_FUNCTION_24_3();
  v13(v14);
  if (qword_27F1DDC40 != -1)
  {
    swift_once();
  }

  v15 = sub_24E3444F8();
  v16 = __swift_project_value_buffer(v15, qword_27F20B4D0);
  (*(*(v15 - 8) + 16))(&v2[*(v7 + 32)], v16, v15);
  (v9)(v0, v21, v6);
  v17 = OUTLINED_FUNCTION_5_45();
  v20(v17);
  OUTLINED_FUNCTION_11_22(MEMORY[0x277D22628]);
  OUTLINED_FUNCTION_6_39();
  v19();
  sub_24E344508();
  v18 = OUTLINED_FUNCTION_24_3();
  v13(v18);
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = v22;
  OUTLINED_FUNCTION_18();
}

void sub_24E099550()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  sub_24E343FC8();
  OUTLINED_FUNCTION_2_49();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_16();
  v22 = [objc_opt_self() labelColor];
  if (qword_27F1DE090 != -1)
  {
    OUTLINED_FUNCTION_1_67(&qword_27F1DE090);
  }

  v6 = sub_24E344158();
  v7 = __swift_project_value_buffer(v6, &unk_27F20BDB0);
  type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_4_45();
  v9 = *(v8 + 16);
  v9(&v2[v10], v7, v6);
  if (qword_27F1DDF38 != -1)
  {
    OUTLINED_FUNCTION_3_53(&qword_27F1DDF38);
  }

  v21 = __swift_project_value_buffer(v6, &unk_27F20B9A8);
  v9(v0, v21, v6);
  v20 = v4[13];
  v11 = OUTLINED_FUNCTION_16_20();
  v12(v11);
  OUTLINED_FUNCTION_14_20(MEMORY[0x277D22628]);
  v23 = v4[2];
  OUTLINED_FUNCTION_6_39();
  v13();
  sub_24E344508();
  v14 = v4[1];
  v15 = OUTLINED_FUNCTION_24_3();
  v14(v15);
  v9(v0, v7, v6);
  v16 = OUTLINED_FUNCTION_5_45();
  v20(v16);
  OUTLINED_FUNCTION_11_22(MEMORY[0x277D22628]);
  OUTLINED_FUNCTION_6_39();
  v23();
  sub_24E344508();
  v17 = OUTLINED_FUNCTION_24_3();
  v14(v17);
  v9(v0, v21, v6);
  v18 = OUTLINED_FUNCTION_5_45();
  v20(v18);
  OUTLINED_FUNCTION_11_22(MEMORY[0x277D22628]);
  OUTLINED_FUNCTION_6_39();
  v23();
  sub_24E344508();
  v19 = OUTLINED_FUNCTION_24_3();
  v14(v19);
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = v22;
  OUTLINED_FUNCTION_18();
}

void sub_24E09984C()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  sub_24E343FC8();
  OUTLINED_FUNCTION_2_49();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_16();
  v27 = [objc_opt_self() secondaryLabelColor];
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
  }

  v7 = type metadata accessor for PlayerCardTheme(0);
  v8 = __swift_project_value_buffer(v7, qword_27F20BF00);
  v9 = (v8 + *(v7 + 56));
  v10 = v9[1];
  v26 = *v9;
  v11 = *(v7 + 28);
  v12 = *(type metadata accessor for TitleHeaderView.TextConfiguration(0) + 24);
  v13 = sub_24E344158();
  v14 = *(*(v13 - 8) + 16);
  v14(&v3[v12], v8 + v11, v13);
  v15 = qword_27F1DDFA0;

  if (v15 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v13, qword_27F20BAE0);
  v14(v1, v25, v13);
  v24 = *MEMORY[0x277D22618];
  v23 = v5[13];
  v16 = OUTLINED_FUNCTION_16_20();
  v17(v16);
  OUTLINED_FUNCTION_14_20(MEMORY[0x277D22628]);
  v22 = v5[2];
  OUTLINED_FUNCTION_6_39();
  v18();
  sub_24E344508();
  v19 = v5[1];
  v20 = OUTLINED_FUNCTION_24_3();
  v19(v20);
  v14(v1, v25, v13);
  v23(v1, v24, v0);
  OUTLINED_FUNCTION_11_22(MEMORY[0x277D22628]);
  OUTLINED_FUNCTION_6_39();
  v22();
  sub_24E344508();
  v21 = OUTLINED_FUNCTION_24_3();
  v19(v21);
  sub_24E098E2C();
  *v3 = v27;
  *(v3 + 1) = v26;
  *(v3 + 2) = v10;
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E099B2C@<X0>(char *a1@<X8>)
{
  sub_24E343FC8();
  OUTLINED_FUNCTION_2_49();
  v25 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_16();
  GKIsXRUIIdiomShouldUsePadUI();
  v24 = [objc_opt_self() labelColor];
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
  }

  v6 = type metadata accessor for PlayerCardTheme(0);
  v7 = (__swift_project_value_buffer(v6, qword_27F20BF00) + *(v6 + 56));
  v22 = *v7;
  v23 = v7[1];
  v8 = qword_27F1DE090;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_1_67(&qword_27F1DE090);
  }

  v9 = sub_24E344158();
  v10 = __swift_project_value_buffer(v9, &unk_27F20BDB0);
  v28 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v11 = *(*(v9 - 8) + 16);
  v11(&a1[*(v28 + 24)], v10, v9);
  v11(v2, v10, v9);
  v29 = v25[13];
  v12 = OUTLINED_FUNCTION_16_20();
  v13(v12);
  v31 = v1;
  v32 = MEMORY[0x277D22628];
  __swift_allocate_boxed_opaque_existential_1(v30);
  v27 = v25[2];
  OUTLINED_FUNCTION_6_39();
  v14();
  sub_24E344508();
  v26 = v25[1];
  v15 = OUTLINED_FUNCTION_24_3();
  v16(v15);
  v11(v2, v10, v9);
  v17 = OUTLINED_FUNCTION_5_45();
  v29(v17);
  v31 = v1;
  OUTLINED_FUNCTION_17_16(MEMORY[0x277D22628]);
  OUTLINED_FUNCTION_6_39();
  v27();
  sub_24E344508();
  v18 = OUTLINED_FUNCTION_24_3();
  v26(v18);
  v11(v2, v10, v9);
  v19 = OUTLINED_FUNCTION_5_45();
  v29(v19);
  v31 = v1;
  OUTLINED_FUNCTION_17_16(MEMORY[0x277D22628]);
  OUTLINED_FUNCTION_6_39();
  v27();
  sub_24E344508();
  v20 = OUTLINED_FUNCTION_24_3();
  result = (v26)(v20);
  *a1 = v24;
  *(a1 + 1) = v22;
  *(a1 + 2) = v23;
  return result;
}

void sub_24E099EA0()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  sub_24E343FC8();
  OUTLINED_FUNCTION_2_49();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_16();
  v20 = [objc_opt_self() labelColor];
  if (qword_27F1DE090 != -1)
  {
    OUTLINED_FUNCTION_1_67(&qword_27F1DE090);
  }

  v7 = sub_24E344158();
  v19 = __swift_project_value_buffer(v7, &unk_27F20BDB0);
  type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_4_45();
  v9 = *(v8 + 16);
  OUTLINED_FUNCTION_9_30();
  v9();
  OUTLINED_FUNCTION_9_30();
  v9();
  v18 = *MEMORY[0x277D22618];
  v17 = v5[13];
  v10 = OUTLINED_FUNCTION_16_20();
  v11(v10);
  OUTLINED_FUNCTION_14_20(MEMORY[0x277D22628]);
  v16 = v5[2];
  OUTLINED_FUNCTION_6_39();
  v12();
  sub_24E344508();
  v13 = v5[1];
  v14 = OUTLINED_FUNCTION_24_3();
  v13(v14);
  (v9)(v1, v19, v7);
  v17(v1, v18, v0);
  OUTLINED_FUNCTION_11_22(MEMORY[0x277D22628]);
  OUTLINED_FUNCTION_6_39();
  v16();
  sub_24E344508();
  v15 = OUTLINED_FUNCTION_24_3();
  v13(v15);
  sub_24E098E2C();
  v3[1] = 0;
  v3[2] = 0;
  *v3 = v20;
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E09A0F8@<X0>(void *a1@<X8>)
{
  sub_24E343FC8();
  OUTLINED_FUNCTION_2_49();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_16();
  if (qword_27F1DDB90 != -1)
  {
    swift_once();
  }

  if (qword_27F1DDB88 != -1)
  {
    swift_once();
  }

  v22 = [objc_opt_self() labelColor];
  if (qword_27F1DE090 != -1)
  {
    OUTLINED_FUNCTION_1_67(&qword_27F1DE090);
  }

  v6 = sub_24E344158();
  __swift_project_value_buffer(v6, &unk_27F20BDB0);
  type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_4_45();
  v8 = *(v7 + 16);
  OUTLINED_FUNCTION_9_30();
  v8();
  if (qword_27F1DDF38 != -1)
  {
    OUTLINED_FUNCTION_3_53(&qword_27F1DDF38);
  }

  __swift_project_value_buffer(v6, &unk_27F20B9A8);
  v9 = OUTLINED_FUNCTION_10_27();
  (v8)(v9);
  v10 = *MEMORY[0x277D22618];
  v21 = v4[13];
  v20 = *MEMORY[0x277D22618];
  v21(v2, v10, v1);
  v26 = v1;
  v27 = MEMORY[0x277D22628];
  __swift_allocate_boxed_opaque_existential_1(v25);
  v23 = v4[2];
  OUTLINED_FUNCTION_6_39();
  v11();
  sub_24E344508();
  v12 = v4[1];
  v13 = OUTLINED_FUNCTION_24_3();
  v14(v13);
  v15 = OUTLINED_FUNCTION_10_27();
  (v8)(v15);
  v21(v2, v10, v1);
  v26 = v1;
  OUTLINED_FUNCTION_17_16(MEMORY[0x277D22628]);
  OUTLINED_FUNCTION_6_39();
  v23();
  sub_24E344508();
  v16 = OUTLINED_FUNCTION_24_3();
  v12(v16);
  v17 = OUTLINED_FUNCTION_10_27();
  (v8)(v17);
  v21(v2, v20, v1);
  v26 = v1;
  OUTLINED_FUNCTION_17_16(MEMORY[0x277D22628]);
  OUTLINED_FUNCTION_6_39();
  v23();
  sub_24E344508();
  v18 = OUTLINED_FUNCTION_24_3();
  result = (v12)(v18);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = v22;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_67(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_53(uint64_t a1)
{

  return swift_once();
}

uint64_t *OUTLINED_FUNCTION_11_22@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 120));
}

uint64_t *OUTLINED_FUNCTION_14_20@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 120));
}

uint64_t OUTLINED_FUNCTION_15_18@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  result = v2;
  *(v3 - 140) = a1;
  *(v3 - 152) = a2;
  return result;
}

uint64_t *OUTLINED_FUNCTION_17_16@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 104) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 136));
}

uint64_t type metadata accessor for AchievementDetailHeaderView(uint64_t a1)
{
  result = qword_27F1E2BB8;
  if (!qword_27F1E2BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E09A618(uint64_t a1)
{
  result = type metadata accessor for Achievement(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E09A6B8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24E345D08();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2BC8, &qword_24E373C20);
  return sub_24E09A70C(v2, (a1 + *(v4 + 44)));
}

uint64_t sub_24E09A70C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v138 = a2;
  v3 = sub_24E346E88();
  v131 = *(v3 - 8);
  v132 = v3;
  MEMORY[0x28223BE20](v3);
  v129 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2BD0, &qword_24E373C28);
  MEMORY[0x28223BE20](v127);
  v111 = &v108 - v5;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2BD8, &qword_24E373C30);
  MEMORY[0x28223BE20](v130);
  v137 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v128 = &v108 - v8;
  MEMORY[0x28223BE20](v9);
  v145 = &v108 - v10;
  v11 = a1[9];
  v12 = a1[10];
  v13 = a1[11];
  *&v117 = type metadata accessor for AchievementDetailHeaderView(0);
  v14 = a1 + *(v117 + 24);
  v15 = *(v14 + 6);
  v16 = *(v14 + 7);
  v149 = v12;
  v150 = v11;
  v148 = v13;
  sub_24E09B300(v11, v12, v13);
  if (qword_27F1DDB68 != -1)
  {
    swift_once();
  }

  v143 = unk_27F1E9318;
  v144 = qword_27F1E9310;
  v142 = qword_27F1E9320;
  v146 = v16;
  v147 = v15;
  sub_24E346E28();
  sub_24E3453D8();
  sub_24E346E28();
  sub_24E3457F8();
  v141 = sub_24E3461F8();
  sub_24E3451B8();
  v135 = v18;
  v136 = v17;
  v133 = v20;
  v134 = v19;
  v197 = 0;
  v21 = a1[6];
  *&v168[0] = a1[5];
  *(&v168[0] + 1) = v21;
  v116 = sub_24DF90C4C();

  v22 = sub_24E3464E8();
  v24 = v23;
  v26 = v25;
  v27 = sub_24E3464B8();
  v29 = v28;
  v31 = v30;
  *&v139 = a1;
  sub_24DFA92EC(v22, v24, v26 & 1);

  v32 = sub_24E346468();
  v125 = v33;
  v126 = v32;
  v35 = v34;
  v140 = v36;
  sub_24DFA92EC(v27, v29, v31 & 1);

  KeyPath = swift_getKeyPath();
  v124 = sub_24E3461F8();
  sub_24E3451B8();
  v121 = v38;
  v122 = v37;
  v119 = v40;
  v120 = v39;
  v118 = v35 & 1;
  v190 = v35 & 1;
  v186[160] = 0;
  sub_24E346E28();
  sub_24E3457F8();
  memcpy(&v191[7], v198, 0x70uLL);
  v41 = *(v139 + 64);
  *&v168[0] = *(v139 + 56);
  *(&v168[0] + 1) = v41;

  v42 = sub_24E3464E8();
  v44 = v43;
  v46 = v45;
  v47 = sub_24E3464B8();
  v49 = v48;
  LOBYTE(v29) = v50;
  sub_24DFA92EC(v42, v44, v46 & 1);

  v51 = sub_24E346468();
  v53 = v52;
  LOBYTE(v42) = v54;
  v56 = v55;
  sub_24DFA92EC(v47, v49, v29 & 1);

  v57 = swift_getKeyPath();
  sub_24E346E28();
  sub_24E3457F8();
  v186[120] = v42 & 1;
  memcpy(&v186[7], v199, 0x70uLL);
  LODWORD(v49) = v42 & 1;
  LODWORD(v42) = sub_24E346208();
  sub_24E3451B8();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v186[128] = 0;
  LODWORD(v29) = sub_24E3461F8();
  sub_24E3451B8();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v186[136] = 0;
  v74 = *(v139 + *(v117 + 20));
  v115 = v57;
  v116 = v56;
  v113 = v49;
  v114 = v42;
  v112 = v29;
  v75 = v53;
  v76 = v51;
  if (v74)
  {
    v77 = v111;
    if (qword_27F1DD740 != -1)
    {
      swift_once();
    }

    memcpy(v168, &qword_27F20AC30, 0x78uLL);
    v78 = *&v168[7];
    v79 = BYTE9(v168[6]);
    v80 = BYTE8(v168[6]);
    v139 = *(&v168[5] + 8);
    v117 = *(&v168[4] + 8);
    v109 = v168[1];
    v110 = *(&v168[3] + 8);
    v108 = v168[0];
    v81 = *(&v168[2] + 1);
    v82 = *&v168[2];
    v83 = v168[3];
    sub_24E002674(v168, v151);
  }

  else
  {
    if (qword_27F1DD738 != -1)
    {
      swift_once();
    }

    memcpy(v168, &qword_27F20ABB8, 0x78uLL);
    v78 = *&v168[7];
    v79 = BYTE9(v168[6]);
    v80 = BYTE8(v168[6]);
    v139 = *(&v168[5] + 8);
    v117 = *(&v168[4] + 8);
    v109 = v168[1];
    v110 = *(&v168[3] + 8);
    v108 = v168[0];
    v81 = *(&v168[2] + 1);
    v82 = *&v168[2];
    v83 = v168[3];
    sub_24E002674(v168, v151);
    v77 = v111;
  }

  v176[0] = v108;
  v176[1] = v109;
  v177 = v82;
  v178 = v81;
  v179 = v83;
  v180 = v110;
  v181 = v117;
  v182 = v139;
  v183 = v80;
  v184 = v79;
  v185 = v78;
  sub_24E0026D0(v176);
  v85 = v131;
  v84 = v132;
  v86 = MEMORY[0x277CE13B8];
  if (!v80)
  {
    v86 = MEMORY[0x277CE13D8];
  }

  v87 = v129;
  (*(v131 + 104))(v129, *v86, v132);
  (*(v85 + 32))(v77 + *(v127 + 36), v87, v84);
  *v77 = v76;
  *(v77 + 8) = v75;
  *(v77 + 16) = v113;
  v88 = v115;
  *(v77 + 24) = v116;
  *(v77 + 32) = v88;
  *(v77 + 40) = 1;
  memcpy((v77 + 41), v186, 0x77uLL);
  *(v77 + 160) = v114;
  *(v77 + 168) = v59;
  *(v77 + 176) = v61;
  *(v77 + 184) = v63;
  *(v77 + 192) = v65;
  *(v77 + 200) = 0;
  *(v77 + 208) = v112;
  *(v77 + 216) = v67;
  *(v77 + 224) = v69;
  *(v77 + 232) = v71;
  *(v77 + 240) = v73;
  *(v77 + 248) = 0;
  v89 = v128;
  sub_24DFB4B20(v77, v128, &qword_27F1E2BD0, &qword_24E373C28);
  *(v89 + *(v130 + 36)) = 256;
  v90 = v145;
  sub_24DFB4B20(v89, v145, &qword_27F1E2BD8, &qword_24E373C30);
  v91 = v137;
  sub_24DFAE87C(v90, v137, &qword_27F1E2BD8, &qword_24E373C30);
  *&v151[0] = v150;
  *(&v151[0] + 1) = v149;
  *&v151[1] = v148;
  *(&v151[1] + 1) = v147;
  *&v151[2] = v146;
  *(&v151[2] + 1) = v144;
  *&v151[3] = v143;
  *(&v151[3] + 1) = v142;
  v151[4] = v194;
  v151[5] = v195;
  v151[6] = v196;
  memcpy(&v151[7], v193, 0x70uLL);
  LOBYTE(v151[14]) = v141;
  *(&v151[14] + 1) = *v192;
  DWORD1(v151[14]) = *&v192[3];
  v93 = v135;
  v92 = v136;
  *(&v151[14] + 1) = v136;
  *&v151[15] = v135;
  v94 = v133;
  v95 = v134;
  *(&v151[15] + 1) = v134;
  *&v151[16] = v133;
  BYTE8(v151[16]) = 0;
  v96 = v138;
  memcpy(v138, v151, 0x109uLL);
  v98 = v125;
  v97 = v126;
  v152[0] = v126;
  v152[1] = v125;
  v99 = v118;
  LOBYTE(v152[2]) = v118;
  *(&v152[2] + 1) = *v189;
  HIDWORD(v152[2]) = *&v189[3];
  v152[3] = v140;
  v100 = KeyPath;
  v152[4] = KeyPath;
  LOBYTE(v152[5]) = 1;
  *(&v152[5] + 1) = *v188;
  HIDWORD(v152[5]) = *&v188[3];
  v101 = v124;
  LOBYTE(v152[6]) = v124;
  *(&v152[6] + 1) = *v187;
  HIDWORD(v152[6]) = *&v187[3];
  v103 = v121;
  v102 = v122;
  v152[7] = v122;
  v152[8] = v121;
  v105 = v119;
  v104 = v120;
  v152[9] = v120;
  v152[10] = v119;
  LOBYTE(v152[11]) = 0;
  memcpy(&v152[11] + 1, v191, 0x77uLL);
  memcpy(v96 + 272, v152, 0xD0uLL);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2BE0, &qword_24E373C68);
  sub_24DFAE87C(v91, &v96[*(v106 + 64)], &qword_27F1E2BD8, &qword_24E373C30);
  sub_24DFAE87C(v151, v168, &qword_27F1E2BE8, &qword_24E373C70);
  sub_24DFAE87C(v152, v168, &qword_27F1E2BF0, &qword_24E373C78);
  sub_24DF8BFF4(v145, &qword_27F1E2BD8, &qword_24E373C30);
  sub_24DF8BFF4(v91, &qword_27F1E2BD8, &qword_24E373C30);
  v153[0] = v97;
  v153[1] = v98;
  v154 = v99;
  *v155 = *v189;
  *&v155[3] = *&v189[3];
  v156 = v140;
  v157 = v100;
  v158 = 1;
  *v159 = *v188;
  *&v159[3] = *&v188[3];
  v160 = v101;
  *v161 = *v187;
  *&v161[3] = *&v187[3];
  v162 = v102;
  v163 = v103;
  v164 = v104;
  v165 = v105;
  v166 = 0;
  memcpy(v167, v191, sizeof(v167));
  sub_24DF8BFF4(v153, &qword_27F1E2BF0, &qword_24E373C78);
  *&v168[0] = v150;
  *(&v168[0] + 1) = v149;
  *&v168[1] = v148;
  *(&v168[1] + 1) = v147;
  *&v168[2] = v146;
  *(&v168[2] + 1) = v144;
  *&v168[3] = v143;
  *(&v168[3] + 1) = v142;
  v168[4] = v194;
  v168[5] = v195;
  v168[6] = v196;
  memcpy(&v168[7], v193, 0x70uLL);
  v169 = v141;
  *v170 = *v192;
  *&v170[3] = *&v192[3];
  v171 = v92;
  v172 = v93;
  v173 = v95;
  v174 = v94;
  v175 = 0;
  return sub_24DF8BFF4(v168, &qword_27F1E2BE8, &qword_24E373C70);
}

double sub_24E09B300(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 1)
  {
  }

  return result;
}

unint64_t sub_24E09B34C()
{
  result = qword_27F1E2BF8;
  if (!qword_27F1E2BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E2C00, &qword_24E373C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2BF8);
  }

  return result;
}

uint64_t sub_24E09B3B0()
{
  swift_getObjectType();
  result = sub_24E324668();
  if ((result & 1) == 0)
  {

    return sub_24E327150();
  }

  return result;
}

id sub_24E09B41C()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:-1 scale:60.0];
  v2 = [objc_opt_self() systemBlueColor];
  v3 = [v0 configurationWithHierarchicalColor_];

  v4 = [v3 configurationByApplyingConfiguration_];
  sub_24DFC2C38();
  v5 = v4;
  v6 = sub_24E0AC60C(0xD000000000000026, 0x800000024E3A49D0, v4);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_24E224BDC(0xD000000000000037, 0x800000024E3A4A00, v8);
  }

  return v7;
}

id sub_24E09B564()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  sub_24E343AA8();
  v2 = sub_24E343938();
  sub_24DFA0B40(v2, v3, v0);
  type metadata accessor for OnboardingTemplateView();
  if (sub_24E324668())
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [v0 setTextAlignment_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v5 setLayoutMarginsRelativeArrangement_];
  [v5 addArrangedSubview_];
  sub_24DFD8050(0xD000000000000038, 0x800000024E3A4990, v5);

  return v5;
}

id sub_24E09B6BC()
{
  v0 = [objc_opt_self() boldButton];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 widthAnchor];
  v2 = [v1 constraintGreaterThanOrEqualToConstant_];

  [v2 setActive_];
  v3 = sub_24E347CB8();
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = OUTLINED_FUNCTION_1_12(v4);

  sub_24E347CF8();
  OUTLINED_FUNCTION_1_68();
  sub_24DFD8050(0xD00000000000003BLL, 0x800000024E3A4950, v0);

  return v0;
}

id sub_24E09B7FC()
{
  v0 = [objc_opt_self() linkButton];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 widthAnchor];
  v2 = [v1 constraintGreaterThanOrEqualToConstant_];

  [v2 setActive_];
  v3 = sub_24E347CB8();
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = OUTLINED_FUNCTION_1_12(v4);

  sub_24E347CF8();
  OUTLINED_FUNCTION_1_68();
  sub_24DFD8050(0xD00000000000003DLL, 0x800000024E3A4910, v0);

  return v0;
}

void sub_24E09B944()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI30ContactsIntegrationConsentView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC12GameCenterUI30ContactsIntegrationConsentView_iconImage;
  *(v0 + v1) = sub_24E09B41C();
  v2 = OBJC_IVAR____TtC12GameCenterUI30ContactsIntegrationConsentView_detailView;
  *(v0 + v2) = sub_24E09B564();
  v3 = OBJC_IVAR____TtC12GameCenterUI30ContactsIntegrationConsentView_primaryTrayButton;
  *(v0 + v3) = sub_24E09B6BC();
  v4 = OBJC_IVAR____TtC12GameCenterUI30ContactsIntegrationConsentView_secondaryTrayButton;
  *(v0 + v4) = sub_24E09B7FC();
  sub_24E348AE8();
  __break(1u);
}

id sub_24E09BA20(char a1)
{
  [*(v1 + OBJC_IVAR____TtC12GameCenterUI30ContactsIntegrationConsentView_primaryTrayButton) setEnabled_];
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI30ContactsIntegrationConsentView_secondaryTrayButton);

  return [v3 setEnabled_];
}

void sub_24E09BAE8(uint64_t a1, uint64_t a2)
{
  sub_24E09BA20(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_24E31FCC0(a1, a2, v5);
  }
}

void sub_24E09BBB0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_24E09BA20(1);
  }
}

void sub_24E09BD78()
{
  sub_24DE73F0C(v0 + OBJC_IVAR____TtC12GameCenterUI30ContactsIntegrationConsentView_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI30ContactsIntegrationConsentView_secondaryTrayButton);
}

void OUTLINED_FUNCTION_1_68()
{

  sub_24E2BE6B4(v1, v2, 0, v0);
}

uint64_t sub_24E09BEC8(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
LABEL_52:
    v2 = sub_24E348878();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v48 = v1 & 0xC000000000000001;
      v46 = v1 & 0xFFFFFFFFFFFFFF8;
      v4 = MEMORY[0x277D84F98];
      v47 = v2;
      while (1)
      {
        if (v48)
        {
          v5 = MEMORY[0x25303F560](v3, v1);
        }

        else
        {
          if (v3 >= *(v46 + 16))
          {
            goto LABEL_47;
          }

          v5 = *(v1 + 8 * v3 + 32);
        }

        v6 = v5;
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v8 = [v5 issuingPlayer];
        if (v8)
        {
          break;
        }

LABEL_31:
        ++v3;
        if (v7 == v2)
        {
          v49 = sub_24E09C82C(v4);
          sub_24E09CAD4(&v49);
          if (v49[2])
          {
            v30 = v49[5];
            v31 = v49[4];

            sub_24E077B94(0, 1, 1, MEMORY[0x277D84F90]);
            v33 = v32;
            v35 = *(v32 + 16);
            v34 = *(v32 + 24);
            if (v35 >= v34 >> 1)
            {
              sub_24E077B94(v34 > 1, v35 + 1, 1, v32);
              v33 = v43;
            }

            *(v33 + 16) = v35 + 1;
            v36 = v33 + 24 * v35;
            *(v36 + 32) = v30;
            *(v36 + 40) = v31;
            *(v36 + 48) = 0;
          }

          else
          {

            v33 = MEMORY[0x277D84F90];
          }

          v37 = sub_24DFD8654();
          v38 = v37;
          if (!v37 || v37 >= 2)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_24E077B94(0, *(v33 + 16) + 1, 1, v33);
              v33 = v44;
            }

            v40 = *(v33 + 16);
            v39 = *(v33 + 24);
            if (v40 >= v39 >> 1)
            {
              sub_24E077B94(v39 > 1, v40 + 1, 1, v33);
              v33 = v45;
            }

            *(v33 + 16) = v40 + 1;
            v41 = v33 + 24 * v40;
            *(v41 + 32) = v38;
            *(v41 + 40) = 0;
            *(v41 + 48) = 1;
          }

          return v33;
        }
      }

      v9 = v8;
      v10 = v1;
      if (v4[2] && (sub_24E26AEA0(), (v11 & 1) != 0))
      {
        swift_isUniquelyReferenced_nonNull_native();
        v49 = v4;
        sub_24E26AEA0();
        OUTLINED_FUNCTION_1_69();
        if (v14)
        {
          goto LABEL_49;
        }

        v1 = v12;
        v15 = v13;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2C30, &qword_24E373CD8);
        if (OUTLINED_FUNCTION_4_46(v16))
        {
          v17 = sub_24E26AEA0();
          if ((v15 & 1) != (v18 & 1))
          {
            goto LABEL_55;
          }

          v1 = v17;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_50;
        }

        v4 = v49;
        v19 = v49[7];
        v20 = *(v19 + 8 * v1);
        v14 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v14)
        {
          goto LABEL_51;
        }
      }

      else
      {
        swift_isUniquelyReferenced_nonNull_native();
        v49 = v4;
        sub_24E26AEA0();
        OUTLINED_FUNCTION_1_69();
        if (v14)
        {
          goto LABEL_46;
        }

        v1 = v22;
        v24 = v23;
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2C30, &qword_24E373CD8);
        if (OUTLINED_FUNCTION_4_46(v25))
        {
          v26 = sub_24E26AEA0();
          if ((v24 & 1) != (v27 & 1))
          {
LABEL_55:
            sub_24DF88A8C(0, &qword_27F1DF028, 0x277D0C170);
            sub_24E348C98();
            __break(1u);

            __break(1u);
            return result;
          }

          v1 = v26;
        }

        v4 = v49;
        if ((v24 & 1) == 0)
        {
          v49[(v1 >> 6) + 8] |= 1 << v1;
          *(v4[6] + 8 * v1) = v9;
          *(v4[7] + 8 * v1) = 1;

          v28 = v4[2];
          v14 = __OFADD__(v28, 1);
          v29 = v28 + 1;
          if (v14)
          {
            goto LABEL_48;
          }

          v4[2] = v29;
          goto LABEL_30;
        }

        v19 = v49[7];
        v21 = 1;
      }

      *(v19 + 8 * v1) = v21;

LABEL_30:
      v1 = v10;
      v2 = v47;
      goto LABEL_31;
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_24E09C2D8(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v6 = OUTLINED_FUNCTION_2_50();
    v7 = GKGameCenterUIFrameworkBundle();
    v8 = GKGetLocalizedStringFromTableInBundle();

    v9 = sub_24E347CF8();
    v11 = v10;

    v12 = sub_24E347CB8();
    v13 = GKGameCenterUIFrameworkBundle();
    v14 = OUTLINED_FUNCTION_23_4(v13);

    sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D83B88];
    *(v15 + 16) = xmmword_24E367D20;
    v17 = MEMORY[0x277D83C10];
    *(v15 + 56) = v16;
    *(v15 + 64) = v17;
    *(v15 + 32) = a1;
    v18 = sub_24E347D18();
    v20 = v19;

    *a4 = v9;
    *(a4 + 8) = v11;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 16) = 0;
    v21 = 8;
  }

  else
  {
    v23 = [objc_allocWithZone(GKDashboardPlayerPhotoView) init];
    [v23 setPlayer_];
    v24 = sub_24E347CB8();
    v25 = GKGameCenterUIFrameworkBundle();
    v26 = OUTLINED_FUNCTION_23_4(v25);

    sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D83B88];
    v29 = MEMORY[0x277D83C10];
    *(v27 + 16) = xmmword_24E36A270;
    *(v27 + 56) = v28;
    *(v27 + 64) = v29;
    *(v27 + 32) = a1;
    v30 = [a2 alias];
    v31 = sub_24E347CF8();
    v33 = v32;

    *(v27 + 96) = MEMORY[0x277D837D0];
    *(v27 + 104) = sub_24DF95A7C();
    *(v27 + 72) = v31;
    *(v27 + 80) = v33;
    v18 = sub_24E347D18();
    v20 = v34;

    v35 = OUTLINED_FUNCTION_2_50();
    v36 = GKGameCenterUIFrameworkBundle();
    v37 = GKGetLocalizedStringFromTableInBundle();

    v38 = sub_24E347CF8();
    v40 = v39;

    *a4 = v38;
    *(a4 + 8) = v40;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 16) = v23;
    v21 = 5;
  }

  *(a4 + 40) = v21;
  *(a4 + 48) = v18;
  *(a4 + 56) = v20;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0xE000000000000000;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0xE000000000000000;
  *(a4 + 104) = 0;
}

void sub_24E09C664(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2C40, &qword_24E373DA8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_0(v7);
      OUTLINED_FUNCTION_0_79(v8);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_24E09C738(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size_0(v11);
      v11[2] = v7;
      v11[3] = (2 * ((v12 - 32) / 8)) | 1;
    }

    if (v6 != a3)
    {
      sub_24DF88A8C(0, a5, a6);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_24E09C82C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_24E078BC0(*(a1 + 16), 0);
  v4 = sub_24E09D440(&v6, v3 + 4, v1, a1);

  sub_24DFFCE68();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_24E09C914(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void), uint64_t (*a6)(void))
{
  v6 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    a5((a4 >> 1) - a3, 0);
    if (v6 != a3)
    {
      a6(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_24E09CA00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2530, &unk_24E372BC0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_0(v7);
      OUTLINED_FUNCTION_0_79(v8);
    }

    if (v4 != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2538, &unk_24E373CF0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_24E09CAD4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_24E0842C4(v2);
    v2 = v3;
  }

  v4 = v2[2];
  v6[0] = (v2 + 4);
  v6[1] = v4;
  result = sub_24E09CB40(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_24E09CB40(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24E348B98();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2C38, &unk_24E373CE0);
        v6 = sub_24E347F68();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_24E09CCB4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_24E09CC44(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24E09CC44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3 + 8);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 1) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        *v9 = *(v9 - 1);
        *(v9 - 1) = v7;
        *(v9 - 2) = v10;
        v9 -= 2;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_24E09CCB4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v87 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v82 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9 + 8);
        v11 = *a3 + 16 * v7;
        v12 = 16 * v7;
        v13 = *(v11 + 8);
        v14 = (v11 + 40);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 2;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 16 * v6;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = v23 + v20;
                v26 = *v24;
                v27 = v24[1];
                *v24 = *(v25 - 16);
                *(v25 - 16) = v26;
                *(v25 - 8) = v27;
              }

              ++v22;
              v20 -= 16;
              v12 += 16;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v28 = *a3;
            v29 = *a3 + 16 * v9;
            v30 = v7 - v9;
            do
            {
              v31 = *(v28 + 16 * v9 + 8);
              v32 = v30;
              v33 = v29;
              do
              {
                if (*(v33 - 1) >= v31)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_111;
                }

                v34 = *v33;
                *v33 = *(v33 - 1);
                *(v33 - 1) = v31;
                *(v33 - 2) = v34;
                v33 -= 2;
              }

              while (!__CFADD__(v32++, 1));
              ++v9;
              v29 += 16;
              --v30;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v84 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E076FA4(0, *(v8 + 16) + 1, 1, v8);
        v8 = v80;
      }

      v37 = *(v8 + 16);
      v36 = *(v8 + 24);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        sub_24E076FA4(v36 > 1, v37 + 1, 1, v8);
        v8 = v81;
      }

      *(v8 + 16) = v38;
      v39 = v8 + 32;
      v40 = (v8 + 32 + 16 * v37);
      *v40 = v7;
      v40[1] = v9;
      v85 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v37)
      {
        while (1)
        {
          v41 = v38 - 1;
          v42 = (v39 + 16 * (v38 - 1));
          v43 = (v8 + 16 * v38);
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v44 = *(v8 + 32);
            v45 = *(v8 + 40);
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_56:
            if (v47)
            {
              goto LABEL_96;
            }

            v59 = *v43;
            v58 = v43[1];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_99;
            }

            v63 = v42[1];
            v64 = v63 - *v42;
            if (__OFSUB__(v63, *v42))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v61, v64))
            {
              goto LABEL_104;
            }

            if (v61 + v64 >= v46)
            {
              if (v46 < v64)
              {
                v41 = v38 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v38 < 2)
          {
            goto LABEL_98;
          }

          v66 = *v43;
          v65 = v43[1];
          v54 = __OFSUB__(v65, v66);
          v61 = v65 - v66;
          v62 = v54;
LABEL_71:
          if (v62)
          {
            goto LABEL_101;
          }

          v68 = *v42;
          v67 = v42[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_103;
          }

          if (v69 < v61)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v41 - 1 >= v38)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v73 = (v39 + 16 * (v41 - 1));
          v74 = *v73;
          v75 = (v39 + 16 * v41);
          v76 = v75[1];
          sub_24E09D2BC((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v85);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v76 < v74)
          {
            goto LABEL_91;
          }

          v77 = v8;
          v78 = *(v8 + 16);
          if (v41 > v78)
          {
            goto LABEL_92;
          }

          *v73 = v74;
          v73[1] = v76;
          if (v41 >= v78)
          {
            goto LABEL_93;
          }

          v38 = v78 - 1;
          memmove((v39 + 16 * v41), v75 + 2, 16 * (v78 - 1 - v41));
          *(v77 + 16) = v78 - 1;
          v79 = v78 > 2;
          v8 = v77;
          v5 = 0;
          if (!v79)
          {
            goto LABEL_85;
          }
        }

        v48 = v39 + 16 * v38;
        v49 = *(v48 - 64);
        v50 = *(v48 - 56);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_94;
        }

        v53 = *(v48 - 48);
        v52 = *(v48 - 40);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_95;
        }

        v55 = v43[1];
        v56 = v55 - *v43;
        if (__OFSUB__(v55, *v43))
        {
          goto LABEL_97;
        }

        v54 = __OFADD__(v46, v56);
        v57 = v46 + v56;
        if (v54)
        {
          goto LABEL_100;
        }

        if (v57 >= v51)
        {
          v71 = *v42;
          v70 = v42[1];
          v54 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v54)
          {
            goto LABEL_105;
          }

          if (v46 < v72)
          {
            v41 = v38 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v84;
      a4 = v82;
      if (v84 >= v6)
      {
        v87 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_24E09D190(&v87, *a1, a3);
LABEL_89:
}

void sub_24E09D190(char **a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v5 = sub_24E081A20(v5);
  }

  v13 = v4;
  *v4 = v5;
  v6 = (v5 + 16);
  for (i = *(v5 + 2); ; *v6 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v13 = v5;
      return;
    }

    if (!*a3)
    {
      break;
    }

    v8 = &v5[16 * i];
    v9 = *v8;
    v10 = &v6[2 * i];
    v11 = v10[1];
    sub_24E09D2BC((*a3 + 16 * *v8), (*a3 + 16 * *v10), (*a3 + 16 * v11), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v11 < v9)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v6)
    {
      goto LABEL_12;
    }

    *v8 = v9;
    *(v8 + 1) = v11;
    v12 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    memmove(v10, v10 + 2, 16 * v12);
  }

  *v13 = v5;
  __break(1u);
}

uint64_t sub_24E09D2BC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_24DE73F60(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v4 + 1) >= *(v6 + 1))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_24DE73F60(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v15 = v6 - 16;
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v15;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

void *sub_24E09D440(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (v15 << 9) | (8 * __clz(__rbit64(v9)));
      v17 = *(*(a4 + 48) + v16);
      v18 = *(*(a4 + 56) + v16);
      v9 &= v9 - 1;
      *v11 = v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        v19 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;
      result = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24E09D5A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_24E09D5E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t OUTLINED_FUNCTION_0_79(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_50()
{

  return sub_24E347CB8();
}

uint64_t OUTLINED_FUNCTION_4_46(uint64_t a1)
{

  return sub_24E348AB8();
}

uint64_t sub_24E09D6B4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24E09D6F4(uint64_t result, int a2, int a3)
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

id sub_24E09D748()
{
  type metadata accessor for SmallFriendLockupView();
  v2 = 1;
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_24E1E4A64(&v2);

  return v0;
}

uint64_t sub_24E09D7A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFFE0, &unk_24E373EF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for SmallFriendLockupData(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E09D8E4(a3, v8, a5, a6, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    return sub_24E09DE40(v12);
  }

  sub_24DFDBC54(v12, v15, v16);
  sub_24E1E53C4(v15);
  return sub_24DFDBCB8(v15, v18);
}

uint64_t sub_24E09D8E4@<X0>(void *a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a3;
  v47 = a4;
  v8 = sub_24E3433A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v42 - v14;
  v16 = [a1 contact];
  v17 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithContact_];

  if (v17)
  {
    v18 = objc_opt_self();
    v19 = [a1 contact];
    v20 = [v18 stringFromContact:v19 style:0];

    if (v20)
    {
      v21 = sub_24E347CF8();
      v44 = v22;
      v45 = v21;
    }

    else
    {
      v44 = 0xE000000000000000;
      v45 = 0;
    }

    sub_24E343AA8();
    v25 = sub_24E3436D8();
    v27 = v26;
    if (a2)
    {
      LODWORD(v47) = 1;
      v46 = 0xE90000000000006BLL;
      v42 = v25;
      v43 = 0x72616D6B63656863;
    }

    else
    {
      v42 = v26;
      v28 = v25;
      v29 = swift_allocObject();
      *(v29 + 16) = a1;
      *(v29 + 24) = 0;
      v30 = v47;
      *(v29 + 32) = v46;
      *(v29 + 40) = v30;
      v31 = a1;

      LODWORD(v47) = 0;
      v46 = v42;
      v42 = sub_24E09DEA8;
      v43 = v28;
      v27 = v29;
    }

    v32 = [v17 internal];
    v33 = [a1 supportsFriendingViaPush];
    *(a5 + 104) = 0u;
    v34 = v33 ^ 1;
    *(a5 + 120) = 0u;
    *(a5 + 136) = 0;
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    v35 = v17;
    sub_24E343398();
    (*(v9 + 16))(v11, v15, v8);
    sub_24DFDC008();
    sub_24E348918();

    (*(v9 + 8))(v15, v8);
    v36 = type metadata accessor for SmallFriendLockupData(0);
    *(a5 + 160) = 0u;
    *(a5 + 176) = 0;
    *(a5 + 144) = 0u;
    *(a5 + 256) = 0u;
    *(a5 + 272) = 0;
    *(a5 + 240) = 0u;
    v37 = *(v36 + 56);
    v38 = sub_24E3474B8();
    __swift_storeEnumTagSinglePayload(a5 + v37, 1, 1, v38);
    v39 = *(v36 + 60);
    v40 = v44;
    *(a5 + 40) = v45;
    *(a5 + 48) = v40;
    *(a5 + 56) = 0;
    *(a5 + 64) = 0;
    *(a5 + 72) = v32;
    *(a5 + 80) = 0;
    *(a5 + 88) = 0;
    sub_24DFE981C(v50, a5 + 144);
    v41 = v46;
    *(a5 + 184) = v43;
    *(a5 + 192) = v41;
    *(a5 + 200) = v42;
    *(a5 + 208) = v27;
    *(a5 + 216) = 0;
    *(a5 + 224) = 0;
    *(a5 + 232) = v47;
    sub_24DFE981C(v48, a5 + 240);
    *(a5 + v39) = v17;
    *(a5 + 96) = v34;
    return __swift_storeEnumTagSinglePayload(a5, 0, 1, v36);
  }

  else
  {
    v23 = type metadata accessor for SmallFriendLockupData(0);

    return __swift_storeEnumTagSinglePayload(a5, 1, 1, v23);
  }
}

uint64_t sub_24E09DCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E09DDEC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24E09DD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E09DDEC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24E09DDC4(uint64_t a1)
{
  sub_24E09DDEC();
  sub_24E345E08();
  __break(1u);
}

unint64_t sub_24E09DDEC()
{
  result = qword_27F1E2C48;
  if (!qword_27F1E2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2C48);
  }

  return result;
}

uint64_t sub_24E09DE40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFFE0, &unk_24E373EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E09DED4@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v50 = a1;
  v47 = sub_24E344988();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v49 = (v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v48 = (v41 - v9);
  MEMORY[0x28223BE20](v10);
  v12 = v41 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = (v41 - v14);
  v16 = sub_24E3442D8();
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = v41 - v23;
  sub_24E3442B8();
  sub_24E09E3EC(v3, __src);
  v25 = swift_allocObject();
  memcpy((v25 + 16), __src, 0xC0uLL);
  sub_24E3442C8();

  v46 = v18;
  v26 = *(v18 + 8);
  v43 = v18 + 8;
  v44 = v26;
  v26(v24, v16);
  v45 = *(v18 + 32);
  v45(v24, v21, v16);
  sub_24DF89628(v3 + 40, v51);
  v41[2] = v15;
  *v15 = sub_24E09E42C;
  v15[1] = 0;
  v27 = *(v5 + 104);
  v28 = v47;
  v27(v15, *MEMORY[0x277D22978], v47);
  v29 = *(v3 + 128) - *(v3 + 136);
  v30 = MEMORY[0x277D225F8];
  v41[1] = v12;
  *(v12 + 3) = MEMORY[0x277D85048];
  *(v12 + 4) = v30;
  *v12 = v29;
  v31 = v28;
  v27(v12, *MEMORY[0x277D22980], v28);
  v32 = *MEMORY[0x277D22988];
  v27(v48, v32, v31);
  v27(v49, v32, v31);
  __src[3] = sub_24E344998();
  __src[4] = MEMORY[0x277D22998];
  __swift_allocate_boxed_opaque_existential_1(__src);
  sub_24E3449A8();
  v33 = v42;
  sub_24E3442C8();
  v34 = v44;
  v44(v24, v16);
  __swift_destroy_boxed_opaque_existential_1(__src);
  v45(v24, v33, v16);
  v35 = *(v3 + 80);
  v36 = *(v3 + 88);
  v37 = *(v3 + 96);
  v38 = *(v3 + 104);
  __src[3] = v16;
  __src[4] = MEMORY[0x277D226E0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(__src);
  (*(v46 + 16))(boxed_opaque_existential_1, v24, v16);
  MEMORY[0x25303B510](__src, v35, v36, v37, v38);
  return v34(v24, v16);
}

uint64_t sub_24E09E448(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_24E09E488(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E09E508(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E09E628();

  return MEMORY[0x282180C48](a1, a2, v4);
}

unint64_t sub_24E09E560()
{
  result = qword_27F1E2C50;
  if (!qword_27F1E2C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2C50);
  }

  return result;
}

unint64_t sub_24E09E5B8()
{
  result = qword_27F1E2C58;
  if (!qword_27F1E2C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2C58);
  }

  return result;
}

unint64_t sub_24E09E628()
{
  result = qword_27F1E2C60;
  if (!qword_27F1E2C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2C60);
  }

  return result;
}

double sub_24E09E67C(uint64_t a1, uint64_t a2)
{
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  sub_24E346278();
  sub_24E3462E8();
  v87 = sub_24E346338();

  v86 = sub_24E346358();
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  v85 = sub_24E346948();
  v9 = OUTLINED_FUNCTION_3_54();
  v84 = sub_24E346948();
  sub_24E346328();
  sub_24E3462B8();
  v83 = sub_24E346338();

  v10 = GKIsXRUIIdiomShouldUsePadUI();
  if (ShouldUsePadUI)
  {
    if (v10)
    {
      v11 = sub_24E346288();
    }

    else
    {
      v11 = sub_24E346278();
    }

    v82 = v11;
    if (GKIsXRUIIdiomShouldUsePadUI())
    {
      v13 = 0.0;
    }

    else
    {
      v13 = 16.0;
    }

    v81 = *&v13;
    v14 = GKIsXRUIIdiomShouldUsePadUI();
    v15 = 30.0;
    if (v14)
    {
      v15 = 22.0;
    }

    v80 = v15;
    if (GKIsXRUIIdiomShouldUsePadUI())
    {
      v16 = 16.0;
    }

    else
    {
      v16 = 0.0;
    }

    v79 = *&v16;
    v17 = GKIsXRUIIdiomShouldUsePadUI();
    v18 = 20.0;
    if (v17)
    {
      v18 = 16.0;
    }

    v78 = v18;
    if (GKIsXRUIIdiomShouldUsePadUI())
    {
      v19 = 16.0;
    }

    else
    {
      v19 = 0.0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2DE8, &qword_24E374160);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_24E369B70;
    sub_24E346998();
    OUTLINED_FUNCTION_7_32();
    OUTLINED_FUNCTION_2_51();
    *(v20 + 32) = sub_24E346D88();
    *(v20 + 40) = v21;
    sub_24E346998();
    OUTLINED_FUNCTION_7_32();
    OUTLINED_FUNCTION_2_51();
    *(v20 + 48) = sub_24E346D88();
    *(v20 + 56) = v22;
    sub_24E346998();
    sub_24E3469C8();
    OUTLINED_FUNCTION_2_51();
    *(v20 + 64) = sub_24E346D88();
    *(v20 + 72) = v23;
    sub_24E346D98();
    v24 = OUTLINED_FUNCTION_6_40();
    *(v24 + 16) = xmmword_24E369E30;
    sub_24E346998();
    OUTLINED_FUNCTION_9_31();
    OUTLINED_FUNCTION_1_70();
    *(v24 + 32) = sub_24E346D88();
    *(v24 + 40) = v25;
    sub_24E346998();
    OUTLINED_FUNCTION_8_32();
    OUTLINED_FUNCTION_1_70();
    *(v24 + 48) = sub_24E346D88();
    *(v24 + 56) = v26;
    sub_24E346998();
    OUTLINED_FUNCTION_8_32();
    OUTLINED_FUNCTION_1_70();
    *(v24 + 64) = sub_24E346D88();
    *(v24 + 72) = v27;
    sub_24E346998();
    OUTLINED_FUNCTION_9_31();
    OUTLINED_FUNCTION_1_70();
    *(v24 + 80) = sub_24E346D88();
    *(v24 + 88) = v28;
    v76 = sub_24E346D98();
    v29 = [v7 labelColor];
    v30 = sub_24E346948();
    v31 = OUTLINED_FUNCTION_3_54();
    v32 = sub_24E346948();
    v33 = OUTLINED_FUNCTION_3_54();
    v34 = sub_24E346948();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2DF0, qword_24E374168);
    v35 = swift_allocObject();
    v36 = OUTLINED_FUNCTION_5_46(v35, xmmword_24E36A270);
    v37 = [v36 colorWithAlphaComponent_];

    v35[2].n128_u64[0] = sub_24E346948();
    v38 = [v7 lastWelcomeWhatsNewCopyVersionDisplayed];
    v39 = [v38 colorWithAlphaComponent_];

    v35[2].n128_u64[1] = sub_24E346948();
    if (GKIsXRUIIdiomShouldUsePadUI())
    {
      v40 = 52.0;
    }

    else
    {
      v40 = 40.0;
    }

    if (GKIsXRUIIdiom())
    {
      v41 = sub_24E3469D8();
    }

    else
    {
      v41 = sub_24E3469E8();
    }

    v66 = v41;
    if (GKIsXRUIIdiomShouldUsePadUI())
    {
      sub_24E346288();
      sub_24E3462C8();
      v67 = sub_24E346338();
    }

    else
    {
      v67 = sub_24E346278();
    }

    if (GKIsXRUIIdiomShouldUsePadUI())
    {
      sub_24E346328();
      sub_24E3462C8();
      v68 = sub_24E346338();

      v50 = 16.0;
      v5 = 0x4064800000000000;
      OUTLINED_FUNCTION_4_47();
    }

    else
    {
      v50 = 16.0;
      v5 = 0x4064800000000000;
      OUTLINED_FUNCTION_4_47();
      v68 = sub_24E346378();
    }

    v4 = 16.0;
  }

  else
  {
    if (v10)
    {
      v12 = sub_24E346288();
    }

    else
    {
      v12 = sub_24E346278();
    }

    v82 = v12;
    if (GKIsXRUIIdiomShouldUsePadUI())
    {
      v42 = 0.0;
    }

    else
    {
      v42 = 16.0;
    }

    v81 = *&v42;
    v43 = GKIsXRUIIdiomShouldUsePadUI();
    v44 = 30.0;
    if (v43)
    {
      v44 = 22.0;
    }

    v80 = v44;
    if (GKIsXRUIIdiomShouldUsePadUI())
    {
      v45 = 16.0;
    }

    else
    {
      v45 = 0.0;
    }

    v79 = *&v45;
    v46 = GKIsXRUIIdiomShouldUsePadUI();
    v47 = 20.0;
    if (v46)
    {
      v47 = 16.0;
    }

    v78 = v47;
    if (GKIsXRUIIdiomShouldUsePadUI())
    {
      v19 = 16.0;
    }

    else
    {
      v19 = 0.0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2DE8, &qword_24E374160);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_24E369B70;
    sub_24E346998();
    OUTLINED_FUNCTION_7_32();
    OUTLINED_FUNCTION_2_51();
    *(v48 + 32) = sub_24E346D88();
    *(v48 + 40) = v49;
    sub_24E346998();
    OUTLINED_FUNCTION_7_32();
    OUTLINED_FUNCTION_2_51();
    v50 = 0.9;
    *(v48 + 48) = sub_24E346D88();
    *(v48 + 56) = v51;
    sub_24E346998();
    sub_24E3469C8();
    OUTLINED_FUNCTION_2_51();
    *(v48 + 64) = sub_24E346D88();
    *(v48 + 72) = v52;
    sub_24E346D98();
    v53 = OUTLINED_FUNCTION_6_40();
    *(v53 + 16) = xmmword_24E369E30;
    sub_24E346998();
    OUTLINED_FUNCTION_9_31();
    OUTLINED_FUNCTION_1_70();
    *(v53 + 32) = sub_24E346D88();
    *(v53 + 40) = v54;
    sub_24E346998();
    OUTLINED_FUNCTION_8_32();
    OUTLINED_FUNCTION_1_70();
    *(v53 + 48) = sub_24E346D88();
    *(v53 + 56) = v55;
    sub_24E346998();
    OUTLINED_FUNCTION_8_32();
    OUTLINED_FUNCTION_1_70();
    *(v53 + 64) = sub_24E346D88();
    *(v53 + 72) = v56;
    sub_24E346998();
    OUTLINED_FUNCTION_9_31();
    OUTLINED_FUNCTION_1_70();
    *(v53 + 80) = sub_24E346D88();
    *(v53 + 88) = v57;
    v76 = sub_24E346D98();
    v58 = [v7 labelColor];
    v30 = sub_24E346948();
    v59 = OUTLINED_FUNCTION_3_54();
    v32 = sub_24E346948();
    v60 = OUTLINED_FUNCTION_3_54();
    v34 = sub_24E346948();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2DF0, qword_24E374168);
    v35 = swift_allocObject();
    v61 = OUTLINED_FUNCTION_5_46(v35, xmmword_24E36A270);
    v62 = [v61 colorWithAlphaComponent_];

    v35[2].n128_u64[0] = sub_24E346948();
    v63 = [v7 lastWelcomeWhatsNewCopyVersionDisplayed];
    v64 = [v63 colorWithAlphaComponent_];

    v35[2].n128_u64[1] = sub_24E346948();
    if (GKIsXRUIIdiomShouldUsePadUI())
    {
      v40 = 52.0;
    }

    else
    {
      v40 = 40.0;
    }

    if (GKIsXRUIIdiom())
    {
      v65 = sub_24E3469D8();
    }

    else
    {
      v65 = sub_24E3469E8();
    }

    v66 = v65;
    if (GKIsXRUIIdiomShouldUsePadUI())
    {
      sub_24E346288();
      sub_24E3462C8();
      v67 = sub_24E346338();
    }

    else
    {
      v67 = sub_24E346278();
    }

    if (GKIsXRUIIdiomShouldUsePadUI())
    {
      sub_24E346328();
      sub_24E3462C8();
      v68 = sub_24E346338();

      OUTLINED_FUNCTION_0_80();
    }

    else
    {
      OUTLINED_FUNCTION_0_80();
      v68 = sub_24E346378();
    }
  }

  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v69 = 16.0;
  }

  else
  {
    v69 = 10.0;
  }

  v70 = [v7 secondarySystemBackgroundColor];
  v71 = sub_24E346948();
  v72 = [v7 tertiarySystemBackgroundColor];
  v73 = sub_24E346948();
  v74 = [v7 systemGray2Color];
  qword_27F1E2C68 = v3;
  unk_27F1E2C70 = *&v50;
  qword_27F1E2C78 = 0x4030000000000000;
  qword_27F1E2C80 = *&v4;
  unk_27F1E2C88 = v2;
  qword_27F1E2C90 = 0x4000000000000000;
  qword_27F1E2C98 = v5;
  unk_27F1E2CA0 = v5;
  xmmword_27F1E2CA8 = vdupq_n_s64(0x4044000000000000uLL);
  qword_27F1E2CB8 = 0x4030000000000000;
  unk_27F1E2CC0 = v87;
  qword_27F1E2CC8 = v86;
  qword_27F1E2CD0 = v85;
  unk_27F1E2CD8 = v84;
  qword_27F1E2CE0 = v83;
  unk_27F1E2CE8 = v82;
  qword_27F1E2CF0 = v81;
  unk_27F1E2CF8 = *&v80;
  qword_27F1E2D00 = v79;
  unk_27F1E2D08 = *&v78;
  qword_27F1E2D10 = *&v19;
  xmmword_27F1E2D18 = xmmword_24E374020;
  qword_27F1E2D28 = v77;
  unk_27F1E2D30 = v76;
  qword_27F1E2D38 = v30;
  unk_27F1E2D40 = v32;
  qword_27F1E2D48 = 0x4024000000000000;
  unk_27F1E2D50 = v34;
  xmmword_27F1E2D58 = xmmword_24E374030;
  qword_27F1E2D68 = v35;
  unk_27F1E2D70 = 0;
  qword_27F1E2D78 = *&v40;
  unk_27F1E2D80 = *&v40;
  qword_27F1E2D88 = v66;
  unk_27F1E2D90 = v67;
  qword_27F1E2D98 = v68;
  qword_27F1E2DA0 = *&v69;
  result = 30.0;
  xmmword_27F1E2DA8 = xmmword_24E374040;
  *&qword_27F1E2DB8 = xmmword_24E374050;
  qword_27F1E2DC8 = v71;
  unk_27F1E2DD0 = v73;
  qword_27F1E2DD8 = 0x4045000000000000;
  unk_27F1E2DE0 = v74;
  return result;
}

uint64_t static AchievementDetailsViewMetrics.defaultMetrics.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F1DD7F0 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_27F1E2C68, sizeof(__dst));
  memcpy(a1, &qword_27F1E2C68, 0x180uLL);
  return sub_24E002778(__dst, &v3);
}

uint64_t sub_24E09F024(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 384))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t sub_24E09F064(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_70()
{
}

uint64_t OUTLINED_FUNCTION_2_51()
{
}

id OUTLINED_FUNCTION_3_54()
{
  v3 = *(v1 + 2336);

  return [v0 v3];
}

id OUTLINED_FUNCTION_5_46(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return [v2 whiteColor];
}

uint64_t OUTLINED_FUNCTION_6_40()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_7_32()
{

  return sub_24E3469C8();
}

uint64_t OUTLINED_FUNCTION_8_32()
{

  return sub_24E3469C8();
}

uint64_t OUTLINED_FUNCTION_9_31()
{

  return sub_24E3469C8();
}

unint64_t sub_24E09F21C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24E348B78();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24E09F268(char a1)
{
  result = 0x726564616568;
  switch(a1)
  {
    case 1:
      result = 0x6E6569724677656ELL;
      break;
    case 2:
      result = 0x73646E65697266;
      break;
    case 3:
      result = 0x6552686372616573;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_24E09F31C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24E09F21C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_24E09F34C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E09F268(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char *sub_24E09F378(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v6 = v5;
  v29 = a5;
  v30 = a2;
  v28 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E00B8, &unk_24E374280);
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  *(v5 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_pageMetricsPresenter) = 0;
  v15 = v5 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_requiredData;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  v16 = OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_gameCenterDataUpdatePresenter;
  *(v6 + v16) = [objc_allocWithZone(type metadata accessor for GameCenterDataUpdatePresenter()) init];
  v17 = (v6 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_searchTerm);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_metricsPayload;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2778, &unk_24E37AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369B70;
  *(inited + 32) = sub_24E347CF8();
  *(inited + 40) = v20;
  *(inited + 48) = 0x4C73646E65697266;
  *(inited + 56) = 0xEB00000000747369;
  *(inited + 64) = sub_24E347CF8();
  *(inited + 72) = v21;
  *(inited + 80) = 0x656C69666F7270;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_24E347CF8();
  *(inited + 104) = v22;
  *(inited + 112) = 0x656C69666F7270;
  *(inited + 120) = 0xE700000000000000;
  *(v6 + v18) = sub_24E347C28();
  *(v6 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_isDeeplinked) = 0;
  v23 = OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_onShowPageOverlay;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E97D0, &unk_24E374290);
  swift_allocObject();
  *(v6 + v23) = sub_24E346F88();
  *(v6 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_newFriendPlayerIds) = a3;
  *(v6 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_friendType) = a4;
  *(v6 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_showAddFriendButton) = v29;
  v24 = sub_24E287888(v28, v30);
  OUTLINED_FUNCTION_21_2();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3000, &qword_24E374A50);
  sub_24E0A6434();
  v25 = v24;

  sub_24E347198();
  sub_24E3471B8();

  __swift_destroy_boxed_opaque_existential_1(v31);
  (*(v11 + 8))(v14, v9);

  return v25;
}

void sub_24E09F6E8(int *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2 == 2)
    {
      sub_24E0A2674();
    }
  }
}

uint64_t sub_24E09F750()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_requiredData);
  if ((*(v0 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_requiredData + 16) & 1) != 0 || *v1 && v1[1])
  {
    return sub_24E09F77C();
  }

  return result;
}

uint64_t sub_24E09F77C()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) = 0;

  sub_24E346F78();

  if (!*(v0 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_requiredData + 8) || !sub_24DFD8654())
  {
    return sub_24E09FD28();
  }

  sub_24E346F78();
  sub_24E0A0418();

  sub_24E19A4A0();
}

void sub_24E09F85C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_requiredData + 8);
  if (v1 && *(v0 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_searchTerm + 8))
  {
    v12 = 32;
    v13 = 0xE100000000000000;
    sub_24DF90C4C();

    v2 = sub_24E3486D8();
    sub_24DF88A8C(0, &unk_27F1EAA50, 0x277CCACA8);
    v3 = sub_24E348648();
    sub_24DF88A8C(0, &qword_27F1E2E50, 0x277CBEB18);
    v4 = sub_24E07A034(v2);

    v5 = sub_24E09FA90(v4);
    v6 = sub_24DFD8654();
    for (i = 0; ; ++i)
    {
      if (v6 == i)
      {

        return;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x25303F560](i, v1);
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v1 + 8 * i + 32);
      }

      v9 = v8;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v10 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
      v11 = [v3 _gkSearchMatchesItem_withSearchTerms_];

      if (v11)
      {
        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
      }

      else
      {
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

id sub_24E09FA90(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_24E347EE8();

  v3 = [v1 initWithArray_];

  return v3;
}

uint64_t sub_24E09FB08()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  return OUTLINED_FUNCTION_19_1();
}

uint64_t sub_24E09FBC4(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_searchTerm);
  v4 = *(v2 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_searchTerm + 8);
  if (!v4)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_15;
  }

  v5 = *v3;
  if (a2)
  {
    if (v5 == result && v4 == a2)
    {
      return result;
    }

    result = sub_24E348C08();
    if (result)
    {
      return result;
    }
  }

  v7 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_15:
    sub_24E346F78();
    sub_24E0A0418();
    goto LABEL_16;
  }

  sub_24E09F85C();
  if (v8)
  {
    v9 = v8;
    if (sub_24DFD8654())
    {
      sub_24E346F78();
      sub_24E0A0088(v9);

LABEL_16:

      sub_24E19A4A0();
    }
  }

  return sub_24E09FD28();
}

uint64_t sub_24E09FD28()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_searchTerm + 8);
  if (v1 && ((v1 & 0x2000000000000000) != 0 ? (v2 = HIBYTE(v1) & 0xF) : (v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_searchTerm) & 0xFFFFFFFFFFFFLL), v2))
  {
    v24 = 0;
    v3 = 0xEF7373616C67676ELL;
    v4 = 0x697966696E67616DLL;
  }

  else if (*(v0 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_friendType) > 1u)
  {
    v24 = 0;
    v3 = 0xEF6C6C69662E7265;
    v4 = 0x746E6563656D6167;
  }

  else
  {
    type metadata accessor for PlayerProfileSection();
    if (sub_24E32CA80() & 1) != 0 && (*(v0 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_showAddFriendButton))
    {
      v3 = 0xED00006C6C69662ELL;
      v4 = 0x332E6E6F73726570;
      v24 = sub_24E0A3888;
    }

    else
    {
      v24 = 0;
      v3 = 0xED00006C6C69662ELL;
      v4 = 0x332E6E6F73726570;
    }
  }

  v5 = sub_24E347CB8();
  v6 = GKGameCenterUIFrameworkBundle();
  v7 = GKGetLocalizedStringFromTableInBundle();

  v8 = sub_24E347CF8();
  v10 = v9;

  v11 = sub_24E347CB8();
  v12 = GKGameCenterUIFrameworkBundle();
  v13 = GKGetLocalizedStringFromTableInBundle();

  v14 = sub_24E347CF8();
  v16 = v15;

  v17 = sub_24E347CB8();
  v18 = GKGameCenterUIFrameworkBundle();
  v19 = GKGetLocalizedStringFromTableInBundle();

  v20 = sub_24E347CF8();
  v22 = v21;

  __src[0] = v4;
  __src[1] = v3;
  __src[2] = 0;
  __src[3] = v8;
  __src[4] = v10;
  __src[5] = v14;
  __src[6] = v16;
  __src[7] = v20;
  __src[8] = v22;
  __src[9] = v24;
  __src[10] = 0;
  memcpy(__dst, __src, sizeof(__dst));
  sub_24E0A63D0(__src, v27);
  sub_24E346F78();
  sub_24DFC13E4(__src);
  memcpy(v27, __dst, 0x58uLL);
  return sub_24DFA9298(v27, &unk_27F1E9800, &qword_24E374278);
}

uint64_t sub_24E0A0088(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for Shelf(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_requiredData);
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_friendType) >= 2u)
  {
    v10 = sub_24E0E8CB8;
  }

  else
  {
    v10 = sub_24E0E8EB8;
  }

  v11 = v9;

  v34 = sub_24E0833B4(v12);
  sub_24E0A40F8(&v34, v10, 0);
  v13 = v34;
  LOBYTE(v34) = 3;
  sub_24E0A61C0();
  sub_24E348918();
  v15 = sub_24E0A291C(v13, v14);

  v16 = &v8[*(v5 + 28)];
  v17 = type metadata accessor for HeaderData(0);
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  v18 = type metadata accessor for Shelf.Presentation(0);
  v19 = v18[5];
  v20 = type metadata accessor for FooterData(0);
  __swift_storeEnumTagSinglePayload(v16 + v19, 1, 1, v20);
  v21 = v16 + v18[11];
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 1;
  v22 = v16 + v18[12];
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = (v16 + v18[13]);
  v24 = (v16 + v18[14]);
  v25 = (v16 + v18[15]);
  *(v16 + v18[6]) = 1;
  *v23 = 0;
  v23[1] = 0;
  *v24 = 0;
  v24[1] = 0;
  *v25 = 0;
  v25[1] = 0;
  *(v16 + v18[7]) = 1;
  *(v16 + v18[8]) = 1;
  *(v16 + v18[9]) = 1;
  *(v16 + v18[10]) = 0;
  v26 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v26);
  v27 = *(v5 + 32);
  __swift_storeEnumTagSinglePayload(&v8[v27], 1, 1, v26);
  v8[40] = 4;
  *(v8 + 6) = v15;
  sub_24DFC2564(v4, &v8[v27], &qword_27F1E58A0, &unk_24E36BF80);
  sub_24E076D5C();
  v29 = v28;
  v30 = *(v28 + 16);
  if (v30 >= *(v28 + 24) >> 1)
  {
    sub_24E076D5C();
    v29 = v32;
  }

  *(v29 + 16) = v30 + 1;
  sub_24E0A631C(v8, v29 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v30, type metadata accessor for Shelf);
  return v29;
}

uint64_t sub_24E0A0418()
{
  v1 = type metadata accessor for Shelf(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v172 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v203 = &v172 - v6;
  v7 = sub_24E347458();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24E347478();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v172 - v14;
  v201 = sub_24E3433A8();
  v204 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v200 = &v172 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF050, &unk_24E36B8D0);
  MEMORY[0x28223BE20](v17 - 8);
  v205 = &v172 - v18;
  v199 = type metadata accessor for TitleHeaderView.Style(0);
  MEMORY[0x28223BE20](v199);
  v206 = &v172 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for HeaderData(0);
  MEMORY[0x28223BE20](v207);
  v21 = &v172 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF058, &unk_24E36F980);
  MEMORY[0x28223BE20](v22 - 8);
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v28 = *(v0 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_requiredData);
  if (!v28)
  {
    return MEMORY[0x277D84F90];
  }

  v29 = v2;
  v196 = v21;
  v30 = *(v0 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_requiredData + 8);
  v31 = MEMORY[0x277D84F90];
  if (v30)
  {
    v191 = v27;
    v186 = v26;
    v198 = v15;
    v194 = v29;
    v195 = v1;
    v202 = &v172 - v25;
    __swift_storeEnumTagSinglePayload(&v172 - v25, 1, 1, v207);
    v209 = *(v0 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_newFriendPlayerIds);
    if (v209)
    {
      v187 = v12;
      v188 = v9;
      v193 = v0;
      v185 = v4;
      *&v216 = v31;
      v210 = sub_24DFD8654();
      v32 = v30 & 0xC000000000000001;
      v184 = v28;
      v189 = v28;

      v33 = 0;
      v28 = &v221;
      v208 = v30;
      while (v210 != v33)
      {
        sub_24DFFA844();
        if (v32)
        {
          v34 = MEMORY[0x25303F560](v33, v30);
        }

        else
        {
          v34 = *(v30 + 8 * v33 + 32);
        }

        v35 = v34;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v36 = [v34 playerID];
        v4 = sub_24E347CF8();
        v38 = v37;

        *&v221 = v4;
        *(&v221 + 1) = v38;
        MEMORY[0x28223BE20](v39);
        *(&v172 - 2) = &v221;
        LOBYTE(v36) = sub_24E023F8C();

        if (v36)
        {
          sub_24E348A48();
          sub_24E348A78();
          sub_24E348A88();
          sub_24E348A58();
        }

        else
        {
        }

        v30 = v208;
        ++v33;
      }

      v40 = v216;
      v41 = sub_24DFD8654();
      if (v41 <= 0)
      {

        v107 = 0;
        v148 = MEMORY[0x277D84F90];
        v28 = v184;
        v4 = v185;
        v0 = v193;
        goto LABEL_38;
      }

      v42 = v41;
      v183 = v40;
      v43 = v206;
      sub_24E09984C();
      v44 = v199;
      v45 = *(v199 + 20);
      v178 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
      __swift_storeEnumTagSinglePayload(v43 + v45, 1, 1, v178);
      if (qword_27F1DE118 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for PlayerCardTheme(0);
      v47 = *(__swift_project_value_buffer(v46, qword_27F20BF00) + *(v46 + 40));
      v48 = v44[8];
      *(v43 + v44[6]) = 0;
      *(v43 + v44[7]) = 0;
      *(v43 + v48) = 0;
      *(v43 + v44[9]) = 0;
      *(v43 + v44[11]) = 0;
      *(v43 + v44[13]) = v47;
      *(v43 + v44[10]) = 1;
      *(v43 + v44[12]) = 1;
      v177 = v47;
      v49 = sub_24E347CB8();
      v50 = GKGameCenterUIFrameworkBundle();
      v51 = GKGetLocalizedStringFromTableInBundle();

      sub_24E347CF8();
      v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
      v52 = swift_allocObject();
      v53 = MEMORY[0x277D83B88];
      v174 = xmmword_24E367D20;
      *(v52 + 16) = xmmword_24E367D20;
      v54 = MEMORY[0x277D83C10];
      *(v52 + 56) = v53;
      *(v52 + 64) = v54;
      *(v52 + 32) = v42;
      v197 = sub_24E347CC8();
      v190 = v55;

      v223 = 0u;
      v224 = 0u;
      v221 = 0u;
      v222 = 0u;
      v225 = -1;
      v218 = 0u;
      v219 = 0u;
      v216 = 0u;
      v217 = 0u;
      v220 = -1;
      v56 = sub_24E3444F8();
      v213 = 0u;
      v214 = 0u;
      v215 = 0;
      v175 = v56;
      __swift_storeEnumTagSinglePayload(v205, 1, 1, v56);
      v57 = v200;
      sub_24E343398();
      v180 = sub_24E343378();
      *&v179 = v58;
      v59 = *(v204 + 8);
      v204 += 8;
      v173 = v59;
      v59(v57, v201);
      v60 = v207;
      v61 = v196;
      v62 = &v196[v207[7]];
      *(v62 + 32) = 0u;
      *(v62 + 48) = 0u;
      *v62 = 0u;
      *(v62 + 16) = 0u;
      *(v62 + 64) = -1;
      v63 = v61 + v60[9];
      *(v63 + 32) = 0u;
      *(v63 + 48) = 0u;
      *v63 = 0u;
      *(v63 + 16) = 0u;
      *(v63 + 64) = -1;
      v64 = (v61 + v60[10]);
      v65 = v61 + v60[11];
      *(v65 + 32) = 0;
      *v65 = 0u;
      *(v65 + 16) = 0u;
      v66 = v60[13];
      *&v181 = v60[12];
      v67 = v61 + v66;
      *(v67 + 32) = 0;
      *v67 = 0u;
      *(v67 + 16) = 0u;
      v68 = v60[14];
      v182 = v68;
      v192 = sub_24E3474B8();
      __swift_storeEnumTagSinglePayload(v61 + v68, 1, 1, v192);
      v211 = v180;
      v212 = v179;
      sub_24E348918();
      sub_24E0A627C(v206, v61 + v60[5], type metadata accessor for TitleHeaderView.Style);
      v69 = (v61 + v60[6]);
      v70 = v190;
      *v69 = v197;
      v69[1] = v70;

      sub_24E0A6234(&v221, v62, &qword_27F1DEE88, &unk_24E36BF90);
      v71 = (v61 + v60[8]);
      *v71 = 0;
      v71[1] = 0;
      sub_24E0A6234(&v216, v63, &qword_27F1DEE88, &unk_24E36BF90);
      *(v61 + v181) = 0;
      *v64 = 0;
      v64[1] = 0;
      sub_24E0A6234(&v213, v65, &qword_27F1DEE90, &unk_24E369E90);
      sub_24DFC24D4(v205, v61 + v60[17], &qword_27F1DF050, &unk_24E36B8D0);
      v72 = v61 + v60[16];
      *v72 = 0;
      *(v72 + 8) = 0;
      v73 = v60[15];
      v181 = xmmword_24E3699A0;
      *(v61 + v73) = xmmword_24E3699A0;
      v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
      inited = swift_initStackObject();
      v179 = xmmword_24E369E30;
      *(inited + 16) = xmmword_24E369E30;
      strcpy((inited + 32), "impressionType");
      *(inited + 47) = -18;
      *(inited + 48) = 0x666C656873;
      *(inited + 56) = 0xE500000000000000;
      v75 = MEMORY[0x277D837D0];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = 0x6973736572706D69;
      *(inited + 88) = 0xEF7865646E496E6FLL;
      *(inited + 96) = 0;
      *(inited + 120) = MEMORY[0x277D83B88];
      *(inited + 128) = 0x657079546469;
      *(inited + 136) = 0xE600000000000000;
      *(inited + 144) = 0x636974617473;
      *(inited + 152) = 0xE600000000000000;
      *(inited + 168) = v75;
      *(inited + 176) = 1701667182;
      *(inited + 216) = v75;
      v76 = v197;
      *(inited + 184) = 0xE400000000000000;
      *(inited + 192) = v76;
      *(inited + 200) = v190;
      sub_24E347C28();
      sub_24E347468();
      sub_24E347448();
      v77 = MEMORY[0x277D84F90];
      sub_24E0241AC(MEMORY[0x277D84F90]);
      sub_24E0241AC(v77);
      v78 = v198;
      sub_24E347488();
      sub_24DFA9298(v205, &qword_27F1DF050, &unk_24E36B8D0);
      sub_24DFA9298(&v213, &qword_27F1DEE90, &unk_24E369E90);
      sub_24DFA9298(&v216, &qword_27F1DEE88, &unk_24E36BF90);
      sub_24DFA9298(&v221, &qword_27F1DEE88, &unk_24E36BF90);
      sub_24E0A637C(v206, type metadata accessor for TitleHeaderView.Style);
      __swift_storeEnumTagSinglePayload(v78, 0, 1, v192);
      sub_24DFC2564(v78, v61 + v182, &qword_27F1E58A0, &unk_24E36BF80);
      LOBYTE(v221) = 1;
      sub_24E0A61C0();
      v79 = v203;
      sub_24E348918();
      v197 = sub_24E0A291C(v183, v80);

      v81 = v195;
      v82 = v79 + *(v195 + 28);
      sub_24E0A627C(v61, v82, type metadata accessor for HeaderData);
      __swift_storeEnumTagSinglePayload(v82, 0, 1, v60);
      v83 = type metadata accessor for Shelf.Presentation(0);
      v28 = v83[5];
      v84 = type metadata accessor for FooterData(0);
      __swift_storeEnumTagSinglePayload(v28 + v82, 1, 1, v84);
      v85 = v82 + v83[11];
      *v85 = 0u;
      *(v85 + 16) = 0u;
      *(v85 + 32) = 1;
      v86 = v82 + v83[12];
      *v86 = 0;
      *(v86 + 8) = 1;
      v87 = (v82 + v83[13]);
      v88 = (v82 + v83[14]);
      v89 = (v82 + v83[15]);
      *(v82 + v83[6]) = 1;
      *v87 = 0;
      v87[1] = 0;
      *v88 = 0;
      v88[1] = 0;
      *v89 = 0;
      v89[1] = 0;
      *(v82 + v83[7]) = 1;
      *(v82 + v83[8]) = 1;
      *(v82 + v83[9]) = 1;
      *(v82 + v83[10]) = 0;
      v90 = v198;
      v91 = v192;
      __swift_storeEnumTagSinglePayload(v198, 1, 1, v192);
      v92 = *(v81 + 32);
      v93 = v91;
      v94 = MEMORY[0x277D84F90];
      __swift_storeEnumTagSinglePayload(v79 + v92, 1, 1, v93);
      *(v79 + 40) = 4;
      *(v79 + 48) = v197;
      sub_24DFC2564(v90, v79 + v92, &qword_27F1E58A0, &unk_24E36BF80);
      sub_24E076D5C();
      v96 = v95;
      v97 = *(v95 + 16);
      if (v97 >= *(v95 + 24) >> 1)
      {
        sub_24E076D5C();
        v96 = v171;
      }

      v98 = v208;
      *(v96 + 16) = v97 + 1;
      v99 = (*(v194 + 80) + 32) & ~*(v194 + 80);
      v197 = v96;
      sub_24E0A631C(v203, v96 + v99 + *(v194 + 72) * v97, type metadata accessor for Shelf);
      v100 = 0;
      *&v216 = v94;
      while (v210 != v100)
      {
        sub_24DFFA844();
        if (v32)
        {
          v101 = MEMORY[0x25303F560](v100, v98);
        }

        else
        {
          v101 = *(v98 + 8 * v100 + 32);
        }

        v4 = v101;
        if (__OFADD__(v100, 1))
        {
          goto LABEL_48;
        }

        v102 = [v101 playerID];
        v103 = sub_24E347CF8();
        v105 = v104;

        v28 = &v172;
        *&v221 = v103;
        *(&v221 + 1) = v105;
        MEMORY[0x28223BE20](v106);
        *(&v172 - 2) = &v221;
        LOBYTE(v102) = sub_24E023F8C();

        if (v102)
        {
        }

        else
        {
          sub_24E348A48();
          sub_24E348A78();
          sub_24E348A88();
          sub_24E348A58();
        }

        ++v100;
      }

      v107 = v216;
      if (!sub_24DFD8654())
      {
        sub_24DFA9298(v202, &qword_27F1DF058, &unk_24E36F980);

        sub_24E0A637C(v196, type metadata accessor for HeaderData);
        return v197;
      }

      v108 = v191;
      sub_24DFC24D4(v202, v191, &qword_27F1DF058, &unk_24E36F980);
      v109 = v207;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v108, 1, v207);
      sub_24DFA9298(v108, &qword_27F1DF058, &unk_24E36F980);
      if (EnumTagSinglePayload == 1)
      {
        v111 = v206;
        sub_24E09984C();
        v112 = v199;
        __swift_storeEnumTagSinglePayload(v111 + *(v199 + 20), 1, 1, v178);
        v113 = v112[8];
        *(v111 + v112[6]) = 0;
        *(v111 + v112[7]) = 0;
        *(v111 + v113) = 0;
        *(v111 + v112[9]) = 0;
        *(v111 + v112[11]) = 0;
        v114 = v177;
        *(v111 + v112[13]) = v177;
        *(v111 + v112[10]) = 1;
        *(v111 + v112[12]) = 1;
        v115 = v114;
        v116 = sub_24E347CB8();
        v117 = GKGameCenterUIFrameworkBundle();
        v118 = GKGetLocalizedStringFromTableInBundle();

        sub_24E347CF8();
        v119 = swift_allocObject();
        *(v119 + 16) = v174;
        v120 = sub_24DFD8654();
        *(v119 + 56) = MEMORY[0x277D83B88];
        *(v119 + 64) = MEMORY[0x277D83C10];
        *(v119 + 32) = v120;
        v121 = sub_24E347CC8();
        v209 = v122;
        v210 = v121;

        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v225 = -1;
        v218 = 0u;
        v219 = 0u;
        v216 = 0u;
        v217 = 0u;
        v220 = -1;
        v215 = 0;
        v213 = 0u;
        v214 = 0u;
        __swift_storeEnumTagSinglePayload(v205, 1, 1, v175);
        v123 = v200;
        sub_24E343398();
        v124 = sub_24E343378();
        v199 = v125;
        v173(v123, v201);
        v126 = *(v109 + 28);
        v127 = v109;
        v128 = v186;
        v129 = v186 + v126;
        *(v129 + 32) = 0u;
        *(v129 + 48) = 0u;
        *v129 = 0u;
        *(v129 + 16) = 0u;
        *(v129 + 64) = -1;
        v130 = v128 + v127[9];
        *(v130 + 32) = 0u;
        *(v130 + 48) = 0u;
        *v130 = 0u;
        *(v130 + 16) = 0u;
        *(v130 + 64) = -1;
        v131 = (v128 + v127[10]);
        v132 = v128 + v127[11];
        *(v132 + 32) = 0;
        *v132 = 0u;
        *(v132 + 16) = 0u;
        v133 = v127[12];
        v134 = v128 + v127[13];
        *(v134 + 32) = 0;
        *v134 = 0u;
        *(v134 + 16) = 0u;
        v135 = v127[14];
        v203 = v133;
        v204 = v135;
        __swift_storeEnumTagSinglePayload(v128 + v135, 1, 1, v192);
        v211 = v124;
        v212 = v199;
        sub_24E348918();
        sub_24E0A627C(v206, v128 + v127[5], type metadata accessor for TitleHeaderView.Style);
        v136 = (v128 + v127[6]);
        v137 = v209;
        *v136 = v210;
        v136[1] = v137;

        sub_24E0A6234(&v221, v129, &qword_27F1DEE88, &unk_24E36BF90);
        v138 = (v128 + v127[8]);
        *v138 = 0;
        v138[1] = 0;
        sub_24E0A6234(&v216, v130, &qword_27F1DEE88, &unk_24E36BF90);
        *(v128 + v203) = 0;
        *v131 = 0;
        v131[1] = 0;
        sub_24E0A6234(&v213, v132, &qword_27F1DEE90, &unk_24E369E90);
        sub_24DFC24D4(v205, v128 + v127[17], &qword_27F1DF050, &unk_24E36B8D0);
        v139 = v128 + v127[16];
        *v139 = 0;
        *(v139 + 8) = 0;
        *(v128 + v127[15]) = v181;
        v140 = swift_initStackObject();
        *(v140 + 16) = v179;
        strcpy((v140 + 32), "impressionType");
        *(v140 + 47) = -18;
        *(v140 + 48) = 0x666C656873;
        *(v140 + 56) = 0xE500000000000000;
        v141 = MEMORY[0x277D837D0];
        *(v140 + 72) = MEMORY[0x277D837D0];
        *(v140 + 80) = 0x6973736572706D69;
        *(v140 + 88) = 0xEF7865646E496E6FLL;
        *(v140 + 96) = 0;
        *(v140 + 120) = MEMORY[0x277D83B88];
        *(v140 + 128) = 0x657079546469;
        *(v140 + 136) = 0xE600000000000000;
        *(v140 + 144) = 0x636974617473;
        *(v140 + 152) = 0xE600000000000000;
        *(v140 + 168) = v141;
        *(v140 + 176) = 1701667182;
        *(v140 + 216) = v141;
        v142 = v209;
        v143 = v210;
        *(v140 + 184) = 0xE400000000000000;
        *(v140 + 192) = v143;
        *(v140 + 200) = v142;
        sub_24E347C28();
        sub_24E347468();
        sub_24E347448();
        v144 = MEMORY[0x277D84F90];
        sub_24E0241AC(MEMORY[0x277D84F90]);
        sub_24E0241AC(v144);
        v145 = v198;
        sub_24E347488();
        sub_24DFA9298(v205, &qword_27F1DF050, &unk_24E36B8D0);
        sub_24DFA9298(&v213, &qword_27F1DEE90, &unk_24E369E90);
        sub_24DFA9298(&v216, &qword_27F1DEE88, &unk_24E36BF90);
        sub_24DFA9298(&v221, &qword_27F1DEE88, &unk_24E36BF90);
        sub_24E0A637C(v206, type metadata accessor for TitleHeaderView.Style);
        v146 = v202;
        sub_24DFA9298(v202, &qword_27F1DF058, &unk_24E36F980);
        __swift_storeEnumTagSinglePayload(v145, 0, 1, v192);
        sub_24DFC2564(v145, v128 + v204, &qword_27F1E58A0, &unk_24E36BF80);
        sub_24E0A637C(v196, type metadata accessor for HeaderData);
        __swift_storeEnumTagSinglePayload(v128, 0, 1, v127);
        sub_24E026E68(v128, v146);
      }

      else
      {
        sub_24E0A637C(v196, type metadata accessor for HeaderData);
      }

      v28 = v184;
      v4 = v185;
      v0 = v193;
      v30 = v208;
      v148 = v197;
    }

    else
    {
      v147 = v28;

      v107 = 0;
      v148 = MEMORY[0x277D84F90];
    }

LABEL_38:
    if (*(v0 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_friendType) == 2)
    {

      *&v221 = sub_24E0833B4(v149);
      sub_24E0A407C(&v221);

      v30 = v221;
    }

    LOBYTE(v216) = 2;
    sub_24E0A61C0();
    sub_24E348918();
    v197 = v148;
    if (!v107)
    {

      v107 = v30;
    }

    v151 = sub_24E0A291C(v107, v150);

    v152 = v195;
    v153 = v4 + *(v195 + 28);
    sub_24DFC24D4(v202, v153, &qword_27F1DF058, &unk_24E36F980);
    v154 = type metadata accessor for Shelf.Presentation(0);
    v155 = v154[5];
    v156 = type metadata accessor for FooterData(0);
    __swift_storeEnumTagSinglePayload(v153 + v155, 1, 1, v156);
    v157 = v153 + v154[11];
    *v157 = 0u;
    *(v157 + 16) = 0u;
    *(v157 + 32) = 1;
    v158 = v153 + v154[12];
    *v158 = 0;
    *(v158 + 8) = 1;
    v159 = (v153 + v154[13]);
    v160 = (v153 + v154[14]);
    v161 = (v153 + v154[15]);
    *(v153 + v154[6]) = 1;
    *v159 = 0;
    v159[1] = 0;
    *v160 = 0;
    v160[1] = 0;
    *v161 = 0;
    v161[1] = 0;
    *(v153 + v154[7]) = 1;
    *(v153 + v154[8]) = 1;
    *(v153 + v154[9]) = 1;
    *(v153 + v154[10]) = 0;
    v162 = sub_24E3474B8();
    v163 = v198;
    __swift_storeEnumTagSinglePayload(v198, 1, 1, v162);
    v164 = *(v152 + 32);
    __swift_storeEnumTagSinglePayload(v4 + v164, 1, 1, v162);
    v165 = v222;
    *v4 = v221;
    v4[1] = v165;
    *(v4 + 4) = v223;
    *(v4 + 40) = 4;
    *(v4 + 6) = v151;
    sub_24DFC2564(v163, v4 + v164, &qword_27F1E58A0, &unk_24E36BF80);
    v31 = v197;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_49:
      sub_24E076D5C();
      v31 = v169;
    }

    v166 = v194;
    v167 = *(v31 + 16);
    if (v167 >= *(v31 + 24) >> 1)
    {
      sub_24E076D5C();
      v31 = v170;
    }

    sub_24DFA9298(v202, &qword_27F1DF058, &unk_24E36F980);
    *(v31 + 16) = v167 + 1;
    sub_24E0A631C(v4, v31 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v167, type metadata accessor for Shelf);
  }

  return v31;
}

uint64_t sub_24E0A1C00(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_searchTerm);
  v4 = *(v2 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_searchTerm);
  v5 = *(v2 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_searchTerm + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_24E09FBC4(v4, v5);
}

uint64_t sub_24E0A1C8C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_24E347458();
  MEMORY[0x28223BE20](v3 - 8);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24E3479D8();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  v21 = sub_24E347C28();
  sub_24E0A7788(v21);

  if (a1)
  {
    sub_24E3479B8();
    v22 = sub_24E347068();
    sub_24E1C3144();
    (*(v7 + 8))(v11, v5);
    v22(v32, 0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2740, &qword_24E374260);
  v28 = *(*(sub_24E3470B8() - 8) + 72);
  v23 = swift_allocObject();
  v26 = xmmword_24E36A270;
  *(v23 + 16) = xmmword_24E36A270;
  (*(v14 + 16))(v17, v20, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2748, &unk_24E372FA0);
  sub_24E347108();
  v27 = v12;
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  sub_24E3470F8();
  sub_24E1AD060();
  sub_24E3470A8();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v24 = sub_24E347058();
  __swift_project_value_buffer(v24, qword_27F20AE00);
  sub_24E347028();
  *(swift_allocObject() + 16) = v26;
  sub_24E3470E8();
  sub_24E3470D8();
  sub_24E1AD060();
  sub_24E3470A8();
  sub_24E335A58(*(v29 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_metricsPayload));
  sub_24E347448();
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E3470C8();
  return (*(v14 + 8))(v20, v27);
}

void sub_24E0A2148(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60, &unk_24E36C0F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_24E287A3C(a1);
  sub_24E0A2230();
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_pageMetricsPresenter))
  {
    v6 = *(v1 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_isDeeplinked);

    sub_24E0A1C8C(v6, v5);
    v7 = sub_24E347118();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
    sub_24E347698();
  }
}

uint64_t sub_24E0A24D0(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_requiredData);
  *(a2 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_requiredData) = *a1;
  v4 = v2;

  sub_24E09F750();
  return sub_24E0A2524(v4);
}

void sub_24E0A2674()
{
  if ((*(v0 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_requiredData);
    if (v1)
    {
      *(v0 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) = 1;
      v2 = v1;
      sub_24E0A2524(v2);
    }
  }
}

uint64_t sub_24E0A26E8(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_friendType) >= 2u)
  {
    v3 = sub_24E0E8CB8;
  }

  else
  {
    v3 = sub_24E0E8EB8;
  }

  v6 = sub_24E0833B4(v4);
  sub_24E0A40F8(&v6, v3, 0);
  *(a2 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_requiredData + 8) = v6;

  return sub_24E09F750();
}

void *sub_24E0A27AC(char *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_16(a2 + 16, v14);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating] = 0;
  }

  OUTLINED_FUNCTION_5_16(a2 + 16, v13);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;

    OUTLINED_FUNCTION_21_2();
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_5_16(a2 + 16, v12);
    v10 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v11 = a1;
    sub_24E346F78();

    sub_24E024148(a1, a3, v9);
  }

  return result;
}

void sub_24E0A28CC(uint64_t a1)
{
  OUTLINED_FUNCTION_5_16(a1 + 16, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_24E0A2230();
  }
}

id sub_24E0A291C(uint64_t a1, __n128 a2)
{
  v125 = type metadata accessor for SmallFriendLockupData(0);
  MEMORY[0x28223BE20](v125);
  v124 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v100 - v5;
  v101 = type metadata accessor for RemoveFriendAction(0);
  MEMORY[0x28223BE20](v101);
  v100 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24E347458();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_24E347088();
  v11 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v13 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_24E347208();
  v14 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v129 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v102 = &v100 - v17;
  MEMORY[0x28223BE20](v18);
  v107 = &v100 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E40, &unk_24E374268);
  MEMORY[0x28223BE20](v20 - 8);
  v108 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v132 = (&v100 - v23);
  result = sub_24DFD8654();
  v112 = a1 & 0xC000000000000001;
  v113 = result;
  v110 = a1 & 0xFFFFFFFFFFFFFF8;
  v111 = a1;
  v116 = v11 + 8;
  v117 = v11;
  v25 = (v14 + 16);
  v114 = (v14 + 8);
  v26 = 0;
  v130 = MEMORY[0x277D84F90];
  v131 = xmmword_24E367D20;
  v126 = v11 + 16;
  v119 = v10;
  v109 = v13;
  v115 = v25;
  while (1)
  {
    if (v113 == v26)
    {
      return v130;
    }

    if (v112)
    {
      result = MEMORY[0x25303F560](v26, v111);
    }

    else
    {
      if (v26 >= *(v110 + 16))
      {
        goto LABEL_26;
      }

      result = *(v111 + 8 * v26 + 32);
    }

    v133 = result;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    v123 = v26;
    v127 = type metadata accessor for ReportFriendAction(0);
    __swift_storeEnumTagSinglePayload(v132, 1, 1, v127);
    v144 = 0;
    v142 = 0u;
    v143 = 0u;
    if ((GKIsRemoteUI() & 1) == 0)
    {
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
      inited = swift_initStackObject();
      *(inited + 16) = v131;
      *(inited + 32) = 0x79546E6F69746361;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = 0x74726F706572;
      *(inited + 56) = 0xE600000000000000;
      v28 = sub_24E347C28();
      v29 = v118;
      if (qword_27F1DD808 != -1)
      {
        swift_once();
      }

      v30 = sub_24E347058();
      v121 = __swift_project_value_buffer(v30, qword_27F20AE00);
      MEMORY[0x25303DB90](0x464174726F706572, 0xED0000646E656972, 0x6E6F74747562, 0xE600000000000000, v28);

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960, &qword_24E36BFB0);
      v32 = v117;
      v33 = *(v117 + 72);
      v34 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v120 = v31;
      v106 = v34 + v33;
      v35 = swift_allocObject();
      *(v35 + 16) = v131;
      v105 = *(v32 + 16);
      v105(v35 + v34, v13, v29);
      sub_24E347448();
      v36 = v107;
      sub_24E3471D8();
      v104 = *(v32 + 8);
      v104(v13, v29);
      v37 = v132;
      sub_24DFA9298(v132, &qword_27F1E2E40, &unk_24E374268);
      v38 = v127;
      v39 = v37 + *(v127 + 20);
      v103 = *v115;
      v103(v39, v36, v128);
      v40 = v133;
      *v37 = v133;
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
      v41 = v40;
      if (sub_24DFF2054())
      {
        v42 = swift_initStackObject();
        *(v42 + 16) = v131;
        *(v42 + 32) = 0x79546E6F69746361;
        *(v42 + 40) = 0xEA00000000006570;
        *(v42 + 72) = MEMORY[0x277D837D0];
        *(v42 + 48) = 0x65766F6D6572;
        *(v42 + 56) = 0xE600000000000000;
        v43 = sub_24E347C28();
        v44 = v41;
        MEMORY[0x25303DB90](0x724665766F6D6572, 0xEC000000646E6569, 0x6E6F74747562, 0xE600000000000000, v43, v121);

        v45 = swift_allocObject();
        *(v45 + 16) = v131;
        v46 = v118;
        v105(v45 + v34, v13, v118);
        sub_24E347448();
        v47 = v102;
        sub_24E3471D8();
        v104(v13, v46);
        v48 = sub_24E287BD0();
        v49 = v100;
        v50 = v128;
        v103(&v100[*(v101 + 28)], v47, v128);
        *v49 = v48;
        *(v49 + 8) = v44;
        *(v49 + 16) = 1;
        v51 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v52 = swift_allocObject();
        *(v52 + 16) = v51;
        *(v52 + 24) = v44;
        *(&v140 + 1) = sub_24E347278();
        v141 = MEMORY[0x277D21D10];
        __swift_allocate_boxed_opaque_existential_1(&v139);
        v53 = v44;

        sub_24E2A1924(sub_24E0A6374, v52);

        sub_24E0A637C(v49, type metadata accessor for RemoveFriendAction);
        v54 = *v114;
        (*v114)(v102, v50);
        v54(v107, v50);
        sub_24DFA9298(&v142, &qword_27F1DEE90, &unk_24E369E90);

        v142 = v139;
        v143 = v140;
        v144 = v141;
      }

      else
      {
        (*v114)(v107, v128);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
    v55 = swift_initStackObject();
    *(v55 + 16) = v131;
    *(v55 + 32) = 0x79546E6F69746361;
    *(v55 + 40) = 0xEA00000000006570;
    *(v55 + 72) = MEMORY[0x277D837D0];
    *(v55 + 48) = 0x657461676976616ELL;
    *(v55 + 56) = 0xE800000000000000;
    v56 = sub_24E347C28();
    if (qword_27F1DD808 != -1)
    {
      swift_once();
    }

    v57 = sub_24E347058();
    v58 = __swift_project_value_buffer(v57, qword_27F20AE00);
    MEMORY[0x25303DB90](0x7250646E65697266, 0xED0000656C69666FLL, 0x6E6F74747562, 0xE600000000000000, v56, v58);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960, &qword_24E36BFB0);
    v59 = v117;
    v60 = (*(v117 + 80) + 32) & ~*(v117 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v131;
    v62 = v61 + v60;
    v63 = v118;
    (*(v59 + 16))(v62, v13, v118);
    sub_24E347448();
    sub_24E3471D8();
    (*(v59 + 8))(v13, v63);
    v64 = v133;
    v65 = [v133 playerID];
    v66 = sub_24E347CF8();
    v68 = v67;

    *&v136 = v66;
    *(&v136 + 1) = v68;
    sub_24E348918();
    v69 = [v64 displayNameWithOptions_];
    v121 = sub_24E347CF8();
    v122 = v70;

    v120 = sub_24E0A3B50(v64);
    v72 = v71;
    v73 = v108;
    sub_24DFC24D4(v132, v108, &qword_27F1E2E40, &unk_24E374268);
    v74 = v127;
    if (__swift_getEnumTagSinglePayload(v73, 1, v127) == 1)
    {
      sub_24DFA9298(v73, &qword_27F1E2E40, &unk_24E374268);
      v136 = 0u;
      v137 = 0u;
      v138 = 0;
    }

    else
    {
      *(&v137 + 1) = v74;
      v138 = sub_24E0A62D4(&qword_27F1E0AD0, type metadata accessor for ReportFriendAction, &unk_24E383B30);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v136);
      sub_24E0A631C(v73, boxed_opaque_existential_1, type metadata accessor for ReportFriendAction);
    }

    sub_24DFC24D4(&v142, v135, &qword_27F1DEE90, &unk_24E369E90);
    v76 = v133;
    v77 = [v133 playerID];
    v78 = sub_24E347CF8();
    v80 = v79;

    v81 = type metadata accessor for PlayerProfileAction(0);
    v134[3] = v81;
    v134[4] = sub_24E0A62D4(&qword_27F1E2E48, type metadata accessor for PlayerProfileAction, &unk_24E38C764);
    v82 = __swift_allocate_boxed_opaque_existential_1(v134);
    (*v115)(v82 + *(v81 + 24), v129, v128);
    *v82 = v78;
    v82[1] = v80;
    *(v82 + 16) = 1;
    *(v82 + *(v81 + 28)) = 0;
    v83 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
    *(v6 + 9) = 0u;
    *(v6 + 10) = 0u;
    *(v6 + 22) = 0;
    *(v6 + 15) = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 34) = 0;
    v84 = v125;
    v85 = *(v125 + 56);
    v86 = sub_24E3474B8();
    __swift_storeEnumTagSinglePayload(&v6[v85], 1, 1, v86);
    v87 = *(v84 + 60);
    v88 = v140;
    *v6 = v139;
    *(v6 + 1) = v88;
    v89 = v137;
    *(v6 + 104) = v136;
    v90 = v121;
    v91 = v122;
    *(v6 + 4) = v141;
    *(v6 + 5) = v90;
    v92 = v120;
    *(v6 + 6) = v91;
    *(v6 + 7) = v92;
    *(v6 + 8) = v72;
    *(v6 + 9) = 0;
    v6[80] = -1;
    *(v6 + 11) = 0;
    *(v6 + 120) = v89;
    *(v6 + 17) = v138;
    sub_24DFC2564(v135, (v6 + 144), &qword_27F1DEE90, &unk_24E369E90);
    *(v6 + 184) = 0u;
    *(v6 + 200) = 0u;
    *(v6 + 216) = 0u;
    v6[232] = 2;
    sub_24DFC2564(v134, (v6 + 240), &qword_27F1DEE90, &unk_24E369E90);
    *&v6[v87] = v83;
    v6[96] = 0;
    sub_24E0A627C(v6, v124, type metadata accessor for SmallFriendLockupData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_24E076EE4();
      v130 = v98;
    }

    v13 = v109;
    v93 = *(v130 + 16);
    v94 = v128;
    if (v93 >= *(v130 + 24) >> 1)
    {
      sub_24E076EE4();
      v130 = v99;
    }

    (*v114)(v129, v94);
    sub_24DFA9298(&v142, &qword_27F1DEE90, &unk_24E369E90);
    sub_24DFA9298(v132, &qword_27F1E2E40, &unk_24E374268);
    *(&v140 + 1) = v125;
    v141 = sub_24E0A62D4(&qword_27F1DFFC8, type metadata accessor for SmallFriendLockupData, &unk_24E3834C8);
    v95 = __swift_allocate_boxed_opaque_existential_1(&v139);
    v96 = v124;
    sub_24E0A627C(v124, v95, type metadata accessor for SmallFriendLockupData);
    v97 = v130;
    *(v130 + 16) = v93 + 1;
    sub_24DE56CE8(&v139, v97 + 40 * v93 + 32);
    sub_24E0A637C(v96, type metadata accessor for SmallFriendLockupData);
    result = sub_24E0A637C(v6, type metadata accessor for SmallFriendLockupData);
    v26 = v123 + 1;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_24E0A3888()
{
  v0 = [objc_opt_self() local];
  [v0 sendFriendInviteTo:0 groupId:0];
}

void sub_24E0A38F0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_24E0A394C(a2);
  }
}

void sub_24E0A394C(void *a1)
{
  v2 = v1 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_requiredData;
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_requiredData + 8);
  if (v3)
  {
    v21 = MEMORY[0x277D84F90];
    v4 = sub_24DFD8654();

    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {

        v18 = v21;
        v2 = v19;
        goto LABEL_20;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25303F560](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v8 = [v6 playerID];
      v9 = sub_24E347CF8();
      v11 = v10;

      v12 = [a1 playerID];
      v13 = sub_24E347CF8();
      v15 = v14;

      if (v9 == v13 && v11 == v15)
      {
      }

      else
      {
        v17 = sub_24E348C08();

        if (v17)
        {
        }

        else
        {
          sub_24E348A48();
          sub_24E348A78();
          sub_24E348A88();
          sub_24E348A58();
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    v18 = 0;
LABEL_20:
    *(v2 + 8) = v18;

    sub_24E09F750();
  }
}

uint64_t sub_24E0A3B50(id a1)
{
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI20FriendsListPresenter_friendType) > 1u)
  {
    v7 = [a1 lastPlayedGame];
    if (v7)
    {
      v8 = v7;
      v9 = sub_24E347CB8();
      v10 = GKGameCenterUIFrameworkBundle();
      v11 = GKGetLocalizedStringFromTableInBundle();

      sub_24E347CF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_24E367D20;
      v13 = [v8 name];
    }

    else
    {
      v14 = [a1 lastPlayedDate];
      if (!v14)
      {
        v3 = [a1 contact];
        if (v3)
        {
          goto LABEL_3;
        }

        return 0;
      }

      v8 = v14;
      v15 = sub_24E347CB8();
      v16 = GKGameCenterUIFrameworkBundle();
      v17 = GKGetLocalizedStringFromTableInBundle();

      sub_24E347CF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_24E367D20;
      v13 = [v8 _gkFormattedWhenStringWithOptions_];
    }

    v18 = v13;
    v19 = sub_24E347CF8();
    v21 = v20;

    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_24DF95A7C();
    *(v12 + 32) = v19;
    *(v12 + 40) = v21;
    v6 = sub_24E347D18();

    return v6;
  }

  v3 = [a1 contact];
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v4 = v3;
  v5 = [v3 _gkCompositeName];

  v6 = sub_24E347CF8();
  return v6;
}

uint64_t sub_24E0A3E2C()
{
}

uint64_t type metadata accessor for FriendsListPresenter(uint64_t a1)
{
  result = qword_27F1E2E28;
  if (!qword_27F1E2E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E0A407C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E08452C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24E0A418C(v6);
  return sub_24E348A58();
}

uint64_t sub_24E0A40F8(uint64_t *a1, uint64_t (*a2)(id, id), uint64_t a3)
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_24E08452C(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_24E0A426C(v10, a2, a3);
  return sub_24E348A58();
}

void sub_24E0A418C(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_24E348B98();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_24E154E04(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_24E0A4784(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_24E0A436C(0, v3, 1, a1);
  }
}

void sub_24E0A426C(uint64_t *a1, uint64_t (*a2)(id, id), uint64_t a3)
{
  v7 = a1[1];
  v8 = sub_24E348B98();
  if (v8 < v7)
  {
    v9 = v8;
    v10 = sub_24E154E04(v7 / 2);
    v12[0] = v11;
    v12[1] = v7 / 2;
    sub_24E0A5198(v12, v13, a1, v9, a2, a3);
    if (v3)
    {
      if (v7 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v7 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7)
  {
    sub_24E0A468C(0, v7, 1, a1, a2);
  }
}

void sub_24E0A436C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v59 = sub_24E343368();
  MEMORY[0x28223BE20](v59);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = &v46 - v10;
  MEMORY[0x28223BE20](v11);
  v54 = &v46 - v12;
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - v15;
  v47 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = (v14 + 32);
    v53 = (v14 + 8);
    v55 = v17;
    v19 = v17 + 8 * a3 - 8;
    v20 = a1 - a3;
    v21 = &selRef_iconURLString;
    while (2)
    {
      v49 = v19;
      v50 = a3;
      v22 = *(v55 + 8 * a3);
      v48 = v20;
      v23 = v20;
      while (1)
      {
        v24 = *v19;
        v25 = v22;
        v26 = v24;
        v27 = [v25 v21[380]];
        if (!v27)
        {
          break;
        }

        v28 = v27;
        v58 = v25;
        v29 = v26;
        v30 = v54;
        sub_24E343328();

        v31 = *v18;
        v32 = v30;
        v26 = v29;
        (*v18)(v16, v32, v59);
        v33 = [v29 v21[380]];
        if (!v33)
        {
          (*v53)(v16, v59);
          v25 = v58;
          break;
        }

        v34 = v33;
        v57 = v29;
        v35 = v52;
        sub_24E343328();

        v36 = v23;
        v37 = v21;
        v38 = v18;
        v39 = v59;
        v40 = v16;
        v41 = v51;
        v31(v51, v35, v59);
        v56 = sub_24E343348();
        v42 = *v53;
        v43 = v41;
        v16 = v40;
        v44 = v39;
        v18 = v38;
        v21 = v37;
        (*v53)(v43, v44);
        v42(v16, v44);

        if (v56 == 1)
        {
          if (!v55)
          {
            __break(1u);
            return;
          }

          v45 = *v19;
          v22 = *(v19 + 8);
          *v19 = v22;
          *(v19 + 8) = v45;
          v19 -= 8;
          v23 = v36 + 1;
          if (v36 != -1)
          {
            continue;
          }
        }

        goto LABEL_12;
      }

LABEL_12:
      a3 = v50 + 1;
      v19 = v49 + 8;
      v20 = v48 - 1;
      if (v50 + 1 != v47)
      {
        continue;
      }

      break;
    }
  }
}

void sub_24E0A468C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(id, id))
{
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 8 * a3 - 8;
    v9 = a1 - a3;
LABEL_4:
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    v19 = v8;
    while (1)
    {
      v11 = *v8;
      v12 = v10;
      v13 = v11;
      v14 = a5(v12, v13);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = *(v8 + 8);
        *v8 = v10;
        *(v8 + 8) = v15;
        v8 -= 8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 8;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_24E0A4784(id **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v158 = sub_24E343368();
  MEMORY[0x28223BE20](v158);
  v152 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v151 = &v136 - v10;
  MEMORY[0x28223BE20](v11);
  v154 = &v136 - v12;
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v142 = &v136 - v15;
  MEMORY[0x28223BE20](v16);
  v141 = &v136 - v17;
  MEMORY[0x28223BE20](v18);
  v145 = &v136 - v19;
  MEMORY[0x28223BE20](v20);
  v148 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    i = MEMORY[0x277D84F90];
LABEL_101:
    v159 = *v139;
    if (!v159)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v129 = i;
      v130 = (i + 16);
      for (i = *(i + 16); i >= 2; *v130 = i)
      {
        if (!*v148)
        {
          goto LABEL_138;
        }

        v131 = (v129 + 16 * i);
        v132 = *v131;
        v133 = &v130[2 * i];
        v134 = *(v133 + 1);
        sub_24E0A5844((*v148 + 8 * *v131), (*v148 + 8 * *v133), (*v148 + 8 * v134), v159);
        if (v5)
        {
          break;
        }

        if (v134 < v132)
        {
          goto LABEL_126;
        }

        if (i - 2 >= *v130)
        {
          goto LABEL_127;
        }

        *v131 = v132;
        v131[1] = v134;
        v135 = *v130 - i;
        if (*v130 < i)
        {
          goto LABEL_128;
        }

        i = *v130 - 1;
        sub_24E081A34(v133 + 16, v135, v133);
      }

LABEL_99:

      return;
    }

LABEL_135:
    i = sub_24E081A20(i);
    goto LABEL_103;
  }

  v144 = &v136 - v22;
  v153 = v23;
  v137 = a4;
  v25 = 0;
  v156 = (v21 + 8);
  v157 = (v21 + 32);
  i = MEMORY[0x277D84F90];
  v27 = &selRef_iconURLString;
  while (2)
  {
    v28 = v25;
    v29 = v25 + 1;
    v140 = v25;
    if (v25 + 1 >= v24)
    {
      v52 = v158;
      goto LABEL_26;
    }

    v138 = i;
    v149 = v5;
    v30 = *(*v148 + 8 * v29);
    v31 = (*v148 + 8 * v25);
    v146 = 8 * v25;
    v33 = *v31;
    v32 = v31 + 2;
    v34 = v30;
    v35 = v33;
    LODWORD(v155) = sub_24E0E8CBC(v34, v35);

    v147 = v24;
    while (v29 + 1 < v24)
    {
      v36 = *(v32 - 1);
      v37 = *v32;
      v38 = v36;
      v39 = [v37 v27[380]];
      if (!v39)
      {

        goto LABEL_12;
      }

      v40 = v39;
      v159 = v32;
      v150 = v29;
      v41 = v145;
      sub_24E343328();

      v42 = *v157;
      v43 = v144;
      v44 = v27;
      v45 = v158;
      (*v157)(v144, v41, v158);
      v46 = [v38 v44 + 2840];
      if (!v46)
      {
        (*v156)(v43, v45);

        v27 = &selRef_iconURLString;
        v29 = v150;
        v32 = v159;
LABEL_12:
        if (v155)
        {
          v24 = v29 + 1;
          v5 = v149;
          v52 = v158;
          v28 = v140;
          v53 = v146;
          goto LABEL_17;
        }

        goto LABEL_13;
      }

      v47 = v46;
      v48 = v142;
      sub_24E343328();

      v49 = v141;
      v42(v141, v48, v45);
      v50 = sub_24E343348();
      v51 = *v156;
      (*v156)(v49, v45);
      v51(v43, v45);
      v24 = v147;

      v27 = &selRef_iconURLString;
      v29 = v150;
      v32 = v159;
      if (((v155 ^ (v50 != 1)) & 1) == 0)
      {
        v24 = v150 + 1;
        break;
      }

LABEL_13:
      ++v32;
      ++v29;
    }

    v5 = v149;
    v52 = v158;
    v28 = v140;
    v53 = v146;
    if ((v155 & 1) == 0)
    {
      v29 = v24;
      i = v138;
      goto LABEL_26;
    }

LABEL_17:
    i = v138;
    if (v24 < v28)
    {
      goto LABEL_132;
    }

    if (v28 < v24)
    {
      v54 = 8 * v24 - 8;
      v55 = v24;
      v56 = v28;
      do
      {
        if (v56 != --v55)
        {
          v57 = *v148;
          if (!*v148)
          {
            goto LABEL_139;
          }

          v58 = *(v57 + v53);
          *(v57 + v53) = *(v57 + v54);
          *(v57 + v54) = v58;
        }

        ++v56;
        v54 -= 8;
        v53 += 8;
      }

      while (v56 < v55);
    }

    v29 = v24;
LABEL_26:
    v59 = v148[1];
    if (v29 >= v59)
    {
      goto LABEL_48;
    }

    if (__OFSUB__(v29, v28))
    {
      goto LABEL_131;
    }

    if (v29 - v28 >= v137)
    {
LABEL_48:
      if (v29 < v28)
      {
        goto LABEL_130;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E076FA4(0, *(i + 16) + 1, 1, i);
        i = v127;
      }

      v86 = *(i + 16);
      v85 = *(i + 24);
      v87 = v86 + 1;
      if (v86 >= v85 >> 1)
      {
        sub_24E076FA4(v85 > 1, v86 + 1, 1, i);
        i = v128;
      }

      *(i + 16) = v87;
      v88 = i + 32;
      v89 = (i + 32 + 16 * v86);
      *v89 = v140;
      v89[1] = v29;
      v150 = v29;
      v159 = *v139;
      if (!v159)
      {
        goto LABEL_140;
      }

      v149 = v5;
      if (!v86)
      {
LABEL_97:
        v5 = v149;
        v24 = v148[1];
        v25 = v150;
        if (v150 >= v24)
        {
          goto LABEL_101;
        }

        continue;
      }

      while (1)
      {
        v5 = v87 - 1;
        v90 = (v88 + 16 * (v87 - 1));
        v91 = (i + 16 * v87);
        if (v87 >= 4)
        {
          break;
        }

        if (v87 == 3)
        {
          v92 = *(i + 32);
          v93 = *(i + 40);
          v102 = __OFSUB__(v93, v92);
          v94 = v93 - v92;
          v95 = v102;
LABEL_68:
          if (v95)
          {
            goto LABEL_117;
          }

          v107 = *v91;
          v106 = v91[1];
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_120;
          }

          v111 = v90[1];
          v112 = v111 - *v90;
          if (__OFSUB__(v111, *v90))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v109, v112))
          {
            goto LABEL_125;
          }

          if (v109 + v112 >= v94)
          {
            if (v94 < v112)
            {
              v5 = v87 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v87 < 2)
        {
          goto LABEL_119;
        }

        v114 = *v91;
        v113 = v91[1];
        v102 = __OFSUB__(v113, v114);
        v109 = v113 - v114;
        v110 = v102;
LABEL_83:
        if (v110)
        {
          goto LABEL_122;
        }

        v116 = *v90;
        v115 = v90[1];
        v102 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v102)
        {
          goto LABEL_124;
        }

        if (v117 < v109)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v5 - 1 >= v87)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
          goto LABEL_134;
        }

        if (!*v148)
        {
          goto LABEL_137;
        }

        v121 = i;
        v122 = (v88 + 16 * (v5 - 1));
        v123 = *v122;
        i = v88 + 16 * v5;
        v124 = *(i + 8);
        v125 = v149;
        sub_24E0A5844((*v148 + 8 * *v122), (*v148 + 8 * *i), (*v148 + 8 * v124), v159);
        v149 = v125;
        if (v125)
        {
          goto LABEL_99;
        }

        if (v124 < v123)
        {
          goto LABEL_112;
        }

        v126 = *(v121 + 16);
        if (v5 > v126)
        {
          goto LABEL_113;
        }

        *v122 = v123;
        v122[1] = v124;
        if (v5 >= v126)
        {
          goto LABEL_114;
        }

        v87 = v126 - 1;
        sub_24E081A34((i + 16), v126 - 1 - v5, (v88 + 16 * v5));
        i = v121;
        *(v121 + 16) = v126 - 1;
        if (v126 <= 2)
        {
          goto LABEL_97;
        }
      }

      v96 = v88 + 16 * v87;
      v97 = *(v96 - 64);
      v98 = *(v96 - 56);
      v102 = __OFSUB__(v98, v97);
      v99 = v98 - v97;
      if (v102)
      {
        goto LABEL_115;
      }

      v101 = *(v96 - 48);
      v100 = *(v96 - 40);
      v102 = __OFSUB__(v100, v101);
      v94 = v100 - v101;
      v95 = v102;
      if (v102)
      {
        goto LABEL_116;
      }

      v103 = v91[1];
      v104 = v103 - *v91;
      if (__OFSUB__(v103, *v91))
      {
        goto LABEL_118;
      }

      v102 = __OFADD__(v94, v104);
      v105 = v94 + v104;
      if (v102)
      {
        goto LABEL_121;
      }

      if (v105 >= v99)
      {
        v119 = *v90;
        v118 = v90[1];
        v102 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v102)
        {
          goto LABEL_129;
        }

        if (v94 < v120)
        {
          v5 = v87 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

    break;
  }

  v60 = v28 + v137;
  if (__OFADD__(v28, v137))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = v148[1];
  }

  if (v60 < v28)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v29 == v60)
  {
    goto LABEL_48;
  }

  v138 = i;
  v149 = v5;
  v155 = *v148;
  v61 = v155 + 8 * v29 - 8;
  v62 = v28 - v29;
  v143 = v60;
  while (2)
  {
    v150 = v29;
    v63 = v62;
    v64 = *(v155 + 8 * v29);
    v146 = v63;
    v147 = v61;
    v65 = v63;
LABEL_36:
    v66 = *v61;
    v67 = v64;
    v68 = v66;
    v69 = [v67 v27[380]];
    if (!v69)
    {
      goto LABEL_44;
    }

    v70 = v69;
    v159 = v65;
    v71 = v154;
    sub_24E343328();

    v72 = *v157;
    v73 = v153;
    v74 = v71;
    v27 = &selRef_iconURLString;
    (*v157)(v153, v74, v52);
    v75 = [v68 lastPlayedDate];
    if (!v75)
    {
      (*v156)(v73, v52);
LABEL_44:

LABEL_46:
      v29 = v150 + 1;
      v61 = v147 + 8;
      v62 = v146 - 1;
      if (v150 + 1 == v143)
      {
        v29 = v143;
        v5 = v149;
        i = v138;
        v28 = v140;
        goto LABEL_48;
      }

      continue;
    }

    break;
  }

  v76 = v75;
  v77 = v152;
  sub_24E343328();

  v78 = v151;
  v79 = v77;
  v52 = v158;
  v72(v151, v79, v158);
  v80 = sub_24E343348();
  v81 = *v156;
  (*v156)(v78, v52);
  v81(v73, v52);

  if (v80 != 1)
  {
    v27 = &selRef_iconURLString;
    goto LABEL_46;
  }

  v82 = v159;
  if (v155)
  {
    v83 = *v61;
    v64 = *(v61 + 8);
    *v61 = v64;
    *(v61 + 8) = v83;
    v61 -= 8;
    v84 = __CFADD__(v82, 1);
    v65 = (v82 + 1);
    v27 = &selRef_iconURLString;
    if (v84)
    {
      goto LABEL_46;
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}