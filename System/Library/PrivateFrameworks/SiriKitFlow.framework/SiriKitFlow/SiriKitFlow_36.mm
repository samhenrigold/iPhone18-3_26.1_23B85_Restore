uint64_t sub_1DCE984F8(uint64_t a1)
{
  v2 = type metadata accessor for Input(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCE98554(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(a1 + 5);
}

void sub_1DCE9859C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 64);
  *(a1 + 64) = v5;
  (**(v5 - 8))(a1 + 40, a2 + 40);
  v6 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v6;
  v7 = *(a2 + 96);
  v8 = *(a2 + 104);
  *(a1 + 96) = v7;
  *(a1 + 104) = v8;
  sub_1DD0DCF8C();
}

void sub_1DCE98660(void *a1, void *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  __swift_assign_boxed_opaque_existential_1(a1 + 5, a2 + 5);
  v4 = a2[11];
  a1[10] = a2[10];
  a1[11] = v4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE986E0(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 40));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  v5 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v5;

  return a1;
}

uint64_t sub_1DCE9875C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1DCE9879C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DCE98810@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v10 = *a5;
  v11 = a5[1];
  sub_1DCAFF9E8(a1, a6);
  result = sub_1DCAFF9E8(a2, (a6 + 5));
  a6[10] = a3;
  a6[11] = a4;
  a6[12] = v10;
  a6[13] = v11;
  return result;
}

uint64_t sub_1DCE9886C()
{
  OUTLINED_FUNCTION_42();
  v1[42] = v2;
  v1[43] = v0;
  v3 = type metadata accessor for NLContextUpdate(0);
  v1[44] = v3;
  OUTLINED_FUNCTION_20_0(v3);
  v1[45] = OUTLINED_FUNCTION_38();
  v4 = sub_1DD0DB6EC();
  v1[46] = v4;
  v1[47] = *(v4 - 8);
  v1[48] = OUTLINED_FUNCTION_38();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v5);
  v1[49] = OUTLINED_FUNCTION_38();
  v6 = sub_1DD0DB04C();
  v1[50] = v6;
  v1[51] = *(v6 - 8);
  v1[52] = OUTLINED_FUNCTION_38();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA8A90, &qword_1DD0FE488);
  OUTLINED_FUNCTION_20_0(v7);
  v1[53] = OUTLINED_FUNCTION_38();
  v8 = type metadata accessor for OutputGenerationManifest(0);
  v1[54] = v8;
  OUTLINED_FUNCTION_20_0(v8);
  v1[55] = OUTLINED_FUNCTION_38();
  v9 = type metadata accessor for ResponseBundle(0);
  v1[56] = v9;
  OUTLINED_FUNCTION_20_0(v9);
  v1[57] = OUTLINED_FUNCTION_38();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE98A30()
{
  v1 = v0[43];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[58] = v4;
  *v4 = v5;
  v4[1] = sub_1DCE98B58;
  v6 = v0[57];

  return v8(v6, v2, v3);
}

uint64_t sub_1DCE98B58()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v4 + 472) = v0;

  if (v0)
  {
    v5 = sub_1DCE99C58;
  }

  else
  {
    v5 = sub_1DCE98C5C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1DCE98C5C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  sub_1DCB09910(*(v0 + 456) + *(*(v0 + 448) + 28), v1, &unk_1ECCA8A90, &qword_1DD0FE488);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = *(v0 + 440);
  if (EnumTagSinglePayload == 1)
  {
    v5 = *(v0 + 432);
    v7 = *(v0 + 344);
    v6 = *(v0 + 352);
    v8 = *(v7 + 96);
    v9 = *(v7 + 104);
    *(v4 + v5[6]) = 0;
    *(v4 + v5[7]) = 0;
    *(v4 + v5[9]) = 256;
    v58 = v8;
    *(v4 + v5[11]) = 0;
    __swift_storeEnumTagSinglePayload(v4 + v5[12], 1, 1, v6);
    v10 = (v4 + v5[14]);
    *v10 = 0;
    v10[1] = 0;
    v11 = (v4 + v5[15]);
    *v11 = 0;
    v11[1] = 0;
    *(v4 + v5[16]) = 0;
    *(v4 + v5[18]) = 0;
    v12 = v4 + v5[19];
    *v12 = 0;
    *(v12 + 4) = 512;
    *(v4 + v5[20]) = 0;
    *(v4 + v5[21]) = 0;
    *(v4 + v5[22]) = 0;
    *(v4 + v5[23]) = 0;
    *(v4 + v5[24]) = 0;
    *(v4 + v5[25]) = 0;
    v13 = (v4 + v5[26]);
    *v13 = 0;
    v13[1] = 0;
    *(v4 + v5[27]) = 0;
    *(v4 + v5[28]) = MEMORY[0x1E69E7CC0];
    v14 = v5[29];
    v15 = *MEMORY[0x1E69D0678];
    sub_1DD0DD15C();
    OUTLINED_FUNCTION_2();
    (*(v16 + 104))(v4 + v14, v15);
    v17 = v5[30];
    v18 = sub_1DD0DD10C();
    __swift_storeEnumTagSinglePayload(v4 + v17, 1, 1, v18);
    *(v4 + v5[31]) = 2;
    *v4 = v58;
    v4[1] = v9;

    sub_1DCB67914();
  }

  sub_1DCE40EF4(*(v0 + 424), *(v0 + 440));
  v19 = *(v0 + 440);
  v20 = *(v0 + 392);
  v21 = *(v0 + 352);
  v22 = *(*(v0 + 432) + 48);
  sub_1DCB09910(v19 + v22, v20, &unk_1ECCA3270, &qword_1DD0E0F70);
  LODWORD(v21) = __swift_getEnumTagSinglePayload(v20, 1, v21);
  v23 = sub_1DCB0E9D8(v20, &unk_1ECCA3270, &qword_1DD0E0F70);
  if (v21 == 1)
  {
    v24 = *(v0 + 472);
    (*(*(v0 + 344) + 80))(v23);
    if (v24)
    {
      v25 = *(v0 + 440);
      OUTLINED_FUNCTION_1_95();
      sub_1DCE99D8C(v26, v27);
      OUTLINED_FUNCTION_0_89();
      sub_1DCE99D8C(v25, v28);

      OUTLINED_FUNCTION_141();

      __asm { BRAA            X1, X16 }
    }

    v32 = *(v0 + 376);
    v31 = *(v0 + 384);
    v33 = *(v0 + 360);
    v34 = *(v0 + 368);
    v35 = *(v0 + 352);
    NLContextUpdate.init()(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA1800, &qword_1DD0F9820);
    v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1DD0E07C0;
    (*(v32 + 32))(v37 + v36, v31, v34);

    *(v33 + 216) = v37;
    sub_1DCB0E9D8(v19 + v22, &unk_1ECCA3270, &qword_1DD0E0F70);
    sub_1DCB46478(v33, v19 + v22);
    __swift_storeEnumTagSinglePayload(v19 + v22, 0, 1, v35);
    sub_1DCE99D8C(v33, type metadata accessor for NLContextUpdate);
  }

  v38 = *(v0 + 456);
  sub_1DCB09910(v38 + 8, v0 + 56, &qword_1ECCA1838, &unk_1DD0FC960);
  if (*(v0 + 80))
  {
    v39 = *(v0 + 456);
    sub_1DCAFF9E8((v0 + 56), v0 + 16);
    sub_1DCB09910(v39 + 48, v0 + 296, &qword_1ECCA1838, &unk_1DD0FC960);
    if (*(v0 + 320))
    {
      sub_1DCAFF9E8((v0 + 296), v0 + 256);
      OUTLINED_FUNCTION_3_95();
      OUTLINED_FUNCTION_6_61();
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 480) = v40;
      *v40 = v41;
      v40[1] = sub_1DCE995DC;
      OUTLINED_FUNCTION_141();

      __asm { BRAA            X7, X16 }
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v44 = v0 + 296;
  }

  else
  {
    v44 = v0 + 56;
  }

  sub_1DCB0E9D8(v44, &qword_1ECCA1838, &unk_1DD0FC960);
  sub_1DCB09910(v38 + 8, v0 + 136, &qword_1ECCA1838, &unk_1DD0FC960);
  v45 = *(v0 + 456);
  if (*(v0 + 160))
  {
    sub_1DCAFF9E8((v0 + 136), v0 + 96);
    OUTLINED_FUNCTION_3_95();
    OUTLINED_FUNCTION_6_61();
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 488) = v46;
    *v46 = v47;
    v46[1] = sub_1DCE99784;
    OUTLINED_FUNCTION_14_51();
    OUTLINED_FUNCTION_141();

    __asm { BRAA            X6, X16 }
  }

  sub_1DCB0E9D8(v0 + 136, &qword_1ECCA1838, &unk_1DD0FC960);
  sub_1DCB09910(v45 + 48, v0 + 216, &qword_1ECCA1838, &unk_1DD0FC960);
  if (*(v0 + 240))
  {
    sub_1DCAFF9E8((v0 + 216), v0 + 176);
    OUTLINED_FUNCTION_3_95();
    OUTLINED_FUNCTION_6_61();
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 496) = v50;
    *v50 = v51;
    v50[1] = sub_1DCE99924;
    OUTLINED_FUNCTION_14_51();
    OUTLINED_FUNCTION_141();

    __asm { BRAA            X6, X16 }
  }

  sub_1DCB0E9D8(v0 + 216, &qword_1ECCA1838, &unk_1DD0FC960);
  OUTLINED_FUNCTION_3_95();
  OUTLINED_FUNCTION_6_61();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 504) = v54;
  *v54 = v55;
  v54[1] = sub_1DCE99AC4;
  OUTLINED_FUNCTION_141();

  __asm { BRAA            X5, X16 }
}

uint64_t sub_1DCE995DC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCE996C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v12 = v11[57];
  __swift_destroy_boxed_opaque_existential_1Tm(v11 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm(v11 + 2);
  OUTLINED_FUNCTION_1_95();
  sub_1DCE99D8C(v12, v13);
  OUTLINED_FUNCTION_2_79();
  OUTLINED_FUNCTION_0_89();
  sub_1DCE99D8C(v10, v14);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_121();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1DCE99784()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCE99868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v12 = *(v11 + 456);
  __swift_destroy_boxed_opaque_existential_1Tm((v11 + 96));
  OUTLINED_FUNCTION_1_95();
  sub_1DCE99D8C(v12, v13);
  OUTLINED_FUNCTION_2_79();
  OUTLINED_FUNCTION_0_89();
  sub_1DCE99D8C(v10, v14);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_121();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1DCE99924()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCE99A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v12 = *(v11 + 456);
  __swift_destroy_boxed_opaque_existential_1Tm((v11 + 176));
  OUTLINED_FUNCTION_1_95();
  sub_1DCE99D8C(v12, v13);
  OUTLINED_FUNCTION_2_79();
  OUTLINED_FUNCTION_0_89();
  sub_1DCE99D8C(v10, v14);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_121();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1DCE99AC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCE99BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_1_95();
  sub_1DCE99D8C(v11, v12);
  OUTLINED_FUNCTION_2_79();
  OUTLINED_FUNCTION_0_89();
  sub_1DCE99D8C(v10, v13);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_121();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1DCE99C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_2_79();

  OUTLINED_FUNCTION_121();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_1DCE99CF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCC467A0;

  return sub_1DCE9886C();
}

uint64_t sub_1DCE99D8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t PromptResult.description.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1, v1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  (*(v10 + 16))(v9);
  v11 = 0x6C6C65636E61632ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v12 = *v9;
      v13 = v9[8];
      v19[0] = 0;
      v19[1] = 0xE000000000000000;
      sub_1DD0DEC1C();

      strcpy(v19, ".error error: ");
      HIBYTE(v19[1]) = -18;
      swift_getErrorValue();
      v14 = sub_1DD0DF18C();
      MEMORY[0x1E12A6780](v14);

      MEMORY[0x1E12A6780](0x64656C646E616820, 0xEA0000000000203ALL);
      if (v13)
      {
        v15 = 1702195828;
      }

      else
      {
        v15 = 0x65736C6166;
      }

      if (v13)
      {
        v16 = 0xE400000000000000;
      }

      else
      {
        v16 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v15, v16);

      v11 = v19[0];
      break;
    case 2u:
      return v11;
    case 3u:
      v11 = 0x6577736E616E752ELL;
      break;
    default:
      (*(v3 + 32))(v6, v9, v2);
      v19[0] = 0;
      v19[1] = 0xE000000000000000;
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD114A10);
      sub_1DD0DF07C();
      v11 = v19[0];
      (*(v3 + 8))(v6, v2);
      break;
  }

  return v11;
}

uint64_t sub_1DCE9A0E4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_1DCE9A178(char *__dst, id *__src, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  if (*(v5 + 64) <= 9uLL)
  {
    v6 = 9;
  }

  else
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  if ((*(v5 + 80) & 0x1000F8) != 0 || (v6 + 1) > 0x18)
  {
    *__dst = *__src;
    sub_1DD0DCF8C();
  }

  v8 = *(__src + v6);
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v6 <= 3)
    {
      v10 = v6;
    }

    else
    {
      v10 = 4;
    }

    switch(v10)
    {
      case 1:
        v11 = *__src;
        goto LABEL_19;
      case 2:
        v11 = *__src;
        goto LABEL_19;
      case 3:
        v11 = *__src | (*(__src + 2) << 16);
        goto LABEL_19;
      case 4:
        v11 = *__src;
LABEL_19:
        v12 = (v11 | (v9 << (8 * v6))) + 2;
        if (v6 >= 4)
        {
          v8 = v11 + 2;
        }

        else
        {
          v8 = v12;
        }

        break;
      default:
        break;
    }
  }

  if (v8 == 1)
  {
    v13 = *__src;
    v14 = *__src;
    *__dst = v13;
    __dst[8] = *(__src + 8);
    __dst[v6] = 1;
    return __dst;
  }

  if (!v8)
  {
    (*(v5 + 16))(__dst, __src);
    __dst[v6] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v6 + 1);
}

void sub_1DCE9A32C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 9)
  {
    v2 = 9;
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    switch(v5)
    {
      case 1:
        v6 = *a1;
        goto LABEL_12;
      case 2:
        v6 = *a1;
        goto LABEL_12;
      case 3:
        v6 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v6 = *a1;
LABEL_12:
        v7 = (v6 | (v4 << (8 * v2))) + 2;
        if (v2 >= 4)
        {
          v3 = v6 + 2;
        }

        else
        {
          v3 = v7;
        }

        break;
      default:
        break;
    }
  }

  if (v3 == 1)
  {
  }

  else if (!v3)
  {
    (*(*(*(a2 + 16) - 8) + 8))();
  }
}

_BYTE *sub_1DCE9A420(_BYTE *__dst, id *__src, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 9uLL)
  {
    v5 = 9;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(__src + v5);
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    switch(v8)
    {
      case 1:
        v9 = *__src;
        goto LABEL_13;
      case 2:
        v9 = *__src;
        goto LABEL_13;
      case 3:
        v9 = *__src | (*(__src + 2) << 16);
        goto LABEL_13;
      case 4:
        v9 = *__src;
LABEL_13:
        v10 = (v9 | (v7 << (8 * v5))) + 2;
        if (v5 >= 4)
        {
          v6 = v9 + 2;
        }

        else
        {
          v6 = v10;
        }

        break;
      default:
        break;
    }
  }

  if (v6 == 1)
  {
    v11 = *__src;
    v12 = *__src;
    *__dst = v11;
    __dst[8] = *(__src + 8);
    __dst[v5] = 1;
    return __dst;
  }

  if (!v6)
  {
    (*(*(*(a3 + 16) - 8) + 16))(__dst, __src);
    __dst[v5] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v5 + 1);
}

id *sub_1DCE9A594(id *__dst, id *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 9uLL)
  {
    v7 = 9;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8 * v7;
  v9 = *(__dst + v7);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v7 <= 3)
    {
      v11 = v7;
    }

    else
    {
      v11 = 4;
    }

    switch(v11)
    {
      case 1:
        v12 = *__dst;
        goto LABEL_14;
      case 2:
        v12 = *__dst;
        goto LABEL_14;
      case 3:
        v12 = *__dst | (*(__dst + 2) << 16);
        goto LABEL_14;
      case 4:
        v12 = *__dst;
LABEL_14:
        v13 = (v12 | (v10 << v8)) + 2;
        v9 = v12 + 2;
        if (v7 < 4)
        {
          v9 = v13;
        }

        break;
      default:
        break;
    }
  }

  if (v9 == 1)
  {
  }

  else if (!v9)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v14 = *(__src + v7);
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    switch(v16)
    {
      case 1:
        v17 = *__src;
        goto LABEL_29;
      case 2:
        v17 = *__src;
        goto LABEL_29;
      case 3:
        v17 = *__src | (*(__src + 2) << 16);
        goto LABEL_29;
      case 4:
        v17 = *__src;
LABEL_29:
        v18 = (v17 | (v15 << v8)) + 2;
        v14 = v17 + 2;
        if (v7 < 4)
        {
          v14 = v18;
        }

        break;
      default:
        break;
    }
  }

  if (v14 == 1)
  {
    v19 = *__src;
    v20 = *__src;
    *__dst = v19;
    *(__dst + 8) = *(__src + 8);
    *(__dst + v7) = 1;
    return __dst;
  }

  if (!v14)
  {
    (*(v6 + 16))(__dst, __src, v5);
    *(__dst + v7) = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v7 + 1);
}

