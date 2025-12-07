void sub_2574BCFA0()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_74_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC48, &qword_25774A460);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_32_3();
  if (*v1 != *v0 || v1[1] != v0[1])
  {
    goto LABEL_15;
  }

  v23 = type metadata accessor for Proto_ImageFeatureType(0);
  v11 = *(v9 + 48);
  OUTLINED_FUNCTION_66();
  sub_257487308(v12);
  OUTLINED_FUNCTION_66();
  sub_257487308(v13);
  OUTLINED_FUNCTION_28_0(v3);
  if (v15)
  {
    OUTLINED_FUNCTION_28_0(v3 + v11);
    if (v15)
    {
      sub_2574695E4(v3, &qword_27F87A8C8, &unk_257748860);
      goto LABEL_13;
    }

LABEL_11:
    sub_2574695E4(v3, &qword_27F87AC48, &qword_25774A460);
LABEL_15:
    v22 = 0;
    goto LABEL_16;
  }

  v14 = OUTLINED_FUNCTION_264();
  sub_257487308(v14);
  OUTLINED_FUNCTION_28_0(v3 + v11);
  if (v15)
  {
    OUTLINED_FUNCTION_5_11();
    sub_2574CB128(v4, v16);
    goto LABEL_11;
  }

  sub_2574CB180();
  OUTLINED_FUNCTION_229();
  sub_2574B92E8();
  v18 = v17;
  sub_2574CB128(v2, type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility);
  sub_2574CB128(v4, type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility);
  sub_2574695E4(v3, &qword_27F87A8C8, &unk_257748860);
  if ((v18 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (!sub_257476938(*(v1 + *(v23 + 28)), *(v1 + *(v23 + 28) + 8), *(v0 + *(v23 + 28)), *(v0 + *(v23 + 28) + 8)))
  {
    goto LABEL_15;
  }

  sub_2577431B4();
  OUTLINED_FUNCTION_0_15();
  v21 = sub_2574C9F70(v19, v20, MEMORY[0x277D216D0]);
  v22 = OUTLINED_FUNCTION_4_2(v21);
LABEL_16:
  OUTLINED_FUNCTION_65_0(v22);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574BD2B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87ABA8, type metadata accessor for Proto_ImageFeatureType, &unk_257749B18);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574BD358(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87AA90, type metadata accessor for Proto_ImageFeatureType, &unk_25774A038);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574BD420(uint64_t a1, uint64_t a2)
{
  sub_2574C9F70(&qword_27F87AA90, type metadata accessor for Proto_ImageFeatureType, &unk_25774A038);

  return sub_257743424();
}

uint64_t sub_2574BD4A0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8170);
  __swift_project_value_buffer(v0, qword_27F8E8170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "INVALID_COLOR_SPACE";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 10;
  *v10 = "GRAYSCALE";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 20;
  *v12 = "RGB";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 30;
  *v14 = "BGR";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 40;
  *v16 = "GRAYSCALE_FLOAT16";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574BD75C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8198);
  __swift_project_value_buffer(v0, qword_27F8E8198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "width";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574BD924(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_257743234();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      a4(v4 + 8, a2, a3);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_264();
      sub_2577433B4();
    }
  }

  return result;
}

void sub_2574BD9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_102_0();
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_2_7();
  if (!*v4 || (OUTLINED_FUNCTION_12_8(), sub_257743554(), !v5))
  {
    if (!*(v6 + 8) || (OUTLINED_FUNCTION_12_8(), v10(), !v5))
    {
      v8(0);
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2574BDA44(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_267();
  if (*(v3 + 8) != *(v4 + 8))
  {
    return 0;
  }

  v2(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_15();
  v7 = sub_2574C9F70(v5, v6, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v7) & 1;
}

uint64_t sub_2574BDB9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87ABE0, type metadata accessor for Proto_ImageFeatureType.ImageSize, &unk_257749988);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574BDC3C(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87AA70, type metadata accessor for Proto_ImageFeatureType.ImageSize, &unk_2577499C0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574BDD04(uint64_t a1, uint64_t a2)
{
  sub_2574C9F70(&qword_27F87AA70, type metadata accessor for Proto_ImageFeatureType.ImageSize, &unk_2577499C0);

  return sub_257743424();
}

uint64_t sub_2574BDDB0()
{
  result = MEMORY[0x259C64E90](0xD000000000000015, 0x800000025777A920);
  qword_27F8E81B0 = 0xD000000000000016;
  *algn_27F8E81B8 = 0x800000025777A820;
  return result;
}

uint64_t sub_2574BDE3C()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v0 + 16) || (type metadata accessor for Proto_ImageFeatureType.ImageSize(0), sub_2574C9F70(&qword_27F87AA70, type metadata accessor for Proto_ImageFeatureType.ImageSize, &unk_2577499C0), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_91_0(), OUTLINED_FUNCTION_27_4(), result = sub_257743564(), !v1))
  {
    type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes(0);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_2574BDFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87ABE8, type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes, &unk_257749820);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574BE058(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87AA50, type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes, &unk_257749858);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574BE120(uint64_t a1, uint64_t a2)
{
  sub_2574C9F70(&qword_27F87AA50, type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes, &unk_257749858);

  return sub_257743424();
}

uint64_t sub_2574BE200(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  OUTLINED_FUNCTION_84_0();
  result = MEMORY[0x259C64E90](0x69536567616D492ELL);
  *a3 = v7;
  *a4 = v8;
  return result;
}

uint64_t sub_2574BE284(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2577435B4();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_360();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40);
  OUTLINED_FUNCTION_89_0();
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_257743FF0;
  v15 = (v14 + v13);
  v16 = v14 + v13 + *(v7 + 56);
  *v15 = 1;
  *v16 = a3;
  *(v16 + 8) = 10;
  *(v16 + 16) = 2;
  v17 = *MEMORY[0x277D21870];
  v18 = sub_257743584();
  OUTLINED_FUNCTION_4();
  v20 = *(v19 + 104);
  (v20)(v16, v17, v18);
  v21 = v15 + v11 + *(v7 + 56);
  *(v15 + v11) = 2;
  *v21 = a4;
  *(v21 + 1) = a5;
  v21[16] = 2;
  v20();
  return sub_257743594();
}

uint64_t sub_2574BE428()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_6_8();
      sub_2574C3DF0(v7, v8, v9, v10, v11);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_6_8();
      sub_2574BE4A0(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_2574BE4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_ImageFeatureType.ImageSizeRange(0);
  type metadata accessor for Proto_SizeRange(0);
  sub_2574C9F70(&qword_27F87AAA0, type metadata accessor for Proto_SizeRange, &unk_257749ED0);
  return sub_2577433D4();
}

uint64_t sub_2574BE554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_10_7();
  result = sub_2574BE5D0(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_10_7();
    sub_2574C43F4(v9, v10, v11, a3, v12, 2);
    OUTLINED_FUNCTION_222();
    return sub_257743194();
  }

  return result;
}

uint64_t sub_2574BE5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A0, &unk_2577487A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_SizeRange(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_ImageFeatureType.ImageSizeRange(0);
  sub_257487308(a1 + *(v11 + 20));
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A8A0, &unk_2577487A0);
  }

  sub_2574CB180();
  sub_2574C9F70(&qword_27F87AAA0, type metadata accessor for Proto_SizeRange, &unk_257749ED0);
  sub_257743574();
  return sub_2574CB128(v10, type metadata accessor for Proto_SizeRange);
}

void sub_2574BE7B0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  type metadata accessor for Proto_SizeRange(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v58 = (v5 - v6);
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v7);
  v60 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A0, &unk_2577487A0);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v59 = (v11 - v12);
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v13);
  v15 = (&v58 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ABF8, &unk_25774A420);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11();
  v62 = v18 - v19;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  v61 = type metadata accessor for Proto_ImageFeatureType.ImageSizeRange(0);
  v23 = *(v61 + 20);
  v24 = *(v16 + 48);
  v63 = v3;
  OUTLINED_FUNCTION_101_0(v3 + v23);
  v25 = v1 + v23;
  v26 = v1;
  OUTLINED_FUNCTION_101_0(v25);
  OUTLINED_FUNCTION_35_2(v22);
  if (v34)
  {
    OUTLINED_FUNCTION_35_2(&v22[v24]);
    if (v34)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  sub_257487308(v22);
  OUTLINED_FUNCTION_35_2(&v22[v24]);
  if (v34)
  {
    OUTLINED_FUNCTION_1_9();
    sub_2574CB128(v15, v35);
LABEL_13:
    v36 = &qword_27F87ABF8;
    v37 = &unk_25774A420;
LABEL_20:
    v46 = v22;
LABEL_32:
    sub_2574695E4(v46, v36, v37);
    v33 = 0;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_18_5();
  v38 = v60;
  sub_2574CB180();
  if (*v15 != *v38 || v15[1] != v38[1])
  {
    OUTLINED_FUNCTION_1_9();
    sub_2574CB128(v38, v44);
    goto LABEL_19;
  }

  sub_2577431B4();
  OUTLINED_FUNCTION_0_15();
  sub_2574C9F70(v39, v40, MEMORY[0x277D216D0]);
  v41 = sub_257743644();
  OUTLINED_FUNCTION_1_9();
  sub_2574CB128(v38, v42);
  if ((v41 & 1) == 0)
  {
LABEL_19:
    OUTLINED_FUNCTION_1_9();
    sub_2574CB128(v15, v45);
    v36 = &qword_27F87A8A0;
    v37 = &unk_2577487A0;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_9();
  sub_2574CB128(v15, v43);
  v26 = v1;
LABEL_5:
  sub_2574695E4(v22, &qword_27F87A8A0, &unk_2577487A0);
  v27 = v62;
  v28 = *(v61 + 24);
  v29 = *(v16 + 48);
  OUTLINED_FUNCTION_101_0(v63 + v28);
  OUTLINED_FUNCTION_101_0(v26 + v28);
  OUTLINED_FUNCTION_35_2(v27);
  if (!v34)
  {
    v47 = v59;
    sub_257487308(v27);
    OUTLINED_FUNCTION_35_2(v27 + v29);
    if (!v48)
    {
      OUTLINED_FUNCTION_18_5();
      v50 = v58;
      sub_2574CB180();
      if (*v47 == *v50 && v47[1] == v50[1])
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_0_15();
        sub_2574C9F70(v51, v52, MEMORY[0x277D216D0]);
        v53 = sub_257743644();
        OUTLINED_FUNCTION_1_9();
        sub_2574CB128(v50, v54);
        if (v53)
        {
          OUTLINED_FUNCTION_1_9();
          sub_2574CB128(v47, v55);
          goto LABEL_9;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_9();
        sub_2574CB128(v50, v56);
      }

      OUTLINED_FUNCTION_1_9();
      sub_2574CB128(v47, v57);
      v36 = &qword_27F87A8A0;
      v37 = &unk_2577487A0;
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_1_9();
    sub_2574CB128(v47, v49);
LABEL_24:
    v36 = &qword_27F87ABF8;
    v37 = &unk_25774A420;
LABEL_31:
    v46 = v27;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_35_2(v27 + v29);
  if (!v34)
  {
    goto LABEL_24;
  }

LABEL_9:
  sub_2574695E4(v27, &qword_27F87A8A0, &unk_2577487A0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_15();
  v32 = sub_2574C9F70(v30, v31, MEMORY[0x277D216D0]);
  v33 = OUTLINED_FUNCTION_68_0(v32);
LABEL_33:
  OUTLINED_FUNCTION_65_0(v33);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574BEC90()
{
  OUTLINED_FUNCTION_16_1();
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_205();

  return v1(v0);
}

uint64_t sub_2574BECE8()
{
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_44_1();

  return v1(v0);
}

uint64_t sub_2574BED74(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87ABF0, type metadata accessor for Proto_ImageFeatureType.ImageSizeRange, &unk_2577496B8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574BEE14(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87AA30, type metadata accessor for Proto_ImageFeatureType.ImageSizeRange, &unk_2577496F0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574BEEDC(uint64_t a1, uint64_t a2)
{
  sub_2574C9F70(&qword_27F87AA30, type metadata accessor for Proto_ImageFeatureType.ImageSizeRange, &unk_2577496F0);

  return sub_257743424();
}

uint64_t sub_2574BEF5C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8200);
  __swift_project_value_buffer(v0, qword_27F8E8200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257748720;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "shape";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dataType";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 21;
  *v12 = "enumeratedShapes";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 31;
  *v14 = "shapeRange";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 41;
  *v16 = "intDefaultValue";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 51;
  *v18 = "floatDefaultValue";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 61;
  *v20 = "doubleDefaultValue";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574BF260()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 61:
        v13 = OUTLINED_FUNCTION_6_8();
        sub_2574BFE94(v13, v14, v15, v16);
        break;
      case 2:
        v21 = OUTLINED_FUNCTION_6_8();
        sub_2574BF368(v21, v22);
        break;
      case 21:
        v17 = OUTLINED_FUNCTION_6_10();
        sub_2574BF3D0(v17, v18, v19, v20);
        break;
      case 31:
        v3 = OUTLINED_FUNCTION_6_10();
        sub_2574BF8D4(v3, v4, v5, v6);
        break;
      case 41:
        v7 = OUTLINED_FUNCTION_6_8();
        v12 = 0;
LABEL_15:
        sub_2574BFDD8(v7, v8, v9, v10, v11, v12);
        break;
      case 51:
        v7 = OUTLINED_FUNCTION_6_8();
        v12 = 1;
        goto LABEL_15;
      case 1:
        OUTLINED_FUNCTION_10_7();
        sub_2577432B4();
        break;
    }
  }
}

uint64_t sub_2574BF3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes(0);
  v6 = MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB90, &qword_25774A400);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  __swift_storeEnumTagSinglePayload(&v27 - v19, 1, 1, v5);
  v27 = *(type metadata accessor for Proto_ArrayFeatureType(0) + 24);
  v28 = a1;
  sub_257487308(a1 + v27);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v30 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87A8F0, &unk_257770640);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB128(v14, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility);
    }

    else
    {
      sub_2574695E4(v20, &qword_27F87AB90, &qword_25774A400);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_2574C9F70(&qword_27F87A9E0, type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes, &unk_257749308);
  v21 = v32;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87AB90, &qword_25774A400);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87AB90, &qword_25774A400);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87AB90, &qword_25774A400);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v30;
  sub_2574695E4(v20, &qword_27F87AB90, &qword_25774A400);
  v26 = v27;
  v25 = v28;
  sub_2574695E4(v28 + v27, &qword_27F87A8F0, &unk_257770640);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25 + v26, 0, 1, v24);
}

uint64_t sub_2574BF8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for Proto_ArrayFeatureType.ShapeRange(0);
  v6 = MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB98, &qword_25774A408);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  __swift_storeEnumTagSinglePayload(&v27 - v19, 1, 1, v5);
  v27 = *(type metadata accessor for Proto_ArrayFeatureType(0) + 24);
  v28 = a1;
  sub_257487308(a1 + v27);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v30 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87A8F0, &unk_257770640);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v20, &qword_27F87AB98, &qword_25774A408);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v14, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility);
    }
  }

  sub_2574C9F70(&qword_27F87A9C0, type metadata accessor for Proto_ArrayFeatureType.ShapeRange, &unk_2577491A0);
  v21 = v32;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87AB98, &qword_25774A408);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87AB98, &qword_25774A408);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87AB98, &qword_25774A408);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v30;
  sub_2574695E4(v20, &qword_27F87AB98, &qword_25774A408);
  v26 = v27;
  v25 = v28;
  sub_2574695E4(v28 + v27, &qword_27F87A8F0, &unk_257770640);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25 + v26, 0, 1, v24);
}

uint64_t sub_2574BFDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unsigned int *, uint64_t, uint64_t), char a6)
{
  v12 = 0;
  v13 = 1;
  result = a5(&v12, a3, a4);
  if (!v6 && (v13 & 1) == 0)
  {
    v10 = v12;
    result = type metadata accessor for Proto_ArrayFeatureType(0);
    v11 = a2 + *(result + 28);
    if (*(v11 + 8) != 255)
    {
      result = sub_257743244();
    }

    *v11 = v10;
    *(v11 + 8) = a6;
  }

  return result;
}

