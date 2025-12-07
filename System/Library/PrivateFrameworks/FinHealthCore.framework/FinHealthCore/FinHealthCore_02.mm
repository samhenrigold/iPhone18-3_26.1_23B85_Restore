uint64_t sub_226E3F804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_226E1A598(a3, v25 - v10, &qword_27D7B6870, &qword_226E683B0);
  v12 = sub_226E63B80();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_226E15E98(v11, &qword_27D7B6870, &qword_226E683B0);
  }

  else
  {
    sub_226E63B70();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_226E63B40();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_226E639E0() + 32;
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

      sub_226E15E98(a3, &qword_27D7B6870, &qword_226E683B0);

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

  sub_226E15E98(a3, &qword_27D7B6870, &qword_226E683B0);
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

uint64_t sub_226E3FB04()
{
  v1[8] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  v1[9] = swift_task_alloc();
  type metadata accessor for TaskCollectionOrchestrator.JobRequest(0);
  v1[10] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v3 = sub_226E63590();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v4 = sub_226E638E0();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E3FD04, v0, 0);
}

uint64_t sub_226E3FD04()
{
  if (sub_226E63BC0())
  {
    v1 = v0[21];
    v2 = v0[18];
    v3 = v0[19];
    v4 = sub_226E56FC8();
    (*(v3 + 16))(v1, v4, v2);
    v5 = sub_226E638C0();
    v6 = sub_226E63C80();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_226DD4000, v5, v6, "processNextInQueue cancelled before pruning", v7, 2u);
      MEMORY[0x22AA8E1B0](v7, -1, -1);
    }

    v8 = v0[21];
    v9 = v0[18];
    v10 = v0[19];

    (*(v10 + 8))(v8, v9);
  }

  v11 = v0[17];
  v12 = v0[8];
  sub_226E63580();
  v13 = swift_task_alloc();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  swift_beginAccess();
  v14 = sub_226E473C8(sub_226E48B34, v13);
  v16 = *(*(v12 + 120) + 16);
  if (v16 < v14)
  {
    __break(1u);
    goto LABEL_19;
  }

  v18 = v0[16];
  v17 = v0[17];
  v19 = v0[15];
  sub_226E48CB8(v14, v16);

  swift_endAccess();
  v20 = *(v18 + 8);
  v0[22] = v20;
  v0[23] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v17, v19);
  if (sub_226E63BC0())
  {
    v22 = v0[19];
    v21 = v0[20];
    v23 = v0[18];
    v24 = sub_226E56FC8();
    (*(v22 + 16))(v21, v24, v23);
    v25 = sub_226E638C0();
    v26 = sub_226E63C80();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_226DD4000, v25, v26, "processNextInQueue cancelled after pruning", v27, 2u);
      MEMORY[0x22AA8E1B0](v27, -1, -1);
    }

    v29 = v0[19];
    v28 = v0[20];
    v30 = v0[18];

    (*(v29 + 8))(v28, v30);
  }

  if (*(*(v12 + 120) + 16))
  {
    v31 = v0[17];
    v32 = v0[8];
    sub_226E63580();
    v33 = swift_task_alloc();
    *(v33 + 16) = v32;
    *(v33 + 24) = v31;
    swift_beginAccess();
    sub_226E406F0(sub_226E48D78, v33);

    v34 = *(v12 + 120);
    if (*(v34 + 16))
    {
      v35 = v0[13];
      v36 = v0[14];
      v37 = v0[11];
      v38 = v0[10];
      v59 = v0[9];
      v39 = v0[8];
      v40 = *(v0[12] + 80);
      sub_226E1A598(v34 + ((v40 + 32) & ~v40), v36, &qword_27D7B6B18, &qword_226E68B70);
      sub_226E48CB8(0, 1);
      swift_endAccess();
      sub_226E1A598(v36, v35, &qword_27D7B6B18, &qword_226E68B70);

      sub_226E48E24(v35, v38);
      v42 = *v38;
      v41 = *(v38 + 8);
      v43 = *(v38 + 24);
      v58 = *(v38 + 16);
      v57 = *(v38 + 32);
      v56 = *(v38 + 40);
      v55 = *(v38 + 48);
      v44 = *(v36 + *(v37 + 48));
      v45 = swift_allocObject();
      v0[24] = v45;
      sub_226E19F54();
      v46 = swift_allocError();
      *v47 = 4;
      *(v45 + 16) = v46;
      *(v45 + 24) = 1;
      v48 = sub_226E63B80();
      (*(*(v48 - 8) + 56))(v59, 1, 1, v48);
      v50 = sub_226E48774(&qword_27D7B6B20, v49, type metadata accessor for TaskCollectionOrchestrator, &protocol conformance descriptor for TaskCollectionOrchestrator);
      v51 = swift_allocObject();
      *(v51 + 16) = v39;
      *(v51 + 24) = v50;
      *(v51 + 32) = v42;
      *(v51 + 40) = v41;
      *(v51 + 48) = v39;
      *(v51 + 56) = v45;
      *(v51 + 64) = v58;
      *(v51 + 72) = v43;
      *(v51 + 80) = v57;
      *(v51 + 88) = v56;
      *(v51 + 96) = v55;
      *(v51 + 104) = v44;
      swift_retain_n();

      v52 = sub_226E3F804(0, 0, v59, &unk_226E68CE8, v51);
      v0[25] = v52;
      *(v39 + 112) = v52;

      v14 = swift_task_alloc();
      v0[26] = v14;
      *v14 = v0;
      v14[1] = sub_226E40324;
      v15 = MEMORY[0x277D84F78] + 8;
      v16 = v52;

      return MEMORY[0x282200460](v14, v16, v15);
    }

LABEL_19:
    __break(1u);
    return MEMORY[0x282200460](v14, v16, v15);
  }

  *(v0[8] + 112) = 0;

  v53 = v0[1];

  return v53();
}

uint64_t sub_226E40324()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_226E40450, v1, 0);
}

uint64_t sub_226E40450()
{
  *(*(v0 + 64) + 112) = 0;

  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_226E404F0;

  return sub_226E3FB04();
}

uint64_t sub_226E404F0()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_226E40600, v1, 0);
}

uint64_t sub_226E40600()
{
  v1 = v0[22];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[10];

  sub_226E47FA0(v5);
  sub_226E15E98(v4, &qword_27D7B6B18, &qword_226E68B70);
  v1(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_226E406F0(uint64_t (*a1)(char *, char *), char *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_226E47DC8(v5);
  }

  result = sub_226E45C90(a1, a2);
  *v2 = v5;
  return result;
}

BOOL sub_226E407C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39[1] = a3;
  v41 = a2;
  v4 = sub_226E638E0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v40 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  MEMORY[0x28223BE20](v10);
  v12 = v39 - v11;
  v13 = type metadata accessor for TaskCollectionOrchestrator.JobRequest(0);
  v14 = MEMORY[0x28223BE20](v13);
  v39[0] = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = (v39 - v16);
  sub_226E1A598(a1, v12, &qword_27D7B6B18, &qword_226E68B70);

  sub_226E48E24(v12, v17);
  sub_226E63520();
  v19 = v18;
  v20 = sub_226E56FC8();
  v21 = *(v5 + 16);
  v21(v9, v20, v4);
  v22 = sub_226E638C0();
  v23 = sub_226E63C90();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = v19;
    _os_log_impl(&dword_226DD4000, v22, v23, "timeSinceLastRequest: %f", v24, 0xCu);
    MEMORY[0x22AA8E1B0](v24, -1, -1);
  }

  v25 = *(v5 + 8);
  v25(v9, v4);
  v26 = *sub_226E55268();
  if (v26 < v19)
  {
    v27 = v40;
    v21(v40, v20, v4);
    v28 = v39[0];
    sub_226E47F3C(v17, v39[0]);
    v29 = sub_226E638C0();
    v30 = sub_226E63C90();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 136315138;
      v33 = v28[1];
      v41 = *v28;
      v42 = v32;

      sub_226E47FA0(v28);
      v34 = sub_226E1FC98(v41, v33, &v42);

      *(v31 + 4) = v34;
      _os_log_impl(&dword_226DD4000, v29, v30, "Pruning expired task '%s' (waited too long)", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x22AA8E1B0](v32, -1, -1);
      MEMORY[0x22AA8E1B0](v31, -1, -1);

      v35 = v40;
    }

    else
    {

      sub_226E47FA0(v28);
      v35 = v27;
    }

    v25(v35, v4);
    v36 = *v17;
    v37 = v17[1];
    v43 = 2;
    sub_226E4577C(v36, v37, &v43);
  }

  sub_226E47FA0(v17);
  return v26 < v19;
}

uint64_t sub_226E40BD8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 136);
  v4 = *(v2 + 144);
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;

  return sub_226E48228(v3, v4);
}

uint64_t sub_226E40C24()
{
  v1 = sub_226E47DDC(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v0 + 128) = v1;
}

uint64_t sub_226E40C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 370) = v18;
  *(v8 + 184) = v15;
  *(v8 + 192) = v17;
  *(v8 + 369) = v16;
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 152) = a5;
  *(v8 + 160) = a6;
  *(v8 + 136) = a3;
  *(v8 + 144) = a4;
  *(v8 + 128) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v10 = sub_226E635C0();
  *(v8 + 232) = v10;
  *(v8 + 240) = *(v10 - 8);
  *(v8 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B40, &qword_226E68C98);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B48, &qword_226E68CA0);
  *(v8 + 272) = v11;
  v12 = *(v11 - 8);
  *(v8 + 280) = v12;
  *(v8 + 288) = v12;
  *(v8 + 296) = *(v12 + 64);
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E40EA8, a5, 0);
}

uint64_t sub_226E40EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 136);
  if (v5 < 0)
  {
LABEL_32:
    __break(1u);
    return MEMORY[0x2822004D0](a1, a2, a3, a4);
  }

  if (v5)
  {
    v6 = 0;
    v53 = *(v4 + 288);
    v61 = *(v4 + 272);
    v71 = *(v4 + 144);
    v54 = *(v4 + 240);
    v60 = (v54 + 32);
    while (1)
    {
      v11 = **(v4 + 144);
      v13 = v71[1];
      v12 = v71[2];
      v14 = v71[3];
      v15 = v71[4];
      v74 = v6;
      if (!v15)
      {
        break;
      }

      v69 = v71[2];
      v16 = v71[3];
LABEL_17:
      v21 = *(v4 + 272);
      v22 = *(v4 + 264);
      v23 = *(v4 + 248);
      v24 = *(v4 + 232);
      v62 = v11;
      v65 = *(v4 + 280);
      v67 = (v15 - 1) & v15;
      v25 = __clz(__rbit64(v15)) | (v16 << 6);
      (*(v54 + 16))(v23, *(v11 + 48) + *(v54 + 72) * v25, v24, a4);
      v26 = *(v11 + 56);
      v27 = *(v61 + 48);
      v72 = *(v26 + 16 * v25);
      (*(v54 + 32))(v22, v23, v24);
      *(v22 + v27) = v72;
      v28 = v21;
      v17 = v62;
      (*(v65 + 56))(v22, 0, 1, v28);

      v29 = v67;
      v20 = v16;
      v12 = v69;
LABEL_18:
      v30 = *(v4 + 280);
      v31 = *(v4 + 264);
      **(v4 + 144) = v17;
      v71[1] = v13;
      v71[2] = v12;
      v71[3] = v20;
      v71[4] = v29;
      a1 = (*(v30 + 48))(v31, 1);
      v10 = v74;
      if (a1 != 1)
      {
        v32 = *(v4 + 328);
        v33 = *(v4 + 320);
        v34 = *(v4 + 264);
        v35 = *(v4 + 232);
        v55 = *(v4 + 336);
        v56 = *(v4 + 224);
        v73 = *(v4 + 216);
        v70 = *(v4 + 370);
        v66 = *(v4 + 369);
        v68 = *(v4 + 192);
        v63 = *(v4 + 176);
        v64 = *(v4 + 184);
        v58 = *(v4 + 160);
        v59 = *(v4 + 168);
        v57 = *(v4 + 152);
        v36 = *(v61 + 48);
        v37 = *v60;
        (*v60)(v33, v34, v35);
        v38 = swift_allocObject();
        *(v38 + 16) = *(v34 + v36);
        v39 = (v32 + *(v61 + 48));
        v37(v32, v33, v35);
        *v39 = &unk_226E68CD0;
        v39[1] = v38;
        sub_226E26D94(v32, v55, &qword_27D7B6B48, &qword_226E68CA0);
        v40 = sub_226E63B80();
        v41 = *(v40 - 8);
        (*(v41 + 56))(v56, 1, 1, v40);
        sub_226E1A598(v55, v33, &qword_27D7B6B48, &qword_226E68CA0);
        v42 = (*(v53 + 80) + 89) & ~*(v53 + 80);
        v43 = swift_allocObject();
        *(v43 + 16) = 0;
        *(v43 + 24) = 0;
        *(v43 + 32) = v57;
        *(v43 + 40) = v58;
        *(v43 + 48) = v59;
        *(v43 + 56) = v63;
        *(v43 + 64) = v64;
        *(v43 + 72) = v66 & 1;
        *(v43 + 80) = v68;
        *(v43 + 88) = v70 & 1;
        sub_226E26D94(v33, v43 + v42, &qword_27D7B6B48, &qword_226E68CA0);
        sub_226E1A598(v56, v73, &qword_27D7B6870, &qword_226E683B0);
        LODWORD(v39) = (*(v41 + 48))(v73, 1, v40);

        v44 = *(v4 + 216);
        if (v39 == 1)
        {
          sub_226E15E98(*(v4 + 216), &qword_27D7B6870, &qword_226E683B0);
        }

        else
        {
          sub_226E63B70();
          (*(v41 + 8))(v44, v40);
        }

        if (*(v43 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v45 = sub_226E63B40();
          v47 = v46;
          swift_unknownObjectRelease();
        }

        else
        {
          v45 = 0;
          v47 = 0;
        }

        v48 = **(v4 + 128);

        if (v47 | v45)
        {
          v7 = v4 + 48;
          *(v4 + 48) = 0;
          *(v4 + 56) = 0;
          *(v4 + 64) = v45;
          *(v4 + 72) = v47;
        }

        else
        {
          v7 = 0;
        }

        v8 = *(v4 + 336);
        v9 = *(v4 + 224);
        *(v4 + 104) = 1;
        *(v4 + 112) = v7;
        *(v4 + 120) = v48;
        swift_task_create();

        sub_226E15E98(v9, &qword_27D7B6870, &qword_226E683B0);
        a1 = sub_226E15E98(v8, &qword_27D7B6B48, &qword_226E68CA0);
        v10 = v74;
      }

      v6 = v10 + 1;
      if (v6 == *(v4 + 136))
      {
        goto LABEL_28;
      }
    }

    v17 = **(v4 + 144);
    v18 = (v12 + 64) >> 6;
    if (v18 <= v14 + 1)
    {
      v19 = v14 + 1;
    }

    else
    {
      v19 = (v12 + 64) >> 6;
    }

    v20 = v19 - 1;
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v18)
      {
        (*(*(v4 + 280) + 56))(*(v4 + 264), 1, 1);
        v29 = 0;
        goto LABEL_18;
      }

      v15 = *(v13 + 8 * v16);
      ++v14;
      if (v15)
      {
        v69 = v71[2];
        v11 = **(v4 + 144);
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_28:
  v49 = sub_226E48774(&qword_27D7B6B20, a2, type metadata accessor for TaskCollectionOrchestrator, &protocol conformance descriptor for TaskCollectionOrchestrator);
  *(v4 + 344) = v49;
  v50 = *(v4 + 152);
  v51 = swift_task_alloc();
  *(v4 + 352) = v51;
  a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B50, &unk_226E68CA8);
  *v51 = v4;
  v51[1] = sub_226E415A0;
  a1 = v4 + 368;
  a2 = v50;
  a3 = v49;

  return MEMORY[0x2822004D0](a1, a2, a3, a4);
}

uint64_t sub_226E415A0()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_226E41DC8;
  }

  else
  {
    v4 = sub_226E416CC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_226E416CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(v4 + 368) & 1) == 0)
  {
    v7 = *(v4 + 144);
    v9 = *v7;
    v8 = v7[1];
    v11 = v7[2];
    v10 = v7[3];
    v12 = v7[4];
    if (!v12)
    {
      v14 = (v11 + 64) >> 6;
      if (v14 <= v10 + 1)
      {
        v15 = v10 + 1;
      }

      else
      {
        v15 = (v11 + 64) >> 6;
      }

      v16 = v15 - 1;
      while (1)
      {
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          (*(*(v4 + 280) + 56))(*(v4 + 256), 1, 1);
          v25 = 0;
          goto LABEL_16;
        }

        v12 = *(v8 + 8 * v13);
        ++v10;
        if (v12)
        {
          v65 = v11;
          goto LABEL_15;
        }
      }

      __break(1u);
      return MEMORY[0x2822004D0](a1, a2, a3, a4);
    }

    v65 = v11;
    v13 = v10;
LABEL_15:
    v17 = *(v4 + 272);
    v19 = *(v4 + 248);
    v18 = *(v4 + 256);
    v20 = *(v4 + 232);
    v21 = *(v4 + 240);
    v61 = *(v4 + 280);
    v63 = (v12 - 1) & v12;
    v22 = __clz(__rbit64(v12)) | (v13 << 6);
    (*(v21 + 16))(v19, *(v9 + 48) + *(v21 + 72) * v22, v20, a4);
    v23 = *(v9 + 56);
    v67 = v9;
    v24 = *(v17 + 48);
    v69 = *(v23 + 16 * v22);
    (*(v21 + 32))(v18, v19, v20);
    *(v18 + v24) = v69;
    v9 = v67;
    (*(v61 + 56))(v18, 0, 1, v17);

    v25 = v63;
    v11 = v65;
    v16 = v13;
LABEL_16:
    v26 = *(v4 + 280);
    v27 = *(v4 + 256);
    v28 = *(v4 + 144);
    *v28 = v9;
    v28[1] = v8;
    v28[2] = v11;
    v28[3] = v16;
    v28[4] = v25;
    if ((*(v26 + 48))(v27, 1) == 1)
    {
LABEL_27:
      v51 = *(v4 + 344);
      v52 = *(v4 + 152);
      v53 = swift_task_alloc();
      *(v4 + 352) = v53;
      a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B50, &unk_226E68CA8);
      *v53 = v4;
      v53[1] = sub_226E415A0;
      a1 = v4 + 368;
      a2 = v52;
      a3 = v51;

      return MEMORY[0x2822004D0](a1, a2, a3, a4);
    }

    v29 = *(v4 + 320);
    v30 = *(v4 + 304);
    v56 = *(v4 + 288);
    v31 = *(v4 + 272);
    v32 = *(v4 + 256);
    v33 = *(v4 + 232);
    v54 = *(v4 + 312);
    v55 = *(v4 + 208);
    v70 = *(v4 + 200);
    v68 = *(v4 + 370);
    v64 = *(v4 + 369);
    v66 = *(v4 + 192);
    v62 = *(v4 + 184);
    v59 = *(v4 + 168);
    v60 = *(v4 + 176);
    v57 = *(v4 + 152);
    v58 = *(v4 + 160);
    v34 = *(v31 + 48);
    v35 = *(*(v4 + 240) + 32);
    v35(v29, v32, v33);
    v36 = swift_allocObject();
    *(v36 + 16) = *(v32 + v34);
    v37 = (v30 + *(v31 + 48));
    v35(v30, v29, v33);
    *v37 = &unk_226E68CB8;
    v37[1] = v36;
    sub_226E26D94(v30, v54, &qword_27D7B6B48, &qword_226E68CA0);
    v38 = sub_226E63B80();
    v39 = *(v38 - 8);
    (*(v39 + 56))(v55, 1, 1, v38);
    sub_226E1A598(v54, v29, &qword_27D7B6B48, &qword_226E68CA0);
    v40 = (*(v56 + 80) + 89) & ~*(v56 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    v42 = (v41 + 16);
    *(v41 + 24) = 0;
    *(v41 + 32) = v57;
    *(v41 + 40) = v58;
    *(v41 + 48) = v59;
    *(v41 + 56) = v60;
    *(v41 + 64) = v62;
    *(v41 + 72) = v64 & 1;
    *(v41 + 80) = v66;
    *(v41 + 88) = v68 & 1;
    sub_226E26D94(v29, v41 + v40, &qword_27D7B6B48, &qword_226E68CA0);
    sub_226E1A598(v55, v70, &qword_27D7B6870, &qword_226E683B0);
    LODWORD(v40) = (*(v39 + 48))(v70, 1, v38);

    v43 = *(v4 + 200);
    if (v40 == 1)
    {
      sub_226E15E98(*(v4 + 200), &qword_27D7B6870, &qword_226E683B0);
      if (*v42)
      {
LABEL_19:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v44 = sub_226E63B40();
        v46 = v45;
        swift_unknownObjectRelease();
LABEL_22:
        v47 = **(v4 + 128);

        if (v46 | v44)
        {
          v48 = v4 + 16;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
          *(v4 + 32) = v44;
          *(v4 + 40) = v46;
        }

        else
        {
          v48 = 0;
        }

        v49 = *(v4 + 312);
        v50 = *(v4 + 208);
        *(v4 + 80) = 1;
        *(v4 + 88) = v48;
        *(v4 + 96) = v47;
        swift_task_create();

        sub_226E15E98(v50, &qword_27D7B6870, &qword_226E683B0);
        sub_226E15E98(v49, &qword_27D7B6B48, &qword_226E68CA0);
        goto LABEL_27;
      }
    }

    else
    {
      sub_226E63B70();
      (*(v39 + 8))(v43, v38);
      if (*v42)
      {
        goto LABEL_19;
      }
    }

    v44 = 0;
    v46 = 0;
    goto LABEL_22;
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_226E41DC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226E41EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v11;
  *(v8 + 64) = v13;
  *(v8 + 81) = v12;
  *(v8 + 80) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return MEMORY[0x2822009F8](sub_226E41F08, 0, 0);
}

