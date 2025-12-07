uint64_t sub_2755D4B88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D78, &qword_2755F3850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2755D4C00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2755EC61C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2755D4C48()
{
  result = qword_2809F9D90;
  if (!qword_2809F9D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9D90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BubbleBannerEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BubbleBannerEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2755D4EFC()
{
  result = qword_2809F9D98;
  if (!qword_2809F9D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9D98);
  }

  return result;
}

unint64_t sub_2755D4F50()
{
  result = qword_2809F9CA8;
  if (!qword_2809F9CA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809F9CA8);
  }

  return result;
}

unint64_t sub_2755D4F9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DB0, qword_2755F39B8);
    v3 = sub_2755ECC6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2755750C0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_2755D5134(uint64_t a1, uint64_t a2)
{
  sub_275578CDC(a1, v10, &qword_2809F9CF8, &qword_2755F3F10);
  v3 = v11;
  if (v11)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v10, v11);
    v5 = *(v3 - 8);
    MEMORY[0x28223BE20](v4, v4);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = sub_2755ECCFC();
    (*(v5 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2755EC95C();
  [v2 setObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

void sub_2755D52A4(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_2755EC95C();
  [v2 removeObjectForKey_];
}

void sub_2755D533C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v22[1] = a5;
  v23[1] = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DC0, &qword_2755F39E8);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v22 - v13;
  sub_275578CDC(a3, v22 - v13, &qword_2809F9DC0, &qword_2755F39E8);
  v15 = sub_2755EC58C();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v17 = sub_2755EC53C();
    (*(v16 + 8))(v14, v15);
  }

  v23[0] = 0;
  v18 = [v6 URLForDirectory:a1 inDomain:a2 appropriateForURL:v17 create:a4 & 1 error:v23];

  v19 = v23[0];
  if (v18)
  {
    sub_2755EC54C();
    v20 = v19;
  }

  else
  {
    v21 = v23[0];
    sub_2755EC50C();

    swift_willThrow();
  }
}

id sub_2755D5550(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v11[1] = *MEMORY[0x277D85DE8];
  v7 = sub_2755EC53C();
  if (a3)
  {
    type metadata accessor for FileAttributeKey();
    sub_2755DE854(&qword_2809F9E08, 255, type metadata accessor for FileAttributeKey, &unk_2755F3E98);
    a3 = sub_2755EC8FC();
  }

  v11[0] = 0;
  v8 = [v4 createDirectoryAtURL:v7 withIntermediateDirectories:a2 & 1 attributes:a3 error:v11];

  if (v8)
  {
    return v11[0];
  }

  v10 = v11[0];
  sub_2755EC50C();

  return swift_willThrow();
}

id sub_2755D5698(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_2755EC95C();
  v4 = [v2 fileExistsAtPath_];

  return v4;
}

uint64_t sub_2755D56FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2755D5798;

  return ICQLiftUIDataSource.data(for:)(a2);
}

uint64_t sub_2755D5798(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x2822009F8](sub_2755D58F4);
  }
}

uint64_t sub_2755D58F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v1[1].i64[1] = MEMORY[0x277CC9318];
  v1[2].i64[0] = &off_288430AD8;
  *v1 = vextq_s8(v2, v2, 8uLL);
  return (*(v0 + 8))();
}

uint64_t sub_2755D5954(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2755D59F4;

  return ICQLiftUIDataSource.data(for:)(a2);
}

uint64_t sub_2755D59F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x2822009F8](sub_2755DE8A0);
  }
}

uint64_t sub_2755D5B50()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v8 = sub_2755CDAE8(0, &qword_280C84E78, 0x277CBEBD0);
  v9 = &off_288430A90;
  *&v7 = v0;
  v1 = [objc_opt_self() defaultManager];
  v5 = sub_2755CDAE8(0, qword_280C84E80, 0x277CCAA00);
  v6 = &off_288430AB0;
  *&v4 = v1;
  type metadata accessor for LiftUICache();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_27557645C(&v7, v2 + 112);
  result = sub_27557645C(&v4, v2 + 152);
  qword_280C850D8 = v2;
  return result;
}

uint64_t *sub_2755D5C44()
{
  if (qword_280C850D0 != -1)
  {
    swift_once();
  }

  return &qword_280C850D8;
}

uint64_t static LiftUICache.shared.getter()
{
  if (qword_280C850D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2755D5CF0(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_27557645C(a1, v4 + 112);
  sub_27557645C(a2, v4 + 152);
  return v4;
}

uint64_t sub_2755D5D50(__int128 *a1, __int128 *a2)
{
  swift_defaultActor_initialize();
  sub_27557645C(a1, v2 + 112);
  sub_27557645C(a2, v2 + 152);
  return v2;
}

uint64_t sub_2755D5E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2755EC58C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v18 - v12;
  v14 = sub_2755ECA9C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v7 + 16))(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v15 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a2;
  (*(v7 + 32))(&v16[v15], &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *&v16[(v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8] = a1;

  sub_2755CEE70(0, 0, v13, &unk_2755F3D20, v16);
}

uint64_t sub_2755D6014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v10 = (*(*a4 + 120) + **(*a4 + 120));
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_2755D6140;

  return v10(a5);
}

uint64_t sub_2755D6140()
{

  return MEMORY[0x2822009F8](sub_2755D623C);
}

uint64_t sub_2755D623C()
{
  MEMORY[0x277C7C7E0]();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2755D629C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_275578CDC(a3, v26 - v11, &qword_2809F9CE8, &qword_2755F3690);
  v13 = sub_2755ECA9C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2755756C0(v12, &qword_2809F9CE8, &qword_2755F3690);
  }

  else
  {
    sub_2755ECA8C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2755ECA5C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2755EC99C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DF0, &unk_2755F3A30);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DF0, &unk_2755F3A30);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2755D66D4(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = sub_2755EC82C();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2755D6794);
}

uint64_t sub_2755D6794()
{
  v1 = [objc_opt_self() defaultStore];
  v0[29] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_2755D68D8;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DB8, &unk_2755F39D0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2755D6F28;
    v0[13] = &block_descriptor_2;
    v0[14] = v3;
    [v2 aa:v0 + 10 primaryAppleAccountWithCompletion:?];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2755D68D8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_2755D6DE4;
  }

  else
  {
    v2 = sub_2755D69F8;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2755D69F8()
{
  v1 = v0[29];
  v2 = v0[23];
  v0[31] = v2;

  if (v2)
  {
    v3 = v0[25];
    v4 = type metadata accessor for ICQLiftUIDataSource();
    v5 = ICQLiftUIDataSource.__allocating_init(account:)(v2);
    v0[21] = v4;
    v0[22] = &off_288430AE8;
    v0[18] = v5;
    v21 = (*(*v3 + 128) + **(*v3 + 128));
    v6 = swift_task_alloc();
    v0[32] = v6;
    *v6 = v0;
    v6[1] = sub_2755D6C64;
    v7 = v0[24];

    return v21(v7, v0 + 18);
  }

  else
  {
    v10 = v0[27];
    v9 = v0[28];
    v11 = v0[26];
    v12 = sub_2755763AC();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_2755EC81C();
    v14 = sub_2755ECB2C();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[27];
    v16 = v0[28];
    v18 = v0[26];
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_275572000, v13, v14, "LiftUI cache failed to get primary account", v19, 2u);
      MEMORY[0x277C7DA70](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_2755D6C64()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 144));

  return MEMORY[0x2822009F8](sub_2755D6D7C);
}

uint64_t sub_2755D6D7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2755D6DE4()
{
  v1 = v0[29];
  v2 = v0[30];
  swift_willThrow();

  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = sub_2755763AC();
  (*(v4 + 16))(v3, v6, v5);
  v7 = sub_2755EC81C();
  v8 = sub_2755ECB2C();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[27];
  v10 = v0[28];
  v12 = v0[26];
  if (v9)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_275572000, v7, v8, "LiftUI cache failed to get primary account", v13, 2u);
    MEMORY[0x277C7DA70](v13, -1, -1);
  }

  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t sub_2755D6F28(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F9F90, &qword_2755F3A50);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2755D6FF8(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9F10, &qword_2755F39E0);
  v3[27] = swift_task_alloc();
  v4 = sub_2755EC46C();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  v5 = sub_2755EC51C();
  v3[31] = v5;
  v3[32] = *(v5 - 8);
  v3[33] = swift_task_alloc();
  v6 = sub_2755EC64C();
  v3[34] = v6;
  v3[35] = *(v6 - 8);
  v3[36] = swift_task_alloc();
  v7 = sub_2755EC82C();
  v3[37] = v7;
  v3[38] = *(v7 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DC0, &qword_2755F39E8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v8 = sub_2755EC58C();
  v3[47] = v8;
  v3[48] = *(v8 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2755D7344);
}

