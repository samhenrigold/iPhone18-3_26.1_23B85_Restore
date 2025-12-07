uint64_t sub_24AEBD9C0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x24C234830](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_24AEC65AC();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_24AEBDAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = sub_24AEC5CFC();
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v8 = sub_24AEC626C();
  v6[30] = v8;
  v6[31] = *(v8 - 8);
  v6[32] = swift_task_alloc();
  v9 = sub_24AEC628C();
  v6[33] = v9;
  v6[34] = *(v9 - 8);
  v6[35] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[36] = v10;
  *v10 = v6;
  v10[1] = sub_24AEBDCA0;

  return sub_24AEA24C4();
}

uint64_t sub_24AEBDCA0(uint64_t a1)
{
  *(*v1 + 296) = a1;

  return MEMORY[0x2822009F8](sub_24AEBDDA0, 0, 0);
}

uint64_t sub_24AEBDDA0()
{
  v47 = v0;
  if (!v0[37])
  {
LABEL_33:

    v44 = v0[1];

    return v44();
  }

  v1 = v0[24];
  if (v1 > 1)
  {
    if ((v1 - 2) < 2)
    {
      if (qword_280E21548 != -1)
      {
        swift_once();
      }

      v2 = sub_24AEC625C();
      __swift_project_value_buffer(v2, qword_280E21578);
      v3 = sub_24AEC623C();
      v4 = sub_24AEC645C();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_28;
      }

      v5 = v0[29];
      v6 = v0[26];
      v7 = v0[27];
      v8 = v0[24];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      v11 = *(v7 + 104);
      v12 = MEMORY[0x277D09020];
      v46 = v10;
      if (v8 != 3)
      {
        v12 = MEMORY[0x277D09018];
      }

      v11(v5, *v12, v6);
      sub_24AEC59BC(&qword_27EFC0190, MEMORY[0x277D09038], MEMORY[0x277D09040]);
      v13 = sub_24AEC663C();
      v15 = v14;
      (*(v7 + 8))(v5, v6);
      v16 = sub_24AEBFE20(v13, v15, &v46);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_24AE9B000, v3, v4, "validFriends: %{private,mask.hash}s not supported", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C234F80](v10, -1, -1);
      v17 = v9;
LABEL_10:
      MEMORY[0x24C234F80](v17, -1, -1);
LABEL_28:

      if (qword_280E21548 != -1)
      {
        swift_once();
      }

      v34 = sub_24AEC625C();
      __swift_project_value_buffer(v34, qword_280E21578);

      v35 = sub_24AEC623C();
      v36 = sub_24AEC645C();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = v0[25];
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v46 = v39;
        *v38 = 136315138;
        v40 = sub_24AEC5EEC();
        v41 = MEMORY[0x24C234690](v37, v40);
        v43 = sub_24AEBFE20(v41, v42, &v46);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_24AE9B000, v35, v36, "Updated friends: %s) when expired", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x24C234F80](v39, -1, -1);
        MEMORY[0x24C234F80](v38, -1, -1);
      }

      else
      {
      }

      goto LABEL_33;
    }

    if (v1 == 4)
    {
      v19 = swift_task_alloc();
      v0[44] = v19;
      *v19 = v0;
      v19[1] = sub_24AEBEE54;

      return MEMORY[0x28215FB28]();
    }

LABEL_23:
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v21 = sub_24AEC625C();
    __swift_project_value_buffer(v21, qword_280E21578);
    v3 = sub_24AEC623C();
    v22 = sub_24AEC645C();
    if (!os_log_type_enabled(v3, v22))
    {
      goto LABEL_28;
    }

    v23 = v0[24];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v46 = v25;
    *v24 = 141558275;
    *(v24 + 4) = 1752392040;
    *(v24 + 12) = 2081;
    if (v23 != 4)
    {
      return sub_24AEC65DC();
    }

    v27 = v0[27];
    v26 = v0[28];
    v28 = v0[26];
    v29 = v25;
    (*(v27 + 104))(v26, *MEMORY[0x277D09010], v28);
    sub_24AEC59BC(&qword_27EFC0190, MEMORY[0x277D09038], MEMORY[0x277D09040]);
    v30 = sub_24AEC663C();
    v32 = v31;
    (*(v27 + 8))(v26, v28);
    v33 = sub_24AEBFE20(v30, v32, &v46);

    *(v24 + 14) = v33;
    _os_log_impl(&dword_24AE9B000, v3, v22, "validFriends: %{private,mask.hash}s not supported", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x24C234F80](v29, -1, -1);
    v17 = v24;
    goto LABEL_10;
  }

  if (v1)
  {
    if (v1 != 1)
    {
      goto LABEL_23;
    }

    v18 = swift_task_alloc();
    v0[41] = v18;
    *v18 = v0;
    v18[1] = sub_24AEBE9AC;

    return MEMORY[0x28215FB60]();
  }

  else
  {
    v20 = swift_task_alloc();
    v0[38] = v20;
    *v20 = v0;
    v20[1] = sub_24AEBE504;

    return MEMORY[0x28215FA40]();
  }
}

