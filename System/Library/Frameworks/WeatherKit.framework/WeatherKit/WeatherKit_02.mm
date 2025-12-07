uint64_t sub_23B3BEB94()
{

  OUTLINED_FUNCTION_148();

  return swift_deallocObject();
}

uint64_t sub_23B3BEBD8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_23B50C7C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v38 = &v34[-v9];
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v34[-v12];
  v14 = *(v5 + 16);
  v14(&v34[-v12], a1, v4, v11);
  result = (*(v5 + 88))(v13, v4);
  if (result == *MEMORY[0x277D7B078])
  {
    v16 = 0;
LABEL_17:
    *a2 = v16;
    return result;
  }

  if (result == *MEMORY[0x277D7B080])
  {
    v16 = 2;
    goto LABEL_17;
  }

  if (result == *MEMORY[0x277D7B058] || result == *MEMORY[0x277D7B068])
  {
    v16 = 3;
    goto LABEL_17;
  }

  if (result == *MEMORY[0x277D7B070])
  {
    v16 = 5;
    goto LABEL_17;
  }

  if (result == *MEMORY[0x277D7B088])
  {
    v16 = 4;
    goto LABEL_17;
  }

  if (result == *MEMORY[0x277D7B060])
  {
    v16 = 1;
    goto LABEL_17;
  }

  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v18 = sub_23B50CDF4();
  __swift_project_value_buffer(v18, qword_280B4E9D8);
  v19 = v38;
  (v14)(v38, a1, v4);
  v20 = sub_23B50CDD4();
  v21 = sub_23B50D4B4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v36 = v22;
    v37 = swift_slowAlloc();
    v39 = v37;
    *v22 = 136446210;
    v23 = v38;
    (v14)(v7, v38, v4);
    v24 = sub_23B50D184();
    v26 = v25;
    v35 = v21;
    v27 = *(v5 + 8);
    v27(v23, v4);
    v28 = sub_23B391F1C(v24, v26, &v39);

    v29 = v36;
    *(v36 + 1) = v28;
    v30 = v27;
    v31 = v29;
    _os_log_impl(&dword_23B38D000, v20, v35, "Invalid precipitationPhrase: %{public}s", v29, 0xCu);
    v32 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x23EE9E260](v32, -1, -1);
    MEMORY[0x23EE9E260](v31, -1, -1);
  }

  else
  {

    v30 = *(v5 + 8);
    v30(v19, v4);
  }

  sub_23B3E3D54();
  swift_allocError();
  *v33 = 1;
  swift_willThrow();
  return (v30)(v13, v4);
}

void sub_23B3BEFD0()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = sub_23B50C0B4();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_232();
  v8 = sub_23B50C104();
  OUTLINED_FUNCTION_5();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_174();
  sub_23B50C0A4();
  v18 = sub_23B50D194();
  v19 = v12;

  sub_23B50C0F4();
  sub_23B50D194();

  sub_23B50C0F4();
  v17 = sub_23B50D194();
  v14 = v13;

  (*(v10 + 104))(v0, *MEMORY[0x277D7AF58], v8);
  sub_23B3FD404(&qword_280B42F20, MEMORY[0x277D7AF88], MEMORY[0x277D7AF90]);
  OUTLINED_FUNCTION_222();
  v15 = sub_23B50D134();
  (*(v10 + 8))(v0, v8);
  if (v15 & 1) != 0 || ((*(v6 + 104))(v1, *MEMORY[0x277D7AEE8], v4), sub_23B3FD404(&qword_27E1321D8, MEMORY[0x277D7AEF0], MEMORY[0x277D7AEF8]), OUTLINED_FUNCTION_203(), v16 = sub_23B50D134(), (*(v6 + 8))(v1, v4), (v16))
  {
  }

  else
  {
    if (sub_23B3F55F8(v3))
    {
      OUTLINED_FUNCTION_217();
      MEMORY[0x23EE9D460](762278957, 0xE400000000000000);
      MEMORY[0x23EE9D460](v17, v14);
    }

    else
    {

      OUTLINED_FUNCTION_217();
    }

    MEMORY[0x23EE9D460](46, 0xE100000000000000);
    MEMORY[0x23EE9D460](v18, v19);
  }

  OUTLINED_FUNCTION_20();
}

void OUTLINED_FUNCTION_204_0(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 216) = v1;
  *(v2 - 208) = v3;
}

__n128 OUTLINED_FUNCTION_142_1(unint64_t a1)
{
  v3[7].n128_u64[1] = a1;
  result = v3[3];
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  *(a1 + 56) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_77_2@<X0>(uint64_t a1@<X8>)
{
  v4[10] = a1;
  v4[11] = v1;
  v4[12] = v2;
  v4[13] = v3;
  return 0;
}

void OUTLINED_FUNCTION_221_0(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  *(a1 - 32) = v2;
  *(a1 - 24) = v3;
}

uint64_t OUTLINED_FUNCTION_181_0(uint64_t a1)
{
  v6 = *(v4 - 184);
  v1[6] = a1;
  v1[7] = v6;
  v1[8] = v3;
  v1[9] = v2;
}

uint64_t OUTLINED_FUNCTION_39_7()
{
  v4 = v0 + *(v1 + 52);
  v5 = *(v2 - 96);

  return sub_23B3CA20C(v5, v4);
}

void OUTLINED_FUNCTION_39_8(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_39_10()
{

  return swift_getEnumCaseMultiPayload();
}

void sub_23B3BF6B8()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_200();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v5 = OUTLINED_FUNCTION_3(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12();
  v72 = v6;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_1();
  v71 = v8;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v9);
  v70 = &v60 - v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_191();
  v69 = v2;
  MEMORY[0x28223BE20](v12);
  v68 = &v60 - v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_190();
  v67 = v3;
  MEMORY[0x28223BE20](v15);
  v66 = &v60 - v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_189();
  v65 = v0;
  MEMORY[0x28223BE20](v18);
  v64 = &v60 - v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_177(v21);
  sub_23B50BD94();
  sub_23B50BD14();
  sub_23B50BC54();
  sub_23B50BDD4();
  sub_23B50BE04();
  sub_23B50BDB4();
  sub_23B50BC44();
  sub_23B50BCE4();
  sub_23B50BD44();
  sub_23B50BCA4();
  v22 = sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  v26 = type metadata accessor for SunEvents(0);
  v27 = v26[5];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v22);
  v31 = v26[6];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v22);
  v35 = v26[7];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v22);
  v39 = v26[8];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v22);
  v43 = v26[9];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v22);
  v63 = v26[10];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v22);
  v62 = v26[11];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v22);
  v61 = v26[12];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v22);
  v56 = v26[13];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v22);
  sub_23B3B7EA8();
  OUTLINED_FUNCTION_186(v64, v1 + v27);
  OUTLINED_FUNCTION_186(v65, v1 + v31);
  OUTLINED_FUNCTION_186(v66, v1 + v35);
  OUTLINED_FUNCTION_186(v67, v1 + v39);
  OUTLINED_FUNCTION_186(v68, v1 + v43);
  OUTLINED_FUNCTION_186(v69, v1 + v63);
  OUTLINED_FUNCTION_186(v70, v1 + v62);
  OUTLINED_FUNCTION_186(v71, v1 + v61);
  OUTLINED_FUNCTION_186(v72, v1 + v56);
  OUTLINED_FUNCTION_105();
}

void sub_23B3BFA24()
{
  OUTLINED_FUNCTION_21();
  v74 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132208, &qword_23B5101E0);
  OUTLINED_FUNCTION_3(v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_171();
  v76 = type metadata accessor for HistoricalComparison(0);
  OUTLINED_FUNCTION_5();
  v68 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12();
  v69 = v10;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_76();
  v67 = v12;
  OUTLINED_FUNCTION_24_0();
  v13 = sub_23B50B584();
  OUTLINED_FUNCTION_5();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_174();
  sub_23B50CCA4();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_232();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132210, &qword_23B5101E8);
  OUTLINED_FUNCTION_3(v18);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v19);
  v21 = OUTLINED_FUNCTION_25_2(v20);
  v70 = type metadata accessor for WeatherMetadata(v21);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_177(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E90, &unk_23B5101F0);
  OUTLINED_FUNCTION_3(v24);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_250();
  sub_23B50B5B4();
  OUTLINED_FUNCTION_5();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_27();
  v31 = v30 - v29;
  v33 = v32;
  sub_23B3B81F8();
  if (__swift_getEnumTagSinglePayload(v2, 1, v33) == 1)
  {
    sub_23B398890(v2, &qword_27E131E90, &unk_23B5101F0);
    type metadata accessor for HistoricalComparisons(0);
    OUTLINED_FUNCTION_1();
LABEL_4:
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    OUTLINED_FUNCTION_20();
  }

  else
  {
    (*(v27 + 32))(v31, v2, v33);
    sub_23B50B5A4();
    sub_23B3AFEEC(v4, v34, v35, v36, v37, v38, v39, v40, v65, v67, v68, v69);
    v75 = v27;
    v66 = v33;
    OUTLINED_FUNCTION_234();
    v45(v4);
    OUTLINED_FUNCTION_73();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v70);
    OUTLINED_FUNCTION_1_5();
    sub_23B3B0608();
    v71 = v31;
    v49 = sub_23B50B594();
    v50 = *(v49 + 16);

    v51 = 0;
    v72 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v50 == v51)
      {

        (*(v75 + 8))(v71, v66);

        type metadata accessor for HistoricalComparisons(0);
        OUTLINED_FUNCTION_1_5();
        sub_23B3B0608();
        *v74 = v72;
        OUTLINED_FUNCTION_60_1();
        goto LABEL_4;
      }

      if (v51 >= *(v49 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_52_0();
      (*(v15 + 16))(v0, v49 + v52 + *(v15 + 72) * v51, v13);
      v53 = v1;
      sub_23B3FC248(v0, v3);
      (*(v15 + 8))(v0, v13);
      if (__swift_getEnumTagSinglePayload(v3, 1, v76) == 1)
      {
        sub_23B398890(v3, &qword_27E132208, &qword_23B5101E0);
        ++v51;
      }

      else
      {
        OUTLINED_FUNCTION_94();
        sub_23B3B0608();
        sub_23B3B0608();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = OUTLINED_FUNCTION_126();
          sub_23B4F590C(v57, v58, v59, v60);
          v72 = v61;
        }

        v55 = *(v72 + 16);
        v54 = *(v72 + 24);
        v56 = v55 + 1;
        if (v55 >= v54 >> 1)
        {
          v62 = OUTLINED_FUNCTION_70_1(v54);
          v73 = v63;
          sub_23B4F590C(v62, v63, 1, v72);
          v56 = v73;
          v72 = v64;
        }

        ++v51;
        *(v72 + 16) = v56;
        OUTLINED_FUNCTION_23_3();
        OUTLINED_FUNCTION_94();
        sub_23B3B0608();
        v1 = v53;
      }
    }

    __break(1u);
  }
}

uint64_t OUTLINED_FUNCTION_182_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 200) = a1;

  return sub_23B50C954();
}

uint64_t sub_23B3C00AC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for WeatherMetadata(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_7()
{

  return sub_23B50AD24();
}

uint64_t OUTLINED_FUNCTION_18_11(uint64_t a1, uint64_t a2)
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_18_13(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_18_15()
{

  return sub_23B50AD24();
}

void OUTLINED_FUNCTION_18_17(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = v1;
}

uint64_t OUTLINED_FUNCTION_18_20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[22] = *(v10 + 16);
  v9[23] = v8;
  v9[20] = a7;
  v9[21] = a8;
  v9[18] = a5;
  v9[19] = a6;
  v9[16] = a3;
  v9[17] = a4;
  v9[14] = result;
  v9[15] = a2;
  return result;
}

void OUTLINED_FUNCTION_18_22(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *(v2 - 96) = v4;
  *(v2 - 88) = v3;
}

void OUTLINED_FUNCTION_18_23(int a1@<W8>)
{
  *(v1 - 240) = a1;
  *(v1 - 232) = a1;
  *(v1 - 224) = a1;
  *(v1 - 216) = a1;
  *(v1 - 208) = a1;
}

uint64_t sub_23B3C0338()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321A0, &unk_23B510158);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_127();
  v5 = sub_23B50CCD4();
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_68_1();
  sub_23B3B81F8();
  v9 = OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_51(v9, v10, v5);
  if (v11)
  {
    sub_23B398890(v1, &qword_27E1321A0, &unk_23B510158);
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v12 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v12, qword_280B4E9D8);
    v13 = sub_23B50CDD4();
    sub_23B50D4B4();
    v14 = OUTLINED_FUNCTION_26_2();
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_66_1();
      v16 = swift_slowAlloc();
      OUTLINED_FUNCTION_74_0(v16);
      OUTLINED_FUNCTION_20_4();
      _os_log_impl(v17, v18, v19, v20, v21, v22);
      v23 = OUTLINED_FUNCTION_35_2();
      MEMORY[0x23EE9E260](v23);
    }

    v24 = sub_23B3E3D54();
    v25 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v24);
    OUTLINED_FUNCTION_55_1(v25, v26);
  }

  else
  {
    OUTLINED_FUNCTION_231();
    v27();
    v28 = sub_23B3C0E74(v2);
    if (!v0)
    {
      v1 = v28;
    }

    (*(v7 + 8))(v2, v5);
  }

  return v1;
}

uint64_t sub_23B3C0560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a3;
  v75 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338A8, &qword_23B519358);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52();
  v59 = v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131ED0, &qword_23B50F200);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_52();
  v61 = v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EE0, &qword_23B50F210);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_52();
  v62 = v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA0, &qword_23B50F1B0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_52();
  v63 = v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E88, &unk_23B519360);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_52();
  v67 = v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_52();
  v69 = v15;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_52();
  v70 = v17;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C80, &qword_23B50ED48);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_52();
  v72 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C88, &unk_23B50ED50);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  v26 = &v58 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133958, &unk_23B519510);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v27);
  v29 = &v58 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C98, &unk_23B50ED60);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v30);
  v32 = &v58 - v31;
  v33 = *(a2 + 16);
  v34 = type metadata accessor for CurrentWeather(0);
  v77 = v33;
  if (v33 == v34)
  {
    sub_23B4299F4(v75, v32, &qword_27E131C98, &unk_23B50ED60);
    return swift_dynamicCast();
  }

  v35 = v75;
  type metadata accessor for InstantWeather(0);
  OUTLINED_FUNCTION_2_42();
  if (v36)
  {
    v40 = type metadata accessor for WeatherProductsContainer(0);
    sub_23B4299F4(v35 + *(v40 + 20), v29, qword_27E133958, &unk_23B519510);
    return swift_dynamicCast();
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F78, &unk_23B50F2B0);
  if (v77 == v37)
  {
    v78 = *(v35 + *(type metadata accessor for WeatherProductsContainer(0) + 24));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342D8, &qword_23B51D858);
  }

  else if (v77 == v23)
  {
    v41 = type metadata accessor for WeatherProductsContainer(0);
    sub_23B4299F4(v35 + *(v41 + 28), v26, &qword_27E131C90, &unk_23B514EC0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
    OUTLINED_FUNCTION_2_42();
    if (v36)
    {
      v42 = type metadata accessor for WeatherProductsContainer(0);
      sub_23B4299F4(v35 + *(v42 + 32), v22, &qword_27E131C88, &unk_23B50ED50);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
      OUTLINED_FUNCTION_2_42();
      if (v36)
      {
        v43 = v35 + *(type metadata accessor for WeatherProductsContainer(0) + 40);
        sub_23B4299F4(v43, v72, &qword_27E131C80, &qword_23B50ED48);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC8, &unk_23B50F1F0);
        OUTLINED_FUNCTION_2_42();
        if (v36)
        {
          v78 = *(v35 + *(type metadata accessor for WeatherProductsContainer(0) + 52));
        }

        else
        {
          if (v77 != v74)
          {
            if (v77 == v71)
            {
              v45 = type metadata accessor for WeatherProductsContainer(0);
              v46 = &qword_27E131EF0;
              v47 = &unk_23B50F220;
              v48 = v35 + *(v45 + 48);
              v49 = v69;
            }

            else
            {
              if (v77 == &type metadata for WeatherAvailability)
              {
                v50 = v35 + *(type metadata accessor for WeatherProductsContainer(0) + 56);
                v51 = *v50;
                BYTE2(v78) = *(v50 + 2);
                LOWORD(v78) = v51;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342D0, &qword_23B51D850);
                return swift_dynamicCast();
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131ED8, &qword_23B50F208);
              OUTLINED_FUNCTION_2_42();
              if (v36)
              {
                v52 = *(type metadata accessor for WeatherProductsContainer(0) + 76);
                goto LABEL_34;
              }

              if (v77 != v68)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF8, &unk_23B50F230);
                OUTLINED_FUNCTION_2_42();
                if (!v36)
                {
                  type metadata accessor for LocationInfo(0);
                  OUTLINED_FUNCTION_2_42();
                  if (v36)
                  {
                    v54 = type metadata accessor for WeatherProductsContainer(0);
                    sub_23B4299F4(v35 + *(v54 + 92), v63, &qword_27E131EA0, &qword_23B50F1B0);
                    return swift_dynamicCast();
                  }

                  if (v77 == v66)
                  {
                    v55 = type metadata accessor for WeatherProductsContainer(0);
                    v46 = &qword_27E131EE0;
                    v47 = &qword_23B50F210;
                    v48 = v35 + *(v55 + 80);
                    v49 = v62;
                  }

                  else
                  {
                    if (v77 != v65)
                    {
                      type metadata accessor for PeriodicForecasts(0);
                      OUTLINED_FUNCTION_2_42();
                      if (!v36)
                      {
                        sub_23B3E3D54();
                        swift_allocError();
                        *v38 = 1;
                        return swift_willThrow();
                      }

                      v57 = type metadata accessor for WeatherProductsContainer(0);
                      sub_23B4299F4(v35 + *(v57 + 36), v59, &qword_27E1338A8, &qword_23B519358);
                      return swift_dynamicCast();
                    }

                    v56 = type metadata accessor for WeatherProductsContainer(0);
                    v46 = &qword_27E131ED0;
                    v47 = &qword_23B50F200;
                    v48 = v35 + *(v56 + 72);
                    v49 = v61;
                  }

                  goto LABEL_29;
                }

                v52 = *(type metadata accessor for WeatherProductsContainer(0) + 88);
LABEL_34:
                v78 = *(v35 + v52);

                return swift_dynamicCast();
              }

              v53 = type metadata accessor for WeatherProductsContainer(0);
              v46 = &qword_27E131E88;
              v47 = &unk_23B519360;
              v48 = v35 + *(v53 + 84);
              v49 = v67;
            }

LABEL_29:
            sub_23B4299F4(v48, v49, v46, v47);
            return swift_dynamicCast();
          }

          v44 = type metadata accessor for WeatherProductsContainer(0);
          sub_23B4299F4(v35 + *(v44 + 44), v70, &qword_27E131C78, &qword_23B50ED40);
        }
      }
    }
  }

  return swift_dynamicCast();
}

