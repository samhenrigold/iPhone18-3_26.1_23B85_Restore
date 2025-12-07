uint64_t sub_25B137490(uint64_t a1)
{
  v2 = sub_25B13AA40();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t NHOHomeQuery.defaultResult()(uint64_t a1)
{
  *(v2 + 352) = a1;
  v3 = sub_25B161514();
  *(v2 + 360) = v3;
  *(v2 + 368) = *(v3 - 8);
  *(v2 + 376) = swift_task_alloc();
  v4 = sub_25B1615E4();
  *(v2 + 384) = v4;
  *(v2 + 392) = *(v4 - 8);
  *(v2 + 400) = swift_task_alloc();
  sub_25B161414();
  *(v2 + 408) = swift_task_alloc();
  v5 = *(v1 + 16);
  *(v2 + 416) = *v1;
  *(v2 + 432) = v5;
  *(v2 + 448) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_25B137634, 0, 0);
}

uint64_t sub_25B137634(uint64_t a1)
{
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B114F98();
    sub_25B1611B4();

    v3 = v1[36];
    v2 = v1[37];
    if (sub_25B1612E4())
    {
      swift_getKeyPath();
      sub_25B1611B4();

      v5 = v1[38];
      v4 = v1[39];
      if ((sub_25B161BF4() & 1) == 0)
      {
        v10 = v1[44];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
        sub_25B1613E4();
        v11 = sub_25B161124();
        sub_25B1613E4();
        v12 = sub_25B161124();
        v1[40] = v3;
        v1[41] = v2;
        sub_25B161104();
        v1[42] = v5;
        v1[43] = v4;
LABEL_22:
        sub_25B161104();
        *v10 = v11;
        v10[1] = v12;

        v23 = v1[1];

        return v23();
      }
    }
  }

  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B114F98();
    sub_25B1611B4();

    v7 = v1[28];
    v6 = v1[29];
    if (sub_25B1612E4())
    {
      swift_getKeyPath();
      sub_25B1611B4();

      v9 = v1[30];
      v8 = v1[31];
      if ((sub_25B161BF4() & 1) == 0)
      {
        v10 = v1[44];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
        sub_25B1613E4();
        v11 = sub_25B161124();
        sub_25B1613E4();
        v12 = sub_25B161124();
        v1[32] = v7;
        v1[33] = v6;
        sub_25B161104();
        v1[34] = v9;
        v1[35] = v8;
        goto LABEL_22;
      }
    }
  }

  if (sub_25B1612E4())
  {
    v10 = v1[44];
    swift_getKeyPath();
    sub_25B13A280();
    sub_25B1611B4();

    v13 = v1[22];
    v14 = v1[23];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
    sub_25B1613E4();
    v11 = sub_25B161124();
    sub_25B1613E4();
    v12 = sub_25B161124();
    v1[24] = v13;
    v1[25] = v14;
    sub_25B161104();
    v1[26] = 0;
    v1[27] = 0xE000000000000000;
    goto LABEL_22;
  }

  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B13A280();
    sub_25B1611B4();

    v16 = v1[14];
    v15 = v1[15];
    if (sub_25B1612E4())
    {
      v10 = v1[44];
      swift_getKeyPath();
      sub_25B1611B4();

      v17 = v1[16];
      v18 = v1[17];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
      sub_25B1613E4();
      v11 = sub_25B161124();
      sub_25B1613E4();
      v12 = sub_25B161124();
      v1[18] = v16;
      v1[19] = v15;
      sub_25B161104();
      v1[20] = v17;
      v1[21] = v18;
      goto LABEL_22;
    }
  }

  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B13A280();
    sub_25B1611B4();

    v20 = v1[6];
    v19 = v1[7];
    if (sub_25B1612E4())
    {
      v10 = v1[44];
      swift_getKeyPath();
      sub_25B1611B4();

      v21 = v1[8];
      v22 = v1[9];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
      sub_25B1613E4();
      v11 = sub_25B161124();
      sub_25B1613E4();
      v12 = sub_25B161124();
      v1[10] = v20;
      v1[11] = v19;
      sub_25B161104();
      v1[12] = v21;
      v1[13] = v22;
      goto LABEL_22;
    }
  }

  v1[57] = sub_25B161624();
  sub_25B1616C4();
  v1[58] = sub_25B1616B4();
  sub_25B13A180();
  v26 = sub_25B161CC4();

  return MEMORY[0x2822009F8](sub_25B137CB8, v26, v25);
}

uint64_t sub_25B137CB8()
{

  *(v0 + 472) = sub_25B161614();
  v1 = swift_task_alloc();
  *(v0 + 480) = v1;
  *v1 = v0;
  v1[1] = sub_25B137D5C;

  return MEMORY[0x28216E6B8]();
}

uint64_t sub_25B137D5C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 488) = a1;
  *(v3 + 496) = v1;

  if (v1)
  {
    v4 = sub_25B138050;
  }

  else
  {
    v4 = sub_25B137E70;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25B137E70()
{
  v1 = v0[61];

  if (*(v1 + 16))
  {
    v2 = v0[50];
    v3 = v0[49];
    v5 = v0[46];
    v4 = v0[47];
    v6 = v0[45];
    v18 = v0[48];
    v19 = v0[44];
    (*(v3 + 16))(v2, v0[61] + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

    sub_25B1615C4();
    v7 = sub_25B1614F4();
    v9 = v8;
    (*(v5 + 8))(v4, v6);
    v10 = sub_25B1615D4();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
    sub_25B1613E4();
    v13 = sub_25B161124();
    sub_25B1613E4();
    v14 = sub_25B161124();
    v0[2] = v7;
    v0[3] = v9;
    sub_25B161104();
    v0[4] = v10;
    v0[5] = v12;
    sub_25B161104();
    (*(v3 + 8))(v2, v18);
    *v19 = v13;
    v19[1] = v14;
  }

  else
  {
    v15 = v0[44];

    *v15 = 0;
    v15[1] = 0;
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_25B138050()
{
  v21 = v0;

  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v1 = v0[62];
  v2 = sub_25B161A14();
  __swift_project_value_buffer(v2, qword_27FA3A088);
  v3 = v1;
  v4 = sub_25B1619F4();
  v5 = sub_25B161D84();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[62];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_25B108480(0x52746C7561666564, 0xEF2928746C757365, &v20);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_25B105000, v4, v5, "%s Error getting default home from WidgetDataModel: %@", v8, 0x16u);
    sub_25B13A1D8(v9);
    MEMORY[0x25F862BF0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x25F862BF0](v10, -1, -1);
    MEMORY[0x25F862BF0](v8, -1, -1);
  }

  else
  {
  }

  v13 = sub_25B1619F4();
  v14 = sub_25B161D94();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_25B108480(0x52746C7561666564, 0xEF2928746C757365, &v20);
    _os_log_impl(&dword_25B105000, v13, v14, "%s returning nil", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x25F862BF0](v16, -1, -1);
    MEMORY[0x25F862BF0](v15, -1, -1);
  }

  v17 = v0[44];
  *v17 = 0;
  v17[1] = 0;

  v18 = v0[1];

  return v18();
}

uint64_t NHOHomeQuery.entities(for:)(uint64_t a1)
{
  v1[8] = a1;
  sub_25B161414();
  v1[9] = swift_task_alloc();
  v2 = sub_25B161514();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = sub_25B1615E4();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B138544, 0, 0);
}

uint64_t sub_25B138544()
{
  *(v0 + 128) = sub_25B161624();
  sub_25B1616C4();
  *(v0 + 136) = sub_25B1616B4();
  sub_25B13A180();
  v2 = sub_25B161CC4();

  return MEMORY[0x2822009F8](sub_25B1385E4, v2, v1);
}

uint64_t sub_25B1385E4()
{

  *(v0 + 144) = sub_25B161614();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_25B138688;

  return MEMORY[0x28216E6B8]();
}

uint64_t sub_25B138688(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_25B138DE0;
  }

  else
  {
    v4 = sub_25B13879C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25B13879C()
{
  v53 = v0;

  v1 = 0x27FA39000uLL;
  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161A14();
  __swift_project_value_buffer(v2, qword_27FA3A088);
  sub_25B161264();
  sub_25B161264();
  v3 = sub_25B1619F4();
  v4 = sub_25B161D94();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[20];
  if (v5)
  {
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v52[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, v52);
    *(v8 + 12) = 2048;
    *(v8 + 14) = *(v6 + 16);

    *(v8 + 22) = 2080;
    v10 = MEMORY[0x25F8621C0](v7, MEMORY[0x277D837D0]);
    v12 = sub_25B108480(v10, v11, v52);

    *(v8 + 24) = v12;
    _os_log_impl(&dword_25B105000, v3, v4, "%s: [NHOHomeQuery] Found %ld homes. Searching for homes matching identifiers %s.", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v9, -1, -1);
    MEMORY[0x25F862BF0](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[20];
  v14 = *(v13 + 16);
  if (v14)
  {
    v45 = v2;
    v15 = v0[14];
    v49 = *(v15 + 16);
    v16 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = (v0[11] + 8);
    v47 = (v15 + 8);
    v48 = *(v15 + 72);
    v18 = MEMORY[0x277D84F90];
    do
    {
      v50 = v14;
      v51 = v18;
      v19 = v0[12];
      v20 = v0[10];
      v21 = v0[8];
      v49(v0[15], v16, v0[13]);
      sub_25B1615C4();
      v22 = sub_25B1614F4();
      v24 = v23;
      v25 = *v17;
      (*v17)(v19, v20);
      v0[2] = v22;
      v0[3] = v24;
      v26 = swift_task_alloc();
      *(v26 + 16) = v0 + 2;
      LOBYTE(v21) = sub_25B12EF38(sub_25B13A808, v26, v21);

      if (v21)
      {
        v27 = v0[12];
        v28 = v0[10];
        sub_25B1615C4();
        v46 = sub_25B1614F4();
        v30 = v29;
        v25(v27, v28);
        v31 = sub_25B1615D4();
        v33 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
        sub_25B1613E4();
        v34 = sub_25B161124();
        sub_25B1613E4();
        v35 = sub_25B161124();
        v0[4] = v46;
        v0[5] = v30;
        sub_25B161104();
        v0[6] = v31;
        v0[7] = v33;
        sub_25B161104();
        v18 = v51;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_25B115720(0, *(v51 + 2) + 1, 1, v51);
        }

        v37 = *(v18 + 2);
        v36 = *(v18 + 3);
        if (v37 >= v36 >> 1)
        {
          v18 = sub_25B115720((v36 > 1), v37 + 1, 1, v18);
        }

        (*v47)(v0[15], v0[13]);
        *(v18 + 2) = v37 + 1;
        v38 = &v18[16 * v37];
        *(v38 + 4) = v34;
        *(v38 + 5) = v35;
      }

      else
      {
        (*v47)(v0[15], v0[13]);
        v18 = v51;
      }

      v16 += v48;
      v14 = v50 - 1;
    }

    while (v50 != 1);

    v1 = 0x27FA39000;
    v2 = v45;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  if (*(v1 + 2816) != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27FA3A088);
  sub_25B161264();
  v39 = sub_25B1619F4();
  v40 = sub_25B161D94();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v52[0] = v42;
    *v41 = 136315394;
    *(v41 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, v52);
    *(v41 + 12) = 2048;
    *(v41 + 14) = *(v18 + 2);

    _os_log_impl(&dword_25B105000, v39, v40, "%s: [NHOHomeQuery] Returning %ld homes.", v41, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x25F862BF0](v42, -1, -1);
    MEMORY[0x25F862BF0](v41, -1, -1);
  }

  else
  {
  }

  v43 = v0[1];

  return v43(v18);
}

uint64_t sub_25B138DE0()
{
  v25 = v0;

  v1 = 0x27FA39000uLL;
  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v3 = sub_25B161A14();
  __swift_project_value_buffer(v3, qword_27FA3A088);
  v4 = v2;
  v5 = sub_25B1619F4();
  v6 = sub_25B161D94();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 168);
  v9 = &loc_25B162000;
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, &v24);
    *(v10 + 12) = 2112;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_25B105000, v5, v6, "%s: [NHOHomeQuery] Error getting ordered homes: %@", v10, 0x16u);
    sub_25B13A1D8(v11);
    v9 = &loc_25B162000;
    MEMORY[0x25F862BF0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x25F862BF0](v12, -1, -1);
    v15 = v10;
    v1 = 0x27FA39000;
    MEMORY[0x25F862BF0](v15, -1, -1);
  }

  else
  {
  }

  if (*(v1 + 2816) != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_27FA3A088);
  v16 = MEMORY[0x277D84F90];
  sub_25B161264();
  v17 = sub_25B1619F4();
  v18 = sub_25B161D94();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24 = v20;
    *v19 = v9[507];
    *(v19 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, &v24);
    *(v19 + 12) = 2048;
    *(v19 + 14) = *(v16 + 16);

    _os_log_impl(&dword_25B105000, v17, v18, "%s: [NHOHomeQuery] Returning %ld homes.", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x25F862BF0](v20, -1, -1);
    MEMORY[0x25F862BF0](v19, -1, -1);
  }

  else
  {
  }

  v21 = *(v0 + 8);
  v22 = MEMORY[0x277D84F90];

  return v21(v22);
}

uint64_t NHOHomeQuery.suggestedEntities()(uint64_t a1)
{
  v1[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v1[7] = swift_task_alloc();
  v2 = sub_25B161514();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_25B1615E4();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = sub_25B161414();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39D90, &qword_25B163778);
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B139390, 0, 0);
}

uint64_t sub_25B139390()
{
  *(v0 + 168) = sub_25B161624();
  sub_25B1616C4();
  *(v0 + 176) = sub_25B1616B4();
  sub_25B13A180();
  v2 = sub_25B161CC4();

  return MEMORY[0x2822009F8](sub_25B139430, v2, v1);
}

uint64_t sub_25B139430()
{

  *(v0 + 184) = sub_25B161614();
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_25B1394D4;

  return MEMORY[0x28216E6B8]();
}

uint64_t sub_25B1394D4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = sub_25B139B5C;
  }

  else
  {
    v4 = sub_25B1395E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25B1395E8()
{
  v52 = v0;

  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v1 = sub_25B161A14();
  __swift_project_value_buffer(v1, qword_27FA3A088);
  sub_25B161264();
  v2 = sub_25B1619F4();
  v3 = sub_25B161D94();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[25];
  v50 = v0;
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v51 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v51);
    *(v6 + 12) = 2048;
    *(v6 + 14) = *(v5 + 16);

    _os_log_impl(&dword_25B105000, v2, v3, "%s: [NHOHomeQuery] Found %ld homes.", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x25F862BF0](v7, -1, -1);
    MEMORY[0x25F862BF0](v6, -1, -1);
  }

  else
  {
  }

  v8 = v0[25];
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v0[12];
    v11 = v0[9];
    v51 = MEMORY[0x277D84F90];
    sub_25B13A504(0, v9, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
    v12 = v51;
    v13 = *(v10 + 16);
    v10 += 16;
    v47 = v13;
    v14 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v45 = (v11 + 8);
    v46 = *(v10 + 56);
    v44 = (v10 - 8);
    do
    {
      v48 = v9;
      v49 = v12;
      v15 = v0[13];
      v17 = v0[10];
      v16 = v0[11];
      v18 = v0[8];
      v47(v15, v14, v16);
      sub_25B1615C4();
      v19 = sub_25B1614F4();
      v21 = v20;
      (*v45)(v17, v18);
      v22 = sub_25B1615D4();
      v24 = v23;
      sub_25B1613E4();
      v25 = sub_25B161124();
      sub_25B1613E4();
      v26 = sub_25B161124();
      v50[2] = v19;
      v50[3] = v21;
      sub_25B161104();
      v50[4] = v22;
      v50[5] = v24;
      v0 = v50;
      sub_25B161104();
      v27 = v16;
      v12 = v49;
      (*v44)(v15, v27);
      v51 = v49;
      v29 = *(v49 + 16);
      v28 = *(v49 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_25B13A504((v28 > 1), v29 + 1, 1);
        v12 = v51;
      }

      *(v12 + 16) = v29 + 1;
      v30 = v12 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v26;
      v14 += v46;
      v9 = v48 - 1;
    }

    while (v48 != 1);
  }

  v31 = v0;
  v33 = v0[19];
  v32 = v0[20];
  v34 = v0[18];
  v35 = v31[17];
  _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD000000000000013, 0x800000025B167150);
  sub_25B1613E4();
  sub_25B115CC8();
  sub_25B1611E4();
  (*(v34 + 16))(v33, v32, v35);
  v36 = sub_25B11582C(0, 1, 1, MEMORY[0x277D84F90]);
  v38 = v36[2];
  v37 = v36[3];
  if (v38 >= v37 >> 1)
  {
    v36 = sub_25B11582C((v37 > 1), v38 + 1, 1, v36);
  }

  v39 = v50[19];
  v40 = v50[17];
  v41 = v50[18];
  (*(v41 + 8))(v50[20], v40);
  v36[2] = v38 + 1;
  (*(v41 + 32))(v36 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v38, v39, v40);
  (*(v50[15] + 56))(v50[7], 1, 1, v50[14]);
  sub_25B1611F4();

  v42 = v50[1];

  return v42();
}

uint64_t sub_25B139B5C()
{
  v16 = v0;

  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_25B161A14();
  __swift_project_value_buffer(v2, qword_27FA3A088);
  v3 = v1;
  v4 = sub_25B1619F4();
  v5 = sub_25B161D94();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, &v15);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_25B105000, v4, v5, "%s: [NHOHomeQuery] Error getting ordered homes: %@", v8, 0x16u);
    sub_25B13A1D8(v9);
    MEMORY[0x25F862BF0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x25F862BF0](v10, -1, -1);
    MEMORY[0x25F862BF0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[15] + 56))(v0[7], 1, 1, v0[14]);
  sub_25B115CC8();
  sub_25B1611F4();

  v13 = v0[1];

  return v13();
}

uint64_t sub_25B139DE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B11B408;

  return NHOHomeQuery.entities(for:)(a1);
}

uint64_t sub_25B139E7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return NHOHomeQuery.suggestedEntities()(a1);
}

uint64_t sub_25B139F14(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_25B13A934();
  *v5 = v2;
  v5[1] = sub_25B11B3EC;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_25B139FC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return NHOHomeQuery.defaultResult()(a1);
}

unint64_t sub_25B13A180()
{
  result = qword_27FA39CA8;
  if (!qword_27FA39CA8)
  {
    sub_25B1616C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39CA8);
  }

  return result;
}

uint64_t sub_25B13A1D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A4E0, &qword_25B165AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25B13A280()
{
  result = qword_27FA3A4E8;
  if (!qword_27FA3A4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA3A4F0, qword_25B164D18);
    sub_25B114F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A4E8);
  }

  return result;
}

char *sub_25B13A504(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25B13A6FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25B13A524(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39DE8, &qword_25B1637C8);
  v10 = *(sub_25B161664() - 8);
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
  v15 = *(sub_25B161664() - 8);
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

char *sub_25B13A6FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39D98, &qword_25B163780);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_25B13A82C()
{
  result = qword_27FA3A4F8;
  if (!qword_27FA3A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A4F8);
  }

  return result;
}

unint64_t sub_25B13A884()
{
  result = qword_27FA3A500;
  if (!qword_27FA3A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A500);
  }

  return result;
}

unint64_t sub_25B13A8DC()
{
  result = qword_27FA3A508;
  if (!qword_27FA3A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A508);
  }

  return result;
}

unint64_t sub_25B13A934()
{
  result = qword_27FA3A510;
  if (!qword_27FA3A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A510);
  }

  return result;
}

unint64_t sub_25B13A98C()
{
  result = qword_27FA3A518;
  if (!qword_27FA3A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A518);
  }

  return result;
}

unint64_t sub_25B13A9E4()
{
  result = qword_27FA3A520;
  if (!qword_27FA3A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A520);
  }

  return result;
}

unint64_t sub_25B13AA40()
{
  result = qword_27FA3A528;
  if (!qword_27FA3A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A528);
  }

  return result;
}

unint64_t sub_25B13AADC()
{
  result = qword_27FA3A540;
  if (!qword_27FA3A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A540);
  }

  return result;
}

unint64_t sub_25B13AB34()
{
  result = qword_27FA3A548;
  if (!qword_27FA3A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A548);
  }

  return result;
}

