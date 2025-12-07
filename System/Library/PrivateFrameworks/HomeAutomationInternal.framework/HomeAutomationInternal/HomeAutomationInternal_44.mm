uint64_t sub_252C80E1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 8))
  {
    return (*a1 + 61);
  }

  v3 = (((*a1 >> 58) >> 4) | (4 * ((*a1 >> 58) & 0xC | (*a1 >> 1) & 3))) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_252C80E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xF | (16 * (-a2 & 0x3F));
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_252C80F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a2;
  v3[26] = a3;
  v3[24] = a1;
  return MEMORY[0x2822009F8](sub_252C80F28, 0, 0);
}

uint64_t sub_252C80F28()
{
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v1 = v0[26];
  v3 = sub_252E36AD4();
  v0[27] = __swift_project_value_buffer(v3, qword_27F544C58);
  sub_252E379F4();
  v0[21] = 0;
  v0[22] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000002FLL, 0x8000000252E8F160);
  v0[23] = v2;
  sub_252E37AE4();
  MEMORY[0x2530AD570](46, 0xE100000000000000);
  sub_252CC3D90(v0[21], v0[22], 0xD00000000000008FLL, 0x8000000252E8F190);

  sub_252CC3D90(0xD000000000000036, 0x8000000252E8F220, 0xD00000000000008FLL, 0x8000000252E8F190);
  type metadata accessor for BaseConfirmationHandler();
  v0[28] = swift_initStackObject();
  sub_252A907DC(v2);

  v4 = sub_252A86604(v2, v1);
  v0[29] = v4;
  v7 = (*(*v4 + 216) + **(*v4 + 216));
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_252C811B4;

  return v7(v0 + 16);
}

uint64_t sub_252C811B4()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_252C81384;
  }

  else
  {
    v2 = sub_252C812C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252C812C8()
{
  v1 = *(v0 + 192);
  sub_252CC3D90(0xD00000000000002CLL, 0x8000000252E8F260, 0xD00000000000008FLL, 0x8000000252E8F190);

  sub_252A52D18((v0 + 128), v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252C81384()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C81418(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_252E34014();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[4] = v2;

  return MEMORY[0x2822009F8](sub_252C81510, 0, 0);
}

uint64_t sub_252C81510()
{
  v1 = v0 + 4;
  v2 = (v0[7] + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v4 = *v2;
  v3 = v2[1];
  v5 = sub_252B2F098();
  if (sub_252B2FB08())
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v6 = v0[8];
    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544D18);
    sub_252E379F4();

    MEMORY[0x2530AD570](v4, v3);
    sub_252CC3D90(0xD000000000000025, 0x8000000252E8F530, 0xD00000000000008FLL, 0x8000000252E6B430);

    v8 = *(v6 + 96);
    __swift_project_boxed_opaque_existential_1((v6 + 72), v8);
    v9 = swift_task_alloc();
    v0[16] = v9;
    v9[2] = v1;
    v9[3] = v4;
    v9[4] = v3;
    sub_252AD7CC4();
    v10 = swift_task_alloc();
    v0[17] = v10;
    *v10 = v0;
    v10[1] = sub_252C81E64;
    v11 = v0[15];
    v12 = v0[6];
    v13 = &unk_252E58300;
LABEL_5:

    return sub_252BDB88C(v12, v13, v9, v11, 0, 0, 0, v8);
  }

  if (v5 > 3)
  {
    if (v5 == 4)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v27 = v0[8];
      v28 = sub_252E36AD4();
      __swift_project_value_buffer(v28, qword_27F544D18);
      sub_252E379F4();

      MEMORY[0x2530AD570](v4, v3);
      sub_252CC3D90(0xD00000000000002CLL, 0x8000000252E8F470, 0xD00000000000008FLL, 0x8000000252E6B430);

      v8 = *(v27 + 96);
      __swift_project_boxed_opaque_existential_1((v27 + 72), v8);
      v9 = swift_task_alloc();
      v0[28] = v9;
      v9[2] = v1;
      v9[3] = v4;
      v9[4] = v3;
      sub_252AD7CC4();
      v29 = swift_task_alloc();
      v0[29] = v29;
      *v29 = v0;
      v29[1] = sub_252C82464;
      v11 = v0[11];
      v12 = v0[6];
      v13 = &unk_252E582C0;
      goto LABEL_5;
    }

    if (v5 == 5)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v18 = v0[8];
      v19 = sub_252E36AD4();
      __swift_project_value_buffer(v19, qword_27F544D18);
      sub_252E379F4();

      MEMORY[0x2530AD570](v4, v3);
      sub_252CC3D90(0xD000000000000029, 0x8000000252E8F4D0, 0xD00000000000008FLL, 0x8000000252E6B430);

      v8 = *(v18 + 96);
      __swift_project_boxed_opaque_existential_1((v18 + 72), v8);
      v9 = swift_task_alloc();
      v0[22] = v9;
      v9[2] = v1;
      v9[3] = v4;
      v9[4] = v3;
      sub_252AD7CC4();
      v20 = swift_task_alloc();
      v0[23] = v20;
      *v20 = v0;
      v20[1] = sub_252C82164;
      v11 = v0[13];
      v12 = v0[6];
      v13 = &unk_252E582E0;
      goto LABEL_5;
    }
  }

  else
  {
    if (v5 == 2)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v24 = v0[8];
      v25 = sub_252E36AD4();
      __swift_project_value_buffer(v25, qword_27F544D18);
      sub_252E379F4();

      MEMORY[0x2530AD570](v4, v3);
      sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E8F500, 0xD00000000000008FLL, 0x8000000252E6B430);

      v8 = *(v24 + 96);
      __swift_project_boxed_opaque_existential_1((v24 + 72), v8);
      v9 = swift_task_alloc();
      v0[19] = v9;
      v9[2] = v1;
      v9[3] = v4;
      v9[4] = v3;
      sub_252AD7CC4();
      v26 = swift_task_alloc();
      v0[20] = v26;
      *v26 = v0;
      v26[1] = sub_252C81FE4;
      v11 = v0[14];
      v12 = v0[6];
      v13 = &unk_252E582F0;
      goto LABEL_5;
    }

    if (v5 == 3)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v15 = v0[8];
      v16 = sub_252E36AD4();
      __swift_project_value_buffer(v16, qword_27F544D18);
      sub_252E379F4();

      MEMORY[0x2530AD570](v4, v3);
      sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E8F4A0, 0xD00000000000008FLL, 0x8000000252E6B430);

      v8 = *(v15 + 96);
      __swift_project_boxed_opaque_existential_1((v15 + 72), v8);
      v9 = swift_task_alloc();
      v0[25] = v9;
      v9[2] = v1;
      v9[3] = v4;
      v9[4] = v3;
      sub_252AD7CC4();
      v17 = swift_task_alloc();
      v0[26] = v17;
      *v17 = v0;
      v17[1] = sub_252C822E4;
      v11 = v0[12];
      v12 = v0[6];
      v13 = &unk_252E582D0;
      goto LABEL_5;
    }
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v21 = v0[6];
  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D18);
  sub_252E379F4();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E8ADD0);
  v0[5] = v5;
  sub_252E37AE4();
  sub_252CC4050(v0[2], v0[3], 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000011, 0x8000000252E8F450, 564);

  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;

  v23 = v0[1];

  return v23();
}

uint64_t sub_252C81E64()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252C864C0;
  }

  else
  {

    v5 = sub_252C864BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C81FE4()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 168) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252C864C4;
  }

  else
  {

    v5 = sub_252C864BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C82164()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 192) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252C864C8;
  }

  else
  {

    v5 = sub_252C864BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C822E4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 216) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252C864CC;
  }

  else
  {

    v5 = sub_252C864BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C82464()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 240) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252C864D0;
  }

  else
  {

    v5 = sub_252C864BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C825E4(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_252E34014();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[4] = v2;

  return MEMORY[0x2822009F8](sub_252C826DC, 0, 0);
}

uint64_t sub_252C826DC()
{
  v1 = v0 + 4;
  v2 = (v0[7] + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v4 = *v2;
  v3 = v2[1];
  v5 = sub_252B2F098();
  if (sub_252B2FB08())
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v6 = v0[8];
    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544D18);
    sub_252E379F4();

    MEMORY[0x2530AD570](v4, v3);
    sub_252CC3D90(0xD000000000000025, 0x8000000252E8F530, 0xD00000000000008FLL, 0x8000000252E6B430);

    v8 = *(v6 + 96);
    __swift_project_boxed_opaque_existential_1((v6 + 72), v8);
    v9 = swift_task_alloc();
    v0[16] = v9;
    v9[2] = v1;
    v9[3] = v4;
    v9[4] = v3;
    sub_252AD7CC4();
    v10 = swift_task_alloc();
    v0[17] = v10;
    *v10 = v0;
    v10[1] = sub_252C83030;
    v11 = v0[15];
    v12 = v0[6];
    v13 = &unk_252E582A0;
LABEL_5:

    return sub_252BDB88C(v12, v13, v9, v11, 0, 0, 0, v8);
  }

  if (v5 > 3)
  {
    if (v5 == 4)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v27 = v0[8];
      v28 = sub_252E36AD4();
      __swift_project_value_buffer(v28, qword_27F544D18);
      sub_252E379F4();

      MEMORY[0x2530AD570](v4, v3);
      sub_252CC3D90(0xD00000000000002CLL, 0x8000000252E8F470, 0xD00000000000008FLL, 0x8000000252E6B430);

      v8 = *(v27 + 96);
      __swift_project_boxed_opaque_existential_1((v27 + 72), v8);
      v9 = swift_task_alloc();
      v0[28] = v9;
      v9[2] = v1;
      v9[3] = v4;
      v9[4] = v3;
      sub_252AD7CC4();
      v29 = swift_task_alloc();
      v0[29] = v29;
      *v29 = v0;
      v29[1] = sub_252C836D4;
      v11 = v0[11];
      v12 = v0[6];
      v13 = &unk_252E58260;
      goto LABEL_5;
    }

    if (v5 == 5)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v18 = v0[8];
      v19 = sub_252E36AD4();
      __swift_project_value_buffer(v19, qword_27F544D18);
      sub_252E379F4();

      MEMORY[0x2530AD570](v4, v3);
      sub_252CC3D90(0xD000000000000029, 0x8000000252E8F4D0, 0xD00000000000008FLL, 0x8000000252E6B430);

      v8 = *(v18 + 96);
      __swift_project_boxed_opaque_existential_1((v18 + 72), v8);
      v9 = swift_task_alloc();
      v0[22] = v9;
      v9[2] = v1;
      v9[3] = v4;
      v9[4] = v3;
      sub_252AD7CC4();
      v20 = swift_task_alloc();
      v0[23] = v20;
      *v20 = v0;
      v20[1] = sub_252C833D4;
      v11 = v0[13];
      v12 = v0[6];
      v13 = &unk_252E58280;
      goto LABEL_5;
    }
  }

  else
  {
    if (v5 == 2)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v24 = v0[8];
      v25 = sub_252E36AD4();
      __swift_project_value_buffer(v25, qword_27F544D18);
      sub_252E379F4();

      MEMORY[0x2530AD570](v4, v3);
      sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E8F500, 0xD00000000000008FLL, 0x8000000252E6B430);

      v8 = *(v24 + 96);
      __swift_project_boxed_opaque_existential_1((v24 + 72), v8);
      v9 = swift_task_alloc();
      v0[19] = v9;
      v9[2] = v1;
      v9[3] = v4;
      v9[4] = v3;
      sub_252AD7CC4();
      v26 = swift_task_alloc();
      v0[20] = v26;
      *v26 = v0;
      v26[1] = sub_252C83254;
      v11 = v0[14];
      v12 = v0[6];
      v13 = &unk_252E58290;
      goto LABEL_5;
    }

    if (v5 == 3)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v15 = v0[8];
      v16 = sub_252E36AD4();
      __swift_project_value_buffer(v16, qword_27F544D18);
      sub_252E379F4();

      MEMORY[0x2530AD570](v4, v3);
      sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E8F4A0, 0xD00000000000008FLL, 0x8000000252E6B430);

      v8 = *(v15 + 96);
      __swift_project_boxed_opaque_existential_1((v15 + 72), v8);
      v9 = swift_task_alloc();
      v0[25] = v9;
      v9[2] = v1;
      v9[3] = v4;
      v9[4] = v3;
      sub_252AD7CC4();
      v17 = swift_task_alloc();
      v0[26] = v17;
      *v17 = v0;
      v17[1] = sub_252C83554;
      v11 = v0[12];
      v12 = v0[6];
      v13 = &unk_252E58270;
      goto LABEL_5;
    }
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v21 = v0[6];
  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D18);
  sub_252E379F4();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E8ADD0);
  v0[5] = v5;
  sub_252E37AE4();
  sub_252CC4050(v0[2], v0[3], 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000011, 0x8000000252E8F450, 564);

  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;

  v23 = v0[1];

  return v23();
}

uint64_t sub_252C83030()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252C831B0;
  }

  else
  {

    v5 = sub_252C864BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C831B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C83254()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 168) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252C83854;
  }

  else
  {

    v5 = sub_252C864BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C833D4()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 192) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252C83990;
  }

  else
  {

    v5 = sub_252C838FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C83554()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 216) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252C83A38;
  }

  else
  {

    v5 = sub_252C864BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C836D4()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 240) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252C83AE0;
  }

  else
  {

    v5 = sub_252C864BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C83854()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C838FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C83990()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C83A38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C83AE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C83B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  return MEMORY[0x2822009F8](sub_252C83BAC, 0, 0);
}

uint64_t sub_252C83BAC()
{
  if ((sub_252C4D664(5) & 1) == 0)
  {
    goto LABEL_14;
  }

  v1 = [*(v0 + 128) filters];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = v1;
  type metadata accessor for HomeFilter();
  v3 = sub_252E37264();

  v4 = type metadata accessor for HomeStore(0);
  v5 = static HomeStore.shared.getter(v4);
  v6 = HomeStore.scenes(matching:)(v3);
  v8 = v7;

  if (v8)
  {
    goto LABEL_13;
  }

  if (v6 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_13:
    sub_252C85DA4(v6, v8 & 1, MEMORY[0x277D84FB8]);
LABEL_14:
    v13 = swift_task_alloc();
    *(v0 + 200) = v13;
    *v13 = v0;
    v13[1] = sub_252C841C4;
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);

    return sub_252C8431C(v14, v15);
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x2530ADF00](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v6 + 32);
  }

  *(v0 + 152) = v10;
  sub_252C85DA4(v6, 0, MEMORY[0x277D84FB8]);
  *(v0 + 160) = sub_252B2F098();
  v11 = v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
  *(v0 + 168) = *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  *(v0 + 176) = *(v11 + 8);

  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_252C83E34;

  return sub_252C825E4(v0 + 56, v10);
}

uint64_t sub_252C83E34()
{
  *(*v1 + 192) = v0;

  if (v0)
  {

    v2 = sub_252C842B8;
  }

  else
  {
    v2 = sub_252C83F50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252C83F50()
{
  if (*(v0 + 80))
  {
    sub_252A52D18((v0 + 56), v0 + 16);
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 168);
    v1 = *(v0 + 176);
    v3 = *(v0 + 160);
    v4 = *(v0 + 120);
    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544D18);
    sub_252E379F4();
    *(v0 + 96) = 0;
    *(v0 + 104) = 0xE000000000000000;
    MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E8F410);
    *(v0 + 112) = v3;
    sub_252E37AE4();
    MEMORY[0x2530AD570](0x3A656D616E202D20, 0xE900000000000020);
    MEMORY[0x2530AD570](v2, v1);

    sub_252CC3D90(*(v0 + 96), *(v0 + 104), 0xD000000000000098, 0x8000000252E8F300);

    sub_252A52D18((v0 + 16), v4);
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {

    sub_25293847C(v0 + 56, &qword_27F542188, &qword_252E43C80);
    v8 = swift_task_alloc();
    *(v0 + 200) = v8;
    *v8 = v0;
    v8[1] = sub_252C841C4;
    v9 = *(v0 + 120);
    v10 = *(v0 + 128);

    return sub_252C8431C(v9, v10);
  }
}

uint64_t sub_252C841C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_252C842B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C8431C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_252E32E84();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C84404, 0, 0);
}