void sub_2574BFF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_2_7();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  OUTLINED_FUNCTION_13(v19);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  if (!*(OUTLINED_FUNCTION_93_0() + 16) || (OUTLINED_FUNCTION_12_8(), sub_257743484(), !v16))
  {
    if (!*(v17 + 8) || (sub_2574CB1D4(), OUTLINED_FUNCTION_27_4(), sub_2577434C4(), !v16))
    {
      v21 = type metadata accessor for Proto_ArrayFeatureType(0);
      sub_257487308(v17 + *(v21 + 24));
      v22 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
      if (__swift_getEnumTagSinglePayload(v18, 1, v22) == 1)
      {
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_311();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = OUTLINED_FUNCTION_3_9();
        sub_2574C0314(v23, v24, v25, v26);
      }

      else
      {
        v27 = OUTLINED_FUNCTION_3_9();
        sub_2574C00F4(v27, v28, v29, v30);
      }

      OUTLINED_FUNCTION_9_6();
      sub_2574CB128(v18, v31);
      if (!v16)
      {
LABEL_10:
        v32 = *(v17 + *(v21 + 28) + 8);
        if (*(v17 + *(v21 + 28) + 8))
        {
          if (v32 == 1)
          {
            v34 = OUTLINED_FUNCTION_3_9();
            sub_2574C05A8(v34, v35, v36, v37);
          }

          else
          {
            if (v32 != 2)
            {
LABEL_17:
              OUTLINED_FUNCTION_7_5();
              goto LABEL_18;
            }

            v33 = OUTLINED_FUNCTION_3_9();
            sub_2574C0620(v33);
          }
        }

        else
        {
          v38 = OUTLINED_FUNCTION_3_9();
          sub_2574C0534(v38);
        }

        if (!v16)
        {
          goto LABEL_17;
        }
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2574C00F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_ArrayFeatureType(0);
  sub_257487308(a1 + *(v11 + 24));
  v12 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A8F0, &unk_257770640);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87A9E0, type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes, &unk_257749308);
      sub_257743574();
      return sub_2574CB128(v10, type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C0314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_ArrayFeatureType.ShapeRange(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_ArrayFeatureType(0);
  sub_257487308(a1 + *(v11 + 24));
  v12 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A8F0, &unk_257770640);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87A9C0, type metadata accessor for Proto_ArrayFeatureType.ShapeRange, &unk_2577491A0);
      sub_257743574();
      return sub_2574CB128(v10, type metadata accessor for Proto_ArrayFeatureType.ShapeRange);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C0534(uint64_t a1)
{
  result = type metadata accessor for Proto_ArrayFeatureType(0);
  if (!*(a1 + *(result + 28) + 8))
  {
    return sub_2577434F4();
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C05A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_ArrayFeatureType(0);
  if (*(a1 + *(result + 28) + 8) == 1)
  {
    return sub_2577434E4();
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C0620(uint64_t a1)
{
  result = type metadata accessor for Proto_ArrayFeatureType(0);
  if (*(a1 + *(result + 28) + 8) == 2)
  {
    return sub_257743524();
  }

  __break(1u);
  return result;
}

void sub_2574C0698()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_74_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC50, &qword_25774A468);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_32_3();
  if ((sub_257487374() & 1) == 0 || !sub_257476988(*(v1 + 8), *(v1 + 16), *(v0 + 8), *(v0 + 16)))
  {
    goto LABEL_12;
  }

  v28 = type metadata accessor for Proto_ArrayFeatureType(0);
  v11 = *(v9 + 48);
  OUTLINED_FUNCTION_66();
  sub_257487308(v12);
  OUTLINED_FUNCTION_66();
  sub_257487308(v13);
  OUTLINED_FUNCTION_28_0(v3);
  if (!v15)
  {
    v14 = OUTLINED_FUNCTION_264();
    sub_257487308(v14);
    OUTLINED_FUNCTION_28_0(v3 + v11);
    if (!v15)
    {
      sub_2574CB180();
      OUTLINED_FUNCTION_229();
      sub_2574B98DC();
      v19 = v18;
      sub_2574CB128(v2, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility);
      sub_2574CB128(v4, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility);
      sub_2574695E4(v3, &qword_27F87A8F0, &unk_257770640);
      if ((v19 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_9_6();
    sub_2574CB128(v4, v16);
LABEL_11:
    sub_2574695E4(v3, &qword_27F87AC50, &qword_25774A468);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_0(v3 + v11);
  if (!v15)
  {
    goto LABEL_11;
  }

  sub_2574695E4(v3, &qword_27F87A8F0, &unk_257770640);
LABEL_15:
  v20 = *(v28 + 28);
  v21 = (v1 + v20);
  v22 = *(v1 + v20 + 8);
  v23 = v0 + v20;
  v24 = *(v23 + 8);
  if (v22 == 255)
  {
    if (v24 == 255)
    {
LABEL_20:
      sub_2577431B4();
      OUTLINED_FUNCTION_0_15();
      v27 = sub_2574C9F70(v25, v26, MEMORY[0x277D216D0]);
      v17 = OUTLINED_FUNCTION_4_2(v27);
      goto LABEL_13;
    }
  }

  else if (v24 != 255 && sub_2574B9C94(*v21, v22, *v23, v24))
  {
    goto LABEL_20;
  }

LABEL_12:
  v17 = 0;
LABEL_13:
  OUTLINED_FUNCTION_65_0(v17);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574C097C()
{
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_77_0();

  return v1(v0);
}

uint64_t sub_2574C09E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_2574C0A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87AB88, type metadata accessor for Proto_ArrayFeatureType, &unk_2577495C8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574C0B1C(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_281537BA8, type metadata accessor for Proto_ArrayFeatureType, &unk_25774A128);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574C0BE4(uint64_t a1, uint64_t a2)
{
  sub_2574C9F70(&qword_281537BA8, type metadata accessor for Proto_ArrayFeatureType, &unk_25774A128);

  return sub_257743424();
}

uint64_t sub_2574C0C64()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8218);
  __swift_project_value_buffer(v0, qword_27F8E8218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_257745520;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "INVALID_ARRAY_DATA_TYPE";
  *(v4 + 8) = 23;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 65552;
  *v8 = "FLOAT16";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 65568;
  *v10 = "FLOAT32";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 65600;
  *v12 = "DOUBLE";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 131080;
  *v14 = "INT8";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 131104;
  *v16 = "INT32";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  return sub_257743594();
}

uint64_t sub_2574C0F84()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_2577432B4();
    }
  }

  return result;
}

uint64_t sub_2574C0FD4()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_12_8(), result = sub_257743484(), !v1))
  {
    type metadata accessor for Proto_ArrayFeatureType.Shape(0);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_2574C10C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87AC00, type metadata accessor for Proto_ArrayFeatureType.Shape, &unk_257749438);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574C1160(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87AA00, type metadata accessor for Proto_ArrayFeatureType.Shape, &unk_257749470);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574C1228(uint64_t a1, uint64_t a2)
{
  sub_2574C9F70(&qword_27F87AA00, type metadata accessor for Proto_ArrayFeatureType.Shape, &unk_257749470);

  return sub_257743424();
}

uint64_t sub_2574C12E8()
{
  result = MEMORY[0x259C64E90](0xD000000000000011, 0x800000025777AA20);
  qword_27F8E8258 = 0xD000000000000016;
  unk_27F8E8260 = 0x800000025777A7E0;
  return result;
}

void sub_2574C1374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_102_0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v4;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  while (1)
  {
    v21 = sub_257743234();
    if (v5 || (v22 & 1) != 0)
    {
      break;
    }

    if (v21 == 1)
    {
      sub_2574C1848(v20, v14, v18, v16, v13, v11, v9, v7);
    }
  }

  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2574C1404()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v0 + 16) || (type metadata accessor for Proto_ArrayFeatureType.Shape(0), sub_2574C9F70(&qword_27F87AA00, type metadata accessor for Proto_ArrayFeatureType.Shape, &unk_257749470), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_91_0(), OUTLINED_FUNCTION_27_4(), result = sub_257743564(), !v1))
  {
    type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes(0);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_2574C1580(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87AC08, type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes, &unk_2577492D0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574C1620(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87A9E0, type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes, &unk_257749308);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574C16E8(uint64_t a1, uint64_t a2)
{
  sub_2574C9F70(&qword_27F87A9E0, type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes, &unk_257749308);

  return sub_257743424();
}

uint64_t sub_2574C17D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  OUTLINED_FUNCTION_84_0();
  result = MEMORY[0x259C64E90]();
  *a4 = v8;
  *a5 = v9;
  return result;
}

uint64_t sub_2574C1848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  a5(0);
  sub_2574C9F70(a6, a7, a8);
  return sub_2577433C4();
}

uint64_t sub_2574C18E4()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v0 + 16) || (type metadata accessor for Proto_SizeRange(0), OUTLINED_FUNCTION_17_6(), sub_2574C9F70(v2, v3, &unk_257749ED0), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_91_0(), OUTLINED_FUNCTION_27_4(), result = sub_257743564(), !v1))
  {
    type metadata accessor for Proto_ArrayFeatureType.ShapeRange(0);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_2574C1988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_267();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  OUTLINED_FUNCTION_95_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_0_15();
  v10 = sub_2574C9F70(v8, v9, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v10) & 1;
}

uint64_t sub_2574C1A68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_2574C1B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87AC10, type metadata accessor for Proto_ArrayFeatureType.ShapeRange, &unk_257749168);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574C1BD0(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87A9C0, type metadata accessor for Proto_ArrayFeatureType.ShapeRange, &unk_2577491A0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574C1C98(uint64_t a1, uint64_t a2)
{
  sub_2574C9F70(&qword_27F87A9C0, type metadata accessor for Proto_ArrayFeatureType.ShapeRange, &unk_2577491A0);

  return sub_257743424();
}

uint64_t sub_2574C1D58()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E82A8);
  __swift_project_value_buffer(v0, qword_27F8E82A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "int64KeyType";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "stringKeyType";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574C1F20()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_6_10();
      sub_2574C247C(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_6_10();
      sub_2574C1F84(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_2574C1F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_Int64FeatureType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A8, &qword_257777E20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB30, &qword_25774A3C0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_257487308(a1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87A8A8, &qword_257777E20);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB128(v14, type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType);
    }

    else
    {
      sub_2574695E4(v20, &qword_27F87AB30, &qword_25774A3C0);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_2574C9F70(&qword_281537B40, type metadata accessor for Proto_Int64FeatureType, &unk_25774A290);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87AB30, &qword_25774A3C0);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87AB30, &qword_25774A3C0);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87AB30, &qword_25774A3C0);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87AB30, &qword_25774A3C0);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F87A8A8, &qword_257777E20);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574C247C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_StringFeatureType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A8, &qword_257777E20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB40, &qword_25774A3D0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_257487308(a1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87A8A8, &qword_257777E20);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v20, &qword_27F87AB40, &qword_25774A3D0);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v14, type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType);
    }
  }

  sub_2574C9F70(&qword_27F87AAB8, type metadata accessor for Proto_StringFeatureType, &unk_25774A1A0);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87AB40, &qword_25774A3D0);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87AB40, &qword_25774A3D0);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87AB40, &qword_25774A3D0);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87AB40, &qword_25774A3D0);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F87A8A8, &qword_257777E20);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

void sub_2574C2974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_102_0();
  v9 = v4;
  OUTLINED_FUNCTION_76_0();
  v10 = OUTLINED_FUNCTION_311();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_66();
  sub_257487308(v14);
  type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  OUTLINED_FUNCTION_54(v8);
  if (v15 || ((OUTLINED_FUNCTION_201(), swift_getEnumCaseMultiPayload() != 1) ? (sub_2574C401C(v3, v7, v6, v5, &qword_27F87A8A8, &qword_257777E20, type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType, type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType), v21 = OUTLINED_FUNCTION_201()) : (OUTLINED_FUNCTION_15_1(), sub_2574C2AC8(v16, v17, v18, v19), v9 = v4, OUTLINED_FUNCTION_20_3(), v21 = v8), sub_2574CB128(v21, v20), !v9))
  {
    type metadata accessor for Proto_DictionaryFeatureType(0);
    OUTLINED_FUNCTION_37_2(v7);
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2574C2AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A8, &qword_257777E20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_StringFeatureType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308(a1);
  v11 = type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A8A8, &qword_257777E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87AAB8, type metadata accessor for Proto_StringFeatureType, &unk_25774A1A0);
      sub_257743574();
      return sub_2574CB128(v10, type metadata accessor for Proto_StringFeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType);
  }

  __break(1u);
  return result;
}

void sub_2574C2CDC()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_6();
  v6 = OUTLINED_FUNCTION_201();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_75_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC58, &qword_25774A470);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_65(v1);
  if (v12)
  {
    OUTLINED_FUNCTION_65(v1 + v3);
    if (v12)
    {
      sub_2574695E4(v1, &qword_27F87A8A8, &qword_257777E20);
LABEL_12:
      type metadata accessor for Proto_DictionaryFeatureType(0);
      OUTLINED_FUNCTION_95_0();
      sub_2577431B4();
      OUTLINED_FUNCTION_0_15();
      v19 = sub_2574C9F70(v17, v18, MEMORY[0x277D216D0]);
      v14 = OUTLINED_FUNCTION_4_2(v19);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_257487308(v1);
  OUTLINED_FUNCTION_65(v1 + v3);
  if (v12)
  {
    OUTLINED_FUNCTION_20_3();
    sub_2574CB128(v2, v13);
LABEL_9:
    sub_2574695E4(v1, &qword_27F87AC58, &qword_25774A470);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_360();
  sub_2574BA0DC();
  v16 = v15;
  sub_2574CB128(v0, type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType);
  sub_2574CB128(v2, type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType);
  sub_2574695E4(v1, &qword_27F87A8A8, &qword_257777E20);
  if (v16)
  {
    goto LABEL_12;
  }

LABEL_10:
  v14 = 0;
LABEL_13:
  OUTLINED_FUNCTION_65_0(v14);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574C2F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87ABD0, type metadata accessor for Proto_DictionaryFeatureType, &unk_257749078);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574C301C(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_281537900, type metadata accessor for Proto_DictionaryFeatureType, &unk_257749F48);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574C30E4(uint64_t a1, uint64_t a2)
{
  sub_2574C9F70(&qword_281537900, type metadata accessor for Proto_DictionaryFeatureType, &unk_257749F48);

  return sub_257743424();
}

uint64_t sub_2574C3164()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E82C0);
  __swift_project_value_buffer(v0, qword_27F8E82C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "int64Type";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "stringType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 101;
  *v12 = "sizeRange";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574C3370()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 101:
        v11 = OUTLINED_FUNCTION_6_8();
        sub_2574C3DF0(v11, v12, v13, v14, v15);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_6_10();
        sub_2574C38F8(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_6_10();
        sub_2574C3400(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_2574C3400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_Int64FeatureType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A898, &unk_257777D20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB30, &qword_25774A3C0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_257487308(a1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87A898, &unk_257777D20);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB128(v14, type metadata accessor for Proto_SequenceFeatureType.OneOf_Type);
    }

    else
    {
      sub_2574695E4(v20, &qword_27F87AB30, &qword_25774A3C0);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_2574C9F70(&qword_281537B40, type metadata accessor for Proto_Int64FeatureType, &unk_25774A290);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87AB30, &qword_25774A3C0);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87AB30, &qword_25774A3C0);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87AB30, &qword_25774A3C0);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87AB30, &qword_25774A3C0);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F87A898, &unk_257777D20);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574C38F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_StringFeatureType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A898, &unk_257777D20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB40, &qword_25774A3D0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_257487308(a1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87A898, &unk_257777D20);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v20, &qword_27F87AB40, &qword_25774A3D0);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v14, type metadata accessor for Proto_SequenceFeatureType.OneOf_Type);
    }
  }

  sub_2574C9F70(&qword_27F87AAB8, type metadata accessor for Proto_StringFeatureType, &unk_25774A1A0);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87AB40, &qword_25774A3D0);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87AB40, &qword_25774A3D0);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87AB40, &qword_25774A3D0);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87AB40, &qword_25774A3D0);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F87A898, &unk_257777D20);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574C3DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for Proto_SizeRange(0);
  OUTLINED_FUNCTION_17_6();
  sub_2574C9F70(v5, v6, &unk_257749ED0);
  return sub_2577433D4();
}

void sub_2574C3E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_102_0();
  v9 = v4;
  OUTLINED_FUNCTION_76_0();
  v10 = OUTLINED_FUNCTION_311();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_66();
  sub_257487308(v14);
  type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  OUTLINED_FUNCTION_54(v8);
  if (v15 || ((OUTLINED_FUNCTION_201(), swift_getEnumCaseMultiPayload() != 1) ? (sub_2574C401C(v3, v7, v6, v5, &qword_27F87A898, &unk_257777D20, type metadata accessor for Proto_SequenceFeatureType.OneOf_Type, type metadata accessor for Proto_SequenceFeatureType.OneOf_Type), v21 = OUTLINED_FUNCTION_201()) : (OUTLINED_FUNCTION_15_1(), sub_2574C41E0(v16, v17, v18, v19), v9 = v4, OUTLINED_FUNCTION_19_4(), v21 = v8), sub_2574CB128(v21, v20), !v9))
  {
    OUTLINED_FUNCTION_15_1();
    sub_2574C43F4(v22, v23, v24, v25, v26, 101);
    if (!v4)
    {
      type metadata accessor for Proto_SequenceFeatureType(0);
      OUTLINED_FUNCTION_37_2(v7);
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2574C401C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_13(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74_0();
  type metadata accessor for Proto_Int64FeatureType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  v16 = OUTLINED_FUNCTION_264();
  sub_257487308(v16);
  v17 = a7(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v17) == 1)
  {
    result = sub_2574695E4(v8, a5, a6);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_281537B40, type metadata accessor for Proto_Int64FeatureType, &unk_25774A290);
      OUTLINED_FUNCTION_91_0();
      sub_257743574();
      OUTLINED_FUNCTION_10_9();
      return sub_2574CB128(v9, v18);
    }

    result = sub_2574CB128(v8, a8);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C41E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A898, &unk_257777D20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_StringFeatureType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308(a1);
  v11 = type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A898, &unk_257777D20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87AAB8, type metadata accessor for Proto_StringFeatureType, &unk_25774A1A0);
      sub_257743574();
      return sub_2574CB128(v10, type metadata accessor for Proto_StringFeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_SequenceFeatureType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C43F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v20[0] = a6;
  v20[1] = a3;
  v20[3] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A0, &unk_2577487A0);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  type metadata accessor for Proto_SizeRange(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  v14 = a5(0);
  sub_257487308(a1 + *(v14 + 24));
  OUTLINED_FUNCTION_54(v12);
  if (v15)
  {
    return sub_2574695E4(v12, &qword_27F87A8A0, &unk_2577487A0);
  }

  sub_2574CB180();
  OUTLINED_FUNCTION_17_6();
  sub_2574C9F70(v16, v17, &unk_257749ED0);
  sub_257743574();
  OUTLINED_FUNCTION_1_9();
  return sub_2574CB128(v6, v18);
}

void sub_2574C4598()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v47 = type metadata accessor for Proto_SizeRange(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v44 = (v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A0, &unk_2577487A0);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v45 = &v44 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ABF8, &unk_25774A420);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_32_3();
  type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A898, &unk_257777D20);
  OUTLINED_FUNCTION_13(v16);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC60, &qword_25774A478);
  OUTLINED_FUNCTION_13(v20);
  OUTLINED_FUNCTION_29();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v44 - v23;
  v25 = *(v22 + 56);
  v48 = v4;
  sub_257487308(v4);
  v49 = v2;
  sub_257487308(v2);
  OUTLINED_FUNCTION_6_9(v24);
  if (v26)
  {
    OUTLINED_FUNCTION_6_9(&v24[v25]);
    if (v26)
    {
      sub_2574695E4(v24, &qword_27F87A898, &unk_257777D20);
      goto LABEL_11;
    }

LABEL_9:
    v28 = &qword_27F87AC60;
    v29 = &qword_25774A478;
    v30 = v24;
LABEL_26:
    sub_2574695E4(v30, v28, v29);
LABEL_27:
    v37 = 0;
    goto LABEL_28;
  }

  sub_257487308(v24);
  OUTLINED_FUNCTION_6_9(&v24[v25]);
  if (v26)
  {
    OUTLINED_FUNCTION_19_4();
    sub_2574CB128(v19, v27);
    goto LABEL_9;
  }

  sub_2574CB180();
  sub_2574BA3A8();
  v32 = v31;
  sub_2574CB128(v15, type metadata accessor for Proto_SequenceFeatureType.OneOf_Type);
  sub_2574CB128(v19, type metadata accessor for Proto_SequenceFeatureType.OneOf_Type);
  sub_2574695E4(v24, &qword_27F87A898, &unk_257777D20);
  if ((v32 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_11:
  v33 = *(type metadata accessor for Proto_SequenceFeatureType(0) + 24);
  v34 = *(v46 + 48);
  sub_257487308(v48 + v33);
  sub_257487308(v49 + v33);
  if (__swift_getEnumTagSinglePayload(v0, 1, v47) == 1)
  {
    OUTLINED_FUNCTION_6_9(v0 + v34);
    if (!v26)
    {
      goto LABEL_19;
    }

    sub_2574695E4(v0, &qword_27F87A8A0, &unk_2577487A0);
  }

  else
  {
    v38 = v45;
    sub_257487308(v0);
    OUTLINED_FUNCTION_6_9(v0 + v34);
    if (v26)
    {
      OUTLINED_FUNCTION_1_9();
      sub_2574CB128(v38, v39);
LABEL_19:
      v28 = &qword_27F87ABF8;
      v29 = &unk_25774A420;
LABEL_25:
      v30 = v0;
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_18_5();
    v40 = v44;
    sub_2574CB180();
    if (*v38 != *v40 || v38[1] != v40[1])
    {
      sub_2574CB128(v40, type metadata accessor for Proto_SizeRange);
      sub_2574CB128(v38, type metadata accessor for Proto_SizeRange);
      v28 = &qword_27F87A8A0;
      v29 = &unk_2577487A0;
      goto LABEL_25;
    }

    sub_2577431B4();
    OUTLINED_FUNCTION_0_15();
    sub_2574C9F70(v41, v42, MEMORY[0x277D216D0]);
    v43 = sub_257743644();
    sub_2574CB128(v40, type metadata accessor for Proto_SizeRange);
    sub_2574CB128(v38, type metadata accessor for Proto_SizeRange);
    sub_2574695E4(v0, &qword_27F87A8A0, &unk_2577487A0);
    if ((v43 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  sub_2577431B4();
  OUTLINED_FUNCTION_0_15();
  sub_2574C9F70(v35, v36, MEMORY[0x277D216D0]);
  v37 = sub_257743644();
LABEL_28:
  OUTLINED_FUNCTION_65_0(v37);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574C4B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87ABC8, type metadata accessor for Proto_SequenceFeatureType, &unk_257748F88);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574C4BCC(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87A998, type metadata accessor for Proto_SequenceFeatureType, &unk_257749FC0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574C4C94(uint64_t a1, uint64_t a2)
{
  sub_2574C9F70(&qword_27F87A998, type metadata accessor for Proto_SequenceFeatureType, &unk_257749FC0);

  return sub_257743424();
}

uint64_t sub_2574C4D2C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2577435B4();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40);
  OUTLINED_FUNCTION_89_0();
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2577442B0;
  v12 = v11 + v10 + *(v4 + 56);
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21870];
  sub_257743584();
  OUTLINED_FUNCTION_4();
  (*(v14 + 104))(v12, v13);
  return sub_257743594();
}

uint64_t sub_2574C4E84()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_6_10();
      sub_2574C4ED0(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_2574C4ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v5 = type metadata accessor for Proto_ArrayFeatureType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8D0, &qword_257748898);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Proto_StateFeatureType.OneOf_Type(0);
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB50, &qword_25774A3E0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_257487308(a1);
  v24 = v11;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87A8D0, &qword_257748898);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    sub_2574695E4(v18, &qword_27F87AB50, &qword_25774A3E0);
    sub_2574CB180();
    sub_2574CB180();
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
  }

  sub_2574C9F70(&qword_281537BA8, type metadata accessor for Proto_ArrayFeatureType, &unk_25774A128);
  v20 = v27;
  sub_2577433D4();
  if (v20)
  {
    v21 = v18;
    return sub_2574695E4(v21, &qword_27F87AB50, &qword_25774A3E0);
  }

  sub_257487308(v18);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_2574695E4(v18, &qword_27F87AB50, &qword_25774A3E0);
    v21 = v16;
    return sub_2574695E4(v21, &qword_27F87AB50, &qword_25774A3E0);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  sub_2574695E4(v18, &qword_27F87AB50, &qword_25774A3E0);
  v23 = v25;
  sub_2574695E4(v25, &qword_27F87A8D0, &qword_257748898);
  sub_2574CB180();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
}

