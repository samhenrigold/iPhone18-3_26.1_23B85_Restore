uint64_t dispatch thunk of NDFAdminController.noteIPAddressAcquisitionFailed(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 280) + **(*v3 + 280));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2324C290C;

  return v10(a1, a2, a3);
}

uint64_t sub_2324C1A78(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 40) = a2;
  *(v4 + 80) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324C1B1C, v3, 0);
}

uint64_t sub_2324C1B1C()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 56) + 128);
  v3 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v3, v1, &unk_27DD932E0, qword_2325472E0);
  v10 = (*(*v2 + 384) + **(*v2 + 384));
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_2324C2780;
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 80);

  return v10(v8, v5, v6, v7);
}

uint64_t sub_2324C1C94()
{
  if (qword_2814D6AE0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);

  return __swift_project_value_buffer(v0, qword_2814D7008);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2324C1D3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2324C1DAC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 56) = a1;
  return MEMORY[0x2822009F8](sub_2324C1DD4, v4, 0);
}

uint64_t sub_2324C1DD4()
{
  v15 = v0;
  if ((*(**(v0 + 40) + 392))(*(v0 + 24), *(v0 + 32)))
  {

    v1 = sub_232545888();
    v2 = sub_232546208();

    if (os_log_type_enabled(v1, v2))
    {
      v4 = *(v0 + 24);
      v3 = *(v0 + 32);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_2324C2220(v4, v3, &v14);
      _os_log_impl(&dword_2324C0000, v1, v2, "Ignoring IP address acquisition failure notification for interface %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x238386450](v6, -1, -1);
      MEMORY[0x238386450](v5, -1, -1);
    }

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(**(v0 + 40) + 416);
    v13 = (v9 + *v9);
    v10 = swift_task_alloc();
    *(v0 + 48) = v10;
    *v10 = v0;
    v10[1] = sub_23250489C;
    v11 = *(v0 + 16);
    v12 = *(v0 + 56);

    return v13(1, 2, v12, v11);
  }
}

BOOL sub_2324C2068(uint64_t a1, uint64_t a2)
{
  v5 = (*(*v2 + 216))();
  LOBYTE(a2) = sub_2324C2128(a1, a2, v5);

  return (a2 & 1) == 0;
}

uint64_t sub_2324C2128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2325466F8();
  sub_232545FC8();
  v6 = sub_232546738();
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
    if (v11 || (sub_232546628() & 1) != 0)
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

unint64_t sub_2324C2220(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2324C24DC(v11, 0, 0, 1, a1, a2);
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
    sub_2324C26D8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

void *sub_2324C22EC(uint64_t a1, unint64_t a2)
{
  v3 = sub_2324C23AC(a1, a2);
  sub_2324C25EC(&unk_28478DB70);
  return v3;
}

void *sub_2324C2338(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93900, qword_232547990);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_2324C23AC(uint64_t a1, unint64_t a2)
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

  v6 = sub_2324C2338(v5, 0);
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

  result = sub_232546428();
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
        v10 = sub_232545FE8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2324C2338(v10, 0);
        result = sub_2325463C8();
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

unint64_t sub_2324C24DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2324C22EC(a5, a6);
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
    result = sub_232546428();
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

uint64_t sub_2324C25EC(uint64_t result)
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

  result = sub_2324C81D0(result, v11, 1, v3);
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

uint64_t sub_2324C26D8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2324C2784()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  sub_2324C28AC(v1, &unk_27DD932E0, qword_2325472E0);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2324C28AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2324C2910()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2324C2A08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C2A40()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2324C2A80()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2324C2AC0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2324C2B00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C2B48()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C2B90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C2BD0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2324C2C10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C2C50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2324C2D30()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2324C2D68()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2324C2DA8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2324C2DE8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2324C2E30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C2E78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C2EB8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2324C2EF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2324C2F68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2324C2FF4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2324C3034()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C3070(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2325456F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_232545688();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_2324C3200(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2325456F8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_232545688();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_2324C3388()
{
  v1 = type metadata accessor for NDFDevice(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v3;
  v5 = sub_2325456F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);
  v8 = v1[5];
  v9 = sub_232545688();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  v10 = v1[7];
  if (!(*(v6 + 48))(v0 + v3 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  v11 = (v4 + v1[8]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_2324DB44C(*v11, v12);
  }

  v13 = (v4 + v1[9]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_2324DB44C(*v13, v14);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v16, v2 | 7);
}

uint64_t sub_2324C3590()
{

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t sub_2324C35D0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 41) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_2325456F8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2324C36F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C3748()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2324C3780()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C37C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2324C3800()
{
  v1 = sub_232545BA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_232545688();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v12 = v3 | v8;
  v10 = (((((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v12 | 7);
}

uint64_t sub_2324C3994()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C39CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2324C3A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2325456F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for NDFActorRequestType(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2324C3B0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2325456F8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for NDFActorRequestType(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2324C3C08(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 8);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_232545688();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_2325456F8();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_2324C3D78(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 8) = -a2;
    return result;
  }

  v8 = sub_232545688();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2325456F8();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2324C3EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232545688();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2324C3F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_232545688();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2324C3FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
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

uint64_t sub_2324C4090(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
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

uint64_t sub_2324C4154()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C41AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2324C41E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93988, &qword_23254AA30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2324C42D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C4318()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_232545F68();
  v4 = v3;

  if (v2 == 0xD000000000000010 && 0x800000023254BFE0 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_232546628();
  }

  byte_2814D62F8 = v6 & 1;
  return result;
}

uint64_t sub_2324C43EC()
{
  if (qword_2814D6830 != -1)
  {
    result = swift_once();
  }

  byte_2814D6730 = (byte_2814D62F8 & 1) == 0;
  return result;
}

uint64_t sub_2324C444C()
{
  result = sub_2325458E8();
  byte_2814D6C00 = result;
  return result;
}

uint64_t sub_2324C4470()
{
  v0 = sub_2324F5690();
  v2 = *v0;
  v1 = v0[1];
  qword_2814D6818 = v2;
  qword_2814D6810 = v1;
}

uint64_t sub_2324C44AC()
{
  v0 = sub_2325458A8();
  __swift_allocate_value_buffer(v0, qword_2814D6D78);
  v1 = __swift_project_value_buffer(v0, qword_2814D6D78);
  v2 = sub_2324F4410();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_2324C4538()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_2814D6808 != -1)
  {
    swift_once();
  }

  v1 = sub_232545F58();
  [v0 addSuiteNamed_];

  qword_2814D6D98 = v0;
}

uint64_t sub_2324C45E0()
{
  type metadata accessor for NDFConfiguration();
  v0 = swift_allocObject();
  if (qword_2814D6E40 != -1)
  {
    swift_once();
  }

  if (byte_2814D6730 == 1)
  {
    v1 = sub_23254546C();
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 16) = v1 & 1;
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v2 = qword_2814D6D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E0, &qword_232547190);
  swift_allocObject();
  v3 = v2;
  *(v0 + 24) = sub_232545B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  swift_allocObject();
  v4 = v3;
  *(v0 + 32) = sub_232545B18();
  swift_allocObject();
  v5 = v4;
  *(v0 + 40) = sub_232545B18();
  swift_allocObject();
  v6 = v5;
  *(v0 + 48) = sub_232545B18();
  swift_allocObject();
  v7 = v6;
  *(v0 + 56) = sub_232545B18();
  swift_allocObject();
  v8 = v7;
  *(v0 + 64) = sub_232545B18();
  swift_allocObject();
  v9 = v8;
  *(v0 + 72) = sub_232545B18();
  swift_allocObject();
  v10 = v9;
  *(v0 + 80) = sub_232545B18();
  swift_allocObject();
  v11 = v10;
  *(v0 + 88) = sub_232545B18();
  swift_allocObject();
  v12 = v11;
  *(v0 + 96) = sub_232545B18();
  swift_allocObject();
  v13 = v12;
  *(v0 + 104) = sub_232545B18();
  if (qword_2814D6C08 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931F0, &qword_2325471A0);
  swift_allocObject();
  v14 = v13;
  *(v0 + 112) = sub_232545B18();
  swift_allocObject();
  v15 = v14;
  *(v0 + 120) = sub_232545B18();
  swift_allocObject();
  v16 = v15;
  *(v0 + 128) = sub_232545B18();
  swift_allocObject();
  v17 = v16;
  *(v0 + 136) = sub_232545B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931F8, &qword_2325471A8);
  swift_allocObject();
  *(v0 + 144) = sub_232545B18();
  swift_allocObject();
  *(v0 + 152) = sub_232545B18();
  if (qword_2814D6D70 != -1)
  {
    swift_once();
  }

  v18 = sub_2325458A8();
  __swift_project_value_buffer(v18, qword_2814D6D78);
  v19 = sub_232545888();
  v20 = sub_232546208();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2324C0000, v19, v20, "Initialized NDF Configuration", v21, 2u);
    MEMORY[0x238386450](v21, -1, -1);
  }

  result = (*(*v0 + 664))();
  qword_2814D6D68 = v0;
  return result;
}

uint64_t *sub_2324C4D38()
{
  if (qword_2814D6D60 != -1)
  {
    swift_once();
  }

  return &qword_2814D6D68;
}

uint64_t static NDFConfiguration.shared.getter()
{
  if (qword_2814D6D60 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2324C4DE4()
{
  if (qword_2814D6E40 != -1)
  {
    swift_once();
  }

  if (byte_2814D6730 != 1)
  {
    return 0;
  }

  return sub_23254546C();
}

uint64_t sub_2324C4E50@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2324C4F1C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
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

uint64_t sub_2324C501C()
{

  sub_232545B38();

  return v1;
}

uint64_t sub_2324C5060(char a1)
{

  sub_232545B48();
}

uint64_t (*sub_2324C50A4(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 24);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

double sub_2324C5154()
{

  sub_232545B38();

  return v1;
}

uint64_t sub_2324C5198(double a1)
{

  sub_232545B48();
}

uint64_t (*sub_2324C51DC(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 32);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C5260;
}

uint64_t sub_2324C5290(uint64_t a1, uint64_t a2, double a3)
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v3 = qword_2814D6D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  swift_allocObject();
  v4 = v3;
  return sub_232545B18();
}

double sub_2324C5350()
{

  sub_232545B38();

  return v1;
}

uint64_t sub_2324C5394(double a1)
{

  sub_232545B48();
}

uint64_t (*sub_2324C53D8(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 40);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C545C(double a1)
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v1 = qword_2814D6D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  swift_allocObject();
  v2 = v1;
  return sub_232545B18();
}

double sub_2324C5520()
{

  sub_232545B38();

  return v1;
}

uint64_t sub_2324C5564(double a1)
{

  sub_232545B48();
}

uint64_t (*sub_2324C55A8(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 48);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C563C(double a1)
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v1 = qword_2814D6D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  swift_allocObject();
  v2 = v1;
  return sub_232545B18();
}

double sub_2324C5700()
{

  sub_232545B38();

  return v1;
}

uint64_t sub_2324C5744(double a1)
{

  sub_232545B48();
}

uint64_t (*sub_2324C5788(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 56);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C5814(double a1)
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v1 = qword_2814D6D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  swift_allocObject();
  v2 = v1;
  return sub_232545B18();
}

double sub_2324C58D8()
{

  sub_232545B38();

  return v1;
}

uint64_t sub_2324C591C(double a1)
{

  sub_232545B48();
}

uint64_t (*sub_2324C5960(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 64);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C5A18(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v3 = qword_2814D6D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E0, &qword_232547190);
  swift_allocObject();
  v4 = v3;
  return sub_232545B18();
}

uint64_t sub_2324C5AD8()
{

  sub_232545B38();

  return v1;
}

uint64_t sub_2324C5B1C(char a1)
{

  sub_232545B48();
}

uint64_t (*sub_2324C5B60(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 72);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C5BE4(char a1)
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v1 = qword_2814D6D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E0, &qword_232547190);
  swift_allocObject();
  v2 = v1;
  return sub_232545B18();
}

uint64_t sub_2324C5CA8()
{

  sub_232545B38();

  return v1;
}

uint64_t sub_2324C5CEC(char a1)
{

  sub_232545B48();
}

uint64_t (*sub_2324C5D30(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 80);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C5DB4(double a1)
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v1 = qword_2814D6D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  swift_allocObject();
  v2 = v1;
  return sub_232545B18();
}

double sub_2324C5E78()
{

  sub_232545B38();

  return v1;
}

uint64_t sub_2324C5EBC(double a1)
{

  sub_232545B48();
}

uint64_t (*sub_2324C5F00(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 88);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C5F84(double a1)
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v1 = qword_2814D6D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  swift_allocObject();
  v2 = v1;
  return sub_232545B18();
}

double sub_2324C6048()
{

  sub_232545B38();

  return v1;
}

uint64_t sub_2324C608C(double a1)
{

  sub_232545B48();
}

uint64_t (*sub_2324C60D0(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 96);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C6160(double a1)
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v1 = qword_2814D6D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  swift_allocObject();
  v2 = v1;
  return sub_232545B18();
}

double sub_2324C6224()
{

  sub_232545B38();

  return v1;
}

uint64_t sub_2324C6268(double a1)
{

  sub_232545B48();
}

uint64_t (*sub_2324C62AC(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 104);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C6330(char a1)
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v1 = qword_2814D6D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931F0, &qword_2325471A0);
  swift_allocObject();
  v2 = v1;
  return sub_232545B18();
}

uint64_t sub_2324C63F0()
{

  sub_232545B38();

  return v1;
}

uint64_t sub_2324C6434(char a1)
{

  sub_232545B48();
}

uint64_t (*sub_2324C6478(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 112);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C64FC()
{
  if (qword_2814D6C08 != -1)
  {
    swift_once();
  }

  return byte_2814D6C00;
}

uint64_t sub_2324C654C(char a1)
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v1 = qword_2814D6D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E0, &qword_232547190);
  swift_allocObject();
  v2 = v1;
  return sub_232545B18();
}

uint64_t sub_2324C6610()
{

  sub_232545B38();

  return v1;
}

uint64_t sub_2324C6654(char a1)
{

  sub_232545B48();
}

uint64_t (*sub_2324C6698(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 120);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C671C(double a1)
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v1 = qword_2814D6D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  swift_allocObject();
  v2 = v1;
  return sub_232545B18();
}

double sub_2324C67E0()
{

  sub_232545B38();

  return v1;
}

uint64_t sub_2324C6824(double a1)
{

  sub_232545B48();
}

uint64_t (*sub_2324C6868(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 128);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C68FC(double a1)
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v1 = qword_2814D6D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  swift_allocObject();
  v2 = v1;
  return sub_232545B18();
}

double sub_2324C69C0()
{

  sub_232545B38();

  return v1;
}

uint64_t sub_2324C6A04(double a1)
{

  sub_232545B48();
}

uint64_t (*sub_2324C6A48(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 136);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C6ADC(uint64_t a1)
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v1 = qword_2814D6D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931F8, &qword_2325471A8);
  swift_allocObject();
  v2 = v1;
  return sub_232545B18();
}

uint64_t sub_2324C6B9C()
{

  sub_232545B38();

  return v1;
}

uint64_t sub_2324C6BE0(uint64_t a1)
{

  sub_232545B48();
}

uint64_t (*sub_2324C6C24(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 144);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C6CB0(uint64_t a1)
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v1 = qword_2814D6D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931F8, &qword_2325471A8);
  swift_allocObject();
  v2 = v1;
  return sub_232545B18();
}

uint64_t sub_2324C6D70()
{

  sub_232545B38();

  return v1;
}

uint64_t sub_2324C6DB4(uint64_t a1)
{

  sub_232545B48();
}

uint64_t (*sub_2324C6DF8(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 152);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

void sub_2324C6E7C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

void sub_2324C6ED0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93200, &qword_2325471B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_232547150;
  v3 = (*(*v0 + 272))();
  v4 = MEMORY[0x277D839F8];
  v5 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v5;
  *(v2 + 32) = v3;
  v109 = sub_232545F78();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_232547150;
  v9 = (*(*v0 + 344))();
  *(v8 + 56) = v4;
  *(v8 + 64) = v5;
  *(v8 + 32) = v9;
  v112 = sub_232545F78();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_232547150;
  v13 = (*(*v0 + 368))();
  *(v12 + 56) = v4;
  *(v12 + 64) = v5;
  *(v12 + 32) = v13;
  v111 = sub_232545F78();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_232547150;
  v17 = (*(*v0 + 440))();
  *(v16 + 56) = v4;
  *(v16 + 64) = v5;
  *(v16 + 32) = v17;
  v110 = sub_232545F78();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_232547150;
  v21 = (*(*v0 + 296))();
  *(v20 + 56) = v4;
  *(v20 + 64) = v5;
  *(v20 + 32) = v21;
  v113 = sub_232545F78();
  v120 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_232547150;
  v24 = (*(*v0 + 320))();
  *(v23 + 56) = v4;
  *(v23 + 64) = v5;
  *(v23 + 32) = v24;
  v114 = sub_232545F78();
  v121 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_232547150;
  v27 = (*(*v0 + 464))();
  *(v26 + 56) = v4;
  *(v26 + 64) = v5;
  *(v26 + 32) = v27;
  v116 = sub_232545F78();
  v123 = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_232547150;
  v30 = (*(*v0 + 488))();
  *(v29 + 56) = v4;
  *(v29 + 64) = v5;
  *(v29 + 32) = v30;
  v115 = sub_232545F78();
  v122 = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_232547150;
  v33 = (*(*v0 + 560))();
  *(v32 + 56) = v4;
  *(v32 + 64) = v5;
  *(v32 + 32) = v33;
  v118 = sub_232545F78();
  v124 = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_232547150;
  v36 = (*(*v0 + 584))();
  *(v35 + 56) = v4;
  *(v35 + 64) = v5;
  *(v35 + 32) = v36;
  v117 = sub_232545F78();
  if (qword_2814D6D70 != -1)
  {
    v108 = v37;
    swift_once();
    v37 = v108;
  }

  v119 = v11;
  v125 = v37;
  v38 = sub_2325458A8();
  __swift_project_value_buffer(v38, qword_2814D6D78);
  v39 = sub_232545888();
  v40 = sub_232546208();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_2324C0000, v39, v40, " \t========== [ Begin NDF Configuration Dump ] ========== ", v41, 2u);
    MEMORY[0x238386450](v41, -1, -1);
  }

  v42 = sub_232545888();
  v43 = sub_232546208();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v52 = v44;
    *v44 = 67110144;
    if (qword_2814D6E40 != -1)
    {
      v44 = swift_once();
    }

    v52[1] = byte_2814D6730;
    *(v52 + 4) = 1024;
    *(v52 + 10) = (*(*v1 + 224))(v44, v45, v46, v47, v48, v49, v50, v51, v109, v110) & 1;
    *(v52 + 7) = 1024;
    if (qword_2814D6830 != -1)
    {
      swift_once();
    }

    v52[4] = byte_2814D62F8;
    *(v52 + 10) = 1024;
    *(v52 + 22) = (*(*v1 + 392))() & 1;
    *(v52 + 13) = 1024;
    v52[7] = (*(*v1 + 248))() & 1;

    _os_log_impl(&dword_2324C0000, v42, v43, " \t\t supported: %{BOOL}d, enabled: %{BOOL}d, isHelper: %{BOOL}d, polling allowed: %{BOOL}d, discovery allowed: %{BOOL}d", v52, 0x20u);
    MEMORY[0x238386450](v52, -1, -1);
  }

  else
  {
  }

  v53 = sub_232545888();
  v54 = sub_232546208();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v127[0] = v56;
    *v55 = 136315394;
    v57 = sub_2324C2220(v109, v7, v127);

    *(v55 + 4) = v57;
    *(v55 + 12) = 256;
    *(v55 + 14) = (*(*v1 + 512))(v58);

    _os_log_impl(&dword_2324C0000, v53, v54, " \t\t browse duration: %ss, discover device type: %hhd", v55, 0xFu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x238386450](v56, -1, -1);
    MEMORY[0x238386450](v55, -1, -1);
  }

  else
  {
  }

  v59 = sub_232545888();
  v60 = sub_232546208();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v127[0] = v62;
    *v61 = 136315650;
    v63 = sub_2324C2220(v112, v119, v127);

    *(v61 + 4) = v63;
    *(v61 + 12) = 2080;
    v64 = sub_2324C2220(v111, v15, v127);

    *(v61 + 14) = v64;
    *(v61 + 22) = 2080;
    v65 = sub_2324C2220(v110, v19, v127);

    *(v61 + 24) = v65;
    _os_log_impl(&dword_2324C0000, v59, v60, " \t\t inter-polling discovery cadence: between %s-%ss, minimum duration between polls: %ss", v61, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v62, -1, -1);
    MEMORY[0x238386450](v61, -1, -1);
  }

  else
  {
  }

  v66 = sub_232545888();
  v67 = sub_232546208();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 67109120;
    *(v68 + 4) = (*(*v1 + 416))() & 1;

    _os_log_impl(&dword_2324C0000, v66, v67, " \t\t misconfigured network detection allowed: %{BOOL}d", v68, 8u);
    MEMORY[0x238386450](v68, -1, -1);
  }

  else
  {
  }

  v69 = sub_232545888();
  v70 = sub_232546208();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v127[0] = v72;
    *v71 = 136315138;
    v73 = sub_2324C2220(v113, v120, v127);

    *(v71 + 4) = v73;
    _os_log_impl(&dword_2324C0000, v69, v70, " \t\t bonjour probe timeout: %ss", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    MEMORY[0x238386450](v72, -1, -1);
    MEMORY[0x238386450](v71, -1, -1);
  }

  else
  {
  }

  v74 = sub_232545888();
  v75 = sub_232546208();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v127[0] = v77;
    *v76 = 136315138;
    v78 = sub_2324C2220(v114, v121, v127);

    *(v76 + 4) = v78;
    _os_log_impl(&dword_2324C0000, v74, v75, " \t\t cloudkit sync interval: every %ss", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x238386450](v77, -1, -1);
    MEMORY[0x238386450](v76, -1, -1);
  }

  else
  {
  }

  v79 = sub_232545888();
  v80 = sub_232546208();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v127[0] = v82;
    *v81 = 136315394;
    v83 = sub_2324C2220(v116, v123, v127);

    *(v81 + 4) = v83;
    *(v81 + 12) = 2080;
    v84 = sub_2324C2220(v115, v122, v127);

    *(v81 + 14) = v84;
    _os_log_impl(&dword_2324C0000, v79, v80, " \t\t debounce interval upon primary resident change: %ss, report telemetry: every %ss", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v82, -1, -1);
    MEMORY[0x238386450](v81, -1, -1);
  }

  else
  {
  }

  v85 = sub_232545888();
  v86 = sub_232546208();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v127[0] = v88;
    *v87 = 136315138;
    v89 = sub_2324C2220(v117, v125, v127);

    *(v87 + 4) = v89;
    _os_log_impl(&dword_2324C0000, v85, v86, " \t\t self record update threshold: %ss", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x238386450](v88, -1, -1);
    MEMORY[0x238386450](v87, -1, -1);
  }

  else
  {
  }

  v90 = sub_232545888();
  v91 = sub_232546208();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v127[0] = v93;
    *v92 = 136315138;
    v94 = sub_2324C2220(v118, v124, v127);

    *(v92 + 4) = v94;
    _os_log_impl(&dword_2324C0000, v90, v91, " \t\t stale record cleanup threshold: %ss", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v93);
    MEMORY[0x238386450](v93, -1, -1);
    MEMORY[0x238386450](v92, -1, -1);
  }

  else
  {
  }

  v95 = (*v1 + 608);
  v96 = *v95;
  v97 = (*v95)();
  if (v97 >= 1)
  {

    v98 = sub_232545888();
    v99 = sub_232546208();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 134217984;
      *(v100 + 4) = v96();

      _os_log_impl(&dword_2324C0000, v98, v99, " \t\t (Override present)cleanup activity interval: %llds", v100, 0xCu);
      MEMORY[0x238386450](v100, -1, -1);
    }

    else
    {
    }
  }

  v101 = (*v1 + 632);
  v102 = *v101;
  if ((*v101)(v97) >= 1)
  {

    v103 = sub_232545888();
    v104 = sub_232546208();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 134217984;
      *(v105 + 4) = v102();

      _os_log_impl(&dword_2324C0000, v103, v104, " \t\t (Override present)cleanup activity delay: %llds", v105, 0xCu);
      MEMORY[0x238386450](v105, -1, -1);
    }

    else
    {
    }
  }

  v126 = sub_232545888();
  v106 = sub_232546208();
  if (os_log_type_enabled(v126, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 0;
    _os_log_impl(&dword_2324C0000, v126, v106, " \t========== [ End NDF Configuration Dump ] ========== ", v107, 2u);
    MEMORY[0x238386450](v107, -1, -1);
  }
}

