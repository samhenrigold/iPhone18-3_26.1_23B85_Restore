uint64_t sub_221B90DAC()
{
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_67();
  memcpy((v0 + 16), *(v0 + 1232), 0xC4uLL);
  if (sub_221B91310(v0 + 16) == 1)
  {
    v1 = *(v0 + 1288);
    v2 = *(v0 + 1280);
    v3 = sub_221BCCC98();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
    sub_221B919E8(v1, v2, &qword_27CFB7D60, &qword_221BD1870);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
    v5 = *(v0 + 1288);
    v6 = *(v0 + 1280);
    if (EnumTagSinglePayload == 1)
    {
      sub_2219B1538(*(v0 + 1288), &qword_27CFB7D60, &qword_221BD1870);
      sub_2219B1538(v6, &qword_27CFB7D60, &qword_221BD1870);
      v7 = 0;
      v8 = 0;
      *&v15 = OUTLINED_FUNCTION_20_16();
      v18 = 0uLL;
      v19 = 1;
      v20 = 2;
    }

    else
    {
      v7 = sub_221BCCC88();
      v8 = v26;
      sub_2219B1538(v5, &qword_27CFB7D60, &qword_221BD1870);
      OUTLINED_FUNCTION_0_6();
      (*(v27 + 8))(v6, v3);
      *&v15 = OUTLINED_FUNCTION_20_16();
      v19 = 1;
      v20 = 2;
      v18 = 0uLL;
    }

    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
  }

  else
  {
    v9 = *(v0 + 224);
    v16 = *(v0 + 240);
    v20 = *(v0 + 248);
    v7 = *(v0 + 256);
    v8 = *(v0 + 264);
    v15 = *(v0 + 272);
    v17 = *(v0 + 288);
    v18 = *(v0 + 312);
    v21 = *(v0 + 328);
    v22 = *(v0 + 344);
    v23 = *(v0 + 360);
    v24 = *(v0 + 376);
    v25 = *(v0 + 392);
    v14 = *(v0 + 408);
    v10 = *(v0 + 305);
    v11 = *(v0 + 304);
    v19 = *(v0 + 232);
    v12 = *(v0 + 217);
    v13 = *(v0 + 216);
  }

  v28 = *(v0 + 1240);
  v29 = v19 & 1;
  *(v0 + 1320) = v29;
  *(v0 + 416) = v13 & 1;
  *(v0 + 417) = v12 & 1;
  *(v0 + 424) = v9;
  *(v0 + 432) = v29;
  *(v0 + 440) = v16;
  *(v0 + 448) = v20;
  *(v0 + 456) = v7;
  *(v0 + 464) = v8;
  *(v0 + 472) = v15;
  *(v0 + 488) = v17;
  *(v0 + 504) = v11 & 1;
  *(v0 + 505) = v10 & 1;
  *(v0 + 512) = v18;
  *(v0 + 528) = v21;
  *(v0 + 544) = v22;
  *(v0 + 560) = v23;
  *(v0 + 576) = v24;
  *(v0 + 592) = v25;
  *(v0 + 608) = v14;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    type metadata accessor for DefaultPerformAppIntentDelegate();
    v30 = swift_allocObject();
  }

  *(v0 + 1296) = v30;
  v31 = *(v0 + 1264);
  v32 = *(v31 + 32);
  v46 = v31 + 32;
  sub_221B919E8(v0 + 216, v0 + 616, &qword_27CFBC0E8, &qword_221BE80C0);
  swift_unknownObjectRetain();
  v45 = v32 + *v32;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 1304) = v33;
  *v33 = v34;
  v33[1] = sub_221B91124;
  OUTLINED_FUNCTION_123_0();

  return v42(v35, v36, v37, v38, v39, v40, v41, v42, v45, v46);
}

uint64_t sub_221B91124()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  v3[164] = v0;

  if (v0)
  {
    memcpy(v3 + 102, v3 + 52, 0xC4uLL);
    sub_221B91334((v3 + 102));
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    memcpy(v3 + 127, v3 + 52, 0xC4uLL);
    sub_221B91334((v3 + 127));
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_4_3();

    return v10();
  }
}

uint64_t sub_221B912A8()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B91310(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t AppIntentDispatching.performShowOutputAction<A>(for:delegate:)()
{
  OUTLINED_FUNCTION_1_5();
  v1[71] = v0;
  v1[70] = v2;
  v1[69] = v3;
  v1[68] = v4;
  v1[67] = v5;
  v1[66] = v6;
  v1[65] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_221B91440()
{
  OUTLINED_FUNCTION_57_2();
  sub_221B919E8(v0[66] + 128, (v0 + 60), &unk_27CFBB7C0, &qword_221BE4C20);
  if (v0[63])
  {
    v1 = v0[73];
    v2 = v0[72];
    v3 = v0[66];
    v4 = *(v0 + 31);
    *(v0 + 55) = *(v0 + 30);
    *(v0 + 57) = v4;
    v0[59] = v0[64];
    v5 = sub_221BCCC98();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
    v6 = *(v3 + 168);
    *(v0 + 608) = 1;
    sub_221B919E8(v1, v2, &qword_27CFB7D60, &qword_221BD1870);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v5);
    v8 = v0[73];
    v9 = v0[72];
    if (EnumTagSinglePayload == 1)
    {
      sub_2219B1538(v0[73], &qword_27CFB7D60, &qword_221BD1870);
      sub_2219B1538(v9, &qword_27CFB7D60, &qword_221BD1870);
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v10 = sub_221BCCC88();
      v11 = v18;
      sub_2219B1538(v8, &qword_27CFB7D60, &qword_221BD1870);
      OUTLINED_FUNCTION_0_6();
      (*(v19 + 8))(v9, v5);
    }

    *(v0 + 8) = 0;
    *(v0 + 18) = *(v0 + 53);
    *(v0 + 11) = *(v0 + 108);
    v0[3] = 0;
    *(v0 + 32) = *(v0 + 608);
    *(v0 + 33) = *(v0 + 105);
    *(v0 + 9) = *(v0 + 423);
    v0[5] = 0x403E000000000000;
    *(v0 + 48) = 2;
    v20 = *(v0 + 427);
    *(v0 + 13) = *(v0 + 430);
    *(v0 + 49) = v20;
    v0[7] = v10;
    v0[8] = v11;
    *(v0 + 9) = 0u;
    *(v0 + 11) = 0u;
    *(v0 + 104) = v6 & 1;
    *(v0 + 105) = 0;
    *(v0 + 106) = *(v0 + 218);
    *(v0 + 55) = *(v0 + 111);
    *(v0 + 7) = 0u;
    *(v0 + 8) = 0u;
    *(v0 + 9) = 0u;
    *(v0 + 10) = 0u;
    *(v0 + 11) = 0u;
    *(v0 + 12) = 0u;
    *(v0 + 52) = 2;
    memcpy(v0 + 28, v0 + 2, 0xC4uLL);
    OUTLINED_FUNCTION_11_19();
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v0[74] = v21;
    *v21 = v22;
    v21[1] = sub_221B917FC;
    OUTLINED_FUNCTION_75_4();

    __asm { BRAA            X7, X16 }
  }

  v12 = sub_2219B1538((v0 + 60), &unk_27CFBB7C0, &qword_221BE4C20);
  sub_2219ACB94(v12, v13, v14);
  OUTLINED_FUNCTION_15_0();
  swift_allocError();
  *v15 = 0xD000000000000030;
  *(v15 + 8) = 0x8000000221BF1710;
  *(v15 + 16) = 2;
  swift_willThrow();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_75_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_221B917FC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 600) = v0;

  if (!v0)
  {
    sub_221B91334(v3 + 16);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B91900()
{
  OUTLINED_FUNCTION_1_5();
  sub_2219B397C(v0 + 440);

  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_221B91970()
{
  OUTLINED_FUNCTION_1_5();
  sub_2219B397C(v0 + 440);
  sub_221B91334(v0 + 16);

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221B919E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_6();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t AppIntentDispatching.query<A>(_:options:)()
{
  OUTLINED_FUNCTION_67();
  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  *(v1 + 88) = v5;
  *(v1 + 96) = v6;
  *(v1 + 56) = *v7;
  *(v1 + 64) = *(v7 + 8);
  OUTLINED_FUNCTION_11_19();
  v13 = (v8 + *v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v1 + 136) = v9;
  *v9 = v10;
  v9[1] = sub_221B91B84;
  v11 = OUTLINED_FUNCTION_15_17();

  return v13(v11);
}

{
  OUTLINED_FUNCTION_67();
  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  *(v1 + 88) = v5;
  *(v1 + 96) = v6;
  *(v1 + 56) = *v7;
  *(v1 + 64) = *(v7 + 8);
  OUTLINED_FUNCTION_11_19();
  v13 = (v8 + *v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v1 + 136) = v9;
  *v9 = v10;
  v9[1] = sub_221B91F14;
  v11 = OUTLINED_FUNCTION_15_17();

  return v13(v11);
}

uint64_t sub_221B91B84()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B91C80()
{
  OUTLINED_FUNCTION_57_2();
  v1 = OUTLINED_FUNCTION_19_16();
  v2(v1);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC0F0, &qword_221BE80E0);
  v3 = sub_221BCE008();

  *(v0 + 80) = v3;
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_27_13(v4, v5, v6, v7, v8, v9, v10, v11, v12, v23, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC0F8, &qword_221BE80E8);
  sub_221B92BD8();
  OUTLINED_FUNCTION_29_12();
  sub_221B8F6FC(v14, v15, v16, v24, v17, v18, v19, v20);

  OUTLINED_FUNCTION_24_13();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_4_3();

  return v21();
}

uint64_t sub_221B91F14()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B92010()
{
  OUTLINED_FUNCTION_57_2();
  v1 = OUTLINED_FUNCTION_19_16();
  v2(v1);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC0F0, &qword_221BE80E0);
  v3 = sub_221BCE008();

  *(v0 + 80) = v3;
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_27_13(v4, v5, v6, v7, v8, v9, v10, v11, v12, v23, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC0F8, &qword_221BE80E8);
  sub_221B92BD8();
  OUTLINED_FUNCTION_29_12();
  sub_221B8F6FC(v14, v15, v16, v24, v17, v18, v19, v20);

  OUTLINED_FUNCTION_24_13();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_4_3();

  return v21();
}

uint64_t sub_221B92190@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v8);
  (*(*(v9 + 16) + 8))(v16, v8);
  v15[0] = v16[0];
  v15[1] = v16[1];
  v17[3] = &type metadata for _IntentValueConversionContext;
  v17[4] = &protocol witness table for _IntentValueConversionContext;
  v10 = swift_allocObject();
  v17[0] = v10;
  swift_unknownObjectRetain();
  _IntentValueConversionContext.init(origin:dispatcher:)(v15, a2, a3, v10 + 16);
  sub_22199E73C(v7);
  v12 = v11;
  result = __swift_destroy_boxed_opaque_existential_0(v17);
  *a4 = v12;
  return result;
}

uint64_t AppIntentDispatching.query<A, B>(_:input:options:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v11 + 376) = a9;
  *(v11 + 384) = a10;
  *(v11 + 360) = a7;
  *(v11 + 368) = a8;
  *(v11 + 344) = a5;
  *(v11 + 352) = a6;
  *(v11 + 328) = a1;
  *(v11 + 336) = a3;
  v12 = *a2;
  *(v11 + 392) = v10;
  *(v11 + 400) = v12;
  *(v11 + 408) = *(a2 + 1);
  *(v11 + 424) = a2[3];
  *(v11 + 178) = *a4;
  *(v11 + 432) = *(a4 + 8);
  return OUTLINED_FUNCTION_11_21();
}

uint64_t sub_221B9230C()
{
  v22 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 178);
  v4 = *(v0 + 416);
  v3 = *(v0 + 424);
  v5 = *(v0 + 408);
  v7 = *(v0 + 392);
  v17 = *(v0 + 440);
  v19 = *(v0 + 368);
  v8 = *(v0 + 336);
  *&v20 = *(v0 + 400);
  v6 = v20;
  *(&v20 + 1) = v5;
  v21 = xmmword_221BD0800;

  swift_unknownObjectRetain();
  v15 = *(v0 + 376);
  v16 = *(v0 + 352);
  _IntentValueConversionContext.init(origin:dispatcher:)(&v20, v7, v19, v0 + 184);
  *&v20 = v6;
  *(&v20 + 1) = v5;
  *&v21 = v4;
  *(&v21 + 1) = v3;
  *(v0 + 272) = v16;
  *(v0 + 288) = v15;
  Representation = type metadata accessor for IntentValueQueryRepresentation(0, v0 + 272);
  sub_221A211A4(v8, Representation, v0 + 16);
  *(v0 + 304) = v2;
  *(v0 + 312) = v1;
  *(v0 + 320) = v17;
  v18 = (*(v19 + 48) + **(v19 + 48));
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 448) = v10;
  *v10 = v11;
  v10[1] = sub_221B924E0;
  v12 = *(v0 + 368);
  v13 = *(v0 + 344);

  return v18(v0 + 232, v0 + 16, v0 + 304, v13, v12);
}

uint64_t sub_221B924E0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 456) = v0;

  sub_221B92C7C(v3 + 16);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B925E8()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[45];
  v4 = v0[46];
  v6 = v0[43];
  v5 = v0[44];
  v15 = v0[41];
  v7 = v0[32];
  v14 = v0[33];
  __swift_project_boxed_opaque_existential_0(v0 + 29, v7);
  v8 = swift_task_alloc();
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v3;
  v8[5] = v4;
  v8[6] = v2;
  v8[7] = v1;
  v8[8] = v0 + 23;
  v9 = swift_task_alloc();
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v3;
  v9[5] = v7;
  v9[6] = v4;
  v9[7] = v2;
  v9[8] = v1;
  v9[9] = v14;
  v9[10] = sub_221B92CD0;
  v9[11] = v8;
  OUTLINED_FUNCTION_29_12();
  sub_221A21A64(v10, v11, v15);

  __swift_destroy_boxed_opaque_existential_0(v0 + 29);
  sub_22199C274((v0 + 23));
  OUTLINED_FUNCTION_4_3();

  return v12();
}

uint64_t sub_221B92730()
{
  OUTLINED_FUNCTION_1_5();
  sub_22199C274(v0 + 184);
  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221B9278C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v13[3] = &type metadata for _IntentValueConversionContext;
  v13[4] = &protocol witness table for _IntentValueConversionContext;
  v13[0] = swift_allocObject();
  sub_2219EB180(a2, v13[0] + 16);
  sub_221B8BC18(v11, a3, a4, a5);

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_221B92868(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16[3] = AssociatedTypeWitness;
  v16[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  a2(v16);
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t AppIntentDispatching.value(for:)()
{
  OUTLINED_FUNCTION_67();
  sub_2219A8E5C();
  OUTLINED_FUNCTION_11_19();
  v6 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 24) = v2;
  *v2 = v3;
  v2[1] = sub_221B92A9C;
  v4 = OUTLINED_FUNCTION_15_17();

  return v6(v4);
}

uint64_t sub_221B92A9C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

unint64_t sub_221B92BD8()
{
  result = qword_27CFBC100;
  if (!qword_27CFBC100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFBC0F8, &qword_221BE80E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC100);
  }

  return result;
}

uint64_t dispatch thunk of AppIntentDispatching.describeApplication(for:)()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_11_19();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_15(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_33_9(v2);

  return v6(v4);
}

uint64_t dispatch thunk of AppIntentDispatching.options<A>(for:in:searchTerm:as:)()
{
  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_6_5();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_15(v1);
  *v2 = v3;
  v2[1] = sub_2219EC5F0;
  v4 = OUTLINED_FUNCTION_6_25();

  return v6(v4);
}

uint64_t dispatch thunk of AppIntentDispatching.perform(_:options:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_16_15(a1, a2, a3, a4, a5, a6, a7);
  OUTLINED_FUNCTION_6_5();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2_15(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_13_20(v8);

  return v11(v10);
}

uint64_t dispatch thunk of AppIntentDispatching.query(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_21_13(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_6_5();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_2_15(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_18_17(v16);
  OUTLINED_FUNCTION_123_0();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

{
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_21_13(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_6_5();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_2_15(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_18_17(v16);
  OUTLINED_FUNCTION_123_0();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of AppIntentDispatching.value<A>(for:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_16_15(a1, a2, a3, a4, a5, a6, a7);
  OUTLINED_FUNCTION_6_5();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2_15(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_13_20(v8);

  return v11(v10);
}

uint64_t OUTLINED_FUNCTION_19_16()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_24_13()
{

  return sub_221A1F2EC(v1, v0);
}

__n128 OUTLINED_FUNCTION_27_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, __int128 a9, __n128 a11)
{
  *(a1 + 16) = v11;
  result = a11;
  *(a1 + 24) = a9;
  *(a1 + 40) = a11;
  return result;
}

uint64_t sub_221B9366C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_221BCCC98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  __swift_storeEnumTagSinglePayload(&v17 - v10, 1, 1, v2);
  v18 = 0;
  sub_2219B1FB0(v11, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    result = sub_2219B2020(v11);
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v14 = sub_221BCCC88();
    v15 = v16;
    sub_2219B2020(v11);
    result = (*(v3 + 8))(v5, v2);
    v13 = v18;
  }

  *a1 = v13;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15;
  return result;
}

uint64_t AnyEntityQueryDispatching.origin.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;

  return sub_221998178(v4, v5);
}

uint64_t AnyEntityQueryDispatching.query<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = a3;
  *(v5 + 88) = a4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  *(v5 + 96) = *v4;
  return MEMORY[0x2822009F8](sub_221B938B4, 0, 0);
}

uint64_t sub_221B938B4()
{
  swift_getObjectType();
  sub_221B9366C(v0 + 16);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = *(v0 + 24);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_221B9399C;

  return AppIntentDispatching.query<A>(_:options:)();
}

uint64_t sub_221B9399C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221B93AF8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_221B93B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221B82200;

  return AnyEntityQueryDispatching.query<A>(_:)(a1, a2, a3, a4);
}

uint64_t dispatch thunk of EntityQueryDispatching.query<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_221B82200;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_221B93D20(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_221B93D60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221B93DBC(char a1)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E55;
  switch(a1)
  {
    case 1:
      v2 = 0xE300000000000000;
      v3 = 6512973;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x656E6F685069;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1684099177;
      break;
    case 4:
      v2 = 0xE800000000000000;
      v3 = 0x565420656C707041;
      break;
    case 5:
      v2 = 0xEB00000000686374;
      v3 = 0x615720656C707041;
      break;
    case 6:
      v3 = 0x646F50656D6F48;
      break;
    case 7:
      v2 = 0xEE00656369766544;
      v3 = 0x207974696C616552;
      break;
    default:
      break;
  }

  MEMORY[0x223DA31F0](v3, v2);
}

uint64_t sub_221B93ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_221BCF7F0;
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;
    *(v8 + 48) = a3;
    *(v8 + 56) = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
    sub_2219998AC();
    a1 = sub_221BCD328();
    a2 = v9;
  }

  else
  {
  }

  MEMORY[0x223DA31F0](a1, a2);
}

uint64_t sub_221B93FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_221BCCE98();
  v23 = v5;
  v24 = v4;
  v6 = sub_221BCCEB8();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xE000000000000000;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = sub_221BBF364();
  v12 = sub_221BCCE88();
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v16 = sub_221BBF43C();
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v9 = v17;
  }

  v19 = v11 & 1;
  v20 = sub_221B94C4C(v16);
  sub_221BCCEE8();
  OUTLINED_FUNCTION_11_4();
  result = (*(v21 + 8))(a1);
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v19;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v18;
  *(a2 + 48) = v9;
  *(a2 + 56) = v20 & 1;
  *(a2 + 64) = v24;
  *(a2 + 72) = v23;
  return result;
}