unint64_t sub_25B13AB8C()
{
  result = qword_27FA3A550;
  if (!qword_27FA3A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A550);
  }

  return result;
}

unint64_t sub_25B13ABE8()
{
  result = qword_27FA3A558;
  if (!qword_27FA3A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A558);
  }

  return result;
}

void *sub_25B13AC90@<X0>(void *a1@<X8>)
{
  result = sub_25B1610F4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_25B13ACD0@<X0>(void *a1@<X8>)
{
  result = sub_25B1610F4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_25B13AD10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B13AD58(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t HFImageIconIdentifier.symbolMapping.getter(uint64_t a1)
{
  v1 = sub_25B161B34();
  v3 = v2;
  if (v1 == sub_25B161B34() && v3 == v4)
  {
    goto LABEL_13;
  }

  v6 = sub_25B161FA4();

  if (v6)
  {
    return sub_25B161B34();
  }

  v7 = sub_25B161B34();
  v9 = v8;
  if (v7 == sub_25B161B34() && v9 == v10)
  {

    return sub_25B161B34();
  }

  v12 = sub_25B161FA4();

  if (v12)
  {
    return sub_25B161B34();
  }

  v13 = sub_25B161B34();
  v15 = v14;
  if (v13 == sub_25B161B34() && v15 == v16)
  {
    goto LABEL_13;
  }

  v18 = sub_25B161FA4();

  if (v18)
  {
    return sub_25B161B34();
  }

  v19 = sub_25B161B34();
  v21 = v20;
  if (v19 == sub_25B161B34() && v21 == v22)
  {
    goto LABEL_13;
  }

  v23 = sub_25B161FA4();

  if (v23)
  {
    return sub_25B161B34();
  }

  v24 = sub_25B161B34();
  v26 = v25;
  if (v24 == sub_25B161B34() && v26 == v27)
  {
LABEL_13:

    return sub_25B161B34();
  }

  v28 = sub_25B161FA4();

  if (v28)
  {
    return sub_25B161B34();
  }

  v29 = sub_25B161B34();
  v31 = v30;
  if (v29 == sub_25B161B34() && v31 == v32)
  {

    return 0xD000000000000011;
  }

  v33 = sub_25B161FA4();

  if (v33)
  {
    return 0xD000000000000011;
  }

  v34 = sub_25B161B34();
  v36 = v35;
  if (v34 == sub_25B161B34() && v36 == v37)
  {

    return 0x2E6E726F63706F70;
  }

  v38 = sub_25B161FA4();

  result = 0x2E6E726F63706F70;
  if ((v38 & 1) == 0)
  {
    v39 = sub_25B161B34();
    v41 = v40;
    if (v39 == sub_25B161B34() && v41 == v42)
    {

      return 0x696E6B2E6B726F66;
    }

    v43 = sub_25B161FA4();

    result = 0x696E6B2E6B726F66;
    if ((v43 & 1) == 0)
    {
      v44 = sub_25B161B34();
      v46 = v45;
      if (v44 == sub_25B161B34() && v46 == v47)
      {

        return 0xD000000000000013;
      }

      v48 = sub_25B161FA4();

      if (v48)
      {
        return 0xD000000000000013;
      }

      v49 = sub_25B161B34();
      v51 = v50;
      if (v49 == sub_25B161B34() && v51 == v52)
      {

        return 0x702E676E69797266;
      }

      v53 = sub_25B161FA4();

      result = 0x702E676E69797266;
      if ((v53 & 1) == 0)
      {
        v54 = sub_25B161B34();
        v56 = v55;
        if (v54 == sub_25B161B34() && v56 == v57)
        {
        }

        else
        {
          v58 = sub_25B161FA4();

          if ((v58 & 1) == 0)
          {
            v59 = sub_25B161B34();
            v61 = v60;
            if (v59 == sub_25B161B34() && v61 == v62)
            {
            }

            else
            {
              v63 = sub_25B161FA4();

              if ((v63 & 1) == 0)
              {
                return 0;
              }
            }

            return 0x69662E7472616568;
          }
        }

        return 0xD000000000000011;
      }
    }
  }

  return result;
}

uint64_t ServiceKind.isSupportedByControls.getter()
{
  v1 = v0;
  v2 = sub_25B1616A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = *MEMORY[0x277D15640];
  (*(v3 + 104))(&v23 - v7, *MEMORY[0x277D15640], v2);
  sub_25B13FBC0(&qword_27FA39D80, MEMORY[0x277D158E0], MEMORY[0x277D158F0]);
  v10 = sub_25B161AA4();
  v11 = *(v3 + 8);
  v11(v8, v2);
  if ((v10 & 1) == 0)
  {
    (*(v3 + 16))(v6, v1, v2);
    v12 = (*(v3 + 88))(v6, v2);
    if (v12 == *MEMORY[0x277D15810] || v12 == *MEMORY[0x277D15760] || v12 == *MEMORY[0x277D158D0] || v12 == *MEMORY[0x277D156D8] || v12 == *MEMORY[0x277D15870] || v12 == *MEMORY[0x277D15888] || v12 == v9 || v12 == *MEMORY[0x277D15718] || v12 == *MEMORY[0x277D15898] || v12 == *MEMORY[0x277D15720])
    {
      return 1;
    }

    v11(v6, v2);
  }

  return 0;
}

uint64_t ServiceKind.isSupportedByWidgets.getter()
{
  v1 = v0;
  v2 = sub_25B1616A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  v15 = v6 == *MEMORY[0x277D15810] || v6 == *MEMORY[0x277D15760] || v6 == *MEMORY[0x277D158D0] || v6 == *MEMORY[0x277D156D8] || v6 == *MEMORY[0x277D15870] || v6 == *MEMORY[0x277D15888] || v6 == *MEMORY[0x277D15640] || v6 == *MEMORY[0x277D15718] || v6 == *MEMORY[0x277D15898] || v6 == *MEMORY[0x277D15720];
  v16 = v15;
  if (!v15)
  {
    (*(v3 + 8))(v5, v2);
  }

  return v16;
}

uint64_t ServiceKind.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_25B1616A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D15830])
  {
    return 1819047278;
  }

  if (v6 == *MEMORY[0x277D157B0])
  {
    return 0xD000000000000014;
  }

  if (v6 == *MEMORY[0x277D15740])
  {
    return 0xD000000000000010;
  }

  if (v6 == *MEMORY[0x277D15650])
  {
    return 0x6669727550726961;
  }

  if (v6 == *MEMORY[0x277D15750])
  {
    return 0xD000000000000010;
  }

  if (v6 == *MEMORY[0x277D158A0])
  {
    return 0x79726574746162;
  }

  if (v6 == *MEMORY[0x277D156B0])
  {
    return 0x6F436172656D6163;
  }

  if (v6 == *MEMORY[0x277D157E8] || v6 == *MEMORY[0x277D157F0])
  {
    v8 = 9;
    return v8 | 0xD000000000000010;
  }

  if (v6 == *MEMORY[0x277D15798])
  {
    return 0xD000000000000013;
  }

  if (v6 == *MEMORY[0x277D157B8])
  {
    return 0xD000000000000014;
  }

  if (v6 == *MEMORY[0x277D156C0])
  {
    return 0x53746361746E6F63;
  }

  if (v6 == *MEMORY[0x277D15808])
  {
    v8 = 13;
    return v8 | 0xD000000000000010;
  }

  if (v6 == *MEMORY[0x277D15660])
  {
    return 0x74736F6E67616964;
  }

  if (v6 == *MEMORY[0x277D15828])
  {
    return 1919905636;
  }

  if (v6 == *MEMORY[0x277D158C0])
  {
    return 0x6C6C6562726F6F64;
  }

  if (v6 == *MEMORY[0x277D15810])
  {
    return 7233894;
  }

  if (v6 == *MEMORY[0x277D15868])
  {
    return 0x746563756166;
  }

  if (v6 == *MEMORY[0x277D15780])
  {
    return 0xD000000000000011;
  }

  if (v6 == *MEMORY[0x277D15760])
  {
    return 0xD000000000000010;
  }

  if (v6 == *MEMORY[0x277D15698])
  {
    return 0x6F43726574616568;
  }

  if (v6 == *MEMORY[0x277D157D8])
  {
    return 0xD000000000000016;
  }

  if (v6 == *MEMORY[0x277D156F0])
  {
    return 0x79746964696D7568;
  }

  if (v6 == *MEMORY[0x277D15668])
  {
    return 0x756F537475706E69;
  }

  if (v6 == *MEMORY[0x277D15770])
  {
    return 0xD000000000000010;
  }

  if (v6 == *MEMORY[0x277D15838])
  {
    return 0x6C6562616CLL;
  }

  if (v6 == *MEMORY[0x277D15610])
  {
    return 0x736E65536B61656CLL;
  }

  if (v6 == *MEMORY[0x277D15678])
  {
    v9 = 0x53746867696CLL;
    return v9 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
  }

  if (v6 == *MEMORY[0x277D158D0])
  {
    return 0x6C7562746867696CLL;
  }

  if (v6 == *MEMORY[0x277D15700])
  {
    return 0x616E614D6B636F6CLL;
  }

  if (v6 == *MEMORY[0x277D156D8])
  {
    return 0x6863654D6B636F6CLL;
  }

  if (v6 == *MEMORY[0x277D15618])
  {
    return 0x6F68706F7263696DLL;
  }

  if (v6 == *MEMORY[0x277D156A0])
  {
    return 0x65536E6F69746F6DLL;
  }

  if (v6 == *MEMORY[0x277D15730])
  {
    return 0x636E61707563636FLL;
  }

  if (v6 == *MEMORY[0x277D15870])
  {
    return 0x74656C74756FLL;
  }

  if (v6 == *MEMORY[0x277D15708])
  {
    return 0x7974697275636573;
  }

  if (v6 == *MEMORY[0x277D15848])
  {
    return 0x7374616C73;
  }

  if (v6 == *MEMORY[0x277D15688])
  {
    v9 = 0x53656B6F6D73;
    return v9 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
  }

  if (v6 == *MEMORY[0x277D158B0])
  {
    return 0x72656B61657073;
  }

  if (v6 == *MEMORY[0x277D157F8])
  {
LABEL_80:
    v8 = 10;
    return v8 | 0xD000000000000010;
  }

  if (v6 == *MEMORY[0x277D15800])
  {
    v8 = 11;
    return v8 | 0xD000000000000010;
  }

  if (v6 == *MEMORY[0x277D15888])
  {
    return 0x686374697773;
  }

  if (v6 == *MEMORY[0x277D156E0])
  {
    return 0x6F43746567726174;
  }

  if (v6 == *MEMORY[0x277D157E0])
  {
    return 0xD000000000000017;
  }

  if (v6 == *MEMORY[0x277D15630])
  {
    return 0x69736976656C6574;
  }

  if (v6 == *MEMORY[0x277D15788])
  {
    return 0xD000000000000011;
  }

  if (v6 == *MEMORY[0x277D15640])
  {
    return 0x74736F6D72656874;
  }

  if (v6 == *MEMORY[0x277D15850])
  {
    return 0x65766C6176;
  }

  if (v6 == *MEMORY[0x277D15718])
  {
    return 0x74616C69746E6576;
  }

  if (v6 == *MEMORY[0x277D15648])
  {
    return 0x74756F5269666977;
  }

  if (v6 == *MEMORY[0x277D156E8])
  {
    return 0x6574615369666977;
  }

  if (v6 == *MEMORY[0x277D15898])
  {
    return 0x776F646E6977;
  }

  if (v6 != *MEMORY[0x277D15720])
  {
    (*(v3 + 8))(v5, v2);
    goto LABEL_80;
  }

  return 0x6F43776F646E6977;
}

uint64_t ServiceKind.widgetTogglingCharacteristicKind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25B1616A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 != *MEMORY[0x277D15650] && v8 != *MEMORY[0x277D15810] && v8 != *MEMORY[0x277D15868] && v8 != *MEMORY[0x277D15698] && v8 != *MEMORY[0x277D157D8] && v8 != *MEMORY[0x277D15770])
  {
    if (v8 != *MEMORY[0x277D158D0])
    {
      if (v8 == *MEMORY[0x277D15618])
      {
        goto LABEL_13;
      }

      if (v8 == *MEMORY[0x277D15870])
      {
        goto LABEL_11;
      }

      if (v8 == *MEMORY[0x277D158B0])
      {
LABEL_13:
        v9 = MEMORY[0x277D162E0];
        goto LABEL_8;
      }

      if (v8 != *MEMORY[0x277D15888])
      {
        if (v8 != *MEMORY[0x277D156E0] && v8 != *MEMORY[0x277D15630] && v8 != *MEMORY[0x277D15850] && v8 != *MEMORY[0x277D15718])
        {
          v14 = sub_25B161894();
          (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
          return (*(v5 + 8))(v7, v4);
        }

        goto LABEL_7;
      }
    }

LABEL_11:
    v9 = MEMORY[0x277D160B0];
    goto LABEL_8;
  }

LABEL_7:
  v9 = MEMORY[0x277D16330];
LABEL_8:
  v10 = *v9;
  v11 = sub_25B161894();
  v12 = *(v11 - 8);
  (*(v12 + 104))(a1, v10, v11);
  return (*(v12 + 56))(a1, 0, 1, v11);
}

uint64_t ServiceKind.widgetTargetCharacteristicType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25B1616A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 != *MEMORY[0x277D15828])
  {
    if (v8 == *MEMORY[0x277D15868])
    {
      goto LABEL_4;
    }

    if (v8 == *MEMORY[0x277D15760])
    {
      v9 = MEMORY[0x277D16158];
      goto LABEL_17;
    }

    if (v8 == *MEMORY[0x277D15698])
    {
      v9 = MEMORY[0x277D16288];
      goto LABEL_17;
    }

    if (v8 == *MEMORY[0x277D157D8])
    {
      v9 = MEMORY[0x277D162C8];
      goto LABEL_17;
    }

    if (v8 == *MEMORY[0x277D156D8])
    {
      v9 = MEMORY[0x277D162A0];
      goto LABEL_17;
    }

    if (v8 == *MEMORY[0x277D15708])
    {
      v9 = MEMORY[0x277D162B0];
      goto LABEL_17;
    }

    if (v8 == *MEMORY[0x277D15640])
    {
      v9 = MEMORY[0x277D16298];
      goto LABEL_17;
    }

    if (v8 == *MEMORY[0x277D15850])
    {
LABEL_4:
      v9 = MEMORY[0x277D16330];
      goto LABEL_17;
    }

    if (v8 != *MEMORY[0x277D15898] && v8 != *MEMORY[0x277D15720])
    {
      v15 = *MEMORY[0x277D16330];
      v16 = sub_25B161894();
      v17 = *(v16 - 8);
      (*(v17 + 104))(a1, v15, v16);
      (*(v17 + 56))(a1, 0, 1, v16);
      return (*(v5 + 8))(v7, v4);
    }
  }

  v9 = MEMORY[0x277D16140];
LABEL_17:
  v10 = *v9;
  v11 = sub_25B161894();
  v12 = *(v11 - 8);
  (*(v12 + 104))(a1, v10, v11);
  return (*(v12 + 56))(a1, 0, 1, v11);
}

uint64_t ServiceKind.widgetCurrentCharacteristicType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25B1616A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 != *MEMORY[0x277D15828])
  {
    if (v8 == *MEMORY[0x277D15760])
    {
      v9 = MEMORY[0x277D16178];
      goto LABEL_11;
    }

    if (v8 == *MEMORY[0x277D156D8])
    {
      v9 = MEMORY[0x277D162A8];
      goto LABEL_11;
    }

    if (v8 == *MEMORY[0x277D15708])
    {
      v9 = MEMORY[0x277D162B8];
      goto LABEL_11;
    }

    if (v8 == *MEMORY[0x277D15640])
    {
      v9 = MEMORY[0x277D16218];
      goto LABEL_11;
    }

    if (v8 != *MEMORY[0x277D15898] && v8 != *MEMORY[0x277D15720])
    {
      v15 = *MEMORY[0x277D160B0];
      v16 = sub_25B161894();
      v17 = *(v16 - 8);
      (*(v17 + 104))(a1, v15, v16);
      (*(v17 + 56))(a1, 0, 1, v16);
      return (*(v5 + 8))(v7, v4);
    }
  }

  v9 = MEMORY[0x277D16148];
LABEL_11:
  v10 = *v9;
  v11 = sub_25B161894();
  v12 = *(v11 - 8);
  (*(v12 + 104))(a1, v10, v11);
  return (*(v12 + 56))(a1, 0, 1, v11);
}

uint64_t ServiceKind.widgetDisplayCharacteristicType.getter()
{
  v1 = v0;
  v2 = sub_25B1616A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D15650])
  {
    goto LABEL_2;
  }

  if (v6 != *MEMORY[0x277D15828])
  {
    if (v6 == *MEMORY[0x277D15810])
    {
LABEL_2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
      v7 = sub_25B161894();
      v8 = *(v7 - 8);
      v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v10 = swift_allocObject();
      v11 = v10;
      *(v10 + 16) = xmmword_25B162FE0;
      v12 = MEMORY[0x277D16128];
LABEL_3:
      (*(v8 + 104))(v10 + v9, *v12, v7);
      return v11;
    }

    if (v6 == *MEMORY[0x277D15760])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
      v7 = sub_25B161894();
      v8 = *(v7 - 8);
      v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v10 = swift_allocObject();
      v11 = v10;
      *(v10 + 16) = xmmword_25B162FE0;
      v12 = MEMORY[0x277D161F0];
      goto LABEL_3;
    }

    if (v6 == *MEMORY[0x277D15698])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
      v20 = sub_25B161894();
      v21 = *(v20 - 8);
      v22 = *(v21 + 72);
      v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_25B164320;
      v24 = v11 + v23;
      v25 = *(v21 + 104);
      v25(v24, *MEMORY[0x277D161C8], v20);
      v25(v24 + v22, *MEMORY[0x277D16290], v20);
      v25(v24 + 2 * v22, *MEMORY[0x277D16180], v20);
      v25(v24 + 3 * v22, *MEMORY[0x277D16170], v20);
      return v11;
    }

    if (v6 == *MEMORY[0x277D157D8])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
      v26 = sub_25B161894();
      v27 = *(v26 - 8);
      v28 = *(v27 + 72);
      v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v30 = 4 * v28;
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_25B163AC0;
      v31 = v11 + v29;
      v32 = *(v27 + 104);
      v32(v31, *MEMORY[0x277D16330], v26);
      v32(v31 + v28, *MEMORY[0x277D16128], v26);
      v32(v31 + 2 * v28, *MEMORY[0x277D161E8], v26);
      v32(v31 + 3 * v28, *MEMORY[0x277D16228], v26);
      v33 = MEMORY[0x277D162D0];
    }

    else
    {
      if (v6 == *MEMORY[0x277D15770])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
        v34 = sub_25B161894();
        v35 = *(v34 - 8);
        v36 = *(v35 + 72);
        v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_25B165270;
        v38 = v11 + v37;
        v39 = *(v35 + 104);
        v39(v38, *MEMORY[0x277D16328], v34);
        v39(v38 + v36, *MEMORY[0x277D160D8], v34);
        return v11;
      }

      if (v6 == *MEMORY[0x277D158D0])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
        v7 = sub_25B161894();
        v8 = *(v7 - 8);
        v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v10 = swift_allocObject();
        v11 = v10;
        *(v10 + 16) = xmmword_25B162FE0;
        v12 = MEMORY[0x277D160A8];
        goto LABEL_3;
      }

      if (v6 != *MEMORY[0x277D15640])
      {
        if (v6 == *MEMORY[0x277D15850])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
          v7 = sub_25B161894();
          v8 = *(v7 - 8);
          v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v10 = swift_allocObject();
          v11 = v10;
          *(v10 + 16) = xmmword_25B162FE0;
          v12 = MEMORY[0x277D16328];
          goto LABEL_3;
        }

        if (v6 == *MEMORY[0x277D15718])
        {
          goto LABEL_2;
        }

        if (v6 != *MEMORY[0x277D15898] && v6 != *MEMORY[0x277D15720])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
          v43 = sub_25B161894();
          v44 = *(v43 - 8);
          v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_25B162FE0;
          (*(v44 + 104))(v11 + v45, *MEMORY[0x277D160B0], v43);
          (*(v3 + 8))(v5, v2);
          return v11;
        }

        goto LABEL_5;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
      v26 = sub_25B161894();
      v40 = *(v26 - 8);
      v41 = *(v40 + 72);
      v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v30 = 4 * v41;
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_25B163AC0;
      v31 = v11 + v42;
      v32 = *(v40 + 104);
      v32(v31, *MEMORY[0x277D161C8], v26);
      v32(v31 + v41, *MEMORY[0x277D161B0], v26);
      v32(v31 + 2 * v41, *MEMORY[0x277D16218], v26);
      v32(v31 + 3 * v41, *MEMORY[0x277D16180], v26);
      v33 = MEMORY[0x277D16170];
    }

    v32(v31 + v30, *v33, v26);
    return v11;
  }

LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A570, &qword_25B165290);
  v13 = sub_25B161894();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25B165270;
  v17 = v11 + v16;
  v18 = *(v14 + 104);
  v18(v17, *MEMORY[0x277D16120], v13);
  v18(v17 + v15, *MEMORY[0x277D161F0], v13);
  return v11;
}

uint64_t ServiceKind.widgetRelevantCharacteristic.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A578, &qword_25B165298);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v52 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v50 = &v46 - v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - v5;
  v7 = sub_25B161894();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v48 = &v46 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v47 = &v46 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v46 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v46 - v21;
  v53 = MEMORY[0x277D84FA0];
  ServiceKind.widgetTogglingCharacteristicKind.getter(v6);
  v23 = *(v8 + 48);
  v24 = v23(v6, 1, v7);
  v51 = v17;
  if (v24 == 1)
  {
    sub_25B13DCDC(v6);
  }

  else
  {
    (*(v8 + 32))(v22, v6, v7);
    (*(v8 + 16))(v17, v22, v7);
    sub_25B13E428(v20, v17);
    v25 = *(v8 + 8);
    v25(v20, v7);
    v25(v22, v7);
  }

  v26 = v50;
  ServiceKind.widgetTargetCharacteristicType.getter(v50);
  v27 = v23;
  if (v23(v26, 1, v7) == 1)
  {
    sub_25B13DCDC(v26);
    v28 = v51;
  }

  else
  {
    v29 = v47;
    (*(v8 + 32))(v47, v26, v7);
    v28 = v51;
    (*(v8 + 16))(v51, v29, v7);
    sub_25B13E428(v20, v28);
    v30 = *(v8 + 8);
    v30(v20, v7);
    v30(v29, v7);
  }

  v31 = v52;
  ServiceKind.widgetCurrentCharacteristicType.getter(v52);
  if (v27(v31, 1, v7) == 1)
  {
    sub_25B13DCDC(v31);
  }

  else
  {
    v32 = v48;
    (*(v8 + 32))(v48, v31, v7);
    (*(v8 + 16))(v28, v32, v7);
    sub_25B13E428(v20, v28);
    v33 = *(v8 + 8);
    v33(v20, v7);
    v33(v32, v7);
  }

  v34 = ServiceKind.widgetDisplayCharacteristicType.getter();
  if (v34)
  {
    v35 = v28;
    v50 = v34;
    v36 = *(v34 + 16);
    v37 = v49;
    if (v36)
    {
      v38 = v20;
      v41 = *(v8 + 16);
      v40 = v8 + 16;
      v39 = v41;
      v42 = v50 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
      v52 = *(v40 + 56);
      v43 = (v40 - 8);
      do
      {
        v39(v37, v42, v7);
        v39(v35, v37, v7);
        sub_25B13E428(v38, v35);
        v44 = *v43;
        (*v43)(v38, v7);
        v44(v37, v7);
        v42 += v52;
        --v36;
      }

      while (v36);
    }
  }

  return v53;
}

uint64_t sub_25B13DCDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A578, &qword_25B165298);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ServiceKind.iconColorBase.getter()
{
  v33 = sub_25B1616A4();
  v1 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25B161884();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v35 = v0;
  sub_25B161674();
  (*(v4 + 104))(v9, *MEMORY[0x277D15FF0], v3);
  sub_25B13FBC0(&qword_27FA3A580, MEMORY[0x277D16028], MEMORY[0x277D16040]);
  sub_25B161C14();
  sub_25B161C14();
  if (v38 == v36 && v39 == v37)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_25B161FA4();
  }

  v13 = *(v4 + 8);
  v13(v9, v3);
  v13(v11, v3);

  if (v12 & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A588, &qword_25B1652A0), v14 = *(v1 + 72), v15 = (*(v1 + 80) + 32) & ~*(v1 + 80), v16 = 2 * v14, v17 = swift_allocObject(), *(v17 + 16) = xmmword_25B165280, v18 = v17 + v15, v19 = *MEMORY[0x277D15870], v20 = *(v1 + 104), v31 = v1, v21 = v33, v20(v18, v19, v33), v20((v18 + v14), *MEMORY[0x277D15888], v21), v22 = *MEMORY[0x277D158D0], v20((v18 + v16), v22, v21), LOBYTE(v16) = sub_25B114558(v35, v17), swift_setDeallocating(), v23 = v31, swift_arrayDestroy(), swift_deallocClassInstance(), (v16))
  {
    v24 = v32;
    v25 = v23;
    v26 = v33;
    v20(v32, v22, v33);
    v27 = v34;
    sub_25B161674();
    (*(v25 + 8))(v24, v26);
  }

  else
  {
    v27 = v34;
    sub_25B161674();
  }

  v28 = sub_25B161874();
  v13(v27, v3);
  return v28;
}

uint64_t sub_25B13E148(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25B161884();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25B13FBC0(&qword_27FA3A5A8, MEMORY[0x277D16028], MEMORY[0x277D16030]);
  v33 = a2;
  v11 = sub_25B161A94();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_25B13FBC0(&qword_27FA3A5B0, MEMORY[0x277D16028], MEMORY[0x277D16038]);
      v21 = sub_25B161AA4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_25B13EDC0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_25B13E428(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25B161894();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25B13FBC0(&qword_27FA3A590, MEMORY[0x277D16348], MEMORY[0x277D16350]);
  v33 = a2;
  v11 = sub_25B161A94();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_25B13FBC0(&qword_27FA3A598, MEMORY[0x277D16348], MEMORY[0x277D16360]);
      v21 = sub_25B161AA4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_25B13F088(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_25B13E708(uint64_t a1)
{
  v2 = v1;
  v36 = sub_25B161884();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A5B8, &unk_25B1652B8);
  result = sub_25B161E84();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_25B13FBC0(&qword_27FA3A5A8, MEMORY[0x277D16028], MEMORY[0x277D16030]);
      result = sub_25B161A94();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_25B13EA64(uint64_t a1)
{
  v2 = v1;
  v36 = sub_25B161894();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A5A0, &qword_25B1652B0);
  result = sub_25B161E84();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_25B13FBC0(&qword_27FA3A590, MEMORY[0x277D16348], MEMORY[0x277D16350]);
      result = sub_25B161A94();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_25B13EDC0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_25B161884();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25B13E708(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_25B13F350(MEMORY[0x277D16028], &qword_27FA3A5B8, &unk_25B1652B8);
      goto LABEL_12;
    }

    sub_25B13F588(v10 + 1);
  }

  v12 = *v3;
  sub_25B13FBC0(&qword_27FA3A5A8, MEMORY[0x277D16028], MEMORY[0x277D16030]);
  v13 = sub_25B161A94();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_25B13FBC0(&qword_27FA3A5B0, MEMORY[0x277D16028], MEMORY[0x277D16038]);
      v21 = sub_25B161AA4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25B161FC4();
  __break(1u);
  return result;
}

uint64_t sub_25B13F088(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_25B161894();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25B13EA64(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_25B13F350(MEMORY[0x277D16348], &qword_27FA3A5A0, &qword_25B1652B0);
      goto LABEL_12;
    }

    sub_25B13F8A4(v10 + 1);
  }

  v12 = *v3;
  sub_25B13FBC0(&qword_27FA3A590, MEMORY[0x277D16348], MEMORY[0x277D16350]);
  v13 = sub_25B161A94();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_25B13FBC0(&qword_27FA3A598, MEMORY[0x277D16348], MEMORY[0x277D16360]);
      v21 = sub_25B161AA4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25B161FC4();
  __break(1u);
  return result;
}

void *sub_25B13F350(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_25B161E74();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t sub_25B13F588(uint64_t a1)
{
  v2 = v1;
  v33 = sub_25B161884();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A5B8, &unk_25B1652B8);
  v7 = sub_25B161E84();
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_25B13FBC0(&qword_27FA3A5A8, MEMORY[0x277D16028], MEMORY[0x277D16030]);
      result = sub_25B161A94();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_25B13F8A4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_25B161894();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A5A0, &qword_25B1652B0);
  v7 = sub_25B161E84();
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_25B13FBC0(&qword_27FA3A590, MEMORY[0x277D16348], MEMORY[0x277D16350]);
      result = sub_25B161A94();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_25B13FBC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t NHOActionSetIntent.home.getter()
{
  sub_25B161274();
  sub_25B161144();
}

uint64_t NHOActionSetIntent.home.setter(__int128 *a1)
{
  sub_25B161274();
  sub_25B161154();
}

char *NHOActionSetIntent.__allocating_init(homeID:homeName:actionSetID:actionSetName:icon:iconTintColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = sub_25B161414();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = [objc_allocWithZone(v12) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  v15 = v14;
  sub_25B161264();
  sub_25B161264();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  sub_25B161274();
  sub_25B161154();

  sub_25B161264();
  sub_25B161264();
  sub_25B161264();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  sub_25B161104();
  sub_25B161274();
  sub_25B161154();

  sub_25B161274();
  sub_25B161154();

  sub_25B161274();
  sub_25B161154();

  sub_25B161274();
  sub_25B161154();

  sub_25B161274();
  sub_25B161154();

  sub_25B161274();
  sub_25B161154();

  sub_25B161274();
  sub_25B161154();

  sub_25B161274();
  sub_25B161154();

  return v15;
}

uint64_t sub_25B1400C8()
{
  v0 = sub_25B161414();
  __swift_allocate_value_buffer(v0, qword_27FA3A5C0);
  __swift_project_value_buffer(v0, qword_27FA3A5C0);
  return sub_25B1613E4();
}

uint64_t (*static NHOActionSetIntent.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FA39B58 != -1)
  {
    swift_once();
  }

  v1 = sub_25B161414();
  __swift_project_value_buffer(v1, qword_27FA3A5C0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25B14022C()
{
  v0 = sub_25B1611D4();
  __swift_allocate_value_buffer(v0, qword_27FA3A5D8);
  __swift_project_value_buffer(v0, qword_27FA3A5D8);
  return sub_25B1611C4();
}

uint64_t (*static NHOActionSetIntent.description.modify(uint64_t a1))(void)
{
  if (qword_27FA39B60 != -1)
  {
    swift_once();
  }

  v1 = sub_25B1611D4();
  __swift_project_value_buffer(v1, qword_27FA3A5D8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*NHOActionSetIntent.homeID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__homeID);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOActionSetIntent.homeName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__homeName);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOActionSetIntent.actionSetID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__actionSetID);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOActionSetIntent.actionSetName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__actionSetName);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

id sub_25B140660(char *a1, uint64_t a2, void *a3)
{
  v3 = a1;
  sub_25B161274();
  sub_25B161144();

  v4 = sub_25B161B24();

  return v4;
}

void sub_25B1406E8(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_25B161B34();
  v5 = a1;
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOActionSetIntent.icon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__icon);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t NHOActionSetIntent.useHomeKitRecommendations.getter()
{
  sub_25B161274();
  sub_25B161144();

  return v1;
}

uint64_t NHOActionSetIntent.useHomeKitRecommendations.setter(char a1)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t sub_25B140938@<X0>(_BYTE *a2@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  *a2 = v4;
  return result;
}

uint64_t sub_25B140990(char *a1, void *a2)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOActionSetIntent.useHomeKitRecommendations.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__useHomeKitRecommendations);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B11E120;
}

uint64_t (*NHOActionSetIntent.requestConfirmationText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__requestConfirmationText);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOActionSetIntent.requestConfirmationIcon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__requestConfirmationIcon);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t NHOActionSetIntent.isSmartStack.getter()
{
  sub_25B161274();
  sub_25B161144();

  return v1;
}

uint64_t sub_25B140C28@<X0>(_BYTE *a2@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  *a2 = v4;
  return result;
}

uint64_t sub_25B140C80(char *a1, void *a2)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t NHOActionSetIntent.isSmartStack.setter(char a1)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOActionSetIntent.isSmartStack.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__isSmartStack);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOActionSetIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__home);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t NHOActionSetIntent.accessoriesAndScenes.getter()
{
  sub_25B161274();
  sub_25B161144();
}

double sub_25B140EA0@<D0>(uint64_t a2@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_25B140F00(uint64_t *a1, void *a2)
{
  sub_25B12908C(*a1, a1[1], a1[2]);
  sub_25B161274();
  sub_25B161154();
}

uint64_t NHOActionSetIntent.accessoriesAndScenes.setter(__int128 *a1)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOActionSetIntent.accessoriesAndScenes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__accessoriesAndScenes);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t sub_25B141064@<X0>(void *a2@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_25B1410BC(uint64_t *a1, void *a2)
{
  sub_25B161264();
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOActionSetIntent.iconTintColor.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOActionSetIntent__iconTintColor);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t static NHOActionSetIntent.parameterSummary.getter()
{
  sub_25B142FF0(&qword_27FA3A650, &protocol conformance descriptor for NHOActionSetIntent);

  return sub_25B161284();
}

uint64_t sub_25B14122C()
{
  swift_getKeyPath();
  sub_25B142FF0(&qword_27FA3A650, &protocol conformance descriptor for NHOActionSetIntent);
  v0 = sub_25B161274();

  swift_getKeyPath();
  sub_25B161274();
  v1 = sub_25B161274();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25B163820;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  type metadata accessor for NHOActionSetIntent();
  sub_25B161274();
  v3 = sub_25B161264();

  return v3;
}

uint64_t sub_25B14136C@<X0>(uint64_t *a2@<X8>)
{
  sub_25B161274();
  v3 = sub_25B161164();

  *a2 = v3;
  return result;
}

id NHOActionSetIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *NHOActionSetIntent.init()()
{
  ObjectType = swift_getObjectType();
  v0 = sub_25B161584();
  MEMORY[0x28223BE20](v0 - 8);
  v101 = &v94 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_25B1613F4();
  v99 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v100 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25B161B14();
  MEMORY[0x28223BE20](v3 - 8);
  v98 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v104 = &v94 - v6;
  v125 = sub_25B161294();
  v7 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v105 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v94 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE8, &unk_25B163AE0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v94 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v94 - v19;
  v21 = sub_25B161414();
  v123 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR___NHOActionSetIntent__homeID;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A158, &qword_25B163B08);
  sub_25B1613E4();
  v26 = *(v22 + 56);
  v118 = v22 + 56;
  v119 = v26;
  v26(v20, 1, 1, v21);
  v27 = sub_25B161AB4();
  v128._countAndFlagsBits = 0;
  v128._object = 0;
  v117 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v113 = v28 + 56;
  v114 = v29;
  v29(v17, 1, 1, v27);
  v122 = sub_25B1610C4();
  v30 = *(v122 - 8);
  v121 = *(v30 + 56);
  v126 = v30 + 56;
  v109 = v14;
  v121(v14, 1, 1, v122);
  v116 = *MEMORY[0x277CBA308];
  v31 = *(v7 + 104);
  v124 = v7 + 104;
  v111 = v9;
  v32 = v125;
  v31(v9);
  v115 = v31;
  v110 = v24;
  v33 = sub_25B161194();
  v34 = v120;
  *&v120[v25] = v33;
  v103 = OBJC_IVAR___NHOActionSetIntent__homeName;
  sub_25B1613E4();
  v119(v20, 1, 1, v123);
  v128._countAndFlagsBits = 0;
  v128._object = 0;
  v114(v17, 1, 1, v117);
  v121(v109, 1, 1, v122);
  v35 = v111;
  v36 = v116;
  (v31)(v111, v116, v32);
  *&v34[v103] = sub_25B161194();
  v103 = OBJC_IVAR___NHOActionSetIntent__actionSetID;
  sub_25B1613E4();
  v37 = v119;
  v119(v20, 1, 1, v123);
  v128._countAndFlagsBits = 0;
  v128._object = 0;
  v38 = v17;
  v39 = v17;
  v40 = v114;
  v114(v39, 1, 1, v117);
  v41 = v109;
  v121(v109, 1, 1, v122);
  v42 = v35;
  v43 = v115;
  (v115)(v42, v36, v125);
  v44 = v38;
  v45 = v41;
  *&v120[v103] = sub_25B161194();
  v103 = OBJC_IVAR___NHOActionSetIntent__actionSetName;
  sub_25B1613E4();
  v46 = v20;
  v37(v20, 1, 1, v123);
  v128._countAndFlagsBits = 0;
  v128._object = 0;
  v40(v44, 1, 1, v117);
  v47 = v45;
  v48 = v122;
  v121(v47, 1, 1, v122);
  (v43)(v111, v116, v125);
  v108 = v20;
  v49 = sub_25B161194();
  v50 = v120;
  *&v120[v103] = v49;
  v103 = OBJC_IVAR___NHOActionSetIntent__icon;
  sub_25B1613E4();
  v51 = v46;
  v52 = v123;
  v53 = v119;
  v119(v51, 1, 1, v123);
  v128._countAndFlagsBits = 0;
  v128._object = 0;
  v106 = v44;
  v114(v44, 1, 1, v117);
  v54 = v109;
  v55 = v121;
  v121(v109, 1, 1, v48);
  v56 = v116;
  (v115)(v111, v116, v125);
  v57 = v108;
  *&v50[v103] = sub_25B161194();
  v103 = OBJC_IVAR___NHOActionSetIntent__useHomeKitRecommendations;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED0, &unk_25B163860);
  sub_25B1613E4();
  v53(v57, 1, 1, v52);
  LOBYTE(v128._countAndFlagsBits) = 0;
  v96 = sub_25B161CB4();
  v58 = *(v96 - 8);
  v95 = *(v58 + 56);
  v97 = (v58 + 56);
  v95(v104, 1, 1, v96);
  v59 = v122;
  v55(v54, 1, 1, v122);
  v60 = v111;
  (v115)(v111, v56, v125);
  *&v120[v103] = sub_25B1611A4();
  v94 = OBJC_IVAR___NHOActionSetIntent__requestConfirmationText;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF0, &qword_25B163AF0);
  sub_25B1613E4();
  v61 = v57;
  v62 = v123;
  v63 = v119;
  v119(v61, 1, 1, v123);
  v128._countAndFlagsBits = 0;
  v128._object = 0;
  v64 = v106;
  v114(v106, 1, 1, v117);
  v121(v54, 1, 1, v59);
  v65 = v125;
  (v115)(v60, v116, v125);
  *&v120[v94] = sub_25B161194();
  v94 = OBJC_IVAR___NHOActionSetIntent__requestConfirmationIcon;
  sub_25B1613E4();
  v66 = v108;
  v63(v108, 1, 1, v62);
  v128._countAndFlagsBits = 0;
  v128._object = 0;
  v114(v64, 1, 1, v117);
  v67 = v109;
  v68 = v121;
  v121(v109, 1, 1, v122);
  v69 = v116;
  v70 = v65;
  v71 = v115;
  (v115)(v60, v116, v70);
  v72 = sub_25B161194();
  v73 = v120;
  *&v120[v94] = v72;
  v103 = OBJC_IVAR___NHOActionSetIntent__isSmartStack;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B1613E4();
  v119(v66, 1, 1, v123);
  LOBYTE(v128._countAndFlagsBits) = 2;
  v95(v104, 1, 1, v96);
  v68(v67, 1, 1, v122);
  v71(v60, v69, v125);
  *&v73[v103] = sub_25B1611A4();
  v103 = OBJC_IVAR___NHOActionSetIntent__home;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v97 = "HOME_ACCESSORY_ENTITY_TITLE";
  v74 = v107;
  v96 = __swift_project_value_buffer(v107, qword_27FA3E770);
  v99 = *(v99 + 16);
  v75 = v100;
  (v99)(v100, v96, v74);
  sub_25B161574();
  sub_25B161424();
  v119(v66, 1, 1, v123);
  v128._countAndFlagsBits = 0;
  v128._object = 0;
  v76 = v121;
  v77 = v122;
  v121(v67, 1, 1, v122);
  v76(v105, 1, 1, v77);
  (v115)(v60, v116, v125);
  sub_25B120304();
  v78 = v108;
  *&v120[v103] = sub_25B161184();
  v104 = OBJC_IVAR___NHOActionSetIntent__accessoriesAndScenes;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A250, &unk_25B164140);
  sub_25B161AC4();
  (v99)(v75, v96, v107);
  sub_25B161574();
  sub_25B161424();
  v79 = v78;
  v119(v78, 1, 1, v123);
  v128._countAndFlagsBits = 0;
  v128._object = 0;
  v129 = 0;
  v81 = v121;
  v80 = v122;
  v121(v67, 1, 1, v122);
  v81(v105, 1, 1, v80);
  v82 = v116;
  v83 = v125;
  v84 = v115;
  (v115)(v60, v116, v125);
  sub_25B1282D4();
  v85 = v79;
  v86 = sub_25B161184();
  v87 = v120;
  *&v104[v120] = v86;
  v107 = OBJC_IVAR___NHOActionSetIntent__iconTintColor;
  sub_25B1613E4();
  v119(v85, 1, 1, v123);
  v128._countAndFlagsBits = 0;
  v128._object = 0;
  v114(v106, 1, 1, v117);
  v121(v67, 1, 1, v122);
  v84(v60, v82, v83);
  *&v87[v107] = sub_25B161194();
  v127.receiver = v87;
  v127.super_class = ObjectType;
  v88 = objc_msgSendSuper2(&v127, sel_init);
  v128._countAndFlagsBits = 0xD000000000000024;
  v128._object = 0x800000025B167470;
  v89 = v88;
  sub_25B161274();
  sub_25B161154();

  v128._countAndFlagsBits = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD00000000000001CLL, 0x800000025B1674A0);
  v128._object = v90;
  sub_25B161274();
  sub_25B161154();

  v128._countAndFlagsBits = 0xD000000000000024;
  v128._object = 0x800000025B167470;
  sub_25B161274();
  sub_25B161154();

  v128._countAndFlagsBits = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD000000000000021, 0x800000025B1674C0);
  v128._object = v91;
  sub_25B161274();
  sub_25B161154();

  v128._countAndFlagsBits = 0x78616D2E6E7573;
  v128._object = 0xE700000000000000;
  sub_25B161274();
  sub_25B161154();

  sub_25B161A34();
  v92 = Color.toHexString()();

  v128 = v92;
  sub_25B161274();
  sub_25B161154();

  LOBYTE(v128._countAndFlagsBits) = 0;
  sub_25B161274();
  sub_25B161154();

  return v89;
}