void *NDFConfiguration.deinit()
{

  return v0;
}

uint64_t NDFConfiguration.__deallocating_deinit()
{
  NDFConfiguration.deinit();

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

char *sub_2324C81D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93900, qword_232547990);
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

char *sub_2324C83D4()
{
  type metadata accessor for NDFAdminController(0);
  swift_allocObject();
  result = sub_2324C8840(0);
  qword_2814D6CC8 = result;
  return result;
}

uint64_t *sub_2324C8418()
{
  if (qword_2814D6CC0 != -1)
  {
    swift_once();
  }

  return &qword_2814D6CC8;
}

uint64_t static NDFAdminController.shared.getter()
{
  if (qword_2814D6CC0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2324C852C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 160) = a1;
}

uint64_t sub_2324C85C4()
{
  v1 = v0;
  v2 = sub_2325458A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 168))
  {
    v6 = *(v1 + 168);
  }

  else
  {
    v7 = sub_2324F491C();
    (*(v3 + 16))(v5, v7, v2);
    sub_232545AC8();
    swift_allocObject();
    v6 = sub_232545AA8();
    *(v1 + 168) = v6;
  }

  return v6;
}

uint64_t (*sub_2324C86F0(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2324C85C4();
  return sub_2324C8738;
}

uint64_t sub_2324C8748@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2324F43A8();
  v3 = sub_2325458A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2324C87B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFAdminController_logger;
  v4 = sub_2325458A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *sub_2324C8840(int a1)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_2325458A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = &v23 - v8;
  swift_defaultActor_initialize();
  *(v1 + 20) = 0;
  *(v1 + 21) = 0;
  v9 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFAdminController_logger;
  v10 = sub_2324F43A8();
  v11 = *(v4 + 16);
  v11(&v1[v9], v10, v3);
  v12 = *(**sub_2324C4D38() + 224);

  LOBYTE(v12) = v12(v13);

  v14 = v12 | v24;
  v1[OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFAdminController_ndfEnabled] = (v12 | v24) & 1;
  if (v14)
  {
    type metadata accessor for NDFClientController();
    *(v1 + 14) = sub_2324D293C();
    type metadata accessor for NDFActorManager(0);
    *(v1 + 15) = sub_232527D10();
    type metadata accessor for NDFDeviceManager(0);
    *(v1 + 16) = sub_2324FC1E4();
    type metadata accessor for NDFDetectionManager(0);
    *(v1 + 17) = sub_2324F4084();
    type metadata accessor for NDFEventController(0);
    *(v1 + 18) = sub_2324E699C();
    type metadata accessor for NDFDistributionController(0);
    *(v1 + 19) = sub_2324DC04C();
    v15 = sub_2325460F8();
    v16 = v23;
    (*(*(v15 - 8) + 56))(v23, 1, 1, v15);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v2;

    sub_2324C8F70(0, 0, v16, &unk_2325474F8, v17);
  }

  else
  {
    v11(v6, &v1[v9], v3);
    v18 = sub_232545888();
    v19 = sub_2325461F8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2324C0000, v18, v19, "NDF is not enabled", v20, 2u);
      MEMORY[0x238386450](v20, -1, -1);
    }

    v21 = *(v4 + 8);
    v21(v6, v3);

    v21(&v2[v9], v3);
    type metadata accessor for NDFAdminController(0);
    swift_defaultActor_destroy();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t sub_2324C8C34()
{
  sub_2324CF4E4();
  v1 = sub_232546248();
  v2 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_2324CF530;
  v0[7] = v2;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2324CDDC0;
  v0[5] = &block_descriptor;
  v3 = _Block_copy(v0 + 2);

  os_state_add_handler();
  _Block_release(v3);

  return MEMORY[0x2822009F8](sub_2324C8D5C, 0, 0);
}

uint64_t sub_2324C8D5C()
{
  v3 = (*(**(*(v0 + 64) + 120) + 312) + **(**(*(v0 + 64) + 120) + 312));
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_2324C8E7C;

  return v3();
}

uint64_t sub_2324C8E7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2324C8F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2324CF3C4(a3, v25 - v10, &qword_27DD93630, &qword_232547550);
  v12 = sub_2325460F8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2324C28AC(v11, &qword_27DD93630, &qword_232547550);
  }

  else
  {
    sub_2325460E8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_232546098();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_232545FA8() + 32;
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

      sub_2324C28AC(a3, &qword_27DD93630, &qword_232547550);

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

  sub_2324C28AC(a3, &qword_27DD93630, &qword_232547550);
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

uint64_t sub_2324C9270(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2324C9290, v1, 0);
}

uint64_t sub_2324C9290(uint64_t a1)
{
  v2 = *(v1[3] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFAdminController_ndfEnabled);
  v1[4] = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFAdminController_logger;
  v3 = sub_232545888();
  if (v2 == 1)
  {
    v4 = sub_232546208();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2324C0000, v3, v4, "Initializing NDF persistent storage", v5, 2u);
      MEMORY[0x238386450](v5, -1, -1);
    }

    v7 = v1[2];
    v6 = v1[3];

    type metadata accessor for NDFCorePersistenceController(0);
    v8 = sub_2324D3708(v7);
    (*(*v6 + 176))(v8);
    v9 = v6[16];
    v1[5] = v9;
    v15 = (*(*v9 + 296) + **(*v9 + 296));
    v10 = swift_task_alloc();
    v1[6] = v10;
    *v10 = v1;
    v10[1] = sub_2324C9530;

    return v15();
  }

  else
  {
    v12 = sub_2325461F8();
    if (os_log_type_enabled(v3, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2324C0000, v3, v12, "NDF is not enabled (not setting up persistent store)", v13, 2u);
      MEMORY[0x238386450](v13, -1, -1);
    }

    v14 = v1[1];

    return v14();
  }
}

uint64_t sub_2324C9530()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v6 = *v0;

  v5 = (*(*v2 + 304) + **(*v2 + 304));
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v6;
  v3[1] = sub_2324C9710;

  return v5();
}

uint64_t sub_2324C9710()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v6 = *v0;

  v5 = (*(*v2 + 504) + **(*v2 + 504));
  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v6;
  v3[1] = sub_2324C98F0;

  return v5();
}

uint64_t sub_2324C98F0()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_2324C9A00, v1, 0);
}

uint64_t sub_2324C9A00()
{
  v1 = *(**sub_2324C4D38() + 536);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    v3 = *(**(v0 + 40) + 312);
    v10 = (v3 + *v3);
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_2324C9C1C;

    return v10();
  }

  else
  {
    v6 = sub_232545888();
    v7 = sub_232546208();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2324C0000, v6, v7, "Background task to clean up records are not required on this platform", v8, 2u);
      MEMORY[0x238386450](v8, -1, -1);
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_2324C9C1C()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_2324C9D2C, v1, 0);
}

uint64_t sub_2324C9D2C(uint64_t a1)
{
  v2 = sub_232545888();
  v3 = sub_232546208();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2324C0000, v2, v3, "Initializing background task manager and scheduling NDFDevicRecord cleanup task", v4, 2u);
    MEMORY[0x238386450](v4, -1, -1);
  }

  v5 = *(v1 + 24);

  v6 = *(*v5 + 192);
  v6();
  if ((*(*v5 + 168))())
  {
    sub_2324CDE50();
  }

  sub_232545AB8();

  (v6)(v7);
  sub_232545A98();

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_2324C9EC0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2324C9EE0, v1, 0);
}

uint64_t sub_2324C9EE0()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v2 = (*v1 + 120) & 0xFFFFFFFFFFFFLL | 0x5B04000000000000;
  v0[5] = *(*v1 + 120);
  v0[6] = v2;
  return MEMORY[0x2822009F8](sub_2324C9F20, v1, 0);
}

uint64_t sub_2324C9F20()
{
  (*(v0 + 40))(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2324C9F88(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 56) = a1;
  return MEMORY[0x2822009F8](sub_2324C9FAC, v2, 0);
}

uint64_t sub_2324C9FAC()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v2 = (*v1 + 128) & 0xFFFFFFFFFFFFLL | 0x8676000000000000;
  v0[5] = *(*v1 + 128);
  v0[6] = v2;
  return MEMORY[0x2822009F8](sub_2324C9FEC, v1, 0);
}

uint64_t sub_2324C9FEC()
{
  (*(v0 + 40))(*(v0 + 56), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2324CA058(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324CA0F4, v1, 0);
}

uint64_t sub_2324CA0F4()
{
  v1 = v0[7];
  v2 = *(v0[6] + 128);
  v3 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v3, v1, &unk_27DD932E0, qword_2325472E0);
  v8 = (*(*v2 + 376) + **(*v2 + 376));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_2324CF640;
  v5 = v0[7];
  v6 = v0[5];

  return v8(v6, v5);
}

uint64_t sub_2324CA268(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 80) = a3;
  *(v4 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324CA30C, v3, 0);
}

uint64_t sub_2324CA30C()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 56) + 128);
  v3 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v3, v1, &unk_27DD932E0, qword_2325472E0);
  v10 = (*(*v2 + 424) + **(*v2 + 424));
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_2324C2784;
  v5 = *(v0 + 64);
  v6 = *(v0 + 80);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);

  return v10(v8, v7, v6, v5);
}

uint64_t sub_2324CA484(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324CA520, v1, 0);
}

uint64_t sub_2324CA520()
{
  v1 = v0[7];
  v2 = *(v0[6] + 128);
  v3 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v3, v1, &unk_27DD932E0, qword_2325472E0);
  v8 = (*(*v2 + 432) + **(*v2 + 432));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_2324CA694;
  v5 = v0[7];
  v6 = v0[5];

  return v8(v6, v5);
}

uint64_t sub_2324CA694()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  sub_2324C28AC(v1, &unk_27DD932E0, qword_2325472E0);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2324CA7BC(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 64) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324CA85C, v1, 0);
}

uint64_t sub_2324CA85C()
{
  v1 = *(v0 + 48);
  v2 = *(*(v0 + 40) + 128);
  v3 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v3, v1, &unk_27DD932E0, qword_2325472E0);
  v8 = (*(*v2 + 400) + **(*v2 + 400));
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_2324CA9D0;
  v5 = *(v0 + 48);
  v6 = *(v0 + 64);

  return v8(v6, v5);
}

