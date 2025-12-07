uint64_t sub_25845F964()
{
  v1 = *v0;
  sub_258533EEC();
  MEMORY[0x259C81F40](v1);
  return sub_258533F2C();
}

uint64_t sub_25845F9D8(uint64_t a1)
{
  v2 = *v1;
  sub_258533EEC();
  MEMORY[0x259C81F40](v2);
  return sub_258533F2C();
}

uint64_t sub_25845FA84()
{
  if (*v0)
  {
    return 22;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_25845FAAC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  sub_258465168((v0 + 21), &qword_27F92FB70, &qword_2585353E8);

  sub_258464B24(v0[27], v0[28]);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_25845FB48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25845FB68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 6) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25845FBC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25845FBE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ControlConnectionMigrationManager.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlConnectionMigrationManager.State(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25845FDA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25845FDC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_25845FE00()
{
  result = qword_27F92FAA0;
  if (!qword_27F92FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FAA0);
  }

  return result;
}

uint64_t sub_25845FE64@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ControlConnectionMigrationManager();
  result = sub_258533B9C();
  *a2 = result;
  return result;
}

uint64_t sub_25845FEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v5[44] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB80, &qword_258535410);
  v5[45] = v6;
  v7 = *(v6 - 8);
  v5[46] = v7;
  v5[47] = *(v7 + 64);
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25845FFC4, v4, 0);
}

uint64_t sub_25845FFC4()
{
  v25 = v0;
  v1 = v0[43];
  if (*(v1 + 112))
  {
    sub_258464BC4();
    v2 = swift_allocError();
    *v3 = 0;
    swift_willThrow();
    v0[55] = v2;
    v4 = swift_task_alloc();
    v0[56] = v4;
    *v4 = v0;
    v4[1] = sub_258461010;

    return sub_2584621A4(v2);
  }

  else
  {
    if (qword_27F92F910 != -1)
    {
      swift_once();
    }

    v6 = sub_258532A4C();
    v0[50] = __swift_project_value_buffer(v6, qword_27F93D080);

    v7 = sub_258532A2C();
    v8 = sub_2585338EC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      v23 = 0;
      *v9 = 136315138;
      v24 = 0xE000000000000000;
      sub_258533B8C();
      v0[34] = v23;
      v0[35] = 0xE000000000000000;
      MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
      type metadata accessor for ControlConnectionMigrationManager();
      sub_258464D04(&qword_27F92FAA8, v11, type metadata accessor for ControlConnectionMigrationManager, &unk_25853536C);
      v0[38] = sub_258533B9C();
      sub_258533C8C();
      MEMORY[0x259C81500](93, 0xE100000000000000);
      v12 = sub_2584713B0(v0[34], v0[35], &v22);

      *(v9 + 4) = v12;
      _os_log_impl(&dword_25845E000, v7, v8, "%s activating", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x259C82900](v10, -1, -1);
      MEMORY[0x259C82900](v9, -1, -1);
    }

    v13 = v0[42];
    v14 = v0[43];
    v15 = v0[41];
    *(v1 + 112) = 1;
    v17 = v14[27];
    v16 = v14[28];
    v14[27] = v15;
    v14[28] = v13;

    sub_258464B24(v17, v16);
    __swift_project_boxed_opaque_existential_1(v14 + 15, v14[18]);
    v18 = swift_task_alloc();
    v0[51] = v18;
    *v18 = v0;
    v18[1] = sub_258460348;
    v19 = v0[49];
    v20 = v0[39];
    v21 = v0[40];

    return sub_2584E7D68(v19, v20, v21);
  }
}

uint64_t sub_258460348()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 344);
  if (v0)
  {
    v4 = sub_25846067C;
  }

  else
  {
    v4 = sub_258460474;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258460474()
{
  if (*(v0[43] + 112) == 1)
  {
    v1 = v0[40];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v12 = (*(v3 + 104) + **(v3 + 104));
    v4 = swift_task_alloc();
    v0[53] = v4;
    *v4 = v0;
    v4[1] = sub_258460718;

    return v12(v0 + 12, v2, v3);
  }

  else
  {
    v6 = v0[49];
    v7 = v0[45];
    v8 = v0[46];
    sub_258464BC4();
    v9 = swift_allocError();
    *v10 = 0;
    swift_willThrow();
    (*(v8 + 8))(v6, v7);
    v0[55] = v9;
    v11 = swift_task_alloc();
    v0[56] = v11;
    *v11 = v0;
    v11[1] = sub_258461010;

    return sub_2584621A4(v9);
  }
}

uint64_t sub_25846067C()
{
  v1 = v0[52];
  v0[55] = v1;
  v2 = swift_task_alloc();
  v0[56] = v2;
  *v2 = v0;
  v2[1] = sub_258461010;

  return sub_2584621A4(v1);
}

uint64_t sub_258460718()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 344);
  if (v0)
  {
    v4 = sub_2584611B4;
  }

  else
  {
    v4 = sub_258460844;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258460844()
{
  v54 = v0;
  v1 = *(v0 + 120);
  if (!v1)
  {
    sub_258465168(v0 + 96, &qword_27F92FB90, &qword_258535420);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    goto LABEL_9;
  }

  v2 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  if (!*(v0 + 80))
  {
LABEL_9:
    v19 = *(v0 + 392);
    v21 = *(v0 + 360);
    v20 = *(v0 + 368);
    sub_258465168(v0 + 56, &qword_27F92FB70, &qword_2585353E8);
    sub_258464BC4();
    v15 = swift_allocError();
    *v22 = 1;
    swift_willThrow();
LABEL_11:
    (*(v20 + 8))(v19, v21);
    goto LABEL_12;
  }

  v3 = *(v0 + 344);
  sub_258464C18((v0 + 56), v0 + 16);
  if (*(v3 + 112) != 1)
  {
    v19 = *(v0 + 392);
    v21 = *(v0 + 360);
    v20 = *(v0 + 368);
    sub_258464BC4();
    v15 = swift_allocError();
    *v23 = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    goto LABEL_11;
  }

  v4 = *(v0 + 344);
  sub_258464C30(v0 + 16, v0 + 136);
  swift_beginAccess();
  sub_258464C94(v0 + 136, v4 + 168);
  swift_endAccess();

  v5 = sub_258532A2C();
  v6 = sub_2585338EC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v51 = v8;
    v52 = 0;
    *v7 = 136315394;
    v53 = 0xE000000000000000;
    sub_258533B8C();
    *(v0 + 256) = v52;
    *(v0 + 264) = 0xE000000000000000;
    MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
    type metadata accessor for ControlConnectionMigrationManager();
    sub_258464D04(&qword_27F92FAA8, v9, type metadata accessor for ControlConnectionMigrationManager, &unk_25853536C);
    *(v0 + 296) = sub_258533B9C();
    sub_258533C8C();
    MEMORY[0x259C81500](93, 0xE100000000000000);
    v10 = sub_2584713B0(*(v0 + 256), *(v0 + 264), &v51);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    sub_258464990(v4 + 168, v0 + 176);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB70, &qword_2585353E8);
    v11 = sub_25853347C();
    v13 = sub_2584713B0(v11, v12, &v51);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_25845E000, v5, v6, "%s current interface=%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v7, -1, -1);
  }

  v14 = *(v0 + 432);
  sub_258461268();
  if (v14)
  {
    v15 = v14;
    v16 = *(v0 + 392);
    v17 = *(v0 + 360);
    v18 = *(v0 + 368);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    (*(v18 + 8))(v16, v17);
LABEL_12:
    *(v0 + 440) = v15;
    v24 = swift_task_alloc();
    *(v0 + 448) = v24;
    *v24 = v0;
    v24[1] = sub_258461010;

    return sub_2584621A4(v15);
  }

  v26 = *(v0 + 392);
  v28 = *(v0 + 376);
  v27 = *(v0 + 384);
  v29 = *(v0 + 360);
  v30 = *(v0 + 368);
  v31 = *(v0 + 344);
  v32 = *(v0 + 352);
  v33 = sub_25853368C();
  (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
  (*(v30 + 16))(v27, v26, v29);
  v35 = sub_258464D04(&qword_27F92FB98, v34, type metadata accessor for ControlConnectionMigrationManager, &unk_2585353A4);
  v36 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v37 = (v28 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = v31;
  *(v38 + 24) = v35;
  (*(v30 + 32))(v38 + v36, v27, v29);
  *(v38 + v37) = v31;
  swift_retain_n();
  *(v31 + 208) = sub_2585135CC(0, 0, v32, &unk_258535430, v38);

  v39 = sub_258532A2C();
  v40 = sub_2585338EC();

  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 392);
  v43 = *(v0 + 360);
  v44 = *(v0 + 368);
  if (v41)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v51 = v46;
    v52 = 0;
    *v45 = 136315138;
    v53 = 0xE000000000000000;
    sub_258533B8C();
    v47 = v53;
    *(v0 + 240) = v52;
    *(v0 + 248) = v47;
    MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
    type metadata accessor for ControlConnectionMigrationManager();
    sub_258464D04(&qword_27F92FAA8, v48, type metadata accessor for ControlConnectionMigrationManager, &unk_25853536C);
    *(v0 + 288) = sub_258533B9C();
    sub_258533C8C();
    MEMORY[0x259C81500](93, 0xE100000000000000);
    v49 = sub_2584713B0(*(v0 + 240), *(v0 + 248), &v51);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_25845E000, v39, v40, "%s activated", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x259C82900](v46, -1, -1);
    MEMORY[0x259C82900](v45, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  (*(v44 + 8))(v42, v43);
  *(*(v0 + 344) + 112) = 2;

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_258461010()
{
  v1 = *(*v0 + 344);

  return MEMORY[0x2822009F8](sub_258461120, v1, 0);
}

uint64_t sub_258461120()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584611B4()
{
  (*(v0[46] + 8))(v0[49], v0[45]);
  v1 = v0[54];
  v0[55] = v1;
  v2 = swift_task_alloc();
  v0[56] = v2;
  *v2 = v0;
  v2[1] = sub_258461010;

  return sub_2584621A4(v1);
}

void sub_258461268()
{
  v2 = v0;
  v3 = sub_258532D2C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v72 - v8;
  __swift_project_boxed_opaque_existential_1((v0 + 120), *(v0 + 144));
  v10 = sub_2584E95E0();
  if (v1)
  {
    return;
  }

  v11 = v10;
  v80 = v9;
  v74 = 0;
  if (qword_27F92F910 != -1)
  {
    goto LABEL_76;
  }

LABEL_3:
  v12 = sub_258532A4C();
  v13 = __swift_project_value_buffer(v12, qword_27F93D080);

  v14 = sub_258532A2C();
  v15 = sub_2585338EC();

  v16 = os_log_type_enabled(v14, v15);
  v76 = v2;
  v75 = v13;
  v82 = v7;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v88 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v92[0] = v19;
    *v18 = 136315394;
    *&v94 = 0;
    *(&v94 + 1) = 0xE000000000000000;
    sub_258533B8C();
    MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
    type metadata accessor for ControlConnectionMigrationManager();
    sub_258464D04(&qword_27F92FAA8, v20, type metadata accessor for ControlConnectionMigrationManager, &unk_25853536C);
    *&v89 = sub_258533B9C();
    sub_258533C8C();
    MEMORY[0x259C81500](93, 0xE100000000000000);
    v21 = sub_2584713B0(v94, *(&v94 + 1), v92);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931420, &unk_258535450);
    v23 = MEMORY[0x259C81630](v11, v22);
    v25 = sub_2584713B0(v23, v24, v92);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_25845E000, v14, v15, "%s availableInterfaces=%s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v19, -1, -1);
    v26 = v18;
    v4 = v88;
    MEMORY[0x259C82900](v26, -1, -1);
  }

  v7 = v80;
  v88 = *(v11 + 16);
  if (v88)
  {
    v2 = 0;
    v27 = v11 + 32;
    v87 = (v4 + 88);
    v86 = *MEMORY[0x277CD8CB0];
    v81 = *MEMORY[0x277CD8CA8];
    v79 = *MEMORY[0x277CD8CB8];
    v78 = *MEMORY[0x277CD8CA0];
    v77 = *MEMORY[0x277CD8CC0];
    v73 = (v4 + 8);
    v28 = MEMORY[0x277D84F90];
    v29 = v11 + 32;
    v83 = v11;
    v84 = v3;
    while (1)
    {
      if (v2 >= *(v11 + 16))
      {
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        swift_once();
        goto LABEL_3;
      }

      sub_258464C30(v29, &v94);
      __swift_project_boxed_opaque_existential_1(&v94, v95);
      sub_258532D6C();
      v85 = *v87;
      v30 = v85(v7, v3);
      if (v30 != v86 && v30 != v81 && v30 != v79)
      {
        if (v30 == v78)
        {

LABEL_14:
          sub_258464C18(&v94, v92);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v96 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2584F92F8(0, *(v28 + 16) + 1, 1);
            v28 = v96;
          }

          v33 = *(v28 + 16);
          v32 = *(v28 + 24);
          v4 = v33 + 1;
          if (v33 >= v32 >> 1)
          {
            sub_2584F92F8((v32 > 1), v33 + 1, 1);
            v28 = v96;
          }

          v34 = __swift_mutable_project_boxed_opaque_existential_1(v92, v93);
          MEMORY[0x28223BE20](v34);
          v36 = &v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v37 + 16))(v36);
          v90 = type metadata accessor for NetworkBackedNetworkInterface(0);
          v91 = &off_2869900B8;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v89);
          sub_258465104(v36, boxed_opaque_existential_1);
          *(v28 + 16) = v4;
          sub_258464C18(&v89, v28 + 40 * v33 + 32);
          __swift_destroy_boxed_opaque_existential_1Tm(v92);
          v11 = v83;
          v3 = v84;
          v7 = v80;
          goto LABEL_8;
        }

        if (v30 != v77)
        {
          (*v73)(v7, v3);
        }
      }

      v4 = sub_258533E2C();

      if (v4)
      {
        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v94);
