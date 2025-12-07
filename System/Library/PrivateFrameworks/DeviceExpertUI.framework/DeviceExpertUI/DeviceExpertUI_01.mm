void sub_21E3DC250(uint64_t a1, uint64_t *a2)
{
  v2 = sub_21E3E2120();
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_3();
  sub_21E3DC5B8(v4, v5, MEMORY[0x277D047A0]);
  sub_21E3E21C0();
  __break(1u);
}

void sub_21E3DC2D8()
{
  v0 = sub_21E3E2120();
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  sub_21E3E2110();
  __break(1u);
}

uint64_t sub_21E3DC32C()
{
  v0 = sub_21E3E2160();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E50, &qword_21E3E4F50);
  sub_21E3DC554();
  sub_21E3E3570();
  sub_21E3E3590();
  v7 = sub_21E3E3580();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7;
}

uint64_t sub_21E3DC484(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E48, &qword_21E3E4F48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3DC4F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_21E3DC554()
{
  result = qword_281223738;
  if (!qword_281223738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2E50, &qword_21E3E4F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281223738);
  }

  return result;
}

uint64_t sub_21E3DC5B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E3DC600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E58, &qword_21E3E4FC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21E3DC6A4(uint64_t a1)
{
  OUTLINED_FUNCTION_22();
  v40 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2740, &unk_21E3E3E80);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v3);
  v43 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v41 = OUTLINED_FUNCTION_17(v7);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = sub_21E3E2240();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_21E3E2230();
  v22 = sub_21E3E2220();
  v24 = v23;
  (*(v16 + 8))(v20, v14);
  sub_21E3DF33C(v22, v24, v21);

  v25 = sub_21E3E21E0();
  [v21 setPunchOutUri_];

  v26 = v21;
  sub_21E3E3470();

  sub_21E3E2600();
  sub_21E3E25F0();
  sub_21E3D079C(v26);

  v27 = sub_21E3E21D0();
  OUTLINED_FUNCTION_18(v27, v28);
  (*(v9 + 104))(v13, *MEMORY[0x277D63730], v41);
  (*(v5 + 104))(v42, *MEMORY[0x277D63BF8], v43);
  sub_21E3E3360();
  v29 = sub_21E3E3370();
  v32 = objc_allocWithZone(OUTLINED_FUNCTION_7_2(v29, v30, v31, v29));
  v33 = OUTLINED_FUNCTION_13_1();
  v39 = OUTLINED_FUNCTION_5_2(v33, v34, v13, v42, v35, v36, v37, v38, v40);
  sub_21E3E3460();

  OUTLINED_FUNCTION_21();
}

void sub_21E3DC9B4(uint64_t a1)
{
  OUTLINED_FUNCTION_22();
  v42 = v2;
  v43 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2740, &unk_21E3E3E80);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = sub_21E3E22C0();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2658, &qword_21E3E3CC8);
  OUTLINED_FUNCTION_7(v21);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v22);
  v24 = &v42 - v23;
  v25 = [v4 punchOutUri];
  if (v25)
  {
    v26 = v25;
    sub_21E3E21F0();

    v27 = sub_21E3E2210();
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v27);
    sub_21E3C9BF4(v24, &qword_27CEC2658, &qword_21E3E3CC8);
    sub_21E3E3470();
    sub_21E3E2600();
    sub_21E3E25F0();
    sub_21E3D079C(v4);

    *v20 = v4;
    *(v20 + 8) = 1;
    (*(v16 + 104))(v20, *MEMORY[0x277D63720], v14);
    (*(v9 + 104))(v13, *MEMORY[0x277D63BF8], v7);
    v28 = v4;
    sub_21E3E3360();
    v29 = sub_21E3E3370();
    v32 = objc_allocWithZone(OUTLINED_FUNCTION_7_2(v29, v30, v31, v29));
    LOBYTE(v41) = 1;
    v37 = OUTLINED_FUNCTION_5_2(0, 0, v20, v13, v33, v34, v35, v36, v41);
    sub_21E3E3460();
  }

  else
  {
    v38 = sub_21E3E2210();
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v38);
    sub_21E3C9BF4(v24, &qword_27CEC2658, &qword_21E3E3CC8);
    v37 = sub_21E3E2AF0();
    v39 = sub_21E3E35B0();
    if (os_log_type_enabled(v37, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_21E3BF000, v37, v39, "Invalid or no punch out uri available", v40, 2u);
      OUTLINED_FUNCTION_10_0();
    }
  }

  OUTLINED_FUNCTION_21();
}