uint64_t sub_23B3C0E74(uint64_t a1)
{
  v2 = sub_23B50CCD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = *(v3 + 16);
  v13(&v28 - v11, a1, v2, v10);
  v14 = (*(v3 + 88))(v12, v2);
  if (v14 == *MEMORY[0x277D7B1D8])
  {
    return 0;
  }

  if (v14 == *MEMORY[0x277D7B1D0])
  {
    return 1;
  }

  if (v14 == *MEMORY[0x277D7B1A8])
  {
    return 2;
  }

  if (v14 == *MEMORY[0x277D7B1C0])
  {
    return 3;
  }

  if (v14 == *MEMORY[0x277D7B1E0])
  {
    return 4;
  }

  if (v14 == *MEMORY[0x277D7B1B8])
  {
    return 5;
  }

  if (v14 == *MEMORY[0x277D7B1B0])
  {
    return 6;
  }

  if (v14 == *MEMORY[0x277D7B1C8])
  {
    return 7;
  }

  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v16 = sub_23B50CDF4();
  __swift_project_value_buffer(v16, qword_280B4E9D8);
  (v13)(v8, a1, v2);
  v17 = sub_23B50CDD4();
  v18 = sub_23B50D4B4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = v18;
    v20 = v19;
    v31 = swift_slowAlloc();
    v32 = v31;
    *v20 = 136315138;
    (v13)(v5, v8, v2);
    v29 = sub_23B50D184();
    v22 = v21;
    v23 = *(v3 + 8);
    v23(v8, v2);
    v24 = sub_23B391F1C(v29, v22, &v32);

    *(v20 + 4) = v24;
    v25 = v20;
    _os_log_impl(&dword_23B38D000, v17, v30, "Invalid data; invalid moon phase code: %s", v20, 0xCu);
    v26 = v31;
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x23EE9E260](v26, -1, -1);
    MEMORY[0x23EE9E260](v25, -1, -1);
  }

  else
  {

    v23 = *(v3 + 8);
    v23(v8, v2);
  }

  sub_23B3E3D54();
  swift_allocError();
  *v27 = 1;
  swift_willThrow();
  return (v23)(v12, v2);
}

uint64_t sub_23B3C1284@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v4 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v4, qword_280B4E9D8);
    v5 = sub_23B50CDD4();
    sub_23B50D4B4();
    v6 = OUTLINED_FUNCTION_26_2();
    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_66_1();
      v8 = swift_slowAlloc();
      OUTLINED_FUNCTION_74_0(v8);
      OUTLINED_FUNCTION_20_4();
      _os_log_impl(v9, v10, v11, v12, v13, v14);
      v15 = OUTLINED_FUNCTION_35_2();
      MEMORY[0x23EE9E260](v15);
    }

    v16 = sub_23B3E3D54();
    v17 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v16);
    return OUTLINED_FUNCTION_55_1(v17, v18);
  }

  else
  {
    result = sub_23B3C17D0(a1);
    if (!v3)
    {
      *a3 = a1;
      *(a3 + 8) = result;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_215()
{

  return sub_23B3B0608();
}

__n128 OUTLINED_FUNCTION_215_1(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 48) = result;
  *(a1 + 64) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_1@<X0>(uint64_t a1@<X8>)
{
  v4[14] = a1;
  v4[15] = v1;
  v4[16] = v2;
  v4[17] = v3;
  return 255;
}

uint64_t OUTLINED_FUNCTION_76_2(uint64_t a1)
{

  return sub_23B50D0E4();
}

void WeatherDataModel.init(currentWeather:minuteForecast:hourlyForecast:dailyForecast:airQuality:weatherChanges:weatherAlerts:availability:historicalComparisons:historicalFacts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22)
{
  OUTLINED_FUNCTION_21();
  v25 = v24;
  v78 = v26;
  v79 = v27;
  v75 = v29;
  v76 = v28;
  v80 = v31;
  v81 = v30;
  v82 = v33;
  v83 = v32;
  v77 = a21;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E88, &unk_23B519360);
  OUTLINED_FUNCTION_3(v34);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_52();
  v74 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  OUTLINED_FUNCTION_3(v37);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_52();
  v73 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v40);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_52();
  v72 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  OUTLINED_FUNCTION_3(v43);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v44);
  v46 = &v70 - v45;
  v71 = &v70 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  OUTLINED_FUNCTION_3(v47);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_21_1();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v49);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_20_0();
  v51 = type metadata accessor for CurrentWeather(0);
  v52 = OUTLINED_FUNCTION_3(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_27();
  v55 = v54 - v53;
  v56 = *v25;
  LOBYTE(v25) = *(v25 + 2);
  v57 = *a22;
  sub_23B445F28(v83, v54 - v53);
  OUTLINED_FUNCTION_15_11();
  sub_23B3CE510(v58, v59, v60, v61);
  sub_23B3CE510(v81, v22, &qword_27E131CA8, &unk_23B50ED70);
  sub_23B3CE510(v80, v46, &qword_27E131CB0, &qword_23B516B60);
  v62 = v76;
  v63 = v72;
  sub_23B3CE510(v76, v72, &qword_27E131C78, &qword_23B50ED40);
  v64 = v75;
  v65 = v73;
  sub_23B3CE510(v75, v73, &qword_27E131EF0, &unk_23B50F220);
  v85 = v56;
  v86 = v25;
  v66 = v77;
  v67 = v74;
  sub_23B3CE510(v77, v74, &qword_27E131E88, &unk_23B519360);
  v84 = v57;
  type metadata accessor for WeatherDataModel.Storage(0);
  swift_allocObject();
  v68 = sub_23B3C2118(v55, v23, v22, v71, v63, v65, v78, &v85, v67, &v84);
  sub_23B398890(v66, &qword_27E131E88, &unk_23B519360);
  sub_23B398890(v64, &qword_27E131EF0, &unk_23B50F220);
  sub_23B398890(v62, &qword_27E131C78, &qword_23B50ED40);
  sub_23B398890(v80, &qword_27E131CB0, &qword_23B516B60);
  sub_23B398890(v81, &qword_27E131CA8, &unk_23B50ED70);
  sub_23B398890(v82, &qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_0_30();
  sub_23B3CE608(v83, v69);
  *v79 = v68;
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B3C17D0(unint64_t a1)
{
  if (a1 < 3)
  {
    return 0;
  }

  if (a1 - 6 > 0xFFFFFFFFFFFFFFFCLL)
  {
    return 1;
  }

  if (a1 - 8 > 0xFFFFFFFFFFFFFFFDLL)
  {
    return 2;
  }

  if (a1 - 11 > 0xFFFFFFFFFFFFFFFCLL)
  {
    return 3;
  }

  if (a1 > 10)
  {
    return 4;
  }

  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v2 = sub_23B50CDF4();
  __swift_project_value_buffer(v2, qword_280B4E9D8);
  v3 = sub_23B50CDD4();
  v4 = sub_23B50D4B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_23B38D000, v3, v4, "Invalid data; invalid uvIndex: %ld", v5, 0xCu);
    MEMORY[0x23EE9E260](v5, -1, -1);
  }

  sub_23B3E3D54();
  swift_allocError();
  *v6 = 1;
  return swift_willThrow();
}

uint64_t type metadata accessor for WeatherDataModel.Storage(uint64_t a1)
{
  result = qword_280B42E40;
  if (!qword_280B42E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B3C1998(uint64_t a1)
{
  type metadata accessor for CurrentWeather(319);
  if (v1 <= 0x3F)
  {
    sub_23B3C1D70(319);
    if (v2 <= 0x3F)
    {
      sub_23B3C1C00(319);
      if (v3 <= 0x3F)
      {
        sub_23B3C1DD4(319);
        if (v4 <= 0x3F)
        {
          sub_23B3C1ED8(319, qword_280B44448, type metadata accessor for AirQuality);
          if (v5 <= 0x3F)
          {
            sub_23B3C1ED8(319, qword_280B44640, type metadata accessor for WeatherChanges);
            if (v6 <= 0x3F)
            {
              sub_23B3C1ED8(319, qword_280B43A38, type metadata accessor for HistoricalComparisons);
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

void sub_23B3C1C00(uint64_t a1)
{
  if (!qword_280B42F28)
  {
    v4[0] = type metadata accessor for HourWeather(255);
    v4[1] = sub_23B3C1D28(&qword_280B430D0, type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
    v4[2] = sub_23B3C1D28(&qword_280B430E0, type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
    v4[3] = sub_23B3C1D28(&qword_280B430D8, type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
    v2 = type metadata accessor for Forecast(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280B42F28);
    }
  }
}

uint64_t sub_23B3C1D28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23B3C1D70(uint64_t a1)
{
  if (!qword_280B43628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E131CA0, &qword_23B5101A0);
    v1 = sub_23B50D504();
    if (!v2)
    {
      atomic_store(v1, &qword_280B43628);
    }
  }
}

void sub_23B3C1DD4(uint64_t a1)
{
  if (!qword_280B42F30)
  {
    v4[0] = type metadata accessor for DayWeather(255);
    v4[1] = sub_23B3C1D28(&qword_280B430E8, type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
    v4[2] = sub_23B3C1D28(&qword_280B430F8, type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
    v4[3] = sub_23B3C1D28(&qword_280B430F0, type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
    v2 = type metadata accessor for Forecast(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280B42F30);
    }
  }
}

void sub_23B3C1ED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23B50D504();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23B3C1F2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_77();
    v4 = sub_23B50D504();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23B3C1F7C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  OUTLINED_FUNCTION_5();
  v5 = v4;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_127();
  v7 = [objc_opt_self() degrees];
  sub_23B50A9D4();

  sub_23B50A9C4();
  v9 = fmod(v8 + 11.25, 360.0) / 22.5;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9 <= 0xF)
  {
    v10 = *(v5 + 8);
    v10(a1, v3);
    v10(v1, v3);
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_23B3C2118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 *a8, uint64_t a9, uint64_t *a10)
{
  v30 = *(a8 + 2);
  v31 = *a8;
  v33 = *a10;
  v14 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_minuteForecast;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  __swift_storeEnumTagSinglePayload(v10 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_airQuality;
  v17 = type metadata accessor for AirQuality(0);
  __swift_storeEnumTagSinglePayload(v10 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_weatherChanges;
  v19 = type metadata accessor for WeatherChanges(0);
  __swift_storeEnumTagSinglePayload(v10 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_weatherAlerts;
  *(v10 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_weatherAlerts) = 0;
  v21 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_historicalComparisons;
  v22 = type metadata accessor for HistoricalComparisons(0);
  __swift_storeEnumTagSinglePayload(v10 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_historicalFacts;
  *(v10 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_historicalFacts) = 0;
  v24 = v10 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_comparisonHash;
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_23B449048(a1, v10 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_currentWeather, type metadata accessor for CurrentWeather);
  swift_beginAccess();
  sub_23B3C2510(a2, v10 + v14, &qword_27E131C90, &unk_23B514EC0);
  swift_endAccess();
  sub_23B3CE5BC(a3, v10 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_hourlyForecast, &qword_27E131CA8, &unk_23B50ED70);
  sub_23B3CE5BC(a4, v10 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_dailyForecast, &qword_27E131CB0, &qword_23B516B60);
  swift_beginAccess();
  sub_23B3C2510(a5, v10 + v16, &qword_27E131C78, &qword_23B50ED40);
  swift_endAccess();
  swift_beginAccess();
  sub_23B3C2510(a6, v10 + v18, &qword_27E131EF0, &unk_23B50F220);
  swift_endAccess();
  *(v10 + v20) = a7;

  v25 = v10 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_availability;
  *v25 = v31;
  *(v25 + 2) = v30;
  swift_beginAccess();
  sub_23B3C2510(a9, v10 + v21, &qword_27E131E88, &unk_23B519360);
  swift_endAccess();
  *(v10 + v23) = v33;

  return v10;
}

uint64_t sub_23B3C23EC(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v3 = [objc_opt_self() kilometersPerHour];
    v4 = OUTLINED_FUNCTION_128();
    sub_23B3924C0(v4, v5, v6);
    OUTLINED_FUNCTION_150();
    sub_23B50A9B4();
    v2 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  v7 = OUTLINED_FUNCTION_221();

  return __swift_storeEnumTagSinglePayload(v7, v2, 1, v8);
}

uint64_t sub_23B3C24A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B3C2510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_65();
  v6(v5);
  return v4;
}

uint64_t sub_23B3C255C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a3;
  v60 = a2;
  v61 = type metadata accessor for WeatherQuery(0, a3, a3, a4);
  v58 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F48, &qword_23B50F280);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F50, &qword_23B50F288);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v53 - v10;
  PeriodicRelativeRange = type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  MEMORY[0x28223BE20](PeriodicRelativeRange);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F58, &qword_23B50F290);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v53 - v16;
  v18 = type metadata accessor for WeatherServiceOptions(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = *(_s21WeatherServiceRequestVMa(0) + 20);
  sub_23B3AEEF0(a1 + v22, v20);
  if (type metadata accessor for PeriodicForecasts(0) == v62)
  {
    v56 = v11;
    v57 = v17;
    v23 = v61;
    v55 = v8;
    v62 = v22;

    v24 = v21;
    if (sub_23B3AF288(4, v21))
    {

      return sub_23B3AF34C(v20, type metadata accessor for WeatherServiceOptions);
    }

    v25 = a1;
    sub_23B3AF34C(a1, _s21WeatherServiceRequestVMa);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v14;
    v54 = PeriodicRelativeRange;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23B3AE984(0, *(v21 + 16) + 1, 1, v21);
      v24 = v51;
    }

    v27 = v23;
    v29 = v59;
    v28 = v60;
    v30 = v18;
    v32 = *(v24 + 16);
    v31 = *(v24 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_23B3AE984(v31 > 1, v32 + 1, 1, v24);
      v24 = v52;
    }

    v33 = v57;
    *(v24 + 16) = v32 + 1;
    *(v24 + v32 + 32) = 4;
    v34 = &v20[*(v30 + 32)];
    sub_23B39A44C(v34, v33, &qword_27E131F58, &qword_23B50F290);
    v61 = type metadata accessor for WeatherServicePeriodicRelativeRange(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v61);
    v36 = v33;
    LODWORD(v33) = EnumTagSinglePayload;
    sub_23B398890(v36, &qword_27E131F58, &qword_23B50F290);
    v37 = v62;
    if (v33 == 1)
    {
      v38 = v34;
      (*(v58 + 16))(v29, v28, v27);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F60, &qword_23B50F298);
      v40 = v55;
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v40, 0, 1, v39);
        v41 = v40 + *(v39 + 48);
        v42 = v56;
        sub_23B39A44C(v41, v56, &qword_27E131F50, &qword_23B50F288);
        sub_23B398890(v40, &qword_27E131F60, &qword_23B50F298);
        v43 = v54;
        if (__swift_getEnumTagSinglePayload(v42, 1, v54) != 1)
        {
          v44 = v53;
          sub_23B3CE728(v42, v53, type metadata accessor for WeatherQueryPeriodicRelativeRange);
          sub_23B398890(v38, &qword_27E131F58, &qword_23B50F290);
          v45 = sub_23B50AD24();
          v46 = v43;
          v47 = *(*(v45 - 8) + 32);
          v47(v38, v44, v45);
          v48 = *(v46 + 20);
          v49 = v61;
          v47(v38 + *(v61 + 20), v44 + v48, v45);
          *(v38 + *(v49 + 24)) = *(v44 + *(v54 + 24));
          __swift_storeEnumTagSinglePayload(v38, 0, 1, v49);
          goto LABEL_14;
        }
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v40, 1, 1, v39);
        sub_23B398890(v40, &qword_27E131F48, &qword_23B50F280);
        v42 = v56;
        __swift_storeEnumTagSinglePayload(v56, 1, 1, v54);
      }

      sub_23B398890(v42, &qword_27E131F50, &qword_23B50F288);
    }

LABEL_14:
    sub_23B3AEEF0(v20, v25 + v37);
    *v25 = v24;
  }

  return sub_23B3AF34C(v20, type metadata accessor for WeatherServiceOptions);
}

void WeatherService.lastServerFetch<each A>(for:including:options:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v72 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_23B50B664();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  v18 = 8 * v4;
  v78 = v15;
  v79 = v11;
  v76 = v13;
  v77 = v20 - v19;
  v73 = v0;
  v74 = v9;
  v81 = v2;
  if (v4 == 1)
  {
    TupleTypeMetadata = OUTLINED_FUNCTION_198_1(v16, v17, (v2 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    MEMORY[0x28223BE20](v15);
    v24 = 0;
    v25 = v2 & 0xFFFFFFFFFFFFFFFELL;
    while (v4 != v24)
    {
      *(&(&v68)[v24] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for WeatherQuery(255, *(v25 + 8 * v24), v22, v23);
      ++v24;
    }

    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v75 = &v68;
  v80 = TupleTypeMetadata;
  OUTLINED_FUNCTION_5();
  v69 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_27();
  v30 = v29 - v28;
  v31 = _s21WeatherServiceRequestVMa(0);
  v71 = &v68;
  v32 = OUTLINED_FUNCTION_3(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_27();
  v68 = (v34 - v33);
  v70 = &v68;
  MEMORY[0x28223BE20](v35);
  v38 = (&v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v4)
  {
    v39 = (v81 & 0xFFFFFFFFFFFFFFFELL);
    v40 = (v80 + 32);
    v41 = (&v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v42 = v4;
    do
    {
      if (v4 == 1)
      {
        v43 = 0;
      }

      else
      {
        v43 = *v40;
      }

      v45 = *v39++;
      v44 = v45;
      v46 = v30 + v43;
      v47 = *v7++;
      type metadata accessor for WeatherQuery(0, v44, v36, v37);
      OUTLINED_FUNCTION_2();
      (*(v48 + 16))(v46, v47);
      *v41++ = v46;
      v40 += 4;
      --v42;
    }

    while (v42);
  }

  v49 = v68;
  v50 = v74;
  v51 = v38;
  v52 = v73;
  sub_23B3ADF24(v51, v72, v4, v81, v68);
  (*(v69 + 8))(v30, v80);
  __swift_project_boxed_opaque_existential_1((v52 + 16), *(v52 + 40));
  [v50 coordinate];
  v53 = v77;
  sub_23B50B6C4();
  sub_23B393E24(v49, _s21WeatherServiceRequestVMa);
  v54 = (*(v76 + 88))(v53, v78);
  if (v54 == *MEMORY[0x277D7AC00])
  {
    v55 = OUTLINED_FUNCTION_36();
    v56(v55);
    v57 = sub_23B50AD24();
    OUTLINED_FUNCTION_6();
    v59 = v79;
    (*(v58 + 32))(v79, v53, v57);
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v57);
  }

  else
  {
    v60 = v54;
    v61 = *MEMORY[0x277D7AC08];
    sub_23B50AD24();
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
    if (v60 != v61)
    {
      v66 = OUTLINED_FUNCTION_36();
      v67(v66);
    }
  }

  OUTLINED_FUNCTION_20();
}

void sub_23B3C2F64(uint64_t a1@<X8>)
{
  v91 = a1;
  v1 = type metadata accessor for Wind(0);
  MEMORY[0x28223BE20](v1 - 8);
  v94 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v93 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v95 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v96 = &v78 - v5;
  v6 = type metadata accessor for PrecipitationAmountByType(0);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132190, &qword_23B510148);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v78 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v102 = *(v11 - 8);
  v103 = v11;
  MEMORY[0x28223BE20](v11);
  v105 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v78 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132160, &qword_23B510100);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v78 - v17;
  v99 = sub_23B50AD24();
  v101 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v78 - v22;
  sub_23B50C464();
  v100 = v20;
  sub_23B50C414();
  sub_23B50C3E4();
  v25 = v24;
  sub_23B50C4E4();
  v27 = v26;
  sub_23B50C4F4();
  v29 = v28;
  sub_23B50C524();
  v31 = v30;
  sub_23B50C454();
  v32 = sub_23B50C064();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v32);
  sub_23B3B8890(&v116);
  sub_23B398890(v18, &qword_27E132160, &qword_23B510100);
  v114 = v116;
  sub_23B50C4A4();
  v33 = objc_opt_self();
  v34 = [v33 celsius];
  sub_23B3924C0(0, &qword_280B43388, 0x277CCAE48);
  sub_23B50A9B4();
  sub_23B50C4B4();
  v35 = v105;
  v36 = [v33 celsius];
  sub_23B50A9B4();
  sub_23B50C4D4();
  v37 = v104;
  sub_23B3BC884();
  if (v37)
  {
    sub_23B398890(v10, &qword_27E132190, &qword_23B510148);
    v38 = v103;
    v39 = *(v102 + 8);
    v39(v35, v103);
    v39(v15, v38);
    v40 = *(v101 + 8);
    v41 = v99;
    v40(v100, v99);
    v40(v23, v41);
    return;
  }

  v90 = v23;
  v104 = v15;
  v42 = v102;
  v43 = v103;
  sub_23B398890(v10, &qword_27E132190, &qword_23B510148);
  v44 = v115;
  v45 = sub_23B50C534();
  sub_23B50C504();
  sub_23B3B250C(v45, v97);

  sub_23B50C514();
  v47 = v46;
  sub_23B50C544();
  sub_23B3C3CA0(v48, 0, &v112);
  v89 = v44;
  v49 = v112;
  v50 = v113;
  sub_23B50C554();
  sub_23B3C3CA0(v51, 0, &v110);
  v52 = v110;
  v88 = v111;
  v87 = sub_23B50C564();
  sub_23B50C3F4();
  if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v53 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v53 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_23B3C1284(v53, 0, &v108);
  v86 = v108;
  v85 = v109;
  sub_23B50C404();
  if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v54 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v54 < 9.22337204e18)
  {
    sub_23B3C1284(v54, 0, &v106);
    v82 = v106;
    v81 = v107;
    sub_23B50C424();
    v80 = v55;
    sub_23B50C434();
    v79 = v56;
    sub_23B50C474();
    v57 = objc_opt_self();
    v58 = [v57 meters];
    sub_23B3924C0(0, &qword_280B433A0, 0x277CCAE20);
    sub_23B50A9B4();
    sub_23B50C484();
    v59 = [v57 meters];
    sub_23B50A9B4();
    sub_23B50C584();
    v84 = v60;
    v83 = COERCE_DOUBLE(sub_23B50C494());
    sub_23B50C4C4();
    sub_23B3B32C4(*&v84, 0);
    v83 = v29 / 100.0;
    v61 = v31 / 100.0;
    v62 = v25 / 100.0;
    v84 = v80 / 100.0;
    v98 = v79 / 100.0;
    sub_23B50C444();
    v79 = COERCE_DOUBLE([objc_opt_self() kilometersPerHour]);
    v63 = type metadata accessor for DayPartForecast(0);
    sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
    LODWORD(v80) = v50;
    v64 = v91;
    sub_23B50A9B4();
    sub_23B50C574();
    v65 = *(v101 + 32);
    v67 = v66 / 100.0;
    v68 = v99;
    v65(v64, v90, v99);
    v65(v64 + v63[5], v100, v68);
    *(v64 + v63[6]) = v62;
    v69 = (v64 + v63[7]);
    v70 = v83;
    *v69 = v27 / 100.0;
    v69[1] = v70;
    v69[2] = v61;
    *(v64 + v63[8]) = v114;
    v71 = *(v42 + 32);
    v71(v64 + v63[9], v104, v43);
    v71(v64 + v63[10], v105, v43);
    *(v64 + v63[11]) = v89;
    sub_23B3B0608();
    *(v64 + v63[13]) = v47 / 100.0;
    v72 = v64 + v63[14];
    *v72 = v49;
    *(v72 + 8) = LOBYTE(v80);
    v73 = v64 + v63[15];
    *v73 = v52;
    *(v73 + 8) = v88;
    *(v64 + v63[16]) = v87 & 1;
    v74 = v64 + v63[17];
    *v74 = v86;
    *(v74 + 8) = v85;
    v75 = v64 + v63[18];
    *v75 = v82;
    *(v75 + 8) = v81;
    *(v64 + v63[19]) = v84;
    *(v64 + v63[20]) = v98;
    v76 = *(v93 + 32);
    v77 = v92;
    v76(v64 + v63[21], v96, v92);
    v76(v64 + v63[22], v95, v77);
    sub_23B3B0608();
    *(v64 + v63[25]) = v67;
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_179_0()
{

  return swift_task_alloc();
}

void sub_23B3C3CA0(double a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v4 = sub_23B50CDF4();
    __swift_project_value_buffer(v4, qword_280B4E9D8);
    v5 = sub_23B50CDD4();
    v6 = sub_23B50D4B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23B38D000, v5, v6, "Missing required field; field=WeatherIntensity.value", v7, 2u);
      MEMORY[0x23EE9E260](v7, -1, -1);
    }

    sub_23B3E3D54();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
  }

  else
  {
    sub_23B3C3DDC(&v12, a1);
    if (!v3)
    {
      v11 = v12;
      *a3 = a1;
      *(a3 + 8) = v11;
    }
  }
}

void sub_23B3C3DDC(char *a1@<X8>, double a2@<D0>)
{
  if (a2 >= 0.0 && a2 < 1.0)
  {
    *a1 = 0;
    return;
  }

  if (a2 >= 1.0 && a2 < 2.0)
  {
    v5 = 1;
    goto LABEL_14;
  }

  if (a2 >= 2.0 && a2 != INFINITY)
  {
    v5 = 2;
LABEL_14:
    *a1 = v5;
    return;
  }

  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v6 = sub_23B50CDF4();
  __swift_project_value_buffer(v6, qword_280B4E9D8);
  v7 = sub_23B50CDD4();
  v8 = sub_23B50D4B4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a2;
    _os_log_impl(&dword_23B38D000, v7, v8, "Invalid data; field=invalid weather intensity: %f", v9, 0xCu);
    MEMORY[0x23EE9E260](v9, -1, -1);
  }

  sub_23B3E3D54();
  swift_allocError();
  *v10 = 1;
  swift_willThrow();
}

__n128 OUTLINED_FUNCTION_95_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  *(v12 + 336) = a1;
  v16 = *(v12 + 256);
  v17 = *(v12 + 272);
  *(a1 + 16) = v10;
  *(a1 + 24) = v16;
  *(a1 + 40) = v17;
  *(a1 + 56) = v13;
  result = a10;
  *(a1 + 64) = a10;
  *(a1 + 80) = v15;
  *(a1 + 88) = v14;
  *(a1 + 96) = v11;
  return result;
}

uint64_t sub_23B3C3FB8@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132198, &qword_23B510150);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_23B50C594();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B3B81F8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_23B398890(v4, &qword_27E132198, &qword_23B510150);
    v9 = 1;
    v10 = v14;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = v14;
    sub_23B3C2F64(v14);
    if (v1)
    {
      return (*(v6 + 8))(v8, v5);
    }

    (*(v6 + 8))(v8, v5);
    v9 = 0;
  }

  v12 = type metadata accessor for DayPartForecast(0);
  return __swift_storeEnumTagSinglePayload(v10, v9, 1, v12);
}

void sub_23B3C41C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[9];
    }

    else
    {
      type metadata accessor for PrecipitationAmountByType(0);
      OUTLINED_FUNCTION_8_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[12];
      }

      else
      {
        if (a3 == 254)
        {
          *(a1 + a4[16]) = a2 + 1;
          return;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
        OUTLINED_FUNCTION_8_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[21];
        }

        else
        {
          type metadata accessor for Wind(0);
          OUTLINED_FUNCTION_8_0();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[23];
          }

          else
          {
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
            v14 = a4[24];
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t OUTLINED_FUNCTION_126_0(uint64_t a1)
{
  v1[6] = *v5;
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_200_1()
{

  return sub_23B50AEF4();
}

uint64_t WeatherMetadata.attribution.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for WeatherMetadata(0) + 32));
}