LABEL_8:
      ++v2;
      v29 += 40;
      if (v88 == v2)
      {
        v4 = 0;
        v2 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v4 >= *(v11 + 16))
          {
            goto LABEL_75;
          }

          sub_258464C30(v27, &v94);
          __swift_project_boxed_opaque_existential_1(&v94, v95);
          v39 = v82;
          sub_258532D6C();
          v40 = v85(v39, v3);
          if (v40 != v86)
          {
            if (v40 == v81)
            {

LABEL_33:
              sub_258464C18(&v94, v92);
              v42 = swift_isUniquelyReferenced_nonNull_native();
              v96 = v2;
              if ((v42 & 1) == 0)
              {
                sub_2584F92F8(0, *(v2 + 16) + 1, 1);
                v2 = v96;
              }

              v44 = *(v2 + 16);
              v43 = *(v2 + 24);
              if (v44 >= v43 >> 1)
              {
                sub_2584F92F8((v43 > 1), v44 + 1, 1);
                v2 = v96;
              }

              v45 = __swift_mutable_project_boxed_opaque_existential_1(v92, v93);
              MEMORY[0x28223BE20](v45);
              v7 = &v72 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v47 + 16))(v7);
              v90 = type metadata accessor for NetworkBackedNetworkInterface(0);
              v91 = &off_2869900B8;
              v48 = __swift_allocate_boxed_opaque_existential_1(&v89);
              sub_258465104(v7, v48);
              *(v2 + 16) = v44 + 1;
              sub_258464C18(&v89, v2 + 40 * v44 + 32);
              __swift_destroy_boxed_opaque_existential_1Tm(v92);
              v11 = v83;
              v3 = v84;
              goto LABEL_26;
            }

            if (v40 != v79 && v40 != v78 && v40 != v77)
            {
              (*v73)(v82, v3);
            }
          }

          v41 = sub_258533E2C();

          if (v41)
          {
            goto LABEL_33;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v94);
LABEL_26:
          ++v4;
          v27 += 40;
          if (v88 == v4)
          {
            goto LABEL_44;
          }
        }
      }
    }
  }

  v28 = MEMORY[0x277D84F90];
  v2 = MEMORY[0x277D84F90];
LABEL_44:

  if (*(v76 + 160) > 1u || *(v76 + 160))
  {
    v49 = sub_258533E2C();

    if (v49)
    {
      v50 = v28;
    }

    else
    {
      v50 = v2;
    }

    if ((v49 & 1) == 0)
    {
      v2 = v28;
    }

    v28 = v50;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FBA8, &unk_258535440);
  v51 = swift_allocObject();
  v11 = 0;
  *(v51 + 16) = xmmword_258535160;
  *(v51 + 32) = v28;
  v7 = (v51 + 32);
  *(v51 + 40) = v2;
  v52 = MEMORY[0x277D84F90];
  v53 = v76;
  do
  {
    if (v11 > 1)
    {
      __break(1u);
      goto LABEL_74;
    }

    v2 = *&v7[8 * v11];
    if (*(v2 + 16))
    {
      ++v11;
    }

    else
    {
      if (v11 == 1)
      {
        break;
      }

      v2 = *&v7[8 * v11 + 8];
      if (!*(v2 + 16))
      {
        break;
      }

      v11 = 2;
    }

    v54 = swift_isUniquelyReferenced_nonNull_native();
    *&v94 = v52;
    if ((v54 & 1) == 0)
    {
      sub_2584F9358(0, *(v52 + 16) + 1, 1);
      v52 = v94;
    }

    v4 = *(v52 + 16);
    v55 = *(v52 + 24);
    v3 = v4 + 1;
    if (v4 >= v55 >> 1)
    {
      sub_2584F9358((v55 > 1), v4 + 1, 1);
      v52 = v94;
    }

    *(v52 + 16) = v3;
    *(v52 + 8 * v4 + 32) = v2;
  }

  while (v11 != 2);

  if (*(v52 + 16))
  {

    v56 = sub_258532A2C();
    v57 = sub_2585338EC();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v92[0] = v59;
      *v58 = 136315394;
      *&v94 = 0;
      *(&v94 + 1) = 0xE000000000000000;
      sub_258533B8C();
      MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
      type metadata accessor for ControlConnectionMigrationManager();
      sub_258464D04(&qword_27F92FAA8, v60, type metadata accessor for ControlConnectionMigrationManager, &unk_25853536C);
      *&v89 = sub_258533B9C();
      sub_258533C8C();
      MEMORY[0x259C81500](93, 0xE100000000000000);
      v61 = sub_2584713B0(v94, *(&v94 + 1), v92);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F92FBB0, &qword_25853A840);
      v63 = MEMORY[0x259C81630](v52, v62);
      v65 = sub_2584713B0(v63, v64, v92);

      *(v58 + 14) = v65;
      _os_log_impl(&dword_25845E000, v56, v57, "%s Setting preferredInterfaces=%s", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v59, -1, -1);
      MEMORY[0x259C82900](v58, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1((v53 + 120), *(v53 + 144));
    sub_2584E98B4(v52);
  }

  else
  {

    v66 = sub_258532A2C();
    v67 = sub_2585338EC();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v92[0] = v69;
      *v68 = 136315138;
      *&v94 = 0;
      *(&v94 + 1) = 0xE000000000000000;
      sub_258533B8C();
      MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
      type metadata accessor for ControlConnectionMigrationManager();
      sub_258464D04(&qword_27F92FAA8, v70, type metadata accessor for ControlConnectionMigrationManager, &unk_25853536C);
      *&v89 = sub_258533B9C();
      sub_258533C8C();
      MEMORY[0x259C81500](93, 0xE100000000000000);
      v71 = sub_2584713B0(v94, *(&v94 + 1), v92);

      *(v68 + 4) = v71;
      _os_log_impl(&dword_25845E000, v66, v67, "%s Not setting empty preferredInterfaces", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x259C82900](v69, -1, -1);
      MEMORY[0x259C82900](v68, -1, -1);
    }
  }
}

uint64_t sub_2584621A4(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2584621C4, v1, 0);
}

uint64_t sub_2584621C4()
{
  v26 = v0;
  v1 = v0[6];
  if (*(v1 + 112) > 2u)
  {
    v20 = v0[1];

    return v20();
  }

  else
  {
    *(v1 + 112) = 4;
    if (qword_27F92F910 != -1)
    {
      swift_once();
    }

    v2 = v0[5];
    v3 = sub_258532A4C();
    __swift_project_value_buffer(v3, qword_27F93D080);

    v4 = v2;
    v5 = sub_258532A2C();
    v6 = sub_2585338CC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[5];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      v24 = 0;
      *v8 = 136315394;
      v25 = 0xE000000000000000;
      sub_258533B8C();
      v0[2] = v24;
      v0[3] = 0xE000000000000000;
      MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
      type metadata accessor for ControlConnectionMigrationManager();
      sub_258464D04(&qword_27F92FAA8, v11, type metadata accessor for ControlConnectionMigrationManager, &unk_25853536C);
      v0[4] = sub_258533B9C();
      sub_258533C8C();
      MEMORY[0x259C81500](93, 0xE100000000000000);
      v12 = sub_2584713B0(v0[2], v0[3], &v23);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2112;
      v13 = v7;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v14;
      *v9 = v14;
      _os_log_impl(&dword_25845E000, v5, v6, "%s interrupted: %@", v8, 0x16u);
      sub_258465168(v9, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x259C82900](v10, -1, -1);
      MEMORY[0x259C82900](v8, -1, -1);
    }

    v15 = v0[6];
    v16 = *(v15 + 216);
    v0[7] = v16;
    if (v16)
    {
      v0[8] = *(v15 + 224);

      v22 = (v16 + *v16);
      v17 = swift_task_alloc();
      v0[9] = v17;
      *v17 = v0;
      v17[1] = sub_25846260C;
      v18 = v0[5];

      return v22(v18);
    }

    else
    {
      v21 = swift_task_alloc();
      v0[10] = v21;
      *v21 = v0;
      v21[1] = sub_258462788;

      return sub_258463924();
    }
  }
}

uint64_t sub_25846260C()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *v0;

  sub_258464B24(v3, v2);
  v5 = swift_task_alloc();
  *(v1 + 80) = v5;
  *v5 = v4;
  v5[1] = sub_258462788;

  return sub_258463924();
}

uint64_t sub_258462788()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25846287C()
{
  v1[29] = v0;
  v2 = sub_258532D2C();
  v1[30] = v2;
  v1[31] = *(v2 - 8);
  v1[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25846293C, v0, 0);
}

uint64_t sub_25846293C()
{
  v36 = v0;
  if (qword_27F92F910 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  __swift_project_value_buffer(v1, qword_27F93D080);

  v2 = sub_258532A2C();
  v3 = sub_2585338EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 232);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33 = v6;
    v34 = 0;
    *v5 = 136315394;
    v35 = 0xE000000000000000;
    sub_258533B8C();
    *(v0 + 200) = v34;
    *(v0 + 208) = 0xE000000000000000;
    MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
    type metadata accessor for ControlConnectionMigrationManager();
    sub_258464D04(&qword_27F92FAA8, v7, type metadata accessor for ControlConnectionMigrationManager, &unk_25853536C);
    *(v0 + 224) = sub_258533B9C();
    sub_258533C8C();
    MEMORY[0x259C81500](93, 0xE100000000000000);
    v8 = sub_2584713B0(*(v0 + 200), *(v0 + 208), &v33);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    swift_beginAccess();
    sub_258464990(v4 + 168, v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB70, &qword_2585353E8);
    v9 = sub_25853347C();
    v11 = sub_2584713B0(v9, v10, &v33);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_25845E000, v2, v3, "%s mediaStreamKeepAliveDidTimeOut, current interface=%s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v6, -1, -1);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  v12 = *(v0 + 232);
  swift_beginAccess();
  sub_258464990(v12 + 168, v0 + 56);
  if (!*(v0 + 80))
  {
    sub_258465168(v0 + 56, &qword_27F92FB70, &qword_2585353E8);
    goto LABEL_23;
  }

  v14 = *(v0 + 248);
  v13 = *(v0 + 256);
  v15 = *(v0 + 240);
  sub_258464C18((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_258532D6C();
  v16 = (*(v14 + 88))(v13, v15);
  if (v16 != *MEMORY[0x277CD8CB0])
  {
    if (v16 == *MEMORY[0x277CD8CA8])
    {
      v17 = 1;
      goto LABEL_11;
    }

    if (v16 != *MEMORY[0x277CD8CB8])
    {
      if (v16 == *MEMORY[0x277CD8CA0])
      {
        v17 = 0;
        goto LABEL_11;
      }

      if (v16 == *MEMORY[0x277CD8CC0])
      {
        v17 = 2;
        goto LABEL_11;
      }

      (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
    }
  }

  v17 = 3;
LABEL_11:
  v18 = *(v0 + 232);
  if (sub_2584667FC(v17, *(v18 + 160)))
  {
    if (*(v18 + 160) > 1u || *(v18 + 160))
    {
      v20 = sub_258533E2C();

      v19 = v20 & 1;
    }

    else
    {

      v19 = 1;
    }

    *(v18 + 160) = v19;

    v21 = sub_258532A2C();
    v22 = sub_2585338EC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      v34 = 0;
      *v23 = 136315394;
      v35 = 0xE000000000000000;
      sub_258533B8C();
      v25 = v35;
      *(v0 + 184) = v34;
      *(v0 + 192) = v25;
      MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
      type metadata accessor for ControlConnectionMigrationManager();
      sub_258464D04(&qword_27F92FAA8, v26, type metadata accessor for ControlConnectionMigrationManager, &unk_25853536C);
      *(v0 + 216) = sub_258533B9C();
      sub_258533C8C();
      MEMORY[0x259C81500](93, 0xE100000000000000);
      v27 = sub_2584713B0(*(v0 + 184), *(v0 + 192), &v33);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      *(v0 + 280) = *(v18 + 160);
      v28 = sub_25853347C();
      v30 = sub_2584713B0(v28, v29, &v33);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_25845E000, v21, v22, "%s Toggled preferredInterfaceType to=%s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v24, -1, -1);
      MEMORY[0x259C82900](v23, -1, -1);
    }

    sub_258461268();
    *(v0 + 264) = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
LABEL_23:

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_25846305C()
{
  v1 = *(*v0 + 232);

  return MEMORY[0x2822009F8](sub_25846316C, v1, 0);
}

uint64_t sub_25846316C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584631DC(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_2584631FC, v1, 0);
}

uint64_t sub_2584631FC()
{
  v20 = v0;
  if (qword_27F92F910 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93D080);
  sub_258464990(v1, (v0 + 2));

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    v18 = 0;
    *v5 = 136315394;
    v19 = 0xE000000000000000;
    sub_258533B8C();
    v0[7] = v18;
    v0[8] = 0xE000000000000000;
    MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
    type metadata accessor for ControlConnectionMigrationManager();
    sub_258464D04(&qword_27F92FAA8, v7, type metadata accessor for ControlConnectionMigrationManager, &unk_25853536C);
    v0[12] = sub_258533B9C();
    sub_258533C8C();
    MEMORY[0x259C81500](93, 0xE100000000000000);
    v8 = sub_2584713B0(v0[7], v0[8], &v17);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    sub_258464990((v0 + 2), (v0 + 7));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB70, &qword_2585353E8);
    v9 = sub_25853347C();
    v11 = v10;
    sub_258465168((v0 + 2), &qword_27F92FB70, &qword_2585353E8);
    v12 = sub_2584713B0(v9, v11, &v17);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_25845E000, v3, v4, "%s current interface updated to=%s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v6, -1, -1);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  else
  {

    sub_258465168((v0 + 2), &qword_27F92FB70, &qword_2585353E8);
  }

  v14 = v0[13];
  v13 = v0[14];
  swift_beginAccess();
  sub_258464A48(v14, v13 + 168);
  swift_endAccess();
  v15 = v0[1];

  return v15();
}

uint64_t sub_258463554()
{
  v15 = v0;
  v1 = v0[5];
  if (*(v1 + 112) > 2u)
  {
    v11 = v0[1];

    return v11();
  }

  else
  {
    *(v1 + 112) = 3;
    if (qword_27F92F910 != -1)
    {
      swift_once();
    }

    v2 = sub_258532A4C();
    __swift_project_value_buffer(v2, qword_27F93D080);

    v3 = sub_258532A2C();
    v4 = sub_2585338EC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      v13 = 0;
      *v5 = 136315138;
      v14 = 0xE000000000000000;
      sub_258533B8C();
      v0[2] = v13;
      v0[3] = 0xE000000000000000;
      MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
      type metadata accessor for ControlConnectionMigrationManager();
      sub_258464D04(&qword_27F92FAA8, v7, type metadata accessor for ControlConnectionMigrationManager, &unk_25853536C);
      v0[4] = sub_258533B9C();
      sub_258533C8C();
      MEMORY[0x259C81500](93, 0xE100000000000000);
      v8 = sub_2584713B0(v0[2], v0[3], &v12);

      *(v5 + 4) = v8;
      _os_log_impl(&dword_25845E000, v3, v4, "%s invalidated", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x259C82900](v6, -1, -1);
      MEMORY[0x259C82900](v5, -1, -1);
    }

    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_258463830;

    return sub_258463924();
  }
}

uint64_t sub_258463830()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_258463944()
{
  v1 = *(v0 + 16);
  v2 = v1[27];
  v3 = v1[28];
  v1[27] = 0;
  v1[28] = 0;
  sub_258464B24(v2, v3);
  if (v1[26])
  {

    sub_25853374C();
  }

  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 120), *(*(v0 + 16) + 144));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_258463A2C;

  return sub_2584E9FB8();
}

