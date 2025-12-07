uint64_t static AppPredictionDataHarvesterConstants.extraItemsToLog.getter(uint64_t a1, uint64_t a2)
{
  v3 = 6;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0x6574496172747845, 0xEF676F4C6F54736DLL, sub_2267E8C58, &v3, MEMORY[0x277D83E88], &v4);
  return v4;
}

id sub_2267E80DC()
{
  result = sub_2267E80FC();
  qword_281390BF8 = result;
  return result;
}

id sub_2267E80FC()
{
  v0 = sub_226836068();
  MEMORY[0x28223BE20](v0);
  return sub_2267E87B4();
}

uint64_t *sub_2267E834C()
{
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  return &qword_281390BF8;
}

uint64_t sub_2267E839C()
{
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }
}

id AppPredictionDataHarvesterConstants.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppPredictionDataHarvesterConstants.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPredictionDataHarvesterConstants();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AppPredictionDataHarvesterConstants.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPredictionDataHarvesterConstants();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2267E857C()
{
  result = qword_27D7A2680;
  if (!qword_27D7A2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A2680);
  }

  return result;
}

unint64_t sub_2267E85E0(uint64_t a1)
{
  sub_2267A1AF8(a1, v7, &qword_27D7A1AA0, &qword_2268732C0);
  if (!v8)
  {
    sub_2267A1DC0(v7, &qword_27D7A1AA0, &qword_2268732C0);
    goto LABEL_5;
  }

  sub_2267E8768();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    v3 = 1;
    return v4 | (v3 << 32);
  }

  [v6 floatValue];
  v2 = v1;

  v3 = 0;
  v4 = v2;
  return v4 | (v3 << 32);
}

unint64_t sub_2267E86AC(uint64_t a1)
{
  sub_2267A1AF8(a1, v4, &qword_27D7A1AA0, &qword_2268732C0);
  if (v5)
  {
    sub_2267E8768();
    if (swift_dynamicCast())
    {
      v1 = [v3 integerValue];

      if ((v1 & 0x8000000000000000) == 0)
      {
        return v1;
      }
    }
  }

  else
  {
    sub_2267A1DC0(v4, &qword_27D7A1AA0, &qword_2268732C0);
  }

  return 0;
}

unint64_t sub_2267E8768()
{
  result = qword_28138F960;
  if (!qword_28138F960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28138F960);
  }

  return result;
}

id sub_2267E87B4()
{
  v33[4] = *MEMORY[0x277D85DE8];
  v30 = sub_226835068();
  v0 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1A10, &qword_226873060);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_2268350D8();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = sub_2268363F8();
  v11 = sub_2268363F8();
  v12 = [v9 pathForResource:v10 ofType:v11 isDirectory:0];

  if (!v12)
  {
    sub_2267E8C00();
    swift_allocError();
    swift_willThrow();
    return v12;
  }

  sub_226836408();

  v13 = v29;
  (*(v29 + 56))(v5, 1, 1, v6);
  (*(v0 + 104))(v2, *MEMORY[0x277CC91D8], v30);
  sub_2268350C8();
  v12 = objc_autoreleasePoolPush();
  v14 = v31;
  v15 = sub_2268350F8();
  v17 = v13;
  v18 = v8;
  if (v14)
  {
    goto LABEL_3;
  }

  v20 = v15;
  v21 = v16;
  v22 = v12;
  v23 = objc_opt_self();
  v24 = sub_226835138();
  v33[0] = 0;
  v25 = [v23 propertyListWithData:v24 options:0 format:0 error:v33];

  if (!v25)
  {
    v27 = v33[0];
    sub_226835028();

    swift_willThrow();
    sub_2267A1D24(v20, v21);
    v12 = v22;
LABEL_3:
    objc_autoreleasePoolPop(v12);
    (*(v17 + 8))(v18, v6);
    return v12;
  }

  v26 = v33[0];
  sub_226836878();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A20E8, &qword_2268745E8);
  if (swift_dynamicCast())
  {
    v12 = v32;
  }

  else
  {
    v12 = sub_2267CA88C(MEMORY[0x277D84F90]);
  }

  sub_2267A1D24(v20, v21);
  objc_autoreleasePoolPop(v22);
  (*(v17 + 8))(v18, v6);
  return v12;
}

unint64_t sub_2267E8C00()
{
  result = qword_27D7A2688;
  if (!qword_27D7A2688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A2688);
  }

  return result;
}

uint64_t sub_2267E8C68()
{
  swift_beginAccess();
  v0 = *aSports_0;

  return v0;
}

uint64_t sub_2267E8CBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aSports_0 = a1;
  qword_27D7A2698 = a2;
}

uint64_t sub_2267E8D18(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_226836068();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26A0, qword_226875858);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_2268352B8();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = sub_226835228();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v7 = sub_2268352D8();
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267E8FA4, 0, 0);
}

uint64_t sub_2267E8FA4(uint64_t a1)
{
  v3 = v1 + 14;
  v2 = v1[14];
  v4 = v1[16];
  v38 = v1[15];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[10];
  sub_2268352A8();
  v36 = *MEMORY[0x277CC9980];
  v35 = *(v5 + 104);
  v35(v6);
  sub_226835298();
  v8 = *(v5 + 8);
  v8(v6, v7);
  v9 = *(v4 + 48);
  if (v9(v2, 1, v38) == 1)
  {
    goto LABEL_4;
  }

  v3 = v1 + 13;
  v33 = v1[13];
  v34 = v1[15];
  v10 = v1[12];
  v11 = v1[10];
  v32 = *(v1[16] + 32);
  v32(v1[18], v1[14]);
  (v35)(v10, v36, v11);
  sub_226835298();
  v8(v10, v11);
  if (v9(v33, 1, v34) == 1)
  {
    (*(v1[16] + 8))(v1[18], v1[15]);
LABEL_4:
    v13 = v1[5];
    v12 = v1[6];
    v14 = v1[4];
    sub_2267A1DC0(*v3, &qword_27D7A2530, qword_2268738A0);
    v15 = sub_2267F78F4();
    (*(v13 + 16))(v12, v15, v14);
    v16 = sub_226836038();
    v17 = sub_2268366C8();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v1[5];
    v19 = v1[6];
    v21 = v1[4];
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2263AA000, v16, v17, "Unable to subtract 5 hours from date", v22, 2u);
      MEMORY[0x22AA821D0](v22, -1, -1);
    }

    (*(v20 + 8))(v19, v21);
    (*(v1[20] + 8))(v1[21], v1[19]);

    v23 = v1[1];
    v24 = MEMORY[0x277D84F90];

    return v23(v24);
  }

  (v32)(v1[17], v1[13], v1[15]);
  v26 = sub_2267EEF08();
  v27 = *v26;
  v1[22] = *v26;
  v28 = *((*MEMORY[0x277D85000] & *v27) + 0x78);
  v27;
  v37 = (v28 + *v28);
  v29 = swift_task_alloc();
  v1[23] = v29;
  *v29 = v1;
  v29[1] = sub_2267E9424;
  v30 = v1[17];
  v31 = v1[18];

  return v37(v31, v30);
}

uint64_t sub_2267E9424(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v5 = sub_2267E97C4;
  }

  else
  {
    v5 = sub_2267E9554;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2267E9554()
{
  v1 = v0[24];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v24 = v0[7];
    v25 = MEMORY[0x277D84F90];
    result = sub_2267E98E8(0, v2, 0);
    v5 = 0;
    v6 = v25;
    v7 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    while (v5 < *(v1 + 16))
    {
      v8 = v0[21];
      v9 = v0[9];
      sub_2267E9FCC(v7 + *(v3 + 72) * v5, v9);
      v10 = sub_2267E9A3C(v9, *(v9 + *(v24 + 48)), *(v9 + *(v24 + 48) + 8), v8);
      result = sub_2267A1DC0(v9, &qword_27D7A26A0, qword_226875858);
      v12 = *(v25 + 16);
      v11 = *(v25 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_2267E98E8((v11 > 1), v12 + 1, 1);
      }

      ++v5;
      *(v25 + 16) = v12 + 1;
      *(v25 + 8 * v12 + 32) = v10;
      if (v2 == v5)
      {
        v14 = v0[17];
        v13 = v0[18];
        v15 = v0[15];
        v16 = v0[16];

        v17 = *(v16 + 8);
        v17(v14, v15);
        v17(v13, v15);
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = v0[17];
    v18 = v0[18];
    v20 = v0[15];
    v21 = v0[16];

    v22 = *(v21 + 8);
    v22(v19, v20);
    v22(v18, v20);
    v6 = MEMORY[0x277D84F90];
LABEL_9:
    (*(v0[20] + 8))(v0[21], v0[19]);

    v23 = v0[1];

    return v23(v6);
  }

  return result;
}

uint64_t sub_2267E97C4()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];
  v6 = *(v0[16] + 8);
  v6(v0[17], v5);
  v6(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

void *sub_2267E98E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2267E9908(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2267E9908(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26B0, &qword_2268758A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26B8, &qword_2268758A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2267E9A3C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v52 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for SportsDependencies(0);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v45 - v8;
  v9 = sub_226836068();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v47 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2268352B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - v16;
  v18 = sub_226835228();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v45 - v24;
  (*(v12 + 104))(v14, *MEMORY[0x277CC9980], v11, v23);
  v26 = a1;
  sub_226835298();
  (*(v12 + 8))(v14, v11);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_2267A1DC0(v17, &qword_27D7A2530, qword_2268738A0);
    v27 = sub_2267F78F4();
    v29 = v47;
    v28 = v48;
    v30 = v49;
    (*(v48 + 16))(v47, v27, v49);
    v31 = sub_226836038();
    v32 = sub_2268366C8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2263AA000, v31, v32, "Unable to add 5 hours to game start date", v33, 2u);
      MEMORY[0x22AA821D0](v33, -1, -1);
    }

    (*(v28 + 8))(v29, v30);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v19 + 32))(v25, v17, v18);
    v52 = *(v19 + 16);
    v52(v21, a1, v18);
    v35 = v46;

    v36 = v50;
    sub_2267CFD64(v45, v35, v21, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26A8, "Pk\n");
    v37 = *(type metadata accessor for SportsContextEntry(0) - 8);
    v49 = *(v37 + 72);
    v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_226874180;
    v40 = v39 + v38;
    v41 = v26;
    v42 = v25;
    v43 = v52;
    v52(v21, v41, v18);
    v44 = v51;
    sub_2267D023C(v36, v51);
    sub_2267D0390(v21, 1, v44, v40);
    v43(v21, v42, v18);
    sub_2267D023C(v36, v44);
    sub_2267D0390(v21, 0, v44, v40 + v49);
    sub_2267DFB1C(v36);
    (*(v19 + 8))(v42, v18);
    return v39;
  }
}

uint64_t sub_2267E9FCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26A0, qword_226875858);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267EA0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_226835228();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_2267EA164()
{
  type metadata accessor for TimeOfDayContext(0);
  sub_2267EB018(&qword_27D7A26C0, &unk_226875900);

  return sub_2263B6BB0();
}

uint64_t sub_2267EA1E4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21AppPredictionInternal16TimeOfDayContext_dependencies;
  swift_beginAccess();
  return sub_2267EA23C(v1 + v3, a1, v4);
}

