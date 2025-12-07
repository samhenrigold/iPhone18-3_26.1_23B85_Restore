uint64_t sub_261C4FE68(uint64_t a1)
{
  v2 = *(v1 + 152);
  sub_261CFC664();
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v3);
  v5 = *v2;
  v6 = v2[1];
  *(v1 + 104) = *(v2 + 4);
  *(v1 + 88) = v6;
  *(v1 + 72) = v5;
  v10 = (*(v4 + 8) + **(v4 + 8));
  v7 = swift_task_alloc();
  *(v1 + 304) = v7;
  *v7 = v1;
  v7[1] = sub_261C4FFC4;
  v8 = *(v1 + 200);

  return v10(v8, v1 + 72, v3, v4);
}

uint64_t sub_261C4FFC4()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 296);
  if (v0)
  {
    v5 = sub_261C503A8;
  }

  else
  {
    v5 = sub_261C500D8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261C500D8()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_261C50148, 0, 0);
}

uint64_t sub_261C50148(uint64_t a1)
{
  v2 = sub_261CFF704();
  sub_261CFF744();
  v3 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v5 = *(v1 + 136);
    if ((*(v1 + 320) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 168);
        v7 = *(v1 + 176);
        v8 = *(v1 + 160);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v7, v8) == *MEMORY[0x277D85B00])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 168) + 8))(*(v1 + 176), *(v1 + 160));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x26671D560](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 112);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 264);
  v13 = *(v1 + 224);
  v15 = *(v1 + 200);
  v14 = *(v1 + 208);
  v16 = *(v1 + 184);
  v17 = *(v1 + 192);
  v18 = *(v1 + 144);
  v21 = *(v1 + 152);
  v19 = *(v1 + 128);

  v12(v13, v14);
  (*(v17 + 32))(v19, v15, v16);
  sub_261C6377C(v18);
  sub_261BCD350(v21);

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_261C503A8()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_261C50418, 0, 0);
}

uint64_t sub_261C50418()
{
  v2 = v0[18];
  v1 = v0[19];

  sub_261C6377C(v2);
  sub_261BCD350(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_261C504E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = a8;
  *(v8 + 168) = v14;
  *(v8 + 144) = a6;
  *(v8 + 152) = a7;
  *(v8 + 128) = a2;
  *(v8 + 136) = a5;
  *(v8 + 336) = a4;
  *(v8 + 120) = a1;
  v9 = sub_261CFF734();
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA238, &qword_261D02480);
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 - 8);
  *(v8 + 216) = swift_task_alloc();
  v11 = sub_261CFF6F4();
  *(v8 + 224) = v11;
  *(v8 + 232) = *(v11 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C50694, 0, 0);
}

uint64_t sub_261C50694()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 264) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  v4 = sub_261D00144();
  if ((v4 & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = *(v0 + 128);
  if (*(v0 + 336))
  {
LABEL_7:
    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return MEMORY[0x2822009F8](v4, v5, v6);
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 112);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v9, v7, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 256);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  (*(v12 + 16))(*(v0 + 248), v10, v11);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 272) = sub_261CFF754();
  v13 = *(v12 + 8);
  *(v0 + 280) = v13;
  *(v0 + 288) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v11);
  sub_261CFFD24();
  *(v0 + 296) = sub_261CFFD14();
  v14 = sub_261CFFCF4();
  v6 = v15;
  *(v0 + 304) = v14;
  *(v0 + 312) = v15;
  v4 = sub_261C508CC;
  v5 = v14;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_261C508CC(uint64_t a1)
{
  v7 = *(v1 + 160);
  v8 = *(v1 + 144);
  sub_261CFC664();
  v2 = *(v1 + 40);
  v3 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  *(v1 + 72) = v8;
  *(v1 + 88) = v7;
  v9 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v1 + 320) = v4;
  *v4 = v1;
  v4[1] = sub_261C50A34;
  v5 = *(v1 + 216);

  return v9(v5, v1 + 72, v2, v3);
}

uint64_t sub_261C50A34()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_261C50E40;
  }

  else
  {
    v5 = sub_261C50B48;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261C50B48()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_261C50BB8, 0, 0);
}

uint64_t sub_261C50BB8(uint64_t a1)
{
  v2 = sub_261CFF704();
  sub_261CFF744();
  v3 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v5 = *(v1 + 128);
    if ((*(v1 + 336) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 184);
        v7 = *(v1 + 192);
        v8 = *(v1 + 176);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v7, v8) == *MEMORY[0x277D85B00])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 184) + 8))(*(v1 + 192), *(v1 + 176));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x26671D560](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 104);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 280);
  v13 = *(v1 + 240);
  v15 = *(v1 + 216);
  v14 = *(v1 + 224);
  v17 = *(v1 + 200);
  v16 = *(v1 + 208);
  v18 = *(v1 + 136);
  v19 = *(v1 + 120);

  v12(v13, v14);
  (*(v16 + 32))(v19, v15, v17);
  sub_261C6377C(v18);

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_261C50E40()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_261C50EB0, 0, 0);
}

uint64_t sub_261C50EB0()
{
  v1 = *(v0 + 136);

  sub_261C6377C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261C50FA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = a8;
  *(v8 + 168) = v14;
  *(v8 + 144) = a6;
  *(v8 + 152) = a7;
  *(v8 + 128) = a2;
  *(v8 + 136) = a5;
  *(v8 + 336) = a4;
  *(v8 + 120) = a1;
  v9 = sub_261CFF734();
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA238, &qword_261D02480);
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 - 8);
  *(v8 + 216) = swift_task_alloc();
  v11 = sub_261CFF6F4();
  *(v8 + 224) = v11;
  *(v8 + 232) = *(v11 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C51158, 0, 0);
}

uint64_t sub_261C51158()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 264) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  v4 = sub_261D00144();
  if ((v4 & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = *(v0 + 128);
  if (*(v0 + 336))
  {
LABEL_7:
    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return MEMORY[0x2822009F8](v4, v5, v6);
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 112);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v9, v7, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 256);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  (*(v12 + 16))(*(v0 + 248), v10, v11);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 272) = sub_261CFF754();
  v13 = *(v12 + 8);
  *(v0 + 280) = v13;
  *(v0 + 288) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v11);
  sub_261CFFD24();
  *(v0 + 296) = sub_261CFFD14();
  v14 = sub_261CFFCF4();
  v6 = v15;
  *(v0 + 304) = v14;
  *(v0 + 312) = v15;
  v4 = sub_261C51390;
  v5 = v14;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_261C51390(uint64_t a1)
{
  v7 = *(v1 + 160);
  v8 = *(v1 + 144);
  sub_261CFC664();
  v2 = *(v1 + 40);
  v3 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  *(v1 + 72) = v8;
  *(v1 + 88) = v7;
  v9 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v1 + 320) = v4;
  *v4 = v1;
  v4[1] = sub_261C514F8;
  v5 = *(v1 + 216);

  return v9(v5, v1 + 72, v2, v3);
}

uint64_t sub_261C514F8()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_261C5167C;
  }

  else
  {
    v5 = sub_261C5160C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261C5160C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_261C6386C, 0, 0);
}

uint64_t sub_261C5167C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_261C63860, 0, 0);
}

uint64_t sub_261C516EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 216) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = sub_261CFF734();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA238, &qword_261D02480);
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 - 8);
  *(v8 + 120) = swift_task_alloc();
  v11 = sub_261CFF6F4();
  *(v8 + 128) = v11;
  *(v8 + 136) = *(v11 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C51894, 0, 0);
}

uint64_t sub_261C51894()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 168) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 216))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 160);
  v9 = *(v0 + 128);
  v10 = *(v0 + 136);
  (*(v10 + 16))(*(v0 + 152), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 176) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 184) = v11;
  *(v0 + 192) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 200) = v12;
  *v12 = v0;
  v12[1] = sub_261C4F178;
  v13 = *(v0 + 120);
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);

  return sub_261C923E8(v13, v16, v17, v14, v15);
}

uint64_t sub_261C51AD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 216) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = sub_261CFF734();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA310, &qword_261D027E8);
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 - 8);
  *(v8 + 120) = swift_task_alloc();
  v11 = sub_261CFF6F4();
  *(v8 + 128) = v11;
  *(v8 + 136) = *(v11 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C51C7C, 0, 0);
}

uint64_t sub_261C51C7C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 168) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 216))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 160);
  v9 = *(v0 + 128);
  v10 = *(v0 + 136);
  (*(v10 + 16))(*(v0 + 152), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 176) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 184) = v11;
  *(v0 + 192) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 200) = v12;
  *v12 = v0;
  v12[1] = sub_261C4F178;
  v13 = *(v0 + 120);
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);

  return sub_261B0A47C(v13, v16, v17, v14, v15);
}

uint64_t sub_261C51EBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 193) = a6;
  *(v6 + 40) = a2;
  *(v6 + 48) = a5;
  *(v6 + 192) = a4;
  *(v6 + 32) = a1;
  v7 = sub_261CFF734();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA300, qword_261D02728);
  *(v6 + 80) = v8;
  *(v6 + 88) = *(v8 - 8);
  *(v6 + 96) = swift_task_alloc();
  v9 = sub_261CFF6F4();
  *(v6 + 104) = v9;
  *(v6 + 112) = *(v9 - 8);
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C52064, 0, 0);
}

uint64_t sub_261C52064()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 144) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 192))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 136);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  (*(v10 + 16))(*(v0 + 128), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 152) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 160) = v11;
  *(v0 + 168) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_261C522A4;
  v13 = *(v0 + 96);
  v14 = *(v0 + 48);
  v15 = *(v0 + 193);

  return sub_261CE0A74(v13, v14, v15);
}

uint64_t sub_261C522A4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_261C63870;
  }

  else
  {
    v2 = sub_261C63868;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C523B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = a5;
  *(v5 + 192) = a4;
  *(v5 + 32) = a1;
  v6 = sub_261CFF734();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA300, qword_261D02728);
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 - 8);
  *(v5 + 96) = swift_task_alloc();
  v8 = sub_261CFF6F4();
  *(v5 + 104) = v8;
  *(v5 + 112) = *(v8 - 8);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5255C, 0, 0);
}

uint64_t sub_261C5255C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 144) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 192))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 136);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  (*(v10 + 16))(*(v0 + 128), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 152) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 160) = v11;
  *(v0 + 168) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_261C52798;
  v13 = *(v0 + 96);
  v14 = *(v0 + 48);

  return sub_261CE05A8(v13, v14);
}

uint64_t sub_261C52798()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_261C52B00;
  }

  else
  {
    v2 = sub_261C528AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C528AC(uint64_t a1)
{
  v2 = sub_261CFF704();
  sub_261CFF744();
  v3 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v5 = *(v1 + 40);
    if ((*(v1 + 192) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 64);
        v7 = *(v1 + 72);
        v8 = *(v1 + 56);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v7, v8) == *MEMORY[0x277D85B00])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 64) + 8))(*(v1 + 72), *(v1 + 56));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x26671D560](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 160);
  v13 = *(v1 + 120);
  v15 = *(v1 + 96);
  v14 = *(v1 + 104);
  v17 = *(v1 + 80);
  v16 = *(v1 + 88);
  v18 = *(v1 + 32);

  v12(v13, v14);
  (*(v16 + 32))(v18, v15, v17);

  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_261C52B00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C52BB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 40) = a2;
  *(v7 + 48) = a5;
  *(v7 + 208) = a4;
  *(v7 + 32) = a1;
  v8 = sub_261CFF734();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA300, qword_261D02728);
  *(v7 + 96) = v9;
  *(v7 + 104) = *(v9 - 8);
  *(v7 + 112) = swift_task_alloc();
  v10 = sub_261CFF6F4();
  *(v7 + 120) = v10;
  *(v7 + 128) = *(v10 - 8);
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C52D60, 0, 0);
}

uint64_t sub_261C52D60()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 160) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 208))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 152);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  (*(v10 + 16))(*(v0 + 144), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 168) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 176) = v11;
  *(v0 + 184) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  *v12 = v0;
  v12[1] = sub_261C52FA0;
  v13 = *(v0 + 112);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v16 = *(v0 + 48);

  return sub_261CE1274(v13, v16, v14, v15);
}

uint64_t sub_261C52FA0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_261C53318;
  }

  else
  {
    v2 = sub_261C530B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C530B4(uint64_t a1)
{
  v2 = sub_261CFF704();
  sub_261CFF744();
  v3 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v5 = *(v1 + 40);
    if ((*(v1 + 208) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 80);
        v7 = *(v1 + 88);
        v8 = *(v1 + 72);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v7, v8) == *MEMORY[0x277D85B00])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 80) + 8))(*(v1 + 88), *(v1 + 72));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x26671D560](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 176);
  v13 = *(v1 + 136);
  v15 = *(v1 + 112);
  v14 = *(v1 + 120);
  v16 = *(v1 + 96);
  v17 = *(v1 + 104);
  v18 = *(v1 + 32);

  v12(v13, v14);
  (*(v17 + 32))(v18, v15, v16);

  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_261C53318()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C533E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 177) = a6;
  *(v6 + 40) = a2;
  *(v6 + 48) = a5;
  *(v6 + 176) = a4;
  *(v6 + 32) = a1;
  v7 = sub_261CFF734();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  *(v6 + 80) = swift_task_alloc();
  v8 = sub_261CFF6F4();
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5355C, 0, 0);
}

uint64_t sub_261C5355C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 128) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 176))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 120);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  (*(v10 + 16))(*(v0 + 112), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 136) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 144) = v11;
  *(v0 + 152) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 160) = v12;
  *v12 = v0;
  v12[1] = sub_261C5379C;
  v13 = *(v0 + 80);
  v14 = *(v0 + 48);
  v15 = *(v0 + 177);

  return sub_261CE0C1C(v13, v14, v15);
}