void sub_221B940B8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);
  if (qword_27CFB7368 != -1)
  {
    swift_once();
  }

  v4 = qword_27CFDEDA8;
  if (qword_27CFDEDA8)
  {
    v5 = sub_221BCD358();
    v6 = [v4 BOOLForKey_];

    if (((v6 | v3) & 1) == 0)
    {

      sub_221BCDE68();
      MEMORY[0x223DA31F0](v1, v2);
      v7 = MEMORY[0x223DA31F0](0xD000000000000038, 0x8000000221BF1790);
      sub_221A0E704(v7, v8, v9);
      swift_allocError();
      *v10 = v1;
      *(v10 + 8) = v2;
      *(v10 + 16) = 0;
      *(v10 + 24) = 0xE000000000000000;
      *(v10 + 32) = 1;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_221B9421C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v22[4] = *(a1 + 16);
  v23 = a1[6];
  v24 = a1[5];
  v8 = *v3;
  v9 = *(v3 + 16);
  switch(v9 >> 5)
  {
    case 1u:
      if (v7 != v8 || v3[1] != a1[1])
      {

        sub_221BCE1B8();
      }

      break;
    case 2u:
      LOBYTE(v25[0]) = v9 & 0x1F;
      sub_221B94E48();
      break;
    case 3u:
      OUTLINED_FUNCTION_7_22();
      do
      {
        if (v19 + v5 == -1)
        {
          break;
        }

        if (++v5 >= *(v8 + 16))
        {
          goto LABEL_23;
        }

        v17 = OUTLINED_FUNCTION_4_27(v14, v15, v16, v19, v20, v21, *v22, v22[4], v23, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9]);
        v16 = v4;
      }

      while ((v17 & 1) != 0);
      break;
    case 4u:
      OUTLINED_FUNCTION_7_22();
      while (v19 + v5 != -1)
      {
        if (++v5 >= *(v8 + 16))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }

        v13 = OUTLINED_FUNCTION_4_27(v10, v11, v12, v19, v20, v21, *v22, v22[4], v23, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9]);
        v12 = v4;
        if (v13)
        {
          return;
        }
      }

      break;
    case 5u:
      return;
    default:
      static IntentsServices.DeviceType.forDeviceModel(_:)(a1[8], a1[9], v25);
      break;
  }
}

uint64_t IntentsServices.DevicePredicate.description.getter()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 16);
  switch(v5 >> 5)
  {
    case 1u:
      sub_221BCDE68();

      v19[0] = 0x746E656449736469;
      v19[1] = 0xEF3D3D7265696669;
      goto LABEL_28;
    case 2u:
      strcpy(v19, "osVersion");
      WORD1(v19[1]) = 0;
      HIDWORD(v19[1]) = -385875968;
      v12 = 0xE200000000000000;
      v13 = 15677;
      switch(v5 & 0x1F)
      {
        case 1u:
          v12 = 0xE100000000000000;
          v13 = 60;
          break;
        case 2u:
          v13 = 15676;
          break;
        case 3u:
          v12 = 0xE100000000000000;
          v13 = 62;
          break;
        case 4u:
          v13 = 15678;
          break;
        default:
          break;
      }

      MEMORY[0x223DA31F0](v13, v12);

LABEL_28:
      MEMORY[0x223DA31F0](v3, v4);
      goto LABEL_36;
    case 3u:
      OUTLINED_FUNCTION_16_16();
      v8 = MEMORY[0x277D84F90];
      if (v1)
      {
        OUTLINED_FUNCTION_13_21();
        v8 = v20;
        do
        {
          OUTLINED_FUNCTION_12_15();
          OUTLINED_FUNCTION_8_20();
          if (v10)
          {
            sub_2219A2FB4((v14 > 1), v2, 1);
            v8 = v20;
          }

          OUTLINED_FUNCTION_10_21();
        }

        while (!v11);
      }

      goto LABEL_19;
    case 4u:
      OUTLINED_FUNCTION_16_16();
      v8 = MEMORY[0x277D84F90];
      if (v1)
      {
        OUTLINED_FUNCTION_13_21();
        v8 = v20;
        do
        {
          OUTLINED_FUNCTION_12_15();
          OUTLINED_FUNCTION_8_20();
          if (v10)
          {
            sub_2219A2FB4((v9 > 1), v2, 1);
            v8 = v20;
          }

          OUTLINED_FUNCTION_10_21();
        }

        while (!v11);
      }

LABEL_19:
      v19[0] = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      v15 = sub_221BCD328();
      v17 = v16;

      MEMORY[0x223DA31F0](v15, v17);

      MEMORY[0x223DA31F0](41, 0xE100000000000000);
      result = v21;
      break;
    case 5u:
      if ((v4 | v3) == 0 && v5 == 160)
      {
        result = 7958113;
      }

      else
      {
        result = 25965;
      }

      break;
    default:
      strcpy(v19, "deviceType==");
      BYTE5(v19[1]) = 0;
      HIWORD(v19[1]) = -5120;
      v6 = 0xE700000000000000;
      v7 = 0x6E776F6E6B6E55;
      switch(v3)
      {
        case 1:
          v6 = 0xE300000000000000;
          v7 = 6512973;
          break;
        case 2:
          v6 = 0xE600000000000000;
          v7 = 0x656E6F685069;
          break;
        case 3:
          v6 = 0xE400000000000000;
          v7 = 1684099177;
          break;
        case 4:
          v6 = 0xE800000000000000;
          v7 = 0x565420656C707041;
          break;
        case 5:
          v6 = 0xEB00000000686374;
          v7 = 0x615720656C707041;
          break;
        case 6:
          v7 = 0x646F50656D6F48;
          break;
        case 7:
          v6 = 0xEE00656369766544;
          v7 = 0x207974696C616552;
          break;
        default:
          break;
      }

      MEMORY[0x223DA31F0](v7, v6);

LABEL_36:
      result = v19[0];
      break;
  }

  return result;
}

uint64_t static IntentsServices.DeviceType.forDeviceModel(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2)
  {
    v15 = a3;
    if (qword_27CFB7310 != -1)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v3 = qword_27CFDECF8;
      v4 = qword_27CFDECF8 + 64;
      v5 = 1 << *(qword_27CFDECF8 + 32);
      v6 = -1;
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      v7 = v6 & *(qword_27CFDECF8 + 64);
      v8 = (v5 + 63) >> 6;

      v12 = 0;
      if (v7)
      {
        break;
      }

LABEL_7:
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v8)
        {
          v14 = 0;
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v13);
        ++v12;
        if (v7)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_19:
      swift_once();
    }

    while (1)
    {
      v13 = v12;
LABEL_10:
      v14 = *(*(v3 + 56) + (__clz(__rbit64(v7)) | (v13 << 6)));
      sub_221A1CAA4(v9, v10, v11);

      if (sub_221BCDCE8())
      {
        break;
      }

      v7 &= v7 - 1;

      v12 = v13;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_14:

    a3 = v15;
  }

  else
  {
    v14 = 0;
  }

  *a3 = v14;
  return result;
}

uint64_t IntentsServices.Device.init(name:idsIdentifier:deviceModel:osVersion:isMeDevice:supportsRemoteIntents:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11)
{
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *a9 = a3;
  *(a9 + 8) = a4;
  *(a9 + 16) = a10;
  *(a9 + 24) = result;
  *(a9 + 32) = a2;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a11;
  return result;
}

uint64_t IntentsServices.Device.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v15 = *(v0 + 56);
  v8 = v0[8];
  v9 = v0[9];
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0x206563697665443CLL, 0xED00003A656D616ELL);
  MEMORY[0x223DA31F0](v4, v5);
  MEMORY[0x223DA31F0](0x5465636976656420, 0xEC0000003A657079);
  static IntentsServices.DeviceType.forDeviceModel(_:)(v8, v9, &v16);
  sub_221B93DBC(v16);
  MEMORY[0x223DA31F0](0x6E65644973646920, 0xEF3A726569666974);
  MEMORY[0x223DA31F0](v1, v2);
  MEMORY[0x223DA31F0](0x766544654D736920, 0xEC0000003A656369);
  if (v3)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v3)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v10, v11);

  MEMORY[0x223DA31F0](0x6973726556736F20, 0xEB000000003A6E6FLL);
  MEMORY[0x223DA31F0](v6, v7);
  MEMORY[0x223DA31F0](0xD000000000000017, 0x8000000221BF1750);
  if (v15)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v15)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v12, v13);

  MEMORY[0x223DA31F0](62, 0xE100000000000000);
  return v17;
}

uint64_t sub_221B94C4C(uint64_t a1)
{
  v1 = sub_221BBF52C();
  if (v1 == 2 || (v1 & 1) == 0)
  {
    return 0;
  }

  v2 = sub_221BCCE98();
  static IntentsServices.DeviceType.forDeviceModel(_:)(v2, v3, &v5);

  result = 1;
  if (v5 <= 6u && ((1 << v5) & 0x5C) != 0)
  {

    return sub_221B9561C();
  }

  return result;
}