uint64_t sub_226E41F08()
{
  v1 = *(v0 + 81);
  v2 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B48, &qword_226E68CA0);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_226E48F58;
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);

  return sub_226E42220(v9, v8, v6, v7, v2 & 1, v4, v1 & 1, v5);
}

uint64_t sub_226E41FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v11;
  *(v8 + 64) = v13;
  *(v8 + 81) = v12;
  *(v8 + 80) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return MEMORY[0x2822009F8](sub_226E4203C, 0, 0);
}

uint64_t sub_226E4203C()
{
  v1 = *(v0 + 81);
  v2 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B48, &qword_226E68CA0);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_226E42128;
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);

  return sub_226E42220(v9, v8, v6, v7, v2 & 1, v4, v1 & 1, v5);
}

uint64_t sub_226E42128()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226E42220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 128) = v17;
  *(v9 + 136) = v8;
  *(v9 + 112) = a8;
  *(v9 + 120) = v16;
  *(v9 + 36) = a7;
  *(v9 + 96) = a4;
  *(v9 + 104) = a6;
  *(v9 + 35) = a5;
  *(v9 + 80) = a2;
  *(v9 + 88) = a3;
  *(v9 + 72) = a1;
  v10 = sub_226E63F00();
  *(v9 + 144) = v10;
  *(v9 + 152) = *(v10 - 8);
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  v11 = sub_226E63F10();
  *(v9 + 176) = v11;
  *(v9 + 184) = *(v11 - 8);
  *(v9 + 192) = swift_task_alloc();
  v12 = sub_226E635C0();
  *(v9 + 200) = v12;
  *(v9 + 208) = *(v12 - 8);
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = swift_task_alloc();
  *(v9 + 248) = swift_task_alloc();
  *(v9 + 256) = swift_task_alloc();
  *(v9 + 264) = swift_task_alloc();
  v13 = sub_226E638E0();
  *(v9 + 272) = v13;
  *(v9 + 280) = *(v13 - 8);
  *(v9 + 288) = swift_task_alloc();
  *(v9 + 296) = swift_task_alloc();
  *(v9 + 304) = swift_task_alloc();
  *(v9 + 312) = swift_task_alloc();
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  *(v9 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E424B0, v8, 0);
}

void sub_226E424B0(uint64_t result)
{
  v70 = v1;
  v2 = *(v1 + 88);
  if (v2 < 0)
  {
    __break(1u);
    return;
  }

  if (!v2)
  {
    v27 = *(v1 + 304);
    v28 = *(v1 + 272);
    v29 = *(v1 + 280);
    v30 = *(v1 + 232);
    v31 = *(v1 + 200);
    v32 = *(v1 + 208);
    v33 = *(v1 + 112);
    v34 = sub_226E56FC8();
    (*(v29 + 16))(v27, v34, v28);
    (*(v32 + 16))(v30, v33, v31);

    v35 = sub_226E638C0();
    v36 = sub_226E63CA0();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v1 + 304);
    v40 = *(v1 + 272);
    v39 = *(v1 + 280);
    v41 = *(v1 + 232);
    v43 = *(v1 + 200);
    v42 = *(v1 + 208);
    if (v37)
    {
      v44 = *(v1 + 88);
      v61 = *(v1 + 80);
      v67 = *(v1 + 304);
      v45 = *(v1 + 72);
      v65 = *(v1 + 272);
      v46 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v69 = v63;
      *v46 = 134218498;
      *(v46 + 4) = v44;
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_226E1FC98(v45, v61, &v69);
      *(v46 + 22) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v47 = sub_226E63FE0();
      v49 = v48;
      (*(v42 + 8))(v41, v43);
      v50 = sub_226E1FC98(v47, v49, &v69);

      *(v46 + 24) = v50;
      _os_log_impl(&dword_226DD4000, v35, v36, "Exhausted all %ld retries for task %s, id: %s.", v46, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v63, -1, -1);
      MEMORY[0x22AA8E1B0](v46, -1, -1);

      (*(v39 + 8))(v67, v65);
    }

    else
    {

      (*(v42 + 8))(v41, v43);
      (*(v39 + 8))(v38, v40);
    }

LABEL_16:

    v54 = *(v1 + 8);

    v54();
    return;
  }

  *(v1 + 344) = 0;
  if (sub_226E63BC0())
  {
    v3 = *(v1 + 336);
    v4 = *(v1 + 272);
    v5 = *(v1 + 280);
    v6 = *(v1 + 264);
    v7 = *(v1 + 200);
    v8 = *(v1 + 208);
    v9 = *(v1 + 112);
    v10 = sub_226E56FC8();
    (*(v5 + 16))(v3, v10, v4);
    (*(v8 + 16))(v6, v9, v7);

    v11 = sub_226E638C0();
    v12 = sub_226E63C80();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v1 + 336);
    v16 = *(v1 + 272);
    v15 = *(v1 + 280);
    v17 = *(v1 + 264);
    v19 = *(v1 + 200);
    v18 = *(v1 + 208);
    if (v13)
    {
      v66 = *(v1 + 336);
      v20 = *(v1 + 72);
      v21 = *(v1 + 80);
      v64 = *(v1 + 272);
      v22 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v69 = v62;
      *v22 = 136315394;
      *(v22 + 4) = sub_226E1FC98(v20, v21, &v69);
      *(v22 + 12) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v23 = sub_226E63FE0();
      v25 = v24;
      (*(v18 + 8))(v17, v19);
      v26 = sub_226E1FC98(v23, v25, &v69);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_226DD4000, v11, v12, "Task %s, id: %s cancelled", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v62, -1, -1);
      MEMORY[0x22AA8E1B0](v22, -1, -1);

      (*(v15 + 8))(v66, v64);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
      (*(v15 + 8))(v14, v16);
    }

    v52 = *(v1 + 72);
    v53 = *(v1 + 80);
    LOBYTE(v69) = 2;
    sub_226E4577C(v52, v53, &v69);
    goto LABEL_16;
  }

  if (*(v1 + 36))
  {
    v68 = (*(v1 + 120) + **(v1 + 120));
    v51 = swift_task_alloc();
    *(v1 + 376) = v51;
    *v51 = v1;
    v51[1] = sub_226E430CC;

    v68();
  }

  else
  {
    v56 = *(v1 + 120);
    v55 = *(v1 + 128);
    v57 = *(v1 + 104);
    v58 = swift_allocObject();
    *(v1 + 352) = v58;
    *(v58 + 16) = v56;
    *(v58 + 24) = v55;

    v59 = swift_task_alloc();
    *(v1 + 360) = v59;
    *v59 = v1;
    v59[1] = sub_226E42C14;
    v60 = MEMORY[0x277D84F78] + 8;

    static Task<>.setTimeoutWithTaskGroup<A>(timeoutInterval:task:)(v59, &unk_226E68C60, v58, v60, v57);
  }
}

uint64_t sub_226E42C14()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = sub_226E43D24;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_226E42D3C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_226E42D3C(uint64_t a1)
{
  v39 = v1;
  v2 = v1[41];
  v3 = v1[34];
  v4 = v1[35];
  v5 = v1[32];
  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[14];
  v9 = sub_226E56FC8();
  (*(v4 + 16))(v2, v9, v3);
  (*(v7 + 16))(v5, v8, v6);

  v10 = sub_226E638C0();
  v11 = sub_226E63C80();

  if (os_log_type_enabled(v10, v11))
  {
    v35 = v1[34];
    v36 = v1[41];
    v12 = v1[32];
    v14 = v1[25];
    v13 = v1[26];
    v15 = v1[9];
    v16 = v1[10];
    v33 = v1[43] + 1;
    v34 = v1[35];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v38 = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_226E1FC98(v15, v16, &v38);
    *(v17 + 12) = 2080;
    sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_226E63FE0();
    v21 = v20;
    (*(v13 + 8))(v12, v14);
    v22 = sub_226E1FC98(v19, v21, &v38);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v33;
    _os_log_impl(&dword_226DD4000, v10, v11, "Task %s, id: %s succeeded: attempt #%ld", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA8E1B0](v18, -1, -1);
    MEMORY[0x22AA8E1B0](v17, -1, -1);

    (*(v34 + 8))(v36, v35);
  }

  else
  {
    v23 = v1[41];
    v24 = v1[34];
    v25 = v1[35];
    v26 = v1[32];
    v27 = v1[25];
    v28 = v1[26];

    (*(v28 + 8))(v26, v27);
    (*(v25 + 8))(v23, v24);
  }

  v29 = v1[9];
  v30 = v1[10];
  v37 = 0;
  sub_226E4577C(v29, v30, &v37);

  v31 = v1[1];

  return v31();
}

uint64_t sub_226E430CC()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_226E449E0;
  }

  else
  {
    v4 = sub_226E48F50;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_226E431F8()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = sub_226E48774(&qword_27D7B6898, 255, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_226E64020();
  sub_226E48774(&qword_27D7B68A0, 255, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_226E63F20();
  v5 = *(v2 + 8);
  v0[49] = v5;
  v0[50] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[51] = v6;
  *v6 = v0;
  v6[1] = sub_226E43384;
  v8 = v0[21];
  v7 = v0[22];

  return MEMORY[0x2822008C8](v8, v0 + 2, v7, v4);
}

uint64_t sub_226E43384()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 144);
  *(*v1 + 416) = v0;

  v3(v4, v5);
  if (v0)
  {
    v6 = sub_226E43C90;
    v7 = 0;
  }

  else
  {
    v8 = v2[17];
    (*(v2[23] + 8))(v2[24], v2[22]);
    v6 = sub_226E43528;
    v7 = v8;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_226E43528(uint64_t a1)
{
  v71 = v1;
  v2 = *(v1 + 344) + 1;
  if (v2 == *(v1 + 88))
  {
    v3 = *(v1 + 304);
    v4 = *(v1 + 272);
    v5 = *(v1 + 280);
    v6 = *(v1 + 232);
    v7 = *(v1 + 200);
    v8 = *(v1 + 208);
    v9 = *(v1 + 112);
    v10 = sub_226E56FC8();
    (*(v5 + 16))(v3, v10, v4);
    (*(v8 + 16))(v6, v9, v7);

    v11 = sub_226E638C0();
    v12 = sub_226E63CA0();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v1 + 304);
    v16 = *(v1 + 272);
    v15 = *(v1 + 280);
    v17 = *(v1 + 232);
    v19 = *(v1 + 200);
    v18 = *(v1 + 208);
    if (v13)
    {
      v20 = *(v1 + 88);
      v62 = *(v1 + 80);
      v67 = *(v1 + 304);
      v21 = *(v1 + 72);
      v65 = *(v1 + 272);
      v22 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v70 = v63;
      *v22 = 134218498;
      *(v22 + 4) = v20;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_226E1FC98(v21, v62, &v70);
      *(v22 + 22) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v23 = sub_226E63FE0();
      v25 = v24;
      (*(v18 + 8))(v17, v19);
      v26 = sub_226E1FC98(v23, v25, &v70);

      *(v22 + 24) = v26;
      _os_log_impl(&dword_226DD4000, v11, v12, "Exhausted all %ld retries for task %s, id: %s.", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v63, -1, -1);
      MEMORY[0x22AA8E1B0](v22, -1, -1);

      (*(v15 + 8))(v67, v65);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
      (*(v15 + 8))(v14, v16);
    }

LABEL_15:

    v55 = *(v1 + 8);

    return v55();
  }

  *(v1 + 344) = v2;
  if (sub_226E63BC0())
  {
    v27 = *(v1 + 336);
    v28 = *(v1 + 272);
    v29 = *(v1 + 280);
    v30 = *(v1 + 264);
    v31 = *(v1 + 200);
    v32 = *(v1 + 208);
    v33 = *(v1 + 112);
    v34 = sub_226E56FC8();
    (*(v29 + 16))(v27, v34, v28);
    (*(v32 + 16))(v30, v33, v31);

    v35 = sub_226E638C0();
    v36 = sub_226E63C80();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v1 + 336);
    v40 = *(v1 + 272);
    v39 = *(v1 + 280);
    v41 = *(v1 + 264);
    v43 = *(v1 + 200);
    v42 = *(v1 + 208);
    if (v37)
    {
      v68 = *(v1 + 336);
      v44 = *(v1 + 72);
      v45 = *(v1 + 80);
      v66 = *(v1 + 272);
      v46 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v70 = v64;
      *v46 = 136315394;
      *(v46 + 4) = sub_226E1FC98(v44, v45, &v70);
      *(v46 + 12) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v47 = sub_226E63FE0();
      v49 = v48;
      (*(v42 + 8))(v41, v43);
      v50 = sub_226E1FC98(v47, v49, &v70);

      *(v46 + 14) = v50;
      _os_log_impl(&dword_226DD4000, v35, v36, "Task %s, id: %s cancelled", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v64, -1, -1);
      MEMORY[0x22AA8E1B0](v46, -1, -1);

      (*(v39 + 8))(v68, v66);
    }

    else
    {

      (*(v42 + 8))(v41, v43);
      (*(v39 + 8))(v38, v40);
    }

    v53 = *(v1 + 72);
    v54 = *(v1 + 80);
    LOBYTE(v70) = 2;
    sub_226E4577C(v53, v54, &v70);
    goto LABEL_15;
  }

  if (*(v1 + 36))
  {
    v69 = (*(v1 + 120) + **(v1 + 120));
    v51 = swift_task_alloc();
    *(v1 + 376) = v51;
    *v51 = v1;
    v51[1] = sub_226E430CC;

    return v69();
  }

  else
  {
    v57 = *(v1 + 120);
    v56 = *(v1 + 128);
    v58 = *(v1 + 104);
    v59 = swift_allocObject();
    *(v1 + 352) = v59;
    *(v59 + 16) = v57;
    *(v59 + 24) = v56;

    v60 = swift_task_alloc();
    *(v1 + 360) = v60;
    *v60 = v1;
    v60[1] = sub_226E42C14;
    v61 = MEMORY[0x277D84F78] + 8;

    return static Task<>.setTimeoutWithTaskGroup<A>(timeoutInterval:task:)(v60, &unk_226E68C60, v59, v61, v58);
  }
}

uint64_t sub_226E43C90()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 136);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_226E48F54, v4, 0);
}

uint64_t sub_226E43D24()
{
  v136 = v0;

  v1 = *(v0 + 368);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6878, &qword_226E68920);
  if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 33) & 0xFE) == 6)
  {

LABEL_22:

    v88 = *(v0 + 8);

    return v88();
  }

  *(v0 + 64) = v1;
  v3 = v1;
  v4 = swift_dynamicCast();
  v5 = *(v0 + 272);
  v6 = *(v0 + 200);
  v7 = *(v0 + 112);
  v8 = (*(v0 + 208) + 16);
  v9 = (*(v0 + 280) + 16);
  if (v4)
  {
    v10 = *(v0 + 34) == 3;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v31 = *(v0 + 296);
    v131 = *(v0 + 200);
    v32 = *(v0 + 224);

    v33 = sub_226E56FC8();
    v132 = *v9;
    (*v9)(v31, v33, v5);
    v34 = v131;
    v130 = *v8;
    (*v8)(v32, v7, v34);

    v35 = sub_226E638C0();
    v36 = sub_226E63CA0();

    if (os_log_type_enabled(v35, v36))
    {
      v122 = *(v0 + 280);
      v124 = *(v0 + 272);
      v129 = *(v0 + 296);
      v116 = v36;
      v37 = *(v0 + 224);
      v38 = *(v0 + 200);
      v39 = *(v0 + 208);
      v41 = *(v0 + 72);
      v40 = *(v0 + 80);
      v118 = *(v0 + 344) + 1;
      v42 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v135 = v120;
      *v42 = 136315650;
      *(v42 + 4) = sub_226E1FC98(v41, v40, &v135);
      *(v42 + 12) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v43 = sub_226E63FE0();
      v45 = v44;
      v26 = *(v39 + 8);
      v26(v37, v38);
      v46 = sub_226E1FC98(v43, v45, &v135);

      *(v42 + 14) = v46;
      *(v42 + 22) = 2048;
      *(v42 + 24) = v118;
      _os_log_impl(&dword_226DD4000, v35, v116, "Task %s, id: %s timed out: attempt #%ld", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v120, -1, -1);
      MEMORY[0x22AA8E1B0](v42, -1, -1);

      v47 = v129;
      v128 = *(v122 + 8);
      v128(v47, v124);
    }

    else
    {
      v54 = *(v0 + 296);
      v55 = *(v0 + 272);
      v56 = *(v0 + 280);
      v57 = *(v0 + 224);
      v58 = *(v0 + 200);
      v59 = *(v0 + 208);

      v26 = *(v59 + 8);
      v26(v57, v58);
      v128 = *(v56 + 8);
      v128(v54, v55);
    }
  }

  else
  {
    v11 = *(v0 + 288);
    v12 = *(v0 + 216);

    v13 = sub_226E56FC8();
    v132 = *v9;
    (*v9)(v11, v13, v5);
    v130 = *v8;
    (*v8)(v12, v7, v6);

    v14 = v1;
    v15 = sub_226E638C0();
    v16 = sub_226E63CA0();

    if (os_log_type_enabled(v15, v16))
    {
      v121 = *(v0 + 280);
      v123 = *(v0 + 272);
      v127 = *(v0 + 288);
      v114 = v16;
      v18 = *(v0 + 208);
      v17 = *(v0 + 216);
      v19 = *(v0 + 200);
      v21 = *(v0 + 72);
      v20 = *(v0 + 80);
      v117 = *(v0 + 344) + 1;
      v22 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v135 = v119;
      *v22 = 136315906;
      *(v22 + 4) = sub_226E1FC98(v21, v20, &v135);
      *(v22 + 12) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v23 = sub_226E63FE0();
      v25 = v24;
      v26 = *(v18 + 8);
      v26(v17, v19);
      v27 = sub_226E1FC98(v23, v25, &v135);

      *(v22 + 14) = v27;
      *(v22 + 22) = 2048;
      *(v22 + 24) = v117;
      *(v22 + 32) = 2112;
      v28 = v1;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 34) = v29;
      *v115 = v29;
      _os_log_impl(&dword_226DD4000, v15, v114, "Task %s, id: %s failed: attempt #%ld: %@", v22, 0x2Au);
      sub_226E15E98(v115, &qword_27D7B6918, &qword_226E68950);
      MEMORY[0x22AA8E1B0](v115, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v119, -1, -1);
      MEMORY[0x22AA8E1B0](v22, -1, -1);

      v30 = v127;
      v128 = *(v121 + 8);
      v128(v30, v123);
    }

    else
    {
      v49 = *(v0 + 280);
      v48 = *(v0 + 288);
      v50 = *(v0 + 272);
      v52 = *(v0 + 208);
      v51 = *(v0 + 216);
      v53 = *(v0 + 200);

      v26 = *(v52 + 8);
      v26(v51, v53);
      v128 = *(v49 + 8);
      v128(v48, v50);
    }
  }

  v60 = *(v0 + 72);
  v61 = *(v0 + 80);
  LOBYTE(v135) = 1;
  sub_226E4577C(v60, v61, &v135);
  if (sub_226E63BC0())
  {
    v62 = *(v0 + 320);
    v63 = *(v0 + 272);
    v64 = *(v0 + 248);
    v65 = *(v0 + 200);
    v66 = *(v0 + 112);
    v67 = sub_226E56FC8();
    v132(v62, v67, v63);
    v130(v64, v66, v65);

    v68 = sub_226E638C0();
    v69 = sub_226E63CA0();

    v70 = os_log_type_enabled(v68, v69);
    v71 = *(v0 + 320);
    v72 = *(v0 + 272);
    v73 = *(v0 + 248);
    v74 = *(v0 + 200);
    if (v70)
    {
      v133 = v26;
      v125 = *(v0 + 320);
      v75 = *(v0 + 72);
      v76 = *(v0 + 80);
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v135 = v78;
      *v77 = 136315394;
      *(v77 + 4) = sub_226E1FC98(v75, v76, &v135);
      *(v77 + 12) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v79 = sub_226E63FE0();
      v81 = v80;
      v133(v73, v74);
      v82 = sub_226E1FC98(v79, v81, &v135);

      *(v77 + 14) = v82;
      _os_log_impl(&dword_226DD4000, v68, v69, "Cancelled during retry loop: task %s, id: %s", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v78, -1, -1);
      MEMORY[0x22AA8E1B0](v77, -1, -1);

      v128(v125, v72);
    }

    else
    {

      v26(v73, v74);
      v128(v71, v72);
    }

    v86 = *(v0 + 72);
    v87 = *(v0 + 80);
    LOBYTE(v135) = 2;
    sub_226E4577C(v86, v87, &v135);
    goto LABEL_22;
  }

  if (*(v0 + 35))
  {
    v83 = *(v0 + 344);
    v84 = *sub_226E55254();
    v85 = exp2(v83) * v84;
  }

  else
  {
    v85 = *(v0 + 96);
  }

  v90 = *(v0 + 312);
  v91 = *(v0 + 272);
  v92 = *(v0 + 240);
  v93 = *(v0 + 200);
  v94 = *(v0 + 112);
  v95 = sub_226E56FC8();
  v132(v90, v95, v91);
  v130(v92, v94, v93);

  v96 = sub_226E638C0();
  v97 = sub_226E63CA0();

  v98 = os_log_type_enabled(v96, v97);
  v99 = *(v0 + 312);
  v100 = *(v0 + 272);
  v101 = *(v0 + 240);
  v102 = *(v0 + 200);
  if (v98)
  {
    v134 = v26;
    v126 = *(v0 + 312);
    v103 = *(v0 + 72);
    v104 = *(v0 + 80);
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v135 = v106;
    *v105 = 136315650;
    *(v105 + 4) = sub_226E1FC98(v103, v104, &v135);
    *(v105 + 12) = 2080;
    sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v107 = sub_226E63FE0();
    v109 = v108;
    v134(v101, v102);
    v110 = sub_226E1FC98(v107, v109, &v135);

    *(v105 + 14) = v110;
    *(v105 + 22) = 2048;
    *(v105 + 24) = v85;
    _os_log_impl(&dword_226DD4000, v96, v97, "Task %s, id: %s will retry in %f seconds", v105, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA8E1B0](v106, -1, -1);
    MEMORY[0x22AA8E1B0](v105, -1, -1);

    v128(v126, v100);
  }

  else
  {

    v26(v101, v102);
    v128(v99, v100);
  }

  v111 = sub_226E640F0();
  v113 = v112;
  sub_226E64040();
  *(v0 + 40) = v111;
  *(v0 + 48) = v113;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x2822009F8](sub_226E431F8, 0, 0);
}