uint64_t sub_258463A2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_258463B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FBA0, &qword_258535438);
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258463BF0, a5, 0);
}

uint64_t sub_258463BF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB80, &qword_258535410);
  sub_2585336FC();
  v2 = sub_258464D04(&qword_27F92FB98, v1, type metadata accessor for ControlConnectionMigrationManager, &unk_2585353A4);
  v0[9] = v2;
  v3 = v0[5];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_258463D08;
  v5 = v0[6];

  return MEMORY[0x2822005A8](v0 + 2, v3, v2, v5, v0 + 3);
}

uint64_t sub_258463D08()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_25846419C;
  }

  else
  {
    v4 = sub_258463E20;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258463E20()
{
  v1 = v0[2];
  if (!v1)
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
    goto LABEL_5;
  }

  if (sub_25853376C())
  {
    (*(v0[7] + 8))(v0[8], v0[6]);

LABEL_5:

    v2 = v0[1];

    return v2();
  }

  v4 = v0[11];
  sub_258464250(v1);

  sub_258461268();
  if (v4)
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
    v0[12] = v4;
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_258464024;

    return sub_2584621A4(v4);
  }

  else
  {
    v6 = v0[9];
    v7 = v0[5];
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_258463D08;
    v9 = v0[6];

    return MEMORY[0x2822005A8](v0 + 2, v7, v6, v9, v0 + 3);
  }
}

uint64_t sub_258464024()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_258464134, v1, 0);
}

uint64_t sub_258464134()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25846419C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[3];
  v0[12] = v1;
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_258464024;

  return sub_2584621A4(v1);
}

void sub_258464250(uint64_t a1)
{
  v2 = sub_258532D2C();
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_13:
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    sub_258465168(v32, &qword_27F92FB70, &qword_2585353E8);
    v13 = 0;
    v14 = (v27 + 232);
    goto LABEL_27;
  }

  v7 = a1 + 32;
  v8 = (v3 + 88);
  v9 = *MEMORY[0x277CD8CB0];
  v10 = *MEMORY[0x277CD8CA8];
  v28 = *MEMORY[0x277CD8CB8];
  v26 = *MEMORY[0x277CD8CA0];
  v25 = *MEMORY[0x277CD8CC0];
  v24 = (v3 + 8);
  while (1)
  {
    sub_258464C30(v7, &v30);
    __swift_project_boxed_opaque_existential_1(&v30, v31);
    sub_258532D6C();
    v11 = (*v8)(v5, v2);
    if (v11 == v9 || v11 == v10 || v11 == v28)
    {
      goto LABEL_6;
    }

    if (v11 == v26)
    {
      break;
    }

    if (v11 != v25)
    {
      (*v24)(v5, v2);
    }

LABEL_6:
    v12 = sub_258533E2C();

    if (v12)
    {
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v30);
    v7 += 40;
    if (!--v6)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  sub_258464C18(&v30, v32);
  sub_258465168(v32, &qword_27F92FB70, &qword_2585353E8);
  v15 = v27;
  v14 = (v27 + 232);
  if ((*(v27 + 232) & 1) == 0)
  {
    if (*(v27 + 160) <= 1u && *(v27 + 160))
    {
    }

    else
    {
      v16 = sub_258533E2C();

      if ((v16 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (qword_27F92F910 != -1)
    {
      swift_once();
    }

    v17 = sub_258532A4C();
    __swift_project_value_buffer(v17, qword_27F93D080);

    v18 = sub_258532A2C();
    v19 = sub_2585338EC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v30 = v21;
      *v20 = 136315138;
      *&v32[0] = 0;
      *(&v32[0] + 1) = 0xE000000000000000;
      sub_258533B8C();
      MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
      type metadata accessor for ControlConnectionMigrationManager();
      sub_258464D04(&qword_27F92FAA8, v22, type metadata accessor for ControlConnectionMigrationManager, &unk_25853536C);
      v29 = sub_258533B9C();
      sub_258533C8C();
      MEMORY[0x259C81500](93, 0xE100000000000000);
      v23 = sub_2584713B0(*&v32[0], *(&v32[0] + 1), &v30);

      *(v20 + 4) = v23;
      _os_log_impl(&dword_25845E000, v18, v19, "%s Wired interface became available. Toggling preferredInterfaceType to wired", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x259C82900](v21, -1, -1);
      MEMORY[0x259C82900](v20, -1, -1);
    }

    *(v15 + 160) = 0;
  }

LABEL_26:
  v13 = 1;
LABEL_27:
  *v14 = v13;
}

uint64_t sub_258464754()
{
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000022, 0x800000025853FE00);
  type metadata accessor for ControlConnectionMigrationManager();
  sub_258464D04(&qword_27F92FAA8, v0, type metadata accessor for ControlConnectionMigrationManager, &unk_25853536C);
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_2584648F0(uint64_t a1, uint64_t a2)
{
  sub_258533EEC();
  swift_getWitnessTable();
  sub_258532A0C();
  return sub_258533F2C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_258464990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB70, &qword_2585353E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_258464A48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB70, &qword_2585353E8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_258464AB8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FED10](v4, v5, a3, WitnessTable);
}

uint64_t sub_258464B24(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_258464BC4()
{
  result = qword_27F92FB88;
  if (!qword_27F92FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FB88);
  }

  return result;
}

uint64_t sub_258464C18(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_258464C30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_258464C94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB70, &qword_2585353E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_258464D04(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258464D4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB80, &qword_258535410);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_258464E30(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB80, &qword_258535410) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258464F5C;

  return sub_258463B20(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_258464F5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_258465104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkBackedNetworkInterface(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258465168(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for ControlConnectionMigrationManager.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlConnectionMigrationManager.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Version(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Version(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_2584653E8(uint64_t a1)
{
  result = sub_258464BC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258465414()
{
  result = qword_27F92FBF0;
  if (!qword_27F92FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FBF0);
  }

  return result;
}

void sub_258465514(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_258465564()
{
  v0 = sub_2585332FC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - v5;
  sub_2585332EC();
  type metadata accessor for FoundationBackedUserDefaultsProvider();
  inited = swift_initStackObject();
  v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v9 = sub_25853341C();
  v10 = [v8 initWithSuiteName_];

  *(inited + 16) = v10;
  v11 = sub_2585138CC(4u, 1);

  if (v11 != 2 && (v11 & 1) != 0)
  {
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v12 = sub_258532A4C();
    __swift_project_value_buffer(v12, qword_27F93CFD8);
    v13 = sub_258532A2C();
    v14 = sub_2585338EC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_25845E000, v13, v14, "Allowing CompositorServices to browse for iPhones", v15, 2u);
      MEMORY[0x259C82900](v15, -1, -1);
    }

    sub_2585332DC();
    sub_2584657C4(v6, v4);
    v16 = *(v1 + 8);
    v16(v4, v0);
    v16(v6, v0);
  }
}

uint64_t sub_2584657C4(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FC90, &qword_2585356E8);
  v4 = MEMORY[0x28223BE20](v28);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = sub_2585332FC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = *(v9 + 16);
  v27 = v2;
  v15(v12, v2, v8);
  v16 = MEMORY[0x277CD90B0];
  v25 = sub_258466028(&qword_27F92FC98, MEMORY[0x277CD90B0], MEMORY[0x277CD90C0]);
  sub_258533A6C();
  v17 = v16;
  v18 = v28;
  sub_258466028(qword_27F92FCA0, v17, MEMORY[0x277CD90B8]);
  v26 = a2;
  v19 = sub_25853340C();
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
    sub_258533A7C();
  }

  v22 = v29;
  sub_258466070(v7, v29);
  v23 = *v22;
  (*(v9 + 32))(v30, &v22[*(v18 + 48)], v8);
  return v23;
}

uint64_t static NWBrowser.Descriptor.Options.compositorServicesBrowserOptions.getter()
{
  v0 = sub_2585332FC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_25853331C();
  MEMORY[0x28223BE20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FC70, &qword_2585356D0);
  *(swift_allocObject() + 16) = xmmword_2585356C0;
  sub_2585332DC();
  sub_258466028(&qword_27F92FC78, MEMORY[0x277CD90C8], MEMORY[0x277CD90D0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FC80, &qword_2585356D8);
  sub_258465CA0();
  sub_258533A8C();
  sub_258465564();
  return sub_25853332C();
}

unint64_t sub_258465CA0()
{
  result = qword_27F92FC88;
  if (!qword_27F92FC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F92FC80, &qword_2585356D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FC88);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_258465D4C()
{
  v1 = sub_2585332FC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_25853331C();
  MEMORY[0x28223BE20](v2);
  if (*(v0 + 33) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FC70, &qword_2585356D0);
    *(swift_allocObject() + 16) = xmmword_2585356C0;
    sub_2585332DC();
    sub_258466028(&qword_27F92FC78, MEMORY[0x277CD90C8], MEMORY[0x277CD90D0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FC80, &qword_2585356D8);
    sub_258465CA0();
    sub_258533A8C();
    sub_2585332CC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FC70, &qword_2585356D0);
    *(swift_allocObject() + 16) = xmmword_2585356C0;
    sub_2585332DC();
    sub_258466028(&qword_27F92FC78, MEMORY[0x277CD90C8], MEMORY[0x277CD90D0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FC80, &qword_2585356D8);
    sub_258465CA0();
    sub_258533A8C();
    sub_258465564();
  }

  return sub_25853332C();
}

uint64_t sub_258466028(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258466070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FC90, &qword_2585356E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2584660E8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_258466470(319);
    if (v2 <= 0x3F)
    {
      swift_getExtendedExistentialTypeMetadata_unique();
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_258466188(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 80;
  if (*(v3 + 64) > 0x50uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
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
    goto LABEL_25;
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

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_2584662A0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x50)
  {
    v5 = 80;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_258466470(uint64_t a1)
{
  if (!qword_27F92FD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F92FB90, &qword_258535420);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F92FD28);
    }
  }
}

unint64_t sub_2584664F8()
{
  result = qword_27F92FD30;
  if (!qword_27F92FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FD30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkInterfaceReportingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkInterfaceReportingType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkInterfaceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkInterfaceType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2584667FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6465726977;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6B636162706F6F6CLL;
    }

    else
    {
      v4 = 0x726568746FLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1768319351;
    }

    else
    {
      v4 = 0x6465726977;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6B636162706F6F6CLL;
  if (a2 != 2)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 1768319351;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258533E2C();
  }

  return v11 & 1;
}

uint64_t sub_258466924(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x800000025853FAC0;
    if (a1 == 6)
    {
      v10 = 0xD000000000000020;
    }

    else
    {
      v10 = 0x6E6F73616572;
    }

    if (a1 != 6)
    {
      v9 = 0xE600000000000000;
    }

    v11 = 0x6C6F636F746F7270;
    v12 = 0xEF6E6F6973726556;
    if (a1 != 4)
    {
      v11 = 0xD00000000000001FLL;
      v12 = 0x800000025853FAA0;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0x496E6F6973736573;
    v5 = 0xE900000000000044;
    if (a1 != 2)
    {
      v4 = 0x6F6973726556736FLL;
      v5 = 0xE90000000000006ELL;
    }

    v6 = 0x44496C65646F6DLL;
    if (a1)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v6 = 1701869940;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0x800000025853FAC0;
        if (v7 != 0xD000000000000020)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v13 = 0xE600000000000000;
        if (v7 != 0x6E6F73616572)
        {
LABEL_50:
          v14 = sub_258533E2C();
          goto LABEL_51;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEF6E6F6973726556;
      if (v7 != 0x6C6F636F746F7270)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v13 = 0x800000025853FAA0;
      if (v7 != 0xD00000000000001FLL)
      {
        goto LABEL_50;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE900000000000044;
      if (v7 != 0x496E6F6973736573)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v13 = 0xE90000000000006ELL;
      if (v7 != 0x6F6973726556736FLL)
      {
        goto LABEL_50;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x44496C65646F6DLL)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v13 = 0xE400000000000000;
    if (v7 != 1701869940)
    {
      goto LABEL_50;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_50;
  }

  v14 = 1;
LABEL_51:

  return v14 & 1;
}

uint64_t sub_258466BD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006465646ELL;
  v3 = 0xD000000000000018;
  v4 = 0x456E6F6973736573;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000022;
    }

    else
    {
      v6 = 0x456E6F6973736573;
    }

    if (v5 == 2)
    {
      v7 = 0x800000025853FB30;
    }

    else
    {
      v7 = 0xEC0000006465646ELL;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000019;
    }

    else
    {
      v6 = 0xD000000000000018;
    }

    if (v5)
    {
      v7 = 0x800000025853FB10;
    }

    else
    {
      v7 = 0x800000025853FAF0;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000022;
    v2 = 0x800000025853FB30;
  }

  v8 = 0x800000025853FB10;
  if (a2)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v8 = 0x800000025853FAF0;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258533E2C();
  }

  return v11 & 1;
}

uint64_t sub_258466CF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646564;
  v3 = a1;
  if (a1 <= 2u)
  {
    v10 = 0x800000025853FC00;
    if (a1 == 1)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD000000000000011;
    }

    if (a1 != 1)
    {
      v10 = 0x800000025853FC20;
    }

    if (a1)
    {
      v8 = v11;
    }

    else
    {
      v8 = 0x6E456D6165727473;
    }

    if (v3)
    {
      v9 = v10;
    }

    else
    {
      v9 = 0xEB00000000646564;
    }
  }

  else
  {
    v4 = 0x800000025853FC80;
    v5 = 0xD000000000000016;
    if (a1 != 5)
    {
      v5 = 0xD000000000000017;
      v4 = 0x800000025853FCA0;
    }

    v6 = 0x800000025853FC40;
    if (a1 == 3)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v6 = 0x800000025853FC60;
    }

    if (a1 <= 4u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 4)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      if (v8 != 0x6E456D6165727473)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    if (a2 == 1)
    {
      v12 = "videoStreamOffer";
LABEL_33:
      v2 = (v12 - 32) | 0x8000000000000000;
      if (v8 != 0xD000000000000010)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v13 = "videoStreamAnswer";
LABEL_42:
    v2 = (v13 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000011)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v12 = "audioStreamOffer";
      goto LABEL_33;
    }

    v13 = "audioStreamAnswer";
    goto LABEL_42;
  }

  if (a2 == 5)
  {
    v2 = 0x800000025853FC80;
    if (v8 != 0xD000000000000016)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v2 = 0x800000025853FCA0;
    if (v8 != 0xD000000000000017)
    {
LABEL_47:
      v14 = sub_258533E2C();
      goto LABEL_48;
    }
  }

LABEL_45:
  if (v9 != v2)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_258466EFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x800000025853F9E0;
      v3 = 0xD000000000000016;
    }

    else
    {
      v4 = 0xE800000000000000;
      v3 = 0x4449656369766564;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x746E696F70646E65;
    }

    else
    {
      v3 = 0xD000000000000015;
    }

    if (v2)
    {
      v4 = 0xEC00000065707954;
    }

    else
    {
      v4 = 0x800000025853F9B0;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x800000025853F9E0;
      if (v3 != 0xD000000000000016)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xE800000000000000;
      if (v3 != 0x4449656369766564)
      {
LABEL_26:
        v7 = sub_258533E2C();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x746E696F70646E65;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (a2)
    {
      v6 = 0xEC00000065707954;
    }

    else
    {
      v6 = 0x800000025853F9B0;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_258467070()
{
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_258467124(uint64_t a1)
{
  sub_2585334AC();
}

uint64_t sub_2584671C4(uint64_t a1)
{
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

unint64_t sub_258467274@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25846752C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2584672A4(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6465726977;
  v4 = 0xE800000000000000;
  v5 = 0x6B636162706F6F6CLL;
  if (*v1 != 2)
  {
    v5 = 0x726568746FLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1768319351;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_258467318()
{
  result = qword_27F92FD38;
  if (!qword_27F92FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FD38);
  }

  return result;
}

unint64_t sub_258467370()
{
  result = qword_27F92FD40;
  if (!qword_27F92FD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F92FD48, qword_258535C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FD40);
  }

  return result;
}

uint64_t sub_2584673D4()
{
  sub_258533EEC();
  sub_258533F0C();
  return sub_258533F2C();
}

uint64_t sub_258467448(uint64_t a1)
{
  sub_258533EEC();
  sub_258533F0C();
  return sub_258533F2C();
}

uint64_t sub_25846748C@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_258467578(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2584674D8()
{
  result = qword_27F92FD50;
  if (!qword_27F92FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FD50);
  }

  return result;
}

unint64_t sub_25846752C(uint64_t a1, uint64_t a2)
{
  v2 = sub_258533CEC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_258467578(uint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

uint64_t get_enum_tag_for_layout_string_18MediaContinuityKit22RemoteVideoClientEventO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2584675C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_258467608(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_25846764C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_25846768C(void *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = (v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue);
  v4 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue);
  v5 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 8);
  v7 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 16);
  v6 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 24);
  v8 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 32);
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 33) == 1)
  {
    v9 = v7 | v5;
    if (v9 | v4 | v6)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8 == 0;
    }

    if (!v10)
    {
      v11 = v9 | v6;
      v12 = (v9 | v6) == 0;
      if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 32))
      {
        v13 = 0;
      }

      else
      {
        v13 = v4 == 1;
      }

      if (v13 && v11 == 0)
      {
        if (!v9)
        {
          v17 = 2;
          goto LABEL_45;
        }
      }

      else
      {
        if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 32))
        {
          v15 = 0;
        }

        else
        {
          v15 = v4 == 2;
        }

        if (!v15 || v11 != 0)
        {
          goto LABEL_32;
        }

        if (!v9)
        {
          v17 = 3;
LABEL_45:
          v33 = sub_25853341C();
          [a1 encodeInteger:v17 forKey:?];

          return;
        }
      }

      v12 = 0;
LABEL_32:
      v27 = v8 == 0;
      v28 = v4 == 3 && v12;
      if (v27 && v28)
      {
        v17 = 4;
      }

      else
      {
        v17 = 5;
      }

      goto LABEL_45;
    }

    v17 = 1;
    goto LABEL_45;
  }

  if (v8)
  {
    v18 = 0;
  }

  else
  {
    v34[0] = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue);
    v34[1] = v5;
    v34[2] = v7;
    v34[3] = v6;
    v19 = sub_258467D64(v34, &v35);
    v21 = v20;
    v22 = sub_25853291C();
    sub_258467E20(v19, v21);
    v23 = sub_25853341C();
    [a1 encodeObject:v22 forKey:v23];

    if (*(v3 + 33) == 1)
    {
      v24 = *v3;
      v25 = v3[1];
      v26 = v3[2] | v3[3];
      if (*(v3 + 32) || v26 | v24 | v25)
      {
        v30 = v26 | v25;
        if (*(v3 + 32) || v24 != 1 || v30)
        {
          if (*(v3 + 32) || v24 != 2 || v30)
          {
            if (v30)
            {
              v31 = 0;
            }

            else
            {
              v31 = v24 == 3;
            }

            if (v31 && *(v3 + 32) == 0)
            {
              v18 = 4;
            }

            else
            {
              v18 = 5;
            }
          }

          else
          {
            v18 = 3;
          }
        }

        else
        {
          v18 = 2;
        }
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  v29 = sub_25853341C();
  [a1 encodeInteger:v18 forKey:v29];
}

id sub_2584679D0(void *a1)
{
  v3 = sub_25853341C();
  v4 = [a1 decodeIntegerForKey_];

  v5 = sub_258467E74(v4);
  if (v5 > 2)
  {
    if (v5 <= 4)
    {
      if (v5 == 3)
      {
        v6 = &v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue];
        *&v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 32] = 256;
        v7 = 2;
      }

      else
      {
        v6 = &v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue];
        *&v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 32] = 256;
        v7 = 3;
      }

      goto LABEL_14;
    }

    if (v5 == 5)
    {
      v6 = &v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue];
      *&v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 32] = 256;
      v7 = 4;
