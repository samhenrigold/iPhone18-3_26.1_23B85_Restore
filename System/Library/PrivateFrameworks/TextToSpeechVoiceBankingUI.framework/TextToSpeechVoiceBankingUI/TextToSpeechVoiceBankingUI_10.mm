uint64_t sub_26EF1F598()
{
  v2 = *v1;

  v3 = *(v2 + 280);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_26EF1F99C;
  }

  else
  {
    v5 = sub_26EF1F6EC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26EF1F6EC()
{
  v1 = *(v0 + 72);
  v2 = sub_26EF381FC();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 304);
    v4 = *(v0 + 248);
    v18 = *(v0 + 240);
    v19 = *(v0 + 256);
    v5 = *(v0 + 208);
    v6 = *(v0 + 216);
    v7 = *(v0 + 200);
    v8 = *(v0 + 112);
    v9 = *(v0 + 120);
    v10 = *(v0 + 104);

    (*(v8 + 8))(v9, v10);
    (*(v5 + 8))(v6, v7);
    (*(v4 + 8))(v19, v18);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    sub_26EE14578(v1, &qword_2806C9CF0, &qword_26EF44368);
    v13 = sub_26EF3B2CC();
    *(v0 + 320) = v13;
    v14 = swift_task_alloc();
    *(v0 + 328) = v14;
    *v14 = v0;
    v14[1] = sub_26EF1F598;
    v15 = *(v0 + 104);
    v16 = *(v0 + 72);
    v17 = MEMORY[0x277D85700];

    return MEMORY[0x2822005A8](v16, v13, v17, v15, v0 + 32);
  }
}

uint64_t sub_26EF1F99C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 248);
  v11 = *(v0 + 240);
  v12 = *(v0 + 256);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  v8 = *(v0 + 104);

  (*(v6 + 8))(v7, v8);
  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v12, v11);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_26EF1FB34()
{
  v5 = sub_26EF3853C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_26EF3854C();
  sub_26EF3807C();
  (*(v6 + 8))(v8, v5);
  sub_26EF3851C();
  __swift_destroy_boxed_opaque_existential_1(v10);
  sub_26EF3851C();
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

id sub_26EF1FC74()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26EF1FFC4@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_26EF394BC();
  *a1 = result;
  return result;
}

double sub_26EF20004()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_26EF3B30C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_26EF3B2DC();
  v5 = v0;
  v6 = sub_26EF3B2CC();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_26EE2C388(0, 0, v3, &unk_26EF44468, v7);

  return result;
}

double sub_26EF2012C(uint64_t a1)
{
  swift_getObjectType();
  v1 = sub_26EF3883C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26EE27ED0();
  (*(v2 + 16))(v4, v5, v1);
  v6 = sub_26EF3881C();
  v7 = sub_26EF3B43C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26EE01000, v6, v7, "VoiceBankingAudioServiceViewModel: Did finish synthesizing sample", v8, 2u);
    MEMORY[0x2743842A0](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  sub_26EF204A0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  sub_26EF394BC();
  sub_26EF394DC();

  return result;
}

id sub_26EF20354(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_26EF37D7C();
  v13[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_26EF37DCC();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_26EF37D1C();

    swift_willThrow();
    v11 = sub_26EF37DCC();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_26EF204A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26EF204E8()
{
  MEMORY[0x274384370](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_26EF20520(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_26EF0F4FC(v1);
  }
}

uint64_t sub_26EF20578(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    return sub_26EF3953C();
  }

  return result;
}

uint64_t sub_26EF20608(char *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_26EF3953C();
  }

  return result;
}

uint64_t sub_26EF206A4()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_26EF3917C();
  v7 = *(v0 + v4);
  v8 = v0 + v5;
  v9 = *(v0 + v5);
  v10 = *(v8 + 8);
  v11 = *(v0 + v6);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_26EE15538;

  return sub_26EF1B1A8(v12, v13, v14, v0 + v3, v7, v9, v10, v11);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26EF2086C(uint64_t a1)
{
  v1 = sub_26EF38E7C();
  v3 = v2;
  if (v1 == sub_26EF38E7C() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_26EF3B82C();
  }

  return v6 & 1;
}

void *sub_26EF20904(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C92E8, &qword_26EF444A0);
  v10 = *(sub_26EF38E9C() - 8);
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
  v15 = *(sub_26EF38E9C() - 8);
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

uint64_t objectdestroy_49Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_26EF3917C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();
  v9 = sub_26EF38A4C();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v7 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7;

  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + v8, v2 | v7 | 7);
}

uint64_t objectdestroy_67Tm()
{
  v1 = sub_26EF37DCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_26EF20DA4()
{
  v1 = *(sub_26EF37DCC() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_26EF18BF4(v2, v3);
}

uint64_t sub_26EF20E08()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26EE15538;

  return sub_26EF19D1C(v3, v4, v5, v2);
}

uint64_t sub_26EF20E9C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26EE15538;

  return sub_26EF1E2F4(v3, v4, v5, v2);
}

uint64_t sub_26EF20F3C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7818, &qword_26EF44380);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v3 = sub_26EF380AC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_26EF383AC();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_26EF3B2DC();
  v2[11] = sub_26EF3B2CC();
  v5 = sub_26EF3B29C();
  v2[12] = v5;
  v2[13] = v4;

  return MEMORY[0x2822009F8](sub_26EF210AC, v5, v4);
}

uint64_t sub_26EF210AC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_26EF380CC();
  sub_26EF384AC();
  sub_26EF3849C();
  sub_26EF3839C();
  sub_26EF3838C();
  (*(v2 + 104))(v1, *MEMORY[0x277D700F0], v3);
  v0[14] = sub_26EF3809C();
  v9 = (*MEMORY[0x277D70108] + MEMORY[0x277D70108]);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_26EF21200;
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return v9(v5, v6, v7);
}

uint64_t sub_26EF21200()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_26EF21320, v3, v2);
}

uint64_t sub_26EF21320()
{
  v1 = v0[4];
  v2 = v0[5];

  sub_26EE13B88(v2, v1, &qword_2806C7818, &qword_26EF44380);
  v3 = sub_26EF383FC();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[4];
  v7 = v0[5];
  if (v5 == 1)
  {
    sub_26EE14578(v0[5], &qword_2806C7818, &qword_26EF44380);

    sub_26EE14578(v6, &qword_2806C7818, &qword_26EF44380);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = sub_26EF3825C();
    v9 = v10;

    sub_26EE14578(v7, &qword_2806C7818, &qword_26EF44380);
    (*(v4 + 8))(v6, v3);
  }

  v11 = v0[1];

  return v11(v8, v9);
}

double sub_26EF214E0()
{
  v1 = sub_26EF3AF7C();
  v14 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26EF3AFAC();
  v4 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EE1FAB8(0, &qword_2806C9C40, 0x277D85C78);
  v7 = sub_26EF3B54C();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_26EF21D38;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26EE1DD80;
  aBlock[3] = &block_descriptor_116;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_26EF3AF8C();
  v15 = MEMORY[0x277D84F90];
  sub_26EF204A0(&unk_2806C9E30, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DF0, &qword_26EF3D550);
  sub_26EE154C8(&qword_2806C9E40, &qword_2806C6DF0, &qword_26EF3D550, MEMORY[0x277D83970]);
  sub_26EF3B68C();
  MEMORY[0x274383620](0, v6, v3, v9);
  _Block_release(v9);

  (*(v14 + 8))(v3, v1);
  (*(v4 + 8))(v6, v13);

  return result;
}

void sub_26EF217D8(uint64_t a1)
{
  sub_26EE11978(319, &qword_2806C9D98, &qword_2806C9B70, &qword_26EF43F10);
  if (v1 <= 0x3F)
  {
    sub_26EF21A7C(319);
    if (v2 <= 0x3F)
    {
      sub_26EF21AE4();
      if (v3 <= 0x3F)
      {
        sub_26EF21B34(319, &qword_2806C9DB0, MEMORY[0x277D705A8]);
        if (v4 <= 0x3F)
        {
          sub_26EE11978(319, &qword_2806C9DB8, &qword_2806C9BC8, &qword_26EF44108);
          if (v5 <= 0x3F)
          {
            sub_26EE11978(319, &qword_2806C9DC0, &qword_2806C9BE0, &qword_26EF3D3C0);
            if (v6 <= 0x3F)
            {
              sub_26EF21B34(319, &qword_2806C9DC8, MEMORY[0x277D70580]);
              if (v7 <= 0x3F)
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

void sub_26EF21A7C(uint64_t a1)
{
  if (!qword_2806C9DA0)
  {
    sub_26EE1FAB8(255, &qword_2806C9B88, 0x277CB84B8);
    v1 = sub_26EF3954C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C9DA0);
    }
  }
}

void sub_26EF21AE4()
{
  if (!qword_2806C75E8)
  {
    v0 = sub_26EF3954C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C75E8);
    }
  }
}

void sub_26EF21B34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26EF3954C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t objectdestroy_88Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26EF21BCC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EF1D800(v4, v5, v6, v2, v3);
}

uint64_t sub_26EF21C6C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26EE15538;

  return sub_26EF1B094(v3, v4, v5, v2);
}

uint64_t sub_26EF21D00()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26EF21DC8()
{
  v1 = sub_26EF37DCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EF21E94()
{
  v2 = *(sub_26EF37DCC() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26EE15538;

  return sub_26EF18DF4(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_26EF21F80(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E60, &qword_26EF444A8) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26EF16404(a1, v4);
}

uint64_t sub_26EF21FFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26EE15538;

  return sub_26EF15DBC();
}

uint64_t sub_26EF220B8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + v4);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_26EE05D7C;

  return sub_26EF157F0(v8, v9, v10, v0 + v3, v7, v0 + v6);
}

uint64_t objectdestroy_74Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26EF22268()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26EE05D7C;

  return sub_26EF1CD1C(v3, v4, v5, v2);
}

uint64_t sub_26EF2231C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + v4);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_26EE15538;

  return sub_26EF124B4(v8, v9, v10, v0 + v3, v7, v0 + v6);
}

uint64_t objectdestroy_142Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_145Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26EF38A4C();
  }

  else
  {
    v9 = sub_26EF38BFC();
  }

  (*(*(v9 - 8) + 8))(v0 + v3, v9);
  v10 = v2 | v7;
  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + v7 + 8) & ~v7;

  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + v8, v10 | 7);
}

uint64_t sub_26EF227AC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9E48, &unk_26EF44480) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + v4);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_26EE15538;

  return sub_26EF124B4(v8, v9, v10, v0 + v3, v7, v0 + v6);
}

uint64_t sub_26EF2295C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF387DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9EF0, &qword_26EF44520);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  if (*(a1 + 16) < 2uLL)
  {
    v16 = *(v9 + 56);

    return v16(a2, 1, 1, v8);
  }

  else
  {
    v12 = *MEMORY[0x277CE76C8];
    v13 = *(v5 + 104);
    v18 = v9;
    v14 = v13(v7, v12, v4);
    MEMORY[0x28223BE20](v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9EF8, &qword_26EF44528);
    sub_26EF22DD8();
    sub_26EF3877C();
    (*(v18 + 32))(a2, v11, v8);
    return (*(v18 + 56))(a2, 0, 1, v8);
  }
}

uint64_t sub_26EF22BFC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EE17094();
  v3._object = 0x800000026EF473E0;
  v4 = v2 & 1;
  v3._countAndFlagsBits = 0xD000000000000018;
  v5 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v3, v4, 0);
  sub_26EE12538(v5._countAndFlagsBits, v5._object, v6);
  result = sub_26EF3A5DC();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_26EF22C7C()
{
  v2 = *(v0 + 16);

  sub_26EF233A4(&v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8908, &qword_26EF41090);
  sub_26EF37EDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F10, qword_26EF44530);
  sub_26EE154C8(&qword_2806C9F30, &qword_2806C8908, &qword_26EF41090, MEMORY[0x277D83980]);
  sub_26EE154C8(&qword_2806C9F08, &qword_2806C9F10, qword_26EF44530, MEMORY[0x277CE1138]);
  sub_26EF2344C();
  return sub_26EF3ACFC();
}

unint64_t sub_26EF22DD8()
{
  result = qword_2806C9F00;
  if (!qword_2806C9F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9EF8, &qword_26EF44528);
    sub_26EE154C8(&qword_2806C9F08, &qword_2806C9F10, qword_26EF44530, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9F00);
  }

  return result;
}

double sub_26EF22E88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF39E4C();
  v17 = 1;
  sub_26EF22F8C(a1, &v10);
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v18 = v10;
  v19 = v11;
  v25 = v15;
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v24[0] = v10;
  v24[1] = v11;
  sub_26EF234A4(&v18, v9);
  sub_26EF23514(v24);
  *&v16[39] = v20;
  *&v16[55] = v21;
  *&v16[71] = v22;
  *&v16[87] = v23;
  *&v16[7] = v18;
  *&v16[23] = v19;
  v5 = *&v16[48];
  *(a2 + 49) = *&v16[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v16[64];
  *(a2 + 96) = *&v16[79];
  result = *&v16[16];
  v7 = *v16;
  *(a2 + 33) = *&v16[16];
  v8 = v17;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_26EF22F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = sub_26EF37DEC();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_26EF37E1C();
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26EF37E7C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF38D0C();
  sub_26EF37E0C();
  sub_26EF37DDC();
  v13 = sub_26EF37E5C();
  v15 = v14;
  (*(v3 + 8))(v5, v34);
  (*(v6 + 8))(v8, v33);
  v16 = (*(v10 + 8))(v12, v9);
  v38 = v13;
  v39 = v15;
  sub_26EE12538(v16, v17, v18);
  v19 = sub_26EF3A5DC();
  v21 = v20;
  LOBYTE(v12) = v22;
  v24 = v23;
  v38 = sub_26EF38CEC();
  v39 = v25;
  v26 = sub_26EF3A5DC();
  v28 = v27;
  LOBYTE(v38) = v12 & 1;
  v37 = v12 & 1;
  v36 = 1;
  LOBYTE(v8) = v29 & 1;
  v35 = v29 & 1;
  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v24;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v26;
  *(a2 + 56) = v27;
  *(a2 + 64) = v29 & 1;
  *(a2 + 72) = v30;
  *(a2 + 80) = 0x3FE0000000000000;
  sub_26EE13B20(v19, v21, v12 & 1);

  sub_26EE13B20(v26, v28, v8);

  sub_26EE12ABC(v26, v28, v8);

  sub_26EE12ABC(v19, v21, v38);
}

unint64_t sub_26EF232F4()
{
  result = qword_2806C9F18;
  if (!qword_2806C9F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9F20, &unk_26EF445C8);
    sub_26EE154C8(&qword_2806C9F28, &qword_2806C9EF0, &qword_26EF44520, MEMORY[0x277CE7698]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9F18);
  }

  return result;
}

