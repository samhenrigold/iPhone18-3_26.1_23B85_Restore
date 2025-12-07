uint64_t sub_27023C648(double a1, double a2)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C7738, &unk_270241038);
  *(v2 + 208) = v3;
  *(v2 + 216) = *(v3 - 8);
  *(v2 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27023C714, 0, 0);
}

uint64_t sub_27023C714()
{
  v25 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v3 = swift_allocObject();
  v0[29] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_27023CD4C;
  *(v4 + 24) = v3;
  v0[22] = sub_27023CD64;
  v0[23] = v4;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_27023CD8C;
  v0[21] = &block_descriptor;
  v5 = _Block_copy(v0 + 18);

  v6 = [objc_opt_self() eventStreamWithEventActions_];
  v0[30] = v6;
  _Block_release(v5);
  if (v6)
  {
    if (qword_2807C7728 != -1)
    {
      swift_once();
    }

    v7 = sub_270240400();
    __swift_project_value_buffer(v7, qword_2807C7E90);
    v8 = sub_2702403E0();
    v9 = sub_270240460();
    v23 = v6;
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315138;
      v12 = sub_2702404A0();
      v14 = sub_27023F688(v12, v13, &v24);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_27023B000, v8, v9, "Performing primary action at location: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x27439B440](v11, -1, -1);
      MEMORY[0x27439B440](v10, -1, -1);
    }

    v15 = v0[27];
    v16 = v0[28];
    v17 = v0[26];
    v18 = [objc_allocWithZone(MEMORY[0x277D44348]) init];
    v0[31] = v18;
    v19 = [objc_allocWithZone(MEMORY[0x277D44350]) init];
    v0[32] = v19;
    v0[2] = v0;
    v0[3] = sub_27023CB88;
    swift_continuation_init();
    v0[17] = v17;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    sub_270240440();
    (*(v15 + 32))(boxed_opaque_existential_0, v16, v17);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_27023CE4C;
    v0[13] = &block_descriptor_6;
    [v18 playEventStream:v23 options:v19 completion:v0 + 10];
    (*(v15 + 8))(boxed_opaque_existential_0, v17);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_27023CDF8();
    swift_allocError();
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_27023CB88()
{

  return MEMORY[0x2822009F8](sub_27023CC68, 0, 0);
}

uint64_t sub_27023CC68()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);

  v3 = *(v0 + 8);

  return v3();
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

id sub_27023CD4C(id result)
{
  if (result)
  {
    return [result tap_];
  }

  return result;
}

uint64_t sub_27023CD8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return MEMORY[0x2821FEBE0](a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_27023CDF8()
{
  result = qword_2807C77A0;
  if (!qword_2807C77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C77A0);
  }

  return result;
}

uint64_t sub_27023CE4C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C7738, &unk_270241038);
  return sub_270240450();
}

uint64_t sub_27023CE9C()
{
  sub_270240530();
  MEMORY[0x27439B180](0);
  return sub_270240550();
}

uint64_t sub_27023CF08(uint64_t a1)
{
  sub_270240530();
  MEMORY[0x27439B180](0);
  return sub_270240550();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_27023D02C(uint64_t a1, uint64_t a2)
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrimaryActionActuation.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PrimaryActionActuation.Error(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s25UIIntelligenceInteraction11InteractionOwet_0(uint64_t a1, int a2)
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

uint64_t _s25UIIntelligenceInteraction11InteractionOwst_0(uint64_t result, int a2, int a3)
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

unint64_t sub_27023D27C()
{
  result = qword_2807C77A8;
  if (!qword_2807C77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C77A8);
  }

  return result;
}

void type metadata accessor for CGPoint()
{
  if (!qword_2807C77B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2807C77B0);
    }
  }
}