void sub_21E3DCD20(uint64_t a1)
{
  OUTLINED_FUNCTION_22();
  v35 = v2;
  v36 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2740, &unk_21E3E3E80);
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v4);
  v40 = &v35 - v5;
  v39 = sub_21E3E33A0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v37 = OUTLINED_FUNCTION_17(v9);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = MEMORY[0x223D57D60]();
  v18 = v17;
  v19 = MEMORY[0x223D57D50]();
  v21 = v20;
  v22 = MEMORY[0x223D57D40]();
  sub_21E3DCF90(v16, v18, v19, v21, v22, v35);

  sub_21E3E2600();
  sub_21E3E25F0();
  sub_21E3D0B2C();

  OUTLINED_FUNCTION_18(0, 0xE000000000000000);
  (*(v11 + 104))(v15, *MEMORY[0x277D63730], v37);
  v23 = v38;
  (*(v7 + 104))(v38, *MEMORY[0x277D63BF8], v39);
  sub_21E3E3360();
  v24 = sub_21E3E3370();
  v27 = objc_allocWithZone(OUTLINED_FUNCTION_7_2(v24, v25, v26, v24));
  v28 = OUTLINED_FUNCTION_13_1();
  v34 = OUTLINED_FUNCTION_5_2(v28, v29, v15, v23, v30, v31, v32, v33, v35);
  sub_21E3E3460();

  OUTLINED_FUNCTION_21();
}

uint64_t sub_21E3DCF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v74 = a6;
  v68 = a5;
  v82 = a4;
  v78 = a3;
  v79 = a1;
  v80 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E98, &qword_21E3E5090);
  MEMORY[0x28223BE20](v6 - 8);
  v81 = &v59 - v7;
  v8 = sub_21E3E2370();
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v69 = v10;
  v70 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v77 = &v59 - v11;
  v62 = sub_21E3E2410();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2EA0, &qword_21E3E5098);
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v59 - v14;
  v15 = sub_21E3E2330();
  v75 = *(v15 - 8);
  v76 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v67 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - v18;
  v20 = sub_21E3E23C0();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2EA8, &qword_21E3E50A0);
  MEMORY[0x28223BE20](v24 - 8);
  v25 = sub_21E3E23F0();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [objc_opt_self() defaultEnvironment];
  v83[3] = sub_21E3DECC0();
  v83[4] = MEMORY[0x277CEB188];
  v83[0] = v29;
  sub_21E3E23B0();
  (*(v21 + 104))(v23, *MEMORY[0x277CEB068], v20);
  sub_21E3E23E0();
  v66 = sub_21E3E23D0();
  v65 = v30;
  (*(v26 + 8))(v28, v25);
  __swift_destroy_boxed_opaque_existential_0(v83);
  v31 = sub_21E3E2340();
  __swift_storeEnumTagSinglePayload(v64, 1, 1, v31);
  sub_21E3E2430();
  v32 = v19;
  sub_21E3E2320();
  if (v68 && v68[2])
  {
    v33 = v68[5];
    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v68[4] & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      v83[0] = v68[4];
      v83[1] = v33;
      sub_21E3E2430();
      v35 = v60;
      sub_21E3E2400();
      v36 = sub_21E3C4194(0, 1, 1, MEMORY[0x277D84F90]);
      v38 = *(v36 + 16);
      v37 = *(v36 + 24);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_21E3C4194(v37 > 1, v38 + 1, 1, v36);
      }

      *(v36 + 16) = v38 + 1;
      (*(v61 + 32))(v36 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v38, v35, v62);
    }
  }

  v39 = *(v75 + 16);
  v63 = v32;
  v39(v67, v32, v76);
  sub_21E3E2430();
  v40 = v77;
  sub_21E3E2360();
  v41 = sub_21E3E3560();
  __swift_storeEnumTagSinglePayload(v81, 1, 1, v41);
  v42 = v70;
  v43 = v71;
  v44 = v72;
  (*(v71 + 16))(v70, v40, v72);
  v45 = (*(v43 + 80) + 48) & ~*(v43 + 80);
  v46 = (v69 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 2) = 0;
  *(v49 + 3) = 0;
  v50 = v65;
  *(v49 + 4) = v66;
  *(v49 + 5) = v50;
  (*(v43 + 32))(&v49[v45], v42, v44);
  v51 = v74;
  *&v49[v46] = v73;
  *&v49[v47] = v51;
  v52 = &v49[v48];
  v53 = v79;
  v54 = v82;
  *v52 = v78;
  v52[1] = v54;
  v55 = &v49[(v48 + 23) & 0xFFFFFFFFFFFFFFF8];
  v56 = v80;
  *v55 = v53;
  v55[1] = v56;
  sub_21E3E2430();
  sub_21E3E2430();
  swift_unknownObjectRetain();

  v57 = v51;
  sub_21E3DE478(0, 0, v81, &unk_21E3E50B0, v49);
  swift_unknownObjectRelease();

  (*(v43 + 8))(v77, v44);
  return (*(v75 + 8))(v63, v76);
}