uint64_t sub_24AEBE504(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v5 = sub_24AEBF2FC;
  }

  else
  {
    *(v4 + 320) = a1;
    v5 = sub_24AEBE62C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AEBE62C()
{
  v25 = v0;
  v1 = v0[40];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v23 = v0[33];
  v5 = v0[30];
  v6 = v0[31];
  v7 = v0[23];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  v0[18] = sub_24AEC5BC8;
  v0[19] = v8;
  v0[14] = MEMORY[0x277D85DD0];
  v0[15] = 1107296256;
  v0[16] = sub_24AEA5684;
  v0[17] = &block_descriptor_339;
  v9 = _Block_copy(v0 + 14);
  v10 = v7;
  sub_24AEC627C();
  v0[22] = MEMORY[0x277D84F90];
  sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
  sub_24AEC3EB4();
  sub_24AEC64FC();
  MEMORY[0x24C2347A0](0, v2, v4, v9);
  _Block_release(v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v2, v23);

  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v11 = sub_24AEC625C();
  __swift_project_value_buffer(v11, qword_280E21578);

  v12 = sub_24AEC623C();
  v13 = sub_24AEC645C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[25];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    v17 = sub_24AEC5EEC();
    v18 = MEMORY[0x24C234690](v14, v17);
    v20 = sub_24AEBFE20(v18, v19, &v24);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_24AE9B000, v12, v13, "Updated friends: %s) when expired", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C234F80](v16, -1, -1);
    MEMORY[0x24C234F80](v15, -1, -1);
  }

  else
  {
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_24AEBE9AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v5 = sub_24AEBF39C;
  }

  else
  {
    *(v4 + 344) = a1;
    v5 = sub_24AEBEAD4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AEBEAD4()
{
  v25 = v0;
  v1 = v0[43];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v23 = v0[33];
  v5 = v0[30];
  v6 = v0[31];
  v7 = v0[23];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  v0[12] = sub_24AEC5BC4;
  v0[13] = v8;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_24AEA5684;
  v0[11] = &block_descriptor_332;
  v9 = _Block_copy(v0 + 8);
  v10 = v7;
  sub_24AEC627C();
  v0[21] = MEMORY[0x277D84F90];
  sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
  sub_24AEC3EB4();
  sub_24AEC64FC();
  MEMORY[0x24C2347A0](0, v2, v4, v9);
  _Block_release(v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v2, v23);

  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v11 = sub_24AEC625C();
  __swift_project_value_buffer(v11, qword_280E21578);

  v12 = sub_24AEC623C();
  v13 = sub_24AEC645C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[25];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    v17 = sub_24AEC5EEC();
    v18 = MEMORY[0x24C234690](v14, v17);
    v20 = sub_24AEBFE20(v18, v19, &v24);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_24AE9B000, v12, v13, "Updated friends: %s) when expired", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C234F80](v16, -1, -1);
    MEMORY[0x24C234F80](v15, -1, -1);
  }

  else
  {
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_24AEBEE54(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v5 = sub_24AEBF43C;
  }

  else
  {
    *(v4 + 368) = a1;
    v5 = sub_24AEBEF7C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AEBEF7C()
{
  v25 = v0;
  v1 = v0[46];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v23 = v0[33];
  v5 = v0[30];
  v6 = v0[31];
  v7 = v0[23];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  v0[6] = sub_24AEC5BC0;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24AEA5684;
  v0[5] = &block_descriptor_325;
  v9 = _Block_copy(v0 + 2);
  v10 = v7;
  sub_24AEC627C();
  v0[20] = MEMORY[0x277D84F90];
  sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
  sub_24AEC3EB4();
  sub_24AEC64FC();
  MEMORY[0x24C2347A0](0, v2, v4, v9);
  _Block_release(v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v2, v23);

  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v11 = sub_24AEC625C();
  __swift_project_value_buffer(v11, qword_280E21578);

  v12 = sub_24AEC623C();
  v13 = sub_24AEC645C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[25];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    v17 = sub_24AEC5EEC();
    v18 = MEMORY[0x24C234690](v14, v17);
    v20 = sub_24AEBFE20(v18, v19, &v24);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_24AE9B000, v12, v13, "Updated friends: %s) when expired", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C234F80](v16, -1, -1);
    MEMORY[0x24C234F80](v15, -1, -1);
  }

  else
  {
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_24AEBF2FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEBF39C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEBF43C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEBF4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24AEC5A6C(a3, v22 - v9, &qword_27EFC0090, &qword_24AEC88F0);
  v11 = sub_24AEC63EC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24AEA5484(v10, &qword_27EFC0090, &qword_24AEC88F0);
  }

  else
  {
    sub_24AEC63DC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24AEC63BC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24AEC632C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_24AEA5484(a3, &qword_27EFC0090, &qword_24AEC88F0);

      return v20;
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

  sub_24AEA5484(a3, &qword_27EFC0090, &qword_24AEC88F0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

unint64_t sub_24AEBF7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24AEC665C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24AEBF858(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_24AEA5670;

  return v6();
}

uint64_t sub_24AEBF940(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_24AEA2D48;

  return v7();
}

uint64_t sub_24AEBFA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_24AEC5A6C(a3, v23 - v10, &qword_27EFC0090, &qword_24AEC88F0);
  v12 = sub_24AEC63EC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24AEA5484(v11, &qword_27EFC0090, &qword_24AEC88F0);
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

  sub_24AEC63DC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_24AEC63BC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_24AEC632C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

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

    sub_24AEA5484(a3, &qword_27EFC0090, &qword_24AEC88F0);

    return v21;
  }

LABEL_8:
  sub_24AEA5484(a3, &qword_27EFC0090, &qword_24AEC88F0);
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

void *sub_24AEBFD24(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01A8, &qword_24AEC8CB8);
  v4 = *(sub_24AEC5EEC() - 8);
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

unint64_t sub_24AEBFE20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AEBFEEC(v11, 0, 0, 1, a1, a2);
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
    sub_24AEC3F60(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24AEBFEEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24AEBFFF8(a5, a6);
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
    result = sub_24AEC653C();
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

void *sub_24AEBFFF8(uint64_t a1, unint64_t a2)
{
  v3 = sub_24AEC0044(a1, a2);
  sub_24AEC0174(&unk_285E3A7B8);
  return v3;
}

void *sub_24AEC0044(uint64_t a1, unint64_t a2)
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

  v6 = sub_24AEC0260(v5, 0);
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

  result = sub_24AEC653C();
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
        v10 = sub_24AEC634C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AEC0260(v10, 0);
        result = sub_24AEC651C();
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

uint64_t sub_24AEC0174(uint64_t result)
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

  result = sub_24AEC02D4(result, v11, 1, v3);
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

void *sub_24AEC0260(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0248, &qword_24AEC8D58);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AEC02D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0248, &qword_24AEC8D58);
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

void *sub_24AEC03C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24AEC0450(a1, a2, a3, *v3, &qword_27EFC0250, &qword_24AEC8D60, MEMORY[0x277D092D8]);
  *v3 = result;
  return result;
}

void *sub_24AEC040C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24AEC0450(a1, a2, a3, *v3, &qword_27EFC01A8, &qword_24AEC8CB8, MEMORY[0x277D092C0]);
  *v3 = result;
  return result;
}