LABEL_14:
      *v6 = v7;
      v6[1] = 0;
      v6[2] = 0;
      v6[3] = 0;
      goto LABEL_15;
    }

    sub_258467F84();
    v13 = swift_allocError();
    *v14 = 0;
LABEL_25:
    v20 = sub_2585328AC();

    [a1 failWithError_];
    type metadata accessor for MediaContinuityUsageSecureCodingWrapper();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if (!v5)
  {
    v9 = sub_25853341C();
    v10 = [a1 decodeObjectForKey_];

    if (v10)
    {
      sub_258533A5C();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v26 = v23;
    v27 = v24;
    if (*(&v24 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_258467F84();
        v13 = swift_allocError();
        *v19 = 1;
        goto LABEL_25;
      }

      sub_2585079D4(v21, v22, &v26);
      v15 = v26;
      v16 = v27;
      v17 = v28;
    }

    else
    {
      sub_258467FD8(&v26);
      v15 = 0uLL;
      v17 = 1;
      v16 = 0uLL;
    }

    v18 = &v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue];
    *v18 = v15;
    *(v18 + 1) = v16;
    v18[32] = v17;
    v18[33] = 0;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
    v6 = &v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue];
    *&v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 32] = 256;
    v7 = 1;
    goto LABEL_14;
  }

  v8 = &v1[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue];
  *(v8 + 16) = 256;
  *v8 = 0u;
  *(v8 + 1) = 0u;
LABEL_15:
  v25.receiver = v1;
  v25.super_class = type metadata accessor for MediaContinuityUsageSecureCodingWrapper();
  v11 = objc_msgSendSuper2(&v25, sel_init);

  return v11;
}