uint64_t sub_26EF233A4(void *a1)
{
  v2 = *(sub_26EF38DBC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26EECF530(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_26EF2357C(v6);
  *a1 = v3;
  return result;
}

unint64_t sub_26EF2344C()
{
  result = qword_2806C9F38;
  if (!qword_2806C9F38)
  {
    sub_26EF38DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9F38);
  }

  return result;
}

uint64_t sub_26EF234A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F40, &qword_26EF445D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF23514(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F40, &qword_26EF445D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EF2357C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_26EF3B7EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_26EF38DBC();
        v6 = sub_26EF3B24C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_26EF38DBC() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_26EF23A48(v8, v9, a1, v4);
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
    return sub_26EF236A8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26EF236A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_26EF37E7C();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v41 - v11;
  v12 = sub_26EF38DBC();
  v13 = MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v57 = &v41 - v16;
  result = MEMORY[0x28223BE20](v15);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      v54(v56, v26, v12);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_26EF38D0C();
      v32 = v59;
      sub_26EF38D0C();
      v62 = sub_26EF37E3C();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      result = v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      result = v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26EF23A48(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v159 = sub_26EF37E7C();
  v8 = *(v159 - 8);
  v9 = MEMORY[0x28223BE20](v159);
  v158 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v157 = &v133 - v11;
  v12 = sub_26EF38DBC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v140 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v149 = &v133 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v156 = &v133 - v19;
  result = MEMORY[0x28223BE20](v18);
  v160 = &v133 - v21;
  v22 = *(a3 + 1);
  v145 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v24;
    v24 = *v137;
    if (!*v137)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v52 = v145;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_26EE13990(v12);
      v12 = result;
    }

    v162 = v12;
    v129 = *(v12 + 16);
    if (v129 >= 2)
    {
      while (*v52)
      {
        v130 = *(v12 + 16 * v129);
        v131 = *(v12 + 16 * (v129 - 1) + 40);
        sub_26EF24648(*v52 + *(v13 + 72) * v130, *v52 + *(v13 + 72) * *(v12 + 16 * (v129 - 1) + 32), *v52 + *(v13 + 72) * v131, v24);
        if (v5)
        {
        }

        if (v131 < v130)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_26EE13990(v12);
        }

        if (v129 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v132 = (v12 + 16 * v129);
        *v132 = v130;
        v132[1] = v131;
        v162 = v12;
        result = sub_26EE5C168(v129 - 1);
        v12 = v162;
        v129 = *(v162 + 16);
        if (v129 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v133 = a4;
  v23 = 0;
  v153 = (v8 + 8);
  v154 = v13 + 16;
  v151 = (v13 + 32);
  v152 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v155 = v12;
  v136 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v145;
    }

    else
    {
      v146 = v22;
      v134 = v24;
      v135 = v5;
      v26 = v23;
      v138 = v23;
      v27 = *v145;
      v161 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v160, v29, v12);
      v32 = v156;
      v147 = v31;
      (v31)(v156, v27 + v28 * v26, v30);
      v33 = v157;
      sub_26EF38D0C();
      v34 = v158;
      sub_26EF38D0C();
      LODWORD(v148) = sub_26EF37E3C();
      v35 = *v153;
      v36 = v34;
      v37 = v159;
      (*v153)(v36, v159);
      v144 = v35;
      (v35)(v33, v37);
      v38 = *(v136 + 8);
      v24 = v152;
      v38(v32, v30);
      v143 = v38;
      result = (v38)(v160, v30);
      v39 = v138 + 2;
      v150 = v28;
      v40 = v161 + v28 * (v138 + 2);
      while (1)
      {
        v41 = v146;
        if (v146 == v39)
        {
          break;
        }

        v42 = v155;
        v43 = v147;
        v147();
        v44 = v156;
        v43(v156, v29, v42);
        v45 = v157;
        sub_26EF38D0C();
        v46 = v158;
        sub_26EF38D0C();
        LOBYTE(v161) = sub_26EF37E3C() & 1;
        LODWORD(v161) = v161;
        v47 = v46;
        v48 = v159;
        v49 = v29;
        v50 = v144;
        (v144)(v47, v159);
        v50(v45, v48);
        v24 = v152;
        v51 = v143;
        (v143)(v44, v42);
        result = v51(v160, v42);
        ++v39;
        v40 += v150;
        v29 = &v150[v49];
        if ((v148 & 1) != v161)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v135;
      v52 = v145;
      v13 = v136;
      v12 = v155;
      v23 = v138;
      if ((v148 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v138)
      {
        goto LABEL_125;
      }

      if (v138 < v41)
      {
        v53 = v41;
        v54 = v150 * (v41 - 1);
        v55 = v41 * v150;
        v146 = v41;
        v56 = v138;
        v57 = v138 * v150;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v151;
            (*v151)(v140, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v59)(v58 + v54, v140, v12);
            v52 = v145;
          }

          ++v56;
          v54 -= v150;
          v55 -= v150;
          v57 += v150;
        }

        while (v56 < v53);
        v5 = v135;
        v13 = v136;
        v24 = v134;
        v23 = v138;
        v41 = v146;
      }

      else
      {
LABEL_23:
        v24 = v134;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v133)
      {
        if (__OFADD__(v23, v133))
        {
          goto LABEL_126;
        }

        if (v23 + v133 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v133;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26EE12E30(0, *(v24 + 2) + 1, 1, v24);
      v24 = result;
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      result = sub_26EE12E30((v63 > 1), v64 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v137;
    if (!*v137)
    {
      goto LABEL_133;
    }

    v141 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
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
          goto LABEL_127;
        }

        if (!*v145)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_26EF24648(*v145 + v52[9] * v107, *v145 + v52[9] * *&v24[16 * v68 + 32], *v145 + v52[9] * v108, v13);
        if (v5)
        {
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_26EE13990(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v162 = v24;
        result = sub_26EE5C168(v68);
        v24 = v162;
        v65 = *(v162 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = *(v145 + 1);
    v23 = v141;
    v13 = v52;
    if (v141 >= v22)
    {
      goto LABEL_96;
    }
  }

  v134 = v24;
  v135 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v150 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v147 = -v111;
  v138 = v23;
  v113 = (v23 - v41);
  v148 = v110;
  v139 = v111;
  v114 = v110 + v41 * v111;
  v141 = v61;
LABEL_87:
  v146 = v41;
  v142 = v114;
  v143 = v113;
  v115 = v114;
  v144 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v160;
    v117 = v150;
    (v150)(v160, v115, v12);
    v118 = v156;
    v117(v156, v116, v12);
    v119 = v157;
    sub_26EF38D0C();
    v120 = v158;
    sub_26EF38D0C();
    LODWORD(v161) = sub_26EF37E3C();
    v121 = *v153;
    v122 = v120;
    v123 = v159;
    (*v153)(v122, v159);
    v124 = v119;
    v12 = v155;
    v121(v124, v123);
    v125 = *v152;
    (*v152)(v118, v12);
    result = v125(v52, v12);
    if ((v161 & 1) == 0)
    {
LABEL_86:
      v41 = v146 + 1;
      v112 = &v144[v139];
      v113 = v143 - 1;
      v62 = v141;
      v114 = v142 + v139;
      if (v146 + 1 != v141)
      {
        goto LABEL_87;
      }

      v5 = v135;
      v13 = v136;
      v24 = v134;
      v23 = v138;
      if (v141 < v138)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v148)
    {
      break;
    }

    v126 = *v151;
    v127 = v149;
    (*v151)(v149, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v147 + v116;
    v115 += v147;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_26EF24648(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v73 = a3;
  v68 = sub_26EF37E7C();
  v7 = *(v68 - 8);
  v8 = MEMORY[0x28223BE20](v68);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v56 - v10;
  v72 = sub_26EF38DBC();
  v11 = *(v72 - 8);
  v12 = MEMORY[0x28223BE20](v72);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v70 = &v56 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v18 = v73 - a2;
  if (v73 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v17;
  v76 = a1;
  v75 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v21;
    if (v21 >= 1)
    {
      v39 = -v17;
      v60 = (v7 + 8);
      v61 = (v11 + 16);
      v58 = a4;
      v59 = (v11 + 8);
      v40 = v38;
      v71 = a1;
      v62 = -v17;
      v41 = v72;
      while (2)
      {
        while (1)
        {
          v56 = v38;
          v42 = a2;
          v43 = a2 + v39;
          v63 = v42;
          v64 = v43;
          while (1)
          {
            v44 = v73;
            if (v42 <= a1)
            {
              v76 = v42;
              v74 = v56;
              goto LABEL_59;
            }

            v57 = v38;
            v73 += v39;
            v45 = v40 + v39;
            v46 = *v61;
            (*v61)();
            v47 = v65;
            (v46)(v65, v43, v41);
            v48 = v66;
            sub_26EF38D0C();
            v49 = v67;
            sub_26EF38D0C();
            v69 = sub_26EF37E3C();
            v50 = *v60;
            v51 = v49;
            v52 = v68;
            (*v60)(v51, v68);
            v50(v48, v52);
            v53 = *v59;
            (*v59)(v47, v41);
            v53(v70, v41);
            if (v69)
            {
              break;
            }

            v38 = v45;
            v54 = v58;
            if (v44 < v40 || v73 >= v40)
            {
              swift_arrayInitWithTakeFrontToBack();
              v43 = v64;
              v39 = v62;
            }

            else
            {
              v43 = v64;
              v39 = v62;
              if (v44 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v40 = v45;
            a1 = v71;
            v42 = v63;
            if (v45 <= v54)
            {
              a2 = v63;
              goto LABEL_58;
            }
          }

          v55 = v58;
          if (v44 < v63 || v73 >= v63)
          {
            break;
          }

          a2 = v64;
          a1 = v71;
          v38 = v57;
          v39 = v62;
          if (v44 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v40 <= v55)
          {
            goto LABEL_58;
          }
        }

        a2 = v64;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v71;
        v38 = v57;
        v39 = v62;
        if (v40 > v55)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v76 = a2;
    v74 = v38;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v64 = a4 + v20;
    v74 = a4 + v20;
    if (v20 >= 1 && a2 < v73)
    {
      v23 = *(v11 + 16);
      v60 = (v7 + 8);
      v61 = v23;
      v62 = v17;
      v63 = v11 + 16;
      v59 = (v11 + 8);
      v24 = v72;
      do
      {
        v71 = a1;
        v25 = v70;
        v26 = v61;
        (v61)(v70, a2, v24);
        v27 = v65;
        (v26)(v65, a4, v24);
        v28 = v66;
        sub_26EF38D0C();
        v29 = v67;
        sub_26EF38D0C();
        v69 = sub_26EF37E3C();
        v30 = a2;
        v31 = *v60;
        v32 = v29;
        v33 = a4;
        v34 = v68;
        (*v60)(v32, v68);
        v31(v28, v34);
        v35 = *v59;
        (*v59)(v27, v24);
        v35(v25, v24);
        if (v69)
        {
          v36 = v62;
          a2 = v30 + v62;
          v37 = v71;
          a4 = v33;
          if (v71 < v30 || v71 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v30;
          v36 = v62;
          a4 = v33 + v62;
          v37 = v71;
          if (v71 < v33 || v71 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v75 = a4;
        }

        a1 = v37 + v36;
        v76 = a1;
      }

      while (a4 < v64 && a2 < v73);
    }
  }

LABEL_59:
  sub_26EECF41C(&v76, &v75, &v74);
  return 1;
}

uint64_t sub_26EF24D24@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v74 = sub_26EF3A1FC();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_26EF39DDC();
  v68 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PromptView(0);
  v77 = *(v4 - 8);
  v5 = *(v77 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26EF3872C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
  MEMORY[0x28223BE20](v10 - 8);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F48, &qword_26EF445F8);
  v75 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = v58 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F50, &qword_26EF44600);
  MEMORY[0x28223BE20](v78);
  v61 = v58 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F58, &qword_26EF44608);
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v76 = v58 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F60, &qword_26EF44610);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v66 = v58 - v14;
  v15 = v1;
  v58[1] = sub_26EF25AA4();
  v58[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8080, &unk_26EF3FC30);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26EF3EE20;
  sub_26EF386EC();
  sub_26EF3870C();
  sub_26EF386DC();
  v82 = v17;
  sub_26EF31BEC(&qword_2806C8088, MEMORY[0x277CE7670], MEMORY[0x277CE7680]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8090, &unk_26EF3FB80);
  sub_26EE154C8(&qword_2806C8098, &qword_2806C8090, &unk_26EF3FB80, MEMORY[0x277D83970]);
  sub_26EF3B68C();
  sub_26EF3AC8C();
  v18 = v9;
  v19 = v15;
  v20 = v6;
  v21 = v60;
  (*(v7 + 8))(v18, v20);
  v81 = v15;
  v80 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F68, &qword_26EF44618);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F70, &qword_26EF44620);
  sub_26EE154C8(&qword_2806C9F78, &qword_2806C9F68, &qword_26EF44618, MEMORY[0x277CE14C0]);
  sub_26EF27264();
  v22 = v59;
  sub_26EF386BC();
  v79 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9108, &unk_26EF421F0);
  sub_26EE154C8(&qword_2806C9FD8, &qword_2806C9F48, &qword_26EF445F8, MEMORY[0x277CE7668]);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8C20, &qword_26EF41880);
  v24 = type metadata accessor for ToolbarCancelButton(255);
  v25 = sub_26EF31BEC(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton, &unk_26EF44CA0);
  v82 = v24;
  v83 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = v23;
  v83 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = v61;
  v28 = v62;
  sub_26EF3A8EC();
  (*(v75 + 8))(v22, v28);
  sub_26EF279C4(v15, v21);
  v29 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v77 = v5;
  v30 = swift_allocObject();
  v75 = v29;
  sub_26EF27A2C(v21, v30 + v29);
  v31 = v27;
  v32 = &v27[*(v78 + 36)];
  sub_26EF3990C();
  sub_26EF3B2EC();
  *v32 = &unk_26EF44668;
  *(v32 + 1) = v30;
  v33 = *v19;
  v34 = *(v19 + 8);
  if (v34 == 1)
  {
    v35 = v33;
    v36 = v63;
  }

  else
  {

    sub_26EF3B46C();
    v37 = sub_26EF3A36C();
    sub_26EF3880C();

    v36 = v63;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v33, 0);
    (*(v68 + 8))(v36, v64);
    v35 = v82;
  }

  v38 = VoiceBankingSession.isRecordingComplete.getter();

  LOBYTE(v82) = v38;
  sub_26EF279C4(v19, v21);
  v39 = v75;
  v40 = swift_allocObject();
  sub_26EF27A2C(v21, v40 + v39);
  v41 = sub_26EF27E64();
  sub_26EF3A8FC();

  sub_26EE14578(v31, &qword_2806C9F50, &qword_26EF44600);
  if (v34)
  {
    v42 = v33;
  }

  else
  {

    sub_26EF3B46C();
    v43 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v33, 0);
    (*(v68 + 8))(v36, v64);
    v42 = v82;
  }

  v44 = VoiceBankingSession.indexOfCurrentSample.getter();
  v46 = v45;

  v86 = v44;
  v87 = v46 & 1;
  sub_26EF279C4(v19, v21);
  v47 = v75;
  v48 = swift_allocObject();
  v68 = v19;
  sub_26EF27A2C(v21, v48 + v47);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E40, &qword_26EF44670);
  v82 = v78;
  v83 = MEMORY[0x277D839B0];
  v84 = v41;
  v85 = MEMORY[0x277D839C8];
  v49 = swift_getOpaqueTypeConformance2();
  v50 = sub_26EE25D44();
  v51 = v66;
  v52 = v67;
  v53 = v76;
  sub_26EF3A90C();

  (*(v65 + 8))(v53, v52);
  v54 = v71;
  sub_26EF3A1EC();
  sub_26EF279C4(v68, v21);
  v55 = swift_allocObject();
  sub_26EF27A2C(v21, v55 + v47);
  v82 = v52;
  v83 = v64;
  v84 = v49;
  v85 = v50;
  swift_getOpaqueTypeConformance2();
  v56 = v70;
  sub_26EF3A7AC();

  (*(v73 + 8))(v54, v74);
  return (*(v69 + 8))(v51, v56);
}

uint64_t type metadata accessor for PromptView(uint64_t a1)
{
  result = qword_2806CF710;
  if (!qword_2806CF710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EF25AA4()
{
  v1 = v0;
  v2 = sub_26EF39DDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  if (*(v1 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_26EF3B46C();
    v8 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v6, 0);
    (*(v3 + 8))(v5, v2);
    v7 = v16;
  }

  VoiceBankingSession.sampleState.getter(&v15 + 7);

  BYTE6(v15) = 4;
  if (static SampleState.== infix(_:_:)(&v15 + 7, &v15 + 6) || (sub_26EF26F04() & 1) != 0)
  {
    v9 = sub_26EE17094();
    v10 = 0x800000026EF47460;
    v11 = v9 & 1;
    v12 = 0xD000000000000016;
  }

  else
  {
    v13 = sub_26EE17094();
    v10 = 0xEF454C5449545F54;
    v11 = v13 & 1;
    v12 = 0x504D4F52505F4256;
  }

  return TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(*&v12, v11, 0)._countAndFlagsBits;
}

uint64_t sub_26EF25C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA0A0, &qword_26EF447C8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v36 = &v34 - v6;
  v7 = sub_26EF39DDC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FF0, &qword_26EF44678);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA0B8, &unk_26EF447D8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v35 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = (&v34 - v18);
  v20 = *a1;
  if (*(a1 + 8) == 1)
  {
    v21 = v20;
  }

  else
  {

    sub_26EF3B46C();
    v22 = sub_26EF3A36C();
    v34 = v7;
    v23 = v22;
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v20, 0);
    (*(v8 + 8))(v10, v34);
  }

  type metadata accessor for VoiceBankingSession(0);
  sub_26EF31BEC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  sub_26EF3ADBC();
  *v19 = sub_26EF3AE4C();
  v19[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FF8, &qword_26EF44680);
  sub_26EF2BC9C(v14, a1, v19 + *(v25 + 44));
  (*(v12 + 8))(v14, v11);
  v26 = v36;
  sub_26EF26118(v36);
  v27 = v35;
  sub_26EE13B88(v19, v35, &qword_2806CA0B8, &unk_26EF447D8);
  v28 = v37;
  sub_26EE13B88(v26, v37, &qword_2806CA0A0, &qword_26EF447C8);
  v29 = v38;
  sub_26EE13B88(v27, v38, &qword_2806CA0B8, &unk_26EF447D8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA1C8, &qword_26EF449A0);
  v31 = v29 + v30[12];
  *v31 = 0;
  *(v31 + 8) = 1;
  sub_26EE13B88(v28, v29 + v30[16], &qword_2806CA0A0, &qword_26EF447C8);
  v32 = v29 + v30[20];
  *v32 = 0;
  *(v32 + 8) = 1;
  sub_26EE14578(v26, &qword_2806CA0A0, &qword_26EF447C8);
  sub_26EE14578(v19, &qword_2806CA0B8, &unk_26EF447D8);
  sub_26EE14578(v28, &qword_2806CA0A0, &qword_26EF447C8);
  return sub_26EE14578(v27, &qword_2806CA0B8, &unk_26EF447D8);
}

uint64_t sub_26EF26118@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = type metadata accessor for PromptView(0);
  v48 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v49 = v3;
  v50 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA000, &qword_26EF44688);
  MEMORY[0x28223BE20](v43);
  v5 = &v41 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA008, &qword_26EF44690);
  MEMORY[0x28223BE20](v46);
  v47 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA010, &unk_26EF44698);
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_26EF39DDC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26EF38E9C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v42 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v44 = v1;
  if (*(v1 + 8) == 1)
  {
    v20 = v19;
  }

  else
  {

    sub_26EF3B46C();
    v41 = v12;
    v21 = v5;
    v22 = v17;
    v23 = v16;
    v24 = sub_26EF3A36C();
    sub_26EF3880C();

    v16 = v23;
    v17 = v22;
    v5 = v21;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v19, 0);
    (*(v13 + 8))(v15, v41);
    v20 = v54;
  }

  v25 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_sample;
  swift_beginAccess();
  sub_26EE13B88(v20 + v25, v11, &unk_2806C9CA0, &qword_26EF3F100);

  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    sub_26EE14578(v11, &unk_2806C9CA0, &qword_26EF3F100);
    return (*(v51 + 56))(v53, 1, 1, v52);
  }

  else
  {
    v27 = v42;
    (*(v17 + 32))(v42, v11, v16);
    *v5 = sub_26EF39F6C();
    *(v5 + 1) = 0x402E000000000000;
    v5[16] = 0;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA018, &qword_26EF446A8);
    v29 = v44;
    sub_26EF28E58(v44, &v5[*(v28 + 44)]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FE0, &unk_26EF44658);
    sub_26EF3A21C();
    v41 = v16;
    sub_26EE154C8(&qword_2806CA020, &qword_2806CA000, &qword_26EF44688, MEMORY[0x277CE1198]);
    v30 = v47;
    sub_26EF3A7EC();

    sub_26EE14578(v5, &qword_2806CA000, &qword_26EF44688);
    KeyPath = swift_getKeyPath();
    v32 = (v30 + *(v46 + 36));
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA028, &qword_26EF446E0) + 28);
    v34 = *MEMORY[0x277CDFA88];
    v35 = sub_26EF39A4C();
    (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
    *v32 = KeyPath;
    v36 = v50;
    sub_26EF279C4(v29, v50);
    v37 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v38 = swift_allocObject();
    sub_26EF27A2C(v36, v38 + v37);
    sub_26EF2C278();
    v39 = v45;
    sub_26EF3A85C();

    sub_26EE14578(v30, &qword_2806CA008, &qword_26EF44690);
    v40 = v53;
    sub_26EE14D98(v39, v53, &qword_2806CA010, &unk_26EF44698);
    (*(v51 + 56))(v40, 0, 1, v52);
    return (*(v17 + 8))(v27, v41);
  }
}

