uint64_t sub_22FA2B268(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_22FA2B2AC(NSObject *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  dispatch_group_enter(a1);
  v8 = sub_22FCC8D14();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  v9[5] = a1;
  swift_unownedRetain();
  v10 = a1;
  sub_22FC3EE08(0, 0, v7, &unk_22FCD77D8, v9);

  return sub_22FCC8F74();
}

uint64_t sub_22FA2B3D0()
{
  swift_unknownObjectRelease();
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22FA2B420(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22FA2B480(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FA2C21C;

  return sub_22FA2B538(a1, v4);
}

uint64_t sub_22FA2B538(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FA2C124;

  return v6(a1);
}

uint64_t sub_22FA2B630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22FA2C030;

  return sub_22FA2B6F0(a1, v4, v5, v7, v6);
}

uint64_t sub_22FA2B6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22FA2B710, 0, 0);
}

uint64_t sub_22FA2B710()
{
  swift_unownedRetainStrong();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22FA2BEB8;

  return sub_22FA2B7A8();
}

uint64_t sub_22FA2B7A8()
{
  v1[39] = v0;
  v2 = sub_22FCC6794();
  v1[40] = v2;
  v1[41] = *(v2 - 8);
  v1[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA2B868, v0, 0);
}

void sub_22FA2B868()
{
  v63 = v0;
  v1 = *(v0 + 312);
  *(v0 + 344) = CFAbsoluteTimeGetCurrent();
  v2 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 352) = v3;
  v4 = *(v3 + 32);
  *(v0 + 392) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);
  *(v0 + 360) = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger;

  v8 = 0;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v9 = *(v0 + 352);
LABEL_16:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v8 << 6);
      v16 = (*(v9 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      sub_22FA2D328(*(v9 + 56) + 40 * v15, v0 + 128);
      *(v0 + 72) = v18;
      *(v0 + 80) = v17;
      sub_22FA2CF78((v0 + 128), v0 + 88);

      v12 = v8;
LABEL_17:
      *(v0 + 368) = v7;
      *(v0 + 376) = v12;
      v19 = *(v0 + 88);
      *(v0 + 16) = *(v0 + 72);
      *(v0 + 32) = v19;
      *(v0 + 48) = *(v0 + 104);
      *(v0 + 64) = *(v0 + 120);
      if (!*(v0 + 24))
      {

        v40 = *(v0 + 8);

        v40();
        return;
      }

      sub_22FA2CF78((v0 + 32), v0 + 168);
      v20 = *(v0 + 192);
      v21 = *(v0 + 200);
      __swift_project_boxed_opaque_existential_1((v0 + 168), v20);
      if ((*(v21 + 72))(v20, v21))
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 168));
      v8 = v12;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v22 = *(v0 + 344);
    v23 = *(v0 + 312);
    v24 = *(v0 + 192);
    v25 = *(v0 + 200);
    __swift_project_boxed_opaque_existential_1((v0 + 168), v24);
    v26 = v22 - (*(v25 + 64))(v24, v25);
    if (*(v23 + 128) < v26)
    {
      sub_22FA2D328(v0 + 168, v0 + 248);
      v41 = sub_22FCC8664();
      v42 = sub_22FCC8F14();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v62 = v44;
        *v43 = 136315394;
        v45 = *(v0 + 272);
        v46 = *(v0 + 280);
        __swift_project_boxed_opaque_existential_1((v0 + 248), v45);
        v47 = (*(v46 + 48))(v45, v46);
        v49 = v48;
        __swift_destroy_boxed_opaque_existential_0((v0 + 248));
        v50 = sub_22FA2F600(v47, v49, &v62);

        *(v43 + 4) = v50;
        *(v43 + 12) = 2080;
        v51 = sub_22FC3B88C(v26);
        v53 = sub_22FA2F600(v51, v52, &v62);

        *(v43 + 14) = v53;
        _os_log_impl(&dword_22FA28000, v41, v42, "Task %s has been stuck for %s. Manually exiting process.", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v44, -1, -1);
        MEMORY[0x23190A000](v43, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0((v0 + 248));
      }

      v54 = *(v0 + 192);
      v55 = *(v0 + 200);
      __swift_project_boxed_opaque_existential_1((v0 + 168), v54);
      (*(v55 + 128))(v54, v55);
      sub_22FCC6784();
      v57 = *(v0 + 192);
      v56 = *(v0 + 200);
      v58 = __swift_project_boxed_opaque_existential_1((v0 + 168), v57);
      v59 = swift_task_alloc();
      *(v0 + 384) = v59;
      *v59 = v0;
      v59[1] = sub_22FB2CB44;
      v60 = *(v0 + 336);
      v61 = *(v0 + 312);

      sub_22FB3056C(v58, v60, v61, v57, v56);
      return;
    }

    if (*(*(v0 + 312) + 120) < v26)
    {
      sub_22FA2D328(v0 + 168, v0 + 208);
      v27 = sub_22FCC8664();
      v28 = sub_22FCC8F14();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v62 = v30;
        *v29 = 136315394;
        v31 = *(v0 + 232);
        v32 = *(v0 + 240);
        __swift_project_boxed_opaque_existential_1((v0 + 208), v31);
        v33 = (*(v32 + 48))(v31, v32);
        v35 = v34;
        __swift_destroy_boxed_opaque_existential_0((v0 + 208));
        v36 = sub_22FA2F600(v33, v35, &v62);

        *(v29 + 4) = v36;
        *(v29 + 12) = 2080;
        v37 = sub_22FC3B88C(v26);
        v39 = sub_22FA2F600(v37, v38, &v62);

        *(v29 + 14) = v39;
        _os_log_impl(&dword_22FA28000, v27, v28, "Task %s hasn't reported progress for %s.", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v30, -1, -1);
        MEMORY[0x23190A000](v29, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0((v0 + 208));
      }
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 168));
    v7 = *(v0 + 368);
    v8 = *(v0 + 376);
  }

  while (v7);
LABEL_8:
  v10 = ((1 << *(v0 + 392)) + 63) >> 6;
  if (v10 <= (v8 + 1))
  {
    v11 = v8 + 1;
  }

  else
  {
    v11 = ((1 << *(v0 + 392)) + 63) >> 6;
  }

  v12 = v11 - 1;
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      v7 = 0;
      *(v0 + 120) = 0;
      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
      *(v0 + 72) = 0u;
      goto LABEL_17;
    }

    v9 = *(v0 + 352);
    v7 = *(v9 + 8 * v13 + 64);
    ++v8;
    if (v7)
    {
      v8 = v13;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_22FA2BEB8()
{

  return MEMORY[0x2822009F8](sub_22FA2BFD0, 0, 0);
}

uint64_t sub_22FA2BFD0()
{
  dispatch_group_leave(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA2C030()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22FA2C124()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22FA2C3C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FA2C21C;

  return sub_22FA2B538(a1, v4);
}

uint64_t sub_22FA2C480(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FA2C54C(a1, v4, v5, v6);
}

uint64_t sub_22FA2C54C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_22FA2C030;

  return v7();
}

uint64_t sub_22FA2C634()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22FA2C21C;

  return sub_22FA2C6F4(v2, v3, v4);
}

uint64_t sub_22FA2C6F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_22FA2C21C;

  return v6();
}

uint64_t sub_22FA2C7DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C21C;

  return sub_22FA2C89C(v2, v3, v5, v4);
}

uint64_t sub_22FA2C89C(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = sub_22FCC8C44();
  v4[4] = v5;
  v6 = sub_22FCC8A84();
  v8 = v7;
  v4[5] = v7;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_22FB9BD28;

  return sub_22FA2C998(v5, v6, v8);
}

uint64_t sub_22FA2C998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = *v3;
  v5 = sub_22FCC8684();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA2CA84, 0, 0);
}

uint64_t sub_22FA2CA84(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 128);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Journal - requestPersonalTraitsForAssets", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = *(v2 + 144);
  v8 = *(v2 + 152);
  v10 = *(v2 + 136);
  v11 = *(v2 + 112);
  v12 = *(v2 + 120);
  v13 = *(v2 + 96);
  v14 = *(v2 + 104);
  v25 = *(v2 + 128);

  (*(v9 + 8))(v8, v10);
  v15 = v12[16];
  v16 = *(v15 + 112);
  *(v2 + 160) = v16;
  v26 = v12[14];
  v27 = v12[15];

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v14, v11);
  *(v2 + 40) = type metadata accessor for MomentGraphWorker();
  *(v2 + 48) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  *(v2 + 16) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v25;
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v13;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B20, &qword_22FCDA260);
  v20 = swift_allocObject();
  *(v2 + 168) = v20;
  *(v20 + 48) = 0;
  *(v20 + 56) = 0;
  *(v20 + 16) = 0x6C616E6F73726550;
  *(v20 + 24) = 0xEF73746961725420;
  *(v20 + 32) = v26;
  *(v20 + 40) = v27;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 80) = 0;
  *(v20 + 88) = 0u;
  *(v20 + 104) = 0u;
  *(v20 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v20 + 144);
  *(v20 + 128) = &unk_22FCDA288;
  *(v20 + 136) = v18;
  *(v20 + 184) = sub_22FBA5034;
  *(v20 + 192) = v17;
  *(v2 + 80) = v19;
  *(v2 + 88) = sub_22FA2CF90(&qword_281481690, &qword_27DAD8B20, &qword_22FCDA260, &unk_22FCD9FA8);
  *(v2 + 56) = v20;

  v21 = swift_task_alloc();
  *(v2 + 176) = v21;
  *v21 = v2;
  v21[1] = sub_22FB9B7B8;
  v22 = *(v2 + 104);
  v23 = *(v2 + 112);

  return sub_22FA2CFD8(v2 + 56, 0xD00000000000001ELL, 0x800000022FCE6350, v22, v23);
}

uint64_t sub_22FA2CE7C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22FA2CEC4(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();

  return sub_22FCC8674();
}

uint64_t sub_22FA2CF78(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22FA2CF90(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FA2CFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA2D07C, v5, 0);
}

uint64_t sub_22FA2D07C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 80);
  }

  else
  {
    *(v0 + 56) = *(*(v0 + 104) + 152);
    v3 = sub_22FCC96C4();
    MEMORY[0x231907FA0](v3);

    v1 = 0x6F6974617265704FLL;
    v2 = 0xEA0000000000206ELL;
  }

  *(v0 + 120) = v2;
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 64);
  v7 = sub_22FCC8D14();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_22FA2D328(v6, v0 + 16);
  v8 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v8;
  v9[4] = v5;
  sub_22FA2CF78((v0 + 16), (v9 + 5));
  swift_retain_n();

  v10 = sub_22FB23604(0, 0, v4, &unk_22FCDA278, v9);
  *(v0 + 128) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v11 = swift_allocObject();
  *(v0 + 136) = v11;
  *(v11 + 16) = xmmword_22FCD1800;
  v12 = v6[3];
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v12);
  v14 = *(v13 + 48);

  *(v11 + 32) = v14(v12, v13);
  *(v11 + 40) = v15;
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *v16 = v0;
  v16[1] = sub_22FB7D69C;
  v17 = *(v0 + 96);
  v18 = *(v0 + 88);

  return sub_22FA2D410(v1, v2, v10, v11, v18, v17);
}

uint64_t sub_22FA2D328(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22FA2D3DC()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_22FA2D410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[35] = a6;
  v7[36] = v6;
  v7[33] = a4;
  v7[34] = a5;
  v7[31] = a2;
  v7[32] = a3;
  v7[30] = a1;
  return MEMORY[0x2822009F8](sub_22FA2D43C, v6, 0);
}

uint64_t sub_22FA2D43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = v5;
  v6 = *(v5 + 288);
  v7 = *(v6 + 152);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v10 = *(v5 + 272);
  v11 = *(v5 + 280);
  *(v6 + 152) = v9;
  v12 = sub_22FA2D6F8(v10, v11);
  v14 = v13;
  *(v5 + 296) = v12;
  *(v5 + 304) = v13;
  swift_beginAccess();
  v15 = *(v6 + 144);
  if (!*(v15 + 16))
  {
LABEL_8:
    v22 = *(v5 + 256);
    v21 = *(v5 + 264);
    v24 = *(v5 + 240);
    v23 = *(v5 + 248);
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0;
    sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
    v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E90, &unk_22FCDC6B0);
    v28[4] = &off_2844AA6C8;
    v25 = swift_allocObject();
    v28[0] = v25;
    v25[2] = v24;
    v25[3] = v23;
    v25[4] = v22;
    v25[5] = v21;
    swift_beginAccess();

    sub_22FA2D8A0(v28, v12, v14);
    swift_endAccess();
    v26 = swift_task_alloc();
    *(v5 + 312) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84D0, &unk_22FCD6728);
    a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    *v26 = v5;
    v26[1] = sub_22FBE5E84;
    a2 = *(v5 + 256);
    a5 = MEMORY[0x277D84950];
    a1 = v5 + 232;
    a3 = v27;

    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v16 = sub_22FA2DB54(v12, v14);
  if ((v17 & 1) == 0)
  {

    goto LABEL_8;
  }

  sub_22FA2D328(*(v15 + 56) + 40 * v16, v5 + 16);

  sub_22FA2B420(v5 + 16, &qword_27DAD8E68, &qword_22FCDC5B8);
  sub_22FC11360();
  swift_allocError();
  *v18 = v12;
  v18[1] = v14;
  swift_willThrow();
  v19 = *(v5 + 8);

  return v19();
}

uint64_t sub_22FA2D6F8(uint64_t a1, uint64_t a2)
{
  v5 = sub_22FCC67F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 120);
  v17 = *(v2 + 112);
  v18 = v10;

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  v12 = v17;
  v11 = v18;
  if (sub_22FCC8A84() == a1 && v13 == a2)
  {
  }

  else
  {
    v14 = sub_22FCC9704();

    if ((v14 & 1) == 0)
    {

      goto LABEL_7;
    }
  }

  sub_22FCC67E4();
  a1 = sub_22FCC67B4();
  a2 = v15;
  (*(v6 + 8))(v9, v5);
LABEL_7:
  v17 = v12;
  v18 = v11;

  MEMORY[0x231907FA0](a1, a2);

  return v17;
}

uint64_t sub_22FA2D8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_22FA2CF78(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_22FA2DB00(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_22FA2B420(a1, &qword_27DAD8E68, &qword_22FCDC5B8);
    sub_22FB0421C(a2, a3, v9);

    return sub_22FA2B420(v9, &qword_27DAD8E68, &qword_22FCDC5B8);
  }

  return result;
}

uint64_t sub_22FA2D970(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), uint64_t (*a7)(uint64_t, uint64_t), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = v8;
  v17 = *v8;
  v18 = sub_22FA2DB54(a2, a3);
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
    v18 = sub_22FA2DB54(a2, a3);
    if ((v24 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_22FCC9774();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v12;
  if (v24)
  {
    v29 = (*(v28 + 56) + 40 * v18);
    __swift_destroy_boxed_opaque_existential_0(v29);

    return a7(a1, v29);
  }

  else
  {
    a8(v18, a2, a3, a1, v28);
  }
}

unint64_t sub_22FA2DB54(uint64_t a1, uint64_t a2)
{
  sub_22FCC9844();
  sub_22FCC8B14();
  v4 = sub_22FCC9894();

  return sub_22FA2DBCC(a1, a2, v4);
}

unint64_t sub_22FA2DBCC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22FCC9704())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_22FA2DC84(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a5[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = a6(a4, a5[7] + 40 * a1);
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

uint64_t sub_22FA2DD10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FA2DE98(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_22FA2DDDC()
{
  v1 = *(v0[3] + 136);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22FBA289C;
  v3 = v0[4];

  return sub_22FA2DEBC(v3, v1);
}

uint64_t sub_22FA2DE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22FA2DDDC, a4, 0);
}

uint64_t sub_22FA2DEBC(uint64_t a1, char a2)
{
  *(v3 + 440) = a2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v2;
  v4 = sub_22FCC8684();
  *(v3 + 344) = v4;
  *(v3 + 352) = *(v4 - 8);
  *(v3 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA2DF80, v2, 0);
}

uint64_t sub_22FA2DF80()
{
  v63 = v0;
  sub_22FCC8DA4();
  *(v0 + 368) = 0;
  v1 = *(v0 + 336);
  v2 = *(v1 + 136);
  v3 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  *(v0 + 376) = v2;
  *(v0 + 384) = v3;
  if (*(v2 + v3) != 2)
  {
    v21 = *(v2 + 16);
    v20 = *(v2 + 24);
LABEL_6:
    sub_22FAA1C84();
    swift_allocError();
    *v22 = v21;
    *(v22 + 8) = v20;
    *(v22 + 16) = 0;
    swift_willThrow();

LABEL_25:

    v49 = *(v0 + 8);

    return v49();
  }

  v4 = *(v0 + 328);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = (*(v6 + 48))(v5, v6);
  v9 = v8;
  *(v0 + 392) = v7;
  *(v0 + 400) = v8;
  v10 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  *(v0 + 408) = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_22FA2DB54(v7, v9);
    if (v13)
    {
      v14 = v12;
      v15 = *(v0 + 328);

      sub_22FA2D328(*(v11 + 56) + 40 * v14, v0 + 16);

      sub_22FA2B420(v0 + 16, &unk_27DAD8720, &qword_22FCD77E0);
      sub_22FAE11BC();
      swift_allocError();
      v17 = v16;
      v59 = *(v4 + 3);
      v18 = __swift_project_boxed_opaque_existential_1(v15, v59);
      *(v17 + 24) = v59;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
      (*(*(v59 - 8) + 16))(boxed_opaque_existential_1, v18, v59);
      *(v17 + 48) = 4;
LABEL_24:
      swift_willThrow();
      goto LABEL_25;
    }
  }

  v23 = *(v0 + 440);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_22FA2B420(v0 + 16, &unk_27DAD8720, &qword_22FCD77E0);
  if (v23)
  {
    if (v23 != 1)
    {
      v24 = swift_task_alloc();
      *(v0 + 416) = v24;
      *v24 = v0;
      v24[1] = sub_22FBF112C;

      return sub_22FB2D328();
    }
  }

  else if (sub_22FB2E34C())
  {
    v26 = *(v0 + 328);

    sub_22FA2D328(v26, v0 + 216);
    v27 = sub_22FCC8664();
    v28 = sub_22FCC8F34();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62[0] = v30;
      *v29 = 136446210;
      v31 = *(v0 + 240);
      v32 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v31);
      v33 = (*(v32 + 48))(v31, v32);
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_0((v0 + 216));
      v36 = sub_22FA2F600(v33, v35, v62);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_22FA28000, v27, v28, "On-demand task(s) already running, dropping requested background task '%{public}s'", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23190A000](v30, -1, -1);
      MEMORY[0x23190A000](v29, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 216));
    }

    v44 = *(v0 + 328);
    sub_22FAE11BC();
    swift_allocError();
    v46 = v45;
    v60 = *(v4 + 3);
    v47 = __swift_project_boxed_opaque_existential_1(v44, v60);
    *(v46 + 24) = v60;
    v48 = __swift_allocate_boxed_opaque_existential_1(v46);
    (*(*(v60 - 8) + 16))(v48, v47, v60);
    *(v46 + 48) = 2;
    goto LABEL_24;
  }

  v37 = *(v0 + 368);
  sub_22FCC8DA4();
  if (v37)
  {

    goto LABEL_25;
  }

  v38 = *(v0 + 376);
  if (*(v38 + *(v0 + 384)) != 2)
  {

    v21 = *(v38 + 16);
    v20 = *(v38 + 24);
    goto LABEL_6;
  }

  v39 = *(v0 + 328);
  v40 = v39[3];
  v41 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(v41 + 104))(v40, v41);
  if (*(v0 + 120))
  {
    sub_22FA2CF78((v0 + 96), v0 + 56);
    v42 = *(v0 + 80);
    v43 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v42);
    (*(v43 + 8))(v42, v43);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  }

  else
  {
    sub_22FA2B420(v0 + 96, &unk_27DAD83A0, &qword_22FCD1AC0);
  }

  v50 = *(v0 + 400);
  v61 = *(v0 + 392);
  v52 = *(v0 + 352);
  v51 = *(v0 + 360);
  v53 = *(v0 + 336);
  v54 = *(v0 + 344);
  v55 = *(v0 + 440);
  sub_22FA2D328(*(v0 + 328), v0 + 136);
  (*(v52 + 16))(v51, v53 + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_logger, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E98, &qword_22FCDC6C8);
  swift_allocObject();
  v57 = sub_22FA2E764(v0 + 136, v55, v51, sub_22FA2D89C);
  *(v0 + 424) = v57;
  v62[3] = v56;
  v62[4] = sub_22FA2CF90(&qword_2814813F8, &qword_27DAD8E98, &qword_22FCDC6C8, &unk_22FCD3420);
  v62[0] = v57;
  swift_beginAccess();

  sub_22FA2E954(v62, v61, v50);
  swift_endAccess();
  v58 = swift_task_alloc();
  *(v0 + 432) = v58;
  *v58 = v0;
  v58[1] = sub_22FBEA668;

  return sub_22FA2EA78(v57);
}