uint64_t sub_226E449E0()
{
  v136 = v0;
  v1 = *(v0 + 384);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6878, &qword_226E68920);
  if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 33) & 0xFE) == 6)
  {

LABEL_22:

    v88 = *(v0 + 8);

    return v88();
  }

  *(v0 + 64) = v1;
  v3 = v1;
  v4 = swift_dynamicCast();
  v5 = *(v0 + 272);
  v6 = *(v0 + 200);
  v7 = *(v0 + 112);
  v8 = (*(v0 + 208) + 16);
  v9 = (*(v0 + 280) + 16);
  if (v4)
  {
    v10 = *(v0 + 34) == 3;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v31 = *(v0 + 296);
    v131 = *(v0 + 200);
    v32 = *(v0 + 224);

    v33 = sub_226E56FC8();
    v132 = *v9;
    (*v9)(v31, v33, v5);
    v34 = v131;
    v130 = *v8;
    (*v8)(v32, v7, v34);

    v35 = sub_226E638C0();
    v36 = sub_226E63CA0();

    if (os_log_type_enabled(v35, v36))
    {
      v122 = *(v0 + 280);
      v124 = *(v0 + 272);
      v129 = *(v0 + 296);
      v116 = v36;
      v37 = *(v0 + 224);
      v38 = *(v0 + 200);
      v39 = *(v0 + 208);
      v41 = *(v0 + 72);
      v40 = *(v0 + 80);
      v118 = *(v0 + 344) + 1;
      v42 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v135 = v120;
      *v42 = 136315650;
      *(v42 + 4) = sub_226E1FC98(v41, v40, &v135);
      *(v42 + 12) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v43 = sub_226E63FE0();
      v45 = v44;
      v26 = *(v39 + 8);
      v26(v37, v38);
      v46 = sub_226E1FC98(v43, v45, &v135);

      *(v42 + 14) = v46;
      *(v42 + 22) = 2048;
      *(v42 + 24) = v118;
      _os_log_impl(&dword_226DD4000, v35, v116, "Task %s, id: %s timed out: attempt #%ld", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v120, -1, -1);
      MEMORY[0x22AA8E1B0](v42, -1, -1);

      v47 = v129;
      v128 = *(v122 + 8);
      v128(v47, v124);
    }

    else
    {
      v54 = *(v0 + 296);
      v55 = *(v0 + 272);
      v56 = *(v0 + 280);
      v57 = *(v0 + 224);
      v58 = *(v0 + 200);
      v59 = *(v0 + 208);

      v26 = *(v59 + 8);
      v26(v57, v58);
      v128 = *(v56 + 8);
      v128(v54, v55);
    }
  }

  else
  {
    v11 = *(v0 + 288);
    v12 = *(v0 + 216);

    v13 = sub_226E56FC8();
    v132 = *v9;
    (*v9)(v11, v13, v5);
    v130 = *v8;
    (*v8)(v12, v7, v6);

    v14 = v1;
    v15 = sub_226E638C0();
    v16 = sub_226E63CA0();

    if (os_log_type_enabled(v15, v16))
    {
      v121 = *(v0 + 280);
      v123 = *(v0 + 272);
      v127 = *(v0 + 288);
      v114 = v16;
      v18 = *(v0 + 208);
      v17 = *(v0 + 216);
      v19 = *(v0 + 200);
      v21 = *(v0 + 72);
      v20 = *(v0 + 80);
      v117 = *(v0 + 344) + 1;
      v22 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v135 = v119;
      *v22 = 136315906;
      *(v22 + 4) = sub_226E1FC98(v21, v20, &v135);
      *(v22 + 12) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v23 = sub_226E63FE0();
      v25 = v24;
      v26 = *(v18 + 8);
      v26(v17, v19);
      v27 = sub_226E1FC98(v23, v25, &v135);

      *(v22 + 14) = v27;
      *(v22 + 22) = 2048;
      *(v22 + 24) = v117;
      *(v22 + 32) = 2112;
      v28 = v1;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 34) = v29;
      *v115 = v29;
      _os_log_impl(&dword_226DD4000, v15, v114, "Task %s, id: %s failed: attempt #%ld: %@", v22, 0x2Au);
      sub_226E15E98(v115, &qword_27D7B6918, &qword_226E68950);
      MEMORY[0x22AA8E1B0](v115, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v119, -1, -1);
      MEMORY[0x22AA8E1B0](v22, -1, -1);

      v30 = v127;
      v128 = *(v121 + 8);
      v128(v30, v123);
    }

    else
    {
      v49 = *(v0 + 280);
      v48 = *(v0 + 288);
      v50 = *(v0 + 272);
      v52 = *(v0 + 208);
      v51 = *(v0 + 216);
      v53 = *(v0 + 200);

      v26 = *(v52 + 8);
      v26(v51, v53);
      v128 = *(v49 + 8);
      v128(v48, v50);
    }
  }

  v60 = *(v0 + 72);
  v61 = *(v0 + 80);
  LOBYTE(v135) = 1;
  sub_226E4577C(v60, v61, &v135);
  if (sub_226E63BC0())
  {
    v62 = *(v0 + 320);
    v63 = *(v0 + 272);
    v64 = *(v0 + 248);
    v65 = *(v0 + 200);
    v66 = *(v0 + 112);
    v67 = sub_226E56FC8();
    v132(v62, v67, v63);
    v130(v64, v66, v65);

    v68 = sub_226E638C0();
    v69 = sub_226E63CA0();

    v70 = os_log_type_enabled(v68, v69);
    v71 = *(v0 + 320);
    v72 = *(v0 + 272);
    v73 = *(v0 + 248);
    v74 = *(v0 + 200);
    if (v70)
    {
      v133 = v26;
      v125 = *(v0 + 320);
      v75 = *(v0 + 72);
      v76 = *(v0 + 80);
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v135 = v78;
      *v77 = 136315394;
      *(v77 + 4) = sub_226E1FC98(v75, v76, &v135);
      *(v77 + 12) = 2080;
      sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v79 = sub_226E63FE0();
      v81 = v80;
      v133(v73, v74);
      v82 = sub_226E1FC98(v79, v81, &v135);

      *(v77 + 14) = v82;
      _os_log_impl(&dword_226DD4000, v68, v69, "Cancelled during retry loop: task %s, id: %s", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8E1B0](v78, -1, -1);
      MEMORY[0x22AA8E1B0](v77, -1, -1);

      v128(v125, v72);
    }

    else
    {

      v26(v73, v74);
      v128(v71, v72);
    }

    v86 = *(v0 + 72);
    v87 = *(v0 + 80);
    LOBYTE(v135) = 2;
    sub_226E4577C(v86, v87, &v135);
    goto LABEL_22;
  }

  if (*(v0 + 35))
  {
    v83 = *(v0 + 344);
    v84 = *sub_226E55254();
    v85 = exp2(v83) * v84;
  }

  else
  {
    v85 = *(v0 + 96);
  }

  v90 = *(v0 + 312);
  v91 = *(v0 + 272);
  v92 = *(v0 + 240);
  v93 = *(v0 + 200);
  v94 = *(v0 + 112);
  v95 = sub_226E56FC8();
  v132(v90, v95, v91);
  v130(v92, v94, v93);

  v96 = sub_226E638C0();
  v97 = sub_226E63CA0();

  v98 = os_log_type_enabled(v96, v97);
  v99 = *(v0 + 312);
  v100 = *(v0 + 272);
  v101 = *(v0 + 240);
  v102 = *(v0 + 200);
  if (v98)
  {
    v134 = v26;
    v126 = *(v0 + 312);
    v103 = *(v0 + 72);
    v104 = *(v0 + 80);
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v135 = v106;
    *v105 = 136315650;
    *(v105 + 4) = sub_226E1FC98(v103, v104, &v135);
    *(v105 + 12) = 2080;
    sub_226E48774(&qword_27D7B6920, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v107 = sub_226E63FE0();
    v109 = v108;
    v134(v101, v102);
    v110 = sub_226E1FC98(v107, v109, &v135);

    *(v105 + 14) = v110;
    *(v105 + 22) = 2048;
    *(v105 + 24) = v85;
    _os_log_impl(&dword_226DD4000, v96, v97, "Task %s, id: %s will retry in %f seconds", v105, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA8E1B0](v106, -1, -1);
    MEMORY[0x22AA8E1B0](v105, -1, -1);

    v128(v126, v100);
  }

  else
  {

    v26(v101, v102);
    v128(v99, v100);
  }

  v111 = sub_226E640F0();
  v113 = v112;
  sub_226E64040();
  *(v0 + 40) = v111;
  *(v0 + 48) = v113;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x2822009F8](sub_226E431F8, 0, 0);
}

uint64_t sub_226E45694(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_226E17C50;

  return v5();
}

