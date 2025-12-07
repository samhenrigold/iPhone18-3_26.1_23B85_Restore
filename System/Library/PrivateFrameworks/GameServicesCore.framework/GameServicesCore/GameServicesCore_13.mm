uint64_t sub_227C5C4B0()
{
  OUTLINED_FUNCTION_0_44();
  sub_227C608D8(v0, v1);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);
  OUTLINED_FUNCTION_61_7();
  v6 = OUTLINED_FUNCTION_71_5();
  v7(v6);

  OUTLINED_FUNCTION_18();

  return v8();
}

void sub_227C5C5F0()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v29 = v2;
  v28 = sub_227D49CB8();
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = sub_227D49678();
  OUTLINED_FUNCTION_6_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = type metadata accessor for AnySortableKey(0);
  v15 = OUTLINED_FUNCTION_5(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = *(v1 + 3);
  v20 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(v1, v19);
  sub_227D49688();
  (*(v20 + 88))(v13, v19, v20);
  (*(v9 + 8))(v13, v7);
  __swift_project_boxed_opaque_existential_1(v1, *(v1 + 3));
  v21 = OUTLINED_FUNCTION_278();
  v22(v21);
  __swift_project_boxed_opaque_existential_1(v1, *(v1 + 3));
  v23 = OUTLINED_FUNCTION_278();
  v24(v23);
  OUTLINED_FUNCTION_27_9();
  v26 = sub_227C634DC(v25, v1, MEMORY[0x277D0CE20]);
  v27 = OUTLINED_FUNCTION_30_10(&qword_27D7E98A8);
  sub_227C7280C(v18, v6, v28, v26, v27, v29);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C5C824(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    result = sub_227C63198(0, result, v4);
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = result;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = a3(0);

      return v7;
    }
  }

  __break(1u);
  return result;
}

char *sub_227C5C8C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_227C5F5E4(*(a1 + 16), 0, &qword_27D7E98F0, &qword_227D5EDB0, MEMORY[0x277D0CDA0]);
  v4 = *(sub_227D49BA8() - 8);
  v5 = sub_227C631E4(&v7, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1);
  sub_227B223D4(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t GameLibraryAggregateService.listGames(by:sortBy:upTo:after:belongingTo:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_55_6(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v8);
  v0[9] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9840, &qword_227D5EB60);
  OUTLINED_FUNCTION_5(v9);
  v0[10] = OUTLINED_FUNCTION_30();
  v10 = sub_227D49698();
  v0[11] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v0[12] = v11;
  v0[13] = OUTLINED_FUNCTION_121();
  v0[14] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9848, &unk_227D5EB68);
  OUTLINED_FUNCTION_5(v12);
  v0[15] = OUTLINED_FUNCTION_30();
  v13 = sub_227D49C48();
  v0[16] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v0[17] = v14;
  v0[18] = OUTLINED_FUNCTION_121();
  v0[19] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[20] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[21] = v16;
  v0[22] = OUTLINED_FUNCTION_30();
  v17 = sub_227D4A1F8();
  v0[23] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v0[24] = v18;
  v0[25] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227C5CBDC()
{
  OUTLINED_FUNCTION_51_0();
  v4 = OUTLINED_FUNCTION_37_3();
  v5(v4);
  sub_227D4A1C8();
  sub_227C60738(v3, v2, &qword_27D7E9848, &unk_227D5EB68);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    sub_227B1DE58(v1[15], &qword_27D7E9848, &unk_227D5EB68);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_12_11();
    v7(v6);
    v8 = OUTLINED_FUNCTION_6_14();
    v9(v8);
    sub_227D4A1E8();
    v10 = OUTLINED_FUNCTION_33_7();
    v11(v10);
  }

  v12 = v1[10];
  v13 = v1[11];
  sub_227C60738(v1[4], v12, &qword_27D7E9840, &qword_227D5EB60);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_227B1DE58(v1[10], &qword_27D7E9840, &qword_227D5EB60);
  }

  else
  {
    v12 = v1[14];
    v14 = OUTLINED_FUNCTION_12_11();
    v15(v14);
    v16 = OUTLINED_FUNCTION_6_14();
    v17(v16);
    sub_227D4A178();
    v18 = OUTLINED_FUNCTION_33_7();
    v19(v18);
  }

  v20 = OUTLINED_FUNCTION_62_6();
  sub_227C60738(v20, v12, &qword_27D7E6908, &unk_227D4E690);
  sub_227D4A1A8();
  sub_227D4A198();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v1[26] = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_58_7(v21);
  OUTLINED_FUNCTION_164();

  return GameLibraryAggregateService.listGames(with:)();
}

uint64_t sub_227C5CDEC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t GameLibraryAggregateService.listGames(with:)()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v4);
  v1[6] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E98B0, &qword_227D5EBD8);
  v1[7] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E98B8, &qword_227D5EBE0);
  v1[13] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_30();
  v11 = type metadata accessor for GameListMetadataRequest(0);
  OUTLINED_FUNCTION_5(v11);
  v1[16] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[17] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[18] = v13;
  v1[19] = OUTLINED_FUNCTION_121();
  v1[20] = swift_task_alloc();
  v14 = sub_227D49678();
  OUTLINED_FUNCTION_5(v14);
  v1[21] = OUTLINED_FUNCTION_30();
  v15 = sub_227D49698();
  v1[22] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[23] = v16;
  v1[24] = OUTLINED_FUNCTION_30();
  v17 = sub_227D49C48();
  v1[25] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[26] = v18;
  v1[27] = OUTLINED_FUNCTION_121();
  v1[28] = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227C5D1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_109_1();
  sub_227D4A1D8();
  sub_227D4A168();
  v27 = OUTLINED_FUNCTION_65_4();
  v28(v27);
  LOBYTE(a14) = 1;
  sub_227D49688();
  sub_227C730A8();
  v29 = v26[19];
  v30 = v26[5];
  v50 = a12;
  sub_227D4A1B8();
  sub_227D4A158();
  v31 = OUTLINED_FUNCTION_52_6();
  v32(v31);
  LOBYTE(a12) = 1;
  sub_227D49BC8();
  OUTLINED_FUNCTION_34_6();
  GameListMetadataRequest.init(player:ttlOption:installedOnly:fetchingRequirements:localDataOnly:)(v29, v33, v34, v35, v36, v37);
  v38 = *(v30 + 72);
  OUTLINED_FUNCTION_85_5((v30 + 40));
  OUTLINED_FUNCTION_36_0();
  v51 = v39 + *v39;
  v40 = swift_task_alloc();
  v26[29] = v40;
  *v40 = v26;
  v40[1] = sub_227C5D45C;
  OUTLINED_FUNCTION_18_11(v26[16]);
  OUTLINED_FUNCTION_90();

  return v44(v41, v42, v43, v44, v45, v46, v47, v48, a9, v38 + 8, v51, a12, v50, a14, a15, a16, a17, a18);
}

uint64_t sub_227C5D45C()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v5 + 240) = v0;

  if (!v0)
  {
    *(v5 + 248) = v3;
  }

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C5D564()
{
  v1 = v0;
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[24];
  v5 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  v54 = v1[14];
  v51 = v1[15];
  v52 = v1[13];
  v9 = swift_task_alloc();
  *(v9 + 16) = v3;
  v10 = sub_227C5DEDC(sub_227C63574, v9, v2);

  OUTLINED_FUNCTION_0_44();
  sub_227C608D8(v8, v11);
  (*(v6 + 8))(v5, v7);
  v12 = swift_task_alloc();
  *(v12 + 16) = v4;
  v13 = sub_227C5A914(sub_227C6070C, v12, v10, &qword_27D7E98B0, &qword_227D5EBD8, sub_227C5FF6C);

  v1[2] = v13;
  v14 = (v1 + 2);
  swift_getKeyPath();
  sub_227D49668();
  OUTLINED_FUNCTION_26_7();
  sub_227C634DC(v15, v16, &protocol conformance descriptor for AnySortableKey);
  sub_227D48ED8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E98C0, &qword_227D5EC08);
  OUTLINED_FUNCTION_4_22();
  sub_227B15A74(v17, v18, &qword_227D5EC08, v19);
  OUTLINED_FUNCTION_32_6(&qword_27D7E98D0, &qword_27D7E98B8, &qword_227D5EBE0);
  OUTLINED_FUNCTION_278();
  v20 = sub_227D4D108();
  (*(v54 + 8))(v51, v52);

  v21 = *(v20 + 16);
  if (v21)
  {
    v14 = v1[11];
    v22 = v1[8];
    v55 = MEMORY[0x277D84F90];
    sub_227C11484(0, v21, 0);
    v23 = v55;
    OUTLINED_FUNCTION_19();
    v25 = v20 + v24;
    v53 = *(v22 + 72);
    v26 = v1;
    do
    {
      v27 = v1[9];
      sub_227C60738(v25, v27, &qword_27D7E98B0, &qword_227D5EBD8);
      v28 = OUTLINED_FUNCTION_74_6();
      v29(v28);
      sub_227B1DE58(v27, &qword_27D7E98B0, &qword_227D5EBD8);
      v31 = *(v55 + 16);
      v30 = *(v55 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_227C11484(v30 > 1, v31 + 1, 1);
      }

      *(v55 + 16) = v31 + 1;
      OUTLINED_FUNCTION_17_13();
      (*(v14 + 32))(v32 + v33 * v31);
      v25 += v53;
      --v21;
    }

    while (v21);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
    v26 = v1;
  }

  v34 = sub_227D4A188();
  if ((v35 & 1) == 0)
  {
    if (v34 < 0)
    {
      __break(1u);
      __break(1u);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_227C5C824(v34, v23, sub_227C630E4);
      OUTLINED_FUNCTION_72_4();
    }

    v36 = OUTLINED_FUNCTION_57_0();
    sub_227C60788(v36, v37, v14, 0);
    swift_unknownObjectRelease();
  }

  v38 = v26[28];
  v39 = v26[26];
  v40 = v26[23];
  v50 = v26[24];
  v48 = v26[25];
  v49 = v26[22];
  v41 = sub_227D4A958();
  OUTLINED_FUNCTION_81_5(v41);
  OUTLINED_FUNCTION_14_4();
  sub_227B15A74(v42, &qword_27D7E6888, &unk_227D4E630, v43);
  OUTLINED_FUNCTION_13_4();
  sub_227B15A74(v44, &qword_27D7E6888, &unk_227D4E630, v45);
  OUTLINED_FUNCTION_64_3();
  sub_227D4A948();
  (*(v39 + 8))(v38, v48);
  (*(v40 + 8))(v50, v49);

  OUTLINED_FUNCTION_18();

  return v46();
}

uint64_t sub_227C5DB14()
{
  OUTLINED_FUNCTION_0_44();
  sub_227C608D8(v0, v1);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);
  OUTLINED_FUNCTION_68_6();
  v6 = OUTLINED_FUNCTION_71_5();
  v7(v6);

  OUTLINED_FUNCTION_18();

  return v8();
}

void sub_227C5DC54()
{
  OUTLINED_FUNCTION_11();
  v25 = v2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = sub_227D49678();
  OUTLINED_FUNCTION_6_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = type metadata accessor for AnySortableKey(0);
  v14 = OUTLINED_FUNCTION_5(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_60_6();
  sub_227D49688();
  (*(v1 + 88))(v12, v0, v1);
  (*(v8 + 8))(v12, v6);
  OUTLINED_FUNCTION_60_6();
  (*(v1 + 8))(v0, v1);
  OUTLINED_FUNCTION_60_6();
  (*(v1 + 16))(v0, v1);
  OUTLINED_FUNCTION_14_4();
  v20 = sub_227B15A74(v18, &qword_27D7E6888, &unk_227D4E630, v19);
  OUTLINED_FUNCTION_13_4();
  v23 = sub_227B15A74(v21, &qword_27D7E6888, &unk_227D4E630, v22);
  sub_227C7280C(v17, v5, v24, v20, v23, v25);
  OUTLINED_FUNCTION_8_1();
}

double sub_227C5DE88@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_227C56ECC(a1))
  {
    sub_227B11EE8(a1, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void *sub_227C5DEDC(void (*a1)(void *__return_ptr, void), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  result = sub_227D4CE58();
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v22 = v4;
  v17 = a1;
  if (v9)
  {
LABEL_8:
    while (1)
    {
      sub_227B11EE8(*(v4 + 56) + 40 * (__clz(__rbit64(v9)) | (v12 << 6)), v21);
      a1(&v18, v21);
      if (v3)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(v21);
      if (v19)
      {
        sub_227B132F0(&v18, v20);
        sub_227B132F0(v20, &v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_227C5F3B0(0, v13[2] + 1, 1, v13);
        }

        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          v13 = sub_227C5F3B0((v15 > 1), v16 + 1, 1, v13);
        }

        v13[2] = v16 + 1;
        result = sub_227B132F0(&v18, &v13[5 * v16 + 4]);
        v4 = v22;
        a1 = v17;
      }

      else
      {
        result = sub_227B1DE58(&v18, &qword_27D7E9928, &qword_227D5EDE0);
      }

      v9 &= v9 - 1;
      if (!v9)
      {
        goto LABEL_4;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v21);

LABEL_19:

    return v13;
  }

  else
  {
LABEL_4:
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v10)
      {
        goto LABEL_19;
      }

      v9 = *(v6 + 8 * v14);
      ++v12;
      if (v9)
      {
        v12 = v14;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t GameLibraryAggregateService.getAvailableGameGenres(with:)()
{
  OUTLINED_FUNCTION_6();
  v1[12] = v2;
  v1[13] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E98D8, &qword_227D5EC18);
  OUTLINED_FUNCTION_5(v3);
  v1[14] = OUTLINED_FUNCTION_30();
  v4 = type metadata accessor for GameLibraryMetadata(0);
  v1[15] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[16] = v5;
  v1[17] = OUTLINED_FUNCTION_121();
  v1[18] = swift_task_alloc();
  v6 = type metadata accessor for GameListMetadataRequest(0);
  OUTLINED_FUNCTION_5(v6);
  v1[19] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[20] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[21] = v8;
  v1[22] = OUTLINED_FUNCTION_121();
  v1[23] = swift_task_alloc();
  v9 = sub_227D49678();
  v1[24] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[25] = v10;
  v1[26] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49C48();
  v1[27] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[28] = v12;
  v1[29] = OUTLINED_FUNCTION_121();
  v1[30] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227C5E2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_109_1();
  v28 = v26[25];
  v27 = v26[26];
  v29 = v26[24];
  sub_227D494F8();
  v30 = OUTLINED_FUNCTION_65_4();
  v31(v30);
  LOBYTE(a14) = 1;
  (*(v28 + 104))(v27, *MEMORY[0x277D0CAD0], v29);
  sub_227C730A8();
  v32 = v26[22];
  v53 = v26[19];
  v33 = v26[13];
  v34 = a12;
  sub_227D494E8();
  sub_227D494D8();
  v35 = OUTLINED_FUNCTION_52_6();
  v36(v35);
  LOBYTE(a12) = 0;
  sub_227D49BC8();
  OUTLINED_FUNCTION_34_6();
  GameListMetadataRequest.init(player:ttlOption:installedOnly:fetchingRequirements:localDataOnly:)(v32, v37, v38, v39, v40, v53);
  v41 = *(v33 + 72);
  OUTLINED_FUNCTION_85_5((v33 + 40));
  OUTLINED_FUNCTION_36_0();
  v54 = v42 + *v42;
  v43 = swift_task_alloc();
  v26[31] = v43;
  *v43 = v26;
  v43[1] = sub_227C5E548;
  OUTLINED_FUNCTION_18_11(v26[19]);
  OUTLINED_FUNCTION_90();

  return v47(v44, v45, v46, v47, v48, v49, v50, v51, a9, v41 + 8, v54, a12, v34, a14, a15, a16, a17, a18);
}

uint64_t sub_227C5E548()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v5 + 256) = v0;

  if (!v0)
  {
    *(v5 + 264) = v3;
  }

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C5E650()
{
  v52 = v0;
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  v8 = swift_task_alloc();
  *(v8 + 16) = v3;
  v9 = sub_227C5DEDC(sub_227C63574, v8, v1);
  v50 = v2;

  OUTLINED_FUNCTION_0_44();
  sub_227C608D8(v7, v10);
  (*(v6 + 8))(v4, v5);
  v11 = v9[2];
  if (v11)
  {
    v12 = MEMORY[0x277D84F90];
    v13 = (v9 + 4);
    do
    {
      v14 = *(v0 + 112);
      v15 = *(v0 + 120);
      sub_227B11EE8(v13, v0 + 16);
      sub_227B132F0((v0 + 16), v0 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E98E0, &qword_227D5EC20);
      v16 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v14, v16 ^ 1u, 1, v15);
      if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
      {
        sub_227B1DE58(*(v0 + 112), &qword_27D7E98D8, &qword_227D5EC18);
      }

      else
      {
        sub_227C60930(*(v0 + 112), *(v0 + 136));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_227C5F4E8(0, *(v12 + 16) + 1, 1, v12, &qword_27D7E98E8, &unk_227D5EDA0, type metadata accessor for GameLibraryMetadata, type metadata accessor for GameLibraryMetadata);
          v12 = v22;
        }

        v18 = *(v12 + 16);
        v17 = *(v12 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_227C5F4E8(v17 > 1, v18 + 1, 1, v12, &qword_27D7E98E8, &unk_227D5EDA0, type metadata accessor for GameLibraryMetadata, type metadata accessor for GameLibraryMetadata);
          v12 = v23;
        }

        *(v12 + 16) = v18 + 1;
        OUTLINED_FUNCTION_17_13();
        sub_227C60930(v21, v19 + v20 * v18);
      }

      v13 += 40;
      --v11;
    }

    while (v11);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v24 = *(v12 + 16);
  if (v24)
  {
    v25 = *(v0 + 128);
    v26 = v12 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v27 = *(v25 + 72);
    v28 = MEMORY[0x277D84F90];
    while (1)
    {
      v29 = *(v0 + 144);
      v30 = sub_227C60874(v26, v29);
      v32 = sub_227C6CEA0(v30, v31);
      result = sub_227C608D8(v29, type metadata accessor for GameLibraryMetadata);
      v34 = *(v32 + 16);
      v35 = *(v28 + 16);
      v36 = v35 + v34;
      if (__OFADD__(v35, v34))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v36 > *(v28 + 24) >> 1)
      {
        if (v35 <= v36)
        {
          v38 = v35 + v34;
        }

        else
        {
          v38 = v35;
        }

        sub_227C5F4E8(isUniquelyReferenced_nonNull_native, v38, 1, v28, &qword_27D7E98F0, &qword_227D5EDB0, MEMORY[0x277D0CDA0], MEMORY[0x277D0CDA0]);
        v28 = v39;
      }

      if (*(v32 + 16))
      {
        v40 = (*(v28 + 24) >> 1) - *(v28 + 16);
        result = sub_227D49BA8();
        if (v40 < v34)
        {
          goto LABEL_40;
        }

        swift_arrayInitWithCopy();

        if (v34)
        {
          v41 = *(v28 + 16);
          v42 = __OFADD__(v41, v34);
          v43 = v41 + v34;
          if (v42)
          {
            goto LABEL_41;
          }

          *(v28 + 16) = v43;
        }
      }

      else
      {

        if (v34)
        {
          goto LABEL_39;
        }
      }

      v26 += v27;
      if (!--v24)
      {

        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
LABEL_31:
    v44 = sub_227C5ECA4(v28);
    v51 = sub_227C5C8C0(v44);
    sub_227D4CE58();
    sub_227C60560(&v51);
    if (v50)
    {
    }

    else
    {
      v45 = *(v0 + 240);
      v46 = *(v0 + 216);
      v47 = *(v0 + 224);

      v48 = v51;
      (*(v47 + 8))(v45, v46);

      OUTLINED_FUNCTION_115();

      return v49(v48);
    }
  }

  return result;
}

uint64_t sub_227C5EBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_0_44();
  sub_227C608D8(v13, v14);
  v15 = OUTLINED_FUNCTION_42();
  v16(v15);
  v17 = OUTLINED_FUNCTION_57_0();
  v18(v17);
  OUTLINED_FUNCTION_83_4(*(v12 + 240));

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_227C5ECA4(uint64_t a1)
{
  v2 = sub_227D49BA8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = *(a1 + 16);
  v10 = sub_227C634DC(&qword_27D7E98F8, MEMORY[0x277D0CDA0], MEMORY[0x277D0CDB0]);
  v11 = MEMORY[0x22AAA60B0](v9, v2, v10);
  v22 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v21 = a1;
    v17 = a1 + v16;
    v18 = *(v13 + 56);
    do
    {
      v14(v6, v17, v2);
      sub_227C60298(v8, v6);
      (*(v13 - 8))(v8, v2);
      v17 += v18;
      --v12;
    }

    while (v12);

    return v22;
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

uint64_t sub_227C5EE64()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameLibraryAggregateService.describe(games:)();
}

uint64_t sub_227C5EEE8()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameLibraryAggregateService.describe2(games:)();
}

uint64_t sub_227C5EF6C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameLibraryAggregateService.describe(with:)();
}