_BYTE *sub_1DCE9A7C8(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 9uLL)
  {
    v4 = 9;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        if (v4 >= 4)
        {
          v5 = v8 + 2;
        }

        else
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    *__dst = *a2;
    __dst[8] = a2[8];
    __dst[v4] = 1;
    return __dst;
  }

  if (!v5)
  {
    (*(*(*(a3 + 16) - 8) + 32))(__dst);
    __dst[v4] = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v4 + 1);
}

id *sub_1DCE9A91C(id *__dst, id *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 9uLL)
  {
    v7 = 9;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8 * v7;
  v9 = *(__dst + v7);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v7 <= 3)
    {
      v11 = v7;
    }

    else
    {
      v11 = 4;
    }

    switch(v11)
    {
      case 1:
        v12 = *__dst;
        goto LABEL_14;
      case 2:
        v12 = *__dst;
        goto LABEL_14;
      case 3:
        v12 = *__dst | (*(__dst + 2) << 16);
        goto LABEL_14;
      case 4:
        v12 = *__dst;
LABEL_14:
        v13 = (v12 | (v10 << v8)) + 2;
        v9 = v12 + 2;
        if (v7 < 4)
        {
          v9 = v13;
        }

        break;
      default:
        break;
    }
  }

  if (v9 == 1)
  {
  }

  else if (!v9)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v14 = *(__src + v7);
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    switch(v16)
    {
      case 1:
        v17 = *__src;
        goto LABEL_29;
      case 2:
        v17 = *__src;
        goto LABEL_29;
      case 3:
        v17 = *__src | (*(__src + 2) << 16);
        goto LABEL_29;
      case 4:
        v17 = *__src;
LABEL_29:
        v18 = (v17 | (v15 << v8)) + 2;
        v14 = v17 + 2;
        if (v7 < 4)
        {
          v14 = v18;
        }

        break;
      default:
        break;
    }
  }

  if (v14 == 1)
  {
    *__dst = *__src;
    *(__dst + 8) = *(__src + 8);
    *(__dst + v7) = 1;
    return __dst;
  }

  if (!v14)
  {
    (*(v6 + 32))(__dst, __src, v5);
    *(__dst + v7) = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v7 + 1);
}

uint64_t sub_1DCE9AB48(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 9;
  if (*(v3 + 64) > 9uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_24;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_24:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_24;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1DCE9AC94(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 9)
  {
    v5 = 9;
  }

  if (v5 <= 3)
  {
    v6 = (1u >> (8 * v5)) ^ 0xFD;
  }

  else
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  v8 = 8 * (v5 + 1);
  if (v6 >= a3)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((~(-1 << v8) + a3 - v6) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v6 >= a2)
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v7] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v5] = -a2;
        }

        break;
    }
  }

  else
  {
    v10 = ~v6 + a2;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v5 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v7);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCE9AE78(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 9;
  if (*(v2 + 64) > 9uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    switch(v6)
    {
      case 1:
        v7 = *a1;
        goto LABEL_12;
      case 2:
        v7 = *a1;
        goto LABEL_12;
      case 3:
        v7 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v7 = *a1;
LABEL_12:
        v8 = (v7 | (v5 << (8 * v3))) + 2;
        LODWORD(v4) = v7 + 2;
        if (v3 >= 4)
        {
          v4 = v4;
        }

        else
        {
          v4 = v8;
        }

        break;
      default:
        return v4;
    }
  }

  return v4;
}

void sub_1DCE9AF1C(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 9uLL)
  {
    v4 = 9;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 1)
  {
    v5 = a2 - 2;
    if (v4 < 4)
    {
      a1[v4] = (v5 >> (8 * v4)) + 2;
      if (v4)
      {
        v6 = v5 & ~(-1 << (8 * v4));
        bzero(a1, v4);
        if (v4 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v4 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v5;
        }
      }
    }

    else
    {
      a1[v4] = 2;
      bzero(a1, v4);
      *a1 = v5;
    }
  }

  else
  {
    a1[v4] = a2;
  }
}

uint64_t sub_1DCE9B034()
{
  OUTLINED_FUNCTION_79_12();
  v0 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v1 = OUTLINED_FUNCTION_194();
  v3 = OUTLINED_FUNCTION_74_13(v1, v2);
  if (v0)
  {
  }

  else
  {
    v5 = v3;
    if (v3)
    {
      v6 = [v3 localizedName];
      v4 = sub_1DD0DDFBC();

      return v4;
    }
  }

  return 0;
}

uint64_t ProtectedAppCheckStrategy.protectedAppCheck(_:needsAppNameForAppID:)()
{
  OUTLINED_FUNCTION_79_12();
  v0 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v1 = OUTLINED_FUNCTION_194();
  v3 = OUTLINED_FUNCTION_74_13(v1, v2);
  if (v0)
  {
  }

  else
  {
    v5 = v3;
    if (v3)
    {
      v6 = [v3 localizedName];
      v4 = sub_1DD0DDFBC();

      return v4;
    }
  }

  return 0;
}

uint64_t ProtectedAppCheck.__allocating_init(appIDs:strategy:client:deviceState:outputPublisher:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ProtectedAppCheck.init(appIDs:strategy:client:deviceState:outputPublisher:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_1DCE9B1F4()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v2 = swift_allocError();
  *v3 = v0;

  return MEMORY[0x1EEE6DEE8](v1, v2);
}

uint64_t sub_1DCE9B260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

uint64_t ProtectedAppCheck.__allocating_init(appID:strategy:)()
{
  OUTLINED_FUNCTION_79_12();
  v3 = v2;
  sub_1DCB8878C();
  if (v8)
  {
    sub_1DCAFF9E8(&v7, v9);
  }

  else
  {
    v9[3] = &type metadata for EmptyProtectedAppCheckStrategy;
    v9[4] = &off_1F586A120;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = v3;
  *(inited + 40) = v1;
  sub_1DCB17CA0(v9, &v7);
  v5 = ProtectedAppCheck.__allocating_init(appIDs:strategy:)();
  sub_1DCB0E9D8(v0, &unk_1ECCA8AA0, &unk_1DD0E4C90);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v5;
}

uint64_t ProtectedAppCheck.__allocating_init(appIDs:strategy:)()
{
  OUTLINED_FUNCTION_21();
  sub_1DCB17CA0(v0, v10);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  type metadata accessor for ProtectedAppCheck(0);
  memset(v4, 0, sizeof(v4));
  v5 = 0;
  v2 = swift_allocObject();
  ProtectedAppCheck.init(appIDs:strategy:client:deviceState:outputPublisher:)(v1, v10, v8, v6, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  return v2;
}

id sub_1DCE9B428()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  v1 = [v0 canEvaluatePolicy:1 error:0];
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v0;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    if (v1)
    {
      MEMORY[0x1E12A6780](2126697, 0xE300000000000000);
      [v3 biometryType];
      type metadata accessor for LABiometryType(0);
      sub_1DD0DEDBC();
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      v9 = 0x80000001DD120530;
      v8 = 0xD000000000000010;
    }

    v10 = sub_1DCB10E9C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "DeviceState: biometric policy %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A8390](v7, -1, -1);
    MEMORY[0x1E12A8390](v6, -1, -1);
  }

  if (v1)
  {
    v11 = [v3 biometryType];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t static ProtectedAppStatus.uninstalled(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return OUTLINED_FUNCTION_3_86(a1, a2);
}

uint64_t static ProtectedAppStatus.hidden(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 256;
  return OUTLINED_FUNCTION_3_86(a1, a2);
}

uint64_t static ProtectedAppStatus.locked(_:isAccessible:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 17) = 2;
  *(a4 + 16) = a3;
  return OUTLINED_FUNCTION_3_86(a1, a2);
}

uint64_t static ProtectedAppStatus.normal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 769;
  return OUTLINED_FUNCTION_3_86(a1, a2);
}

SiriKitFlow::ProtectedAppStatus::AppState_optional __swiftcall ProtectedAppStatus.AppState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DEE9C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ProtectedAppStatus.AppState.rawValue.getter()
{
  result = 0x6C6174736E696E75;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_71_11();
      break;
    case 2:
      result = OUTLINED_FUNCTION_49_16();
      break;
    case 3:
      result = 0x6C616D726F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCE9B7D0@<X0>(uint64_t *a1@<X8>)
{
  result = ProtectedAppStatus.AppState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *static ProtectedAppCheck.clientForExecutionDevice.getter@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for AppInstallationCheckingClient;
  a1[4] = &off_1F586A108;
  result = swift_allocObject();
  *a1 = result;
  result[5] = &type metadata for AppProtectionFrameworkClient;
  result[6] = &off_1F586A0F0;
  result[2] = 0xD000000000000012;
  result[3] = 0x80000001DD1203C0;
  return result;
}

uint64_t sub_1DCE9B8FC(char a1)
{
  result = OUTLINED_FUNCTION_2_20(v1 + 16, v4);
  *(v1 + 16) = a1 & 1;
  return result;
}

uint64_t sub_1DCE9B940(uint64_t a1)
{
  v2 = v1;
  v51[1] = a1;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v7 = (v6 - v5);
  v8 = sub_1DD0DB04C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  v14 = OUTLINED_FUNCTION_21_35();
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v51[0] = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = v51 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = v51 - v23;
  OUTLINED_FUNCTION_156(v2 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_state, v54);
  OUTLINED_FUNCTION_6_62();
  sub_1DCB88B4C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 4, v8);
  OUTLINED_FUNCTION_2_80();
  sub_1DCB551D4(v24, v26);
  if (EnumTagSinglePayload == 1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_6_62();
  sub_1DCB88B4C();
  if (!__swift_getEnumTagSinglePayload(v21, 4, v8))
  {
    (*(v9 + 32))(v13, v21, v8);
    type metadata accessor for Input(0);
    sub_1DCB88B4C();
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v44 = OUTLINED_FUNCTION_31_22();
      v45(v44);
      v28 = type metadata accessor for Parse;
      v29 = v7;
      goto LABEL_24;
    }

    v30 = *v7;
    v31 = v7[1];
    v32 = v7[2];
    v33 = v30 == 0xD000000000000038 && 0x80000001DD120380 == v31;
    if (!v33 && (sub_1DD0DF0AC() & 1) == 0)
    {
      v48 = OUTLINED_FUNCTION_31_22();
      v49(v48);

      return 0;
    }

    if (v32)
    {
      sub_1DCB90D40();

      if (*(&v53 + 1))
      {
        if (swift_dynamicCast())
        {
          v35 = v51[2];
          v34 = v51[3];
          if (v35 == sub_1DD0DAFFC() && v34 == v36)
          {
          }

          else
          {
            v38 = sub_1DD0DF0AC();

            if ((v38 & 1) == 0)
            {
              if (qword_1EDE4F900 != -1)
              {
                OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
              }

              v39 = sub_1DD0DD8FC();
              OUTLINED_FUNCTION_92(v39, qword_1EDE57E00);
              v40 = sub_1DD0DD8EC();
              v41 = sub_1DD0DE6EC();
              if (os_log_type_enabled(v40, v41))
              {
                v42 = OUTLINED_FUNCTION_50_0();
                *v42 = 0;
                v43 = "PAC: received unlock DI for another request? Unsure how to proceed; resetting";
LABEL_32:
                _os_log_impl(&dword_1DCAFC000, v40, v41, v43, v42, 2u);
                OUTLINED_FUNCTION_80();
                goto LABEL_33;
              }

              goto LABEL_33;
            }
          }

          v50 = v51[0];
          __swift_storeEnumTagSinglePayload(v51[0], 3, 4, v8);
          sub_1DCB8BD60(v50);
        }

LABEL_28:
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v46 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v46, qword_1EDE57E00);
        v40 = sub_1DD0DD8EC();
        v41 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = OUTLINED_FUNCTION_50_0();
          *v42 = 0;
          v43 = "PAC: received unlock DI that is missing an id; resetting the flow";
          goto LABEL_32;
        }

LABEL_33:

        v47 = v51[0];
        __swift_storeEnumTagSinglePayload(v51[0], 1, 4, v8);
        sub_1DCB8BD60(v47);
      }
    }

    else
    {

      v52 = 0u;
      v53 = 0u;
    }

    sub_1DCB0E9D8(&v52, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_2_80();
  v29 = v21;
LABEL_24:
  sub_1DCB551D4(v29, v28);
  return 0;
}

uint64_t sub_1DCE9BE98()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCE9BF7C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCE9C060()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCE9C164()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  if (qword_1EDE4F6A8 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_1EDE4F6A8);
  }

  v1 = *(v0 + 176);
  sub_1DD0DD1FC();
  v2 = sub_1DD0DD1AC();
  *(v0 + 232) = v2;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  type metadata accessor for SiriKitEvent(0);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  OUTLINED_FUNCTION_34_30(32);
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = 0;
  sub_1DCB8878C();
  v1[10] = 0;
  v1[11] = 0;
  sub_1DCB8878C();
  OUTLINED_FUNCTION_77_10();
  OUTLINED_FUNCTION_84_9(124);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE9C2F4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  sub_1DCB0E9D8(v2 + 16, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB0E9D8(v2 + 56, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCE9C444()
{
  OUTLINED_FUNCTION_42();
  static ExecuteResponse.ongoing(requireInput:)(1, *(v0 + 144));

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCE9C4B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCE9C5AC()
{
  OUTLINED_FUNCTION_42();
  v0 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_12_53(v0);
}

void sub_1DCE9C628()
{
  OUTLINED_FUNCTION_41();
  v20 = v0;
  v1 = v0[28];
  v2 = v1;
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[28];
    v6 = OUTLINED_FUNCTION_151();
    v7 = OUTLINED_FUNCTION_83();
    v19 = v7;
    *v6 = 136315138;
    v0[16] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v9 = sub_1DD0DE02C();
    v11 = sub_1DCB10E9C(v9, v10, &v19);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_62();
  }

  v17 = v0[20];
  v18 = sub_1DD0DB04C();
  __swift_storeEnumTagSinglePayload(v17, 4, 4, v18);
  sub_1DCB8BD60(v17);
}

void sub_1DCE9C7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_41();
  a16 = v19;
  v22 = *(v19 + 264);
  v23 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();

  if (os_log_type_enabled(v23, v18))
  {
    v24 = *(v19 + 264);
    v25 = OUTLINED_FUNCTION_151();
    v26 = OUTLINED_FUNCTION_83();
    a9 = v26;
    *v25 = 136315138;
    *(v19 + 136) = v24;
    v27 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v28 = sub_1DD0DE02C();
    v30 = sub_1DCB10E9C(v28, v29, &a9);

    *(v25 + 4) = v30;
    OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v31, v32, "PAC: Could not produce unlock dialog: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
    v33 = *(v19 + 264);
  }

  v34 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_12_53(v34);
}

uint64_t sub_1DCE9C928()
{
  OUTLINED_FUNCTION_42();
  v1[65] = v0;
  v1[63] = v2;
  v1[64] = v3;
  v4 = type metadata accessor for OutputGenerationManifest(0);
  v1[66] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v1[67] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_21_35();
  v1[68] = OUTLINED_FUNCTION_38();
  v5 = sub_1DD0DB04C();
  v1[69] = v5;
  v1[70] = *(v5 - 8);
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCE9CA28()
{
  OUTLINED_FUNCTION_125();
  v13 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  v0[73] = OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);

  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[63];
    v4 = v0[64];
    v6 = OUTLINED_FUNCTION_151();
    v7 = OUTLINED_FUNCTION_83();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DCB10E9C(v5, v4, &v12);
    _os_log_impl(&dword_1DCAFC000, v2, v3, "PAC: Pushing sendUnlockRequest for app: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_37();
  }

  v8 = v0[72];
  v9 = v0[70];
  v10 = v0[69];
  v11 = v0[68];
  sub_1DD0DB03C();
  (*(v9 + 16))(v11, v8, v10);
  __swift_storeEnumTagSinglePayload(v11, 0, 4, v10);
  sub_1DCB8BD60(v11);
}

uint64_t sub_1DCE9CDC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v7 + 608) = v6;
  *(v7 + 616) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DCE9CEE0()
{
  v1 = v0[65];
  v2 = v0[63];
  v9 = v0[64];
  sub_1DCDACAD8();
  v3 = sub_1DCD10120(0xD000000000000038, 0x80000001DD120380);
  v0[78] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4918, &qword_1DD0ED840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E32B0;
  v0[58] = 25705;
  v0[59] = 0xE200000000000000;
  v5 = MEMORY[0x1E69E6158];
  sub_1DD0DEBBC();
  v6 = sub_1DD0DAFFC();
  *(inited + 96) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = v7;
  v0[60] = 7368801;
  v0[61] = 0xE300000000000000;
  sub_1DD0DEBBC();
  *(inited + 168) = v5;
  *(inited + 144) = v2;
  *(inited + 152) = v9;

  v8 = sub_1DD0DDE9C();
  sub_1DCDAD634(v8, v3);
  objc_opt_self();
  __swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
  DeviceState.asInvocationContext.getter();
}