uint64_t sub_23B3C4528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_243_1()
{

  return WDSEndpoint.url.getter(v0);
}

uint64_t sub_23B3C463C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_8_0();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[9];
    }

    else
    {
      type metadata accessor for PrecipitationAmountByType(0);
      OUTLINED_FUNCTION_8_0();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[12];
      }

      else
      {
        if (a2 == 254)
        {
          v16 = *(a1 + a3[16]);
          if (v16 >= 2)
          {
            return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
        OUTLINED_FUNCTION_8_0();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v12 = a3[21];
        }

        else
        {
          type metadata accessor for Wind(0);
          OUTLINED_FUNCTION_8_0();
          if (*(v20 + 84) == a2)
          {
            v8 = v19;
            v12 = a3[23];
          }

          else
          {
            v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
            v12 = a3[24];
          }
        }
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t AirQuality.providerAttribution.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = type metadata accessor for AirQuality(v2);
  return sub_23B3CE510(v1 + *(v3 + 44), v0, &qword_27E131FC8, &qword_23B510180);
}

uint64_t ProviderAttribution.logoURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ProviderAttribution(0) + 20);

  return sub_23B3C4528(v3, a1);
}

uint64_t sub_23B3C4944@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  sub_23B3B81F8();
  v5 = sub_23B50AB34();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_23B398890(v4, &qword_27E131FC0, &qword_23B515170);
    sub_23B50CC54();
    if (v6)
    {
      sub_23B50AB04();
    }

    v8 = a1;
    v9 = 1;
  }

  else
  {
    (*(*(v5 - 8) + 32))(a1, v4, v5);
    v8 = a1;
    v9 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v5);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_23B3C4AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_23B50D614() + 36);
  v7 = Forecast.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