uint64_t sub_2267EA23C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for TimeOfDayContextDependencies(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2267EA2C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AppPredictionInternal16TimeOfDayContext_dependencies;
  swift_beginAccess();
  sub_2267EA320(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2267EA320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeOfDayContextDependencies(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267EA410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeOfDayContextDependencies(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267EA474()
{
  v1 = *v0;
  v2 = type metadata accessor for TimeOfDayContextDependencies(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2268352B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2268352D8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2268352A8();
  v13 = (*(v6 + 104))(v8, *MEMORY[0x277CC9980], v5);
  (*(*v0 + 112))(v13);
  v14 = sub_2268352C8();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  v15 = sub_226835228();
  v16 = (*(*(v15 - 8) + 8))(v4, v15);
  v17 = (*(v1 + 96))(v16);
  result = (*(v1 + 104))();
  if (result >= v17)
  {
    return v14 >= v17 && v14 < result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2267EA7C4(uint64_t a1)
{
  v2 = type metadata accessor for TimeOfDayContextDependencies(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2267EA908@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  *a1 = result;
  return result;
}

uint64_t sub_2267EA940@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TimeOfDayContext(0);
  sub_2267EB018(&qword_27D7A26C0, &unk_226875900);
  result = sub_2263B92B0(v2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2267EA9A4()
{
  sub_2267EB2B4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226873D10;
  *(v0 + 32) = type metadata accessor for TimeOfDayContextStore.MorningContext(0);
  *(v0 + 40) = type metadata accessor for TimeOfDayContextStore.AfternoonContext(0);
  result = type metadata accessor for TimeOfDayContextStore.EveningContext(0);
  *(v0 + 48) = result;
  qword_27D7A51F0 = v0;
  return result;
}

uint64_t *sub_2267EAA1C()
{
  if (qword_27D7A4E70 != -1)
  {
    swift_once();
  }

  return &qword_27D7A51F0;
}

uint64_t sub_2267EAA6C()
{
  if (qword_27D7A4E70 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2267EAAC8(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = v2;
  if (qword_27D7A4E70 != -1)
  {
    v2 = swift_once();
  }

  MEMORY[0x28223BE20](v2);
  v6[2] = a1;
  *(v3 + 16) = sub_2267EAD4C(sub_2267EAD20, v6, v4);
  sub_2267EA7C4(a1);
  return v3;
}

uint64_t sub_2267EABC0(uint64_t a1)
{
  v2 = a1;
  if (qword_27D7A4E70 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  v5[2] = v2;
  *(v1 + 16) = sub_2267EAD4C(sub_2267EB334, v5, v3);
  sub_2267EA7C4(v2);
  return v1;
}

uint64_t sub_2267EACA0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = type metadata accessor for TimeOfDayContext(0);
  v5 = sub_2267EB018(&qword_27D7A26C0, &unk_226875900);
  return sub_2267AD950(v3, a2, v4, v4, v5, v5);
}

uint64_t sub_2267EAD4C(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v12 = MEMORY[0x277D84F90];
    sub_226836A08();
    for (i = (a3 + 32); ; ++i)
    {
      v10 = *i;
      a1(&v11, &v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_2268369E8();
      sub_226836A18();
      sub_226836A28();
      sub_2268369F8();
      if (!--v6)
      {
        return v12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2267EAECC(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2267EA410(a1, v2 + OBJC_IVAR____TtC21AppPredictionInternal16TimeOfDayContext_dependencies);
  return v2;
}

uint64_t sub_2267EAF18()
{
  sub_2267EA7C4(v0 + OBJC_IVAR____TtC21AppPredictionInternal16TimeOfDayContext_dependencies);

  return swift_deallocClassInstance();
}

uint64_t sub_2267EAF9C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2267EAFD4(uint64_t a1)
{
  result = sub_2267EB018(&qword_27D7A26C8, &unk_22687591C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2267EB018(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TimeOfDayContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2267EB0FC(uint64_t a1)
{
  result = sub_226835228();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2267EB170(uint64_t a1)
{
  result = sub_226835228();
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

uint64_t sub_2267EB2B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26D0, "bj\n");
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27D7A26D8;
    v3 = &unk_226875A28;
  }

  else
  {
    v2 = &unk_27D7A1D70;
    v3 = &unk_226873820;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_2267EB3A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2267EB43C;

  return MEMORY[0x282176408](a1);
}

uint64_t sub_2267EB43C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2267EB58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2267A1644;

  return v9(a1, a2, a3);
}

id static RelevantContextConverter.context(from:)(void *a1)
{
  return sub_2267EC310(a1, 0x277CD3B88);
}

{
  return sub_2267EC310(a1, 0x277CDB6A0);
}

id DateRelevantContext.__allocating_init(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___ATXDateRelevantContext_startDate;
  v7 = sub_226835228();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  sub_22679CC28(a2, &v5[OBJC_IVAR___ATXDateRelevantContext_endDate]);
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_2267A5D00(a2);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id RelevantContextConverter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RelevantContextConverter();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t DateRelevantContext.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___ATXDateRelevantContext_startDate;
  v4 = sub_226835228();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id DateRelevantContext.init(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___ATXDateRelevantContext_startDate;
  v6 = sub_226835228();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  sub_22679CC28(a2, &v2[OBJC_IVAR___ATXDateRelevantContext_endDate]);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for DateRelevantContext(0);
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_2267A5D00(a2);
  (*(v7 + 8))(a1, v6);
  return v8;
}

unint64_t sub_2267EBF08()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_226835228();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22679CC28(v1 + OBJC_IVAR___ATXDateRelevantContext_endDate, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2267A5D00(v4);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_226836968();

    v14 = 0xD000000000000018;
    v15 = 0x80000002268CFF90;
    sub_2267CC684();
    v9 = sub_226836B48();
    MEMORY[0x22AA7F8E0](v9);

    MEMORY[0x22AA7F8E0](62, 0xE100000000000000);
    return v14;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_226836968();

    v14 = 0xD000000000000018;
    v15 = 0x80000002268CFF90;
    sub_2267CC684();
    v11 = sub_226836B48();
    MEMORY[0x22AA7F8E0](v11);

    MEMORY[0x22AA7F8E0](544175136, 0xE400000000000000);
    v12 = sub_226836B48();
    MEMORY[0x22AA7F8E0](v12);

    MEMORY[0x22AA7F8E0](62, 0xE100000000000000);
    v10 = v14;
    (*(v6 + 8))(v8, v5);
  }

  return v10;
}

id DateRelevantContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2267EC25C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_2267EC310(void *a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_226835228();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = a1;
    v12 = [v10 startDate];
    sub_2268351F8();

    v13 = [v10 endDate];
    if (v13)
    {
      v14 = v13;
      sub_2268351F8();

      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    (*(v7 + 56))(v5, v15, 1, v6);
    v16 = type metadata accessor for DateRelevantContext(0);
    v17 = objc_allocWithZone(v16);
    (*(v7 + 16))(v17 + OBJC_IVAR___ATXDateRelevantContext_startDate, v9, v6);
    sub_22679CC28(v5, v17 + OBJC_IVAR___ATXDateRelevantContext_endDate);
    v19.receiver = v17;
    v19.super_class = v16;
    v10 = objc_msgSendSuper2(&v19, sel_init);

    sub_2267A5D00(v5);
    (*(v7 + 8))(v9, v6);
  }

  return v10;
}

uint64_t type metadata accessor for DateRelevantContext(uint64_t a1)
{
  result = qword_2813904A0;
  if (!qword_2813904A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2267EC5C4(uint64_t a1)
{
  sub_226835228();
  if (v1 <= 0x3F)
  {
    sub_2267DF234(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2267EC6D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_2267EC7C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = sub_226836408();
  v9 = v8;
  v10 = a1;
  a5(v7, v9);

  v11 = sub_2268363F8();

  return v11;
}

uint64_t sub_2267EC8B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2267EB43C;

  return sub_2267EE26C(a1, a2);
}

uint64_t sub_2267EC964(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2267EDA1C(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_226836B38();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 8);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 2) >= v11)
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = *(v13 + 2);
          *(v13 + 4) = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26E8, &unk_226875BE0);
      v7 = sub_226836598();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_2267ED21C(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2267ECC60(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_226836408();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_2267ECD48;

  return sub_2267EE26C(v5, v7);
}

uint64_t sub_2267ECD48(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_226835018();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = sub_226836558();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

id MegadomeContextualPersonRelationships.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MegadomeContextualPersonRelationships.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MegadomeContextualPersonRelationships();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MegadomeContextualPersonRelationships.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MegadomeContextualPersonRelationships();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *sub_2267ECFD0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26F0, &qword_226875BF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26E8, &unk_226875BE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2267ED118(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26E0, &unk_226875BD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_2267ED21C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2267DE5F0(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2267ED7E0((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v27 + v10);
            v22 = (v27 + v18);
            v23 = *v21;
            v24 = v21[1];
            v25 = v21[2];
            v26 = *v22;
            *v21 = *(v22 - 1);
            v21[2] = v26;
            *(v22 - 2) = v23;
            *(v22 - 1) = v24;
            *v22 = v25;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2267DC234(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_2267DC234((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_2267ED7E0((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*(v33 - 1) >= v31)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *v33;
    v35 = *(v33 + 1);
    *v33 = *(v33 - 3);
    v33[2] = *(v33 - 1);
    *(v33 - 2) = v35;
    *(v33 - 1) = v31;
    *(v33 - 3) = v34;
    v33 -= 3;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_2267ED7E0(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 3;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 3, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 3;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 3;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

void *sub_2267EDA30(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1[2];
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = a1[2];
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v38 = a1[2];
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26F0, &qword_226875BF0);
    v7 = swift_allocObject();
    v8 = (_swift_stdlib_malloc_size(v7) - 32) / 24;
    v7[2] = v6;
    v7[3] = 2 * v8;
    v9 = a1[5];
    v10 = *(v2 + 32);
    v11 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v7[4] = a1[4];
    v7[5] = v9;
    v7[6] = v10;
    v12 = v7 + 7;
    if (v6 != 1)
    {
      v13 = 0;
      v39 = v2;
      v14 = v2 + 40;
      v15 = a1 + 7;
      do
      {

        v16 = *v15;
        v17 = *(v14 + 8 * v13);
        *v12 = *(v15 - 1);
        v12[1] = v16;
        v12[2] = v17;
        v12 += 3;
        ++v13;
        v15 += 2;
      }

      while (v6 - 1 != v13);
      v11 -= v13;
      v4 = v38;
      v2 = v39;
    }

    if (v4 <= v5)
    {
      goto LABEL_36;
    }

LABEL_12:
    v40 = v2 + 32;
    v20 = &a1[2 * v6 + 5];
    while (v6 < v4)
    {
      v21 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_41;
      }

      if (v5 == v6)
      {
        goto LABEL_36;
      }

      if (v6 >= v5)
      {
        goto LABEL_42;
      }

      v23 = *(v20 - 1);
      v22 = *v20;
      v24 = *(v40 + 8 * v6);
      if (v11)
      {

        v25 = __OFSUB__(v11--, 1);
        if (v25)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v26 = v7[3];
        if (((v26 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_44;
        }

        v27 = v26 & 0xFFFFFFFFFFFFFFFELL;
        if (v27 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26F0, &qword_226875BF0);
        v29 = swift_allocObject();
        v30 = (_swift_stdlib_malloc_size(v29) - 32) / 24;
        v29[2] = v28;
        v29[3] = 2 * v30;
        v31 = v29 + 4;
        v32 = v7[3] >> 1;
        v12 = &v29[3 * v32 + 4];
        v33 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;
        if (v7[2])
        {
          if (v29 != v7 || v31 >= &v7[3 * v32 + 4])
          {
            memmove(v31, v7 + 4, 24 * v32);
          }

          v7[2] = 0;
        }

        else
        {
        }

        v7 = v29;
        v4 = v38;
        v25 = __OFSUB__(v33, 1);
        v11 = v33 - 1;
        if (v25)
        {
          goto LABEL_43;
        }
      }

      *v12 = v23;
      v12[1] = v22;
      v12[2] = v24;
      v12 += 3;
      ++v6;
      v20 += 2;
      if (v21 == v4)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v7 = MEMORY[0x277D84F90];
  v19 = *(MEMORY[0x277D84F90] + 24);

  v12 = v7 + 4;
  v11 = v19 >> 1;
  if (v4 > v5)
  {
    goto LABEL_12;
  }

LABEL_36:
  v35 = v7[3];
  if (v35 < 2)
  {
    return v7;
  }

  v36 = v35 >> 1;
  v25 = __OFSUB__(v36, v11);
  v37 = v36 - v11;
  if (!v25)
  {
    v7[2] = v37;
    return v7;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_2267EDD08(uint64_t a1)
{
  sub_226835438();
  v3 = sub_226835418();
  v4 = sub_226835408();

  if (!v1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = MEMORY[0x277D84F90];
    v6 = sub_2268363F8();
    v9[4] = sub_2267EED2C;
    v9[5] = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_2267EC6D8;
    v9[3] = &block_descriptor_9;
    v7 = _Block_copy(v9);

    [v4 enumeratePeopleMatchingName:v6 block:v7];
    _Block_release(v7);

    swift_beginAccess();
    if (*(*(v5 + 16) + 16))
    {
      v2 = *(*(v5 + 16) + 32);
    }

    else
    {
      v2 = 0;
    }

    swift_unknownObjectRelease();
  }

  return v2;
}

void sub_2267EDEA4(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    sub_226835438();
    v4 = sub_226835418();
    v5 = sub_226835408();

    if (!v2)
    {
      v6 = sub_2268363F8();
      v7 = [v5 personForIdentifier_];

      if (v7 && (v8 = [v7 entityIdentifier], v9 = objc_msgSend(v8, sel_stringValue), v8, v9))
      {
        sub_226836408();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

void *sub_2267EDFEC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26F8, &unk_226875BF8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = sub_2268353C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226835438();
  v13 = sub_226835418();
  sub_226835428();

  if (!v2)
  {
    v18 = v10;
    sub_2268353B8();
    sub_2267A1AF8(v8, v5, &qword_27D7A26F8, &unk_226875BF8);
    v14 = sub_226835458();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v5, 1, v14) == 1)
    {
      sub_2267A1DC0(v5, &qword_27D7A26F8, &unk_226875BF8);
      v13 = 0;
    }

    else
    {
      v13 = sub_226835448();
      (*(v15 + 8))(v5, v14);
    }

    sub_2267A1DC0(v8, &qword_27D7A26F8, &unk_226875BF8);
    (*(v18 + 8))(v12, v9);
  }

  return v13;
}

uint64_t sub_2267EE26C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_226835478();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267EE32C, 0, 0);
}

uint64_t sub_2267EE32C()
{
  v1 = v0[3];
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = objc_allocWithZone(sub_226835518());
    v0[7] = sub_226835508();
    v10 = (*MEMORY[0x277D1F3D0] + MEMORY[0x277D1F3D0]);
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_2267EE4A8;
    v9 = v0[2];
    v8 = v0[3];

    return v10(v9, v8, 0);
  }

  else
  {

    v4 = v0[1];
    v5 = MEMORY[0x277D84F90];

    return v4(v5);
  }
}

uint64_t sub_2267EE4A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_2267EE9C0;
  }

  else
  {
    v4 = sub_2267EE5BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

unint64_t sub_2267EE5BC()
{
  v51 = v0;
  result = sub_2268354F8();
  v2 = result;
  if (result >> 62)
  {
    result = sub_2268368D8();
    v3 = result;
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  v48 = v0;
  if (v3)
  {
    if (v3 < 1)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = *(v0 + 40);
    v7 = v2;
    v8 = v2 & 0xC000000000000001;
    v46 = (v6 + 8);
    v9 = MEMORY[0x277D84F90];
    v4 = MEMORY[0x277D84F90];
    v47 = v2;
    do
    {
      if (v8)
      {
        v10 = MEMORY[0x22AA7FDD0](v5, v7);
      }

      else
      {
        v10 = *(v7 + 8 * v5 + 32);
      }

      v11 = v10;
      sub_2268354E8();
      if (v12 <= 0.5)
      {
      }

      else
      {
        v13 = v3;
        v14 = v8;
        v15 = v4;
        v16 = *(v48 + 48);
        v17 = v9;
        v18 = *(v48 + 32);
        sub_2268354D8();
        v19 = sub_226835468();
        v21 = v20;
        v22 = v18;
        v9 = v17;
        (*v46)(v16, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2267A046C(0, *(v17 + 2) + 1, 1, v17);
        }

        v24 = *(v9 + 2);
        v23 = *(v9 + 3);
        if (v24 >= v23 >> 1)
        {
          v9 = sub_2267A046C((v23 > 1), v24 + 1, 1, v9);
        }

        *(v9 + 2) = v24 + 1;
        v25 = &v9[16 * v24];
        *(v25 + 4) = v19;
        *(v25 + 5) = v21;
        sub_2268354E8();
        v27 = v26;
        v4 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_2267ED118(0, *(v15 + 2) + 1, 1, v15);
        }

        v8 = v14;
        v3 = v13;
        v7 = v47;
        v29 = *(v4 + 2);
        v28 = *(v4 + 3);
        if (v29 >= v28 >> 1)
        {
          v4 = sub_2267ED118((v28 > 1), v29 + 1, 1, v4);
        }

        *(v4 + 2) = v29 + 1;
        *&v4[8 * v29 + 32] = v27;
      }

      ++v5;
    }

    while (v3 != v5);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v30 = v48;

  v31 = sub_2267EDA30(v9, v4);

  v49 = v31;
  sub_2267EC964(&v49);
  v32 = v49;
  v33 = v49[2];
  if (v33)
  {
    v50 = MEMORY[0x277D84F90];
    sub_2267A0578(0, v33, 0);
    v34 = 0;
    v35 = v50;
    v36 = *(v50 + 16);
    v37 = 16 * v36;
    do
    {
      v39 = *(v32 + v34 + 32);
      v38 = *(v32 + v34 + 40);
      v50 = v35;
      v40 = *(v35 + 24);

      if (v36 >= v40 >> 1)
      {
        sub_2267A0578((v40 > 1), v36 + 1, 1);
        v35 = v50;
      }

      *(v35 + 16) = v36 + 1;
      v41 = v35 + v37;
      *(v41 + 32) = v39;
      *(v41 + 40) = v38;
      v37 += 16;
      v34 += 24;
      ++v36;
      --v33;
    }

    while (v33);
    v30 = v48;
    v42 = *(v48 + 56);
  }

  else
  {
    v43 = *(v48 + 72);
    v44 = *(v48 + 56);

    v35 = MEMORY[0x277D84F90];
  }

  v45 = *(v30 + 8);

  return v45(v35);
}

uint64_t sub_2267EE9C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t dispatch thunk of MegadomeContextualPersonRelationships.entityRelationships(from:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x68);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2267A1644;

  return v9(a1, a2);
}

uint64_t sub_2267EEC78()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2263BA0A4;

  return sub_2267ECC60(v2, v3, v4);
}

void sub_2267EED2C(void *a1)
{
  v2 = [a1 entityIdentifier];
  v3 = [v2 stringValue];

  if (v3)
  {
    v4 = sub_226836408();
    v6 = v5;

    swift_beginAccess();
    v7 = *(v1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2267A046C(0, *(v7 + 2) + 1, 1, v7);
      *(v1 + 16) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2267A046C((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[16 * v10];
    *(v11 + 4) = v4;
    *(v11 + 5) = v6;
    *(v1 + 16) = v7;
    swift_endAccess();
  }
}

id sub_2267EEE40()
{
  v1 = OBJC_IVAR___ATXSportsServer____lazy_storage___listener;
  v2 = *(v0 + OBJC_IVAR___ATXSportsServer____lazy_storage___listener);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ATXSportsServer____lazy_storage___listener);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCAE98]) initWithMachServiceName_];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2267EEED8()
{
  result = [objc_allocWithZone(type metadata accessor for SportsServer()) init];
  qword_2813905F0 = result;
  return result;
}

uint64_t *sub_2267EEF08()
{
  if (qword_2813905E8 != -1)
  {
    swift_once();
  }

  return &qword_2813905F0;
}

id static SportsServer.shared.getter()
{
  if (qword_2813905E8 != -1)
  {
    swift_once();
  }

  v1 = qword_2813905F0;

  return v1;
}

id sub_2267EF010()
{
  v1 = sub_226836068();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR___ATXSportsServer____lazy_storage___listener] = 0;
  v5 = type metadata accessor for SportsServer();
  v13.receiver = v0;
  v13.super_class = v5;
  v6 = objc_msgSendSuper2(&v13, sel_init);
  v7 = sub_226799540();
  (*(v2 + 16))(v4, v7, v1);
  v8 = sub_226836038();
  v9 = sub_2268366E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2263AA000, v8, v9, "SportsServer: init", v10, 2u);
    MEMORY[0x22AA821D0](v10, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v11 = sub_2267EEE40();
  [v11 resume];

  return v6;
}

uint64_t sub_2267EF20C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2267EB43C;

  return sub_2267F5388();
}

uint64_t sub_2267EF420(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2267EF4C8;

  return sub_2267F5388();
}

uint64_t sub_2267EF4C8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 16);
  if (v3)
  {
    v8 = sub_226835018();

    (v7)[2](v7, 0, v8);
    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_2267EF648(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26A0, qword_226875858);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = sub_226835228();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v7 = sub_226836068();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267EF88C, 0, 0);
}

uint64_t sub_2267EF88C()
{
  v44 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = sub_226799540();
  *(v0 + 192) = v10;
  v11 = *(v3 + 16);
  *(v0 + 200) = v11;
  *(v0 + 208) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v1, v10, v2);
  v12 = *(v7 + 16);
  v12(v4, v9, v6);
  v12(v5, v8, v6);
  v13 = sub_226836038();
  v14 = sub_2268366E8();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 184);
  v18 = *(v0 + 152);
  v17 = *(v0 + 160);
  v20 = *(v0 + 136);
  v19 = *(v0 + 144);
  v22 = *(v0 + 120);
  v21 = *(v0 + 128);
  if (v15)
  {
    v41 = *(v0 + 152);
    v23 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v43 = v38;
    *v23 = 136315394;
    sub_2267F7294(&qword_28138FE40, MEMORY[0x277CC95B8]);
    v40 = v17;
    v39 = v16;
    v24 = sub_226836B48();
    v37 = v14;
    v26 = v25;
    log = v13;
    v27 = *(v21 + 8);
    v27(v19, v22);
    v28 = sub_2263B4D48(v24, v26, &v43);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    v29 = sub_226836B48();
    v31 = v30;
    v27(v20, v22);
    v32 = sub_2263B4D48(v29, v31, &v43);

    *(v23 + 14) = v32;
    _os_log_impl(&dword_2263AA000, log, v37, "SportsServer: scheduledGameQIDs %s - %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA821D0](v38, -1, -1);
    MEMORY[0x22AA821D0](v23, -1, -1);

    v33 = *(v40 + 8);
    v33(v39, v41);
  }

  else
  {

    v27 = *(v21 + 8);
    v27(v20, v22);
    v27(v19, v22);
    v33 = *(v17 + 8);
    v33(v16, v18);
  }

  *(v0 + 216) = v27;
  *(v0 + 224) = v33;
  v42 = (*((*MEMORY[0x277D85000] & **(v0 + 32)) + 0x70) + **((*MEMORY[0x277D85000] & **(v0 + 32)) + 0x70));
  v34 = swift_task_alloc();
  *(v0 + 232) = v34;
  *v34 = v0;
  v34[1] = sub_2267EFC58;

  return v42();
}

uint64_t sub_2267EFC58(uint64_t a1)
{
  v3 = *v2;
  v3[30] = a1;
  v3[31] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2267EFE30, 0, 0);
  }
}

uint64_t sub_2267EFE30()
{
  v89 = v0;
  v1 = [*(v0 + 240) teams];
  sub_2263B5030(0, &qword_28138F9A8, 0x277CEB858);
  v2 = sub_226836568();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v85 = v0;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v4 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_2268368D8();
  v85 = v0;
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v0 = 0;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = v0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AA7FDD0](v5, v2);
        v0 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(v2 + 8 * v5 + 32);
        v0 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v7 = v6;
      v8 = [v7 umcid];
      if (v8)
      {
        break;
      }

      ++v5;
      if (v0 == v3)
      {
        goto LABEL_24;
      }
    }

    v9 = v8;
    v10 = sub_226836408();
    v82 = v11;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2267A046C(0, *(v4 + 2) + 1, 1, v4);
    }

    v13 = *(v4 + 2);
    v12 = *(v4 + 3);
    if (v13 >= v12 >> 1)
    {
      v4 = sub_2267A046C((v12 > 1), v13 + 1, 1, v4);
    }

    *(v4 + 2) = v13 + 1;
    v14 = &v4[16 * v13];
    *(v14 + 4) = v10;
    *(v14 + 5) = v82;
  }

  while (v0 != v3);
LABEL_24:
  v15 = v85;
  v16 = *(v85 + 248);
  v18 = *(v85 + 16);
  v17 = *(v85 + 24);

  v19 = sub_2267A5D68(v4);

  v20 = sub_2267F63A4(v18, v17);
  if (v16)
  {
    v21 = *(v85 + 240);

    v22 = *(v85 + 8);

    return v22();
  }

  else
  {
    v24 = v20;
    (*(v85 + 200))(*(v85 + 176), *(v85 + 192), *(v85 + 152));

    v25 = sub_226836038();
    v26 = sub_2268366E8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = *(v24 + 16);

      _os_log_impl(&dword_2263AA000, v25, v26, "SportsServer: games returned %ld", v27, 0xCu);
      MEMORY[0x22AA821D0](v27, -1, -1);
    }

    else
    {
    }

    result = (*(v85 + 224))(*(v85 + 176), *(v85 + 152));
    v83 = *(v24 + 16);
    if (v83)
    {
      v28 = 0;
      v78 = *(v85 + 64);
      v80 = *(v85 + 72);
      v29 = v19 + 56;
      v76 = MEMORY[0x277D84F90];
      while (v28 < *(v24 + 16))
      {
        v30 = *(v15 + 112);
        v31 = (*(v80 + 80) + 32) & ~*(v80 + 80);
        v32 = *(v80 + 72);
        v33 = v24;
        sub_2267A1AF8(v24 + v31 + v32 * v28, v30, &unk_27D7A2710, &qword_226875C20);
        if (*(v19 + 16) && (v34 = (v30 + *(v78 + 64)), v35 = *v34, v36 = v34[1], sub_226836C08(), sub_226836498(), v37 = sub_226836C48(), v38 = -1 << *(v19 + 32), v39 = v37 & ~v38, ((*(v29 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0))
        {
          v40 = ~v38;
          while (1)
          {
            v41 = (*(v19 + 48) + 16 * v39);
            v42 = *v41 == v35 && v41[1] == v36;
            if (v42 || (sub_226836B58() & 1) != 0)
            {
              break;
            }

            v39 = (v39 + 1) & v40;
            if (((*(v29 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          v15 = v85;
          sub_2267F72D8(*(v85 + 112), *(v85 + 104), &unk_27D7A2710, &qword_226875C20);
          v43 = v76;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2267F3E2C(0, *(v76 + 16) + 1, 1);
            v43 = v76;
          }

          v45 = *(v43 + 16);
          v44 = *(v43 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_2267F3E2C((v44 > 1), v45 + 1, 1);
            v43 = v76;
          }

          v46 = *(v85 + 104);
          *(v43 + 16) = v45 + 1;
          v76 = v43;
          result = sub_2267F72D8(v46, v43 + v31 + v45 * v32, &unk_27D7A2710, &qword_226875C20);
        }

        else
        {
LABEL_33:
          v15 = v85;
          result = sub_2267A1DC0(*(v85 + 112), &unk_27D7A2710, &qword_226875C20);
        }

        ++v28;
        v24 = v33;
        if (v28 == v83)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
    }

    else
    {
      v76 = MEMORY[0x277D84F90];
LABEL_52:
      v88[0] = v76;

      sub_2267F2A70(v88);

      v47 = v88[0];
      v48 = *(v88[0] + 16);
      if (v48)
      {
        v49 = *(v15 + 128);
        v50 = *(v15 + 72);
        v77 = *(v15 + 48);
        v79 = *(v15 + 64);
        v75 = *(v15 + 40);
        v88[0] = MEMORY[0x277D84F90];
        sub_2267F3DEC(0, v48, 0);
        v51 = v88[0];
        v52 = v47 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
        v73 = *(v50 + 72);
        v74 = (v49 + 32);
        do
        {
          v84 = v48;
          v86 = v51;
          v81 = *(v15 + 216);
          v53 = *(v15 + 120);
          v55 = *(v15 + 88);
          v54 = *(v15 + 96);
          v56 = v15;
          v57 = *(v15 + 80);
          v58 = *(v56 + 56);
          sub_2267A1AF8(v52, v54, &unk_27D7A2710, &qword_226875C20);
          v59 = (v58 + *(v75 + 48));
          sub_2267A1AF8(v54, v55, &unk_27D7A2710, &qword_226875C20);

          (*v74)(v58, v55, v53);
          sub_2267F72D8(v54, v57, &unk_27D7A2710, &qword_226875C20);
          v60 = (v57 + *(v79 + 48));
          v61 = *v60;
          v62 = v60[1];

          *v59 = v61;
          v59[1] = v62;
          v51 = v86;
          v81(v57, v53);
          v88[0] = v86;
          v64 = *(v86 + 16);
          v63 = *(v86 + 24);
          if (v64 >= v63 >> 1)
          {
            sub_2267F3DEC((v63 > 1), v64 + 1, 1);
            v51 = v88[0];
          }

          v65 = *(v56 + 56);
          *(v51 + 16) = v64 + 1;
          sub_2267F72D8(v65, v51 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v64, &qword_27D7A26A0, qword_226875858);
          v52 += v73;
          --v48;
          v15 = v56;
        }

        while (v84 != 1);
      }

      else
      {

        v51 = MEMORY[0x277D84F90];
      }

      (*(v15 + 200))(*(v15 + 168), *(v15 + 192), *(v15 + 152));

      v66 = sub_226836038();
      v67 = sub_2268366E8();
      v87 = v51;
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 134217984;
        *(v68 + 4) = *(v51 + 16);

        _os_log_impl(&dword_2263AA000, v66, v67, "SportsServer: games filtered %ld", v68, 0xCu);
        MEMORY[0x22AA821D0](v68, -1, -1);
      }

      else
      {
      }

      v69 = *(v15 + 224);
      v70 = *(v15 + 168);
      v71 = *(v15 + 152);

      v69(v70, v71);

      v72 = *(v15 + 8);

      return v72(v87);
    }
  }

  return result;
}

uint64_t sub_2267F0874(uint64_t (*a1)(void), const char *a2)
{
  v4 = sub_226836068();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226799540();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_226836038();
  v10 = a1();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2263AA000, v9, v10, a2, v11, 2u);
    MEMORY[0x22AA821D0](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2267F0A34(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1D38, &unk_226874A70);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2267F0B00(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1D38, &unk_226874A70);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A27F8, qword_226875D38);
    **(*(v4 + 64) + 40) = sub_226836568();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_2267F0BEC(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t *a4)
{
  v235 = a4;
  v257 = a3;
  v231 = a2;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20);
  v233 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v240 = &v227 - v4;
  v5 = sub_2268354B8();
  v258 = *(v5 - 8);
  v259 = v5;
  MEMORY[0x28223BE20](v5);
  v251 = &v227 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v227 - v8;
  MEMORY[0x28223BE20](v10);
  v232 = &v227 - v11;
  MEMORY[0x28223BE20](v12);
  v254 = &v227 - v13;
  MEMORY[0x28223BE20](v14);
  v252 = (&v227 - v15);
  MEMORY[0x28223BE20](v16);
  v247 = &v227 - v17;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2740, &qword_226875CE8);
  MEMORY[0x28223BE20](v256);
  v250 = (&v227 - v18);
  v237 = sub_226836068();
  v242 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v238 = &v227 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v239 = &v227 - v21;
  MEMORY[0x28223BE20](v22);
  v241 = &v227 - v23;
  MEMORY[0x28223BE20](v24);
  v230 = &v227 - v25;
  MEMORY[0x28223BE20](v26);
  v253 = (&v227 - v27);
  MEMORY[0x28223BE20](v28);
  v30 = &v227 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2750, &unk_226875CF0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v227 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v227 - v35;
  v37 = sub_226835228();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v236 = &v227 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v248 = &v227 - v41;
  MEMORY[0x28223BE20](v42);
  v243 = &v227 - v43;
  MEMORY[0x28223BE20](v44);
  v229 = (&v227 - v45);
  MEMORY[0x28223BE20](v46);
  v48 = &v227 - v47;
  MEMORY[0x28223BE20](v49);
  v255 = &v227 - v50;
  sub_2268354C8();
  v51 = sub_226835538();
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v33, 1, v51) != 1)
  {
    sub_226835528();
    (*(v52 + 8))(v33, v51);
    if ((v38[6])(v36, 1, v37) == 1)
    {
      goto LABEL_4;
    }

    v245 = v9;
    v249 = v38;
    (v38[4])(v255, v36, v37);
    sub_2267F7294(&qword_28138FCC0, MEMORY[0x277CC9590]);
    v60 = v257;
    v61 = sub_2268363B8();
    v62 = v259;
    v63 = v237;
    v64 = v243;
    if ((v61 & 1) == 0 || (sub_226836398() & 1) == 0)
    {
      v65 = sub_226799540();
      v66 = v253;
      (*(v242 + 16))(v253, v65, v63);
      v67 = v60;
      v68 = v249;
      (v249[2])(v48, v255, v37);
      v69 = v67;
      v70 = v250;
      sub_2267A1AF8(v69, v250, &unk_27D7A2740, &qword_226875CE8);
      v71 = v63;
      v72 = sub_226836038();
      v73 = sub_2268366D8();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v257 = swift_slowAlloc();
        v260[0] = v257;
        *v74 = 136315394;
        sub_2267F7294(&qword_28138FE40, MEMORY[0x277CC95B8]);
        v75 = sub_226836B48();
        v77 = v76;
        (v68[1])(v48, v37);
        v78 = sub_2263B4D48(v75, v77, v260);

        *(v74 + 4) = v78;
        *(v74 + 12) = 2080;
        v261 = 0;
        v262 = 0xE000000000000000;
        sub_226836A48();
        MEMORY[0x22AA7F8E0](3943982, 0xE300000000000000);
        v62 = v259;
        sub_226836A48();
        v79 = v261;
        v80 = v262;
        sub_2267A1DC0(v70, &unk_27D7A2740, &qword_226875CE8);
        v81 = sub_2263B4D48(v79, v80, v260);

        *(v74 + 14) = v81;
        _os_log_impl(&dword_2263AA000, v72, v73, "SportsServer: Returned date is out of requested bounds [%s] %s", v74, 0x16u);
        v82 = v257;
        swift_arrayDestroy();
        MEMORY[0x22AA821D0](v82, -1, -1);
        v83 = v74;
        v64 = v243;
        MEMORY[0x22AA821D0](v83, -1, -1);

        v63 = v237;
        (*(v242 + 8))(v66, v237);
      }

      else
      {

        sub_2267A1DC0(v70, &unk_27D7A2740, &qword_226875CE8);
        (v68[1])(v48, v37);
        (*(v242 + 8))(v66, v71);
        v63 = v71;
      }
    }

    v246 = v37;
    v84 = *(v231 + 16);
    v85 = v245;
    v257 = v84;
    if (v84)
    {
      v253 = *(v258 + 16);
      v244 = (*(v258 + 80) + 32) & ~*(v258 + 80);
      v86 = v231 + v244;
      v87 = *(v258 + 72);
      v250 = (v258 + 32);
      v256 = v258 + 16;
      v88 = (v258 + 8);
      v89 = MEMORY[0x277D84F90];
      v90 = v231 + v244;
      v91 = v247;
      (v253)(v247, v231 + v244, v62);
      while (1)
      {
        v92 = sub_226835488();
        if (v93 && (v261 = v92, v262 = v93, v260[0] = 778268021, v260[1] = 0xE400000000000000, sub_2267F7370(), sub_2267F73C4(), v94 = sub_226836378(), v62 = v259, , (v94 & 1) != 0))
        {
          isa = v250->isa;
          (v250->isa)(v252, v91, v62);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v263 = v89;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2267F3E6C(0, *(v89 + 16) + 1, 1, v97);
            v89 = v263;
          }

          v99 = *(v89 + 16);
          v98 = *(v89 + 24);
          if (v99 >= v98 >> 1)
          {
            sub_2267F3E6C((v98 > 1), v99 + 1, 1, v97);
            v89 = v263;
          }

          *(v89 + 16) = v99 + 1;
          v62 = v259;
          (isa)(v89 + v244 + v99 * v87, v252, v259);
          v91 = v247;
        }

        else
        {
          (*v88)(v91, v62);
        }

        v90 += v87;
        if (!--v84)
        {
          break;
        }

        (v253)(v91, v90, v62);
      }

      v253 = *(v89 + 16);

      v260[0] = MEMORY[0x277D84F90];
      v100 = v257;
      sub_2267A0578(0, v257, 0);
      v101 = v260[0];
      do
      {
        v261 = 10;
        v262 = 0xE100000000000000;
        v102 = sub_2268354A8();
        if (v103)
        {
          v104 = v103;
        }

        else
        {
          v102 = 7104878;
          v104 = 0xE300000000000000;
        }

        MEMORY[0x22AA7F8E0](v102, v104);

        MEMORY[0x22AA7F8E0](8250, 0xE200000000000000);
        v105 = sub_226835498();
        if (v106)
        {
          v107 = v106;
        }

        else
        {
          v105 = 7104878;
          v107 = 0xE300000000000000;
        }

        MEMORY[0x22AA7F8E0](v105, v107);

        MEMORY[0x22AA7F8E0](2112032, 0xE300000000000000);
        v108 = sub_226835488();
        if (v109)
        {
          v110 = v109;
        }

        else
        {
          v108 = 7104878;
          v110 = 0xE300000000000000;
        }

        MEMORY[0x22AA7F8E0](v108, v110);

        v112 = v261;
        v111 = v262;
        v260[0] = v101;
        v114 = *(v101 + 16);
        v113 = *(v101 + 24);
        if (v114 >= v113 >> 1)
        {
          sub_2267A0578((v113 > 1), v114 + 1, 1);
          v101 = v260[0];
        }

        *(v101 + 16) = v114 + 1;
        v115 = v101 + 16 * v114;
        *(v115 + 32) = v112;
        *(v115 + 40) = v111;
        v86 += v87;
        --v100;
      }

      while (v100);
      v63 = v237;
      v62 = v259;
      v116 = v245;
      v64 = v243;
      v117 = v253;
    }

    else
    {
      v101 = MEMORY[0x277D84F90];
      v117 = *(MEMORY[0x277D84F90] + 16);

      v116 = v85;
    }

    v261 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1CC0, qword_226873D50);
    sub_2267D503C();
    v252 = sub_226836388();
    v256 = v118;

    v119 = v254;
    v120 = v238;
    v121 = v242;
    v122 = v241;
    if (!v117)
    {
      v253 = 0;
      v123 = sub_226799540();
      (*(v121 + 16))(v230, v123, v63);
      v124 = v229;
      v125 = v246;
      (v249[2])(v229, v255, v246);
      v126 = v256;

      v127 = sub_226836038();
      v128 = v63;
      v129 = sub_2268366D8();

      if (os_log_type_enabled(v127, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v261 = v131;
        *v130 = 136315394;
        sub_2267F7294(&qword_28138FE40, MEMORY[0x277CC95B8]);
        v250 = v127;
        v132 = sub_226836B48();
        v134 = v133;
        (v249[1])(v124, v125);
        v135 = sub_2263B4D48(v132, v134, &v261);
        v119 = v254;

        *(v130 + 4) = v135;
        *(v130 + 12) = 2080;
        *(v130 + 14) = sub_2263B4D48(v252, v126, &v261);
        v136 = v250;
        _os_log_impl(&dword_2263AA000, v250, v129, "SportsServer: No umcids found for game at %s with teams: %s", v130, 0x16u);
        swift_arrayDestroy();
        v137 = v131;
        v62 = v259;
        MEMORY[0x22AA821D0](v137, -1, -1);
        v138 = v130;
        v120 = v238;
        MEMORY[0x22AA821D0](v138, -1, -1);
      }

      else
      {

        (v249[1])(v124, v125);
      }

      v121 = v242;
      (*(v242 + 8))(v230, v128);
      v63 = v128;
      v122 = v241;
      v64 = v243;
      v117 = v253;
    }

    v139 = v257;
    if (v117 == v257)
    {

      v141 = v248;
      if (v139)
      {
LABEL_46:
        v142 = *(v258 + 16);
        v143 = v231 + ((*(v258 + 80) + 32) & ~*(v258 + 80));
        v252 = (v249 + 2);
        v244 = *(v258 + 72);
        v243 = (v121 + 16);
        v258 += 16;
        ++v249;
        v250 = (v258 - 8);
        v242 = v121 + 8;
        *&v140 = 136315650;
        v228 = v140;
        *&v140 = 136315906;
        v227 = v140;
        v247 = v142;
        while (1)
        {
          v256 = v143;
          (v142)(v119);
          v253 = sub_226835498();
          v257 = v139;
          if (v145)
          {
            v146 = v145;
            v147 = sub_226835488();
            if (v148)
            {
              v149 = v148;
              v150 = v141;
              v151 = v63;
              v152 = v147;
              v153 = (v240 + *(v234 + 48));
              v154 = (v240 + *(v234 + 64));
              v155 = *v252;
              v156 = v246;
              (*v252)();
              *v153 = v253;
              v153[1] = v146;
              v231 = v152;
              *v154 = v152;
              v154[1] = v149;
              v157 = v235;
              v158 = *v235;

              v159 = swift_isUniquelyReferenced_nonNull_native();
              *v157 = v158;
              if ((v159 & 1) == 0)
              {
                v158 = sub_2267F2880(0, v158[2] + 1, 1, v158);
                *v235 = v158;
              }

              v160 = v239;
              v162 = v158[2];
              v161 = v158[3];
              if (v162 >= v161 >> 1)
              {
                v158 = sub_2267F2880((v161 > 1), v162 + 1, 1, v158);
                *v235 = v158;
              }

              v158[2] = v162 + 1;
              sub_2267F72D8(v240, v158 + ((*(v233 + 80) + 32) & ~*(v233 + 80)) + *(v233 + 72) * v162, &unk_27D7A2710, &qword_226875C20);
              v163 = sub_226799540();
              (*v243)(v160, v163, v151);
              v141 = v150;
              (v155)(v150, v255, v156);
              v164 = v232;
              v62 = v259;
              v142 = v247;
              (v247)(v232, v254, v259);

              v165 = sub_226836038();
              v166 = sub_2268366E8();

              if (os_log_type_enabled(v165, v166))
              {
                v167 = swift_slowAlloc();
                v230 = swift_slowAlloc();
                v261 = v230;
                *v167 = v227;
                sub_2267F7294(&qword_28138FE40, MEMORY[0x277CC95B8]);
                v168 = sub_226836B48();
                v169 = v164;
                v171 = v170;
                v241 = *v249;
                (v241)(v248, v156);
                v172 = sub_2263B4D48(v168, v171, &v261);

                *(v167 + 4) = v172;
                *(v167 + 12) = 2080;
                v173 = sub_2268354A8();
                if (v174)
                {
                  v175 = v173;
                }

                else
                {
                  v175 = 7104878;
                }

                if (v174)
                {
                  v176 = v174;
                }

                else
                {
                  v176 = 0xE300000000000000;
                }

                v229 = v250->isa;
                v177 = v169;
                v141 = v248;
                (v229)(v177, v259);
                v178 = sub_2263B4D48(v175, v176, &v261);

                *(v167 + 14) = v178;
                *(v167 + 22) = 2080;
                v179 = sub_2263B4D48(v253, v146, &v261);

                *(v167 + 24) = v179;
                *(v167 + 32) = 2080;
                v142 = v247;
                v180 = sub_2263B4D48(v231, v149, &v261);

                *(v167 + 34) = v180;
                _os_log_impl(&dword_2263AA000, v165, v166, "SportsServer: Game at %s with team %s : %s : %s", v167, 0x2Au);
                v181 = v230;
                swift_arrayDestroy();
                MEMORY[0x22AA821D0](v181, -1, -1);
                v182 = v167;
                v62 = v259;
                MEMORY[0x22AA821D0](v182, -1, -1);

                v63 = v237;
                (*v242)(v239, v237);
                v119 = v254;
                (v229)(v254, v62);
              }

              else
              {

                v202 = v250->isa;
                (v250->isa)(v164, v62);
                v241 = *v249;
                (v241)(v141, v156);
                v63 = v237;
                (*v242)(v239, v237);
                v119 = v254;
                (v202)(v254, v62);
              }

              v116 = v245;
              v120 = v238;
              goto LABEL_48;
            }

            v119 = v254;
          }

          v183 = sub_226799540();
          (*v243)(v120, v183, v63);
          v184 = v236;
          v185 = v246;
          (*v252)(v236, v255, v246);
          (v142)(v116, v119, v62);
          v186 = v142;
          v187 = v116;
          v188 = v251;
          (v186)(v251, v119, v62);
          v189 = v120;
          v190 = sub_226836038();
          v191 = sub_2268366C8();
          if (os_log_type_enabled(v190, v191))
          {
            LODWORD(v253) = v191;
            v192 = v184;
            v193 = swift_slowAlloc();
            v194 = swift_slowAlloc();
            v261 = v194;
            *v193 = v228;
            sub_2267F7294(&qword_28138FE40, MEMORY[0x277CC95B8]);
            v195 = sub_226836B48();
            v197 = v196;
            v241 = *v249;
            (v241)(v192, v185);
            v198 = sub_2263B4D48(v195, v197, &v261);

            *(v193 + 4) = v198;
            *(v193 + 12) = 2080;
            sub_226835498();
            if (v199)
            {

              v200 = 0;
              v201 = 0xE000000000000000;
            }

            else
            {
              v201 = 0xE300000000000000;
              v200 = 6580593;
            }

            v142 = v247;
            v203 = v250->isa;
            (v250->isa)(v245, v259);
            v204 = sub_2263B4D48(v200, v201, &v261);

            *(v193 + 14) = v204;
            *(v193 + 22) = 2080;
            sub_226835488();
            if (v205)
            {

              v206 = 0;
              v207 = 0xE000000000000000;
            }

            else
            {
              v207 = 0xE500000000000000;
              v206 = 0x6469636D75;
            }

            v62 = v259;
            (v203)(v251, v259);
            v208 = sub_2263B4D48(v206, v207, &v261);

            *(v193 + 24) = v208;
            _os_log_impl(&dword_2263AA000, v190, v253, "SportsServer: Game at %s missing identifier %s %s", v193, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x22AA821D0](v194, -1, -1);
            MEMORY[0x22AA821D0](v193, -1, -1);

            v120 = v238;
            (*v242)(v238, v63);
            v119 = v254;
            (v203)(v254, v62);
            v116 = v245;
            v141 = v248;
          }

          else
          {

            v144 = v250->isa;
            (v250->isa)(v188, v62);
            (v144)(v187, v62);
            v241 = *v249;
            (v241)(v184, v185);
            (*v242)(v189, v63);
            (v144)(v119, v62);
            v120 = v189;
            v116 = v187;
            v142 = v247;
            v141 = v248;
          }

LABEL_48:
          v143 = v256 + v244;
          v139 = v257 - 1;
          if (v257 == 1)
          {
            return (v241)(v255, v246);
          }
        }
      }
    }

    else
    {
      v209 = sub_226799540();
      (*(v121 + 16))(v122, v209, v63);
      v210 = v249;
      v211 = v64;
      v212 = v64;
      v213 = v246;
      (v249[2])(v211, v255, v246);
      v214 = v256;

      v215 = sub_226836038();
      v216 = sub_2268366C8();

      if (os_log_type_enabled(v215, v216))
      {
        v217 = swift_slowAlloc();
        v218 = swift_slowAlloc();
        v261 = v218;
        *v217 = 136315394;
        sub_2267F7294(&qword_28138FE40, MEMORY[0x277CC95B8]);
        v253 = v215;
        v219 = sub_226836B48();
        v221 = v220;
        (v210[1])(v212, v213);
        v222 = sub_2263B4D48(v219, v221, &v261);
        v119 = v254;

        *(v217 + 4) = v222;
        *(v217 + 12) = 2080;
        v223 = sub_2263B4D48(v252, v214, &v261);

        *(v217 + 14) = v223;
        v224 = v253;
        _os_log_impl(&dword_2263AA000, v253, v216, "SportsServer: Missing umcid found for game at %s with teams: %s", v217, 0x16u);
        swift_arrayDestroy();
        v225 = v218;
        v62 = v259;
        MEMORY[0x22AA821D0](v225, -1, -1);
        v226 = v217;
        v139 = v257;
        MEMORY[0x22AA821D0](v226, -1, -1);
      }

      else
      {

        (v210[1])(v212, v213);
      }

      v121 = v242;
      v63 = v237;
      (*(v242 + 8))(v241, v237);
      v120 = v238;
      v141 = v248;
      if (v139)
      {
        goto LABEL_46;
      }
    }

    return (v249[1])(v255, v246);
  }

  sub_2267A1DC0(v33, &unk_27D7A2750, &unk_226875CF0);
  (v38[7])(v36, 1, 1, v37);
LABEL_4:
  sub_2267A1DC0(v36, &qword_27D7A2530, qword_2268738A0);
  v53 = sub_226799540();
  v54 = v242;
  v55 = v237;
  (*(v242 + 16))(v30, v53, v237);
  v56 = sub_226836038();
  v57 = sub_2268366C8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_2263AA000, v56, v57, "SportsServer: no date", v58, 2u);
    MEMORY[0x22AA821D0](v58, -1, -1);
  }

  return (*(v54 + 8))(v30, v55);
}

id SportsServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SportsServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2267F2880(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2730, &qword_226875CD8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2267F2A70(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2267F424C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_2267F2B24(v5);
  *a1 = v3;
}

void sub_2267F2B24(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_226836B38();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20);
        v6 = sub_226836598();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2267F2EB8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2267F2C68(0, v2, 1, a1);
  }
}

void sub_2267F2C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20);
  MEMORY[0x28223BE20](v34);
  v33 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  v27 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v32 = v16;
    v26 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v30 = v18;
    v31 = a3;
    v28 = v21;
    v29 = v20;
    while (1)
    {
      sub_2267A1AF8(v21, v15, &unk_27D7A2710, &qword_226875C20);
      sub_2267A1AF8(v18, v11, &unk_27D7A2710, &qword_226875C20);
      v22 = sub_2268351C8();
      sub_2267A1DC0(v11, &unk_27D7A2710, &qword_226875C20);
      sub_2267A1DC0(v15, &unk_27D7A2710, &qword_226875C20);
      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v18 = v30 + v26;
        v20 = v29 - 1;
        v21 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v23 = v33;
      sub_2267F72D8(v21, v33, &unk_27D7A2710, &qword_226875C20);
      swift_arrayInitWithTakeFrontToBack();
      sub_2267F72D8(v23, v18, &unk_27D7A2710, &qword_226875C20);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2267F2EB8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v103 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20);
  v113 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v107 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v115 = &v99 - v11;
  MEMORY[0x28223BE20](v12);
  v118 = &v99 - v13;
  MEMORY[0x28223BE20](v14);
  v117 = &v99 - v15;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_96:
    a4 = *v103;
    if (!*v103)
    {
      goto LABEL_136;
    }

    v4 = v18;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v93 = v4;
    }

    else
    {
LABEL_130:
      v93 = sub_2267DE5F0(v4);
    }

    v94 = v6;
    v119 = v93;
    v4 = *(v93 + 2);
    if (v4 >= 2)
    {
      do
      {
        v95 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v6 = a3;
        a3 = *&v93[16 * v4];
        v96 = v93;
        v97 = *&v93[16 * v4 + 24];
        sub_2267F37F8(v95 + *(v113 + 72) * a3, v95 + *(v113 + 72) * *&v93[16 * v4 + 16], v95 + *(v113 + 72) * v97, a4);
        if (v94)
        {
          break;
        }

        if (v97 < a3)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_2267DE5F0(v96);
        }

        if (v4 - 2 >= *(v96 + 2))
        {
          goto LABEL_124;
        }

        v98 = &v96[16 * v4];
        *v98 = a3;
        *(v98 + 1) = v97;
        v119 = v96;
        sub_2267DE564(v4 - 1);
        v93 = v119;
        v4 = *(v119 + 2);
        a3 = v6;
      }

      while (v4 > 1);
    }

LABEL_107:

    return;
  }

  v100 = a4;
  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v104 = a3;
  while (1)
  {
    v19 = v17;
    v108 = v18;
    if (v17 + 1 >= v16)
    {
      v16 = v17 + 1;
    }

    else
    {
      v102 = v6;
      v20 = v17;
      v21 = *a3;
      v22 = *(v113 + 72);
      a4 = *a3 + v22 * (v17 + 1);
      v23 = v117;
      sub_2267A1AF8(a4, v117, &unk_27D7A2710, &qword_226875C20);
      v24 = v118;
      sub_2267A1AF8(v21 + v22 * v20, v118, &unk_27D7A2710, &qword_226875C20);
      LODWORD(v112) = sub_2268351C8();
      sub_2267A1DC0(v24, &unk_27D7A2710, &qword_226875C20);
      sub_2267A1DC0(v23, &unk_27D7A2710, &qword_226875C20);
      v101 = v20;
      v4 = v20 + 2;
      v114 = v22;
      v25 = v21 + v22 * (v20 + 2);
      while (v16 != v4)
      {
        v26 = v117;
        sub_2267A1AF8(v25, v117, &unk_27D7A2710, &qword_226875C20);
        v27 = v118;
        sub_2267A1AF8(a4, v118, &unk_27D7A2710, &qword_226875C20);
        v28 = v16;
        v29 = sub_2268351C8() & 1;
        sub_2267A1DC0(v27, &unk_27D7A2710, &qword_226875C20);
        sub_2267A1DC0(v26, &unk_27D7A2710, &qword_226875C20);
        ++v4;
        v25 += v114;
        a4 += v114;
        v30 = (v112 & 1) == v29;
        v16 = v28;
        if (!v30)
        {
          v16 = v4 - 1;
          break;
        }
      }

      a3 = v104;
      v19 = v101;
      v6 = v102;
      if (v112)
      {
        if (v16 < v101)
        {
          goto LABEL_127;
        }

        if (v101 < v16)
        {
          v4 = v114 * (v16 - 1);
          v31 = v16 * v114;
          v32 = v16;
          v33 = v16;
          v34 = v101;
          a4 = v101 * v114;
          do
          {
            if (v34 != --v33)
            {
              v35 = *v104;
              if (!*v104)
              {
                goto LABEL_133;
              }

              sub_2267F72D8(v35 + a4, v107, &unk_27D7A2710, &qword_226875C20);
              if (a4 < v4 || v35 + a4 >= (v35 + v31))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_2267F72D8(v107, v35 + v4, &unk_27D7A2710, &qword_226875C20);
            }

            ++v34;
            v4 -= v114;
            v31 -= v114;
            a4 += v114;
          }

          while (v34 < v33);
          v19 = v101;
          v6 = v102;
          a3 = v104;
          v16 = v32;
        }
      }
    }

    v36 = a3[1];
    if (v16 < v36)
    {
      if (__OFSUB__(v16, v19))
      {
        goto LABEL_126;
      }

      if (v16 - v19 < v100)
      {
        if (__OFADD__(v19, v100))
        {
          goto LABEL_128;
        }

        if (v19 + v100 >= v36)
        {
          v37 = a3[1];
        }

        else
        {
          v37 = v19 + v100;
        }

        if (v37 < v19)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v16 != v37)
        {
          break;
        }
      }
    }

    v17 = v16;
    if (v16 < v19)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = v108;
    }

    else
    {
      v18 = sub_2267DC234(0, *(v108 + 2) + 1, 1, v108);
    }

    v4 = *(v18 + 2);
    v38 = *(v18 + 3);
    a4 = v4 + 1;
    if (v4 >= v38 >> 1)
    {
      v18 = sub_2267DC234((v38 > 1), v4 + 1, 1, v18);
    }

    *(v18 + 2) = a4;
    v39 = &v18[16 * v4];
    *(v39 + 4) = v19;
    *(v39 + 5) = v17;
    v40 = *v103;
    if (!*v103)
    {
      goto LABEL_135;
    }

    if (v4)
    {
      while (1)
      {
        v41 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v42 = *(v18 + 4);
          v43 = *(v18 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_52:
          if (v45)
          {
            goto LABEL_114;
          }

          v58 = &v18[16 * a4];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_117;
          }

          v64 = &v18[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_121;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = a4 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v68 = &v18[16 * a4];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_66:
        if (v63)
        {
          goto LABEL_116;
        }

        v71 = &v18[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_119;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_73:
        v4 = v41 - 1;
        if (v41 - 1 >= a4)
        {
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v79 = v18;
        a4 = *&v18[16 * v4 + 32];
        v80 = *&v18[16 * v41 + 40];
        sub_2267F37F8(*a3 + *(v113 + 72) * a4, *a3 + *(v113 + 72) * *&v18[16 * v41 + 32], *a3 + *(v113 + 72) * v80, v40);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v80 < a4)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v81 = v79;
        }

        else
        {
          v81 = sub_2267DE5F0(v79);
        }

        if (v4 >= *(v81 + 2))
        {
          goto LABEL_111;
        }

        v82 = &v81[16 * v4];
        *(v82 + 4) = a4;
        *(v82 + 5) = v80;
        v119 = v81;
        v4 = &v119;
        sub_2267DE564(v41);
        v18 = v119;
        a4 = *(v119 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v18[16 * a4 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_112;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_113;
      }

      v53 = &v18[16 * a4];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_115;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_118;
      }

      if (v57 >= v49)
      {
        v75 = &v18[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_122;
        }

        if (v44 < v78)
        {
          v41 = a4 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v16 = a3[1];
    if (v17 >= v16)
    {
      goto LABEL_96;
    }
  }

  v101 = v19;
  v102 = v6;
  v83 = *a3;
  v84 = *(v113 + 72);
  v85 = *a3 + v84 * (v16 - 1);
  v86 = -v84;
  v87 = v19 - v16;
  v105 = v84;
  v106 = v37;
  v114 = v83;
  a4 = v83 + v16 * v84;
LABEL_86:
  v111 = v85;
  v112 = v16;
  v109 = a4;
  v110 = v87;
  v88 = v85;
  while (1)
  {
    v4 = v117;
    sub_2267A1AF8(a4, v117, &unk_27D7A2710, &qword_226875C20);
    v89 = v118;
    sub_2267A1AF8(v88, v118, &unk_27D7A2710, &qword_226875C20);
    v90 = sub_2268351C8();
    sub_2267A1DC0(v89, &unk_27D7A2710, &qword_226875C20);
    sub_2267A1DC0(v4, &unk_27D7A2710, &qword_226875C20);
    if ((v90 & 1) == 0)
    {
LABEL_85:
      v16 = v112 + 1;
      v17 = v106;
      v85 = v111 + v105;
      v87 = v110 - 1;
      a4 = v109 + v105;
      if (v112 + 1 != v106)
      {
        goto LABEL_86;
      }

      v19 = v101;
      v6 = v102;
      a3 = v104;
      if (v106 < v101)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v114)
    {
      break;
    }

    v91 = v115;
    sub_2267F72D8(a4, v115, &unk_27D7A2710, &qword_226875C20);
    swift_arrayInitWithTakeFrontToBack();
    sub_2267F72D8(v91, v88, &unk_27D7A2710, &qword_226875C20);
    v88 += v86;
    a4 += v86;
    if (__CFADD__(v87++, 1))
    {
      goto LABEL_85;
    }
  }

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
}

void sub_2267F37F8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20);
  MEMORY[0x28223BE20](v42);
  v44 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v34 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_60;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v14 = (a2 - a1) / v12;
  v47 = a1;
  v46 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = a4 + v16;
    if (v16 >= 1)
    {
      v23 = -v12;
      v24 = a4 + v16;
      v38 = a1;
      v39 = a4;
      v37 = -v12;
      do
      {
        v35 = v22;
        v25 = a2;
        v26 = a2 + v23;
        v40 = v25;
        v41 = v26;
        while (1)
        {
          if (v25 <= a1)
          {
            v47 = v25;
            v45 = v35;
            goto LABEL_58;
          }

          v28 = a3;
          v36 = v22;
          a3 += v23;
          v29 = v24 + v23;
          v30 = v43;
          sub_2267A1AF8(v29, v43, &unk_27D7A2710, &qword_226875C20);
          v31 = v26;
          v32 = v44;
          sub_2267A1AF8(v31, v44, &unk_27D7A2710, &qword_226875C20);
          v33 = sub_2268351C8();
          sub_2267A1DC0(v32, &unk_27D7A2710, &qword_226875C20);
          sub_2267A1DC0(v30, &unk_27D7A2710, &qword_226875C20);
          if (v33)
          {
            break;
          }

          v22 = v29;
          if (v28 < v24 || a3 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v26 = v41;
            a1 = v38;
          }

          else
          {
            v26 = v41;
            a1 = v38;
            if (v28 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v29;
          v25 = v40;
          v27 = v29 > v39;
          v23 = v37;
          if (!v27)
          {
            a2 = v40;
            goto LABEL_57;
          }
        }

        if (v28 < v40 || a3 >= v40)
        {
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v37;
          a1 = v38;
          v22 = v36;
        }

        else
        {
          a2 = v41;
          v23 = v37;
          a1 = v38;
          v22 = v36;
          if (v28 != v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v39);
    }

LABEL_57:
    v47 = a2;
    v45 = v22;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a3;
    v41 = a4 + v15;
    v45 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      do
      {
        v18 = v12;
        v19 = v43;
        sub_2267A1AF8(a2, v43, &unk_27D7A2710, &qword_226875C20);
        v20 = v44;
        sub_2267A1AF8(a4, v44, &unk_27D7A2710, &qword_226875C20);
        v21 = sub_2268351C8();
        sub_2267A1DC0(v20, &unk_27D7A2710, &qword_226875C20);
        sub_2267A1DC0(v19, &unk_27D7A2710, &qword_226875C20);
        v12 = v18;
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v18;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v18;
          a4 += v18;
        }

        a1 += v18;
        v47 = a1;
      }

      while (a4 < v41 && a2 < v40);
    }
  }

LABEL_58:
  sub_2267F3CFC(&v47, &v46, &v45);
}

uint64_t sub_2267F3CFC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_2267F3DEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2267F3E8C(a1, a2, a3, *v3, &unk_27D7A2720, &unk_226875CC8, &qword_27D7A26A0, qword_226875858);
  *v3 = result;
  return result;
}

void *sub_2267F3E2C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2267F3E8C(a1, a2, a3, *v3, &qword_27D7A2730, &qword_226875CD8, &unk_27D7A2710, &qword_226875C20);
  *v3 = result;
  return result;
}

void *sub_2267F3E6C(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  result = sub_2267F4074(a1, a2, a3, *v4, a4);
  *v4 = result;
  return result;
}

void *sub_2267F3E8C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_2267F4074(void *result, int64_t a2, char a3, void *a4, double a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (!v10)
  {
    v14 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2778, &unk_226875D00);
  v11 = *(sub_2268354B8() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v13) == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_29;
  }

  v14[2] = v9;
  v14[3] = 2 * ((result - v13) / v12);
LABEL_19:
  v16 = *(sub_2268354B8() - 8);
  if (v6)
  {
    if (v14 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v14 + v17 >= a4 + v17 + *(v16 + 72) * v9))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_2267F4294()
{
  v1 = sub_226836068();
  v0[35] = v1;
  v0[36] = *(v1 - 8);
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267F43A4, 0, 0);
}

uint64_t sub_2267F43A4()
{
  v1 = v0[44];
  v2 = v0[35];
  v3 = v0[36];
  v4 = [objc_opt_self() isOptOutAvailable];
  v5 = sub_226799540();
  v0[45] = v5;
  v6 = *(v3 + 16);
  v0[46] = v6;
  v0[47] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);
  v7 = sub_226836038();
  v8 = sub_2268366A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v4;
    _os_log_impl(&dword_2263AA000, v7, v8, "SportsServer: Check isOptOutAvailable %{BOOL}d", v9, 8u);
    MEMORY[0x22AA821D0](v9, -1, -1);
  }

  v10 = v0[44];
  v11 = v0[35];
  v12 = v0[36];

  v13 = *(v12 + 8);
  v0[48] = v13;
  v0[49] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v11);
  if (v4)
  {
    v14 = [objc_opt_self() sharedInstance];
    v15 = [v14 activeAccount];

    if (v15)
    {
      v16 = [v15 isAuthenticated];
    }

    else
    {
      v16 = 0;
    }

    v6(v0[43], v5, v0[35]);
    v22 = sub_226836038();
    v23 = sub_2268366A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 4) = v16;
      _os_log_impl(&dword_2263AA000, v22, v23, "SportsServer: Check isAuthenticated %{BOOL}d", v24, 8u);
      MEMORY[0x22AA821D0](v24, -1, -1);
    }

    v25 = v0[43];
    v26 = v0[35];

    v13(v25, v26);
    if (v16)
    {
      v27 = objc_opt_self();
      v0[50] = v27;
      v0[2] = v0;
      v0[7] = v0 + 53;
      v0[3] = sub_2267F48BC;
      v28 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2788, &unk_226875D20);
      v0[18] = MEMORY[0x277D85DD0];
      v0[19] = 1107296256;
      v0[20] = sub_2267F0A34;
      v0[21] = &block_descriptor_39;
      v0[22] = v28;
      [v27 isOnboarded_];

      return MEMORY[0x282200938](v0 + 2);
    }

    v17 = v0 + 38;
    v6(v0[38], v5, v0[35]);
    v18 = sub_226836038();
    v19 = sub_2268366E8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "SportsServer: Returning no teams - Not authenticated";
      goto LABEL_17;
    }
  }

  else
  {
    v17 = v0 + 37;
    v6(v0[37], v5, v0[35]);
    v18 = sub_226836038();
    v19 = sub_2268366E8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "SportsServer: Returning no teams - Sports not available";
LABEL_17:
      _os_log_impl(&dword_2263AA000, v18, v19, v21, v20, 2u);
      MEMORY[0x22AA821D0](v20, -1, -1);
    }
  }

  v29 = *v17;
  v30 = v0[35];

  v13(v29, v30);
  v31 = [objc_allocWithZone(MEMORY[0x277CEB850]) init];

  v32 = v0[1];

  return v32(v31);
}