uint64_t sub_1DCE9D4AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 680) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE9D5A4()
{
  OUTLINED_FUNCTION_33();
  __swift_project_boxed_opaque_existential_1((*(v0 + 520) + 152), *(*(v0 + 520) + 176));
  OUTLINED_FUNCTION_12_4();
  v5 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 688) = v2;
  *v2 = v3;
  v2[1] = sub_1DCE9D6B4;
  OUTLINED_FUNCTION_62_1();

  return v5();
}

uint64_t sub_1DCE9D6B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 696) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE9D7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_39_22();

  __swift_destroy_boxed_opaque_existential_1Tm((v13 + 232));
  v19 = OUTLINED_FUNCTION_194();
  v14(v19);
  OUTLINED_FUNCTION_0_90();
  sub_1DCB551D4(v12, v20);
  OUTLINED_FUNCTION_85_8();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_117();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1DCE9D854()
{
  OUTLINED_FUNCTION_39();
  (*(v0[70] + 8))(v0[72], v0[69]);
  OUTLINED_FUNCTION_86_8();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCE9D8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_39_22();

  v18 = OUTLINED_FUNCTION_194();
  v13(v18);
  OUTLINED_FUNCTION_0_90();
  sub_1DCB551D4(v12, v19);
  OUTLINED_FUNCTION_86_8();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_117();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

void sub_1DCE9D988()
{
  v1 = *(v0 + 696);
  v2 = v1;
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 696);
    v32 = *(v0 + 656);
    v26 = *(v0 + 640);
    v27 = *(v0 + 648);
    v6 = *(v0 + 624);
    v7 = *(v0 + 608);
    v28 = *(v0 + 632);
    v29 = *(v0 + 552);
    v30 = *(v0 + 576);
    v31 = *(v0 + 536);
    v8 = OUTLINED_FUNCTION_151();
    v9 = OUTLINED_FUNCTION_83();
    v34 = v9;
    *v8 = 136315138;
    *(v0 + 496) = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v11 = sub_1DD0DE02C();
    v13 = sub_1DCB10E9C(v11, v12, &v34);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "PAC: Error caught while publishing unlock output: %s. Ignoring and continuing with ProtectedAppCheck flow.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));
    v32(v30, v29);
    OUTLINED_FUNCTION_0_90();
    v15 = v31;
  }

  else
  {
    v16 = *(v0 + 696);
    v33 = *(v0 + 656);
    v17 = *(v0 + 648);
    v18 = *(v0 + 640);
    v19 = *(v0 + 632);
    v20 = *(v0 + 608);
    v21 = *(v0 + 576);
    v22 = *(v0 + 552);
    v23 = *(v0 + 536);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));
    v33(v21, v22);
    OUTLINED_FUNCTION_0_90();
    v15 = v23;
  }

  sub_1DCB551D4(v15, v14);
  OUTLINED_FUNCTION_85_8();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_141();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCE9DBE8()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  *(v0 + 96) = v5;
  *(v0 + 64) = v3;
  *(v0 + 72) = v1;
  *(v0 + 56) = v6;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_31_0(v7);

  return sub_1DCB683D8(v4, v2);
}

uint64_t sub_1DCE9DC90()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 88) = v3;
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1DCE9DDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  v13 = *(v12 + 88);
  v14 = *(v12 + 96);
  v15 = *(v12 + 64);
  v16 = *(v12 + 56);
  type metadata accessor for OutputGenerationManifest(0);
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0;
  *(v12 + 16) = 0u;
  v17 = type metadata accessor for AceOutput(0);
  v16[3] = v17;
  v16[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v16);
  sub_1DCB8878C();
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = *(v17 + 32);
  v24 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_2();
  (*(v25 + 104))(boxed_opaque_existential_1Tm + v23, v24);
  boxed_opaque_existential_1Tm[15] = 0;
  *(boxed_opaque_existential_1Tm + 13) = 0u;
  *(boxed_opaque_existential_1Tm + 11) = 0u;
  v26 = v15;
  sub_1DCB6C5E8(v12 + 16, (boxed_opaque_existential_1Tm + 11));
  *(boxed_opaque_existential_1Tm + *(v17 + 40)) = v14 & 1;
  *boxed_opaque_existential_1Tm = v13;
  boxed_opaque_existential_1Tm[1] = v26;
  *(boxed_opaque_existential_1Tm + 80) = 1;
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_117();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

void sub_1DCE9DF34()
{
  v2 = OUTLINED_FUNCTION_21_35();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_16();
  v6 = v5 - v4;
  type metadata accessor for ProtectedAppDeviceUnlockStrategy();
  v7 = swift_allocObject();
  sub_1DCB17CA0(v1 + 112, v11);
  sub_1DCB17CA0(v1 + 152, v10);
  type metadata accessor for UnlockDeviceFlowAsync(0);
  v8 = swift_allocObject();
  sub_1DCEA20B4(v7, v11, v10, v8);
  v9 = sub_1DD0DB04C();
  __swift_storeEnumTagSinglePayload(v6, 2, 4, v9);
  sub_1DCB8BD60(v6);
}

void sub_1DCE9E04C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtectedAppCheck.State(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 8);
  if (v9 == 1)
  {
    v10 = v8;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v11 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v11, qword_1EDE57E00);
    v12 = v8;
    v13 = sub_1DD0DD8EC();
    v14 = sub_1DD0DE6EC();
    sub_1DCB79378(v8, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v8;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1DCAFC000, v13, v14, "PAC: Failed device unlock with error: %@", v15, 0xCu);
      sub_1DCB0E9D8(v16, qword_1ECCA8AD0, &qword_1DD0E4F90);
      MEMORY[0x1E12A8390](v16, -1, -1);
      MEMORY[0x1E12A8390](v15, -1, -1);
      sub_1DCB79378(v8, 1);
    }

    else
    {

      sub_1DCB79378(v8, 1);
    }
  }

  v19 = a2 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_deviceUnlockResult;
  v20 = *(a2 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_deviceUnlockResult);
  *v19 = v8;
  v21 = *(v19 + 8);
  *(v19 + 8) = v9;
  sub_1DCB8D4CC(v8, v9);
  sub_1DCB5524C(v20, v21);
  v22 = sub_1DD0DB04C();
  __swift_storeEnumTagSinglePayload(v7, 1, 4, v22);
  sub_1DCB8BD60(v7);
}

uint64_t sub_1DCE9E284()
{
  OUTLINED_FUNCTION_42();
  v1[16] = v0;
  v2 = type metadata accessor for SiriKitEventPayload(0);
  v1[17] = v2;
  OUTLINED_FUNCTION_20_0(v2);
  v1[18] = OUTLINED_FUNCTION_38();
  v3 = sub_1DD0DB04C();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = OUTLINED_FUNCTION_38();
  v4 = type metadata accessor for OutputGenerationManifest(0);
  v1[22] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v1[23] = OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCE9E378()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[16];
  v2 = v1[7];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v2);
  if ((*(v3 + 24))(v1, v2, v3))
  {
    *(v0[16] + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_appsRemainInaccessible) = 1;
    if (qword_1EDE48CE8 != -1)
    {
      OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
    }

    v4 = OUTLINED_FUNCTION_87();
    v0[24] = v4;
    v5 = OUTLINED_FUNCTION_87();
    v0[25] = v5;
    v6 = swift_task_alloc();
    v0[26] = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_31_0(v6);

    return sub_1DCC6FD30(18, v4, 0, v5);
  }

  else
  {
    OUTLINED_FUNCTION_72_13();

    OUTLINED_FUNCTION_29();

    return v8();
  }
}

uint64_t sub_1DCE9E51C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 216) = v5;
  *(v3 + 224) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCE9E630()
{
  if (qword_1EDE4EBE0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = qword_1EDE4EBE8;
  v4 = unk_1EDE4EBF0;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  *(v1 + v2[9]) = 256;
  v20 = v3;
  *(v1 + v2[11]) = 0;
  v5 = type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = (v1 + v2[14]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + v2[15]);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + v2[16]) = 0;
  *(v1 + v2[18]) = 0;
  OUTLINED_FUNCTION_78_15(v1 + v2[19]);
  *(v1 + v11) = 0;
  *(v1 + v2[21]) = 0;
  *(v1 + v2[22]) = 0;
  *(v1 + v2[23]) = 0;
  *(v1 + v2[24]) = 0;
  *(v1 + v2[25]) = 0;
  v12 = (v1 + v2[26]);
  *v12 = 0;
  v12[1] = 0;
  *(v1 + v2[27]) = 0;
  *(v1 + v2[28]) = MEMORY[0x1E69E7CC0];
  v13 = v2[29];
  v14 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_2();
  (*(v15 + 104))(v1 + v13, v14);
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  *(v1 + v2[31]) = 2;
  *v1 = v20;
  v1[1] = v4;

  sub_1DCB67914();
}

uint64_t sub_1DCE9E948()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCE9EA48()
{
  OUTLINED_FUNCTION_33();
  __swift_project_boxed_opaque_existential_1((*(v0 + 128) + 152), *(*(v0 + 128) + 176));
  OUTLINED_FUNCTION_12_4();
  v5 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 248) = v2;
  *v2 = v3;
  v2[1] = sub_1DCE9EB58;
  OUTLINED_FUNCTION_62_1();

  return v5();
}

uint64_t sub_1DCE9EB58()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE9EC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v11 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v11, qword_1EDE57E00);
  v12 = sub_1DD0DD8EC();
  v13 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v13))
  {
    v14 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v14);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v15, v16, v17, v18, v19, 2u);
    OUTLINED_FUNCTION_62();
  }

  __swift_project_boxed_opaque_existential_1((v10 + 16), *(v10 + 40));
  v20 = OUTLINED_FUNCTION_194();
  if (sub_1DCB651D0(v20))
  {
    if (qword_1EDE4F6A8 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_1EDE4F6A8);
    }

    v21 = *(v10 + 144);
    *(v10 + 112) = 0u;
    *(v10 + 96) = 0u;
    v22 = *(v10 + 48);
    __swift_project_boxed_opaque_existential_1((v10 + 16), *(v10 + 40));
    v23 = OUTLINED_FUNCTION_67_14();
    v24(v23, v22);
    type metadata accessor for SiriKitEvent(0);
    OUTLINED_FUNCTION_34_30(119);
    v21[4] = 0;
    v21[5] = 0;
    v21[3] = 0;
    sub_1DCB8878C();
    v21[10] = 0;
    v21[11] = 0;
    sub_1DCB8878C();
    OUTLINED_FUNCTION_77_10();
    OUTLINED_FUNCTION_84_9(29);
    *(v10 + 264) = SiriKitEvent.__allocating_init(_:builder:)(v21, 0);
    v25 = swift_task_alloc();
    *(v10 + 272) = v25;
    *v25 = v10;
    OUTLINED_FUNCTION_31_0(v25);
    OUTLINED_FUNCTION_121();

    return sub_1DCB649AC(v26);
  }

  else
  {
    v29 = *(v10 + 216);
    OUTLINED_FUNCTION_0_90();
    sub_1DCB551D4(v30, v31);

    __swift_destroy_boxed_opaque_existential_1Tm((v10 + 16));
    OUTLINED_FUNCTION_72_13();

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_121();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
  }
}