uint64_t sub_227C5EFF0()
{
  OUTLINED_FUNCTION_150_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_36_1(v1);

  return GameLibraryAggregateService.listGameHistories(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_227C5F094()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_0(v1);

  return GameLibraryAggregateService.listGameHistories(with:)();
}

uint64_t sub_227C5F124()
{
  OUTLINED_FUNCTION_150_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_36_1(v1);

  return GameLibraryAggregateService.listGames(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_227C5F1C8()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_0(v1);

  return GameLibraryAggregateService.listGames(with:)();
}

uint64_t sub_227C5F258()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameLibraryAggregateService.getAvailableGameGenres(with:)();
}

uint64_t GameLibraryAggregateService.purchaseHistory()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_22(sub_227C5F2F4);
}

uint64_t sub_227C5F2F4()
{
  OUTLINED_FUNCTION_20();
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 80), *(*(v0 + 24) + 104));
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_227B2F79C;

  return PurchaseHistoryProviderProtocol.purchaseHistory()();
}

void *sub_227C5F3B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9930, &qword_227D5EDE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E98E0, &qword_227D5EC20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_227C5F4E8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_154();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_227C5F5E4(v15, v12, a5, a6, a7);
  a8(0);
  OUTLINED_FUNCTION_19();
  if (a1)
  {
    sub_227C5F6D8(a4 + v17, v15, v16 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_227C5F5E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_10_0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_227C5F6D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_186_1();
  if (v8 && (a4(0), OUTLINED_FUNCTION_62_0(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_49();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_49();

    swift_arrayInitWithTakeFrontToBack();
  }
}

unint64_t *sub_227C5F78C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void *), unint64_t *a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_227C5FA8C(v12, v8, v6, a2);
      MEMORY[0x22AAA7130](v12, -1, -1);
      return a3;
    }
  }

  MEMORY[0x28223BE20](a1);
  v9 = (v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_227B26E40(0, v8, v9);
  v10 = sub_227C5F910(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

unint64_t *sub_227C5F910(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *))
{
  v23 = a4;
  v20 = result;
  v21 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_227B11EE8(*(a3 + 56) + 40 * v14, v22);
    sub_227D4CE58();
    LOBYTE(v16) = v23(v16, v17, v22);
    __swift_destroy_boxed_opaque_existential_0(v22);

    if (v16)
    {
      *(v20 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_227C58064(v20, a2, v21, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_227C58064(v20, a2, v21, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_227C5FA8C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_227C5F910(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_227C5FB94()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_57_7(v1);

  return sub_227C5AAB0(v3, v4, v5);
}

uint64_t sub_227C5FC18()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_31(v1);

  return v4(v3);
}

uint64_t objectdestroy_5Tm()
{
  OUTLINED_FUNCTION_66_6();

  return MEMORY[0x2821FE8E8](v0, 217, 7);
}

uint64_t sub_227C5FD08()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_57_7(v1);

  return sub_227C5ACE0(v3, v4, v5);
}

uint64_t sub_227C5FD8C()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_31(v1);

  return v4(v3);
}

unint64_t sub_227C5FE28()
{
  result = qword_27D7E9868;
  if (!qword_27D7E9868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9868);
  }

  return result;
}

void sub_227C5FFAC()
{
  OUTLINED_FUNCTION_11();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    OUTLINED_FUNCTION_154();
    if (v14 != v15)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v13 = v1;
  }

  v16 = *(v9 + 16);
  if (v13 <= v16)
  {
    v17 = *(v9 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v5);
  OUTLINED_FUNCTION_10_0(v18);
  v20 = *(v19 + 72);
  v21 = OUTLINED_FUNCTION_158();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22 - v0 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_23;
  }

  v21[2] = v16;
  v21[3] = 2 * ((v22 - v0) / v20);
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v5);
  OUTLINED_FUNCTION_19();
  if (v11)
  {
    sub_227B638F8(v9 + v24, v16, v21 + v24, v7, v5);
    *(v9 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_211();
  }

  OUTLINED_FUNCTION_8_1();
}

void sub_227C60124()
{
  OUTLINED_FUNCTION_11();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    OUTLINED_FUNCTION_154();
    if (v14 != v15)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v13 = v1;
  }

  v16 = *(v9 + 16);
  if (v13 <= v16)
  {
    v17 = *(v9 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v18 = v7(0);
  OUTLINED_FUNCTION_10_0(v18);
  v20 = *(v19 + 72);
  v21 = OUTLINED_FUNCTION_158();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22 - v0 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_23;
  }

  v21[2] = v16;
  v21[3] = 2 * ((v22 - v0) / v20);
LABEL_18:
  v7(0);
  OUTLINED_FUNCTION_19();
  if (v11)
  {
    sub_227C5F6D8(v9 + v24, v16, v21 + v24, v5);
    *(v9 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_211();
  }

  OUTLINED_FUNCTION_8_1();
}

BOOL sub_227C60298(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_227D49BA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_227C634DC(&qword_27D7E98F8, MEMORY[0x277D0CDA0], MEMORY[0x277D0CDB0]);
  v27 = a2;
  v9 = sub_227D4CE98();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_227C62864(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_227C634DC(&qword_27D7E9900, MEMORY[0x277D0CDA0], MEMORY[0x277D0CDB8]);
    v15 = sub_227D4CF38();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

uint64_t sub_227C60560(uint64_t *a1)
{
  v2 = *(sub_227D49BA8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_227C6347C();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_227C60D74(v7);
  *a1 = v3;
  return result;
}

void sub_227C60608(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (v5)
  {
    sub_227C5F5E4(v5, 0, &qword_27D7E9918, &qword_227D5EDD0, MEMORY[0x277D0CE08]);
    if (v4 != a3)
    {
      sub_227D49CB8();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_227C60738(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_186_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_62_0();
  (*(v6 + 16))(v4, v5);
  return v4;
}

void sub_227C60788(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_227C577E4((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_227C60874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameLibraryMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C608D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_62_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_227C60930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameLibraryMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of GameRestrictionsProviderProtocol.restrictedAppsIDs(from:)()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_36_0();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_50(v7);
  *v8 = v9;
  v8[1] = sub_227C60AB0;

  return v11(v5, v3, v1);
}

uint64_t sub_227C60AB0()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_115();

  return v5(v2);
}

uint64_t dispatch thunk of PurchaseHistoryProviderProtocol.fetch()()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_36_0();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20_0(v7);
  *v8 = v9;
  v8[1] = sub_227B355D0;

  return v11(v5, v3, v1);
}

uint64_t sub_227C60CBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_227C60CFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_227C60D74(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_227D4DA28();
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
        sub_227D49BA8();
        v6 = sub_227D4D218();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227D49BA8() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_227C611C4(v8, v9, a1, v4);
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
    return sub_227C60EA4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_227C60EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_227D49BA8();
  v9 = MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v40 - v15;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = v14;
    v18 = *a4;
    v20 = *(v13 + 16);
    v19 = v13 + 16;
    v21 = *(v19 + 56);
    v51 = (v19 - 8);
    v52 = v20;
    v53 = v19;
    v48 = (v19 + 16);
    v49 = v18;
    v22 = v18 + v21 * (a3 - 1);
    v47 = -v21;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v45 = v22;
      v46 = a3;
      v43 = v24;
      v44 = v23;
      v25 = v22;
      while (1)
      {
        v26 = v52;
        v52(v16, v24, v8);
        v26(v17, v25, v8);
        v27 = sub_227D49B98();
        v28 = v16;
        v29 = v17;
        v31 = v30;
        if (v27 == sub_227D49B98() && v31 == v32)
        {
          break;
        }

        v34 = sub_227D4DA78();

        v35 = *v51;
        (*v51)(v29, v8);
        result = (v35)(v28, v8);
        v17 = v29;
        v16 = v28;
        if (v34)
        {
          if (!v49)
          {
            __break(1u);
            return result;
          }

          v36 = *v48;
          v37 = v50;
          (*v48)(v50, v24, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v36)(v25, v37, v8);
          v25 += v47;
          v24 += v47;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v39 = *v51;
      (*v51)(v29, v8);
      result = (v39)(v28, v8);
      v17 = v29;
      v16 = v28;
LABEL_14:
      a3 = v46 + 1;
      v22 = v45 + v41;
      v23 = v44 - 1;
      v24 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_227C611C4(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v152 = a1;
  v8 = sub_227D49BA8();
  v9 = MEMORY[0x28223BE20](v8);
  v156 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v170 = &v148 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v148 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v148 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v166 = &v148 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v149 = &v148 - v23;
  result = MEMORY[0x28223BE20](v22);
  v154 = &v148 - v27;
  v164 = a3;
  v28 = a3[1];
  v162 = v25;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_116:
    v175 = *v152;
    if (!v175)
    {
      goto LABEL_159;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_118;
    }

    goto LABEL_153;
  }

  v167 = result;
  v171 = v26;
  v148 = a4;
  v29 = 0;
  v175 = v25 + 16;
  v173 = (v25 + 32);
  v174 = (v25 + 8);
  v30 = MEMORY[0x277D84F90];
  v155 = v15;
  v165 = v19;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    if (v29 + 1 < v28)
    {
      v159 = v28;
      v33 = v29;
      v34 = *v164;
      v35 = *(v25 + 72);
      v161 = v29 + 1;
      v36 = &v34[v35 * v32];
      v37 = *(v25 + 16);
      v38 = v167;
      (v37)(v154, v36, v167);
      v153 = v33;
      v163 = v35;
      v172 = v34;
      v39 = &v34[v35 * v33];
      v40 = v149;
      v158 = v37;
      (v37)(v149, v39, v38);
      v41 = sub_227D49B98();
      v43 = v42;
      if (v41 == sub_227D49B98() && v43 == v44)
      {
        LODWORD(v160) = 0;
      }

      else
      {
        LODWORD(v160) = sub_227D4DA78();
      }

      if (v5)
      {
        v146 = *v174;
        v147 = v167;
        (*v174)(v40, v167);
        v146(v154, v147);
      }

      v150 = v30;
      v151 = 0;
      v46 = *v174;
      v47 = v167;
      (*v174)(v40, v167);
      v157 = v46;
      result = (v46)(v154, v47);
      v48 = (v153 + 2);
      v49 = v163 * (v153 + 2);
      v50 = v172 + v49;
      v51 = v163 * v161;
      v52 = v172 + v163 * v161;
      v53 = v161;
      do
      {
        v54 = v48;
        v5 = v53;
        v30 = v51;
        v55 = v49;
        if (v48 >= v159)
        {
          break;
        }

        v169 = v53;
        v172 = v49;
        v56 = v167;
        v57 = v158;
        (v158)(v166, v50, v167);
        (v57)(v165, v52, v56);
        v58 = sub_227D49B98();
        v60 = v59;
        v62 = v58 == sub_227D49B98() && v60 == v61;
        v168 = v30;
        v63 = v62 ? 0 : sub_227D4DA78();
        v55 = v172;
        v5 = v169;

        v64 = v167;
        v65 = v157;
        v157(v165, v167);
        result = v65(v166, v64);
        v48 = v54 + 1;
        v50 = &v163[v50];
        v52 = &v163[v52];
        v53 = v5 + 1;
        v30 = v168;
        v51 = &v163[v168];
        v49 = &v163[v55];
      }

      while (((v160 ^ v63) & 1) == 0);
      if (v160)
      {
        v66 = v153;
        v15 = v155;
        if (v54 < v153)
        {
          goto LABEL_152;
        }

        if (v153 >= v54)
        {
          v32 = v54;
          v5 = v151;
          v30 = v150;
          v31 = v153;
          goto LABEL_40;
        }

        v172 = v54;
        v67 = v153 * v163;
        do
        {
          if (v66 != v5)
          {
            v68 = *v164;
            if (!*v164)
            {
              goto LABEL_157;
            }

            v69 = *v173;
            v70 = v167;
            (*v173)(v156, &v68[v67], v167);
            v71 = v67 < v30 || &v68[v67] >= &v68[v55];
            if (v71)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v67 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v69)(&v68[v30], v156, v70);
            v15 = v155;
          }

          ++v66;
          v30 -= v163;
          v55 -= v163;
          v67 += v163;
          v72 = v66 < v5--;
        }

        while (v72);
        v32 = v172;
        v5 = v151;
        v30 = v150;
      }

      else
      {
        v32 = v54;
        v5 = v151;
        v30 = v150;
        v15 = v155;
      }

      v31 = v153;
    }

LABEL_40:
    v73 = v164[1];
    if (v32 < v73)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_149;
      }

      if (v32 - v31 < v148)
      {
        break;
      }
    }

LABEL_63:
    if (v32 < v31)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v161 = v32;
    if ((result & 1) == 0)
    {
      result = sub_227B63228(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v96 = *(v30 + 16);
    v95 = *(v30 + 24);
    v97 = v96 + 1;
    if (v96 >= v95 >> 1)
    {
      result = sub_227B63228((v95 > 1), v96 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v97;
    v98 = v30 + 32;
    v99 = (v30 + 32 + 16 * v96);
    v100 = v161;
    *v99 = v31;
    v99[1] = v100;
    v172 = *v152;
    if (!v172)
    {
      goto LABEL_158;
    }

    if (v96)
    {
      while (1)
      {
        v101 = v97 - 1;
        v102 = (v98 + 16 * (v97 - 1));
        v103 = (v30 + 16 * v97);
        if (v97 >= 4)
        {
          break;
        }

        if (v97 == 3)
        {
          v104 = *(v30 + 32);
          v105 = *(v30 + 40);
          v114 = __OFSUB__(v105, v104);
          v106 = v105 - v104;
          v107 = v114;
LABEL_83:
          if (v107)
          {
            goto LABEL_135;
          }

          v119 = *v103;
          v118 = v103[1];
          v120 = __OFSUB__(v118, v119);
          v121 = v118 - v119;
          v122 = v120;
          if (v120)
          {
            goto LABEL_138;
          }

          v123 = v102[1];
          v124 = v123 - *v102;
          if (__OFSUB__(v123, *v102))
          {
            goto LABEL_141;
          }

          if (__OFADD__(v121, v124))
          {
            goto LABEL_143;
          }

          if (v121 + v124 >= v106)
          {
            if (v106 < v124)
            {
              v101 = v97 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        if (v97 < 2)
        {
          goto LABEL_137;
        }

        v126 = *v103;
        v125 = v103[1];
        v114 = __OFSUB__(v125, v126);
        v121 = v125 - v126;
        v122 = v114;
LABEL_98:
        if (v122)
        {
          goto LABEL_140;
        }

        v128 = *v102;
        v127 = v102[1];
        v114 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v114)
        {
          goto LABEL_142;
        }

        if (v129 < v121)
        {
          goto LABEL_112;
        }

LABEL_105:
        if (v101 - 1 >= v97)
        {
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
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
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        if (!*v164)
        {
          goto LABEL_155;
        }

        v133 = v30;
        v134 = (v98 + 16 * (v101 - 1));
        v30 = *v134;
        v135 = v98;
        v136 = v101;
        v137 = (v98 + 16 * v101);
        v138 = v137[1];
        sub_227C61E08(&(*v164)[*(v162 + 72) * *v134], &(*v164)[*(v162 + 72) * *v137], &(*v164)[*(v162 + 72) * v138], v172);
        if (v5)
        {
        }

        if (v138 < v30)
        {
          goto LABEL_130;
        }

        v5 = *(v133 + 16);
        if (v136 > v5)
        {
          goto LABEL_131;
        }

        *v134 = v30;
        v134[1] = v138;
        if (v136 >= v5)
        {
          goto LABEL_132;
        }

        v97 = v5 - 1;
        result = memmove(v137, v137 + 2, 16 * (v5 - 1 - v136));
        v30 = v133;
        *(v133 + 16) = v5 - 1;
        v72 = v5 > 2;
        v5 = 0;
        v98 = v135;
        if (!v72)
        {
          goto LABEL_112;
        }
      }

      v108 = v98 + 16 * v97;
      v109 = *(v108 - 64);
      v110 = *(v108 - 56);
      v114 = __OFSUB__(v110, v109);
      v111 = v110 - v109;
      if (v114)
      {
        goto LABEL_133;
      }

      v113 = *(v108 - 48);
      v112 = *(v108 - 40);
      v114 = __OFSUB__(v112, v113);
      v106 = v112 - v113;
      v107 = v114;
      if (v114)
      {
        goto LABEL_134;
      }

      v115 = v103[1];
      v116 = v115 - *v103;
      if (__OFSUB__(v115, *v103))
      {
        goto LABEL_136;
      }

      v114 = __OFADD__(v106, v116);
      v117 = v106 + v116;
      if (v114)
      {
        goto LABEL_139;
      }

      if (v117 >= v111)
      {
        v131 = *v102;
        v130 = v102[1];
        v114 = __OFSUB__(v130, v131);
        v132 = v130 - v131;
        if (v114)
        {
          goto LABEL_147;
        }

        if (v106 < v132)
        {
          v101 = v97 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_83;
    }

LABEL_112:
    v28 = v164[1];
    v29 = v161;
    v25 = v162;
    v15 = v155;
    if (v161 >= v28)
    {
      goto LABEL_116;
    }
  }

  v74 = (v31 + v148);
  if (__OFADD__(v31, v148))
  {
    goto LABEL_150;
  }

  if (v74 >= v73)
  {
    v74 = v164[1];
  }

  if (v74 < v31)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    result = sub_227B65968(v30);
    v30 = result;
LABEL_118:
    v139 = (v30 + 16);
    v140 = *(v30 + 16);
    while (v140 >= 2)
    {
      if (!*v164)
      {
        goto LABEL_156;
      }

      v141 = v30;
      v30 += 16 * v140;
      v142 = *v30;
      v143 = &v139[2 * v140];
      v144 = v143[1];
      sub_227C61E08(&(*v164)[*(v162 + 72) * *v30], &(*v164)[*(v162 + 72) * *v143], &(*v164)[*(v162 + 72) * v144], v175);
      if (v5)
      {
        break;
      }

      if (v144 < v142)
      {
        goto LABEL_144;
      }

      if (v140 - 2 >= *v139)
      {
        goto LABEL_145;
      }

      *v30 = v142;
      *(v30 + 8) = v144;
      v145 = *v139 - v140;
      if (*v139 < v140)
      {
        goto LABEL_146;
      }

      v140 = *v139 - 1;
      result = memmove(v143, v143 + 2, 16 * v145);
      *v139 = v140;
      v30 = v141;
    }
  }

  if (v32 == v74)
  {
    goto LABEL_63;
  }

  v150 = v30;
  v151 = v5;
  v75 = *v164;
  v76 = *(v162 + 72);
  v172 = *(v162 + 16);
  v77 = &v75[v76 * (v32 - 1)];
  v168 = -v76;
  v153 = v31;
  v78 = v31 - v32;
  v169 = v75;
  v157 = v76;
  v158 = v74;
  v79 = &v75[v32 * v76];
  v80 = v171;
  v81 = v167;
LABEL_49:
  v160 = v78;
  v161 = v32;
  v159 = v79;
  v163 = v77;
  while (1)
  {
    v82 = v172;
    v172(v80, v79, v81);
    v82(v15, v77, v81);
    v83 = sub_227D49B98();
    v84 = v80;
    v85 = v15;
    v87 = v86;
    if (v83 == sub_227D49B98() && v87 == v88)
    {

      v94 = *v174;
      (*v174)(v85, v81);
      v94(v80, v81);
      v15 = v85;
      goto LABEL_61;
    }

    v90 = sub_227D4DA78();

    v91 = *v174;
    (*v174)(v85, v81);
    result = (v91)(v84, v81);
    v15 = v85;
    if ((v90 & 1) == 0)
    {
      v80 = v171;
LABEL_61:
      v32 = v161 + 1;
      v77 = v157 + v163;
      v78 = v160 - 1;
      v79 = v157 + v159;
      if ((v161 + 1) == v158)
      {
        v32 = v158;
        v5 = v151;
        v30 = v150;
        v31 = v153;
        goto LABEL_63;
      }

      goto LABEL_49;
    }

    if (!v169)
    {
      break;
    }

    v92 = *v173;
    v93 = v170;
    (*v173)(v170, v79, v81);
    swift_arrayInitWithTakeFrontToBack();
    v92(v77, v93, v81);
    v77 += v168;
    v79 += v168;
    v71 = __CFADD__(v78++, 1);
    v80 = v171;
    if (v71)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
  return result;
}

uint64_t sub_227C61E08(unint64_t a1, char *a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_227D49BA8();
  v9 = MEMORY[0x28223BE20](v8);
  v67 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v66 = &v62 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v69 = &v62 - v14;
  result = MEMORY[0x28223BE20](v13);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v20 = &a2[-a1] == 0x8000000000000000 && v19 == -1;
  if (v20)
  {
    goto LABEL_72;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_73;
  }

  v68 = &v62 - v17;
  v23 = &a2[-a1] / v19;
  v75 = a1;
  v74 = a4;
  v70 = (v16 + 8);
  v71 = (v16 + 16);
  v24 = v21 / v19;
  if (v23 < v21 / v19)
  {
    sub_227C5F6D8(a1, &a2[-a1] / v19, a4, MEMORY[0x277D0CDA0]);
    v67 = (a4 + v23 * v19);
    v73 = v67;
    v65 = a3;
    while (1)
    {
      if (a4 >= v67 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v26 = a1;
      v27 = v19;
      v28 = *v71;
      v29 = v68;
      v30 = a2;
      (*v71)(v68, a2, v8);
      v72 = a4;
      v31 = v69;
      v28();
      v32 = sub_227D49B98();
      v34 = v33;
      if (v32 == sub_227D49B98() && v34 == v35)
      {

        v42 = *v70;
        (*v70)(v31, v8);
        v42(v29, v8);
        v19 = v27;
      }

      else
      {
        v37 = sub_227D4DA78();

        v38 = *v70;
        (*v70)(v31, v8);
        v38(v29, v8);
        v19 = v27;
        if (v37)
        {
          v39 = v30;
          a2 = (v30 + v27);
          v40 = v26;
          if (v26 < v30 || v26 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v65;
          }

          else
          {
            a3 = v65;
            if (v26 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          a4 = v72;
          goto LABEL_40;
        }
      }

      a4 = v72 + v19;
      v40 = v26;
      v43 = v26 < v72 || v26 >= a4;
      a2 = v30;
      if (v43)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v65;
      }

      else
      {
        a3 = v65;
        if (v26 != v72)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v74 = a4;
LABEL_40:
      a1 = v40 + v19;
      v75 = a1;
    }
  }

  sub_227C5F6D8(a2, v21 / v19, a4, MEMORY[0x277D0CDA0]);
  v72 = a4;
  v44 = a4 + v24 * v19;
  v45 = -v19;
  v46 = v44;
  v69 = -v19;
LABEL_42:
  v68 = a2;
  v65 = &a2[v45];
  v47 = a3;
  v63 = v46;
  while (1)
  {
    if (v44 <= v72)
    {
      v75 = v68;
      v73 = v46;
      goto LABEL_70;
    }

    if (v68 <= a1)
    {
      break;
    }

    v64 = v46;
    v48 = v44 + v45;
    v49 = *v71;
    (*v71)(v66, v44 + v45, v8);
    (v49)(v67, v65, v8);
    v50 = sub_227D49B98();
    v52 = v51;
    if (v50 == sub_227D49B98() && v52 == v53)
    {
      v55 = 0;
    }

    else
    {
      v55 = sub_227D4DA78();
    }

    v56 = v47 + v69;
    v57 = *v70;
    (*v70)(v67, v8);
    v57(v66, v8);
    if (v55)
    {
      v59 = v47 < v68 || v56 >= v68;
      a3 = v56;
      if (v59)
      {
        a2 = v65;
        swift_arrayInitWithTakeFrontToBack();
        v46 = v64;
        v45 = v69;
      }

      else
      {
        v61 = v64;
        v60 = v65;
        v46 = v64;
        v20 = v47 == v68;
        a2 = v65;
        v45 = v69;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v60;
          v46 = v61;
        }
      }

      goto LABEL_42;
    }

    if (v47 < v44 || v56 >= v44)
    {
      swift_arrayInitWithTakeFrontToBack();
      v47 = v56;
      v44 = v48;
      v46 = v48;
      v45 = v69;
    }

    else
    {
      v46 = v48;
      v20 = v44 == v47;
      v47 = v56;
      v44 = v48;
      v45 = v69;
      if (!v20)
      {
        swift_arrayInitWithTakeBackToFront();
        v47 = v56;
        v44 = v48;
        v46 = v48;
      }
    }
  }

  v75 = v68;
  v73 = v63;
LABEL_70:
  sub_227C6242C(&v75, &v74, &v73);
  return 1;
}

uint64_t sub_227C6242C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_227D49BA8();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227C6250C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_227D49BA8();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9908, &unk_227D5EDB8);
  result = sub_227D4D638();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_227B26E40(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_227C634DC(&qword_27D7E98F8, MEMORY[0x277D0CDA0], MEMORY[0x277D0CDB0]);
    result = sub_227D4CE98();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_227C62864(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_227D49BA8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_227C6250C(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_227C62D24(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_227C634DC(&qword_27D7E98F8, MEMORY[0x277D0CDA0], MEMORY[0x277D0CDB0]);
      v13 = sub_227D4CE98();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_227C634DC(&qword_27D7E9900, MEMORY[0x277D0CDA0], MEMORY[0x277D0CDB8]);
        v15 = sub_227D4CF38();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_227C62AF0();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_227D4DAD8();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void *sub_227C62AF0()
{
  v1 = v0;
  v2 = sub_227D49BA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9908, &unk_227D5EDB8);
  v6 = *v0;
  v7 = sub_227D4D628();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_227C62D24(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227D49BA8();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9908, &unk_227D5EDB8);
  v7 = sub_227D4D638();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_227C634DC(&qword_27D7E98F8, MEMORY[0x277D0CDA0], MEMORY[0x277D0CDB0]);
        result = sub_227D4CE98();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

unint64_t sub_227C6303C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_227D49CB8();
    return sub_227D4CE58();
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_227C630E4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
    return sub_227D4CE58();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_227C63198(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_227C631E4(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_227D49BA8();
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v32 - v12;
  v14 = a4 + 56;
  v13 = *(a4 + 56);
  v38 = -1 << *(a4 + 32);
  if (-v38 < 64)
  {
    v15 = ~(-1 << -v38);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  if (!a2)
  {
    v19 = 0;
    result = 0;
LABEL_22:
    v31 = ~v38;
    *a1 = a4;
    a1[1] = v14;
    a1[2] = v31;
    a1[3] = v19;
    a1[4] = v16;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v19 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a4 + 56;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v38) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = result;
    while (v18 < result)
    {
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

      if (!v16)
      {
        v14 = v34;
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v20)
          {
            v16 = 0;
            result = v18;
            a1 = v33;
            goto LABEL_22;
          }

          v16 = *(v34 + 8 * v21);
          ++v19;
          if (v16)
          {
            v43 = v18 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v43 = v18 + 1;
      v21 = v19;
LABEL_17:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = a4;
      v24 = *(a4 + 48);
      v26 = v41;
      v25 = v42;
      v27 = *(v42 + 72);
      v28 = v40;
      (*(v42 + 16))(v40, v24 + v27 * (v22 | (v21 << 6)), v41);
      v29 = *(v25 + 32);
      v30 = v39;
      v29(v39, v28, v26);
      v29(a2, v30, v26);
      result = v37;
      v18 = v43;
      if (v43 == v37)
      {
        v19 = v21;
        a1 = v33;
        v14 = v34;
        a4 = v23;
        goto LABEL_22;
      }

      a2 += v27;
      v19 = v21;
      a4 = v23;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227C634DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227C63524(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_186_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_62_0();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_55_6(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a6;
  *(v8 + 224) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = result;
  return result;
}

void *OUTLINED_FUNCTION_60_6()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t OUTLINED_FUNCTION_81_5(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t GameListMetadataRequest.player.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_62_0();
  v0 = OUTLINED_FUNCTION_58();

  return v1(v0);
}

uint64_t GameListMetadataRequest.ttlOption.getter()
{
  v2 = OUTLINED_FUNCTION_40();
  result = type metadata accessor for GameListMetadataRequest(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t GameListMetadataRequest.fetchingRequirements.getter()
{
  v2 = OUTLINED_FUNCTION_40();
  result = type metadata accessor for GameListMetadataRequest(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

int *GameListMetadataRequest.init(player:ttlOption:installedOnly:fetchingRequirements:localDataOnly:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  v11 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_6_15();
  (*(v12 + 32))(a6, a1);
  result = type metadata accessor for GameListMetadataRequest(0);
  *(a6 + result[5]) = v10;
  *(a6 + result[6]) = a3;
  *(a6 + result[7]) = v11;
  *(a6 + result[8]) = a5;
  return result;
}

__n128 GameListMetadataProvider.init(support:restrictionsProvider:purchaseHistoryProvider:policyProvider:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_227B132F0(a1, a5);
  sub_227B132F0(a2, a5 + 40);
  sub_227B132F0(a3, a5 + 80);
  result = *a4;
  v10 = *(a4 + 16);
  *(a5 + 120) = *a4;
  *(a5 + 136) = v10;
  *(a5 + 152) = *(a4 + 32);
  return result;
}

uint64_t GameListMetadataProvider.fetchListData(for:)()
{
  OUTLINED_FUNCTION_6();
  v1[559] = v0;
  v1[553] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[565] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[571] = v4;
  v1[577] = *(v5 + 64);
  v1[583] = swift_task_alloc();
  v1[589] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227C639BC()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[589];
  v2 = v0[571];
  v3 = v0[565];
  v4 = v0[559];
  v5 = v0[553];
  v6 = *(v2 + 16);
  v0[595] = v6;
  v0[601] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_36_0();
  v11 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[607] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_35(v8);
  v9 = OUTLINED_FUNCTION_9_2();

  return v11(v9);
}

uint64_t sub_227C63B00()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 4904) = v3;
  *(v1 + 4952) = v4;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227C63BEC()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = sub_227D4A898();
  v3 = v0[619];
  if (v3)
  {
    if (v0[613] == v1 && v3 == v2)
    {

LABEL_13:
      v9 = v0[559];
      sub_227C6D988(v9, (v0 + 427));
      v10 = swift_allocObject();
      v0[625] = v10;
      memcpy((v10 + 16), v0 + 427, 0xA0uLL);
      swift_asyncLet_begin();
      sub_227C6D988(v9, (v0 + 467));
      v11 = swift_allocObject();
      v0[631] = v11;
      memcpy((v11 + 16), v0 + 467, 0xA0uLL);
      swift_asyncLet_begin();
      OUTLINED_FUNCTION_164();

      return MEMORY[0x282200930](v12, v13, v14, v15);
    }

    v5 = sub_227D4DA78();

    if (v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = swift_task_alloc();
  v0[729] = v6;
  *v6 = v0;
  v6[1] = sub_227C64FA4;
  OUTLINED_FUNCTION_53(v0[553]);
  OUTLINED_FUNCTION_164();

  return sub_227C659E8();
}

uint64_t sub_227C63E90()
{
  OUTLINED_FUNCTION_6();
  v1[637] = v0;
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_77_5();

    return MEMORY[0x282200920](v2, v3, v4, v1 + v5);
  }

  else
  {
    v1[643] = v1[527];
    sub_227D4CE58();
    v6 = OUTLINED_FUNCTION_77_5();

    return MEMORY[0x282200930](v6, v7, v8, v1 + 578);
  }
}

uint64_t sub_227C63F3C()
{
  *(v1 + 5192) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_22(sub_227C65274);
  }

  else
  {
    return OUTLINED_FUNCTION_22(sub_227C63F68);
  }
}

uint64_t sub_227C63F68()
{
  v1 = *(v0 + 5144);
  v2 = *(v0 + 4472);
  v3 = *(v0 + 4424);
  v4 = *(v0 + 4232);
  *(v0 + 5240) = v4;
  v5 = *(v0 + 4240);
  *(v0 + 5288) = v5;
  swift_bridgeObjectRetain_n();
  sub_227D4CE58();
  v6 = sub_227C6720C(v1, v4);
  v7 = swift_task_alloc();
  v7[2] = v4;
  v7[3] = v5;
  *(v0 + 5336) = sub_227C6E35C(v6, sub_227C6DB0C, v7);

  v8 = type metadata accessor for GameListMetadataRequest(0);
  *(v0 + 5384) = v8;
  *(v0 + 5432) = *(v3 + v8[7]);
  *(v0 + 5856) = *(v3 + v8[5]);
  *(v0 + 5857) = *(v3 + v8[8]);
  v9 = v2[3];
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v9);
  OUTLINED_FUNCTION_280();

  v12 = sub_227C67484(v11);
  *(v0 + 5480) = v12;
  OUTLINED_FUNCTION_36_0();
  v16 = (v13 + *v13);
  v14 = swift_task_alloc();
  *(v0 + 5528) = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_35(v14);

  return (v16)(v12, 1, v9, v10);
}

uint64_t sub_227C64170()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 5576) = v5;
  *(v3 + 5624) = v0;

  if (v0)
  {

    return MEMORY[0x282200920](v3 + 1296, v3 + 4232, sub_227C653B4, v3 + 4288);
  }

  else
  {

    v6 = OUTLINED_FUNCTION_16();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_227C642F0()
{
  v41 = v0;
  v1 = *(v0 + 5624);
  v2 = *(v0 + 5576);
  v3 = *(v0 + 5384);
  v4 = *(v0 + 4424);

  v6 = sub_227C67514(v5);
  Array<A>.queryableIDs(installMetadata:installedOnly:)(v2, *(v4 + *(v3 + 24)), v6, v39);
  *(v0 + 5672) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_105_4();

    OUTLINED_FUNCTION_65();

    return MEMORY[0x282200920](v7, v8, v9, v10);
  }

  else
  {
    v35 = *(v0 + 5857);
    v12 = *(v0 + 5856);
    v13 = *(v0 + 5432);
    v37 = *(v0 + 4760);
    v36 = *(v0 + 4712);
    v14 = *(v0 + 4664);
    v38 = *(v0 + 4616);
    v15 = *(v0 + 4568);
    v16 = *(v0 + 4520);
    v17 = *(v0 + 4472);

    v18 = v39[1];
    *(v0 + 4136) = v39[0];
    *(v0 + 4152) = v18;
    *(v0 + 4168) = v40;
    sub_227C6D988(v17, v0 + 3256);
    v19 = swift_allocObject();
    memcpy((v19 + 16), (v0 + 3256), 0xA0uLL);
    v20 = *(v0 + 4152);
    *(v19 + 176) = *(v0 + 4136);
    *(v19 + 192) = v20;
    *(v19 + 208) = *(v0 + 4168);
    *(v19 + 216) = v13;
    OUTLINED_FUNCTION_94_4();
    v21 = swift_allocObject();
    *(v0 + 5720) = v21;
    *(v21 + 16) = &unk_227D5EE50;
    *(v21 + 24) = v19;
    sub_227C58420(v0 + 4136, v0 + 4056);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9958, &qword_227D5EE68);
    swift_asyncLet_begin();
    sub_227C6D988(v17, v0 + 3896);
    v22 = swift_allocObject();
    memcpy((v22 + 16), (v0 + 3896), 0xA0uLL);
    v23 = *(v0 + 4152);
    *(v22 + 176) = *(v0 + 4136);
    *(v22 + 192) = v23;
    *(v22 + 208) = *(v0 + 4168);
    *(v22 + 216) = v12;
    *(v22 + 217) = v35;
    OUTLINED_FUNCTION_94_4();
    v24 = swift_allocObject();
    *(v0 + 5728) = v24;
    *(v24 + 16) = &unk_227D5EE78;
    *(v24 + 24) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9800, &qword_227D5EE90);
    swift_asyncLet_begin();
    sub_227C6D988(v17, v0 + 3576);
    v37(v14, v36, v16);
    v25 = (*(v15 + 80) + 176) & ~*(v15 + 80);
    v26 = swift_allocObject();
    memcpy((v26 + 16), (v0 + 3576), 0xA0uLL);
    (*(v15 + 32))(v26 + v25, v14, v16);
    v27 = v26 + ((v38 + v25 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v27 = v13;
    *(v27 + 8) = v35;
    OUTLINED_FUNCTION_94_4();
    v28 = swift_allocObject();
    *(v0 + 5736) = v28;
    *(v28 + 16) = &unk_227D5EEA0;
    *(v28 + 24) = v26;
    swift_asyncLet_begin();
    OUTLINED_FUNCTION_82_6();
    OUTLINED_FUNCTION_65();

    return MEMORY[0x282200930](v29, v30, v31, v32);
  }
}

uint64_t sub_227C646E0()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1[718] = v0;
  if (v0)
  {
    OUTLINED_FUNCTION_105_4();

    OUTLINED_FUNCTION_82_6();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x282200920](v2, v3, v4, v5);
  }

  else
  {
    v1[719] = v1[533];
    v1[720] = v1[534];
    sub_227D4CE58();
    sub_227D4CE58();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x282200930](v7, v8, v9, v10);
  }
}

uint64_t sub_227C647D4()
{
  v1[721] = v0;
  if (v0)
  {

    v2 = OUTLINED_FUNCTION_82_6();

    return MEMORY[0x282200920](v2, v1 + 533, v3, v1 + 662);
  }

  else
  {
    v1[722] = v1[535];
    sub_227D4CE58();

    return MEMORY[0x282200930](v1 + 322, v1 + 541, sub_227C648FC, v1 + 692);
  }
}

uint64_t sub_227C648FC()
{
  *(v1 + 5784) = v0;
  if (v0)
  {

    v2 = OUTLINED_FUNCTION_82_6();

    return MEMORY[0x282200920](v2, v1 + 4264, v3, v1 + 5584);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227C64A18, 0, 0);
  }
}

uint64_t sub_227C64A18()
{
  v1 = v0[722];
  v2 = v0[720];
  v3 = v0[719];
  v4 = v0[559];
  v0[724] = v0[541];
  v0[531] = v3;
  v0[532] = v2;
  v0[547] = v1;
  __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
  sub_227D4CE58();
  v5 = sub_227D4CE58();
  v0[725] = sub_227C673F4(v5);
  OUTLINED_FUNCTION_36_0();
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[726] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_35(v7);
  OUTLINED_FUNCTION_85_1();

  return v9();
}

uint64_t sub_227C64B80()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  *(v6 + 5816) = v5;

  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C64E2C()
{
  OUTLINED_FUNCTION_20();

  return MEMORY[0x282200920](v0 + 1296, v0 + 4232, sub_227C64EBC, v0 + 4480);
}

uint64_t sub_227C64F08()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_4_23();
  v1(v0);

  OUTLINED_FUNCTION_2_28();

  v2 = OUTLINED_FUNCTION_8_0();

  return v3(v2);
}

uint64_t sub_227C64FA4()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v5 + 5840) = v0;

  if (!v0)
  {
    *(v5 + 5848) = v3;
  }

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C650AC()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_4_23();
  v1(v0);
  OUTLINED_FUNCTION_7_18();

  v2 = OUTLINED_FUNCTION_8_0();

  return v3(v2);
}

uint64_t sub_227C65124()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_4_23();
  v1(v0);
  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C651E4()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_4_23();
  v1(v0);

  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C65274()
{
  OUTLINED_FUNCTION_6();

  v1 = OUTLINED_FUNCTION_77_5();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 5680);
}

uint64_t sub_227C65324()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_4_23();
  v1(v0);

  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C653FC()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_4_23();
  v1(v0);

  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C654D4()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_4_23();
  v1(v0);

  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C65648()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_4_23();
  v1(v0);

  OUTLINED_FUNCTION_2_28();

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C657C8()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_4_23();
  v1(v0);

  OUTLINED_FUNCTION_2_28();

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C6594C()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_4_23();
  v1(v0);

  OUTLINED_FUNCTION_2_28();

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C659E8()
{
  OUTLINED_FUNCTION_6();
  v1[28] = v2;
  v1[29] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9938, &unk_227D5EED0);
  OUTLINED_FUNCTION_5(v3);
  v1[30] = OUTLINED_FUNCTION_30();
  v4 = type metadata accessor for GameLibraryMetadata(0);
  v1[31] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[32] = v5;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CC8, &qword_227D5B810);
  OUTLINED_FUNCTION_5(v6);
  v1[35] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[36] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[37] = v8;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C65B64()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 224);
  v2 = type metadata accessor for GameListMetadataRequest(0);
  v3 = *(v1 + v2[7]);
  *(v0 + 449) = *(v1 + v2[5]);
  *(v0 + 450) = *(v1 + v2[8]);
  *(v0 + 216) = v3;
  v4 = swift_task_alloc();
  *(v0 + 320) = v4;
  *v4 = v0;
  v4[1] = sub_227C65C34;
  OUTLINED_FUNCTION_53(*(v0 + 224));

  return sub_227C67D78();
}

uint64_t sub_227C65C34()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  *v3 = *v1;
  v2[41] = v4;
  v2[42] = v5;
  v2[43] = v0;

  if (v0)
  {
    v6 = sub_227C66B7C;
  }

  else
  {
    v6 = sub_227C65D3C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227C65D3C()
{
  v58 = v0;
  v1 = *(v0 + 328);
  if (!v1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E98E0, &qword_227D5EC20);
    sub_227D4CE28();
    OUTLINED_FUNCTION_47_7();

    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_65();

    __asm { BRAA            X2, X16 }
  }

  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v50 = (*(v0 + 296) + 32);
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v51 = v1 + 64;
  v52 = v1;
LABEL_5:
  v10 = v8;
  v53 = v9;
  while (1)
  {
    *(v0 + 352) = v9;
    if (!v5)
    {
      break;
    }

    v8 = v10;
LABEL_11:
    sub_227B11EE8(*(v1 + 56) + 40 * (__clz(__rbit64(v5)) | (v8 << 6)), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v11 = OUTLINED_FUNCTION_173();
    v12(v11);
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
    v15 = (*(v14 + 24))(v13, v14);
    v16 = v15;
    if (v15)
    {
      v17 = [v15 stringValue];

      sub_227D4CFA8();
    }

    v5 &= v5 - 1;
    v18 = *(v0 + 280);
    v19 = *(v0 + 288);
    OUTLINED_FUNCTION_173();
    OUTLINED_FUNCTION_30_11();
    sub_227D4A688();
    v20 = OUTLINED_FUNCTION_37_4();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    OUTLINED_FUNCTION_318(v18, 1, v19);
    if (!v23)
    {
      v24 = *v50;
      (*v50)(*(v0 + 312), *(v0 + 280), *(v0 + 288));
      v9 = v53;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = OUTLINED_FUNCTION_79_6();
        v9 = sub_227C575E4(v30, v31, v32, v33);
      }

      v27 = v9[2];
      v26 = v9[3];
      if (v27 >= v26 >> 1)
      {
        v9 = sub_227C575E4((v26 > 1), v27 + 1, 1, v9);
      }

      v9[2] = v27 + 1;
      OUTLINED_FUNCTION_81_6();
      result = v24(v28 + v29 * v27);
      v2 = v51;
      v1 = v52;
      goto LABEL_5;
    }

    result = sub_227B1DE58(*(v0 + 280), &qword_27D7E6CC8, &qword_227D5B810);
    v10 = v8;
    v1 = v52;
    v9 = v53;
    v2 = v51;
  }

  while (1)
  {
    v8 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v10;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  v34 = *(v0 + 344);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E99E0, &qword_227D5F098);
  v35 = sub_227D4CE28();
  Array<A>.queryableIDs(installMetadata:installedOnly:)(v35, 0, v9, v54);
  if (v34)
  {

    OUTLINED_FUNCTION_106_3();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_65();

    __asm { BRAA            X1, X16 }
  }

  v40 = *(v0 + 449);

  v41 = v54[0];
  v42 = v54[1];
  *(v0 + 360) = v54[0];
  *(v0 + 368) = v42;
  v43 = v55;
  v44 = v56;
  *(v0 + 376) = v55;
  *(v0 + 384) = v44;
  v45 = v57;
  *(v0 + 392) = v57;
  v46 = OUTLINED_FUNCTION_58();
  __swift_project_boxed_opaque_existential_1(v46, v47);
  *(v0 + 56) = v41;
  *(v0 + 64) = v42;
  *(v0 + 72) = v43;
  *(v0 + 80) = v44;
  *(v0 + 88) = v45;
  *(v0 + 448) = v40;
  v48 = swift_task_alloc();
  *(v0 + 400) = v48;
  *v48 = v0;
  v48[1] = sub_227C6623C;
  OUTLINED_FUNCTION_65();

  return sub_227C55C0C();
}

uint64_t sub_227C6623C()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 408) = v5;
  *(v3 + 416) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227C66394()
{
  OUTLINED_FUNCTION_51_0();
  __swift_project_boxed_opaque_existential_1((v0[29] + 40), *(v0[29] + 64));
  v1 = sub_227D4CE58();
  v0[53] = sub_227C673F4(v1);
  OUTLINED_FUNCTION_36_0();
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[54] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_35(v3);
  OUTLINED_FUNCTION_85_1();

  return v5();
}

uint64_t sub_227C664D4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  *(v6 + 440) = v5;

  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_227C665D4()
{
  v1 = 0;
  v2 = *(v0 + 336);
  v74 = *(v0 + 272);
  v75 = *(v0 + 328);
  v73 = *(v0 + 248);
  v77 = *(v0 + 352);
  v78 = *(v77 + 16);
  v76 = (*(v0 + 296) + 16);
  v3 = MEMORY[0x277D84F98];
  v4 = *(v0 + 416);
  v79 = *(v0 + 408);
  for (i = v2; ; v2 = i)
  {
    if (v78 == v1)
    {

      sub_227C68EFC(v3);
      OUTLINED_FUNCTION_308();

      OUTLINED_FUNCTION_47_7();

      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_55_0();

      __asm { BRAA            X2, X16 }
    }

    if (v1 >= *(v77 + 16))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    (*v76)(*(v0 + 304), *(v0 + 352) + ((*(*(v0 + 296) + 80) + 32) & ~*(*(v0 + 296) + 80)) + *(*(v0 + 296) + 72) * v1, *(v0 + 288));
    v5 = sub_227D4A6A8();
    if (v4)
    {

      v67 = OUTLINED_FUNCTION_173();
      v68(v67);

      OUTLINED_FUNCTION_106_3();

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_55_0();

      __asm { BRAA            X1, X16 }
    }

    v7 = v5;
    v8 = v6;
    if (*(v75 + 16) && (v9 = OUTLINED_FUNCTION_334(), v11 = sub_227B2664C(v9, v10), (v12 & 1) != 0))
    {
      sub_227B11EE8(*(*(v0 + 328) + 56) + 40 * v11, v0 + 96);
      v13 = 0uLL;
    }

    else
    {
      *(v0 + 128) = 0;
      v13 = 0uLL;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
    }

    if (!*(v79 + 16))
    {
      *(v0 + 168) = 0;
LABEL_14:
      *(v0 + 152) = v13;
      *(v0 + 136) = v13;
      goto LABEL_15;
    }

    v14 = OUTLINED_FUNCTION_334();
    v16 = sub_227B2664C(v14, v15);
    if ((v17 & 1) == 0)
    {
      *(v0 + 168) = 0;
      v13 = 0uLL;
      goto LABEL_14;
    }

    sub_227B11EE8(*(v79 + 56) + 40 * v16, v0 + 136);
LABEL_15:
    type metadata accessor for PurchaseHistoryGame(0);
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v80 = v1;
    if (v2 && *(v2 + 16) && (v22 = OUTLINED_FUNCTION_334(), v24 = sub_227B2664C(v22, v23), (v25 & 1) != 0))
    {
      sub_227B11EE8(*(v2 + 56) + 40 * v24, v0 + 176);
    }

    else
    {
      *(v0 + 208) = 0;
      *(v0 + 176) = 0u;
      *(v0 + 192) = 0u;
    }

    v26 = *(v0 + 440);
    v27 = *(v0 + 272);
    sub_227D492A8();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
    v32 = OUTLINED_FUNCTION_334();
    LOBYTE(v26) = sub_227B39740(v32, v33, v26);
    *v27 = v7;
    *(v74 + 8) = v8;
    v35 = *(v0 + 96);
    v34 = *(v0 + 112);
    *(v74 + 48) = *(v0 + 128);
    *(v74 + 16) = v35;
    *(v74 + 32) = v34;
    v36 = *(v0 + 152);
    v37 = *(v0 + 136);
    *(v74 + 88) = *(v0 + 168);
    *(v74 + 56) = v37;
    *(v74 + 72) = v36;
    sub_227C70534();
    v38 = v27 + v73[8];
    *(v38 + 4) = 0;
    *v38 = 0u;
    *(v38 + 1) = 0u;
    v39 = v27 + v73[9];
    v40 = *(v0 + 208);
    v41 = *(v0 + 192);
    *v39 = *(v0 + 176);
    *(v39 + 1) = v41;
    *(v39 + 4) = v40;
    *(v27 + v73[11]) = v26 & 1;
    OUTLINED_FUNCTION_14_12();
    sub_227C6FBE4();
    sub_227D4CE58();
    swift_isUniquelyReferenced_nonNull_native();
    v42 = OUTLINED_FUNCTION_334();
    v44 = sub_227B2664C(v42, v43);
    if (__OFADD__(*(v3 + 16), (v45 & 1) == 0))
    {
      goto LABEL_39;
    }

    v46 = v44;
    v47 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A40, &qword_227D5F110);
    if (sub_227D4D7C8())
    {
      break;
    }

LABEL_24:
    v52 = *(v0 + 264);
    v53 = *(v0 + 272);
    if (v47)
    {

      OUTLINED_FUNCTION_101_4();
      sub_227C6FB80(v52, v54);
      OUTLINED_FUNCTION_5_17();
      sub_227C6EAB0(v53, v55);
      v56 = OUTLINED_FUNCTION_99_3();
      v57(v56);
    }

    else
    {
      *(v3 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      v58 = (*(v3 + 48) + 16 * v46);
      *v58 = v7;
      v58[1] = v8;
      OUTLINED_FUNCTION_101_4();
      OUTLINED_FUNCTION_14_12();
      sub_227C70180();
      OUTLINED_FUNCTION_5_17();
      sub_227C6EAB0(v53, v59);
      v60 = OUTLINED_FUNCTION_99_3();
      v61(v60);
      v62 = *(v3 + 16);
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (v63)
      {
        goto LABEL_40;
      }

      *(v3 + 16) = v64;
    }

    v4 = 0;
    v1 = v80 + 1;
  }

  v48 = OUTLINED_FUNCTION_334();
  v50 = sub_227B2664C(v48, v49);
  if ((v47 & 1) == (v51 & 1))
  {
    v46 = v50;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_55_0();

  sub_227D4DAE8();
}

uint64_t sub_227C66B7C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_47_7();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227C66C0C()
{
  OUTLINED_FUNCTION_51_0();

  OUTLINED_FUNCTION_47_7();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227C66CCC()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_227B355D0;
  v3 = OUTLINED_FUNCTION_60_7();

  return GamePolicyProvider.fetch()(v3);
}

uint64_t sub_227C66D60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_22(sub_227C66D78);
}

uint64_t sub_227C66D78()
{
  OUTLINED_FUNCTION_20();
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 80), *(*(v0 + 24) + 104));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_227B2F79C;

  return PurchaseHistoryProviderProtocol.purchaseHistory()();
}

uint64_t PurchaseHistoryProviderProtocol.purchaseHistory()()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_227D4CAB8();
  OUTLINED_FUNCTION_5(v5);
  v1[6] = OUTLINED_FUNCTION_30();
  v6 = sub_227D4CA38();
  v1[7] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_30();
  v8 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227C66EFC()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 40);
  v6 = *(v0 + 24);
  sub_227D4AA48();
  sub_227D4CA18();
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_227C6700C;
  v4 = *(v0 + 16);

  return OSSignposter.perform<A>(intervalName:task:)(v4, "PurchaseHistory", 15, 2, &unk_227D5EEC8, v2);
}

uint64_t sub_227C6700C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {
    v7 = sub_227C67198;
  }

  else
  {
    v7 = sub_227C67124;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227C67124()
{
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_95_3();
  v1(v0);

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C67198()
{
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_95_3();
  v1(v0);

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C6720C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_227C6F764(a1, sub_227C6DF64, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_227C67290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PurchaseHistoryGame(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_51_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_226();
  if (!*(a4 + 16))
  {
    goto LABEL_5;
  }

  sub_227D4CE58();
  sub_227D4CE58();
  sub_227B2664C(a1, a2);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v14 = 1;
    return v14 & 1;
  }

  sub_227C6FBE4();
  sub_227C70180();
  v12 = *(v4 + *(v8 + 24));
  OUTLINED_FUNCTION_15_11();
  sub_227C6EAB0(v4, v13);

  v14 = v12 ^ 1;
  return v14 & 1;
}

void *sub_227C673F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_227C6DC84(*(a1 + 16), 0);
  v4 = sub_227C6FC38(&v6, (v3 + 4), v2, a1);
  sub_227B223D4(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_227C67484(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_227B260E4(*(a1 + 16), 0);
  sub_227C70034();
  v4 = v3;
  sub_227B223D4(v6);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v2;
}

char *sub_227C67514(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_227C577E4(*(a1 + 16), 0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630) - 8);
  v5 = sub_227C6FD90(&v7, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1);
  sub_227B223D4(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_227C675E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a1;
  v3[5] = a3;
  v3[6] = *(a2 + 8);
  return OUTLINED_FUNCTION_22(sub_227C67608);
}

uint64_t sub_227C67608()
{
  OUTLINED_FUNCTION_51_0();
  v1 = sub_227C73008();
  OUTLINED_FUNCTION_86_4(v1);
  if (sub_227D4D578())
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
    OUTLINED_FUNCTION_280();
    OUTLINED_FUNCTION_36_0();
    v6 = (v2 + *v2);
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_227BCD2C4;
    OUTLINED_FUNCTION_53(*(v0 + 48));
    OUTLINED_FUNCTION_85_1();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_115();

    return v5(0);
  }
}

uint64_t sub_227C6777C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_227C67868;

  return v5();
}

uint64_t sub_227C67868()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;

  if (!v1)
  {
    **(v4 + 16) = v0;
  }

  OUTLINED_FUNCTION_76_5();

  return v8();
}

uint64_t sub_227C67954(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + 90) = a4;
  *(v4 + 89) = a3;
  *(v4 + 56) = a1;
  *(v4 + 64) = a2;
  return OUTLINED_FUNCTION_22(sub_227C67974);
}

uint64_t sub_227C67974()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 89);
  v2 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 88) = v1 & 1;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_227C67A58;
  OUTLINED_FUNCTION_164();

  return sub_227C55C0C();
}

uint64_t sub_227C67A58()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v7 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_227C5ACBC, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_115();

    return v8(v0);
  }
}

uint64_t sub_227C67B74()
{
  OUTLINED_FUNCTION_20();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_35(v2);

  return sub_227C67D78();
}

uint64_t sub_227C67C24()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227C67D54, 0, 0);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_9_2();

    return v8(v7);
  }
}

uint64_t sub_227C67D78()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v5 = v4;
  *(v1 + 80) = v2;
  v7 = *v6;
  *(v1 + 32) = v0;
  *(v1 + 40) = v7;
  v8 = swift_task_alloc();
  *(v1 + 48) = v8;
  *v8 = v1;
  OUTLINED_FUNCTION_35(v8);

  return sub_227C69284(v5, v3);
}

uint64_t sub_227C67E20()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227C67F40, 0, 0);
  }
}