uint64_t sub_21E3DD768()
{
  v1 = OBJC_IVAR____TtC14DeviceExpertUI13ActionHandler_logger;
  sub_21E3E2B00();
  OUTLINED_FUNCTION_0_0();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for ActionHandler(uint64_t a1)
{
  result = qword_27CEC2E80;
  if (!qword_27CEC2E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E3DD85C(uint64_t a1)
{
  result = sub_21E3E2B00();
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

uint64_t sub_21E3DD920()
{
  sub_21E3E3710();
  MEMORY[0x223D58B30](0);
  return sub_21E3E3730();
}

uint64_t sub_21E3DD974(uint64_t a1)
{
  sub_21E3E3710();
  MEMORY[0x223D58B30](0);
  return sub_21E3E3730();
}

uint64_t sub_21E3DD9D8()
{
  OUTLINED_FUNCTION_16();
  sub_21E3DEC6C(v0, v1, v2);
  swift_allocError();
  swift_willThrow();
  OUTLINED_FUNCTION_15();

  return v3(0);
}

uint64_t sub_21E3DDA74()
{
  OUTLINED_FUNCTION_16();
  v0 = sub_21E3E2AF0();
  v1 = sub_21E3E35C0();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_21E3BF000, v0, v1, "Unexpected disambiguation encountered due to missing target parameter. Executing the root deep link.", v2, 2u);
    OUTLINED_FUNCTION_10_0();
  }

  OUTLINED_FUNCTION_15();

  return v3(0);
}

uint64_t sub_21E3DDB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v15;
  *(v8 + 112) = v16;
  *(v8 + 88) = v14;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 48) = a4;
  v9 = sub_21E3E2240();
  *(v8 + 120) = v9;
  *(v8 + 128) = *(v9 - 8);
  *(v8 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2EB8, &qword_21E3E50D0);
  *(v8 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2EC0, &qword_21E3E50D8);
  *(v8 + 152) = swift_task_alloc();
  v10 = sub_21E3E23A0();
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 - 8);
  *(v8 + 176) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2EC8, &qword_21E3E50E0);
  *(v8 + 184) = v11;
  *(v8 + 192) = *(v11 - 8);
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E3DDD64, 0, 0);
}

uint64_t sub_21E3DDD64()
{
  v2 = v0[18];
  v1 = v0[19];
  ObjectType = swift_getObjectType();
  v4 = sub_21E3E2AC0();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v4);
  v5 = sub_21E3E2420();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v5);
  sub_21E3E2390();
  sub_21E3E2380();
  v6 = sub_21E3DF2E4();
  v7 = swift_task_alloc();
  v0[26] = v7;
  *v7 = v0;
  v7[1] = sub_21E3DDEAC;
  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[7];

  return MEMORY[0x28213DA80](v8, v10, v9, v11, v6, ObjectType, v12);
}

uint64_t sub_21E3DDEAC()
{
  OUTLINED_FUNCTION_6_2();
  v3 = v2;
  v4 = v2[22];
  v5 = v2[21];
  v6 = v2[20];
  v7 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v8 = v7;
  v3[27] = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v9 = sub_21E3DE260;
  }

  else
  {
    (*(v3[24] + 8))(v3[25], v3[23]);
    v9 = sub_21E3DE030;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_21E3DE030()
{
  v19 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  sub_21E3E2230();
  v5 = sub_21E3E2220();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  sub_21E3DF33C(v5, v7, v4);

  v8 = v4;
  sub_21E3E3470();

  sub_21E3E2430();
  sub_21E3E2430();
  v9 = sub_21E3E2AF0();
  v10 = sub_21E3E35B0();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[13];
    v11 = v0[14];
    v14 = v0[11];
    v13 = v0[12];
    v15 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_21E3C9300(v14, v13, &v18);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_21E3C9300(v12, v11, &v18);
    _os_log_impl(&dword_21E3BF000, v9, v10, "Executed app intent named %s in bundleID: %s.", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  OUTLINED_FUNCTION_20();

  OUTLINED_FUNCTION_9_2();

  return v16();
}

uint64_t sub_21E3DE260()
{
  v18 = v0;
  v1 = v0[27];
  sub_21E3E2430();
  sub_21E3E2430();
  v2 = v1;
  v3 = sub_21E3E2AF0();
  v4 = sub_21E3E35C0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v7 = v0[13];
    v6 = v0[14];
    v9 = v0[11];
    v8 = v0[12];
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_21E3C9300(v9, v8, &v17);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_21E3C9300(v7, v6, &v17);
    *(v10 + 22) = 2080;
    swift_getErrorValue();
    v11 = sub_21E3E36C0();
    v13 = sub_21E3C9300(v11, v12, &v17);

    *(v10 + 24) = v13;
    _os_log_impl(&dword_21E3BF000, v3, v4, "Unable to execute app intent named: %s in bundleID: %s. Error: %s", v10, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  else
  {
    v14 = v0[27];
  }

  OUTLINED_FUNCTION_20();

  OUTLINED_FUNCTION_9_2();

  return v15();
}

uint64_t sub_21E3DE478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E98, &qword_21E3E5090);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_21E3DF13C(a3, v24 - v10);
  v12 = sub_21E3E3560();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_21E3C9BF4(v11, &qword_27CEC2E98, &qword_21E3E5090);
  }

  else
  {
    sub_21E3E3550();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21E3E3540();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21E3E34F0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_21E3C9BF4(a3, &qword_27CEC2E98, &qword_21E3E5090);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21E3C9BF4(a3, &qword_27CEC2E98, &qword_21E3E5090);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_21E3DE74C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21E3DF504;

  return sub_21E3DD9C4();
}

uint64_t sub_21E3DE7D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21E3DF508;

  return sub_21E3DDA5C();
}

uint64_t sub_21E3DE87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21E3DF504;

  return MEMORY[0x28213DA08](a1, a2, a3);
}

uint64_t sub_21E3DE92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21E3DE9DC;

  return MEMORY[0x28213DA10](a1, a2, a3);
}