void *sub_24AEC0450(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_24AEC062C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_24AEC0A40(a1, a2, sub_24AEBF7A0);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24AEC1B08();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_24AEC5EEC();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_24AEC12D0(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_24AEC5EEC();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_24AEC07B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0210, &qword_24AEC8D18);
    v2 = sub_24AEC661C();
    v19 = v2;
    sub_24AEC659C();
    v3 = sub_24AEC65CC();
    if (v3)
    {
      v4 = v3;
      sub_24AEC52B4(0, &qword_280E214D0, off_278FFF8E8);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_24AEC52B4(0, &qword_27EFC01E0, off_278FFF8F0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_24AEC0B5C(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_24AEC64BC();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_24AEC65CC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

unint64_t sub_24AEC09FC(uint64_t a1)
{
  v2 = sub_24AEC64BC();

  return sub_24AEC1714(a1, v2);
}

uint64_t sub_24AEC0A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_24AEC66AC();
  sub_24AEC633C();
  v5 = sub_24AEC66BC();

  return a3(a1, a2, v5);
}

unint64_t sub_24AEC0AC4(uint64_t a1)
{
  sub_24AEC5F7C();
  sub_24AEC59BC(&qword_27EFC0178, MEMORY[0x277D09310], MEMORY[0x277D09318]);
  v2 = sub_24AEC62AC();

  return sub_24AEC17E8(a1, v2);
}

uint64_t sub_24AEC0B5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0210, &qword_24AEC8D18);
  result = sub_24AEC660C();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_24AEC64BC();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_24AEC0DC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_24AEC5EEC();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01B0, &qword_24AEC8CC0);
  v42 = v4;
  result = sub_24AEC660C();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_24AEC66AC();
      sub_24AEC633C();
      result = sub_24AEC66BC();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

void sub_24AEC1144(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24AEC650C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_24AEC64BC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_24AEC12D0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24AEC650C() + 1) & ~v5;
    while (1)
    {
      sub_24AEC66AC();

      sub_24AEC633C();
      v9 = sub_24AEC66BC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_24AEC5EEC() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24AEC14BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24AEC0A40(a2, a3, sub_24AEBF7A0);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_24AEC1B08();
      goto LABEL_7;
    }

    sub_24AEC0DC4(v15, a4 & 1);
    v26 = sub_24AEC0A40(a2, a3, sub_24AEBF7A0);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_24AEC666C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_24AEC5EEC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_24AEC1664(v12, a2, a3, a1, v18);
}