uint64_t sub_261C5379C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_261C63874;
  }

  else
  {
    v2 = sub_261C6385C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C538B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = a5;
  *(v5 + 176) = a4;
  *(v5 + 32) = a1;
  v6 = sub_261CFF734();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  *(v5 + 80) = swift_task_alloc();
  v7 = sub_261CFF6F4();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C53A24, 0, 0);
}

uint64_t sub_261C53A24()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 128) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 176))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 120);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  (*(v10 + 16))(*(v0 + 112), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 136) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 144) = v11;
  *(v0 + 152) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 160) = v12;
  *v12 = v0;
  v12[1] = sub_261C53C60;
  v13 = *(v0 + 80);
  v14 = *(v0 + 48);

  return sub_261CE0854(v13, v14);
}

uint64_t sub_261C53C60()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_261C53FAC;
  }

  else
  {
    v2 = sub_261C53D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C53D74(uint64_t a1)
{
  v2 = sub_261CFF704();
  sub_261CFF744();
  v3 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v5 = *(v1 + 40);
    if ((*(v1 + 176) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v7 = *(v1 + 64);
        v6 = *(v1 + 72);
        v8 = *(v1 + 56);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v7 + 88))(v6, v8) == *MEMORY[0x277D85B00])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 64) + 8))(*(v1 + 72), *(v1 + 56));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x26671D560](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 144);
  v13 = *(v1 + 104);
  v15 = *(v1 + 80);
  v14 = *(v1 + 88);
  v16 = *(v1 + 32);

  v12(v13, v14);
  sub_261C5D028(v15, v16);

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_261C53FAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C54060(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 120) = a2;
  *(v5 + 128) = a5;
  *(v5 + 296) = a4;
  *(v5 + 112) = a1;
  v6 = sub_261CFF734();
  *(v5 + 136) = v6;
  *(v5 + 144) = *(v6 - 8);
  *(v5 + 152) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3B0, &qword_261D02D00);
  *(v5 + 160) = v7;
  *(v5 + 168) = *(v7 - 8);
  *(v5 + 176) = swift_task_alloc();
  v8 = sub_261CFF6F4();
  *(v5 + 184) = v8;
  *(v5 + 192) = *(v8 - 8);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C54204, 0, 0);
}

uint64_t sub_261C54204()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 224) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  v4 = sub_261D00144();
  if ((v4 & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = *(v0 + 120);
  if (*(v0 + 296))
  {
LABEL_7:
    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return MEMORY[0x2822009F8](v4, v5, v6);
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 104);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v9, v7, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 216);
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);
  (*(v12 + 16))(*(v0 + 208), v10, v11);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 232) = sub_261CFF754();
  v13 = *(v12 + 8);
  *(v0 + 240) = v13;
  *(v0 + 248) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v11);
  sub_261CFFD24();
  *(v0 + 256) = sub_261CFFD14();
  v14 = sub_261CFFCF4();
  v6 = v15;
  *(v0 + 264) = v14;
  *(v0 + 272) = v15;
  v4 = sub_261C5443C;
  v5 = v14;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_261C5443C(uint64_t a1)
{
  v2 = *(v1 + 128);
  sub_261CFC664();
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v3);
  v5 = *v2;
  v6 = v2[1];
  *(v1 + 88) = *(v2 + 4);
  *(v1 + 72) = v6;
  *(v1 + 56) = v5;
  v10 = (*(v4 + 8) + **(v4 + 8));
  v7 = swift_task_alloc();
  *(v1 + 280) = v7;
  *v7 = v1;
  v7[1] = sub_261C54598;
  v8 = *(v1 + 176);

  return v10(v8, v1 + 56, v3, v4);
}

uint64_t sub_261C54598()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 272);
  if (v0)
  {
    v5 = sub_261C54970;
  }

  else
  {
    v5 = sub_261C546AC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261C546AC()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_261C5471C, 0, 0);
}

uint64_t sub_261C5471C(uint64_t a1)
{
  v2 = sub_261CFF704();
  sub_261CFF744();
  v3 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v5 = *(v1 + 120);
    if ((*(v1 + 296) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 144);
        v7 = *(v1 + 152);
        v8 = *(v1 + 136);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v7, v8) == *MEMORY[0x277D85B00])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 144) + 8))(*(v1 + 152), *(v1 + 136));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x26671D560](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 96);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 240);
  v13 = *(v1 + 200);
  v15 = *(v1 + 176);
  v14 = *(v1 + 184);
  v17 = *(v1 + 160);
  v16 = *(v1 + 168);
  v18 = *(v1 + 128);
  v19 = *(v1 + 112);

  v12(v13, v14);
  (*(v16 + 32))(v19, v15, v17);
  sub_261B30860(v18);

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_261C54970()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_261C549E0, 0, 0);
}

uint64_t sub_261C549E0()
{
  v1 = *(v0 + 128);

  sub_261B30860(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261C54A98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 216) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = sub_261CFF734();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA538, &qword_261D030D0);
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 - 8);
  *(v8 + 120) = swift_task_alloc();
  v11 = sub_261CFF6F4();
  *(v8 + 128) = v11;
  *(v8 + 136) = *(v11 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C54C40, 0, 0);
}

uint64_t sub_261C54C40()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 168) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 216))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 160);
  v9 = *(v0 + 128);
  v10 = *(v0 + 136);
  (*(v10 + 16))(*(v0 + 152), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 176) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 184) = v11;
  *(v0 + 192) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 200) = v12;
  *v12 = v0;
  v12[1] = sub_261C4F178;
  v13 = *(v0 + 120);
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);

  return sub_261B336C4(v13, v16, v17, v14, v15);
}

uint64_t sub_261C54E80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 216) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = sub_261CFF734();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA538, &qword_261D030D0);
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 - 8);
  *(v8 + 120) = swift_task_alloc();
  v11 = sub_261CFF6F4();
  *(v8 + 128) = v11;
  *(v8 + 136) = *(v11 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C55028, 0, 0);
}

uint64_t sub_261C55028()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 168) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 216))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 160);
  v9 = *(v0 + 128);
  v10 = *(v0 + 136);
  (*(v10 + 16))(*(v0 + 152), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 176) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 184) = v11;
  *(v0 + 192) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 200) = v12;
  *v12 = v0;
  v12[1] = sub_261C4F178;
  v13 = *(v0 + 120);
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);

  return sub_261CF1464(v13, v16, v17, v14, v15);
}

uint64_t sub_261C55268(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = a5;
  *(v5 + 192) = a4;
  *(v5 + 32) = a1;
  v6 = sub_261CFF734();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAF8, &qword_261D13230);
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 - 8);
  *(v5 + 96) = swift_task_alloc();
  v8 = sub_261CFF6F4();
  *(v5 + 104) = v8;
  *(v5 + 112) = *(v8 - 8);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5540C, 0, 0);
}

uint64_t sub_261C5540C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 144) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 192))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 136);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  (*(v10 + 16))(*(v0 + 128), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 152) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 160) = v11;
  *(v0 + 168) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_261C55648;
  v13 = *(v0 + 96);
  v14 = *(v0 + 48);

  return sub_261B51B94(v13, v14);
}

uint64_t sub_261C55648()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_261C559B0;
  }

  else
  {
    v2 = sub_261C5575C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C5575C(uint64_t a1)
{
  v2 = sub_261CFF704();
  sub_261CFF744();
  v3 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v5 = *(v1 + 40);
    if ((*(v1 + 192) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 64);
        v7 = *(v1 + 72);
        v8 = *(v1 + 56);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v7, v8) == *MEMORY[0x277D85B00])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 64) + 8))(*(v1 + 72), *(v1 + 56));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x26671D560](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 160);
  v13 = *(v1 + 120);
  v15 = *(v1 + 96);
  v14 = *(v1 + 104);
  v17 = *(v1 + 80);
  v16 = *(v1 + 88);
  v18 = *(v1 + 48);
  v19 = *(v1 + 32);

  v12(v13, v14);
  (*(v16 + 32))(v19, v15, v17);
  sub_261B4E674(v18);

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_261C559B0()
{
  v1 = *(v0 + 48);

  sub_261B4E674(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261C55A68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = a5;
  *(v5 + 192) = a4;
  *(v5 + 32) = a1;
  v6 = sub_261CFF734();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAF8, &qword_261D13230);
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 - 8);
  *(v5 + 96) = swift_task_alloc();
  v8 = sub_261CFF6F4();
  *(v5 + 104) = v8;
  *(v5 + 112) = *(v8 - 8);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C55C0C, 0, 0);
}

uint64_t sub_261C55C0C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 144) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 192))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 136);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  (*(v10 + 16))(*(v0 + 128), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 152) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 160) = v11;
  *(v0 + 168) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_261C55E48;
  v13 = *(v0 + 96);
  v14 = *(v0 + 48);

  return sub_261C9B644(v13, v14);
}

uint64_t sub_261C55E48()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_261C561B0;
  }

  else
  {
    v2 = sub_261C55F5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C55F5C(uint64_t a1)
{
  v2 = sub_261CFF704();
  sub_261CFF744();
  v3 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v5 = *(v1 + 40);
    if ((*(v1 + 192) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 64);
        v7 = *(v1 + 72);
        v8 = *(v1 + 56);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v7, v8) == *MEMORY[0x277D85B00])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 64) + 8))(*(v1 + 72), *(v1 + 56));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x26671D560](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 160);
  v13 = *(v1 + 120);
  v15 = *(v1 + 96);
  v14 = *(v1 + 104);
  v17 = *(v1 + 80);
  v16 = *(v1 + 88);
  v18 = *(v1 + 48);
  v19 = *(v1 + 32);

  v12(v13, v14);
  (*(v16 + 32))(v19, v15, v17);
  sub_261B4968C(v18);

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_261C561B0()
{
  v1 = *(v0 + 48);

  sub_261B4968C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261C56268(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 216) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = sub_261CFF734();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAF8, &qword_261D13230);
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 - 8);
  *(v8 + 120) = swift_task_alloc();
  v11 = sub_261CFF6F4();
  *(v8 + 128) = v11;
  *(v8 + 136) = *(v11 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C56410, 0, 0);
}

uint64_t sub_261C56410()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 168) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 216))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 160);
  v9 = *(v0 + 128);
  v10 = *(v0 + 136);
  (*(v10 + 16))(*(v0 + 152), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 176) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 184) = v11;
  *(v0 + 192) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 200) = v12;
  *v12 = v0;
  v12[1] = sub_261C4F178;
  v13 = *(v0 + 120);
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);

  return sub_261CED534(v13, v16, v17, v14, v15);
}

uint64_t sub_261C56650(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 192) = a2;
  *(v5 + 200) = a5;
  *(v5 + 368) = a4;
  *(v5 + 184) = a1;
  v6 = sub_261CFF734();
  *(v5 + 208) = v6;
  *(v5 + 216) = *(v6 - 8);
  *(v5 + 224) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA8, &qword_261D03840);
  *(v5 + 232) = v7;
  *(v5 + 240) = *(v7 - 8);
  *(v5 + 248) = swift_task_alloc();
  v8 = sub_261CFF6F4();
  *(v5 + 256) = v8;
  *(v5 + 264) = *(v8 - 8);
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C567F4, 0, 0);
}

uint64_t sub_261C567F4()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 296) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  v4 = sub_261D00144();
  if ((v4 & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = *(v0 + 192);
  if (*(v0 + 368))
  {
LABEL_7:
    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return MEMORY[0x2822009F8](v4, v5, v6);
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 176);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v9, v7, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 288);
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  (*(v12 + 16))(*(v0 + 280), v10, v11);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 304) = sub_261CFF754();
  v13 = *(v12 + 8);
  *(v0 + 312) = v13;
  *(v0 + 320) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v11);
  sub_261CFFD24();
  *(v0 + 328) = sub_261CFFD14();
  v14 = sub_261CFFCF4();
  v6 = v15;
  *(v0 + 336) = v14;
  *(v0 + 344) = v15;
  v4 = sub_261C56A2C;
  v5 = v14;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_261C56A2C(uint64_t a1)
{
  v2 = *(v1 + 200);
  sub_261CFC664();
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  __swift_project_boxed_opaque_existential_1((v1 + 128), v3);
  v5 = *v2;
  v6 = v2[2];
  *(v1 + 32) = v2[1];
  *(v1 + 48) = v6;
  *(v1 + 16) = v5;
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[6];
  *(v1 + 96) = v2[5];
  *(v1 + 112) = v9;
  *(v1 + 64) = v7;
  *(v1 + 80) = v8;
  v13 = (*(v4 + 8) + **(v4 + 8));
  v10 = swift_task_alloc();
  *(v1 + 352) = v10;
  *v10 = v1;
  v10[1] = sub_261C56B94;
  v11 = *(v1 + 248);

  return v13(v11, v1 + 16, v3, v4);
}

uint64_t sub_261C56B94()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 336);
  v4 = *(v2 + 344);
  if (v0)
  {
    v5 = sub_261C56F6C;
  }

  else
  {
    v5 = sub_261C56CA8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261C56CA8()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));

  return MEMORY[0x2822009F8](sub_261C56D18, 0, 0);
}

uint64_t sub_261C56D18(uint64_t a1)
{
  v2 = sub_261CFF704();
  sub_261CFF744();
  v3 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v5 = *(v1 + 192);
    if ((*(v1 + 368) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 216);
        v7 = *(v1 + 224);
        v8 = *(v1 + 208);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v7, v8) == *MEMORY[0x277D85B00])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 216) + 8))(*(v1 + 224), *(v1 + 208));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x26671D560](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 168);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 312);
  v13 = *(v1 + 272);
  v15 = *(v1 + 248);
  v14 = *(v1 + 256);
  v17 = *(v1 + 232);
  v16 = *(v1 + 240);
  v18 = *(v1 + 200);
  v19 = *(v1 + 184);

  v12(v13, v14);
  (*(v16 + 32))(v19, v15, v17);
  sub_261B59E48(v18);

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_261C56F6C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));

  return MEMORY[0x2822009F8](sub_261C56FDC, 0, 0);
}