id sub_258467D0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaContinuityUsageSecureCodingWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_258467D64(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_2584F0138(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_258467F08(v3, v4);
    }

    else
    {
      v6 = sub_258467E84(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t sub_258467E20(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_258467E74(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_258467E84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25853288C();
  swift_allocObject();
  result = sub_25853284C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_258467F08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25853288C();
  swift_allocObject();
  result = sub_25853284C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2585328FC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

unint64_t sub_258467F84()
{
  result = qword_27F92FD78;
  if (!qword_27F92FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FD78);
  }

  return result;
}

uint64_t sub_258467FD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FD80, &unk_25853F3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258468054()
{
  result = qword_27F92FD88;
  if (!qword_27F92FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FD88);
  }

  return result;
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

uint64_t sub_258468278(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_258532A4C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_258532A3C();
}

unint64_t sub_258468304()
{
  result = qword_27F92FDF0;
  if (!qword_27F92FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FDF0);
  }

  return result;
}

const char *sub_25846836C()
{
  if (*v0)
  {
    return "preferWiredInterfaceForConnectionSetup";
  }

  else
  {
    return "migrationController";
  }
}

uint64_t sub_2584683B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2585329BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_258468470(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2585329BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ActivationRequestInfo(uint64_t a1)
{
  result = qword_27F92FDF8;
  if (!qword_27F92FDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258468560(uint64_t a1)
{
  result = sub_2585329BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_2584685F8(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v4 || (sub_258533E2C() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_258533E2C() & 1) != 0)
    {
      v6 = type metadata accessor for ActivationRequestInfo(0);
      if (sub_25853296C())
      {
        v7 = *(v6 + 28);
        v8 = *(a1 + v7);
        v9 = *(a1 + v7 + 8);
        v10 = *(a1 + v7 + 16);
        v11 = (a2 + v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = v11[2];
        v15 = v8 == v12 && v9 == v13;
        if (v15 && v10 == v14)
        {
          v17 = *(v6 + 32);
          v18 = a1 + v17;
          v19 = *(a1 + v17);
          v20 = *(a1 + v17 + 8);
          v21 = *(a1 + v17 + 16);
          v22 = *(v18 + 3);
          v23 = (a2 + v17);
          v24 = v23[2];
          v25 = v23[3];
          if (sub_2584F0D1C(v19, v20, *v23, v23[1]) && sub_2584F0D1C(v21, v22, v24, v25))
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_258468718(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258468760(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_2584687BC(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_258533E2C() & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_258533E2C() & 1) == 0)
  {
    return 0;
  }

  return v4 == v9 && v5 == v10 && v6 == v11;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2584688C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 56))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_258468918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_25846898C()
{
  v1 = 0x6553656D75736572;
  if (*(v0 + 16) != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*(v0 + 16))
  {
    return v1;
  }

  else
  {
    return 0x53646E6570737573;
  }
}

uint64_t sub_258468A04(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x646570706F7473;
    v6 = 0x64657472617473;
    if (a1 != 2)
    {
      v6 = 0x676E6970706F7473;
    }

    if (a1)
    {
      v5 = 0x676E697472617473;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x676E696D75736572;
    v2 = 0x74726174736572;
    if (a1 != 7)
    {
      v2 = 0x7075727265746E69;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x69646E6570737573;
    if (a1 != 4)
    {
      v3 = 0x65646E6570737573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t MediaContinuityCoexSession.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_258533EEC();
  MEMORY[0x259C81F40](v1);
  return sub_258533F2C();
}

MediaContinuityKit::MediaContinuityCoexSession::Interface_optional __swiftcall MediaContinuityCoexSession.Interface.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258533CEC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaContinuityCoexSession.Interface.rawValue.getter()
{
  if (*v0)
  {
    return 0x7373656C65726977;
  }

  else
  {
    return 0x6465726977;
  }
}

uint64_t sub_258468C60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7373656C65726977;
  }

  else
  {
    v3 = 0x6465726977;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7373656C65726977;
  }

  else
  {
    v5 = 0x6465726977;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_258533E2C();
  }

  return v8 & 1;
}

uint64_t sub_258468D04()
{
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_258468D84(uint64_t a1)
{
  sub_2585334AC();
}

uint64_t sub_258468DF0(uint64_t a1)
{
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_258468E6C@<X0>(char *a2@<X8>)
{
  v3 = sub_258533CEC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_258468ECC(uint64_t *a1@<X8>)
{
  v2 = 0x6465726977;
  if (*v1)
  {
    v2 = 0x7373656C65726977;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MediaContinuityCoexSession.__allocating_init(config:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v8 = sub_2584718E4(a1, a2, v6, ObjectType, a3);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t MediaContinuityCoexSession.init(config:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_2584718E4(a1, a2, v3, ObjectType, a3);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t MediaContinuityCoexSession.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE08, &unk_258536380);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - v4;
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();
  }

  v6 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventStreamContinuation;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventStreamContinuation, v2);
  v13[1] = 0;
  sub_2585337FC();
  v7 = *(v3 + 8);
  v7(v5, v2);

  sub_258471C08(v1 + 120);
  swift_unknownObjectRelease();
  v8 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_uuid;
  v9 = sub_2585329BC();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_startContinuation, &unk_27F930DB0, &qword_258536390);

  v10 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventStream;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE38, &qword_258536398);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  v7((v1 + v6), v2);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t MediaContinuityCoexSession.__deallocating_deinit()
{
  MediaContinuityCoexSession.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_258469288()
{
  v30 = v0;
  if (qword_27F92F908 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  v0[3] = __swift_project_value_buffer(v1, qword_27F93D068);

  v2 = sub_258532A2C();
  v3 = sub_2585338EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v5 = 136315394;
    v27 = v7;
    v28 = 91;
    v29 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v8 = sub_258533DFC();
    MEMORY[0x259C81500](v8);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v9 = sub_2584713B0(91, 0xE100000000000000, &v27);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2112;
    v10 = *(v4 + 112);
    *(v5 + 14) = v10;
    *v6 = v10;
    v11 = v10;
    _os_log_impl(&dword_25845E000, v2, v3, "%s Starting client with config=%@", v5, 0x16u);
    sub_258465168(v6, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  v12 = v0[2];
  if (*(v12 + 136))
  {

    v13 = sub_258532A2C();
    v14 = sub_2585338CC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v15 = 136315394;
      v27 = v17;
      v28 = 91;
      v29 = 0xE100000000000000;
      sub_2585329BC();
      sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v18 = sub_258533DFC();
      MEMORY[0x259C81500](v18);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v19 = sub_2584713B0(v28, v29, &v27);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2112;
      sub_258471C30();
      swift_allocError();
      *v20 = 0;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v21;
      *v16 = v21;
      _os_log_impl(&dword_25845E000, v13, v14, "%s Start failed with error=%@", v15, 0x16u);
      sub_258465168(v16, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x259C82900](v17, -1, -1);
      MEMORY[0x259C82900](v15, -1, -1);
    }

    sub_258471C30();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    v23 = v0[1];

    return v23();
  }

  else
  {
    *(v12 + 136) = 1;
    sub_25846CA58(v12 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventStream);
    v25 = *(v12 + 136);
    v26 = swift_task_alloc();
    v0[4] = v26;
    *v26 = v0;
    v26[1] = sub_2584697A4;

    return sub_25847076C(0, v25);
  }
}

uint64_t sub_2584697A4()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_258469AA4;
  }

  else
  {
    v4 = sub_2584698D0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584698D0()
{
  v10 = v0;

  v1 = sub_258532A2C();
  v2 = sub_2585338EC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 136315138;
    v9[0] = v4;
    v9[1] = 91;
    v9[2] = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v5 = sub_258533DFC();
    MEMORY[0x259C81500](v5);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v6 = sub_2584713B0(91, 0xE100000000000000, v9);

    *(v3 + 4) = v6;
    _os_log_impl(&dword_25845E000, v1, v2, "%s Started successfully", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x259C82900](v4, -1, -1);
    MEMORY[0x259C82900](v3, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_258469AA4()
{
  v1 = v0[2];
  if (*(v1 + 136) == 1)
  {
    *(v1 + 136) = 8;
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_258469B94;

    return sub_2584702E4();
  }

  else
  {
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_258469B94()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_258469CA4, v1, 0);
}

uint64_t sub_258469CA4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = *(v0[2] + 128);
    ObjectType = swift_getObjectType();
    v9 = (*(v2 + 24) + **(v2 + 24));
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_258469E28;
    v5 = v0[5];
    v6 = v0[2];

    return v9(v6, v5, ObjectType, v2);
  }

  else
  {
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_258469E28()
{
  v1 = *(*v0 + 16);

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_258469F54, v1, 0);
}

uint64_t sub_258469F54()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258469FE0()
{
  v23 = v0;
  if (qword_27F92F908 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  v0[3] = __swift_project_value_buffer(v1, qword_27F93D068);

  v2 = sub_258532A2C();
  v3 = sub_2585338EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315138;
    v22[0] = v5;
    v22[1] = 91;
    v22[2] = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_258533DFC();
    MEMORY[0x259C81500](v6);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v7 = sub_2584713B0(91, 0xE100000000000000, v22);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_25845E000, v2, v3, "%s Stopping client", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v8 = v0[2];
  v9 = &byte_28698B348;
  for (i = qword_28698B338; i; --i)
  {
    v11 = *v9++;
    if (v11 == *(v8 + 136))
    {
      sub_258471C30();
      swift_allocError();
      *v12 = 4;
      swift_willThrow();
      v13 = v0[1];

      return v13();
    }
  }

  *(v8 + 136) = 3;
  v15 = *(v8 + 152);
  v0[4] = v15;
  if (v15)
  {
    v16 = v0[2];
    *(v8 + 152) = 0;
    v17 = sub_258471DD0(&qword_27F92FE50, type metadata accessor for MediaContinuityCoexSession, &protocol conformance descriptor for MediaContinuityCoexSession);
    v18 = swift_task_alloc();
    v0[5] = v18;
    *(v18 + 16) = v15;
    v19 = swift_task_alloc();
    v0[6] = v19;
    *v19 = v0;
    v19[1] = sub_25846A3E8;
    v20 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v19, v16, v17, 0xD000000000000012, 0x80000002585400B0, sub_258471CD0, v18, v20);
  }

  else
  {
    v21 = swift_task_alloc();
    v0[8] = v21;
    *v21 = v0;
    v21[1] = sub_25846A79C;

    return sub_2584702E4();
  }
}

uint64_t sub_25846A3E8()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_25846A698;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_25846A510;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25846A510(uint64_t a1)
{
  if (*(v1[2] + 136) == 3)
  {
    swift_unknownObjectRelease();
    v2 = swift_task_alloc();
    v1[8] = v2;
    *v2 = v1;
    v3 = sub_25846A79C;
LABEL_5:
    v2[1] = v3;

    return sub_2584702E4();
  }

  sub_258471C30();
  v4 = swift_allocError();
  *v5 = 6;
  swift_willThrow();
  swift_unknownObjectRelease();
  v1[9] = v4;
  v6 = v1[2];
  if (*(v6 + 136) == 3)
  {
    *(v6 + 136) = 8;
    v2 = swift_task_alloc();
    v1[10] = v2;
    *v2 = v1;
    v3 = sub_25846AB68;
    goto LABEL_5;
  }

  swift_willThrow();
  v8 = v1[1];

  return v8();
}

uint64_t sub_25846A698()
{

  swift_unknownObjectRelease();
  v0[9] = v0[7];
  v1 = v0[2];
  if (*(v1 + 136) == 3)
  {
    *(v1 + 136) = 8;
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_25846AB68;

    return sub_2584702E4();
  }

  else
  {
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_25846A79C()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_25846A8AC, v1, 0);
}

uint64_t sub_25846A8AC(uint64_t a1)
{
  v16 = v1;
  v2 = v1[2];
  if (*(v2 + 136) == 3)
  {
    *(v2 + 136) = 0;

    v3 = sub_258532A2C();
    v4 = sub_2585338EC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 136315138;
      v15[0] = v6;
      v15[1] = 91;
      v15[2] = 0xE100000000000000;
      sub_2585329BC();
      sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v7 = sub_258533DFC();
      MEMORY[0x259C81500](v7);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v8 = sub_2584713B0(91, 0xE100000000000000, v15);

      *(v5 + 4) = v8;
      _os_log_impl(&dword_25845E000, v3, v4, "%s Client stopped successfully", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x259C82900](v6, -1, -1);
      MEMORY[0x259C82900](v5, -1, -1);
    }

    v9 = v1[1];
    goto LABEL_10;
  }

  sub_258471C30();
  v10 = swift_allocError();
  *v11 = 6;
  swift_willThrow();
  v1[9] = v10;
  v12 = v1[2];
  if (*(v12 + 136) != 3)
  {
    swift_willThrow();
    v9 = v1[1];
LABEL_10:

    return v9();
  }

  *(v12 + 136) = 8;
  v13 = swift_task_alloc();
  v1[10] = v13;
  *v13 = v1;
  v13[1] = sub_25846AB68;

  return sub_2584702E4();
}

uint64_t sub_25846AB68()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_25846AC78, v1, 0);
}

uint64_t sub_25846AC78()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = *(v0[2] + 128);
    ObjectType = swift_getObjectType();
    v9 = (*(v2 + 24) + **(v2 + 24));
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_25846ADFC;
    v5 = v0[9];
    v6 = v0[2];

    return v9(v6, v5, ObjectType, v2);
  }

  else
  {
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_25846ADFC()
{
  v1 = *(*v0 + 16);

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_25846AF28, v1, 0);
}

uint64_t sub_25846AF28(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

BOOL sub_25846AF94(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

id sub_25846AFC4()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_25853341C();
  v3 = [v1 initWithMachServiceName:v2 options:0];

  v4 = objc_opt_self();
  v5 = [v4 interfaceWithProtocol_];
  sub_258473C6C();
  v6 = sub_25853386C();

  [v5 setClasses:v6 forSelector:sel_startWithUuid_config_completionHandler_ argumentIndex:1 ofReply:0];

  sub_258473C6C();
  v7 = sub_25853386C();

  [v5 setClasses:v7 forSelector:sel_startSuspendedWithUuid_config_completionHandler_ argumentIndex:1 ofReply:0];

  [v3 setRemoteObjectInterface_];
  v8 = [v4 interfaceWithProtocol_];
  [v3 setExportedInterface_];

  [v3 setExportedObject_];
  v9 = swift_allocObject();
  swift_weakInit();
  v18 = sub_2584728B0;
  v19 = v9;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_2584D170C;
  v17 = &block_descriptor_79;
  v10 = _Block_copy(&v14);

  [v3 setInterruptionHandler_];
  _Block_release(v10);
  v11 = swift_allocObject();
  swift_weakInit();
  v18 = sub_2584728B8;
  v19 = v11;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_2584D170C;
  v17 = &block_descriptor_83;
  v12 = _Block_copy(&v14);

  [v3 setInvalidationHandler_];
  _Block_release(v12);

  return v3;
}

uint64_t sub_25846B2E0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FEA8, &qword_2585368E0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27F92F908 != -1)
    {
      swift_once();
    }

    v6 = sub_258532A4C();
    __swift_project_value_buffer(v6, qword_27F93D068);

    v7 = sub_258532A2C();
    v8 = sub_2585338CC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v15 = v1;
      v10 = v9;
      v11 = swift_slowAlloc();
      *v10 = 136315138;
      v16 = v11;
      v17 = 91;
      v18 = 0xE100000000000000;
      sub_2585329BC();
      sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);

      v12 = sub_258533DFC();
      MEMORY[0x259C81500](v12);

      MEMORY[0x259C81500](93, 0xE100000000000000);

      v13 = sub_2584713B0(v17, v18, &v16);

      *(v10 + 4) = v13;
      _os_log_impl(&dword_25845E000, v7, v8, "%s interruptionHandler called", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x259C82900](v11, -1, -1);
      v14 = v10;
      v1 = v15;
      MEMORY[0x259C82900](v14, -1, -1);
    }

    v17 = 0;
    v18 = 0;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE08, &unk_258536380);
    sub_2585337EC();

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

void sub_25846B5E0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_27F92F908 != -1)
    {
      swift_once();
    }

    v1 = sub_258532A4C();
    __swift_project_value_buffer(v1, qword_27F93D068);

    v2 = sub_258532A2C();
    v3 = sub_2585338CC();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 136315138;
      v8 = v5;
      sub_2585329BC();
      sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);

      v6 = sub_258533DFC();
      MEMORY[0x259C81500](v6);

      MEMORY[0x259C81500](93, 0xE100000000000000);

      v7 = sub_2584713B0(91, 0xE100000000000000, &v8);

      *(v4 + 4) = v7;
      _os_log_impl(&dword_25845E000, v2, v3, "%s invalidationHandler called", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x259C82900](v5, -1, -1);
      MEMORY[0x259C82900](v4, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_25846B810(uint64_t a1, char a2)
{
  *(v3 + 152) = a2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v2;
  return MEMORY[0x2822009F8](sub_25846B834, v2, 0);
}

uint64_t sub_25846B834()
{
  v1 = v0[13];
  v2 = v0[14];
  v0[6] = sub_258472760;
  v0[7] = v2;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_25846C0F0;
  v0[5] = &block_descriptor;
  v3 = _Block_copy(v0 + 2);

  v4 = [v1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v3);
  sub_258533A5C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FEB0, &qword_2585368E8);
  if (swift_dynamicCast())
  {
    v5 = v0[14];
    v6 = *(v0 + 152);
    v7 = v0[12];
    v0[15] = v7;
    v8 = sub_258471DD0(&qword_27F92FE50, type metadata accessor for MediaContinuityCoexSession, &protocol conformance descriptor for MediaContinuityCoexSession);
    v9 = swift_task_alloc();
    v0[16] = v9;
    *(v9 + 16) = v5;
    *(v9 + 24) = v6;
    *(v9 + 32) = v7;
    v10 = swift_task_alloc();
    v0[17] = v10;
    *v10 = v0;
    v10[1] = sub_25846BADC;
    v11 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v10, v5, v8, 0xD00000000000001FLL, 0x8000000258540220, sub_258472780, v9, v11);
  }

  else
  {
    sub_258471C30();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_25846BADC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = sub_25846BC20;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_25846BC04;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25846BC20()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25846BC8C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v35 = &v32 - v12;
  if (qword_27F92F908 != -1)
  {
    swift_once();
  }

  v13 = sub_258532A4C();
  __swift_project_value_buffer(v13, qword_27F93D068);

  v14 = a1;
  v15 = sub_258532A2C();
  v16 = sub_2585338CC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = v11;
    v18 = v17;
    v19 = swift_slowAlloc();
    v34 = v7;
    v20 = v19;
    v32 = swift_slowAlloc();
    v36[0] = v32;
    *v18 = 136315394;
    v37 = 91;
    v38 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = sub_258533DFC();
    MEMORY[0x259C81500](v21);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v22 = sub_2584713B0(v37, v38, v36);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2112;
    v23 = a1;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v24;
    *v20 = v24;
    _os_log_impl(&dword_25845E000, v15, v16, "%s Failed to retrieve remote object. error=%@", v18, 0x16u);
    sub_258465168(v20, &qword_27F92FBC0, &qword_258537930);
    v25 = v20;
    v7 = v34;
    MEMORY[0x259C82900](v25, -1, -1);
    v26 = v32;
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x259C82900](v26, -1, -1);
    v27 = v18;
    v11 = v33;
    MEMORY[0x259C82900](v27, -1, -1);
  }

  v28 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_startContinuation;
  swift_beginAccess();
  sub_258472808(a2 + v28, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_258465168(v9, &unk_27F930DB0, &qword_258536390);
  }

  v30 = v35;
  (*(v11 + 32))(v35, v9, v10);
  v36[0] = a1;
  v31 = a1;
  sub_25853363C();
  (*(v11 + 8))(v30, v10);
  (*(v11 + 56))(v7, 1, 1, v10);
  swift_beginAccess();
  sub_258472790(v7, a2 + v28);
  return swift_endAccess();
}

void sub_25846C0F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_25846C158(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &aBlock - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_startContinuation;
  swift_beginAccess();
  sub_258472790(v10, a2 + v13);
  swift_endAccess();

  v14 = sub_25853295C();
  v15 = *(a2 + 112);
  if (a3)
  {
    v22 = sub_258472800;
    v23 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_25846C77C;
    v21 = &block_descriptor_73;
    v16 = _Block_copy(&aBlock);

    v17 = &selRef_startSuspendedWithUuid_config_completionHandler_;
  }

  else
  {
    v22 = sub_258472800;
    v23 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_25846C77C;
    v21 = &block_descriptor_70;
    v16 = _Block_copy(&aBlock);

    v17 = &selRef_startWithUuid_config_completionHandler_;
  }

  [a4 *v17];

  _Block_release(v16);
}

uint64_t sub_25846C3F0(char a1, void *a2, uint64_t a3)
{
  v30 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v29 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  v20 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_startContinuation;
  v21 = (v6 + 48);
  if (a1)
  {
    swift_beginAccess();
    sub_258472808(a3 + v20, v19);
    if ((*v21)(v19, 1, v5))
    {
      sub_258465168(v19, &unk_27F930DB0, &qword_258536390);
    }

    else
    {
      (*(v6 + 16))(v10, v19, v5);
      sub_258465168(v19, &unk_27F930DB0, &qword_258536390);
      sub_25853364C();
      (*(v6 + 8))(v10, v5);
    }
  }

  else
  {
    swift_beginAccess();
    sub_258472808(a3 + v20, v17);
    if ((*v21)(v17, 1, v5))
    {
      sub_258465168(v17, &unk_27F930DB0, &qword_258536390);
    }

    else
    {
      v22 = v29;
      (*(v6 + 16))(v29, v17, v5);
      sub_258465168(v17, &unk_27F930DB0, &qword_258536390);
      v23 = v30;
      if (v30)
      {
        v24 = v30;
      }

      else
      {
        sub_258471C30();
        v24 = swift_allocError();
        *v25 = 1;
      }

      v31 = v24;
      v26 = v23;
      sub_25853363C();
      (*(v6 + 8))(v22, v5);
    }
  }

  (*(v6 + 56))(v14, 1, 1, v5);
  v27 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_startContinuation;
  swift_beginAccess();
  sub_258472790(v14, a3 + v27);
  return swift_endAccess();
}

void sub_25846C77C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_25846C7F4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_258472954;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25846C77C;
  aBlock[3] = &block_descriptor_89;
  v10 = _Block_copy(aBlock);

  [a2 stopWithCompletionHandler_];
  _Block_release(v10);
}

uint64_t sub_25846C9A4(uint64_t a1, id a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
    return sub_25853364C();
  }

  else
  {
    if (!a2)
    {
      sub_258471C30();
      swift_allocError();
      v4 = v3;
      a2 = 0;
      *v4 = 2;
    }

    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
    return sub_25853363C();
  }
}

uint64_t sub_25846CA58(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE38, &qword_258536398);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v22 = 91;
  v23 = 0xE100000000000000;
  sub_2585329BC();
  sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v12 = sub_258533DFC();
  MEMORY[0x259C81500](v12);

  MEMORY[0x259C81500](93, 0xE100000000000000);
  v13 = v23;
  v21 = v22;
  v14 = sub_25853368C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = v4;
  (*(v5 + 16))(v8, a1, v4);
  v17 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = v21;
  *(v18 + 5) = v13;
  (*(v5 + 32))(&v18[v17], v8, v16);
  *&v18[(v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8] = v15;
  *(v2 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask) = sub_258476C88(0, 0, v11, &unk_258536900, v18);
}

uint64_t MediaContinuityCoexSession.description.getter()
{
  sub_2585329BC();
  sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_258533DFC();
  MEMORY[0x259C81500](v0);

  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_25846CDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FEB8, &qword_258536908);
  v7[16] = v8;
  v7[17] = *(v8 - 8);
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25846CEAC, 0, 0);
}

uint64_t sub_25846CEAC()
{
  v12 = v0;
  if (qword_27F92F908 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  v0[19] = __swift_project_value_buffer(v1, qword_27F93D068);

  v2 = sub_258532A2C();
  v3 = sub_2585338EC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[12];
    v4 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2584713B0(v5, v4, &v11);
    _os_log_impl(&dword_25845E000, v2, v3, "%s Start monitoring events", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE38, &qword_258536398);
  sub_2585336FC();
  swift_beginAccess();
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_25846D0C0;
  v9 = v0[16];

  return MEMORY[0x2822005A8](v0 + 5, 0, 0, v9, v0 + 10);
}

uint64_t sub_25846D0C0()
{

  if (v0)
  {
    v1 = sub_25846D82C;
  }

  else
  {
    v1 = sub_25846D1D0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_25846D1D0()
{
  v27 = v0;
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  *(v0 + 168) = v2;
  *(v0 + 176) = v1;
  v3 = *(v0 + 56);
  *(v0 + 57) = v3;
  if (v3 == 255)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    v17 = sub_258532A2C();
    v18 = sub_2585338EC();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 96);
      v19 = *(v0 + 104);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_2584713B0(v20, v19, &v26);
      _os_log_impl(&dword_25845E000, v17, v18, "%s Stop monitoring events", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x259C82900](v22, -1, -1);
      MEMORY[0x259C82900](v21, -1, -1);
    }
  }

  else
  {
    if ((sub_25853376C() & 1) == 0)
    {
      Strong = swift_weakLoadStrong();
      *(v0 + 184) = Strong;
      if (Strong)
      {

        sub_258472C3C(v2, v1, v3);
        v5 = sub_258532A2C();
        v6 = sub_2585338BC();

        sub_258472C10(v2, v1, v3);
        if (os_log_type_enabled(v5, v6))
        {
          v25 = v6;
          v7 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *(v0 + 88) = v24;
          *v7 = 136315394;
          *(v0 + 64) = 91;
          *(v0 + 72) = 0xE100000000000000;
          sub_2585329BC();
          sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);

          v8 = sub_258533DFC();
          MEMORY[0x259C81500](v8);

          MEMORY[0x259C81500](93, 0xE100000000000000);

          v9 = sub_2584713B0(*(v0 + 64), *(v0 + 72), (v0 + 88));

          *(v7 + 4) = v9;
          *(v7 + 12) = 2080;
          v10 = 0xED00006E6F697373;
          v11 = 0x6553656D75736572;
          if (v3 != 1)
          {
            v11 = 0xD000000000000016;
            v10 = 0x80000002585401E0;
          }

          if (v3)
          {
            v12 = v11;
          }

          else
          {
            v12 = 0x53646E6570737573;
          }

          if (v3)
          {
            v13 = v10;
          }

          else
          {
            v13 = 0xEE006E6F69737365;
          }

          v14 = sub_2584713B0(v12, v13, (v0 + 88));

          *(v7 + 14) = v14;
          _os_log_impl(&dword_25845E000, v5, v25, "%s event=%s", v7, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C82900](v24, -1, -1);
          MEMORY[0x259C82900](v7, -1, -1);
        }

        v15 = swift_task_alloc();
        *(v0 + 192) = v15;
        *v15 = v0;
        v15[1] = sub_25846D65C;

        return sub_25846D8AC(v2, v1, v3);
      }
    }

    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    sub_258472C10(v2, v1, v3);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_25846D65C()
{

  return MEMORY[0x2822009F8](sub_25846D758, 0, 0);
}

uint64_t sub_25846D758()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  v3 = *(v0 + 57);

  sub_258472C10(v2, v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_25846D0C0;
  v5 = *(v0 + 128);

  return MEMORY[0x2822005A8](v0 + 40, 0, 0, v5, v0 + 80);
}

uint64_t sub_25846D82C()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25846D8AC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 72) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_25846D8D4, v3, 0);
}