uint64_t sub_21E3DE9DC()
{
  OUTLINED_FUNCTION_8_2();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  v4 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v5 = v4;

  OUTLINED_FUNCTION_15();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_21E3DEAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21E3DEB78;

  return MEMORY[0x28213DA08](a1, a2, a3);
}

uint64_t sub_21E3DEB78()
{
  OUTLINED_FUNCTION_8_2();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  v4 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v5 = v4;

  OUTLINED_FUNCTION_15();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

unint64_t sub_21E3DEC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CEC2E90;
  if (!qword_27CEC2E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2E90);
  }

  return result;
}

unint64_t sub_21E3DECC0()
{
  result = qword_27CEC2EB0;
  if (!qword_27CEC2EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEC2EB0);
  }

  return result;
}

uint64_t sub_21E3DED04(uint64_t a1)
{
  v3 = *(sub_21E3E2370() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = v1[3];
  v13 = v1[2];
  v6 = v1[5];
  v11 = v1[4];
  v7 = *(v1 + v5);
  v8 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21E3DEE80;

  return sub_21E3DDB54(a1, v13, v12, v11, v6, v1 + v4, v7, v8);
}

uint64_t sub_21E3DEE80()
{
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_6_2();
  v1 = *v0;
  OUTLINED_FUNCTION_2_4();
  *v2 = v1;

  OUTLINED_FUNCTION_9_2();

  return v3();
}

uint64_t sub_21E3DEF60(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21E3DF058;

  return v6(a1);
}

uint64_t sub_21E3DF058()
{
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_6_2();
  v1 = *v0;
  OUTLINED_FUNCTION_2_4();
  *v2 = v1;

  OUTLINED_FUNCTION_9_2();

  return v3();
}

uint64_t sub_21E3DF13C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E98, &qword_21E3E5090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3DF1AC()
{
  OUTLINED_FUNCTION_16();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_4_0(v1);

  return v3(v2);
}

uint64_t sub_21E3DF248()
{
  OUTLINED_FUNCTION_16();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_4_0(v1);

  return v3(v2);
}

unint64_t sub_21E3DF2E4()
{
  result = qword_27CEC2ED0;
  if (!qword_27CEC2ED0)
  {
    type metadata accessor for ActionHandler(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2ED0);
  }

  return result;
}

void sub_21E3DF33C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21E3E34C0();

  [a3 setAceId_];
}

uint64_t getEnumTagSinglePayload for ActionHandler.Errors(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for ActionHandler.Errors(_BYTE *result, int a2, int a3)
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

unint64_t sub_21E3DF4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CEC2ED8;
  if (!qword_27CEC2ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2ED8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{

  return sub_21E3E3410();
}

uint64_t OUTLINED_FUNCTION_7_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(v4, 0, 1, a4);

  return sub_21E3E3420();
}

void OUTLINED_FUNCTION_10_0()
{

  JUMPOUT(0x223D58FC0);
}

uint64_t OUTLINED_FUNCTION_17@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 104) = v1 - a1;

  return sub_21E3E22C0();
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821C9588](a1, a2, 0, 0xE000000000000000, 0, 0xE000000000000000);
}

uint64_t OUTLINED_FUNCTION_19()
{

  return sub_21E3E33A0();
}

uint64_t OUTLINED_FUNCTION_20()
{
}

uint64_t type metadata accessor for AttributionView(uint64_t a1)
{
  result = qword_281223548;
  if (!qword_281223548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E3DF728(uint64_t a1)
{
  sub_21E3E2170();
  if (v1 <= 0x3F)
  {
    sub_21E3DF7C4();
    if (v2 <= 0x3F)
    {
      sub_21E3DF814(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21E3DF7C4()
{
  if (!qword_2812230B8)
  {
    v0 = sub_21E3E35F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2812230B8);
    }
  }
}

void sub_21E3DF814(uint64_t a1)
{
  if (!qword_281223050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2EE0, &qword_21E3E51B0);
    v1 = sub_21E3E35F0();
    if (!v2)
    {
      atomic_store(v1, &qword_281223050);
    }
  }
}

uint64_t sub_21E3DF894(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t *, char *), uint64_t a6)
{
  v8 = v6;
  v23 = a5;
  v24 = a6;
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E58, &qword_21E3E4FC8);
  MEMORY[0x28223BE20](v25);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E40, &qword_21E3E4F40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E50, &qword_21E3E4F50);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2EF0, &unk_21E3E5280);
  v22 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v22 - v19;
  (*(v15 + 16))(v17, v8, v14);
  sub_21E3C4DA0(&qword_281223740, &qword_27CEC2E50, &qword_21E3E4F50, MEMORY[0x277CC8BE0]);
  sub_21E3E3520();
  sub_21E3C4DA0(&qword_281223748, &qword_27CEC2EF0, &unk_21E3E5280, MEMORY[0x277CC8BC8]);
  while (1)
  {
    sub_21E3E3600();
    if (__swift_getEnumTagSinglePayload(v13, 1, v25) == 1)
    {
      break;
    }

    sub_21E3E0B30(v13, v10, &qword_27CEC2E58, &qword_21E3E4FC8);
    v23(&v26, v10);
    sub_21E3C413C(v10, &qword_27CEC2E58, &qword_21E3E4FC8);
    if (v7)
    {
      (*(v22 + 8))(v20, v18);
      sub_21E3C7F24(v26, v27, v28);
    }
  }

  (*(v22 + 8))(v20, v18);
  return v26;
}