uint64_t sub_252C84404()
{
  v1 = [v0[3] filters];
  v141 = v0;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_51;
  }

  v2 = v1;
  type metadata accessor for HomeFilter();
  v3 = sub_252E37264();

  v4 = type metadata accessor for HomeStore(0);
  v5 = static HomeStore.shared.getter(v4);
  v6 = HomeStore.accessories(matching:supporting:)(v3, 0);
  v8 = v7;

  if (v8)
  {
    v10 = MEMORY[0x277D84FB8];
    v11 = v6;
    v12 = 1;
LABEL_7:
    sub_252C85DA4(v11, v12, v10);
    v13 = 0;
    v0 = v141;
    goto LABEL_51;
  }

  v14 = static HomeStore.shared.getter(v9);
  v15 = sub_2529F219C();
  v17 = v16;

  if (v17)
  {
    sub_252C85DA4(v15, 1, MEMORY[0x277D85008]);
    v10 = MEMORY[0x277D84FB8];
    v11 = v6;
    v12 = 0;
    goto LABEL_7;
  }

  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
    goto LABEL_49;
  }

  v19 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0 = v141;
  if (v19)
  {
LABEL_10:
    v20 = 0;
    v133 = v6 & 0xC000000000000001;
    v135 = (v0[6] + 32);
    v137 = v15;
    v127 = v19;
    v129 = v18;
    v131 = v6;
    do
    {
      if (v133)
      {
        v21 = MEMORY[0x2530ADF00](v20, v6);
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_44:
          __break(1u);
LABEL_45:

LABEL_46:
          v57 = MEMORY[0x277D84FB8];
          v58 = v131;
LABEL_47:
          sub_252C85DA4(v58, 0, v57);
          sub_252C85DA4(v15, 0, MEMORY[0x277D85008]);
          v13 = 1;
          goto LABEL_51;
        }
      }

      else
      {
        if (v20 >= *(v18 + 16))
        {
          __break(1u);
LABEL_49:
          v19 = sub_252E378C4();
          v0 = v141;
          if (!v19)
          {
            break;
          }

          goto LABEL_10;
        }

        v21 = *(v6 + 8 * v20 + 32);

        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_44;
        }
      }

      v139 = v22;
      v23 = [*(v21 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
      if (v23)
      {
        v24 = v23;
        type metadata accessor for Room(0);
        v25 = swift_allocObject();
        *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v24;
        v26 = v24;
        v27 = [v26 uniqueIdentifier];
        sub_252E32E64();

        v28 = [v26 name];
        v29 = sub_252E36F34();
        v31 = v30;

        v32 = [v26 assistantIdentifier];
        if (v32)
        {
          v33 = v32;
          v34 = sub_252E36F34();
          v36 = v35;
        }

        else
        {

          v34 = 0;
          v36 = 0;
        }

        v0 = v141;
        (*v135)(v25 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v141[10], v141[5]);
        v37 = (v25 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *v37 = v29;
        v37[1] = v31;
        *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
        v38 = (v25 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v38 = v34;
        v38[1] = v36;
        v15 = v137;
        if (!v137)
        {
LABEL_24:
          v41 = 0;
          if (!v25)
          {
            goto LABEL_38;
          }

          goto LABEL_25;
        }
      }

      else
      {
        v25 = 0;
        if (!v15)
        {
          goto LABEL_24;
        }
      }

      v39 = [*&v15[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate] room];
      if (!v39)
      {
        goto LABEL_24;
      }

      v40 = v39;
      type metadata accessor for Room(0);
      v41 = swift_allocObject();
      *(v41 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v40;
      v42 = v40;
      v43 = [v42 uniqueIdentifier];
      sub_252E32E64();

      v44 = [v42 name];
      v45 = sub_252E36F34();
      v47 = v46;

      v48 = [v42 assistantIdentifier];
      if (v48)
      {
        v49 = v48;
        v50 = sub_252E36F34();
        v52 = v51;
      }

      else
      {

        v50 = 0;
        v52 = 0;
      }

      (*v135)(v41 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v141[9], v141[5]);
      v55 = (v41 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v55 = v45;
      v55[1] = v47;
      v0 = v141;
      *(v41 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
      v56 = (v41 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v56 = v50;
      v56[1] = v52;
      v15 = v137;
      if (!v25)
      {
LABEL_38:

        if (!v41)
        {
          goto LABEL_46;
        }

        goto LABEL_39;
      }

LABEL_25:
      if (!v41)
      {

        goto LABEL_39;
      }

      if ((sub_252E32E54() & 1) == 0 || *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v41 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
      {

LABEL_39:
        v6 = v131;

        goto LABEL_40;
      }

      if (*(v25 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v41 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v41 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
      {
        goto LABEL_45;
      }

      v54 = sub_252E37DB4();

      v6 = v131;
      if (v54)
      {
        v57 = MEMORY[0x277D84FB8];
        v58 = v131;
        goto LABEL_47;
      }

LABEL_40:
      ++v20;
      v18 = v129;
    }

    while (v139 != v127);
  }

  sub_252C85DA4(v6, 0, MEMORY[0x277D84FB8]);
  sub_252C85DA4(v15, 0, MEMORY[0x277D85008]);
  v13 = 0;
LABEL_51:
  v59 = [v0[3] filters];
  if (!v59)
  {
    v71 = 0;
    goto LABEL_59;
  }

  v60 = v59;
  v138 = v13;
  type metadata accessor for HomeFilter();
  v61 = sub_252E37264();

  v62 = type metadata accessor for HomeStore(0);
  v63 = static HomeStore.shared.getter(v62);
  v64 = HomeStore.scenes(matching:)(v61);
  v66 = v65;

  if (v66)
  {
    v68 = MEMORY[0x277D84FB8];
    v69 = v64;
    v70 = 1;
LABEL_57:
    sub_252C85DA4(v69, v70, v68);
    v71 = 0;
    v0 = v141;
LABEL_58:
    v13 = v138;
    goto LABEL_59;
  }

  v72 = static HomeStore.shared.getter(v67);
  v73 = sub_2529F219C();
  v75 = v74;

  if (v75)
  {
    sub_252C85DA4(v73, 1, MEMORY[0x277D85008]);
    v68 = MEMORY[0x277D84FB8];
    v69 = v64;
    v70 = 0;
    goto LABEL_57;
  }

  v126 = v73;
  v13 = v138;
  if (!(v64 >> 62))
  {
    result = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0 = v141;
    if (result)
    {
      goto LABEL_71;
    }

LABEL_116:
    sub_252C85DA4(v64, 0, MEMORY[0x277D84FB8]);
    sub_252C85DA4(v126, 0, MEMORY[0x277D85008]);
    v71 = 0;
LABEL_59:
    LODWORD(v76) = v13 | v71;
    if (qword_27F53F4D0 != -1)
    {
      goto LABEL_114;
    }

    goto LABEL_60;
  }

  result = sub_252E378C4();
  v0 = v141;
  if (!result)
  {
    goto LABEL_116;
  }

LABEL_71:
  if ((v64 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](0, v64);
    v76 = v126;
  }

  else
  {
    v76 = v126;
    if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  sub_252C85DA4(v64, 0, MEMORY[0x277D84FB8]);
  v87 = sub_252B2F280(v86);

  if (v87 >> 62)
  {
    v88 = sub_252E378C4();
    if (v88)
    {
      goto LABEL_76;
    }

LABEL_119:
    sub_252C85DA4(v76, 0, MEMORY[0x277D85008]);

    v71 = 0;
    goto LABEL_58;
  }

  v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v88)
  {
    goto LABEL_119;
  }

LABEL_76:
  v89 = 0;
  v132 = v87 & 0xFFFFFFFFFFFFFF8;
  v134 = v87 & 0xC000000000000001;
  v136 = (v0[6] + 32);
  v128 = v88;
  v130 = v87;
  while (v134)
  {
    v90 = MEMORY[0x2530ADF00](v89, v87);
    v91 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
LABEL_110:
      __break(1u);
LABEL_111:

LABEL_112:

      sub_252C85DA4(v76, 0, MEMORY[0x277D85008]);
      v71 = 1;
      goto LABEL_58;
    }

LABEL_80:
    v140 = v91;
    v92 = [*(v90 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
    if (v92)
    {
      v93 = v92;
      type metadata accessor for Room(0);
      v94 = swift_allocObject();
      *(v94 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v93;
      v95 = v93;
      v96 = [v95 uniqueIdentifier];
      sub_252E32E64();

      v97 = [v95 name];
      v98 = sub_252E36F34();
      v100 = v99;

      v101 = [v95 assistantIdentifier];
      if (v101)
      {
        v102 = v101;
        v103 = sub_252E36F34();
        v105 = v104;
      }

      else
      {

        v103 = 0;
        v105 = 0;
      }

      v0 = v141;
      (*v136)(v94 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v141[8], v141[5]);
      v106 = (v94 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v106 = v98;
      v106[1] = v100;
      *(v94 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
      v107 = (v94 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v107 = v103;
      v107[1] = v105;
      if (!v76)
      {
LABEL_90:
        v110 = 0;
        if (!v94)
        {
          goto LABEL_104;
        }

        goto LABEL_91;
      }
    }

    else
    {
      v94 = 0;
      if (!v76)
      {
        goto LABEL_90;
      }
    }

    v108 = [*&v76[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate] room];
    if (!v108)
    {
      goto LABEL_90;
    }

    v109 = v108;
    type metadata accessor for Room(0);
    v110 = swift_allocObject();
    *(v110 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v109;
    v111 = v109;
    v112 = [v111 uniqueIdentifier];
    sub_252E32E64();

    v113 = [v111 name];
    v114 = sub_252E36F34();
    v116 = v115;

    v117 = [v111 assistantIdentifier];
    if (v117)
    {
      v118 = v117;
      v119 = sub_252E36F34();
      v121 = v120;
    }

    else
    {

      v119 = 0;
      v121 = 0;
    }

    v0 = v141;
    (*v136)(v110 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v141[7], v141[5]);
    v124 = (v110 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    *v124 = v114;
    v124[1] = v116;
    *(v110 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
    v125 = (v110 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    *v125 = v119;
    v125[1] = v121;
    v76 = v126;
    if (!v94)
    {
LABEL_104:

      if (!v110)
      {
        goto LABEL_112;
      }

      goto LABEL_105;
    }

LABEL_91:
    if (!v110)
    {

      goto LABEL_105;
    }

    if ((sub_252E32E54() & 1) == 0 || *(v94 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v110 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
    {

LABEL_105:
      v87 = v130;

      goto LABEL_106;
    }

    if (*(v94 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v110 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v94 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v110 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
    {
      goto LABEL_111;
    }

    v123 = sub_252E37DB4();

    v87 = v130;
    if (v123)
    {
      goto LABEL_112;
    }

LABEL_106:
    ++v89;
    if (v140 == v128)
    {
      goto LABEL_119;
    }
  }

  if (v89 < *(v132 + 16))
  {
    v90 = *&v87[8 * v89 + 32];

    v91 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      goto LABEL_110;
    }

    goto LABEL_80;
  }

  __break(1u);
LABEL_114:
  swift_once();
LABEL_60:
  v77 = v0[4];
  v78 = sub_252E36AD4();
  __swift_project_value_buffer(v78, qword_27F544D18);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E8F2D0, 0xD000000000000098, 0x8000000252E8F300);
  sub_252E379F4();

  if (v76)
  {
    v79 = 1702195828;
  }

  else
  {
    v79 = 0x65736C6166;
  }

  if (v76)
  {
    v80 = 0xE400000000000000;
  }

  else
  {
    v80 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v79, v80);

  sub_252CC3D90(0xD000000000000019, 0x8000000252E8F3A0, 0xD000000000000098, 0x8000000252E8F300);

  v81 = v77[12];
  v82 = v77[13];
  __swift_project_boxed_opaque_existential_1(v77 + 9, v81);
  v83 = swift_allocObject();
  *(v83 + 16) = v77;
  *(v83 + 24) = v76;

  sub_252943B8C(sub_252C85D98, v83, v81, v82);

  v84 = v141[1];

  return v84();
}

uint64_t sub_252C85374(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_252E3C290;
  *(v3 + 32) = 0xD000000000000010;
  *(v3 + 40) = 0x8000000252E8F3F0;
  *(v3 + 72) = MEMORY[0x277D839B0];
  *(v3 + 48) = a2;

  sub_252E362B4();
}

uint64_t sub_252C85478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252C83B88(a1, a2, a3);
}

void *sub_252C8552C@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for AsyncDefaultEagerResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252C85590(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = *a1;
  return MEMORY[0x2822009F8](sub_252C855B8, 0, 0);
}

uint64_t sub_252C855B8()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[4] + 24), *(v0[4] + 48));

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_252C864D4;
  v3 = v0[2];
  v4 = v0[3];

  return sub_252C120F8(0, v1, v3, v4);
}

uint64_t sub_252C8568C(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = *a1;
  return MEMORY[0x2822009F8](sub_252C856B4, 0, 0);
}

uint64_t sub_252C856B4()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[4] + 24), *(v0[4] + 48));

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_252C864D4;
  v3 = v0[2];
  v4 = v0[3];

  return sub_252C125B0(0, v1, v3, v4);
}

uint64_t sub_252C85788(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = *a1;
  return MEMORY[0x2822009F8](sub_252C857B0, 0, 0);
}

uint64_t sub_252C857B0()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[4] + 24), *(v0[4] + 48));

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_252C864D4;
  v3 = v0[2];
  v4 = v0[3];

  return sub_252C1295C(0, v1, v3, v4);
}

uint64_t sub_252C85884(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = *a1;
  return MEMORY[0x2822009F8](sub_252C858AC, 0, 0);
}

uint64_t sub_252C858AC()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[4] + 24), *(v0[4] + 48));

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_252C864D4;
  v3 = v0[2];
  v4 = v0[3];

  return sub_252C12D08(0, v1, v3, v4);
}

uint64_t sub_252C85980(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = *a1;
  return MEMORY[0x2822009F8](sub_252C859A8, 0, 0);
}

uint64_t sub_252C859A8()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[4] + 24), *(v0[4] + 48));

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_252C864D4;
  v3 = v0[2];
  v4 = v0[3];

  return sub_252C130B4(0, v1, v3, v4);
}

uint64_t sub_252C85A7C(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = *a1;
  return MEMORY[0x2822009F8](sub_252C85AA4, 0, 0);
}

uint64_t sub_252C85AA4()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[4] + 24), *(v0[4] + 48));

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_252C85B78;
  v3 = v0[2];
  v4 = v0[3];

  return sub_252C125B0(0, v1, v3, v4);
}

uint64_t sub_252C85B78(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

id sub_252C85C9C(void *a1, char *a2)
{
  if (sub_252A6B2EC(a1))
  {
    if (!a2)
    {
      return 0;
    }
  }

  else
  {
    v4 = sub_252929CE8(a1);
    result = 0;
    if ((v4 & 1) == 0 || !a2)
    {
      return result;
    }
  }

  v6 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  if (*&a2[v6] != 4)
  {
    return 0;
  }

  result = [a2 entityResponses];
  if (result)
  {
    v7 = result;
    type metadata accessor for HomeEntityResponse();
    v8 = sub_252E37264();

    if (v8 >> 62)
    {
      v9 = sub_252E378C4();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return (v9 == 0);
  }

  return result;
}

void sub_252C85DA4(id a1, char a2, void (*a3)(id))
{
  if (a2)
  {
  }

  else
  {
    a3(a1);
  }
}

uint64_t sub_252C85DB4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C85980(v2, v3, v4);
}

uint64_t sub_252C85E68()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C85884(v2, v3, v4);
}

uint64_t sub_252C85F1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C85788(v2, v3, v4);
}

uint64_t sub_252C85FD0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252C85A7C(v2, v3, v4);
}

uint64_t sub_252C86084()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C85590(v2, v3, v4);
}

uint64_t sub_252C86138()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C85980(v2, v3, v4);
}

uint64_t sub_252C861EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C85884(v2, v3, v4);
}

uint64_t sub_252C862A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C85788(v2, v3, v4);
}

uint64_t sub_252C86354()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C8568C(v2, v3, v4);
}

uint64_t sub_252C86408()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C85590(v2, v3, v4);
}