uint64_t sub_2267F48BC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = sub_2267F51E8;
  }

  else
  {
    v2 = sub_2267F49CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2267F49CC()
{
  v1 = *(v0 + 424);
  (*(v0 + 368))(*(v0 + 336), *(v0 + 360), *(v0 + 280));
  v2 = sub_226836038();
  v3 = sub_2268366A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v1;
    _os_log_impl(&dword_2263AA000, v2, v3, "SportsServer: Check isOnboarded %{BOOL}d", v4, 8u);
    MEMORY[0x22AA821D0](v4, -1, -1);
  }

  v5 = *(v0 + 384);
  v6 = *(v0 + 336);
  v7 = *(v0 + 280);

  v5(v6, v7);
  v8 = *(v0 + 368);
  v9 = *(v0 + 360);
  v10 = *(v0 + 280);
  if (v1)
  {
    v8(*(v0 + 328), v9, v10);
    v11 = sub_226836038();
    v12 = sub_2268366A8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2263AA000, v11, v12, "SportsServer: Request start", v13, 2u);
      MEMORY[0x22AA821D0](v13, -1, -1);
    }

    v14 = *(v0 + 400);
    v15 = *(v0 + 384);
    v16 = *(v0 + 328);
    v17 = *(v0 + 280);

    v15(v16, v17);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 272;
    *(v0 + 88) = sub_2267F4D88;
    v18 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A27F0, &qword_226875D30);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_2267F0B00;
    *(v0 + 232) = &block_descriptor_43_0;
    *(v0 + 240) = v18;
    [v14 favoritesWithCompletion_];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {
    v8(*(v0 + 312), v9, v10);
    v19 = sub_226836038();
    v20 = sub_2268366E8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2263AA000, v19, v20, "SportsServer: Returning no teams - Sync my sports not enabled", v21, 2u);
      MEMORY[0x22AA821D0](v21, -1, -1);
    }

    v22 = *(v0 + 384);
    v23 = *(v0 + 312);
    v24 = *(v0 + 280);

    v22(v23, v24);
    v25 = [objc_allocWithZone(MEMORY[0x277CEB850]) init];

    v26 = *(v0 + 8);

    return v26(v25);
  }
}

