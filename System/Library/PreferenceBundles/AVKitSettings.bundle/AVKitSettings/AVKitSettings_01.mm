uint64_t sub_23C0D1C0C()
{
  v1 = v0[58];
  v2 = sub_23C0E9760();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[60] + 8))(v0[61], v0[59]);
LABEL_8:

    v5 = v0[1];

    return v5();
  }

  Strong = swift_weakLoadStrong();
  v0[64] = Strong;
  if (!Strong)
  {
    (*(v0[60] + 8))(v0[61], v0[59]);
    goto LABEL_7;
  }

  v4 = Strong;
  if (sub_23C0E9C60())
  {
    (*(v0[60] + 8))(v0[61], v0[59]);

LABEL_7:
    sub_23C0DAAD8(v0[58], &qword_27E1EE988, &qword_23C0EAF00);
    goto LABEL_8;
  }

  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v7 = sub_23C0E9830();
  __swift_project_value_buffer(v7, qword_27E1EF4F8);

  v8 = sub_23C0E9820();
  v9 = sub_23C0E9C90();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v0[49] = v11;
    *v10 = 136315138;
    if (*(v4 + 24))
    {
      if (*(v4 + 24) == 1)
      {
        v12 = 0xE600000000000000;
        v13 = 0x7070412D6E49;
      }

      else
      {
        v12 = 0xE800000000000000;
        v13 = 0x73676E6974746553;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      v13 = 17219;
    }

    v14 = sub_23C0D8D20(v13, v12, v0 + 49);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_23C0B2000, v8, v9, "[%s] .AVInputContextInputDeviceDidChange received", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23EEC78E0](v11, -1, -1);
    MEMORY[0x23EEC78E0](v10, -1, -1);
  }

  v15 = *(v4 + 104);
  v0[65] = v15;

  return MEMORY[0x2822009F8](sub_23C0D1FC4, v15, 0);
}

uint64_t sub_23C0D1F38()
{
  *(v0 + 376) = *(v0 + 504);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE998, &qword_23C0EAF08);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_23C0D1FC4()
{
  v1 = *(v0 + 520);
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[19];
  *(v1 + 7) = 0u;
  *(v1 + 8) = 0u;
  *(v1 + 9) = 0u;
  sub_23C0B4E34(v2, v3, v4, v5, v6, v7);
  v8 = v1[20];
  v9 = v1[21];
  v10 = v1[22];
  v11 = v1[23];
  v12 = v1[24];
  v13 = v1[25];
  *(v1 + 10) = 0u;
  *(v1 + 11) = 0u;
  *(v1 + 12) = 0u;
  sub_23C0B4E34(v8, v9, v10, v11, v12, v13);
  v14 = v1[26];
  v15 = v1[27];
  v16 = v1[28];
  v17 = v1[29];
  v18 = v1[30];
  v19 = v1[31];
  *(v1 + 13) = 0u;
  *(v1 + 14) = 0u;
  *(v1 + 15) = 0u;
  sub_23C0B4E34(v14, v15, v16, v17, v18, v19);
  v1[32] = 0;

  v20 = v1[33];
  v21 = v1[34];
  v22 = v1[35];
  v23 = v1[36];
  v24 = v1[37];
  v25 = v1[38];
  *(v1 + 33) = 0u;
  *(v1 + 35) = 0u;
  *(v1 + 37) = 0u;
  sub_23C0B4E34(v20, v21, v22, v23, v24, v25);

  return MEMORY[0x2822009F8](sub_23C0D20A8, 0, 0);
}

uint64_t sub_23C0D20A8()
{
  v1 = *(v0[64] + 16);
  v0[66] = v1;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v0[67] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  sub_23C0E9BB0();

  return MEMORY[0x2822009F8](sub_23C0D216C, v1, 0);
}

uint64_t sub_23C0D216C()
{
  v50 = v0;
  v1 = *(v0 + 528);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {

    v3 = sub_23C0E6074(0xD000000000000027, 0x800000023C0ED5D0);
    if (v4)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v3, v0 + 16);

      sub_23C0B7660(v0 + 16, v0 + 176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
      if (swift_dynamicCast())
      {
        v5 = *(v0 + 384);
        *(v0 + 560) = v5;

        v6 = swift_task_alloc();
        *(v0 + 568) = v6;
        *v6 = v0;
        v6[1] = sub_23C0D2B48;
        v7 = MEMORY[0x277D84F78] + 8;
        v8 = v5;
        goto LABEL_24;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    }

    else
    {
    }
  }

  v9 = *(v0 + 536);
  v11 = *(v0 + 448);
  v10 = *(v0 + 456);
  v13 = *(v0 + 432);
  v12 = *(v0 + 440);
  v14 = *(v0 + 424);
  swift_beginAccess();
  sub_23C0E633C(0xD000000000000027, 0x800000023C0ED5D0, v0 + 56);
  sub_23C0DAAD8(v0 + 56, &qword_27E1EE9A0, &qword_23C0EB3F0);
  swift_endAccess();
  (*(v11 + 16))(v13, v10, v12);
  v47 = *(v11 + 56);
  v47(v13, 0, 1, v12);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23C0EAF68;
  v15[5] = v9;
  sub_23C0DA468(v13, v14);
  v48 = *(v11 + 48);
  v16 = v48(v14, 1, v12);

  if (v16 == 1)
  {
    sub_23C0DAAD8(*(v0 + 424), &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    v18 = *(v0 + 440);
    v17 = *(v0 + 448);
    v19 = *(v0 + 424);
    sub_23C0E9BC0();
    (*(v17 + 8))(v19, v18);
  }

  v20 = v15[2];
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = sub_23C0E9B40();
    v23 = v22;
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  sub_23C0DAAD8(*(v0 + 432), &qword_27E1EE890, &qword_23C0EA990);
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_23C0EAF70;
  *(v24 + 24) = v15;
  if (v23 | v21)
  {
    *(v0 + 216) = 0;
    *(v0 + 224) = 0;
    *(v0 + 232) = v21;
    *(v0 + 240) = v23;
  }

  v46 = *(v0 + 440);
  v25 = *(v0 + 408);
  v26 = *(v0 + 416);
  v27 = swift_task_create();
  *(v0 + 544) = v27;
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  *(v0 + 128) = &off_284EE15C0;
  *(v0 + 96) = v27;
  swift_beginAccess();
  sub_23C0DA5C8((v0 + 96), v0 + 136);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  v29 = v1;
  v30 = *(v0 + 160);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v30);
  v32 = *(v30 - 8);
  v33 = swift_task_alloc();
  (*(v32 + 16))(v33, v31, v30);
  sub_23C0D9430(*v33, 0xD000000000000027, 0x800000023C0ED5D0, isUniquelyReferenced_nonNull_native, &v49);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  *(v29 + 112) = v49;
  swift_endAccess();
  v47(v26, 1, 1, v46);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v27;
  v35[5] = v34;
  v35[6] = 0xD000000000000027;
  v35[7] = 0x800000023C0ED5D0;
  sub_23C0DA468(v26, v25);
  LODWORD(v29) = v48(v25, 1, v46);

  if (v29 == 1)
  {
    sub_23C0DAAD8(*(v0 + 408), &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    v36 = *(v0 + 440);
    v37 = *(v0 + 448);
    v38 = *(v0 + 408);
    sub_23C0E9BC0();
    (*(v37 + 8))(v38, v36);
  }

  v39 = v35[2];
  swift_unknownObjectRetain();

  if (v39)
  {
    swift_getObjectType();
    v40 = sub_23C0E9B40();
    v42 = v41;
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  sub_23C0DAAD8(*(v0 + 416), &qword_27E1EE890, &qword_23C0EA990);
  v43 = swift_allocObject();
  *(v43 + 16) = &unk_23C0EAF80;
  *(v43 + 24) = v35;
  if (v42 | v40)
  {
    *(v0 + 248) = 0;
    *(v0 + 256) = 0;
    *(v0 + 264) = v40;
    *(v0 + 272) = v42;
  }

  v44 = MEMORY[0x277D84F78];
  swift_task_create();

  v6 = swift_task_alloc();
  *(v0 + 552) = v6;
  *v6 = v0;
  v6[1] = sub_23C0D28CC;
  v7 = v44 + 8;
  v8 = v27;
LABEL_24:

  return MEMORY[0x282200460](v6, v8, v7);
}

uint64_t sub_23C0D28CC()
{
  v1 = *(*v0 + 528);

  return MEMORY[0x2822009F8](sub_23C0D29DC, v1, 0);
}

uint64_t sub_23C0D29DC()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_23C0D2A7C, 0, 0);
}

uint64_t sub_23C0D2A7C()
{
  v1 = v0[58];

  sub_23C0DAAD8(v1, &qword_27E1EE988, &qword_23C0EAF00);
  v2 = sub_23C0DA34C();
  v3 = swift_task_alloc();
  v0[62] = v3;
  *v3 = v0;
  v3[1] = sub_23C0D1ADC;
  v4 = v0[58];
  v5 = v0[59];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t sub_23C0D2B48()
{
  v1 = *(*v0 + 528);

  return MEMORY[0x2822009F8](sub_23C0D2C74, v1, 0);
}

uint64_t sub_23C0D2C74()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_23C0D2A7C, 0, 0);
}

uint64_t sub_23C0D2D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[50] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v5 = sub_23C0E9BD0();
  v4[55] = v5;
  v4[56] = *(v5 - 8);
  v4[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE988, &qword_23C0EAF00);
  v4[58] = swift_task_alloc();
  v6 = sub_23C0E9CB0();
  v4[59] = v6;
  v4[60] = *(v6 - 8);
  v4[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0D2EC8, 0, 0);
}

uint64_t sub_23C0D2EC8()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_23C0E9CC0();

  sub_23C0E9CA0();
  swift_beginAccess();
  v2 = sub_23C0DA34C();
  v3 = swift_task_alloc();
  v0[62] = v3;
  *v3 = v0;
  v3[1] = sub_23C0D2FE0;
  v4 = v0[58];
  v5 = v0[59];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t sub_23C0D2FE0()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_23C0DB06C;
  }

  else
  {
    v2 = sub_23C0D30F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23C0D3110()
{
  v1 = v0[58];
  v2 = sub_23C0E9760();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[60] + 8))(v0[61], v0[59]);
LABEL_8:

    v5 = v0[1];

    return v5();
  }

  Strong = swift_weakLoadStrong();
  v0[64] = Strong;
  if (!Strong)
  {
    (*(v0[60] + 8))(v0[61], v0[59]);
    goto LABEL_7;
  }

  v4 = Strong;
  if (sub_23C0E9C60())
  {
    (*(v0[60] + 8))(v0[61], v0[59]);

LABEL_7:
    sub_23C0DAAD8(v0[58], &qword_27E1EE988, &qword_23C0EAF00);
    goto LABEL_8;
  }

  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v7 = sub_23C0E9830();
  __swift_project_value_buffer(v7, qword_27E1EF4F8);

  v8 = sub_23C0E9820();
  v9 = sub_23C0E9C90();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v0[49] = v11;
    *v10 = 136315138;
    if (*(v4 + 24))
    {
      if (*(v4 + 24) == 1)
      {
        v12 = 0xE600000000000000;
        v13 = 0x7070412D6E49;
      }

      else
      {
        v12 = 0xE800000000000000;
        v13 = 0x73676E6974746553;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      v13 = 17219;
    }

    v14 = sub_23C0D8D20(v13, v12, v0 + 49);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_23C0B2000, v8, v9, "[%s] .mediaServicesWereResetNotification received", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23EEC78E0](v11, -1, -1);
    MEMORY[0x23EEC78E0](v10, -1, -1);
  }

  v15 = *(v4 + 48);
  *(v4 + 48) = 0;

  v16 = *(v4 + 16);
  v0[65] = v16;
  v0[66] = swift_allocObject();
  swift_weakInit();
  sub_23C0E9BB0();

  return MEMORY[0x2822009F8](sub_23C0D347C, v16, 0);
}