uint64_t sub_227C67F40()
{
  OUTLINED_FUNCTION_20();
  v2 = sub_227C73020();
  OUTLINED_FUNCTION_86_4(v2);
  v3 = sub_227D4D578();
  v4 = *(v0 + 32);
  if (v3)
  {
    v5 = *(v1 + 32);
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v8 = sub_227D4CE58();
    v9 = sub_227C67484(v8);
    *(v1 + 64) = v9;
    v10 = swift_task_alloc();
    *(v1 + 72) = v10;
    *v10 = v1;
    v10[1] = sub_227C68078;
    v11 = *(v1 + 80);

    return sub_227C551F8(v9, v11, v6, v7);
  }

  else
  {
    v13 = *(v1 + 8);

    return v13(v4, 0);
  }
}

uint64_t sub_227C68078()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {

    OUTLINED_FUNCTION_76_5();
    OUTLINED_FUNCTION_164();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_164();

    return v16(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_227C681D0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_227C682BC;

  return v5();
}

uint64_t sub_227C682BC()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;

  if (!v0)
  {
    v11 = *(v7 + 16);
    *v11 = v5;
    v11[1] = v3;
  }

  OUTLINED_FUNCTION_164();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_227C683B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>, char a10)
{
  v13 = *(a3 + 16);
  *(a9 + 16) = *a3;
  *(a9 + 32) = v13;
  v14 = *(a4 + 16);
  *(a9 + 56) = *a4;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 48) = *(a3 + 32);
  *(a9 + 72) = v14;
  *(a9 + 88) = *(a4 + 32);
  v15 = type metadata accessor for GameLibraryMetadata(0);
  sub_227C70534();
  v16 = a9 + v15[8];
  v17 = *(a6 + 16);
  *v16 = *a6;
  *(v16 + 16) = v17;
  *(v16 + 32) = *(a6 + 32);
  v18 = a9 + v15[9];
  v19 = *(a7 + 16);
  *v18 = *a7;
  *(v18 + 16) = v19;
  *(v18 + 32) = *(a7 + 32);
  result = sub_227C70534();
  *(a9 + v15[11]) = a10;
  return result;
}

