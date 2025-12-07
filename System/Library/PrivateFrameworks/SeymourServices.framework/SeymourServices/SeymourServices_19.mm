unint64_t sub_227088630()
{
  result = qword_27D7BA108;
  if (!qword_27D7BA108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA108);
  }

  return result;
}

unint64_t sub_227088684(uint64_t a1)
{
  result = sub_2270886AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2270886AC()
{
  result = qword_27D7BA110;
  if (!qword_27D7BA110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA110);
  }

  return result;
}

uint64_t sub_227088700(uint64_t a1)
{
  v1 = sub_22766C090();
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_226F1EF10(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_226F1EF10((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_227088808()
{
  sub_22766D370();
  sub_227667100();
  sub_227088BAC(&qword_27D7BA120, MEMORY[0x277D52B58], MEMORY[0x277D52B60]);
  sub_22766BF60();
  sub_227665C20();
  sub_227088BAC(&qword_27D7BA128, MEMORY[0x277D51CB0], MEMORY[0x277D51CB8]);
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t sub_2270888F4(uint64_t a1)
{
  sub_227667100();
  sub_227088BAC(&qword_27D7BA120, MEMORY[0x277D52B58], MEMORY[0x277D52B60]);
  sub_22766BF60();
  sub_227665C20();
  sub_227088BAC(&qword_27D7BA128, MEMORY[0x277D51CB0], MEMORY[0x277D51CB8]);
  return sub_22766BF60();
}

uint64_t sub_2270889C8(uint64_t a1)
{
  sub_22766D370();
  sub_227667100();
  sub_227088BAC(&qword_27D7BA120, MEMORY[0x277D52B58], MEMORY[0x277D52B60]);
  sub_22766BF60();
  sub_227665C20();
  sub_227088BAC(&qword_27D7BA128, MEMORY[0x277D51CB0], MEMORY[0x277D51CB8]);
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t sub_227088AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x22AA933D0]() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return MEMORY[0x2821B1FF8](a1 + v6, a2 + v6);
}

uint64_t type metadata accessor for WorkoutPlanScheduleResult(uint64_t a1)
{
  result = qword_27D7BA130;
  if (!qword_27D7BA130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227088BAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227088C1C(uint64_t a1)
{
  result = sub_227667100();
  if (v2 <= 0x3F)
  {
    result = sub_227665C20();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_227088CB0()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v1 + 8))(v3, v0);
  swift_getObjectType();
  sub_22766A020();
  swift_allocObject();
  swift_weakInit();
  sub_2276699E0();

  __swift_destroy_boxed_opaque_existential_0(v6);
  swift_allocObject();
  swift_weakInit();
  sub_227089A90();
  sub_2276699E0();

  __swift_destroy_boxed_opaque_existential_0(v6);
  swift_allocObject();
  swift_weakInit();
  sub_227089B7C();
  sub_2276699E0();

  __swift_destroy_boxed_opaque_existential_0(v6);
  sub_22766A500();
  swift_allocObject();
  swift_weakInit();
  sub_2276699E0();

  __swift_destroy_boxed_opaque_existential_0(v6);
  sub_22766A570();
  swift_allocObject();
  swift_weakInit();
  sub_2276699E0();

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t sub_227089020(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA148, &qword_2276782B8);
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270890BC, 0, 0);
}

uint64_t sub_2270890BC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_227089210;
    v3 = v0[6];

    return sub_226EA84C8(v3);
  }

  else
  {
    v5 = v0[6];
    v6 = sub_2276658F0();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_226E97D1C(v5, &qword_27D7BA148, &qword_2276782B8);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_227089210()
{

  return MEMORY[0x2822009F8](sub_227089D00, 0, 0);
}

uint64_t sub_227089328(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA148, &qword_2276782B8);
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270893C4, 0, 0);
}

uint64_t sub_2270893C4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_227089518;
    v3 = v0[6];

    return sub_226EA84C8(v3);
  }

  else
  {
    v5 = v0[6];
    v6 = sub_2276658F0();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_226E97D1C(v5, &qword_27D7BA148, &qword_2276782B8);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_227089518()
{

  return MEMORY[0x2822009F8](sub_227089630, 0, 0);
}

uint64_t sub_227089630()
{
  v1 = *(v0 + 48);
  v2 = sub_2276658F0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_226E97D1C(v1, &qword_27D7BA148, &qword_2276782B8);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2270896F0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 21);

  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  sub_226E97D1C(v0 + OBJC_IVAR____TtC15SeymourServices27ContentAvailabilityObserver_previousContentAvailability, &qword_27D7BA148, &qword_2276782B8);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ContentAvailabilityObserver(uint64_t a1)
{
  result = qword_28139E5C8;
  if (!qword_28139E5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2270897C4(uint64_t a1)
{
  sub_227089898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_227089898(uint64_t a1)
{
  if (!qword_2813A56F8)
  {
    sub_2276658F0();
    v1 = sub_22766CB90();
    if (!v2)
    {
      atomic_store(v1, &qword_2813A56F8);
    }
  }
}

uint64_t sub_2270898F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA148, &qword_2276782B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_227089960(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227089020(a1, v1);
}

uint64_t sub_2270899F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227089020(a1, v1);
}

unint64_t sub_227089A90()
{
  result = qword_28139A468[0];
  if (!qword_28139A468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28139A468);
  }

  return result;
}

uint64_t sub_227089AE4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227089020(a1, v1);
}

unint64_t sub_227089B7C()
{
  result = qword_28139A158[0];
  if (!qword_28139A158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28139A158);
  }

  return result;
}

uint64_t sub_227089BD0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227089020(a1, v1);
}

uint64_t sub_227089C68(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_227089328(a1, v1);
}

uint64_t SQLiteDatabaseHandle.fetchResult(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_227089D2C, 0, 0);
}

uint64_t sub_227089D2C()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v1;

  v6 = swift_task_alloc();
  v0[8] = v6;
  v6[2] = v2;
  v6[3] = sub_22708A320;
  v6[4] = v5;
  v7 = swift_task_alloc();
  v0[9] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA150, &qword_227678328);
  *v7 = v0;
  v7[1] = sub_227089E98;
  v9 = v0[2];

  return MEMORY[0x2822008A0](v9, 0, 0, 0x2865747563657865, 0xEE00293A68746977, sub_22708AC80, v6, v8);
}

uint64_t sub_227089E98()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227089FE0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_227089FE0()
{

  v1 = *(v0 + 8);

  return v1();
}

sqlite3_stmt *sub_22708A04C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  result = sub_22708A340(a2, a3, a4);
  if (!v5)
  {
    v9 = result;
    v10 = sqlite3_step(result);
    v11 = sub_2273946A4(v10);
    if (!v11)
    {
      sub_22706F95C();
      swift_allocError();
      *v22 = xmmword_227678310;
      *(v22 + 16) = 2;
      return swift_willThrow();
    }

    if (v11 != 1)
    {
      a5[3] = &type metadata for NoDatabaseResult;
      result = sub_22708AF88();
      a5[4] = result;
      return result;
    }

    v12 = sqlite3_reset(v9);
    sub_2273946A4(v12);
    v13 = sqlite3_column_count(v9);
    if ((v13 & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
      if (!v13)
      {
LABEL_16:
        v23 = type metadata accessor for SQLiteDatabaseResult();
        v24 = swift_allocObject();
        v24[2] = a1;
        v24[3] = v9;
        v24[4] = v14;
        a5[3] = v23;
        a5[4] = sub_226E9EC40(&qword_27D7BA170, type metadata accessor for SQLiteDatabaseResult, &unk_227687638);
        *a5 = v24;
      }

      v15 = v13;
      v27 = MEMORY[0x277D84F90];
      sub_226F1EF90();
      v16 = 0;
      v14 = v27;
      while (sqlite3_column_name(v9, v16))
      {
        v17 = sub_22766C140();
        v28 = v14;
        v19 = *(v14 + 16);
        if (v19 >= *(v14 + 24) >> 1)
        {
          v26 = v17;
          v21 = v18;
          sub_226F1EF90();
          v18 = v21;
          v17 = v26;
          v14 = v28;
        }

        ++v16;
        *(v14 + 16) = v19 + 1;
        v20 = v14 + 16 * v19;
        *(v20 + 32) = v17;
        *(v20 + 40) = v18;
        if (v15 == v16)
        {
          goto LABEL_16;
        }
      }
    }

    sub_22766CE20();

    v25 = sub_22766D140();
    MEMORY[0x22AA98450](v25);

    result = sub_22766CFB0();
    __break(1u);
  }

  return result;
}

sqlite3_stmt *sub_22708A340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v16[0] = 0;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = v16;
  v6 = sub_2272BBF9C(a1, a2, sub_22708AFDC, v15);
  sub_2273946A4(v6);
  if (!v4)
  {
    v3 = v16[0];
    if (v16[0])
    {
      v8 = *(a3 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = (a3 + 48);
        do
        {
          if (v9 == 0x80000000)
          {
            __break(1u);
          }

          v12 = *(v10 - 2);
          v11 = *(v10 - 1);
          v13 = *v10;
          sub_22708B000(v12, v11, *v10);
          sub_22706F27C(v3, v9, v12, v11, v13);
          sub_22708B024(v12, v11, v13);
          ++v9;
          v10 += 24;
        }

        while (v8 != v9);
      }
    }

    else
    {
      sub_22706F95C();
      swift_allocError();
      *v14 = 0;
      *(v14 + 8) = 0;
      *(v14 + 16) = 2;
      swift_willThrow();
    }
  }

  return v3;
}

uint64_t sub_22708A4B8@<X0>(char *zSql@<X0>, sqlite3_stmt **ppStmt@<X5>, uint64_t a3@<X1>, uint64_t a4@<X2>, unint64_t a5@<X3>, _DWORD *a6@<X8>)
{
  v8 = *(a3 + 16);
  if ((a5 & 0x1000000000000000) != 0)
  {
    v11 = *(a3 + 16);
    v12 = ppStmt;
    v13 = sub_22766C160();
    if (v13 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    v9 = v13;
    ppStmt = v12;
    v8 = v11;
  }

  else
  {
    if ((a5 & 0x2000000000000000) != 0)
    {
LABEL_6:
      v9 = HIBYTE(a5) & 0xF;
      goto LABEL_7;
    }

    v9 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v9 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  result = sqlite3_prepare_v2(v8, zSql, v9, ppStmt, 0);
  *a6 = result;
  return result;
}

uint64_t sub_22708A560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[0] = a3;
  v7 = sub_22766B3B0();
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B3F0();
  v23 = *(v10 - 8);
  v24 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA158, &qword_227678330);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v22 - v16;
  v22[1] = *(a2 + 32);
  (*(v14 + 16))(v22 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v22[0];
  *(v19 + 3) = a4;
  *(v19 + 4) = a2;
  (*(v14 + 32))(&v19[v18], v17, v13);
  aBlock[4] = sub_22708AD44;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_10;
  v20 = _Block_copy(aBlock);

  sub_22766B3D0();
  v26 = MEMORY[0x277D84F90];
  sub_226E9EC40(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v12, v9, v20);
  _Block_release(v20);
  (*(v25 + 8))(v9, v7);
  (*(v23 + 8))(v12, v24);
}

uint64_t sub_22708A8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[0] = a3;
  v7 = sub_22766B3B0();
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B3F0();
  v23 = *(v10 - 8);
  v24 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA160, &qword_227678338);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v22 - v16;
  v22[1] = *(a2 + 32);
  (*(v14 + 16))(v22 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v22[0];
  *(v19 + 3) = a4;
  *(v19 + 4) = a2;
  (*(v14 + 32))(&v19[v18], v17, v13);
  aBlock[4] = sub_22708AEE8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_11;
  v20 = _Block_copy(aBlock);

  sub_22766B3D0();
  v26 = MEMORY[0x277D84F90];
  sub_226E9EC40(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v12, v9, v20);
  _Block_release(v20);
  (*(v25 + 8))(v9, v7);
  (*(v23 + 8))(v12, v24);
}

uint64_t sub_22708AC8C(void (*a1)(uint64_t *__return_ptr, void), uint64_t a2, uint64_t a3)
{
  a1(&v4, *(a3 + 16));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA158, &qword_227678330);
  sub_22766C450();
}

uint64_t sub_22708AD6C(void (*a1)(void *__return_ptr, void), uint64_t a2, uint64_t a3)
{
  a1(v5, *(a3 + 16));
  sub_226E91B50(v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA160, &qword_227678338);
  sub_22766C450();
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t objectdestroy_4Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_22708AF10(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a3(v5, v6, v7, v8);
}

unint64_t sub_22708AF88()
{
  result = qword_27D7BA168;
  if (!qword_27D7BA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA168);
  }

  return result;
}

void sub_22708B000(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    sub_226F5E0B4(a1, a2);
  }

  else if (a3 == 3)
  {
  }
}

uint64_t sub_22708B024(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_226EDC420(result, a2);
  }

  if (a3 == 3)
  {
  }

  return result;
}

id sub_22708B07C(id result, void (*a2)(id *, id *), uint64_t a3, unint64_t a4)
{
  v13 = result;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v10)
  {
    for (j = 0; ; ++j)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x22AA991A0](j, a4, a3);
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a4 + 8 * j + 32);
      }

      v8 = result;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = result;
      a2(&v13, &v12);

      if (v4)
      {
      }

      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v10 = result;
    i = sub_22766CD20();
  }

  return result;
}

void sub_22708B1D0(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v20 = a2;
  v22 = a5(0);
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = v19 - v9;
  v24 = a1;
  v11 = a4 + 56;
  v12 = 1 << *(a4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a4 + 56);
  v15 = (v12 + 63) >> 6;
  v19[1] = v8 + 16;
  v21 = (v8 + 8);
  v23 = a4;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
      v18 = v22;
LABEL_9:
      (*(v8 + 16))(v10, *(v23 + 48) + *(v8 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v18);
      v20(&v24, v10);
      if (v5)
      {
        break;
      }

      v14 &= v14 - 1;
      (*v21)(v10, v18);
      v16 = v17;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    (*v21)(v10, v18);
  }

  else
  {
LABEL_5:
    v18 = v22;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        return;
      }

      v14 = *(v11 + 8 * v17);
      ++v16;
      if (v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22708B3F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_22766ABE0();
    sub_22708B454(v3);
  }

  return result;
}

uint64_t sub_22708B454(char a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state);
  if (v10)
  {
    v11 = sub_22766C4B0();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v10;
    *(v12 + 40) = a1;

    sub_2272CA940(0, 0, v9, &unk_2276784D0, v12);
  }

  else
  {
    sub_22766A770();
    v14 = sub_22766B380();
    v15 = sub_22766C890();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_226E8E000, v14, v15, "Trying to load new stores when persistent store is inactive. This is unexpected.", v16, 2u);
      MEMORY[0x22AA9A450](v16, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_22708B690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_226E92F34;

  return sub_2274D094C(v6);
}

uint64_t sub_22708B72C()
{

  v1 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_directory;
  v2 = sub_2276624A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_dataProtectionMonitor));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_transactionCoordinator));

  return v0;
}