void sub_23B3C4BA8()
{
  OUTLINED_FUNCTION_21();
  v23 = v4;
  v24 = v5;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v11 = OUTLINED_FUNCTION_3(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_38_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_49();
  *(v0 + 16) = v9;
  *(v0 + 24) = v7;

  sub_23B50AB04();
  v18 = sub_23B50AB34();
  OUTLINED_FUNCTION_51(v3, 1, v18);
  if (v19)
  {
    __break(1u);
    goto LABEL_7;
  }

  v20 = *(*(v18 - 8) + 32);
  v20(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_legalPageURL, v3, v18);
  sub_23B50AB04();
  OUTLINED_FUNCTION_51(v2, 1, v18);
  if (v19)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v20(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_squareMarkURL, v2, v18);
  sub_23B50AB04();
  v21 = OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_51(v21, v22, v18);
  if (v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_combinedMarkDarkURL, v1, v18);
  sub_23B50AB04();
  OUTLINED_FUNCTION_51(v14, 1, v18);
  if (!v19)
  {

    v20(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_combinedMarkLightURL, v14, v18);
    sub_23B3C4E78(v23, v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_sourceURL);
    sub_23B3C4E78(v24, v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_logoURL);
    OUTLINED_FUNCTION_20();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_23B3C4E50@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = Forecast.endIndex.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_23B3C4E78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23B3C4EE8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t DayWeather.date.getter()
{
  OUTLINED_FUNCTION_7_0();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_65();

  return v1(v0);
}

uint64_t OUTLINED_FUNCTION_214()
{

  return sub_23B3B0608();
}

uint64_t DayWeather.condition.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for DayWeather(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t DayWeather.precipitation.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for DayWeather(v2);
  *v0 = *(v1 + *(result + 64));
  return result;
}

uint64_t OUTLINED_FUNCTION_259(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 - 304);

  return type metadata accessor for WeatherQuery(0, v6, a3, a4);
}

uint64_t DayWeather.lowTemperature.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for DayWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t sub_23B3C50F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for WeatherMetadata(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t DayWeather.highTemperature.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for DayWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t OUTLINED_FUNCTION_251_1()
{

  return swift_task_alloc();
}

uint64_t WeatherCondition.description.getter()
{
  switch(*v0)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        goto LABEL_103;
      }

      goto LABEL_80;
    case 2:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_87;
    case 3:
      if (qword_280B43260 == -1)
      {
        goto LABEL_47;
      }

      goto LABEL_93;
    case 4:
      if (qword_280B43260 == -1)
      {
        goto LABEL_66;
      }

      goto LABEL_98;
    case 5:
      if (qword_280B43260 == -1)
      {
        goto LABEL_47;
      }

LABEL_93:
      OUTLINED_FUNCTION_0_11(&qword_280B43260);
LABEL_47:
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_17_5();
      break;
    case 6:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_2_19();
      OUTLINED_FUNCTION_12_8(0x7244u);
      break;
    case 7:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_2_19();
      OUTLINED_FUNCTION_16_4(0x6C46u);
      break;
    case 8:
      if (qword_280B43260 == -1)
      {
        goto LABEL_61;
      }

      goto LABEL_97;
    case 9:
      if (qword_280B43260 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_86;
    case 0xA:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_2_19();
      OUTLINED_FUNCTION_18_8();
      break;
    case 0xB:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_87;
    case 0xC:
      if (qword_280B43260 == -1)
      {
        goto LABEL_80;
      }

      goto LABEL_103;
    case 0xD:
      if (qword_280B43260 == -1)
      {
        goto LABEL_80;
      }

      goto LABEL_103;
    case 0xE:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_2_19();
      OUTLINED_FUNCTION_19_7(25928);
      break;
    case 0xF:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_7_19();
      OUTLINED_FUNCTION_19_7(25928);
      break;
    case 0x10:
      if (qword_280B43260 == -1)
      {
        goto LABEL_61;
      }

LABEL_97:
      OUTLINED_FUNCTION_0_11(&qword_280B43260);
LABEL_61:
      OUTLINED_FUNCTION_4_3();
      break;
    case 0x11:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_2_19();
      OUTLINED_FUNCTION_10_11(0x7548u);
      break;
    case 0x12:
      if (qword_280B43260 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_86;
    case 0x13:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_87;
    case 0x14:
      if (qword_280B43260 == -1)
      {
        goto LABEL_49;
      }

      goto LABEL_94;
    case 0x15:
      if (qword_280B43260 == -1)
      {
        goto LABEL_49;
      }

LABEL_94:
      OUTLINED_FUNCTION_0_11(&qword_280B43260);
LABEL_49:
      OUTLINED_FUNCTION_2_19();
      OUTLINED_FUNCTION_11_6();
      break;
    case 0x16:
      if (qword_280B43260 == -1)
      {
        goto LABEL_80;
      }

      goto LABEL_103;
    case 0x17:
      if (qword_280B43260 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_86;
    case 0x18:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_87;
    case 0x19:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_87;
    case 0x1A:
      if (qword_280B43260 == -1)
      {
        goto LABEL_80;
      }

LABEL_103:
      OUTLINED_FUNCTION_0_11(&qword_280B43260);
LABEL_80:
      OUTLINED_FUNCTION_5_0();
      break;
    case 0x1B:
      if (qword_280B43260 != -1)
      {
LABEL_86:
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

LABEL_22:
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_8();
      break;
    case 0x1C:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_87;
    case 0x1D:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_2_19();
      OUTLINED_FUNCTION_13_6(0x6853206E7553);
      break;
    case 0x1E:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_2_19();
      OUTLINED_FUNCTION_9_10(0x6854u);
      break;
    case 0x1F:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

LABEL_87:
      OUTLINED_FUNCTION_0_11(&qword_280B43260);
LABEL_26:
      OUTLINED_FUNCTION_2_19();
      break;
    case 0x20:
      if (qword_280B43260 != -1)
      {
LABEL_98:
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

LABEL_66:
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_14_11();
      break;
    case 0x21:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_7_19();
      break;
    default:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_2_19();
      OUTLINED_FUNCTION_15_6(0x6C42u);
      break;
  }

  OUTLINED_FUNCTION_2_12();
  return sub_23B50AAD4();
}

id sub_23B3C5D24()
{
  type metadata accessor for BundleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280B4E9D0 = result;
  return result;
}

uint64_t sub_23B3C5D7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for Precipitation(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23B3C5F00);
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

void sub_23B3C5F4C()
{
  OUTLINED_FUNCTION_107();
  v3 = v0;
  v5 = v4;
  type metadata accessor for AirPollutant(0);
  OUTLINED_FUNCTION_5();
  v67 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12();
  v71 = v8;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_49();
  v10 = sub_23B50C0D4();
  OUTLINED_FUNCTION_5();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12();
  v66 = v14;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_1();
  v68 = v16;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_62_0();
  v75 = sub_23B50D0A4();
  v18 = *(v5 + 16);
  if (!v18)
  {
LABEL_21:
    OUTLINED_FUNCTION_105();
    return;
  }

  v19 = sub_23B50CD44();
  OUTLINED_FUNCTION_28_0(v19);
  v21 = v5 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v74 = *(v22 + 72);
  v23 = (v12 + 16);
  v73 = (v12 + 8);
  *&v24 = 136315138;
  v65 = v24;
  v69 = v1;
  v70 = v2;
  v76 = v10;
  v25 = v10;
  v72 = v23;
  while (1)
  {
    v26 = v25;
    v77 = v18;
    sub_23B50CD14();
    v27 = sub_23B50C0C4();
    v29 = v28;
    sub_23B3C64E0(v21, v28, v30, v31, v32, v33, v34, v35, v65, BYTE8(v65), SWORD5(v65), SWORD6(v65), SBYTE14(v65), SHIBYTE(v65), v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
    if (!v3)
    {
      break;
    }

    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v36 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v36, qword_280B4E9D8);
    v37 = *v23;
    v37(v68, v2, v25);
    v38 = sub_23B50CDD4();
    v39 = sub_23B50D4B4();
    if (os_log_type_enabled(v38, v39))
    {
      OUTLINED_FUNCTION_173();
      v40 = swift_slowAlloc();
      OUTLINED_FUNCTION_135();
      v78 = swift_slowAlloc();
      *v40 = v65;
      v37(v66, v68, v26);
      OUTLINED_FUNCTION_89();
      sub_23B50D184();
      v41 = *v73;
      (*v73)(v68, v76);
      v42 = OUTLINED_FUNCTION_203();
      v45 = sub_23B391F1C(v42, v43, v44);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_23B38D000, v38, v39, "could not create pollutant: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      OUTLINED_FUNCTION_57_1();
      MEMORY[0x23EE9E260]();
      v2 = v70;
      OUTLINED_FUNCTION_57_1();
      MEMORY[0x23EE9E260]();

      (v41)(v70, v76);
      v25 = v76;
      v3 = 0;
      v23 = v72;
LABEL_19:
      v58 = v77;
      goto LABEL_20;
    }

    v56 = *v73;
    v57 = OUTLINED_FUNCTION_206();
    v56(v57);
    (v56)(v2, v26);
    v3 = 0;
    v23 = v72;
    v58 = v77;
    v25 = v26;
LABEL_20:
    v21 += v74;
    v18 = v58 - 1;
    if (!v18)
    {
      goto LABEL_21;
    }
  }

  OUTLINED_FUNCTION_96();
  sub_23B3B0608();
  swift_isUniquelyReferenced_nonNull_native();
  v46 = OUTLINED_FUNCTION_68_1();
  v48 = sub_23B3A7084(v46, v47);
  if (!__OFADD__(*(v75 + 16), (v49 & 1) == 0))
  {
    v50 = v48;
    v51 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321C8, &qword_23B510198);
    if (sub_23B50D624())
    {
      v52 = OUTLINED_FUNCTION_68_1();
      v54 = sub_23B3A7084(v52, v53);
      v25 = v76;
      v2 = v70;
      if ((v51 & 1) != (v55 & 1))
      {
        goto LABEL_24;
      }

      v50 = v54;
    }

    else
    {
      v25 = v76;
      v2 = v70;
    }

    if (v51)
    {
      OUTLINED_FUNCTION_225();
      sub_23B3FD378(v71, v59);
    }

    else
    {
      *(v75 + 8 * (v50 >> 6) + 64) |= 1 << v50;
      v60 = (*(v75 + 48) + 16 * v50);
      *v60 = v27;
      v60[1] = v29;
      OUTLINED_FUNCTION_225();
      OUTLINED_FUNCTION_96();
      sub_23B3B0608();
      v61 = *(v75 + 16);
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (v62)
      {
        goto LABEL_23;
      }

      *(v75 + 16) = v63;
    }

    OUTLINED_FUNCTION_208();
    v64(v2, v25);
    v3 = 0;
    goto LABEL_19;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_23B50D864();
  __break(1u);
}

void sub_23B3C64E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, os_log_type_t a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_107();
  a23 = v29;
  a24 = v30;
  v32 = v31;
  v33 = sub_23B50C0D4();
  OUTLINED_FUNCTION_5();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_80_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_191();
  MEMORY[0x28223BE20](v38);
  v39 = OUTLINED_FUNCTION_248();
  v40 = type metadata accessor for AirPollutantMeasurement(v39);
  v41 = OUTLINED_FUNCTION_3(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_171();
  sub_23B3C6C9C(v25, &a14);
  if (!v24)
  {
    v56 = v35;
    v57 = v33;
    v42 = a14;
    sub_23B50CD14();
    sub_23B50C0C4();
    sub_23B3B672C(&a13);
    v43 = a13;
    v44 = type metadata accessor for AirPollutant(0);
    OUTLINED_FUNCTION_108_0();
    sub_23B3BABAC();
    *v32 = v43;
    v32[*(v44 + 24)] = v42;
    if (*v32 == 14)
    {
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v45 = sub_23B50CDF4();
      OUTLINED_FUNCTION_88(v45, qword_280B4E9D8);
      v55 = *(v56 + 16);
      v55(v27, v26, v57);
      v46 = sub_23B50CDD4();
      a10 = sub_23B50D4B4();
      if (os_log_type_enabled(v46, a10))
      {
        OUTLINED_FUNCTION_173();
        v54 = swift_slowAlloc();
        OUTLINED_FUNCTION_135();
        v58 = swift_slowAlloc();
        *v54 = 136446210;
        v55(v28, v27, v57);
        sub_23B50D184();
        v47 = *(v56 + 8);
        v47(v27, v57);
        v48 = OUTLINED_FUNCTION_203();
        v51 = sub_23B391F1C(v48, v49, v50);

        *(v54 + 4) = v51;
        _os_log_impl(&dword_23B38D000, v46, a10, "unrecognized air quality pollutant type: %{public}s, falling back on .unknown", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v58);
        OUTLINED_FUNCTION_57_1();
        MEMORY[0x23EE9E260]();
        OUTLINED_FUNCTION_57_1();
        MEMORY[0x23EE9E260]();

        v47(v26, v57);
      }

      else
      {

        v52 = *(v56 + 8);
        v53 = OUTLINED_FUNCTION_138();
        v52(v53);
        (v52)(v26, v57);
      }
    }

    else
    {
      (*(v56 + 8))(v26, v57);
    }

    sub_23B3C7314(v25, type metadata accessor for AirPollutantMeasurement);
  }

  OUTLINED_FUNCTION_105();
}

uint64_t CurrentWeather.apparentTemperature.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for CurrentWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

void sub_23B3C6908(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[6] + 8) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
      OUTLINED_FUNCTION_8_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
        OUTLINED_FUNCTION_8_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[18];
        }

        else
        {
          type metadata accessor for PrecipitationAmountByType(0);
          OUTLINED_FUNCTION_8_0();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[20];
          }

          else
          {
            type metadata accessor for SunEvents(0);
            OUTLINED_FUNCTION_8_0();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[21];
            }

            else
            {
              type metadata accessor for MoonEvents(0);
              OUTLINED_FUNCTION_8_0();
              if (*(v24 + 84) == a3)
              {
                v10 = v23;
                v14 = a4[22];
              }

              else
              {
                type metadata accessor for Wind(0);
                OUTLINED_FUNCTION_8_0();
                if (*(v26 + 84) == a3)
                {
                  v10 = v25;
                  v14 = a4[28];
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
                  OUTLINED_FUNCTION_8_0();
                  if (*(v28 + 84) == a3)
                  {
                    v10 = v27;
                    v14 = a4[29];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
                    OUTLINED_FUNCTION_8_0();
                    if (*(v30 + 84) == a3)
                    {
                      v10 = v29;
                      v14 = a4[30];
                    }

                    else
                    {
                      type metadata accessor for DayPartForecast(0);
                      OUTLINED_FUNCTION_8_0();
                      if (*(v32 + 84) == a3)
                      {
                        v10 = v31;
                        v14 = a4[33];
                      }

                      else
                      {
                        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132050, &qword_23B510140);
                        v14 = a4[35];
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

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_23B3C6C9C(uint64_t a1, void *a2)
{
  v34 = a2;
  v2 = sub_23B50C2F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v33 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v31[-v6];
  MEMORY[0x28223BE20](v8);
  v10 = &v31[-v9];
  MEMORY[0x28223BE20](v11);
  v13 = &v31[-v12];
  sub_23B50CD24();
  sub_23B50CD34();
  v14 = *(v3 + 16);
  v14(v10, v13, v2);
  v15 = (*(v3 + 88))(v10, v2);
  if (v15 == *MEMORY[0x277D7AFA8])
  {
    v16 = 0;
LABEL_5:
    v17 = [objc_opt_self() partsPerMillion];
    sub_23B3924C0(0, &qword_280B43390, 0x277CCADC8);
    sub_23B50A9B4();
    (*(v3 + 8))(v13, v2);
    type metadata accessor for AirPollutantMeasurement(0);
    result = swift_storeEnumTagMultiPayload();
    *v34 = v16;
    return result;
  }

  if (v15 == *MEMORY[0x277D7AFA0])
  {
    v16 = 1;
    goto LABEL_5;
  }

  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v19 = sub_23B50CDF4();
  __swift_project_value_buffer(v19, qword_280B4E9D8);
  v14(v7, v13, v2);
  v20 = sub_23B50CDD4();
  v21 = sub_23B50D4B4();
  v35 = v20;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v22 = 136315138;
    v32 = v21;
    v14(v33, v7, v2);
    v33 = sub_23B50D184();
    v24 = v23;
    v25 = *(v3 + 8);
    v25(v7, v2);
    v26 = sub_23B391F1C(v33, v24, &v36);

    v27 = v22;
    *(v22 + 4) = v26;
    v28 = v35;
    _os_log_impl(&dword_23B38D000, v35, v32, "Invalid data; invalid pollutant unit: %s", v27, 0xCu);
    v29 = v34;
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x23EE9E260](v29, -1, -1);
    MEMORY[0x23EE9E260](v27, -1, -1);
  }

  else
  {

    v25 = *(v3 + 8);
    v25(v7, v2);
  }

  sub_23B3E3D54();
  swift_allocError();
  *v30 = 1;
  swift_willThrow();
  v25(v13, v2);
  return (v25)(v10, v2);
}

uint64_t CurrentWeather.condition.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for CurrentWeather(v2);
  *v0 = *(v1 + *(result + 40));
  return result;
}

uint64_t sub_23B3C713C()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = type metadata accessor for CurrentWeather(v2);
  return v0(*(v1 + *(v3 + 104)));
}

Swift::String __swiftcall WeatherCondition.description(isDaylight:)(Swift::Bool isDaylight)
{
  v2 = *v1;
  if (v2 == 19)
  {
    if (isDaylight)
    {
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }
    }

    else if (qword_280B43260 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_19_9(28493);
    goto LABEL_18;
  }

  if (v2 == 4)
  {
    if (isDaylight)
    {
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }
    }

    else if (qword_280B43260 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    OUTLINED_FUNCTION_5_0();
LABEL_18:
    OUTLINED_FUNCTION_2_12();
    v3 = sub_23B50AAD4();
    goto LABEL_19;
  }

  v3 = WeatherCondition.description.getter();
LABEL_19:
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_23B3C7314(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_23B3C737C()
{
  result = qword_280B43268[0];
  if (!qword_280B43268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B43268);
  }

  return result;
}

uint64_t sub_23B3C7400@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Forecast.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_248_1()
{

  return swift_task_alloc();
}

uint64_t sub_23B3C745C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_26();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23B3C74C0(void *a1)
{
  if (a1[2] == 2)
  {
    result = a1[4];
    if (a1[5] >= result)
    {
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (qword_280B43440 != -1)
  {
LABEL_9:
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v3 = sub_23B50CDF4();
  OUTLINED_FUNCTION_88(v3, qword_280B4E9D8);

  v4 = sub_23B50CDD4();
  v5 = sub_23B50D4B4();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_173();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_135();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = MEMORY[0x23EE9D540](a1, MEMORY[0x277D83B88]);
    v10 = sub_23B391F1C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_23B38D000, v4, v5, "Invalid data; invalid range array: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_57_1();
    MEMORY[0x23EE9E260]();
    OUTLINED_FUNCTION_57_1();
    MEMORY[0x23EE9E260]();
  }

  v11 = sub_23B3E3D54();
  v12 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v11);
  return OUTLINED_FUNCTION_55_1(v12, v13);
}

uint64_t sub_23B3C7654(uint64_t a1, uint64_t a2, int *a3)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_29:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
      OUTLINED_FUNCTION_8_0();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
        OUTLINED_FUNCTION_8_0();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[18];
        }

        else
        {
          type metadata accessor for PrecipitationAmountByType(0);
          OUTLINED_FUNCTION_8_0();
          if (*(v20 + 84) == a2)
          {
            v8 = v19;
            v14 = a3[20];
          }

          else
          {
            type metadata accessor for SunEvents(0);
            OUTLINED_FUNCTION_8_0();
            if (*(v22 + 84) == a2)
            {
              v8 = v21;
              v14 = a3[21];
            }

            else
            {
              type metadata accessor for MoonEvents(0);
              OUTLINED_FUNCTION_8_0();
              if (*(v24 + 84) == a2)
              {
                v8 = v23;
                v14 = a3[22];
              }

              else
              {
                type metadata accessor for Wind(0);
                OUTLINED_FUNCTION_8_0();
                if (*(v26 + 84) == a2)
                {
                  v8 = v25;
                  v14 = a3[28];
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
                  OUTLINED_FUNCTION_8_0();
                  if (*(v28 + 84) == a2)
                  {
                    v8 = v27;
                    v14 = a3[29];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
                    OUTLINED_FUNCTION_8_0();
                    if (*(v30 + 84) == a2)
                    {
                      v8 = v29;
                      v14 = a3[30];
                    }

                    else
                    {
                      type metadata accessor for DayPartForecast(0);
                      OUTLINED_FUNCTION_8_0();
                      if (*(v32 + 84) == a2)
                      {
                        v8 = v31;
                        v14 = a3[33];
                      }

                      else
                      {
                        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132050, &qword_23B510140);
                        v14 = a3[35];
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

    v9 = a1 + v14;
    goto LABEL_29;
  }

  v10 = *(a1 + a3[6] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t DayWeather.sun.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for DayWeather(v0);
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_54_0(v1);
  return sub_23B3BAB5C();
}

uint64_t sub_23B3C7A20@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = v2;
  v6 = sub_23B50C9C4();
  if (!v7)
  {
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v17 = sub_23B50CDF4();
    __swift_project_value_buffer(v17, qword_280B4E9D8);
    v13 = sub_23B50CDD4();
    v14 = sub_23B50D4B4();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_24;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Missing required field; field=AirQualityScaleCategory.description";
    goto LABEL_23;
  }

  v8 = v6;
  v9 = v7;
  v10 = sub_23B50C9D4();
  if (v11)
  {

    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v12 = sub_23B50CDF4();
    __swift_project_value_buffer(v12, qword_280B4E9D8);
    v13 = sub_23B50CDD4();
    v14 = sub_23B50D4B4();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_24;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Missing required field; field=AirQualityScaleCategory.number";
LABEL_23:
    _os_log_impl(&dword_23B38D000, v13, v14, v16, v15, 2u);
    MEMORY[0x23EE9E260](v15, -1, -1);
LABEL_24:

    sub_23B3E3D54();
    v4 = swift_allocError();
    *v31 = 1;
    result = swift_willThrow();
    goto LABEL_25;
  }

  v18 = v10;
  v36 = a1;
  v19 = sub_23B50C9F4();
  if (!v20)
  {

    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v29 = sub_23B50CDF4();
    __swift_project_value_buffer(v29, qword_280B4E9D8);
    v13 = sub_23B50CDD4();
    v14 = sub_23B50D4B4();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_24;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Missing required field; field=AirQualityScaleCategory.color";
    goto LABEL_23;
  }

  v21 = v19;
  v22 = v20;
  v23 = sub_23B50CA14();
  if (!v23)
  {

    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v30 = sub_23B50CDF4();
    __swift_project_value_buffer(v30, qword_280B4E9D8);
    v13 = sub_23B50CDD4();
    v14 = sub_23B50D4B4();
    a1 = v36;
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_24;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Missing required field; field=AirQualityScaleCategory.range";
    goto LABEL_23;
  }

  v24 = v23;
  v34 = sub_23B50C9E4();
  v35 = v25;
  v26 = sub_23B3C74C0(v24);
  if (v2)
  {

    a1 = v36;
LABEL_25:
    *a1 = v4;
    return result;
  }

  v37 = v26;
  v32 = v27;

  result = sub_23B50CA04();
  *a2 = v8;
  a2[1] = v9;
  a2[2] = v18;
  a2[3] = v21;
  a2[4] = v22;
  a2[5] = v34;
  a2[6] = v35;
  a2[7] = v37;
  a2[8] = v32;
  a2[9] = result;
  a2[10] = v33;
  return result;
}

uint64_t sub_23B3C7DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23B3C7E64()
{
  v3 = v0;
  OUTLINED_FUNCTION_200();
  v4 = sub_23B50CA94();
  OUTLINED_FUNCTION_5();
  v43 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_153();
  v7 = sub_23B50CA34();
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + 16);
    if (v9)
    {
      v39 = v1;
      v46 = MEMORY[0x277D84F90];
      sub_23B3C81E8(0, v9, 0);
      v10 = 0;
      OUTLINED_FUNCTION_23_3();
      v11 = v46;
      v41 = v8 + v12;
      v40 = v8;
      v42 = (v13 + 8);
      while (v10 < *(v8 + 16))
      {
        (*(v43 + 16))(v2, v41 + *(v43 + 72) * v10, v4);
        sub_23B3C82D0(&v44, v45);
        if (v3)
        {
          v37 = OUTLINED_FUNCTION_210();
          v38(v37);

          goto LABEL_16;
        }

        v14 = v2;
        v15 = v4;
        (*v42)(v2, v4);
        v16 = v45[0];
        v18 = v45[1];
        v17 = v45[2];
        v46 = v11;
        v20 = *(v11 + 16);
        v19 = *(v11 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_23B3C81E8((v19 > 1), v20 + 1, 1);
          v11 = v46;
        }

        *(v11 + 16) = v20 + 1;
        v21 = v11 + 24 * v20;
        *(v21 + 32) = v16;
        ++v10;
        *(v21 + 40) = v18;
        *(v21 + 48) = v17;
        v4 = v15;
        v8 = v40;
        v2 = v14;
        v3 = 0;
        if (v9 == v10)
        {

          *v39 = v11;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  if (qword_280B43440 != -1)
  {
LABEL_18:
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v22 = sub_23B50CDF4();
  OUTLINED_FUNCTION_88(v22, qword_280B4E9D8);
  v23 = sub_23B50CDD4();
  sub_23B50D4B4();
  v24 = OUTLINED_FUNCTION_26_2();
  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_66_1();
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_74_0(v26);
    OUTLINED_FUNCTION_20_4();
    _os_log_impl(v27, v28, v29, v30, v31, v32);
    v33 = OUTLINED_FUNCTION_35_2();
    MEMORY[0x23EE9E260](v33);
  }

  v34 = sub_23B3E3D54();
  v35 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v34);
  OUTLINED_FUNCTION_55_1(v35, v36);
LABEL_16:
  OUTLINED_FUNCTION_103();
}

uint64_t SunEvents.sunrise.getter()
{
  v0 = OUTLINED_FUNCTION_31_3();
  v1 = OUTLINED_FUNCTION_54_0(*(v0 + 28));

  return sub_23B3C7DF4(v1, v2);
}

uint64_t SunEvents.sunset.getter()
{
  v0 = OUTLINED_FUNCTION_31_3();
  v1 = OUTLINED_FUNCTION_54_0(*(v0 + 36));

  return sub_23B3C7DF4(v1, v2);
}

uint64_t HourWeather.condition.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for HourWeather(v2);
  *v0 = *(v1 + *(result + 40));
  return result;
}

void *sub_23B3C81E8(void *a1, int64_t a2, char a3)
{
  result = sub_23B3B7B20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t HourWeather.precipitation.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for HourWeather(v2);
  *v0 = *(v1 + *(result + 60));
  return result;
}

uint64_t HourWeather.temperature.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for HourWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t sub_23B3C82D0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_23B50CA84();
  if ((v4 & 0x100000000) != 0)
  {
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v8 = sub_23B50CDF4();
    __swift_project_value_buffer(v8, qword_280B4E9D8);
    v9 = sub_23B50CDD4();
    v10 = sub_23B50D4B4();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_13;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Missing required field; field=AirQualityScaleGradientStop.location";
    goto LABEL_12;
  }

  v5 = v4;
  result = sub_23B50CA74();
  if (v7)
  {
    *a2 = v5;
    *(a2 + 8) = result;
    *(a2 + 16) = v7;
    return result;
  }

  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v13 = sub_23B50CDF4();
  __swift_project_value_buffer(v13, qword_280B4E9D8);
  v9 = sub_23B50CDD4();
  v10 = sub_23B50D4B4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Missing required field; field=AirQualityScaleGradientStop.color";
LABEL_12:
    _os_log_impl(&dword_23B38D000, v9, v10, v12, v11, 2u);
    MEMORY[0x23EE9E260](v11, -1, -1);
  }

LABEL_13:

  sub_23B3E3D54();
  v14 = swift_allocError();
  *v15 = 1;
  result = swift_willThrow();
  *a1 = v14;
  return result;
}

uint64_t sub_23B3C84AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_23B3C8590(uint64_t a1, uint64_t a2, int *a3)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_15:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[12];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
      OUTLINED_FUNCTION_8_0();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[17];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
        OUTLINED_FUNCTION_8_0();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[20];
        }

        else
        {
          v8 = type metadata accessor for Wind(0);
          v14 = a3[26];
        }
      }
    }

    v9 = a1 + v14;
    goto LABEL_15;
  }

  v10 = *(a1 + a3[11] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t sub_23B3C8744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = 32;
  if (v6)
  {
    while (1)
    {
      memcpy(__dst, (a1 + v7), sizeof(__dst));
      if (__dst[2] == a2)
      {
        break;
      }

      v7 += 88;
      if (!--v6)
      {
        goto LABEL_4;
      }
    }

    memcpy(a3, (a1 + v7), 0x58uLL);
    return sub_23B3C8AD4(__dst, &v20);
  }

  else
  {
LABEL_4:
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v8 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v8, qword_280B4E9D8);

    v9 = sub_23B50CDD4();
    v10 = sub_23B50D4B4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      OUTLINED_FUNCTION_135();
      v12 = swift_slowAlloc();
      __dst[0] = v12;
      *v11 = 134218242;
      *(v11 + 4) = a2;
      *(v11 + 12) = 2080;
      v13 = MEMORY[0x23EE9D540](a1, &type metadata for AirQualityScaleCategory);
      v15 = sub_23B391F1C(v13, v14, __dst);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_23B38D000, v9, v10, "Invalid data; invalid category index: %ld for category array: %s", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_57_1();
      MEMORY[0x23EE9E260]();
      OUTLINED_FUNCTION_57_1();
      MEMORY[0x23EE9E260]();
    }

    v16 = sub_23B3E3D54();
    v17 = OUTLINED_FUNCTION_48_0(&type metadata for WeatherError, v16);
    return OUTLINED_FUNCTION_69_1(v17, v18);
  }
}

void sub_23B3C8924(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[11] + 8) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[12];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
      OUTLINED_FUNCTION_8_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[17];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
        OUTLINED_FUNCTION_8_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[20];
        }

        else
        {
          v10 = type metadata accessor for Wind(0);
          v14 = a4[26];
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_23B3C8BA0()
{
  OUTLINED_FUNCTION_200();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v1);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_171();
  v3 = sub_23B50CC44();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    sub_23B50CC34();
    if (v7)
    {
      sub_23B50AB04();
    }

    else
    {
      sub_23B50AB34();
      OUTLINED_FUNCTION_1();
      __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    }

    v16 = type metadata accessor for ProviderAttribution(0);
    sub_23B50AB34();
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    *v0 = v5;
    v0[1] = v6;
    sub_23B3B7EA8();
    OUTLINED_FUNCTION_73();
    v11 = v16;
  }

  else
  {
    type metadata accessor for ProviderAttribution(0);
    OUTLINED_FUNCTION_1();
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t CurrentWeather.wind.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44_6();
}

uint64_t sub_23B3C8D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && *(a3 + 16) && (sub_23B3A7084(a1, a2), (v3 & 1) != 0))
  {
    v4 = type metadata accessor for AirPollutant(0);
    OUTLINED_FUNCTION_6();
    sub_23B3BABAC();
    OUTLINED_FUNCTION_73();
    v8 = v4;
  }

  else
  {
    type metadata accessor for AirPollutant(0);
    OUTLINED_FUNCTION_221();
    OUTLINED_FUNCTION_1();
  }

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Wind.gust.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Wind(0) + 28);

  return sub_23B3C8E28(v3, a1);
}