uint64_t sub_2755D7344()
{
  v135 = v0;
  v1 = v0[26];
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v2);
  v4 = (*(v3 + 8))(0xD000000000000013, 0x80000002755FA570, v2, v3);
  if (v4)
  {
    v5 = sub_2755D9084(v4);

    if (v5)
    {
      v133 = v5;
      v6 = sub_2755EC52C();
      if (*(v5 + 16))
      {
        sub_2755750C0(v6, v7);
        v9 = v8;

        if (v9)
        {
          v10 = v0[47];
          v11 = v0[48];
          v12 = v0[46];

          sub_2755EC56C();

          if ((*(v11 + 48))(v12, 1, v10) == 1)
          {
            sub_2755756C0(v0[46], &qword_2809F9DC0, &qword_2755F39E8);
          }

          else
          {
            v75 = v0[26];
            (*(v0[48] + 32))(v0[57], v0[46], v0[47]);
            v76 = v75[23];
            __swift_project_boxed_opaque_existential_0(v75 + 19, v75[22]);
            v77 = sub_2755EC55C();
            v78 = (*(v76 + 24))(v77);

            if (v78)
            {
              v79 = v0[56];
              v80 = v0[47];
              v81 = v0[48];
              v82 = v0[44];
              v83 = v0[37];
              v84 = v0[38];
              v85 = v0[24];
              v86 = sub_2755763AC();
              (*(v84 + 16))(v82, v86, v83);
              (*(v81 + 16))(v79, v85, v80);
              v87 = sub_2755EC81C();
              v88 = sub_2755ECB0C();
              v89 = os_log_type_enabled(v87, v88);
              v90 = v0[56];
              v91 = v0[48];
              v131 = v0[47];
              v92 = v0[44];
              v94 = v0[37];
              v93 = v0[38];
              if (v89)
              {
                v127 = v0[37];
                v95 = swift_slowAlloc();
                v121 = v88;
                v96 = swift_slowAlloc();
                v134[0] = v96;
                *v95 = 136315138;
                v120 = sub_2755EC52C();
                v124 = v92;
                v98 = v97;
                v99 = v131;
                v132 = *(v91 + 8);
                v132(v90, v99);
                v100 = sub_2755CC688(v120, v98, v134);

                *(v95 + 4) = v100;
                _os_log_impl(&dword_275572000, v87, v121, "LiftUI cache exists for %s deleting", v95, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v96);
                MEMORY[0x277C7DA70](v96, -1, -1);
                MEMORY[0x277C7DA70](v95, -1, -1);

                (*(v93 + 8))(v124, v127);
              }

              else
              {

                v101 = v131;
                v132 = *(v91 + 8);
                v132(v90, v101);
                (*(v93 + 8))(v92, v94);
              }

              sub_2755DCCC4(v0[57]);
              v128 = v0[57];
              v102 = v0[47];
              v103 = sub_2755EC52C();
              sub_2755D92FC(0, 0, v103, v104);
              v105 = v1[17];
              v106 = v1[18];
              __swift_project_boxed_opaque_existential_0(v1 + 14, v105);
              v0[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DE8, &unk_2755F3A00);
              v0[16] = v133;
              v107 = *(v106 + 16);

              v107(v0 + 16, 0xD000000000000013, 0x80000002755FA570, v105, v106);
              v132(v128, v102);
              sub_2755756C0((v0 + 16), &qword_2809F9CF8, &qword_2755F3F10);
            }

            else
            {
              (*(v0[48] + 8))(v0[57], v0[47]);
            }
          }
        }
      }

      else
      {
      }
    }
  }

  v13 = v0[43];
  v14 = v0[38];
  v15 = sub_2755763AC();
  v0[58] = v15;
  v16 = *(v14 + 16);
  v0[59] = v16;
  v0[60] = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v119 = v15;
  v118 = v16;
  (v16)(v13);
  v17 = sub_2755EC81C();
  v18 = sub_2755ECB0C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_275572000, v17, v18, "LiftUI cache creating path URL", v19, 2u);
    MEMORY[0x277C7DA70](v19, -1, -1);
  }

  v20 = v0[48];
  v125 = v0[47];
  v122 = v0[45];
  v21 = v0[43];
  v23 = v0[37];
  v22 = v0[38];
  v24 = v0[35];
  v25 = v0[36];
  v26 = v0[34];
  v27 = v0[26];

  v28 = *(v22 + 8);
  v0[61] = v28;
  v29 = v23;
  v30 = v28;
  v28(v21, v29);
  sub_2755EC63C();
  v117 = sub_2755EC62C();
  v32 = v31;
  (*(v24 + 8))(v25, v26);
  v33 = v27[22];
  v34 = v27[23];
  __swift_project_boxed_opaque_existential_0(v27 + 19, v33);
  (*(v20 + 56))(v122, 1, 1, v125);
  (*(v34 + 8))(9, 1, v122, 1, v33, v34);
  v123 = v27;
  v126 = v30;
  v129 = v0[48];
  v114 = v0[47];
  v115 = v0[52];
  v109 = v0[53];
  v110 = v0[42];
  v112 = v0[37];
  v35 = v0[32];
  v36 = v0[33];
  v37 = v0[31];
  sub_2755756C0(v0[45], &qword_2809F9DC0, &qword_2755F39E8);
  v0[20] = 0x2F69757466696CLL;
  v0[21] = 0xE700000000000000;
  v38 = *MEMORY[0x277CC91D8];
  v108 = *(v35 + 104);
  v108(v36, v38, v37);
  sub_2755DC500();
  sub_2755EC57C();
  v39 = *(v35 + 8);
  v39(v36, v37);
  v0[22] = v117;
  v0[23] = v32;
  v108(v36, v38, v37);
  sub_2755EC57C();
  v39(v36, v37);

  v118(v110, v119, v112);
  v40 = *(v129 + 16);
  v0[62] = v40;
  v0[63] = (v129 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v40(v115, v109, v114);
  v41 = sub_2755EC81C();
  v42 = sub_2755ECB0C();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v0[52];
  v45 = v0[47];
  v46 = v0[48];
  v47 = v0[42];
  v48 = v0[37];
  if (v43)
  {
    v116 = v0[37];
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v134[0] = v50;
    *v49 = 136315138;
    v51 = sub_2755EC52C();
    v113 = v47;
    v53 = v52;
    v111 = v42;
    v54 = *(v46 + 8);
    v54(v44, v45);
    v55 = sub_2755CC688(v51, v53, v134);

    *(v49 + 4) = v55;
    _os_log_impl(&dword_275572000, v41, v111, "LiftUI cache path url: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x277C7DA70](v50, -1, -1);
    MEMORY[0x277C7DA70](v49, -1, -1);

    v56 = v113;
    v57 = v116;
  }

  else
  {

    v54 = *(v46 + 8);
    v54(v44, v45);
    v56 = v47;
    v57 = v48;
  }

  v126(v56, v57);
  v0[64] = v54;
  v58 = v0[54];
  v59 = v123[22];
  v60 = v123[23];
  __swift_project_boxed_opaque_existential_0(v123 + 19, v59);
  (*(v60 + 16))(v58, 1, 0, v59, v60);
  v62 = v0[24];
  v61 = v0[25];
  v63 = v61[3];
  v64 = v61[4];
  __swift_project_boxed_opaque_existential_0(v61, v63);
  (*(v64 + 8))(v62, v63, v64);
  v66 = v0[29];
  v65 = v0[30];
  v68 = v0[27];
  v67 = v0[28];
  v69 = v0[25];
  (*(v66 + 56))(v68, 0, 1, v67);
  (*(v66 + 32))(v65, v68, v67);
  v71 = v61[3];
  v70 = v61[4];
  __swift_project_boxed_opaque_existential_0(v69, v71);
  v130 = (*(v70 + 16) + **(v70 + 16));
  v72 = swift_task_alloc();
  v0[65] = v72;
  *v72 = v0;
  v72[1] = sub_2755D8498;
  v73 = v0[30];

  return v130(v0 + 7, v73, v71, v70);
}

uint64_t sub_2755D8498()
{
  *(*v1 + 528) = v0;

  if (v0)
  {

    v2 = sub_2755D8C38;
  }

  else
  {
    v2 = sub_2755D85D0;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2755D85D0()
{
  v62 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 424);
  sub_27557645C((v0 + 56), v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v3);
  (*(v4 + 8))(v2, 0, v3, v4);
  if (v1)
  {
    v5 = *(v0 + 512);
    v6 = *(v0 + 432);
    v7 = *(v0 + 440);
    v8 = *(v0 + 424);
    v9 = *(v0 + 376);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    v5(v8, v9);
    v5(v6, v9);
    v5(v7, v9);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v11 = *(v0 + 384);
    v10 = *(v0 + 392);
    v12 = *(v0 + 376);
    v13 = *(v0 + 192);
    (*(v0 + 472))(*(v0 + 312), *(v0 + 464), *(v0 + 296));
    (*(v11 + 16))(v10, v13, v12);
    v14 = v1;
    v15 = sub_2755EC81C();
    v16 = sub_2755ECB1C();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 488);
    v20 = *(v0 + 384);
    v19 = *(v0 + 392);
    v21 = *(v0 + 376);
    v22 = *(v0 + 312);
    v23 = *(v0 + 296);
    if (v17)
    {
      v59 = *(v0 + 312);
      v24 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v61 = v57;
      *v24 = 136315394;
      sub_2755DE854(&qword_2809F9DC8, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v54 = v23;
      v55 = v18;
      v25 = sub_2755ECCDC();
      v27 = v26;
      (*(v20 + 8))(v19, v21);
      v28 = sub_2755CC688(v25, v27, &v61);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2112;
      v29 = v1;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v30;
      *v52 = v30;
      _os_log_impl(&dword_275572000, v15, v16, "Failed to save LiftUI content at %s with error: %@", v24, 0x16u);
      sub_2755756C0(v52, &qword_2809F9DD0, &qword_2755F39F0);
      MEMORY[0x277C7DA70](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x277C7DA70](v57, -1, -1);
      MEMORY[0x277C7DA70](v24, -1, -1);

      v55(v59, v54);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
      v18(v22, v23);
    }
  }

  else
  {
    v31 = *(v0 + 208);
    v32 = v31[17];
    v33 = v31[18];
    __swift_project_boxed_opaque_existential_0(v31 + 14, v32);
    v34 = (*(v33 + 8))(0xD000000000000013, 0x80000002755FA570, v32, v33);
    if (!v34 || (v35 = sub_2755D9084(v34), , !v35))
    {
      v35 = sub_2755DCF5C(MEMORY[0x277D84F90]);
    }

    v60 = *(v0 + 440);
    v56 = *(v0 + 512);
    v58 = *(v0 + 432);
    v36 = *(v0 + 376);
    v37 = *(v0 + 232);
    v53 = *(v0 + 240);
    v50 = *(v0 + 424);
    v51 = *(v0 + 224);
    v38 = *(v0 + 208);
    v39 = sub_2755EC52C();
    v41 = v40;
    v42 = sub_2755EC52C();
    v44 = v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v35;
    sub_2755DC9C4(v42, v44, v39, v41, isUniquelyReferenced_nonNull_native);

    v46 = v38[17];
    v47 = v38[18];
    __swift_project_boxed_opaque_existential_0(v38 + 14, v46);
    *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DE8, &unk_2755F3A00);
    *(v0 + 96) = v35;
    (*(v47 + 16))(v0 + 96, 0xD000000000000013, 0x80000002755FA570, v46, v47);
    (*(v37 + 8))(v53, v51);
    v56(v50, v36);
    v56(v58, v36);
    v56(v60, v36);
    sub_2755756C0(v0 + 96, &qword_2809F9CF8, &qword_2755F3F10);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_2755D8C38()
{
  v37 = v0;
  *(v0 + 56) = 0u;
  loga = *(v0 + 496);
  v1 = *(v0 + 472);
  v2 = *(v0 + 464);
  v3 = *(v0 + 408);
  v4 = *(v0 + 376);
  v5 = *(v0 + 328);
  v6 = *(v0 + 296);
  v7 = *(v0 + 192);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  sub_2755756C0(v0 + 56, &qword_2809F9DE0, &qword_2755F39F8);
  v1(v5, v2, v6);
  (loga)(v3, v7, v4);
  v8 = sub_2755EC81C();
  v28 = sub_2755ECB1C();
  log = v8;
  v9 = os_log_type_enabled(v8, v28);
  v10 = *(v0 + 512);
  v35 = *(v0 + 488);
  v12 = *(v0 + 432);
  v11 = *(v0 + 440);
  v13 = *(v0 + 424);
  v14 = *(v0 + 408);
  v15 = *(v0 + 376);
  v29 = *(v0 + 296);
  v30 = *(v0 + 328);
  v16 = *(v0 + 232);
  v31 = *(v0 + 224);
  v32 = *(v0 + 240);
  if (v9)
  {
    v17 = swift_slowAlloc();
    v27 = v11;
    v18 = swift_slowAlloc();
    v36 = v18;
    *v17 = 136315138;
    sub_2755DE854(&qword_2809F9DC8, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v25 = v13;
    v26 = v12;
    v19 = sub_2755ECCDC();
    v21 = v20;
    v10(v14, v15);
    v22 = sub_2755CC688(v19, v21, &v36);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_275572000, log, v28, "Failed to fetch LiftUI content at %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x277C7DA70](v18, -1, -1);
    MEMORY[0x277C7DA70](v17, -1, -1);

    v35(v30, v29);
    (*(v16 + 8))(v32, v31);
    v10(v25, v15);
    v10(v26, v15);
    v10(v27, v15);
  }

  else
  {

    v10(v14, v15);
    v35(v30, v29);
    (*(v16 + 8))(v32, v31);
    v10(v13, v15);
    v10(v12, v15);
    v10(v11, v15);
  }

  v23 = *(v0 + 8);

  return v23();
}

unint64_t sub_2755D9084(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E20, &unk_2755F3D08);
    v2 = sub_2755ECC6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v13);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v6)) | (v13 << 6);
        v15 = (*(v1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_2755CDA88(*(v1 + 56) + 32 * v14, v29);
        *&v28 = v16;
        *(&v28 + 1) = v17;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v18 = v28;
        sub_275578D44(v27, v26);

        if (!swift_dynamicCast())
        {
          break;
        }

        v6 &= v6 - 1;
        result = sub_2755750C0(v18, *(&v18 + 1));
        if (v19)
        {
          v10 = v1;
          v11 = 16 * result;
          *(v2[6] + 16 * result) = v18;

          v12 = (v2[7] + v11);
          v1 = v10;
          *v12 = v24;
          v12[1] = v25;

          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v18;
          v20 = (v2[7] + 16 * result);
          *v20 = v24;
          v20[1] = v25;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v9;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2755D92FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_2755DC9C4(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_2755750C0(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_2755DCB4C();
        v16 = v18;
      }

      result = sub_2755DC814(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_2755D9404(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_2755EC58C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2755D9504);
}

uint64_t sub_2755D9504()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = sub_2755ECA9C();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  (*(v3 + 16))(v1, v6, v4);
  v8 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 4) = v5;
  (*(v3 + 32))(&v9[v8], v1, v4);

  v10 = sub_2755D629C(0, 0, v2, &unk_2755F3A28, v9);
  v0[11] = v10;
  v11 = swift_task_alloc();
  v0[12] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DF0, &unk_2755F3A30);
  *v11 = v0;
  v11[1] = sub_2755D96C0;

  return MEMORY[0x282200460](v0 + 2, v10, v12);
}

uint64_t sub_2755D96C0()
{

  return MEMORY[0x2822009F8](sub_2755D97D8);
}

uint64_t sub_2755D97D8()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_2755D9854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = (*(*a4 + 144) + **(*a4 + 144));
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_2755D9980;

  return v9(a5);
}

uint64_t sub_2755D9980(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return MEMORY[0x2822009F8](sub_2755D9A80);
}

uint64_t sub_2755D9C2C(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = sub_2755EC58C();
  v3[3] = v5;
  v3[4] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[5] = v6;
  v3[6] = _Block_copy(a2);
  sub_2755EC54C();

  v7 = swift_task_alloc();
  v3[7] = v7;
  *v7 = v3;
  v7[1] = sub_2755D9D58;

  return sub_2755D9404(v6);
}

uint64_t sub_2755D9D58(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *v2;

  (*(v7 + 8))(v6, v8);
  if (a2 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_2755EC5AC();
    sub_2755DE450(a1, a2);
  }

  v11 = *(v5 + 48);
  (v11)[2](v11, v10);

  _Block_release(v11);

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_2755D9F38(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_2755EC58C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2755DA038);
}

uint64_t sub_2755DA038()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  v8 = sub_2755ECA9C();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  (*(v4 + 16))(v2, v7, v6);
  v10 = sub_2755DE854(&qword_2809F9DF8, v9, type metadata accessor for LiftUICache, &protocol conformance descriptor for LiftUICache);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  *(v13 + 24) = v10;
  (*(v4 + 32))(v13 + v11, v2, v6);
  *(v13 + v12) = v5;
  swift_retain_n();
  v14 = sub_2755DB5A0(0, 0, v1, &unk_2755F3A48, v13);
  v0[11] = v14;
  v15 = swift_task_alloc();
  v0[12] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F9F90, &qword_2755F3A50);
  *v15 = v0;
  v15[1] = sub_2755DA254;
  v17 = MEMORY[0x277CC9318];
  v18 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 2, v14, v17, v16, v18);
}

uint64_t sub_2755DA254()
{

  if (v0)
  {

    v1 = sub_2755DA42C;
  }

  else
  {

    v1 = sub_2755DA3B0;
  }

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_2755DA3B0()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_2755DA42C()
{

  v1 = *(v0 + 8);

  return v1(0, 0xF000000000000000);
}

uint64_t sub_2755DA49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DC0, &qword_2755F39E8);
  v5[9] = swift_task_alloc();
  v6 = sub_2755EC58C();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v7 = sub_2755EC82C();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2755DA664);
}

