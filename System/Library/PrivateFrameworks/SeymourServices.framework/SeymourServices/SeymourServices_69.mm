uint64_t sub_2275CCEB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275CCED4, 0, 0);
}

uint64_t sub_2275CCED4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_226FAA538;

    return sub_227310E6C();
  }

  else
  {
    **(v0 + 80) = 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2275CCFE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275CD008, 0, 0);
}

uint64_t sub_2275CD008()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F623A8;
    v3 = v0[10];

    return sub_227315698(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2275CD140(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CB380(a1, a2, v2);
}

uint64_t sub_2275CD1EC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CB4C4(a1, v1);
}

uint64_t sub_2275CD288(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CB5F8(a1, a2, v2);
}

unint64_t sub_2275CD334()
{
  result = qword_281398DF0;
  if (!qword_281398DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF630, &qword_22768C9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398DF0);
  }

  return result;
}

uint64_t sub_2275CD3B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_2275CD434(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CB73C(a1, a2, v2);
}

unint64_t sub_2275CD4E0()
{
  result = qword_281398D70;
  if (!qword_281398D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF638, &qword_22768C9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D70);
  }

  return result;
}

unint64_t sub_2275CD564()
{
  result = qword_28139B728;
  if (!qword_28139B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B728);
  }

  return result;
}

uint64_t sub_2275CD5B8(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CB880(a1, a2, v2);
}

uint64_t sub_2275CD664(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CBAF4(a1, a2, v2);
}

uint64_t sub_2275CD710(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CBC34(a1, a2, v2);
}

uint64_t sub_2275CD7BC(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CBF18(a1, a2, v2);
}

uint64_t sub_2275CD868(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CC064(a1, v1);
}

uint64_t sub_2275CD900(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CC19C(a1, v1);
}

uint64_t sub_2275CD998(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CC2D4(a1, v1);
}

uint64_t sub_2275CDA30(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CC408(a1, v1);
}

unint64_t sub_2275CDACC()
{
  result = qword_281398C20;
  if (!qword_281398C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCB30, &unk_227686AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C20);
  }

  return result;
}

unint64_t sub_2275CDB50()
{
  result = qword_281398C18;
  if (!qword_281398C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCB30, &unk_227686AE0);
    sub_2275CDC04(&qword_28139B268, MEMORY[0x277D53C88], MEMORY[0x277D53C80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C18);
  }

  return result;
}

uint64_t sub_2275CDC04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2275CDC4C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CC53C(a1, a2, v2);
}

uint64_t sub_2275CDCF8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CC67C(a1, a2, v2);
}

uint64_t sub_2275CDDA4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CC7C4(a1, v1);
}

uint64_t sub_2275CDE40(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E92F34;

  return sub_2275CC900(a1, a2, v2);
}

uint64_t sub_2275CDEEC(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CCC3C(a1, a2, v2);
}

uint64_t sub_2275CDF98(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CCD80(a1, v1);
}

uint64_t sub_2275CE030(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CCEB4(a1, v1);
}

uint64_t sub_2275CE0CC(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CCC3C(a1, a2, v2);
}

uint64_t sub_2275CE178(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CC064(a1, v1);
}

uint64_t sub_2275CE210(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CC19C(a1, v1);
}

uint64_t sub_2275CE2A8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CC2D4(a1, v1);
}

uint64_t sub_2275CE340(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CCFE8(a1, v1);
}

void sub_2275CE3DC(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      (a1)(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

void sub_2275CE49C(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      a1(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

void sub_2275CE560(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v18 = a1;
  v20 = a4(0);
  v6 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v8 = &v17 - v7;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v17 = v6 + 16;
  v19 = (v6 + 8);
  v21 = a3;

  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v15 = v14;
      v16 = v20;
LABEL_9:
      (*(v6 + 16))(v8, *(v21 + 48) + *(v6 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v16);
      v18(v8);
      if (v4)
      {
        break;
      }

      v12 &= v12 - 1;
      (*v19)(v8, v16);
      v14 = v15;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    (*v19)(v8, v16);
LABEL_13:
  }

  else
  {
LABEL_5:
    v16 = v20;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {
        goto LABEL_13;
      }

      v12 = *(v9 + 8 * v15);
      ++v14;
      if (v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t ScoreServer.__allocating_init(endpoint:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_2275D1224(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

uint64_t ScoreServer.init(endpoint:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_2275D10BC(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t ScoreServer.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC15SeymourServices11ScoreServer__dumpScoresToFile;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ScoreServer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC15SeymourServices11ScoreServer__dumpScoresToFile;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t ScoreServer.executeScoresTasks()()
{
  v1[2] = v0;
  v2 = sub_22766B390();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_22766B0C0();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275CEAE8, 0, 0);
}

uint64_t sub_2275CEAE8()
{
  v1 = v0[2];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_2275CEC18;
  v5 = v0[9];

  return v7(v5, v2, v3);
}

uint64_t sub_2275CEC18()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2275CEEF0;
  }

  else
  {
    v2 = sub_2275CED2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275CED2C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  sub_22766A6E0();
  (*(v4 + 16))(v1, v2, v3);
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];
  if (v7)
  {
    v11 = swift_slowAlloc();
    *v11 = 67240192;
    v12 = sub_22766B0B0();
    v13 = *(v9 + 8);
    v13(v8, v10);
    *(v11 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v5, v6, "Executed %{public}d tasks", v11, 8u);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  else
  {
    v13 = *(v9 + 8);
    v13(v0[8], v0[6]);
  }

  v14 = v0[9];
  v16 = v0[5];
  v15 = v0[6];
  v17 = v0[3];
  v18 = v0[4];

  (*(v18 + 8))(v16, v17);
  v13(v14, v15);

  v19 = v0[1];

  return v19();
}

uint64_t sub_2275CEEF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ScoreServer.fetchScores(request:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  sub_227666B70();
  v3[10] = swift_task_alloc();
  v4 = sub_2276677E0();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = sub_22766B010();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275CF0B4, 0, 0);
}

uint64_t sub_2275CF0B4()
{
  sub_226E91B50(v0[9] + 16, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  sub_227665500();
  v7 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_2275CF278;
  v4 = v0[16];
  v5 = v0[13];

  return v7(v4, v5, v1, v2);
}

uint64_t sub_2275CF278()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  if (v0)
  {
    v3 = sub_2275CF4F8;
  }

  else
  {
    v3 = sub_2275CF3E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275CF3E0()
{
  v1 = v0[18];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_22766B000();
  sub_227664670();
  v2 = v0[15];
  if (v1)
  {
    (*(v2 + 8))(v0[16], v0[14]);
  }

  else
  {
    (*(v2 + 8))();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_2275CF4F8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ScoreServer.submitScores(scores:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_22766B100();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = sub_22766B030();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v5 = sub_2276624A0();
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v6 = sub_22766B390();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v2[33] = v7;
  v2[34] = *(v7 - 8);
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275CF84C, 0, 0);
}

uint64_t sub_2275CF84C()
{
  v68 = v0;
  v67[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 88);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 272);
    v2 = *(v0 + 280);
    v4 = *(v0 + 264);
    (*(v3 + 16))(v2, *(v0 + 96) + OBJC_IVAR____TtC15SeymourServices11ScoreServer__dumpScoresToFile, v4);
    sub_227669730();
    (*(v3 + 8))(v2, v4);
    if (*(v0 + 320) == 1)
    {
      sub_22766A6E0();
      v5 = sub_22766B380();
      v6 = sub_22766C8B0();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_226E8E000, v5, v6, "Writing scores to file due to user default.", v7, 2u);
        MEMORY[0x22AA9A450](v7, -1, -1);
      }

      v8 = *(v0 + 256);
      v9 = *(v0 + 200);
      v10 = *(v0 + 208);
      v11 = *(v0 + 184);
      v12 = *(v0 + 168);
      v13 = *(v0 + 176);

      v66 = *(v10 + 8);
      v66(v8, v9);
      sub_227662330();
      sub_2276623F0();
      v14 = *(v13 + 8);
      v14(v11, v12);
      v15 = [objc_opt_self() defaultManager];
      v16 = sub_2276623E0();
      *(v0 + 72) = 0;
      v17 = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:v0 + 72];

      v18 = *(v0 + 72);
      if (v17)
      {
        v19 = v18;
      }

      else
      {
        v28 = v18;
        v29 = sub_2276622C0();

        swift_willThrow();
        sub_22766A6E0();
        v30 = v29;
        v31 = sub_22766B380();
        v32 = sub_22766C890();

        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 224);
        v35 = *(v0 + 200);
        if (v33)
        {
          v36 = swift_slowAlloc();
          v64 = v35;
          v63 = swift_slowAlloc();
          v67[0] = v63;
          *v36 = 136315138;
          swift_getErrorValue();
          v37 = MEMORY[0x22AA995D0](*(v0 + 48), *(v0 + 56));
          v39 = v32;
          v40 = v14;
          v41 = sub_226E97AE8(v37, v38, v67);

          *(v36 + 4) = v41;
          v14 = v40;
          _os_log_impl(&dword_226E8E000, v31, v39, "Couldn't create scores directory with error: %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v63);
          MEMORY[0x22AA9A450](v63, -1, -1);
          MEMORY[0x22AA9A450](v36, -1, -1);

          v42 = v64;
          v43 = v34;
        }

        else
        {

          v43 = v34;
          v42 = v35;
        }

        v66(v43, v42);
      }

      v44 = *(v0 + 192);
      v45 = *(v0 + 168);
      v46 = *(v0 + 88);
      v47 = swift_task_alloc();
      *(v47 + 16) = v44;
      sub_2275CE560(sub_2275D1330, v47, v46, MEMORY[0x277D50678]);

      v14(v44, v45);
    }

    sub_22766A6E0();

    v48 = sub_22766B380();
    v49 = sub_22766C8B0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134349056;
      *(v50 + 4) = *(v1 + 16);

      _os_log_impl(&dword_226E8E000, v48, v49, "Submitting %{public}ld scores to the server.", v50, 0xCu);
      MEMORY[0x22AA9A450](v50, -1, -1);
    }

    else
    {
    }

    v51 = *(v0 + 248);
    v52 = *(v0 + 200);
    v53 = *(v0 + 208);
    v54 = *(v0 + 88);
    v55 = *(v53 + 8);
    *(v0 + 288) = v55;
    *(v0 + 296) = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v55(v51, v52);
    *(swift_task_alloc() + 16) = v54;
    sub_2275D17DC(&qword_27D7BCA48, MEMORY[0x277D54520], MEMORY[0x277D54510]);
    sub_22766AD80();
    v57 = *(v0 + 96);

    v58 = v57[5];
    v59 = v57[6];
    __swift_project_boxed_opaque_existential_0(v57 + 2, v58);
    v65 = (*(v59 + 48) + **(v59 + 48));
    v60 = swift_task_alloc();
    *(v0 + 304) = v60;
    *v60 = v0;
    v60[1] = sub_2275D010C;
    v61 = *(v0 + 160);
    v62 = *(v0 + 136);

    return v65(v62, v61, v58, v59);
  }

  else
  {
    sub_22766A6E0();
    v20 = sub_22766B380();
    v21 = sub_22766C8B0();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 232);
    v24 = *(v0 + 200);
    v25 = *(v0 + 208);
    if (v22)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_226E8E000, v20, v21, "No scores to submit.", v26, 2u);
      MEMORY[0x22AA9A450](v26, -1, -1);
    }

    (*(v25 + 8))(v23, v24);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_2275D010C()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_2275D0620;
  }

  else
  {
    v2 = sub_2275D024C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275D024C(uint64_t a1)
{
  v42 = v1;
  v41[1] = *MEMORY[0x277D85DE8];
  v3 = v1[16];
  v2 = v1[17];
  v5 = v1[14];
  v4 = v1[15];
  v6 = v1[13];
  sub_22766A6E0();
  v7 = *(v5 + 16);
  v7(v3, v2, v6);
  v7(v4, v2, v6);
  v8 = sub_22766B380();
  v36 = sub_22766C8B0();
  v9 = os_log_type_enabled(v8, v36);
  v39 = v1[30];
  v40 = v1[36];
  v11 = v1[19];
  v10 = v1[20];
  v12 = v1[18];
  v37 = v1[17];
  v38 = v1[25];
  v14 = v1[15];
  v13 = v1[16];
  v16 = v1[13];
  v15 = v1[14];
  if (v9)
  {
    log = v8;
    v17 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v41[0] = v33;
    *v17 = 136315394;
    sub_22766B0E0();
    v35 = v12;
    v34 = v10;
    v18 = MEMORY[0x22AA98660]();
    v20 = v19;

    v21 = *(v15 + 8);
    v21(v13, v16);
    v22 = sub_226E97AE8(v18, v20, v41);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = sub_22766B0F0();
    v24 = sub_22766B0D0();
    v25 = MEMORY[0x22AA98660](v23, v24);
    v27 = v26;

    v21(v14, v16);
    v28 = sub_226E97AE8(v25, v27, v41);

    *(v17 + 14) = v28;
    _os_log_impl(&dword_226E8E000, log, v36, "Server successfully processed scores. Accepted: %s, Rejected: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v33, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);

    v40(v39, v38);
    v21(v37, v16);
    (*(v11 + 8))(v34, v35);
  }

  else
  {

    v29 = *(v15 + 8);
    v29(v14, v16);
    v29(v13, v16);
    v40(v39, v38);
    v29(v37, v16);
    (*(v11 + 8))(v10, v12);
  }

  v30 = v1[1];

  return v30();
}

uint64_t sub_2275D0620(uint64_t a1)
{
  v23 = v1;
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = v1[39];
  sub_22766A6E0();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[36];
    v7 = v1[27];
    v8 = v1[25];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22[0] = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](v1[3], v1[4]);
    v13 = sub_226E97AE8(v11, v12, v22);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to submit scores to the server with error: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v6(v7, v8);
  }

  else
  {
    v14 = v1[36];
    v15 = v1[27];
    v16 = v1[25];

    v14(v15, v16);
  }

  v18 = v1[19];
  v17 = v1[20];
  v19 = v1[18];
  swift_willThrow();
  (*(v18 + 8))(v17, v19);

  v20 = v1[1];

  return v20();
}

double sub_2275D08BC(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = sub_2276640A0();
  v40 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22766B390();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766C050();
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2276624A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_227664070();
  v49 = v14;
  MEMORY[0x22AA98450](0x6E6F736A2ELL, 0xE500000000000000);
  sub_227662400();

  sub_2275D17DC(&qword_27D7BF640, MEMORY[0x277D50678], MEMORY[0x277D50670]);
  v44 = v3;
  v38 = a1;
  v15 = v45;
  v16 = sub_2276683A0();
  if (v15)
  {
    (*(v11 + 8))(v13, v10);
    v45 = 0;
    v19 = v41;
    sub_22766A6E0();
    v21 = v39;
    v20 = v40;
    v22 = v44;
    (*(v40 + 16))(v39, v38, v44);
    v23 = v15;
    v24 = sub_22766B380();
    v25 = sub_22766C890();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v48 = v38;
      *v26 = 136315394;
      v27 = sub_227664070();
      v28 = v21;
      v30 = v29;
      (*(v20 + 8))(v28, v22);
      v31 = sub_226E97AE8(v27, v30, &v48);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      swift_getErrorValue();
      v32 = MEMORY[0x22AA995D0](v46, v47);
      v34 = sub_226E97AE8(v32, v33, &v48);

      *(v26 + 14) = v34;
      _os_log_impl(&dword_226E8E000, v24, v25, "Failed to write %s to file with error: %s", v26, 0x16u);
      v35 = v38;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v35, -1, -1);
      MEMORY[0x22AA9A450](v26, -1, -1);
    }

    else
    {

      (*(v20 + 8))(v21, v22);
    }

    (*(v42 + 8))(v19, v43);
  }

  else
  {
    v18 = v37;
    v48 = v16;
    v49 = v17;
    sub_22766C040();
    sub_226FB2548();
    sub_22766CBF0();
    (*(v18 + 8))(v9, v7);
    (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_2275D0E30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E90, &unk_22768CBE0);
  sub_2275D1824();
  sub_2275D17DC(&qword_27D7BF640, MEMORY[0x277D50678], MEMORY[0x277D50670]);
  result = sub_22766C1F0();
  if (!v0)
  {
    return sub_22766B020();
  }

  return result;
}

uint64_t sub_2275D0EE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  return ScoreServer.executeScoresTasks()();
}

uint64_t sub_2275D0F78(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E92F34;

  return ScoreServer.fetchScores(request:)(a1, a2);
}

uint64_t sub_2275D1024(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return ScoreServer.submitScores(scores:)(a1);
}

uint64_t sub_2275D10BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_227669A90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a3;
  v17 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  (*(v9 + 104))(v11, *MEMORY[0x277D4EE70], v8);
  v14[7] = 0;
  sub_227669760();
  sub_226E92AB8(&v15, a2 + 16);
  return a2;
}

uint64_t sub_2275D1224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScoreServer(0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  return sub_2275D10BC(v9, v10, a3, a4);
}

uint64_t dispatch thunk of ScoreServerProtocol.executeScoresTasks()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ScoreServerProtocol.fetchScores(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226E92F34;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ScoreServerProtocol.submitScores(scores:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226E93028;

  return v9(a1, a2, a3);
}

uint64_t type metadata accessor for ScoreServer(uint64_t a1)
{
  result = qword_2813A4E60;
  if (!qword_2813A4E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2275D1714(uint64_t a1)
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2275D17DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2275D1824()
{
  result = qword_27D7BF648;
  if (!qword_27D7BF648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8E90, &unk_22768CBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF648);
  }

  return result;
}

double sub_2275D18A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_2275D18F4(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();

  sub_2275D1EBC((a1 + 48), 0xD000000000000037, 0x8000000227693FD0, sub_2275D1EB4, v2);
  swift_endAccess();

  v3 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();

  sub_2275D1EBC((a1 + 52), 0xD000000000000031, 0x8000000227694010, sub_2275D21A8, v3);
  swift_endAccess();
}

uint64_t sub_2275D1A50(uint64_t a1)
{
  v1 = sub_22766A5C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v9 = sub_22766B380();
  v10 = sub_22766C8B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_226E8E000, v9, v10, "[ManagedProfileObserver] Effective settings changed", v11, 2u);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_22766A5B0();
    sub_2276699D0();
    swift_unknownObjectRelease();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_2275D1C9C(uint64_t a1)
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_226E8E000, v5, v6, "[ManagedProfileObserver] Profile list changed", v7, 2u);
    MEMORY[0x22AA9A450](v7, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_227089B7C();
    sub_2276699D0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2275D1E48()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_2275D1EBC(_DWORD *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == -1)
  {
    v15 = v12;
    HIDWORD(v25) = -1;
    sub_226EA1CF4();
    v16 = sub_22766C950();
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;
    aBlock[4] = sub_226F78B74;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2275D18A0;
    aBlock[3] = &block_descriptor_42;
    v18 = _Block_copy(aBlock);

    v19 = sub_22766C0B0();
    v20 = notify_register_dispatch((v19 + 32), &v25 + 1, v16, v18);

    _Block_release(v18);

    if (v20 || HIDWORD(v25) == -1)
    {
      sub_22766A730();

      v21 = sub_22766B380();
      v22 = sub_22766C890();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        aBlock[0] = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_226E97AE8(a2, a3, aBlock);
        _os_log_impl(&dword_226E8E000, v21, v22, "[ManagedProfileObserver] Failed to register for notification: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x22AA9A450](v24, -1, -1);
        MEMORY[0x22AA9A450](v23, -1, -1);
      }

      (*(v11 + 8))(v14, v15);
    }

    else
    {
      *a1 = HIDWORD(v25);
    }
  }
}

uint64_t sub_2275D21B0(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

double sub_2275D225C()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v1 + 8))(v3, v0);
  sub_2275D2468();
  swift_getObjectType();
  sub_22766A2B0();
  swift_allocObject();
  swift_weakInit();

  sub_227669A10();

  __swift_destroy_boxed_opaque_existential_0(v6);

  return result;
}