uint64_t sub_23B3C8E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B3C8E98@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321A8, &qword_23B510168);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  sub_23B3B81F8();
  v12 = sub_23B50BB84();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    sub_23B3B81F8();
    v14 = *(v12 - 8);
    v15 = (*(v14 + 88))(v8, v12);
    if (v15 == *MEMORY[0x277D7ADB8])
    {
      v13 = 0;
      goto LABEL_7;
    }

    if (v15 == *MEMORY[0x277D7ADC0])
    {
      v13 = 1;
      goto LABEL_7;
    }

    if (v15 != *MEMORY[0x277D7ADB0])
    {
      (*(v14 + 8))(v8, v12);
      if (qword_280B43440 != -1)
      {
        swift_once();
      }

      v17 = sub_23B50CDF4();
      __swift_project_value_buffer(v17, qword_280B4E9D8);
      sub_23B3B81F8();
      v18 = sub_23B50CDD4();
      v19 = sub_23B50D4B4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v27 = v21;
        *v20 = 136446210;
        sub_23B3B81F8();
        v22 = sub_23B50D184();
        v24 = v23;
        sub_23B398890(v5, &qword_27E1321A8, &qword_23B510168);
        v25 = sub_23B391F1C(v22, v24, &v27);

        *(v20 + 4) = v25;
        _os_log_impl(&dword_23B38D000, v18, v19, "Unknown default; air quality source=%{public}s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x23EE9E260](v21, -1, -1);
        MEMORY[0x23EE9E260](v20, -1, -1);
      }

      else
      {

        sub_23B398890(v5, &qword_27E1321A8, &qword_23B510168);
      }
    }
  }

  v13 = 2;
LABEL_7:
  *a1 = v13;
  return sub_23B398890(v11, &qword_27E1321A8, &qword_23B510168);
}

uint64_t sub_23B3C9254@<X0>(uint64_t a1@<X8>)
{
  result = sub_23B3C8E98(&v4);
  v3 = *&aModeled_1[8 * v4];
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0xE700000000000000;
  return result;
}

uint64_t Wind.speed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Wind(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t HourWeather.apparentTemperature.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for HourWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

Swift::String __swiftcall WeatherCondition.descriptionCategoryPhrase(isDaylight:isLeading:)(Swift::Bool isDaylight, Swift::Bool isLeading)
{
  v9[1] = *v2;
  WeatherCondition.category.getter(v9);
  switch(v9[0])
  {
    case 1:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      OUTLINED_FUNCTION_1_11();
      goto LABEL_127;
    case 2:
      OUTLINED_FUNCTION_12_10();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_16_5();
      goto LABEL_127;
    case 3:
      OUTLINED_FUNCTION_12_10();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_126;
    case 4:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_117;
    case 5:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_3_15();
        OUTLINED_FUNCTION_21_7();
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_15_8();
        OUTLINED_FUNCTION_14_15();
        OUTLINED_FUNCTION_21_7();
      }

      goto LABEL_128;
    case 6:
    case 8:
    case 0xA:
    case 0xF:
      v5 = WeatherCondition.description.getter();
      goto LABEL_129;
    case 7:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_1_11();
        OUTLINED_FUNCTION_18_10();
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_3_15();
        OUTLINED_FUNCTION_18_10();
      }

      goto LABEL_128;
    case 9:
      OUTLINED_FUNCTION_12_10();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_126;
    case 0xB:
      OUTLINED_FUNCTION_12_10();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_16_5();
      goto LABEL_128;
    case 0xC:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_1_11();
        OUTLINED_FUNCTION_20_10();
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_3_15();
        OUTLINED_FUNCTION_20_10();
      }

      goto LABEL_128;
    case 0xD:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_117;
    case 0xE:
      OUTLINED_FUNCTION_12_10();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      OUTLINED_FUNCTION_5_0();
      goto LABEL_128;
    case 0x10:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_117;
    case 0x11:
      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_12_10();
      if (isLeading)
      {
        if (qword_280B43260 != -1)
        {
          OUTLINED_FUNCTION_1_19();
          swift_once();
          OUTLINED_FUNCTION_13_9();
        }
      }

      else if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_1_19();
        swift_once();
        OUTLINED_FUNCTION_13_9();
      }

      goto LABEL_126;
    case 0x12:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

LABEL_117:
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_3_15();
      goto LABEL_127;
    case 0x13:
      if (isLeading)
      {
        if (qword_280B43260 != -1)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_3_15();
        OUTLINED_FUNCTION_11_9();
      }

      else
      {
        if (qword_280B43260 != -1)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_15_8();
        OUTLINED_FUNCTION_14_15();
        OUTLINED_FUNCTION_11_9();
      }

      goto LABEL_127;
    case 0x14:
      if (isLeading)
      {
        if (qword_280B43260 != -1)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_3_15();
        OUTLINED_FUNCTION_22_8();
      }

      else
      {
        if (qword_280B43260 != -1)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_15_8();
        OUTLINED_FUNCTION_14_15();
        OUTLINED_FUNCTION_22_8();
      }

      goto LABEL_127;
    default:
      OUTLINED_FUNCTION_12_10();
      if (isDaylight)
      {
        if (isLeading)
        {
          OUTLINED_FUNCTION_6_8();
          if (!v7)
          {
            OUTLINED_FUNCTION_0_15();
            swift_once();
          }

          goto LABEL_126;
        }

        goto LABEL_124;
      }

      if (!isLeading)
      {
LABEL_124:
        OUTLINED_FUNCTION_6_8();
        if (!v7)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_126;
      }

      OUTLINED_FUNCTION_6_8();
      if (!v7)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

LABEL_126:
      OUTLINED_FUNCTION_5_0();
LABEL_127:
      OUTLINED_FUNCTION_2_12();
LABEL_128:
      v5 = sub_23B50AAD4();
LABEL_129:
      result._object = v6;
      result._countAndFlagsBits = v5;
      return result;
  }
}

uint64_t HourWeather.date.getter()
{
  OUTLINED_FUNCTION_7_0();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t sub_23B3CA078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_40_5(uint64_t a1)
{
  v4 = v2 + *(a1 + 52);

  return sub_23B3CA20C(v1, v4);
}

uint64_t OUTLINED_FUNCTION_40_8()
{
  result = *(v0 - 256);
  *(v2 - 224) = v1;
  return result;
}

double OUTLINED_FUNCTION_40_10@<D0>(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  result = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v1 = result;
  *(v1 + 8) = v3;
  return result;
}

void Forecast.init(_:metadata:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  *a9 = a1;
  v9 = OUTLINED_FUNCTION_42_6(a1, a2, a3, a4, a5, a6, a7, a8, a3);
  OUTLINED_FUNCTION_40_5(v9);
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_121(v10);
}

uint64_t sub_23B3CA20C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CurrentWeather.pastTwentyFourHoursPrecipitationAmountByType.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_7_47();
}

uint64_t PrecipitationAmountByType.precipitation.getter()
{
  OUTLINED_FUNCTION_12_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_24();

  return v1(v0);
}

uint64_t DayWeather.precipitationAmountByType.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  v1 = type metadata accessor for DayWeather(v0);
  OUTLINED_FUNCTION_54_0(*(v1 + 80));
  return sub_23B3BAB5C();
}

uint64_t CurrentWeather.pastHourPrecipitationAmountByType.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_7_47();
}

id static NSUnitSpeed.wk_millimetersPerHour.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v1 = objc_allocWithZone(MEMORY[0x277CCAE40]);
  return sub_23B3CA41C(1747938669, 0xE400000000000000, v0);
}

uint64_t CurrentWeather.pastSixHoursPrecipitationAmountByType.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_7_47();
}

id sub_23B3CA41C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_23B50D144();

  v6 = [v3 initWithSymbol:v5 converter:a3];

  return v6;
}

uint64_t sub_23B3CA480(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_191_0(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2113;
}

uint64_t SnowfallAmount.amount.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t _s10WeatherKit03DayA0V14rainfallAmount10Foundation11MeasurementVySo12NSUnitLengthCGvg_0()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for DayWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t OUTLINED_FUNCTION_252_0()
{
  *(v0 + 22) = 2082;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_252_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_73_0(uint64_t a1)
{

  return sub_23B50D0E4();
}

uint64_t CurrentWeather.nextTwentyFourHoursPrecipitationAmountByType.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_7_47();
}

uint64_t SnowfallAmount.minimum.getter()
{
  OUTLINED_FUNCTION_14_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_24();

  return v1(v0);
}

uint64_t SnowfallAmount.maximum.getter()
{
  OUTLINED_FUNCTION_14_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_24();

  return v1(v0);
}

uint64_t CurrentWeather.uvIndex.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for CurrentWeather(v2);
  v4 = (v1 + *(result + 124));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

uint64_t HourWeather.uvIndex.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for HourWeather(v2);
  v4 = (v1 + *(result + 96));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

void (*sub_23B3CA8AC(uint64_t *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_23B3CEB50(v6, *a2, a3);
  return sub_23B3C4EE8;
}

uint64_t CurrentWeather.visibility.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for CurrentWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

unint64_t sub_23B3CA99C@<X0>(unint64_t *a1@<X8>)
{
  result = WeatherCondition.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t WeatherCondition.rawValue.getter()
{
  result = 0x6472617A7A696C62;
  switch(*v0)
  {
    case 1:
      return 0x44676E69776F6C62;
    case 2:
      return 0x53676E69776F6C62;
    case 3:
      return 0x797A65657262;
    case 4:
      return 0x7261656C63;
    case 5:
      return 0x7964756F6C63;
    case 6:
      return 0x656C7A7A697264;
    case 7:
      return 0x7365697272756C66;
    case 8:
      v2 = 1734831974;
      goto LABEL_29;
    case 9:
    case 0xA:
      return 0x676E697A65657266;
    case 0xB:
      return 0x646967697266;
    case 0xC:
      return 1818845544;
    case 0xD:
      return 1702519144;
    case 0xE:
      return 0x6961527976616568;
    case 0xF:
      return 0x6F6E537976616568;
    case 0x10:
      return 7630696;
    case 0x11:
      return 0x6E61636972727568;
    case 0x12:
      return 0xD000000000000015;
    case 0x13:
      return 0x6C43796C74736F6DLL;
    case 0x14:
      v3 = 1953722221;
      return v3 | 0x6C43796C00000000;
    case 0x15:
      v3 = 1953653104;
      return v3 | 0x6C43796C00000000;
    case 0x16:
      return 1852399986;
    case 0x17:
      return 0xD000000000000016;
    case 0x18:
      return 0x7465656C73;
    case 0x19:
      v2 = 1802464627;
      goto LABEL_29;
    case 0x1A:
      return 2003791475;
    case 0x1B:
      return 0x7453676E6F727473;
    case 0x1C:
      return 0x7272756C466E7573;
    case 0x1D:
      return 0x65776F68536E7573;
    case 0x1E:
      return 0x737265646E756874;
    case 0x1F:
      return 0x6C616369706F7274;
    case 0x20:
      v2 = 1684957559;
LABEL_29:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
      break;
    case 0x21:
      result = 0x694D7972746E6977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B3CADB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  v7 = a3();
  if (v4 == v7 && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_0_3(v4, v8, v7);
  }

  return v10 & 1;
}

uint64_t CurrentWeather.pressure.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for CurrentWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t CurrentWeather.pressureTrend.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for CurrentWeather(v2);
  *v0 = *(v1 + *(result + 64));
  return result;
}

uint64_t sub_23B3CAF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19();
  v6 = sub_23B50AD24();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t Wind.CompassDirection.abbreviation.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        goto LABEL_44;
      }

      goto LABEL_23;
    case 2:
      if (qword_280B43260 == -1)
      {
        goto LABEL_31;
      }

      goto LABEL_47;
    case 3:
      if (qword_280B43260 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    case 4:
      if (qword_280B43260 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    case 5:
      if (qword_280B43260 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_44;
    case 6:
      if (qword_280B43260 == -1)
      {
        goto LABEL_31;
      }

      goto LABEL_47;
    case 7:
      if (qword_280B43260 == -1)
      {
        goto LABEL_23;
      }

LABEL_44:
      OUTLINED_FUNCTION_0_15();
      swift_once();
LABEL_23:
      OUTLINED_FUNCTION_9_25();
      goto LABEL_34;
    case 8:
      if (qword_280B43260 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    case 9:
      if (qword_280B43260 == -1)
      {
        goto LABEL_27;
      }

      goto LABEL_46;
    case 10:
      if (qword_280B43260 == -1)
      {
        goto LABEL_31;
      }

      goto LABEL_47;
    case 11:
      if (qword_280B43260 == -1)
      {
        goto LABEL_27;
      }

      goto LABEL_46;
    case 12:
      if (qword_280B43260 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    case 13:
      if (qword_280B43260 == -1)
      {
        goto LABEL_27;
      }

LABEL_46:
      OUTLINED_FUNCTION_0_15();
      swift_once();
LABEL_27:
      OUTLINED_FUNCTION_10_23();
      goto LABEL_34;
    case 14:
      if (qword_280B43260 != -1)
      {
LABEL_47:
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

LABEL_31:
      OUTLINED_FUNCTION_5_0();
      goto LABEL_34;
    case 15:
      if (qword_280B43260 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    default:
      if (qword_280B43260 == -1)
      {
        goto LABEL_33;
      }

LABEL_37:
      OUTLINED_FUNCTION_0_15();
      swift_once();
LABEL_33:
      OUTLINED_FUNCTION_4_32();
LABEL_34:
      OUTLINED_FUNCTION_2_12();
      return sub_23B50AAD4();
  }
}

uint64_t sub_23B3CB454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50AD24();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for WeatherMetadata(0);
    v8 = a1 + *(a3 + 32);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t Wind.direction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Wind(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_23B3CB5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WeatherMetadata(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t WeatherService.fetchAvailableDataSets(for:timeZone:locationDecimalPrecision:countryCode:completion:)(void *a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v157 = a7;
  v158 = a8;
  v141 = a6;
  v160 = a5;
  LODWORD(v150) = a4;
  v151 = a2;
  v146 = a1;
  sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v147 = v9;
  v148 = v8;
  MEMORY[0x28223BE20](v8);
  v155 = v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_76();
  v159 = v12;
  v154 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_76();
  v162 = v15;
  OUTLINED_FUNCTION_24_0();
  v145 = sub_23B50CB54();
  OUTLINED_FUNCTION_5();
  v144 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_55(v19 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D20, &qword_23B515138);
  OUTLINED_FUNCTION_3(v20);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D28, &unk_23B5193A0);
  OUTLINED_FUNCTION_3(v23);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D30, &qword_23B515140);
  OUTLINED_FUNCTION_3(v26);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D38, &unk_23B5193B0);
  OUTLINED_FUNCTION_3(v29);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D40, &unk_23B5193C0);
  OUTLINED_FUNCTION_3(v32);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  v36 = OUTLINED_FUNCTION_3(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v37);
  v140[1] = v140 - v38;
  sub_23B50B604();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_27();
  v140[2] = v41 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D48, &unk_23B5193D0);
  OUTLINED_FUNCTION_3(v42);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v43);
  v45 = v140 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v46);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v47);
  v49 = v140 - v48;
  sub_23B50B7B4();
  OUTLINED_FUNCTION_5();
  v152 = v51;
  v153 = v50;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_27();
  v161 = v53 - v52;
  OUTLINED_FUNCTION_24_0();
  v54 = sub_23B50B834();
  OUTLINED_FUNCTION_5();
  v56 = v55;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_27();
  v60 = v59 - v58;
  sub_23B50B824();
  v140[5] = sub_23B50AD84();
  v140[4] = v61;
  v62 = sub_23B50AEF4();
  OUTLINED_FUNCTION_6();
  (*(v63 + 16))(v49, v151, v62);
  __swift_storeEnumTagSinglePayload(v49, 0, 1, v62);
  v150 = v56;
  v64 = *(v56 + 16);
  v140[3] = v45;
  v149 = v60;
  v65 = v60;
  v66 = v141;
  v64(v45, v65, v54);
  v151 = v54;
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v54);
  v163 = MEMORY[0x277D84F90];
  sub_23B3A1EB0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D50, &unk_23B527680);
  sub_23B3A1F08();
  sub_23B50D594();
  v67 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v67);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v67);
  sub_23B50B894();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  sub_23B50B864();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  sub_23B50B874();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
  sub_23B50B8A4();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
  sub_23B50C834();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
  sub_23B50AD94();
  (*(v144 + 104))(v143, *MEMORY[0x277D7B100], v145);
  v94 = v162;
  sub_23B50B794();
  sub_23B50AD14();
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_280B43440);
  }

  v95 = sub_23B50CDF4();
  OUTLINED_FUNCTION_88(v95, qword_280B4E9D8);
  v96 = v147;
  v97 = v148;
  v98 = *(v147 + 16);
  v99 = v159;
  v98(v159, v94, v148);

  v100 = v146;
  v101 = sub_23B50CDD4();
  v102 = sub_23B50D4C4();

  if (OUTLINED_FUNCTION_20_7())
  {
    v103 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    v165 = v144;
    OUTLINED_FUNCTION_5_13(7.2228e-34);
    *(v103 + 12) = 2081;
    v163 = v100;
    sub_23B3A3BC8();
    v143 = v98;
    v104 = v100;
    v105 = sub_23B50D1A4();
    sub_23B391F1C(v105, v106, &v165);
    v145 = v100;
    OUTLINED_FUNCTION_25_5();
    *(v103 + 14) = v100;
    *(v103 + 22) = 2160;
    *(v103 + 24) = 1752392040;
    *(v103 + 32) = 2081;
    v163 = v160;
    v164 = v66;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D60, &qword_23B515150);
    v107 = sub_23B50D1A4();
    sub_23B391F1C(v107, v108, &v165);
    OUTLINED_FUNCTION_25_5();
    *(v103 + 34) = v100;
    *(v103 + 42) = 2082;
    v109 = v155;
    v110 = v159;
    v142 = v101;
    v111 = v102;
    v112 = v143;
    v143(v155, v159, v97);
    v113 = sub_23B50D1A4();
    v115 = v114;
    OUTLINED_FUNCTION_13_7();
    v146 = v116;
    v160 = v117;
    v117(v110, v97);
    v118 = sub_23B391F1C(v113, v115, &v165);
    v100 = v145;

    *(v103 + 44) = v118;
    v119 = v112;
    v120 = v111;
    v121 = v142;
    _os_log_impl(&dword_23B38D000, v142, v120, "About to fetch available data sets; location=%{private,mask.hash}s, countryCode=%{private,mask.hash}s, startTime=%{public}s", v103, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_9_11();
  }

  else
  {

    OUTLINED_FUNCTION_13_7();
    v146 = v123;
    v160 = v124;
    v122 = (v124)(v99, v97);
    v109 = v155;
    v119 = v98;
  }

  MEMORY[0x28223BE20](v122);
  v125 = v156;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D58, &qword_23B515148);
  v159 = sub_23B50B0C4();
  v119(v109, v162, v97);
  v126 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v127 = (v154 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
  v128 = (v127 + 15) & 0xFFFFFFFFFFFFFFF8;
  v129 = v100;
  v130 = swift_allocObject();
  (*(v96 + 32))(v130 + v126, v109, v97);
  *(v130 + v127) = v100;
  *(v130 + v128) = v125;
  v131 = (v130 + ((v128 + 15) & 0xFFFFFFFFFFFFFFF8));
  v133 = v157;
  v132 = v158;
  *v131 = v157;
  v131[1] = v132;
  v134 = v129;

  v135 = sub_23B50B034();
  sub_23B50B054();

  v136 = swift_allocObject();
  v136[2] = v134;
  v136[3] = v133;
  v136[4] = v132;
  v137 = v134;

  v138 = sub_23B50B034();
  sub_23B50B084();

  v160(v162, v97);
  (*(v150 + 8))(v149, v151);
  return (*(v152 + 8))(v161, v153);
}