unint64_t sub_252C864D8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v26 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v25);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v28 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v6 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_252E378C4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_252E378C4();
        goto LABEL_19;
      }

      if (v9)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v13 >> 1) - v12) < v8)
          {
            goto LABEL_43;
          }

          v32 = v3;
          v16 = v11 + 8 * v12 + 32;
          v27 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_45;
            }

            sub_252C87DC4();
            for (i = 0; i != v14; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5405F0, &qword_252E3ECF0);
              v18 = sub_2529FBE00(v31, i, v6);
              v20 = *v19;

              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            type metadata accessor for HomeAutomationHomeLocation(0);
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v32;
          if (v8 >= 1)
          {
            v21 = *(v27 + 16);
            v5 = __OFADD__(v21, v8);
            v22 = v21 + v8;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v27 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_24;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
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
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252C86824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v50[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v50[-v14];
  if ((a1 != 0x6552797469746E65 || a2 != 0xEF7365736E6F7073) && (sub_252E37DB4() & 1) == 0)
  {
    if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v18 = *(v3 + 24);
      if (v18 >> 62)
      {
        result = sub_252E378C4();
      }

      else
      {
        result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = result;
LABEL_13:
      *(a3 + 24) = MEMORY[0x277D839F8];
      *a3 = v19;
      return result;
    }

    if (a1 == 0x614E797469746E65 && a2 == 0xEB0000000073656DLL || (sub_252E37DB4() & 1) != 0)
    {
      v20 = sub_252998290();
LABEL_18:
      v21 = v20;
      v22 = &qword_27F540600;
      v23 = &qword_252E3CF90;
LABEL_19:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
LABEL_20:
      *(a3 + 24) = result;
      *a3 = v21;
      return result;
    }

    if (a1 == 0xD000000000000011 && 0x8000000252E6FD80 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      v20 = sub_25299829C();
      goto LABEL_18;
    }

    if (a1 == 0x61636F4C6D6F6F72 && a2 == 0xED0000736E6F6974 || (sub_252E37DB4() & 1) != 0)
    {
      v24 = sub_2529985A0();
LABEL_29:
      v21 = v24;
      v22 = &qword_27F5405F0;
      v23 = &qword_252E3ECF0;
      goto LABEL_19;
    }

    if (a1 == 0x736D6F6F72 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v24 = sub_25299EEB4();
      goto LABEL_29;
    }

    if (a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v25 = sub_252C864D8(*(v3 + 24));
      v26 = sub_252DF8E14(v25);

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5405F0, &qword_252E3ECF0);
      *(a3 + 24) = result;
      *a3 = v26;
      return result;
    }

    if (a1 == 0x73656D6F68 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v24 = sub_2529985AC();
      goto LABEL_29;
    }

    if (a1 == 0x7365707974 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v20 = sub_25299875C();
      goto LABEL_18;
    }

    if (a1 == 0x736574617473 && a2 == 0xE600000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v27 = sub_252998A68();
LABEL_51:
      v21 = v27;
      v22 = &qword_27F540610;
      v23 = &qword_252E3CF98;
      goto LABEL_19;
    }

    if (a1 == 0x6C61566574617473 && a2 == 0xEB00000000736575 || (sub_252E37DB4() & 1) != 0)
    {
      v21 = sub_252998BC8();
      v22 = &unk_27F544840;
      v23 = &unk_252E58470;
      goto LABEL_19;
    }

    if (a1 == 0x7474416574617473 && a2 == 0xEF73657475626972 || (sub_252E37DB4() & 1) != 0)
    {
      v20 = sub_252998D84();
      goto LABEL_18;
    }

    if (a1 == 0x7974706D457369 && a2 == 0xE700000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v28 = *(v3 + 24);
      if (v28 >> 62)
      {
        result = sub_252E378C4();
      }

      else
      {
        result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v29 = result == 0;
LABEL_66:
      v30 = MEMORY[0x277D839B0];
      v31 = v29;
LABEL_69:
      *(a3 + 24) = v30;
      *a3 = v31;
      return result;
    }

    if (a1 == 0x706D45746F4E7369 && a2 == 0xEA00000000007974 || (sub_252E37DB4() & 1) != 0)
    {
      v32 = *(v3 + 24);
      if (v32 >> 62)
      {
        result = sub_252E378C4();
      }

      else
      {
        result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v33 = result == 0;
LABEL_76:
      v30 = MEMORY[0x277D839B0];
      v31 = !v33;
      goto LABEL_69;
    }

    if (a1 == 0x6E45656E4F736168 && a2 == 0xEC00000079746974 || (sub_252E37DB4() & 1) != 0)
    {
      v34 = *(v3 + 24);
      if (v34 >> 62)
      {
        result = sub_252E378C4();
      }

      else
      {
        result = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v29 = result == 1;
      goto LABEL_66;
    }

    if (a1 == 0xD000000000000014 && 0x8000000252E8F5F0 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      v35 = *(v3 + 24);
      if (v35 >> 62)
      {
        result = sub_252E378C4();
      }

      else
      {
        result = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v30 = MEMORY[0x277D839B0];
      v31 = result > 1;
      goto LABEL_69;
    }

    if (a1 == 0x7571696E55736168 && a2 == 0xED00006570795465 || (sub_252E37DB4() & 1) != 0)
    {
      sub_25299AB0C(v15);
      v36 = sub_252E36324();
      v37 = (*(*(v36 - 8) + 48))(v15, 1, v36) != 1;
      result = sub_252938BBC(v15);
      *(a3 + 24) = MEMORY[0x277D839B0];
      *a3 = v37;
      return result;
    }

    if (a1 == 0x7954657571696E75 && a2 == 0xEA00000000006570 || (sub_252E37DB4() & 1) != 0)
    {
      sub_25299AB0C(v13);
      v38 = sub_252E36324();
      v39 = *(v38 - 8);
      if ((*(v39 + 48))(v13, 1, v38) != 1)
      {
        *(a3 + 24) = v38;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
        return (*(v39 + 32))(boxed_opaque_existential_0, v13, v38);
      }

      v40 = v13;
LABEL_100:
      result = sub_252938BBC(v40);
      goto LABEL_101;
    }

    if (a1 == 0x7571696E55736168 && a2 == 0xED00006D6F6F5265 || (sub_252E37DB4() & 1) != 0)
    {
      result = sub_25299B138();
      goto LABEL_108;
    }

    if (a1 == 0x6F52657571696E75 && a2 == 0xEA00000000006D6FLL || (sub_252E37DB4() & 1) != 0)
    {
      result = sub_25299B138();
      if (!result)
      {
        goto LABEL_101;
      }
    }

    else
    {
      if (a1 == 0x736D6F6F526D756ELL && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
      {
        v43 = sub_25299EEB4();
        if (v43 >> 62)
        {
          v44 = sub_252E378C4();
        }

        else
        {
          v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v19 = v44;
        goto LABEL_13;
      }

      if (a1 == 0xD000000000000014 && 0x8000000252E8F610 == a2 || (sub_252E37DB4() & 1) != 0)
      {
        v45 = sub_25299BE58();
        if (v45 >> 62)
        {
          v46 = sub_252E378C4();
        }

        else
        {
          v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v33 = v46 == 0;
        goto LABEL_76;
      }

      if (a1 == 0xD000000000000011 && 0x8000000252E8F630 == a2 || (sub_252E37DB4() & 1) != 0)
      {
        v24 = sub_25299BE58();
        goto LABEL_29;
      }

      if (a1 == 0x7571696E55736168 && a2 == 0xED0000656E6F5A65 || (sub_252E37DB4() & 1) != 0)
      {
        result = sub_25299B360();
        goto LABEL_108;
      }

      if ((a1 != 0x6F5A657571696E75 || a2 != 0xEA0000000000656ELL) && (sub_252E37DB4() & 1) == 0)
      {
        if ((a1 != 0x7571696E55736168 || a2 != 0xEE00657461745365) && (sub_252E37DB4() & 1) == 0)
        {
          if (a1 == 0x7453657571696E75 && a2 == 0xEB00000000657461 || (sub_252E37DB4() & 1) != 0)
          {
            result = sub_252999524();
            if (result)
            {
              v21 = result;
              result = type metadata accessor for HomeAutomationEntityState(0);
              goto LABEL_20;
            }
          }

          else
          {
            if (a1 == 0x7453657571696E75 && a2 == 0xEC00000073657461 || (sub_252E37DB4() & 1) != 0)
            {
              v27 = sub_2529992EC();
              goto LABEL_51;
            }

            if (a1 == 0xD000000000000015 && 0x8000000252E8F650 == a2 || (sub_252E37DB4() & 1) != 0)
            {
              sub_25299A2D0(v10);
              v47 = sub_252E36324();
              v48 = *(v47 - 8);
              if ((*(v48 + 48))(v10, 1, v47) != 1)
              {
                *(a3 + 24) = v47;
                v49 = __swift_allocate_boxed_opaque_existential_0(a3);
                return (*(v48 + 32))(v49, v10, v47);
              }

              v40 = v10;
              goto LABEL_100;
            }

            if (a1 == 0x6349657571696E75 && a2 == 0xEA00000000006E6FLL || (sub_252E37DB4() & 1) != 0)
            {
              result = sub_25299DB10();
              if (result)
              {
                v21 = result;
                result = type metadata accessor for HomeAutomationAccessoryIcon(0);
                goto LABEL_20;
              }
            }

            else if (a1 == 0x736E6F6369 && a2 == 0xE500000000000000 || (result = sub_252E37DB4(), (result & 1) != 0))
            {
              v21 = sub_25299DC9C();
              v22 = &unk_27F544838;
              v23 = &unk_252E58460;
              goto LABEL_19;
            }
          }

LABEL_101:
          *a3 = 0u;
          *(a3 + 16) = 0u;
          return result;
        }

        result = sub_25299909C();
LABEL_108:
        v42 = result;
        if (result)
        {
        }

        v33 = v42 == 0;
        goto LABEL_76;
      }

      result = sub_25299B360();
      if (!result)
      {
        goto LABEL_101;
      }
    }

    v21 = result;
    result = type metadata accessor for HomeAutomationHomeLocation(0);
    goto LABEL_20;
  }

  v16 = *(v3 + 24);
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544828, &unk_252E58450);
  *a3 = v16;
}

uint64_t sub_252C8757C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544850, &qword_252E58478);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252C87D70();
  sub_252E37F84();
  v9[1] = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544828, &unk_252E58450);
  sub_252C87E28(&qword_27F544858, &qword_27F5405D8, asc_252E3CEB0, MEMORY[0x277D83948]);
  sub_252E37D54();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_252C87730()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252C877B4(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252C87810@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_252E37B74();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_252C878B0@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_252E37B74();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_252C87908(uint64_t a1)
{
  v2 = sub_252C87D70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252C87944(uint64_t a1)
{
  v2 = sub_252C87D70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252C879A4(void *a1)
{
  v2 = swift_allocObject();
  sub_252C87A18(a1);
  return v2;
}

uint64_t sub_252C87A18(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544818, &qword_252E58448);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252C87D70();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationEntityResponses();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544828, &unk_252E58450);
    sub_252C87E28(&qword_27F544830, &qword_27F5405D0, a1_12, MEMORY[0x277D83978]);
    sub_252E37C64();
    (*(v5 + 8))(v7, v4);
    *(v1 + 24) = v9[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252C87C80@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_252C87D70()
{
  result = qword_27F544820;
  if (!qword_27F544820)
  {
    result = swift_getWitnessTable(byte_252E5857C, &type metadata for HomeAutomationEntityResponses.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F544820);
  }

  return result;
}

unint64_t sub_252C87DC4()
{
  result = qword_27F544848;
  if (!qword_27F544848)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5405F0, &qword_252E3ECF0);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F544848);
  }

  return result;
}

uint64_t sub_252C87E28(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F544828, &unk_252E58450);
    v10 = sub_252C87EC8(a2, 255, type metadata accessor for HomeAutomationEntityResponse, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252C87EC8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252C87F24()
{
  result = qword_27F544860;
  if (!qword_27F544860)
  {
    result = swift_getWitnessTable(aU_15, &type metadata for HomeAutomationEntityResponses.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F544860);
  }

  return result;
}

unint64_t sub_252C87F7C()
{
  result = qword_27F544868;
  if (!qword_27F544868)
  {
    result = swift_getWitnessTable(byte_252E5848C, &type metadata for HomeAutomationEntityResponses.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F544868);
  }

  return result;
}

unint64_t sub_252C87FD4()
{
  result = qword_27F544870;
  if (!qword_27F544870)
  {
    result = swift_getWitnessTable(aLy, &type metadata for HomeAutomationEntityResponses.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F544870);
  }

  return result;
}

uint64_t sub_252C8804C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252C88A2C(a1);
}

uint64_t sub_252C880F8(void *__src)
{
  v1 = __src[50];
  if (*(v1 + 16))
  {
    return 0;
  }

  v2 = __src[51];
  if (*(v2 + 16))
  {
    return 0;
  }

  v3 = __src[52];
  if (*(v3 + 16))
  {
    return 0;
  }

  v4 = __src[53];
  if (v4[2])
  {
    return 0;
  }

  v5 = __src[54];
  if (*(v5 + 16))
  {
    return 0;
  }

  v6 = __src[55];
  if (*(v6 + 16))
  {
    return 0;
  }

  v7 = __src[56];
  if (*(v7 + 16))
  {
    return 0;
  }

  v8 = __src[57];
  if (*(v8 + 16))
  {
    return 0;
  }

  v9 = __src[58];
  if (*(v9 + 16))
  {
    return 0;
  }

  v10 = __src[59];
  if (*(v10 + 16))
  {
    return 0;
  }

  v21 = __src[60];
  if (*(v21 + 16))
  {
    return 0;
  }

  v20 = (__src + 61);
  memcpy(__dst, __src, sizeof(__dst));
  v23 = v1;
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v33 = v21;
  v34 = *v20;
  v12 = sub_252BAC7E4();
  v13 = v12;
  if (!(v12 >> 62))
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_15;
    }

LABEL_36:

    return 0;
  }

  v14 = sub_252E378C4();
  if (!v14)
  {
    goto LABEL_36;
  }

LABEL_15:
  for (i = 0; ; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x2530ADF00](i, v13);
    }

    else
    {
      if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v17 = *(v13 + 8 * i + 32);
    }

    v4 = v17;
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v19 = [v17 roomName];
    if (!v19)
    {
      v19 = [v4 zoneName];
      if (!v19)
      {
        v19 = [v4 homeName];
        if (!v19)
        {
          v19 = [v4 groupName];
          if (!v19)
          {
            v19 = [v4 homeEntityName];
            if (!v19)
            {
              v19 = [v4 outerDeviceName];
              if (!v19)
              {
                v19 = [v4 targetArea];
                if (!v19)
                {
                  v19 = [v4 targetMap];
                  if (!v19)
                  {
                    goto LABEL_34;
                  }
                }
              }
            }
          }
        }
      }
    }

    v16 = v19;

    if (v18 == v14)
    {

      return 1;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:

  return 0;
}

uint64_t sub_252C883BC(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = type metadata accessor for HomeStore(0);
  v2 = static HomeStore.shared.getter(v1);
  v3 = sub_2529D9114();

  if (v3)
  {
    v6 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v5 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = static HomeStore.shared.getter(v4);
  v8 = sub_2529D8DC0();

  if (v8 >> 62)
  {
    v9 = sub_252E378C4();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 == 1)
  {
    v11 = static HomeStore.shared.getter(v10);
    v12 = sub_2529D8DC0();

    if (v12 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_9;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:

      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2530ADF00](0, v12);
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_49:
          v12 = sub_2529F846C(0, *(v12 + 16) + 1, 1, v12);
          goto LABEL_42;
        }

        v13 = *(v12 + 32);
      }

      if (qword_27F53F520 != -1)
      {
        swift_once();
      }

      v14 = sub_252E36AD4();
      __swift_project_value_buffer(v14, qword_27F544E08);
      sub_252E379F4();

      v34[0] = 0xD000000000000013;
      v34[1] = 0x8000000252E8F770;
      v15 = sub_2529E8734();
      MEMORY[0x2530AD570](v15);

      sub_252CC3D90(0xD000000000000013, 0x8000000252E8F770, 0xD00000000000008BLL, 0x8000000252E8F6C0);

      v6 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v5 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
      goto LABEL_23;
    }
  }

  v16 = static HomeStore.shared.getter(v10);
  memcpy(v34, __dst, sizeof(v34));
  v17 = sub_252BAC7E4();
  v18 = sub_2529F744C(v17);

  if (v18)
  {
    v19 = [*&v18[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate] home];
    if (v19)
    {
      v20 = v19;

      type metadata accessor for Home(0);
      swift_allocObject();
      v21 = sub_2529E65BC(v20);

      if (qword_27F53F520 != -1)
      {
        swift_once();
      }

      v22 = sub_252E36AD4();
      __swift_project_value_buffer(v22, qword_27F544E08);
      v34[0] = 0;
      v34[1] = 0xE000000000000000;
      sub_252E379F4();

      v34[0] = 0xD000000000000017;
      v34[1] = 0x8000000252E8F750;
      v23 = (v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v24 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v25 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      MEMORY[0x2530AD570](v24, v25);

      sub_252CC3D90(v34[0], v34[1], 0xD00000000000008BLL, 0x8000000252E8F6C0);

      v6 = *v23;
      v5 = v23[1];
LABEL_23:

LABEL_35:
      v12 = MEMORY[0x277D84F90];
      goto LABEL_36;
    }
  }

  memcpy(v34, __dst, sizeof(v34));
  if ((sub_252C880F8(v34) & 1) == 0)
  {
    goto LABEL_35;
  }

  memcpy(v34, __dst, sizeof(v34));
  v26 = sub_252A0F454();
  if (!v26)
  {
    goto LABEL_35;
  }

  v27 = v26;
  if ((v26 & 0xC000000000000001) != 0)
  {
    if (sub_252E378C4() == 1)
    {
      goto LABEL_29;
    }

LABEL_34:

    goto LABEL_35;
  }

  if (*(v26 + 16) != 1)
  {
    goto LABEL_34;
  }

LABEL_29:
  v28 = sub_252DA089C(v27);

  if (!v28)
  {
    goto LABEL_35;
  }

  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v29 = sub_252E36AD4();
  __swift_project_value_buffer(v29, qword_27F544E08);
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  sub_252E379F4();

  v34[0] = 0xD00000000000002BLL;
  v34[1] = 0x8000000252E8F690;
  v30 = sub_2529E8734();
  MEMORY[0x2530AD570](v30);

  sub_252CC3D90(v34[0], v34[1], 0xD00000000000008BLL, 0x8000000252E8F6C0);

  v6 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v5 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v12 = &unk_2864A7610;
LABEL_36:
  if (!v3)
  {
    return v6;
  }

  if (!v5 || (*(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) != v6 || v5 != *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8)) && (sub_252E37DB4() & 1) == 0)
  {

    return v6;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_42:
  v32 = *(v12 + 16);
  v31 = *(v12 + 24);
  if (v32 >= v31 >> 1)
  {
    v12 = sub_2529F846C((v31 > 1), v32 + 1, 1, v12);
  }

  *(v12 + 16) = v32 + 1;
  *(v12 + v32 + 32) = 0;
  return v6;
}

uint64_t sub_252C88A4C()
{
  v18 = v0;
  memcpy(__dst, *(v0 + 40), sizeof(__dst));
  v1 = sub_252C883BC(__dst);
  v4 = v3;
  if (v2)
  {
    v5 = v1;
    v6 = v2;
    v7 = *(v0 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_252E3C290;
    _s7BuilderCMa_1();
    swift_allocObject();
    sub_252E1E238();
    memcpy(__dst, v7, sizeof(__dst));

    sub_252E1EBE8(__dst);

    if (!v4)
    {
      v4 = MEMORY[0x277D84F90];
    }

    v9 = sub_252E1F258(v4);

    swift_beginAccess();
    v10 = *(v9 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 64) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_2529F7A80(0, *(v10 + 2) + 1, 1, v10);
      *(v9 + 64) = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_2529F7A80((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    v14 = &v10[16 * v13];
    *(v14 + 4) = v5;
    *(v14 + 5) = v6;
    *(v9 + 64) = v10;
    swift_endAccess();
    sub_252E1E4F8(v8 + 32);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v15 = *(v0 + 8);

  return v15(v8);
}

BOOL sub_252C88C68(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 80);
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = *v2;
    v2 += 63;
  }

  while (!*(v4 + 16));
  return v3 == 0;
}

uint64_t *sub_252C88C98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v95 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v7 - 8);
  v97 = &v92 - v8;
  v9 = sub_252E32EE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_252E32F04();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540730, &qword_252E3D920);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v92 - v18;
  if (a4)
  {

    v96 = sub_252A6608C();
  }

  else
  {
    v96 = 0;
  }

  switch(a1)
  {
    case 1:

      v98 = 0x6C7562746867696CLL;
      if (v96)
      {
        goto LABEL_97;
      }

      goto LABEL_98;
    case 2:

      v98 = 0xD00000000000001ALL;
      if (v96)
      {
        goto LABEL_97;
      }

      goto LABEL_98;
    case 4:

      if (a4 && (, v46 = sub_252A66478(), , (v46 & 1) != 0))
      {
        v47 = 0xD000000000000012;
      }

      else
      {
        v47 = 0xD000000000000010;
      }

      goto LABEL_95;
    case 5:
      goto LABEL_65;
    case 6:
      goto LABEL_33;
    case 7:

      if (a4 && (, v33 = sub_252A66208(), , (v33 & 1) != 0))
      {
        v98 = 0x6C69662E6B636F6CLL;
      }

      else
      {
        v98 = 0x65706F2E6B636F6CLL;
      }

      goto LABEL_96;
    case 19:
      v98 = 0xD000000000000011;

      if (a4)
      {

        sub_252A666E8();
      }

      goto LABEL_96;
    case 23:

      if (a4 && (, v48 = sub_252A66478(), , (v48 & 1) != 0))
      {
        v98 = 0xD000000000000013;
      }

      else
      {
        v98 = 0xD000000000000011;
      }

      goto LABEL_96;
    case 27:

      if (a4)
      {

        v50 = sub_252A66478();

        if (v50)
        {
          goto LABEL_84;
        }
      }

      goto LABEL_94;
    case 28:

      if (a4 && (, v49 = sub_252A66478(), , (v49 & 1) != 0))
      {
LABEL_84:
        v47 = 0xD000000000000016;
      }

      else
      {
LABEL_94:
        v47 = 0xD000000000000014;
      }

LABEL_95:
      v98 = v47;
      goto LABEL_96;
    case 29:
      v98 = 0x69662E6573756F68;
      if (!a3)
      {
        goto LABEL_96;
      }

      v22 = type metadata accessor for HomeStore(0);
      v23 = static HomeStore.shared.getter(v22);
      v16 = sub_2529D9D50();

      v12 = 0xEA00000000006C6CLL;
      if (v16 >> 62)
      {
        v24 = sub_252E378C4();
        v9 = v95;
        if (!v24)
        {
LABEL_161:

          goto LABEL_96;
        }
      }

      else
      {
        v24 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v9 = v95;
        if (!v24)
        {
          goto LABEL_161;
        }
      }

      v19 = 0;
      v93 = v24;
      v94 = v16 & 0xC000000000000001;
      v10 = v16 & 0xFFFFFFFFFFFFFF8;
      while (2)
      {
        if (v94)
        {
          v13 = MEMORY[0x2530ADF00](v19, v16);
          v14 = v19 + 1;
          if (!__OFADD__(v19, 1))
          {
            goto LABEL_18;
          }

LABEL_32:
          __break(1u);
LABEL_33:

          sub_252E32EC4();
          sub_252E32EF4();
          (*(v14 + 8))(v16, v13);
          sub_252E32ED4();
          (*(v10 + 8))(v12, v9);
          v31 = sub_252E32EB4();
          v32 = *(v31 - 8);
          if ((*(v32 + 48))(v19, 1, v31) == 1)
          {
            sub_25293847C(v19, &qword_27F540730, &qword_252E3D920);
            goto LABEL_106;
          }

          v9 = sub_252E32EA4();
          v23 = v58;
          (*(v32 + 8))(v19, v31);
          if (v9 == 21825 && v23 == 0xE200000000000000 || (sub_252E37DB4() & 1) != 0 || v9 == 23118 && v23 == 0xE200000000000000 || (sub_252E37DB4() & 1) != 0 || v9 == 21058 && v23 == 0xE200000000000000 || (sub_252E37DB4() & 1) != 0 || v9 == 20035 && v23 == 0xE200000000000000 || (sub_252E37DB4() & 1) != 0 || v9 == 19272 && v23 == 0xE200000000000000 || (sub_252E37DB4() & 1) != 0)
          {
            goto LABEL_105;
          }

          goto LABEL_154;
        }

        if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          if ((v9 != 20554 || v23 != 0xE200000000000000) && (sub_252E37DB4() & 1) == 0 && (v9 != 21067 || v23 != 0xE200000000000000) && (sub_252E37DB4() & 1) == 0 && (v9 != 19285 || v23 != 0xE200000000000000) && (sub_252E37DB4() & 1) == 0 && (v9 != 21333 || v23 != 0xE200000000000000))
          {
            sub_252E37DB4();

LABEL_106:
            v98 = 0xD00000000000001ELL;
            if ((v96 & 1) == 0)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          }

LABEL_105:

          goto LABEL_106;
        }

        v13 = *(v16 + 8 * v19 + 32);

        v14 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_32;
        }

LABEL_18:
        v25 = sub_252E32E24();
        v23 = v26;
        if (v25 != v9 || v26 != a3)
        {
          v28 = sub_252E37DB4();

          if (v28)
          {
            goto LABEL_111;
          }

          v29 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
          v9 = v95;
          if (v29)
          {
            v30 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == v95 && v29 == a3;
            if (v30 || (sub_252E37DB4() & 1) != 0)
            {
              goto LABEL_111;
            }
          }

          ++v19;
          if (v14 == v93)
          {
            goto LABEL_161;
          }

          continue;
        }

        break;
      }

LABEL_111:

      v59 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
      v60 = [*(v13 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) category];
      v61 = [v60 categoryType];

      v62 = sub_252E36F34();
      v64 = v63;

      if (v62 == sub_252E36F34() && v64 == v65)
      {

        goto LABEL_120;
      }

      v67 = sub_252E37DB4();

      if (v67)
      {
LABEL_120:

        v74 = 0xD00000000000001DLL;
LABEL_121:
        v98 = v74;
        goto LABEL_133;
      }

      v68 = [*(v13 + v59) category];
      v69 = [v68 categoryType];

      v70 = sub_252E36F34();
      v72 = v71;

      if (v70 == sub_252E36F34() && v72 == v73)
      {

        goto LABEL_136;
      }

      v90 = sub_252E37DB4();

      if (v90)
      {
LABEL_136:

        v74 = 0xD000000000000014;
        goto LABEL_121;
      }

LABEL_139:

LABEL_96:
      if (v96)
      {
LABEL_97:
      }

LABEL_98:
      type metadata accessor for HomeAutomationAccessoryIcon.Builder(0);
      v51 = swift_allocObject();
      v52 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationAccessoryIcon7Builder_name;
      v53 = sub_252E36324();
      v54 = *(*(v53 - 8) + 56);
      v54(v51 + v52, 1, 1, v53);
      v55 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationAccessoryIcon7Builder_color;
      v54(v51 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationAccessoryIcon7Builder_color, 1, 1, v53);
      v56 = v97;
      sub_252E362F4();
      v54(v56, 0, 1, v53);
      swift_beginAccess();
      sub_252956C98(v56, v51 + v52);
      swift_endAccess();
      sub_252E362F4();
      v54(v56, 0, 1, v53);
      swift_beginAccess();
      sub_252956C98(v56, v51 + v55);
      swift_endAccess();
      type metadata accessor for HomeAutomationAccessoryIcon(0);
      swift_allocObject();
      return sub_252986A24(v51);
    case 30:
      v98 = 0x69662E6573756F68;
      if (!a3)
      {
        goto LABEL_96;
      }

      v34 = type metadata accessor for HomeStore(0);
      v23 = static HomeStore.shared.getter(v34);
      v35 = sub_2529D9D50();

      if (v35 >> 62)
      {
        v36 = sub_252E378C4();
        v9 = v95;
        if (!v36)
        {
          goto LABEL_161;
        }
      }

      else
      {
        v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v9 = v95;
        if (!v36)
        {
          goto LABEL_161;
        }
      }

      v37 = 0;
      v93 = v36;
      v94 = v35 & 0xC000000000000001;
      while (2)
      {
        if (v94)
        {
          v38 = MEMORY[0x2530ADF00](v37, v35);
          v39 = v37 + 1;
          if (!__OFADD__(v37, 1))
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_153;
          }

          v38 = *(v35 + 8 * v37 + 32);

          v39 = v37 + 1;
          if (!__OFADD__(v37, 1))
          {
LABEL_50:
            v40 = sub_252E32E24();
            v23 = v41;
            if (v40 == v9 && v41 == a3)
            {
            }

            else
            {
              v43 = sub_252E37DB4();

              if ((v43 & 1) == 0)
              {
                v44 = *(v38 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
                v9 = v95;
                if (!v44 || (*(v38 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == v95 ? (v45 = v44 == a3) : (v45 = 0), !v45 && (sub_252E37DB4() & 1) == 0))
                {

                  ++v37;
                  if (v39 == v93)
                  {
                    goto LABEL_161;
                  }

                  continue;
                }
              }
            }

            v75 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
            v76 = [*(v38 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) category];
            v77 = [v76 categoryType];

            v78 = sub_252E36F34();
            v80 = v79;

            if (v78 == sub_252E36F34() && v80 == v81)
            {
            }

            else
            {
              v83 = sub_252E37DB4();

              if ((v83 & 1) == 0)
              {
                v84 = [*(v38 + v75) category];
                v85 = [v84 categoryType];

                v86 = sub_252E36F34();
                v88 = v87;

                if (v86 == sub_252E36F34() && v88 == v89)
                {
                }

                else
                {
                  v91 = sub_252E37DB4();

                  if ((v91 & 1) == 0)
                  {
                    goto LABEL_139;
                  }
                }

                v98 = 0xD000000000000011;

                goto LABEL_133;
              }
            }

            v98 = 0x69666964696D7568;

LABEL_133:
            if (v96)
            {
              goto LABEL_97;
            }

            goto LABEL_98;
          }
        }

        break;
      }

      __break(1u);
LABEL_65:

      v98 = 0x6564616C626E6166;
      if (v96)
      {
        goto LABEL_97;
      }

      goto LABEL_98;
    case 32:

      v98 = 0x656C6B6E69727073;
      if ((v96 & 1) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    case 34:

      v20 = v96;
      v21 = 0x746563756166;
      goto LABEL_76;
    case 35:

      v20 = v96;
      v21 = 0x7265776F6873;
LABEL_76:
      v98 = v21 & 0xFFFFFFFFFFFFLL | 0x662E000000000000;
      if ((v20 & 1) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    case 36:

      v98 = 0x6C6C69662E7674;
      goto LABEL_96;
    case 39:
      v98 = 0xD000000000000011;

      if ((v96 & 1) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    case 41:

      v98 = 0x2E7674656C707061;
      goto LABEL_96;
    case 45:

      v98 = 0x6C69662E6B6E6973;
      if ((v96 & 1) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    default:
      v98 = 0x69662E6573756F68;

      goto LABEL_96;
  }
}

uint64_t *sub_252C8A08C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v29 = a1;
  sub_252956C1C(a1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type, &v27 - v8);
  v10 = sub_252E36324();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v9, 1, v10) == 1)
  {
    sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    v15 = sub_252E36304();
    v17 = v16;
    (*(v11 + 8))(v9, v10);
    v14 = v17;
    v13 = v15;
  }

  AccessoryTypeSemantic.init(rawValue:)(*&v13);
  v28 = sub_252A47F84(&v31);
  v19 = v18;
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v20 = sub_252E36AD4();
  __swift_project_value_buffer(v20, qword_27F544D60);
  v31 = 0x203A6574617453;
  v32 = 0xE700000000000000;
  v30 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544878, &qword_252E58608);
  v21 = sub_252E36F94();
  MEMORY[0x2530AD570](v21);

  sub_252CC3D90(v31, v32, 0xD00000000000009CLL, 0x8000000252E8F790);

  sub_252956C1C(v29 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityIdentifier, v7);
  if (v12(v7, 1, v10) == 1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v22 = sub_252E36304();
    v23 = v24;
    (*(v11 + 8))(v7, v10);
  }

  if (v19)
  {
    v25 = 0;
  }

  else
  {
    v25 = v28;
  }

  return sub_252C88C98(v25, v22, v23, a2);
}

