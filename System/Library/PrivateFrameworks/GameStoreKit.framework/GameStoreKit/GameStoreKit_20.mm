uint64_t sub_24E807654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E8076BC(uint64_t a1)
{
  v2 = type metadata accessor for AddFriendButtonShelfIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E80777C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E80783C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24E8078F4()
{
  result = qword_27F21E698;
  if (!qword_27F21E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E698);
  }

  return result;
}

unint64_t sub_24E80794C()
{
  result = qword_27F21E6A0;
  if (!qword_27F21E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E6A0);
  }

  return result;
}

unint64_t sub_24E8079A4()
{
  result = qword_27F21E6A8;
  if (!qword_27F21E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E6A8);
  }

  return result;
}

unint64_t sub_24E8079F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6B0, &unk_24F95CCC0);
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_24E60B5D8(MEMORY[0x277D84F90]);
  *(v0 + 112) = result;
  *(v0 + 120) = 0x4072C00000000000;
  qword_27F39AD20 = v0;
  return result;
}

uint64_t sub_24E807A5C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 128) = a1;
  *(v3 + 136) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  *(v3 + 144) = swift_task_alloc();
  v5 = type metadata accessor for Game(0);
  *(v3 + 152) = v5;
  *(v3 + 160) = *(v5 - 8);
  *(v3 + 168) = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a2;
  v8 = a2[1];
  *(v3 + 176) = v6;
  *(v3 + 184) = v7;
  *(v3 + 192) = v8;
  *(v3 + 200) = *(a2 + 1);
  *(v3 + 248) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_24E807B7C, 0, 0);
}

uint64_t sub_24E807B7C()
{
  v1 = *(v0 + 248);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v8 = swift_task_alloc();
    *(v0 + 224) = v8;
    *v8 = v0;
    v8[1] = sub_24E807F34;
    v9 = *(v0 + 200);
    v10 = *(v0 + 208);
    v11 = *(v0 + 184);
    v12 = *(v0 + 192);
    v13 = *(v0 + 168);
    v14 = *(v0 + 136);

    return sub_24E808450(v13, v11, v12, v9, v10, v14);
  }

  else
  {
    if (qword_27F20FF30 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 200);
    v2 = *(v0 + 208);
    v4 = *(v0 + 184);
    v5 = *(v0 + 192);
    v6 = qword_27F39AD20;
    *(v0 + 216) = qword_27F39AD20;
    v16 = v4;

    MEMORY[0x253050C20](45, 0xE100000000000000);
    if (v2)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0x7974706D65;
    }

    if (!v2)
    {
      v2 = 0xE500000000000000;
    }

    MEMORY[0x253050C20](v7, v2);

    *(v0 + 112) = v16;
    *(v0 + 120) = v5;
    sub_24F92C7F8();

    return MEMORY[0x2822009F8](sub_24E807D3C, v6, 0);
  }
}

uint64_t sub_24E807D3C()
{
  sub_24E80B0C0(v0 + 56, *(v0 + 144));
  sub_24E6585F8(v0 + 56);

  return MEMORY[0x2822009F8](sub_24E807DB4, 0, 0);
}

uint64_t sub_24E807DB4()
{
  v1 = v0[18];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    sub_24E601704(v1, &qword_27F216FE0, &unk_24F959350);
    v2 = swift_task_alloc();
    v0[28] = v2;
    *v2 = v0;
    v2[1] = sub_24E807F34;
    v3 = v0[25];
    v4 = v0[26];
    v5 = v0[23];
    v6 = v0[24];
    v7 = v0[21];
    v8 = v0[17];

    return sub_24E808450(v7, v5, v6, v3, v4, v8);
  }

  else
  {
    v10 = v0[22];
    v11 = v0[16];
    sub_24E636644(v1, v10);
    sub_24E636644(v10, v11);
    (*(v0[20] + 56))(v0[16], 0, 1, v0[19]);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_24E807F34()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_24E8083D0;
  }

  else
  {
    v2 = sub_24E808048;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E808048()
{
  v1 = *(v0 + 168);
  v2 = *(v1 + 24);
  if (v2)
  {
    if (*(v1 + 16) == 48 && v2 == 0xE100000000000000)
    {
      goto LABEL_8;
    }

    if (sub_24F92CE08())
    {
      v1 = *(v0 + 168);
LABEL_8:
      sub_24E80BBC4();
      swift_allocError();
      *v4 = 0;
      swift_willThrow();
      sub_24E69BFE0(v1);

      v5 = *(v0 + 8);
LABEL_22:

      return v5();
    }
  }

  v6 = *(v0 + 248);
  if (v6 == 2 || (v6 & 1) == 0)
  {
    sub_24E636644(*(v0 + 168), *(v0 + 128));
    (*(*(v0 + 160) + 56))(*(v0 + 128), 0, 1, *(v0 + 152));

    v5 = *(v0 + 8);
    goto LABEL_22;
  }

  if (qword_27F20FF30 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  v11 = qword_27F39AD20;
  *(v0 + 240) = qword_27F39AD20;
  v14 = v9;

  MEMORY[0x253050C20](45, 0xE100000000000000);
  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0x7974706D65;
  }

  if (!v7)
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v12, v7);

  *(v0 + 96) = v14;
  *(v0 + 104) = v10;
  sub_24F92C7F8();

  return MEMORY[0x2822009F8](sub_24E8082A8, v11, 0);
}

uint64_t sub_24E8082A8()
{
  sub_24E80AA0C(*(v0 + 168), v0 + 16);
  sub_24E6585F8(v0 + 16);

  return MEMORY[0x2822009F8](sub_24E808320, 0, 0);
}

uint64_t sub_24E808320()
{
  sub_24E636644(v0[21], v0[16]);
  (*(v0[20] + 56))(v0[16], 0, 1, v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24E8083D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E808450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  v7 = sub_24F920358();
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6C8, &unk_24F95CD50) - 8);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8, &qword_24F953700);
  v6[31] = v8;
  v6[32] = *(v8 - 8);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v9 = sub_24F9207B8();
  v6[36] = v9;
  v6[37] = *(v9 - 8);
  v6[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3B0, &unk_24F95CD60);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C048, &qword_24F9762B0);
  v6[41] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6D0, &unk_24F95CD70);
  v6[42] = v10;
  v6[43] = *(v10 - 8);
  v6[44] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v6[45] = v11;
  v12 = *(v11 - 8);
  v6[46] = v12;
  v6[47] = *(v12 + 64);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v13 = type metadata accessor for LocalPlayerProvider(0);
  v14 = swift_task_alloc();
  v6[50] = v14;
  *v14 = v6;
  v14[1] = sub_24E80882C;

  return MEMORY[0x28217F210](v6 + 15, v13, v13);
}

uint64_t sub_24E80882C()
{

  if (v0)
  {

    v1 = sub_24E809DD8;
  }

  else
  {
    v1 = sub_24E808944;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24E808944()
{
  v1 = v0[15];
  v0[51] = v1;
  if (v1)
  {
    sub_24F92B7F8();
    v0[52] = sub_24F92B7E8();
    v3 = sub_24F92B778();

    return MEMORY[0x2822009F8](sub_24E808BD0, v3, v2);
  }

  else
  {
    if (qword_27F2113E0 != -1)
    {
      swift_once();
    }

    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E7F0);
    v5 = sub_24F9220B8();
    v6 = sub_24F92BDB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24E5DD000, v5, v6, "GamesDataIntentImplementation Failed to fetch LocalPlayerProvider from the ObjectGraph", v7, 2u);
      MEMORY[0x2530542D0](v7, -1, -1);
    }

    sub_24E80BBC4();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24E808BD0()
{
  v1 = v0[51];

  swift_getKeyPath();
  v0[16] = v1;
  sub_24E80BDF0(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[53] = *v2;
  v0[54] = v2[1];

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v4 = swift_task_alloc();
  v0[55] = v4;
  *v4 = v0;
  v4[1] = sub_24E808D40;

  return MEMORY[0x28217F228](v0 + 7, v3, v3);
}

uint64_t sub_24E808D40()
{
  *(*v1 + 448) = v0;

  if (v0)
  {

    v2 = sub_24E809238;
  }

  else
  {
    v2 = sub_24E808E5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E808E5C()
{
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[45];
  v4 = v0[41];
  v12 = v0[48];
  v13 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920538();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_24F920FC8();
  v5 = sub_24F921038();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  (*(v2 + 16))(v12, v1, v3);
  v6 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v13;
  (*(v2 + 32))(v7 + v6, v12, v3);
  v8 = MEMORY[0x277D0CE08];
  sub_24E80BDF0(&qword_27F21E6D8, MEMORY[0x277D0CE08], MEMORY[0x277D0CE20]);
  sub_24E80BDF0(&qword_27F21E6E0, v8, MEMORY[0x277D0CE10]);

  sub_24F920A28();
  v9 = swift_task_alloc();
  v0[57] = v9;
  *v9 = v0;
  v9[1] = sub_24E8090C8;
  v10 = v0[42];

  return MEMORY[0x282164EA8](v10);
}

uint64_t sub_24E8090C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[58] = a1;
  v4[59] = v1;

  (*(v3[43] + 8))(v3[44], v3[42]);
  if (v1)
  {
    v5 = sub_24E809FDC;
  }

  else
  {
    v5 = sub_24E809364;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24E809238()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E809364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[58];
  if (*(v4 + 16))
  {
    v5 = 0;
    v6 = v3[37];
    v7 = (v3[32] + 8);
    v39 = v3[21];
    v40 = (v6 + 8);
    v8 = v3[59];
    v37 = v6;
    v38 = *(v4 + 16);
    do
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
        return MEMORY[0x282164950](a1, a2, a3);
      }

      (*(v6 + 16))(v3[38], v3[58] + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, v3[36]);
      sub_24F9207A8();
      v9 = sub_24F920ED8();
      if (v8)
      {

        v41 = 0;
        v11 = 0;
      }

      else
      {
        v11 = v10;
        v41 = v9;
      }

      v12 = *v7;
      (*v7)(v3[35], v3[31]);
      sub_24F9207A8();
      v13 = sub_24F920F08();
      v15 = v14;
      v16 = v4;
      v17 = v3[18];
      v18 = v3[19];
      v19 = v13;
      v12(v3[34], v3[31]);
      if (v19 == v17 && v15 == v18)
      {

        v4 = v16;
        v20 = v38;
      }

      else
      {
        v21 = sub_24F92CE08();

        v4 = v16;
        v20 = v38;
        if ((v21 & 1) == 0)
        {

          v6 = v37;
          goto LABEL_3;
        }
      }

      v6 = v37;
      if (v39)
      {
        if (v11)
        {
          if (v41 == v3[20] && v11 == v3[21])
          {

LABEL_27:
            v32 = v3[40];
            v33 = v3[37];
            v34 = v3[38];
            v35 = v3[36];

            (*(v33 + 32))(v32, v34, v35);
            v23 = 0;
            goto LABEL_22;
          }

          v22 = sub_24F92CE08();

          if (v22)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        if (!v11)
        {
          goto LABEL_27;
        }
      }

LABEL_3:
      ++v5;
      a1 = (*v40)(v3[38], v3[36]);
      v8 = 0;
    }

    while (v20 != v5);
  }

  v23 = 1;
LABEL_22:
  v25 = v3[32];
  v24 = v3[33];
  v26 = v3[31];
  (*(v3[37] + 56))(v3[40], v23, 1, v3[36]);

  sub_24F920EE8();
  v27 = v3[5];
  v28 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6E8, &unk_24F95CDC0);
  v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v30 = swift_allocObject();
  v3[60] = v30;
  *(v30 + 16) = xmmword_24F93DE60;
  (*(v25 + 16))(v30 + v29, v24, v26);
  v31 = swift_task_alloc();
  v3[61] = v31;
  *v31 = v3;
  v31[1] = sub_24E809780;
  a1 = v30;
  a2 = v27;
  a3 = v28;

  return MEMORY[0x282164950](a1, a2, a3);
}

uint64_t sub_24E809780(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 496) = a1;
  *(v3 + 504) = v1;

  if (v1)
  {
    v4 = sub_24E80A130;
  }

  else
  {
    v4 = sub_24E8098BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24E8098BC()
{
  v1 = v0[62];
  if (!*(v1 + 16))
  {

    goto LABEL_5;
  }

  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[28];
  v5 = v0[23];
  v6 = v0[24];
  v7 = *(v0[27] + 80);
  sub_24E60169C(v1 + ((v7 + 32) & ~v7), v2, &qword_27F21E6C8, &unk_24F95CD50);

  sub_24E6009C8(v2, v3, &qword_27F21E6C8, &unk_24F95CD50);
  sub_24E60169C(v3, v4, &qword_27F21E6C8, &unk_24F95CD50);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v8 = v0[28];
    sub_24E601704(v0[30], &qword_27F21E6C8, &unk_24F95CD50);
    sub_24E601704(v8, &qword_27F21E6C8, &unk_24F95CD50);
LABEL_5:
    v9 = v0[49];
    v11 = v0[45];
    v10 = v0[46];
    v12 = v0[40];
    v14 = v0[32];
    v13 = v0[33];
    v15 = v0[31];
    sub_24E80BBC4();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();

    (*(v14 + 8))(v13, v15);
    sub_24E601704(v12, &qword_27F21E3B0, &unk_24F95CD60);
    (*(v10 + 8))(v9, v11);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v36 = v0[1];
    goto LABEL_9;
  }

  v17 = v0[63];
  v18 = v0[39];
  v19 = v0[40];
  v21 = v0[25];
  v20 = v0[26];
  v22 = v0[23];
  v23 = v0[24];
  v24 = v0[22];
  v25 = v0[17];
  (*(v23 + 32))(v20, v0[28], v22);
  (*(v23 + 16))(v21, v20, v22);
  sub_24E60169C(v19, v18, &qword_27F21E3B0, &unk_24F95CD60);

  sub_24E7EEEDC(v21, v18, v24, v25);
  v26 = v0[49];
  if (v17)
  {
    v27 = v0[46];
    v48 = v0[49];
    v49 = v0[45];
    v28 = v0[40];
    v29 = v0[32];
    v30 = v0[33];
    v32 = v0[30];
    v31 = v0[31];
    v33 = v0[26];
    v35 = v0[23];
    v34 = v0[24];

    (*(v34 + 8))(v33, v35);
    sub_24E601704(v32, &qword_27F21E6C8, &unk_24F95CD50);
    (*(v29 + 8))(v30, v31);
    sub_24E601704(v28, &qword_27F21E3B0, &unk_24F95CD60);
    (*(v27 + 8))(v48, v49);
    goto LABEL_8;
  }

  v38 = v0[46];
  v47 = v0[45];
  v46 = v0[40];
  v39 = v0[32];
  v40 = v0[33];
  v41 = v0[30];
  v42 = v0[31];
  v43 = v0[26];
  v45 = v0[23];
  v44 = v0[24];

  (*(v44 + 8))(v43, v45);
  sub_24E601704(v41, &qword_27F21E6C8, &unk_24F95CD50);
  (*(v39 + 8))(v40, v42);
  sub_24E601704(v46, &qword_27F21E3B0, &unk_24F95CD60);
  (*(v38 + 8))(v26, v47);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v36 = v0[1];
LABEL_9:

  return v36();
}

uint64_t sub_24E809DD8()
{
  if (qword_27F2113E0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E7F0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BDB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "GamesDataIntentImplementation Failed to fetch LocalPlayerProvider from the ObjectGraph", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  sub_24E80BBC4();
  swift_allocError();
  *v5 = 1;
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24E809FDC()
{
  v1 = v0[49];
  v2 = v0[45];
  v3 = v0[46];

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E80A130()
{
  v1 = v0[49];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[40];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];

  (*(v6 + 8))(v5, v7);
  sub_24E601704(v4, &qword_27F21E3B0, &unk_24F95CD60);
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24E80A2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a2;
  v4[14] = a4;
  v4[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA18, &unk_24F9762F0);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA20, qword_24F95A020);
  v4[16] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v6 = swift_task_alloc();
  v4[17] = v6;
  *v6 = v4;
  v6[1] = sub_24E80A3F4;

  return MEMORY[0x28217F228](v4 + 7, v5, v5);
}

uint64_t sub_24E80A3F4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24E80A804;
  }

  else
  {
    v2 = sub_24E80A508;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E80A508()
{
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920538();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v3 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v4 = sub_24F920728();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_24F920398();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_24E80A690;
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[13];
  v10 = v0[14];
  v11 = v0[12];

  return MEMORY[0x282164938](v11, v7, v8, 0, 1, v9, v10, v3);
}

uint64_t sub_24E80A690()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  *(*v1 + 160) = v0;

  sub_24E601704(v3, &qword_27F21DA18, &unk_24F9762F0);
  sub_24E601704(v2, &qword_27F21DA20, qword_24F95A020);
  if (v0)
  {
    v4 = sub_24E80A8E8;
  }

  else
  {
    v4 = sub_24E80A870;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24E80A804()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E80A870()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E80A8E8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E80A95C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24E807A5C(a1, a2, a3);
}

uint64_t sub_24E80AA0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6C0, &unk_24F96E1D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v7 = sub_24F9220D8();
  __swift_project_value_buffer(v7, qword_27F39E850);
  v8 = sub_24F9220B8();
  v9 = sub_24F92BD98();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_24E7620D4(1701667143, 0xE400000000000000, v15);
    _os_log_impl(&dword_24E5DD000, v8, v9, "Updating cache for %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  sub_24E65864C(a2, v15);
  sub_24E69BF7C(a1, v6);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213360, &unk_24F93AB30);
  sub_24F91F618();
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  swift_beginAccess();
  sub_24E988F54(v6, v15);
  return swift_endAccess();
}

uint64_t sub_24E80AC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6F0, &unk_24F96E1E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v7 = sub_24F9220D8();
  __swift_project_value_buffer(v7, qword_27F39E850);
  v8 = sub_24F9220B8();
  v9 = sub_24F92BD98();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_24E7620D4(0xD000000000000016, 0x800000024FA47AB0, v15);
    _os_log_impl(&dword_24E5DD000, v8, v9, "Updating cache for %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  sub_24E65864C(a2, v15);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213348, &qword_24F95CDD0);

  sub_24F91F618();
  *v6 = a1;
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  swift_beginAccess();
  sub_24E98A338(v6, v15);
  return swift_endAccess();
}

uint64_t sub_24E80AE80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6F8, &unk_24F96E1F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v7 = sub_24F9220D8();
  __swift_project_value_buffer(v7, qword_27F39E850);
  v8 = sub_24F9220B8();
  v9 = sub_24F92BD98();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_24E7620D4(0xD000000000000018, 0x800000024FA47AD0, v15);
    _os_log_impl(&dword_24E5DD000, v8, v9, "Updating cache for %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  sub_24E65864C(a2, v15);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213330, &qword_24F93AB00);

  sub_24F91F618();
  *v6 = a1;
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  swift_beginAccess();
  sub_24E98A5F4(v6, v15);
  return swift_endAccess();
}

uint64_t sub_24E80B0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  v5 = sub_24F91F648();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213360, &unk_24F93AB30);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  swift_beginAccess();
  v16 = *(v3 + 112);
  if (!*(v16 + 16))
  {
    goto LABEL_11;
  }

  v17 = sub_24E76D934(a1);
  if ((v18 & 1) == 0)
  {

LABEL_11:
    v27 = 1;
    v21 = v31;
    goto LABEL_12;
  }

  sub_24E60169C(*(v16 + 56) + *(v10 + 72) * v17, v12, &qword_27F213360, &unk_24F93AB30);

  sub_24E6009C8(v12, v15, &qword_27F213360, &unk_24F93AB30);
  sub_24F91F618();
  sub_24F91F558();
  v20 = v19;
  (*(v6 + 8))(v8, v5);
  if (v20 >= *(v3 + 120))
  {
    sub_24E601704(v15, &qword_27F213360, &unk_24F93AB30);
    goto LABEL_11;
  }

  v21 = v31;
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v22 = sub_24F9220D8();
  __swift_project_value_buffer(v22, qword_27F39E850);
  v23 = sub_24F9220B8();
  v24 = sub_24F92BD98();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_24E7620D4(1701667143, 0xE400000000000000, &v32);
    _os_log_impl(&dword_24E5DD000, v23, v24, "Loaded valid cache data for %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530542D0](v26, -1, -1);
    MEMORY[0x2530542D0](v25, -1, -1);
  }

  sub_24E69BF7C(v15, v21);
  sub_24E601704(v15, &qword_27F213360, &unk_24F93AB30);
  v27 = 0;
LABEL_12:
  v28 = type metadata accessor for Game(0);
  return (*(*(v28 - 8) + 56))(v21, v27, 1, v28);
}