void *sub_2755DA664()
{
  v132 = v0;
  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[7];
  v119 = sub_2755763AC();
  v122 = *(v2 + 16);
  v122(v1);
  v125 = *(v5 + 16);
  v125(v3, v6, v4);
  v7 = sub_2755EC81C();
  v8 = sub_2755ECB0C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[24];
  v11 = v0[18];
  v12 = v0[19];
  v13 = v0[17];
  v15 = v0[10];
  v14 = v0[11];
  if (v9)
  {
    v117 = v8;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v131[0] = v17;
    *v16 = 136315138;
    sub_2755DE854(&qword_2809F9DC8, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v111 = v11;
    v114 = v10;
    v18 = sub_2755ECCDC();
    v20 = v19;
    v118 = *(v14 + 8);
    v118(v13, v15);
    v21 = sub_2755CC688(v18, v20, v131);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_275572000, v7, v117, "Fetching LiftUI content at %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x277C7DA70](v17, -1, -1);
    MEMORY[0x277C7DA70](v16, -1, -1);

    v22 = *(v12 + 8);
    v22(v114, v111);
  }

  else
  {

    v118 = *(v14 + 8);
    v118(v13, v15);
    v22 = *(v12 + 8);
    v22(v10, v11);
  }

  v23 = v0[8];
  v24 = v23[17];
  v25 = v23[18];
  __swift_project_boxed_opaque_existential_0(v23 + 14, v24);
  v26 = (*(v25 + 8))(0xD000000000000013, 0x80000002755FA570, v24, v25);
  if (!v26 || (v27 = sub_2755D9084(v26), , !v27))
  {
LABEL_12:
    v35 = v0[13];
    v36 = v0[10];
    v37 = v0[7];
    (v122)(v0[21], v119, v0[18]);
    v125(v35, v37, v36);
    v38 = sub_2755EC81C();
    v39 = sub_2755ECB0C();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[21];
    v128 = v0[18];
    v42 = v0[13];
    v43 = v0[10];
    if (v40)
    {
      v44 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v131[0] = v123;
      *v44 = 136315138;
      sub_2755DE854(&qword_2809F9DC8, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v115 = v22;
      v45 = sub_2755ECCDC();
      v120 = v41;
      v47 = v46;
      v118(v42, v43);
      v48 = sub_2755CC688(v45, v47, v131);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_275572000, v38, v39, "No cached LiftUI data for %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v123);
      MEMORY[0x277C7DA70](v123, -1, -1);
      MEMORY[0x277C7DA70](v44, -1, -1);

      v115(v120, v128);
    }

    else
    {

      v118(v42, v43);
      v22(v41, v128);
    }

    v49 = v23[17];
    v50 = v23[18];
    __swift_project_boxed_opaque_existential_0(v23 + 14, v49);
    v51 = (*(v50 + 8))(0xD000000000000013, 0x80000002755FA570, v49, v50);
    if (v51)
    {
      v52 = sub_2755D9084(v51);

      if (v52)
      {
        v131[0] = v52;
        v53 = sub_2755EC52C();
        sub_2755D92FC(0, 0, v53, v54);
        v55 = v23[17];
        v56 = v23[18];
        __swift_project_boxed_opaque_existential_0(v23 + 14, v55);
        v57 = v131[0];
        v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DE8, &unk_2755F3A00);
        v0[2] = v57;
        (*(v56 + 16))(v0 + 2, 0xD000000000000013, 0x80000002755FA570, v55, v56);
        sub_2755756C0((v0 + 2), &qword_2809F9CF8, &qword_2755F3F10);
      }
    }

    sub_2755DE508();
    swift_allocError();
    swift_willThrow();

    v58 = v0[1];
    goto LABEL_19;
  }

  v28 = sub_2755EC52C();
  if (!*(v27 + 16))
  {

    goto LABEL_11;
  }

  sub_2755750C0(v28, v29);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v32 = v0[10];
  v33 = v0[11];
  v34 = v0[9];

  sub_2755EC56C();

  if ((*(v33 + 48))(v34, 1, v32) == 1)
  {
    sub_2755756C0(v0[9], &qword_2809F9DC0, &qword_2755F39E8);
    goto LABEL_12;
  }

  v116 = v22;
  v60 = v0[23];
  v61 = v0[18];
  v63 = v0[15];
  v62 = v0[16];
  v64 = v0[10];
  (*(v0[11] + 32))(v62, v0[9], v64);
  (v122)(v60, v119, v61);
  v125(v63, v62, v64);
  v65 = sub_2755EC81C();
  v66 = sub_2755ECB0C();
  v67 = os_log_type_enabled(v65, v66);
  v68 = v0[23];
  v69 = v0[18];
  v70 = v0[15];
  v71 = v0[10];
  if (v67)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v131[0] = v73;
    *v72 = 136315138;
    sub_2755DE854(&qword_2809F9DC8, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v109 = v69;
    v112 = v68;
    v74 = sub_2755ECCDC();
    v76 = v75;
    v77 = v118;
    v118(v70, v71);
    v78 = sub_2755CC688(v74, v76, v131);

    *(v72 + 4) = v78;
    _os_log_impl(&dword_275572000, v65, v66, "Cache file path: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x277C7DA70](v73, -1, -1);
    MEMORY[0x277C7DA70](v72, -1, -1);

    v80 = v109;
    v79 = v112;
  }

  else
  {

    v77 = v118;
    v118(v70, v71);
    v79 = v68;
    v80 = v69;
  }

  v116(v79, v80);
  v81 = v0[16];
  v82 = v0[8];
  v83 = v82[22];
  v84 = v82[23];
  __swift_project_boxed_opaque_existential_0(v82 + 19, v83);
  v85 = (*(v84 + 32))(v81, v83, v84);
  v87 = v86;
  v88 = v0[14];
  v89 = v0[10];
  v90 = v0[7];
  (v122)(v0[22], v119, v0[18]);
  v125(v88, v90, v89);
  sub_2755DE55C(v85, v87);
  v91 = sub_2755EC81C();
  v92 = sub_2755ECB0C();
  v110 = v85;
  v113 = v87;
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    result = swift_slowAlloc();
    v129 = result;
    v131[0] = result;
    *v93 = 134218242;
    v94 = v87 >> 62;
    if ((v87 >> 62) > 1)
    {
      if (v94 != 2)
      {
        v95 = 0;
        goto LABEL_37;
      }

      v100 = *(v85 + 16);
      v99 = *(v85 + 24);
      v101 = __OFSUB__(v99, v100);
      v95 = v99 - v100;
      if (!v101)
      {
        goto LABEL_37;
      }

      __break(1u);
    }

    else if (!v94)
    {
      v95 = BYTE6(v87);
LABEL_37:
      v121 = v0[18];
      v124 = v0[22];
      v127 = v0[16];
      v102 = v0[14];
      v103 = v0[10];
      *(v93 + 4) = v95;
      sub_2755DE464(v85, v87);
      *(v93 + 12) = 2080;
      sub_2755DE854(&qword_2809F9DC8, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v104 = sub_2755ECCDC();
      v106 = v105;
      v118(v102, v103);
      v107 = sub_2755CC688(v104, v106, v131);

      *(v93 + 14) = v107;
      _os_log_impl(&dword_275572000, v91, v92, "Fetched LiftUI content (%ld bytes) at %s", v93, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v129);
      MEMORY[0x277C7DA70](v129, -1, -1);
      MEMORY[0x277C7DA70](v93, -1, -1);

      v116(v124, v121);
      v118(v127, v103);
      goto LABEL_38;
    }

    LODWORD(v95) = HIDWORD(v85) - v85;
    if (__OFSUB__(HIDWORD(v85), v85))
    {
      __break(1u);
      return result;
    }

    v95 = v95;
    goto LABEL_37;
  }

  v96 = v0[18];
  v126 = v0[22];
  v130 = v0[16];
  v97 = v0[14];
  v98 = v0[10];

  sub_2755DE464(v85, v87);
  v77(v97, v98);
  v116(v126, v96);
  v77(v130, v98);
LABEL_38:
  v108 = v0[6];
  *v108 = v110;
  v108[1] = v113;

  v58 = v0[1];
LABEL_19:

  return v58();
}

uint64_t sub_2755DB5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_275578CDC(a3, v23 - v10, &qword_2809F9CE8, &qword_2755F3690);
  v12 = sub_2755ECA9C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2755756C0(v11, &qword_2809F9CE8, &qword_2755F3690);
  }

  else
  {
    sub_2755ECA8C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2755ECA5C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2755EC99C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);

      return v21;
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

  sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

id sub_2755DB89C(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2755EC53C();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_2755EC58C();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_2755EC50C();

    swift_willThrow();
    v9 = sub_2755EC58C();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t LiftUICache.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t LiftUICache.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2755DBAA0()
{
  sub_2755ECD7C();
  MEMORY[0x277C7CE10](0);
  return sub_2755ECD9C();
}

uint64_t sub_2755DBAE4(uint64_t a1)
{
  sub_2755ECD7C();
  MEMORY[0x277C7CE10](0);
  return sub_2755ECD9C();
}

uint64_t sub_2755DBB34()
{
  v0 = sub_2755EC98C();
  v1 = MEMORY[0x277C7CA50](v0);

  return v1;
}

uint64_t sub_2755DBB70(uint64_t a1)
{
  sub_2755EC98C();
  sub_2755EC9AC();
}

uint64_t sub_2755DBBC4(uint64_t a1)
{
  sub_2755EC98C();
  sub_2755ECD7C();
  sub_2755EC9AC();
  v1 = sub_2755ECD9C();

  return v1;
}

uint64_t sub_2755DBC40(uint64_t a1, id *a2)
{
  result = sub_2755EC96C();
  *a2 = 0;
  return result;
}

uint64_t sub_2755DBCB8(uint64_t a1, id *a2)
{
  v3 = sub_2755EC97C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2755DBD38@<X0>(uint64_t *a2@<X8>)
{
  sub_2755EC98C();
  v3 = sub_2755EC95C();

  *a2 = v3;
  return result;
}

uint64_t sub_2755DBD7C(void *a1, uint64_t *a2)
{
  v2 = sub_2755EC98C();
  v4 = v3;
  if (v2 == sub_2755EC98C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2755ECD0C();
  }

  return v7 & 1;
}

uint64_t sub_2755DBE04@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2755EC95C();

  *a2 = v3;
  return result;
}

uint64_t sub_2755DBE4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2755EC98C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2755DBE78(uint64_t a1)
{
  v2 = sub_2755DE854(&qword_2809F9E08, 255, type metadata accessor for FileAttributeKey, &unk_2755F3E98);
  v3 = sub_2755DE854(&qword_2809F9E48, 255, type metadata accessor for FileAttributeKey, &unk_2755F3DEC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2755DBF3C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_275577558;

  return v6();
}

uint64_t sub_2755DC024(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_27557726C;

  return v7();
}

uint64_t sub_2755DC10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v24 - v11;
  sub_275578CDC(a3, v24 - v11, &qword_2809F9CE8, &qword_2755F3690);
  v13 = sub_2755ECA9C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2755756C0(v12, &qword_2809F9CE8, &qword_2755F3690);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2755ECA8C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_2755ECA5C();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_2755EC99C() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);

    return v22;
  }

LABEL_8:
  sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2755DC408(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_27557770C;

  return v6(a1);
}

unint64_t sub_2755DC500()
{
  result = qword_2809F9DD8;
  if (!qword_2809F9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9DD8);
  }

  return result;
}

uint64_t sub_2755DC554(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E20, &unk_2755F3D08);
  v37 = v4;
  result = sub_2755ECC5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_2755ECD7C();
      sub_2755EC9AC();
      result = sub_2755ECD9C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2755DC814(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2755ECBDC() + 1) & ~v5;
    do
    {
      sub_2755ECD7C();

      sub_2755EC9AC();
      v9 = sub_2755ECD9C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2755DC9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2755750C0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_2755DC554(v18, a5 & 1);
      v13 = sub_2755750C0(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_2755ECD2C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_2755DCB4C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_2755DCB4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E20, &unk_2755F3D08);
  v2 = *v0;
  v3 = sub_2755ECC4C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

  return result;
}

void sub_2755DCCC4(uint64_t a1)
{
  v21[11] = *MEMORY[0x277D85DE8];
  v3 = sub_2755EC58C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2755CDAE8(0, &qword_2809F9E18, 0x277CCA9F8);
  v8 = *(v4 + 16);
  v8(v7, a1, v3);
  v9 = sub_2755DB89C(v7);
  if (!v1)
  {
    v10 = v9;
    v11 = [v9 fileDescriptor];
    v21[0] = 66053;
    v12 = ffsctl(v11, 0xC0084A44uLL, v21, 0);
    if (v12)
    {
      v13 = *MEMORY[0x277CCA5B8];
      v14 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D08, &unk_2755F3CF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2755F3680;
      *(inited + 32) = sub_2755EC98C();
      *(inited + 40) = v16;
      *(inited + 72) = v3;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
      v8(boxed_opaque_existential_0, a1, v3);
      v18 = v13;
      sub_275578BAC(inited);
      swift_setDeallocating();
      sub_2755756C0(inited + 32, &qword_2809F9D10, &qword_2755F3730);
      v19 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v20 = sub_2755EC8FC();

      [v19 initWithDomain:v18 code:v14 userInfo:v20];

      swift_willThrow();
    }
  }
}