unint64_t sub_252C8A3B8()
{
  result = qword_27F544880;
  if (!qword_27F544880)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F544888, qword_252E58630);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F544880);
  }

  return result;
}

unint64_t sub_252C8A430()
{
  result = qword_27F544890;
  if (!qword_27F544890)
  {
    result = swift_getWitnessTable(byte_252E586B0, &type metadata for HomeAutomationTrialFeature, v0, v1);
    atomic_store(result, &qword_27F544890);
  }

  return result;
}

uint64_t AccessoryTypeSemantic.rawValue.getter()
{
  result = 0x6C7562746867696CLL;
  switch(*v0)
  {
    case 1:
      result = 0x6B636F4C726F6F64;
      break;
    case 2:
      result = 0x6172656D61437069;
      break;
    case 3:
      result = 0x65526172656D6163;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
    case 0xF:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x74656C74756FLL;
      break;
    case 7:
      result = 0x686374697773;
      break;
    case 8:
      result = 0x74736F6D72656874;
      break;
    case 9:
      result = 0x616C6C69746E6576;
      break;
    case 0xA:
      result = 0x73646E696C62;
      break;
    case 0xB:
      result = 0x53636972656E6567;
      break;
    case 0xC:
      result = 0x65536E6F69746F6DLL;
      break;
    case 0xD:
      result = 0xD000000000000011;
      break;
    case 0xE:
      result = 0x79746964696D7568;
      break;
    case 0x10:
      result = 0xD000000000000014;
      break;
    case 0x11:
      result = 0xD000000000000013;
      break;
    case 0x12:
      v2 = 0x53656B6F6D73;
      goto LABEL_41;
    case 0x13:
      result = 0x53746361746E6F63;
      break;
    case 0x14:
    case 0x15:
      result = 0x657A69726F746F6DLL;
      break;
    case 0x16:
      v2 = 0x53746867696CLL;
LABEL_41:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 0x17:
      result = 0x636E61707563636FLL;
      break;
    case 0x18:
      result = 0x736E65536B61656CLL;
      break;
    case 0x19:
      result = 0x79726574746162;
      break;
    case 0x1A:
      result = 0x6C6C6542726F6F64;
      break;
    case 0x1B:
      result = 0x6669727550726961;
      break;
    case 0x1C:
      result = 0xD000000000000011;
      break;
    case 0x1D:
      result = 0x726574616568;
      break;
    case 0x1E:
      result = 0x72656C6F6F63;
      break;
    case 0x1F:
      result = 1952541811;
      break;
    case 0x20:
      result = 0x7974697275636573;
      break;
    case 0x21:
      result = 0x69666964696D7568;
      break;
    case 0x22:
      result = 0x6964696D75686564;
      break;
    case 0x23:
      result = 0xD000000000000011;
      break;
    case 0x24:
      result = 0x5F79616C70726961;
      break;
    case 0x25:
      result = 0x76745F656C707061;
      break;
    case 0x26:
      result = 0x5F74726F70726961;
      break;
    case 0x27:
      result = 0x646F70656D6F68;
      break;
    case 0x28:
      result = 0x5F646F70656D6F68;
      break;
    case 0x29:
      result = 1684099177;
      break;
    case 0x2A:
      result = 0x656E6F685069;
      break;
    case 0x2B:
      result = 0x72656B61657073;
      break;
    case 0x2C:
      result = 0x69736976656C6574;
      break;
    case 0x2D:
      result = 0x6974616769727269;
      break;
    case 0x2E:
      result = 0x654A7265776F6873;
      break;
    case 0x2F:
      result = 0x7265776F6873;
      break;
    case 0x30:
      result = 1802398067;
      break;
    case 0x31:
      result = 0x656C6B6E69727073;
      break;
    case 0x32:
      result = 0xD000000000000012;
      break;
    case 0x33:
      result = 0x706F4D746F626F72;
      break;
    default:
      return result;
  }

  return result;
}

HomeAutomationInternal::AccessoryTypeSemantic_optional __swiftcall AccessoryTypeSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37DE4();

  v5 = 0;
  v6 = 34;
  switch(v3)
  {
    case 0:
      goto LABEL_50;
    case 1:
      v5 = 1;
      goto LABEL_50;
    case 2:
      v5 = 2;
      goto LABEL_50;
    case 3:
      v5 = 3;
      goto LABEL_50;
    case 4:
      v5 = 4;
      goto LABEL_50;
    case 5:
      v5 = 5;
      goto LABEL_50;
    case 6:
      v5 = 6;
      goto LABEL_50;
    case 7:
      v5 = 7;
      goto LABEL_50;
    case 8:
      v5 = 8;
      goto LABEL_50;
    case 9:
      v5 = 9;
      goto LABEL_50;
    case 10:
      v5 = 10;
      goto LABEL_50;
    case 11:
      v5 = 11;
      goto LABEL_50;
    case 12:
      v5 = 12;
      goto LABEL_50;
    case 13:
      v5 = 13;
      goto LABEL_50;
    case 14:
      v5 = 14;
      goto LABEL_50;
    case 15:
      v5 = 15;
      goto LABEL_50;
    case 16:
      v5 = 16;
      goto LABEL_50;
    case 17:
      v5 = 17;
      goto LABEL_50;
    case 18:
      v5 = 18;
      goto LABEL_50;
    case 19:
      v5 = 19;
      goto LABEL_50;
    case 20:
      v5 = 20;
      goto LABEL_50;
    case 21:
      v5 = 21;
      goto LABEL_50;
    case 22:
      v5 = 22;
      goto LABEL_50;
    case 23:
      v5 = 23;
      goto LABEL_50;
    case 24:
      v5 = 24;
      goto LABEL_50;
    case 25:
      v5 = 25;
      goto LABEL_50;
    case 26:
      v5 = 26;
      goto LABEL_50;
    case 27:
      v5 = 27;
      goto LABEL_50;
    case 28:
      v5 = 28;
      goto LABEL_50;
    case 29:
      v5 = 29;
      goto LABEL_50;
    case 30:
      v5 = 30;
      goto LABEL_50;
    case 31:
      v5 = 31;
      goto LABEL_50;
    case 32:
      v5 = 32;
      goto LABEL_50;
    case 33:
      v5 = 33;
LABEL_50:
      v6 = v5;
      break;
    case 34:
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    default:
      v6 = 52;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t static AccessoryTypeSemantic.< infix(_:_:)()
{
  v0 = AccessoryTypeSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == AccessoryTypeSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252C8ACE0()
{
  v0 = AccessoryTypeSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == AccessoryTypeSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252C8AD7C()
{
  sub_252E37EC4();
  AccessoryTypeSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C8ADE4(uint64_t a1)
{
  AccessoryTypeSemantic.rawValue.getter();
  sub_252E37044();
}

uint64_t sub_252C8AE48(uint64_t a1)
{
  sub_252E37EC4();
  AccessoryTypeSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C8AEB8@<X0>(uint64_t *a1@<X8>)
{
  result = AccessoryTypeSemantic.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252C8AEE0()
{
  v0 = AccessoryTypeSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == AccessoryTypeSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252C8AF7C()
{
  v0 = AccessoryTypeSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == AccessoryTypeSemantic.rawValue.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_252C8B02C()
{
  v0 = AccessoryTypeSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == AccessoryTypeSemantic.rawValue.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_252C8B0DC()
{
  v0 = AccessoryTypeSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == AccessoryTypeSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252C8B238(uint64_t a1, uint64_t a2)
{
  v4 = sub_252C8B514();
  v5 = sub_252C8B568();
  v6 = sub_252C8B5BC();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252C8B2AC()
{
  result = qword_27F544898;
  if (!qword_27F544898)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessoryTypeSemantic, &type metadata for AccessoryTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F544898);
  }

  return result;
}

unint64_t sub_252C8B304()
{
  result = qword_27F5448A0;
  if (!qword_27F5448A0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540998, &qword_252E3DF58);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F5448A0);
  }

  return result;
}

unint64_t sub_252C8B36C()
{
  result = qword_27F5448A8;
  if (!qword_27F5448A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessoryTypeSemantic, &type metadata for AccessoryTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F5448A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryTypeSemantic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCD)
  {
    goto LABEL_17;
  }

  if (a2 + 51 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 51) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 51;
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

      return (*a1 | (v4 << 8)) - 51;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 51;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x34;
  v8 = v6 - 52;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessoryTypeSemantic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 51 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 51) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCD)
  {
    v4 = 0;
  }

  if (a2 > 0xCC)
  {
    v5 = ((a2 - 205) >> 8) + 1;
    *result = a2 + 51;
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
    *result = a2 + 51;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252C8B514()
{
  result = qword_27F5448B0;
  if (!qword_27F5448B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessoryTypeSemantic, &type metadata for AccessoryTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F5448B0);
  }

  return result;
}

unint64_t sub_252C8B568()
{
  result = qword_27F5448B8;
  if (!qword_27F5448B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessoryTypeSemantic, &type metadata for AccessoryTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F5448B8);
  }

  return result;
}

unint64_t sub_252C8B5BC()
{
  result = qword_27F5448C0;
  if (!qword_27F5448C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessoryTypeSemantic, &type metadata for AccessoryTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F5448C0);
  }

  return result;
}

uint64_t sub_252C8B614(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_252E34014();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C8B6D8, 0, 0);
}

uint64_t sub_252C8B6D8()
{
  v0[8] = sub_252B4F670();
  v1 = sub_252C2C068();
  v2 = v1;
  v19 = MEMORY[0x277D84F90];
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_21:
    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
LABEL_4:
  v0[9] = v6;
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v5, v2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_20;
      }

      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v10 = sub_252DA124C(0);

    ++v5;
    if (v10)
    {
      MEMORY[0x2530AD700]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v6 = v19;
      v5 = v9;
      goto LABEL_4;
    }
  }

  v11 = v0[4];

  v12 = *(v11 + 48);
  __swift_project_boxed_opaque_existential_1((v11 + 24), v12);
  v13 = swift_task_alloc();
  v0[10] = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v6;
  sub_252AD7CC4();
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_252C8B920;
  v15 = v0[7];
  v16 = v0[2];

  return sub_252BDB88C(v16, &unk_252E58A08, v13, v15, 0, 0, 0, v12);
}

uint64_t sub_252C8B920()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_252C8BB34;
  }

  else
  {

    v5 = sub_252C8BAC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C8BAC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C8BB34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C8BBAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252C8BBCC, 0, 0);
}

uint64_t sub_252C8BBCC()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 64), *(v0[2] + 88));

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_25299F248;
  v3 = v0[3];

  return sub_252C0FFE0(0, v1, v3);
}

void *sub_252C8BCC4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AsyncInProgressResponseHandler();
  v2 = swift_allocObject();
  result = sub_252D46D94(v2);
  *a1 = result;
  return result;
}

uint64_t sub_252C8BD04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252C8B614(a1, a2);
}

BOOL sub_252C8BDB0()
{
  v0 = sub_252B4F670();
  v1 = sub_252C285CC();
  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {

    v3 = sub_252C285CC();
    v4 = v3;
    v21 = MEMORY[0x277D84F90];
    if (v3 >> 62)
    {
      break;
    }

    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_20;
    }

LABEL_5:
    v20 = i;
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (sub_252DA5218())
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v6;
      if (v9 == v5)
      {
        i = v20;
        v10 = v21;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v5 = sub_252E378C4();
  if (v5)
  {
    goto LABEL_5;
  }

LABEL_20:
  v10 = MEMORY[0x277D84F90];
LABEL_21:

  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    v11 = sub_252E378C4();
  }

  else
  {
    v11 = *(v10 + 16);
  }

  v12 = sub_252C285CC();
  if (v12 >> 62)
  {
    v13 = sub_252E378C4();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = sub_252C2C068();
  if (v14 >> 62)
  {
    v15 = sub_252E378C4();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = sub_252C2F554();
  if (v16 >> 62)
  {
    v17 = sub_252E378C4();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = 0;
  if (!v17 && i)
  {
    return !v11 && v13 == v15;
  }

  return result;
}

uint64_t sub_252C8C044()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252C8BBAC(v2, v3);
}

void sub_252C8C0DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[4] = a1;
  v2[5] = a2;

  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v4)
  {
    v5 = v4;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544D60);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E8FC60);
    MEMORY[0x2530AD570](v2[2], v2[3]);
    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000006FLL, 0x8000000252E8FB90);

    v7 = v5;
    v9 = sub_252E36F04();
    CFNotificationCenterAddObserver(v7, v3, sub_252C8C31C, v9, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544D60);
    sub_252CC4050(0xD000000000000032, 0x8000000252E8FC00, 0xD00000000000006FLL, 0x8000000252E8FB90, 0xD000000000000012, 0x8000000252E8FC40, 28);
  }
}

void sub_252C8C31C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_252C8C588(a2, a3);
}

uint64_t sub_252C8C39C()
{
  v1 = v0;
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v2)
  {
    v3 = v2;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v4 = sub_252E36AD4();
    __swift_project_value_buffer(v4, qword_27F544D60);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003DLL, 0x8000000252E8FB50);
    MEMORY[0x2530AD570](v0[2], v0[3]);
    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000006FLL, 0x8000000252E8FB90);

    v5 = v3;
    v6 = sub_252E36F04();
    CFNotificationCenterRemoveObserver(v5, v1, v6, 0);
  }

  v1[4] = GEOLocationCoordinate2DMake;
  v1[5] = 0;
}

uint64_t sub_252C8C524()
{

  return swift_deallocClassInstance();
}

void sub_252C8C588(uint64_t a1, void *a2)
{
  if (!a1)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544D60);
    v10 = 0xD00000000000004ALL;
    v11 = 0x8000000252E8FCA0;
    v12 = 34;
    goto LABEL_14;
  }

  if (!a2)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D60);
    v10 = 0xD000000000000054;
    v11 = 0x8000000252E8FCF0;
    v12 = 38;
LABEL_14:
    sub_252CC4050(v10, v11, 0xD00000000000006FLL, 0x8000000252E8FB90, 0xD000000000000012, 0x8000000252E8FC40, v12);
    return;
  }

  v3 = qword_27F53F4E8;
  v4 = a2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544D60);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E8FD50);
  v6 = sub_252E36F34();
  MEMORY[0x2530AD570](v6);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000006FLL, 0x8000000252E8FB90);

  v7 = *(a1 + 32);

  v7(v8);
}

uint64_t HomeAttributeStateType.description.getter(uint64_t a1)
{
  result = 0x646570706F7473;
  switch(a1)
  {
    case 0:
      result = 0x6E776F6E6B6E75;
      break;
    case 1:
      return result;
    case 2:
      result = 0x676E696E6E7572;
      break;
    case 3:
      result = 0x646573756170;
      break;
    case 4:
      result = 0x43676E696B656573;
      break;
    case 5:
      result = 0x676E696772616863;
      break;
    case 6:
      result = 0x64656B636F64;
      break;
    case 7:
      result = 0x726F727265;
      break;
    case 8:
      result = 0x6B63757473;
      break;
    case 9:
      result = 0x6574746142776F6CLL;
      break;
    case 10:
      result = 0x4D6E694274737564;
      break;
    case 11:
      result = 0x466E694274737564;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x6E61547265746177;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000016;
      break;
    case 17:
      result = 0x64656D75736572;
      break;
    default:
      result = sub_252E37DF4();
      __break(1u);
      break;
  }

  return result;
}

void *sub_252C8CA50()
{
  result = sub_252CC7570(&unk_2864AEA80);
  off_27F5448C8 = result;
  return result;
}

uint64_t sub_252C8CA78(uint64_t a1)
{
  v2[92] = v1;
  v2[91] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437A8, &qword_252E4E438);
  v2[93] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437B0, &qword_252E4E440);
  v2[94] = v3;
  v2[95] = *(v3 - 8);
  v2[96] = swift_task_alloc();
  v4 = sub_252E33DE4();
  v2[97] = v4;
  v2[98] = *(v4 - 8);
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C8CBE8, 0, 0);
}