uint64_t sub_2574C5374(uint64_t a1)
{
  OUTLINED_FUNCTION_76_0();
  result = sub_2574C53E0(v1, v5, v4, v3);
  if (!v2)
  {
    type metadata accessor for Proto_StateFeatureType(0);
    return OUTLINED_FUNCTION_37_2(v5);
  }

  return result;
}

uint64_t sub_2574C53E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8D0, &qword_257748898);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_ArrayFeatureType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308(a1);
  v11 = type metadata accessor for Proto_StateFeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A8D0, &qword_257748898);
  }

  sub_2574CB180();
  sub_2574C9F70(&qword_281537BA8, type metadata accessor for Proto_ArrayFeatureType, &unk_25774A128);
  sub_257743574();
  return sub_2574CB128(v10, type metadata accessor for Proto_ArrayFeatureType);
}

void sub_2574C55BC()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_StateFeatureType.OneOf_Type(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_6();
  v6 = OUTLINED_FUNCTION_201();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_75_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC68, &unk_25774A480);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_65(v1);
  if (v12)
  {
    OUTLINED_FUNCTION_65(v1 + v3);
    if (v12)
    {
      sub_2574695E4(v1, &qword_27F87A8D0, &qword_257748898);
LABEL_12:
      type metadata accessor for Proto_StateFeatureType(0);
      OUTLINED_FUNCTION_95_0();
      sub_2577431B4();
      OUTLINED_FUNCTION_0_15();
      v17 = sub_2574C9F70(v15, v16, MEMORY[0x277D216D0]);
      v13 = OUTLINED_FUNCTION_4_2(v17);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_257487308(v1);
  OUTLINED_FUNCTION_65(v1 + v3);
  if (v12)
  {
    sub_2574CB128(v2, type metadata accessor for Proto_StateFeatureType.OneOf_Type);
LABEL_9:
    sub_2574695E4(v1, &qword_27F87AC68, &unk_25774A480);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_360();
  v14 = sub_2574BA6E8();
  sub_2574CB128(v0, type metadata accessor for Proto_StateFeatureType.OneOf_Type);
  sub_2574CB128(v2, type metadata accessor for Proto_StateFeatureType.OneOf_Type);
  sub_2574695E4(v1, &qword_27F87A8D0, &qword_257748898);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_10:
  v13 = 0;
LABEL_13:
  OUTLINED_FUNCTION_65_0(v13);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574C583C()
{
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_77_0();

  return v1(v0);
}

uint64_t sub_2574C58D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87ABA0, type metadata accessor for Proto_StateFeatureType, &unk_257748E98);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574C5970(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87A980, type metadata accessor for Proto_StateFeatureType, &unk_25774A0B0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574C5A38(uint64_t a1, uint64_t a2)
{
  sub_2574C9F70(&qword_27F87A980, type metadata accessor for Proto_StateFeatureType, &unk_25774A0B0);

  return sub_257743424();
}

uint64_t sub_2574C5AB8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E82F0);
  __swift_project_value_buffer(v0, qword_27F8E82F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_257748730;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "int64Type";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "doubleType";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "stringType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "imageType";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "multiArrayType";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "dictionaryType";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "sequenceType";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "stateType";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 1000;
  *v22 = "isOptional";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v7();
  return sub_257743594();
}

uint64_t sub_2574C5E30()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_6_10();
        sub_2574C5F28(v3, v4, v5, v6);
        break;
      case 2:
        v27 = OUTLINED_FUNCTION_6_10();
        sub_2574C6420(v27, v28, v29, v30);
        break;
      case 3:
        v15 = OUTLINED_FUNCTION_6_10();
        sub_2574C6918(v15, v16, v17, v18);
        break;
      case 4:
        v19 = OUTLINED_FUNCTION_6_10();
        sub_2574C6E10(v19, v20, v21, v22);
        break;
      case 5:
        v11 = OUTLINED_FUNCTION_6_10();
        sub_2574C7308(v11, v12, v13, v14);
        break;
      case 6:
        v31 = OUTLINED_FUNCTION_6_10();
        sub_2574C7800(v31, v32, v33, v34);
        break;
      case 7:
        v35 = OUTLINED_FUNCTION_6_10();
        sub_2574C7CF8(v35, v36, v37, v38);
        break;
      case 8:
        v23 = OUTLINED_FUNCTION_6_10();
        sub_2574C81F0(v23, v24, v25, v26);
        break;
      default:
        if (result == 1000)
        {
          v7 = OUTLINED_FUNCTION_6_8();
          sub_2574C86E8(v7, v8, v9, v10);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2574C5F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_Int64FeatureType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB30, &qword_25774A3C0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_257487308(a1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2574CB128(v14, type metadata accessor for Proto_FeatureType.OneOf_Type);
    }

    else
    {
      sub_2574695E4(v20, &qword_27F87AB30, &qword_25774A3C0);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_2574C9F70(&qword_281537B40, type metadata accessor for Proto_Int64FeatureType, &unk_25774A290);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87AB30, &qword_25774A3C0);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87AB30, &qword_25774A3C0);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87AB30, &qword_25774A3C0);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87AB30, &qword_25774A3C0);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F879C28, &qword_257744540);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574C6420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_DoubleFeatureType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB38, &qword_25774A3C8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_257487308(a1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v20, &qword_27F87AB38, &qword_25774A3C8);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v14, type metadata accessor for Proto_FeatureType.OneOf_Type);
    }
  }

  sub_2574C9F70(&qword_27F87AAD0, type metadata accessor for Proto_DoubleFeatureType, &unk_25774A218);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87AB38, &qword_25774A3C8);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87AB38, &qword_25774A3C8);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87AB38, &qword_25774A3C8);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87AB38, &qword_25774A3C8);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F879C28, &qword_257744540);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574C6918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_StringFeatureType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB40, &qword_25774A3D0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_257487308(a1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2574695E4(v20, &qword_27F87AB40, &qword_25774A3D0);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v14, type metadata accessor for Proto_FeatureType.OneOf_Type);
    }
  }

  sub_2574C9F70(&qword_27F87AAB8, type metadata accessor for Proto_StringFeatureType, &unk_25774A1A0);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87AB40, &qword_25774A3D0);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87AB40, &qword_25774A3D0);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87AB40, &qword_25774A3D0);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87AB40, &qword_25774A3D0);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F879C28, &qword_257744540);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574C6E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_ImageFeatureType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB48, &qword_25774A3D8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_257487308(a1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574695E4(v20, &qword_27F87AB48, &qword_25774A3D8);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v14, type metadata accessor for Proto_FeatureType.OneOf_Type);
    }
  }

  sub_2574C9F70(&qword_27F87AA90, type metadata accessor for Proto_ImageFeatureType, &unk_25774A038);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87AB48, &qword_25774A3D8);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87AB48, &qword_25774A3D8);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87AB48, &qword_25774A3D8);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87AB48, &qword_25774A3D8);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F879C28, &qword_257744540);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574C7308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_ArrayFeatureType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB50, &qword_25774A3E0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_257487308(a1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2574695E4(v20, &qword_27F87AB50, &qword_25774A3E0);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v14, type metadata accessor for Proto_FeatureType.OneOf_Type);
    }
  }

  sub_2574C9F70(&qword_281537BA8, type metadata accessor for Proto_ArrayFeatureType, &unk_25774A128);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87AB50, &qword_25774A3E0);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87AB50, &qword_25774A3E0);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87AB50, &qword_25774A3E0);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87AB50, &qword_25774A3E0);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F879C28, &qword_257744540);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574C7800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_DictionaryFeatureType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB58, &qword_25774A3E8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_257487308(a1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2574695E4(v20, &qword_27F87AB58, &qword_25774A3E8);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v14, type metadata accessor for Proto_FeatureType.OneOf_Type);
    }
  }

  sub_2574C9F70(&qword_281537900, type metadata accessor for Proto_DictionaryFeatureType, &unk_257749F48);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87AB58, &qword_25774A3E8);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87AB58, &qword_25774A3E8);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87AB58, &qword_25774A3E8);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87AB58, &qword_25774A3E8);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F879C28, &qword_257744540);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574C7CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_SequenceFeatureType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB60, &qword_25774A3F0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_257487308(a1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2574695E4(v20, &qword_27F87AB60, &qword_25774A3F0);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v14, type metadata accessor for Proto_FeatureType.OneOf_Type);
    }
  }

  sub_2574C9F70(&qword_27F87A998, type metadata accessor for Proto_SequenceFeatureType, &unk_257749FC0);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87AB60, &qword_25774A3F0);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87AB60, &qword_25774A3F0);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87AB60, &qword_25774A3F0);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87AB60, &qword_25774A3F0);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F879C28, &qword_257744540);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_2574C81F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_StateFeatureType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB68, &qword_25774A3F8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_257487308(a1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_2574695E4(v20, &qword_27F87AB68, &qword_25774A3F8);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v14, type metadata accessor for Proto_FeatureType.OneOf_Type);
    }
  }

  sub_2574C9F70(&qword_27F87A980, type metadata accessor for Proto_StateFeatureType, &unk_25774A0B0);
  v21 = v31;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87AB68, &qword_25774A3F8);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87AB68, &qword_25774A3F8);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87AB68, &qword_25774A3F8);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v29;
  sub_2574695E4(v20, &qword_27F87AB68, &qword_25774A3F8);
  v25 = v27;
  sub_2574695E4(v27, &qword_27F879C28, &qword_257744540);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

void sub_2574C874C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_102_0();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_2_7();
  v22 = OUTLINED_FUNCTION_311();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_13(v24);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  v27 = &a9 - v26;
  OUTLINED_FUNCTION_66();
  sub_257487308(v28);
  type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  OUTLINED_FUNCTION_54(v27);
  if (!v29)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v51 = OUTLINED_FUNCTION_3_9();
        sub_2574C8B04(v51, v52, v53, v54);
        goto LABEL_12;
      case 2u:
        v38 = OUTLINED_FUNCTION_3_9();
        sub_2574C8D18(v38, v39, v40, v41);
        goto LABEL_12;
      case 3u:
        v42 = OUTLINED_FUNCTION_3_9();
        sub_2574C8F2C(v42, v43, v44, v45);
        goto LABEL_12;
      case 4u:
        v34 = OUTLINED_FUNCTION_3_9();
        sub_2574C9140(v34, v35, v36, v37);
        goto LABEL_12;
      case 5u:
        v55 = OUTLINED_FUNCTION_3_9();
        sub_2574C9354(v55, v56, v57, v58);
        goto LABEL_12;
      case 6u:
        v59 = OUTLINED_FUNCTION_3_9();
        sub_2574C9568(v59, v60, v61, v62);
        goto LABEL_12;
      case 7u:
        v46 = OUTLINED_FUNCTION_3_9();
        sub_2574C977C(v46, v47, v48, v49);
        if (v18)
        {
          OUTLINED_FUNCTION_4_6();
          sub_2574CB128(v27, v50);
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_4_6();
        sub_2574CB128(v27, v64);
        break;
      default:
        v30 = OUTLINED_FUNCTION_3_9();
        sub_2574C88F4(v30, v31, v32, v33);
LABEL_12:
        OUTLINED_FUNCTION_4_6();
        sub_2574CB128(v27, v63);
        if (!v18)
        {
          break;
        }

        goto LABEL_16;
    }
  }

  if (*(v19 + *(type metadata accessor for Proto_FeatureType(0) + 20)) != 1 || (OUTLINED_FUNCTION_12_8(), sub_2577434B4(), !v18))
  {
    OUTLINED_FUNCTION_7_5();
  }

LABEL_16:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2574C88F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Int64FeatureType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308(a1);
  v11 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_281537B40, type metadata accessor for Proto_Int64FeatureType, &unk_25774A290);
      sub_257743574();
      return sub_2574CB128(v10, type metadata accessor for Proto_Int64FeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_FeatureType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C8B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_DoubleFeatureType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308(a1);
  v11 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87AAD0, type metadata accessor for Proto_DoubleFeatureType, &unk_25774A218);
      sub_257743574();
      return sub_2574CB128(v10, type metadata accessor for Proto_DoubleFeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_FeatureType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C8D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_StringFeatureType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308(a1);
  v11 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87AAB8, type metadata accessor for Proto_StringFeatureType, &unk_25774A1A0);
      sub_257743574();
      return sub_2574CB128(v10, type metadata accessor for Proto_StringFeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_FeatureType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C8F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_ImageFeatureType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308(a1);
  v11 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87AA90, type metadata accessor for Proto_ImageFeatureType, &unk_25774A038);
      sub_257743574();
      return sub_2574CB128(v10, type metadata accessor for Proto_ImageFeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_FeatureType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C9140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_ArrayFeatureType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308(a1);
  v11 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_281537BA8, type metadata accessor for Proto_ArrayFeatureType, &unk_25774A128);
      sub_257743574();
      return sub_2574CB128(v10, type metadata accessor for Proto_ArrayFeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_FeatureType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C9354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_DictionaryFeatureType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308(a1);
  v11 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_281537900, type metadata accessor for Proto_DictionaryFeatureType, &unk_257749F48);
      sub_257743574();
      return sub_2574CB128(v10, type metadata accessor for Proto_DictionaryFeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_FeatureType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C9568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_SequenceFeatureType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308(a1);
  v11 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87A998, type metadata accessor for Proto_SequenceFeatureType, &unk_257749FC0);
      sub_257743574();
      return sub_2574CB128(v10, type metadata accessor for Proto_SequenceFeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_FeatureType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C977C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_StateFeatureType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308(a1);
  v11 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87A980, type metadata accessor for Proto_StateFeatureType, &unk_25774A0B0);
      sub_257743574();
      return sub_2574CB128(v10, type metadata accessor for Proto_StateFeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_FeatureType.OneOf_Type);
  }

  __break(1u);
  return result;
}