unint64_t sub_2755DCF5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E20, &unk_2755F3D08);
    v3 = sub_2755ECC6C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2755750C0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_2755DD070(uint64_t a1)
{
  v4 = *(sub_2755EC58C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_275577558;

  return sub_2755D9854(a1, v7, v8, v6, v1 + v5);
}

uint64_t sub_2755DD178(uint64_t a1)
{
  v4 = *(sub_2755EC58C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27557726C;

  return sub_2755DA49C(a1, v7, v8, v1 + v5, v6);
}

uint64_t sub_2755DD284(uint64_t *a1)
{
  v2 = sub_2755EC82C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v57 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DC0, &qword_2755F39E8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v51 - v12;
  v14 = sub_2755EC58C();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v56 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v51 - v20;
  v23 = *a1;
  v22 = a1[1];
  sub_2755EC56C();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2755756C0(v13, &qword_2809F9DC0, &qword_2755F39E8);
    v24 = sub_2755763AC();
    (*(v3 + 16))(v7, v24, v2);

    v25 = sub_2755EC81C();
    v26 = sub_2755ECB1C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = v3;
      v29 = swift_slowAlloc();
      v59 = v29;
      *v27 = 136315138;
      *(v27 + 4) = sub_2755CC688(v23, v22, &v59);
      _os_log_impl(&dword_275572000, v25, v26, "Invalid URL was stored in LiftUI cache: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x277C7DA70](v29, -1, -1);
      MEMORY[0x277C7DA70](v27, -1, -1);

      return (*(v28 + 8))(v7, v2);
    }

    else
    {

      return (*(v3 + 8))(v7, v2);
    }
  }

  else
  {
    (*(v15 + 32))(v21, v13, v14);
    v31 = v58;
    sub_2755DCCC4(v21);
    if (v31)
    {
      v32 = sub_2755763AC();
      v33 = *(v3 + 16);
      v34 = v57;
      v58 = v2;
      v33(v57, v32, v2);
      v35 = v56;
      (*(v15 + 16))(v56, v21, v14);
      v36 = v31;
      v37 = sub_2755EC81C();
      v38 = sub_2755ECB1C();

      v55 = v38;
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v54 = v21;
        v40 = v39;
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v59 = v53;
        *v40 = 136315394;
        sub_2755DE854(&qword_2809F9DC8, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v41 = sub_2755ECCDC();
        v43 = v42;
        v44 = *(v15 + 8);
        v44(v35, v14);
        v45 = sub_2755CC688(v41, v43, &v59);

        *(v40 + 4) = v45;
        *(v40 + 12) = 2112;
        v46 = v31;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 14) = v47;
        v48 = v52;
        *v52 = v47;
        _os_log_impl(&dword_275572000, v37, v55, "Failed to mark LiftUI content at %s for purge with error: %@", v40, 0x16u);
        sub_2755756C0(v48, &qword_2809F9DD0, &qword_2755F39F0);
        MEMORY[0x277C7DA70](v48, -1, -1);
        v49 = v53;
        __swift_destroy_boxed_opaque_existential_0(v53);
        MEMORY[0x277C7DA70](v49, -1, -1);
        MEMORY[0x277C7DA70](v40, -1, -1);

        (*(v3 + 8))(v57, v58);
        return (v44)(v54, v14);
      }

      else
      {

        v50 = *(v15 + 8);
        v50(v35, v14);
        (*(v3 + 8))(v34, v58);
        return (v50)(v21, v14);
      }
    }

    else
    {
      return (*(v15 + 8))(v21, v14);
    }
  }
}

unint64_t sub_2755DD8B0()
{
  result = qword_2809F9E00;
  if (!qword_2809F9E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9E00);
  }

  return result;
}

uint64_t sub_2755DDA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_275577558;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LiftUICache.cacheResponse(from:)(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_27557726C;

  return v6(a1);
}

uint64_t dispatch thunk of LiftUICache.fetchResponseForURLObjc(url:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2755DE89C;

  return v6(a1);
}

uint64_t dispatch thunk of LiftUICache.fetchResponse(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2755DDEEC;

  return v6(a1);
}

uint64_t sub_2755DDEEC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t getEnumTagSinglePayload for LiftUICacheError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LiftUICacheError(_WORD *result, int a2, int a3)
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

uint64_t sub_2755DE118()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_275577558;

  return sub_2755D9C2C(v2, v3, v4);
}

uint64_t sub_2755DE1CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_275577558;

  return sub_2755DBF3C(v2, v3, v4);
}

uint64_t objectdestroy_27Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2755DE2CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_275577558;

  return sub_2755DC024(a1, v4, v5, v6);
}

uint64_t sub_2755DE398(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_275577558;

  return sub_2755DC408(a1, v4);
}

uint64_t sub_2755DE450(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2755DE464(result, a2);
  }

  return result;
}

uint64_t sub_2755DE464(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_2809F9E28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2809F9E28);
    }
  }
}

unint64_t sub_2755DE508()
{
  result = qword_2809F9E10;
  if (!qword_2809F9E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9E10);
  }

  return result;
}

uint64_t sub_2755DE55C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2755DE5B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_275577558;

  return sub_275576C48(a1, v4);
}

uint64_t sub_2755DE668()
{
  v2 = *(sub_2755EC58C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_275577558;

  return sub_2755D6014(v6, v7, v8, v4, v0 + v3, v5);
}

uint64_t sub_2755DE854(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_2755DE914()
{
  result = qword_280C85020;
  if (!qword_280C85020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C85020);
  }

  return result;
}

uint64_t sub_2755DE9A0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2755EC82C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  sub_2755DE914();
  sub_2755ECB9C();
  return sub_2755EC83C();
}

uint64_t sub_2755DEACC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2755EC82C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
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

void sub_2755DEBF4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2755EC95C();
  v2 = [v0 initWithSuiteName_];

  v3 = type metadata accessor for AppLaunchLinkTracker();
  v4 = objc_allocWithZone(v3);
  v5 = v2;
  if (!v2)
  {
    v5 = [objc_opt_self() standardUserDefaults];
  }

  *&v4[OBJC_IVAR___ICQAppLaunchLinkTracker_userDefaults] = v5;
  v8.receiver = v4;
  v8.super_class = v3;
  v6 = v2;
  v7 = objc_msgSendSuper2(&v8, sel_init);

  qword_280C850C8 = v7;
}

id sub_2755DECDC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2755EC95C();
  v2 = [v0 initWithSuiteName_];

  return v2;
}

id sub_2755DED48(id a1)
{
  v3 = objc_allocWithZone(v1);
  if (!a1)
  {
    a1 = [objc_opt_self() standardUserDefaults];
  }

  *&v3[OBJC_IVAR___ICQAppLaunchLinkTracker_userDefaults] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t *sub_2755DEDCC()
{
  if (qword_280C850C0 != -1)
  {
    swift_once();
  }

  return &qword_280C850C8;
}

id static AppLaunchLinkTracker.shared.getter()
{
  if (qword_280C850C0 != -1)
  {
    swift_once();
  }

  v1 = qword_280C850C8;

  return v1;
}

id sub_2755DEED4(id a1)
{
  if (!a1)
  {
    a1 = [objc_opt_self() standardUserDefaults];
  }

  *&v1[OBJC_IVAR___ICQAppLaunchLinkTracker_userDefaults] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppLaunchLinkTracker();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_2755DEF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E58, &qword_2755F3F08);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v27 - v9;
  v11 = *(v3 + OBJC_IVAR___ICQAppLaunchLinkTracker_userDefaults);
  v12 = sub_2755EC95C();
  v13 = [v11 objectForKey_];

  if (v13)
  {
    sub_2755ECBAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30[0] = v28;
  v30[1] = v29;
  if (*(&v29 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E68, &qword_2755F3F18);
    if (swift_dynamicCast())
    {
      v14 = v27;
      if (v27)
      {
        if (*(v27 + 16))
        {
          v15 = sub_2755750C0(a1, a2);
          if (v16)
          {
            v17 = (*(v14 + 56) + 16 * v15);
            v18 = *v17;
            v19 = v17[1];
            sub_2755DE55C(*v17, v19);

            sub_2755EC4BC();
            swift_allocObject();
            sub_2755DE55C(v18, v19);
            sub_2755EC4AC();
            v20 = type metadata accessor for AppLaunchEvent(0);
            sub_2755E30EC(&qword_2809F9E60, type metadata accessor for AppLaunchEvent, &unk_2755F3F40);
            sub_2755EC49C();
            sub_2755DE464(v18, v19);

            sub_2755DE464(v18, v19);
            (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
            v23 = *(v20 + 20);
            v24 = sub_2755EC61C();
            v25 = *(v24 - 8);
            (*(v25 + 16))(a3, &v10[v23], v24);
            sub_2755E2130(v10);
            return (*(v25 + 56))(a3, 0, 1, v24);
          }
        }
      }
    }
  }

  else
  {
    sub_2755756C0(v30, &qword_2809F9CF8, &qword_2755F3F10);
  }

  v21 = type metadata accessor for AppLaunchEvent(0);
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  sub_2755756C0(v10, &qword_2809F9E58, &qword_2755F3F08);
  v22 = sub_2755EC61C();
  return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
}

uint64_t sub_2755DF34C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    v4 = type metadata accessor for AppLaunchEvent(0);
    v5 = *(*(v4 - 8) + 56);
    v6 = v4;
    v7 = a3;
    v8 = 1;
  }

  else
  {
    sub_2755EC4BC();
    swift_allocObject();
    sub_2755DE55C(a1, a2);
    sub_2755EC4AC();
    v11 = type metadata accessor for AppLaunchEvent(0);
    sub_2755E30EC(&qword_2809F9E60, type metadata accessor for AppLaunchEvent, &unk_2755F3F40);
    sub_2755EC49C();

    sub_2755DE450(a1, a2);
    v5 = *(*(v11 - 8) + 56);
    v7 = a3;
    v8 = 0;
    v6 = v11;
  }

  return v5(v7, v8, 1, v6);
}

uint64_t type metadata accessor for AppLaunchEvent(uint64_t a1)
{
  result = qword_2809FAD20;
  if (!qword_2809FAD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2755DF698(uint64_t a1, uint64_t a2)
{
  v5 = sub_2755EC6EC();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2755EC48C();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E58, &qword_2755F3F08);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v51 - v14;
  v16 = sub_2755EC61C();
  v58 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v51 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v51 - v26;
  v28 = *(v2 + OBJC_IVAR___ICQAppLaunchLinkTracker_userDefaults);
  v29 = sub_2755EC95C();
  v30 = [v28 objectForKey_];

  if (v30)
  {
    sub_2755ECBAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
  }

  v62[0] = v60;
  v62[1] = v61;
  if (!*(&v61 + 1))
  {
    sub_2755756C0(v62, &qword_2809F9CF8, &qword_2755F3F10);
LABEL_12:
    v38 = type metadata accessor for AppLaunchEvent(0);
    (*(*(v38 - 8) + 56))(v15, 1, 1, v38);
    sub_2755756C0(v15, &qword_2809F9E58, &qword_2755F3F08);
    return -1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E68, &qword_2755F3F18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v31 = v59;
  if (!v59)
  {
    goto LABEL_12;
  }

  if (!*(v59 + 16) || (v32 = sub_2755750C0(a1, a2), (v33 & 1) == 0))
  {

    goto LABEL_12;
  }

  v34 = (*(v31 + 56) + 16 * v32);
  v36 = *v34;
  v35 = v34[1];
  sub_2755DE55C(*v34, v35);

  sub_2755EC4BC();
  swift_allocObject();
  sub_2755DE55C(v36, v35);
  sub_2755EC4AC();
  v37 = type metadata accessor for AppLaunchEvent(0);
  sub_2755E30EC(&qword_2809F9E60, type metadata accessor for AppLaunchEvent, &unk_2755F3F40);
  v52 = v35;
  sub_2755EC49C();
  v40 = v52;
  sub_2755DE464(v36, v52);

  sub_2755DE464(v36, v40);
  (*(*(v37 - 8) + 56))(v15, 0, 1, v37);
  v41 = v58;
  (*(v58 + 16))(v24, &v15[*(v37 + 20)], v16);
  sub_2755E2130(v15);
  (*(v41 + 32))(v27, v24, v16);
  v42 = v53;
  sub_2755EC6CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E70, &qword_2755F3F20);
  v43 = sub_2755EC6DC();
  v44 = *(v43 - 8);
  v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2755F3680;
  (*(v44 + 104))(v46 + v45, *MEMORY[0x277CC9968], v43);
  sub_2755E28A8(v46);
  swift_setDeallocating();
  (*(v44 + 8))(v46 + v45, v43);
  swift_deallocClassInstance();
  sub_2755EC5FC();
  sub_2755EC6AC();

  v47 = *(v58 + 8);
  v47(v20, v16);
  (*(v56 + 8))(v42, v57);
  v48 = sub_2755EC47C();
  v50 = v49;
  (*(v54 + 8))(v11, v55);
  v47(v27, v16);
  if (v50)
  {
    return 0;
  }

  else
  {
    return v48;
  }
}

unint64_t sub_2755DFDDC()
{
  v2 = *(v0 + OBJC_IVAR___ICQAppLaunchLinkTracker_userDefaults);
  v3 = sub_2755EC95C();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_2755ECBAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (!*(&v30 + 1))
  {
    sub_2755756C0(v31, &qword_2809F9CF8, &qword_2755F3F10);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E68, &qword_2755F3F18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E78, &qword_2755F3F28);
  v5 = sub_2755ECC4C();
  v6 = v5;
  v7 = 0;
  v26 = v5;
  v8 = 1 << *(v28 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v28 + 64);
  v11 = (v8 + 63) >> 6;
  v25 = v5 + 64;
  if (v10)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v15 = v12 | (v7 << 6);
      v16 = (*(v28 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v31[0] = *(*(v28 + 56) + 16 * v15);
      v27 = v31[0];

      v1 = v27;
      sub_2755DE55C(v27, *(&v27 + 1));
      sub_2755E00B8(v31, &v29);
      sub_2755DE464(v27, *(&v27 + 1));
      v6 = v26;
      *(v25 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = (v26[6] + 16 * v15);
      *v19 = v17;
      v19[1] = v18;
      *(v26[7] + 8 * v15) = v29;
      v20 = v26[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      v26[2] = v22;
      if (!v10)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v24 = sub_2755E073C(v6);

        return v24;
      }

      v14 = *(v28 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);

  result = sub_2755DE464(v1, v6);
  __break(1u);
  return result;
}

uint64_t sub_2755E00B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E58, &qword_2755F3F08);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D78, &qword_2755F3850);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v48 = v41 - v9;
  v10 = sub_2755EC61C();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v50 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v42 = v41 - v16;
  v49 = sub_2755EC6EC();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v17);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2755EC48C();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v20);
  v43 = v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v22 = a1[1];
  v45 = v19;
  sub_2755EC6CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E70, &qword_2755F3F20);
  v24 = sub_2755EC6DC();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2755F3680;
  (*(v25 + 104))(v27 + v26, *MEMORY[0x277CC9968], v24);
  v41[1] = sub_2755E28A8(v27);
  swift_setDeallocating();
  (*(v25 + 8))(v27 + v26, v24);
  swift_deallocClassInstance();
  sub_2755EC4BC();
  swift_allocObject();
  sub_2755DE55C(v23, v22);
  sub_2755EC4AC();
  v28 = type metadata accessor for AppLaunchEvent(0);
  sub_2755E30EC(&qword_2809F9E60, type metadata accessor for AppLaunchEvent, &unk_2755F3F40);
  v29 = v41[2];
  sub_2755EC49C();
  if (v29)
  {

    sub_2755DE464(v23, v22);
    (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
    sub_2755756C0(v6, &qword_2809F9E58, &qword_2755F3F08);
    v30 = v48;
    (*(v11 + 56))(v48, 1, 1, v10);
    v31 = v42;
    sub_2755EC5FC();
    if ((*(v11 + 48))(v30, 1, v10) != 1)
    {
      sub_2755756C0(v30, &qword_2809F9D78, &qword_2755F3850);
    }
  }

  else
  {

    sub_2755DE464(v23, v22);
    (*(*(v28 - 8) + 56))(v6, 0, 1, v28);
    v32 = v48;
    (*(v11 + 16))(v48, &v6[*(v28 + 20)], v10);
    sub_2755E2130(v6);
    (*(v11 + 56))(v32, 0, 1, v10);
    v31 = v42;
    (*(v11 + 32))(v42, v32, v10);
  }

  v33 = v50;
  sub_2755EC5FC();
  v34 = v43;
  v35 = v45;
  sub_2755EC6AC();

  v36 = *(v11 + 8);
  v36(v33, v10);
  v36(v31, v10);
  (*(v47 + 8))(v35, v49);
  v37 = sub_2755EC47C();
  LOBYTE(v35) = v38;
  result = (*(v44 + 8))(v34, v46);
  if (v35)
  {
    v40 = 0;
  }

  else
  {
    v40 = v37;
  }

  *v51 = v40;
  return result;
}