uint64_t sub_23C0D347C()
{
  v50 = v0;
  v1 = *(v0 + 520);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {

    v3 = sub_23C0E6074(0xD000000000000010, 0x800000023C0ED580);
    if (v4)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v3, v0 + 16);

      sub_23C0B7660(v0 + 16, v0 + 176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
      if (swift_dynamicCast())
      {
        v5 = *(v0 + 384);
        *(v0 + 552) = v5;

        v6 = swift_task_alloc();
        *(v0 + 560) = v6;
        *v6 = v0;
        v6[1] = sub_23C0D3E58;
        v7 = MEMORY[0x277D84F78] + 8;
        v8 = v5;
        goto LABEL_24;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    }

    else
    {
    }
  }

  v9 = *(v0 + 528);
  v11 = *(v0 + 448);
  v10 = *(v0 + 456);
  v13 = *(v0 + 432);
  v12 = *(v0 + 440);
  v14 = *(v0 + 424);
  swift_beginAccess();
  sub_23C0E633C(0xD000000000000010, 0x800000023C0ED580, v0 + 56);
  sub_23C0DAAD8(v0 + 56, &qword_27E1EE9A0, &qword_23C0EB3F0);
  swift_endAccess();
  (*(v11 + 16))(v13, v10, v12);
  v47 = *(v11 + 56);
  v47(v13, 0, 1, v12);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23C0EAF10;
  v15[5] = v9;
  sub_23C0DA468(v13, v14);
  v48 = *(v11 + 48);
  v16 = v48(v14, 1, v12);

  if (v16 == 1)
  {
    sub_23C0DAAD8(*(v0 + 424), &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    v18 = *(v0 + 440);
    v17 = *(v0 + 448);
    v19 = *(v0 + 424);
    sub_23C0E9BC0();
    (*(v17 + 8))(v19, v18);
  }

  v20 = v15[2];
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = sub_23C0E9B40();
    v23 = v22;
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  sub_23C0DAAD8(*(v0 + 432), &qword_27E1EE890, &qword_23C0EA990);
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_23C0EAF20;
  *(v24 + 24) = v15;
  if (v23 | v21)
  {
    *(v0 + 216) = 0;
    *(v0 + 224) = 0;
    *(v0 + 232) = v21;
    *(v0 + 240) = v23;
  }

  v46 = *(v0 + 440);
  v25 = *(v0 + 408);
  v26 = *(v0 + 416);
  v27 = swift_task_create();
  *(v0 + 536) = v27;
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  *(v0 + 128) = &off_284EE15C0;
  *(v0 + 96) = v27;
  swift_beginAccess();
  sub_23C0DA5C8((v0 + 96), v0 + 136);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  v29 = v1;
  v30 = *(v0 + 160);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v30);
  v32 = *(v30 - 8);
  v33 = swift_task_alloc();
  (*(v32 + 16))(v33, v31, v30);
  sub_23C0D9430(*v33, 0xD000000000000010, 0x800000023C0ED580, isUniquelyReferenced_nonNull_native, &v49);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  *(v29 + 112) = v49;
  swift_endAccess();
  v47(v26, 1, 1, v46);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v27;
  v35[5] = v34;
  v35[6] = 0xD000000000000010;
  v35[7] = 0x800000023C0ED580;
  sub_23C0DA468(v26, v25);
  LODWORD(v29) = v48(v25, 1, v46);

  if (v29 == 1)
  {
    sub_23C0DAAD8(*(v0 + 408), &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    v36 = *(v0 + 440);
    v37 = *(v0 + 448);
    v38 = *(v0 + 408);
    sub_23C0E9BC0();
    (*(v37 + 8))(v38, v36);
  }

  v39 = v35[2];
  swift_unknownObjectRetain();

  if (v39)
  {
    swift_getObjectType();
    v40 = sub_23C0E9B40();
    v42 = v41;
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  sub_23C0DAAD8(*(v0 + 416), &qword_27E1EE890, &qword_23C0EA990);
  v43 = swift_allocObject();
  *(v43 + 16) = &unk_23C0EAF38;
  *(v43 + 24) = v35;
  if (v42 | v40)
  {
    *(v0 + 248) = 0;
    *(v0 + 256) = 0;
    *(v0 + 264) = v40;
    *(v0 + 272) = v42;
  }

  v44 = MEMORY[0x277D84F78];
  swift_task_create();

  v6 = swift_task_alloc();
  *(v0 + 544) = v6;
  *v6 = v0;
  v6[1] = sub_23C0D3BDC;
  v7 = v44 + 8;
  v8 = v27;
LABEL_24:

  return MEMORY[0x282200460](v6, v8, v7);
}

uint64_t sub_23C0D3BDC()
{
  v1 = *(*v0 + 520);

  return MEMORY[0x2822009F8](sub_23C0D3CEC, v1, 0);
}

uint64_t sub_23C0D3CEC()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_23C0D3D8C, 0, 0);
}

uint64_t sub_23C0D3D8C()
{
  v1 = v0[58];

  sub_23C0DAAD8(v1, &qword_27E1EE988, &qword_23C0EAF00);
  v2 = sub_23C0DA34C();
  v3 = swift_task_alloc();
  v0[62] = v3;
  *v3 = v0;
  v3[1] = sub_23C0D2FE0;
  v4 = v0[58];
  v5 = v0[59];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t sub_23C0D3E58()
{
  v1 = *(*v0 + 520);

  return MEMORY[0x2822009F8](sub_23C0D3F84, v1, 0);
}

uint64_t sub_23C0D3F84()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_23C0D3D8C, 0, 0);
}

uint64_t sub_23C0D4028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE988, &qword_23C0EAF00);
  v4[13] = swift_task_alloc();
  v5 = sub_23C0E9CB0();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0D4120, 0, 0);
}

uint64_t sub_23C0D4120()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_23C0E9CC0();

  sub_23C0E9CA0();
  swift_beginAccess();
  v2 = sub_23C0DA34C();
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_23C0D4238;
  v4 = v0[13];
  v5 = v0[14];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t sub_23C0D4238()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_23C0D472C;
  }

  else
  {
    v2 = sub_23C0D434C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23C0D4368()
{
  v1 = v0[13];
  v2 = sub_23C0E9760();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
LABEL_8:

    v5 = v0[1];

    return v5();
  }

  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (!Strong)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    goto LABEL_7;
  }

  v4 = Strong;
  if (sub_23C0E9C60())
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

LABEL_7:
    sub_23C0DAAD8(v0[13], &qword_27E1EE988, &qword_23C0EAF00);
    goto LABEL_8;
  }

  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v7 = sub_23C0E9830();
  __swift_project_value_buffer(v7, qword_27E1EF4F8);

  v8 = sub_23C0E9820();
  v9 = sub_23C0E9C90();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v0[11] = v11;
    *v10 = 136315138;
    if (*(v4 + 24))
    {
      if (*(v4 + 24) == 1)
      {
        v12 = 0xE600000000000000;
        v13 = 0x7070412D6E49;
      }

      else
      {
        v12 = 0xE800000000000000;
        v13 = 0x73676E6974746553;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      v13 = 17219;
    }

    v14 = sub_23C0D8D20(v13, v12, v0 + 11);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_23C0B2000, v8, v9, "[%s] .AVInputContextCanSetInputGainDidChange received", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23EEC78E0](v11, -1, -1);
    MEMORY[0x23EEC78E0](v10, -1, -1);
  }

  __swift_project_boxed_opaque_existential_0((v4 + 144), *(v4 + 168));
  v16 = off_284EE0DC0 + *off_284EE0DC0;
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_23C0D47B8;

  return (v16)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
}

uint64_t sub_23C0D472C()
{
  *(v0 + 80) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE998, &qword_23C0EAF08);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_23C0D47B8()
{

  return MEMORY[0x2822009F8](sub_23C0D48B4, 0, 0);
}

uint64_t sub_23C0D48B4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  *(v0 + 192) = (*(v2 + 48))(v1, v2) & 1;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    *(v0 + 176) = sub_23C0E9B90();
    swift_unknownObjectRetain();
    *(v0 + 184) = sub_23C0E9B80();
    v5 = sub_23C0E9B40();

    return MEMORY[0x2822009F8](sub_23C0D4A58, v5, v4);
  }

  else
  {

    sub_23C0DAAD8(*(v0 + 104), &qword_27E1EE988, &qword_23C0EAF00);
    v6 = sub_23C0DA34C();
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_23C0D4238;
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);

    return MEMORY[0x282200308](v8, v9, v6);
  }
}

uint64_t sub_23C0D4A58()
{

  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 152);
  v3 = off_284EE1608;
  type metadata accessor for MicrophoneManager(0);
  v3(v2, v1);

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_23C0D4B78, 0, 0);
}

uint64_t sub_23C0D4B78()
{
  swift_unknownObjectRelease();

  sub_23C0DAAD8(v0[13], &qword_27E1EE988, &qword_23C0EAF00);
  v1 = sub_23C0DA34C();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_23C0D4238;
  v3 = v0[13];
  v4 = v0[14];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_23C0D4C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B8, &qword_23C0EAF50);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9C0, &qword_23C0EAF58);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE988, &qword_23C0EAF00);
  v4[19] = swift_task_alloc();
  v7 = sub_23C0E9CB0();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0D4E14, 0, 0);
}

uint64_t sub_23C0D4E14()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_23C0E9CC0();

  sub_23C0E9CA0();
  swift_beginAccess();
  v2 = sub_23C0DA34C();
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_23C0D4F2C;
  v4 = v0[19];
  v5 = v0[20];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t sub_23C0D4F2C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_23C0D5434;
  }

  else
  {
    v2 = sub_23C0D5040;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23C0D505C()
{
  v1 = v0[19];
  v2 = sub_23C0E9760();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
LABEL_8:

    v5 = v0[1];

    return v5();
  }

  Strong = swift_weakLoadStrong();
  v0[25] = Strong;
  if (!Strong)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
    goto LABEL_7;
  }

  v4 = Strong;
  if (sub_23C0E9C60())
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

LABEL_7:
    sub_23C0DAAD8(v0[19], &qword_27E1EE988, &qword_23C0EAF00);
    goto LABEL_8;
  }

  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v7 = sub_23C0E9830();
  __swift_project_value_buffer(v7, qword_27E1EF4F8);

  v8 = sub_23C0E9820();
  v9 = sub_23C0E9C90();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v0[11] = v11;
    *v10 = 136315138;
    if (*(v4 + 24))
    {
      if (*(v4 + 24) == 1)
      {
        v12 = 0xE600000000000000;
        v13 = 0x7070412D6E49;
      }

      else
      {
        v12 = 0xE800000000000000;
        v13 = 0x73676E6974746553;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      v13 = 17219;
    }

    v14 = sub_23C0D8D20(v13, v12, v0 + 11);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_23C0B2000, v8, v9, "[%s] .AVInputContextInputGainDidChange received", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23EEC78E0](v11, -1, -1);
    MEMORY[0x23EEC78E0](v10, -1, -1);
  }

  __swift_project_boxed_opaque_existential_0((v4 + 144), *(v4 + 168));
  v16 = off_284EE0DC0 + *off_284EE0DC0;
  v15 = swift_task_alloc();
  v0[26] = v15;
  *v15 = v0;
  v15[1] = sub_23C0D54C0;

  return (v16)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
}

uint64_t sub_23C0D5434()
{
  *(v0 + 80) = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE998, &qword_23C0EAF08);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_23C0D54C0()
{

  return MEMORY[0x2822009F8](sub_23C0D55BC, 0, 0);
}

uint64_t sub_23C0D55BC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  *(v0 + 244) = (*(v2 + 56))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 216) = Strong;
  if (Strong)
  {
    *(v0 + 224) = sub_23C0E9B90();
    swift_unknownObjectRetain();
    *(v0 + 232) = sub_23C0E9B80();
    v5 = sub_23C0E9B40();

    return MEMORY[0x2822009F8](sub_23C0D575C, v5, v4);
  }

  else
  {

    sub_23C0DAAD8(*(v0 + 152), &qword_27E1EE988, &qword_23C0EAF00);
    v6 = sub_23C0DA34C();
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_23C0D4F2C;
    v8 = *(v0 + 152);
    v9 = *(v0 + 160);

    return MEMORY[0x282200308](v8, v9, v6);
  }
}

uint64_t sub_23C0D575C()
{

  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = *(v0 + 244);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  (*(v7 + 16))(v4, *(v0 + 216) + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_inputGainContinuation, v6);
  *(v0 + 240) = v1;
  sub_23C0E9BE0();
  swift_unknownObjectRelease();
  (*(v7 + 8))(v4, v6);
  (*(v3 + 8))(v2, v5);

  return MEMORY[0x2822009F8](sub_23C0D58C4, 0, 0);
}

uint64_t sub_23C0D58C4()
{
  swift_unknownObjectRelease();

  sub_23C0DAAD8(v0[19], &qword_27E1EE988, &qword_23C0EAF00);
  v1 = sub_23C0DA34C();
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_23C0D4F2C;
  v3 = v0[19];
  v4 = v0[20];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_23C0D5998(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 736) = a3;
  *(v3 + 320) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9C8, &qword_23C0EAF90);
  *(v3 + 328) = v4;
  *(v3 + 336) = *(v4 - 8);
  *(v3 + 344) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9D0, &qword_23C0EAF98);
  *(v3 + 352) = v5;
  *(v3 + 360) = *(v5 - 8);
  *(v3 + 368) = swift_task_alloc();
  v6 = sub_23C0E9BD0();
  *(v3 + 376) = v6;
  *(v3 + 384) = *(v6 - 8);
  *(v3 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0D5B2C, 0, 0);
}

uint64_t sub_23C0D5B2C()
{
  v16 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[50] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_27E1EE790 != -1)
    {
      swift_once();
    }

    v3 = sub_23C0E9830();
    v0[51] = __swift_project_value_buffer(v3, qword_27E1EF4F8);

    v4 = sub_23C0E9820();
    v5 = sub_23C0E9C90();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315394;
      if (*(v2 + 24))
      {
        if (*(v2 + 24) == 1)
        {
          v8 = 0xE600000000000000;
          v9 = 0x7070412D6E49;
        }

        else
        {
          v8 = 0xE800000000000000;
          v9 = 0x73676E6974746553;
        }
      }

      else
      {
        v8 = 0xE200000000000000;
        v9 = 17219;
      }

      v12 = sub_23C0D8D20(v9, v8, &v15);

      *(v6 + 4) = v12;
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_23C0D8D20(0xD000000000000027, 0x800000023C0ED5D0, &v15);
      _os_log_impl(&dword_23C0B2000, v4, v5, "[%s] %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEC78E0](v7, -1, -1);
      MEMORY[0x23EEC78E0](v6, -1, -1);
    }

    __swift_project_boxed_opaque_existential_0((v2 + 144), *(v2 + 168));
    v14 = off_284EE0DC0 + *off_284EE0DC0;
    v13 = swift_task_alloc();
    v0[52] = v13;
    *v13 = v0;
    v13[1] = sub_23C0D5E90;

    return (v14)(v0 + 32, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_23C0D5E90()
{

  return MEMORY[0x2822009F8](sub_23C0D5F8C, 0, 0);
}

uint64_t sub_23C0D5F8C()
{
  v1 = v0[35];
  v2 = v0[36];
  __swift_project_boxed_opaque_existential_0(v0 + 32, v1);
  v5 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[53] = v3;
  *v3 = v0;
  v3[1] = sub_23C0D60B0;

  return v5(v1, v2);
}

uint64_t sub_23C0D60B0(uint64_t a1)
{
  *(*v1 + 432) = a1;

  return MEMORY[0x2822009F8](sub_23C0D61B0, 0, 0);
}

uint64_t sub_23C0D61B0()
{
  v1 = *(v0 + 432);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    sub_23C0DCD84(v1, (v0 + 160));
    v9 = *(v0 + 176);
    v10 = *(v0 + 160);
    v2 = *(v0 + 192);
    v3 = *(v0 + 200);

    *(v0 + 664) = v3;
    *(v0 + 656) = v2;
    *(v0 + 624) = v10;
    *(v0 + 640) = v9;
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 672) = v4;

    return MEMORY[0x2822009F8](sub_23C0D6A10, v4, 0);
  }

  else
  {
    v5 = *(v0 + 400);
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    if (*(v5 + 24) == 2)
    {
      v6 = swift_task_alloc();
      *(v0 + 440) = v6;
      *v6 = v0;
      v6[1] = sub_23C0D635C;

      return sub_23C0CBDF4(v0 + 112);
    }

    else
    {
      v7 = swift_task_alloc();
      *(v0 + 496) = v7;
      *v7 = v0;
      v7[1] = sub_23C0D64C4;

      return sub_23C0C7080(v0 + 64);
    }
  }
}