uint64_t sub_2267F4D88()
{
  v1 = *(*v0 + 112);
  *(*v0 + 416) = v1;
  if (v1)
  {
    v2 = sub_2267F52B8;
  }

  else
  {
    v2 = sub_2267F4E98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2267F4E98()
{
  v16 = v0;
  v2 = *(v0 + 272);
  (*(v0 + 368))(*(v0 + 320), *(v0 + 360), *(v0 + 280));

  v3 = sub_226836038();
  LOBYTE(v4) = sub_2268366A8();
  v5 = v2 >> 62;
  if (!os_log_type_enabled(v3, v4))
  {

    goto LABEL_6;
  }

  v1 = swift_slowAlloc();
  *v1 = 134217984;
  if (v5)
  {
    goto LABEL_22;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2268368D8())
  {
    *(v1 + 4) = i;

    _os_log_impl(&dword_2263AA000, v3, v4, "SportsServer: Request finish, count = %ld", v1, 0xCu);
    MEMORY[0x22AA821D0](v1, -1, -1);
LABEL_6:

    (*(v0 + 384))(*(v0 + 320), *(v0 + 280));
    if (v5)
    {
      v4 = sub_2268368D8();
      if (!v4)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_18;
      }
    }

    v15 = MEMORY[0x277D84F90];
    v3 = &v15;
    sub_226836A08();
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_22:
    ;
  }

  v7 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x22AA7FDD0](v7, v2);
    }

    else
    {
      v8 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v9 = [v8 ID];
    if (!v9)
    {
      sub_226836408();
      v9 = sub_2268363F8();
    }

    ++v7;
    [objc_allocWithZone(MEMORY[0x277CEB858]) initWithName:0 umcid:v9];

    swift_unknownObjectRelease();
    sub_2268369E8();
    sub_226836A18();
    sub_226836A28();
    sub_2268369F8();
  }

  while (v4 != v7);