unint64_t sub_2755E073C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v49 = MEMORY[0x277D84F90];
  sub_2755E2448(0, v1, 0);
  v2 = v49;
  v4 = v3 + 64;
  v5 = sub_2755ECBCC();
  v6 = *(v3 + 36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D18, &qword_2755F3D00);
  v42 = v3;
  v8 = 0;
  v38 = v3 + 72;
  v39 = v1;
  v40 = v6;
  v41 = v3 + 64;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_28;
    }

    if (v6 != *(v3 + 36))
    {
      goto LABEL_29;
    }

    v43 = v8;
    v11 = (*(v3 + 48) + 16 * v5);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(*(v3 + 56) + 8 * v5);
    v47[0] = 0x6449707061;
    v47[1] = 0xE500000000000000;
    v47[2] = v12;
    v47[3] = v13;
    v47[5] = MEMORY[0x277D837D0];
    v48[0] = 0xD000000000000015;
    v48[5] = MEMORY[0x277D83B88];
    v48[1] = 0x80000002755FA760;
    v48[2] = v14;
    v15 = sub_2755ECC6C();
    swift_bridgeObjectRetain_n();

    sub_2755E3070(v47, &v44);
    v17 = v44;
    v16 = v45;
    result = sub_2755750C0(v44, v45);
    if (v18)
    {
      goto LABEL_25;
    }

    *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v19 = (v15[6] + 16 * result);
    *v19 = v17;
    v19[1] = v16;
    result = sub_275578D44(v46, (v15[7] + 32 * result));
    v20 = v15[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_26;
    }

    v15[2] = v22;
    sub_2755E3070(v48, &v44);
    v23 = v44;
    v24 = v45;
    result = sub_2755750C0(v44, v45);
    if (v25)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      break;
    }

    *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v26 = (v15[6] + 16 * result);
    *v26 = v23;
    v26[1] = v24;
    result = sub_275578D44(v46, (v15[7] + 32 * result));
    v27 = v15[2];
    v21 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v21)
    {
      goto LABEL_26;
    }

    v15[2] = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D10, &qword_2755F3730);
    swift_arrayDestroy();

    v49 = v2;
    v30 = *(v2 + 16);
    v29 = *(v2 + 24);
    if (v30 >= v29 >> 1)
    {
      result = sub_2755E2448((v29 > 1), v30 + 1, 1);
      v2 = v49;
    }

    *(v2 + 16) = v30 + 1;
    *(v2 + 8 * v30 + 32) = v15;
    v3 = v42;
    v9 = 1 << *(v42 + 32);
    if (v5 >= v9)
    {
      goto LABEL_30;
    }

    v4 = v41;
    v31 = *(v41 + 8 * v10);
    if ((v31 & (1 << v5)) == 0)
    {
      goto LABEL_31;
    }

    LODWORD(v6) = v40;
    if (v40 != *(v42 + 36))
    {
      goto LABEL_32;
    }

    v32 = v31 & (-2 << (v5 & 0x3F));
    if (v32)
    {
      v9 = __clz(__rbit64(v32)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v33 = v10 << 6;
      v34 = v10 + 1;
      v35 = (v38 + 8 * v10);
      while (v34 < (v9 + 63) >> 6)
      {
        v37 = *v35++;
        v36 = v37;
        v33 += 64;
        ++v34;
        if (v37)
        {
          result = sub_2755E30E0(v5, v40, 0);
          v9 = __clz(__rbit64(v36)) + v33;
          goto LABEL_4;
        }
      }

      result = sub_2755E30E0(v5, v40, 0);
    }

LABEL_4:
    v8 = v43 + 1;
    v5 = v9;
    if (v43 + 1 == v39)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

BOOL sub_2755E0BB8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E58, &qword_2755F3F08);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = (&v24 - v7);
  v9 = *(v2 + OBJC_IVAR___ICQAppLaunchLinkTracker_userDefaults);
  v10 = sub_2755EC95C();
  v11 = [v9 objectForKey_];

  if (v11)
  {
    sub_2755ECBAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (!*(&v26 + 1))
  {
    sub_2755756C0(v27, &qword_2809F9CF8, &qword_2755F3F10);
LABEL_12:
    v19 = type metadata accessor for AppLaunchEvent(0);
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
    sub_2755756C0(v8, &qword_2809F9E58, &qword_2755F3F08);
    v23 = 0;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E68, &qword_2755F3F18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = v24;
  if (!v24)
  {
    goto LABEL_12;
  }

  if (!*(v24 + 16) || (v13 = sub_2755750C0(a1, a2), (v14 & 1) == 0))
  {

    goto LABEL_12;
  }

  v15 = (*(v12 + 56) + 16 * v13);
  v16 = *v15;
  v17 = v15[1];
  sub_2755DE55C(*v15, v17);

  sub_2755EC4BC();
  swift_allocObject();
  sub_2755DE55C(v16, v17);
  sub_2755EC4AC();
  v18 = type metadata accessor for AppLaunchEvent(0);
  sub_2755E30EC(&qword_2809F9E60, type metadata accessor for AppLaunchEvent, &unk_2755F3F40);
  sub_2755EC49C();
  sub_2755DE464(v16, v17);

  sub_2755DE464(v16, v17);
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  v23 = *v8;
  sub_2755E2130(v8);
LABEL_13:
  v20 = [objc_opt_self() processInfo];
  [v20 operatingSystemVersion];
  v21 = *&v27[0];

  return v23 < v21;
}

void sub_2755E0F94(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v54 = a2;
  v5 = type metadata accessor for AppLaunchEvent(0);
  MEMORY[0x28223BE20](v5, v6);
  v59 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2755EC61C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2755EC82C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2755763AC();
  v19 = *(v14 + 16);
  v53 = v13;
  v19(v17, v18, v13);
  v20 = *(v9 + 16);
  v58 = a1;
  v56 = v20;
  v20(v12, a1, v8);

  v21 = sub_2755EC81C();
  LODWORD(a1) = sub_2755ECB0C();

  v52 = a1;
  v22 = os_log_type_enabled(v21, a1);
  v57 = v8;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v51 = v9 + 16;
    v24 = v8;
    v25 = v23;
    v50 = swift_slowAlloc();
    *&v63[0] = v50;
    *v25 = 136315394;
    sub_2755E30EC(&qword_2809F9D88, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v49 = v21;
    v26 = sub_2755ECCDC();
    v27 = v5;
    v28 = a3;
    v30 = v29;
    (*(v9 + 8))(v12, v24);
    v31 = sub_2755CC688(v26, v30, v63);
    a3 = v28;
    v5 = v27;

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    v32 = v54;
    *(v25 + 14) = sub_2755CC688(v54, a3, v63);
    v33 = v49;
    _os_log_impl(&dword_275572000, v49, v52, "Saving last shown date %s for bundle: %s", v25, 0x16u);
    v34 = v50;
    swift_arrayDestroy();
    MEMORY[0x277C7DA70](v34, -1, -1);
    MEMORY[0x277C7DA70](v25, -1, -1);

    (*(v14 + 8))(v17, v53);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
    (*(v14 + 8))(v17, v53);
    v32 = v54;
  }

  v35 = *(v55 + OBJC_IVAR___ICQAppLaunchLinkTracker_userDefaults);
  v36 = sub_2755EC95C();
  v37 = [v35 objectForKey_];

  v38 = v59;
  if (v37)
  {
    sub_2755ECBAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
  }

  v63[0] = v61;
  v63[1] = v62;
  if (!*(&v62 + 1))
  {
    sub_2755756C0(v63, &qword_2809F9CF8, &qword_2755F3F10);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E68, &qword_2755F3F18);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v39 = sub_2755E2BC8(MEMORY[0x277D84F90]);
    goto LABEL_12;
  }

  v39 = v60;
LABEL_12:
  v40 = [objc_opt_self() processInfo];
  [v40 operatingSystemVersion];
  v41 = *&v63[0];

  v56(&v38[*(v5 + 20)], v58, v57);
  *v38 = v41;
  sub_2755EC4EC();
  swift_allocObject();
  sub_2755EC4DC();
  sub_2755E30EC(&qword_2809F9E80, type metadata accessor for AppLaunchEvent, &unk_2755F3F68);
  v42 = sub_2755EC4CC();
  v44 = v43;
  sub_2755E2130(v38);

  sub_2755DE55C(v42, v44);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v63[0] = v39;
  sub_2755E259C(v42, v44, v32, a3, isUniquelyReferenced_nonNull_native);
  sub_2755DE464(v42, v44);
  v46 = sub_2755EC8FC();

  v47 = sub_2755EC95C();
  [v35 setObject:v46 forKey:v47];
}

uint64_t sub_2755E1618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for AppLaunchEvent(0) + 20);
  v6 = sub_2755EC61C();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_2755E169C()
{
  sub_2755EC4EC();
  swift_allocObject();
  sub_2755EC4DC();
  type metadata accessor for AppLaunchEvent(0);
  sub_2755E30EC(&qword_2809F9E80, type metadata accessor for AppLaunchEvent, &unk_2755F3F68);
  v0 = sub_2755EC4CC();

  return v0;
}

id AppLaunchLinkTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppLaunchLinkTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppLaunchLinkTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2755E196C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppLaunchEvent(0) + 20);
  v4 = sub_2755EC61C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2755E1A00()
{
  v1 = *v0;
  sub_2755ECD7C();
  MEMORY[0x277C7CE10](v1);
  return sub_2755ECD9C();
}

uint64_t sub_2755E1A74(uint64_t a1)
{
  v2 = *v1;
  sub_2755ECD7C();
  MEMORY[0x277C7CE10](v2);
  return sub_2755ECD9C();
}

uint64_t sub_2755E1AB8()
{
  if (*v0)
  {
    return 1702125924;
  }

  else
  {
    return 0x6F6973726556736FLL;
  }
}