id NHOActionSetIntent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B142958@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B58 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A5C0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25B142A3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return NHOActionSetIntent.perform()(a1);
}

uint64_t sub_25B142AD4()
{
  v1 = sub_25B142FF0(&qword_27FA3A650, &protocol conformance descriptor for NHOActionSetIntent);

  return MEMORY[0x28210B538](v0, v1);
}

uint64_t NHOActionSetIntent.configuredHomeID.getter()
{
  sub_25B161274();
  sub_25B161144();

  if (v2)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v2, v3);
    sub_25B1610F4();
    sub_25B120358(v2, v3);
    return v1;
  }

  else
  {
    sub_25B120358(0, v3);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t NHOActionSetIntent.configuredHomeName.getter()
{
  sub_25B161274();
  sub_25B161144();

  if (v2)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v2, v3);
    sub_25B1610F4();
    sub_25B120358(v2, v3);
    return v1;
  }

  else
  {
    sub_25B120358(0, v3);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t NHOActionSetIntent.configuredActionSetName.getter()
{
  sub_25B161274();
  sub_25B161144();

  if (v2)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B128C68(v2, v3, v4);
    sub_25B1610F4();
    sub_25B128C68(v2, v3, v4);
    return v1;
  }

  else
  {
    sub_25B128C68(0, v3, v4);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t NHOActionSetIntent.configuredIcon.getter()
{
  sub_25B161274();
  sub_25B161144();

  if (v2)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B128C68(v2, v3, v4);
    sub_25B1610F4();
    sub_25B128C68(v2, v3, v4);
    return v1;
  }

  else
  {
    sub_25B128C68(0, v3, v4);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t _s15NanoHomeIntents18NHOActionSetIntentC016configuredActionE2IDSSvg_0()
{
  sub_25B161274();
  sub_25B161144();

  if (v2)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B128C68(v2, v3, v4);
    sub_25B1610F4();
    sub_25B128C68(v2, v3, v4);
    return v1;
  }

  else
  {
    sub_25B128C68(0, v3, v4);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t sub_25B142FF0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NHOActionSetIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id NHOIntentConstants.WidgetKind.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NHOIntentConstants.WidgetKind.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NHOIntentConstants.WidgetKind();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NHOIntentConstants.WidgetKind.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NHOIntentConstants.WidgetKind();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id NHOIntentConstants.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NHOIntentConstants.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B1438EC()
{
  v0 = sub_25B161584();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_25B1613F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B161B14();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_25B161414();
  __swift_allocate_value_buffer(v6, qword_27FA3A678);
  __swift_project_value_buffer(v6, qword_27FA3A678);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_27FA3E770);
  (*(v2 + 16))(v4, v7, v1);
  sub_25B161574();
  return sub_25B161424();
}

uint64_t static AccessoryControlIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B68 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A678);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t (*AccessoryControlIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t sub_25B143C7C(uint64_t *a1, uint64_t *a2)
{
  sub_25B145AA0(*a1);
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*AccessoryControlIntent.accessoriesAndScenes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t sub_25B143E28(char *a1, uint64_t *a2)
{
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*AccessoryControlIntent.useHomeKitRecommendations.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B161134();
  return sub_25B10BAFC;
}

uint64_t (*AccessoryControlIntent.onlyShowControlAccessories.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t static AccessoryControlIntent.parameterSummary.getter()
{
  sub_25B144160();

  return sub_25B161284();
}

uint64_t sub_25B14406C()
{
  swift_getKeyPath();
  sub_25B144160();
  v0 = sub_25B161274();

  swift_getKeyPath();
  sub_25B161274();
  v1 = sub_25B161274();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25B163820;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  sub_25B161274();
  v3 = sub_25B161264();

  return v3;
}

unint64_t sub_25B144160()
{
  result = qword_27FA3A690;
  if (!qword_27FA3A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A690);
  }

  return result;
}

uint64_t AccessoryControlIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v67 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  MEMORY[0x28223BE20](v1 - 8);
  v51 = &v45 - v2;
  v3 = sub_25B161294();
  v4 = *(v3 - 8);
  v70 = v3;
  v71 = v4;
  MEMORY[0x28223BE20](v3);
  v55 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v10 - 8);
  v49 = &v45 - v11;
  v12 = sub_25B161584();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_25B1613F4();
  v69 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25B161B14();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_25B161414();
  v20 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v64 = "HOME_ACCESSORY_ENTITY_TITLE";
  v21 = v65;
  v59 = __swift_project_value_buffer(v65, qword_27FA3E770);
  v22 = *(v69 + 16);
  v69 += 16;
  v53 = v22;
  v22(v16, v59, v21);
  sub_25B161574();
  v57 = v14;
  v52 = v19;
  sub_25B161424();
  v23 = *(v20 + 56);
  v56 = v20 + 56;
  v62 = v23;
  v24 = v49;
  v23(v49, 1, 1, v68);
  v25 = sub_25B1610C4();
  v61 = v25;
  v72 = 0uLL;
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v60 = v27;
  v58 = v26 + 56;
  v27(v66, 1, 1, v25);
  v28 = v50;
  v27(v50, 1, 1, v25);
  v54 = *MEMORY[0x277CBA308];
  v29 = *(v71 + 104);
  v71 += 104;
  v63 = v29;
  (v29)(v55);
  sub_25B120304();
  v30 = v24;
  *v67 = sub_25B161184();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A698, &unk_25B1654E0);
  sub_25B161AC4();
  v46 = v16;
  v31 = v65;
  v32 = v53;
  v53(v16, v59, v65);
  sub_25B161574();
  sub_25B161424();
  v62(v24, 1, 1, v68);
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v34 = v60;
  v33 = v61;
  v60(v66, 1, 1, v61);
  v34(v28, 1, 1, v33);
  v35 = v55;
  v63(v55, v54, v70);
  sub_25B11ADCC();
  v36 = sub_25B161184();
  v37 = v67;
  v67[1] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B161AC4();
  v38 = v46;
  v32(v46, v59, v31);
  sub_25B161574();
  v39 = v38;
  sub_25B161424();
  v62(v30, 1, 1, v68);
  LOBYTE(v72) = 2;
  v47 = sub_25B161CB4();
  v40 = *(v47 - 8);
  v48 = *(v40 + 56);
  v50 = (v40 + 56);
  v41 = v51;
  v48(v51, 1, 1, v47);
  v42 = v66;
  v60(v66, 1, 1, v61);
  v43 = v54;
  v63(v35, v54, v70);
  v37[2] = sub_25B1611A4();
  sub_25B161AC4();
  v53(v39, v59, v65);
  sub_25B161574();
  sub_25B161424();
  v62(v30, 1, 1, v68);
  LOBYTE(v72) = 1;
  v48(v41, 1, 1, v47);
  v60(v42, 1, 1, v61);
  v63(v35, v43, v70);
  result = sub_25B1611A4();
  v67[3] = result;
  return result;
}

uint64_t AccessoryControlIntent.init(home:accessoriesAndScenes:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v89 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v83 = &v77 - v6;
  v7 = sub_25B161294();
  v8 = *(v7 - 8);
  v111 = v7;
  v112 = v8;
  MEMORY[0x28223BE20](v7);
  v107 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v96 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v95 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v77 - v15;
  v17 = sub_25B161584();
  MEMORY[0x28223BE20](v17 - 8);
  v106 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25B1613F4();
  v109 = *(v19 - 8);
  v110 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25B161B14();
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_25B161414();
  v25 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v26 = a1[1];
  v88 = *a1;
  v87 = v26;
  v27 = a2[1];
  v86 = *a2;
  v90 = v27;
  v28 = a2[3];
  v91 = a2[2];
  v85 = v28;
  v84 = a2[4];
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v29 = v110;
  v92 = __swift_project_value_buffer(v110, qword_27FA3E770);
  v30 = *(v109 + 16);
  v109 += 16;
  v102 = v30;
  v30(v21, v92, v29);
  sub_25B161574();
  v98 = v24;
  sub_25B161424();
  v105 = *(v25 + 56);
  v101 = v25 + 56;
  v105(v16, 1, 1, v108);
  v31 = v16;
  v32 = sub_25B1610C4();
  v103 = v32;
  v114 = 0uLL;
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v100 = v34;
  v104 = v33 + 56;
  v34(v95, 1, 1, v32);
  v35 = v96;
  v34(v96, 1, 1, v32);
  v99 = *MEMORY[0x277CBA308];
  v36 = *(v112 + 104);
  v112 += 104;
  v94 = v36;
  v36(v107);
  sub_25B120304();
  v97 = sub_25B161184();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A698, &unk_25B1654E0);
  v93 = "HOME_ACCESSORY_ENTITY_TITLE";
  sub_25B161AC4();
  v78 = v21;
  v37 = v21;
  v38 = v92;
  v102(v37, v92, v110);
  sub_25B161574();
  sub_25B161424();
  v39 = v108;
  v105(v31, 1, 1, v108);
  v116 = 0;
  v114 = 0u;
  v115 = 0u;
  v40 = v95;
  v41 = v103;
  v42 = v100;
  v100(v95, 1, 1, v103);
  v42(v35, 1, 1, v41);
  v94(v107, v99, v111);
  sub_25B11ADCC();
  v43 = v40;
  v96 = sub_25B161184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B161AC4();
  v44 = v78;
  v102(v78, v38, v110);
  sub_25B161574();
  v45 = v44;
  sub_25B161424();
  v105(v31, 1, 1, v39);
  LOBYTE(v114) = 2;
  v79 = sub_25B161CB4();
  v46 = *(v79 - 8);
  v80 = *(v46 + 56);
  v47 = v107;
  v81 = v46 + 56;
  v48 = v83;
  v80(v83, 1, 1, v79);
  v100(v43, 1, 1, v103);
  v49 = v94;
  v94(v47, v99, v111);
  v82 = sub_25B1611A4();
  sub_25B161AC4();
  v102(v45, v92, v110);
  sub_25B161574();
  sub_25B161424();
  v105(v31, 1, 1, v108);
  LOBYTE(v114) = 1;
  v80(v48, 1, 1, v79);
  v100(v43, 1, 1, v103);
  v49(v47, v99, v111);
  v50 = sub_25B1611A4();
  v51 = v88;
  v52 = v87;
  *&v114 = v88;
  *(&v114 + 1) = v87;
  sub_25B11B1C8(v88, v87);
  sub_25B161154();
  v53 = v86;
  v54 = v90;
  *&v114 = v86;
  *(&v114 + 1) = v90;
  v55 = v91;
  v56 = v85;
  *&v115 = v91;
  *(&v115 + 1) = v85;
  v57 = v84;
  v116 = v84;
  sub_25B145AA0(v86);
  sub_25B161154();
  LOBYTE(v114) = 1;
  v112 = v50;
  sub_25B161154();
  if (qword_27FA39B08 != -1)
  {
    swift_once();
  }

  v58 = sub_25B161A14();
  __swift_project_value_buffer(v58, qword_27FA3A0A0);
  sub_25B11B1C8(v51, v52);
  sub_25B145AA0(v53);
  v59 = sub_25B1619F4();
  v60 = sub_25B161D94();
  sub_25B120358(v51, v52);
  sub_25B11A98C(v53, v54, v55, v56, v57);
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v113 = v62;
    *v61 = 136315394;
    if (v51)
    {
      v63 = v52;
      v64 = v53;
      sub_25B1610F4();
      sub_25B120358(v51, v63);
      v66 = *(&v114 + 1);
      v65 = v114;
    }

    else
    {
      v64 = v53;
      v66 = 0xE300000000000000;
      v65 = 7104878;
    }

    v67 = sub_25B108480(v65, v66, &v113);

    *(v61 + 4) = v67;
    *(v61 + 12) = 2080;
    if (v64)
    {
      v68 = v90;
      sub_25B1610F4();
      sub_25B11A98C(v64, v68, v91, v56, v57);
      v70 = *(&v114 + 1);
      v69 = v114;
    }

    else
    {
      v70 = 0xE300000000000000;
      v69 = 7104878;
    }

    v71 = sub_25B108480(v69, v70, &v113);

    *(v61 + 14) = v71;
    _os_log_impl(&dword_25B105000, v59, v60, "AccessoryControlIntent initialized with home %s, accessory %s", v61, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v62, -1, -1);
    MEMORY[0x25F862BF0](v61, -1, -1);
  }

  else
  {

    sub_25B120358(v51, v52);
    sub_25B11A98C(v53, v54, v55, v56, v57);
  }

  LOBYTE(v114) = 0;
  v72 = v82;
  result = sub_25B161154();
  v74 = v89;
  v75 = v96;
  *v89 = v97;
  v74[1] = v75;
  v76 = v112;
  v74[2] = v72;
  v74[3] = v76;
  return result;
}

uint64_t sub_25B145994@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B68 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A678);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25B145A64(uint64_t a1)
{
  v2 = sub_25B144160();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_25B145AA0(uint64_t result)
{
  if (result)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();

    return sub_25B161274();
  }

  return result;
}

unint64_t sub_25B145B14()
{
  result = qword_27FA3A6A0;
  if (!qword_27FA3A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A6A0);
  }

  return result;
}

unint64_t sub_25B145B6C()
{
  result = qword_27FA3A6A8;
  if (!qword_27FA3A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A6A8);
  }

  return result;
}