LABEL_18:

  v10 = objc_allocWithZone(MEMORY[0x277CEB850]);
  sub_2263B5030(0, &qword_28138F9A8, 0x277CEB858);
  v11 = sub_226836558();

  v12 = [v10 initWithTeams_];

  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_2267F51E8()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2267F52B8()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2267F5388()
{
  v1 = sub_226836068();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267F5474, 0, 0);
}

uint64_t sub_2267F5474()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = v0[5];
  v4 = sub_226799540();
  v0[11] = v4;
  v5 = *(v3 + 16);
  v0[12] = v5;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_226836038();
  v7 = sub_2268366E8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2263AA000, v6, v7, "SportsServer: requestedSchedulesForTeams", v8, 2u);
    MEMORY[0x22AA821D0](v8, -1, -1);
  }

  v9 = v0[10];
  v10 = v0[4];
  v11 = v0[5];

  v12 = *(v11 + 8);
  v0[14] = v12;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_2267F55D0;

  return sub_2267F4294();
}

uint64_t sub_2267F55D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_2267F5ABC;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_2267F56F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2267F56F8()
{
  v40 = v0;
  v1 = *(v0 + 136);
  v2 = [v1 teams];
  v31 = v1;

  sub_2263B5030(0, &qword_28138F9A8, 0x277CEB858);
  v3 = sub_226836568();

  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2268368D8())
  {
    v5 = 0;
    v37 = v3 & 0xFFFFFFFFFFFFFF8;
    v38 = v3 & 0xC000000000000001;
    v32 = i;
    v33 = v3;
    while (1)
    {
      if (v38)
      {
        v9 = MEMORY[0x22AA7FDD0](v5, v3);
      }

      else
      {
        if (v5 >= *(v37 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      (*(v0 + 96))(*(v0 + 72), *(v0 + 88), *(v0 + 32));
      v12 = v10;
      v13 = sub_226836038();
      v14 = sub_2268366E8();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v39 = v36;
        *v15 = 136315394;
        v16 = [v12 qid];
        if (v16)
        {
          v17 = v16;
          v18 = sub_226836408();
          v20 = v19;
        }

        else
        {
          v20 = 0xE300000000000000;
          v18 = 7104878;
        }

        v21 = sub_2263B4D48(v18, v20, &v39);

        *(v15 + 4) = v21;
        *(v15 + 12) = 2080;
        v22 = [v12 umcid];
        if (v22)
        {
          v23 = v22;
          v24 = sub_226836408();
          v26 = v25;
        }

        else
        {
          v26 = 0xE300000000000000;
          v24 = 7104878;
        }

        v27 = *(v0 + 72);
        v34 = *(v0 + 32);
        v35 = *(v0 + 112);
        v28 = sub_2263B4D48(v24, v26, &v39);

        *(v15 + 14) = v28;
        _os_log_impl(&dword_2263AA000, v13, v14, "SportsServer: favorite team: %s : %s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA821D0](v36, -1, -1);
        MEMORY[0x22AA821D0](v15, -1, -1);

        v35(v27, v34);
        i = v32;
        v3 = v33;
      }

      else
      {
        v6 = *(v0 + 112);
        v7 = *(v0 + 72);
        v8 = *(v0 + 32);

        v6(v7, v8);
      }

      ++v5;
      if (v11 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  v29 = *(v0 + 8);

  return v29(v31);
}

uint64_t sub_2267F5ABC()
{
  v99 = v0;
  v1 = v0;
  v2 = *(v0 + 128);
  *(v0 + 16) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1D38, &unk_226874A70);
  sub_2263B5030(0, &unk_28138F970, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v4 = *(v0 + 24);
  v5 = [v4 domain];
  v6 = sub_226836408();
  v8 = v7;

  if (v6 == sub_226836408() && v8 == v9)
  {

    goto LABEL_17;
  }

  v11 = sub_226836B58();

  if (v11)
  {
LABEL_17:
    v38 = *(v1 + 96);
    v39 = *(v1 + 88);
    v40 = *(v1 + 64);
    v41 = *(v1 + 32);

    v38(v40, v39, v41);
    v42 = v4;
    v43 = sub_226836038();
    v44 = sub_2268366C8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v42;
      *v46 = v42;
      v47 = v42;
      _os_log_impl(&dword_2263AA000, v43, v44, "Sports response error - WLK favorite error: %@", v45, 0xCu);
      sub_2267A1DC0(v46, &unk_27D7A1D90, &unk_226873270);
      MEMORY[0x22AA821D0](v46, -1, -1);
      MEMORY[0x22AA821D0](v45, -1, -1);
    }

    v48 = *(v1 + 112);
    v49 = *(v1 + 64);
    goto LABEL_20;
  }

  v12 = [v4 domain];
  v13 = sub_226836408();
  v15 = v14;

  if (v13 == sub_226836408() && v15 == v16)
  {

    goto LABEL_40;
  }

  v18 = sub_226836B58();

  if (v18)
  {
LABEL_40:
    v80 = *(v1 + 96);
    v81 = *(v1 + 88);
    v82 = *(v1 + 56);
    v83 = *(v1 + 32);

    v80(v82, v81, v83);
    v42 = v4;
    v43 = sub_226836038();
    v84 = sub_2268366C8();

    if (os_log_type_enabled(v43, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v85 = 138412290;
      *(v85 + 4) = v42;
      *v86 = v42;
      v87 = v42;
      _os_log_impl(&dword_2263AA000, v43, v84, "Sports response error - WLK error: %@", v85, 0xCu);
      sub_2267A1DC0(v86, &unk_27D7A1D90, &unk_226873270);
      MEMORY[0x22AA821D0](v86, -1, -1);
      MEMORY[0x22AA821D0](v85, -1, -1);
    }

    v48 = *(v1 + 112);
    v49 = *(v1 + 56);
LABEL_20:
    v50 = *(v1 + 32);

    v48(v49, v50);
    v51 = [objc_allocWithZone(MEMORY[0x277CEB850]) init];

    v52 = *(v1 + 16);
    v37 = v51;

    goto LABEL_21;
  }

LABEL_13:
  v19 = *(v1 + 128);
  v20 = *(v1 + 96);
  v21 = *(v1 + 88);
  v22 = *(v1 + 48);
  v23 = *(v1 + 32);

  v20(v22, v21, v23);
  v24 = v19;
  v25 = sub_226836038();
  v26 = sub_2268366D8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v1 + 128);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = v27;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&dword_2263AA000, v25, v26, "Sports response error - Unexpected error: %@", v28, 0xCu);
    sub_2267A1DC0(v29, &unk_27D7A1D90, &unk_226873270);
    MEMORY[0x22AA821D0](v29, -1, -1);
    MEMORY[0x22AA821D0](v28, -1, -1);
  }

  v32 = *(v1 + 128);
  v33 = *(v1 + 112);
  v34 = *(v1 + 48);
  v35 = *(v1 + 32);

  v33(v34, v35);
  v36 = [objc_allocWithZone(MEMORY[0x277CEB850]) init];

  v37 = v36;
LABEL_21:
  v53 = [v37 teams];

  sub_2263B5030(0, &qword_28138F9A8, 0x277CEB858);
  v54 = sub_226836568();

  v90 = v37;
  if (v54 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2268368D8())
  {
    v56 = 0;
    v96 = v54 & 0xFFFFFFFFFFFFFF8;
    v97 = v54 & 0xC000000000000001;
    v91 = i;
    v92 = v54;
    while (1)
    {
      if (v97)
      {
        v60 = MEMORY[0x22AA7FDD0](v56, v54);
      }

      else
      {
        if (v56 >= *(v96 + 16))
        {
          goto LABEL_44;
        }

        v60 = *(v54 + 8 * v56 + 32);
      }

      v61 = v60;
      v62 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      (*(v1 + 96))(*(v1 + 72), *(v1 + 88), *(v1 + 32));
      v63 = v61;
      v64 = sub_226836038();
      v65 = sub_2268366E8();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v98 = v95;
        *v66 = 136315394;
        v67 = [v63 qid];
        if (v67)
        {
          v68 = v67;
          v69 = sub_226836408();
          v71 = v70;
        }

        else
        {
          v71 = 0xE300000000000000;
          v69 = 7104878;
        }

        v72 = sub_2263B4D48(v69, v71, &v98);

        *(v66 + 4) = v72;
        *(v66 + 12) = 2080;
        v73 = [v63 umcid];
        if (v73)
        {
          v74 = v73;
          v75 = sub_226836408();
          v77 = v76;
        }

        else
        {
          v77 = 0xE300000000000000;
          v75 = 7104878;
        }

        v78 = *(v1 + 72);
        v93 = *(v1 + 32);
        v94 = *(v1 + 112);
        v79 = sub_2263B4D48(v75, v77, &v98);

        *(v66 + 14) = v79;
        _os_log_impl(&dword_2263AA000, v64, v65, "SportsServer: favorite team: %s : %s", v66, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA821D0](v95, -1, -1);
        MEMORY[0x22AA821D0](v66, -1, -1);

        v94(v78, v93);
        i = v91;
        v54 = v92;
      }

      else
      {
        v57 = *(v1 + 112);
        v58 = *(v1 + 72);
        v59 = *(v1 + 32);

        v57(v58, v59);
      }

      ++v56;
      if (v62 == i)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

LABEL_46:

  v88 = *(v1 + 8);

  return v88(v90);
}

uint64_t sub_2267F63A4(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2738, &qword_226875CE0);
  MEMORY[0x28223BE20](v63);
  v62 = &v52[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v61 = &v52[-v5];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2740, &qword_226875CE8);
  MEMORY[0x28223BE20](v60);
  v66 = &v52[-v6];
  v7 = sub_2268353E8();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x28223BE20](v7);
  v71 = &v52[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_226835228();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v52[-v14];
  v16 = sub_226836068();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_226799540();
  v69 = v17;
  (*(v17 + 16))(v19, v20, v16);
  v21 = *(v10 + 16);
  v67 = a1;
  v21(v15, a1, v9);
  v22 = v72;
  v57 = v21;
  v58 = v10 + 16;
  (v21)(v12);
  v68 = v19;
  v23 = sub_226836038();
  v24 = sub_2268366E8();
  v25 = os_log_type_enabled(v23, v24);
  v59 = v10;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v73 = v55;
    *v26 = 136315394;
    sub_2267F7294(&qword_28138FE40, MEMORY[0x277CC95B8]);
    v56 = v16;
    v54 = v23;
    v27 = sub_226836B48();
    v53 = v24;
    v29 = v28;
    v30 = *(v10 + 8);
    v30(v15, v9);
    v31 = sub_2263B4D48(v27, v29, &v73);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    v32 = sub_226836B48();
    v34 = v33;
    v30(v12, v9);
    v35 = sub_2263B4D48(v32, v34, &v73);

    *(v26 + 14) = v35;
    v36 = v54;
    _os_log_impl(&dword_2263AA000, v54, v53, "SportsServer: _scheduledGames %s, %s", v26, 0x16u);
    v37 = v55;
    swift_arrayDestroy();
    MEMORY[0x22AA821D0](v37, -1, -1);
    v38 = v26;
    v22 = v72;
    MEMORY[0x22AA821D0](v38, -1, -1);

    (*(v69 + 8))(v68, v56);
  }

  else
  {

    v39 = *(v10 + 8);
    v37 = (v10 + 8);
    v30 = v39;
    v39(v12, v9);
    v39(v15, v9);
    (*(v69 + 8))(v68, v16);
  }

  v73 = MEMORY[0x277D84F90];
  sub_226835438();
  v40 = sub_226835418();
  v41 = v70;
  sub_2268353F8();

  if (v41)
  {
    goto LABEL_8;
  }

  sub_2267F7294(&qword_28138FCC0, MEMORY[0x277CC9590]);
  result = sub_2268363B8();
  if (result)
  {
    v43 = v61;
    v72 = 0;
    v44 = v57;
    v57(v61, v67, v9);
    v45 = v63;
    v44(v43 + *(v63 + 48), v22, v9);
    v46 = v30;
    v47 = v62;
    sub_2267A1AF8(v43, v62, &qword_27D7A2738, &qword_226875CE0);
    v70 = *(v45 + 48);
    v48 = *(v59 + 32);
    v37 = v66;
    v48(v66, v47, v9);
    v46(&v47[v70], v9);
    sub_2267F72D8(v43, v47, &qword_27D7A2738, &qword_226875CE0);
    v48(&v37[*(v60 + 36)], &v47[*(v45 + 48)], v9);
    v49 = v71;
    v50 = (v46)(v47, v9);
    MEMORY[0x28223BE20](v50);
    *&v52[-16] = v37;
    *&v52[-8] = &v73;
    v51 = v72;
    sub_2268353D8();
    if (!v51)
    {
      (*(v64 + 8))(v49, v65);
      v37 = v73;
      sub_2267A1DC0(v66, &unk_27D7A2740, &qword_226875CE8);
      return v37;
    }

    (*(v64 + 8))(v49, v65);
    sub_2267A1DC0(v66, &unk_27D7A2740, &qword_226875CE8);
LABEL_8:

    return v37;
  }

  __break(1u);
  return result;
}

uint64_t sub_2267F6B20(void *a1)
{
  v3 = sub_226836068();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  if ([a1 valueForEntitlement_])
  {
    sub_226836878();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  aBlock = v43;
  v39 = v44;
  if (*(&v44 + 1))
  {
    if (swift_dynamicCast() && (v42 & 1) != 0)
    {
      v11 = v1;
      v12 = sub_226799540();
      (*(v4 + 16))(v10, v12, v3);
      v13 = a1;
      v14 = sub_226836038();
      v15 = sub_2268366E8();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v13;
        v18 = v13;
        _os_log_impl(&dword_2263AA000, v14, v15, "SportsServer: connection accepted %@", v16, 0xCu);
        sub_2267A1DC0(v17, &unk_27D7A1D90, &unk_226873270);
        MEMORY[0x22AA821D0](v17, -1, -1);
        MEMORY[0x22AA821D0](v16, -1, -1);
      }

      (*(v4 + 8))(v10, v3);
      v40 = sub_2267F0834;
      v41 = 0;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v39 = sub_22679BFD8;
      *(&v39 + 1) = &block_descriptor_10;
      v19 = _Block_copy(&aBlock);
      [v13 setInterruptionHandler_];
      _Block_release(v19);
      v40 = sub_2267F0854;
      v41 = 0;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v39 = sub_22679BFD8;
      *(&v39 + 1) = &block_descriptor_35_0;
      v20 = _Block_copy(&aBlock);
      [v13 setInvalidationHandler_];
      _Block_release(v20);
      v21 = ATXSportsInterface();
      [v13 setExportedInterface_];

      [v13 setExportedObject_];
      [v13 resume];
      return 1;
    }
  }

  else
  {
    sub_2267A1DC0(&aBlock, &qword_27D7A1AA0, &qword_2268732C0);
  }

  v23 = sub_226799540();
  (*(v4 + 16))(v6, v23, v3);
  v24 = a1;
  v25 = sub_226836038();
  v26 = sub_2268366C8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v3;
    v29 = v28;
    v30 = swift_slowAlloc();
    *&aBlock = v30;
    *v27 = 138412546;
    *(v27 + 4) = v24;
    *v29 = v24;
    *(v27 + 12) = 2080;
    v31 = sub_226836408();
    v33 = v32;
    v34 = v24;
    v35 = sub_2263B4D48(v31, v33, &aBlock);

    *(v27 + 14) = v35;
    _os_log_impl(&dword_2263AA000, v25, v26, "SportsServer: connection rejected %@ without entitlement %s", v27, 0x16u);
    sub_2267A1DC0(v29, &unk_27D7A1D90, &unk_226873270);
    MEMORY[0x22AA821D0](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x22AA821D0](v30, -1, -1);
    MEMORY[0x22AA821D0](v27, -1, -1);

    (*(v4 + 8))(v6, v37);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

uint64_t dispatch thunk of SportsServer.requestedSchedulesForTeams()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2267A1644;

  return v5();
}

uint64_t sub_2267F71E8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2263BA0A4;

  return sub_2267EF420(v2);
}