uint64_t sub_25846D8D4()
{
  v13 = v0;
  if (*(v0 + 72))
  {
    if (*(v0 + 72) == 1)
    {
      v1 = swift_task_alloc();
      *(v0 + 48) = v1;
      *v1 = v0;
      v1[1] = sub_25846DD94;

      return sub_25846ECD8();
    }

    else
    {
      if (qword_27F92F908 != -1)
      {
        swift_once();
      }

      v4 = sub_258532A4C();
      *(v0 + 56) = __swift_project_value_buffer(v4, qword_27F93D068);

      v5 = sub_258532A2C();
      v6 = sub_2585338EC();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 136315138;
        v12[0] = v8;
        v12[1] = 91;
        v12[2] = 0xE100000000000000;
        sub_2585329BC();
        sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v9 = sub_258533DFC();
        MEMORY[0x259C81500](v9);

        MEMORY[0x259C81500](93, 0xE100000000000000);
        v10 = sub_2584713B0(91, 0xE100000000000000, v12);

        *(v7 + 4) = v10;
        _os_log_impl(&dword_25845E000, v5, v6, "%s Reconnecting", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        MEMORY[0x259C82900](v8, -1, -1);
        MEMORY[0x259C82900](v7, -1, -1);
      }

      v11 = swift_task_alloc();
      *(v0 + 64) = v11;
      *v11 = v0;
      v11[1] = sub_25846DEA4;

      return sub_25846FB44();
    }
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_25846DC20;

    return sub_25846E188();
  }
}

uint64_t sub_25846DC20()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_25846DD30, v1, 0);
}

uint64_t sub_25846DD30()
{
  (*(v0 + 16))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25846DD94()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_258472CE4, v1, 0);
}

uint64_t sub_25846DEA4()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_25846DFB4, v1, 0);
}

uint64_t sub_25846DFB4()
{
  v10 = v0;

  v1 = sub_258532A2C();
  v2 = sub_2585338EC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 136315138;
    v9[0] = v4;
    v9[1] = 91;
    v9[2] = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v5 = sub_258533DFC();
    MEMORY[0x259C81500](v5);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v6 = sub_2584713B0(91, 0xE100000000000000, v9);

    *(v3 + 4) = v6;
    _os_log_impl(&dword_25845E000, v1, v2, "%s Reconnected", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x259C82900](v4, -1, -1);
    MEMORY[0x259C82900](v3, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25846E1A8()
{
  v32 = v0;
  if (qword_27F92F908 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  v0[3] = __swift_project_value_buffer(v1, qword_27F93D068);

  v2 = sub_258532A2C();
  v3 = sub_2585338EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315138;
    v29 = v5;
    v30 = 91;
    v31 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_258533DFC();
    MEMORY[0x259C81500](v6);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v7 = sub_2584713B0(91, 0xE100000000000000, &v29);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_25845E000, v2, v3, "%s Suspending session", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v8 = v0[2];
  if (*(v8 + 136) == 2)
  {
    *(v8 + 136) = 4;
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[4] = Strong;
    v10 = v0[2];
    if (Strong)
    {
      v11 = *(v10 + 128);
      ObjectType = swift_getObjectType();
      v28 = (*(v11 + 8) + **(v11 + 8));
      v13 = swift_task_alloc();
      v0[5] = v13;
      *v13 = v0;
      v13[1] = sub_25846E8BC;
      v14 = v0[2];

      return v28(v14, ObjectType, v11);
    }

    if (*(v10 + 136) == 4)
    {
      *(v10 + 136) = 5;

      v16 = sub_258532A2C();
      v17 = sub_2585338EC();

      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_13;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 136315138;
      v29 = v19;
      v30 = 91;
      v31 = 0xE100000000000000;
      sub_2585329BC();
      sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v24 = sub_258533DFC();
      MEMORY[0x259C81500](v24);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v25 = sub_2584713B0(v30, v31, &v29);

      *(v18 + 4) = v25;
      v22 = "%s Suspended session";
    }

    else
    {

      v16 = sub_258532A2C();
      v17 = sub_2585338CC();

      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_13;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 136315138;
      v29 = v19;
      v30 = 91;
      v31 = 0xE100000000000000;
      sub_2585329BC();
      sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v26 = sub_258533DFC();
      MEMORY[0x259C81500](v26);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v27 = sub_2584713B0(v30, v31, &v29);

      *(v18 + 4) = v27;
      v22 = "%s Suspended abort, session is was stopped";
    }

    goto LABEL_12;
  }

  v16 = sub_258532A2C();
  v17 = sub_2585338CC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 136315138;
    v29 = v19;
    v30 = 91;
    v31 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_258533DFC();
    MEMORY[0x259C81500](v20);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v21 = sub_2584713B0(v30, v31, &v29);

    *(v18 + 4) = v21;
    v22 = "%s Suspended abort, session is not started";
LABEL_12:
    _os_log_impl(&dword_25845E000, v16, v17, v22, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x259C82900](v19, -1, -1);
    MEMORY[0x259C82900](v18, -1, -1);
  }

LABEL_13:

  v23 = v0[1];

  return v23();
}

uint64_t sub_25846E8BC()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_25846E9CC, v1, 0);
}