uint64_t sub_227C684B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v109 = a8;
  v110 = a7;
  v117 = a5;
  v107 = a4;
  v118 = a3;
  v108 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  MEMORY[0x28223BE20](v12 - 8);
  v106 = &v98[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9938, &unk_227D5EED0);
  MEMORY[0x28223BE20](v14 - 8);
  v116 = &v98[-v15];
  v105 = type metadata accessor for GameLibraryMetadata(0);
  v101 = *(v105 - 8);
  v16 = MEMORY[0x28223BE20](v105);
  v115 = &v98[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v19 = &v98[-v18];
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A38, &qword_227D5F108);
  v20 = MEMORY[0x28223BE20](v104);
  v103 = &v98[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v113 = &v98[-v22];
  v23 = a2 + 64;
  v24 = 1 << *(a2 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a2 + 64);
  v27 = (v24 + 63) >> 6;
  v111 = a2;
  sub_227D4CE58();
  v28 = 0;
  v114 = a6;
  v100 = v23;
  v99 = v27;
  for (i = v19; v26; v27 = v99)
  {
    v112 = a1;
LABEL_9:
    v30 = __clz(__rbit64(v26)) | (v28 << 6);
    v31 = *(v111 + 56);
    v32 = (*(v111 + 48) + 16 * v30);
    v34 = *v32;
    v33 = v32[1];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
    v36 = *(v35 - 8);
    v37 = v31 + *(v36 + 72) * v30;
    v38 = v104;
    v39 = v113;
    (*(v36 + 16))(&v113[*(v104 + 48)], v37, v35);
    *v39 = v34;
    v39[1] = v33;
    v40 = v103;
    sub_227C6F0A8();
    v41 = v40[1];
    v131 = *v40;
    v42 = *(v38 + 48);
    v43 = *(v36 + 8);
    sub_227D4CE58();
    sub_227D4CE58();
    v44 = v114;
    sub_227D4CE58();
    v43(v40 + v42, v35);
    v45 = *v118;
    if (*v118 >= 2)
    {
      v46 = v106;
      if (*(v45 + 16))
      {
        sub_227D4CE58();
        v47 = v131;
        v48 = v41;
        v49 = sub_227B2664C(v131, v41);
        if (v50)
        {
          sub_227B11EE8(*(v45 + 56) + 40 * v49, &v128);
        }

        else
        {
          v130 = 0;
          v128 = 0u;
          v129 = 0u;
        }

        v51 = i;
        goto LABEL_18;
      }

      v130 = 0;
      v128 = 0u;
      v129 = 0u;
    }

    else
    {
      v130 = 0;
      v128 = 0u;
      v129 = 0u;
      v46 = v106;
    }

    v48 = v41;
    v51 = i;
    v47 = v131;
LABEL_18:
    v52 = *v107;
    if (*(*v107 + 16) && (v53 = sub_227B2664C(v47, v48), (v54 & 1) != 0))
    {
      sub_227B11EE8(*(v52 + 56) + 40 * v53, &v125);
    }

    else
    {
      v127 = 0;
      v125 = 0u;
      v126 = 0u;
    }

    if (*(v44 + 16) && (sub_227B2664C(v47, v48), (v55 & 1) != 0))
    {
      v56 = type metadata accessor for PurchaseHistoryGame(0);
      v47 = v131;
      v57 = v116;
      sub_227C6FBE4();
      v58 = v57;
      v59 = 0;
      v60 = v56;
    }

    else
    {
      v60 = type metadata accessor for PurchaseHistoryGame(0);
      v58 = v116;
      v59 = 1;
    }

    __swift_storeEnumTagSinglePayload(v58, v59, 1, v60);
    v61 = v110;
    if (*(v110 + 16) && (v62 = sub_227B2664C(v47, v48), (v63 & 1) != 0))
    {
      sub_227B11EE8(*(v61 + 56) + 40 * v62, &v122);
    }

    else
    {
      v124 = 0;
      v122 = 0u;
      v123 = 0u;
    }

    if (*v118 != 1 && (v64 = v118[1]) != 0 && *(v64 + 16))
    {
      sub_227D4CE58();
      v65 = sub_227B2664C(v47, v48);
      if (v66)
      {
        sub_227B11EE8(*(v64 + 56) + 40 * v65, &v119);
      }

      else
      {
        v121 = 0;
        v120 = 0u;
        v119 = 0u;
      }
    }

    else
    {
      v121 = 0;
      v120 = 0u;
      v119 = 0u;
    }

    v67 = v109;
    if (v109 && *(v109 + 16) && (v68 = sub_227B2664C(v47, v48), (v69 & 1) != 0))
    {
      v70 = v68;
      v71 = *(v67 + 56);
      v72 = sub_227D492A8();
      v73 = *(v72 - 8);
      v74 = v71 + *(v73 + 72) * v70;
      v47 = v131;
      (*(v73 + 16))(v46, v74, v72);
      v75 = v46;
      v76 = 0;
      v77 = v72;
    }

    else
    {
      v77 = sub_227D492A8();
      v75 = v46;
      v76 = 1;
    }

    __swift_storeEnumTagSinglePayload(v75, v76, 1, v77);
    v78 = sub_227B39740(v47, v48, v108);
    v79 = v129;
    *(v51 + 16) = v128;
    *(v51 + 32) = v79;
    v80 = v126;
    *(v51 + 56) = v125;
    *v51 = v47;
    *(v51 + 8) = v48;
    *(v51 + 48) = v130;
    *(v51 + 72) = v80;
    *(v51 + 88) = v127;
    v81 = v105;
    sub_227C70534();
    v82 = v51 + v81[8];
    v83 = v123;
    *v82 = v122;
    *(v82 + 16) = v83;
    *(v82 + 32) = v124;
    v84 = v51 + v81[9];
    v85 = v120;
    *v84 = v119;
    *(v84 + 16) = v85;
    *(v84 + 32) = v121;
    sub_227C70534();
    *(v51 + v81[11]) = v78;
    sub_227C6FBE4();
    sub_227D4CE58();
    v86 = v112;
    swift_isUniquelyReferenced_nonNull_native();
    *&v128 = v86;
    v87 = sub_227B2664C(v47, v48);
    if (__OFADD__(*(v86 + 16), (v88 & 1) == 0))
    {
      goto LABEL_55;
    }

    v89 = v87;
    v90 = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A40, &qword_227D5F110);
    if (sub_227D4D7C8())
    {
      v91 = sub_227B2664C(v131, v48);
      if ((v90 & 1) != (v92 & 1))
      {
        goto LABEL_57;
      }

      v89 = v91;
    }

    a1 = v128;
    if (v90)
    {
      sub_227C6FB80(v115, *(v128 + 56) + *(v101 + 72) * v89);
    }

    else
    {
      *(v128 + 8 * (v89 >> 6) + 64) |= 1 << v89;
      v93 = (*(a1 + 48) + 16 * v89);
      *v93 = v131;
      v93[1] = v48;
      sub_227C70180();
      v94 = *(a1 + 16);
      v95 = __OFADD__(v94, 1);
      v96 = v94 + 1;
      if (v95)
      {
        goto LABEL_56;
      }

      *(a1 + 16) = v96;
    }

    v26 &= v26 - 1;
    sub_227C6EAB0(v51, type metadata accessor for GameLibraryMetadata);

    sub_227B1DE58(v113, &qword_27D7E9A38, &qword_227D5F108);
    v23 = v100;
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      return a1;
    }

    v26 = *(v23 + 8 * v29);
    ++v28;
    if (v26)
    {
      v112 = a1;
      v28 = v29;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  result = sub_227D4DAE8();
  __break(1u);
  return result;
}