uint64_t sub_261C56FDC()
{
  v1 = *(v0 + 200);

  sub_261B59E48(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261C57094(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 88) = a2;
  *(v5 + 96) = a5;
  *(v5 + 240) = a4;
  *(v5 + 80) = a1;
  v6 = sub_261CFF734();
  *(v5 + 104) = v6;
  *(v5 + 112) = *(v6 - 8);
  *(v5 + 120) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE40, qword_261D10370);
  *(v5 + 128) = v7;
  *(v5 + 136) = *(v7 - 8);
  *(v5 + 144) = swift_task_alloc();
  v8 = sub_261CFF6F4();
  *(v5 + 152) = v8;
  *(v5 + 160) = *(v8 - 8);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C57238, 0, 0);
}

uint64_t sub_261C57238()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 192) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
LABEL_12:

    v8 = *(v0 + 184);
    v9 = *(v0 + 152);
    v10 = *(v0 + 160);
    v11 = *(v0 + 96);
    (*(v10 + 16))(*(v0 + 176), v8, v9);
    sub_261CFF764();
    swift_allocObject();
    *(v0 + 200) = sub_261CFF754();
    v12 = *(v10 + 8);
    *(v0 + 208) = v12;
    *(v0 + 216) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v8, v9);
    sub_261CFC664();
    v13 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 56) = v11;
    v15 = *(v13 + 24) + **(v13 + 24);
    v14 = swift_task_alloc();
    *(v0 + 224) = v14;
    *v14 = v0;
    v14[1] = sub_261C5753C;

    __asm { BRAA            X8, X16 }
  }

  v5 = *(v0 + 88);
  if ((*(v0 + 240) & 1) == 0)
  {
    if (v5)
    {
LABEL_11:
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = sub_261CFF6D4();
      _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
      MEMORY[0x26671D560](v6, -1, -1);
      goto LABEL_12;
    }

    __break(1u);
  }

  if (v5 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v5 & 0xFFFFF800) != 0xD800)
  {
    if (v5 >> 16 <= 0x10)
    {
      v5 = (v0 + 72);
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_261C5753C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_261C578AC;
  }

  else
  {
    v2 = sub_261C57650;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C57650()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = sub_261CFF704();
  sub_261CFF744();
  v2 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v4 = *(v0 + 88);
    if ((*(v0 + 240) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v5 = *(v0 + 112);
        v6 = *(v0 + 120);
        v7 = *(v0 + 104);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v5 + 88))(v6, v7) == *MEMORY[0x277D85B00])
        {
          v8 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
          v8 = "";
        }

        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v1, v2, v10, v4, v8, v9, 2u);
        MEMORY[0x26671D560](v9, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 64);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v11 = *(v0 + 208);
  v12 = *(v0 + 168);
  v14 = *(v0 + 144);
  v13 = *(v0 + 152);
  v16 = *(v0 + 128);
  v15 = *(v0 + 136);
  v17 = *(v0 + 80);

  v11(v12, v13);
  (*(v15 + 32))(v17, v14, v16);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_261C578AC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C57978(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 40) = a2;
  *(v7 + 48) = a5;
  *(v7 + 208) = a4;
  *(v7 + 32) = a1;
  v8 = sub_261CFF734();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE40, qword_261D10370);
  *(v7 + 96) = v9;
  *(v7 + 104) = *(v9 - 8);
  *(v7 + 112) = swift_task_alloc();
  v10 = sub_261CFF6F4();
  *(v7 + 120) = v10;
  *(v7 + 128) = *(v10 - 8);
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C57B20, 0, 0);
}

uint64_t sub_261C57B20()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 160) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 208))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 152);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  (*(v10 + 16))(*(v0 + 144), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 168) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 176) = v11;
  *(v0 + 184) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  *v12 = v0;
  v12[1] = sub_261C57D60;
  v13 = *(v0 + 112);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v16 = *(v0 + 48);

  return sub_261B6CF48(v13, v16, v14, v15);
}

uint64_t sub_261C57D60()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_261C63854;
  }

  else
  {
    v2 = sub_261C63824;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C57E74(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = a5;
  *(v5 + 192) = a4;
  *(v5 + 32) = a1;
  v6 = sub_261CFF734();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 - 8);
  *(v5 + 96) = swift_task_alloc();
  v8 = sub_261CFF6F4();
  *(v5 + 104) = v8;
  *(v5 + 112) = *(v8 - 8);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C58018, 0, 0);
}

uint64_t sub_261C58018()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 144) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 192))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 136);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  (*(v10 + 16))(*(v0 + 128), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 152) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 160) = v11;
  *(v0 + 168) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_261C58254;
  v13 = *(v0 + 96);
  v14 = *(v0 + 48);

  return sub_261B93DE0(v13, v14);
}

uint64_t sub_261C58254()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_261C585BC;
  }

  else
  {
    v2 = sub_261C58368;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C58368(uint64_t a1)
{
  v2 = sub_261CFF704();
  sub_261CFF744();
  v3 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v5 = *(v1 + 40);
    if ((*(v1 + 192) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 64);
        v7 = *(v1 + 72);
        v8 = *(v1 + 56);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v7, v8) == *MEMORY[0x277D85B00])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 64) + 8))(*(v1 + 72), *(v1 + 56));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x26671D560](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 160);
  v13 = *(v1 + 120);
  v15 = *(v1 + 96);
  v14 = *(v1 + 104);
  v17 = *(v1 + 80);
  v16 = *(v1 + 88);
  v18 = *(v1 + 48);
  v19 = *(v1 + 32);

  v12(v13, v14);
  (*(v16 + 32))(v19, v15, v17);
  sub_261C637D0(v18);

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_261C585BC()
{
  v1 = *(v0 + 48);

  sub_261C637D0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261C58674(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 200) = a4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = sub_261CFF734();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  v9 = sub_261CFF6F4();
  *(v6 + 112) = v9;
  *(v6 + 120) = *(v9 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C58818, 0, 0);
}

uint64_t sub_261C58818()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 200))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 144);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  (*(v10 + 16))(*(v0 + 136), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 160) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 168) = v11;
  *(v0 + 176) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_261C58A54;
  v13 = *(v0 + 104);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);

  return sub_261BB546C(v13, v14, v15);
}

uint64_t sub_261C58A54()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_261C63858;
  }

  else
  {
    v2 = sub_261C63828;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C58B68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 200) = a4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = sub_261CFF734();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  v9 = sub_261CFF6F4();
  *(v6 + 112) = v9;
  *(v6 + 120) = *(v9 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C58D0C, 0, 0);
}

uint64_t sub_261C58D0C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 200))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 144);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  (*(v10 + 16))(*(v0 + 136), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 160) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 168) = v11;
  *(v0 + 176) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_261C58A54;
  v13 = *(v0 + 104);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);

  return sub_261BE3F3C(v13, v14, v15);
}

uint64_t sub_261C58F48(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 200) = a4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = sub_261CFF734();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  v9 = sub_261CFF6F4();
  *(v6 + 112) = v9;
  *(v6 + 120) = *(v9 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C590EC, 0, 0);
}

uint64_t sub_261C590EC()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 200))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 144);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  (*(v10 + 16))(*(v0 + 136), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 160) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 168) = v11;
  *(v0 + 176) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_261C58A54;
  v13 = *(v0 + 104);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);

  return sub_261BE5E78(v13, v14, v15);
}

uint64_t sub_261C59328(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 200) = a4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = sub_261CFF734();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  v9 = sub_261CFF6F4();
  *(v6 + 112) = v9;
  *(v6 + 120) = *(v9 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C594CC, 0, 0);
}

uint64_t sub_261C594CC()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 200))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 144);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  (*(v10 + 16))(*(v0 + 136), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 160) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 168) = v11;
  *(v0 + 176) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_261C58A54;
  v13 = *(v0 + 104);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);

  return sub_261C31D14(v13, v14, v15);
}

uint64_t sub_261C59708(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 200) = a4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = sub_261CFF734();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  v9 = sub_261CFF6F4();
  *(v6 + 112) = v9;
  *(v6 + 120) = *(v9 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C598AC, 0, 0);
}

uint64_t sub_261C598AC()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 200))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 144);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  (*(v10 + 16))(*(v0 + 136), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 160) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 168) = v11;
  *(v0 + 176) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_261C58A54;
  v13 = *(v0 + 104);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);

  return sub_261CA77B4(v13, v14, v15);
}

uint64_t sub_261C59AE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 40) = a2;
  *(v7 + 48) = a5;
  *(v7 + 208) = a4;
  *(v7 + 32) = a1;
  v8 = sub_261CFF734();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  *(v7 + 96) = v9;
  *(v7 + 104) = *(v9 - 8);
  *(v7 + 112) = swift_task_alloc();
  v10 = sub_261CFF6F4();
  *(v7 + 120) = v10;
  *(v7 + 128) = *(v10 - 8);
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C59C90, 0, 0);
}

uint64_t sub_261C59C90()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 160) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 208))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 152);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  (*(v10 + 16))(*(v0 + 144), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 168) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 176) = v11;
  *(v0 + 184) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  *v12 = v0;
  v12[1] = sub_261C59ED0;
  v13 = *(v0 + 112);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v16 = *(v0 + 48);

  return sub_261CE8B50(v13, v16, v14, v15);
}

uint64_t sub_261C59ED0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_261C63850;
  }

  else
  {
    v2 = sub_261C63848;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C59FE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 312) = a4;
  *(v8 + 104) = a1;
  *(v8 + 112) = a2;
  v9 = sub_261CFF734();
  *(v8 + 152) = v9;
  *(v8 + 160) = *(v9 - 8);
  *(v8 + 168) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB588, &qword_261D06AC0);
  *(v8 + 176) = v10;
  *(v8 + 184) = *(v10 - 8);
  *(v8 + 192) = swift_task_alloc();
  v11 = sub_261CFF6F4();
  *(v8 + 200) = v11;
  *(v8 + 208) = *(v11 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5A18C, 0, 0);
}

uint64_t sub_261C5A18C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 240) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  v4 = sub_261D00144();
  if ((v4 & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = *(v0 + 112);
  if (*(v0 + 312))
  {
LABEL_7:
    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return MEMORY[0x2822009F8](v4, v5, v6);
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 96);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v9, v7, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 232);
  v11 = *(v0 + 200);
  v12 = *(v0 + 208);
  (*(v12 + 16))(*(v0 + 224), v10, v11);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 248) = sub_261CFF754();
  v13 = *(v12 + 8);
  *(v0 + 256) = v13;
  *(v0 + 264) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v11);
  sub_261CFFD24();
  *(v0 + 272) = sub_261CFFD14();
  v14 = sub_261CFFCF4();
  v6 = v15;
  *(v0 + 280) = v14;
  *(v0 + 288) = v15;
  v4 = sub_261C5A3C4;
  v5 = v14;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_261C5A3C4(uint64_t a1)
{
  v3 = *(v1 + 136);
  v2 = *(v1 + 144);
  v9 = *(v1 + 120);
  sub_261CFC664();
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v4);
  *(v1 + 56) = v9;
  *(v1 + 72) = v3;
  *(v1 + 80) = v2;
  v10 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  *(v1 + 296) = v6;
  *v6 = v1;
  v6[1] = sub_261C5A52C;
  v7 = *(v1 + 192);

  return v10(v7, v1 + 56, v4, v5);
}

uint64_t sub_261C5A52C()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_261C5A928;
  }

  else
  {
    v5 = sub_261C5A640;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261C5A640()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_261C5A6B0, 0, 0);
}

uint64_t sub_261C5A6B0(uint64_t a1)
{
  v2 = sub_261CFF704();
  sub_261CFF744();
  v3 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v5 = *(v1 + 112);
    if ((*(v1 + 312) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 160);
        v7 = *(v1 + 168);
        v8 = *(v1 + 152);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v7, v8) == *MEMORY[0x277D85B00])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 160) + 8))(*(v1 + 168), *(v1 + 152));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x26671D560](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 88);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 256);
  v13 = *(v1 + 216);
  v14 = *(v1 + 192);
  v15 = *(v1 + 200);
  v17 = *(v1 + 176);
  v16 = *(v1 + 184);
  v18 = *(v1 + 104);

  v12(v13, v15);
  (*(v16 + 32))(v18, v14, v17);

  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_261C5A928()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_261C5A998, 0, 0);
}

uint64_t sub_261C5A998()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C5AA7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 40) = a2;
  *(v7 + 48) = a5;
  *(v7 + 208) = a4;
  *(v7 + 32) = a1;
  v8 = sub_261CFF734();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB588, &qword_261D06AC0);
  *(v7 + 96) = v9;
  *(v7 + 104) = *(v9 - 8);
  *(v7 + 112) = swift_task_alloc();
  v10 = sub_261CFF6F4();
  *(v7 + 120) = v10;
  *(v7 + 128) = *(v10 - 8);
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5AC24, 0, 0);
}

uint64_t sub_261C5AC24()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 160) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 208))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 152);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  (*(v10 + 16))(*(v0 + 144), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 168) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 176) = v11;
  *(v0 + 184) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  *v12 = v0;
  v12[1] = sub_261C5AE64;
  v13 = *(v0 + 112);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v16 = *(v0 + 48);

  return sub_261C8CAF4(v13, v16, v14, v15);
}