uint64_t IntentsServices.DeviceType.description.getter()
{
  result = 0x6E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      result = 6512973;
      break;
    case 2:
      result = 0x656E6F685069;
      break;
    case 3:
      result = 1684099177;
      break;
    case 4:
      result = 0x565420656C707041;
      break;
    case 5:
      result = 0x615720656C707041;
      break;
    case 6:
      result = 0x646F50656D6F48;
      break;
    case 7:
      result = 0x207974696C616552;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_221B94DC0()
{
  result = sub_221BCD2C8();
  qword_27CFDECF8 = result;
  return result;
}

BOOL sub_221B94E48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82E0, &qword_221BD2C30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v42 - v2;
  switch(*v0)
  {
    case 1:
      v31 = OUTLINED_FUNCTION_6_26();
      v41 = OUTLINED_FUNCTION_5_27(v31);
      OUTLINED_FUNCTION_0_57(v41, v32, v33, v34, v35, v36, MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_11_22();
      sub_221A01F0C(v3, &qword_27CFB82E0, &qword_221BD2C30);
      v10 = v0 == 1;
      goto LABEL_10;
    case 2:
      v18 = OUTLINED_FUNCTION_6_26();
      v39 = OUTLINED_FUNCTION_5_27(v18);
      OUTLINED_FUNCTION_0_57(v39, v19, v20, v21, v22, v23, MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_11_22();
      sub_221A01F0C(v3, &qword_27CFB82E0, &qword_221BD2C30);
      v17 = v0 + 1 == 0;
      goto LABEL_5;
    case 3:
      v25 = OUTLINED_FUNCTION_6_26();
      v40 = OUTLINED_FUNCTION_5_27(v25);
      OUTLINED_FUNCTION_0_57(v40, v26, v27, v28, v29, v30, MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_11_22();
      sub_221A01F0C(v3, &qword_27CFB82E0, &qword_221BD2C30);
      v10 = v0 + 1 == 0;
      goto LABEL_10;
    case 4:
      v11 = OUTLINED_FUNCTION_6_26();
      v38 = OUTLINED_FUNCTION_5_27(v11);
      OUTLINED_FUNCTION_0_57(v38, v12, v13, v14, v15, v16, MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_11_22();
      sub_221A01F0C(v3, &qword_27CFB82E0, &qword_221BD2C30);
      v17 = v0 == 1;
LABEL_5:
      result = !v17;
      break;
    default:
      v4 = OUTLINED_FUNCTION_6_26();
      v37 = OUTLINED_FUNCTION_5_27(v4);
      OUTLINED_FUNCTION_0_57(v37, v5, v6, v7, v8, v9, MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_11_22();
      sub_221A01F0C(v3, &qword_27CFB82E0, &qword_221BD2C30);
      v10 = v0 == 0;
LABEL_10:
      result = v10;
      break;
  }

  return result;
}

uint64_t IntentsServices.DeviceOSVersionComparator.description.getter()
{
  result = 15677;
  switch(*v0)
  {
    case 1:
      result = 60;
      break;
    case 2:
      result = 15676;
      break;
    case 3:
      result = 62;
      break;
    case 4:
      result = 15678;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s18AppIntentsServices0bC0O10DeviceTypeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_221BCE308();
  MEMORY[0x223DA4060](v1);
  return sub_221BCE358();
}

double static IntentsServices.DevicePredicate.iOSCompanion.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = &unk_283512008;
  *(a1 + 8) = 0;
  *(a1 + 16) = 96;

  return result;
}

BOOL static IntentsServices.DevicePredicate.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  switch(v4 >> 5)
  {
    case 1u:
      if ((v7 & 0xE0) != 0x20)
      {
        goto LABEL_22;
      }

      v46 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        v22 = sub_221BCE1B8();
        v48 = OUTLINED_FUNCTION_3_32();
        sub_221A1C70C(v48, v49, v50);
        v51 = OUTLINED_FUNCTION_1_49();
        sub_221A1C70C(v51, v52, v53);
        goto LABEL_6;
      }

      sub_221A1C70C(v46, v3, v7);
      v84 = OUTLINED_FUNCTION_1_49();
      sub_221A1C70C(v84, v85, v86);
      v87 = OUTLINED_FUNCTION_1_49();
      sub_2219A1B7C(v87, v88, v89);
      v67 = v2;
      v68 = v3;
      v69 = v7;
      goto LABEL_49;
    case 2u:
      if ((v7 & 0xE0) != 0x40)
      {
        goto LABEL_22;
      }

      v30 = *a1;
      if (v2 == v5 && v3 == v6)
      {
        sub_221A1C70C(v30, v3, v7);
        v78 = OUTLINED_FUNCTION_1_49();
        sub_221A1C70C(v78, v79, v80);
        v81 = OUTLINED_FUNCTION_1_49();
        sub_2219A1B7C(v81, v82, v83);
        sub_2219A1B7C(v2, v3, v7);
      }

      else
      {
        v32 = sub_221BCE1B8();
        v33 = OUTLINED_FUNCTION_3_32();
        sub_221A1C70C(v33, v34, v35);
        v36 = OUTLINED_FUNCTION_1_49();
        sub_221A1C70C(v36, v37, v38);
        v39 = OUTLINED_FUNCTION_1_49();
        sub_2219A1B7C(v39, v40, v41);
        v42 = OUTLINED_FUNCTION_3_32();
        sub_2219A1B7C(v42, v43, v44);
        v45 = 0;
        if ((v32 & 1) == 0)
        {
          return v45;
        }
      }

      return ((v7 ^ v4) & 0x1F) == 0;
    case 3u:
      if ((v7 & 0xE0) != 0x60)
      {
        goto LABEL_22;
      }

      goto LABEL_5;
    case 4u:
      if ((v7 & 0xE0) != 0x80)
      {
LABEL_22:

        goto LABEL_23;
      }

LABEL_5:
      v15 = OUTLINED_FUNCTION_3_32();
      sub_221A1C70C(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_1_49();
      sub_221A1C70C(v18, v19, v20);
      sub_221A19C78();
      v22 = v21;
LABEL_6:
      v23 = OUTLINED_FUNCTION_1_49();
      sub_2219A1B7C(v23, v24, v25);
      v26 = OUTLINED_FUNCTION_3_32();
      sub_2219A1B7C(v26, v27, v28);
      return v22 & 1;
    case 5u:
      if (!(v3 | v2) && v4 == 160)
      {
        v63 = (v7 & 0xE0) == 0xA0 && (v6 | v5) == 0;
        if (v63 && v7 == 160)
        {
          OUTLINED_FUNCTION_15_18();
          sub_2219A1B7C(v64, v65, v66);
          OUTLINED_FUNCTION_15_18();
LABEL_49:
          sub_2219A1B7C(v67, v68, v69);
          return 1;
        }

LABEL_23:
        v54 = OUTLINED_FUNCTION_3_32();
        sub_221A1C70C(v54, v55, v56);
        v57 = OUTLINED_FUNCTION_1_49();
        sub_2219A1B7C(v57, v58, v59);
        v60 = OUTLINED_FUNCTION_3_32();
        sub_2219A1B7C(v60, v61, v62);
        return 0;
      }

      v71 = (v7 & 0xE0) == 0xA0 && v5 == 1 && v6 == 0;
      if (!v71 || v7 != 160)
      {
        goto LABEL_23;
      }

      v45 = 1;
      OUTLINED_FUNCTION_15_18();
      sub_2219A1B7C(v72, v73, v74);
      OUTLINED_FUNCTION_15_18();
      sub_2219A1B7C(v75, v76, v77);
      return v45;
    default:
      if (v7 >= 0x20)
      {
        goto LABEL_23;
      }

      v8 = OUTLINED_FUNCTION_1_49();
      sub_2219A1B7C(v8, v9, v10);
      v11 = OUTLINED_FUNCTION_3_32();
      sub_2219A1B7C(v11, v12, v13);
      return (v5 ^ v2) == 0;
  }
}

void IntentsServices.DevicePredicate.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  switch(v2 >> 5)
  {
    case 1u:
      MEMORY[0x223DA4060](3);
      OUTLINED_FUNCTION_145_3();

      sub_221BCD448();
      return;
    case 2u:
      MEMORY[0x223DA4060](4);
      OUTLINED_FUNCTION_145_3();
      sub_221BCD448();
      v3 = v2 & 0x1F;
      goto LABEL_16;
    case 3u:
      v4 = 5;
      goto LABEL_6;
    case 4u:
      v4 = 6;
LABEL_6:
      MEMORY[0x223DA4060](v4);

      sub_2219A0F70();
      return;
    case 5u:
      v3 = *v0 != 0 || v2 != 160;
      goto LABEL_16;
    default:
      MEMORY[0x223DA4060](2);
      v3 = v1;
LABEL_16:
      MEMORY[0x223DA4060](v3);
      return;
  }
}

uint64_t IntentsServices.DevicePredicate.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_221BCE308();
  switch(v3 >> 5)
  {
    case 1u:
      MEMORY[0x223DA4060](3);
      OUTLINED_FUNCTION_145_3();
      sub_221BCD448();
      return sub_221BCE358();
    case 2u:
      MEMORY[0x223DA4060](4);
      OUTLINED_FUNCTION_145_3();
      sub_221BCD448();
      v4 = v3 & 0x1F;
      goto LABEL_5;
    case 3u:
      v5 = 5;
      goto LABEL_7;
    case 4u:
      v5 = 6;
LABEL_7:
      MEMORY[0x223DA4060](v5);
      sub_2219A0F70();
      return sub_221BCE358();
    case 5u:
      v4 = v2 | v1 || v3 != 160;
      goto LABEL_5;
    default:
      MEMORY[0x223DA4060](2);
      v4 = v1;
LABEL_5:
      MEMORY[0x223DA4060](v4);
      return sub_221BCE358();
  }
}

uint64_t sub_221B955CC(uint64_t a1)
{
  sub_221BCE308();
  IntentsServices.DevicePredicate.hash(into:)();
  return sub_221BCE358();
}

uint64_t sub_221B9561C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBD40, &qword_221BE63B8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v55 - v1;
  sub_221BCCED8();
  v3 = sub_221BCCF48();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_221A01F0C(v2, &qword_27CFBBD40, &qword_221BE63B8);
    return 0;
  }

  v4 = sub_221BCCF58();
  v6 = v5;
  v7 = (*(*(v3 - 8) + 8))(v2, v3);
  if (!v6)
  {
    return 0;
  }

  v56[0] = 46;
  v56[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](v7);
  v55[-2] = v56;
  v8 = sub_221B95948(0x7FFFFFFFFFFFFFFFLL, 1, sub_221A14BBC, &v55[-4], v4, v6, v55);
  v9 = v8;
  if (!v8[2] || !((v8[5] ^ v8[4]) >> 14))
  {
LABEL_13:

    return 0;
  }

  v10 = OUTLINED_FUNCTION_2_36();
  v15 = sub_221B96C28(v10, v11, v12, v13, v14);
  if ((v16 & 0x100) != 0)
  {

    v19 = OUTLINED_FUNCTION_2_36();
    v24 = sub_221B95D54(v19, v20, v21, v22, v23);
    if (v25)
    {
LABEL_12:

      goto LABEL_13;
    }

    v17 = v24;
  }

  else
  {
    v17 = v15;
    v18 = v16;

    if (v18)
    {
      goto LABEL_12;
    }
  }

  if (v17 <= 17)
  {
    goto LABEL_12;
  }

  result = sub_2219BBC2C(1, v9);
  if (v28 == v29 >> 1)
  {

    swift_unknownObjectRelease();
    return 1;
  }

  if (v28 >= (v29 >> 1))
  {
    __break(1u);
    return result;
  }

  v30 = (v27 + 32 * v28);
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[3];
  v55[0] = v30[2];

  swift_unknownObjectRelease();
  v34 = OUTLINED_FUNCTION_2_36();
  v39 = sub_221B96C28(v34, v35, v36, v37, v38);
  if ((v40 & 0x100) != 0)
  {
    v43 = OUTLINED_FUNCTION_2_36();
    v41 = sub_221B95D54(v43, v44, v45, v46, v47);
    v49 = v48;

    if (v49)
    {
LABEL_28:

      return 1;
    }
  }

  else
  {
    v41 = v39;
    v42 = v40;

    if (v42)
    {
      goto LABEL_28;
    }
  }

  if (v41 != 18)
  {
    goto LABEL_28;
  }

  if (!((v32 ^ v31) >> 14))
  {
    goto LABEL_13;
  }

  v50 = v55[0];
  v51 = sub_221B96C28(v31, v32, v55[0], v33, 10);
  if ((v52 & 0x100) != 0)
  {
    v51 = sub_221B95D54(v31, v32, v50, v33, 10);
  }

  v53 = v51;
  v54 = v52;

  return (v53 > 3) & ~v54;
}

uint64_t sub_221B95948@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v50 = a3;
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

    v7 = sub_221BCD588();
    v11 = v31;
    v12 = v32;
    v13 = v33;

    sub_2219B40D4(0, 1, 1, MEMORY[0x277D84F90]);
    v14 = v34;
    v9 = *(v34 + 16);
    a7 = *(v34 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_38:
      *(v14 + 16) = v10;
      v38 = (v14 + 32 * v9);
      v38[4] = v7;
      v38[5] = v11;
      v38[6] = v12;
      v38[7] = v13;
      return v14;
    }

LABEL_41:
    sub_2219B40D4(a7 > 1, v10, 1, v14);
    v14 = v39;
    goto LABEL_38;
  }

  v7 = a4;
  v14 = 4 * v16;
  v48 = MEMORY[0x277D84F90];
  v17 = 15;
  while (1)
  {
    v46 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v14)
      {
        v17 = v46;
        goto LABEL_30;
      }

      v18 = sub_221BCD558();
      v12 = v19;
      v49[0] = v18;
      v49[1] = v19;
      v20 = v50(v49);
      if (v8)
      {

        return v14;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = sub_221BCD468();
    }

    v23 = (v46 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v46 >> 14)
    {
      break;
    }

    v47 = sub_221BCD588();
    v42 = v25;
    v43 = v24;
    v41 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2219B40D4(0, *(v48 + 16) + 1, 1, v48);
      v48 = v29;
    }

    v13 = *(v48 + 16);
    v27 = *(v48 + 24);
    v12 = v13 + 1;
    if (v13 >= v27 >> 1)
    {
      sub_2219B40D4(v27 > 1, v13 + 1, 1, v48);
      v48 = v30;
    }

    *(v48 + 16) = v12;
    v28 = (v48 + 32 * v13);
    v28[4] = v47;
    v28[5] = v43;
    v28[6] = v42;
    v28[7] = v41;
LABEL_20:
    v17 = sub_221BCD468();
    if ((v23 & 1) == 0 && *(v48 + 16) == a1)
    {
LABEL_30:
      if (v17 >> 14 == v14 && (a2 & 1) != 0)
      {

        return v48;
      }

      if (v14 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = sub_221BCD588();
        v11 = v35;
        v12 = v36;
        v13 = v37;

        v14 = v48;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v14 + 16);
          a7 = *(v14 + 24);
          goto LABEL_37;
        }
      }

      sub_2219B40D4(0, *(v14 + 16) + 1, 1, v14);
      v14 = v40;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

void *sub_221B95CE4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CFB7928, &unk_221BE8640);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_221B95D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_221B97140(a1, a2, a3);

  result = sub_221BCD578();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_221B962E8(result, v7);
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_221BCDEE8();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_221B962E8(uint64_t a1, unint64_t a2)
{
  v2 = sub_221B96354(sub_221B96350, 0, a1, a2);
  v6 = sub_221B96388(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_221B96388(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_221BCDCA8();
    if (!v9 || (v10 = v9, v11 = sub_221B95CE4(v9, 0), v12 = sub_221B964E8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_221BCD438();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_221BCD438();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_221BCDEE8();
LABEL_4:

  return sub_221BCD438();
}

unint64_t sub_221B964E8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_221B966F8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_221BCD508();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_221BCDEE8();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_221B966F8(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_221BCD4D8();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_221B966F8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_221BCD518();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DA3230](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_221B96778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBC108;
  if (!qword_27CFBC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC108);
  }

  return result;
}

unint64_t sub_221B967D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBC110;
  if (!qword_27CFBC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC110);
  }

  return result;
}

unint64_t sub_221B96828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBC118;
  if (!qword_27CFBC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC118);
  }

  return result;
}

uint64_t _s10DeviceTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s10DeviceTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t _s25DeviceOSVersionComparatorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s25DeviceOSVersionComparatorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_221B96B48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1B && *(a1 + 17))
    {
      v2 = *a1 + 26;
    }

    else
    {
      v2 = (*(a1 + 16) & 0x18 | (*(a1 + 16) >> 5)) ^ 0x1F;
      if (v2 >= 0x1A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_221B96B90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1A)
  {
    *(result + 16) = 0;
    *result = a2 - 27;
    *(result + 8) = 0;
    if (a3 >= 0x1B)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1B)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * (((-a2 >> 3) & 3) - 4 * a2);
    }
  }

  return result;
}

uint64_t sub_221B96BF4(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    v2 = *(result + 16) & 7 | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    v2 = -96;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_221B96C28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_221BCDEE8();
  }

  result = sub_221B96D04(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_221B96D04(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_221B966F8(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_221BCD4F8();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_221B966F8(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_221B966F8(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_221BCD4F8();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

unint64_t sub_221B97140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBC120;
  if (!qword_27CFBC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC120);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return MEMORY[0x28211F3B8](v8 - 80, 64, 0, 0, 1, v7, a7, a7);
}

uint64_t OUTLINED_FUNCTION_4_27@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20)
{
  v27 = *a3;
  *(v25 - 112) = *(a3 - 1);
  *(v25 - 96) = v27;
  a11 = a6;
  a12 = a5;
  a13 = a8;
  *(v20 + 17) = *(v22 + 17);
  *(v20 + 32) = *(v22 + 32);
  a16 = a10;
  a17 = a9;
  a18 = v21;
  *(v20 + 57) = *(v22 + 57);
  *(v20 + 60) = *(v22 + 60);
  a19 = v23;
  a20 = v24;

  return sub_221B9421C(&a11, a1, a2);
}

unint64_t OUTLINED_FUNCTION_5_27(uint64_t a1)
{
  v2 = __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_221A1CAA4(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_6_26()
{
  *(v4 - 64) = v2;
  *(v4 - 56) = v1;
  *(v4 - 80) = v0;
  *(v4 - 72) = v3;

  return sub_221BCC588();
}

void OUTLINED_FUNCTION_10_21()
{
  *(v1 + 16) = v3;
  v5 = v1 + 16 * v4;
  *(v5 + 32) = v0;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_12_15()
{

  return IntentsServices.DevicePredicate.description.getter();
}

char *OUTLINED_FUNCTION_13_21()
{

  return sub_2219A2FB4(0, v0, 0);
}

uint64_t IntentsServices.LocalExecutionMode.hashValue.getter()
{
  v1 = *v0;
  sub_221BCE308();
  MEMORY[0x223DA4060](v1);
  return sub_221BCE358();
}

_BYTE *IntentsServices.DispatcherOptions.init(interfaceIdiom:payloadPrivacy:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t static IntentsServices.localDispatcher(mode:user:clientLabel:source:environment:options:)(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = *(a2 + 24);
  if (v10 == 255)
  {
    *&v30[0] = 0;
    *&v31 = &type metadata for UserInternal.CurrentUserExecutionStrategy;
    *(&v31 + 1) = &off_28351C8B8;
    v32 = 0uLL;
  }

  else
  {
    v12 = *a2;
    v11 = a2[1];
    v13 = a2[2];
    v25 = v12;
    v26 = v11;
    v27 = v13;
    v28 = v10;
    sub_221B975BC(v11, v13, v10);
    UserInternal.init(_:)(&v25, v29);
    if (v6)
    {
      return a5;
    }

    v30[0] = v29[0];
    v30[1] = v29[1];
    v31 = v29[2];
    v32 = v29[3];
  }

  v14 = sub_2219A1B08(a6, &v25);
  OUTLINED_FUNCTION_1_50(v14, v15, v16, v17, v18, v19, v20, v21, v24, v25, v26, v27);
  if (v9)
  {
    type metadata accessor for RunnerServiceDispatcher();
    swift_allocObject();

    OUTLINED_FUNCTION_0_58();
    sub_2219F8548();
  }

  else
  {
    type metadata accessor for InProcessDispatcher(0);
    swift_allocObject();

    OUTLINED_FUNCTION_0_58();
    sub_2219C23DC();
  }

  a5 = v22;
  sub_2219EBE90(v30);
  return a5;
}

double sub_221B975BC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void static IntentsServices.localDispatcher(clientLabel:source:environment:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2219A1B08(a4, v4);
  type metadata accessor for InProcessDispatcher(0);
  swift_allocObject();

  sub_2219C23DC();
}

void static IntentsServices.localDispatcher(user:clientLabel:source:environment:options:)(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char *a6)
{
  v17 = a4;
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = *a6;
  v11 = a6[1];
  v12 = *(a1 + 24);
  sub_2219A1B08(a5, v16);
  v18 = v10;
  v19 = v11;
  v13[0] = v8;
  v13[1] = v7;
  v13[2] = v9;
  v14 = v12;
  sub_221B975BC(v7, v9, v12);
  UserInternal.init(_:)(v13, v15);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    type metadata accessor for InProcessDispatcher(0);
    swift_allocObject();

    sub_2219C23DC();
  }
}

uint64_t static IntentsServices.remoteDispatcher(user:devicePredicate:clientLabel:source:environment:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, _BYTE *a7)
{
  *(v7 + 112) = a4;
  *(v7 + 120) = a6;
  *(v7 + 100) = a5;
  *(v7 + 104) = a3;
  *(v7 + 128) = *a1;
  *(v7 + 144) = *(a1 + 16);
  *(v7 + 99) = *(a1 + 24);
  *(v7 + 152) = *a2;
  *(v7 + 102) = *(a2 + 16);
  *(v7 + 103) = *a7;
  *(v7 + 184) = a7[1];
  return MEMORY[0x2822009F8](sub_221B977FC, 0, 0);
}

uint64_t sub_221B977FC()
{
  v11 = v0;
  if (qword_27CFB7270 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 102);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 128);
  *(v0 + 80) = *(v0 + 152);
  *(v0 + 96) = v2;
  *(v0 + 98) = v1;
  v6 = *(v0 + 99);
  v9[0] = v5;
  v9[1] = v3;
  v9[2] = v4;
  v10 = v6;
  sub_221B975BC(v3, v4, v6);
  UserInternal.init(_:)(v9, (v0 + 16));
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *v7 = v0;
  v7[1] = sub_221B97968;

  return sub_221B65048();
}

uint64_t sub_221B97968(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 176) = v2;

  if (v2)
  {
    sub_2219EBE90(v6 + 16);

    return MEMORY[0x2822009F8](sub_221B97ADC, 0, 0);
  }

  else
  {
    sub_2219EBE90(v6 + 16);
    v8 = *(v7 + 8);

    return v8(a1, a2);
  }
}

uint64_t static IntentsServices.DispatcherOptions.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (v4 != 10)
  {
    if (v6 == 10 || (sub_221A1A7FC(v4, v6) & 1) == 0)
    {
      return 0;
    }

    return v5 ^ v7 ^ 1u;
  }

  if (v6 == 10)
  {
    return v5 ^ v7 ^ 1u;
  }

  return 0;
}

uint64_t IntentsServices.DispatcherOptions.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  sub_221BCE328();
  if (v4 != 10)
  {
    sub_221A1AB78(a1, v4);
  }

  return sub_221BCE348();
}

uint64_t IntentsServices.DispatcherOptions.hashValue.getter()
{
  v1 = *v0;
  sub_221BCE308();
  sub_221BCE328();
  if (v1 != 10)
  {
    sub_221A1AB78(v3, v1);
  }

  sub_221BCE348();
  return sub_221BCE358();
}

uint64_t sub_221B97C64(uint64_t a1)
{
  v2 = *v1;
  sub_221BCE308();
  sub_221BCE328();
  if (v2 != 10)
  {
    sub_221A1AB78(v4, v2);
  }

  sub_221BCE348();
  return sub_221BCE358();
}

char *IntentsServices.DispatcherOptions.init(payloadPrivacy:)@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  *a2 = 10;
  a2[1] = v2;
  return result;
}

unint64_t sub_221B97CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBC128;
  if (!qword_27CFBC128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC128);
  }

  return result;
}