uint64_t sub_2267F7294(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_226835228();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2267F72D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_2267F7370()
{
  result = qword_27D7A2760;
  if (!qword_27D7A2760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A2760);
  }

  return result;
}

unint64_t sub_2267F73C4()
{
  result = qword_27D7A2768;
  if (!qword_27D7A2768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A2768);
  }

  return result;
}

uint64_t sub_2267F7440()
{
  v0 = sub_226836068();
  __swift_allocate_value_buffer(v0, qword_27D7A5058);
  __swift_project_value_buffer(v0, qword_27D7A5058);
  return sub_226836048();
}

void sub_2267F7538(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  if (qword_27D7A5050 != -1)
  {
    swift_once();
  }

  v10 = sub_226836068();
  __swift_project_value_buffer(v10, qword_27D7A5058);

  oslog = sub_226836038();
  v11 = a5();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_2263B4D48(a3, a4, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2263B4D48(a1, a2, &v15);
    _os_log_impl(&dword_2263AA000, oslog, v11, "%s: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA821D0](v13, -1, -1);
    MEMORY[0x22AA821D0](v12, -1, -1);
  }
}

uint64_t sub_2267F76F4()
{
  v0 = sub_226836068();
  __swift_allocate_value_buffer(v0, qword_281390BB8);
  __swift_project_value_buffer(v0, qword_281390BB8);
  return sub_226836048();
}

uint64_t sub_2267F7768()
{
  if (qword_281390470 != -1)
  {
    swift_once();
  }

  v0 = sub_226836068();

  return __swift_project_value_buffer(v0, qword_281390BB8);
}

uint64_t sub_2267F77CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_281390470 != -1)
  {
    swift_once();
  }

  v2 = sub_226836068();
  v3 = __swift_project_value_buffer(v2, qword_281390BB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2267F7874()
{
  v0 = sub_226836068();
  __swift_allocate_value_buffer(v0, qword_281390C38);
  __swift_project_value_buffer(v0, qword_281390C38);
  return sub_226836048();
}

uint64_t sub_2267F78F4()
{
  if (qword_2813905D0 != -1)
  {
    swift_once();
  }

  v0 = sub_226836068();

  return __swift_project_value_buffer(v0, qword_281390C38);
}

uint64_t sub_2267F7958@<X0>(uint64_t a1@<X8>)
{
  if (qword_2813905D0 != -1)
  {
    swift_once();
  }

  v2 = sub_226836068();
  v3 = __swift_project_value_buffer(v2, qword_281390C38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2267F7A00@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_2267A1AF8(v1 + 16, &v5, &qword_27D7A1A60, &unk_2268732B0);
  if (v6)
  {
    return sub_2267A1ED8(&v5, a1);
  }

  v4 = sub_2268359D8();
  swift_allocObject();
  result = sub_2268359C8();
  a1[3] = v4;
  a1[4] = &off_2839962C8;
  *a1 = result;
  if (v6)
  {
    return sub_2267A1DC0(&v5, &qword_27D7A1A60, &unk_2268732B0);
  }

  return result;
}

uint64_t sub_2267F7AC8(__int128 *a1)
{
  v3 = (*(v1 + 136))();
  sub_2267A1ED8(a1, v5);
  swift_beginAccess();

  sub_22679CE58(v5, v3 + 16);
  swift_endAccess();

  return v3;
}

uint64_t DetectedEntityContext.DetectedEntityType.typeName.getter()
{
  v1 = type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2267F7CA4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = 0x73736572646441;
  v6 = 0x617A696E6167724FLL;
  v7 = 0x6E6F73726550;
  if (EnumCaseMultiPayload != 3)
  {
    v7 = 0x754E20656E6F6850;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v6 = v7;
  }

  if (EnumCaseMultiPayload)
  {
    v5 = 1802398028;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  sub_2267F7D08(v3);
  return v8;
}

uint64_t sub_2267F7CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267F7D08(uint64_t a1)
{
  v2 = type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DetectedEntityContext.ActionEntity.appBundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DetectedEntityContext.ActionEntity.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DetectedEntityContext.ActionEntity(0) + 20);

  return sub_2267F7CA4(v3, a1);
}

uint64_t DetectedEntityContext.ActionEntity.description.getter()
{
  v1 = type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
  MEMORY[0x28223BE20](v1);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_226836968();
  MEMORY[0x22AA7F8E0](0xD00000000000001ELL, 0x80000002268D01D0);
  if (v0[1])
  {
    v4 = *v0;
    v5 = v0[1];
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 4271950;
  }

  MEMORY[0x22AA7F8E0](v4, v5);

  MEMORY[0x22AA7F8E0](0x203A65707974202CLL, 0xE800000000000000);
  v6 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
  sub_2267F7CA4(v0 + *(v6 + 20), v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = 0xE700000000000000;
  v9 = 0x73736572646441;
  v10 = 0xEC0000006E6F6974;
  v11 = 0x617A696E6167724FLL;
  v12 = 0xE600000000000000;
  v13 = 0x6E6F73726550;
  if (EnumCaseMultiPayload != 3)
  {
    v13 = 0x754E20656E6F6850;
    v12 = 0xEC0000007265626DLL;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v11 = v13;
    v10 = v12;
  }

  if (EnumCaseMultiPayload)
  {
    v9 = 1802398028;
    v8 = 0xE400000000000000;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v14 = v9;
  }

  else
  {
    v14 = v11;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v15 = v8;
  }

  else
  {
    v15 = v10;
  }

  sub_2267F7D08(v3);
  MEMORY[0x22AA7F8E0](v14, v15);

  MEMORY[0x22AA7F8E0](0x3A65756C6176202CLL, 0xE900000000000020);
  sub_226836A48();
  MEMORY[0x22AA7F8E0](0x656C65537369202CLL, 0xEE00203A64657463);
  if (*(v0 + *(v6 + 24)))
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (*(v0 + *(v6 + 24)))
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x22AA7F8E0](v16, v17);

  MEMORY[0x22AA7F8E0](32032, 0xE200000000000000);
  return v19[0];
}

uint64_t sub_2267F80C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
  result = sub_2267FB6AC(a3, a5 + *(v8 + 20), type metadata accessor for DetectedEntityContext.DetectedEntityType);
  *(a5 + *(v8 + 24)) = a4;
  return result;
}

void *sub_2267F8130(uint64_t a1, unint64_t a2)
{
  v57 = a1;
  v52 = a2;
  v49 = sub_226835A08();
  v2 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226835A68();
  v54 = *(v5 - 1);
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FF0, qword_226874208);
  v7 = sub_226835AE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v50 = 4 * v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_226873690;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x277D1D4A0], v7);
  v13(v12 + v9, *MEMORY[0x277D1D488], v7);
  v13(v12 + 2 * v9, *MEMORY[0x277D1D478], v7);
  v14 = v51;
  v13(v12 + 3 * v9, *MEMORY[0x277D1D498], v7);
  v13(v12 + v50, *MEMORY[0x277D1D470], v7);
  v15 = v52;
  sub_2267C6F14(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_226835A88();
  swift_allocObject();
  v16 = sub_226835A38();
  (*(v54 + 104))(v53, *MEMORY[0x277D1D408], v55);
  sub_226835A78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C60, &qword_226873D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226872800;
  *(inited + 32) = v57;
  *(inited + 40) = v15;

  sub_2267A1368(inited);
  swift_setDeallocating();
  sub_2267A0598(inited + 32);
  v18 = sub_226835A58();
  (*(*v14 + 112))(v58, v18);
  v19 = v59;
  v20 = v60;
  __swift_project_boxed_opaque_existential_1(v58, v59);
  v21 = v56;
  v22 = (*(v20 + 16))(v16, v19, v20);
  v56 = v21;
  if (v21)
  {

    __swift_destroy_boxed_opaque_existential_1(v58);
    return v16;
  }

  v23 = v22;
  v50 = v16;
  v16 = v49;
  v24 = *(v22 + 16);
  if (!v24)
  {
    v55 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v25 = 0;
  v53 = *(v22 + 16);
  v54 = v2 + 16;
  v19 = v2 + 8;
  v48 = (v24 - 1);
  v55 = MEMORY[0x277D84F90];
LABEL_5:
  v26 = v25;
  while (v26 < *(v23 + 16))
  {
    (*(v2 + 16))(v4, v23 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v26, v16);
    v27 = v15;
    v28 = v15;
    v29 = v14;
    sub_2267F8870(v57, v28, &v61);
    if (v56)
    {
      goto LABEL_46;
    }

    (*v19)(v4, v16);
    v30 = v61;
    if (v61)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v31 = v55;
      }

      else
      {
        v31 = sub_2267FB3A0(0, v55[2] + 1, 1, v55);
      }

      v33 = v31[2];
      v32 = v31[3];
      v34 = (v33 + 1);
      if (v33 >= v32 >> 1)
      {
        v55 = (v33 + 1);
        v52 = v33;
        v35 = sub_2267FB3A0((v32 > 1), v33 + 1, 1, v31);
        v34 = v55;
        v33 = v52;
        v31 = v35;
      }

      v25 = v26 + 1;
      v31[2] = v34;
      v55 = v31;
      v31[v33 + 4] = v30;
      v14 = v29;
      v15 = v27;
      if (v48 == v26)
      {
LABEL_19:

        __swift_destroy_boxed_opaque_existential_1(v58);
        v36 = v55;
        v37 = v55[2];
        if (!v37)
        {
          v16 = MEMORY[0x277D84F90];
LABEL_38:

          return v16;
        }

        v38 = 0;
        v39 = v55 + 4;
        v16 = MEMORY[0x277D84F90];
        while (2)
        {
          if (v38 >= v36[2])
          {
            goto LABEL_41;
          }

          v19 = v39[v38];
          v40 = *(v19 + 16);
          v41 = v16[2];
          v4 = (v41 + v40);
          if (__OFADD__(v41, v40))
          {
            goto LABEL_42;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v4 <= v16[3] >> 1)
          {
            if (!*(v19 + 16))
            {
LABEL_21:

              v36 = v55;
              if (v40)
              {
                goto LABEL_43;
              }

LABEL_22:
              if (v37 == ++v38)
              {
                goto LABEL_38;
              }

              continue;
            }
          }

          else
          {
            if (v41 <= v4)
            {
              v43 = v41 + v40;
            }

            else
            {
              v43 = v41;
            }

            v16 = sub_2267FB1C8(isUniquelyReferenced_nonNull_native, v43, 1, v16);
            if (!*(v19 + 16))
            {
              goto LABEL_21;
            }
          }

          break;
        }

        v4 = ((v16[3] >> 1) - v16[2]);
        type metadata accessor for DetectedEntityContext.ActionEntity(0);
        if (v4 < v40)
        {
          goto LABEL_44;
        }

        swift_arrayInitWithCopy();

        v36 = v55;
        if (v40)
        {
          v44 = v16[2];
          v45 = __OFADD__(v44, v40);
          v46 = v44 + v40;
          if (v45)
          {
            goto LABEL_45;
          }

          v16[2] = v46;
        }

        goto LABEL_22;
      }

      goto LABEL_5;
    }

    ++v26;
    v14 = v29;
    v15 = v27;
    if (v53 == v26)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:

  (*v19)(v4, v16);

  __break(1u);
  return result;
}

uint64_t sub_2267F8870@<X0>(uint64_t a1@<X1>, void (*a2)(char *, unint64_t, uint64_t)@<X2>, uint64_t *a3@<X8>)
{
  v49 = a2;
  v44 = a3;
  v45 = sub_226836068();
  v48 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2848, qword_226875EA8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v42 - v6);
  v51 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
  v47 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226835B28();
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226835BA8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2268359E8();
  v16 = sub_226835B88();
  v18 = v17;
  result = (*(v13 + 8))(v15, v12);
  if (!v18)
  {
    goto LABEL_23;
  }

  v20 = v18;
  v21 = a1;
  v23 = v16 == a1;
  v22 = v49;
  v23 = v23 && v18 == v49;
  if (!v23 && (sub_226836B58() & 1) == 0)
  {
    v32 = sub_2267FBA9C();
    v34 = v45;
    v33 = v46;
    (*(v48 + 16))(v46, v32, v45);

    v35 = sub_226836038();
    v36 = sub_2268366C8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v53 = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_2263B4D48(v21, v22, &v53);
      *(v37 + 12) = 2080;
      v39 = sub_2263B4D48(v16, v20, &v53);
      v40 = v48;
      v41 = v39;

      *(v37 + 14) = v41;
      _os_log_impl(&dword_2263AA000, v35, v36, "Mismatched bundleID: expected %s, got %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA821D0](v38, -1, -1);
      MEMORY[0x22AA821D0](v37, -1, -1);

      result = (*(v40 + 8))(v46, v34);
    }

    else
    {

      result = (*(v48 + 8))(v33, v34);
    }

LABEL_23:
    v29 = 0;
    goto LABEL_24;
  }

  v43 = sub_2268359F8();
  v24 = *(v43 + 16);
  if (v24)
  {
    v25 = *(v52 + 16);
    v26 = v43 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v48 = *(v52 + 72);
    v49 = v25;
    v52 += 16;
    v27 = (v52 - 8);
    v28 = (v47 + 48);
    v29 = MEMORY[0x277D84F90];
    v45 = v16;
    v46 = v20;
    v25(v11, v26, v9);
    while (1)
    {
      sub_2267F8ED0(v11, v16, v20, v7);
      (*v27)(v11, v9);
      if ((*v28)(v7, 1, v51) == 1)
      {
        sub_2267A1DC0(v7, &qword_27D7A2848, qword_226875EA8);
      }

      else
      {
        sub_2267FB6AC(v7, v50, type metadata accessor for DetectedEntityContext.ActionEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_2267FB1C8(0, v29[2] + 1, 1, v29);
        }

        v31 = v29[2];
        v30 = v29[3];
        if (v31 >= v30 >> 1)
        {
          v29 = sub_2267FB1C8((v30 > 1), v31 + 1, 1, v29);
        }

        v29[2] = v31 + 1;
        sub_2267FB6AC(v50, v29 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v31, type metadata accessor for DetectedEntityContext.ActionEntity);
        v16 = v45;
        v20 = v46;
      }

      v26 += v48;
      if (!--v24)
      {
        break;
      }

      v49(v11, v26, v9);
    }
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

LABEL_24:
  *v44 = v29;
  return result;
}