uint64_t sub_23C0D635C()
{
  v1 = *v0;

  v2 = v1[8];
  v1[28] = v1[7];
  v1[29] = v2;
  v1[30] = v1[9];

  return MEMORY[0x2822009F8](sub_23C0D6468, 0, 0);
}

uint64_t sub_23C0D6468()
{
  v1 = *(v0 + 456);
  if (v1)
  {
    v2 = *(v0 + 448);
    v3 = *(v0 + 480);
    *(v0 + 640) = *(v0 + 464);
    *(v0 + 656) = v3;
    *(v0 + 632) = v1;
    *(v0 + 624) = v2;
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 672) = v4;
    v5 = sub_23C0D6A10;
  }

  else
  {
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 552) = v4;
    v5 = sub_23C0D6640;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23C0D64C4()
{
  v1 = *v0;

  v2 = v1[5];
  *(v1 + 504) = v1[4];
  *(v1 + 520) = v2;
  *(v1 + 536) = v1[6];

  return MEMORY[0x2822009F8](sub_23C0D65E0, 0, 0);
}

uint64_t sub_23C0D65E0()
{
  v1 = *(v0 + 512);
  if (v1)
  {
    v2 = *(v0 + 504);
    v3 = *(v0 + 536);
    *(v0 + 640) = *(v0 + 520);
    *(v0 + 656) = v3;
    *(v0 + 632) = v1;
    *(v0 + 624) = v2;
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 672) = v4;
    v5 = sub_23C0D6A10;
  }

  else
  {
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 552) = v4;
    v5 = sub_23C0D6640;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23C0D6640()
{
  v1 = v0[69];
  v2 = v1[14];
  v0[70] = v2;
  v3 = v1[15];
  v0[71] = v3;
  v4 = v1[16];
  v0[72] = v4;
  v5 = v1[17];
  v0[73] = v5;
  v6 = v1[18];
  v0[74] = v6;
  v7 = v1[19];
  v0[75] = v7;
  sub_23C0B4DE4(v2, v3, v4, v5, v6, v7);

  return MEMORY[0x2822009F8](sub_23C0D66D8, 0, 0);
}

uint64_t sub_23C0D66D8()
{
  v1 = *(v0 + 568);
  if (v1)
  {
    v2 = *(v0 + 560);
    v3 = *(v0 + 592);
    *(v0 + 640) = *(v0 + 576);
    *(v0 + 656) = v3;
    *(v0 + 632) = v1;
    *(v0 + 624) = v2;
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 672) = v4;

    return MEMORY[0x2822009F8](sub_23C0D6A10, v4, 0);
  }

  else
  {
    v5 = swift_allocObject();
    *(v0 + 608) = v5;
    swift_weakInit();
    sub_23C0E9BB0();
    v6 = swift_task_alloc();
    *(v0 + 616) = v6;
    *v6 = v0;
    v6[1] = sub_23C0D6864;
    v7 = *(v0 + 392);

    return sub_23C0E0914(v0 + 16, 0x6B6361626C6C6166, 0xEF29286574756F52, v7, &unk_23C0EAB30, v5);
  }
}

uint64_t sub_23C0D6864()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 376);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_23C0D69D8, 0, 0);
}

uint64_t sub_23C0D69D8()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v0 + 664) = *(v0 + 56);
  *(v0 + 656) = v1;
  *(v0 + 624) = v3;
  *(v0 + 640) = v2;
  v4 = *(*(v0 + 400) + 104);
  *(v0 + 672) = v4;
  return MEMORY[0x2822009F8](sub_23C0D6A10, v4, 0);
}

uint64_t sub_23C0D6A10()
{
  v1 = v0[84];
  v2 = v1[33];
  v0[85] = v2;
  v3 = v1[34];
  v0[86] = v3;
  v4 = v1[35];
  v5 = v1[36];
  v0[87] = v5;
  v6 = v1[37];
  v7 = v1[38];
  v0[88] = v7;
  sub_23C0B4DE4(v2, v3, v4, v5, v6, v7);

  return MEMORY[0x2822009F8](sub_23C0D6A98, 0, 0);
}

uint64_t sub_23C0D6A98()
{
  v1 = *(v0 + 688);
  if (v1)
  {
    if (*(v0 + 680) == *(v0 + 624) && v1 == *(v0 + 632))
    {

      goto LABEL_14;
    }

    v3 = sub_23C0E9D90();

    if (v3)
    {
      goto LABEL_14;
    }
  }

  else if (!*(v0 + 632))
  {
LABEL_14:
    sub_23C0B4E34(*(v0 + 624), *(v0 + 632), *(v0 + 640), *(v0 + 648), *(v0 + 656), *(v0 + 664));

    v5 = *(v0 + 8);

    return v5();
  }

  if (*(v0 + 736))
  {
    goto LABEL_14;
  }

  v4 = *(*(v0 + 400) + 104);
  *(v0 + 712) = v4;

  return MEMORY[0x2822009F8](sub_23C0D6C14, v4, 0);
}

uint64_t sub_23C0D6C14()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 664);
  v3 = *(v0 + 624);
  v4 = v1[33];
  v5 = v1[34];
  v6 = v1[35];
  v7 = v1[36];
  v8 = v1[37];
  v9 = v1[38];
  v10 = *(v0 + 648);
  *(v1 + 17) = *(v0 + 632);
  *(v1 + 18) = v10;
  v1[33] = v3;
  v1[38] = v2;

  sub_23C0B4E34(v4, v5, v6, v7, v8, v9);

  return MEMORY[0x2822009F8](sub_23C0D6D00, 0, 0);
}

uint64_t sub_23C0D6D00()
{
  v22 = v0;

  v1 = sub_23C0E9820();
  v2 = sub_23C0E9C90();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[50];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315394;
    v18 = v2;
    v17 = v5;
    if (*(v3 + 24))
    {
      if (*(v3 + 24) == 1)
      {
        v6 = 0xE600000000000000;
        v7 = 0x7070412D6E49;
      }

      else
      {
        v6 = 0xE800000000000000;
        v7 = 0x73676E6974746553;
      }
    }

    else
    {
      v6 = 0xE200000000000000;
      v7 = 17219;
    }

    v8 = v0[81];
    v9 = v0[80];
    v10 = v0[79];
    v11 = v0[78];
    v12 = sub_23C0D8D20(v7, v6, &v19);

    *(v4 + 4) = v12;
    *(v4 + 12) = 2080;
    v20 = v11;
    v21 = v10;
    swift_bridgeObjectRetain_n();

    MEMORY[0x23EEC6F40](45, 0xE100000000000000);
    MEMORY[0x23EEC6F40](v9, v8);

    v13 = sub_23C0D8D20(v20, v21, &v19);

    *(v4 + 14) = v13;
    _os_log_impl(&dword_23C0B2000, v1, v18, "[%s] attempting to render new picked device: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v17, -1, -1);
    MEMORY[0x23EEC78E0](v4, -1, -1);
  }

  v0[90] = sub_23C0E9B90();
  v0[91] = sub_23C0E9B80();
  v15 = sub_23C0E9B40();

  return MEMORY[0x2822009F8](sub_23C0D6FBC, v15, v14);
}

uint64_t sub_23C0D6FBC()
{

  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 664);
  if (Strong)
  {
    v3 = *(v0 + 656);
    v10 = *(v0 + 624);
    v11 = *(v0 + 640);
    v5 = *(v0 + 360);
    v4 = *(v0 + 368);
    v6 = *(v0 + 344);
    v12 = *(v0 + 352);
    v8 = *(v0 + 328);
    v7 = *(v0 + 336);
    (*(v7 + 16))(v6, Strong + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_selectedMicrophoneContinuation, v8);
    *(v0 + 208) = v10;
    *(v0 + 224) = v11;
    *(v0 + 240) = v3;
    *(v0 + 248) = v2;
    sub_23C0E9BE0();
    swift_unknownObjectRelease();
    (*(v7 + 8))(v6, v8);
    (*(v5 + 8))(v4, v12);
  }

  else
  {
  }

  return MEMORY[0x2822009F8](sub_23C0D7180, 0, 0);
}

uint64_t sub_23C0D7180()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C0D7200(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE970, &unk_23C0EB530);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE978, &qword_23C0EAE40);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0D7334, 0, 0);
}

uint64_t sub_23C0D7334()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_23C0D7430;

    return sub_23C0D7E18();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_23C0D7430(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_23C0D7530, 0, 0);
}

uint64_t sub_23C0D7530()
{
  v1 = *(*(v0 + 104) + 104);
  *(v0 + 128) = v1;
  return MEMORY[0x2822009F8](sub_23C0D7554, v1, 0);
}

uint64_t sub_23C0D7554()
{
  *(v0 + 136) = *(*(v0 + 128) + 256);

  return MEMORY[0x2822009F8](sub_23C0D75C8, 0, 0);
}

uint64_t sub_23C0D75C8()
{
  v16 = v0;
  if (v0[17] && (v1 = sub_23C0D8C90(v0[17], v0[15]), , (v1 & 1) != 0) || !*(v0[15] + 16))
  {

    if (qword_27E1EE790 != -1)
    {
      swift_once();
    }

    v3 = sub_23C0E9830();
    __swift_project_value_buffer(v3, qword_27E1EF4F8);

    v4 = sub_23C0E9820();
    v5 = sub_23C0E9C90();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[13];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      if (*(v7 + 24))
      {
        if (*(v7 + 24) == 1)
        {
          v10 = 0xE600000000000000;
          v11 = 0x7070412D6E49;
        }

        else
        {
          v10 = 0xE800000000000000;
          v11 = 0x73676E6974746553;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        v11 = 17219;
      }

      v12 = sub_23C0D8D20(v11, v10, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_23C0B2000, v4, v5, "[%s] availableInputDevices is empty", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x23EEC78E0](v9, -1, -1);
      MEMORY[0x23EEC78E0](v8, -1, -1);
    }

    else
    {
    }

    v13 = v0[1];

    return v13();
  }

  else
  {
    v2 = *(v0[13] + 104);
    v0[18] = v2;

    return MEMORY[0x2822009F8](sub_23C0D784C, v2, 0);
  }
}

uint64_t sub_23C0D784C()
{
  sub_23C0BECB0();

  return MEMORY[0x2822009F8](sub_23C0D78B4, 0, 0);
}

uint64_t sub_23C0D78B4()
{
  v1 = *(*(v0 + 104) + 104);
  *(v0 + 152) = v1;

  return MEMORY[0x2822009F8](sub_23C0D792C, v1, 0);
}

uint64_t sub_23C0D792C()
{
  *(*(v0 + 152) + 256) = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_23C0D79B0, 0, 0);
}

uint64_t sub_23C0D79B0()
{
  v18 = v0;
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v1 = sub_23C0E9830();
  __swift_project_value_buffer(v1, qword_27E1EF4F8);

  v2 = sub_23C0E9820();
  v3 = sub_23C0E9C90();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[13];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315394;
    if (*(v4 + 24))
    {
      if (*(v4 + 24) == 1)
      {
        v7 = 0xE600000000000000;
        v8 = 0x7070412D6E49;
      }

      else
      {
        v7 = 0xE800000000000000;
        v8 = 0x73676E6974746553;
      }
    }

    else
    {
      v7 = 0xE200000000000000;
      v8 = 17219;
    }

    v9 = v0[15];
    v10 = sub_23C0D8D20(v8, v7, &v17);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    v11 = MEMORY[0x23EEC7000](v9, &type metadata for InputPickerMicrophone);
    v13 = sub_23C0D8D20(v11, v12, &v17);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_23C0B2000, v2, v3, "[%s] discoverySession or fakeDiscoverySession new routes: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v6, -1, -1);
    MEMORY[0x23EEC78E0](v5, -1, -1);
  }

  v0[20] = sub_23C0E9B90();
  v0[21] = sub_23C0E9B80();
  v15 = sub_23C0E9B40();

  return MEMORY[0x2822009F8](sub_23C0D7C1C, v15, v14);
}