unint64_t sub_221B97D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBC130;
  if (!qword_27CFBC130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC130);
  }

  return result;
}

_BYTE *_s18LocalExecutionModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s17DispatcherOptionsVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s17DispatcherOptionsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);

  return sub_2219EBEE4(va1, va);
}

uint64_t UserInternal.executeAsUser<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[4];
  v8 = v3[5];
  __swift_project_boxed_opaque_existential_0(v3 + 1, v7);
  return (*(v8 + 8))(a1, a2, a3, v7, v8);
}

uint64_t static IntentsServices.User.personaUniqueIdentifier(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = 0;
  return OUTLINED_FUNCTION_0_31(a1, a2);
}

void static IntentsServices.User.current.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
}

void UserInternal.init(_:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = 0xD000000000000025;
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  if (!*(a1 + 24))
  {
    v10 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v10 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {
      v8 = "supported on this platform.";
      v9 = 1;
      goto LABEL_11;
    }

    v11 = &off_28351C8A8;
    v12 = v4;
    v13 = v6;
    v14 = &type metadata for UserInternal.AdoptPersonaExecutionStrategy;
LABEL_9:
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v6;
    a2[4] = v14;
    a2[5] = v11;
    a2[6] = v12;
    a2[7] = v13;
    sub_221B975BC(v4, v6, v7);
    return;
  }

  if (v7 != 1)
  {
    v12 = 0;
    v13 = 0;
    v11 = &off_28351C8B8;
    v14 = &type metadata for UserInternal.CurrentUserExecutionStrategy;
    goto LABEL_9;
  }

  v3 = 0xD00000000000005BLL;
  v8 = "operating system version";
  v9 = 6;
LABEL_11:
  v15 = sub_221B981E8(v4, v6, v7);
  sub_2219ACB94(v15, v16, v17);
  swift_allocError();
  *v18 = v3;
  *(v18 + 8) = v8 | 0x8000000000000000;
  *(v18 + 16) = v9;
  swift_willThrow();
}

uint64_t sub_221B981E8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_221B98200(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return a6 == 2 && !(a5 | a4);
    }

    if (a6 != 1)
    {
      return 0;
    }

LABEL_6:
    if (a1 != a4 || a2 != a5)
    {
      return sub_221BCE1B8();
    }

    return 1;
  }

  if (!a6)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t static IntentsServices.User.siriSharedUserIdentifier(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = 1;
  return OUTLINED_FUNCTION_0_31(a1, a2);
}

uint64_t static IntentsServices.User.personaUniqueIdentifier(_:accessLevel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a3;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = 0;
  return OUTLINED_FUNCTION_0_31(a1, a2);
}

uint64_t static IntentsServices.User.siriSharedUserIdentifier(_:accessLevel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a3;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = 1;
  return OUTLINED_FUNCTION_0_31(a1, a2);
}

uint64_t IntentsServices.User.personaUniqueIdentifier.getter()
{
  if (*(v0 + 24))
  {
    return 0;
  }

  v1 = *(v0 + 8);

  return v1;
}

uint64_t IntentsServices.User.siriSharedUserIdentifier.getter()
{
  if (*(v0 + 24) != 1)
  {
    return 0;
  }

  v1 = *(v0 + 8);

  return v1;
}

uint64_t IntentsServices.User.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (!*(v0 + 24))
  {
    OUTLINED_FUNCTION_2_37();
    sub_221BCDE68();

    OUTLINED_FUNCTION_4_28();
    goto LABEL_5;
  }

  if (*(v0 + 24) == 1)
  {
    OUTLINED_FUNCTION_2_37();
    sub_221BCDE68();

    OUTLINED_FUNCTION_4_28();
    v4 = v3 | 1;
LABEL_5:
    v6 = v4;
    MEMORY[0x223DA31F0](v1, v2);
    MEMORY[0x223DA31F0](62, 0xE100000000000000);
    return v6;
  }

  return OUTLINED_FUNCTION_1_51();
}

uint64_t UserInternal.description.getter()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return OUTLINED_FUNCTION_1_51();
  }

  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_2_37();
  sub_221BCDE68();

  MEMORY[0x223DA31F0](v2, v1);
  MEMORY[0x223DA31F0](62, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t get_enum_tag_for_layout_string_18AppIntentsServices0bC0O4UserV5ValueO(uint64_t a1)
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

uint64_t sub_221B984B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
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

uint64_t sub_221B984F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_221B9854C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_221B9858C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221B985E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_221B98628(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_221B9866C(uint64_t result, unsigned int a2)
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

uint64_t sub_221B98690(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_221B986D0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_221B9876C(void (*a1)(void), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v77 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_self();
  v8 = [v7 currentPersona];
  if (!v8)
  {
    sub_2219ACB94(0, v9, v10);
    swift_allocError();
    *v19 = 0xD000000000000032;
    *(v19 + 8) = 0x8000000221BF18A0;
    *(v19 + 16) = 1;
    swift_willThrow();
    return;
  }

  v11 = v8;

  v12 = [v11 userPersonaUniqueString];
  if (v12)
  {
    v13 = v12;
    v14 = sub_221BCD388();
    v16 = v15;

    if (v14 == a3 && v16 == a4)
    {

LABEL_21:
      if (qword_27CFB73D8 != -1)
      {
        swift_once();
      }

      v51 = sub_221BCCD88();
      __swift_project_value_buffer(v51, qword_27CFDEED0);

      v52 = sub_221BCCD68();
      v53 = sub_221BCDA68();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v56 = a3;
        v57 = v55;
        v75 = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_2219A6360(v56, a4, &v75);
        _os_log_impl(&dword_221989000, v52, v53, "Already running as persona %s, nothing to do", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v57);
        MEMORY[0x223DA4C00](v57, -1, -1);
        MEMORY[0x223DA4C00](v54, -1, -1);
      }

      a1();
LABEL_26:

      return;
    }

    v18 = sub_221BCE1B8();

    if (v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v74 = a3;
  v73 = a1;
  if (qword_27CFB73D8 != -1)
  {
    swift_once();
  }

  v20 = sub_221BCCD88();
  __swift_project_value_buffer(v20, qword_27CFDEED0);

  v21 = v11;
  v22 = sub_221BCCD68();
  v23 = sub_221BCDA98();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v75 = v70;
    *v24 = 136315394;
    *(v24 + 4) = sub_2219A6360(v74, a4, &v75);
    *(v24 + 12) = 2080;
    v25 = sub_221B98FA4();
    v27 = v21;
    v28 = sub_2219A6360(v25, v26, &v75);

    *(v24 + 14) = v28;
    v21 = v27;
    _os_log_impl(&dword_221989000, v22, v23, "Request to execute as user %s, currently running as %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v70, -1, -1);
    MEMORY[0x223DA4C00](v24, -1, -1);
  }

  v75 = 0;
  v29 = [v21 copyCurrentPersonaContextWithError_];
  if (v29)
  {
    v30 = v29;
    v31 = v75;
    v32 = v74;
    v33 = sub_221BCD358();
    v34 = [v21 generateAndRestorePersonaContextWithPersonaUniqueString_];

    if (v34)
    {
      v71 = v30;

      v35 = v34;
      v36 = sub_221BCCD68();
      v37 = sub_221BCDA78();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v75 = v39;
        *v38 = 136315394;
        *(v38 + 4) = sub_2219A6360(v74, a4, &v75);
        *(v38 + 12) = 2080;
        swift_getErrorValue();
        v40 = sub_221BCE288();
        v42 = sub_2219A6360(v40, v41, &v75);

        *(v38 + 14) = v42;
        _os_log_impl(&dword_221989000, v36, v37, "Failed adopting persona %s: %s", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v39, -1, -1);
        v43 = v38;
        v32 = v74;
        MEMORY[0x223DA4C00](v43, -1, -1);
      }

      v75 = 0;
      v76 = 0xE000000000000000;
      sub_221BCDE68();

      v75 = 0xD000000000000018;
      v76 = 0x8000000221BF18E0;
      MEMORY[0x223DA31F0](v32, a4);
      MEMORY[0x223DA31F0](8238, 0xE200000000000000);
      swift_getErrorValue();
      v44 = sub_221BCE288();
      MEMORY[0x223DA31F0](v44);

      v46 = v75;
      v47 = v76;
      sub_2219ACB94(v45, v48, v49);
      swift_allocError();
      *v50 = v46;
      *(v50 + 8) = v47;
      *(v50 + 16) = 1;
      swift_willThrow();

      v11 = v71;
      sub_221B99180(v21, v71);

      goto LABEL_26;
    }

    v59 = sub_221BCCD68();
    v60 = sub_221BCDA98();
    if (os_log_type_enabled(v59, v60))
    {
      v72 = v30;
      v61 = v21;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v75 = v63;
      *v62 = 136315138;
      v64 = [v7 currentPersona];
      if (v64)
      {
        v65 = v64;
        v66 = sub_221B98FA4();
        v68 = v67;
      }

      else
      {
        v68 = 0xE300000000000000;
        v66 = 7104878;
      }

      v69 = sub_2219A6360(v66, v68, &v75);

      *(v62 + 4) = v69;
      _os_log_impl(&dword_221989000, v59, v60, "Executing as %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x223DA4C00](v63, -1, -1);
      MEMORY[0x223DA4C00](v62, -1, -1);

      v21 = v61;
      v30 = v72;
    }

    else
    {
    }

    v73();
    sub_221B99180(v21, v30);
  }

  else
  {
    v58 = v75;
    sub_221BCC338();

    swift_willThrow();
  }
}

uint64_t sub_221B98FA4()
{
  sub_221BCDE68();
  v1 = sub_2219ACA7C(v0, &selRef_userPersonaUniqueString);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 0x3E6C696E3CLL;
    v3 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v1, v3);

  MEMORY[0x223DA31F0](10272, 0xE200000000000000);
  v4 = sub_2219ACA7C(v0, &selRef_userPersonaNickName);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v4 = 0x3E6C696E3CLL;
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v4, v6);

  MEMORY[0x223DA31F0](0x203A65707974202CLL, 0xE800000000000000);
  v7 = sub_221B993C8([v0 userPersonaType]);
  MEMORY[0x223DA31F0](v7);

  MEMORY[0x223DA31F0](0x203A444955202CLL, 0xE700000000000000);
  [v0 uid];
  v8 = sub_221BCE168();
  MEMORY[0x223DA31F0](v8);

  MEMORY[0x223DA31F0](0x203A444947202CLL, 0xE700000000000000);
  [v0 gid];
  v9 = sub_221BCE168();
  MEMORY[0x223DA31F0](v9);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return 0;
}

void sub_221B99180(void *a1, void *a2)
{
  if (qword_27CFB73D8 != -1)
  {
    swift_once();
  }

  v3 = sub_221BCCD88();
  __swift_project_value_buffer(v3, qword_27CFDEED0);
  v4 = a2;
  oslog = sub_221BCCD68();
  v5 = sub_221BCDA98();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315394;
    v8 = [v4 description];
    v9 = sub_221BCD388();
    v11 = v10;

    v12 = sub_2219A6360(v9, v11, &v20);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    v13 = [objc_opt_self() currentPersona];
    if (v13)
    {
      v14 = v13;
      v15 = sub_221B98FA4();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = sub_2219A6360(v15, v17, &v20);

    *(v6 + 14) = v18;
    _os_log_impl(&dword_221989000, oslog, v5, "Restored persona context %s, executing as %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v7, -1, -1);
    MEMORY[0x223DA4C00](v6, -1, -1);
  }
}

uint64_t sub_221B993C8(uint64_t a1)
{
  result = 0x6C616E6F73726550;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x646567616E614DLL;
      break;
    case 2:
      result = 0x6972707265746E45;
      break;
    case 3:
      result = 0x6D6574737953;
      break;
    case 4:
      result = 0x6173726576696E55;
      break;
    case 5:
      result = 0x746C7561666544;
      break;
    case 6:
      result = 0x7473657547;
      break;
    default:
      if (a1 == 1000)
      {
        result = 0x64696C61766E49;
      }

      else
      {
        result = 0x6E776F6E6B6E753CLL;
      }

      break;
  }

  return result;
}

uint64_t sub_221B99520()
{
  OUTLINED_FUNCTION_1_5();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAA8, &qword_221BE54E8);
  OUTLINED_FUNCTION_15_19(v5);
  v0[9] = v6;
  v0[10] = swift_task_alloc();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B995DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  sub_221B62F04();
  OUTLINED_FUNCTION_1_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA98, &unk_221BE8AD0);
  sub_221BCD838();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_6_27(v10);
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_4_29(v11);

  return MEMORY[0x2822005A8](v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_221B996A4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B997A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_25_13();
  if (v13)
  {
    v25 = OUTLINED_FUNCTION_14_20();
    v26(v25);
    OUTLINED_FUNCTION_1_6();
    v12[12] = *(v10 + *(v27 + 112));
    OUTLINED_FUNCTION_13_22();
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v12[13] = v28;
    *v28 = v29;
    v30 = OUTLINED_FUNCTION_12_16(v28);

    return v31(v30);
  }

  else
  {
    if (v11)
    {
      if (v12[7])
      {
        sub_221BCD878();
      }

      sub_221B567F4(v11);
      sub_221B59770(v11);
    }

    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_6_27(v14);
    *v15 = v16;
    v17 = OUTLINED_FUNCTION_5_28(v15);

    return MEMORY[0x2822005A8](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }
}

uint64_t sub_221B99908()
{
  OUTLINED_FUNCTION_1_5();
  (*(v0[9] + 8))(v0[10], v0[8]);

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221B9997C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B99A74()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B99ADC()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B99B40()
{
  OUTLINED_FUNCTION_1_5();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAA8, &qword_221BE54E8);
  OUTLINED_FUNCTION_15_19(v5);
  v0[9] = v6;
  v0[10] = swift_task_alloc();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B99BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  sub_221B62F04();
  OUTLINED_FUNCTION_1_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA98, &unk_221BE8AD0);
  sub_221BCD838();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_6_27(v10);
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_4_29(v11);

  return MEMORY[0x2822005A8](v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_221B99CC4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B99DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_25_13();
  if (v13)
  {
    v25 = OUTLINED_FUNCTION_14_20();
    v26(v25);
    OUTLINED_FUNCTION_1_6();
    v12[12] = *(v10 + *(v27 + 112));
    OUTLINED_FUNCTION_13_22();
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v12[13] = v28;
    *v28 = v29;
    v30 = OUTLINED_FUNCTION_12_16(v28);

    return v31(v30);
  }

  else
  {
    if (v11)
    {
      if (v12[7])
      {
        sub_221BCD878();
      }

      sub_221B56900(v11);
      sub_221B59770(v11);
    }

    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_6_27(v14);
    *v15 = v16;
    v17 = OUTLINED_FUNCTION_5_28(v15);

    return MEMORY[0x2822005A8](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }
}

uint64_t sub_221B99F28()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B9A020()
{
  OUTLINED_FUNCTION_1_5();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAA8, &qword_221BE54E8);
  OUTLINED_FUNCTION_15_19(v5);
  v0[9] = v6;
  v0[10] = swift_task_alloc();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B9A0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  sub_221B62F04();
  OUTLINED_FUNCTION_1_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA98, &unk_221BE8AD0);
  sub_221BCD838();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_6_27(v10);
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_4_29(v11);

  return MEMORY[0x2822005A8](v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_221B9A1A4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B9A2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_25_13();
  if (v13)
  {
    v25 = OUTLINED_FUNCTION_14_20();
    v26(v25);
    OUTLINED_FUNCTION_1_6();
    v12[12] = *(v10 + *(v27 + 112));
    OUTLINED_FUNCTION_13_22();
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v12[13] = v28;
    *v28 = v29;
    v30 = OUTLINED_FUNCTION_12_16(v28);

    return v31(v30);
  }

  else
  {
    if (v11)
    {
      if (v12[7])
      {
        sub_221BCD878();
      }

      sub_221B56928(v11);
      sub_221B59770(v11);
    }

    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_6_27(v14);
    *v15 = v16;
    v17 = OUTLINED_FUNCTION_5_28(v15);

    return MEMORY[0x2822005A8](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }
}

uint64_t sub_221B9A408()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  memcpy((v0 + 16), v1, 0xC4uLL);
  OUTLINED_FUNCTION_58_4(&unk_221BE8AC8);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 216) = v2;
  *v2 = v3;
  v2[1] = sub_221B9A4D8;
  OUTLINED_FUNCTION_253();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_221B9A4D8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B9A5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  return MEMORY[0x2822009F8](sub_221B9A5E0, 0, 0);
}

uint64_t sub_221B9A5E0()
{
  v12 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  memcpy(__dst, *(v0 + 64), 0xC4uLL);
  sub_221B71A3C(v3, __dst, v2, v1, (v0 + 16));
  v4 = *(v0 + 24);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 104) = v4;
  v5 = *(v0 + 40);
  *(v0 + 112) = *(v0 + 32);
  *(v0 + 120) = v5;
  OUTLINED_FUNCTION_58_4(&unk_221BE89F8);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 128) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_59(v6);

  return v9(v8);
}