uint64_t sub_1DCE9EEC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  sub_1DCB0E9D8(v2 + 56, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB0E9D8(v2 + 96, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCE9EFF0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 184);

  OUTLINED_FUNCTION_0_90();
  sub_1DCB551D4(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_72_13();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE9F078()
{
  OUTLINED_FUNCTION_39();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCE9F104()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 184);

  OUTLINED_FUNCTION_0_90();
  sub_1DCB551D4(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE9F1A0()
{
  OUTLINED_FUNCTION_42();
  v1[12] = v2;
  v1[13] = v0;
  OUTLINED_FUNCTION_21_35();
  v1[14] = OUTLINED_FUNCTION_38();
  v3 = swift_task_alloc();
  v1[15] = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_31_0(v3);

  return sub_1DCB890F8();
}

uint64_t sub_1DCE9F240()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCE9F324()
{
  v114 = v0;
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_statuses;
  OUTLINED_FUNCTION_156(v1 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_statuses, v0 + 56);
  v108 = v1;
  v106 = v2;
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  v107 = v0;
  if (v4)
  {
    v110 = MEMORY[0x1E69E7CC0];

    sub_1DCB38954();
    v5 = v110;
    v6 = (v3 + 49);
    do
    {
      v7 = *(v6 - 9);
      v8 = *(v6 - 1);
      v9 = *v6;
      v111[0] = *(v6 - 17);
      v111[1] = v7;
      v112 = v8;
      v113 = v9;
      v10 = ProtectedAppStatus.debugDescription.getter();
      v12 = v11;
      v14 = *(v110 + 16);
      v13 = *(v110 + 24);
      if (v14 >= v13 >> 1)
      {
        OUTLINED_FUNCTION_21_0(v13);
        sub_1DCB38954();
      }

      v6 += 24;
      *(v110 + 16) = v14 + 1;
      v15 = v110 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      --v4;
    }

    while (v4);
  }

  if (qword_1EDE4F900 != -1)
  {
LABEL_90:
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v16 = sub_1DD0DD8FC();
  *(v0 + 128) = OUTLINED_FUNCTION_92(v16, qword_1EDE57E00);

  v17 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_80_10();

  if (os_log_type_enabled(v17, v4))
  {
    v18 = OUTLINED_FUNCTION_151();
    v19 = OUTLINED_FUNCTION_83();
    v111[0] = v19;
    *v18 = 136315138;
    *(v0 + 88) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
    sub_1DCB38974();
    v20 = sub_1DD0DDF6C();
    v22 = v21;

    sub_1DCB10E9C(v20, v22, v111);
    OUTLINED_FUNCTION_67_14();

    *(v18 + 4) = v20;
    _os_log_impl(&dword_1DCAFC000, v17, v4, "PAC: handleUnlockResponse: statuses=%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
  }

  v5 = *(v108 + v106);
  v4 = *(v5 + 16);

  v23 = 0;
  v109 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v24 = 24 * v23;
LABEL_13:
    if (v4 == v23)
    {
      break;
    }

    if (v23 >= *(v5 + 16))
    {
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v25 = *(v5 + v24 + 32);
    v0 = *(v5 + v24 + 40);
    v26 = *(v5 + v24 + 48);
    v27 = *(v5 + v24 + 49);
    OUTLINED_FUNCTION_38_23();
    v28 = OUTLINED_FUNCTION_7_56();
    switch(v27)
    {
      case 1:
        v28 = OUTLINED_FUNCTION_71_11();
        goto LABEL_20;
      case 2:

        if ((v26 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      case 3:
        v28 = OUTLINED_FUNCTION_18_41();
        goto LABEL_20;
      default:
LABEL_20:
        v29 = OUTLINED_FUNCTION_62_11(v28);

        if (v26 & 1 | ((v29 & 1) == 0))
        {
LABEL_21:

          v24 += 24;
          ++v23;
          goto LABEL_13;
        }

LABEL_22:
        v30 = v109;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v111[0] = v109;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_64_13();
          v32 = OUTLINED_FUNCTION_47_19();
          sub_1DCE06BE8(v32, v33, v34);
          v30 = v111[0];
        }

        v36 = *(v30 + 16);
        v35 = *(v30 + 24);
        if (v36 >= v35 >> 1)
        {
          v38 = OUTLINED_FUNCTION_21_0(v35);
          sub_1DCE06BE8(v38, v36 + 1, 1);
          v30 = v111[0];
        }

        ++v23;
        *(v30 + 16) = v36 + 1;
        v109 = v30;
        v37 = v30 + 24 * v36;
        *(v37 + 32) = v25;
        *(v37 + 40) = v0;
        *(v37 + 48) = 0;
        *(v37 + 49) = v27;
        break;
    }
  }

  v39 = *(v108 + v106);
  v4 = *(v39 + 16);

  v40 = 0;
  v108 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v41 = 24 * v40;
  while (v4 != v40)
  {
    if (v40 >= *(v39 + 16))
    {
      goto LABEL_88;
    }

    v42 = *(v39 + v41 + 32);
    v43 = *(v39 + v41 + 40);
    v44 = *(v39 + v41 + 48);
    v5 = *(v39 + v41 + 49);
    OUTLINED_FUNCTION_38_23();
    v45 = OUTLINED_FUNCTION_7_56();
    switch(v5)
    {
      case 1:

        v5 = 1;
LABEL_40:

        goto LABEL_41;
      case 2:
        v45 = OUTLINED_FUNCTION_49_16();
        break;
      case 3:
        v45 = OUTLINED_FUNCTION_18_41();
        break;
      default:
        break;
    }

    v0 = OUTLINED_FUNCTION_61_17(v45);

    if (v0)
    {
LABEL_41:
      v47 = v108;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v111[0] = v108;
      if ((v48 & 1) == 0)
      {
        OUTLINED_FUNCTION_64_13();
        v49 = OUTLINED_FUNCTION_47_19();
        sub_1DCE06BE8(v49, v50, v51);
        v47 = v111[0];
      }

      v53 = *(v47 + 16);
      v52 = *(v47 + 24);
      v0 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        v55 = OUTLINED_FUNCTION_21_0(v52);
        sub_1DCE06BE8(v55, v53 + 1, 1);
        v47 = v111[0];
      }

      ++v40;
      *(v47 + 16) = v0;
      v108 = v47;
      v54 = v47 + 24 * v53;
      *(v54 + 32) = v42;
      *(v54 + 40) = v43;
      *(v54 + 48) = v44;
      *(v54 + 49) = v5;
      goto LABEL_28;
    }

    switch(v5)
    {
      case 0:
        goto LABEL_40;
      case 1:
      case 3:
        goto LABEL_37;
      case 2:
        OUTLINED_FUNCTION_49_16();
LABEL_37:
        v46 = sub_1DD0DF0AC();

        if (v46)
        {
          goto LABEL_41;
        }

        v41 += 24;
        ++v40;
        break;
      default:
        JUMPOUT(0);
    }
  }

  v56 = *(v109 + 16);
  v57 = MEMORY[0x1E69E7CC0];
  if (v56)
  {
    v111[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_70_10();
    v58 = v111[0];
    v59 = *(v111[0] + 16);
    v60 = 16 * v59;
    v61 = (v109 + 40);
    v62 = v56;
    do
    {
      v64 = *(v61 - 1);
      v63 = *v61;
      v111[0] = v58;
      v65 = *(v58 + 24);

      if (v59 >= v65 >> 1)
      {
        sub_1DCB38954();
        v58 = v111[0];
      }

      *(v58 + 16) = v59 + 1;
      v66 = v58 + v60;
      *(v66 + 32) = v64;
      *(v66 + 40) = v63;
      v60 += 16;
      v61 += 3;
      ++v59;
      --v62;
    }

    while (v62);
    v57 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC0];
  }

  v5 = v107;
  v67 = v107[13];
  v68 = sub_1DCDA58AC(v58);
  sub_1DCB17CA0(v67 + 32, (v107 + 2));
  v70 = v107[5];
  v69 = v107[6];
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  if (v56)
  {
    v105 = v69;
    v106 = v70;
    v111[0] = v57;
    OUTLINED_FUNCTION_70_10();
    v71 = 0;
    v72 = v111[0];
    v73 = *(v111[0] + 16);
    v74 = 16 * v73;
    v75 = v109;
    do
    {
      v76 = *(v75 + v71 + 32);
      v77 = *(v75 + v71 + 40);
      v111[0] = v72;
      v78 = *(v72 + 24);

      if (v73 >= v78 >> 1)
      {
        sub_1DCB38954();
        v72 = v111[0];
      }

      *(v72 + 16) = v73 + 1;
      v79 = v72 + v74;
      *(v79 + 32) = v76;
      *(v79 + 40) = v77;
      v74 += 16;
      v71 += 24;
      ++v73;
      --v56;
      v75 = v109;
    }

    while (v56);

    v70 = v106;
    v5 = v107;
    v69 = v105;
  }

  else
  {

    v72 = MEMORY[0x1E69E7CC0];
  }

  v4 = (*(v69 + 16))(*(v5 + 104), v72, v70, v69);

  __swift_destroy_boxed_opaque_existential_1Tm((v5 + 16));
  v0 = *(v4 + 16);
  if (v0)
  {
    v80 = 0;
    v81 = MEMORY[0x1E69E7CC0];
    while (v80 < *(v4 + 16))
    {
      if (*(v68 + 16))
      {
        v82 = (v4 + 32 + 16 * v80);
        v83 = *v82;
        v5 = v82[1];
        sub_1DD0DF1DC();

        sub_1DD0DDF2C();
        v84 = sub_1DD0DF20C();
        v85 = ~(-1 << *(v68 + 32));
        do
        {
          v86 = v84 & v85;
          if (((*(v68 + 56 + (((v84 & v85) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v84 & v85)) & 1) == 0)
          {

            goto LABEL_77;
          }

          v87 = (*(v68 + 48) + 16 * v86);
          if (*v87 == v83 && v87[1] == v5)
          {
            break;
          }

          v89 = sub_1DD0DF0AC();
          v84 = v86 + 1;
        }

        while ((v89 & 1) == 0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = OUTLINED_FUNCTION_47_19();
          sub_1DCB34108(v93, v94, v95, v81);
          v81 = v96;
        }

        v91 = *(v81 + 16);
        v90 = *(v81 + 24);
        if (v91 >= v90 >> 1)
        {
          v97 = OUTLINED_FUNCTION_21_0(v90);
          sub_1DCB34108(v97, v91 + 1, 1, v81);
          v81 = v98;
        }

        *(v81 + 16) = v91 + 1;
        v92 = v81 + 16 * v91;
        *(v92 + 32) = v83;
        *(v92 + 40) = v5;
      }

LABEL_77:
      if (++v80 == v0)
      {

        v5 = v107;
        goto LABEL_80;
      }
    }

LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v81 = MEMORY[0x1E69E7CC0];
LABEL_80:
  v99 = *(v81 + 16);

  if (!v99)
  {

LABEL_86:
    v103 = *(v5 + 112);
    v104 = sub_1DD0DB04C();
    __swift_storeEnumTagSinglePayload(v103, 4, 4, v104);
    sub_1DCB8BD60(v103);
  }

  v100 = *(v108 + 16);

  if (!v100)
  {
    goto LABEL_86;
  }

  *(*(v5 + 104) + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_appsRemainInaccessible) = 1;
  v101 = swift_task_alloc();
  *(v5 + 136) = v101;
  *v101 = v5;
  v101[1] = sub_1DCE9FD4C;

  return sub_1DCE9E284();
}

uint64_t sub_1DCE9FD4C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCE9FE44()
{
  OUTLINED_FUNCTION_42();
  v0 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_12_53(v0);
}

uint64_t sub_1DCE9FEC0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

void sub_1DCE9FFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_41();
  a16 = v19;
  v22 = *(v19 + 144);
  v23 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();

  if (os_log_type_enabled(v23, v18))
  {
    v24 = *(v19 + 144);
    v25 = OUTLINED_FUNCTION_151();
    v26 = OUTLINED_FUNCTION_83();
    a9 = v26;
    *v25 = 136315138;
    *(v19 + 80) = v24;
    v27 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v28 = sub_1DD0DE02C();
    v30 = sub_1DCB10E9C(v28, v29, &a9);

    *(v25 + 4) = v30;
    OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v31, v32, "PAC: Could not produce unlock dialog: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
    v33 = *(v19 + 144);
  }

  v34 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_12_53(v34);
}

uint64_t sub_1DCEA01EC()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCB88ADC();
}

uint64_t sub_1DCEA027C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCE9B8D0();
  *a1 = result;
  return result;
}

void sub_1DCEA02A8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_1DD0FE998;
  a2[1] = v5;

  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA0314(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return v9(a1, v5, v6);
}

void sub_1DCEA0420(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA0490(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v8 = a4 + *a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1DCB3F98C;

  return (v8)(a1, v4 + 2);
}

uint64_t CustomProtectedAppCheckClient.status.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CustomProtectedAppCheckClient.init(status:)()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v2[2] = 0x6D6F74737543;
  v2[3] = 0xE600000000000000;
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v0;
  *v3 = &unk_1DD0FE548;
  v3[1] = result;
  return result;
}

uint64_t sub_1DCEA068C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  a4(a2, a3);
  v5 = *(v4 + 8);

  return v5();
}

uint64_t CustomProtectedAppCheckClient.status(for:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_4_49();
  v6 = (*v0 + **v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v2[1] = sub_1DCB4AE1C;
  v4 = OUTLINED_FUNCTION_37_0();

  return v6(v4);
}

uint64_t sub_1DCEA0818()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return CustomProtectedAppCheckClient.status(for:)();
}

unint64_t sub_1DCEA08CC()
{
  sub_1DD0DEC1C();

  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 16))(v1, v2);
  MEMORY[0x1E12A6780](v3);

  return 0xD000000000000019;
}

uint64_t sub_1DCEA0980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCEA09A4, 0, 0);
}

uint64_t sub_1DCEA09A4()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[3];
  *(v2 + 8) = v1;
  *(v2 + 16) = 769;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1DCEA0A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCEA0980(a1, a2, a3);
}

uint64_t sub_1DCEA0ADC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCEA0BD8()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[18];
  v4 = [v3 BOOLValue];

  v5 = v0[21];
  v6 = v0[19];
  *v6 = v0[20];
  *(v6 + 8) = v5;
  *(v6 + 17) = 2;
  *(v6 + 16) = v4 ^ 1;

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCEA0C88()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[26];
  v2 = v0[27];
  swift_willThrow();

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v3 = v0[27];
  v4 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
  v5 = v3;
  v6 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();

  v7 = os_log_type_enabled(v6, v2);
  v8 = v0[27];
  v9 = v0[25];
  if (v7)
  {
    v10 = OUTLINED_FUNCTION_151();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v14, v15, "PAC: Error during getIsChallengeCurrentlyRequired: %@");
    sub_1DCB0E9D8(v11, qword_1ECCA8AD0, &qword_1DD0E4F90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
  }

  v16 = v0[21];
  v17 = v0[19];
  *v17 = v0[20];
  *(v17 + 8) = v16;
  *(v17 + 16) = 513;

  OUTLINED_FUNCTION_29();

  return v18();
}

uint64_t *sub_1DCEA0E24(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    return sub_1DCE9B1F4();
  }

  else if (a2)
  {
    return sub_1DCE9B280(*result, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DCEA0E90(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 32) = &type metadata for FeatureFlagDefinitions.Core;
  *(a1 + 40) = &off_1F585CB38;
  *(a1 + 8) = 0;
}

uint64_t sub_1DCEA0EC8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_4_49();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_37_0();

  return v4(v3);
}

unint64_t sub_1DCEA0F7C()
{
  result = qword_1ECCA8AB8;
  if (!qword_1ECCA8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA8AB8);
  }

  return result;
}

uint64_t sub_1DCEA0FD0(uint64_t a1)
{
  result = sub_1DCB8BBF0(&unk_1EDE49270, type metadata accessor for ProtectedAppCheck, &protocol conformance descriptor for ProtectedAppCheck);
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithCopy for ProtectedAppStatus(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t assignWithTake for ProtectedAppStatus(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t getEnumTagSinglePayload for ProtectedAppStatus(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for ProtectedAppStatus(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ProtectedAppStatus.AppState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DCEA12A8(uint64_t a1)
{
  result = type metadata accessor for ProtectedAppCheck.State(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of ProtectedAppCheck.execute()()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v7 = (*(*v0 + 344) + **(*v0 + 344));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AD3C;

  return v7(v2);
}

uint64_t dispatch thunk of ProtectedAppCheckClient.status(for:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v14 = (*(v0 + 8) + **(v0 + 8));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  v11[1] = sub_1DCB4AE1C;

  return v14(v9, v7, v5, v3, v1);
}

uint64_t destroy for CustomProtectedAppCheckClient(uint64_t a1)
{
}

void initializeWithCopy for CustomProtectedAppCheckClient(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  sub_1DD0DCF8C();
}

void assignWithCopy for CustomProtectedAppCheckClient(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  sub_1DD0DCF8C();
}

uint64_t assignWithTake for CustomProtectedAppCheckClient(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for CustomProtectedAppCheckClient(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CustomProtectedAppCheckClient(uint64_t result, int a2, int a3)
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

uint64_t *sub_1DCEA18A0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 - 8);
  v6 = sub_1DD0DB04C();
  if (__swift_getEnumTagSinglePayload(a2, 4, v6))
  {
    v7 = *(v5 + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    __swift_storeEnumTagSinglePayload(a1, 0, 4, v6);
    return a1;
  }
}

uint64_t sub_1DCEA19B4(uint64_t a1)
{
  v2 = sub_1DD0DB04C();
  result = __swift_getEnumTagSinglePayload(a1, 4, v2);
  if (!result)
  {
    v4 = *(*(v2 - 8) + 8);

    return v4(a1, v2);
  }

  return result;
}

void *sub_1DCEA1A3C(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  if (__swift_getEnumTagSinglePayload(a2, 4, v6))
  {
    v7 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    __swift_storeEnumTagSinglePayload(a1, 0, 4, v6);
    return a1;
  }
}

void *sub_1DCEA1B14(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 4, v6);
  v8 = __swift_getEnumTagSinglePayload(a2, 4, v6);
  if (EnumTagSinglePayload)
  {
    if (!v8)
    {
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      __swift_storeEnumTagSinglePayload(a1, 0, 4, v6);
      return a1;
    }
  }

  else
  {
    v9 = *(v6 - 8);
    if (!v8)
    {
      (*(v9 + 24))(a1, a2, v6);
      return a1;
    }

    (*(v9 + 8))(a1, v6);
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_1DCEA1C74(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  if (__swift_getEnumTagSinglePayload(a2, 4, v6))
  {
    v7 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    __swift_storeEnumTagSinglePayload(a1, 0, 4, v6);
    return a1;
  }
}

void *sub_1DCEA1D4C(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 4, v6);
  v8 = __swift_getEnumTagSinglePayload(a2, 4, v6);
  if (EnumTagSinglePayload)
  {
    if (!v8)
    {
      (*(*(v6 - 8) + 32))(a1, a2, v6);
      __swift_storeEnumTagSinglePayload(a1, 0, 4, v6);
      return a1;
    }
  }

  else
  {
    v9 = *(v6 - 8);
    if (!v8)
    {
      (*(v9 + 40))(a1, a2, v6);
      return a1;
    }

    (*(v9 + 8))(a1, v6);
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_1DCEA1ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB04C();

  return __swift_storeEnumTagSinglePayload(a1, a2, 4, v4);
}

uint64_t sub_1DCEA1F20(uint64_t a1)
{
  result = sub_1DD0DB04C();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

void sub_1DCEA1FD8()
{
  OUTLINED_FUNCTION_79_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  v2 = sub_1DD0DE2DC();

  [v1 *v0];
}

void sub_1DCEA205C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setAppBundleId_];
}

uint64_t sub_1DCEA20B4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_1DD0DB04C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v9 + 8))(v12, v8);
  *(a4 + 120) = sub_1DCB598EC(8);
  *(a4 + 128) = v13;
  *(a4 + 136) = v14;
  *(a4 + 144) = v15;
  *(a4 + 32) = sub_1DD01D628(a1);
  sub_1DCB17CA0(a2, a4 + 40);
  sub_1DCB17CA0(a3, a4 + 80);
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v16 = CommandFailure.init(errorCode:reason:)(-1, 0x656C706D6F636E49, 0xEA00000000006574);
  sub_1DCB8BBF0(qword_1EDE49B80, type metadata accessor for CommandFailure, &protocol conformance descriptor for CommandFailure);
  v17 = swift_allocError();
  *v18 = v16;
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(a4 + 16) = v17;
  *(a4 + 24) = 1;
  type metadata accessor for UnlockDeviceFlowAsync.State(0);
  swift_storeEnumTagMultiPayload();
  return a4;
}

uint64_t sub_1DCEA22BC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_4_49();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_37_0();

  return v4(v3);
}

uint64_t sub_1DCEA236C()
{
  OUTLINED_FUNCTION_33();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_62_1();

  return v3();
}

void sub_1DCEA24A0(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000002ELL;
  *(a1 + 8) = 0x80000001DD120550;
  *(a1 + 16) = 1;
}

void ProtoJsonCoding.makeSlotDescriptionForEncoding(parameterName:intentSlotDescription:selectionItem:typeNamesByValueType:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v54 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v52 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v20 = sub_1DD0DDE9C();
  if (a4 && (v21 = [a4 value]) != 0)
  {
    v22 = v21;
    v23 = [v21 type];
  }

  else
  {
    v23 = sub_1DCEA2D78([a3 valueType]);
  }

  v53 = v18;
  switch(v23)
  {
    case 1:
      v24 = @"String";
      goto LABEL_50;
    case 2:
      v24 = @"Double";
      goto LABEL_50;
    case 3:
      v24 = @"Integer";
      goto LABEL_50;
    case 4:
      v24 = @"Contact";
      goto LABEL_50;
    case 5:
      v24 = @"DateTimeRange";
      goto LABEL_50;
    case 6:
      v24 = @"Location";
      goto LABEL_50;
    case 7:
      v24 = @"DataString";
      goto LABEL_50;
    case 8:
      v24 = @"Long";
      goto LABEL_50;
    case 9:
      v24 = @"PaymentMethod";
      goto LABEL_50;
    case 10:
      v24 = @"Temperature";
      goto LABEL_50;
    case 11:
      v24 = @"Distance";
      goto LABEL_50;
    case 12:
      v24 = @"FinancialAccount";
      goto LABEL_50;
    case 13:
      v24 = @"BillType";
      goto LABEL_50;
    case 14:
      v24 = @"Mass";
      goto LABEL_50;
    case 15:
      v24 = @"Volume";
      goto LABEL_50;
    case 16:
      v24 = @"Speed";
      goto LABEL_50;
    case 17:
      v24 = @"Energy";
      goto LABEL_50;
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
LABEL_11:
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v23];
      goto LABEL_51;
    case 50:
      v24 = @"StringList";
      goto LABEL_50;
    case 51:
      v24 = @"DoubleList";
      goto LABEL_50;
    case 52:
      v24 = @"IntegerList";
      goto LABEL_50;
    case 53:
      v24 = @"ContactList";
      goto LABEL_50;
    case 54:
      v24 = @"DateTimeRangeList";
      goto LABEL_50;
    case 55:
      v24 = @"LocationList";
      goto LABEL_50;
    case 56:
      v24 = @"DataStringList";
      goto LABEL_50;
    case 57:
      v24 = @"LongList";
      goto LABEL_50;
    case 58:
      v24 = @"PaymentMethodList";
      goto LABEL_50;
    case 59:
      v24 = @"TemperatureList";
      goto LABEL_50;
    case 60:
      v24 = @"DistanceList";
      goto LABEL_50;
    default:
      switch(v23)
      {
        case 'd':
          v24 = @"PrimitiveBool";
          break;
        case 'e':
          v24 = @"PrimitiveInt";
          break;
        case 'f':
          v24 = @"PrimitiveLong";
          break;
        case 'g':
          v24 = @"PrimitiveDouble";
          break;
        case 'h':
          v24 = @"PrimitiveString";
          break;
        case 'i':
          v24 = @"DateTime";
          break;
        case 'j':
          goto LABEL_11;
        case 'k':
          v24 = @"Intent";
          break;
        case 'l':
          v24 = @"ModifyRelationship";
          break;
        case 'm':
          v24 = @"ModifyNickname";
          break;
        case 'n':
          v24 = @"CalendarEvent";
          break;
        case 'o':
          v24 = @"EventParticipant";
          break;
        case 'p':
          v24 = @"EventAttribute";
          break;
        default:
          if (v23 != 1000)
          {
            goto LABEL_11;
          }

          v24 = @"Extension";
          break;
      }

LABEL_50:
      v25 = v24;
LABEL_51:
      v26 = v24;
      v27 = sub_1DD0DDFBC();
      v29 = v28;

      swift_isUniquelyReferenced_nonNull_native();
      v56 = v20;
      sub_1DCC5FCB4(v27, v29, 0x70795465756C6176, 0xE900000000000065);
      v30 = v56;
      if (v23 == 1000)
      {
        v31 = sub_1DCC17E1C([a3 valueType], a5);
        if (!v32)
        {
          v56 = 0;
          v57 = 0xE000000000000000;
          sub_1DD0DEC1C();
          MEMORY[0x1E12A6780](0xD000000000000030, 0x80000001DD1205B0);
          MEMORY[0x1E12A6780](a1, a2);
          MEMORY[0x1E12A6780](0xD000000000000020, 0x80000001DD1205F0);
          v55 = [a3 valueType];
          v35 = sub_1DD0DF03C();
          MEMORY[0x1E12A6780](v35);

          MEMORY[0x1E12A6780](0xD000000000000048, 0x80000001DD120620);
          v36 = v56;
          v37 = v57;
          v38 = qword_1EDE4F900;

          if (v38 != -1)
          {
            swift_once();
          }

          v39 = sub_1DD0DD8FC();
          v40 = __swift_project_value_buffer(v39, qword_1EDE57E00);
          v41 = *(v39 - 8);
          v42 = v53;
          (*(v41 + 16))(v53, v40, v39);
          __swift_storeEnumTagSinglePayload(v42, 0, 1, v39);
          v43 = v42;
          v44 = v54;
          sub_1DCBCF6C8(v43, v54);
          if (__swift_getEnumTagSinglePayload(v44, 1, v39) == 1)
          {
            sub_1DCBCF738(v54);
          }

          else
          {

            v45 = sub_1DD0DD8EC();
            v46 = sub_1DD0DE6EC();

            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v48 = swift_slowAlloc();
              v55 = v48;
              *v47 = 136315650;
              v49 = sub_1DD0DEC3C();
              v51 = sub_1DCB10E9C(v49, v50, &v55);

              *(v47 + 4) = v51;
              *(v47 + 12) = 2048;
              *(v47 + 14) = 28;
              *(v47 + 22) = 2080;
              *(v47 + 24) = sub_1DCB10E9C(v36, v37, &v55);
              _os_log_impl(&dword_1DCAFC000, v45, v46, "FatalError at %s:%lu - %s", v47, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1E12A8390](v48, -1, -1);
              MEMORY[0x1E12A8390](v47, -1, -1);
            }

            (*(v41 + 8))(v54, v39);
          }

          static SiriKitLifecycle._logCrashToEventBus(_:)(v36, v37);
        }

        v33 = v31;
        v34 = v32;
        swift_isUniquelyReferenced_nonNull_native();
        v56 = v30;
        sub_1DCC5FCB4(v33, v34, 0xD000000000000021, 0x80000001DD1206F0);
        v30 = v56;
      }

      sub_1DCDAC354(v30);
  }
}

uint64_t sub_1DCEA2D78(uint64_t a1)
{
  v1 = a1 - 10;
  result = 1;
  switch(v1)
  {
    case 0:
      result = 4;
      break;
    case 2:
      result = 7;
      break;
    case 4:
      result = 105;
      break;
    case 6:
      result = 5;
      break;
    case 11:
      result = 2;
      break;
    case 14:
      result = 3;
      break;
    case 16:
      result = 8;
      break;
    case 17:
      result = 6;
      break;
    case 20:
      return result;
    case 22:
      result = 10;
      break;
    default:
      result = 1000;
      break;
  }

  return result;
}

uint64_t ProtoJsonCoding.makeIntentForEncoding(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 backingStore];
  v7 = [a1 typeName];
  v8 = sub_1DD0DDFBC();
  v10 = v9;

  (*(a3 + 8))(v6, v8, v10, a2, a3);
}