uint64_t sub_24E80B490(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213348, &qword_24F95CDD0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v27 - v13);
  swift_beginAccess();
  v15 = *(v2 + 112);
  if (!*(v15 + 16))
  {
    return 0;
  }

  v16 = sub_24E76D934(a1);
  if ((v17 & 1) == 0)
  {

    return 0;
  }

  sub_24E60169C(*(v15 + 56) + *(v9 + 72) * v16, v11, &qword_27F213348, &qword_24F95CDD0);

  sub_24E6009C8(v11, v14, &qword_27F213348, &qword_24F95CDD0);
  sub_24F91F618();
  sub_24F91F558();
  v19 = v18;
  (*(v5 + 8))(v7, v4);
  if (v19 >= *(v2 + 120))
  {
    sub_24E601704(v14, &qword_27F213348, &qword_24F95CDD0);
    return 0;
  }

  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v20 = sub_24F9220D8();
  __swift_project_value_buffer(v20, qword_27F39E850);
  v21 = sub_24F9220B8();
  v22 = sub_24F92BD98();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_24E7620D4(0xD000000000000016, 0x800000024FA47AB0, &v27);
    _os_log_impl(&dword_24E5DD000, v21, v22, "Loaded valid cache data for %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x2530542D0](v24, -1, -1);
    MEMORY[0x2530542D0](v23, -1, -1);
  }

  v25 = *v14;

  sub_24E601704(v14, &qword_27F213348, &qword_24F95CDD0);
  return v25;
}

uint64_t sub_24E80B820(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213330, &qword_24F93AB00);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v27 - v13);
  swift_beginAccess();
  v15 = *(v2 + 112);
  if (!*(v15 + 16))
  {
    return 0;
  }

  v16 = sub_24E76D934(a1);
  if ((v17 & 1) == 0)
  {

    return 0;
  }

  sub_24E60169C(*(v15 + 56) + *(v9 + 72) * v16, v11, &qword_27F213330, &qword_24F93AB00);

  sub_24E6009C8(v11, v14, &qword_27F213330, &qword_24F93AB00);
  sub_24F91F618();
  sub_24F91F558();
  v19 = v18;
  (*(v5 + 8))(v7, v4);
  if (v19 >= *(v2 + 120))
  {
    sub_24E601704(v14, &qword_27F213330, &qword_24F93AB00);
    return 0;
  }

  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v20 = sub_24F9220D8();
  __swift_project_value_buffer(v20, qword_27F39E850);
  v21 = sub_24F9220B8();
  v22 = sub_24F92BD98();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_24E7620D4(0xD000000000000018, 0x800000024FA47AD0, &v27);
    _os_log_impl(&dword_24E5DD000, v21, v22, "Loaded valid cache data for %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x2530542D0](v24, -1, -1);
    MEMORY[0x2530542D0](v23, -1, -1);
  }

  v25 = *v14;

  sub_24E601704(v14, &qword_27F213330, &qword_24F93AB00);
  return v25;
}

unint64_t sub_24E80BBC4()
{
  result = qword_27F21E6B8;
  if (!qword_27F21E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E6B8);
  }

  return result;
}

uint64_t sub_24E80BC20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24E80BCF0(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24E614970;

  return sub_24E80A2C0(a1, a2, v8, v2 + v7);
}

uint64_t sub_24E80BDF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E80BE4C()
{
  result = qword_27F21E700;
  if (!qword_27F21E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E700);
  }

  return result;
}

uint64_t HostAppFieldsProvider.addTimeSensitiveMetricsFields(into:using:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5[3] = MEMORY[0x277D837D0];
  v5[0] = v2;
  v5[1] = v3;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));

  sub_24F929A28();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_24E80BF40(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5[3] = MEMORY[0x277D837D0];
  v5[0] = v2;
  v5[1] = v3;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));

  sub_24F929A28();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t FriendOutboxDataIntentImplementation.perform(_:objectGraph:)()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  *v1 = v0;
  v1[1] = sub_24E80C0D0;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000017, 0x800000024FA460C0, sub_24E80C1FC, 0, v2);
}

uint64_t sub_24E80C0D0()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_24E80C1E4;
  }

  else
  {
    v2 = sub_24E7F6F18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_24E80C1FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E708, &qword_24F95CFA8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() proxyForLocalPlayer];
  v7 = [v6 friendServicePrivate];

  v8 = sub_24F92B098();
  (*(v3 + 16))(v5, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v5, v2);
  aBlock[4] = sub_24E80CBDC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F56E000;
  aBlock[3] = &block_descriptor_20;
  v11 = _Block_copy(aBlock);

  [v7 getFriendInvitationMailboxWithType:v8 completion:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();
}

uint64_t sub_24E80C414(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = a2;
    if (qword_27F2113E8 != -1)
    {
LABEL_40:
      swift_once();
    }

    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E808);
    v5 = v2;
    v6 = sub_24F9220B8();
    v7 = sub_24F92BDB8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_24E5DD000, v6, v7, "Couldn't fetch friend outbox: %@", v8, 0xCu);
      sub_24E6D44CC(v9);
      MEMORY[0x2530542D0](v9, -1, -1);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v39[0] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E708, &qword_24F95CFA8);
    return sub_24F92B788();
  }

  if (!a1)
  {
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v35 = sub_24F9220D8();
    __swift_project_value_buffer(v35, qword_27F39E808);
    v31 = sub_24F9220B8();
    v32 = sub_24F92BDB8();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_35;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "No response when fetching friend outbox";
    goto LABEL_34;
  }

  if (!*(a1 + 16) || (v14 = sub_24E76D644(0x786F6274756FLL, 0xE600000000000000), (v15 & 1) == 0) || (sub_24E643A9C(*(a1 + 56) + 32 * v14, v39), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98, &unk_24F953660), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v30 = sub_24F9220D8();
    __swift_project_value_buffer(v30, qword_27F39E808);
    v31 = sub_24F9220B8();
    v32 = sub_24F92BDB8();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_35;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Couldn't parse friend outbox response";
LABEL_34:
    _os_log_impl(&dword_24E5DD000, v31, v32, v34, v33, 2u);
    MEMORY[0x2530542D0](v33, -1, -1);
LABEL_35:

    v39[0] = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v2 = v37;
  v16 = v37[2];
  if (!v16)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  do
  {
    v19 = v17;
    while (1)
    {
      if (v19 >= v37[2])
      {
        __break(1u);
        goto LABEL_40;
      }

      v20 = v37[v19 + 4];
      if (*(v20 + 16))
      {
        break;
      }

LABEL_14:
      if (v16 == ++v19)
      {
        goto LABEL_38;
      }
    }

    v21 = sub_24E76D644(0xD000000000000013, 0x800000024FA47AF0);
    if ((v22 & 1) == 0)
    {

      goto LABEL_14;
    }

    sub_24E643A9C(*(v20 + 56) + 32 * v21, v39);

    if ((swift_dynamicCast() & 1) == 0 || !v38)
    {
      goto LABEL_14;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_24E615CF4(0, *(v18 + 2) + 1, 1, v18);
    }

    v24 = *(v18 + 2);
    v23 = *(v18 + 3);
    v25 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      v36 = v24 + 1;
      v27 = v18;
      v28 = *(v18 + 2);
      v29 = sub_24E615CF4((v23 > 1), v24 + 1, 1, v27);
      v25 = v36;
      v24 = v28;
      v18 = v29;
    }

    v17 = v19 + 1;
    *(v18 + 2) = v25;
    v26 = &v18[16 * v24];
    *(v26 + 4) = v37;
    *(v26 + 5) = v38;
  }

  while (v16 - 1 != v19);
LABEL_38:

  v39[0] = v18;
LABEL_36:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E708, &qword_24F95CFA8);
  return sub_24F92B798();
}

uint64_t sub_24E80C900(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  *v2 = v1;
  v2[1] = sub_24E80C9EC;

  return MEMORY[0x2822008A0](v1 + 16, 0, 0, 0xD000000000000017, 0x800000024FA460C0, sub_24E80C1FC, 0, v3);
}

uint64_t sub_24E80C9EC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_24E80CB20;
  }

  else
  {
    v2 = sub_24E80CB00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E80CB48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E708, &qword_24F95CFA8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24E80CBDC(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E708, &qword_24F95CFA8);

  return sub_24E80C414(a1, a2);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t ArcadeLibraryPageIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0xD000000000000012;
  v5 = inited + 32;
  v6 = MEMORY[0x277D839B0];
  *(inited + 40) = 0x800000024FA47B10;
  v7 = MEMORY[0x277D22598];
  *(inited + 72) = v6;
  *(inited + 80) = v7;
  *(inited + 48) = v3;
  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(v5);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

uint64_t sub_24E80CDC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024FA47B10 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24E80CE54(uint64_t a1)
{
  v2 = sub_24E80D3B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E80CE90(uint64_t a1)
{
  v2 = sub_24E80D3B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArcadeLibraryPageIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E710, &qword_24F95D010);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E80D3B4();
  sub_24F92D128();
  sub_24F92CD18();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ArcadeLibraryPageIntent.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E720, &qword_24F95D018);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E80D3B4();
  sub_24F92D108();
  if (!v2)
  {
    v9 = sub_24F92CC38();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24E80D194(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E710, &qword_24F95D010);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E80D3B4();
  sub_24F92D128();
  sub_24F92CD18();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E80D2CC@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0xD000000000000012;
  v5 = inited + 32;
  v6 = MEMORY[0x277D839B0];
  *(inited + 40) = 0x800000024FA47B10;
  v7 = MEMORY[0x277D22598];
  *(inited + 72) = v6;
  *(inited + 80) = v7;
  *(inited + 48) = v3;
  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(v5);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

unint64_t sub_24E80D3B4()
{
  result = qword_27F21E718;
  if (!qword_27F21E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E718);
  }

  return result;
}

unint64_t sub_24E80D42C()
{
  result = qword_27F21E728;
  if (!qword_27F21E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E728);
  }

  return result;
}

unint64_t sub_24E80D484()
{
  result = qword_27F21E730;
  if (!qword_27F21E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E730);
  }

  return result;
}

unint64_t sub_24E80D4DC()
{
  result = qword_27F21E738[0];
  if (!qword_27F21E738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F21E738);
  }

  return result;
}

uint64_t sub_24E80D530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for LeaveChallengeAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24E80FC1C(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  sub_24E80FD94(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F95D2C8;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24E80D770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[51] = a3;
  v4[52] = a4;
  v4[49] = a1;
  v4[50] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v4[53] = v5;
  v4[54] = *(v5 - 8);
  v4[55] = swift_task_alloc();
  v6 = sub_24F920C68();
  v4[56] = v6;
  v4[57] = *(v6 - 8);
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E80D8A8, 0, 0);
}

uint64_t sub_24E80D8A8()
{
  v1 = v0[50];
  v0[60] = *v1;
  v0[61] = v1[1];
  v0[62] = sub_24F92B7F8();
  v0[63] = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E80D954, v3, v2);
}

uint64_t sub_24E80D954()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 512) = *(v0 + 360);

  return MEMORY[0x2822009F8](sub_24E80D9DC, 0, 0);
}

uint64_t sub_24E80D9DC(uint64_t a1)
{
  *(v1 + 520) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E80DA68, v3, v2);
}

uint64_t sub_24E80DA68()
{
  v1 = v0[64];

  swift_getKeyPath();
  v0[46] = v1;
  sub_24E80FF64(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[66] = *v2;
  v0[67] = v2[1];

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v4 = swift_task_alloc();
  v0[68] = v4;
  *v4 = v0;
  v4[1] = sub_24E80DBE0;

  return MEMORY[0x28217F228](v0 + 7, v3, v3);
}

uint64_t sub_24E80DBE0()
{
  *(*v1 + 552) = v0;

  if (v0)
  {

    v2 = sub_24E80E070;
  }

  else
  {
    v2 = sub_24E80DCFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E80DCFC()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E7C0, &qword_24F95D308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FA0, &unk_24F94D8A0);
  v2 = swift_allocObject();
  v0[70] = v2;
  *(v2 + 16) = xmmword_24F93DE60;

  sub_24F920FF8();
  sub_24F920FC8();
  v3 = swift_task_alloc();
  v0[71] = v3;
  *v3 = v0;
  v3[1] = sub_24E80DED4;
  v4 = v0[55];

  return MEMORY[0x282165190](v2, v4, v1, v6);
}

uint64_t sub_24E80DED4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 440);
  v5 = *(*v2 + 432);
  v6 = *(*v2 + 424);
  *(v3 + 576) = a1;
  *(v3 + 584) = v1;

  (*(v5 + 8))(v4, v6);

  if (v1)
  {
    v7 = sub_24E80F25C;
  }

  else
  {
    v7 = sub_24E80E284;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24E80E070()
{
  v1 = *(v0 + 552);
  *(v0 + 696) = v1;
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "LeaveChallengeActionImplementation leave challenge failed: %@", v6, 0xCu);
    sub_24E6D44CC(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = *(v0 + 416);
  v11 = *(v0 + 400);

  sub_24E7CBB7C(v11 + 72, v0 + 136);
  sub_24E612C80((v0 + 136), v0 + 96);
  v12 = swift_task_alloc();
  *(v0 + 704) = v12;
  v15 = type metadata accessor for LeaveChallengeActionImplementation(0, v10, v13, v14);
  WitnessTable = swift_getWitnessTable();
  *v12 = v0;
  v12[1] = sub_24E80EEAC;
  v17 = *(v0 + 408);
  v18 = *(v0 + 392);

  return sub_24F1487B0(v18, v0 + 96, v17, v15, WitnessTable);
}

uint64_t sub_24E80E284()
{
  v42 = v0;
  v1 = *(v0 + 576);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 456);
    v3 = *(v2 + 16);
    v3(*(v0 + 472), v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), *(v0 + 448));

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 464);
    v5 = *(v0 + 472);
    v6 = *(v0 + 448);
    v7 = sub_24F9220D8();
    __swift_project_value_buffer(v7, qword_27F39E778);
    v3(v4, v5, v6);

    v8 = sub_24F9220B8();
    v9 = sub_24F92BD98();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 480);
      v10 = *(v0 + 488);
      v13 = *(v0 + 456);
      v12 = *(v0 + 464);
      v40 = *(v0 + 448);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v41 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_24E7620D4(v11, v10, &v41);
      *(v14 + 12) = 2080;
      v16 = sub_24F920C58();
      v18 = v17;
      v19 = *(v13 + 8);
      v19(v12, v40);
      v20 = sub_24E7620D4(v16, v18, &v41);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_24E5DD000, v8, v9, "LeaveChallengeActionImplementation left challenge %s, result: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v15, -1, -1);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    else
    {
      v36 = *(v0 + 456);
      v35 = *(v0 + 464);
      v37 = *(v0 + 448);

      v19 = *(v36 + 8);
      v19(v35, v37);
    }

    *(v0 + 592) = v19;
    refreshed = type metadata accessor for FeedRefreshNotifier(0);
    v39 = swift_task_alloc();
    *(v0 + 600) = v39;
    *v39 = v0;
    v39[1] = sub_24E80E704;

    return MEMORY[0x28217F228](v0 + 376, refreshed, refreshed);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v21 = sub_24F9220D8();
    __swift_project_value_buffer(v21, qword_27F39E778);
    v22 = sub_24F9220B8();
    v23 = sub_24F92BDB8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_24E5DD000, v22, v23, "LeaveChallengeActionImplementation leave challenge failed to provide a result", v24, 2u);
      MEMORY[0x2530542D0](v24, -1, -1);
    }

    v25 = *(v0 + 416);
    v26 = *(v0 + 400);

    sub_24E7CBB7C(v26 + 72, v0 + 296);
    sub_24E612C80((v0 + 296), v0 + 256);
    v27 = swift_task_alloc();
    *(v0 + 680) = v27;
    v30 = type metadata accessor for LeaveChallengeActionImplementation(0, v25, v28, v29);
    WitnessTable = swift_getWitnessTable();
    *v27 = v0;
    v27[1] = sub_24E80ED50;
    v32 = *(v0 + 408);
    v33 = *(v0 + 392);

    return sub_24F1487B0(v33, v0 + 256, v32, v30, WitnessTable);
  }
}