uint64_t sub_252C8CBE8(uint64_t a1)
{
  v81 = v1;
  v2 = *(v1 + 736);
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_state;
  if (!*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_state))
  {
    sub_252B680FC(a1);
    v9 = sub_252B64884();

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544DA8);
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_252E379F4();
    *(v1 + 688) = 0;
    *(v1 + 696) = 0xE000000000000000;
    MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E8FF80);
    *(v1 + 808) = v9;
    sub_252E37AE4();
    sub_252CC3D90(*(v1 + 688), *(v1 + 696), 0xD00000000000007ELL, 0x8000000252E8FE30);

    if (v9 != 6)
    {
      v12 = *(v1 + 736);
      v13 = *(v12 + 16);
      v14 = sub_252C8E160(v13, v9);

      v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_followUpSiriKitIntent);
      *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_followUpSiriKitIntent) = v14;
      v16 = v14;

      if (v14)
      {
        v17 = *(v1 + 736);
        sub_252CC3D90(0xD000000000000023, 0x8000000252E8FFA0, 0xD00000000000007ELL, 0x8000000252E8FE30);
        *(v2 + v3) = 1;
        if (*(v17 + 408) == 22)
        {
          v76 = 0;
        }

        else
        {
          LOBYTE(__src[0]) = *(v17 + 408);
          v18 = sub_252AB54DC();
          v76 = v18;
        }

        v61 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v18);
        swift_beginAccess();
        v62 = *(v61 + 22);

        v64 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v63);
        sub_252929E74((v64 + 136), v1 + 520);

        v66 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v65) + 29);

        v67 = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
        *(v1 + 584) = v67;
        *(v1 + 592) = &off_2864BA730;
        *(v1 + 560) = v66;
        type metadata accessor for ControlHomePromptForConfirmationStrategy();
        v68 = swift_allocObject();
        v69 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 560, v67);
        v70 = *(v67 - 8);
        v71 = swift_task_alloc();
        (*(v70 + 16))(v71, v69, v67);
        v72 = *v71;
        v68[12] = v67;
        v68[13] = &off_2864BA730;
        v68[8] = 0;
        v68[9] = v72;
        v68[14] = v76;
        v68[2] = v62;
        sub_252927BEC((v1 + 520), (v68 + 3));
        __swift_destroy_boxed_opaque_existential_1((v1 + 560));

        v73 = v16;

        v75 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v74);
        sub_252929E74((v75 + 96), v1 + 600);

        *(v1 + 712) = v73;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5448F8, &unk_252E58BB0);
        swift_allocObject();
        sub_252C8F4F8(&qword_27F540418, type metadata accessor for ControlHomePromptForConfirmationStrategy, a9_3);
        *(v1 + 720) = sub_252E333C4();
        sub_252C8F548();

        sub_252E33AC4();

        goto LABEL_32;
      }

      sub_252E379F4();

      __src[0] = 0xD000000000000029;
      __src[1] = 0x8000000252E8FEE0;
      v54 = *(v12 + 16);
      v55 = [v54 description];
      v56 = sub_252E36F34();
      v58 = v57;

      MEMORY[0x2530AD570](v56, v58);

      sub_252CC4050(0xD000000000000029, 0x8000000252E8FEE0, 0xD00000000000007ELL, 0x8000000252E8FE30, 0x2865747563657865, 0xE900000000000029, 82);
    }

    goto LABEL_31;
  }

  if (*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_state) != 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544DA8);
    sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E8FE10, 0xD00000000000007ELL, 0x8000000252E8FE30);
    goto LABEL_31;
  }

  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v4 = sub_252E36804();
  v6 = v5;

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_252E3C290;
    *(v7 + 32) = 25705;
    v8 = v7 + 32;
    *(v7 + 72) = MEMORY[0x277D837D0];
    *(v7 + 40) = 0xE200000000000000;
    *(v7 + 48) = v4;
    *(v7 + 56) = v6;
    sub_252CC630C(v7);
    swift_setDeallocating();
    sub_25293847C(v8, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v77 = v3;
  v78 = v2;
  v19 = [objc_opt_self() sharedAnalytics];
  if (v19)
  {
    v20 = v19;

    sub_252CC1408(v21);

    v22 = sub_252E36E24();

    [v20 logEventWithType:6503 context:v22];
  }

  v23 = *(v1 + 800);
  v24 = *(v1 + 792);
  v25 = *(v1 + 784);
  v26 = *(v1 + 776);
  v27 = *(v1 + 736);
  v28 = OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_confirmationState;
  swift_beginAccess();
  v79 = *(v25 + 16);
  v79(v23, v27 + v28, v26);
  (*(v25 + 104))(v24, *MEMORY[0x277D5BED8], v26);
  v29 = sub_252E33DD4();
  v30 = *(v25 + 8);
  v30(v24, v26);
  v30(v23, v26);
  if ((v29 & 1) == 0)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v44 = *(v1 + 800);
    v45 = *(v1 + 776);
    v46 = sub_252E36AD4();
    __swift_project_value_buffer(v46, qword_27F544DA8);
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E8FEB0);
    v79(v44, v27 + v28, v45);
    sub_252C8F4F8(&qword_27F5448F0, MEMORY[0x277D5BEE0], MEMORY[0x277D5BEF0]);
    v47 = sub_252E37D94();
    MEMORY[0x2530AD570](v47);

    v30(v44, v45);
    MEMORY[0x2530AD570](0x6E6974697865202CLL, 0xEE00776F6C662067);
    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ELL, 0x8000000252E8FE30);

    goto LABEL_31;
  }

  v31 = *(v1 + 736);
  v32 = *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_followUpSiriKitIntent);
  if (!v32)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
      v31 = *(v1 + 736);
    }

    v48 = sub_252E36AD4();
    __swift_project_value_buffer(v48, qword_27F544DA8);
    sub_252E379F4();

    __src[0] = 0xD000000000000029;
    __src[1] = 0x8000000252E8FEE0;
    v49 = *(v31 + 16);
    v50 = [v49 description];
    v51 = sub_252E36F34();
    v53 = v52;

    MEMORY[0x2530AD570](v51, v53);

    sub_252CC4050(0xD000000000000029, 0x8000000252E8FEE0, 0xD00000000000007ELL, 0x8000000252E8FE30, 0x2865747563657865, 0xE900000000000029, 101);

LABEL_31:
    sub_252E33B24();
    goto LABEL_32;
  }

  _s7BuilderCMa_1();
  swift_allocObject();
  *(sub_252E1E238() + 25) = 0;
  v33 = v32;
  sub_252E1E4F8(__src);

  memcpy((v1 + 16), __src, 0x1F8uLL);
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v34 = *(v1 + 744);
  v35 = sub_252E36AD4();
  __swift_project_value_buffer(v35, qword_27F544DA8);
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E8FF10);
  v36 = [v33 description];
  v37 = sub_252E36F34();
  v39 = v38;

  MEMORY[0x2530AD570](v37, v39);

  sub_252CC3D90(__src[0], __src[1], 0xD00000000000007ELL, 0x8000000252E8FE30);

  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_252E379F4();

  memcpy(__src, (v1 + 16), 0x1F8uLL);
  v40 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v40);

  sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E8FF50, 0xD00000000000007ELL, 0x8000000252E8FE30);

  *(v78 + v77) = 2;
  type metadata accessor for ControlHomeRCHStrategyAsync();
  *(v1 + 704) = swift_allocObject();
  sub_252B79980((v1 + 16), v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437D0, &qword_252E4E458);
  swift_allocObject();
  sub_252E335D4();
  sub_252C8F4F8(&qword_27F5437D8, type metadata accessor for ControlHomeRCHStrategyAsync, protocol conformance descriptor for ControlHomeRCHStrategyAsync);
  sub_252E33A44();
  if (qword_27F53F720 != -1)
  {
    swift_once();
  }

  v41 = *(v1 + 768);
  v42 = *(v1 + 760);
  v43 = *(v1 + 752);
  sub_252E33A34();
  (*(v42 + 8))(v41, v43);
  sub_252E33B14();

  sub_252935408(v1 + 16);

LABEL_32:

  v59 = *(v1 + 8);

  return v59();
}

uint64_t sub_252C8DA30(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540780, &unk_252E50210);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_252E33DE4();
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544908, &unk_252E58BC0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540410, qword_252E54EA0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  (*(v10 + 16))(v12, a1, v9);
  if ((*(v10 + 88))(v12, v9) != *MEMORY[0x277D5BC38])
  {
    return (*(v10 + 8))(v12, v9);
  }

  (*(v10 + 96))(v12, v9);
  (*(v14 + 32))(v16, v12, v13);
  sub_252E33D94();
  (*(v14 + 8))(v16, v13);
  v17 = v23;
  if ((*(v23 + 48))(v5, 1, v6) == 1)
  {
    return sub_25293847C(v5, &qword_27F540780, &unk_252E50210);
  }

  (*(v17 + 32))(v8, v5, v6);
  v19 = OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_confirmationState;
  v20 = v22;
  swift_beginAccess();
  (*(v17 + 24))(v20 + v19, v8, v6);
  swift_endAccess();
  return (*(v17 + 8))(v8, v6);
}

uint64_t sub_252C8DDD4()
{
  memcpy(v6, (v0 + 24), 0x1F8uLL);
  sub_252935408(v6);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_input;
  v2 = sub_252E34104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_confirmationState;
  v4 = sub_252E33DE4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ControlHomeFollowUpFlow(uint64_t a1)
{
  result = qword_27F5448D8;
  if (!qword_27F5448D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252C8DF30(uint64_t a1)
{
  result = sub_252E34104();
  if (v2 <= 0x3F)
  {
    result = sub_252E33DE4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_252C8E034()
{
  result = qword_27F5448E8;
  if (!qword_27F5448E8)
  {
    result = swift_getWitnessTable(byte_252E58B14, &type metadata for FollowUpFlowState, v0, v1);
    atomic_store(result, &qword_27F5448E8);
  }

  return result;
}

uint64_t sub_252C8E088(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_252C8CA78(a1);
}

uint64_t sub_252C8E124(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ControlHomeFollowUpFlow(0);

  return sub_252E33644();
}

char *sub_252C8E160(unint64_t a1, char a2)
{
  LOBYTE(v136) = a2;
  if (qword_27F53F500 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544DA8);
    sub_252E379F4();

    v141[0] = 0xD000000000000010;
    v141[1] = 0x8000000252E8FFD0;
    v4 = [a1 description];
    v5 = sub_252E36F34();
    v7 = v6;

    MEMORY[0x2530AD570](v5, v7);

    sub_252CC4050(0xD000000000000010, 0x8000000252E8FFD0, 0xD00000000000007ELL, 0x8000000252E8FE30, 0xD000000000000019, 0x8000000252E8FFF0, 142);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AD8, &unk_252E58BD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E53770;
    *(inited + 32) = 0;
    v9 = type metadata accessor for HomeAttributeValue();
    v10 = objc_allocWithZone(v9);
    v11 = sub_252E36F04();
    v12 = [v10 initWithIdentifier:0 displayString:v11];

    v13 = v12;
    [v13 setBoolValue_];
    [v13 setType_];

    *(inited + 40) = v13;
    *(inited + 48) = 1;
    v14 = objc_allocWithZone(v9);
    v15 = sub_252E36F04();
    v16 = [v14 initWithIdentifier:0 displayString:v15];

    v17 = v16;
    [v17 setBoolValue_];
    [v17 &:1 OBJC:? LABEL:? PROTOCOL:? :? :?HMExecuteOperation];

    *(inited + 56) = v17;
    *(inited + 64) = 46;
    *(inited + 72) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415741, 0xE800000000000000, 0);
    *(inited + 80) = 49;
    *(inited + 88) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415741, 0xE800000000000000, 0);
    *(inited + 96) = 47;
    *(inited + 104) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x52415F544847494ELL, 0xE90000000000004DLL, 0);
    *(inited + 112) = 48;
    *(inited + 120) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415453, 0xE800000000000000, 0);
    *(inited + 128) = 50;
    *(inited + 136) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D5241534944, 0xE600000000000000, 0);
    *(inited + 144) = 5;
    v18 = objc_allocWithZone(v9);
    v19 = sub_252E36F04();
    v20 = [v18 initWithIdentifier:0 displayString:v19];

    v21 = v20;
    [v21 setBoolValue_];
    [v21 &:1 OBJC:? LABEL:? PROTOCOL:? :? :?HMExecuteOperation];

    *(inited + 152) = v21;
    *(inited + 160) = 6;
    v22 = objc_allocWithZone(v9);
    v23 = sub_252E36F04();
    v24 = [v22 initWithIdentifier:0 displayString:v23];

    v25 = v24;
    [v25 setBoolValue_];
    [v25 &:1 OBJC:? LABEL:? PROTOCOL:? :? :?HMExecuteOperation];

    *(inited + 168) = v25;
    *(inited + 176) = 9;
    v26 = objc_allocWithZone(v9);
    v27 = sub_252E36F04();
    v28 = [v26 initWithIdentifier:0 displayString:v27];

    v29 = v28;
    [v29 setBoolValue_];
    [v29 &:1 OBJC:? LABEL:? PROTOCOL:? :? :?HMExecuteOperation];

    *(inited + 184) = v29;
    *(inited + 192) = 10;
    v30 = objc_allocWithZone(v9);
    v31 = sub_252E36F04();
    v32 = [v30 initWithIdentifier:0 displayString:v31];

    v33 = v32;
    [v33 setBoolValue_];
    [v33 &:1 OBJC:? LABEL:? PROTOCOL:? :? :?HMExecuteOperation];

    *(inited + 200) = v33;
    v138 = sub_252CC5AB4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AE0, &qword_252E419E8);
    swift_arrayDestroy();
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_252E3C3C0;
    *(v34 + 32) = 9;
    v35 = objc_allocWithZone(v9);
    v36 = sub_252E36F04();
    v37 = [v35 initWithIdentifier:0 displayString:v36];

    v38 = v37;
    [v38 setIntegerValue_];
    [v38 setUnit_];
    [v38 &:4 OBJC:? LABEL:? PROTOCOL:? :? :?HMExecuteOperation];

    *(v34 + 40) = v38;
    *(v34 + 48) = 10;
    v39 = objc_allocWithZone(v9);
    v40 = sub_252E36F04();
    v41 = [v39 initWithIdentifier:0 displayString:v40];

    v42 = v41;
    v43 = a1;
    [v42 setIntegerValue_];
    [v42 setUnit_];
    [v42 &:4 OBJC:? LABEL:? PROTOCOL:? :? :?HMExecuteOperation];

    *(v34 + 56) = v42;
    v44 = sub_252CC5AB4(v34);
    swift_setDeallocating();
    swift_arrayDestroy();
    v45 = MEMORY[0x277D84F90];
    v142 = MEMORY[0x277D84F90];
    v46 = [a1 filters];
    if (!v46)
    {

      goto LABEL_13;
    }

    v47 = v46;
    type metadata accessor for HomeFilter();
    v48 = sub_252E37264();

    v137 = [a1 userTask];
    if (!v137)
    {

      goto LABEL_13;
    }

    switch(v136)
    {
      case 3u:

        sub_252B680FC(v63);
        sub_252B65874(v141);

        v65 = LOBYTE(v141[0]);
        if (LOBYTE(v141[0]) == 77)
        {

          v66 = 0xD000000000000037;
          v67 = 0x8000000252E90010;
          v68 = 173;
LABEL_87:
          sub_252CC4050(v66, v67, 0xD00000000000007ELL, 0x8000000252E8FE30, 0xD000000000000019, 0x8000000252E8FFF0, v68);

          return 0;
        }

        v97 = sub_252B680FC(v64);
        swift_beginAccess();
        v98 = *(v97 + 32);
        if (!(v98 >> 62))
        {
          result = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
            goto LABEL_55;
          }

LABEL_86:

          v66 = 0xD000000000000029;
          v67 = 0x8000000252E90110;
          v68 = 178;
          goto LABEL_87;
        }

        result = sub_252E378C4();
        if (!result)
        {
          goto LABEL_86;
        }

LABEL_55:
        v99 = result - 1;
        if (__OFSUB__(result, 1))
        {
          __break(1u);
        }

        else if ((v98 & 0xC000000000000001) == 0)
        {
          if ((v99 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v99 < *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v100 = *(v98 + 8 * v99 + 32);

            goto LABEL_60;
          }

          __break(1u);
          return result;
        }

        v100 = MEMORY[0x2530ADF00](v99, v98);

LABEL_60:
        v101 = sub_252C32060();
        if (v101)
        {
          v102 = v101;
          v103 = [v43 userTask];
          if (v103)
          {
            v104 = v103;
            v105 = [v103 attribute];

            if (v105 == 9)
            {
              if (*(v44 + 16))
              {
                v106 = sub_252A4509C(v65);
                if (v107)
                {
                  v108 = v106;

                  v109 = v108;
LABEL_72:
                  v116 = *(*(v44 + 56) + 8 * v109);

                  type metadata accessor for ControlHomeIntent.Builder();
                  swift_allocObject();
                  v117 = v116;
                  v118 = ControlHomeIntent.Builder.init()();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544910, &unk_252E58BE0);
                  v119 = swift_allocObject();
                  *(v119 + 16) = xmmword_252E3C290;
                  *(v119 + 32) = v102;
                  v120 = *(*v118 + 208);
                  v121 = v102;
                  v122 = v120(v119);

                  v123 = (*(*v122 + 192))(1, v105, v116);

                  v43 = (*(*v123 + 224))(v124);

                  return v43;
                }
              }
            }

            if (*(v138 + 16))
            {
              v109 = sub_252A4509C(v65);
              if (v115)
              {
                v44 = v138;
                goto LABEL_72;
              }
            }

            v125 = 0xD00000000000002CLL;
            v126 = 0x8000000252E900A0;
            v127 = 201;
          }

          else
          {

            v125 = 0xD000000000000033;
            v126 = 0x8000000252E900D0;
            v127 = 188;
          }

          sub_252CC4050(v125, v126, 0xD00000000000007ELL, 0x8000000252E8FE30, 0xD000000000000019, 0x8000000252E8FFF0, v127);

          return 0;
        }

        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000043, 0x8000000252E90050);
        v111 = [v100 description];
        v112 = sub_252E36F34();
        v114 = v113;

        MEMORY[0x2530AD570](v112, v114);

        sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007ELL, 0x8000000252E8FE30, 0xD000000000000019, 0x8000000252E8FFF0, 183);

LABEL_13:

        return 0;
      case 4u:

        v62 = a1;
        return v43;
      case 5u:

        if (sub_252C6E240(a1) == 2)
        {
          v49 = 70.0;
        }

        else
        {
          v49 = 21.0;
        }

        v50 = sub_252C6E240(a1);
        v51 = objc_allocWithZone(v9);
        v52 = sub_252E36F04();
        v53 = [v51 initWithIdentifier:0 displayString:v52];

        v54 = v53;
        [v54 setDoubleValue_];
        [v54 setUnit_];
        [v54 setType_];

        type metadata accessor for ControlHomeIntent.Builder();
        swift_allocObject();
        v55 = ControlHomeIntent.Builder.init()();
        v56 = sub_252B4EEFC(v48);

        v57 = (*(*v55 + 208))(v56);

        v58 = *(*v57 + 192);
        v59 = v54;
        v60 = v58(1, 6, v54);

        v43 = (*(*v60 + 224))();
        goto LABEL_84;
    }

    v141[0] = v45;
    if (v48 >> 62)
    {
      goto LABEL_81;
    }

    v69 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v69)
    {
      break;
    }

LABEL_21:
    a1 = 0;
    v140 = v48 & 0xC000000000000001;
    v139 = v69;
    while (1)
    {
      if (v140)
      {
        v70 = MEMORY[0x2530ADF00](a1, v48);
      }

      else
      {
        if (a1 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v70 = *(v48 + 8 * a1 + 32);
      }

      v71 = v70;
      v72 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v73 = [v70 isExcludeFilter];
      sub_252956D08();
      v74 = sub_252E37674();
      v75 = v74;
      if (v73)
      {
        v76 = sub_252E37694();

        if (v76)
        {
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        v69 = v139;
      }

      else
      {
      }

      ++a1;
      if (v72 == v69)
      {
        v77 = 0;
        v136 = v141[0];
        v78 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v140)
          {
            v79 = MEMORY[0x2530ADF00](v77, v48);
          }

          else
          {
            if (v77 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_80;
            }

            v79 = *(v48 + 8 * v77 + 32);
          }

          v80 = v79;
          v81 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            v69 = sub_252E378C4();
            if (!v69)
            {
              goto LABEL_82;
            }

            goto LABEL_21;
          }

          v82 = [v79 isExcludeFilter];
          v83 = sub_252E37674();
          v84 = v83;
          if (!v82)
          {
            break;
          }

          v85 = sub_252E37694();

          if ((v85 & 1) == 0)
          {
            goto LABEL_46;
          }

LABEL_36:
          ++v77;
          if (v81 == v139)
          {
            v110 = v136;
            goto LABEL_83;
          }
        }

LABEL_46:
        if (qword_27F53F478 != -1)
        {
          swift_once();
        }

        v86 = off_27F5448C8;
        [v137 attribute];
        if (!v86[2] || (v87 = sub_252A488EC(), (v88 & 1) == 0))
        {

          return 0;
        }

        v89 = *(v86[7] + 8 * v87);
        type metadata accessor for HomeFilter.Builder();
        v90 = swift_allocObject();
        *(v90 + 16) = 0;
        *(v90 + 24) = 0;
        *(v90 + 32) = 0;
        *(v90 + 40) = 7;
        *(v90 + 48) = 0u;
        *(v90 + 64) = 0u;
        *(v90 + 80) = 0u;
        *(v90 + 96) = 0u;
        *(v90 + 112) = 0u;
        *(v90 + 128) = 0u;
        *(v90 + 144) = 0u;
        *(v90 + 160) = 0u;
        *(v90 + 175) = 0;
        v91 = v80;
        v92 = sub_252B72040(v80);

        v93 = (*(*v92 + 624))(v89);

        v95 = (*(*v93 + 760))(v94);

        v96 = v95;
        MEMORY[0x2530AD700]();
        if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();

        v78 = v142;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

LABEL_82:
  v110 = MEMORY[0x277D84F90];
  v78 = MEMORY[0x277D84F90];
LABEL_83:

  type metadata accessor for ControlHomeIntent.Builder();
  swift_allocObject();
  v128 = ControlHomeIntent.Builder.init()();
  v141[0] = v78;
  sub_25297A8D8(v110);
  v129 = sub_252B4EEFC(v78);

  v130 = (*(*v128 + 208))(v129);

  v131 = objc_allocWithZone(v9);
  v132 = sub_252E36F04();
  v133 = [v131 initWithIdentifier:0 displayString:v132];

  v134 = v133;
  [v134 setBoolValue_];
  [v134 setType_];

  v135 = (*(*v130 + 192))(1, 27, v134);

  v43 = (*(*v135 + 224))();
LABEL_84:

  return v43;
}

uint64_t sub_252C8F4F8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252C8F548()
{
  result = qword_27F544900;
  if (!qword_27F544900)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5448F8, &unk_252E58BB0);
    result = swift_getWitnessTable(MEMORY[0x277D5B670], v3, v0, v1);
    atomic_store(result, &qword_27F544900);
  }

  return result;
}