uint64_t sub_26EF26838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for PromptView(0);
  v50 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = v4;
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FD0, &qword_26EF44648);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FB0, &qword_26EF44638);
  MEMORY[0x28223BE20](v55);
  v52 = &v48 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA1C0, &qword_26EF44998);
  MEMORY[0x28223BE20](v58);
  v11 = &v48 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F90, &qword_26EF44628);
  MEMORY[0x28223BE20](v54);
  v13 = &v48 - v12;
  v14 = sub_26EF39DDC();
  v53 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9F70, &qword_26EF44620);
  v59 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v57 = &v48 - v18;
  v19 = *a1;
  if (*(a1 + 8) == 1)
  {
    v20 = v19;
  }

  else
  {

    sub_26EF3B46C();
    v48 = v14;
    v21 = sub_26EF3A36C();
    v49 = v8;
    v22 = a1;
    v23 = v17;
    v24 = v21;
    sub_26EF3880C();

    v17 = v23;
    a1 = v22;
    v8 = v49;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v19, 0);
    (*(v53 + 8))(v16, v48);
    v20 = v62;
  }

  VoiceBankingSession.sampleState.getter(&v61);

  v60 = 4;
  v25 = static SampleState.== infix(_:_:)(&v61, &v60);
  v26 = v57;
  if (v25 || (sub_26EF26F04() & 1) != 0)
  {
    *v13 = sub_26EF39F5C();
    *(v13 + 1) = 0x4034000000000000;
    v13[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA040, &qword_26EF446E8);
    sub_26EF2B03C(a1, &v13[*(v27 + 44)]);
    v28 = sub_26EF3A3DC();
    sub_26EF3962C();
    v29 = &v13[*(v54 + 36)];
    *v29 = v28;
    *(v29 + 1) = v30;
    *(v29 + 2) = v31;
    *(v29 + 3) = v32;
    *(v29 + 4) = v33;
    v29[40] = 0;
    v34 = &qword_2806C9F90;
    v35 = &qword_26EF44628;
    sub_26EE13B88(v13, v11, &qword_2806C9F90, &qword_26EF44628);
    swift_storeEnumTagMultiPayload();
    sub_26EF272F0();
    sub_26EF273A8();
    sub_26EF3A06C();
    v36 = v13;
  }

  else
  {
    *v8 = sub_26EF39F5C();
    *(v8 + 1) = 0x4041800000000000;
    v8[16] = 0;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA048, &qword_26EF446F0);
    sub_26EF2B974(a1, &v8[*(v37 + 44)]);
    sub_26EF279C4(a1, v5);
    v38 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v39 = swift_allocObject();
    sub_26EF27A2C(v5, v39 + v38);
    sub_26EE154C8(&qword_2806C9FC8, &qword_2806C9FD0, &qword_26EF44648, MEMORY[0x277CE1198]);
    v40 = v52;
    sub_26EF3A85C();

    sub_26EE14578(v8, &qword_2806C9FD0, &qword_26EF44648);
    LOBYTE(v38) = sub_26EF3A3DC();
    sub_26EF3962C();
    v41 = v40 + *(v55 + 36);
    *v41 = v38;
    *(v41 + 8) = v42;
    *(v41 + 16) = v43;
    *(v41 + 24) = v44;
    *(v41 + 32) = v45;
    *(v41 + 40) = 0;
    v34 = &qword_2806C9FB0;
    v35 = &qword_26EF44638;
    sub_26EE13B88(v40, v11, &qword_2806C9FB0, &qword_26EF44638);
    swift_storeEnumTagMultiPayload();
    sub_26EF272F0();
    sub_26EF273A8();
    sub_26EF3A06C();
    v36 = v40;
  }

  sub_26EE14578(v36, v34, v35);
  v46 = v56;
  sub_26EE14D98(v26, v56, &qword_2806C9F70, &qword_26EF44620);
  return (*(v59 + 56))(v46, 0, 1, v17);
}

uint64_t sub_26EF26F04()
{
  v1 = v0;
  v2 = sub_26EF39DDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26EF38BEC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = *(v0 + 32);
  if (v13)
  {
    v14 = v13;
    sub_26EF10340();

    (*(v7 + 104))(v10, *MEMORY[0x277D70578], v6);
    sub_26EF31BEC(&qword_2806C8B90, MEMORY[0x277D70580], MEMORY[0x277D70590]);
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    v15 = *(v7 + 8);
    v15(v10, v6);
    v15(v12, v6);
    if (v22 == v21)
    {
      v16 = *v1;
      if (*(v1 + 8) == 1)
      {
        v17 = v16;
      }

      else
      {

        sub_26EF3B46C();
        v19 = sub_26EF3A36C();
        sub_26EF3880C();

        sub_26EF39DCC();
        swift_getAtKeyPath();
        sub_26EE05C9C(v16, 0);
        (*(v3 + 8))(v5, v2);
        v17 = v22;
      }

      VoiceBankingSession.sampleState.getter(&v22);

      LOBYTE(v21) = 3;
      return static SampleState.== infix(_:_:)(&v22, &v21);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

unint64_t sub_26EF27264()
{
  result = qword_2806C9F80;
  if (!qword_2806C9F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9F70, &qword_26EF44620);
    sub_26EF272F0();
    sub_26EF273A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9F80);
  }

  return result;
}

unint64_t sub_26EF272F0()
{
  result = qword_2806C9F88;
  if (!qword_2806C9F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9F90, &qword_26EF44628);
    sub_26EE154C8(&qword_2806C9F98, &qword_2806C9FA0, &qword_26EF44630, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9F88);
  }

  return result;
}

unint64_t sub_26EF273A8()
{
  result = qword_2806C9FA8;
  if (!qword_2806C9FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9FB0, &qword_26EF44638);
    sub_26EF27434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9FA8);
  }

  return result;
}

unint64_t sub_26EF27434()
{
  result = qword_2806C9FB8;
  if (!qword_2806C9FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9FC0, &qword_26EF44640);
    sub_26EE154C8(&qword_2806C9FC8, &qword_2806C9FD0, &qword_26EF44648, MEMORY[0x277CE1198]);
    sub_26EF31BEC(&qword_2806C6AD8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9FB8);
  }

  return result;
}

uint64_t sub_26EF2751C()
{
  v0 = type metadata accessor for ToolbarCancelButton(0);
  MEMORY[0x28223BE20](v0);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C20, &qword_26EF41880);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = sub_26EE17094() & 1;
  v8._countAndFlagsBits = 0x454E4F445F4256;
  v8._object = 0xE700000000000000;
  v9 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v8, v7, 0);
  sub_26EF363D8(v9._countAndFlagsBits, v9._object, v2);
  v10 = sub_26EF31BEC(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton, &unk_26EF44CA0);
  MEMORY[0x274382230](v2, v0, v10);
  sub_26EEB2754(v2);
  v13[0] = v0;
  v13[1] = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x274382230](v6, v3, OpaqueTypeConformance2);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26EF27704(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_26EF39DDC();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[7] = sub_26EF3B2CC();
  v4 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EF277F8, v4, v3);
}

uint64_t sub_26EF277F8()
{
  v1 = v0[3];

  v2 = *(v1 + 32);
  v3 = v0[3];
  if (v2)
  {
    v4 = v2;
    sub_26EF17564();

    v5 = *v3;
    if (*(v3 + 8) == 1)
    {
      v6 = v5;
    }

    else
    {
      v9 = v0[5];
      v8 = v0[6];
      v10 = v0[4];

      sub_26EF3B46C();
      v11 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v5, 0);
      (*(v9 + 8))(v8, v10);
      v6 = v0[2];
    }

    sub_26EED7058();

    v12 = v0[1];

    return v12();
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EF279C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF27A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF27A90()
{
  v2 = *(type metadata accessor for PromptView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EF27704(v0 + v3);
}

void sub_26EF27B5C(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26EF39DDC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    if (*(a2 + 16))
    {
      v9 = v6;
      v10 = *a2;
      v11 = *(a2 + 8);

      if (v11 == 1)
      {
        sub_26EECABE0(v10, 1);
      }

      else
      {
        sub_26EECABE0(v10, 0);
        sub_26EF3B46C();
        v12 = sub_26EF3A36C();
        sub_26EF3880C();

        sub_26EF39DCC();
        swift_getAtKeyPath();
        sub_26EE05C9C(v10, 0);
        (*(v5 + 8))(v8, v9);
        v10 = v22[0];
      }

      v13 = sub_26EED6EB4();

      v14 = VoiceBankingNavigationModel.itemPath.modify(v22);
      v16 = v15;
      v17 = *v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v16 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_26EEB3AD4(0, *(v17 + 2) + 1, 1, v17);
        *v16 = v17;
      }

      v20 = *(v17 + 2);
      v19 = *(v17 + 3);
      if (v20 >= v19 >> 1)
      {
        v17 = sub_26EEB3AD4((v19 > 1), v20 + 1, 1, v17);
        *v16 = v17;
      }

      *(v17 + 2) = v20 + 1;
      v21 = &v17[16 * v20];
      *(v21 + 4) = v13;
      v21[40] = 0;
      (v14)(v22, 0);
    }

    else
    {
      type metadata accessor for VoiceBankingNavigationModel(0);
      sub_26EF31BEC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
      sub_26EF39BFC();
      __break(1u);
    }
  }
}

void sub_26EF27DF4(uint64_t a1, _BYTE *a2)
{
  v4 = *(type metadata accessor for PromptView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_26EF27B5C(a2, v5);
}

unint64_t sub_26EF27E64()
{
  result = qword_2806C9FE8;
  if (!qword_2806C9FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9F50, &qword_26EF44600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9F48, &qword_26EF445F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9108, &unk_26EF421F0);
    sub_26EE154C8(&qword_2806C9FD8, &qword_2806C9F48, &qword_26EF445F8, MEMORY[0x277CE7668]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8C20, &qword_26EF41880);
    type metadata accessor for ToolbarCancelButton(255);
    sub_26EF31BEC(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton, &unk_26EF44CA0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26EF31BEC(&qword_2806C6708, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9FE8);
  }

  return result;
}

uint64_t sub_26EF2804C()
{
  type metadata accessor for PromptView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (v1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FE0, &unk_26EF44658);
    return sub_26EF3A20C();
  }

  else
  {
    sub_26EE82F18();
    return sub_26EF3AB0C();
  }
}

void sub_26EF28174(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v32 = a2;
  *&v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83C0, &qword_26EF40210);
  MEMORY[0x28223BE20](v28);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA0C0, &qword_26EF44818);
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = &v27 - v8;
  sub_26EE98378(&v38);
  v9 = sub_26EF39E4C();
  v37 = 1;
  sub_26EF28688(a1, &v49);
  v43 = v50;
  v44 = v51;
  v45 = v52;
  v46 = v53;
  v42 = v49;
  v47[1] = v50;
  v47[2] = v51;
  v47[3] = v52;
  v48 = v53;
  v47[0] = v49;
  sub_26EE13B88(&v42, &v34, &qword_2806CA0C8, &qword_26EF44820);
  sub_26EE14578(v47, &qword_2806CA0C8, &qword_26EF44820);
  *(&v36[1] + 7) = v43;
  *(&v36[2] + 7) = v44;
  *(&v36[3] + 7) = v45;
  *(&v36[4] + 7) = v46;
  *(v36 + 7) = v42;
  v10 = v37;
  type metadata accessor for PromptView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
  sub_26EF397FC();
  sub_26EF3AE4C();
  sub_26EF3984C();
  *(&v35[1] + 1) = v36[1];
  *(&v35[2] + 1) = v36[2];
  *(&v35[3] + 1) = v36[3];
  v35[4] = *(&v36[3] + 15);
  v34 = v9;
  LOBYTE(v35[0]) = v10;
  *(v35 + 1) = v36[0];
  v11 = *MEMORY[0x277CDF988];
  v12 = sub_26EF39A3C();
  (*(*(v12 - 8) + 104))(v4, v11, v12);
  sub_26EF31BEC(&qword_2806C83D0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  if (sub_26EF3B0AC())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA0D0, &qword_26EF44828);
    sub_26EF31730();
    sub_26EE154C8(&qword_2806C83D8, &qword_2806C83C0, &qword_26EF40210, MEMORY[0x277D84470]);
    v13 = v33;
    sub_26EF3A73C();
    sub_26EE14578(v4, &qword_2806C83C0, &qword_26EF40210);
    v55 = v35[5];
    v56 = v35[6];
    v57 = v35[7];
    v51 = v35[1];
    v52 = v35[2];
    v53 = v35[3];
    v54 = v35[4];
    v49 = v34;
    v50 = v35[0];
    sub_26EE14578(&v49, &qword_2806CA0D0, &qword_26EF44828);
    v14 = v41;
    v16 = v29;
    v15 = v30;
    v17 = *(v30 + 16);
    v18 = v40;
    v19 = v13;
    v20 = v31;
    v17(v29, v19, v31);
    v21 = v39;
    v27 = v38;
    v28 = v39;
    v22 = v32;
    *v32 = v38;
    v22[1] = v21;
    *(v22 + 32) = v18 & 1;
    *(v22 + 5) = v14;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA0F0, &qword_26EF44838);
    v17(v22 + *(v23 + 48), v16, v20);
    v24 = v27;
    v25 = v28;
    sub_26EE980F4();
    v26 = *(v15 + 8);

    v26(v33, v20);
    v26(v16, v20);

    sub_26EE05CA8(v25, *(&v25 + 1));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26EF28688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF39DDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 8);
  if (v9 == 1)
  {
    countAndFlagsBits = v8;
  }

  else
  {

    sub_26EF3B46C();
    v11 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v8, 0);
    (*(v5 + 8))(v7, v4);
    countAndFlagsBits = v36._countAndFlagsBits;
  }

  VoiceBankingSession.sampleState.getter(&v36);

  v37 = 2;
  if (static SampleState.== infix(_:_:)(&v36, &v37))
  {
    v12 = sub_26EF3AA8C();
    v13 = [objc_opt_self() systemGreenColor];
    v14 = sub_26EF3AA5C();

    if (!v9)
    {
LABEL_6:

      sub_26EF3B46C();
      v15 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v8, 0);
      (*(v5 + 8))(v7, v4);
      v16 = v36._countAndFlagsBits;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  v16 = v8;
LABEL_9:
  VoiceBankingSession.sampleState.getter(&v36);

  v37 = 2;
  if (static SampleState.== infix(_:_:)(&v36, &v37))
  {
    v17 = sub_26EE17094();
    v18 = 0xD00000000000001CLL;
    v19 = 0x800000026EF47420;
    v20 = v17 & 1;
  }

  else
  {
    v21 = sub_26EE17094();
    v19 = 0xEC000000474E494ELL;
    v20 = v21 & 1;
    v18 = 0x455453494C5F4256;
  }

  v36 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(*&v18, v20, 0);
  sub_26EE12538(v36._countAndFlagsBits, v36._object, v22);
  v23 = sub_26EF3A5DC();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if (sub_26EF28A90())
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 0.0;
  }

  v31 = sub_26EF3A4DC();
  KeyPath = swift_getKeyPath();
  sub_26EE187A8(v12, v14);
  v33 = v27 & 1;
  sub_26EE13B20(v23, v25, v33);

  sub_26EE187E8(v12, v14);
  LOBYTE(v36._countAndFlagsBits) = v33;
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v23;
  *(a2 + 24) = v25;
  *(a2 + 32) = v33;
  *(a2 + 40) = v29;
  *(a2 + 48) = v30;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = v31;
  sub_26EE12ABC(v23, v25, v33);

  return sub_26EE187E8(v12, v14);
}

uint64_t sub_26EF28A90()
{
  v1 = v0;
  v2 = sub_26EF38C2C();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = sub_26EF39DDC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  v13 = *(v0 + 8);
  if (v13 == 1)
  {
    v14 = v12;
  }

  else
  {

    sub_26EF3B46C();
    v15 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v12, 0);
    (*(v9 + 8))(v11, v8);
    v14 = v28;
  }

  VoiceBankingSession.sampleState.getter(&v28);

  v27 = 2;
  if (static SampleState.== infix(_:_:)(&v28, &v27))
  {
    v16 = 1;
    return v16 & 1;
  }

  if (v13)
  {
    v17 = v12;
  }

  else
  {

    sub_26EF3B46C();
    v18 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v12, 0);
    (*(v9 + 8))(v11, v8);
    v17 = v28;
  }

  VoiceBankingSession.sampleState.getter(&v28);

  v16 = 1;
  v27 = 1;
  if (static SampleState.== infix(_:_:)(&v28, &v27))
  {
    return v16 & 1;
  }

  v19 = *(v1 + 32);
  if (v19)
  {
    v20 = v19;
    sub_26EF0F97C();

    v22 = v25;
    v21 = v26;
    (*(v25 + 104))(v5, *MEMORY[0x277D705A0], v26);
    v16 = sub_26EF38C1C();
    v23 = *(v22 + 8);
    v23(v5, v21);
    v23(v7, v21);
    return v16 & 1;
  }

  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  result = sub_26EF39BFC();
  __break(1u);
  return result;
}