uint64_t sub_24E80E704()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_24E80F478;
  }

  else
  {
    v2 = sub_24E80E818;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E80E818()
{
  v0[77] = v0[47];
  sub_24F03AC94();
  updated = type metadata accessor for ChallengesUpdateNotifier(0);
  v2 = swift_task_alloc();
  v0[78] = v2;
  *v2 = v0;
  v2[1] = sub_24E80E8D4;

  return MEMORY[0x28217F228](v0 + 48, updated, updated);
}

uint64_t sub_24E80E8D4()
{
  *(*v1 + 632) = v0;

  if (v0)
  {
    v2 = sub_24E80F6A8;
  }

  else
  {
    v2 = sub_24E80E9E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E80E9E8()
{
  v1 = v0[50];
  v2 = v0[48];
  v0[80] = v2;
  v0[81] = *(v1 + 16);
  v0[82] = *(v1 + 24);
  return MEMORY[0x2822009F8](sub_24E80EA1C, v2, 0);
}

uint64_t sub_24E80EA1C()
{
  sub_24F5EBDCC(v0[60], v0[61], v0[81], v0[82]);

  return MEMORY[0x2822009F8](sub_24E80EA98, 0, 0);
}

uint64_t sub_24E80EA98()
{
  v1 = *(v0 + 416);
  sub_24E7CBB7C(*(v0 + 400) + 32, v0 + 216);
  sub_24E612C80((v0 + 216), v0 + 176);
  v2 = swift_task_alloc();
  *(v0 + 664) = v2;
  v5 = type metadata accessor for LeaveChallengeActionImplementation(0, v1, v3, v4);
  WitnessTable = swift_getWitnessTable();
  *v2 = v0;
  v2[1] = sub_24E80EB88;
  v7 = *(v0 + 408);
  v8 = *(v0 + 392);

  return sub_24F1487B0(v8, v0 + 176, v7, v5, WitnessTable);
}

uint64_t sub_24E80EB88()
{
  v2 = *v1;
  *(v2 + 672) = v0;

  __swift_destroy_boxed_opaque_existential_1((v2 + 176));
  if (v0)
  {
    v3 = sub_24E80F8E8;
  }

  else
  {
    v3 = sub_24E80ECA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24E80ECA4()
{
  v1 = v0[74];
  v2 = v0[59];
  v3 = v0[56];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E80ED50()
{
  v2 = *v1;
  v2[86] = v0;

  __swift_destroy_boxed_opaque_existential_1(v2 + 32);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24E80F048, 0, 0);
  }

  else
  {

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_24E80EEAC()
{
  v2 = *v1;
  *(v2 + 712) = v0;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  if (v0)
  {
    v3 = sub_24E80FB28;
  }

  else
  {
    v3 = sub_24E80EFC8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24E80EFC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E80F048()
{
  v1 = *(v0 + 688);
  *(v0 + 696) = v1;
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "LeaveChallengeActionImplementation leave challenge failed: %@", v6, 0xCu);
    sub_24E6D44CC(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = *(v0 + 416);
  v11 = *(v0 + 400);

  sub_24E7CBB7C(v11 + 72, v0 + 136);
  sub_24E612C80((v0 + 136), v0 + 96);
  v12 = swift_task_alloc();
  *(v0 + 704) = v12;
  v15 = type metadata accessor for LeaveChallengeActionImplementation(0, v10, v13, v14);
  WitnessTable = swift_getWitnessTable();
  *v12 = v0;
  v12[1] = sub_24E80EEAC;
  v17 = *(v0 + 408);
  v18 = *(v0 + 392);

  return sub_24F1487B0(v18, v0 + 96, v17, v15, WitnessTable);
}

uint64_t sub_24E80F25C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 584);
  *(v0 + 696) = v1;
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "LeaveChallengeActionImplementation leave challenge failed: %@", v6, 0xCu);
    sub_24E6D44CC(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = *(v0 + 416);
  v11 = *(v0 + 400);

  sub_24E7CBB7C(v11 + 72, v0 + 136);
  sub_24E612C80((v0 + 136), v0 + 96);
  v12 = swift_task_alloc();
  *(v0 + 704) = v12;
  v15 = type metadata accessor for LeaveChallengeActionImplementation(0, v10, v13, v14);
  WitnessTable = swift_getWitnessTable();
  *v12 = v0;
  v12[1] = sub_24E80EEAC;
  v17 = *(v0 + 408);
  v18 = *(v0 + 392);

  return sub_24F1487B0(v18, v0 + 96, v17, v15, WitnessTable);
}

uint64_t sub_24E80F478()
{
  (*(v0 + 592))(*(v0 + 472), *(v0 + 448));
  v1 = *(v0 + 608);
  *(v0 + 696) = v1;
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "LeaveChallengeActionImplementation leave challenge failed: %@", v6, 0xCu);
    sub_24E6D44CC(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = *(v0 + 416);
  v11 = *(v0 + 400);

  sub_24E7CBB7C(v11 + 72, v0 + 136);
  sub_24E612C80((v0 + 136), v0 + 96);
  v12 = swift_task_alloc();
  *(v0 + 704) = v12;
  v15 = type metadata accessor for LeaveChallengeActionImplementation(0, v10, v13, v14);
  WitnessTable = swift_getWitnessTable();
  *v12 = v0;
  v12[1] = sub_24E80EEAC;
  v17 = *(v0 + 408);
  v18 = *(v0 + 392);

  return sub_24F1487B0(v18, v0 + 96, v17, v15, WitnessTable);
}

uint64_t sub_24E80F6A8()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 472);
  v3 = *(v0 + 448);

  v1(v2, v3);
  v4 = *(v0 + 632);
  *(v0 + 696) = v4;
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v5 = sub_24F9220D8();
  __swift_project_value_buffer(v5, qword_27F39E778);
  v6 = v4;
  v7 = sub_24F9220B8();
  v8 = sub_24F92BDB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_24E5DD000, v7, v8, "LeaveChallengeActionImplementation leave challenge failed: %@", v9, 0xCu);
    sub_24E6D44CC(v10);
    MEMORY[0x2530542D0](v10, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  v13 = *(v0 + 416);
  v14 = *(v0 + 400);

  sub_24E7CBB7C(v14 + 72, v0 + 136);
  sub_24E612C80((v0 + 136), v0 + 96);
  v15 = swift_task_alloc();
  *(v0 + 704) = v15;
  v18 = type metadata accessor for LeaveChallengeActionImplementation(0, v13, v16, v17);
  WitnessTable = swift_getWitnessTable();
  *v15 = v0;
  v15[1] = sub_24E80EEAC;
  v20 = *(v0 + 408);
  v21 = *(v0 + 392);

  return sub_24F1487B0(v21, v0 + 96, v20, v18, WitnessTable);
}

uint64_t sub_24E80F8E8()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 472);
  v3 = *(v0 + 448);

  v1(v2, v3);
  v4 = *(v0 + 672);
  *(v0 + 696) = v4;
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v5 = sub_24F9220D8();
  __swift_project_value_buffer(v5, qword_27F39E778);
  v6 = v4;
  v7 = sub_24F9220B8();
  v8 = sub_24F92BDB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_24E5DD000, v7, v8, "LeaveChallengeActionImplementation leave challenge failed: %@", v9, 0xCu);
    sub_24E6D44CC(v10);
    MEMORY[0x2530542D0](v10, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  v13 = *(v0 + 416);
  v14 = *(v0 + 400);

  sub_24E7CBB7C(v14 + 72, v0 + 136);
  sub_24E612C80((v0 + 136), v0 + 96);
  v15 = swift_task_alloc();
  *(v0 + 704) = v15;
  v18 = type metadata accessor for LeaveChallengeActionImplementation(0, v13, v16, v17);
  WitnessTable = swift_getWitnessTable();
  *v15 = v0;
  v15[1] = sub_24E80EEAC;
  v20 = *(v0 + 408);
  v21 = *(v0 + 392);

  return sub_24F1487B0(v21, v0 + 96, v20, v18, WitnessTable);
}

uint64_t sub_24E80FB28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E80FC1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaveChallengeAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E80FC80()
{
  v1 = (type metadata accessor for LeaveChallengeAction(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 24) & ~*(*v1 + 80));

  __swift_destroy_boxed_opaque_existential_1((v2 + 32));
  __swift_destroy_boxed_opaque_existential_1((v2 + 72));
  v3 = v1[10];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24E80FD94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaveChallengeAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E80FDF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for LeaveChallengeAction(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24E80D770(a1, v1 + v6, v7, v4);
}

uint64_t sub_24E80FF14()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E80FF64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_24E80FFAC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213688, &unk_24F93AE90);
  result = sub_24F92CB28();
  v3 = 0;
  v29 = result;
  v30 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v28 = result + 8;
  if ((v8 & v4) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v32 = 16 * v14;
      v15 = *(v30 + 56);
      v16 = (*(v30 + 48) + 16 * v14);
      v17 = v16[1];
      v33 = *v16;
      sub_24E615E00(v15 + 40 * v14, v37);
      v31 = v37[4];
      v18 = __swift_project_boxed_opaque_existential_1(v37, v37[3]);
      v19 = MEMORY[0x28223BE20](v18);
      (*(v21 + 16))(&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);

      sub_24F92A138();
      __swift_destroy_boxed_opaque_existential_1(v37);
      result = v29;
      *(v28 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v22 = (result[6] + v32);
      *v22 = v33;
      v22[1] = v17;
      v23 = result[7] + 40 * v14;
      v24 = v35;
      *v23 = v34;
      *(v23 + 16) = v24;
      *(v23 + 32) = v36;
      v25 = result[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      result[2] = v27;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_24E8101FC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[1];
  v30 = *v2;
  v31[0] = v9;
  *(v31 + 9) = *(v2 + 25);
  sub_24F91E9E8();
  swift_allocObject();
  sub_24F91E9D8();
  sub_24E811244();
  v10 = sub_24F91E9C8();
  if (v3)
  {
  }

  else
  {
    v12 = v10;
    v13 = v11;
    v27 = a1;
    sub_24F91E9B8();
    swift_allocObject();
    sub_24F91E9A8();
    sub_24E8111FC(&qword_27F21E7D0, MEMORY[0x277D21B10], MEMORY[0x277D21B20]);
    sub_24F91E998();
    v26 = v6;

    sub_24F928368();
    v14 = v29;
    if (v29)
    {
      v15 = __swift_project_boxed_opaque_existential_1(v28, v29);
      v25[1] = v25;
      v16 = *(v14 - 8);
      v17 = MEMORY[0x28223BE20](v15);
      v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v19, v17);
      v20 = sub_24F92CDE8();
      v21 = v14;
      v14 = v20;
      (*(v16 + 8))(v19, v21);
      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    v22 = [objc_opt_self() valueWithObject:v14 inContext:v27];
    swift_unknownObjectRelease();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
    v24 = v32;
    v32[3] = v23;
    v24[4] = sub_24E6360E0();

    sub_24E627880(v12, v13);
    *v24 = v22;
    (*(v26 + 8))(v8, v5);
  }
}

void sub_24E8105AC(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v32 = a1;
  v33 = a6;
  v11 = sub_24F928388();
  v34 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v37 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91E9E8();
  swift_allocObject();
  v13 = sub_24F91E9D8();
  a2(0);
  sub_24E8111FC(a3, a4, a5);
  v14 = sub_24F91E9C8();
  if (v6)
  {
  }

  else
  {
    v16 = v14;
    v17 = v15;
    sub_24F91E9B8();
    swift_allocObject();
    sub_24F91E9A8();
    sub_24E8111FC(&qword_27F21E7D0, MEMORY[0x277D21B10], MEMORY[0x277D21B20]);
    v18 = v37;
    sub_24F91E998();

    sub_24F928368();
    v19 = v36;
    if (v36)
    {
      v20 = __swift_project_boxed_opaque_existential_1(v35, v36);
      v31[1] = v31;
      v31[2] = v13;
      v21 = *(v19 - 8);
      v22 = MEMORY[0x28223BE20](v20);
      v24 = v18;
      v25 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v25, v22);
      v26 = sub_24F92CDE8();
      v27 = v25;
      v18 = v24;
      (*(v21 + 8))(v27, v19);
      __swift_destroy_boxed_opaque_existential_1(v35);
    }

    else
    {
      v26 = 0;
    }

    v28 = [objc_opt_self() valueWithObject:v26 inContext:v32];
    swift_unknownObjectRelease();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
    v30 = v33;
    v33[3] = v29;
    v30[4] = sub_24E6360E0();

    sub_24E627880(v16, v17);
    *v30 = v28;
    (*(v34 + 8))(v18, v11);
  }
}

unint64_t CGFloat.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_24F92CF68();
  v6 = [objc_opt_self() valueWithObject:v5 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  result = sub_24E6360E0();
  a2[4] = result;
  *a2 = v6;
  return result;
}

unint64_t sub_24E810A88@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v5 = sub_24F92CF68();
  v6 = [objc_opt_self() valueWithObject:v5 inContext:a1];
  swift_unknownObjectRelease();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  result = sub_24E6360E0();
  a3[4] = result;
  *a3 = v6;
  return result;
}

unint64_t Float.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_24F92CF68();
  v6 = [objc_opt_self() valueWithObject:v5 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  result = sub_24E6360E0();
  a2[4] = result;
  *a2 = v6;
  return result;
}

unint64_t sub_24E810BDC@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v5 = sub_24F92CF68();
  v6 = [objc_opt_self() valueWithObject:v5 inContext:a1];
  swift_unknownObjectRelease();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  result = sub_24E6360E0();
  a3[4] = result;
  *a3 = v6;
  return result;
}

unint64_t sub_24E810CDC@<X0>(uint64_t a1@<X0>, void *a4@<X8>)
{
  v6 = sub_24F92CF68();
  v7 = [objc_opt_self() valueWithObject:v6 inContext:a1];
  swift_unknownObjectRelease();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  result = sub_24E6360E0();
  a4[4] = result;
  *a4 = v7;
  return result;
}

unint64_t sub_24E810D84@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v5 = sub_24F92CF68();
  v6 = [objc_opt_self() valueWithObject:v5 inContext:a1];
  swift_unknownObjectRelease();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  result = sub_24E6360E0();
  a3[4] = result;
  *a3 = v6;
  return result;
}

unint64_t Data.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  sub_24E71CBC0(a2, a3);
  v6 = sub_24F92CF68();
  v7 = [objc_opt_self() valueWithObject:v6 inContext:{a1, a2, a3}];
  swift_unknownObjectRelease();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  result = sub_24E6360E0();
  a4[4] = result;
  *a4 = v7;
  return result;
}

unint64_t sub_24E810EE4@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  sub_24E71CBC0(*v3, *(v3 + 8));
  v6 = sub_24F92CF68();
  v7 = [objc_opt_self() valueWithObject:v6 inContext:a1];
  swift_unknownObjectRelease();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  result = sub_24E6360E0();
  a3[4] = result;
  *a3 = v7;
  return result;
}

unint64_t JSONObject.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_24F928368();
  v5 = v15;
  if (v15)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x28223BE20](v6);
    v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_24F92CDE8();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_opt_self() valueWithObject:v11 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  result = sub_24E6360E0();
  a2[4] = result;
  *a2 = v12;
  return result;
}

uint64_t sub_24E8111FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E811244()
{
  result = qword_27F21E7E0;
  if (!qword_27F21E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E7E0);
  }

  return result;
}

uint64_t sub_24E811324()
{
  if (qword_27F20FF70 != -1)
  {
    swift_once();
  }

  v6 = xmmword_27F21E828;
  v7 = *algn_27F21E838;
  v8 = xmmword_27F21E848;
  v9 = *&byte_27F21E858;
  sub_24E63D388(&v6, &v5);
  v0 = sub_24F927618();
  if (qword_27F211948 != -1)
  {
    v3 = v0;
    v4 = v1;
    swift_once();
    v1 = v4;
    v0 = v3;
  }

  xmmword_27F39AD28 = v6;
  unk_27F39AD38 = v7;
  xmmword_27F39AD48 = v8;
  unk_27F39AD58 = v9;
  xmmword_27F39AD68 = xmmword_24F95D4C0;
  qword_27F39AD78 = v0;
  unk_27F39AD80 = v1;
  xmmword_27F39AD88 = xmmword_27F2543E0;
  qword_27F39AD98 = qword_27F2543F0;
  qword_27F39ADA0 = qword_27F2543F8;
}

uint64_t sub_24E811434()
{
  if (qword_27F20FF78 != -1)
  {
    swift_once();
  }

  v6 = xmmword_27F21E868;
  v7 = *algn_27F21E878;
  v8 = xmmword_27F21E888;
  v9 = *&byte_27F21E898;
  sub_24E63D388(&v6, &v5);
  v0 = sub_24F927618();
  if (qword_27F211948 != -1)
  {
    v3 = v0;
    v4 = v1;
    swift_once();
    v1 = v4;
    v0 = v3;
  }

  xmmword_27F39ADA8 = v6;
  unk_27F39ADB8 = v7;
  xmmword_27F39ADC8 = v8;
  unk_27F39ADD8 = v9;
  xmmword_27F39ADE8 = xmmword_24F95D4C0;
  qword_27F39ADF8 = v0;
  unk_27F39AE00 = v1;
  xmmword_27F39AE08 = xmmword_27F2543E0;
  qword_27F39AE18 = qword_27F2543F0;
  qword_27F39AE20 = qword_27F2543F8;
}

uint64_t sub_24E811544()
{
  if (qword_27F20FF80 != -1)
  {
    swift_once();
  }

  v6 = xmmword_27F21E8A8;
  v7 = *algn_27F21E8B8;
  v8 = xmmword_27F21E8C8;
  v9 = *&byte_27F21E8D8;
  sub_24E63D388(&v6, &v5);
  v0 = sub_24F927618();
  if (qword_27F211958 != -1)
  {
    v3 = v0;
    v4 = v1;
    swift_once();
    v1 = v4;
    v0 = v3;
  }

  xmmword_27F39AE28 = v6;
  unk_27F39AE38 = v7;
  xmmword_27F39AE48 = v8;
  unk_27F39AE58 = v9;
  xmmword_27F39AE68 = 0uLL;
  qword_27F39AE78 = v0;
  unk_27F39AE80 = v1;
  xmmword_27F39AE88 = xmmword_27F254420;
  qword_27F39AE98 = qword_27F254430;
  qword_27F39AEA0 = qword_27F254438;
}

uint64_t sub_24E81164C()
{
  if (qword_27F20FF88 != -1)
  {
    swift_once();
  }

  v6 = xmmword_27F21E8E8;
  v7 = *algn_27F21E8F8;
  v8 = xmmword_27F21E908;
  v9 = *&byte_27F21E918;
  sub_24E63D388(&v6, &v5);
  v0 = sub_24F927618();
  if (qword_27F211958 != -1)
  {
    v3 = v0;
    v4 = v1;
    swift_once();
    v1 = v4;
    v0 = v3;
  }

  xmmword_27F39AEA8 = v6;
  unk_27F39AEB8 = v7;
  xmmword_27F39AEC8 = v8;
  unk_27F39AED8 = v9;
  xmmword_27F39AEE8 = xmmword_24F95D4D0;
  qword_27F39AEF8 = v0;
  unk_27F39AF00 = v1;
  xmmword_27F39AF08 = xmmword_27F254420;
  qword_27F39AF18 = qword_27F254430;
  qword_27F39AF20 = qword_27F254438;
}

uint64_t sub_24E81175C()
{
  if (qword_27F20FF88 != -1)
  {
    swift_once();
  }

  v6 = xmmword_27F21E8E8;
  v7 = *algn_27F21E8F8;
  v8 = xmmword_27F21E908;
  v9 = *&byte_27F21E918;
  sub_24E63D388(&v6, &v5);
  v0 = sub_24F927618();
  if (qword_27F211958 != -1)
  {
    v3 = v0;
    v4 = v1;
    swift_once();
    v1 = v4;
    v0 = v3;
  }

  xmmword_27F39AF28 = v6;
  unk_27F39AF38 = v7;
  xmmword_27F39AF48 = v8;
  unk_27F39AF58 = v9;
  xmmword_27F39AF68 = xmmword_24F95D4E0;
  qword_27F39AF78 = v0;
  unk_27F39AF80 = v1;
  xmmword_27F39AF88 = xmmword_27F254420;
  qword_27F39AF98 = qword_27F254430;
  qword_27F39AFA0 = qword_27F254438;
}

uint64_t sub_24E81186C()
{
  if (qword_27F20FF68 != -1)
  {
    swift_once();
  }

  v6 = xmmword_27F21E7E8;
  v7 = *algn_27F21E7F8;
  v8 = xmmword_27F21E808;
  v9 = *&byte_27F21E818;
  sub_24E63D388(&v6, &v5);
  v0 = sub_24F927618();
  if (qword_27F211948 != -1)
  {
    v3 = v0;
    v4 = v1;
    swift_once();
    v1 = v4;
    v0 = v3;
  }

  xmmword_27F39AFA8 = v6;
  unk_27F39AFB8 = v7;
  xmmword_27F39AFC8 = v8;
  unk_27F39AFD8 = v9;
  xmmword_27F39AFE8 = 0uLL;
  qword_27F39AFF8 = v0;
  unk_27F39B000 = v1;
  xmmword_27F39B008 = xmmword_27F2543E0;
  qword_27F39B018 = qword_27F2543F0;
  qword_27F39B020 = qword_27F2543F8;
}