unint64_t sub_227C68EFC(uint64_t a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A28, &qword_227D5F0F8);
  v2 = MEMORY[0x28223BE20](v37);
  v36 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v35 = &v31 - v4;
  v38 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A30, &qword_227D5F100);
    v5 = sub_227D4D838();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v6 = v38 + 64;
  v7 = 1 << *(v38 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v38 + 64);
  v10 = (v7 + 63) >> 6;
  v32 = v5 + 8;

  result = sub_227D4CE58();
  v12 = 0;
  v34 = v6;
  for (i = v10; v9; v10 = i)
  {
    v13 = v12;
LABEL_11:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = (*(v38 + 48) + 16 * (v14 | (v13 << 6)));
    v17 = *v15;
    v16 = v15[1];
    v18 = type metadata accessor for GameLibraryMetadata(0);
    v19 = v35;
    sub_227C6FBE4();
    *v19 = v17;
    v19[1] = v16;
    v20 = v36;
    sub_227C70534();
    v21 = *v20;
    v22 = v20[1];
    v40 = v18;
    v41 = &off_283B3D8C0;
    __swift_allocate_boxed_opaque_existential_1(&v39);
    sub_227C70180();
    sub_227B132F0(&v39, v43);
    sub_227B132F0(v43, v44);
    sub_227B132F0(v44, &v42);
    sub_227D4CE58();
    result = sub_227B2664C(v21, v22);
    v23 = result;
    if (v24)
    {
      v25 = (v5[6] + 16 * result);
      *v25 = v21;
      v25[1] = v22;

      v26 = (v5[7] + 40 * v23);
      __swift_destroy_boxed_opaque_existential_0(v26);
      result = sub_227B132F0(&v42, v26);
    }

    else
    {
      if (v5[2] >= v5[3])
      {
        goto LABEL_20;
      }

      *(v32 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v27 = (v5[6] + 16 * result);
      *v27 = v21;
      v27[1] = v22;
      result = sub_227B132F0(&v42, v5[7] + 40 * result);
      v28 = v5[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_21;
      }

      v5[2] = v30;
    }

    v12 = v13;
    v6 = v34;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v5;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227C69284(uint64_t a1, char a2)
{
  *(v3 + 248) = a2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v2;
  return OUTLINED_FUNCTION_22(sub_227C692A0);
}

uint64_t sub_227C692A0()
{
  OUTLINED_FUNCTION_51_0();
  __swift_project_boxed_opaque_existential_1(*(v0 + 184), *(*(v0 + 184) + 24));
  OUTLINED_FUNCTION_36_0();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_227C693BC;
  OUTLINED_FUNCTION_53(*(v0 + 176));
  OUTLINED_FUNCTION_85_1();

  return v4();
}

uint64_t sub_227C693BC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  v4[25] = v8;
  v4[26] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_76_5();

    return v9();
  }

  else
  {
    v4[27] = v0;

    return MEMORY[0x2822009F8](sub_227C694E8, 0, 0);
  }
}

uint64_t sub_227C694E8()
{
  *(v0 + 144) = *(v0 + 216);
  v1 = *(v0 + 208);
  *(v0 + 152) = *(v0 + 200);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6880, &qword_227D5C4B0);
  Optional.notNilOrThrow.getter(v2, v0 + 160);
  if (v1)
  {

    OUTLINED_FUNCTION_18();

    return v3();
  }

  else
  {
    v5 = *(v0 + 184);
    v6 = *(v0 + 248);

    *(v0 + 224) = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    if (v6 == 1)
    {
      OUTLINED_FUNCTION_36_0();
      v7 = swift_task_alloc();
      *(v0 + 232) = v7;
      *v7 = v0;
      OUTLINED_FUNCTION_35(v7);
      v8 = OUTLINED_FUNCTION_68_7();
    }

    else
    {
      OUTLINED_FUNCTION_36_0();
      v10 = swift_task_alloc();
      *(v0 + 240) = v10;
      *v10 = v0;
      OUTLINED_FUNCTION_35(v10);
      v8 = OUTLINED_FUNCTION_68_7();
    }

    return v9(v8);
  }
}

uint64_t sub_227C69778()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0();
  *v3 = v2;
  v2[12] = v1;
  v2[13] = v4;
  v2[14] = v0;
  OUTLINED_FUNCTION_81_1();
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  OUTLINED_FUNCTION_81_1();

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_30_2();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_227C69A68()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0();
  *v3 = v2;
  v2[15] = v1;
  v2[16] = v4;
  v2[17] = v0;
  OUTLINED_FUNCTION_81_1();
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  OUTLINED_FUNCTION_81_1();

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_30_2();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_227C69D58()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_35(v1);

  return GameListMetadataProvider.fetchListData(for:)();
}

uint64_t sub_227C69E44()
{
  v0 = OUTLINED_FUNCTION_40();
  type metadata accessor for GameLibraryMetadata(v0);
  return OUTLINED_FUNCTION_112_3();
}

uint64_t sub_227C69EB8()
{
  v0 = OUTLINED_FUNCTION_40();
  type metadata accessor for GameLibraryMetadata(v0);
  return OUTLINED_FUNCTION_112_3();
}

uint64_t sub_227C69EF4()
{
  v0 = OUTLINED_FUNCTION_40();
  type metadata accessor for GameLibraryMetadata(v0);
  return OUTLINED_FUNCTION_112_3();
}

uint64_t sub_227C69F54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9938, &unk_227D5EED0);
  OUTLINED_FUNCTION_5(v2);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105_1();
  type metadata accessor for GameLibraryMetadata(0);
  sub_227C6F0A8();
  v4 = type metadata accessor for PurchaseHistoryGame(0);
  OUTLINED_FUNCTION_318(v0, 1, v4);
  if (v5)
  {
    sub_227B1DE58(v0, &qword_27D7E9938, &unk_227D5EED0);
    sub_227C6F0A8();
    if (!v20)
    {
      sub_227B1DE58(v19, &qword_27D7E9950, &qword_227D5EE10);
      sub_227C6F0A8();
      if (v20)
      {
        OUTLINED_FUNCTION_189(v19);
        v11 = OUTLINED_FUNCTION_38_0();
        v13 = v12(v11);
        v14 = [v13 stringValue];

        v15 = sub_227D4CFA8();
        goto LABEL_7;
      }

      sub_227B1DE58(v19, &qword_27D7E9968, &qword_227D5EEF8);
      sub_227C6F0A8();
      if (!v20)
      {
        sub_227B1DE58(v19, &qword_27D7E97F0, &qword_227D5EEF0);
        return 0;
      }
    }

    OUTLINED_FUNCTION_189(v19);
    v6 = OUTLINED_FUNCTION_38_0();
    v15 = v7(v6);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_0(v19);
    return v15;
  }

  v8 = OUTLINED_FUNCTION_341();
  v9(v8);
  OUTLINED_FUNCTION_15_11();
  sub_227C6EAB0(v0, v10);
  v15 = sub_227D4A678();
  v16 = OUTLINED_FUNCTION_193();
  v17(v16);
  return v15;
}

uint64_t sub_227C6A290()
{
  sub_227D4CE58();
  sub_227C69F54();
  OUTLINED_FUNCTION_30_11();

  return sub_227D4A688();
}

uint64_t sub_227C6A2F0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87_6();
  if (v11)
  {
LABEL_5:
    OUTLINED_FUNCTION_189(v10);
    v7 = OUTLINED_FUNCTION_38_0();
    v5 = v8(v7);
    goto LABEL_6;
  }

  sub_227B1DE58(v10, &qword_27D7E9950, &qword_227D5EE10);
  type metadata accessor for GameLibraryMetadata(0);
  sub_227C6F0A8();
  if (!v11)
  {
    sub_227B1DE58(v10, &qword_27D7E9968, &qword_227D5EEF8);
    sub_227C6F0A8();
    if (!v11)
    {
      sub_227B1DE58(v10, &qword_27D7E97F0, &qword_227D5EEF0);
      return OUTLINED_FUNCTION_58();
    }

    goto LABEL_5;
  }

  v2 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v3 = OUTLINED_FUNCTION_280();
  v5 = v4(v3, v2);
LABEL_6:
  OUTLINED_FUNCTION_84_3(v5, v6);
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227C6A460(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87_6();
  if (v7[3])
  {
    OUTLINED_FUNCTION_189(v7);
    v2 = OUTLINED_FUNCTION_38_0();
    v4 = v3(v2);
    OUTLINED_FUNCTION_84_3(v4, v5);
  }

  else
  {
    sub_227B1DE58(v7, &qword_27D7E9950, &qword_227D5EE10);
  }

  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227C6A4F0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87_6();
  if (v7[3])
  {
    OUTLINED_FUNCTION_189(v7);
    v2 = OUTLINED_FUNCTION_38_0();
    v4 = v3(v2);
    OUTLINED_FUNCTION_84_3(v4, v5);
  }

  else
  {
    sub_227B1DE58(v7, &qword_27D7E9950, &qword_227D5EE10);
  }

  return OUTLINED_FUNCTION_58();
}

void sub_227C6A580()
{
  OUTLINED_FUNCTION_11();
  v37 = v1;
  v2 = sub_227D4AA28();
  v3 = OUTLINED_FUNCTION_5(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
  OUTLINED_FUNCTION_5(v4);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F0, &unk_227D5BBE0);
  v7 = OUTLINED_FUNCTION_5(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_54_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_316();
  v12 = sub_227D4AA38();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_113_4();
  if (v39)
  {
    OUTLINED_FUNCTION_85_6();
    v19 = OUTLINED_FUNCTION_71_6();
    v20(v19);
    __swift_destroy_boxed_opaque_existential_0(v38);
    OUTLINED_FUNCTION_318(v10, 1, v12);
    if (!v21)
    {
      (*(v14 + 32))(v0, v10, v12);
      OUTLINED_FUNCTION_99();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v12);
      goto LABEL_10;
    }
  }

  else
  {
    sub_227B1DE58(v38, &qword_27D7E9950, &qword_227D5EE10);
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v12);
  }

  type metadata accessor for GameLibraryMetadata(0);
  sub_227C6F0A8();
  if (v39)
  {
    OUTLINED_FUNCTION_85_6();
    v28 = OUTLINED_FUNCTION_71_6();
    v29(v28);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    sub_227B1DE58(v38, &qword_27D7E9968, &qword_227D5EEF8);
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v12);
  }

  OUTLINED_FUNCTION_318(v10, 1, v12);
  if (!v21)
  {
    sub_227B1DE58(v10, &qword_27D7E67F0, &unk_227D5BBE0);
  }