uint64_t sub_2267F8ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v129 = a2;
  v130 = a3;
  v134 = a4;
  v110 = sub_226836068();
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2808, &qword_226875E68);
  MEMORY[0x28223BE20](v6 - 8);
  v132 = &v106 - v7;
  v133 = sub_226835AC8();
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v124 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2810, &qword_226875E70);
  MEMORY[0x28223BE20](v9 - 8);
  v120 = &v106 - v10;
  v121 = sub_226835868();
  v119 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v114 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2818, &qword_226875E78);
  MEMORY[0x28223BE20](v12 - 8);
  v112 = &v106 - v13;
  v113 = sub_226835AF8();
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v107 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2820, &qword_226875E80);
  MEMORY[0x28223BE20](v15 - 8);
  v126 = &v106 - v16;
  v127 = sub_226835838();
  v125 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v18 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2828, &qword_226875E88);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v106 - v20;
  v22 = sub_2268358D8();
  v122 = *(v22 - 8);
  v123 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_226835858();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v106 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v106 - v33;
  v128 = a1;
  sub_226835B18();
  sub_2267FA5DC(&v137);
  v35 = *(v26 + 16);
  v35(v31, v34, v25);
  v36 = (*(v26 + 88))(v31, v25);
  if (v36 == *MEMORY[0x277D1D300])
  {
    goto LABEL_2;
  }

  v115 = v34;
  v116 = v26;
  v117 = v31;
  v118 = v25;
  if (v36 == *MEMORY[0x277D1D2F0])
  {
    sub_2267A1AF8(&v137, v135, &qword_27D7A1AA0, &qword_2268732C0);
    if (!v136)
    {
      sub_2267A1DC0(&v137, &qword_27D7A1AA0, &qword_2268732C0);
      v48 = *(v116 + 8);
      v45 = v118;
      v48(v115, v118);
      sub_2267A1DC0(v135, &qword_27D7A1AA0, &qword_2268732C0);
      v41 = v132;
      (*(v131 + 56))(v132, 1, 1, v133);
      goto LABEL_16;
    }

    v41 = v132;
    v40 = v133;
    v42 = swift_dynamicCast();
    v43 = v131;
    (*(v131 + 56))(v41, v42 ^ 1u, 1, v40);
    v44 = (*(v43 + 48))(v41, 1, v40);
    v45 = v118;
    v46 = v116;
    v47 = v115;
    if (v44 == 1)
    {
      sub_2267A1DC0(&v137, &qword_27D7A1AA0, &qword_2268732C0);
      v48 = *(v46 + 8);
      v48(v47, v45);
LABEL_16:
      v60 = v134;
      v61 = v117;
      v62 = &qword_27D7A2808;
      v63 = &qword_226875E68;
LABEL_25:
      sub_2267A1DC0(v41, v62, v63);
LABEL_26:
      v48(v61, v45);
      v72 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
      return (*(*(v72 - 8) + 56))(v60, 1, 1, v72);
    }

    v64 = v124;
    (*(v43 + 32))(v124, v41, v40);
    v65 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
    v66 = v134;
    (*(v43 + 16))(v134 + *(v65 + 20), v64, v40);
    type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
LABEL_18:
    swift_storeEnumTagMultiPayload();
    v67 = sub_226835B08();
    (*(v43 + 8))(v64, v40);
    sub_2267A1DC0(&v137, &qword_27D7A1AA0, &qword_2268732C0);
    v68 = *(v46 + 8);
    v68(v47, v45);
    v69 = v130;
    *v66 = v129;
    v66[1] = v69;
    *(v66 + *(v65 + 24)) = v67 & 1;
    (*(*(v65 - 8) + 56))(v66, 0, 1, v65);

    return (v68)(v117, v45);
  }

  if (v36 == *MEMORY[0x277D1D308])
  {
    sub_2267A1AF8(&v137, v135, &qword_27D7A1AA0, &qword_2268732C0);
    if (!v136)
    {
      sub_2267A1DC0(&v137, &qword_27D7A1AA0, &qword_2268732C0);
      v48 = *(v116 + 8);
      v45 = v118;
      v48(v115, v118);
      sub_2267A1DC0(v135, &qword_27D7A1AA0, &qword_2268732C0);
      v41 = v126;
      (*(v125 + 56))(v126, 1, 1, v127);
      goto LABEL_24;
    }

    v41 = v126;
    v49 = v127;
    v50 = swift_dynamicCast();
    v51 = v125;
    (*(v125 + 56))(v41, v50 ^ 1u, 1, v49);
    v52 = (*(v51 + 48))(v41, 1, v49);
    v53 = v116;
    v54 = v115;
    if (v52 == 1)
    {
      sub_2267A1DC0(&v137, &qword_27D7A1AA0, &qword_2268732C0);
      v48 = *(v53 + 8);
      v45 = v118;
      v48(v54, v118);
LABEL_24:
      v60 = v134;
      v61 = v117;
      v62 = &qword_27D7A2820;
      v63 = &qword_226875E80;
      goto LABEL_25;
    }

    (*(v51 + 32))(v18, v41, v49);
    v73 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
    v74 = v134;
    (*(v51 + 16))(v134 + *(v73 + 20), v18, v49);
    type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
    swift_storeEnumTagMultiPayload();
    v75 = sub_226835B08();
    (*(v51 + 8))(v18, v49);
    sub_2267A1DC0(&v137, &qword_27D7A1AA0, &qword_2268732C0);
    v76 = *(v53 + 8);
    v77 = v54;
    v78 = v118;
    v76(v77, v118);
    v79 = v130;
    *v74 = v129;
    v74[1] = v79;
    *(v74 + *(v73 + 24)) = v75 & 1;
    (*(*(v73 - 8) + 56))(v74, 0, 1, v73);

    return (v76)(v117, v78);
  }

  else
  {
    if (v36 == *MEMORY[0x277D1D320])
    {
      sub_2267A1AF8(&v137, v135, &qword_27D7A1AA0, &qword_2268732C0);
      v45 = v118;
      if (v136)
      {
        v55 = v123;
        v56 = swift_dynamicCast();
        v57 = v122;
        (*(v122 + 56))(v21, v56 ^ 1u, 1, v55);
        v58 = (*(v57 + 48))(v21, 1, v55);
        v59 = v116;
        if (v58 != 1)
        {
          (*(v57 + 32))(v24, v21, v55);
          v82 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
          v83 = v134;
          (*(v57 + 16))(v134 + *(v82 + 20), v24, v55);
          type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
          swift_storeEnumTagMultiPayload();
          v84 = sub_226835B08();
          (*(v57 + 8))(v24, v55);
          sub_2267A1DC0(&v137, &qword_27D7A1AA0, &qword_2268732C0);
          v85 = *(v59 + 8);
          v85(v115, v45);
          v86 = v130;
          *v83 = v129;
          v83[1] = v86;
          *(v83 + *(v82 + 24)) = v84 & 1;
          (*(*(v82 - 8) + 56))(v83, 0, 1, v82);

          return (v85)(v117, v45);
        }

        sub_2267A1DC0(&v137, &qword_27D7A1AA0, &qword_2268732C0);
        v48 = *(v59 + 8);
        v48(v115, v45);
      }

      else
      {
        sub_2267A1DC0(&v137, &qword_27D7A1AA0, &qword_2268732C0);
        v48 = *(v116 + 8);
        v48(v115, v45);
        sub_2267A1DC0(v135, &qword_27D7A1AA0, &qword_2268732C0);
        (*(v122 + 56))(v21, 1, 1, v123);
      }

      v61 = v117;
      sub_2267A1DC0(v21, &qword_27D7A2828, &qword_226875E88);
      v60 = v134;
      goto LABEL_26;
    }

    if (v36 == *MEMORY[0x277D1D318])
    {
      sub_2267A1AF8(&v137, v135, &qword_27D7A1AA0, &qword_2268732C0);
      v45 = v118;
      v47 = v115;
      if (v136)
      {
        v41 = v120;
        v40 = v121;
        v70 = swift_dynamicCast();
        v43 = v119;
        (*(v119 + 56))(v41, v70 ^ 1u, 1, v40);
        v71 = (*(v43 + 48))(v41, 1, v40);
        v46 = v116;
        if (v71 != 1)
        {
          v64 = v114;
          (*(v43 + 32))(v114, v41, v40);
          v65 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
          v66 = v134;
          (*(v43 + 16))(v134 + *(v65 + 20), v64, v40);
          type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
          goto LABEL_18;
        }

        sub_2267A1DC0(&v137, &qword_27D7A1AA0, &qword_2268732C0);
        v48 = *(v46 + 8);
        v48(v47, v45);
      }

      else
      {
        sub_2267A1DC0(&v137, &qword_27D7A1AA0, &qword_2268732C0);
        v48 = *(v116 + 8);
        v48(v47, v45);
        sub_2267A1DC0(v135, &qword_27D7A1AA0, &qword_2268732C0);
        v41 = v120;
        (*(v119 + 56))(v120, 1, 1, v121);
      }

      v60 = v134;
      v61 = v117;
      v62 = &qword_27D7A2810;
      v63 = &qword_226875E70;
      goto LABEL_25;
    }

    v25 = v118;
    v31 = v117;
    v26 = v116;
    v34 = v115;
    if (v36 == *MEMORY[0x277D1D310])
    {
      goto LABEL_2;
    }

    if (v36 == *MEMORY[0x277D1D2F8])
    {
      sub_2267A1AF8(&v137, v135, &qword_27D7A1AA0, &qword_2268732C0);
      if (v136)
      {
        v41 = v112;
        v40 = v113;
        v80 = swift_dynamicCast();
        v43 = v111;
        (*(v111 + 56))(v41, v80 ^ 1u, 1, v40);
        v81 = (*(v43 + 48))(v41, 1, v40);
        v45 = v118;
        v46 = v116;
        v47 = v115;
        if (v81 != 1)
        {
          v64 = v107;
          (*(v43 + 32))(v107, v41, v40);
          v65 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
          v66 = v134;
          (*(v43 + 16))(v134 + *(v65 + 20), v64, v40);
          type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
          goto LABEL_18;
        }

        sub_2267A1DC0(&v137, &qword_27D7A1AA0, &qword_2268732C0);
        v48 = *(v46 + 8);
        v48(v47, v45);
      }

      else
      {
        sub_2267A1DC0(&v137, &qword_27D7A1AA0, &qword_2268732C0);
        v48 = *(v116 + 8);
        v45 = v118;
        v48(v115, v118);
        sub_2267A1DC0(v135, &qword_27D7A1AA0, &qword_2268732C0);
        v41 = v112;
        (*(v111 + 56))(v112, 1, 1, v113);
      }

      v60 = v134;
      v61 = v117;
      v62 = &qword_27D7A2818;
      v63 = &qword_226875E78;
      goto LABEL_25;
    }

    v25 = v118;
    v31 = v117;
    v26 = v116;
    v34 = v115;
    if (v36 == *MEMORY[0x277D1D2E8] || v36 == *MEMORY[0x277D1D328])
    {
LABEL_2:
      sub_2267A1DC0(&v137, &qword_27D7A1AA0, &qword_2268732C0);
      v37 = *(v26 + 8);
      v37(v34, v25);
      v37(v31, v25);
      v38 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
      return (*(*(v38 - 8) + 56))(v134, 1, 1, v38);
    }

    v87 = sub_2267FBA9C();
    v88 = v108;
    v89 = v109;
    v90 = v110;
    (*(v108 + 16))(v109, v87, v110);
    v35(v28, v34, v25);
    v91 = v89;
    v92 = sub_226836038();
    v93 = sub_2268366C8();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v133 = v94;
      v95 = swift_slowAlloc();
      v135[0] = v95;
      *v94 = 136315138;
      sub_2267FB714(&qword_27D7A2800, MEMORY[0x277D1D330], MEMORY[0x277D1D348]);
      LODWORD(v132) = v93;
      v96 = sub_226836B48();
      v98 = v97;
      v99 = *(v116 + 8);
      v99(v28, v118);
      v100 = sub_2263B4D48(v96, v98, v135);

      v101 = v133;
      *(v133 + 4) = v100;
      v102 = v101;
      _os_log_impl(&dword_2263AA000, v92, v132, "Unhandled DetectedEntity case: %s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v95);
      v103 = v95;
      v25 = v118;
      MEMORY[0x22AA821D0](v103, -1, -1);
      MEMORY[0x22AA821D0](v102, -1, -1);

      (*(v88 + 8))(v109, v110);
    }

    else
    {

      v99 = *(v116 + 8);
      v99(v28, v25);
      (*(v88 + 8))(v91, v90);
    }

    sub_2267A1DC0(&v137, &qword_27D7A1AA0, &qword_2268732C0);
    v99(v34, v25);
    v104 = v117;
    v105 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
    (*(*(v105 - 8) + 56))(v134, 1, 1, v105);
    return (v99)(v104, v25);
  }
}

uint64_t sub_2267FA5DC@<X0>(uint64_t *a1@<X8>)
{
  v97 = a1;
  v80 = sub_226836068();
  v75 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_226835AB8();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_226835AA8();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226835AF8();
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x28223BE20](v4);
  v81 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226835848();
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x28223BE20](v6);
  v84 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226835868();
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x28223BE20](v8);
  v87 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2268358D8();
  v91 = *(v10 - 8);
  v92 = v10;
  MEMORY[0x28223BE20](v10);
  v90 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226835838();
  v94 = *(v12 - 8);
  v95 = v12;
  MEMORY[0x28223BE20](v12);
  v93 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_226835AC8();
  v96 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_226835828();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_226835858();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v71 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v69 - v26;
  v28 = *(v22 + 16);
  v28(&v69 - v26, v98, v21, v25);
  v29 = (*(v22 + 88))(v27, v21);
  if (v29 == *MEMORY[0x277D1D300])
  {
    (*(v22 + 96))(v27, v21);
    v30 = *(v18 + 32);
    v30(v20, v27, v17);
    v31 = v97;
    v97[3] = v17;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
    return (v30)(boxed_opaque_existential_0, v20, v17);
  }

  v34 = v97;
  if (v29 == *MEMORY[0x277D1D2F0])
  {
    (*(v22 + 96))(v27, v21);
    v35 = *(v96 + 32);
    v35(v16, v27, v14);
    v34[3] = v14;
    v36 = __swift_allocate_boxed_opaque_existential_0(v34);
    return (v35)(v36, v16, v14);
  }

  if (v29 == *MEMORY[0x277D1D308])
  {
    (*(v22 + 96))(v27, v21);
    v37 = v93;
    v38 = *(v94 + 32);
    v39 = v95;
    v38(v93, v27, v95);
    v34[3] = v39;
    v40 = __swift_allocate_boxed_opaque_existential_0(v34);
    return (v38)(v40, v37, v39);
  }

  v41 = v97;
  if (v29 == *MEMORY[0x277D1D320])
  {
    (*(v22 + 96))(v27, v21);
    v42 = v90;
    v43 = *(v91 + 32);
    v44 = v92;
    v43(v90, v27, v92);
    goto LABEL_20;
  }

  if (v29 == *MEMORY[0x277D1D318])
  {
    (*(v22 + 96))(v27, v21);
    v42 = v87;
    v43 = *(v88 + 32);
    v44 = v89;
    v43(v87, v27, v89);
    goto LABEL_20;
  }

  if (v29 == *MEMORY[0x277D1D310])
  {
    (*(v22 + 96))(v27, v21);
    v42 = v84;
    v43 = *(v85 + 32);
    v44 = v86;
    v43(v84, v27, v86);
    goto LABEL_20;
  }

  if (v29 == *MEMORY[0x277D1D2F8])
  {
    (*(v22 + 96))(v27, v21);
    v42 = v81;
    v43 = *(v82 + 32);
    v44 = v83;
    v43(v81, v27, v83);
    goto LABEL_20;
  }

  if (v29 == *MEMORY[0x277D1D2E8])
  {
    (*(v22 + 96))(v27, v21);
    v43 = *(v77 + 32);
    v42 = v76;
    v45 = v76;
    v46 = v27;
    v47 = &v101;
LABEL_19:
    v44 = *(v47 - 32);
    v43(v45, v46, v44);
LABEL_20:
    v41[3] = v44;
    v48 = __swift_allocate_boxed_opaque_existential_0(v41);
    return (v43)(v48, v42, v44);
  }

  if (v29 == *MEMORY[0x277D1D328])
  {
    (*(v22 + 96))(v27, v21);
    v43 = *(v73 + 32);
    v42 = v72;
    v45 = v72;
    v46 = v27;
    v47 = &v100;
    goto LABEL_19;
  }

  v49 = v21;
  v50 = sub_2267FBA9C();
  v51 = v75;
  (*(v75 + 16))(v79, v50, v80);
  v52 = v71;
  (v28)(v71, v98, v49);
  v53 = sub_226836038();
  v54 = sub_2268366C8();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v98 = v55;
    v56 = swift_slowAlloc();
    v99 = v56;
    *v55 = 136315138;
    sub_2267FB714(&qword_27D7A2800, MEMORY[0x277D1D330], MEMORY[0x277D1D348]);
    LODWORD(v96) = v54;
    v57 = sub_226836B48();
    v58 = v49;
    v70 = v49;
    v60 = v59;
    v61 = v52;
    v62 = *(v22 + 8);
    v62(v61, v58);
    v63 = sub_2263B4D48(v57, v60, &v99);

    v64 = v98;
    *(v98 + 1) = v63;
    v65 = v64;
    _os_log_impl(&dword_2263AA000, v53, v96, "Unknown DetectedEntity case encountered: %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    v66 = v56;
    v41 = v34;
    MEMORY[0x22AA821D0](v66, -1, -1);
    MEMORY[0x22AA821D0](v65, -1, -1);

    (*(v51 + 8))(v79, v80);
    v67 = v70;
  }

  else
  {

    v68 = v52;
    v62 = *(v22 + 8);
    v62(v68, v49);
    (*(v51 + 8))(v79, v80);
    v67 = v49;
  }

  *v41 = 0u;
  *(v41 + 1) = 0u;
  return (v62)(v27, v67);
}