double sub_2275D2410(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2275D2468();
  }

  return result;
}

uint64_t sub_2275D2468()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v8 = *(v41 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v41);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v37 - v13;
  v14 = *(v0 + 56);
  v43 = v0;
  v15 = *__swift_project_boxed_opaque_existential_0((v0 + 32), v14);
  v16 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v15 + v16, &v46);
  if (v47)
  {
    sub_226E92AB8(&v46, v45);
    sub_226E91B50(v45, v44);
    v17 = swift_allocObject();
    sub_226E92AB8(v44, v17 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  else
  {
    sub_226F099DC();
    v18 = swift_allocError();
    *v19 = 0;
    *(swift_allocObject() + 16) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  (*(v2 + 16))(v4, v7, v1);
  v20 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v21 = (v3 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v2 + 32))(v22 + v20, v4, v1);
  v23 = (v22 + v21);
  *v23 = sub_2275D2A5C;
  v23[1] = 0;
  sub_227665AD0();
  sub_227669270();
  (*(v2 + 8))(v7, v1);
  v24 = swift_allocObject();
  v25 = v43;
  *(v24 + 16) = sub_2275D45F4;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_226FD0258;
  *(v26 + 24) = v24;
  v27 = v38;
  v28 = v41;
  (*(v8 + 16))(v38, v12, v41);
  v29 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v30 = swift_allocObject();
  (*(v8 + 32))(v30 + v29, v27, v28);
  v31 = (v30 + ((v9 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_2273202AC;
  v31[1] = v26;

  v32 = v39;
  sub_227669270();
  (*(v8 + 8))(v12, v28);
  v33 = v42;
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  v34(sub_226E9F7B0, v35);

  return (*(v40 + 8))(v32, v33);
}

uint64_t sub_2275D2A5C(void *a1)
{
  v2 = sub_227667900();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  (*(v7 + 8))(v5, v6, v7);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2275D2B78(uint64_t a1)
{
  v2 = sub_22766A500();
  v73 = *(v2 - 8);
  v74 = v2;
  MEMORY[0x28223BE20](v2);
  v72 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766B390();
  v81 = *(v4 - 8);
  v82 = v4;
  MEMORY[0x28223BE20](v4);
  v67 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v76 = &v65 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF650, &qword_22768CCE0) - 8;
  MEMORY[0x28223BE20](v83);
  v78 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v80 = &v65 - v12;
  MEMORY[0x28223BE20](v13);
  v77 = &v65 - v14;
  v15 = sub_227665AD0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v75 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v65 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v65 - v22;
  v24 = sub_22766C4B0();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  v25 = *(v16 + 16);
  v84 = v25;
  v25(v20, a1, v15);
  v26 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v27 = swift_allocObject();
  v28 = *(v16 + 32);
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v29 = v27 + v26;
  v30 = v79;
  v66 = v20;
  v65 = v28;
  v28(v29, v20, v15);
  sub_2272CA940(0, 0, v23, &unk_22768CCF0, v27);

  v31 = OBJC_IVAR____TtC15SeymourServices27ServiceSubscriptionObserver_serviceSubscription;
  swift_beginAccess();
  v32 = a1;
  v33 = v77;
  v71 = v32;
  v85 = v16 + 16;
  (v25)();
  v34 = v16 + 56;
  v68 = *(v16 + 56);
  v68(v33, 0, 1, v15);
  v35 = *(v83 + 56);
  v69 = v31;
  v36 = v78;
  sub_2275D44D0(v30 + v31, v78);
  sub_2275D44D0(v33, v36 + v35);
  v83 = v16;
  v37 = v16;
  v38 = v36;
  v39 = *(v37 + 48);
  if (v39(v36, 1, v15) == 1)
  {
    sub_226E97D1C(v33, &qword_27D7B8428, &qword_227675CB0);
    if (v39(v36 + v35, 1, v15) == 1)
    {
      sub_226E97D1C(v36, &qword_27D7B8428, &qword_227675CB0);
LABEL_12:
      v61 = v67;
      sub_22766A730();
      v62 = sub_22766B380();
      v63 = sub_22766C8B0();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_226E8E000, v62, v63, "ServiceSubscriptionObserver service subscription matches cached value", v64, 2u);
        MEMORY[0x22AA9A450](v64, -1, -1);
      }

      return (*(v81 + 8))(v61, v82);
    }

    goto LABEL_6;
  }

  sub_2275D44D0(v36, v80);
  if (v39(v36 + v35, 1, v15) == 1)
  {
    sub_226E97D1C(v33, &qword_27D7B8428, &qword_227675CB0);
    (*(v83 + 8))(v80, v15);
LABEL_6:
    sub_226E97D1C(v36, &qword_27D7BF650, &qword_22768CCE0);
    v40 = v75;
    goto LABEL_7;
  }

  v57 = v66;
  v65(v66, v36 + v35, v15);
  sub_2275D45B0(&qword_27D7BF658, MEMORY[0x277D51C48]);
  v58 = v80;
  LODWORD(v65) = sub_22766BFB0();
  v59 = v30;
  v60 = *(v83 + 8);
  v60(v57, v15);
  sub_226E97D1C(v33, &qword_27D7B8428, &qword_227675CB0);
  v60(v58, v15);
  v30 = v59;
  sub_226E97D1C(v38, &qword_27D7B8428, &qword_227675CB0);
  v40 = v75;
  if (v65)
  {
    goto LABEL_12;
  }

LABEL_7:
  v80 = v34;
  v41 = v76;
  sub_22766A730();
  v42 = v71;
  v84(v40, v71, v15);
  v43 = sub_22766B380();
  v44 = sub_22766C8B0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v86[0] = v46;
    *v45 = 136446210;
    sub_2275D45B0(&qword_28139B758, MEMORY[0x277D51C50]);
    v47 = sub_22766D140();
    v48 = v40;
    v50 = v49;
    (*(v83 + 8))(v48, v15);
    v51 = sub_226E97AE8(v47, v50, v86);

    *(v45 + 4) = v51;
    _os_log_impl(&dword_226E8E000, v43, v44, "ServiceSubscriptionObserver updating service subscription: %{public}s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x22AA9A450](v46, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v81 + 8))(v76, v82);
  }

  else
  {

    (*(v83 + 8))(v40, v15);
    (*(v81 + 8))(v41, v82);
  }

  v52 = v70;
  v84(v70, v42, v15);
  v68(v52, 0, 1, v15);
  v53 = v69;
  swift_beginAccess();
  sub_2275D4540(v52, v30 + v53);
  swift_endAccess();
  swift_getObjectType();
  v54 = v72;
  sub_22766A4F0();
  v55 = v74;
  sub_2276699D0();
  return (*(v73 + 8))(v54, v55);
}

uint64_t sub_2275D3518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[35] = a4;
  v5 = sub_227662750();
  v4[36] = v5;
  v4[37] = *(v5 - 8);
  v4[38] = swift_task_alloc();
  v6 = sub_22766B390();
  v4[39] = v6;
  v4[40] = *(v6 - 8);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v4[43] = swift_task_alloc();
  v7 = sub_2276627D0();
  v4[44] = v7;
  v4[45] = *(v7 - 8);
  v4[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275D36D4, 0, 0);
}

uint64_t sub_2275D36D4()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  sub_227662760();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226E97D1C(v0[43], &unk_27D7BB9D0, &qword_227671550);
    sub_22766A640();
    v4 = sub_22766B380();
    v5 = sub_22766C890();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[42];
    v8 = v0[39];
    v9 = v0[40];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_226E8E000, v4, v5, "Unable to create Promoted Status Conditions Identifier", v10, 2u);
      MEMORY[0x22AA9A450](v10, -1, -1);
    }

    (*(v9 + 8))(v7, v8);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v14 = v0[37];
    v13 = v0[38];
    v15 = v0[36];
    (*(v0[45] + 32))(v0[46], v0[43], v0[44]);
    sub_227662740();
    v16 = sub_227665AA0();
    (*(v14 + 8))(v13, v15);
    v17 = objc_opt_self();
    v18 = sub_227662790();
    v0[47] = v18;
    if (v16)
    {
      v19 = v0 + 10;
      v0[10] = v0;
      v0[11] = sub_2275D3A70;
      v20 = swift_continuation_init();
      v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC250, &qword_22768CD00);
      v0[26] = MEMORY[0x277D85DD0];
      v0[27] = 1107296256;
      v0[28] = sub_2275D21B0;
      v0[29] = &block_descriptor_10;
      v0[30] = v20;
      [v17 setStatusCondition:v18 completionHandler:v0 + 26];
    }

    else
    {
      v19 = v0 + 2;
      v0[2] = v0;
      v0[3] = sub_2275D3C30;
      v21 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC250, &qword_22768CD00);
      v0[18] = MEMORY[0x277D85DD0];
      v0[19] = 1107296256;
      v0[20] = sub_2275D21B0;
      v0[21] = &block_descriptor_43;
      v0[22] = v21;
      [v17 clearStatusCondition:v18 completionHandler:v0 + 18];
    }

    return MEMORY[0x282200938](v19);
  }
}