void ProtoJsonCoding.makeIntentResponseForEncoding(_:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v7 = a1;
  v8 = [v7 _payloadResponseMessageData];
  if (!v8)
  {

LABEL_8:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  v9 = v8;
  v10 = sub_1DD0DAF2C();
  v12 = v11;

  v13 = [v7 _payloadResponseTypeName];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1DD0DDFBC();
    v17 = v16;

    (*(a3 + 16))(v20, v10, v12, v15, v17, a2, a3);
    sub_1DCB21A14(v10, v12);

    v18 = v21;
    v19 = v20[1];
    if (!v21)
    {
      v19 = 0;
    }

    *a4 = v20[0];
    *(a4 + 8) = v19;
    *(a4 + 16) = v18;
  }

  else
  {
    __break(1u);
  }
}

uint64_t ProtoJsonCoding.toJsonDictionary(pbObject:typeName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v37 - v16;
  v18 = [a1 data];
  if (!v18)
  {
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1DD0DEC1C();

    v39 = 0xD000000000000028;
    v40 = 0x80000001DD120930;
    MEMORY[0x1E12A6780](a2, a3);
    v24 = v39;
    v25 = v40;
    v26 = qword_1EDE4F900;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_1DD0DD8FC();
    v28 = __swift_project_value_buffer(v27, qword_1EDE57E00);
    v29 = *(v27 - 8);
    (*(v29 + 16))(v17, v28, v27);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v27);
    sub_1DCBCF6C8(v17, v14);
    if (__swift_getEnumTagSinglePayload(v14, 1, v27) == 1)
    {
      sub_1DCBCF738(v14);
    }

    else
    {

      v30 = sub_1DD0DD8EC();
      v31 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = v37;
        *v32 = 136315650;
        v33 = sub_1DD0DEC3C();
        v35 = sub_1DCB10E9C(v33, v34, &v38);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2048;
        *(v32 + 14) = 62;
        *(v32 + 22) = 2080;
        *(v32 + 24) = sub_1DCB10E9C(v24, v25, &v38);
        _os_log_impl(&dword_1DCAFC000, v30, v31, "FatalError at %s:%lu - %s", v32, 0x20u);
        v36 = v37;
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v36, -1, -1);
        MEMORY[0x1E12A8390](v32, -1, -1);
      }

      (*(v29 + 8))(v14, v27);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(v24, v25);
  }

  v19 = v18;
  v20 = sub_1DD0DAF2C();
  v22 = v21;

  (*(a5 + 16))(v20, v22, a2, a3, a4, a5);

  return sub_1DCB21A14(v20, v22);
}

void ReactiveFlowPlan.pushIfNil<A>(flowProducer:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v6);
  v20[0] = a1;
  v20[1] = a2;
  v18 = type metadata accessor for OptionalFlowMappingModifier(0, a3, a4, a5);
  v19 = OUTLINED_FUNCTION_1_96(v18);
  sub_1DCDDC1D8(v16, v20, a3, v6, v19, a6);
  sub_1DD0DCF8C();
}

void sub_1DCEA35D4()
{
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v0, v1);
  (*(v3 + 16))(&v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DCEA36B4();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA36B4()
{
  OUTLINED_FUNCTION_3_10();
  (*(*(v6 - 8) + 32))(v5);
  result = type metadata accessor for OptionalFlowMappingPlan(0, v2, v1, v0);
  v8 = (v5 + *(result + 44));
  *v8 = v4;
  v8[1] = v3;
  return result;
}

uint64_t sub_1DCEA3760(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1DCEA37FC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  if ((*(v5 + 80) & 0x1000F8) != 0 || ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    *a1 = *a2;
  }

  else
  {
    (*(v5 + 16))(a1, a2);
    v8 = ((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    v9 = v8[1];
    v10 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v8;
    v10[1] = v9;
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA38F4(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

void sub_1DCEA3964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  sub_1DD0DCF8C();
}

void sub_1DCEA39E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA3A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_1DCEA3AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1DCEA3B70(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DCEA3CAC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCEA3E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = type metadata accessor for OptionalFlowMappingPlan(0, a2, a3, a4);
  OUTLINED_FUNCTION_0_1();
  v53 = v8;
  v54 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v52 = &v42 - v12;
  v48 = a3;
  v13 = sub_1DD0DE97C();
  type metadata accessor for _FlowPlanEvent(255, v13, v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v16 = sub_1DD0DDAEC();
  type metadata accessor for _FlowPlanEvent(255, a3, v17, v18);
  v19 = sub_1DD0DDAEC();
  v50 = v16;
  WitnessTable = swift_getWitnessTable();
  v42 = v19;
  v20 = sub_1DD0DDA9C();
  OUTLINED_FUNCTION_0_1();
  v51 = v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v46 = &v42 - v24;
  v25 = swift_getWitnessTable();
  v45 = v25;
  v44 = swift_getWitnessTable();
  v56 = v19;
  v57 = v20;
  v58 = v25;
  v59 = v44;
  v26 = sub_1DD0DDA7C();
  OUTLINED_FUNCTION_0_1();
  v47 = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v42 - v30;
  v32 = a2;
  v43 = (*(a4 + 48))(a1, a2, a4);
  v56 = v43;
  v34 = v52;
  v33 = v53;
  v35 = v55;
  (*(v53 + 16))(v52, a1, v55);
  v36 = (*(v33 + 80) + 40) & ~*(v33 + 80);
  v37 = swift_allocObject();
  v38 = v48;
  *(v37 + 2) = v32;
  *(v37 + 3) = v38;
  *(v37 + 4) = a4;
  (*(v33 + 32))(&v37[v36], v34, v35);
  v39 = v46;
  sub_1DD0DDC3C();

  MEMORY[0x1E12A6240](v20, v44, v45);
  (*(v51 + 8))(v39, v20);
  swift_getWitnessTable();
  v40 = sub_1DD0DDBFC();

  (*(v47 + 8))(v31, v26);
  return v40;
}

uint64_t sub_1DCEA427C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v117 = a2;
  v124 = a6;
  v125 = a1;
  v120 = a3;
  v121 = a5;
  v7 = type metadata accessor for OptionalFlowMappingPlan(0, a3, a4, a5);
  v118 = *(v7 - 8);
  v119 = v7;
  v115 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v116 = &v93 - v9;
  v122 = sub_1DD0DE97C();
  v12 = type metadata accessor for _FlowPlanEvent(255, v122, v10, v11);
  v13 = sub_1DD0DDBAC();
  v110 = *(v13 - 8);
  v111 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v109 = &v93 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v17 = sub_1DD0DF21C();
  v113 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v112 = &v93 - v19;
  v22 = type metadata accessor for _FlowPlanEvent(255, a4, v20, v21);
  v23 = sub_1DD0DF21C();
  v123 = v16;
  v24 = sub_1DD0DDB2C();
  WitnessTable = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v126 = v23;
  v127 = v24;
  v101 = WitnessTable;
  v128 = WitnessTable;
  v129 = v26;
  v27 = sub_1DD0DDABC();
  v28 = swift_getWitnessTable();
  v114 = v17;
  v108 = v28;
  v29 = sub_1DD0DDA9C();
  v30 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v126 = v27;
  v127 = v29;
  v128 = v30;
  v129 = v31;
  v107 = sub_1DD0DDA7C();
  v106 = *(v107 - 8);
  v33 = MEMORY[0x1EEE9AC00](v107, v32);
  v105 = &v93 - v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v97 = &v93 - v36;
  v102 = v22;
  v100 = sub_1DD0DDBAC();
  v99 = *(v100 - 8);
  v38 = MEMORY[0x1EEE9AC00](v100, v37);
  v96 = &v93 - v39;
  v103 = v23;
  v98 = *(v23 - 8);
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v94 = &v93 - v42;
  v95 = *(a4 - 8);
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v93 = &v93 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v12 - 8);
  v48 = MEMORY[0x1EEE9AC00](v44, v47);
  v50 = &v93 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v48, v51);
  v54 = &v93 - v53;
  v55 = v122;
  v56 = *(v122 - 8);
  v58 = MEMORY[0x1EEE9AC00](v52, v57);
  v60 = &v93 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58, v61);
  v63 = &v93 - v62;
  v104 = *(v46 + 16);
  v104(v54, v125, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v46 + 8))(v54, v12);
    v64 = v55;
LABEL_5:
    if (qword_1ECCA13A8 != -1)
    {
      swift_once();
    }

    v66 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v66, qword_1ECCD2748);
    v67 = sub_1DD0DD8EC();
    v68 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = v64;
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_1DCAFC000, v67, v68, "#OptionalFlowMappingPlan: upstream value is nil, interrupting for a resolution", v70, 2u);
      v71 = v70;
      v64 = v69;
      MEMORY[0x1E12A8390](v71, -1, -1);
    }

    v104(v50, v125, v12);
    v72 = v109;
    sub_1DD0DDBBC();
    v73 = v111;
    sub_1DD0DDB9C();
    (*(v110 + 8))(v72, v73);
    v74 = v118;
    v75 = v116;
    v76 = v119;
    (*(v118 + 16))(v116, v117, v119);
    v77 = (*(v74 + 80) + 40) & ~*(v74 + 80);
    v78 = swift_allocObject();
    v79 = v121;
    *(v78 + 2) = v120;
    *(v78 + 3) = a4;
    *(v78 + 4) = v79;
    (*(v74 + 32))(&v78[v77], v75, v76);
    sub_1DCDAA7E8(sub_1DCEA4FC4, v78, v114, v64, a4, v108);
  }

  (*(v56 + 32))(v63, v54, v55);
  (*(v56 + 16))(v60, v63, v55);
  v64 = v55;
  if (__swift_getEnumTagSinglePayload(v60, 1, a4) == 1)
  {
    v65 = *(v56 + 8);
    v65(v63, v55);
    v65(v60, v55);
    goto LABEL_5;
  }

  v80 = v95;
  v81 = v93;
  (*(v95 + 32))(v93, v60, a4);
  if (qword_1ECCA13A8 != -1)
  {
    swift_once();
  }

  v82 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v82, qword_1ECCD2748);
  v83 = sub_1DD0DD8EC();
  v84 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&dword_1DCAFC000, v83, v84, "#OptionalFlowMappingPlan: upstream value not nil, sending completed message", v85, 2u);
    v86 = v85;
    v64 = v55;
    MEMORY[0x1E12A8390](v86, -1, -1);
  }

  (*(v80 + 16))(v97, v81, a4);
  swift_storeEnumTagMultiPayload();
  v87 = v96;
  sub_1DD0DDBBC();
  v88 = v94;
  v89 = v100;
  sub_1DD0DDB9C();
  (*(v99 + 8))(v87, v89);
  v90 = v103;
  v91 = sub_1DD0DDBFC();
  (*(v98 + 8))(v88, v90);
  (*(v80 + 8))(v81, a4);
  result = (*(v56 + 8))(v63, v64);
  *v124 = v91;
  return result;
}

unint64_t sub_1DCEA4ED0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter(a1, WitnessTable);
}