uint64_t sub_226E4577C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v7 = *a3;
  result = swift_beginAccess();
  v9 = v3[16];
  if (*(v9 + 16))
  {

    v10 = sub_226E20614(a1, a2);
    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }

    v12 = (*(v9 + 56) + 24 * v10);
    v14 = *v12;
    v13 = v12[1];
    for (i = v12[2]; ; i = 0)
    {

      if (v7)
      {
        break;
      }

LABEL_5:
      v16 = __OFADD__(v14++, 1);
      if (!v16)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_8:
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    i = 0;
    v13 = 0;
    v14 = 0;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  if (v7 == 1)
  {
    v16 = __OFADD__(v13++, 1);
    if (!v16)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  v16 = __OFADD__(i++, 1);
  if (v16)
  {
    __break(1u);
    return result;
  }

LABEL_15:
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v4[16];
  v4[16] = 0x8000000000000000;
  sub_226E47AB8(v14, v13, i, a1, a2, isUniquelyReferenced_nonNull_native);
  v4[16] = v20;
  result = swift_endAccess();
  v18 = v4[17];
  if (v18)
  {
    v19 = v4[18];
    v21[0] = v7;

    v18(a1, a2, v21);
    return sub_226E48228(v18, v19);
  }

  return result;
}

void *TaskCollectionOrchestrator.deinit()
{

  sub_226E48228(*(v0 + 136), *(v0 + 144));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t TaskCollectionOrchestrator.__deallocating_deinit()
{

  sub_226E48228(*(v0 + 136), *(v0 + 144));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_226E4599C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B58, qword_226E68CF0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70) - 8);
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

char *sub_226E45B8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B60, &qword_226E696C0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_226E45C90(uint64_t (*a1)(char *, char *), char *a2)
{
  v5 = v2[1];
  result = sub_226E63FD0();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
        v9 = sub_226E63B20();
        *(v9 + 16) = v8;
      }

      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_226E46094(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_226E45DE4(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_226E45DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = v5;
  v49 = a4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  v10 = MEMORY[0x28223BE20](v46);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v48 = &v36 - v13;
  result = MEMORY[0x28223BE20](v12);
  v47 = &v36 - v16;
  v38 = a2;
  if (a3 != a2)
  {
    v17 = *v4;
    v18 = *(v15 + 72);
    v19 = *v4 + v18 * (a3 - 1);
    v43 = -v18;
    v44 = v17;
    v20 = a1 - a3;
    v37 = v18;
    v21 = v17 + v18 * a3;
    v22 = &qword_27D7B6B18;
    v23 = &qword_226E68B70;
LABEL_3:
    v41 = v19;
    v42 = a3;
    v39 = v21;
    v40 = v20;
    v24 = v20;
    v25 = v19;
    while (1)
    {
      v50 = v24;
      v26 = v47;
      sub_226E1A598(v21, v47, v22, v23);
      v27 = v23;
      v28 = v22;
      v29 = v48;
      sub_226E1A598(v25, v48, v28, v27);
      v30 = v6;
      v31 = v49(v26, v29);
      v32 = v29;
      v22 = v28;
      v23 = v27;
      sub_226E15E98(v32, v22, v27);
      result = sub_226E15E98(v26, v22, v27);
      if (v30)
      {
        break;
      }

      if ((v31 & 1) == 0)
      {
        v6 = 0;
LABEL_11:
        a3 = v42 + 1;
        v19 = v41 + v37;
        v20 = v40 - 1;
        v21 = v39 + v37;
        if (v42 + 1 != v38)
        {
          goto LABEL_3;
        }

        return result;
      }

      v33 = v50;
      if (!v44)
      {
        __break(1u);
        return result;
      }

      v34 = v45;
      sub_226E26D94(v21, v45, v22, v27);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_226E26D94(v34, v25, v22, v27);
      v25 += v43;
      v21 += v43;
      v35 = __CFADD__(v33, 1);
      v24 = v33 + 1;
      v6 = 0;
      if (v35)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t sub_226E46094(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), char *a5, uint64_t a6)
{
  v7 = v6;
  v134 = a4;
  v135 = a5;
  v123 = a1;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  v131 = *(v127 - 8);
  v10 = MEMORY[0x28223BE20](v127);
  v124 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v126 = &v111 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v111 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v111 - v21;
  result = MEMORY[0x28223BE20](v20);
  v133 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_100:
    a6 = *v123;
    if (*v123)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v29 = v134;
      v17 = v135;
      if ((result & 1) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_102;
    }

    goto LABEL_140;
  }

  v120 = &v111 - v24;
  v121 = v22;
  v128 = v26;
  v125 = v25;
  v116 = a6;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v119 = v27;
  while (1)
  {
    v31 = v29;
    if (v29 + 1 >= v28)
    {
      v42 = v29 + 1;
    }

    else
    {
      v122 = v28;
      v132 = v7;
      v32 = *v133;
      v33 = *(v131 + 72);
      a6 = *v133 + v33 * (v29 + 1);
      v34 = v120;
      sub_226E1A598(a6, v120, &qword_27D7B6B18, &qword_226E68B70);
      v130 = v33;
      v35 = v121;
      sub_226E1A598(v32 + v33 * v29, v121, &qword_27D7B6B18, &qword_226E68B70);
      v36 = v132;
      LODWORD(v132) = v134(v34, v35);
      if (v36)
      {
        sub_226E15E98(v35, &qword_27D7B6B18, &qword_226E68B70);
        sub_226E15E98(v34, &qword_27D7B6B18, &qword_226E68B70);
      }

      v118 = v30;
      v115 = v17;
      sub_226E15E98(v35, &qword_27D7B6B18, &qword_226E68B70);
      result = sub_226E15E98(v34, &qword_27D7B6B18, &qword_226E68B70);
      v114 = v122 - 1;
      v129 = v122 - 2;
      v37 = v130;
      v38 = v32 + v130 * (v29 + 2);
      v117 = v29;
      v39 = v119;
      while (v129 != v29)
      {
        sub_226E1A598(v38, v39, &qword_27D7B6B18, &qword_226E68B70);
        v40 = v128;
        sub_226E1A598(a6, v128, &qword_27D7B6B18, &qword_226E68B70);
        v41 = v134(v39, v40);
        sub_226E15E98(v40, &qword_27D7B6B18, &qword_226E68B70);
        result = sub_226E15E98(v39, &qword_27D7B6B18, &qword_226E68B70);
        ++v29;
        v37 = v130;
        v38 += v130;
        a6 += v130;
        if ((v132 ^ v41))
        {
          v42 = v29 + 1;
          goto LABEL_11;
        }
      }

      v29 = v114;
      v42 = v122;
LABEL_11:
      v17 = v115;
      v7 = 0;
      v31 = v117;
      if (v132)
      {
        v30 = v118;
        if (v42 < v117)
        {
          goto LABEL_134;
        }

        if (v117 <= v29)
        {
          a6 = v37 * (v42 - 1);
          v43 = v42 * v37;
          v122 = v42;
          v44 = v117;
          v29 = v117 * v37;
          do
          {
            if (v44 != --v42)
            {
              v132 = v7;
              v45 = *v133;
              if (!*v133)
              {
                goto LABEL_138;
              }

              sub_226E26D94(v45 + v29, v124, &qword_27D7B6B18, &qword_226E68B70);
              if (v29 < a6 || v45 + v29 >= (v45 + v43))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v29 != a6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_226E26D94(v124, v45 + a6, &qword_27D7B6B18, &qword_226E68B70);
              v7 = v132;
              v37 = v130;
            }

            ++v44;
            a6 -= v37;
            v43 -= v37;
            v29 += v37;
          }

          while (v44 < v42);
          v17 = v115;
          v42 = v122;
        }
      }

      else
      {
        v30 = v118;
      }
    }

    v46 = v133[1];
    if (v42 >= v46)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v42, v31))
    {
      goto LABEL_130;
    }

    if (v42 - v31 >= v116)
    {
      goto LABEL_35;
    }

    if (__OFADD__(v31, v116))
    {
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    if (v31 + v116 >= v46)
    {
      v47 = v133[1];
    }

    else
    {
      v47 = v31 + v116;
    }

    if (v47 < v31)
    {
      goto LABEL_133;
    }

    if (v42 == v47)
    {
LABEL_35:
      a6 = v42;
      if (v42 < v31)
      {
        goto LABEL_129;
      }
    }

    else
    {
      v132 = v7;
      v95 = *v133;
      v96 = *(v131 + 72);
      v97 = *v133 + v96 * (v42 - 1);
      v129 = -v96;
      v130 = v95;
      v117 = v31;
      v98 = (v31 - v42);
      v112 = v96;
      v99 = v95 + v42 * v96;
      v113 = v47;
      do
      {
        v122 = v42;
        v114 = v99;
        v100 = v99;
        v115 = v98;
        v118 = v97;
        do
        {
          sub_226E1A598(v100, v17, &qword_27D7B6B18, &qword_226E68B70);
          v29 = v17;
          v101 = v125;
          sub_226E1A598(v97, v125, &qword_27D7B6B18, &qword_226E68B70);
          v102 = v132;
          v103 = v134(v29, v101);
          v132 = v102;
          if (v102)
          {
            sub_226E15E98(v101, &qword_27D7B6B18, &qword_226E68B70);
            sub_226E15E98(v29, &qword_27D7B6B18, &qword_226E68B70);
          }

          v104 = v103;
          sub_226E15E98(v101, &qword_27D7B6B18, &qword_226E68B70);
          result = sub_226E15E98(v29, &qword_27D7B6B18, &qword_226E68B70);
          v17 = v29;
          if ((v104 & 1) == 0)
          {
            break;
          }

          if (!v130)
          {
            goto LABEL_136;
          }

          v105 = v126;
          sub_226E26D94(v100, v126, &qword_27D7B6B18, &qword_226E68B70);
          swift_arrayInitWithTakeFrontToBack();
          sub_226E26D94(v105, v97, &qword_27D7B6B18, &qword_226E68B70);
          v97 += v129;
          v100 += v129;
        }

        while (!__CFADD__(v98++, 1));
        v42 = v122 + 1;
        v97 = &v118[v112];
        v98 = v115 - 1;
        v99 = v114 + v112;
        a6 = v113;
      }

      while (v122 + 1 != v113);
      v7 = v132;
      v31 = v117;
      if (v113 < v117)
      {
        goto LABEL_129;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v48 = v7;
    if ((result & 1) == 0)
    {
      result = sub_226E45B8C(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v50 = *(v30 + 2);
    v49 = *(v30 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      result = sub_226E45B8C((v49 > 1), v50 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v51;
    v52 = &v30[16 * v50];
    *(v52 + 4) = v31;
    *(v52 + 5) = a6;
    v29 = a6;
    a6 = *v123;
    if (!*v123)
    {
      goto LABEL_139;
    }

    if (v50)
    {
      break;
    }

    v7 = v48;
LABEL_87:
    v28 = v133[1];
    if (v29 >= v28)
    {
      goto LABEL_100;
    }
  }

  v7 = v48;
  while (1)
  {
    v53 = v51 - 1;
    if (v51 >= 4)
    {
      v58 = &v30[16 * v51 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_116;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_117;
      }

      v65 = &v30[16 * v51];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_119;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_122;
      }

      if (v69 >= v61)
      {
        v87 = &v30[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_128;
        }

        if (v56 < v90)
        {
          v53 = v51 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v51 == 3)
    {
      v54 = *(v30 + 4);
      v55 = *(v30 + 5);
      v64 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      v57 = v64;
LABEL_56:
      if (v57)
      {
        goto LABEL_118;
      }

      v70 = &v30[16 * v51];
      v72 = *v70;
      v71 = *(v70 + 1);
      v73 = __OFSUB__(v71, v72);
      v74 = v71 - v72;
      v75 = v73;
      if (v73)
      {
        goto LABEL_121;
      }

      v76 = &v30[16 * v53 + 32];
      v78 = *v76;
      v77 = *(v76 + 1);
      v64 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v64)
      {
        goto LABEL_124;
      }

      if (__OFADD__(v74, v79))
      {
        goto LABEL_125;
      }

      if (v74 + v79 >= v56)
      {
        if (v56 < v79)
        {
          v53 = v51 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v80 = &v30[16 * v51];
    v82 = *v80;
    v81 = *(v80 + 1);
    v64 = __OFSUB__(v81, v82);
    v74 = v81 - v82;
    v75 = v64;
LABEL_70:
    if (v75)
    {
      goto LABEL_120;
    }

    v83 = &v30[16 * v53];
    v85 = *(v83 + 4);
    v84 = *(v83 + 5);
    v64 = __OFSUB__(v84, v85);
    v86 = v84 - v85;
    if (v64)
    {
      goto LABEL_123;
    }

    if (v86 < v74)
    {
      goto LABEL_87;
    }

LABEL_77:
    v91 = v53 - 1;
    if (v53 - 1 >= v51)
    {
      break;
    }

    if (!*v133)
    {
      goto LABEL_135;
    }

    v92 = *&v30[16 * v91 + 32];
    v93 = *&v30[16 * v53 + 40];
    sub_226E46BC8(*v133 + *(v131 + 72) * v92, *v133 + *(v131 + 72) * *&v30[16 * v53 + 32], *v133 + *(v131 + 72) * v93, a6, v134, v135);
    if (v7)
    {
    }

    if (v93 < v92)
    {
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_226E472C4(v30);
    }

    if (v91 >= *(v30 + 2))
    {
      goto LABEL_115;
    }

    v94 = &v30[16 * v91];
    *(v94 + 4) = v92;
    *(v94 + 5) = v93;
    v136 = v30;
    result = sub_226E47238(v53);
    v30 = v136;
    v51 = *(v136 + 2);
    if (v51 <= 1)
    {
      goto LABEL_87;
    }
  }

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
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  result = sub_226E472C4(v30);
  v30 = result;
LABEL_102:
  v136 = v30;
  v107 = *(v30 + 2);
  if (v107 < 2)
  {
  }

  while (*v133)
  {
    v108 = *&v30[16 * v107];
    v109 = *&v30[16 * v107 + 24];
    sub_226E46BC8(*v133 + *(v131 + 72) * v108, *v133 + *(v131 + 72) * *&v30[16 * v107 + 16], *v133 + *(v131 + 72) * v109, a6, v29, v17);
    if (v7)
    {
    }

    if (v109 < v108)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_226E472C4(v30);
    }

    if (v107 - 2 >= *(v30 + 2))
    {
      goto LABEL_127;
    }

    v110 = &v30[16 * v107];
    *v110 = v108;
    *(v110 + 1) = v109;
    v136 = v30;
    result = sub_226E47238(v107 - 1);
    v30 = v136;
    v107 = *(v136 + 2);
    if (v107 <= 1)
    {
    }
  }

LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}

unint64_t sub_226E46BC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v64 = a6;
  v65 = a5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  v12 = MEMORY[0x28223BE20](v63);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v60 = &v53 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  result = MEMORY[0x28223BE20](v17);
  v22 = &v53 - v21;
  v62 = *(v23 + 72);
  if (!v62)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  result = a2;
  if (a2 - a1 == 0x8000000000000000 && v62 == -1)
  {
    goto LABEL_67;
  }

  v24 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v62 != -1)
  {
    v61 = a3;
    v25 = (a2 - a1) / v62;
    v69 = a1;
    v68 = a4;
    if (v25 < v24 / v62)
    {
      v26 = v25 * v62;
      if (a4 < a1 || a1 + v26 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = a2;
LABEL_17:
      v60 = a4 + v26;
      v66 = v6;
      v67 = a4 + v26;
      if (v26 >= 1 && result < v61)
      {
        v29 = &qword_27D7B6B18;
        v59 = v19;
        while (1)
        {
          v30 = result;
          sub_226E1A598(result, v22, v29, &qword_226E68B70);
          sub_226E1A598(a4, v19, v29, &qword_226E68B70);
          v31 = v29;
          v32 = v66;
          v33 = v65(v22, v19);
          v66 = v32;
          if (v32)
          {
            break;
          }

          v34 = v33;
          sub_226E15E98(v19, v29, &qword_226E68B70);
          sub_226E15E98(v22, v29, &qword_226E68B70);
          if (v34)
          {
            v35 = v62;
            if (a1 < v30 || a1 >= v30 + v62)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = v30 + v35;
          }

          else
          {
            v35 = v62;
            v36 = a4 + v62;
            if (a1 < a4 || a1 >= v36)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v68 = v36;
            a4 += v35;
            result = v30;
          }

          a1 += v35;
          v69 = a1;
          if (a4 < v60)
          {
            v29 = v31;
            v19 = v59;
            if (result < v61)
            {
              continue;
            }
          }

          goto LABEL_65;
        }

        sub_226E15E98(v19, &qword_27D7B6B18, &qword_226E68B70);
        sub_226E15E98(v22, &qword_27D7B6B18, &qword_226E68B70);
      }

LABEL_65:
      sub_226E472D8(&v69, &v68, &v67);
      return 1;
    }

    v27 = v24 / v62 * v62;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_41:
        v37 = a4 + v27;
        if (v27 >= 1)
        {
          v38 = v61;
          v39 = -v62;
          v40 = v37;
          v56 = v14;
          v57 = a1;
          do
          {
            v54 = v37;
            v58 = result;
            v59 = (result + v39);
            while (1)
            {
              if (result <= a1)
              {
                v66 = v7;
                v69 = result;
                v37 = v54;
                goto LABEL_62;
              }

              v62 = v38;
              v42 = v7;
              v43 = a4;
              v55 = v37;
              v66 = v40;
              v61 = v40 + v39;
              v44 = v60;
              sub_226E1A598(v40 + v39, v60, &qword_27D7B6B18, &qword_226E68B70);
              sub_226E1A598(v59, v14, &qword_27D7B6B18, &qword_226E68B70);
              v45 = v65(v44, v14);
              if (v42)
              {
                sub_226E15E98(v14, &qword_27D7B6B18, &qword_226E68B70);
                sub_226E15E98(v44, &qword_27D7B6B18, &qword_226E68B70);
                v69 = v58;
                v67 = v55;
                goto LABEL_65;
              }

              v46 = v45;
              v47 = v62;
              v48 = v62 + v39;
              sub_226E15E98(v14, &qword_27D7B6B18, &qword_226E68B70);
              sub_226E15E98(v44, &qword_27D7B6B18, &qword_226E68B70);
              if (v46)
              {
                break;
              }

              v49 = v61;
              v37 = v61;
              v38 = v48;
              if (v47 < v66 || v48 >= v66)
              {
                v41 = v61;
                swift_arrayInitWithTakeFrontToBack();
                v37 = v41;
                a4 = v43;
              }

              else
              {
                a4 = v43;
                if (v47 != v66)
                {
                  v50 = v61;
                  swift_arrayInitWithTakeBackToFront();
                  v37 = v50;
                }
              }

              v40 = v37;
              v7 = 0;
              v14 = v56;
              a1 = v57;
              result = v58;
              if (v49 <= a4)
              {
                goto LABEL_59;
              }
            }

            v38 = v48;
            if (v47 < v58 || v48 >= v58)
            {
              v52 = v59;
              swift_arrayInitWithTakeFrontToBack();
              result = v52;
              a4 = v43;
            }

            else
            {
              result = v59;
              a4 = v43;
              if (v47 != v58)
              {
                v51 = v59;
                swift_arrayInitWithTakeBackToFront();
                result = v51;
              }
            }

            v40 = v66;
            v7 = 0;
            v14 = v56;
            a1 = v57;
            v37 = v55;
          }

          while (v66 > a4);
        }

LABEL_59:
        v66 = v7;
        v69 = result;
LABEL_62:
        v67 = v37;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = a2;
    goto LABEL_41;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_226E47238(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_226E472C4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_226E472D8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
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

uint64_t sub_226E473C8(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = *v4;
  result = sub_226E476EC(a1, a2, *v4);
  if (!v3)
  {
    v46 = 0;
    if (v19)
    {
      return v17[2];
    }

    v39 = v16;
    v40 = a1;
    v35 = v14;
    v36 = v11;
    v34 = v4;
    v44 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = v17 + 2;
      v21 = v17[2];
      if (v20 == v21)
      {
        return v44;
      }

      v37 = v8;
      v38 = a2;
      while (v20 < v21)
      {
        v23 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v45 = v17;
        v41 = v23;
        v24 = *(v8 + 72);
        v42 = v24 * v20;
        v43 = v17 + v23;
        v25 = v39;
        sub_226E1A598(v17 + v23 + v24 * v20, v39, &qword_27D7B6B18, &qword_226E68B70);
        v26 = v46;
        v27 = v40(v25);
        result = sub_226E15E98(v25, &qword_27D7B6B18, &qword_226E68B70);
        v46 = v26;
        if (v26)
        {
          return result;
        }

        if (v27)
        {
          v8 = v37;
          v17 = v45;
        }

        else
        {
          v28 = v44;
          if (v20 == v44)
          {
            v8 = v37;
            v17 = v45;
          }

          else
          {
            if ((v44 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v29 = *v22;
            if (v44 >= *v22)
            {
              goto LABEL_27;
            }

            v30 = v24 * v44;
            v31 = v43;
            result = sub_226E1A598(&v43[v24 * v44], v35, &qword_27D7B6B18, &qword_226E68B70);
            if (v20 >= v29)
            {
              goto LABEL_28;
            }

            v32 = v42;
            sub_226E1A598(&v31[v42], v36, &qword_27D7B6B18, &qword_226E68B70);
            v17 = v45;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_226E47DC8(v17);
            }

            v33 = v17 + v41;
            result = sub_226E48EE0(v36, v17 + v41 + v30);
            if (v20 >= v17[2])
            {
              goto LABEL_29;
            }

            result = sub_226E48EE0(v35, &v33[v32]);
            *v34 = v17;
            v8 = v37;
            v28 = v44;
          }

          v44 = v28 + 1;
        }

        ++v20;
        v22 = v17 + 2;
        v21 = v17[2];
        if (v20 == v21)
        {
          return v44;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_226E476EC(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70) - 8);
    v9 = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_226E477F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B30, &qword_226E68C50);
  v36 = v4;
  result = sub_226E63F60();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v37 = *v25;
      v26 = *(v25 + 16);
      if ((v36 & 1) == 0)
      {
      }

      sub_226E640A0();
      sub_226E63A00();
      result = sub_226E640C0();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v37;
      *(v17 + 16) = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_226E47AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_226E20614(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_226E477F8(v20, a6 & 1);
      v15 = sub_226E20614(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        sub_226E64010();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_226E47C48();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a4;
  v27[1] = a5;
  v28 = (v25[7] + 24 * v15);
  *v28 = a1;
  v28[1] = a2;
  v28[2] = a3;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25[2] = v30;
}

void sub_226E47C48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B30, &qword_226E68C50);
  v2 = *v0;
  v3 = sub_226E63F50();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v25;
        *(v26 + 16) = v23;
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
}

unint64_t sub_226E47DDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B30, &qword_226E68C50);
    v3 = sub_226E63F70();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_226E20614(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

uint64_t type metadata accessor for TaskCollectionOrchestrator.JobRequest(uint64_t a1)
{
  result = qword_27D7B7470;
  if (!qword_27D7B7470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226E47F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskCollectionOrchestrator.JobRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226E47FA0(uint64_t a1)
{
  v2 = type metadata accessor for TaskCollectionOrchestrator.JobRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_226E47FFC(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_226E4802C()
{
  v2 = v0[5];
  v11 = v0[4];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_226E1A614;

  return sub_226E3EBB4(v6, v7, v8, v11, v2, v3, v4, v5);
}

id sub_226E48124(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_226E48130()
{
  v2 = v0[5];
  v11 = v0[4];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_226E17C50;

  return sub_226E3EBB4(v6, v7, v8, v11, v2, v3, v4, v5);
}

uint64_t sub_226E48228(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t dispatch thunk of TaskCollectionOrchestrator.processAndWait(label:iterations:fixedDelay:timeout:basePriority:executionPolicy:tasks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(*v10 + 232) + **(*v10 + 232));
  v18 = swift_task_alloc();
  *(v11 + 16) = v18;
  *v18 = v11;
  v18[1] = sub_226E1A614;

  return v20(a1, a2, a3, a4, a5 & 1, a6, a7 & 1, a8, a9, a10);
}

void sub_226E48440(uint64_t a1)
{
  sub_226E484DC();
  if (v1 <= 0x3F)
  {
    sub_226E63590();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_226E484DC()
{
  if (!qword_27D7B6B28)
  {
    v0 = sub_226E63D80();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7B6B28);
    }
  }
}

uint64_t sub_226E4852C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E1A614;

  return sub_226E45694(v3, v2);
}

uint64_t sub_226E485C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E1A614;

  return sub_226E32DC0(a1, v4);
}

uint64_t sub_226E4867C(uint64_t a1, uint64_t a2)
{
  v4 = v2[3];
  v11 = v2[2];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_226E17C50;

  return sub_226E40C78(v9, a2, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_226E48774(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_226E487BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B48, &qword_226E68CA0);
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_226E1A614;

  return sub_226E41FF4(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_66Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B48, &qword_226E68CA0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 89) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_226E635C0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226E48A00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B48, &qword_226E68CA0);
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_226E1A614;

  return sub_226E41EC0(v7, v8, v9, v2, v3, v4, v5, v6);
}

unint64_t sub_226E48B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_226E48CB8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_226E4599C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_226E48B64(v6, a2, 0);
  *v2 = v4;
  return result;
}

BOOL sub_226E48D78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskCollectionOrchestrator.JobRequest(0);
  sub_226E63520();
  v6 = v5;
  v7 = sub_226E55294();
  v8 = v6 * *v7 + *(a1 + *(v4 + 36));
  sub_226E63520();
  return v9 * *v7 + *(a2 + *(v4 + 36)) < v8;
}

uint64_t sub_226E48E24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskCollectionOrchestrator.JobRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_226E48EE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B18, &qword_226E68B70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_226E48F5C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_226E639B0();
  v2 = [v0 initWithSuiteName_];

  return v2;
}

uint64_t sub_226E48FE0(__int128 *a1)
{
  v2 = swift_allocObject();
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_226E639B0();
  v5 = [v3 initWithSuiteName_];

  *(v2 + 56) = v5;
  sub_226E49104(a1, v2 + 16);
  return v2;
}

uint64_t sub_226E4907C(__int128 *a1)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_226E639B0();
  v5 = [v3 initWithSuiteName_];

  *(v1 + 56) = v5;
  sub_226E49104(a1, v1 + 16);
  return v1;
}

uint64_t sub_226E49104(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_226E4911C(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a1;
  v18 = a2;
  v5 = sub_226E62FC0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226E637E0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 2;
  result = static FinHealthFeatureFlag.isEnabled(_:)(&v19);
  if (result)
  {
    result = (*(*v3 + 136))();
    if (result)
    {
      (*(v6 + 16))(v8, v17, v5);
      v14 = v18;

      sub_226E49334(v8, v14, a3, v12);
      v15 = v3[5];
      v16 = v3[6];
      __swift_project_boxed_opaque_existential_1(v3 + 2, v15);
      (*(v16 + 8))(v12, v15, v16);
      return (*(v10 + 8))(v12, v9);
    }
  }

  return result;
}

uint64_t sub_226E49334@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a3;
  v78 = a2;
  v83 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B68, &qword_226E68D10);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = &v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B70, &qword_226E68D18);
  MEMORY[0x28223BE20](v7 - 8);
  v80 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B78, &unk_226E68D20);
  MEMORY[0x28223BE20](v9 - 8);
  v79 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6858, &qword_226E688C0);
  MEMORY[0x28223BE20](v11 - 8);
  v76 = &v66 - v12;
  v13 = sub_226E635C0();
  v72 = *(v13 - 8);
  v73 = v13;
  MEMORY[0x28223BE20](v13);
  v71 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226E62D70();
  v74 = *(v15 - 8);
  v75 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B80, &qword_226E68D30);
  MEMORY[0x28223BE20](v18 - 8);
  v70 = &v66 - v19;
  v20 = sub_226E62EA0();
  v68 = *(v20 - 8);
  v69 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_226E63670();
  v77 = *(v85 - 8);
  v23 = MEMORY[0x28223BE20](v85);
  v67 = (&v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v84 = &v66 - v25;
  v26 = sub_226E62E70();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_226E63660();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = (&v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v86 = &v66 - v35;
  sub_226E62F00();
  v36 = (*(v27 + 88))(v29, v26);
  if (v36 == *MEMORY[0x277CC6FE0])
  {
    (*(v31 + 13))(v34, *MEMORY[0x277D208C8], v30);
    v37 = v31;
  }

  else if (v36 == *MEMORY[0x277CC7018])
  {
    v37 = v31;
    (*(v31 + 13))(v34, *MEMORY[0x277D208B8], v30);
  }

  else
  {
    *v34 = 0;
    (*(v31 + 13))(v34, *MEMORY[0x277D208C0], v30);
    v38 = v29;
    v37 = v31;
    (*(v27 + 8))(v38, v26);
  }

  (*(v37 + 4))(v86, v34, v30);
  v39 = a1;
  sub_226E62F90();
  v41 = v68;
  v40 = v69;
  v42 = (*(v68 + 88))(v22, v69);
  v43 = v67;
  if (v42 == *MEMORY[0x277CC7210])
  {
    v44 = *MEMORY[0x277D208D0];
    v45 = v77;
  }

  else
  {
    v45 = v77;
    if (v42 != *MEMORY[0x277CC7208])
    {
      *v67 = 0;
      v46 = v85;
      (*(v45 + 104))(v43, *MEMORY[0x277D208D8], v85);
      (*(v41 + 8))(v22, v40);
      goto LABEL_12;
    }

    v44 = *MEMORY[0x277D208E0];
  }

  v46 = v85;
  (*(v45 + 104))(v67, v44, v85);
LABEL_12:
  (*(v45 + 32))(v84, v43, v46);
  sub_226E637D0();
  v47 = v70;
  (*(v37 + 2))(v70, v86, v30);
  (*(v37 + 7))(v47, 0, 1, v30);
  v48 = v45;
  sub_226E636C0();
  sub_226E62F10();
  sub_226E62D60();
  v70 = v37;
  v77 = v30;
  v49 = v75;
  v50 = *(v74 + 8);
  v50(v17, v75);
  sub_226E63D20();
  sub_226E636F0();
  v51 = v71;
  sub_226E62F60();
  sub_226E635B0();
  (*(v72 + 8))(v51, v73);
  sub_226E636A0();
  v52 = v76;
  sub_226E62EF0();
  v53 = sub_226E63590();
  (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
  sub_226E636B0();
  sub_226E62F10();
  sub_226E62D50();
  v50(v17, v49);
  sub_226E63680();
  sub_226E62F50();
  sub_226E636E0();
  v54 = v78;
  v55 = v79;
  sub_226E63740();
  v56 = [v54 accountID];
  sub_226E639C0();

  sub_226E63730();
  v57 = [v54 institutionName];
  sub_226E639C0();

  sub_226E63710();
  sub_226E4B480(v54);
  sub_226E63700();

  v58 = sub_226E63750();
  (*(*(v58 - 8) + 56))(v55, 0, 1, v58);
  sub_226E63770();
  v59 = sub_226E62ED0();
  sub_226E4A9F8(v59, v60, v81, v80);
  sub_226E637C0();
  v61 = v82;
  v62 = v84;
  v63 = v85;
  (*(v48 + 16))(v82, v84, v85);
  (*(v48 + 56))(v61, 0, 1, v63);
  sub_226E636D0();

  v64 = sub_226E62FC0();
  (*(*(v64 - 8) + 8))(v39, v64);
  (*(v48 + 8))(v62, v63);
  return (*(v70 + 1))(v86, v77);
}

uint64_t sub_226E49DFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_226E63690();
  if (v4)
  {
    v8[0] = v3;
    v8[1] = v4;
    MEMORY[0x28223BE20](v3);
    v7[2] = v8;
    v5 = sub_226E31B70(sub_226E4C190, v7, a2);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_226E49ED8(uint64_t a1, uint64_t a2)
{
  v8 = 2;
  result = static FinHealthFeatureFlag.isEnabled(_:)(&v8);
  if (result)
  {
    if (*(a1 + 16))
    {
      v6 = v2[6];
      v7 = __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      MEMORY[0x28223BE20](v7);
      return (*(v6 + 16))(a2);
    }
  }

  return result;
}

uint64_t sub_226E49FA4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B78, &unk_226E68D20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14[-v4];
  sub_226E63760();
  v6 = sub_226E63750();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_226E15E98(v5, &qword_27D7B6B78, &unk_226E68D20);
LABEL_5:
    v12 = 0;
    return v12 & 1;
  }

  v8 = sub_226E63720();
  v10 = v9;
  v11 = (*(v7 + 8))(v5, v6);
  if (!v10)
  {
    goto LABEL_5;
  }

  v15[0] = v8;
  v15[1] = v10;
  MEMORY[0x28223BE20](v11);
  *&v14[-16] = v15;
  v12 = sub_226E31B70(sub_226E4C174, &v14[-32], a2);

  return v12 & 1;
}

uint64_t sub_226E4A144()
{
  v4 = 2;
  result = static FinHealthFeatureFlag.isEnabled(_:)(&v4);
  if (result)
  {
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    return (*(v3 + 16))(sub_226E4A1DC, 0, v2, v3);
  }

  return result;
}

BOOL sub_226E4A1E4()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_9:
    sub_226E15E98(&v10, &qword_27D7B6B88, &qword_226E68D38);
    goto LABEL_10;
  }

  v2 = sub_226E639B0();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_226E63DA0();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AD0, &unk_226E68D40);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v4 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v4 = v8;
LABEL_11:
  v5 = sub_226E4BF9C(v4);

  v6 = sub_226E4A340(0xD000000000000012, 0x8000000226E73500, v5);

  return (v6 & 1) == 0;
}

uint64_t sub_226E4A340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_226E640A0();
  sub_226E63A00();
  v6 = sub_226E640C0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_226E63FF0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_226E4A438()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t sub_226E4A460()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_226E4A4A0(uint64_t a1)
{
  sub_226E63630();
  sub_226E4C11C();
  result = sub_226E63650();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_226E63800();
    return __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  return result;
}

void *sub_226E4A538(uint64_t a1, uint64_t a2)
{
  sub_226E63630();
  sub_226E4C11C();
  result = sub_226E63640();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_226E637F0();
    return __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  return result;
}

uint64_t sub_226E4A5D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_226E62E70();
  v14 = *(v4 - 8);
  v5 = (*(v14 + 88))(a1, v4);
  if (v5 == *MEMORY[0x277CC6FE0])
  {
    v6 = MEMORY[0x277D208C8];
LABEL_5:
    v7 = *v6;
    v8 = sub_226E63660();
    v9 = *(*(v8 - 8) + 104);

    return v9(a2, v7, v8);
  }

  if (v5 == *MEMORY[0x277CC7018])
  {
    v6 = MEMORY[0x277D208B8];
    goto LABEL_5;
  }

  *a2 = 0;
  v11 = *MEMORY[0x277D208C0];
  v12 = sub_226E63660();
  (*(*(v12 - 8) + 104))(a2, v11, v12);
  v13 = *(v14 + 8);

  return v13(a1, v4);
}

uint64_t sub_226E4A784@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_226E62EA0();
  v14 = *(v4 - 8);
  v5 = (*(v14 + 88))(a1, v4);
  if (v5 == *MEMORY[0x277CC7210])
  {
    v6 = MEMORY[0x277D208D0];
LABEL_5:
    v7 = *v6;
    v8 = sub_226E63670();
    v9 = *(*(v8 - 8) + 104);

    return v9(a2, v7, v8);
  }

  if (v5 == *MEMORY[0x277CC7208])
  {
    v6 = MEMORY[0x277D208E0];
    goto LABEL_5;
  }

  *a2 = 0;
  v11 = *MEMORY[0x277D208D8];
  v12 = sub_226E63670();
  (*(*(v12 - 8) + 104))(a2, v11, v12);
  v13 = *(v14 + 8);

  return v13(a1, v4);
}

void sub_226E4A930(void *a1)
{
  sub_226E63740();
  v1 = [a1 accountID];
  sub_226E639C0();

  sub_226E63730();
  v2 = [a1 institutionName];
  sub_226E639C0();

  sub_226E63710();
  sub_226E4B480(a1);
  sub_226E63700();
}

uint64_t sub_226E4A9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a2;
  v85 = a1;
  v94 = a4;
  v80 = sub_226E62D30();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v76 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226E63320();
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x28223BE20](v6);
  v78 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6990, &qword_226E68868);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v77 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v76 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6988, &qword_226E68D50);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v84 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v76 - v16;
  v18 = sub_226E62CC0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_226E62CD0();
  v22 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B90, &qword_226E68D58);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v90 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v76 - v28;
  v30 = sub_226E637B0();
  v92 = *(v30 - 8);
  v93 = v30;
  MEMORY[0x28223BE20](v30);
  v95 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *(v19 + 56);
  v100 = v19 + 56;
  v99(v29, 1, 1, v18);
  v32 = a3;
  v33 = *(a3 + 16);
  v103 = v29;
  if (v33)
  {
    v82 = v21;
    v83 = v17;
    v88 = v12;
    v101 = v18;
    v36 = *(v22 + 16);
    v35 = v22 + 16;
    v34 = v36;
    v37 = (*(v35 + 64) + 32) & ~*(v35 + 64);
    v81 = v32;
    v38 = v32 + v37;
    v39 = *(v35 + 56);
    v40 = (v35 + 72);
    v41 = *MEMORY[0x277CC6BE8];
    v97 = (v35 + 80);
    v98 = (v35 - 8);
    v89 = v19;
    v96 = (v19 + 32);
    v42 = v102;
    v36(v24, v32 + v37, v102);
    while (1)
    {
      if ((*v40)(v24, v42) == v41)
      {
        v43 = v39;
        v44 = v34;
        v45 = v35;
        v46 = v103;
        sub_226E15E98(v103, &qword_27D7B6B90, &qword_226E68D58);
        (*v97)(v24, v42);
        v47 = v101;
        (*v96)(v46, v24, v101);
        v48 = v46;
        v35 = v45;
        v34 = v44;
        v39 = v43;
        v49 = v47;
        v42 = v102;
        v99(v48, 0, 1, v49);
      }

      else
      {
        (*v98)(v24, v42);
      }

      v38 += v39;
      if (!--v33)
      {
        break;
      }

      v34(v24, v38, v42);
    }

    v18 = v101;
    v50 = v88;
    v19 = v89;
    v17 = v83;
    v21 = v82;
    v29 = v103;
  }

  else
  {

    v50 = v12;
  }

  v51 = v92;
  v52 = v95;
  if (!v91)
  {
    v55 = v29;
    v54 = v93;
    goto LABEL_14;
  }

  v53 = v90;
  sub_226E1A598(v29, v90, &qword_27D7B6B90, &qword_226E68D58);
  if ((*(v19 + 48))(v53, 1, v18) != 1)
  {
    (*(v19 + 32))(v21, v53, v18);
    sub_226E637A0();
    v58 = v19;
    sub_226E63780();
    sub_226E62CA0();
    sub_226E62CB0();
    v59 = v84;
    sub_226E1A598(v17, v84, &qword_27D7B6988, &qword_226E68D50);
    v61 = v86;
    v60 = v87;
    if ((*(v86 + 48))(v59, 1, v87) == 1)
    {
      v89 = v58;
      sub_226E15E98(v59, &qword_27D7B6988, &qword_226E68D50);
      v62 = v77;
      sub_226E1A598(v50, v77, &qword_27D7B6990, &qword_226E68868);
      v63 = v79;
      v64 = v80;
      if ((*(v79 + 48))(v62, 1, v80) == 1)
      {
        sub_226E15E98(v50, &qword_27D7B6990, &qword_226E68868);
        sub_226E15E98(v17, &qword_27D7B6988, &qword_226E68D50);
        (*(v89 + 8))(v21, v18);
        sub_226E15E98(v103, &qword_27D7B6B90, &qword_226E68D58);
        v65 = v62;
        v66 = &qword_27D7B6990;
        v67 = &qword_226E68868;
LABEL_21:
        sub_226E15E98(v65, v66, v67);
        v54 = v93;
        v74 = v94;
        (*(v51 + 32))(v94, v52, v93);
        v57 = v74;
        v56 = 0;
        return (*(v51 + 56))(v57, v56, 1, v54);
      }

      v71 = v76;
      (*(v63 + 32))(v76, v62, v64);
      strcpy(v105, "mapsMerchant-");
      HIWORD(v105[3]) = -4864;
      v104 = sub_226E62D20();
      v72 = sub_226E63FE0();
      MEMORY[0x22AA8D010](v72);

      sub_226E63790();
      v73 = v71;
      v52 = v95;
      (*(v63 + 8))(v73, v64);
      sub_226E15E98(v50, &qword_27D7B6990, &qword_226E68868);
      sub_226E15E98(v17, &qword_27D7B6988, &qword_226E68D50);
      (*(v89 + 8))(v21, v18);
    }

    else
    {
      v68 = v59;
      v69 = v78;
      (*(v61 + 32))(v78, v68, v60);
      strcpy(v105, "mapsBrand-");
      HIBYTE(v105[2]) = 0;
      v105[3] = -369098752;
      v88 = v50;
      v104 = sub_226E63310();
      v70 = sub_226E63FE0();
      MEMORY[0x22AA8D010](v70);

      sub_226E63790();
      (*(v61 + 8))(v69, v87);
      sub_226E15E98(v88, &qword_27D7B6990, &qword_226E68868);
      sub_226E15E98(v17, &qword_27D7B6988, &qword_226E68D50);
      (*(v58 + 8))(v21, v18);
    }

    v66 = &qword_27D7B6B90;
    v67 = &qword_226E68D58;
    v65 = v103;
    goto LABEL_21;
  }

  sub_226E15E98(v29, &qword_27D7B6B90, &qword_226E68D58);

  v54 = v93;
  v55 = v53;
LABEL_14:
  sub_226E15E98(v55, &qword_27D7B6B90, &qword_226E68D58);
  v56 = 1;
  v57 = v94;
  return (*(v51 + 56))(v57, v56, 1, v54);
}