uint64_t sub_25846E9CC()
{
  v16 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 16);
  if (*(v1 + 136) == 4)
  {
    *(v1 + 136) = 5;

    v2 = sub_258532A2C();
    v3 = sub_2585338EC();

    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_7;
    }

    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315138;
    v13 = v5;
    v14 = 91;
    v15 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_258533DFC();
    MEMORY[0x259C81500](v6);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v7 = sub_2584713B0(91, 0xE100000000000000, &v13);

    *(v4 + 4) = v7;
    v8 = "%s Suspended session";
  }

  else
  {

    v2 = sub_258532A2C();
    v3 = sub_2585338CC();

    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_7;
    }

    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315138;
    v13 = v5;
    v14 = 91;
    v15 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v9 = sub_258533DFC();
    MEMORY[0x259C81500](v9);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v10 = sub_2584713B0(91, 0xE100000000000000, &v13);

    *(v4 + 4) = v10;
    v8 = "%s Suspended abort, session is was stopped";
  }

  _os_log_impl(&dword_25845E000, v2, v3, v8, v4, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  MEMORY[0x259C82900](v5, -1, -1);
  MEMORY[0x259C82900](v4, -1, -1);
LABEL_7:

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_25846ECF8()
{
  v40 = v0;
  if (qword_27F92F908 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  v0[3] = __swift_project_value_buffer(v1, qword_27F93D068);

  v2 = sub_258532A2C();
  v3 = sub_2585338EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315138;
    v37 = v5;
    v38 = 91;
    v39 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_258533DFC();
    MEMORY[0x259C81500](v6);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v7 = sub_2584713B0(91, 0xE100000000000000, &v37);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_25845E000, v2, v3, "%s Resuming session", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v8 = v0[2];
  if (*(v8 + 136) != 5)
  {

    v16 = sub_258532A2C();
    v17 = sub_2585338CC();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_37;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 136315394;
    v37 = v19;
    v38 = 91;
    v39 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_258533DFC();
    MEMORY[0x259C81500](v20);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v21 = sub_2584713B0(v38, v39, &v37);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v22 = *(v8 + 136);
    if (v22 <= 3)
    {
      if (*(v8 + 136) <= 1u)
      {
        if (*(v8 + 136))
        {
LABEL_26:
          v23 = 0xE800000000000000;
          v24 = 0x676E697472617473;
          goto LABEL_35;
        }

LABEL_21:
        v24 = 0x646570706F7473;
        v23 = 0xE700000000000000;
LABEL_35:
        v34 = sub_2584713B0(v24, v23, &v37);

        *(v18 + 14) = v34;
        _os_log_impl(&dword_25845E000, v16, v17, "%s Suspended resume, session state=%s has changed", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C82900](v19, -1, -1);
        v30 = v18;
        goto LABEL_36;
      }

LABEL_27:
      if (v22 == 2)
      {
        v23 = 0xE700000000000000;
        v24 = 0x64657472617473;
      }

      else
      {
        v23 = 0xE800000000000000;
        v24 = 0x676E6970706F7473;
      }

      goto LABEL_35;
    }

LABEL_12:
    if (v22 <= 5)
    {
      if (v22 == 4)
      {
        v24 = 0x69646E6570737573;
        v23 = 0xEA0000000000676ELL;
      }

      else
      {
        v24 = 0x65646E6570737573;
        v23 = 0xE900000000000064;
      }
    }

    else if (v22 == 6)
    {
      v23 = 0xE800000000000000;
      v24 = 0x676E696D75736572;
    }

    else if (v22 == 7)
    {
      v23 = 0xE700000000000000;
      v24 = 0x74726174736572;
    }

    else
    {
      v24 = 0x7075727265746E69;
      v23 = 0xEB00000000646574;
    }

    goto LABEL_35;
  }

  *(v8 + 136) = 6;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4] = Strong;
  v10 = v0[2];
  if (Strong)
  {
    v11 = *(v10 + 128);
    ObjectType = swift_getObjectType();
    v36 = (*(v11 + 16) + **(v11 + 16));
    v13 = swift_task_alloc();
    v0[5] = v13;
    *v13 = v0;
    v13[1] = sub_25846F5A0;
    v14 = v0[2];

    return v36(v14, ObjectType, v11);
  }

  if (*(v10 + 136) != 6)
  {

    v16 = sub_258532A2C();
    v17 = sub_2585338CC();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_37;
    }

    v31 = v0[2];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 136315394;
    v37 = v19;
    v38 = 91;
    v39 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v32 = sub_258533DFC();
    MEMORY[0x259C81500](v32);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v33 = sub_2584713B0(v38, v39, &v37);

    *(v18 + 4) = v33;
    *(v18 + 12) = 2080;
    v22 = *(v31 + 136);
    if (v22 <= 3)
    {
      if (*(v31 + 136) <= 1u)
      {
        if (*(v31 + 136))
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      goto LABEL_27;
    }

    goto LABEL_12;
  }

  *(v10 + 136) = 2;

  v16 = sub_258532A2C();
  v25 = sub_2585338EC();

  if (os_log_type_enabled(v16, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 136315138;
    v37 = v27;
    v38 = 91;
    v39 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v28 = sub_258533DFC();
    MEMORY[0x259C81500](v28);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v29 = sub_2584713B0(v38, v39, &v37);

    *(v26 + 4) = v29;
    _os_log_impl(&dword_25845E000, v16, v25, "%s Resumed session", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x259C82900](v27, -1, -1);
    v30 = v26;
LABEL_36:
    MEMORY[0x259C82900](v30, -1, -1);
  }

LABEL_37:

  v35 = v0[1];

  return v35();
}

uint64_t sub_25846F5A0()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_25846F6B0, v1, 0);
}

uint64_t sub_25846F6B0()
{
  v24 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 16);
  if (*(v1 + 136) == 6)
  {
    *(v1 + 136) = 2;

    v2 = sub_258532A2C();
    v3 = sub_2585338EC();

    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_24;
    }

    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315138;
    v21 = v5;
    v22 = 91;
    v23 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_258533DFC();
    MEMORY[0x259C81500](v6);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v7 = sub_2584713B0(91, 0xE100000000000000, &v21);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_25845E000, v2, v3, "%s Resumed session", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    v8 = v4;
  }

  else
  {

    v2 = sub_258532A2C();
    v9 = sub_2585338CC();

    if (!os_log_type_enabled(v2, v9))
    {
      goto LABEL_24;
    }

    v10 = *(v0 + 16);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315394;
    v21 = v12;
    v22 = 91;
    v23 = 0xE100000000000000;
    sub_2585329BC();
    sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_258533DFC();
    MEMORY[0x259C81500](v13);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v14 = sub_2584713B0(91, 0xE100000000000000, &v21);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = *(v10 + 136);
    if (v15 <= 3)
    {
      if (*(v10 + 136) > 1u)
      {
        if (v15 == 2)
        {
          v16 = 0xE700000000000000;
          v17 = 0x64657472617473;
        }

        else
        {
          v16 = 0xE800000000000000;
          v17 = 0x676E6970706F7473;
        }
      }

      else if (*(v10 + 136))
      {
        v16 = 0xE800000000000000;
        v17 = 0x676E697472617473;
      }

      else
      {
        v16 = 0xE700000000000000;
        v17 = 0x646570706F7473;
      }
    }

    else if (*(v10 + 136) <= 5u)
    {
      if (v15 == 4)
      {
        v16 = 0xEA0000000000676ELL;
        v17 = 0x69646E6570737573;
      }

      else
      {
        v16 = 0xE900000000000064;
        v17 = 0x65646E6570737573;
      }
    }

    else if (v15 == 6)
    {
      v16 = 0xE800000000000000;
      v17 = 0x676E696D75736572;
    }

    else if (v15 == 7)
    {
      v16 = 0xE700000000000000;
      v17 = 0x74726174736572;
    }

    else
    {
      v16 = 0xEB00000000646574;
      v17 = 0x7075727265746E69;
    }

    v18 = sub_2584713B0(v17, v16, &v21);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_25845E000, v2, v9, "%s Suspended resume, session state=%s has changed", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v12, -1, -1);
    v8 = v11;
  }

  MEMORY[0x259C82900](v8, -1, -1);
LABEL_24:

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_25846FB64()
{
  v1 = v0[2];
  v2 = *(v1 + 136);
  v3 = &byte_28698B370;
  for (i = qword_28698B360; i; --i)
  {
    v5 = *v3++;
    if (v5 == v2)
    {
      v6 = v2 == 5;
      *(v1 + 136) = 7;
      v7 = swift_task_alloc();
      v0[3] = v7;
      *v7 = v0;
      v7[1] = sub_25846FC64;

      return sub_25847076C(v6, 7);
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_25846FC64()
{
  v2 = *v1;
  v2[4] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x2822009F8](sub_25846FD98, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_25846FD98(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v2 + 136) == 7)
  {
    sub_258471C30();
    *(v1 + 40) = swift_allocError();
    *v3 = 5;
    if (*(v2 + 136) <= 7u)
    {
      *(*(v1 + 16) + 136) = 8;
      v4 = swift_task_alloc();
      *(v1 + 48) = v4;
      *v4 = v1;
      v4[1] = sub_25846FEB8;

      return sub_2584702E4();
    }
  }

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_25846FEB8()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_25846FFC8, v1, 0);
}

uint64_t sub_25846FFC8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = *(*(v0 + 16) + 128);
    ObjectType = swift_getObjectType();
    v9 = (*(v2 + 24) + **(v2 + 24));
    v4 = swift_task_alloc();
    *(v0 + 64) = v4;
    *v4 = v0;
    v4[1] = sub_258470150;
    v5 = *(v0 + 40);
    v6 = *(v0 + 16);

    return v9(v6, v5, ObjectType, v2);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_258470150()
{
  v1 = *(*v0 + 16);

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_25847027C, v1, 0);
}

uint64_t sub_25847027C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258470304()
{
  v1 = v0[2];
  v2 = *(v1 + 152);
  v0[3] = v2;
  if (v2)
  {
    v3 = sub_258471DD0(&qword_27F92FE50, type metadata accessor for MediaContinuityCoexSession, &protocol conformance descriptor for MediaContinuityCoexSession);
    swift_unknownObjectRetain();
    v4 = swift_task_alloc();
    v0[4] = v4;
    *(v4 + 16) = v2;
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_258470510;
    v6 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v5, v1, v3, 0xD000000000000012, 0x80000002585400B0, sub_258472D1C, v4, v6);
  }

  else
  {
    *(v1 + 152) = 0;
    v7 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask;
    if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();
    }

    v8 = v0[2];
    *(v1 + v7) = 0;

    [*(v8 + 144) invalidate];
    v9 = *(v8 + 144);
    *(v8 + 144) = 0;

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_258470510()
{
  v2 = *v1;

  v3 = *(v2 + 16);
  if (v0)
  {

    v4 = sub_258472CE8;
  }

  else
  {

    v4 = sub_25847066C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25847066C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 16);
  *(v1 + 152) = 0;
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask;
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();
  }

  v3 = *(v0 + 16);
  *(v1 + v2) = 0;

  [*(v3 + 144) invalidate];
  v4 = *(v3 + 144);
  *(v3 + 144) = 0;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25847076C(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 81) = a2;
  *(v3 + 80) = a1;
  return MEMORY[0x2822009F8](sub_258470794, v2, 0);
}

uint64_t sub_258470794()
{
  v1 = *(v0 + 16);
  *(v1 + 152) = 0;
  swift_unknownObjectRelease();
  v2 = sub_25846AFC4();
  *(v0 + 24) = v2;
  v3 = *(v1 + 144);
  *(v1 + 144) = v2;
  v4 = v2;

  [v4 activate];
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_258470870;
  v6 = *(v0 + 80);

  return sub_25846B810(v4, v6);
}

uint64_t sub_258470870(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 40) = a1;
  *(v4 + 48) = v1;

  v5 = *(v3 + 16);
  if (v1)
  {
    v6 = sub_258470DA4;
  }

  else
  {
    v6 = sub_2584709A4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584709A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  if (*(v1 + 136) == *(v0 + 81))
  {
    v3 = *(v0 + 80);

    *(v1 + 152) = v2;
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = 5;
    }

    else
    {
      v4 = 2;
    }

    *(v1 + 136) = v4;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = sub_258471DD0(&qword_27F92FE50, type metadata accessor for MediaContinuityCoexSession, &protocol conformance descriptor for MediaContinuityCoexSession);
    v8 = swift_task_alloc();
    *(v0 + 56) = v8;
    *(v8 + 16) = v2;
    v9 = swift_task_alloc();
    *(v0 + 64) = v9;
    *v9 = v0;
    v9[1] = sub_258470B54;
    v10 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v9, v1, v7, 0xD000000000000012, 0x80000002585400B0, sub_258472D1C, v8, v10);
  }
}

uint64_t sub_258470B54()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_258470D2C;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_258470C7C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258470C7C(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_258471C30();
  swift_allocError();
  *v3 = 5;
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_258470D2C()
{
  v1 = *(v0 + 24);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258470DA4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258470E5C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FEA8, &qword_2585368E0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  v13 = _Block_copy(a3);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v16[1] = a5;
  v16[2] = v14;
  v17 = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE08, &unk_258536380);
  sub_2585337EC();

  return (*(v10 + 8))(v12, v9);
}