uint64_t sub_1DCEA4F24(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEA4F60()
{
  OUTLINED_FUNCTION_4_88();
  v0 = OUTLINED_FUNCTION_2_81();

  return sub_1DCEA427C(v0, v1, v2, v3, v4, v5);
}

uint64_t sub_1DCEA4FC4()
{
  OUTLINED_FUNCTION_4_88();
  v0 = OUTLINED_FUNCTION_2_81();

  return sub_1DCEA4E68(v0, v1, v2, v3, v4);
}

void ReactiveFlowPlan.push<A>(flowProducer:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15, v6);
  v21[0] = a1;
  v21[1] = a2;
  v19 = type metadata accessor for FlowMappingModifier(0, a3, a5, a6);
  OUTLINED_FUNCTION_0_91();
  WitnessTable = swift_getWitnessTable();
  sub_1DCDDC1D8(v17, v21, a3, v19, WitnessTable, a4);
  sub_1DD0DCF8C();
}

void ReactiveFlowPlan.push<A>(flowProducer:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  (*(v17 + 16))(v15 - v14, v18);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a1;
  v19[6] = a2;
  v22[0] = sub_1DCEA5374;
  v22[1] = v19;
  v20 = type metadata accessor for FlowMappingModifier(0, a3, a4, a5);
  OUTLINED_FUNCTION_0_91();
  WitnessTable = swift_getWitnessTable();
  sub_1DCDDC1D8(v16, v22, a3, v20, WitnessTable, a6);
  sub_1DD0DCF8C();
}

uint64_t *sub_1DCEA5284@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X4>, uint64_t **a4@<X8>, uint64_t a5@<X2>, uint64_t a6@<X3>)
{
  v9 = type metadata accessor for ResultUpcastingFlow(0, a3, a5, a6);
  a2(v12, a1);
  v10 = sub_1DCEA5320(v12);
  a4[3] = v9;
  result = swift_getWitnessTable();
  a4[4] = result;
  *a4 = v10;
  return result;
}

uint64_t sub_1DCEA5384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ResultUpcastingFlow.State(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1DCEA5418()
{
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v0, v1);
  OUTLINED_FUNCTION_16();
  (*(v4 + 16))(v3 - v2);
  sub_1DCEA54F0();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA54F0()
{
  OUTLINED_FUNCTION_3_10();
  (*(*(v6 - 8) + 32))(v5);
  result = type metadata accessor for FlowMappingPlan(0, v2, v1, v0);
  v8 = (v5 + *(result + 44));
  *v8 = v4;
  v8[1] = v3;
  return result;
}

void sub_1DCEA5584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _FlowPlanEvent(255, a3, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_2_4();
  sub_1DD0DF21C();
  OUTLINED_FUNCTION_2_4();
  sub_1DD0DDB2C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DD0DDABC();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, AssociatedTypeWitness, v7, v8);
  v9 = sub_1DD0DDAEC();
  WitnessTable = swift_getWitnessTable();
  sub_1DD0DDA9C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DD0DDA7C();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v10, v11);
  swift_getWitnessTable();
  sub_1DD0DDA5C();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v12, v13);
  (*(a4 + 48))(a1, a2, a4);
  v14 = type metadata accessor for FlowMappingPlan(0, a2, a3, a4);
  sub_1DCDAA7E8(*(a1 + *(v14 + 44)), *(a1 + *(v14 + 44) + 8), v9, AssociatedTypeWitness, a3, WitnessTable);
}

unint64_t sub_1DCEA59F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter(a1, WitnessTable);
}

uint64_t *sub_1DCEA5A44(__int128 *a1)
{
  v2 = *v1;
  sub_1DCAFF9E8(a1, v1 + *(*v1 + 88));
  type metadata accessor for ResultUpcastingFlow.State(0, *(v2 + 80), v3, v4);
  swift_storeEnumTagMultiPayload();
  return v1;
}

uint64_t sub_1DCEA5AB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = *v1;
  v4 = *(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v5 = sub_1DD0DF22C();
  v32[0] = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = v32 - v8;
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v7, v11);
  v13 = v32 - v12;
  v16 = type metadata accessor for ResultUpcastingFlow.State(0, v4, v14, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = (v32 - v19);
  v21 = *(v3 + 88);
  swift_beginAccess();
  (*(v17 + 16))(v20, &v2[v21], v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1DCAFF9E8(v20, v36);
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    v34 = type metadata accessor for LifeCycleModifierFlow(0, v4, v30, v31);
    WitnessTable = swift_getWitnessTable();
    sub_1DD0DCF8C();
  }

  (*(v10 + 32))(v13, v20, v4);
  (*(v10 + 16))(v9, v13, v4);
  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for Conclude(0, v5, v22, v23);
  v25 = v33;
  v33[3] = v24;
  v25[4] = &protocol witness table for Conclude<A>;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v25);
  type metadata accessor for ResultUpcastingFlow(0, v4, v27, v28);
  swift_getWitnessTable();
  ActingFlow.conclude(with:)(v9, boxed_opaque_existential_1Tm);
  (*(v32[0] + 8))(v9, v5);
  return (*(v10 + 8))(v13, v4);
}

uint64_t sub_1DCEA5F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*a2 + 80);
  v7 = type metadata accessor for ResultUpcastingFlow.State(0, v6, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v14 - v10;
  (*(*(v6 - 8) + 16))(&v14 - v10, a1, v6);
  swift_storeEnumTagMultiPayload();
  v12 = *(*a2 + 88);
  swift_beginAccess();
  (*(v8 + 40))(a2 + v12, v11, v7);
  return swift_endAccess();
}

uint64_t sub_1DCEA60A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 88);
  v6 = type metadata accessor for ResultUpcastingFlow.State(0, *(*v4 + 80), a3, a4);
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  return v4;
}

uint64_t sub_1DCEA612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DCEA60A8(a1, a2, a3, a4);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCEA61B0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_1DCEA6248(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 0x28)
  {
    v2 = 40;
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    switch(v5)
    {
      case 1:
        v6 = *a1;
        goto LABEL_12;
      case 2:
        v6 = *a1;
        goto LABEL_12;
      case 3:
        v6 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v6 = *a1;
LABEL_12:
        v7 = (v6 | (v4 << (8 * v2))) + 2;
        v3 = v6 + 2;
        if (v2 < 4)
        {
          v3 = v7;
        }

        break;
      default:
        break;
    }
  }

  if (v3 == 1)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  else
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t sub_1DCEA6330(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x28uLL)
  {
    v4 = 40;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        v5 = v8 + 2;
        if (v4 < 4)
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1);
    v10 = 1;
  }

  else
  {
    v11 = *(a2 + 24);
    *(a1 + 24) = v11;
    (**(v11 - 8))(a1);
    v10 = 0;
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *sub_1DCEA6484(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 0x28uLL)
    {
      v7 = 40;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      switch(v10)
      {
        case 1:
          v11 = *a1;
          goto LABEL_14;
        case 2:
          v11 = *a1;
          goto LABEL_14;
        case 3:
          v11 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v11 = *a1;
LABEL_14:
          v12 = (v11 | (v9 << (8 * v7))) + 2;
          v8 = v11 + 2;
          if (v7 < 4)
          {
            v8 = v12;
          }

          break;
        default:
          break;
      }
    }

    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a2;
          goto LABEL_28;
        case 2:
          v16 = *a2;
          goto LABEL_28;
        case 3:
          v16 = *a2 | (a2[2] << 16);
          goto LABEL_28;
        case 4:
          v16 = *a2;
LABEL_28:
          v17 = (v16 | (v14 << (8 * v7))) + 2;
          v13 = v16 + 2;
          if (v7 < 4)
          {
            v13 = v17;
          }

          break;
        default:
          break;
      }
    }

    if (v13 == 1)
    {
      (*(v6 + 16))(a1, a2, v5);
      v18 = 1;
    }

    else
    {
      v19 = *(a2 + 3);
      *(a1 + 3) = v19;
      *(a1 + 4) = *(a2 + 4);
      (**(v19 - 8))(a1, a2);
      v18 = 0;
    }

    a1[v7] = v18;
  }

  return a1;
}

uint64_t sub_1DCEA66AC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x28uLL)
  {
    v4 = 40;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        v5 = v8 + 2;
        if (v4 < 4)
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    (*(*(*(a3 + 16) - 8) + 32))(a1);
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v11 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v11;
    *(a1 + 32) = *(a2 + 4);
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *sub_1DCEA67D8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 0x28uLL)
    {
      v7 = 40;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      switch(v10)
      {
        case 1:
          v11 = *a1;
          goto LABEL_14;
        case 2:
          v11 = *a1;
          goto LABEL_14;
        case 3:
          v11 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v11 = *a1;
LABEL_14:
          v12 = (v11 | (v9 << (8 * v7))) + 2;
          v8 = v11 + 2;
          if (v7 < 4)
          {
            v8 = v12;
          }

          break;
        default:
          break;
      }
    }

    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a2;
          goto LABEL_28;
        case 2:
          v16 = *a2;
          goto LABEL_28;
        case 3:
          v16 = *a2 | (a2[2] << 16);
          goto LABEL_28;
        case 4:
          v16 = *a2;
LABEL_28:
          v17 = (v16 | (v14 << (8 * v7))) + 2;
          v13 = v16 + 2;
          if (v7 < 4)
          {
            v13 = v17;
          }

          break;
        default:
          break;
      }
    }

    if (v13 == 1)
    {
      (*(v6 + 32))(a1, a2, v5);
      v18 = 1;
    }

    else
    {
      v18 = 0;
      v19 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v19;
      *(a1 + 4) = *(a2 + 4);
    }

    a1[v7] = v18;
  }

  return a1;
}

uint64_t sub_1DCEA69D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 40;
  if (*(v3 + 64) > 0x28uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1DCEA6AF4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x28)
  {
    v5 = 40;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1DCEA6CB8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 40;
  if (*(v2 + 64) > 0x28uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    switch(v6)
    {
      case 1:
        v7 = *a1;
        goto LABEL_12;
      case 2:
        v7 = *a1;
        goto LABEL_12;
      case 3:
        v7 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v7 = *a1;
LABEL_12:
        v8 = (v7 | (v5 << (8 * v3))) + 2;
        LODWORD(v4) = v7 + 2;
        if (v3 >= 4)
        {
          v4 = v4;
        }

        else
        {
          v4 = v8;
        }

        break;
      default:
        return v4;
    }
  }

  return v4;
}

uint64_t sub_1DCEA6DEC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DCEA6F28(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCEA70F8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void ReactiveFlowPlan.pushOnError(flowProducer:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_5_3();
  (*(v13 + 16))(v5, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v19[0] = sub_1DCEA7300;
  v19[1] = v15;
  v17 = type metadata accessor for ErrorReportingFlowModifier(0, a3, a5, v16);
  OUTLINED_FUNCTION_0_92();
  WitnessTable = swift_getWitnessTable();
  sub_1DCDDC1D8(v5, v19, a3, v17, WitnessTable, a4);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA725C@<X0>(void (*a1)(void *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  a1(v8);
  v7 = v9;
  v3 = v9;
  v4 = __swift_project_boxed_opaque_existential_1(v8, v9);
  *(a2 + 24) = v7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1Tm, v4, v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

void sub_1DCEA7364()
{
  OUTLINED_FUNCTION_3_96();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_5_3();
  (*(v3 + 16))(v0);
  sub_1DCEA7428();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA7428()
{
  OUTLINED_FUNCTION_3_96();
  (*(*(v5 - 8) + 32))(v4);
  result = type metadata accessor for ErrorReportingFlowPlan(0, v1, v0, v6);
  v8 = (v4 + *(result + 36));
  *v8 = v3;
  v8[1] = v2;
  return result;
}

uint64_t sub_1DCEA74CC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1DCEA7568(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DCEA76A4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1DCEA7874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, AssociatedTypeWitness, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_2_82();
  sub_1DD0DF21C();
  OUTLINED_FUNCTION_2_82();
  sub_1DD0DDAEC();
  OUTLINED_FUNCTION_2_82();
  sub_1DD0DDB2C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_83();
  sub_1DD0DDABC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_83();
  sub_1DD0DDAAC();
  OUTLINED_FUNCTION_5_83();
  sub_1DD0DDA9C();
  OUTLINED_FUNCTION_5_83();
  sub_1DD0DDA7C();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_5_83();
  sub_1DD0DDA5C();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v10, v11);
  (*(a3 + 48))(a1, a2, a3);
  v13 = (a1 + *(type metadata accessor for ErrorReportingFlowPlan(0, a2, a3, v12) + 36));
  v15 = *v13;
  v14 = v13[1];
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  sub_1DD0DCF8C();
}

unint64_t sub_1DCEA7CCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter(a1, WitnessTable);
}

uint64_t sub_1DCEA7D20(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t RawDucTemplatingParameter.conceptType.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

__n128 RawDucTemplatingParameter.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 48) = 0x65756C6156776152;
  *(v2 + 56) = 0xE800000000000000;
  result = *a1;
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  return result;
}

uint64_t RawDucTemplatingParameter.init(_:)(_OWORD *a1)
{
  *(v1 + 48) = 0x65756C6156776152;
  *(v1 + 56) = 0xE800000000000000;
  v2 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  return v1;
}

uint64_t RawDucTemplatingParameter.deinit()
{
  sub_1DCC8BC14(v0 + 16);

  return v0;
}

uint64_t RawDucTemplatingParameter.__deallocating_deinit()
{
  sub_1DCC8BC14(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCEA7F3C()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1DD0DD2DC();
  v0[4] = v3;
  OUTLINED_FUNCTION_99(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCEA7FE0()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E69CE230])
  {
    v5 = v0[6];
    (*(v0[5] + 96))(v5, v0[4]);
    v0[11] = *v5;
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v0[12] = v6;
    *v6 = v7;
    v6[1] = sub_1DCEA84A4;
    OUTLINED_FUNCTION_45_15();

    return sub_1DCEA99C0();
  }

  else if (v4 == *MEMORY[0x1E69CE238])
  {
    v9 = OUTLINED_FUNCTION_60_10();
    v10(v9);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v0[7] = v11;
    *v11 = v12;
    v11[1] = sub_1DCEA825C;
    OUTLINED_FUNCTION_45_15();

    return sub_1DCEA953C();
  }

  else if (v4 == *MEMORY[0x1E69CE228])
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v0[9] = v13;
    *v13 = v14;
    v13[1] = sub_1DCEA83AC;
    OUTLINED_FUNCTION_45_15();
    OUTLINED_FUNCTION_24();

    return sub_1DCEA88E4();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v0[14] = v15;
    *v15 = v16;
    v15[1] = sub_1DCEA85FC;
    OUTLINED_FUNCTION_45_15();

    return sub_1DCCDC444();
  }
}

uint64_t sub_1DCEA825C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCEA8354()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1DCEA83AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCEA84A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCEA859C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1DCEA85FC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCEA86F4()
{
  OUTLINED_FUNCTION_42();
  v0 = OUTLINED_FUNCTION_60_10();
  v1(v0);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1DCEA875C()
{
  OUTLINED_FUNCTION_42();
  v0 = OUTLINED_FUNCTION_60_10();
  v1(v0);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCEA87C8()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCEA8824()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCEA8880()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCEA88E4()
{
  OUTLINED_FUNCTION_42();
  v0[116] = v1;
  v0[115] = v2;
  v0[114] = v3;
  v4 = sub_1DD0DB04C();
  v0[117] = v4;
  OUTLINED_FUNCTION_99(v4);
  v0[118] = v5;
  v0[119] = OUTLINED_FUNCTION_38();
  v6 = type metadata accessor for OutputGenerationManifest(0);
  v0[120] = v6;
  OUTLINED_FUNCTION_20_0(v6);
  v0[121] = OUTLINED_FUNCTION_38();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  OUTLINED_FUNCTION_20_0(v7);
  v0[122] = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DCEA89E0()
{
  OUTLINED_FUNCTION_42();
  if (qword_1ECCA1360 != -1)
  {
    OUTLINED_FUNCTION_49_17(&qword_1ECCA1360);
  }

  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 97));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 97);
  v0[90] = type metadata accessor for RefreshableDeviceState();
  v0[91] = &protocol witness table for RefreshableDeviceState;
  v0[87] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEA8B28()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 1000) = v7;
  *(v3 + 1008) = v0;

  sub_1DCB16DB0(v3 + 696, &qword_1ECCA8AB0, &qword_1DD0E23E0);

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DCEA8C64()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[116];
  OUTLINED_FUNCTION_72_14();
  swift_asyncLet_begin();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA1C70, &unk_1DD0F9830);
    v2 = sub_1DD0DAB1C();
    OUTLINED_FUNCTION_99(v2);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1DD0E07C0;

    sub_1DD0DAB0C();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1DCB10E5C(0, &qword_1ECCA8F00, 0x1E69C7B00);
  static SAUIAppPunchOut.makeAppStorePunchOutURL(queryItems:)(v3);

  if (qword_1ECCA1358 != -1)
  {
    OUTLINED_FUNCTION_4_89(&qword_1ECCA1358);
  }

  v0[127] = qword_1ECCD26C0;
  v4 = type metadata accessor for SiriKitSnippets(0);
  v0[128] = v4;
  v0[110] = v4;
  v0[111] = sub_1DCEADC10();
  v0[129] = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 107);
  OUTLINED_FUNCTION_52_23();

  JUMPOUT(0x1DD0DF88CLL);
}