uint64_t sub_23C0D7C1C()
{

  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[15];
  if (Strong)
  {
    v4 = v0[11];
    v3 = v0[12];
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[7];
    v8 = v0[8];
    (*(v8 + 16))(v6, Strong + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_availableMicrophonesContinuation, v7);
    v0[5] = v2;
    sub_23C0E9BE0();
    swift_unknownObjectRelease();
    (*(v8 + 8))(v6, v7);
    (*(v4 + 8))(v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2822009F8](sub_23C0D7DA4, 0, 0);
}

uint64_t sub_23C0D7DA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C0D7E38()
{
  v1 = *(v0[14] + 128);
  v0[15] = v1;
  v2 = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
  v0[17] = v4;
  *v3 = v0;
  v3[1] = sub_23C0D7F0C;

  return MEMORY[0x282200460](v0 + 10, v2, v4);
}

uint64_t sub_23C0D7F0C()
{

  return MEMORY[0x2822009F8](sub_23C0D8008, 0, 0);
}

uint64_t sub_23C0D8008()
{
  v59 = v0;
  v1 = v0;

  v2 = v0[10];
  v3 = [v2 availableInputDevices];

  v1[18] = sub_23C0D9D08(0, &qword_27E1EE980, 0x277CB8688);
  v4 = sub_23C0E9B20();

  if (v4 >> 62)
  {
    v5 = sub_23C0E9D40();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v58 = MEMORY[0x277D84F90];
      sub_23C0D92F0(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
        __break(1u);
        goto LABEL_47;
      }

      v6 = 0;
      v7 = v58;
      v53 = v1;
      v54 = v4 & 0xC000000000000001;
      v55 = v5;
      v56 = v4;
      while (1)
      {
        if (v54)
        {
          v8 = MEMORY[0x23EEC71F0](v6, v4);
        }

        else
        {
          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = [v8 deviceID];
        if (v10)
        {
          v11 = v10;
          v12 = sub_23C0E9A10();
          v14 = v13;

          v1[8] = v12;
          v1[9] = v14;
          v15 = sub_23C0E9AF0();
        }

        else
        {
          v1[11] = v9;
          v15 = sub_23C0E9A30();
        }

        v57 = v15;
        v17 = v16;
        v18 = [v9 deviceName];
        if (v18)
        {
          v19 = v18;
          v20 = sub_23C0E9A10();
          v22 = v21;

          v1[6] = v20;
          v1[7] = v22;
          v23 = sub_23C0E9AF0();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0xE000000000000000;
        }

        v26 = sub_23C0DB4B4(v9);
        if ((v26 & 0x100000000) != 0)
        {
          goto LABEL_19;
        }

        v27 = v26;
        if (!CBProductIDIsAppleHeadphone(v26))
        {
          goto LABEL_19;
        }

        v28 = [objc_opt_self() productInfoWithProductID_];
        v29 = [v28 sfSymbolNameMain];
        if (!v29)
        {
          break;
        }

        v30 = v29;
        v31 = sub_23C0E9A10();
        v33 = v32;

        v1 = v53;
LABEL_26:
        v58 = v7;
        v36 = *(v7 + 16);
        v35 = *(v7 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_23C0D92F0((v35 > 1), v36 + 1, 1);
          v7 = v58;
        }

        ++v6;
        *(v7 + 16) = v36 + 1;
        v37 = (v7 + 48 * v36);
        v37[4] = v57;
        v37[5] = v17;
        v37[6] = v23;
        v37[7] = v25;
        v37[8] = v31;
        v37[9] = v33;
        v4 = v56;
        if (v55 == v6)
        {

          if (*(v7 + 16))
          {
            goto LABEL_30;
          }

LABEL_35:

          if (qword_27E1EE790 == -1)
          {
LABEL_36:
            v40 = sub_23C0E9830();
            __swift_project_value_buffer(v40, qword_27E1EF4F8);

            v41 = sub_23C0E9820();
            v42 = sub_23C0E9C90();

            if (os_log_type_enabled(v41, v42))
            {
              v43 = v1[14];
              v44 = swift_slowAlloc();
              v45 = swift_slowAlloc();
              v58 = v45;
              *v44 = 136315138;
              if (*(v43 + 24))
              {
                if (*(v43 + 24) == 1)
                {
                  v46 = 0xE600000000000000;
                  v47 = 0x7070412D6E49;
                }

                else
                {
                  v46 = 0xE800000000000000;
                  v47 = 0x73676E6974746553;
                }
              }

              else
              {
                v46 = 0xE200000000000000;
                v47 = 17219;
              }

              v48 = sub_23C0D8D20(v47, v46, &v58);

              *(v44 + 4) = v48;
              _os_log_impl(&dword_23C0B2000, v41, v42, "[%s] looking in to fakeSession routes", v44, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v45);
              MEMORY[0x23EEC78E0](v45, -1, -1);
              MEMORY[0x23EEC78E0](v44, -1, -1);
            }

            v49 = *(v1[14] + 136);
            v1[19] = v49;
            v50 = *(v49 + 16);

            v51 = swift_task_alloc();
            v1[20] = v51;
            *v51 = v1;
            v51[1] = sub_23C0D8604;
            v52 = v1[17];

            return MEMORY[0x282200460](v1 + 12, v50, v52);
          }

LABEL_47:
          swift_once();
          goto LABEL_36;
        }
      }

      v1 = v53;
LABEL_19:
      v34 = [v9 deviceType];

      if (v34)
      {
        if (v34 == 3)
        {
          v31 = 0x6F632E656C626163;
          v33 = 0xED00006C61697861;
        }

        else if (v34 == 1)
        {
          v33 = 0xE700000000000000;
          v31 = 0x6E692E656E696CLL;
        }

        else
        {
          v31 = 0x6F68706F7263696DLL;
          v33 = 0xEF6C6C69662E656ELL;
        }
      }

      else
      {
        v33 = 0xE700000000000000;
        v31 = 0x73647562726165;
      }

      goto LABEL_26;
    }
  }

  v7 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_35;
  }

LABEL_30:
  v38 = v1[1];

  return v38(v7);
}

uint64_t sub_23C0D8604()
{

  return MEMORY[0x2822009F8](sub_23C0D8700, 0, 0);
}

char *sub_23C0D8700()
{

  v1 = v0[12];
  v2 = [v1 availableInputDevices];

  v3 = sub_23C0E9B20();
  if (v3 >> 62)
  {
    v4 = sub_23C0E9D40();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_31:

    v7 = MEMORY[0x277D84F90];
LABEL_32:
    v37 = v0[1];

    return v37(v7);
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_31;
  }

LABEL_3:
  v43 = MEMORY[0x277D84F90];
  result = sub_23C0D92F0(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v43;
    v38 = v3;
    v39 = v3 & 0xC000000000000001;
    v40 = v4;
    while (1)
    {
      if (v39)
      {
        v8 = MEMORY[0x23EEC71F0](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 deviceID];
      if (v10)
      {
        v11 = v10;
        v12 = sub_23C0E9A10();
        v14 = v13;

        v0[4] = v12;
        v0[5] = v14;
        v15 = sub_23C0E9AF0();
      }

      else
      {
        v0[13] = v9;
        v15 = sub_23C0E9A30();
      }

      v41 = v16;
      v42 = v15;
      v17 = [v9 deviceName];
      if (v17)
      {
        v18 = v17;
        v19 = sub_23C0E9A10();
        v21 = v20;

        v0[2] = v19;
        v0[3] = v21;
        v22 = sub_23C0E9AF0();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0xE000000000000000;
      }

      v25 = sub_23C0DB4B4(v9);
      if ((v25 & 0x100000000) != 0)
      {
        goto LABEL_19;
      }

      v26 = v25;
      if (!CBProductIDIsAppleHeadphone(v25))
      {
        goto LABEL_19;
      }

      v27 = [objc_opt_self() productInfoWithProductID_];
      v28 = [v27 sfSymbolNameMain];
      if (!v28)
      {
        break;
      }

      v29 = v28;
      v30 = sub_23C0E9A10();
      v32 = v31;

      v3 = v38;
LABEL_26:
      v35 = *(v43 + 16);
      v34 = *(v43 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_23C0D92F0((v34 > 1), v35 + 1, 1);
      }

      ++v6;
      *(v43 + 16) = v35 + 1;
      v36 = (v43 + 48 * v35);
      v36[4] = v42;
      v36[5] = v41;
      v36[6] = v22;
      v36[7] = v24;
      v36[8] = v30;
      v36[9] = v32;
      if (v40 == v6)
      {

        goto LABEL_32;
      }
    }

    v3 = v38;
LABEL_19:
    v33 = [v9 deviceType];

    if (v33)
    {
      if (v33 == 3)
      {
        v30 = 0x6F632E656C626163;
        v32 = 0xED00006C61697861;
      }

      else if (v33 == 1)
      {
        v32 = 0xE700000000000000;
        v30 = 0x6E692E656E696CLL;
      }

      else
      {
        v30 = 0x6F68706F7263696DLL;
        v32 = 0xEF6C6C69662E656ELL;
      }
    }

    else
    {
      v32 = 0xE700000000000000;
      v30 = 0x73647562726165;
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C0D8AC4()
{
  v1 = v0;
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v2 = sub_23C0E9830();
  __swift_project_value_buffer(v2, qword_27E1EF4F8);
  v3 = sub_23C0E9820();
  v4 = sub_23C0E9C90();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23C0B2000, v3, v4, "[deinit] AVRoutingInputController deinit", v5, 2u);
    MEMORY[0x23EEC78E0](v5, -1, -1);
  }

  sub_23C0D92C8(v1 + 32);

  __swift_destroy_boxed_opaque_existential_0((v1 + 144));
  return v1;
}

uint64_t sub_23C0D8C14()
{
  sub_23C0D8AC4();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t sub_23C0D8C90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 6)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_23C0E9D90() & 1) == 0)
      {
        break;
      }

      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_23C0D8D20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23C0D8DEC(v11, 0, 0, 1, a1, a2);
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
    sub_23C0B5EBC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23C0D8DEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23C0D8EF8(a5, a6);
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
    result = sub_23C0E9D30();
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

void *sub_23C0D8EF8(uint64_t a1, unint64_t a2)
{
  v3 = sub_23C0D8F44(a1, a2);
  sub_23C0D9074(&unk_284EE09E8);
  return v3;
}

void *sub_23C0D8F44(uint64_t a1, unint64_t a2)
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

  v6 = sub_23C0D9160(v5, 0);
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

  result = sub_23C0E9D30();
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
        v10 = sub_23C0E9A80();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23C0D9160(v10, 0);
        result = sub_23C0E9D10();
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

uint64_t sub_23C0D9074(uint64_t result)
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

  result = sub_23C0D91D4(result, v11, 1, v3);
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

void *sub_23C0D9160(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE968, &qword_23C0EADE8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23C0D91D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE968, &qword_23C0EADE8);
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

char *sub_23C0D92F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C0D9310(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23C0D9310(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE8B8, &qword_23C0EAE50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23C0D9430(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  v30 = v10;
  v31 = &off_284EE15C0;
  *&v29 = a1;
  v11 = *a5;
  v13 = sub_23C0E6074(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_23C0DA5C8(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_23C0E6868();
    goto LABEL_7;
  }

  sub_23C0E63E8(v16, a4 & 1);
  v22 = sub_23C0E6074(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_23C0E9DA0();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_23C0D9634(v13, a2, a3, *v26, v19);

  return __swift_destroy_boxed_opaque_existential_0(&v29);
}

uint64_t sub_23C0D9634(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  v17 = &off_284EE15C0;
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_23C0DA5C8(&v15, a5[7] + 40 * a1);
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

uint64_t sub_23C0D96F0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23C0D9714, 0, 0);
}

uint64_t sub_23C0D9714()
{
  v1 = *(v0[6] + 128);
  v0[7] = v1;
  v2 = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
  v0[9] = v4;
  *v3 = v0;
  v3[1] = sub_23C0D97E8;

  return MEMORY[0x282200460](v0 + 2, v2, v4);
}

uint64_t sub_23C0D97E8()
{

  return MEMORY[0x2822009F8](sub_23C0D98E4, 0, 0);
}

uint64_t sub_23C0D98E4()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[2];
  v0[10] = v3;
  v4 = sub_23C0DC604(v3, v2, v1);
  if (v4)
  {
    v5 = v4;

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    v8 = *(v0[6] + 136);
    v0[11] = v8;
    v9 = *(v8 + 16);

    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_23C0D9A0C;
    v11 = v0[9];

    return MEMORY[0x282200460](v0 + 3, v9, v11);
  }
}

uint64_t sub_23C0D9A0C()
{

  return MEMORY[0x2822009F8](sub_23C0D9B08, 0, 0);
}

uint64_t sub_23C0D9B08()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = v0[5];

  v4 = v0[3];
  v5 = sub_23C0DC604(v4, v2, v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_23C0D9B98()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23C0D9BD0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C0B7B5C;

  return sub_23C0CB700(a1, v1);
}

uint64_t sub_23C0D9C6C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C0B7B5C;

  return sub_23C0D7200(a1, v1);
}

uint64_t sub_23C0D9D08(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_23C0D9D78(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C0B7B5C;

  return sub_23C0CC0FC(a1, v1);
}

uint64_t sub_23C0D9E14(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C0B7B5C;

  return sub_23C0C138C(a1, v1);
}

uint64_t sub_23C0D9EB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23C0B7B5C;

  return sub_23C0CE990(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_67Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23C0D9FBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23C0B7B5C;

  return sub_23C0D008C(a1, v4, v5, v7, v6);
}

uint64_t sub_23C0DA07C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0D1814(a1, v4, v5, v6);
}

uint64_t sub_23C0DA130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0D4028(a1, v4, v5, v6);
}

uint64_t sub_23C0DA1E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0D4C4C(a1, v4, v5, v6);
}

uint64_t sub_23C0DA298(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0D2D18(a1, v4, v5, v6);
}

unint64_t sub_23C0DA34C()
{
  result = qword_27E1EE990;
  if (!qword_27E1EE990)
  {
    sub_23C0E9CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE990);
  }

  return result;
}

uint64_t sub_23C0DA3A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0E2318(a1, v4, v5, v6);
}

uint64_t sub_23C0DA468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C0DA4D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23C0DA510(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C0B7B5C;

  return sub_23C0E5E84(a1, v4);
}

uint64_t sub_23C0DA5C8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23C0DA5E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23C0B7B5C;

  return sub_23C0E2E4C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_23C0DA6B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C0B7A50;

  return sub_23C0E5E84(a1, v4);
}

uint64_t sub_23C0DA770()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_23C0DA7A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23C0B7B5C;

  return sub_23C0D5998(a1, v4, v5);
}

uint64_t sub_23C0DA858(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C0B7B5C;

  return sub_23C0C9954(a1, v1);
}

uint64_t objectdestroy_106Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_117Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23C0DA984(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C0B7A50;

  return sub_23C0C9954(a1, v1);
}

uint64_t sub_23C0DAA24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0CE758(a1, v4, v5, v6);
}

uint64_t sub_23C0DAAD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23C0DAB38()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23C0B7B5C;

  return sub_23C0CCEF0(v0);
}

uint64_t sub_23C0DABC8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23C0B7B5C;

  return sub_23C0CDA84(v0);
}

uint64_t sub_23C0DAC58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C0B7B5C;

  return sub_23C0C9514(a1, v4);
}

uint64_t sub_23C0DAD10()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23C0DAD48()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23C0B7B5C;

  return sub_23C0CE2F0(v2);
}