uint64_t sub_2275D3A70()
{
  v1 = *(*v0 + 112);
  *(*v0 + 384) = v1;
  if (v1)
  {
    v2 = sub_2275D3D40;
  }

  else
  {
    v2 = sub_2275D3B80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275D3B80()
{
  v1 = v0[47];
  (*(v0[45] + 8))(v0[46], v0[44]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2275D3C30()
{
  v1 = *(*v0 + 48);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_2275D3F98;
  }

  else
  {
    v2 = sub_2275D46F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275D3D40(uint64_t a1)
{
  v27 = v1;
  swift_willThrow();
  v2 = *(v1 + 384);

  sub_22766A640();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 360);
    v24 = *(v1 + 352);
    v25 = *(v1 + 368);
    v7 = *(v1 + 320);
    v22 = *(v1 + 312);
    v23 = *(v1 + 328);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136446210;
    *(v1 + 272) = v2;
    v10 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v11 = sub_22766C060();
    v13 = sub_226E97AE8(v11, v12, &v26);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "unable to update Promoted Status Condition: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v7 + 8))(v23, v22);
    (*(v6 + 8))(v25, v24);
  }

  else
  {
    v15 = *(v1 + 360);
    v14 = *(v1 + 368);
    v16 = *(v1 + 352);
    v18 = *(v1 + 320);
    v17 = *(v1 + 328);
    v19 = *(v1 + 312);

    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
  }

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_2275D3F98(uint64_t a1)
{
  v27 = v1;
  swift_willThrow();
  v2 = *(v1 + 392);

  sub_22766A640();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 360);
    v24 = *(v1 + 352);
    v25 = *(v1 + 368);
    v7 = *(v1 + 320);
    v22 = *(v1 + 312);
    v23 = *(v1 + 328);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136446210;
    *(v1 + 272) = v2;
    v10 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v11 = sub_22766C060();
    v13 = sub_226E97AE8(v11, v12, &v26);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "unable to update Promoted Status Condition: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v7 + 8))(v23, v22);
    (*(v6 + 8))(v25, v24);
  }

  else
  {
    v15 = *(v1 + 360);
    v14 = *(v1 + 368);
    v16 = *(v1 + 352);
    v18 = *(v1 + 320);
    v17 = *(v1 + 328);
    v19 = *(v1 + 312);

    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
  }

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_2275D41F4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  sub_226E97D1C(v0 + OBJC_IVAR____TtC15SeymourServices27ServiceSubscriptionObserver_serviceSubscription, &qword_27D7B8428, &qword_227675CB0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ServiceSubscriptionObserver(uint64_t a1)
{
  result = qword_28139E3A0;
  if (!qword_28139E3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2275D42D4(uint64_t a1)
{
  sub_2275D4388(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2275D4388(uint64_t a1)
{
  if (!qword_2813A56E8)
  {
    sub_227665AD0();
    v1 = sub_22766CB90();
    if (!v2)
    {
      atomic_store(v1, &qword_2813A56E8);
    }
  }
}

uint64_t sub_2275D43E0(uint64_t a1)
{
  v4 = *(sub_227665AD0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E92F34;

  return sub_2275D3518(a1, v6, v7, v1 + v5);
}

uint64_t sub_2275D44D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275D4540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275D45B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227665AD0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2275D4620(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_2275D46FC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_227669180();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v35 - v11;
  v13 = [a1 identifier];
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  v47 = sub_22766C000();

  v15 = [a1 title];
  if (!v15)
  {
LABEL_11:

LABEL_12:
    v32 = sub_227664DD0();
    sub_2275D535C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D51028], v32);
    swift_willThrow();

    return;
  }

  v44 = a2;
  v16 = v15;
  v43 = sub_22766C000();

  v17 = [a1 artist];
  if (!v17)
  {
LABEL_10:

    goto LABEL_11;
  }

  v42 = v6;
  v18 = v17;
  v40 = sub_22766C000();
  v20 = v19;

  v21 = [a1 album];
  if (!v21)
  {
LABEL_9:

    goto LABEL_10;
  }

  v41 = v20;
  v22 = v21;
  v35[1] = sub_22766C000();
  v24 = v23;

  v25 = [a1 contentRating];
  if (!v25)
  {

    goto LABEL_9;
  }

  v39 = v24;
  v26 = v25;
  v35[0] = sub_22766C000();
  v38 = v27;

  v28 = [a1 artwork];
  if (v28)
  {
    v29 = v28;
    v30 = sub_227662590();
    v36 = v31;
    v37 = v30;
  }

  else
  {
    v36 = 0xF000000000000000;
    v37 = 0;
  }

  v34 = v42;
  sub_2275D535C(&qword_27D7BB870, MEMORY[0x277D53A78], MEMORY[0x277D53A68]);
  sub_2276683D0();
  if (v2)
  {
  }

  else
  {
    (*(v34 + 16))(v8, v12, v5);
    [a1 startTime];
    [a1 duration];
    v45 = v35[0];
    v46 = v38;
    sub_226ED978C();
    sub_227663AE0();
    sub_2276632B0();

    (*(v34 + 8))(v12, v5);
  }
}

void *static MusicTrack.representativeSamples()()
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF660, &qword_22768CD08);
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = (&v33 - v0);
  v42 = sub_227663350();
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_227669180();
  v3 = *(v2 - 8);
  v4 = v3;
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22766C090();
  v53 = sub_22766C090();
  v52 = sub_22766C090();
  v51 = sub_22766C090();
  sub_227669170();
  v7 = sub_22766C380();
  *(v7 + 16) = 3;
  v8 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9 = *(v3 + 16);
  v9(v8, v6, v2);
  v10 = *(v3 + 72);
  v37 = v9;
  v38 = v4 + 16;
  v9(v8 + v10, v6, v2);
  v11 = *(v4 + 32);
  v39 = v6;
  v40 = v2;
  v11(v8 + 2 * v10, v6, v2);
  sub_226F5D274();
  v12 = sub_22766BE70();
  v13 = sub_22766BE70();
  sub_226F976F8();
  sub_226ED978C();
  v14 = sub_227663B50();
  v78 = v53;
  v79[0] = v54;
  v79[1] = v79;
  v79[2] = &v78;
  v76 = v51;
  v77 = v52;
  v79[3] = &v77;
  v79[4] = &v76;
  v74 = v12;
  v75 = v7;
  v79[5] = &v75;
  v79[6] = &v74;
  v72 = v14;
  v73 = v13;
  v79[7] = &v73;
  v79[8] = &v72;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v65 = v64;
  v66 = v64;
  v67 = v64;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE028, &qword_2276878C0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v70 = v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F0, &qword_227672F88);
  v56 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v57 = v56;
  v58 = v56;
  v59 = v56;
  v60 = sub_226F5BF60(&qword_27D7BE030, &qword_27D7BE028, &qword_2276878C0);
  v61 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v62 = v61;
  v63 = sub_226F5BF60(&qword_27D7B9100, &qword_27D7B90F0, &qword_227672F88);
  v15 = sub_2276638E0();

  v16 = *(v15 + 16);
  if (v16)
  {
    v55 = MEMORY[0x277D84F90];
    result = sub_226F1F408(0, v16, 0);
    v18 = 0;
    v19 = v55;
    v34 = v15 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v35 = v16;
    v33 = v45 + 32;
    v20 = v46;
    v36 = v15;
    while (v18 < *(v15 + 16))
    {
      v21 = v43;
      sub_2275D522C(v34 + *(v20 + 72) * v18, v43);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      v49 = v21[3];
      v50 = v22;
      v25 = v21[5];
      v52 = v21[4];
      v53 = v24;
      v54 = v19;
      v47 = v23;
      v48 = v25;
      v51 = v21[6];
      v26 = v21 + *(v44 + 144);
      v27 = *v26;
      v28 = *(v26 + 1);
      v29 = v26[16];
      v37(v39, v21 + *(v44 + 96), v40);

      sub_226EB396C(v27, v28, v29);
      v30 = v41;
      v19 = v54;
      sub_2276632B0();
      sub_2275D529C(v21);
      v55 = v19;
      v32 = *(v19 + 16);
      v31 = *(v19 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_226F1F408((v31 > 1), v32 + 1, 1);
        v19 = v55;
      }

      ++v18;
      *(v19 + 16) = v32 + 1;
      result = (*(v45 + 32))(v19 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v32, v30, v42);
      v15 = v36;
      v20 = v46;
      if (v35 == v18)
      {

        return v19;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2275D522C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF660, &qword_22768CD08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275D529C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF660, &qword_22768CD08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2275D5304(uint64_t a1)
{
  result = sub_2275D535C(&qword_27D7BF668, MEMORY[0x277D4FEC8], &protocol conformance descriptor for MusicTrack);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2275D535C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2275D53A4(void *a1)
{
  v3 = sub_227669180();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276632C0();
  v7 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_2276632F0();
  v8 = sub_22766BFD0();

  [a1 setTitle_];

  sub_227663300();
  v9 = sub_22766BFD0();

  [a1 setArtist_];

  sub_2276632E0();
  v10 = sub_22766BFD0();

  [a1 setAlbum_];

  sub_227663310();
  sub_2275D535C(&qword_27D7BB870, MEMORY[0x277D53A78], MEMORY[0x277D53A68]);
  v11 = sub_2276683C0();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v13 = v11;
    v14 = v6;
    v15 = v12;
    (*(v4 + 8))(v14, v3);
    v16 = sub_227662560();
    sub_226EDC420(v13, v15);
    [a1 setArtwork_];

    sub_227663340();
    [a1 setStartTime_];
    sub_227663320();
    [a1 setDuration_];
    v17 = sub_2276632D0();
    v19 = v18;
    v22[3] = v17;
    v22[4] = v18;
    LOBYTE(v15) = v20 & 1;
    v23 = v20 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E8, &qword_227671548);
    sub_227663AD0();
    v21 = sub_22766BFD0();
    sub_226EB2DFC(v17, v19, v15);

    [a1 setContentRating_];
  }
}

uint64_t sub_2275D56A4()
{
  v1 = v0;
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = *(v1 + 56);
  v14 = v1;
  swift_getObjectType();
  v15 = v10;
  v11 = *(v3 + 104);
  v11(v5, *MEMORY[0x277D4E3C8], v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_227669EE0();

  v12 = *(v3 + 8);
  v12(v5, v2);
  swift_unknownObjectRelease();
  v15 = v10;
  v11(v5, *MEMORY[0x277D4E460], v2);
  swift_allocObject();
  swift_weakInit();
  sub_227669ED0();

  v12(v5, v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_2275D59C0(_BYTE *a1, uint64_t a2)
{
  *(v2 + 80) = a2;
  *(v2 + 104) = *a1;
  return MEMORY[0x2822009F8](sub_2275D59E8, 0, 0);
}

uint64_t sub_2275D59E8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v0 + 16);

    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), v2);
    v8 = (*(v3 + 8) + **(v3 + 8));
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = sub_227127A18;
    v5 = *(v0 + 104);

    return v8(v5, v2, v3);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2275D5B88(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275D5BA8, 0, 0);
}

uint64_t sub_2275D5BA8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, (v0 + 2));

    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v2);
    v8 = (*(v3 + 16) + **(v3 + 16));
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_2275D5D48;

    return v8(v2, v3);
  }

  else
  {
    v6 = v0[10];
    *v6 = 0;
    v6[1] = 0;
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275D5D48(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;

  return MEMORY[0x2822009F8](sub_2275D5E48, 0, 0);
}

uint64_t sub_2275D5E48()
{
  v1 = v0[14];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[10];
  *v2 = v0[13];
  v2[1] = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_2275D5EBC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2275D5F20(_BYTE *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275D59C0(a1, v1);
}

uint64_t sub_2275D5FB8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_2275D5B88(a1, v1);
}

void sub_2275D6054(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2276695E0();
  v5 = *(v4 - 8);
  v39 = v4;
  v40 = v5;
  MEMORY[0x28223BE20](v4);
  v43 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_22766CD20();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  if (v7)
  {
    v48 = MEMORY[0x277D84F90];
    sub_226F1FF08(0, v7 & ~(v7 >> 63), 0);
    v42 = v48;
    if (v41)
    {
      v8 = sub_22766CCD0();
    }

    else
    {
      v8 = sub_22766CC90();
      v9 = *(a1 + 36);
    }

    v45 = v8;
    v46 = v9;
    v47 = v41 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v37 = v7;
      v38 = v40 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v35 = a1 + 56;
      v36 = v11;
      v34 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_40;
        }

        v15 = v45;
        v14 = v46;
        v16 = v47;
        sub_2274DDD04(v45, v46, v47, a1);
        v18 = v17;
        sub_2276695F0();
        if (v2)
        {

          sub_226EB526C(v15, v14, v16);

          return;
        }

        v19 = v42;
        v48 = v42;
        v21 = *(v42 + 16);
        v20 = *(v42 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_226F1FF08((v20 > 1), v21 + 1, 1);
          v19 = v48;
        }

        *(v19 + 16) = v21 + 1;
        v22 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v42 = v19;
        (*(v40 + 32))(v19 + v22 + *(v40 + 72) * v21, v43, v39);
        if (v41)
        {
          if (!v16)
          {
            goto LABEL_45;
          }

          v2 = 0;
          if (sub_22766CCF0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF678, &qword_22768CE30);
          v12 = sub_22766C6A0();
          sub_22766CD70();
          v12(v44, 0);
          if (v10 == v7)
          {
LABEL_37:
            sub_226EB526C(v45, v46, v47);
            return;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_46;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_41;
          }

          v23 = 1 << *(a1 + 32);
          if (v15 >= v23)
          {
            goto LABEL_41;
          }

          v24 = v15 >> 6;
          v25 = *(v35 + 8 * (v15 >> 6));
          if (((v25 >> v15) & 1) == 0)
          {
            goto LABEL_42;
          }

          if (*(a1 + 36) != v14)
          {
            goto LABEL_43;
          }

          v2 = 0;
          v26 = v25 & (-2 << (v15 & 0x3F));
          if (v26)
          {
            v23 = __clz(__rbit64(v26)) | v15 & 0x7FFFFFFFFFFFFFC0;
            v7 = v37;
          }

          else
          {
            v27 = v24 << 6;
            v28 = v24 + 1;
            v29 = (v34 + 8 * v24);
            v7 = v37;
            while (v28 < (v23 + 63) >> 6)
            {
              v31 = *v29++;
              v30 = v31;
              v27 += 64;
              ++v28;
              if (v31)
              {
                sub_226EB526C(v15, v14, 0);
                v23 = __clz(__rbit64(v30)) + v27;
                goto LABEL_34;
              }
            }

            sub_226EB526C(v15, v14, 0);
          }

LABEL_34:
          v32 = *(a1 + 36);
          v45 = v23;
          v46 = v32;
          v47 = 0;
          if (v10 == v7)
          {
            goto LABEL_37;
          }
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }
}

BOOL sub_2275D6484(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_22766CD20())
    {
      return 0;
    }
  }

  else if (*(a1 + 16))
  {
    return 0;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = sub_22766CD20();
  }

  else
  {
    v4 = *(a2 + 16);
  }

  return v4 == 0;
}

void sub_2275D64F8(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2275D6054(a3);
  if (!v4)
  {
    sub_22766B070();
    sub_2275D6054(a4);
    sub_22766B050();
    sub_22766B090();
  }
}

void sub_2275D6568(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = sub_2275D68D0(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
    *(a2 + 2) = v6;
  }
}

uint64_t sub_2275D6598()
{
  sub_22766B0A0();
  sub_2275D688C(&qword_281399220, MEMORY[0x277D54528]);
  return sub_22766AD80();
}

uint64_t sub_2275D66A0(uint64_t a1, uint64_t a2, double a3)
{
  sub_22766CE20();
  MEMORY[0x22AA98450](0x203A2B28435253, 0xE700000000000000);
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_22766CD20();
  }

  v5 = sub_22766D140();
  MEMORY[0x22AA98450](v5);

  MEMORY[0x22AA98450](0x203A2D202CLL, 0xE500000000000000);
  if ((a2 & 0xC000000000000001) != 0)
  {
    sub_22766CD20();
  }

  v6 = sub_22766D140();
  MEMORY[0x22AA98450](v6);

  MEMORY[0x22AA98450](0x203A7461202CLL, 0xE600000000000000);
  sub_22766C560();
  MEMORY[0x22AA98450](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2275D688C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22766B0A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_2275D68D0(uint64_t a1)
{
  v2 = sub_2276695E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v45 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v44 = &v38 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = sub_22766B060();
  v11 = MEMORY[0x277D84F90];
  v46 = MEMORY[0x277D84F90];
  v12 = *(v10 + 16);
  v40 = a1;
  if (v12)
  {
    v13 = sub_22706C980();
    v38 = v10;
    v39 = v3;
    v14 = v3[2];
    v15 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v42 = v3[9];
    v43 = v13;
    v16 = (v3 + 1);
    v41 = MEMORY[0x277D84F90];
    v14(v9, v15, v2);
    while (1)
    {
      v14(v45, v9, v2);
      v17 = sub_22766CAE0();
      v18 = (*v16)(v9, v2);
      if (v17)
      {
        MEMORY[0x22AA985C0](v18);
        if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v41 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22766C360();
        }

        sub_22766C3A0();
        v41 = v46;
      }

      v15 += v42;
      if (!--v12)
      {
        break;
      }

      v14(v9, v15, v2);
    }

    a1 = v40;
    v19 = v41;
    v3 = v39;
    v11 = MEMORY[0x277D84F90];
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v20 = sub_226F3E740(v19);

  v21 = sub_22766B040();
  v46 = v11;
  v22 = *(v21 + 16);
  if (v22)
  {
    v39 = v20;
    v23 = sub_22706C980();
    v26 = v3[2];
    v24 = v3 + 2;
    v25 = v26;
    v27 = *(v24 + 64);
    v38 = v21;
    v28 = v21 + ((v27 + 32) & ~v27);
    v42 = v24[7];
    v43 = v23;
    v29 = (v24 - 1);
    v41 = MEMORY[0x277D84F90];
    do
    {
      v30 = v44;
      v25(v44, v28, v2);
      v25(v45, v30, v2);
      v31 = sub_22766CAE0();
      v32 = (*v29)(v30, v2);
      if (v31)
      {
        MEMORY[0x22AA985C0](v32);
        if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v41 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22766C360();
        }

        sub_22766C3A0();
        v41 = v46;
      }

      v28 += v42;
      --v22;
    }

    while (v22);

    a1 = v40;
    v33 = v41;
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  sub_226F3E740(v33);

  sub_22766B080();
  v35 = v34;
  v36 = sub_22766B0A0();
  (*(*(v36 - 8) + 8))(a1, v36);
  return v35;
}

void sub_2275D6CF8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = v47 - v8;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v49 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v48 = v47 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = v47 - v15;
  MEMORY[0x28223BE20](v17);
  v52 = v47 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v47 - v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v47 - v24;
  v26 = [a1 identifier];
  if (!v26)
  {
    goto LABEL_9;
  }

  v47[4] = a2;
  v27 = v26;
  v47[3] = sub_22766C000();
  v29 = v28;

  v30 = [a1 startDate];
  if (!v30)
  {

LABEL_9:
    v40 = sub_227664DD0();
    sub_2275D7A78(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D51028], v40);
    swift_willThrow();

    return;
  }

  v31 = v30;
  v47[1] = v2;
  v47[2] = v29;
  sub_227662710();

  v32 = *(v10 + 32);
  v32(v25, v21, v9);
  v33 = [a1 endDate];
  if (!v33)
  {

    (*(v10 + 8))(v25, v9);
    goto LABEL_9;
  }

  v34 = v33;
  sub_227662710();

  v32(v52, v16, v9);
  [a1 heartRate];
  v35 = [a1 queueIdentifier];
  if (v35)
  {
    v36 = v35;
    sub_22766C000();

    v37 = [a1 playlistIdentifier];
    v38 = v51;
    if (v37)
    {
      v39 = v37;
      v47[0] = sub_22766C000();
    }

    sub_227664920();
    v42 = 0;
  }

  else
  {
    v42 = 1;
    v38 = v51;
  }

  v43 = sub_227664950();
  (*(*(v43 - 8) + 56))(v38, v42, 1, v43);
  v44 = *(v10 + 16);
  v44(v48, v25, v9);
  v51 = v25;
  v45 = v52;
  v44(v49, v52, v9);
  sub_226E93170(v38, v50, &qword_27D7B8CC8, &unk_227689B50);
  sub_227666B90();

  sub_226E97D1C(v38, &qword_27D7B8CC8, &unk_227689B50);
  v46 = *(v10 + 8);
  v46(v45, v9);
  v46(v51, v9);
}

void *static HealthKitMindfulSession.representativeSamples()()
{
  v50 = sub_227662750();
  v54 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = v34 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v48 = v34 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = v34 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF680, &qword_22768CE78);
  v7 = *(v45 - 1);
  MEMORY[0x28223BE20](v45);
  v44 = v34 - v8;
  v43 = sub_227666BF0();
  v9 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766C090();
  v13 = sub_227662630();
  v14 = sub_227662630();
  v15 = sub_22766CB70();
  v16 = sub_227664950();
  v17 = sub_22766C320();
  v69 = v13;
  v70[0] = v12;
  v70[1] = v70;
  v70[2] = &v69;
  v67 = v15;
  v68 = v14;
  v70[3] = &v68;
  v70[4] = &v67;
  v66 = v17;
  v70[5] = &v66;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v63 = v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF688, &qword_22768CE80);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D00, &qword_227671E58);
  v56 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v57 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v58 = v57;
  v59 = sub_226F5BF60(&qword_27D7BF690, &qword_27D7BF688, &qword_22768CE80);
  v60 = sub_226F5BF60(&qword_27D7B8D20, &qword_27D7B8D00, &qword_227671E58);
  v18 = sub_2276638E0();

  v19 = *(v18 + 16);
  if (v19)
  {
    v55 = MEMORY[0x277D84F90];
    result = sub_226F1F328(0, v19, 0);
    v21 = 0;
    v37 = v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v22 = v55;
    v36 = v16 - 8;
    v35 = (v54 + 16);
    v34[1] = v9 + 32;
    v42 = v7;
    v41 = v9;
    v40 = v16;
    v39 = v18;
    v38 = v19;
    v34[0] = v11;
    while (v21 < *(v18 + 16))
    {
      v23 = v44;
      sub_226E93170(v37 + *(v7 + 72) * v21, v44, &qword_27D7BF680, &qword_22768CE78);
      v53 = *v23;
      v24 = v45[12];
      v54 = v22;
      v25 = v45[16];
      v26 = &v23[v45[20]];
      v52 = *v26;
      v51 = v26[8];
      v27 = *(v16 - 8);
      v28 = v46;
      (*(v27 + 16))(v46, &v23[v45[24]], v16);
      (*(v27 + 56))(v28, 0, 1, v16);
      v29 = *v35;
      v30 = &v23[v24];
      v31 = v50;
      (*v35)(v48, v30, v50);
      v29(v49, &v23[v25], v31);
      sub_226E93170(v28, v47, &qword_27D7B8CC8, &unk_227689B50);

      v22 = v54;
      sub_227666B90();
      sub_226E97D1C(v28, &qword_27D7B8CC8, &unk_227689B50);
      sub_226E97D1C(v23, &qword_27D7BF680, &qword_22768CE78);
      v55 = v22;
      v33 = *(v22 + 16);
      v32 = *(v22 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_226F1F328((v32 > 1), v33 + 1, 1);
        v22 = v55;
      }

      ++v21;
      *(v22 + 16) = v33 + 1;
      result = (*(v41 + 32))(v22 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v33, v34[0], v43);
      v7 = v42;
      v16 = v40;
      v18 = v39;
      if (v38 == v21)
      {

        return v22;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2275D7A20(uint64_t a1)
{
  result = sub_2275D7A78(&qword_2813A5658, MEMORY[0x277D528B8], &protocol conformance descriptor for HealthKitMindfulSession);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2275D7A78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2275D7AC0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v7 = sub_227662750();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227666BA0();
  v11 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227666BE0();
  v12 = sub_2276626A0();
  v13 = *(v8 + 8);
  v13(v10, v7);
  [a1 setStartDate_];

  sub_227666BC0();
  v14 = sub_2276626A0();
  v13(v10, v7);
  [a1 setEndDate_];

  v15 = COERCE_DOUBLE(sub_227666BD0());
  if (v16)
  {
    v15 = 0.0;
  }

  [a1 setHeartRate_];
  sub_227666BB0();
  v17 = sub_227664950();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v6, 1, v17) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B8CC8, &unk_227689B50);
    v20 = 0;
  }

  else
  {
    sub_227664930();
    (*(v18 + 8))(v6, v17);
    v20 = sub_22766BFD0();
  }

  [a1 setQueueIdentifier_];

  v21 = v26;
  sub_227666BB0();
  if (v19(v21, 1, v17) == 1)
  {
    sub_226E97D1C(v21, &qword_27D7B8CC8, &unk_227689B50);
  }

  else
  {
    sub_227664940();
    v23 = v22;
    (*(v18 + 8))(v21, v17);
    if (v23)
    {
      v24 = sub_22766BFD0();

      [a1 setPlaylistIdentifier_];
    }
  }
}

SeymourServices::SQLiteResult_optional __swiftcall SQLiteResult.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue == 101)
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  if (rawValue == 100)
  {
    v2.value = SeymourServices_SQLiteResult_rowReady;
  }

  else
  {
    v2.value = v1;
  }

  if (rawValue)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

int *sub_2275D7EDC@<X0>(int *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 101)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

unint64_t sub_2275D7F28()
{
  result = qword_27D7BF698;
  if (!qword_27D7BF698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF698);
  }

  return result;
}

uint64_t sub_2275D7F7C()
{
  sub_22766D370();
  sub_22766D3C0();
  return sub_22766D3F0();
}

uint64_t sub_2275D8004(uint64_t a1)
{
  sub_22766D370();
  sub_22766D3C0();
  return sub_22766D3F0();
}