void sub_2574C9990()
{
  OUTLINED_FUNCTION_31();
  v6 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_FeatureType.OneOf_Type(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_6();
  v8 = OUTLINED_FUNCTION_201();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_75_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C30, &qword_257744548);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_65(v3);
  if (!v14)
  {
    sub_257487308(v3);
    OUTLINED_FUNCTION_65(v3 + v5);
    if (!v14)
    {
      OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_360();
      sub_2574BA824();
      v17 = v16;
      sub_2574CB128(v2, type metadata accessor for Proto_FeatureType.OneOf_Type);
      sub_2574CB128(v4, type metadata accessor for Proto_FeatureType.OneOf_Type);
      sub_2574695E4(v3, &qword_27F879C28, &qword_257744540);
      if ((v17 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_4_6();
    sub_2574CB128(v4, v15);
LABEL_9:
    sub_2574695E4(v3, &qword_27F879C30, &qword_257744548);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_65(v3 + v5);
  if (!v14)
  {
    goto LABEL_9;
  }

  sub_2574695E4(v3, &qword_27F879C28, &qword_257744540);
LABEL_11:
  v18 = type metadata accessor for Proto_FeatureType(0);
  if (*(v1 + *(v18 + 20)) == *(v0 + *(v18 + 20)))
  {
    sub_2577431B4();
    OUTLINED_FUNCTION_0_15();
    v22 = sub_2574C9F70(v20, v21, MEMORY[0x277D216D0]);
    v19 = OUTLINED_FUNCTION_4_2(v22);
    goto LABEL_13;
  }

LABEL_12:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_65_0(v19);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574C9BC0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_257743A14();
  a1(0);
  v6 = OUTLINED_FUNCTION_176();
  sub_2574C9F70(v6, v7, a4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574C9C64()
{
  sub_2577431B4();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_77_0();

  return v1(v0);
}

uint64_t sub_2574C9CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87AB28, type metadata accessor for Proto_FeatureType, &unk_257748DA8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574C9D98(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_281537E88, type metadata accessor for Proto_FeatureType, &unk_25774A308);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574C9E60(uint64_t a1, uint64_t a2)
{
  sub_2574C9F70(&qword_281537E88, type metadata accessor for Proto_FeatureType, &unk_25774A308);

  return sub_257743424();
}

uint64_t sub_2574C9F70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2574CB128(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2574CB180()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_205();
  v4(v3);
  return v0;
}

unint64_t sub_2574CB1D4()
{
  result = qword_281537C00;
  if (!qword_281537C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281537C00);
  }

  return result;
}

unint64_t sub_2574CB228()
{
  result = qword_27F87ABB0;
  if (!qword_27F87ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87ABB0);
  }

  return result;
}

uint64_t sub_2574CB27C()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_205();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_37_2(uint64_t a1)
{

  return sub_257743194();
}

uint64_t OUTLINED_FUNCTION_56_0()
{

  return sub_257487308(v0);
}

uint64_t OUTLINED_FUNCTION_67_0()
{

  return sub_257487308(v0);
}

uint64_t OUTLINED_FUNCTION_68_0(uint64_t a1)
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_79_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_81_0()
{
  v1 = *v0;
  if (*v0 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_86_0()
{

  return sub_2574CB180();
}

uint64_t OUTLINED_FUNCTION_94_0(uint64_t result, __int16 a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  *(v2 + 9) = HIBYTE(a2) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_100_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_101_0(uint64_t a1)
{

  return sub_257487308(a1);
}

uint64_t sub_2574CB8B4(uint64_t a1)
{
  result = sub_2577431B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2574CB980(uint64_t a1)
{
  sub_2574CBA04(319);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574CBA04(uint64_t a1)
{
  if (!qword_27F87AC80)
  {
    type metadata accessor for Proto_FeatureVectorizer.InputColumn(255);
    v1 = sub_257743774();
    if (!v2)
    {
      atomic_store(v1, &qword_27F87AC80);
    }
  }
}

uint64_t sub_2574CBA5C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  type metadata accessor for Proto_FeatureVectorizer.InputColumn(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574CBA9C@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_FeatureVectorizer(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574CBADC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8308);
  __swift_project_value_buffer(v0, qword_27F8E8308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2577442B0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "inputList";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_257743594();
}

uint64_t sub_2574CBC48()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v2 || (v6 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2574CBCA4(v1, v0, v4, v3);
    }
  }

  return result;
}

uint64_t sub_2574CBCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_FeatureVectorizer.InputColumn(0);
  sub_2574CC870(&qword_27F87AC88, type metadata accessor for Proto_FeatureVectorizer.InputColumn, &unk_25774A648);
  return sub_2577433C4();
}

uint64_t sub_2574CBD44()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v1 + 16) || (type metadata accessor for Proto_FeatureVectorizer.InputColumn(0), sub_2574CC870(&qword_27F87AC88, type metadata accessor for Proto_FeatureVectorizer.InputColumn, &unk_25774A648), result = sub_257743564(), !v0))
  {
    type metadata accessor for Proto_FeatureVectorizer(0);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_2574CBE0C()
{
  sub_257479344();
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_FeatureVectorizer(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_16();
  v3 = sub_2574CC870(v1, v2, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v3) & 1;
}

uint64_t sub_2574CBEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574CC870(&qword_27F87ACC8, type metadata accessor for Proto_FeatureVectorizer, &unk_25774A610);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574CBF84(uint64_t a1)
{
  v2 = sub_2574CC870(&qword_27F87AC98, type metadata accessor for Proto_FeatureVectorizer, &unk_25774A6C0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574CC04C(uint64_t a1, uint64_t a2)
{
  sub_2574CC870(&qword_27F87AC98, type metadata accessor for Proto_FeatureVectorizer, &unk_25774A6C0);

  return sub_257743424();
}

uint64_t sub_2574CC0CC()
{
  result = MEMORY[0x259C64E90](0x6F437475706E492ELL, 0xEC0000006E6D756CLL);
  qword_27F8E8320 = 0xD000000000000017;
  *algn_27F8E8328 = 0x800000025777AAE0;
  return result;
}

uint64_t sub_2574CC140()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8330);
  __swift_project_value_buffer(v0, qword_27F8E8330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "inputColumn";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "inputDimensions";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574CC308()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_2577433B4();
    }

    else if (result == 1)
    {
      sub_257743394();
    }
  }

  return result;
}

uint64_t sub_2574CC380()
{
  OUTLINED_FUNCTION_2_7();
  v3 = v1[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_257743534(), !v0))
  {
    if (!*(v2 + 16) || (result = sub_257743554(), !v0))
    {
      type metadata accessor for Proto_FeatureVectorizer.InputColumn(0);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_2574CC428(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_257743994() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for Proto_FeatureVectorizer.InputColumn(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_16();
  v7 = sub_2574CC870(v5, v6, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v7) & 1;
}

uint64_t sub_2574CC4D4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_257743A14();
  a1(0);
  sub_2574CC870(a2, a3, a4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574CC560()
{
  if (qword_27F878EF8 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8E8320;

  return v0;
}

uint64_t sub_2574CC5F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574CC870(&qword_27F87ACD0, type metadata accessor for Proto_FeatureVectorizer.InputColumn, &unk_25774A560);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574CC698(uint64_t a1)
{
  v2 = sub_2574CC870(&qword_27F87AC88, type metadata accessor for Proto_FeatureVectorizer.InputColumn, &unk_25774A648);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574CC760(uint64_t a1, uint64_t a2)
{
  sub_2574CC870(&qword_27F87AC88, type metadata accessor for Proto_FeatureVectorizer.InputColumn, &unk_25774A648);

  return sub_257743424();
}

uint64_t sub_2574CC870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_7_7@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

void sub_2574CCAE8(uint64_t a1)
{
  sub_2574CCB94(319);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574CCB94(uint64_t a1)
{
  if (!qword_281537808)
  {
    type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(255);
    v1 = sub_2577437B4();
    if (!v2)
    {
      atomic_store(v1, &qword_281537808);
    }
  }
}

uint64_t sub_2574CCC0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_StringVector(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_257450DE4);
}

uint64_t sub_2574CCC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Proto_StringVector(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_257450E5C);
}

uint64_t sub_2574CCCCC(uint64_t a1)
{
  v2 = type metadata accessor for Proto_StringVector(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_2574CCD74(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Proto_StringVector(0);
  OUTLINED_FUNCTION_4();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v21 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD08, &qword_25774A9A0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  v14 = *(v11 + 56);
  sub_2574CE3AC(a1, &v21 - v12);
  sub_2574CE3AC(a2, &v13[v14]);
  sub_2574CE350(v13, v9, type metadata accessor for Proto_StringVector);
  sub_2574CE350(&v13[v14], v7, type metadata accessor for Proto_StringVector);
  if (sub_257479C78(*v9, *v7))
  {
    sub_2577431B4();
    OUTLINED_FUNCTION_1_10();
    sub_2574CE220(v15, v16, MEMORY[0x277D216D0]);
    v17 = sub_257743644();
    sub_2574CE2F8(v7, type metadata accessor for Proto_StringVector);
    sub_2574CE2F8(v9, type metadata accessor for Proto_StringVector);
    if (v17)
    {
      return 1;
    }
  }

  else
  {
    sub_2574CE2F8(v7, type metadata accessor for Proto_StringVector);
    v19 = OUTLINED_FUNCTION_205();
    sub_2574CE2F8(v19, v20);
  }

  return 0;
}

uint64_t sub_2574CCF78@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = xmmword_257745740;
  v2 = *(type metadata accessor for Proto_CoreMLModels_Gazetteer(0) + 28);
  v3 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(a1 + v2, 1, 1, v3);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574CCFF0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8348);
  __swift_project_value_buffer(v0, qword_27F8E8348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "revision";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 10;
  *v10 = "language";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 100;
  *v12 = "modelParameterData";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 200;
  *v14 = "stringClassLabels";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574CD238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_257743234();
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 200:
        v8 = OUTLINED_FUNCTION_205();
        sub_2574CD2F0(v8, v9, a2, a3);
        break;
      case 10:
        OUTLINED_FUNCTION_10_7();
        sub_257743394();
        break;
      case 100:
        OUTLINED_FUNCTION_10_7();
        sub_2577432D4();
        break;
      case 1:
        OUTLINED_FUNCTION_10_7();
        sub_2577433A4();
        break;
    }
  }

  return result;
}

uint64_t sub_2574CD2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v41 = a2;
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = MEMORY[0x28223BE20](v5);
  v37 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A878, &unk_257748700);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v33 - v23;
  __swift_storeEnumTagSinglePayload(&v33 - v23, 1, 1, v5);
  v25 = *(type metadata accessor for Proto_CoreMLModels_Gazetteer(0) + 28);
  v36 = a1;
  v34 = v25;
  sub_2574AD5D8(a1 + v25, v12, &qword_27F87ACD8, &unk_25774A7C0);
  v35 = v13;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87ACD8, &unk_25774A7C0);
  }

  else
  {
    sub_2574CE350(v12, v18, type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels);
    sub_2574CE350(v18, v16, type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels);
    sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
    sub_2574CE350(v16, v9, type metadata accessor for Proto_StringVector);
    sub_2574CE350(v9, v24, type metadata accessor for Proto_StringVector);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
  }

  sub_2574CE220(&qword_27F87A748, type metadata accessor for Proto_StringVector, &unk_257747E64);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v24;
    return sub_2574695E4(v28, &qword_27F87A878, &unk_257748700);
  }

  sub_2574AD5D8(v24, v22, &qword_27F87A878, &unk_257748700);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
    v28 = v22;
    return sub_2574695E4(v28, &qword_27F87A878, &unk_257748700);
  }

  v30 = v37;
  sub_2574CE350(v22, v37, type metadata accessor for Proto_StringVector);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
  v31 = v36;
  v32 = v34;
  sub_2574695E4(v36 + v34, &qword_27F87ACD8, &unk_25774A7C0);
  sub_2574CE350(v30, v31 + v32, type metadata accessor for Proto_StringVector);
  return __swift_storeEnumTagSinglePayload(v31 + v32, 0, 1, v35);
}

uint64_t sub_2574CD7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (!*v3 || (result = sub_257743544(), !v4))
  {
    v10 = *(v3 + 16);
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v11 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v5 = v4) == 0))
    {
      if (sub_2576FF394(*(v3 + 24), *(v3 + 32)) || (OUTLINED_FUNCTION_3_10(), result = sub_2577434D4(), (v5 = v4) == 0))
      {
        result = sub_2574CD8BC(v3, a1, a2, a3);
        if (!v5)
        {
          type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
          OUTLINED_FUNCTION_10_7();
          return sub_257743194();
        }
      }
    }
  }

  return result;
}

uint64_t sub_2574CD8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_StringVector(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
  sub_2574AD5D8(a1 + *(v11 + 28), v7, &qword_27F87ACD8, &unk_25774A7C0);
  v12 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87ACD8, &unk_25774A7C0);
  }

  sub_2574CE350(v7, v10, type metadata accessor for Proto_StringVector);
  sub_2574CE220(&qword_27F87A748, type metadata accessor for Proto_StringVector, &unk_257747E64);
  sub_257743574();
  return sub_2574CE2F8(v10, type metadata accessor for Proto_StringVector);
}

uint64_t _s20MLModelSpecification22GazetteerConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD10, &qword_25774A9A8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_17;
  }

  v14 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v14 && (sub_257743994() & 1) == 0 || (MEMORY[0x259C648D0](*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)) & 1) == 0)
  {
    goto LABEL_17;
  }

  v24 = type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
  v15 = *(v24 + 28);
  v16 = *(v10 + 48);
  sub_2574AD5D8(a1 + v15, v13, &qword_27F87ACD8, &unk_25774A7C0);
  sub_2574AD5D8(a2 + v15, &v13[v16], &qword_27F87ACD8, &unk_25774A7C0);
  OUTLINED_FUNCTION_65(v13);
  if (v14)
  {
    OUTLINED_FUNCTION_65(&v13[v16]);
    if (v14)
    {
      sub_2574695E4(v13, &qword_27F87ACD8, &unk_25774A7C0);
LABEL_20:
      sub_2577431B4();
      OUTLINED_FUNCTION_1_10();
      sub_2574CE220(v21, v22, MEMORY[0x277D216D0]);
      v18 = sub_257743644();
      return v18 & 1;
    }

    goto LABEL_16;
  }

  sub_2574AD5D8(v13, v9, &qword_27F87ACD8, &unk_25774A7C0);
  OUTLINED_FUNCTION_65(&v13[v16]);
  if (v17)
  {
    sub_2574CE2F8(v9, type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels);
LABEL_16:
    sub_2574695E4(v13, &qword_27F87AD10, &qword_25774A9A8);
    goto LABEL_17;
  }

  sub_2574CE350(&v13[v16], v6, type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels);
  v20 = sub_2574CCD74(v9, v6);
  sub_2574CE2F8(v6, type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels);
  sub_2574CE2F8(v9, type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels);
  sub_2574695E4(v13, &qword_27F87ACD8, &unk_25774A7C0);
  if (v20)
  {
    goto LABEL_20;
  }

LABEL_17:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_2574CDDBC()
{
  sub_257743A14();
  type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
  sub_2574CE220(&qword_27F87ACF0, type metadata accessor for Proto_CoreMLModels_Gazetteer, &unk_25774A854);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574CDE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2574CDED8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2574CDF7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574CE220(&qword_27F87AD00, type metadata accessor for Proto_CoreMLModels_Gazetteer, &unk_25774A8E4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574CDFF8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F878F08 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8E8348);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2574CE0A0(uint64_t a1)
{
  v2 = sub_2574CE220(&qword_27F87ACE8, type metadata accessor for Proto_CoreMLModels_Gazetteer, &unk_25774A91C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574CE110(uint64_t a1, uint64_t a2)
{
  sub_2574CE220(&qword_27F87ACE8, type metadata accessor for Proto_CoreMLModels_Gazetteer, &unk_25774A91C);

  return sub_257743424();
}

uint64_t sub_2574CE220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2574CE2F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2574CE350(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_205();
  v5(v4);
  return a2;
}

uint64_t sub_2574CE3AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2574CE498(uint64_t a1)
{
  sub_2574CE634(319, &qword_27F87AD20, type metadata accessor for Proto_GLMClassifier.DoubleArray, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2574CE5E4();
    if (v2 <= 0x3F)
    {
      sub_2574CE634(319, &qword_281537D80, type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2577431B4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2574CE5E4()
{
  if (!qword_27F87A678)
  {
    v0 = sub_257743774();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87A678);
    }
  }
}

void sub_2574CE634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2574CE700(uint64_t a1)
{
  sub_2574CE5E4();
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2574CE784(uint64_t a1, uint64_t a2)
{
  v42[1] = type metadata accessor for Proto_Int64Vector(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  type metadata accessor for Proto_StringVector(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = (v10 - v9);
  type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (v42 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ADB8, &qword_25774AFD8);
  OUTLINED_FUNCTION_29();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v42 - v20;
  v22 = *(v19 + 56);
  sub_2574D1A3C(a1, v42 - v20);
  sub_2574D1A3C(a2, &v21[v22]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2574D1A3C(v21, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574D19E4();
      if (sub_257487374())
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_2_12();
        sub_2574D16EC(v23, v24, MEMORY[0x277D216D0]);
        v25 = sub_257743644();
        OUTLINED_FUNCTION_1_11();
        sub_2574D198C(v7, v26);
        if (v25)
        {
          OUTLINED_FUNCTION_1_11();
          v28 = v15;
LABEL_13:
          sub_2574D198C(v28, v27);
          OUTLINED_FUNCTION_3_11();
          sub_2574D198C(v21, v35);
          return 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_11();
        sub_2574D198C(v7, v37);
      }

      OUTLINED_FUNCTION_1_11();
      v39 = v15;
LABEL_18:
      sub_2574D198C(v39, v38);
      OUTLINED_FUNCTION_3_11();
      sub_2574D198C(v21, v41);
      return 0;
    }

    OUTLINED_FUNCTION_1_11();
    v30 = v15;
  }

  else
  {
    sub_2574D1A3C(v21, v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574D19E4();
      if (sub_257479C78(*v17, *v11))
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_2_12();
        sub_2574D16EC(v31, v32, MEMORY[0x277D216D0]);
        v33 = sub_257743644();
        OUTLINED_FUNCTION_0_17();
        sub_2574D198C(v11, v34);
        if (v33)
        {
          OUTLINED_FUNCTION_0_17();
          v28 = v17;
          goto LABEL_13;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_17();
        sub_2574D198C(v11, v40);
      }

      OUTLINED_FUNCTION_0_17();
      v39 = v17;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_0_17();
    v30 = v17;
  }

  sub_2574D198C(v30, v29);
  sub_2574695E4(v21, &qword_27F87ADB8, &qword_25774AFD8);
  return 0;
}

uint64_t sub_2574CEB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574D18E4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_2574CEBCC()
{
  result = qword_27F87AD28;
  if (!qword_27F87AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87AD28);
  }

  return result;
}

unint64_t sub_2574CEC54()
{
  result = qword_27F87AD40;
  if (!qword_27F87AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87AD40);
  }

  return result;
}

unint64_t sub_2574CECAC()
{
  result = qword_27F87AD48;
  if (!qword_27F87AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87AD48);
  }

  return result;
}

uint64_t sub_2574CEDA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574D1938();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_2574CEE04()
{
  result = qword_27F87AD50;
  if (!qword_27F87AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87AD50);
  }

  return result;
}

unint64_t sub_2574CEE8C()
{
  result = qword_27F87AD68;
  if (!qword_27F87AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87AD68);
  }

  return result;
}

unint64_t sub_2574CEEE4()
{
  result = qword_27F87AD70;
  if (!qword_27F87AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87AD70);
  }

  return result;
}

uint64_t sub_2574CEF38@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_GLMClassifier.DoubleArray(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574CEF78@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v3 = *(type metadata accessor for Proto_GLMClassifier(0) + 32);
  v4 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574CEFF8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8360);
  __swift_project_value_buffer(v0, qword_27F8E8360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257745520;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "weights";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "offset";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "postEvaluationTransform";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "classEncoding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 100;
  *v16 = "stringClassLabels";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 101;
  *v18 = "int64ClassLabels";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574CF2BC()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_11_6();
        sub_2574CF3B8(v3, v4, v5, v6);
        break;
      case 2:
        sub_257743334();
        break;
      case 3:
        OUTLINED_FUNCTION_11_6();
        sub_2574CF458(v15, v16);
        break;
      case 4:
        OUTLINED_FUNCTION_11_6();
        sub_2574CF4C0(v17, v18);
        break;
      default:
        if (result == 100)
        {
          OUTLINED_FUNCTION_205();
          OUTLINED_FUNCTION_11_6();
          sub_2574CF528(v11, v12, v13, v14);
        }

        else if (result == 101)
        {
          OUTLINED_FUNCTION_205();
          OUTLINED_FUNCTION_11_6();
          sub_2574CFA2C(v7, v8, v9, v10);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2574CF3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_GLMClassifier.DoubleArray(0);
  sub_2574D16EC(&qword_281537DB0, type metadata accessor for Proto_GLMClassifier.DoubleArray, &unk_25774AD98);
  return sub_2577433C4();
}

uint64_t sub_2574CF528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A878, &unk_257748700);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  __swift_storeEnumTagSinglePayload(&v27 - v19, 1, 1, v5);
  v27 = *(type metadata accessor for Proto_GLMClassifier(0) + 32);
  v28 = a1;
  sub_257487308(a1 + v27);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v30 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87AD18, &unk_25774A9B0);
  }

  else
  {
    sub_2574D19E4();
    sub_2574D19E4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574D198C(v14, type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels);
    }

    else
    {
      sub_2574695E4(v20, &qword_27F87A878, &unk_257748700);
      sub_2574D19E4();
      sub_2574D19E4();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_2574D16EC(&qword_27F87A748, type metadata accessor for Proto_StringVector, &unk_257747E64);
  v21 = v32;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87A878, &unk_257748700);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87A878, &unk_257748700);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87A878, &unk_257748700);
  }

  sub_2574D19E4();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v30;
  sub_2574695E4(v20, &qword_27F87A878, &unk_257748700);
  v26 = v27;
  v25 = v28;
  sub_2574695E4(v28 + v27, &qword_27F87AD18, &unk_25774A9B0);
  sub_2574D19E4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25 + v26, 0, 1, v24);
}