uint64_t sub_24AEC1664(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_24AEC5EEC();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_24AEC1714(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_24AEC52B4(0, &qword_280E214D0, off_278FFF8E8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_24AEC64CC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24AEC17E8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_24AEC5F7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_24AEC59BC(&qword_27EFC0180, MEMORY[0x277D09310], MEMORY[0x277D09320]);
      v15 = sub_24AEC62DC();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

id sub_24AEC19A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0210, &qword_24AEC8D18);
  v2 = *v0;
  v3 = sub_24AEC65FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_24AEC1B08()
{
  v1 = v0;
  v35 = sub_24AEC5EEC();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01B0, &qword_24AEC8CC0);
  v3 = *v0;
  v4 = sub_24AEC65FC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_24AEC1D88(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_24AEC1F08(v9, v7, a3, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = sub_24AEC2264(v11, v7, a3, v5);
  result = MEMORY[0x24C234F80](v11, -1, -1);
  if (!v3)
  {
    return v12;
  }

  return result;
}

uint64_t sub_24AEC1F08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v43 = a4;
  v32 = a2;
  v33 = a1;
  v42 = sub_24AEC5CDC();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24AEC5F7C();
  result = MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v44 = a3;
  v13 = *(a3 + 64);
  v34 = 0;
  v35 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v38 = v5 + 16;
  v39 = v9 + 16;
  v40 = v9;
  v41 = v5;
  v36 = (v5 + 8);
  v37 = (v9 + 8);
  while (v16)
  {
    v46 = (v16 - 1) & v16;
    v18 = __clz(__rbit64(v16)) | (v12 << 6);
    v19 = v45;
LABEL_11:
    v22 = v44;
    (*(v40 + 16))(v11, v44[6] + *(v40 + 72) * v18, v7);
    v23 = v18;
    v24 = v22[7] + *(v41 + 72) * v18;
    v25 = v7;
    v26 = v42;
    (*(v41 + 16))(v19, v24, v42);
    v27 = v47;
    v28 = v43(v11, v19);
    v47 = v27;
    if (v27)
    {
      (*v36)(v19, v26);
      return (*v37)(v11, v25);
    }

    v29 = v28;
    (*v36)(v19, v26);
    result = (*v37)(v11, v25);
    v7 = v25;
    v16 = v46;
    if (v29)
    {
      *(v33 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
        return sub_24AEC22F4(v33, v32, v34, v44);
      }
    }
  }

  v20 = v12;
  v19 = v45;
  while (1)
  {
    v12 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      return sub_24AEC22F4(v33, v32, v34, v44);
    }

    v21 = *(v35 + 8 * v12);
    ++v20;
    if (v21)
    {
      v46 = (v21 - 1) & v21;
      v18 = __clz(__rbit64(v21)) | (v12 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_24AEC2264(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_24AEC1F08(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_24AEC22F4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = sub_24AEC5CDC();
  v54 = *(v58 - 8);
  v8 = MEMORY[0x28223BE20](v58);
  v57 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = v44 - v10;
  v11 = sub_24AEC5F7C();
  v53 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v56 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = v44 - v14;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01A0, &qword_24AEC8CB0);
  result = sub_24AEC662C();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v44[3] = v53 + 16;
  v45 = a2;
  v55 = v53 + 32;
  v19 = result + 64;
  v46 = a1;
  v44[0] = a4;
  v44[1] = v54 + 32;
  v44[2] = v54 + 16;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v49 = (v17 - 1) & v17;
LABEL_16:
    v23 = v20 | (v18 << 6);
    v24 = a4[6];
    v25 = v53;
    v52 = *(v53 + 72);
    v26 = v47;
    (*(v53 + 16))(v47, v24 + v52 * v23, v11);
    v27 = a4[7];
    v28 = v54;
    v51 = *(v54 + 72);
    v29 = v27 + v51 * v23;
    v30 = v11;
    v31 = v48;
    v32 = v58;
    (*(v54 + 16))(v48, v29, v58);
    v50 = *(v25 + 32);
    v50(v56, v26, v30);
    v33 = *(v28 + 32);
    v34 = v31;
    v11 = v30;
    v33(v57, v34, v32);
    sub_24AEC59BC(&qword_27EFC0178, MEMORY[0x277D09310], MEMORY[0x277D09318]);
    result = sub_24AEC62AC();
    v35 = -1 << *(v16 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a2 = v45;
      a1 = v46;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v19 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a2 = v45;
    a1 = v46;
LABEL_26:
    *(v19 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v50((*(v16 + 48) + v38 * v52), v56, v30);
    result = (v33)(*(v16 + 56) + v38 * v51, v57, v58);
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v44[0];
    v17 = v49;
    if (!a3)
    {
      return v16;
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v22 = a1[v18];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v49 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24AEC2798(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_24AEC5EEC();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_24AEC2A3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0258, &qword_24AEC8D68);
    v3 = sub_24AEC662C();
    v4 = a1 + 32;

    while (1)
    {
      sub_24AEC5A6C(v4, &v13, &unk_27EFC0260, &qword_24AEC8D70);
      v5 = v13;
      v6 = v14;
      result = sub_24AEC0A40(v13, v14, sub_24AEBF7A0);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24AEC5AD4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24AEC2B80(uint64_t a1, char a2)
{
  *(v3 + 192) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  *(v3 + 48) = swift_getObjectType();
  v4 = sub_24AEC5F4C();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v5 = sub_24AEC5CEC();
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 - 8);
  *(v3 + 104) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0220, &qword_24AEC8D28);
  *(v3 + 112) = v6;
  *(v3 + 120) = *(v6 - 8);
  *(v3 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEC2D20, 0, 0);
}

uint64_t sub_24AEC2D20()
{
  v16 = v0;
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v1 = sub_24AEC625C();
  *(v0 + 136) = __swift_project_value_buffer(v1, qword_280E21578);

  v2 = sub_24AEC623C();
  v3 = sub_24AEC645C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 192);
    v5 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446722;
    *(v6 + 4) = sub_24AEBFE20(0xD000000000000041, 0x800000024AEC7EC0, &v15);
    *(v6 + 12) = 2080;
    v8 = sub_24AEC52B4(0, &qword_280E214D0, off_278FFF8E8);
    v9 = MEMORY[0x24C234690](v5, v8);
    v11 = sub_24AEBFE20(v9, v10, &v15);

    *(v6 + 14) = v11;
    *(v6 + 22) = 1024;
    *(v6 + 24) = v4;
    _os_log_impl(&dword_24AE9B000, v2, v3, "%{public}s handles %s reverseGeocode: %{BOOL}d", v6, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C234F80](v7, -1, -1);
    MEMORY[0x24C234F80](v6, -1, -1);
  }

  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  *(v12 + 16) = *(v0 + 40);
  v13 = swift_task_alloc();
  *(v0 + 152) = v13;
  *v13 = v0;
  v13[1] = sub_24AEC2FB8;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEC2FB8()
{

  return MEMORY[0x2822009F8](sub_24AEC30D0, 0, 0);
}

uint64_t sub_24AEC30D0()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  *(v0 + 160) = v1;

  if (v1)
  {
    v2 = *(v0 + 32);
    if (v2 >> 62)
    {
      v3 = sub_24AEC65AC();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v30 = MEMORY[0x277D84F90];
      v5 = sub_24AEC03C8(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        __break(1u);
        return MEMORY[0x28215FB18](v5, v6, v7, v8);
      }

      v4 = v30;
      v9 = *(v0 + 64);
      if ((v2 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v3; ++i)
        {
          MEMORY[0x24C234830](i, *(v0 + 32));
          v11 = [swift_unknownObjectRetain() identifier];
          sub_24AEC62FC();

          sub_24AEC5F3C();
          swift_unknownObjectRelease_n();
          v13 = *(v30 + 16);
          v12 = *(v30 + 24);
          if (v13 >= v12 >> 1)
          {
            sub_24AEC03C8((v12 > 1), v13 + 1, 1);
          }

          v14 = *(v0 + 80);
          v15 = *(v0 + 56);
          *(v30 + 16) = v13 + 1;
          (*(v9 + 32))(v30 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v13, v14, v15);
        }
      }

      else
      {
        v21 = (*(v0 + 32) + 32);
        do
        {
          v22 = v3;
          v23 = *v21;
          v24 = [v23 identifier];
          sub_24AEC62FC();

          sub_24AEC5F3C();
          v26 = *(v30 + 16);
          v25 = *(v30 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_24AEC03C8((v25 > 1), v26 + 1, 1);
          }

          v27 = *(v0 + 72);
          v28 = *(v0 + 56);
          *(v30 + 16) = v26 + 1;
          (*(v9 + 32))(v30 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v26, v27, v28);
          ++v21;
          v3 = v22 - 1;
        }

        while (v22 != 1);
      }
    }

    *(v0 + 168) = v4;
    (*(*(v0 + 96) + 104))(*(v0 + 104), *MEMORY[0x277D08FC8], *(v0 + 88));
    v29 = swift_task_alloc();
    *(v0 + 176) = v29;
    *v29 = v0;
    v29[1] = sub_24AEC35B8;
    v5 = *(v0 + 128);
    v7 = *(v0 + 104);
    v8 = *(v0 + 192);
    v6 = v4;

    return MEMORY[0x28215FB18](v5, v6, v7, v8);
  }

  v16 = sub_24AEC623C();
  v17 = sub_24AEC644C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_24AE9B000, v16, v17, "Missing FindMyLocate.Session!", v18, 2u);
    MEMORY[0x24C234F80](v18, -1, -1);
  }

  type metadata accessor for FMLSessionError(0);
  *(v0 + 24) = 5;
  sub_24AEC2A3C(MEMORY[0x277D84F90]);
  sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);
  sub_24AEC5C8C();
  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_24AEC35B8()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);

  if (v0)
  {
    v3 = sub_24AEC3888;
  }

  else
  {
    v3 = sub_24AEC373C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_24AEC373C()
{
  v1 = v0[23];
  v2 = v0[16];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = &v4[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationRefreshTaskLock];
  os_unfair_lock_lock(&v4[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationRefreshTaskLock]);
  sub_24AEAA590(v6 + 1, v2, v5, v4, v3);
  if (v1)
  {

    os_unfair_lock_unlock(v6);
  }

  else
  {
    v8 = v0[15];
    v7 = v0[16];
    v9 = v0[14];
    os_unfair_lock_unlock(v6);

    (*(v8 + 8))(v7, v9);

    v10 = v0[1];

    v10();
  }
}

uint64_t sub_24AEC3888()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEC391C(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_24AEC393C, 0, 0);
}

uint64_t sub_24AEC393C()
{
  v15 = v0;
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v1 = sub_24AEC625C();
  __swift_project_value_buffer(v1, qword_280E21578);

  v2 = sub_24AEC623C();
  v3 = sub_24AEC645C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = sub_24AEC52B4(0, &qword_280E214D0, off_278FFF8E8);
    v8 = MEMORY[0x24C234690](v4, v7);
    v10 = sub_24AEBFE20(v8, v9, &v14);

    *(v5 + 4) = v10;
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C234F80](v6, -1, -1);
    MEMORY[0x24C234F80](v5, -1, -1);
  }

  v11 = v0[19];
  v0[2] = v0;
  v0[3] = sub_24AEC3B9C;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0218, &qword_24AEC8D20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24AEAC7C4;
  v0[13] = &block_descriptor_402;
  v0[14] = v12;
  [v11 stopRefreshingLocationWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24AEC3B9C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_24AEC3CC4;
  }

  else
  {
    v2 = sub_24AEC3CAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AEC3CC4(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_24AEC3D30(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0140, &qword_24AEC8A28) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24AEA5670;

  return sub_24AEB2C70(a1, v7, v8, v1 + v6, v9);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24AEC3EB4()
{
  result = qword_280E21528;
  if (!qword_280E21528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0110, &qword_24AEC8968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E21528);
  }

  return result;
}

uint64_t sub_24AEC3F60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24AEC4094()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AEA5670;

  return sub_24AEB9768(v2, v3, v5, v4);
}

uint64_t sub_24AEC4154()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AEA5670;

  return sub_24AEBF858(v2, v3, v4);
}

uint64_t sub_24AEC4214(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AEA5670;

  return sub_24AEBF940(a1, v4, v5, v6);
}

uint64_t sub_24AEC42E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AEA5670;

  return sub_24AEA4CC0(a1, v4);
}