uint64_t sub_1DCEA8E48()
{
  *(v1 + 1040) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCEA9428);
  }

  else
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCEA8E74);
  }
}

void sub_1DCEA8E74()
{
  v1 = v0[129];
  v2 = v0[125];
  v3 = v0[122];
  v4 = v0[112];
  v5 = v0[113];
  v6 = type metadata accessor for SiriKitSnippets.PunchOutSnippetModel(0);
  sub_1DCB4F1DC(v3, v1 + *(v6 + 20), &unk_1ECCA28C0, &unk_1DD0E1D80);
  *v1 = v4;
  v1[1] = v5;
  swift_storeEnumTagMultiPayload();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v8 = OUTLINED_FUNCTION_52_2(v7);
  v0[131] = v8;
  *(v8 + 16) = xmmword_1DD0E15D0;
  *(v8 + 32) = v2;
  v9 = qword_1EDE4EC68;

  v10 = v2;
  if (v9 != -1)
  {
    OUTLINED_FUNCTION_11(&qword_1EDE4EC68);
  }

  v11 = v0[121];
  v12 = v0[120];
  v13 = *algn_1EDE4EC78;
  OUTLINED_FUNCTION_73_8();
  *(v11 + v12[9]) = 256;
  *(v11 + v12[11]) = 0;
  v14 = type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  OUTLINED_FUNCTION_57_13(v12[14]);
  OUTLINED_FUNCTION_57_13(v12[15]);
  *(v11 + v12[16]) = 0;
  *(v11 + v12[18]) = 0;
  OUTLINED_FUNCTION_16_29(v11 + v12[19]);
  OUTLINED_FUNCTION_29_26();
  *(v11 + v18) = MEMORY[0x1E69E7CC0];
  v19 = v12[29];
  v20 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  (*(v21 + 104))(v11 + v19, v20);
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_70_11();
  *v11 = v26;
  v11[1] = v13;

  sub_1DCB67914();
}

uint64_t sub_1DCEA9178()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 968);
  v6 = *v0;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  OUTLINED_FUNCTION_1_97();
  sub_1DCEB0054(v5, v8);
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 856));
  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCEA92A0()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB16DB0(*(v0 + 976), &unk_1ECCA28C0, &unk_1DD0E1D80);
  v1 = OUTLINED_FUNCTION_52_23();

  return MEMORY[0x1EEE6DEB0](v1, v0 + 896, v2, v0 + 816);
}

uint64_t sub_1DCEA9328()
{
  OUTLINED_FUNCTION_39();

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCEA93AC()
{
  OUTLINED_FUNCTION_39();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCEA9428()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB16DB0(*(v0 + 976), &unk_1ECCA28C0, &unk_1DD0E1D80);
  __swift_deallocate_boxed_opaque_existential_1(v0 + 856);
  v1 = OUTLINED_FUNCTION_52_23();

  return MEMORY[0x1EEE6DEB0](v1, v0 + 896, v2, v0 + 736);
}

uint64_t sub_1DCEA94B8()
{
  OUTLINED_FUNCTION_39();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCEA953C()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_79_13(v1);
  v0[3] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[4] = v3;
  v4 = OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_78_1(v4);
  v0[6] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v0[7] = OUTLINED_FUNCTION_38();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_97(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_31_0(v7);

  return sub_1DCF65E10();
}

uint64_t sub_1DCEA9620()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_77_0(v5);
  if (v0)
  {
    OUTLINED_FUNCTION_81();

    OUTLINED_FUNCTION_32_3();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1DCEA98C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCEA99C0()
{
  OUTLINED_FUNCTION_42();
  v0[105] = v1;
  v0[99] = v2;
  v3 = sub_1DD0DB04C();
  v0[106] = v3;
  OUTLINED_FUNCTION_99(v3);
  v0[107] = v4;
  v0[108] = OUTLINED_FUNCTION_38();
  v5 = type metadata accessor for OutputGenerationManifest(0);
  v0[109] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v0[110] = OUTLINED_FUNCTION_38();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v6);
  v0[111] = v7;
  v0[112] = *(v8 + 64);
  v0[113] = swift_task_alloc();
  v0[114] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCEA9AFC()
{
  OUTLINED_FUNCTION_42();
  sub_1DCEAC8C4(v0[105], v0[114]);
  if (qword_1ECCA1360 != -1)
  {
    OUTLINED_FUNCTION_49_17(&qword_1ECCA1360);
  }

  v1 = sub_1DD0DDE9C();
  v0[115] = v1;
  v2 = swift_task_alloc();
  v0[116] = v2;
  *v2 = v0;
  v2[1] = sub_1DCEA9BF4;
  v3 = OUTLINED_FUNCTION_55_2(v0[114]);

  return ErrorResponses.appDoesNotSupportIntent(appDisplayInfo:catOverrides:)(v3, v1);
}

uint64_t sub_1DCEA9BF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v7 + 936) = v6;
  *(v7 + 944) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DCEA9D10()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[113];
  v2 = v0[111];
  sub_1DCB4F1DC(v0[114], v1, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_67_15();
  v3 = swift_allocObject();
  v0[119] = v3;
  sub_1DCD0506C(v1, v3 + v2);
  OUTLINED_FUNCTION_72_14();
  swift_asyncLet_begin();
  if (qword_1ECCA1358 != -1)
  {
    OUTLINED_FUNCTION_4_89(&qword_1ECCA1358);
  }

  v0[120] = qword_1ECCD26C0;
  v4 = type metadata accessor for SiriKitSnippets(0);
  v0[121] = v4;
  v0[90] = v4;
  v0[91] = sub_1DCEADC10();
  v0[122] = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 87);
  OUTLINED_FUNCTION_52_23();

  JUMPOUT(0x1DD0DF88CLL);
}

uint64_t sub_1DCEA9E48()
{
  *(v1 + 984) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCEAA448);
  }

  else
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCEA9E74);
  }
}

void sub_1DCEA9E74()
{
  v1 = v0[122];
  v2 = v0[117];
  v3 = v0[97];
  v4 = v0[98];

  v5 = sub_1DD0DD1BC();
  *v1 = v3;
  v1[1] = v4;
  v1[2] = v5;
  v1[3] = v6;
  swift_storeEnumTagMultiPayload();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v8 = OUTLINED_FUNCTION_52_2(v7);
  v0[124] = v8;
  *(v8 + 16) = xmmword_1DD0E15D0;
  *(v8 + 32) = v2;
  v9 = qword_1EDE4EBE0;
  v10 = v2;
  if (v9 != -1)
  {
    OUTLINED_FUNCTION_10_27(&qword_1EDE4EBE0);
  }

  v11 = v0[110];
  v12 = v0[109];
  v13 = qword_1EDE4EBE8;
  v14 = unk_1EDE4EBF0;
  *(v11 + v12[6]) = 0;
  *(v11 + v12[7]) = 0;
  *(v11 + v12[9]) = 256;
  v29 = v13;
  *(v11 + v12[11]) = 0;
  v15 = type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  v19 = (v11 + v12[14]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v11 + v12[15]);
  *v20 = 0;
  v20[1] = 0;
  *(v11 + v12[16]) = 0;
  *(v11 + v12[18]) = 0;
  OUTLINED_FUNCTION_16_29(v11 + v12[19]);
  *(v11 + v12[20]) = 0;
  *(v11 + v12[21]) = 0;
  *(v11 + v12[22]) = 0;
  *(v11 + v12[23]) = 0;
  *(v11 + v12[24]) = 0;
  *(v11 + v12[25]) = 0;
  v21 = (v11 + v12[26]);
  *v21 = 0;
  v21[1] = 0;
  *(v11 + v12[27]) = 0;
  *(v11 + v12[28]) = MEMORY[0x1E69E7CC0];
  v22 = v12[29];
  v23 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  (*(v24 + 104))(v11 + v22, v23);
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  *(v11 + v12[31]) = 2;
  *v11 = v29;
  v11[1] = v14;

  sub_1DCB67914();
}

uint64_t sub_1DCEAA1BC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 880);
  v6 = *v0;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  OUTLINED_FUNCTION_1_97();
  sub_1DCEB0054(v5, v8);
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 696));

  return MEMORY[0x1EEE6DEB0](v2 + 16, v2 + 776, sub_1DCEAA2F0, v2 + 800);
}

uint64_t sub_1DCEAA304()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 912);

  sub_1DCB16DB0(v1, &qword_1ECCA8EE0, &unk_1DD0ECCD0);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_152();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCEAA3B8()
{
  OUTLINED_FUNCTION_39();
  sub_1DCB16DB0(*(v0 + 912), &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_75_11();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCEAA448()
{
  OUTLINED_FUNCTION_42();
  __swift_deallocate_boxed_opaque_existential_1(v0 + 696);
  v1 = OUTLINED_FUNCTION_52_23();

  return MEMORY[0x1EEE6DEB0](v1, v0 + 776, v2, v0 + 736);
}

uint64_t sub_1DCEAA4C0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 912);

  sub_1DCB16DB0(v1, &qword_1ECCA8EE0, &unk_1DD0ECCD0);

  OUTLINED_FUNCTION_75_11();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCEAA568()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_79_13(v1);
  v0[3] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[4] = v3;
  v4 = OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_78_1(v4);
  v0[6] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v0[7] = OUTLINED_FUNCTION_38();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_97(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_31_0(v7);

  return sub_1DCF65754();
}

uint64_t sub_1DCEAA64C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_77_0(v5);
  if (v0)
  {
    OUTLINED_FUNCTION_81();

    OUTLINED_FUNCTION_32_3();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1DCEAA8F4()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_79_13(v1);
  v0[3] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[4] = v3;
  v4 = OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_78_1(v4);
  v0[6] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v0[7] = OUTLINED_FUNCTION_38();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_97(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_31_0(v7);

  return sub_1DCF65754();
}

uint64_t sub_1DCEAA9D8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_77_0(v5);
  if (v0)
  {
    OUTLINED_FUNCTION_81();

    OUTLINED_FUNCTION_32_3();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1DCEAAC80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCEAAD78()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_1_97();
  sub_1DCEB0054(v1, v2);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1DCEAADF4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_1_97();
  sub_1DCEB0054(v1, v2);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCEAAE74()
{
  OUTLINED_FUNCTION_42();
  v0[160] = v1;
  v0[159] = v2;
  v0[158] = v3;
  v0[157] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v5);
  v0[161] = OUTLINED_FUNCTION_38();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v6);
  v0[162] = v7;
  v0[163] = *(v8 + 64);
  v0[164] = swift_task_alloc();
  v0[165] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCEAAF74()
{
  OUTLINED_FUNCTION_33();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  v1 = v0[165];
  v2 = v0[164];
  v3 = v0[162];
  v4 = v0[158];
  v0[166] = qword_1EDE46630;
  sub_1DCB4E718((v0 + 129));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 129);
  RefreshableDeviceState.isTextToSpeechEnabled.getter();
  type metadata accessor for ViewFactory();
  v0[167] = swift_initStackObject();
  sub_1DCEAC8C4(v4, v1);
  sub_1DCB4F1DC(v1, v2, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[168] = v6;
  sub_1DCD0506C(v2, v6 + v5);
  OUTLINED_FUNCTION_72_14();
  swift_asyncLet_begin();
  v7 = swift_task_alloc();
  v0[169] = v7;
  *v7 = v0;
  v7[1] = sub_1DCEAB114;
  v8 = OUTLINED_FUNCTION_55_2(v0[158]);

  return sub_1DCEAED90(v8, v9, v10, v11);
}

uint64_t sub_1DCEAB114()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1360) = v5;
  *(v3 + 1368) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v3 + 16, v3 + 696, sub_1DCEAB500, v3 + 656);
  }

  else
  {

    return MEMORY[0x1EEE6DEC0](v3 + 16, v3 + 696, sub_1DCEAB24C, v3 + 768);
  }
}

uint64_t sub_1DCEAB24C()
{
  *(v1 + 1376) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCEAB5AC);
  }

  else
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCEAB278);
  }
}

void sub_1DCEAB278()
{
  v2 = v0;
  v1 = v0[166];
  memcpy(v0 + 101, v0 + 87, 0x48uLL);
  sub_1DCBBF670((v0 + 101), (v0 + 115));
  sub_1DCB4E718((v0 + 139));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 139);
  v0[137] = type metadata accessor for RefreshableDeviceState();
  v0[138] = &protocol witness table for RefreshableDeviceState;
  v0[134] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAB460()
{
  OUTLINED_FUNCTION_39();
  sub_1DCB16DB0(*(v0 + 1320), &qword_1ECCA8EE0, &unk_1DD0ECCD0);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCEAB514()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_68_15();
  sub_1DCB16DB0(v0, &qword_1ECCA8EE0, &unk_1DD0ECCD0);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCEAB5AC()
{
  OUTLINED_FUNCTION_42();

  v1 = OUTLINED_FUNCTION_52_23();

  return MEMORY[0x1EEE6DEB0](v1, v0 + 696, v2, v0 + 880);
}

uint64_t sub_1DCEAB624()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_68_15();
  sub_1DCB16DB0(v0, &qword_1ECCA8EE0, &unk_1DD0ECCD0);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCEAB6BC()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_65_12(v1);
  v0[13] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[14] = v3;
  v4 = OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_64_14(v4);
  v0[16] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v0[17] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCEAB774()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  sub_1DCB4E718(v0 + 56);
  v1 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v1, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAB844()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  *v3 = *v0;
  OUTLINED_FUNCTION_63_13(v4);
  sub_1DCB16DB0(v2 + 16, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCEABAE0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCEABBD8()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_79_13(v1);
  v0[3] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[4] = v3;
  v4 = OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_78_1(v4);
  v0[6] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v0[7] = OUTLINED_FUNCTION_38();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_97(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_31_0(v7);

  return static ResponsePatterns.taskComplete()();
}

uint64_t sub_1DCEABCC0()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1DD0DB04C();
  v0[4] = v3;
  OUTLINED_FUNCTION_99(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_38();
  v5 = type metadata accessor for OutputGenerationManifest(0);
  v0[7] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v0[8] = OUTLINED_FUNCTION_38();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v6);
  v0[9] = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCEABDB4()
{
  OUTLINED_FUNCTION_42();
  sub_1DCEAC8C4(v0[3], v0[9]);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1DCEABE4C;
  OUTLINED_FUNCTION_55_2(v0[9]);

  return sub_1DCF66000();
}

uint64_t sub_1DCEABE4C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 88) = v4;
  *(v2 + 96) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCEAC0DC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCEAC1D4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  sub_1DCB16DB0(v2, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_1_97();
  sub_1DCEB0054(v1, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1DCEAC278()
{
  OUTLINED_FUNCTION_39();
  sub_1DCB16DB0(*(v0 + 72), &qword_1ECCA8EE0, &unk_1DD0ECCD0);

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCEAC308()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  sub_1DCB16DB0(v2, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_1_97();
  sub_1DCEB0054(v1, v3);

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCEAC3B0()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_65_12(v1);
  v0[13] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[14] = v3;
  v4 = OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_64_14(v4);
  v0[16] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v0[17] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCEAC468()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  sub_1DCB4E718(v0 + 56);
  v1 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v1, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAC538()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  *v3 = *v0;
  OUTLINED_FUNCTION_63_13(v4);
  sub_1DCB16DB0(v2 + 16, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void *sub_1DCEAC7C4()
{
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  result = ResponseFactory.init()();
  qword_1ECCD26C0 = result;
  return result;
}

void sub_1DCEAC82C(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  if (qword_1EDE48CE8 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDE57D40;
  *a2 = type metadata accessor for CATTemplateExecutor();
  *a3 = &off_1F58563F0;
  *a4 = v7;

  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAC8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD0DB0FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  sub_1DCB4E718(v15);
  v9 = __swift_destroy_boxed_opaque_existential_1Tm(v15);
  RefreshableDeviceState.siriLocale.getter(v9);
  if (a1)
  {
    v10 = sub_1DD0DD1BC();
    if (v11)
    {
      v15[0] = v10;
      v15[1] = v11;
      v14[1] = 0x6C7070612E6D6F63;
      v14[2] = 0xE900000000000065;
      sub_1DCD00AE8();
      sub_1DCD00B3C();
      sub_1DD0DDF3C();
    }

    type metadata accessor for AppInformationResolver();
    swift_initStackObject();
    sub_1DD0DCF8C();
  }

  (*(v5 + 8))(v8, v4);
  v12 = sub_1DD0DD23C();
  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v12);
}

uint64_t sub_1DCEACADC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DCEACB78;

  return static LabelTemplates.openApp(appDisplayInfo:)();
}

uint64_t sub_1DCEACB78()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_59_17();
    OUTLINED_FUNCTION_152();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    OUTLINED_FUNCTION_48_19();
    OUTLINED_FUNCTION_152();

    return MEMORY[0x1EEE6DFA0](v20, v21, v22);
  }
}

uint64_t sub_1DCEACC9C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DCEACB78;

  return sub_1DCC453B4();
}

uint64_t sub_1DCEACD2C()
{
  OUTLINED_FUNCTION_42();
  v0[29] = v1;
  v0[30] = v2;
  v3 = type metadata accessor for SiriKitSnippets(0);
  v0[31] = v3;
  OUTLINED_FUNCTION_20_0(v3);
  v0[32] = OUTLINED_FUNCTION_38();
  v4 = sub_1DD0DB04C();
  v0[33] = v4;
  OUTLINED_FUNCTION_99(v4);
  v0[34] = v5;
  v0[35] = OUTLINED_FUNCTION_38();
  v6 = type metadata accessor for OutputGenerationManifest(0);
  v0[36] = v6;
  OUTLINED_FUNCTION_20_0(v6);
  v0[37] = OUTLINED_FUNCTION_38();
  v7 = sub_1DD0DB0FC();
  v0[38] = v7;
  OUTLINED_FUNCTION_99(v7);
  v0[39] = v8;
  v0[40] = OUTLINED_FUNCTION_38();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v9);
  v0[41] = OUTLINED_FUNCTION_38();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCEACE90()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  *(v0 + 336) = qword_1EDE46630;
  sub_1DCB4E718(v0 + 16);
  v1 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  RefreshableDeviceState.siriLocale.getter(v1);
  type metadata accessor for AppInformationResolver();
  swift_initStackObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAD010()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = v5;
  v3[44] = v6;
  v3[45] = v7;
  v3[46] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    v11 = swift_task_alloc();
    v3[47] = v11;
    *v11 = v5;
    OUTLINED_FUNCTION_31_0(v11);

    return static LabelTemplates.no()();
  }
}