void sub_2275D8060()
{
  v0 = sub_2276641A0();
  v1 = sub_227515968(v0);
  v2 = sub_2276641A0();
  v3 = sub_227515968(v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v100[0] = v1;
  sub_2275D88A4(v3, sub_226F524F8, 0, isUniquelyReferenced_nonNull_native, v100);

  v5 = v100[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B99F8, &qword_227674E20);
  v6 = sub_22766CFF0();
  v7 = v6;
  v8 = 0;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  if (v11)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v5 + 48) + 8 * v17);
      v19 = *(*(v5 + 56) + 8 * v17);
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v7 + 48) + 8 * v17) = v18;
      *(*(v7 + 56) + 8 * v17) = v19;
      v20 = *(v7 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v7 + 16) = v22;

      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_99;
      }

      if (v8 >= v12)
      {
        break;
      }

      v16 = *(v5 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    v23 = 1 << *(v7 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v7 + 64);
    v26 = (v23 + 63) >> 6;

    v27 = 0;
    v28 = MEMORY[0x277D84F90];
    while (v25)
    {
LABEL_22:
      v30 = *(*(v7 + 56) + ((v27 << 9) | (8 * __clz(__rbit64(v25)))));
      v31 = *(v30 + 16);
      v32 = *(v28 + 2);
      v33 = v32 + v31;
      if (__OFADD__(v32, v31))
      {
        goto LABEL_105;
      }

      v34 = swift_isUniquelyReferenced_nonNull_native();
      if (!v34 || v33 > *(v28 + 3) >> 1)
      {
        if (v32 <= v33)
        {
          v35 = v32 + v31;
        }

        else
        {
          v35 = v32;
        }

        v28 = sub_2273A6AB4(v34, v35, 1, v28);
      }

      v25 &= v25 - 1;
      if (*(v30 + 16))
      {
        if ((*(v28 + 3) >> 1) - *(v28 + 2) < v31)
        {
          goto LABEL_110;
        }

        swift_arrayInitWithCopy();

        if (v31)
        {
          v36 = *(v28 + 2);
          v21 = __OFADD__(v36, v31);
          v37 = v36 + v31;
          if (v21)
          {
            goto LABEL_112;
          }

          *(v28 + 2) = v37;
        }
      }

      else
      {

        if (v31)
        {
          goto LABEL_106;
        }
      }
    }

    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v26)
      {

        v38 = sub_227664190();
        v39 = sub_227515968(v38);
        v40 = sub_227664190();
        v41 = sub_227515968(v40);
        v42 = swift_isUniquelyReferenced_nonNull_native();
        v100[0] = v39;
        sub_2275D88A4(v41, sub_226F524F8, 0, v42, v100);

        v43 = v100[0];
        v44 = sub_22766CFF0();
        v45 = v44;
        v46 = 0;
        v47 = 1 << *(v43 + 32);
        v48 = -1;
        if (v47 < 64)
        {
          v48 = ~(-1 << v47);
        }

        v49 = v48 & *(v43 + 64);
        v50 = (v47 + 63) >> 6;
        v51 = v44 + 64;
        if (!v49)
        {
LABEL_38:
          v53 = v46;
          while (1)
          {
            v46 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              goto LABEL_100;
            }

            if (v46 >= v50)
            {

              v60 = 1 << *(v45 + 32);
              v61 = -1;
              if (v60 < 64)
              {
                v61 = ~(-1 << v60);
              }

              v62 = v61 & *(v45 + 64);
              v63 = (v60 + 63) >> 6;
              v99 = v45;

              v64 = 0;
              v65 = MEMORY[0x277D84F90];
              while (v62)
              {
LABEL_55:
                v67 = *(*(v99 + 56) + ((v64 << 9) | (8 * __clz(__rbit64(v62)))));
                v68 = *(v67 + 16);
                v69 = *(v65 + 2);
                v70 = v69 + v68;
                if (__OFADD__(v69, v68))
                {
                  goto LABEL_108;
                }

                v71 = swift_isUniquelyReferenced_nonNull_native();
                if (!v71 || v70 > *(v65 + 3) >> 1)
                {
                  if (v69 <= v70)
                  {
                    v72 = v69 + v68;
                  }

                  else
                  {
                    v72 = v69;
                  }

                  v65 = sub_2273A6AB4(v71, v72, 1, v65);
                }

                v62 &= v62 - 1;
                if (*(v67 + 16))
                {
                  if ((*(v65 + 3) >> 1) - *(v65 + 2) < v68)
                  {
                    goto LABEL_111;
                  }

                  swift_arrayInitWithCopy();

                  if (v68)
                  {
                    v73 = *(v65 + 2);
                    v21 = __OFADD__(v73, v68);
                    v74 = v73 + v68;
                    if (v21)
                    {
                      goto LABEL_113;
                    }

                    *(v65 + 2) = v74;
                  }
                }

                else
                {

                  if (v68)
                  {
                    goto LABEL_109;
                  }
                }
              }

              while (1)
              {
                v66 = v64 + 1;
                if (__OFADD__(v64, 1))
                {
                  goto LABEL_101;
                }

                if (v66 >= v63)
                {

                  v75 = 0;
                  v76 = *(v65 + 2);
                  v77 = MEMORY[0x277D84F90];
LABEL_68:
                  v78 = 24 * v75;
                  while (v76 != v75)
                  {
                    if (v75 >= *(v65 + 2))
                    {
                      goto LABEL_102;
                    }

                    ++v75;
                    v79 = v78 + 24;
                    v80 = v65[v78 + 48];
                    v78 += 24;
                    if (v80 != 2)
                    {
                      if (v80)
                      {
                        if (v80 == 1)
                        {
                          v81 = 0;
                          v82 = v65[v79 + 8];
                          v83 = 1;
                        }

                        else
                        {
                          v82 = *&v65[v79 + 8];
                          v81 = *&v65[v79 + 16];

                          v83 = 2;
                        }
                      }

                      else
                      {
                        v81 = 0;
                        v83 = 0;
                        v82 = v65[v79 + 8];
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v77 = sub_2273A4F18(0, *(v77 + 2) + 1, 1, v77);
                      }

                      v85 = *(v77 + 2);
                      v84 = *(v77 + 3);
                      if (v85 >= v84 >> 1)
                      {
                        v77 = sub_2273A4F18((v84 > 1), v85 + 1, 1, v77);
                      }

                      *(v77 + 2) = v85 + 1;
                      v86 = &v77[24 * v85];
                      *(v86 + 4) = v82;
                      *(v86 + 5) = v81;
                      v86[48] = v83;
                      goto LABEL_68;
                    }
                  }

                  sub_226F40AD0(v77);

                  v87 = 0;
                  v88 = *(v28 + 2);
                  v89 = MEMORY[0x277D84F90];
LABEL_83:
                  v90 = 24 * v87;
                  while (v88 != v87)
                  {
                    if (v87 >= *(v28 + 2))
                    {
                      goto LABEL_103;
                    }

                    ++v87;
                    v91 = v90 + 24;
                    v92 = v28[v90 + 48];
                    v90 += 24;
                    if (v92 != 2)
                    {
                      if (v92)
                      {
                        if (v92 == 1)
                        {
                          v93 = 0;
                          v94 = v28[v91 + 8];
                          v95 = 1;
                        }

                        else
                        {
                          v94 = *&v28[v91 + 8];
                          v93 = *&v28[v91 + 16];

                          v95 = 2;
                        }
                      }

                      else
                      {
                        v93 = 0;
                        v95 = 0;
                        v94 = v28[v91 + 8];
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v89 = sub_2273A4F18(0, *(v89 + 2) + 1, 1, v89);
                      }

                      v97 = *(v89 + 2);
                      v96 = *(v89 + 3);
                      if (v97 >= v96 >> 1)
                      {
                        v89 = sub_2273A4F18((v96 > 1), v97 + 1, 1, v89);
                      }

                      *(v89 + 2) = v97 + 1;
                      v98 = &v89[24 * v97];
                      *(v98 + 4) = v94;
                      *(v98 + 5) = v93;
                      v98[48] = v95;
                      goto LABEL_83;
                    }
                  }

                  sub_226F40AD0(v89);

                  return;
                }

                v62 = *(v51 + 8 * v66);
                ++v64;
                if (v62)
                {
                  v64 = v66;
                  goto LABEL_55;
                }
              }
            }

            v54 = *(v43 + 64 + 8 * v46);
            ++v53;
            if (v54)
            {
              v52 = __clz(__rbit64(v54));
              v49 = (v54 - 1) & v54;
              goto LABEL_43;
            }
          }
        }

        while (1)
        {
          v52 = __clz(__rbit64(v49));
          v49 &= v49 - 1;
LABEL_43:
          v55 = v52 | (v46 << 6);
          v56 = *(*(v43 + 48) + 8 * v55);
          v57 = *(*(v43 + 56) + 8 * v55);
          *(v51 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
          *(*(v45 + 48) + 8 * v55) = v56;
          *(*(v45 + 56) + 8 * v55) = v57;
          v58 = *(v45 + 16);
          v21 = __OFADD__(v58, 1);
          v59 = v58 + 1;
          if (v21)
          {
            goto LABEL_107;
          }

          *(v45 + 16) = v59;

          if (!v49)
          {
            goto LABEL_38;
          }
        }
      }

      v25 = *(v13 + 8 * v29);
      ++v27;
      if (v25)
      {
        v27 = v29;
        goto LABEL_22;
      }
    }

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
  }

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

  __break(1u);

  __break(1u);
}

void sub_2275D88A4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v36 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v33 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
    v15 = *(*(a1 + 56) + v14);
    v35[0] = *(*(a1 + 48) + v14);
    v35[1] = v15;

    (a2)(v34, v35);

    v17 = v34[0];
    v16 = v34[1];
    v18 = *v36;
    v20 = sub_226F491D4(v34[0]);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_25;
    }

    v24 = v19;
    if (v18[3] >= v23)
    {
      if ((v33 & 1) == 0)
      {
        sub_226FF4564();
      }
    }

    else
    {
      sub_226FEC490(v23, v33 & 1);
      v25 = sub_226F491D4(v17);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_27;
      }

      v20 = v25;
    }

    v9 &= v9 - 1;
    v27 = *v36;
    if (v24)
    {
      *(v27[7] + 8 * v20) = v16;
    }

    else
    {
      v27[(v20 >> 6) + 8] |= 1 << v20;
      *(v27[6] + 8 * v20) = v17;
      *(v27[7] + 8 * v20) = v16;
      v28 = v27[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_26;
      }

      v27[2] = v30;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_226EBB21C(a1);

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v33 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_22766D220();
  __break(1u);
}