uint64_t sub_23B3CC27C()
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_22_6();
  v3(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_23B3CC32C()
{

  return swift_deallocObject();
}

uint64_t sub_23B3CC36C(void *a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  [a2 coordinate];
  return sub_23B50B694();
}

uint64_t sub_23B3CC400(uint64_t a1, void (*a2)(void))
{
  a2();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = [objc_opt_self() celsius];
    v5 = OUTLINED_FUNCTION_128();
    sub_23B3924C0(v5, v6, v7);
    OUTLINED_FUNCTION_150();
    sub_23B50A9B4();
    v3 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v8 = OUTLINED_FUNCTION_221();

  return __swift_storeEnumTagSinglePayload(v8, v3, 1, v9);
}

uint64_t OUTLINED_FUNCTION_110_0(uint64_t a1)
{
  *(a1 + 16) = v1;

  return swift_allocateMetadataPack();
}

void *sub_23B3CC508@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_23B3CC53C(a2, &v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_23B3CC53C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_23B50C0E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = &v34 - v9;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = *(v5 + 16);
  v14(&v34 - v12, a1, v4, v11);
  result = (*(v5 + 88))(v13, v4);
  if (result == *MEMORY[0x277D7AF00])
  {
    v16 = 0;
LABEL_7:
    *a2 = v16;
    return result;
  }

  if (result == *MEMORY[0x277D7AF10])
  {
    v16 = 1;
    goto LABEL_7;
  }

  if (result == *MEMORY[0x277D7AF08])
  {
    v16 = 2;
    goto LABEL_7;
  }

  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v17 = sub_23B50CDF4();
  __swift_project_value_buffer(v17, qword_280B4E9D8);
  v18 = v37;
  (v14)(v37, a1, v4);
  v19 = sub_23B50CDD4();
  v20 = sub_23B50D4B4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = v20;
    v22 = v18;
    v23 = v21;
    v34 = v21;
    v36 = swift_slowAlloc();
    v38 = v36;
    *v23 = 136446210;
    (v14)(v7, v22, v4);
    v24 = sub_23B50D184();
    v26 = v25;
    v27 = *(v5 + 8);
    v27(v22, v4);
    v28 = sub_23B391F1C(v24, v26, &v38);

    v29 = v34;
    *(v34 + 4) = v28;
    v30 = v29;
    _os_log_impl(&dword_23B38D000, v19, v35, "Invalid pressure trend; pressure=%{public}s", v29, 0xCu);
    v31 = v36;
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x23EE9E260](v31, -1, -1);
    MEMORY[0x23EE9E260](v30, -1, -1);

    v32 = v27;
  }

  else
  {

    v32 = *(v5 + 8);
    v32(v18, v4);
  }

  sub_23B3E3D54();
  swift_allocError();
  *v33 = 1;
  swift_willThrow();
  return (v32)(v13, v4);
}

uint64_t sub_23B3CC8D4(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = [objc_opt_self() millimeters];
  sub_23B3924C0(0, &qword_280B433A0, 0x277CCAE20);
  OUTLINED_FUNCTION_36();
  sub_23B50A9B4();
  v7 = OUTLINED_FUNCTION_216();
  type metadata accessor for PrecipitationAmount(0);
  sub_23B50A9B4();
  v8 = OUTLINED_FUNCTION_216();
  sub_23B50A9B4();
  v9 = OUTLINED_FUNCTION_216();
  sub_23B50A9B4();
  v10 = OUTLINED_FUNCTION_216();
  sub_23B50A9B4();
  v11 = OUTLINED_FUNCTION_216();
  return sub_23B50A9B4();
}

void sub_23B3CCED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, __int16 a19, char a20, unsigned __int8 a21, unsigned __int8 a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_140();
  a32 = v37;
  a33 = v38;
  v222 = v34;
  v218 = v33;
  v40 = OUTLINED_FUNCTION_155(v39);
  v41 = type metadata accessor for Wind(v40);
  v42 = OUTLINED_FUNCTION_3(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132150, &qword_23B5100E0);
  OUTLINED_FUNCTION_3(v44);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v46);
  v47 = sub_23B50C0E4();
  v48 = OUTLINED_FUNCTION_2_0(v47, &a24);
  v214 = v49;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_2_0(v51, &a27);
  v211 = v52;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v56 = OUTLINED_FUNCTION_2_0(v55, &a30);
  v217 = v57;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_43_2(v59, v60, v61, v62, v63, v64, v65, v66, v194);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_76();
  v220 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132190, &qword_23B510148);
  OUTLINED_FUNCTION_3(v69);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v70);
  v72 = &v194 - v71;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5();
  v221 = v73;
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_125();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132160, &qword_23B510100);
  OUTLINED_FUNCTION_3(v77);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_64_1();
  sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v224 = v80;
  v225 = v79;
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_6_0();
  v223 = v81;
  sub_23B50BEB4();
  sub_23B50BE74();
  v205 = v82;
  sub_23B50BF04();
  v84 = v83;
  sub_23B50BF14();
  v86 = v85;
  sub_23B50BF64();
  v88 = v87;
  sub_23B50BF04();
  v90 = v89;
  sub_23B50BF14();
  v92 = v91;
  sub_23B50BF64();
  v94 = v93;
  sub_23B50BEA4();
  sub_23B50C064();
  OUTLINED_FUNCTION_60_1();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
  sub_23B3B8890(&a23);
  sub_23B398890(v36, &qword_27E132160, &qword_23B510100);
  a18 = a23;
  sub_23B50BEA4();
  OUTLINED_FUNCTION_60_1();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v102);
  v103 = sub_23B50BF94();
  sub_23B3B99FC(v36, v103 & 1, v104, v105, v106, v107, v108, v109, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205);
  v204 = v110;
  v112 = v111;
  v113 = v36;
  v114 = v35;
  v115 = v72;
  sub_23B398890(v113, &qword_27E132160, &qword_23B510100);
  v116 = sub_23B50BF54();
  OUTLINED_FUNCTION_72(v116);
  v117 = objc_opt_self();
  v118 = [v117 celsius];
  v119 = OUTLINED_FUNCTION_154();
  v122 = sub_23B3924C0(v119, v120, v121);
  OUTLINED_FUNCTION_146();
  sub_23B50A9B4();
  sub_23B50BFA4();
  v124 = v123;
  v125 = sub_23B50BF94();
  sub_23B50BEE4();
  v126 = v222;
  sub_23B3BC884();
  if (v126)
  {

    sub_23B398890(v115, &qword_27E132190, &qword_23B510148);
    (*(v221 + 8))(v114, v226);
    v127 = OUTLINED_FUNCTION_118();
    v128(v127);
  }

  else
  {
    v201 = v122;
    v202 = v117;
    v198 = v124;
    HIDWORD(v199) = v125;
    v200 = v94;
    v203 = v112;
    v222 = v114;
    sub_23B398890(v115, &qword_27E132190, &qword_23B510148);
    v129 = a22;
    sub_23B50BF34();
    v131 = v130;
    sub_23B50BF24();
    v132 = objc_opt_self();
    v133 = [v132 millimeters];
    v134 = OUTLINED_FUNCTION_128();
    v137 = sub_23B3924C0(v134, v135, v136);
    sub_23B50A9B4();
    v138 = sub_23B50BEF4();
    v139 = [v132 millimeters];
    sub_23B50A9B4();
    sub_23B50BF74();
    sub_23B3C3CA0(v140, 0, &v229);
    HIDWORD(v195) = v129;
    v196 = v137;
    v197 = v132;
    v141 = v229;
    LODWORD(v195) = v230;
    v142 = sub_23B50BFB4();
    OUTLINED_FUNCTION_72(v142);
    v143 = [objc_opt_self() millibars];
    v144 = OUTLINED_FUNCTION_128();
    sub_23B3924C0(v144, v145, v146);
    sub_23B50A9B4();
    v147 = v208;
    sub_23B50BEC4();
    v148 = v210;
    OUTLINED_FUNCTION_51(v147, 1, v210);
    if (v149)
    {
      OUTLINED_FUNCTION_247();
      v150 = OUTLINED_FUNCTION_199();
      v151(v150);
      OUTLINED_FUNCTION_51(v147, 1, v148);
      v154 = v217;
      if (!v149)
      {
        sub_23B398890(v147, &qword_27E132150, &qword_23B5100E0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_247();
      v152 = OUTLINED_FUNCTION_199();
      v153(v152, v147, v148);
      v154 = v217;
    }

    sub_23B3CC508(&a21, v132);
    OUTLINED_FUNCTION_56_1();
    v155 = OUTLINED_FUNCTION_211();
    v156(v155);
    LODWORD(v217) = a21;
    sub_23B50BE94();
    v157 = v202;
    v158 = [v202 celsius];
    sub_23B50A9B4();
    v159 = sub_23B50BF44();
    v160 = [v157 celsius];
    sub_23B50A9B4();
    v161 = sub_23B50BF84();
    sub_23B3C1284(v161, 0, &v227);
    v162 = BYTE4(v195);
    v163 = v227;
    LODWORD(v214) = v228;
    sub_23B50BE84();
    v164 = OUTLINED_FUNCTION_164();
    v166 = [v164 v165];
    sub_23B50A9B4();
    sub_23B50BFD4();
    v168 = v167;
    v169 = sub_23B50BED4();
    sub_23B50BFC4();
    OUTLINED_FUNCTION_114();
    sub_23B3B32C4(v168, 0);
    v218 = 0;
    v170 = OUTLINED_FUNCTION_161();
    v171 = v90 / v170;
    v210 = v141;
    v172 = v92 / v170;
    v209 = *&v200 / v170;
    v173 = OUTLINED_FUNCTION_161();
    v174 = *&v205 / v173;
    v175 = v84 / v173;
    v176 = v86 / v173;
    v177 = v88 / v173;
    v178 = *&v198 / v173;
    v179 = v131 / v173;
    v180 = OUTLINED_FUNCTION_199();
    v181(v180);
    v182 = type metadata accessor for HourWeather(0);
    *(v169 + v182[5]) = v174;
    *(v169 + v182[6]) = v175;
    *(v169 + v182[7]) = v176;
    *(v169 + v182[8]) = v177;
    v183 = (v169 + v182[9]);
    *v183 = v171;
    v183[1] = v172;
    v183[2] = v209;
    *(v169 + v182[10]) = a18;
    OUTLINED_FUNCTION_253((v169 + v182[11]));
    v185 = *(v184 + 48);
    v225 = v163;
    v186 = *(v221 + 32);
    v187 = v226;
    v186(v169 + v185, v222, v226);
    *(v169 + v182[13]) = v178;
    *(v169 + v182[14]) = BYTE4(v199) & 1;
    *(v169 + v182[15]) = v162;
    *(v169 + v182[16]) = v179;
    OUTLINED_FUNCTION_157();
    v189(v169 + v188, v215, v213);
    *(v169 + v182[21]) = v217;
    v190 = *(v154 + 32);
    v191 = v216;
    v190(v169 + v182[17], v220, v216);
    v190(v169 + v182[18], v219, v191);
    v192 = (v169 + v182[19]);
    *v192 = v210;
    OUTLINED_FUNCTION_179(v192);
    v186(v169 + v182[22], v207, v187);
    v186(v169 + v182[23], v212, v187);
    v193 = (v169 + v182[24]);
    *v193 = v225;
    OUTLINED_FUNCTION_179(v193);
    v190(v169 + v182[25], v206, v191);
    OUTLINED_FUNCTION_15_3();
    sub_23B3B0608();
  }

  OUTLINED_FUNCTION_139();
}

uint64_t sub_23B3CDD50@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v27[0] = a4;
  v27[1] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v27 - v14;
  v16 = *a2;
  v17 = *a3;
  switch(*a1)
  {
    case 2u:

      v19 = 2;
      break;
    case 4u:
      goto LABEL_4;
    default:
      v18 = sub_23B50D834();

      if (v18)
      {
        v19 = 2;
      }

      else
      {
LABEL_4:
        sub_23B3A23E0();
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
        v19 = __swift_getEnumTagSinglePayload(v15, 1, v20) == 1;
        sub_23B398890(v15, &qword_27E131C90, &unk_23B514EC0);
      }

      break;
  }

  switch(v16)
  {
    case 2:

      goto LABEL_10;
    case 4:
      goto LABEL_7;
    default:
      v21 = sub_23B50D834();

      if (v21)
      {
LABEL_10:
        v22 = 2;
      }

      else
      {
LABEL_7:
        v22 = v27[0] == 0;
      }

      switch(v17)
      {
        case 2:

          goto LABEL_15;
        case 4:
          goto LABEL_13;
        default:
          v23 = sub_23B50D834();

          if (v23)
          {
LABEL_15:
            v26 = 2;
          }

          else
          {
LABEL_13:
            sub_23B3A23E0();
            v25 = type metadata accessor for AirQuality(0);
            v26 = __swift_getEnumTagSinglePayload(v12, 1, v25) == 1;
            result = sub_23B398890(v12, &qword_27E131C78, &qword_23B50ED40);
          }

          *a6 = v19;
          a6[1] = v22;
          a6[2] = v26;
          return result;
      }
  }
}

uint64_t sub_23B3CE19C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = result;
  v19 = a2;
  v21 = a5;
  v7 = 0;
  v20 = a4 & 0xFFFFFFFFFFFFFFFELL;
  while (a3 != v7)
  {
    v8 = *(v21 + 8 * v7);
    v9 = *(v18 + 8 * v7);
    v10 = type metadata accessor for WeatherQuery(0, *(v20 + 8 * v7), a3, a4);
    v11 = *(v10 - 8);
    v12 = MEMORY[0x28223BE20](v10);
    v14 = &v17 - v13;
    (*(v11 + 16))(&v17 - v13, v9, v10, v12);
    sub_23B3C0560(v19, v10, v8);
    if (v5)
    {
      result = (*(v11 + 8))(v14, v10);
      if (v7)
      {
        v15 = v20 - 8;
        v16 = v21 - 8;
        do
        {
          result = (*(*(*(v15 + 8 * v7) - 8) + 8))(*(v16 + 8 * v7));
          --v7;
        }

        while (v7);
      }

      return result;
    }

    result = (*(v11 + 8))(v14, v10);
    ++v7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherAvailability(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFD)
  {
    if ((a2 + 33554179) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776964;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 4;
  v3 = v4 - 4;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_23B3CE3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  sub_23B50D954();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23B3CE4B8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34_0();
  v4(v3);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_65();
  v6(v5);
  return a2;
}

uint64_t sub_23B3CE510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_65();
  v6(v5);
  return v4;
}

uint64_t sub_23B3CE55C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23B3CE5BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_65();
  v6(v5);
  return v4;
}