uint64_t sub_2324CA9D0()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  sub_2324C28AC(v1, &unk_27DD932E0, qword_2325472E0);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2324CAAF8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2324CAB20, v3, 0);
}

uint64_t sub_2324CAB20()
{
  v6 = (*(**(*(v0 + 32) + 128) + 320) + **(**(*(v0 + 32) + 128) + 320));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2324CAC4C;
  v2 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v6(v4, v3, v2);
}

uint64_t sub_2324CAC4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2324CAD40(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 64) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324CADE0, v1, 0);
}

uint64_t sub_2324CADE0()
{
  v1 = *(v0 + 48);
  v2 = *(*(v0 + 40) + 128);
  v3 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v3, v1, &unk_27DD932E0, qword_2325472E0);
  v8 = (*(*v2 + 408) + **(*v2 + 408));
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_2324CF644;
  v5 = *(v0 + 48);
  v6 = *(v0 + 64);

  return v8(v6, v5);
}

uint64_t sub_2324CAF54(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2324CAF78, v2, 0);
}

uint64_t sub_2324CAF78()
{
  v5 = (*(**(v0[4] + 128) + 488) + **(**(v0[4] + 128) + 488));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_2324CF63C;
  v3 = v0[2];
  v2 = v0[3];

  return v5(v3, v2);
}

uint64_t sub_2324CB0A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2324CB0C0, v1, 0);
}

uint64_t sub_2324CB0C0()
{
  v4 = (*(**(v0[3] + 128) + 480) + **(**(v0[3] + 128) + 480));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2324CB1E8;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_2324CB1E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2324CB2FC()
{
  v3 = (*(**(*(v0 + 16) + 136) + 104) + **(**(*(v0 + 16) + 136) + 104));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2324CB414;

  return v3();
}

uint64_t sub_2324CB414(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

char *NDFAdminController.deinit()
{

  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFAdminController_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t NDFAdminController.__deallocating_deinit()
{
  NDFAdminController.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t NDFAdminController.ping(endpoints:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2324CB628, v1, 0);
}

uint64_t sub_2324CB628()
{
  v1 = v0[3];
  if (v1 >> 62)
  {
    result = sub_232546488();
    v0[5] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v0[2] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93210, &qword_232547A00);
    sub_2324CE1A4();
    v6 = sub_232545F28();
    v8 = v7;

    v9 = v0[1];

    return v9(v6, v8);
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[5] = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v3 = v0[3];
  v0[6] = MEMORY[0x277D84F90];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2383859D0](0);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v3 + 32);
    swift_unknownObjectRetain();
  }

  v0[7] = v4;
  v0[8] = 1;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_2324CB7E0;

  return sub_23252FBA8(v4);
}

uint64_t sub_2324CB7E0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = v2;

  if (v2)
  {
    v5 = v4[4];

    v6 = sub_2324CBB30;
    v7 = v5;
  }

  else
  {
    v7 = v4[4];
    v6 = sub_2324CB90C;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_2324CB90C()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 48);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2324CE098(0, *(v2 + 2) + 1, 1, *(v0 + 48));
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_2324CE098((v3 > 1), v4 + 1, 1, v2);
  }

  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v8 = *(v0 + 40);
  result = swift_unknownObjectRelease();
  *(v2 + 2) = v4 + 1;
  v10 = &v2[16 * v4];
  *(v10 + 4) = v6;
  *(v10 + 5) = v5;
  if (v7 == v8)
  {
    *(v0 + 16) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93210, &qword_232547A00);
    sub_2324CE1A4();
    v11 = sub_232545F28();
    v13 = v12;

    v14 = *(v0 + 8);

    return v14(v11, v13);
  }

  v15 = *(v0 + 64);
  *(v0 + 48) = v2;
  v16 = *(v0 + 24);
  if ((v16 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x2383859D0](v15);
    v17 = result;
  }

  else
  {
    if (v15 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v17 = *(v16 + 8 * v15 + 32);
    result = swift_unknownObjectRetain();
  }

  *(v0 + 56) = v17;
  *(v0 + 64) = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v18 = swift_task_alloc();
  *(v0 + 72) = v18;
  *v18 = v0;
  v18[1] = sub_2324CB7E0;

  return sub_23252FBA8(v17);
}

uint64_t sub_2324CBB30()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t NDFAdminController.sendMessage(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_2324CBBB8, v3, 0);
}

uint64_t sub_2324CBBB8()
{
  v1 = v0[5];
  if (v1 >> 62)
  {
    result = sub_232546488();
    v0[7] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v0[2] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93210, &qword_232547A00);
    sub_2324CE1A4();
    v8 = sub_232545F28();
    v10 = v9;

    v11 = v0[1];

    return v11(v8, v10);
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[7] = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v3 = v0[5];
  v0[8] = MEMORY[0x277D84F90];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2383859D0](0);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v3 + 32);
    swift_unknownObjectRetain();
  }

  v0[9] = v4;
  v0[10] = 1;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_2324CBD74;
  v6 = v0[3];
  v7 = v0[4];

  return sub_232531230(v4, v6, v7);
}

uint64_t sub_2324CBD74(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = v2;

  if (v2)
  {
    v5 = v4[6];

    v6 = sub_2324CC0C8;
    v7 = v5;
  }

  else
  {
    v7 = v4[6];
    v6 = sub_2324CBEA0;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_2324CBEA0()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 64);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2324CE098(0, *(v2 + 2) + 1, 1, *(v0 + 64));
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_2324CE098((v3 > 1), v4 + 1, 1, v2);
  }

  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 80);
  v8 = *(v0 + 56);
  result = swift_unknownObjectRelease();
  *(v2 + 2) = v4 + 1;
  v10 = &v2[16 * v4];
  *(v10 + 4) = v6;
  *(v10 + 5) = v5;
  if (v7 == v8)
  {
    *(v0 + 16) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93210, &qword_232547A00);
    sub_2324CE1A4();
    v11 = sub_232545F28();
    v13 = v12;

    v14 = *(v0 + 8);

    return v14(v11, v13);
  }

  v15 = *(v0 + 80);
  *(v0 + 64) = v2;
  v16 = *(v0 + 40);
  if ((v16 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x2383859D0](v15);
    v17 = result;
  }

  else
  {
    if (v15 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v17 = *(v16 + 8 * v15 + 32);
    result = swift_unknownObjectRetain();
  }

  *(v0 + 72) = v17;
  *(v0 + 80) = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v18 = swift_task_alloc();
  *(v0 + 88) = v18;
  *v18 = v0;
  v18[1] = sub_2324CBD74;
  v19 = *(v0 + 24);
  v20 = *(v0 + 32);

  return sub_232531230(v17, v19, v20);
}

uint64_t sub_2324CC0C8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2324CC14C()
{
  v3 = (*(**(*(v0 + 16) + 152) + 328) + **(**(*(v0 + 16) + 152) + 328));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2324CC26C;

  return v3();
}

uint64_t sub_2324CC26C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t NDFAdminController.triggerSendPayloadToDistributedSymptomsWithInterval(_:leeway:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2324CC38C, v2, 0);
}

uint64_t sub_2324CC38C()
{
  v5 = (*(**(v0[4] + 152) + 336) + **(**(v0[4] + 152) + 336));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_2324CC4B4;
  v3 = v0[2];
  v2 = v0[3];

  return v5(v3, v2);
}

uint64_t sub_2324CC4B4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t NDFAdminController.fetchNDFDeviceRecords()()
{
  v1[2] = v0;
  v2 = type metadata accessor for NDFDevice(0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324CC6B4, v0, 0);
}

uint64_t sub_2324CC6B4(uint64_t a1)
{
  v23 = v1;
  *(v1 + 64) = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFAdminController_logger;
  v2 = sub_232545888();
  v3 = sub_2325461D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 56);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    v7 = sub_232545018();
    sub_2324CF3C4(v7, v4, &unk_27DD932E0, qword_2325472E0);
    v8 = sub_2325456F8();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v4, 1, v8);
    v11 = *(v1 + 56);
    if (v10 == 1)
    {
      sub_2324C28AC(*(v1 + 56), &unk_27DD932E0, qword_2325472E0);
      v12 = 0xE90000000000003ELL;
      v13 = 0x6E776F6E6B6E753CLL;
    }

    else
    {
      v14 = sub_2325456A8();
      v12 = v15;
      (*(v9 + 8))(v11, v8);
      v13 = v14;
    }

    v16 = sub_2324C2220(v13, v12, &v22);

    *(v5 + 4) = v16;
    _os_log_impl(&dword_2324C0000, v2, v3, "Fetching persisted NDF device records... (self:%s)", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x238386450](v6, -1, -1);
    MEMORY[0x238386450](v5, -1, -1);
  }

  v18 = (*(**(v1 + 16) + 168))(v17);
  *(v1 + 72) = v18;
  if (v18)
  {
    v19 = (*v18 + 152) & 0xFFFFFFFFFFFFLL | 0x562B000000000000;
    *(v1 + 80) = *(*v18 + 152);
    *(v1 + 88) = v19;

    return MEMORY[0x2822009F8](sub_2324CC990, v18, 0);
  }

  else
  {

    v20 = *(v1 + 8);

    return v20(1);
  }
}

uint64_t sub_2324CC990()
{
  *(v0 + 96) = (*(v0 + 80))();
  *(v0 + 104) = 0;
  v1 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_2324CCA34, v1, 0);
}

uint64_t sub_2324CCA34()
{
  v22 = v0;
  v1 = v0[12];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[4];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v20 = v5;
    do
    {
      sub_2324CE250(v4, v0[6]);
      v14 = sub_232545888();
      v15 = sub_232546208();
      v16 = os_log_type_enabled(v14, v15);
      v17 = v0[6];
      if (v16)
      {
        v6 = v0[5];
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v21 = v8;
        *v7 = 136315138;
        sub_2324CE250(v17, v6);
        v9 = sub_232545F88();
        v11 = v10;
        sub_2324CE2B4(v17);
        v12 = sub_2324C2220(v9, v11, &v21);

        *(v7 + 4) = v12;
        _os_log_impl(&dword_2324C0000, v14, v15, "Device: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x238386450](v8, -1, -1);
        v13 = v7;
        v5 = v20;
        MEMORY[0x238386450](v13, -1, -1);
      }

      else
      {

        sub_2324CE2B4(v17);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v18 = v0[1];

  return v18(1);
}

uint64_t sub_2324CCC34()
{
  v1 = *(v0 + 104);

  v2 = v1;
  v3 = sub_232545888();
  v4 = sub_2325461F8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 104);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2324C0000, v3, v4, "Failed to fetch NDF device records: %@", v7, 0xCu);
    sub_2324C28AC(v8, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v8, -1, -1);
    MEMORY[0x238386450](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t NDFAdminController.cleanupNDFDeviceRecords()()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324CCE5C, v0, 0);
}

uint64_t sub_2324CCE5C()
{
  v23 = v0;
  v1 = (*(**(v0 + 16) + 168))();
  *(v0 + 32) = v1;
  v2 = sub_232545888();
  if (v1)
  {
    v3 = sub_2325461D8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 24);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v22 = v6;
      *v5 = 136315138;
      v7 = sub_232545018();
      sub_2324CF3C4(v7, v4, &unk_27DD932E0, qword_2325472E0);
      v8 = sub_2325456F8();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(v4, 1, v8) == 1)
      {
        sub_2324C28AC(*(v0 + 24), &unk_27DD932E0, qword_2325472E0);
        v10 = 0xE90000000000003ELL;
        v11 = 0x6E776F6E6B6E753CLL;
      }

      else
      {
        v21 = v6;
        v16 = *(v0 + 24);
        v17 = sub_2325456A8();
        v10 = v18;
        v19 = v16;
        v6 = v21;
        (*(v9 + 8))(v19, v8);
        v11 = v17;
      }

      v20 = sub_2324C2220(v11, v10, &v22);

      *(v5 + 4) = v20;
      _os_log_impl(&dword_2324C0000, v2, v3, "Cleaning up stale persisted NDF device records... (self:%s)", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x238386450](v6, -1, -1);
      MEMORY[0x238386450](v5, -1, -1);
    }

    return MEMORY[0x2822009F8](sub_2324CD178, v1, 0);
  }

  else
  {
    v12 = sub_2325461F8();
    if (os_log_type_enabled(v2, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2324C0000, v2, v12, "Persistence controller is not ready. Cannot clean up stale NDF device records", v13, 2u);
      MEMORY[0x238386450](v13, -1, -1);
    }

    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_2324CD178(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 40) = sub_2324D7D5C(a1);

  return MEMORY[0x2822009F8](sub_2324CD1EC, v2, 0);
}

uint64_t sub_2324CD1EC()
{

  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t NDFAdminController.listNDFDeviceObjects(identifier:)()
{
  v1[2] = v0;
  v2 = type metadata accessor for NDFDevice(0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324CD360, v0, 0);
}

uint64_t sub_2324CD360(uint64_t a1)
{
  v21 = v1;
  v1[8] = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFAdminController_logger;
  v2 = sub_232545888();
  v3 = sub_2325461D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    v7 = sub_232545018();
    sub_2324CF3C4(v7, v4, &unk_27DD932E0, qword_2325472E0);
    v8 = sub_2325456F8();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v4, 1, v8);
    v11 = v1[7];
    if (v10 == 1)
    {
      sub_2324C28AC(v1[7], &unk_27DD932E0, qword_2325472E0);
      v12 = 0xE90000000000003ELL;
      v13 = 0x6E776F6E6B6E753CLL;
    }

    else
    {
      v14 = sub_2325456A8();
      v12 = v15;
      (*(v9 + 8))(v11, v8);
      v13 = v14;
    }

    v16 = sub_2324C2220(v13, v12, &v20);

    *(v5 + 4) = v16;
    _os_log_impl(&dword_2324C0000, v2, v3, "Listing current NDF devices... (self:%s)", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x238386450](v6, -1, -1);
    MEMORY[0x238386450](v5, -1, -1);
  }

  v17 = *(v1[2] + 128);
  v1[9] = v17;
  v18 = *v17 + 328;
  v1[10] = *v18;
  v1[11] = v18 & 0xFFFFFFFFFFFFLL | 0x5A19000000000000;

  return MEMORY[0x2822009F8](sub_2324CD5BC, v17, 0);
}

uint64_t sub_2324CD5BC()
{
  v1 = *(v0 + 16);
  *(v0 + 96) = (*(v0 + 80))();

  return MEMORY[0x2822009F8](sub_2324CD630, v1, 0);
}

uint64_t sub_2324CD630()
{
  v25 = v0;
  v1 = v0[12];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[4];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v23 = v5;
    do
    {
      sub_2324CE250(v4, v0[6]);
      v14 = sub_232545888();
      v15 = sub_232546208();
      v16 = os_log_type_enabled(v14, v15);
      v17 = v0[6];
      if (v16)
      {
        v6 = v0[5];
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v24 = v8;
        *v7 = 136315138;
        sub_2324CE250(v17, v6);
        v9 = sub_232545F88();
        v11 = v10;
        sub_2324CE2B4(v17);
        v12 = sub_2324C2220(v9, v11, &v24);

        *(v7 + 4) = v12;
        _os_log_impl(&dword_2324C0000, v14, v15, "Device: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x238386450](v8, -1, -1);
        v13 = v7;
        v5 = v23;
        MEMORY[0x238386450](v13, -1, -1);
      }

      else
      {

        sub_2324CE2B4(v17);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  else
  {

    v18 = sub_232545888();
    v19 = sub_232546208();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2324C0000, v18, v19, "No NDF devices are currently known", v20, 2u);
      MEMORY[0x238386450](v20, -1, -1);
    }
  }

  v21 = v0[1];

  return v21(1);
}

void sub_2324CD8B0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (*(a1 + 16) == 3)
    {
      sub_2325460D8();
      v8 = sub_2325460F8();
      (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v7;

      sub_2324C8F70(0, 0, v5, &unk_232547520, v9);
    }

    else
    {
      v10 = sub_232545888();
      v11 = sub_2325461E8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_2324C0000, v10, v11, "Not dumping state for a non-sysdiagnose trigger", v12, 2u);
        MEMORY[0x238386450](v12, -1, -1);
      }
    }
  }
}

uint64_t sub_2324CDAB0(uint64_t a1)
{
  v1[3] = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFAdminController_logger;
  v2 = sub_232545888();
  v3 = sub_232546208();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2324C0000, v2, v3, "========== [Begin NDF State Dump] ==========", v4, 2u);
    MEMORY[0x238386450](v4, -1, -1);
  }

  v5 = v1[2];

  v6 = *(v5 + 128);
  v1[4] = v6;
  v7 = *v6;
  v1[5] = *(*v6 + 536);
  v1[6] = (v7 + 536) & 0xFFFFFFFFFFFFLL | 0xA7AD000000000000;

  return MEMORY[0x2822009F8](sub_2324CDBD4, v6, 0);
}

uint64_t sub_2324CDBD4()
{
  (*(v0 + 40))();

  return MEMORY[0x2822009F8](sub_2324CDC40, 0, 0);
}

uint64_t sub_2324CDC40()
{
  v1 = *(v0[2] + 144);
  v0[7] = v1;
  v2 = (*v1 + 216) & 0xFFFFFFFFFFFFLL | 0x36F8000000000000;
  v0[8] = *(*v1 + 216);
  v0[9] = v2;
  return MEMORY[0x2822009F8](sub_2324CDC80, v1, 0);
}

uint64_t sub_2324CDC80()
{
  (*(v0 + 64))();

  return MEMORY[0x2822009F8](sub_2324CDCEC, 0, 0);
}