uint64_t sub_24E811974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v191 = a4;
  v200 = a6;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10, &unk_24F94BD90);
  MEMORY[0x28223BE20](v173);
  v165 = (v151 - v10);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A18, &unk_24F93E670);
  MEMORY[0x28223BE20](v171);
  v172 = v151 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v12);
  v180 = v151 - v13;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A28, &unk_24F93E680);
  MEMORY[0x28223BE20](v189);
  v174 = v151 - v14;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A30, &unk_24F94D970);
  MEMORY[0x28223BE20](v186);
  v188 = v151 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A38, &unk_24F93E690);
  MEMORY[0x28223BE20](v16);
  v190 = v151 - v17;
  v187 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v187);
  v176 = v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v177 = v151 - v20;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E930, &qword_24F95D570);
  MEMORY[0x28223BE20](v167);
  v168 = v151 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  v158 = *(v22 - 8);
  MEMORY[0x28223BE20](v22 - 8);
  v164 = v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v159 = v151 - v25;
  v157 = v26;
  MEMORY[0x28223BE20](v27);
  v163 = v151 - v28;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A50, &qword_24F949E80);
  MEMORY[0x28223BE20](v160);
  v178 = (v151 - v29);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E938, &qword_24F95D578);
  MEMORY[0x28223BE20](v166);
  v161 = v151 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v162 = v151 - v32;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E940, &qword_24F95D580);
  MEMORY[0x28223BE20](v185);
  v169 = v151 - v33;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E948, &qword_24F95D588);
  MEMORY[0x28223BE20](v197);
  v35 = v151 - v34;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E950, &qword_24F95D590);
  MEMORY[0x28223BE20](v193);
  v195 = v151 - v36;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E958, &qword_24F95D598);
  MEMORY[0x28223BE20](v182);
  v183 = v151 - v37;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E960, &qword_24F95D5A0);
  MEMORY[0x28223BE20](v194);
  v184 = v151 - v38;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E968, &qword_24F95D5A8);
  MEMORY[0x28223BE20](v198);
  v196 = v151 - v39;
  v181 = type metadata accessor for FriendsArePlayingCardConfiguration.VisualView(0);
  MEMORY[0x28223BE20](v181);
  v175 = v151 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E970, &qword_24F95D5B0);
  v201 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v43 = v151 - v42;
  swift_retain_n();
  LODWORD(v199) = a1;
  v192 = a2;
  if (sub_24E92D030(a1, a2, a3))
  {
    v44 = a5;
    v152 = v41;
    v153 = v35;
    v170 = v12;
    v179 = v43;
    v151[1] = v16;
    v156 = a3;
    if (a3 > 2u)
    {
      if (a3 == 3)
      {
        if (qword_27F20FF40 != -1)
        {
          swift_once();
        }

        v45 = &xmmword_27F39ADA8;
      }

      else if (a3 == 4)
      {
        if (qword_27F20FF38 != -1)
        {
          swift_once();
        }

        v45 = &xmmword_27F39AD28;
      }

      else
      {
        if (qword_27F20FF60 != -1)
        {
          swift_once();
        }

        v45 = &xmmword_27F39AFA8;
      }
    }

    else
    {
      if (!a3)
      {
        if (qword_27F20FF50 != -1)
        {
          swift_once();
        }

        *v222 = xmmword_27F39AF08;
        *&v222[16] = *&qword_27F39AF18;
        v220 = xmmword_27F39AEE8;
        v221 = *&qword_27F39AEF8;
        v218[2] = xmmword_27F39AEC8;
        v219 = unk_27F39AED8;
        v218[0] = xmmword_27F39AEA8;
        v218[1] = unk_27F39AEB8;
LABEL_29:
        v53 = *v222;
        v54 = *&v222[16];
        v55 = v221;
        v56 = *(&v220 + 1);
        v57 = v220;
        v58 = *(&v219 + 1);
        v59 = v219;
        v60 = *(&v218[2] + 1);
        v154 = *(v218 + 8);
        v155 = *(&v218[1] + 8);
        v61 = *&v218[0];
        sub_24E81768C(v218, &v210);
        *&v224[0] = v61;
        *(v224 + 8) = v154;
        *(&v224[1] + 8) = v155;
        *(&v224[2] + 1) = v60;
        LOBYTE(v225) = v59;
        *(&v225 + 1) = v58;
        v234 = v224[0];
        v235 = v224[1];
        v236 = v224[2];
        v237 = v225;
        v226 = v224[0];
        v227 = v224[1];
        v228 = v224[2];
        v229 = v225;
        *&v230 = v57;
        *(&v230 + 1) = v56;
        v231 = v55;
        v232 = v53;
        v233 = v54;
        v62 = v199;
        if (v199 > 0xAu)
        {
          v63 = v179;
          if (v199 != 11)
          {
            if (v199 == 12)
            {

              v66 = v156;
              if (v156 > 1u)
              {
                v90 = sub_24F926C98();
                v91 = *(type metadata accessor for FriendsArePlayingCard(0) + 36);
                v92 = sub_24F9289E8();
                v93 = *(v92 - 8);
                v94 = v192 + v91;
                v95 = v164;
                (*(v93 + 16))(v164, v94, v92);
                (*(v93 + 56))(v95, 0, 1, v92);
                v96 = v165;
                sub_24F6C4E24(v95, v66 != 5, v90, v165);

                sub_24E601704(v95, &qword_27F213FB0, &qword_24F93E6B0);
                sub_24E60169C(v96, v172, &qword_27F214A10, &unk_24F94BD90);
                swift_storeEnumTagMultiPayload();
                sub_24E8180A8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                sub_24E63D150();
                v68 = v174;
                sub_24F924E28();
                sub_24E601704(v96, &qword_27F214A10, &unk_24F94BD90);
              }

              else
              {
                v67 = v180;
                sub_24E9239F0(0xC, v192, v156, v191, a5, v180);
                sub_24E60169C(v67, v172, &qword_27F214A20, &unk_24F94D670);
                swift_storeEnumTagMultiPayload();
                sub_24E8180A8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                sub_24E63D150();
                v68 = v174;
                sub_24F924E28();
                sub_24E601704(v67, &qword_27F214A20, &unk_24F94D670);
              }

              v65 = v200;
              sub_24E60169C(v68, v188, &qword_27F214A28, &unk_24F93E680);
              swift_storeEnumTagMultiPayload();
              sub_24E81780C(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
              sub_24E63C1D8();
              v97 = v190;
              sub_24F924E28();
              sub_24E60169C(v97, v195, &qword_27F214A38, &unk_24F93E690);
              swift_storeEnumTagMultiPayload();
              sub_24E817750();
              sub_24E8179C4();
              v98 = v196;
              sub_24F924E28();
              sub_24E601704(v97, &qword_27F214A38, &unk_24F93E690);
              sub_24E60169C(v98, v153, &qword_27F21E968, &qword_24F95D5A8);
              swift_storeEnumTagMultiPayload();
              sub_24E8176C4();
              sub_24E8180A8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              v63 = v179;
              sub_24F924E28();
              sub_24E817A80(&v226);
              sub_24E601704(v98, &qword_27F21E968, &qword_24F95D5A8);
              sub_24E601704(v68, &qword_27F214A28, &unk_24F93E680);
              goto LABEL_56;
            }

LABEL_38:

            v69 = v180;
            sub_24E9239F0(v62, v192, v156, v191, a5, v180);
            sub_24E60169C(v69, v153, &qword_27F214A20, &unk_24F94D670);
            swift_storeEnumTagMultiPayload();
            sub_24E8176C4();
            sub_24E8180A8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
            sub_24F924E28();
            sub_24E817A80(&v226);
            sub_24E601704(v69, &qword_27F214A20, &unk_24F94D670);
LABEL_42:
            v65 = v200;
LABEL_56:
            sub_24E6009C8(v63, v65, &qword_27F21E970, &qword_24F95D5B0);
            return (*(v201 + 56))(v65, 0, 1, v152);
          }

          v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
          v86 = v176;
          (*(*(v85 - 8) + 56))(v176, dword_24F95D8D4[v156], 5, v85);
          v87 = v177;
          sub_24E818804(v86, v177, type metadata accessor for CardContentBackgroundStyle);
          sub_24E817ABC(v87, v188, type metadata accessor for CardContentBackgroundStyle);
          swift_storeEnumTagMultiPayload();
          sub_24E81780C(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
          sub_24E63C1D8();
          v88 = v190;
          sub_24F924E28();
          sub_24E60169C(v88, v195, &qword_27F214A38, &unk_24F93E690);
          swift_storeEnumTagMultiPayload();
          sub_24E817750();
          sub_24E8179C4();
          v89 = v196;
          sub_24F924E28();
          sub_24E601704(v88, &qword_27F214A38, &unk_24F93E690);
          sub_24E60169C(v89, v153, &qword_27F21E968, &qword_24F95D5A8);
          swift_storeEnumTagMultiPayload();
          sub_24E8176C4();
          sub_24E8180A8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          sub_24F924E28();
          sub_24E817A80(&v226);
          sub_24E601704(v89, &qword_27F21E968, &qword_24F95D5A8);
          v83 = type metadata accessor for CardContentBackgroundStyle;
          v84 = v87;
        }

        else
        {
          v63 = v179;
          if (v199 != 2)
          {
            if (v199 == 3)
            {

              if (v156)
              {
                swift_storeEnumTagMultiPayload();
                sub_24E8178E0();
                v64 = v169;
                sub_24F924E28();
                v65 = v200;
LABEL_55:
                sub_24E60169C(v64, v183, &qword_27F21E940, &qword_24F95D580);
                swift_storeEnumTagMultiPayload();
                sub_24E81780C(&qword_27F21E988, type metadata accessor for FriendsArePlayingCardConfiguration.VisualView, &unk_24F95D658);
                sub_24E817854();
                v149 = v184;
                sub_24F924E28();
                sub_24E60169C(v149, v195, &qword_27F21E960, &qword_24F95D5A0);
                swift_storeEnumTagMultiPayload();
                sub_24E817750();
                sub_24E8179C4();
                v150 = v196;
                sub_24F924E28();
                sub_24E601704(v149, &qword_27F21E960, &qword_24F95D5A0);
                sub_24E60169C(v150, v153, &qword_27F21E968, &qword_24F95D5A8);
                swift_storeEnumTagMultiPayload();
                sub_24E8176C4();
                sub_24E8180A8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                sub_24F924E28();
                sub_24E817A80(&v226);
                sub_24E601704(v150, &qword_27F21E968, &qword_24F95D5A8);
                sub_24E601704(v64, &qword_27F21E940, &qword_24F95D580);
                goto LABEL_56;
              }

              v199 = *(&v54 + 1);
              v99 = type metadata accessor for FriendsArePlayingCard(0);
              v100 = *(v99 + 36);
              v101 = v192;
              v102 = *(v192 + *(v99 + 40));
              v103 = sub_24F9289E8();
              v104 = *(v103 - 8);
              v105 = v163;
              (*(v104 + 16))(v163, v101 + v100, v103);
              (*(v104 + 56))(v105, 0, 1, v103);
              KeyPath = swift_getKeyPath();
              v107 = v178;
              *v178 = KeyPath;
              *(v107 + 8) = 0;
              LOBYTE(v210) = 0;

              sub_24E63D388(v224, v218);
              sub_24F926F28();
              v108 = *(&v218[0] + 1);
              *(v107 + 16) = v218[0];
              v107[3] = v108;
              v112 = sub_24E6B7C48(v58, v102);
              if (v111)
              {
                v115 = v111;
                v116 = v110;
                v117 = v109;
                sub_24F92CEF8();
                swift_unknownObjectRetain_n();
                v118 = swift_dynamicCastClass();
                if (!v118)
                {
                  swift_unknownObjectRelease();
                  v118 = MEMORY[0x277D84F90];
                }

                v119 = *(v118 + 16);

                if (__OFSUB__(v115 >> 1, v116))
                {
                  __break(1u);
                }

                else if (v119 == (v115 >> 1) - v116)
                {
                  v114 = swift_dynamicCastClass();
                  swift_unknownObjectRelease();
                  if (v114)
                  {
LABEL_54:
                    v192 = v114;
                    v120 = v178;
                    v178[4] = v114;
                    v121 = v160;
                    sub_24E60169C(v105, v120 + *(v160 + 44), &qword_27F213FB0, &qword_24F93E6B0);
                    v122 = (v120 + v121[13]);
                    v123 = v235;
                    *v122 = v234;
                    v122[1] = v123;
                    v124 = v237;
                    v122[2] = v236;
                    v122[3] = v124;
                    *(v120 + v121[12]) = v57;
                    *(v120 + v121[14]) = 0x3FF0000000000000;
                    v125 = v159;
                    sub_24E6009C8(v105, v159, &qword_27F213FB0, &qword_24F93E6B0);
                    v126 = (*(v158 + 80) + 16) & ~*(v158 + 80);
                    v127 = (v157 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
                    v128 = (v127 + 15) & 0xFFFFFFFFFFFFFFF8;
                    v129 = swift_allocObject();
                    sub_24E6009C8(v125, v129 + v126, &qword_27F213FB0, &qword_24F93E6B0);
                    *(v129 + v127) = v57;
                    v130 = (v129 + v128);
                    v131 = v237;
                    v130[2] = v236;
                    v130[3] = v131;
                    v132 = v235;
                    *v130 = v234;
                    v130[1] = v132;
                    *(v129 + ((v128 + 71) & 0xFFFFFFFFFFFFFFF8)) = 0x3FF0000000000000;
                    v133 = v178;
                    v134 = (v178 + v121[15]);
                    *v134 = sub_24E63D3E8;
                    v134[1] = v129;
                    sub_24E63D388(v224, v218);
                    v135 = sub_24F927618();
                    v137 = v136;
                    v138 = v122[3];
                    v208 = v122[2];
                    v209 = v138;
                    v139 = v122[1];
                    v207[0] = *v122;
                    v207[1] = v139;
                    v140 = *(v192 + 16);
                    v203 = v207[0];
                    v204 = v139;
                    v205 = v208;
                    v206 = v138;
                    v212 = v208;
                    v213 = v138;
                    v210 = v207[0];
                    v211 = v139;
                    *&v214 = v140;
                    *(&v214 + 1) = v57;
                    *&v215 = 0x3FF0000000000000;
                    v141 = v199;
                    *(&v215 + 1) = v199;
                    *v216 = v54;
                    *&v216[8] = v53;
                    *&v216[24] = v135;
                    v217 = v136;
                    v142 = v161;
                    sub_24E60169C(v133, v161, &qword_27F214A50, &qword_24F949E80);
                    v143 = v142 + *(v166 + 36);
                    v144 = *&v216[16];
                    *(v143 + 96) = *v216;
                    *(v143 + 112) = v144;
                    *(v143 + 128) = v217;
                    v145 = v213;
                    *(v143 + 32) = v212;
                    *(v143 + 48) = v145;
                    v146 = v215;
                    *(v143 + 64) = v214;
                    *(v143 + 80) = v146;
                    v147 = v211;
                    *v143 = v210;
                    *(v143 + 16) = v147;
                    v218[0] = v203;
                    v218[1] = v204;
                    v218[2] = v205;
                    v219 = v206;
                    *&v220 = v140;
                    *(&v220 + 1) = v57;
                    *&v221 = 0x3FF0000000000000;
                    *(&v221 + 1) = v141;
                    *v222 = v54;
                    *&v222[8] = v53;
                    *&v222[24] = v135;
                    v223 = v137;
                    sub_24E63D388(v207, v202);

                    sub_24E60169C(&v210, v202, &qword_27F21E9A8, &unk_24F95D5B8);
                    sub_24E601704(v218, &qword_27F21E9A8, &unk_24F95D5B8);
                    sub_24E601704(v133, &qword_27F214A50, &qword_24F949E80);
                    v148 = v162;
                    sub_24E6009C8(v142, v162, &qword_27F21E938, &qword_24F95D578);
                    sub_24E60169C(v148, v168, &qword_27F21E938, &qword_24F95D578);
                    swift_storeEnumTagMultiPayload();
                    sub_24E8178E0();
                    v64 = v169;
                    sub_24F924E28();
                    sub_24E601704(v148, &qword_27F21E938, &qword_24F95D578);
                    v65 = v200;
                    v63 = v179;
                    goto LABEL_55;
                  }

                  v114 = MEMORY[0x277D84F90];
LABEL_53:
                  swift_unknownObjectRelease();
                  goto LABEL_54;
                }

                swift_unknownObjectRelease();
                v111 = v115;
                v110 = v116;
                v109 = v117;
              }

              sub_24E6B8064(v112, v109, v110, v111);
              v114 = v113;
              goto LABEL_53;
            }

            goto LABEL_38;
          }

          v70 = v175;
          sub_24E817ABC(v192, v175, type metadata accessor for FriendsArePlayingCard);

          v71 = v181;
          v72 = *(v181 + 40);
          v73 = sub_24F923E98();
          (*(*(v73 - 8) + 16))(v70 + v72, v191, v73);
          *(v70 + v71[5]) = v156;
          v74 = (v70 + v71[6]);
          v75 = v231;
          v74[4] = v230;
          v74[5] = v75;
          v76 = v233;
          v74[6] = v232;
          v74[7] = v76;
          v77 = v227;
          *v74 = v226;
          v74[1] = v77;
          v78 = v229;
          v74[2] = v228;
          v74[3] = v78;
          *(v70 + v71[7]) = v44;
          *(v70 + v71[8]) = v44;
          *(v70 + v71[9]) = 2;
          v79 = v70 + v71[11];
          type metadata accessor for CardSafeArea(0);
          sub_24E81780C(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
          *v79 = sub_24F923598();
          *(v79 + 8) = v80 & 1;
          sub_24E817ABC(v70, v183, type metadata accessor for FriendsArePlayingCardConfiguration.VisualView);
          swift_storeEnumTagMultiPayload();
          sub_24E81780C(&qword_27F21E988, type metadata accessor for FriendsArePlayingCardConfiguration.VisualView, &unk_24F95D658);
          sub_24E817854();
          v81 = v184;
          sub_24F924E28();
          sub_24E60169C(v81, v195, &qword_27F21E960, &qword_24F95D5A0);
          swift_storeEnumTagMultiPayload();
          sub_24E817750();
          sub_24E8179C4();
          v82 = v196;
          sub_24F924E28();
          sub_24E601704(v81, &qword_27F21E960, &qword_24F95D5A0);
          sub_24E60169C(v82, v153, &qword_27F21E968, &qword_24F95D5A8);
          swift_storeEnumTagMultiPayload();
          sub_24E8176C4();
          sub_24E8180A8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          sub_24F924E28();
          sub_24E601704(v82, &qword_27F21E968, &qword_24F95D5A8);
          v83 = type metadata accessor for FriendsArePlayingCardConfiguration.VisualView;
          v84 = v70;
        }

        sub_24E817B24(v84, v83);
        goto LABEL_42;
      }

      if (a3 == 1)
      {
        if (qword_27F20FF58 != -1)
        {
          swift_once();
        }

        v45 = &xmmword_27F39AF28;
      }

      else
      {
        if (qword_27F20FF48 != -1)
        {
          swift_once();
        }

        v45 = &xmmword_27F39AE28;
      }
    }

    v49 = v45[7];
    *v222 = v45[6];
    *&v222[16] = v49;
    v50 = v45[5];
    v220 = v45[4];
    v221 = v50;
    v51 = v45[3];
    v218[2] = v45[2];
    v219 = v51;
    v52 = v45[1];
    v218[0] = *v45;
    v218[1] = v52;
    goto LABEL_29;
  }

  v46 = v200;
  v47 = *(v201 + 56);

  return v47(v46, 1, 1, v41);
}

uint64_t sub_24E8135B0@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v102);
  v94 = &v85 - v2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E9E0, &qword_24F95D6A8);
  MEMORY[0x28223BE20](v95);
  v4 = &v85 - v3;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E9E8, &qword_24F95D6B0);
  MEMORY[0x28223BE20](v96);
  v6 = &v85 - v5;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E9F0, &qword_24F95D6B8);
  MEMORY[0x28223BE20](v100);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v97 = &v85 - v10;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E9F8, &qword_24F95D6C0);
  MEMORY[0x28223BE20](v104);
  v106 = &v85 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EA00, &qword_24F95D6C8);
  MEMORY[0x28223BE20](v12);
  v99 = &v85 - v13;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EA08, &unk_24F95D6D0);
  MEMORY[0x28223BE20](v105);
  v101 = &v85 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v15 - 8);
  v88 = &v85 - v16;
  v86 = type metadata accessor for PlayerAvatar(0);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v90 = (&v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v89 = &v85 - v19;
  v92 = type metadata accessor for CardCompactAvatarView(0);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v87 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EA10, &qword_24F95D6E0);
  MEMORY[0x28223BE20](v98);
  v93 = &v85 - v21;
  v22 = sub_24F924848();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for FriendsArePlayingCardConfiguration.VisualView(0);
  v26 = v107[11];
  v108 = v1;
  v27 = (v1 + v26);
  v28 = *v27;
  v29 = *(v27 + 8);

  if ((v29 & 1) == 0)
  {
    sub_24F92BDC8();
    v30 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v23 + 8))(v25, v22);
    v28 = *&v109[0];
  }

  swift_getKeyPath();
  *&v109[0] = v28;
  sub_24E81780C(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  v31 = *(v28 + 16);

  v32 = v107;
  v33 = v108;
  v34 = *(v108 + v107[5]);
  if ((v34 - 2) < 4)
  {
    sub_24E8144CC(v108, v4);
    v35 = sub_24F925818();
    sub_24F923318();
    v36 = &v4[*(v95 + 36)];
    *v36 = v35;
    *(v36 + 1) = v37;
    *(v36 + 2) = v38;
    *(v36 + 3) = v39;
    *(v36 + 4) = v40;
    v36[40] = 0;
    if (v34 == 4)
    {
    }

    else
    {
      v62 = sub_24F92CE08();

      if ((v62 & 1) == 0)
      {
        v67 = sub_24F925848();
LABEL_18:
        v68 = sub_24EA91914(v67, v31);
        v70 = v69;
        v72 = v71;
        v74 = v73;
        v75 = sub_24F925808();
        sub_24E6009C8(v4, v6, &qword_27F21E9E0, &qword_24F95D6A8);
        v76 = &v6[*(v96 + 36)];
        *v76 = v75;
        *(v76 + 1) = v68;
        *(v76 + 2) = v70;
        *(v76 + 3) = v72;
        *(v76 + 4) = v74;
        v76[40] = 0;
        sub_24F9242E8();
        sub_24E6009C8(v6, v8, &qword_27F21E9E8, &qword_24F95D6B0);
        v77 = &v8[*(v100 + 36)];
        v78 = v109[5];
        *(v77 + 4) = v109[4];
        *(v77 + 5) = v78;
        *(v77 + 6) = v109[6];
        v79 = v109[1];
        *v77 = v109[0];
        *(v77 + 1) = v79;
        v80 = v109[3];
        *(v77 + 2) = v109[2];
        *(v77 + 3) = v80;
        v42 = &qword_27F21E9F0;
        v43 = &qword_24F95D6B8;
        v81 = v97;
        sub_24E6009C8(v8, v97, &qword_27F21E9F0, &qword_24F95D6B8);
        sub_24E60169C(v81, v99, &qword_27F21E9F0, &qword_24F95D6B8);
        swift_storeEnumTagMultiPayload();
        sub_24E81828C();
        sub_24E818340();
        v82 = v101;
        sub_24F924E28();
        sub_24E60169C(v82, v106, &qword_27F21EA08, &unk_24F95D6D0);
        swift_storeEnumTagMultiPayload();
        sub_24E818200();
        sub_24E8180A8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        sub_24F924E28();
        sub_24E601704(v82, &qword_27F21EA08, &unk_24F95D6D0);
        v44 = v81;
        return sub_24E601704(v44, v42, v43);
      }
    }

    v63 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08, &qword_24F9476F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    v65 = sub_24F925818();
    *(inited + 32) = v65;
    v66 = sub_24F925828();
    *(inited + 33) = v66;
    v67 = sub_24F925848();
    sub_24F925848();
    if (sub_24F925848() != v65)
    {
      v67 = sub_24F925848();
    }

    sub_24F925848();
    if (sub_24F925848() != v66)
    {
      v67 = sub_24F925848();
    }

    v4 = v63;
    goto LABEL_18;
  }

  if (!*(v108 + v107[5]))
  {
    v41 = v94;
    sub_24E9239F0(*(v108 + v107[9]), v108, 0, v108 + v107[10], *(v108 + v107[8]), v94);
    v42 = &qword_27F214A20;
    v43 = &unk_24F94D670;
    sub_24E60169C(v41, v106, &qword_27F214A20, &unk_24F94D670);
    swift_storeEnumTagMultiPayload();
    sub_24E818200();
    sub_24E8180A8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    sub_24F924E28();
    v44 = v41;
    return sub_24E601704(v44, v42, v43);
  }

  v45 = type metadata accessor for FriendsArePlayingCard(0);
  v46 = *(v33 + *(v45 + 40));
  if (*(v46 + 16))
  {
    v47 = v45;
    v48 = v32;
    v49 = v89;
    sub_24E817ABC(v46 + ((*(v85 + 80) + 32) & ~*(v85 + 80)), v89, type metadata accessor for PlayerAvatar);
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0, &unk_24F94DAF0) + 48);
    v51 = *(v47 + 36);
    v52 = sub_24F9289E8();
    v53 = v88;
    (*(*(v52 - 8) + 16))(v88, v33 + v51, v52);
    *(v53 + v50) = *(v33 + v48[6] + 64) * 57.2957795;
    v54 = type metadata accessor for PlayerAvatar.Overlay(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
    sub_24E717FD0(v53, v49 + *(v86 + 20));
    v55 = v92;
    v56 = v87;
    v57 = &v87[*(v92 + 20)];
    type metadata accessor for CardSafeArea(0);
    *v57 = sub_24F923598();
    v57[8] = v58 & 1;
    v59 = v90;
    sub_24E817ABC(v49, v90, type metadata accessor for PlayerAvatar);
    LOBYTE(v109[0]) = 7;
    sub_24F8319B8(v59, v109, v56);
    sub_24E817B24(v49, type metadata accessor for PlayerAvatar);
    v60 = v93;
    sub_24E818804(v56, v93, type metadata accessor for CardCompactAvatarView);
    v61 = 0;
  }

  else
  {
    v61 = 1;
    v60 = v93;
    v55 = v92;
  }

  (*(v91 + 56))(v60, v61, 1, v55);
  sub_24E60169C(v60, v99, &qword_27F21EA10, &qword_24F95D6E0);
  swift_storeEnumTagMultiPayload();
  sub_24E81828C();
  sub_24E818340();
  v84 = v101;
  sub_24F924E28();
  sub_24E60169C(v84, v106, &qword_27F21EA08, &unk_24F95D6D0);
  swift_storeEnumTagMultiPayload();
  sub_24E818200();
  sub_24E8180A8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
  sub_24F924E28();
  sub_24E601704(v84, &qword_27F21EA08, &unk_24F95D6D0);
  return sub_24E601704(v60, &qword_27F21EA10, &qword_24F95D6E0);
}