LABEL_10:
  OUTLINED_FUNCTION_318(v0, 1, v12);
  if (v21)
  {
    sub_227B1DE58(v0, &qword_27D7E67F0, &unk_227D5BBE0);
    sub_227D4CE58();
    OUTLINED_FUNCTION_58();
    sub_227D4A778();
    sub_227D4A9E8();
    OUTLINED_FUNCTION_30_11();
    sub_227D4A9C8();
  }

  else
  {
    v33 = *(v14 + 32);
    v33(v18, v0, v12);
    v33(v37, v18, v12);
  }

  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v12);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C6A91C()
{
  OUTLINED_FUNCTION_11();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8ED0, &qword_227D5BC00);
  v6 = OUTLINED_FUNCTION_5(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_51_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_69_5();
  MEMORY[0x28223BE20](v8);
  v10 = &v41[-1] - v9;
  OUTLINED_FUNCTION_113_4();
  if (v42)
  {
    v0 = __swift_project_boxed_opaque_existential_1(v41, v42);
    v11 = OUTLINED_FUNCTION_173();
    v12(v11);
    sub_227D495F8();
    v13 = OUTLINED_FUNCTION_223();
    OUTLINED_FUNCTION_27_10(v13);
    OUTLINED_FUNCTION_10_16(v10);
    if (!v14)
    {
      OUTLINED_FUNCTION_26_8();
      v15 = OUTLINED_FUNCTION_193();
      v16(v15);
      goto LABEL_19;
    }
  }

  else
  {
    sub_227B1DE58(v41, &qword_27D7E9950, &qword_227D5EE10);
    sub_227D495F8();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }

  OUTLINED_FUNCTION_114_3();
  OUTLINED_FUNCTION_108_4();
  if (!v42)
  {
    sub_227B1DE58(v41, &qword_27D7E9968, &qword_227D5EEF8);
    sub_227D495F8();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
LABEL_9:
    OUTLINED_FUNCTION_108_4();
    if (v42)
    {
      OUTLINED_FUNCTION_110_4();
      v29 = OUTLINED_FUNCTION_49_5();
      v30(v29);
      sub_227D495F8();
      v31 = OUTLINED_FUNCTION_308();
      OUTLINED_FUNCTION_27_10(v31);
      OUTLINED_FUNCTION_10_16(v2);
      if (!v14)
      {
        OUTLINED_FUNCTION_26_8();
        v32 = OUTLINED_FUNCTION_341();
        v33(v32);
LABEL_15:
        sub_227D495F8();
        OUTLINED_FUNCTION_10_16(v1);
        if (!v14)
        {
          sub_227B1DE58(v1, &qword_27D7E8ED0, &qword_227D5BC00);
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_227B1DE58(v41, &qword_27D7E97F0, &qword_227D5EEF0);
      sub_227D495F8();
      OUTLINED_FUNCTION_308();
      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v0);
    }

    sub_227D495F8();
    v41[0] = MEMORY[0x277D84F90];
    sub_227C6F060(&qword_27D7E8EF0, MEMORY[0x277D0C9F8], MEMORY[0x277D0CA08]);
    v37 = OUTLINED_FUNCTION_173();
    __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
    v39 = sub_227C6EA5C(&qword_27D7E9978, &qword_27D7E9970, &qword_227D5EF00);
    OUTLINED_FUNCTION_78_8(v39);
    OUTLINED_FUNCTION_10_16(v2);
    if (!v14)
    {
      sub_227B1DE58(v2, &qword_27D7E8ED0, &qword_227D5BC00);
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_109_4();
  v21 = OUTLINED_FUNCTION_70_5();
  v22(v21);
  sub_227D495F8();
  v23 = OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_27_10(v23);
  OUTLINED_FUNCTION_10_16(v1);
  if (v14)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_26_8();
  (*(v24 + 32))(v4, v1, v0);
LABEL_17:
  sub_227D495F8();
  OUTLINED_FUNCTION_10_16(v10);
  if (!v14)
  {
    sub_227B1DE58(v10, &qword_27D7E8ED0, &qword_227D5BC00);
  }

LABEL_19:
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C6ACFC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87_6();
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v2 = OUTLINED_FUNCTION_24_8();
    v3(v2);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    sub_227B1DE58(v9, &qword_27D7E9950, &qword_227D5EE10);
    sub_227D4AA38();
    OUTLINED_FUNCTION_71_0();
    return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_227C6ADB0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87_6();
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v2 = OUTLINED_FUNCTION_24_8();
    v4 = v3(v2);
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_0(v10);
    if (v6)
    {
      return v4;
    }
  }

  else
  {
    sub_227B1DE58(v10, &qword_27D7E9950, &qword_227D5EE10);
  }

  OUTLINED_FUNCTION_55_7();
  sub_227C6F0A8();
  if (v11)
  {
    OUTLINED_FUNCTION_189(v10);
    v7 = OUTLINED_FUNCTION_38_0();
    v4 = v8(v7);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_227B1DE58(v10, &qword_27D7E97F0, &qword_227D5EEF0);
    v4 = 0;
  }

  return v4;
}

void sub_227C6AEE0()
{
  OUTLINED_FUNCTION_11();
  v1 = sub_227D49588();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_51_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_226();
  v25[0] = MEMORY[0x277D84F90];
  sub_227C6F060(&qword_27D7E9808, MEMORY[0x277D0C9D0], MEMORY[0x277D0C9E8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9980, &qword_227D5EF08);
  sub_227C6EA5C(&qword_27D7E9988, &qword_27D7E9980, &qword_227D5EF08);
  sub_227D4D5B8();
  OUTLINED_FUNCTION_114_3();
  sub_227C6F0A8();
  if (v24)
  {
    sub_227B132F0(&v23, v25);
    OUTLINED_FUNCTION_109_4();
    v6 = OUTLINED_FUNCTION_70_5();
    v7(v6);
    v8 = OUTLINED_FUNCTION_341();
    sub_227C6B21C(v8, v9);
    v10 = *(v3 + 8);
    v10(v0, v1);
    v11 = OUTLINED_FUNCTION_193();
    (v10)(v11);
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    sub_227B1DE58(&v23, &qword_27D7E9968, &qword_227D5EEF8);
  }

  sub_227C6F0A8();
  if (v24)
  {
    sub_227B132F0(&v23, v25);
    v12 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    v13 = OUTLINED_FUNCTION_308();
    v14(v13, v12);
    sub_227C6B520();
    v15 = OUTLINED_FUNCTION_193();
    v16(v15);
  }

  else
  {
    sub_227B1DE58(&v23, &qword_27D7E9950, &qword_227D5EE10);
    sub_227C6F0A8();
    if (!v24)
    {
      sub_227B1DE58(&v23, &qword_27D7E97F0, &qword_227D5EEF0);
      goto LABEL_9;
    }

    sub_227B132F0(&v23, v25);
    OUTLINED_FUNCTION_110_4();
    v17 = OUTLINED_FUNCTION_49_5();
    v18(v17);
    v19 = OUTLINED_FUNCTION_341();
    sub_227C6B21C(v19, v20);
    v21 = *(v3 + 8);
    v21(v0, v1);
    v22 = OUTLINED_FUNCTION_193();
    (v21)(v22);
  }

  __swift_destroy_boxed_opaque_existential_0(v25);
LABEL_9:
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C6B21C(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A18, &qword_227D5F0F0);
  v4 = MEMORY[0x28223BE20](v28);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = sub_227D49588();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = *(v9 + 16);
  v27 = v2;
  v15(v12, v2, v8);
  v16 = MEMORY[0x277D0C9D0];
  v25 = sub_227C6F060(&qword_27D7E9808, MEMORY[0x277D0C9D0], MEMORY[0x277D0C9E8]);
  sub_227D4D588();
  v17 = v16;
  v18 = v28;
  sub_227C6F060(&qword_27D7E9A20, v17, MEMORY[0x277D0C9D8]);
  v26 = a2;
  v19 = sub_227D4CF38();
  v20 = *(v18 + 48);
  *v7 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v9 + 32))(&v7[v20], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v21 = v26;
    v15(&v7[v20], v26, v8);
    v15(v12, v21, v8);
    sub_227D4D598();
  }

  v22 = v29;
  sub_227C70534();
  v23 = *v22;
  (*(v9 + 32))(v30, &v22[*(v18 + 48)], v8);
  return v23;
}

uint64_t sub_227C6B520()
{
  v1 = sub_227D49588();
  v2 = MEMORY[0x277D0C9D0];
  sub_227C6F060(&qword_27D7E9A08, MEMORY[0x277D0C9D0], MEMORY[0x277D0C9E0]);
  sub_227D4D148();
  (*(*(v1 - 8) + 8))(v0, v1);
  sub_227D4D148();
  sub_227C6F060(&qword_27D7E9A10, v2, MEMORY[0x277D0C9F0]);
  return sub_227D4DC88();
}

void sub_227C6B640()
{
  OUTLINED_FUNCTION_11();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9990, &unk_227D5EF10);
  v6 = OUTLINED_FUNCTION_5(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_51_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_69_5();
  MEMORY[0x28223BE20](v8);
  v10 = &v41[-1] - v9;
  OUTLINED_FUNCTION_113_4();
  if (v42)
  {
    v0 = __swift_project_boxed_opaque_existential_1(v41, v42);
    v11 = OUTLINED_FUNCTION_173();
    v12(v11);
    sub_227D4AA88();
    v13 = OUTLINED_FUNCTION_223();
    OUTLINED_FUNCTION_27_10(v13);
    OUTLINED_FUNCTION_10_16(v10);
    if (!v14)
    {
      OUTLINED_FUNCTION_26_8();
      v15 = OUTLINED_FUNCTION_193();
      v16(v15);
      goto LABEL_19;
    }
  }

  else
  {
    sub_227B1DE58(v41, &qword_27D7E9950, &qword_227D5EE10);
    sub_227D4AA88();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }

  OUTLINED_FUNCTION_114_3();
  OUTLINED_FUNCTION_108_4();
  if (!v42)
  {
    sub_227B1DE58(v41, &qword_27D7E9968, &qword_227D5EEF8);
    sub_227D4AA88();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
LABEL_9:
    OUTLINED_FUNCTION_108_4();
    if (v42)
    {
      OUTLINED_FUNCTION_110_4();
      v29 = OUTLINED_FUNCTION_49_5();
      v30(v29);
      sub_227D4AA88();
      v31 = OUTLINED_FUNCTION_308();
      OUTLINED_FUNCTION_27_10(v31);
      OUTLINED_FUNCTION_10_16(v2);
      if (!v14)
      {
        OUTLINED_FUNCTION_26_8();
        v32 = OUTLINED_FUNCTION_341();
        v33(v32);
LABEL_15:
        sub_227D4AA88();
        OUTLINED_FUNCTION_10_16(v1);
        if (!v14)
        {
          sub_227B1DE58(v1, &qword_27D7E9990, &unk_227D5EF10);
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_227B1DE58(v41, &qword_27D7E97F0, &qword_227D5EEF0);
      sub_227D4AA88();
      OUTLINED_FUNCTION_308();
      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v0);
    }

    sub_227D4AA88();
    v41[0] = MEMORY[0x277D84F90];
    sub_227C6F060(&qword_27D7E6810, MEMORY[0x277D0D550], MEMORY[0x277D0D558]);
    v37 = OUTLINED_FUNCTION_173();
    __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
    v39 = sub_227C6EA5C(&qword_27D7E6820, &qword_27D7E6818, &qword_227D4E598);
    OUTLINED_FUNCTION_78_8(v39);
    OUTLINED_FUNCTION_10_16(v2);
    if (!v14)
    {
      sub_227B1DE58(v2, &qword_27D7E9990, &unk_227D5EF10);
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_109_4();
  v21 = OUTLINED_FUNCTION_70_5();
  v22(v21);
  sub_227D4AA88();
  v23 = OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_27_10(v23);
  OUTLINED_FUNCTION_10_16(v1);
  if (v14)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_26_8();
  (*(v24 + 32))(v4, v1, v0);
LABEL_17:
  sub_227D4AA88();
  OUTLINED_FUNCTION_10_16(v10);
  if (!v14)
  {
    sub_227B1DE58(v10, &qword_27D7E9990, &unk_227D5EF10);
  }

LABEL_19:
  OUTLINED_FUNCTION_8_1();
}

void sub_227C6BA20()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  sub_227D492A8();
  OUTLINED_FUNCTION_9();
  v64 = v4;
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_3();
  v67 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  v7 = OUTLINED_FUNCTION_10_0(v6);
  v9 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_54_0();
  v63 = v10 - v11;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_316();
  OUTLINED_FUNCTION_113_4();
  if (!v69)
  {
    goto LABEL_10;
  }

  v13 = v70;
  __swift_project_boxed_opaque_existential_1(v68, v69);
  v14 = OUTLINED_FUNCTION_223();
  v16 = v15(v14, v13);
  __swift_destroy_boxed_opaque_existential_0(v68);
  if (!v16)
  {
    goto LABEL_13;
  }

  sub_227C6F0A8();
  if (!v69)
  {

LABEL_10:
    sub_227B1DE58(v68, &qword_27D7E9950, &qword_227D5EE10);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_85_6();
  v17 = OUTLINED_FUNCTION_71_6();
  v19 = v18(v17);
  __swift_destroy_boxed_opaque_existential_0(v68);
  if (v19)
  {
    if ([v16 BOOLValue] & 1) == 0 && (objc_msgSend(v19, sel_BOOLValue))
    {
      sub_227C6F0A8();
      if (v69)
      {
        __swift_project_boxed_opaque_existential_1(v68, v69);
        v20 = OUTLINED_FUNCTION_193();
        v21(v20);

        v22 = OUTLINED_FUNCTION_37_4();
        __swift_storeEnumTagSinglePayload(v22, v23, v24, v65);
        __swift_destroy_boxed_opaque_existential_0(v68);
      }

      else
      {

        sub_227B1DE58(v68, &qword_27D7E9960, &unk_227D5EEE0);
        OUTLINED_FUNCTION_71_0();
        __swift_storeEnumTagSinglePayload(v59, v60, v61, v65);
      }

      goto LABEL_27;
    }
  }

LABEL_13:
  v62 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9998, &qword_227D5EF20);
  v25 = *(v9 + 72);
  v26 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_227D4F750;
  v28 = v27 + v26;
  sub_227C6F0A8();
  if (v69)
  {
    v29 = v70;
    __swift_project_boxed_opaque_existential_1(v68, v69);
    v30 = OUTLINED_FUNCTION_223();
    v31(v30, v29);
    OUTLINED_FUNCTION_99();
    v32 = v65;
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v65);
    __swift_destroy_boxed_opaque_existential_0(v68);
  }

  else
  {
    sub_227B1DE58(v68, &qword_27D7E9960, &unk_227D5EEE0);
    OUTLINED_FUNCTION_71_0();
    v32 = v65;
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v65);
  }

  v39 = v63;
  type metadata accessor for GameLibraryMetadata(0);
  v40 = &qword_27D7E6D08;
  sub_227C6F0A8();
  v41 = 0;
  v66 = (v64 + 32);
  v42 = MEMORY[0x277D84F90];
  do
  {
    v43 = v41;
    sub_227C6F0A8();
    sub_227C70534();
    OUTLINED_FUNCTION_318(v39, 1, v32);
    if (v44)
    {
      sub_227B1DE58(v39, v40, &qword_227D59460);
    }

    else
    {
      v45 = v40;
      v46 = v28;
      v47 = v0;
      v48 = v25;
      v49 = *v66;
      (*v66)(v67, v39, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = OUTLINED_FUNCTION_79_6();
        v42 = sub_227C6DB98(v55, v56, v57, v58);
      }

      v52 = v42[2];
      v51 = v42[3];
      if (v52 >= v51 >> 1)
      {
        v42 = sub_227C6DB98((v51 > 1), v52 + 1, 1, v42);
      }

      v42[2] = v52 + 1;
      v32 = v65;
      OUTLINED_FUNCTION_81_6();
      v49(v53 + v54 * v52, v67, v65);
      v25 = v48;
      v0 = v47;
      v39 = v63;
      v28 = v46;
      v40 = v45;
    }

    v41 = 1;
  }

  while ((v43 & 1) == 0);
  swift_setDeallocating();
  sub_227C6DB14();
  sub_227C6BF4C(v42, v62);

LABEL_27:
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C6BF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227D492A8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v20 = *(a1 + 16);
  if (v20)
  {
    v19 = a2;
    v11 = *(v5 + 16);
    v12 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11(&v19 - v9, v12, v4);
    v13 = (v5 + 32);
    for (i = 1; v20 != i; ++i)
    {
      v11(v8, v12 + *(v5 + 72) * i, v4);
      sub_227C6F060(&qword_280E7B6F0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v15 = sub_227D4CEE8();
      v16 = *(v5 + 8);
      if (v15)
      {
        v16(v10, v4);
        (*v13)(v10, v8, v4);
      }

      else
      {
        v16(v8, v4);
      }
    }

    v17 = v19;
    (*v13)(v19, v10, v4);
    return __swift_storeEnumTagSinglePayload(v17, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

BOOL sub_227C6C1B8(uint64_t a1)
{
  OUTLINED_FUNCTION_55_7();
  sub_227C6F0A8();
  OUTLINED_FUNCTION_85_1();
  sub_227B1DE58(v1, v2, v3);
  return v5 != 0;
}

BOOL sub_227C6C228(uint64_t a1)
{
  OUTLINED_FUNCTION_55_7();
  sub_227C6F0A8();
  if (!v8)
  {
    sub_227B1DE58(&v7, &qword_27D7E97F0, &qword_227D5EEF0);
    return 0;
  }

  sub_227B132F0(&v7, v9);
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v1 = OUTLINED_FUNCTION_24_8();
  if ((v2(v1) & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = OUTLINED_FUNCTION_24_8();
    v5(v4);
    if (v7 != 2)
    {
      sub_227C6F0A8();
      v3 = v8 == 0;
      sub_227B1DE58(&v7, &qword_27D7E9960, &unk_227D5EEE0);
      __swift_destroy_boxed_opaque_existential_0(v9);
      return v3;
    }

    __swift_destroy_boxed_opaque_existential_0(v9);
    return 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v9);
  return 1;
}

uint64_t sub_227C6C378()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9938, &unk_227D5EED0);
  OUTLINED_FUNCTION_5(v0);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v1);
  v3 = &v34[-1] - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v4);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v34[-1] - v6;
  type metadata accessor for GameLibraryMetadata(0);
  sub_227C6F0A8();
  v8 = type metadata accessor for PurchaseHistoryGame(0);
  OUTLINED_FUNCTION_318(v3, 1, v8);
  if (v9)
  {
    sub_227B1DE58(v3, &qword_27D7E9938, &unk_227D5EED0);
    v10 = sub_227D492A8();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
    sub_227C6F0A8();
    if (v35)
    {
      v14 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v15 = OUTLINED_FUNCTION_308();
      v16(v15, v14);
      __swift_destroy_boxed_opaque_existential_0(v34);
    }

    else
    {
      sub_227B1DE58(v34, &qword_27D7E97F0, &qword_227D5EEF0);
      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v30, v31, v32, v10);
    }

    result = OUTLINED_FUNCTION_318(v7, 1, v10);
    if (!v9)
    {
      return sub_227B1DE58(v7, &qword_27D7E6D08, &qword_227D59460);
    }
  }

  else
  {
    v17 = *(v8 + 20);
    v18 = sub_227D492A8();
    OUTLINED_FUNCTION_9();
    (*(v19 + 16))(v7, &v3[v17], v18);
    OUTLINED_FUNCTION_15_11();
    sub_227C6EAB0(v3, v20);
    v21 = OUTLINED_FUNCTION_37_4();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v18);
    v24 = OUTLINED_FUNCTION_9_2();
    v25(v24);
    OUTLINED_FUNCTION_99();
    return __swift_storeEnumTagSinglePayload(v26, v27, v28, v18);
  }

  return result;
}

uint64_t sub_227C6C620()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9938, &unk_227D5EED0);
  OUTLINED_FUNCTION_5(v1);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_105_1();
  type metadata accessor for GameLibraryMetadata(0);
  sub_227C6F0A8();
  v3 = type metadata accessor for PurchaseHistoryGame(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v3);
  sub_227B1DE58(v0, &qword_27D7E9938, &unk_227D5EED0);
  if (EnumTagSinglePayload == 1)
  {
    sub_227C6F0A8();
    sub_227B1DE58(v8, &qword_27D7E9960, &unk_227D5EEE0);
  }

  sub_227D49C78();
  OUTLINED_FUNCTION_6_15();
  v5 = OUTLINED_FUNCTION_58();
  return v6(v5);
}