uint64_t RemoteAppIntentDispatching.perform(_:options:delegate:)()
{
  OUTLINED_FUNCTION_1_5();
  v1[36] = v2;
  v1[37] = v0;
  v1[34] = v3;
  v1[35] = v4;
  v1[32] = v5;
  v1[33] = v6;
  v1[31] = v7;
  memcpy(v1 + 2, v8, 0xC4uLL);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B9A738()
{
  OUTLINED_FUNCTION_14_3();
  (*(v0[36] + 24))(v0[32], v0 + 2, v0[33], v0[34], v0[35]);
  v2 = v0[27];
  v1 = v0[28];
  v0[38] = v2;
  v0[39] = v1;
  v3 = v0[29];
  v4 = v0[30];
  v0[40] = v3;
  v0[41] = v4;
  OUTLINED_FUNCTION_58_4(&unk_221BE89F8);
  v10 = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[42] = v6;
  *v6 = v7;
  v6[1] = sub_221B9A824;
  v8 = v0[31];

  return v10(v8, v2, v1, v3, v4);
}

uint64_t sub_221B9A824()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 344) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_253();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_253();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_221B9A9D8()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_37_7();
  OUTLINED_FUNCTION_58_4(&unk_221BE8AB8);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_18(v1);

  return v4(v3);
}

uint64_t sub_221B9AA7C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = v5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a4;
  *(v6 + 136) = a3;
  *(v6 + 48) = a1;
  return MEMORY[0x2822009F8](sub_221B9AAA8, 0, 0);
}

uint64_t sub_221B9AAA8()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_17_17();
  sub_221B71AC4(v1, v2);
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_58_4(&unk_221BE8A08);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 120) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_59(v3);

  return v6(v5);
}

uint64_t RemoteAppIntentDispatching.query(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = v5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a4;
  *(v6 + 48) = a1;
  *(v6 + 152) = *a3;
  *(v6 + 88) = *(a3 + 8);
  return OUTLINED_FUNCTION_6_1();
}

{
  *(v6 + 72) = a5;
  *(v6 + 80) = v5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a4;
  *(v6 + 48) = a1;
  *(v6 + 152) = *a3;
  *(v6 + 88) = *(a3 + 8);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B9AB7C()
{
  OUTLINED_FUNCTION_67();
  v1 = OUTLINED_FUNCTION_19_17();
  (*(v2 + 32))(v1);
  OUTLINED_FUNCTION_35_11();
  OUTLINED_FUNCTION_58_4(&unk_221BE8A08);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 136) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_59(v3);

  return v6(v5);
}

uint64_t sub_221B9AC38()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_253();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_253();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_221B9ADC8()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_37_7();
  OUTLINED_FUNCTION_58_4(&unk_221BE8AA8);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_18(v1);

  return v4(v3);
}

uint64_t sub_221B9AE6C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = v5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a4;
  *(v6 + 136) = a3;
  *(v6 + 48) = a1;
  return MEMORY[0x2822009F8](sub_221B9AE98, 0, 0);
}

uint64_t sub_221B9AE98()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_17_17();
  sub_221B71ADC(v1, v2);
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_58_4(&unk_221BE8A18);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 120) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_59(v3);

  return v6(v5);
}

uint64_t sub_221B9AF6C()
{
  OUTLINED_FUNCTION_67();
  v1 = OUTLINED_FUNCTION_19_17();
  (*(v2 + 40))(v1);
  OUTLINED_FUNCTION_35_11();
  OUTLINED_FUNCTION_58_4(&unk_221BE8A18);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 136) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_59(v3);

  return v6(v5);
}

uint64_t sub_221B9B028()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_253();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_253();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t RemoteAppIntentDispatching.queryWithProgress(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_13(a1, a2);
  OUTLINED_FUNCTION_29_13();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_28_9();
  v5 = &qword_27CFB7D60;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_62_4();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  OUTLINED_FUNCTION_24_14();
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    sub_2219B2020(v9);
    v10 = 0;
    v3 = 0;
    v5 = 0;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_27_14();
    v12(v11);
    sub_221BCCC88();
    v13 = OUTLINED_FUNCTION_26_9();
    v14(v13);
    sub_2219B2020(v9);
    v10 = v19;
  }

  v19 = v10;
  v20 = v3;
  v21 = v5;
  v15 = OUTLINED_FUNCTION_30_13();
  v16(v15);
}

{
  OUTLINED_FUNCTION_31_13(a1, a2);
  OUTLINED_FUNCTION_29_13();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_28_9();
  v5 = &qword_27CFB7D60;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_62_4();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  OUTLINED_FUNCTION_24_14();
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    sub_2219B2020(v9);
    v10 = 0;
    v3 = 0;
    v5 = 0;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_27_14();
    v12(v11);
    sub_221BCCC88();
    v13 = OUTLINED_FUNCTION_26_9();
    v14(v13);
    sub_2219B2020(v9);
    v10 = v19;
  }

  v19 = v10;
  v20 = v3;
  v21 = v5;
  v15 = OUTLINED_FUNCTION_30_13();
  v16(v15);
}

uint64_t RemoteAppIntentDispatching.performWithProgress<A>(_:options:delegate:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  memcpy(v19, a2, sizeof(v19));
  (*(a8 + 32))(v20, a6, a8);
  (*(a7 + 24))(v21, v20, v19, a3, a4, a5, a7);
  sub_2219B397C(v20);
  *v19 = v21[0];
  *&v19[16] = v21[1];
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a8;
  v15[6] = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC138, &qword_221BE8A28);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AppIntentSuccessResult(0, AssociatedTypeWitness, a9, v17);
  sub_221BA6808();
}

uint64_t sub_221B9B6FC@<X0>(uint64_t a1@<X0>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  sub_2219B68B8(a1, v10, &qword_27CFB8048, &qword_221BE5700);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_2219A8E5C();
  return AppIntentSuccessResult.init<A>(_:)(v10, AssociatedTypeWitness, v8, a4, &protocol witness table for LNValue, a5);
}

uint64_t RemoteAppIntentDispatching.queryWithProgress<A>(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_221B9B80C(a1, a2, a3, a4, a5, a6, &unk_28351C900, sub_221B9B7D4);
}

{
  return sub_221B9B80C(a1, a2, a3, a4, a5, a6, &unk_28351C928, sub_221B9BAA0);
}

uint64_t sub_221B9B80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[0] = *a2;
  *&v16[8] = *(a2 + 8);
  (*(a5 + 32))(v17, a1, v16, a3, a5);
  *v16 = v17[0];
  *&v16[16] = v17[1];
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v8;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC140, &qword_221BE8A30);
  type metadata accessor for AppEntityQueryResult(0, a4, *(a6 + 8), v14);
  sub_221BA6808();
}

uint64_t sub_221B9B940@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(char *, uint64_t)@<X6>, void *a8@<X8>)
{
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v15);
  (*(v16 + 24))(v15, v16);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC0F0, &qword_221BE80E0);
  v17 = sub_221BCE008();

  v23[9] = v17;
  v23[2] = a3;
  v23[3] = a4;
  v23[4] = a5;
  v23[5] = a6;
  v23[6] = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC0F8, &qword_221BE80E8);
  v19 = sub_221B92BD8();
  v21 = sub_221B8F6FC(a7, v23, v18, a4, MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v20);

  return sub_221A1F2EC(v21, a8);
}

uint64_t sub_221B9BAD4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v8);
  (*(*(v9 + 16) + 8))(v17, v8);
  v16[0] = v17[0];
  v16[1] = v17[1];
  v10 = *(a3 + 8);
  v18[3] = &type metadata for _IntentValueConversionContext;
  v18[4] = &protocol witness table for _IntentValueConversionContext;
  v11 = swift_allocObject();
  v18[0] = v11;
  swift_unknownObjectRetain();
  _IntentValueConversionContext.init(origin:dispatcher:)(v16, a2, v10, v11 + 16);
  sub_22199E73C(v7);
  v13 = v12;
  result = __swift_destroy_boxed_opaque_existential_0(v18);
  *a4 = v13;
  return result;
}

uint64_t RemoteAppIntentDispatching.queryWithProgress<A, B>(_:input:options:)(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v14 = a1[1];
  v17 = a1[2];
  v16 = a1[3];
  v27 = *a3;
  v25 = *(a3 + 2);
  v26 = *(a3 + 1);
  *&v32 = *a1;
  v15 = v32;
  *(&v32 + 1) = v14;
  v33 = xmmword_221BD0800;
  v18 = *(a7 + 8);

  swift_unknownObjectRetain();
  _IntentValueConversionContext.init(origin:dispatcher:)(&v32, v10, v18, v36);
  *&v34 = v15;
  *(&v34 + 1) = v14;
  *&v35 = v17;
  *(&v35 + 1) = v16;
  *&v32 = a5;
  *(&v32 + 1) = a6;
  *&v33 = a8;
  *(&v33 + 1) = a9;
  Representation = type metadata accessor for IntentValueQueryRepresentation(0, &v32);
  v20 = sub_221A211A4(a2, Representation, &v32);
  LOBYTE(v30) = v27;
  *(&v30 + 1) = v26;
  *&v31 = v25;
  (*(a7 + 40))(&v34, &v32, &v30, a4, a7, v20);
  sub_221B92C7C(&v32);
  v30 = v34;
  v31 = v35;
  sub_2219EB180(v36, &v32);
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a8;
  v21[7] = a9;
  sub_22199C218(&v32, (v21 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC148, &qword_221BE8A38);
  type metadata accessor for QueryResult(0, a6, a9, v22);
  sub_221BA6808();

  return sub_22199C274(v36);
}

uint64_t sub_221B9BE08@<X0>(void *a1@<X0>, uint64_t *a9@<X8>)
{
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v10);
  return sub_221A21A64(v10, v11, a9);
}

uint64_t dispatch thunk of RemoteAppIntentDispatching.queryWithProgress(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 32))(a1, a2, a3);
}

{
  return (*(a4 + 40))(a1, a2, a3);
}

uint64_t sub_221B9BF4C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v13[3] = &type metadata for _IntentValueConversionContext;
  v13[4] = &protocol witness table for _IntentValueConversionContext;
  v13[0] = swift_allocObject();
  sub_2219EB180(a2, v13[0] + 16);
  sub_221B8BC18(v11, a3, a4, a5);

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t OUTLINED_FUNCTION_13_22()
{
}

uint64_t OUTLINED_FUNCTION_24_14()
{
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v1);
  *(v5 - 104) = 0;

  return sub_2219B68B8(v2, v3, v4, v0);
}

uint64_t OUTLINED_FUNCTION_31_13(uint64_t a1, uint64_t a2)
{
  *(v3 - 120) = a2;
  *(v3 - 112) = v2;

  return sub_221BCCC98();
}

void OUTLINED_FUNCTION_35_11()
{
  v1 = v0[3];
  v0[13] = v0[2];
  v0[14] = v1;
  v2 = v0[5];
  v0[15] = v0[4];
  v0[16] = v2;
}

double sub_221B9C308@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_221B9E924(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_22199B650(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_221B9C36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 1;
  }

  v4 = sub_221B9E9B8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

void sub_221B9C3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = sub_221B9E9B8(a1, a2);
    if (v4)
    {
      OUTLINED_FUNCTION_32_10(v3);
    }
  }
}

void *sub_221B9C400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_221B9E9B8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double sub_221B9C448@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>, uint64_t a4@<X1>)
{
  if (*(a2 + 16) && (v6 = sub_221B9E9B8(a1, a4), (v7 & 1) != 0))
  {
    v8 = *(a2 + 56) + 32 * v6;

    sub_22199B650(v8, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_221B9C4AC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_221B9EAA0(a1);
  if (v3)
  {
    return OUTLINED_FUNCTION_32_10(v2);
  }

  else
  {
    return 0;
  }
}

void sub_221B9C500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 16))
  {
    v5 = sub_221B9EADC(a1, a2, a3, a4);
    if (v6)
    {
      OUTLINED_FUNCTION_32_10(v5);
    }
  }
}

uint64_t sub_221B9C54C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_221B9EA30(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_32_10(v2);
}

unint64_t sub_221B9C598@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (result = sub_221B9ECA8(result), (v5 & 1) != 0))
  {
    v6 = *(a2 + 56) + 16 * result;

    return sub_221B67358(v6, a3);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = -1;
  }

  return result;
}

uint64_t sub_221B9C600()
{
  if (v0[1])
  {
    v1 = v0[1];
  }

  else
  {
    v1 = sub_221B9C64C(v0);
    v0[1] = v1;
  }

  return v1;
}

uint64_t sub_221B9C64C(uint64_t *a1)
{
  v1 = *a1;
  v2 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;

    do
    {
      sub_221BA113C(v4, v8);
      v5 = AppEntitySpecification.lnValue.getter();
      v6 = sub_2219A1BD4(v8);
      if (v5)
      {
        MEMORY[0x223DA3390](v6);
        if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_221BCD6B8();
        }

        sub_221BCD6F8();
        v2 = v9;
      }

      v4 += 56;
      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t sub_221B9C730()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_221B9C77C();
    v1 = v2;
    *(v0 + 16) = v2;
  }

  return v1;
}

void sub_221B9C77C()
{
  v0 = sub_221B9C600();
  v13 = MEMORY[0x277D84FA0];
  v1 = sub_2219A69A0();
  for (i = 0; ; ++i)
  {
    if (v1 == i)
    {

      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x223DA3BF0](i, v0);
    }

    else
    {
      if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v3 = *(v0 + 8 * i + 32);
    }

    v4 = v3;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v5 = [v3 valueType];
    sub_221BBA264(&v12, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

id sub_221B9C874(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v23[5] = 0;
  v23[6] = 0;
  v23[4] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC180, &unk_221BE8C90);
  v4 = dynamic_cast_existential_1_conditional(v3, v3, &protocol descriptor for IntentValueTypeIdentifiable);
  if (!v4)
  {

    v10 = sub_221B9C730();
    if (sub_221BB954C(v10) > 1)
    {
      sub_2219A1D20(0, &qword_27CFBBAF0, 0x277D23750);
      v11 = sub_221BB9DCC(v10);

      v9 = sub_221BB956C(v11);
      goto LABEL_6;
    }

    v12 = sub_2219A280C(v10);

    if (v12)
    {
      goto LABEL_7;
    }

    v18 = dynamic_cast_existential_1_conditional(&type metadata for AppEntitySpecification, &type metadata for AppEntitySpecification, &protocol descriptor for IntentValueTypeIdentifiable);
    if (v18)
    {
      v20 = v18;
      v21 = v19;
      if (dynamic_cast_existential_1_class_conditional(v18, v18, &protocol descriptor for _IdentifiableAppEntityRepresentation))
      {
        v9 = [objc_allocWithZone(MEMORY[0x277D23810]) init];
      }

      else
      {
        v9 = (*(v21 + 16))(v20, v21);
      }

      goto LABEL_6;
    }

    return 0;
  }

  v6 = v4;
  v7 = v5;
  v8 = *(v5 + 16);

  v9 = v8(v6, v7);
LABEL_6:
  v12 = v9;
LABEL_7:
  v13 = [objc_allocWithZone(MEMORY[0x277D23760]) initWithMemberValueType:v12 capabilities:a2];
  v14 = sub_221B9C600();
  v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8008, &qword_221BD28C0);
  v23[0] = v14;
  v15 = objc_allocWithZone(MEMORY[0x277D23958]);
  v16 = v13;
  v17 = sub_2219A6260(v23, v16);

  return v17;
}