uint64_t sub_23C0DADE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23C0B7B5C;

  return sub_23C0C7BF4(v2, v3);
}

uint64_t objectdestroy_308Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23C0DAEB8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23C0B7B5C;

  return sub_23C0C8B34(v2, v3);
}

uint64_t sub_23C0DAF50()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23C0B7B5C;

  return sub_23C0C95FC(v2);
}

uint64_t getEnumTagSinglePayload for InputPickerContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InputPickerContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23C0DB200(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23C0DB248(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_23C0DB2A8()
{
  result = qword_27E1EE9F8;
  if (!qword_27E1EE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE9F8);
  }

  return result;
}

uint64_t sub_23C0DB2FC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_23C0DB308(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23C0E9D90();
  }
}

uint64_t sub_23C0DB338()
{
  sub_23C0E9DC0();
  sub_23C0E9A60();
  sub_23C0E9A60();
  sub_23C0E9A60();
  return sub_23C0E9DE0();
}

uint64_t sub_23C0DB3BC(uint64_t a1)
{
  sub_23C0E9A60();
  sub_23C0E9A60();

  return sub_23C0E9A60();
}

uint64_t sub_23C0DB428(uint64_t a1)
{
  sub_23C0E9DC0();
  sub_23C0E9A60();
  sub_23C0E9A60();
  sub_23C0E9A60();
  return sub_23C0E9DE0();
}

unint64_t sub_23C0DB4B4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEA08, &qword_23C0EB330);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEA10, &qword_23C0EB338);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEA18, &qword_23C0EB340);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = [a1 modelID];
  if (!v16)
  {
    goto LABEL_4;
  }

  v30 = v8;
  v32 = v5;
  v33 = v6;
  v17 = v16;
  sub_23C0E9A10();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEA20, &qword_23C0EB348);
  sub_23C0E97F0();
  sub_23C0E9B00();

  sub_23C0DCEB4();
  v31 = v15;
  sub_23C0E97E0();
  sub_23C0E9800();
  v18 = *(v10 + 8);
  v18(v13, v9);

  v20 = v32;
  v19 = v33;
  if ((*(v33 + 48))(v4, 1, v32) == 1)
  {
    v18(v31, v9);
    sub_23C0DCF18(v4);
LABEL_4:
    v21 = 0;
    LOBYTE(v22) = 1;
    return v21 | ((v22 & 1) << 32);
  }

  (*(v19 + 32))(v30, v4, v20);
  swift_getKeyPath();
  sub_23C0E9810();

  v24 = v34;
  v25 = v35;
  v26 = v37;
  if (!((v35 ^ v34) >> 14))
  {
    (*(v33 + 8))(v30, v20);
    v18(v31, v9);

    goto LABEL_4;
  }

  v27 = v36;
  v28 = sub_23C0DC53C(v34, v35, v36, v37, 10);
  if ((v28 & 0x10000000000) != 0)
  {
    v28 = sub_23C0DBB40(v24, v25, v27, v26, 10);
  }

  (*(v33 + 8))(v30, v20);
  v18(v31, v9);

  v22 = (v28 & 0x100000000uLL) >> 32;
  v21 = v28;
  if ((v28 & 0x100000000) != 0)
  {
    v21 = 0;
  }

  return v21 | ((v22 & 1) << 32);
}

uint64_t sub_23C0DB970()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x23EEC6F40](45, 0xE100000000000000);
  MEMORY[0x23EEC6F40](v1, v2);
  return v4;
}

uint64_t sub_23C0DB9E4()
{
  v1 = *v0;
  sub_23C0E9DC0();
  MEMORY[0x23EEC72A0](v1);
  return sub_23C0E9DE0();
}

uint64_t sub_23C0DBA58(uint64_t a1)
{
  v2 = *v1;
  sub_23C0E9DC0();
  MEMORY[0x23EEC72A0](v2);
  return sub_23C0E9DE0();
}

uint64_t sub_23C0DBA9C()
{
  v1 = 0x7070412D6E49;
  if (*v0 != 1)
  {
    v1 = 0x73676E6974746553;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 17219;
  }
}

unint64_t sub_23C0DBAEC()
{
  result = qword_27E1EEA00;
  if (!qword_27E1EEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EEA00);
  }

  return result;
}

unsigned __int8 *sub_23C0DBB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_23C0DCF80();

  result = sub_23C0E9AF0();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_23C0DC0C8(result, v7);
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_23C0E9D30();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
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

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_23C0DC0C8(uint64_t a1, unint64_t a2)
{
  v2 = sub_23C0E9B00();
  v6 = sub_23C0DC148(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_23C0DC148(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_23C0E9CF0();
    if (!v9 || (v10 = v9, v11 = sub_23C0D9160(v9, 0), v12 = sub_23C0DC2A0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_23C0E9A50();

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
      return sub_23C0E9A50();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_23C0E9D30();
LABEL_4:

  return sub_23C0E9A50();
}

unint64_t sub_23C0DC2A0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_23C0DC4C0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_23C0E9AC0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_23C0E9D30();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_23C0DC4C0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_23C0E9A90();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_23C0DC4C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_23C0E9AD0();
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
    v5 = MEMORY[0x23EEC6F70](15, a1 >> 16);
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

uint64_t sub_23C0DC53C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_23C0E9D30();
  }

  result = sub_23C0DC7DC(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

void *sub_23C0DC604(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 availableInputDevices];
  sub_23C0DCFD4();
  v5 = sub_23C0E9B20();

  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C0E9D40())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EEC71F0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = [v9 deviceID];
      if (v12)
      {
        v13 = v12;
        sub_23C0E9A10();

        if (sub_23C0E9AF0() == a2 && v14 == a3)
        {

          return v10;
        }

        v8 = sub_23C0E9D90();

        if (v8)
        {

          return v10;
        }
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  return 0;
}

uint64_t sub_23C0DC7DC(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_23C0DC4C0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_23C0E9AB0();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_23C0DC4C0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_23C0DC4C0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_23C0E9AB0();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
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

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_23C0DCC48(void *a1)
{
  v2 = sub_23C0DB4B4(a1);
  if ((v2 & 0x100000000) == 0)
  {
    v3 = v2;
    if (CBProductIDIsAppleHeadphone(v2))
    {
      v4 = [objc_opt_self() productInfoWithProductID_];
      v5 = [v4 sfSymbolNameMain];
      if (v5)
      {
        v6 = v5;
        v7 = sub_23C0E9A10();

        return v7;
      }
    }
  }

  v9 = [a1 deviceType];
  if (!v9)
  {
    return 0x73647562726165;
  }

  v10 = 0x6F68706F7263696DLL;
  if (v9 == 1)
  {
    v10 = 0x6E692E656E696CLL;
  }

  if (v9 == 3)
  {
    return 0x6F632E656C626163;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_23C0DCD84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 deviceID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_23C0E9A10();
    v8 = v7;

    v20 = v6;
    v21 = v8;
    v9 = sub_23C0E9AF0();
  }

  else
  {
    v20 = a1;
    v9 = sub_23C0E9A30();
  }

  v11 = v9;
  v12 = v10;
  v13 = [a1 deviceName];
  if (v13)
  {
    v14 = v13;
    sub_23C0E9A10();

    v15 = sub_23C0E9AF0();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  result = sub_23C0DCC48(a1);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v15;
  a2[3] = v17;
  a2[4] = result;
  a2[5] = v19;
  return result;
}

unint64_t sub_23C0DCEB4()
{
  result = qword_27E1EEA28;
  if (!qword_27E1EEA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EEA18, &qword_23C0EB340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EEA28);
  }

  return result;
}

uint64_t sub_23C0DCF18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEA08, &qword_23C0EB330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23C0DCF80()
{
  result = qword_27E1EEA30;
  if (!qword_27E1EEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EEA30);
  }

  return result;
}

unint64_t sub_23C0DCFD4()
{
  result = qword_27E1EE980;
  if (!qword_27E1EE980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1EE980);
  }

  return result;
}

id sub_23C0DD020()
{
  v0 = sub_23C0E9830();
  __swift_allocate_value_buffer(v0, qword_27E1EF4F8);
  __swift_project_value_buffer(v0, qword_27E1EF4F8);
  result = _AVLog();
  if (result)
  {
    return sub_23C0E9840();
  }

  __break(1u);
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

uint64_t sub_23C0DD0FC(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D84A98];
  v6 = MEMORY[0x277D84AC0];
  v7 = sub_23C0E9DF0();
  v2[2] = v7;
  v2[3] = *(v7 - 8);
  v8 = swift_task_alloc();
  v2[4] = v8;
  v9 = swift_task_alloc();
  v2[5] = v9;
  *v9 = v2;
  v9[1] = sub_23C0DD234;

  return MEMORY[0x282200440](v8, a1, a2, v5, v6);
}

uint64_t sub_23C0DD234()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_23C0DD38C, 0, 0);
}

uint64_t sub_23C0DD38C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C0DD3FC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = *(a1 + 16);
  *v5 = v2;
  v5[1] = sub_23C0B7A50;

  return sub_23C0DD0FC(v4, v6);
}

uint64_t sub_23C0DD498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  swift_beginAccess();
  v14 = *(v5 + 112);
  if (*(v14 + 16))
  {

    v15 = sub_23C0E6074(a1, a2);
    if (v16)
    {
      sub_23C0B7660(*(v14 + 56) + 40 * v15, &v26);

      return sub_23C0DE354(&v26);
    }
  }

  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_23C0DE354(&v26);
  v18 = sub_23C0E9BD0();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v13, a3, v18);
  v20 = *(v19 + 56);
  v20(v13, 0, 1, v18);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a4;
  v21[5] = a5;

  v22 = sub_23C0DE678(0, 0, v13, &unk_23C0EB400, v21);
  *(&v27 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  v28 = &off_284EE15C0;
  *&v26 = v22;
  swift_beginAccess();

  sub_23C0E2190(&v26, a1, a2);
  swift_endAccess();
  v20(v13, 1, 1, v18);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v22;
  v24[5] = v23;
  v24[6] = a1;
  v24[7] = a2;

  sub_23C0DE678(0, 0, v13, &unk_23C0EB418, v24);
}

uint64_t sub_23C0DD780(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_23C0B7B5C;

  return v7();
}

uint64_t sub_23C0DD868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[13] = a5;
  v9 = swift_task_alloc();
  v7[16] = v9;
  *v9 = v7;
  v9[1] = sub_23C0DD92C;
  v10 = MEMORY[0x277D84A98];
  v11 = MEMORY[0x277D84AC0];
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v7 + 18, a4, v12, v10, v11);
}

uint64_t sub_23C0DD92C()
{

  return MEMORY[0x2822009F8](sub_23C0DDA28, 0, 0);
}

uint64_t sub_23C0DDA28()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_23C0DDAE0, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_23C0DDAE0()
{
  v2 = v0[14];
  v1 = v0[15];
  swift_beginAccess();
  sub_23C0E633C(v2, v1, (v0 + 2));
  sub_23C0DE354((v0 + 2));
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_23C0DDBA8()
{
  v18 = v0;
  v1 = v0[15];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_23C0DE150(*(v2 + 16), 0);
    v15 = sub_23C0DE1E0(&v17, (v4 + 4), v3, v2);
    v5 = v17;

    result = sub_23C0DE34C(v5);
    if (v15 != v3)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v0[16] = v4;
  *(v1 + 112) = MEMORY[0x277D84F98];

  v7 = v4[2];
  v0[17] = v7;
  if (v7)
  {
    v8 = (v4 + 4);
    do
    {
      sub_23C0B7660(v8, (v0 + 2));
      v9 = v0[5];
      v10 = v0[6];
      __swift_project_boxed_opaque_existential_0(v0 + 2, v9);
      (*(v10 + 24))(v9, v10);
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      v8 += 40;
      --v7;
    }

    while (v7);
    v0[18] = 0;
    sub_23C0B7660(v0[16] + 32, (v0 + 7));
    v11 = v0[10];
    v12 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v11);
    v16 = (*(v12 + 32) + **(v12 + 32));
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_23C0DDE50;

    return v16(v11, v12);
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_23C0DDE50()
{
  v1 = *v0;
  v2 = *(*v0 + 120);

  __swift_destroy_boxed_opaque_existential_0((v1 + 56));

  return MEMORY[0x2822009F8](sub_23C0DDF68, v2, 0);
}

uint64_t sub_23C0DDF68()
{
  v1 = v0[18] + 1;
  if (v1 == v0[17])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[18] = v1;
    sub_23C0B7660(v0[16] + 40 * v1 + 32, (v0 + 7));
    v4 = v0[10];
    v5 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v4);
    v7 = (*(v5 + 32) + **(v5 + 32));
    v6 = swift_task_alloc();
    v0[19] = v6;
    *v6 = v0;
    v6[1] = sub_23C0DDE50;

    return v7(v4, v5);
  }
}