uint64_t sub_23B3CE608(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B3CE674(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B50AD24();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B3CE6BC()
{
  v0 = OUTLINED_FUNCTION_5_25();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_24_11(*(v2 + 28));
}

uint64_t sub_23B3CE728(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t WeatherServiceLastFetched.date.getter@<X0>(uint64_t a1@<X8>)
{
  Fetched = type metadata accessor for WeatherServiceLastFetched(0);
  MEMORY[0x28223BE20](Fetched - 8);
  OUTLINED_FUNCTION_27();
  v6 = v5 - v4;
  sub_23B3CE870(v1, v5 - v4);
  v7 = sub_23B50AD24();
  v8 = 1;
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    (*(*(v7 - 8) + 32))(a1, v6, v7);
    v8 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v8, 1, v7);
}

uint64_t sub_23B3CE870(uint64_t a1, uint64_t a2)
{
  Fetched = type metadata accessor for WeatherServiceLastFetched(0);
  (*(*(Fetched - 8) + 16))(a2, a1, Fetched);
  return a2;
}

uint64_t sub_23B3CE8E8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_19:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[11];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
      OUTLINED_FUNCTION_8_0();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[13];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
        OUTLINED_FUNCTION_8_0();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[14];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
          OUTLINED_FUNCTION_8_0();
          if (*(v20 + 84) == a2)
          {
            v8 = v19;
            v14 = a3[22];
          }

          else
          {
            type metadata accessor for Wind(0);
            OUTLINED_FUNCTION_8_0();
            if (*(v22 + 84) == a2)
            {
              v8 = v21;
              v14 = a3[23];
            }

            else
            {
              v8 = type metadata accessor for WeatherMetadata(0);
              v14 = a3[24];
            }
          }
        }
      }
    }

    v9 = a1 + v14;
    goto LABEL_19;
  }

  v10 = *(a1 + a3[10] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t (*sub_23B3CEB50(void *a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  a1[2] = __swift_coroFrameAllocStub(*(v6 + 64));
  Forecast.subscript.getter(a2, a3);
  return sub_23B3CEC1C;
}

void sub_23B3CEC1C(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_23B3CEC68(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  OUTLINED_FUNCTION_1_26();
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t WeatherDataModel.currentWeather.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_currentWeather;
  OUTLINED_FUNCTION_16_7(v3 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_currentWeather, v6);
  return sub_23B445F28(v3 + v4, a1);
}

void sub_23B3CEDCC(uint64_t a1)
{
  sub_23B3973DC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t CLLocationCoordinate2D.solarEvents(referenceDate:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a1;
  v53 = a3;
  v59 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v15 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v46 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v46 - v25;
  v51 = sub_23B50AE84();
  OUTLINED_FUNCTION_5();
  v49 = v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  GEOLocationCoordinate2DMake();
  v32 = v31;
  v34 = v33;
  v57 = v31;
  v58 = v33;
  sub_23B50ADF4();
  v48 = v30;
  sub_23B50ADE4();
  v50 = v26;
  sub_23B50AB74();
  v36 = [objc_allocWithZone(MEMORY[0x277D0ED50]) initWithLocation:v32 time:v34 altitudeInDegrees:v35 accuracy:{*MEMORY[0x277D0E7C0], 60.0}];
  v55 = v14;
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  v52 = v11;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v15);
  [v36 nextEventOfType_];
  v47 = v36;
  [v36 nextEventOfType_];
  sub_23B50AB64();
  sub_23B50AB64();
  v37 = *(v17 + 16);
  v54 = v23;
  v37(v8, v23, v15);
  OUTLINED_FUNCTION_0_34();
  LOBYTE(v36) = sub_23B3CF320(v8, a2);
  sub_23B3CF54C(v8);
  if (v36)
  {
    v38 = v55;
    sub_23B3CF54C(v55);
    v37(v38, v54, v15);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v15);
  }

  v37(v8, v20, v15);
  OUTLINED_FUNCTION_0_34();
  v39 = sub_23B3CF320(v8, a2);
  sub_23B3CF54C(v8);
  v40 = v52;
  if (v39)
  {
    sub_23B3CF54C(v52);
    v37(v40, v20, v15);
    OUTLINED_FUNCTION_0_34();
  }

  sub_23B50AB74();
  isDayLightForLocation = geo_isDayLightForLocation();

  v42 = *(v17 + 8);
  v42(v20, v15);
  v42(v54, v15);
  v42(v50, v15);
  (*(v49 + 8))(v48, v51);
  v43 = v53;
  sub_23B3CF5B4(v55, v53);
  v44 = type metadata accessor for CLLocationCoordinate2D.SolarEvents(0);
  result = sub_23B3CF5B4(v40, v43 + *(v44 + 20));
  *(v43 + *(v44 + 24)) = isDayLightForLocation;
  return result;
}

uint64_t sub_23B3CF320(uint64_t a1, uint64_t a2)
{
  v3 = sub_23B50AE84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_23B50AD24();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B3C7DF4(a1, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_23B3CF54C(v9);
    v14 = 0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_23B50ADF4();
    v14 = sub_23B50AE34();
    (*(v4 + 8))(v6, v3);
    (*(v11 + 8))(v13, v10);
  }

  return v14 & 1;
}

uint64_t sub_23B3CF54C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B3CF5B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CLLocationCoordinate2D.SolarEvents(uint64_t a1)
{
  result = qword_280B42C88;
  if (!qword_280B42C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CLLocationCoordinate2D.SolarEvents.sunset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CLLocationCoordinate2D.SolarEvents(0) + 20);

  return sub_23B3C7DF4(v3, a1);
}

uint64_t SunEvents.init(astronomicalDawn:nauticalDawn:civilDawn:sunrise:solarNoon:sunset:civilDusk:nauticalDusk:astronomicalDusk:solarMidnight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = type metadata accessor for SunEvents(0);
  v53 = v16[5];
  v17 = OUTLINED_FUNCTION_14_9(v53);
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  v20 = v16[6];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v12);
  v24 = v16[7];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v12);
  v28 = v16[8];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v12);
  v32 = v16[9];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v12);
  v36 = v16[10];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v12);
  v40 = v16[11];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v12);
  v44 = v16[12];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v12);
  v48 = v16[13];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v12);
  sub_23B3CF890(a1, a9);
  sub_23B3CF890(a2, a9 + v53);
  sub_23B3CF890(a3, a9 + v20);
  sub_23B3CF890(a4, a9 + v24);
  sub_23B3CF890(a5, a9 + v28);
  sub_23B3CF890(a6, a9 + v32);
  sub_23B3CF890(a7, a9 + v36);
  sub_23B3CF890(a8, a9 + v40);
  sub_23B3CF890(a10, a9 + v44);

  return sub_23B3CF890(a11, a9 + v48);
}

uint64_t sub_23B3CF890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B3CF914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_23B3CF980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t CurrentWeather.temperature.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for CurrentWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t CurrentWeather.date.getter()
{
  OUTLINED_FUNCTION_7_0();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_65();

  return v1(v0);
}

uint64_t sub_23B3CFAAC(uint64_t a1, char a2)
{
  sub_23B50D1C4();
}

uint64_t Forecast<>.todaysWeather(today:timeZone:)()
{
  v1 = OUTLINED_FUNCTION_2_36();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v7 = v6 - v5;
  sub_23B50ADF4();
  sub_23B3CFC60(sub_23B3CFEEC, v0);
  return (*(v3 + 8))(v7, v1);
}

uint64_t sub_23B3CFC60@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = type metadata accessor for DayWeather(0);
  v5 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134138, &qword_23B51C640);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  result = sub_23B3CFE7C(v2, &v19 - v10);
  v13 = 0;
  v21 = *(v9 + 44);
  v14 = *v11;
  v15 = *(*v11 + 16);
  while (1)
  {
    if (v15 == v13)
    {
      *&v11[v21] = v15;
      sub_23B494C80(v11);
      v17 = 1;
      v18 = v20;
      return __swift_storeEnumTagSinglePayload(v18, v17, 1, v19);
    }

    if (v13 >= *(v14 + 16))
    {
      break;
    }

    sub_23B4894C0(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v7);
    v16 = a1(v7);
    if (v3)
    {
      *&v11[v21] = v13 + 1;
      sub_23B494C24(v7);
      return sub_23B494C80(v11);
    }

    if (v16)
    {
      *&v11[v21] = v13 + 1;
      sub_23B494C80(v11);
      v18 = v20;
      sub_23B48945C(v7, v20);
      v17 = 0;
      return __swift_storeEnumTagSinglePayload(v18, v17, 1, v19);
    }

    result = sub_23B494C24(v7);
    ++v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_23B3CFE7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B3CFF58(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736302;
  switch(v4)
  {
    case 1:
      v5 = 1818845544;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x646578696DLL;
      break;
    case 3:
      v5 = 1852399986;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x7465656C73;
      break;
    case 5:
      v5 = 2003791475;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 1818845544;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x646578696DLL;
      break;
    case 3:
      v2 = 1852399986;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x7465656C73;
      break;
    case 5:
      v2 = 2003791475;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_3(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t getEnumTagSinglePayload for Article.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23B3D0160@<X0>(uint64_t *a1@<X8>)
{
  result = Precipitation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Precipitation.rawValue.getter()
{
  result = 1701736302;
  switch(*v0)
  {
    case 1:
      result = 1818845544;
      break;
    case 2:
      result = 0x646578696DLL;
      break;
    case 3:
      result = 1852399986;
      break;
    case 4:
      result = 0x7465656C73;
      break;
    case 5:
      result = 2003791475;
      break;
    default:
      return result;
  }

  return result;
}

void static WeatherServiceCaching.enabled.getter()
{
  if (qword_280B45360 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_59(&word_280B4536B);
}

uint64_t WeatherService.__allocating_init(endpoint:caching:networkMonitor:)(uint64_t a1, char *a2, uint64_t a3)
{
  v8 = type metadata accessor for WDSEndpoint(0);
  v9 = OUTLINED_FUNCTION_3(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27_3();
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  if (qword_280B45350 != -1)
  {
    OUTLINED_FUNCTION_19_17(&qword_280B45350);
  }

  v13 = OUTLINED_FUNCTION_16_16();
  sub_23B3943E8(v13, v4);
  v19[0] = v10;
  v19[1] = v11;
  v19[2] = v12;
  sub_23B3923E8(a3, v18);

  WeatherService.__allocating_init(scaleCacheManager:endpoint:caching:networkMonitor:)(v14, v4, v19, v18);
  v15 = OUTLINED_FUNCTION_120_1();
  __swift_destroy_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_6_25();
  sub_23B393E24(a1, v16);
  return v3;
}

uint64_t OUTLINED_FUNCTION_98_1()
{

  return sub_23B4D7504(v1, v0);
}

void sub_23B3D03EC(uint64_t a1)
{
  sub_23B399C6C(319, &qword_280B42F00, type metadata accessor for CurrentWeather);
  if (v1 <= 0x3F)
  {
    sub_23B39A134(319, &qword_280B42ED0, &qword_27E131C90, &unk_23B514EC0);
    if (v2 <= 0x3F)
    {
      sub_23B39A134(319, &qword_280B42ED8, &qword_27E131CA8, &unk_23B50ED70);
      if (v3 <= 0x3F)
      {
        sub_23B39A134(319, &qword_280B42EE0, &qword_27E131CB0, &qword_23B516B60);
        if (v4 <= 0x3F)
        {
          sub_23B39A134(319, &qword_280B42EF0, &qword_27E131C78, &qword_23B50ED40);
          if (v5 <= 0x3F)
          {
            sub_23B39A134(319, &qword_280B42EF8, &qword_27E131EF0, &unk_23B50F220);
            if (v6 <= 0x3F)
            {
              sub_23B39A134(319, &qword_280B42EC8, &qword_27E131EC8, &unk_23B50F1F0);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t ProductRequirementsFactory.widgetRequiredProducts(for:)()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v2 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
  OUTLINED_FUNCTION_39_8(v6[8]);
  *(v10 + 16) = 1;
  OUTLINED_FUNCTION_39_8(v6[9]);
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_30_9(v1 + v6[10]);
  type metadata accessor for InstantWeatherQueryOptions(0);
  OUTLINED_FUNCTION_12_20();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  OUTLINED_FUNCTION_11_18();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = type metadata accessor for ProductRequirementsFactory.WidgetRequiredProducts(0);
  v21 = v1 + v20[5];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v2);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v2);
  v29 = (v21 + v25[8]);
  *v29 = 0;
  v29[1] = 0;
  OUTLINED_FUNCTION_55_3(v29);
  OUTLINED_FUNCTION_30_9(v21 + v25[9]);
  OUTLINED_FUNCTION_30_9(v21 + v25[10]);
  OUTLINED_FUNCTION_12_20();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  OUTLINED_FUNCTION_11_18();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  sub_23B3D07FC(v1 + v20[6]);
  OUTLINED_FUNCTION_17_15(v20[7]);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
  OUTLINED_FUNCTION_3_41(v38);
  OUTLINED_FUNCTION_0_47(v39);
  OUTLINED_FUNCTION_17_15(v20[8]);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
  OUTLINED_FUNCTION_3_41(v40);
  OUTLINED_FUNCTION_0_47(v41);
  OUTLINED_FUNCTION_17_15(v20[9]);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
  OUTLINED_FUNCTION_3_41(v42);
  OUTLINED_FUNCTION_0_47(v43);
  OUTLINED_FUNCTION_17_15(v20[10]);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
  v45 = OUTLINED_FUNCTION_8_22(v44[7]);
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v2);
  OUTLINED_FUNCTION_21_14(v44[8]);
  OUTLINED_FUNCTION_14_24(v44[9]);
  OUTLINED_FUNCTION_14_24(v44[10]);
  v48 = OUTLINED_FUNCTION_7_36(v44[11]);
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  OUTLINED_FUNCTION_8_22(v44[12]);
  OUTLINED_FUNCTION_20();

  return __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
}

double sub_23B3D07FC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_23B50AA24();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
  __swift_storeEnumTagSinglePayload(a1 + v3[7], 1, 1, v2);
  v4 = v3[11];
  Options = type metadata accessor for InstantWeatherQueryOptions(0);
  __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, Options);
  v6 = v3[12];
  PeriodicRelativeRange = type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, PeriodicRelativeRange);
  v8 = a1 + v3[8];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = a1 + v3[9];
  result = 0.0;
  *v9 = xmmword_23B51CAE0;
  *(v9 + 16) = 1;
  v11 = a1 + v3[10];
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 2;
  return result;
}

void WeatherService.fetchWeather<A, B, C, D, E, F, G>(for:including:_:_:_:_:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_21();
  a19 = v31;
  a20 = v32;
  v123 = v33;
  v120 = v34;
  v127 = a21;
  v128 = v35;
  OUTLINED_FUNCTION_73_1(a22);
  OUTLINED_FUNCTION_116_0(a23);
  v106 = a24;
  v111 = a25;
  v36 = a26;
  v117 = a26;
  v37 = a27;
  v118 = a27;
  v38 = a28;
  v119 = a28;
  v39 = a29;
  v121 = a29;
  v40 = OUTLINED_FUNCTION_80_1(a30, &a15);
  v44 = type metadata accessor for WeatherQuery(v40, v41, v42, v43);
  OUTLINED_FUNCTION_2_0(v44, &a12);
  v122 = v45;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_52();
  v48 = OUTLINED_FUNCTION_35(v47);
  v51 = type metadata accessor for WeatherQuery(v48, v39, v49, v50);
  OUTLINED_FUNCTION_2_0(v51, v140);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_52();
  v54 = OUTLINED_FUNCTION_35(v53);
  type metadata accessor for WeatherQuery(v54, v38, v55, v56);
  OUTLINED_FUNCTION_5();
  v132 = v58;
  v133 = v57;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_52();
  v131 = v60;
  v61 = OUTLINED_FUNCTION_24_0();
  type metadata accessor for WeatherQuery(v61, v37, v62, v63);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_2_28(v64, &v129);
  v66 = v65;
  v105 = v65;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_52();
  v130 = v68;
  v69 = OUTLINED_FUNCTION_24_0();
  v72 = type metadata accessor for WeatherQuery(v69, v36, v70, v71);
  OUTLINED_FUNCTION_2_28(v72, &v133);
  v74 = v73;
  v110 = v73;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_156_0(v76, v77, v78, v79);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v80, &v136);
  v82 = v81;
  v114 = v81;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_30_6();
  v84 = OUTLINED_FUNCTION_69_2();
  type metadata accessor for WeatherQuery(v84, v85, v86, v87);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v88, v137);
  v90 = v89;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_272();
  v92();
  v139[0] = v30;
  OUTLINED_FUNCTION_167_0();
  v93();
  v139[1] = v36;
  (*(v74 + 16))(v38, v120, v72);
  v139[2] = v38;
  v94 = v130;
  OUTLINED_FUNCTION_130_0();
  v95();
  v139[3] = v94;
  v96 = v131;
  (*(v132 + 16))(v131, v123, v133);
  v140[0] = v96;
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_149_0();
  v97();
  v140[1] = v72;
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_194_0();
  OUTLINED_FUNCTION_186_0();
  v98();
  v140[2] = v96;
  OUTLINED_FUNCTION_154_0(&v135);
  OUTLINED_FUNCTION_120_0(&v138);
  v137[0] = v119;
  v137[1] = v121;
  v138 = v124;
  sub_23B39C90C(v128, v139, v127, v126, v125, 7, &v134, v99, v103, v105, v106, v38, v108, v110, v111, v112, v114, v115, v117, v118);
  (*(v122 + 8))(v96, v74 + 16);
  (*(v82 + 24))(v72, v66 + 16);
  (*(v132 + 8))(v131, v133);
  OUTLINED_FUNCTION_56_1();
  v100(v130, v104);
  OUTLINED_FUNCTION_56_1();
  v101(v107, v109);
  OUTLINED_FUNCTION_56_1();
  v102(v36, v113);
  (*(v90 + 8))(v30, v116);
  OUTLINED_FUNCTION_20();
}

void OUTLINED_FUNCTION_87_0()
{
  v2 = (v1 + *(v0 + 40));
  *v2 = 0;
  v2[1] = 0;
}

void OUTLINED_FUNCTION_154_0(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 200) = v1;
  *(v2 - 192) = v3;
}

void sub_23B3D112C()
{
  OUTLINED_FUNCTION_21();
  v42 = v3;
  v43 = v4;
  v46 = v6;
  v47 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v10 = OUTLINED_FUNCTION_3(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_30_4();
  v15 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_214_0();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v42 - v21;
  v8(0, v20);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v23);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v29 = &v42 - v27;
  v30 = *v0;
  v44 = v0[1];
  v45 = v30;
  v32 = *(v31 + 104);
  if (v0[2])
  {
    v32(v25, *v43, v28);
    type metadata accessor for WeatherServiceFetchOptions(0);
    sub_23B3A23E0();
    v33 = OUTLINED_FUNCTION_152();
    OUTLINED_FUNCTION_51(v33, v34, v15);
    if (v35)
    {
      sub_23B50ACE4();
      v36 = OUTLINED_FUNCTION_152();
      OUTLINED_FUNCTION_51(v36, v37, v15);
      if (!v35)
      {
        sub_23B398890(v13, &qword_27E131E18, &unk_23B50F710);
      }
    }

    else
    {
      (*(v17 + 32))(v2, v13, v15);
    }

    v38 = v45;
    v39 = v44;
    v40 = v25;
    v41 = v2;
  }

  else
  {
    v32(&v42 - v27, *v42, v28);
    type metadata accessor for WeatherServiceFetchOptions(0);
    sub_23B3A23E0();
    OUTLINED_FUNCTION_51(v1, 1, v15);
    if (v35)
    {
      sub_23B50ACE4();
      OUTLINED_FUNCTION_51(v1, 1, v15);
      if (!v35)
      {
        sub_23B398890(v1, &qword_27E131E18, &unk_23B50F710);
      }
    }

    else
    {
      (*(v17 + 32))(v22, v1, v15);
    }

    v38 = v45;
    v39 = v44;
    v40 = v29;
    v41 = v22;
  }

  v47(v38, v39, v40, v41);
  OUTLINED_FUNCTION_20();
}

uint64_t OUTLINED_FUNCTION_240_1()
{

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B3D1568(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23B50ADC4();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23B3D15F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23B50ADC4();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B3D16A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v7 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

uint64_t sub_23B3D170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v8 = a1 + *(a4 + 24);

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_23B3D179C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for WeatherServiceOptions(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23B3D1824(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WeatherServiceOptions(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B3D18D4(uint64_t a1, char a2)
{
  sub_23B50D1C4();
}

uint64_t sub_23B3D1944(uint64_t a1, char a2)
{
  sub_23B50D1C4();
}

uint64_t sub_23B3D199C(uint64_t a1, char a2)
{
  sub_23B50D1C4();
}

uint64_t sub_23B3D1B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_8_0();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 32) + 8);
      if (v13 >= 3)
      {
        return v13 - 2;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_23B3D1C70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = a2 + 2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 28);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_23B3D1E38(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_23B3D1F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_8_0();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 28) + 8);
      if (v13 >= 3)
      {
        return v13 - 2;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_23B3D206C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2 + 2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_23B3D21A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for SnowfallAmount(0);
    v8 = a1 + *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23B3D224C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for SnowfallAmount(0);
    v10 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23B3D239C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TrendBaseline(0, *(a3 + 16), a3, a4);
  OUTLINED_FUNCTION_8_0();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    sub_23B50A9E4();
    OUTLINED_FUNCTION_8_0();
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 32));
      if (v14 >= 5)
      {
        return v14 - 4;
      }

      else
      {
        return 0;
      }
    }

    v9 = v11;
    v10 = a1 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

void sub_23B3D2490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_7_11();
  type metadata accessor for TrendBaseline(v8, v9, v10, v11);
  OUTLINED_FUNCTION_8_0();
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = a1;
  }

  else
  {
    OUTLINED_FUNCTION_7_11();
    sub_23B50A9E4();
    OUTLINED_FUNCTION_8_0();
    if (*(v17 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2 + 4;
      return;
    }

    v14 = v16;
    v15 = a1 + *(a4 + 28);
  }

  __swift_storeEnumTagSinglePayload(v15, a2, a2, v14);
}

uint64_t sub_23B3D25B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23B410B58(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_23B3D25DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_23B410B80(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_23B3D26F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v7 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

uint64_t sub_23B3D2754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v8 = a1 + *(a4 + 20);

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_23B3D2808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B3D27E4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23B3D2994(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23B3D29A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23B3D29BC(unint64_t result)
{
  if (*(*v1 + 16) <= result)
  {
    __break(1u);
  }

  else
  {
    ++result;
  }

  return result;
}

unint64_t sub_23B3D29D8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>, uint64_t a3@<X1>)
{
  result = sub_23B410B5C(*a1, a3);
  *a2 = result;
  return result;
}

unint64_t sub_23B3D2A04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_23B410B98(*a1, a2, *a3, sub_23B440584);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

id sub_23B3D2D20@<X0>(_BYTE *a1@<X8>)
{
  result = static Automation.shouldShowSimulatedAlert.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23B3D2D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50C7D4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 52));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_23B3D2E14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50C7D4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B3D37CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50C7D4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 52));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_23B3D3878(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50C7D4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B3D3920(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_14:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 253)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F70, &unk_23B5192B0);
    OUTLINED_FUNCTION_8_0();
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v16 = a3[11];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F50, &qword_23B50F288);
      v16 = a3[12];
    }

    v9 = a1 + v16;
    goto LABEL_14;
  }

  v10 = *(a1 + a3[9] + 16);
  if (v10 <= 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = *(a1 + a3[9] + 16);
  }

  v12 = v11 - 2;
  if (v10 >= 2)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B3D3AA4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23B4343B4(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_23B3D3D3C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
    JUMPOUT(0x23B3D3D50);
  }

  return result;
}