uint64_t sub_22FA2E6E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD83A0, &qword_22FCD1AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FA2E764(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  *(v4 + qword_281488018) = 0;
  *(v4 + qword_281488010) = 0;
  *(v4 + qword_281488020) = 0;
  *(v4 + qword_281488028) = 0;
  *(v4 + qword_281488030) = 0;
  *(v4 + *(*v4 + 152)) = 0;
  *(v4 + *(*v4 + 160)) = 0;
  v9 = *(*v4 + 168);
  v10 = sub_22FCC6794();
  v11 = *(*(v10 - 8) + 56);
  v11(v4 + v9, 1, 1, v10);
  v11(v4 + *(*v4 + 176), 1, 1, v10);
  *(v4 + *(*v4 + 184)) = 0;
  *(v4 + *(*v4 + 192)) = 0;
  a4(a1, v4 + 16);
  v12 = qword_281488008;
  v13 = sub_22FCC8684();
  (*(*(v13 - 8) + 32))(v4 + v12, a3, v13);
  *(v4 + qword_281488000) = a2;
  return v4;
}

uint64_t sub_22FA2E954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_22FA2CF78(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_22FA2EA24(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_22FA2B420(a1, &unk_27DAD8720, &qword_22FCD77E0);
    sub_22FB041F0(a2, a3, v9);

    return sub_22FA2B420(v9, &unk_27DAD8720, &qword_22FCD77E0);
  }

  return result;
}

uint64_t sub_22FA2EA78(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8, &unk_22FCD64A0);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v3 = sub_22FCC6794();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v4 = sub_22FCC8684();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA2EC34, v1, 0);
}

uint64_t sub_22FA2EC34()
{
  v72 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 312);
  v66 = *(v0 + 304);
  v64 = *(v0 + 328);
  v65 = *(v0 + 296);
  v6 = *(v0 + 256);
  v8 = v6[5];
  v7 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v8);
  (*(v7 + 32))(v8, v7);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  swift_getDynamicType();
  (*(*(v0 + 96) + 24))();
  v9 = *(v3 + 16);
  v9(v1, v2, v4);
  type metadata accessor for TaskProgressChecker(0);
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_wasStopped) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_lastProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = 0;
  *(v0 + 368) = v10;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_numberOfCallsToProgressSinceLastRecordedCall) = 0;
  v9(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_logger, v1, v4);
  Current = CFAbsoluteTimeGetCurrent();
  v12 = *(v3 + 8);
  *(v0 + 376) = v12;
  *(v0 + 384) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v4);
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = Current;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = Current;
  sub_22FA2D328((v6 + 2), v0 + 104);
  v13 = swift_allocObject();
  *(v0 + 392) = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v10;
  sub_22FA2CF78((v0 + 104), v13 + 32);

  sub_22FCC6784();
  v14 = v5[2];
  *(v0 + 400) = v14;
  *(v0 + 408) = (v5 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v65, v64, v66);
  v15 = v5[7];
  *(v0 + 416) = v15;
  *(v0 + 424) = (v5 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v15(v65, 0, 1, v66);
  v16 = *(*v6 + 168);
  swift_beginAccess();
  sub_22FA2F4C8(v65, v6 + v16);
  swift_endAccess();
  sub_22FCC66A4();
  v18 = v17;
  v19 = v5[1];
  *(v0 + 432) = v19;
  *(v0 + 440) = (v5 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v64, v66);
  *(v6 + *(*v6 + 192)) = v18;
  v20 = *(v0 + 88);
  v21 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v20);
  v22 = (*(v21 + 56))(v20, v21);
  *(v0 + 448) = v22;
  sub_22FA2D328((v6 + 2), v0 + 144);
  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v24);
  if (sub_22FA2F538(v24, v23))
  {
    v67 = *(v0 + 168);
    v25 = *(v0 + 168);
    v26 = __swift_project_boxed_opaque_existential_1((v0 + 144), v25);
    *(v0 + 208) = v67;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v26, v25);
    v28 = sub_22FC09A3C;
    v29 = v22;
    goto LABEL_15;
  }

  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v35 = *(v0 + 88);
    v36 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v35);
    v37 = (*(v36 + 64))(v35, v36);
    if (v37)
    {
      v38 = *(v37 + 112);

      v39 = *(v38 + 112);

      *(v0 + 248) = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80, &qword_22FCDC5F0);
      v40 = sub_22FCC91D4();
      v42 = v41;
    }

    else
    {
      v39 = 0;
      v42 = 0xE400000000000000;
      v40 = 1701736270;
    }

    *(v0 + 520) = v39;

    v43 = sub_22FCC8664();
    v44 = sub_22FCC8F34();

    if (os_log_type_enabled(v43, v44))
    {
      v68 = v40;
      v45 = *(v0 + 256);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v69 = v47;
      *v46 = 136446978;
      v48 = v45[5];
      v49 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v48);
      v70 = (*(v49 + 40))(v48, v49);
      v71 = v50;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v51 = v45[5];
      v52 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v51);
      v53 = (*(v52 + 48))(v51, v52);
      MEMORY[0x231907FA0](v53);

      v54 = sub_22FA2F600(v70, v71, &v69);

      *(v46 + 4) = v54;
      *(v46 + 12) = 2082;
      v55 = qos_class_self();
      v56 = PHADescriptionForQoS(v55);

      if (!v56)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v28, v29, v57);
      }

      v58 = sub_22FCC8A84();
      v60 = v59;

      v61 = sub_22FA2F600(v58, v60, &v69);

      *(v46 + 14) = v61;
      *(v46 + 22) = 2082;
      v62 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v69);

      *(v46 + 24) = v62;
      *(v46 + 32) = 2080;
      v63 = sub_22FA2F600(v68, v42, &v69);

      *(v46 + 34) = v63;
      _os_log_impl(&dword_22FA28000, v43, v44, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v46, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v47, -1, -1);
      MEMORY[0x23190A000](v46, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AF718, &unk_22FCDC6F0);
    v28 = sub_22FA2FD78;
    v29 = 0;
LABEL_15:
    v57 = 0;

    return MEMORY[0x2822009F8](v28, v29, v57);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v30 = swift_task_alloc();
  *(v0 + 512) = v30;
  *v30 = v0;
  v30[1] = sub_22FBF3028;
  v31 = *(v0 + 328);
  v33 = *(v0 + 256);
  v32 = *(v0 + 264);

  return sub_22FC10D48(v33, v31, v32);
}

uint64_t type metadata accessor for TaskProgressChecker(uint64_t a1)
{
  result = qword_28147FB40;
  if (!qword_28147FB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FA2F4C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_22FA2F538(uint64_t a1, uint64_t a2)
{
  (*(a2 + 168))(a1);
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

uint64_t sub_22FA2F580()
{
  v1 = *(*v0 + 56);

  return v1;
}

uint64_t sub_22FA2F5CC()
{
  v1 = *(*v0 + 16);

  return v1;
}

unint64_t sub_22FA2F600(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22FA2F6CC(v11, 0, 0, 1, a1, a2);
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
    sub_22FA2F7D8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22FA2F6CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22FA2F908(a5, a6);
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
    result = sub_22FCC93D4();
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

uint64_t sub_22FA2F7D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

__CFString *PHADescriptionForQoS(int a1)
{
  if (a1 > 20)
  {
    if (a1 == 21)
    {
      return @"QOS_CLASS_DEFAULT";
    }

    if (a1 != 33)
    {
      if (a1 == 25)
      {
        return @"QOS_CLASS_USER_INITIATED";
      }

      return @"UNKNOWN";
    }

    return @"QOS_CLASS_USER_INTERACTIVE";
  }

  else
  {
    if (!a1)
    {
      return @"QOS_CLASS_UNSPECIFIED";
    }

    if (a1 != 9)
    {
      if (a1 == 17)
      {
        return @"QOS_CLASS_UTILITY";
      }

      return @"UNKNOWN";
    }

    return @"QOS_CLASS_BACKGROUND";
  }
}

void *sub_22FA2F908(uint64_t a1, unint64_t a2)
{
  v3 = sub_22FA2F954(a1, a2);
  sub_22FA2FAFC(&unk_2844A4CB0);
  return v3;
}

void *sub_22FA2F954(uint64_t a1, unint64_t a2)
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

  v6 = sub_22FA2FA84(v5, 0);
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

  result = sub_22FCC93D4();
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
        v10 = sub_22FCC8B74();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22FA2FA84(v10, 0);
        result = sub_22FCC9374();
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

void *sub_22FA2FA84(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84D8, &qword_22FCD6870);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_22FA2FAFC(uint64_t result)
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

  result = sub_22FB1C084(result, v11, 1, v3);
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

void sub_22FA2FBE8(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v20 - v13;
  if ((*(v6 + qword_281488018) & 1) == 0)
  {
    v15 = qword_281488010;
    if (!*(v6 + qword_281488010) || (, isCancelled = swift_task_isCancelled(), , (isCancelled & 1) == 0))
    {
      v17 = sub_22FCC8D14();
      (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      *(v18 + 32) = a3;
      *(v18 + 40) = a4;
      *(v18 + 48) = a2 & 1;
      *(v18 + 56) = a1;
      *(v18 + 64) = v6;
      v19 = a1;

      *(v6 + v15) = sub_22FC3EE08(0, 0, v14, v21, v18);
    }
  }
}

uint64_t sub_22FA2FD78()
{
  v1 = *(v0[32] + qword_281488010);
  v0[66] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[67] = v2;
    *v2 = v0;
    v2[1] = sub_22FC0AB38;
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 70, v1, v5, v3, v4);
  }

  else
  {
    v6 = v0[33];

    return MEMORY[0x2822009F8](sub_22FC0AC6C, v6, 0);
  }
}

uint64_t sub_22FA2FE90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22FA2C21C;

  return sub_22FA2FF6C(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_22FA2FF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = a7;
  *(v8 + 192) = a8;
  *(v8 + 65) = a6;
  *(v8 + 168) = a4;
  *(v8 + 176) = a5;
  v9 = sub_22FCC8CF4();
  *(v8 + 200) = v9;
  *(v8 + 208) = *(v9 - 8);
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA30034, 0, 0);
}

uint64_t sub_22FA30034()
{
  v53 = v0;
  if ((*(v0 + 168))(0.0))
  {
    v1 = *(v0 + 184);
    if (*(v0 + 65) != 1 || v1 == 0)
    {

      v3 = sub_22FCC8664();
      v4 = sub_22FCC8F34();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v52 = v6;
        *v5 = 136446210;

        v7 = sub_22FA310A0();
        v9 = v8;

        v10 = sub_22FA2F600(v7, v9, &v52);

        *(v5 + 4) = v10;
        _os_log_impl(&dword_22FA28000, v3, v4, "Starting %{public}s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x23190A000](v6, -1, -1);
        MEMORY[0x23190A000](v5, -1, -1);
      }

      else
      {
      }

      v37 = *(v0 + 192);
      v38 = v37[5];
      v39 = v37[6];
      __swift_project_boxed_opaque_existential_1(v37 + 2, v38);
      v50 = (*(v39 + 128) + **(v39 + 128));
      v40 = swift_task_alloc();
      *(v0 + 240) = v40;
      *v40 = v0;
      v40[1] = sub_22FBE121C;
      v41 = *(v0 + 168);
      v42 = *(v0 + 176);

      return v50(v0 + 128, v41, v42, v38, v39);
    }

    else
    {
      v23 = v1;

      v24 = sub_22FCC8664();
      v25 = sub_22FCC8F34();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v52 = v27;
        *v26 = 136446467;

        v28 = sub_22FA310A0();
        v30 = v29;

        v31 = sub_22FA2F600(v28, v30, &v52);

        *(v26 + 4) = v31;
        *(v26 + 12) = 2081;
        v32 = [v23 description];
        v33 = sub_22FCC8A84();
        v35 = v34;

        v36 = sub_22FA2F600(v33, v35, &v52);

        *(v26 + 14) = v36;
        _os_log_impl(&dword_22FA28000, v24, v25, "Starting %{public}s with incremental change %{private}s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v27, -1, -1);
        MEMORY[0x23190A000](v26, -1, -1);
      }

      else
      {
      }

      v43 = *(v0 + 192);
      v44 = v43[5];
      v45 = v43[6];
      __swift_project_boxed_opaque_existential_1(v43 + 2, v44);
      v51 = (*(v45 + 200) + **(v45 + 200));
      v46 = swift_task_alloc();
      *(v0 + 224) = v46;
      *v46 = v0;
      v46[1] = sub_22FBE1108;
      v47 = *(v0 + 168);
      v48 = *(v0 + 176);

      return v51(v0 + 160, v23, v47, v48, v44, v45);
    }
  }

  else
  {
    *(*(v0 + 192) + qword_281488030) = 4;
    v11 = *(v0 + 192);
    sub_22FAE11BC();
    v12 = swift_allocError();
    v14 = v13;
    v49 = *(v11 + 40);
    v15 = *(v11 + 40);
    v16 = __swift_project_boxed_opaque_existential_1((v11 + 16), v15);
    *(v14 + 24) = v49;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
    *(v14 + 48) = 1;
    v18 = *(v0 + 192);
    v19 = *(*v18 + 160);
    v20 = *(v18 + v19);
    *(v18 + v19) = v12;

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_22FA30684(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  if (*(a1 + qword_281488018))
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_22FCC8D94() ^ 1;
  }

  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_project_boxed_opaque_existential_1(a3, v9);
  sub_22FA3074C(v11, v8 & 1, a2, v9, v10, a4);
  *(a1 + *(*a1 + 184)) = a4;
  *(a1 + *(*a1 + 192)) = CFAbsoluteTimeGetCurrent();
  return v8 & 1;
}

void sub_22FA3074C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = *(a4 - 8);
  v12 = MEMORY[0x28223BE20](a1, a1);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  v63 = (*(a5 + 40))(a4, a5);
  v16 = v15;
  (*(v11 + 8))(v14, a4);
  v17 = OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_wasStopped;
  if (*(a3 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_wasStopped) == 1)
  {

    v18 = sub_22FCC8664();
    v19 = sub_22FCC8F14();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v64 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_22FA2F600(v63, v16, &v64);
      *(v20 + 12) = 2082;
      if (a2)
      {
        v22 = 0xD000000000000026;
      }

      else
      {
        v22 = 0;
      }

      if (a2)
      {
        v23 = 0x800000022FCE4F10;
      }

      else
      {
        v23 = 0xE000000000000000;
      }

      v24 = sub_22FA2F600(v22, v23, &v64);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_22FA28000, v18, v19, "%{public}s: Progress called again although task was stopped.%{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v21, -1, -1);
      MEMORY[0x23190A000](v20, -1, -1);
    }
  }

  *(a3 + v17) = *(a3 + v17) & 1 | ((a2 & 1) == 0);
  v25 = 0x6570706F7473202CLL;
  if (a2)
  {
    v25 = 0;
  }

  v62 = v25;
  if (a2)
  {
    v26 = 0xE000000000000000;
  }

  else
  {
    v26 = 0xE900000000000064;
  }

  v27 = OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_lastProgress;
  if (*(a3 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_lastProgress) + -2.22044605e-16 > a6)
  {
    v28 = sub_22FCC8EF4();

    sub_22FA4FD84();
    sub_22FA4FD84();
    sub_22FA4FD84();
    sub_22FA4FD84();
    v29 = sub_22FCC8664();

    if (os_log_type_enabled(v29, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v64 = v31;
      *v30 = 136447234;
      *(v30 + 4) = sub_22FA2F600(v63, v16, &v64);
      *(v30 + 12) = 1040;
      *(v30 + 14) = 4;
      v32 = *(a3 + v27);
      *(v30 + 18) = 2048;
      *(v30 + 20) = v32;
      *(v30 + 28) = 1040;
      *(v30 + 30) = 4;
      *(v30 + 34) = 2048;
      *(v30 + 36) = a6;
      _os_log_impl(&dword_22FA28000, v29, v28, "%{public}s: Progress going backwards from %.*f to %.*f", v30, 0x2Cu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x23190A000](v31, -1, -1);
      MEMORY[0x23190A000](v30, -1, -1);
    }
  }

  *(a3 + v27) = a6;
  Current = CFAbsoluteTimeGetCurrent();
  v34 = OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress;
  v35 = *(a3 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress);
  if (v35 <= 0.0)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = Current - v35;
  }

  v37 = OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_numberOfCallsToProgressSinceLastRecordedCall;
  v38 = *(a3 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_numberOfCallsToProgressSinceLastRecordedCall);
  if (v36 >= 1.0)
  {
    if (v38 > 0)
    {

      sub_22FA4FD84();
      sub_22FA4FD84();

      v43 = sub_22FCC8664();
      v44 = sub_22FCC8F34();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v64 = v46;
        *v45 = 136447234;
        *(v45 + 4) = sub_22FA2F600(v63, v16, &v64);
        *(v45 + 12) = 2048;
        *(v45 + 14) = *(a3 + v37);

        *(v45 + 22) = 1040;
        *(v45 + 24) = 2;
        *(v45 + 28) = 2048;
        v47 = v62;
        *(v45 + 30) = *(a3 + v34) - *(a3 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress);
        *(v45 + 38) = 2082;
        *(v45 + 40) = sub_22FA2F600(v47, v26, &v64);
        _os_log_impl(&dword_22FA28000, v43, v44, "%{public}s: Progress --------, called %ld time(s) in %.*f sec%{public}s", v45, 0x30u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v46, -1, -1);
        MEMORY[0x23190A000](v45, -1, -1);
      }

      else
      {
      }

      *(a3 + v37) = 0;
    }

    if (v36 >= 30.0)
    {
      v54 = sub_22FCC8F24();
    }

    else if (v36 >= 5.0)
    {
      v54 = sub_22FCC8F14();
    }

    else
    {
      v54 = sub_22FCC8F34();
    }

    v55 = v54;

    sub_22FA4FD84();
    sub_22FA4FD84();
    sub_22FA4FD84();
    sub_22FA4FD84();

    v56 = sub_22FCC8664();

    if (os_log_type_enabled(v56, v55))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v64 = v58;
      *v57 = 136447490;
      v59 = sub_22FA2F600(v63, v16, &v64);

      *(v57 + 4) = v59;
      *(v57 + 12) = 1040;
      *(v57 + 14) = 4;
      *(v57 + 18) = 2048;
      *(v57 + 20) = a6;
      *(v57 + 28) = 1040;
      *(v57 + 30) = 2;
      *(v57 + 34) = 2048;
      *(v57 + 36) = v36;
      *(v57 + 44) = 2082;
      v60 = sub_22FA2F600(v62, v26, &v64);

      *(v57 + 46) = v60;
      _os_log_impl(&dword_22FA28000, v56, v55, "%{public}s: Progress %.*f, not called for %.*f sec%{public}s", v57, 0x36u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v58, -1, -1);
      MEMORY[0x23190A000](v57, -1, -1);
    }

    else
    {
    }

    *(a3 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = Current;
    goto LABEL_46;
  }

  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (!v39)
  {
    *(a3 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_numberOfCallsToProgressSinceLastRecordedCall) = v40;
    v41 = OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress;
    v42 = Current - *(a3 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress);
    if (v42 < 1.0 && (a2 & 1) != 0)
    {
    }

    else
    {

      sub_22FA4FD84();
      sub_22FA4FD84();

      sub_22FA4FD84();
      sub_22FA4FD84();

      v48 = sub_22FCC8664();
      v49 = sub_22FCC8F34();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v64 = v61;
        *v50 = 136447746;
        v51 = sub_22FA2F600(v63, v16, &v64);

        *(v50 + 4) = v51;
        *(v50 + 12) = 1040;
        *(v50 + 14) = 4;
        *(v50 + 18) = 2048;
        *(v50 + 20) = a6;
        *(v50 + 28) = 2048;
        *(v50 + 30) = *(a3 + v37);

        *(v50 + 38) = 1040;
        *(v50 + 40) = 2;
        *(v50 + 44) = 2048;
        *(v50 + 46) = v42;
        *(v50 + 54) = 2082;
        v52 = sub_22FA2F600(v62, v26, &v64);

        *(v50 + 56) = v52;
        _os_log_impl(&dword_22FA28000, v48, v49, "%{public}s: Progress %.*f, called %ld times in %.*f sec%{public}s", v50, 0x40u);
        v53 = v61;
        swift_arrayDestroy();
        MEMORY[0x23190A000](v53, -1, -1);
        MEMORY[0x23190A000](v50, -1, -1);
      }

      else
      {
      }

      *(a3 + v41) = Current;
      *(a3 + v37) = 0;
    }

LABEL_46:
    *(a3 + v34) = Current;
    return;
  }

  __break(1u);
}