uint64_t sub_26EF28E58@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v77 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA0B0, &qword_26EF447D0);
  MEMORY[0x28223BE20](v76);
  v59 = &v58 - v3;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA128, &qword_26EF448D0);
  MEMORY[0x28223BE20](v74);
  v75 = &v58 - v4;
  v5 = type metadata accessor for PromptView(0);
  v62 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v63 = v6;
  v64 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8800, &qword_26EF40D20);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA058, &qword_26EF44708);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = (&v58 - v10);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA070, &qword_26EF44718);
  MEMORY[0x28223BE20](v71);
  v66 = &v58 - v11;
  v60 = sub_26EF39DDC();
  v12 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA130, &qword_26EF448D8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v73 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = &v58 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA138, &qword_26EF448E0);
  v67 = *(v19 - 8);
  v68 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v70 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v58 - v22;
  sub_26EF38E6C();
  v24 = sub_26EED275C();
  v79[0] = v24;
  v79[1] = v25;
  v79[2] = v26;
  v79[3] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FE0, &unk_26EF44658);
  v28 = sub_26EF3A21C();
  sub_26EF31C38(v28, v29, v30);
  v69 = v23;
  sub_26EF3A7EC();

  v31 = *a1;
  if (*(a1 + 8) == 1)
  {
    v32 = v31;
  }

  else
  {

    sub_26EF3B46C();
    v33 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v31, 0);
    (*(v12 + 8))(v14, v60);
    v32 = v79[0];
  }

  VoiceBankingSession.sampleState.getter(v79);

  LOBYTE(v78) = 4;
  if (static SampleState.== infix(_:_:)(v79, &v78) || (sub_26EF26F04() & 1) != 0)
  {
    v34 = v61;
    sub_26EF398DC();
    v35 = sub_26EF398FC();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    v36 = v64;
    sub_26EF279C4(a1, v64);
    v37 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v38 = swift_allocObject();
    v39 = sub_26EF27A2C(v36, v38 + v37);
    MEMORY[0x28223BE20](v39);
    *(&v58 - 2) = a1;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA060, &qword_26EF44710);
    v41 = sub_26EE154C8(&qword_2806CA068, &qword_2806CA060, &qword_26EF44710, MEMORY[0x277CE1138]);
    v42 = v65;
    sub_26EE98DD0(v34, sub_26EF323C8, v38, sub_26EF323F8, v40, v41, v65);
    if (sub_26EF2A5D4())
    {
      v43 = 1.0;
    }

    else
    {
      v43 = 0.0;
    }

    v44 = v66;
    sub_26EF2C3B0(v42, v66);
    *(v44 + *(v71 + 36)) = v43;
    v45 = &qword_2806CA070;
    v46 = &qword_26EF44718;
    sub_26EE13B88(v44, v75, &qword_2806CA070, &qword_26EF44718);
    swift_storeEnumTagMultiPayload();
    sub_26EF2C6E4();
    sub_26EF314EC(&qword_2806CA0A8, &qword_2806CA0B0, &qword_26EF447D0, sub_26EF2C6E4);
    v47 = v72;
  }

  else
  {
    v44 = v59;
    sub_26EF29798(v59);
    v45 = &qword_2806CA0B0;
    v46 = &qword_26EF447D0;
    sub_26EE13B88(v44, v75, &qword_2806CA0B0, &qword_26EF447D0);
    swift_storeEnumTagMultiPayload();
    sub_26EF2C6E4();
    sub_26EF314EC(&qword_2806CA0A8, &qword_2806CA0B0, &qword_26EF447D0, sub_26EF2C6E4);
    v47 = v72;
  }

  sub_26EF3A06C();
  sub_26EE14578(v44, v45, v46);
  v48 = v67;
  v49 = v68;
  v50 = *(v67 + 16);
  v51 = v69;
  v52 = v70;
  v50(v70, v69, v68);
  v53 = v73;
  sub_26EE13B88(v47, v73, &qword_2806CA130, &qword_26EF448D8);
  v54 = v77;
  v50(v77, v52, v49);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA148, &qword_26EF448E8);
  sub_26EE13B88(v53, &v54[*(v55 + 48)], &qword_2806CA130, &qword_26EF448D8);
  sub_26EE14578(v47, &qword_2806CA130, &qword_26EF448D8);
  v56 = *(v48 + 8);
  v56(v51, v49);
  sub_26EE14578(v53, &qword_2806CA130, &qword_26EF448D8);
  return (v56)(v52, v49);
}

uint64_t sub_26EF29798@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v27 = sub_26EF39F4C();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PromptView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8800, &qword_26EF40D20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA058, &qword_26EF44708);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA070, &qword_26EF44718);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  sub_26EF398CC();
  v17 = sub_26EF398FC();
  (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  sub_26EF279C4(v1, v7);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  sub_26EF27A2C(v7, v19 + v18);
  v28 = v1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA060, &qword_26EF44710);
  v21 = sub_26EE154C8(&qword_2806CA068, &qword_2806CA060, &qword_26EF44710, MEMORY[0x277CE1138]);
  sub_26EE98DD0(v10, sub_26EF2C420, v19, sub_26EF2C4B4, v20, v21, v13);
  if (sub_26EF2A5D4())
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.0;
  }

  sub_26EF2C3B0(v13, v16);
  *&v16[*(v14 + 36)] = v22;
  sub_26EF39F0C();
  sub_26EF2C6E4();
  sub_26EF3A81C();
  (*(v25 + 8))(v3, v27);
  return sub_26EE14578(v16, &qword_2806CA070, &qword_26EF44718);
}

uint64_t sub_26EF29B74(uint64_t a1)
{
  v2 = sub_26EF39A4C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26EF39CCC();
}

double sub_26EF29C3C()
{
  v1 = type metadata accessor for PromptView(0);
  v37 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v38 = v2;
  v40 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v35 - v4;
  v41 = sub_26EF3925C();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26EF39DDC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  v36 = v0;
  if (*(v0 + 8) == 1)
  {
    v13 = v12;
    v14 = VoiceBankingSession.indexOfCurrentSample.getter();
    v16 = v15;

    if (v16)
    {
      return result;
    }

    v18 = v13;
  }

  else
  {

    sub_26EF3B46C();
    v19 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v12, 0);
    v20 = *(v9 + 8);
    v20(v11, v8);
    v21 = v42;
    v14 = VoiceBankingSession.indexOfCurrentSample.getter();
    v23 = v22;

    if (v23)
    {
      return result;
    }

    sub_26EF3B46C();
    v24 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v12, 0);
    v20(v11, v8);
    v18 = v42;
  }

  v25 = v41;
  (*(v5 + 16))(v7, v18 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationExperience, v41);

  v26 = sub_26EF3923C();
  (*(v5 + 8))(v7, v25);
  if (v14 < v26)
  {
    v27 = sub_26EF3B30C();
    v28 = v39;
    (*(*(v27 - 8) + 56))(v39, 1, 1, v27);
    v29 = v40;
    sub_26EF279C4(v36, v40);
    sub_26EF3B2DC();
    v30 = sub_26EF3B2CC();
    v31 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v32 = (v38 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v34 = MEMORY[0x277D85700];
    *(v33 + 16) = v30;
    *(v33 + 24) = v34;
    sub_26EF27A2C(v29, v33 + v31);
    *(v33 + v32) = v14;
    sub_26EE2C388(0, 0, v28, &unk_26EF44878, v33);
  }

  return result;
}

double sub_26EF2A0DC()
{
  v1 = v0;
  v2 = type metadata accessor for PromptView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - v7;
  v9 = sub_26EF39DDC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v0;
  if (*(v0 + 8) == 1)
  {
    v15 = v14;
  }

  else
  {
    v27[0] = v11;

    sub_26EF3B46C();
    v16 = sub_26EF3A36C();
    v1 = v0;
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v14, 0);
    (*(v10 + 8))(v13, v27[0]);
    v15 = v27[1];
  }

  v17 = VoiceBankingSession.indexOfCurrentSample.getter();
  v19 = v18;

  if ((v19 & 1) == 0 && v17 >= 1)
  {
    v21 = sub_26EF3B30C();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    sub_26EF279C4(v1, v5);
    sub_26EF3B2DC();
    v22 = sub_26EF3B2CC();
    v23 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v24 = (v4 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    v26 = MEMORY[0x277D85700];
    *(v25 + 16) = v22;
    *(v25 + 24) = v26;
    sub_26EF27A2C(v5, v25 + v23);
    *(v25 + v24) = v17;
    sub_26EE2C388(0, 0, v8, &unk_26EF44890, v25);
  }

  return result;
}

uint64_t sub_26EF2A418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26EF3B2DC();
  v4[3] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26EF2A4B0, v6, v5);
}

uint64_t sub_26EF2A4B0()
{
  v1 = *(v0[2] + 32);
  v0[6] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_26EE7CD18;

    return sub_26EF1AC40();
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EF2A5D4()
{
  v1 = v0;
  v2 = sub_26EF39DDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_26EF38C2C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v27[-v11];
  v13 = *(v0 + 32);
  if (v13)
  {
    v14 = v13;
    sub_26EF0F97C();

    (*(v7 + 104))(v10, *MEMORY[0x277D70598], v6);
    LOBYTE(v14) = sub_26EF38C1C();
    v15 = *(v7 + 8);
    v15(v10, v6);
    v15(v12, v6);
    if ((v14 & 1) != 0 && ((v16 = *v1, v17 = *(v1 + 8), v17 != 1) ? (, sub_26EF3B46C(), v19 = sub_26EF3A36C(), sub_26EF3880C(), v19, sub_26EF39DCC(), swift_getAtKeyPath(), sub_26EE05C9C(v16, 0), (*(v3 + 8))(v5, v2), v18 = v30) : (v18 = v16), VoiceBankingSession.sampleState.getter(&v30), v18, v29 = v30, v28 = 2, sub_26EEF21B0(v20, v21, v22), (sub_26EF3B0AC() & 1) == 0))
    {
      if (v17)
      {
        v24 = v16;
      }

      else
      {

        sub_26EF3B46C();
        v25 = sub_26EF3A36C();
        sub_26EF3880C();

        sub_26EF39DCC();
        swift_getAtKeyPath();
        sub_26EE05C9C(v16, 0);
        (*(v3 + 8))(v5, v2);
        v24 = v30;
      }

      VoiceBankingSession.sampleState.getter(&v30);

      v29 = v30;
      v28 = 1;
      v23 = sub_26EF3B0AC() ^ 1;
    }

    else
    {
      v23 = 0;
    }

    return v23 & 1;
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

void sub_26EF2A9D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_26EF38E9C();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v25 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26EF39DDC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  v12 = *(v0 + 8);
  if (v12 == 1)
  {
    v13 = v11;
  }

  else
  {

    sub_26EF3B46C();
    v14 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v11, 0);
    (*(v8 + 8))(v10, v7);
    v13 = *v27;
  }

  VoiceBankingSession.sampleState.getter(v27);

  v28 = 4;
  if (static SampleState.== infix(_:_:)(v27, &v28) || (sub_26EF26F04() & 1) != 0)
  {
    v15 = *(v1 + 32);
    if (v15)
    {
      v16 = v15;
      v17 = sub_26EF10038();

      if (v17)
      {
        v18 = v16;
        sub_26EF0FC18();
      }

      else
      {
        if (v12)
        {
          v19 = v11;
        }

        else
        {

          sub_26EF3B46C();
          v20 = sub_26EF3A36C();
          sub_26EF3880C();

          sub_26EF39DCC();
          swift_getAtKeyPath();
          sub_26EE05C9C(v11, 0);
          (*(v8 + 8))(v10, v7);
          v19 = *v27;
        }

        v21 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_sample;
        swift_beginAccess();
        sub_26EE13B88(v19 + v21, v4, &unk_2806C9CA0, &qword_26EF3F100);

        v22 = v26;
        if ((*(v26 + 48))(v4, 1, v5) == 1)
        {
          sub_26EE14578(v4, &unk_2806C9CA0, &qword_26EF3F100);
        }

        else
        {
          v23 = v25;
          (*(v22 + 32))(v25, v4, v5);
          v24 = v16;
          sub_26EF17FAC(v23);

          (*(v22 + 8))(v23, v5);
        }
      }
    }

    else
    {
      type metadata accessor for VoiceBankingAudioServiceViewModel(0);
      sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
      sub_26EF39BFC();
      __break(1u);
    }
  }
}

void sub_26EF2AE38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF39E4C();
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    sub_26EF10038();

    v8 = sub_26EF3AA8C();
    v9 = v7;
    v10 = sub_26EF10038();

    if (v10)
    {
      v11 = 0x504F54535F4256;
    }

    else
    {
      v11 = 0x455453494C5F4256;
    }

    if (v10)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0xE90000000000004ELL;
    }

    v13 = sub_26EE17094() & 1;
    v14._countAndFlagsBits = v11;
    v14._object = v12;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v14, v13, 0);

    sub_26EE12538(v15, v16, v17);
    v18 = sub_26EF3A5DC();
    v20 = v19;
    v22 = v21;
    v24 = v23 & 1;
    v25 = v23 & 1;

    sub_26EE13B20(v18, v20, v24);

    sub_26EE12ABC(v18, v20, v24);

    *a2 = v6;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    *(a2 + 24) = v8;
    *(a2 + 32) = v18;
    *(a2 + 40) = v20;
    *(a2 + 48) = v25;
    *(a2 + 56) = v22;
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    sub_26EF39BFC();
    __break(1u);
  }
}

uint64_t sub_26EF2B03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = sub_26EF387FC();
  v4 = *(v3 - 8);
  v95 = v3;
  v96 = v4;
  MEMORY[0x28223BE20](v3);
  v94 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_26EF39B4C();
  v88 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v82 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  v8 = *(v7 - 8);
  v83 = v7;
  v84 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v74 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A80, &qword_26EF3D530);
  v12 = *(v11 - 8);
  v85 = v11;
  v86 = v12;
  MEMORY[0x28223BE20](v11);
  v79 = &v74 - v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA108, &qword_26EF448A8);
  v93 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v80 = &v74 - v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA110, &qword_26EF448B0);
  v89 = *(v92 - 8);
  v15 = MEMORY[0x28223BE20](v92);
  v87 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v81 = &v74 - v17;
  v18 = type metadata accessor for PromptView(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA118, &qword_26EF448B8);
  v22 = v21 - 8;
  v23 = MEMORY[0x28223BE20](v21);
  v98 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v74 - v25;
  *v26 = sub_26EF39F5C();
  *(v26 + 1) = 0x402E000000000000;
  v26[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA050, &unk_26EF446F8);
  sub_26EF28174(a1, &v26[*(v27 + 44)]);
  *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA0F8, &qword_26EF44898) + 36)] = xmmword_26EF445E0;
  v28 = sub_26EF3A3DC();
  sub_26EF3962C();
  v29 = &v26[*(v22 + 44)];
  *v29 = v28;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  v34 = sub_26EE17094();
  v35._object = 0xEB0000000045554ELL;
  v36 = v34 & 1;
  v35._countAndFlagsBits = 0x49544E4F435F4256;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v35, v36, 0);
  sub_26EF279C4(a1, &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v38 = swift_allocObject();
  sub_26EF27A2C(&v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37);
  CGSizeMake();
  v78 = v39;
  v76 = v40;
  v77 = v41;
  v75 = v42;
  v43 = sub_26EE17094();
  v44._object = 0x800000026EF47440;
  v45 = v43 & 1;
  v44._countAndFlagsBits = 0xD000000000000013;
  v99 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v44, v45, 0);
  sub_26EF279C4(a1, &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = swift_allocObject();
  v47 = sub_26EF27A2C(&v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v46 + v37);
  sub_26EE12538(v47, v48, v49);
  sub_26EF3AB7C();
  v50 = v82;
  sub_26EF39B3C();
  v51 = sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080, MEMORY[0x277CDF028]);
  v52 = v79;
  v53 = v83;
  sub_26EF3A77C();
  (*(v88 + 8))(v50, v91);
  (*(v84 + 8))(v10, v53);
  v99._countAndFlagsBits = v53;
  v99._object = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v80;
  v56 = v85;
  sub_26EF3A88C();
  (*(v86 + 8))(v52, v56);
  v57 = v94;
  sub_26EF396BC();
  v99._countAndFlagsBits = v56;
  v99._object = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26EF31BEC(&qword_2806C9820, MEMORY[0x277CE7708], MEMORY[0x277CE76F8]);
  v58 = v81;
  v59 = v90;
  v60 = v95;
  sub_26EF3A66C();
  (*(v96 + 8))(v57, v60);
  (*(v93 + 8))(v55, v59);
  v61 = v98;
  sub_26EE13B88(v26, v98, &qword_2806CA118, &qword_26EF448B8);
  v62 = v89;
  v63 = *(v89 + 16);
  v64 = v87;
  v65 = v92;
  v63(v87, v58, v92);
  v66 = v61;
  v67 = v97;
  sub_26EE13B88(v66, v97, &qword_2806CA118, &qword_26EF448B8);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA120, &qword_26EF448C0);
  v69 = (v67 + *(v68 + 48));
  v70 = v76;
  *v69 = v78;
  v69[1] = v70;
  v71 = v75;
  v69[2] = v77;
  v69[3] = v71;
  v63((v67 + *(v68 + 64)), v64, v65);
  v72 = *(v62 + 8);

  v72(v58, v65);
  sub_26EE14578(v26, &qword_2806CA118, &qword_26EF448B8);
  v72(v64, v65);

  return sub_26EE14578(v98, &qword_2806CA118, &qword_26EF448B8);
}

uint64_t sub_26EF2B974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PromptView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA0F8, &qword_26EF44898);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  *v13 = sub_26EF39F5C();
  *(v13 + 1) = 0x402E000000000000;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA050, &unk_26EF446F8);
  sub_26EF28174(a1, &v13[*(v14 + 44)]);
  *&v13[*(v8 + 44)] = xmmword_26EF445E0;
  sub_26EF279C4(a1, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_26EF27A2C(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  CGSizeMake();
  v18 = v17;
  v20 = v19;
  LOBYTE(v15) = sub_26EF2E430();
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v15 & 1;
  sub_26EE13B88(v13, v11, &qword_2806CA0F8, &qword_26EF44898);
  sub_26EE13B88(v11, a2, &qword_2806CA0F8, &qword_26EF44898);
  v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA100, &qword_26EF448A0) + 48));
  *v23 = v18;
  v23[1] = v20;
  v23[2] = KeyPath;
  v23[3] = sub_26EE673E4;
  v23[4] = v22;

  sub_26EE14578(v13, &qword_2806CA0F8, &qword_26EF44898);

  return sub_26EE14578(v11, &qword_2806CA0F8, &qword_26EF44898);
}

double sub_26EF2BC34(uint64_t a1)
{
  v1 = sub_26EF3A42C();
  if (v1 == sub_26EF3A42C())
  {
    sub_26EF29C3C();
  }

  v2 = sub_26EF3A42C();
  if (v2 == sub_26EF3A42C())
  {
    return sub_26EF2A0DC();
  }

  return result;
}