uint64_t sub_22708B7F4()
{
  sub_22708B72C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersistenceStore(uint64_t a1)
{
  result = qword_2813A3188;
  if (!qword_2813A3188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22708B8A0(uint64_t a1)
{
  result = sub_2276624A0();
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

uint64_t sub_22708B98C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22708B9DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_22708BA40()
{
  v1[14] = v0;
  v2 = sub_22766C940();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = sub_22766CA10();
  v1[19] = swift_task_alloc();
  sub_22766B3F0();
  v1[20] = swift_task_alloc();
  v3 = sub_22766B390();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22708BBF0, 0, 0);
}

uint64_t sub_22708BBF0()
{
  v57 = v0;
  v56[1] = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  v2 = [objc_opt_self() defaultManager];
  v3 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_directory;
  v4 = sub_2276623E0();
  v0[12] = 0;
  v5 = [v2 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:v0 + 12];

  v6 = v0[12];
  if (v5)
  {
    v54 = v0 + 7;
    v55 = v0 + 2;
    v7 = v6;
    sub_22766A770();

    v8 = sub_22766B380();
    v9 = sub_22766C8B0();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[24];
    v12 = v0[21];
    v13 = v0[22];
    if (v10)
    {
      v51 = v0[21];
      v14 = swift_slowAlloc();
      v53 = v1;
      v15 = swift_slowAlloc();
      v56[0] = v15;
      *v14 = 136315138;
      v16 = sub_227662390();
      v18 = sub_226E97AE8(v16, v17, v56);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_226E8E000, v8, v9, "Activating persistence store in path: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      v19 = v15;
      v1 = v53;
      MEMORY[0x22AA9A450](v19, -1, -1);
      MEMORY[0x22AA9A450](v14, -1, -1);

      (*(v13 + 8))(v11, v51);
    }

    else
    {

      (*(v13 + 8))(v11, v12);
    }

    v35 = v0[17];
    v36 = v0[16];
    v50 = v0[15];
    v37 = v0[14];
    v52 = sub_227431B60(v1 + v3, *(v37 + 16));
    sub_226E91B50(v37 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_dataProtectionMonitor, v55);
    sub_226E91B50(v37 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_transactionCoordinator, v54);
    v38 = *(v37 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_monitors);
    sub_226E99364(0, &unk_28139D250, 0x277D85C90);

    sub_22766B3D0();
    v0[13] = MEMORY[0x277D84F90];
    sub_22708FC1C(&qword_28139D260, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8B0, &qword_227678490);
    sub_22708FC64();
    sub_22766CC80();
    (*(v36 + 104))(v35, *MEMORY[0x277D85268], v50);
    v39 = sub_22766CA20();
    v0[25] = type metadata accessor for PersistenceStoreDelegate(0);
    v40 = swift_allocObject();
    v0[26] = v40;
    swift_defaultActor_initialize();
    v41 = OBJC_IVAR____TtC15SeymourServices24PersistenceStoreDelegate_lock;
    v42 = *MEMORY[0x277D0A920];
    v43 = sub_22766A9D0();
    (*(*(v43 - 8) + 104))(&v40[v41], v42, v43);
    *(v40 + 27) = v52;
    sub_226E91B50(v55, (v40 + 120));
    sub_226E91B50(v54, (v40 + 176));
    *(v40 + 21) = v39;
    sub_226E99364(0, &unk_28139D268, 0x277CBE4A0);
    v44 = qword_2813A2140;
    v45 = v39;
    if (v44 != -1)
    {
      swift_once();
    }

    v48 = sub_2274EE780(word_2813B2670);
    v49 = v0[14];

    __swift_destroy_boxed_opaque_existential_0(v54);
    __swift_destroy_boxed_opaque_existential_0(v55);
    *(v40 + 14) = v48;
    *(v40 + 20) = v38;
    *(v49 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state) = v40;

    return MEMORY[0x2822009F8](sub_22708C414, v40, 0);
  }

  else
  {
    v20 = v6;
    v21 = sub_2276622C0();

    swift_willThrow();
    sub_22766A770();

    v22 = sub_22766B380();
    v23 = sub_22766C890();

    v24 = os_log_type_enabled(v22, v23);
    v26 = v0[22];
    v25 = v0[23];
    v27 = v0[21];
    if (v24)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v56[0] = v29;
      *v28 = 136315138;
      v30 = sub_227662390();
      v32 = sub_226E97AE8(v30, v31, v56);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_226E8E000, v22, v23, "Failed to create library directory at path: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AA9A450](v29, -1, -1);
      MEMORY[0x22AA9A450](v28, -1, -1);
    }

    (*(v26 + 8))(v25, v27);
    v33 = sub_227664DD0();
    sub_22708FC1C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51008], v33);
    swift_willThrow();

    v46 = v0[1];

    return v46();
  }
}

uint64_t sub_22708C414()
{
  v1 = v0;
  v2 = swift_task_alloc();
  v1[27] = v2;
  v3 = sub_22708FC1C(qword_28139F288, type metadata accessor for PersistenceStoreDelegate, &unk_227688670);
  *v2 = v1;
  v2[1] = sub_22708C534;
  v5 = v1[25];
  v4 = v1[26];
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282161508](v3, &unk_227678498, v4, v5, v6, v3);
}

void sub_22708C534()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 208);

    MEMORY[0x2822009F8](sub_22708C6AC, v3, 0);
  }
}

uint64_t sub_22708C6AC()
{

  return MEMORY[0x2822009F8](sub_22708C738, 0, 0);
}

uint64_t sub_22708C738()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22708C80C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22708C870(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  return MEMORY[0x2822009F8](sub_22708C894, 0, 0);
}

uint64_t sub_22708C894()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v3 = *(v1 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state);
  *(v0 + 24) = v3;
  if (v3)
  {
    v4 = *(v0 + 80);
    v5 = *(v3 + 112);

    v6 = [v5 managedObjectModel];
    *(v0 + 32) = v6;
    v7 = swift_allocObject();
    *(v0 + 40) = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v4;
    v8 = *(v1 + v2);
    *(v0 + 48) = v8;
    v9 = v6;
    if (v8)
    {

      v10 = swift_task_alloc();
      *(v0 + 56) = v10;
      *v10 = v0;
      v10[1] = sub_22708CB70;

      return sub_22708D9EC(sub_22708D4BC, v7);
    }

    v14 = sub_227664DD0();
    sub_22708FC1C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51008], v14);
    swift_willThrow();
  }

  else
  {
    v12 = sub_227664DD0();
    sub_22708FC1C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51020], v12);
    swift_willThrow();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22708CB70(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_22708CD20;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_22708CC98;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22708CC98()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[9];

  return v2(v3);
}

uint64_t sub_22708CD20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22708CD9C@<X0>(id a1@<X1>, uint64_t a2@<X0>, char a3@<W2>, void *a4@<X8>)
{
  v8 = [a1 entities];
  sub_226E99364(0, &unk_27D7BA198, 0x277CBE408);
  v9 = sub_22766C2C0();

  v12[2] = a2;
  v13 = a3;
  v10 = sub_22708B07C(MEMORY[0x277D84F90], sub_22708FBFC, v12, v9);

  if (!v4)
  {
    *a4 = v10;
  }

  return result;
}

void sub_22708CE7C(uint64_t *a1, void **a2, void *a3, uint64_t a4)
{
  v26 = a1;
  v7 = sub_227665530();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = *a2;
  v14 = [objc_allocWithZone(MEMORY[0x277CBE428]) init];
  [v14 setEntity_];
  __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  if (sub_227669C10())
  {
    v15 = sub_227664DD0();
    sub_22708FC1C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51010], v15);
    swift_willThrow();
  }

  else
  {
    sub_226E99364(0, &qword_27D7B8770, 0x277CBE438);
    v17 = sub_22766C9D0();
    if (v4)
    {
    }

    else
    {
      v18 = v17;
      v19 = [v13 managedObjectClassName];
      if (v19)
      {
        v20 = v19;
        sub_22766C000();

        v28 = v18;
        sub_22766D140();
        sub_227665520();
        (*(v27 + 16))(v9, v12, v7);
        v21 = v26;
        v22 = *v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_2273A65D4(0, v22[2] + 1, 1, v22);
        }

        v24 = v22[2];
        v23 = v22[3];
        if (v24 >= v23 >> 1)
        {
          v22 = sub_2273A65D4((v23 > 1), v24 + 1, 1, v22);
        }

        v25 = v27;
        (*(v27 + 8))(v12, v7);
        v22[2] = v24 + 1;
        (*(v25 + 32))(v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v24, v9, v7);
        *v21 = v22;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_22708D1E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  return sub_22708BA40();
}

uint64_t sub_22708D29C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state);
  v0[3] = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22708D354, v1, 0);
  }

  else
  {
    v2 = v0[1];

    return v2(0);
  }
}

uint64_t sub_22708D354()
{
  *(v0 + 32) = sub_226E9D1B4();

  return MEMORY[0x2822009F8](sub_22708D3C0, 0, 0);
}

uint64_t sub_22708D3C0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 32);

  return v1(v2);
}

uint64_t sub_22708D424(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226F39AF0;

  return sub_22708C870(a1);
}

void sub_22708D4DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA188, &qword_227678470);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = aBlock - v12;
  (*(v10 + 16))(aBlock - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  (*(v10 + 32))(v15 + v14, v13, v9);
  aBlock[4] = sub_22708FA78;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_11;
  v16 = _Block_copy(aBlock);

  [a3 performBlock_];
  _Block_release(v16);
}

void sub_22708D6AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = aBlock - v12;
  (*(v10 + 16))(aBlock - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  (*(v10 + 32))(v15 + v14, v13, v9);
  aBlock[4] = sub_22708FB60;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_39;
  v16 = _Block_copy(aBlock);

  [a3 performBlock_];
  _Block_release(v16);
}

uint64_t sub_22708D87C(void (*a1)(uint64_t *__return_ptr))
{
  v2 = MEMORY[0x22AA99A00]();
  a1(&v5);
  v3 = v5;
  objc_autoreleasePoolPop(v2);
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA188, &qword_227678470);
  return sub_22766C450();
}

uint64_t sub_22708D940(void (*a1)(void))
{
  v2 = MEMORY[0x22AA99A00]();
  a1();
  objc_autoreleasePoolPop(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478);
  return sub_22766C450();
}

uint64_t sub_22708D9EC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22766B390();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22708DAB0, v2, 0);
}

uint64_t sub_22708DAB0()
{
  v1 = swift_task_alloc();
  v0[9] = v1;
  v2 = type metadata accessor for PersistenceStoreDelegate(0);
  v0[10] = v2;
  v3 = sub_22708FC1C(qword_28139F288, type metadata accessor for PersistenceStoreDelegate, &unk_227688670);
  v0[11] = v3;
  *v1 = v0;
  v1[1] = sub_22708DBBC;
  v4 = v0[5];
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282161508](v3, &unk_227678448, v4, v2, v5, v3);
}

void sub_22708DBBC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 40);

    MEMORY[0x2822009F8](sub_22708DCF0, v3, 0);
  }
}

uint64_t sub_22708DCF0()
{
  v1 = [*(*(v0 + 40) + 112) persistentStoreCoordinator];
  v2 = [v1 persistentStores];

  sub_226E99364(0, &qword_281398AC8, 0x277CBE4D0);
  v3 = sub_22766C2C0();

  if (v3 >> 62)
  {
    v12 = sub_22766CD20();

    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v4)
    {
LABEL_3:
      v5 = *(v0 + 40);
      v6 = swift_task_alloc();
      *(v0 + 96) = v6;
      v7 = *(v0 + 24);
      *(v6 + 16) = v5;
      *(v6 + 24) = v7;
      v8 = swift_task_alloc();
      *(v0 + 104) = v8;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA180, &qword_227678460);
      *v8 = v0;
      v8[1] = sub_22708E014;
      v10 = *(v0 + 80);
      v11 = *(v0 + 88);

      return MEMORY[0x282161508](v0 + 16, &unk_227678458, v6, v10, v9, v11);
    }
  }

  sub_22766A770();
  v13 = sub_22766B380();
  v14 = sub_22766C890();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_226E8E000, v13, v14, "Aborting transaction due to unloaded stores.", v15, 2u);
    MEMORY[0x22AA9A450](v15, -1, -1);
  }

  v17 = *(v0 + 56);
  v16 = *(v0 + 64);
  v18 = *(v0 + 48);

  (*(v17 + 8))(v16, v18);
  v19 = sub_227664DD0();
  sub_22708FC1C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51020], v19);
  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_22708E014()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x2822009F8](sub_22708E168, v3, 0);
  }

  else
  {

    v4 = v2[2];

    v5 = v2[1];

    return v5(v4);
  }
}

uint64_t sub_22708E168()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22708E1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22766B390();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22708E298, v3, 0);
}

uint64_t sub_22708E298()
{
  v1 = swift_task_alloc();
  v0[9] = v1;
  v2 = type metadata accessor for PersistenceStoreDelegate(0);
  v0[10] = v2;
  v3 = sub_22708FC1C(qword_28139F288, type metadata accessor for PersistenceStoreDelegate, &unk_227688670);
  v0[11] = v3;
  *v1 = v0;
  v1[1] = sub_22708E3A4;
  v4 = v0[5];
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282161508](v3, &unk_2276784A8, v4, v2, v5, v3);
}

void sub_22708E3A4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 40);

    MEMORY[0x2822009F8](sub_22708E4D8, v3, 0);
  }
}

uint64_t sub_22708E4D8()
{
  v1 = [*(*(v0 + 40) + 112) persistentStoreCoordinator];
  v2 = [v1 persistentStores];

  sub_226E99364(0, &qword_281398AC8, 0x277CBE4D0);
  v3 = sub_22766C2C0();

  if (v3 >> 62)
  {
    v13 = sub_22766CD20();

    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v4)
    {
LABEL_3:
      v5 = *(v0 + 40);
      v6 = swift_task_alloc();
      *(v0 + 96) = v6;
      v7 = *(v0 + 24);
      *(v6 + 16) = v5;
      *(v6 + 24) = v7;
      v8 = swift_task_alloc();
      *(v0 + 104) = v8;
      *v8 = v0;
      v8[1] = sub_22708E7F0;
      v9 = *(v0 + 80);
      v10 = *(v0 + 88);
      v11 = *(v0 + 16);
      v12 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282161508](v11, &unk_2276784B8, v6, v9, v12, v10);
    }
  }

  sub_22766A770();
  v14 = sub_22766B380();
  v15 = sub_22766C890();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_226E8E000, v14, v15, "Aborting transaction due to unloaded stores.", v16, 2u);
    MEMORY[0x22AA9A450](v16, -1, -1);
  }

  v18 = *(v0 + 56);
  v17 = *(v0 + 64);
  v19 = *(v0 + 48);

  (*(v18 + 8))(v17, v19);
  v20 = sub_227664DD0();
  sub_22708FC1C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51020], v20);
  swift_willThrow();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_22708E7F0()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x2822009F8](sub_22708E168, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_22708E93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_22708E95C, a2, 0);
}

uint64_t sub_22708E95C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = *(v3 + 112);
  v5 = sub_226E9D1B4();
  v6 = swift_allocObject();
  v0[7] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;

  v7 = [v4 newBackgroundContext];
  v0[8] = v7;
  [v7 setMergePolicy_];
  *(swift_task_alloc() + 16) = v7;
  sub_226E99364(0, &qword_281398A90, 0x277CBE440);
  v8 = v7;
  sub_22766C9C0();

  v9 = v0[2];
  v0[9] = v9;
  v10 = *(v3 + 160);
  v0[10] = v10;
  v11 = swift_allocObject();
  v0[11] = v11;
  *(v11 + 16) = sub_22708FD7C;
  *(v11 + 24) = v6;
  *(v11 + 32) = v9;
  *(v11 + 40) = v8;
  *(v11 + 48) = v5;
  *(v11 + 56) = v10;
  *(v11 + 64) = v9;
  *(v11 + 72) = v8;
  v12 = v8;
  v13 = v9;
  v14 = v12;
  v15 = v13;
  swift_bridgeObjectRetain_n();
  v16 = v14;
  v17 = v15;

  return MEMORY[0x2822009F8](sub_22708EB38, 0, 0);
}

uint64_t sub_22708EB38()
{
  v1 = v0[5].i64[1];
  v2 = swift_task_alloc();
  v0[6].i64[0] = v2;
  v2[1] = vextq_s8(v0[4], v0[4], 8uLL);
  v2[2].i64[0] = sub_22708FDF8;
  v2[2].i64[1] = v1;
  v3 = swift_task_alloc();
  v0[6].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_22708EC4C;
  v4 = v0[1].i64[1];
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0x286D726F66726570, 0xEB00000000293A5FLL, sub_22708FE24, v2, v5);
}

uint64_t sub_22708EC4C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_22708EE08;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 32);

    v3 = sub_22708ED7C;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_22708ED7C()
{
  v1 = v0[9];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22708EE08()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_22708EE7C, v1, 0);
}