uint64_t sub_24AEC4398()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AEA5670;

  return sub_24AEB8B8C(v2, v3, v5, v4);
}

uint64_t objectdestroy_102Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AEC44A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AEA5670;

  return sub_24AEB7D18(v2, v3, v5, v4);
}

uint64_t sub_24AEC4580()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AEA2D48;

  return sub_24AEB7578(v2, v3, v4);
}

uint64_t sub_24AEC4634()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AEA5670;

  return sub_24AEB50F8(v2, v3);
}

uint64_t sub_24AEC46E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AEA5670;

  return sub_24AEB43C8(v2, v3, v4);
}

uint64_t sub_24AEC4794()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AEA5670;

  return sub_24AEB3920(v2, v3);
}

uint64_t sub_24AEC4840()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AEA5670;

  return sub_24AEB2168(v2, v3);
}

uint64_t objectdestroy_134Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AEC492C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AEA5670;

  return sub_24AEB17B0(v2, v4, v3);
}

uint64_t sub_24AEC49E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AEA5670;

  return sub_24AEAD00C(v2, v3);
}

uint64_t sub_24AEC4A8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AEA5670;

  return sub_24AEACA0C(v2, v3, v4, v6, v5);
}

uint64_t objectdestroy_239Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AEC4B9C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24AEA5670;

  return sub_24AEAC60C(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_24AEC4C74()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AEA5670;

  return sub_24AEA9D80(v2, v3, v4, v6, v5);
}