uint64_t sub_23C0DE0F4()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_23C0DE150(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1EEA38, &unk_23C0EB3E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_23C0DE1E0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_23C0B7660(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_23C0DA5C8(v20, v21);
      sub_23C0DA5C8(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_23C0DE354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A0, &qword_23C0EB3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23C0DE3BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23C0DE3FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0DD780(a1, v4, v5, v6);
}

uint64_t sub_23C0DE4BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23C0DE4F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23C0DE544(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23C0B7A50;

  return sub_23C0DD868(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_23C0DE618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23C0DE678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23C0E902C(a3, v25 - v10, &qword_27E1EE890, &qword_23C0EA990);
  v12 = sub_23C0E9BD0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23C0DAAD8(v11, &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    sub_23C0E9BC0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23C0E9B40();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23C0E9A40() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23C0DE978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23C0E902C(a3, v25 - v10, &qword_27E1EE890, &qword_23C0EA990);
  v12 = sub_23C0E9BD0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23C0DAAD8(v11, &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    sub_23C0E9BC0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23C0E9B40();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23C0E9A40() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB60, &qword_23C0EB5E8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB60, &qword_23C0EB5E8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23C0DEC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23C0E902C(a3, v25 - v10, &qword_27E1EE890, &qword_23C0EA990);
  v12 = sub_23C0E9BD0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23C0DAAD8(v11, &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    sub_23C0E9BC0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23C0E9B40();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23C0E9A40() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE828, &qword_23C0EA878);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE828, &qword_23C0EA878);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23C0DEFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23C0E902C(a3, v25 - v10, &qword_27E1EE890, &qword_23C0EA990);
  v12 = sub_23C0E9BD0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23C0DAAD8(v11, &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    sub_23C0E9BC0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23C0E9B40();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23C0E9A40() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23C0DF298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23C0E902C(a3, v25 - v10, &qword_27E1EE890, &qword_23C0EA990);
  v12 = sub_23C0E9BD0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23C0DAAD8(v11, &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    sub_23C0E9BC0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23C0E9B40();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23C0E9A40() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE798, &qword_23C0EB080);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE798, &qword_23C0EB080);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23C0DF5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23C0E902C(a3, v25 - v10, &qword_27E1EE890, &qword_23C0EA990);
  v12 = sub_23C0E9BD0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23C0DAAD8(v11, &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    sub_23C0E9BC0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23C0E9B40();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23C0E9A40() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_23C0D9D08(0, &qword_27E1EE950, 0x277CB8678);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_23C0D9D08(0, &qword_27E1EE950, 0x277CB8678);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23C0DF89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23C0E902C(a3, v25 - v10, &qword_27E1EE890, &qword_23C0EA990);
  v12 = sub_23C0E9BD0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23C0DAAD8(v11, &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    sub_23C0E9BC0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23C0E9B40();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23C0E9A40() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23C0DFB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23C0E902C(a3, v25 - v10, &qword_27E1EE890, &qword_23C0EA990);
  v12 = sub_23C0E9BD0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23C0DAAD8(v11, &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    sub_23C0E9BC0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23C0E9B40();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23C0E9A40() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23C0DFE4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  v4 = swift_task_alloc();
  *(v2 + 80) = v4;
  *v4 = v2;
  v4[1] = sub_23C0DFF08;
  v5 = MEMORY[0x277D84A98];
  v6 = MEMORY[0x277D84AC0];

  return MEMORY[0x282200440](v2 + 16, a2, &type metadata for InputPickerMicrophone, v5, v6);
}

uint64_t sub_23C0DFF08()
{

  return MEMORY[0x2822009F8](sub_23C0E0004, 0, 0);
}

uint64_t sub_23C0E0004()
{
  v1 = *(v0 + 64);
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v2[3] = &type metadata for InputPickerMicrophone;
    v9 = swift_allocObject();
    *v2 = v9;
    v9[2] = v8;
    v9[3] = v7;
    v9[4] = v6;
    v9[5] = v5;
    v9[6] = v3;
    v9[7] = v4;

    sub_23C0E839C(v8, v7, v6, v5, v3, v4, 0);
  }

  *(*(v0 + 72) + 32) = v1;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_23C0E00FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[27] = a5;
  v6[28] = v5;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v6[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0E01A0, v5, 0);
}

uint64_t sub_23C0E01A0()
{
  v30 = v0;
  v1 = v0[28];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[23];
    v3 = v0[24];

    v5 = sub_23C0E6074(v4, v3);
    if (v6)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v5, (v0 + 2));

      sub_23C0B7660((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB78, &qword_23C0EB668);
      if (swift_dynamicCast())
      {
        v7 = v0[22];
        v0[32] = v7;

        v8 = swift_task_alloc();
        v0[33] = v8;
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE828, &qword_23C0EA878);
        *v8 = v0;
        v8[1] = sub_23C0E0770;
        v10 = v0 + 21;
        v11 = v7;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  v12 = v0[29];
  v13 = v0[27];
  v26 = v0[26];
  v14 = v0[24];
  v15 = v0[25];
  v16 = v0[23];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  swift_beginAccess();

  sub_23C0E2190(&v27, v16, v14);
  swift_endAccess();
  v17 = sub_23C0E9BD0();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v12, v15, v17);
  v19 = *(v18 + 56);
  v19(v12, 0, 1, v17);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v26;
  v20[5] = v13;

  v21 = sub_23C0DEC8C(0, 0, v12, &unk_23C0EB660, v20);
  v0[30] = v21;
  *(&v28 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB78, &qword_23C0EB668);
  v29 = &off_284EE15C0;
  *&v27 = v21;
  swift_beginAccess();
  swift_retain_n();

  sub_23C0E2190(&v27, v16, v14);
  swift_endAccess();
  v19(v12, 1, 1, v17);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v21;
  v23[5] = v22;
  v23[6] = v16;
  v23[7] = v14;

  sub_23C0DE678(0, 0, v12, &unk_23C0EB678, v23);

  v24 = swift_task_alloc();
  v0[31] = v24;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE828, &qword_23C0EA878);
  *v24 = v0;
  v24[1] = sub_23C0E05EC;
  v10 = v0 + 21;
  v11 = v21;
LABEL_8:

  return MEMORY[0x282200460](v10, v11, v9);
}

uint64_t sub_23C0E05EC()
{
  v1 = *(*v0 + 224);

  return MEMORY[0x2822009F8](sub_23C0E06FC, v1, 0);
}

uint64_t sub_23C0E06FC()
{

  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23C0E0770()
{
  v1 = *(*v0 + 224);

  return MEMORY[0x2822009F8](sub_23C0E089C, v1, 0);
}

uint64_t sub_23C0E089C()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[21];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_23C0E0914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[33] = a6;
  v7[34] = v6;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v7[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0E09BC, v6, 0);
}

uint64_t sub_23C0E09BC()
{
  v29 = v0;
  v1 = v0[34];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[29];
    v3 = v0[30];

    v5 = sub_23C0E6074(v4, v3);
    if (v6)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v5, (v0 + 8));

      sub_23C0B7660((v0 + 8), (v0 + 13));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB68, &qword_23C0EB610);
      if (swift_dynamicCast())
      {
        v7 = v0[27];
        v0[38] = v7;

        v8 = swift_task_alloc();
        v0[39] = v8;
        *v8 = v0;
        v8[1] = sub_23C0E0F88;
        v9 = v0 + 2;
        v10 = v7;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 8);
    }

    else
    {
    }
  }

  v11 = v0[35];
  v12 = v0[33];
  v25 = v0[32];
  v13 = v0[30];
  v14 = v0[31];
  v15 = v0[29];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  swift_beginAccess();

  sub_23C0E2190(&v26, v15, v13);
  swift_endAccess();
  v16 = sub_23C0E9BD0();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v11, v14, v16);
  v18 = *(v17 + 56);
  v18(v11, 0, 1, v16);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v25;
  v19[5] = v12;

  v20 = sub_23C0DEFA0(0, 0, v11, &unk_23C0EB608, v19);
  v0[36] = v20;
  *(&v27 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB68, &qword_23C0EB610);
  v28 = &off_284EE15C0;
  *&v26 = v20;
  swift_beginAccess();
  swift_retain_n();

  sub_23C0E2190(&v26, v15, v13);
  swift_endAccess();
  v18(v11, 1, 1, v16);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v20;
  v22[5] = v21;
  v22[6] = v15;
  v22[7] = v13;

  sub_23C0DE678(0, 0, v11, &unk_23C0EB620, v22);

  v23 = swift_task_alloc();
  v0[37] = v23;
  *v23 = v0;
  v23[1] = sub_23C0E0DE8;
  v9 = v0 + 2;
  v10 = v20;
LABEL_8:

  return MEMORY[0x282200460](v9, v10, &type metadata for InputPickerMicrophone);
}

uint64_t sub_23C0E0DE8()
{
  v1 = *(*v0 + 272);

  return MEMORY[0x2822009F8](sub_23C0E0EF8, v1, 0);
}

uint64_t sub_23C0E0EF8()
{

  v1 = *(v0 + 224);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  *v1 = v7;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23C0E0F88()
{
  v1 = *(*v0 + 272);

  return MEMORY[0x2822009F8](sub_23C0E10B4, v1, 0);
}

uint64_t sub_23C0E10B4()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v1 = *(v0 + 224);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  *v1 = v7;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23C0E1148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[33] = a6;
  v7[34] = v6;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v7[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0E11F0, v6, 0);
}

uint64_t sub_23C0E11F0()
{
  v30 = v0;
  v1 = v0[34];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[29];
    v3 = v0[30];

    v5 = sub_23C0E6074(v4, v3);
    if (v6)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v5, (v0 + 8));

      sub_23C0B7660((v0 + 8), (v0 + 13));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB80, &qword_23C0EB6B0);
      if (swift_dynamicCast())
      {
        v7 = v0[27];
        v0[38] = v7;

        v8 = swift_task_alloc();
        v0[39] = v8;
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE798, &qword_23C0EB080);
        *v8 = v0;
        v8[1] = sub_23C0E17DC;
        v10 = v0 + 2;
        v11 = v7;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 8);
    }

    else
    {
    }
  }

  v12 = v0[35];
  v13 = v0[33];
  v26 = v0[32];
  v14 = v0[30];
  v15 = v0[31];
  v16 = v0[29];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  swift_beginAccess();

  sub_23C0E2190(&v27, v16, v14);
  swift_endAccess();
  v17 = sub_23C0E9BD0();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v12, v15, v17);
  v19 = *(v18 + 56);
  v19(v12, 0, 1, v17);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v26;
  v20[5] = v13;

  v21 = sub_23C0DF298(0, 0, v12, &unk_23C0EB6A8, v20);
  v0[36] = v21;
  *(&v28 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB80, &qword_23C0EB6B0);
  v29 = &off_284EE15C0;
  *&v27 = v21;
  swift_beginAccess();
  swift_retain_n();

  sub_23C0E2190(&v27, v16, v14);
  swift_endAccess();
  v19(v12, 1, 1, v17);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v21;
  v23[5] = v22;
  v23[6] = v16;
  v23[7] = v14;

  sub_23C0DE678(0, 0, v12, &unk_23C0EB6C0, v23);

  v24 = swift_task_alloc();
  v0[37] = v24;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE798, &qword_23C0EB080);
  *v24 = v0;
  v24[1] = sub_23C0E163C;
  v10 = v0 + 2;
  v11 = v21;
LABEL_8:

  return MEMORY[0x282200460](v10, v11, v9);
}

uint64_t sub_23C0E163C()
{
  v1 = *(*v0 + 272);

  return MEMORY[0x2822009F8](sub_23C0E174C, v1, 0);
}

uint64_t sub_23C0E174C()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  *v1 = v7;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23C0E17DC()
{
  v1 = *(*v0 + 272);

  return MEMORY[0x2822009F8](sub_23C0E1908, v1, 0);
}

uint64_t sub_23C0E1908()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v1 = *(v0 + 224);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  *v1 = v7;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23C0E199C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[27] = a6;
  v7[28] = v6;
  v7[25] = a4;
  v7[26] = a5;
  v7[23] = a2;
  v7[24] = a3;
  v7[22] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0E1A44, v6, 0);
}

uint64_t sub_23C0E1A44()
{
  v30 = v0;
  v1 = v0[28];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[23];
    v3 = v0[24];

    v5 = sub_23C0E6074(v4, v3);
    if (v6)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v5, (v0 + 2));

      sub_23C0B7660((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
      if (swift_dynamicCast())
      {
        v7 = v0[21];
        v0[32] = v7;

        v8 = swift_task_alloc();
        v0[33] = v8;
        *v8 = v0;
        v8[1] = sub_23C0E1FF4;
        v9 = v0[22];
        v10 = MEMORY[0x277D84F78] + 8;
        v11 = v7;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  v12 = v0[29];
  v13 = v0[27];
  v26 = v0[26];
  v14 = v0[24];
  v15 = v0[25];
  v16 = v0[23];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  swift_beginAccess();

  sub_23C0E2190(&v27, v16, v14);
  swift_endAccess();
  v17 = sub_23C0E9BD0();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v12, v15, v17);
  v19 = *(v18 + 56);
  v19(v12, 0, 1, v17);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v26;
  v20[5] = v13;

  v21 = sub_23C0DE678(0, 0, v12, &unk_23C0EAF20, v20);
  v0[30] = v21;
  *(&v28 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  v29 = &off_284EE15C0;
  *&v27 = v21;
  swift_beginAccess();
  swift_retain_n();

  sub_23C0E2190(&v27, v16, v14);
  swift_endAccess();
  v19(v12, 1, 1, v17);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v21;
  v23[5] = v22;
  v23[6] = v16;
  v23[7] = v14;

  sub_23C0DE678(0, 0, v12, &unk_23C0EAF38, v23);

  v24 = swift_task_alloc();
  v0[31] = v24;
  *v24 = v0;
  v24[1] = sub_23C0E1E78;
  v9 = v0[22];
  v10 = MEMORY[0x277D84F78] + 8;
  v11 = v21;
LABEL_8:

  return MEMORY[0x282200460](v9, v11, v10);
}

uint64_t sub_23C0E1E78()
{
  v1 = *(*v0 + 224);

  return MEMORY[0x2822009F8](sub_23C0E1F88, v1, 0);
}

uint64_t sub_23C0E1F88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C0E1FF4()
{
  v1 = *(*v0 + 224);

  return MEMORY[0x2822009F8](sub_23C0E2120, v1, 0);
}

uint64_t sub_23C0E2120()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C0E2190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_23C0DA5C8(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    v7 = v16;
    v8 = v17;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v9);
    v11 = &v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v11);
    sub_23C0E7DF0(v11, a2, a3, isUniquelyReferenced_nonNull_native, &v14, v7, v8);
    __swift_destroy_boxed_opaque_existential_0(v15);

    *v3 = v14;
  }

  else
  {
    sub_23C0DAAD8(a1, &qword_27E1EE9A0, &qword_23C0EB3F0);
    sub_23C0E633C(a2, a3, v15);

    return sub_23C0DAAD8(v15, &qword_27E1EE9A0, &qword_23C0EB3F0);
  }

  return result;
}