uint64_t sub_22708EE7C()
{
  v1 = v0[9];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22708EF04(void *a1, void *a2, char a3, uint64_t a4, void (*a5)(void *, __n128))
{
  v14[3] = &type metadata for PersistenceHandle;
  v14[4] = &off_283A9AF78;
  v10 = swift_allocObject();
  v14[0] = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  v11 = a1;
  v12 = a2;

  (a5)(v14);
  return __swift_destroy_boxed_opaque_existential_0(v14);
}

uint64_t sub_22708EFCC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 128) = a2;
  *(v5 + 32) = a1;
  *(v5 + 40) = a3;
  return MEMORY[0x2822009F8](sub_22708EFF4, v4, 0);
}

uint64_t sub_22708EFF4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 128);
  v4 = *(v0 + 40);
  v5 = [*(v0 + 32) newBackgroundContext];
  *(v0 + 64) = v5;
  [v5 setMergePolicy_];
  *(swift_task_alloc() + 16) = v5;
  sub_226E99364(0, &qword_281398A90, 0x277CBE440);
  v6 = v5;
  sub_22766C9C0();

  v7 = *(v0 + 16);
  *(v0 + 72) = v7;
  v8 = *(v2 + 160);
  *(v0 + 80) = v8;
  v9 = swift_allocObject();
  *(v0 + 88) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v1;
  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  *(v9 + 48) = v3;
  *(v9 + 56) = v8;
  *(v9 + 64) = v7;
  *(v9 + 72) = v6;
  v10 = v6;
  v11 = v7;
  v12 = v10;
  v13 = v11;
  swift_bridgeObjectRetain_n();
  v14 = v12;
  v15 = v13;

  return MEMORY[0x2822009F8](sub_22708F190, 0, 0);
}

uint64_t sub_22708F190()
{
  v1 = v0[5].i64[1];
  v2 = swift_task_alloc();
  v0[6].i64[0] = v2;
  v2[1] = vextq_s8(v0[4], v0[4], 8uLL);
  v2[2].i64[0] = sub_22708FA40;
  v2[2].i64[1] = v1;
  v3 = swift_task_alloc();
  v0[6].i64[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA180, &qword_227678460);
  *v3 = v0;
  v3[1] = sub_22708F2B0;

  return MEMORY[0x2822008A0](&v0[1].u64[1], 0, 0, 0x286D726F66726570, 0xEB00000000293A5FLL, sub_22708FA6C, v2, v4);
}

uint64_t sub_22708F2B0()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_22708F478;
    v4 = 0;
  }

  else
  {
    v5 = v2[7];

    v2[15] = v2[3];
    v3 = sub_22708F3F0;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_22708F3F0()
{
  v1 = v0[9];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[15];

  return v3(v4);
}

uint64_t sub_22708F478()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_22708F4EC, v1, 0);
}

uint64_t sub_22708F4EC()
{
  v1 = v0[9];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22708F570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22708F590, a2, 0);
}

uint64_t sub_22708F590()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v0[3] + 112);
  v4 = sub_226E9D1B4();
  v5 = swift_allocObject();
  v0[6] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_22708F690;

  return sub_22708EFCC(v3, v4, sub_22708F990, v5);
}

uint64_t sub_22708F690(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = *(v4 + 24);
    v6 = sub_226F73F68;
  }

  else
  {
    v7 = *(v4 + 24);

    *(v4 + 72) = a1;
    v6 = sub_22708F7D0;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22708F7F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E92F34;

  return sub_22708F570(a1, v4, v5, v6);
}

uint64_t sub_22708F8BC@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(uint64_t *__return_ptr, void *, __n128)@<X4>, void *a6@<X8>)
{
  v17[3] = &type metadata for PersistenceHandle;
  v17[4] = &off_283A9AF78;
  v13 = swift_allocObject();
  v17[0] = v13;
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  v14 = a1;
  v15 = a2;

  (a5)(&v18, v17);
  result = __swift_destroy_boxed_opaque_existential_0(v17);
  if (!v6)
  {
    *a6 = v18;
  }

  return result;
}

void *sub_22708F9C8@<X0>(void *(*a1)(void **__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X7>, void *a7@<X8>)
{
  result = a1(&v11, a2, a3, a4, a5);
  if (!v7)
  {
    sub_227125B34(a6);
    result = v11;
    *a7 = v11;
  }

  return result;
}

uint64_t objectdestroy_29Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_22708FB88(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a3(v5, v6, v7);
}

uint64_t sub_22708FC1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22708FC64()
{
  result = qword_28139D2D0;
  if (!qword_28139D2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BC8B0, &qword_227678490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D2D0);
  }

  return result;
}

uint64_t sub_22708FCC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_22708E93C(a1, v4, v5, v6);
}

uint64_t objectdestroy_24Tm()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22708FE30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E92F34;

  return sub_22708B690(a1, v4, v5, v6, v7);
}

uint64_t sub_22708FF78()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22708FFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_227090024(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  sub_226F1EF90();
  v2 = v25;
  v24 = a1 + 56;
  result = sub_22766CC90();
  v5 = result;
  v6 = 0;
  v23 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v24 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_2276637A0();
    v12 = *(v25 + 16);
    if (v12 >= *(v25 + 24) >> 1)
    {
      v21 = v11;
      v22 = result;
      sub_226F1EF90();
      v11 = v21;
      result = v22;
    }

    *(v25 + 16) = v12 + 1;
    v13 = v25 + 16 * v12;
    *(v13 + 32) = result;
    *(v13 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v14 = *(v24 + 8 * v9);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v23;
    }

    else
    {
      v16 = v9 << 6;
      v17 = v9 + 1;
      v8 = v23;
      v18 = (a1 + 64 + 8 * v9);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_226EB526C(v5, v10, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_227090248(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_226EBF9F4;
  *(v7 + 24) = v6;
  v9[4] = sub_2270931E8;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_227093A90;
  v9[3] = &block_descriptor_12;
  v8 = _Block_copy(v9);

  [a3 addFinishBlock_];
  _Block_release(v8);
}

void sub_227090358(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_226EB438C;
  *(v7 + 24) = v6;
  v9[4] = sub_2270934F0;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_227093A90;
  v9[3] = &block_descriptor_72;
  v8 = _Block_copy(v9);

  [a3 addFinishBlock_];
  _Block_release(v8);
}

void sub_227090468(uint64_t a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else if (a1)
  {
    v6 = swift_unknownObjectRetain();
    a3(v6, 0);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_22766CFB0();
    __break(1u);
  }
}

void sub_22709055C(void *a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
    v6 = a2;

LABEL_4:

    return;
  }

  if (a1)
  {
    v8 = a1;
    a3(a1, 0);
    v6 = v8;

    goto LABEL_4;
  }

  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_227090658()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2270906D4()
{
  if (*(v0 + 64))
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      *(swift_allocObject() + 16) = v1;
      swift_unknownObjectRetain();

      return sub_227669270();
    }

    v6 = sub_2276636A0();
    sub_22709329C(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
    v7 = swift_allocError();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D50090], v6);
    *(swift_allocObject() + 16) = v7;
  }

  else
  {
    v3 = sub_2276636A0();
    sub_22709329C(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
    v4 = swift_allocError();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D50080], v3);
    *(swift_allocObject() + 16) = v4;
  }

  return sub_227669280();
}

void sub_22709093C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_226EB496C;
  *(v7 + 24) = v6;
  v9[4] = sub_2270931F8;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22718CCBC;
  v9[3] = &block_descriptor_42;
  v8 = _Block_copy(v9);

  [a3 performMaintenanceWithCompletion_];
  _Block_release(v8);
}

void sub_227090A4C(void *a1, void (*a2)(void *, void))
{
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  sub_22766D420();
  a2(v4, v5);
  sub_226EB4548(v4, v5);
}

uint64_t sub_227090AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29[0] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1A8, &qword_227678660);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v29 - v10;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A740();
  sub_22766B370();
  (*(v13 + 8))(v15, v12);
  v16 = *(v3 + 64);
  if (v16)
  {
    swift_unknownObjectRetain();
    sub_227090024(a1);
    v17 = sub_22766C2B0();

    v18 = [v16 resetIDForTopics:v17 options:{0, v29[0]}];

    *(swift_allocObject() + 16) = v18;
    v19 = v18;
    sub_227669270();
    v20 = swift_allocObject();
    *(v20 + 16) = nullsub_1;
    *(v20 + 24) = 0;
    (*(v6 + 16))(v8, v11, v5);
    v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    (*(v6 + 32))(v23 + v21, v8, v5);
    v24 = (v23 + v22);
    *v24 = sub_2270931B8;
    v24[1] = v20;

    sub_227669270();

    swift_unknownObjectRelease();
    return (*(v6 + 8))(v11, v5);
  }

  else
  {
    v26 = sub_2276636A0();
    sub_22709329C(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
    v27 = swift_allocError();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D50080], v26);
    *(swift_allocObject() + 16) = v27;
    return sub_227669280();
  }
}

void sub_227090F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = sub_227662750();
  if ((*(*(v12 - 8) + 48))(a3, 1, v12) == 1)
  {

    v13 = sub_227149604(MEMORY[0x277D84F90]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B8, &qword_227678668);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227670CD0;
    v15 = *MEMORY[0x277D28760];
    *(inited + 32) = *MEMORY[0x277D28760];
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 40));
    sub_226EDDC60(a3, boxed_opaque_existential_0);

    v17 = v15;
    v13 = sub_227149604(inited);
    swift_setDeallocating();
    sub_226E97D1C(inited + 32, &qword_27D7BA1C0, &qword_227678670);
  }

  v18 = *(a4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v18;
  sub_227093510(v13, sub_2270930C4, 0, isUniquelyReferenced_nonNull_native, aBlock);

  sub_2276637A0();
  v20 = sub_22766BFD0();

  type metadata accessor for MTIDOptionKey(0);
  sub_22709329C(&qword_27D7B8210, type metadata accessor for MTIDOptionKey, &unk_22766FC80);
  v21 = sub_22766BE90();

  v22 = swift_allocObject();
  *(v22 + 16) = sub_226ECCE0C;
  *(v22 + 24) = v11;
  aBlock[4] = sub_2270937F0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_227093A90;
  aBlock[3] = &block_descriptor_87;
  v23 = _Block_copy(aBlock);

  [a5 queryIDForTopic:v20 type:1 options:v21 completion:v23];
  _Block_release(v23);
}

uint64_t sub_22709125C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[0] = a5;
  v23[1] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = v23 - v12;
  v14 = *(v6 + 64);
  if (v14)
  {
    sub_226EDDC60(a2, v23 - v12);
    v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    sub_226EDDCD0(v13, v17 + v15);
    *(v17 + v16) = v6;
    v18 = v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v18 = v14;
    *(v18 + 8) = a1;
    swift_unknownObjectRetain();

    return sub_227669270();
  }

  else
  {
    v20 = sub_2276636A0();
    sub_22709329C(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
    v21 = swift_allocError();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D50080], v20);
    *(swift_allocObject() + 16) = v21;

    return sub_227669280();
  }
}

void sub_2270914B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = sub_227662750();
  if ((*(*(v12 - 8) + 48))(a3, 1, v12) == 1)
  {

    v13 = sub_227149604(MEMORY[0x277D84F90]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B8, &qword_227678668);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227670CD0;
    v15 = *MEMORY[0x277D28760];
    *(inited + 32) = *MEMORY[0x277D28760];
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 40));
    sub_226EDDC60(a3, boxed_opaque_existential_0);

    v17 = v15;
    v13 = sub_227149604(inited);
    swift_setDeallocating();
    sub_226E97D1C(inited + 32, &qword_27D7BA1C0, &qword_227678670);
  }

  v18 = *(a4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v18;
  sub_227093510(v13, sub_2270930C4, 0, isUniquelyReferenced_nonNull_native, aBlock);

  sub_2276637A0();
  v20 = sub_22766BFD0();

  type metadata accessor for MTIDOptionKey(0);
  sub_22709329C(&qword_27D7B8210, type metadata accessor for MTIDOptionKey, &unk_22766FC80);
  v21 = sub_22766BE90();

  v22 = swift_allocObject();
  *(v22 + 16) = sub_227093A78;
  *(v22 + 24) = v11;
  aBlock[4] = sub_227093A74;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_227093A90;
  aBlock[3] = &block_descriptor_116;
  v23 = _Block_copy(aBlock);

  [a5 queryIDForTopic:v20 type:2 options:v21 completion:v23];
  _Block_release(v23);
}

void sub_2270917D0(uint64_t a1, id a2, void (*a3)(id, uint64_t, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 0, 1);
    v6 = a2;
LABEL_3:

    return;
  }

  if (!a1)
  {
    v11 = sub_2276636A0();
    sub_22709329C(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
    v12 = swift_allocError();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D50058], v11);
    a3(v12, 0, 1);
    v6 = v12;
    goto LABEL_3;
  }

  v7 = [swift_unknownObjectRetain() idString];
  v8 = sub_22766C000();
  v10 = v9;

  a3(v8, v10, 0);
  swift_unknownObjectRelease();
}

uint64_t sub_227091960(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v19 - v8;
  v10 = *(v2 + 64);
  if (v10)
  {
    sub_226EDDC60(a2, &v19 - v8);
    v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v12 = (v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    sub_226EDDCD0(v9, v13 + v11);
    *(v13 + v12) = v2;
    v14 = v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v14 = v10;
    *(v14 + 8) = a1;
    sub_227665E60();
    swift_unknownObjectRetain();

    return sub_227669270();
  }

  else
  {
    v16 = sub_2276636A0();
    sub_22709329C(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
    v17 = swift_allocError();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D50080], v16);
    *(swift_allocObject() + 16) = v17;
    sub_227665E60();

    return sub_227669280();
  }
}

void sub_227091BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = sub_227662750();
  if ((*(*(v11 - 8) + 48))(a3, 1, v11) == 1)
  {
    v12 = sub_227149604(MEMORY[0x277D84F90]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B8, &qword_227678668);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227670CD0;
    v14 = *MEMORY[0x277D28760];
    *(inited + 32) = *MEMORY[0x277D28760];
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 40));
    sub_226EDDC60(a3, boxed_opaque_existential_0);
    v16 = v14;
    v12 = sub_227149604(inited);
    swift_setDeallocating();
    sub_226E97D1C(inited + 32, &qword_27D7BA1C0, &qword_227678670);
  }

  v17 = *(a4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v17;
  sub_227093510(v12, sub_2270930C4, 0, isUniquelyReferenced_nonNull_native, aBlock);

  sub_2276637A0();
  v19 = sub_22766BFD0();

  type metadata accessor for MTIDOptionKey(0);
  sub_22709329C(&qword_27D7B8210, type metadata accessor for MTIDOptionKey, &unk_22766FC80);
  v20 = sub_22766BE90();

  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  aBlock[4] = sub_227093824;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_227092244;
  aBlock[3] = &block_descriptor_99;
  v22 = _Block_copy(aBlock);

  [a5 IDFieldsForTopic:v19 options:v20 completion:v22];
  _Block_release(v22);
}