uint64_t sub_26EF2BC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA150, &qword_26EF448F0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = (&v41 - v10);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83C0, &qword_26EF40210);
  MEMORY[0x28223BE20](v44);
  v12 = &v41 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA158, &qword_26EF448F8);
  v47 = *(v49 - 8);
  v13 = MEMORY[0x28223BE20](v49);
  v46 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = sub_26EF39F5C();
  v52 = 0;
  v48 = a2;
  sub_26EF2C79C(a1, a2, v56);
  memcpy(v54, v56, sizeof(v54));
  memcpy(v55, v56, sizeof(v55));
  sub_26EE13B88(v54, v50, &qword_2806CA160, &qword_26EF44900);
  sub_26EE14578(v55, &qword_2806CA160, &qword_26EF44900);
  memcpy(&v51[7], v54, 0x128uLL);
  v18 = v52;
  LOBYTE(a1) = sub_26EF3A3CC();
  sub_26EF3962C();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v53 = 0;
  v50[0] = v17;
  v50[1] = 0x4024000000000000;
  LOBYTE(v50[2]) = v18;
  memcpy(&v50[2] + 1, v51, 0x12FuLL);
  LOBYTE(v50[40]) = a1;
  v50[41] = v20;
  v50[42] = v22;
  v50[43] = v24;
  v50[44] = v26;
  LOBYTE(v50[45]) = 0;
  v27 = *MEMORY[0x277CDF9A8];
  v28 = sub_26EF39A3C();
  (*(*(v28 - 8) + 104))(v12, v27, v28);
  sub_26EF31BEC(&qword_2806C83D0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_26EF3B0AC();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA168, &qword_26EF44908);
    sub_26EF31CE8();
    v42 = v9;
    v43 = a3;
    sub_26EE154C8(&qword_2806C83D8, &qword_2806C83C0, &qword_26EF40210, MEMORY[0x277D84470]);
    v41 = v16;
    sub_26EF3A73C();
    sub_26EE14578(v12, &qword_2806C83C0, &qword_26EF40210);
    memcpy(v56, v50, 0x169uLL);
    sub_26EE14578(v56, &qword_2806CA168, &qword_26EF44908);
    v30 = sub_26EF39E4C();
    v31 = v45;
    *v45 = v30;
    *(v31 + 8) = 0;
    *(v31 + 16) = 1;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA188, &qword_26EF44918);
    sub_26EF2D730(v48, v31 + *(v32 + 44));
    v34 = v46;
    v33 = v47;
    v35 = *(v47 + 16);
    v36 = v49;
    v35(v46, v16, v49);
    v37 = v42;
    sub_26EE13B88(v31, v42, &qword_2806CA150, &qword_26EF448F0);
    v38 = v43;
    v35(v43, v34, v36);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA190, &qword_26EF44920);
    sub_26EE13B88(v37, &v38[*(v39 + 48)], &qword_2806CA150, &qword_26EF448F0);
    sub_26EE14578(v31, &qword_2806CA150, &qword_26EF448F0);
    v40 = *(v33 + 8);
    v40(v41, v36);
    sub_26EE14578(v37, &qword_2806CA150, &qword_26EF448F0);
    return (v40)(v34, v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_26EF2C1CC(uint64_t a1)
{
  type metadata accessor for PromptView(0);
  v1 = sub_26EF3A42C();
  if (v1 == sub_26EF3A42C())
  {
    sub_26EF29C3C();
  }

  v2 = sub_26EF3A42C();
  if (v2 == sub_26EF3A42C())
  {
    return sub_26EF2A0DC();
  }

  return result;
}

unint64_t sub_26EF2C278()
{
  result = qword_2806CA030;
  if (!qword_2806CA030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806CA008, &qword_26EF44690);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806CA000, &qword_26EF44688);
    sub_26EE154C8(&qword_2806CA020, &qword_2806CA000, &qword_26EF44688, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    sub_26EE154C8(&qword_2806CA038, &qword_2806CA028, &qword_26EF446E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CA030);
  }

  return result;
}

uint64_t sub_26EF2C3B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA058, &qword_26EF44708);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF2C4B4@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = sub_26EF39E4C();
  v6 = *(v4 + 32);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = sub_26EF0F32C();

    [v9 isSpeaking];
    v10 = sub_26EF3AA8C();
    v11 = v8;
    v12 = sub_26EF0F32C();

    LOBYTE(v11) = [v12 isSpeaking];
    v13 = sub_26EE17094() & 1;
    if (v11)
    {
      v14 = 0x504F54535F4256;
      v15 = 0xE700000000000000;
    }

    else
    {
      v14 = 0x49564552505F4256;
      v15 = 0xEA00000000005745;
    }

    v16 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(*&v14, v13, 0);
    sub_26EE12538(v16._countAndFlagsBits, v16._object, v17);
    v18 = sub_26EF3A5DC();
    v20 = v19;
    v22 = v21;
    v24 = v23 & 1;
    v26 = v23 & 1;

    sub_26EE13B20(v18, v20, v24);

    sub_26EE12ABC(v18, v20, v24);

    *a2 = v7;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    *(a2 + 24) = v10;
    *(a2 + 32) = v18;
    *(a2 + 40) = v20;
    *(a2 + 48) = v26;
    *(a2 + 56) = v22;
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

unint64_t sub_26EF2C6E4()
{
  result = qword_2806CA078;
  if (!qword_2806CA078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806CA070, &qword_26EF44718);
    sub_26EE154C8(&qword_2806CA080, &qword_2806CA058, &qword_26EF44708, &unk_26EF40D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CA078);
  }

  return result;
}

uint64_t sub_26EF2C79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v78 = a2;
  v79 = a3;
  v4 = type metadata accessor for PromptView(0);
  v84 = *(v4 - 8);
  v83 = *(v84 + 64);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  KeyPath = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v77 = &v68 - v7;
  v73 = sub_26EF3925C();
  v8 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FF0, &qword_26EF44678);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v72 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v68 - v15;
  v80 = *(v12 + 16);
  v82 = v12 + 16;
  v80(&v68 - v15, a1, v11);
  sub_26EF3AD9C();
  v17 = *(v12 + 8);
  v81 = v12 + 8;
  v17(v16, v11);
  v18 = *&v129[0];
  v19 = v73;
  (*(v8 + 16))(v10, *&v129[0] + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationExperience, v73);

  v76 = sub_26EF3923C();
  (*(v8 + 8))(v10, v19);
  v69 = v16;
  v75 = a1;
  v20 = v80;
  v80(v16, a1, v11);
  v21 = v72;
  sub_26EF3ADAC();
  v17(v16, v11);
  swift_getKeyPath();
  sub_26EF3ADCC();

  v22 = v21;
  v23 = v17;
  v74 = v17;
  v17(v22, v11);
  v72 = v132;
  v73 = v131;
  v71 = v133;
  v70 = v134;
  v24 = v69;
  v20(v69, a1, v11);
  sub_26EF3AD9C();
  v25 = v24;
  v23(v24, v11);
  v26 = *&v129[0];
  v27 = sub_26EED785C();
  LOBYTE(v16) = v28;

  if (v16)
  {
    v29 = 0;
  }

  else
  {
    v29 = v27;
  }

  v30 = v77;
  v31 = v78;
  sub_26EF279C4(v78, v77);
  v32 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v33 = swift_allocObject();
  sub_26EF27A2C(v30, v33 + v32);
  v34 = v31;
  v35 = KeyPath;
  sub_26EF279C4(v34, KeyPath);
  v36 = swift_allocObject();
  sub_26EF27A2C(v35, v36 + v32);
  sub_26EE24A0C(v76, v73, v72, v71, v70, v29, sub_26EF31E88, v33, &v87, sub_26EF31EA0, v36);
  *&v129[0] = sub_26EF2CFE4();
  *(&v129[0] + 1) = v37;
  sub_26EE12538(*&v129[0], v37, v38);
  v39 = sub_26EF3A5DC();
  v41 = v40;
  v43 = v42;
  v83 = v44;
  v77 = sub_26EF3A4DC();
  KeyPath = swift_getKeyPath();
  LOBYTE(v129[0]) = v43 & 1;
  LOBYTE(v32) = v43 & 1;
  LODWORD(v76) = v43 & 1;
  LODWORD(v84) = sub_26EF3A1DC();
  v80(v25, v75, v11);
  sub_26EF3AD9C();
  v74(v25, v11);
  v45 = *&v129[0];
  v46 = VoiceBankingSession.indexOfCurrentSample.getter();
  v75 = v46;
  LOBYTE(v36) = v47;

  LODWORD(v82) = v36 & 1;
  v48 = sub_26EEB10D4();
  v81 = v49;
  LODWORD(v80) = sub_26EF3A3CC();
  sub_26EF3962C();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  LOBYTE(v129[0]) = 0;
  v58 = sub_26EF2D2EC();
  v78 = swift_getKeyPath();
  v59 = swift_allocObject();
  v61 = v91;
  v60 = v92;
  v95[4] = v91;
  v95[5] = v92;
  v62 = v93;
  v95[6] = v93;
  v95[0] = v87;
  v95[1] = v88;
  v95[2] = v89;
  v95[3] = v90;
  v86[2] = v89;
  v86[3] = v90;
  v86[0] = v87;
  v86[1] = v88;
  *(v59 + 16) = v58 & 1;
  v96 = v94;
  *&v86[7] = v94;
  v86[5] = v60;
  v86[6] = v62;
  v86[4] = v61;
  *&v97 = v39;
  *(&v97 + 1) = v41;
  LOBYTE(v98) = v32;
  *(&v98 + 1) = v83;
  LOWORD(v99) = 1;
  *(&v99 + 1) = KeyPath;
  v63 = v77;
  *&v100 = v77;
  DWORD2(v100) = v84;
  *&v101 = 0;
  *(&v101 + 1) = v46;
  v102 = v82;
  BYTE8(v86[12]) = v82;
  *(&v86[7] + 8) = v97;
  *(&v86[9] + 8) = v99;
  *(&v86[10] + 8) = v100;
  *(&v86[11] + 8) = v101;
  *(&v86[8] + 8) = v98;
  v64 = v48;
  *&v103 = v48;
  v65 = v81;
  *(&v103 + 1) = v81;
  LOBYTE(v45) = v80;
  LOBYTE(v104) = v80;
  *(&v104 + 1) = v51;
  *&v105 = v53;
  *(&v105 + 1) = v55;
  *&v106 = v57;
  BYTE8(v106) = 0;
  v66 = v78;
  *&v107 = v78;
  *(&v107 + 1) = sub_26EE673E4;
  v108 = v59;
  v86[13] = v103;
  v86[14] = v104;
  *&v86[18] = v59;
  v86[16] = v106;
  v86[17] = v107;
  v86[15] = v105;
  memcpy(v79, v86, 0x128uLL);
  v109[0] = v64;
  v109[1] = v65;
  v110 = v45;
  v111 = v51;
  v112 = v53;
  v113 = v55;
  v114 = v57;
  v115 = 0;
  v116 = v66;
  v117 = sub_26EE673E4;
  v118 = v59;
  sub_26EE25C0C(v95, v129);
  sub_26EE13B88(&v97, v129, &qword_2806CA1B0, &qword_26EF44978);
  sub_26EE13B88(&v103, v129, &qword_2806CA1B8, &unk_26EF44980);
  sub_26EE14578(v109, &qword_2806CA1B8, &unk_26EF44980);
  v119[0] = v39;
  v119[1] = v41;
  v120 = v76;
  v121 = v83;
  v122 = 1;
  v123 = KeyPath;
  v124 = v63;
  v125 = v84;
  v126 = 0;
  v127 = v75;
  v128 = v82;
  sub_26EE14578(v119, &qword_2806CA1B0, &qword_26EF44978);
  v129[4] = v91;
  v129[5] = v92;
  v129[6] = v93;
  v130 = v94;
  v129[0] = v87;
  v129[1] = v88;
  v129[2] = v89;
  v129[3] = v90;
  return sub_26EF31F2C(v129);
}

uint64_t sub_26EF2CFE4()
{
  v1 = sub_26EF39DDC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  if (v6 == 1)
  {
    v7 = v5;
  }

  else
  {

    sub_26EF3B46C();
    v8 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v5, 0);
    (*(v2 + 8))(v4, v1);
    v7 = v26;
  }

  v9 = VoiceBankingSession.indexOfCurrentSample.getter();
  v11 = v10;

  if (v11)
  {
    return 0;
  }

  v13 = sub_26EE17094();
  v14._object = 0xEF5446454C5F5345;
  v15 = v13 & 1;
  v14._countAndFlagsBits = 0x53415248505F4256;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v14, v15, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  result = swift_allocObject();
  *(result + 16) = xmmword_26EF3D070;
  v16 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    v17 = result;
    v18 = MEMORY[0x277D83B88];
    v19 = MEMORY[0x277D83C10];
    *(result + 56) = MEMORY[0x277D83B88];
    *(result + 64) = v19;
    *(result + 32) = v16;
    if (v6)
    {
      v20 = v5;
    }

    else
    {

      sub_26EF3B46C();
      v21 = v18;
      v22 = sub_26EF3A36C();
      sub_26EF3880C();

      v18 = v21;
      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v5, 0);
      (*(v2 + 8))(v4, v1);
      v20 = v26;
    }

    v23 = VoiceBankingSession.minimumPhraseCount.getter();

    v17[12] = v18;
    v17[13] = MEMORY[0x277D83C10];
    v17[9] = v23;
    v24 = sub_26EF3B0CC();

    return v24;
  }

  return result;
}

uint64_t sub_26EF2D2EC()
{
  v1 = v0;
  v2 = sub_26EF38C2C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v33[-v7];
  v9 = sub_26EF39DDC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *v0;
  v34 = *(v0 + 8);
  if (v34 == 1)
  {
    v14 = v13;
  }

  else
  {

    sub_26EF3B46C();
    v15 = sub_26EF3A36C();
    v35 = v13;
    v16 = v2;
    v17 = v9;
    v18 = v15;
    sub_26EF3880C();

    v9 = v17;
    v2 = v16;
    v1 = v0;
    v13 = v35;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v13, 0);
    (*(v10 + 8))(v12, v9);
    v14 = v38;
  }

  VoiceBankingSession.sampleState.getter(&v38);

  v37 = v38;
  v36 = 0;
  sub_26EEF21B0(v19, v20, v21);
  if ((sub_26EF3B0AC() & 1) == 0)
  {
    if (v34)
    {
      v22 = v13;
    }

    else
    {

      sub_26EF3B46C();
      v23 = sub_26EF3A36C();
      v35 = v13;
      v24 = v10;
      v25 = v9;
      v26 = v23;
      sub_26EF3880C();

      sub_26EF39DCC();
      v27 = v35;
      swift_getAtKeyPath();
      sub_26EE05C9C(v27, 0);
      (*(v24 + 8))(v12, v25);
      v22 = v38;
    }

    VoiceBankingSession.sampleState.getter(&v38);

    v37 = 4;
    if (!static SampleState.== infix(_:_:)(&v38, &v37) && (sub_26EF26F04() & 1) == 0)
    {
      v30 = 1;
      return v30 & 1;
    }
  }

  v28 = *(v1 + 32);
  if (v28)
  {
    v29 = v28;
    sub_26EF0F97C();

    (*(v3 + 104))(v6, *MEMORY[0x277D705A0], v2);
    v30 = sub_26EF38C1C();
    v31 = *(v3 + 8);
    v31(v6, v2);
    v31(v8, v2);
    return v30 & 1;
  }

  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  result = sub_26EF39BFC();
  __break(1u);
  return result;
}

uint64_t sub_26EF2D730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v80 = a2;
  v70 = sub_26EF39DDC();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA198, &qword_26EF44928);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v79 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v78 = &v63 - v7;
  v89 = sub_26EF398FC();
  v86 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v83 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PromptView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v82 = v11;
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  v87 = *(v13 - 8);
  v88 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA1A0, &qword_26EF44930);
  v74 = *(v16 - 8);
  v75 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v77 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v85 = &v63 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v84 = &v63 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v63 - v23;
  sub_26EF39EAC();
  sub_26EF279C4(a1, v12);
  v25 = *(v10 + 80);
  v26 = (v25 + 16) & ~v25;
  v27 = swift_allocObject();
  sub_26EF27A2C(v12, v27 + v26);
  v71 = v15;
  sub_26EF3AB6C();
  v28 = v83;
  sub_26EF398EC();
  sub_26EF3994C();
  v81 = sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080, MEMORY[0x277CDF028]);
  v76 = v24;
  v29 = v86;
  v30 = v88;
  sub_26EF3A76C();
  v31 = *(v29 + 8);
  v64 = v31;
  v31(v28, v89);
  v32 = v87 + 8;
  v72 = *(v87 + 8);
  v72(v15, v30);
  v33 = sub_26EF39EAC();
  v86 = v34;
  v87 = v33;
  v35 = v73;
  sub_26EF279C4(v73, v12);
  v65 = v25;
  v36 = swift_allocObject();
  v66 = v26;
  v67 = v12;
  sub_26EF27A2C(v12, v36 + v26);
  v37 = v71;
  v38 = v35;
  sub_26EF3AB6C();
  sub_26EF398BC();
  sub_26EF3994C();
  v39 = v88;
  sub_26EF3A76C();
  v40 = v28;
  v41 = v37;
  v86 = v29 + 8;
  v31(v40, v89);
  v42 = v72;
  v87 = v32;
  v72(v37, v39);
  v43 = *v38;
  if (*(v38 + 8) == 1)
  {
    v44 = v43;
  }

  else
  {

    sub_26EF3B46C();
    v45 = sub_26EF3A36C();
    sub_26EF3880C();

    v46 = v68;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v43, 0);
    (*(v69 + 8))(v46, v70);
    v44 = v92;
  }

  VoiceBankingSession.sampleState.getter(&v91);

  v90 = 4;
  v47 = static SampleState.== infix(_:_:)(&v91, &v90);
  v48 = v85;
  if (v47 || (sub_26EF26F04()) && (sub_26EF2A5D4())
  {
    sub_26EF39EAC();
    v49 = v67;
    sub_26EF279C4(v38, v67);
    v50 = v66;
    v51 = swift_allocObject();
    sub_26EF27A2C(v49, v51 + v50);
    sub_26EF3AB6C();
    v52 = v83;
    sub_26EF398CC();
    sub_26EF3994C();
    v53 = v88;
    sub_26EF3A76C();
    v64(v52, v89);
    v42(v41, v53);
    v54 = v78;
    sub_26EE14D98(v48, v78, &qword_2806CA1A0, &qword_26EF44930);
    v55 = 0;
  }

  else
  {
    v55 = 1;
    v54 = v78;
  }

  (*(v74 + 56))(v54, v55, 1, v75);
  v56 = v76;
  sub_26EE13B88(v76, v48, &qword_2806CA1A0, &qword_26EF44930);
  v57 = v84;
  v58 = v77;
  sub_26EE13B88(v84, v77, &qword_2806CA1A0, &qword_26EF44930);
  v59 = v79;
  sub_26EE13B88(v54, v79, &qword_2806CA198, &qword_26EF44928);
  v60 = v80;
  sub_26EE13B88(v48, v80, &qword_2806CA1A0, &qword_26EF44930);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA1A8, &qword_26EF44938);
  sub_26EE13B88(v58, v60 + *(v61 + 48), &qword_2806CA1A0, &qword_26EF44930);
  sub_26EE13B88(v59, v60 + *(v61 + 64), &qword_2806CA198, &qword_26EF44928);
  sub_26EE14578(v54, &qword_2806CA198, &qword_26EF44928);
  sub_26EE14578(v57, &qword_2806CA1A0, &qword_26EF44930);
  sub_26EE14578(v56, &qword_2806CA1A0, &qword_26EF44930);
  sub_26EE14578(v59, &qword_2806CA198, &qword_26EF44928);
  sub_26EE14578(v58, &qword_2806CA1A0, &qword_26EF44930);
  return sub_26EE14578(v85, &qword_2806CA1A0, &qword_26EF44930);
}