uint64_t sub_23C0E2318(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_23C0B7A50;

  return v8(a1);
}

uint64_t sub_23C0E2410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[20] = a5;
  v9 = swift_task_alloc();
  v7[23] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE828, &qword_23C0EA878);
  v7[24] = v10;
  *v9 = v7;
  v9[1] = sub_23C0E24E4;
  v11 = MEMORY[0x277D84A98];
  v12 = MEMORY[0x277D84AC0];

  return MEMORY[0x282200440](v7 + 18, a4, v10, v11, v12);
}

uint64_t sub_23C0E24E4()
{

  return MEMORY[0x2822009F8](sub_23C0E25E0, 0, 0);
}

uint64_t sub_23C0E25E0()
{
  v1 = *(v0 + 152);
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 144);
    *(v0 + 80) = *(v0 + 192);
    *(v0 + 56) = v2;
  }

  *(v0 + 88) = v1;
  sub_23C0DAAD8(v0 + 56, &qword_27E1EEB70, &qword_23C0EB630);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 200) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_23C0E26CC, Strong, 0);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_23C0E26CC()
{
  v2 = v0[21];
  v1 = v0[22];
  swift_beginAccess();
  sub_23C0E633C(v2, v1, (v0 + 2));
  sub_23C0DAAD8((v0 + 2), &qword_27E1EE9A0, &qword_23C0EB3F0);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_23C0E2784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[18] = a5;
  v9 = swift_task_alloc();
  v7[21] = v9;
  *v9 = v7;
  v9[1] = sub_23C0E2828;

  return sub_23C0DFE4C((v7 + 7), a4);
}

uint64_t sub_23C0E2828()
{
  v1 = *v0;

  sub_23C0DAAD8(v1 + 56, &qword_27E1EEB70, &qword_23C0EB630);

  return MEMORY[0x2822009F8](sub_23C0E293C, 0, 0);
}

uint64_t sub_23C0E293C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 176) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_23C0E29F4, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_23C0E29F4()
{
  v2 = v0[19];
  v1 = v0[20];
  swift_beginAccess();
  sub_23C0E633C(v2, v1, (v0 + 2));
  sub_23C0DAAD8((v0 + 2), &qword_27E1EE9A0, &qword_23C0EB3F0);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_23C0E2AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[25] = a5;
  v9 = swift_task_alloc();
  v7[28] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE798, &qword_23C0EB080);
  v7[29] = v10;
  *v9 = v7;
  v9[1] = sub_23C0E2B80;
  v11 = MEMORY[0x277D84A98];
  v12 = MEMORY[0x277D84AC0];

  return MEMORY[0x282200440](v7 + 2, a4, v10, v11, v12);
}

uint64_t sub_23C0E2B80()
{

  return MEMORY[0x2822009F8](sub_23C0E2C7C, 0, 0);
}

uint64_t sub_23C0E2C7C()
{
  v1 = *(v0 + 64);
  if ((v1 & 1) == 0)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    *(v0 + 136) = *(v0 + 232);
    v4 = swift_allocObject();
    *(v0 + 112) = v4;
    v5 = *(v0 + 32);
    *(v4 + 16) = *(v0 + 16);
    *(v4 + 32) = v5;
    *(v4 + 48) = v3;
    *(v4 + 56) = v2;
  }

  *(v0 + 144) = v1;
  sub_23C0DAAD8(v0 + 112, &qword_27E1EEB70, &qword_23C0EB630);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 240) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_23C0E2D94, Strong, 0);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_23C0E2D94()
{
  v2 = v0[26];
  v1 = v0[27];
  swift_beginAccess();
  sub_23C0E633C(v2, v1, (v0 + 9));
  sub_23C0DAAD8((v0 + 9), &qword_27E1EE9A0, &qword_23C0EB3F0);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_23C0E2E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[13] = a5;
  v9 = swift_task_alloc();
  v7[16] = v9;
  *v9 = v7;
  v9[1] = sub_23C0E2F10;
  v10 = MEMORY[0x277D84A98];
  v11 = MEMORY[0x277D84AC0];
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v7 + 18, a4, v12, v10, v11);
}

uint64_t sub_23C0E2F10()
{

  return MEMORY[0x2822009F8](sub_23C0E300C, 0, 0);
}

uint64_t sub_23C0E300C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_23C0E30C4, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_23C0E30C4()
{
  v2 = v0[14];
  v1 = v0[15];
  swift_beginAccess();
  sub_23C0E633C(v2, v1, (v0 + 2));
  sub_23C0DAAD8((v0 + 2), &qword_27E1EE9A0, &qword_23C0EB3F0);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_23C0E317C(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v102) = a3;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB88, &qword_23C0EB6F0);
  v122 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v121 = (&v87 - v6);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB50, &qword_23C0EB568);
  v123 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v120 = &v87 - v7;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB90, &qword_23C0EB6F8);
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v115 = (&v87 - v8);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB48, &qword_23C0EB560);
  v117 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v114 = &v87 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB98, &qword_23C0EB700);
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v108 = (&v87 - v10);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE888, &qword_23C0EABA0);
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v109 = &v87 - v11;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEBA0, &qword_23C0EB708);
  v103 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v101 = (&v87 - v12);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE880, &unk_23C0EA980);
  v104 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v100 = &v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEBA8, &qword_23C0EB710);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v93 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v128 = &v87 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEBB0, &qword_23C0EB718);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v97 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v87 - v21;
  v126 = &v87 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEBB8, &qword_23C0EB720);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v98 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v127 = &v87 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEBC0, &qword_23C0EB728);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v105 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v87 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v87 - v33;
  *(v3 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_isDiscovering) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEBC8, &qword_23C0EB730);
  v35 = swift_allocObject();

  sub_23C0E9BB0();
  v36 = sub_23C0E9BD0();
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v89 = v36;
  v88 = v38;
  v87 = v37 + 56;
  (v38)(v34, 0, 1);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = sub_23C0E5E48;
  v39[5] = 0;
  v40 = sub_23C0DF5AC(0, 0, v34, &unk_23C0EB740, v39);
  v90 = v34;
  sub_23C0DAAD8(v34, &qword_27E1EE890, &qword_23C0EA990);
  *(v35 + 16) = v40;
  v133[3] = &type metadata for MXAVInputContextFactory;
  v133[4] = &off_284EE0DB8;
  v133[0] = v35;
  type metadata accessor for AVRoutingInputController();
  v41 = swift_allocObject();
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v133, &type metadata for MXAVInputContextFactory);
  MEMORY[0x28223BE20](v42);
  v44 = (&v87 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  v46 = *v44;
  v91 = a2;
  v47 = sub_23C0E6BC0(v102, a1, a2, v46, v41);
  __swift_destroy_boxed_opaque_existential_0(v133);
  *(v3 + 16) = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9C8, &qword_23C0EAF90);
  v49 = *(v48 - 8);
  v50 = *(v49 + 56);
  v99 = v31;
  v50(v31, 1, 1, v48);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE970, &unk_23C0EB530);
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v54 = v127;
  v102 = v51;
  v53(v127, 1, 1);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B8, &qword_23C0EAF50);
  v94 = *(v55 - 8);
  v56 = *(v94 + 56);
  v95 = v55;
  v56(v22, 1, 1);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB38, &qword_23C0EB518);
  v96 = *(v57 - 8);
  v58 = *(v96 + 56);
  v59 = v128;
  v92 = v57;
  v58(v128, 1, 1);
  v60 = v101;
  *v101 = 1;
  v61 = *MEMORY[0x277D85768];
  (*(v103 + 104))(v60, v61, v106);
  v132 = v31;
  v62 = v100;
  sub_23C0E9C20();
  (*(v104 + 32))(v3 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_selectedMicrophoneStream, v62, v107);
  v63 = v108;
  *v108 = 1;
  (*(v110 + 104))(v63, v61, v111);
  v131 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE828, &qword_23C0EA878);
  v64 = v109;
  sub_23C0E9C20();
  (*(v112 + 32))(v3 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_availableMicrophonesStream, v64, v113);
  v65 = v115;
  *v115 = 1;
  (*(v116 + 104))(v65, v61, v118);
  v130 = v126;
  v66 = v114;
  sub_23C0E9C20();
  (*(v117 + 32))(v3 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_inputGainStream, v66, v119);
  v67 = v121;
  *v121 = 1;
  (*(v122 + 104))(v67, v61, v124);
  v129 = v59;
  v68 = v120;
  v69 = v3;
  v70 = v105;
  sub_23C0E9C20();
  v71 = v68;
  v72 = v99;
  (*(v123 + 32))(v69 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_canSetInputGainStream, v71, v125);
  sub_23C0E902C(v72, v70, &qword_27E1EEBC0, &qword_23C0EB728);
  result = (*(v49 + 48))(v70, 1, v48);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  (*(v49 + 32))(v69 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_selectedMicrophoneContinuation, v70, v48);
  v74 = v127;
  v75 = v98;
  sub_23C0E902C(v127, v98, &qword_27E1EEBB8, &qword_23C0EB720);
  v76 = v102;
  result = (*(v52 + 48))(v75, 1, v102);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  (*(v52 + 32))(v69 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_availableMicrophonesContinuation, v75, v76);
  v77 = v126;
  v78 = v97;
  sub_23C0E902C(v126, v97, &qword_27E1EEBB0, &qword_23C0EB718);
  v79 = v94;
  v80 = v95;
  result = (*(v94 + 48))(v78, 1, v95);
  v81 = v96;
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  (*(v79 + 32))(v69 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_inputGainContinuation, v78, v80);
  v82 = v93;
  sub_23C0E902C(v128, v93, &qword_27E1EEBA8, &qword_23C0EB710);
  v83 = v92;
  result = (*(v81 + 48))(v82, 1, v92);
  if (result != 1)
  {

    (*(v81 + 32))(v69 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_canSetInputGainContinuation, v82, v83);
    *(*(v69 + 16) + 40) = &off_284EE15E8;
    swift_unknownObjectWeakAssign();
    v84 = v90;
    v88(v90, 1, 1, v89);
    v85 = swift_allocObject();
    swift_weakInit();
    v86 = swift_allocObject();
    v86[2] = 0;
    v86[3] = 0;
    v86[4] = v85;
    sub_23C0DE978(0, 0, v84, &unk_23C0EB748, v86);

    sub_23C0DAAD8(v128, &qword_27E1EEBA8, &qword_23C0EB710);
    sub_23C0DAAD8(v77, &qword_27E1EEBB0, &qword_23C0EB718);
    sub_23C0DAAD8(v74, &qword_27E1EEBB8, &qword_23C0EB720);
    sub_23C0DAAD8(v72, &qword_27E1EEBC0, &qword_23C0EB728);
    return v69;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_23C0E4254(uint64_t a1, uint64_t a2)
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23C0DAAD8(a2, &qword_27E1EEBC0, &qword_23C0EB728);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9C8, &qword_23C0EAF90);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_23C0E438C(uint64_t a1, uint64_t a2)
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23C0DAAD8(a2, &qword_27E1EEBB8, &qword_23C0EB720);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE970, &unk_23C0EB530);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_23C0E44C4(uint64_t a1, uint64_t a2)
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23C0DAAD8(a2, &qword_27E1EEBB0, &qword_23C0EB718);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B8, &qword_23C0EAF50);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_23C0E45FC(uint64_t a1, uint64_t a2)
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23C0DAAD8(a2, &qword_27E1EEBA8, &qword_23C0EB710);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB38, &qword_23C0EB518);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_23C0E4734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_23C0E9B90();
  v4[3] = sub_23C0E9B80();
  v6 = sub_23C0E9B40();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_23C0E47CC, v6, v5);
}

uint64_t sub_23C0E47CC()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_23C0E4860;

  return sub_23C0BEDD4();
}

uint64_t sub_23C0E4860()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_23C0E4980, v3, v2);
}

uint64_t sub_23C0E4980()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C0E49E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE970, &unk_23C0EB530);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9C8, &qword_23C0EAF90);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v12 = sub_23C0E9830();
  __swift_project_value_buffer(v12, qword_27E1EF4F8);
  v13 = sub_23C0E9820();
  v14 = sub_23C0E9C90();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_23C0B2000, v13, v14, "[deinit] MicrophoneManager start deinit", v15, 2u);
    MEMORY[0x23EEC78E0](v15, -1, -1);
  }

  v41 = v8;
  v42 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_selectedMicrophoneContinuation;
  (*(v9 + 16))(v11, v1 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_selectedMicrophoneContinuation, v8);
  sub_23C0E9BF0();
  v40 = *(v9 + 8);
  v40(v11, v8);
  v39 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_availableMicrophonesContinuation;
  (*(v5 + 16))(v7, v1 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_availableMicrophonesContinuation, v4);
  sub_23C0E9BF0();
  v38 = *(v5 + 8);
  v38(v7, v4);
  v16 = *(v1 + 16);
  *(v16 + 40) = 0;
  swift_unknownObjectWeakAssign();
  v17 = sub_23C0E9BD0();
  v18 = *(*(v17 - 8) + 56);
  v37 = v4;
  v19 = v43;
  v18(v43, 1, 1, v17);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v20;

  sub_23C0DE978(0, 0, v19, &unk_23C0EB540, v21);

  v18(v19, 1, 1, v17);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v16;

  sub_23C0DFB8C(0, 0, v19, &unk_23C0EB550, v22);

  sub_23C0DAAD8(v19, &qword_27E1EE890, &qword_23C0EA990);

  v40((v1 + v42), v41);
  v38((v1 + v39), v37);
  v23 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_inputGainContinuation;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B8, &qword_23C0EAF50);
  (*(*(v24 - 8) + 8))(v1 + v23, v24);
  v25 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_canSetInputGainContinuation;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB38, &qword_23C0EB518);
  (*(*(v26 - 8) + 8))(v1 + v25, v26);
  v27 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_selectedMicrophoneStream;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE880, &unk_23C0EA980);
  (*(*(v28 - 8) + 8))(v1 + v27, v28);
  v29 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_availableMicrophonesStream;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE888, &qword_23C0EABA0);
  (*(*(v30 - 8) + 8))(v1 + v29, v30);
  v31 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_inputGainStream;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB48, &qword_23C0EB560);
  (*(*(v32 - 8) + 8))(v1 + v31, v32);
  v33 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_canSetInputGainStream;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB50, &qword_23C0EB568);
  (*(*(v34 - 8) + 8))(v1 + v33, v34);
  return v1;
}