void sub_226E4B480(void *a1)
{
  v2 = [a1 dpanSuffix];
  if (v2)
  {
    v3 = v2;
    v4 = sub_226E639C0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v29 = v4;
  v30 = v6;
  v7 = [a1 fpanSuffix];
  if (v7)
  {
    v8 = v7;
    v9 = sub_226E639C0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v31 = v9;
  v32 = v11;
  v12 = [a1 virtualCardSuffix];
  if (v12)
  {
    v13 = v12;
    v14 = sub_226E639C0();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = 0;
  v33 = v14;
  v34 = v16;
  v18 = MEMORY[0x277D84F90];
LABEL_11:
  if (v17 <= 3)
  {
    v19 = 3;
  }

  else
  {
    v19 = v17;
  }

  v20 = v19 + 1;
  v21 = 16 * v17 + 40;
  while (1)
  {
    if (v17 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6B98, qword_226E68D60);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AD0, &unk_226E68D40);
      sub_226E4C034();
      sub_226E63990();

      return;
    }

    if (v20 == ++v17)
    {
      break;
    }

    v22 = v21 + 16;
    v23 = *&v28[v21];
    v21 += 16;
    if (v23)
    {
      v24 = *&v28[v22 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_226E1FB8C(0, *(v18 + 2) + 1, 1, v18);
      }

      v26 = *(v18 + 2);
      v25 = *(v18 + 3);
      if (v26 >= v25 >> 1)
      {
        v18 = sub_226E1FB8C((v25 > 1), v26 + 1, 1, v18);
      }

      *(v18 + 2) = v26 + 1;
      v27 = &v18[16 * v26];
      *(v27 + 4) = v24;
      *(v27 + 5) = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_226E4B6D8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_226E640A0();
  sub_226E63A00();
  v8 = sub_226E640C0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_226E63FF0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_226E4BA88(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_226E4B828(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BA8, &unk_226E68E00);
  result = sub_226E63E20();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_226E640A0();
      sub_226E63A00();
      result = sub_226E640C0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_226E4BA88(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_226E4B828(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_226E4BC08();
      goto LABEL_16;
    }

    sub_226E4BD64(v8 + 1);
  }

  v10 = *v4;
  sub_226E640A0();
  sub_226E63A00();
  v11 = sub_226E640C0();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_226E63FF0() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_226E64000();
  __break(1u);
}

void sub_226E4BC08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BA8, &unk_226E68E00);
  v2 = *v0;
  v3 = sub_226E63E10();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

uint64_t sub_226E4BD64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BA8, &unk_226E68E00);
  result = sub_226E63E20();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_226E640A0();

      sub_226E63A00();
      result = sub_226E640C0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_226E4BF9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA8D240](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_226E4B6D8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_226E4C034()
{
  result = qword_27D7B6BA0;
  if (!qword_27D7B6BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B6AD0, &unk_226E68D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6BA0);
  }

  return result;
}

unint64_t sub_226E4C11C()
{
  result = qword_280CE9FC0;
  if (!qword_280CE9FC0)
  {
    sub_226E63630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CE9FC0);
  }

  return result;
}

uint64_t sub_226E4C1AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226E68E10;
  v21 = sub_226E639C0();
  v26 = v1;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v2 = sub_226E639C0();
  MEMORY[0x22AA8D010](v2);

  *(v0 + 32) = v21;
  *(v0 + 40) = v26;
  v22 = sub_226E639C0();
  v27 = v3;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v4 = sub_226E639C0();
  MEMORY[0x22AA8D010](v4);

  *(v0 + 48) = v22;
  *(v0 + 56) = v27;
  sub_226E63E70();
  v5 = sub_226E639C0();
  v7 = v6;

  MEMORY[0x22AA8D010](0xD000000000000014, 0x8000000226E73580);
  *(v0 + 64) = v5;
  *(v0 + 72) = v7;
  v23 = sub_226E639C0();
  v28 = v8;
  MEMORY[0x22AA8D010](0x6E756F6D615F742ELL, 0xE900000000000074);
  *(v0 + 80) = v23;
  *(v0 + 88) = v28;
  v24 = sub_226E639C0();
  v29 = v9;
  MEMORY[0x22AA8D010](0x657079745F612ELL, 0xE700000000000000);
  *(v0 + 96) = v24;
  *(v0 + 104) = v29;
  sub_226E63E70();
  v10 = sub_226E639C0();
  v12 = v11;

  MEMORY[0x22AA8D010](0xD000000000000024, 0x8000000226E735A0);
  *(v0 + 112) = v10;
  *(v0 + 120) = v12;
  sub_226E63E70();
  v13 = sub_226E639C0();
  v15 = v14;

  MEMORY[0x22AA8D010](0xD000000000000022, 0x8000000226E735D0);
  *(v0 + 128) = v13;
  *(v0 + 136) = v15;
  v25 = sub_226E639C0();
  v30 = v16;
  MEMORY[0x22AA8D010](0x657079745F742ELL, 0xE700000000000000);
  *(v0 + 144) = v25;
  *(v0 + 152) = v30;
  sub_226E63E70();
  v17 = sub_226E639C0();
  v19 = v18;

  MEMORY[0x22AA8D010](0x65727275635F742ELL, 0xEF65646F6379636ELL);
  *(v0 + 160) = v17;
  *(v0 + 168) = v19;
  return v0;
}