uint64_t sub_261C5AE64()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_261C5B1E8;
  }

  else
  {
    v2 = sub_261C5AF78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C5AF78(uint64_t a1)
{
  v2 = sub_261CFF704();
  sub_261CFF744();
  v3 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v5 = *(v1 + 40);
    if ((*(v1 + 208) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 80);
        v7 = *(v1 + 88);
        v8 = *(v1 + 72);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v7, v8) == *MEMORY[0x277D85B00])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 80) + 8))(*(v1 + 88), *(v1 + 72));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x26671D560](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 176);
  v13 = *(v1 + 136);
  v14 = *(v1 + 112);
  v15 = *(v1 + 120);
  v17 = *(v1 + 96);
  v16 = *(v1 + 104);
  v18 = *(v1 + 32);

  v12(v13, v15);
  (*(v16 + 32))(v18, v14, v17);

  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_261C5B1E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C5B2BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 200) = a4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = sub_261CFF734();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB620, qword_261D06DB8);
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  v9 = sub_261CFF6F4();
  *(v6 + 112) = v9;
  *(v6 + 120) = *(v9 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5B460, 0, 0);
}

uint64_t sub_261C5B460()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 200))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 144);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  (*(v10 + 16))(*(v0 + 136), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 160) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 168) = v11;
  *(v0 + 176) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_261C5B69C;
  v13 = *(v0 + 104);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);

  return sub_261BAD6B8(v13, v14, v15);
}

uint64_t sub_261C5B69C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_261C5BA10;
  }

  else
  {
    v2 = sub_261C5B7B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C5B7B0(uint64_t a1)
{
  v2 = sub_261CFF704();
  sub_261CFF744();
  v3 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v5 = *(v1 + 40);
    if ((*(v1 + 200) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 72);
        v7 = *(v1 + 80);
        v8 = *(v1 + 64);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v7, v8) == *MEMORY[0x277D85B00])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 72) + 8))(*(v1 + 80), *(v1 + 64));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x26671D560](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 168);
  v13 = *(v1 + 128);
  v15 = *(v1 + 104);
  v14 = *(v1 + 112);
  v16 = *(v1 + 88);
  v17 = *(v1 + 96);
  v18 = *(v1 + 32);

  v12(v13, v14);
  (*(v17 + 32))(v18, v15, v16);

  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_261C5BA10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C5BAD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 272) = a4;
  *(v8 + 88) = a1;
  *(v8 + 96) = a2;
  v9 = sub_261CFF734();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB620, qword_261D06DB8);
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 - 8);
  *(v8 + 176) = swift_task_alloc();
  v11 = sub_261CFF6F4();
  *(v8 + 184) = v11;
  *(v8 + 192) = *(v11 - 8);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5BC80, 0, 0);
}

uint64_t sub_261C5BC80()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 224) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 96);
  if (*(v0 + 272))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 80);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 216);
  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  v12 = *(v0 + 104);
  v11 = *(v0 + 112);
  (*(v10 + 16))(*(v0 + 208), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 232) = sub_261CFF754();
  v13 = *(v10 + 8);
  *(v0 + 240) = v13;
  *(v0 + 248) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v8, v9);
  sub_261CFC664();
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
  *(v0 + 56) = v12;
  *(v0 + 64) = v11;
  v20 = (*(v15 + 16) + **(v15 + 16));
  v16 = swift_task_alloc();
  *(v0 + 256) = v16;
  *v16 = v0;
  v16[1] = sub_261C5BF74;
  v17 = *(v0 + 176);
  v18 = *(v0 + 120);
  v19 = *(v0 + 128);

  return v20(v17, v0 + 56, v18, v19, v14, v15);
}

uint64_t sub_261C5BF74()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_261C5C300;
  }

  else
  {
    v2 = sub_261C5C088;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C5C088()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = sub_261CFF704();
  sub_261CFF744();
  v2 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v4 = *(v0 + 96);
    if ((*(v0 + 272) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v5 = *(v0 + 144);
        v6 = *(v0 + 152);
        v7 = *(v0 + 136);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v5 + 88))(v6, v7) == *MEMORY[0x277D85B00])
        {
          v8 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
          v8 = "";
        }

        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v1, v2, v10, v4, v8, v9, 2u);
        MEMORY[0x26671D560](v9, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 72);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v11 = *(v0 + 240);
  v12 = *(v0 + 200);
  v13 = *(v0 + 176);
  v14 = *(v0 + 184);
  v16 = *(v0 + 160);
  v15 = *(v0 + 168);
  v17 = *(v0 + 88);

  v11(v12, v14);
  (*(v15 + 32))(v17, v13, v16);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_261C5C300()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C5C3E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 40) = a2;
  *(v7 + 48) = a5;
  *(v7 + 208) = a4;
  *(v7 + 32) = a1;
  v8 = sub_261CFF734();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF70, &qword_261D08F18);
  *(v7 + 96) = v9;
  *(v7 + 104) = *(v9 - 8);
  *(v7 + 112) = swift_task_alloc();
  v10 = sub_261CFF6F4();
  *(v7 + 120) = v10;
  *(v7 + 128) = *(v10 - 8);
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5C590, 0, 0);
}

uint64_t sub_261C5C590()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 160) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 208))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 152);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  (*(v10 + 16))(*(v0 + 144), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 168) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 176) = v11;
  *(v0 + 184) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  *v12 = v0;
  v12[1] = sub_261C59ED0;
  v13 = *(v0 + 112);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v16 = *(v0 + 48);

  return sub_261CAA118(v13, v16, v14, v15);
}

uint64_t sub_261C5C7D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 216) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = sub_261CFF734();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD7D8, &qword_261D0ED20);
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 - 8);
  *(v8 + 120) = swift_task_alloc();
  v11 = sub_261CFF6F4();
  *(v8 + 128) = v11;
  *(v8 + 136) = *(v11 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5C978, 0, 0);
}

uint64_t sub_261C5C978()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 168) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 216))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 160);
  v9 = *(v0 + 128);
  v10 = *(v0 + 136);
  (*(v10 + 16))(*(v0 + 152), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 176) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 184) = v11;
  *(v0 + 192) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 200) = v12;
  *v12 = v0;
  v12[1] = sub_261C5CBB8;
  v13 = *(v0 + 120);
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);

  return sub_261C7363C(v13, v16, v17, v14, v15);
}

uint64_t sub_261C5CBB8()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_261C5CF44;
  }

  else
  {
    v2 = sub_261C5CCCC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C5CCCC(uint64_t a1)
{
  v2 = sub_261CFF704();
  sub_261CFF744();
  v3 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v5 = *(v1 + 40);
    if ((*(v1 + 216) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 88);
        v7 = *(v1 + 96);
        v8 = *(v1 + 80);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v7, v8) == *MEMORY[0x277D85B00])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 88) + 8))(*(v1 + 96), *(v1 + 80));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x26671D560](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 184);
  v13 = *(v1 + 144);
  v14 = *(v1 + 120);
  v15 = *(v1 + 128);
  v17 = *(v1 + 104);
  v16 = *(v1 + 112);
  v18 = *(v1 + 32);

  v12(v13, v15);
  (*(v16 + 32))(v18, v14, v17);

  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_261C5CF44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C5D028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261C5D098(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  *(v5 + 240) = a3;
  *(v5 + 104) = a1;
  v6 = sub_261CFF734();
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();
  v7 = sub_261CFF6F4();
  *(v5 + 152) = v7;
  *(v5 + 160) = *(v7 - 8);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5D1D4, 0, 0);
}

uint64_t sub_261C5D1D4()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 192) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 104);
  if (*(v0 + 240))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 96);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 184);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v11 = *(v0 + 112);
  (*(v10 + 16))(*(v0 + 176), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 200) = sub_261CFF754();
  v12 = *(v10 + 8);
  *(v0 + 208) = v12;
  *(v0 + 216) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v9);
  sub_261B6BB2C(0x7365697469746E65, 0xEE00293A726F6628);
  sub_261CFC664();
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
  *(v0 + 80) = v11;
  v17 = (*(v14 + 8) + **(v14 + 8));
  v15 = swift_task_alloc();
  *(v0 + 224) = v15;
  *v15 = v0;
  v15[1] = sub_261C5D4D8;
  v16 = *(v0 + 120);

  return v17(v0 + 80, v16, v13, v14);
}

uint64_t sub_261C5D4D8(uint64_t a1)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = v1;
  v3[29] = v1;

  if (v1)
  {
    v4 = sub_261C63838;
  }

  else
  {
    v4 = sub_261C6382C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261C5D5F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 232) = a3;
  *(v4 + 104) = a1;
  *(v4 + 112) = a4;
  v5 = sub_261CFF734();
  *(v4 + 120) = v5;
  *(v4 + 128) = *(v5 - 8);
  *(v4 + 136) = swift_task_alloc();
  v6 = sub_261CFF6F4();
  *(v4 + 144) = v6;
  *(v4 + 152) = *(v6 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5D72C, 0, 0);
}

uint64_t sub_261C5D72C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 184) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 104);
  if (*(v0 + 232))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 96);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 176);
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  v11 = *(v0 + 112);
  (*(v10 + 16))(*(v0 + 168), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 192) = sub_261CFF754();
  v12 = *(v10 + 8);
  *(v0 + 200) = v12;
  *(v0 + 208) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v9);
  sub_261B6BB2C(0xD000000000000013, 0x8000000261D1B3A0);
  sub_261CFC664();
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
  *(v0 + 80) = v11;
  v16 = (*(v14 + 16) + **(v14 + 16));
  v15 = swift_task_alloc();
  *(v0 + 216) = v15;
  *v15 = v0;
  v15[1] = sub_261C5DA24;

  return v16(v0 + 80, v13, v14);
}

uint64_t sub_261C5DA24(uint64_t a1)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = v1;
  v3[28] = v1;

  if (v1)
  {
    v4 = sub_261C5DD5C;
  }

  else
  {
    v4 = sub_261C5DB40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261C5DB40()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = sub_261CFF704();
  sub_261CFF744();
  v2 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v4 = *(v0 + 104);
    if ((*(v0 + 232) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v6 = *(v0 + 128);
        v5 = *(v0 + 136);
        v7 = *(v0 + 120);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v5, v7) == *MEMORY[0x277D85B00])
        {
          v8 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
          v8 = "";
        }

        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v1, v2, v10, v4, v8, v9, 2u);
        MEMORY[0x26671D560](v9, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 88);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v11 = *(v0 + 64);
  v12 = *(v0 + 200);
  v13 = *(v0 + 160);
  v14 = *(v0 + 144);

  v12(v13, v14);

  v15 = *(v0 + 8);

  return v15(v11);
}

uint64_t sub_261C5DD5C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C5DE08(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 248) = a3;
  *(v6 + 104) = a1;
  *(v6 + 112) = a4;
  v7 = sub_261CFF734();
  *(v6 + 136) = v7;
  *(v6 + 144) = *(v7 - 8);
  *(v6 + 152) = swift_task_alloc();
  v8 = sub_261CFF6F4();
  *(v6 + 160) = v8;
  *(v6 + 168) = *(v8 - 8);
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5DF44, 0, 0);
}

uint64_t sub_261C5DF44()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 200) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 104);
  if (*(v0 + 248))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 96);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 192);
  v9 = *(v0 + 160);
  v10 = *(v0 + 168);
  v11 = *(v0 + 112);
  (*(v10 + 16))(*(v0 + 184), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 208) = sub_261CFF754();
  v12 = *(v10 + 8);
  *(v0 + 216) = v12;
  *(v0 + 224) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v9);
  sub_261CFC664();
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
  *(v0 + 80) = v11;
  v18 = (*(v14 + 24) + **(v14 + 24));
  v15 = swift_task_alloc();
  *(v0 + 232) = v15;
  *v15 = v0;
  v15[1] = sub_261C5E224;
  v16 = *(v0 + 120);
  v17 = *(v0 + 128);

  return v18(v0 + 80, v16, v17, v13, v14);
}

uint64_t sub_261C5E224(uint64_t a1)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = v1;
  v3[30] = v1;

  if (v1)
  {
    v4 = sub_261C5E55C;
  }

  else
  {
    v4 = sub_261C5E340;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261C5E340()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = sub_261CFF704();
  sub_261CFF744();
  v2 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v4 = *(v0 + 104);
    if ((*(v0 + 248) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v6 = *(v0 + 144);
        v5 = *(v0 + 152);
        v7 = *(v0 + 136);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v5, v7) == *MEMORY[0x277D85B00])
        {
          v8 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
          v8 = "";
        }

        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v1, v2, v10, v4, v8, v9, 2u);
        MEMORY[0x26671D560](v9, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 88);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v11 = *(v0 + 64);
  v12 = *(v0 + 216);
  v13 = *(v0 + 176);
  v14 = *(v0 + 160);

  v12(v13, v14);

  v15 = *(v0 + 8);

  return v15(v11);
}

uint64_t sub_261C5E55C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C5E608(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  *(v5 + 240) = a3;
  *(v5 + 104) = a1;
  v6 = sub_261CFF734();
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();
  v7 = sub_261CFF6F4();
  *(v5 + 152) = v7;
  *(v5 + 160) = *(v7 - 8);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5E744, 0, 0);
}

uint64_t sub_261C5E744()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 192) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 104);
  if (*(v0 + 240))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 96);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 184);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v11 = *(v0 + 112);
  (*(v10 + 16))(*(v0 + 176), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 200) = sub_261CFF754();
  v12 = *(v10 + 8);
  *(v0 + 208) = v12;
  *(v0 + 216) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v9);
  sub_261CFC664();
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
  *(v0 + 80) = v11;
  v17 = (*(v14 + 8) + **(v14 + 8));
  v15 = swift_task_alloc();
  *(v0 + 224) = v15;
  *v15 = v0;
  v15[1] = sub_261C5D4D8;
  v16 = *(v0 + 120);

  return v17(v0 + 80, v16, v13, v14);
}

uint64_t sub_261C5EA24(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  *(v5 + 240) = a3;
  *(v5 + 104) = a1;
  v6 = sub_261CFF734();
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();
  v7 = sub_261CFF6F4();
  *(v5 + 152) = v7;
  *(v5 + 160) = *(v7 - 8);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5EB60, 0, 0);
}