void sub_227C6C770()
{
  OUTLINED_FUNCTION_11();
  v52 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_5(v3);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  v51 = v46 - v5;
  OUTLINED_FUNCTION_191_2();
  v6 = sub_227D49C78();
  v7 = OUTLINED_FUNCTION_5(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_3();
  v46[2] = v8;
  OUTLINED_FUNCTION_191_2();
  sub_227D49C98();
  OUTLINED_FUNCTION_9();
  v49 = v10;
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_54_0();
  v48 = v11 - v12;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v47 = v46 - v14;
  OUTLINED_FUNCTION_191_2();
  v15 = sub_227D492A8();
  OUTLINED_FUNCTION_9();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_69_5();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_226();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  v21 = OUTLINED_FUNCTION_5(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_54_0();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v46 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v46 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E99A0, &qword_227D5EF28);
  v29 = OUTLINED_FUNCTION_5(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_54_0();
  v46[1] = v30 - v31;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v32);
  v34 = v46 - v33;
  sub_227C6BA20();
  sub_227C6F0A8();
  v35 = 1;
  OUTLINED_FUNCTION_318(v25, 1, v15);
  if (!v36)
  {
    (*(v17 + 32))(v1, v25, v15);
    (*(v17 + 16))(v0, v1, v15);
    sub_227D49C58();
    v37 = OUTLINED_FUNCTION_193();
    v38(v37);
    v35 = 0;
  }

  sub_227B1DE58(v27, &qword_27D7E6D08, &qword_227D59460);
  v39 = sub_227D49C68();
  __swift_storeEnumTagSinglePayload(v34, v35, 1, v39);
  sub_227C6C620();
  sub_227C6C378();
  OUTLINED_FUNCTION_55_7();
  sub_227C6F0A8();
  OUTLINED_FUNCTION_85_1();
  sub_227B1DE58(v40, v41, v42);
  v43 = v47;
  sub_227D49C88();
  sub_227D4CE58();
  sub_227C69F54();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_30_11();
  sub_227D4A688();
  sub_227C6F0A8();
  v44 = v49;
  v45 = v50;
  (*(v49 + 16))(v48, v43, v50);
  sub_227D49CA8();
  (*(v44 + 8))(v43, v45);
  sub_227B1DE58(v34, &qword_27D7E99A0, &qword_227D5EF28);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C6CBF4()
{
  sub_227C6F0A8();
  if (v5)
  {
    sub_227B132F0(&v4, v6);
    OUTLINED_FUNCTION_189(v6);
    v0 = OUTLINED_FUNCTION_38_0();
    v2 = v1(v0);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_227B1DE58(&v4, &qword_27D7E9950, &qword_227D5EE10);
    OUTLINED_FUNCTION_55_7();
    sub_227C6F0A8();
    v2 = v6[3] != 0;
    sub_227B1DE58(v6, &qword_27D7E97F0, &qword_227D5EEF0);
  }

  return v2 & 1;
}

uint64_t sub_227C6CCE0@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_55_7();
  sub_227C6F0A8();
  if (v17)
  {
    sub_227B132F0(&v16, v18);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v3 = OUTLINED_FUNCTION_24_8();
    v4(v3);
    sub_227B6DCA4();
    sub_227B6E22C();
    if (sub_227D4D578())
    {
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v5 = OUTLINED_FUNCTION_24_8();
      v7 = v6(v5);
      sub_227D49F28();
      OUTLINED_FUNCTION_6_15();
      v9 = *(v8 + 104);
      if (v7)
      {
        v10 = MEMORY[0x277D0CEF0];
      }

      else
      {
        v10 = MEMORY[0x277D0CEE0];
      }

      v15 = *v10;
      v14 = a2;
    }

    else
    {
      sub_227D49F28();
      OUTLINED_FUNCTION_6_15();
      v14 = OUTLINED_FUNCTION_58();
    }

    v9(v14, v15);
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    sub_227B1DE58(&v16, &qword_27D7E97F0, &qword_227D5EEF0);
    sub_227D49F28();
    OUTLINED_FUNCTION_6_15();
    v11 = OUTLINED_FUNCTION_58();
    return v12(v11);
  }
}

uint64_t sub_227C6CEA0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_87_6();
  if (v6[3])
  {
    OUTLINED_FUNCTION_189(v6);
    v2 = OUTLINED_FUNCTION_38_0();
    v4 = v3(v2);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_227B1DE58(v6, &qword_27D7E9950, &qword_227D5EE10);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

void sub_227C6CF3C()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_9_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v5 = OUTLINED_FUNCTION_5(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_54_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_316();
  sub_227C6BA20();
  sub_227C6A2F0(v10, v11);
  v13 = v12;
  sub_227C6C378();
  v14 = OUTLINED_FUNCTION_173();
  static AnySortableKey.create(lastPlayed:name:purchaseDate:compared:)(v14, v15, v13, v8, v1, v16);

  OUTLINED_FUNCTION_85_1();
  sub_227B1DE58(v17, v18, v19);
  OUTLINED_FUNCTION_85_1();
  sub_227B1DE58(v20, v21, v22);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C6D028()
{
  OUTLINED_FUNCTION_11();
  v81 = v0;
  v2 = v1;
  v3 = type metadata accessor for GameLibraryMetadata(0);
  v4 = OUTLINED_FUNCTION_5(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = (v6 - v5);
  v8 = sub_227D4CAB8();
  OUTLINED_FUNCTION_9();
  v80 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = sub_227D49F28();
  v15 = OUTLINED_FUNCTION_5(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_3();
  v88 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F0, &unk_227D5BBE0);
  v18 = OUTLINED_FUNCTION_5(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_54_0();
  v87 = v19 - v20;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v21);
  v86 = v78 - v22;
  OUTLINED_FUNCTION_191_2();
  v23 = sub_227D495F8();
  v24 = OUTLINED_FUNCTION_5(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_3();
  v85 = v25;
  OUTLINED_FUNCTION_191_2();
  v26 = sub_227D49588();
  v27 = OUTLINED_FUNCTION_5(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_3();
  v84 = v28;
  OUTLINED_FUNCTION_191_2();
  v29 = sub_227D4AA88();
  v30 = OUTLINED_FUNCTION_5(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5_3();
  v83 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_54_0();
  v82 = (v36 - v37);
  OUTLINED_FUNCTION_6_0();
  v39 = MEMORY[0x28223BE20](v38);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = v78 - v41;
  v44 = sub_227C6A2F0(v40, v43);
  if (v45)
  {
    v78[5] = v45;
    v78[6] = v44;
    v79 = v2;
    v80 = v34;
    v46 = *(v34 + 16);
    v46(v42, v81, v32);
    sub_227D4A678();

    v81 = sub_227C6A460(v59, v61);
    v78[4] = v62;
    v63 = sub_227C6ADB0(v81, v62);
    v78[2] = v64;
    v78[3] = v63;
    v46(v82, v42, v32);
    sub_227C6B640();
    sub_227C6AEE0();
    sub_227C6A91C();
    v78[1] = sub_227C6A4F0(v65, v66);
    sub_227C6A580();
    sub_227C6ACFC(v67, v68);
    sub_227C6F0A8();
    v69 = v90;
    if (v90)
    {
      v70 = v91;
      __swift_project_boxed_opaque_existential_1(v89, v90);
      (*(v70 + 72))(v69, v70);
      __swift_destroy_boxed_opaque_existential_0(v89);
    }

    else
    {
      sub_227B1DE58(v89, &qword_27D7E9950, &qword_227D5EE10);
    }

    v57 = v79;
    sub_227C6F0A8();
    v71 = v90;
    if (v90)
    {
      v72 = v91;
      __swift_project_boxed_opaque_existential_1(v89, v90);
      v73 = (*(v72 + 80))(v71, v72);
      if (v73)
      {
        v74 = v73;
        [v73 BOOLValue];
      }

      __swift_destroy_boxed_opaque_existential_0(v89);
    }

    else
    {
      sub_227B1DE58(v89, &qword_27D7E9950, &qword_227D5EE10);
    }

    sub_227C6CCE0(v88);
    sub_227C6F0A8();
    v75 = v90;
    if (v90)
    {
      v76 = v91;
      __swift_project_boxed_opaque_existential_1(v89, v90);
      (*(v76 + 96))(v75, v76);
      __swift_destroy_boxed_opaque_existential_0(v89);
    }

    else
    {
      sub_227B1DE58(v89, &qword_27D7E9950, &qword_227D5EE10);
    }

    sub_227D49608();
    (*(v80 + 8))(v42, v32);
    v58 = 0;
  }

  else
  {
    v47 = v2;
    v88 = v8;
    v48 = v80;
    sub_227D4AA58();
    OUTLINED_FUNCTION_14_12();
    sub_227C6FBE4();
    v49 = sub_227D4CA98();
    v50 = sub_227D4D428();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v89[0] = v52;
      *v51 = 136315138;
      v53 = *v7;
      v54 = v7[1];
      sub_227D4CE58();
      OUTLINED_FUNCTION_5_17();
      sub_227C6EAB0(v7, v55);
      v56 = sub_227B1B1A4(v53, v54, v89);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_227B0D000, v49, v50, "No name available to describe %s, filtering it out.", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      v57 = v47;
      MEMORY[0x22AAA7130](v52, -1, -1);
      MEMORY[0x22AAA7130](v51, -1, -1);

      (*(v48 + 8))(v13, v88);
      v58 = 1;
    }

    else
    {

      OUTLINED_FUNCTION_5_17();
      sub_227C6EAB0(v7, v60);
      (*(v48 + 8))(v13, v88);
      v58 = 1;
      v57 = v47;
    }
  }

  v77 = sub_227D49618();
  __swift_storeEnumTagSinglePayload(v57, v58, 1, v77);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C6D868()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_36_0();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20_0(v7);
  *v8 = v9;
  v8[1] = sub_227B3E2E8;

  return v11(v5, v3, v1);
}

uint64_t sub_227C6D9C0()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_60_7();

  return sub_227C66CCC();
}

uint64_t objectdestroyTm_2()
{
  OUTLINED_FUNCTION_66_6();

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_227C6DA80()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_227B355D0;
  v3 = OUTLINED_FUNCTION_60_7();

  return sub_227C66D60(v3, v4);
}

uint64_t sub_227C6DB14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *sub_227C6DB98(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_227C6DD08(v8, v7);
  v10 = *(sub_227D492A8() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_227C6DE04(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_227C6DC84(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A48, &qword_227D5F118);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 40);
  return v4;
}

void *sub_227C6DD08(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A00, &qword_227D5F0E8);
  v4 = *(sub_227D492A8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227C6DE04(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_227D492A8(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_227D492A8();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227C6DED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  (*(*(v7 - 8) + 16))(a1, a4, v7);
  sub_227D4CE58();
  return a2;
}

uint64_t sub_227C6DF64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A38, &qword_227D5F108) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A58, &qword_227D5F138);
  result = sub_227C6DED8(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_227C6DFD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8570, &qword_227D59BB0);
  v42 = v4;
  result = sub_227D4D828();
  v9 = result;
  if (!*(v7 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v9;
    return result;
  }

  v38 = v2;
  v10 = 0;
  v11 = (v7 + 64);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v39 = (v5 + 16);
  v40 = v7;
  v41 = v5;
  v43 = (v5 + 32);
  v16 = result + 64;
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      sub_227B26E40(0, (v36 + 63) >> 6, v11);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v20 = v17 | (v10 << 6);
    v21 = *(v7 + 56);
    v22 = (*(v7 + 48) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = *(v41 + 72);
    v26 = v21 + v25 * v20;
    if (v42)
    {
      (*v43)(v44, v26, v45);
    }

    else
    {
      (*v39)(v44, v26, v45);
      sub_227D4CE58();
    }

    sub_227D4DB58();
    sub_227D4D048();
    result = sub_227D4DB98();
    v27 = -1 << *(v9 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v9 + 48) + 16 * v30);
    *v35 = v24;
    v35[1] = v23;
    result = (*v43)(*(v9 + 56) + v25 * v30, v44, v45);
    ++*(v9 + 16);
    v7 = v40;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v16 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

unint64_t *sub_227C6E35C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *), unint64_t *a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_227C6F350(v12, v8, v6, a2);
      MEMORY[0x22AAA7130](v12, -1, -1);
      return a3;
    }
  }

  MEMORY[0x28223BE20](a1);
  v9 = (v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_227B26E40(0, v8, v9);
  v10 = sub_227C6F0FC(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

uint64_t sub_227C6E4E0()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 216);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_93_4(v3);

  return sub_227C675E8(v5, v6, v1);
}

uint64_t sub_227C6E568()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_31(v1);

  return v4(v3);
}

uint64_t objectdestroy_21Tm(uint64_t a1)
{
  OUTLINED_FUNCTION_66_6();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_227C6E664()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 216);
  v2 = *(v0 + 217);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_93_4(v4);

  return sub_227C67954(v6, v7, v1, v2);
}

uint64_t sub_227C6E6FC()
{
  OUTLINED_FUNCTION_20();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_10_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v2[1] = sub_227C6E808;

  return sub_227C67B74();
}

uint64_t sub_227C6E808()
{
  OUTLINED_FUNCTION_20();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_14();
  v5 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v4, v2);
}

uint64_t sub_227C6E904()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_31(v1);

  return v4(v3);
}

uint64_t sub_227C6E998()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_60_7();

  return sub_227C6D868();
}

uint64_t sub_227C6EA5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_227C6EAB0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_62_0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_227C6EC0C(uint64_t a1)
{
  sub_227C6EF98(319, &qword_27D7E99A8, &qword_27D7E67D0, &qword_227D63360, MEMORY[0x277D0D4F8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    OUTLINED_FUNCTION_4_1();
  }
}

uint64_t dispatch thunk of GameListMetadataProviderProtocol.fetchListData(for:)()
{
  OUTLINED_FUNCTION_51_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_36_0();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 16) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_35(v8);

  return v10(v6, v4, v2);
}

void sub_227C6EE18(uint64_t a1)
{
  OUTLINED_FUNCTION_9_11(a1, &qword_27D7E99B0, &qword_27D7E99B8, &qword_227D5F088);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_9_11(v1, &qword_27D7E99C0, &qword_27D7E99C8, &qword_227D5F090);
    if (v3 <= 0x3F)
    {
      sub_227C6EFFC(319, &qword_27D7E99D0, type metadata accessor for PurchaseHistoryGame);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_9_11(v4, &qword_27D7E99D8, &qword_27D7E99E0, &qword_227D5F098);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_9_11(v6, &qword_27D7E99E8, &qword_27D7E99F0, &qword_227D5F0A0);
          if (v8 <= 0x3F)
          {
            sub_227C6EFFC(319, &qword_27D7E99F8, MEMORY[0x277CC9578]);
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              OUTLINED_FUNCTION_4_1();
            }
          }
        }
      }
    }
  }
}