uint64_t IncomeInsights.IncomeInsight.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_226E635C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t IncomeInsights.IncomeInsight.id.setter(uint64_t a1)
{
  v3 = sub_226E635C0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

double IncomeInsights.IncomeInsight.transactionIds.getter()
{
  type metadata accessor for IncomeInsights.IncomeInsight(0);

  return result;
}

uint64_t type metadata accessor for IncomeInsights.IncomeInsight(uint64_t a1)
{
  result = qword_280CEA390;
  if (!qword_280CEA390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IncomeInsights.IncomeInsight.transactionIds.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IncomeInsights.IncomeInsight(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_226E4C6D8(uint64_t a1)
{
  v2 = sub_226E4C958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_226E4C714(uint64_t a1)
{
  v2 = sub_226E4C958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IncomeInsights.IncomeInsight.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BC0, &qword_226E68E20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226E4C958();
  sub_226E640E0();
  v12 = 0;
  sub_226E635C0();
  sub_226E23108(&qword_27D7B68C8, MEMORY[0x277CC95F8]);
  sub_226E63FB0();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for IncomeInsights.IncomeInsight(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68D0, &qword_226E68610);
    sub_226E1B038(&qword_27D7B68D8, &qword_27D7B68C8, MEMORY[0x277CC95F8], MEMORY[0x277D83B50]);
    sub_226E63FB0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_226E4C958()
{
  result = qword_27D7B7480[0];
  if (!qword_27D7B7480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7B7480);
  }

  return result;
}

uint64_t IncomeInsights.IncomeInsight.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = sub_226E635C0();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BC8, &unk_226E68E28);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for IncomeInsights.IncomeInsight(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226E4C958();
  sub_226E640D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = v10;
  v13 = v12;
  v14 = v23;
  v29 = 0;
  sub_226E23108(&qword_27D7B68E8, MEMORY[0x277CC9618]);
  v15 = v26;
  v16 = v24;
  sub_226E63FA0();
  v17 = *(v14 + 32);
  v20 = v13;
  v17(v13, v5, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68D0, &qword_226E68610);
  v28 = 1;
  sub_226E1B038(&qword_27D7B68F0, &qword_27D7B68E8, MEMORY[0x277CC9618], MEMORY[0x277D83B70]);
  sub_226E63FA0();
  (*(v25 + 8))(v9, v16);
  v18 = v20;
  *(v20 + *(v21 + 20)) = v27;
  sub_226E4CD44(v18, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_226E4CDA8(v18);
}

uint64_t sub_226E4CD44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IncomeInsights.IncomeInsight(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226E4CDA8(uint64_t a1)
{
  v2 = type metadata accessor for IncomeInsights.IncomeInsight(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226E4CE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_226E635C0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for IncomeInsights.IncomeInsight(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_226E4CEB0()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E4CF4C, 0, 0);
}

uint64_t sub_226E4CF4C()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x80))();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (*(v1 + 16) <= 1uLL)
  {
    v5 = *(v1 + 16);
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_226E63B80();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v7[5] = v5;
  v7[6] = v4;
  v8 = v4;
  sub_226E4E048(0, 0, v3, &unk_226E68E40, v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_226E4D0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_226E4D0D8, 0, 0);
}

uint64_t sub_226E4D0D8()
{
  v1 = *(v0 + 32);
  v6 = *(v0 + 16);
  sub_226E62C40();
  swift_allocObject();
  v2 = sub_226E62C30();
  *(v0 + 40) = v2;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v6;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_226E4D1F8;

  return MEMORY[0x282200740](v4);
}

uint64_t sub_226E4D1F8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_226E4D378;
  }

  else
  {

    v2 = sub_226E4D314;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226E4D314()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226E4D378()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226E4D3E4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226E1A614;

  return sub_226E4D0B4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_226E4D48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a3;
  v6[19] = a4;
  v6[17] = a2;
  v7 = *(type metadata accessor for IncomeInsights.IncomeInsight(0) - 8);
  v6[22] = v7;
  v6[23] = *(v7 + 64);
  v6[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6960, &qword_226E68810);
  v6[29] = v8;
  v6[30] = *(v8 - 8);
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E4D61C, 0, 0);
}

uint64_t sub_226E4D61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(v5 + 152);
  if (v6 < 0)
  {
    goto LABEL_23;
  }

  v7 = *(v5 + 184);
  if (!v6)
  {
    v14 = 0;
    v11 = v7 + 7;
LABEL_18:
    *(v5 + 256) = v11;
    *(v5 + 264) = **(v5 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6878, &qword_226E68920);
    sub_226E63BD0();
    *(v5 + 272) = v14;
    v32 = swift_task_alloc();
    *(v5 + 280) = v32;
    *v32 = v5;
    v32[1] = sub_226E4DA20;
    a4 = *(v5 + 232);
    a1 = v5 + 288;
    a5 = (v5 + 128);
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
  }

  v8 = 0;
  v9 = 0;
  v35 = *(v5 + 176);
  v10 = *(*(v5 + 144) + 16);
  v11 = v7 + 7;
  v36 = v7 + 7;
  v34 = v10;
  while (1)
  {
    v14 = v10;
    if (v9 != v10)
    {
      break;
    }

LABEL_6:
    ++v8;
    v9 = v14;
    if (v8 == v6)
    {
      goto LABEL_18;
    }
  }

  if (v9 < v10)
  {
    if (__OFADD__(v9, 1))
    {
      goto LABEL_22;
    }

    v40 = v9 + 1;
    v15 = *(v5 + 224);
    v39 = *(v5 + 216);
    v16 = *(v5 + 192);
    v17 = *(v5 + 160);
    v37 = v15;
    v38 = *(v5 + 168);
    v18 = *(v35 + 80);
    v19 = *(v5 + 144) + ((v18 + 32) & ~v18) + *(v35 + 72) * v9;
    v20 = sub_226E63B80();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v15, 1, 1, v20);
    sub_226E4CD44(v19, v16);
    v22 = (v18 + 40) & ~v18;
    v23 = swift_allocObject();
    v23[2] = 0;
    v24 = v23 + 2;
    v23[3] = 0;
    v23[4] = v17;
    sub_226E516FC(v16, v23 + v22);
    *(v23 + ((v22 + v11) & 0xFFFFFFFFFFFFFFF8)) = v38;
    sub_226E2324C(v37, v39);
    v25 = (*(v21 + 48))(v39, 1, v20);
    v26 = v17;

    v27 = *(v5 + 216);
    if (v25 == 1)
    {
      sub_226E15E98(*(v5 + 216), &qword_27D7B6870, &qword_226E683B0);
      if (*v24)
      {
LABEL_12:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v28 = sub_226E63B40();
        v30 = v29;
        swift_unknownObjectRelease();
LABEL_15:
        v31 = **(v5 + 136);

        if (v30 | v28)
        {
          v12 = v5 + 16;
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = v28;
          *(v5 + 40) = v30;
        }

        else
        {
          v12 = 0;
        }

        v11 = v36;
        v13 = *(v5 + 224);
        *(v5 + 80) = 1;
        *(v5 + 88) = v12;
        *(v5 + 96) = v31;
        swift_task_create();

        a1 = sub_226E15E98(v13, &qword_27D7B6870, &qword_226E683B0);
        v6 = *(v5 + 152);
        v14 = v40;
        v10 = v34;
        goto LABEL_6;
      }
    }

    else
    {
      sub_226E63B70();
      (*(v21 + 8))(v27, v20);
      if (*v24)
      {
        goto LABEL_12;
      }
    }

    v28 = 0;
    v30 = 0;
    goto LABEL_15;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
}

uint64_t sub_226E4DA20()
{

  if (v0)
  {
    v1 = sub_226E1C33C;
  }

  else
  {
    v1 = sub_226E4DB30;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_226E4DB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(v5 + 288) & 1) == 0)
  {
    v8 = *(v5 + 272);
    v9 = *(v5 + 144);
    v10 = *(v9 + 16);
    if (v8 != v10)
    {
      if (v8 >= v10)
      {
        __break(1u);
        return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
      }

      v11 = *(v5 + 256);
      v12 = *(v5 + 208);
      v34 = *(v5 + 200);
      v13 = *(v5 + 192);
      v14 = *(v5 + 176);
      v32 = v12;
      v33 = *(v5 + 168);
      v15 = *(v5 + 160);
      v16 = *(v14 + 80);
      v17 = v9 + ((v16 + 32) & ~v16) + *(v14 + 72) * v8;
      v18 = sub_226E63B80();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v12, 1, 1, v18);
      sub_226E4CD44(v17, v13);
      v20 = (v16 + 40) & ~v16;
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = v15;
      sub_226E516FC(v13, v21 + v20);
      *(v21 + ((v20 + v11) & 0xFFFFFFFFFFFFFFF8)) = v33;
      sub_226E2324C(v32, v34);
      LODWORD(v11) = (*(v19 + 48))(v34, 1, v18);
      v22 = v15;

      v23 = *(v5 + 200);
      if (v11 == 1)
      {
        sub_226E15E98(*(v5 + 200), &qword_27D7B6870, &qword_226E683B0);
      }

      else
      {
        sub_226E63B70();
        (*(v19 + 8))(v23, v18);
      }

      v24 = v8 + 1;
      if (v21[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v25 = sub_226E63B40();
        v27 = v26;
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      if (v27 | v25)
      {
        v28 = v5 + 48;
        *(v5 + 48) = 0;
        *(v5 + 56) = 0;
        *(v5 + 64) = v25;
        *(v5 + 72) = v27;
      }

      else
      {
        v28 = 0;
      }

      v29 = *(v5 + 264);
      v30 = *(v5 + 208);
      *(v5 + 104) = 1;
      *(v5 + 112) = v28;
      *(v5 + 120) = v29;
      swift_task_create();

      sub_226E15E98(v30, &qword_27D7B6870, &qword_226E683B0);
      *(v5 + 272) = v24;
    }

    v31 = swift_task_alloc();
    *(v5 + 280) = v31;
    *v31 = v5;
    v31[1] = sub_226E4DA20;
    a4 = *(v5 + 232);
    a1 = v5 + 288;
    a5 = v5 + 128;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
  }

  (*(*(v5 + 240) + 8))(*(v5 + 248), *(v5 + 232), a3, a4, a5);

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_226E4DF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_226E234EC;

  return sub_226E52104(a5, a6);
}

uint64_t sub_226E4DFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_226E1C5F8;

  return sub_226E52104(a5, a6);
}

uint64_t sub_226E4E048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_226E2324C(a3, v22 - v9);
  v11 = sub_226E63B80();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_226E15E98(v10, &qword_27D7B6870, &qword_226E683B0);
  }

  else
  {
    sub_226E63B70();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_226E63B40();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_226E639E0() + 32;

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

      sub_226E15E98(a3, &qword_27D7B6870, &qword_226E683B0);

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

  sub_226E15E98(a3, &qword_27D7B6870, &qword_226E683B0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_226E4E2E4(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_226E638E0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_226E635C0();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E4E424, 0, 0);
}

uint64_t sub_226E4E424()
{
  v1 = v0[2];
  sub_226E62C40();
  swift_allocObject();
  v0[12] = sub_226E62C30();
  v2 = *(v1 + 16);
  v0[13] = v2;
  if (v2)
  {
    v3 = v0[2];
    v0[14] = @"Income-%@";
    v0[15] = 0;
    v4 = v0[11];
    v6 = *(v3 + 32);
    v5 = *(v3 + 40);
    sub_226E639C0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BD0, &unk_226E68E50);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_226E685F0;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_226E4EFB0();
    *(v7 + 32) = v6;
    *(v7 + 40) = v5;

    v8 = sub_226E639D0();
    v10 = v9;

    v11 = sub_226E53234();
    asUUID(rawString:lossy:)(v8, v10, v11, v4);

    v12 = swift_task_alloc();
    v0[16] = v12;
    *v12 = v0;
    v12[1] = sub_226E4E628;
    v13 = v0[11];

    return MEMORY[0x282116E50](v13);
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_226E4E628()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_226E4EB28;
  }

  else
  {
    v2 = sub_226E4E73C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226E4E73C(uint64_t a1)
{
  v47 = v1;
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[6];
  v7 = v1[3];
  v8 = v1[4];
  v9 = sub_226E56FC8();
  (*(v8 + 16))(v6, v9, v7);
  (*(v5 + 16))(v2, v3, v4);
  v10 = sub_226E638C0();
  v11 = sub_226E63C80();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v1[10];
  v14 = v1[11];
  v15 = v1[7];
  v16 = v1[8];
  v17 = v1[6];
  v19 = v1[3];
  v18 = v1[4];
  if (v12)
  {
    v45 = v1[6];
    v20 = swift_slowAlloc();
    v44 = v19;
    v21 = swift_slowAlloc();
    v46 = v21;
    *v20 = 136315138;
    sub_226E23108(&qword_27D7B6920, MEMORY[0x277CC9628]);
    v42 = v11;
    v22 = sub_226E63FE0();
    v43 = v14;
    v24 = v23;
    v25 = *(v16 + 8);
    v25(v13, v15);
    v26 = sub_226E1FC98(v22, v24, &v46);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_226DD4000, v10, v42, "Income Insight Deleted: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x22AA8E1B0](v21, -1, -1);
    MEMORY[0x22AA8E1B0](v20, -1, -1);

    (*(v18 + 8))(v45, v44);
    v25(v43, v15);
  }

  else
  {

    v27 = *(v16 + 8);
    v27(v13, v15);
    (*(v18 + 8))(v17, v19);
    v27(v14, v15);
  }

  v28 = v1[15] + 1;
  if (v28 == v1[13])
  {

    v29 = v1[1];

    return v29();
  }

  else
  {
    v1[15] = v28;
    v31 = v1[11];
    v32 = v1[2] + 16 * v28;
    v34 = *(v32 + 32);
    v33 = *(v32 + 40);
    sub_226E639C0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BD0, &unk_226E68E50);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_226E685F0;
    *(v35 + 56) = MEMORY[0x277D837D0];
    *(v35 + 64) = sub_226E4EFB0();
    *(v35 + 32) = v34;
    *(v35 + 40) = v33;

    v36 = sub_226E639D0();
    v38 = v37;

    v39 = sub_226E53234();
    asUUID(rawString:lossy:)(v36, v38, v39, v31);

    v40 = swift_task_alloc();
    v1[16] = v40;
    *v40 = v1;
    v40[1] = sub_226E4E628;
    v41 = v1[11];

    return MEMORY[0x282116E50](v41);
  }
}

uint64_t sub_226E4EB28(uint64_t a1)
{
  v55 = v1;
  v2 = v1[17];
  v3 = v1[11];
  v5 = v1[8];
  v4 = v1[9];
  v6 = v1[7];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[3];
  v10 = sub_226E56FC8();
  (*(v8 + 16))(v7, v10, v9);
  (*(v5 + 16))(v4, v3, v6);
  v11 = v2;
  v12 = sub_226E638C0();
  LOBYTE(v3) = sub_226E63CA0();

  v53 = v3;
  v13 = os_log_type_enabled(v12, v3);
  v14 = v1[17];
  v15 = v1[11];
  v16 = v1[8];
  v17 = v1[9];
  v18 = v1[7];
  v19 = v1[4];
  v20 = v1[5];
  v21 = v1[3];
  if (v13)
  {
    v52 = v1[3];
    v22 = swift_slowAlloc();
    v51 = v15;
    v23 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v54 = v50;
    *v22 = 138412546;
    v24 = v14;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v25;
    *v23 = v25;
    *(v22 + 12) = 2080;
    sub_226E23108(&qword_27D7B6920, MEMORY[0x277CC9628]);
    v26 = sub_226E63FE0();
    v27 = v18;
    v48 = v18;
    v49 = v20;
    v28 = v26;
    v30 = v29;
    v31 = *(v16 + 8);
    v31(v17, v27);
    v32 = sub_226E1FC98(v28, v30, &v54);

    *(v22 + 14) = v32;
    _os_log_impl(&dword_226DD4000, v12, v53, "Error: %@ when deleting income insight: %s", v22, 0x16u);
    sub_226E15E98(v23, &qword_27D7B6918, &qword_226E68950);
    MEMORY[0x22AA8E1B0](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x22AA8E1B0](v50, -1, -1);
    MEMORY[0x22AA8E1B0](v22, -1, -1);

    (*(v19 + 8))(v49, v52);
    v31(v51, v48);
  }

  else
  {

    v33 = *(v16 + 8);
    v33(v17, v18);
    (*(v19 + 8))(v20, v21);
    v33(v15, v18);
  }

  v34 = v1[15] + 1;
  if (v34 == v1[13])
  {

    v35 = v1[1];

    return v35();
  }

  else
  {
    v1[15] = v34;
    v37 = v1[11];
    v38 = v1[2] + 16 * v34;
    v40 = *(v38 + 32);
    v39 = *(v38 + 40);
    sub_226E639C0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BD0, &unk_226E68E50);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_226E685F0;
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = sub_226E4EFB0();
    *(v41 + 32) = v40;
    *(v41 + 40) = v39;

    v42 = sub_226E639D0();
    v44 = v43;

    v45 = sub_226E53234();
    asUUID(rawString:lossy:)(v42, v44, v45, v37);

    v46 = swift_task_alloc();
    v1[16] = v46;
    *v46 = v1;
    v46[1] = sub_226E4E628;
    v47 = v1[11];

    return MEMORY[0x282116E50](v47);
  }
}

unint64_t sub_226E4EFB0()
{
  result = qword_27D7B6BD8;
  if (!qword_27D7B6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6BD8);
  }

  return result;
}

uint64_t sub_226E4F004()
{
  v1 = sub_226E638E0();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E4F0CC, 0, 0);
}

uint64_t sub_226E4F0CC()
{
  sub_226E62C40();
  swift_allocObject();
  *(v0 + 48) = sub_226E62C30();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_226E4F180;

  return MEMORY[0x282116E80]();
}

uint64_t sub_226E4F180()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_226E4F3C4;
  }

  else
  {
    v2 = sub_226E4F294;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226E4F294(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[2];
  v4 = v1[3];
  v5 = sub_226E56FC8();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_226E638C0();
  v7 = sub_226E63C80();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226DD4000, v6, v7, "All Income Insights Deleted", v8, 2u);
    MEMORY[0x22AA8E1B0](v8, -1, -1);
  }

  (*(v1[3] + 8))(v1[5], v1[2]);

  v9 = v1[1];

  return v9();
}

uint64_t sub_226E4F3C4(uint64_t a1)
{
  v2 = v1[8];
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[2];
  v6 = sub_226E56FC8();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_226E638C0();
  v9 = sub_226E63CA0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[8];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_226DD4000, v8, v9, "Error: %@ when deleting income insights", v12, 0xCu);
    sub_226E15E98(v13, &qword_27D7B6918, &qword_226E68950);
    MEMORY[0x22AA8E1B0](v13, -1, -1);
    MEMORY[0x22AA8E1B0](v12, -1, -1);
  }

  else
  {
  }

  (*(v1[3] + 8))(v1[4], v1[2]);

  v16 = v1[1];

  return v16();
}

void sub_226E4F58C()
{
  v0 = sub_226E638E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for IncomeInsights.IncomeInsight(0);
  v4 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84F90];
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v88 = v8 + 16;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84FA0];
  v89 = v9 + 16;
  v10 = [objc_opt_self() retrievePersistedModelVersion_];
  if (!v10)
  {
    goto LABEL_8;
  }

  v82 = v6;
  v91 = v9;
  v11 = v10;
  v12 = sub_226E639C0();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  v85 = v12;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

LABEL_8:
    v34 = sub_226E56FC8();
    (*(v1 + 16))(v3, v34, v0);
    v35 = sub_226E638C0();
    v36 = sub_226E63CA0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_226DD4000, v35, v36, "No model version found for income classification. Skipping income insights retrieval.", v37, 2u);
      MEMORY[0x22AA8E1B0](v37, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    goto LABEL_24;
  }

  v80 = v4;
  v83 = (v7 + 16);
  v90 = v8;
  v84 = v7;
  sub_226E639C0();
  v16 = objc_allocWithZone(FHDatabaseEntity);
  v17 = sub_226E639B0();

  v18 = [v16 initWithEntity_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
  v19 = swift_allocObject();
  v81 = xmmword_226E685F0;
  *(v19 + 16) = xmmword_226E685F0;
  aBlock = 0;
  v93 = 0xE000000000000000;
  sub_226E63E70();
  v20 = sub_226E639C0();
  v22 = v21;

  aBlock = v20;
  v93 = v22;
  MEMORY[0x22AA8D010](0xD000000000000012, 0x8000000226E733A0);
  v23 = v93;
  *(v19 + 32) = aBlock;
  *(v19 + 40) = v23;
  v24 = objc_opt_self();
  v96 = sub_226E50CC8;
  v97 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v93 = 1107296256;
  v94 = sub_226E23500;
  v95 = &block_descriptor_38;
  v25 = _Block_copy(&aBlock);
  v26 = @"AND";
  v27 = [v24 initWithBuilder:v25 logicalOperator:@"AND"];
  _Block_release(v25);
  v28 = swift_allocObject();
  *(v28 + 16) = MEMORY[0x277D84FA0];
  if (v18)
  {
    v29 = v18;
    v30 = @"AND";
    v79 = @"AND";
    v31 = v30;
    v32 = sub_226E63AE0();

    v96 = sub_226E51C90;
    v97 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v93 = 1107296256;
    v94 = sub_226E1EB4C;
    v95 = &block_descriptor_44;
    v33 = _Block_copy(&aBlock);

    [v29 queryDataWithBlock:v27 logicalOperator:v31 selectFields:v32 usingBlock:v33];

    _Block_release(v33);
    v26 = v79;

    v27 = v32;
  }

  else
  {
  }

  swift_beginAccess();
  v38 = *(v28 + 16);

  v39 = objc_opt_self();
  v40 = swift_allocObject();
  *(v40 + 16) = v85;
  *(v40 + 24) = v14;
  v96 = sub_226E514BC;
  v97 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v93 = 1107296256;
  v94 = sub_226E23500;
  v95 = &block_descriptor_1;
  v41 = _Block_copy(&aBlock);

  v42 = [v39 initWithBuilder:v41 logicalOperator:v26];
  _Block_release(v41);
  if (v42)
  {

    v43 = objc_opt_self();
    v96 = sub_226E50104;
    v97 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v93 = 1107296256;
    v94 = sub_226E23500;
    v95 = &block_descriptor_18;
    v44 = _Block_copy(&aBlock);
    v45 = @"fh_grouping";
    v46 = [v43 initWithBuilder_];
    _Block_release(v44);
    v47 = [objc_allocWithZone(FHDatabaseEntity) initWithEntity:v45 joinClause:v46];

    if (v47)
    {
      v48 = v87;
      v79 = v47;
      v78 = v42;
      v49 = v26;
      v50 = sub_226E63AE0();
      sub_226E202A4(0, &qword_280CE9F98, off_2785CA820);
      v51 = sub_226E63AE0();
      v85 = v42;
      v52 = v51;
      v53 = swift_allocObject();
      v54 = v90;
      v55 = v47;
      v56 = v91;
      v53[2] = v90;
      v53[3] = v56;
      v53[4] = v84;
      v53[5] = v48;
      v53[6] = v38;
      v96 = sub_226E51760;
      v97 = v53;
      aBlock = MEMORY[0x277D85DD0];
      v93 = 1107296256;
      v94 = sub_226E1EB4C;
      v95 = &block_descriptor_24;
      v57 = _Block_copy(&aBlock);

      v47 = v55;

      v58 = v48;

      v59 = v79;
      v60 = v78;
      [(__CFString *)v79 queryDataWithBlock:v78 logicalOperator:v49 limit:-1 selectFields:v50 orderby:v52 usingBlock:v57];
      _Block_release(v57);

      v42 = v85;
    }

    else
    {

      v54 = v90;
    }

    v61 = v89;
    swift_beginAccess();
    v62 = *(v54 + 24);
    if (v62)
    {
      v63 = *(v90 + 16);
      swift_beginAccess();
      if (*(*v61 + 16))
      {
        v64 = MEMORY[0x277D837D0];
        sub_226E639C0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BD0, &unk_226E68E50);
        v65 = swift_allocObject();
        *(v65 + 16) = v81;
        *(v65 + 56) = v64;
        *(v65 + 64) = sub_226E4EFB0();
        *(v65 + 32) = v63;
        *(v65 + 40) = v62;

        v66 = sub_226E639D0();
        v68 = v67;
        v69 = v83;

        v70 = sub_226E53234();
        v71 = v82;
        asUUID(rawString:lossy:)(v66, v68, v70, v82);

        *(v71 + *(v86 + 20)) = *v61;
        swift_beginAccess();
        v72 = *v69;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v69 = v72;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v72 = sub_226E512E4(0, v72[2] + 1, 1, v72);
          *v69 = v72;
        }

        v74 = v80;
        v76 = v72[2];
        v75 = v72[3];
        if (v76 >= v75 >> 1)
        {
          v72 = sub_226E512E4((v75 > 1), v76 + 1, 1, v72);
        }

        v72[2] = v76 + 1;
        sub_226E516FC(v82, v72 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v76);
        *v69 = v72;
        swift_endAccess();
      }
    }

    swift_beginAccess();