uint64_t sub_261C5EB60()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 192) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 104);
  if (*(v0 + 240))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 96);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 184);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v11 = *(v0 + 112);
  (*(v10 + 16))(*(v0 + 176), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 200) = sub_261CFF754();
  v12 = *(v10 + 8);
  *(v0 + 208) = v12;
  *(v0 + 216) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v9);
  sub_261B6BE54(0x7365697469746E65, 0xEE00293A726F6628);
  sub_261CFC664();
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
  *(v0 + 80) = v11;
  v17 = (*(v14 + 8) + **(v14 + 8));
  v15 = swift_task_alloc();
  *(v0 + 224) = v15;
  *v15 = v0;
  v15[1] = sub_261C5D4D8;
  v16 = *(v0 + 120);

  return v17(v0 + 80, v16, v13, v14);
}

uint64_t sub_261C5EE64(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 232) = a3;
  *(v4 + 104) = a1;
  *(v4 + 112) = a4;
  v5 = sub_261CFF734();
  *(v4 + 120) = v5;
  *(v4 + 128) = *(v5 - 8);
  *(v4 + 136) = swift_task_alloc();
  v6 = sub_261CFF6F4();
  *(v4 + 144) = v6;
  *(v4 + 152) = *(v6 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5EF9C, 0, 0);
}

uint64_t sub_261C5EF9C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 184) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 104);
  if (*(v0 + 232))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 96);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 176);
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  v11 = *(v0 + 112);
  (*(v10 + 16))(*(v0 + 168), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 192) = sub_261CFF754();
  v12 = *(v10 + 8);
  *(v0 + 200) = v12;
  *(v0 + 208) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v9);
  sub_261B6BE54(0xD000000000000013, 0x8000000261D1B3A0);
  sub_261CFC664();
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
  *(v0 + 80) = v11;
  v16 = (*(v14 + 24) + **(v14 + 24));
  v15 = swift_task_alloc();
  *(v0 + 216) = v15;
  *v15 = v0;
  v15[1] = sub_261C5F294;

  return v16(v0 + 80, v13, v14);
}

uint64_t sub_261C5F294(uint64_t a1)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = v1;
  v3[28] = v1;

  if (v1)
  {
    v4 = sub_261C6383C;
  }

  else
  {
    v4 = sub_261C63830;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261C5F3B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 232) = a3;
  *(v4 + 104) = a1;
  *(v4 + 112) = a4;
  v5 = sub_261CFF734();
  *(v4 + 120) = v5;
  *(v4 + 128) = *(v5 - 8);
  *(v4 + 136) = swift_task_alloc();
  v6 = sub_261CFF6F4();
  *(v4 + 144) = v6;
  *(v4 + 152) = *(v6 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5F4E8, 0, 0);
}

uint64_t sub_261C5F4E8()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 184) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 104);
  if (*(v0 + 232))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 96);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 176);
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  v11 = *(v0 + 112);
  (*(v10 + 16))(*(v0 + 168), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 192) = sub_261CFF754();
  v12 = *(v10 + 8);
  *(v0 + 200) = v12;
  *(v0 + 208) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v9);
  sub_261B6BE54(0x7469746E456C6C61, 0xED00002928736569);
  sub_261CFC664();
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
  *(v0 + 80) = v11;
  v16 = (*(v14 + 32) + **(v14 + 32));
  v15 = swift_task_alloc();
  *(v0 + 216) = v15;
  *v15 = v0;
  v15[1] = sub_261C5F294;

  return v16(v0 + 80, v13, v14);
}

uint64_t sub_261C5F7E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 128) = a5;
  *(v6 + 136) = a6;
  *(v6 + 256) = a3;
  *(v6 + 112) = a1;
  *(v6 + 120) = a4;
  v7 = sub_261CFF734();
  *(v6 + 144) = v7;
  *(v6 + 152) = *(v7 - 8);
  *(v6 + 160) = swift_task_alloc();
  v8 = sub_261CFF6F4();
  *(v6 + 168) = v8;
  *(v6 + 176) = *(v8 - 8);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5F924, 0, 0);
}

uint64_t sub_261C5F924()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 208) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 112);
  if (*(v0 + 256))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 104);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 200);
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  (*(v10 + 16))(*(v0 + 192), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 216) = sub_261CFF754();
  v13 = *(v10 + 8);
  *(v0 + 224) = v13;
  *(v0 + 232) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v8, v9);
  sub_261B6BFE8(0x7365697469746E65, 0xEE00293A726F6628);
  sub_261CFC664();
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
  *(v0 + 80) = v12;
  *(v0 + 88) = v11;
  v18 = (*(v15 + 8) + **(v15 + 8));
  v16 = swift_task_alloc();
  *(v0 + 240) = v16;
  *v16 = v0;
  v16[1] = sub_261C5FC34;
  v17 = *(v0 + 136);

  return v18(v0 + 80, v17, v14, v15);
}

uint64_t sub_261C5FC34(uint64_t a1)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = v1;
  v3[31] = v1;

  if (v1)
  {
    v4 = sub_261C5FF6C;
  }

  else
  {
    v4 = sub_261C5FD50;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261C5FD50()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = sub_261CFF704();
  sub_261CFF744();
  v2 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v4 = *(v0 + 112);
    if ((*(v0 + 256) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v6 = *(v0 + 152);
        v5 = *(v0 + 160);
        v7 = *(v0 + 144);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v5, v7) == *MEMORY[0x277D85B00])
        {
          v8 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
          v8 = "";
        }

        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v1, v2, v10, v4, v8, v9, 2u);
        MEMORY[0x26671D560](v9, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 96);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v11 = *(v0 + 64);
  v12 = *(v0 + 224);
  v13 = *(v0 + 184);
  v14 = *(v0 + 168);

  v12(v13, v14);

  v15 = *(v0 + 8);

  return v15(v11);
}

uint64_t sub_261C5FF6C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C60018(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = a6;
  *(v6 + 184) = a3;
  *(v6 + 40) = a1;
  *(v6 + 48) = a4;
  v7 = sub_261CFF734();
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = sub_261CFF6F4();
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C60154, 0, 0);
}

uint64_t sub_261C60154()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 136) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 184))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 32);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 128);
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);
  (*(v10 + 16))(*(v0 + 120), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 144) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 152) = v11;
  *(v0 + 160) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_261C60394;
  v13 = *(v0 + 56);
  v14 = *(v0 + 64);
  v15 = *(v0 + 48);

  return sub_261BCE578(v0 + 16, v15, v13, v14);
}

uint64_t sub_261C60394()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_261C63844;
  }

  else
  {
    v2 = sub_261C63864;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C604A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 120) = a3;
  *(v5 + 32) = a1;
  v6 = sub_261CFF734();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  v7 = sub_261CFF6F4();
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 - 8);
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C605E4, 0, 0);
}

uint64_t sub_261C605E4()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if (result)
  {
    v5 = *(v0 + 32);
    if ((*(v0 + 120) & 1) == 0)
    {
      if (v5)
      {
LABEL_11:
        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
        MEMORY[0x26671D560](v6, -1, -1);
        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if ((v5 & 0xFFFFF800) == 0xD800)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v5 >> 16 > 0x10)
    {
      goto LABEL_35;
    }

    v5 = (v0 + 24);
    goto LABEL_11;
  }

LABEL_12:

  v8 = *(v0 + 112);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  (*(v10 + 16))(*(v0 + 104), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  sub_261CFF754();
  v26 = *(v10 + 8);
  v26(v8, v9);
  sub_261B6C17C(0xD000000000000013, 0x8000000261D1B3A0);
  v11 = sub_261BCF0C8();
  v27 = MEMORY[0x277D84F90];
  if ((v11 & 1) == 0)
  {
    if (qword_27FED9A58 != -1)
    {
      swift_once();
    }

    v12 = sub_261CFD104();
    sub_261BBBCE8(v12);
  }

  if (qword_27FED9A60 != -1)
  {
    swift_once();
  }

  v13 = sub_261CFD104();
  sub_261BBBCE8(v13);
  v14 = sub_261CFF704();
  sub_261CFF744();
  v15 = sub_261CFFFD4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_30;
  }

  v16 = *(v0 + 32);
  if (*(v0 + 120))
  {
LABEL_22:
    if (!(v16 >> 32))
    {
      if ((v16 & 0xFFFFF800) == 0xD800)
      {
LABEL_38:
        __break(1u);
        return result;
      }

      if (v16 >> 16 <= 0x10)
      {
        v16 = (v0 + 16);
        goto LABEL_26;
      }

      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (!v16)
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_26:
  v18 = *(v0 + 64);
  v17 = *(v0 + 72);
  v19 = *(v0 + 56);
  sub_261CFCDA4();
  sub_261CFF774();

  if ((*(v18 + 88))(v17, v19) == *MEMORY[0x277D85B00])
  {
    v20 = "[Error] Interval already ended";
  }

  else
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v20 = "";
  }

  v21 = swift_slowAlloc();
  *v21 = 0;
  v22 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v14, v15, v22, v16, v20, v21, 2u);
  MEMORY[0x26671D560](v21, -1, -1);
LABEL_30:
  v23 = *(v0 + 96);
  v24 = *(v0 + 80);

  v26(v23, v24);

  v25 = *(v0 + 8);

  return v25(v27);
}

uint64_t sub_261C60A58(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  *(v5 + 248) = a3;
  *(v5 + 112) = a1;
  v6 = sub_261CFF734();
  *(v5 + 136) = v6;
  *(v5 + 144) = *(v6 - 8);
  *(v5 + 152) = swift_task_alloc();
  v7 = sub_261CFF6F4();
  *(v5 + 160) = v7;
  *(v5 + 168) = *(v7 - 8);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C60B94, 0, 0);
}

uint64_t sub_261C60B94()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 200) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 112);
  if (*(v0 + 248))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 104);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 192);
  v9 = *(v0 + 160);
  v10 = *(v0 + 168);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  (*(v10 + 16))(*(v0 + 184), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 208) = sub_261CFF754();
  v13 = *(v10 + 8);
  *(v0 + 216) = v13;
  *(v0 + 224) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v8, v9);
  sub_261B6C310(0xD000000000000018, 0x8000000261D1F8F0);
  sub_261CFC664();
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
  *(v0 + 80) = v12;
  *(v0 + 88) = v11;
  v17 = (*(v15 + 24) + **(v15 + 24));
  v16 = swift_task_alloc();
  *(v0 + 232) = v16;
  *v16 = v0;
  v16[1] = sub_261C60E98;

  return v17(v0 + 80, v14, v15);
}

uint64_t sub_261C60E98(uint64_t a1)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = v1;
  v3[30] = v1;

  if (v1)
  {
    v4 = sub_261C5E55C;
  }

  else
  {
    v4 = sub_261C60FB4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261C60FB4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = sub_261CFF704();
  sub_261CFF744();
  v2 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v4 = *(v0 + 112);
    if ((*(v0 + 248) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v6 = *(v0 + 144);
        v5 = *(v0 + 152);
        v7 = *(v0 + 136);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v5, v7) == *MEMORY[0x277D85B00])
        {
          v8 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
          v8 = "";
        }

        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v1, v2, v10, v4, v8, v9, 2u);
        MEMORY[0x26671D560](v9, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 96);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v11 = *(v0 + 64);
  v12 = *(v0 + 216);
  v13 = *(v0 + 176);
  v14 = *(v0 + 160);

  v12(v13, v14);

  v15 = *(v0 + 8);

  return v15(v11);
}

uint64_t sub_261C611D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 128) = a5;
  *(v6 + 136) = a6;
  *(v6 + 256) = a3;
  *(v6 + 112) = a1;
  *(v6 + 120) = a4;
  v7 = sub_261CFF734();
  *(v6 + 144) = v7;
  *(v6 + 152) = *(v7 - 8);
  *(v6 + 160) = swift_task_alloc();
  v8 = sub_261CFF6F4();
  *(v6 + 168) = v8;
  *(v6 + 176) = *(v8 - 8);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C6130C, 0, 0);
}

uint64_t sub_261C6130C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 208) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 112);
  if (*(v0 + 256))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 104);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 200);
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  (*(v10 + 16))(*(v0 + 192), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 216) = sub_261CFF754();
  v13 = *(v10 + 8);
  *(v0 + 224) = v13;
  *(v0 + 232) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v8, v9);
  sub_261B6C310(0x7365697469746E65, 0xEE00293A726F6628);
  sub_261CFC664();
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
  *(v0 + 80) = v12;
  *(v0 + 88) = v11;
  v18 = (*(v15 + 8) + **(v15 + 8));
  v16 = swift_task_alloc();
  *(v0 + 240) = v16;
  *v16 = v0;
  v16[1] = sub_261C6161C;
  v17 = *(v0 + 136);

  return v18(v0 + 80, v17, v14, v15);
}

uint64_t sub_261C6161C(uint64_t a1)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = v1;
  v3[31] = v1;

  if (v1)
  {
    v4 = sub_261C63840;
  }

  else
  {
    v4 = sub_261C63834;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261C61738(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  *(v5 + 240) = a3;
  *(v5 + 104) = a1;
  v6 = sub_261CFF734();
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();
  v7 = sub_261CFF6F4();
  *(v5 + 152) = v7;
  *(v5 + 160) = *(v7 - 8);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C61874, 0, 0);
}

uint64_t sub_261C61874()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 192) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 104);
  if (*(v0 + 240))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 96);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 184);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v11 = *(v0 + 112);
  (*(v10 + 16))(*(v0 + 176), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 200) = sub_261CFF754();
  v12 = *(v10 + 8);
  *(v0 + 208) = v12;
  *(v0 + 216) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v9);
  sub_261B6C4A4(0x7365697469746E65, 0xEE00293A726F6628);
  sub_261CFC664();
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
  *(v0 + 80) = v11;
  v17 = (*(v14 + 8) + **(v14 + 8));
  v15 = swift_task_alloc();
  *(v0 + 224) = v15;
  *v15 = v0;
  v15[1] = sub_261C61B78;
  v16 = *(v0 + 120);

  return v17(v0 + 80, v16, v13, v14);
}