uint64_t sub_2574CFA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for Proto_Int64Vector(0);
  v6 = MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A880, &qword_25774AFD0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  __swift_storeEnumTagSinglePayload(&v27 - v19, 1, 1, v5);
  v27 = *(type metadata accessor for Proto_GLMClassifier(0) + 32);
  v28 = a1;
  sub_257487308(a1 + v27);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v30 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87AD18, &unk_25774A9B0);
  }

  else
  {
    sub_2574D19E4();
    sub_2574D19E4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v20, &qword_27F87A880, &qword_25774AFD0);
      sub_2574D19E4();
      sub_2574D19E4();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_2574D198C(v14, type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels);
    }
  }

  sub_2574D16EC(&qword_281537E60, type metadata accessor for Proto_Int64Vector, &unk_257747CFC);
  v21 = v32;
  sub_2577433D4();
  if (v21)
  {
    v22 = v20;
    return sub_2574695E4(v22, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_257487308(v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_2574695E4(v20, &qword_27F87A880, &qword_25774AFD0);
    v22 = v18;
    return sub_2574695E4(v22, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_2574D19E4();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v24 = v30;
  sub_2574695E4(v20, &qword_27F87A880, &qword_25774AFD0);
  v26 = v27;
  v25 = v28;
  sub_2574695E4(v28 + v27, &qword_27F87AD18, &unk_25774A9B0);
  sub_2574D19E4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25 + v26, 0, 1, v24);
}

uint64_t sub_2574CFF30()
{
  OUTLINED_FUNCTION_2_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  if (!*(*v1 + 16) || (type metadata accessor for Proto_GLMClassifier.DoubleArray(0), sub_2574D16EC(&qword_281537DB0, type metadata accessor for Proto_GLMClassifier.DoubleArray, &unk_25774AD98), OUTLINED_FUNCTION_27_4(), result = sub_257743564(), (v0 = v2) == 0))
  {
    if (!*(*(v3 + 8) + 16) || (v2 = v0, OUTLINED_FUNCTION_11_6(), result = sub_257743494(), !v0))
    {
      if (!*(v3 + 16) || (v8 = *(v3 + 24), v22 = *(v3 + 16), v23 = v8, sub_2574D18E4(), OUTLINED_FUNCTION_27_4(), result = sub_2577434C4(), (v0 = v2) == 0))
      {
        if (!*(v3 + 32) || (v9 = *(v3 + 40), v22 = *(v3 + 32), v23 = v9, sub_2574D1938(), OUTLINED_FUNCTION_27_4(), result = sub_2577434C4(), (v0 = v2) == 0))
        {
          v10 = type metadata accessor for Proto_GLMClassifier(0);
          sub_257487308(v3 + *(v10 + 32));
          v11 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
          if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
          {
            return OUTLINED_FUNCTION_7_5();
          }

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            OUTLINED_FUNCTION_11_6();
            v12 = v0;
            sub_2574D0398(v13, v14, v15, v16);
          }

          else
          {
            OUTLINED_FUNCTION_11_6();
            v12 = v0;
            sub_2574D0178(v17, v18, v19, v20);
          }

          OUTLINED_FUNCTION_3_11();
          result = sub_2574D198C(v6, v21);
          if (!v12)
          {
            return OUTLINED_FUNCTION_7_5();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2574D0178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_StringVector(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_GLMClassifier(0);
  sub_257487308(a1 + *(v11 + 32));
  v12 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87AD18, &unk_25774A9B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574D19E4();
      sub_2574D16EC(&qword_27F87A748, type metadata accessor for Proto_StringVector, &unk_257747E64);
      sub_257743574();
      return sub_2574D198C(v10, type metadata accessor for Proto_StringVector);
    }

    result = sub_2574D198C(v7, type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574D0398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Int64Vector(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_GLMClassifier(0);
  sub_257487308(a1 + *(v11 + 32));
  v12 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87AD18, &unk_25774A9B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574D19E4();
      sub_2574D16EC(&qword_281537E60, type metadata accessor for Proto_Int64Vector, &unk_257747CFC);
      sub_257743574();
      return sub_2574D198C(v10, type metadata accessor for Proto_Int64Vector);
    }

    result = sub_2574D198C(v7, type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels);
  }

  __break(1u);
  return result;
}

uint64_t _s20MLModelSpecification29LinearClassifierConfigurationV2eeoiySbAC_ACtFZ_0()
{
  OUTLINED_FUNCTION_267();
  type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ADC0, &unk_25774AFE0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  sub_25747FFC0(*v1);
  if ((v13 & 1) == 0 || (sub_257479D04(*(v1 + 8), *(v0 + 8)) & 1) == 0)
  {
    goto LABEL_30;
  }

  v14 = *(v1 + 16);
  v15 = *(v0 + 16);
  if (*(v1 + 24))
  {
    v14 = v14 != 0;
  }

  if (*(v0 + 24) == 1)
  {
    if (v15)
    {
      if (v14 != 1)
      {
        goto LABEL_30;
      }
    }

    else if (v14)
    {
      goto LABEL_30;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_30;
  }

  v16 = *(v1 + 32);
  v17 = *(v0 + 32);
  if (*(v1 + 40))
  {
    v16 = v16 != 0;
  }

  if (*(v0 + 40) == 1)
  {
    if (v17)
    {
      if (v16 != 1)
      {
        goto LABEL_30;
      }
    }

    else if (v16)
    {
      goto LABEL_30;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_30;
  }

  v29 = type metadata accessor for Proto_GLMClassifier(0);
  v18 = *(v29 + 32);
  v19 = *(v9 + 48);
  sub_257487308(v1 + v18);
  sub_257487308(v0 + v18);
  OUTLINED_FUNCTION_65(v12);
  if (v20)
  {
    OUTLINED_FUNCTION_65(&v12[v19]);
    if (v20)
    {
      sub_2574695E4(v12, &qword_27F87AD18, &unk_25774A9B0);
      goto LABEL_33;
    }
  }

  else
  {
    sub_257487308(v12);
    OUTLINED_FUNCTION_65(&v12[v19]);
    if (!v20)
    {
      sub_2574D19E4();
      v24 = sub_2574CE784(v8, v5);
      sub_2574D198C(v5, type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels);
      sub_2574D198C(v8, type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels);
      sub_2574695E4(v12, &qword_27F87AD18, &unk_25774A9B0);
      if ((v24 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_33:
      sub_2577431B4();
      OUTLINED_FUNCTION_2_12();
      v27 = sub_2574D16EC(v25, v26, MEMORY[0x277D216D0]);
      v22 = OUTLINED_FUNCTION_4_2(v27);
      return v22 & 1;
    }

    OUTLINED_FUNCTION_3_11();
    sub_2574D198C(v8, v21);
  }

  sub_2574695E4(v12, &qword_27F87ADC0, &unk_25774AFE0);
LABEL_30:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_2574D0928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2574D099C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2574D0A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574D16EC(&qword_27F87AD98, type metadata accessor for Proto_GLMClassifier, &unk_25774AF18);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574D0B04(uint64_t a1)
{
  v2 = sub_2574D16EC(&qword_281537D78, type metadata accessor for Proto_GLMClassifier, &unk_25774AF50);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574D0BCC(uint64_t a1, uint64_t a2)
{
  sub_2574D16EC(&qword_281537D78, type metadata accessor for Proto_GLMClassifier, &unk_25774AF50);

  return sub_257743424();
}

uint64_t sub_2574D0C4C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8378);
  __swift_project_value_buffer(v0, qword_27F8E8378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Logit";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Probit";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574D0E38()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8390);
  __swift_project_value_buffer(v0, qword_27F8E8390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ReferenceClass";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OneVsRest";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574D1024()
{
  result = MEMORY[0x259C64E90](0x41656C62756F442ELL, 0xEC00000079617272);
  qword_27F8E83A8 = 0xD000000000000013;
  unk_27F8E83B0 = 0x800000025777AB90;
  return result;
}

uint64_t sub_2574D1098()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E83B8);
  __swift_project_value_buffer(v0, qword_27F8E83B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2577442B0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "value";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_257743594();
}

uint64_t sub_2574D1204()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_257743334();
    }
  }

  return result;
}

uint64_t sub_2574D125C()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v1 + 16) || (OUTLINED_FUNCTION_11_6(), result = sub_257743494(), !v0))
  {
    type metadata accessor for Proto_GLMClassifier.DoubleArray(0);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_2574D12CC()
{
  OUTLINED_FUNCTION_267();
  if ((sub_257479D04(*v0, *v1) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_GLMClassifier.DoubleArray(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_2_12();
  v4 = sub_2574D16EC(v2, v3, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v4) & 1;
}

uint64_t sub_2574D1350(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_257743A14();
  a1(0);
  sub_2574D16EC(a2, a3, a4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574D13DC()
{
  if (qword_27F878F28 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8E83A8;

  return v0;
}

uint64_t sub_2574D1474(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574D16EC(&qword_27F87ADB0, type metadata accessor for Proto_GLMClassifier.DoubleArray, &unk_25774AD60);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574D1514(uint64_t a1)
{
  v2 = sub_2574D16EC(&qword_281537DB0, type metadata accessor for Proto_GLMClassifier.DoubleArray, &unk_25774AD98);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574D15DC(uint64_t a1, uint64_t a2)
{
  sub_2574D16EC(&qword_281537DB0, type metadata accessor for Proto_GLMClassifier.DoubleArray, &unk_25774AD98);

  return sub_257743424();
}

uint64_t sub_2574D16EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2574D18E4()
{
  result = qword_27F87ADA0;
  if (!qword_27F87ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87ADA0);
  }

  return result;
}

unint64_t sub_2574D1938()
{
  result = qword_27F87ADA8;
  if (!qword_27F87ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87ADA8);
  }

  return result;
}

uint64_t sub_2574D198C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2574D19E4()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

uint64_t sub_2574D1A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2574D1B9C(uint64_t a1)
{
  sub_2574D1C40(319);
  if (v1 <= 0x3F)
  {
    sub_2574CE5E4();
    if (v2 <= 0x3F)
    {
      sub_2577431B4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2574D1C40(uint64_t a1)
{
  if (!qword_27F87ADD8)
  {
    type metadata accessor for Proto_GLMRegressor.DoubleArray(255);
    v1 = sub_257743774();
    if (!v2)
    {
      atomic_store(v1, &qword_27F87ADD8);
    }
  }
}

void sub_2574D1CBC(uint64_t a1@<X8>)
{
  sub_2574D1CA8();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_2574D1D00(uint64_t a1@<X8>)
{
  sub_2574D1CA8();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

uint64_t sub_2574D1D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574D31D8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_2574D1DBC()
{
  result = qword_27F87ADE0;
  if (!qword_27F87ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87ADE0);
  }

  return result;
}

unint64_t sub_2574D1E14()
{
  result = qword_27F87ADE8;
  if (!qword_27F87ADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F87ADF0, qword_25774B0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87ADE8);
  }

  return result;
}

unint64_t sub_2574D1E7C()
{
  result = qword_27F87ADF8;
  if (!qword_27F87ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87ADF8);
  }

  return result;
}

unint64_t sub_2574D1ED4()
{
  result = qword_27F87AE00;
  if (!qword_27F87AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87AE00);
  }

  return result;
}

uint64_t sub_2574D1F28@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_GLMRegressor.DoubleArray(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574D1F68@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for Proto_GLMRegressor(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574D1FB4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E83D0);
  __swift_project_value_buffer(v0, qword_27F8E83D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "weights";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "offset";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "postEvaluationTransform";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574D21BC()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_11_6();
        sub_2574D22F4(v7, v8);
        break;
      case 2:
        sub_257743334();
        break;
      case 1:
        OUTLINED_FUNCTION_11_6();
        sub_2574D2254(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_2574D2254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_GLMRegressor.DoubleArray(0);
  sub_2574D2FE0(&qword_27F87AE10, type metadata accessor for Proto_GLMRegressor.DoubleArray, &unk_25774B250);
  return sub_2577433C4();
}

uint64_t sub_2574D235C()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v0 + 16) || (type metadata accessor for Proto_GLMRegressor.DoubleArray(0), sub_2574D2FE0(&qword_27F87AE10, type metadata accessor for Proto_GLMRegressor.DoubleArray, &unk_25774B250), OUTLINED_FUNCTION_9_5(), result = sub_257743564(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (OUTLINED_FUNCTION_9_5(), OUTLINED_FUNCTION_11_6(), result = sub_257743494(), !v1))
    {
      if (!*(v2 + 16) || (sub_2574D31D8(), OUTLINED_FUNCTION_9_5(), result = sub_2577434C4(), !v1))
      {
        type metadata accessor for Proto_GLMRegressor(0);
        return OUTLINED_FUNCTION_7_5();
      }
    }
  }

  return result;
}

uint64_t sub_2574D2490(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_7_8(a1);
  sub_257480000(v3);
  if ((v4 & 1) == 0 || (sub_257479D04(*(v2 + 8), *(v1 + 8)) & 1) == 0 || !sub_257487360(*(v2 + 16), *(v2 + 24), *(v1 + 16)))
  {
    return 0;
  }

  type metadata accessor for Proto_GLMRegressor(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_18();
  v7 = sub_2574D2FE0(v5, v6, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v7) & 1;
}

uint64_t sub_2574D2584(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574D2FE0(&qword_27F87AE48, type metadata accessor for Proto_GLMRegressor, &unk_25774B368);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574D2624(uint64_t a1)
{
  v2 = sub_2574D2FE0(&qword_27F87AE28, type metadata accessor for Proto_GLMRegressor, &unk_25774B3A0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574D26EC(uint64_t a1, uint64_t a2)
{
  sub_2574D2FE0(&qword_27F87AE28, type metadata accessor for Proto_GLMRegressor, &unk_25774B3A0);

  return sub_257743424();
}

uint64_t sub_2574D276C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E83E8);
  __swift_project_value_buffer(v0, qword_27F8E83E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NoTransform";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Logit";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Probit";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574D2994()
{
  result = MEMORY[0x259C64E90](0x41656C62756F442ELL, 0xEC00000079617272);
  qword_27F8E8400 = 0xD000000000000012;
  *algn_27F8E8408 = 0x800000025777AC30;
  return result;
}

uint64_t sub_2574D2A08()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8410);
  __swift_project_value_buffer(v0, qword_27F8E8410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2577442B0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "value";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_257743594();
}

uint64_t sub_2574D2B74()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_9_5(), OUTLINED_FUNCTION_11_6(), result = sub_257743494(), !v1))
  {
    type metadata accessor for Proto_GLMRegressor.DoubleArray(0);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_2574D2BE0(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_7_8(a1);
  if ((sub_257479D04(v1, v2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_GLMRegressor.DoubleArray(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_18();
  v5 = sub_2574D2FE0(v3, v4, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v5) & 1;
}

uint64_t sub_2574D2C5C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_257743A14();
  a1(0);
  sub_2574D2FE0(a2, a3, a4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574D2CE8()
{
  if (qword_27F878F48 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8E8400;

  return v0;
}

uint64_t sub_2574D2D68(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574D2FE0(&qword_27F87AE58, type metadata accessor for Proto_GLMRegressor.DoubleArray, &unk_25774B218);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574D2E08(uint64_t a1)
{
  v2 = sub_2574D2FE0(&qword_27F87AE10, type metadata accessor for Proto_GLMRegressor.DoubleArray, &unk_25774B250);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574D2ED0(uint64_t a1, uint64_t a2)
{
  sub_2574D2FE0(&qword_27F87AE10, type metadata accessor for Proto_GLMRegressor.DoubleArray, &unk_25774B250);

  return sub_257743424();
}

uint64_t sub_2574D2FE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2574D31D8()
{
  result = qword_27F87AE50;
  if (!qword_27F87AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87AE50);
  }

  return result;
}

uint64_t type metadata accessor for Proto_Identity(uint64_t a1)
{
  result = qword_27F87AE60;
  if (!qword_27F87AE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2574D32CC(uint64_t a1)
{
  result = sub_2577431B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2574D3338()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8428);
  __swift_project_value_buffer(v0, qword_27F8E8428);
  return sub_2577435A4();
}

uint64_t sub_2574D3384(uint64_t a1, uint64_t a2)
{
  sub_2577431B4();
  sub_2574D37EC(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_257743644() & 1;
}

uint64_t sub_2574D340C()
{
  sub_257743A14();
  type metadata accessor for Proto_Identity(0);
  sub_2574D37EC(&qword_27F87AE78, type metadata accessor for Proto_Identity, &unk_25774B59C);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574D34B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574D37EC(&qword_27F87AE90, type metadata accessor for Proto_Identity, &unk_25774B4EC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574D3534@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F878F58 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8E8428);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2574D35DC(uint64_t a1)
{
  v2 = sub_2574D37EC(&qword_27F87AE70, type metadata accessor for Proto_Identity, &unk_25774B524);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574D364C(uint64_t a1, uint64_t a2)
{
  sub_2574D37EC(&qword_27F87AE70, type metadata accessor for Proto_Identity, &unk_25774B524);

  return sub_257743424();
}

uint64_t sub_2574D37EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2574D3854(uint64_t a1)
{
  result = type metadata accessor for Proto_DoubleVector(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Proto_Int64Vector(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Proto_StringToDoubleMap(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Proto_Int64ToDoubleMap(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_2574D3958(uint64_t a1)
{
  sub_2574D39F4(319);
  if (v1 <= 0x3F)
  {
    sub_2574D3A4C();
    if (v2 <= 0x3F)
    {
      sub_2577431B4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2574D39F4(uint64_t a1)
{
  if (!qword_281537F70)
  {
    type metadata accessor for Proto_Imputer.OneOf_ImputedValue(255);
    v1 = sub_2577437B4();
    if (!v2)
    {
      atomic_store(v1, &qword_281537F70);
    }
  }
}

void sub_2574D3A4C()
{
  if (!qword_27F87AEA0)
  {
    v0 = sub_2577437B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87AEA0);
    }
  }
}

uint64_t sub_2574D3AA8(uint64_t a1, unsigned int a2)
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

uint64_t sub_2574D3AE8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2574D3B3C(uint64_t a1, uint64_t a2)
{
  v89 = a1;
  v90 = a2;
  v84[3] = type metadata accessor for Proto_Int64ToDoubleMap(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_1();
  v88 = v3;
  v4 = OUTLINED_FUNCTION_153();
  v84[2] = type metadata accessor for Proto_StringToDoubleMap(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v87 = v6;
  v7 = OUTLINED_FUNCTION_153();
  v84[1] = type metadata accessor for Proto_Int64Vector(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v86 = v9;
  v10 = OUTLINED_FUNCTION_153();
  v84[0] = type metadata accessor for Proto_DoubleVector(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_1();
  v85 = v12;
  v13 = OUTLINED_FUNCTION_153();
  type metadata accessor for Proto_Imputer.OneOf_ImputedValue(v13);
  OUTLINED_FUNCTION_4();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (v84 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v84 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (v84 - v25);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = (v84 - v28);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = (v84 - v31);
  MEMORY[0x28223BE20](v30);
  v34 = (v84 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AEE8, &qword_25774B890);
  OUTLINED_FUNCTION_13(v35);
  OUTLINED_FUNCTION_29();
  v37 = MEMORY[0x28223BE20](v36);
  v39 = v84 - v38;
  v40 = (v84 + *(v37 + 56) - v38);
  sub_2574D7AE4(v89, v84 - v38);
  sub_2574D7AE4(v90, v40);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2574D7AE4(v39, v32);
      if (OUTLINED_FUNCTION_11_7() != 1)
      {
        goto LABEL_40;
      }

      v41 = *v32 == *v40;
      goto LABEL_21;
    case 2u:
      sub_2574D7AE4(v39, v29);
      v50 = *v29;
      v49 = v29[1];
      if (OUTLINED_FUNCTION_11_7() != 2)
      {

        goto LABEL_40;
      }

      if (v50 == *v40 && v49 == *(v40 + 1))
      {
      }

      else
      {
        v52 = sub_257743994();

        if ((v52 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_50;
    case 3u:
      sub_2574D7AE4(v39, v26);
      if (OUTLINED_FUNCTION_11_7() != 3)
      {
        v74 = type metadata accessor for Proto_DoubleVector;
        v75 = v26;
        goto LABEL_39;
      }

      v53 = OUTLINED_FUNCTION_15_2();
      v54 = v85;
      sub_2574D7A84(v53, v85, v55);
      if (sub_257479D04(*v26, *v54))
      {
        v32 = sub_2577431B4();
        OUTLINED_FUNCTION_0_19();
        sub_2574D7954(v56, v57, MEMORY[0x277D216D0]);
        if (sub_257743644())
        {
          OUTLINED_FUNCTION_7_9();
          sub_2574D7A2C(v54, v58);
          v48 = v26;
          goto LABEL_33;
        }
      }

      OUTLINED_FUNCTION_7_9();
      sub_2574D7A2C(v54, v78);
      v77 = v26;
      goto LABEL_45;
    case 4u:
      sub_2574D7AE4(v39, v23);
      if (OUTLINED_FUNCTION_11_7() != 4)
      {
        v74 = type metadata accessor for Proto_Int64Vector;
        v75 = v23;
        goto LABEL_39;
      }

      v42 = OUTLINED_FUNCTION_15_2();
      v43 = v86;
      sub_2574D7A84(v42, v86, v44);
      if (sub_257487374())
      {
        v32 = sub_2577431B4();
        OUTLINED_FUNCTION_0_19();
        sub_2574D7954(v45, v46, MEMORY[0x277D216D0]);
        if (sub_257743644())
        {
          OUTLINED_FUNCTION_10_10();
          sub_2574D7A2C(v43, v47);
          v48 = v23;
          goto LABEL_33;
        }
      }

      OUTLINED_FUNCTION_10_10();
      sub_2574D7A2C(v43, v76);
      v77 = v23;
      goto LABEL_45;
    case 5u:
      sub_2574D7AE4(v39, v20);
      if (OUTLINED_FUNCTION_11_7() != 5)
      {
        v74 = type metadata accessor for Proto_StringToDoubleMap;
        v75 = v20;
        goto LABEL_39;
      }

      v60 = OUTLINED_FUNCTION_15_2();
      v61 = v87;
      sub_2574D7A84(v60, v87, v62);
      sub_257476CF4(*v20, *v61);
      if (v63)
      {
        v32 = sub_2577431B4();
        OUTLINED_FUNCTION_0_19();
        sub_2574D7954(v64, v65, MEMORY[0x277D216D0]);
        if (sub_257743644())
        {
          OUTLINED_FUNCTION_9_7();
          sub_2574D7A2C(v61, v66);
          v48 = v20;
          goto LABEL_33;
        }
      }

      OUTLINED_FUNCTION_9_7();
      sub_2574D7A2C(v61, v79);
      v77 = v20;
      goto LABEL_45;
    case 6u:
      sub_2574D7AE4(v39, v17);
      if (OUTLINED_FUNCTION_11_7() != 6)
      {
        v74 = type metadata accessor for Proto_Int64ToDoubleMap;
        v75 = v17;
LABEL_39:
        sub_2574D7A2C(v75, v74);
LABEL_40:
        sub_2574695E4(v39, &qword_27F87AEE8, &qword_25774B890);
        return 0;
      }

      v67 = OUTLINED_FUNCTION_15_2();
      v68 = v88;
      sub_2574D7A84(v67, v88, v69);
      sub_257477924(*v17, *v68);
      if ((v70 & 1) == 0 || (v32 = sub_2577431B4(), OUTLINED_FUNCTION_0_19(), sub_2574D7954(v71, v72, MEMORY[0x277D216D0]), (sub_257743644() & 1) == 0))
      {
        OUTLINED_FUNCTION_8_5();
        sub_2574D7A2C(v68, v80);
        v77 = v17;
LABEL_45:
        sub_2574D7A2C(v77, v32);
LABEL_46:
        OUTLINED_FUNCTION_1_12();
        sub_2574D7A2C(v39, v81);
        return 0;
      }

      OUTLINED_FUNCTION_8_5();
      sub_2574D7A2C(v68, v73);
      v48 = v17;
LABEL_33:
      sub_2574D7A2C(v48, v32);
LABEL_50:
      OUTLINED_FUNCTION_1_12();
      sub_2574D7A2C(v39, v83);
      return 1;
    default:
      sub_2574D7AE4(v39, v34);
      if (OUTLINED_FUNCTION_11_7())
      {
        goto LABEL_40;
      }

      v41 = *v34 == *v40;
LABEL_21:
      v59 = v41;
      sub_2574D7A2C(v39, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
      return v59;
  }
}

uint64_t sub_2574D42C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      return a6 == 1 && a1 == a4;
    }

    else if (a6 == 2)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      else
      {
        return sub_257743994();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return !a6 && *&a1 == *&a4;
  }
}

uint64_t sub_2574D435C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for Proto_Imputer(0) + 20);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = -1;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574D43C0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8440);
  __swift_project_value_buffer(v0, qword_27F8E8440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25774B5E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "imputedDoubleValue";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "imputedInt64Value";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "imputedStringValue";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "imputedDoubleArray";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "imputedInt64Array";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "imputedStringDictionary";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "imputedInt64Dictionary";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 11;
  *v22 = "replaceDoubleValue";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "replaceInt64Value";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 13;
  *v26 = "replaceStringValue";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574D4778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_257743234();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_6_8();
        sub_2574D48B0(v6, v7, v8, v9);
        break;
      case 2:
        v32 = OUTLINED_FUNCTION_6_8();
        sub_2574D4A48(v32, v33, v34, v35);
        break;
      case 3:
        v18 = OUTLINED_FUNCTION_6_8();
        sub_2574D4BE0(v18, v19, v20, v21);
        break;
      case 4:
        v22 = OUTLINED_FUNCTION_6_10();
        sub_2574D4D84(v22, v23, v24, v25);
        break;
      case 5:
        v10 = OUTLINED_FUNCTION_6_10();
        sub_2574D527C(v10, v11, v12, v13);
        break;
      case 6:
        v36 = OUTLINED_FUNCTION_6_10();
        sub_2574D5774(v36, v37, v38, v39);
        break;
      case 7:
        v40 = OUTLINED_FUNCTION_6_10();
        sub_2574D5C6C(v40, v41, v42, v43);
        break;
      case 11:
        v26 = OUTLINED_FUNCTION_6_8();
        v31 = 0;
        goto LABEL_14;
      case 12:
        v26 = OUTLINED_FUNCTION_6_8();
        v31 = 1;
LABEL_14:
        sub_2574D6164(v26, v27, v28, v29, v30, v31);
        break;
      case 13:
        v14 = OUTLINED_FUNCTION_6_8();
        sub_2574D623C(v14, v15, v16, v17);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2574D48B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v13 = 0;
  v14 = 1;
  result = sub_257743364();
  if (!v4 && (v14 & 1) == 0)
  {
    v10 = v13;
    sub_2574A172C(a2, v8, &qword_27F87AE98, &qword_25776F620);
    v11 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v11);
    sub_2574695E4(v8, &qword_27F87AE98, &qword_25776F620);
    if (EnumTagSinglePayload != 1)
    {
      sub_257743244();
    }

    sub_2574695E4(a2, &qword_27F87AE98, &qword_25776F620);
    *a2 = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
  }

  return result;
}

uint64_t sub_2574D4A48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v12 = 0;
  v13 = 1;
  result = sub_257743314();
  if (!v4 && (v13 & 1) == 0)
  {
    v14 = v12;
    sub_2574A172C(a2, v8, &qword_27F87AE98, &qword_25776F620);
    v10 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v10);
    sub_2574695E4(v8, &qword_27F87AE98, &qword_25776F620);
    if (EnumTagSinglePayload != 1)
    {
      sub_257743244();
    }

    sub_2574695E4(a2, &qword_27F87AE98, &qword_25776F620);
    *a2 = v14;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_2574D4BE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v13 = 0;
  v14 = 0;
  result = sub_257743384();
  if (v4)
  {
  }

  v10 = v14;
  if (v14)
  {
    v15 = v13;
    sub_2574A172C(a2, v8, &qword_27F87AE98, &qword_25776F620);
    v11 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v11);
    sub_2574695E4(v8, &qword_27F87AE98, &qword_25776F620);
    if (EnumTagSinglePayload != 1)
    {
      sub_257743244();
    }

    sub_2574695E4(a2, &qword_27F87AE98, &qword_25776F620);
    *a2 = v15;
    a2[1] = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
  }

  return result;
}

uint64_t sub_2574D4D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_DoubleVector(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AED0, &unk_25774B870);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_2574A172C(a1, v12, &qword_27F87AE98, &qword_25776F620);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87AE98, &qword_25776F620);
  }

  else
  {
    sub_2574D7A84(v12, v18, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    sub_2574D7A84(v18, v16, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574695E4(v24, &qword_27F87AED0, &unk_25774B870);
      sub_2574D7A84(v16, v9, type metadata accessor for Proto_DoubleVector);
      sub_2574D7A84(v9, v24, type metadata accessor for Proto_DoubleVector);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574D7A2C(v16, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    }
  }

  sub_2574D7954(&qword_27F87A6F8, type metadata accessor for Proto_DoubleVector, &unk_257747A2C);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87AED0, &unk_25774B870);
  }

  sub_2574A172C(v24, v22, &qword_27F87AED0, &unk_25774B870);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87AED0, &unk_25774B870);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87AED0, &unk_25774B870);
  }

  v28 = v35;
  sub_2574D7A84(v22, v35, type metadata accessor for Proto_DoubleVector);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v29 = v34;
  sub_2574695E4(v24, &qword_27F87AED0, &unk_25774B870);
  v30 = v32;
  sub_2574695E4(v32, &qword_27F87AE98, &qword_25776F620);
  sub_2574D7A84(v28, v30, type metadata accessor for Proto_DoubleVector);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_2574D527C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_Int64Vector(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A880, &qword_25774AFD0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_2574A172C(a1, v12, &qword_27F87AE98, &qword_25776F620);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87AE98, &qword_25776F620);
  }

  else
  {
    sub_2574D7A84(v12, v18, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    sub_2574D7A84(v18, v16, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2574695E4(v24, &qword_27F87A880, &qword_25774AFD0);
      sub_2574D7A84(v16, v9, type metadata accessor for Proto_Int64Vector);
      sub_2574D7A84(v9, v24, type metadata accessor for Proto_Int64Vector);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574D7A2C(v16, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    }
  }

  sub_2574D7954(&qword_281537E60, type metadata accessor for Proto_Int64Vector, &unk_257747CFC);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_2574A172C(v24, v22, &qword_27F87A880, &qword_25774AFD0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87A880, &qword_25774AFD0);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87A880, &qword_25774AFD0);
  }

  v28 = v35;
  sub_2574D7A84(v22, v35, type metadata accessor for Proto_Int64Vector);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v29 = v34;
  sub_2574695E4(v24, &qword_27F87A880, &qword_25774AFD0);
  v30 = v32;
  sub_2574695E4(v32, &qword_27F87AE98, &qword_25776F620);
  sub_2574D7A84(v28, v30, type metadata accessor for Proto_Int64Vector);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_2574D5774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_StringToDoubleMap(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AED8, &qword_25774B880);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_2574A172C(a1, v12, &qword_27F87AE98, &qword_25776F620);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87AE98, &qword_25776F620);
  }

  else
  {
    sub_2574D7A84(v12, v18, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    sub_2574D7A84(v18, v16, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2574695E4(v24, &qword_27F87AED8, &qword_25774B880);
      sub_2574D7A84(v16, v9, type metadata accessor for Proto_StringToDoubleMap);
      sub_2574D7A84(v9, v24, type metadata accessor for Proto_StringToDoubleMap);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574D7A2C(v16, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    }
  }

  sub_2574D7954(&qword_27F87A788, type metadata accessor for Proto_StringToDoubleMap, &unk_257748134);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87AED8, &qword_25774B880);
  }

  sub_2574A172C(v24, v22, &qword_27F87AED8, &qword_25774B880);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87AED8, &qword_25774B880);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87AED8, &qword_25774B880);
  }

  v28 = v35;
  sub_2574D7A84(v22, v35, type metadata accessor for Proto_StringToDoubleMap);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v29 = v34;
  sub_2574695E4(v24, &qword_27F87AED8, &qword_25774B880);
  v30 = v32;
  sub_2574695E4(v32, &qword_27F87AE98, &qword_25776F620);
  sub_2574D7A84(v28, v30, type metadata accessor for Proto_StringToDoubleMap);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_2574D5C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_Int64ToDoubleMap(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AEE0, &qword_25774B888);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v32 = a1;
  sub_2574A172C(a1, v12, &qword_27F87AE98, &qword_25776F620);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87AE98, &qword_25776F620);
  }

  else
  {
    sub_2574D7A84(v12, v18, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    sub_2574D7A84(v18, v16, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2574695E4(v24, &qword_27F87AEE0, &qword_25774B888);
      sub_2574D7A84(v16, v9, type metadata accessor for Proto_Int64ToDoubleMap);
      sub_2574D7A84(v9, v24, type metadata accessor for Proto_Int64ToDoubleMap);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574D7A2C(v16, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    }
  }

  sub_2574D7954(&qword_27F87A768, type metadata accessor for Proto_Int64ToDoubleMap, &unk_257747FCC);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87AEE0, &qword_25774B888);
  }

  sub_2574A172C(v24, v22, &qword_27F87AEE0, &qword_25774B888);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87AEE0, &qword_25774B888);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87AEE0, &qword_25774B888);
  }

  v28 = v35;
  sub_2574D7A84(v22, v35, type metadata accessor for Proto_Int64ToDoubleMap);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v29 = v34;
  sub_2574695E4(v24, &qword_27F87AEE0, &qword_25774B888);
  v30 = v32;
  sub_2574695E4(v32, &qword_27F87AE98, &qword_25776F620);
  sub_2574D7A84(v28, v30, type metadata accessor for Proto_Int64ToDoubleMap);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
}

uint64_t sub_2574D6164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t, uint64_t), char a6)
{
  v15 = 0;
  v16 = 1;
  result = a5(&v15, a3, a4);
  if (!v6 && (v16 & 1) == 0)
  {
    v10 = v15;
    v11 = a2 + *(type metadata accessor for Proto_Imputer(0) + 20);
    if (*(v11 + 16) == 255)
    {
      v12 = -1;
    }

    else
    {
      sub_257743244();
      v12 = *(v11 + 16);
    }

    v13 = *v11;
    v14 = *(v11 + 8);
    *v11 = v10;
    *(v11 + 8) = 0;
    *(v11 + 16) = a6;
    return sub_257467084(v13, v14, v12);
  }

  return result;
}

uint64_t sub_2574D623C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_257743384();
  if (v4)
  {
  }

  if (v11)
  {
    v7 = a2 + *(type metadata accessor for Proto_Imputer(0) + 20);
    if (*(v7 + 16) == 255)
    {
      v8 = -1;
    }

    else
    {
      sub_257743244();
      v8 = *(v7 + 16);
    }

    v9 = *v7;
    v10 = *(v7 + 8);
    *v7 = 0;
    *(v7 + 8) = v11;
    *(v7 + 16) = 2;
    return sub_257467084(v9, v10, v8);
  }

  return result;
}

uint64_t sub_2574D631C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - v7;
  sub_2574A172C(v3, &v49 - v7, &qword_27F87AE98, &qword_25776F620);
  v9 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v36 = OUTLINED_FUNCTION_5_10();
        result = sub_2574D6648(v36, v37, v38, v39);
        goto LABEL_16;
      case 2u:
        OUTLINED_FUNCTION_1_12();
        sub_2574D7A2C(v8, v27);
        v28 = OUTLINED_FUNCTION_5_10();
        result = sub_2574D6788(v28, v29, v30, v31);
        goto LABEL_16;
      case 3u:
        v32 = OUTLINED_FUNCTION_5_10();
        sub_2574D68DC(v32, v33, v34, v35);
        goto LABEL_20;
      case 4u:
        v23 = OUTLINED_FUNCTION_5_10();
        sub_2574D6AF0(v23, v24, v25, v26);
        goto LABEL_20;
      case 5u:
        v40 = OUTLINED_FUNCTION_5_10();
        sub_2574D6D04(v40, v41, v42, v43);
        goto LABEL_20;
      case 6u:
        v44 = OUTLINED_FUNCTION_5_10();
        sub_2574D6F18(v44, v45, v46, v47);
LABEL_20:
        OUTLINED_FUNCTION_1_12();
        result = sub_2574D7A2C(v8, v48);
        if (v4)
        {
          return result;
        }

        break;
      default:
        v17 = OUTLINED_FUNCTION_5_10();
        result = sub_2574D650C(v17);
LABEL_16:
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  v10 = type metadata accessor for Proto_Imputer(0);
  v11 = *(v3 + *(v10 + 20) + 16);
  if (!*(v3 + *(v10 + 20) + 16))
  {
    v22 = OUTLINED_FUNCTION_5_10();
    result = sub_2574D712C(v22);
LABEL_10:
    if (v4)
    {
      return result;
    }

    return sub_257743194();
  }

  if (v11 == 1)
  {
    v18 = OUTLINED_FUNCTION_5_10();
    result = sub_2574D71A0(v18, v19, v20, v21);
    goto LABEL_10;
  }

  if (v11 == 2)
  {
    v12 = OUTLINED_FUNCTION_5_10();
    result = sub_2574D7218(v12, v13, v14, v15);
    goto LABEL_10;
  }

  return sub_257743194();
}

uint64_t sub_2574D650C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_2574A172C(a1, &v7 - v3, &qword_27F87AE98, &qword_25776F620);
  v5 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    result = sub_2574695E4(v4, &qword_27F87AE98, &qword_25776F620);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_257743524();
    }

    result = sub_2574D7A2C(v4, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574D6648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_2574A172C(a1, &v10 - v6, &qword_27F87AE98, &qword_25776F620);
  v8 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87AE98, &qword_25776F620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_257743504();
    }

    result = sub_2574D7A2C(v7, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574D6788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_2574A172C(a1, &v10 - v6, &qword_27F87AE98, &qword_25776F620);
  v8 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87AE98, &qword_25776F620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_257743534();
    }

    result = sub_2574D7A2C(v7, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574D68DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_DoubleVector(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574A172C(a1, v7, &qword_27F87AE98, &qword_25776F620);
  v11 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87AE98, &qword_25776F620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574D7A84(v7, v10, type metadata accessor for Proto_DoubleVector);
      sub_2574D7954(&qword_27F87A6F8, type metadata accessor for Proto_DoubleVector, &unk_257747A2C);
      sub_257743574();
      return sub_2574D7A2C(v10, type metadata accessor for Proto_DoubleVector);
    }

    result = sub_2574D7A2C(v7, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574D6AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Int64Vector(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574A172C(a1, v7, &qword_27F87AE98, &qword_25776F620);
  v11 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87AE98, &qword_25776F620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2574D7A84(v7, v10, type metadata accessor for Proto_Int64Vector);
      sub_2574D7954(&qword_281537E60, type metadata accessor for Proto_Int64Vector, &unk_257747CFC);
      sub_257743574();
      return sub_2574D7A2C(v10, type metadata accessor for Proto_Int64Vector);
    }

    result = sub_2574D7A2C(v7, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574D6D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_StringToDoubleMap(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574A172C(a1, v7, &qword_27F87AE98, &qword_25776F620);
  v11 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87AE98, &qword_25776F620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2574D7A84(v7, v10, type metadata accessor for Proto_StringToDoubleMap);
      sub_2574D7954(&qword_27F87A788, type metadata accessor for Proto_StringToDoubleMap, &unk_257748134);
      sub_257743574();
      return sub_2574D7A2C(v10, type metadata accessor for Proto_StringToDoubleMap);
    }

    result = sub_2574D7A2C(v7, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574D6F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Int64ToDoubleMap(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574A172C(a1, v7, &qword_27F87AE98, &qword_25776F620);
  v11 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87AE98, &qword_25776F620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2574D7A84(v7, v10, type metadata accessor for Proto_Int64ToDoubleMap);
      sub_2574D7954(&qword_27F87A768, type metadata accessor for Proto_Int64ToDoubleMap, &unk_257747FCC);
      sub_257743574();
      return sub_2574D7A2C(v10, type metadata accessor for Proto_Int64ToDoubleMap);
    }

    result = sub_2574D7A2C(v7, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574D712C(uint64_t a1)
{
  result = type metadata accessor for Proto_Imputer(0);
  if (!*(a1 + *(result + 20) + 16))
  {
    return sub_257743524();
  }

  __break(1u);
  return result;
}

uint64_t sub_2574D71A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Imputer(0);
  if (*(a1 + *(result + 20) + 16) == 1)
  {
    return sub_257743504();
  }

  __break(1u);
  return result;
}

uint64_t sub_2574D7218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Imputer(0);
  if (*(a1 + *(result + 20) + 16) == 2)
  {
    return sub_257743534();
  }

  __break(1u);
  return result;
}

uint64_t _s20MLModelSpecification20ImputerConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AEF0, &qword_25774B898);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  v16 = *(v13 + 56);
  sub_2574A172C(a1, &v33 - v14, &qword_27F87AE98, &qword_25776F620);
  sub_2574A172C(a2, &v15[v16], &qword_27F87AE98, &qword_25776F620);
  OUTLINED_FUNCTION_65(v15);
  if (v17)
  {
    OUTLINED_FUNCTION_65(&v15[v16]);
    if (v17)
    {
      sub_2574695E4(v15, &qword_27F87AE98, &qword_25776F620);
      goto LABEL_13;
    }

LABEL_9:
    sub_2574695E4(v15, &qword_27F87AEF0, &qword_25774B898);
    goto LABEL_10;
  }

  sub_2574A172C(v15, v10, &qword_27F87AE98, &qword_25776F620);
  OUTLINED_FUNCTION_65(&v15[v16]);
  if (v17)
  {
    OUTLINED_FUNCTION_1_12();
    sub_2574D7A2C(v10, v18);
    goto LABEL_9;
  }

  sub_2574D7A84(&v15[v16], v6, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
  v21 = sub_2574D3B3C(v10, v6);
  sub_2574D7A2C(v6, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
  sub_2574D7A2C(v10, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
  sub_2574695E4(v15, &qword_27F87AE98, &qword_25776F620);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  v22 = *(type metadata accessor for Proto_Imputer(0) + 20);
  v23 = a1 + v22;
  v24 = *(a1 + v22 + 16);
  v25 = a2 + v22;
  v26 = *(a2 + v22 + 16);
  if (v24 == 255)
  {
    if (v26 == 255)
    {
LABEL_15:
      sub_2577431B4();
      OUTLINED_FUNCTION_0_19();
      sub_2574D7954(v27, v28, MEMORY[0x277D216D0]);
      v19 = sub_257743644();
      return v19 & 1;
    }

    goto LABEL_10;
  }

  if (v26 == 255)
  {
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v29 = *v23;
  v30 = *v25;
  if (v24)
  {
    if (v24 == 1)
    {
      if (v26 == 1 && *&v29 == *&v30)
      {
        goto LABEL_15;
      }
    }

    else if (v26 == 2)
    {
      v32 = *&v29 == *&v30 && *(v23 + 8) == *(v25 + 8);
      if (v32 || (sub_257743994() & 1) != 0)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_10;
  }

  v19 = 0;
  if (!v26 && v29 == v30)
  {
    goto LABEL_15;
  }

  return v19 & 1;
}

uint64_t sub_2574D75D0()
{
  sub_257743A14();
  type metadata accessor for Proto_Imputer(0);
  sub_2574D7954(&qword_27F87AEB8, type metadata accessor for Proto_Imputer, &unk_25774B72C);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574D76B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574D7954(&qword_27F87AEC8, type metadata accessor for Proto_Imputer, &unk_25774B7BC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574D772C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F878F60 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8E8440);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2574D77D4(uint64_t a1)
{
  v2 = sub_2574D7954(&qword_27F87AEB0, type metadata accessor for Proto_Imputer, &unk_25774B7F4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574D7844(uint64_t a1, uint64_t a2)
{
  sub_2574D7954(&qword_27F87AEB0, type metadata accessor for Proto_Imputer, &unk_25774B7F4);

  return sub_257743424();
}

uint64_t sub_2574D7954(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2574D7A2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2574D7A84(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2574D7AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_7()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_2574D7C44(uint64_t a1)
{
  result = sub_2577431B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2574D7D10(uint64_t a1)
{
  sub_2574D7E90(319, &qword_27F87AF08, type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      sub_2574D7E90(319, &qword_281537DB8, type metadata accessor for Proto_StringVector, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2574D7E90(319, &qword_281537E40, type metadata accessor for Proto_Int64Vector, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2574D7E90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2574D7F1C(uint64_t a1)
{
  sub_2574D7E90(319, &qword_27F87AF20, type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2574D7FE8@<X0>(void *a1@<X8>)
{
  type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem(0);
  *a1 = 0;
  a1[1] = 0;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574D8020@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v2;
  a1[2] = 0;
  type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574D8064@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  a1[5] = 0;
  a1[6] = 0xE000000000000000;
  a1[7] = 0;
  a1[8] = 0xE000000000000000;
  a1[9] = 0;
  a1[10] = 0xE000000000000000;
  a1[11] = 0;
  a1[12] = 0xE000000000000000;
  v2 = type metadata accessor for Proto_ItemSimilarityRecommender(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v3 = *(v2 + 48);
  v4 = type metadata accessor for Proto_StringVector(0);
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 52);
  v6 = type metadata accessor for Proto_Int64Vector(0);

  return __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v6);
}

uint64_t sub_2574D8118()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8458);
  __swift_project_value_buffer(v0, qword_27F8E8458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257748730;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "itemItemSimilarities";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "itemStringIds";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "itemInt64Ids";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 10;
  *v14 = "itemInputFeatureName";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 11;
  *v16 = "numRecommendationsInputFeatureName";
  *(v16 + 1) = 34;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 12;
  *v18 = "itemRestrictionInputFeatureName";
  *(v18 + 1) = 31;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 13;
  *v20 = "itemExclusionInputFeatureName";
  *(v20 + 1) = 29;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 20;
  *v22 = "recommendedItemListOutputFeatureName";
  *(v22 + 1) = 36;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 21;
  *v24 = "recommendedItemScoreOutputFeatureName";
  *(v24 + 1) = 37;
  v24[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574D8498()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_2574D8568(v3, v4, v5, v6);
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_6_8();
        sub_2574D8608(v11, v12, v13, v14);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_6_8();
        sub_2574D86BC(v7, v8, v9, v10);
        break;
      case 10:
      case 11:
      case 12:
      case 13:
      case 20:
      case 21:
        OUTLINED_FUNCTION_10_7();
        sub_257743394();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2574D8568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems(0);
  sub_2574DA5E8(&qword_27F87AF30, type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems, &unk_25774BBE8);
  return sub_2577433C4();
}

uint64_t sub_2574D8608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_ItemSimilarityRecommender(0);
  type metadata accessor for Proto_StringVector(0);
  sub_2574DA5E8(&qword_27F87A748, type metadata accessor for Proto_StringVector, &unk_257747E64);
  return sub_2577433D4();
}

uint64_t sub_2574D86BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_ItemSimilarityRecommender(0);
  type metadata accessor for Proto_Int64Vector(0);
  sub_2574DA5E8(&qword_281537E60, type metadata accessor for Proto_Int64Vector, &unk_257747CFC);
  return sub_2577433D4();
}

uint64_t sub_2574D8770()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v1 + 16) || (type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems(0), sub_2574DA5E8(&qword_27F87AF30, type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems, &unk_25774BBE8), OUTLINED_FUNCTION_9_5(), result = sub_257743564(), (v0 = v2) == 0))
  {
    OUTLINED_FUNCTION_11_6();
    result = sub_2574D8928(v4, v5, v6, v7);
    if (!v0)
    {
      OUTLINED_FUNCTION_11_6();
      sub_2574D8AFC(v8, v9, v10, v11);
      OUTLINED_FUNCTION_1_6();
      if (v14)
      {
        OUTLINED_FUNCTION_4_3(v12, v13, 10);
      }

      OUTLINED_FUNCTION_1_6();
      if (v17)
      {
        OUTLINED_FUNCTION_4_3(v15, v16, 11);
      }

      OUTLINED_FUNCTION_1_6();
      if (v20)
      {
        OUTLINED_FUNCTION_4_3(v18, v19, 12);
      }

      OUTLINED_FUNCTION_1_6();
      if (v23)
      {
        OUTLINED_FUNCTION_4_3(v21, v22, 13);
      }

      OUTLINED_FUNCTION_1_6();
      if (v26)
      {
        OUTLINED_FUNCTION_4_3(v24, v25, 20);
      }

      OUTLINED_FUNCTION_1_6();
      if (v29)
      {
        OUTLINED_FUNCTION_4_3(v27, v28, 21);
      }

      type metadata accessor for Proto_ItemSimilarityRecommender(0);
      OUTLINED_FUNCTION_10_7();
      return sub_257743194();
    }
  }

  return result;
}

uint64_t sub_2574D8928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A878, &unk_257748700);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for Proto_StringVector(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Proto_ItemSimilarityRecommender(0);
  sub_2574DA900();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2574695E4(v6, &qword_27F87A878, &unk_257748700);
  }

  sub_2574DA95C();
  sub_2574DA5E8(&qword_27F87A748, type metadata accessor for Proto_StringVector, &unk_257747E64);
  sub_257743574();
  return sub_2574DA9B8(v9, type metadata accessor for Proto_StringVector);
}

uint64_t sub_2574D8AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A880, &qword_25774AFD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for Proto_Int64Vector(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Proto_ItemSimilarityRecommender(0);
  sub_2574DA900();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2574695E4(v6, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_2574DA95C();
  sub_2574DA5E8(&qword_281537E60, type metadata accessor for Proto_Int64Vector, &unk_257747CFC);
  sub_257743574();
  return sub_2574DA9B8(v9, type metadata accessor for Proto_Int64Vector);
}

uint64_t _s20MLModelSpecification38ItemSimilarityRecommenderConfigurationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v58 = type metadata accessor for Proto_Int64Vector(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A880, &qword_25774AFD0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v57 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFA0, &qword_25774BD18);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  type metadata accessor for Proto_StringVector(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A878, &unk_257748700);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = (&v53 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFA8, &unk_25774BD20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  sub_25747B9DC();
  if ((v23 & 1) == 0)
  {
    goto LABEL_54;
  }

  v53 = v6;
  v54 = v12;
  v24 = type metadata accessor for Proto_ItemSimilarityRecommender(0);
  v25 = *(v19 + 48);
  v55 = v24;
  v56 = a1;
  sub_2574DA900();
  sub_2574DA900();
  OUTLINED_FUNCTION_42_0(v22);
  if (v39)
  {
    OUTLINED_FUNCTION_42_0(&v22[v25]);
    if (v39)
    {
      sub_2574695E4(v22, &qword_27F87A878, &unk_257748700);
      goto LABEL_7;
    }

    goto LABEL_44;
  }

  sub_2574DA900();
  OUTLINED_FUNCTION_42_0(&v22[v25]);
  if (v39)
  {
    sub_2574DA9B8(v18, type metadata accessor for Proto_StringVector);
LABEL_44:
    v40 = &qword_27F87AFA8;
    v41 = &unk_25774BD20;
LABEL_45:
    v42 = v22;
LABEL_53:
    sub_2574695E4(v42, v40, v41);
LABEL_54:
    v38 = 0;
    return v38 & 1;
  }

  sub_2574DA95C();
  v43 = sub_257479C78(*v18, *v15);
  if ((v43 & 1) == 0)
  {
    sub_2574DA9B8(v15, type metadata accessor for Proto_StringVector);
    sub_2574DA9B8(v18, type metadata accessor for Proto_StringVector);
    v40 = &qword_27F87A878;
    v41 = &unk_257748700;
    goto LABEL_45;
  }

  sub_2577431B4();
  OUTLINED_FUNCTION_0_20();
  sub_2574DA5E8(v44, v45, MEMORY[0x277D216D0]);
  v46 = sub_257743644();
  sub_2574DA9B8(v15, type metadata accessor for Proto_StringVector);
  sub_2574DA9B8(v18, type metadata accessor for Proto_StringVector);
  sub_2574695E4(v22, &qword_27F87A878, &unk_257748700);
  if ((v46 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_7:
  v26 = v56;
  v27 = *(v9 + 48);
  v28 = v54;
  sub_2574DA900();
  sub_2574DA900();
  v29 = v58;
  if (__swift_getEnumTagSinglePayload(v28, 1, v58) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v28 + v27, 1, v29) == 1)
    {
      sub_2574695E4(v28, &qword_27F87A880, &qword_25774AFD0);
      goto LABEL_10;
    }

    goto LABEL_51;
  }

  v47 = v57;
  sub_2574DA900();
  if (__swift_getEnumTagSinglePayload(v28 + v27, 1, v29) == 1)
  {
    sub_2574DA9B8(v47, type metadata accessor for Proto_Int64Vector);
LABEL_51:
    v40 = &qword_27F87AFA0;
    v41 = &qword_25774BD18;
LABEL_52:
    v42 = v28;
    goto LABEL_53;
  }

  v49 = v53;
  sub_2574DA95C();
  if ((sub_257487374() & 1) == 0)
  {
    sub_2574DA9B8(v49, type metadata accessor for Proto_Int64Vector);
    sub_2574DA9B8(v47, type metadata accessor for Proto_Int64Vector);
    v40 = &qword_27F87A880;
    v41 = &qword_25774AFD0;
    goto LABEL_52;
  }

  sub_2577431B4();
  OUTLINED_FUNCTION_0_20();
  sub_2574DA5E8(v50, v51, MEMORY[0x277D216D0]);
  v52 = sub_257743644();
  sub_2574DA9B8(v49, type metadata accessor for Proto_Int64Vector);
  sub_2574DA9B8(v47, type metadata accessor for Proto_Int64Vector);
  sub_2574695E4(v28, &qword_27F87A880, &qword_25774AFD0);
  if ((v52 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_10:
  v30 = v26[1] == a2[1] && v26[2] == a2[2];
  if (!v30 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_54;
  }

  v31 = v26[3] == a2[3] && v26[4] == a2[4];
  if (!v31 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_54;
  }

  v32 = v26[5] == a2[5] && v26[6] == a2[6];
  if (!v32 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_54;
  }

  v33 = v26[7] == a2[7] && v26[8] == a2[8];
  if (!v33 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_54;
  }

  v34 = v26[9] == a2[9] && v26[10] == a2[10];
  if (!v34 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_54;
  }

  v35 = v26[11] == a2[11] && v26[12] == a2[12];
  if (!v35 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_2577431B4();
  OUTLINED_FUNCTION_0_20();
  sub_2574DA5E8(v36, v37, MEMORY[0x277D216D0]);
  v38 = sub_257743644();
  return v38 & 1;
}

uint64_t sub_2574D9404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2574D9478(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2574D9540(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574DA5E8(&qword_27F87AF88, type metadata accessor for Proto_ItemSimilarityRecommender, &unk_25774BB38);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574D95E0(uint64_t a1)
{
  v2 = sub_2574DA5E8(&qword_27F87AF58, type metadata accessor for Proto_ItemSimilarityRecommender, &unk_25774BC60);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574D96A8(uint64_t a1, uint64_t a2)
{
  sub_2574DA5E8(&qword_27F87AF58, type metadata accessor for Proto_ItemSimilarityRecommender, &unk_25774BC60);

  return sub_257743424();
}

uint64_t sub_2574D9758()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8480);
  __swift_project_value_buffer(v0, qword_27F8E8480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "itemId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "similarityScore";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574D9920()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743374();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_2577433B4();
    }
  }

  return result;
}

uint64_t sub_2574D9990()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v0 || (OUTLINED_FUNCTION_9_5(), OUTLINED_FUNCTION_11_6(), result = sub_257743554(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_9_5(), OUTLINED_FUNCTION_10_7(), result = sub_257743524(), !v1))
    {
      type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem(0);
      OUTLINED_FUNCTION_10_7();
      return sub_257743194();
    }
  }

  return result;
}

uint64_t sub_2574D9A2C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_267();
  if (*(v2 + 8) != *(v3 + 8))
  {
    return 0;
  }

  type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_20();
  v6 = sub_2574DA5E8(v4, v5, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v6) & 1;
}

uint64_t sub_2574D9B1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574DA5E8(&qword_27F87AF98, type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem, &unk_25774BA48);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574D9BBC(uint64_t a1)
{
  v2 = sub_2574DA5E8(&qword_27F87AF40, type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem, &unk_25774BB70);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574D9C84(uint64_t a1, uint64_t a2)
{
  sub_2574DA5E8(&qword_27F87AF40, type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem, &unk_25774BB70);

  return sub_257743424();
}

uint64_t sub_2574D9D34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x259C64E90](a2, a3);
  *a4 = 0xD00000000000001FLL;
  *a5 = 0x800000025777ADB0;
  return result;
}

uint64_t sub_2574D9DA0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E84A8);
  __swift_project_value_buffer(v0, qword_27F8E84A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "itemId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "similarItemList";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "itemScoreAdjustment";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574D9FA8()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_10_7();
        sub_257743374();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_2574DA030(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_10_7();
        sub_2577433B4();
        break;
    }
  }

  return result;
}

uint64_t sub_2574DA030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem(0);
  sub_2574DA5E8(&qword_27F87AF40, type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem, &unk_25774BB70);
  return sub_2577433C4();
}

uint64_t sub_2574DA0D0()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v0 || (OUTLINED_FUNCTION_9_5(), OUTLINED_FUNCTION_11_6(), result = sub_257743554(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem(0), sub_2574DA5E8(&qword_27F87AF40, type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem, &unk_25774BB70), OUTLINED_FUNCTION_9_5(), result = sub_257743564(), !v1))
    {
      if (!*(v2 + 16) || (OUTLINED_FUNCTION_9_5(), OUTLINED_FUNCTION_10_7(), result = sub_257743524(), !v1))
      {
        type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems(0);
        OUTLINED_FUNCTION_10_7();
        return sub_257743194();
      }
    }
  }

  return result;
}

uint64_t sub_2574DA1E8(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_267();
  sub_25747BBE4(*(v4 + 8), *(v5 + 8));
  if ((v6 & 1) == 0 || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_20();
  v9 = sub_2574DA5E8(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v9) & 1;
}

uint64_t sub_2574DA28C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_257743A14();
  a1(0);
  sub_2574DA5E8(a2, a3, a4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574DA370(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574DA5E8(&qword_27F87AF90, type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems, &unk_25774B998);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574DA410(uint64_t a1)
{
  v2 = sub_2574DA5E8(&qword_27F87AF30, type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems, &unk_25774BBE8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574DA4D8(uint64_t a1, uint64_t a2)
{
  sub_2574DA5E8(&qword_27F87AF30, type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems, &unk_25774BBE8);

  return sub_257743424();
}

uint64_t sub_2574DA5E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2574DA900()
{
  OUTLINED_FUNCTION_267();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_4();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_2574DA95C()
{
  OUTLINED_FUNCTION_267();
  v2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_2574DA9B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_2574DAA70(uint64_t a1)
{
  sub_2574DAEBC(319, &qword_281537E28, type metadata accessor for Proto_LinkedModel.OneOf_LinkType);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2574DAB30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_LinkedModelFile(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_8Tm_0);
}

uint64_t sub_2574DABA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Proto_LinkedModelFile(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_9Tm_0);
}

uint64_t sub_2574DAC10(uint64_t a1)
{
  v2 = type metadata accessor for Proto_LinkedModelFile(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm_0(uint64_t a1, uint64_t a2)
{
  sub_2577431B4();
  OUTLINED_FUNCTION_18_3();
  if (*(v5 + 84) == a2)
  {
    v6 = v4;
    v7 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB8, &unk_2577766E0);
    v7 = OUTLINED_FUNCTION_24_5();
  }

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm_0()
{
  OUTLINED_FUNCTION_33_1();
  sub_2577431B4();
  OUTLINED_FUNCTION_18_3();
  if (*(v4 + 84) == v2)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB8, &unk_2577766E0);
    v6 = OUTLINED_FUNCTION_24_5();
  }

  return __swift_storeEnumTagSinglePayload(v6, v0, v0, v5);
}

void sub_2574DAE1C(uint64_t a1)
{
  sub_2577431B4();
  if (v1 <= 0x3F)
  {
    sub_2574DAEBC(319, &qword_281537C28, type metadata accessor for Proto_StringParameter);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574DAEBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2577437B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2574DAF10()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB0, &unk_25774BD30);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  sub_257487308(v2);
  v7 = type metadata accessor for Proto_LinkedModel.OneOf_LinkType(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    return sub_2574DD220();
  }

  sub_2574695E4(v6, &qword_27F87AFB0, &unk_25774BD30);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_LinkedModelFile(0);
  type metadata accessor for Proto_StringParameter(0);
  OUTLINED_FUNCTION_6_11();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_6_11();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_2574DB044()
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_LinkedModelFile(0);
  type metadata accessor for Proto_StringParameter(0);
  OUTLINED_FUNCTION_6_11();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_6_11();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_2574DB0B4()
{
  OUTLINED_FUNCTION_267();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B028, &qword_25774C090);
  OUTLINED_FUNCTION_13(v2);
  OUTLINED_FUNCTION_29();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *(v4 + 56);
  sub_2574DD278(v1, &v10 - v5);
  sub_2574DD278(v0, &v6[v7]);
  v8 = sub_2574DC72C(v6, &v6[v7]);
  sub_2574DD1C8(&v6[v7], type metadata accessor for Proto_LinkedModelFile);
  sub_2574DD1C8(v6, type metadata accessor for Proto_LinkedModelFile);
  return v8 & 1;
}

uint64_t sub_2574DB184@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_LinkedModel.OneOf_LinkType(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  type metadata accessor for Proto_LinkedModel(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574DB1D4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E84C0);
  __swift_project_value_buffer(v0, qword_27F8E84C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2577442B0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "linkedModelFile";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_257743594();
}

uint64_t sub_2574DB340()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_205();
      sub_2574DB398(v5, v6, v2, v1);
    }
  }

  return result;
}

uint64_t sub_2574DB398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v5 = type metadata accessor for Proto_LinkedModelFile(0);
  v6 = MEMORY[0x28223BE20](v5);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB0, &unk_25774BD30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Proto_LinkedModel.OneOf_LinkType(0);
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B008, &qword_25774C080);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_257487308(a1);
  v24 = v11;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v10, &qword_27F87AFB0, &unk_25774BD30);
  }

  else
  {
    sub_2574DD220();
    sub_2574DD220();
    sub_2574695E4(v18, &qword_27F87B008, &qword_25774C080);
    sub_2574DD220();
    sub_2574DD220();
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
  }

  sub_2574DCFD0(&qword_27F87AFC8, type metadata accessor for Proto_LinkedModelFile, &unk_25774BEA0);
  v20 = v27;
  sub_2577433D4();
  if (v20)
  {
    v21 = v18;
    return sub_2574695E4(v21, &qword_27F87B008, &qword_25774C080);
  }

  sub_257487308(v18);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_2574695E4(v18, &qword_27F87B008, &qword_25774C080);
    v21 = v16;
    return sub_2574695E4(v21, &qword_27F87B008, &qword_25774C080);
  }

  sub_2574DD220();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  sub_2574695E4(v18, &qword_27F87B008, &qword_25774C080);
  v23 = v25;
  sub_2574695E4(v25, &qword_27F87AFB0, &unk_25774BD30);
  sub_2574DD220();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
}

uint64_t sub_2574DB83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2574DB8BC(v3, a1, a2, a3);
  if (!v4)
  {
    type metadata accessor for Proto_LinkedModel(0);
    return sub_257743194();
  }

  return result;
}

uint64_t sub_2574DB8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB0, &unk_25774BD30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_LinkedModelFile(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308(a1);
  v11 = type metadata accessor for Proto_LinkedModel.OneOf_LinkType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87AFB0, &unk_25774BD30);
  }

  sub_2574DD220();
  sub_2574DCFD0(&qword_27F87AFC8, type metadata accessor for Proto_LinkedModelFile, &unk_25774BEA0);
  sub_257743574();
  return sub_2574DD1C8(v10, type metadata accessor for Proto_LinkedModelFile);
}

uint64_t _s20MLModelSpecification24LinkedModelConfigurationV2eeoiySbAC_ACtFZ_0()
{
  OUTLINED_FUNCTION_267();
  type metadata accessor for Proto_LinkedModel.OneOf_LinkType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB0, &unk_25774BD30);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B030, &qword_25774C098);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v14 = *(v11 + 56);
  sub_257487308(v1);
  sub_257487308(v0);
  OUTLINED_FUNCTION_65(v13);
  if (v15)
  {
    OUTLINED_FUNCTION_65(&v13[v14]);
    if (v15)
    {
      sub_2574695E4(v13, &qword_27F87AFB0, &unk_25774BD30);
LABEL_12:
      type metadata accessor for Proto_LinkedModel(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_21();
      sub_2574DCFD0(v18, v19, MEMORY[0x277D216D0]);
      v16 = sub_257743644();
      return v16 & 1;
    }

    goto LABEL_9;
  }

  sub_257487308(v13);
  OUTLINED_FUNCTION_65(&v13[v14]);
  if (v15)
  {
    sub_2574DD1C8(v8, type metadata accessor for Proto_LinkedModel.OneOf_LinkType);
LABEL_9:
    sub_2574695E4(v13, &qword_27F87B030, &qword_25774C098);
    goto LABEL_10;
  }

  sub_2574DD220();
  v17 = sub_2574DB0B4();
  sub_2574DD1C8(v4, type metadata accessor for Proto_LinkedModel.OneOf_LinkType);
  sub_2574DD1C8(v8, type metadata accessor for Proto_LinkedModel.OneOf_LinkType);
  sub_2574695E4(v13, &qword_27F87AFB0, &unk_25774BD30);
  if (v17)
  {
    goto LABEL_12;
  }

LABEL_10:
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_2574DBD94(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574DCFD0(&qword_27F87B000, type metadata accessor for Proto_LinkedModel, &unk_25774BF90);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574DBE34(uint64_t a1)
{
  v2 = sub_2574DCFD0(&qword_27F87AFE0, type metadata accessor for Proto_LinkedModel, &unk_25774BFC8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574DBEFC(uint64_t a1, uint64_t a2)
{
  sub_2574DCFD0(&qword_27F87AFE0, type metadata accessor for Proto_LinkedModel, &unk_25774BFC8);

  return sub_257743424();
}

uint64_t sub_2574DBF7C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E84D8);
  __swift_project_value_buffer(v0, qword_27F8E84D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "linkedModelFileName";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "linkedModelSearchPath";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574DC144()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_6_8();
      sub_2574DC260(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_6_8();
      sub_2574DC1AC(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_2574DC1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_LinkedModelFile(0);
  type metadata accessor for Proto_StringParameter(0);
  sub_2574DCFD0(&qword_27F87B018, type metadata accessor for Proto_StringParameter, &unk_2577683F0);
  return sub_2577433D4();
}

uint64_t sub_2574DC260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_LinkedModelFile(0);
  type metadata accessor for Proto_StringParameter(0);
  sub_2574DCFD0(&qword_27F87B018, type metadata accessor for Proto_StringParameter, &unk_2577683F0);
  return sub_2577433D4();
}

uint64_t sub_2574DC314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_4_5();
  result = sub_2574DC36C(v4, v5, v6, v7);
  if (!v3)
  {
    v9 = OUTLINED_FUNCTION_4_5();
    sub_2574DC54C(v9, v10, v11, v12);
    return sub_257743194();
  }

  return result;
}

uint64_t sub_2574DC36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB8, &unk_2577766E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_StringParameter(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_LinkedModelFile(0);
  sub_257487308(a1 + *(v11 + 20));
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87AFB8, &unk_2577766E0);
  }

  sub_2574DD220();
  sub_2574DCFD0(&qword_27F87B018, type metadata accessor for Proto_StringParameter, &unk_2577683F0);
  sub_257743574();
  return sub_2574DD1C8(v10, type metadata accessor for Proto_StringParameter);
}

uint64_t sub_2574DC54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB8, &unk_2577766E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_StringParameter(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_LinkedModelFile(0);
  sub_257487308(a1 + *(v11 + 24));
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87AFB8, &unk_2577766E0);
  }

  sub_2574DD220();
  sub_2574DCFD0(&qword_27F87B018, type metadata accessor for Proto_StringParameter, &unk_2577683F0);
  sub_257743574();
  return sub_2574DD1C8(v10, type metadata accessor for Proto_StringParameter);
}

uint64_t sub_2574DC72C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Proto_StringParameter(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_25_0();
  v54 = v5;
  MEMORY[0x28223BE20](v6);
  v56 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB8, &unk_2577766E0);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_0();
  v55 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = (&v54 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B020, &qword_25774C088);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_0();
  v58 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  v57 = type metadata accessor for Proto_LinkedModelFile(0);
  v20 = *(v57 + 20);
  v21 = *(v14 + 48);
  v59 = a1;
  sub_257487308(a1 + v20);
  v22 = a2 + v20;
  v23 = a2;
  sub_257487308(v22);
  OUTLINED_FUNCTION_42_0(v19);
  if (v24)
  {
    OUTLINED_FUNCTION_42_0(&v19[v21]);
    if (v24)
    {
      sub_2574695E4(v19, &qword_27F87AFB8, &unk_2577766E0);
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  sub_257487308(v19);
  OUTLINED_FUNCTION_42_0(&v19[v21]);
  if (v24)
  {
    OUTLINED_FUNCTION_4_8();
    sub_2574DD1C8(v13, v25);
LABEL_9:
    v26 = &qword_27F87B020;
    v27 = &qword_25774C088;
LABEL_10:
    v28 = v19;
LABEL_27:
    sub_2574695E4(v28, v26, v27);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_3_12();
  v29 = v56;
  sub_2574DD220();
  v30 = *v13 == *v29 && v13[1] == v29[1];
  if (!v30 && (sub_257743994() & 1) == 0)
  {
    OUTLINED_FUNCTION_5_13();
    sub_2574DD1C8(v29, v51);
    v52 = OUTLINED_FUNCTION_205();
    sub_2574DD1C8(v52, v53);
    v26 = &qword_27F87AFB8;
    v27 = &unk_2577766E0;
    goto LABEL_10;
  }

  sub_2577431B4();
  OUTLINED_FUNCTION_0_21();
  sub_2574DCFD0(v31, v32, MEMORY[0x277D216D0]);
  v33 = sub_257743644();
  sub_2574DD1C8(v29, type metadata accessor for Proto_StringParameter);
  sub_2574DD1C8(v13, type metadata accessor for Proto_StringParameter);
  sub_2574695E4(v19, &qword_27F87AFB8, &unk_2577766E0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  v34 = v58;
  v35 = *(v57 + 24);
  v36 = *(v14 + 48);
  sub_257487308(v59 + v35);
  sub_257487308(v23 + v35);
  OUTLINED_FUNCTION_65(v34);
  if (v24)
  {
    OUTLINED_FUNCTION_65(v34 + v36);
    if (v24)
    {
      sub_2574695E4(v34, &qword_27F87AFB8, &unk_2577766E0);
LABEL_36:
      sub_2577431B4();
      OUTLINED_FUNCTION_0_21();
      sub_2574DCFD0(v49, v50, MEMORY[0x277D216D0]);
      v40 = sub_257743644();
      return v40 & 1;
    }

    goto LABEL_25;
  }

  v37 = v55;
  sub_257487308(v34);
  OUTLINED_FUNCTION_65(v34 + v36);
  if (v38)
  {
    OUTLINED_FUNCTION_4_8();
    sub_2574DD1C8(v37, v39);
LABEL_25:
    v26 = &qword_27F87B020;
    v27 = &qword_25774C088;
LABEL_26:
    v28 = v34;
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_3_12();
  v42 = v54;
  sub_2574DD220();
  v43 = *v37 == *v42 && v37[1] == v42[1];
  if (!v43 && (sub_257743994() & 1) == 0)
  {
    sub_2574DD1C8(v42, type metadata accessor for Proto_StringParameter);
    sub_2574DD1C8(v37, type metadata accessor for Proto_StringParameter);
    v26 = &qword_27F87AFB8;
    v27 = &unk_2577766E0;
    goto LABEL_26;
  }

  v44 = sub_2577431B4();
  OUTLINED_FUNCTION_0_21();
  sub_2574DCFD0(v45, v46, MEMORY[0x277D216D0]);
  v47 = sub_257743644();
  OUTLINED_FUNCTION_5_13();
  sub_2574DD1C8(v42, v48);
  sub_2574DD1C8(v37, v44);
  sub_2574695E4(v34, &qword_27F87AFB8, &unk_2577766E0);
  if (v47)
  {
    goto LABEL_36;
  }

LABEL_28:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_2574DCC80(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_257743A14();
  a1(0);
  sub_2574DCFD0(a2, a3, a4);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574DCD58(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574DCFD0(&qword_27F87B010, type metadata accessor for Proto_LinkedModelFile, &unk_25774BE68);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574DCDF8(uint64_t a1)
{
  v2 = sub_2574DCFD0(&qword_27F87AFC8, type metadata accessor for Proto_LinkedModelFile, &unk_25774BEA0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574DCEC0(uint64_t a1, uint64_t a2)
{
  sub_2574DCFD0(&qword_27F87AFC8, type metadata accessor for Proto_LinkedModelFile, &unk_25774BEA0);

  return sub_257743424();
}

uint64_t sub_2574DCFD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2574DD1C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2574DD220()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

uint64_t sub_2574DD278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_LinkedModel.OneOf_LinkType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2574DD34C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_112_0(a1);
  v1 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
  OUTLINED_FUNCTION_192_0(v1);
  type metadata accessor for Proto_MILSpec_ValueType(0);
  v2 = OUTLINED_FUNCTION_17_4();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void _s20MLModelSpecification9MLProgramV14NamedValueTypeV2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Proto_MILSpec_ValueType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E18, &qword_257744738);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = *v3 == *v1 && v3[1] == *(v1 + 8);
  if (!v17 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_16;
  }

  v40 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
  v18 = *(v40 + 24);
  v19 = *(v13 + 48);
  sub_2574FD880(v3 + v18, v16, &qword_27F879E10, &qword_257744730);
  sub_2574FD880(v1 + v18, &v16[v19], &qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_42_0(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_42_0(&v16[v19]);
    if (v17)
    {
      sub_2574695E4(v16, &qword_27F879E10, &qword_257744730);
LABEL_20:
      sub_2577431B4();
      OUTLINED_FUNCTION_0_22();
      sub_2574FB49C(v36, v37, MEMORY[0x277D216D0]);
      v28 = sub_257743644();
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v20 = OUTLINED_FUNCTION_264();
  sub_2574FD880(v20, v21, v22, v23);
  OUTLINED_FUNCTION_42_0(&v16[v19]);
  if (v24)
  {
    OUTLINED_FUNCTION_3_13();
    sub_2574FD734(v12, v25);
LABEL_14:
    v26 = &qword_27F879E18;
    v27 = &qword_257744738;
LABEL_15:
    sub_2574695E4(v16, v26, v27);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_1_13();
  sub_2574FD78C();
  if (*&v12[*(v4 + 20)] != *(v8 + *(v4 + 20)))
  {

    sub_2574E7A90();
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      OUTLINED_FUNCTION_24_6();
      sub_2574FD734(v8, v38);
      sub_2574FD734(v12, v1);
      v26 = &qword_27F879E10;
      v27 = &qword_257744730;
      goto LABEL_15;
    }
  }

  v31 = sub_2577431B4();
  OUTLINED_FUNCTION_0_22();
  sub_2574FB49C(v32, v33, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_294();
  sub_257743644();
  OUTLINED_FUNCTION_23_5();
  v35 = v34;
  sub_2574FD734(v8, v34);
  sub_2574FD734(v12, v35);
  sub_2574695E4(v16, &qword_27F879E10, &qword_257744730);
  if (v31)
  {
    goto LABEL_20;
  }

LABEL_16:
  v28 = 0;
LABEL_21:
  OUTLINED_FUNCTION_65_0(v28);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574DD6E0(uint64_t result)
{
  switch(result)
  {
    case 10:
      result = 5;
      break;
    case 11:
      result = 6;
      break;
    case 12:
      result = 7;
      break;
    case 13:
      result = 8;
      break;
    case 21:
      result = 9;
      break;
    case 22:
      result = 10;
      break;
    case 23:
      result = 11;
      break;
    case 24:
      result = 12;
      break;
    case 25:
      result = 13;
      break;
    case 31:
      result = 14;
      break;
    case 32:
      result = 15;
      break;
    case 33:
      result = 16;
      break;
    case 34:
      result = 17;
      break;
    case 35:
      result = 18;
      break;
    case 36:
      result = 19;
      break;
    case 37:
      result = 20;
      break;
    case 38:
      result = 21;
      break;
    case 39:
      result = 22;
      break;
    case 40:
      result = 3;
      break;
    case 41:
      result = 4;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2574DD7C0(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_25774F370[result];
  }

  return result;
}