uint64_t sub_21E3DFC04()
{
  v1 = sub_21E3E2130();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E50, &qword_21E3E4F50);
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = &v14 - v6;
  sub_21E3E2150();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_21E3E0BD0(&unk_281223750, MEMORY[0x277D047A8], MEMORY[0x277D047A0]);
  sub_21E3E2140();

  (*(v2 + 8))(v4, v1);
  v17 = v0;
  v8 = sub_21E3DF894(0, 0xE000000000000000, 0, MEMORY[0x277D84F90], sub_21E3E0B14, v16);
  v10 = v9;
  LOBYTE(v1) = v11;
  sub_21E3E2F90();
  v12 = sub_21E3E3000();
  sub_21E3C7F24(v8, v10, v1 & 1);

  (*(v5 + 8))(v7, v15);
  return v12;
}

uint64_t sub_21E3DFE94(uint64_t a1, uint64_t a2, char *a3)
{
  v82 = a3;
  v90 = a2;
  v87 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E38, &qword_21E3E4F38);
  MEMORY[0x28223BE20](v3 - 8);
  v83 = (&v74 - v4);
  v88 = sub_21E3E3310();
  v85 = *(v88 - 1);
  MEMORY[0x28223BE20](v88);
  v84 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E3E21B0();
  MEMORY[0x28223BE20](v6 - 8);
  v81 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E3E2170();
  MEMORY[0x28223BE20](v8 - 8);
  v80 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E3E2630();
  v89 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v86 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E58, &qword_21E3E4FC8);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v74 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E60, &qword_21E3E4FD0);
  MEMORY[0x28223BE20](v16);
  v18 = &v74 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2E48, &qword_21E3E4F48);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v74 - v23;
  sub_21E3E0B80(v90, v15, &qword_27CEC2E58, &qword_21E3E4FC8);
  v25 = *(v13 + 56);
  sub_21E3E0B30(v15, v24, &qword_27CEC2E48, &qword_21E3E4F48);
  sub_21E3E0B30(&v15[v25], v18, &qword_27CEC2E60, &qword_21E3E4FD0);
  sub_21E3E0B80(v24, v22, &qword_27CEC2E48, &qword_21E3E4F48);
  v90 = v10;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v10);
  v91 = v18;
  if (EnumTagSinglePayload == 1)
  {
    sub_21E3C413C(v22, &qword_27CEC2E48, &qword_21E3E4F48);
    v27 = v87;
    v28 = *(v87 + 8);
    v83 = *v87;
    v90 = v28;
    LODWORD(v89) = *(v87 + 16);
    sub_21E3C4DA0(&qword_27CEC2EF8, &qword_27CEC2E60, &qword_21E3E4FD0, MEMORY[0x277D83D30]);
    sub_21E3E2180();
    sub_21E3E2190();
    v29 = sub_21E3E30B0();
    v31 = v30;
    v33 = v32;
    v34 = v90;
    v35 = v89;
    v36 = sub_21E3E3080();
    v85 = v37;
    v86 = v36;
    LODWORD(v84) = v38;
    v88 = v39;
    sub_21E3C7F24(v29, v31, v33 & 1);

    sub_21E3C7F24(v83, v34, v35);

    sub_21E3C413C(v91, &qword_27CEC2E60, &qword_21E3E4FD0);
    result = sub_21E3C413C(v24, &qword_27CEC2E48, &qword_21E3E4F48);
    v41 = v85;
    *v27 = v86;
    *(v27 + 8) = v41;
    *(v27 + 16) = v84 & 1;
    *(v27 + 24) = v88;
  }

  else
  {
    v82 = v24;
    v42 = v87;
    (*(v89 + 32))(v86, v22, v90);
    v92 = sub_21E3E2620();
    v93 = v43;
    sub_21E3CEDE0(v92, v43, v44);
    v45 = sub_21E3E30C0();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = v83;
    sub_21E3C3448(v83);
    if (__swift_getEnumTagSinglePayload(v52, 1, v88) == 1)
    {
      sub_21E3C413C(v52, &qword_27CEC2E38, &qword_21E3E4F38);
      v53 = *v42;
      v54 = *(v42 + 8);
      v55 = *(v42 + 16);
      v56 = sub_21E3E3080();
      v84 = v57;
      v85 = v56;
      LODWORD(v83) = v58;
      v88 = v59;
      sub_21E3C7F24(v53, v54, v55);

      sub_21E3C7F24(v45, v47, v49 & 1);

      (*(v89 + 8))(v86, v90);
      sub_21E3C413C(v91, &qword_27CEC2E60, &qword_21E3E4FD0);
      result = sub_21E3C413C(v82, &qword_27CEC2E48, &qword_21E3E4F48);
      v60 = v84;
      *v42 = v85;
      *(v42 + 8) = v60;
      *(v42 + 16) = v83 & 1;
      v61 = v88;
    }

    else
    {
      (*(v85 + 32))(v84, v52, v88);
      v78 = *v42;
      v75 = *(v42 + 8);
      v62 = *(v42 + 16);
      v76 = v47;
      v79 = *(v42 + 24);
      v63 = sub_21E3E2FF0();
      v77 = v51;
      v65 = v64;
      v67 = v66;
      v68 = v75;
      v69 = sub_21E3E3080();
      v80 = v70;
      v81 = v69;
      v94 = v71;
      v83 = v72;
      sub_21E3C7F24(v45, v76, v49 & 1);

      sub_21E3C7F24(v63, v65, v67 & 1);

      sub_21E3C7F24(v78, v68, v62);

      (*(v85 + 8))(v84, v88);
      (*(v89 + 8))(v86, v90);
      sub_21E3C413C(v91, &qword_27CEC2E60, &qword_21E3E4FD0);
      result = sub_21E3C413C(v82, &qword_27CEC2E48, &qword_21E3E4F48);
      v73 = v80;
      *v42 = v81;
      *(v42 + 8) = v73;
      *(v42 + 16) = v94 & 1;
      v61 = v83;
    }

    *(v42 + 24) = v61;
  }

  return result;
}