uint64_t sub_227091EC4(uint64_t a1, void *a2, void (*a3)(uint64_t *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD00, &unk_227684CE0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (&v26 - v10);
  if (!a2)
  {
    if (!a1)
    {
      goto LABEL_15;
    }

    v27 = sub_227664820();
    v28 = v13;
    sub_22766CDA0();
    if (*(a1 + 16))
    {
      v14 = sub_226E9BF6C(v29);
      if (v15)
      {
        sub_226E97CC0(*(a1 + 56) + 32 * v14, v30);
        sub_226E9B62C(v29);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_15;
        }

        v27 = sub_227664800();
        v28 = v16;
        sub_22766CDA0();
        if (*(a1 + 16))
        {
          v17 = sub_226E9BF6C(v29);
          if (v18)
          {
            sub_226E97CC0(*(a1 + 56) + 32 * v17, v30);
            sub_226E9B62C(v29);
            if (swift_dynamicCast())
            {
              v11 = v8;
              v30[0] = sub_227664810();
              v30[1] = v19;
              sub_22766CDA0();
              if (*(a1 + 16) && (v20 = sub_226E9BF6C(v29), (v21 & 1) != 0))
              {
                sub_226E97CC0(*(a1 + 56) + 32 * v20, v30);
                sub_226E9B62C(v29);
                swift_dynamicCast();
              }

              else
              {
                sub_226E9B62C(v29);
              }

              sub_227665E40();
              goto LABEL_16;
            }

LABEL_15:
            v22 = sub_2276636A0();
            sub_22709329C(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
            v23 = swift_allocError();
            (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D50078], v22);
            *v11 = v23;
LABEL_16:
            swift_storeEnumTagMultiPayload();
            goto LABEL_17;
          }
        }
      }
    }

    sub_226E9B62C(v29);
    goto LABEL_15;
  }

  *v11 = a2;
  swift_storeEnumTagMultiPayload();
  v12 = a2;
LABEL_17:
  a3(v11);
  return sub_226E97D1C(v11, &unk_27D7BBD00, &unk_227684CE0);
}

uint64_t sub_227092244(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_22766BEB0();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_2270922F0@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v68 = a1;
  v67 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v66 = *(v6 - 8);
  v64 = *(v66 + 64);
  MEMORY[0x28223BE20](v6);
  v65 = &v56 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD640, &unk_227684CD0);
  v8 = *(v63 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v63);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  v69 = *(v4 + 64);
  if (v69)
  {
    v20 = v4;
    v59 = v19;
    v60 = v18;
    v61 = &v56 - v17;
    v21 = sub_227662750();
    v22 = (*(*(v21 - 8) + 48))(a2, 1, v21);
    v62 = a2;
    v58 = v13;
    v57 = v9;
    if (v22 == 1)
    {
      swift_unknownObjectRetain();
      v23 = sub_227149604(MEMORY[0x277D84F90]);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B8, &qword_227678668);
      inited = swift_initStackObject();
      v29 = MEMORY[0x277D28760];
      *(inited + 16) = xmmword_227670CD0;
      v30 = v15;
      v31 = *v29;
      v56 = v14;
      *(inited + 32) = v31;
      *(inited + 64) = v6;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 40));
      sub_226EDDC60(a2, boxed_opaque_existential_0);
      swift_unknownObjectRetain();
      v33 = v31;
      v15 = v30;
      v23 = sub_227149604(inited);
      swift_setDeallocating();
      v14 = v56;
      sub_226E97D1C(inited + 32, &qword_27D7BA1C0, &qword_227678670);
    }

    v34 = *(v20 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v34;
    sub_227093510(v23, sub_2270930C4, 0, isUniquelyReferenced_nonNull_native, &v70);

    sub_2276637A0();
    v36 = sub_22766BFD0();

    type metadata accessor for MTIDOptionKey(0);
    sub_22709329C(&qword_27D7B8210, type metadata accessor for MTIDOptionKey, &unk_22766FC80);
    v37 = sub_22766BE90();

    v38 = [v69 IDFieldsForTopic:v36 options:v37];

    *(swift_allocObject() + 16) = v38;
    sub_2270932EC();
    v39 = v58;
    sub_227669270();
    v40 = swift_allocObject();
    *(v40 + 16) = sub_227092ADC;
    *(v40 + 24) = 0;
    v41 = v63;
    (*(v8 + 16))(v10, v39, v63);
    v42 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v43 = (v57 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    (*(v8 + 32))(v44 + v42, v10, v41);
    v45 = (v44 + v43);
    *v45 = sub_227093338;
    v45[1] = v40;
    v46 = v41;
    v47 = v61;
    sub_227669270();
    (*(v8 + 8))(v39, v46);
    v48 = v65;
    sub_226EDDC60(v62, v65);
    v49 = (*(v66 + 80) + 17) & ~*(v66 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = v68;
    sub_226EDDCD0(v48, v50 + v49);
    v51 = v60;
    (*(v15 + 16))(v60, v47, v14);
    v52 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v53 = (v59 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    (*(v15 + 32))(v54 + v52, v51, v14);
    v55 = (v54 + v53);
    *v55 = sub_227093368;
    v55[1] = v50;
    sub_227669270();
    swift_unknownObjectRelease();
    return (*(v15 + 8))(v47, v14);
  }

  else
  {
    v24 = sub_2276636A0();
    sub_22709329C(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
    v25 = swift_allocError();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D50080], v24);
    *(swift_allocObject() + 16) = v25;

    return sub_227669280();
  }
}

void sub_227092ADC(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v10[0] = 0;
  v4 = [objc_opt_self() dataWithJSONObject:v3 options:0 error:v10];
  v5 = v10[0];
  if (v4)
  {
    v6 = sub_227662590();
    v8 = v7;

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    v9 = v5;
    sub_2276622C0();

    swift_willThrow();
  }
}

void sub_227092BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v5);
  v7 = &v31[-v6];
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 16) == 1)
  {
    v12 = *a1;
    v13 = *(a1 + 8);
    v14 = *a1;
    sub_22766A740();
    sub_226EDDC60(a3, v7);
    v15 = v12;
    v16 = sub_22766B380();
    v17 = sub_22766C890();
    sub_2270934D8(v12, v13, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v34 = v13;
      v19 = v18;
      v33 = swift_slowAlloc();
      v37 = v33;
      *v19 = 136446722;
      v20 = sub_2276637A0();
      v32 = v17;
      v22 = sub_226E97AE8(v20, v21, &v37);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2082;
      v23 = sub_22766CB80();
      v25 = v24;
      sub_226E97D1C(v7, &qword_27D7B9690, qword_227670B50);
      v26 = sub_226E97AE8(v23, v25, &v37);

      *(v19 + 14) = v26;
      *(v19 + 22) = 2082;
      swift_getErrorValue();
      v27 = MEMORY[0x22AA995D0](v35, v36);
      v29 = sub_226E97AE8(v27, v28, &v37);

      *(v19 + 24) = v29;
      _os_log_impl(&dword_226E8E000, v16, v32, "Failed to get identifier for topic: %{public}s, date: %{public}s, error: %{public}s", v19, 0x20u);
      v30 = v33;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v30, -1, -1);
      MEMORY[0x22AA9A450](v19, -1, -1);

      sub_2270934D8(v12, v34, 1);
    }

    else
    {

      sub_2270934D8(v12, v13, 1);
      sub_226E97D1C(v7, &qword_27D7B9690, qword_227670B50);
    }

    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_227092EF4()
{
  v1 = *v0;
  __swift_project_boxed_opaque_existential_0((*v0 + 24), *(*v0 + 48));
  v2 = [objc_allocWithZone(MEMORY[0x277D28768]) initWithAMSBag_];
  swift_unknownObjectRelease();
  *(v1 + 64) = v2;

  return swift_unknownObjectRelease();
}

id sub_2270930C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_226E97CC0((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

uint64_t sub_227093114(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  swift_unknownObjectRetain();

  return sub_227669270();
}

uint64_t sub_227093200(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;

  return sub_227669270();
}

uint64_t sub_22709329C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2270932EC()
{
  result = qword_28139D2B0;
  if (!qword_28139D2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28139D2B0);
  }

  return result;
}

void sub_227093368(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  sub_227092BC0(a1, v4, v5);
}

uint64_t sub_227093410(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_2270934D8(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_226EDC420(a1, a2);
  }
}

unint64_t sub_227093510(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;

  sub_2274E85AC(&v40);
  v12 = v40;
  if (!v40)
  {
    goto LABEL_25;
  }

  sub_226F04970(v41, v39);
  v13 = *a5;
  result = sub_226F49208();
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_226FE609C(v19, a4 & 1);
    result = sub_226F49208();
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for MTIDOptionKey(0);
    result = sub_22766D220();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_226FF1EA4();
    result = v25;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = result;

    v24 = (v22[7] + 32 * v23);
    __swift_destroy_boxed_opaque_existential_0(v24);
    sub_226F04970(v39, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + 8 * result) = v12;
  result = sub_226F04970(v39, (v22[7] + 32 * result));
  v26 = v22[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v22[2] = v27;
LABEL_15:
    sub_2274E85AC(&v40);
    v12 = v40;
    if (v40)
    {
      v20 = 1;
      do
      {
        sub_226F04970(v41, v39);
        v30 = *a5;
        result = sub_226F49208();
        v32 = v30[2];
        v33 = (v31 & 1) == 0;
        v18 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v31;
        if (v30[3] < v34)
        {
          sub_226FE609C(v34, 1);
          result = sub_226F49208();
          if ((a4 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        v36 = *a5;
        if (a4)
        {
          v28 = result;

          v29 = (v36[7] + 32 * v28);
          __swift_destroy_boxed_opaque_existential_0(v29);
          sub_226F04970(v39, v29);
        }

        else
        {
          v36[(result >> 6) + 8] |= 1 << result;
          *(v36[6] + 8 * result) = v12;
          result = sub_226F04970(v39, (v36[7] + 32 * result));
          v37 = v36[2];
          v18 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v36[2] = v38;
        }

        sub_2274E85AC(&v40);
        v12 = v40;
      }

      while (v40);
    }

LABEL_25:
    sub_226EBB21C(v42);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t objectdestroy_77Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_227662750();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9, v2 | 7);
}

uint64_t sub_227093980(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v3 + v8);
  v10 = v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return a3(a1, a2, v3 + v7, v9, v11, v12);
}

uint64_t sub_227093A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *(a2 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v5 = sub_22766B390();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_227665680();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227093C10, 0, 0);
}

uint64_t sub_227093C10()
{
  if (qword_28139B7F8 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v12 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28139B800);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v11 = (*(v12 + 16) + **(v12 + 16));
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_227093DB0;
  v6 = v0[17];
  v7 = v0[7];
  v8 = v0[5];
  v9 = v0[6];

  return v11(v8, v6, v9, v7);
}

uint64_t sub_227093DB0()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *v1;
  *(v5 + 152) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227093F78, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_227093F78(uint64_t a1)
{
  v35 = v1;
  v2 = *(v1 + 88);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 48);
  sub_22766A730();
  v6 = *(v4 + 16);
  v6(v2, v3, v5);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v1 + 104);
  v10 = *(v1 + 112);
  v12 = *(v1 + 88);
  v13 = *(v1 + 96);
  if (v9)
  {
    v32 = *(v1 + 152);
    v33 = *(v1 + 96);
    v14 = *(v1 + 72);
    v15 = *(v1 + 80);
    v31 = v8;
    v16 = *(v1 + 48);
    log = v7;
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34 = v29;
    *v17 = 136446210;
    v6(v15, v12, v16);
    v18 = sub_22766C060();
    v19 = v10;
    v21 = v20;
    (*(v14 + 8))(v12, v16);
    v22 = sub_226E97AE8(v18, v21, &v34);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_226E8E000, log, v31, "Failed to fetch default restriction for zone provider: %{public}s. Using unrestricted restriction.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);

    (*(v11 + 8))(v19, v33);
  }

  else
  {
    v23 = *(v1 + 72);
    v24 = *(v1 + 48);

    (*(v23 + 8))(v12, v24);
    (*(v11 + 8))(v10, v13);
  }

  v25 = *(v1 + 40);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);

  v27 = *(v1 + 8);

  return v27();
}

uint64_t sub_22709422C@<X0>(uint64_t a1@<X8>)
{
  v32 = sub_227662A90();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_227668A20();
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v24 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2276627D0();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227662A10();
  v12 = *(v11 + 16);
  if (v12)
  {
    v23[1] = v10;
    v23[2] = v1;
    v23[3] = a1;
    v33 = MEMORY[0x277D84F90];
    sub_226F1FFA8(0, v12, 0);
    v13 = v33;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v16 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v23[0] = v11;
    v17 = v11 + v16;
    v27 = *(v14 + 56);
    v28 = v15;
    v25 = v6 + 32;
    v26 = (v14 - 8);
    v18 = v24;
    v29 = v6;
    v30 = v14;
    do
    {
      v19 = v32;
      v28(v5, v17, v32);
      sub_227662A70();
      sub_227662A80();
      sub_227662A60();
      sub_227668A10();
      (*v26)(v5, v19);
      v33 = v13;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_226F1FFA8((v20 > 1), v21 + 1, 1);
        v18 = v24;
        v13 = v33;
      }

      *(v13 + 16) = v21 + 1;
      (*(v29 + 32))(v13 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v21, v18, v31);
      v17 += v27;
      --v12;
    }

    while (v12);
  }

  sub_227662A20();
  sub_227662A30();
  return sub_2276686A0();
}

uint64_t sub_227094564(uint64_t a1, uint64_t a2)
{
  v2 = sub_227669910();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v3 + 104))(v5, *MEMORY[0x277D4E0D8], v2);
  sub_227669660();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_227094670(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_22766B390();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227094730, 0, 0);
}

uint64_t sub_227094730()
{
  sub_22766A620();
  v1 = sub_22766B380();
  v2 = sub_22766C8B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_226E8E000, v1, v2, "Received Up Next Queue Item Update. Sending Event.", v3, 2u);
    MEMORY[0x22AA9A450](v3, -1, -1);
  }

  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  (*(v5 + 8))(v4, v6);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_2270948CC;

    return sub_227094A10();
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2270948CC()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F9E114, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_227094A10()
{
  v1[2] = v0;
  v2 = sub_22766A150();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227094AD0, 0, 0);
}

uint64_t sub_227094AD0()
{
  v1 = *(v0 + 16);
  v2 = v1[8];
  __swift_project_boxed_opaque_existential_0(v1 + 4, v1[7]);
  v3 = *(v2 + 24);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_227094C34;

  return v6();
}

uint64_t sub_227094C34()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_227094E18;
  }

  else
  {

    v2 = sub_227094D50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227094D50()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  swift_getObjectType();
  sub_22766A140();
  sub_2276699D0();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_227094E18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227094EA8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_226F73E2C;

    return sub_227094A10();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_227094F90()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);

  __swift_destroy_boxed_opaque_existential_0(v0 + 11);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22709500C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_22766B390();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1C8, &qword_2276786E0);
  v2[11] = swift_task_alloc();
  v4 = sub_227664AA0();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v5 = sub_2276653B0();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270951EC, 0, 0);
}

uint64_t sub_2270951EC()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[17];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v43 = *(v3 + 72);
    v40 = v0[13];
    v5 = (v40 + 32);
    v41 = MEMORY[0x277D84F90];
    v6 = v4;
    v7 = *(v1 + 16);
    do
    {
      v8 = v0[21];
      v9 = v0[19];
      sub_227095D0C(v6, v8);
      sub_227095D70(v8, v9);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = *v5;
        (*v5)(v0[15], v0[19], v0[12]);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v11 = v41;
        }

        else
        {
          v11 = sub_2273A65FC(0, v41[2] + 1, 1, v41);
        }

        v13 = v11[2];
        v12 = v11[3];
        if (v13 >= v12 >> 1)
        {
          v11 = sub_2273A65FC((v12 > 1), v13 + 1, 1, v11);
        }

        v14 = v0[15];
        v15 = v0[12];
        v11[2] = v13 + 1;
        v41 = v11;
        v10(v11 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v13, v14, v15);
      }

      else
      {
        sub_227095DD4(v0[19]);
      }

      v6 += v43;
      --v7;
    }

    while (v7);
    v16 = v0[13];
    v17 = (v16 + 56);
    v18 = (v16 + 48);
    v19 = MEMORY[0x277D84F90];
    do
    {
      v20 = v0[20];
      v21 = v0[18];
      sub_227095D0C(v4, v20);
      sub_227095D70(v20, v21);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v23 = v0[18];
      v24 = v0[11];
      if (EnumCaseMultiPayload == 1)
      {
        (*v17)(v0[11], 1, 1, v0[12]);
        sub_227095DD4(v23);
      }

      else
      {
        v25 = v0[12];
        (*v5)(v0[11], v0[18], v25);
        (*v17)(v24, 0, 1, v25);
      }

      v26 = v0[11];
      v27 = v0[12];
      if ((*v18)(v26, 1, v27) == 1)
      {
        sub_226E97D1C(v26, &qword_27D7BA1C8, &qword_2276786E0);
      }

      else
      {
        v28 = *v5;
        (*v5)(v0[14], v26, v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_2273A65FC(0, *(v19 + 2) + 1, 1, v19);
        }

        v30 = *(v19 + 2);
        v29 = *(v19 + 3);
        if (v30 >= v29 >> 1)
        {
          v19 = sub_2273A65FC((v29 > 1), v30 + 1, 1, v19);
        }

        v31 = v0[14];
        v32 = v0[12];
        *(v19 + 2) = v30 + 1;
        v28(&v19[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30], v31, v32);
      }

      v4 += v43;
      --v2;
    }

    while (v2);
    v33 = v41;
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
  }

  v34 = v0[7];
  v35 = v34[8];
  __swift_project_boxed_opaque_existential_0(v34 + 4, v34[7]);
  v36 = swift_allocObject();
  v0[22] = v36;
  v36[2] = v33;
  v36[3] = v34;
  v36[4] = v19;
  v37 = *(v35 + 24);

  v42 = (v37 + *v37);
  v38 = swift_task_alloc();
  v0[23] = v38;
  *v38 = v0;
  v38[1] = sub_2270956AC;

  return v42();
}