Swift::Void __swiftcall InteractionComposer.primaryAction(at:)(CGPoint at)
{
  y = at.y;
  x = at.x;
  v4 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_27023D3D8(0, *(v4 + 2) + 1, 1, v4);
    *v1 = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_27023D3D8((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[16 * v7];
  *(v8 + 4) = x;
  *(v8 + 5) = y;
  *v1 = v4;
}

char *sub_27023D3D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C7B20, &qword_270241230);
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

uint64_t sub_27023D4E8(uint64_t *a1, int a2)
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

uint64_t sub_27023D530(uint64_t result, int a2, int a3)
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

uint64_t sub_27023D5DC(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27023D6F4;

  return v7(a1, a2);
}

uint64_t sub_27023D6F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_27023D7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_270240320();
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

uint64_t sub_27023D8CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_270240320();
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

uint64_t type metadata accessor for InteractionRunner(uint64_t a1)
{
  result = qword_2807C7B28;
  if (!qword_2807C7B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27023D9D0(uint64_t a1)
{
  sub_270240320();
  if (v1 <= 0x3F)
  {
    sub_27023DA54();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27023DA54()
{
  if (!qword_2807C7B38)
  {
    v0 = sub_270240430();
    if (!v1)
    {
      atomic_store(v0, &qword_2807C7B38);
    }
  }
}

uint64_t sub_27023DAA4()
{
  v1[12] = v0;
  v2 = sub_270240390();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = type metadata accessor for InteractionRunner(0);
  v1[17] = swift_task_alloc();
  v3 = sub_270240350();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27023DC08, 0, 0);
}

void sub_27023DC08()
{
  if (qword_2807C7730 != -1)
  {
    swift_once();
  }

  v1 = sub_270240380();
  *(v0 + 184) = __swift_project_value_buffer(v1, qword_2807C7EA8);
  sub_270240340();
  v2 = sub_270240370();
  v3 = sub_270240490();
  if (sub_2702404B0())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_270240330();
    _os_signpost_emit_with_name_impl(&dword_27023B000, v2, v3, v5, "PerformInteractions", "", v4, 2u);
    MEMORY[0x27439B440](v4, -1, -1);
  }

  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 144);
  v9 = *(v0 + 152);

  (*(v9 + 16))(v6, v7, v8);
  sub_2702403C0();
  swift_allocObject();
  *(v0 + 192) = sub_2702403B0();
  v10 = *(v9 + 8);
  *(v0 + 200) = v10;
  *(v0 + 208) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7, v8);
  if (qword_2807C7720 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 136);
  v12 = *(v0 + 96);
  v13 = sub_270240400();
  __swift_project_value_buffer(v13, qword_2807C7E78);
  sub_27023E6D8(v12, v11);
  v14 = sub_2702403E0();
  v15 = sub_270240460();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 136);
  v57 = v0;
  if (v16)
  {
    v18 = *(v0 + 128);
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    v20 = *(*(v17 + *(v18 + 20)) + 16);
    sub_27023E73C(v17);
    *(v19 + 4) = v20;
    v21 = v0;
    _os_log_impl(&dword_27023B000, v14, v15, "Performing %ld interactions", v19, 0xCu);
    MEMORY[0x27439B440](v19, -1, -1);
  }

  else
  {
    v21 = v0;
    sub_27023E73C(v17);
  }

  v22 = *(v21 + 128);
  v23 = *(v21 + 96);

  v24 = *(v23 + *(v22 + 20));
  v25 = *(v24 + 16);
  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v59 = MEMORY[0x277D84F90];
    sub_27023E798(0, v25, 0);
    v26 = v59;
    v27 = (v24 + 32);
    do
    {
      v58 = v25;
      v28 = *v27;
      *(v21 + 40) = &type metadata for PrimaryActionActuation;
      *(v21 + 48) = &off_2820517E0;
      *(v21 + 16) = v28;
      v30 = v59[2];
      v29 = v59[3];
      v31 = &type metadata for PrimaryActionActuation;
      if (v30 >= v29 >> 1)
      {
        sub_27023E798((v29 > 1), v30 + 1, 1);
        v31 = *(v21 + 40);
      }

      v32 = __swift_mutable_project_boxed_opaque_existential_1(v21 + 16, v31);
      Description = v31[-1].Description;
      v34 = swift_task_alloc();
      v35 = v32;
      v21 = v0;
      Description[2](v34, v35, v31);
      v36 = *v34;
      *(v0 + 80) = &type metadata for PrimaryActionActuation;
      *(v0 + 88) = &off_2820517E0;
      *(v0 + 56) = v36;
      v59[2] = v30 + 1;
      sub_27023E808((v0 + 56), &v59[5 * v30 + 4]);
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));

      ++v27;
      --v25;
    }

    while (v58 != 1);
  }

  *(v21 + 216) = v26;
  v37 = v26[2];
  *(v21 + 224) = v37;
  if (v37)
  {
    *(v21 + 232) = 0;
    if (v26[2])
    {
      v38 = __swift_project_boxed_opaque_existential_0(v26 + 4, v26[7]);
      v39 = *v38;
      v40 = v38[1];
      v41 = swift_task_alloc();
      *(v21 + 240) = v41;
      *v41 = v21;
      v41[1] = sub_27023E26C;

      sub_27023C648(v39, v40);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v42 = sub_270240370();
    sub_2702403A0();
    v43 = sub_270240480();
    if (sub_2702404B0())
    {
      v45 = *(v21 + 112);
      v44 = *(v21 + 120);
      v46 = v21;
      v47 = *(v21 + 104);

      sub_2702403D0();

      if ((*(v45 + 88))(v44, v47) == *MEMORY[0x277D85B00])
      {
        v48 = "[Error] Interval already ended";
      }

      else
      {
        (*(v46[14] + 8))(v46[15], v46[13]);
        v48 = "";
      }

      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = sub_270240330();
      _os_signpost_emit_with_name_impl(&dword_27023B000, v42, v43, v50, "PerformInteractions", v48, v49, 2u);
      v51 = v49;
      v21 = v57;
      MEMORY[0x27439B440](v51, -1, -1);
    }

    v52 = *(v21 + 200);
    v53 = *(v21 + 160);
    v54 = v21;
    v55 = *(v21 + 144);

    v52(v53, v55);

    v56 = *(v54 + 8);

    v56();
  }
}