unint64_t sub_252C8F5AC(uint64_t a1)
{
  v2 = v1;
  if ([v1 taskType] != 1)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544CB8);
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E90140);
    [v1 taskType];
    sub_252E37AE4();
    goto LABEL_36;
  }

  v4 = [v1 attribute];
  if (v4 > 19)
  {
    if (v4 != 20 && v4 != 47)
    {
LABEL_22:
      result = sub_252C8FB10(a1, v1);
      if (result)
      {
        v21 = result;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        result = swift_allocObject();
        *(result + 16) = xmmword_252E3C130;
        *(result + 32) = v21;
      }

      return result;
    }

    v28 = MEMORY[0x277D84F90];
    v13 = sub_252C8FB10(a1, v1);
    if (v13)
    {
      v14 = v13;
      v15 = sub_252C9045C(a1);
      if (v15)
      {
LABEL_26:
        v23 = v15;
        v24 = v14;
        MEMORY[0x2530AD700]();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v25 = v23;
        MEMORY[0x2530AD700]();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();

        return v28;
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544CB8);
    sub_252E379F4();

    v29 = 0xD000000000000011;
    v30 = 0x8000000252E901F0;
    v17 = HomeAttributeType.description.getter([v2 attribute]);
    MEMORY[0x2530AD570](v17);

    v18 = "Unable to obtain ";
    v19 = 0xD00000000000001DLL;
    goto LABEL_35;
  }

  if (v4 == 2)
  {
    v28 = MEMORY[0x277D84F90];
    v22 = sub_252C8FB10(a1, v1);
    if (v22)
    {
      v14 = v22;
      v15 = sub_252C9016C(a1);
      if (v15)
      {
        goto LABEL_26;
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v26 = sub_252E36AD4();
    __swift_project_value_buffer(v26, qword_27F544CB8);
    sub_252E379F4();

    v29 = 0xD000000000000011;
    v30 = 0x8000000252E901F0;
    v27 = HomeAttributeType.description.getter([v2 attribute]);
    MEMORY[0x2530AD570](v27);

    v18 = " and active actions from task";
    v19 = 0xD00000000000001CLL;
LABEL_35:
    MEMORY[0x2530AD570](v19, v18 | 0x8000000000000000);
LABEL_36:
    sub_252CC3D90(v29, v30, 0xD00000000000007BLL, 0x8000000252E90170);

    return 0;
  }

  if (v4 != 5)
  {
    goto LABEL_22;
  }

  sub_252B680FC(5);
  sub_252B66D6C(&v29);

  if (v29 == 709 || (v5 = sub_252C56114(), !v6) || (v7 = COERCE_DOUBLE(sub_252C5C088(v5, v6)), (v10 & 1) != 0))
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544CB8);
    sub_252CC3D90(0xD000000000000023, 0x8000000252E90250, 0xD00000000000007BLL, 0x8000000252E90170);
    return 0;
  }

  return sub_252D3AEFC(a1, v7, v8, v9);
}

id sub_252C8FB10(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = sub_252DE8C4C(a2, a1);
  if (!v5)
  {
LABEL_18:
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_27F544CB8);
    sub_252E379F4();

    v21 = [v2 description];
    v22 = sub_252E36F34();
    v24 = v23;

    MEMORY[0x2530AD570](v22, v24);

    sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E902F0, 0xD00000000000007BLL, 0x8000000252E90170);
    goto LABEL_46;
  }

  v6 = v4;
  v7 = v5;
  v8 = [*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
  sub_252BAC798();
  v9 = sub_252E37264();

  v36 = v2;
  if (v9 >> 62)
  {
    goto LABEL_42;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_43:

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v34 = sub_252E36AD4();
    __swift_project_value_buffer(v34, qword_27F544CB8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E90320);
    v35 = sub_252CDBB90();
    MEMORY[0x2530AD570](v35);

    MEMORY[0x2530AD570](0x7974206874697720, 0xEC000000203A6570);
    MEMORY[0x2530AD570](v6, v7);

    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E90170);
LABEL_46:

    return 0;
  }

LABEL_4:
  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x2530ADF00](v11, v9);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_42:
        v10 = sub_252E378C4();
        if (!v10)
        {
          goto LABEL_43;
        }

        goto LABEL_4;
      }

      v12 = *(v9 + 8 * v11 + 32);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_17;
      }
    }

    v14 = v12;
    v15 = [v12 characteristicType];
    v16 = sub_252E36F34();
    v18 = v17;

    if (v16 == v6 && v7 == v18)
    {

      goto LABEL_23;
    }

    v2 = sub_252E37DB4();

    if (v2)
    {
      break;
    }

    ++v11;
    if (v13 == v10)
    {
      goto LABEL_43;
    }
  }

LABEL_23:

  sub_252DE6090(v36, &v38);
  if (!*(&v39 + 1))
  {
    sub_252982F10(&v38);
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543558, &unk_252E4D230);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v40 = 0;
    goto LABEL_29;
  }

  v25 = v40;
  if (v40)
  {
    goto LABEL_37;
  }

LABEL_29:
  v26 = [v36 value];
  if (!v26)
  {
    v38 = 0u;
    v39 = 0u;
    goto LABEL_35;
  }

  v27 = v26;
  sub_252D09214(&v38);

  if (!*(&v39 + 1))
  {
LABEL_35:
    sub_252982F10(&v38);
    v29 = 0;
    goto LABEL_36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543558, &unk_252E4D230);
  v28 = swift_dynamicCast();
  v29 = v37;
  if (!v28)
  {
    v29 = 0;
  }

LABEL_36:
  v40 = v29;
  swift_unknownObjectRelease();
  v25 = v40;
  if (v40)
  {
LABEL_37:
    v30 = [objc_allocWithZone(MEMORY[0x277CD19A8]) initWithCharacteristic:v14 targetValue:v25];

    swift_unknownObjectRelease();
    return v30;
  }

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v32 = sub_252E36AD4();
  __swift_project_value_buffer(v32, qword_27F544CB8);
  *&v38 = 0;
  *(&v38 + 1) = 0xE000000000000000;
  sub_252E379F4();

  strcpy(&v38, "Unable to map ");
  HIBYTE(v38) = -18;
  [v36 value];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
  v33 = sub_252E36F94();
  MEMORY[0x2530AD570](v33);

  MEMORY[0x2530AD570](0x20776172206F7420, 0xEE002E65756C6176);
  sub_252CC3D90(v38, *(&v38 + 1), 0xD00000000000007BLL, 0x8000000252E90170);

  swift_unknownObjectRelease();
  return 0;
}

id sub_252C9016C(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
  sub_252BAC798();
  v2 = sub_252E37264();

  if (v2 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 characteristicType];
      v9 = sub_252E36F34();
      v11 = v10;

      if (v9 == sub_252E36F34() && v11 == v12)
      {

LABEL_17:

        v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
        v16 = [objc_allocWithZone(MEMORY[0x277CD19A8]) initWithCharacteristic:v6 targetValue:v15];

        return v16;
      }

      v14 = sub_252E37DB4();

      if (v14)
      {
        goto LABEL_17;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v18 = sub_252E36AD4();
  __swift_project_value_buffer(v18, qword_27F544CB8);
  sub_252E379F4();

  v19 = sub_252CDBB90();
  MEMORY[0x2530AD570](v19);

  sub_252CC3D90(0xD000000000000030, 0x8000000252E90280, 0xD00000000000007BLL, 0x8000000252E90170);

  return 0;
}

id sub_252C9045C(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
  sub_252BAC798();
  v2 = sub_252E37264();

  if (v2 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 characteristicType];
      v9 = sub_252E36F34();
      v11 = v10;

      if (v9 == sub_252E36F34() && v11 == v12)
      {

LABEL_17:

        v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
        v16 = [objc_allocWithZone(MEMORY[0x277CD19A8]) initWithCharacteristic:v6 targetValue:v15];

        return v16;
      }

      v14 = sub_252E37DB4();

      if (v14)
      {
        goto LABEL_17;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v18 = sub_252E36AD4();
  __swift_project_value_buffer(v18, qword_27F544CB8);
  sub_252E379F4();

  v19 = sub_252CDBB90();
  MEMORY[0x2530AD570](v19);

  sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E902C0, 0xD00000000000007BLL, 0x8000000252E90170);

  return 0;
}

void *sub_252C907E8()
{
  type metadata accessor for HomeFilter();
  v0 = sub_252E36BD4();
  if (v0)
  {
    v1 = qword_27F53F4E8;
    v2 = v0;
    v3 = v0;
    if (v1 != -1)
    {
      goto LABEL_52;
    }

    goto LABEL_3;
  }

  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(0);
  sub_252929E74((v7 + 288), &v40);

  v8 = v42;
  v9 = v43;
  __swift_project_boxed_opaque_existential_1(&v40, v42);
  v10 = (*(v9 + 88))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  if ((v10 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_252E36C14();
  v11 = sub_252E359F4();

  if (!*(v11 + 16) || (v12 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000), (v13 & 1) == 0))
  {
LABEL_31:

LABEL_32:
    sub_252E36C14();
    v28 = sub_252E359F4();

    if (!*(v28 + 16) || (v29 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000), (v30 & 1) == 0))
    {

      v14 = MEMORY[0x277D84F90];
      if (*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_40;
      }

      goto LABEL_65;
    }

    v14 = *(*(v28 + 56) + 8 * v29);

    if ((v14 & 0xC000000000000001) != 0)
    {
      goto LABEL_58;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_60;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  if (v14 >> 62)
  {
LABEL_60:
    v15 = sub_252E378C4();
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_61:
    v2 = MEMORY[0x277D84F90];
LABEL_62:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5417F8, &qword_252E40A98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = v2;
    v38 = inited + 32;
    v14 = sub_252A491E4(inited, MEMORY[0x277D84F90], 0, 0);
    swift_setDeallocating();
    sub_25293847C(v38, &qword_27F541800, &unk_252E58C50);
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v39 = sub_252E36AD4();
    __swift_project_value_buffer(v39, qword_27F544D60);
    sub_252CC3D90(0xD000000000000036, 0x8000000252E90630, 0xD00000000000007ALL, 0x8000000252E90370);
    if (*(v14 + 16))
    {
      while (1)
      {
LABEL_40:
        v19 = sub_252B0AB50(v14);

        if (v19 >> 62)
        {
LABEL_54:
          if (!sub_252E378C4())
          {
            goto LABEL_65;
          }
        }

        else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_65;
        }

        if ((v19 & 0xC000000000000001) != 0)
        {
          break;
        }

        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {

          goto LABEL_45;
        }

        __break(1u);
LABEL_58:
        MEMORY[0x2530ADF00](0, v14);
LABEL_37:

        v14 = sub_252E358F4();

        if (!*(v14 + 16))
        {
          goto LABEL_65;
        }
      }

      MEMORY[0x2530ADF00](0, v19);
LABEL_45:

      v31 = sub_252968368();
      v32 = qword_27F53F4E8;
      v33 = v31;
      v34 = v31;
      if (v32 != -1)
      {
        swift_once();
      }

      v35 = sub_252E36AD4();
      __swift_project_value_buffer(v35, qword_27F544D60);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E905F0);
      v44 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407A0, &unk_252E3DC50);
      v36 = sub_252E36F94();
      MEMORY[0x2530AD570](v36);

      sub_252CC3D90(v40, v41, 0xD00000000000007ALL, 0x8000000252E90370);

      return v33;
    }

LABEL_65:

    return 0;
  }

LABEL_9:
  v16 = 0;
  v2 = MEMORY[0x277D84F90];
  while ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](v16, v14);
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_15:
    v18 = sub_252E35914();

    v19 = *(v18 + 16);
    v20 = v2[2];
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      goto LABEL_49;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v21 <= v2[3] >> 1)
    {
      if (!*(v18 + 16))
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      v2 = sub_2529F85F4(isUniquelyReferenced_nonNull_native, v23, 1, v2);
      if (!*(v18 + 16))
      {
LABEL_10:

        if (v19)
        {
          goto LABEL_50;
        }

        goto LABEL_11;
      }
    }

    v24 = (v2[3] >> 1) - v2[2];
    sub_252E34724();
    if (v24 < v19)
    {
      goto LABEL_51;
    }

    swift_arrayInitWithCopy();

    if (v19)
    {
      v25 = v2[2];
      v26 = __OFADD__(v25, v19);
      v27 = v25 + v19;
      if (v26)
      {
        __break(1u);
        goto LABEL_54;
      }

      v2[2] = v27;
    }

LABEL_11:
    ++v16;
    if (v17 == v15)
    {
      goto LABEL_62;
    }
  }

  if (v16 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  swift_once();
LABEL_3:
  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544D60);
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_252E379F4();

  v40 = 0xD000000000000028;
  v41 = 0x8000000252E90670;
  v44 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407A0, &unk_252E3DC50);
  v5 = sub_252E36F94();
  MEMORY[0x2530AD570](v5);

  sub_252CC3D90(v40, v41, 0xD00000000000007ALL, 0x8000000252E90370);

  return v2;
}

void *sub_252C91044(unint64_t a1, int a2)
{
  v57 = a2;
  v56 = sub_252E32E84();
  v3 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_252E36C24();
  v42 = *(v49 - 8);
  v5 = MEMORY[0x28223BE20](v49);
  v48 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544918, &unk_252E58C40);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v54 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v43 = v40 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v40 - v13;
  sub_252E36BA4();
  swift_allocObject();
  result = sub_252E36B94();
  v44 = result;
  if (!(a1 >> 62))
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_21:

    return MEMORY[0x277D84F90];
  }

  result = sub_252E378C4();
  v16 = result;
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v16 < 1)
  {
    __break(1u);
  }

  else
  {
    v17 = 0;
    v60 = a1 & 0xC000000000000001;
    v50 = "getReferencedHomeFilter(for:)";
    v51 = (v3 + 8);
    v47 = "com.apple.SiriHomeAutomation";
    v46 = "Unexpected reference type: ";
    v45 = "Error creating RREntity: ";
    v41 = (v42 + 16);
    v40[1] = v42 + 8;
    v40[0] = v42 + 32;
    v58 = MEMORY[0x277D84F90];
    v18 = &unk_252E58C40;
    v62 = v14;
    v52 = v16;
    v53 = a1;
    do
    {
      if (v60)
      {
        v19 = MEMORY[0x2530ADF00](v17, a1);
      }

      else
      {
        v19 = *(a1 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = sub_252B09EF8(v19, 1);
      v23 = MEMORY[0x2530AB270](v21, v22);

      v63 = v23;
      if (v23)
      {
        v61 = v17;
        v24 = sub_252E36B64();
        v25 = *(*(v24 - 8) + 56);
        v25(v14, 1, 1, v24);
        if (v57)
        {
          v26 = v43;
          sub_252E36B84();
          sub_25293847C(v62, &qword_27F544918, v18);
          v25(v26, 0, 1, v24);
          v27 = v26;
          v14 = v62;
          sub_252C930B8(v27, v62);
        }

        v28 = v55;
        sub_252E32E74();
        sub_252E32E24();
        (*v51)(v28, v56);
        v29 = v18;
        sub_252938414(v14, v54, &qword_27F544918, v18);
        type metadata accessor for HomeFilter();

        v30 = v20;
        v31 = v59;
        sub_252E36BE4();
        (*v41)(v48, v31, v49);
        v32 = v58;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a1 = v53;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = sub_2529F8214(0, v32[2] + 1, 1, v32);
        }

        v14 = v62;
        v35 = v32[2];
        v34 = v32[3];
        if (v35 >= v34 >> 1)
        {
          v58 = sub_2529F8214((v34 > 1), v35 + 1, 1, v32);
        }

        else
        {
          v58 = v32;
        }

        v36 = v42;
        v37 = v49;
        (*(v42 + 8))(v59, v49);
        sub_25293847C(v14, &qword_27F544918, v29);
        v38 = v58;
        v58[2] = v35 + 1;
        v39 = v37;
        v18 = v29;
        (*(v36 + 32))(v38 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35, v48, v39);
        v16 = v52;
        v17 = v61;
      }

      else
      {
      }

      ++v17;
    }

    while (v16 != v17);

    return v58;
  }

  return result;
}

uint64_t sub_252C9178C(char *a1)
{
  v97 = a1;
  v1 = sub_252E36C24();
  v103 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v105 = v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v100 = v85 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v102 = v85 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = v85 - v8;
  v104 = sub_252E36B34();
  v91 = *(v104 - 8);
  v10 = MEMORY[0x28223BE20](v104);
  v101 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v88 = v85 - v12;
  v13 = sub_252E36C44();
  v93 = *(v13 - 8);
  v94 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v87 = v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v92 = v85 - v16;
  v17 = sub_252E36BC4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C00, &unk_252E41DD0);
  v21 = MEMORY[0x28223BE20](v96);
  v95 = v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v99 = v85 - v23;
  v24 = sub_252E36AB4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = (v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_252E345A4();
  swift_allocObject();
  v28 = sub_252E34594();
  v98 = MEMORY[0x2530AB270]();
  if (v98)
  {
    v85[0] = v9;
    v106 = v1;
    v85[1] = v28;
    v90 = v25;
    v86 = v24;
    if (qword_27F53F600 != -1)
    {
      goto LABEL_55;
    }

    while (1)
    {
      v29 = qword_27F544F88;
      sub_252E36A94();
      sub_252E375D4();
      sub_252E36A84();
      v89 = v27;
      v31 = *(v97 + 3);
      v30 = *(v97 + 4);
      __swift_project_boxed_opaque_existential_1(v97, v31);
      *v20 = v98;
      (*(v18 + 104))(v20, *MEMORY[0x277D5FEA8], v17);
      v32 = *(v30 + 8);

      v33 = v99;
      v34 = v31;
      v35 = v89;
      v32(v20, v34, v30);
      (*(v18 + 8))(v20, v17);
      v36 = sub_252E375C4();
      LOBYTE(v84) = 2;
      sub_252E36A74(v36, &dword_252917000, v29, "ReferenceResolution.GetReferencedFilters", 40, 2, v35, " enableTelemetry=YES ", 21, v84, MEMORY[0x277D84F90]);
      v37 = v95;
      sub_252938414(v33, v95, &qword_27F541C00, &unk_252E41DD0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_25293847C(v37, &qword_27F541C00, &unk_252E41DD0);
        v38 = v86;
        v39 = v90;
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v40 = sub_252E36AD4();
        __swift_project_value_buffer(v40, qword_27F544D60);
        sub_252CC4050(0xD00000000000001BLL, 0x8000000252E90570, 0xD00000000000007ALL, 0x8000000252E90370, 0xD00000000000003DLL, 0x8000000252E90500, 165);

        sub_25293847C(v99, &qword_27F541C00, &unk_252E41DD0);
        (*(v39 + 8))(v35, v38);
        return MEMORY[0x277D84F90];
      }

      v20 = 0xD00000000000007ALL;
      v45 = v92;
      v44 = v93;
      v46 = v94;
      (*(v93 + 32))(v92, v37, v94);
      v47 = v87;
      (*(v44 + 16))(v87, v45, v46);
      v48 = (*(v44 + 88))(v47, v46);
      v49 = v90;
      if (v48 == *MEMORY[0x277D5FEC0])
      {
        (*(v44 + 96))(v47, v46);
        v50 = v104;
        (*(v91 + 32))(v88, v47, v104);
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v51 = sub_252E36AD4();
        __swift_project_value_buffer(v51, qword_27F544D60);
        v107 = 0;
        v108 = 0xE000000000000000;
        sub_252E379F4();

        v107 = 0xD000000000000021;
        v108 = 0x8000000252E905C0;
        sub_252C93128(&qword_27F541C10, MEMORY[0x277D5FE08], MEMORY[0x277D5FE10]);
        v52 = sub_252E37D94();
        MEMORY[0x2530AD570](v52);

        sub_252CC3D90(v107, v108, 0xD00000000000007ALL, 0x8000000252E90370);
        v53 = v88;

        v54 = v85[0];
        sub_252E36B24();
        v55 = sub_252C907E8();
        v103[1](v54, v106);
        if (v55)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540270, &qword_252E3C0A0);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_252E3C290;
          sub_252E36B24();
        }

        else
        {
          v42 = MEMORY[0x277D84F90];
        }

        v71 = v86;

        (*(v91 + 8))(v53, v50);
        (*(v44 + 8))(v45, v46);
        sub_25293847C(v99, &qword_27F541C00, &unk_252E41DD0);
        (*(v49 + 8))(v35, v71);
        return v42;
      }

      v17 = v104;
      if (v48 != *MEMORY[0x277D5FED0] && v48 != *MEMORY[0x277D5FEC8])
      {
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v56 = sub_252E36AD4();
        __swift_project_value_buffer(v56, qword_27F544D60);
        v107 = 0;
        v108 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E72E30);
        sub_252C93128(&qword_27F541C08, MEMORY[0x277D5FEE8], MEMORY[0x277D5FEF0]);
        v57 = sub_252E37D94();
        MEMORY[0x2530AD570](v57);

        sub_252CC4050(v107, v108, 0xD00000000000007ALL, 0x8000000252E90370, 0xD00000000000003DLL, 0x8000000252E90500, 161);

        v58 = *(v44 + 8);
        v58(v45, v46);
        sub_25293847C(v99, &qword_27F541C00, &unk_252E41DD0);
        (*(v49 + 8))(v35, v86);
        v58(v47, v46);
        return MEMORY[0x277D84F90];
      }

      (*(v44 + 96))(v47, v46);
      v59 = *v47;
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v60 = sub_252E36AD4();
      __swift_project_value_buffer(v60, qword_27F544D60);
      v107 = 0;
      v108 = 0xE000000000000000;
      sub_252E379F4();

      v107 = 0xD000000000000021;
      v108 = 0x8000000252E90590;
      v61 = MEMORY[0x2530AD730](v59, v17);
      MEMORY[0x2530AD570](v61);

      sub_252CC3D90(v107, v108, 0xD00000000000007ALL, 0x8000000252E90370);

      v62 = *(v59 + 16);
      v27 = v103;
      if (v62)
      {
        v63 = *(v91 + 16);
        v64 = *(v91 + 80);
        v95 = v59;
        v65 = v59 + ((v64 + 32) & ~v64);
        v96 = *(v91 + 72);
        v97 = v63;
        v66 = (v91 + 8);
        v67 = MEMORY[0x277D84F90];
        do
        {
          v68 = v101;
          v69 = v104;
          (v97)(v101, v65, v104);
          sub_252E36B24();
          (*v66)(v68, v69);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_2529F8214(0, *(v67 + 2) + 1, 1, v67);
          }

          v17 = *(v67 + 2);
          v70 = *(v67 + 3);
          if (v17 >= v70 >> 1)
          {
            v67 = sub_2529F8214((v70 > 1), v17 + 1, 1, v67);
          }

          *(v67 + 2) = v17 + 1;
          (v27[4])(&v67[((*(v27 + 80) + 32) & ~*(v27 + 80)) + v27[9] * v17], v102, v106);
          v65 += v96;
          --v62;
        }

        while (v62);

        v20 = 0xD00000000000007ALL;
      }

      else
      {

        v67 = MEMORY[0x277D84F90];
      }

      v72 = v106;
      v73 = v100;
      v104 = *(v67 + 2);
      if (!v104)
      {
        v42 = MEMORY[0x277D84F90];
LABEL_53:

        (*(v93 + 8))(v92, v94);
        sub_25293847C(v99, &qword_27F541C00, &unk_252E41DD0);
        (*(v90 + 8))(v89, v86);
        return v42;
      }

      v18 = 0;
      v102 = (v27 + 2);
      v96 = (v27 + 1);
      v97 = 0x8000000252E90480;
      v74 = (v27 + 4);
      v42 = MEMORY[0x277D84F90];
      v101 = 0xD000000000000023;
      while (v18 < *(v67 + 2))
      {
        v17 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v75 = v27;
        v76 = v27[9];
        v75[2](v73, &v67[v17 + v76 * v18], v72);
        v77 = sub_252C907E8();
        if (v77)
        {

LABEL_44:
          v20 = *v74;
          (*v74)(v105, v73, v72);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v107 = v42;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2529AA620(0, *(v42 + 16) + 1, 1);
            v42 = v107;
          }

          v82 = *(v42 + 16);
          v81 = *(v42 + 24);
          if (v82 >= v81 >> 1)
          {
            sub_2529AA620((v81 > 1), v82 + 1, 1);
            v42 = v107;
          }

          *(v42 + 16) = v82 + 1;
          v83 = v42 + v17 + v82 * v76;
          v72 = v106;
          (v20)(v83, v105, v106);
          v73 = v100;
          goto LABEL_49;
        }

        if (sub_252E36BF4() == v101 && v97 == v78)
        {

          goto LABEL_44;
        }

        v20 = v78;
        v79 = sub_252E37DB4();

        if (v79)
        {
          goto LABEL_44;
        }

        (*v96)(v73, v72);