id sub_221B9CB1C(uint64_t (*a1)(void), SEL *a2)
{
  v14[3] = a1(0);
  __swift_allocate_boxed_opaque_existential_1(v14);
  OUTLINED_FUNCTION_0_6();
  (*(v3 + 16))();
  v4 = [objc_opt_self() *a2];
  v5 = objc_allocWithZone(MEMORY[0x277D23958]);
  return OUTLINED_FUNCTION_6_28(v5, v6, v7, v8, v9, v10, v11, v12, v14[0]);
}

id sub_221B9CBC8(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();

  v3 = [v2 stringValueType];
  v4 = objc_allocWithZone(MEMORY[0x277D23958]);
  return OUTLINED_FUNCTION_6_28(v4, v5, v6, v7, v8, v9, v10, v11, a1);
}

id sub_221B9CC44(char a1)
{
  LOBYTE(v11) = a1;
  v1 = [objc_opt_self() BOOLValueType];
  v2 = objc_allocWithZone(MEMORY[0x277D23958]);
  return OUTLINED_FUNCTION_6_28(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

id sub_221B9CCAC(double a1)
{
  v1 = [objc_opt_self() doubleValueType];
  v2 = objc_allocWithZone(MEMORY[0x277D23958]);
  return OUTLINED_FUNCTION_6_28(v2, v3, v4, v5, v6, v7, v8, v9, *&a1);
}

id sub_221B9CD28(char a1)
{
  LOBYTE(v11) = a1;
  v1 = [objc_opt_self() int8ValueType];
  v2 = objc_allocWithZone(MEMORY[0x277D23958]);
  return OUTLINED_FUNCTION_6_28(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

id sub_221B9CD90(__int16 a1)
{
  LOWORD(v11) = a1;
  v1 = [objc_opt_self() int16ValueType];
  v2 = objc_allocWithZone(MEMORY[0x277D23958]);
  return OUTLINED_FUNCTION_6_28(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

id sub_221B9CDF8(int a1)
{
  LODWORD(v11) = a1;
  v1 = [objc_opt_self() int32ValueType];
  v2 = objc_allocWithZone(MEMORY[0x277D23958]);
  return OUTLINED_FUNCTION_6_28(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

id sub_221B9CE74(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_opt_self() *a3];
  v4 = objc_allocWithZone(MEMORY[0x277D23958]);
  return OUTLINED_FUNCTION_6_28(v4, v5, v6, v7, v8, v9, v10, v11, a1);
}

uint64_t static AppIntentRegistry.Target.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_221BCE1B8();
}

double AppIntentRegistry.target.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

void AppIntentRegistry.openIntent<A>(for:bundleIdentifier:factoidTitle:factoidCaption:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v56[14] = *MEMORY[0x277D85DE8];
  v17 = *(v9 + 8);

  if (v17)
  {
    sub_2219ACB94(v18, v19, v20);
    v21 = swift_allocError();
    OUTLINED_FUNCTION_21_14(v21, v22);
  }

  else
  {
    v51 = a6;
    v50 = a4;
    v52 = a8;

    sub_2219A1D20(0, &qword_27CFB7668, 0x277D23828);
    v23 = (*(a9 + 16))(a7, a9);
    v25 = sub_2219A51F4(v23, v24);
    if (qword_27CFB7348 != -1)
    {
      OUTLINED_FUNCTION_98(&qword_27CFB7348);
    }

    v26 = qword_27CFDED38;
    v27 = [objc_opt_self() openEntitySystemProtocol];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC150, &unk_221BE8AE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221BD19E0;
    *(inited + 32) = 0x746567726174;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v25;
    sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
    v29 = v25;
    OUTLINED_FUNCTION_25_14();
    sub_221BCD2C8();
    OUTLINED_FUNCTION_25_14();
    v30 = sub_221BCD278();

    v31 = sub_221BCD358();
    v56[0] = 0;
    v32 = [v26 actionsConformingToSystemProtocol:v27 withParametersOfTypes:v30 bundleIdentifier:v31 error:v56];

    v33 = v56[0];
    if (v32)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7710, &qword_221BD0C90);
      v34 = sub_221BCD298();
      v35 = v33;

      sub_221B9C3B4(a1, a2, v34);
      v37 = v36;

      if (v37 && (sub_2219A2A88(v37), v39 = v38, v41 = v40, , v39))
      {

        v42 = [v41 identifier];
        v43 = sub_221BCD388();
        v45 = v44;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7908, &unk_221BD19D0);
        OUTLINED_FUNCTION_20_0();
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_221BD19E0;
        static AppEntitySpecification.identifiableEntity<A>(_:)(a7, a9, v56);
        sub_2219B49E0(0x746567726174, 0xE600000000000000, v56, (v46 + 32));
        v56[3] = &type metadata for AnyAppIntentSpecification;
        v56[4] = &off_283513928;
        OUTLINED_FUNCTION_20_0();
        v47 = swift_allocObject();
        v56[0] = v47;
        *(v47 + 16) = a1;
        *(v47 + 24) = a2;
        *(v47 + 32) = xmmword_221BD0800;
        *(v47 + 48) = v43;
        *(v47 + 56) = v45;
        *(v47 + 64) = v46;
        if (v50)
        {
          v54 = a3;
          v55 = v50;
          sub_221B9D400(&v54, v56, v48, 0x656C746974, 0xE500000000000000);
        }

        if (v51)
        {
          v54 = a5;
          v55 = v51;
          sub_221B9D400(&v54, v56, v48, 0x6E6F6974706163, 0xE700000000000000);
        }

        sub_2219EB748(v56, v52);
        sub_2219B397C(v56);
      }

      else
      {

        *(v52 + 32) = 0;
        *v52 = 0u;
        *(v52 + 16) = 0u;
      }
    }

    else
    {
      v49 = v56[0];
      sub_221BCC338();

      swift_willThrow();
    }
  }
}

uint64_t sub_221B9D400(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = MEMORY[0x277D837D0];
  v28[3] = MEMORY[0x277D837D0];
  v28[0] = v8;
  v11 = objc_opt_self();

  v12 = [v11 stringValueType];
  v13 = objc_allocWithZone(MEMORY[0x277D23958]);
  v14 = sub_2219A6260(v28, v12);
  v15 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v15);
  v17 = (*(v16 + 24))(v15, v16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_23();
    v17 = v26;
  }

  v19 = *(v17 + 16);
  v18 = *(v17 + 24);
  if (v19 >= v18 >> 1)
  {
    sub_2219B394C(v18 > 1, v19 + 1, 1, v17);
    v17 = v27;
  }

  *(v17 + 16) = v19 + 1;
  v20 = (v17 + 40 * v19);
  v20[4] = a4;
  v20[5] = a5;
  v20[6] = v14;
  v20[7] = v10;
  v20[8] = &protocol witness table for String;
  v21 = a2[3];
  v22 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v21);
  v23 = OUTLINED_FUNCTION_5_29();
  return v24(v23, v21, v22);
}

uint64_t AppIntentRegistry.openIntent<A>(for:bundleIdentifier:factoidTitle:factoidCaption:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v11 = a8;
  v195 = a5;
  v196 = a7;
  v191 = a6;
  v193 = a4;
  v203 = a2;
  v204 = a3;
  v221 = *MEMORY[0x277D85DE8];
  v14 = *(a8 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v16);
  v18 = &v186 - v17;
  v19 = *(v10 + 8);

  if (v19)
  {
    sub_2219ACB94(v20, v21, v22);
    v23 = swift_allocError();
    return OUTLINED_FUNCTION_21_14(v23, v24);
  }

  v205 = v15;
  v206 = v18;
  v209 = &v186 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = v14;
  v187 = a9;

  v192 = a1;
  *&v215 = a1;
  MEMORY[0x28223BE20](v26);
  *(&v186 - 2) = v11;
  *(&v186 - 1) = a10;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v208 = a10;
  *(&v186 - 2) = a10;
  *(&v186 - 1) = v28;
  sub_221BCD748();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_25_14();
  v29 = v207;
  v38 = sub_221B8F6FC(v30, v31, v32, v33, v34, v35, v36, v37);
  v188 = v29;

  v39 = sub_221BC2180(v38);
  if (qword_27CFB7348 != -1)
  {
LABEL_82:
    OUTLINED_FUNCTION_98(&qword_27CFB7348);
  }

  v200 = qword_27CFDED38;
  v201 = v39;
  v220 = 0;
  v218 = 0u;
  v219 = 0u;
  v40 = "AnyDeferredEntityProperty" + 16;
  v41 = v203;
  v42 = v204;
  v43 = v197;
  v44 = v205;
  if (v39[2] == 1)
  {
    v45 = sub_2219A2B14(v39);
    if (!v46)
    {
      v39 = v201;
      goto LABEL_15;
    }

    v47 = v45;
    v48 = v46;
    sub_2219A1D20(0, &qword_27CFB7668, 0x277D23828);
    v49 = sub_2219A51F4(v47, v48);
    v50 = objc_allocWithZone(MEMORY[0x277D23760]);
    v207 = v49;
    v51 = [v50 initWithMemberValueType_];
    v52 = [objc_opt_self() openEntitySystemProtocol];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC150, &unk_221BE8AE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221BD19E0;
    *(inited + 32) = 0x746567726174;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v51;
    sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
    v202 = v51;
    v54 = v41;
    sub_221BCD2C8();
    v55 = sub_221BCD278();

    v56 = sub_221BCD358();
    *&v215 = 0;
    v57 = [v200 actionsConformingToSystemProtocol:v52 withParametersOfTypes:v55 bundleIdentifier:v56 error:&v215];

    v58 = v215;
    if (!v57)
    {
      v184 = v215;

      sub_221BCC338();

      swift_willThrow();
      return sub_2219B1538(&v218, &unk_27CFBB7C0, &qword_221BE4C20);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7710, &qword_221BD0C90);
    v59 = sub_221BCD298();
    v60 = v58;

    sub_221B9C3B4(v54, v42, v59);
    v62 = v61;

    if (v62 && (sub_2219A2A88(v62), v64 = v63, v66 = v65, , v64))
    {

      v43 = v197;
      v67 = v202;
      if (v66)
      {
        *&v212 = v66;
        v68 = v66;
        v69 = v188;
        sub_221B9E6EC(&v212, v203, v204, v192, v11, v208, &v215);
        v188 = v69;

        sub_2219B1538(&v218, &unk_27CFBB7C0, &qword_221BE4C20);
LABEL_14:
        v44 = v205;
        v39 = v201;
        v40 = "yProperty";
        v218 = v215;
        v219 = v216;
        v220 = v217;
        goto LABEL_15;
      }
    }

    else
    {
      v43 = v197;
      v67 = v202;
    }

    sub_2219B1538(&v218, &unk_27CFBB7C0, &qword_221BE4C20);
    v215 = 0u;
    v216 = 0u;
    v217 = 0;
    goto LABEL_14;
  }

LABEL_15:
  v70 = MEMORY[0x277D837E0];
  v207 = sub_221BCD2C8();
  v71 = 0;
  v72 = (v39 + 7);
  v73 = 1 << *(v39 + 32);
  v74 = -1;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v75 = v74 & v39[7];
  v76 = (v73 + 63) >> 6;
  v194 = *(v40 + 158);
  v198 = (v39 + 7);
  v199 = v11;
  *&v190 = v76;
  if (v75)
  {
    while (1)
    {
      v77 = v70;
LABEL_23:
      v79 = (v39[6] + ((v71 << 10) | (16 * __clz(__rbit64(v75)))));
      v81 = *v79;
      v80 = v79[1];
      v82 = objc_opt_self();

      v83 = [v82 openEntitySystemProtocol];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC150, &unk_221BE8AE0);
      v84 = swift_initStackObject();
      *(v84 + 16) = v194;
      *(v84 + 32) = 0x746567726174;
      *(v84 + 40) = 0xE600000000000000;
      sub_2219A1D20(0, &qword_27CFB7668, 0x277D23828);

      v189 = v81;
      v202 = v80;
      *(v84 + 48) = sub_2219A51F4(v81, v80);
      sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
      v70 = v77;
      sub_221BCD2C8();
      v85 = sub_221BCD278();

      v86 = sub_221BCD358();
      *&v215 = 0;
      v87 = [v200 actionsConformingToSystemProtocol:v83 withParametersOfTypes:v85 bundleIdentifier:v86 error:&v215];

      v88 = v215;
      if (!v87)
      {
        v185 = v215;

        sub_221BCC338();

        swift_willThrow();

        sub_2219B1538(&v218, &unk_27CFBB7C0, &qword_221BE4C20);
      }

      v75 &= v75 - 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7710, &qword_221BD0C90);
      v89 = sub_221BCD298();
      v90 = v88;

      if (*(v89 + 16))
      {
        v91 = sub_221B9E9B8(v203, v204);
        v43 = v197;
        v44 = v205;
        v11 = v199;
        if ((v92 & 1) == 0)
        {
          goto LABEL_33;
        }

        v93 = *(*(v89 + 56) + 8 * v91);

        v94 = 0;
        v95 = 1 << *(v93 + 32);
        v96 = (v95 + 63) >> 6;
        v97 = 64;
        if (!v96)
        {
          goto LABEL_33;
        }

        while (1)
        {
          v98 = *(v93 + v97);
          if (v98)
          {
            break;
          }

          v94 -= 64;
          --v96;
          v97 += 8;
          if (!v96)
          {
            goto LABEL_33;
          }
        }

        v99 = __clz(__rbit64(v98));
        if (v99 - v95 != v94)
        {
          sub_221BA0C50(&v215, v99 - v94, *(v93 + 36), 0, v93);

          v100 = v215;
          v101 = [v215 identifier];

          v102 = sub_221BCD388();
          v104 = v103;

          v105 = v207;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v215 = v105;
          v107 = v102;
          v44 = v205;
          v108 = v104;
          v43 = v197;
          sub_221BA0478(v107, v108, v189, v202, isUniquelyReferenced_nonNull_native);

          v207 = v215;
        }

        else
        {
LABEL_33:
        }

        v39 = v201;
      }

      else
      {

        v43 = v197;
        v44 = v205;
        v39 = v201;
        v11 = v199;
      }

      v72 = v198;
      v76 = v190;
      if (!v75)
      {
        goto LABEL_19;
      }
    }
  }

  while (1)
  {
LABEL_19:
    v78 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if (v78 >= v76)
    {
      break;
    }

    v75 = v72[v78];
    ++v71;
    if (v75)
    {
      v77 = v70;
      v71 = v78;
      goto LABEL_23;
    }
  }

  v109 = v192;
  OUTLINED_FUNCTION_23_13();
  v110 = sub_221BCD678();
  v211 = v110;
  OUTLINED_FUNCTION_23_13();
  if (v110 != sub_221BCD708())
  {
    v200 = *(v208 + 16);
    v201 = (v208 + 16);
    v202 = (v43 + 16);
    v198 = (v43 + 8);
    v199 = (v43 + 32);
    v111 = MEMORY[0x277D84F98];
    v190 = xmmword_221BD0800;
    while (1)
    {
      OUTLINED_FUNCTION_23_13();
      v114 = sub_221BCD6E8();
      sub_221BCD6A8();
      if (v114)
      {
        v115 = v206;
        (*(v43 + 16))(v206, v109 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v110, v11);
      }

      else
      {
        v179 = sub_221BCDE98();
        if (v44 != 8)
        {
          __break(1u);
        }

        *&v215 = v179;
        v115 = v206;
        (*v202)(v206, &v215, v11);
        swift_unknownObjectRelease();
      }

      sub_221BCD738();
      v116 = v209;
      (*v199)(v209, v115, v11);
      v117 = (v200)(v11, v208);
      if (*(v207 + 2))
      {
        v119 = v207;
        v120 = sub_221B9E9B8(v117, v118);
        v122 = v121;

        if (v122)
        {
          v123 = (v119[7] + 16 * v120);
          v124 = *v123;
          v125 = v123[1];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7908, &unk_221BD19D0);
          OUTLINED_FUNCTION_20_0();
          v126 = swift_allocObject();
          *(v126 + 16) = v194;

          v127 = v204;

          static AppEntitySpecification.identifiableEntity<A>(_:)(v11, v208, &v215);
          sub_221B62018(&v215, &v212, &qword_27CFB7920, &qword_221BD0E60);
          if (*(&v213 + 1))
          {
            v128 = AppEntitySpecification.lnValue.getter();
            sub_2219B1538(&v215, &qword_27CFB7920, &qword_221BD0E60);
            sub_2219A1BD4(&v212);
          }

          else
          {
            sub_2219B1538(&v215, &qword_27CFB7920, &qword_221BD0E60);
            sub_2219B1538(&v212, &qword_27CFB7920, &qword_221BD0E60);
            v128 = 0;
          }

          *(v126 + 32) = 0x746567726174;
          *(v126 + 40) = 0xE600000000000000;
          *(v126 + 48) = v128;
          *(v126 + 56) = &type metadata for AppEntitySpecification;
          *(v126 + 64) = &protocol witness table for AppEntitySpecification;
          *(&v216 + 1) = &type metadata for AnyAppIntentSpecification;
          v217 = &off_283513928;
          OUTLINED_FUNCTION_20_0();
          v131 = swift_allocObject();
          *&v215 = v131;
          *(v131 + 16) = v203;
          *(v131 + 24) = v127;
          *(v131 + 32) = v190;
          *(v131 + 48) = v124;
          *(v131 + 56) = v125;
          *(v131 + 64) = v126;
          v132 = MEMORY[0x277D837D0];
          if (v195)
          {
            *(&v213 + 1) = MEMORY[0x277D837D0];
            *&v212 = v193;
            *(&v212 + 1) = v195;
            v133 = objc_opt_self();

            v134 = [v133 stringValueType];
            v135 = objc_allocWithZone(MEMORY[0x277D23958]);
            v136 = OUTLINED_FUNCTION_35_12();
            v137 = OUTLINED_FUNCTION_11_23();
            __swift_project_boxed_opaque_existential_0(v137, v138);
            v139 = OUTLINED_FUNCTION_24_15();
            v141 = v140(v139);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_7_23();
              v141 = v180;
            }

            v143 = *(v141 + 16);
            v142 = *(v141 + 24);
            if (v143 >= v142 >> 1)
            {
              OUTLINED_FUNCTION_27_15(v142);
              v141 = v181;
            }

            *(v141 + 16) = v143 + 1;
            v144 = (v141 + 40 * v143);
            v144[4] = 0x656C746974;
            v144[5] = 0xE500000000000000;
            v144[6] = v136;
            v132 = MEMORY[0x277D837D0];
            v144[7] = MEMORY[0x277D837D0];
            v144[8] = &protocol witness table for String;
            v145 = OUTLINED_FUNCTION_11_23();
            __swift_mutable_project_boxed_opaque_existential_1(v145, v146);
            OUTLINED_FUNCTION_5_29();
            OUTLINED_FUNCTION_25_14();
            v147();
          }

          if (v196)
          {
            *(&v213 + 1) = v132;
            *&v212 = v191;
            *(&v212 + 1) = v196;
            v148 = objc_opt_self();

            v149 = [v148 stringValueType];
            v150 = objc_allocWithZone(MEMORY[0x277D23958]);
            v151 = OUTLINED_FUNCTION_35_12();
            v152 = OUTLINED_FUNCTION_11_23();
            __swift_project_boxed_opaque_existential_0(v152, v153);
            v154 = OUTLINED_FUNCTION_24_15();
            v156 = v155(v154);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_7_23();
              v156 = v182;
            }

            v158 = *(v156 + 16);
            v157 = *(v156 + 24);
            if (v158 >= v157 >> 1)
            {
              OUTLINED_FUNCTION_27_15(v157);
              v156 = v183;
            }

            *(v156 + 16) = v158 + 1;
            v159 = (v156 + 40 * v158);
            v159[4] = 0x6E6F6974706163;
            v159[5] = 0xE700000000000000;
            v159[6] = v151;
            v159[7] = MEMORY[0x277D837D0];
            v159[8] = &protocol witness table for String;
            v160 = OUTLINED_FUNCTION_11_23();
            __swift_mutable_project_boxed_opaque_existential_1(v160, v161);
            OUTLINED_FUNCTION_5_29();
            OUTLINED_FUNCTION_25_14();
            v162();
          }

          v163 = sub_22199B82C(v11, v208);
          sub_2219EB748(&v215, &v212);
          swift_isUniquelyReferenced_nonNull_native();
          v210 = v111;
          v39 = v111;
          v164 = sub_221B9ED28(v163);
          if (__OFADD__(v111[2], (v165 & 1) == 0))
          {
            goto LABEL_80;
          }

          v166 = v164;
          v167 = v165;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC158, &qword_221BE8B28);
          v39 = &v210;
          if (sub_221BCE028())
          {
            v39 = v210;
            v168 = sub_221B9ED28(v163);
            v44 = v205;
            if ((v167 & 1) != (v169 & 1))
            {
              sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
              result = sub_221BCE228();
              __break(1u);
              return result;
            }

            v166 = v168;
          }

          else
          {
            v44 = v205;
          }

          v111 = v210;
          if (v167)
          {
            sub_221BA0CDC(&v212, v210[7] + 40 * v166);
          }

          else
          {
            v210[(v166 >> 6) + 8] |= 1 << v166;
            *(v111[6] + 8 * v166) = v163;
            v170 = v111[7] + 40 * v166;
            v171 = v212;
            v172 = v213;
            *(v170 + 32) = v214;
            *v170 = v171;
            *(v170 + 16) = v172;
            v173 = v111[2];
            v174 = __OFADD__(v173, 1);
            v175 = v173 + 1;
            if (v174)
            {
              goto LABEL_81;
            }

            v111[2] = v175;
          }

          v176 = OUTLINED_FUNCTION_31_14();
          v177(v176);
          sub_2219B397C(&v215);
          v109 = v192;
          v43 = v197;
        }

        else
        {
          v129 = OUTLINED_FUNCTION_31_14();
          v130(v129);
          v44 = v205;
        }
      }

      else
      {
        (*v198)(v116, v11);
      }

      OUTLINED_FUNCTION_23_13();
      v178 = sub_221BCD708();
      v110 = v211;
      if (v211 == v178)
      {
        goto LABEL_40;
      }
    }
  }

  v111 = MEMORY[0x277D84F98];