double sub_25B145C00@<D0>(uint64_t a2@<X8>)
{
  sub_25B161144();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

void *sub_25B145C48@<X0>(_BYTE *a2@<X8>)
{
  result = sub_25B161144();
  *a2 = v4;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25B145C9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B145CE4(uint64_t result, int a2, int a3)
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

uint64_t sub_25B145DC0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_25B161164();
  *a2 = result;
  return result;
}

char *ElectricityUsageIntent.__allocating_init(homeIdentifier:homeName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25B161414();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = [objc_allocWithZone(v4) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  v7 = v6;
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  sub_25B161274();
  sub_25B161154();

  return v7;
}

uint64_t sub_25B145F70()
{
  v0 = sub_25B161414();
  __swift_allocate_value_buffer(v0, qword_27FA3A6C0);
  __swift_project_value_buffer(v0, qword_27FA3A6C0);
  return sub_25B1613E4();
}

uint64_t (*static ElectricityUsageIntent.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FA39B70 != -1)
  {
    swift_once();
  }

  v1 = sub_25B161414();
  __swift_project_value_buffer(v1, qword_27FA3A6C0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25B1460D8()
{
  v0 = sub_25B1611D4();
  __swift_allocate_value_buffer(v0, qword_27FA3A6D8);
  __swift_project_value_buffer(v0, qword_27FA3A6D8);
  return sub_25B1611C4();
}

uint64_t (*static ElectricityUsageIntent.description.modify(uint64_t a1))(void)
{
  if (qword_27FA39B78 != -1)
  {
    swift_once();
  }

  v1 = sub_25B1611D4();
  __swift_project_value_buffer(v1, qword_27FA3A6D8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*ElectricityUsageIntent.homeID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOElectricityUsageIntent__homeID);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*ElectricityUsageIntent.homeName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOElectricityUsageIntent__homeName);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t ElectricityUsageIntent.home.getter()
{
  sub_25B161274();
  sub_25B161144();
}

double sub_25B1463F0@<D0>(_OWORD *a2@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_25B146448(uint64_t *a1, void *a2)
{
  sub_25B11B1C8(*a1, a1[1]);
  sub_25B161274();
  sub_25B161154();
}

uint64_t ElectricityUsageIntent.home.setter(__int128 *a1)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*ElectricityUsageIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOElectricityUsageIntent__home);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B11E120;
}

uint64_t static ElectricityUsageIntent.parameterSummary.getter()
{
  sub_25B147710(&qword_27FA3A708, &protocol conformance descriptor for ElectricityUsageIntent);

  return sub_25B161284();
}

uint64_t sub_25B146604()
{
  swift_getKeyPath();
  sub_25B147710(&qword_27FA3A708, &protocol conformance descriptor for ElectricityUsageIntent);
  v0 = sub_25B161274();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25B163810;
  *(v1 + 32) = v0;
  type metadata accessor for ElectricityUsageIntent();
  sub_25B161274();
  v2 = sub_25B161264();

  return v2;
}

uint64_t sub_25B146704@<X0>(uint64_t *a2@<X8>)
{
  sub_25B161274();
  v3 = sub_25B161164();

  *a2 = v3;
  return result;
}

id ElectricityUsageIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ElectricityUsageIntent.init()()
{
  ObjectType = swift_getObjectType();
  v0 = sub_25B161584();
  MEMORY[0x28223BE20](v0 - 8);
  v48 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_25B1613F4();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25B161B14();
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_25B161294();
  v5 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v44 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE8, &unk_25B163AE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v37 - v17;
  v19 = sub_25B161414();
  v54 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v43 = OBJC_IVAR___NHOElectricityUsageIntent__homeID;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF0, &qword_25B163AF0);
  sub_25B1613E4();
  v21 = *(v20 + 56);
  v52 = v20 + 56;
  v53 = v21;
  v21(v18, 1, 1, v19);
  v39 = sub_25B161AB4();
  v58 = 0;
  v59 = 0;
  v22 = *(v39 - 8);
  v38 = *(v22 + 56);
  v42 = (v22 + 56);
  v23 = v15;
  v38(v15, 1, 1, v39);
  v24 = sub_25B1610C4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v50 = v25 + 56;
  v51 = v26;
  v26(v12, 1, 1, v24);
  v27 = *MEMORY[0x277CBA308];
  v28 = *(v5 + 104);
  v55 = v5 + 104;
  v28(v7, v27, v56);
  v29 = v12;
  v30 = v7;
  v31 = sub_25B161194();
  v32 = v40;
  *&v40[v43] = v31;
  v37 = OBJC_IVAR___NHOElectricityUsageIntent__homeName;
  sub_25B1613E4();
  v53(v18, 1, 1, v54);
  v58 = 0;
  v59 = 0;
  v38(v23, 1, 1, v39);
  v51(v29, 1, 1, v24);
  LODWORD(v39) = v27;
  v38 = v28;
  v28(v30, v27, v56);
  v42 = v18;
  v43 = v30;
  *&v32[v37] = sub_25B161194();
  v37 = OBJC_IVAR___NHOElectricityUsageIntent__home;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v33 = v47;
  v34 = __swift_project_value_buffer(v47, qword_27FA3E770);
  (*(v45 + 16))(v46, v34, v33);
  sub_25B161574();
  sub_25B161424();
  v53(v42, 1, 1, v54);
  v58 = 0;
  v59 = 0;
  v35 = v51;
  v51(v29, 1, 1, v24);
  v35(v44, 1, 1, v24);
  (v38)(v43, v39, v56);
  sub_25B120304();
  *&v32[v37] = sub_25B161184();
  v57.receiver = v32;
  v57.super_class = ObjectType;
  return objc_msgSendSuper2(&v57, sel_init);
}

char *ElectricityUsageIntent.__allocating_init(homeIdentifier:)(uint64_t a1, unint64_t a2)
{
  v3 = sub_25B161414();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = [objc_allocWithZone(v2) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  v5 = v4;
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  sub_25B161274();
  sub_25B161154();

  return v5;
}

id ElectricityUsageIntent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B147120@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B70 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A6C0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25B147204(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_25B147710(&qword_27FA3A730, "!;\n'HP");
  *v4 = v2;
  v4[1] = sub_25B11FFE8;

  return MEMORY[0x28210C3E0](a2, v5);
}

uint64_t sub_25B1472CC()
{
  v1 = sub_25B147710(&qword_27FA3A708, &protocol conformance descriptor for ElectricityUsageIntent);

  return MEMORY[0x28210B538](v0, v1);
}

uint64_t ElectricityUsageIntent.configuredHomeID.getter()
{
  sub_25B161274();
  sub_25B161144();

  if (v2)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v2, v3);
    sub_25B1610F4();
    sub_25B120358(v2, v3);
    return v1;
  }

  else
  {
    sub_25B120358(0, v3);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t ElectricityUsageIntent.configuredHomeName.getter()
{
  sub_25B161274();
  sub_25B161144();

  if (v2)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v2, v3);
    sub_25B1610F4();
    sub_25B120358(v2, v3);
    return v1;
  }

  else
  {
    sub_25B120358(0, v3);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

unint64_t sub_25B1476AC()
{
  result = qword_27FA3A720;
  if (!qword_27FA3A720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA3A728, &qword_25B165818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A720);
  }

  return result;
}

uint64_t sub_25B147710(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ElectricityUsageIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *HMAccessory.serviceGroup.getter()
{
  v1 = [v0 home];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 serviceGroups];

    sub_25B132284(0, &qword_27FA3A470, 0x277CD1D98);
    v4 = sub_25B161C64();

    v5 = [v0 services];
    v30 = sub_25B132284(0, &qword_27FA39E58, 0x277CD1D90);
    v6 = sub_25B161C64();

    v7 = v6;
    if (v6 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v7 = v20)
    {
      if (v4 >> 62)
      {
LABEL_33:
        v21 = v7;
        v29 = v4 & 0xFFFFFFFFFFFFFF8;
        v31 = sub_25B161E54();
        v7 = v21;
      }

      else
      {
        v29 = v4 & 0xFFFFFFFFFFFFFF8;
        v31 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = 0;
      v26 = v7;
      v27 = v7 & 0xC000000000000001;
      v23 = v7 + 32;
      v24 = v7 & 0xFFFFFFFFFFFFFF8;
      v25 = i;
      while (1)
      {
        if (v27)
        {
          v7 = MEMORY[0x25F862410](v9, v26);
        }

        else
        {
          if (v9 >= *(v24 + 16))
          {
            __break(1u);
            goto LABEL_33;
          }

          v7 = *(v23 + 8 * v9);
        }

        v10 = v7;
        v11 = __OFADD__(v9, 1);
        v12 = v9 + 1;
        if (v11)
        {
          goto LABEL_29;
        }

        v28 = v12;
        if (v31)
        {
          break;
        }

LABEL_7:

        i = v25;
        v9 = v28;
        if (v28 == v25)
        {
          goto LABEL_24;
        }
      }

      v13 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x25F862410](v13, v4);
        }

        else
        {
          if (v13 >= *(v29 + 16))
          {
            goto LABEL_28;
          }

          v7 = *(v4 + 8 * v13 + 32);
        }

        v14 = v7;
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v16 = [v7 services];
        v17 = sub_25B161C64();

        v32 = v10;
        MEMORY[0x28223BE20](v18);
        v22[2] = &v32;
        LOBYTE(v16) = sub_25B130E80(sub_25B1491D4, v22, v17);

        if (v16)
        {

          return v14;
        }

        ++v13;
        if (v15 == v31)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v20 = v7;
      i = sub_25B161E54();
    }

LABEL_24:
  }

  return 0;
}

uint64_t HMAccessory.widgetSupportedServiceKind()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B1616A4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v83 = &v76[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v76[-v8];
  MEMORY[0x28223BE20](v7);
  v84 = &v76[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v76[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v76[-v15];
  v17 = *(v4 + 56);
  v17(&v76[-v15], 1, 1, v3);
  v80 = v1;
  v18 = HMAccessory.primaryService()();
  if (!v18)
  {
    sub_25B11D9B8(v16);
    return v17(a1, 1, 1, v3);
  }

  v19 = v18;
  v79 = v17;
  v81 = a1;
  v82 = v16;
  sub_25B161E04();
  v20 = *(v4 + 48);
  if (v20(v14, 1, v3) == 1)
  {
    v21 = v84;
    sub_25B161DD4();
    if (v20(v14, 1, v3) != 1)
    {
      sub_25B11D9B8(v14);
    }
  }

  else
  {
    v21 = v84;
    (*(v4 + 32))(v84, v14, v3);
  }

  (*(v4 + 16))(v9, v21, v3);
  v23 = (*(v4 + 88))(v9, v3);
  v24 = *MEMORY[0x277D15640];
  v25 = v81;
  v26 = v82;
  if (v23 == *MEMORY[0x277D15810] || v23 == *MEMORY[0x277D15760] || v23 == *MEMORY[0x277D158D0] || v23 == *MEMORY[0x277D156D8] || v23 == *MEMORY[0x277D15870] || v23 == *MEMORY[0x277D15888] || v23 == v24 || v23 == *MEMORY[0x277D15718] || v23 == *MEMORY[0x277D15898] || v23 == *MEMORY[0x277D15720])
  {
    (*(v4 + 104))(v83, v24, v3);
    sub_25B149264();
    sub_25B161C14();
    sub_25B161C14();
    if (v87[0] == v85 && v87[1] == v86)
    {
      v53 = 1;
    }

    else
    {
      v53 = sub_25B161FA4();
    }

    v54 = v79;
    v55 = *(v4 + 8);
    v56 = v83;
    v83 = (v4 + 8);
    v79 = v55;
    (v55)(v56, v3);

    if (v53)
    {
      sub_25B11D9B8(v26);
    }

    else
    {
      v57 = HMService.primaryControlCharacteristic.getter();
      if (!v57)
      {
        if (qword_27FA39AF0 != -1)
        {
          swift_once();
        }

        v59 = sub_25B161A14();
        __swift_project_value_buffer(v59, qword_27FA3A058);
        v60 = v19;
        v61 = v80;
        v62 = sub_25B1619F4();
        v63 = sub_25B161D64();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v87[0] = v80;
          *v64 = 136315650;
          *(v64 + 4) = sub_25B108480(0xD00000000000001CLL, 0x800000025B166700, v87);
          v77 = v63;
          *(v64 + 12) = 2080;
          v65 = [v60 name];
          v66 = sub_25B161B34();
          v78 = v60;
          v68 = v67;

          v69 = sub_25B108480(v66, v68, v87);

          *(v64 + 14) = v69;
          *(v64 + 22) = 2080;
          v70 = [v61 name];
          v71 = sub_25B161B34();
          v73 = v72;

          v74 = sub_25B108480(v71, v73, v87);

          *(v64 + 24) = v74;
          v26 = v82;
          _os_log_impl(&dword_25B105000, v62, v77, "%s: Did not find primary control characteristic for service %s for accessory %s", v64, 0x20u);
          v75 = v80;
          swift_arrayDestroy();
          MEMORY[0x25F862BF0](v75, -1, -1);
          MEMORY[0x25F862BF0](v64, -1, -1);
        }

        else
        {
        }

        (v79)(v84, v3);
        return sub_25B1491F4(v26, v25);
      }

      v58 = v57;

      sub_25B11D9B8(v26);
    }

    (*(v4 + 32))(v26, v84, v3);
    v54(v26, 0, 1, v3);
  }

  else
  {
    v27 = *(v4 + 8);
    v27(v9, v3);
    if (qword_27FA39AF0 != -1)
    {
      swift_once();
    }

    v28 = sub_25B161A14();
    __swift_project_value_buffer(v28, qword_27FA3A058);
    v29 = v19;
    v30 = v80;
    v31 = sub_25B1619F4();
    v32 = sub_25B161D64();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      LODWORD(v79) = v32;
      v34 = v33;
      v83 = swift_slowAlloc();
      v87[0] = v83;
      *v34 = 136315906;
      *(v34 + 4) = sub_25B108480(0xD00000000000001CLL, 0x800000025B166700, v87);
      *(v34 + 12) = 2080;
      v35 = [v29 serviceType];
      v80 = v27;
      v36 = v35;
      v37 = sub_25B161B34();
      v39 = v38;

      v40 = sub_25B108480(v37, v39, v87);

      *(v34 + 14) = v40;
      *(v34 + 22) = 2080;
      v41 = [v29 name];
      v42 = sub_25B161B34();
      v44 = v43;

      v45 = sub_25B108480(v42, v44, v87);

      *(v34 + 24) = v45;
      *(v34 + 32) = 2080;
      v25 = v81;
      v46 = [v30 name];
      v47 = sub_25B161B34();
      v49 = v48;

      v50 = v47;
      v26 = v82;
      v51 = sub_25B108480(v50, v49, v87);

      *(v34 + 34) = v51;
      _os_log_impl(&dword_25B105000, v31, v79, "%s: ServiceType %s for service %s for accessory %s is not supported.", v34, 0x2Au);
      v52 = v83;
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v52, -1, -1);
      MEMORY[0x25F862BF0](v34, -1, -1);

      (v80)(v84, v3);
    }

    else
    {

      v27(v84, v3);
    }
  }

  return sub_25B1491F4(v26, v25);
}

HMService_optional __swiftcall HMAccessory.primaryService()()
{
  v1 = [v0 services];
  sub_25B132284(0, &qword_27FA39E58, 0x277CD1D90);
  v2 = sub_25B161C64();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25F862410](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isPrimaryService])
      {

        goto LABEL_17;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v6 = 0;
LABEL_17:
  v9 = v6;
  result.value.super.isa = v9;
  result.is_nil = v8;
  return result;
}

uint64_t HMAccessory.isInServiceGroup.getter()
{
  result = [v0 home];
  if (result)
  {
    v2 = result;
    v3 = [result serviceGroups];

    sub_25B132284(0, &qword_27FA3A470, 0x277CD1D98);
    v4 = sub_25B161C64();

    v5 = HMAccessory.primaryService()();
    if (v5)
    {
      v6 = v5;
      if (v4 >> 62)
      {
LABEL_19:
        v15 = v4 & 0xFFFFFFFFFFFFFF8;
        v7 = sub_25B161E54();
      }

      else
      {
        v15 = v4 & 0xFFFFFFFFFFFFFF8;
        v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v7 != i; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x25F862410](i, v4);
        }

        else
        {
          if (i >= *(v15 + 16))
          {
            goto LABEL_18;
          }

          v9 = *(v4 + 8 * i + 32);
        }

        v10 = v9;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v11 = [v9 services];
        sub_25B132284(0, &qword_27FA39E58, 0x277CD1D90);
        v12 = sub_25B161C64();

        v16 = v6;
        MEMORY[0x28223BE20](v13);
        v14[2] = &v16;
        LOBYTE(v11) = sub_25B130E80(sub_25B1492BC, v14, v12);

        if (v11)
        {

          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t HMAccessory.controlSupportedServiceKind()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B1616A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v70 - v11;
  v13 = *(v4 + 56);
  v13(&v70 - v11, 1, 1, v3);
  v75 = v1;
  v14 = HMAccessory.primaryService()();
  if (!v14)
  {
    sub_25B11D9B8(v12);
    return (v13)(a1, 1, 1, v3);
  }

  v15 = v14;
  v76 = v12;
  v74 = a1;
  sub_25B161E04();
  v16 = *(v4 + 48);
  v17 = v16(v10, 1, v3);
  v73 = v4;
  if (v17 == 1)
  {
    sub_25B161DD4();
    v18 = v16(v10, 1, v3);
    v19 = v6;
    v20 = v3;
    if (v18 != 1)
    {
      sub_25B11D9B8(v10);
    }
  }

  else
  {
    v19 = v6;
    (*(v4 + 32))(v6, v10, v3);
    v20 = v3;
  }

  v22 = ServiceKind.isSupportedByControls.getter();
  v23 = v74;
  if ((v22 & 1) == 0)
  {
    if (qword_27FA39B08 != -1)
    {
      swift_once();
    }

    v27 = sub_25B161A14();
    __swift_project_value_buffer(v27, qword_27FA3A0A0);
    v28 = v15;
    v29 = v75;
    v30 = sub_25B1619F4();
    v31 = sub_25B161D64();

    if (!os_log_type_enabled(v30, v31))
    {

      (*(v73 + 8))(v19, v20);
      return sub_25B1491F4(v76, v23);
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v77 = v33;
    v71 = v29;
    *v32 = 136315906;
    *(v32 + 4) = sub_25B108480(0xD00000000000001DLL, 0x800000025B166720, &v77);
    *(v32 + 12) = 2080;
    v34 = [v28 serviceType];
    v72 = v20;
    v35 = v34;
    v36 = sub_25B161B34();
    v37 = v23;
    v39 = v38;

    v40 = sub_25B108480(v36, v39, &v77);

    *(v32 + 14) = v40;
    *(v32 + 22) = 2080;
    v75 = v19;
    v41 = [v28 name];
    v42 = sub_25B161B34();
    v44 = v43;

    v45 = sub_25B108480(v42, v44, &v77);

    *(v32 + 24) = v45;
    *(v32 + 32) = 2080;
    v46 = [v71 name];
    v47 = sub_25B161B34();
    v49 = v48;

    v50 = v47;
    v23 = v37;
    v51 = sub_25B108480(v50, v49, &v77);

    *(v32 + 34) = v51;
    _os_log_impl(&dword_25B105000, v30, v31, "%s: ServiceType %s for service %s for accessory %s is not supported.", v32, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v33, -1, -1);
    MEMORY[0x25F862BF0](v32, -1, -1);

LABEL_19:
    (*(v73 + 8))(v75, v72);
    return sub_25B1491F4(v76, v23);
  }

  v24 = HMService.primaryControlCharacteristic.getter();
  if (!v24)
  {
    v72 = v20;
    if (qword_27FA39B08 != -1)
    {
      swift_once();
    }

    v52 = sub_25B161A14();
    __swift_project_value_buffer(v52, qword_27FA3A0A0);
    v53 = v15;
    v54 = v75;
    v30 = sub_25B1619F4();
    v55 = sub_25B161D64();

    if (!os_log_type_enabled(v30, v55))
    {

      (*(v73 + 8))(v19, v72);
      return sub_25B1491F4(v76, v23);
    }

    v56 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v77 = v71;
    *v56 = 136315650;
    *(v56 + 4) = sub_25B108480(0xD00000000000001DLL, 0x800000025B166720, &v77);
    v75 = v19;
    *(v56 + 12) = 2080;
    v57 = [v53 name];
    v58 = sub_25B161B34();
    v60 = v59;

    v61 = sub_25B108480(v58, v60, &v77);

    *(v56 + 14) = v61;
    *(v56 + 22) = 2080;
    v62 = v74;
    v63 = [v54 name];
    v64 = sub_25B161B34();
    v66 = v65;

    v67 = v64;
    v23 = v62;
    v68 = sub_25B108480(v67, v66, &v77);

    *(v56 + 24) = v68;
    _os_log_impl(&dword_25B105000, v30, v55, "%s: Did not find primary control characteristic for service %s for accessory %s", v56, 0x20u);
    v69 = v71;
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v69, -1, -1);
    MEMORY[0x25F862BF0](v56, -1, -1);

    goto LABEL_19;
  }

  v25 = v24;

  v26 = v76;
  sub_25B11D9B8(v76);
  (*(v73 + 32))(v26, v19, v20);
  v13(v26, 0, 1, v20);
  return sub_25B1491F4(v76, v23);
}

HMService_optional __swiftcall HMAccessory.serviceWithPrimaryControlCharacteristic()()
{
  v1 = v0;
  v2 = sub_25B1616A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v32 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v31 = &v25 - v6;
  v7 = HMAccessory.primaryService()();
  v8 = v7;
  if (v7 && (v9 = v7, v10 = HMService.primaryControlCharacteristic.getter(), v9, v10))
  {
  }

  else
  {
    v12 = [v1 services];
    sub_25B132284(0, &qword_27FA39E58, 0x277CD1D90);
    v13 = sub_25B161C64();

    v25 = v8;
    if (v13 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
    {
      v15 = 0;
      v29 = v13 & 0xFFFFFFFFFFFFFF8;
      v30 = v13 & 0xC000000000000001;
      v28 = *MEMORY[0x277D15640];
      v26 = i;
      v27 = (v3 + 104);
      v16 = (v3 + 8);
      while (1)
      {
        if (v30)
        {
          v17 = MEMORY[0x25F862410](v15, v13);
        }

        else
        {
          if (v15 >= *(v29 + 16))
          {
            goto LABEL_23;
          }

          v17 = *(v13 + 8 * v15 + 32);
        }

        v3 = v17;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v19 = HMService.primaryControlCharacteristic.getter();
        if (v19)
        {
          v22 = v19;

          goto LABEL_21;
        }

        sub_25B161DD4();
        (*v27)(v32, v28, v2);
        sub_25B149264();
        sub_25B161C14();
        sub_25B161C14();
        if (v35 == v33 && v36 == v34)
        {
          v23 = *v16;
          (*v16)(v32, v2);
          v23(v31, v2);

LABEL_20:

LABEL_21:

          v8 = v3;
          goto LABEL_26;
        }

        v20 = sub_25B161FA4();
        v21 = *v16;
        (*v16)(v32, v2);
        v21(v31, v2);

        if (v20)
        {
          goto LABEL_20;
        }

        ++v15;
        if (v18 == v26)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_25:

    v8 = 0;
  }

LABEL_26:
  v24 = v8;
  result.value.super.isa = v24;
  result.is_nil = v11;
  return result;
}

uint64_t sub_25B1491F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25B149264()
{
  result = qword_27FA39E18;
  if (!qword_27FA39E18)
  {
    sub_25B1616A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39E18);
  }

  return result;
}

id NHOHomeUserCapabilities.__allocating_init(home:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___NHOHomeUserCapabilities_logger;
  if (qword_27FA39AF8 != -1)
  {
    swift_once();
  }

  v5 = sub_25B161A14();
  v6 = __swift_project_value_buffer(v5, qword_27FA3A070);
  (*(*(v5 - 8) + 16))(&v3[v4], v6, v5);
  v3[OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded] = 0;
  v3[OBJC_IVAR___NHOHomeUserCapabilities_hasMockData] = 0;
  *&v3[OBJC_IVAR___NHOHomeUserCapabilities_home] = a1;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_25B149438()
{
  if (*(v0 + OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded) & 1) != 0 || (*(v0 + OBJC_IVAR___NHOHomeUserCapabilities_hasMockData))
  {
    return 1;
  }

  else
  {
    return sub_25B1494D8();
  }
}

uint64_t sub_25B1494D8()
{
  v1 = v0;
  v2 = OBJC_IVAR___NHOHomeUserCapabilities_home;
  v3 = *&v0[OBJC_IVAR___NHOHomeUserCapabilities_home];
  v4 = [v3 currentUser];
  v5 = sub_25B161DA4();

  if ((v5 & 1) == 0)
  {
    v6 = *&v1[v2];
    v7 = HMHome.isCurrentRestrictedGuestAwayFromHome()();

    if (!v7)
    {
      return 0;
    }
  }

  if (qword_27FA39AE8 != -1)
  {
    swift_once();
  }

  v8 = sub_25B161A14();
  __swift_project_value_buffer(v8, qword_27FA3A040);
  v9 = v1;
  v10 = sub_25B1619F4();
  v11 = sub_25B161D94();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_25B108480(0x7463697274736572, 0xEF74736575476465, &v20);
    *(v12 + 12) = 2080;
    v14 = [*&v1[v2] name];
    v15 = sub_25B161B34();
    v17 = v16;

    v18 = sub_25B108480(v15, v17, &v20);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_25B105000, v10, v11, "%s: the current user in home %s is restricted.", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v13, -1, -1);
    MEMORY[0x25F862BF0](v12, -1, -1);
  }

  return 1;
}

id NHOHomeUserCapabilities.init(home:)(uint64_t a1)
{
  v3 = OBJC_IVAR___NHOHomeUserCapabilities_logger;
  if (qword_27FA39AF8 != -1)
  {
    swift_once();
  }

  v4 = sub_25B161A14();
  v5 = __swift_project_value_buffer(v4, qword_27FA3A070);
  (*(*(v4 - 8) + 16))(&v1[v3], v5, v4);
  v1[OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded] = 0;
  v1[OBJC_IVAR___NHOHomeUserCapabilities_hasMockData] = 0;
  *&v1[OBJC_IVAR___NHOHomeUserCapabilities_home] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for NHOHomeUserCapabilities(0);
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_25B1498F4()
{
  v1[2] = v0;
  v2 = sub_25B161514();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B1499B4, 0, 0);
}

uint64_t sub_25B1499B4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v0[2] + OBJC_IVAR___NHOHomeUserCapabilities_home);
  v0[6] = v4;
  v5 = [v4 uniqueIdentifier];
  sub_25B161504();

  v6 = sub_25B1614F4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  sub_25B1619E4();
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_25B149ACC;

  return MEMORY[0x28215C940](v6, v8);
}

uint64_t sub_25B149ACC(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_25B149BCC, 0, 0);
}