LABEL_49:
        ++v18;
        v27 = v103;
        if (v104 == v18)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      swift_once();
    }
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v41 = sub_252E36AD4();
  __swift_project_value_buffer(v41, qword_27F544D60);
  sub_252CC4050(0xD00000000000004ALL, 0x8000000252E904B0, 0xD00000000000007ALL, 0x8000000252E90370, 0xD00000000000003DLL, 0x8000000252E90500, 140);

  return MEMORY[0x277D84F90];
}

uint64_t sub_252C92828(char *a1)
{
  v20 = sub_252E36C24();
  v2 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E34E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E35074();
  swift_allocObject();
  v9 = sub_252E35064();
  sub_252E352F4();
  swift_allocObject();
  sub_252E352E4();
  (*(v6 + 104))(v8, *MEMORY[0x277D5EA58], v5);
  sub_252E352D4();
  (*(v6 + 8))(v8, v5);

  sub_252E34E14();

  v10 = MEMORY[0x2530AB270](v9);

  if (v10)
  {
    v19[1] = v10;
    result = sub_252C9178C(a1);
    v12 = result;
    v13 = 0;
    v14 = *(result + 16);
    v19[2] = v2 + 16;
    v15 = (v2 + 8);
    while (1)
    {
      v17 = v14 != v13;
      if (v14 == v13)
      {
        goto LABEL_9;
      }

      if (v13 >= *(v12 + 16))
      {
        break;
      }

      (*(v2 + 16))(v4, v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13, v20);
      if (sub_252E36BF4() == 0xD000000000000023 && 0x8000000252E90480 == v18)
      {

        (*v15)(v4, v20);
LABEL_9:

        return v17;
      }

      ++v13;
      v16 = sub_252E37DB4();

      result = (*v15)(v4, v20);
      if (v16)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t _s22HomeAutomationInternal24ReferenceResolutionUtilsO013getReferencedA7Filters17referenceResolverSayAA0A6FilterCGAA0dK8Protocol_p_tFZ_0(char *a1)
{
  v2 = sub_252E36C24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252C9178C(a1);
  v21 = MEMORY[0x277D84F90];
  v7 = *(v6 + 16);
  if (v7)
  {
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v19[2] = v6;
    v20 = v9;
    v10 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v11 = *(v8 + 56);
    v12 = MEMORY[0x277D84F90];
    do
    {
      v20(v5, v10, v2);
      v13 = sub_252C907E8();
      v14 = (*(v8 - 8))(v5, v2);
      if (v13)
      {
        MEMORY[0x2530AD700](v14);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19[1] = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v12 = v21;
      }

      v10 += v11;
      --v7;
    }

    while (v7);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544D60);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_252E379F4();

  v21 = 0xD000000000000016;
  v22 = 0x8000000252E906A0;
  v16 = type metadata accessor for HomeFilter();
  v17 = MEMORY[0x2530AD730](v12, v16);
  MEMORY[0x2530AD570](v17);

  sub_252CC3D90(v21, v22, 0xD00000000000007ALL, 0x8000000252E90370);

  return v12;
}

uint64_t sub_252C92E6C(uint64_t *a1)
{
  v1 = *a1;
  if (a1[1])
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544D60);
    sub_252E379F4();

    v13[0] = 0xD00000000000001BLL;
    v13[1] = 0x8000000252E90350;
    v13[5] = v1;
    v14 = 1;
    v3 = sub_252E36F94();
    MEMORY[0x2530AD570](v3);

    sub_252CC4050(0xD00000000000001BLL, 0x8000000252E90350, 0xD00000000000007ALL, 0x8000000252E90370, 0xD00000000000001DLL, 0x8000000252E903F0, 172);
    goto LABEL_26;
  }

  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v4 + 368), v13);

  v5 = _s22HomeAutomationInternal24ReferenceResolutionUtilsO013getReferencedA7Filters17referenceResolverSayAA0A6FilterCGAA0dK8Protocol_p_tFZ_0(v13);
  __swift_destroy_boxed_opaque_existential_1(v13);
  if (v5 >> 62)
  {
    result = sub_252E378C4();
    v7 = result - 1;
    if (result != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = result - 1;
    if (result != 1)
    {
      goto LABEL_12;
    }
  }

  if (v1 == -100)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v12 = 0;
LABEL_30:
      v10 = MEMORY[0x2530ADF00](v12, v5);
      goto LABEL_25;
    }

    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      v9 = *(v5 + 32);
LABEL_24:
      v10 = v9;
LABEL_25:
      v11 = v10;

      return v11;
    }

    __break(1u);
LABEL_29:
    v12 = v8;
    goto LABEL_30;
  }

LABEL_12:
  if (v1 < 0)
  {
    v8 = result + v1;
    if (__OFADD__(result, v1))
    {
      goto LABEL_32;
    }

    if (v8 < 0)
    {
LABEL_26:

      return 0;
    }
  }

  else
  {
    v8 = v7 >> 1;
    if ((result & 0x8000000000000001) != 1)
    {
      v8 = v1;
    }

    if (v1 != 50)
    {
      v8 = v1;
    }
  }

  if (v8 >= result)
  {
    goto LABEL_26;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_29;
  }

  if (v8 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v5 + 8 * v8 + 32);
    goto LABEL_24;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252C930B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544918, &unk_252E58C40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252C93128(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252C93170(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_252E378C4();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v21 = MEMORY[0x277D84F90];
  do
  {
    v5 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v5, a1);
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v8 = [v6 entity];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 entityIdentifier];

        if (v10)
        {
          break;
        }
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    v11 = sub_252E36F34();
    v13 = v12;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2529F7A80(0, *(v21 + 2) + 1, 1, v21);
    }

    v16 = *(v21 + 2);
    v15 = *(v21 + 3);
    if (v16 >= v15 >> 1)
    {
      v21 = sub_2529F7A80((v15 > 1), v16 + 1, 1, v21);
    }

    *(v21 + 2) = v16 + 1;
    v17 = &v21[16 * v16];
    *(v17 + 4) = v11;
    *(v17 + 5) = v13;
  }

  while (v4 != v3);
LABEL_24:
  v18 = sub_252C75848(v21);

  v19 = *(v18 + 16);

  return v19;
}

uint64_t sub_252C93358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[277] = v3;
  v4[276] = a3;
  v4[275] = a2;
  v4[274] = a1;
  v4[278] = type metadata accessor for HomeAutomationScenePartialFailureParameters(0);
  v4[279] = swift_task_alloc();
  v5 = sub_252E34014();
  v4[280] = v5;
  v4[281] = *(v5 - 8);
  v4[282] = swift_task_alloc();
  v4[283] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C93460, 0, 0);
}

uint64_t sub_252C93460()
{
  v126 = v0;
  v2 = v0[276];
  if (!v2)
  {
    sub_2529318DC();
    swift_allocError();
    *v14 = 6;
    swift_willThrow();
    goto LABEL_136;
  }

  v3 = v2;
  v4 = [v3 entityResponses];
  if (!v4)
  {
    goto LABEL_132;
  }

  v5 = v4;
  type metadata accessor for HomeEntityResponse();
  v6 = sub_252E37264();

  v121 = v3;
  v123 = v0;
  if (v6 >> 62)
  {
LABEL_130:
    p_isa = sub_252E378C4();
    if (p_isa)
    {
      goto LABEL_5;
    }

LABEL_131:

    v3 = v121;
    v0 = v123;
    goto LABEL_132;
  }

  p_isa = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!p_isa)
  {
    goto LABEL_131;
  }

LABEL_5:
  v8 = 0;
  v3 = (v6 & 0xC000000000000001);
  v9 = &off_279711000;
  while (1)
  {
    if (v3)
    {
      v10 = MEMORY[0x2530ADF00](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_92;
      }

      v10 = *(v6 + 8 * v8 + 32);
    }

    v1 = v10;
    v0 = (v8 + 1);
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v11 = [v10 entity];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 type];

      if (v13 == 5)
      {
        break;
      }
    }

    ++v8;
    if (v0 == p_isa)
    {
      goto LABEL_131;
    }
  }

  v15 = [v1 entity];

  v3 = v121;
  v0 = v123;
  if (!v15 || (v16 = [v15 entityIdentifier], v15, !v16))
  {
LABEL_132:
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v111 = sub_252E36AD4();
    __swift_project_value_buffer(v111, qword_27F544D18);
    sub_252CC4050(0xD00000000000002ALL, 0x8000000252E90710, 0xD00000000000009ALL, 0x8000000252E90740, 0xD00000000000004ALL, 0x8000000252E907E0, 58);
    sub_2529318DC();
    swift_allocError();
    v31 = 9;
    goto LABEL_135;
  }

  v17 = sub_252E36F34();
  v1 = v18;

  v118 = type metadata accessor for HomeStore(0);
  v19 = static HomeStore.shared.getter(v118);
  v20 = sub_2529F53FC(v17, v1);
  v22 = v21;

  v123[284] = v20;
  if (v22)
  {
    sub_252956C8C(v20, 1);
    goto LABEL_28;
  }

  if (!v20)
  {
LABEL_28:
    if (qword_27F53F4D0 != -1)
    {
      goto LABEL_147;
    }

    goto LABEL_29;
  }

  v23 = sub_252C96BE8();
  if (!v23)
  {
    v32 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v23);
    sub_252929E74((v32 + 16), (v123 + 254));

    __swift_project_boxed_opaque_existential_1(v123 + 254, v123[257]);
    v33 = sub_252E338C4();
    __swift_destroy_boxed_opaque_existential_1(v123 + 254);
    if (v33)
    {
      if (qword_27F53F4D0 != -1)
      {
        goto LABEL_153;
      }

      goto LABEL_32;
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v53 = sub_252E36AD4();
    __swift_project_value_buffer(v53, qword_27F544D18);
    sub_252CC3D90(0xD00000000000003DLL, 0x8000000252E90860, 0xD00000000000009ALL, 0x8000000252E90740);
    sub_25293DEE0((v123 + 2));
    type metadata accessor for SceneEnabledResponseHandler();
    swift_allocObject();
    memcpy(__dst, v123 + 2, sizeof(__dst));
    v123[300] = sub_252BE97AC(__dst);
    v119 = sub_252DF54B8;
    v54 = v121;
    v36 = swift_task_alloc();
    v123[301] = v36;
    *v36 = v123;
    v37 = sub_252C95030;
LABEL_69:
    v36[1] = v37;
    v55 = v0[276];
    v56 = v0[275];
    v57 = v0[274];
    v58 = v119;

    return v58(v57, v56, v55);
  }

  sub_252956C8C(v20, 0);
  v24 = sub_252B2F470();
  if (v24 >> 62)
  {
LABEL_149:
    v25 = sub_252E378C4();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = sub_252C285CC();
  if (v26 >> 62)
  {
    v27 = sub_252E378C4();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v25 == v27)
  {
    v28 = sub_252C285CC();
  }

  else
  {
    v28 = sub_252C2A5D8();
  }

  v9 = v28;
  __dst[0] = MEMORY[0x277D84F90];
  v38 = (v28 >> 62);
  if (v28 >> 62)
  {
    v28 = sub_252E378C4();
    v17 = v28;
  }

  else
  {
    v17 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v117 = v20;
  v1 = MEMORY[0x277D84F90];
  if (v17)
  {
    v121 = v38;
    v1 = 0;
    v22 = v9 & 0xC000000000000001;
    p_isa = (v9 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v22)
      {
        v39 = MEMORY[0x2530ADF00](v1, v9);
      }

      else
      {
        if (v1 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_146;
        }

        v39 = *(v9 + 32 + 8 * v1);
      }

      v40 = v39;
      v41 = __OFADD__(v1++, 1);
      if (v41)
      {
        break;
      }

      v42 = [(__objc2_class *)v39 entity];
      if (!v42 || (v43 = v42, v3 = [v42 deviceTypes], v43, !v3))
      {
LABEL_38:

        goto LABEL_39;
      }

      v6 = sub_252E37264();

      if (*(v6 + 16))
      {
        v3 = *(v6 + 32);

        if (qword_27F53F410 != -1)
        {
          swift_once();
        }

        v44 = 0;
        v45 = -1 << *(qword_27F575A48 + 32);
        if (-v45 < 64)
        {
          v46 = ~(-1 << -v45);
        }

        else
        {
          v46 = -1;
        }

        v47 = v46 & *(qword_27F575A48 + 56);
        v48 = (63 - v45) >> 6;
LABEL_53:
        if (v47)
        {
          v49 = v44;
          goto LABEL_59;
        }

        while (1)
        {
          v49 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            break;
          }

          if (v49 >= v48)
          {
            goto LABEL_38;
          }

          v47 = *(qword_27F575A48 + 56 + 8 * v49);
          ++v44;
          if (v47)
          {
            v44 = v49;
LABEL_59:
            v50 = __clz(__rbit64(v47));
            v47 &= v47 - 1;
            if (*(*(qword_27F575A48 + 48) + ((v49 << 9) | (8 * v50))) == v3)
            {
              sub_252E37A94();
              v3 = *(__dst[0] + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              v28 = sub_252E37AA4();
              goto LABEL_39;
            }

            goto LABEL_53;
          }
        }

        __break(1u);
LABEL_95:
        v63 = 0;
        goto LABEL_96;
      }

LABEL_39:
      if (v1 == v17)
      {
        v1 = __dst[0];
        v38 = v121;
        goto LABEL_64;
      }
    }

    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    swift_once();
LABEL_29:
    v29 = sub_252E36AD4();
    __swift_project_value_buffer(v29, qword_27F544D18);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD000000000000029;
    __dst[1] = 0x8000000252E90830;
    MEMORY[0x2530AD570](v17, v1);

    sub_252CC4050(__dst[0], __dst[1], 0xD00000000000009ALL, 0x8000000252E90740, 0xD00000000000004ALL, 0x8000000252E907E0, 65);

    sub_2529318DC();
    swift_allocError();
    v31 = 7;
LABEL_135:
    *v30 = v31;
    swift_willThrow();

LABEL_136:

    v112 = v0[1];

    return v112();
  }

LABEL_64:
  v51 = static HomeStore.shared.getter(v28);
  v6 = sub_2529D9884();

  if (v38)
  {
    v52 = sub_252E378C4();
  }

  else
  {
    v52 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v52 != 1 || !v17)
  {

LABEL_83:
    v65 = 0;
    goto LABEL_84;
  }

  if ((v9 & 0xC000000000000001) == 0)
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v60 = *(v9 + 32);
      goto LABEL_78;
    }

    __break(1u);
LABEL_156:
    v95 = sub_252E378C4();
    if (!v95)
    {
      goto LABEL_157;
    }

    goto LABEL_101;
  }

  v60 = MEMORY[0x2530ADF00](0, v9);
LABEL_78:
  p_isa = &v60->isa;
  v61 = [(__objc2_class *)v60 entity];
  if (!v61)
  {
LABEL_93:
    v63 = 0;
    goto LABEL_97;
  }

  v62 = v61;
  v63 = [v61 deviceTypes];

  if (v63)
  {
    v64 = sub_252E37264();

    if (!*(v64 + 16))
    {
      goto LABEL_95;
    }

    v63 = *(v64 + 32);
LABEL_96:
  }

LABEL_97:
  v93 = sub_252E25FC4(v63);
  if (v94)
  {

    goto LABEL_83;
  }

  v22 = v93;
  v116 = v1;
  v1 = v9;
  v121 = p_isa;
  if (v6 >> 62)
  {
    goto LABEL_156;
  }

  v95 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v95)
  {
LABEL_157:

    v65 = 0;
    v0 = v123;
    v9 = v1;
    v1 = v116;
    goto LABEL_84;
  }