uint64_t sub_23B3D3D64(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132240, &qword_23B510230);
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132280, &qword_23B510278);
    OUTLINED_FUNCTION_8_0();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132270, &unk_23B5164A0);
      OUTLINED_FUNCTION_8_0();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132260, &qword_23B510258);
        OUTLINED_FUNCTION_8_0();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132250, &unk_23B5164B0);
          v12 = a3[8];
        }
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_23B3D3EF8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132240, &qword_23B510230);
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132280, &qword_23B510278);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132270, &unk_23B5164A0);
      OUTLINED_FUNCTION_8_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132260, &qword_23B510258);
        OUTLINED_FUNCTION_8_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[7];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132250, &unk_23B5164B0);
          v14 = a4[8];
        }
      }
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_23B3D40D4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C98, &unk_23B50ED60);
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_12:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_8_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_11:
    v9 = a1 + v12;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C88, &unk_23B50ED50);
  OUTLINED_FUNCTION_8_0();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C80, &qword_23B50ED48);
  OUTLINED_FUNCTION_8_0();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[7];
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_8_0();
  if (*(v18 + 84) == a2)
  {
    v8 = v17;
    v12 = a3[8];
    goto LABEL_11;
  }

  v20 = *(a1 + a3[9]);
  if (v20 >= 0xFFFFFFFF)
  {
    LODWORD(v20) = -1;
  }

  v21 = v20 - 1;
  if (v21 < 0)
  {
    v21 = -1;
  }

  return (v21 + 1);
}

void sub_23B3D42C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C98, &unk_23B50ED60);
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C88, &unk_23B50ED50);
      OUTLINED_FUNCTION_8_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C80, &qword_23B50ED48);
        OUTLINED_FUNCTION_8_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
          OUTLINED_FUNCTION_8_0();
          if (*(v20 + 84) != a3)
          {
            *(a1 + a4[9]) = a2;
            return;
          }

          v10 = v19;
          v14 = a4[8];
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_23B3D44D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B50C7D4();
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_4_17(*(a1 + *(a3 + 52)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_23B3D4570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_23B50C7D4();
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }
}

uint64_t sub_23B3D4614(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_4_17(*a1);
  }

  sub_23B50BE64();
  OUTLINED_FUNCTION_8_0();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[13];
  }

  else
  {
    sub_23B50AD24();
    OUTLINED_FUNCTION_8_0();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[14];
    }

    else
    {
      v9 = sub_23B50AEF4();
      v10 = a3[15];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void *sub_23B3D4710(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_23B50BE64();
    OUTLINED_FUNCTION_8_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[13];
    }

    else
    {
      sub_23B50AD24();
      OUTLINED_FUNCTION_8_0();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[14];
      }

      else
      {
        v10 = sub_23B50AEF4();
        v11 = a4[15];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

unint64_t sub_23B3D4814(uint64_t a1, uint64_t a2)
{
  v2 = sub_23B50D664();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23B3D4860(char a1)
{
  result = 0x6B7261446F676F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x6867694C6F676F6CLL;
      break;
    case 2:
      result = 0x617571536F676F6CLL;
      break;
    case 3:
      result = 0x4E65636976726573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B3D4BEC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 >= 8)
    {
      return v4 - 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
    v9 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_23B3D4C78(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B3D4D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23B3D4D94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_23B3D4E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50AD24();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23B3D4EBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23B50AD24();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23B3D4FAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23B3D5000(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_23B3D5094(uint64_t a1, uint64_t a2, int *a3)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_8_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_10:
    v9 = a1 + v12;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = type metadata accessor for PrecipitationShift(0);
    v12 = a3[8];
    goto LABEL_10;
  }

  v13 = *(a1 + a3[6] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_23B3D51B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[6] + 8) = (a2 - 1);
        return;
      }

      v10 = type metadata accessor for PrecipitationShift(0);
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_23B3D52F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50A9E4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_23B50AD24();
    v8 = a1 + *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23B3D5390(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23B50A9E4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_23B50AD24();
    v10 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23B3D548C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23B3D5554(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_23B3D5608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50AD24();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23B3D56B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23B50AD24();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23B3D57B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B50AD64();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23B3D57F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B50AD64();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_23B3D5858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19();
  v6 = sub_23B50AD24();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 32));
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

uint64_t sub_23B3D590C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50AD24();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t sub_23B3D59DC()
{

  OUTLINED_FUNCTION_139_0();

  return swift_deallocObject();
}

uint64_t sub_23B3D5A98()
{

  return swift_deallocObject();
}

void sub_23B3D5AEC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_233_0();
  if (v6)
  {
    OUTLINED_FUNCTION_32_5();
    OUTLINED_FUNCTION_176_0();
    OUTLINED_FUNCTION_26_12(v7);
    type metadata accessor for DailyWeatherSummaryQuery(0, v8);
  }

  else
  {
    MEMORY[0x28223BE20](v5);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_35_3();
    OUTLINED_FUNCTION_275();
    while (v0 != v3)
    {
      OUTLINED_FUNCTION_26_12(*(v4 + 8 * v3));
      *(v2 + 8 * v3++) = type metadata accessor for DailyWeatherSummaryQuery(255, v9);
    }

    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
  }

  OUTLINED_FUNCTION_5();
  v11 = v10;
  v25 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v26 = v12;
  v14 = *(v13 + 64);
  v15 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v17 = v16;
  v18 = (v25 + v14 + *(v16 + 80)) & ~*(v16 + 80);
  v20 = *(v19 + 64);
  v21 = sub_23B50AEF4();
  OUTLINED_FUNCTION_5();
  v23 = v22;
  v24 = (v18 + v20 + *(v22 + 80)) & ~*(v22 + 80);
  (*(v11 + 8))(v1 + v25, v26);
  (*(v17 + 8))(v1 + v18, v15);
  (*(v23 + 8))(v1 + v24, v21);

  swift_deallocObject();
  OUTLINED_FUNCTION_20();
}

void sub_23B3D5D30()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_233_0();
  if (v6)
  {
    OUTLINED_FUNCTION_32_5();
    OUTLINED_FUNCTION_176_0();
    OUTLINED_FUNCTION_26_12(v7);
    type metadata accessor for MonthlyWeatherStatisticsQuery(0, v8);
  }

  else
  {
    MEMORY[0x28223BE20](v5);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_35_3();
    OUTLINED_FUNCTION_275();
    while (v0 != v3)
    {
      OUTLINED_FUNCTION_26_12(*(v4 + 8 * v3));
      *(v2 + 8 * v3++) = type metadata accessor for MonthlyWeatherStatisticsQuery(255, v9);
    }

    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
  }

  OUTLINED_FUNCTION_48();
  (*(v10 + 8))(v1 + ((*(v10 + 80) + 56) & ~*(v10 + 80)));

  OUTLINED_FUNCTION_264();
  swift_deallocObject();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B3D5E58()
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  OUTLINED_FUNCTION_264();

  return swift_deallocObject();
}

uint64_t sub_23B3D5F00()
{

  return swift_deallocObject();
}

uint64_t sub_23B3D5F54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1331D0, &qword_23B5168C8);
  OUTLINED_FUNCTION_138_0();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v16 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  v7 = (v2 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v9 = *(v8 + 64);
  v10 = sub_23B50AEF4();
  OUTLINED_FUNCTION_5();
  v12 = v11;
  v13 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  sub_23B50C7D4();
  OUTLINED_FUNCTION_6();
  (*(v14 + 8))(v0 + v2);

  (*(v6 + 8))(v0 + v7, v16);
  (*(v12 + 8))(v0 + v13, v10);

  return swift_deallocObject();
}

uint64_t sub_23B3D6164()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133900, &qword_23B519480);
  OUTLINED_FUNCTION_138_0();
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = sub_23B50C7D4();
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 8);
  v5(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132E38, &qword_23B5157C0);

  v6 = OUTLINED_FUNCTION_241_0();
  (v5)(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E132E40, &qword_23B5157C8);

  return swift_deallocObject();
}

uint64_t sub_23B3D630C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C98, &unk_23B50ED60);
  OUTLINED_FUNCTION_8_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133958, &unk_23B519510);
  OUTLINED_FUNCTION_8_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_5:
    v9 = a1 + v12;
    goto LABEL_6;
  }

  if (a2 != 2147483646)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
    OUTLINED_FUNCTION_8_0();
    if (*(v17 + 84) == a2)
    {
      v8 = v16;
      v12 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C88, &unk_23B50ED50);
      OUTLINED_FUNCTION_8_0();
      if (*(v19 + 84) == a2)
      {
        v8 = v18;
        v12 = a3[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338A8, &qword_23B519358);
        OUTLINED_FUNCTION_8_0();
        if (*(v21 + 84) == a2)
        {
          v8 = v20;
          v12 = a3[9];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C80, &qword_23B50ED48);
          OUTLINED_FUNCTION_8_0();
          if (*(v23 + 84) == a2)
          {
            v8 = v22;
            v12 = a3[10];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
            OUTLINED_FUNCTION_8_0();
            if (*(v25 + 84) == a2)
            {
              v8 = v24;
              v12 = a3[11];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
              OUTLINED_FUNCTION_8_0();
              if (*(v27 + 84) == a2)
              {
                v8 = v26;
                v12 = a3[12];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131ED0, &qword_23B50F200);
                OUTLINED_FUNCTION_8_0();
                if (*(v29 + 84) == a2)
                {
                  v8 = v28;
                  v12 = a3[18];
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EE0, &qword_23B50F210);
                  OUTLINED_FUNCTION_8_0();
                  if (*(v31 + 84) == a2)
                  {
                    v8 = v30;
                    v12 = a3[20];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E88, &unk_23B519360);
                    OUTLINED_FUNCTION_8_0();
                    if (*(v33 + 84) == a2)
                    {
                      v8 = v32;
                      v12 = a3[21];
                    }

                    else
                    {
                      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA0, &qword_23B50F1B0);
                      v12 = a3[23];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_5;
  }

  v14 = *(a1 + a3[6]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

void sub_23B3D66F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C98, &unk_23B50ED60);
  OUTLINED_FUNCTION_8_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133958, &unk_23B519510);
    OUTLINED_FUNCTION_8_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[6]) = a2;
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
      OUTLINED_FUNCTION_8_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C88, &unk_23B50ED50);
        OUTLINED_FUNCTION_8_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[8];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338A8, &qword_23B519358);
          OUTLINED_FUNCTION_8_0();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[9];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C80, &qword_23B50ED48);
            OUTLINED_FUNCTION_8_0();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[10];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
              OUTLINED_FUNCTION_8_0();
              if (*(v24 + 84) == a3)
              {
                v10 = v23;
                v14 = a4[11];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
                OUTLINED_FUNCTION_8_0();
                if (*(v26 + 84) == a3)
                {
                  v10 = v25;
                  v14 = a4[12];
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131ED0, &qword_23B50F200);
                  OUTLINED_FUNCTION_8_0();
                  if (*(v28 + 84) == a3)
                  {
                    v10 = v27;
                    v14 = a4[18];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EE0, &qword_23B50F210);
                    OUTLINED_FUNCTION_8_0();
                    if (*(v30 + 84) == a3)
                    {
                      v10 = v29;
                      v14 = a4[20];
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E88, &unk_23B519360);
                      OUTLINED_FUNCTION_8_0();
                      if (*(v32 + 84) == a3)
                      {
                        v10 = v31;
                        v14 = a4[21];
                      }

                      else
                      {
                        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA0, &qword_23B50F1B0);
                        v14 = a4[23];
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

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_23B3D6B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_38();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23B3D6B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_38();
  swift_getWitnessTable();

  return sub_23B50D374();
}

uint64_t sub_23B3D6BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_38();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23B3D6C54(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23B50AD24();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = type metadata accessor for WeatherMetadata(0);
      v10 = *(a3 + 56);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_23B3D6D20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_23B50AD24();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 52);
    }

    else
    {
      v9 = type metadata accessor for WeatherMetadata(0);
      v10 = *(a4 + 56);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_23B3D6E34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_34_0();
  type metadata accessor for CurrentWeather(v6);
  OUTLINED_FUNCTION_8_0();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_8_0();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v13 = a3[5];
LABEL_9:
    v10 = v3 + v13;
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  OUTLINED_FUNCTION_8_0();
  if (*(v15 + 84) == a2)
  {
    v9 = v14;
    v13 = a3[6];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  OUTLINED_FUNCTION_8_0();
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 != 2147483646)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
    OUTLINED_FUNCTION_8_0();
    if (*(v22 + 84) == a2)
    {
      v9 = v21;
      v13 = a3[10];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
      v13 = a3[11];
    }

    goto LABEL_9;
  }

  v19 = *(v3 + a3[8]);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  v20 = v19 - 1;
  if (v20 < 0)
  {
    v20 = -1;
  }

  return (v20 + 1);
}

void sub_23B3D7044(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_34_0();
  type metadata accessor for CurrentWeather(v8);
  OUTLINED_FUNCTION_8_0();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
    OUTLINED_FUNCTION_8_0();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
      OUTLINED_FUNCTION_8_0();
      if (*(v17 + 84) == a3)
      {
        v11 = v16;
        v15 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
        OUTLINED_FUNCTION_8_0();
        if (*(v19 + 84) == a3)
        {
          v11 = v18;
          v15 = a4[7];
        }

        else
        {
          if (a3 == 2147483646)
          {
            *(v4 + a4[8]) = a2;
            return;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
          OUTLINED_FUNCTION_8_0();
          if (*(v21 + 84) == a3)
          {
            v11 = v20;
            v15 = a4[10];
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
            v15 = a4[11];
          }
        }
      }
    }

    v12 = v4 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_23B3D726C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_39();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23B3D72E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();

  return sub_23B50D374();
}

uint64_t sub_23B3D7354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_39();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23B3D73B8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23B50AD24();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = type metadata accessor for WeatherMetadata(0);
      v10 = *(a3 + 56);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_23B3D7484(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_23B50AD24();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 52);
    }

    else
    {
      v9 = type metadata accessor for WeatherMetadata(0);
      v10 = *(a4 + 56);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_23B3D7574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23B50A9E4();

  return __swift_getEnumTagSinglePayload(a1, a2, v5);
}

uint64_t sub_23B3D75C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23B50A9E4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
}

uint64_t sub_23B3D7660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23B3D7714(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23B3D7808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v7 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

uint64_t sub_23B3D786C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v8 = a1 + *(a4 + 24);

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_23B3D791C()
{
  v1 = sub_23B50B7B4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_23B3D79D4()
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_23B3D7A94()
{

  return swift_deallocObject();
}

uint64_t sub_23B3D7AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_40();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}