uint64_t sub_2270956AC()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_227095A2C;
  }

  else
  {
    v2 = sub_2270957DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2270957DC()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 56) + 88), *(*(v0 + 56) + 112));
  sub_2271D7EE8();
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_227095884;

  return sub_227094A10();
}

uint64_t sub_227095884()
{
  v2 = *v1;
  *(v2 + 208) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227095AEC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_227095A2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227095AEC(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 208);
  sub_22766A730();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 208);
    v7 = *(v1 + 72);
    v19 = *(v1 + 80);
    v8 = *(v1 + 64);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_22766D250();
    v13 = sub_226E97AE8(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to perform index maintenance with error %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 72);
    v14 = *(v1 + 80);
    v16 = *(v1 + 64);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_227095D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276653B0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227095D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276653B0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227095DD4(uint64_t a1)
{
  v2 = sub_2276653B0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227095E30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v44 = a1;
  v6 = sub_22766B390();
  v34[1] = *(v6 - 8);
  v34[2] = v6;
  MEMORY[0x28223BE20](v6);
  v34[3] = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227664AA0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v41 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v11);
  v14 = v34 - v13;
  v42 = v9;
  v43 = a2;
  v15 = *(a2 + 16);
  if (v15)
  {
    v18 = *(v9 + 16);
    v16 = v9 + 16;
    v17 = v18;
    v19 = v43 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v20 = *(v16 + 56);
    v21 = (v16 - 8);
    while (1)
    {
      v17(v14, v19, v8, v12);
      sub_226F7587C(v14, v44);
      if (v4)
      {
        return (*v21)(v14, v8);
      }

      (*v21)(v14, v8);
      v19 += v20;
      if (!--v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __swift_project_boxed_opaque_existential_0((v36 + 88), *(v36 + 112));
    v22 = v44;
    result = sub_2270970C4(v43, v44);
    if (!v4)
    {
      v24 = *(v35 + 16);
      if (v24)
      {
        v25 = v41;
        v41 = *(v42 + 16);
        v42 += 16;
        v26 = *(v42 + 64);
        v38 = (v26 + 32) & ~v26;
        v39 = v26;
        v27 = v35 + v38;
        v43 = *(v42 + 56);
        v37 = xmmword_227670CD0;
        v40 = (v42 - 8);
        do
        {
          v28 = v41;
          (v41)(v25, v27, v8);
          v29 = __swift_project_boxed_opaque_existential_0(v22, v22[3]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84A8, &qword_227670D00);
          v30 = v38;
          v31 = swift_allocObject();
          *(v31 + 16) = v37;
          v32 = v31 + v30;
          v33 = v31;
          v28(v32, v25, v8);
          sub_227555964(v33, v29[1], *(v29 + 16), v29[3]);

          (*v40)(v25, v8);
          v22 = v44;
          v27 += v43;
          --v24;
        }

        while (v24);
      }

      __swift_project_boxed_opaque_existential_0((v36 + 88), *(v36 + 112));
      return sub_2271DCA5C(v35, v22);
    }
  }

  return result;
}

uint64_t sub_227096314@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8EA8, &unk_227678700);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v12 = sub_2272343B8(100);
  if (v2)
  {
    swift_setDeallocating();

    v13 = qword_2813B2078;
    v14 = sub_22766A100();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
    return swift_deallocClassInstance();
  }

  v16 = v12;
  swift_setDeallocating();

  v17 = qword_2813B2078;
  v18 = sub_22766A100();
  (*(*(v18 - 8) + 8))(v9 + v17, v18);
  swift_deallocClassInstance();
  v19 = *(v16 + 16);
  if (!v19)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v26 = a2;
  v20 = sub_2274CDA24(v19, 0);
  v21 = *(sub_227664AA0() - 8);
  sub_2274CEE34(&v25, &v20[(*(v21 + 80) + 32) & ~*(v21 + 80)], v19, v16);
  v23 = v22;
  v24 = v25;

  sub_226EBB21C(v24);
  if (v23 == v19)
  {
    a2 = v26;
LABEL_7:
    v25 = v20;
    sub_2270972C4(&v25, sub_227097B34, sub_2270974C0);

    *a2 = v25;
    return result;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_227096648(void *a1)
{
  v86 = sub_22766B390();
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v3 - 8);
  v102 = &v81 - v4;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1D0, &qword_2276786F8);
  MEMORY[0x28223BE20](v98);
  v96 = (&v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  *&v97 = &v81 - v7;
  v8 = sub_227664AA0();
  v99 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v81 - v12;
  v14 = a1[3];
  v87 = a1;
  v15 = __swift_project_boxed_opaque_existential_0(a1, v14);
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v15 + 16);
  v19 = v15[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8EA8, &unk_227678700);
  v20 = swift_allocObject();
  v21 = v16;
  v22 = v17;

  sub_22766A070();
  *(v20 + 16) = v21;
  *(v20 + 24) = v22;
  *(v20 + 32) = v18;
  *(v20 + 40) = v19;
  v23 = v101;
  v24 = sub_2272343B8(100);
  v25 = v23;
  if (v23)
  {
    swift_setDeallocating();

    v26 = qword_2813B2078;
    v27 = sub_22766A100();
    (*(*(v27 - 8) + 8))(v20 + v26, v27);
    return swift_deallocClassInstance();
  }

  v29 = v24;
  v101 = v13;
  v83 = v10;
  v95 = v8;
  swift_setDeallocating();

  v30 = qword_2813B2078;
  v31 = sub_22766A100();
  (*(*(v31 - 8) + 8))(v20 + v30, v31);
  swift_deallocClassInstance();
  v32 = *(v29 + 16);
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    v34 = sub_2274CDA24(*(v29 + 16), 0);
    sub_2274CEE34(v103, &v34[(*(v99 + 80) + 32) & ~*(v99 + 80)], v32, v29);
    v36 = v35;
    v37 = v103[0];
    v25 = v103[2];
    v100 = v103[4];

    sub_226EBB21C(v37);
    v38 = v95;
    if (v36 != v32)
    {
      goto LABEL_29;
    }

    v25 = 0;
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
    v38 = v95;
  }

  v103[0] = v34;
  sub_2270972C4(v103, sub_227098518, sub_227097768);

  v39 = v103[0];
  v40 = *(v103[0] + 16);
  if (v40)
  {
    v82 = 0;
    v103[0] = v33;
    sub_226F1F7E8(0, v40, 0);
    v41 = 0;
    v42 = v103[0];
    v43 = v99;
    v91 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v90 = v39 + v91;
    v89 = v99 + 16;
    v88 = v99 + 32;
    v44 = *(v39 + 16);
    v93 = v39;
    v94 = v44;
    v45 = v98;
    v25 = v97;
    v46 = v101;
    v92 = v40;
    while (v94 != v41)
    {
      if (v41 >= *(v39 + 16))
      {
        goto LABEL_27;
      }

      v47 = *(v45 + 48);
      v101 = *(v43 + 72);
      (*(v43 + 16))(&v25[v47], v90 + v101 * v41, v38);
      v48 = v25;
      v49 = v96;
      *v96 = v41;
      v50 = v49 + *(v45 + 48);
      v100 = *(v43 + 32);
      v100(v50, &v48[v47], v38);
      v51 = sub_227662750();
      (*(*(v51 - 8) + 56))(v102, 1, 1, v51);
      sub_227664A60();
      sub_226E97D1C(v102, &qword_27D7B9690, qword_227670B50);
      sub_226E97D1C(v49, &qword_27D7BA1D0, &qword_2276786F8);
      v52 = v42;
      v103[0] = v42;
      v53 = v38;
      v55 = *(v42 + 16);
      v54 = *(v42 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_226F1F7E8((v54 > 1), v55 + 1, 1);
        v52 = v103[0];
      }

      ++v41;
      *(v52 + 16) = v55 + 1;
      v42 = v52;
      v100(v52 + v91 + v55 * v101, v46, v53);
      v39 = v93;
      v38 = v53;
      v45 = v98;
      v43 = v99;
      v25 = v97;
      if (v92 == v41)
      {

        v25 = v82;
        v56 = v42;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {

    v56 = MEMORY[0x277D84F90];
    v43 = v99;
LABEL_16:
    v57 = v83;
    v58 = v87;
    v102 = *(v56 + 16);
    if (!v102)
    {
    }

    v59 = 0;
    v100 = (v43 + 16);
    v101 = (v43 + 8);
    v97 = xmmword_227670CD0;
    v98 = v56;
    while (v59 < *(v56 + 16))
    {
      v60 = (*(v99 + 80) + 32) & ~*(v99 + 80);
      v61 = v25;
      v62 = *(v99 + 16);
      v62(v57, v56 + v60 + *(v99 + 72) * v59, v95);
      v63 = __swift_project_boxed_opaque_existential_0(v58, v58[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84A8, &qword_227670D00);
      v64 = swift_allocObject();
      *(v64 + 16) = v97;
      v65 = v64 + v60;
      v66 = v95;
      v62(v65, v57, v95);
      v67 = v61;
      sub_227555964(v64, v63[1], *(v63 + 16), v63[3]);
      v25 = v61;
      if (v61)
      {
        v68 = v85;
        sub_22766A770();
        v69 = v67;
        v70 = sub_22766B380();
        v71 = sub_22766C8B0();

        v72 = os_log_type_enabled(v70, v71);
        v73 = v86;
        v74 = v84;
        if (v72)
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v103[0] = v76;
          *v75 = 136315138;
          swift_getErrorValue();
          v77 = sub_22766D250();
          v79 = sub_226E97AE8(v77, v78, v103);

          *(v75 + 4) = v79;
          _os_log_impl(&dword_226E8E000, v70, v71, "ERROR: %s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v76);
          MEMORY[0x22AA9A450](v76, -1, -1);
          v80 = v75;
          v66 = v95;
          MEMORY[0x22AA9A450](v80, -1, -1);

          (*(v74 + 8))(v85, v86);
        }

        else
        {

          (*(v74 + 8))(v68, v73);
        }

        swift_willThrow();

        return (*v101)(v83, v66);
      }

      ++v59;
      (*v101)(v57, v66);
      v58 = v87;
      v56 = v98;
      if (v102 == v59)
      {
      }
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2270970C4(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v24 = sub_227664AA0();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v25 = MEMORY[0x277D84F90];
  sub_226F1EF90();
  v6 = v25;
  if (v5)
  {
    v8 = *(v3 + 16);
    v7 = v3 + 16;
    v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v21 = *(v7 + 56);
    v22 = v8;
    v20 = (v7 - 8);
    do
    {
      v10 = v23;
      v11 = v24;
      v12 = v7;
      v22(v23, v9, v24);
      v13 = sub_227664A30();
      v15 = v14;
      (*v20)(v10, v11);
      v25 = v6;
      v16 = *(v6 + 16);
      if (v16 >= *(v6 + 24) >> 1)
      {
        sub_226F1EF90();
        v6 = v25;
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v15;
      v9 += v21;
      --v5;
      v7 = v12;
    }

    while (v5);
  }

  sub_2272D7D2C(1, v6, v19);
}

uint64_t sub_2270972C4(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_227664AA0() - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_22711787C(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_227097384(v10, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_227097384(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_22766D130();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227664AA0();
        v10 = sub_22766C380();
        *(v10 + 16) = v9;
      }

      v11 = *(sub_227664AA0() - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_2270974C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_227664AA0();
  MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v33 - v11;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = (v16 + v19 * (a3 - 1));
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    v49 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v47;
      v25 = v45;
      (v45)(v47, v22, v8, v14);
      v26 = v48;
      v25(v48, v23, v8);
      v27 = sub_227664A50();
      v28 = sub_227664A50();
      v29 = *v44;
      (*v44)(v26, v8);
      v29(v24, v8);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = &v38[v34];
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v23, v31, v8);
      v23 += v40;
      v22 += v40;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_227097768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v56 = sub_227662750();
  v8 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v45 - v11;
  v12 = sub_227664AA0();
  MEMORY[0x28223BE20](v12);
  v60 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v20.n128_f64[0] = MEMORY[0x28223BE20](v17);
  v21 = &v45 - v18;
  v47 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v19 + 16);
    v23 = v19 + 16;
    v25 = *(v23 + 56);
    v52 = v12;
    v53 = (v8 + 8);
    v61 = (v23 - 8);
    v62 = v24;
    v63 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v57 = -v25;
    v58 = (v23 + 16);
    v27 = a1 - a3;
    v59 = v22;
    v46 = v25;
    v28 = v22 + v25 * a3;
    v64 = &v45 - v18;
LABEL_5:
    v50 = v26;
    v51 = a3;
    v48 = v28;
    v49 = v27;
    while (1)
    {
      v29 = v62;
      (v62)(v21, v28, v12, v20);
      v29(v16, v26, v12);
      v30 = sub_227664A50();
      if (v30 == sub_227664A50())
      {
        v31 = v54;
        sub_227664A80();
        v32 = v16;
        v33 = v55;
        sub_227664A80();
        v34 = sub_2276626C0();
        v35 = *v53;
        v36 = v33;
        v37 = v56;
        (*v53)(v36, v56);
        v38 = v37;
        v16 = v32;
        v21 = v64;
        v35(v31, v38);
        v12 = v52;
      }

      else
      {
        v39 = sub_227664A50();
        v34 = v39 < sub_227664A50();
      }

      v40 = *v61;
      (*v61)(v16, v12);
      v40(v21, v12);
      if ((v34 & 1) == 0)
      {
LABEL_4:
        a3 = v51 + 1;
        v26 = &v50[v46];
        v27 = v49 - 1;
        v28 = v48 + v46;
        if (v51 + 1 == v47)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v59)
      {
        break;
      }

      v41 = *v58;
      v42 = v60;
      (*v58)(v60, v28, v12);
      swift_arrayInitWithTakeFrontToBack();
      v43 = v42;
      v21 = v64;
      v41(v26, v43, v12);
      v26 += v57;
      v28 += v57;
      if (__CFADD__(v27++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_227097B34(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_227664AA0();
  MEMORY[0x28223BE20](v9);
  v122 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v115 - v12;
  MEMORY[0x28223BE20](v13);
  v138 = &v115 - v14;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v137 = &v115 - v18;
  v19 = a3[1];
  v127 = v16;
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v21 = sub_2271171D0(v21);
    }

    v140 = v21;
    v111 = *(v21 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v21[16 * v111];
        v113 = *&v21[16 * v111 + 24];
        sub_2270992DC(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v21[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_2271171D0(v21);
        }

        if (v111 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v21[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v21;
        sub_227117144(v111 - 1);
        v21 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v20 = 0;
  v135 = (v16 + 8);
  v136 = v16 + 16;
  v134 = (v16 + 32);
  v21 = MEMORY[0x277D84F90];
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v129 = v19;
      v117 = v6;
      v22 = *a3;
      v119 = v20;
      v23 = v127[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v133 = v22;
      v25 = v9;
      v26 = v127[2];
      v27 = v137;
      v26(v137, v5, v25, v17);
      v28 = &v24[v23 * v20];
      v29 = v138;
      v125 = v26;
      (v26)(v138, v28, v25);
      v130 = sub_227664A50();
      v126 = sub_227664A50();
      v30 = v127[1];
      v30(v29, v25);
      v124 = v30;
      v30(v27, v25);
      v31 = v119 + 2;
      v131 = v23;
      v32 = &v133[v23 * (v119 + 2)];
      while (1)
      {
        v33 = v129;
        if (v129 == v31)
        {
          break;
        }

        v34 = v125;
        LODWORD(v133) = v130 < v126;
        v35 = v137;
        v36 = v139;
        (v125)(v137, v32, v139);
        v37 = v138;
        v34(v138, v5, v36);
        v38 = sub_227664A50();
        v39 = sub_227664A50();
        v40 = v124;
        (v124)(v37, v36);
        v40(v35, v36);
        v21 = v128;
        ++v31;
        v32 += v131;
        v5 += v131;
        if (((v133 ^ (v38 >= v39)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v9 = v139;
      if (v130 < v126)
      {
        if (v33 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v33)
        {
          v41 = v131 * (v33 - 1);
          v5 = v33 * v131;
          v129 = v33;
          v42 = v33;
          v43 = v119;
          v44 = v119 * v131;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v134;
              (*v134)(v122, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v46(&v45[v41], v122, v9);
              a3 = v120;
              v21 = v128;
            }

            ++v43;
            v41 -= v131;
            v5 -= v131;
            v44 += v131;
          }

          while (v43 < v42);
          v6 = v117;
          v20 = v119;
          v33 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v116)
      {
        if (__OFADD__(v20, v116))
        {
          goto LABEL_124;
        }

        if (v20 + v116 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v116;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_2273A4F9C(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v21 = sub_2273A4F9C((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
        {
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        sub_2270992DC(*a3 + v127[9] * v91, *a3 + v127[9] * *&v21[16 * v5 + 32], *a3 + v127[9] * v92, v52);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_2271171D0(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v140 = v21;
        sub_227117144(v5);
        v21 = v140;
        v50 = *(v140 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v94 = *a3;
  v95 = v127[9];
  v133 = v127[2];
  v96 = &v94[v95 * (v33 - 1)];
  v130 = -v95;
  v131 = v94;
  v119 = v20;
  v97 = (v20 - v33);
  v121 = v95;
  v98 = &v94[v33 * v95];
  v123 = v5;
LABEL_85:
  v129 = v33;
  v124 = v98;
  v125 = v97;
  v126 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v137;
    v101 = v133;
    (v133)(v137, v98, v9, v17);
    v102 = v138;
    v101(v138, v99, v139);
    v103 = sub_227664A50();
    v104 = sub_227664A50();
    v105 = *v135;
    v106 = v102;
    v9 = v139;
    (*v135)(v106, v139);
    v105(v100, v9);
    if (v103 >= v104)
    {
LABEL_84:
      v33 = v129 + 1;
      v96 = v126 + v121;
      v97 = v125 - 1;
      v5 = v123;
      v98 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v21 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v107 = *v134;
    v108 = v132;
    (*v134)(v132, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v130;
    v98 += v130;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_227098518(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v166 = a4;
  v164 = a1;
  v179 = sub_227662750();
  v8 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v178 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v177 = &v157 - v11;
  v12 = sub_227664AA0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v167 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v183 = &v157 - v16;
  MEMORY[0x28223BE20](v17);
  v186 = &v157 - v18;
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v161 = &v157 - v22;
  MEMORY[0x28223BE20](v23);
  v160 = &v157 - v24;
  v29.n128_f64[0] = MEMORY[0x28223BE20](v25);
  v30 = *(a3 + 8);
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
LABEL_105:
    v4 = *v164;
    if (!*v164)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_137:
      v32 = sub_2271171D0(v32);
    }

    v190 = v32;
    v151 = *(v32 + 16);
    if (v151 >= 2)
    {
      do
      {
        v152 = *a3;
        if (!*a3)
        {
          goto LABEL_141;
        }

        v153 = v32;
        v154 = a3;
        v32 = v151 - 1;
        a3 = *&v153[16 * v151];
        v155 = *&v153[16 * v151 + 24];
        sub_227099894(&v152[*(v13 + 72) * a3], &v152[*(v13 + 72) * *&v153[16 * v151 + 16]], &v152[*(v13 + 72) * v155], v4);
        if (v6)
        {
          break;
        }

        if (v155 < a3)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v153 = sub_2271171D0(v153);
        }

        if (v151 - 2 >= *(v153 + 2))
        {
          goto LABEL_131;
        }

        v156 = &v153[16 * v151];
        *v156 = a3;
        *(v156 + 1) = v155;
        v190 = v153;
        sub_227117144(v32);
        v32 = v190;
        v151 = *(v190 + 16);
        a3 = v154;
      }

      while (v151 > 1);
    }

LABEL_115:

    return;
  }

  v158 = &v157 - v26;
  v171 = v28;
  v185 = v27;
  v31 = 0;
  v176 = (v8 + 8);
  v188 = (v13 + 8);
  v189 = v13 + 16;
  v187 = (v13 + 32);
  v32 = MEMORY[0x277D84F90];
  v159 = a3;
  v173 = v13;
  v180 = v12;
  while (1)
  {
    v33 = v31;
    v34 = v31 + 1;
    if (v34 >= v30)
    {
      v47 = v166;
      goto LABEL_32;
    }

    v170 = v30;
    v35 = *a3;
    v36 = *(v13 + 72);
    v175 = v34;
    v37 = *(v13 + 16);
    v38 = v33;
    v39 = v158;
    v37(v158, &v35[v36 * v34], v12, v29);
    v165 = v38;
    v174 = v36;
    v184 = v35;
    v40 = &v35[v36 * v38];
    v4 = v160;
    v169 = v37;
    (v37)(v160, v40, v12);
    v41 = sub_227664A50();
    v42 = sub_227664A50();
    v162 = v6;
    v163 = v32;
    if (v41 == v42)
    {
      v6 = v177;
      sub_227664A80();
      v43 = v178;
      sub_227664A80();
      LODWORD(v172) = sub_2276626C0();
      v44 = *v176;
      v45 = v43;
      v46 = v179;
      (*v176)(v45, v179);
      v44(v6, v46);
    }

    else
    {
      v48 = sub_227664A50();
      LODWORD(v172) = v48 < sub_227664A50();
    }

    v49 = *v188;
    v50 = v180;
    (*v188)(v4, v180);
    v168 = v49;
    (v49)(v39, v50);
    v51 = (v165 + 2);
    v52 = v175;
    v53 = v174 * (v165 + 2);
    v54 = &v184[v53];
    v55 = v174 * v175;
    v56 = &v184[v174 * v175];
    v57 = v171;
    v58 = v161;
    do
    {
      v62 = v51;
      v64 = v52;
      v13 = v55;
      v63 = v53;
      v184 = v51;
      if (v51 >= v170)
      {
        break;
      }

      v181 = v52;
      v182 = v53;
      v65 = v180;
      v66 = v169;
      v169(v58, v54, v180);
      v66(v57, v56, v65);
      v67 = v58;
      v68 = sub_227664A50();
      if (v68 == sub_227664A50())
      {
        v69 = v177;
        sub_227664A80();
        v70 = v178;
        sub_227664A80();
        v60 = sub_2276626C0();
        v71 = *v176;
        v72 = v70;
        v73 = v179;
        (*v176)(v72, v179);
        v74 = v69;
        v57 = v171;
        v71(v74, v73);
      }

      else
      {
        v59 = sub_227664A50();
        v60 = v59 < sub_227664A50();
      }

      v4 = v180;
      v6 = v168;
      (v168)(v57, v180);
      v6(v67, v4);
      v61 = v60 & 1;
      v62 = v184;
      v51 = v184 + 1;
      v54 = &v174[v54];
      v56 = &v174[v56];
      v64 = v181;
      v63 = v182;
      v52 = v181 + 1;
      v55 = &v174[v13];
      v53 = &v174[v182];
      v58 = v67;
    }

    while ((v172 & 1) == v61);
    a3 = v159;
    if (v172)
    {
      v33 = v165;
      v47 = v166;
      v32 = v163;
      v12 = v180;
      if (v62 < v165)
      {
        goto LABEL_134;
      }

      if (v165 >= v62)
      {
        v34 = v62;
        v6 = v162;
        v13 = v173;
        goto LABEL_32;
      }

      v4 = v165 * v174;
      v75 = v165;
      do
      {
        if (v75 != v64)
        {
          v77 = *a3;
          if (!*a3)
          {
            goto LABEL_140;
          }

          v78 = v64;
          v79 = v63;
          v182 = *v187;
          (v182)(v167, &v77[v4], v12);
          if (v4 < v13 || &v77[v4] >= &v79[v77])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v4 != v13)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          (v182)(&v77[v13], v167, v12);
          v47 = v166;
          v63 = v79;
          v64 = v78;
        }

        ++v75;
        v13 -= v174;
        v63 -= v174;
        v4 += v174;
      }

      while (v75 < v64--);
      v34 = v184;
      v6 = v162;
      v13 = v173;
      v32 = v163;
    }

    else
    {
      v34 = v62;
      v6 = v162;
      v13 = v173;
      v47 = v166;
      v32 = v163;
      v12 = v180;
    }

    v33 = v165;
LABEL_32:
    v80 = *(a3 + 8);
    v175 = v34;
    if (v34 < v80)
    {
      v120 = __OFSUB__(v34, v33);
      v81 = v34 - v33;
      if (v120)
      {
        goto LABEL_133;
      }

      if (v81 < v47)
      {
        if (__OFADD__(v33, v47))
        {
          goto LABEL_135;
        }

        if (v33 + v47 >= v80)
        {
          v82 = v80;
        }

        else
        {
          v82 = (v33 + v47);
        }

        if (v82 < v33)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        v83 = v175;
        if (v175 != v82)
        {
          break;
        }
      }
    }

LABEL_53:
    if (v175 < v33)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_2273A4F9C(0, *(v32 + 16) + 1, 1, v32);
    }

    v4 = *(v32 + 16);
    v105 = *(v32 + 24);
    v106 = v4 + 1;
    if (v4 >= v105 >> 1)
    {
      v32 = sub_2273A4F9C((v105 > 1), v4 + 1, 1, v32);
    }

    *(v32 + 16) = v106;
    v107 = v32 + 16 * v4;
    v108 = v175;
    *(v107 + 32) = v33;
    *(v107 + 40) = v108;
    if (!*v164)
    {
      goto LABEL_142;
    }

    if (v4)
    {
      v13 = *v164;
      while (1)
      {
        v109 = v106 - 1;
        if (v106 >= 4)
        {
          break;
        }

        if (v106 == 3)
        {
          v110 = *(v32 + 32);
          v111 = *(v32 + 40);
          v120 = __OFSUB__(v111, v110);
          v112 = v111 - v110;
          v113 = v120;
LABEL_74:
          if (v113)
          {
            goto LABEL_121;
          }

          v126 = (v32 + 16 * v106);
          v128 = *v126;
          v127 = v126[1];
          v129 = __OFSUB__(v127, v128);
          v130 = v127 - v128;
          v131 = v129;
          if (v129)
          {
            goto LABEL_124;
          }

          v132 = (v32 + 32 + 16 * v109);
          v134 = *v132;
          v133 = v132[1];
          v120 = __OFSUB__(v133, v134);
          v135 = v133 - v134;
          if (v120)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v130, v135))
          {
            goto LABEL_128;
          }

          if (v130 + v135 >= v112)
          {
            if (v112 < v135)
            {
              v109 = v106 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v136 = (v32 + 16 * v106);
        v138 = *v136;
        v137 = v136[1];
        v120 = __OFSUB__(v137, v138);
        v130 = v137 - v138;
        v131 = v120;
LABEL_88:
        if (v131)
        {
          goto LABEL_123;
        }

        v139 = v32 + 16 * v109;
        v141 = *(v139 + 32);
        v140 = *(v139 + 40);
        v120 = __OFSUB__(v140, v141);
        v142 = v140 - v141;
        if (v120)
        {
          goto LABEL_126;
        }

        if (v142 < v130)
        {
          goto LABEL_3;
        }

LABEL_95:
        v4 = v109 - 1;
        if (v109 - 1 >= v106)
        {
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
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v147 = v32;
        v148 = *(v32 + 32 + 16 * v4);
        v149 = *(v32 + 32 + 16 * v109);
        v32 = *(v32 + 32 + 16 * v109 + 8);
        sub_227099894(*a3 + *(v173 + 72) * v148, *a3 + *(v173 + 72) * v149, *a3 + *(v173 + 72) * v32, v13);
        if (v6)
        {
          goto LABEL_115;
        }

        if (v32 < v148)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v147 = sub_2271171D0(v147);
        }

        if (v4 >= *(v147 + 2))
        {
          goto LABEL_118;
        }

        v150 = &v147[16 * v4];
        *(v150 + 4) = v148;
        *(v150 + 5) = v32;
        v190 = v147;
        sub_227117144(v109);
        v32 = v190;
        v106 = *(v190 + 16);
        if (v106 <= 1)
        {
          goto LABEL_3;
        }
      }

      v114 = v32 + 32 + 16 * v106;
      v115 = *(v114 - 64);
      v116 = *(v114 - 56);
      v120 = __OFSUB__(v116, v115);
      v117 = v116 - v115;
      if (v120)
      {
        goto LABEL_119;
      }

      v119 = *(v114 - 48);
      v118 = *(v114 - 40);
      v120 = __OFSUB__(v118, v119);
      v112 = v118 - v119;
      v113 = v120;
      if (v120)
      {
        goto LABEL_120;
      }

      v121 = (v32 + 16 * v106);
      v123 = *v121;
      v122 = v121[1];
      v120 = __OFSUB__(v122, v123);
      v124 = v122 - v123;
      if (v120)
      {
        goto LABEL_122;
      }

      v120 = __OFADD__(v112, v124);
      v125 = v112 + v124;
      if (v120)
      {
        goto LABEL_125;
      }

      if (v125 >= v117)
      {
        v143 = (v32 + 32 + 16 * v109);
        v145 = *v143;
        v144 = v143[1];
        v120 = __OFSUB__(v144, v145);
        v146 = v144 - v145;
        if (v120)
        {
          goto LABEL_129;
        }

        if (v112 < v146)
        {
          v109 = v106 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v30 = *(a3 + 8);
    v31 = v175;
    v13 = v173;
    if (v175 >= v30)
    {
      goto LABEL_105;
    }
  }

  v163 = v32;
  v162 = v6;
  v84 = *a3;
  v85 = *(v13 + 72);
  v184 = *(v13 + 16);
  v86 = &v84[v85 * (v175 - 1)];
  v181 = -v85;
  v165 = v33;
  v4 = v33 - v175;
  v168 = v85;
  v182 = v84;
  v87 = &v84[v175 * v85];
  v13 = v186;
  v169 = v82;
LABEL_43:
  v174 = v86;
  v175 = v83;
  v170 = v87;
  v172 = v4;
  v88 = v86;
  while (1)
  {
    v90 = v184;
    v89 = v185;
    (v184)(v185, v87, v12, v29);
    v90(v13, v88, v12);
    v91 = sub_227664A50();
    if (v91 == sub_227664A50())
    {
      v92 = v177;
      sub_227664A80();
      v93 = v178;
      sub_227664A80();
      v94 = sub_2276626C0();
      v95 = *v176;
      v96 = v93;
      v97 = v179;
      (*v176)(v96, v179);
      v98 = v92;
      v12 = v180;
      v99 = v97;
      v13 = v186;
      v95(v98, v99);
    }

    else
    {
      v100 = sub_227664A50();
      v94 = v100 < sub_227664A50();
    }

    v101 = *v188;
    (*v188)(v13, v12);
    v101(v89, v12);
    if ((v94 & 1) == 0)
    {
LABEL_42:
      v83 = v175 + 1;
      v86 = &v168[v174];
      v4 = v172 - 1;
      v87 = &v168[v170];
      if ((v175 + 1) != v169)
      {
        goto LABEL_43;
      }

      v175 = v169;
      v6 = v162;
      a3 = v159;
      v32 = v163;
      v33 = v165;
      goto LABEL_53;
    }

    if (!v182)
    {
      break;
    }

    v102 = *v187;
    v103 = v183;
    (*v187)(v183, v87, v12);
    swift_arrayInitWithTakeFrontToBack();
    v102(v88, v103, v12);
    v88 += v181;
    v87 += v181;
    if (__CFADD__(v4++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_2270992DC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = sub_227664AA0();
  v8 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v47 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v64 = a1;
  v63 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v17;
    if (v17 >= 1)
    {
      v32 = -v13;
      v51 = a4;
      v52 = (v8 + 16);
      v50 = (v8 + 8);
      v33 = v31;
      v60 = a1;
      v53 = v32;
      do
      {
        v48 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v36 = a3;
        v54 = v34;
        v55 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v64 = v34;
            v62 = v48;
            goto LABEL_58;
          }

          v37 = v36;
          v49 = v31;
          v59 = v36 + v32;
          v38 = v33 + v32;
          v39 = *v52;
          v40 = v57;
          v41 = v33 + v32;
          v42 = v33;
          v43 = v61;
          (*v52)(v57, v41, v61);
          v44 = v58;
          (v39)(v58, v35, v43);
          v56 = sub_227664A50();
          v45 = sub_227664A50();
          v46 = *v50;
          (*v50)(v44, v43);
          v46(v40, v43);
          if (v56 < v45)
          {
            break;
          }

          v31 = v38;
          v36 = v59;
          if (v37 < v42 || v59 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v55;
            a1 = v60;
          }

          else
          {
            v35 = v55;
            a1 = v60;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v38;
          v32 = v53;
          v34 = v54;
          if (v38 <= v51)
          {
            a2 = v54;
            goto LABEL_57;
          }
        }

        v33 = v42;
        if (v37 < v54 || v59 >= v54)
        {
          a3 = v59;
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v31 = v49;
          v32 = v53;
        }

        else
        {
          a3 = v59;
          a2 = v55;
          a1 = v60;
          v31 = v49;
          v32 = v53;
          if (v37 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v51);
    }

LABEL_57:
    v64 = a2;
    v62 = v31;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v16;
    v62 = a4 + v16;
    v59 = a3;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v54 = v13;
      v55 = v8 + 16;
      v52 = (v8 + 8);
      v53 = v19;
      do
      {
        v60 = a1;
        v20 = v57;
        v21 = v61;
        v22 = v53;
        v53(v57, a2, v61);
        v23 = v58;
        v22(v58, a4, v21);
        v24 = a2;
        v25 = sub_227664A50();
        v26 = sub_227664A50();
        v27 = *v52;
        (*v52)(v23, v21);
        v27(v20, v21);
        if (v25 >= v26)
        {
          v28 = v54;
          v30 = a4 + v54;
          v29 = v60;
          if (v60 < a4 || v60 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (v60 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v63 = v30;
          a4 += v28;
        }

        else
        {
          v28 = v54;
          a2 = v24 + v54;
          v29 = v60;
          if (v60 < v24 || v60 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v29 + v28;
        v64 = a1;
      }

      while (a4 < v56 && a2 < v59);
    }
  }

LABEL_58:
  sub_22711736C(&v64, &v63, &v62);
}

void sub_227099894(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v81 = a4;
  v90 = a1;
  v84 = sub_227662750();
  v6 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v82 = &v74 - v9;
  v89 = sub_227664AA0();
  v10 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v79 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v74 - v13;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v19 = &v74 - v18;
  v80 = *(v20 + 72);
  if (!v80)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return;
  }

  v88 = a2;
  v21 = a2 - v90;
  if (a2 - v90 == 0x8000000000000000 && v80 == -1)
  {
    goto LABEL_67;
  }

  v22 = a3 - v88;
  if (a3 - v88 == 0x8000000000000000 && v80 == -1)
  {
    goto LABEL_68;
  }

  v93 = v90;
  v23 = v81;
  v92 = v81;
  if (v21 / v80 >= v22 / v80)
  {
    v26 = v22 / v80 * v80;
    if (v81 < v88 || v88 + v26 <= v81)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v81 != v88)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v50 = v23 + v26;
    if (v26 < 1)
    {
      v53 = v23 + v26;
    }

    else
    {
      v51 = -v80;
      v80 = v10 + 16;
      v76 = (v6 + 8);
      v78 = (v10 + 8);
      v52 = v23 + v26;
      v53 = v50;
      v87 = v51;
      do
      {
        v75 = v53;
        v54 = v88;
        v88 += v51;
        v85 = v54;
        while (1)
        {
          if (v54 <= v90)
          {
            v93 = v54;
            v91 = v75;
            goto LABEL_65;
          }

          v55 = a3;
          v77 = v53;
          v56 = *v80;
          v86 = v52 + v51;
          v57 = v89;
          v56(v14);
          v58 = v79;
          (v56)(v79, v88, v57);
          v59 = sub_227664A50();
          if (v59 == sub_227664A50())
          {
            v60 = v82;
            sub_227664A80();
            v61 = v58;
            v62 = v83;
            sub_227664A80();
            v63 = sub_2276626C0();
            v64 = *v76;
            v65 = v62;
            v66 = v84;
            (*v76)(v65, v84);
            v64(v60, v66);
          }

          else
          {
            v67 = sub_227664A50();
            v61 = v58;
            v63 = v67 < sub_227664A50();
          }

          v68 = v55 + v87;
          v69 = *v78;
          v70 = v89;
          (*v78)(v61, v89);
          v69(v14, v70);
          if (v63)
          {
            break;
          }

          v71 = v86;
          v53 = v86;
          v72 = v81;
          a3 = v68;
          if (v55 < v52 || v68 >= v52)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v55 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v52 = v53;
          v51 = v87;
          v54 = v85;
          if (v71 <= v72)
          {
            v88 = v85;
            goto LABEL_64;
          }
        }

        v73 = v81;
        a3 = v68;
        if (v55 < v85 || v68 >= v85)
        {
          swift_arrayInitWithTakeFrontToBack();
          v53 = v77;
        }

        else
        {
          v53 = v77;
          if (v55 != v85)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v51 = v87;
      }

      while (v52 > v73);
    }

LABEL_64:
    v93 = v88;
    v91 = v53;
  }

  else
  {
    v24 = v21 / v80 * v80;
    v87 = v17;
    if (v81 < v90 || v90 + v24 <= v81)
    {
      swift_arrayInitWithTakeFrontToBack();
      v25 = v88;
    }

    else
    {
      v25 = v88;
      if (v81 != v90)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v86 = v23 + v24;
    v91 = v23 + v24;
    v27 = v24 < 1 || v25 >= a3;
    v28 = v80;
    if (!v27)
    {
      v29 = v23;
      v30 = *(v10 + 16);
      v78 = (v10 + 16);
      v79 = (v6 + 8);
      v31 = (v10 + 8);
      v85 = a3;
      v77 = (v10 + 8);
      do
      {
        v88 = v25;
        v32 = v89;
        v30(v19, v25, v89);
        v33 = v19;
        v34 = v87;
        v30(v87, v29, v32);
        v35 = sub_227664A50();
        if (v35 == sub_227664A50())
        {
          v36 = v82;
          sub_227664A80();
          v37 = v83;
          sub_227664A80();
          v38 = sub_2276626C0();
          v39 = *v79;
          v40 = v37;
          v41 = v29;
          v42 = v84;
          (*v79)(v40, v84);
          v43 = v36;
          v44 = v42;
          v29 = v41;
          v28 = v80;
          v39(v43, v44);
          v31 = v77;
        }

        else
        {
          v45 = sub_227664A50();
          v38 = v45 < sub_227664A50();
        }

        v46 = *v31;
        v47 = v34;
        v48 = v89;
        (*v31)(v47, v89);
        v46(v33, v48);
        v19 = v33;
        if (v38)
        {
          v25 = v88 + v28;
          if (v90 < v88 || v90 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v49 = v85;
          }

          else
          {
            v49 = v85;
            if (v90 != v88)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          v25 = v88;
          if (v90 < v29 || v90 >= v29 + v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v49 = v85;
          }

          else
          {
            v49 = v85;
            if (v90 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v92 = v29 + v28;
          v29 += v28;
        }

        v90 += v28;
        v93 = v90;
      }

      while (v29 < v86 && v25 < v49);
    }
  }

LABEL_65:
  sub_22711736C(&v93, &v92, &v91);
}

unint64_t sub_22709A08C()
{
  result = qword_27D7BA1D8;
  if (!qword_27D7BA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA1D8);
  }

  return result;
}

unint64_t sub_22709A0E0(uint64_t a1)
{
  result = sub_22709A108();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22709A108()
{
  result = qword_27D7BA1E0;
  if (!qword_27D7BA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA1E0);
  }

  return result;
}

uint64_t sub_22709A15C(uint64_t a1)
{
  v1 = sub_22766C090();
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_226F1EDD0(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_226F1EDD0((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_22709A264(uint64_t a1)
{
  v35 = sub_2276640A0();
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
      v37 = sub_227664070();
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

char *sub_22709A590(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E88, &qword_227672538);
  v6 = swift_allocObject();
  v7 = v2;
  v8 = v3;

  sub_22766A070();
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  swift_beginAccess();
  sub_22766A0D0();
  swift_endAccess();
  v9 = sub_2272340B8(100);
  swift_setDeallocating();

  v10 = qword_2813B2078;
  v11 = sub_22766A100();
  (*(*(v11 - 8) + 8))(v6 + v10, v11);
  swift_deallocClassInstance();
  return v9;
}

void sub_22709A73C(uint64_t a1, void *a2)
{
  v4 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E88, &qword_227672538);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  v33 = v11;
  v34 = v10;
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  v35 = v7;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  swift_getKeyPath();
  v12 = sub_22709A264(a1);
  v39 = v2;
  v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v38[0] = v12;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v13 = sub_22766C820();
  sub_226ED25F8(v38, v36);
  v14 = v37;
  if (v37)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v36, v37);
    v16 = *(v14 - 8);
    v17 = MEMORY[0x28223BE20](v15);
    v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19, v17);
    v20 = sub_22766D170();
    (*(v16 + 8))(v19, v14);
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1E8 &qword_227678890))];

  sub_226EBC888(v38);
  v22 = qword_2813B2078;
  swift_beginAccess();
  v23 = sub_22766A080();
  v25 = v24;
  MEMORY[0x22AA985C0]();
  if (*((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v23(v38, 0);
  swift_endAccess();

  v26 = sub_227542738(v9 + v22, v35, v8);
  if (v26)
  {
    if (v26 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v27 = v39;
  v28 = sub_22723EF70(0);
  if (v27)
  {
LABEL_10:

    return;
  }

  v29 = v28;
  [v28 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v30 = sub_22766C9E0();
  v31 = sub_226EDAB24(v30);

  sub_226EDAB78(v31, v33);
}

uint64_t sub_22709AB70()
{
  v0 = sub_227665680();
  __swift_allocate_value_buffer(v0, qword_28139B800);
  __swift_project_value_buffer(v0, qword_28139B800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1F0, &qword_227678898);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276728D0;
  *(inited + 32) = 0;
  *(inited + 40) = 1;
  sub_22766C550();
  *(inited + 48) = v2;
  *(inited + 56) = 0;
  sub_226F4D9B0(inited);
  swift_setDeallocating();
  return sub_227665660();
}

uint64_t static RestrictionProfile.current.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28139B7F8 != -1)
  {
    swift_once();
  }

  v2 = sub_227665680();
  v3 = __swift_project_value_buffer(v2, qword_28139B800);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static RestrictionProfile.current.setter(uint64_t a1)
{
  if (qword_28139B7F8 != -1)
  {
    swift_once();
  }

  v2 = sub_227665680();
  v3 = __swift_project_value_buffer(v2, qword_28139B800);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static RestrictionProfile.current.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_28139B7F8 != -1)
  {
    swift_once();
  }

  v1 = sub_227665680();
  __swift_project_value_buffer(v1, qword_28139B800);
  swift_beginAccess();
  return j__swift_endAccess;
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

uint64_t static AudioLanguageEngagementSheetAcknowledgment.representativeSamples()()
{
  v0 = sub_227669040();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22709B0AC();
  sub_22709B100();
  v4 = sub_227663B50();
  v5 = *(v4 + 16);
  if (v5)
  {
    v12 = MEMORY[0x277D84F90];
    sub_226F1F668(0, v5, 0);
    v6 = v12;
    v7 = v4 + 40;
    do
    {
      sub_227669030();
      v12 = v6;
      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_226F1F668((v8 > 1), v9 + 1, 1);
        v6 = v12;
      }

      *(v6 + 16) = v9 + 1;
      (*(v1 + 32))(v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v9, v3, v0);
      v7 += 16;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v6;
}

unint64_t sub_22709B0AC()
{
  result = qword_27D7BA1F8;
  if (!qword_27D7BA1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA1F8);
  }

  return result;
}

unint64_t sub_22709B100()
{
  result = qword_27D7BA200;
  if (!qword_27D7BA200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA200);
  }

  return result;
}

void sub_22709B160(void *a1)
{
  [a1 state];
  sub_22709B100();
  sub_227663AE0();
  sub_227669030();
}

void *sub_22709B1E0(void *a1)
{
  v4 = sub_227669020();
  LOBYTE(v5) = v2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F80, &qword_227676E88);
  result = sub_227663AD0();
  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v6 <= 0x7FFFFFFF)
  {
    return [a1 setState_];
  }

  __break(1u);
  return result;
}

unint64_t sub_22709B280(uint64_t a1)
{
  result = sub_22709B2A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22709B2A8()
{
  result = qword_2813A5510;
  if (!qword_2813A5510)
  {
    sub_227669040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A5510);
  }

  return result;
}

void sub_22709B300(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA210, qword_227678968);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_22709BBB8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9F1D0;
  aBlock[3] = &block_descriptor_13;
  v13 = _Block_copy(aBlock);

  [a2 deviceListWithContext:a3 completion:v13];
  _Block_release(v13);
}

char *sub_22709B4B8(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = a2;
    sub_22766A730();
    v12 = a2;
    v13 = sub_22766B380();
    v14 = sub_22766C890();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      v17 = sub_2276622B0();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&dword_226E8E000, v13, v14, "Encountered error in fetching devices: %{public}@", v15, 0xCu);
      sub_226F2534C(v16);
      MEMORY[0x22AA9A450](v16, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v55 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA210, qword_227678968);
    return sub_22766C440();
  }

  v48 = a3;
  if (!a1)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v19 = [a1 deviceList];
  v20 = MEMORY[0x277D84F90];
  if (!v19)
  {
LABEL_29:
    v55 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA210, qword_227678968);
    return sub_22766C450();
  }

  v21 = v19;
  sub_22709BC44();
  v22 = sub_22766C2C0();

  if (v22 >> 62)
  {
    v23 = sub_22766CD20();
    if (v23)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
LABEL_28:

    goto LABEL_29;
  }

LABEL_9:
  v55 = v20;
  result = sub_226F1FAE8(0, v23 & ~(v23 >> 63), 0);
  if (v23 < 0)
  {
    __break(1u);
  }

  else
  {
    v24 = 0;
    v49 = v22;
    v50 = v22 & 0xC000000000000001;
    v20 = v55;
    while (1)
    {
      v25 = v50 ? MEMORY[0x22AA991A0](v24, v22) : *(v22 + 8 * v24 + 32);
      v26 = v25;
      result = [v25 buildNumber];
      if (!result)
      {
        break;
      }

      v27 = result;
      v28 = sub_22766C000();
      v51 = v29;
      v52 = v28;

      v30 = [v26 operatingSystemName];
      if (v30)
      {
        v31 = v30;
        v32 = sub_22766C000();
        v53 = v33;
        v54 = v32;
      }

      else
      {
        v53 = 0;
        v54 = 0;
      }

      v34 = [v26 operatingSystemVersion];
      if (v34)
      {
        v35 = v34;
        v36 = sub_22766C000();
        v38 = v37;
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      result = [v26 model];
      if (!result)
      {
        goto LABEL_32;
      }

      v39 = result;
      v40 = sub_22766C000();
      v42 = v41;

      v55 = v20;
      v44 = v20[2];
      v43 = v20[3];
      if (v44 >= v43 >> 1)
      {
        sub_226F1FAE8((v43 > 1), v44 + 1, 1);
        v20 = v55;
      }

      ++v24;
      v20[2] = v44 + 1;
      v45 = &v20[8 * v44];
      v46 = v51;
      v45[4] = v52;
      v45[5] = v46;
      v47 = v53;
      v45[6] = v54;
      v45[7] = v47;
      v45[8] = v36;
      v45[9] = v38;
      v45[10] = v40;
      v45[11] = v42;
      v22 = v49;
      if (v23 == v24)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22709B8E4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_22709B908, 0, 0);
}

uint64_t sub_22709B908()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA208, &qword_227678960);
  *v2 = v0;
  v2[1] = sub_22709BA14;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000016, 0x8000000227698B40, sub_22709BBB0, v1, v3);
}

uint64_t sub_22709BA14()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_22709BB4C;
  }

  else
  {

    v2 = sub_22709BB30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22709BB4C()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_22709BBB8(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA210, qword_227678968) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_22709B4B8(a1, a2, v6);
}

unint64_t sub_22709BC44()
{
  result = qword_27D7BA218;
  if (!qword_27D7BA218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7BA218);
  }

  return result;
}

uint64_t sub_22709BC90()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22766D370();
  sub_2274E2FEC(v1);
  sub_22766C100();

  sub_2275E0328(v2);
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_22709BD20(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_2274E2FEC(v2);
  sub_22766C100();

  sub_2275E0328(v3);
  sub_22766C100();
}

uint64_t sub_22709BDA8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_22766D370();
  sub_2274E2FEC(v2);
  sub_22766C100();

  sub_2275E0328(v3);
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_22709BE34(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = *a2;
  v5 = sub_2274E2FEC(*a1);
  v7 = v6;
  if (v5 == sub_2274E2FEC(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = sub_22766D190();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = sub_2275E0328(v2);
  v14 = v13;
  if (v12 == sub_2275E0328(v3) && v14 == v15)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22766D190();
  }

  return v11 & 1;
}

uint64_t sub_22709BF40()
{
  sub_22766CE20();

  v0 = sub_22709C030();
  v1 = MEMORY[0x22AA958B0](&type metadata for PersistenceSchemaVersion, v0);
  MEMORY[0x22AA98450](v1);

  MEMORY[0x22AA98450](0x203A6174614420, 0xE700000000000000);
  v2 = sub_22709C084();
  v3 = MEMORY[0x22AA958B0](&type metadata for PersistenceDataVersion, v2);
  MEMORY[0x22AA98450](v3);

  return 0x203A616D65686353;
}

unint64_t sub_22709C030()
{
  result = qword_28139A2B0[0];
  if (!qword_28139A2B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28139A2B0);
  }

  return result;
}

unint64_t sub_22709C084()
{
  result = qword_28139A358;
  if (!qword_28139A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139A358);
  }

  return result;
}

BOOL sub_22709C0D8()
{
  v0 = 0;
  v1 = 0x21u;
  do
  {
    v2 = byte_283A917F8[v1];
    if (sub_2274E3784(v0, v2))
    {
      v0 = v2;
    }

    ++v1;
  }

  while (v1 != 115);
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = byte_283A917A0[v3 + 33];
    result = sub_2275E0808(v4, v5);
    if (result)
    {
      v4 = v5;
    }

    ++v3;
  }

  while (v3 != 55);
  LOBYTE(word_2813B2670) = v0;
  HIBYTE(word_2813B2670) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for PersistenceVersion(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC9)
  {
    goto LABEL_17;
  }

  if (a2 + 65335 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65335 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65335;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65335;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65335;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 0x38;
  v8 = v6 - 56;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersistenceVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65335 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65335 < 0xFF0000)
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
    v5 = ((a2 - 201) >> 16) + 1;
    *result = a2 - 201;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 55;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22709C2D8()
{
  result = qword_27D7BA220;
  if (!qword_27D7BA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA220);
  }

  return result;
}

uint64_t sub_22709C32C()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_227667D30();
  v6 = v5;
  if (v4 == sub_227667D30() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_22766D190();

    if ((v9 & 1) == 0)
    {
      sub_22766A740();
      v11 = sub_22766B380();
      v12 = sub_22766C890();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_226E8E000, v11, v12, "[MetricRecordingContext] DNU not consented - dropping event", v13, 2u);
        MEMORY[0x22AA9A450](v13, -1, -1);
      }

      (*(v1 + 8))(v3, v0);
      v14 = sub_2276636A0();
      sub_226F09790();
      swift_allocError();
      (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D50088], v14);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_22709C54C()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricRecordingContext(0);
  v13 = sub_227666C60();
  v14 = v4 & 1;
  v11 = 1;
  v12 = 1;
  sub_226FFD9B0();
  sub_226FFDA04();
  result = sub_227663B20();
  if ((result & 1) == 0)
  {
    sub_22766A740();
    v6 = sub_22766B380();
    v7 = sub_22766C890();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_226E8E000, v6, v7, "[MetricRecordingContext] GDPR not consented - dropping event", v8, 2u);
      MEMORY[0x22AA9A450](v8, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    v9 = sub_2276636A0();
    sub_226F09790();
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D50088], v9);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22709C75C(uint64_t a1)
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
      v36 = sub_227663410();
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

uint64_t sub_22709CA64()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);

  return swift_deallocClassInstance();
}

uint64_t sub_22709CAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v58 = a1;
  v73 = a2;
  v60 = sub_22766B390();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD7B0, &unk_227682270);
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v6);
  v61 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v68 = *(v11 - 8);
  v69 = v11;
  v12 = *(v68 + 64);
  MEMORY[0x28223BE20](v11);
  v63 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v71 = *(v15 - 8);
  v72 = v15;
  MEMORY[0x28223BE20](v15);
  v67 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v16;
  MEMORY[0x28223BE20](v17);
  v70 = &v57 - v18;
  v19 = sub_22766A8A0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2276693C0();
  (*(v20 + 104))(v22, *MEMORY[0x277D4F980], v19);
  v24 = sub_226EC9A38(v22, v23);

  (*(v20 + 8))(v22, v19);
  if (v24)
  {
    sub_22766A6C0();
    v25 = sub_22766B380();
    v26 = sub_22766C8B0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_226E8E000, v25, v26, "[Catalog Update] Skipping metadata refresh - platform performs refresh in background.", v27, 2u);
      MEMORY[0x22AA9A450](v27, -1, -1);
    }

    (*(v59 + 8))(v5, v60);
    return sub_2276692A0();
  }

  else
  {
    v29 = v3[25];
    v30 = v3[26];
    __swift_project_boxed_opaque_existential_0(v3 + 22, v29);
    v31 = swift_allocObject();
    *(v31 + 16) = v58;
    *(v31 + 24) = v3;
    v32 = sub_2276690A0();

    sub_226ECF5D8(sub_22709D4B0, v31, v29, v32, v30, v10);

    v33 = *__swift_project_boxed_opaque_existential_0(v3 + 12, v3[15]);
    v75[3] = type metadata accessor for CatalogScriptClient();
    v75[4] = &off_283AC6368;
    v75[0] = v33;
    sub_226E91B50(v75, v74);
    v34 = swift_allocObject();
    sub_226E92AB8(v74, v34 + 16);

    __swift_destroy_boxed_opaque_existential_0(v75);
    v36 = v64;
    v35 = v65;
    v37 = v61;
    (*(v64 + 16))(v61, v10, v65);
    v38 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v39 = swift_allocObject();
    (*(v36 + 32))(v39 + v38, v37, v35);
    v40 = (v39 + ((v7 + v38 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v40 = sub_22709D52C;
    v40[1] = v34;
    sub_227668CE0();
    v41 = v66;
    sub_227669270();
    (*(v36 + 8))(v10, v35);
    v43 = v68;
    v42 = v69;
    v44 = v63;
    (*(v68 + 16))(v63, v41, v69);
    v45 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v46 = swift_allocObject();
    (*(v43 + 32))(v46 + v45, v44, v42);
    v47 = (v46 + ((v12 + v45 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v47 = sub_22709D534;
    v47[1] = 0;
    v48 = v70;
    sub_227669270();
    (*(v43 + 8))(v41, v42);
    v49 = swift_allocObject();
    *(v49 + 16) = sub_22709D758;
    *(v49 + 24) = 0;
    v51 = v71;
    v50 = v72;
    v52 = v67;
    (*(v71 + 16))(v67, v48, v72);
    v53 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v54 = (v62 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    (*(v51 + 32))(v55 + v53, v52, v50);
    v56 = (v55 + v54);
    *v56 = sub_226F5AAF8;
    v56[1] = v49;
    sub_227669270();
    return (*(v51 + 8))(v48, v50);
  }
}

uint64_t sub_22709D2E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22709C75C(a2);
  v7 = v3;
  v8 = sub_226F3E6A8(v6);

  v9 = *(v8 + 16);
  if (v9)
  {
    v20[6] = a3;
    v10 = sub_2274CD6BC(v9, 0);
    v11 = sub_2274CDE20(v20, v10 + 4, v9, v8);
    v12 = v20[0];

    result = sub_226EBB21C(v12);
    if (v11 != v9)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v14 = sub_226F7F468(v10, 0, 1, a1);
  if (v7)
  {
  }

  else
  {
    v15 = v14;

    v16 = sub_226F420C8(v15);

    v17 = sub_22736EE60(v16);

    v18 = sub_227009018(v17, v8);

    v19 = sub_22736EEA0(v18);

    sub_22742F5E0(v19, v16);

    return sub_227669090();
  }
}

uint64_t sub_22709D4CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  __swift_project_boxed_opaque_existential_0((*v5 + 16), *(*v5 + 40));
  return sub_227321ACC(29, a1, a3);
}

uint64_t sub_22709D534@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_227668CC0();
  v7 = result;
  v24 = *(result + 16);
  if (v24)
  {
    v8 = 0;
    v9 = (v2 + 8);
    v10 = (result + 40);
    *&v6 = 136446210;
    v21 = v6;
    v22 = v1;
    v23 = result;
    while (v8 < *(v7 + 16))
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      sub_22766A6C0();

      v13 = sub_22766B380();
      v14 = sub_22766C8B0();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = v9;
        v17 = swift_slowAlloc();
        v25 = v17;
        *v15 = v21;
        *(v15 + 4) = sub_226E97AE8(v11, v12, &v25);
        _os_log_impl(&dword_226E8E000, v13, v14, "[Catalog Update] Failed to update workout identifier %{public}s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        v18 = v17;
        v9 = v16;
        MEMORY[0x22AA9A450](v18, -1, -1);
        v19 = v15;
        v1 = v22;
        v7 = v23;
        MEMORY[0x22AA9A450](v19, -1, -1);
      }

      result = (*v9)(v4, v1);
      ++v8;
      v10 += 2;
      if (v24 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return sub_2276692A0();
  }

  return result;
}

uint64_t sub_22709D758(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v7 = a1;
  v8 = sub_22766B380();
  v9 = sub_22766C890();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = MEMORY[0x22AA995D0](v17[3], v17[4]);
    v15 = sub_226E97AE8(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v8, v9, "[Catalog Update] Failed to update workouts with error: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22709D984(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_22709DA4C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_22709DAA8(void (*a1)(id, uint64_t), int a2, id a3)
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v6 = sub_227664470();
    sub_226E9EC88(&qword_27D7BA250, MEMORY[0x277D50940], MEMORY[0x277D50948]);
    v5 = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D50930], v6);
  }

  v8 = a3;
  a1(v5, 1);
}

uint64_t sub_22709DBF0()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  (*(v0 + 168))(*(v0 + 136), *(v0 + 112));
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  sub_227669930();
  swift_willThrow();
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  sub_227669920();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22709DD14(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = swift_task_alloc();
  v2[22] = v3;
  *v3 = v2;
  v3[1] = sub_22709DDA4;

  return sub_226EA0808();
}

uint64_t sub_22709DDA4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22709DEDC, 0, 0);
  }
}

uint64_t sub_22709DEDC()
{
  v1 = v0[23];
  v2 = sub_22766BFD0();
  v3 = [v1 doubleForKey_];
  v0[24] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22709E034;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3B8, &qword_227678BC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22709E260;
  v0[13] = &block_descriptor_147;
  v0[14] = v4;
  [v3 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22709E034()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_22709E1E0;
  }

  else
  {
    v2 = sub_22709E144;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22709E144()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  [v1 doubleValue];
  v4 = v3;

  swift_unknownObjectRelease();
  v5 = *(v0 + 8);
  v6.n128_u64[0] = v4;

  return v5(v2, v6);
}

uint64_t sub_22709E1E0(uint64_t a1)
{
  v2 = *(v1 + 192);
  swift_willThrow();
  swift_unknownObjectRelease();

  v3 = *(v1 + 8);

  return v3(0);
}

uint64_t sub_22709E260(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_22709E340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA268, &qword_227678B10);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A71F8;
  *(v34 + 24) = v32;

  v33(sub_226E93814, v34);
}

uint64_t sub_22709E71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A8, &qword_227678B30);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A73C4;
  *(v34 + 24) = v32;

  v33(sub_226E93814, v34);
}

uint64_t sub_22709EAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2D8, &qword_227678B50);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A7414;
  *(v34 + 24) = v32;

  v33(sub_226E93814, v34);
}

uint64_t sub_22709EED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA338, &qword_227678B78);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA340, &unk_22767E480);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A754C;
  *(v34 + 24) = v32;

  v33(sub_226E9F7B8, v34);
}

uint64_t sub_22709F2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA320, &qword_227678B68);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA328, &unk_227684D30);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A7524;
  *(v34 + 24) = v32;

  v33(sub_226E93814, v34);
}

uint64_t sub_22709F68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA308, &qword_227678B60);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA310, &unk_22767E470);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A74FC;
  *(v34 + 24) = v32;

  v33(sub_226E93814, v34);
}

uint64_t sub_22709FA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA370, &qword_227678B90);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9550, &qword_22767B2D0);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A7618;
  *(v34 + 24) = v32;

  v33(sub_226E9F880, v34);
}

uint64_t sub_22709FE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3F0, &qword_227678BE0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9348, &qword_227673B30);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A7800;
  *(v34 + 24) = v32;

  v33(sub_226E93814, v34);
}

uint64_t sub_2270A0220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2C0, &qword_227678B40);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD570, &unk_227670850);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A73EC;
  *(v34 + 24) = v32;

  v33(sub_226E93814, v34);
}

uint64_t sub_2270A05FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA398, &qword_227678BA8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A0, &unk_227683B80);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A7668;
  *(v34 + 24) = v32;

  v33(sub_226E93814, v34);
}

uint64_t sub_2270A09D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA280, &qword_227678B18);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA288, &qword_22768D8D0);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A7220;
  *(v34 + 24) = v32;

  v33(sub_226E93814, v34);
}

uint64_t sub_2270A0DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA298, &qword_227678B28);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A72E0;
  *(v34 + 24) = v32;

  v33(sub_2270A7374, v34);
}

uint64_t sub_2270A1190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA358, &qword_227678B88);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA360, &qword_2276720F0);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A75F0;
  *(v34 + 24) = v32;

  v33(sub_226E93814, v34);
}

uint64_t sub_2270A156C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA348, &qword_227678B80);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A7560;
  *(v34 + 24) = v32;

  v33(sub_226EC29B0, v34);
}