uint64_t sub_21E3E06B4@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = type metadata accessor for AttributionView(0);
  v19[0] = *(v2 - 8);
  v3 = *(v19[0] + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2EE8, &qword_21E3E5208);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - v6;
  v8 = sub_21E3DFC04();
  v10 = v9;
  v29 = v8;
  v30 = v9;
  v12 = v11 & 1;
  v31 = v11 & 1;
  v32 = v13;
  sub_21E3E09CC(v1, v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v19[0] + 80) + 16) & ~*(v19[0] + 80);
  v15 = swift_allocObject();
  sub_21E3E0A30(v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = MEMORY[0x277CE0BD8];
  sub_21E3E30F0();

  sub_21E3C7F24(v8, v10, v12);

  v29 = v16;
  v30 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v17 = sub_21E3E30E0();
  (*(v5 + 8))(v7, v4);
  v33 = MEMORY[0x277D63A60];
  v32 = MEMORY[0x277CE11C8];
  v29 = v17;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v21 = 0u;
  v20 = 0u;
  return sub_21E3E33F0();
}

uint64_t sub_21E3E096C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for AttributionView(0);
  v7 = (a3 + *(result + 24));
  if (*v7)
  {
    return (*v7)(a1, a2);
  }

  return result;
}

uint64_t sub_21E3E09CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3E0A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3E0A94(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AttributionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21E3E096C(a1, a2, v6);
}

uint64_t sub_21E3E0B30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_1_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_21E3E0B80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_1_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_21E3E0BD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t type metadata accessor for TipCollectionBannerView(uint64_t a1)
{
  result = qword_27CEC2F00;
  if (!qword_27CEC2F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E3E0CAC(uint64_t a1)
{
  result = sub_21E3E26D0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21E3E0D34@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = sub_21E3E2AB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v52[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2F10, &qword_21E3E52F8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v52[-v8];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2F18, &qword_21E3E5300);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  v56 = &v52[-v11];
  v54 = sub_21E3E2E30();
  LOBYTE(v62[0]) = 0;
  sub_21E3E1280(v1, v74);
  memcpy(v77, v74, sizeof(v77));
  memcpy(v78, v74, 0xA8uLL);
  sub_21E3E0B80(v77, &v63, &qword_27CEC2F20, &qword_21E3E5308);
  sub_21E3C413C(v78, &qword_27CEC2F20, &qword_21E3E5308);
  memcpy(&v75[7], v77, 0xA8uLL);
  v12 = v62[0];
  v53 = sub_21E3E2F00();
  v75[176] = 1;
  sub_21E3E3300();
  sub_21E3E2CA0();
  memcpy(&v76[7], v74, 0x70uLL);
  v13 = &v9[*(v7 + 44)];
  v14 = *(sub_21E3E2C90() + 20);
  v15 = *MEMORY[0x277CE0118];
  sub_21E3E2E40();
  OUTLINED_FUNCTION_1();
  (*(v16 + 104))(&v13[v14], v15);
  __asm { FMOV            V0.2D, #16.0 }

  *v13 = _Q0;
  if (qword_27CEC2650 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v2, qword_27CEC3720);
  (*(v3 + 16))(v5, v22, v2);
  v23 = sub_21E3E3270();
  KeyPath = swift_getKeyPath();
  v25 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2F28, &qword_21E3E5340) + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  v26 = sub_21E3E3300();
  v28 = v27;
  v29 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2F30, &qword_21E3E5348) + 36)];
  *v29 = v26;
  v29[1] = v28;
  *v9 = v54;
  *(v9 + 1) = 0x4024000000000000;
  v9[16] = v12;
  memcpy(v9 + 17, v75, 0xAFuLL);
  v9[192] = v53;
  *(v9 + 193) = *v61;
  *(v9 + 49) = *&v61[3];
  *(v9 + 200) = 0u;
  *(v9 + 216) = 0u;
  v9[232] = 1;
  memcpy(v9 + 233, v76, 0x77uLL);
  type metadata accessor for CGSize(0);
  v54 = v30;
  v62[0] = 0;
  v62[1] = 0;
  sub_21E3E32A0();
  v31 = v63;
  v32 = v64;
  v33 = v65;
  v34 = sub_21E3E3240();
  v35 = swift_getKeyPath();
  v36 = sub_21E3E2FC0();
  v37 = swift_getKeyPath();
  v38 = sub_21E3E32F0();
  v40 = v39;
  v62[0] = v31;
  v62[1] = v32;
  OUTLINED_FUNCTION_6();
  v62[2] = v33;
  v62[3] = v41;
  v62[4] = 0xE90000000000006CLL;
  v62[5] = v35;
  v62[6] = v34;
  v62[7] = v37;
  v62[8] = v36;
  v62[9] = v42;
  v62[10] = v43;
  v44 = v56;
  sub_21E3E0B30(v9, v56, &qword_27CEC2F10, &qword_21E3E52F8);
  memcpy(&v44[*(v55 + 36)], v62, 0x58uLL);
  v63 = v31;
  v64 = v32;
  OUTLINED_FUNCTION_6();
  v65 = v33;
  v66 = v45;
  v67 = 0xE90000000000006CLL;
  v68 = v35;
  v69 = v34;
  v70 = v37;
  v71 = v36;
  v72 = v38;
  v73 = v40;
  sub_21E3E0B80(v62, v60, &qword_27CEC2870, &qword_21E3E5380);
  sub_21E3C413C(&v63, &qword_27CEC2870, &qword_21E3E5380);
  v58 = 0;
  v59 = 0;
  sub_21E3E32A0();
  v46 = v60[0];
  v47 = v60[1];
  v48 = v60[2];
  v49 = v57;
  sub_21E3E0B30(v44, v57, &qword_27CEC2F18, &qword_21E3E5300);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC2F38, &qword_21E3E5388);
  v51 = (v49 + *(result + 36));
  *v51 = v46;
  v51[1] = v47;
  v51[2] = v48;
  return result;
}