uint64_t sub_23C0E5048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23C0E9BD0();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0E5108, 0, 0);
}

uint64_t sub_23C0E5108()
{
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v1 = sub_23C0E9830();
  __swift_project_value_buffer(v1, qword_27E1EF4F8);
  v2 = sub_23C0E9820();
  v3 = sub_23C0E9C90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23C0B2000, v2, v3, "[deinit] MicrophoneManager doing the cancelling of observations", v4, 2u);
    MEMORY[0x23EEC78E0](v4, -1, -1);
  }

  v5 = v0[2];

  v0[6] = *(v5 + 16);
  v0[7] = swift_allocObject();
  swift_weakInit();
  sub_23C0E9BB0();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_23C0E52E4;

  return (sub_23C0E199C)();
}

uint64_t sub_23C0E52E4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_23C0E5458, 0, 0);
}

uint64_t sub_23C0E5458()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_23C0E54E8;

  return sub_23C0DDB88();
}

uint64_t sub_23C0E54E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23C0E55F8()
{
  sub_23C0E49E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for MicrophoneManager(uint64_t a1)
{
  result = qword_27E1EEAE8;
  if (!qword_27E1EEAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23C0E56A4(uint64_t a1)
{
  sub_23C0E5A68(319, &qword_27E1EEAF8, &type metadata for InputPickerMicrophone, MEMORY[0x277D85788]);
  if (v1 <= 0x3F)
  {
    sub_23C0E59FC(319, &qword_27E1EEB00, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      sub_23C0E5A68(319, &qword_27E1EEB08, MEMORY[0x277D83A90], MEMORY[0x277D85788]);
      if (v3 <= 0x3F)
      {
        sub_23C0E5A68(319, &qword_27E1EEB10, MEMORY[0x277D839B0], MEMORY[0x277D85788]);
        if (v4 <= 0x3F)
        {
          sub_23C0E5A68(319, &qword_27E1EEB18, &type metadata for InputPickerMicrophone, MEMORY[0x277D857B8]);
          if (v5 <= 0x3F)
          {
            sub_23C0E59FC(319, &qword_27E1EEB20, MEMORY[0x277D857B8]);
            if (v6 <= 0x3F)
            {
              sub_23C0E5A68(319, &qword_27E1EEB28, MEMORY[0x277D83A90], MEMORY[0x277D857B8]);
              if (v7 <= 0x3F)
              {
                sub_23C0E5A68(319, &qword_27E1EEB30, MEMORY[0x277D839B0], MEMORY[0x277D857B8]);
                if (v8 <= 0x3F)
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
}

void sub_23C0E59FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE828, &qword_23C0EA878);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_23C0E5A68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_23C0E5AB8(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB38, &qword_23C0EB518);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB40, &unk_23C0EB520);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13[-v10];
  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_canSetInputGainContinuation, v4);
  v13[15] = a2;
  sub_23C0E9BE0();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_23C0E5C68()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23C0E5CA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0BE62C(a1, v4, v5, v6);
}

uint64_t sub_23C0E5D54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7A50;

  return sub_23C0E5048(a1, v4, v5, v6);
}

id sub_23C0E5E08@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277CB8690]) initWithDeviceFeatures_];
  *a1 = result;
  return result;
}

id sub_23C0E5E48@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277CB8678]) init];
  *a1 = result;
  return result;
}

uint64_t sub_23C0E5E84(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C0E5F7C;

  return v6(a1);
}

uint64_t sub_23C0E5F7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_23C0E6074(uint64_t a1, uint64_t a2)
{
  sub_23C0E9DC0();
  sub_23C0E9A60();
  v4 = sub_23C0E9DE0();

  return sub_23C0E6180(a1, a2, v4);
}

unint64_t sub_23C0E60EC(uint64_t a1)
{
  sub_23C0E9A10();
  sub_23C0E9DC0();
  sub_23C0E9A60();
  v2 = sub_23C0E9DE0();

  return sub_23C0E6238(a1, v2);
}

unint64_t sub_23C0E6180(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23C0E9D90())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23C0E6238(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_23C0E9A10();
      v8 = v7;
      if (v6 == sub_23C0E9A10() && v8 == v9)
      {
        break;
      }

      v11 = sub_23C0E9D90();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

double sub_23C0E633C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_23C0E6074(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23C0E6868();
      v10 = v12;
    }

    sub_23C0DA5C8((*(v10 + 56) + 40 * v8), a3);
    sub_23C0E66AC(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23C0E63E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB58, &qword_23C0EB5C0);
  v33 = v4;
  result = sub_23C0E9D60();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_23C0DA5C8(v24, v34);
      }

      else
      {
        sub_23C0B7660(v24, v34);
      }

      sub_23C0E9DC0();
      sub_23C0E9A60();
      result = sub_23C0E9DE0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_23C0DA5C8(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_23C0E66AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23C0E9D00() + 1) & ~v5;
    do
    {
      sub_23C0E9DC0();

      sub_23C0E9A60();
      v11 = sub_23C0E9DE0();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_23C0E6868()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB58, &qword_23C0EB5C0);
  v2 = *v0;
  v3 = sub_23C0E9D50();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_23C0B7660(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23C0DA5C8(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_23C0E6A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_23C0E6A34, 0, 0);
}

uint64_t sub_23C0E6A34()
{
  v1 = *(v0 + 24);
  (*(v0 + 32))();
  *v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23C0E6AA8(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_23C0E91C4;

  return v5(v2 + 16);
}

uint64_t sub_23C0E6B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_23C0E91C0, 0, 0);
}

uint64_t sub_23C0E6BC0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  v26 = a3;
  HIDWORD(v24) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v27[3] = &type metadata for MXAVInputContextFactory;
  v27[4] = &off_284EE0DB8;
  v27[0] = a4;
  type metadata accessor for AVInputPickerTaskRegistry();
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v10 + 112) = sub_23C0E8B88(MEMORY[0x277D84F90]);
  *(a5 + 16) = v10;
  *(a5 + 40) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AVRoutingInputController.ViewModelState();
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0;
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v11 + 304) = 0;
  *(v11 + 272) = 0u;
  *(v11 + 288) = 0u;
  *(v11 + 240) = 0u;
  *(v11 + 256) = 0u;
  *(v11 + 208) = 0u;
  *(v11 + 224) = 0u;
  *(v11 + 176) = 0u;
  *(v11 + 192) = 0u;
  *(v11 + 144) = 0u;
  *(v11 + 160) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0u;
  *(a5 + 112) = 0;
  *(a5 + 120) = 0;
  *(a5 + 104) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEBD0, &qword_23C0EB750);
  v12 = swift_allocObject();
  sub_23C0E9BB0();
  v13 = sub_23C0E9BD0();
  v14 = *(*(v13 - 8) + 56);
  v14(v9, 0, 1, v13);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = sub_23C0E9188;
  v15[5] = 0;
  v16 = sub_23C0DF89C(0, 0, v9, &unk_23C0EB760, v15);
  sub_23C0DAAD8(v9, &qword_27E1EE890, &qword_23C0EA990);
  *(v12 + 16) = v16;
  *(a5 + 128) = v12;
  v17 = swift_allocObject();
  sub_23C0E9BB0();
  v14(v9, 0, 1, v13);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = sub_23C0E9188;
  v18[5] = 0;
  v19 = sub_23C0DF89C(0, 0, v9, &unk_23C0EB768, v18);
  sub_23C0DAAD8(v9, &qword_27E1EE890, &qword_23C0EA990);
  *(v17 + 16) = v19;
  *(a5 + 136) = v17;
  *(a5 + 24) = BYTE4(v24);
  v20 = v26;
  *(a5 + 112) = v25;
  *(a5 + 120) = v20;

  sub_23C0B7660(v27, a5 + 144);
  v14(v9, 1, 1, v13);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v21;
  sub_23C0DE678(0, 0, v9, &unk_23C0EB770, v22);

  __swift_destroy_boxed_opaque_existential_0(v27);
  return a5;
}

uint64_t sub_23C0E6F58(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_23C0E704C;

  return v5(v2 + 32);
}

uint64_t sub_23C0E704C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_23C0E7160(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 24) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 32) = v5;
  *v5 = v4;
  v5[1] = sub_23C0E7254;

  return v7(v4 + 16);
}

uint64_t sub_23C0E7254()
{

  return MEMORY[0x2822009F8](sub_23C0BE5C4, 0, 0);
}

uint64_t sub_23C0E7350(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_23C0E7444;

  return v5(v2 + 16);
}

uint64_t sub_23C0E7444()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_23C0E7574(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 64) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 72) = v5;
  *v5 = v4;
  v5[1] = sub_23C0E7668;

  return v7(v4 + 16);
}

uint64_t sub_23C0E7668()
{

  return MEMORY[0x2822009F8](sub_23C0E7764, 0, 0);
}

uint64_t sub_23C0E7764()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_23C0E778C(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_23C0E7880;

  return v5(v2 + 16);
}

uint64_t sub_23C0E7880()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *v0;

  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  *v2 = *(v1 + 16);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;
  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_23C0E79C8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 64) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 72) = v5;
  *v5 = v4;
  v5[1] = sub_23C0E7ABC;

  return v7(v4 + 16);
}

uint64_t sub_23C0E7ABC()
{

  return MEMORY[0x2822009F8](sub_23C0E7BB8, 0, 0);
}

uint64_t sub_23C0E7BB8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  v1[2] = v3;
  return (*(v0 + 8))();
}

uint64_t sub_23C0E7BE0(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_23C0E7CD4;

  return v5(v2 + 16);
}

uint64_t sub_23C0E7CD4()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v7 = *v0;

  v3 = v1[2];
  v4 = v1[3];
  *v2 = v1[1];
  v2[1] = v3;
  v2[2] = v4;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_23C0E7DF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v33);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a1, a6);
  v15 = *a5;
  v17 = sub_23C0E6074(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      __swift_destroy_boxed_opaque_existential_0(v24);
      return sub_23C0DA5C8(&v33, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_23C0E6868();
    goto LABEL_7;
  }

  sub_23C0E63E8(v20, a4 & 1);
  v26 = sub_23C0E6074(a2, a3);
  if ((v21 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_23C0E9DA0();
    __break(1u);
    return result;
  }

  v17 = v26;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v34);
  MEMORY[0x28223BE20](v28);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  sub_23C0E8024(v17, a2, a3, v30, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_0(&v33);
}

uint64_t sub_23C0E8024(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_23C0DA5C8(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_23C0E80FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C0B7B5C;

  return sub_23C0E6F58(a1, v4);
}

uint64_t sub_23C0E81B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0E7574(a1, v4, v5, v6);
}

uint64_t sub_23C0E8280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23C0B7B5C;

  return sub_23C0E2784(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_23C0E8354()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void sub_23C0E839C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
  }
}

uint64_t sub_23C0E83EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23C0E8424(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C0B7B5C;

  return sub_23C0E778C(a1, v4);
}

uint64_t sub_23C0E84E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0E7160(a1, v4, v5, v6);
}

uint64_t sub_23C0E85B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23C0B7B5C;

  return sub_23C0E2410(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_23C0E8684(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C0B7B5C;

  return sub_23C0E7350(a1, v4);
}

uint64_t sub_23C0E873C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0E79C8(a1, v4, v5, v6);
}

uint64_t sub_23C0E8808(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23C0B7B5C;

  return sub_23C0E2AAC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_23C0E88DC()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23C0E8928(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C0B7B5C;

  return sub_23C0E7BE0(a1, v4);
}

uint64_t sub_23C0E89E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C0B7A50;

  return sub_23C0E7BE0(a1, v4);
}

uint64_t sub_23C0E8A98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23C0B7B5C;

  return sub_23C0E6A10(a1, v4, v5, v7, v6);
}

unint64_t sub_23C0E8B88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB58, &qword_23C0EB5C0);
    v3 = sub_23C0E9D70();
    v4 = a1 + 32;

    while (1)
    {
      sub_23C0E902C(v4, &v13, &unk_27E1EEBE0, &qword_23C0EB7A0);
      v5 = v13;
      v6 = v14;
      result = sub_23C0E6074(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23C0DA5C8(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t sub_23C0E8CBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23C0B7B5C;

  return sub_23C0E6B9C(a1, v4, v5, v7, v6);
}

uint64_t sub_23C0E8D88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0BF188(a1, v4, v5, v6);
}

unint64_t sub_23C0E8E3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEBD8, &unk_23C0EB778);
    v3 = sub_23C0E9D70();
    v4 = a1 + 32;

    while (1)
    {
      sub_23C0E902C(v4, &v11, &qword_27E1EE9E0, &qword_23C0EB060);
      v5 = v11;
      result = sub_23C0E60EC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23C0E8F64(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

_OWORD *sub_23C0E8F64(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23C0E8F74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C0B7B5C;

  return sub_23C0E6AA8(a1, v4);
}

uint64_t sub_23C0E902C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23C0E9094(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C0B7B5C;

  return sub_23C0E6AA8(a1, v4);
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27E1EF4D8 == -1)
  {
    if (qword_27E1EF4E0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27E1EF4E0)
    {
      return _availability_version_check();
    }
  }

  if (qword_27E1EF4D0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27E1EF4C4 > a3)
      {
        return 1;
      }

      if (dword_27E1EF4C4 >= a3)
      {
        return dword_27E1EF4C8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27E1EF4E0;
  if (qword_27E1EF4E0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27E1EF4E0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x23EEC73A0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27E1EF4C4, &dword_27E1EF4C8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
    }
  }

  return result;
}

id _AVLog()
{
  if (_AVLog_onceToken != -1)
  {
    dispatch_once(&_AVLog_onceToken, &__block_literal_global);
  }

  v1 = _log;

  return v1;
}