uint64_t sub_27023E26C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {

    v2 = sub_27023E62C;
  }

  else
  {
    v2 = sub_27023E388;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_27023E388()
{
  v1 = v0[29] + 1;
  if (v1 == v0[28])
  {

    v2 = sub_270240370();
    sub_2702403A0();
    v3 = sub_270240480();
    if (sub_2702404B0())
    {
      v5 = v0[14];
      v4 = v0[15];
      v6 = v0[13];

      sub_2702403D0();

      if ((*(v5 + 88))(v4, v6) == *MEMORY[0x277D85B00])
      {
        v7 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[14] + 8))(v0[15], v0[13]);
        v7 = "";
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = sub_270240330();
      _os_signpost_emit_with_name_impl(&dword_27023B000, v2, v3, v14, "PerformInteractions", v7, v13, 2u);
      MEMORY[0x27439B440](v13, -1, -1);
    }

    v15 = v0[25];
    v16 = v0[20];
    v17 = v0[18];

    v15(v16, v17);

    v18 = v0[1];

    v18();
  }

  else
  {
    v0[29] = v1;
    v8 = v0[27];
    if (v1 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      v9 = __swift_project_boxed_opaque_existential_0((v8 + 40 * v1 + 32), *(v8 + 40 * v1 + 56));
      v10 = *v9;
      v11 = v9[1];
      v12 = swift_task_alloc();
      v0[30] = v12;
      *v12 = v0;
      v12[1] = sub_27023E26C;

      sub_27023C648(v10, v11);
    }
  }
}