uint64_t sub_2755E1AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_2755ECD0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2755ECD0C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2755E1BEC(uint64_t a1)
{
  v2 = sub_2755E2CE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2755E1C28(uint64_t a1)
{
  v2 = sub_2755E2CE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2755E1C64(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E88, &qword_2755F3F30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2755E2CE0();
  sub_2755ECDBC();
  v9[15] = 0;
  sub_2755ECCBC();
  if (!v1)
  {
    type metadata accessor for AppLaunchEvent(0);
    v9[14] = 1;
    sub_2755EC61C();
    sub_2755E30EC(&qword_2809F9E90, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_2755ECCCC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2755E1E1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_2755EC61C();
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9E98, &qword_2755F3F38);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for AppLaunchEvent(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2755E2CE0();
  sub_2755ECDAC();
  if (!v2)
  {
    v20 = v10;
    v14 = v23;
    v15 = v24;
    v27 = 0;
    v16 = v25;
    *v13 = sub_2755ECC9C();
    v26 = 1;
    sub_2755E30EC(&qword_2809F9EA0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v19 = v6;
    sub_2755ECCAC();
    (*(v14 + 8))(v9, v16);
    (*(v21 + 32))(v13 + *(v20 + 20), v19, v15);
    sub_2755E2D34(v13, v22);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2755E2130(uint64_t a1)
{
  v2 = type metadata accessor for AppLaunchEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2755E218C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9EB0, &qword_2755F40F8);
  v33 = v4;
  result = sub_2755ECC5C();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_2755DE55C(v34, *(&v34 + 1));
      }

      sub_2755ECD7C();
      sub_2755EC9AC();
      result = sub_2755ECD9C();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_2755E2448(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2755E2468(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2755E2468(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9EB8, &qword_2755F4100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9EA8, &qword_2755F40F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2755E259C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2755750C0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_2755E218C(v18, a5 & 1);
      v13 = sub_2755750C0(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_2755ECD2C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_2755E2724();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return sub_2755DE464(v25, v26);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v23[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v23[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v23[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v31;
}

void *sub_2755E2724()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9EB0, &qword_2755F40F8);
  v2 = *v0;
  v3 = sub_2755ECC4C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_2755DE55C(v22, *(&v22 + 1));
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

  return result;
}

uint64_t sub_2755E28A8(uint64_t a1)
{
  v2 = sub_2755EC6DC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9EC0, &qword_2755F4108);
    v11 = sub_2755ECBEC();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_2755E30EC(&qword_2809F9EC8, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v18 = sub_2755EC92C();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v7, *(v11 + 48) + v20 * v16, v2);
          sub_2755E30EC(&unk_2809F9ED0, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v25 = sub_2755EC94C();
          v26 = *v17;
          (*v17)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_2755E2BC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9EB0, &qword_2755F40F8);
    v3 = sub_2755ECC6C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_2755DE55C(v7, v8);
      result = sub_2755750C0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_2755E2CE0()
{
  result = qword_2809FAC10[0];
  if (!qword_2809FAC10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809FAC10);
  }

  return result;
}

uint64_t sub_2755E2D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2755E2EDC(uint64_t a1)
{
  result = sub_2755EC61C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2755E2F6C()
{
  result = qword_2809FAE30[0];
  if (!qword_2809FAE30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809FAE30);
  }

  return result;
}

unint64_t sub_2755E2FC4()
{
  result = qword_2809FAF40;
  if (!qword_2809FAF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FAF40);
  }

  return result;
}

unint64_t sub_2755E301C()
{
  result = qword_2809FAF48[0];
  if (!qword_2809FAF48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809FAF48);
  }

  return result;
}

uint64_t sub_2755E3070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D10, &qword_2755F3730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2755E30E0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2755E30EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2755E3134()
{
  v1 = (v0 + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource____lazy_storage___backupDeviceUUID);
  v2 = *(v0 + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource____lazy_storage___backupDeviceUUID);
  v3 = *(v0 + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource____lazy_storage___backupDeviceUUID + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = *(v0 + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource_account);
    v6 = objc_allocWithZone(MEMORY[0x277D28A40]);
    v20 = 0;
    v7 = v5;
    v8 = [v6 initWithAccount:v7 delegate:0 eventQueue:0 error:&v20];
    if (v8)
    {
      v9 = v8;
      v10 = v20;

      v11 = [v9 backupDeviceUUID];
      if (v11)
      {
        v12 = v11;
        v4 = sub_2755EC98C();
        v14 = v13;

LABEL_8:
        v17 = *v1;
        v18 = v1[1];
        *v1 = v4;
        v1[1] = v14;

        sub_2755E6980(v17, v18);
        goto LABEL_9;
      }
    }

    else
    {
      v15 = v20;
      v16 = sub_2755EC50C();

      swift_willThrow();
    }

    v4 = 0;
    v14 = 0;
    goto LABEL_8;
  }

LABEL_9:
  sub_2755E729C(v2, v3);
  return v4;
}

id ICQLiftUIDataSource.__allocating_init(account:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource____lazy_storage___backupDeviceUUID] = xmmword_2755F4110;
  *&v3[OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource_account] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ICQLiftUIDataSource.init(account:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource____lazy_storage___backupDeviceUUID] = xmmword_2755F4110;
  *&v1[OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource_account] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t ICQLiftUIDataSource.request(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2755EC72C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2755EC71C();
  ICQLiftUIDataSource.request(for:timeZone:)(a1, v8, a2);
  return (*(v5 + 8))(v8, v4);
}

void ICQLiftUIDataSource.request(for:timeZone:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v42 = a2;
  v43 = a3;
  v7 = sub_2755EC58C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2755EC82C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2755763AC();
  v18 = *(v13 + 16);
  v40 = v12;
  v18(v16, v17, v12);
  v19 = *(v8 + 16);
  v41 = a1;
  v39 = v7;
  v19(v11, a1, v7);
  v20 = sub_2755EC81C();
  v21 = sub_2755ECB2C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = v5;
    v23 = v22;
    v36 = swift_slowAlloc();
    v44 = v36;
    *v23 = 136315138;
    v24 = sub_2755EC52C();
    v38 = v4;
    v26 = v25;
    (*(v8 + 8))(v11, v39);
    v27 = sub_2755CC688(v24, v26, &v44);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_275572000, v20, v21, "Loading LiftUI for url: %s", v23, 0xCu);
    v28 = v36;
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x277C7DA70](v28, -1, -1);
    v29 = v23;
    v5 = v37;
    MEMORY[0x277C7DA70](v29, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, v39);
  }

  (*(v13 + 8))(v16, v40);
  v30 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v31 = sub_2755EC53C();
  v32 = [v30 initWithURL:v31 cachePolicy:1 timeoutInterval:30.0];

  v33 = *(v5 + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource_account);
  v34 = sub_2755E3134();
  sub_2755E3818(v33, v34, v35);

  sub_2755EC45C();
}

void sub_2755E3818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v53 = a3;
  v47 = a2;
  v6 = sub_2755EC66C();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2755EC69C();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2755EC61C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v3 aa_addMultiUserDeviceHeaderIfEnabled];
  [v3 aa:a1 addBasicAuthorizationHeaderWithAccount:0 preferUsingPassword:?];
  [v3 aa_addClientInfoHeaders];
  [v3 aa_addDeviceIDHeader];
  v18 = sub_2755EC95C();
  [v3 aa:v18 addContentTypeHeaders:?];

  sub_2755EC60C();
  sub_2755EC6FC();
  v20 = v19;
  v21 = *(v14 + 8);
  v21(v17, v13);
  if (v20)
  {
    v22 = sub_2755EC95C();

    v23 = sub_2755EC95C();
    [v3 setValue:v22 forHTTPHeaderField:v23];
  }

  sub_2755EC60C();
  v24 = sub_2755EC70C();
  v21(v17, v13);
  if ((v24 * 1000) >> 64 == (1000 * v24) >> 63)
  {
    v54[0] = 1000 * v24;
    sub_2755ECCDC();
    v25 = sub_2755EC95C();

    v26 = sub_2755EC95C();
    [v4 setValue:v25 forHTTPHeaderField:v26];

    sub_2755EC68C();
    v27 = v50;
    sub_2755EC67C();
    (*(v48 + 8))(v12, v49);
    sub_2755EC65C();
    (*(v51 + 8))(v27, v52);
    v28 = sub_2755EC95C();

    v29 = sub_2755EC95C();
    [v4 setValue:v28 forHTTPHeaderField:v29];

    v30 = objc_opt_self();
    v31 = [v30 standardDateFormat_];
    if (!v31)
    {
      sub_2755EC98C();
      v31 = sub_2755EC95C();
    }

    v32 = sub_2755EC95C();
    [v4 &selRef:v31 startActivityWithDelaySecs:v32 completion:?];

    v33 = [v30 standardDateFormat_];
    if (!v33)
    {
      sub_2755EC98C();
      v33 = sub_2755EC95C();
    }

    v34 = sub_2755EC95C();
    [v4 &selRef:v33 startActivityWithDelaySecs:v34 completion:?];

    if (v53)
    {
      v35 = sub_2755EC95C();
      v36 = sub_2755EC95C();
      [v4 &selRef:v35 startActivityWithDelaySecs:v36 completion:?];
    }

    v37 = [objc_opt_self() ams_sharedAccountStore];
    v38 = [v37 ams_activeiTunesAccount];
    v39 = v38;
    if (v38)
    {
      v40 = [v38 ams_DSID];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 stringValue];
        if (!v42)
        {
          sub_2755EC98C();
          v42 = sub_2755EC95C();
        }

        v43 = sub_2755EC95C();
        [v4 &selRef:v42 startActivityWithDelaySecs:v43 completion:?];
      }
    }

    v54[3] = &type metadata for SwiftUIFeatures;
    v54[4] = sub_2755E6888();
    v44 = sub_2755EC73C();
    __swift_destroy_boxed_opaque_existential_0(v54);
    if (v44)
    {
      v45 = sub_2755EC95C();
      v46 = sub_2755EC95C();
      [v4 &selRef:v45 startActivityWithDelaySecs:v46 completion:?];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t ICQLiftUIDataSource.data(for:)(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = sub_2755EC72C();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  v4 = sub_2755EC46C();
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v5 = sub_2755EC82C();
  v2[43] = v5;
  v2[44] = *(v5 - 8);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2755E40DC);
}

uint64_t sub_2755E40DC()
{
  v38 = v0;
  v1 = v0[50];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[42];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[29];
  v8 = sub_2755763AC();
  v0[51] = v8;
  v9 = *(v3 + 16);
  v0[52] = v9;
  v0[53] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v8, v2);
  v10 = *(v6 + 16);
  v0[54] = v10;
  v0[55] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v4, v7, v5);
  v11 = sub_2755EC81C();
  v12 = sub_2755ECB0C();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[50];
  v16 = v0[43];
  v15 = v0[44];
  v17 = v0[42];
  v19 = v0[34];
  v18 = v0[35];
  if (v13)
  {
    v36 = v0[43];
    v20 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37 = v34;
    *v20 = 136315138;
    sub_2755E68DC();
    v21 = sub_2755ECCDC();
    v35 = v14;
    v23 = v22;
    v33 = v12;
    v24 = *(v18 + 8);
    v24(v17, v19);
    v25 = sub_2755CC688(v21, v23, &v37);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_275572000, v11, v33, "Fetching data for LiftUI request %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x277C7DA70](v34, -1, -1);
    MEMORY[0x277C7DA70](v20, -1, -1);

    v26 = *(v15 + 8);
    v26(v35, v36);
  }

  else
  {

    v24 = *(v18 + 8);
    v24(v17, v19);
    v26 = *(v15 + 8);
    v26(v14, v16);
  }

  v0[56] = v26;
  v0[57] = v24;
  v27 = v0[30];
  v28 = [objc_opt_self() defaultSessionConfiguration];
  v0[58] = v28;
  v29 = [objc_allocWithZone(MEMORY[0x277CF0188]) init];
  [v28 set:v29 appleIDContext:?];

  v0[59] = [objc_opt_self() sessionWithConfiguration:v28 delegate:v27 delegateQueue:0];
  v30 = swift_task_alloc();
  v0[60] = v30;
  *v30 = v0;
  v30[1] = sub_2755E43F0;
  v31 = v0[29];

  return MEMORY[0x28211ECF8](v31, 0);
}

uint64_t sub_2755E43F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v7[61] = a3;
  v7[62] = v3;

  if (v3)
  {
    v8 = sub_2755E5A00;
  }

  else
  {
    v7[63] = a2;
    v7[64] = a1;
    v8 = sub_2755E4524;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2755E4524()
{
  v64 = v0;
  *(v0 + 200) = *(v0 + 512);
  *(v0 + 208) = *(v0 + 504);
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 488);
    if ([v2 statusCode] == 401)
    {
      v4 = *(v0 + 432);
      v5 = *(v0 + 328);
      v6 = *(v0 + 272);
      v7 = *(v0 + 232);
      (*(v0 + 416))(*(v0 + 392), *(v0 + 408), *(v0 + 344));
      v4(v5, v7, v6);
      v8 = sub_2755EC81C();
      v59 = sub_2755ECB2C();
      v9 = os_log_type_enabled(v8, v59);
      v10 = *(v0 + 448);
      v61 = *(v0 + 456);
      v11 = *(v0 + 392);
      v12 = *(v0 + 344);
      v13 = *(v0 + 328);
      v14 = *(v0 + 272);
      if (v9)
      {
        v57 = *(v0 + 344);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v63 = v16;
        *v15 = 136315138;
        sub_2755E68DC();
        v54 = v11;
        v55 = v10;
        v17 = sub_2755ECCDC();
        v19 = v18;
        v61(v13, v14);
        v20 = sub_2755CC688(v17, v19, &v63);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_275572000, v8, v59, "LiftUI auth failure. Renewing credentials for request %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x277C7DA70](v16, -1, -1);
        MEMORY[0x277C7DA70](v15, -1, -1);

        v55(v54, v57);
        goto LABEL_16;
      }

LABEL_15:

      v61(v13, v14);
      (v10)(v11, v12);
LABEL_16:
      v25 = [objc_opt_self() defaultStore];
      *(v0 + 520) = v25;
      if (v25)
      {
        v36 = v25;
        v37 = *(*(v0 + 240) + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource_account);
        *(v0 + 528) = v37;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 216;
        *(v0 + 24) = sub_2755E4C1C;
        v38 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9F00, &unk_2755F4128);
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_2755E5DAC;
        *(v0 + 104) = &block_descriptor_3;
        *(v0 + 112) = v38;
        [v36 renewCredentialsForAccount:v37 completion:v0 + 80];
        v25 = (v0 + 16);

        return MEMORY[0x282200938](v25);
      }

LABEL_28:
      __break(1u);
      return MEMORY[0x282200938](v25);
    }
  }

  v21 = *(v0 + 432);
  v14 = *(v0 + 440);
  v22 = *(v0 + 288);
  v23 = *(v0 + 272);
  v11 = *(v0 + 232);
  (*(v0 + 416))(*(v0 + 360), *(v0 + 408), *(v0 + 344));
  v24 = *(v0 + 200);
  v12 = *(v0 + 208);
  v21(v22, v11, v23);
  sub_2755DE55C(v24, v12);
  v8 = sub_2755EC81C();
  v13 = sub_2755ECB0C();
  if (os_log_type_enabled(v8, v13))
  {
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v60 = v25;
    v63 = v25;
    *v10 = 134218242;
    v26 = v12 >> 62;
    LODWORD(v61) = v13;
    if ((v12 >> 62) > 1)
    {
      if (v26 == 2)
      {
        v34 = *(v24 + 16);
        v33 = *(v24 + 24);
        v35 = __OFSUB__(v33, v34);
        v27 = v33 - v34;
        if (v35)
        {
          __break(1u);
          goto LABEL_15;
        }
      }

      else
      {
        v27 = 0;
      }
    }

    else if (v26)
    {
      LODWORD(v27) = HIDWORD(v24) - v24;
      if (__OFSUB__(HIDWORD(v24), v24))
      {
        __break(1u);
        goto LABEL_28;
      }

      v27 = v27;
    }

    else
    {
      v27 = BYTE6(v12);
    }

    v39 = *(v0 + 448);
    v40 = *(v0 + 456);
    v56 = *(v0 + 344);
    v58 = *(v0 + 360);
    v41 = *(v0 + 288);
    v42 = *(v0 + 272);
    *(v10 + 4) = v27;
    sub_2755DE464(v24, v12);
    *(v10 + 12) = 2080;
    sub_2755E68DC();
    v43 = sub_2755ECCDC();
    v45 = v44;
    v40(v41, v42);
    v46 = sub_2755CC688(v43, v45, &v63);

    *(v10 + 14) = v46;
    _os_log_impl(&dword_275572000, v8, v61, "Finished fetching data (%ld bytes) for LiftUI request %s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x277C7DA70](v60, -1, -1);
    MEMORY[0x277C7DA70](v10, -1, -1);

    v39(v58, v56);
  }

  else
  {
    v28 = *(v0 + 456);
    v62 = *(v0 + 448);
    v29 = *(v0 + 360);
    v30 = *(v0 + 344);
    v31 = *(v0 + 288);
    v32 = *(v0 + 272);

    sub_2755DE464(v24, v12);
    v28(v31, v32);
    v62(v29, v30);
  }

  v47 = *(v0 + 488);
  v49 = *(v0 + 464);
  v48 = *(v0 + 472);
  [v48 invalidateAndCancel];

  swift_beginAccess();
  v51 = *(v0 + 200);
  v50 = *(v0 + 208);
  sub_2755DE55C(v51, v50);
  sub_2755DE464(v51, v50);

  v52 = *(v0 + 8);

  return v52(v51, v50);
}