uint64_t sub_261C61B78(uint64_t a1)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = v1;
  v3[29] = v1;

  if (v1)
  {
    v4 = sub_261C61EB0;
  }

  else
  {
    v4 = sub_261C61C94;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261C61C94()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = sub_261CFF704();
  sub_261CFF744();
  v2 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v4 = *(v0 + 104);
    if ((*(v0 + 240) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v6 = *(v0 + 136);
        v5 = *(v0 + 144);
        v7 = *(v0 + 128);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v5, v7) == *MEMORY[0x277D85B00])
        {
          v8 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
          v8 = "";
        }

        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v1, v2, v10, v4, v8, v9, 2u);
        MEMORY[0x26671D560](v9, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 88);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v11 = *(v0 + 64);
  v12 = *(v0 + 208);
  v13 = *(v0 + 168);
  v14 = *(v0 + 152);

  v12(v13, v14);

  v15 = *(v0 + 8);

  return v15(v11);
}

uint64_t sub_261C61EB0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C61F5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 144) = a6;
  *(v7 + 152) = a7;
  *(v7 + 128) = a4;
  *(v7 + 136) = a5;
  *(v7 + 272) = a3;
  *(v7 + 120) = a1;
  v8 = sub_261CFF734();
  *(v7 + 160) = v8;
  *(v7 + 168) = *(v8 - 8);
  *(v7 + 176) = swift_task_alloc();
  v9 = sub_261CFF6F4();
  *(v7 + 184) = v9;
  *(v7 + 192) = *(v9 - 8);
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C6209C, 0, 0);
}

uint64_t sub_261C6209C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 224) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 120);
  if (*(v0 + 272))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 112);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 216);
  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  v11 = *(v0 + 144);
  v17 = *(v0 + 128);
  (*(v10 + 16))(*(v0 + 208), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 232) = sub_261CFF754();
  v12 = *(v10 + 8);
  *(v0 + 240) = v12;
  *(v0 + 248) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v9);
  sub_261B6C640(0x7365697469746E65, 0xEE00293A726F6628);
  sub_261CFC664();
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
  *(v0 + 56) = v17;
  *(v0 + 72) = v11;
  v18 = (*(v14 + 8) + **(v14 + 8));
  v15 = swift_task_alloc();
  *(v0 + 256) = v15;
  *v15 = v0;
  v15[1] = sub_261C623B0;
  v16 = *(v0 + 152);

  return v18(v0 + 56, v16, v13, v14);
}

uint64_t sub_261C623B0(uint64_t a1)
{
  v3 = *v2;
  v3[10] = v2;
  v3[11] = a1;
  v3[12] = v1;
  v3[33] = v1;

  if (v1)
  {
    v4 = sub_261C626E8;
  }

  else
  {
    v4 = sub_261C624CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261C624CC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = sub_261CFF704();
  sub_261CFF744();
  v2 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v4 = *(v0 + 120);
    if ((*(v0 + 272) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v6 = *(v0 + 168);
        v5 = *(v0 + 176);
        v7 = *(v0 + 160);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v5, v7) == *MEMORY[0x277D85B00])
        {
          v8 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
          v8 = "";
        }

        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v1, v2, v10, v4, v8, v9, 2u);
        MEMORY[0x26671D560](v9, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 104);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v11 = *(v0 + 88);
  v12 = *(v0 + 240);
  v13 = *(v0 + 200);
  v14 = *(v0 + 184);

  v12(v13, v14);

  v15 = *(v0 + 8);

  return v15(v11);
}

uint64_t sub_261C626E8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C62794(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = a6;
  *(v6 + 184) = a3;
  *(v6 + 40) = a1;
  *(v6 + 48) = a4;
  v7 = sub_261CFF734();
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = sub_261CFF6F4();
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C628D0, 0, 0);
}

uint64_t sub_261C628D0()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 136) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 40);
  if (*(v0 + 184))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 32);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 128);
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);
  (*(v10 + 16))(*(v0 + 120), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 144) = sub_261CFF754();
  v11 = *(v10 + 8);
  *(v0 + 152) = v11;
  *(v0 + 160) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_261C62B10;
  v13 = *(v0 + 56);
  v14 = *(v0 + 64);
  v15 = *(v0 + 48);

  return sub_261CE21EC(v0 + 16, v15, v13, v14);
}

uint64_t sub_261C62B10()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_261C62E30;
  }

  else
  {
    v2 = sub_261C62C24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C62C24(uint64_t a1)
{
  v2 = sub_261CFF704();
  sub_261CFF744();
  v3 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v5 = *(v1 + 40);
    if ((*(v1 + 184) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v7 = *(v1 + 80);
        v6 = *(v1 + 88);
        v8 = *(v1 + 72);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v7 + 88))(v6, v8) == *MEMORY[0x277D85B00])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 80) + 8))(*(v1 + 88), *(v1 + 72));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x26671D560](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 24);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 152);
  v13 = *(v1 + 112);
  v14 = *(v1 + 96);

  v12(v13, v14);
  v15 = *(v1 + 16);

  v16 = *(v1 + 8);

  return v16(v15);
}

uint64_t sub_261C62E30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C62EC8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = a7;
  *(v8 + 184) = a8;
  *(v8 + 160) = a5;
  *(v8 + 168) = a6;
  *(v8 + 312) = a3;
  *(v8 + 144) = a1;
  *(v8 + 152) = a4;
  v9 = sub_261CFF734();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  *(v8 + 216) = swift_task_alloc();
  v10 = sub_261CFF6F4();
  *(v8 + 224) = v10;
  *(v8 + 232) = *(v10 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C63040, 0, 0);
}

uint64_t sub_261C63040()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 264) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 144);
  if (*(v0 + 312))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 136);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 256);
  v9 = *(v0 + 224);
  v10 = *(v0 + 232);
  v11 = *(v0 + 216);
  v12 = *(v0 + 168);
  v21 = *(v0 + 152);
  (*(v10 + 16))(*(v0 + 248), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 272) = sub_261CFF754();
  v13 = *(v10 + 8);
  *(v0 + 280) = v13;
  *(v0 + 288) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v8, v9);
  sub_261CFC664();
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
  *&v16 = v12;
  *(&v16 + 1) = v21;
  *(v0 + 72) = v16;
  *(v0 + 56) = v21;
  *(v0 + 88) = *(&v21 + 1);
  *(v0 + 96) = v12;
  sub_261CE2650(v11);
  v22 = (*(v15 + 24) + **(v15 + 24));
  v17 = swift_task_alloc();
  *(v0 + 296) = v17;
  *v17 = v0;
  v17[1] = sub_261C63364;
  v18 = *(v0 + 216);
  v19 = *(v0 + 176);
  v20 = *(v0 + 184);

  return v22(v0 + 56, v19, v20, v18, v14, v15);
}

uint64_t sub_261C63364(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[13] = v2;
  v4[14] = a1;
  v4[15] = v1;
  v5 = v3[27];
  v4[38] = v1;

  sub_261B59E9C(v5);
  if (v1)
  {
    v6 = sub_261C636C8;
  }

  else
  {
    v6 = sub_261C6349C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_261C6349C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = sub_261CFF704();
  sub_261CFF744();
  v2 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v4 = *(v0 + 144);
    if ((*(v0 + 312) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v6 = *(v0 + 200);
        v5 = *(v0 + 208);
        v7 = *(v0 + 192);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v6 + 88))(v5, v7) == *MEMORY[0x277D85B00])
        {
          v8 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
          v8 = "";
        }

        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v1, v2, v10, v4, v8, v9, 2u);
        MEMORY[0x26671D560](v9, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 128);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v15 = *(v0 + 112);
  v11 = *(v0 + 280);
  v12 = *(v0 + 240);
  v13 = *(v0 + 224);

  v11(v12, v13);

  v14 = *(v0 + 8);

  return v14(v15);
}

uint64_t sub_261C636C8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C6387C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD7E0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD7E0);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static RemindersInCalendarUtilities.checkAndRequestAuthorizationIfNeeded(presentingWith:)(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_261CFDBD4();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD7F8, &unk_261D0EE28);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_261CFFD24();
  v1[15] = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  v1[16] = v4;
  v1[17] = v3;

  return MEMORY[0x2822009F8](sub_261C63A98, v4, v3);
}

uint64_t sub_261C63A98()
{
  v65 = v0;
  v1 = qword_27FED9E08;
  v0[18] = qword_27FED9E08;
  qword_27FED9E08 = 0;
  v2 = (v1 >> 1) & 1 | v1;
  if (!v2)
  {

    if (qword_27FED9C08 != -1)
    {
      swift_once();
    }

    v37 = sub_261CFF7A4();
    __swift_project_value_buffer(v37, qword_27FEDD7E0);
    v38 = sub_261CFF784();
    v39 = sub_261CFFE54();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_261AE2000, v38, v39, "RemindersInCalendar: no authorizations to check", v40, 2u);
      MEMORY[0x26671D560](v40, -1, -1);
    }

    goto LABEL_20;
  }

  if (qword_27FED9C08 != -1)
  {
    swift_once();
  }

  v3 = v0[6];
  v4 = sub_261CFF7A4();
  v0[19] = __swift_project_value_buffer(v4, qword_27FEDD7E0);
  v5 = v3;
  v6 = sub_261CFF784();
  v7 = sub_261CFFE84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v64 = v11;
    *v9 = 136315394;
    v0[5] = v2;
    sub_261C64F0C();
    v12 = sub_261D005F4();
    v14 = sub_261B879C8(v12, v13, &v64);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v8;
    v15 = v8;
    _os_log_impl(&dword_261AE2000, v6, v7, "RemindersInCalendar: checking authorization {toCheck: %s, presentingViewController: %@}", v9, 0x16u);
    sub_261AE6A40(v10, &unk_27FEDA730, &unk_261D035C0);
    MEMORY[0x26671D560](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26671D560](v11, -1, -1);
    MEMORY[0x26671D560](v9, -1, -1);
  }

  v16 = v0[14];
  v18 = v0[7];
  v17 = v0[8];
  v19 = v0[6];
  sub_261C64D90();
  v20 = sub_261D00084();
  _s21PrivacyCheckerWrapperCMa();
  swift_allocObject();
  v21 = sub_261B7C2D8(v19, v20);
  v0[20] = v21;
  (*(v17 + 56))(v16, 1, 1, v18);
  if ((v1 & 2) != 0)
  {
    v42 = sub_261CFF784();
    v43 = sub_261CFFE84();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_261AE2000, v42, v43, "RemindersInCalendar: check location access", v44, 2u);
      MEMORY[0x26671D560](v44, -1, -1);
    }

    v45 = *(v21 + 24);
    if (v45)
    {
      v0[4] = v45;
      v46 = sub_261CFE164();
      v47 = swift_task_alloc();
      v0[21] = v47;
      *v47 = v0;
      v47[1] = sub_261C642D8;
      v30 = v0[13];
      v32 = MEMORY[0x277D45CF8];
      v31 = v46;

      return MEMORY[0x2821A8240](v30, v31, v32);
    }

    __break(1u);
    goto LABEL_45;
  }

  v22 = v0[12];
  v23 = v0[7];
  v24 = v0[8];
  sub_261C64DDC(v0[14], v22);
  v25 = *(v24 + 48);
  v0[22] = v25;
  v0[23] = (v24 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v25(v22, 1, v23) == 1)
  {
LABEL_8:
    if ((v0[18] & 3) != 0)
    {
      v26 = sub_261CFF784();
      v27 = sub_261CFFE84();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_261AE2000, v26, v27, "RemindersInCalendar: check and prompt notification access", v28, 2u);
        MEMORY[0x26671D560](v28, -1, -1);
      }

      v29 = v0[20];

      v33 = *(v29 + 24);
      if (v33)
      {
        v0[3] = v33;
        v34 = swift_task_alloc();
        v0[24] = v34;
        v35 = sub_261CFE164();
        *v34 = v0;
        v34[1] = sub_261C64840;
        v36 = MEMORY[0x277D45CF8];

        return MEMORY[0x2821A8250](2, v35, v36);
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    goto LABEL_34;
  }

  v48 = (*(v0[8] + 88))(v0[12], v0[7]);
  if (v48 != *MEMORY[0x277D45C10])
  {
    if (v48 != *MEMORY[0x277D45C18])
    {

      return sub_261D00604();
    }

    goto LABEL_8;
  }

  if ((v0[18] & 3) != 0)
  {
    v49 = sub_261CFF784();
    v50 = sub_261CFFE84();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_261AE2000, v49, v50, "RemindersInCalendar: skip checking notification access; will request open Reminders.", v51, 2u);
      MEMORY[0x26671D560](v51, -1, -1);
    }
  }

LABEL_34:
  v52 = v0[22];
  v53 = v0[11];
  v54 = v0[7];
  sub_261C64DDC(v0[14], v53);
  v55 = v52(v53, 1, v54);
  v56 = v0[20];
  if (v55 == 1)
  {
    v57 = v0[11];
    sub_261AE6A40(v0[14], &qword_27FEDD7F8, &unk_261D0EE28);

    sub_261AE6A40(v57, &qword_27FEDD7F8, &unk_261D0EE28);
LABEL_20:

    v41 = v0[1];

    return v41();
  }

  v30 = (*(v0[8] + 32))(v0[9], v0[11], v0[7]);
  v58 = *(v56 + 24);
  if (!v58)
  {
LABEL_46:
    __break(1u);
    return MEMORY[0x2821A8240](v30, v31, v32);
  }

  v0[2] = v58;
  v59 = sub_261CFE164();
  v60 = swift_task_alloc();
  v0[25] = v60;
  *v60 = v0;
  v60[1] = sub_261C64B30;
  v61 = v0[9];
  v62 = MEMORY[0x277D45CF8];

  return MEMORY[0x2821A8248](v61, v59, v62);
}