uint64_t sub_21E3E1280@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21E3E2690();
  v6 = v5;
  v7 = sub_21E3E2E80();
  LOBYTE(v23[0]) = 1;
  sub_21E3E1428(a1, v22);
  *&__src[7] = v22[0];
  *&__src[23] = v22[1];
  *&__src[39] = v22[2];
  *&__src[55] = v22[3];
  v8 = v23[0];
  LOBYTE(a1) = sub_21E3E2F20();
  sub_21E3E2B70();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  LOBYTE(v24[0]) = 0;
  v17 = sub_21E3E3240();
  KeyPath = swift_getKeyPath();
  v23[0] = v7;
  v23[1] = 0;
  LOBYTE(v23[2]) = v8;
  memcpy(&v23[2] + 1, __src, 0x47uLL);
  LOBYTE(v23[11]) = a1;
  v23[12] = v10;
  v23[13] = v12;
  v23[14] = v14;
  v23[15] = v16;
  LOBYTE(v23[16]) = 0;
  v23[17] = KeyPath;
  v23[18] = v17;
  *a2 = v4;
  a2[1] = v6;
  memcpy(a2 + 2, v23, 0x98uLL);
  v24[0] = v7;
  v24[1] = 0;
  v25 = v8;
  memcpy(v26, __src, 0x47uLL);
  v26[71] = a1;
  v27 = v10;
  v28 = v12;
  v29 = v14;
  v30 = v16;
  v31 = 0;
  v32 = KeyPath;
  v33 = v17;
  sub_21E3E2430();
  sub_21E3E0B80(v23, &v20, &qword_27CEC2F40, &qword_21E3E5390);
  sub_21E3C413C(v24, &qword_27CEC2F40, &qword_21E3E5390);
}

uint64_t sub_21E3E1428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v3 = sub_21E3E2FD0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E3E26B0();
  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (v8)
  {
    v11 = v8;
  }

  v50 = v10;
  v51 = v11;
  v46 = sub_21E3CEDE0(v7, v8, v9);
  v12 = sub_21E3E30C0();
  v14 = v13;
  v16 = v15;
  sub_21E3E2F40();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0A10], v3);
  sub_21E3E2FE0();

  (*(v4 + 8))(v6, v3);
  sub_21E3E2F50();

  v17 = sub_21E3E3090();
  v43 = v18;
  v44 = v17;
  HIDWORD(v42) = v19;
  v45 = v20;

  sub_21E3C7F24(v12, v14, v16 & 1);

  v21 = sub_21E3E26C0();
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  v24 = 0xE000000000000000;
  if (v22)
  {
    v24 = v22;
  }

  v50 = v23;
  v51 = v24;
  v25 = sub_21E3E30C0();
  v27 = v26;
  v29 = v28;
  sub_21E3E2F30();
  v30 = sub_21E3E3090();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_21E3C7F24(v25, v27, v29 & 1);

  v37 = BYTE4(v42) & 1;
  v48 = BYTE4(v42) & 1;
  LOBYTE(v50) = BYTE4(v42) & 1;
  LOBYTE(v25) = v34 & 1;
  v49 = v34 & 1;
  v39 = v43;
  v38 = v44;
  *a2 = v44;
  *(a2 + 8) = v39;
  *(a2 + 16) = v37;
  *(a2 + 24) = v45;
  *(a2 + 32) = v30;
  *(a2 + 40) = v32;
  *(a2 + 48) = v25;
  *(a2 + 56) = v36;
  v40 = v38;
  sub_21E3DB7AC(v38, v39, v37);
  sub_21E3E2430();
  sub_21E3DB7AC(v30, v32, v25);
  sub_21E3E2430();
  sub_21E3C7F24(v30, v32, v25);

  sub_21E3C7F24(v40, v39, v48);
}