uint64_t sub_24E8144CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v262 = a2;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A50, &qword_24F949E80);
  MEMORY[0x28223BE20](v238);
  v257 = (&v229 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E938, &qword_24F95D578);
  MEMORY[0x28223BE20](v4);
  v239 = &v229 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v240 = &v229 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EAA8, &qword_24F95D740);
  MEMORY[0x28223BE20](v8);
  v252 = &v229 - v9;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EAB0, &qword_24F95D748);
  MEMORY[0x28223BE20](v243);
  v244 = &v229 - v10;
  v11 = type metadata accessor for FriendsArePlayingCardConfiguration.VisualView(0);
  v245 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v246 = v12;
  v247 = &v229 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  v236 = *(v13 - 8);
  v14 = *(v236 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v237 = &v229 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v253 = &v229 - v16;
  MEMORY[0x28223BE20](v17);
  v234 = &v229 - v18;
  MEMORY[0x28223BE20](v19);
  v233 = &v229 - v20;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EAA0, &qword_24F95D738);
  MEMORY[0x28223BE20](v241);
  v231 = (&v229 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v230 = &v229 - v23;
  MEMORY[0x28223BE20](v24);
  v235 = (&v229 - v25);
  MEMORY[0x28223BE20](v26);
  v232 = &v229 - v27;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EA90, &qword_24F95D730);
  MEMORY[0x28223BE20](v250);
  v242 = &v229 - v28;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EA80, &qword_24F95D728);
  MEMORY[0x28223BE20](v261);
  v251 = &v229 - v29;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EAB8, &qword_24F95D750);
  MEMORY[0x28223BE20](v259);
  v260 = &v229 - v30;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EAC0, &qword_24F95D758);
  MEMORY[0x28223BE20](v254);
  v255 = &v229 - v31;
  v32 = type metadata accessor for HeroGameIconAndPlayerAvatarsView(0);
  MEMORY[0x28223BE20](v32);
  v34 = &v229 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EA68, &qword_24F95D720);
  MEMORY[0x28223BE20](v258);
  v256 = &v229 - v35;
  v263 = v11;
  v36 = a1;
  v37 = *(a1 + *(v11 + 20));
  if (v37 > 2)
  {
    if (v37 == 3)
    {
      v248 = v8;
      v249 = v4;
    }

    else
    {
      if (v37 != 4)
      {

        goto LABEL_15;
      }

      v248 = v8;
      v249 = v4;
    }
  }

  else
  {
    v248 = v8;
    v249 = v4;
  }

  v38 = sub_24F92CE08();

  if ((v38 & 1) == 0)
  {
    v39 = [objc_opt_self() standardUserDefaults];
    v40 = sub_24F92B098();
    v41 = [v39 BOOLForKey_];

    if (v41)
    {
      if (v37 <= 1)
      {
        if (!v37)
        {
          v156 = v263;
          goto LABEL_31;
        }
      }

      else if (v37 == 2)
      {

        v156 = v263;
        goto LABEL_32;
      }

      v156 = v263;
LABEL_31:
      v157 = sub_24F92CE08();

      if (v157)
      {
LABEL_32:
        v158 = type metadata accessor for FriendsArePlayingCard(0);
        v159 = *(v158 + 36);
        v160 = v36;
        v161 = *(v36 + *(v158 + 40));
        v162 = sub_24F9289E8();
        v163 = *(v162 - 8);
        v164 = v36 + v159;
        v165 = v233;
        (*(v163 + 16))(v233, v164, v162);
        (*(v163 + 56))(v165, 0, 1, v162);
        v166 = v160 + *(v156 + 24);
        v167 = *(v166 + 16);
        v281 = *v166;
        v282 = v167;
        v168 = *(v166 + 48);
        v283 = *(v166 + 32);
        v284 = v168;
        v169 = *(v166 + 64);
        v170 = v247;
        sub_24E817ABC(v160, v247, type metadata accessor for FriendsArePlayingCardConfiguration.VisualView);
        v171 = (*(v245 + 80) + 16) & ~*(v245 + 80);
        v172 = swift_allocObject();
        sub_24E818804(v170, v172 + v171, type metadata accessor for FriendsArePlayingCardConfiguration.VisualView);
        KeyPath = swift_getKeyPath();
        v174 = v235;
        *v235 = KeyPath;
        *(v174 + 8) = 0;
        v264[0] = 0;

        sub_24E63D388(&v281, &v272);
        sub_24F926F28();
        v175 = *(&v272 + 1);
        *(v174 + 16) = v272;
        *(v174 + 24) = v175;
        v179 = sub_24E6B7C48(*(&v284 + 1), v161);
        if (v178)
        {
          v207 = v178;
          v208 = v177;
          v209 = v176;
          sub_24F92CEF8();
          swift_unknownObjectRetain_n();
          v210 = swift_dynamicCastClass();
          if (!v210)
          {
            swift_unknownObjectRelease();
            v210 = MEMORY[0x277D84F90];
          }

          v211 = *(v210 + 16);

          if (__OFSUB__(v207 >> 1, v208))
          {
            __break(1u);
          }

          else if (v211 == (v207 >> 1) - v208)
          {
            v181 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            v182 = v244;
            v183 = v232;
            v174 = v235;
            if (v181)
            {
LABEL_43:
              *(v174 + 32) = v181;
              v212 = v241;
              sub_24E6009C8(v165, v174 + *(v241 + 44), &qword_27F213FB0, &qword_24F93E6B0);
              v213 = (v174 + v212[13]);
              v214 = v282;
              *v213 = v281;
              v213[1] = v214;
              v215 = v284;
              v213[2] = v283;
              v213[3] = v215;
              *(v174 + v212[12]) = v169;
              *(v174 + v212[14]) = 0x3FF0000000000000;
              v216 = (v174 + v212[15]);
              *v216 = sub_24E819060;
              v216[1] = v172;
              sub_24E6009C8(v174, v183, &qword_27F21EAA0, &qword_24F95D738);
              sub_24E60169C(v183, v182, &qword_27F21EAA0, &qword_24F95D738);
              swift_storeEnumTagMultiPayload();
              sub_24E602068(&qword_27F21EA98, &qword_27F21EAA0, &qword_24F95D738, &protocol conformance descriptor for GameIconAndPlayerAvatarsView<A>);
              v217 = v242;
              sub_24F924E28();
              sub_24E601704(v183, &qword_27F21EAA0, &qword_24F95D738);
LABEL_52:
              sub_24E60169C(v217, v252, &qword_27F21EA90, &qword_24F95D730);
              swift_storeEnumTagMultiPayload();
              sub_24E818754();
              sub_24E8178E0();
              v155 = v251;
              sub_24F924E28();
              sub_24E601704(v217, &qword_27F21EA90, &qword_24F95D730);
              goto LABEL_53;
            }

            v181 = MEMORY[0x277D84F90];
LABEL_42:
            swift_unknownObjectRelease();
            goto LABEL_43;
          }

          swift_unknownObjectRelease();
          v178 = v207;
          v177 = v208;
          v176 = v209;
          v174 = v235;
        }

        sub_24E6B8064(v179, v176, v177, v178);
        v181 = v180;
        v182 = v244;
        v183 = v232;
        goto LABEL_42;
      }

      v184 = type metadata accessor for FriendsArePlayingCard(0);
      v185 = *(v184 + 36);
      v186 = *(v36 + *(v184 + 40));
      v187 = sub_24F9289E8();
      v188 = *(v187 - 8);
      v189 = v36 + v185;
      v190 = v234;
      (*(v188 + 16))(v234, v189, v187);
      (*(v188 + 56))(v190, 0, 1, v187);
      v191 = v36 + *(v156 + 24);
      v192 = *(v191 + 16);
      v281 = *v191;
      v282 = v192;
      v193 = *(v191 + 48);
      v283 = *(v191 + 32);
      v284 = v193;
      v194 = *(v191 + 64);
      v195 = v247;
      sub_24E817ABC(v36, v247, type metadata accessor for FriendsArePlayingCardConfiguration.VisualView);
      v196 = (*(v245 + 80) + 16) & ~*(v245 + 80);
      v197 = swift_allocObject();
      sub_24E818804(v195, v197 + v196, type metadata accessor for FriendsArePlayingCardConfiguration.VisualView);
      v198 = swift_getKeyPath();
      v199 = v231;
      *v231 = v198;
      *(v199 + 8) = 0;
      v264[0] = 0;

      sub_24E63D388(&v281, &v272);
      sub_24F926F28();
      v200 = *(&v272 + 1);
      *(v199 + 16) = v272;
      *(v199 + 24) = v200;
      v204 = sub_24E6B7C48(*(&v284 + 1), v186);
      if (v203)
      {
        v218 = v203;
        v219 = v202;
        v220 = v201;
        sub_24F92CEF8();
        swift_unknownObjectRetain_n();
        v221 = swift_dynamicCastClass();
        if (!v221)
        {
          swift_unknownObjectRelease();
          v221 = MEMORY[0x277D84F90];
        }

        v222 = *(v221 + 16);

        if (__OFSUB__(v218 >> 1, v219))
        {
          __break(1u);
        }

        else if (v222 == (v218 >> 1) - v219)
        {
          v206 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v206)
          {
LABEL_51:
            *(v199 + 32) = v206;
            v223 = v241;
            sub_24E6009C8(v234, v199 + *(v241 + 44), &qword_27F213FB0, &qword_24F93E6B0);
            v224 = (v199 + v223[13]);
            v225 = v282;
            *v224 = v281;
            v224[1] = v225;
            v226 = v284;
            v224[2] = v283;
            v224[3] = v226;
            *(v199 + v223[12]) = v194;
            *(v199 + v223[14]) = 0x3FF0000000000000;
            v227 = (v199 + v223[15]);
            *v227 = sub_24E818870;
            v227[1] = v197;
            v228 = v230;
            sub_24E6009C8(v199, v230, &qword_27F21EAA0, &qword_24F95D738);
            sub_24E60169C(v228, v244, &qword_27F21EAA0, &qword_24F95D738);
            swift_storeEnumTagMultiPayload();
            sub_24E602068(&qword_27F21EA98, &qword_27F21EAA0, &qword_24F95D738, &protocol conformance descriptor for GameIconAndPlayerAvatarsView<A>);
            v217 = v242;
            sub_24F924E28();
            sub_24E601704(v228, &qword_27F21EAA0, &qword_24F95D738);
            goto LABEL_52;
          }

          v206 = MEMORY[0x277D84F90];
LABEL_50:
          swift_unknownObjectRelease();
          goto LABEL_51;
        }

        swift_unknownObjectRelease();
        v203 = v218;
        v202 = v219;
        v201 = v220;
      }

      sub_24E6B8064(v204, v201, v202, v203);
      v206 = v205;
      goto LABEL_50;
    }

    v42 = type metadata accessor for FriendsArePlayingCard(0);
    v43 = *(v42 + 36);
    v44 = *(a1 + *(v42 + 40));
    v45 = sub_24F9289E8();
    v46 = *(v45 - 8);
    v47 = v36 + v43;
    v48 = v253;
    (*(v46 + 16))(v253, v47, v45);
    (*(v46 + 56))(v48, 0, 1, v45);
    v49 = v36 + *(v263 + 24);
    v50 = *(v49 + 16);
    v294 = *v49;
    v295 = v50;
    v51 = *(v49 + 48);
    v296 = *(v49 + 32);
    v297 = v51;
    v263 = v49;
    v52 = *(v49 + 64);
    v53 = swift_getKeyPath();
    v54 = v257;
    *v257 = v53;
    *(v54 + 8) = 0;
    LOBYTE(v272) = 0;

    sub_24E63D388(&v294, &v281);
    sub_24F926F28();
    v55 = *(&v281 + 1);
    *(v54 + 16) = v281;
    v54[3] = v55;
    v59 = sub_24E6B7C48(*(&v297 + 1), v44);
    if (v58)
    {
      v117 = v58;
      v118 = v57;
      v119 = v56;
      sub_24F92CEF8();
      swift_unknownObjectRetain_n();
      v120 = swift_dynamicCastClass();
      if (!v120)
      {
        swift_unknownObjectRelease();
        v120 = MEMORY[0x277D84F90];
      }

      v121 = *(v120 + 16);

      if (__OFSUB__(v117 >> 1, v118))
      {
        __break(1u);
      }

      else if (v121 == (v117 >> 1) - v118)
      {
        v61 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v61)
        {
LABEL_26:
          v256 = v61;
          v122 = v257;
          v257[4] = v61;
          v123 = v238;
          v124 = v253;
          sub_24E60169C(v253, v122 + *(v238 + 44), &qword_27F213FB0, &qword_24F93E6B0);
          v125 = (v122 + v123[13]);
          v126 = v295;
          *v125 = v294;
          v125[1] = v126;
          v127 = v297;
          v125[2] = v296;
          v125[3] = v127;
          *(v122 + v123[12]) = v52;
          *(v122 + v123[14]) = 0x3FF0000000000000;
          v128 = v237;
          sub_24E6009C8(v124, v237, &qword_27F213FB0, &qword_24F93E6B0);
          v129 = (*(v236 + 80) + 16) & ~*(v236 + 80);
          v130 = (v14 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
          v131 = (v130 + 15) & 0xFFFFFFFFFFFFFFF8;
          v132 = swift_allocObject();
          sub_24E6009C8(v128, v132 + v129, &qword_27F213FB0, &qword_24F93E6B0);
          *(v132 + v130) = v52;
          v133 = (v132 + v131);
          v134 = v297;
          v133[2] = v296;
          v133[3] = v134;
          v135 = v295;
          *v133 = v294;
          v133[1] = v135;
          *(v132 + ((v131 + 71) & 0xFFFFFFFFFFFFFFF8)) = 0x3FF0000000000000;
          v136 = v257;
          v137 = (v257 + v123[15]);
          *v137 = sub_24E63E1EC;
          v137[1] = v132;
          v138 = *(v263 + 96);
          v139 = *(v263 + 104);
          v140 = *(v263 + 112);
          v141 = *(v263 + 120);
          sub_24E63D388(&v294, &v281);
          v142 = sub_24F927618();
          v144 = v143;
          v145 = v125[3];
          v270 = v125[2];
          v271 = v145;
          v146 = v125[1];
          v269[0] = *v125;
          v269[1] = v146;
          v147 = *(v256 + 2);
          v265 = v269[0];
          v266 = v146;
          v267 = v270;
          v268 = v145;
          v274 = v270;
          v275 = v145;
          v272 = v269[0];
          v273 = v146;
          *&v276 = v147;
          *(&v276 + 1) = v52;
          *&v277 = 0x3FF0000000000000;
          *(&v277 + 1) = v141;
          *&v278 = v140;
          *(&v278 + 1) = v138;
          *&v279 = v139;
          *(&v279 + 1) = v142;
          v280 = v143;
          v148 = v239;
          sub_24E60169C(v136, v239, &qword_27F214A50, &qword_24F949E80);
          v149 = v148 + *(v249 + 36);
          v150 = v279;
          *(v149 + 96) = v278;
          *(v149 + 112) = v150;
          *(v149 + 128) = v280;
          v151 = v275;
          *(v149 + 32) = v274;
          *(v149 + 48) = v151;
          v152 = v277;
          *(v149 + 64) = v276;
          *(v149 + 80) = v152;
          v153 = v273;
          *v149 = v272;
          *(v149 + 16) = v153;
          v281 = v265;
          v282 = v266;
          v283 = v267;
          v284 = v268;
          v285 = v147;
          v286 = v52;
          v287 = 0x3FF0000000000000;
          v288 = v141;
          v289 = v140;
          v290 = v138;
          v291 = v139;
          v292 = v142;
          v293 = v144;
          sub_24E63D388(v269, v264);

          sub_24E60169C(&v272, v264, &qword_27F21E9A8, &unk_24F95D5B8);
          sub_24E601704(&v281, &qword_27F21E9A8, &unk_24F95D5B8);
          sub_24E601704(v136, &qword_27F214A50, &qword_24F949E80);
          v154 = v240;
          sub_24E6009C8(v148, v240, &qword_27F21E938, &qword_24F95D578);
          sub_24E60169C(v154, v252, &qword_27F21E938, &qword_24F95D578);
          swift_storeEnumTagMultiPayload();
          sub_24E818754();
          sub_24E8178E0();
          v155 = v251;
          sub_24F924E28();
          sub_24E601704(v154, &qword_27F21E938, &qword_24F95D578);
LABEL_53:
          sub_24E60169C(v155, v260, &qword_27F21EA80, &qword_24F95D728);
          swift_storeEnumTagMultiPayload();
          sub_24E8185F4();
          sub_24E8186C8();
          sub_24F924E28();
          return sub_24E601704(v155, &qword_27F21EA80, &qword_24F95D728);
        }

        v61 = MEMORY[0x277D84F90];
LABEL_25:
        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      swift_unknownObjectRelease();
      v58 = v117;
      v57 = v118;
      v56 = v119;
    }

    sub_24E6B8064(v59, v56, v57, v58);
    v61 = v60;
    goto LABEL_25;
  }