LABEL_24:

    return;
  }

  __break(1u);
}

void sub_226E50104(void *a1)
{
  if (a1)
  {
    v1 = a1;
    [v1 addKeyPairsWithJoinType:@"inner" leftEntity:@"fh_grouping" rightEntity:@"transactions" joinKey:@"t_identifier"];
    [v1 addKeyPairsWithJoinType:@"inner" leftEntity:@"fh_grouping" leftJoinKey:@"group_id" rightEntity:@"features_predicted_realtime" rightJoinKey:@"identifier"];
  }
}

uint64_t sub_226E501DC(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v102 = a5;
  v99 = a4;
  v9 = sub_226E638E0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90);
  MEMORY[0x28223BE20](v13 - 8);
  v100 = v78 - v14;
  v15 = sub_226E635C0();
  v101 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v96 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v98 = v78 - v19;
  MEMORY[0x28223BE20](v18);
  v97 = v78 - v20;
  v21 = type metadata accessor for IncomeInsights.IncomeInsight(0);
  MEMORY[0x28223BE20](v21);
  v24 = v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v25 = *(a1 + 2);
    if (v25)
    {
      v79 = v22;
      v81 = v15;
      sub_226E2233C((a1 + 32), v105);
      v26 = swift_dynamicCast();
      v27 = v103;
      if (!v26)
      {
        v27 = 0.0;
      }

      v95 = v27;
      if (v26)
      {
        v28 = v104;
      }

      else
      {
        v28 = 0;
      }

      if (v25 == 1)
      {
        __break(1u);
      }

      else
      {
        sub_226E2233C((a1 + 64), v105);
        v29 = swift_dynamicCast();
        if (v29)
        {
          v9 = *&v103;
        }

        else
        {
          v9 = 0;
        }

        if (v29)
        {
          v12 = v104;
        }

        else
        {
          v12 = 0;
        }

        if (v25 >= 3)
        {
          sub_226E2233C((a1 + 96), v105);
          v30 = swift_dynamicCast();
          if (v30)
          {
            v31 = *&v103;
          }

          else
          {
            v31 = 0;
          }

          if (v30)
          {
            v32 = v104;
          }

          else
          {
            v32 = 0;
          }

          v93 = v32;
          if (v25 != 3)
          {
            v85 = v31;
            sub_226E2233C((a1 + 128), v105);
            v33 = swift_dynamicCast();
            if (v25 >= 5)
            {
              v91 = v33;
              v5 = v103;
              sub_226E2233C((a1 + 160), v105);
              v34 = swift_dynamicCast();
              v35 = v103;
              if (!v34)
              {
                v35 = 0.0;
              }

              v84 = v35;
              if (v34)
              {
                v36 = v104;
              }

              else
              {
                v36 = 0;
              }

              v92 = v36;
              if (v25 != 5)
              {
                sub_226E2233C((a1 + 192), v105);
                v37 = swift_dynamicCast();
                if (v25 >= 7)
                {
                  v90 = v37;
                  v89 = *&v103;
                  sub_226E2233C((a1 + 224), v105);
                  v38 = swift_dynamicCast();
                  if (v25 != 7)
                  {
                    v88 = v38;
                    v80 = v9;
                    v87 = *&v103;
                    sub_226E2233C((a1 + 256), v105);
                    v39 = swift_dynamicCast();
                    v40 = v103;
                    if (v39)
                    {
                      v9 = v104;
                    }

                    else
                    {
                      v40 = 0.0;
                      v9 = 0;
                    }

                    if (v25 >= 9)
                    {
                      v83 = v40;
                      v86 = v12;
                      sub_226E2233C((a1 + 288), v105);
                      v41 = swift_dynamicCast();
                      v42 = v103;
                      if (!v41)
                      {
                        v42 = 0.0;
                      }

                      v82 = v42;
                      if (v41)
                      {
                        a1 = v104;
                      }

                      else
                      {
                        a1 = 0;
                      }

                      swift_beginAccess();
                      v43 = *(a2 + 24);
                      v94 = v28;
                      if (!v43 || (v44 = *(a2 + 16), v28) && (v44 == *&v95 && v43 == v28 || (sub_226E63FF0() & 1) != 0) || (swift_beginAccess(), !*(*(a3 + 16) + 16)))
                      {
LABEL_51:
                        if (v88)
                        {
                          v55 = v87;
                        }

                        else
                        {
                          v55 = 0;
                        }

                        if (v93)
                        {
                          v56 = sub_226E4A340(v85, v93, v102);

                          v57 = v56 & 1;
                        }

                        else
                        {
                          v57 = -1;
                        }

                        v63 = v92;
                        if (v90)
                        {
                          v64 = v89;
                        }

                        else
                        {
                          v64 = 16;
                        }

                        if (!v91)
                        {
                          v5 = 0.0;
                        }

                        if (v9)
                        {
                          v65 = sub_226E639B0();

                          if (a1)
                          {
                            goto LABEL_67;
                          }
                        }

                        else
                        {
                          v65 = 0;
                          if (a1)
                          {
LABEL_67:
                            v66 = sub_226E639B0();

                            if (v63)
                            {
LABEL_68:
                              v67 = sub_226E639B0();

LABEL_72:
                              v68 = checkIfIncomeCandidate(v55, v57, v65, v66, v64, v67, v5);

                              if (v68)
                              {
                                v69 = v94;
                                if (v86)
                                {
                                  v70 = v100;
                                  sub_226E635A0();

                                  v71 = v101;
                                  v72 = v81;
                                  if ((*(v101 + 48))(v70, 1, v81) == 1)
                                  {
                                    sub_226E15E98(v70, &qword_27D7B6940, &qword_226E68A90);
                                  }

                                  else
                                  {
                                    v73 = v97;
                                    (*(v71 + 32))(v97, v70, v72);
                                    v74 = v96;
                                    (*(v71 + 16))(v96, v73, v72);
                                    swift_beginAccess();
                                    v75 = v98;
                                    sub_226E2035C(v98, v74);
                                    swift_endAccess();
                                    v76 = *(v71 + 8);
                                    v76(v75, v72);
                                    v69 = v94;
                                    v76(v73, v72);
                                  }
                                }
                              }

                              else
                              {

                                v69 = v94;
                              }

                              swift_beginAccess();
                              *(a2 + 16) = v95;
                              *(a2 + 24) = v69;
                            }

LABEL_71:
                            v67 = 0;
                            goto LABEL_72;
                          }
                        }

                        v66 = 0;
                        if (v63)
                        {
                          goto LABEL_68;
                        }

                        goto LABEL_71;
                      }

                      v78[1] = sub_226E639C0();
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BD0, &unk_226E68E50);
                      v45 = a3;
                      v46 = swift_allocObject();
                      *(v46 + 16) = xmmword_226E685F0;
                      *(v46 + 56) = MEMORY[0x277D837D0];
                      *(v46 + 64) = sub_226E4EFB0();
                      *(v46 + 32) = v44;
                      *(v46 + 40) = v43;

                      a3 = v45;
                      v47 = sub_226E639D0();
                      v49 = v48;

                      v50 = sub_226E53234();
                      asUUID(rawString:lossy:)(v47, v49, v50, v24);

                      swift_beginAccess();
                      *&v24[*(v21 + 20)] = *(a3 + 16);
                      v12 = v99;
                      swift_beginAccess();
                      v25 = *(v12 + 2);

                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      *(v12 + 2) = v25;
                      if (isUniquelyReferenced_nonNull_native)
                      {
LABEL_48:
                        v52 = v79;
                        v54 = v25[2];
                        v53 = v25[3];
                        if (v54 >= v53 >> 1)
                        {
                          v77 = sub_226E512E4((v53 > 1), v54 + 1, 1, v25);
                          v52 = v79;
                          v25 = v77;
                        }

                        v25[2] = v54 + 1;
                        sub_226E516FC(v24, v25 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v54);
                        *(v12 + 2) = v25;
                        swift_endAccess();
                        swift_beginAccess();
                        *(a3 + 16) = MEMORY[0x277D84FA0];

                        goto LABEL_51;
                      }

LABEL_87:
                      v25 = sub_226E512E4(0, v25[2] + 1, 1, v25);
                      *(v12 + 2) = v25;
                      goto LABEL_48;
                    }

LABEL_86:
                    __break(1u);
                    goto LABEL_87;
                  }

LABEL_85:
                  __break(1u);
                  goto LABEL_86;
                }

LABEL_84:
                __break(1u);
                goto LABEL_85;
              }

LABEL_83:
              __break(1u);
              goto LABEL_84;
            }

LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

LABEL_81:
          __break(1u);
          goto LABEL_82;
        }
      }

      __break(1u);
      goto LABEL_81;
    }
  }

  v58 = sub_226E56FC8();
  (*(v10 + 16))(v12, v58, v9);
  v59 = sub_226E638C0();
  v60 = sub_226E63CA0();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_226DD4000, v59, v60, "Income insight query returned invalid response", v61, 2u);
    MEMORY[0x22AA8E1B0](v61, -1, -1);
  }

  return (*(v10 + 8))(v12, v9);
}

void sub_226E50CC8(void *a1)
{
  if (a1)
  {
    v2 = @"==";
    sub_226E63E70();
    sub_226E639C0();

    MEMORY[0x22AA8D010](0xD000000000000011, 0x8000000226E73660);
    v3 = sub_226E639B0();

    [a1 addIntegerClause:v2 fieldName:v3 expression:1];
  }
}

id IncomeInsights.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void IncomeInsights.init()()
{
  v1 = v0;
  v35 = OBJC_IVAR____TtC13FinHealthCore14IncomeInsights_fields;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_226E68E10;
  v37 = sub_226E639C0();
  v38 = v3;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v4 = sub_226E639C0();
  MEMORY[0x22AA8D010](v4);

  v5 = v38;
  *(v2 + 32) = v37;
  *(v2 + 40) = v5;
  v37 = sub_226E639C0();
  v38 = v6;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v7 = sub_226E639C0();
  MEMORY[0x22AA8D010](v7);

  v8 = v38;
  *(v2 + 48) = v37;
  *(v2 + 56) = v8;
  sub_226E63E70();
  v9 = sub_226E639C0();
  v11 = v10;

  MEMORY[0x22AA8D010](0xD000000000000014, 0x8000000226E73580);
  *(v2 + 64) = v9;
  *(v2 + 72) = v11;
  v37 = sub_226E639C0();
  v38 = v12;
  MEMORY[0x22AA8D010](0x6E756F6D615F742ELL, 0xE900000000000074);
  v13 = v38;
  *(v2 + 80) = v37;
  *(v2 + 88) = v13;
  v37 = sub_226E639C0();
  v38 = v14;
  MEMORY[0x22AA8D010](0x657079745F612ELL, 0xE700000000000000);
  v15 = v38;
  *(v2 + 96) = v37;
  *(v2 + 104) = v15;
  sub_226E63E70();
  v16 = sub_226E639C0();
  v18 = v17;

  MEMORY[0x22AA8D010](0xD000000000000024, 0x8000000226E735A0);
  *(v2 + 112) = v16;
  *(v2 + 120) = v18;
  sub_226E63E70();
  v19 = sub_226E639C0();
  v21 = v20;

  MEMORY[0x22AA8D010](0xD000000000000022, 0x8000000226E735D0);
  *(v2 + 128) = v19;
  *(v2 + 136) = v21;
  v37 = sub_226E639C0();
  v38 = v22;
  MEMORY[0x22AA8D010](0x657079745F742ELL, 0xE700000000000000);
  v23 = v38;
  *(v2 + 144) = v37;
  *(v2 + 152) = v23;
  sub_226E63E70();
  v24 = sub_226E639C0();
  v26 = v25;

  MEMORY[0x22AA8D010](0x65727275635F742ELL, 0xEF65646F6379636ELL);
  *(v2 + 160) = v24;
  *(v2 + 168) = v26;
  *&v0[v35] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6908, &unk_226E68A50);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_226E685D0;
  v37 = sub_226E639C0();
  v38 = v28;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v29 = sub_226E639C0();
  MEMORY[0x22AA8D010](v29);

  sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
  v30 = sub_226E63CF0();
  v31 = objc_allocWithZone(FHSmartCompoundFeatureRankedValue);
  v32 = sub_226E639B0();

  v33 = [v31 initWithLabelAndRank:v32 featureRank:v30];

  if (v33)
  {
    v34 = OBJC_IVAR____TtC13FinHealthCore14IncomeInsights_orderBy;
    *(v27 + 32) = v33;
    *&v1[v34] = v27;
    v36.receiver = v1;
    v36.super_class = type metadata accessor for IncomeInsights();
    objc_msgSendSuper2(&v36, sel_init);
  }

  else
  {
    __break(1u);
  }
}

id IncomeInsights.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IncomeInsights();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_226E512E4(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BE0, &qword_226E69030);
  v10 = *(type metadata accessor for IncomeInsights.IncomeInsight(0) - 8);
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
  v15 = *(type metadata accessor for IncomeInsights.IncomeInsight(0) - 8);
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

void sub_226E514BC(void *a1)
{
  if (a1)
  {
    sub_226E639C0();
    v9 = a1;
    v2 = @"==";
    MEMORY[0x22AA8D010](0x657275746165662ELL, 0xED0000656D616E5FLL);
    v3 = sub_226E639B0();

    [v9 addStringClause:v2 fieldName:v3 expression:@"GhentClassificationModel"];

    sub_226E639C0();
    v4 = v2;
    MEMORY[0x22AA8D010](0x6E6F69737265762ELL, 0xE800000000000000);
    v5 = sub_226E639B0();

    v6 = sub_226E639B0();
    [v9 addStringClause:v4 fieldName:v5 expression:v6];

    v7 = @">";
    sub_226E63E70();
    sub_226E639C0();

    MEMORY[0x22AA8D010](0xD000000000000010, 0x8000000226E73640);
    v8 = sub_226E639B0();

    [v9 addDoubleClause:v7 fieldName:v8 expression:0.8];
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226E516FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IncomeInsights.IncomeInsight(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of IncomeInsights.save()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E17C50;

  return v5();
}

uint64_t dispatch thunk of IncomeInsights.delete(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E1A614;

  return v7(a1);
}

uint64_t dispatch thunk of IncomeInsights.deleteAll()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E1A614;

  return v5();
}

unint64_t sub_226E51B8C()
{
  result = qword_27D7B7690[0];
  if (!qword_27D7B7690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7B7690);
  }

  return result;
}

unint64_t sub_226E51BE4()
{
  result = qword_27D7B77A0;
  if (!qword_27D7B77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B77A0);
  }

  return result;
}

unint64_t sub_226E51C3C()
{
  result = qword_27D7B77A8[0];
  if (!qword_27D7B77A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7B77A8);
  }

  return result;
}

uint64_t sub_226E51C90(uint64_t result)
{
  if (result && *(result + 16))
  {
    sub_226E2233C(result + 32, v2);
    result = swift_dynamicCast();
    if (result)
    {
      swift_beginAccess();
      sub_226E4B6D8(v1, v1[0], v1[1]);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_226E51D3C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_226E1A614;

  return sub_226E4D48C(v9, a2, v5, v6, v8, v7);
}

uint64_t sub_226E51DF8()
{
  v2 = *(type metadata accessor for IncomeInsights.IncomeInsight(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226E1A614;

  return sub_226E4DF10(v5, v6, v7, v8, v0 + v3, v4);
}

uint64_t objectdestroy_49Tm()
{
  v1 = *(type metadata accessor for IncomeInsights.IncomeInsight(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = sub_226E635C0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_226E52004()
{
  v2 = *(type metadata accessor for IncomeInsights.IncomeInsight(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226E1A614;

  return sub_226E4DFAC(v5, v6, v7, v8, v0 + v3, v4);
}

uint64_t sub_226E52104(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_226E635C0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_226E63240();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for IncomeInsights.IncomeInsight(0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = sub_226E638E0();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E522E8, 0, 0);
}

uint64_t sub_226E522E8(uint64_t a1)
{
  v39 = v1;
  v2 = v1[19];
  v3 = v1[15];
  v4 = v1[16];
  v6 = v1[13];
  v5 = v1[14];
  v7 = v1[2];
  v8 = sub_226E56FC8();
  v1[20] = v8;
  v9 = *(v4 + 16);
  v1[21] = v9;
  v1[22] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v8, v3);
  sub_226E4CD44(v7, v5);
  sub_226E4CD44(v7, v6);
  v10 = sub_226E638C0();
  v11 = sub_226E63C80();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v1[19];
  v14 = v1[15];
  v15 = v1[16];
  v17 = v1[13];
  v16 = v1[14];
  if (v12)
  {
    v18 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v18 = 136315394;
    sub_226E23108(&qword_27D7B6920, MEMORY[0x277CC9628]);
    v36 = v14;
    v37 = v13;
    v19 = sub_226E63FE0();
    v21 = v20;
    sub_226E4CDA8(v16);
    v22 = sub_226E1FC98(v19, v21, &v38);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    sub_226E23108(&qword_280CEA228, MEMORY[0x277CC9600]);
    v23 = sub_226E63C40();
    v25 = v24;
    sub_226E4CDA8(v17);
    v26 = sub_226E1FC98(v23, v25, &v38);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_226DD4000, v10, v11, "Saving Income Insight: %s\nTransaction Ids: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8E1B0](v35, -1, -1);
    MEMORY[0x22AA8E1B0](v18, -1, -1);

    v27 = *(v15 + 8);
    v27(v37, v36);
  }

  else
  {

    sub_226E4CDA8(v17);
    sub_226E4CDA8(v16);
    v27 = *(v15 + 8);
    v27(v13, v14);
  }

  v1[23] = v27;
  v28 = v1[10];
  v29 = v1[6];
  v30 = v1[2];
  (*(v1[5] + 16))(v29, v30, v1[4]);
  MEMORY[0x22AA8C820](v29);
  v31 = *(v30 + *(v28 + 20));
  v32 = swift_task_alloc();
  v1[24] = v32;
  *v32 = v1;
  v32[1] = sub_226E52618;
  v33 = v1[9];

  return MEMORY[0x282116EE0](v33, v31);
}

uint64_t sub_226E52618()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 200) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_226E529E0;
  }

  else
  {
    v5 = sub_226E52788;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226E52788()
{
  v21 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);
  (*(v0 + 168))(*(v0 + 144), *(v0 + 160), *(v0 + 120));
  sub_226E4CD44(v2, v1);
  v3 = sub_226E638C0();
  v4 = sub_226E63C80();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 184);
  v7 = *(v0 + 144);
  v8 = *(v0 + 120);
  v9 = *(v0 + 96);
  if (v5)
  {
    v19 = *(v0 + 184);
    v10 = swift_slowAlloc();
    v18 = v7;
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    sub_226E23108(&qword_27D7B6920, MEMORY[0x277CC9628]);
    v12 = sub_226E63FE0();
    v14 = v13;
    sub_226E4CDA8(v9);
    v15 = sub_226E1FC98(v12, v14, &v20);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226DD4000, v3, v4, "Income Insight Saved: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x22AA8E1B0](v11, -1, -1);
    MEMORY[0x22AA8E1B0](v10, -1, -1);

    v19(v18, v8);
  }

  else
  {

    sub_226E4CDA8(v9);
    v6(v7, v8);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_226E529E0()
{
  v28 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 88);
  v3 = *(v0 + 16);
  (*(v0 + 168))(*(v0 + 136), *(v0 + 160), *(v0 + 120));
  sub_226E4CD44(v3, v2);
  v4 = v1;
  v5 = sub_226E638C0();
  v6 = sub_226E63CA0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);
  v10 = *(v0 + 136);
  v11 = *(v0 + 120);
  v12 = *(v0 + 88);
  if (v7)
  {
    v26 = *(v0 + 184);
    v25 = *(v0 + 120);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v13 = 138412546;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v17;
    *v14 = v17;
    *(v13 + 12) = 2080;
    sub_226E23108(&qword_27D7B6920, MEMORY[0x277CC9628]);
    v18 = sub_226E63FE0();
    v24 = v10;
    v20 = v19;
    sub_226E4CDA8(v12);
    v21 = sub_226E1FC98(v18, v20, &v27);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_226DD4000, v5, v6, "Error: %@ when saving income insight: %s", v13, 0x16u);
    sub_226E15E98(v14, &qword_27D7B6918, &qword_226E68950);
    MEMORY[0x22AA8E1B0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x22AA8E1B0](v15, -1, -1);
    MEMORY[0x22AA8E1B0](v13, -1, -1);

    v26(v24, v25);
  }

  else
  {

    sub_226E4CDA8(v12);
    v9(v10, v11);
  }

  v22 = *(v0 + 8);

  return v22();
}

Swift::String __swiftcall DASActivities.callAsFunction()()
{
  if (*v0)
  {
    v1 = 0xD000000000000025;
  }

  else
  {
    v1 = 0xD00000000000002FLL;
  }

  if (*v0)
  {
    v2 = "lth.finance-background-delivery";
  }

  else
  {
    v2 = "lth.generative_insights";
  }

  v3 = (v2 | 0x8000000000000000);
  result._object = v3;
  result._countAndFlagsBits = v1;
  return result;
}

FinHealthCore::DASActivities_optional __swiftcall DASActivities.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_226E63F80();

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

uint64_t sub_226E52D90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000025;
  }

  else
  {
    v3 = 0xD00000000000002FLL;
  }

  if (v2)
  {
    v4 = "lth.generative_insights";
  }

  else
  {
    v4 = "lth.finance-background-delivery";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000025;
  }

  else
  {
    v6 = 0xD00000000000002FLL;
  }

  if (*a2)
  {
    v7 = "lth.finance-background-delivery";
  }

  else
  {
    v7 = "lth.generative_insights";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_226E63FF0();
  }

  return v9 & 1;
}

uint64_t sub_226E52E40()
{
  sub_226E640A0();
  sub_226E63A00();

  return sub_226E640C0();
}

uint64_t sub_226E52EC4(uint64_t a1)
{
  sub_226E63A00();
}

uint64_t sub_226E52F34(uint64_t a1)
{
  sub_226E640A0();
  sub_226E63A00();

  return sub_226E640C0();
}

uint64_t sub_226E52FB4@<X0>(char *a2@<X8>)
{
  v3 = sub_226E63F80();

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

void sub_226E53014(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000025;
  }

  else
  {
    v2 = 0xD00000000000002FLL;
  }

  if (*v1)
  {
    v3 = "lth.finance-background-delivery";
  }

  else
  {
    v3 = "lth.generative_insights";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

Swift::String __swiftcall FinanceActivities.callAsFunction()()
{
  v0 = 0x8000000226E73710;
  v1 = 0xD000000000000039;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t FinanceActivities.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_226E63F80();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_226E530E8()
{
  sub_226E640A0();
  sub_226E63A00();
  return sub_226E640C0();
}

uint64_t sub_226E5315C(uint64_t a1)
{
  sub_226E640A0();
  sub_226E63A00();
  return sub_226E640C0();
}

uint64_t sub_226E531B0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_226E63F80();

  *a2 = v3 != 0;
  return result;
}

uint64_t asUUID(rawString:lossy:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90);
  MEMORY[0x28223BE20](v9 - 8);
  v37 = &v33 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BE8, &unk_226E690E0);
  MEMORY[0x28223BE20](v34);
  v12 = &v33 - v11;
  v13 = sub_226E63930();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_226E63920();
  v35 = *(v17 - 8);
  v36 = v17;
  result = MEMORY[0x28223BE20](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8 == 2)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    v21 = sub_226E1FEBC(a1, a2);
    goto LABEL_10;
  }

  v33 = a4;

  v22 = sub_226E536EC(a1, a2);
  v24 = v23;
  sub_226E568FC(&qword_27D7B6BF0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_226E63910();
  sub_226E55ECC(v22, v24);
  sub_226E55CEC(v22, v24, v16);
  sub_226E3437C(v22, v24);
  sub_226E63900();
  sub_226E3437C(v22, v24);
  (*(v14 + 8))(v16, v13);
  v26 = v35;
  v25 = v36;
  (*(v35 + 16))(v12, v20, v36);
  *&v12[*(v34 + 36)] = 16;
  v21 = sub_226E55A88(v12);
  sub_226E15E98(v12, &qword_27D7B6BE8, &unk_226E690E0);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_226E55954(v21);
    v21 = result;
  }

  v27 = v21[2];
  a4 = v33;
  if (v27 < 7)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v21 + 38) = *(v21 + 38) & 0xF | 0x50;
  if (v27 < 9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v21 + 40) &= 0x3Fu;
  result = (*(v26 + 8))(v20, v25);
  if (v21[2] < 9uLL)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v21 + 40) |= 0x80u;