void *sub_21E3E1710@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    v4 = sub_21E3E3300();
    v6 = v5;
    sub_21E3E1818(__src);
    memcpy(v8, __src, sizeof(v8));
    memcpy(__dst, __src, sizeof(__dst));
    sub_21E3E0B80(v8, v10, &qword_27CEC2F98, &qword_21E3E5440);
    sub_21E3C413C(__dst, &qword_27CEC2F98, &qword_21E3E5440);
    memcpy(&v10[2], v8, 0x70uLL);
    v10[0] = v4;
    v10[1] = v6;
    nullsub_1();
    memcpy(__src, v10, sizeof(__src));
  }

  else
  {
    sub_21E3E1EAC(__src);
  }

  return memcpy(a3, __src, 0x80uLL);
}

uint64_t sub_21E3E1818@<X0>(void *a3@<X8>)
{
  sub_21E3E3300();
  sub_21E3E2C20();
  v4 = sub_21E3E3240();
  KeyPath = swift_getKeyPath();
  LOBYTE(v19) = v13;
  sub_21E3E2430();
  v11 = sub_21E3E3290();
  v10 = sub_21E3E2F60();
  v9 = swift_getKeyPath();
  v8 = sub_21E3E3240();
  v6 = swift_getKeyPath();
  __src[0] = v12;
  LOBYTE(__src[1]) = v13;
  __src[2] = v14;
  LOBYTE(__src[3]) = v15;
  __src[4] = v16;
  __src[5] = v17;
  __src[6] = KeyPath;
  __src[7] = v4;
  __src[8] = 0x3FD3333333333333;
  memcpy(a3, __src, 0x48uLL);
  a3[9] = v11;
  a3[10] = v9;
  a3[11] = v10;
  a3[12] = v6;
  a3[13] = v8;
  sub_21E3E0B80(__src, &v19, &qword_27CEC2FA0, &qword_21E3E5448);
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = KeyPath;
  v26 = v4;
  v27 = 0x3FD3333333333333;
  return sub_21E3C413C(&v19, &qword_27CEC2FA0, &qword_21E3E5448);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21E3E19F4()
{
  OUTLINED_FUNCTION_2_5();
  result = sub_21E3E2D60();
  *v0 = result;
  return result;
}

uint64_t sub_21E3E1A48()
{
  OUTLINED_FUNCTION_2_5();
  result = sub_21E3E2D80();
  *v0 = result;
  return result;
}

uint64_t sub_21E3E1A9C(uint64_t a1, unsigned int a2)
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

uint64_t sub_21E3E1AF0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21E3E1B50()
{
  result = qword_27CEC2F48;
  if (!qword_27CEC2F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2F38, &qword_21E3E5388);
    v3 = sub_21E3E1BDC();
    sub_21E3CE728(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2F48);
  }

  return result;
}

unint64_t sub_21E3E1BDC()
{
  result = qword_27CEC2F50;
  if (!qword_27CEC2F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2F18, &qword_21E3E5300);
    sub_21E3E1C94();
    sub_21E3C4DA0(&qword_27CEC29A8, &qword_27CEC2870, &qword_21E3E5380, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2F50);
  }

  return result;
}

unint64_t sub_21E3E1C94()
{
  result = qword_27CEC2F58;
  if (!qword_27CEC2F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2F10, &qword_21E3E52F8);
    sub_21E3E1D4C();
    sub_21E3C4DA0(&qword_27CEC2F90, &qword_27CEC2F30, &qword_21E3E5348, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2F58);
  }

  return result;
}

unint64_t sub_21E3E1D4C()
{
  result = qword_27CEC2F60;
  if (!qword_27CEC2F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2F68, "L.");
    sub_21E3E1DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2F60);
  }

  return result;
}

unint64_t sub_21E3E1DD8()
{
  result = qword_27CEC2F70;
  if (!qword_27CEC2F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2F78, &qword_21E3E53E0);
    sub_21E3C4DA0(&qword_27CEC2F80, &qword_27CEC2F88, qword_21E3E53E8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2F70);
  }

  return result;
}

double sub_21E3E1EAC(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_21E3E1EC4()
{
  result = qword_27CEC2FA8;
  if (!qword_27CEC2FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC2FB0, &qword_21E3E5450);
    sub_21E3C4DA0(&qword_27CEC2FB8, &qword_27CEC2FC0, &qword_21E3E5458, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC2FA8);
  }

  return result;
}

id sub_21E3E1FA4()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CEC2FC8 = result;
  return result;
}

uint64_t sub_21E3E1FFC()
{
  v0 = sub_21E3E2AB0();
  __swift_allocate_value_buffer(v0, qword_27CEC3720);
  __swift_project_value_buffer(v0, qword_27CEC3720);
  if (qword_27CEC2648 != -1)
  {
    swift_once();
  }

  v1 = qword_27CEC2FC8;
  return sub_21E3E2AA0();
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