uint64_t sub_2324CDCEC(uint64_t a1)
{
  v2 = sub_232545888();
  v3 = sub_232546208();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2324C0000, v2, v3, "========== [ End NDF State Dump ] ==========", v4, 2u);
    MEMORY[0x238386450](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_2324CDDC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

char *sub_2324CDE10(int a1)
{
  type metadata accessor for NDFAdminController(0);
  swift_allocObject();
  return sub_2324C8840(a1);
}

unint64_t sub_2324CDE50()
{
  result = qword_27DD93208;
  if (!qword_27DD93208)
  {
    type metadata accessor for NDFCorePersistenceController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD93208);
  }

  return result;
}

uint64_t sub_2324CDEA8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2324CDFA0;

  return v6(a1);
}

uint64_t sub_2324CDFA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_2324CE098(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93220, &qword_232547530);
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

unint64_t sub_2324CE1A4()
{
  result = qword_2814D4C68;
  if (!qword_2814D4C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD93210, &qword_232547A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D4C68);
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

uint64_t sub_2324CE250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDFDevice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2324CE2B4(uint64_t a1)
{
  v2 = type metadata accessor for NDFDevice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for NDFAdminController(uint64_t a1)
{
  result = qword_2814D6CB0;
  if (!qword_2814D6CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2324CE364(uint64_t a1)
{
  result = sub_2325458A8();
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

uint64_t dispatch thunk of NDFAdminController.setupPersistentStorage(withCoordinator:)(uint64_t a1)
{
  v6 = (*(*v1 + 224) + **(*v1 + 224));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2324C290C;

  return v6(a1);
}

uint64_t dispatch thunk of NDFAdminController.clientCheckIn(withConnection:)(uint64_t a1)
{
  v6 = (*(*v1 + 232) + **(*v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2324C2910;

  return v6(a1);
}

uint64_t dispatch thunk of NDFAdminController.clientHasActiveSubscription(_:for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 240) + **(*v2 + 240));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2324C290C;

  return v8(a1, a2);
}

uint64_t dispatch thunk of NDFAdminController.noteDNSConfiguration(with:)(uint64_t a1)
{
  v6 = (*(*v1 + 248) + **(*v1 + 248));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2324C290C;

  return v6(a1);
}

uint64_t dispatch thunk of NDFAdminController.noteDNSServer(_:isResponding:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 256) + **(*v3 + 256));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2324C290C;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of NDFAdminController.noteDNSAllOut(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 264) + **(*v1 + 264));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2324C290C;

  return v6(a1);
}

uint64_t dispatch thunk of NDFAdminController.noteBackhaulIsBroken(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 272) + **(*v1 + 272));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2324C290C;

  return v6(a1);
}

uint64_t dispatch thunk of NDFAdminController.noteInterfaceOfInterest(_:isRemoved:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 288) + **(*v3 + 288));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2324C290C;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of NDFAdminController.noteWiFiIsDisassociated(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 296) + **(*v1 + 296));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2324C290C;

  return v6(a1);
}

uint64_t dispatch thunk of NDFAdminController.updateDeviceFromDictionary(withState:removalKeys:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 304) + **(*v2 + 304));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2324C290C;

  return v8(a1, a2);
}

uint64_t dispatch thunk of NDFAdminController.noteDeviceRecordUpdates(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 312) + **(*v1 + 312));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2324C2910;

  return v6(a1);
}

uint64_t dispatch thunk of NDFAdminController.networkRestrictsMulticastTraffic()()
{
  v4 = (*(*v0 + 320) + **(*v0 + 320));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2324CF234;

  return v4();
}

uint64_t sub_2324CF234(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2324CF330()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2324C290C;

  return sub_2324C8C14(v3, v4, v5, v2);
}

uint64_t sub_2324CF3C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2324CF42C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2324C290C;

  return sub_2324CDEA8(a1, v4);
}

unint64_t sub_2324CF4E4()
{
  result = qword_2814D4EC0;
  if (!qword_2814D4EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814D4EC0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2324CF5A8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2324C290C;

  return sub_2324CDA90(v3, v4, v5, v2);
}

uint64_t sub_2324CF68C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_2324CF724()
{
  v0 = sub_2325458A8();
  __swift_allocate_value_buffer(v0, qword_2814D6EF0);
  v1 = __swift_project_value_buffer(v0, qword_2814D6EF0);
  v2 = sub_2324F4478();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2324CF7B0()
{
  if (qword_2814D65F0 != -1)
  {
    swift_once();
  }

  v0 = sub_2325458A8();

  return __swift_project_value_buffer(v0, qword_2814D6EF0);
}

uint64_t sub_2324CF814@<X0>(uint64_t a1@<X8>)
{
  if (qword_2814D65F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2325458A8();
  v3 = __swift_project_value_buffer(v2, qword_2814D6EF0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2324CF8D4(uint64_t a1)
{
  if (qword_2814D65F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2325458A8();
  v3 = __swift_project_value_buffer(v2, qword_2814D6EF0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_2324CF9C8(uint64_t a1))(uint64_t a1)
{
  if (qword_2814D65F0 != -1)
  {
    swift_once();
  }

  v1 = sub_2325458A8();
  __swift_project_value_buffer(v1, qword_2814D6EF0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_2324CFA5C()
{
  v0 = objc_opt_self();
  v1 = &unk_2847938B0;
  v2 = [v0 interfaceWithProtocol_];

  qword_2814D6600 = v2;
}

uint64_t sub_2324CFAC4(void *a1)
{
  v3 = *v1;
  v4 = sub_2325458A8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93228, &qword_232547540);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_232547150;
  v12 = sub_232545878();
  *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93230, &qword_232547548);
  *(v11 + 32) = v12;
  v13 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v14 = sub_232546048();

  v15 = [v13 initWithArray_];

  aBlock = 0;
  sub_232546198();

  if (aBlock)
  {
    if (qword_2814D65F8 != -1)
    {
      swift_once();
    }

    [a1 setRemoteObjectInterface_];
    v16 = [a1 remoteObjectInterface];
    v37 = v4;
    if (v16)
    {
      v17 = v16;
      v18 = sub_232546188();

      [v17 setClasses:v18 forSelector:sel_didReceiveEvent_ argumentIndex:0 ofReply:0];
    }

    else
    {
    }

    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = a1;
    v24[4] = v3;
    v42 = sub_2324D29AC;
    v43 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2324D0160;
    v41 = &block_descriptor_0;
    v25 = _Block_copy(&aBlock);
    v26 = a1;

    [v26 setInterruptionHandler_];
    _Block_release(v25);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = v26;
    v28[4] = v3;
    v42 = sub_2324D2A3C;
    v43 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2324D0160;
    v41 = &block_descriptor_10;
    v29 = _Block_copy(&aBlock);
    v30 = v26;

    [v30 setInvalidationHandler_];
    _Block_release(v29);
    if (qword_2814D65F0 != -1)
    {
      swift_once();
    }

    v4 = v37;
    v31 = __swift_project_value_buffer(v37, qword_2814D6EF0);
    swift_beginAccess();
    (*(v5 + 16))(v10, v31, v4);
    v32 = v30;
    v20 = sub_232545888();
    v33 = sub_232546208();
    if (os_log_type_enabled(v20, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 67109120;
      *(v34 + 4) = [v32 processIdentifier];

      _os_log_impl(&dword_2324C0000, v20, v33, "Received check-in from client with pid %d", v34, 8u);
      MEMORY[0x238386450](v34, -1, -1);
    }

    else
    {

      v20 = v32;
    }
  }

  else
  {
    if (qword_2814D65F0 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v4, qword_2814D6EF0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v19, v4);
    v20 = sub_232545888();
    v21 = sub_2325461F8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2324C0000, v20, v21, "Cannot convert list of allowed classes to NSSet representation", v22, 2u);
      MEMORY[0x238386450](v22, -1, -1);
    }

    v10 = v8;
  }

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_2324D0124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = (*a4 + 136) & 0xFFFFFFFFFFFFLL | 0x2D94000000000000;
  v5[4] = *(*a4 + 136);
  v5[5] = v6;
  return MEMORY[0x2822009F8](sub_2324D35E4, a4, 0);
}

uint64_t sub_2324D0160(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2324D01A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v27 - v8;
  v10 = sub_2325458A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    if (qword_2814D65F0 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v10, qword_2814D6EF0);
    swift_beginAccess();
    (*(v11 + 16))(v13, v16, v10);
    v17 = a2;
    v18 = sub_232545888();
    v19 = sub_232546208();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v27[1] = a3;
      v21 = a4;
      v22 = v20;
      *v20 = 67109120;
      *(v20 + 1) = [v17 processIdentifier];

      _os_log_impl(&dword_2324C0000, v18, v19, "Client with pid %d has disconnected", v22, 8u);
      v23 = v22;
      a4 = v21;
      MEMORY[0x238386450](v23, -1, -1);
    }

    else
    {

      v18 = v17;
    }

    (*(v11 + 8))(v13, v10);
    v24 = sub_2325460F8();
    (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v15;
    v25[5] = v17;
    v26 = v17;
    sub_2324C8F70(0, 0, v9, a4, v25);
  }

  return result;
}

uint64_t sub_2324D0498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = (*a4 + 136) & 0xFFFFFFFFFFFFLL | 0x2D94000000000000;
  v5[4] = *(*a4 + 136);
  v5[5] = v6;
  return MEMORY[0x2822009F8](sub_2324D04D4, a4, 0);
}

uint64_t sub_2324D04D4()
{
  (*(v0 + 32))(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2324D0538(char a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v58 - v7;
  v8 = sub_2325458A8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v63 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - v12;
  if (qword_2814D65F0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_2814D6EF0);
  swift_beginAccess();
  v59 = *(v9 + 2);
  v60 = v9 + 16;
  v59(v13, v14, v8);
  v15 = a2;
  v64 = v13;
  v16 = sub_232545888();
  v17 = sub_232546208();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v61 = v8;
    v19 = v18;
    v58 = swift_slowAlloc();
    v65[0] = v58;
    *v19 = 67109378;
    *(v19 + 4) = [v15 processIdentifier];

    *(v19 + 8) = 2080;
    if (a1)
    {
      v20 = 1701670771;
    }

    else
    {
      v20 = 28526;
    }

    v21 = v14;
    v22 = a1;
    if (a1)
    {
      v23 = 0xE400000000000000;
    }

    else
    {
      v23 = 0xE200000000000000;
    }

    v24 = v15;
    v25 = v3;
    v26 = v9;
    v27 = sub_2324C2220(v20, v23, v65);
    a1 = v22;
    v14 = v21;

    *(v19 + 10) = v27;
    v9 = v26;
    v3 = v25;
    v15 = v24;
    _os_log_impl(&dword_2324C0000, v16, v17, "Client with pid %d has %s active subscriptions", v19, 0x12u);
    v28 = v58;
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x238386450](v28, -1, -1);
    v29 = v19;
    v8 = v61;
    MEMORY[0x238386450](v29, -1, -1);
  }

  else
  {
  }

  v30 = *(v9 + 1);
  v30(v64, v8);
  v31 = *v3;
  if ((a1 & 1) == 0)
  {
    return (*(v31 + 136))(v15);
  }

  v64 = v9;
  v32 = v8;
  v33 = (*(v31 + 112))(v65);
  v35 = v34;
  v36 = v15;
  MEMORY[0x238385620]();
  if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_232546078();
  }

  sub_232546088();
  v33(v65, 0);
  v37 = v63;
  v38 = v32;
  v59(v63, v14, v32);

  v39 = sub_232545888();
  v40 = sub_232546208();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v61 = v38;
    v43 = v42;
    v65[0] = v42;
    *v41 = 136315138;
    v44 = (*(*v3 + 96))();
    v45 = sub_2324D2B84();
    v46 = MEMORY[0x238385650](v44, v45);
    v48 = v47;

    v49 = sub_2324C2220(v46, v48, v65);

    *(v41 + 4) = v49;
    _os_log_impl(&dword_2324C0000, v39, v40, "Active subscriptions: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x238386450](v43, -1, -1);
    MEMORY[0x238386450](v41, -1, -1);

    v50 = v63;
    v51 = v61;
  }

  else
  {

    v50 = v37;
    v51 = v32;
  }

  v30(v50, v51);
  v53 = sub_2325460F8();
  v54 = v62;
  (*(*(v53 - 8) + 56))(v62, 1, 1, v53);
  v55 = sub_2324D2A74();
  v56 = swift_allocObject();
  v56[2] = v3;
  v56[3] = v55;
  v56[4] = v3;
  v56[5] = v36;
  swift_retain_n();
  v57 = v36;
  sub_2324C8F70(0, 0, v54, &unk_232547560, v56);
}

uint64_t sub_2324D0B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v9 = (*(*a4 + 176) + **(*a4 + 176));
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_2324D0C74;

  return v9(a5);
}

uint64_t sub_2324D0C74()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v6 = *v0;

  v5 = (*(*v2 + 144) + **(*v2 + 144));
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v6;
  v3[1] = sub_2324CB1E8;

  return v5();
}

uint64_t sub_2324D0E40(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24[-v6];
  v8 = *(v4 + 112);
  v9 = a1;
  v10 = v8(v24);
  v12 = v11;
  v13 = sub_2324D2DF4(v11, v9);

  if (!(*v12 >> 62))
  {
    v14 = *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 >= v13)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = sub_232546488();
  if (v14 < v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_2324D3118(v13, v14);
  v15 = v10(v24, 0);
  v16 = (*(*v2 + 96))(v15);
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v17)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  v22 = sub_232546488();

  if (!v22)
  {
LABEL_5:
    v19 = sub_2325460F8();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    v20 = sub_2324D2A74();
    v21 = swift_allocObject();
    v21[2] = v2;
    v21[3] = v20;
    v21[4] = v2;
    v21[5] = v4;
    swift_retain_n();
    sub_2324C8F70(0, 0, v7, &unk_232547570, v21);
  }

  return result;
}

uint64_t sub_2324D10A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = sub_2325458A8();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324D1168, a4, 0);
}

uint64_t sub_2324D1168()
{
  if (qword_2814D65F0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_2814D6EF0);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_232545888();
  v6 = sub_232546208();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2324C0000, v5, v6, "No more active clients, stopping polling", v7, 2u);
    MEMORY[0x238386450](v7, -1, -1);
  }

  v9 = v0[7];
  v8 = v0[8];
  v11 = v0[5];
  v10 = v0[6];

  (*(v9 + 8))(v8, v10);
  v14 = (*(*v11 + 152) + **(*v11 + 152));
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_2324D1390;

  return v14();
}