LABEL_40:
  v112 = v219;
  v113 = v187;
  *v187 = v218;
  v113[1] = v112;
  *(v113 + 4) = v220;

  *(v113 + 5) = v111;
  return result;
}

double sub_221B9E6EC@<D0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v12 = *a1;

  v13 = [v12 identifier];
  v14 = sub_221BCD388();
  v16 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7908, &unk_221BD19D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_221BD19E0;
  v31 = a4;
  v29 = a5;
  v30 = a6;
  v18 = sub_221BCD748();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_221B8F6FC(sub_221BA1094, v28, v18, &type metadata for AppEntitySpecification, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v20);
  v22 = sub_221B9C874(v21, 3);

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC180, &unk_221BE8C90);
  v24 = sub_221BA10C0();
  *(v17 + 32) = 0x746567726174;
  *(v17 + 40) = 0xE600000000000000;
  *(v17 + 48) = v22;
  *(v17 + 56) = v23;
  *(v17 + 64) = v24;
  a7[3] = &type metadata for AnyAppIntentSpecification;
  a7[4] = &off_283513928;
  v25 = swift_allocObject();
  *a7 = v25;
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  result = 0.0;
  *(v25 + 32) = xmmword_221BD0800;
  *(v25 + 48) = v14;
  *(v25 + 56) = v16;
  *(v25 + 64) = v17;
  return result;
}

unint64_t sub_221B9E924(uint64_t a1)
{
  sub_221BCD388();
  sub_221BCE308();
  sub_221BCD448();
  v2 = sub_221BCE358();

  return sub_221B9ED6C(a1, v2);
}

unint64_t sub_221B9E9B8(uint64_t a1, uint64_t a2)
{
  sub_221BCE308();
  sub_221BCD448();
  v4 = sub_221BCE358();

  return sub_221B9EE64(a1, a2, v4);
}

unint64_t sub_221B9EA30(uint64_t a1)
{
  sub_221BCC558();
  OUTLINED_FUNCTION_9_25(&qword_27CFB9420);
  v2 = sub_221BCD308();

  return sub_221B9EF18(a1, v2);
}

unint64_t sub_221B9EADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_221BCE308();
  sub_221BCD448();
  sub_221BCE328();
  if (a4)
  {
    sub_221BCD448();
  }

  v8 = sub_221BCE358();

  return sub_221B9F0C0(a1, a2, a3, a4, v8);
}

unint64_t sub_221B9EB98(uint64_t a1)
{
  v2 = _s17LNConnectionStoreC9AssertionOMa(0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_4_0();
  v5 = v4 - v3;
  sub_221BCE308();
  sub_221A5BB74(a1, v5);
  MEMORY[0x223DA4060](0);
  v6 = sub_221BCC558();
  OUTLINED_FUNCTION_9_25(&qword_27CFB9420);
  sub_221BCD318();
  OUTLINED_FUNCTION_0_6();
  (*(v7 + 8))(v5, v6);
  v8 = sub_221BCE358();
  return sub_221B9F22C(a1, v8);
}

unint64_t sub_221B9ECA8(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_221BCE308();
  sub_221B64E24(&v4);
  v2 = sub_221BCE358();

  return sub_221B9F43C(__src, v2);
}

unint64_t sub_221B9ED28(uint64_t a1)
{
  v2 = sub_221BCDC48();

  return sub_221B9F6B0(a1, v2);
}

unint64_t sub_221B9ED6C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_221BCD388();
    v7 = v6;
    if (v5 == sub_221BCD388() && v7 == v8)
    {

      return i;
    }

    v10 = sub_221BCE1B8();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_221B9EE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_221BCE1B8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_221B9EF18(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_221BCC558();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4, v6);
    sub_221A2A71C(&qword_27CFB8AE0, MEMORY[0x277CC9610]);
    v10 = sub_221BCD338();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_221B9F0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v17 = v15[2];
      v16 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_221BCE1B8() & 1) != 0)
      {
        if (v16)
        {
          if (a4)
          {
            v19 = v17 == a3 && v16 == a4;
            if (v19 || (sub_221BCE1B8() & 1) != 0)
            {
              return v8;
            }
          }
        }

        else if (!a4)
        {
          return v8;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_221B9F1CC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_221B9F22C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8B08, &unk_221BD6720);
  MEMORY[0x28223BE20](v19);
  v5 = &v16 - v4;
  v6 = _s17LNConnectionStoreC9AssertionOMa(0);
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + 64;
  v21 = v2;
  v17 = ~(-1 << *(v2 + 32));
  for (i = a2 & v17; ((1 << i) & *(v9 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v17)
  {
    sub_221A5BB74(*(v21 + 48) + *(v18 + 72) * i, v8);
    v11 = *(v19 + 48);
    sub_221A5BB74(v8, v5);
    sub_221A5BB74(v20, &v5[v11]);
    v12 = sub_221BCC518();
    sub_2219A197C(v8);
    v13 = sub_221BCC558();
    v14 = *(*(v13 - 8) + 8);
    v14(&v5[v11], v13);
    v14(v5, v13);
    if (v12)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_221B9F43C(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v7 = ~v4;
    v21 = *(a1 + 49);
    v22 = *(a1 + 48);
    v20 = *(a1 + 25);
    v8 = *a1;
    v9 = a1[1];
    v30 = *(a1 + 1);
    v31 = *(a1 + 32);
    v18 = a1[7];
    v19 = a1[8];
    while (1)
    {
      memcpy(__dst, (*(v6 + 48) + 72 * v5), sizeof(__dst));
      v10 = __dst[0] == v8 && __dst[1] == v9;
      if (!v10 && (sub_221BCE1B8() & 1) == 0)
      {
        goto LABEL_27;
      }

      v11 = __dst[2];
      v12 = __dst[3];
      v13 = __dst[4];
      v26 = __dst[2];
      v27 = __dst[3];
      v28 = __dst[4];
      v24 = v30;
      v25 = v31;
      sub_221B67390(__dst, v23);
      sub_221A1C70C(v11, v12, v13);
      sub_221BA0FD4(&v30, v23);
      LOBYTE(v11) = static IntentsServices.DevicePredicate.== infix(_:_:)(&v26, &v24);
      sub_2219A1B7C(v24, *(&v24 + 1), v25);
      sub_2219A1B7C(v26, v27, v28);
      if ((v11 & 1) == 0)
      {
        goto LABEL_26;
      }

      sub_2219A1D20(0, &qword_27CFB7670, 0x277D82BB8);
      if ((sub_221BCDC58() & 1) == 0)
      {
        goto LABEL_26;
      }

      v14 = BYTE1(__dst[6]);
      if (LOBYTE(__dst[6]) == 10)
      {
        if (v22 != 10)
        {
          goto LABEL_26;
        }
      }

      else if (v22 == 10 || (sub_221A1A7FC(__dst[6], v22) & 1) == 0)
      {
        goto LABEL_26;
      }

      if (((v14 ^ v21) & 1) != 0 || WORD1(__dst[6]) != v20)
      {
        goto LABEL_26;
      }

      if (!__dst[8])
      {
        break;
      }

      if (!v19)
      {
        goto LABEL_26;
      }

      if (__dst[7] == v18 && __dst[8] == v19)
      {
LABEL_29:
        sub_2219A1878(__dst);
        return v5;
      }

      v16 = sub_221BCE1B8();
      sub_2219A1878(__dst);
      if (v16)
      {
        return v5;
      }

LABEL_27:
      v5 = (v5 + 1) & v7;
      if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

    if (!v19)
    {
      goto LABEL_29;
    }

LABEL_26:
    sub_2219A1878(__dst);
    goto LABEL_27;
  }

  return v5;
}

unint64_t sub_221B9F6B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_221BCDC58();

    if (v8)
    {
      break;
    }
  }

  return i;
}

void sub_221B9F788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_20_17();
  sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_0_60();
  if (v15)
  {
    __break(1u);
LABEL_11:
    sub_221BCE228();
    __break(1u);
    return;
  }

  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB77C0, &qword_221BD0D28);
  if (OUTLINED_FUNCTION_4_30())
  {
    sub_221B9EA30(v12);
    OUTLINED_FUNCTION_19_18();
    if (!v17)
    {
      goto LABEL_11;
    }
  }

  if (v16)
  {
    OUTLINED_FUNCTION_22();

    sub_221BA11F4(v18, v19);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_63_3();
    v22(v21);
    v23 = OUTLINED_FUNCTION_28_10();
    sub_221BA06F0(v23, v24, v25, v26);
    OUTLINED_FUNCTION_22();
  }
}

void sub_221B9F8D4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_13_23(a1, a2);
  sub_221B9E9B8(v7, v8);
  OUTLINED_FUNCTION_0_60();
  if (v11)
  {
    __break(1u);
LABEL_14:
    sub_221BCE228();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7768, &qword_221BE9980);
  if (OUTLINED_FUNCTION_4_30())
  {
    sub_221B9E9B8(a2, a3);
    OUTLINED_FUNCTION_8_21();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  v16 = *v3;
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_0((v16[7] + 32 * v12));
    v17 = OUTLINED_FUNCTION_0_0();

    sub_2219A1AB0(v17, v18);
  }

  else
  {
    sub_221BA07B8(v12, a2, a3, a1, v16);
  }
}

void sub_221B9FA14()
{
  OUTLINED_FUNCTION_21();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_13_23(v7, v5);
  sub_221B9E9B8(v9, v10);
  OUTLINED_FUNCTION_0_60();
  if (v11)
  {
    __break(1u);
LABEL_14:
    sub_221BCE228();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_37_8();
  if (OUTLINED_FUNCTION_4_30())
  {
    sub_221B9E9B8(v6, v4);
    OUTLINED_FUNCTION_8_21();
    if (!v13)
    {
      goto LABEL_14;
    }

    v2 = v12;
  }

  if (v1)
  {
    *(*(*v0 + 56) + 8 * v2) = v8;
    OUTLINED_FUNCTION_22();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_29_14();
    sub_221BA0824(v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_22();
  }
}

void sub_221B9FB24()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_20_17();
  sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_0_60();
  if (v3)
  {
    __break(1u);
LABEL_11:
    sub_221BCE228();
    __break(1u);
    return;
  }

  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7748, &qword_221BE8C80);
  if (OUTLINED_FUNCTION_4_30())
  {
    sub_221B9EA30(v0);
    OUTLINED_FUNCTION_19_18();
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if (v4)
  {
    OUTLINED_FUNCTION_33_10();
    OUTLINED_FUNCTION_22();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_63_3();
    v8(v7);
    v9 = OUTLINED_FUNCTION_28_10();
    sub_221BA08B8(v9, v10, v11, v12);
    OUTLINED_FUNCTION_22();
  }
}

void sub_221B9FC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v14 = OUTLINED_FUNCTION_13_23(a1, a2);
  sub_221B9EADC(v14, v15, v16, v17);
  OUTLINED_FUNCTION_0_60();
  if (v20)
  {
    __break(1u);
    goto LABEL_13;
  }

  v21 = v18;
  v22 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  if ((OUTLINED_FUNCTION_34_11() & 1) == 0)
  {
    goto LABEL_5;
  }

  v23 = sub_221B9EADC(a2, a3, a4, a5);
  if ((v22 & 1) != (v24 & 1))
  {
LABEL_13:
    sub_221BCE228();
    __break(1u);
    return;
  }

  v21 = v23;
LABEL_5:
  v25 = *v8;
  if (v22)
  {
    *(*(v25 + 56) + 8 * v21) = a1;
  }

  else
  {
    sub_221BA086C(v21, a2, a3, a4, a5, a1, v25);
  }
}