LABEL_101:
  v96 = 0;
  v20 = 0;
  v0 = (v6 & 0xC000000000000001);
  while (2)
  {
    if (v0)
    {
      v3 = MEMORY[0x2530ADF00](v96, v6);
      v97 = v96 + 1;
      if (__OFADD__(v96, 1))
      {
        break;
      }

      goto LABEL_105;
    }

    if (v96 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_149;
    }

    v3 = *(v6 + 8 * v96 + 32);

    v97 = v96 + 1;
    if (!__OFADD__(v96, 1))
    {
LABEL_105:
      __dst[0] = v3;
      if (sub_252C9543C(__dst, v121))
      {
        goto LABEL_111;
      }

      ++v96;
      if (v97 == v95)
      {
        goto LABEL_157;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_111:

  v6 = v3;
  v98 = sub_2529A2A0C();
  v125 = MEMORY[0x277D84F90];
  if (v98 >> 62)
  {
    v6 = v98;
    v99 = sub_252E378C4();
    v98 = v6;
  }

  else
  {
    v99 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0 = v123;
  v9 = v1;
  if (v99)
  {
    v100 = 0;
    v120 = v98 & 0xC000000000000001;
    v101 = v98 & 0xFFFFFFFFFFFFFF8;
    v115 = v98;
    v102 = v98 + 32;
    while (1)
    {
      if (v120)
      {
        v104 = MEMORY[0x2530ADF00](v100, v115);
        v41 = __OFADD__(v100++, 1);
        if (v41)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }
      }

      else
      {
        if (v100 >= *(v101 + 16))
        {
          __break(1u);
LABEL_153:
          swift_once();
LABEL_32:
          v34 = sub_252E36AD4();
          __swift_project_value_buffer(v34, qword_27F544D18);
          sub_252CC3D90(0xD00000000000004ELL, 0x8000000252E908A0, 0xD00000000000009ALL, 0x8000000252E90740);
          sub_25293DEE0((v0 + 65));
          type metadata accessor for WatchPostExecutionResponseHandler();
          swift_allocObject();
          memcpy(__dst, v0 + 65, sizeof(__dst));
          v0[297] = sub_252BE97AC(__dst);
          v119 = sub_252DF44A4;
          v35 = v3;
          v36 = swift_task_alloc();
          v0[298] = v36;
          *v36 = v0;
          v37 = sub_252C94E34;
          goto LABEL_69;
        }

        v104 = *(v102 + 8 * v100);

        v41 = __OFADD__(v100++, 1);
        if (v41)
        {
          goto LABEL_129;
        }
      }

      v105 = v99;
      v6 = v104;
      v106 = (*(*v104 + 272))();
      if (*(v106 + 16) && (sub_252E37EC4(), MEMORY[0x2530AE390](v22), v6 = __dst, v107 = sub_252E37F14(), v108 = -1 << *(v106 + 32), v109 = v107 & ~v108, ((*(v106 + 56 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109) & 1) != 0))
      {
        v110 = ~v108;
        while (*(*(v106 + 48) + 8 * v109) != v22)
        {
          v109 = (v109 + 1) & v110;
          if (((*(v106 + 56 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109) & 1) == 0)
          {
            goto LABEL_115;
          }
        }

        v6 = &v125;
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
LABEL_115:
      }

      v99 = v105;
      v103 = v100 == v105;
      v0 = v123;
      if (v103)
      {
        v9 = v1;
        v113 = v125;
        goto LABEL_141;
      }
    }
  }

  v113 = MEMORY[0x277D84F90];
LABEL_141:

  v1 = v116;
  if (v113 < 0 || (v113 & 0x4000000000000000) != 0)
  {
    v114 = sub_252E378C4();
  }

  else
  {
    v114 = *(v113 + 16);
  }

  v65 = v114 == 1;
LABEL_84:
  v66 = v0[277];
  v67 = swift_allocObject();
  v0[285] = v67;
  *(v67 + 16) = v66;
  *(v67 + 24) = v65;
  *(v67 + 32) = v9;
  *(v67 + 40) = v1;

  v69 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v68);
  sub_252929E74((v69 + 288), (v0 + 259));

  v70 = v0[262];
  v71 = v0[263];
  __swift_project_boxed_opaque_existential_1(v0 + 259, v70);
  LOBYTE(v66) = (*(v71 + 120))(v70, v71);
  __swift_destroy_boxed_opaque_existential_1(v0 + 259);
  if ((v66 & 1) == 0)
  {
    v82 = v0[279];
    v83 = v0[278];
    sub_252929E74(v0[277] + 24, (v0 + 264));
    v84 = __swift_project_boxed_opaque_existential_1(v0 + 264, v0[267]);
    v85 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v84);
    sub_252929E74((v85 + 16), (v0 + 269));

    __swift_project_boxed_opaque_existential_1(v0 + 269, v0[272]);
    v86 = sub_252E33914();
    v87 = sub_252E36324();
    v88 = v1;
    v89 = v9;
    v90 = *(*(v87 - 8) + 56);
    v90(v82, 1, 1, v87);
    v90(v82 + v83[10], 1, 1, v87);
    *(v82 + v83[5]) = 0;
    *(v82 + v83[6]) = 0;
    *(v82 + v83[7]) = v65;
    *(v82 + v83[8]) = v86 & 1;
    *(v82 + v83[9]) = 0;
    sub_252C96490(v82, v89, v88);

    v91 = sub_252C08850();
    v0[290] = v91;
    v122 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
    v92 = swift_task_alloc();
    v0[291] = v92;
    *v92 = v0;
    v92[1] = sub_252C948F4;
    v56 = 0x8000000252E908F0;
    v57 = 0xD000000000000022;
    v55 = v91;
    v58 = v122;

    return v58(v57, v56, v55);
  }

  v72 = v0[277];
  v73 = v0[275];

  memcpy(v0 + 128, v72 + 14, 0x1F8uLL);
  memcpy(__dst, v72 + 14, sizeof(__dst));
  sub_252938414((v0 + 128), (v0 + 191), &qword_27F5404C8, &unk_252E3FD60);
  v74 = v73;
  v75 = sub_252953488(v73, __dst, 0);
  v0[286] = v75;

  v76 = v72[12];
  v77 = v72[13];
  __swift_project_boxed_opaque_existential_1(v72 + 9, v76);
  v78 = swift_task_alloc();
  v0[287] = v78;
  v78[2] = v74;
  v78[3] = v75;
  v78[4] = v117;
  sub_252B03B94();
  v79 = swift_task_alloc();
  v0[288] = v79;
  *v79 = v0;
  v79[1] = sub_252C946EC;
  v80 = v0[283];
  v81 = v0[274];
  v130 = v76;
  v131 = v77;
  v129 = 512;
  v128 = 0;

  return sub_252A199A8(v81, &unk_252E58CD0, v67, &unk_252E58CF8, v78, v80, 0, 0);
}

uint64_t sub_252C946EC()
{
  v2 = *v1;
  *(*v1 + 2312) = v0;

  (*(v2[281] + 8))(v2[283], v2[280]);
  if (v0)
  {
    v3 = sub_252C9518C;
  }

  else
  {

    v3 = sub_252C94844;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252C94844()
{
  v1 = v0[284];
  v2 = v0[276];

  sub_252956C8C(v1, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252C948F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2336) = a1;
  *(v3 + 2344) = v1;

  if (v1)
  {
    v4 = sub_252C94CC4;
  }

  else
  {
    v4 = sub_252C94A34;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252C94A34()
{
  v1 = v0[292];
  v2 = v0[277];
  sub_252C96D94(v0[279]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 269);
  __swift_destroy_boxed_opaque_existential_1(v0 + 264);
  v3 = *(v2 + 96);
  __swift_project_boxed_opaque_existential_1((v2 + 72), v3);
  v4 = swift_task_alloc();
  v0[294] = v4;
  *(v4 + 16) = v1;
  sub_252AD7CC4();
  v5 = swift_task_alloc();
  v0[295] = v5;
  *v5 = v0;
  v5[1] = sub_252C94B6C;
  v6 = v0[282];
  v7 = v0[274];

  return sub_252BDB88C(v7, &unk_252E58CE0, v4, v6, 0, 0, 0, v3);
}

uint64_t sub_252C94B6C()
{
  v2 = *v1;
  *(*v1 + 2368) = v0;

  (*(v2[281] + 8))(v2[282], v2[280]);
  if (v0)
  {
    v3 = sub_252C95248;
  }

  else
  {

    v3 = sub_252C94D84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252C94CC4()
{
  v1 = v0[284];
  v2 = v0[276];
  sub_252C96D94(v0[279]);

  sub_252956C8C(v1, 0);
  __swift_destroy_boxed_opaque_existential_1(v0 + 269);
  __swift_destroy_boxed_opaque_existential_1(v0 + 264);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252C94D84()
{
  v1 = *(v0 + 2272);
  v2 = *(v0 + 2208);

  sub_252956C8C(v1, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252C94E34()
{
  v2 = *v1;
  *(*v1 + 2392) = v0;

  if (v0)
  {
    v3 = *(v2 + 2208);
    sub_252956C8C(*(v2 + 2272), 0);

    v4 = sub_252C95304;
  }

  else
  {
    v5 = *(v2 + 2208);

    v4 = sub_252C94F90;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252C94F90()
{
  v1 = v0[284];
  v2 = v0[276];
  sub_252956C8C(v1, 0);
  sub_252956C8C(v1, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252C95030()
{
  v2 = *v1;
  *(*v1 + 2416) = v0;

  if (v0)
  {
    v3 = *(v2 + 2208);
    sub_252956C8C(*(v2 + 2272), 0);

    v4 = sub_252C953A0;
  }

  else
  {
    v5 = *(v2 + 2208);

    v4 = sub_252C94F90;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252C9518C()
{
  v1 = v0[284];
  v2 = v0[276];

  sub_252956C8C(v1, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252C95248()
{
  v1 = *(v0 + 2272);
  v2 = *(v0 + 2208);

  sub_252956C8C(v1, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252C95304()
{
  v1 = *(v0 + 2272);

  sub_252956C8C(v1, 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252C953A0()
{
  v1 = *(v0 + 2272);

  sub_252956C8C(v1, 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252C9543C(uint64_t *a1, void *a2)
{
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v57 = &v53[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v8 = MEMORY[0x28223BE20](v7);
  v62 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v53[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v56 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v61 = &v53[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v63 = &v53[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v64 = &v53[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v53[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v53[-v24];
  v58 = *a1;
  sub_252E37024();
  v65 = v5;
  v26 = *(v5 + 56);
  v27 = 1;
  v28 = v4;
  v67 = v5 + 56;
  v66 = v26;
  v26(v25, 0, 1, v4);
  v59 = a2;
  v29 = [a2 entity];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 room];

    if (v31)
    {
      sub_252E36F34();

      sub_252E37024();

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }
  }

  v66(v23, v27, 1, v4);
  v60 = v7;
  v32 = *(v7 + 48);
  sub_252938414(v25, v11, &qword_27F540298, &unk_252E3C270);
  sub_252938414(v23, &v11[v32], &qword_27F540298, &unk_252E3C270);
  v33 = *(v65 + 48);
  if (v33(v11, 1, v28) == 1)
  {
    sub_25293847C(v23, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v25, &qword_27F540298, &unk_252E3C270);
    if (v33(&v11[v32], 1, v28) != 1)
    {
      goto LABEL_23;
    }

    sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
  }

  else
  {
    v34 = v64;
    sub_252938414(v11, v64, &qword_27F540298, &unk_252E3C270);
    if (v33(&v11[v32], 1, v28) == 1)
    {
      sub_25293847C(v23, &qword_27F540298, &unk_252E3C270);
      sub_25293847C(v25, &qword_27F540298, &unk_252E3C270);
      (*(v65 + 8))(v34, v28);
      goto LABEL_23;
    }

    v55 = v33;
    v35 = v65;
    v36 = v57;
    (*(v65 + 32))(v57, &v11[v32], v28);
    sub_252B3DE3C();
    v54 = sub_252E36EF4();
    v37 = *(v35 + 8);
    v37(v36, v28);
    sub_25293847C(v23, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v25, &qword_27F540298, &unk_252E3C270);
    v37(v64, v28);
    v33 = v55;
    sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
    if ((v54 & 1) == 0)
    {
LABEL_24:
      v46 = 0;
      return v46 & 1;
    }
  }

  if (sub_2529A2E84())
  {

    v38 = v63;
    sub_252E37024();

    v39 = 0;
    v11 = v62;
  }

  else
  {
    v39 = 1;
    v11 = v62;
    v38 = v63;
  }

  v40 = v61;
  v41 = 1;
  v66(v38, v39, 1, v28);
  v42 = [v59 entity];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 home];

    if (v44)
    {
      sub_252E36F34();

      sub_252E37024();

      v41 = 0;
    }

    else
    {
      v41 = 1;
    }
  }

  v66(v40, v41, 1, v28);
  v45 = *(v60 + 48);
  sub_252938414(v38, v11, &qword_27F540298, &unk_252E3C270);
  sub_252938414(v40, &v11[v45], &qword_27F540298, &unk_252E3C270);
  if (v33(v11, 1, v28) != 1)
  {
    v47 = v56;
    sub_252938414(v11, v56, &qword_27F540298, &unk_252E3C270);
    if (v33(&v11[v45], 1, v28) != 1)
    {
      v49 = v65;
      v50 = v57;
      (*(v65 + 32))(v57, &v11[v45], v28);
      sub_252B3DE3C();
      v51 = v47;
      v46 = sub_252E36EF4();
      v52 = *(v49 + 8);
      v52(v50, v28);
      sub_25293847C(v40, &qword_27F540298, &unk_252E3C270);
      sub_25293847C(v63, &qword_27F540298, &unk_252E3C270);
      v52(v51, v28);
      sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
      return v46 & 1;
    }

    sub_25293847C(v40, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v38, &qword_27F540298, &unk_252E3C270);
    (*(v65 + 8))(v47, v28);
    goto LABEL_23;
  }

  sub_25293847C(v40, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v38, &qword_27F540298, &unk_252E3C270);
  if (v33(&v11[v45], 1, v28) != 1)
  {
LABEL_23:
    sub_25293847C(v11, &qword_27F540758, &unk_252E4D160);
    goto LABEL_24;
  }

  sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
  v46 = 1;
  return v46 & 1;
}

uint64_t sub_252C95CFC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  *(v4 + 128) = a2;
  *(v4 + 56) = a1;
  return MEMORY[0x2822009F8](sub_252C95D24, 0, 0);
}

uint64_t sub_252C95D24()
{
  v1 = *(v0 + 64);
  *(v0 + 80) = *(*(v0 + 56) + 64);

  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v2);
  sub_252929E74((v3 + 16), v0 + 16);

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v34 = sub_252E33914();
  v36 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_34:
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = sub_252E378C4();
  }

  else
  {
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = v1 & 0xC000000000000001;
  v8 = *(v0 + 64) + 32;
  v1 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if (v7)
    {
      v9 = MEMORY[0x2530ADF00](v6, *(v0 + 64));
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_31;
      }

      v9 = *(v8 + 8 * v6);
    }

    v10 = v9;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v12 = sub_252DA124C(0);

    ++v6;
    if (v12)
    {
      MEMORY[0x2530AD700]();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v1 = v36;
      v6 = v11;
    }
  }

  v13 = *(v0 + 72);
  v33 = type metadata accessor for HomeAutomationEntityResponses();
  v14 = swift_allocObject();
  *(v0 + 88) = v14;
  *(v14 + 16) = 0;
  *(v14 + 24) = v1;
  v32 = v14;
  v36 = MEMORY[0x277D84F90];
  v15 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
    v16 = sub_252E378C4();
    v17 = *(v0 + 72);
  }

  else
  {
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v13;
  }

  v18 = 0;
  v19 = v13 & 0xC000000000000001;
  v1 = v17 + 32;
  v20 = MEMORY[0x277D84F90];
  while (v16 != v18)
  {
    if (v19)
    {
      v21 = MEMORY[0x2530ADF00](v18, *(v0 + 72));
    }

    else
    {
      if (v18 >= *(v15 + 16))
      {
        goto LABEL_33;
      }

      v21 = *(v1 + 8 * v18);
    }

    v22 = v21;
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_32;
    }

    v24 = sub_252DA124C(0);

    ++v18;
    if (v24)
    {
      MEMORY[0x2530AD700]();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v20 = v36;
      v18 = v23;
    }
  }

  v25 = *(v0 + 128);
  v26 = swift_allocObject();
  *(v0 + 96) = v26;
  *(v26 + 16) = 0;
  *(v26 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v27 = swift_allocObject();
  *(v0 + 104) = v27;
  *(v27 + 16) = xmmword_252E3EF80;
  v28 = MEMORY[0x277D839B0];
  *(v27 + 32) = 0x786F567369;
  *(v27 + 40) = 0xE500000000000000;
  *(v27 + 48) = v34 & 1;
  *(v27 + 72) = v28;
  *(v27 + 80) = 0xD000000000000018;
  *(v27 + 88) = 0x8000000252E8A350;
  *(v27 + 96) = v25;
  *(v27 + 120) = v28;
  *(v27 + 128) = 0xD000000000000010;
  *(v27 + 136) = 0x8000000252E8A020;
  *(v27 + 144) = v32;
  *(v27 + 168) = v33;
  *(v27 + 176) = 0xD000000000000016;
  v29 = MEMORY[0x277D55C70];
  *(v27 + 216) = v33;
  v35 = (v29 + *v29);
  *(v27 + 184) = 0x8000000252E8A370;
  *(v27 + 192) = v26;

  v30 = swift_task_alloc();
  *(v0 + 112) = v30;
  *v30 = v0;
  v30[1] = sub_252C96184;

  return v35(0xD000000000000022, 0x8000000252E908F0, v27);
}

uint64_t sub_252C96184(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C96310, 0, 0);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v4 + 16));
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_252C96310()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C963A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  type metadata accessor for CompletionSnippetModel(0);
  v8 = swift_task_alloc();
  v4[3] = v8;
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_252C236AC;

  return sub_252A26640(v8, a2, a3, 0, 0, a4);
}

uint64_t sub_252C96490(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v55 = a1;
  v56[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v51 - v8;
  v56[0] = MEMORY[0x277D84F90];
  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_41:
    v10 = sub_252E378C4();
  }

  else
  {
    v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v51 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v10 != v11)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x2530ADF00](v11, a2);
    }

    else
    {
      if (v11 >= *(v9 + 16))
      {
        goto LABEL_38;
      }

      v13 = *(a2 + 8 * v11 + 32);
    }

    v14 = v13;
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v16 = sub_252DA124C(0);

    ++v11;
    if (v16)
    {
      MEMORY[0x2530AD700](v17);
      if (*((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v12 = v56[0];
      v11 = v15;
    }
  }

  type metadata accessor for HomeAutomationEntityResponses();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = v12;
  v19 = type metadata accessor for HomeAutomationScenePartialFailureParameters(0);
  v20 = *(v19 + 24);
  v21 = v55;

  *(v21 + v20) = v18;
  v56[0] = MEMORY[0x277D84F90];
  v52 = v19;
  v9 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
    v22 = sub_252E378C4();
  }

  else
  {
    v22 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = 0;
  a2 = MEMORY[0x277D84F90];
  while (v22 != v23)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x2530ADF00](v23, a3);
    }

    else
    {
      if (v23 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v24 = *(a3 + 8 * v23 + 32);
    }

    v25 = v24;
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_39;
    }

    v27 = sub_252DA124C(0);

    ++v23;
    if (v27)
    {
      MEMORY[0x2530AD700](v28);
      if (*((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      a2 = v56[0];
      v23 = v26;
    }
  }

  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = a2;
  v30 = v52;
  v31 = *(v52 + 36);
  v32 = v55;

  *(v32 + v31) = v29;
  v33 = sub_25294833C(1u, 0, 0);
  if (!v33)
  {
    v44 = sub_252E36324();
    v45 = *(*(v44 - 8) + 56);
    v36 = v54;
LABEL_35:
    v45(v36, 1, 1, v44);
    goto LABEL_36;
  }

  v34 = v33;
  v35 = [v33 dictionary];
  v36 = v54;
  if (!v35)
  {

LABEL_34:
    v44 = sub_252E36324();
    v45 = *(*(v44 - 8) + 56);
    goto LABEL_35;
  }

  v37 = v35;
  v38 = objc_opt_self();
  v56[0] = 0;
  v39 = [v38 dataWithPropertyList:v37 format:200 options:0 error:v56];
  v40 = v56[0];
  if (!v39)
  {
    v46 = v40;
    v47 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_34;
  }

  v41 = sub_252E32D34();
  v43 = v42;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v41, v43);
  v44 = sub_252E36324();
  (*(*(v44 - 8) + 56))(v36, 0, 1, v44);
LABEL_36:
  v48 = v53;
  v49 = v55;
  sub_252956C98(v36, v55 + *(v30 + 40));
  sub_252E37024();
  sub_252E36324();
  (*(*(v44 - 8) + 56))(v48, 0, 1, v44);
  return sub_252956C98(v48, v49);
}

uint64_t sub_252C96A2C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = sub_252C2F554();
    if (v3 >> 62)
    {
      v4 = sub_252E378C4();

      if (v4)
      {
LABEL_4:
        if (sub_252C2AC20())
        {
          LOBYTE(v4) = 1;
        }

        else
        {
          LOBYTE(v4) = sub_252C316BC();
        }
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v4)
      {
        goto LABEL_4;
      }
    }

    return v4 & 1;
  }

  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_252C96ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252C93358(a1, a2, a3);
}

void *sub_252C96B84@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for ScenePartialFailureResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_252C96BE8()
{
  if ((sub_252C304C4() & 1) == 0)
  {
    return 1;
  }

  v0 = sub_252B2F470();
  v1 = sub_252C75958(v0);

  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *(v1 + 2);
  }

  v3 = sub_252C2A5D8();
  if (v3 >> 62)
  {
    v6 = sub_252E378C4();

    if (v6)
    {
      return 1;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v4)
    {
      return 1;
    }
  }

  v7 = sub_252C285CC();
  v8 = sub_252C93170(v7);

  return v8 == v2;
}

uint64_t sub_252C96CE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25294B7BC;

  return sub_252C95CFC(v2, v3, v5, v4);
}

uint64_t sub_252C96D94(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationScenePartialFailureParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252C96DF0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252C96E84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25293B808;

  return sub_252C963A0(a1, v4, v5, v6);
}

uint64_t sub_252C96F38(uint64_t a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0xD00000000000001FLL;
    }

    if (a1 == 2)
    {
      v4 = "WEATHER_QUERY_GENERIC_LOCATIONS";
    }

    else
    {
      v4 = "led for the key ";
    }

    v2 = 0xE600000000000000;
    v1 = 0x6E6F6D6D6F43;
  }

  else
  {
    v1 = 0x656D614E707041;
    v2 = 0xE700000000000000;
    if (a1)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (a1)
    {
      v4 = "LINK_HOME_HUB_SUPPORT";
    }

    else
    {
      v4 = "GOTO_APPLE_SUPPORT";
    }
  }

  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v5 + 16), v8);

  v6 = sub_252C97064(v3, v4 | 0x8000000000000000, v1, v2, v8);

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}