uint64_t sub_2324D1390()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2324D14BC()
{
  v1 = *sub_2324C8418();
  if (v1)
  {
    v2 = *(v1 + 120);
    v0[2] = v2;
    v3 = *v2 + 320;
    v0[3] = *v3;
    v0[4] = v3 & 0xFFFFFFFFFFFFLL | 0xBCEB000000000000;

    return MEMORY[0x2822009F8](sub_2324D35DC, v2, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2324D15AC()
{
  v1 = *sub_2324C8418();
  if (v1)
  {
    v2 = *(v1 + 120);
    v0[2] = v2;
    v3 = *v2 + 336;
    v0[3] = *v3;
    v0[4] = v3 & 0xFFFFFFFFFFFFLL | 0x3C10000000000000;

    return MEMORY[0x2822009F8](sub_2324D1680, v2, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2324D1680()
{
  (*(v0 + 24))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2324D16EC(uint64_t a1)
{
  v3 = (*(*v1 + 96))();
  v6 = v1;
  v7 = a1;
  sub_2324D1774(sub_2324D3284, &v5, v3);
}

void sub_2324D1774(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_232546488())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2383859D0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_2324D1874(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for NDFEvent(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2325458A8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = [a2 remoteObjectProxy];
  sub_232546338();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93238, qword_232547590);
  if (swift_dynamicCast())
  {
    v41 = v2;
    v16 = v42;
    if (qword_2814D65F0 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v8, qword_2814D6EF0);
    swift_beginAccess();
    (*(v9 + 16))(v14, v17, v8);
    sub_2324D32DC(a1, v7);
    v18 = a2;
    v19 = sub_232545888();
    v20 = sub_232546208();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v40 = a1;
      v22 = v21;
      v23 = swift_slowAlloc();
      v39 = v16;
      v24 = v23;
      v42 = v23;
      *v22 = 67109378;
      *(v22 + 4) = [v18 processIdentifier];

      *(v22 + 8) = 2080;
      v25 = sub_2325384B0();
      v27 = v26;
      sub_2324D3340(v7);
      v28 = sub_2324C2220(v25, v27, &v42);

      *(v22 + 10) = v28;
      _os_log_impl(&dword_2324C0000, v19, v20, "Sending update to client with pid %d for %s", v22, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v29 = v24;
      v16 = v39;
      MEMORY[0x238386450](v29, -1, -1);
      v30 = v22;
      a1 = v40;
      MEMORY[0x238386450](v30, -1, -1);
    }

    else
    {

      sub_2324D3340(v7);
    }

    (*(v9 + 8))(v14, v8);
    v38 = (*(*v41 + 192))(a1);
    [v16 didReceiveEvent_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_2814D65F0 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v8, qword_2814D6EF0);
    swift_beginAccess();
    (*(v9 + 16))(v12, v31, v8);
    v32 = a2;
    v33 = sub_232545888();
    v34 = sub_2325461F8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v32;
      *v36 = v32;
      v37 = v32;
      _os_log_impl(&dword_2324C0000, v33, v34, "Failed to obtain remote object proxy for connection %@", v35, 0xCu);
      sub_2324C28AC(v36, &qword_27DD93218, &qword_232547360);
      MEMORY[0x238386450](v36, -1, -1);
      MEMORY[0x238386450](v35, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_2324D1D70(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_2325458A8();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = *(type metadata accessor for NDFEvent(0) - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324D1E88, v1, 0);
}

uint64_t sub_2324D1E88()
{
  v1 = sub_2324C8418();
  if (*v1)
  {
    v2 = *(*v1 + 144);
    v0[12] = v2;
    v3 = (*v2 + 192) & 0xFFFFFFFFFFFFLL | 0xB55A000000000000;
    v0[13] = *(*v2 + 192);
    v0[14] = v3;

    return MEMORY[0x2822009F8](sub_2324D20BC, v2, 0);
  }

  else
  {
    if (qword_2814D65F0 != -1)
    {
      swift_once();
    }

    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];
    v7 = v0[5];
    v8 = __swift_project_value_buffer(v6, qword_2814D6EF0);
    swift_beginAccess();
    (*(v5 + 16))(v4, v8, v6);
    v9 = v7;
    v10 = sub_232545888();
    v11 = sub_2325461E8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[5];
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = [v12 processIdentifier];

      _os_log_impl(&dword_2324C0000, v10, v11, "Client with pid %d did not miss any in-flight events", v13, 8u);
      MEMORY[0x238386450](v13, -1, -1);
    }

    else
    {

      v10 = v0[5];
    }

    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[7];

    (*(v15 + 8))(v14, v16);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_2324D20BC()
{
  v1 = *(v0 + 48);
  *(v0 + 120) = (*(v0 + 104))();

  return MEMORY[0x2822009F8](sub_2324D2138, v1, 0);
}

uint64_t sub_2324D2138()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 80);
    v4 = *(**(v0 + 48) + 168);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    do
    {
      v7 = *(v0 + 88);
      v8 = *(v0 + 40);
      sub_2324D32DC(v5, v7);
      v4(v7, v8);
      sub_2324D3340(v7);
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2324D2240(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v42 - v3;
  v5 = sub_2325456F8();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v51 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v47 = &v42 - v8;
  v48 = sub_232545688();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v55 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93240, &qword_2325475B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_232545828();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v45 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v19 = sub_232545808();
  v54 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v42 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v42 - v24;
  v26 = *(a1 + 8);
  v52 = v4;
  v53 = v27;
  if (v26)
  {
    if (v26 == 1)
    {
      v28 = MEMORY[0x277D6B288];
    }

    else
    {
      v28 = qword_278988A70[*a1];
    }
  }

  else
  {
    v28 = MEMORY[0x277D6B290];
  }

  v29 = v54;
  (*(v54 + 104))(v23, *v28, v19);
  v30 = v25;
  (*(v29 + 32))(v25, v23, v19);
  sub_232537EA0(*(a1 + 9));
  sub_232545818();
  v31 = *(v14 + 48);
  if (v31(v12, 1, v13) == 1)
  {
    (*(v14 + 104))(v18, *MEMORY[0x277D6B298], v13);
    if (v31(v12, 1, v13) != 1)
    {
      sub_2324C28AC(v12, &qword_27DD93240, &qword_2325475B0);
    }
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
  }

  v43 = v18;
  v32 = type metadata accessor for NDFEvent(0);
  (*(v46 + 16))(v55, a1 + v32[6], v48);
  v33 = v54;
  v34 = *(v54 + 16);
  v44 = v30;
  v34(v53, v30, v19);
  v35 = *(v14 + 16);
  v42 = v13;
  v35(v45, v18, v13);
  v36 = *(v49 + 16);
  v37 = a1 + v32[7];
  v49 = v19;
  v38 = v50;
  v36(v47, v37, v50);
  sub_2324CF3C4(a1 + v32[8], v52, &unk_27DD932E0, qword_2325472E0);
  v36(v51, a1 + v32[9], v38);
  v39 = objc_allocWithZone(sub_232545878());
  v40 = sub_232545858();
  (*(v14 + 8))(v43, v42);
  (*(v33 + 8))(v44, v49);
  return v40;
}

uint64_t sub_2324D2824(unint64_t *a1)
{
  v3 = (*(*v1 + 184))();
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      sub_2324D339C(*a1);
      sub_232545848();
    }
  }

  else
  {
    sub_2325457F8();
    sub_232545868();
    sub_232545838();
  }

  return v3;
}

uint64_t sub_2324D28DC()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2324D2904()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2324D293C()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F90];
  return v0;
}

uint64_t sub_2324D2980()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F90];
  return v0;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_2324D2A74()
{
  result = qword_2814D4DD0;
  if (!qword_2814D4DD0)
  {
    type metadata accessor for NDFClientController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D4DD0);
  }

  return result;
}

uint64_t sub_2324D2AEC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2324C290C;

  return sub_2324D0B48(v4, v5, v6, v2, v3);
}

unint64_t sub_2324D2B84()
{
  result = qword_2814D4C58;
  if (!qword_2814D4C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814D4C58);
  }

  return result;
}

unint64_t sub_2324D2BD0(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_232546488();
    }

    result = sub_2325463F8();
    *v2 = result;
  }

  return result;
}

uint64_t sub_2324D2C8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_232546488();
  }

  return sub_2325463F8();
}

unint64_t sub_2324D2CF0(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_232546488();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x2383859D0](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_2324D2DF4(unint64_t *a1, void *a2)
{
  v7 = *a1;
  v8 = sub_2324D2CF0(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_232546488();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_232546488())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v21 = MEMORY[0x2383859D0](v11, v7);
    swift_unknownObjectRelease();
    if (v21 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x2383859D0](v10, v7);
        v17 = MEMORY[0x2383859D0](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);
        v17 = v16;
LABEL_21:
        v18 = v17;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_2324D2C8C(v7);
          v19 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v18;

        if ((v7 & 0x8000000000000000) != 0 || v19)
        {
          v7 = sub_2324D2C8C(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
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
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_232546488();
}

uint64_t sub_2324D3018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_2324D2B84();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_232546488();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_232546488();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2324D3118(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_232546488();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_232546488();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_2324D2BD0(result, 1);

  return sub_2324D3018(v5, v3, 0);
}

uint64_t sub_2324D31F0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2324C2910;

  return sub_2324D10A4(v3, v4, v5, v2);
}

uint64_t sub_2324D32DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDFEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2324D3340(uint64_t a1)
{
  v2 = type metadata accessor for NDFEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2324D339C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_2324D33AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2324C2910;

  return sub_2324CDEA8(a1, v4);
}

uint64_t sub_2324D3464()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2324C290C;

  return sub_2324D0498(v4, v5, v6, v2, v3);
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2324D3544()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2324C290C;

  return sub_2324D0124(v4, v5, v6, v2, v3);
}

uint64_t sub_2324D35F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2324F47B8();
  v3 = sub_2325458A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2324D3660@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_logger;
  v4 = sub_2325458A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *sub_2324D36D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_storeCoordinator);
  v2 = v1;
  return v1;
}

uint64_t sub_2324D3744(void *a1)
{
  v2 = v1;
  v4 = sub_2325458A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_logger;
  v9 = sub_2324F47B8();
  v10 = *(v5 + 16);
  v10(v2 + v8, v9, v4);
  *(v2 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController____lazy_storage___currentContext) = 1;
  v10(v7, v2 + v8, v4);
  v11 = a1;
  v12 = sub_232545888();
  v13 = sub_232546208();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_2324C0000, v12, v13, "Initializing persistenceController with %@", v14, 0xCu);
    sub_2324C28AC(v15, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v15, -1, -1);
    MEMORY[0x238386450](v14, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  *(v2 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_storeCoordinator) = v11;
  v17 = v11;
  v18 = sub_232545888();
  v19 = sub_232546208();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2324C0000, v18, v19, "Finished initializing the persistenceController", v20, 2u);
    MEMORY[0x238386450](v20, -1, -1);
  }

  return v2;
}

id sub_2324D39CC()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController____lazy_storage___currentContext;
  v2 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController____lazy_storage___currentContext);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_storeCoordinator);
    if (v4)
    {
      v5 = objc_allocWithZone(MEMORY[0x277CBE440]);
      v6 = v4;
      v3 = [v5 initWithConcurrencyType_];
      [v3 setAutomaticallyMergesChangesFromParent_];
      [v3 setPersistentStoreCoordinator_];
      [v3 setMergePolicy_];
      [v3 setUndoManager_];

      v7 = *(v0 + v1);
    }

    else
    {
      v3 = 0;
      v7 = 1;
    }

    *(v0 + v1) = v3;
    v8 = v3;
    sub_2324DA610(v7);
  }

  sub_2324DA620(v2);
  return v3;
}

void sub_2324D3AD4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController____lazy_storage___currentContext);
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController____lazy_storage___currentContext) = a1;
  sub_2324DA610(v2);
}

void (*sub_2324D3AEC(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2324D39CC();
  return sub_2324D3B34;
}

void sub_2324D3B34(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController____lazy_storage___currentContext);
  *(v3 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController____lazy_storage___currentContext) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_2324DA610(v4);
  }

  else
  {

    sub_2324DA610(v4);
  }
}

void sub_2324D3BB8(uint64_t a1)
{
  v3 = (*(*v1 + 120))();
  if (v3)
  {
    v4 = v3;

    v5 = sub_232545888();
    v6 = sub_2325461E8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = *(a1 + 16);

      _os_log_impl(&dword_2324C0000, v5, v6, "Attempting to persist %ld devices...", v7, 0xCu);
      MEMORY[0x238386450](v7, -1, -1);
    }

    else
    {
    }

    MEMORY[0x28223BE20](v8);
    sub_2325462D8();
  }

  else
  {
    v9 = sub_232545888();
    v10 = sub_2325461F8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2324C0000, v9, v10, "Failed to get valid MOC", v11, 2u);
      MEMORY[0x238386450](v11, -1, -1);
    }
  }
}