uint64_t sub_2755E4C1C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 536) = v1;
  if (v1)
  {
    v2 = sub_2755E5B24;
  }

  else
  {
    v2 = sub_2755E4D2C;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2755E4D2C()
{
  v79 = v0;
  v1 = *(v0 + 216);

  if (v1)
  {
    v2 = *(v0 + 432);
    v3 = *(v0 + 296);
    v4 = *(v0 + 272);
    v5 = *(v0 + 232);
    (*(v0 + 416))(*(v0 + 368), *(v0 + 408), *(v0 + 344));
    v2(v3, v5, v4);
    v6 = sub_2755EC81C();
    v7 = sub_2755ECB1C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 488);
    v71 = *(v0 + 472);
    v74 = *(v0 + 464);
    v10 = *(v0 + 448);
    v69 = *(v0 + 456);
    v11 = *(v0 + 368);
    v12 = *(v0 + 344);
    v13 = *(v0 + 296);
    v14 = *(v0 + 272);
    if (v8)
    {
      log = v6;
      v15 = swift_slowAlloc();
      v66 = v11;
      v16 = swift_slowAlloc();
      v78 = v16;
      *v15 = 136315138;
      sub_2755E68DC();
      v62 = v12;
      v64 = v10;
      v17 = sub_2755ECCDC();
      v19 = v18;
      v69(v13, v14);
      v20 = sub_2755CC688(v17, v19, &v78);

      *(v15 + 4) = v20;
      v21 = "Failed to renew credentials for request %s";
LABEL_9:
      _os_log_impl(&dword_275572000, log, v7, v21, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x277C7DA70](v16, -1, -1);
      MEMORY[0x277C7DA70](v15, -1, -1);

      v64(v66, v62);
LABEL_11:
      v76 = *(v0 + 200);
      v77 = *(v0 + 208);

      v55 = *(v0 + 8);

      return v55(v76, v77);
    }

    goto LABEL_10;
  }

  v22 = sub_2755EC44C();
  [v22 mutableCopy];

  sub_2755ECBAC();
  swift_unknownObjectRelease();
  sub_2755E6934();
  if (!swift_dynamicCast())
  {
    v46 = *(v0 + 432);
    v47 = *(v0 + 304);
    v48 = *(v0 + 272);
    v49 = *(v0 + 232);
    (*(v0 + 416))(*(v0 + 376), *(v0 + 408), *(v0 + 344));
    v46(v47, v49, v48);
    v6 = sub_2755EC81C();
    v7 = sub_2755ECB1C();
    v50 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 488);
    v71 = *(v0 + 472);
    v74 = *(v0 + 464);
    v10 = *(v0 + 448);
    v69 = *(v0 + 456);
    v11 = *(v0 + 376);
    v12 = *(v0 + 344);
    v13 = *(v0 + 304);
    v14 = *(v0 + 272);
    if (v50)
    {
      log = v6;
      v15 = swift_slowAlloc();
      v66 = v11;
      v16 = swift_slowAlloc();
      v78 = v16;
      *v15 = 136315138;
      sub_2755E68DC();
      v62 = v12;
      v64 = v10;
      v51 = sub_2755ECCDC();
      v53 = v52;
      v69(v13, v14);
      v54 = sub_2755CC688(v51, v53, &v78);

      *(v15 + 4) = v54;
      v21 = "Failed to renew credentials for request %s. Unable to rerun request.";
      goto LABEL_9;
    }

LABEL_10:

    v69(v13, v14);
    v10(v11, v12);
    goto LABEL_11;
  }

  v23 = *(v0 + 528);
  v72 = *(v0 + 432);
  v67 = *(v0 + 416);
  v24 = *(v0 + 384);
  v59 = *(v0 + 344);
  loga = *(v0 + 408);
  v25 = *(v0 + 264);
  v63 = *(v0 + 320);
  v65 = *(v0 + 272);
  v26 = *(v0 + 248);
  v27 = *(v0 + 256);
  v28 = *(v0 + 232);
  *(v0 + 544) = *(v0 + 224);
  v29 = sub_2755E3134();
  v31 = v30;
  sub_2755EC71C();
  sub_2755E3818(v23, v29, v31);

  (*(v27 + 8))(v25, v26);
  v67(v24, loga, v59);
  v72(v63, v28, v65);
  v32 = sub_2755EC81C();
  v33 = sub_2755ECB2C();
  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 448);
  v75 = *(v0 + 456);
  v36 = *(v0 + 384);
  v37 = *(v0 + 344);
  v38 = *(v0 + 320);
  v39 = *(v0 + 272);
  if (v34)
  {
    v73 = *(v0 + 344);
    v40 = swift_slowAlloc();
    v70 = v35;
    v41 = swift_slowAlloc();
    v78 = v41;
    *v40 = 136315138;
    sub_2755E68DC();
    v68 = v36;
    v42 = sub_2755ECCDC();
    v44 = v43;
    v75(v38, v39);
    v45 = sub_2755CC688(v42, v44, &v78);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_275572000, v32, v33, "Renewing credentials succeeded for request %s, retrying", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x277C7DA70](v41, -1, -1);
    MEMORY[0x277C7DA70](v40, -1, -1);

    v70(v68, v73);
  }

  else
  {

    v75(v38, v39);
    v35(v36, v37);
  }

  sub_2755EC45C();
  v57 = swift_task_alloc();
  *(v0 + 552) = v57;
  *v57 = v0;
  v57[1] = sub_2755E5480;
  v58 = *(v0 + 312);

  return MEMORY[0x28211ECF8](v58, 0);
}

uint64_t sub_2755E5480(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  v8[70] = v3;

  v9 = v8[57];
  v10 = v8[39];
  v11 = v8[34];
  if (v3)
  {
    v9(v10, v11);
    v12 = sub_2755E5C6C;
  }

  else
  {
    v8[71] = a2;
    v8[72] = a1;
    v9(v10, v11);

    v12 = sub_2755E5634;
  }

  return MEMORY[0x2822009F8](v12);
}

void *sub_2755E5634()
{
  v44 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 544);

  sub_2755DE464(*(v0 + 200), *(v0 + 208));
  *(v0 + 200) = v1;
  *(v0 + 208) = v2;
  v4 = *(v0 + 432);
  v5 = *(v0 + 288);
  v6 = *(v0 + 272);
  v7 = *(v0 + 232);
  (*(v0 + 416))(*(v0 + 360), *(v0 + 408), *(v0 + 344));
  v8 = *(v0 + 200);
  v9 = *(v0 + 208);
  v4(v5, v7, v6);
  sub_2755DE55C(v8, v9);
  v10 = sub_2755EC81C();
  v11 = sub_2755ECB0C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    result = swift_slowAlloc();
    v39 = result;
    v43 = result;
    *v12 = 134218242;
    v14 = v9 >> 62;
    v41 = v11;
    if ((v9 >> 62) > 1)
    {
      if (v14 != 2)
      {
        v15 = 0;
        goto LABEL_13;
      }

      v21 = *(v8 + 16);
      v20 = *(v8 + 24);
      v22 = __OFSUB__(v20, v21);
      v15 = v20 - v21;
      if (!v22)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v14)
    {
      v15 = BYTE6(v9);
LABEL_13:
      v23 = *(v0 + 456);
      v37 = *(v0 + 360);
      v38 = *(v0 + 448);
      v36 = *(v0 + 344);
      v24 = *(v0 + 288);
      v25 = *(v0 + 272);
      *(v12 + 4) = v15;
      sub_2755DE464(v8, v9);
      *(v12 + 12) = 2080;
      sub_2755E68DC();
      v26 = sub_2755ECCDC();
      v28 = v27;
      v23(v24, v25);
      v29 = sub_2755CC688(v26, v28, &v43);

      *(v12 + 14) = v29;
      _os_log_impl(&dword_275572000, v10, v41, "Finished fetching data (%ld bytes) for LiftUI request %s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x277C7DA70](v39, -1, -1);
      MEMORY[0x277C7DA70](v12, -1, -1);

      v38(v37, v36);
      goto LABEL_14;
    }

    LODWORD(v15) = HIDWORD(v8) - v8;
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      __break(1u);
      return result;
    }

    v15 = v15;
    goto LABEL_13;
  }

  v16 = *(v0 + 456);
  v40 = *(v0 + 360);
  v42 = *(v0 + 448);
  v17 = *(v0 + 344);
  v18 = *(v0 + 288);
  v19 = *(v0 + 272);

  sub_2755DE464(v8, v9);
  v16(v18, v19);
  v42(v40, v17);
LABEL_14:
  v30 = *(v0 + 488);
  v32 = *(v0 + 464);
  v31 = *(v0 + 472);
  [v31 invalidateAndCancel];

  swift_beginAccess();
  v34 = *(v0 + 200);
  v33 = *(v0 + 208);
  sub_2755DE55C(v34, v33);
  sub_2755DE464(v34, v33);

  v35 = *(v0 + 8);

  return v35(v34, v33);
}

uint64_t sub_2755E5A00()
{
  v1 = *(v0 + 472);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2755E5B24(uint64_t a1)
{
  v2 = v1[65];
  v3 = v1[61];
  v5 = v1[58];
  v4 = v1[59];
  swift_willThrow();

  sub_2755DE464(v1[25], v1[26]);

  v6 = v1[1];

  return v6();
}

uint64_t sub_2755E5C6C()
{
  v1 = v0[68];
  v2 = v0[61];
  v4 = v0[58];
  v3 = v0[59];

  sub_2755DE464(v0[25], v0[26]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2755E5DAC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F9F90, &qword_2755F3A50);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

id ICQLiftUIDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICQLiftUIDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ICQLiftUIDataSource.urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v59 = a6;
  v60 = a5;
  v61 = a4;
  v58 = sub_2755EC46C();
  v62 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v6);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9F10, &qword_2755F39E0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v57 = &v52 - v10;
  v11 = sub_2755EC72C();
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2755EC82C();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v56 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v52 - v21;
  v23 = sub_2755763AC();
  v24 = *(v16 + 16);
  v24(v22, v23, v15);
  v25 = sub_2755EC81C();
  v26 = sub_2755ECB2C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_275572000, v25, v26, "ICQLiftUIDataSource handling redirect, re-adding headers", v27, 2u);
    MEMORY[0x277C7DA70](v27, -1, -1);
  }

  v28 = *(v16 + 8);
  v28(v22, v15);
  v29 = v61;
  v30 = sub_2755EC44C();
  [v30 mutableCopy];

  sub_2755ECBAC();
  swift_unknownObjectRelease();
  sub_2755E6934();
  if (swift_dynamicCast())
  {
    v31 = v63;
    v32 = *(v54 + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource_account);
    v33 = sub_2755E3134();
    v35 = v34;
    sub_2755EC71C();
    sub_2755E3818(v32, v33, v35);

    (*(v52 + 8))(v14, v53);
    v36 = v57;
    sub_2755EC45C();
    (*(v62 + 56))(v36, 0, 1, v58);
    v60(v36);
  }

  else
  {
    v54 = v28;
    v24(v56, v23, v15);
    v37 = v62;
    v38 = v55;
    v39 = v58;
    v53 = *(v62 + 16);
    v53(v55, v29, v58);
    v40 = sub_2755EC81C();
    v41 = sub_2755ECB1C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v64[0] = v43;
      *v42 = 136315138;
      sub_2755E68DC();
      v44 = sub_2755ECCDC();
      v45 = v38;
      v47 = v46;
      (*(v62 + 8))(v45, v39);
      v48 = sub_2755CC688(v44, v47, v64);

      *(v42 + 4) = v48;
      _os_log_impl(&dword_275572000, v40, v41, "Failed to copy %s. Skipping adding headers", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      v49 = v43;
      v29 = v61;
      MEMORY[0x277C7DA70](v49, -1, -1);
      v50 = v42;
      v37 = v62;
      MEMORY[0x277C7DA70](v50, -1, -1);
    }

    else
    {

      (*(v37 + 8))(v38, v39);
    }

    v54(v56, v15);
    v36 = v57;
    v53(v57, v29, v39);
    (*(v37 + 56))(v36, 0, 1, v39);
    v60(v36);
  }

  return sub_2755E6994(v36);
}