uint64_t sub_22FA310A0()
{
  sub_22FCC9384();

  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 40))(v1, v2);
  MEMORY[0x231907FA0](v3);

  MEMORY[0x231907FA0](0x6E696769726F2820, 0xEA0000000000203ALL);
  if (*(v0 + qword_281488000))
  {
    if (*(v0 + qword_281488000) == 1)
    {
      v4 = 0xE900000000000064;
      v5 = 0x6E616D6564206E4FLL;
    }

    else
    {
      v4 = 0x800000022FCE10A0;
      v5 = 0xD000000000000012;
    }
  }

  else
  {
    v4 = 0xEF6B73617420646ELL;
    v5 = 0x756F72676B636142;
  }

  MEMORY[0x231907FA0](v5, v4);

  MEMORY[0x231907FA0](41, 0xE100000000000000);
  return 0x206B736154;
}

uint64_t sub_22FA31200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FA2C030;

  return sub_22FA312B4(a1, a2, a3);
}

uint64_t sub_22FA312B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22FA312D8, 0, 0);
}

uint64_t sub_22FA312D8()
{
  v1 = v0[5];
  v2 = *(v1 + 128);
  v0[6] = *(v1 + 136);

  v9 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_22FB7C354;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return (v9)(v6, v4, 0, v7, v5);
}

uint64_t sub_22FA313E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *(v5 + 16);
  v12 = *(v5 + 24);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_22FA2C21C;

  return sub_22FA314C4(a1, a2, a3, a4, a5, v13, v12);
}

uint64_t sub_22FA314C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[8] = a1;
  v8 = sub_22FCC7E14();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA3158C, 0, 0);
}