uint64_t objectdestroy_269Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AEC4D8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AEA5670;

  return sub_24AEA8534(v2, v3, v4, v6, v5);
}

uint64_t sub_24AEC4E54()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24AEA5670;

  return sub_24AEA6DF0(v2, v3, v4, v5, v7, v6);
}

uint64_t objectdestroy_81Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_24AEC4F6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01C0, &qword_24AEC8CC8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01B0, &qword_24AEC8CC0);
    v7 = sub_24AEC662C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24AEC5A6C(v9, v5, &qword_27EFC01C0, &qword_24AEC8CC8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_24AEC0A40(*v5, v12, sub_24AEBF7A0);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_24AEC5EEC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24AEC518C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AEA2D48;

  return sub_24AEBDAE8(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_42Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AEC52B4(uint64_t a1, unint64_t *a2, void *a3)
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24AEC5340(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v5 | 7);
}

uint64_t sub_24AEC548C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0138, &qword_24AEC8A10) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24AEA5670;

  return sub_24AEADB6C(a1, v7, v8, v1 + v6, v9);
}

uint64_t sub_24AEC56BC()
{
  v1 = *(sub_24AEC5EEC() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_24AEB0D04(v2, v3);
}

uint64_t objectdestroy_347Tm()
{
  v1 = sub_24AEC5EEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AEC5808(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0220, &qword_24AEC8D28) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24AEA5670;

  return sub_24AEAA808(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t objectdestroy_149Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_24AEC59BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AEC5A6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_24AEC5AD4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}