LABEL_15:
  v62 = [objc_opt_self() standardUserDefaults];
  v63 = sub_24F92B098();
  v64 = [v62 BOOLForKey_];

  if (v64)
  {
    v65 = type metadata accessor for FriendsArePlayingCard(0);
    v66 = v65[9];
    v257 = *(v36 + v65[10]);
    v67 = v32[5];
    v68 = sub_24F9289E8();
    v69 = *(v68 - 8);
    (*(v69 + 16))(&v34[v67], v36 + v66, v68);
    (*(v69 + 56))(&v34[v67], 0, 1, v68);
    v70 = v36 + *(v263 + 24);
    v71 = *(v70 + 16);
    v72 = *(v70 + 48);
    v283 = *(v70 + 32);
    v73 = v283;
    v284 = v72;
    v74 = *(v70 + 16);
    v281 = *v70;
    v75 = v281;
    v282 = v74;
    v76 = *(v70 + 64);
    *&v74 = *(v70 + 112);
    v77 = *(v70 + 120);
    v78 = (v36 + v65[11]);
    v80 = *v78;
    v79 = v78[1];
    v82 = v78[3];
    v252 = v78[2];
    v81 = v252;
    v253 = v79;
    v251 = v82;
    v83 = v78[4];
    v84 = v78[5];
    v263 = *(v36 + *(v263 + 28));
    v85 = v263;
    *v34 = v257;
    v86 = &v34[v32[6]];
    *v86 = v75;
    *(v86 + 1) = v71;
    v87 = *(v70 + 48);
    *(v86 + 2) = v73;
    *(v86 + 3) = v87;
    *&v34[v32[7]] = v76;
    v88 = &v34[v32[8]];
    *v88 = *(v70 + 96);
    *(v88 + 2) = v74;
    *(v88 + 3) = v77;
    v89 = &v34[v32[9]];
    *v89 = v80;
    v89[1] = v79;
    v89[2] = v81;
    v89[3] = v82;
    v89[4] = v83;
    v89[5] = v84;
    *&v34[v32[10]] = v85;
    v90 = &v34[v32[11]];
    *v90 = swift_getKeyPath();
    v90[8] = 0;
    v91 = &v34[v32[12]];
    type metadata accessor for HeroSafeAreaMetrics(0);

    sub_24E63D388(&v281, &v272);

    sub_24E6E85C0(v80, v253, v252, v251, v83, v84);
    sub_24E81780C(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);

    *v91 = sub_24F923598();
    v91[8] = v92 & 1;
  }

  else
  {
    v94 = type metadata accessor for FriendsArePlayingCard(0);
    v95 = *(v94 + 36);
    v96 = *(v36 + *(v94 + 40));
    v97 = v32[5];
    v98 = sub_24F9289E8();
    v99 = *(v98 - 8);
    (*(v99 + 16))(&v34[v97], v36 + v95, v98);
    (*(v99 + 56))(&v34[v97], 0, 1, v98);
    v100 = v36 + *(v263 + 24);
    v101 = *(v100 + 48);
    v283 = *(v100 + 32);
    v102 = v283;
    v284 = v101;
    v103 = *(v100 + 16);
    v281 = *v100;
    v104 = v281;
    v282 = v103;
    v105 = *(v100 + 64);
    v106 = *(v100 + 112);
    v107 = *(v36 + *(v263 + 28));
    *v34 = v96;
    v108 = &v34[v32[6]];
    *(v108 + 2) = v102;
    *(v108 + 3) = v101;
    *v108 = v104;
    *(v108 + 1) = v103;
    *&v34[v32[7]] = v105;
    v109 = *(v100 + 120);
    v110 = &v34[v32[8]];
    *v110 = *(v100 + 96);
    *(v110 + 2) = v106;
    *(v110 + 3) = v109;
    v111 = &v34[v32[9]];
    *(v111 + 1) = 0u;
    *(v111 + 2) = 0u;
    *v111 = 0u;
    *&v34[v32[10]] = v107;
    v112 = &v34[v32[11]];
    *v112 = swift_getKeyPath();
    v112[8] = 0;
    v113 = &v34[v32[12]];
    type metadata accessor for HeroSafeAreaMetrics(0);

    sub_24E63D388(&v281, &v272);
    sub_24E81780C(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);

    *v113 = sub_24F923598();
    v113[8] = v114 & 1;
  }

  v93 = &v34[v32[13]];
  *v93 = swift_getKeyPath();
  v93[8] = 0;
  sub_24E817ABC(v34, v255, type metadata accessor for HeroGameIconAndPlayerAvatarsView);
  swift_storeEnumTagMultiPayload();
  sub_24E81780C(&qword_27F21EA70, type metadata accessor for HeroGameIconAndPlayerAvatarsView, &unk_24F95D860);
  v115 = v256;
  sub_24F924E28();
  sub_24E817B24(v34, type metadata accessor for HeroGameIconAndPlayerAvatarsView);
  sub_24E60169C(v115, v260, &qword_27F21EA68, &qword_24F95D720);
  swift_storeEnumTagMultiPayload();
  sub_24E8185F4();
  sub_24E8186C8();
  sub_24F924E28();
  return sub_24E601704(v115, &qword_27F21EA68, &qword_24F95D720);
}

uint64_t sub_24E815EEC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EAD0, &unk_24F95D7B0);
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218AC8, &unk_24F949F20);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = (a1 + *(type metadata accessor for FriendsArePlayingCard(0) + 44));
  v13 = v12[5];
  if (v12[3])
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = *(v21 + 56);

    return v15(a3, 1, 1, v6);
  }

  else
  {
    v16 = v12[4];

    sub_24F8188E0(v16, v13);

    sub_24F3E5448(MEMORY[0x277D84F90]);
    sub_24F928948();
    sub_24F927618();
    sub_24F9238C8();
    v17 = &v11[*(v9 + 36)];
    v18 = v23;
    *v17 = v22;
    *(v17 + 1) = v18;
    *(v17 + 2) = v24;
    sub_24E6E94A4();
    sub_24E819108();
    sub_24F925ED8();
    sub_24E601704(v11, &qword_27F218AC8, &unk_24F949F20);
    (*(v21 + 32))(a3, v8, v6);
    return (*(v21 + 56))(a3, 0, 1, v6);
  }
}

__n128 sub_24E8161DC()
{
  if (qword_27F211940 != -1)
  {
    swift_once();
  }

  v4 = xmmword_27F2543C0;
  v1 = qword_27F2543D0;
  v0 = qword_27F2543D8;
  v2 = sub_24E608A68(qword_2861BE8A8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DD0, &unk_24F93E930);
  swift_arrayDestroy();
  *&xmmword_27F21E7E8 = 0x4064000000000000;
  result = v4;
  *(&xmmword_27F21E7E8 + 8) = v4;
  qword_27F21E800 = v1;
  *&xmmword_27F21E808 = v0;
  *(&xmmword_27F21E808 + 1) = v2;
  byte_27F21E818 = 0;
  qword_27F21E820 = 4;
  return result;
}

__n128 sub_24E8162C0()
{
  if (qword_27F211940 != -1)
  {
    swift_once();
  }

  v4 = xmmword_27F2543C0;
  v1 = qword_27F2543D0;
  v0 = qword_27F2543D8;
  v2 = sub_24E608A68(qword_2861BE1C8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DD0, &unk_24F93E930);
  swift_arrayDestroy();
  *&xmmword_27F21E828 = 0x4062C00000000000;
  result = v4;
  *(&xmmword_27F21E828 + 8) = v4;
  qword_27F21E840 = v1;
  *&xmmword_27F21E848 = v0;
  *(&xmmword_27F21E848 + 1) = v2;
  byte_27F21E858 = 0;
  qword_27F21E860 = 6;
  return result;
}

__n128 sub_24E8163A8()
{
  if (qword_27F211940 != -1)
  {
    swift_once();
  }

  v4 = xmmword_27F2543C0;
  v1 = qword_27F2543D0;
  v0 = qword_27F2543D8;
  v2 = sub_24E608A68(qword_2861BE450);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DD0, &unk_24F93E930);
  swift_arrayDestroy();
  *&xmmword_27F21E868 = 0x4060400000000000;
  result = v4;
  *(&xmmword_27F21E868 + 8) = v4;
  qword_27F21E880 = v1;
  *&xmmword_27F21E888 = v0;
  *(&xmmword_27F21E888 + 1) = v2;
  byte_27F21E898 = 0;
  qword_27F21E8A0 = 5;
  return result;
}

__n128 sub_24E816490()
{
  if (qword_27F211940 != -1)
  {
    swift_once();
  }

  v4 = xmmword_27F2543C0;
  v1 = qword_27F2543D0;
  v0 = qword_27F2543D8;
  v2 = sub_24E608A68(qword_2861BE6C8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DD0, &unk_24F93E930);
  swift_arrayDestroy();
  *&xmmword_27F21E8A8 = 0x4052800000000000;
  result = v4;
  *(&xmmword_27F21E8A8 + 8) = v4;
  qword_27F21E8C0 = v1;
  *&xmmword_27F21E8C8 = v0;
  *(&xmmword_27F21E8C8 + 1) = v2;
  byte_27F21E8D8 = 0;
  qword_27F21E8E0 = 5;
  return result;
}

__n128 sub_24E816578()
{
  if (qword_27F211940 != -1)
  {
    swift_once();
  }

  v4 = xmmword_27F2543C0;
  v1 = qword_27F2543D0;
  v0 = qword_27F2543D8;
  v2 = sub_24E608A68(qword_2861BDEC0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DD0, &unk_24F93E930);
  swift_arrayDestroy();
  *&xmmword_27F21E8E8 = 0x4044000000000000;
  result = v4;
  *(&xmmword_27F21E8E8 + 8) = v4;
  qword_27F21E900 = v1;
  *&xmmword_27F21E908 = v0;
  *(&xmmword_27F21E908 + 1) = v2;
  byte_27F21E918 = 0;
  qword_27F21E920 = 3;
  return result;
}

double sub_24E81665C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24F926E08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_24F921C08())
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v6 = sub_24F926E88();
    (*(v3 + 8))(v5, v2);
    v11 = v6;
    v12 = 0;
    v13 = 1;
    v14 = 0;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00, &unk_24F952720);
    sub_24E6E97A8();
    sub_24F924E28();
  }

  else
  {
    v11 = sub_24F926C98();
    v12 = 0;
    v13 = 0;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00, &unk_24F952720);
    sub_24E6E97A8();
    sub_24F924E28();
  }

  result = *&v15;
  v8 = v16;
  v9 = v17;
  *a1 = v15;
  *(a1 + 16) = v8;
  *(a1 + 18) = v9;
  return result;
}

uint64_t sub_24E816860@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v3 = type metadata accessor for HeroGameIconAndPlayerAvatarsView(0);
  v60 = *(v3 - 1);
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v56 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB08, &qword_24F95D8B0);
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - v10;
  v12 = sub_24E816DD4();
  v13 = *v2;
  v14 = v2 + v3[5];
  v57 = v8;
  sub_24E60169C(v14, v8, &qword_27F213FB0, &qword_24F93E6B0);
  v15 = (v2 + v3[6]);
  v16 = v15[3];
  v90 = v15[2];
  v91 = v16;
  v17 = v15[1];
  v88 = *v15;
  v89 = v17;
  v58 = v3;
  v18 = *(v2 + v3[7]);
  sub_24E817ABC(v2, v5, type metadata accessor for HeroGameIconAndPlayerAvatarsView);
  v19 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v20 = (v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_24E818804(v5, v21 + v19, type metadata accessor for HeroGameIconAndPlayerAvatarsView);
  *(v21 + v20) = v12;
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  LOBYTE(v69) = 0;

  sub_24E63D388(&v88, v78);
  sub_24F926F28();
  v22 = *(&v78[0] + 1);
  v11[16] = v78[0];
  *(v11 + 3) = v22;
  v26 = sub_24E6B7C48(*(&v91 + 1), v13);
  if ((v25 & 1) == 0)
  {
    goto LABEL_2;
  }

  v31 = v25;
  v60 = v24;
  v56 = v23;
  sub_24F92CEF8();
  swift_unknownObjectRetain_n();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v32 = MEMORY[0x277D84F90];
  }

  v33 = *(v32 + 16);

  if (__OFSUB__(v31 >> 1, v60))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v33 != (v31 >> 1) - v60)
  {
LABEL_17:
    swift_unknownObjectRelease();
    v25 = v31;
    v24 = v60;
    v23 = v56;
LABEL_2:
    sub_24E6B8064(v26, v23, v24, v25);
    v28 = v27;
    v30 = v57;
    v29 = v58;
    goto LABEL_9;
  }

  v28 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v30 = v57;
  v29 = v58;
  if (v28)
  {
    goto LABEL_10;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  *(v11 + 4) = v28;
  sub_24E6009C8(v30, &v11[v9[11]], &qword_27F213FB0, &qword_24F93E6B0);
  v34 = &v11[v9[13]];
  v35 = v89;
  *v34 = v88;
  *(v34 + 1) = v35;
  v36 = v91;
  *(v34 + 2) = v90;
  *(v34 + 3) = v36;
  *&v11[v9[12]] = v18;
  *&v11[v9[14]] = v12;
  v37 = &v11[v9[15]];
  *v37 = sub_24E81988C;
  v37[1] = v21;
  if (*(v2 + v29[9] + 24))
  {
    if (qword_27F211940 != -1)
    {
      swift_once();
    }

    v38 = &xmmword_27F2543C0;
  }

  else
  {
    v38 = (v2 + v29[8]);
  }

  v39 = *(v38 + 3);
  v40 = *(v38 + 1);
  v41 = *(v38 + 2);
  v42 = *v38;

  v43 = sub_24F927618();
  v45 = v44;
  v46 = *(v34 + 3);
  v67 = *(v34 + 2);
  v68 = v46;
  v47 = *(v34 + 1);
  v66[0] = *v34;
  v66[1] = v47;
  v48 = *(v28 + 16);
  v62 = v66[0];
  v63 = v47;
  v64 = v67;
  v65 = v46;
  v71 = v67;
  v72 = v46;
  v69 = v66[0];
  v70 = v47;
  *&v73 = v48;
  *(&v73 + 1) = v18;
  *&v74 = v12;
  *(&v74 + 1) = v39;
  *&v75 = v41;
  *(&v75 + 1) = v42;
  *&v76 = v40;
  *(&v76 + 1) = v43;
  v77 = v44;
  v49 = v59;
  sub_24E60169C(v11, v59, &qword_27F21EB08, &qword_24F95D8B0);
  v50 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB10, &qword_24F95D8B8) + 36);
  v51 = v76;
  *(v50 + 96) = v75;
  *(v50 + 112) = v51;
  *(v50 + 128) = v77;
  v52 = v72;
  *(v50 + 32) = v71;
  *(v50 + 48) = v52;
  v53 = v74;
  *(v50 + 64) = v73;
  *(v50 + 80) = v53;
  v54 = v70;
  *v50 = v69;
  *(v50 + 16) = v54;
  v78[0] = v62;
  v78[1] = v63;
  v78[2] = v64;
  v78[3] = v65;
  v79 = v48;
  v80 = v18;
  v81 = v12;
  v82 = v39;
  v83 = v41;
  v84 = v42;
  v85 = v40;
  v86 = v43;
  v87 = v45;
  sub_24E63D388(v66, v61);
  sub_24E60169C(&v69, v61, &qword_27F21EB18, &qword_24F95D8C0);
  sub_24E601704(v78, &qword_27F21EB18, &qword_24F95D8C0);
  return sub_24E601704(v11, &qword_27F21EB08, &qword_24F95D8B0);
}

double sub_24E816DD4()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for HeroGameIconAndPlayerAvatarsView(0);
  v6 = *(v0 + v5[12] + 8);

  if ((v6 & 1) == 0)
  {
    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v8 = COERCE_DOUBLE(sub_24F30A4B8());
  v10 = v9;
  v12 = v11;

  v13 = 1.0;
  if (v12)
  {
    return v13;
  }

  v14 = (v0 + v5[6]);
  v15 = v14[1];
  v38[0] = *v14;
  v38[1] = v15;
  v16 = v14[3];
  v18 = *v14;
  v17 = v14[1];
  v38[2] = v14[2];
  v38[3] = v16;
  v19 = v14[3];
  v36 = v14[2];
  v37 = v19;
  v34 = v18;
  v35 = v17;
  sub_24F81B3F4(*(*v0 + 16), *(v0 + v5[7]));
  v21 = v20;
  v23 = v22;
  v39[0] = v34;
  v39[1] = v35;
  v39[2] = v36;
  v39[3] = v37;
  sub_24E63D388(v38, v33);
  sub_24E819928(v39);
  v24 = v0 + v5[11];
  v25 = *v24;
  if (*(v24 + 8) != 1)
  {

    sub_24F92BDC8();
    v26 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v25, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v25) = v34;
  }

  if (v25 - 2 >= 2)
  {
    if (v25)
    {
      v27 = v21 + 16.0;
      v28 = v23 + 0.0;
      if (v21 + 16.0 <= v8 && v23 <= v10)
      {
        if (v28 / v27 >= 0.571428571)
        {
          v27 = v28 / 0.571428571;
        }

        else
        {
          v28 = v27 * 0.571428571;
        }

        goto LABEL_12;
      }
    }

    else
    {
      if (v21 <= v8 && v23 <= v10)
      {
        if (v8 <= 400.0)
        {
          return v13;
        }

        v30 = v8 / 400.0;
        v31 = v10 / 285.552408;
        goto LABEL_29;
      }

      v28 = v23 + 0.0;
      v27 = v21 + 0.0;
    }

LABEL_28:
    v30 = v8 / v27;
    v31 = v10 / v28;
LABEL_29:
    if (v31 >= v30)
    {
      return v30;
    }

    else
    {
      return v31;
    }
  }

  v27 = v21 + 16.0;
  v28 = v23 + 0.0;
  if (v21 + 16.0 > v8 || v23 > v10)
  {
    goto LABEL_28;
  }

  if (v28 / v27 < 0.5)
  {
    v28 = v27 * 0.5;
  }

  else
  {
    v27 = v28 + v28;
  }

LABEL_12:
  if (v27 <= v8 && v28 <= v10)
  {
    goto LABEL_28;
  }

  return v13;
}

uint64_t sub_24E817180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v41 = a2;
  v5 = type metadata accessor for DefaultGameIconView(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB20, &qword_24F95D8C8);
  MEMORY[0x28223BE20](v39);
  v9 = &v38 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EAD0, &unk_24F95D7B0);
  v10 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218AC8, &unk_24F949F20);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for HeroGameIconAndPlayerAvatarsView(0);
  v17 = (a1 + *(v16 + 36));
  v18 = v17[5];
  if (v17[3])
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = v16;
    sub_24E60169C(a1 + *(v16 + 20), v7, &qword_27F213FB0, &qword_24F93E6B0);
    v21 = *(v20 + 24);
    v22 = *(a1 + *(v20 + 28));
    v23 = *(a1 + v21 + 48);
    v48 = *(a1 + v21 + 32);
    v24 = v48;
    v49 = v23;
    v25 = *(a1 + v21 + 16);
    v46 = *(a1 + v21);
    v26 = v46;
    v47 = v25;
    *&v7[v5[5]] = v22;
    v27 = &v7[v5[6]];
    *v27 = v26;
    *(v27 + 1) = v25;
    *(v27 + 2) = v24;
    *(v27 + 3) = v23;
    *&v7[v5[7]] = a3;
    sub_24E817ABC(v7, v9, type metadata accessor for DefaultGameIconView);
    swift_storeEnumTagMultiPayload();
    sub_24E63D388(&v46, &v42);
    v28 = sub_24E6E94A4();
    v29 = sub_24E819108();
    v42 = v13;
    v43 = &type metadata for FriendsArePlayingCardArtworkStyle;
    v44 = v28;
    v45 = v29;
    swift_getOpaqueTypeConformance2();
    sub_24E81780C(&qword_27F21EB28, type metadata accessor for DefaultGameIconView, &unk_24FA30224);
    sub_24F924E28();
    return sub_24E817B24(v7, type metadata accessor for DefaultGameIconView);
  }

  else
  {
    v30 = v17[4];

    sub_24F8188E0(v30, v18);

    sub_24F3E5448(MEMORY[0x277D84F90]);
    sub_24F928948();
    sub_24F927618();
    sub_24F9238C8();
    v31 = &v15[*(v13 + 36)];
    v32 = v47;
    *v31 = v46;
    *(v31 + 1) = v32;
    *(v31 + 2) = v48;
    v33 = sub_24E6E94A4();
    v34 = sub_24E819108();
    sub_24F925ED8();
    v35 = *(v10 + 16);
    v38 = v5;
    v36 = v40;
    v35(v9, v12, v40);
    swift_storeEnumTagMultiPayload();
    v42 = v13;
    v43 = &type metadata for FriendsArePlayingCardArtworkStyle;
    v44 = v33;
    v45 = v34;
    swift_getOpaqueTypeConformance2();
    sub_24E81780C(&qword_27F21EB28, type metadata accessor for DefaultGameIconView, &unk_24FA30224);
    sub_24F924E28();
    (*(v10 + 8))(v12, v36);
    return sub_24E601704(v15, &qword_27F218AC8, &unk_24F949F20);
  }
}