id sub_2324D3DB4(uint64_t a1, void *a2, uint64_t a3)
{
  v286 = a3;
  v293[1] = *MEMORY[0x277D85DE8];
  v264 = sub_232545688();
  v5 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v245 = &v239 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93288, &qword_2325477D8);
  MEMORY[0x28223BE20](v263);
  v262 = &v239 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v239 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v274 = &v239 - v13;
  MEMORY[0x28223BE20](v12);
  v269 = &v239 - v14;
  v276 = sub_232545A88();
  v15 = *(v276 - 8);
  v16 = MEMORY[0x28223BE20](v276);
  v254 = &v239 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v248 = &v239 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v247 = &v239 - v21;
  MEMORY[0x28223BE20](v20);
  v275 = &v239 - v22;
  v279 = sub_2325456F8();
  v23 = *(v279 - 8);
  MEMORY[0x28223BE20](v279);
  v244 = &v239 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93290, &qword_2325477E0);
  MEMORY[0x28223BE20](v261);
  v266 = &v239 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v253 = &v239 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v255 = &v239 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v260 = &v239 - v32;
  MEMORY[0x28223BE20](v31);
  v268 = &v239 - v33;
  v292 = type metadata accessor for NDFDevice(0);
  v34 = *(v292 - 1);
  v35 = MEMORY[0x28223BE20](v292);
  v277 = &v239 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  MEMORY[0x28223BE20](v37);
  v40 = &v239 - v39;
  v41 = *(a1 + 16);
  v288 = a2;
  v241 = a1;
  v240 = v41;
  if (v41)
  {
    v252 = v38;
    v251 = v11;
    v284 = objc_opt_self();
    v283 = sub_2324DB388(0, &qword_2814D4C60, 0x277CCAC30);
    v42 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v285 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_logger;
    v259 = (v23 + 56);
    v280 = *(v34 + 72);
    v272 = (v23 + 48);
    v243 = (v23 + 32);
    v265 = (v23 + 8);
    v273 = (v15 + 8);
    v258 = (v5 + 56);
    v257 = (v5 + 16);
    v256 = (v5 + 48);
    v242 = (v5 + 32);
    v250 = (v5 + 8);
    v282 = xmmword_232547670;
    *(&v43 + 1) = 3;
    v281 = xmmword_232547680;
    *&v43 = 136315138;
    v271 = v43;
    *&v43 = 138412290;
    v249 = v43;
    *&v43 = 136315394;
    v239 = v43;
    v44 = v41;
    v45 = a1 + v42;
    v270 = v40;
    do
    {
      sub_2324CE250(v45, v40);
      v46 = [v284 fetchRequest];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93200, &qword_2325471B0);
      v47 = swift_allocObject();
      *(v47 + 16) = v282;
      v48 = sub_232545238();
      v50 = *v48;
      v49 = *(v48 + 1);
      v51 = MEMORY[0x277D837D0];
      *(v47 + 56) = MEMORY[0x277D837D0];
      v52 = sub_2324DB334();
      *(v47 + 64) = v52;
      *(v47 + 32) = v50;
      *(v47 + 40) = v49;

      v53 = sub_2325456A8();
      *(v47 + 96) = v51;
      *(v47 + 104) = v52;
      *(v47 + 72) = v53;
      *(v47 + 80) = v54;
      v55 = sub_2325461C8();
      [v46 setPredicate_];

      [v46 setFetchLimit_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93298, &qword_2325477E8);
      v56 = swift_allocObject();
      *(v56 + 16) = v281;
      sub_23254525C();
      v57 = objc_allocWithZone(MEMORY[0x277CCAC98]);

      v58 = sub_232545F58();

      v59 = [v57 initWithKey:v58 ascending:0];

      *(v56 + 32) = v59;
      sub_2324DB388(0, &qword_2814D4C50, 0x277CCAC98);
      v60 = sub_232546048();

      [v46 setSortDescriptors_];

      sub_2324DB388(0, &qword_2814D4ED8, 0x277D6B520);
      v61 = v288;
      v62 = v291;
      v63 = sub_2325462E8();
      if (v62)
      {
        v64 = v277;
        sub_2324CE250(v40, v277);
        v65 = sub_232545888();
        v66 = sub_2325461F8();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v287 = v45;
          v290 = v46;
          v68 = v40;
          v69 = v44;
          v70 = v64;
          v71 = v67;
          v72 = swift_slowAlloc();
          v291 = v62;
          v73 = v72;
          v293[0] = v72;
          *v71 = v271;
          sub_2324DB288(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v74 = sub_232546608();
          v76 = v75;
          v77 = v70;
          v44 = v69;
          v40 = v68;
          v78 = v287;
          sub_2324CE2B4(v77);
          v79 = sub_2324C2220(v74, v76, v293);
          v45 = v78;

          *(v71 + 4) = v79;
          _os_log_impl(&dword_2324C0000, v65, v66, "Error fetching device record with identifier %s", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v73);
          MEMORY[0x238386450](v73, -1, -1);
          MEMORY[0x238386450](v71, -1, -1);
        }

        else
        {

          sub_2324CE2B4(v64);
        }

        v291 = 0;
        goto LABEL_5;
      }

      if (v63 >> 62)
      {
        v231 = v63;
        v80 = sub_232546488();
        v63 = v231;
      }

      else
      {
        v80 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v290 = v46;
      v291 = 0;
      v278 = v44;
      if (!v80)
      {
        v105 = v45;

        v106 = v252;
        sub_2324CE250(v40, v252);
        v107 = sub_232545888();
        v108 = sub_2325461D8();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v293[0] = v110;
          *v109 = v271;
          sub_2324DB288(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v111 = sub_232546608();
          v113 = v112;
          sub_2324CE2B4(v106);
          v114 = sub_2324C2220(v111, v113, v293);
          v115 = v288;

          *(v109 + 4) = v114;
          _os_log_impl(&dword_2324C0000, v107, v108, "Creating new entity for ID: %s", v109, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v110);
          v116 = v110;
          v61 = v115;
          MEMORY[0x238386450](v116, -1, -1);
          MEMORY[0x238386450](v109, -1, -1);
        }

        else
        {

          sub_2324CE2B4(v106);
        }

        v117 = v254;
        v118 = [objc_allocWithZone(MEMORY[0x277D6B520]) initWithContext_];
        v119 = sub_2325456B8();
        [v118 setDeviceID_];

        v45 = v105;
        v44 = v278;
        if (*&v40[v292[6] + 8])
        {
          v120 = sub_232545F58();
        }

        else
        {
          v120 = 0;
        }

        [v118 setDeviceModel_];

        v121 = v253;
        sub_2324CF3C4(&v40[v292[7]], v253, &unk_27DD932E0, qword_2325472E0);
        v122 = v279;
        if ((*v272)(v121, 1, v279) == 1)
        {
          v123 = 0;
        }

        else
        {
          v123 = sub_2325456B8();
          (*v265)(v121, v122);
        }

        v124 = v290;
        [v118 setHomeKitGroupID_];

        if (*&v40[v292[10] + 8])
        {
          v125 = sub_232545F58();
        }

        else
        {
          v125 = 0;
        }

        [v118 setNwObscuredSSID_];

        if (*&v40[v292[8] + 8] >> 60 == 15)
        {
          v126 = 0;
        }

        else
        {
          v126 = sub_2325455C8();
        }

        [v118 setNwSignatureIPv4_];

        if (*&v40[v292[9] + 8] >> 60 == 15)
        {
          v127 = 0;
        }

        else
        {
          v127 = sub_2325455C8();
        }

        [v118 setNwSignatureIPv6_];

        v128 = v292;
        [v118 setIsHomeKitPrimaryResident_];
        v129 = v40[v128[12]];
        [v118 setCanReachHomeKitPrimaryResident_];
        v130 = &v40[v128[14]];
        if (v130[2])
        {
          v131 = 0;
        }

        else
        {
          v131 = *v130;
        }

        [v118 setNwNATCount_];
        v293[0] = 0;
        sub_2324DB288(&unk_27DD93300, MEMORY[0x277D6B300], MEMORY[0x277D6B318]);
        v132 = v117;
        v133 = v276;
        sub_232546798();
        v134 = v40[v128[15]];
        if (v134 != 2 && (v134 & 1) != 0)
        {
          v135 = v248;
          sub_232545A58();
          v287 = v45;
          v136 = v247;
          sub_2324D5F90(v247, v135);
          v137 = *v273;
          v138 = v135;
          v124 = v290;
          (*v273)(v138, v133);
          v139 = v136;
          v45 = v287;
          v137(v139, v133);
        }

        [v118 setNwNetworkProperties_];
        v140 = sub_232545608();
        [v118 setLastUpdated_];

        (*v273)(v132, v133);
        goto LABEL_5;
      }

      if ((v63 & 0xC000000000000001) != 0)
      {
        v81 = MEMORY[0x2383859D0](0);
      }

      else
      {
        if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v81 = *(v63 + 32);
      }

      v82 = v81;

      v83 = v82;
      v84 = sub_232545888();
      v85 = sub_2325461D8();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *v86 = v249;
        *(v86 + 4) = v83;
        *v87 = v83;
        v88 = v83;
        _os_log_impl(&dword_2324C0000, v84, v85, "Updating entity: %@", v86, 0xCu);
        sub_2324C28AC(v87, &qword_27DD93218, &qword_232547360);
        MEMORY[0x238386450](v87, -1, -1);
        MEMORY[0x238386450](v86, -1, -1);
      }

      v89 = [v83 deviceModel];
      v287 = v45;
      if (v89)
      {
        v90 = v89;
        v91 = sub_232545F68();
        v93 = v92;

        v94 = &v40[v292[6]];
        v95 = v94[1];
        if (v95)
        {
          v96 = *v94;
          if ((v91 != *v94 || v95 != v93) && (sub_232546628() & 1) == 0)
          {

            v224 = sub_232545888();
            v225 = sub_2325461F8();

            if (os_log_type_enabled(v224, v225))
            {
              v226 = swift_slowAlloc();
              LODWORD(v267) = v225;
              v227 = v226;
              v289 = swift_slowAlloc();
              v293[0] = v289;
              *v227 = v239;
              v228 = sub_2324C2220(v91, v93, v293);

              *(v227 + 4) = v228;
              *(v227 + 12) = 2080;
              v229 = sub_2324C2220(v96, v95, v293);

              *(v227 + 14) = v229;
              _os_log_impl(&dword_2324C0000, v224, v267, "DeviceModelError: incoming device model %s does not match existing %s", v227, 0x16u);
              v230 = v289;
              swift_arrayDestroy();
              MEMORY[0x238386450](v230, -1, -1);
              MEMORY[0x238386450](v227, -1, -1);
            }

            else
            {
            }

            goto LABEL_56;
          }
        }
      }

      v97 = &v40[v292[6]];
      v98 = *(v97 + 1);
      if (!v98)
      {
        goto LABEL_56;
      }

      v99 = *v97;

      v100 = [v83 deviceModel];
      if (!v100)
      {

LABEL_55:
        v142 = sub_232545F58();
        [v83 setDeviceModel_];

        goto LABEL_56;
      }

      v101 = v100;
      v102 = sub_232545F68();
      v104 = v103;

      if (v99 == v102 && v98 == v104)
      {

        goto LABEL_56;
      }

      v141 = sub_232546628();

      if ((v141 & 1) == 0)
      {
        goto LABEL_55;
      }

LABEL_56:
      v143 = [v83 homeKitGroupID];
      v289 = v83;
      if (v143)
      {
        v144 = v268;
        v145 = v143;
        sub_2325456D8();

        v146 = 0;
        v147 = v260;
      }

      else
      {
        v146 = 1;
        v147 = v260;
        v144 = v268;
      }

      v148 = v279;
      (*v259)(v144, v146, 1, v279);
      v149 = v292[7];
      v150 = *(v261 + 48);
      v151 = v266;
      sub_2324CF3C4(v144, v266, &unk_27DD932E0, qword_2325472E0);
      v267 = v149;
      sub_2324CF3C4(&v40[v149], v151 + v150, &unk_27DD932E0, qword_2325472E0);
      v152 = *v272;
      if ((*v272)(v151, 1, v148) == 1)
      {
        sub_2324C28AC(v144, &unk_27DD932E0, qword_2325472E0);
        v153 = v148;
        if (v152(v151 + v150, 1, v148) == 1)
        {
          sub_2324C28AC(v151, &unk_27DD932E0, qword_2325472E0);
          v154 = v289;
          goto LABEL_69;
        }
      }

      else
      {
        sub_2324CF3C4(v151, v147, &unk_27DD932E0, qword_2325472E0);
        v153 = v148;
        if (v152(v151 + v150, 1, v148) != 1)
        {
          v164 = v244;
          (*v243)(v244, v151 + v150, v153);
          sub_2324DB288(&qword_2814D4E80, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v165 = v147;
          v166 = sub_232545F48();
          v167 = *v265;
          (*v265)(v164, v279);
          sub_2324C28AC(v268, &unk_27DD932E0, qword_2325472E0);
          v167(v165, v279);
          v153 = v279;
          sub_2324C28AC(v266, &unk_27DD932E0, qword_2325472E0);
          v154 = v289;
          if (v166)
          {
            goto LABEL_69;
          }

          goto LABEL_65;
        }

        sub_2324C28AC(v268, &unk_27DD932E0, qword_2325472E0);
        (*v265)(v147, v148);
      }

      sub_2324C28AC(v151, &qword_27DD93290, &qword_2325477E0);
      v154 = v289;
LABEL_65:
      v155 = v255;
      sub_2324CF3C4(&v270[v267], v255, &unk_27DD932E0, qword_2325472E0);
      if (v152(v155, 1, v153) == 1)
      {
        v156 = 0;
      }

      else
      {
        v156 = sub_2325456B8();
        (*v265)(v155, v153);
      }

      [v154 setHomeKitGroupID_];

LABEL_69:
      v157 = [v154 nwObscuredSSID];
      if (!v157)
      {
        v40 = v270;
        if (!*&v270[v292[10] + 8])
        {
          goto LABEL_82;
        }

LABEL_80:
        v163 = sub_232545F58();
LABEL_81:
        [v154 setNwObscuredSSID_];

        goto LABEL_82;
      }

      v158 = v157;
      v159 = sub_232545F68();
      v161 = v160;

      v40 = v270;
      v162 = &v270[v292[10]];
      v163 = *(v162 + 1);
      if (!v163)
      {

        goto LABEL_81;
      }

      if (v159 == *v162 && v163 == v161)
      {

        goto LABEL_82;
      }

      v168 = sub_232546628();

      if ((v168 & 1) == 0)
      {
        goto LABEL_80;
      }

LABEL_82:
      v169 = [v154 nwSignatureIPv4];
      if (!v169)
      {
        v171 = 0;
        v178 = &v40[v292[8]];
        v175 = *v178;
        v177 = v178 + 1;
        v176 = v178[1];
        v173 = 0xF000000000000000;
LABEL_88:
        if (v176 >> 60 == 15)
        {
          sub_2324DB3D0(v175, v176);
          sub_2324DB438(v171, v173);
          goto LABEL_95;
        }

        goto LABEL_90;
      }

      v170 = v169;
      v171 = sub_2325455D8();
      v173 = v172;

      v174 = &v40[v292[8]];
      v175 = *v174;
      v177 = v174 + 1;
      v176 = v174[1];
      if (v173 >> 60 == 15)
      {
        goto LABEL_88;
      }

      if (v176 >> 60 != 15)
      {
        sub_2324DB3D0(*v174, v176);
        sub_2324DB3D0(v171, v173);
        LODWORD(v267) = sub_2324DA960(v171, v173, v175, v176);
        sub_2324DB438(v171, v173);
        sub_2324DB438(v175, v176);
        sub_2324DB438(v171, v173);
        if (v267)
        {
          goto LABEL_95;
        }

        goto LABEL_91;
      }

LABEL_90:
      sub_2324DB3D0(v175, v176);
      sub_2324DB438(v171, v173);
      sub_2324DB438(v175, v176);
LABEL_91:
      if (*v177 >> 60 == 15)
      {
        v179 = 0;
      }

      else
      {
        v179 = sub_2325455C8();
      }

      [v154 setNwSignatureIPv4_];

LABEL_95:
      v180 = [v154 nwSignatureIPv6];
      if (!v180)
      {
        v182 = 0;
        v190 = &v40[v292[9]];
        v186 = *v190;
        v188 = v190 + 1;
        v187 = v190[1];
        v184 = 0xF000000000000000;
LABEL_101:
        if (v187 >> 60 == 15)
        {
          sub_2324DB3D0(v186, v187);
          sub_2324DB438(v182, v184);
          v189 = v264;
          goto LABEL_108;
        }

        goto LABEL_103;
      }

      v181 = v180;
      v182 = sub_2325455D8();
      v184 = v183;

      v185 = &v40[v292[9]];
      v186 = *v185;
      v188 = v185 + 1;
      v187 = v185[1];
      if (v184 >> 60 == 15)
      {
        goto LABEL_101;
      }

      if (v187 >> 60 != 15)
      {
        sub_2324DB3D0(*v185, v187);
        sub_2324DB3D0(v182, v184);
        LODWORD(v267) = sub_2324DA960(v182, v184, v186, v187);
        sub_2324DB438(v182, v184);
        sub_2324DB438(v186, v187);
        sub_2324DB438(v182, v184);
        v189 = v264;
        if (v267)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      }

LABEL_103:
      sub_2324DB3D0(v186, v187);
      sub_2324DB438(v182, v184);
      sub_2324DB438(v186, v187);
      v189 = v264;
LABEL_104:
      if (*v188 >> 60 == 15)
      {
        v191 = 0;
      }

      else
      {
        v191 = sub_2325455C8();
      }

      [v154 setNwSignatureIPv6_];

LABEL_108:
      v192 = v40[v292[11]];
      if (v192 != 2)
      {
        v193 = v192 & 1;
        if ([v154 isHomeKitPrimaryResident] != v193)
        {
          [v154 setIsHomeKitPrimaryResident_];
        }
      }

      v194 = v40[v292[12]];
      v195 = v276;
      if (v194 != 2)
      {
        v196 = v194 & 1;
        if ([v289 canReachHomeKitPrimaryResident] != v196)
        {
          [v289 setCanReachHomeKitPrimaryResident_];
        }
      }

      v197 = &v40[v292[14]];
      if ((v197[2] & 1) == 0)
      {
        v198 = *v197;
        if (v198 != [v289 nwNATCount])
        {
          [v289 setNwNATCount_];
        }
      }

      v293[0] = 0;
      sub_2324DB288(&unk_27DD93300, MEMORY[0x277D6B300], MEMORY[0x277D6B318]);
      sub_232546798();
      v199 = v40[v292[15]];
      if (v199 != 2 && (v199 & 1) != 0)
      {
        v200 = v248;
        sub_232545A58();
        v201 = v247;
        sub_2324D5F90(v247, v200);
        v202 = *v273;
        (*v273)(v200, v195);
        v202(v201, v195);
      }

      v203 = v289;
      v204 = [v289 nwNetworkProperties];
      if (v204 != sub_232545A78())
      {
        [v203 setNwNetworkProperties_];
      }

      v205 = [v203 lastUpdated];
      if (v205)
      {
        v206 = v269;
        v207 = v205;
        sub_232545658();

        v208 = 0;
      }

      else
      {
        v208 = 1;
        v206 = v269;
      }

      v209 = *v258;
      (*v258)(v206, v208, 1, v189);
      v210 = *v257;
      v267 = v292[5];
      v211 = v274;
      v210(v274, &v40[v267], v189);
      v209(v211, 0, 1, v189);
      v212 = *(v263 + 48);
      v213 = v262;
      sub_2324CF3C4(v206, v262, &qword_27DD93440, &qword_232547AE0);
      sub_2324CF3C4(v211, v213 + v212, &qword_27DD93440, &qword_232547AE0);
      v214 = v206;
      v215 = *v256;
      if ((*v256)(v213, 1, v189) == 1)
      {
        sub_2324C28AC(v274, &qword_27DD93440, &qword_232547AE0);
        sub_2324C28AC(v214, &qword_27DD93440, &qword_232547AE0);
        v216 = v215(v213 + v212, 1, v189);
        v45 = v287;
        if (v216 == 1)
        {
          sub_2324C28AC(v213, &qword_27DD93440, &qword_232547AE0);
          v217 = v276;
          v219 = v289;
          v218 = v290;
LABEL_133:
          (*v273)(v275, v217);

          v44 = v278;
          goto LABEL_5;
        }

        goto LABEL_130;
      }

      v220 = v251;
      sub_2324CF3C4(v213, v251, &qword_27DD93440, &qword_232547AE0);
      if (v215(v213 + v212, 1, v189) == 1)
      {
        sub_2324C28AC(v274, &qword_27DD93440, &qword_232547AE0);
        sub_2324C28AC(v269, &qword_27DD93440, &qword_232547AE0);
        (*v250)(v220, v189);
        v45 = v287;
LABEL_130:
        sub_2324C28AC(v213, &qword_27DD93288, &qword_2325477D8);
        v217 = v276;
        v219 = v289;
        v218 = v290;
        goto LABEL_131;
      }

      v222 = v245;
      (*v242)(v245, v213 + v212, v189);
      sub_2324DB288(&qword_27DD932A0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v246 = sub_232545F48();
      v223 = *v250;
      (*v250)(v222, v189);
      sub_2324C28AC(v274, &qword_27DD93440, &qword_232547AE0);
      sub_2324C28AC(v269, &qword_27DD93440, &qword_232547AE0);
      v223(v220, v189);
      sub_2324C28AC(v213, &qword_27DD93440, &qword_232547AE0);
      v217 = v276;
      v45 = v287;
      v219 = v289;
      v218 = v290;
      if (v246)
      {
        goto LABEL_133;
      }

LABEL_131:
      v221 = sub_232545608();
      [v219 setLastUpdated_];

      (*v273)(v275, v217);
      v44 = v278;
LABEL_5:
      sub_2324CE2B4(v40);
      v45 += v280;
      --v44;
    }

    while (v44);
  }

  v232 = v288;
  if ([v288 hasChanges])
  {
    v293[0] = 0;
    if (![v232 save_])
    {
      v237 = v293[0];
      sub_2325455A8();

      return swift_willThrow();
    }

    v233 = v293[0];

    v234 = sub_232545888();
    v235 = sub_232546208();
    if (os_log_type_enabled(v234, v235))
    {
      v236 = swift_slowAlloc();
      *v236 = 134217984;
      *(v236 + 4) = v240;

      _os_log_impl(&dword_2324C0000, v234, v235, "Persisted %ld updated devices", v236, 0xCu);
      MEMORY[0x238386450](v236, -1, -1);
    }

    else
    {
    }
  }

  return [v232 reset];
}

uint64_t sub_2324D5F90(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932A8, &unk_2325477F0);
  v4 = MEMORY[0x28223BE20](v28);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = sub_232545A88();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = *(v9 + 16);
  v27 = v2;
  v15(v12, v2, v8);
  v16 = MEMORY[0x277D6B300];
  v25 = sub_2324DB288(&qword_27DD93278, MEMORY[0x277D6B300], MEMORY[0x277D6B310]);
  sub_232546358();
  v17 = v16;
  v18 = v28;
  sub_2324DB288(&qword_27DD93310, v17, MEMORY[0x277D6B308]);
  v26 = a2;
  v19 = sub_232545F48();
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
    sub_232546368();
  }

  v22 = v29;
  sub_2324DB4A0(v7, v29);
  v23 = *v22;
  (*(v9 + 32))(v30, &v22[*(v18 + 48)], v8);
  return v23;
}

uint64_t sub_2324D6284()
{
  v1 = (*(*v0 + 120))();
  if (!v1)
  {
    v11 = sub_232545888();
    v12 = sub_2325461F8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2324C0000, v11, v12, "Failed to get valid MOC", v13, 2u);
      MEMORY[0x238386450](v13, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v15 = MEMORY[0x277D84F90];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = &v15;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2324DA650;
  *(v4 + 24) = v3;
  aBlock[4] = sub_2324DA658;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2324D7C14;
  aBlock[3] = &block_descriptor_1;
  v5 = _Block_copy(aBlock);

  [v2 performBlockAndWait_];
  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    v7 = sub_232545888();
    v8 = sub_232546208();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      swift_beginAccess();
      *(v9 + 4) = *(v15 + 16);
      _os_log_impl(&dword_2324C0000, v7, v8, "Loaded %ld devices from persistence", v9, 0xCu);
      MEMORY[0x238386450](v9, -1, -1);
    }

    swift_beginAccess();
    v10 = v15;

    return v10;
  }

  __break(1u);
  return result;
}