BOOL sub_2755E66E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2755ECC8C();

  return v2 != 0;
}

uint64_t sub_2755E6740()
{
  sub_2755ECD7C();
  sub_2755EC9AC();
  return sub_2755ECD9C();
}

uint64_t sub_2755E67AC(uint64_t a1)
{
  sub_2755ECD7C();
  sub_2755EC9AC();
  return sub_2755ECD9C();
}

uint64_t sub_2755E67FC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2755ECC8C();

  *a2 = v3 != 0;
  return result;
}

void *sub_2755E686C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_2755E6888()
{
  result = qword_2809F9EF0;
  if (!qword_2809F9EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9EF0);
  }

  return result;
}

unint64_t sub_2755E68DC()
{
  result = qword_2809F9EF8;
  if (!qword_2809F9EF8)
  {
    sub_2755EC46C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9EF8);
  }

  return result;
}

unint64_t sub_2755E6934()
{
  result = qword_2809F9F08;
  if (!qword_2809F9F08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809F9F08);
  }

  return result;
}

uint64_t sub_2755E6980(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2755E6994(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9F10, &qword_2755F39E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2755E6A00()
{
  result = qword_2809F9F18;
  if (!qword_2809F9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9F18);
  }

  return result;
}

void type metadata accessor for ACAccountCredentialRenewResult()
{
  if (!qword_2809F9F88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2809F9F88);
    }
  }
}

uint64_t sub_2755E6B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v82 = a1;
  v77 = a2;
  v3 = sub_2755EC46C();
  v83 = *(v3 - 8);
  v84 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v78 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9F10, &qword_2755F39E0);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v79 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v80 = &v72 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v72 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v72 - v18;
  v20 = sub_2755EC72C();
  v75 = *(v20 - 8);
  v76 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v74 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2755EC82C();
  v24 = *(v23 - 8);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v72 - v30;
  v32 = sub_2755763AC();
  v72 = *(v24 + 16);
  v73 = v32;
  v72(v31);
  v33 = sub_2755EC81C();
  v34 = sub_2755ECB2C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = v16;
    v36 = v28;
    v37 = v19;
    v38 = v23;
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_275572000, v33, v34, "ICQLiftUIDataSource handling redirect, re-adding headers", v39, 2u);
    v40 = v39;
    v23 = v38;
    v19 = v37;
    v28 = v36;
    v16 = v35;
    MEMORY[0x277C7DA70](v40, -1, -1);
  }

  v41 = *(v24 + 8);
  v41(v31, v23);
  v42 = v82;
  v43 = sub_2755EC44C();
  [v43 mutableCopy];

  sub_2755ECBAC();
  swift_unknownObjectRelease();
  sub_2755E6934();
  if (swift_dynamicCast())
  {
    v44 = v85;
    v45 = *(v77 + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource_account);
    v46 = sub_2755E3134();
    v48 = v47;
    v49 = v74;
    sub_2755EC71C();
    sub_2755E3818(v45, v46, v48);

    v75[1](v49, v76);
    sub_2755EC45C();
    v51 = v83;
    v50 = v84;
    (*(v83 + 56))(v19, 0, 1, v84);
    sub_2755E722C(v19, v16);
    if ((*(v51 + 48))(v16, 1, v50) == 1)
    {
      v52 = 0;
    }

    else
    {
      v52 = sub_2755EC44C();
      (*(v51 + 8))(v16, v50);
    }

    (*(v81 + 16))(v81, v52);
  }

  else
  {
    v75 = v41;
    v77 = v23;
    (v72)(v28, v73, v23);
    v54 = v83;
    v53 = v84;
    v55 = v78;
    v76 = *(v83 + 16);
    v76(v78, v42, v84);
    v56 = sub_2755EC81C();
    v57 = sub_2755ECB1C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = v55;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v86[0] = v60;
      *v59 = 136315138;
      sub_2755E68DC();
      v61 = sub_2755ECCDC();
      v74 = v28;
      v62 = v61;
      v64 = v63;
      v65 = *(v83 + 8);
      v65(v58, v84);
      v66 = sub_2755CC688(v62, v64, v86);
      v53 = v84;

      *(v59 + 4) = v66;
      _os_log_impl(&dword_275572000, v56, v57, "Failed to copy %s. Skipping adding headers", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      v67 = v60;
      v54 = v83;
      MEMORY[0x277C7DA70](v67, -1, -1);
      MEMORY[0x277C7DA70](v59, -1, -1);

      v68 = v74;
    }

    else
    {

      v65 = *(v54 + 8);
      v65(v55, v53);
      v68 = v28;
    }

    (v75)(v68, v77);
    v70 = v79;
    v69 = v80;
    v76(v80, v82, v53);
    (*(v54 + 56))(v69, 0, 1, v53);
    sub_2755E722C(v69, v70);
    if ((*(v54 + 48))(v70, 1, v53) == 1)
    {
      v52 = 0;
    }

    else
    {
      v52 = sub_2755EC44C();
      v65(v70, v53);
    }

    (*(v81 + 16))(v81, v52);
    v19 = v69;
  }

  return sub_2755E6994(v19);
}

uint64_t sub_2755E722C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9F10, &qword_2755F39E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2755E729C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2755E72B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13OptionalErrorOMa(0, a1, a3, a4);
  swift_getWitnessTable();

  return swift_allocError();
}

uint64_t sub_2755E7330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1, a2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v8, a2);
  v9 = *(a2 + 16);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a3, v6, v9);
  }

  _s13OptionalErrorOMa(0, v9, v11, v12);
  swift_getWitnessTable();
  swift_allocError();
  return swift_willThrow();
}

uint64_t StorageSummaryModel.storageSummary.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2755EC89C();

  return v1;
}

uint64_t sub_2755E75D4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2755EC89C();

  *a2 = v4;
  return result;
}

uint64_t sub_2755E7654(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_2755EC8AC();
}

uint64_t StorageSummaryModel.storageSummary.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2755EC8AC();
}

uint64_t (*StorageSummaryModel.storageSummary.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_2755EC88C();
  return sub_2755CA184;
}

uint64_t sub_2755E7818(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA070, &qword_2755F43E8);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA068, &qword_2755F43E0);
  sub_2755EC87C();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t StorageSummaryModel.$storageSummary.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA070, &qword_2755F43E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA068, &qword_2755F43E0);
  sub_2755EC87C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*StorageSummaryModel.$storageSummary.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA070, &qword_2755F43E8);
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

  v10 = OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel__storageSummary[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA068, &qword_2755F43E0);
  sub_2755EC86C();
  swift_endAccess();
  return sub_2755CA58C;
}

uint64_t StorageSummaryModel.didError.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2755EC89C();

  return v1;
}

uint64_t sub_2755E7CB8@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2755EC89C();

  *a2 = v4;
  return result;
}

uint64_t sub_2755E7D38(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2755EC8AC();
}

uint64_t StorageSummaryModel.didError.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2755EC8AC();
}

uint64_t (*StorageSummaryModel.didError.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_2755EC88C();
  return sub_2755CDDE0;
}

uint64_t sub_2755E7EF8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_2755EC86C();
  return swift_endAccess();
}

uint64_t sub_2755E7F74(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C68, &qword_2755F34E0);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  sub_2755EC87C();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t StorageSummaryModel.$didError.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C68, &qword_2755F34E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  sub_2755EC87C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*StorageSummaryModel.$didError.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C68, &qword_2755F34E0);
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

  v10 = OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel__didError;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  sub_2755EC86C();
  swift_endAccess();
  return sub_2755CDDE4;
}

id sub_2755E83B0()
{
  v1 = OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel____lazy_storage___dataController;
  v2 = *(v0 + OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel____lazy_storage___dataController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel____lazy_storage___dataController);
  }

  else
  {
    v4 = [objc_allocWithZone(ICQCloudStorageDataController) initWithAccount_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *StorageSummaryModel.__allocating_init(account:)(void *a1)
{
  swift_allocObject();
  v2 = sub_2755E8BE4(a1);

  return v2;
}

char *StorageSummaryModel.init(account:)(void *a1)
{
  v2 = sub_2755E8BE4(a1);

  return v2;
}

char *StorageSummaryModel.deinit()
{
  v1 = v0;
  type metadata accessor for DarwinRegistrar();
  sub_2755CE05C(v0);
  v2 = OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel__storageSummary[0];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA068, &qword_2755F43E0);
  (*(*(v3 - 8) + 8))(&v1[v2], v3);
  v4 = OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel__didError;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  (*(*(v5 - 8) + 8))(&v1[v4], v5);

  return v1;
}

uint64_t StorageSummaryModel.__deallocating_deinit()
{
  v1 = v0;
  type metadata accessor for DarwinRegistrar();
  sub_2755CE05C(v0);
  v2 = OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel__storageSummary[0];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA068, &qword_2755F43E0);
  (*(*(v3 - 8) + 8))(&v1[v2], v3);
  v4 = OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel__didError;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  (*(*(v5 - 8) + 8))(&v1[v4], v5);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall StorageSummaryModel.fetchCloudStorageSummary(shouldIgnoreCache:)(Swift::Bool shouldIgnoreCache)
{
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v8[0]) = 0;

  sub_2755EC8AC();
  v3 = sub_2755E83B0();
  [v3 setShouldIgnoreCache_];

  v4 = *(v1 + OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel____lazy_storage___dataController);
  v5 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_2755E8EB0;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2755CBC80;
  v8[3] = &block_descriptor_4;
  v6 = _Block_copy(v8);
  v7 = v4;

  [v7 fetchStorageSummaryWithCompletion_];
  _Block_release(v6);
}

uint64_t sub_2755E8884(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_2755EC8CC();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2755EC8EC();
  v10 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2755CDAE8(0, &qword_2809F9CC8, 0x277D85C78);
  v14 = sub_2755ECB3C();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a1;
  v15[4] = a3;
  aBlock[4] = sub_2755E91DC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275578EB8;
  aBlock[3] = &block_descriptor_14;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  v18 = a1;

  sub_2755EC8DC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2755CDD08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CD8, &unk_2755F44F0);
  sub_2755CDD60();
  sub_2755ECBBC();
  MEMORY[0x277C7CBD0](0, v13, v9, v16);
  _Block_release(v16);

  (*(v21 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v20);
}

void sub_2755E8B3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    StorageSummaryModel.fetchCloudStorageSummary(shouldIgnoreCache:)(1);
  }
}

uint64_t sub_2755E8B88@<X0>(uint64_t *a2@<X8>)
{
  result = sub_2755EC84C();
  *a2 = result;
  return result;
}

char *sub_2755E8BE4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA068, &qword_2755F43E0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v23 - v12;
  v14 = OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel__storageSummary[0];
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FA060, &qword_2755F4390);
  sub_2755EC85C();
  (*(v10 + 32))(&v2[v14], v13, v9);
  v15 = OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel__didError;
  LOBYTE(v24) = 0;
  sub_2755EC85C();
  (*(v5 + 32))(&v2[v15], v8, v4);
  *&v2[OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel____lazy_storage___dataController] = 0;
  *&v2[OBJC_IVAR____TtC11iCloudQuota19StorageSummaryModel_account] = a1;
  v16 = a1;
  v17 = sub_2755E83B0();
  v18 = [v17 cachedStorageSummary];

  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v18;

  sub_2755EC8AC();
  type metadata accessor for DarwinRegistrar();
  v19 = sub_2755CDDE8();
  v20 = *v19;
  v21 = v19[1];

  sub_2755CDE10(v2, v20, v21, sub_2755E8B3C);

  return v2;
}

uint64_t _s11iCloudQuota19StorageSummaryModelC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2755EC89C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2755EC89C();

  if (v5 && (sub_2755CDAE8(0, &unk_2809FA080, off_27A650D48), v2 = sub_2755ECB7C(), v5, v5, (v2 & 1) == 0))
  {
    v3 = 0;
  }

  else
  {
    sub_2755CDAE8(0, &qword_2809F9CA8, 0x277D82BB8);
    v3 = sub_2755ECB7C();
  }

  return v3 & 1;
}

uint64_t type metadata accessor for StorageSummaryModel(uint64_t a1)
{
  result = qword_2809FB590;
  if (!qword_2809FB590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2755E9068(uint64_t a1)
{
  sub_2755E9178(319);
  if (v1 <= 0x3F)
  {
    sub_2755CD9E4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2755E9178(uint64_t a1)
{
  if (!qword_2809FA078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FA060, &qword_2755F4390);
    v1 = sub_2755EC8BC();
    if (!v2)
    {
      atomic_store(v1, &qword_2809FA078);
    }
  }
}

uint64_t sub_2755E91DC()
{
  v1 = *(v0 + 24);
  if (*(v0 + 16))
  {
    v2 = 1;
  }

  else
  {
    v2 = v1 == 0;
  }

  if (v2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_2755EC8AC();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v1;
    return sub_2755EC8AC();
  }

  return result;
}

void _ICQActionForString_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_275572000, a2, OS_LOG_TYPE_ERROR, "_ICQActionFromString - illegal action %@", &v2, 0xCu);
}

void ICQUsedDiskSpaceForVolume_cold_1(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "UInt64 ICQUsedDiskSpaceForVolume(NSString *__strong _Nonnull)";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_275572000, a2, OS_LOG_TYPE_ERROR, "Error in %s: %d", &v2, 0x12u);
}

void ___handlePushReceivedDarwinNotification_block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_4(&dword_275572000, a2, a3, "darwin notification %@ is not handled", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _ICQServerDictionaryForBundleIdentifier_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_275572000, v0, OS_LOG_TYPE_DEBUG, "appId array: %@", v1, 0xCu);
}