uint64_t sub_25B149BCC()
{
  if (*(v0 + 64))
  {
    v1 = sub_25B1619D4();
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v0 + 16);

  v3 = _sSo6HMHomeC15NanoHomeIntentsE22hasMockElectricityDataSbyF_0();
  v4 = *(v0 + 16);
  if ((v1 & 1) == *(v2 + OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded) && (v3 & 1) == *(v4 + OBJC_IVAR___NHOHomeUserCapabilities_hasMockData))
  {
    v5 = 0;
  }

  else
  {
    *(v2 + OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded) = v1 & 1;
    *(v4 + OBJC_IVAR___NHOHomeUserCapabilities_hasMockData) = v3 & 1;
    v5 = 1;
  }

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t HMHome.utilityOnboarded()()
{
  v1[2] = v0;
  v2 = sub_25B161514();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B149D74, 0, 0);
}

uint64_t sub_25B149D74()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = [*(v0 + 16) uniqueIdentifier];
  sub_25B161504();

  v5 = sub_25B1614F4();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  sub_25B1619E4();
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_25B149E78;

  return MEMORY[0x28215C940](v5, v7);
}

uint64_t sub_25B149E78(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_25B149F78, 0, 0);
}

uint64_t sub_25B149F78()
{
  if (*(v0 + 56))
  {
    v1 = sub_25B1619D4();
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t sub_25B14A178(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_25B14A220;

  return sub_25B1498F4();
}

uint64_t sub_25B14A220(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

id NHOHomeUserCapabilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NHOHomeUserCapabilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NHOHomeUserCapabilities(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HMHome.onboardedOrMockData()()
{
  v1[2] = v0;
  v2 = sub_25B161514();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B14A570, 0, 0);
}

uint64_t sub_25B14A570()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = [*(v0 + 16) uniqueIdentifier];
  sub_25B161504();

  v5 = sub_25B1614F4();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  sub_25B1619E4();
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_25B14A674;

  return MEMORY[0x28215C940](v5, v7);
}

uint64_t sub_25B14A674(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_25B14A774, 0, 0);
}

uint64_t sub_25B14A774()
{
  if (*(v0 + 56) && (v1 = sub_25B1619D4(), , (v1 & 1) != 0))
  {
    v2 = 1;
  }

  else
  {
    v2 = _sSo6HMHomeC15NanoHomeIntentsE22hasMockElectricityDataSbyF_0();
  }

  v3 = *(v0 + 8);

  return v3(v2 & 1);
}

uint64_t sub_25B14A804(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_25B11B3EC;

  return v6();
}

uint64_t sub_25B14A8EC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_25B114758;

  return v7();
}

uint64_t sub_25B14A9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A378, &qword_25B164A58);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_25B14BE2C(a3, v23 - v10, &unk_27FA3A378, &qword_25B164A58);
  v12 = sub_25B161CF4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_25B11B208(v11, &unk_27FA3A378, &qword_25B164A58);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_25B161CE4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_25B161CC4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_25B161B74() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    sub_25B161274();
    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_25B11B208(a3, &unk_27FA3A378, &qword_25B164A58);

    return v21;
  }

LABEL_8:
  sub_25B11B208(a3, &unk_27FA3A378, &qword_25B164A58);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t _sSo6HMHomeC15NanoHomeIntentsE22hasMockElectricityDataSbyF_0()
{
  v0 = sub_25B109658();
  v1 = sub_25B161B24();
  v2 = [v0 stringForKey_];

  if (v2)
  {
    v3 = sub_25B161B34();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = sub_25B161B24();
  v7 = [v0 stringForKey_];

  if (v7)
  {
    v8 = sub_25B161B34();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  if (v5)
  {
    if (v3 == 0x746C7561666564 && v5 == 0xE700000000000000)
    {
    }

    else
    {
      v11 = sub_25B161FA4();

      if ((v11 & 1) == 0)
      {

        v12 = 1;
        return v12 & 1;
      }
    }
  }

  if (v10)
  {
    if (v8 != 0x746C7561666564 || v10 != 0xE700000000000000)
    {
      v13 = sub_25B161FA4();

      v12 = v13 ^ 1;
      return v12 & 1;
    }
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_25B14AEA4()
{
  v0 = sub_25B161554();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v32 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A768, &qword_25B165908);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A770, &qword_25B165910);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v15 = sub_25B161584();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B161574();
  sub_25B161564();
  (*(v16 + 8))(v18, v15);
  sub_25B161544();
  (*(v1 + 56))(v12, 0, 1, v0);
  v19 = *(v4 + 56);
  sub_25B14BE2C(v14, v6, &qword_27FA3A770, &qword_25B165910);
  sub_25B14BE2C(v12, &v6[v19], &qword_27FA3A770, &qword_25B165910);
  v20 = *(v1 + 48);
  if (v20(v6, 1, v0) == 1)
  {
    sub_25B11B208(v12, &qword_27FA3A770, &qword_25B165910);
    sub_25B11B208(v14, &qword_27FA3A770, &qword_25B165910);
    if (v20(&v6[v19], 1, v0) == 1)
    {
      sub_25B11B208(v6, &qword_27FA3A770, &qword_25B165910);
      return 1;
    }

    goto LABEL_6;
  }

  sub_25B14BE2C(v6, v33, &qword_27FA3A770, &qword_25B165910);
  if (v20(&v6[v19], 1, v0) == 1)
  {
    sub_25B11B208(v12, &qword_27FA3A770, &qword_25B165910);
    sub_25B11B208(v14, &qword_27FA3A770, &qword_25B165910);
    (*(v1 + 8))(v33, v0);
LABEL_6:
    sub_25B11B208(v6, &qword_27FA3A768, &qword_25B165908);
    goto LABEL_7;
  }

  v27 = v32;
  (*(v1 + 32))(v32, &v6[v19], v0);
  sub_25B14BE94();
  v28 = v33;
  v29 = sub_25B161AA4();
  v30 = *(v1 + 8);
  v30(v27, v0);
  sub_25B11B208(v12, &qword_27FA3A770, &qword_25B165910);
  sub_25B11B208(v14, &qword_27FA3A770, &qword_25B165910);
  v30(v28, v0);
  sub_25B11B208(v6, &qword_27FA3A770, &qword_25B165910);
  if (v29)
  {
    return 1;
  }

LABEL_7:
  if (qword_27FA39AE8 != -1)
  {
    swift_once();
  }

  v21 = sub_25B161A14();
  __swift_project_value_buffer(v21, qword_27FA3A040);
  v22 = sub_25B1619F4();
  v23 = sub_25B161D94();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_25B108480(0xD000000000000017, 0x800000025B167930, &v34);
    _os_log_impl(&dword_25B105000, v22, v23, "%s: region is not supported", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x25F862BF0](v25, -1, -1);
    MEMORY[0x25F862BF0](v24, -1, -1);
  }

  return 0;
}

uint64_t sub_25B14B444()
{
  v0 = sub_25B14AEA4();
  if ((v0 & 1) == 0)
  {
    if (qword_27FA39AE8 != -1)
    {
      swift_once();
    }

    v1 = sub_25B161A14();
    __swift_project_value_buffer(v1, qword_27FA3A040);
    v2 = sub_25B1619F4();
    v3 = sub_25B161D94();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_25B108480(0xD000000000000015, 0x800000025B1678E0, &v7);
      _os_log_impl(&dword_25B105000, v2, v3, "%s: region is not supported", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x25F862BF0](v5, -1, -1);
      MEMORY[0x25F862BF0](v4, -1, -1);
    }
  }

  return v0 & 1;
}

uint64_t _s15NanoHomeIntents23NHOHomeUserCapabilitiesC36currentLocationEnergyForecastEnabledSbvgZ_0()
{
  v0 = sub_25B14AEA4();
  if ((v0 & 1) == 0)
  {
    if (qword_27FA39AE8 != -1)
    {
      swift_once();
    }

    v1 = sub_25B161A14();
    __swift_project_value_buffer(v1, qword_27FA3A040);
    v2 = sub_25B1619F4();
    v3 = sub_25B161D94();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_25B108480(0xD000000000000024, 0x800000025B167840, &v7);
      _os_log_impl(&dword_25B105000, v2, v3, "%s: region is not supported", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x25F862BF0](v5, -1, -1);
      MEMORY[0x25F862BF0](v4, -1, -1);
    }
  }

  return v0 & 1;
}

uint64_t type metadata accessor for NHOHomeUserCapabilities(uint64_t a1)
{
  result = qword_27FA3A758;
  if (!qword_27FA3A758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B14B738(uint64_t a1)
{
  result = sub_25B161A14();
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

uint64_t dispatch thunk of NHOHomeUserCapabilities.updateCapabilities()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B132B10;

  return v5();
}

uint64_t sub_25B14B9C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B14BA08()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25B114758;

  return sub_25B14A178(v2, v3);
}

uint64_t sub_25B14BAB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25B11B3EC;

  return sub_25B14A804(v2, v3, v4);
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25B14BBB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B11B3EC;

  return sub_25B14A8EC(a1, v4, v5, v6);
}

uint64_t sub_25B14BC84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B14BCBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B11B3EC;

  return sub_25B1323A4(a1, v4);
}

uint64_t sub_25B14BD74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B114758;

  return sub_25B1323A4(a1, v4);
}

uint64_t sub_25B14BE2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_25B14BE94()
{
  result = qword_27FA3A778;
  if (!qword_27FA3A778)
  {
    sub_25B161554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A778);
  }

  return result;
}

uint64_t NHOAccessoryIntent.home.getter()
{
  sub_25B161274();
  sub_25B161144();
}

uint64_t NHOAccessoryIntent.home.setter(__int128 *a1)
{
  sub_25B161274();
  sub_25B161154();
}

char *NHOAccessoryIntent.__allocating_init(homeID:homeName:accessoryID:accessoryName:icon:serviceKind:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  v12 = sub_25B161414();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = [objc_allocWithZone(v11) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  v14 = v13;
  sub_25B161264();
  sub_25B161264();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  sub_25B161274();
  sub_25B161154();

  sub_25B161264();
  sub_25B161264();
  sub_25B161264();
  sub_25B161694();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  sub_25B161104();
  sub_25B161104();
  sub_25B161104();
  sub_25B161274();
  sub_25B161154();

  sub_25B161274();
  sub_25B161154();

  sub_25B161274();
  sub_25B161154();

  sub_25B161274();
  sub_25B161154();

  sub_25B161274();
  sub_25B161154();

  sub_25B161274();
  sub_25B161154();

  sub_25B161694();
  sub_25B161274();
  sub_25B161154();

  sub_25B161274();
  sub_25B161154();

  v15 = sub_25B1616A4();
  (*(*(v15 - 8) + 8))(a11, v15);
  return v14;
}

uint64_t sub_25B14C4A4()
{
  v0 = sub_25B161414();
  __swift_allocate_value_buffer(v0, qword_27FA3A780);
  __swift_project_value_buffer(v0, qword_27FA3A780);
  return sub_25B1613E4();
}

uint64_t (*static NHOAccessoryIntent.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FA39B80 != -1)
  {
    swift_once();
  }

  v1 = sub_25B161414();
  __swift_project_value_buffer(v1, qword_27FA3A780);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25B14C614()
{
  v0 = sub_25B1611D4();
  __swift_allocate_value_buffer(v0, qword_27FA3A798);
  __swift_project_value_buffer(v0, qword_27FA3A798);
  return sub_25B1611C4();
}

uint64_t (*static NHOAccessoryIntent.description.modify(uint64_t a1))(void)
{
  if (qword_27FA39B88 != -1)
  {
    swift_once();
  }

  v1 = sub_25B1611D4();
  __swift_project_value_buffer(v1, qword_27FA3A798);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*NHOAccessoryIntent.homeID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__homeID);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOAccessoryIntent.homeName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__homeName);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOAccessoryIntent.accessoryID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__accessoryID);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOAccessoryIntent.accessoryName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__accessoryName);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOAccessoryIntent.icon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__icon);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOAccessoryIntent.serviceType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__serviceType);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t NHOAccessoryIntent.useHomeKitRecommendations.getter()
{
  sub_25B161274();
  sub_25B161144();

  return v1;
}

uint64_t NHOAccessoryIntent.useHomeKitRecommendations.setter(char a1)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t sub_25B14CCE4@<X0>(_BYTE *a2@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  *a2 = v4;
  return result;
}

uint64_t sub_25B14CD3C(char *a1, void *a2)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOAccessoryIntent.useHomeKitRecommendations.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__useHomeKitRecommendations);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B11E120;
}

uint64_t (*NHOAccessoryIntent.requestConfirmationText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__requestConfirmationText);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOAccessoryIntent.requestConfirmationIcon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__requestConfirmationIcon);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t NHOAccessoryIntent.isSmartStack.getter()
{
  sub_25B161274();
  sub_25B161144();

  return v1;
}

uint64_t sub_25B14CFD4@<X0>(_BYTE *a2@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  *a2 = v4;
  return result;
}

uint64_t sub_25B14D02C(char *a1, void *a2)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t NHOAccessoryIntent.isSmartStack.setter(char a1)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOAccessoryIntent.isSmartStack.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__isSmartStack);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOAccessoryIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__home);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t NHOAccessoryIntent.accessoriesAndScenes.getter()
{
  sub_25B161274();
  sub_25B161144();
}