uint64_t MediaContinuityCoexSession.hash(into:)(uint64_t a1)
{
  sub_2585329BC();
  sub_258471DD0(&qword_27F92FE58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_2585333BC();
}

uint64_t MediaContinuityCoexSession.hashValue.getter()
{
  sub_258533EEC();
  sub_2585329BC();
  sub_258471DD0(&qword_27F92FE58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2585333BC();
  return sub_258533F2C();
}

uint64_t sub_2584710F4()
{
  sub_258533EEC();
  sub_2585329BC();
  sub_258471DD0(&qword_27F92FE58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2585333BC();
  return sub_258533F2C();
}

uint64_t sub_258471194(uint64_t a1)
{
  sub_2585329BC();
  sub_258471DD0(&qword_27F92FE58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_2585333BC();
}

uint64_t sub_25847121C(uint64_t a1)
{
  sub_258533EEC();
  sub_2585329BC();
  sub_258471DD0(&qword_27F92FE58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2585333BC();
  return sub_258533F2C();
}

uint64_t sub_2584712D4()
{
  sub_2585329BC();
  sub_258471DD0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_258533DFC();
  MEMORY[0x259C81500](v0);

  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 91;
}

unint64_t sub_2584713B0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25847147C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_258472C68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_25847147C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_258471588(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_258533BDC();
    a6 = v11;
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

void *sub_258471588(uint64_t a1, unint64_t a2)
{
  v3 = sub_2584715D4(a1, a2);
  sub_258471704(&unk_28698B208);
  return v3;
}

void *sub_2584715D4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2584B42C4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_258533BDC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2585334EC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2584B42C4(v10, 0);
        result = sub_258533B7C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_258471704(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2584717F0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2584717F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FEC0, &qword_258536910);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2584718E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a2;
  v23 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FEC8, &qword_258536918);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE08, &unk_258536380);
  v10 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE38, &qword_258536398);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  swift_defaultActor_initialize();
  *(a3 + 128) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  sub_2585329AC();
  v17 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_startContinuation;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  (*(*(v18 - 8) + 56))(a3 + v17, 1, 1, v18);
  *(a3 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask) = 0;
  v20 = v23;
  v19 = v24;
  *(a3 + 112) = v23;
  *(a3 + 128) = v19;
  swift_unknownObjectWeakAssign();
  (*(v7 + 104))(v9, *MEMORY[0x277D858A0], v6);
  v21 = v20;
  sub_2585337BC();
  (*(v7 + 8))(v9, v6);
  (*(v14 + 32))(a3 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventStream, v16, v13);
  (*(v10 + 32))(a3 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventStreamContinuation, v12, v26);
  return a3;
}

unint64_t sub_258471C30()
{
  result = qword_27F92FE40;
  if (!qword_27F92FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FE40);
  }

  return result;
}

uint64_t type metadata accessor for MediaContinuityCoexSession(uint64_t a1)
{
  result = qword_27F92FE78;
  if (!qword_27F92FE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_258471CDC()
{
  result = qword_27F92FE60;
  if (!qword_27F92FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FE60);
  }

  return result;
}

unint64_t sub_258471D34()
{
  result = qword_27F92FE68;
  if (!qword_27F92FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FE68);
  }

  return result;
}

uint64_t sub_258471DD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258471E18(uint64_t a1)
{
  result = sub_258471C30();
  *(a1 + 8) = result;
  return result;
}

void sub_258471E48(uint64_t a1)
{
  sub_2585329BC();
  if (v1 <= 0x3F)
  {
    sub_258472254(319);
    if (v2 <= 0x3F)
    {
      sub_2584722B8(319, &qword_27F92FE90, MEMORY[0x277D858D8]);
      if (v3 <= 0x3F)
      {
        sub_2584722B8(319, &qword_27F92FE98, MEMORY[0x277D858B0]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of MediaContinuityCoexSession.start()()
{
  v4 = (*(*v0 + 320) + **(*v0 + 320));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_258472CF8;

  return v4();
}

uint64_t dispatch thunk of MediaContinuityCoexSession.stop()()
{
  v4 = (*(*v0 + 328) + **(*v0 + 328));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_258472CF8;

  return v4();
}

void sub_258472254(uint64_t a1)
{
  if (!qword_27F92FE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308F0, &qword_25853AC70);
    v1 = sub_258533A0C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F92FE88);
    }
  }
}

void sub_2584722B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v7 = a3(a1, &type metadata for MediaContinuityCoexSession.Events, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MediaContinuityCoexSession.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaContinuityCoexSession.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaContinuityCoexSession.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaContinuityCoexSession.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18MediaContinuityKit0aB11CoexSessionC6Events33_039972B4F306E32CA3B28AD5CB28EAFBLLO(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_258472614(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25847265C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2584726A0(uint64_t result, unsigned int a2)
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

unint64_t sub_2584726C8()
{
  result = qword_27F92FEA0;
  if (!qword_27F92FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FEA0);
  }

  return result;
}

uint64_t sub_258472720()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_258472790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_258472808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258472878()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2584728C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_258472954(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);

  return sub_25846C9A4(a1, a2);
}

uint64_t sub_2584729E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE38, &qword_258536398);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_258472ACC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE38, &qword_258536398) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_258464F5C;

  return sub_25846CDDC(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_258472C10(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_258472C24(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_258472C24(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_258472C3C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_258472C50(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_258472C50(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_258472C68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static MediaContinuityCoexSession.Configuration.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27F92FED0 = a1;
  return result;
}

uint64_t MediaContinuityCoexSession.Configuration.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_258533EEC();
  MEMORY[0x259C81F40](v1);
  return sub_258533F2C();
}

id MediaContinuityCoexSession.Configuration.__allocating_init(usage:remoteDeviceID:interface:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = *(a1 + 32);
  v11 = *(a1 + 33);
  v12 = *a4;
  v13 = &v9[OBJC_IVAR___MediaContinuityCoexSessionConfig_usage];
  v14 = *(a1 + 16);
  *v13 = *a1;
  *(v13 + 1) = v14;
  v13[32] = v10;
  v13[33] = v11;
  v15 = &v9[OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID];
  *v15 = a2;
  v15[1] = a3;
  v9[OBJC_IVAR___MediaContinuityCoexSessionConfig_interface] = v12;
  v17.receiver = v9;
  v17.super_class = v4;
  return objc_msgSendSuper2(&v17, sel_init);
}

id MediaContinuityCoexSession.Configuration.init(usage:remoteDeviceID:interface:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 33);
  v7 = *a4;
  v8 = &v4[OBJC_IVAR___MediaContinuityCoexSessionConfig_usage];
  v9 = *(a1 + 16);
  *v8 = *a1;
  *(v8 + 1) = v9;
  v8[32] = v5;
  v8[33] = v6;
  v10 = &v4[OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID];
  *v10 = a2;
  v10[1] = a3;
  v4[OBJC_IVAR___MediaContinuityCoexSessionConfig_interface] = v7;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for MediaContinuityCoexSession.Configuration();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_2584730C4()
{
  sub_258533B8C();
  MEMORY[0x259C81500](0x3D65676173755BLL, 0xE700000000000000);
  v1 = (v0 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage);
  if (*(v0 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 33) == 1)
  {
    v2 = *(v1 + 32);
    v4 = v1[2];
    v3 = v1[3];
    v5 = *v1;
    v6 = v1[1];
    v7 = v4 | v3;
    if (v2)
    {
      v8 = 0;
    }

    else
    {
      v8 = (v7 | v5 | v6) == 0;
    }

    if (v8)
    {
      v14 = 0x80000002585402D0;
      v15 = 0xD000000000000011;
    }

    else
    {
      v9 = v7 | v6;
      if (v2)
      {
        v10 = 0;
      }

      else
      {
        v10 = v5 == 1;
      }

      if (v10 && v9 == 0)
      {
        v14 = 0xE700000000000000;
        v15 = 0x79616C70726961;
      }

      else
      {
        if (v2)
        {
          v12 = 0;
        }

        else
        {
          v12 = v5 == 2;
        }

        if (v12 && v9 == 0)
        {
          v14 = 0xE700000000000000;
          v15 = 0x72616365646973;
        }

        else
        {
          v14 = 0xEF676E69726F7272;
          v15 = 0x694D656E6F685069;
          if (!v2 && v5 == 3 && !v9)
          {
            v14 = 0x80000002585402B0;
            v15 = 0xD000000000000010;
          }
        }
      }
    }
  }

  else
  {
    v14 = 0x80000002585402F0;
    v15 = 0xD000000000000012;
  }

  MEMORY[0x259C81500](v15, v14);

  MEMORY[0x259C81500](0xD000000000000011, 0x8000000258540290);
  MEMORY[0x259C81500](*(v0 + OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID), *(v0 + OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID + 8));
  MEMORY[0x259C81500](0x667265746E69202CLL, 0xEC0000003D656361);
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0;
}

id MediaContinuityCoexSession.Configuration.init(coder:)(void *a1)
{
  v3 = sub_25853341C();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_258533A5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32 = v30;
  v33 = v31;
  if (!*(&v31 + 1))
  {
    sub_258467FD8(&v32);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    sub_258473A80();
    v8 = swift_allocError();
    *v9 = 0;
LABEL_18:
    v14 = sub_2585328AC();

    [a1 failWithError_];
LABEL_19:

    type metadata accessor for MediaContinuityCoexSession.Configuration();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v5 = v29;
  v6 = sub_25853341C();
  v7 = [a1 decodeObjectForKey_];

  if (v7)
  {
    sub_258533A5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32 = v30;
  v33 = v31;
  if (!*(&v31 + 1))
  {

    sub_258467FD8(&v32);
LABEL_17:
    sub_258473A80();
    v8 = swift_allocError();
    *v13 = 3;
    goto LABEL_18;
  }

  type metadata accessor for MediaContinuityUsageSecureCodingWrapper();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  v10 = v28;
  v11 = sub_25853341C();
  v12 = [a1 decodeObjectForKey_];

  if (v12)
  {
    sub_258533A5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32 = v30;
  v33 = v31;
  if (!*(&v31 + 1))
  {

    sub_258467FD8(&v32);
LABEL_27:
    sub_258473A80();
    v23 = swift_allocError();
    v24 = 1;
LABEL_28:
    *v22 = v24;
    v14 = sub_2585328AC();

    [a1 failWithError_];
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_27;
  }

  v16 = sub_258533CEC();

  if (v16 > 1)
  {

    sub_258473A80();
    v23 = swift_allocError();
    v24 = 2;
    goto LABEL_28;
  }

  v17 = &v1[OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID];
  *v17 = v28;
  v17[1] = v5;
  v18 = v10[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 32];
  v19 = v10[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 33];
  v25 = *&v10[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue + 16];
  v26 = *&v10[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue];

  v20 = &v1[OBJC_IVAR___MediaContinuityCoexSessionConfig_usage];
  *v20 = v26;
  *(v20 + 1) = v25;
  v20[32] = v18;
  v20[33] = v19;
  v1[OBJC_IVAR___MediaContinuityCoexSessionConfig_interface] = v16;
  v27.receiver = v1;
  v27.super_class = type metadata accessor for MediaContinuityCoexSession.Configuration();
  v21 = objc_msgSendSuper2(&v27, sel_init);

  return v21;
}

void sub_258473778(void *a1)
{
  v3 = (v1 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage);
  v4 = *(v1 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32);
  v5 = *(v1 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 33);
  v6 = type metadata accessor for MediaContinuityUsageSecureCodingWrapper();
  v15 = v3[1];
  v16 = *v3;
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC18MediaContinuityKit39MediaContinuityUsageSecureCodingWrapper_wrappedValue];
  *v8 = v16;
  *(v8 + 1) = v15;
  v8[32] = v4;
  v8[33] = v5;
  v17.receiver = v7;
  v17.super_class = v6;
  v9 = objc_msgSendSuper2(&v17, sel_init);
  v10 = sub_25853341C();
  [a1 encodeObject:v9 forKey:v10];

  v11 = sub_25853341C();
  v12 = sub_25853341C();
  [a1 encodeObject:v11 forKey:v12];

  v13 = sub_25853341C();

  v14 = sub_25853341C();
  [a1 encodeObject:v13 forKey:v14];
}

id MediaContinuityCoexSession.Configuration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MediaContinuityCoexSession.Configuration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaContinuityCoexSession.Configuration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_258473A80()
{
  result = qword_27F92FEF8;
  if (!qword_27F92FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FEF8);
  }

  return result;
}

unint64_t sub_258473AD8()
{
  result = qword_27F92FF00;
  if (!qword_27F92FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FF00);
  }

  return result;
}

unint64_t sub_258473B2C(uint64_t a1)
{
  result = sub_258473A80();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258473B54@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F92FED0;
  return result;
}

uint64_t sub_258473BA0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F92FED0 = v1;
  return result;
}

uint64_t sub_258473C6C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEB98]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FF70, &qword_25853D620);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_258536920;
  v2 = type metadata accessor for MediaContinuityCoexSession.Configuration();
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FF78, &qword_258536A30);
  *(v1 + 32) = v2;
  v3 = sub_258473E04(0, &qword_27F92FF80, 0x277CCACA8);
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FF88, &qword_258536A38);
  *(v1 + 64) = v3;
  v4 = type metadata accessor for MediaContinuityUsageSecureCodingWrapper();
  *(v1 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FF90, &qword_258536A40);
  *(v1 + 96) = v4;
  v5 = sub_258473E04(0, &qword_27F92FF98, 0x277CBEA90);
  *(v1 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F92FFA0, &qword_258536A48);
  *(v1 + 128) = v5;
  v6 = sub_2585335CC();

  v7 = [v0 setByAddingObjectsFromArray_];

  v8 = sub_25853387C();
  return v8;
}

uint64_t sub_258473E04(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t dispatch thunk of MediaContinuityCoexSessionDelegate.sessionDidSuspend(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_258472CF8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MediaContinuityCoexSessionDelegate.sessionDidResume(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_258464F5C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MediaContinuityCoexSessionDelegate.sessionDidInterrupt(_:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_258472CF8;

  return v11(a1, a2, a3, a4);
}

uint64_t static AudioStreamConfiguration.appAudioSend.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F92F918 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_27F92FFB0;
  v3 = byte_27F92FFB8;
  *a1 = qword_27F92FFB0;
  *(a1 + 8) = v3;

  return sub_2584742A4(v2, v3);
}

uint64_t sub_2584742A4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

double static AudioStreamConfiguration.appAudioSend(auditToken:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FFC0, &qword_258536AB0);
  v10 = swift_allocObject();
  *&result = 1;
  *(v10 + 16) = xmmword_2585356C0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 48) = a3;
  *(v10 + 56) = a4;
  *a5 = v10;
  *(a5 + 8) = 0;
  return result;
}

unint64_t sub_258474340()
{
  result = qword_27F92FFC8;
  if (!qword_27F92FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FFC8);
  }

  return result;
}

uint64_t sub_2584743A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2584743E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioStreamIdentifier(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AudioStreamIdentifier(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_258474544(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2584745A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t static VideoStreamConfiguration.stereoContentSend(resolution:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  return result;
}

id static VideoStreamConfiguration.stereoContentReceive(layer:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0x80;
  return a1;
}

uint64_t static VideoStreamConfiguration.stereoContentReceive(figEndpointID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0x80;
  return swift_unknownObjectRetain();
}

unint64_t sub_258474690()
{
  result = qword_27F92FFD0;
  if (!qword_27F92FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FFD0);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_258474704(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_258474754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2584747B4(uint64_t result, char a2)
{
  v2 = *(result + 32) & 1 | (a2 << 7);
  *(result + 16) &= 1uLL;
  *(result + 32) = v2;
  return result;
}

id VideoStreamReceiveConfiguration.layer.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_258474818(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_258474874(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2584748F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258474910(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_2584749D4(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = sub_25853390C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = *a3;
  return sub_2585338FC();
}

uint64_t sub_258474A58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_25853390C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_258474AF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[4] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930098, &qword_258537188);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9300A0, &unk_258537190);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2584766E0();
  sub_258533F4C();
  sub_258476734();
  sub_258533D8C();
  v18 = 0;
  v14 = v16[5];
  sub_258533DAC();
  if (!v14)
  {
    v17 = 1;
    sub_258533DAC();
  }

  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}