uint64_t sub_27023E62C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27023E6D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionRunner(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27023E73C(uint64_t a1)
{
  v2 = type metadata accessor for InteractionRunner(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_27023E798(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27023E820(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_27023E808(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_27023E820(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C7B40, &qword_2702412E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C7B48, &qword_2702412E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_27023E97C()
{
  v1 = *v0;
  sub_270240530();
  MEMORY[0x27439B180](v1);
  return sub_270240550();
}

uint64_t sub_27023E9F0(uint64_t a1)
{
  v2 = *v1;
  sub_270240530();
  MEMORY[0x27439B180](v2);
  return sub_270240550();
}

uint64_t InteractionSession.__allocating_init(label:)(uint64_t a1, unint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  if (a2)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0xE000000000000000;
  if (a2)
  {
    v6 = a2;
  }

  *(result + 24) = v5;
  *(result + 32) = v6;
  if (qword_2807C7710 != -1)
  {
    v7 = result;
    swift_once();
    return v7;
  }

  return result;
}

uint64_t InteractionSession.init(label:)(uint64_t a1, unint64_t a2)
{
  *(v2 + 16) = 0;
  if (a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0xE000000000000000;
  if (a2)
  {
    v4 = a2;
  }

  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  if (qword_2807C7710 != -1)
  {
    swift_once();
  }

  return v2;
}

uint64_t InteractionSession.deinit()
{
  if ((*(v0 + 16) | 2) == 2)
  {

    return v0;
  }

  else
  {
    result = sub_2702404E0();
    __break(1u);
  }

  return result;
}

uint64_t InteractionSession.__deallocating_deinit()
{
  if ((*(v0 + 16) | 2) == 2)
  {

    v1 = v0;
    v2 = 40;
    v3 = 7;
  }

  else
  {
    v1 = sub_2702404E0();
    __break(1u);
  }

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_27023EC44()
{
  v1 = v0;
  if (*(v0 + 16))
  {
    if (qword_2807C7718 != -1)
    {
      swift_once();
    }

    v2 = sub_270240400();
    __swift_project_value_buffer(v2, qword_2807C7E60);

    oslog = sub_2702403E0();
    v3 = sub_270240470();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v15 = v5;
      *v4 = 136315138;
      v7 = *(v1 + 24);
      v6 = *(v1 + 32);

      v8 = sub_27023F688(v7, v6, &v15);

      *(v4 + 4) = v8;
      v9 = "[%s] Attempted to start an interaction session that has already been started";
LABEL_10:
      _os_log_impl(&dword_27023B000, oslog, v3, v9, v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x27439B440](v5, -1, -1);
      MEMORY[0x27439B440](v4, -1, -1);

      return;
    }
  }

  else
  {
    *(v0 + 16) = 1;
    if (qword_2807C7718 != -1)
    {
      swift_once();
    }

    v10 = sub_270240400();
    __swift_project_value_buffer(v10, qword_2807C7E60);

    oslog = sub_2702403E0();
    v3 = sub_270240460();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v15 = v5;
      *v4 = 136315138;
      v12 = *(v1 + 24);
      v11 = *(v1 + 32);

      v13 = sub_27023F688(v12, v11, &v15);

      *(v4 + 4) = v13;
      v9 = "[%s] Started interaction session";
      goto LABEL_10;
    }
  }
}

uint64_t sub_27023EEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = type metadata accessor for InteractionRunner(0);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27023EF60, 0, 0);
}

uint64_t sub_27023EF60()
{
  if (*(v0[6] + 16) != 1)
  {
    return sub_2702404E0();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];
  v4 = v0[3];
  v0[2] = MEMORY[0x277D84F90];
  v3(v0 + 2);
  v5 = sub_270240320();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  *(v1 + *(v2 + 20)) = v0[2];
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_27023F0E0;

  return sub_27023DAA4();
}

uint64_t sub_27023F0E0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_27023F264;
  }

  else
  {
    v2 = sub_27023F1F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27023F1F4()
{
  sub_27023E73C(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27023F264()
{
  sub_27023E73C(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

void sub_27023F2D4()
{
  v1 = v0;
  *(v0 + 16) = 2;
  if (qword_2807C7718 != -1)
  {
    swift_once();
  }

  v2 = sub_270240400();
  __swift_project_value_buffer(v2, qword_2807C7E60);

  oslog = sub_2702403E0();
  v3 = sub_270240460();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v7 = *(v1 + 24);
    v6 = *(v1 + 32);

    v8 = sub_27023F688(v7, v6, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_27023B000, oslog, v3, "[%s] Ended interaction session", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x27439B440](v5, -1, -1);
    MEMORY[0x27439B440](v4, -1, -1);
  }
}

void sub_27023F44C()
{
  v0 = [objc_opt_self() tokenForCurrentProcess];
  v1 = sub_270240410();
  v2 = [v0 hasEntitlement_];

  if ((v2 & 1) == 0)
  {
    if (qword_2807C7718 != -1)
    {
      swift_once();
    }

    v3 = sub_270240400();
    __swift_project_value_buffer(v3, qword_2807C7E60);
    oslog = sub_2702403E0();
    v4 = sub_270240470();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_27023B000, oslog, v4, "Missing com.apple.private.hid.client.event-dispatch.internal entitlement. Some interactions might be non-functional.", v5, 2u);
      MEMORY[0x27439B440](v5, -1, -1);
    }
  }
}

uint64_t sub_27023F5B8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_27023F62C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_27023F688(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_27023F688(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_27023F754(v11, 0, 0, 1, a1, a2);
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
    sub_27023D02C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_27023F754(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_27023F860(a5, a6);
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
    result = sub_2702404D0();
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

void *sub_27023F860(uint64_t a1, unint64_t a2)
{
  v3 = sub_27023F8AC(a1, a2);
  sub_27023F9DC(&unk_2880325D0);
  return v3;
}

void *sub_27023F8AC(uint64_t a1, unint64_t a2)
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

  v6 = sub_27023FAC8(v5, 0);
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

  result = sub_2702404D0();
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
        v10 = sub_270240420();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_27023FAC8(v10, 0);
        result = sub_2702404C0();
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

uint64_t sub_27023F9DC(uint64_t result)
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

  result = sub_27023FB3C(result, v11, 1, v3);
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

void *sub_27023FAC8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C7B58, &qword_2702413E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_27023FB3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C7B58, &qword_2702413E0);
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

_BYTE **sub_27023FC30(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t dispatch thunk of InteractionSession.perform(target:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 168) + **(*v3 + 168));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_27023D6F4;

  return v10(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for InteractionSession.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InteractionSession.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27023FF80()
{
  result = qword_2807C7B50;
  if (!qword_2807C7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C7B50);
  }

  return result;
}

uint64_t sub_27023FFD4()
{
  v0 = sub_270240400();
  __swift_allocate_value_buffer(v0, qword_2807C7E60);
  __swift_project_value_buffer(v0, qword_2807C7E60);
  return sub_2702403F0();
}

uint64_t sub_270240054()
{
  v0 = sub_270240400();
  __swift_allocate_value_buffer(v0, qword_2807C7E78);
  __swift_project_value_buffer(v0, qword_2807C7E78);
  return sub_2702403F0();
}

uint64_t sub_2702400D4()
{
  v0 = sub_270240400();
  __swift_allocate_value_buffer(v0, qword_2807C7E90);
  __swift_project_value_buffer(v0, qword_2807C7E90);
  return sub_2702403F0();
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

uint64_t sub_2702401B4()
{
  v0 = sub_270240400();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_270240380();
  __swift_allocate_value_buffer(v4, qword_2807C7EA8);
  __swift_project_value_buffer(v4, qword_2807C7EA8);
  if (qword_2807C7720 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_2807C7E78);
  (*(v1 + 16))(v3, v5, v0);
  return sub_270240360();
}