void sub_221B9FDF0()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v22 = v8;
  sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_0_60();
  if (v12)
  {
    __break(1u);
LABEL_12:
    sub_221BCE228();
    __break(1u);
    return;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  if (OUTLINED_FUNCTION_4_30())
  {
    sub_221B9EA30(v7);
    OUTLINED_FUNCTION_19_18();
    if (!v16)
    {
      goto LABEL_12;
    }

    v13 = v15;
  }

  v17 = *v0;
  if (v14)
  {
    *(*(v17 + 56) + 8 * v13) = v22;
    OUTLINED_FUNCTION_22();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_63_3();
    v21(v20);
    sub_221BA08B8(v13, v1, v22, v17);
    OUTLINED_FUNCTION_22();
  }
}

unint64_t sub_221B9FF54(uint64_t a1, uint64_t a2)
{
  sub_221B9EAA0(a2);
  OUTLINED_FUNCTION_0_60();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7728, &qword_221BD0CA0);
  if ((OUTLINED_FUNCTION_36_10() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = sub_221B9EAA0(a2);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_13:
    result = sub_221BCE228();
    __break(1u);
    return result;
  }

  v8 = v10;
LABEL_5:
  if (v9)
  {
    *(*(*v2 + 56) + 8 * v8) = a1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_63_3();

    return sub_221BA0954(v13, v14, a1, v15);
  }
}

void sub_221BA0058()
{
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_20_17();
  _s17LNConnectionStoreC9AssertionOMa(v3);
  OUTLINED_FUNCTION_0_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v7 = v6 - v5;
  sub_221B9EB98(v2);
  OUTLINED_FUNCTION_0_60();
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7738, &unk_221BD0CB0);
  if ((sub_221BCE028() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_221B9EB98(v2);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_11:
    sub_221BCE228();
    __break(1u);
    return;
  }

  v11 = v13;
LABEL_5:
  v15 = *v1;
  if (v12)
  {
    OUTLINED_FUNCTION_33_10();
    OUTLINED_FUNCTION_22();
  }

  else
  {
    sub_221A5BB74(v2, v7);
    sub_221BA0998(v11, v7, v0, v15);
    OUTLINED_FUNCTION_22();
  }
}

void sub_221BA01E0()
{
  OUTLINED_FUNCTION_21();
  v27 = v1;
  v28 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v26 = v9;
  sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v13 = v12 - v11;
  sub_221B9EA30(v8);
  OUTLINED_FUNCTION_0_60();
  if (v16)
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v4);
  if (OUTLINED_FUNCTION_34_11())
  {
    v19 = sub_221B9EA30(v8);
    if ((v18 & 1) == (v20 & 1))
    {
      v17 = v19;
      goto LABEL_5;
    }

LABEL_10:
    sub_221BCE228();
    __break(1u);
    return;
  }

LABEL_5:
  v21 = *v0;
  if (v18)
  {
    v22 = *(v21 + 56);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    sub_221BA0F8C(v26, v22 + *(*(v23 - 8) + 72) * v17, v27, v28);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_23_13();
    v25(v24);
    sub_221BA0A38(v17, v13, v26, v21, v27, v28);
  }

  OUTLINED_FUNCTION_22();
}

uint64_t sub_221BA036C(uint64_t a1, void *__src)
{
  sub_221B9ECA8(__src);
  OUTLINED_FUNCTION_0_60();
  if (v7)
  {
    __break(1u);
LABEL_12:
    result = sub_221BCE228();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7718, &qword_221BD0C98);
  if (OUTLINED_FUNCTION_36_10())
  {
    sub_221B9ECA8(__src);
    OUTLINED_FUNCTION_8_21();
    if (!v11)
    {
      goto LABEL_12;
    }

    v8 = v10;
  }

  v12 = *v2;
  if (v9)
  {
    v13 = v12[7] + 16 * v8;

    return sub_221BA1198(a1, v13);
  }

  else
  {
    sub_221BA0B14(v8, __src, a1, v12);
    return sub_221B67390(__src, v15);
  }
}

void sub_221BA0478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_221B9E9B8(a3, a4);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC190, &unk_221BE8CA0);
  if ((sub_221BCE028() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_221B9E9B8(a3, a4);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    sub_221BCE228();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  v18 = *v6;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_221BA0B98(v14, a3, a4, a1, a2, v18);
  }
}

void sub_221BA05F4()
{
  OUTLINED_FUNCTION_21();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_13_23(v7, v5);
  sub_221B9E9B8(v9, v10);
  OUTLINED_FUNCTION_0_60();
  if (v11)
  {
    __break(1u);
LABEL_14:
    sub_221BCE228();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_37_8();
  if (OUTLINED_FUNCTION_4_30())
  {
    sub_221B9E9B8(v6, v4);
    OUTLINED_FUNCTION_8_21();
    if (!v13)
    {
      goto LABEL_14;
    }

    v2 = v12;
  }

  if (v1)
  {
    *(*(*v0 + 56) + 8 * v2) = v8;
    OUTLINED_FUNCTION_22();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_29_14();
    sub_221BA0824(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_22();
  }
}

void *sub_221BA06F0(unint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_221BCC558();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = memcpy((a4[7] + 168 * a1), a3, 0xA8uLL);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_221BA07B8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2219A1AB0(a4, (a5[7] + 32 * a1));
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

uint64_t sub_221BA0824(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_14_21(a1, a5 + 8 * (a1 >> 6));
  v7 = (v6[6] + 16 * result);
  *v7 = v8;
  v7[1] = v9;
  *(v6[7] + 8 * result) = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

uint64_t sub_221BA086C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OUTLINED_FUNCTION_14_21(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 32 * result);
  *v9 = v10;
  v9[1] = v11;
  v9[2] = v12;
  v9[3] = v13;
  *(v8[7] + 8 * result) = v14;
  v15 = v8[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v17;
  }

  return result;
}

uint64_t sub_221BA08B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14_21(a1, a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  sub_221BCC558();
  OUTLINED_FUNCTION_0_29();
  result = (*(v10 + 32))(v9 + *(v10 + 72) * a1, a2);
  *(*(a4 + 56) + 8 * a1) = a3;
  v12 = *(a4 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }

  return result;
}

unint64_t sub_221BA0954(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_221BA0998(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = _s17LNConnectionStoreC9AssertionOMa(0);
  result = sub_221BA1030(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_221BA0A38(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  OUTLINED_FUNCTION_14_21(a1, a4 + 8 * (a1 >> 6));
  v13 = *(v12 + 48);
  sub_221BCC558();
  OUTLINED_FUNCTION_0_29();
  (*(v14 + 32))(v13 + *(v14 + 72) * a1, a2);
  v15 = *(a4 + 56);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_221B61EB0(a3, v15 + *(*(v16 - 8) + 72) * a1, a5, a6);
  v18 = *(a4 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v20;
  }

  return result;
}

uint64_t sub_221BA0B14(unint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  memcpy((a4[6] + 72 * a1), a2, 0x48uLL);
  result = sub_2219A18CC(a3, a4[7] + 16 * a1);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_221BA0B98(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void *sub_221BA0C50(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 56) + 8 * a2);
    *result = v5;

    v6 = v5;
    return OUTLINED_FUNCTION_0_0();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_221BA0D38(uint64_t a1, unsigned int a2)
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

uint64_t sub_221BA0D8C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_221BA0DEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221BA0E3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_221BA0E90(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_221BA0EA8(void *result, int a2)
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

uint64_t get_enum_tag_for_layout_string_18AppIntentsServices0A19IntentSpecificationVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_221BA0EF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_221BA0F30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221BA0F8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_29(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_29();
  v5 = OUTLINED_FUNCTION_0_0();
  v6(v5);
  return v4;
}

uint64_t sub_221BA1030(uint64_t a1, uint64_t a2)
{
  v4 = _s17LNConnectionStoreC9AssertionOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_221BA10C0()
{
  result = qword_27CFBC188;
  if (!qword_27CFBC188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFBC180, &unk_221BE8C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC188);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_30()
{

  return sub_221BCE028();
}

id OUTLINED_FUNCTION_6_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2219A6260(&a9, v9);
}

void OUTLINED_FUNCTION_7_23()
{
  v2 = *(v0 + 16) + 1;

  sub_2219B394C(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_9_25(unint64_t *a1)
{
  v2 = MEMORY[0x277CC9600];

  return sub_221A2A71C(a1, v2);
}

unint64_t OUTLINED_FUNCTION_17_18()
{

  return sub_221B9EA30(v0);
}

uint64_t OUTLINED_FUNCTION_21_14(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD00000000000002ELL;
  *(a2 + 8) = v2;
  *(a2 + 16) = 6;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_27_15(unint64_t a1@<X8>)
{

  sub_2219B394C(a1 > 1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_33_10()
{
  v3 = *(v1 + 56);
  result = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_11()
{

  return sub_221BCE028();
}

id OUTLINED_FUNCTION_35_12()
{

  return sub_2219A6260((v0 + 296), v1);
}

uint64_t OUTLINED_FUNCTION_36_10()
{

  return sub_221BCE028();
}

uint64_t OUTLINED_FUNCTION_37_8()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

unint64_t IntentsServices.EntityCompatibility.description.getter()
{
  result = 0x6574726F70707553;
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
      result = 0x206E776F6E6B6E55;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

BOOL static IntentsServices.EntityCompatibility.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 1:
      return v2 == 1;
    case 2:
      return v2 == 2;
    case 3:
      return v2 == 3;
    case 4:
      return v2 == 4;
    default:
      return !*a2;
  }
}

uint64_t IntentsServices.EntityCompatibility.hashValue.getter()
{
  v1 = *v0;
  sub_221BCE308();
  MEMORY[0x223DA4060](v1);
  return sub_221BCE358();
}

unint64_t IntentsServices.IntentCompatibility.description.getter()
{
  result = 0x6574726F70707553;
  switch(*v0)
  {
    case 0:
      return result;
    case 1:
      result = 0x726F707075736E55;
      break;
    case 2:
    case 3:
    case 4:
      result = 0x206E776F6E6B6E55;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    default:
      sub_221BCDE68();

      v2 = sub_221BCE478();
      MEMORY[0x223DA31F0](v2);

      result = 0xD00000000000001CLL;
      break;
  }

  return result;
}

BOOL static IntentsServices.IntentCompatibility.== infix(_:_:)(void *a1, unint64_t *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 0:
      if (v2)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_15;
      }

LABEL_13:
      result = 1;
      break;
    default:
      if (v2 >= 6)
      {
        result = *a1 == v2;
      }

      else
      {
LABEL_15:
        result = 0;
      }

      break;
  }

  return result;
}

unint64_t sub_221BA1854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBC1A0;
  if (!qword_27CFBC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC1A0);
  }

  return result;
}

_BYTE *_s19EntityCompatibilityOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t _s19IntentCompatibilityOwet(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t _s19IntentCompatibilityOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *sub_221BA1A34(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void sub_221BA1AC8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_221BA2E9C();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_221BA1B38(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{

  v11 = sub_221BCCD68();
  v12 = sub_221BCDA68();

  if (os_log_type_enabled(v11, v12))
  {
    v20[4] = v5;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2219A6360(a2, a3, v20);
    _os_log_impl(&dword_221989000, v11, v12, "Adding task for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x223DA4C00](v14, -1, -1);
    MEMORY[0x223DA4C00](v13, -1, -1);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v16 = OBJC_IVAR____TtC18AppIntentsServices19AsyncSerialExecutor_workItems;
  swift_beginAccess();

  sub_221B58CAC();
  v17 = *(*(a1 + v16) + 16);
  sub_221B58D38(v17);
  v18 = *(a1 + v16);
  *(v18 + 16) = v17 + 1;
  v19 = (v18 + 32 * v17);
  v19[4] = &unk_221BE8ED0;
  v19[5] = v15;
  v19[6] = a2;
  v19[7] = a3;
  *(a1 + v16) = v18;
  swift_endAccess();
  sub_221BA1EE0();
}

uint64_t sub_221BA1D10(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_221BA1DF8;

  return v5();
}

uint64_t sub_221BA1DF8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_25();

  return v3();
}

void sub_221BA1EE0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - v3;
  v5 = OBJC_IVAR____TtC18AppIntentsServices19AsyncSerialExecutor_workItems;
  swift_beginAccess();
  if (*(*(v1 + v5) + 16))
  {
    v6 = OBJC_IVAR____TtC18AppIntentsServices19AsyncSerialExecutor_workTask;
    if (!*(v1 + OBJC_IVAR____TtC18AppIntentsServices19AsyncSerialExecutor_workTask))
    {
      swift_beginAccess();
      v7 = sub_221BA2150();
      v9 = v8;
      v11 = v10;
      v13 = v12;
      swift_endAccess();
      v14 = swift_allocObject();
      *(v14 + 16) = v7;
      *(v14 + 24) = v9;

      v15 = sub_221BCCD68();
      v16 = sub_221BCDA68();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v22[0] = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_2219A6360(v11, v13, v22);
        _os_log_impl(&dword_221989000, v15, v16, "Executing task for %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_23();
      }

      v19 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v19);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = &unk_221BE8EA0;
      v20[5] = v14;
      v20[6] = v1;
      v20[7] = v11;
      v20[8] = v13;

      sub_2219F8C64();
      *(v1 + v6) = v21;
    }
  }
}

uint64_t sub_221BA2150()
{
  if (*(*v0 + 16))
  {
    v1 = *(*v0 + 32);

    sub_221BA2CD0(0, 1);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221BA21C0(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_221BA2E98;

  return v4();
}

uint64_t sub_221BA22A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v8[5] = v9;
  *v9 = v8;
  v9[1] = sub_221BA2398;

  return v11();
}

uint64_t sub_221BA2398()
{
  v2 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;
  *(v4 + 48) = v0;

  if (v0)
  {
    v5 = sub_221BA2554;
  }

  else
  {
    v5 = sub_221BA24A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221BA24A4()
{
  v1 = *(v0 + 48);
  v2 = *(*(v0 + 16) + 16);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_0_61(v3);
  sub_221BA2CA8();
  os_unfair_lock_unlock(v2 + 4);

  if (!v1)
  {
    OUTLINED_FUNCTION_25();

    return v5();
  }

  return result;
}

uint64_t sub_221BA2554()
{
  v19 = v0;
  v1 = v0[6];

  v2 = v1;
  v3 = sub_221BCCD68();
  v4 = sub_221BCDA78();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v8 = v0[3];
    v7 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_2219A6360(v8, v7, &v18);
    *(v9 + 12) = 2112;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_221989000, v3, v4, "Execution of task for %s failed: %@", v9, 0x16u);
    sub_22199B738(v10);
    OUTLINED_FUNCTION_23();
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  else
  {
  }

  v14 = *(v0[2] + 16);
  v15 = swift_task_alloc();
  OUTLINED_FUNCTION_0_61(v15);
  sub_221BA2CA8();
  os_unfair_lock_unlock(v14 + 4);

  OUTLINED_FUNCTION_25();

  return v16();
}

void sub_221BA2758(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC18AppIntentsServices19AsyncSerialExecutor_workTask) = 0;

  sub_221BA1EE0();
}

uint64_t sub_221BA2798()
{

  v1 = OBJC_IVAR____TtC18AppIntentsServices19AsyncSerialExecutor_logger;
  v2 = sub_221BCCD88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_221BA2820()
{
  sub_221BA2798();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AsyncSerialExecutor(uint64_t a1)
{
  result = qword_27CFBC1C0;
  if (!qword_27CFBC1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221BA28CC(uint64_t a1)
{
  result = sub_221BCCD88();
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

uint64_t sub_221BA2984()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8B10, &qword_221BE8E90);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  type metadata accessor for AsyncSerialExecutor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7770, &qword_221BD0CD0);
  sub_221BCD3D8();
  sub_221BCCD78();
  *(v0 + OBJC_IVAR____TtC18AppIntentsServices19AsyncSerialExecutor_workItems) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC18AppIntentsServices19AsyncSerialExecutor_workTask) = 0;
  return v0;
}

uint64_t sub_221BA2A50()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221BA2E98;

  return sub_221BA21C0(v2);
}

uint64_t sub_221BA2AFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_221BA1DF8;

  return sub_221BA22A8(a1, v4, v5, v6, v7, v8, v9, v10);
}