uint64_t sub_26EF2E0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26EF3B2DC();
  v4[3] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26EF2E138, v6, v5);
}

uint64_t sub_26EF2E138()
{
  v1 = *(v0[2] + 32);
  v0[6] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_26EEFC5A8;

    return sub_26EF1AC40();
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);

    return sub_26EF39BFC();
  }
}

double sub_26EF2E25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PromptView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_26EF3B30C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_26EF279C4(a1, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26EF3B2DC();
  v12 = sub_26EF3B2CC();
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_26EF27A2C(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_26EE2C388(0, 0, v10, a3, v14);

  return result;
}

uint64_t sub_26EF2E430()
{
  v1 = v0;
  v2 = sub_26EF39DDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  if (v6)
  {
    v7 = v6;
    v8 = sub_26EF100DC();

    if (v8)
    {
      return 1;
    }

    else
    {
      v10 = *v1;
      if (*(v1 + 8) == 1)
      {
        v11 = v10;
      }

      else
      {

        sub_26EF3B46C();
        v12 = sub_26EF3A36C();
        sub_26EF3880C();

        sub_26EF39DCC();
        swift_getAtKeyPath();
        sub_26EE05C9C(v10, 0);
        (*(v3 + 8))(v5, v2);
        v11 = v15;
      }

      VoiceBankingSession.sampleState.getter(&v14 + 7);

      BYTE6(v14) = 1;
      return static SampleState.== infix(_:_:)(&v14 + 7, &v14 + 6);
    }
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EF2E62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100);
  v5[6] = swift_task_alloc();
  v6 = sub_26EF39DDC();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_26EF3883C();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  v5[14] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[15] = sub_26EF3B2CC();
  v9 = sub_26EF3B29C();
  v5[16] = v9;
  v5[17] = v8;

  return MEMORY[0x2822009F8](sub_26EF2E7F8, v9, v8);
}

uint64_t sub_26EF2E7F8()
{
  v1 = *(*(v0 + 32) + 32);
  *(v0 + 144) = v1;
  if (v1)
  {
    v2 = *(v0 + 112);
    v3 = v1;
    sub_26EF0F034();

    v4 = sub_26EF38FEC();
    v5 = (*(*(v4 - 8) + 48))(v2, 1, v4);
    sub_26EE14578(v2, &qword_2806C9B70, &qword_26EF43F10);
    if (v5 == 1)
    {
      *(v0 + 144);
      v6 = swift_task_alloc();
      *(v0 + 200) = v6;
      *v6 = v0;
      v6[1] = sub_26EF2ECBC;

      return sub_26EF12AE4();
    }

    else
    {
      v8 = *(v0 + 104);
      v9 = *(v0 + 80);
      v10 = *(v0 + 88);
      v11 = sub_26EE27DAC();
      *(v0 + 152) = v11;
      v12 = *(v10 + 16);
      *(v0 + 160) = v12;
      *(v0 + 168) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v12(v8, v11, v9);
      v13 = sub_26EF3881C();
      v14 = sub_26EF3B47C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_26EE01000, v13, v14, "PromptView: Attempting to save unsaved recording result.", v15, 2u);
        MEMORY[0x2743842A0](v15, -1, -1);
      }

      v16 = *(v0 + 104);
      v17 = *(v0 + 80);
      v18 = *(v0 + 88);

      v19 = *(v18 + 8);
      *(v0 + 176) = v19;
      v19(v16, v17);
      v3;
      v20 = swift_task_alloc();
      *(v0 + 184) = v20;
      *v20 = v0;
      v20[1] = sub_26EF2EAFC;

      return sub_26EF16730();
    }
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EF2EAFC()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_26EF2F01C;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_26EF2EC18;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26EF2EC18()
{
  *(v0 + 144);
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_26EF2ECBC;

  return sub_26EF12AE4();
}

uint64_t sub_26EF2ECBC()
{
  v1 = *v0;
  v2 = *(*v0 + 144);

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_26EF2EDFC, v4, v3);
}

unint64_t sub_26EF2EDFC()
{
  v1 = v0[4];

  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = v2;
    v4 = v3;
  }

  else
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[7];

    sub_26EF3B46C();
    v8 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    v9 = *(v6 + 8);
    v9(v5, v7);
    v4 = v0[2];

    sub_26EF3B46C();
    v10 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    v9(v5, v7);
    v3 = v0[3];
  }

  v11 = v0[5];
  result = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    v13 = v0[6];
    sub_26EED768C(result, v13);

    sub_26EED6AEC(v13);

    v14 = v0[1];

    return v14();
  }

  return result;
}

uint64_t sub_26EF2F01C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);

  v1(v3, v2, v4);
  v5 = sub_26EF3881C();
  v6 = sub_26EF3B45C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 192);
  v9 = *(v0 + 176);
  v10 = *(v0 + 96);
  v11 = *(v0 + 80);
  if (v7)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26EE01000, v5, v6, "PromptView: Failed to save recording.", v12, 2u);
    MEMORY[0x2743842A0](v12, -1, -1);
  }

  v9(v10, v11);
  *(v0 + 144);
  v13 = swift_task_alloc();
  *(v0 + 200) = v13;
  *v13 = v0;
  v13[1] = sub_26EF2ECBC;

  return sub_26EF12AE4();
}

uint64_t sub_26EF2F19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_26EF38BEC();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100);
  v5[15] = swift_task_alloc();
  v7 = sub_26EF39DDC();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v8 = sub_26EF3883C();
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  v5[23] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[24] = sub_26EF3B2CC();
  v10 = sub_26EF3B29C();
  v5[25] = v10;
  v5[26] = v9;

  return MEMORY[0x2822009F8](sub_26EF2F3D0, v10, v9);
}

uint64_t sub_26EF2F3D0()
{
  v1 = *(*(v0 + 72) + 32);
  *(v0 + 216) = v1;
  if (v1)
  {
    v2 = *(v0 + 184);
    v3 = v1;
    sub_26EF0F034();

    v4 = sub_26EF38FEC();
    v5 = (*(*(v4 - 8) + 48))(v2, 1, v4);
    sub_26EE14578(v2, &qword_2806C9B70, &qword_26EF43F10);
    if (v5 == 1)
    {
      *(v0 + 216);
      v6 = swift_task_alloc();
      *(v0 + 272) = v6;
      *v6 = v0;
      v6[1] = sub_26EF2F894;

      return sub_26EF12AE4();
    }

    else
    {
      v8 = *(v0 + 176);
      v9 = *(v0 + 152);
      v10 = *(v0 + 160);
      v11 = sub_26EE27DAC();
      *(v0 + 224) = v11;
      v12 = *(v10 + 16);
      *(v0 + 232) = v12;
      *(v0 + 240) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v12(v8, v11, v9);
      v13 = sub_26EF3881C();
      v14 = sub_26EF3B47C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_26EE01000, v13, v14, "PromptView: Attempting to save unsaved recording result.", v15, 2u);
        MEMORY[0x2743842A0](v15, -1, -1);
      }

      v16 = *(v0 + 176);
      v17 = *(v0 + 152);
      v18 = *(v0 + 160);

      v19 = *(v18 + 8);
      *(v0 + 248) = v19;
      v19(v16, v17);
      v3;
      v20 = swift_task_alloc();
      *(v0 + 256) = v20;
      *v20 = v0;
      v20[1] = sub_26EF2F6D4;

      return sub_26EF16730();
    }
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EF2F6D4()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_26EF2FEDC;
  }

  else
  {

    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_26EF2F7F0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26EF2F7F0()
{
  *(v0 + 216);
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_26EF2F894;

  return sub_26EF12AE4();
}

uint64_t sub_26EF2F894()
{
  v1 = *v0;
  v2 = *(*v0 + 216);

  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_26EF2F9D4, v4, v3);
}

unint64_t sub_26EF2F9D4()
{
  v1 = v0[9];

  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 == 1)
  {
    v4 = v2;
    v5 = VoiceBankingSession.nextSampleHasRecording.getter();

    if (v5)
    {
      v6 = v4;
      v7 = v6;
LABEL_6:
      v19 = v0[10];
      result = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return result;
      }

      v21 = v0[15];
      sub_26EED768C(result, v21);

      sub_26EED6AEC(v21);
      goto LABEL_15;
    }

    v22 = v4;
  }

  else
  {
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[16];

    sub_26EF3B46C();
    v11 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    v12 = *(v9 + 8);
    v12(v8, v10);
    v13 = v0[2];
    v14 = VoiceBankingSession.nextSampleHasRecording.getter();

    v15 = v0[18];
    v16 = v0[16];
    if (v14)
    {

      sub_26EF3B46C();
      v17 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v2, 0);
      v12(v15, v16);
      v7 = v0[7];

      sub_26EF3B46C();
      v18 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v2, 0);
      v12(v15, v16);
      v6 = v0[8];
      goto LABEL_6;
    }

    sub_26EF3B46C();
    v23 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    v12(v15, v16);
    v22 = v0[3];
  }

  v24 = v0[27];
  v26 = v0[13];
  v25 = v0[14];
  v27 = v0[11];
  v28 = v0[12];
  sub_26EED7058();

  v29 = v24;
  sub_26EF10340();

  (*(v28 + 104))(v26, *MEMORY[0x277D70578], v27);
  sub_26EF31BEC(&qword_2806C8B90, MEMORY[0x277D70580], MEMORY[0x277D70590]);
  sub_26EF3B1DC();
  sub_26EF3B1DC();
  v30 = *(v28 + 8);
  v30(v26, v27);
  v30(v25, v27);
  if (v0[4] == v0[5])
  {
    if (v3)
    {
      v7 = v2;
    }

    else
    {
      v32 = v0[17];
      v31 = v0[18];
      v33 = v0[16];

      sub_26EF3B46C();
      v34 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v2, 0);
      (*(v32 + 8))(v31, v33);
      v7 = v0[6];
    }

    VoiceBankingSession.isRecordingComplete.getter();
LABEL_15:
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_26EF2FEDC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);

  v1(v3, v2, v4);
  v5 = sub_26EF3881C();
  v6 = sub_26EF3B45C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 264);
  v9 = *(v0 + 248);
  v10 = *(v0 + 168);
  v11 = *(v0 + 152);
  if (v7)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26EE01000, v5, v6, "PromptView: Failed to save recording.", v12, 2u);
    MEMORY[0x2743842A0](v12, -1, -1);
  }

  v9(v10, v11);
  *(v0 + 216);
  v13 = swift_task_alloc();
  *(v0 + 272) = v13;
  *v13 = v0;
  v13[1] = sub_26EF2F894;

  return sub_26EF12AE4();
}

uint64_t sub_26EF3005C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_26EF3917C();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_26EF38E9C();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_26EF39DDC();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = sub_26EF3883C();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  sub_26EF3B2DC();
  v4[20] = sub_26EF3B2CC();
  v10 = sub_26EF3B29C();
  v4[21] = v10;
  v4[22] = v9;

  return MEMORY[0x2822009F8](sub_26EF30270, v10, v9);
}

uint64_t sub_26EF30270()
{
  v1 = *(v0[6] + 32);
  v0[23] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_26EF0F498();

    if (v3)
    {
      v4 = v0[19];
      v5 = v0[16];
      v6 = v0[17];
      v7 = sub_26EE27DAC();
      (*(v6 + 16))(v4, v7, v5);
      v8 = sub_26EF3881C();
      v9 = sub_26EF3B43C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_26EE01000, v8, v9, "PromptView: Recording state changed: user stopped recording.", v10, 2u);
        MEMORY[0x2743842A0](v10, -1, -1);
      }

      v11 = v0[19];
      v12 = v0[16];
      v13 = v0[17];

      (*(v13 + 8))(v11, v12);
      v2;
      v14 = swift_task_alloc();
      v0[24] = v14;
      *v14 = v0;
      v15 = sub_26EF304CC;
    }

    else
    {
      v2;
      v14 = swift_task_alloc();
      v0[25] = v14;
      *v14 = v0;
      v15 = sub_26EF30860;
    }

    v14[1] = v15;

    return sub_26EF12AE4();
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EF304CC()
{
  v1 = *v0;
  v2 = *(*v0 + 184);

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_26EF3060C, v4, v3);
}

uint64_t sub_26EF3060C()
{
  v1 = *(v0 + 48);

  type metadata accessor for PromptView(0);
  *(v0 + 216) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FE0, &unk_26EF44658);
  sub_26EF3A20C();
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = v2;
  }

  else
  {
    v5 = *(v0 + 112);
    v4 = *(v0 + 120);
    v6 = *(v0 + 104);

    sub_26EF3B46C();
    v7 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v5 + 8))(v4, v6);
    v3 = *(v0 + 40);
  }

  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_sample;
  swift_beginAccess();
  if ((*(v9 + 48))(&v3[v10], 1, v8))
  {
  }

  else
  {
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 80);
    (*(v12 + 16))(v11, &v3[v10], v13);

    v14 = sub_26EF38E6C();
    v16 = v15;
    (*(v12 + 8))(v11, v13);
    sub_26EE82F2C(v14, v16);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_26EF30860()
{
  v1 = *v0;
  v2 = *(*v0 + 184);

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_26EF309A0, v4, v3);
}

uint64_t sub_26EF309A0()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 184);
  sub_26EF17564();

  v5 = sub_26EE27DAC();
  (*(v2 + 16))(v1, v5, v3);
  v6 = sub_26EF3881C();
  v7 = sub_26EF3B43C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26EE01000, v6, v7, "PromptView: Recording state changed: user is recording audio.", v8, 2u);
    MEMORY[0x2743842A0](v8, -1, -1);
  }

  v9 = *(v0 + 184);
  v11 = *(v0 + 136);
  v10 = *(v0 + 144);
  v12 = *(v0 + 128);
  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  v15 = *(v0 + 56);

  (*(v11 + 8))(v10, v12);
  v16 = v9;
  sub_26EF0F4AC(1);

  (*(v14 + 104))(v13, *MEMORY[0x277D70630], v15);
  v16;
  v17 = swift_task_alloc();
  *(v0 + 208) = v17;
  *v17 = v0;
  v17[1] = sub_26EF30B6C;
  v18 = *(v0 + 72);

  return sub_26EF13E7C(v18);
}

uint64_t sub_26EF30B6C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 176);
  v7 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_26EF30D08, v7, v6);
}

uint64_t sub_26EF30D08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EF30DA4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VoiceBankingSession(0);
  sub_26EF31BEC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  *a1 = sub_26EF3973C();
  *(a1 + 8) = v2 & 1;
  type metadata accessor for VoiceBankingNavigationModel(0);
  sub_26EF31BEC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
  *(a1 + 16) = sub_26EF39C1C();
  *(a1 + 24) = v3;
  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EF31BEC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  *(a1 + 32) = sub_26EF39C1C();
  *(a1 + 40) = v4;
  sub_26EF3AAEC();
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  v5 = type metadata accessor for PromptView(0);
  v6 = sub_26EF3A22C();
  sub_26EE8560C(v6, v7, v8);
  sub_26EF397EC();
  v9 = a1 + *(v5 + 40);
  result = sub_26EF3AAEC();
  *v9 = 0;
  *(v9 + 8) = v12;
  return result;
}