uint64_t sub_2275D8AFC(uint64_t a1)
{
  v34 = sub_227663480();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v26 = v1;
    v38 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v37 = v38;
    v7 = a1 + 56;
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v31 = v3 + 8;
    v32 = v3 + 16;
    v27 = a1 + 64;
    v28 = v5;
    v29 = v3;
    v30 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v35 = *(a1 + 36);
      v12 = v33;
      v13 = v34;
      (*(v3 + 16))(v33, *(a1 + 48) + *(v3 + 72) * v8, v34);
      v36 = sub_2276633E0();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v37;
      v38 = v37;
      v17 = *(v37 + 16);
      if (v17 >= *(v37 + 24) >> 1)
      {
        result = sub_226F1EF90();
        v16 = v38;
      }

      *(v16 + 16) = v17 + 1;
      v18 = v16 + 16 * v17;
      *(v18 + 32) = v36;
      *(v18 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v30;
      v19 = *(v30 + 8 * v11);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v37 = v16;
      if (v35 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v29;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (v27 + 8 * v11);
        v3 = v29;
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_226EB526C(v8, v35, 0);
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v8, v35, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v28)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_2275D8E04(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v4 = sub_227663480();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v34 - v8;
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v34[1] = v2;
    v47 = MEMORY[0x277D84F90];
    sub_226F1F568(0, v10, 0);
    v45 = a1 + 56;
    v46 = v47;
    result = sub_22766CC90();
    v12 = result;
    v13 = 0;
    v38 = v5 + 8;
    v39 = v5 + 16;
    v36 = v10;
    v37 = v5 + 32;
    v35 = a1 + 64;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v16 = *(a1 + 36);
      v42 = v13;
      v43 = v16;
      v17 = *(a1 + 48);
      v44 = *(v5 + 72);
      v18 = v40;
      (*(v5 + 16))(v40, v17 + v44 * v12, v4);
      sub_227663470();
      (*(v5 + 8))(v18, v4);
      v19 = v46;
      v47 = v46;
      v20 = a1;
      v22 = *(v46 + 16);
      v21 = *(v46 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v46 = v22 + 1;
        sub_226F1F568((v21 > 1), v22 + 1, 1);
        v23 = v46;
        v19 = v47;
      }

      *(v19 + 16) = v23;
      v24 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v46 = v19;
      result = (*(v5 + 32))(v19 + v24 + v22 * v44, v9, v4);
      v14 = 1 << *(v20 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v25 = *(v45 + 8 * v15);
      if ((v25 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v20;
      if (v43 != *(v20 + 36))
      {
        goto LABEL_26;
      }

      v26 = v25 & (-2 << (v12 & 0x3F));
      if (v26)
      {
        v14 = __clz(__rbit64(v26)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v9;
        v28 = v4;
        v29 = v15 << 6;
        v30 = v15 + 1;
        v31 = (v35 + 8 * v15);
        while (v30 < (v14 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_226EB526C(v12, v43, 0);
            v14 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v12, v43, 0);
LABEL_19:
        v4 = v28;
        v9 = v27;
      }

      v13 = v42 + 1;
      v12 = v14;
      if (v42 + 1 == v36)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2275D91B0(uint64_t a1)
{
  v3 = sub_227662750();
  MEMORY[0x28223BE20](v3 - 8);
  v47 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2C0, &unk_227687210);
  MEMORY[0x28223BE20](v46);
  v45 = v32 - v5;
  v44 = sub_227663480();
  v6 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2276662D0();
  v8 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v32[1] = v1;
    v54 = MEMORY[0x277D84F90];
    sub_226F20848(0, v11, 0);
    v52 = a1 + 56;
    v53 = v54;
    result = sub_22766CC90();
    v13 = result;
    v14 = 0;
    v40 = v6 + 16;
    v39 = *MEMORY[0x277D52238];
    v37 = v8 + 32;
    v38 = v6 + 8;
    v33 = a1 + 64;
    v34 = v11;
    v35 = v6;
    v36 = a1;
    v41 = v8;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v52 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v48 = v14;
      v49 = *(a1 + 36);
      v50 = 1 << v13;
      v17 = v43;
      v18 = v44;
      (*(v6 + 16))(v43, *(a1 + 48) + *(v6 + 72) * v13, v44);
      v51 = sub_2276633E0();
      v19 = sub_2276662B0();
      (*(*(v19 - 8) + 104))(v45, v39, v19);
      swift_storeEnumTagMultiPayload();
      v20 = v10;
      sub_227662740();
      sub_227666270();
      (*(v6 + 8))(v17, v18);
      v21 = v53;
      v54 = v53;
      v23 = *(v53 + 16);
      v22 = *(v53 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F20848((v22 > 1), v23 + 1, 1);
        v21 = v54;
      }

      *(v21 + 16) = v23 + 1;
      v24 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v53 = v21;
      result = (*(v41 + 32))(v21 + v24 + *(v41 + 72) * v23, v20, v42);
      a1 = v36;
      v15 = 1 << *(v36 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      v25 = *(v52 + 8 * v16);
      if ((v25 & v50) == 0)
      {
        goto LABEL_24;
      }

      if (v49 != *(v36 + 36))
      {
        goto LABEL_25;
      }

      v10 = v20;
      v26 = v25 & (-2 << (v13 & 0x3F));
      if (v26)
      {
        v15 = __clz(__rbit64(v26)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v6 = v35;
      }

      else
      {
        v27 = v16 << 6;
        v28 = v16 + 1;
        v29 = (v33 + 8 * v16);
        v6 = v35;
        while (v28 < (v15 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_226EB526C(v13, v49, 0);
            v15 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v13, v49, 0);
      }

LABEL_4:
      v14 = v48 + 1;
      v13 = v15;
      if (v48 + 1 == v34)
      {
        return v53;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2275D96A8(uint64_t a1)
{
  v35 = sub_227663480();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_226F1EFF0(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_2276633E0();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_226F1EFF0((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_226EB526C(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2275D99B0()
{
  v29 = sub_22766B3B0();
  v32 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v25 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_22766B3F0();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x28223BE20](v1);
  v26 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22766B3A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22766B410();
  v25 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v15 + 8))(v17, v14);
  sub_22766B400();
  *v6 = 2;
  (*(v4 + 104))(v6, *MEMORY[0x277D85188], v3);
  MEMORY[0x22AA97740](v10, v6);
  (*(v4 + 8))(v6, v3);
  v18 = *(v8 + 8);
  v18(v10, v7);
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v19 = sub_22766C950();
  aBlock[4] = sub_2275DA4D0;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_44;
  v20 = _Block_copy(aBlock);

  v21 = v26;
  sub_22766B3D0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_226E9EDA8(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9CFD0(&qword_2813A5860, &unk_27D7BA240, &unk_227674420, MEMORY[0x277D83970]);
  v22 = v28;
  v23 = v29;
  sub_22766CC80();
  MEMORY[0x22AA98C50](v13, v21, v22, v20);
  _Block_release(v20);

  (*(v32 + 8))(v22, v23);
  (*(v30 + 8))(v21, v31);
  return (v18)(v13, v25);
}

uint64_t sub_2275D9F14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v57 = &v50 - v12;
  MEMORY[0x28223BE20](v14);
  v54 = &v50 - v15;
  MEMORY[0x28223BE20](v16);
  v60 = &v50 - v17;
  MEMORY[0x28223BE20](v18);
  v55 = a1;
  v56 = &v50 - v19;
  __swift_project_boxed_opaque_existential_0((a1 + 416), *(a1 + 440));
  sub_22708193C(byte_283A95FC0, v13);
  v52 = v10;
  sub_2275DA4D8(v10);
  v20 = *(v3 + 16);
  v20(v7, v10, v2);
  v58 = v20;
  v59 = v3 + 16;
  v21 = *(v3 + 80);
  v22 = v3;
  v61 = v3;
  v23 = (v21 + 16) & ~v21;
  v24 = v23 + v4;
  v25 = v21;
  v26 = swift_allocObject();
  v27 = *(v22 + 32);
  v27(v26 + v23, v7, v2);
  v28 = v53;
  v20(v53, v57, v2);
  v29 = (v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = v25;
  v30 = swift_allocObject();
  v31 = v23;
  v51 = v23;
  v27(v30 + v23, v28, v2);
  v32 = (v30 + v29);
  *v32 = sub_226EC14C0;
  v32[1] = v26;
  v33 = v54;
  sub_227669270();
  v34 = *(v61 + 8);
  v61 += 8;
  v53 = v34;
  (v34)(v52, v2);
  v35 = v57;
  (v34)(v57, v2);
  v36 = swift_allocObject();
  v36[2] = 0xD000000000000029;
  v36[3] = 0x80000002276A4240;
  v36[4] = 22;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_226F323BC;
  *(v37 + 24) = v36;
  v58(v35, v33, v2);
  v38 = swift_allocObject();
  v27(v38 + v31, v35, v2);
  v39 = (v38 + v29);
  *v39 = sub_226F323DC;
  v39[1] = v37;
  v40 = v60;
  sub_227669270();
  v41 = v53;
  (v53)(v33, v2);
  v42 = swift_allocObject();
  v43 = v55;
  *(v42 + 16) = sub_2275DE8D0;
  *(v42 + 24) = v43;
  v58(v33, v40, v2);
  v44 = swift_allocObject();
  v27(v44 + v51, v33, v2);
  v45 = (v44 + v29);
  *v45 = sub_227086964;
  v45[1] = v42;

  v46 = v56;
  sub_227669270();
  v41(v60, v2);
  v47 = sub_227669290();
  v48 = swift_allocObject();
  *(v48 + 16) = sub_2275DAD5C;
  *(v48 + 24) = 0;
  v47(sub_226E9F7B0, v48);

  return (v41)(v46, v2);
}

uint64_t sub_2275DA4D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v45);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9B0, &unk_227677C50);
  v9 = *(v49 - 8);
  v46 = *(v9 + 64);
  MEMORY[0x28223BE20](v49);
  v47 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v44 = &v44 - v12;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v13 = *(v52 - 8);
  v51 = *(v13 + 64);
  MEMORY[0x28223BE20](v52);
  v50 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = &v44 - v16;
  v17 = sub_22766B390();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v18 + 8))(v20, v17);
  v21 = *(v2 + 75);
  v22 = *(v2 + 76);
  __swift_project_boxed_opaque_existential_0(v2 + 72, v21);

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_226ECF5D8(sub_2275DECC4, v2, v21, v23, v22, v8);

  v24 = v45;
  (*(v3 + 16))(v5, v8, v45);
  v25 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v26 = swift_allocObject();
  (*(v3 + 32))(v26 + v25, v5, v24);
  v27 = (v26 + ((v4 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_2275DECE0;
  v27[1] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC90, &qword_2276873F0);
  v28 = v44;
  sub_227669270();
  (*(v3 + 8))(v8, v24);
  v29 = v47;
  v30 = v49;
  (*(v9 + 16))(v47, v28, v49);
  v31 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v32 = (v46 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v9 + 32))(v33 + v31, v29, v30);
  v34 = (v33 + v32);
  *v34 = sub_2275DED10;
  v34[1] = v2;

  v35 = v48;
  sub_227669270();
  (*(v9 + 8))(v28, v30);
  v36 = v50;
  v37 = v35;
  v38 = v52;
  (*(v13 + 16))(v50, v35, v52);
  v39 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v40 = (v51 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  (*(v13 + 32))(v41 + v39, v36, v38);
  v42 = (v41 + v40);
  *v42 = sub_2275DD6C0;
  v42[1] = 0;
  sub_227669270();
  return (*(v13 + 8))(v37, v38);
}

uint64_t sub_2275DAB04(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = a1[75];
  v10 = a1[76];
  __swift_project_boxed_opaque_existential_0(a1 + 72, v9);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_226ECF5D8(sub_2275DE8D8, a1, v9, v11, v10, v8);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_22732030C;
  *(v12 + 24) = a1;
  (*(v3 + 16))(v5, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v13, v5, v2);
  v16 = (v15 + v14);
  *v16 = sub_226FBE058;
  v16[1] = v12;

  sub_227669270();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_2275DAD5C()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_226E8E000, v4, v5, "Recovery - Completed", v6, 2u);
    MEMORY[0x22AA9A450](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_2275DAE90(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v140 = a3;
  v150 = *MEMORY[0x277D85DE8];
  v6 = sub_227663480();
  v144 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v128 - v14;
  __swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520));
  sub_2276696A0();
  if (v3)
  {
    return;
  }

  v138 = v15;
  v141 = v8;
  v142 = v6;
  v133 = v12;
  v134 = a1;
  v135 = v10;
  v136 = v9;
  v143 = 0;
  v16 = v147;
  v17 = v148;
  v18 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v18 + 16);
  v22 = v18[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v23 = swift_allocObject();
  v24 = v19;
  v25 = v20;

  sub_22766A070();
  *(v23 + 16) = v24;
  *(v23 + 24) = v25;
  *(v23 + 32) = v21;
  *(v23 + 40) = v22;
  swift_getKeyPath();
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v147 = v16;
  v148 = v17;
  v26 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v27 = sub_22766C820();
  sub_226ED25F8(&v147, v145);
  v28 = v146;
  if (v146)
  {
    v29 = __swift_project_boxed_opaque_existential_0(v145, v146);
    v30 = *(v28 - 8);
    v31 = MEMORY[0x28223BE20](v29);
    v33 = v128 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v33, v31);
    v34 = sub_22766D170();
    (*(v30 + 8))(v33, v28);
    __swift_destroy_boxed_opaque_existential_0(v145);
  }

  else
  {
    v34 = 0;
  }

  v35 = objc_opt_self();
  v36 = [v35 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  v38 = [objc_allocWithZone(v37) initWithLeftExpression:v27 rightExpression:v36 modifier:0 type:4 options:0];

  sub_226EBC888(&v147);
  v39 = qword_2813B2078;
  swift_beginAccess();
  v40 = v38;
  v139 = v39;
  v41 = sub_22766A080();
  v43 = v42;
  MEMORY[0x22AA985C0]();
  if (*((*v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    sub_22766C3A0();
    (v41)(&v147, 0);
    swift_endAccess();

    swift_getKeyPath();
    v44 = sub_227664570();
    v149 = MEMORY[0x277D83B88];
    v147 = v44;

    v45 = sub_22766C820();
    sub_226ED25F8(&v147, v145);
    v46 = v146;
    if (v146)
    {
      v47 = __swift_project_boxed_opaque_existential_0(v145, v146);
      v137 = v26;
      v132 = v128;
      v48 = v37;
      v49 = v35;
      v50 = *(v46 - 8);
      v51 = MEMORY[0x28223BE20](v47);
      v53 = v128 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v50 + 16))(v53, v51);
      v54 = sub_22766D170();
      (*(v50 + 8))(v53, v46);
      v35 = v49;
      v37 = v48;
      __swift_destroy_boxed_opaque_existential_0(v145);
    }

    else
    {
      v54 = 0;
    }

    v55 = [v35 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v56 = [objc_allocWithZone(v37) initWithLeftExpression:v45 rightExpression:v55 modifier:0 type:4 options:0];

    sub_226EBC888(&v147);
    swift_getKeyPath();
    v57 = sub_227664570();
    v149 = MEMORY[0x277D83B88];
    v147 = v57;

    v58 = sub_22766C820();
    sub_226ED25F8(&v147, v145);
    v59 = v146;
    if (v146)
    {
      v60 = __swift_project_boxed_opaque_existential_0(v145, v146);
      v137 = v35;
      v132 = v128;
      v61 = v56;
      v62 = v37;
      v63 = *(v59 - 8);
      v64 = MEMORY[0x28223BE20](v60);
      v66 = v128 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v63 + 16))(v66, v64);
      v67 = sub_22766D170();
      (*(v63 + 8))(v66, v59);
      v37 = v62;
      v56 = v61;
      v35 = v137;
      __swift_destroy_boxed_opaque_existential_0(v145);
    }

    else
    {
      v67 = 0;
    }

    v68 = [v35 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v69 = [objc_allocWithZone(v37) initWithLeftExpression:v58 rightExpression:v68 modifier:0 type:4 options:0];

    sub_226EBC888(&v147);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_2276756A0;
    *(v70 + 32) = v56;
    *(v70 + 40) = v69;
    v71 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF20, &qword_2276869F0));
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v72 = v56;
    v73 = v69;
    v74 = sub_22766C2B0();

    v75 = [v71 initWithType:2 subpredicates:v74];

    swift_beginAccess();
    v76 = v75;
    v35 = &v147;
    v77 = sub_22766A080();
    v79 = v78;
    MEMORY[0x22AA985C0]();
    if (*((*v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v77(&v147, 0);
    swift_endAccess();

    v80 = v143;
    v81 = sub_2272328B8(100);
    v143 = v80;
    if (v80)
    {
      swift_setDeallocating();

      v82 = qword_2813B2078;
      v83 = sub_22766A100();
      (*(*(v83 - 8) + 8))(v23 + v82, v83);
      swift_deallocClassInstance();
      return;
    }

    v84 = v81;
    swift_setDeallocating();

    v85 = qword_2813B2078;
    v86 = sub_22766A100();
    (*(*(v86 - 8) + 8))(v23 + v85, v86);
    swift_deallocClassInstance();
    v87 = v138;
    sub_22766A6C0();

    v88 = sub_22766B380();
    v89 = sub_22766C8B0();

    v90 = os_log_type_enabled(v88, v89);
    v139 = v84;
    if (v90)
    {
      v35 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v147 = v23;
      *v35 = 141558274;
      *(v35 + 4) = 1752392040;
      *(v35 + 6) = 2080;
      sub_226E9EDA8(&unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
      v91 = sub_22766C610();
      v93 = sub_226E97AE8(v91, v92, &v147);

      *(v35 + 14) = v93;
      v84 = v139;
      _os_log_impl(&dword_226E8E000, v88, v89, "Recovery - found bundles %{mask.hash}s", v35, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AA9A450](v23, -1, -1);
      MEMORY[0x22AA9A450](v35, -1, -1);
    }

    v130 = *(v135 + 8);
    v130(v87, v136);
    v94 = *(v84 + 32);
    v95 = v94 & 0x3F;
    v26 = 1;
    v96 = ((1 << v94) + 63) >> 6;
    v97 = 8 * v96;

    if (v95 > 0xD)
    {
      break;
    }

LABEL_19:
    v129 = v96;
    v128[1] = v128;
    MEMORY[0x28223BE20](v98);
    v131 = v128 - ((v97 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v131, v97);
    v132 = 0;
    v41 = 0;
    v99 = v84 + 56;
    v100 = 1 << *(v84 + 32);
    v101 = -1;
    if (v100 < 64)
    {
      v101 = ~(-1 << v100);
    }

    v37 = v101 & *(v84 + 56);
    v40 = ((v100 + 63) >> 6);
    v137 = (v144 + 8);
    v138 = (v144 + 16);
    while (v37)
    {
      v102 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v26 = v102 | (v41 << 6);
      v103 = v141;
      v104 = v139;
LABEL_29:
      v23 = v144;
      v35 = v142;
      (*(v144 + 16))(v103, *(v104 + 48) + *(v144 + 72) * v26, v142);
      v104 = v103;
      v147 = sub_2276633F0();
      LOBYTE(v148) = v107 & 1;
      LOBYTE(v145[0]) = 1;
      sub_226F32810();
      sub_226F32864();
      v108 = sub_227663B30();
      (*(v23 + 8))(v104, v35);
      if (v108)
      {
        *&v131[(v26 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v26;
        v109 = __OFADD__(v132, 1);
        v132 = (v132 + 1);
        if (v109)
        {
          __break(1u);
LABEL_33:
          v110 = sub_22726AD50(v131, v129, v132, v104);
          goto LABEL_34;
        }
      }
    }

    v105 = v41;
    v103 = v141;
    v104 = v139;
    while (1)
    {
      v41 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        break;
      }

      if (v41 >= v40)
      {
        goto LABEL_33;
      }

      v106 = *(v99 + 8 * v41);
      ++v105;
      if (v106)
      {
        v37 = (v106 - 1) & v106;
        v26 = __clz(__rbit64(v106)) | (v41 << 6);
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_41:
    sub_22766C360();
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    v26 = 1;
    goto LABEL_19;
  }

  v124 = swift_slowAlloc();
  v125 = v143;
  v126 = sub_2275DE554(v124, v96, v84, sub_2275DBF64, 0);
  v143 = v125;
  if (v125)
  {

    MEMORY[0x22AA9A450](v124, -1, -1);
    __break(1u);
  }

  else
  {
    v127 = v126;
    v104 = v139;

    MEMORY[0x22AA9A450](v124, -1, -1);
    v110 = v127;
LABEL_34:
    v111 = v143;
    v112 = sub_2275D91B0(v110);

    v113 = v133;
    sub_22766A6C0();

    v114 = sub_22766B380();
    v115 = sub_22766C8B0();

    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v147 = v117;
      *v116 = 136446210;
      v118 = sub_2276662D0();
      v119 = MEMORY[0x22AA98660](v112, v118);
      v121 = sub_226E97AE8(v119, v120, &v147);

      *(v116 + 4) = v121;
      _os_log_impl(&dword_226E8E000, v114, v115, "Recovery - inserting load failures %{public}s", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v117);
      v122 = v117;
      v104 = v139;
      MEMORY[0x22AA9A450](v122, -1, -1);
      MEMORY[0x22AA9A450](v116, -1, -1);
    }

    v130(v113, v136);
    v123 = __swift_project_boxed_opaque_existential_0(v134, v134[3]);
    sub_227567CEC(v112, v123[1], *(v123 + 16), v123[3]);

    if (v111)
    {
    }

    else
    {
      *v140 = v104;
    }
  }
}

uint64_t sub_2275DBF64(uint64_t a1)
{
  sub_2276633F0();
  sub_226F32810();
  sub_226F32864();
  return sub_227663B30() & 1;
}

double sub_2275DBFD8@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2[75];
  v7 = a2[76];
  __swift_project_boxed_opaque_existential_0(a2 + 72, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = v5;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC90, &qword_2276873F0);
  sub_226ECF5D8(sub_2275DEEA0, v8, v6, v9, v7, a3);

  return result;
}

uint64_t sub_2275DC0B4@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v66 - v12;
  result = sub_2275DF610(a2, a1);
  if (!v3)
  {
    v15 = result;
    v67 = v13;
    v68 = a2;
    v71 = a3;
    v72 = v10;
    v69 = v8;
    v70 = v7;
    v16 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v16 + 16);
    v20 = v16[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85D8, qword_227687220);
    v21 = swift_allocObject();
    v22 = v17;
    v23 = v18;

    sub_22766A070();
    *(v21 + 16) = v22;
    *(v21 + 24) = v23;
    *(v21 + 32) = v19;
    *(v21 + 40) = v20;
    swift_getKeyPath();
    v77 = v15;
    v24 = sub_2275D96A8(v15);
    v76[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
    v76[0] = v24;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v25 = sub_22766C820();
    sub_226ED25F8(v76, v74);
    v26 = v75;
    if (v75)
    {
      v27 = __swift_project_boxed_opaque_existential_0(v74, v75);
      v28 = *(v26 - 8);
      v29 = MEMORY[0x28223BE20](v27);
      v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v31, v29);
      v32 = sub_22766D170();
      (*(v28 + 8))(v31, v26);
      __swift_destroy_boxed_opaque_existential_0(v74);
    }

    else
    {
      v32 = 0;
    }

    v33 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E0 qword_227677890))];

    sub_226EBC888(v76);
    swift_beginAccess();
    v34 = sub_22766A080();
    v36 = v35;
    MEMORY[0x22AA985C0]();
    if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v34(v76, 0);
    swift_endAccess();

    v37 = sub_2272FA7E8(0x64);
    v73 = 0;
    v38 = v37;
    swift_setDeallocating();

    v39 = qword_2813B2078;
    v40 = sub_22766A100();
    (*(*(v40 - 8) + 8))(v21 + v39, v40);
    swift_deallocClassInstance();
    v41 = v77;
    if (v38[2])
    {
      v42 = v67;
      sub_22766A6C0();

      v43 = sub_22766B380();
      v44 = sub_22766C8B0();

      v45 = os_log_type_enabled(v43, v44);
      v46 = v70;
      if (v45)
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v76[0] = v48;
        *v47 = 136446210;
        sub_2276662D0();
        sub_226E9EDA8(&qword_28139B6A8, MEMORY[0x277D52258], MEMORY[0x277D52260]);
        v49 = sub_22766C610();
        v51 = v50;

        v52 = sub_226E97AE8(v49, v51, v76);

        *(v47 + 4) = v52;
        _os_log_impl(&dword_226E8E000, v43, v44, "Recovery - cleared failures for unrecoverable bundles %{public}s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x22AA9A450](v48, -1, -1);
        v41 = v77;
        MEMORY[0x22AA9A450](v47, -1, -1);
      }

      else
      {
      }

      v53 = v69;
      (*(v69 + 8))(v42, v46);
    }

    else
    {

      v53 = v69;
      v46 = v70;
    }

    v54 = v72;
    v55 = v68;
    if (*(v41 + 16) <= *(v68 + 16) >> 3)
    {
      v76[0] = v68;

      sub_2270063F0(v41);
      v56 = v76[0];
      if (!*(v41 + 16))
      {
LABEL_20:
        v64 = sub_2275D8E04(v41, 6);

        v65 = sub_2275D8E04(v56, 0);

        v76[0] = v64;
        result = sub_227462AD4(v65);
        *v71 = v76[0];
        return result;
      }
    }

    else
    {

      v56 = sub_22700B6B8(v41, v55);
      if (!*(v41 + 16))
      {
        goto LABEL_20;
      }
    }

    sub_22766A6C0();

    v57 = sub_22766B380();
    v58 = sub_22766C8B0();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v76[0] = v60;
      *v59 = 141558274;
      *(v59 + 4) = 1752392040;
      *(v59 + 12) = 2080;
      sub_227663480();
      sub_226E9EDA8(&unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
      v61 = sub_22766C610();
      v63 = sub_226E97AE8(v61, v62, v76);

      *(v59 + 14) = v63;
      _os_log_impl(&dword_226E8E000, v57, v58, "Recovery - marking as failed: %{mask.hash}s", v59, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v60);
      v41 = v77;
      MEMORY[0x22AA9A450](v60, -1, -1);
      MEMORY[0x22AA9A450](v59, -1, -1);

      (*(v53 + 8))(v72, v46);
    }

    else
    {

      (*(v53 + 8))(v54, v46);
    }

    goto LABEL_20;
  }

  return result;
}

void sub_2275DC9D0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v10 = &v25 - v9;
  v11 = *a1;
  v12 = *(*a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v25 = a3;
    v35 = MEMORY[0x277D84F90];
    v31 = v12;
    sub_226F1F4E8(0, v12, 0);
    v14 = 0;
    v13 = v35;
    v29 = v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v30 = (v6 + 8);
    v32 = v8;
    v27 = v8 + 32;
    v28 = v6 + 16;
    v15 = v26;
    while (v14 < *(v11 + 16))
    {
      v16 = v29 + *(v6 + 72) * v14;
      v17 = v6;
      v18 = *(v6 + 16);
      v19 = v33;
      v18(v33, v16, v5);
      sub_2275DCD50(v19, v15, v10);
      v20 = v19;
      v21 = v5;
      (*v30)(v20, v5);
      v35 = v13;
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F1F4E8((v22 > 1), v23 + 1, 1);
        v15 = v26;
        v13 = v35;
      }

      ++v14;
      *(v13 + 16) = v23 + 1;
      (*(v32 + 32))(v13 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v23, v10, v34);
      v5 = v21;
      v6 = v17;
      if (v31 == v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    (*v30)(v6, v5);

    __break(1u);
  }

  else
  {
LABEL_7:
    v35 = v13;
    sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
    v24 = sub_22766C950();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
    sub_226E9CFD0(&qword_281398FB0, &qword_27D7BA0C8, qword_227677C60, MEMORY[0x277D83988]);
    sub_227669240();
  }
}

uint64_t sub_2275DCD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a3;
  v93 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x28223BE20](v4);
  v82 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v96 = &v74 - v7;
  v81 = v8;
  MEMORY[0x28223BE20](v9);
  v83 = &v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v89 = *(v11 - 8);
  v90 = v11;
  MEMORY[0x28223BE20](v11);
  v87 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v12;
  MEMORY[0x28223BE20](v13);
  v88 = &v74 - v14;
  v15 = sub_227663480();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v77 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v74 - v19;
  v76 = sub_22766B390();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v92 = v16;
  v78 = *(v16 + 16);
  v78(v20, a1, v15);
  v23 = sub_22766B380();
  v24 = sub_22766C8B0();
  v25 = os_log_type_enabled(v23, v24);
  v80 = v15;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v74 = a1;
    v27 = v26;
    v28 = swift_slowAlloc();
    v95[0] = v28;
    *v27 = 141558274;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2080;
    sub_226E9EDA8(&qword_27D7B85C0, MEMORY[0x277D4FF88], MEMORY[0x277D4FFA0]);
    v29 = sub_22766D140();
    v30 = v15;
    v32 = v31;
    v92[1](v20, v30);
    v33 = sub_226E97AE8(v29, v32, v95);

    *(v27 + 14) = v33;
    _os_log_impl(&dword_226E8E000, v23, v24, "Recovery - Load - inserting %{mask.hash}s", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9A450](v28, -1, -1);
    v34 = v27;
    a1 = v74;
    MEMORY[0x22AA9A450](v34, -1, -1);
  }

  else
  {

    v92[1](v20, v15);
  }

  (*(v75 + 8))(v22, v76);
  v35 = __swift_project_boxed_opaque_existential_0((v93 + 56), *(v93 + 80));
  v36 = *v35;
  v37 = *(*v35 + 336);
  v76 = *(*v35 + 344);
  __swift_project_boxed_opaque_existential_0((v36 + 312), v37);
  v38 = v77;
  v39 = v80;
  v78(v77, a1, v80);
  v40 = v92;
  v41 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v42 = (v79 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (v40[4])(v43 + v41, v38, v39);
  *(v43 + v42) = v36;

  v44 = v96;
  sub_226ECF5D8(sub_227320380, v43, v37, v39, v76, v96);

  v45 = v85;
  v46 = *(v85 + 16);
  v79 = v85 + 16;
  v92 = v46;
  v47 = v82;
  v48 = v86;
  (v46)(v82, v44, v86);
  v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v78 = *(v45 + 80);
  v77 = v49;
  v50 = (v81 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = v50;
  v51 = swift_allocObject();
  v81 = *(v45 + 32);
  v81(v51 + v49, v47, v48);
  v52 = (v51 + v50);
  *v52 = sub_227320190;
  v52[1] = v36;

  v53 = v83;
  sub_227669270();
  v54 = *(v45 + 8);
  v55 = v96;
  v54(v96, v48);
  v56 = *__swift_project_boxed_opaque_existential_0((v93 + 56), *(v93 + 80));
  v95[3] = type metadata accessor for AssetBundleHandler();
  v95[4] = &off_283AC3B48;
  v95[0] = v56;
  sub_226E91B50(v95, v94);
  v57 = swift_allocObject();
  sub_226F19770(v94, v57 + 16);

  __swift_destroy_boxed_opaque_existential_0(v95);
  (v92)(v55, v53, v48);
  v58 = v76;
  v59 = swift_allocObject();
  v60 = v55;
  v61 = v48;
  v81(&v77[v59], v60, v48);
  v62 = (v59 + v58);
  *v62 = sub_2275DED68;
  v62[1] = v57;
  v63 = v88;
  sub_227669270();
  v54(v53, v61);
  v64 = swift_allocObject();
  v64[2] = 0xD000000000000029;
  v64[3] = 0x80000002276A4240;
  v64[4] = 79;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_226F33024;
  *(v65 + 24) = v64;
  v67 = v89;
  v66 = v90;
  v68 = v87;
  (*(v89 + 16))(v87, v63, v90);
  v69 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v70 = (v84 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (*(v67 + 32))(v71 + v69, v68, v66);
  v72 = (v71 + v70);
  *v72 = sub_226F32FE8;
  v72[1] = v65;
  sub_227669270();
  return (*(v67 + 8))(v63, v66);
}

void sub_2275DD6C0(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v6 = *a1;
    v7 = *a1;
    sub_22766A6C0();
    v8 = v6;
    v9 = sub_22766B380();
    v10 = sub_22766C890();
    sub_226EB4548(v6, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      swift_getErrorValue();
      v13 = MEMORY[0x22AA995D0](v16[2], v16[3]);
      v15 = sub_226E97AE8(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_226E8E000, v9, v10, "Recovery - Failed with error %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x22AA9A450](v12, -1, -1);
      MEMORY[0x22AA9A450](v11, -1, -1);

      sub_226EB4548(v6, 1);
    }

    else
    {
      sub_226EB4548(v6, 1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_2275DD8C8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520));
  sub_2276696A0();
  if (!v3)
  {
    v98 = v10;
    v99 = v8;
    v100 = v7;
    v101 = a3;
    v104 = 0;
    v12 = v107;
    v11 = v108;
    v13 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(v13 + 16);
    v17 = v13[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v18 = swift_allocObject();
    v19 = v14;
    v20 = v15;

    sub_22766A070();
    *(v18 + 16) = v19;
    *(v18 + 24) = v20;
    *(v18 + 32) = v16;
    *(v18 + 40) = v17;
    swift_getKeyPath();
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v97 = v12;
    v107 = v12;
    v108 = v11;
    v21 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
    v103 = v11;

    v110 = v21;
    v22 = sub_22766C820();
    sub_226ED25F8(&v107, v105);
    v23 = v106;
    if (v106)
    {
      v24 = __swift_project_boxed_opaque_existential_0(v105, v106);
      v25 = *(v23 - 8);
      v26 = MEMORY[0x28223BE20](v24);
      v28 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v28, v26);
      v29 = sub_22766D170();
      (*(v25 + 8))(v28, v23);
      __swift_destroy_boxed_opaque_existential_0(v105);
    }

    else
    {
      v29 = 0;
    }

    v30 = objc_opt_self();
    v31 = [v30 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
    v33 = [objc_allocWithZone(v32) initWithLeftExpression:v22 rightExpression:v31 modifier:0 type:4 options:0];

    sub_226EBC888(&v107);
    v34 = qword_2813B2078;
    swift_beginAccess();
    v35 = v33;
    v102 = v34;
    v36 = sub_22766A080();
    v38 = v37;
    MEMORY[0x22AA985C0]();
    if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v36(&v107, 0);
    swift_endAccess();

    swift_getKeyPath();
    v39 = sub_227664570();
    v40 = MEMORY[0x277D83B88];
    v109 = MEMORY[0x277D83B88];
    v107 = v39;

    v41 = sub_22766C820();
    sub_226ED25F8(&v107, v105);
    v42 = v106;
    if (v106)
    {
      v43 = __swift_project_boxed_opaque_existential_0(v105, v106);
      v96 = &v95;
      v44 = v32;
      v45 = v30;
      v46 = *(v42 - 8);
      v47 = MEMORY[0x28223BE20](v43);
      v49 = &v95 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v46 + 16))(v49, v47);
      v50 = sub_22766D170();
      (*(v46 + 8))(v49, v42);
      v30 = v45;
      v32 = v44;
      v40 = MEMORY[0x277D83B88];
      __swift_destroy_boxed_opaque_existential_0(v105);
    }

    else
    {
      v50 = 0;
    }

    v51 = [v30 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v52 = [objc_allocWithZone(v32) initWithLeftExpression:v41 rightExpression:v51 modifier:0 type:4 options:0];

    sub_226EBC888(&v107);
    swift_getKeyPath();
    v53 = sub_227664570();
    v109 = v40;
    v107 = v53;

    v54 = sub_22766C820();
    sub_226ED25F8(&v107, v105);
    v55 = v106;
    if (v106)
    {
      v56 = __swift_project_boxed_opaque_existential_0(v105, v106);
      v110 = v30;
      v96 = &v95;
      v57 = v52;
      v58 = v32;
      v59 = *(v55 - 8);
      v60 = MEMORY[0x28223BE20](v56);
      v62 = &v95 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v59 + 16))(v62, v60);
      v63 = sub_22766D170();
      (*(v59 + 8))(v62, v55);
      v32 = v58;
      v52 = v57;
      v30 = v110;
      __swift_destroy_boxed_opaque_existential_0(v105);
    }

    else
    {
      v63 = 0;
    }

    v64 = [v30 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v65 = [objc_allocWithZone(v32) initWithLeftExpression:v54 rightExpression:v64 modifier:0 type:4 options:0];

    sub_226EBC888(&v107);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_2276756A0;
    *(v66 + 32) = v52;
    *(v66 + 40) = v65;
    v67 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF20, &qword_2276869F0));
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v68 = v52;
    v69 = v65;
    v70 = sub_22766C2B0();

    v71 = [v67 initWithType:2 subpredicates:v70];

    swift_beginAccess();
    v72 = v71;
    v73 = sub_22766A080();
    v75 = v74;
    MEMORY[0x22AA985C0]();
    if (*((*v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v73(&v107, 0);
    swift_endAccess();

    v76 = v104;
    v77 = sub_2272328B8(100);
    if (v76)
    {

      swift_setDeallocating();

      v78 = qword_2813B2078;
      v79 = sub_22766A100();
      (*(*(v79 - 8) + 8))(v18 + v78, v79);
      swift_deallocClassInstance();
    }

    else
    {
      v80 = v77;
      swift_setDeallocating();

      v81 = qword_2813B2078;
      v82 = sub_22766A100();
      (*(*(v82 - 8) + 8))(v18 + v81, v82);
      swift_deallocClassInstance();
      v83 = v98;
      sub_22766A6C0();

      v84 = sub_22766B380();
      v85 = sub_22766C8B0();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v107 = v87;
        *v86 = 141558274;
        *(v86 + 4) = 1752392040;
        *(v86 + 12) = 2080;
        sub_227663480();
        sub_226E9EDA8(&unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
        v88 = sub_22766C610();
        v90 = sub_226E97AE8(v88, v89, &v107);

        *(v86 + 14) = v90;
        _os_log_impl(&dword_226E8E000, v84, v85, "Recovery - Cancellation - found bundles %{mask.hash}s", v86, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v87);
        MEMORY[0x22AA9A450](v87, -1, -1);
        MEMORY[0x22AA9A450](v86, -1, -1);
      }

      (*(v99 + 8))(v83, v100);
      v91 = v101;
      v92 = v103;

      v93 = sub_2275DE91C(v80, v97, v92);

      swift_bridgeObjectRelease_n();
      v94 = sub_226F40934(v93);

      *v91 = v94;
    }
  }
}

unint64_t *sub_2275DE4B8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_2275DEEBC(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_2275DE554(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_2272C55BC(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

unint64_t *sub_2275DE5E4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_2275DE7BC(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_2275DE65C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_2275DE7BC(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_2275DE5E4(v8, v4, v2);
  result = MEMORY[0x22AA9A450](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_2275DE7BC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) >= 10)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_227329E14(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_227329E14(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2275DE91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = v3;
    v49 = MEMORY[0x277D84F90];
    sub_226F1F568(0, v11, 0);
    v47 = a1 + 56;
    v48 = v49;
    result = sub_22766CC90();
    v13 = result;
    v14 = 0;
    v39 = v6 + 8;
    v40 = v6 + 16;
    v37 = v11;
    v38 = v6 + 32;
    v36 = a1 + 64;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v47 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_23;
      }

      v17 = *(a1 + 36);
      v44 = v14;
      v45 = v17;
      v18 = *(a1 + 48);
      v46 = *(v6 + 72);
      v19 = v41;
      (*(v6 + 16))(v41, v18 + v46 * v13, v5);
      sub_227663470();
      (*(v6 + 8))(v19, v5);
      v20 = v48;
      v49 = v48;
      v21 = a1;
      v23 = *(v48 + 16);
      v22 = *(v48 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v48 = v23 + 1;
        sub_226F1F568((v22 > 1), v23 + 1, 1);
        v24 = v48;
        v20 = v49;
      }

      *(v20 + 16) = v24;
      v25 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v48 = v20;
      result = (*(v6 + 32))(v20 + v25 + v23 * v46, v10, v5);
      v15 = 1 << *(v21 + 32);
      if (v13 >= v15)
      {
        goto LABEL_24;
      }

      v26 = *(v47 + 8 * v16);
      if ((v26 & (1 << v13)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v21;
      if (v45 != *(v21 + 36))
      {
        goto LABEL_26;
      }

      v27 = v26 & (-2 << (v13 & 0x3F));
      if (v27)
      {
        v15 = __clz(__rbit64(v27)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v10;
        v29 = v5;
        v30 = v16 << 6;
        v31 = v16 + 1;
        v32 = (v36 + 8 * v16);
        while (v31 < (v15 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_226EB526C(v13, v45, 0);
            v15 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v13, v45, 0);
LABEL_19:
        v5 = v29;
        v10 = v28;
      }

      v14 = v44 + 1;
      v13 = v15;
      if (v44 + 1 == v37)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2275DEDD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_2275DEEBC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v40 = a1;
  v6 = sub_227663480();
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v48 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v41 = 0;
  v42 = v8 + 16;
  v49 = a4 + 56;
  v43 = v8;
  v44 = (v8 + 8);
  v45 = v11;
  v46 = v7;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_13:
    v23 = v20 | (v12 << 6);
    v24 = *(v48 + 48);
    v25 = *(v43 + 72);
    v47 = v23;
    (*(v43 + 16))(v11, v24 + v25 * v23, v6, v9);
    v26 = sub_2276633E0();
    v28 = v27;
    if (*(a4 + 16) && (v29 = v26, sub_22766D370(), sub_22766C100(), v30 = sub_22766D3F0(), v31 = -1 << *(a4 + 32), v32 = v30 & ~v31, ((*(v49 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
    {
      v33 = ~v31;
      while (1)
      {
        v34 = (*(a4 + 48) + 16 * v32);
        v35 = *v34 == v29 && v34[1] == v28;
        if (v35 || (sub_22766D190() & 1) != 0)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v49 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v11 = v45;
      v6 = v46;
      (*v44)(v45, v46);
      *(v40 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
LABEL_26:
        v37 = v48;

        sub_22726AD50(v40, v39, v41, v37);
        return;
      }
    }

    else
    {
LABEL_5:

      v11 = v45;
      v6 = v46;
      (*v44)(v45, v46);
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_26;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_2275DF1C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = *MEMORY[0x277D85DE8];
  v6 = sub_227663480();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  v52 = a2;
  if (v9 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v41 = v10;
    v42 = v3;
    v40 = &v40;
    MEMORY[0x28223BE20](v12);
    v43 = &v40 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v11);
    v10 = 0;
    v13 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(a1 + 56);
    v11 = (v14 + 63) >> 6;
    v17 = v7 + 16;
    v18 = v7;
    v7 = a2 + 56;
    v48 = v17;
    v49 = v18;
    v44 = 0;
    v45 = (v18 + 8);
    v46 = v6;
    v47 = a1;
    while (v16)
    {
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v22 = v19 | (v10 << 6);
      v23 = *(a1 + 48);
      v24 = *(v49 + 72);
      v50 = v22;
      (*(v49 + 16))(v51, v23 + v24 * v22, v6);
      v25 = sub_2276633E0();
      v27 = v26;
      if (*(v52 + 16) && (v28 = v25, sub_22766D370(), sub_22766C100(), v29 = sub_22766D3F0(), v30 = v52, v31 = -1 << *(v52 + 32), v32 = v29 & ~v31, ((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
      {
        v3 = ~v31;
        while (1)
        {
          v33 = (*(v30 + 48) + 16 * v32);
          v34 = *v33 == v28 && v33[1] == v27;
          if (v34 || (sub_22766D190() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v3;
          v30 = v52;
          if (((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v6 = v46;
        (*v45)(v51, v46);
        *&v43[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
        v35 = __OFADD__(v44++, 1);
        a1 = v47;
        if (v35)
        {
          __break(1u);
LABEL_27:
          v36 = sub_22726AD50(v43, v41, v44, a1);

          return v36;
        }
      }

      else
      {
LABEL_6:

        v6 = v46;
        (*v45)(v51, v46);
        a1 = v47;
      }
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v10 >= v11)
      {
        goto LABEL_27;
      }

      v21 = *(v13 + 8 * v10);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a2 = v52;
  }

  v38 = swift_slowAlloc();
  v39 = v52;

  v36 = sub_2275DE4B8(v38, v10, a1, v39);

  MEMORY[0x22AA9A450](v38, -1, -1);

  return v36;
}

uint64_t sub_2275DF610(uint64_t a1, void *a2)
{
  v119 = sub_2276662D0();
  v116 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v115 = v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2276662B0();
  v121 = *(v6 - 8);
  v122 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109[1] = a1;
  v9 = sub_2275D8AFC(a1);
  v127 = v2;
  v10 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  v14 = v10[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85D8, qword_227687220);
  v15 = swift_allocObject();
  v16 = v11;
  v17 = v12;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v13;
  *(v15 + 40) = v14;
  swift_getKeyPath();
  v18 = sub_227073F2C(v9);

  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v125[0] = v18;
  v19 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v120 = v19;
  v20 = sub_22766C820();
  sub_226ED25F8(v125, v123);
  v21 = v124;
  if (v124)
  {
    v22 = __swift_project_boxed_opaque_existential_0(v123, v124);
    v23 = *(v21 - 8);
    v24 = MEMORY[0x28223BE20](v22);
    v26 = v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    v27 = sub_22766D170();
    (*(v23 + 8))(v26, v21);
    __swift_destroy_boxed_opaque_existential_0(v123);
  }

  else
  {
    v27 = 0;
  }

  v118 = objc_opt_self();
  v28 = [v118 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E0, qword_227677890);
  [objc_allocWithZone(v117) initWithLeftExpression:v20 rightExpression:v28 modifier:0 type:10 options:0];

  sub_226EBC888(v125);
  swift_beginAccess();
  v29 = sub_22766A080();
  v31 = v30;
  MEMORY[0x22AA985C0]();
  if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    sub_22766C3A0();
    (v29)(v125, 0);
    swift_endAccess();

    swift_getKeyPath();
    v33 = v121;
    v32 = v122;
    (*(v121 + 104))(v8, *MEMORY[0x277D52238], v122);
    v34 = sub_2276662A0();
    v36 = v35;
    (*(v33 + 8))(v8, v32);
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v125[0] = v34;
    v125[1] = v36;

    v37 = sub_22766C820();
    sub_226ED25F8(v125, v123);
    v38 = v124;
    if (v124)
    {
      v39 = __swift_project_boxed_opaque_existential_0(v123, v124);
      v40 = *(v38 - 8);
      v41 = MEMORY[0x28223BE20](v39);
      v43 = v109 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v40 + 16))(v43, v41);
      v44 = sub_22766D170();
      (*(v40 + 8))(v43, v38);
      __swift_destroy_boxed_opaque_existential_0(v123);
    }

    else
    {
      v44 = 0;
    }

    v45 = v127;
    v46 = [v118 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v47 = [objc_allocWithZone(v117) initWithLeftExpression:v37 rightExpression:v46 modifier:0 type:4 options:0];

    sub_226EBC888(v125);
    swift_beginAccess();
    v48 = v47;
    v49 = sub_22766A080();
    v51 = v50;
    MEMORY[0x22AA985C0]();
    if (*((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v49(v125, 0);
    swift_endAccess();

    v52 = sub_22723A0F8(100);
    if (v45)
    {
      break;
    }

    v55 = v52;
    v109[0] = 0;
    swift_setDeallocating();

    v56 = qword_2813B2078;
    v57 = sub_22766A100();
    (*(*(v57 - 8) + 8))(v15 + v56, v57);
    swift_deallocClassInstance();
    v58 = sub_2271481B8(MEMORY[0x277D84F90]);
    v29 = (v55 + 56);
    v59 = 1 << v55[32];
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    else
    {
      v60 = -1;
    }

    v61 = v60 & *(v55 + 7);
    v8 = ((v59 + 63) >> 6);
    v114 = v116 + 16;
    v110 = (v116 + 8);

    v62 = 0;
    v63 = v115;
    v112 = (v55 + 56);
    v113 = v55;
    v111 = v8;
LABEL_17:
    v64 = v58;
    if (!v61)
    {
      while (1)
      {
        v65 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          break;
        }

        if (v65 >= v8)
        {

          v105 = sub_2275DE65C(v58);

          v106 = sub_226F34540(v105);

          v53 = sub_2275DF1C0(v107, v106);

          return v53;
        }

        v61 = *(v29 + 8 * v65);
        ++v62;
        if (v61)
        {
          goto LABEL_22;
        }
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v65 = v62;
LABEL_22:
    v120 = v61;
    v118 = v65;
    (*(v116 + 16))(v63, *(v55 + 6) + *(v116 + 72) * (__clz(__rbit64(v61)) | (v65 << 6)), v119);
    v66 = sub_227666280();
    if (v58[2])
    {
      v68 = sub_226E92000(v66, v67);
      v70 = v69;

      if (v70)
      {
        v71 = *(v58[7] + 8 * v68);
        goto LABEL_27;
      }
    }

    else
    {
    }

    v71 = 0;
LABEL_27:
    v72 = sub_227666280();
    v74 = __OFADD__(v71, 1);
    v75 = v71 + 1;
    if (v74)
    {
      goto LABEL_58;
    }

    v15 = v72;
    v76 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E70, qword_22768D100);
    v77 = sub_22766D010();

    v78 = sub_226E92000(v15, v76);
    v80 = v79;

    if (v80)
    {
      goto LABEL_59;
    }

    v81 = v77 + 64;
    *(v77 + 64 + ((v78 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v78;
    v82 = (*(v77 + 48) + 16 * v78);
    *v82 = v15;
    v82[1] = v76;
    *(*(v77 + 56) + 8 * v78) = v75;
    v83 = *(v77 + 16);
    v74 = __OFADD__(v83, 1);
    v84 = v83 + 1;
    if (!v74)
    {
      v120 &= v120 - 1;
      *(v77 + 16) = v84;
      v58 = v64;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v125[0] = v64;
      v86 = -1 << *(v77 + 32);
      if (-v86 < 64)
      {
        v87 = ~(-1 << -v86);
      }

      else
      {
        v87 = -1;
      }

      v88 = v87 & *(v77 + 64);
      v117 = (-1 << *(v77 + 32));
      v8 = ((63 - v86) >> 6);
      v121 = v77;

      v89 = 0;
      while (v88)
      {
        LODWORD(v127) = isUniquelyReferenced_nonNull_native;
        v90 = v89;
LABEL_43:
        v92 = __clz(__rbit64(v88)) | (v90 << 6);
        v93 = (*(v121 + 48) + 16 * v92);
        v94 = *v93;
        v15 = v93[1];
        v122 = *(*(v121 + 56) + 8 * v92);

        v96 = sub_226E92000(v94, v15);
        v97 = v58[2];
        v98 = (v95 & 1) == 0;
        v99 = v97 + v98;
        if (__OFADD__(v97, v98))
        {
          goto LABEL_56;
        }

        v29 = v95;
        if (v58[3] >= v99)
        {
          if ((v127 & 1) == 0)
          {
            sub_226FF016C();
          }
        }

        else
        {
          sub_226FE2228(v99, v127 & 1);
          v100 = sub_226E92000(v94, v15);
          if ((v29 & 1) != (v101 & 1))
          {
            result = sub_22766D220();
            __break(1u);
            return result;
          }

          v96 = v100;
        }

        v88 &= v88 - 1;
        v58 = v125[0];
        if (v29)
        {

          *(v58[7] + 8 * v96) = v122;
        }

        else
        {
          *(v125[0] + 8 * (v96 >> 6) + 64) |= 1 << v96;
          v102 = (v58[6] + 16 * v96);
          *v102 = v94;
          v102[1] = v15;
          *(v58[7] + 8 * v96) = v122;
          v103 = v58[2];
          v74 = __OFADD__(v103, 1);
          v104 = v103 + 1;
          if (v74)
          {
            goto LABEL_57;
          }

          v58[2] = v104;
        }

        isUniquelyReferenced_nonNull_native = 1;
        v89 = v90;
      }

      v91 = v89;
      while (1)
      {
        v90 = v91 + 1;
        if (__OFADD__(v91, 1))
        {
          break;
        }

        if (v90 >= v8)
        {
          sub_226EBB21C(v121);

          v63 = v115;
          (*v110)(v115, v119);
          v62 = v118;
          v29 = v112;
          v55 = v113;
          v8 = v111;
          v61 = v120;
          goto LABEL_17;
        }

        v88 = *(v81 + 8 * v90);
        ++v91;
        if (v88)
        {
          LODWORD(v127) = isUniquelyReferenced_nonNull_native;
          goto LABEL_43;
        }
      }

      __break(1u);
      goto LABEL_55;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    sub_22766C360();
  }

  swift_setDeallocating();

  v53 = qword_2813B2078;
  v54 = sub_22766A100();
  (*(*(v54 - 8) + 8))(v15 + v53, v54);
  swift_deallocClassInstance();
  return v53;
}

unint64_t sub_2275E02D4()
{
  result = qword_27D7BF6A0;
  if (!qword_27D7BF6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF6A0);
  }

  return result;
}

uint64_t sub_2275E0328(char a1)
{
  result = 65;
  switch(a1)
  {
    case 1:
      result = 66;
      break;
    case 2:
      result = 67;
      break;
    case 3:
      result = 68;
      break;
    case 4:
      result = 69;
      break;
    case 5:
      result = 70;
      break;
    case 6:
      result = 71;
      break;
    case 7:
      result = 72;
      break;
    case 8:
      result = 73;
      break;
    case 9:
      result = 74;
      break;
    case 10:
      result = 75;
      break;
    case 11:
      result = 76;
      break;
    case 12:
      result = 77;
      break;
    case 13:
      result = 78;
      break;
    case 14:
      result = 79;
      break;
    case 15:
      result = 80;
      break;
    case 16:
      result = 81;
      break;
    case 17:
      result = 82;
      break;
    case 18:
      result = 83;
      break;
    case 19:
      result = 84;
      break;
    case 20:
      result = 85;
      break;
    case 21:
      result = 86;
      break;
    case 22:
      result = 87;
      break;
    case 23:
      result = 88;
      break;
    case 24:
      result = 89;
      break;
    case 25:
      result = 12377;
      break;
    case 26:
      result = 12633;
      break;
    case 27:
      result = 12889;
      break;
    case 28:
      result = 90;
      break;
    case 29:
      result = 16705;
      break;
    case 30:
      result = 16961;
      break;
    case 31:
      result = 3228225;
      break;
    case 32:
      result = 17217;
      break;
    case 33:
      result = 17473;
      break;
    case 34:
      result = 17729;
      break;
    case 35:
      result = 17985;
      break;
    case 36:
      result = 18241;
      break;
    case 37:
      result = 18497;
      break;
    case 38:
      result = 18753;
      break;
    case 39:
      result = 19009;
      break;
    case 40:
      result = 19265;
      break;
    case 41:
      result = 19521;
      break;
    case 42:
      result = 19777;
      break;
    case 43:
      result = 20033;
      break;
    case 44:
      result = 20289;
      break;
    case 45:
      result = 20545;
      break;
    case 46:
      result = 20801;
      break;
    case 47:
      result = 21057;
      break;
    case 48:
      result = 21313;
      break;
    case 49:
      result = 21569;
      break;
    case 50:
      result = 21825;
      break;
    case 51:
      result = 22081;
      break;
    case 52:
      result = 22337;
      break;
    case 53:
      result = 22593;
      break;
    case 54:
      result = 22849;
      break;
    case 55:
      result = 23105;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2275E058C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2275E0328(*a1);
  v5 = v4;
  if (v3 == sub_2275E0328(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22766D190();
  }

  return v8 & 1;
}

uint64_t sub_2275E0614()
{
  v1 = *v0;
  sub_22766D370();
  sub_2275E0328(v1);
  sub_22766C100();

  return sub_22766D3F0();
}

double sub_2275E0678(uint64_t a1)
{
  sub_2275E0328(*v1);
  sub_22766C100();

  return result;
}

uint64_t sub_2275E06CC(uint64_t a1)
{
  v2 = *v1;
  sub_22766D370();
  sub_2275E0328(v2);
  sub_22766C100();

  return sub_22766D3F0();
}

unint64_t sub_2275E072C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2275E0994(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2275E075C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2275E0328(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_2275E0808(char a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_2275E0328(a1);
  v5 = v4;
  v6 = 0;
  while (sub_2275E0328(byte_283A917A0[v6 + 32]) != v3 || v7 != v5)
  {
    v9 = sub_22766D190();

    if (v9)
    {
      goto LABEL_10;
    }

    if (++v6 == 56)
    {
LABEL_17:
      sub_22766CFB0();
      __break(1u);
      goto LABEL_18;
    }
  }

LABEL_10:
  v10 = sub_2275E0328(v2);
  v12 = v11;
  v9 = 0;
  while (sub_2275E0328(byte_283A917A0[v9 + 32]) != v10 || v13 != v12)
  {
    v15 = sub_22766D190();

    if (v15)
    {
      return v6 < v9;
    }

    if (++v9 == 56)
    {
      goto LABEL_17;
    }
  }

LABEL_18:

  return v6 < v9;
}

unint64_t sub_2275E0994(uint64_t a1, uint64_t a2)
{
  v2 = sub_22766D1E0();

  if (v2 >= 0x38)
  {
    return 56;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2275E09E8(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a1 - 3;
  if ((a1 - 3) >= 0x1C)
  {
    sub_22766A770();
    v7 = sub_22766B380();
    v8 = sub_22766C890();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = a1;
      _os_log_impl(&dword_226E8E000, v7, v8, "Invalid Legacy Version: %ld.", v9, 0xCu);
      MEMORY[0x22AA9A450](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 56;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersistenceDataVersion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC9)
  {
    goto LABEL_17;
  }

  if (a2 + 55 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 55) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 55;
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

      return (*a1 | (v4 << 8)) - 55;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 55;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x38;
  v8 = v6 - 56;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersistenceDataVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 55 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 55) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC9)
  {
    v4 = 0;
  }

  if (a2 > 0xC8)
  {
    v5 = ((a2 - 201) >> 8) + 1;
    *result = a2 + 55;
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
    *result = a2 + 55;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2275E0CAC()
{
  result = qword_27D7BF6A8;
  if (!qword_27D7BF6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF6B0, qword_22768D198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF6A8);
  }

  return result;
}

void sub_2275E0D14(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6D0, &qword_22768D328);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = v39 - v5;
  v6 = sub_227665010();
  v44 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = v39 - v9;
  v10 = sub_227662750();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v39 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v39 - v19;
  v21 = [a1 build];
  if (!v21)
  {
    goto LABEL_10;
  }

  v39[4] = a2;
  v40 = v6;
  v22 = v21;
  v39[3] = sub_22766C000();
  v24 = v23;

  v25 = [a1 date];
  if (!v25)
  {

    goto LABEL_10;
  }

  v26 = v25;
  v41 = v24;
  sub_227662710();

  (*(v11 + 32))(v20, v16, v10);
  v27 = [a1 token];
  if (!v27)
  {
LABEL_9:

    (*(v11 + 8))(v20, v10);
    goto LABEL_10;
  }

  v28 = v27;
  v29 = sub_22766C000();
  v31 = v30;

  v32 = [a1 status];
  if (!v32)
  {

    goto LABEL_9;
  }

  v39[1] = v29;
  v39[2] = v31;
  v33 = v32;
  sub_22766C000();

  v34 = v43;
  sub_227664FF0();
  v35 = v44;
  v36 = v40;
  if ((*(v44 + 48))(v34, 1, v40) == 1)
  {
    (*(v11 + 8))(v20, v10);

    sub_226E97D1C(v34, &qword_27D7BF6D0, &qword_22768D328);
LABEL_10:
    v37 = sub_227664DD0();
    sub_2275E1B04(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D51028], v37);
    swift_willThrow();

    return;
  }

  (*(v35 + 32))(v45, v34, v36);
  (*(v11 + 16))(v13, v20, v10);
  (*(v35 + 16))(v42, v45, v36);
  sub_227664FB0();

  (*(v35 + 8))(v45, v36);
  (*(v11 + 8))(v20, v10);
}

void *static CatalogSyncAnchor.representativeSamples()()
{
  v35 = sub_227665010();
  v23 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v22 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_227662750();
  v24 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6B8, &qword_22768D2D0);
  v2 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v4 = &v22 - v3;
  v30 = sub_227665030();
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766C090();
  v9 = sub_227662630();
  v10 = sub_227664FE0();
  v11 = sub_22766C090();
  v47 = v9;
  v48[0] = v8;
  v48[1] = v48;
  v48[2] = &v47;
  v45 = v11;
  v46 = v10;
  v48[3] = &v46;
  v48[4] = &v45;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v41 = v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6C0, &qword_22768D2D8);
  v44 = v12;
  v13 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v37 = v13;
  v38 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v39 = sub_226F5BF60(&qword_27D7BF6C8, &qword_27D7BF6C0, &qword_22768D2D8);
  v40 = v13;
  v14 = sub_2276638E0();

  v15 = *(v14 + 16);
  if (v15)
  {
    v36 = MEMORY[0x277D84F90];
    result = sub_226F20168(0, v15, 0);
    v17 = 0;
    v18 = v36;
    v25 = v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v24 += 2;
    v23 += 2;
    v22 = v5 + 32;
    v29 = v2;
    v28 = v5;
    v27 = v14;
    v26 = v15;
    while (v17 < *(v14 + 16))
    {
      sub_2275E17E8(v25 + *(v2 + 72) * v17, v4);
      v19 = *(v31 + 64);
      (*v24)(v32, &v4[*(v31 + 48)], v33);
      (*v23)(v34, &v4[v19], v35);

      sub_227664FB0();
      sub_226E97D1C(v4, &qword_27D7BF6B8, &qword_22768D2D0);
      v36 = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_226F20168((v20 > 1), v21 + 1, 1);
        v18 = v36;
      }

      ++v17;
      *(v18 + 16) = v21 + 1;
      result = (*(v28 + 32))(v18 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v21, v7, v30);
      v2 = v29;
      v14 = v27;
      if (v26 == v17)
      {

        return v18;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2275E17E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6B8, &qword_22768D2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275E1858(uint64_t a1)
{
  result = sub_2275E1B04(&qword_28139B870, MEMORY[0x277D512F0], &protocol conformance descriptor for CatalogSyncAnchor);
  *(a1 + 8) = result;
  return result;
}

void sub_2275E18B0(void *a1)
{
  v14 = sub_227665010();
  v2 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227662750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227664FC0();
  v9 = sub_22766BFD0();

  [a1 setBuild_];

  sub_227664FA0();
  v10 = sub_2276626A0();
  (*(v6 + 8))(v8, v5);
  [a1 setDate_];

  sub_227665020();
  sub_227665000();
  (*(v2 + 8))(v4, v14);
  v11 = sub_22766BFD0();

  [a1 setStatus_];

  sub_227664FD0();
  v12 = sub_22766BFD0();

  [a1 setToken_];
}

uint64_t sub_2275E1B04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2275E1B4C()
{
  v1 = v0;
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = *(v1 + 16);
  v27[1] = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v34 = v10;
  v12 = *MEMORY[0x277D4E8C0];
  v13 = *(v3 + 104);
  v27[2] = v3 + 104;
  v13(v5, v12, v2);
  v30 = v13;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();

  v29 = ObjectType;
  sub_227669EF0();

  v31 = *(v3 + 8);
  v33 = v2;
  v31(v5, v2);
  v32 = v3 + 8;

  swift_unknownObjectRelease();
  v34 = v10;
  v13(v5, *MEMORY[0x277D4EAD8], v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA180, &qword_227678460);
  sub_2275E354C();
  sub_2275E35C8();
  sub_227669E80();

  v14 = v33;
  v15 = v31;
  v31(v5, v33);
  swift_unknownObjectRelease();
  v34 = v10;
  v16 = v30;
  v30(v5, *MEMORY[0x277D4E4E8], v14);
  swift_allocObject();
  v28 = v1;
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EF0();

  v17 = v33;
  v15(v5, v33);

  swift_unknownObjectRelease();
  v34 = v10;
  v16(v5, *MEMORY[0x277D4E388], v17);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v18 = v33;
  v15(v5, v33);
  swift_unknownObjectRelease();
  v34 = v10;
  v19 = v30;
  v30(v5, *MEMORY[0x277D4E738], v18);
  swift_allocObject();
  swift_weakInit();

  sub_227669EF0();

  v20 = v33;
  v21 = v31;
  v31(v5, v33);

  swift_unknownObjectRelease();
  v34 = v10;
  v19(v5, *MEMORY[0x277D4E7D8], v20);
  swift_allocObject();
  v22 = v28;
  swift_weakInit();
  sub_2276637B0();
  sub_227669EC0();

  v21(v5, v20);
  swift_unknownObjectRelease();
  v23 = v22;
  __swift_project_boxed_opaque_existential_0((v22 + 80), *(v22 + 104));
  v24 = swift_allocObject();
  swift_weakInit();
  sub_227225CCC(24, sub_226EA9754, v24);

  __swift_project_boxed_opaque_existential_0((v23 + 80), *(v23 + 104));
  v25 = swift_allocObject();
  swift_weakInit();
  sub_22712A454(51, sub_2275E391C, v25);

  return result;
}

uint64_t sub_2275E22E8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_226FAA0A0;

    return sub_2275F6E78();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2275E23F4@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v12);

    __swift_project_boxed_opaque_existential_0(v12, v12[3]);
    v6 = MEMORY[0x22AA95F40](v4);
    if (v6 == 4)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = off_283ACB4F0;
    type metadata accessor for AdminSystem();
    v8(v7);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6D8, &qword_22768D3A8);
    (*(*(v9 - 8) + 56))(a3, 0, 1, v9);
    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6D8, &qword_22768D3A8);
    return (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
  }
}

uint64_t sub_2275E256C(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_22766B390();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275E262C, 0, 0);
}

uint64_t sub_2275E262C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[12];
    v2 = v0[13];
    v4 = v0[11];
    sub_226E91B50(Strong + 40, (v0 + 2));

    v5 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v2, v4);
    v6 = v5[25];
    v7 = v5[26];
    __swift_project_boxed_opaque_existential_0(v5 + 22, v6);
    v11 = (*(v7 + 8) + **(v7 + 8));
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_2275E2848;

    return v11(v6, v7);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2275E2848()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2275E29C8;
  }

  else
  {
    v2 = sub_2275E295C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275E295C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2275E29C8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2275E2A38(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = a3;
  *(v3 + 128) = *a2;
  return MEMORY[0x2822009F8](sub_2275E2A60, 0, 0);
}

uint64_t sub_2275E2A60()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 128);
    sub_226E91B50(Strong + 40, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_2275E2B88;

    return sub_227644D74(v2);
  }

  else
  {
    v5 = *(v0 + 80);
    *v5 = 0;
    v5[1] = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2275E2B88(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v7 = sub_226F618C8;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v7 = sub_2275E2CBC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2275E2CBC()
{
  v1 = v0[14];
  v2 = v0[10];
  *v2 = v0[15];
  v2[1] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2275E2D4C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_227127A18;

    return sub_227645684();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2275E2E58(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = a3;
  v5 = sub_22766B390();
  *(v3 + 96) = v5;
  *(v3 + 104) = *(v5 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 136) = *a2;

  return MEMORY[0x2822009F8](sub_2275E2F24, 0, 0);
}

uint64_t sub_2275E2F24()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 136);
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 96);
    sub_226E91B50(Strong + 40, v0 + 16);

    v6 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    sub_22766A730();
    sub_22766B370();
    (*(v4 + 8))(v3, v5);
    v7 = v6[20];
    v8 = v6[21];
    __swift_project_boxed_opaque_existential_0(v6 + 17, v7);
    v15 = (*(v8 + 8) + **(v8 + 8));
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *v9 = v0;
    v9[1] = sub_2275E319C;
    v10 = *(v0 + 80);

    return v15(v10, v2, v7, v8);
  }

  else
  {
    v12 = *(v0 + 80);
    v13 = sub_2276637B0();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_2275E319C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_226FAC630;
  }

  else
  {
    v2 = sub_2275E32B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275E32B0()
{
  v1 = v0[10];
  v2 = sub_2276637B0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2275E3360@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v9);

    __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    sub_227644400(v4, a3);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
    (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
    return (*(*(v8 - 8) + 56))(a3, 1, 1, v8);
  }
}

uint64_t sub_2275E34B4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_2275E22C8(v0);
}

unint64_t sub_2275E354C()
{
  result = qword_281399098;
  if (!qword_281399098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BA180, &qword_227678460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399098);
  }

  return result;
}

unint64_t sub_2275E35C8()
{
  result = qword_281399090;
  if (!qword_281399090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BA180, &qword_227678460);
    sub_2275E364C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399090);
  }

  return result;
}

unint64_t sub_2275E364C()
{
  result = qword_28139B830;
  if (!qword_28139B830)
  {
    sub_227665530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B830);
  }

  return result;
}

uint64_t sub_2275E36A4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_2275E256C(v0);
}

uint64_t sub_2275E3734(uint64_t a1, _BYTE *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275E2A38(a1, a2, v2);
}

uint64_t sub_2275E37E0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_2275E2D2C(v0);
}

uint64_t sub_2275E3870(uint64_t a1, _BYTE *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E92F34;

  return sub_2275E2E58(a1, a2, v2);
}

uint64_t sub_2275E3924@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v6 = sub_227664E50();
  MEMORY[0x28223BE20](v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_227450838(v3, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      *a2 = *v8;
    }

    else
    {
      v10 = sub_227140CF0(a1, *v8);

      *a2 = v10;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = sub_2274508FC(a1, *v8);

      *a2 = v11;
      sub_227665690();
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_2275E3AE0(v8, a2, MEMORY[0x277D52890]);
    }

    else
    {
      sub_2275E3AE0(v8, a2, MEMORY[0x277D52FB8]);
    }
  }

  sub_227665690();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2275E3AE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2275E3B6C(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v17 - v11;
  v13 = [a1 firstWeekdayOfStreakEnd];
  if (v13)
  {
    v14 = v13;
    sub_227662710();

    (*(v3 + 32))(v12, v8, v2);
    [a1 length];
    (*(v3 + 16))(v5, v12, v2);
    sub_227666790();

    (*(v3 + 8))(v12, v2);
  }

  else
  {
    v15 = sub_227664DD0();
    sub_2275E4318(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51028], v15);
    swift_willThrow();
  }
}

void *static AchievementWeeklyStreak.representativeSamples()()
{
  v27 = sub_227662750();
  v0 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6E0, &qword_22768D410);
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = v20 - v3;
  v24 = sub_2276667B0();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F05E24();
  v8 = sub_22766CFA0();
  v33 = sub_227662630();
  v34[0] = v8;
  v34[1] = v34;
  v34[2] = &v33;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v29 = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v30 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v9 = sub_2276638E0();

  v10 = *(v9 + 16);
  if (v10)
  {
    v22 = v7;
    v28 = MEMORY[0x277D84F90];
    result = sub_226F20868(0, v10, 0);
    v12 = v0;
    v13 = 0;
    v14 = v28;
    v23 = v2;
    v21 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = (v12 + 16);
    v20[1] = v5 + 32;
    while (v13 < *(v9 + 16))
    {
      v16 = v9;
      sub_2275E41E8(v21 + *(v23 + 72) * v13, v4);
      (*v15)(v26, &v4[*(v25 + 48)], v27);
      v17 = v22;
      sub_227666790();
      sub_2275E4258(v4);
      v28 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_226F20868((v18 > 1), v19 + 1, 1);
        v14 = v28;
      }

      ++v13;
      *(v14 + 16) = v19 + 1;
      result = (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v17, v24);
      v9 = v16;
      if (v10 == v13)
      {

        return v14;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2275E41E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6E0, &qword_22768D410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275E4258(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6E0, &qword_22768D410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2275E42C0(uint64_t a1)
{
  result = sub_2275E4318(&qword_27D7BF6E8, MEMORY[0x277D526A8], &protocol conformance descriptor for AchievementWeeklyStreak);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2275E4318(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2275E4360(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2276667A0();
  v7 = 0x7FFFFFFFLL;
  if (v6 < 0x7FFFFFFF)
  {
    v7 = v6;
  }

  if (v7 <= 0xFFFFFFFF80000000)
  {
    v8 = 0xFFFFFFFF80000000;
  }

  else
  {
    v8 = v7;
  }

  [a1 setLength_];
  sub_227666770();
  v9 = sub_2276626A0();
  (*(v3 + 8))(v5, v2);
  [a1 setFirstWeekdayOfStreakEnd_];
}

uint64_t StreamingKeyNonce.init(seed:workoutIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t StreamingKeyNonce.seed.getter()
{
  v1 = *v0;
  sub_226F5E0B4(*v0, *(v0 + 8));
  return v1;
}

uint64_t StreamingKeyNonce.workoutIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2275E44F4()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 1684366707;
  }
}

void sub_2275E452C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684366707 && a2 == 0xE400000000000000;
  if (v5 || (sub_22766D190() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022769F700 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22766D190();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_2275E4610(uint64_t a1)
{
  v2 = sub_2275E4828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2275E464C(uint64_t a1)
{
  v2 = sub_2275E4828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StreamingKeyNonce.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF6F0, &qword_22768D460);
  v12 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v11[1] = v1[3];
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_226F5E0B4(v7, v8);
  sub_2275E4828();
  sub_22766D480();
  v13 = v7;
  v14 = v8;
  v15 = 0;
  sub_2273A486C();
  sub_22766D120();
  sub_226EDC420(v13, v14);
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_22766D0F0();
  }

  return (*(v12 + 8))(v6, v4);
}

unint64_t sub_2275E4828()
{
  result = qword_27D7BF6F8;
  if (!qword_27D7BF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF6F8);
  }

  return result;
}

void StreamingKeyNonce.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF700, &qword_22768D468);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2275E4828();
  sub_22766D460();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v18 = 0;
    sub_2273A4818();
    sub_22766D0B0();
    v9 = v16;
    v15 = v17;
    LOBYTE(v16) = 1;
    v10 = sub_22766D080();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    v13 = v15;
    *a2 = v9;
    a2[1] = v13;
    a2[2] = v10;
    a2[3] = v12;
    sub_226F5E0B4(v9, v13);

    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_226EDC420(v9, v13);
  }
}

uint64_t static StreamingKeyNonce.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!sub_227130B5C(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_22766D190();
}

uint64_t StreamingKeyNonce.hash(into:)(uint64_t a1)
{
  sub_2276625A0();

  return sub_22766C100();
}

uint64_t StreamingKeyNonce.hashValue.getter()
{
  sub_22766D370();
  sub_2276625A0();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_2275E4C20()
{
  sub_22766D370();
  sub_2276625A0();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_2275E4C88(uint64_t a1)
{
  sub_2276625A0();

  return sub_22766C100();
}

uint64_t sub_2275E4CD8(uint64_t a1)
{
  sub_22766D370();
  sub_2276625A0();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_2275E4D3C(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!sub_227130B5C(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_22766D190();
}

unint64_t sub_2275E4DD0()
{
  result = qword_27D7BF708;
  if (!qword_27D7BF708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF708);
  }

  return result;
}

uint64_t sub_2275E4E24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2275E4E6C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_2275E4ED0()
{
  result = qword_27D7BF710;
  if (!qword_27D7BF710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF710);
  }

  return result;
}

unint64_t sub_2275E4F28()
{
  result = qword_27D7BF718;
  if (!qword_27D7BF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF718);
  }

  return result;
}

unint64_t sub_2275E4F80()
{
  result = qword_27D7BF720;
  if (!qword_27D7BF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF720);
  }

  return result;
}

void sub_2275E4FD4(id a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - v5;
  v7 = sub_227668D10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = [a1 behavior];
  if (!v15)
  {
    goto LABEL_6;
  }

  v31 = v8;
  v16 = a2;
  v17 = v15;
  v28 = sub_22766C000();
  v19 = v18;

  v20 = [a1 modalityConstraint];
  if (!v20)
  {

    goto LABEL_6;
  }

  v21 = v20;
  v25[1] = v16;
  v26 = v19;
  v27 = a1;
  sub_22766C000();

  sub_227668CF0();
  v22 = v31;
  if ((*(v31 + 48))(v6, 1, v7) == 1)
  {

    sub_226E97D1C(v6, &qword_27D7B9BA0, &qword_2276754B8);
    a1 = v27;
LABEL_6:
    v23 = sub_227664DD0();
    sub_2275E596C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51028], v23);
    swift_willThrow();

    return;
  }

  (*(v22 + 32))(v14, v6, v7);
  v29 = v28;
  v30 = v26;
  sub_227125D40();
  sub_227663AE0();
  (*(v22 + 16))(v10, v14, v7);
  sub_227667150();

  (*(v22 + 8))(v14, v7);
}

void *static MetricsDisplayPreference.representativeSamples()()
{
  v0 = sub_227668D10();
  v1 = *(v0 - 8);
  v2 = v1;
  MEMORY[0x28223BE20](v0);
  v34 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF728, &qword_22768D6F8);
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v27 - v5;
  v32 = sub_227667170();
  v36 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2275E5810();
  sub_227125D40();
  v8 = sub_227663B50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBA0, &qword_227685940);
  v9 = *(v1 + 72);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2276728D0;
  v12 = v11 + v10;
  v13 = v2;
  v14 = *(v2 + 104);
  (v14)(v12, *MEMORY[0x277D53870], v0);
  v15 = (v12 + v9);
  *v15 = 0x6E776F6E6B6E75;
  v15[1] = 0xE700000000000000;
  v35 = v0;
  v14();
  v42 = v11;
  v43[0] = v8;
  v43[1] = v43;
  v43[2] = &v42;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF738, &qword_22768D700);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBB0, &qword_227685950);
  v38 = sub_226F5BF60(&qword_27D7BF740, &qword_27D7BF738, &qword_22768D700);
  v39 = sub_226F5BF60(&qword_27D7BDBC0, &qword_27D7BDBB0, &qword_227685950);
  v16 = sub_2276638E0();

  v17 = *(v16 + 16);
  if (v17)
  {
    v37 = MEMORY[0x277D84F90];
    result = sub_226F20328(0, v17, 0);
    v19 = 0;
    v29 = v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v30 = v16;
    v20 = v37;
    v27 = v36 + 32;
    v28 = (v13 + 16);
    v21 = v31;
    while (v19 < *(v16 + 16))
    {
      sub_2275E58A4(v29 + *(v4 + 72) * v19, v6);
      v23 = *v6;
      v22 = *(v6 + 1);
      v24 = v6[16];
      (*v28)(v34, &v6[*(v33 + 48)], v35);
      sub_226EB396C(v23, v22, v24);
      sub_227667150();
      sub_226E97D1C(v6, &qword_27D7BF728, &qword_22768D6F8);
      v37 = v20;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_226F20328((v25 > 1), v26 + 1, 1);
        v20 = v37;
      }

      ++v19;
      *(v20 + 16) = v26 + 1;
      result = (*(v36 + 32))(v20 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v26, v21, v32);
      v16 = v30;
      if (v17 == v19)
      {

        return v20;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_2275E5810()
{
  result = qword_27D7BF730;
  if (!qword_27D7BF730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF730);
  }

  return result;
}

uint64_t sub_2275E58A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF728, &qword_22768D6F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275E5914(uint64_t a1)
{
  result = sub_2275E596C(&qword_2813A5620, MEMORY[0x277D52C10], &protocol conformance descriptor for MetricsDisplayPreference);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2275E596C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2275E59B4(void *a1)
{
  v13[0] = a1;
  v1 = sub_227668D10();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227667160();
  v7 = v6;
  v13[3] = v5;
  v13[4] = v6;
  v9 = v8 & 1;
  v14 = v8 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEB10, &qword_22768B7C0);
  sub_227663AD0();
  v10 = sub_22766BFD0();
  sub_226EB2DFC(v5, v7, v9);

  v11 = v13[0];
  [v13[0] setBehavior_];

  sub_227667140();
  sub_227668D00();
  (*(v2 + 8))(v4, v1);
  v12 = sub_22766BFD0();

  [v11 setModalityConstraint_];
}

unint64_t sub_2275E5B74()
{
  result = qword_27D7BF748;
  if (!qword_27D7BF748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF748);
  }

  return result;
}

void *NSPersistentStoreDescription.makeSQLiteDatabaseHandle()()
{
  v1 = sub_22766B3C0();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SQLiteDatabase(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2276624A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = [v0 URL];
  if (v15)
  {
    v16 = v15;
    sub_227662430();

    (*(v8 + 32))(v14, v10, v7);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B30, &qword_227675350) + 48);
    (*(v8 + 16))(v6, v14, v7);
    v6[v17] = sub_22706FA40();
    swift_storeEnumTagMultiPayload();
    sub_226EA1CF4();
    v19 = v25;
    v18 = v26;
    (*(v25 + 104))(v3, *MEMORY[0x277D851C8], v26);
    v20 = sub_22766C980();
    (*(v19 + 8))(v3, v18);
    v0 = v6;
    v21 = v27;
    v22 = SQLiteDatabase.makeHandle(queue:)(v20);
    if (!v21)
    {
      v0 = v22;
    }

    sub_226FFF374(v6);
    (*(v8 + 8))(v14, v7);
  }

  else
  {
    sub_22706F95C();
    swift_allocError();
    *v23 = xmmword_22767A620;
    *(v23 + 16) = 2;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_2275E5F10()
{
  v0 = sub_227669A90();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D4F000], v1);
  v5[15] = 1;
  return sub_227669760();
}

uint64_t sub_2275E6000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for EfficientQuery(0, a4, v11, v12);
  *(a5 + *(result + 28)) = a2;
  *(a5 + *(result + 32)) = a3;
  return result;
}

void sub_2275E60A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  sub_227669730();
  if (v12 == 1)
  {
    sub_2275E68B4(a1, a2, a3, a4, a5);
  }

  else
  {
    sub_2275E6340(a1, a2, a3, a4, a5, a6);
  }
}

void sub_2275E6160(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 28));
  if ([v3 fetchOffset] < 1 || objc_msgSend(v3, sel_fetchLimit))
  {
    sub_22766C9D0();
  }

  else
  {
    [v3 copy];
    sub_22766CC20();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F8, &qword_2276749C0);
    if (swift_dynamicCast())
    {
      [v9 setFetchLimit_];
      [v9 setFetchOffset_];
      v4 = sub_22766C9D0();
      if (v2)
      {
      }

      else
      {
        v7 = v4;
        v8 = [v3 fetchOffset];

        if (__OFSUB__(v7, v8))
        {
          __break(1u);
        }
      }
    }

    else
    {
      v5 = sub_227664DD0();
      sub_226FC4F70();
      swift_allocError();
      (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D50FF0], v5);
      swift_willThrow();
    }
  }
}

void sub_2275E6340(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = MEMORY[0x22AA99A00]();
  sub_2275E63E4(v6, a1, a2, a3, *(a4 + 16), a5, &v14, a6);
  objc_autoreleasePoolPop(v13);
}

void sub_2275E63E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v48 = a7;
  v43 = a3;
  v44 = a4;
  v45 = a2;
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EfficientQuery(0, v18, v16, v17);
  v20 = *(a1 + *(v19 + 32));
  v21 = *(a1 + *(v19 + 28));
  v22 = sub_22766C9E0();
  if (!v8)
  {
    v23 = v22;
    v40 = v13;
    v41 = v15;
    v24 = v45;
    v42 = v20;
    v39 = 0;
    if ([v21 fetchBatchSize] > 0)
    {
      v25 = [v21 fetchBatchSize];
      v26 = sub_22766C3B0();
      v27 = v42;
      if (!v25)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v26 != 0x8000000000000000 || v25 != -1)
      {
LABEL_11:
        v29 = v24;
        v30 = v26 / v25;
        v31 = v26 / v25 * v25;
        if ((v26 / v25 * v25) >> 64 == v31 >> 63)
        {
          v32 = v31 != v26;
          v33 = __OFADD__(v30, v32);
          v34 = v30 + v32;
          if (!v33)
          {
            if ((v34 & 0x8000000000000000) == 0)
            {
              v35 = v27;
              v46 = 0;
              v47 = v34;
              v36 = (*(v40 + 16))(v41, v29, a6);
              MEMORY[0x28223BE20](v36);
              *(&v38 - 8) = a5;
              *(&v38 - 7) = a6;
              *(&v38 - 6) = v25;
              *(&v38 - 5) = v23;
              v37 = v44;
              *(&v38 - 4) = v43;
              *(&v38 - 3) = v37;
              *(&v38 - 2) = a1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF750, &qword_22768D818);
              sub_2275E6EB0();
              v8 = v39;
              sub_22766C260();

              if (!v8)
              {
                [v35 reset];
                return;
              }

              goto LABEL_15;
            }

LABEL_21:
            __break(1u);
            return;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      __break(1u);
    }

    v26 = sub_22766C3B0();
    v25 = 100;
    v27 = v42;
    goto LABEL_11;
  }

LABEL_15:
  *v48 = v8;
}

uint64_t sub_2275E6680(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *a2 * a3;
  if ((*a2 * a3) >> 64 != v10 >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10 + a3;
  if (__OFADD__(v10, a3))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v16 = result;
  result = sub_22766C3B0();
  if (v11 >= result)
  {
    v17 = result;
  }

  else
  {
    v17 = v11;
  }

  if (v17 < v10)
  {
    goto LABEL_12;
  }

  v28 = a7;
  v18 = sub_22766C3F0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = MEMORY[0x22AA99A00]();
  sub_2275E67D4(a5, a6, v16, v18, v20, v22, v24, a8, a9, &v29);
  objc_autoreleasePoolPop(v25);
  if (!v9)
  {
    [*(v28 + *(type metadata accessor for EfficientQuery(0 a8];
  }

  return swift_unknownObjectRelease();
}

void sub_2275E67D4(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_22766CC40();
  swift_unknownObjectRetain();
  swift_getWitnessTable();
  v13 = sub_22766C3E0();
  a1(a3, v13);

  if (v10)
  {
    *a10 = v10;
  }
}

void sub_2275E68B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + *(a4 + 28));
  v12 = [v11 fetchBatchSize];
  v13 = [v11 fetchOffset];
  sub_2275E6160(a4);
  if (!v6)
  {
    if (v12)
    {
      v15 = v14;
      if (v14 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_12;
      }

      v16 = v14 / v12;
      v17 = v14 / v12 * v12;
      if ((v14 / v12 * v12) >> 64 == v17 >> 63)
      {
        v21 = a2;
        v18 = v17 != v14;
        v19 = v16 + v18;
        if (!__OFADD__(v16, v18))
        {
          v20 = MEMORY[0x22AA99A00]();
          sub_2275E6A0C(v19, a1, v5, v15, v12, v13, v21, a3, *(a4 + 16), a5, &v23);
          objc_autoreleasePoolPop(v20);
          return;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }
}

void sub_2275E6A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v42 = a3;
  v21 = MEMORY[0x28223BE20](a1);
  if (v22 < 0)
  {
    __break(1u);
  }

  else
  {
    v40 = 0;
    v41 = a1;
    v23 = *(v19 + 16);
    v37 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = v11;
    v36 = v18;
    v24 = v17;
    v25 = v16;
    v26 = v15;
    v27 = v14;
    v28 = v13;
    v29 = v23(v37, v21);
    v39 = &v34;
    MEMORY[0x28223BE20](v29);
    v35 = a9;
    *(&v34 - 10) = a9;
    *(&v34 - 9) = a10;
    *(&v34 - 8) = v42;
    *(&v34 - 7) = a1;
    *(&v34 - 6) = v28;
    *(&v34 - 5) = v27;
    *(&v34 - 4) = v26;
    *(&v34 - 3) = v25;
    *(&v34 - 2) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF750, &qword_22768D818);
    sub_2275E6EB0();
    v30 = v38;
    sub_22766C260();
    if (v30)
    {
      *a11 = v30;
    }

    else
    {
      v33 = type metadata accessor for EfficientQuery(0, v35, v31, v32);
      [*(v42 + *(v33 + 32)) reset];
    }
  }
}

void sub_2275E6BE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t), uint64_t a9, uint64_t a10)
{
  v15 = *a2;
  v16 = type metadata accessor for EfficientQuery(0, a10, a3, a4);
  [*(a3 + *(v16 + 28)) copy];
  sub_22766CC20();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F8, &qword_2276749C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  [v31 setReturnsObjectsAsFaults_];
  if (__OFSUB__(a4, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v15 != a4 - 1)
  {
    v19 = 0;
    goto LABEL_10;
  }

  v17 = a4 * a6;
  if ((a4 * a6) >> 64 != (a4 * a6) >> 63)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v18 = __OFSUB__(a5, v17);
  v19 = a5 - v17;
  if (v18)
  {
    __break(1u);
LABEL_8:
    v20 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D50FF0], v20);
    swift_willThrow();
    return;
  }

LABEL_10:
  v22 = a6 + v19;
  if (__OFADD__(a6, v19))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v31 setFetchBatchSize_];
  [v31 setFetchLimit_];
  v23 = v15 * a6;
  if ((v15 * a6) >> 64 != (v15 * a6) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFADD__(a7, v23))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v31 setFetchOffset_];
  v24 = *(a3 + *(v16 + 32));
  v25 = sub_22766C9E0();
  if (!v30)
  {
    v26 = v25;
    v27 = MEMORY[0x22AA99A00]();
    a8(a1, v26);
    objc_autoreleasePoolPop(v27);

    [v24 reset];
  }
}