unint64_t sub_24E8176C4()
{
  result = qword_27F21E978;
  if (!qword_27F21E978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E968, &qword_24F95D5A8);
    sub_24E817750();
    sub_24E8179C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E978);
  }

  return result;
}

unint64_t sub_24E817750()
{
  result = qword_27F21E980;
  if (!qword_27F21E980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E960, &qword_24F95D5A0);
    sub_24E81780C(&qword_27F21E988, type metadata accessor for FriendsArePlayingCardConfiguration.VisualView, &unk_24F95D658);
    sub_24E817854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E980);
  }

  return result;
}

uint64_t sub_24E81780C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E817854()
{
  result = qword_27F21E990;
  if (!qword_27F21E990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E940, &qword_24F95D580);
    sub_24E8178E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E990);
  }

  return result;
}

unint64_t sub_24E8178E0()
{
  result = qword_27F21E998;
  if (!qword_27F21E998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E938, &qword_24F95D578);
    sub_24E602068(&qword_27F214AC0, &qword_27F214A50, &qword_24F949E80, &protocol conformance descriptor for GameIconAndPlayerAvatarsView<A>);
    sub_24E602068(&qword_27F21E9A0, &qword_27F21E9A8, &unk_24F95D5B8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E998);
  }

  return result;
}

unint64_t sub_24E8179C4()
{
  result = qword_27F214AD8;
  if (!qword_27F214AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214A38, &unk_24F93E690);
    sub_24E81780C(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
    sub_24E63C1D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214AD8);
  }

  return result;
}

uint64_t sub_24E817ABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E817B24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E817B84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E817BCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E817C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FriendsArePlayingCard(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 40);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_24F923E98();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24E817D8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FriendsArePlayingCard(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 40) = (a2 - 1);
  }

  else
  {
    v11 = sub_24F923E98();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24E817EB4(uint64_t a1)
{
  type metadata accessor for FriendsArePlayingCard(319);
  if (v1 <= 0x3F)
  {
    sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      sub_24E817FD0(319);
      if (v3 <= 0x3F)
      {
        sub_24F923E98();
        if (v4 <= 0x3F)
        {
          sub_24E819514(319, &qword_27F214D30, type metadata accessor for CardSafeArea, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E817FD0(uint64_t a1)
{
  if (!qword_27F21E9C0)
  {
    v2 = type metadata accessor for FriendsArePlayingCard(255);
    v3 = sub_24E81780C(&qword_27F21E928, type metadata accessor for FriendsArePlayingCard, &unk_24FA0E618);
    v5 = type metadata accessor for DefaultCardConfiguration(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27F21E9C0);
    }
  }
}

uint64_t sub_24E8180A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E818124()
{
  result = qword_27F21E9D8;
  if (!qword_27F21E9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E970, &qword_24F95D5B0);
    sub_24E8176C4();
    sub_24E8180A8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E9D8);
  }

  return result;
}

unint64_t sub_24E818200()
{
  result = qword_27F21EA18;
  if (!qword_27F21EA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EA08, &unk_24F95D6D0);
    sub_24E81828C();
    sub_24E818340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EA18);
  }

  return result;
}

unint64_t sub_24E81828C()
{
  result = qword_27F21EA20;
  if (!qword_27F21EA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EA10, &qword_24F95D6E0);
    sub_24E81780C(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView, &unk_24F9B7498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EA20);
  }

  return result;
}

unint64_t sub_24E818340()
{
  result = qword_27F21EA28;
  if (!qword_27F21EA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E9F0, &qword_24F95D6B8);
    sub_24E8183CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EA28);
  }

  return result;
}

unint64_t sub_24E8183CC()
{
  result = qword_27F21EA30;
  if (!qword_27F21EA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E9E8, &qword_24F95D6B0);
    sub_24E818458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EA30);
  }

  return result;
}

unint64_t sub_24E818458()
{
  result = qword_27F21EA38;
  if (!qword_27F21EA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E9E0, &qword_24F95D6A8);
    sub_24E8184E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EA38);
  }

  return result;
}

unint64_t sub_24E8184E4()
{
  result = qword_27F21EA40;
  if (!qword_27F21EA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EA48, &qword_24F95D710);
    sub_24E818568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EA40);
  }

  return result;
}

unint64_t sub_24E818568()
{
  result = qword_27F21EA50;
  if (!qword_27F21EA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EA58, &qword_24F95D718);
    sub_24E8185F4();
    sub_24E8186C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EA50);
  }

  return result;
}

unint64_t sub_24E8185F4()
{
  result = qword_27F21EA60;
  if (!qword_27F21EA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EA68, &qword_24F95D720);
    sub_24E81780C(&qword_27F21EA70, type metadata accessor for HeroGameIconAndPlayerAvatarsView, &unk_24F95D860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EA60);
  }

  return result;
}

unint64_t sub_24E8186C8()
{
  result = qword_27F21EA78;
  if (!qword_27F21EA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EA80, &qword_24F95D728);
    sub_24E818754();
    sub_24E8178E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EA78);
  }

  return result;
}

unint64_t sub_24E818754()
{
  result = qword_27F21EA88;
  if (!qword_27F21EA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EA90, &qword_24F95D730);
    sub_24E602068(&qword_27F21EA98, &qword_27F21EAA0, &qword_24F95D738, &protocol conformance descriptor for GameIconAndPlayerAvatarsView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EA88);
  }

  return result;
}

uint64_t sub_24E818804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_47Tm()
{
  v1 = type metadata accessor for FriendsArePlayingCardConfiguration.VisualView(0);
  v45 = *(*(v1 - 8) + 80);
  v2 = (v0 + ((v45 + 16) & ~v45));
  __swift_destroy_boxed_opaque_existential_1(v2);
  if (*(v2 + 8))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  v3 = type metadata accessor for FriendsArePlayingCard(0);
  v4 = v3[6];
  v5 = sub_24F92A6D8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(&v2[v4], 1, v5))
  {
    (*(v6 + 8))(&v2[v4], v5);
  }

  v7 = v3[7];
  v8 = sub_24F929608();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(&v2[v7], 1, v8))
  {
    (*(v9 + 8))(&v2[v7], v8);
  }

  v44 = v3;
  v10 = &v2[v3[8]];

  v11 = type metadata accessor for CommonCardAttributes(0);
  v12 = v11[6];
  v13 = sub_24F9289E8();
  v46 = *(v13 - 8);
  v14 = *(v46 + 48);
  if (!v14(&v10[v12], 1, v13))
  {
    (*(v46 + 8))(&v10[v12], v13);
  }

  v15 = v11[7];
  v43 = v14;
  if (!v14(&v10[v15], 1, v13))
  {
    (*(v46 + 8))(&v10[v15], v13);
  }

  v16 = &v10[v11[8]];
  v17 = type metadata accessor for GSKVideo(0);
  if (!(*(*(v17 - 1) + 48))(v16, 1, v17))
  {
    v42 = v1;
    v18 = sub_24F91F4A8();
    (*(*(v18 - 8) + 8))(v16, v18);
    v41 = v13;
    (*(v46 + 8))(&v16[v17[5]], v13);
    v19 = v17[9];
    v20 = sub_24F928698();
    v21 = *(v20 - 8);
    v39 = v19;
    v22 = &v16[v19];
    v23 = *(v21 + 48);
    if (!v23(v22, 1, v20))
    {
      (*(v21 + 8))(&v16[v39], v20);
    }

    v40 = v21;
    v24 = v17[10];
    if (!v23(&v16[v24], 1, v20))
    {
      (*(v40 + 8))(&v16[v24], v20);
    }

    v1 = v42;
    v13 = v41;
  }

  if (*&v10[v11[9]])
  {
  }

  v25 = v11[10];
  if (!v43(&v10[v25], 1, v13))
  {
    (*(v46 + 8))(&v10[v25], v13);
  }

  v26 = &v10[v11[17]];
  v27 = type metadata accessor for CommonCardAttributes.CardBackgroundColor(0);
  if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    v28 = sub_24F928388();
    (*(*(v28 - 8) + 8))(v26, v28);
  }

  v29 = &v10[v11[19]];
  if (*(v29 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v30 = &v10[v11[20]];
  v31 = type metadata accessor for CardPrimaryActionType(0);
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:

        v36 = *(type metadata accessor for OfferButtonInfo(0) + 24);
        v37 = sub_24F91F4A8();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(&v30[v36], 1, v37))
        {
          (*(v38 + 8))(&v30[v36], v37);
        }

        break;
      case 1:

        break;
      case 0:

        break;
    }
  }

  (*(v46 + 8))(&v2[v44[9]], v13);

  if (*&v2[v44[11] + 24])
  {
  }

  v32 = *(v1 + 40);
  v33 = sub_24F923E98();
  (*(*(v33 - 8) + 8))(&v2[v32], v33);

  return swift_deallocObject();
}

unint64_t sub_24E819108()
{
  result = qword_27F21EAD8;
  if (!qword_27F21EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EAD8);
  }

  return result;
}