uint64_t sub_261C642D8()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_261C643F8, v3, v2);
}

uint64_t sub_261C643F8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  sub_261AE6A40(v2, &qword_27FEDD7F8, &unk_261D0EE28);
  sub_261C64E9C(v1, v2);
  v3 = *(v0 + 96);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  sub_261C64DDC(*(v0 + 112), v3);
  v6 = *(v5 + 48);
  *(v0 + 176) = v6;
  *(v0 + 184) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v4) == 1)
  {
LABEL_2:
    if ((*(v0 + 144) & 3) != 0)
    {
      v7 = sub_261CFF784();
      v8 = sub_261CFFE84();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_261AE2000, v7, v8, "RemindersInCalendar: check and prompt notification access", v9, 2u);
        MEMORY[0x26671D560](v9, -1, -1);
      }

      v10 = *(v0 + 160);

      v11 = *(v10 + 24);
      if (v11)
      {
        *(v0 + 24) = v11;
        v12 = swift_task_alloc();
        *(v0 + 192) = v12;
        sub_261CFE164();
        *v12 = v0;
        v12[1] = sub_261C64840;

LABEL_28:
        JUMPOUT(0x261CFDF64);
      }

      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  v13 = (*(*(v0 + 64) + 88))(*(v0 + 96), *(v0 + 56));
  if (v13 != *MEMORY[0x277D45C10])
  {
    if (v13 != *MEMORY[0x277D45C18])
    {

      return sub_261D00604();
    }

    goto LABEL_2;
  }

  if ((*(v0 + 144) & 3) != 0)
  {
    v14 = sub_261CFF784();
    v15 = sub_261CFFE84();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_261AE2000, v14, v15, "RemindersInCalendar: skip checking notification access; will request open Reminders.", v16, 2u);
      MEMORY[0x26671D560](v16, -1, -1);
    }
  }

LABEL_14:
  v17 = *(v0 + 176);
  v18 = *(v0 + 88);
  v19 = *(v0 + 56);
  sub_261C64DDC(*(v0 + 112), v18);
  v20 = v17(v18, 1, v19);
  v21 = *(v0 + 160);
  if (v20 != 1)
  {
    (*(*(v0 + 64) + 32))(*(v0 + 72), *(v0 + 88), *(v0 + 56));
    v25 = *(v21 + 24);
    if (v25)
    {
      *(v0 + 16) = v25;
      sub_261CFE164();
      v26 = swift_task_alloc();
      *(v0 + 200) = v26;
      *v26 = v0;
      v26[1] = sub_261C64B30;

      JUMPOUT(0x261CFDF54);
    }

    goto LABEL_27;
  }

  v22 = *(v0 + 88);
  sub_261AE6A40(*(v0 + 112), &qword_27FEDD7F8, &unk_261D0EE28);

  sub_261AE6A40(v22, &qword_27FEDD7F8, &unk_261D0EE28);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_261C64840()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_261C64960, v3, v2);
}

uint64_t sub_261C64960()
{
  v1 = v0[22];
  v2 = v0[11];
  v3 = v0[7];
  sub_261C64DDC(v0[14], v2);
  v4 = v1(v2, 1, v3);
  v5 = v0[20];
  if (v4 != 1)
  {
    (*(v0[8] + 32))(v0[9], v0[11], v0[7]);
    v9 = *(v5 + 24);
    if (v9)
    {
      v0[2] = v9;
      sub_261CFE164();
      v10 = swift_task_alloc();
      v0[25] = v10;
      *v10 = v0;
      v10[1] = sub_261C64B30;
    }

    else
    {
      __break(1u);
    }

    JUMPOUT(0x261CFDF54);
  }

  v6 = v0[11];
  sub_261AE6A40(v0[14], &qword_27FEDD7F8, &unk_261D0EE28);

  sub_261AE6A40(v6, &qword_27FEDD7F8, &unk_261D0EE28);

  v7 = v0[1];

  return v7();
}

uint64_t sub_261C64B30()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_261C64C50, v3, v2);
}

uint64_t sub_261C64C50()
{
  v1 = v0[14];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  (*(v3 + 8))(v2, v4);
  sub_261AE6A40(v1, &qword_27FEDD7F8, &unk_261D0EE28);

  v5 = v0[1];

  return v5();
}

uint64_t sub_261C64D40(uint64_t a1)
{
  v2 = sub_261C650F8();
  v3 = sub_261C6514C();

  return MEMORY[0x2821A7D18](a1, v2, v3);
}

unint64_t sub_261C64D90()
{
  result = qword_27FEDD800;
  if (!qword_27FEDD800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FEDD800);
  }

  return result;
}

uint64_t sub_261C64DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD7F8, &unk_261D0EE28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261C64E4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_261C651A4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_261C64E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD7F8, &unk_261D0EE28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_261C64F0C()
{
  result = qword_27FEDD808;
  if (!qword_27FEDD808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD808);
  }

  return result;
}

unint64_t sub_261C64F98()
{
  result = qword_27FEDD810;
  if (!qword_27FEDD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD810);
  }

  return result;
}

unint64_t sub_261C64FF0()
{
  result = qword_27FEDD818;
  if (!qword_27FEDD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD818);
  }

  return result;
}

unint64_t sub_261C6504C()
{
  result = qword_27FEDD820;
  if (!qword_27FEDD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD820);
  }

  return result;
}

unint64_t sub_261C650A4()
{
  result = qword_27FEDD828;
  if (!qword_27FEDD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD828);
  }

  return result;
}

unint64_t sub_261C650F8()
{
  result = qword_27FEDD830;
  if (!qword_27FEDD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD830);
  }

  return result;
}

unint64_t sub_261C6514C()
{
  result = qword_27FEDD838;
  if (!qword_27FEDD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD838);
  }

  return result;
}

uint64_t sub_261C651A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_261C651DC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD840);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD840);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261C653A4()
{
  v17 = v0;

  if (qword_27FED9C10 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDD840);
  sub_261CFCDA4();
  sub_261CFCDA4();
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16[0] = v5;
    *v4 = 136315138;
    sub_261CFCBB4();
    if (*(v0 + 16))
    {
      v6 = *(v0 + 16);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    v7 = MEMORY[0x26671C340](v6, MEMORY[0x277D837D0]);
    v9 = v8;

    v10 = sub_261B879C8(v7, v9, v16);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_261AE2000, v2, v3, "[OpenTagsAppIntent] Open tags browser for tags: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x26671D560](v5, -1, -1);
    MEMORY[0x26671D560](v4, -1, -1);
  }

  v11 = *(v0 + 48);
  *v16 = *(v0 + 56);
  sub_261BC0B8C(v11);
  v12 = [objc_opt_self() defaultWorkspace];
  if (v12)
  {
    v13 = v12;
    sub_261D00034();
  }

  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  sub_261CFC9A4();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_261C65600(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261C656A0()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD858);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD858);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261C65810()
{
  v10 = v0;
  v1 = *(v0 + 72);
  v5 = *(v0 + 56);

  v8 = v5;
  v9 = v1;
  sub_261C65908(&v8, &v6);
  v2 = v7;
  *(v0 + 16) = v6;
  *(v0 + 32) = v2;
  sub_261B84908();
  sub_261CFC994();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_261C65908@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v77 = a2;
  v82[3] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC120, &unk_261D092B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v71 - v5;
  v7 = sub_261CFFE24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = *(a1 + 8);
  sub_261CFCBB4();
  sub_261CFCA04();
  v11 = v7;
  v12 = v8;

  v13 = v81;
  v14 = **(&unk_279AFA978 + v81);
  sub_261CFFE14();
  v15 = *(v8 + 48);
  v16 = v15(v6, 1, v11);
  v80 = v11;
  if (v16 == 1)
  {
    (*(v8 + 104))(v10, *MEMORY[0x277D459E0], v11);
    v17 = v15(v6, 1, v11);
    v18 = v10;
    if (v17 != 1)
    {
      sub_261C6611C(v6);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v11);
    v18 = v10;
  }

  v19 = *(v2 + 16);
  v20 = v79;
  v21 = sub_261D00124();
  if (!v20)
  {
    v22 = v21;
    v23 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v23 setSaveIsNoopIfNoChangedKeys_];
    v79 = v23;
    v24 = [v23 updateSmartList_];
    sub_261CFCBB4();
    v25 = LOBYTE(v82[0]);
    v26 = sub_261CFFE04();
    if (v26 == 1)
    {
      if (!v25)
      {
        goto LABEL_10;
      }
    }

    else if (v26 == 2 && (v25 & 1) != 0)
    {
      goto LABEL_10;
    }

    sub_261CFCBB4();
    sub_261D00064();
LABEL_10:
    if (qword_27FED9C18 != -1)
    {
      swift_once();
    }

    v27 = v13;
    v28 = sub_261CFF7A4();
    v29 = __swift_project_value_buffer(v28, qword_27FEDD858);
    v30 = v24;
    v31 = sub_261CFF784();
    v32 = sub_261CFFE84();

    v33 = os_log_type_enabled(v31, v32);
    v76 = v30;
    if (v33)
    {
      v72 = v32;
      v74 = v29;
      v75 = v22;
      v71 = v18;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v82[0] = v35;
      v36 = "ers.smartlist.scheduled";
      v37 = 0xD000000000000023;
      *v34 = 136446466;
      v38 = "ers.smartlist.assigned";
      v39 = 0xD000000000000025;
      v40 = "ers.smartlist.completed";
      v41 = 0xD000000000000026;
      if (v27 != 4)
      {
        v41 = 0xD000000000000027;
        v40 = " Hidden Property Title";
      }

      if (v27 != 3)
      {
        v39 = v41;
        v38 = v40;
      }

      v42 = "ers.smartlist.all";
      v43 = 0xD000000000000021;
      if (v27 == 1)
      {
        v43 = 0xD000000000000027;
      }

      else
      {
        v42 = "ers.smartlist.flagged";
      }

      if (v27)
      {
        v37 = v43;
        v36 = v42;
      }

      v73 = v27;
      if (v27 <= 2)
      {
        v44 = v37;
      }

      else
      {
        v44 = v39;
      }

      if (v27 <= 2)
      {
        v45 = v36;
      }

      else
      {
        v45 = v38;
      }

      v46 = sub_261B879C8(v44, v45 | 0x8000000000000000, v82);

      *(v34 + 4) = v46;
      *(v34 + 12) = 2082;
      v47 = [v30 changedKeys];
      sub_261CFFD64();

      v48 = sub_261CFFD74();
      v50 = v49;

      v51 = sub_261B879C8(v48, v50, v82);

      *(v34 + 14) = v51;
      _os_log_impl(&dword_261AE2000, v31, v72, "[UpdateSmartListIntentPerforming] Update non custom smart list properties with id: %{public}s, changedKeys: %{public}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v35, -1, -1);
      MEMORY[0x26671D560](v34, -1, -1);

      v18 = v71;
      v22 = v75;
      LOBYTE(v27) = v73;
    }

    else
    {
    }

    v82[0] = 0;
    v52 = v79;
    v53 = [v79 saveSynchronouslyWithError_];
    v54 = v82[0];
    if (v53)
    {
      LOBYTE(v82[0]) = v27;
      v55 = v54;
      sub_261CFCBB4();
      SmartListEntity.init(type:isHidden:)(v82, v81, v77);
    }

    else
    {
      v56 = v82[0];
      v57 = sub_261CFD654();

      swift_willThrow();
      v58 = v57;
      v59 = sub_261CFF784();
      v60 = sub_261CFFE64();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v82[0] = v78;
        *v61 = 136315138;
        swift_getErrorValue();
        v62 = sub_261D00674();
        v64 = v22;
        v65 = v18;
        v66 = sub_261B879C8(v62, v63, v82);

        *(v61 + 4) = v66;
        v18 = v65;
        v22 = v64;
        _os_log_impl(&dword_261AE2000, v59, v60, "[UpdateSmartListIntentPerforming] Update non custom smart list properties failed with save error: %s", v61, 0xCu);
        v67 = v78;
        __swift_destroy_boxed_opaque_existential_0(v78);
        MEMORY[0x26671D560](v67, -1, -1);
        v68 = v61;
        v52 = v79;
        MEMORY[0x26671D560](v68, -1, -1);
      }

      sub_261B01D70();
      swift_allocError();
      *v69 = 19;
      swift_willThrow();
    }
  }

  return (*(v12 + 8))(v18, v80);
}