uint64_t DetectedEntityContext.__deallocating_deinit()
{
  sub_2267A1DC0(v0 + 16, &qword_27D7A1A60, &unk_2268732B0);

  return swift_deallocClassInstance();
}

double sub_2267FB184()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

double sub_2267FB1B4()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

void *sub_2267FB1C8(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2830, &qword_226875E90);
  v10 = *(type metadata accessor for DetectedEntityContext.ActionEntity(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DetectedEntityContext.ActionEntity(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2267FB3A0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2838, &qword_226875E98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2840, &qword_226875EA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2267FB548(uint64_t a1, double a2)
{
  result = sub_2268358D8();
  if (v3 <= 0x3F)
  {
    result = sub_226835838();
    if (v4 <= 0x3F)
    {
      result = sub_226835AF8();
      if (v5 <= 0x3F)
      {
        result = sub_226835868();
        if (v6 <= 0x3F)
        {
          result = sub_226835AC8();
          if (v7 <= 0x3F)
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

void sub_2267FB620(uint64_t a1)
{
  sub_2267D86B4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DetectedEntityContext.DetectedEntityType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2267FB6AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2267FB714(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2267FB75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(_OWORD *)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v23 = a5;
  v13 = sub_226836828();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  if (*(a1 + 16) && (v17 = sub_2263B9740(a2, a3), (v18 & 1) != 0))
  {
    sub_2263B4F20(*(a1 + 56) + 32 * v17, v24);
    sub_2267CAE58(v24, v25);
    a4(v25);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v19 = *(a6 - 8);
    if ((*(v19 + 48))(v16, 1, a6) != 1)
    {
      return (*(v19 + 32))(a7, v16, a6);
    }

    (*(v14 + 8))(v16, v13);
    v20 = v19;
  }

  else
  {
    v20 = *(a6 - 8);
  }

  return (*(v20 + 16))(a7, v23, a6);
}

id sub_2267FB954(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PListDictionaryUtilities();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2267FB9C8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PListDictionaryUtilities();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t *sub_2267FBA4C()
{
  if (qword_27D7A5130 != -1)
  {
    swift_once();
  }

  return &qword_27D7A5260;
}

uint64_t *sub_2267FBB10()
{
  if (qword_27D7A5138 != -1)
  {
    swift_once();
  }

  return &qword_27D7A5268;
}

uint64_t *sub_2267FBBD4()
{
  if (qword_27D7A5140 != -1)
  {
    swift_once();
  }

  return &qword_27D7A5270;
}

uint64_t sub_2267FBC98(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_226836068();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_226836078();
}

uint64_t *sub_2267FBD24()
{
  if (qword_27D7A5148 != -1)
  {
    swift_once();
  }

  return &qword_27D7A5278;
}

uint64_t sub_2267FBD98(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_226836068();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_2267FBE10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_226836068();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2267FBF48()
{
  sub_2267CEF14();
  result = sub_226836818();
  qword_27D7A5270 = result;
  return result;
}

uint64_t sub_2267FBFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_2267CEF14();
  result = sub_226836818();
  *a4 = result;
  return result;
}

id sub_2267FC084(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id sub_2267FC0E4()
{
  type metadata accessor for WatchSmartStackSender();
  sub_2267A5F5C(v3);
  *&v0[OBJC_IVAR___ATXWatchSmartStacksSender_smartStackSender] = sub_2267A5F9C(v3);
  v2.receiver = v0;
  v2.super_class = ATXWatchSmartStacksSender;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_2267FC1BC()
{
  v1 = *(v0 + OBJC_IVAR___ATXWatchSmartStacksSender_smartStackSender);
  if (v1)
  {
    return (*(*v1 + 104))();
  }

  return result;
}

unint64_t type metadata accessor for ATXWatchSmartStacksSender()
{
  result = qword_27D7A5150;
  if (!qword_27D7A5150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A5150);
  }

  return result;
}

void ATXSleepSuggestedHomePageWasCreatedDuringMigration_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "NSNumber * _Nullable ATXSleepSuggestedHomePageWasCreatedDuringMigration(void)";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: Failed to fetch sleep settings with error: %@", &v2, 0x16u);
}

void ATXSleepSuggestedHomePageWasCreatedDuringMigration_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "NSNumber * _Nullable ATXSleepSuggestedHomePageWasCreatedDuringMigration(void)";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: Unable to read sleep settings because couldn't soft link HKSPSleepStore.", &v1, 0xCu);
}

void __getHKSPSleepStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getHKSPSleepStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXSleepSuggestedHomePageWasCreatedDuringMigration.m" lineNumber:17 description:{@"Unable to find class %s", "HKSPSleepStore"}];

  __break(1u);
}

void __getHKSPSleepStoreClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SleepLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXSleepSuggestedHomePageWasCreatedDuringMigration.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

void engagementTypeForPrediction(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%@ is not a valid engagment type to call engagementTypeForPrediction with engaged==YES", buf, 0xCu);
}

void shouldReturnUndefined_cold_1(uint64_t a1)
{
  v2 = __atxlog_handle_default(a1);
  if (OUTLINED_FUNCTION_10(v2))
  {
    v11 = 0;
    OUTLINED_FUNCTION_3_2(&dword_2263AA000, v3, v4, "App prediction interpreter stack underflow", v5, v6, v7, v8, v11);
  }

  v9 = [MEMORY[0x277CCA890] currentHandler];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL shouldReturnUndefined(_ATXScoreInterpreterCtx *__strong, NSUInteger)"}];
  [v9 handleFailureInFunction:v10 file:@"_ATXScoreInterpreter.m" lineNumber:224 description:@"App prediction interpreter stack underflow"];

  __break(1u);
}

void drop_cold_1(uint64_t a1)
{
  v2 = __atxlog_handle_default(a1);
  if (OUTLINED_FUNCTION_10(v2))
  {
    v11 = 0;
    OUTLINED_FUNCTION_3_2(&dword_2263AA000, v3, v4, "App prediction interpreter stack underflow", v5, v6, v7, v8, v11);
  }

  v9 = [MEMORY[0x277CCA890] currentHandler];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void drop(_ATXScoreInterpreterCtx *__strong, NSUInteger)"}];
  [v9 handleFailureInFunction:v10 file:@"_ATXScoreInterpreter.m" lineNumber:214 description:@"App prediction interpreter stack underflow"];

  __break(1u);
}

void push_cold_1(uint64_t a1)
{
  v2 = __atxlog_handle_default(a1);
  if (OUTLINED_FUNCTION_10(v2))
  {
    v11 = 0;
    OUTLINED_FUNCTION_3_2(&dword_2263AA000, v3, v4, "App prediction interpreter stack overflow", v5, v6, v7, v8, v11);
  }

  v9 = [MEMORY[0x277CCA890] currentHandler];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void push(_ATXScoreInterpreterCtx *__strong, double)"}];
  [v9 handleFailureInFunction:v10 file:@"_ATXScoreInterpreter.m" lineNumber:194 description:@"App prediction interpreter stack overflow"];

  __break(1u);
}

void pop_cold_1(uint64_t a1)
{
  v2 = __atxlog_handle_default(a1);
  if (OUTLINED_FUNCTION_10(v2))
  {
    v11 = 0;
    OUTLINED_FUNCTION_3_2(&dword_2263AA000, v3, v4, "App prediction interpreter stack underflow", v5, v6, v7, v8, v11);
  }

  v9 = [MEMORY[0x277CCA890] currentHandler];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double pop(_ATXScoreInterpreterCtx *__strong)"];
  [v9 handleFailureInFunction:v10 file:@"_ATXScoreInterpreter.m" lineNumber:204 description:@"App prediction interpreter stack underflow"];

  __break(1u);
}

void ATXGamePlayKitCDecisionTree::findActionForAnswers(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Encountered invalid predicate %{public}@", &v2, 0xCu);
}

void linkChangedCallback_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "WiFi link status change: %@", &v2, 0xCu);
}

void __linkChangedCallback_block_invoke_cold_1(uint64_t *a1, unsigned __int8 *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2 ^ 1;
  v5 = 138412546;
  v6 = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "SSID changed to '%@', link active: %i", &v5, 0x12u);
}

void scPrefsNotifyCallback_cold_1(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Airplane mode change detected. New status: %{BOOL}d", v2, 8u);
}

void ATXUpdatePredictions_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [ATXUpdatePredictionsReasons stringForUpdatePredictionsReason:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXUpdatePredictions: Can not refresh predictions when class C locked! Reason: %@", &v4, 0xCu);
}

void __ATXUpdatePredictions_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "error regenerating gallery after process restart due to language change: %@", &v2, 0xCu);
}

void readWholeFile_cold_1()
{
  LODWORD(v6) = 67109120;
  HIDWORD(v6) = *__error();
  OUTLINED_FUNCTION_0_20(&dword_2263AA000, v0, v1, "Could not stat fd, errno=%i", v2, v3, v4, v5, v6);
}

void readWholeFile_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Wrong length; expected %lu, got %lu", &v3, 0x16u);
}

void readWholeFile_cold_3()
{
  LODWORD(v6) = 67109120;
  HIDWORD(v6) = *__error();
  OUTLINED_FUNCTION_0_20(&dword_2263AA000, v0, v1, "Could not read; errno=%i", v2, v3, v4, v5, v6);
}

void _ATXCopySqliteDatabaseClassC_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _ATXCopySqliteDatabaseClassC(NSString *__strong, NSString *__strong, BOOL)"}];
  [v1 handleFailureInFunction:v0 file:@"_ATXInitialization.m" lineNumber:228 description:{@"Invalid parameter not satisfying: %@", @"fromPath"}];
}

void _ATXCopySqliteDatabaseClassC_cold_2()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _ATXCopySqliteDatabaseClassC(NSString *__strong, NSString *__strong, BOOL)"}];
  [v1 handleFailureInFunction:v0 file:@"_ATXInitialization.m" lineNumber:229 description:{@"Invalid parameter not satisfying: %@", @"toPath"}];
}

void _ATXCopySqliteDatabaseDataClassC_cold_3(void *a1)
{
  v1 = [a1 allKeys];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "Could not find .db file in %@", v4, v5, v6, v7);
}

void _ATXExtractFilesFromDECBackupArchiveIfExists_cold_4()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_2263AA000, v1, OS_LOG_TYPE_ERROR, "Error opening %@: %@", v2, 0x16u);
}

void ATXEnableMobileAssetDataVault_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_2263AA000, v0, OS_LOG_TYPE_FAULT, "Failed to initialize datavault for DuetExpertCenterAsset: %@", v1, 0xCu);
}

void ATXSharedDefaultHomeScreenItemUpdater_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ATXDefaultHomeScreenItemUpdater *ATXSharedDefaultHomeScreenItemUpdater(void)"];
  [v1 handleFailureInFunction:v0 file:@"_ATXInitialization.m" lineNumber:111 description:@"We are class C locked while accessing a histogram"];
}

void __registerForRestoreStateNotifications_block_invoke_cold_1()
{
  dlerror();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v0, v1, "Could not load symbol: %s", v2, v3, v4, v5);
}

void __registerForFaceSuggestionsCTSJob_block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void registerForFaceSuggestionsCTSJob(void)_block_invoke";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%s: could not set activity to CONTINUE, not refreshing face suggestions", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __registerForFaceSuggestionsCTSJob_block_invoke_642_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "void registerForFaceSuggestionsCTSJob(void)_block_invoke";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: regenerating Lock Screen suggestions failed: %@", &v2, 0x16u);
}

void dateColumnNameForLaunchType_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __getPRSServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRSServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXUserEducationSuggestionCustomizeFocusServer.m" lineNumber:24 description:{@"Unable to find class %s", "PRSService"}];

  __break(1u);
}

void __getPRSServiceClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PosterBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXUserEducationSuggestionCustomizeFocusServer.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void __getSGSuggestionsServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSGSuggestionsServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXActionFeedback.m" lineNumber:30 description:{@"Unable to find class %s", "SGSuggestionsService"}];

  __break(1u);
}

void __getSGSuggestionsServiceClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreSuggestionsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXActionFeedback.m" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}

uint64_t entropy(uint64_t a1, size_t size, void *a3)
{
  result = malloc_type_posix_memalign(a1, 0x10uLL, size, 0x8CD5FEA2uLL);
  *(a1 + 8) = 0;
  if (result)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v6);
  }

  *a3 = *a1;
  return result;
}

{
  result = malloc_type_posix_memalign(a1, 8uLL, size, 0x828E71E3uLL);
  *(a1 + 8) = 0;
  if (result)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v6);
  }

  *a3 = *a1;
  return result;
}

void ATXUserEducationSuggestionStateToString_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "NSString * _Nonnull ATXUserEducationSuggestionStateToString(ATXUserEducationSuggestionState)";
  v4 = 2048;
  v5 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "%s: Unknown state: %ld", &v2, 0x16u);
}

void atx_CMFBlockListIsItemBlocked_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Boolean atx_CMFBlockListIsItemBlocked(CMFItemRef)"];
  [v0 handleFailureInFunction:v1 file:@"ATXActionPredictionsProcessor.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

void CommunicationsFilterLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CommunicationsFilterLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXActionPredictionsProcessor.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
}

void ATXSetInputAge_cold_1(void *a1, uint8_t *buf, os_log_t log, double a4)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a4;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Invalid age for %@: %f. last date cannot be in the future.", buf, 0x16u);
}

void pop_cold_1_0(uint64_t a1)
{
  v2 = __atxlog_handle_default(a1);
  if (OUTLINED_FUNCTION_10(v2))
  {
    v11 = 0;
    OUTLINED_FUNCTION_3_2(&dword_2263AA000, v3, v4, "App prediction interpreter stack underflow", v5, v6, v7, v8, v11);
  }

  v9 = [MEMORY[0x277CCA890] currentHandler];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double pop(_ATXDeprecatedScoreInterpreterCtx *__strong)"];
  [v9 handleFailureInFunction:v10 file:@"_ATXDeprecatedScoreInterpreter.m" lineNumber:189 description:@"App prediction interpreter stack underflow"];

  __break(1u);
}

void runInstructionsAndPopResult_cold_1(uint64_t a1)
{
  v2 = __atxlog_handle_default(a1);
  if (OUTLINED_FUNCTION_10(v2))
  {
    v11 = 0;
    OUTLINED_FUNCTION_3_2(&dword_2263AA000, v3, v4, "App prediction interpreter stack overflow", v5, v6, v7, v8, v11);
  }

  v9 = [MEMORY[0x277CCA890] currentHandler];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void push(_ATXDeprecatedScoreInterpreterCtx *__strong, double)"}];
  [v9 handleFailureInFunction:v10 file:@"_ATXDeprecatedScoreInterpreter.m" lineNumber:179 description:@"App prediction interpreter stack overflow"];

  __break(1u);
}

void shouldReturnUndefined_cold_1_0(uint64_t a1)
{
  v2 = __atxlog_handle_default(a1);
  if (OUTLINED_FUNCTION_10(v2))
  {
    v11 = 0;
    OUTLINED_FUNCTION_3_2(&dword_2263AA000, v3, v4, "App prediction interpreter stack underflow", v5, v6, v7, v8, v11);
  }

  v9 = [MEMORY[0x277CCA890] currentHandler];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL shouldReturnUndefined(_ATXDeprecatedScoreInterpreterCtx *__strong, NSUInteger)"}];
  [v9 handleFailureInFunction:v10 file:@"_ATXDeprecatedScoreInterpreter.m" lineNumber:209 description:@"App prediction interpreter stack underflow"];

  __break(1u);
}

void drop_cold_1_0(uint64_t a1)
{
  v2 = __atxlog_handle_default(a1);
  if (OUTLINED_FUNCTION_10(v2))
  {
    v11 = 0;
    OUTLINED_FUNCTION_3_2(&dword_2263AA000, v3, v4, "App prediction interpreter stack underflow", v5, v6, v7, v8, v11);
  }

  v9 = [MEMORY[0x277CCA890] currentHandler];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void drop(_ATXDeprecatedScoreInterpreterCtx *__strong, NSUInteger)"}];
  [v9 handleFailureInFunction:v10 file:@"_ATXDeprecatedScoreInterpreter.m" lineNumber:199 description:@"App prediction interpreter stack underflow"];

  __break(1u);
}

void __atxRegisterCTSJobHandler_block_invoke_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void atxRegisterCTSJobHandler(const char * _Nonnull, __strong xpc_object_t _Nonnull, __strong ATXCTSJobHandler _Nonnull)_block_invoke"}];
  [v1 handleFailureInFunction:v0 file:@"ATXCTSJobHelper.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"handleCTSJob"}];
}

void __atxRegisterCTSJobHandlerForNonClassCLocked_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 136315138;
  v4 = v2;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Unexpected run of CTS job %s when device is class-C locked", &v3, 0xCu);
}

void __atxRegisterBGSTJobHandlerForNonClassCLocked_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 136315138;
  v4 = v2;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Unexpected run of BGST job %s when device is class-C locked", &v3, 0xCu);
}

void __getDeviceSupported_block_invoke_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2080;
  v5 = a1;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "os_eligibility_get_domain_answer failed with errno %d: %s", v3, 0x12u);
}

void __getPRSServiceClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRSServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXFaceSuggestionServer.m" lineNumber:40 description:{@"Unable to find class %s", "PRSService"}];

  __break(1u);
}

void __getPRSServiceClass_block_invoke_cold_2_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PosterBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXFaceSuggestionServer.m" lineNumber:39 description:{@"%s", *a1}];

  __break(1u);
}

void DNDModeSemanticTypeToSuggestedFaceType_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "ATXModeFaceSuggestionGenerator: unhandled DNDModeSemanticType %ld", &v2, 0xCu);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}