void sub_2324D6560(uint64_t a1, uint64_t *a2)
{
  v179 = a2;
  v193 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v147 - v4;
  v158 = sub_232545688();
  v6 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v178 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NDFDevice(0);
  v157 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v177 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v176 = &v147 - v11;
  v175 = sub_232545A88();
  v12 = *(v175 - 8);
  v13 = MEMORY[0x28223BE20](v175);
  v156 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v161 = &v147 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v174 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v159 = &v147 - v19;
  v20 = sub_2325456F8();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v173 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v181 = &v147 - v24;
  sub_2324DB388(0, &qword_2814D4ED8, 0x277D6B520);
  v25 = [swift_getObjCClassFromMetadata() entityName];
  if (!v25)
  {
    sub_232545F68();
    v25 = sub_232545F58();
  }

  v26 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  [v26 setResultType_];
  *&v191 = 0;
  v149 = v26;
  v27 = [v26 execute_];
  v28 = v191;
  if (v27)
  {
    v29 = v27;
    v172 = v6;
    v30 = v12;
    sub_2324DB388(0, &qword_2814D4EE0, 0x277CBEAC0);
    v31 = sub_232546058();
    v32 = v28;

    v33 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_logger;

    v180 = v33;
    v34 = sub_232545888();
    v35 = sub_2325461D8();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v31 >> 62;
    v184 = v20;
    v185 = v31;
    if (!v36)
    {

      goto LABEL_11;
    }

    v20 = swift_slowAlloc();
    *v20 = 134217984;
    if (v37)
    {
      goto LABEL_123;
    }

    v31 = v185;
    for (i = *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_232546488())
    {
      *(v20 + 4) = i;

      _os_log_impl(&dword_2324C0000, v34, v35, "Fetched %ld device records", v20, 0xCu);
      MEMORY[0x238386450](v20, -1, -1);

      v20 = v184;
LABEL_11:
      v49 = v31;
      if (v37)
      {
        v34 = v31;
        v50 = sub_232546488();
        v49 = v31;
        if (!v50)
        {
LABEL_121:

          return;
        }
      }

      else
      {
        v50 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v50)
        {
          goto LABEL_121;
        }
      }

      if (v50 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_123:
      v31 = v185;
    }

    v51 = 0;
    v182 = v49 & 0xC000000000000001;
    v186 = (v21 + 56);
    v171 = (v21 + 48);
    v153 = (v21 + 32);
    v152 = (v21 + 16);
    v151 = (v172 + 7);
    v160 = (v172 + 6);
    v148 = (v172 + 4);
    v172 = (v30 + 8);
    v150 = (v21 + 8);
    *&v39 = 138412290;
    v155 = v39;
    v154 = v5;
    v52 = v159;
    v183 = v50;
    while (1)
    {
      if (v182)
      {
        v53 = MEMORY[0x2383859D0](v51);
      }

      else
      {
        v53 = *(v49 + 8 * v51 + 32);
      }

      v54 = v53;
      v55 = sub_232545238();
      v57 = *v55;
      v56 = *(v55 + 1);
      *&v189 = v57;
      *(&v189 + 1) = v56;

      v58 = [v54 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v58)
      {
        sub_232546338();
        swift_unknownObjectRelease();
      }

      else
      {
        v189 = 0u;
        v190 = 0u;
      }

      v191 = v189;
      v192 = v190;
      if (*(&v190 + 1))
      {
        v59 = swift_dynamicCast();
        v60 = *v186;
        (*v186)(v52, v59 ^ 1u, 1, v20);
        if ((*v171)(v52, 1, v20) != 1)
        {
          (*v153)(v181, v52, v20);
          v61 = sub_23254539C();
          v63 = *v61;
          v62 = v61[1];
          *&v191 = v63;
          *(&v191 + 1) = v62;

          v64 = [v54 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v64)
          {
            sub_232546338();
            swift_unknownObjectRelease();
          }

          else
          {
            v189 = 0u;
            v190 = 0u;
          }

          v191 = v189;
          v192 = v190;
          if (*(&v190 + 1))
          {
            swift_dynamicCast();
          }

          else
          {
            sub_2324C28AC(&v191, &qword_27DD93248, &unk_2325477B0);
          }

          sub_232545A68();
          (*v152)(v173, v181, v20);
          v72 = sub_23254525C();
          v74 = *v72;
          v73 = *(v72 + 1);
          *&v189 = v74;
          *(&v189 + 1) = v73;

          v75 = [v54 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v75)
          {
            sub_232546338();
            swift_unknownObjectRelease();
          }

          else
          {
            v189 = 0u;
            v190 = 0u;
          }

          v76 = v158;
          v191 = v189;
          v192 = v190;
          if (*(&v190 + 1))
          {
            v77 = swift_dynamicCast();
            (*v151)(v5, v77 ^ 1u, 1, v76);
            if ((*v160)(v5, 1, v76) != 1)
            {
              (*v148)(v178, v5, v76);
LABEL_43:
              v78 = sub_232545288();
              v80 = *v78;
              v79 = *(v78 + 1);
              *&v191 = v80;
              *(&v191 + 1) = v79;

              v81 = [v54 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v81)
              {
                sub_232546338();
                swift_unknownObjectRelease();
              }

              else
              {
                v189 = 0u;
                v190 = 0u;
              }

              v191 = v189;
              v192 = v190;
              if (*(&v190 + 1))
              {
                v82 = swift_dynamicCast();
                v83 = v187;
                if (!v82)
                {
                  v83 = 0;
                }

                v170 = v83;
                if (v82)
                {
                  v84 = v188;
                }

                else
                {
                  v84 = 0;
                }

                v169 = v84;
              }

              else
              {
                sub_2324C28AC(&v191, &qword_27DD93248, &unk_2325477B0);
                v170 = 0;
                v169 = 0;
              }

              v85 = sub_2325452B4();
              v87 = *v85;
              v86 = *(v85 + 1);
              *&v189 = v87;
              *(&v189 + 1) = v86;

              v88 = [v54 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v88)
              {
                sub_232546338();
                swift_unknownObjectRelease();
              }

              else
              {
                v189 = 0u;
                v190 = 0u;
              }

              v89 = v184;
              v191 = v189;
              v192 = v190;
              if (*(&v190 + 1))
              {
                v90 = v174;
                v91 = swift_dynamicCast() ^ 1;
                v92 = v90;
              }

              else
              {
                sub_2324C28AC(&v191, &qword_27DD93248, &unk_2325477B0);
                v92 = v174;
                v91 = 1;
              }

              v60(v92, v91, 1, v89);
              v93 = sub_2325452E4();
              v95 = *v93;
              v94 = v93[1];
              *&v191 = v95;
              *(&v191 + 1) = v94;

              v96 = [v54 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v96)
              {
                sub_232546338();
                swift_unknownObjectRelease();
              }

              else
              {
                v189 = 0u;
                v190 = 0u;
              }

              v191 = v189;
              v192 = v190;
              if (*(&v190 + 1))
              {
                v97 = swift_dynamicCast();
                v98 = v187;
                if (!v97)
                {
                  v98 = 0;
                }

                v168 = v98;
                v99 = 0xF000000000000000;
                if (v97)
                {
                  v99 = v188;
                }
              }

              else
              {
                sub_2324C28AC(&v191, &qword_27DD93248, &unk_2325477B0);
                v168 = 0;
                v99 = 0xF000000000000000;
              }

              v167 = v99;
              v100 = sub_232545314();
              v102 = *v100;
              v101 = v100[1];
              *&v191 = v102;
              *(&v191 + 1) = v101;

              v103 = [v54 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v103)
              {
                sub_232546338();
                swift_unknownObjectRelease();
              }

              else
              {
                v189 = 0u;
                v190 = 0u;
              }

              v191 = v189;
              v192 = v190;
              if (*(&v190 + 1))
              {
                v104 = swift_dynamicCast();
                v105 = v187;
                if (!v104)
                {
                  v105 = 0;
                }

                v166 = v105;
                v106 = 0xF000000000000000;
                if (v104)
                {
                  v106 = v188;
                }
              }

              else
              {
                sub_2324C28AC(&v191, &qword_27DD93248, &unk_2325477B0);
                v166 = 0;
                v106 = 0xF000000000000000;
              }

              v165 = v106;
              v107 = sub_232545344();
              v109 = *v107;
              v108 = *(v107 + 1);
              *&v191 = v109;
              *(&v191 + 1) = v108;

              v110 = [v54 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v110)
              {
                sub_232546338();
                swift_unknownObjectRelease();
              }

              else
              {
                v189 = 0u;
                v190 = 0u;
              }

              v191 = v189;
              v192 = v190;
              if (*(&v190 + 1))
              {
                v111 = swift_dynamicCast();
                v112 = v187;
                if (!v111)
                {
                  v112 = 0;
                }

                v164 = v112;
                if (v111)
                {
                  v113 = v188;
                }

                else
                {
                  v113 = 0;
                }

                v163 = v113;
              }

              else
              {
                sub_2324C28AC(&v191, &qword_27DD93248, &unk_2325477B0);
                v164 = 0;
                v163 = 0;
              }

              v114 = sub_2325453C4();
              v116 = *v114;
              v115 = v114[1];
              *&v191 = v116;
              *(&v191 + 1) = v115;

              v117 = [v54 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v117)
              {
                sub_232546338();
                swift_unknownObjectRelease();
              }

              else
              {
                v189 = 0u;
                v190 = 0u;
              }

              v191 = v189;
              v192 = v190;
              if (*(&v190 + 1))
              {
                v118 = swift_dynamicCast();
                v119 = v187;
                if (!v118)
                {
                  v119 = 2;
                }
              }

              else
              {
                sub_2324C28AC(&v191, &qword_27DD93248, &unk_2325477B0);
                v119 = 2;
              }

              v162 = v119;
              v120 = sub_2325453EC();
              v122 = *v120;
              v121 = v120[1];
              *&v191 = v122;
              *(&v191 + 1) = v121;

              v123 = [v54 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v123)
              {
                sub_232546338();
                swift_unknownObjectRelease();
              }

              else
              {
                v189 = 0u;
                v190 = 0u;
              }

              v124 = a1;
              v191 = v189;
              v192 = v190;
              if (*(&v190 + 1))
              {
                if (swift_dynamicCast())
                {
                  v125 = v187;
                }

                else
                {
                  v125 = 2;
                }
              }

              else
              {
                sub_2324C28AC(&v191, &qword_27DD93248, &unk_2325477B0);
                v125 = 2;
              }

              v126 = sub_232545374();
              v128 = *v126;
              v127 = *(v126 + 1);
              *&v191 = v128;
              *(&v191 + 1) = v127;

              v129 = [v54 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v129)
              {
                sub_232546338();
                swift_unknownObjectRelease();
              }

              else
              {
                v189 = 0u;
                v190 = 0u;
              }

              v191 = v189;
              v192 = v190;
              if (*(&v190 + 1))
              {
                v130 = swift_dynamicCast();
                v131 = v130 ^ 1;
                if (v130)
                {
                  v132 = v187;
                }

                else
                {
                  v132 = 0;
                }
              }

              else
              {
                sub_2324C28AC(&v191, &qword_27DD93248, &unk_2325477B0);
                v132 = 0;
                v131 = 1;
              }

              v133 = v156;
              sub_232545A58();
              sub_2324DB288(&qword_27DD93278, MEMORY[0x277D6B300], MEMORY[0x277D6B310]);
              v134 = v175;
              v135 = sub_232546348();
              v136 = *v172;
              (*v172)(v133, v134);
              v146 = v135 & 1;
              v137 = v176;
              sub_2324FA5C0(v173, v178, v170, v169, v174, v168, v167, v166, v176, v165, v164, v163, v162, v125, 0, v132, (v132 | (v131 << 16)) >> 16, (v132 | (v131 << 16)) >> 24, v146);
              sub_2324CE250(v137, v177);
              v138 = v179;
              v139 = *v179;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v138 = v139;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v139 = sub_2324DA434(0, v139[2] + 1, 1, v139, &qword_27DD93280, &qword_2325477D0, type metadata accessor for NDFDevice);
                *v179 = v139;
              }

              a1 = v124;
              v142 = v139[2];
              v141 = v139[3];
              v5 = v154;
              v143 = v161;
              if (v142 >= v141 >> 1)
              {
                v145 = sub_2324DA434((v141 > 1), v142 + 1, 1, v139, &qword_27DD93280, &qword_2325477D0, type metadata accessor for NDFDevice);
                *v179 = v145;
              }

              sub_2324CE2B4(v176);
              v136(v143, v175);
              v20 = v184;
              (*v150)(v181, v184);
              v144 = *v179;
              *(v144 + 16) = v142 + 1;
              sub_2324DB2D0(v177, v144 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v142);
              v52 = v159;
              goto LABEL_16;
            }
          }

          else
          {
            sub_2324C28AC(&v191, &qword_27DD93248, &unk_2325477B0);
            (*v151)(v5, 1, 1, v76);
          }

          sub_2325455E8();
          if ((*v160)(v5, 1, v76) != 1)
          {
            sub_2324C28AC(v5, &qword_27DD93440, &qword_232547AE0);
          }

          goto LABEL_43;
        }
      }

      else
      {
        sub_2324C28AC(&v191, &qword_27DD93248, &unk_2325477B0);
        (*v186)(v52, 1, 1, v20);
      }

      sub_2324C28AC(v52, &unk_27DD932E0, qword_2325472E0);
      v65 = v54;
      v66 = sub_232545888();
      v67 = sub_2325461F8();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v68 = v155;
        *(v68 + 4) = v65;
        *v69 = v65;
        v70 = v65;
        _os_log_impl(&dword_2324C0000, v66, v67, "Device record does not have a valid deviceID: %@", v68, 0xCu);
        sub_2324C28AC(v69, &qword_27DD93218, &qword_232547360);
        MEMORY[0x238386450](v69, -1, -1);
        v71 = v68;
        v20 = v184;
        MEMORY[0x238386450](v71, -1, -1);
      }

      else
      {
      }

LABEL_16:
      ++v51;
      v49 = v185;
      if (v183 == v51)
      {
        goto LABEL_121;
      }
    }
  }

  v40 = v191;
  v41 = sub_2325455A8();

  swift_willThrow();
  v42 = v41;
  v43 = sub_232545888();
  v44 = sub_2325461F8();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    v47 = v41;
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 4) = v48;
    *v46 = v48;
    _os_log_impl(&dword_2324C0000, v43, v44, "Failed to fetch all device records: %@", v45, 0xCu);
    sub_2324C28AC(v46, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v46, -1, -1);
    MEMORY[0x238386450](v45, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2324D7C3C()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_2324DA610(*(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController____lazy_storage___currentContext));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2324D7CC4()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_2324DA610(*(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController____lazy_storage___currentContext));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

BOOL sub_2324D7D5C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_232545888();
  v4 = sub_232546208();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2324C0000, v3, v4, "Preparing to clean up stale NDFDeviceRecord records", v5, 2u);
    MEMORY[0x238386450](v5, -1, -1);
  }

  v6 = (*(*v2 + 120))();
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_2324DA698;
    *(v8 + 24) = v7;
    v15[4] = sub_2324DB514;
    v15[5] = v8;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_2324D7C14;
    v15[3] = &block_descriptor_13;
    v9 = _Block_copy(v15);

    v10 = v6;

    [v10 performBlockAndWait_];

    _Block_release(v9);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return v6 != 0;
    }

    __break(1u);
  }

  v11 = sub_232545888();
  v12 = sub_2325461F8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2324C0000, v11, v12, "Failed to get current MOC", v13, 2u);
    MEMORY[0x238386450](v13, -1, -1);
  }

  return v6 != 0;
}