uint64_t sub_261C66070(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261C6611C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC120, &unk_261D092B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261C66184()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD870);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD870);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261C6634C()
{
  v16 = v0;

  if (qword_27FED9C20 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDD870);
  sub_261CFCDA4();
  sub_261CFCDA4();
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    sub_261CFCBB4();
    v15 = *(v0 + 73);
    v6 = SmartListType.title.getter();
    v8 = sub_261B879C8(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_261AE2000, v2, v3, "[OpenSmartListAppIntent] Open smart list with SmartListType: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x26671D560](v5, -1, -1);
    MEMORY[0x26671D560](v4, -1, -1);
  }

  v9 = *(v0 + 40);
  sub_261CFCBB4();
  sub_261BC0418(v9);
  v10 = [objc_opt_self() defaultWorkspace];
  if (v10)
  {
    v11 = v10;
    sub_261D00034();
  }

  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  sub_261CFC9A4();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_261C6658C(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

void *sub_261C6662C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for SectionEntity(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(sub_261CFF1B4() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x277D84F90];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_261AE6A40(v9, &qword_27FEDA1E0, &unk_261D02300);
    }

    else
    {
      v20 = v28;
      sub_261C6FCC8(v9, v28, type metadata accessor for SectionEntity);
      sub_261C6FCC8(v20, v30, type metadata accessor for SectionEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_261B41C94(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_261B41C94((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_261C6FCC8(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for SectionEntity);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

uint64_t sub_261C66948@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for SectionEntity(0) + 28));

  return sub_261CFCDA4();
}

uint64_t sub_261C66990()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD890);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD890);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261C66A58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v78 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v77 = &v55[-v6];
  v70 = sub_261CFD674();
  v80 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v55[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_261CFD884();
  MEMORY[0x28223BE20](v8 - 8);
  v65 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v11 - 8);
  v63 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for ListEntity(0);
  v73 = *(v13 - 8);
  v74 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v76 = &v55[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v75 = &v55[-v17];
  MEMORY[0x28223BE20](v16);
  v19 = &v55[-v18];
  v64 = &v55[-v18];
  v20 = type metadata accessor for SectionEntityID(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v55[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = [a1 objectID];
  v24 = [v23 entityName];
  v25 = sub_261CFFA74();
  v27 = v26;

  v28 = [v23 uuid];
  v29 = type metadata accessor for AppEntityID(0);
  sub_261CFD834();

  v30 = *(v29 + 24);
  v31 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v31 - 8) + 56))(v22 + v30, 1, 1, v31);
  v68 = v22;
  *v22 = v25;
  v22[1] = v27;
  swift_storeEnumTagMultiPayload();
  v32 = [a1 displayName];
  v33 = sub_261CFFA74();
  v71 = v34;
  v72 = v33;

  sub_261B73240([a1 list], v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v69 = sub_261CFCB24();
  v35 = v79;
  *v79 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
  v60 = sub_261C6F064(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v66 = sub_261CFCA64();
  v35[1] = v66;
  v36 = type metadata accessor for SectionEntity(0);
  v61 = *(v36 + 28);
  v57 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2D0, &qword_261D096E8);
  sub_261CFF9B4();
  sub_261CFD874();
  v37 = *MEMORY[0x277CC9110];
  v38 = v80 + 104;
  v58 = *(v80 + 104);
  v39 = v67;
  v40 = v70;
  v58(v67, v37, v70);
  v80 = v38;
  v41 = v63;
  sub_261CFD6B4();
  v62 = MEMORY[0x2667199E0](v41, &type metadata for UpdateSectionDisplayNameAppIntent);
  *(v35 + v61) = v62;
  v59 = *(v36 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8D0, &qword_261D137D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v42 = v37;
  v43 = v37;
  v56 = v37;
  v44 = v40;
  v45 = v58;
  v58(v39, v42, v40);
  sub_261CFD6B4();
  v61 = MEMORY[0x2667199F0](v41, &type metadata for UpdateSectionIsCollapsedAppIntent);
  v46 = v79;
  *(v79 + v59) = v61;
  v47 = v57;
  v59 = *(v57 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCFD0, &qword_261D0D0D8);
  sub_261CFF9B4();
  sub_261CFD874();
  v45(v39, v43, v44);
  sub_261CFD6C4();
  v60 = sub_261CFCA54();
  *(v46 + v59) = v60;
  v59 = *(v47 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
  sub_261CFF9B4();
  sub_261CFD874();
  v45(v39, v56, v44);
  sub_261CFD6C4();
  sub_261C6F064(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  *(v46 + v59) = sub_261CFCA54();
  v48 = v68;
  sub_261C6F0D4(v68, v46 + *(v47 + 24), type metadata accessor for SectionEntityID);
  v49 = v64;
  v50 = v77;
  sub_261C6F0D4(v64, v77, type metadata accessor for ListEntity);
  (*(v73 + 56))(v50, 0, 1, v74);
  sub_261AFB668(v50, v78, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCA14();
  sub_261AE6A40(v50, &unk_27FEDE0C0, &unk_261D02500);
  v51 = v72;
  v81 = v72;
  v82 = v71;
  v52 = v71;
  sub_261CFD104();
  sub_261CFD2E4();
  LOBYTE(v81) = 0;
  sub_261CFD2E4();
  v81 = v51;
  v82 = v52;
  sub_261CFCA14();
  v53 = v75;
  sub_261C6F0D4(v49, v75, type metadata accessor for ListEntity);
  sub_261C6F0D4(v53, v76, type metadata accessor for ListEntity);
  sub_261CFCA14();
  sub_261C6F13C(v53, type metadata accessor for ListEntity);
  sub_261C6F13C(v49, type metadata accessor for ListEntity);
  return sub_261C6F13C(v48, type metadata accessor for SectionEntityID);
}

uint64_t sub_261C67444@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v72 = a2;
  v83 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v82 = &v59[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v81 = &v59[-v7];
  v74 = sub_261CFD674();
  v84 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v69 = &v59[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFFA44();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v12 - 8);
  v67 = &v59[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for ListEntity(0);
  v77 = *(v14 - 8);
  v78 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v80 = &v59[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v79 = &v59[-v18];
  MEMORY[0x28223BE20](v17);
  v20 = &v59[-v19];
  v68 = &v59[-v19];
  v21 = type metadata accessor for SectionEntityID(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v59[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = [a1 objectID];
  v25 = [v24 entityName];
  v26 = sub_261CFFA74();
  v28 = v27;

  v29 = [v24 uuid];
  v30 = type metadata accessor for AppEntityID(0);
  sub_261CFD834();

  v31 = *(v30 + 24);
  v32 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v32 - 8) + 56))(v23 + v31, 1, 1, v32);
  v73 = v23;
  *v23 = v26;
  v23[1] = v28;
  swift_storeEnumTagMultiPayload();
  v33 = [a1 displayName];
  v34 = sub_261CFFA74();
  v75 = v35;
  v76 = v34;

  v36 = [a1 smartList];
  v37 = v72;
  v38 = v72;
  sub_261B750A0(v36, v37, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v72 = sub_261CFCB24();
  v39 = v83;
  *v83 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
  v64 = sub_261C6F064(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v70 = sub_261CFCA64();
  v39[1] = v70;
  v40 = type metadata accessor for SectionEntity(0);
  v65 = *(v40 + 28);
  v61 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2D0, &qword_261D096E8);
  sub_261CFF9B4();
  sub_261CFD874();
  v41 = *MEMORY[0x277CC9110];
  v42 = v84 + 104;
  v62 = *(v84 + 104);
  v43 = v71;
  v44 = v74;
  v62(v71, v41, v74);
  v84 = v42;
  v45 = v67;
  sub_261CFD6B4();
  v66 = MEMORY[0x2667199E0](v45, &type metadata for UpdateSectionDisplayNameAppIntent);
  *(v39 + v65) = v66;
  v63 = *(v40 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8D0, &qword_261D137D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v46 = v41;
  v47 = v41;
  v60 = v41;
  v48 = v44;
  v49 = v62;
  v62(v43, v46, v44);
  sub_261CFD6B4();
  v65 = MEMORY[0x2667199F0](v45, &type metadata for UpdateSectionIsCollapsedAppIntent);
  v50 = v83;
  *(v83 + v63) = v65;
  v51 = v61;
  v63 = *(v61 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCFD0, &qword_261D0D0D8);
  sub_261CFF9B4();
  sub_261CFD874();
  v49(v43, v47, v48);
  sub_261CFD6C4();
  v64 = sub_261CFCA54();
  *(v50 + v63) = v64;
  v63 = *(v51 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
  sub_261CFF9B4();
  sub_261CFD874();
  v49(v43, v60, v48);
  sub_261CFD6C4();
  sub_261C6F064(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  *(v50 + v63) = sub_261CFCA54();
  v52 = v73;
  sub_261C6F0D4(v73, v50 + *(v51 + 24), type metadata accessor for SectionEntityID);
  v53 = v68;
  v54 = v81;
  sub_261C6F0D4(v68, v81, type metadata accessor for ListEntity);
  (*(v77 + 56))(v54, 0, 1, v78);
  sub_261AFB668(v54, v82, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCA14();
  sub_261AE6A40(v54, &unk_27FEDE0C0, &unk_261D02500);
  v55 = v76;
  v85 = v76;
  v86 = v75;
  v56 = v75;
  sub_261CFD104();
  sub_261CFD2E4();
  LOBYTE(v85) = 0;
  sub_261CFD2E4();
  v85 = v55;
  v86 = v56;
  sub_261CFCA14();
  v57 = v79;
  sub_261C6F0D4(v53, v79, type metadata accessor for ListEntity);
  sub_261C6F0D4(v57, v80, type metadata accessor for ListEntity);
  sub_261CFCA14();
  sub_261C6F13C(v57, type metadata accessor for ListEntity);
  sub_261C6F13C(v53, type metadata accessor for ListEntity);
  return sub_261C6F13C(v52, type metadata accessor for SectionEntityID);
}

uint64_t sub_261C68028()
{
  v67 = v0;
  if (qword_27FED9C28 != -1)
  {
LABEL_39:
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDD890);
  sub_261CFD104();
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[9];
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v66[0] = v7;
    *v6 = 136446210;
    v8 = MEMORY[0x26671C340](v5, v4);
    v10 = sub_261B879C8(v8, v9, v66);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_261AE2000, v2, v3, "[SectionEntitySectionQueryPerforming] Query sections with identifiers %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }

  v11 = v0[2];
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = v0[14];
    v15 = v0[10];
    v66[0] = MEMORY[0x277D84F90];
    sub_261B3A190(0, v12, 0);
    v13 = v66[0];
    v16 = v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = *(v15 + 72);
    do
    {
      v18 = v0[17];
      v20 = v0[11];
      v19 = v0[12];
      sub_261C6F0D4(v16, v19, type metadata accessor for SectionEntityID);
      sub_261C6FCC8(v19, v20, type metadata accessor for SectionEntityID);
      sub_261C6FCC8(v20, v18, type metadata accessor for AppEntityID);
      v66[0] = v13;
      v22 = *(v13 + 16);
      v21 = *(v13 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_261B3A190((v21 > 1), v22 + 1, 1);
        v13 = v66[0];
      }

      v23 = v0[17];
      *(v13 + 16) = v22 + 1;
      sub_261C6FCC8(v23, v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v22, type metadata accessor for AppEntityID);
      v16 += v17;
      --v12;
    }

    while (v12);
  }

  v24 = *(v13 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v26 = v0[14];
    v66[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    v27 = v13 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v28 = *(v26 + 72);
    do
    {
      v29 = v0[16];
      sub_261C6F0D4(v27, v29, type metadata accessor for AppEntityID);
      v30 = objc_allocWithZone(MEMORY[0x277D44700]);
      v31 = sub_261CFD814();
      v32 = sub_261CFFA54();
      [v30 initWithUUID:v31 entityName:v32];

      sub_261C6F13C(v29, type metadata accessor for AppEntityID);
      sub_261D00374();
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      v27 += v28;
      --v24;
    }

    while (v24);
    v25 = v66[0];
  }

  v33 = sub_261B3B11C(v25);

  v35 = v33 + 8;
  v34 = v33[8];
  v63 = v33;
  v65 = MEMORY[0x277D84F98];
  v36 = -1;
  v37 = -1 << *(v33 + 32);
  if (-v37 < 64)
  {
    v36 = ~(-1 << -v37);
  }

  v38 = v36 & v34;
  v39 = (63 - v37) >> 6;
  sub_261CFD104();
  v40 = 0;
  if (v38)
  {
    while (1)
    {
      v41 = v40;
LABEL_20:
      v42 = v0[3];
      v43 = __clz(__rbit64(v38)) | (v41 << 6);
      v44 = (v63[6] + 16 * v43);
      v45 = v44[1];
      v46 = *(v63[7] + 8 * v43);
      v66[0] = *v44;
      v66[1] = v45;
      v66[2] = v46;
      sub_261CFD104();
      sub_261CFD104();
      sub_261C68878(&v65, v66, v42);

      v38 &= v38 - 1;
      v40 = v41;
      if (!v38)
      {
        goto LABEL_17;
      }
    }
  }

  while (1)
  {
LABEL_17:
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v41 >= v39)
    {
      break;
    }

    v38 = v35[v41];
    ++v40;
    if (v38)
    {
      goto LABEL_20;
    }
  }

  v62 = *(v13 + 16);
  v64 = v65;
  if (v62)
  {
    v47 = 0;
    v48 = v0[14];
    v61 = v0[6];
    v49 = MEMORY[0x277D84F90];
    while (v47 < *(v13 + 16))
    {
      v51 = v0[3];
      v50 = v0[4];
      sub_261C6F0D4(v13 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v47, v0[15], type metadata accessor for AppEntityID);
      sub_261C69378(v64, v51, v50);
      v53 = v0[4];
      v52 = v0[5];
      sub_261C6F13C(v0[15], type metadata accessor for AppEntityID);
      if ((*(v61 + 48))(v53, 1, v52) == 1)
      {
        sub_261AE6A40(v0[4], &qword_27FEDA1E0, &unk_261D02300);
      }

      else
      {
        v55 = v0[7];
        v54 = v0[8];
        sub_261C6FCC8(v0[4], v54, type metadata accessor for SectionEntity);
        sub_261C6FCC8(v54, v55, type metadata accessor for SectionEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_261B41C94(0, v49[2] + 1, 1, v49);
        }

        v57 = v49[2];
        v56 = v49[3];
        if (v57 >= v56 >> 1)
        {
          v49 = sub_261B41C94((v56 > 1), v57 + 1, 1, v49);
        }

        v58 = v0[7];
        v49[2] = v57 + 1;
        sub_261C6FCC8(v58, v49 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v57, type metadata accessor for SectionEntity);
      }

      if (v62 == ++v47)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_38;
  }

  v49 = MEMORY[0x277D84F90];
LABEL_34:

  v59 = v0[1];

  return v59(v49);
}