uint64_t sub_1DCEAD168()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  *v4 = *v1;
  v3[48] = v5;
  v3[49] = v6;
  v3[50] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCEAD274()
{
  OUTLINED_FUNCTION_39();
  if (qword_1ECCA1368 != -1)
  {
    swift_once();
  }

  v1 = v0[42];
  sub_1DCB4E718((v0 + 12));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v0[10] = type metadata accessor for RefreshableDeviceState();
  v0[11] = &protocol witness table for RefreshableDeviceState;
  v0[7] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAD3B4()
{
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  v2[26] = v1;
  v2[27] = v4;
  v2[28] = v0;
  *v3 = *v1;
  v2[53] = v0;

  sub_1DCB16DB0((v2 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCEAD514()
{
  if (qword_1EDE4EC30 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = unk_1EDE4EC40;
  OUTLINED_FUNCTION_73_8();
  *(v1 + v2[9]) = 256;
  *(v1 + v2[11]) = 0;
  v4 = type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  OUTLINED_FUNCTION_57_13(v2[14]);
  OUTLINED_FUNCTION_57_13(v2[15]);
  *(v1 + v2[16]) = 0;
  *(v1 + v2[18]) = 0;
  OUTLINED_FUNCTION_16_29(v1 + v2[19]);
  OUTLINED_FUNCTION_29_26();
  *(v1 + v8) = MEMORY[0x1E69E7CC0];
  v9 = v2[29];
  v10 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  (*(v11 + 104))(v1 + v9, v10);
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_70_11();
  *v1 = v16;
  v1[1] = v3;

  sub_1DCB67914();
}

uint64_t sub_1DCEAD860()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 136));
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCEAD960()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v3 = *(v1 + 328);
  OUTLINED_FUNCTION_41_21();

  sub_1DCEB0054(v2, type metadata accessor for SiriKitSnippets);
  sub_1DCB16DB0(v3, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_1_97();
  sub_1DCEB0054(v0, v5);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_152();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DCEADA30()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  sub_1DCB16DB0(*(v0 + 328), &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_41_21();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCEADAD0()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  sub_1DCB16DB0(*(v0 + 328), &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_41_21();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCEADB70()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  sub_1DCB16DB0(*(v0 + 328), &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_41_21();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

unint64_t sub_1DCEADC10()
{
  result = qword_1ECCA8EE8;
  if (!qword_1ECCA8EE8)
  {
    type metadata accessor for SiriKitSnippets(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA8EE8);
  }

  return result;
}

uint64_t sub_1DCEADC68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriKitSnippets(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCEADCCC()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_65_12(v1);
  v0[13] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[14] = v3;
  v4 = OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_64_14(v4);
  v0[16] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v0[17] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCEADD84()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  sub_1DCB4E718(v0 + 56);
  v1 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v1, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEADE54()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  *v3 = *v0;
  OUTLINED_FUNCTION_63_13(v4);
  sub_1DCB16DB0(v2 + 16, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCEAE0E0()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_65_12(v1);
  v0[13] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[14] = v3;
  v4 = OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_64_14(v4);
  v0[16] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v0[17] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCEAE198()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  sub_1DCB4E718(v0 + 56);
  v1 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v1, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAE268()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  *v3 = *v0;
  OUTLINED_FUNCTION_63_13(v4);
  sub_1DCB16DB0(v2 + 16, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCEAE4F4()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_65_12(v1);
  v0[13] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[14] = v3;
  v4 = OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_64_14(v4);
  v0[16] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v0[17] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCEAE5AC()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  sub_1DCB4E718(v0 + 56);
  v1 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v1, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAE67C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  *v3 = *v0;
  OUTLINED_FUNCTION_63_13(v4);
  sub_1DCB16DB0(v2 + 16, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCEAE908()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCEAEA00()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 136);

  OUTLINED_FUNCTION_1_97();
  sub_1DCEB0054(v1, v2);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1DCEAEA7C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCEAEAE4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 136);

  OUTLINED_FUNCTION_1_97();
  sub_1DCEB0054(v1, v2);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCEAEB64(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCEAEB84, 0, 0);
}

void sub_1DCEAEB84()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  sub_1DCB4E718(v0 + 56);
  v1 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v1, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAEC64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 120) = v0;

  sub_1DCB16DB0(v3 + 16, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCEAED90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[264] = a4;
  v4[263] = a3;
  v4[262] = a2;
  v4[261] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v4[265] = swift_task_alloc();
  type metadata accessor for AceOutput(0);
  v4[266] = swift_task_alloc();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0) - 8);
  v4[267] = v5;
  v4[268] = *(v5 + 64);
  v4[269] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCEAEED0, 0, 0);
}

void sub_1DCEAEED0()
{
  v1 = v0[269];
  v2 = v0[267];
  v3 = v0[264];
  v4 = v0[263];
  v5 = v0[262];
  v6 = v0[261];
  OUTLINED_FUNCTION_72_14();
  swift_asyncLet_begin();
  sub_1DCB4F1DC(v5, v1, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  v0[270] = v8;
  sub_1DCD0506C(v1, v8 + v7);
  swift_asyncLet_begin();
  sub_1DCB10E5C(0, &qword_1EDE460F0, 0x1E69C7860);
  v0[271] = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)(v6, v4, v3);
  OUTLINED_FUNCTION_52_23();

  JUMPOUT(0x1DD0DF88CLL);
}

uint64_t sub_1DCEAF044()
{
  *(v1 + 2176) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCEAF608);
  }

  else
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCEAF070);
  }
}

void sub_1DCEAF070()
{
  memcpy((v0 + 1560), (v0 + 1336), 0x48uLL);
  memcpy(__dst, (v0 + 1336), sizeof(__dst));
  sub_1DCBBF670(v0 + 1560, v0 + 1672);
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718(v0 + 1864);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1864));
  *(v0 + 1808) = type metadata accessor for RefreshableDeviceState();
  *(v0 + 1816) = &protocol witness table for RefreshableDeviceState;
  *(v0 + 1784) = v1;
  type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  *(v0 + 1976) = 0;
  *(v0 + 1944) = 0u;
  *(v0 + 1960) = 0u;
  swift_retain_n();
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

uint64_t sub_1DCEAF3E8()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 2200) = v0;
  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

void sub_1DCEAF460()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[274];
  v2 = v0[271];
  v3 = v0[258];
  v4 = v0[259];

  sub_1DCEAFE94(v3, v4, v2, v1);
}

uint64_t sub_1DCEAF578()
{
  OUTLINED_FUNCTION_39();

  v1 = *(v0 + 8);
  v2 = *(v0 + 2208);

  return v1(v2);
}

uint64_t sub_1DCEAF608()
{
  OUTLINED_FUNCTION_42();

  v1 = OUTLINED_FUNCTION_43_20();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 1408);
}

uint64_t sub_1DCEAF6B0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_76_14();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCEAF728()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 2168);
  v2 = *(v0 + 2128);

  OUTLINED_FUNCTION_36_29();
  sub_1DCEB0054(v2, v3);
  v4 = OUTLINED_FUNCTION_43_20();

  return MEMORY[0x1EEE6DEB0](v4, v5, v6, v0 + 1744);
}

uint64_t sub_1DCEAF7E8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_76_14();

  OUTLINED_FUNCTION_29();

  return v0();
}

void sub_1DCEAF880()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  sub_1DCB4E718(v0 + 56);
  v1 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v1, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEAF960()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 112) = v0;

  sub_1DCB16DB0(v3 + 16, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCEAFA8C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DCEAFB28;

  return static LabelTemplates.openApp(appDisplayInfo:)();
}

uint64_t sub_1DCEAFB28()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_59_17();
    OUTLINED_FUNCTION_152();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    OUTLINED_FUNCTION_48_19();
    OUTLINED_FUNCTION_152();

    return MEMORY[0x1EEE6DFA0](v20, v21, v22);
  }
}

uint64_t sub_1DCEAFC4C()
{
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[5];
  v2[1] = v1;
  OUTLINED_FUNCTION_43();
  return v3();
}

uint64_t sub_1DCEAFC78()
{
  OUTLINED_FUNCTION_39();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v1);
  OUTLINED_FUNCTION_67_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_46_18(v2);

  return sub_1DCEAEB64(v4, v5);
}

uint64_t sub_1DCEAFD44()
{
  OUTLINED_FUNCTION_39();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v1);
  OUTLINED_FUNCTION_67_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_46_18(v2);

  return sub_1DCEAFA8C(v4);
}

void sub_1DCEAFE10(uint64_t a1, void *a2)
{
  sub_1DCB10E5C(0, &qword_1ECCA9320, 0x1E69C79C8);
  v3 = sub_1DD0DE2DC();

  [a2 setCallbacks_];
}

void sub_1DCEAFE94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4[12];
  v9 = a4[13];
  __swift_project_boxed_opaque_existential_1(a4 + 9, v8);
  if ((*(v9 + 16))(v8, v9))
  {

    sub_1DCEAFFB8(a1, a2, a3, a4);
  }

  sub_1DCF97AC0(a3, a1, a2);
  v10 = swift_beginAccess();
  MEMORY[0x1E12A6920](v10);
  sub_1DCBBF95C();
  sub_1DD0DE3AC();
  swift_endAccess();
  sub_1DD0DCF8C();
}

void sub_1DCEAFFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DCF97C24(a3, a1, a2);
  v4 = swift_beginAccess();
  MEMORY[0x1E12A6920](v4);
  sub_1DCBBF95C();
  sub_1DD0DE3AC();
  swift_endAccess();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB0054(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCEB00A8()
{
  OUTLINED_FUNCTION_39();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v1);
  OUTLINED_FUNCTION_67_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_46_18(v2);

  return sub_1DCEACADC(v4);
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1E12A8390);
  }

  return result;
}

uint64_t AnyAppResolutionFlow.__allocating_init<A>(_:)()
{
  OUTLINED_FUNCTION_22_34();
  OUTLINED_FUNCTION_13_36();
  AnyAppResolutionFlow.init<A>(_:)();
  return v0;
}

uint64_t AnyPromptFlow.__allocating_init<A>(_:)()
{
  OUTLINED_FUNCTION_22_34();
  OUTLINED_FUNCTION_13_36();
  AnyPromptFlow.init<A>(_:)();
  return v0;
}

void AnyPromptFlow.init<A>(_:)()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_17_37();
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_60_11();
  v1[6] = sub_1DCEB03C0(v7, v8, v9, v10);
  v1[7] = v11;
  OUTLINED_FUNCTION_60_11();
  v1[8] = sub_1DCEB04EC(v12, v13, v14, v15);
  v1[9] = v16;
  OUTLINED_FUNCTION_116();
  v17();
  v18 = swift_allocObject();
  v19 = OUTLINED_FUNCTION_71_12(v18);
  (v2)(v19);
  v1[10] = sub_1DCEB1EF0;
  v1[11] = v4;
  v1[5] = v0;
  __swift_allocate_boxed_opaque_existential_1Tm_0(v1 + 2);
  OUTLINED_FUNCTION_116();
  v2();
  OUTLINED_FUNCTION_49();
}

uint64_t (*sub_1DCEB03C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1DCEBDC58;
}

void *sub_1DCEB04EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD0FF788;
}

uint64_t sub_1DCEB0618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (*(a5 + 40) + **(a5 + 40));
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1DCB4AE1C;

  return v11(a1, a4, a5);
}

uint64_t sub_1DCEB0774(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCEB0794, 0, 0);
}

uint64_t sub_1DCEB0794()
{
  OUTLINED_FUNCTION_42();
  (*(*(v0 + 24) + 48))(*(v0 + 16));
  OUTLINED_FUNCTION_69();
  v3 = v2 & 1;

  return v1(v3);
}

uint64_t sub_1DCEB07F8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCEB080C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v30 - v8;
  sub_1DCB0DF6C(v2 + 16, v31);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  v30[1] = DynamicType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC360, &qword_1DD0FE290);
  v11 = sub_1DD0DE02C();
  v13 = v12;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v14 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v14, qword_1EDE57E00);

  v15 = sub_1DD0DD8EC();
  v16 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30[0] = a2;
    v18 = a1;
    v19 = v17;
    v20 = swift_slowAlloc();
    v31[0] = v20;
    *v19 = 136315138;
    v21 = sub_1DCB10E9C(v11, v13, v31);

    *(v19 + 4) = v21;
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1E12A8390](v20, -1, -1);
    v22 = v19;
    a1 = v18;
    a2 = v30[0];
    MEMORY[0x1E12A8390](v22, -1, -1);
  }

  else
  {
  }

  v23 = sub_1DD0DD8EC();
  v24 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1DCAFC000, v23, v24, "Synchronous execute function called directly on AnyPromptFlow. This will become a fatal error in the future.", v25, 2u);
    MEMORY[0x1E12A8390](v25, -1, -1);
  }

  v27 = *(v3 + 64);
  v26 = *(v3 + 72);
  v28 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = a1;
  v29[5] = a2;
  v29[6] = v27;
  v29[7] = v26;
  sub_1DD0DCF8C();
}

void sub_1DCEB0B28()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v7 = OUTLINED_FUNCTION_20_0(v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v32 - v9;
  sub_1DCB0DF6C(v0 + 16, v33);
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  v32[1] = DynamicType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC360, &qword_1DD0FE290);
  v12 = sub_1DD0DE02C();
  v14 = v13;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v15 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v15, qword_1EDE57E00);

  v16 = sub_1DD0DD8EC();
  v17 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32[0] = v3;
    v19 = v5;
    v20 = v18;
    v21 = swift_slowAlloc();
    v33[0] = v21;
    *v20 = 136315138;
    v22 = sub_1DCB10E9C(v12, v14, v33);

    *(v20 + 4) = v22;
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    OUTLINED_FUNCTION_62();
    v5 = v19;
    v3 = v32[0];
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  v23 = sub_1DD0DD8EC();
  v24 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v23, v24))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_90_10(&dword_1DCAFC000, v25, v24, "Synchronous execute function called directly on AnyPromptFlow. This will become a fatal error in the future.");
    OUTLINED_FUNCTION_62();
  }

  v27 = *(v1 + 64);
  v26 = *(v1 + 72);
  v28 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v10, v29, v30, v28);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v5;
  v31[5] = v3;
  v31[6] = v27;
  v31[7] = v26;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEB0DEC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCEB0E0C, 0, 0);
}

uint64_t sub_1DCEB0E0C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_1_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_10(v1);

  return v4(v3);
}

uint64_t sub_1DCEB0EC0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCEB0ED4()
{
  v1 = sub_1DCB0DF6C(v0 + 16, v11);
  v9 = OUTLINED_FUNCTION_66_3(v1, v2, v3, v4, v5, v6, v7, v8, v11[0]);
  return OUTLINED_FUNCTION_87_4(v9);
}

void *_s11SiriKitFlow023AnyRequestTCCAcceptanceC0Cfd_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

void *AnyPromptFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t AnyNeedsValueFlow.__allocating_init<A>(_:)()
{
  OUTLINED_FUNCTION_22_34();
  v1 = OUTLINED_FUNCTION_13_36();
  AnyNeedsValueFlow.init<A>(_:)(v1);
  return v0;
}

uint64_t AnyNeedsValueFlow.__deallocating_deinit()
{
  AnyPromptFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCEB1004(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCBC3348;

  return sub_1DCEB07F8(a1);
}