void sub_2324D7FE0(uint64_t a1, void *a2)
{
  v200 = a2;
  v218 = a1;
  v225 = *MEMORY[0x277D85DE8];
  v217 = sub_232545688();
  v184 = *(v217 - 8);
  v2 = MEMORY[0x28223BE20](v217);
  v4 = &v183 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v189 = &v183 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v197 = &v183 - v8;
  MEMORY[0x28223BE20](v7);
  v215 = &v183 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  MEMORY[0x28223BE20](v10 - 8);
  v219 = (&v183 - v11);
  v12 = sub_2325456F8();
  v207 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v205 = &v183 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v188 = &v183 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v196 = &v183 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v214 = &v183 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v210 = &v183 - v22;
  MEMORY[0x28223BE20](v21);
  v209 = &v183 - v23;
  sub_2324DB388(0, &qword_2814D4ED8, 0x277D6B520);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [ObjCClassFromMetadata entityName];
  if (!v24)
  {
    sub_232545F68();
    v24 = sub_232545F58();
  }

  v25 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  [v25 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93228, &qword_232547540);
  v26 = swift_allocObject();
  v216 = xmmword_232547150;
  *(v26 + 16) = xmmword_232547150;
  v27 = sub_232545238();
  v29 = *v27;
  v28 = *(v27 + 1);
  v30 = MEMORY[0x277D837D0];
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 32) = v29;
  *(v26 + 40) = v28;

  v31 = sub_232546048();

  [v25 setPropertiesToGroupBy_];

  v32 = swift_allocObject();
  *(v32 + 16) = v216;
  v34 = *v27;
  v33 = *(v27 + 1);
  *&v216 = v27;
  *(v32 + 56) = v30;
  *(v32 + 32) = v34;
  *(v32 + 40) = v33;

  v35 = sub_232546048();

  [v25 setPropertiesToFetch_];

  *&v223 = 0;
  v186 = v25;
  v36 = [v25 execute_];
  v37 = v223;
  if (!v36)
  {
    v66 = v223;
    v67 = sub_2325455A8();

    swift_willThrow();
    v68 = v67;
    v69 = sub_232545888();
    v70 = sub_2325461F8();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 138412290;
      v73 = v67;
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v71 + 4) = v74;
      *v72 = v74;
      _os_log_impl(&dword_2324C0000, v69, v70, "Failed to fetch list of deviceIDs: (%@)", v71, 0xCu);
      sub_2324C28AC(v72, &qword_27DD93218, &qword_232547360);
      MEMORY[0x238386450](v72, -1, -1);
      MEMORY[0x238386450](v71, -1, -1);
    }

    else
    {
    }

    return;
  }

  v38 = v36;
  sub_2324DB388(0, &qword_2814D4EE0, 0x277CBEAC0);
  v39 = sub_232546058();
  v40 = v37;

  v211 = v39;
  if (v39 >> 62)
  {
LABEL_73:
    v42 = sub_232546488();
  }

  else
  {
    v42 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v198 = v4;
  if (v42)
  {
    v4 = v211;
    if (v42 < 1)
    {
      __break(1u);
    }

    v43 = 0;
    v213 = (v211 & 0xC000000000000001);
    v212 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_logger;
    v44 = (v207 + 56);
    v206 = (v207 + 48);
    v208 = (v207 + 32);
    v203 = (v207 + 16);
    v202 = (v207 + 8);
    v45 = MEMORY[0x277D84F90];
    *&v41 = 138412290;
    v204 = v41;
    while (1)
    {
      if (v213)
      {
        v46 = MEMORY[0x2383859D0](v43, v4);
      }

      else
      {
        v46 = *&v4[8 * v43 + 32];
      }

      v47 = v46;
      v48 = sub_232545888();
      v49 = sub_2325461E8();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = v12;
        v52 = v45;
        v53 = swift_slowAlloc();
        *v50 = v204;
        *(v50 + 4) = v47;
        *v53 = v47;
        v54 = v47;
        _os_log_impl(&dword_2324C0000, v48, v49, "Result dict %@", v50, 0xCu);
        sub_2324C28AC(v53, &qword_27DD93218, &qword_232547360);
        v55 = v53;
        v45 = v52;
        v12 = v51;
        MEMORY[0x238386450](v55, -1, -1);
        v56 = v50;
        v4 = v211;
        MEMORY[0x238386450](v56, -1, -1);
      }

      v57 = *(v216 + 8);
      *&v221 = *v216;
      *(&v221 + 1) = v57;

      v58 = [v47 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v58)
      {
        sub_232546338();
        swift_unknownObjectRelease();
      }

      else
      {
        v221 = 0u;
        v222 = 0u;
      }

      v223 = v221;
      v224 = v222;
      if (*(&v222 + 1))
      {
        v59 = v219;
        v60 = swift_dynamicCast();
        (*v44)(v59, v60 ^ 1u, 1, v12);
        if ((*v206)(v59, 1, v12) != 1)
        {
          v61 = *v208;
          v62 = v209;
          (*v208)(v209, v219, v12);
          (*v203)(v210, v62, v12);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_2324DA434(0, v45[2] + 1, 1, v45, &qword_27DD93270, &unk_2325477C0, MEMORY[0x277CC95F0]);
          }

          v64 = v45[2];
          v63 = v45[3];
          if (v64 >= v63 >> 1)
          {
            v45 = sub_2324DA434((v63 > 1), v64 + 1, 1, v45, &qword_27DD93270, &unk_2325477C0, MEMORY[0x277CC95F0]);
          }

          v65 = v207;
          (*(v207 + 8))(v209, v12);
          v45[2] = v64 + 1;
          v61(v45 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v64, v210, v12);
          v4 = v211;
          goto LABEL_11;
        }
      }

      else
      {

        sub_2324C28AC(&v223, &qword_27DD93248, &unk_2325477B0);
        (*v44)(v219, 1, 1, v12);
      }

      sub_2324C28AC(v219, &unk_27DD932E0, qword_2325472E0);
LABEL_11:
      if (v42 == ++v43)
      {
        goto LABEL_31;
      }
    }
  }

  v45 = MEMORY[0x277D84F90];
  v4 = v211;
LABEL_31:

  v212 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_logger;
  v75 = sub_232545888();
  v76 = sub_232546208();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *&v223 = v78;
    *v77 = 134218242;
    *(v77 + 4) = v45[2];
    *(v77 + 12) = 2080;

    v80 = MEMORY[0x238385650](v79, v12);
    v82 = v81;

    v83 = sub_2324C2220(v80, v82, &v223);

    *(v77 + 14) = v83;
    _os_log_impl(&dword_2324C0000, v75, v76, "Ready to process %ld deviceIDs: %s", v77, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v78);
    MEMORY[0x238386450](v78, -1, -1);
    MEMORY[0x238386450](v77, -1, -1);
  }

  v84 = v217;
  v85 = v214;
  v86 = v197;
  v87 = *(**sub_2324C4D38() + 560);

  v87(v88);

  sub_232545628();
  v190 = v45[2];
  if (!v190)
  {
LABEL_61:
    [v200 reset];

    (*(v184 + 8))(v215, v84);
    goto LABEL_69;
  }

  v193 = sub_2324DB388(0, &qword_2814D4C60, 0x277CCAC30);
  v192 = v45 + ((*(v207 + 80) + 32) & ~*(v207 + 80));
  v210 = (v207 + 16);
  v209 = (v184 + 16);
  v211 = v184 + 8;
  v219 = (v207 + 8);

  v89 = 0;
  *&v90 = 136315394;
  v187 = v90;
  *(&v90 + 1) = 4;
  v191 = xmmword_232547670;
  *&v90 = 136315650;
  v185 = v90;
  *&v90 = 134218498;
  v183 = v90;
  v91 = v196;
  v199 = v45;
  while (1)
  {
    if (v89 >= v45[2])
    {
      __break(1u);
      goto LABEL_73;
    }

    v94 = *(v207 + 72);
    v201 = v89;
    v95 = *(v207 + 16);
    v95(v85, &v192[v94 * v89], v12);
    v95(v91, v85, v12);
    v206 = *v209;
    v206(v86, v215, v84);
    v96 = sub_232545888();
    v97 = sub_2325461E8();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *&v223 = v99;
      *v98 = v187;
      sub_2324DB288(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v100 = sub_232546608();
      v102 = v101;
      v213 = *v219;
      v213(v91, v12);
      v103 = sub_2324C2220(v100, v102, &v223);

      *(v98 + 4) = v103;
      *(v98 + 12) = 2080;
      sub_2324DB288(&qword_2814D62B8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v104 = sub_232546608();
      v106 = v105;
      v208 = *v211;
      v208(v86, v217);
      v107 = sub_2324C2220(v104, v106, &v223);

      *(v98 + 14) = v107;
      _os_log_impl(&dword_2324C0000, v96, v97, "Cleaning up records for %s created before %s", v98, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v99, -1, -1);
      v108 = v98;
      v45 = v199;
      MEMORY[0x238386450](v108, -1, -1);
    }

    else
    {

      v208 = *v211;
      v208(v86, v84);
      v213 = *v219;
      v213(v91, v12);
    }

    v203 = v95;
    v109 = [ObjCClassFromMetadata entityName];
    v110 = v205;
    if (!v109)
    {
      sub_232545F68();
      v109 = sub_232545F58();
    }

    v111 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

    *&v223 = 0;
    *(&v223 + 1) = 0xE000000000000000;
    sub_2325463D8();
    v113 = *v216;
    v112 = *(v216 + 8);

    *&v223 = v113;
    *(&v223 + 1) = v112;
    MEMORY[0x2383855C0](0x41204025203D3D20, 0xEB0000000020444ELL);
    v114 = sub_23254525C();
    v115 = *v114;
    v116 = *(v114 + 1);

    MEMORY[0x2383855C0](v115, v116);

    MEMORY[0x2383855C0](0x4025203C20, 0xE500000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93200, &qword_2325471B0);
    v117 = swift_allocObject();
    *(v117 + 16) = v191;
    v118 = sub_2325456B8();
    *(v117 + 56) = sub_2324DB388(0, &qword_27DD93250, 0x277CCAD78);
    *(v117 + 64) = sub_2324DB238(&qword_27DD93258, &qword_27DD93250, 0x277CCAD78);
    *(v117 + 32) = v118;
    v119 = sub_232545608();
    *(v117 + 96) = sub_2324DB388(0, &qword_27DD93260, 0x277CBEAA8);
    *(v117 + 104) = sub_2324DB238(&qword_27DD93268, &qword_27DD93260, 0x277CBEAA8);
    *(v117 + 72) = v119;
    v120 = sub_2325461C8();

    [v111 setPredicate_];

    v121 = objc_allocWithZone(MEMORY[0x277CBE360]);
    *&v204 = v111;
    v122 = [v121 initWithFetchRequest_];
    [v122 setResultType_];
    *&v223 = 0;
    v123 = [v200 executeRequest:v122 error:&v223];
    v124 = v223;
    v202 = v122;
    if (!v123)
    {
      v131 = v223;
      v132 = sub_2325455A8();

      swift_willThrow();
      v85 = v214;
      v84 = v217;
      v4 = v203;
      (v203)(v110, v214, v12);
      goto LABEL_57;
    }

    v125 = v123;
    objc_opt_self();
    v126 = swift_dynamicCastObjCClass();
    v84 = v217;
    v4 = v203;
    if (!v126)
    {
      v173 = v124;

      v174 = sub_232545888();
      v175 = sub_2325461F8();
      v176 = os_log_type_enabled(v174, v175);
      v177 = v214;
      if (v176)
      {
        v178 = v122;
        v179 = swift_slowAlloc();
        *v179 = 0;
        _os_log_impl(&dword_2324C0000, v174, v175, "Unable to cast NSBatchDeleteResult", v179, 2u);
        MEMORY[0x238386450](v179, -1, -1);
      }

      else
      {
      }

      v213(v177, v12);
      v208(v215, v84);
      goto LABEL_69;
    }

    v127 = v126;
    v128 = v124;
    v129 = [v127 result];
    v130 = v214;
    if (v129)
    {
      sub_232546338();
      swift_unknownObjectRelease();
    }

    else
    {
      v221 = 0u;
      v222 = 0u;
    }

    v133 = v189;
    v134 = v188;
    v223 = v221;
    v224 = v222;
    if (!*(&v222 + 1))
    {

      sub_2324C28AC(&v223, &qword_27DD93248, &unk_2325477B0);
      goto LABEL_66;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v194 = v125;
    v135 = v220;
    (v4)(v134, v130, v12);
    v206(v133, v215, v84);
    v136 = sub_232545888();
    v137 = sub_232546208();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      *&v223 = v139;
      *v138 = v183;
      *(v138 + 4) = v135;
      *(v138 + 12) = 2080;
      sub_2324DB288(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v140 = sub_232546608();
      v142 = v141;
      v213(v134, v12);
      v143 = sub_2324C2220(v140, v142, &v223);

      *(v138 + 14) = v143;
      *(v138 + 22) = 2080;
      sub_2324DB288(&qword_2814D62B8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v144 = sub_232546608();
      v146 = v145;
      v208(v133, v217);
      v147 = sub_2324C2220(v144, v146, &v223);

      *(v138 + 24) = v147;
      _os_log_impl(&dword_2324C0000, v136, v137, "Completed batch deletion of %ld device records for %s older than %s", v138, 0x20u);
      swift_arrayDestroy();
      v148 = v139;
      v84 = v217;
      MEMORY[0x238386450](v148, -1, -1);
      MEMORY[0x238386450](v138, -1, -1);
    }

    else
    {

      v208(v133, v84);
      v213(v134, v12);
    }

    v149 = v194;
    *&v223 = 0;
    v150 = [v200 save_];
    v151 = v223;
    v85 = v214;
    v110 = v205;
    v45 = v199;
    if (!v150)
    {
      v152 = v151;
      v132 = sub_2325455A8();

      swift_willThrow();
      (v4)(v110, v85, v12);
LABEL_57:
      v153 = v198;
      v206(v198, v215, v84);
      v154 = v132;
      v155 = sub_232545888();
      v156 = v110;
      v157 = sub_2325461F8();

      if (os_log_type_enabled(v155, v157))
      {
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        *&v223 = v206;
        *v158 = v185;
        sub_2324DB288(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v160 = sub_232546608();
        v162 = v161;
        v4 = v213;
        v213(v205, v12);
        v163 = sub_2324C2220(v160, v162, &v223);

        *(v158 + 4) = v163;
        *(v158 + 12) = 2080;
        sub_2324DB288(&qword_2814D62B8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v164 = sub_232546608();
        v166 = v165;
        v208(v198, v217);
        v167 = sub_2324C2220(v164, v166, &v223);
        v45 = v199;

        *(v158 + 14) = v167;
        *(v158 + 22) = 2112;
        v168 = v132;
        v169 = _swift_stdlib_bridgeErrorToNSError();
        *(v158 + 24) = v169;
        *v159 = v169;
        _os_log_impl(&dword_2324C0000, v155, v157, "Failed to batch delete device records matching %s older than %s: %@", v158, 0x20u);
        sub_2324C28AC(v159, &qword_27DD93218, &qword_232547360);
        v170 = v159;
        v85 = v214;
        MEMORY[0x238386450](v170, -1, -1);
        v171 = v206;
        swift_arrayDestroy();
        MEMORY[0x238386450](v171, -1, -1);
        v172 = v158;
        v84 = v217;
        MEMORY[0x238386450](v172, -1, -1);

        (v4)(v85, v12);
      }

      else
      {

        v208(v153, v84);
        v92 = v156;
        v93 = v213;
        v213(v92, v12);
        v93(v85, v12);
      }

      goto LABEL_36;
    }

    v213(v214, v12);

LABEL_36:
    v91 = v196;
    v89 = v201 + 1;
    v86 = v197;
    if (v190 == v201 + 1)
    {

      goto LABEL_61;
    }
  }

LABEL_66:
  v180 = sub_232545888();
  v181 = sub_2325461F8();
  if (os_log_type_enabled(v180, v181))
  {
    v182 = swift_slowAlloc();
    *v182 = 0;
    _os_log_impl(&dword_2324C0000, v180, v181, "Unable to cast Int from NSBatchDeleteResult", v182, 2u);
    MEMORY[0x238386450](v182, -1, -1);
  }

  v213(v130, v12);
  v208(v215, v84);
LABEL_69:
}

uint64_t sub_2324D9CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2324D9CEC, a4, 0);
}

uint64_t sub_2324D9CEC(uint64_t a1)
{
  *(v1 + 32) = sub_2324D7D5C(a1);

  return MEMORY[0x2822009F8](sub_2324D9D5C, 0, 0);
}

uint64_t sub_2324D9D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2324CF3C4(a3, v25 - v10, &qword_27DD93630, &qword_232547550);
  v12 = sub_2325460F8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2324C28AC(v11, &qword_27DD93630, &qword_232547550);
  }

  else
  {
    sub_2325460E8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_232546098();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_232545FA8() + 32;
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

      sub_2324C28AC(a3, &qword_27DD93630, &qword_232547550);

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

  sub_2324C28AC(a3, &qword_27DD93630, &qword_232547550);
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

uint64_t sub_2324DA074@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_232545578();
    if (v10)
    {
      v11 = sub_232545598();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_232545588();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_232545578();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_232545598();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_232545588();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2324DA2A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2324DA8A8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2324DB44C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2324DA074(v13, a3, a4, &v12);
  v10 = v4;
  sub_2324DB44C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

void *sub_2324DA434(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void sub_2324DA610(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_2324DA620(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2324DA6A0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2324DA794;

  return v5(v2 + 32);
}

uint64_t sub_2324DA794()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2324DA8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_232545578();
  v11 = result;
  if (result)
  {
    result = sub_232545598();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_232545588();
  sub_2324DA074(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2324DA960(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2324DB3E4(a3, a4);
          return sub_2324DA2A4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

xpc_object_t sub_2324DAAC8(_xpc_activity_s *a1)
{
  v2 = sub_2324C4D38();
  v3 = *(**v2 + 608);

  v5 = v3(v4);

  if (v5 < 1)
  {
    v8 = 0;
  }

  else
  {
    v6 = *(**v2 + 608);

    v8 = v6(v7);
  }

  v9 = *(**v2 + 632);

  v11 = v9(v10);

  if (v11 > 0)
  {
    v12 = *(**v2 + 632);

    v14 = v12(v13);

    result = xpc_activity_copy_criteria(a1);
    if (!result)
    {
      return result;
    }

    v16 = result;
    if (v5 <= 0)
    {
      swift_unknownObjectRetain();
      goto LABEL_12;
    }

LABEL_11:
    v17 = swift_unknownObjectRetain();
    xpc_dictionary_set_int64(v17, "com.apple.activity.interval", v8);
    if (v11 < 1)
    {
LABEL_13:
      swift_unknownObjectRelease();
      return v16;
    }

LABEL_12:
    xpc_dictionary_set_int64(v16, "com.apple.activity.delay", v14);
    goto LABEL_13;
  }

  if (v5 > 0)
  {
    v16 = xpc_activity_copy_criteria(a1);
    result = 0;
    if (!v16)
    {
      return result;
    }

    v14 = 0;
    goto LABEL_11;
  }

  return 0;
}

void sub_2324DACC0(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  if (a1 == 0xD000000000000031 && 0x800000023254C000 == a2 || (sub_232546628() & 1) != 0)
  {
    v8 = sub_2325460F8();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v2;

    sub_2324D9D7C(0, 0, v7, &unk_232547788, v9);
  }

  else
  {

    v14 = sub_232545888();
    v10 = sub_2325461F8();

    if (os_log_type_enabled(v14, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_2324C2220(a1, a2, &v15);
      _os_log_impl(&dword_2324C0000, v14, v10, "Cannot perform work for unknown XPC activity identifier: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x238386450](v12, -1, -1);
      MEMORY[0x238386450](v11, -1, -1);
    }

    else
    {
      v13 = v14;
    }
  }
}

uint64_t type metadata accessor for NDFCorePersistenceController(uint64_t a1)
{
  result = qword_2814D6C10;
  if (!qword_2814D6C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2324DAF78(uint64_t a1)
{
  result = sub_2325458A8();
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