LABEL_10:
  v28 = [objc_allocWithZone(MEMORY[0x277CCAD78]) initWithUUIDBytes_];
  v29 = [v28 UUIDString];

  sub_226E639C0();
  v30 = v37;
  sub_226E635A0();

  v31 = sub_226E635C0();
  v32 = *(v31 - 8);
  result = (*(v32 + 48))(v30, 1, v31);
  if (result != 1)
  {

    return (*(v32 + 32))(a4, v30, v31);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_226E536EC(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6C40, &qword_226E694C8);
  if (swift_dynamicCast())
  {
    sub_226E49104(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_226E63440();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_226E15E98(__src, &qword_27D7B6C48, &unk_226E694D0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_226E63EB0();
  }

  sub_226E55454(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_226E569FC(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_226E5551C(sub_226E56A9C, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_226E634D0();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_226E56000(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_226E63A30();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_226E63A60();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_226E63EB0();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_226E56000(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_226E63A40();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_226E634E0();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_226E634E0();
    sub_226E343D0(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_226E343D0(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_226E55ECC(*&__src[0], *(&__src[0] + 1));

  sub_226E3437C(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_226E53C2C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_226E53C5C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_226E53CB4()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_226E53CE4(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_226E53D3C()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_226E53D6C(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_226E53DD0(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

void *sub_226E53E00()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t sub_226E53E80(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t sub_226E53EBC(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t sub_226E53EF8(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t sub_226E53F34(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t sub_226E53F64()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t sub_226E53F94(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

uint64_t sub_226E53FEC()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t sub_226E5401C(uint64_t a1, uint64_t a2)
{

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return result;
}

uint64_t sub_226E54080(uint64_t result, char a2)
{
  *(v2 + 168) = result;
  *(v2 + 176) = a2 & 1;
  return result;
}

uint64_t sub_226E540BC(uint64_t result, char a2)
{
  *(v2 + 184) = result;
  *(v2 + 192) = a2 & 1;
  return result;
}

uint64_t sub_226E540F8(uint64_t result, char a2)
{
  *(v2 + 200) = result;
  *(v2 + 208) = a2 & 1;
  return result;
}

uint64_t sub_226E54128@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v128 = 1;
  v127 = 1;
  v126 = 1;
  v125 = 1;
  v124 = 1;
  v123 = 1;
  v122 = 1;
  v121 = 1;
  v119 = sub_226E639C0();
  v120 = v6;

  MEMORY[0x22AA8D010](0x746E6564695F742ELL, 0xED00007265696669);

  v116 = a2;
  v7 = *(a2 + 16);
  v109 = a3;
  if (!v7)
  {
LABEL_90:

LABEL_91:

    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v49 = 0;
    v66 = 0;
    v13 = 0;
    v15 = 0;
    v10 = 0;
    v67 = 0;
    v68 = 0;
    goto LABEL_92;
  }

  v8 = 0;
  v9 = (a2 + 40);
  v10 = -32;
  while (1)
  {
    v11 = *(v9 - 1) == v119 && *v9 == v120;
    if (v11 || (sub_226E63FF0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1);
    v10 -= 32;
    v9 += 2;
    if (v7 == v8)
    {
      goto LABEL_90;
    }
  }

  v104 = @"transactions";
  v119 = sub_226E639C0();
  v120 = v12;

  MEMORY[0x22AA8D010](0xD000000000000014, 0x8000000226E73580);

  v13 = 0;
  v14 = (v116 + 40);
  v15 = -32;
  while (1)
  {
    if (v13 >= *(v116 + 16))
    {
      __break(1u);
      goto LABEL_136;
    }

    v16 = *(v14 - 1) == v119 && *v14 == v120;
    if (v16 || (sub_226E63FF0() & 1) != 0)
    {
      break;
    }

    ++v13;
    v15 -= 32;
    v14 += 2;
    if (v7 == v13)
    {
      goto LABEL_90;
    }
  }

  v101 = a1;

  v119 = sub_226E639C0();
  v120 = v17;

  MEMORY[0x22AA8D010](0x6E756F6D615F742ELL, 0xE900000000000074);

  v18 = 0;
  v19 = (v116 + 40);
  v20 = -32;
  while (1)
  {
    if (v18 >= *(v116 + 16))
    {
      __break(1u);
      goto LABEL_136;
    }

    v21 = *(v19 - 1) == v119 && *v19 == v120;
    if (v21 || (sub_226E63FF0() & 1) != 0)
    {
      break;
    }

    v18 = (v18 + 1);
    v20 -= 32;
    v19 += 2;
    if (v7 == v18)
    {
      goto LABEL_90;
    }
  }

  v119 = sub_226E639C0();
  v120 = v22;

  MEMORY[0x22AA8D010](0x657461645F742ELL, 0xE700000000000000);

  v23 = 0;
  v24 = (v116 + 40);
  v25 = -32;
  while (2)
  {
    if (v23 >= *(v116 + 16))
    {
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
      goto LABEL_135;
    }

    v114 = v25;
    v115 = v23;
    v26 = *(v24 - 1) == v119 && *v24 == v120;
    if (!v26 && (sub_226E63FF0() & 1) == 0)
    {
      v23 = v115 + 1;
      v25 = v114 - 32;
      v24 += 2;
      if (v7 == (v115 + 1))
      {
        goto LABEL_90;
      }

      continue;
    }

    break;
  }

  v119 = sub_226E639C0();
  v120 = v27;

  MEMORY[0x22AA8D010](0x6C707369645F6D2ELL, 0xEE00656D616E7961);

  v28 = 0;
  v29 = (v116 + 40);
  v30 = -32;
  while (1)
  {
    if (v28 >= *(v116 + 16))
    {
      goto LABEL_129;
    }

    v110 = v30;
    v112 = v28;
    v31 = *(v29 - 1) == v119 && *v29 == v120;
    if (v31 || (sub_226E63FF0() & 1) != 0)
    {
      break;
    }

    v28 = v112 + 1;
    v30 = v110 - 32;
    v29 += 2;
    if (v7 == (v112 + 1))
    {
      goto LABEL_90;
    }
  }

  v119 = sub_226E639C0();
  v120 = v32;

  MEMORY[0x22AA8D010](0xD000000000000013, 0x8000000226E73770);

  v33 = 0;
  v34 = (v116 + 40);
  v35 = -32;
  while (1)
  {
    if (v33 >= *(v116 + 16))
    {
      goto LABEL_130;
    }

    v107 = v35;
    v108 = v33;
    v36 = *(v34 - 1) == v119 && *v34 == v120;
    if (v36 || (sub_226E63FF0() & 1) != 0)
    {
      break;
    }

    v33 = v108 + 1;
    v35 = v107 - 32;
    v34 += 2;
    if (v7 == (v108 + 1))
    {
      goto LABEL_90;
    }
  }

  v119 = sub_226E639C0();
  v120 = v37;

  MEMORY[0x22AA8D010](0xD000000000000019, 0x8000000226E73790);

  v38 = 0;
  v39 = (v116 + 40);
  v40 = -32;
  while (1)
  {
    if (v38 >= *(v116 + 16))
    {
      goto LABEL_131;
    }

    v105 = v40;
    v106 = v38;
    v41 = *(v39 - 1) == v119 && *v39 == v120;
    if (v41 || (sub_226E63FF0() & 1) != 0)
    {
      break;
    }

    v38 = v106 + 1;
    v40 = v105 - 32;
    v39 += 2;
    if (v7 == (v106 + 1))
    {
      goto LABEL_90;
    }
  }

  v119 = sub_226E639C0();
  v120 = v42;

  MEMORY[0x22AA8D010](0x695F70756F72672ELL, 0xE900000000000064);

  v43 = 0;
  v44 = (v116 + 40);
  v45 = -32;
  while (2)
  {
    if (v43 >= *(v116 + 16))
    {
      __break(1u);
LABEL_134:

LABEL_135:

LABEL_136:

      goto LABEL_91;
    }

    v102 = v45;
    v103 = v43;
    v46 = *(v44 - 1) == v119 && *v44 == v120;
    if (!v46 && (sub_226E63FF0() & 1) == 0)
    {
      v43 = v103 + 1;
      v45 = v102 - 32;
      v44 += 2;
      if (v7 == (v103 + 1))
      {
        goto LABEL_90;
      }

      continue;
    }

    break;
  }

  v119 = sub_226E639C0();
  v120 = v47;

  MEMORY[0x22AA8D010](0x65727275635F742ELL, 0xEF65646F6379636ELL);

  v48 = 0;
  v49 = (v116 + 40);
  v50 = -32;
  while (v48 < *(v116 + 16))
  {
    v99 = v50;
    v100 = v48;
    v51 = *(v49 - 1) == v119 && *v49 == v120;
    if (v51 || (sub_226E63FF0() & 1) != 0)
    {

      v119 = sub_226E639C0();
      v120 = v52;

      MEMORY[0x22AA8D010](0x657079745F742ELL, 0xE700000000000000);

      v53 = 0;
      v49 = (v116 + 40);
      v54 = -32;
      while (1)
      {
        v97 = v54;
        v98 = v53;
        if (v53 >= *(v116 + 16))
        {
          goto LABEL_138;
        }

        v55 = *(v49 - 1) == v119 && *v49 == v120;
        if (v55 || (sub_226E63FF0() & 1) != 0)
        {
          break;
        }

        v53 = v98 + 1;
        v54 = v97 - 32;
        v49 += 2;
        if (v7 == (v98 + 1))
        {
          goto LABEL_90;
        }
      }

      v119 = sub_226E639C0();
      v120 = v77;

      MEMORY[0x22AA8D010](0x657079745F612ELL, 0xE700000000000000);

      v78 = 0;
      v49 = (v116 + 40);
      v79 = -32;
      while (1)
      {
        v96 = v79;
        v104 = v78;
        if (v78 >= *(v116 + 16))
        {
          goto LABEL_139;
        }

        v80 = *(v49 - 1) == v119 && *v49 == v120;
        if (v80 || (sub_226E63FF0() & 1) != 0)
        {
          break;
        }

        v78 = (v104 + 1);
        v79 = v96 - 32;
        v49 += 2;
        if (v7 == (v104 + 1))
        {

          goto LABEL_136;
        }
      }

      v49 = v101;
      if (v8 >= v101[2])
      {
        __break(1u);
        goto LABEL_164;
      }

      sub_226E2233C(v101 - v10, &v119);
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        goto LABEL_91;
      }

      if (v18 >= v101[2])
      {
        __break(1u);
      }

      else
      {
        sub_226E2233C(&v101[v20 / 0xFFFFFFFFFFFFFFF8], &v119);
        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          goto LABEL_136;
        }

        v116 = v118;
        if (v115 < v101[2])
        {
          sub_226E2233C(v101 - v114, &v119);
          result = swift_dynamicCast();
          if ((result & 1) == 0)
          {
            goto LABEL_136;
          }

          if (v13 < v101[2])
          {
            sub_226E2233C(v101 - v15, &v119);
            result = swift_dynamicCast();
            if ((result & 1) == 0)
            {
              goto LABEL_136;
            }

            if (v100 < v101[2])
            {
              v49 = v118;
              sub_226E2233C(v101 - v99, &v119);
              result = swift_dynamicCast();
              if ((result & 1) == 0)
              {
                goto LABEL_135;
              }

              if (v98 < v101[2])
              {
                v13 = v118;
                sub_226E2233C(v101 - v97, &v119);
                result = swift_dynamicCast();
                if ((result & 1) == 0)
                {
                  goto LABEL_134;
                }

                v115 = v117;
                if (v104 < v101[2])
                {
                  v15 = v117;
                  sub_226E2233C(v101 - v96, &v119);
                  result = swift_dynamicCast();
                  if ((result & 1) == 0)
                  {
                    goto LABEL_134;
                  }

                  v99 = v117;
                  v100 = v117;
                  v104 = v117;
                  v114 = v117;
                  if (v112 < v101[2])
                  {
                    v10 = v117;
                    sub_226E2233C(v101 - v110, &v119);
                    result = swift_dynamicCast();
                    if ((result & 1) == 0)
                    {
                      goto LABEL_141;
                    }

                    v58 = v117;
                    v113 = v118;
                    if ((v118 & 0x2000000000000000) != 0)
                    {
                      v81 = HIBYTE(v118) & 0xF;
                    }

                    else
                    {
                      v81 = v117 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v81)
                    {

                      v121 = 0;
                      v67 = 2;
                      goto LABEL_166;
                    }

                    goto LABEL_140;
                  }

LABEL_179:
                  __break(1u);
                  __break(1u);
                  __break(1u);
                  goto LABEL_180;
                }

LABEL_178:
                __break(1u);
                goto LABEL_179;
              }

LABEL_177:
              __break(1u);
              goto LABEL_178;
            }

LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

LABEL_175:
          __break(1u);
          goto LABEL_176;
        }
      }

      __break(1u);
      goto LABEL_175;
    }

    v48 = v100 + 1;
    v50 = v99 - 32;
    v49 += 2;
    if (v7 == (v100 + 1))
    {
      goto LABEL_90;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:

LABEL_141:
  if (v108 >= v101[2])
  {
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  sub_226E2233C(v101 - v107, &v119);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_148;
  }

  v58 = v117;
  v113 = v118;
  if ((v118 & 0x2000000000000000) != 0)
  {
    v82 = HIBYTE(v118) & 0xF;
  }

  else
  {
    v82 = v117 & 0xFFFFFFFFFFFFLL;
  }

  if (v82)
  {
LABEL_154:

    v121 = 0;
    v67 = 1;
    goto LABEL_166;
  }

LABEL_148:
  if (v106 >= v101[2])
  {
    goto LABEL_181;
  }

  sub_226E2233C(v101 - v105, &v119);
  result = swift_dynamicCast();
  if (result)
  {
    v58 = v117;
    v113 = v118;
    if ((v118 & 0x2000000000000000) != 0)
    {
      v83 = HIBYTE(v118) & 0xF;
    }

    else
    {
      v83 = v117 & 0xFFFFFFFFFFFFLL;
    }

    if (v83)
    {
      goto LABEL_154;
    }
  }

  if (v103 >= v101[2])
  {
LABEL_182:
    __break(1u);
    return result;
  }

  sub_226E2233C(v101 - v102, &v119);

  if (swift_dynamicCast())
  {
    v58 = v117;
    v113 = v118;
    if ((v118 & 0x2000000000000000) != 0)
    {
      v84 = HIBYTE(v118) & 0xF;
    }

    else
    {
      v84 = v117 & 0xFFFFFFFFFFFFLL;
    }

    if (v84)
    {
      v121 = 0;
      v67 = 3;
      goto LABEL_166;
    }

LABEL_164:
  }

  v58 = 0;
  v113 = 0;
  v67 = 0;
LABEL_166:
  v128 = 0;
  v85 = [objc_allocWithZone(MEMORY[0x277CCA980]) initWithDouble_];
  v61 = v85;
  v127 = 0;
  v125 = 0;
  v62 = v104 / 86400;
  if (v85)
  {
    v86 = v85;
    sub_226E63C20();
    v88 = v87;

    v89 = log10(fabs(v88) + 1.0);
    v126 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BD0, &unk_226E68E50);
    v90 = swift_allocObject();
    v91 = MEMORY[0x277D839F8];
    *(v90 + 16) = xmmword_226E685F0;
    v92 = MEMORY[0x277D83A80];
    *(v90 + 56) = v91;
    *(v90 + 64) = v92;
    v111 = v89;
    *(v90 + 32) = v89;
    v93 = sub_226E639D0();
    v119 = 0;
    v95 = sub_226E560CC(v93, v94, &v119);

    if (v95)
    {
      v64 = v119;
    }

    else
    {
      v64 = 0;
    }

    v124 = !v95;
  }

  else
  {
    v64 = 0;
    v111 = 0.0;
  }

  v123 = 0;
  v122 = 0;
  v59 = v113;
  v60 = v114;
  v68 = *&v111;
  v56 = v99;
  v65 = v100;
  v63 = v104;
  v66 = v115;
  v57 = v116;
LABEL_92:
  v69 = v128;
  v70 = v127;
  v71 = v126;
  result = v125;
  v73 = v124;
  v74 = v123;
  v75 = v122;
  v76 = v121;
  *v109 = v56;
  v109[1] = v57;
  v109[2] = v58;
  v109[3] = v59;
  v109[4] = 0;
  v109[5] = 0;
  v109[6] = v60;
  *(v109 + 56) = v69;
  v109[8] = v61;
  v109[9] = v62;
  *(v109 + 80) = v70;
  v109[11] = v68;
  *(v109 + 96) = v71;
  v109[13] = v63;
  *(v109 + 112) = result;
  v109[15] = v64;
  *(v109 + 128) = v73;
  v109[17] = v65;
  v109[18] = v49;
  v109[19] = v66;
  v109[20] = v13;
  v109[21] = v15;
  *(v109 + 176) = v74;
  v109[23] = v10;
  *(v109 + 192) = v75;
  v109[25] = v67;
  *(v109 + 208) = v76;
  return result;
}