uint64_t sub_22FA3158C()
{
  v1 = *(v0[11] + 112);
  if ([v1 isReady])
  {
    v3 = v0[9];
    v2 = v0[10];
    v4 = [v1 photoLibrary];
    v0[16] = v4;
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    v0[6] = sub_22FBAC124;
    v0[7] = v5;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_22FA51A14;
    v0[5] = &block_descriptor_71_0;
    v6 = _Block_copy(v0 + 2);
    v7 = objc_opt_self();

    v8 = [v7 progressReporterWithProgressBlock_];
    v0[17] = v8;
    _Block_release(v6);

    sub_22FCC7884();
    swift_allocObject();
    v9 = v4;
    sub_22FCC7874();
    sub_22FCC7DE4();
    v10 = swift_task_alloc();
    v0[18] = v10;
    *v10 = v0;
    v10[1] = sub_22FB9BABC;
    v11 = v0[15];
    v12 = v0[11];
    v13 = v0[12];

    return sub_22FAAD508(v13, v12, v11, v8);
  }

  else
  {
    sub_22FBA4C28();
    swift_allocError();
    *v15 = xmmword_22FCD3450;
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_22FA31808()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_22FA2F7D8(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(uint64_t a1)
{
  result = qword_27DAD7F38;
  if (!qword_27DAD7F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FA31B18(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22FA31C90(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22FA31CA4(v5);
  *a1 = v2;
  return result;
}

char *sub_22FA31B84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
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

uint64_t sub_22FA31CA4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22FCC96B4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22FCC8C74();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22FAA7FA4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22FA31D9C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22FA31D9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_22FCC9704(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_22FA31EA0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_22FA31EC4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_22FA31F30()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA31F78()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22FA32040()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA32078()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22FA320C8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FA32100()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA32138()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA32180()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22FA321D8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FA32220()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_22FA32288()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA322C8()
{
  v1 = (type metadata accessor for PromptSuggestionFetcher.MCSuggestion(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;

  v6 = v1[8];
  v7 = sub_22FCC6794();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  __swift_destroy_boxed_opaque_existential_0((v0 + v4));

  return MEMORY[0x2821FE8E8](v0, ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_22FA32434()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22FA32474()
{
  v1 = sub_22FCC8684();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

_OWORD *sub_22FA32554(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22FA32564()
{
  v1 = sub_22FCC8684();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22FA32648()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA32698(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_22FA326DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7408, &qword_22FCD2198);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22FA32784()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7428, &qword_22FCD21B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22FA32818()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7430, &qword_22FCD21B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22FA328C0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA328F8()
{
  v1 = sub_22FCC8684();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22FA329DC()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22FA32A24()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA32A5C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FA32A9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA32AD4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FA32C1C()
{
  sub_22FA7E6C4(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FA32C6C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22FA32CBC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22FA32D0C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FA32D54()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FA32DAC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA32DEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA32E24()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FA32E70()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FA32EB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA32EF0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22FA32F40()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22FA32F88()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA32FC0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FA330A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FCC65F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22FA33160(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FCC65F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_22FA33218()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA33260()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FA332A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA332E0()
{
  sub_22FA7E6C4(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA33318()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22FA33370()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA333A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22FA333F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA33428()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FA33468()
{
  v1 = sub_22FCC65F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22FA33544()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA33580()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA33628()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA33660()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FA336A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FCC7074();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22FA33774(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FCC7074();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_22FA3382C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA33864()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22FA338B4()
{
  v1 = sub_22FCC82A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_22FCC7E14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_22FA33A28()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA33A60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA33A98()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22FA33AD0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22FA33B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FCC7E14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FA33BC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FCC7E14();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FA33C84(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22FCC6794();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FA33D30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FCC6794();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FA33DD4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22FA33E0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA33E4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA33E84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA33EBC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA33EF4()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA33F2C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22FA33F74()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22FA33FBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA33FF4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FA34034()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA3406C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA340AC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FA340F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82C8, &qword_22FCD5588);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22FA34188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FCC67F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_22FCC7BC4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 52);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22FA342B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FCC67F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_22FCC7BC4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 52);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22FA343D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA34420()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA34458()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22FA344A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA344E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA34518()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22FA34560()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA34598()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FA345D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA34628()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA34660()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA34698()
{
  v1 = sub_22FCC8684();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22FA347B0()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_22FA34840()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22FA34894()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA348CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA34904()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FA34960(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22FCC6794();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FA34A0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FCC6794();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FA34AF0@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22FA34B48(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22FA34B1C@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22FA34B58(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22FA34B48(uint64_t result)
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

uint64_t sub_22FA34B58(uint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  else
  {
    return result;
  }
}

uint64_t sub_22FA34B68(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 240);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FA34C24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 240);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FA34CDC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22FCC6794();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_22FA34D88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22FCC6794();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FA34E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FCC67F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FA34EEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FCC67F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FA34FA8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22FA34FE0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22FA35028()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA35064()
{
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA350A4()
{
  v1 = sub_22FCC8684();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22FA35198()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA351D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22FA35228()
{
  v1 = sub_22FCC6794();
  v2 = *(v1 - 8);
  v6 = *(v2 + 80);
  v3 = (v6 + 40) & ~v6;
  v5 = (((((((((((((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v6 | 7);
}

uint64_t sub_22FA353B0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_22FCC65F4();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_22FA3545C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_22FCC65F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FA354FC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA35534()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA3556C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FA355C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA35614()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA3564C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FA35690()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA356C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA35700()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD88A8, qword_22FCD8518);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22FA35730()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA35768()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA357A0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA357D8()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22FA3584C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8040, &unk_22FCD4810);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FA35908(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8040, &unk_22FCD4810);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FA359C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CreativePromptTemplate(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FA35A7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CreativePromptTemplate(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FA35B34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA35B94()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FA35BDC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FA35C2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA35C64()
{

  sub_22FA7E6C4(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FA35CA4()
{

  sub_22FA7E6C4(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22FA35CFC()
{

  sub_22FA7E6C4(*(v0 + 24), *(v0 + 32));

  sub_22FA7E6C4(*(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22FA35D9C()
{

  sub_22FA7E6C4(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FA35E08()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA35E40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA35E80()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FA35EF8()
{
  _Block_release(*(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22FA35F60()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22FA35FC0()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FA36014()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA3604C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FA36304()
{
  if (!*(*v0 + 120))
  {
    return 0;
  }

  result = sub_22FCC94D4();
  __break(1u);
  return result;
}

double sub_22FA363E4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_22FA363F4()
{
  if (!*(*v0 + 24))
  {
    return 0;
  }

  result = sub_22FCC94D4();
  __break(1u);
  return result;
}

uint64_t sub_22FA36490()
{
  v1 = *(type metadata accessor for QueryAnnotatorExecutionTools(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 41) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = sub_22FCC86B4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_22FA3659C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FCC86B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FA36658(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FCC86B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FA36720()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22FA36760()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22FA367A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FA367E8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA36820()
{
  v1 = sub_22FCC8684();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22FA368FC()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_22FA3695C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FA369A4()
{
  v1 = sub_22FCC8684();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22FA36A90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA36AD8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA36B10()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FA36B68()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA36BA0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FA36C10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA36C48()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22FA36C94()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA36CCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA36D04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FA36D84()
{
  v1 = sub_22FCC8684();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22FA36E48()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FA36E90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA36EC8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22FA36F18()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FA36F50()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA36F90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E88, &qword_22FCDC618);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22FA37024()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22FA37070()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA370A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA370E0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FA3711C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA37154()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA3718C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void *sub_22FA372BC@<X0>(uint64_t *a1@<X8>)
{
  result = PromptSuggestionQUProvider.promptSuggestionLLMQUParse.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22FA372E8(uint64_t *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider____lazy_storage___promptSuggestionLLMQUParse) = *a1;
}

uint64_t sub_22FA37334()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA3736C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8FF0, &qword_22FCDCD20) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = (v0 + v3);
  __swift_destroy_boxed_opaque_existential_0(v5);
  v6 = v1[14];
  v7 = sub_22FCC65F4();
  (*(*(v7 - 8) + 8))(&v5[v6], v7);

  return MEMORY[0x2821FE8E8](v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_22FA3748C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FA374D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA37568()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA3762C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FA37684()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA376BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA376F4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FA3773C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22FA37788()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA377C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA37804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FCC6794();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22FA378D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FCC6794();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_22FA37990(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91A0, &qword_22FCDD568);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_22FA37A4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91A0, &qword_22FCDD568);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FA37AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_22FCC6794();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22FA37B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_22FCC6794();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22FA37BF8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FA37C50()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22FA37C8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22FA37D38(uint64_t a1)
{

  *v1 = a1;
  return result;
}

id sub_22FA37DB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22FCC8684();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v46 - v10;
  sub_22FA38700(v50);
  swift_beginAccess();
  v12 = *(v2 + 112);
  if (*(v12 + 16))
  {

    v13 = sub_22FA69EBC(v50);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      v48 = v15;
      v16 = [v15 description];
      v47 = sub_22FCC8A84();
      v18 = v17;

      sub_22FCC8674();

      v19 = sub_22FCC8664();
      v20 = sub_22FCC8EF4();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v46 = v3;
        v22 = v21;
        v23 = swift_slowAlloc();
        v49 = v23;
        v24.n128_u64[0] = 136446723;
        *v22 = 136446723;
        v25 = PhotoKitChangeToken.description.getter(v24);
        v27 = sub_22FA2F600(v25, v26, &v49);

        *(v22 + 4) = v27;
        *(v22 + 12) = 2082;
        v29 = PhotoKitChangeToken.description.getter(v28);
        v31 = sub_22FA2F600(v29, v30, &v49);

        *(v22 + 14) = v31;
        *(v22 + 22) = 2081;
        v32 = sub_22FA2F600(v47, v18, &v49);

        *(v22 + 24) = v32;
        _os_log_impl(&dword_22FA28000, v19, v20, "Cached change from %{public}s to %{public}s: %{private}s", v22, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v23, -1, -1);
        MEMORY[0x23190A000](v22, -1, -1);

        (*(v4 + 8))(v11, v46);
      }

      else
      {

        (*(v4 + 8))(v11, v3);
      }

      sub_22FA3A7C4(v50);
      return v48;
    }
  }

  sub_22FCC8674();

  v33 = sub_22FCC8664();
  v34 = sub_22FCC8EF4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v49 = v36;
    v37.n128_u64[0] = 136446466;
    *v35 = 136446466;
    v38 = PhotoKitChangeToken.description.getter(v37);
    v40 = sub_22FA2F600(v38, v39, &v49);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2082;
    v42 = PhotoKitChangeToken.description.getter(v41);
    v44 = sub_22FA2F600(v42, v43, &v49);

    *(v35 + 14) = v44;
    _os_log_impl(&dword_22FA28000, v33, v34, "No changes cached from %{public}s to %{public}s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v36, -1, -1);
    MEMORY[0x23190A000](v35, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  sub_22FA3A7C4(v50);
  return 0;
}

uint64_t sub_22FA38284(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_22FA38700(v23);
  swift_beginAccess();
  v6 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v4 + 112);
  *(v4 + 112) = 0x8000000000000000;
  sub_22FB25484(v6, v23, isUniquelyReferenced_nonNull_native);
  *(v4 + 112) = v21;
  swift_endAccess();
  v8 = sub_22FCC8EF4();
  sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
  v9 = sub_22FCC91C4();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22[0] = v11;
    v12.n128_u64[0] = 136315394;
    *v10 = 136315394;
    v13 = PhotoKitChangeToken.description.getter(v12);
    v15 = sub_22FA2F600(v13, v14, v22);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v17 = PhotoKitChangeToken.description.getter(v16);
    v19 = sub_22FA2F600(v17, v18, v22);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_22FA28000, v9, v8, "Saved change from cache from %s to %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v11, -1, -1);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  return sub_22FA3A7C4(v23);
}

uint64_t sub_22FA3848C()
{
  v1 = sub_22FCC8684();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v16 - v8;
  swift_beginAccess();
  v10 = *(*(v0 + 112) + 16);
  if (!v10)
  {
    sub_22FCC8674();
    v11 = sub_22FCC8664();
    v14 = sub_22FCC8F04();
    if (!os_log_type_enabled(v11, v14))
    {
      v9 = v5;
      goto LABEL_8;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22FA28000, v11, v14, "No cached entries to clear", v13, 2u);
    v9 = v5;
    goto LABEL_6;
  }

  *(v0 + 112) = MEMORY[0x277D84F98];

  sub_22FCC8674();
  v11 = sub_22FCC8664();
  v12 = sub_22FCC8EF4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v10;
    _os_log_impl(&dword_22FA28000, v11, v12, "Clear %ld cached entries", v13, 0xCu);
LABEL_6:
    MEMORY[0x23190A000](v13, -1, -1);
  }

LABEL_8:

  return (*(v2 + 8))(v9, v1);
}

uint64_t sub_22FA38700@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FA3A77C(0, &qword_28147ADD0, 0x277D82BB8);
  if (sub_22FCC9184())
  {
    sub_22FCC8674();

    v9 = sub_22FCC8664();
    v10 = sub_22FCC8F34();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v20 = a3;
      v12 = v11;
      v13 = swift_slowAlloc();
      v21[0] = v13;
      v14.n128_u64[0] = 136446210;
      *v12 = 136446210;
      v15 = PhotoKitChangeToken.description.getter(v14);
      v17 = sub_22FA2F600(v15, v16, v21);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_22FA28000, v9, v10, "From and to tokens are equals: returning %{public}s hash", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x23190A000](v13, -1, -1);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    sub_22FCC9844();
    sub_22FCC9194();
    v21[0] = sub_22FCC9894();
  }

  else
  {
    sub_22FCC9844();
    sub_22FCC9194();
    v18 = sub_22FCC9894();
    sub_22FCC9844();
    sub_22FCC9194();
    v21[0] = sub_22FCC9894() ^ v18;
  }

  return sub_22FCC9324();
}

uint64_t sub_22FA389C4()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t _s13PhotoAnalysis23PersonalTraitsLabelTypeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_22FCC9844();
  MEMORY[0x231908CB0](v1);
  return sub_22FCC9894();
}

uint64_t sub_22FA38A68(uint64_t a1)
{
  v2 = *v1;
  sub_22FCC9844();
  MEMORY[0x231908CB0](v2);
  return sub_22FCC9894();
}

id sub_22FA38ABC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t (*a7)(), uint64_t a8)
{
  v10 = v8;
  v63 = a3;
  v64 = a7;
  v62 = a2;
  v16 = sub_22FCC8684();
  v67 = *(v16 - 8);
  v68 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v66 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = MEMORY[0x28223BE20](v19, v20).n128_u64[0];
  v23 = v56 - v22;
  if ([a1 changeCount] < 1)
  {
    result = sub_22FCC9004();
    if (!v9)
    {
      v50 = *(v10 + 120);
      v51 = objc_allocWithZone(MEMORY[0x277D3B9C0]);
      return [v51 initWithPhotoLibrary:v50 updateType:v63 changeStreamToken:v62];
    }
  }

  else
  {
    v59 = v9;
    v58 = v10;
    v56[1] = a4;
    v65 = sub_22FCC9014();
    v60 = v24;
    v73 = MEMORY[0x277D84F90];
    v25 = swift_allocObject();
    v61 = v25;
    *(v25 + 16) = 0;
    v26 = v25 + 16;
    v72 = 0;
    v71 = 1;
    v27 = [a1 changeCount];
    if (a5)
    {
      v28 = a8;
    }

    else
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v57 = v27;
    if (v27 >= v28 && (a5 & 1) != 0)
    {
      v71 = 0;
      sub_22FCC8674();
      v29 = sub_22FCC8664();
      v30 = sub_22FCC8F34();
      v31 = os_log_type_enabled(v29, v30);
      v32 = v59;
      if (v31)
      {
        v33 = swift_slowAlloc();
        *v33 = 134218240;
        *(v33 + 4) = v57;
        *(v33 + 12) = 2048;
        *(v33 + 14) = v28;
        _os_log_impl(&dword_22FA28000, v29, v30, "No incremental change available: %ld transactions, above of our threshold of %ld", v33, 0x16u);
        MEMORY[0x23190A000](v33, -1, -1);
      }

      (*(v67 + 8))(v23, v68);
      v34 = 0;
      v35 = 0;
      v36 = v65;
      v37 = v60;
      v38 = v61;
    }

    else
    {
      v56[0] = v26;
      v69 = 1;
      v35 = swift_allocObject();
      v36 = v65;
      *(v35 + 16) = &v69;
      *(v35 + 24) = v36;
      *(v35 + 32) = a1;
      *(v35 + 40) = &v71;
      *(v35 + 48) = v58;
      *(v35 + 56) = &v72;
      v40 = v61;
      *(v35 + 64) = v61;
      *(v35 + 72) = a5 & 1;
      v41 = v64;
      *(v35 + 80) = a6;
      *(v35 + 88) = v41;
      *(v35 + 96) = a8;
      *(v35 + 104) = &v73;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_22FA3A4E8;
      *(v42 + 24) = v35;
      aBlock[4] = sub_22FA3A534;
      aBlock[5] = v42;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22FA396A0;
      aBlock[3] = &block_descriptor_71;
      v43 = _Block_copy(aBlock);
      v44 = v36;
      v45 = a1;
      v38 = v40;
      v46 = v45;

      [v46 enumeratePHChangesWithBlock_];
      _Block_release(v43);
      LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

      if (v46)
      {
        __break(1u);
        return result;
      }

      v34 = sub_22FA3A4E8;
      v32 = v59;
      v37 = v60;
    }

    sub_22FCC9004();
    if (v32)
    {

      return sub_22FA3A55C(v34, v35);
    }

    else
    {
      v64 = v34;
      sub_22FCC8674();

      v47 = sub_22FCC8664();
      v48 = sub_22FCC8F34();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 134218496;
        *(v49 + 4) = v57;
        *(v49 + 12) = 2048;
        swift_beginAccess();
        *(v49 + 14) = *(v38 + 16);

        *(v49 + 22) = 2048;
        v36 = v65;
        swift_beginAccess();
        *(v49 + 24) = v72;
        _os_log_impl(&dword_22FA28000, v47, v48, "Processed %ld transactions with %ld changes, skipped %ld irrelevant changes", v49, 0x20u);
        MEMORY[0x23190A000](v49, -1, -1);
      }

      else
      {
      }

      (*(v67 + 8))(v66, v68);
      if (v71 == 1)
      {

        v54 = sub_22FA396FC(v52, v62, v63);

        sub_22FA3A55C(v64, v35);
        return v54;
      }

      else
      {
        sub_22FCC9004();
        v53 = v64;
        v55 = [objc_allocWithZone(MEMORY[0x277D3B9C0]) initForChangeStreamResetInPhotoLibrary:*(v58 + 120) updateType:2];

        sub_22FA3A55C(v53, v35);
        return v55;
      }
    }
  }

  return result;
}

uint64_t sub_22FA391E8(void *a1, _BYTE *a2, uint64_t *a3, uint64_t a4, void *a5, _BYTE *a6, uint64_t a7, uint64_t *a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v55 = a2;
  v51 = a14;
  v52 = a11;
  v19 = sub_22FCC8684();
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = MEMORY[0x28223BE20](v23, v24).n128_u64[0];
  v29 = &v51 - v28;
  v30 = *a3 + 1;
  if (__OFADD__(*a3, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v53 = v26;
  v54 = v25;
  *a3 = v30;
  [a5 changeCount];
  sub_22FCC8FF4();
  v31 = [a1 hasIncrementalChanges];
  *a6 = v31;
  if (v31)
  {
    sub_22FA3A61C(a1);
    v33 = v32;
    result = [a1 totalChangeCount];
    v35 = result;
    if ((v33 & 1) == 0)
    {
      if (!__OFADD__(*a8, result))
      {
        *a8 += result;
        return result;
      }

      goto LABEL_20;
    }

    swift_beginAccess();
    v36 = *(a9 + 16);
    v37 = __OFADD__(v36, v35);
    v38 = &v35[v36];
    if (!v37)
    {
      *(a9 + 16) = v38;
      if ((a10 & 1) != 0 && v38 > v52)
      {
        *a6 = 0;
        sub_22FCC8674();

        v39 = sub_22FCC8664();
        v40 = sub_22FCC8F34();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 134218240;
          swift_beginAccess();
          *(v41 + 4) = *(a9 + 16);

          *(v41 + 12) = 2048;
          *(v41 + 14) = v52;
          _os_log_impl(&dword_22FA28000, v39, v40, "No incremental change available: %ld changes in total, above of our threshold of %ld", v41, 0x16u);
          MEMORY[0x23190A000](v41, -1, -1);
        }

        else
        {
        }

        v50 = v55;
        result = (*(v53 + 8))(v29, v54);
        *v50 = 1;
        return result;
      }

      v48 = a1;
      v49 = v51;
      MEMORY[0x231908070]();
      if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return sub_22FCC8C84();
      }

LABEL_21:
      sub_22FCC8C64();
      return sub_22FCC8C84();
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_22FCC8674();
  v42 = a1;
  v43 = sub_22FCC8664();
  v44 = sub_22FCC8F34();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    *(v45 + 4) = v42;
    *v46 = v42;
    v47 = v42;
    _os_log_impl(&dword_22FA28000, v43, v44, "No incremental change available from change has %@", v45, 0xCu);
    sub_22FA3A56C(v46);
    MEMORY[0x23190A000](v46, -1, -1);
    MEMORY[0x23190A000](v45, -1, -1);
  }

  result = (*(v53 + 8))(v22, v54);
  *v55 = 1;
  return result;
}

void sub_22FA396A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

unint64_t sub_22FA396FC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = sub_22FCC9024();
  v32 = v6;
  aBlock[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v33 = v5;
  if (v7)
  {
    do
    {
      v3 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x231908810](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(a1 + 8 * v3 + 32);
        }

        v9 = v8;
        v10 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (![v8 hasIncrementalChanges])
        {

          sub_22FA3A484();
          swift_allocError();
          *v13 = 2;
          swift_willThrow();

          return v3;
        }

        v11 = v9;
        MEMORY[0x231908070]();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22FCC8C64();
        }

        sub_22FCC8C84();

        v12 = aBlock[0];
        ++v3;
        if (v10 == v7)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v3 = v5;
      v14 = sub_22FCC92C4();
      v5 = v3;
      v7 = v14;
      v33 = v3;
    }

    while (v14);
  }

  v12 = MEMORY[0x277D84F90];
LABEL_19:
  if (v12 >> 62)
  {
    v15 = sub_22FCC92C4();
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = v35;
  if (v15 < 1)
  {

    sub_22FCC9004();
    if (!v31)
    {
      v3 = [objc_allocWithZone(MEMORY[0x277D3B9C0]) initWithPhotoLibrary:*(v30 + 120) updateType:a3 changeStreamToken:a2];

      return v3;
    }

LABEL_28:

    return v3;
  }

  v17 = objc_opt_self();
  sub_22FA3A77C(0, &unk_28147ADC0, 0x277CD9830);
  v3 = sub_22FCC8C24();

  v18 = [v17 mergePersistedChanges_];

  if (!v18)
  {
    sub_22FA3A484();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    goto LABEL_28;
  }

  sub_22FCC9004();
  if (v31)
  {
  }

  else
  {
    v21 = *(v30 + 120);
    sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
    v22 = sub_22FCC91C4();
    v23 = [objc_allocWithZone(MEMORY[0x277D3BB58]) initWithPhotoLibrary:v21 loggingConnection:v22];

    v24 = swift_allocObject();
    *(v24 + 16) = v32;
    aBlock[4] = sub_22FA3A4D8;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22FB59114;
    aBlock[3] = &block_descriptor;
    v25 = _Block_copy(aBlock);
    v26 = v32;

    v27 = [v23 graphChangesWithPhotoChange:v18 progressBlock:v25];
    _Block_release(v25);
    if (!v27)
    {
      sub_22FA3A77C(0, &qword_27DAD6FE0, 0x277D3B920);
      sub_22FCC8C44();
      v27 = sub_22FCC8C24();
    }

    sub_22FCC9004();
    v3 = [objc_allocWithZone(MEMORY[0x277D3B9C0]) initWithPhotoLibrary:v21 updateType:a3 changeStreamToken:a2];
    [v3 addChanges_];

    sub_22FCC9004();
  }

  return v3;
}

uint64_t sub_22FA39D10()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FA39E40(uint64_t a1, uint64_t a2)
{
  sub_22FCC9844();
  swift_getWitnessTable();
  sub_22FCC6CB4();
  return sub_22FCC9894();
}

uint64_t sub_22FA39EA8()
{
  v0 = sub_22FCC8A84();
  v1 = MEMORY[0x231908030](v0);

  return v1;
}

uint64_t sub_22FA39EE4(uint64_t a1)
{
  sub_22FCC8A84();
  sub_22FCC8B14();
}

uint64_t sub_22FA39F38(uint64_t a1)
{
  sub_22FCC8A84();
  sub_22FCC9844();
  sub_22FCC8B14();
  v1 = sub_22FCC9894();

  return v1;
}

uint64_t sub_22FA39FB4(uint64_t a1, id *a2)
{
  result = sub_22FCC8A64();
  *a2 = 0;
  return result;
}

uint64_t sub_22FA3A02C(uint64_t a1, id *a2)
{
  v3 = sub_22FCC8A74();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22FA3A0AC@<X0>(uint64_t *a2@<X8>)
{
  sub_22FCC8A84();
  v3 = sub_22FCC8A54();

  *a2 = v3;
  return result;
}

uint64_t sub_22FA3A0F0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FED10](v4, v5, a3, WitnessTable);
}

void *sub_22FA3A184@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_22FA3A1B0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_22FA3A260(void *a1, uint64_t *a2)
{
  v2 = sub_22FCC8A84();
  v4 = v3;
  if (v2 == sub_22FCC8A84() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22FCC9704();
  }

  return v7 & 1;
}

uint64_t sub_22FA3A2E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_22FA3ADC0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_22FA3A328@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22FCC8A54();

  *a2 = v3;
  return result;
}

uint64_t sub_22FA3A370@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22FCC8A84();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22FA3A39C(uint64_t a1)
{
  v2 = sub_22FA3AB80(&qword_27DAD7088, type metadata accessor for Key, &unk_22FCD16BC);
  v3 = sub_22FA3AB80(&qword_27DAD7090, type metadata accessor for Key, &unk_22FCD13D4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_22FA3A484()
{
  result = qword_27DAD6FD8;
  if (!qword_27DAD6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD6FD8);
  }

  return result;
}

uint64_t sub_22FA3A55C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22FA3A56C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7B10, &unk_22FCD21C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

void sub_22FA3A61C(void *a1)
{
  v2 = [objc_opt_self() managedEntityNamesToTranslate];
  v3 = sub_22FCC8E84();

  v4 = 0;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_9:
    v7 &= v7 - 1;

    v10 = sub_22FCC8A54();

    v11 = [a1 containsChangesForEntityWithManagedEntityName_];

    if (v11)
    {
LABEL_10:

      return;
    }
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      goto LABEL_10;
    }

    v7 = *(v3 + 56 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_22FA3A77C(uint64_t a1, unint64_t *a2, void *a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PromptBindingContext(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PromptBindingContext(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PhotoKitChangeReader.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PhotoKitChangeReader.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22FA3AA9C()
{
  result = qword_27DAD7038;
  if (!qword_27DAD7038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD7038);
  }

  return result;
}

uint64_t sub_22FA3AB80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FA3ADC0(uint64_t a1)
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

void sub_22FA3AE20(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_22FA3AE9C()
{
  v0 = sub_22FCC88B4();
  __swift_allocate_value_buffer(v0, qword_28147DAC8);
  *__swift_project_value_buffer(v0, qword_28147DAC8) = 5;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_22FA3AF2C()
{
  v1 = OBJC_IVAR___PHAPromptSuggestionCachingTask____lazy_storage___promptSuggestionFetcher;
  if (*(v0 + OBJC_IVAR___PHAPromptSuggestionCachingTask____lazy_storage___promptSuggestionFetcher))
  {
    v2 = *(v0 + OBJC_IVAR___PHAPromptSuggestionCachingTask____lazy_storage___promptSuggestionFetcher);
  }

  else
  {
    v2 = sub_22FA3AF94(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22FA3AF94(uint64_t a1)
{
  v1 = type metadata accessor for PromptSuggestionFetcher.Configuration(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_22FAB166C(v5, v4);
  type metadata accessor for PromptSuggestionFetcher(0);
  v6 = swift_allocObject();
  sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
  v7 = sub_22FCC91C4();
  *(v6 + 16) = v7;
  v8 = v7;
  sub_22FCC8694();
  sub_22FA4F8A8(v4, v6 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration, type metadata accessor for PromptSuggestionFetcher.Configuration);
  sub_22FCC82D4();
  swift_allocObject();
  v9 = sub_22FCC82C4();
  sub_22FA4F910(v4, type metadata accessor for PromptSuggestionFetcher.Configuration);
  *(v6 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_embeddingCalculator) = v9;
  return v6;
}

uint64_t PromptSuggestionCachingTask.PromptSuggestionCachingTaskSearchSuggestionsDiagnosticContext.children.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

unint64_t PromptSuggestionCachingTask.PromptSuggestionCachingTaskSearchSuggestionsDiagnosticContext.dictionary.getter()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7190, &qword_22FCD1870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD17F0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000022FCDF930;
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000019;
  *(inited + 64) = 0x800000022FCDF950;
  *(inited + 72) = v2;
  v4 = sub_22FA4CC50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7198, &qword_22FCD1878);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_22FA3B300(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

unint64_t sub_22FA3B34C()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7190, &qword_22FCD1870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD17F0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000022FCDF930;
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000019;
  *(inited + 64) = 0x800000022FCDF950;
  *(inited + 72) = v2;
  v4 = sub_22FA4CC50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7198, &qword_22FCD1878);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_22FA3B440(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

uint64_t sub_22FA3B4A4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_22FA3B560(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;
}

unint64_t PromptSuggestionCachingTask.PromptSuggestionCachingTaskSmartSuggestionsDiagnosticContext.dictionary.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7190, &qword_22FCD1870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD17F0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000022FCDF930;
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000019;
  *(inited + 64) = 0x800000022FCDF950;
  *(inited + 72) = v2;
  v4 = sub_22FA4CC50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7198, &qword_22FCD1878);
  swift_arrayDestroy();
  return v4;
}

uint64_t PromptSuggestionCachingTask.PromptSuggestionCachingTaskSmartSuggestionsDiagnosticContext.children.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

unint64_t sub_22FA3B778()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7190, &qword_22FCD1870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD17F0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000022FCDF930;
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000019;
  *(inited + 64) = 0x800000022FCDF950;
  *(inited + 72) = v2;
  v4 = sub_22FA4CC50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7198, &qword_22FCD1878);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_22FA3B85C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  swift_beginAccess();
  v5 = *a3;

  return v5;
}

uint64_t sub_22FA3B8B8()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
  v1[3] = swift_task_alloc();
  v2 = sub_22FCC7AB4();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA3B9B0, 0, 0);
}

uint64_t sub_22FA3B9B0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = *(v0[2] + OBJC_IVAR___PHAPromptSuggestionCachingTask_photoLibrary);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72A8, &qword_22FCD4730);
  v5 = sub_22FCC74C4();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22FCD1800;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D3C130], v5);
  (*(v2 + 104))(v1, *MEMORY[0x277D3C490], v3);
  v9 = sub_22FCC7AC4();
  v0[7] = v9;

  (*(v2 + 8))(v1, v3);
  v10 = [v9 count];
  if (v10 < 1)
  {
    sub_22FCC7A24();
    v11 = v4;
    v0[8] = sub_22FCC79B4();
    v0[9] = 0;
    sub_22FA4EA44(&qword_28147B030, MEMORY[0x277D3C3E8], MEMORY[0x277D3C3F0]);
    v14 = sub_22FCC8CC4();

    return MEMORY[0x2822009F8](sub_22FA3BC68, v14, v15);
  }

  else
  {

    v12 = v0[1];

    return v12(v10 > 0);
  }
}

uint64_t sub_22FA3BC68()
{
  v1 = v0[9];
  v2 = sub_22FCC79D4();
  v0[10] = v1;
  if (v1)
  {
    v3 = sub_22FA3BDAC;
  }

  else
  {
    v4 = v0[3];
    v0[11] = v2;
    sub_22FA2B420(v4, &qword_27DAD8730, &qword_22FCD1B20);
    v3 = sub_22FA3BD14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FA3BD14()
{
  v1 = *(v0 + 88);

  v2 = *(v1 + 16);

  v3 = *(v0 + 8);

  return v3(v2 != 0);
}

uint64_t sub_22FA3BDAC()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_22FA3BE38(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FA3BE58, 0, 0);
}

uint64_t sub_22FA3BE58()
{
  v1 = v0[2];
  sub_22FCC7A24();
  v2 = v1;
  v0[4] = sub_22FCC79B4();
  v0[5] = 0;
  sub_22FA4EA44(&qword_28147B030, MEMORY[0x277D3C3E8], MEMORY[0x277D3C3F0]);
  v4 = sub_22FCC8CC4();
  v0[6] = v4;
  v0[7] = v3;

  return MEMORY[0x2822009F8](sub_22FA3C074, v4, v3);
}

uint64_t sub_22FA3C074()
{
  *(v0 + 72) = sub_22FCC79A4() & 1;

  return MEMORY[0x2822009F8](sub_22FA3C0E4, 0, 0);
}

uint64_t sub_22FA3C0E4(uint64_t a1)
{
  if (*(v1 + 72) == 1)
  {
    v2 = sub_22FCC8664();
    v3 = sub_22FCC8F34();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_22FA28000, v2, v3, "Need to reset cache", v4, 2u);
      MEMORY[0x23190A000](v4, -1, -1);
    }

    v5 = *(v1 + 48);
    v6 = *(v1 + 56);

    return MEMORY[0x2822009F8](sub_22FA3C208, v5, v6);
  }

  else
  {
    v7 = *(v1 + 32);
    v8 = *(v1 + 8);

    return v8(v7);
  }
}

uint64_t sub_22FA3C208()
{
  v1 = v0[5];
  sub_22FCC79F4();
  v0[8] = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22FA3C2B8, 0, 0);
  }

  else
  {
    v2 = v0[4];
    v3 = v0[1];

    return v3(v2);
  }
}

uint64_t sub_22FA3C2B8()
{

  v1 = *(v0 + 64);
  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_22FA28000, v3, v4, "Failed to open prompt suggestion cache: %@", v5, 0xCu);
    sub_22FA2B420(v6, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v6, -1, -1);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9(0);
}

uint64_t sub_22FA3C42C(uint64_t a1, uint64_t a2)
{
  v3[52] = a2;
  v3[53] = v2;
  v3[51] = a1;
  v4 = sub_22FCC8174();
  v3[54] = v4;
  v3[55] = *(v4 - 8);
  v3[56] = swift_task_alloc();
  v5 = sub_22FCC8134();
  v3[57] = v5;
  v3[58] = *(v5 - 8);
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v6 = sub_22FCC74C4();
  v3[61] = v6;
  v3[62] = *(v6 - 8);
  v3[63] = swift_task_alloc();
  v7 = sub_22FCC8154();
  v3[64] = v7;
  v3[65] = *(v7 - 8);
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  sub_22FCC8574();
  v3[70] = swift_task_alloc();
  v8 = sub_22FCC8524();
  v3[71] = v8;
  v3[72] = *(v8 - 8);
  v3[73] = swift_task_alloc();
  v9 = sub_22FCC85D4();
  v3[74] = v9;
  v3[75] = *(v9 - 8);
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v10 = sub_22FCC8684();
  v3[78] = v10;
  v3[79] = *(v10 - 8);
  v3[80] = swift_task_alloc();
  v11 = sub_22FCC8604();
  v3[81] = v11;
  v3[82] = *(v11 - 8);
  v3[83] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA3C7DC, 0, 0);
}

uint64_t sub_22FA3C7DC()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[53];
  v5 = OBJC_IVAR___PHAPromptSuggestionCachingTask_logger;
  v0[84] = OBJC_IVAR___PHAPromptSuggestionCachingTask_logger;
  v28 = v4;
  v26 = v5;
  v27 = *(v2 + 16);
  v27(v1, v4 + v5, v3);
  sub_22FCC85E4();
  sub_22FCC85C4();
  v6 = sub_22FCC85F4();
  v7 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v6, v7, v9, "PromptSuggestionCachingTask.execute", "", v8, 2u);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  v23 = v0[80];
  v24 = v0[78];
  v10 = v0[77];
  v11 = v0[76];
  v12 = v0[75];
  v13 = v0[74];
  v14 = v0[52];
  v25 = v0[53];
  v15 = v0[51];

  (*(v12 + 16))(v11, v10, v13);
  sub_22FCC8644();
  swift_allocObject();
  v0[85] = sub_22FCC8634();
  (*(v12 + 8))(v10, v13);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v0[6] = sub_22FA4ED4C;
  v0[7] = v16;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_0;
  v17 = _Block_copy(v0 + 2);
  v18 = objc_opt_self();

  v0[86] = [v18 progressReporterWithProgressBlock_];
  _Block_release(v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7260, &unk_22FCD1AD0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22FCD17F0;
  sub_22FCC8514();
  sub_22FCC8504();
  v0[50] = v19;
  sub_22FA4EA44(&qword_28147B000, MEMORY[0x277D3CA90], MEMORY[0x277D3CA98]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7268, &unk_22FCDA240);
  sub_22FA4ED8C();
  sub_22FCC9264();
  v27(v23, v28 + v26, v24);
  sub_22FCC8564();
  v0[87] = sub_22FCC8554();
  swift_allocObject();
  v0[88] = sub_22FCC8534();
  v20 = [*(*(v25 + OBJC_IVAR___PHAPromptSuggestionCachingTask_graphManager) + 112) photoLibrary];
  v0[89] = v20;
  v21 = swift_task_alloc();
  v0[90] = v21;
  *v21 = v0;
  v21[1] = sub_22FA3CC38;

  return sub_22FA3BE38(v20);
}

uint64_t sub_22FA3CC38(uint64_t a1)
{
  *(*v1 + 728) = a1;

  return MEMORY[0x2822009F8](sub_22FA3CD38, 0, 0);
}

uint64_t sub_22FA3CD38(uint64_t a1)
{
  v2 = *(v1 + 728);
  if (v2)
  {
    sub_22FCC8FF4();
    v3 = *(v1 + 704);
    v5 = *(v1 + 696);
    v6 = [*(v1 + 688) childProgressReporterFromStart:0.2 toEnd:0.6];
    *(v1 + 736) = v6;
    v7 = MEMORY[0x277D3CAA0];
    *(v1 + 88) = v5;
    *(v1 + 96) = v7;
    *(v1 + 64) = v3;

    v8 = swift_task_alloc();
    *(v1 + 744) = v8;
    *v8 = v1;
    v8[1] = sub_22FA3D19C;

    return sub_22FA3ECBC(v1 + 376, v2, v1 + 64, v6);
  }

  else
  {
    sub_22FCC9004();
    v9 = sub_22FCC8664();
    v10 = sub_22FCC8F14();
    if (os_log_type_enabled(v9, v10))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22FA28000, v9, v10, "Failed to open moment cache", v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    v13 = *(v1 + 712);
    v14 = *(v1 + 688);

    v15 = *(v1 + 664);
    v16 = *(v1 + 656);
    v17 = *(v1 + 648);
    sub_22FA3E9F8(v15, *(v1 + 680), *(v1 + 424));

    (*(v16 + 8))(v15, v17);

    v18 = *(v1 + 8);

    return v18();
  }
}

uint64_t sub_22FA3D19C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 752) = v1;

  if (v1)
  {
    v5 = sub_22FA3E584;
  }

  else
  {
    *(v4 + 760) = a1;
    __swift_destroy_boxed_opaque_existential_0((v4 + 64));
    v5 = sub_22FA3D2CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FA3D2CC()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 520);
  v4 = *(v0 + 512);
  v6 = *(v0 + 376);
  v5 = *(v0 + 384);
  v7 = *(v0 + 392);
  (*(*(v0 + 496) + 104))(*(v0 + 504), *MEMORY[0x277D3C130], *(v0 + 488));
  v44 = v5;
  sub_22FA67028(v6, v5, v7);
  sub_22FCC8144();
  (*(v3 + 16))(v2, v1, v4);
  v8 = sub_22FAC1CE4(0, 1, 1, MEMORY[0x277D84F90]);
  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_22FAC1CE4((v9 > 1), v10 + 1, 1, v8);
  }

  v11 = *(v0 + 544);
  v12 = *(v0 + 520);
  v13 = *(v0 + 512);
  v14 = *(v0 + 424);
  v8[2] = v10 + 1;
  (*(v12 + 32))(v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, v11, v13);
  sub_22FA4FAA4(v14 + OBJC_IVAR___PHAPromptSuggestionCachingTask_taskProductivityReporter, v0 + 304, &unk_27DAD83A0, &qword_22FCD1AC0);
  v15 = *(v0 + 520);
  v16 = *(v0 + 512);
  if (*(v0 + 328))
  {
    v17 = *(v0 + 424);
    v43 = *(v0 + 552);
    sub_22FA2CF78((v0 + 304), v0 + 264);
    v18 = *(v0 + 288);
    v19 = *(v0 + 296);
    __swift_project_boxed_opaque_existential_1((v0 + 264), v18);
    sub_22FCC9384();
    v21 = *(v17 + OBJC_IVAR___PHAPromptSuggestionCachingTask_name);
    v20 = *(v17 + OBJC_IVAR___PHAPromptSuggestionCachingTask_name + 8);

    MEMORY[0x231907FA0](0xD000000000000012, 0x800000022FCDFAD0);
    (*(v19 + 16))(v44, v21, v20, v18, v19);

    (*(v15 + 8))(v43, v16);
    __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  }

  else
  {
    (*(v15 + 8))(*(v0 + 552), *(v0 + 512));

    sub_22FA2B420(v0 + 304, &unk_27DAD83A0, &qword_22FCD1AC0);
  }

  v22 = *(v0 + 752);
  *(v0 + 768) = v8;
  sub_22FCC8FF4();
  if (v22)
  {
    v23 = *(v0 + 736);
    v24 = *(v0 + 712);
    v25 = *(v0 + 688);

    v26 = *(v0 + 664);
    v27 = *(v0 + 656);
    v28 = *(v0 + 648);
    sub_22FA3E9F8(v26, *(v0 + 680), *(v0 + 424));

    (*(v27 + 8))(v26, v28);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v31 = *(v0 + 728);
    v32 = *(v0 + 704);
    v33 = *(v0 + 696);
    v34 = *(v0 + 672);
    v35 = *(v0 + 424);
    v36 = [*(v0 + 688) childProgressReporterFromStart:0.6 toEnd:0.9];
    v37 = MEMORY[0x277D3CAA0];
    *(v0 + 776) = v36;
    *(v0 + 128) = v33;
    *(v0 + 136) = v37;
    *(v0 + 104) = v32;

    sub_22FA4EE38();
    v38 = swift_allocError();
    *(v0 + 784) = v38;
    sub_22FA2D328(v0 + 104, v0 + 144);
    v39 = swift_allocObject();
    *(v0 + 792) = v39;
    v39[2] = v35;
    v39[3] = v31;
    sub_22FA2CF78((v0 + 144), (v39 + 4));
    v39[9] = v36;
    v40 = v35;

    v41 = v36;
    v42 = swift_task_alloc();
    *(v0 + 800) = v42;
    *v42 = v0;
    v42[1] = sub_22FA3D88C;

    return sub_22FB6CF88(v0 + 344, v38, v40 + v34, &unk_22FCD1AF8, v39, 180.0);
  }
}

uint64_t sub_22FA3D88C()
{
  v2 = *v1;
  *(*v1 + 808) = v0;

  if (v0)
  {
    v3 = sub_22FA3DED4;
  }

  else
  {
    v4 = *(v2 + 784);

    v3 = sub_22FA3D9B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FA3D9B4()
{
  v1 = *(v0 + 536);
  v44 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v43 = *(v0 + 512);
  v5 = *(v0 + 488);
  v4 = *(v0 + 496);
  v6 = *(v0 + 344);
  v7 = *(v0 + 352);
  v8 = *(v0 + 360);
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  (*(v4 + 104))(v3, *MEMORY[0x277D3C138], v5);
  v42 = v6;
  sub_22FA675C0(v6, v7, v8);
  sub_22FCC8144();
  (*(v2 + 16))(v44, v1, v43);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 768);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_22FAC1CE4(0, v10[2] + 1, 1, *(v0 + 768));
  }

  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_22FAC1CE4((v11 > 1), v12 + 1, 1, v10);
  }

  v13 = *(v0 + 528);
  v14 = *(v0 + 520);
  v15 = *(v0 + 512);
  v16 = *(v0 + 424);
  v10[2] = v12 + 1;
  (*(v14 + 32))(v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12, v13, v15);
  sub_22FA4FAA4(v16 + OBJC_IVAR___PHAPromptSuggestionCachingTask_taskProductivityReporter, v0 + 224, &unk_27DAD83A0, &qword_22FCD1AC0);
  v17 = *(v0 + 536);
  v18 = *(v0 + 520);
  v19 = *(v0 + 512);
  if (*(v0 + 248))
  {
    v20 = *(v0 + 424);
    sub_22FA2CF78((v0 + 224), v0 + 184);
    v21 = *(v0 + 208);
    v22 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v21);
    sub_22FCC9384();
    v23 = *(v20 + OBJC_IVAR___PHAPromptSuggestionCachingTask_name);
    v24 = *(v20 + OBJC_IVAR___PHAPromptSuggestionCachingTask_name + 8);

    MEMORY[0x231907FA0](0xD000000000000012, 0x800000022FCDFAB0);
    (*(v22 + 16))(v42, v23, v24, v21, v22);

    (*(v18 + 8))(v17, v19);
    __swift_destroy_boxed_opaque_existential_0((v0 + 184));
  }

  else
  {
    (*(v18 + 8))(*(v0 + 536), *(v0 + 512));

    sub_22FA2B420(v0 + 224, &unk_27DAD83A0, &qword_22FCD1AC0);
  }

  v25 = *(v0 + 808);
  sub_22FCC8FF4();
  *(v0 + 816) = v25;
  if (v25)
  {
    v26 = *(v0 + 776);
    v27 = *(v0 + 736);
    v28 = *(v0 + 712);
    v29 = *(v0 + 688);

    v30 = *(v0 + 664);
    v31 = *(v0 + 656);
    v32 = *(v0 + 648);
    sub_22FA3E9F8(v30, *(v0 + 680), *(v0 + 424));

    (*(v31 + 8))(v30, v32);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    v35 = *(v0 + 728);
    v37 = *(v0 + 472);
    v36 = *(v0 + 480);
    v38 = *(v0 + 456);
    v39 = *(v0 + 464);
    sub_22FA46474(*(v0 + 712));
    (*(v39 + 16))(v37, v36, v38);
    sub_22FCC8164();
    v40 = swift_task_alloc();
    *(v0 + 824) = v40;
    *v40 = v0;
    v40[1] = sub_22FA3E290;
    v41 = *(v0 + 448);

    return sub_22FA466BC(v41, v35);
  }
}

uint64_t sub_22FA3DED4()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 784);

  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  v3 = v1;
  v4 = sub_22FCC8664();
  v5 = sub_22FCC8F14();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 808);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22FA28000, v4, v5, "Failed to process search suggestions: %@", v8, 0xCu);
    sub_22FA2B420(v9, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  else
  {
  }

  sub_22FCC8FF4();
  *(v0 + 816) = 0;
  v12 = *(v0 + 728);
  v14 = *(v0 + 472);
  v13 = *(v0 + 480);
  v15 = *(v0 + 456);
  v16 = *(v0 + 464);
  sub_22FA46474(*(v0 + 712));
  (*(v16 + 16))(v14, v13, v15);
  sub_22FCC8164();
  v17 = swift_task_alloc();
  *(v0 + 824) = v17;
  *v17 = v0;
  v17[1] = sub_22FA3E290;
  v18 = *(v0 + 448);

  return sub_22FA466BC(v18, v12);
}

uint64_t sub_22FA3E290()
{

  return MEMORY[0x2822009F8](sub_22FA3E38C, 0, 0);
}

uint64_t sub_22FA3E38C(uint64_t a1)
{
  sub_22FCC9004();
  v2 = *(v1 + 776);
  v3 = *(v1 + 712);
  v4 = *(v1 + 688);
  v5 = *(v1 + 464);
  v14 = *(v1 + 456);
  v15 = *(v1 + 480);
  v6 = *(v1 + 440);
  v7 = *(v1 + 448);
  v8 = *(v1 + 432);

  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v15, v14);
  v9 = *(v1 + 664);
  v10 = *(v1 + 656);
  v11 = *(v1 + 648);
  sub_22FA3E9F8(v9, *(v1 + 680), *(v1 + 424));

  (*(v10 + 8))(v9, v11);

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_22FA3E584()
{
  v1 = *(v0 + 752);
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 752);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22FA28000, v3, v4, "Failed to process moment suggestions: %@", v7, 0xCu);
    sub_22FA2B420(v8, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  *(v0 + 768) = MEMORY[0x277D84F90];
  sub_22FCC8FF4();
  v11 = *(v0 + 728);
  v12 = *(v0 + 704);
  v13 = *(v0 + 696);
  v14 = *(v0 + 672);
  v15 = *(v0 + 424);
  v16 = [*(v0 + 688) childProgressReporterFromStart:0.6 toEnd:0.9];
  v17 = MEMORY[0x277D3CAA0];
  *(v0 + 776) = v16;
  *(v0 + 128) = v13;
  *(v0 + 136) = v17;
  *(v0 + 104) = v12;

  sub_22FA4EE38();
  v18 = swift_allocError();
  *(v0 + 784) = v18;
  sub_22FA2D328(v0 + 104, v0 + 144);
  v19 = swift_allocObject();
  *(v0 + 792) = v19;
  v19[2] = v15;
  v19[3] = v11;
  sub_22FA2CF78((v0 + 144), (v19 + 4));
  v19[9] = v16;
  v20 = v15;

  v21 = v16;
  v22 = swift_task_alloc();
  *(v0 + 800) = v22;
  *v22 = v0;
  v22[1] = sub_22FA3D88C;

  return sub_22FB6CF88(v0 + 344, v18, v20 + v14, &unk_22FCD1AF8, v19, 180.0);
}

uint64_t sub_22FA3E9F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_22FCC8614();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22FCC85D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a3;
  v15 = sub_22FCC85F4();
  sub_22FCC8624();
  v24 = sub_22FCC9094();

  if (sub_22FCC91A4())
  {

    sub_22FCC8654();

    if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D85B00])
    {
      v16 = 0;
      v17 = 0;
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v8, v4);
      v18 = "%{public}s";
      v17 = 2;
      v16 = 1;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = v17;
    *(v19 + 1) = v16;
    *(v19 + 2) = 2082;
    *(v19 + 4) = sub_22FA2F600(*&v14[OBJC_IVAR___PHAPromptSuggestionCachingTask_identifier], *&v14[OBJC_IVAR___PHAPromptSuggestionCachingTask_identifier + 8], &v25);
    v21 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v15, v24, v21, "PromptSuggestionCachingTask.execute", v18, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x23190A000](v20, -1, -1);
    MEMORY[0x23190A000](v19, -1, -1);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_22FA3ECBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[59] = a4;
  v5[60] = v4;
  v5[57] = a2;
  v5[58] = a3;
  v5[56] = a1;
  v6 = sub_22FCC7514();
  v5[61] = v6;
  v5[62] = *(v6 - 8);
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v7 = sub_22FCC8CF4();
  v5[66] = v7;
  v5[67] = *(v7 - 8);
  v5[68] = swift_task_alloc();
  v8 = sub_22FCC8684();
  v5[69] = v8;
  v9 = *(v8 - 8);
  v5[70] = v9;
  v5[71] = *(v9 + 64);
  v5[72] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v10 = *(type metadata accessor for PromptSuggestionFetcher.MCSuggestion(0) - 8);
  v5[77] = v10;
  v5[78] = *(v10 + 64);
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  v5[81] = swift_task_alloc();
  v5[82] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7298, &qword_22FCD47F0);
  v5[83] = v11;
  v5[84] = *(v11 - 8);
  v5[85] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72A0, &qword_22FCD1B50);
  v5[86] = swift_task_alloc();
  v5[87] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA3EFE8, 0, 0);
}

uint64_t sub_22FA3EFE8()
{
  v1 = v0[60];
  v2 = *&v1[OBJC_IVAR___PHAPromptSuggestionCachingTask_log];
  sub_22FCC76D4();
  swift_allocObject();
  v3 = v2;
  v0[88] = sub_22FCC76C4();
  v4 = swift_allocObject();
  v0[89] = v4;
  v4[2] = MEMORY[0x277D84F90];
  v0[90] = sub_22FA4EE38();
  v4[3] = 0;
  v4[4] = 0;
  v5 = swift_allocError();
  v0[91] = v5;
  v6 = OBJC_IVAR___PHAPromptSuggestionCachingTask_logger;
  v0[92] = OBJC_IVAR___PHAPromptSuggestionCachingTask_logger;
  v7 = swift_allocObject();
  v0[93] = v7;
  *(v7 + 16) = v1;
  v8 = v1;
  v9 = swift_task_alloc();
  v0[94] = v9;
  *v9 = v0;
  v9[1] = sub_22FA3F190;

  return sub_22FB6C804(sub_22FB6C804, v5, &v1[v6], &unk_22FCD1B60, v7, 120.0);
}

uint64_t sub_22FA3F190()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = sub_22FA44E58;
  }

  else
  {
    v4 = *(v2 + 728);

    v3 = sub_22FA3F2B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FA3F2B8()
{
  v1 = v0[92];
  v2 = v0[89];
  v4 = v0[59];
  v3 = v0[60];
  v5 = *&v3[OBJC_IVAR___PHAPromptSuggestionCachingTask_photoLibrary];
  v0[96] = sub_22FCC7E94();
  swift_allocObject();
  v6 = v5;
  v0[97] = sub_22FCC7E44();
  v7 = swift_allocObject();
  v0[98] = v7;
  *(v7 + 16) = MEMORY[0x277D84F90];
  v8 = swift_allocObject();
  v0[99] = v8;
  *(v8 + 16) = 0;
  v9 = swift_allocError();
  v0[100] = v9;
  v10 = swift_allocObject();
  v0[101] = v10;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v7;
  v10[5] = v2;
  v10[6] = v8;
  v11 = v3;
  v12 = v4;

  v13 = swift_task_alloc();
  v0[102] = v13;
  *v13 = v0;
  v13[1] = sub_22FA3F49C;

  return sub_22FB6C804(sub_22FB6C804, v9, &v11[v1], &unk_22FCD1B70, v10, 120.0);
}

uint64_t sub_22FA3F49C()
{
  v2 = *v1;
  *(*v1 + 824) = v0;

  if (v0)
  {

    v3 = sub_22FA450EC;
  }

  else
  {
    v4 = *(v2 + 800);

    v3 = sub_22FA3F5E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FA3F5E0()
{
  v1 = v0[98];
  swift_beginAccess();
  if (*(*(v1 + 16) + 16))
  {

    v2 = sub_22FCC8664();
    v3 = sub_22FCC8F34();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[98];
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = *(*(v5 + 16) + 16);

      _os_log_impl(&dword_22FA28000, v2, v3, "Fetched %ld moment suggestion", v6, 0xCu);
      MEMORY[0x23190A000](v6, -1, -1);
    }

    else
    {
    }

    v16 = v0[103];
    sub_22FCC8FF4();
    if (v16)
    {

      sub_22FCC76B4();

      v17 = v0[1];

      return v17();
    }

    else
    {
      v18 = v0[98];
      v19 = v0[92];
      v20 = v0[60];
      v21 = swift_allocObject();
      v0[104] = v21;
      *(v21 + 16) = MEMORY[0x277D84F90];
      v22 = swift_allocError();
      v0[105] = v22;
      v23 = swift_allocObject();
      v0[106] = v23;
      v23[2] = v18;
      v23[3] = v20;
      v23[4] = v21;
      v24 = v20;

      v25 = swift_task_alloc();
      v0[107] = v25;
      *v25 = v0;
      v25[1] = sub_22FA3FBAC;

      return sub_22FB6C804(sub_22FB6C804, v22, v24 + v19, &unk_22FCD1B80, v23, 120.0);
    }
  }

  else
  {
    v7 = sub_22FCC8664();
    v8 = sub_22FCC8F34();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22FA28000, v7, v8, "No moment suggestions returned", v9, 2u);
      MEMORY[0x23190A000](v9, -1, -1);
    }

    v10 = v0[99];
    v11 = v0[89];
    v12 = v0[56];

    swift_beginAccess();
    v13 = *(v11 + 24);
    *v12 = *(v11 + 16);
    *(v12 + 8) = v13;
    swift_beginAccess();
    v26 = *(v10 + 16);

    sub_22FCC76B4();

    v14 = v0[1];

    return v14(v26);
  }
}

uint64_t sub_22FA3FBAC()
{
  v2 = *v1;
  *(*v1 + 864) = v0;

  if (v0)
  {
    v3 = sub_22FA453D0;
  }

  else
  {
    v4 = *(v2 + 840);

    v3 = sub_22FA3FCD4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FA3FCD4()
{
  v1 = *(v0 + 832);
  v2 = swift_allocObject();
  *(v0 + 872) = v2;
  v3 = MEMORY[0x277D84F90];
  *(v2 + 16) = MEMORY[0x277D84F90];
  swift_beginAccess();
  v4 = *(v1 + 16);
  *(v0 + 880) = v4;
  v5 = *(v4 + 16);
  *(v0 + 888) = v5;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  *(v0 + 896) = v5;

  v6 = 1;
  v7 = swift_beginAccess();
  v15 = *(v0 + 864);
  *(v0 + 904) = 0x3FD3333333333333;
  *(v0 + 912) = 0u;
  v16 = *(v0 + 888);
  if (v16)
  {
    v17 = *(v0 + 880);
    if (!*(v17 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    v18 = *(v0 + 688);
    v19 = *(v0 + 680);
    v20 = *(*(v0 + 616) + 80);
    v21 = *(*(v0 + 664) + 48);
    *v19 = 0;
    sub_22FA4F8A8(v17 + ((v20 + 32) & ~v20), v19 + v21, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
    sub_22FA4F224(v19, v18, &qword_27DAD7298, &qword_22FCD47F0);
    v6 = 0;
    v16 = 1;
  }

  *(v0 + 928) = v16;
  v22 = *(v0 + 696);
  v23 = *(v0 + 688);
  v24 = *(v0 + 672);
  v25 = *(v0 + 664);
  (*(v24 + 56))(v23, v6, 1, v25);
  sub_22FA4F224(v23, v22, &qword_27DAD72A0, &qword_22FCD1B50);
  if ((*(v24 + 48))(v22, 1, v25) != 1)
  {
    v28 = *(v0 + 696);
    v29 = *(v0 + 656);
    v30 = *(v0 + 648);
    v31 = *v28;
    sub_22FA4F9D4(v28 + *(*(v0 + 664) + 48), v29, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
    v32 = swift_allocObject();
    *(v0 + 936) = v32;
    *(v32 + 16) = v3;
    v33 = swift_allocObject();
    *(v0 + 944) = v33;
    *(v33 + 16) = v3;
    sub_22FA4F8A8(v29, v30, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);

    v34 = sub_22FCC8664();
    v35 = sub_22FCC8F34();
    v114 = v33;
    v116 = v32;
    if (!os_log_type_enabled(v34, v35))
    {
      v44 = *(v0 + 648);

      sub_22FA4F910(v44, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      goto LABEL_15;
    }

    v36 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *(v0 + 440) = v7;
    *v36 = 134218498;
    if (!__OFADD__(v31, 1))
    {
      v37 = v7;
      v38 = *(v0 + 832);
      v39 = *(v0 + 648);
      *(v36 + 4) = v31 + 1;
      *(v36 + 12) = 2048;
      *(v36 + 14) = *(*(v38 + 16) + 16);

      *(v36 + 22) = 2080;
      v40 = PromptSuggestionFetcher.MCSuggestion.description.getter();
      v42 = v41;
      sub_22FA4F910(v39, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      v43 = sub_22FA2F600(v40, v42, (v0 + 440));

      *(v36 + 24) = v43;
      _os_log_impl(&dword_22FA28000, v34, v35, "Processing MomentSuggestion %ld of %ld. %s", v36, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x23190A000](v37, -1, -1);
      MEMORY[0x23190A000](v36, -1, -1);

LABEL_15:
      v111 = *(v0 + 872);
      v112 = *(v0 + 776);
      v45 = *(v0 + 656);
      v46 = *(v0 + 640);
      v47 = *(v0 + 624);
      v48 = *(v0 + 616);
      v107 = *(v0 + 480);
      v109 = *(v0 + 712);
      v49 = *(v0 + 464);
      v106 = [*(v0 + 472) childProgressReporterFromStart_toEnd_];
      *(v0 + 952) = v106;
      *(v0 + 960) = swift_allocError();
      sub_22FA4F8A8(v45, v46, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      sub_22FA2D328(v49, v0 + 56);
      v50 = (*(v48 + 80) + 40) & ~*(v48 + 80);
      v51 = (v47 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = (v51 + 47) & 0xFFFFFFFFFFFFFFF8;
      v52 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
      v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
      v54 = swift_allocObject();
      *(v0 + 968) = v54;
      v54[2] = v116;
      v54[3] = v114;
      v54[4] = v107;
      sub_22FA4F9D4(v46, v54 + v50, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      sub_22FA2CF78((v0 + 56), v54 + v51);
      *(v54 + v104) = v106;
      *(v54 + v52) = v111;
      *(v54 + v53) = v109;
      *(v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8)) = v112;
      v55 = v107;

      v56 = v106;

      v57 = sub_22FCC8664();
      v58 = sub_22FCC8F34();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 134349056;
        *(v59 + 4) = 0x405E000000000000;
        _os_log_impl(&dword_22FA28000, v57, v58, "Executing task with timeout %{public}fs", v59, 0xCu);
        MEMORY[0x23190A000](v59, -1, -1);
      }

      v60 = *(v0 + 608);
      v61 = *(v0 + 600);

      type metadata accessor for PromptSuggestionExecutionUtils.InternalTimeout();
      v62 = swift_allocObject();
      *(v0 + 976) = v62;
      swift_defaultActor_initialize();
      *(v62 + 112) = 0;
      v63 = sub_22FCC8D14();
      v64 = *(v63 - 8);
      v110 = *(v64 + 56);
      v110(v60, 1, 1, v63);
      v65 = swift_allocObject();
      v65[2] = 0;
      v65[3] = 0;
      v65[4] = &unk_22FCD1BB8;
      v65[5] = v54;
      sub_22FA4FAA4(v60, v61, &unk_27DAD8710, &unk_22FCD1B40);
      v66 = *(v64 + 48);
      LODWORD(v60) = v66(v61, 1, v63);

      v67 = *(v0 + 600);
      v115 = v62;
      if (v60 == 1)
      {
        sub_22FA2B420(v67, &unk_27DAD8710, &unk_22FCD1B40);
      }

      else
      {
        sub_22FCC8D04();
        (*(v64 + 8))(v67, v63);
      }

      v68 = v65[2];
      swift_unknownObjectRetain();

      if (v68)
      {
        swift_getObjectType();
        v69 = sub_22FCC8CC4();
        v71 = v70;
        swift_unknownObjectRelease();
      }

      else
      {
        v69 = 0;
        v71 = 0;
      }

      sub_22FA2B420(*(v0 + 608), &unk_27DAD8710, &unk_22FCD1B40);
      v118 = v63;
      v105 = v64;
      v113 = v66;
      if (v71 | v69)
      {
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = v69;
        *(v0 + 120) = v71;
      }

      v84 = *(v0 + 736);
      v85 = *(v0 + 592);
      v108 = *(v0 + 584);
      v86 = *(v0 + 576);
      v87 = *(v0 + 568);
      v88 = *(v0 + 560);
      v89 = *(v0 + 552);
      v90 = *(v0 + 480);
      v91 = swift_task_create();
      *(v0 + 984) = v91;
      v110(v85, 1, 1, v118);
      (*(v88 + 16))(v86, v90 + v84, v89);
      v92 = (*(v88 + 80) + 48) & ~*(v88 + 80);
      v93 = swift_allocObject();
      *(v93 + 2) = 0;
      *(v93 + 3) = 0;
      *(v93 + 4) = 0x405E000000000000;
      *(v93 + 5) = v115;
      (*(v88 + 32))(&v93[v92], v86, v89);
      *&v93[(v87 + v92 + 7) & 0xFFFFFFFFFFFFFFF8] = v91;
      sub_22FA4FAA4(v85, v108, &unk_27DAD8710, &unk_22FCD1B40);
      LODWORD(v86) = v113(v108, 1, v118);

      v94 = *(v0 + 584);
      if (v86 == 1)
      {
        sub_22FA2B420(*(v0 + 584), &unk_27DAD8710, &unk_22FCD1B40);
      }

      else
      {
        sub_22FCC8D04();
        (*(v105 + 8))(v94, v118);
      }

      v95 = *(v93 + 2);
      swift_unknownObjectRetain();

      if (v95)
      {
        swift_getObjectType();
        v96 = sub_22FCC8CC4();
        v98 = v97;
        swift_unknownObjectRelease();
      }

      else
      {
        v96 = 0;
        v98 = 0;
      }

      v99 = MEMORY[0x277D84F78];
      sub_22FA2B420(*(v0 + 592), &unk_27DAD8710, &unk_22FCD1B40);
      if (v98 | v96)
      {
        *(v0 + 128) = 0;
        *(v0 + 136) = 0;
        *(v0 + 144) = v96;
        *(v0 + 152) = v98;
      }

      v100 = *(v0 + 480) + *(v0 + 736);
      v101 = swift_task_create();
      *(v0 + 992) = v101;
      v102 = swift_task_alloc();
      *(v0 + 1000) = v102;
      v102[2] = v91;
      v102[3] = v101;
      v102[4] = v100;
      v103 = swift_task_alloc();
      *(v0 + 1008) = v103;
      *(v103 + 16) = v91;
      *(v103 + 24) = v101;
      v7 = swift_task_alloc();
      *(v0 + 1016) = v7;
      *v7 = v0;
      v7[1] = sub_22FA40AEC;
      v8 = &unk_22FCD1BD0;
      v10 = sub_22FA4F83C;
      v14 = v99 + 8;
      v9 = v102;
      v11 = v103;
      v12 = 0;
      v13 = 0;

      return MEMORY[0x282200830](v7, v8, v9, v10, v11, v12, v13, v14);
    }

LABEL_40:
    __break(1u);
    return MEMORY[0x282200830](v7, v8, v9, v10, v11, v12, v13, v14);
  }

  sub_22FCC8FF4();
  if (v15)
  {

    sub_22FCC76B4();

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v72 = *(v0 + 872);
    v73 = *(v0 + 832);
    v74 = *(v0 + 776);
    v117 = *(v0 + 736);
    v75 = *(v0 + 712);
    v77 = *(v0 + 472);
    v76 = *(v0 + 480);
    v78 = *(v0 + 464);
    v79 = swift_allocError();
    *(v0 + 1040) = v79;
    sub_22FA2D328(v78, v0 + 16);
    v80 = swift_allocObject();
    *(v0 + 1048) = v80;
    v80[2] = v76;
    v80[3] = v72;
    v80[4] = v73;
    sub_22FA2CF78((v0 + 16), (v80 + 5));
    v80[10] = v77;
    v80[11] = v74;
    v80[12] = v75;
    v81 = v76;
    v82 = v77;

    v83 = swift_task_alloc();
    *(v0 + 1056) = v83;
    *v83 = v0;
    v83[1] = sub_22FA44088;

    return sub_22FB6C804(sub_22FB6C804, v79, v81 + v117, &unk_22FCD1B90, v80, 120.0);
  }
}

uint64_t sub_22FA40AEC()
{
  *(*v1 + 1024) = v0;

  if (v0)
  {
    v2 = sub_22FA41A60;
  }

  else
  {

    v2 = sub_22FA40C14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FA40C14()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 656);

  sub_22FA4F910(v3, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
  v4 = *(v0 + 1024);

  v13 = *(v0 + 928);
  *(v0 + 904) = *(v0 + 904) + 0.5 / *(v0 + 896);
  if (v13 == *(v0 + 888))
  {
    v14 = 1;
    goto LABEL_6;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v15 = *(v0 + 880);
  if (v13 >= *(v15 + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v16 = *(v0 + 688);
  v17 = *(v0 + 680);
  v18 = v13 + 1;
  v19 = v15 + ((*(*(v0 + 616) + 80) + 32) & ~*(*(v0 + 616) + 80)) + *(*(v0 + 616) + 72) * v13;
  v20 = *(*(v0 + 664) + 48);
  *v17 = v13;
  sub_22FA4F8A8(v19, v17 + v20, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
  sub_22FA4F224(v17, v16, &qword_27DAD7298, &qword_22FCD47F0);
  v14 = 0;
  v13 = v18;
LABEL_6:
  *(v0 + 928) = v13;
  v21 = *(v0 + 696);
  v22 = *(v0 + 688);
  v23 = *(v0 + 672);
  v24 = *(v0 + 664);
  (*(v23 + 56))(v22, v14, 1, v24);
  sub_22FA4F224(v22, v21, &qword_27DAD72A0, &qword_22FCD1B50);
  if ((*(v23 + 48))(v21, 1, v24) != 1)
  {
    v27 = *(v0 + 696);
    v28 = *(v0 + 656);
    v29 = *(v0 + 648);
    v30 = *v27;
    sub_22FA4F9D4(v27 + *(*(v0 + 664) + 48), v28, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
    v31 = swift_allocObject();
    *(v0 + 936) = v31;
    v32 = MEMORY[0x277D84F90];
    *(v31 + 16) = MEMORY[0x277D84F90];
    v33 = swift_allocObject();
    *(v0 + 944) = v33;
    *(v33 + 16) = v32;
    sub_22FA4F8A8(v28, v29, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);

    v34 = sub_22FCC8664();
    v35 = sub_22FCC8F34();
    v113 = v33;
    v115 = v31;
    if (!os_log_type_enabled(v34, v35))
    {
      v44 = *(v0 + 648);

      sub_22FA4F910(v44, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      goto LABEL_15;
    }

    v36 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *(v0 + 440) = v5;
    *v36 = 134218498;
    if (!__OFADD__(v30, 1))
    {
      v37 = v5;
      v38 = *(v0 + 832);
      v39 = *(v0 + 648);
      *(v36 + 4) = v30 + 1;
      *(v36 + 12) = 2048;
      *(v36 + 14) = *(*(v38 + 16) + 16);

      *(v36 + 22) = 2080;
      v40 = PromptSuggestionFetcher.MCSuggestion.description.getter();
      v42 = v41;
      sub_22FA4F910(v39, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      v43 = sub_22FA2F600(v40, v42, (v0 + 440));

      *(v36 + 24) = v43;
      _os_log_impl(&dword_22FA28000, v34, v35, "Processing MomentSuggestion %ld of %ld. %s", v36, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x23190A000](v37, -1, -1);
      MEMORY[0x23190A000](v36, -1, -1);

LABEL_15:
      v110 = *(v0 + 872);
      v111 = *(v0 + 776);
      v45 = *(v0 + 656);
      v46 = *(v0 + 640);
      v47 = *(v0 + 624);
      v48 = *(v0 + 616);
      v107 = *(v0 + 480);
      v108 = *(v0 + 712);
      v49 = *(v0 + 464);
      v105 = [*(v0 + 472) childProgressReporterFromStart_toEnd_];
      *(v0 + 952) = v105;
      *(v0 + 960) = swift_allocError();
      sub_22FA4F8A8(v45, v46, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      sub_22FA2D328(v49, v0 + 56);
      v50 = (*(v48 + 80) + 40) & ~*(v48 + 80);
      v51 = (v47 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v103 = (v51 + 47) & 0xFFFFFFFFFFFFFFF8;
      v52 = (v103 + 15) & 0xFFFFFFFFFFFFFFF8;
      v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
      v54 = swift_allocObject();
      *(v0 + 968) = v54;
      v54[2] = v115;
      v54[3] = v113;
      v54[4] = v107;
      sub_22FA4F9D4(v46, v54 + v50, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      sub_22FA2CF78((v0 + 56), v54 + v51);
      *(v54 + v103) = v105;
      *(v54 + v52) = v110;
      *(v54 + v53) = v108;
      *(v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8)) = v111;
      v55 = v107;

      v56 = v105;

      v57 = sub_22FCC8664();
      v58 = sub_22FCC8F34();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 134349056;
        *(v59 + 4) = 0x405E000000000000;
        _os_log_impl(&dword_22FA28000, v57, v58, "Executing task with timeout %{public}fs", v59, 0xCu);
        MEMORY[0x23190A000](v59, -1, -1);
      }

      v60 = *(v0 + 608);
      v61 = *(v0 + 600);

      type metadata accessor for PromptSuggestionExecutionUtils.InternalTimeout();
      v62 = swift_allocObject();
      *(v0 + 976) = v62;
      swift_defaultActor_initialize();
      v114 = v62;
      *(v62 + 112) = 0;
      v63 = sub_22FCC8D14();
      v64 = *(v63 - 8);
      v109 = *(v64 + 56);
      v109(v60, 1, 1, v63);
      v65 = swift_allocObject();
      v65[2] = 0;
      v65[3] = 0;
      v65[4] = &unk_22FCD1BB8;
      v65[5] = v54;
      sub_22FA4FAA4(v60, v61, &unk_27DAD8710, &unk_22FCD1B40);
      v112 = *(v64 + 48);
      LODWORD(v60) = v112(v61, 1, v63);

      v66 = *(v0 + 600);
      if (v60 == 1)
      {
        sub_22FA2B420(*(v0 + 600), &unk_27DAD8710, &unk_22FCD1B40);
      }

      else
      {
        sub_22FCC8D04();
        (*(v64 + 8))(v66, v63);
      }

      v67 = v65[2];
      swift_unknownObjectRetain();

      if (v67)
      {
        swift_getObjectType();
        v68 = sub_22FCC8CC4();
        v70 = v69;
        swift_unknownObjectRelease();
      }

      else
      {
        v68 = 0;
        v70 = 0;
      }

      sub_22FA2B420(*(v0 + 608), &unk_27DAD8710, &unk_22FCD1B40);
      v117 = v63;
      v104 = v64;
      if (v70 | v68)
      {
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = v68;
        *(v0 + 120) = v70;
      }

      v83 = *(v0 + 736);
      v84 = *(v0 + 592);
      v106 = *(v0 + 584);
      v85 = *(v0 + 576);
      v86 = *(v0 + 568);
      v87 = *(v0 + 560);
      v88 = *(v0 + 552);
      v89 = *(v0 + 480);
      v90 = swift_task_create();
      *(v0 + 984) = v90;
      v109(v84, 1, 1, v117);
      (*(v87 + 16))(v85, v89 + v83, v88);
      v91 = (*(v87 + 80) + 48) & ~*(v87 + 80);
      v92 = swift_allocObject();
      *(v92 + 2) = 0;
      *(v92 + 3) = 0;
      *(v92 + 4) = 0x405E000000000000;
      *(v92 + 5) = v114;
      (*(v87 + 32))(&v92[v91], v85, v88);
      *&v92[(v86 + v91 + 7) & 0xFFFFFFFFFFFFFFF8] = v90;
      sub_22FA4FAA4(v84, v106, &unk_27DAD8710, &unk_22FCD1B40);
      LODWORD(v85) = v112(v106, 1, v117);

      v93 = *(v0 + 584);
      if (v85 == 1)
      {
        sub_22FA2B420(*(v0 + 584), &unk_27DAD8710, &unk_22FCD1B40);
      }

      else
      {
        sub_22FCC8D04();
        (*(v104 + 8))(v93, v117);
      }

      v94 = *(v92 + 2);
      swift_unknownObjectRetain();

      if (v94)
      {
        swift_getObjectType();
        v95 = sub_22FCC8CC4();
        v97 = v96;
        swift_unknownObjectRelease();
      }

      else
      {
        v95 = 0;
        v97 = 0;
      }

      sub_22FA2B420(*(v0 + 592), &unk_27DAD8710, &unk_22FCD1B40);
      if (v97 | v95)
      {
        *(v0 + 128) = 0;
        *(v0 + 136) = 0;
        *(v0 + 144) = v95;
        *(v0 + 152) = v97;
      }

      v98 = *(v0 + 480) + *(v0 + 736);
      v99 = MEMORY[0x277D84F78];
      v100 = swift_task_create();
      *(v0 + 992) = v100;
      v101 = swift_task_alloc();
      *(v0 + 1000) = v101;
      v101[2] = v90;
      v101[3] = v100;
      v101[4] = v98;
      v102 = swift_task_alloc();
      *(v0 + 1008) = v102;
      *(v102 + 16) = v90;
      *(v102 + 24) = v100;
      v5 = swift_task_alloc();
      *(v0 + 1016) = v5;
      *v5 = v0;
      v5[1] = sub_22FA40AEC;
      v6 = &unk_22FCD1BD0;
      v8 = sub_22FA4F83C;
      v12 = v99 + 8;
      v7 = v101;
      v9 = v102;
      v10 = 0;
      v11 = 0;

      return MEMORY[0x282200830](v5, v6, v7, v8, v9, v10, v11, v12);
    }

LABEL_41:
    __break(1u);
    return MEMORY[0x282200830](v5, v6, v7, v8, v9, v10, v11, v12);
  }

  sub_22FCC8FF4();
  if (v4)
  {

    sub_22FCC76B4();

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v71 = *(v0 + 872);
    v72 = *(v0 + 832);
    v73 = *(v0 + 776);
    v116 = *(v0 + 736);
    v74 = *(v0 + 712);
    v76 = *(v0 + 472);
    v75 = *(v0 + 480);
    v77 = *(v0 + 464);
    v78 = swift_allocError();
    *(v0 + 1040) = v78;
    sub_22FA2D328(v77, v0 + 16);
    v79 = swift_allocObject();
    *(v0 + 1048) = v79;
    v79[2] = v75;
    v79[3] = v71;
    v79[4] = v72;
    sub_22FA2CF78((v0 + 16), (v79 + 5));
    v79[10] = v76;
    v79[11] = v73;
    v79[12] = v74;
    v80 = v75;
    v81 = v76;

    v82 = swift_task_alloc();
    *(v0 + 1056) = v82;
    *v82 = v0;
    v82[1] = sub_22FA44088;

    return sub_22FB6C804(sub_22FB6C804, v78, v80 + v116, &unk_22FCD1B90, v79, 120.0);
  }
}

uint64_t sub_22FA41A60()
{
  v156 = v0;
  v1 = *(v0 + 1024);

  *(v0 + 424) = v1;
  v2 = v1;
  *(v0 + 1032) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 976);

    return MEMORY[0x2822009F8](sub_22FA42D5C, v3, 0);
  }

  v4 = *(v0 + 1024);
  v5 = *(v0 + 960);
  v6 = *(v0 + 952);

  *(v0 + 432) = v4;
  v7 = v4;
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 656);
    v9 = *(v0 + 632);

    sub_22FA4F8A8(v8, v9, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F34();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = (v0 + 920);
      v13 = *(v0 + 920);
      v14 = *(v0 + 632);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v155 = v16;
      *v15 = 134218242;
      *(v15 + 4) = v13;
      *(v15 + 12) = 2080;
      v17 = PromptSuggestionFetcher.MCSuggestion.description.getter();
      v19 = v18;
      sub_22FA4F910(v14, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      v20 = sub_22FA2F600(v17, v19, &v155);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_22FA28000, v10, v11, "Prompt suggestions validation timed out. We have timed out %ld times before. %s", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23190A000](v16, -1, -1);
      MEMORY[0x23190A000](v15, -1, -1);
    }

    else
    {
      v42 = *(v0 + 632);

      v21 = sub_22FA4F910(v42, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      v12 = (v0 + 912);
    }

    v43 = *v12 + 1;
    if (__OFADD__(*v12, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v43 >= 4)
    {
      v44 = *(v0 + 480);

      v45 = v44;
      v46 = sub_22FCC8664();
      v47 = sub_22FCC8F34();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = *(v0 + 480);
        v49 = swift_slowAlloc();
        *v49 = 134217984;
        *(v49 + 4) = 3;

        _os_log_impl(&dword_22FA28000, v46, v47, "Exceeded maximum timeout count of %ld, stopping validation", v49, 0xCu);
        MEMORY[0x23190A000](v49, -1, -1);
      }

      else
      {

        v46 = *(v0 + 480);
      }

      v126 = *(v0 + 656);

      sub_22FA4F910(v126, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);

      goto LABEL_51;
    }

    sub_22FA4F910(*(v0 + 656), type metadata accessor for PromptSuggestionFetcher.MCSuggestion);

    v40 = *(v0 + 928);
    v41 = vdupq_n_s64(v43);
  }

  else
  {

    v29 = v4;
    v30 = sub_22FCC8664();
    v31 = sub_22FCC8F14();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = v4;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_22FA28000, v30, v31, "Error validating moment prompt suggestions: %@", v32, 0xCu);
      sub_22FA2B420(v33, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v33, -1, -1);
      MEMORY[0x23190A000](v32, -1, -1);
    }

    v36 = *(v0 + 792);
    v37 = *(v0 + 656);

    v38 = sub_22FCC6504();
    v39 = [v38 code];

    sub_22FA4F910(v37, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
    *(v36 + 16) = v39;

    v40 = *(v0 + 928);
    v41 = *(v0 + 912);
    *(v0 + 904) = *(v0 + 904) + 0.5 / *(v0 + 896);
  }

  *(v0 + 912) = v41;
  if (v40 == *(v0 + 888))
  {
    v50 = 1;
    goto LABEL_22;
  }

  if ((v40 & 0x8000000000000000) != 0)
  {
    goto LABEL_55;
  }

  v51 = *(v0 + 880);
  if (v40 >= *(v51 + 16))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v52 = *(v0 + 688);
  v53 = *(v0 + 680);
  v54 = v40 + 1;
  v55 = v51 + ((*(*(v0 + 616) + 80) + 32) & ~*(*(v0 + 616) + 80)) + *(*(v0 + 616) + 72) * v40;
  v56 = *(*(v0 + 664) + 48);
  *v53 = v40;
  sub_22FA4F8A8(v55, v53 + v56, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
  sub_22FA4F224(v53, v52, &qword_27DAD7298, &qword_22FCD47F0);
  v50 = 0;
  v40 = v54;
LABEL_22:
  *(v0 + 928) = v40;
  v57 = *(v0 + 696);
  v58 = *(v0 + 688);
  v59 = *(v0 + 672);
  v60 = *(v0 + 664);
  (*(v59 + 56))(v58, v50, 1, v60);
  sub_22FA4F224(v58, v57, &qword_27DAD72A0, &qword_22FCD1B50);
  if ((*(v59 + 48))(v57, 1, v60) != 1)
  {
    v61 = *(v0 + 696);
    v62 = *(v0 + 656);
    v63 = *(v0 + 648);
    v64 = *v61;
    sub_22FA4F9D4(v61 + *(*(v0 + 664) + 48), v62, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
    v65 = swift_allocObject();
    *(v0 + 936) = v65;
    v66 = MEMORY[0x277D84F90];
    v152 = v65;
    *(v65 + 16) = MEMORY[0x277D84F90];
    v67 = swift_allocObject();
    *(v0 + 944) = v67;
    v150 = v67;
    *(v67 + 16) = v66;
    sub_22FA4F8A8(v62, v63, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);

    v68 = sub_22FCC8664();
    v69 = sub_22FCC8F34();
    if (!os_log_type_enabled(v68, v69))
    {
      v78 = *(v0 + 648);

      sub_22FA4F910(v78, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      goto LABEL_28;
    }

    v70 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *(v0 + 440) = v21;
    *v70 = 134218498;
    if (!__OFADD__(v64, 1))
    {
      v71 = v21;
      v72 = *(v0 + 832);
      v73 = *(v0 + 648);
      *(v70 + 4) = v64 + 1;
      *(v70 + 12) = 2048;
      *(v70 + 14) = *(*(v72 + 16) + 16);

      *(v70 + 22) = 2080;
      v74 = PromptSuggestionFetcher.MCSuggestion.description.getter();
      v76 = v75;
      sub_22FA4F910(v73, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      v77 = sub_22FA2F600(v74, v76, (v0 + 440));

      *(v70 + 24) = v77;
      _os_log_impl(&dword_22FA28000, v68, v69, "Processing MomentSuggestion %ld of %ld. %s", v70, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x23190A000](v71, -1, -1);
      MEMORY[0x23190A000](v70, -1, -1);

LABEL_28:
      v147 = *(v0 + 872);
      v148 = *(v0 + 776);
      v79 = *(v0 + 656);
      v80 = *(v0 + 640);
      v81 = *(v0 + 624);
      v82 = *(v0 + 616);
      v143 = *(v0 + 480);
      v145 = *(v0 + 712);
      v83 = *(v0 + 464);
      v142 = [*(v0 + 472) childProgressReporterFromStart_toEnd_];
      *(v0 + 952) = v142;
      *(v0 + 960) = swift_allocError();
      sub_22FA4F8A8(v79, v80, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      sub_22FA2D328(v83, v0 + 56);
      v84 = (*(v82 + 80) + 40) & ~*(v82 + 80);
      v85 = (v81 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
      v140 = (v85 + 47) & 0xFFFFFFFFFFFFFFF8;
      v86 = (v140 + 15) & 0xFFFFFFFFFFFFFFF8;
      v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
      v88 = swift_allocObject();
      *(v0 + 968) = v88;
      v88[2] = v152;
      v88[3] = v150;
      v88[4] = v143;
      sub_22FA4F9D4(v80, v88 + v84, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      sub_22FA2CF78((v0 + 56), v88 + v85);
      *(v88 + v140) = v142;
      *(v88 + v86) = v147;
      *(v88 + v87) = v145;
      *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v148;
      v89 = v143;

      v90 = v142;

      v91 = sub_22FCC8664();
      v92 = sub_22FCC8F34();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 134349056;
        *(v93 + 4) = 0x405E000000000000;
        _os_log_impl(&dword_22FA28000, v91, v92, "Executing task with timeout %{public}fs", v93, 0xCu);
        MEMORY[0x23190A000](v93, -1, -1);
      }

      v94 = *(v0 + 608);
      v95 = *(v0 + 600);

      type metadata accessor for PromptSuggestionExecutionUtils.InternalTimeout();
      v96 = swift_allocObject();
      *(v0 + 976) = v96;
      swift_defaultActor_initialize();
      *(v96 + 112) = 0;
      v97 = sub_22FCC8D14();
      v98 = *(v97 - 8);
      v146 = *(v98 + 56);
      v146(v94, 1, 1, v97);
      v99 = swift_allocObject();
      v99[2] = 0;
      v99[3] = 0;
      v99[4] = &unk_22FCD1BB8;
      v99[5] = v88;
      sub_22FA4FAA4(v94, v95, &unk_27DAD8710, &unk_22FCD1B40);
      v100 = *(v98 + 48);
      LODWORD(v94) = v100(v95, 1, v97);

      v101 = *(v0 + 600);
      v151 = v96;
      if (v94 == 1)
      {
        sub_22FA2B420(v101, &unk_27DAD8710, &unk_22FCD1B40);
      }

      else
      {
        sub_22FCC8D04();
        (*(v98 + 8))(v101, v97);
      }

      v102 = v99[2];
      swift_unknownObjectRetain();

      if (v102)
      {
        swift_getObjectType();
        v103 = sub_22FCC8CC4();
        v105 = v104;
        swift_unknownObjectRelease();
      }

      else
      {
        v103 = 0;
        v105 = 0;
      }

      sub_22FA2B420(*(v0 + 608), &unk_27DAD8710, &unk_22FCD1B40);
      v153 = v97;
      v141 = v98;
      v149 = v100;
      if (v105 | v103)
      {
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = v103;
        *(v0 + 120) = v105;
      }

      v106 = *(v0 + 736);
      v107 = *(v0 + 592);
      v144 = *(v0 + 584);
      v108 = *(v0 + 576);
      v109 = *(v0 + 568);
      v110 = *(v0 + 560);
      v111 = *(v0 + 552);
      v112 = *(v0 + 480);
      v113 = swift_task_create();
      *(v0 + 984) = v113;
      v146(v107, 1, 1, v153);
      (*(v110 + 16))(v108, v112 + v106, v111);
      v114 = (*(v110 + 80) + 48) & ~*(v110 + 80);
      v115 = swift_allocObject();
      *(v115 + 2) = 0;
      *(v115 + 3) = 0;
      *(v115 + 4) = 0x405E000000000000;
      *(v115 + 5) = v151;
      (*(v110 + 32))(&v115[v114], v108, v111);
      *&v115[(v109 + v114 + 7) & 0xFFFFFFFFFFFFFFF8] = v113;
      sub_22FA4FAA4(v107, v144, &unk_27DAD8710, &unk_22FCD1B40);
      LODWORD(v108) = v149(v144, 1, v153);

      v116 = *(v0 + 584);
      if (v108 == 1)
      {
        sub_22FA2B420(*(v0 + 584), &unk_27DAD8710, &unk_22FCD1B40);
      }

      else
      {
        sub_22FCC8D04();
        (*(v141 + 8))(v116, v153);
      }

      v117 = *(v115 + 2);
      swift_unknownObjectRetain();

      if (v117)
      {
        swift_getObjectType();
        v118 = sub_22FCC8CC4();
        v120 = v119;
        swift_unknownObjectRelease();
      }

      else
      {
        v118 = 0;
        v120 = 0;
      }

      v121 = MEMORY[0x277D84F78];
      sub_22FA2B420(*(v0 + 592), &unk_27DAD8710, &unk_22FCD1B40);
      if (v120 | v118)
      {
        *(v0 + 128) = 0;
        *(v0 + 136) = 0;
        *(v0 + 144) = v118;
        *(v0 + 152) = v120;
      }

      v122 = *(v0 + 480) + *(v0 + 736);
      v123 = swift_task_create();
      *(v0 + 992) = v123;
      v124 = swift_task_alloc();
      *(v0 + 1000) = v124;
      v124[2] = v113;
      v124[3] = v123;
      v124[4] = v122;
      v125 = swift_task_alloc();
      *(v0 + 1008) = v125;
      *(v125 + 16) = v113;
      *(v125 + 24) = v123;
      v21 = swift_task_alloc();
      *(v0 + 1016) = v21;
      *v21 = v0;
      v21[1] = sub_22FA40AEC;
      v22 = &unk_22FCD1BD0;
      v24 = sub_22FA4F83C;
      v28 = v121 + 8;
      v23 = v124;
      v25 = v125;
      v26 = 0;
      v27 = 0;

      return MEMORY[0x282200830](v21, v22, v23, v24, v25, v26, v27, v28);
    }

LABEL_57:
    __break(1u);
    return MEMORY[0x282200830](v21, v22, v23, v24, v25, v26, v27, v28);
  }

LABEL_51:
  sub_22FCC8FF4();
  v127 = *(v0 + 712);
  v128 = *(v0 + 872);
  v129 = *(v0 + 832);
  v130 = *(v0 + 776);
  v154 = *(v0 + 736);
  v132 = *(v0 + 472);
  v131 = *(v0 + 480);
  v133 = *(v0 + 464);
  v134 = swift_allocError();
  *(v0 + 1040) = v134;
  sub_22FA2D328(v133, v0 + 16);
  v135 = swift_allocObject();
  *(v0 + 1048) = v135;
  v135[2] = v131;
  v135[3] = v128;
  v135[4] = v129;
  sub_22FA2CF78((v0 + 16), (v135 + 5));
  v135[10] = v132;
  v135[11] = v130;
  v135[12] = v127;
  v136 = v131;
  v137 = v132;

  v138 = swift_task_alloc();
  *(v0 + 1056) = v138;
  *v138 = v0;
  v138[1] = sub_22FA44088;

  return sub_22FB6C804(sub_22FB6C804, v134, v136 + v154, &unk_22FCD1B90, v135, 120.0);
}

uint64_t sub_22FA42D84(uint64_t a1)
{
  v161 = v1;
  if (*(v1 + 1104))
  {
    v2 = *(v1 + 960);
    v3 = *(v1 + 544);
    v4 = *(v1 + 536);
    v5 = *(v1 + 528);
    swift_willThrow();

    (*(v4 + 8))(v3, v5);
    v6 = v2;
    v7 = *(v1 + 960);
    v8 = v7;
  }

  else
  {
    v9 = *(v1 + 544);
    v10 = *(v1 + 536);
    v11 = *(v1 + 528);
    sub_22FA4EA44(&qword_28147AFC0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v8 = swift_allocError();
    sub_22FCC89B4();
    swift_willThrow();

    (*(v10 + 8))(v9, v11);
    v7 = *(v1 + 960);
  }

  v12 = *(v1 + 952);

  *(v1 + 432) = v8;
  v13 = v8;
  if (swift_dynamicCast())
  {
    v14 = *(v1 + 656);
    v15 = *(v1 + 632);

    sub_22FA4F8A8(v14, v15, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
    v16 = sub_22FCC8664();
    v17 = sub_22FCC8F34();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = (v1 + 920);
      v19 = *(v1 + 920);
      v20 = *(v1 + 632);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v160 = v22;
      *v21 = 134218242;
      *(v21 + 4) = v19;
      *(v21 + 12) = 2080;
      v23 = PromptSuggestionFetcher.MCSuggestion.description.getter();
      v25 = v24;
      sub_22FA4F910(v20, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      v26 = sub_22FA2F600(v23, v25, &v160);

      *(v21 + 14) = v26;
      _os_log_impl(&dword_22FA28000, v16, v17, "Prompt suggestions validation timed out. We have timed out %ld times before. %s", v21, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x23190A000](v22, -1, -1);
      MEMORY[0x23190A000](v21, -1, -1);
    }

    else
    {
      v48 = *(v1 + 632);

      v27 = sub_22FA4F910(v48, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      v18 = (v1 + 912);
    }

    v49 = *v18 + 1;
    if (__OFADD__(*v18, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v49 >= 4)
    {
      v50 = *(v1 + 480);

      v51 = v50;
      v52 = sub_22FCC8664();
      v53 = sub_22FCC8F34();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = *(v1 + 480);
        v55 = swift_slowAlloc();
        *v55 = 134217984;
        *(v55 + 4) = 3;

        _os_log_impl(&dword_22FA28000, v52, v53, "Exceeded maximum timeout count of %ld, stopping validation", v55, 0xCu);
        MEMORY[0x23190A000](v55, -1, -1);
      }

      else
      {

        v52 = *(v1 + 480);
      }

      v131 = *(v1 + 656);

      sub_22FA4F910(v131, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);

      goto LABEL_50;
    }

    sub_22FA4F910(*(v1 + 656), type metadata accessor for PromptSuggestionFetcher.MCSuggestion);

    v46 = *(v1 + 928);
    v47 = vdupq_n_s64(v49);
  }

  else
  {

    v35 = v8;
    v36 = sub_22FCC8664();
    v37 = sub_22FCC8F14();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v8;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_22FA28000, v36, v37, "Error validating moment prompt suggestions: %@", v38, 0xCu);
      sub_22FA2B420(v39, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v39, -1, -1);
      MEMORY[0x23190A000](v38, -1, -1);
    }

    v42 = *(v1 + 792);
    v43 = *(v1 + 656);

    v44 = sub_22FCC6504();
    v45 = [v44 code];

    sub_22FA4F910(v43, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
    *(v42 + 16) = v45;

    v46 = *(v1 + 928);
    v47 = *(v1 + 912);
    *(v1 + 904) = *(v1 + 904) + 0.5 / *(v1 + 896);
  }

  *(v1 + 912) = v47;
  if (v46 == *(v1 + 888))
  {
    v56 = 1;
    goto LABEL_21;
  }

  if ((v46 & 0x8000000000000000) != 0)
  {
    goto LABEL_54;
  }

  v57 = *(v1 + 880);
  if (v46 >= *(v57 + 16))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v58 = *(v1 + 688);
  v59 = *(v1 + 680);
  v60 = v46 + 1;
  v61 = v57 + ((*(*(v1 + 616) + 80) + 32) & ~*(*(v1 + 616) + 80)) + *(*(v1 + 616) + 72) * v46;
  v62 = *(*(v1 + 664) + 48);
  *v59 = v46;
  sub_22FA4F8A8(v61, v59 + v62, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
  sub_22FA4F224(v59, v58, &qword_27DAD7298, &qword_22FCD47F0);
  v56 = 0;
  v46 = v60;
LABEL_21:
  *(v1 + 928) = v46;
  v63 = *(v1 + 696);
  v64 = *(v1 + 688);
  v65 = *(v1 + 672);
  v66 = *(v1 + 664);
  (*(v65 + 56))(v64, v56, 1, v66);
  sub_22FA4F224(v64, v63, &qword_27DAD72A0, &qword_22FCD1B50);
  if ((*(v65 + 48))(v63, 1, v66) != 1)
  {
    v67 = *(v1 + 696);
    v68 = *(v1 + 656);
    v69 = *(v1 + 648);
    v70 = *v67;
    sub_22FA4F9D4(v67 + *(*(v1 + 664) + 48), v68, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
    v71 = swift_allocObject();
    *(v1 + 936) = v71;
    v72 = MEMORY[0x277D84F90];
    v157 = v71;
    *(v71 + 16) = MEMORY[0x277D84F90];
    v73 = swift_allocObject();
    *(v1 + 944) = v73;
    v155 = v73;
    *(v73 + 16) = v72;
    sub_22FA4F8A8(v68, v69, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);

    v74 = sub_22FCC8664();
    v75 = sub_22FCC8F34();
    if (!os_log_type_enabled(v74, v75))
    {
      v84 = *(v1 + 648);

      sub_22FA4F910(v84, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      goto LABEL_27;
    }

    v76 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *(v1 + 440) = v27;
    *v76 = 134218498;
    if (!__OFADD__(v70, 1))
    {
      v77 = v27;
      v78 = *(v1 + 832);
      v79 = *(v1 + 648);
      *(v76 + 4) = v70 + 1;
      *(v76 + 12) = 2048;
      *(v76 + 14) = *(*(v78 + 16) + 16);

      *(v76 + 22) = 2080;
      v80 = PromptSuggestionFetcher.MCSuggestion.description.getter();
      v82 = v81;
      sub_22FA4F910(v79, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      v83 = sub_22FA2F600(v80, v82, (v1 + 440));

      *(v76 + 24) = v83;
      _os_log_impl(&dword_22FA28000, v74, v75, "Processing MomentSuggestion %ld of %ld. %s", v76, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x23190A000](v77, -1, -1);
      MEMORY[0x23190A000](v76, -1, -1);

LABEL_27:
      v152 = *(v1 + 872);
      v153 = *(v1 + 776);
      v85 = *(v1 + 656);
      v86 = *(v1 + 640);
      v87 = *(v1 + 624);
      v88 = *(v1 + 616);
      v148 = *(v1 + 480);
      v150 = *(v1 + 712);
      v89 = *(v1 + 464);
      v147 = [*(v1 + 472) childProgressReporterFromStart_toEnd_];
      *(v1 + 952) = v147;
      *(v1 + 960) = swift_allocError();
      sub_22FA4F8A8(v85, v86, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      sub_22FA2D328(v89, v1 + 56);
      v90 = (*(v88 + 80) + 40) & ~*(v88 + 80);
      v91 = (v87 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
      v145 = (v91 + 47) & 0xFFFFFFFFFFFFFFF8;
      v92 = (v145 + 15) & 0xFFFFFFFFFFFFFFF8;
      v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
      v94 = swift_allocObject();
      *(v1 + 968) = v94;
      v94[2] = v157;
      v94[3] = v155;
      v94[4] = v148;
      sub_22FA4F9D4(v86, v94 + v90, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      sub_22FA2CF78((v1 + 56), v94 + v91);
      *(v94 + v145) = v147;
      *(v94 + v92) = v152;
      *(v94 + v93) = v150;
      *(v94 + ((v93 + 15) & 0xFFFFFFFFFFFFFFF8)) = v153;
      v95 = v148;

      v96 = v147;

      v97 = sub_22FCC8664();
      v98 = sub_22FCC8F34();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 134349056;
        *(v99 + 4) = 0x405E000000000000;
        _os_log_impl(&dword_22FA28000, v97, v98, "Executing task with timeout %{public}fs", v99, 0xCu);
        MEMORY[0x23190A000](v99, -1, -1);
      }

      v100 = *(v1 + 608);
      v101 = *(v1 + 600);

      type metadata accessor for PromptSuggestionExecutionUtils.InternalTimeout();
      v102 = swift_allocObject();
      *(v1 + 976) = v102;
      swift_defaultActor_initialize();
      *(v102 + 112) = 0;
      v103 = sub_22FCC8D14();
      v104 = *(v103 - 8);
      v151 = *(v104 + 56);
      v151(v100, 1, 1, v103);
      v105 = swift_allocObject();
      v105[2] = 0;
      v105[3] = 0;
      v105[4] = &unk_22FCD1BB8;
      v105[5] = v94;
      sub_22FA4FAA4(v100, v101, &unk_27DAD8710, &unk_22FCD1B40);
      v154 = *(v104 + 48);
      LODWORD(v100) = v154(v101, 1, v103);

      v106 = *(v1 + 600);
      if (v100 == 1)
      {
        sub_22FA2B420(*(v1 + 600), &unk_27DAD8710, &unk_22FCD1B40);
      }

      else
      {
        sub_22FCC8D04();
        (*(v104 + 8))(v106, v103);
      }

      v107 = v105[2];
      swift_unknownObjectRetain();

      if (v107)
      {
        swift_getObjectType();
        v108 = sub_22FCC8CC4();
        v110 = v109;
        swift_unknownObjectRelease();
      }

      else
      {
        v108 = 0;
        v110 = 0;
      }

      sub_22FA2B420(*(v1 + 608), &unk_27DAD8710, &unk_22FCD1B40);
      v156 = v102;
      v158 = v103;
      v146 = v104;
      if (v110 | v108)
      {
        *(v1 + 96) = 0;
        *(v1 + 104) = 0;
        *(v1 + 112) = v108;
        *(v1 + 120) = v110;
      }

      v111 = *(v1 + 736);
      v112 = *(v1 + 592);
      v149 = *(v1 + 584);
      v113 = *(v1 + 576);
      v114 = *(v1 + 568);
      v115 = *(v1 + 560);
      v116 = *(v1 + 552);
      v117 = *(v1 + 480);
      v118 = swift_task_create();
      *(v1 + 984) = v118;
      v151(v112, 1, 1, v158);
      (*(v115 + 16))(v113, v117 + v111, v116);
      v119 = (*(v115 + 80) + 48) & ~*(v115 + 80);
      v120 = swift_allocObject();
      *(v120 + 2) = 0;
      *(v120 + 3) = 0;
      *(v120 + 4) = 0x405E000000000000;
      *(v120 + 5) = v156;
      (*(v115 + 32))(&v120[v119], v113, v116);
      *&v120[(v114 + v119 + 7) & 0xFFFFFFFFFFFFFFF8] = v118;
      sub_22FA4FAA4(v112, v149, &unk_27DAD8710, &unk_22FCD1B40);
      LODWORD(v113) = v154(v149, 1, v158);

      v121 = *(v1 + 584);
      if (v113 == 1)
      {
        sub_22FA2B420(*(v1 + 584), &unk_27DAD8710, &unk_22FCD1B40);
      }

      else
      {
        sub_22FCC8D04();
        (*(v146 + 8))(v121, v158);
      }

      v122 = *(v120 + 2);
      swift_unknownObjectRetain();

      if (v122)
      {
        swift_getObjectType();
        v123 = sub_22FCC8CC4();
        v125 = v124;
        swift_unknownObjectRelease();
      }

      else
      {
        v123 = 0;
        v125 = 0;
      }

      v126 = MEMORY[0x277D84F78];
      sub_22FA2B420(*(v1 + 592), &unk_27DAD8710, &unk_22FCD1B40);
      if (v125 | v123)
      {
        *(v1 + 128) = 0;
        *(v1 + 136) = 0;
        *(v1 + 144) = v123;
        *(v1 + 152) = v125;
      }

      v127 = *(v1 + 480) + *(v1 + 736);
      v128 = swift_task_create();
      *(v1 + 992) = v128;
      v129 = swift_task_alloc();
      *(v1 + 1000) = v129;
      v129[2] = v118;
      v129[3] = v128;
      v129[4] = v127;
      v130 = swift_task_alloc();
      *(v1 + 1008) = v130;
      *(v130 + 16) = v118;
      *(v130 + 24) = v128;
      v27 = swift_task_alloc();
      *(v1 + 1016) = v27;
      *v27 = v1;
      v27[1] = sub_22FA40AEC;
      v28 = &unk_22FCD1BD0;
      v30 = sub_22FA4F83C;
      v34 = v126 + 8;
      v29 = v129;
      v31 = v130;
      v32 = 0;
      v33 = 0;

      return MEMORY[0x282200830](v27, v28, v29, v30, v31, v32, v33, v34);
    }

LABEL_56:
    __break(1u);
    return MEMORY[0x282200830](v27, v28, v29, v30, v31, v32, v33, v34);
  }

LABEL_50:
  sub_22FCC8FF4();
  v132 = *(v1 + 712);
  v133 = *(v1 + 872);
  v134 = *(v1 + 832);
  v135 = *(v1 + 776);
  v159 = *(v1 + 736);
  v137 = *(v1 + 472);
  v136 = *(v1 + 480);
  v138 = *(v1 + 464);
  v139 = swift_allocError();
  *(v1 + 1040) = v139;
  sub_22FA2D328(v138, v1 + 16);
  v140 = swift_allocObject();
  *(v1 + 1048) = v140;
  v140[2] = v136;
  v140[3] = v133;
  v140[4] = v134;
  sub_22FA2CF78((v1 + 16), (v140 + 5));
  v140[10] = v137;
  v140[11] = v135;
  v140[12] = v132;
  v141 = v136;
  v142 = v137;

  v143 = swift_task_alloc();
  *(v1 + 1056) = v143;
  *v143 = v1;
  v143[1] = sub_22FA44088;

  return sub_22FB6C804(sub_22FB6C804, v139, v141 + v159, &unk_22FCD1B90, v140, 120.0);
}

uint64_t sub_22FA44088()
{
  v2 = *v1;
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v3 = sub_22FA456CC;
  }

  else
  {
    v4 = *(v2 + 1040);

    v3 = sub_22FA441B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FA441B0()
{
  v1 = v0[133];
  sub_22FCC8FF4();
  if (v1)
  {

    sub_22FCC76B4();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[99];
    v5 = v0[92];
    v6 = v0[60];
    v7 = v0[57];
    v8 = swift_allocError();
    v0[134] = v8;
    v9 = swift_allocObject();
    v0[135] = v9;
    *(v9 + 16) = v7;
    *(v9 + 24) = v4;

    v10 = swift_task_alloc();
    v0[136] = v10;
    *v10 = v0;
    v10[1] = sub_22FA44480;

    return sub_22FB6C804(sub_22FB6C804, v8, v6 + v5, &unk_22FCD1BA0, v9, 120.0);
  }
}

uint64_t sub_22FA44480()
{
  v2 = *v1;
  *(*v1 + 1096) = v0;

  if (v0)
  {
    v3 = sub_22FA45AB0;
  }

  else
  {
    v4 = *(v2 + 1072);

    v3 = sub_22FA445A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FA445A8(uint64_t a1)
{
  v2 = v1[137];
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F34();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22FA28000, v3, v4, "Persisted empty Moment suggestions in cache", v5, 2u);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  sub_22FCC8FF4();
  if (v2)
  {

    sub_22FCC76B4();

    v11 = v1[1];

    return v11();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72A8, &qword_22FCD4730);
    v6 = sub_22FCC74C4();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_22FCD1800;
    (*(v7 + 104))(v9 + v8, *MEMORY[0x277D3C130], v6);
    sub_22FCC7E54();
    sub_22FCC7E84();

    sub_22FCC8FF4();
    v10 = v1[109];
    v13 = v1[89];
    swift_beginAccess();
    v14 = *(v10 + 16);
    v15 = *(v14 + 16);
    swift_beginAccess();
    *(v13 + 24) = v15;

    if (v15)
    {
      v16 = 0;
      v17 = v1[62];
      v58 = (v17 + 32);
      v18 = MEMORY[0x277D84F90];
      v56 = v15;
      while (v16 < *(v14 + 16))
      {
        v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v20 = *(v17 + 72);
        (*(v17 + 16))(v1[65], v14 + v19 + v20 * v16, v1[61]);
        if (sub_22FCC7504())
        {
          v21 = *v58;
          (*v58)(v1[64], v1[65], v1[61]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22FA86EC8(0, *(v18 + 16) + 1, 1);
          }

          v23 = *(v18 + 16);
          v22 = *(v18 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_22FA86EC8((v22 > 1), v23 + 1, 1);
          }

          v24 = v1[64];
          v25 = v1[61];
          *(v18 + 16) = v23 + 1;
          result = v21(v18 + v19 + v23 * v20, v24, v25);
          v15 = v56;
        }

        else
        {
          result = (*(v17 + 8))(v1[65], v1[61]);
        }

        if (v15 == ++v16)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
LABEL_20:
      v26 = v1[109];
      v27 = v1[89];

      v28 = *(v18 + 16);

      *(v27 + 32) = v28;
      v29 = *(v26 + 16);
      v30 = *(v29 + 16);
      v31 = MEMORY[0x277D84F90];
      if (v30)
      {
        v32 = v1[62];
        v61 = MEMORY[0x277D84F90];

        sub_22FA86EA8(0, v30, 0);
        v31 = v61;
        v33 = *(v32 + 16);
        v32 += 16;
        v34 = v29 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
        v57 = *(v32 + 56);
        v59 = v33;
        v35 = (v32 - 8);
        do
        {
          v36 = v1[63];
          v37 = v1[61];
          v59(v36, v34, v37);
          v38 = sub_22FCC7354();
          v40 = v39;
          (*v35)(v36, v37);
          v42 = *(v61 + 16);
          v41 = *(v61 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_22FA86EA8((v41 > 1), v42 + 1, 1);
          }

          *(v61 + 16) = v42 + 1;
          v43 = v61 + 16 * v42;
          *(v43 + 32) = v38;
          *(v43 + 40) = v40;
          v34 += v57;
          --v30;
        }

        while (v30);
      }

      v44 = sub_22FAA99B0(v31);

      v45 = sub_22FCC8664();
      v46 = sub_22FCC8F34();
      v47 = os_log_type_enabled(v45, v46);
      v48 = v1[104];
      v49 = v1[89];
      if (v47)
      {
        v50 = swift_slowAlloc();
        *v50 = 134218752;
        *(v50 + 4) = *(*(v48 + 16) + 16);

        *(v50 + 12) = 2048;
        *(v50 + 14) = *(v49 + 24);
        *(v50 + 22) = 2048;
        *(v50 + 24) = *(v44 + 16);

        *(v50 + 32) = 2048;
        *(v50 + 34) = *(v49 + 32);

        _os_log_impl(&dword_22FA28000, v45, v46, "Validated %ld Moment suggestion with %ld prompts. %ld are unique, %ld are valid", v50, 0x2Au);
        MEMORY[0x23190A000](v50, -1, -1);
      }

      else
      {
      }

      sub_22FCC8FF4();
      v51 = v1[99];
      v52 = v1[89];
      v53 = v1[56];

      v54 = *(v52 + 24);
      *v53 = *(v52 + 16);
      *(v53 + 8) = v54;
      v60 = *(v51 + 16);

      sub_22FCC76B4();

      v55 = v1[1];

      return v55(v60);
    }
  }

  return result;
}

uint64_t sub_22FA44E58()
{
  v1 = v0[95];
  v2 = v0[91];

  v3 = v1;
  v4 = sub_22FCC8664();
  v5 = sub_22FCC8F14();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[95];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22FA28000, v4, v5, "PromptSuggestionFetcher prewarm failed: %@", v8, 0xCu);
    sub_22FA2B420(v9, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[89];
  v13 = v0[56];
  v14 = v12[2];
  v15 = v12[3];
  v16 = v12[4];

  *v13 = v14;
  v13[1] = v15;
  v13[2] = v16;
  sub_22FCC76B4();

  v17 = v0[1];

  return v17(0);
}

uint64_t sub_22FA450EC()
{
  v1 = *(v0 + 824);

  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 824);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22FA28000, v3, v4, "Fetching moment suggestions error: %@", v7, 0xCu);
    sub_22FA2B420(v8, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 792);
  v12 = *(v0 + 712);
  v13 = *(v0 + 448);
  swift_beginAccess();
  v14 = *(v12 + 24);
  *v13 = *(v12 + 16);
  *(v13 + 8) = v14;
  swift_beginAccess();
  v17 = *(v11 + 16);

  sub_22FCC76B4();

  v15 = *(v0 + 8);

  return v15(v17);
}

uint64_t sub_22FA453D0()
{
  v1 = v0[108];
  v2 = v0[105];

  v3 = v1;
  v4 = sub_22FCC8664();
  v5 = sub_22FCC8F14();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[108];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22FA28000, v4, v5, "Fetching ph suggestions error: %@", v8, 0xCu);
    sub_22FA2B420(v9, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[99];
  v13 = v0[89];
  v14 = v0[56];
  swift_beginAccess();
  v15 = *(v13 + 24);
  *v14 = *(v13 + 16);
  *(v14 + 8) = v15;
  swift_beginAccess();
  v18 = *(v12 + 16);

  sub_22FCC76B4();

  v16 = v0[1];

  return v16(v18);
}

uint64_t sub_22FA456CC()
{
  v1 = v0[133];
  v2 = v0[130];

  v3 = v1;
  v4 = sub_22FCC8664();
  v5 = sub_22FCC8F14();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[133];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22FA28000, v4, v5, "Error persisting validated prompt suggestions: %@", v8, 0xCu);
    sub_22FA2B420(v9, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  else
  {
  }

  sub_22FCC8FF4();
  v12 = v0[99];
  v13 = v0[92];
  v14 = v0[60];
  v15 = v0[57];
  v16 = swift_allocError();
  v0[134] = v16;
  v17 = swift_allocObject();
  v0[135] = v17;
  *(v17 + 16) = v15;
  *(v17 + 24) = v12;

  v18 = swift_task_alloc();
  v0[136] = v18;
  *v18 = v0;
  v18[1] = sub_22FA44480;

  return sub_22FB6C804(sub_22FB6C804, v16, v14 + v13, &unk_22FCD1BA0, v17, 120.0);
}