uint64_t sub_26EF30F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FE0, &unk_26EF44658);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_26EF310F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FE0, &unk_26EF44658);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26EF31234(uint64_t a1)
{
  sub_26EE1F6E4(319);
  if (v1 <= 0x3F)
  {
    sub_26EE1F73C(319);
    if (v2 <= 0x3F)
    {
      sub_26EE1F7D0(319);
      if (v3 <= 0x3F)
      {
        sub_26EE38E90();
        if (v4 <= 0x3F)
        {
          sub_26EF3131C();
          if (v5 <= 0x3F)
          {
            sub_26EE859C8(319, v5, v6);
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

void sub_26EF3131C()
{
  if (!qword_2806CA088)
  {
    v0 = sub_26EF3A23C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806CA088);
    }
  }
}

unint64_t sub_26EF31378()
{
  result = qword_2806CA090;
  if (!qword_2806CA090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806CA098, &unk_26EF447B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9F58, &qword_26EF44608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6E40, &qword_26EF44670);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9F50, &qword_26EF44600);
    sub_26EF27E64();
    swift_getOpaqueTypeConformance2();
    sub_26EE25D44();
    swift_getOpaqueTypeConformance2();
    sub_26EF31BEC(&qword_2806C6AD8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CA090);
  }

  return result;
}

uint64_t sub_26EF314EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26EF31BEC(&qword_2806C6AD8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26EF315A0()
{
  v2 = *(type metadata accessor for PromptView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EF3005C(v4, v5, v6, v0 + v3);
}

uint64_t sub_26EF31668()
{
  v2 = *(type metadata accessor for PromptView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EF2A418(v4, v5, v6, v0 + v3);
}

unint64_t sub_26EF31730()
{
  result = qword_2806CA0D8;
  if (!qword_2806CA0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806CA0D0, &qword_26EF44828);
    sub_26EE154C8(&qword_2806CA0E0, &qword_2806CA0E8, &qword_26EF44830, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CA0D8);
  }

  return result;
}

uint64_t sub_26EF317EC()
{
  v2 = *(type metadata accessor for PromptView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26EE05D7C;

  return sub_26EF2F19C(v5, v6, v7, v0 + v3, v4);
}

uint64_t objectdestroy_72Tm()
{
  v1 = type metadata accessor for PromptView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));

  v5 = v0 + v3 + *(v1 + 32);
  v6 = sub_26EF3A29C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FE0, &unk_26EF44658);

  v8 = *(v1 + 36);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_26EF31ACC()
{
  v2 = *(type metadata accessor for PromptView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26EE15538;

  return sub_26EF2E62C(v5, v6, v7, v0 + v3, v4);
}

uint64_t sub_26EF31BEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26EF31C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806CA140;
  if (!qword_2806CA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CA140);
  }

  return result;
}

unint64_t sub_26EF31CE8()
{
  result = qword_2806CA170;
  if (!qword_2806CA170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806CA168, &qword_26EF44908);
    sub_26EE154C8(&qword_2806CA178, &qword_2806CA180, &qword_26EF44910, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CA170);
  }

  return result;
}

uint64_t sub_26EF31DC0()
{
  v2 = *(type metadata accessor for PromptView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EF2E0A0(v4, v5, v6, v0 + v3);
}

uint64_t objectdestroy_48Tm_0()
{
  v1 = type metadata accessor for PromptView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));

  v5 = v0 + v3 + *(v1 + 32);
  v6 = sub_26EF3A29C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FE0, &unk_26EF44658);

  v8 = *(v1 + 36);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_19()
{
  v1 = type metadata accessor for PromptView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_26EE05C9C(*(v0 + v4), *(v0 + v4 + 8));

  v5 = v0 + v4 + *(v1 + 32);
  v6 = sub_26EF3A29C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9FE0, &unk_26EF44658);

  v8 = *(v1 + 36);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
  (*(*(v9 - 8) + 8))(v0 + v4 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

double sub_26EF32320(uint64_t a1)
{
  type metadata accessor for PromptView(0);

  return sub_26EF2BC34(a1);
}

uint64_t sub_26EF323FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26EF32444()
{
  v1 = sub_26EF3872C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _UISolariumEnabled();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8080, &unk_26EF3FC30);
  v6 = swift_allocObject();
  if (v5)
  {
    *(v6 + 16) = xmmword_26EF3EE20;
    sub_26EF386EC();
    sub_26EF386CC();
    sub_26EF3871C();
  }

  else
  {
    *(v6 + 16) = xmmword_26EF3D070;
    sub_26EF386EC();
    sub_26EF386CC();
  }

  v8[1] = v6;
  sub_26EF323FC(&qword_2806C8088, MEMORY[0x277CE7670], MEMORY[0x277CE7680]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8090, &unk_26EF3FB80);
  sub_26EE154C8(&qword_2806C8098, &qword_2806C8090, &unk_26EF3FB80, MEMORY[0x277D83970]);
  sub_26EF3B68C();
  sub_26EF3AC8C();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_26EF32680@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &countAndFlagsBits - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA1D0, &qword_26EF449A8);
  v6 = *(v5 - 8);
  v22 = v5;
  v23 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &countAndFlagsBits - v7;
  v9 = sub_26EE17094();
  v10._object = 0x800000026EF47480;
  v11 = v9 & 1;
  v10._countAndFlagsBits = 0xD000000000000015;
  countAndFlagsBits = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v10, v11, 0)._countAndFlagsBits;
  v12 = sub_26EE17094();
  v13._countAndFlagsBits = 0xD00000000000001BLL;
  v13._object = 0x800000026EF474A0;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v13, v12 & 1, 0);
  v14 = type metadata accessor for PhraseStyleView(0);
  sub_26EE13B88(v1 + *(v14 + 32), v4, &qword_2806C8018, &qword_26EF41830);
  v27 = v1;
  v26 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA1D8, &unk_26EF449B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8030, &qword_26EF3FAD0);
  sub_26EE154C8(&qword_2806CA1E0, &qword_2806CA1D8, &unk_26EF449B0, MEMORY[0x277CE14C0]);
  sub_26EE79320();
  sub_26EF386BC();
  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BC8, &unk_26EF42490);
  sub_26EE154C8(&qword_2806CA1E8, &qword_2806CA1D0, &qword_26EF449A8, MEMORY[0x277CE7668]);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BD8, &unk_26EF41860);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BE0, &qword_26EF424A0);
  v17 = sub_26EEB2104();
  v28 = v16;
  v29 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v15;
  v29 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v19 = v22;
  sub_26EF3A8EC();
  return (*(v23 + 8))(v8, v19);
}

uint64_t type metadata accessor for PhraseStyleView(uint64_t a1)
{
  result = qword_2806CF7B0;
  if (!qword_2806CF7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EF32A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA208, &qword_26EF44A48);
  v128 = *(v3 - 8);
  v129 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v126 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v131 = &v114 - v6;
  v7 = sub_26EF3A0BC();
  v123 = *(v7 - 8);
  v124 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA210, &qword_26EF44A50);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v114 - v12;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA218, &qword_26EF44A58);
  v120 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v15 = &v114 - v14;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA220, &qword_26EF44A60);
  v118 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v117 = &v114 - v16;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA228, &qword_26EF44A68);
  MEMORY[0x28223BE20](v115);
  v18 = &v114 - v17;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA230, &qword_26EF44A70);
  v19 = MEMORY[0x28223BE20](v116);
  v125 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v114 - v22;
  MEMORY[0x28223BE20](v21);
  v130 = &v114 - v24;
  v119 = a1;
  v132 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA238, &qword_26EF44A78);
  sub_26EF34FB0();
  sub_26EF3A50C();
  v25 = sub_26EE154C8(&qword_2806CA258, &qword_2806CA210, &qword_26EF44A50, MEMORY[0x277CDE5A0]);
  sub_26EF3A83C();
  (*(v11 + 8))(v13, v10);
  sub_26EF3A0AC();
  LOBYTE(a1) = sub_26EF3A39C();
  sub_26EF3A38C();
  sub_26EF3A38C();
  if (sub_26EF3A38C() != a1)
  {
    sub_26EF3A38C();
  }

  v150._countAndFlagsBits = v10;
  v150._object = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v117;
  v27 = v122;
  sub_26EF3A7FC();
  (*(v123 + 8))(v9, v124);
  (*(v120 + 8))(v15, v27);
  sub_26EF3AE4C();
  sub_26EF3984C();
  (*(v118 + 32))(v18, v26, v121);
  v28 = &v18[*(v115 + 36)];
  v29 = v152[3];
  *v28 = v152[2];
  *(v28 + 1) = v29;
  *(v28 + 2) = v152[4];
  v30 = sub_26EF3A3CC();
  sub_26EF3962C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_26EE14D98(v18, v23, &qword_2806CA228, &qword_26EF44A68);
  v39 = &v23[*(v116 + 36)];
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  sub_26EE14D98(v23, v130, &qword_2806CA230, &qword_26EF44A70);
  v124 = sub_26EF39F5C();
  v136 = 0;
  v123 = sub_26EF39E4C();
  v40 = sub_26EE17094();
  v41._object = 0x800000026EF47520;
  v42 = v40 & 1;
  v41._countAndFlagsBits = 0xD000000000000017;
  v150 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v41, v42, 0);
  v115 = sub_26EE12538(v150._countAndFlagsBits, v150._object, v43);
  v44 = sub_26EF3A5DC();
  v46 = v45;
  v48 = v47;
  LODWORD(v150._countAndFlagsBits) = sub_26EF3A1DC();
  v49 = sub_26EF3A58C();
  v51 = v50;
  v53 = v52;
  sub_26EE12ABC(v44, v46, v48 & 1);

  sub_26EF3A4DC();
  v54 = sub_26EF3A5BC();
  v56 = v55;
  v58 = v57;

  sub_26EE12ABC(v49, v51, v53 & 1);

  v59 = sub_26EF3A5AC();
  v61 = v60;
  LOBYTE(v44) = v62;
  v64 = v63;
  sub_26EE12ABC(v54, v56, v58 & 1);

  LOBYTE(v44) = v44 & 1;
  v156 = v44;
  v155 = 1;
  sub_26EE13B20(v59, v61, v44);

  v120 = v61;
  v121 = v59;
  sub_26EE12ABC(v59, v61, v44);
  v122 = v64;

  v157 = 1;
  LODWORD(v117) = v156;
  LODWORD(v118) = v155;
  v116 = sub_26EF39E4C();
  v154 = 1;
  v65 = *(v119 + 56);
  v150._countAndFlagsBits = *(v119 + 48);
  v150._object = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA200, &unk_26EF44A38);
  sub_26EF3AAFC();
  countAndFlagsBits = v133._countAndFlagsBits;
  v67 = sub_26EF3B0FC();
  v69 = v68;
  if (v67 == sub_26EF3B0FC() && v69 == v70)
  {

    v71 = "SHORT_DESCRIPTION";
    v72 = 0xD000000000000023;
  }

  else
  {
    v73 = sub_26EF3B82C();

    v72 = 0xD000000000000023;
    if (v73)
    {
      v71 = "SHORT_DESCRIPTION";
    }

    else
    {
      v71 = "VB_PHRASE_STYLE_DESCRIPTION";
    }

    if ((v73 & 1) == 0)
    {
      v72 = 0xD000000000000021;
    }
  }

  v74 = sub_26EE17094();
  v75._object = (v71 | 0x8000000000000000);
  v76 = v74 & 1;
  v75._countAndFlagsBits = v72;
  v150 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v75, v76, 0);
  v77 = sub_26EF3A5DC();
  v79 = v78;
  v81 = v80;
  sub_26EF3A44C();
  v82 = sub_26EF3A5BC();
  v84 = v83;
  v86 = v85;

  sub_26EE12ABC(v77, v79, v81 & 1);

  LODWORD(v150._countAndFlagsBits) = sub_26EF3A1CC();
  v87 = sub_26EF3A58C();
  v89 = v88;
  LOBYTE(v77) = v90;
  sub_26EE12ABC(v82, v84, v86 & 1);

  v91 = sub_26EF3A5AC();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  sub_26EE12ABC(v87, v89, v77 & 1);

  KeyPath = swift_getKeyPath();
  v168 = v95 & 1;
  v138._countAndFlagsBits = v91;
  v138._object = v93;
  LOBYTE(v139) = v95 & 1;
  *(&v139 + 1) = v163[0];
  DWORD1(v139) = *(v163 + 3);
  *(&v139 + 1) = v97;
  *(&v140 + 2) = v158._countAndFlagsBits;
  WORD3(v140) = WORD2(v158._countAndFlagsBits);
  LOWORD(v140) = 256;
  *(&v140 + 1) = KeyPath;
  LOBYTE(v141) = 0;
  LOBYTE(v134[2]) = 0;
  v134[0] = v139;
  v134[1] = v140;
  v133 = v138;
  v150._countAndFlagsBits = v91;
  v150._object = v93;
  v167 = 1;
  LOBYTE(v151[0]) = v95 & 1;
  DWORD1(v151[0]) = *(v163 + 3);
  *(v151 + 1) = v163[0];
  *(&v151[0] + 1) = v97;
  LOWORD(v151[1]) = 256;
  WORD3(v151[1]) = WORD2(v158._countAndFlagsBits);
  *(&v151[1] + 2) = v158._countAndFlagsBits;
  *(&v151[1] + 1) = KeyPath;
  LOBYTE(v151[2]) = 0;
  sub_26EE13B88(&v138, v137, &qword_2806C9298, &qword_26EF44AE0);
  sub_26EE14578(&v150, &qword_2806C9298, &qword_26EF44AE0);
  v158 = v133;
  v159 = v134[0];
  v160 = v134[1];
  v161 = *&v134[2];
  v162 = 1;
  v163[2] = v134[1];
  v163[1] = v134[0];
  v163[0] = v133;
  v164 = *&v134[2];
  v165 = 0;
  v166 = 1;
  sub_26EE13B88(&v158, &v150, &qword_2806CA280, &qword_26EF44AA0);
  sub_26EE14578(v163, &qword_2806CA280, &qword_26EF44AA0);
  *&v137[7] = v158;
  v137[71] = v162;
  *&v137[55] = v161;
  *&v137[39] = v160;
  *&v137[23] = v159;
  *(&v134[4] + 1) = *&v137[64];
  v133 = v116;
  LOBYTE(v134[0]) = v154;
  *(v134 + 1) = *v137;
  *(&v134[3] + 1) = *&v137[48];
  *(&v134[2] + 1) = *&v137[32];
  *(&v134[1] + 1) = *&v137[16];
  *(&v153[1] + 7) = v134[0];
  *(v153 + 7) = v116;
  v153[5] = *(&v134[3] + 9);
  *(&v153[4] + 7) = v134[3];
  *(&v153[3] + 7) = v134[2];
  *(&v153[2] + 7) = v134[1];
  v150 = v116;
  LOBYTE(v151[0]) = v154;
  *(v151 + 1) = *v137;
  *(&v151[4] + 1) = *&v137[64];
  *(&v151[3] + 1) = *&v137[48];
  *(&v151[2] + 1) = *&v137[32];
  *(&v151[1] + 1) = *&v137[16];
  LOBYTE(v84) = v117;
  v100 = v120;
  v99 = v121;
  sub_26EE13B20(v121, v120, v117 & 1);
  v101 = v122;

  sub_26EE13B88(&v133, &v138, &qword_2806CA288, &qword_26EF44AA8);
  sub_26EE14578(&v150, &qword_2806CA288, &qword_26EF44AA8);
  sub_26EE12ABC(v99, v100, v84 & 1);

  *&v137[81] = v153[1];
  *&v137[65] = v153[0];
  *&v137[145] = v153[5];
  *&v137[129] = v153[4];
  *&v137[113] = v153[3];
  *&v137[97] = v153[2];
  v145 = v153[1];
  v144 = v153[0];
  *&v137[17] = v133._countAndFlagsBits;
  *&v137[20] = *(&v133._countAndFlagsBits + 3);
  *&v137[44] = *(v163 + 3);
  *&v137[41] = v163[0];
  *v137 = v123;
  *&v137[8] = 0;
  v137[16] = 1;
  *&v137[24] = v99;
  *&v137[32] = v100;
  v137[40] = v84;
  *&v137[48] = v101;
  *&v137[56] = 0;
  v137[64] = v118;
  v138 = v123;
  LOBYTE(v139) = 1;
  DWORD1(v139) = *(&v133._countAndFlagsBits + 3);
  *(&v139 + 1) = v133._countAndFlagsBits;
  *(&v139 + 1) = v99;
  *&v140 = v100;
  BYTE8(v140) = v84;
  HIDWORD(v140) = *(v163 + 3);
  *(&v140 + 9) = v163[0];
  v141 = v101;
  v142 = 0;
  v143 = v118;
  v149 = v153[5];
  v148 = v153[4];
  v147 = v153[3];
  v146 = v153[2];
  sub_26EE13B88(v137, &v150, &qword_2806CA260, &qword_26EF44A88);
  sub_26EE14578(&v138, &qword_2806CA260, &qword_26EF44A88);
  *&v135[119] = *&v137[112];
  *&v135[135] = *&v137[128];
  *&v135[151] = *&v137[144];
  *&v135[55] = *&v137[48];
  *&v135[71] = *&v137[64];
  *&v135[87] = *&v137[80];
  *&v135[103] = *&v137[96];
  *&v135[7] = *v137;
  *&v135[23] = *&v137[16];
  *&v135[39] = *&v137[32];
  *(&v134[7] + 1) = *&v135[112];
  *(&v134[8] + 1) = *&v135[128];
  *(&v134[9] + 1) = *&v135[144];
  *(&v134[3] + 1) = *&v135[48];
  *(&v134[4] + 1) = *&v135[64];
  *(&v134[5] + 1) = *&v135[80];
  *(&v134[6] + 1) = *&v135[96];
  *(v134 + 1) = *v135;
  *(&v134[1] + 1) = *&v135[16];
  v135[167] = v137[160];
  v133._countAndFlagsBits = v124;
  v133._object = 0x4014000000000000;
  LOBYTE(v134[0]) = v136;
  *(&v134[10] + 1) = *&v135[160];
  *(&v134[2] + 1) = *&v135[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA268, &qword_26EF44A90);
  sub_26EE154C8(&qword_2806CA270, &qword_2806CA268, &qword_26EF44A90, MEMORY[0x277CE1198]);
  v102 = v131;
  sub_26EF3A5EC();
  v151[7] = v134[7];
  v151[8] = v134[8];
  v152[0] = v134[9];
  *(v152 + 9) = *(&v134[9] + 9);
  v151[3] = v134[3];
  v151[4] = v134[4];
  v151[5] = v134[5];
  v151[6] = v134[6];
  v150 = v133;
  v151[0] = v134[0];
  v151[1] = v134[1];
  v151[2] = v134[2];
  sub_26EE14578(&v150, &qword_2806CA268, &qword_26EF44A90);
  v103 = v130;
  v104 = v125;
  sub_26EF3506C(v130, v125);
  v106 = v128;
  v105 = v129;
  v107 = *(v128 + 16);
  v108 = v126;
  v107(v126, v102, v129);
  v109 = v127;
  sub_26EF3506C(v104, v127);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA278, &qword_26EF44A98);
  v107((v109 + *(v110 + 48)), v108, v105);
  v111 = v109 + *(v110 + 64);
  *v111 = 0;
  *(v111 + 8) = 1;
  v112 = *(v106 + 8);
  v112(v131, v105);
  sub_26EE14578(v103, &qword_2806CA230, &qword_26EF44A70);
  v112(v108, v105);
  return sub_26EE14578(v104, &qword_2806CA230, &qword_26EF44A70);
}