double sub_25B14D24C@<D0>(uint64_t a2@<X8>)
{
  sub_25B161274();
  sub_25B161144();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_25B14D2AC(uint64_t *a1, void *a2)
{
  sub_25B145AA0(*a1);
  sub_25B161274();
  sub_25B161154();
}

uint64_t NHOAccessoryIntent.accessoriesAndScenes.setter(uint64_t a1)
{
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOAccessoryIntent.accessoriesAndScenes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOAccessoryIntent__accessoriesAndScenes);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t static NHOAccessoryIntent.parameterSummary.getter()
{
  sub_25B14FC54(&qword_27FA3A810, &protocol conformance descriptor for NHOAccessoryIntent);

  return sub_25B161284();
}

uint64_t sub_25B14D480()
{
  swift_getKeyPath();
  sub_25B14FC54(&qword_27FA3A810, &protocol conformance descriptor for NHOAccessoryIntent);
  v0 = sub_25B161274();

  swift_getKeyPath();
  sub_25B161274();
  v1 = sub_25B161274();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25B163820;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  type metadata accessor for NHOAccessoryIntent();
  sub_25B161274();
  v3 = sub_25B161264();

  return v3;
}

uint64_t sub_25B14D5C0@<X0>(uint64_t *a2@<X8>)
{
  sub_25B161274();
  v3 = sub_25B161164();

  *a2 = v3;
  return result;
}

id NHOAccessoryIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *NHOAccessoryIntent.init()()
{
  ObjectType = swift_getObjectType();
  v108 = sub_25B1616A4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v97 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_25B161584();
  MEMORY[0x28223BE20](v1 - 8);
  v103 = &v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_25B1613F4();
  v104 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v113 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25B161B14();
  MEMORY[0x28223BE20](v4 - 8);
  v111 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v110 = &v97 - v7;
  v129 = sub_25B161294();
  v8 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v102 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v97 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE8, &unk_25B163AE0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v97 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v97 - v20;
  v116 = &v97 - v20;
  v22 = sub_25B161414();
  v128 = v22;
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = OBJC_IVAR___NHOAccessoryIntent__homeID;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A158, &qword_25B163B08);
  sub_25B1613E4();
  v26 = *(v23 + 56);
  v26(v21, 1, 1, v22);
  v124 = v26;
  v125 = v23 + 56;
  v117 = sub_25B161AB4();
  v134[0] = 0uLL;
  v27 = *(v117 - 1);
  v118 = *(v27 + 56);
  v119 = v27 + 56;
  v28 = v18;
  v118(v18, 1, 1, v117);
  v132 = sub_25B1610C4();
  v29 = *(v132 - 8);
  v127 = *(v29 + 56);
  v30 = v29 + 56;
  v31 = v15;
  v127(v15, 1, 1, v132);
  v122 = *MEMORY[0x277CBA308];
  v32 = *(v8 + 104);
  v130 = v8 + 104;
  v131 = v32;
  v126 = v10;
  v33 = v129;
  (v32)(v10);
  v121 = v25;
  v34 = v116;
  v114 = v31;
  v35 = sub_25B161194();
  v36 = v120;
  *&v120[v101] = v35;
  v101 = OBJC_IVAR___NHOAccessoryIntent__homeName;
  sub_25B1613E4();
  v37 = v34;
  v38 = v128;
  v26(v37, 1, 1, v128);
  v134[0] = 0uLL;
  v118(v28, 1, 1, v117);
  v123 = v30;
  v127(v31, 1, 1, v132);
  v39 = v122;
  v131(v126, v122, v33);
  v40 = v116;
  v41 = v114;
  *&v36[v101] = sub_25B161194();
  v101 = OBJC_IVAR___NHOAccessoryIntent__accessoryID;
  sub_25B1613E4();
  v42 = v38;
  v43 = v124;
  v124(v40, 1, 1, v42);
  v134[0] = 0uLL;
  v118(v28, 1, 1, v117);
  v127(v41, 1, 1, v132);
  v44 = v129;
  v131(v126, v39, v129);
  v45 = v41;
  v46 = sub_25B161194();
  v47 = v120;
  *&v120[v101] = v46;
  v101 = OBJC_IVAR___NHOAccessoryIntent__accessoryName;
  sub_25B1613E4();
  v43(v40, 1, 1, v128);
  v134[0] = 0uLL;
  v48 = v28;
  v49 = v118;
  v118(v28, 1, 1, v117);
  v50 = v127;
  v127(v45, 1, 1, v132);
  v51 = v122;
  v131(v126, v122, v44);
  *&v47[v101] = sub_25B161194();
  v101 = OBJC_IVAR___NHOAccessoryIntent__icon;
  sub_25B1613E4();
  v52 = v128;
  v124(v40, 1, 1, v128);
  v134[0] = 0uLL;
  v109 = v48;
  v53 = v117;
  v49(v48, 1, 1, v117);
  v50(v45, 1, 1, v132);
  v131(v126, v51, v129);
  v54 = v116;
  v55 = sub_25B161194();
  v56 = v120;
  *&v120[v101] = v55;
  v101 = OBJC_IVAR___NHOAccessoryIntent__serviceType;
  sub_25B1613E4();
  v124(v54, 1, 1, v52);
  v134[0] = 0uLL;
  v118(v109, 1, 1, v53);
  v127(v45, 1, 1, v132);
  v57 = v126;
  v58 = v122;
  v131(v126, v122, v129);
  v59 = v54;
  *&v56[v101] = sub_25B161194();
  v115 = OBJC_IVAR___NHOAccessoryIntent__useHomeKitRecommendations;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED0, &unk_25B163860);
  sub_25B1613E4();
  v60 = v128;
  v61 = v124;
  v124(v59, 1, 1, v128);
  LOBYTE(v134[0]) = 0;
  v100 = sub_25B161CB4();
  v62 = *(v100 - 8);
  v99 = *(v62 + 56);
  v101 = v62 + 56;
  v99(v110, 1, 1, v100);
  v63 = v132;
  v127(v45, 1, 1, v132);
  v131(v57, v58, v129);
  v64 = v116;
  *&v56[v115] = sub_25B1611A4();
  v98 = OBJC_IVAR___NHOAccessoryIntent__requestConfirmationText;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF0, &qword_25B163AF0);
  sub_25B1613E4();
  v61(v64, 1, 1, v60);
  v134[0] = 0uLL;
  v65 = v109;
  v118(v109, 1, 1, v117);
  v66 = v63;
  v67 = v127;
  v127(v45, 1, 1, v66);
  v131(v57, v122, v129);
  *&v120[v98] = sub_25B161194();
  v98 = OBJC_IVAR___NHOAccessoryIntent__requestConfirmationIcon;
  sub_25B1613E4();
  v68 = v64;
  v61(v64, 1, 1, v128);
  v134[0] = 0uLL;
  v69 = v129;
  v118(v65, 1, 1, v117);
  v70 = v114;
  v67(v114, 1, 1, v132);
  v71 = v126;
  v72 = v122;
  v73 = v131;
  v131(v126, v122, v69);
  v74 = v71;
  v75 = sub_25B161194();
  v76 = v120;
  *&v120[v98] = v75;
  v119 = OBJC_IVAR___NHOAccessoryIntent__isSmartStack;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B1613E4();
  v124(v68, 1, 1, v128);
  LOBYTE(v134[0]) = 2;
  v99(v110, 1, 1, v100);
  v127(v70, 1, 1, v132);
  v73(v74, v72, v69);
  v77 = v70;
  *&v76[v119] = sub_25B1611A4();
  v119 = OBJC_IVAR___NHOAccessoryIntent__home;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v117 = "HOME_ACCESSORY_ENTITY_TITLE";
  v78 = v112;
  v115 = __swift_project_value_buffer(v112, qword_27FA3E770);
  v110 = *(v104 + 16);
  (v110)(v113, v115, v78);
  sub_25B161574();
  sub_25B161424();
  v79 = v116;
  v124(v116, 1, 1, v128);
  v134[0] = 0uLL;
  v80 = v132;
  v81 = v127;
  v127(v77, 1, 1, v132);
  v82 = v102;
  v81(v102, 1, 1, v80);
  v131(v126, v122, v129);
  sub_25B120304();
  v83 = sub_25B161184();
  v84 = v120;
  *&v120[v119] = v83;
  v119 = OBJC_IVAR___NHOAccessoryIntent__accessoriesAndScenes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A698, &unk_25B1654E0);
  sub_25B161AC4();
  (v110)(v113, v115, v112);
  sub_25B161574();
  sub_25B161424();
  v124(v79, 1, 1, v128);
  v135 = 0;
  memset(v134, 0, sizeof(v134));
  v85 = v132;
  v81(v114, 1, 1, v132);
  v81(v82, 1, 1, v85);
  v131(v126, v122, v129);
  sub_25B11ADCC();
  *&v84[v119] = sub_25B161184();
  v133.receiver = v84;
  v133.super_class = ObjectType;
  v86 = objc_msgSendSuper2(&v133, sel_init);
  *&v134[0] = 0xD000000000000024;
  *(&v134[0] + 1) = 0x800000025B167980;
  v87 = v86;
  sub_25B161274();
  sub_25B161154();

  *&v134[0] = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD00000000000001CLL, 0x800000025B1674A0);
  *(&v134[0] + 1) = v88;
  sub_25B161274();
  sub_25B161154();

  *&v134[0] = 0xD000000000000024;
  *(&v134[0] + 1) = 0x800000025B167980;
  sub_25B161274();
  sub_25B161154();

  *&v134[0] = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD000000000000021, 0x800000025B1679B0);
  *(&v134[0] + 1) = v89;
  sub_25B161274();
  sub_25B161154();

  strcpy(v134, "lightbulb.fill");
  HIBYTE(v134[0]) = -18;
  sub_25B161274();
  sub_25B161154();

  v90 = v107;
  v91 = v106;
  v92 = v108;
  (*(v107 + 104))(v106, *MEMORY[0x277D158D0], v108);
  v93 = sub_25B161694();
  v95 = v94;
  (*(v90 + 8))(v91, v92);
  *&v134[0] = v93;
  *(&v134[0] + 1) = v95;
  sub_25B161274();
  sub_25B161154();

  LOBYTE(v134[0]) = 0;
  sub_25B161274();
  sub_25B161154();

  return v87;
}

uint64_t NHOAccessoryIntent.description.getter()
{
  sub_25B161EB4();
  MEMORY[0x25F862120](0xD00000000000001BLL, 0x800000025B1679E0);
  v0 = NHOAccessoryIntent.configuredHomeID.getter();
  MEMORY[0x25F862120](v0);

  MEMORY[0x25F862120](0x614E656D6F68202CLL, 0xEC000000203A656DLL);
  v1 = NHOAccessoryIntent.configuredHomeName.getter();
  MEMORY[0x25F862120](v1);

  v2 = MEMORY[0x25F862120](0x737365636361202CLL, 0xEF203A444979726FLL);
  v3 = NHOAccessoryIntent.configuredAccessoryID.getter(v2);
  MEMORY[0x25F862120](v3);

  MEMORY[0x25F862120](0xD000000000000011, 0x800000025B167A00);
  v4 = NHOAccessoryIntent.configuredAccessoryName.getter();
  MEMORY[0x25F862120](v4);

  MEMORY[0x25F862120](0x203A6E6F6369202CLL, 0xE800000000000000);
  v5 = NHOAccessoryIntent.configuredIcon.getter();
  MEMORY[0x25F862120](v5);

  MEMORY[0x25F862120](0x636976726573202CLL, 0xEF203A6570795465);
  v6 = NHOAccessoryIntent.configuredServiceType.getter();
  MEMORY[0x25F862120](v6);

  MEMORY[0x25F862120](0xD00000000000001DLL, 0x800000025B167A20);
  sub_25B161274();
  sub_25B161144();

  if (v13)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v13)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x25F862120](v7, v8);

  v9 = MEMORY[0x25F862120](0xD000000000000018, 0x800000025B167A40);
  v10 = NHOAccessoryIntent.configuredAccessoryID.getter(v9);
  MEMORY[0x25F862120](v10);

  MEMORY[0x25F862120](0xD000000000000010, 0x800000025B167A60);
  sub_25B161274();
  sub_25B161144();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C98, &unk_25B1632B0);
  v11 = sub_25B161B54();
  MEMORY[0x25F862120](v11);

  return 0;
}