uint64_t sub_24E819180(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24E819250(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E819300(uint64_t a1)
{
  sub_24E819514(319, &qword_27F214D28, type metadata accessor for PlayerAvatar, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24E819514(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24E819578(319, &qword_27F2189E8, &type metadata for ThreeDimensionalMediaArtworkContent, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24F928FD8();
        if (v4 <= 0x3F)
        {
          sub_24E819578(319, &qword_27F21B190, &type metadata for HeroLayoutMode, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_24E819514(319, &qword_27F21EAF0, type metadata accessor for HeroSafeAreaMetrics, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_24E819578(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
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

void sub_24E819514(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_24E819578(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24E8195CC()
{
  result = qword_27F21EAF8;
  if (!qword_27F21EAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EB00, &qword_24F95D818);
    sub_24E818200();
    sub_24E8180A8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EAF8);
  }

  return result;
}

uint64_t sub_24E8196BC()
{
  v1 = type metadata accessor for HeroGameIconAndPlayerAvatarsView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = sub_24F9289E8();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  if (*(v2 + v1[9] + 24))
  {
  }

  sub_24E62A5EC(*(v2 + v1[11]), *(v2 + v1[11] + 8));

  sub_24E62A5EC(*(v2 + v1[13]), *(v2 + v1[13] + 8));

  return swift_deallocObject();
}

uint64_t sub_24E81988C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeroGameIconAndPlayerAvatarsView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24E817180(v1 + v4, a1, v5);
}

unint64_t sub_24E819980()
{
  result = qword_27F21EB30;
  if (!qword_27F21EB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EB10, &qword_24F95D8B8);
    sub_24E602068(&qword_27F21EB38, &qword_27F21EB08, &qword_24F95D8B0, &protocol conformance descriptor for GameIconAndPlayerAvatarsView<A>);
    sub_24E602068(&qword_27F21EB40, &qword_27F21EB18, &qword_24F95D8C0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EB30);
  }

  return result;
}

uint64_t sub_24E819A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Game(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for Player(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24E819B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Game(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for Player(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for LeaderboardSetsDataIntent(uint64_t a1)
{
  result = qword_27F21EB48;
  if (!qword_27F21EB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E819CD0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB68, &unk_24F95D9F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E81A548();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Game(0);
  sub_24E81A5FC(&qword_27F214950, type metadata accessor for Game, &protocol conformance descriptor for Game);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for LeaderboardSetsDataIntent(0);
    v8[14] = 1;
    type metadata accessor for Player(0);
    sub_24E81A5FC(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E819ED0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v20);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v22);
  v23 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB58, &qword_24F95D9E8);
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v17 - v7;
  v9 = type metadata accessor for LeaderboardSetsDataIntent(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E81A548();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a1;
  v12 = v21;
  v13 = v11;
  v26 = 0;
  sub_24E81A5FC(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
  v14 = v23;
  v15 = v24;
  sub_24F92CC68();
  sub_24E691974(v14, v13, type metadata accessor for Game);
  v25 = 1;
  sub_24E81A5FC(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  (*(v12 + 8))(v8, v15);
  sub_24E691974(v5, v13 + *(v9 + 20), type metadata accessor for Player);
  sub_24E81A644(v13, v19, type metadata accessor for LeaderboardSetsDataIntent);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_24E81A59C(v13, type metadata accessor for LeaderboardSetsDataIntent);
}

uint64_t sub_24E81A294(uint64_t a1)
{
  v2 = sub_24E81A548();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E81A2D0(uint64_t a1)
{
  v2 = sub_24E81A548();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E81A35C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 1701667175;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = type metadata accessor for Game(0);
  *(inited + 80) = sub_24E81A5FC(&qword_27F217960, type metadata accessor for Game, &protocol conformance descriptor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E81A644(v4, boxed_opaque_existential_1, type metadata accessor for Game);
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v8 = *(a1 + 20);
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E81A5FC(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v9 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E81A644(v4 + v8, v9, type metadata accessor for Player);
  v10 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v11 = sub_24E80FFAC(v10);

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v11;
  return result;
}

unint64_t sub_24E81A548()
{
  result = qword_27F21EB60;
  if (!qword_27F21EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EB60);
  }

  return result;
}

uint64_t sub_24E81A59C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E81A5FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E81A644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E81A6C0()
{
  result = qword_27F21EB70;
  if (!qword_27F21EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EB70);
  }

  return result;
}

unint64_t sub_24E81A718()
{
  result = qword_27F21EB78;
  if (!qword_27F21EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EB78);
  }

  return result;
}

unint64_t sub_24E81A770()
{
  result = qword_27F21EB80;
  if (!qword_27F21EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EB80);
  }

  return result;
}

uint64_t GSKVideo.init(videoURL:preview:behavior:playbackControls:autoPlayPlaybackControls:templateMediaEvent:templateClickMediaEvent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v32 = a6;
  v33 = a7;
  v30 = a1;
  v31 = a2;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a3;
  v17 = *a4;
  v29 = *a5;
  HIDWORD(v28) = *(a5 + 8);
  v18 = type metadata accessor for GSKVideo(0);
  v19 = (a8 + v18[11]);
  sub_24F91F6A8();
  v20 = sub_24F91F668();
  v22 = v21;
  (*(v13 + 8))(v15, v12);
  *v19 = v20;
  v19[1] = v22;
  v23 = sub_24F91F4A8();
  (*(*(v23 - 8) + 32))(a8, v30, v23);
  v24 = v18[5];
  v25 = sub_24F9289E8();
  (*(*(v25 - 8) + 32))(a8 + v24, v31, v25);
  *(a8 + v18[6]) = v16;
  *(a8 + v18[7]) = v17;
  v26 = a8 + v18[8];
  *v26 = v29;
  *(v26 + 8) = BYTE4(v28);
  sub_24E81AA08(v32, a8 + v18[9]);
  return sub_24E81AA08(v33, a8 + v18[10]);
}

uint64_t type metadata accessor for GSKVideo(uint64_t a1)
{
  result = qword_27F21EC08;
  if (!qword_27F21EC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E81AA08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E81AAAC()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x77656976657270;
    if (v1 != 1)
    {
      v5 = 0x726F697661686562;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x4C52556F65646976;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (v1 == 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD000000000000018;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24E81AB94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E82408C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E81ABBC(uint64_t a1)
{
  v2 = sub_24E81B220();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E81ABF8(uint64_t a1)
{
  v2 = sub_24E81B220();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GSKVideo.videoURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91F4A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GSKVideo.preview.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GSKVideo(0) + 20);
  v4 = sub_24F9289E8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GSKVideo.behavior.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for GSKVideo(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t GSKVideo.playbackControls.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for GSKVideo(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t GSKVideo.autoPlayPlaybackControls.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for GSKVideo(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t GSKVideo.playbackID.getter()
{
  v1 = *(v0 + *(type metadata accessor for GSKVideo(0) + 44));

  return v1;
}

uint64_t GSKVideo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB90, &qword_24F95DB18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E81B220();
  sub_24F92D128();
  LOBYTE(v13) = 0;
  sub_24F91F4A8();
  sub_24E81BBD8(&qword_27F2149C0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for GSKVideo(0);
    LOBYTE(v13) = 1;
    sub_24F9289E8();
    sub_24E81BBD8(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
    sub_24F92CD48();
    v13 = *(v3 + v9[6]);
    v15 = 2;
    sub_24E81B274();
    sub_24F92CD48();
    v13 = *(v3 + v9[7]);
    v15 = 3;
    sub_24E81B2C8();
    sub_24F92CD48();
    v10 = (v3 + v9[8]);
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    v13 = v11;
    v14 = v10;
    v15 = 4;
    sub_24F92CCF8();
    LOBYTE(v13) = 5;
    sub_24F928698();
    sub_24E81BBD8(&qword_27F21EBB0, MEMORY[0x277D21BB8], MEMORY[0x277D21BC0]);
    sub_24F92CCF8();
    LOBYTE(v13) = 6;
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24E81B220()
{
  result = qword_27F21EB98;
  if (!qword_27F21EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EB98);
  }

  return result;
}

unint64_t sub_24E81B274()
{
  result = qword_27F21EBA0;
  if (!qword_27F21EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EBA0);
  }

  return result;
}

unint64_t sub_24E81B2C8()
{
  result = qword_27F21EBA8;
  if (!qword_27F21EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EBA8);
  }

  return result;
}

uint64_t GSKVideo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v40 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v39 - v5;
  v6 = sub_24F9289E8();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_24F91F4A8();
  v43 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EBB8, &qword_24F95DB20);
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v10 = &v39 - v9;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for GSKVideo(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v17[*(v18 + 44)];
  sub_24F91F6A8();
  v20 = sub_24F91F668();
  v22 = v21;
  (*(v12 + 8))(v14, v11);
  *v19 = v20;
  v19[1] = v22;
  v52 = v22;
  v23 = v53;
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  sub_24E81B220();
  v50 = v10;
  v24 = v54;
  sub_24F92D108();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    v26 = v44;
    v25 = v45;
    v54 = v15;
    v27 = v17;
    v28 = v46;
    LOBYTE(v55) = 0;
    sub_24E81BBD8(&qword_27F2145E0, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v29 = v47;
    v30 = v49;
    sub_24F92CC68();
    (*(v43 + 32))(v27, v29, v30);
    LOBYTE(v55) = 1;
    sub_24E81BBD8(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    v31 = v26;
    sub_24F92CC68();
    v32 = v54;
    (*(v25 + 32))(v27 + v54[5], v31, v28);
    v57 = 2;
    sub_24E81BB30();
    v47 = 0;
    sub_24F92CC68();
    *(v27 + v32[6]) = v55;
    v57 = 3;
    sub_24E81BB84();
    sub_24F92CC68();
    *(v27 + v32[7]) = v55;
    v57 = 4;
    sub_24F92CC18();
    v33 = v56;
    v34 = v27 + v32[8];
    *v34 = v55;
    *(v34 + 8) = v33;
    sub_24F928698();
    LOBYTE(v55) = 5;
    v35 = sub_24E81BBD8(&qword_27F21EBD0, MEMORY[0x277D21BB8], MEMORY[0x277D21BC8]);
    v36 = v42;
    v44 = v35;
    sub_24F92CC18();
    sub_24E81AA08(v36, v27 + v32[9]);
    LOBYTE(v55) = 6;
    v37 = v41;
    sub_24F92CC18();
    (*(v48 + 8))(v50, v51);
    sub_24E81AA08(v37, v27 + v32[10]);
    sub_24E81BC20(v27, v40);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return sub_24E81BC84(v27);
  }
}

uint64_t sub_24E81BAC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E81BB30()
{
  result = qword_27F21EBC0;
  if (!qword_27F21EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EBC0);
  }

  return result;
}

unint64_t sub_24E81BB84()
{
  result = qword_27F21EBC8;
  if (!qword_27F21EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EBC8);
  }

  return result;
}

uint64_t sub_24E81BBD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E81BC20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKVideo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E81BC84(uint64_t a1)
{
  v2 = type metadata accessor for GSKVideo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GSKVideo.Behavior.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v28 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v28 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v28 - v16;
  sub_24E615E00(a1, v30);
  sub_24F928298();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28[1] = 0;
  v29 = a1;
  v31 = a2;
  sub_24F928398();
  v19 = sub_24F928278();
  v20 = v19;
  v28[0] = v19;
  v21 = v5;
  v22 = *(v6 + 8);
  v22(v14, v21);
  v23 = v20 & 1;
  sub_24F928398();
  v24 = sub_24F928278();
  v22(v11, v21);
  v25 = v28[0] & 1 | 2;
  if ((v24 & 1) == 0)
  {
    v25 = v23;
  }

  if (v24 == 2)
  {
    v26 = v23;
  }

  else
  {
    v26 = v25;
  }

  sub_24F928398();
  v27 = sub_24F928278();
  v22(v8, v21);
  if (v27 == 2 || (v27 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
    result = (v22)(v17, v21);
    *v31 = v26;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
    result = (v22)(v17, v21);
    *v31 = v26 | 4;
  }

  return result;
}

uint64_t GSKVideo.Behavior.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92D118();
  sub_24E60B7DC(MEMORY[0x277D84F90]);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81D1F0(1, 1886351212, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D1F0(1, 0x747541776F6C6C61, 0xED000079616C506FLL, v5);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v2 & 4) != 0)
  {
LABEL_4:
    v3 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81D1F0(1, 0x6C7546776F6C6C61, 0xEF6E65657263536CLL, v3);
  }

LABEL_5:
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EBD8, &qword_24F95DB28);
  sub_24E823910();
  sub_24F92CED8();

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void sub_24E81C1D4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24E76D644(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24E8AD8E4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24E89873C(v16, a4 & 1);
    v11 = sub_24E76D644(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    sub_24E612B0C(a1, v22);
  }

  else
  {
    sub_24EC25718(v11, a2, a3, a1, v21);
  }
}

void sub_24E81C324(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24E76D644(a2, a3);
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
      sub_24E8ADBE4();
      goto LABEL_7;
    }

    sub_24E898D0C(v15, a4 & 1);
    v25 = sub_24E76D644(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_24F92CF88();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2130C0, &unk_24F96E180);
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_24EC25788(v12, a2, a3, a1, v18);
}

unint64_t sub_24E81C4F0(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_24E76D6EC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_24E8ADDC8();
      goto LABEL_7;
    }

    sub_24E899498(v13, a3 & 1);
    v18 = sub_24E76D6EC(a2);
    if ((v14 & 1) == (v19 & 1))
    {
      v10 = v18;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_24E772674(a2, v20);
      return sub_24EC2579C(v10, v20, a1, v16);
    }

LABEL_15:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v16[7] + 8 * v10) = a1;
}

void sub_24E81C670(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_24E7728E8();
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_24E8ADF98();
      v8 = v16;
      goto LABEL_8;
    }

    sub_24E899898(v13, a3 & 1);
    v8 = sub_24E7728E8();
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for AMSMediaArtworkColorKind(0);
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = *(v18 + 56);
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;
  }

  else
  {
    sub_24EC2580C(v8, a2, a1, v18);

    v21 = a2;
  }
}

void sub_24E81C838(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_24E76DD40(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_24E8AE2D8();
      goto LABEL_7;
    }

    sub_24E899E5C(v13, a3 & 1);
    v17 = sub_24E76DD40(a2);
    if ((v14 & 1) == (v18 & 1))
    {
      v10 = v17;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_24E772724(a2, v19);
      sub_24EC2582C(v10, v19, a1, v16);
      return;
    }

LABEL_15:
    sub_24F92CF88();
    __break(1u);
    return;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v16[7] + 8 * v10) = a1;
}

unint64_t sub_24E81C978(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_24E76DD40(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
      return sub_24E61DA68(a1, v16[7] + 88 * v10, &qword_27F21EC48, &unk_24F963C20);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_24E8AE46C();
    goto LABEL_7;
  }

  sub_24E89A120(v13, a3 & 1);
  v18 = sub_24E76DD40(a2);
  if ((v14 & 1) != (v19 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v10 = v18;
  v16 = *v4;
  if (v14)
  {
    return sub_24E61DA68(a1, v16[7] + 88 * v10, &qword_27F21EC48, &unk_24F963C20);
  }

LABEL_11:
  sub_24E772724(a2, v20);
  return sub_24EC25884(v10, v20, a1, v16);
}

void sub_24E81CAA8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_24E76D934(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_24E8AE640();
      goto LABEL_7;
    }

    sub_24E89A448(v13, a3 & 1);
    v19 = sub_24E76D934(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_24E65864C(a2, v21);
      sub_24EC2582C(v10, v21, a1, v16);
      return;
    }

LABEL_15:
    sub_24F92CF88();
    __break(1u);
    return;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = *(v17 + 8 * v10);
  *(v17 + 8 * v10) = a1;
}

uint64_t sub_24E81CBE8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_24E76D934(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_24E8AE7D4();
      goto LABEL_7;
    }

    sub_24E89A6F8(v13, a3 & 1);
    v24 = sub_24E76D934(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_24E65864C(a2, v26);
      return sub_24EC25900(v10, v26, a1, v16);
    }

LABEL_15:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = sub_24F91F4A8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 40);
  v21 = v18;
  v22 = v17 + *(v19 + 72) * v10;

  return v20(v22, a1, v21);
}

void sub_24E81CDA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24E76D644(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24E8AEA70();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24E89AA98(v16, a4 & 1);
    v11 = sub_24E76D644(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 72 * v11;

    sub_24E8245C8(a1, v22);
  }

  else
  {
    sub_24EC259C0(v11, a2, a3, a1, v21);
  }
}

void sub_24E81CEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_24E76D644(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_24E8AEC34();
      v13 = v21;
      goto LABEL_8;
    }

    sub_24E89AE24(v18, a5 & 1);
    v13 = sub_24E76D644(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_24EC25A24(v13, a3, a4, a1, a2, v23);
  }
}

void sub_24E81D064(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24E76D644(a2, a3);
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
      sub_24E8AEDC8();
      goto LABEL_7;
    }

    sub_24E89B104(v15, a4 & 1);
    v25 = sub_24E76D644(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_24F92CF88();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EC40, &qword_24F96E190);
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_24EC25A74(v12, a2, a3, a1, v18);
}

void sub_24E81D1F0(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24E76D644(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24E8AEFBC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24E89B4DC(v16, a4 & 1);
    v11 = sub_24E76D644(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = a1 & 1;
  }

  else
  {
    sub_24EC25A88(v11, a2, a3, a1 & 1, v21);
  }
}

void sub_24E81D324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_24E76D644(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_24E8AF124();
      v13 = v21;
      goto LABEL_8;
    }

    sub_24E89B77C(v18, a5 & 1);
    v13 = sub_24E76D644(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_24EC25A24(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_24E81D474(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_24E76D934(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213360, &unk_24F93AB30);
      return sub_24E61DA68(a1, v17 + *(*(v18 - 8) + 72) * v10, &qword_27F213360, &unk_24F93AB30);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_24E8AF29C();
    goto LABEL_7;
  }

  sub_24E89BA3C(v13, a3 & 1);
  v20 = sub_24E76D934(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24E65864C(a2, v22);
  return sub_24EC25AD0(v10, v22, a1, v16);
}

uint64_t sub_24E81D5C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8, &qword_24F953700);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = *v3;
  v14 = sub_24E76DF04(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for Game(0);
      return sub_24E824680(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for Game);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_24E8AF2C0();
    goto LABEL_7;
  }

  sub_24E89BA60(v17, a3 & 1);
  v24 = sub_24E76DF04(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_24EC25AE4(v14, v11, a1, v20);
}

void sub_24E81D7E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24E76D644(a2, a3);
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
      sub_24E8AF860();
      goto LABEL_7;
    }

    sub_24E89C264(v15, a4 & 1);
    v25 = sub_24E76D644(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_24F92CF88();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2130D8, &qword_24F93A890);
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_24EC25BE0(v12, a2, a3, a1, v18);
}

unint64_t sub_24E81DA0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24E76D934(a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_24E8B02F0();
      goto LABEL_7;
    }

    sub_24E89D25C(v15, a4 & 1);
    v21 = sub_24E76D934(a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_24E65864C(a3, v23);
      return sub_24EC25CAC(v12, v23, a1, a2, v18);
    }

LABEL_15:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v19 = (v18[7] + 16 * v12);
  *v19 = a1;
  v19[1] = a2;
}

_OWORD *sub_24E81DB58(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_24E7728E8();
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_24E8B0490();
      v8 = v16;
      goto LABEL_8;
    }

    sub_24E89D524(v13, a3 & 1);
    v8 = sub_24E7728E8();
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_24E612B0C(a1, v19);
  }

  else
  {
    sub_24EC25D08(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_24E81DC98(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_24E76D934(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_24E8B0610();
      goto LABEL_7;
    }

    sub_24E89D7F4(v13, a3 & 1);
    v19 = sub_24E76D934(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_24E65864C(a2, v21);
      return sub_24EC25D70(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_24E612B0C(a1, v17);
}

void sub_24E81DE38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24E7728F0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24E8B0A80();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24E89DE7C(v16, a4 & 1);
    v11 = sub_24E7728F0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(*(v21 + 56) + 8 * v11) = a1;
  }

  else
  {
    sub_24EC275F0(v11, a2, a3, a1, v21);
  }
}

void sub_24E81DF80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24E76D644(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24E8B0A94();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24E89DE90(v16, a4 & 1);
    v11 = sub_24E76D644(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_24EC25E04(v11, a2, a3, a1, v21);
  }
}

void sub_24E81E0B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24F929598();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24E76DDAC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return;
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_24E8B0BFC();
    goto LABEL_7;
  }

  sub_24E89E130(v17, a3 & 1);
  v21 = sub_24E76DDAC(a2);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_14:
    sub_24F92CF88();
    __break(1u);
    return;
  }

  v14 = v21;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  sub_24EC25E4C(v14, v11, a1, v20);
}

void sub_24E81E24C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24F929598();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24E76DDAC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24E8B0E6C();
      goto LABEL_7;
    }

    sub_24E89E4F0(v17, a3 & 1);
    v21 = sub_24E76DDAC(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_24EC25E4C(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_24F92CF88();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void sub_24E81E458(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24E76D934(a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_24E8B0EA8();
      goto LABEL_7;
    }

    sub_24E89E8E0(v15, a4 & 1);
    v21 = sub_24E76D934(a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_24E65864C(a3, v23);
      sub_24EC275F4(v12, v23, a1, a2, v18);
      return;
    }

LABEL_15:
    sub_24F92CF88();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v19 = v18[7] + 16 * v12;
  v20 = *v19;
  *v19 = a1;
  *(v19 + 8) = a2;
}

unint64_t sub_24E81E5A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24E76D97C(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24E8B0ED0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24E89E908(v16, a4 & 1);
    v11 = sub_24E76D97C(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_24EC25F08(v11, a3, a1, a2, v21);
  }
}

unint64_t sub_24E81E71C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_24E76DBF8(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_24E8B104C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_24E89EBA0(v14, a3 & 1);
    v9 = sub_24E76DBF8(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_24EC25F50(v9, a2, a1, v19);
  }
}

uint64_t sub_24E81E840(void *a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_24E76E2DC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_24E8B11A8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_24E89EFE0(v14, a3 & 1);
    v9 = sub_24E76E2DC(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 392 * v9;

    return sub_24E82456C(a1, v20);
  }

  else
  {
    sub_24EC25F94(v9, a2, a1, v19);
    return sub_24E7727D4(a2, v22);
  }
}

void sub_24E81E9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void (*a7)(void), void (*a8)(uint64_t, void), void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v9;
  v18 = *v9;
  v19 = sub_24E76D644(a4, a5);
  v21 = *(v18 + 16);
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_16;
  }

  v25 = v20;
  v26 = *(v18 + 24);
  if (v26 < v24 || (a6 & 1) == 0)
  {
    if (v26 >= v24 && (a6 & 1) == 0)
    {
      v27 = v19;
      a7();
      v19 = v27;
      goto LABEL_8;
    }

    a8(v24, a6 & 1);
    v19 = sub_24E76D644(a4, a5);
    if ((v25 & 1) != (v28 & 1))
    {
LABEL_16:
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v29 = *v11;
  if (v25)
  {
    v30 = (*(v29 + 56) + 24 * v19);
    *v30 = a1;
    v30[1] = a2;
    v30[2] = a3;
  }

  else
  {
    a9(v19, a4, a5, a1, a2, a3, v29);
  }
}

void sub_24E81EB70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24E76D644(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24E8B1898();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24E89FF04(v16, a4 & 1);
    v11 = sub_24E76D644(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(*(v21 + 56) + 8 * v11) = a1;
  }

  else
  {
    sub_24EC275F0(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_24E81ECA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_24E76E37C(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_24E8B1A00();
      v13 = v21;
      goto LABEL_8;
    }

    sub_24E8A01A4(v18, a5 & 1);
    v13 = sub_24E76E37C(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 24 * v13);
    *v24 = a1;
    v24[1] = a2;
    v24[2] = a3;
  }

  else
  {
    sub_24EC2608C(v13, a4, a1, a2, a3, v23);

    return swift_unknownObjectRetain();
  }
}

unint64_t sub_24E81EDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v14 = sub_24E76D934(a4);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 >= v17 && (a5 & 1) == 0)
    {
      sub_24E8B1B8C();
      goto LABEL_7;
    }

    sub_24E8A0474(v17, a5 & 1);
    v23 = sub_24E76D934(a4);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v6;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_24E65864C(a4, v25);
      return sub_24EC260DC(v14, v25, a1, a2, a3, v20);
    }

LABEL_15:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v6;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 24 * v14);
  *v21 = a1;
  v21[1] = a2;
  v21[2] = a3;

  return swift_unknownObjectRelease();
}

void sub_24E81EFC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, void *), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = v8;
  v17 = *v8;
  v18 = sub_24E76D644(a2, a3);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a4 & 1) == 0)
  {
    if (v25 >= v23 && (a4 & 1) == 0)
    {
      v26 = v18;
      a5();
      v18 = v26;
      goto LABEL_8;
    }

    a6(v23, a4 & 1);
    v18 = sub_24E76D644(a2, a3);
    if ((v24 & 1) != (v27 & 1))
    {
LABEL_16:
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v28 = *v12;
  if (v24)
  {
    v29 = (*(v28 + 56) + 40 * v18);
    __swift_destroy_boxed_opaque_existential_1(v29);

    a7(a1, v29);
  }

  else
  {
    a8(v18, a2, a3, a1, v28);
  }
}

unint64_t sub_24E81F154(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24E76DB58(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24E8B1F24();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24E8A0A68(v16, a4 & 1);
    v11 = sub_24E76DB58(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_24EC261B4(v11, a3, a1, a2, v21);
  }
}

void sub_24E81F28C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24E76D644(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for GameSearchResultsTabContent(0);
      sub_24E824680(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for GameSearchResultsTabContent);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_24E8B208C();
    goto LABEL_7;
  }

  sub_24E8A0F7C(v15, a4 & 1);
  v21 = sub_24E76D644(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_24F92CF88();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24EC261FC(v12, a2, a3, a1, v18);
}

void sub_24E81F3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_24E76D9B8(a2, a3, a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_24E8B22E4();
      v15 = v23;
      goto LABEL_8;
    }

    sub_24E8A12F4(v20, a6 & 1);
    v15 = sub_24E76D9B8(a2, a3, a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  else
  {
    sub_24EC26228(v15, a2, a3, a4, a5, a1, v25);
  }
}

void sub_24E81F574(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24E76D934(a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_24E8B246C();
      goto LABEL_7;
    }

    sub_24E8A15C4(v15, a4 & 1);
    v20 = sub_24E76D934(a3);
    if ((v16 & 1) == (v21 & 1))
    {
      v12 = v20;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_24E65864C(a3, v22);
      sub_24EC275F4(v12, v22, a1, a2, v18);
      return;
    }

LABEL_15:
    sub_24F92CF88();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v19 = (v18[7] + 16 * v12);
  *v19 = a1;
  v19[1] = a2;
}

void sub_24E81F6C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24E7728F0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24E8B2608();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24E8A1878(v16, a4 & 1);
    v11 = sub_24E7728F0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(*(v21 + 56) + 8 * v11) = a1;
  }

  else
  {
    sub_24EC275F0(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_24E81F85C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_24E7728CC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_24E8B2790();
      v9 = v17;
      goto LABEL_8;
    }

    sub_24E8A1B18(v14, a3 & 1);
    v9 = sub_24E7728CC(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * v9;

    return sub_24E824334(a1, v20);
  }

  else
  {

    return sub_24EC26274(v9, a2, a1, v19);
  }
}

uint64_t sub_24E81F9C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_24E76D934(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213348, &qword_24F95CDD0);
      return sub_24E61DA68(a1, v17 + *(*(v18 - 8) + 72) * v10, &qword_27F213348, &qword_24F95CDD0);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_24E8B2930();
    goto LABEL_7;
  }

  sub_24E8A1DC0(v13, a3 & 1);
  v20 = sub_24E76D934(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24E65864C(a2, v22);
  return sub_24EC262CC(v10, v22, a1, v16);
}

void sub_24E81FB14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24E76D644(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Player(0);
      sub_24E824680(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Player);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_24E8B2BCC();
    goto LABEL_7;
  }

  sub_24E8A216C(v15, a4 & 1);
  v21 = sub_24E76D644(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_24F92CF88();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24EC263A4(v12, a2, a3, a1, v18);
}

void sub_24E81FC80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = a1;
  v10 = *v4;
  v11 = sub_24E76D644(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24E8B2E24();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24E8A24E4(v16, a4 & 1);
    v11 = sub_24E76D644(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = v9;
  }

  else
  {
    sub_24EC25A88(v11, a2, a3, v9, v21);
  }
}

void sub_24E81FDB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24E76D644(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E200, &unk_24F93A8F0);
      sub_24E61DA68(a1, v19 + *(*(v20 - 8) + 72) * v12, &qword_27F23E200, &unk_24F93A8F0);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_24E8B2F8C();
    goto LABEL_7;
  }

  sub_24E8A2784(v15, a4 & 1);
  v21 = sub_24E76D644(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_24F92CF88();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24EC2647C(v12, a2, a3, a1, v18);
}

void sub_24E81FF78(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_24E76D644(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v31 = sub_24E76D644(a2, a3);
    if ((v22 & 1) == (v32 & 1))
    {
      v18 = v31;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_24F92CF88();
    __break(1u);
    return;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = *(v24 + 56);
    v26 = a7(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    v28(v30, a1, v29);
    return;
  }

LABEL_13:
  a8(v18, a2, a3, a1, v24);
}

void sub_24E820174(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24E7728F0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24E8B347C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24E8A3030(v16, a4 & 1);
    v11 = sub_24E7728F0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + (v11 << 6);

    sub_24E8242D8(a1, v22);
  }

  else
  {
    sub_24EC26604(v11, a2, a3, a1, v21);
  }
}

void sub_24E8202B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_24E7728F0(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_24E8B3304();
      v13 = v21;
      goto LABEL_8;
    }

    sub_24E8A2D70(v18, a5 & 1);
    v13 = sub_24E7728F0(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_24EC25A24(v13, a3, a4, a1, a2, v23);
  }
}

void sub_24E820408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_24E76D644(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_24E8B37A4();
      v13 = v21;
      goto LABEL_8;
    }

    sub_24E8A3614(v18, a5 & 1);
    v13 = sub_24E76D644(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_24EC25A24(v13, a3, a4, a1, a2, v23);
  }
}

void sub_24E820558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_24E7728F0(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_24E8B361C();
      v15 = v23;
      goto LABEL_8;
    }

    sub_24E8A334C(v20, a6 & 1);
    v15 = sub_24E7728F0(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
  }

  else
  {
    sub_24EC26038(v15, a4, a5, a1, a2, a3, v25);
  }
}

uint64_t sub_24E820718(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_24E76DAA8(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_24E8B3A7C();
      result = v17;
      goto LABEL_8;
    }

    sub_24E8A3B50(v14, a3 & 1);
    result = sub_24E76DAA8(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      type metadata accessor for InlinePresentationIntent(0);
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return sub_24EC2665C(result, a2, a1, v19);
  }

  return result;
}

void sub_24E820864(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_24E76D644(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_24E76D644(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    v28 = *(v27 + 56);
    v29 = *(v28 + 8 * v17);
    *(v28 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_24E820A20(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *v7;
  v15 = sub_24E7728CC(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      a4();
      v15 = v23;
      goto LABEL_8;
    }

    a5(v20, a3 & 1);
    v15 = sub_24E7728CC(a2);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v10;
  if (v21)
  {
    v26 = *(v25 + 56);
    v27 = *(v26 + 8 * v15);
    *(v26 + 8 * v15) = a1;

    return a6(v27);
  }

  else
  {

    return a7(v15, a2, a1, v25);
  }
}

void sub_24E820BC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_24E76D644(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_24E76D644(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_24F92CF88();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}