void sub_227C6EF98(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_227C6EFFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_227D4D4F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_227C6F060(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227C6F0A8()
{
  OUTLINED_FUNCTION_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6_15();
  v3 = OUTLINED_FUNCTION_58();
  v4(v3);
  return v0;
}

uint64_t sub_227C6F0FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  v26 = a2;
  v35 = a4;
  v27 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  result = MEMORY[0x28223BE20](v34);
  v32 = &v26 - v7;
  v33 = v6;
  v8 = 0;
  v36 = a3;
  v9 = *(a3 + 64);
  v28 = 0;
  v29 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v30 = v6 + 8;
  v31 = v6 + 16;
  v14 = v32;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v37 = (v12 - 1) & v12;
LABEL_11:
    v18 = v15 | (v8 << 6);
    v19 = (v36[6] + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = v33;
    v23 = v34;
    v24 = v18;
    (*(v33 + 16))(v14, v36[7] + *(v33 + 72) * v18, v34);
    sub_227D4CE58();
    LOBYTE(v20) = v35(v20, v21, v14);
    (*(v22 + 8))(v14, v23);

    v12 = v37;
    if (v20)
    {
      *(v27 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return sub_227C6F3E0(v27, v26, v28, v36);
      }
    }
  }

  v16 = v8;
  while (1)
  {
    v8 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      return sub_227C6F3E0(v27, v26, v28, v36);
    }

    v17 = *(v29 + 8 * v8);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v37 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_227C6F350(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_227C6F0FC(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_227C6F3E0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v54 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v50 = &v44 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v49 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8570, &qword_227D59BB0);
  result = sub_227D4D838();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v48;
  }

  v15 = 0;
  v46 = result;
  v47 = v54 + 16;
  v16 = v54 + 32;
  v17 = result + 64;
  v18 = v49;
  v45 = a4;
  while (v14)
  {
    v19 = v18;
    v20 = v16;
    v21 = __clz(__rbit64(v14));
    v51 = (v14 - 1) & v14;
LABEL_16:
    v24 = v21 | (v15 << 6);
    v25 = a4[7];
    v26 = (a4[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v54;
    v53 = *(v54 + 72);
    v30 = v50;
    (*(v54 + 16))(v50, v25 + v53 * v24, v19);
    v31 = *(v29 + 32);
    v32 = v30;
    v16 = v20;
    v31(v55, v32, v19);
    v13 = v46;
    sub_227D4DB58();
    sub_227D4CE58();
    v52 = v27;
    sub_227D4D048();
    result = sub_227D4DB98();
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v18 = v49;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v17 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v18 = v49;
LABEL_25:
    *(v17 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v13 + 48) + 16 * v36);
    v42 = v53;
    *v41 = v52;
    v41[1] = v28;
    result = (v31)(*(v13 + 56) + v36 * v42, v55, v18);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v45;
    v14 = v51;
    if (!a3)
    {
      return v13;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v23 = v48[v15];
    ++v22;
    if (v23)
    {
      v19 = v18;
      v20 = v16;
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_227C6F764(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v56 = a5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v9 = *(v49 - 8);
  v10 = MEMORY[0x28223BE20](v49);
  v45 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A60, &unk_227D5F140);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (v44 - v15);
  sub_227B3D8D4(a1, a2, a3, v54);
  v50 = v54[0];
  v51 = v54[1];
  v52 = v54[2];
  v53 = v55;
  v17 = (v9 + 32);
  v44[6] = v9 + 16;
  v44[5] = v9 + 8;
  v48 = v9;
  v44[4] = v9 + 40;
  v44[2] = a1;
  sub_227D4CE58();
  v44[1] = a3;

  v46 = v16;
  v47 = v13;
  while (1)
  {
    sub_227C701D4(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A58, &qword_227D5F138);
    if (__swift_getEnumTagSinglePayload(v16, 1, v18) == 1)
    {
      sub_227B223D4(v50);
    }

    v20 = *v16;
    v19 = v16[1];
    v21 = *v17;
    (*v17)(v13, v16 + *(v18 + 48), v49);
    v22 = *v56;
    v24 = sub_227B2664C(v20, v19);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E97E8, &qword_227D5E8C8);
        sub_227D4D7D8();
      }
    }

    else
    {
      sub_227C6DFD4(v27, a4 & 1);
      v29 = sub_227B2664C(v20, v19);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_17;
      }

      v24 = v29;
    }

    v31 = *v56;
    if (v28)
    {
      v32 = v48;
      v33 = *(v48 + 72) * v24;
      v34 = v45;
      v35 = v17;
      v36 = v49;
      (*(v48 + 16))(v45, v31[7] + v33, v49);
      v13 = v47;
      (*(v32 + 8))(v47, v36);

      v37 = v36;
      v17 = v35;
      (*(v32 + 40))(v31[7] + v33, v34, v37);
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      v38 = (v31[6] + 16 * v24);
      *v38 = v20;
      v38[1] = v19;
      v39 = v31[7] + *(v48 + 72) * v24;
      v13 = v47;
      v21(v39, v47, v49);
      v40 = v31[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_16;
      }

      v31[2] = v42;
    }

    a4 = 1;
    v16 = v46;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_227D4DAE8();
  __break(1u);
  return result;
}

uint64_t sub_227C6FB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameLibraryMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C6FBE4()
{
  OUTLINED_FUNCTION_37();
  v1(0);
  OUTLINED_FUNCTION_6_15();
  v2 = OUTLINED_FUNCTION_58();
  v3(v2);
  return v0;
}

void *sub_227C6FC38(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
LABEL_19:
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
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
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
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            v13 = v15;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

LABEL_14:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_227B11EE8(*(a4 + 56) + 40 * (v16 | (v13 << 6)), v17);
      sub_227B132F0(v17, v18);
      result = sub_227B132F0(v18, v11);
      v11 += 40;
      v12 = v14;
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_227C6FD90(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v32 - v12;
  v14 = a4 + 64;
  v13 = *(a4 + 64);
  v38 = -1 << *(a4 + 32);
  if (-v38 < 64)
  {
    v15 = ~(-1 << -v38);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  if (!a2)
  {
    v19 = 0;
    result = 0;
LABEL_22:
    v31 = ~v38;
    *a1 = a4;
    a1[1] = v14;
    a1[2] = v31;
    a1[3] = v19;
    a1[4] = v16;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v19 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a4 + 64;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v38) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = result;
    while (v18 < result)
    {
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

      if (!v16)
      {
        v14 = v34;
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v20)
          {
            v16 = 0;
            result = v18;
            a1 = v33;
            goto LABEL_22;
          }

          v16 = *(v34 + 8 * v21);
          ++v19;
          if (v16)
          {
            v43 = v18 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v43 = v18 + 1;
      v21 = v19;
LABEL_17:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = a4;
      v24 = *(a4 + 56);
      v26 = v41;
      v25 = v42;
      v27 = *(v42 + 72);
      v28 = v40;
      (*(v42 + 16))(v40, v24 + v27 * (v22 | (v21 << 6)), v41);
      v29 = *(v25 + 32);
      v30 = v39;
      v29(v39, v28, v26);
      v29(a2, v30, v26);
      result = v37;
      v18 = v43;
      if (v43 == v37)
      {
        v19 = v21;
        a1 = v33;
        v14 = v34;
        a4 = v23;
        goto LABEL_22;
      }

      a2 += v27;
      v19 = v21;
      a4 = v23;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_227C70034()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    OUTLINED_FUNCTION_8_1();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
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
      v16 = (*(v3 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {
        sub_227D4CE58();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;
      sub_227D4CE58();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_227C70180()
{
  OUTLINED_FUNCTION_37();
  v1(0);
  OUTLINED_FUNCTION_6_15();
  v2 = OUTLINED_FUNCTION_58();
  v3(v2);
  return v0;
}

uint64_t sub_227C701D4@<X0>(uint64_t a1@<X8>)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A38, &qword_227D5F108);
  MEMORY[0x28223BE20](v39);
  v35 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A68, &unk_227D5F150);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v35 - v13;
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v40 = v17;
  if (v19)
  {
    v37 = v11;
    v38 = a1;
    v20 = v4;
    v21 = v18;
LABEL_7:
    v36 = (v19 - 1) & v19;
    v22 = __clz(__rbit64(v19)) | (v21 << 6);
    v23 = (*(v15 + 48) + 16 * v22);
    v24 = *v23;
    v25 = v23[1];
    (*(v5 + 16))(v7, *(v15 + 56) + *(v5 + 72) * v22, v20);
    v26 = v39;
    v27 = *(v39 + 48);
    *v14 = v24;
    *(v14 + 1) = v25;
    v28 = v7;
    v29 = v26;
    (*(v5 + 32))(&v14[v27], v28, v20);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v29);
    sub_227D4CE58();
    v30 = v36;
    v11 = v37;
    a1 = v38;
LABEL_8:
    *v1 = v15;
    v1[1] = v16;
    v1[2] = v40;
    v1[3] = v18;
    v1[4] = v30;
    v31 = v1[5];
    sub_227C70534();
    v32 = 1;
    if (__swift_getEnumTagSinglePayload(v11, 1, v29) != 1)
    {
      v33 = v35;
      sub_227C70534();
      v31(v33);
      sub_227B1DE58(v33, &qword_27D7E9A38, &qword_227D5F108);
      v32 = 0;
    }

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A58, &qword_227D5F138);
    return __swift_storeEnumTagSinglePayload(a1, v32, 1, v34);
  }

  else
  {
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= ((v17 + 64) >> 6))
      {
        v29 = v39;
        __swift_storeEnumTagSinglePayload(&v35 - v13, 1, 1, v39);
        v30 = 0;
        goto LABEL_8;
      }

      v19 = *(v16 + 8 * v21);
      ++v18;
      if (v19)
      {
        v37 = v11;
        v38 = a1;
        v20 = v4;
        v18 = v21;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_227C70534()
{
  OUTLINED_FUNCTION_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6_15();
  v3 = OUTLINED_FUNCTION_58();
  v4(v3);
  return v0;
}

void *OUTLINED_FUNCTION_85_6()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 120), v0);
}

unint64_t OUTLINED_FUNCTION_86_4(uint64_t *a1)
{
  v4 = *a1;
  *(v2 + 24) = v1;
  *(v2 + 16) = v4;

  return sub_227C5FE28();
}

uint64_t OUTLINED_FUNCTION_87_6()
{

  return sub_227C6F0A8();
}

uint64_t OUTLINED_FUNCTION_108_4()
{

  return sub_227C6F0A8();
}

uint64_t OUTLINED_FUNCTION_112_3()
{

  return sub_227C6F0A8();
}

uint64_t OUTLINED_FUNCTION_113_4()
{

  return sub_227C6F0A8();
}

unint64_t static AnySortableKey.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_227D4CF68();
  OUTLINED_FUNCTION_9();
  v39[1] = v9;
  v39[2] = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_29(v10, v39[0]);
  sub_227D492A8();
  OUTLINED_FUNCTION_9();
  v43 = v12;
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_23_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39_7();
  MEMORY[0x28223BE20](v18);
  v20 = (v39 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A70, &qword_227D5F170);
  OUTLINED_FUNCTION_5(v21);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18_12(v23, v39[0]);
  v42 = a2;
  sub_227C70C78(a2, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227C70C78(v3, v5);
      OUTLINED_FUNCTION_177();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_41_7();
        v25 = OUTLINED_FUNCTION_28_9();

        v26 = OUTLINED_FUNCTION_17_1();
        v27(v26);
        LOBYTE(v2) = v25 == -1;
LABEL_23:
        sub_227C70CDC(v3);
        return v2 & 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_177();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_227C70CDC(v3);
        LOBYTE(v2) = 0;
        return v2 & 1;
      }
    }
  }

  else
  {
    sub_227C70C78(v3, v20);
    OUTLINED_FUNCTION_177();
    if (!swift_getEnumCaseMultiPayload())
    {
      v35 = OUTLINED_FUNCTION_21_5();
      v14(v35);
      v36 = OUTLINED_FUNCTION_57_0();
      v14(v36);
      sub_227D49218();
      v37 = OUTLINED_FUNCTION_40_4();
      v20(v37);
      (v20)(v4, v5);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_34_7();
    v28(v20);
  }

  sub_227C70C78(v41, v6);
  OUTLINED_FUNCTION_33_8();
  v29 = swift_getEnumCaseMultiPayload();
  if (v29)
  {
    v30 = v40;
    if (v29 == 1)
    {
      sub_227C70CDC(v6);
      v2 = 0;
    }

    else
    {
      v2 = 1;
    }

    v32 = v42;
  }

  else
  {
    OUTLINED_FUNCTION_34_7();
    v31(v6);
    v2 = 2;
    v32 = v42;
    v30 = v40;
  }

  sub_227C70C78(v32, v30);
  v33 = swift_getEnumCaseMultiPayload();
  if (v33)
  {
    if (v33 == 1)
    {
      sub_227C70CDC(v30);
      v34 = 0;
    }

    else
    {
      v34 = 1;
    }
  }

  else
  {
    (*(v43 + 8))(v30, v44);
    v34 = 2;
  }

  LOBYTE(v2) = v2 < v34;
  sub_227B1DE58(v3, &qword_27D7E9A70, &qword_227D5F170);
  return v2 & 1;
}

uint64_t sub_227C70B60()
{
  type metadata accessor for AnySortableKey(0);
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3();
  v3 = v2 - v1;
  v4 = OUTLINED_FUNCTION_57_0();
  sub_227C70C78(v4, v5);
  OUTLINED_FUNCTION_9_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227C70CDC(v3);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    sub_227D492A8();
    OUTLINED_FUNCTION_62_0();
    (*(v8 + 8))(v3);
    return 2;
  }
}

uint64_t type metadata accessor for AnySortableKey(uint64_t a1)
{
  result = qword_27D7FE0F0;
  if (!qword_27D7FE0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227C70C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnySortableKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C70CDC(uint64_t a1)
{
  v2 = type metadata accessor for AnySortableKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static AnySortableKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_227D4CF68();
  OUTLINED_FUNCTION_9();
  v39[1] = v9;
  v39[2] = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_29(v10, v39[0]);
  sub_227D492A8();
  OUTLINED_FUNCTION_9();
  v43 = v12;
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_23_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39_7();
  MEMORY[0x28223BE20](v18);
  v20 = (v39 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A70, &qword_227D5F170);
  OUTLINED_FUNCTION_5(v21);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18_12(v23, v39[0]);
  v42 = a2;
  sub_227C70C78(a2, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227C70C78(v3, v5);
      OUTLINED_FUNCTION_177();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_41_7();
        v25 = OUTLINED_FUNCTION_28_9();

        v26 = OUTLINED_FUNCTION_17_1();
        v27(v26);
        LOBYTE(v2) = v25 == 0;
LABEL_23:
        sub_227C70CDC(v3);
        return v2 & 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_177();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_227C70CDC(v3);
        LOBYTE(v2) = 0;
        return v2 & 1;
      }
    }
  }

  else
  {
    sub_227C70C78(v3, v20);
    OUTLINED_FUNCTION_177();
    if (!swift_getEnumCaseMultiPayload())
    {
      v35 = OUTLINED_FUNCTION_21_5();
      v14(v35);
      v36 = OUTLINED_FUNCTION_57_0();
      v14(v36);
      sub_227D49268();
      v37 = OUTLINED_FUNCTION_40_4();
      v20(v37);
      (v20)(v4, v5);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_34_7();
    v28(v20);
  }

  sub_227C70C78(v41, v6);
  OUTLINED_FUNCTION_33_8();
  v29 = swift_getEnumCaseMultiPayload();
  if (v29)
  {
    v30 = v40;
    if (v29 == 1)
    {
      sub_227C70CDC(v6);
      v2 = 0;
    }

    else
    {
      v2 = 1;
    }

    v32 = v42;
  }

  else
  {
    OUTLINED_FUNCTION_34_7();
    v31(v6);
    v2 = 2;
    v32 = v42;
    v30 = v40;
  }

  sub_227C70C78(v32, v30);
  v33 = swift_getEnumCaseMultiPayload();
  if (v33)
  {
    if (v33 == 1)
    {
      sub_227C70CDC(v30);
      v34 = 0;
    }

    else
    {
      v34 = 1;
    }
  }

  else
  {
    (*(v43 + 8))(v30, v44);
    v34 = 2;
  }

  LOBYTE(v2) = v2 == v34;
  sub_227B1DE58(v3, &qword_27D7E9A70, &qword_227D5F170);
  return v2 & 1;
}

uint64_t sub_227C7111C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_5_1(1702125924, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_1(0x676E69727473, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701736302 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_5_1(1701736302, 0xE400000000000000);

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_227C71204(char a1)
{
  if (!a1)
  {
    return 1702125924;
  }

  if (a1 == 1)
  {
    return 0x676E69727473;
  }

  return 1701736302;
}

uint64_t sub_227C71250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227C7111C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227C71280()
{
  sub_227C73354();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227C712B8()
{
  sub_227C73354();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

uint64_t sub_227C712F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_227D4DA78();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_227C71368()
{
  sub_227D4DB58();
  MEMORY[0x22AAA68B0](0);
  return sub_227D4DB98();
}

uint64_t sub_227C713C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227C712F4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_227C713FC()
{
  sub_227C73450();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227C71434()
{
  sub_227C73450();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

uint64_t sub_227C71478@<X0>(_BYTE *a1@<X8>)
{
  result = j__swift_bridgeObjectRelease();
  *a1 = 1;
  return result;
}

uint64_t sub_227C714A8()
{
  sub_227C733A8();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227C714E0()
{
  sub_227C733A8();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

uint64_t sub_227C71518()
{
  sub_227C733FC();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227C71550()
{
  sub_227C733FC();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void AnySortableKey.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_351();
  v78 = v25;
  v76 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A78, &qword_227D5F178);
  OUTLINED_FUNCTION_9();
  v72 = v29;
  v73 = v28;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_26_0();
  v68 = v31;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A80, &qword_227D5F180);
  OUTLINED_FUNCTION_9();
  v69 = v32;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_26_0();
  v67 = v34;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A88, &qword_227D5F188);
  OUTLINED_FUNCTION_9();
  v66 = v35;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v36);
  v38 = &v65 - v37;
  sub_227D492A8();
  OUTLINED_FUNCTION_9();
  v74 = v40;
  v75 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3();
  v43 = v42 - v41;
  type metadata accessor for AnySortableKey(0);
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  v47 = v46 - v45;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A90, &qword_227D5F190);
  OUTLINED_FUNCTION_9();
  v49 = v48;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v50);
  v52 = &v65 - v51;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_227C73354();
  sub_227D4DC08();
  sub_227C70C78(v76, v47);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227C733FC();
      v54 = v67;
      v55 = v77;
      sub_227D4D968();
      OUTLINED_FUNCTION_177();
      v56 = v71;
      sub_227D4D9C8();

      (*(v69 + 8))(v54, v56);
      (*(v49 + 8))(v52, v55);
    }

    else
    {
      sub_227C733A8();
      v62 = v77;
      sub_227D4D968();
      v63 = OUTLINED_FUNCTION_17_1();
      v64(v63);
      (*(v49 + 8))(v52, v62);
    }
  }

  else
  {
    v57 = v66;
    (*(v74 + 32))(v43, v47, v75);
    sub_227C73450();
    v58 = v77;
    sub_227D4D968();
    OUTLINED_FUNCTION_12_12();
    sub_227C735E0(v59, v60, MEMORY[0x277CC9580]);
    v61 = v70;
    sub_227D4DA08();
    (*(v57 + 8))(v38, v61);
    (*(v74 + 8))(v43, v75);
    (*(v49 + 8))(v52, v58);
  }

  OUTLINED_FUNCTION_352();
}

void AnySortableKey.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_351();
  v112 = v24;
  v26 = v25;
  v107 = v27;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A98, &qword_227D5F198);
  OUTLINED_FUNCTION_9();
  v103 = v28;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_26_0();
  v105 = v30;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9AA0, &qword_227D5F1A0);
  OUTLINED_FUNCTION_9();
  v104 = v31;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_26_0();
  v106 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9AA8, &qword_227D5F1A8);
  OUTLINED_FUNCTION_9();
  v101 = v35;
  v102 = v34;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_26_0();
  v110 = v37;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9AB0, &qword_227D5F1B0);
  OUTLINED_FUNCTION_9();
  v109 = v38;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v39);
  v41 = &v95 - v40;
  v42 = type metadata accessor for AnySortableKey(0);
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_54_0();
  v46 = (v44 - v45);
  v48 = MEMORY[0x28223BE20](v47);
  v50 = &v95 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v95 - v51;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_227C73354();
  v53 = v112;
  sub_227D4DBF8();
  if (v53)
  {
    goto LABEL_9;
  }

  v96 = v46;
  v97 = v50;
  v98 = v52;
  v99 = v42;
  v112 = v26;
  v54 = v111;
  v55 = sub_227D4D948();
  v59 = sub_227BBA228(v55, 0);
  if (v57 == v58 >> 1)
  {
LABEL_8:
    v67 = v99;
    v68 = sub_227D4D6B8();
    swift_allocError();
    v70 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E80F8, &qword_227D57240);
    *v70 = v67;
    sub_227D4D898();
    sub_227D4D6A8();
    (*(*(v68 - 8) + 104))(v70, *MEMORY[0x277D84160], v68);
    swift_willThrow();
    swift_unknownObjectRelease();
    v71 = OUTLINED_FUNCTION_8_13();
    v72(v71);
    v26 = v112;
LABEL_9:
    v73 = v26;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v73);
    OUTLINED_FUNCTION_352();
    return;
  }

  if (v57 < (v58 >> 1))
  {
    v60 = *(v56 + v57);
    sub_227BBA270(v57 + 1, v58 >> 1, v59, v56, v57, v58);
    v62 = v61;
    v64 = v63;
    swift_unknownObjectRelease();
    v65 = v108;
    if (v62 == v64 >> 1)
    {
      if (v60)
      {
        if (v60 != 1)
        {
          sub_227C733A8();
          v79 = v105;
          OUTLINED_FUNCTION_22_9();
          sub_227D4D888();
          v80 = v107;
          swift_unknownObjectRelease();
          (*(v103 + 8))(v79, v65);
          v81 = OUTLINED_FUNCTION_8_13();
          v82(v81);
          v83 = v98;
          swift_storeEnumTagMultiPayload();
LABEL_14:
          sub_227C734A4(v83, v80);
          v73 = v112;
          goto LABEL_10;
        }

        sub_227C733FC();
        OUTLINED_FUNCTION_22_9();
        sub_227D4D888();
        v66 = v100;
        v84 = sub_227D4D8F8();
        v86 = v85;
        swift_unknownObjectRelease();
        v87 = OUTLINED_FUNCTION_17_1();
        v88(v87, v66);
        v89 = OUTLINED_FUNCTION_8_13();
        v90(v89);
        v91 = v96;
        *v96 = v84;
        v91[1] = v86;
        swift_storeEnumTagMultiPayload();
        v92 = v91;
      }

      else
      {
        sub_227C73450();
        OUTLINED_FUNCTION_22_9();
        sub_227D4D888();
        sub_227D492A8();
        OUTLINED_FUNCTION_12_12();
        sub_227C735E0(v74, v75, MEMORY[0x277CC95A0]);
        v76 = v97;
        v77 = v102;
        sub_227D4D938();
        v78 = v109;
        swift_unknownObjectRelease();
        v93 = OUTLINED_FUNCTION_17_1();
        v94(v93, v77);
        (*(v78 + 8))(v41, v54);
        swift_storeEnumTagMultiPayload();
        v92 = v76;
      }

      v83 = v98;
      sub_227C734A4(v92, v98);
      v80 = v107;
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t static AnySortableKey.create(lastPlayed:name:purchaseDate:compared:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v52 = a4;
  v53 = a3;
  v51 = a2;
  v47 = a1;
  v55 = a6;
  sub_227D4CAB8();
  OUTLINED_FUNCTION_9();
  v49 = v10;
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = OUTLINED_FUNCTION_2_29(v11, v46);
  v54 = type metadata accessor for AnySortableKey(v12);
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_23_7();
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v17);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_38_10();
  v19 = sub_227D492A8();
  OUTLINED_FUNCTION_9();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  v26 = sub_227D49678();
  OUTLINED_FUNCTION_9();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v32 = v31 - v30;
  (*(v28 + 16))(v31 - v30, a5, v26);
  v33 = (*(v28 + 88))(v32, v26);
  if (v33 == *MEMORY[0x277D0CAD0])
  {
    v34 = v53;
    if (v53)
    {
      v35 = v55;
      *v55 = v51;
      v35[1] = v34;
      swift_storeEnumTagMultiPayload();
      return sub_227D4CE58();
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (v33 == *MEMORY[0x277D0CAC0])
  {
    sub_227C73508(v52, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v19) == 1)
    {
      sub_227B1DE58(v6, &qword_27D7E6D08, &qword_227D59460);
    }

    else
    {
      v40 = *(v21 + 32);
      v40(v25, v6, v19);
      v41 = OUTLINED_FUNCTION_9_2();
      (v40)(v41);
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (v33 == *MEMORY[0x277D0CAC8])
  {
    sub_227C72618(v47, v16);
    sub_227C72618(v52, v7);
    v37 = OUTLINED_FUNCTION_33_8();
    if (static AnySortableKey.< infix(_:_:)(v37, v38))
    {
      sub_227C70CDC(v7);
      v39 = v16;
    }

    else
    {
      sub_227C70CDC(v16);
      v39 = v7;
    }

    return sub_227C734A4(v39, v55);
  }

  else
  {
    v42 = v48;
    sub_227D4AA58();
    v43 = sub_227D4CA98();
    v44 = sub_227D4D438();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_227B0D000, v43, v44, "Handling unknown sort descriptor for game library", v45, 2u);
      MEMORY[0x22AAA7130](v45, -1, -1);
    }

    (*(v49 + 8))(v42, v50);
    swift_storeEnumTagMultiPayload();
    return (*(v28 + 8))(v32, v26);
  }
}