uint64_t NHOAccessoryIntent.configuredHomeID.getter()
{
  sub_25B161274();
  sub_25B161144();

  if (v2)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v2, v3);
    sub_25B1610F4();
    sub_25B120358(v2, v3);
    return v1;
  }

  else
  {
    sub_25B120358(0, v3);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t NHOAccessoryIntent.configuredHomeName.getter()
{
  sub_25B161274();
  sub_25B161144();

  if (v2)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v2, v3);
    sub_25B1610F4();
    sub_25B120358(v2, v3);
    return v1;
  }

  else
  {
    sub_25B120358(0, v3);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t NHOAccessoryIntent.configuredAccessoryName.getter()
{
  sub_25B161274();
  sub_25B161144();

  if (v2)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B11A98C(v2, v3, v4, v5, v6);
    sub_25B1610F4();
    sub_25B11A98C(v2, v3, v4, v5, v6);
    return v1;
  }

  else
  {
    sub_25B11A98C(0, v3, v4, v5, v6);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t NHOAccessoryIntent.configuredIcon.getter()
{
  sub_25B161274();
  sub_25B161144();

  if (v2)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B11A98C(v2, v3, v4, v5, v6);
    sub_25B1610F4();
    sub_25B11A98C(v2, v3, v4, v5, v6);
    return v1;
  }

  else
  {
    sub_25B11A98C(0, v3, v4, v5, v6);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t NHOAccessoryIntent.configuredServiceType.getter()
{
  sub_25B161274();
  sub_25B161144();

  if (v2)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B11A98C(v2, v3, v4, v5, v6);
    sub_25B1610F4();
    sub_25B11A98C(v2, v3, v4, v5, v6);
    return v1;
  }

  else
  {
    sub_25B11A98C(0, v3, v4, v5, v6);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t _s15NanoHomeIntents18NHOAccessoryIntentC21configuredAccessoryIDSSvg_0()
{
  sub_25B161274();
  sub_25B161144();

  if (v2)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B11A98C(v2, v3, v4, v5, v6);
    sub_25B1610F4();
    sub_25B11A98C(v2, v3, v4, v5, v6);
    return v1;
  }

  else
  {
    sub_25B11A98C(0, v3, v4, v5, v6);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

id NHOAccessoryIntent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B14F6AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B80 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A780);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25B14F790(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return NHOAccessoryIntent.perform()(a1);
}

uint64_t sub_25B14F828()
{
  v1 = sub_25B14FC54(&qword_27FA3A810, &protocol conformance descriptor for NHOAccessoryIntent);

  return MEMORY[0x28210B538](v0, v1);
}

uint64_t NHOAccessoryIntent.defaultIconColor.getter()
{
  v0 = sub_25B161884();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_25B1616A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  NHOAccessoryIntent.configuredServiceType.getter();
  sub_25B161B84();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_25B11D9B8(v6);
    (*(v1 + 104))(v3, *MEMORY[0x277D15FF0], v0);
    v11 = sub_25B161874();
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = ServiceKind.iconColorBase.getter();
    (*(v8 + 8))(v10, v7);
  }

  return v11;
}

uint64_t NHOAccessoryIntent.configuredRoomName.getter()
{
  sub_25B161274();
  sub_25B161144();

  if (v2)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B11A98C(v2, v3, v4, v5, v6);
    sub_25B1610F4();
    sub_25B11A98C(v2, v3, v4, v5, v6);
    return v1;
  }

  else
  {
    sub_25B11A98C(0, v3, v4, v5, v6);
    return 0;
  }
}

uint64_t sub_25B14FC54(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NHOAccessoryIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *HMService.primaryControlCharacteristic.getter()
{
  v1 = sub_25B1616A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  HMService.primaryControlCharacteristicType.getter();
  if (v5)
  {
    v6 = sub_25B161B24();

    v2 = [v0 hf:v6 characteristicOfType:?];
  }

  else
  {
    v46 = v4;
    v7 = [v0 characteristics];
    sub_25B132284(0, &qword_27FA3A838, 0x277CD1970);
    v8 = sub_25B161C64();

    v45 = v1;
    if (v8 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
    {
      v10 = 0;
      v42 = *MEMORY[0x277D15810];
      v43 = v8 & 0xFFFFFFFFFFFFFF8;
      v44 = v8 & 0xC000000000000001;
      v11 = (v2 + 88);
      v41 = *MEMORY[0x277D15760];
      v39 = *MEMORY[0x277D158D0];
      v38 = *MEMORY[0x277D156D8];
      v36 = *MEMORY[0x277D15870];
      v35 = *MEMORY[0x277D15888];
      v34 = *MEMORY[0x277D15718];
      v31 = *MEMORY[0x277D15898];
      v30 = *MEMORY[0x277D15720];
      v29 = (v2 + 8);
      v12 = *MEMORY[0x277CCF748];
      v32 = *MEMORY[0x277CCFB50];
      v33 = v12;
      v47 = *MEMORY[0x277CCF9F0];
      v37 = *MEMORY[0x277CCFB40];
      v40 = *MEMORY[0x277CCFB08];
      while (1)
      {
        if (v44)
        {
          v13 = MEMORY[0x25F862410](v10, v8);
        }

        else
        {
          if (v10 >= *(v43 + 16))
          {
            goto LABEL_31;
          }

          v13 = *(v8 + 8 * v10 + 32);
        }

        v2 = v13;
        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v15 = v8;
        v16 = [v13 characteristicType];
        v17 = sub_25B161B34();
        v19 = v18;

        v20 = v46;
        sub_25B161DD4();
        v21 = v20;
        v22 = v45;
        v23 = (*v11)(v21, v45);
        if (v23 == v42 || v23 == v41 || v23 == v39 || v23 == v38 || v23 == v36 || v23 == v35 || v23 == v34 || v23 == v31 || v23 == v30)
        {
          if (v17 == sub_25B161B34() && v19 == v24)
          {

            return v2;
          }

          v26 = sub_25B161FA4();

          if (v26)
          {

            return v2;
          }
        }

        else
        {
          (*v29)(v46, v22);
        }

        ++v10;
        v8 = v15;
        if (v14 == i)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }

LABEL_33:

    return 0;
  }

  return v2;
}

uint64_t sub_25B1503D4(void *a1, unsigned int *a2)
{
  v70 = a2;
  v3 = v2;
  v4 = sub_25B1616A4();
  v71 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v65 = &v62[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A848, &qword_25B165AD0);
  v6 = MEMORY[0x28223BE20](v69);
  v67 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v9 = &v62[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v64 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v66 = &v62[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v68 = &v62[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v62[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v62[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v62[-v23];
  v25 = [v2 serviceType];
  v26 = sub_25B161B34();
  v28 = v27;

  if (v26 == sub_25B161B34() && v28 == v29)
  {

LABEL_27:
    v48 = 1;
    return v48 & 1;
  }

  v30 = sub_25B161FA4();

  if (v30)
  {
    goto LABEL_27;
  }

  v31 = [v3 serviceType];
  v32 = sub_25B161B34();
  v34 = v33;

  if (v32 == sub_25B161B34() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_25B161FA4();

    if ((v36 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  sub_25B161E04();
  v37 = v71;
  (*(v71 + 104))(v22, *v70, v4);
  (*(v37 + 56))(v22, 0, 1, v4);
  v38 = *(v69 + 48);
  sub_25B11B268(v24, v9);
  sub_25B11B268(v22, &v9[v38]);
  v39 = *(v37 + 48);
  if (v39(v9, 1, v4) == 1)
  {
    sub_25B11B208(v22, &qword_27FA39E08, &qword_25B1637D8);
    sub_25B11B208(v24, &qword_27FA39E08, &qword_25B1637D8);
    if (v39(&v9[v38], 1, v4) == 1)
    {
      v40 = v9;
LABEL_22:
      sub_25B11B208(v40, &qword_27FA39E08, &qword_25B1637D8);
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  sub_25B11B268(v9, v19);
  if (v39(&v9[v38], 1, v4) == 1)
  {
    sub_25B11B208(v22, &qword_27FA39E08, &qword_25B1637D8);
    sub_25B11B208(v24, &qword_27FA39E08, &qword_25B1637D8);
    (*(v71 + 8))(v19, v4);
LABEL_14:
    sub_25B11B208(v9, &qword_27FA3A848, &qword_25B165AD0);
    goto LABEL_15;
  }

  v55 = v71;
  v56 = v65;
  (*(v71 + 32))(v65, &v9[v38], v4);
  sub_25B1511B8();
  v63 = sub_25B161AA4();
  v57 = *(v55 + 8);
  v57(v56, v4);
  sub_25B11B208(v22, &qword_27FA39E08, &qword_25B1637D8);
  sub_25B11B208(v24, &qword_27FA39E08, &qword_25B1637D8);
  v57(v19, v4);
  sub_25B11B208(v9, &qword_27FA39E08, &qword_25B1637D8);
  if (v63)
  {
    goto LABEL_27;
  }

LABEL_15:
  v41 = [v3 serviceType];
  v42 = sub_25B161B34();
  v44 = v43;

  if (v42 == sub_25B161B34() && v44 == v45)
  {

    v46 = v68;
  }

  else
  {
    v47 = sub_25B161FA4();

    v48 = 0;
    v46 = v68;
    if ((v47 & 1) == 0)
    {
      return v48 & 1;
    }
  }

  sub_25B161E04();
  v49 = v71;
  v50 = v66;
  (*(v71 + 104))(v66, *v70, v4);
  (*(v49 + 56))(v50, 0, 1, v4);
  v51 = *(v69 + 48);
  v52 = v67;
  sub_25B11B268(v46, v67);
  sub_25B11B268(v50, &v52[v51]);
  v53 = *(v49 + 48);
  if (v53(v52, 1, v4) == 1)
  {
    sub_25B11B208(v50, &qword_27FA39E08, &qword_25B1637D8);
    sub_25B11B208(v46, &qword_27FA39E08, &qword_25B1637D8);
    if (v53(&v52[v51], 1, v4) == 1)
    {
      v40 = v52;
      goto LABEL_22;
    }
  }

  else
  {
    v54 = v64;
    sub_25B11B268(v52, v64);
    if (v53(&v52[v51], 1, v4) != 1)
    {
      v59 = v71;
      v60 = v65;
      (*(v71 + 32))(v65, &v52[v51], v4);
      sub_25B1511B8();
      v48 = sub_25B161AA4();
      v61 = *(v59 + 8);
      v61(v60, v4);
      sub_25B11B208(v50, &qword_27FA39E08, &qword_25B1637D8);
      sub_25B11B208(v46, &qword_27FA39E08, &qword_25B1637D8);
      v61(v54, v4);
      sub_25B11B208(v52, &qword_27FA39E08, &qword_25B1637D8);
      return v48 & 1;
    }

    sub_25B11B208(v50, &qword_27FA39E08, &qword_25B1637D8);
    sub_25B11B208(v46, &qword_27FA39E08, &qword_25B1637D8);
    (*(v71 + 8))(v54, v4);
  }

  sub_25B11B208(v52, &qword_27FA3A848, &qword_25B165AD0);
  v48 = 0;
  return v48 & 1;
}

uint64_t sub_25B150CB8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v4 = sub_25B1616A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A840, &qword_25B165AC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  sub_25B161DF4();
  if (!v11)
  {
LABEL_4:
    if (HMService.isLightbulbService.getter())
    {
      v14 = MEMORY[0x277D158D0];
    }

    else
    {
      if ((HMService.isFanService.getter() & 1) == 0)
      {
        v15 = sub_25B161DD4();
        goto LABEL_11;
      }

      v14 = MEMORY[0x277D15810];
    }

    v15 = (*(v5 + 104))(v7, *v14, v4);
LABEL_11:
    v16 = a2(v15);
    (*(v5 + 8))(v7, v4);
    return v16;
  }

  sub_25B161954();
  v12 = sub_25B161964();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_25B11B208(v10, &qword_27FA3A840, &qword_25B165AC8);
    goto LABEL_4;
  }

  v16 = a1();
  (*(v13 + 8))(v10, v12);
  return v16;
}

uint64_t HMService.tint.getter()
{
  v1 = v0;
  v2 = sub_25B161884();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_25B1616A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 serviceType];
  sub_25B161B34();

  sub_25B161B84();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_25B11B208(v8, &qword_27FA39E08, &qword_25B1637D8);
    (*(v3 + 104))(v5, *MEMORY[0x277D15FF0], v2);
    v14 = sub_25B161874();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v14 = ServiceKind.iconColorBase.getter();
    (*(v10 + 8))(v12, v9);
  }

  return v14;
}

unint64_t sub_25B1511B8()
{
  result = qword_27FA39D80;
  if (!qword_27FA39D80)
  {
    sub_25B1616A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39D80);
  }

  return result;
}

uint64_t sub_25B151234(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = sub_25B1616A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B161DD4();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D15810] || v8 == *MEMORY[0x277D15760] || v8 == *MEMORY[0x277D158D0] || v8 == *MEMORY[0x277D156D8] || v8 == *MEMORY[0x277D15870] || v8 == *MEMORY[0x277D15888] || v8 == *MEMORY[0x277D15718] || v8 == *MEMORY[0x277D15898] || v8 == *MEMORY[0x277D15720])
  {
    return sub_25B161B34();
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}

void *HMService.primaryStateCharacteristic.getter()
{
  v1 = HMService.primaryStateCharacteristicType.getter();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = [v0 characteristics];
    sub_25B132284(0, &qword_27FA3A838, 0x277CD1970);
    v6 = sub_25B161C64();

    if (v6 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x25F862410](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v12 = [v9 characteristicType];
        v13 = sub_25B161B34();
        v15 = v14;

        if (v13 == v3 && v4 == v15)
        {

          return v10;
        }

        v17 = sub_25B161FA4();

        if (v17)
        {

          return v10;
        }

        ++v8;
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
  }

  return 0;
}

uint64_t sub_25B151620(void *a1)
{
  v2 = [v1 serviceType];
  v3 = sub_25B161B34();
  v5 = v4;

  if (v3 == sub_25B161B34() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25B161FA4();
  }

  return v8 & 1;
}

BOOL HMService.isInServiceGroup.getter()
{
  v1 = [v0 home];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 serviceGroups];

  sub_25B132284(0, &qword_27FA3A470, 0x277CD1D98);
  v4 = sub_25B161C64();

  if (v4 >> 62)
  {
LABEL_18:
    v15 = v4 & 0xFFFFFFFFFFFFFF8;
    v5 = sub_25B161E54();
  }

  else
  {
    v15 = v4 & 0xFFFFFFFFFFFFFF8;
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v5 != v6;
    if (v5 == v6)
    {
      break;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x25F862410](v6, v4);
    }

    else
    {
      if (v6 >= *(v15 + 16))
      {
        goto LABEL_17;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v10 = [v8 services];
    sub_25B132284(0, &qword_27FA39E58, 0x277CD1D90);
    v11 = sub_25B161C64();

    v17 = v16;
    MEMORY[0x28223BE20](v12);
    v14[2] = &v17;
    LOBYTE(v10) = sub_25B130E80(sub_25B1491D4, v14, v11);

    ++v6;
  }

  while ((v10 & 1) == 0);

  return v7;
}

uint64_t sub_25B1518CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25B161514();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  if (a2 && (v11 = sub_25B161DE4()) != 0)
  {
    v12 = v11;
    v13 = [v11 uniqueIdentifier];

    sub_25B161504();
    (*(v5 + 32))(v10, v8, v4);
    if (*(a2 + 16))
    {
      v14 = sub_25B108BB4(v10);
      if (v15)
      {
        sub_25B109C08(*(a2 + 56) + 32 * v14, &v22);
        (*(v5 + 8))(v10, v4);
        goto LABEL_13;
      }
    }

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    v16 = sub_25B161DE4();
    if (v16)
    {
      v17 = v16;
      v18 = [v16 value];

      if (v18)
      {
        sub_25B161E24();
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
      }

      v22 = v20;
      v23 = v21;
      goto LABEL_13;
    }
  }

  v22 = 0u;
  v23 = 0u;
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39BB0, &qword_25B162EC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v20 = 0;
  }

  return v20;
}

uint64_t _sSo9HMServiceC15NanoHomeIntentsE9BOOLValue3for4withSbSg0C9DataModel18CharacteristicKindO_SDy10Foundation4UUIDVypGSgtF_0(uint64_t a1, uint64_t a2)
{
  v3 = sub_25B161514();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  if (a2 && (v10 = sub_25B161DE4()) != 0)
  {
    v11 = v10;
    v12 = [v10 uniqueIdentifier];

    sub_25B161504();
    (*(v4 + 32))(v9, v7, v3);
    if (*(a2 + 16))
    {
      v13 = sub_25B108BB4(v9);
      if (v14)
      {
        sub_25B109C08(*(a2 + 56) + 32 * v13, &v21);
        (*(v4 + 8))(v9, v3);
        goto LABEL_13;
      }
    }

    (*(v4 + 8))(v9, v3);
  }

  else
  {
    v15 = sub_25B161DE4();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 value];

      if (v17)
      {
        sub_25B161E24();
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0u;
        v20 = 0u;
      }

      v21 = v19;
      v22 = v20;
      goto LABEL_13;
    }
  }

  v21 = 0u;
  v22 = 0u;
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39BB0, &qword_25B162EC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v19) = 2;
  }

  return v19;
}

Swift::Bool_optional __swiftcall HMService.powerState(with:)(Swift::OpaquePointer_optional with)
{
  rawValue = with.value._rawValue;
  v2 = sub_25B161894();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 104);
  v6(v5, *MEMORY[0x277D160B0], v2);
  v7.value = _sSo9HMServiceC15NanoHomeIntentsE9BOOLValue3for4withSbSg0C9DataModel18CharacteristicKindO_SDy10Foundation4UUIDVypGSgtF_0(v5, rawValue);
  v8 = *(v3 + 8);
  v8(v5, v2);
  if (v7.value == 2)
  {
    v6(v5, *MEMORY[0x277D16330], v2);
    v7.value = _sSo9HMServiceC15NanoHomeIntentsE9BOOLValue3for4withSbSg0C9DataModel18CharacteristicKindO_SDy10Foundation4UUIDVypGSgtF_0(v5, rawValue);
    v8(v5, v2);
  }

  return v7;
}

uint64_t sub_25B151F50()
{
  v0 = sub_25B161584();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_25B1613F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B161B14();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_25B161414();
  __swift_allocate_value_buffer(v6, qword_27FA3A850);
  __swift_project_value_buffer(v6, qword_27FA3A850);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_27FA3E770);
  (*(v2 + 16))(v4, v7, v1);
  sub_25B161574();
  return sub_25B161424();
}

uint64_t static ToggleActionSetIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B90 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A850);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25B152258(char *a1, uint64_t *a2)
{
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*ToggleActionSetIntent.value.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t (*ToggleActionSetIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t sub_25B152464(uint64_t *a1, uint64_t *a2)
{
  sub_25B12908C(*a1, a1[1], a1[2]);
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*ToggleActionSetIntent.accessoriesAndScenes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t (*ToggleActionSetIntent.useHomeKitRecommendations.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t ToggleActionSetIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v68 = a1;
  v1 = sub_25B161294();
  v69 = *(v1 - 8);
  v70 = v1;
  MEMORY[0x28223BE20](v1);
  v67 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v44 - v10;
  v12 = sub_25B161584();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25B1613F4();
  v71 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25B161B14();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_25B161414();
  v21 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED0, &unk_25B163860);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v55 = "HOME_ACCESSORY_ENTITY_TITLE";
  v22 = __swift_project_value_buffer(v15, qword_27FA3E770);
  v23 = *(v71 + 16);
  v71 += 16;
  v62 = v22;
  v63 = v23;
  v61 = v17;
  v23(v17, v22, v15);
  sub_25B161574();
  sub_25B161424();
  v24 = *(v21 + 56);
  v54 = v21 + 56;
  v65 = v24;
  v24(v11, 1, 1, v66);
  LOBYTE(v72) = 2;
  v47 = sub_25B161CB4();
  v25 = *(v47 - 8);
  v46 = *(v25 + 56);
  v48 = v25 + 56;
  v46(v58, 1, 1, v47);
  v26 = sub_25B1610C4();
  v57 = v15;
  v27 = v26;
  v28 = *(v26 - 8);
  v29 = *(v28 + 56);
  v59 = v28 + 56;
  v60 = v29;
  v30 = v49;
  v29(v49, 1, 1, v26);
  v64 = *MEMORY[0x277CBA308];
  v56 = *(v69 + 104);
  v69 += 104;
  v56(v67);
  *v68 = sub_25B1611A4();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  v51 = v20;
  v63(v61, v62, v15);
  v52 = v14;
  sub_25B161574();
  sub_25B161424();
  v44 = v11;
  v31 = v66;
  v65(v11, 1, 1, v66);
  v72 = 0;
  v73 = 0;
  v32 = v30;
  v33 = v30;
  v53 = v27;
  v34 = v60;
  v60(v33, 1, 1, v27);
  v35 = v50;
  v34(v50, 1, 1, v27);
  (v56)(v67, v64, v70);
  sub_25B120304();
  v68[1] = sub_25B161184();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A250, &unk_25B164140);
  sub_25B161AC4();
  v63(v61, v62, v57);
  sub_25B161574();
  sub_25B161424();
  v36 = v44;
  v65(v44, 1, 1, v31);
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v37 = v53;
  v38 = v60;
  v60(v32, 1, 1, v53);
  v38(v35, 1, 1, v37);
  v39 = v67;
  v40 = v56;
  (v56)(v67, v64, v70);
  sub_25B1282D4();
  v41 = sub_25B161184();
  v42 = v68;
  v68[2] = v41;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B161AC4();
  v63(v61, v62, v57);
  sub_25B161574();
  sub_25B161424();
  v65(v36, 1, 1, v66);
  LOBYTE(v72) = 2;
  v46(v58, 1, 1, v47);
  v60(v32, 1, 1, v53);
  (v40)(v39, v64, v70);
  result = sub_25B1611A4();
  v42[3] = result;
  return result;
}

uint64_t ToggleActionSetIntent.init(home:accessoriesAndScenes:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v79 = a3;
  v78 = sub_25B161294();
  v81 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v68 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v57 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v66 = v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v49 - v13;
  v15 = sub_25B161584();
  MEMORY[0x28223BE20](v15 - 8);
  v67 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_25B1613F4();
  v17 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v19 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25B161B14();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_25B161414();
  v23 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v24 = a1[1];
  v56 = *a1;
  v55 = v24;
  v25 = a2[1];
  v60 = *a2;
  v59 = v25;
  v58 = a2[2];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED0, &unk_25B163860);
  v26 = v22;
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v75 = "HOME_ACCESSORY_ENTITY_TITLE";
  v27 = v80;
  v71 = __swift_project_value_buffer(v80, qword_27FA3E770);
  v28 = *(v17 + 16);
  v65 = v17 + 16;
  v72 = v28;
  v28(v19, v71, v27);
  sub_25B161574();
  sub_25B161424();
  v29 = *(v23 + 56);
  v73 = v23 + 56;
  v74 = v29;
  v29(v14, 1, 1, v77);
  LOBYTE(v82) = 2;
  v52 = sub_25B161CB4();
  v30 = *(v52 - 8);
  v51 = *(v30 + 56);
  v53 = v30 + 56;
  v51(v66, 1, 1, v52);
  v31 = sub_25B1610C4();
  v32 = *(v31 - 8);
  v69 = *(v32 + 56);
  v70 = v32 + 56;
  v33 = v54;
  v69(v54, 1, 1, v31);
  v63 = *MEMORY[0x277CBA308];
  v34 = *(v81 + 104);
  v81 += 104;
  v76 = v34;
  v35 = v68;
  (v34)(v68);
  *v79 = sub_25B1611A4();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  v61 = v26;
  sub_25B161AC4();
  v62 = v19;
  v72(v19, v71, v80);
  sub_25B161574();
  sub_25B161424();
  v49[0] = v14;
  v36 = v77;
  v74(v14, 1, 1, v77);
  v82 = 0;
  v83 = 0;
  v37 = v31;
  v64 = v31;
  v38 = v69;
  v69(v33, 1, 1, v31);
  v39 = v57;
  v38(v57, 1, 1, v37);
  v40 = v63;
  v76(v35, v63, v78);
  sub_25B120304();
  v50 = sub_25B161184();
  v79[1] = v50;
  v49[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A250, &unk_25B164140);
  sub_25B161AC4();
  v72(v62, v71, v80);
  sub_25B161574();
  sub_25B161424();
  v41 = v49[0];
  v74(v49[0], 1, 1, v36);
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v42 = v64;
  v43 = v69;
  v69(v33, 1, 1, v64);
  v43(v39, 1, 1, v42);
  v44 = v68;
  v45 = v78;
  v76(v68, v40, v78);
  sub_25B1282D4();
  v46 = sub_25B161184();
  v47 = v79;
  v79[2] = v46;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B161AC4();
  v72(v62, v71, v80);
  sub_25B161574();
  sub_25B161424();
  v74(v41, 1, 1, v77);
  LOBYTE(v82) = 2;
  v51(v66, 1, 1, v52);
  v69(v33, 1, 1, v64);
  v76(v44, v63, v45);
  v47[3] = sub_25B1611A4();
  v82 = v56;
  v83 = v55;
  sub_25B161154();
  v82 = v60;
  v83 = v59;
  v84 = v58;
  sub_25B161154();
  LOBYTE(v82) = 0;
  return sub_25B161154();
}

uint64_t ToggleActionSetIntent.perform()(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = *(v1 + 8);
  return MEMORY[0x2822009F8](sub_25B153C14, 0, 0);
}

uint64_t sub_25B153C14(uint64_t a1)
{
  v23 = v1;
  sub_25B161144();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *(v1 + 144) = v2;
  *(v1 + 152) = v3;
  if (v2)
  {
    sub_25B161144();
    v4 = *(v1 + 16);
    *(v1 + 160) = v4;
    *(v1 + 176) = *(v1 + 32);
    if (v4)
    {
      sub_25B1610F4();
      v5 = *(v1 + 56);
      v6 = *(v1 + 64);
      *(v1 + 184) = v6;
      sub_25B1610F4();
      v7 = *(v1 + 72);
      v8 = *(v1 + 80);
      *(v1 + 192) = v8;
      v9 = swift_task_alloc();
      *(v1 + 200) = v9;
      *v9 = v1;
      v9[1] = sub_25B153FB8;

      return sub_25B157C30(v5, v6, v7, v8);
    }

    if (qword_27FA39B08 != -1)
    {
      swift_once();
    }

    v16 = sub_25B161A14();
    __swift_project_value_buffer(v16, qword_27FA3A0A0);
    v17 = sub_25B1619F4();
    v18 = sub_25B161D94();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_25B108480(0x286D726F66726570, 0xE900000000000029, &v22);
      _os_log_impl(&dword_25B105000, v17, v18, "%s action set is not set, unable to run perform.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x25F862BF0](v20, -1, -1);
      MEMORY[0x25F862BF0](v19, -1, -1);
    }

    sub_25B1610D4();
    sub_25B120358(v2, v3);
  }

  else
  {
    if (qword_27FA39B08 != -1)
    {
      swift_once();
    }

    v11 = sub_25B161A14();
    __swift_project_value_buffer(v11, qword_27FA3A0A0);
    v12 = sub_25B1619F4();
    v13 = sub_25B161D94();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_25B108480(0x286D726F66726570, 0xE900000000000029, &v22);
      _os_log_impl(&dword_25B105000, v12, v13, "%s home is not set, unable to run perform.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x25F862BF0](v15, -1, -1);
      MEMORY[0x25F862BF0](v14, -1, -1);
    }

    sub_25B1610D4();
  }

  v21 = *(v1 + 8);

  return v21();
}

uint64_t sub_25B153FB8()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_25B1541B8;
  }

  else
  {
    v2 = sub_25B15411C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B15411C()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  sub_25B1610D4();
  sub_25B128C68(v3, v1, v2);
  sub_25B120358(v5, v4);
  v6 = v0[1];

  return v6();
}

uint64_t sub_25B1541B8()
{
  v27 = v0;
  if (qword_27FA39B08 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = sub_25B161A14();
  __swift_project_value_buffer(v7, qword_27FA3A0A0);
  sub_25B12908C(v4, v3, v2);
  sub_25B11B1C8(v6, v5);
  v8 = v1;
  v9 = sub_25B1619F4();
  v10 = sub_25B161D94();
  sub_25B128C68(v4, v3, v2);
  sub_25B120358(v6, v5);

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[26];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26[0] = v14;
    *v12 = 136315906;
    *(v12 + 4) = sub_25B108480(0x286D726F66726570, 0xE900000000000029, v26);
    *(v12 + 12) = 2080;
    sub_25B1610F4();
    v15 = sub_25B108480(v0[11], v0[12], v26);

    *(v12 + 14) = v15;
    *(v12 + 22) = 2080;
    sub_25B1610F4();
    v16 = sub_25B108480(v0[13], v0[14], v26);

    *(v12 + 24) = v16;
    *(v12 + 32) = 2112;
    v17 = v11;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 34) = v18;
    *v13 = v18;
    _os_log_impl(&dword_25B105000, v9, v10, "%s Failed to toggle action set %s in home %s: %@", v12, 0x2Au);
    sub_25B13A1D8(v13);
    MEMORY[0x25F862BF0](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v14, -1, -1);
    MEMORY[0x25F862BF0](v12, -1, -1);
  }

  v19 = v0[21];
  v20 = v0[22];
  v22 = v0[19];
  v21 = v0[20];
  v23 = v0[18];
  swift_willThrow();
  sub_25B128C68(v21, v19, v20);
  sub_25B120358(v23, v22);
  v24 = v0[1];

  return v24();
}

void *sub_25B154490@<X0>(_BYTE *a2@<X8>)
{
  result = sub_25B161144();
  *a2 = v4;
  return result;
}

uint64_t (*sub_25B154504(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25B161134();
  return sub_25B10BAFC;
}

uint64_t sub_25B154578@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B90 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A850);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25B154624(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return ToggleActionSetIntent.perform()(a1);
}

uint64_t sub_25B1546C0(uint64_t a1)
{
  v2 = sub_25B15486C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t ToggleActionSetIntent.uniqueIdentifier.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D21540]) init];
  sub_25B161144();
  if (v4)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B161274();
    sub_25B128C68(v4, v5, v6);
    sub_25B1610F4();
    sub_25B128C68(v4, v5, v6);
    v1 = sub_25B161B24();
  }

  else
  {
    sub_25B128C68(0, v5, v6);
  }

  [v0 finalize];
  v2 = sub_25B161F84();

  return v2;
}

unint64_t sub_25B15486C()
{
  result = qword_27FA3A868;
  if (!qword_27FA3A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A868);
  }

  return result;
}

unint64_t sub_25B1548C8()
{
  result = qword_27FA3A870;
  if (!qword_27FA3A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A870);
  }

  return result;
}

unint64_t sub_25B154920()
{
  result = qword_27FA3A878;
  if (!qword_27FA3A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A878);
  }

  return result;
}

void *sub_25B1549E0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_25B161144();
  *a2 = v4;
  return result;
}

double sub_25B154A28@<D0>(uint64_t a2@<X8>)
{
  sub_25B161144();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

void *sub_25B154A70@<X0>(_BYTE *a2@<X8>)
{
  result = sub_25B161144();
  *a2 = v4;
  return result;
}

unint64_t sub_25B154AC4()
{
  result = qword_27FA3A1E8;
  if (!qword_27FA3A1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA3A1F0, &qword_25B163F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A1E8);
  }

  return result;
}

NanoHomeIntents::NanoHomeAnalytics::WidgetActionType_optional __swiftcall NanoHomeAnalytics.WidgetActionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

NanoHomeIntents::NanoHomeAnalytics::WidgetSource_optional __swiftcall NanoHomeAnalytics.WidgetSource.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_25B154BD0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

NanoHomeIntents::NanoHomeAnalytics::WidgetKind_optional __swiftcall NanoHomeAnalytics.WidgetKind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

NanoHomeIntents::NanoHomeAnalytics::WidgetActionProvider_optional __swiftcall NanoHomeAnalytics.WidgetActionProvider.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 11;
  if (rawValue < 0xB)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_25B154C80()
{
  result = qword_27FA3A880;
  if (!qword_27FA3A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A880);
  }

  return result;
}

unint64_t sub_25B154CD8()
{
  result = qword_27FA3A888;
  if (!qword_27FA3A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A888);
  }

  return result;
}

unint64_t sub_25B154D30()
{
  result = qword_27FA3A890;
  if (!qword_27FA3A890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A890);
  }

  return result;
}

unint64_t sub_25B154D88()
{
  result = qword_27FA3A898;
  if (!qword_27FA3A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A898);
  }

  return result;
}