void sub_26EF33AA8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PhraseStyleView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_26EE17094();
  v8._object = 0xEB0000000045554ELL;
  v9 = v7 & 1;
  v8._countAndFlagsBits = 0x49544E4F435F4256;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v8, v9, 0);
  sub_26EF352D0(a1, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhraseStyleView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_26EF34E44(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  CGSizeMake();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = sub_26EF3A3DC();
  sub_26EF3962C();
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v22;
  *(a2 + 56) = v23;
  *(a2 + 64) = v24;
  *(a2 + 72) = 0;
}

void sub_26EF33C58(uint64_t *a1)
{
  v2 = sub_26EF39DDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[2];
  if (*(a1 + 24) == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_26EF3B46C();
    v8 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v6, 0);
    (*(v3 + 8))(v5, v2);
    v7 = v19[0];
  }

  v9 = a1[7];
  v19[0] = a1[6];
  v19[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA200, &unk_26EF44A38);
  sub_26EF3AAFC();
  VoiceBankingSession.trainingScriptType.setter(v19[4]);

  if (*a1)
  {

    v10 = VoiceBankingNavigationModel.itemPath.modify(v19);
    v12 = v11;
    v13 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v12 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_26EEB3AD4(0, *(v13 + 2) + 1, 1, v13);
      *v12 = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_26EEB3AD4((v15 > 1), v16 + 1, 1, v13);
      *v12 = v13;
    }

    *(v13 + 2) = v16 + 1;
    v17 = &v13[16 * v16];
    *(v17 + 4) = 5;
    v17[40] = 1;
    (v10)(v19, 0);
  }

  else
  {
    type metadata accessor for VoiceBankingNavigationModel(0);
    sub_26EF323FC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
    sub_26EF39BFC();
    __break(1u);
  }
}

uint64_t sub_26EF33F0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BD8, &unk_26EF41860);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - v2;
  sub_26EF34040();
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BE0, &qword_26EF424A0);
  v5 = sub_26EEB2104();
  v8[0] = v4;
  v8[1] = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x274382230](v3, v0, OpaqueTypeConformance2);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26EF34040()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C20, &qword_26EF41880);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - v2;
  v4 = type metadata accessor for ToolbarCancelButton(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BE0, &qword_26EF424A0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  if (_UISolariumEnabled())
  {
    (*(v1 + 56))(v10, 1, 1, v0);
    v13 = sub_26EF323FC(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton, &unk_26EF44CA0);
    v21 = v4;
    v22 = v13;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x274382260](v10, v0, OpaqueTypeConformance2);
    sub_26EE14578(v10, &qword_2806C8BE0, &qword_26EF424A0);
  }

  else
  {
    v15 = sub_26EF36388();
    sub_26EF363D8(v15, v16, v6);
    v17 = sub_26EF323FC(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton, &unk_26EF44CA0);
    MEMORY[0x274382230](v6, v4, v17);
    (*(v1 + 16))(v10, v3, v0);
    (*(v1 + 56))(v10, 0, 1, v0);
    v21 = v4;
    v22 = v17;
    v18 = swift_getOpaqueTypeConformance2();
    MEMORY[0x274382260](v10, v0, v18);
    sub_26EE14578(v10, &qword_2806C8BE0, &qword_26EF424A0);
    (*(v1 + 8))(v3, v0);
    sub_26EF35338(v6, type metadata accessor for ToolbarCancelButton);
  }

  v19 = sub_26EEB2104();
  MEMORY[0x274382230](v12, v7, v19);
  return sub_26EE14578(v12, &qword_2806C8BE0, &qword_26EF424A0);
}

uint64_t sub_26EF343CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for PhraseStyleView(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = v5;
  v6 = &object - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SelectionCell(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v52 = &object - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v51 = &object - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v50 = (&object - v13);
  MEMORY[0x28223BE20](v12);
  v15 = (&object - v14);
  v49 = &object - v14;
  v16 = sub_26EE17094();
  v17._countAndFlagsBits = 0xD00000000000001FLL;
  v17._object = 0x800000026EF47540;
  v18 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v17, v16 & 1, 0);
  object = v18._object;
  countAndFlagsBits = v18._countAndFlagsBits;
  v19 = *(a1 + 32);
  v47 = *(a1 + 40);
  v48 = v19;
  v46 = a1;
  v57 = v19;
  v58 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA290, &qword_26EF44AE8);
  sub_26EF3AB1C();
  v20 = v54;
  v21 = v55;
  v22 = v56;
  sub_26EF352D0(a1, v6, type metadata accessor for PhraseStyleView);
  v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v24 = swift_allocObject();
  sub_26EF34E44(v6, v24 + v23);
  v25 = sub_26EE17094();
  sub_26EE170E0(countAndFlagsBits, object, v25 & 1, 0, v20, v21, v22, sub_26EF350E4, v15, v24);
  v26 = sub_26EE17094();
  v27._object = 0x800000026EF47560;
  v28 = v26 & 1;
  v27._countAndFlagsBits = 0xD00000000000001DLL;
  v29 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v27, v28, 0);
  v57 = v48;
  v58 = v47;
  sub_26EF3AB1C();
  v30 = v54;
  v31 = v55;
  v32 = v56;
  sub_26EF352D0(v46, v6, type metadata accessor for PhraseStyleView);
  v33 = swift_allocObject();
  sub_26EF34E44(v6, v33 + v23);
  v34 = sub_26EE17094();
  v42 = v33;
  v35 = v50;
  sub_26EE170E0(v29._countAndFlagsBits, v29._object, v34 & 1, 1, v30, v31, v32, sub_26EF35228, v50, v42);
  v36 = v49;
  v37 = v51;
  sub_26EF352D0(v49, v51, type metadata accessor for SelectionCell);
  v38 = v52;
  sub_26EF352D0(v35, v52, type metadata accessor for SelectionCell);
  v39 = v53;
  sub_26EF352D0(v37, v53, type metadata accessor for SelectionCell);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA298, &qword_26EF44AF0);
  sub_26EF352D0(v38, v39 + *(v40 + 48), type metadata accessor for SelectionCell);
  sub_26EF35338(v35, type metadata accessor for SelectionCell);
  sub_26EF35338(v36, type metadata accessor for SelectionCell);
  sub_26EF35338(v38, type metadata accessor for SelectionCell);
  return sub_26EF35338(v37, type metadata accessor for SelectionCell);
}

uint64_t sub_26EF347E0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VoiceBankingNavigationModel(0);
  sub_26EF323FC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
  *a1 = sub_26EF39C1C();
  *(a1 + 8) = v2;
  type metadata accessor for VoiceBankingSession(0);
  sub_26EF323FC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  *(a1 + 16) = sub_26EF3973C();
  *(a1 + 24) = v3 & 1;
  sub_26EF3AAEC();
  *(a1 + 32) = v7;
  v4 = *MEMORY[0x277D70768];
  type metadata accessor for TTSVBSiriTrainingScriptType(0);
  v5 = v4;
  sub_26EF3AAEC();
  *(a1 + 48) = v7;
  type metadata accessor for PhraseStyleView(0);
  return sub_26EF32444();
}

uint64_t sub_26EF3495C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26EF34A2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26EF34ADC(uint64_t a1)
{
  sub_26EE1F73C(319);
  if (v1 <= 0x3F)
  {
    sub_26EF34CAC(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_26EF34C5C(319, &qword_2806CA1F0, MEMORY[0x277D83B88], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_26EF34CAC(319, &qword_2806CA1F8, type metadata accessor for TTSVBSiriTrainingScriptType, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_26EF34CAC(319, &qword_2806C8070, MEMORY[0x277CE7670], MEMORY[0x277CE11F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26EF34C5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_26EF34CAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26EF34D10()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806CA1D0, &qword_26EF449A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BC8, &unk_26EF42490);
  sub_26EE154C8(&qword_2806CA1E8, &qword_2806CA1D0, &qword_26EF449A8, MEMORY[0x277CE7668]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BD8, &unk_26EF41860);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BE0, &qword_26EF424A0);
  sub_26EEB2104();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26EF34E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhraseStyleView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26EF34EA8()
{
  v1 = *(type metadata accessor for PhraseStyleView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_26EF33C58(v2);
}

uint64_t sub_26EF34F08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA250, &qword_26EF44A80);
  sub_26EE154C8(&qword_2806CA248, &qword_2806CA250, &qword_26EF44A80, MEMORY[0x277CE14C0]);
  return sub_26EF3AD6C();
}

unint64_t sub_26EF34FB0()
{
  result = qword_2806CA240;
  if (!qword_2806CA240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806CA238, &qword_26EF44A78);
    sub_26EE154C8(&qword_2806CA248, &qword_2806CA250, &qword_26EF44A80, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CA240);
  }

  return result;
}

uint64_t sub_26EF3506C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA230, &qword_26EF44A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_20()
{
  v1 = (type metadata accessor for PhraseStyleView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_26EE05C9C(*(v0 + v3 + 16), *(v0 + v3 + 24));

  v5 = v0 + v3 + v1[10];

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830) + 32);
  v7 = sub_26EF3872C();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EF35234(void **a1)
{
  type metadata accessor for PhraseStyleView(0);
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806CA200, &unk_26EF44A38);
  return sub_26EF3AB0C();
}

uint64_t sub_26EF352D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EF35338(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_26EF353A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-v2];
  type metadata accessor for VoiceBankingBatteryMonitor(0);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26VoiceBankingBatteryMonitor__deviceIsCharging;
  v6[15] = 0;
  sub_26EF394EC();
  (*(v1 + 32))(v4 + v5, v3, v0);
  sub_26EF35C30();
  qword_2806CFA88 = v4;
}

uint64_t sub_26EF354B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7[-v2];
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26VoiceBankingBatteryMonitor__deviceIsCharging;
  v7[15] = 0;
  sub_26EF394EC();
  (*(v1 + 32))(v4 + v5, v3, v0);
  sub_26EF35C30();
  return v4;
}

uint64_t *sub_26EF355C4()
{
  if (qword_2806CF7D0 != -1)
  {
    swift_once();
  }

  return &qword_2806CFA88;
}

uint64_t sub_26EF35614()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v1;
}

uint64_t sub_26EF35688@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_26EF35720(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

void (*sub_26EF35790(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_26EF3951C();
  return sub_26EE42F5C;
}

uint64_t sub_26EF35834()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  sub_26EF394FC();
  return swift_endAccess();
}

uint64_t sub_26EF358A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C0, &qword_26EF44060);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_26EF359E0(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C75C0, &qword_26EF44060);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26VoiceBankingBatteryMonitor__deviceIsCharging;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  sub_26EF394FC();
  swift_endAccess();
  return sub_26EE4351C;
}

uint64_t sub_26EF35B50()
{
  v1 = [objc_opt_self() currentDevice];
  [v1 setBatteryMonitoringEnabled_];

  v2 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26VoiceBankingBatteryMonitor__deviceIsCharging;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9BA0, &unk_26EF3E550);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

void sub_26EF35C30()
{
  v1 = v0;
  v2 = sub_26EF3883C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26EE27ED0();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_26EF3881C();
  v8 = sub_26EF3B47C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26EE01000, v7, v8, "VoiceBankingBatteryMonitor: Registering for observers.", v9, 2u);
    MEMORY[0x2743842A0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = objc_opt_self();
  v11 = [v10 currentDevice];
  [v11 setBatteryMonitoringEnabled_];

  v12 = [v10 currentDevice];
  v13 = [v12 batteryState];

  (*(*v1 + 96))(v13 != 1);
  v14 = [objc_opt_self() defaultCenter];
  [v14 addObserver:v1 selector:sel_batteryStateChanged name:*MEMORY[0x277D76870] object:0];
}

uint64_t sub_26EF35E74()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 batteryState];

  v3 = *(*v0 + 96);

  return v3(v2 != 1);
}

uint64_t sub_26EF35FB8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VoiceBankingBatteryMonitor(0);
  result = sub_26EF394BC();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for VoiceBankingBatteryMonitor(uint64_t a1)
{
  result = qword_2806CF870;
  if (!qword_2806CF870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26EF3604C(uint64_t a1)
{
  sub_26EF21AE4();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_26EF360E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v0 startAnimating];
  [v0 setHidesWhenStopped_];
  return v0;
}

uint64_t sub_26EF361A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26EF362A0(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_26EF36204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26EF362A0(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_26EF36268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26EF362A0(a1, a2, a3);
  sub_26EF3A02C();
  __break(1u);
}

unint64_t sub_26EF362A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806CA2A0;
  if (!qword_2806CA2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CA2A0);
  }

  return result;
}

uint64_t sub_26EF362F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ToolbarCancelButton(uint64_t a1)
{
  result = qword_2806CFA00;
  if (!qword_2806CFA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EF36388()
{
  v0 = sub_26EE17094() & 1;
  v1 = 0x45434E41435F4256;
  v2 = 0xE90000000000004CLL;
  v3 = 0;
  v4 = 0;

  return TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(*&v1, v0, *&v3)._countAndFlagsBits;
}

uint64_t sub_26EF363D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for VoiceBankingSession(0);
  sub_26EF362F4(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  *a3 = sub_26EF3973C();
  *(a3 + 8) = v6 & 1;
  type metadata accessor for VoiceBankingNavigationModel(0);
  sub_26EF362F4(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
  *(a3 + 16) = sub_26EF39C1C();
  *(a3 + 24) = v7;
  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EF362F4(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  *(a3 + 32) = sub_26EF39C1C();
  *(a3 + 40) = v8;
  v9 = type metadata accessor for ToolbarCancelButton(0);
  result = sub_26EF3A0DC();
  v11 = (a3 + *(v9 + 32));
  *v11 = a1;
  v11[1] = a2;
  return result;
}

uint64_t sub_26EF36528(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarCancelButton(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - v7;
  v9 = (a1 + *(v3 + 40));
  v10 = v9[1];
  v18[0] = *v9;
  v18[1] = v10;

  sub_26EF3960C();
  v11 = sub_26EF3961C();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  sub_26EF371E0(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v14 = sub_26EF37358(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_26EE12538(v14, v15, v16);
  return sub_26EF3AB5C();
}

void sub_26EF36720(uint64_t a1)
{
  v2 = sub_26EF39DDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ToolbarCancelButton(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v26 - v11;
  if (!*(a1 + 16))
  {
    type metadata accessor for VoiceBankingNavigationModel(0);
    v23 = &qword_2806C6C20;
    v24 = type metadata accessor for VoiceBankingNavigationModel;
    v25 = &protocol conformance descriptor for VoiceBankingNavigationModel;
LABEL_9:
    sub_26EF362F4(v23, v24, v25);
    sub_26EF39BFC();
    __break(1u);
    return;
  }

  VoiceBankingNavigationModel.dismissSheet()();

  v13 = *(a1 + 32);
  if (!v13)
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    v23 = &qword_2806C9BB0;
    v24 = type metadata accessor for VoiceBankingAudioServiceViewModel;
    v25 = &unk_26EF44398;
    goto LABEL_9;
  }

  v14 = v13;
  sub_26EF17564();

  v15 = sub_26EF3B30C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  sub_26EF371E0(a1, v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26EF3B2DC();
  v16 = sub_26EF3B2CC();
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  sub_26EF37358(v9, v18 + v17);
  sub_26EE2C388(0, 0, v12, &unk_26EF44D10, v18);

  v20 = *a1;
  if (*(a1 + 8))
  {
    v21 = v20;
  }

  else
  {

    sub_26EF3B46C();
    v22 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v20, 0);
    (*(v3 + 8))(v5, v2);
    v21 = v26[1];
  }

  VoiceBankingSession.indexOfCurrentSample.setter(-1, 0);
}

uint64_t sub_26EF36AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26EF3B2DC();
  v4[3] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26EF36B7C, v6, v5);
}

uint64_t sub_26EF36B7C()
{
  v1 = *(v0[2] + 32);
  v0[6] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_26EE7CD18;

    return sub_26EF1262C();
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EF362F4(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EF36CA0(uint64_t a1)
{
  v3 = sub_26EF3A13C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C73A8, &qword_26EF3E150);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-v9];
  (*(v4 + 16))(v6, v1 + *(a1 + 28), v3);
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080, MEMORY[0x277CDF028]);
  sub_26EF397CC();
  v11 = sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150, MEMORY[0x277CDD7A8]);
  MEMORY[0x274382230](v10, v7, v11);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_26EF36EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26EF3A13C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_26EF36FCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26EF3A13C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_26EF3708C(uint64_t a1)
{
  sub_26EE1F6E4(319);
  if (v1 <= 0x3F)
  {
    sub_26EE1F73C(319);
    if (v2 <= 0x3F)
    {
      sub_26EE1F7D0(319);
      if (v3 <= 0x3F)
      {
        sub_26EF3A13C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26EF37148()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C73A8, &qword_26EF3E150);
  sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150, MEMORY[0x277CDD7A8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26EF371E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarCancelButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF37244()
{
  v1 = (type metadata accessor for ToolbarCancelButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));

  v5 = v1[9];
  v6 = sub_26EF3A13C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EF37358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarCancelButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26EF373BC()
{
  v1 = *(type metadata accessor for ToolbarCancelButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_26EF36720(v2);
}

uint64_t sub_26EF3741C()
{
  v1 = (type metadata accessor for ToolbarCancelButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));

  v5 = v1[9];
  v6 = sub_26EF3A13C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EF37538()
{
  v2 = *(type metadata accessor for ToolbarCancelButton(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EF36AE4(v4, v5, v6, v0 + v3);
}

uint64_t sub_26EF3760C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_26EF37654(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_2806CFA28 == -1)
  {
    if (qword_2806CFA30)
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
    if (qword_2806CFA30)
    {
      return _availability_version_check();
    }
  }

  if (qword_2806CFA20 != -1)
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
      if (dword_2806CFA14 > a3)
      {
        return 1;
      }

      if (dword_2806CFA14 >= a3)
      {
        return dword_2806CFA18 >= a4;
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
  v1 = qword_2806CFA30;
  if (qword_2806CFA30)
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
      qword_2806CFA30 = MEMORY[0x28223BE68];
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
                          v14 = MEMORY[0x274383C20](v13);
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
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_2806CFA14, &dword_2806CFA18);
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

void TTSUIAppImageForBundleID_cold_1()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  TTSDeviceTemplateType_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
}