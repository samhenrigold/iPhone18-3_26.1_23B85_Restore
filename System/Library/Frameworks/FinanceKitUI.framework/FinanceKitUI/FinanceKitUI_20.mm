uint64_t sub_23864E5D8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 160);
  swift_willThrow();
  sub_23875C140();
  v3 = v2;
  v4 = v1;
  v5 = sub_23875C1B0();
  v6 = sub_23875F000();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 240);
    v8 = *(v0 + 160);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v12;
    v10[1] = v8;
    v13 = v8;
    _os_log_impl(&dword_2383F8000, v5, v6, "Location Token Provider: Local Search exception: %@. Completion: %@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09930, &unk_2387638C0);
    swift_arrayDestroy();
    MEMORY[0x23EE64DF0](v10, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);
  }

  v15 = *(v0 + 232);
  v14 = *(v0 + 240);
  v16 = *(v0 + 224);
  v18 = *(v0 + 176);
  v17 = *(v0 + 184);
  v19 = *(v0 + 168);

  (*(v18 + 8))(v17, v19);
  v20 = [objc_opt_self() predicateWithValue_];

  **(v0 + 152) = v20;

  v21 = *(v0 + 8);

  return v21();
}

char *sub_23864E7EC()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12230, &qword_23877A538);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_completer;
  *&v0[v5] = [objc_allocWithZone(MEMORY[0x277CD4E28]) init];
  v6 = &v0[OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_resultsContinuation];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12278, &qword_23877A560);
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  *v6 = 0;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12238, &qword_23877A540) + 28);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF122A8, &qword_23877A570);
  bzero(&v6[v8], *(*(v9 - 8) + 64));
  sub_238650D20(v4, &v6[v8]);
  v10 = *&v0[v5];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 filterExcludingAllCategories];
  [v12 setPointOfInterestFilter_];

  v14 = *&v0[v5];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 filterIncludingAll];
  [v16 setAddressFilter_];

  [*&v0[v5] setResultTypes_];
  [*&v0[v5] _setPrivateFilterType_];
  v20.receiver = v0;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  [*&v18[OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_completer] setDelegate_];
  return v18;
}

uint64_t sub_23864EA78(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_23864EA9C, 0, 0);
}

uint64_t sub_23864EA9C()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_completer);
  if ([v1 isSearching])
  {
    [v1 cancel];
  }

  v2 = v0[4];
  v3 = v0[3];
  v4 = swift_allocObject();
  v0[6] = v4;
  swift_unknownObjectWeakInit();
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DF122B0, &unk_23877A5E0);
  *v6 = v0;
  v6[1] = sub_23864EC0C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x6574287472617473, 0xEC000000293A7478, sub_238650DA0, v5, v7);
}

uint64_t sub_23864EC0C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_238582B3C;
  }

  else
  {

    v2 = sub_23864ED30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

double sub_23864ED4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v28 = a1;
  v4 = sub_23875E5C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v32 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875E5E0();
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12278, &qword_23877A560);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    sub_238449184(0, &qword_27DF12280, 0x277D85C78);
    v26 = sub_23875F0A0();
    (*(v11 + 16))(v13, v28, v10);
    v17 = *(v11 + 80);
    v27 = v5;
    v28 = v7;
    v18 = (v17 + 40) & ~v17;
    v19 = swift_allocObject();
    v20 = v29;
    *(v19 + 2) = v16;
    *(v19 + 3) = v20;
    *(v19 + 4) = v30;
    (*(v11 + 32))(&v19[v18], v13, v10);
    aBlock[4] = sub_238650DAC;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_238461548;
    aBlock[3] = &block_descriptor_22;
    v21 = _Block_copy(aBlock);
    v22 = v16;

    sub_23875E5D0();
    v33 = MEMORY[0x277D84F90];
    sub_238650C64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12290, &qword_23877A568);
    sub_238650CBC();
    v23 = v32;
    sub_23875F310();
    v24 = v26;
    MEMORY[0x23EE63B90](0, v9, v23, v21);
    _Block_release(v21);

    (*(v27 + 8))(v23, v4);
    (*(v31 + 8))(v9, v28);
  }

  return result;
}

double sub_23864F10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_completer);
  v9 = [v8 queryFragment];
  v10 = sub_23875EA80();
  v12 = v11;

  if (v10 == a2 && v12 == a3)
  {

    goto LABEL_14;
  }

  v14 = sub_23875F630();

  if (v14)
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12278, &qword_23877A560);
    sub_23875ED10();

    return result;
  }

  v15 = (a1 + OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_resultsContinuation);
  os_unfair_lock_lock(v15);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12238, &qword_23877A540) + 28);
  sub_238439884(v15 + v16, &qword_27DF12230, &qword_23877A538);
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12278, &qword_23877A560);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v15 + v16, a4, v17);
  (*(v18 + 56))(v15 + v16, 0, 1, v17);

  os_unfair_lock_unlock(v15);
  v20 = sub_23875EA50();
  [v8 setQueryFragment_];

  return result;
}

void sub_23864F400()
{
  v1 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_completer);
  v2 = [v1 queryFragment];
  v3 = sub_23875EA80();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = sub_23875EA50();
    [v1 setQueryFragment_];
  }
}

id sub_23864F4CC()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_completer] cancel];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for LocationSearchService(uint64_t a1)
{
  result = qword_27DF12218;
  if (!qword_27DF12218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_23864F658(void *a1)
{
  v2 = sub_23875E5C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = sub_23875E5E0();
  v6 = *(v15[0] - 8);
  MEMORY[0x28223BE20](v15[0]);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238449184(0, &qword_27DF12280, 0x277D85C78);
  v9 = sub_23875F0A0();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  aBlock[4] = sub_238650C54;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238461548;
  aBlock[3] = &block_descriptor_11;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  sub_23875E5D0();
  v15[1] = MEMORY[0x277D84F90];
  sub_238650C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12290, &qword_23877A568);
  sub_238650CBC();
  sub_23875F310();
  MEMORY[0x23EE63B90](0, v8, v5, v12);
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v15[0]);

  return result;
}

void sub_23864F924(void *a1, uint64_t a2)
{
  v31[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12230, &qword_23877A538);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v31 - v7;
  v9 = sub_23875ED50();
  v10 = sub_23875ED40();
  v31[0] = v9;
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = MEMORY[0x277D84F90];
  v11 = [a1 results];
  sub_238449184(0, &qword_27DF122A0, 0x277CD4E30);
  v12 = sub_23875EC80();

  if (v12 >> 62)
  {
    v13 = sub_23875F3A0();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v8;
  v33 = v10;
  v34 = v5;
  if (v13)
  {
    if (v13 < 1)
    {
      __break(1u);
      return;
    }

    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x23EE63F70](v14, v12);
      }

      else
      {
        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 _placeType];
      if (v18 > 0x10 || ((1 << v18) & 0x187A1) == 0)
      {
        v20 = v17;
        MEMORY[0x23EE63730]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23875EC90();
        }

        sub_23875ECB0();

        v15 = v36;
      }

      else
      {
      }

      ++v14;
    }

    while (v13 != v14);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = (Strong + OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_resultsContinuation);
    os_unfair_lock_lock((Strong + OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_resultsContinuation));
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12238, &qword_23877A540) + 28);
    sub_23875ED40();
    sub_23875ECE0();
    isCurrentExecutor = swift_task_isCurrentExecutor();
    v26 = v34;
    if ((isCurrentExecutor & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v27 = v32;
    sub_238650BE4(v23 + v24, v32);

    os_unfair_lock_unlock(v23);
  }

  else
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12278, &qword_23877A560);
    v27 = v32;
    (*(*(v28 - 8) + 56))(v32, 1, 1, v28);
    v26 = v34;
  }

  sub_238650BE4(v27, v26);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12278, &qword_23877A560);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v26, 1, v29) == 1)
  {
    sub_238439884(v27, &qword_27DF12230, &qword_23877A538);

    sub_238439884(v26, &qword_27DF12230, &qword_23877A538);
  }

  else
  {
    v35 = v15;
    sub_23875ED10();
    sub_238439884(v27, &qword_27DF12230, &qword_23877A538);
    (*(v30 + 8))(v26, v29);
  }
}

void sub_23864FEA4(uint64_t a1)
{
  sub_23864FF44(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23864FF44(uint64_t a1)
{
  if (!qword_27DF12228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12230, &qword_23877A538);
    v1 = sub_23875C060();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF12228);
    }
  }
}

id sub_23864FFA8()
{
  result = [objc_allocWithZone(type metadata accessor for LocationSearchService(0)) init];
  qword_27DF2F888 = result;
  return result;
}

uint64_t sub_23864FFDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2384494A4;

  return sub_23864D8C0(a1);
}

id sub_238650090@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v11 = v1[2];

  v5 = sub_238650240(v11);
  v7 = v6;
  v8 = sub_23875E030();
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = v3;
  v9[4] = v11;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = 0xD000000000000012;
  a1[7] = 0x6E6F697461636F4CLL;
  a1[8] = 0xE800000000000000;
  a1[6] = 0x800000023878C470;
  *a1 = v4;
  a1[1] = v3;
  a1[9] = &unk_238782BD0;
  a1[10] = v9;

  return v11;
}

uint64_t sub_23865018C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238547590;

  return sub_238650370(a1, a2);
}

uint64_t sub_238650240(void *a1)
{
  v2 = [a1 title];
  v3 = sub_23875EA80();

  v4 = v3;
  v15 = v3;
  v5 = [a1 subtitle];
  v6 = sub_23875EA80();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return v4;
  }

  v10 = [a1 subtitle];
  v11 = sub_23875EA80();
  v13 = v12;

  MEMORY[0x23EE63650](v11, v13);

  MEMORY[0x23EE63650](8236, 0xE200000000000000);

  return v15;
}

uint64_t sub_238650370(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_238650390, 0, 0);
}

uint64_t sub_238650390()
{
  if (sub_23875EB40() >= 3)
  {
    if (qword_27DF08D40 != -1)
    {
      swift_once();
    }

    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_2386504D8;
    v6 = v0[2];
    v5 = v0[3];

    return sub_23864EA78(v6, v5);
  }

  else
  {
    if (qword_27DF08D40 != -1)
    {
      swift_once();
    }

    sub_23864F400();
    v1 = v0[1];
    v2 = MEMORY[0x277D84F90];

    return v1(v2);
  }
}

uint64_t sub_2386504D8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v4 = sub_2386509A0;
  }

  else
  {
    v4 = sub_2386505EC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2386505EC()
{
  v1 = *(v0 + 40);
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_39;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v4)
  {
LABEL_50:
    __break(1u);
    return result;
  }

  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {

      if (v4)
      {
        sub_238449184(0, &qword_27DF122A0, 0x277CD4E30);
        sub_23875F480();
        if (v4 != 1)
        {
          sub_23875F480();
          if (v4 != 2)
          {
            sub_23875F480();
          }
        }
      }

      if (!v2)
      {
LABEL_12:
        v5 = v1 & 0xFFFFFFFFFFFFFF8;
        v6 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
        goto LABEL_15;
      }
    }

    else
    {

      if (!v2)
      {
        goto LABEL_12;
      }
    }

    v5 = sub_23875F540();
    v6 = v7;
    v2 = v8;
    v1 = v9;

    v4 = v1 >> 1;
LABEL_15:
    v10 = v4 - v2;
    if (__OFSUB__(v4, v2))
    {
      goto LABEL_41;
    }

    v11 = MEMORY[0x277D84F90];
    if (!v10)
    {
      break;
    }

    *&v39 = MEMORY[0x277D84F90];
    sub_2385FE8DC(0, v10 & ~(v10 >> 63), 0);
    v1 = v37;
    if ((v10 & 0x8000000000000000) == 0)
    {
      v12 = v39;
      if (v4 <= v2)
      {
        v13 = v2;
      }

      else
      {
        v13 = v4;
      }

      v14 = v13 - v2;
      v15 = (v6 + 8 * v2);
      while (v14)
      {
        v16 = *(v37 + 24);
        *&v39 = v12;
        v18 = *(v12 + 16);
        v17 = *(v12 + 24);
        v19 = v18 + 1;
        v2 = *v15;

        if (v18 >= v17 >> 1)
        {
          sub_2385FE8DC((v17 > 1), v18 + 1, 1);
          v16 = *(v37 + 24);
        }

        v20 = *(v37 + 16);
        *(v12 + 16) = v19;
        v21 = (v12 + 24 * v18);
        v21[4] = v20;
        v21[5] = v16;
        v21[6] = v2;
        --v14;
        ++v15;
        if (!--v10)
        {
          v11 = MEMORY[0x277D84F90];
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_39:
      v5 = sub_23875F3A0();
      if ((sub_23875F3A0() & 0x8000000000000000) == 0)
      {
        goto LABEL_43;
      }

      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    if (v5 >= 3)
    {
      v36 = 3;
    }

    else
    {
      v36 = v5;
    }

    if (v5 >= 0)
    {
      v4 = v36;
    }

    else
    {
      v4 = 3;
    }

    result = sub_23875F3A0();
    if (result < v4)
    {
      goto LABEL_50;
    }
  }

  v19 = *(MEMORY[0x277D84F90] + 16);
  v22 = v37;
  if (v19)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_29:
    v38 = v11;
    sub_2385FE78C(0, v19, 0);
    v23 = v38;
    v24 = *(v38 + 16);
    v25 = 48 * v24 + 72;
    v26 = (v12 + 48);
    do
    {
      v28 = *(v26 - 2);
      v27 = *(v26 - 1);
      v29 = *v26;
      v30 = *(v38 + 24);

      v31 = v29;
      if (v24 >= v30 >> 1)
      {
        v33 = v30 > 1;
        v34 = v31;
        sub_2385FE78C(v33, v24 + 1, 1);
        v31 = v34;
      }

      *(v38 + 16) = v24 + 1;
      v32 = (v38 + v25);
      *(v32 - 5) = v28;
      *(v32 - 4) = v27;
      *(v32 - 3) = v31;
      *(v32 - 1) = v39;
      *v32 = 4;
      v25 += 48;
      v26 += 3;
      ++v24;
      --v19;
    }

    while (v19);
    swift_unknownObjectRelease();

    v22 = v37;
  }

  else
  {
    v23 = MEMORY[0x277D84F90];

    swift_unknownObjectRelease();
  }

  v35 = *(v22 + 8);

  return v35(v23);
}

uint64_t sub_2386509A0()
{
  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t sub_238650A08(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12230, &qword_23877A538);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v15 - v7;
  v9 = (v1 + OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_resultsContinuation);
  os_unfair_lock_lock(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12238, &qword_23877A540);
  sub_238650BE4(v9 + *(v10 + 28), v8);
  os_unfair_lock_unlock(v9);
  sub_238650BE4(v8, v5);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12278, &qword_23877A560);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_238439884(v8, &qword_27DF12230, &qword_23877A538);
    return sub_238439884(v5, &qword_27DF12230, &qword_23877A538);
  }

  else
  {
    v15[1] = a1;
    v14 = a1;
    sub_23875ED00();
    sub_238439884(v8, &qword_27DF12230, &qword_23877A538);
    return (*(v12 + 8))(v5, v11);
  }
}

uint64_t sub_238650BE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12230, &qword_23877A538);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_238650C64()
{
  result = qword_27DF12288;
  if (!qword_27DF12288)
  {
    sub_23875E5C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12288);
  }

  return result;
}

unint64_t sub_238650CBC()
{
  result = qword_27DF12298;
  if (!qword_27DF12298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12290, &qword_23877A568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12298);
  }

  return result;
}

uint64_t sub_238650D20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12230, &qword_23877A538);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_238650DAC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12278, &qword_23877A560) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_23864F10C(v2, v3, v4, v5);
}

double block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t ExtensionUIServiceHostView.init(appExtension:lifecycleHandler:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v17 = a5;
  v18 = a2;
  v10 = sub_23875C0A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2387591C0();
  v14 = sub_23875C090();
  (*(v11 + 8))(v13, v10);
  *a6 = v14;
  v15 = type metadata accessor for ExtensionUIServiceHostView(0, a3, a4, v17);
  (*(*(a4 - 8) + 32))(a6 + *(v15 + 44), v18, a4);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ExtensionUIServiceHostView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v4 = *(a1 + 24);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable(0, *(v8 + 16), v4, *(v8 + 32));
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v21 - v15;
  v17 = *v2;
  (*(v5 + 16))(v7, v2 + *(a1 + 44), v4, v14);
  *v12 = v17;
  (*(v5 + 32))(&v12[*(v9 + 44)], v7, v4);
  swift_getWitnessTable();
  sub_23844EA0C();
  v18 = *(v10 + 8);
  v19 = v17;
  v18(v12, v9);
  sub_23844EA0C();
  return (v18)(v16, v9);
}

unint64_t sub_23865129C()
{
  result = qword_27DF12340;
  if (!qword_27DF12340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF12340);
  }

  return result;
}

uint64_t sub_2386512EC(uint64_t *a1)
{
  result = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable(319, a1[10], a1[11], a1[12]);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2386513C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v4 = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable(0, *((*MEMORY[0x277D85000] & *v1) + 0x50), *((*MEMORY[0x277D85000] & *v1) + 0x58), *((*MEMORY[0x277D85000] & *v1) + 0x60));
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, &v1[v3], v4);
}

id sub_238651498()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_238651518(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_238651518(void *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v3 = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable(0, v2, *((*MEMORY[0x277D85000] & *a1) + 0x58), *((*MEMORY[0x277D85000] & *a1) + 0x60));
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v14 - v5);
  v7 = [objc_allocWithZone(MEMORY[0x277CC5E70]) init];
  [v7 setDelegate_];
  sub_2386513C8(v6);
  v8 = *(v4 + 8);
  v9 = *v6;
  v8(v6, v3);
  v10 = [objc_allocWithZone(MEMORY[0x277CC5E78]) initWithExtensionIdentity_];

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v2, AssociatedConformanceWitness);
  v12 = sub_23875EA50();

  [v10 setSceneIdentifier_];

  [v7 setConfiguration_];
  return v7;
}

id sub_23865172C(void *a1)
{
  v32[5] = *MEMORY[0x277D85DE8];
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v27 - v5;
  v9 = *((v8 & v7) + 0x60);
  v10 = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable(0, *((v8 & v7) + 0x50), v3, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  result = [a1 extensionProcess];
  if (result)
  {
    v29 = v11;
    v30 = result;
    v31 = v10;
    v32[0] = 0;
    v16 = [result makeXPCConnectionWithError_];
    v17 = v32[0];
    if (v16)
    {
      v18 = v16;
      swift_getAssociatedConformanceWitness();
      v28 = v9;
      sub_23875A490();
      v19 = v17;
      v20 = v18;
      sub_238651AEC(v32);
      v21 = sub_23875A470();
      sub_2386513C8(v14);
      v22 = v31;
      (*(v4 + 16))(v6, &v14[*(v31 + 44)], v3);
      (*(v29 + 8))(v14, v22);
      (*(v28 + 24))(v21, v3);
    }

    else
    {
      v23 = v32[0];
      v24 = v9;
      v25 = sub_23875B730();

      swift_willThrow();
      sub_2386513C8(v14);
      v26 = v31;
      (*(v4 + 16))(v6, &v14[*(v31 + 44)], v3);
      (*(v29 + 8))(v14, v26);
      (*(v24 + 32))(v25, v3, v24);
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_238651AEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2387594F0();
  swift_allocObject();
  result = sub_2387594E0();
  v4 = MEMORY[0x277CC7940];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

void sub_238651B44(void *a1, uint64_t a2, void *a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = a1;
  sub_23865172C(v5);
}

void sub_238651C1C(void *a1, uint64_t a2, void *a3, void *a4)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a1;
  v9 = a4;
  sub_238652724(a4);
}

void sub_238651CFC(void *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238652918();
}

id sub_238651DCC()
{
  v1 = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable.Coordinator(0, *((*MEMORY[0x277D85000] & *v0) + 0x50), *((*MEMORY[0x277D85000] & *v0) + 0x58), *((*MEMORY[0x277D85000] & *v0) + 0x60));
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_238651E50(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x68);
  v4 = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable(0, *((*MEMORY[0x277D85000] & *a1) + 0x50), *((*MEMORY[0x277D85000] & *a1) + 0x58), *((*MEMORY[0x277D85000] & *a1) + 0x60));
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = *&a1[*((*v2 & *a1) + 0x70)];
}

unint64_t sub_238651F58(uint64_t a1)
{
  result = sub_23865129C();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_238651FE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_238652164(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

id sub_2386523E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23865138C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_238652408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_238652484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_238652500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  sub_23875D6B0();
  __break(1u);
}

id sub_238652540(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000];
  *&v1[*((*MEMORY[0x277D85000] & *v1) + 0x70)] = 0;
  v6 = *((*v4 & *v1) + 0x68);
  v7 = *((v5 & v3) + 0x50);
  v8 = *((v5 & v3) + 0x58);
  v9 = *((v5 & v3) + 0x60);
  v10 = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable(0, v7, v8, v9);
  (*(*(v10 - 8) + 16))(&v1[v6], a1, v10);
  v12.receiver = v1;
  v12.super_class = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable.Coordinator(0, v7, v8, v9);
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_2386526A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable(255, a2, a3, a4);
  swift_getWitnessTable();
  sub_23875D720();
  sub_23875D710();
  v4 = sub_238651498();

  return v4;
}

uint64_t sub_238652724(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v15 - v5;
  v9 = *((v8 & v7) + 0x60);
  v10 = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable(0, *((v8 & v7) + 0x50), v3, v9);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  sub_2386513C8(&v15 - v12);
  (*(v4 + 16))(v6, &v13[*(v10 + 44)], v3);
  (*(v11 + 8))(v13, v10);
  (*(v9 + 40))(a1, v3, v9);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_238652958@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  started = type metadata accessor for SharingStartDate(0);
  MEMORY[0x28223BE20](started - 8);
  v37 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238758680();
  v31 = v7;
  v36 = *(v7 - 8);
  v8 = v36;
  MEMORY[0x28223BE20](v7);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v30 = &v29 - v11;
  v13 = type metadata accessor for SingleAccountStartDateSelectionView(0);
  v14 = *(v13 + 24);
  v15 = v13;
  v34 = v13;
  *(a3 + v14) = swift_getKeyPath(asc_23877AAF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath(byte_23877AA60);
  v40 = a1;
  sub_238658BD0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel, &unk_238767F78);
  sub_23875BE90();

  v16 = *(a1 + 16);
  v32 = *(v8 + 16);
  v32(v12, a1 + OBJC_IVAR____TtC12FinanceKitUI21AccountStartDateModel_account, v7);
  type metadata accessor for AccountStartDateModel(0);

  v35 = a3;
  sub_23875E420();
  v17 = v33;
  *(a3 + *(v15 + 28)) = v33;
  swift_getKeyPath(byte_23877AA10);
  v40 = v16;
  sub_238658BD0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
  v18 = v17;
  sub_23875BE90();

  v19 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  v20 = v37;
  sub_2386588C0(v16 + v19, v37, type metadata accessor for SharingStartDate);
  swift_getKeyPath(asc_23877A9B0);
  v39 = v16;
  sub_23875BE90();

  LOBYTE(v19) = *(v16 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);
  type metadata accessor for SharingStartDateModel(0);
  swift_allocObject();
  v21 = sub_2384CA358(v20, v19);
  v22 = v38;
  v24 = v30;
  v23 = v31;
  v32(v38, v30, v31);
  v25 = swift_allocObject();
  sub_23875BEC0();

  v26 = v36;
  (*(v36 + 8))(v24, v23);
  *(v25 + 16) = v21;
  result = (*(v26 + 32))(v25 + OBJC_IVAR____TtC12FinanceKitUI21AccountStartDateModel_account, v22, v23);
  v28 = (v35 + *(v34 + 20));
  *v28 = v25;
  v28[1] = 0;
  return result;
}

uint64_t sub_238652D94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_23877AA10);
  sub_238658BD0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
  sub_23875BE90();

  v4 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  return sub_2386588C0(v3 + v4, a2, type metadata accessor for SharingStartDate);
}

uint64_t sub_238652E70(uint64_t a1)
{
  started = type metadata accessor for SharingStartDate(0);
  MEMORY[0x28223BE20](started - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2386588C0(a1, v4, type metadata accessor for SharingStartDate);
  return sub_2384C9E84(v4);
}

void sub_238652F10(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_23877A9B0);
  sub_238658BD0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
  sub_23875BE90();

  *a2 = *(v3 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);
}

uint64_t sub_238652FE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  started = type metadata accessor for SingleAccountStartDateSelectionView(0);
  sub_23843981C(v1 + *(started + 24), v9, &unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C600();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2386531F0()
{
  v37 = sub_23875C600();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v2 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SingleAccountStartDateSelectionView(0);
  v35 = *(v0 + *(started + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  v5 = (v0 + *(started + 20));
  v7 = *v5;
  v6 = v5[1];
  v34 = v7;
  v40 = v7;
  v41 = v6;
  v33 = v6;
  v32[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124D0, &qword_23877A848);
  sub_23875E1B0();
  v8 = v39[0];
  swift_getKeyPath(byte_23877AA60);
  v40 = v8;
  v32[1] = sub_238658BD0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel, &unk_238767F78);
  sub_23875BE90();

  v9 = *(v8 + 16);

  swift_getKeyPath(asc_23877A9B0);
  v40 = v9;
  sub_238658BD0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
  sub_23875BE90();

  if (*(v9 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected))
  {
    v10 = 0xE300000000000000;
    v11 = 7105633;
  }

  else
  {
    swift_getKeyPath(byte_23877AA10);
    v40 = v9;
    sub_23875BE90();

    v12 = v9 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
    swift_beginAccess();
    v13 = (v12 + *(type metadata accessor for SharingStartDate(0) + 24));
    v11 = *v13;
    v10 = v13[1];
  }

  *(inited + 40) = v11;
  *(inited + 48) = v10;
  v14 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_238763300;
  v16 = *MEMORY[0x277D383D8];
  *(v15 + 32) = *MEMORY[0x277D383D8];
  v17 = sub_23875EA80();
  v18 = MEMORY[0x277D38390];
  *(v15 + 40) = v17;
  *(v15 + 48) = v19;
  v20 = *v18;
  *(v15 + 56) = *v18;
  *(v15 + 64) = 1701736292;
  v21 = *MEMORY[0x277D384B8];
  *(v15 + 72) = 0xE400000000000000;
  *(v15 + 80) = v21;
  *(v15 + 88) = 0xD000000000000024;
  *(v15 + 96) = 0x8000000238785040;
  v22 = v16;
  v23 = v20;
  v24 = v21;
  v25 = sub_23854B138(v15);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39[0] = v25;
  sub_2385C33E4(v14, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v39);

  v27 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238658BD0(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v28 = sub_23875E910();

  [v27 subject:v35 sendEvent:v28];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124E0, &unk_23877A860);
  sub_23875E400();
  v39[0] = v34;
  v39[1] = v33;
  sub_23875E1B0();
  v29 = v38;
  swift_getKeyPath(byte_23877AA60);
  v39[0] = v29;
  sub_23875BE90();

  v30 = *(v29 + 16);

  sub_2384A6A54(v30);

  sub_238652FE8(v2);
  sub_23875C5F0();
  return (*(v36 + 8))(v2, v37);
}

uint64_t sub_238653800@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  started = type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView(0);
  v3 = started - 8;
  MEMORY[0x28223BE20](started);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF125B0, &qword_23877AAD0);
  MEMORY[0x28223BE20](v47);
  v7 = &v46 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF125B8, &qword_23877AAD8);
  MEMORY[0x28223BE20](v48);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  v16 = (v1 + *(type metadata accessor for SingleAccountStartDateSelectionView(0) + 20));
  v18 = *v16;
  v17 = v16[1];
  *&v51 = v18;
  *(&v51 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124D0, &qword_23877A848);
  sub_23875E1B0();
  v19 = v50;
  swift_getKeyPath(byte_23877AA60);
  *&v51 = v19;
  sub_238658BD0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel, &unk_238767F78);
  sub_23875BE90();

  type metadata accessor for SharingStartDateModel(0);
  sub_238658BD0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
  sub_23875E420();
  v46 = *(v3 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C230, &qword_23877AAE0);
  v20 = type metadata accessor for SharingStartDate(0);
  v21 = *(*(v20 - 8) + 72);
  v22 = (*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_238763310;
  v24 = v23 + v22;
  if (qword_27DF08CE0 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v20, qword_27DF2F6A8);
  sub_2386588C0(v25, v24, type metadata accessor for SharingStartDate);
  if (qword_27DF08CE8 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v20, qword_27DF2F6C0);
  sub_2386588C0(v26, v24 + v21, type metadata accessor for SharingStartDate);
  if (qword_27DF08CF0 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v20, qword_27DF2F6D8);
  sub_2386588C0(v27, v24 + 2 * v21, type metadata accessor for SharingStartDate);
  if (qword_27DF08CF8 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v20, qword_27DF2F6F0);
  sub_2386588C0(v28, v24 + 3 * v21, type metadata accessor for SharingStartDate);
  *&v5[v46] = v23;
  sub_23875E4A0();
  sub_23875C9C0();
  sub_238658928(v5, v7, type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView);
  v29 = &v7[*(v47 + 36)];
  v30 = v56;
  *(v29 + 4) = v55;
  *(v29 + 5) = v30;
  *(v29 + 6) = v57;
  v31 = v52;
  *v29 = v51;
  *(v29 + 1) = v31;
  v32 = v54;
  *(v29 + 2) = v53;
  *(v29 + 3) = v32;
  v33 = sub_23875D790();
  sub_23875C3D0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_2384396E4(v7, v12, &qword_27DF125B0, &qword_23877AAD0);
  v42 = &v12[*(v48 + 36)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  sub_2384396E4(v12, v15, &qword_27DF125B8, &qword_23877AAD8);
  sub_23843981C(v15, v9, &qword_27DF125B8, &qword_23877AAD8);
  v43 = v49;
  sub_23843981C(v9, v49, &qword_27DF125B8, &qword_23877AAD8);
  v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF125C0, &qword_23877AAE8) + 48);
  *v44 = 0;
  *(v44 + 8) = 1;
  sub_238439884(v15, &qword_27DF125B8, &qword_23877AAD8);
  return sub_238439884(v9, &qword_27DF125B8, &qword_23877AAD8);
}

uint64_t SingleAccountStartDateSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  started = type metadata accessor for SingleAccountStartDateSelectionView(0);
  v3 = started - 8;
  v48 = *(started - 8);
  v47 = *(v48 + 64);
  MEMORY[0x28223BE20](started);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238758680();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124B0, &qword_23877A830);
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124B8, &qword_23877A838);
  v13 = *(v12 - 8);
  v43 = v12;
  v44 = v13;
  MEMORY[0x28223BE20](v12);
  v41 = &v41 - v14;
  v50 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124C0, &qword_23877A840);
  sub_23843A3E8(&qword_27DF124C8, &qword_27DF124C0, &qword_23877A840, MEMORY[0x277CDD828]);
  sub_23875C8F0();
  v15 = (v1 + *(v3 + 28));
  v16 = v1;
  v18 = *v15;
  v17 = v15[1];
  v51 = v18;
  v52 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124D0, &qword_23877A848);
  sub_23875E1B0();
  (*(v6 + 16))(v8, v55 + OBJC_IVAR____TtC12FinanceKitUI21AccountStartDateModel_account, v5);

  v19 = sub_2387585B0();
  v21 = v20;
  (*(v6 + 8))(v8, v5);
  v51 = v19;
  v52 = v21;
  v22 = sub_23843A3E8(&qword_27DF124D8, &qword_27DF124B0, &qword_23877A830, MEMORY[0x277CDDA18]);
  v25 = sub_2384397A8(v22, v23, v24);
  v26 = MEMORY[0x277D837D0];
  v27 = v41;
  sub_23875DC70();

  (*(v42 + 8))(v11, v9);
  v49 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9C8, &unk_23877A850);
  v51 = v9;
  v52 = v26;
  v53 = v22;
  v54 = v25;
  swift_getOpaqueTypeConformance2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CA00, &unk_238771F80);
  v29 = sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80, MEMORY[0x277CDDB60]);
  v51 = v28;
  v52 = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v46;
  v31 = v43;
  sub_23875DEF0();
  (*(v44 + 8))(v27, v31);
  v32 = v16;
  v33 = v16;
  v34 = v45;
  sub_2386588C0(v33, v45, type metadata accessor for SingleAccountStartDateSelectionView);
  v35 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v36 = swift_allocObject();
  sub_238658928(v34, v36 + v35, type metadata accessor for SingleAccountStartDateSelectionView);
  v37 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124E8, &qword_23877A870) + 36));
  *v37 = 0;
  v37[1] = 0;
  v37[2] = sub_2386553E8;
  v37[3] = v36;
  sub_2386588C0(v32, v34, type metadata accessor for SingleAccountStartDateSelectionView);
  v38 = swift_allocObject();
  sub_238658928(v34, v38 + v35, type metadata accessor for SingleAccountStartDateSelectionView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124F0, &qword_23877A878);
  v40 = (v30 + *(result + 36));
  *v40 = sub_2386558CC;
  v40[1] = v38;
  v40[2] = 0;
  v40[3] = 0;
  return result;
}

double sub_238654474@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D760();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12568, &qword_23877AA90);
  sub_238654548(a1, &a2[*(v4 + 44)]);

  return result;
}

double sub_238654548@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12570, &qword_23877AA98);
  v32 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v34 = &v28 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12578, &qword_23877AAA0);
  MEMORY[0x28223BE20](v30);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12580, &qword_23877AAA8);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  sub_23875ED50();
  v33 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v12 = sub_23875D020();
  *(v12 + 1) = 0;
  v12[16] = 1;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12588, &qword_23877AAB0);
  sub_238653800(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12590, &qword_23877AAB8);
  sub_23875C9B0();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2387632F0;
  sub_23875C9A0();
  v14 = sub_23843A3E8(&qword_27DF12598, &qword_27DF12578, &qword_23877AAA0, MEMORY[0x277CE14C0]);
  v29 = v12;
  v15 = v30;
  MEMORY[0x23EE62910](2, v13, v30, v14);

  sub_238439884(v7, &qword_27DF12578, &qword_23877AAA0);

  v16 = sub_23875D760();
  MEMORY[0x28223BE20](v16);
  *(&v28 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF125A0, &qword_23877AAC0);
  v38 = v15;
  v39 = v14;
  swift_getOpaqueTypeConformance2();
  v17 = v34;
  sub_23875C410();
  v18 = v29;
  v19 = v31;
  sub_23843981C(v29, v31, &qword_27DF12580, &qword_23877AAA8);
  v20 = v32;
  v21 = *(v32 + 16);
  v22 = v35;
  v23 = v37;
  v21(v35, v17, v37);
  v24 = v36;
  sub_23843981C(v19, v36, &qword_27DF12580, &qword_23877AAA8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF125A8, &qword_23877AAC8);
  v21((v24 + *(v25 + 48)), v22, v23);
  v26 = *(v20 + 8);
  v26(v17, v23);
  sub_238439884(v18, &qword_27DF12580, &qword_23877AAA8);
  v26(v22, v23);
  sub_238439884(v19, &qword_27DF12580, &qword_23877AAA8);

  return result;
}

double sub_238654AA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12578, &qword_23877AAA0);
  MEMORY[0x28223BE20](v0);
  v2 = &v6 - v1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238653800(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12590, &qword_23877AAB8);
  sub_23875C9B0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2387632F0;
  sub_23875C9A0();
  v4 = sub_23843A3E8(&qword_27DF12598, &qword_27DF12578, &qword_23877AAA0, MEMORY[0x277CE14C0]);
  MEMORY[0x23EE62910](0, v3, v0, v4);

  sub_238439884(v2, &qword_27DF12578, &qword_23877AAA0);

  return result;
}

double sub_238654CA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[1] = a2;
  v3 = sub_23875D2A0();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA00, &unk_238771F80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_23875D260();
  MEMORY[0x28223BE20](v8);
  v11[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
  sub_23875C990();
  v9 = sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80, MEMORY[0x277CDDB60]);
  MEMORY[0x23EE61E80](v7, v4, v9);
  (*(v5 + 8))(v7, v4);

  return result;
}

double sub_238654F24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  started = type metadata accessor for SingleAccountStartDateSelectionView(0);
  v4 = *(started - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](started - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  v11 = sub_23875EA80();
  v13 = v12;

  sub_2386588C0(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleAccountStartDateSelectionView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v16 = sub_238658928(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SingleAccountStartDateSelectionView);
  v19[0] = v11;
  v19[1] = v13;
  MEMORY[0x28223BE20](v16);
  v18[-4] = v19;
  v18[-3] = 0x72616D6B63656863;
  v18[-2] = 0xE90000000000006BLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_23875E200();

  return result;
}

double sub_238655258(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + *(type metadata accessor for SingleAccountStartDateSelectionView(0) + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124D0, &qword_23877A848);
  sub_23875E1B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124E0, &unk_23877A860);
  sub_23875E400();
  swift_getKeyPath(byte_23877AA60);
  sub_238658BD0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel, &unk_238767F78);
  sub_23875BE90();

  v2 = *(v4 + 16);

  sub_2384A6A54(v2);

  return result;
}

double sub_238655400(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124E0, &unk_23877A860);
  sub_23875E400();
  sub_238655974(v11);

  v2 = *(a1 + *(type metadata accessor for SingleAccountStartDateSelectionView(0) + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124D0, &qword_23877A848);
  sub_23875E1B0();
  swift_getKeyPath(byte_23877AA60);
  sub_238658BD0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel, &unk_238767F78);
  sub_23875BE90();

  v4 = *(v12 + 16);

  swift_getKeyPath(asc_23877A9B0);
  sub_238658BD0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
  sub_23875BE90();

  if (*(v4 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected))
  {
    v5 = 0xE300000000000000;
    v6 = 7105633;
  }

  else
  {
    swift_getKeyPath(byte_23877AA10);
    sub_23875BE90();

    v7 = v4 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
    swift_beginAccess();
    v8 = (v7 + *(type metadata accessor for SharingStartDate(0) + 24));
    v6 = *v8;
    v5 = v8[1];
  }

  *(inited + 40) = v6;
  *(inited + 48) = v5;
  v9 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  sub_23844C218(v2, 25, v9);

  return result;
}

uint64_t objectdestroyTm_25()
{
  started = type metadata accessor for SingleAccountStartDateSelectionView(0);
  v2 = *(*(started - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(started - 8) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124E0, &unk_23877A860);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = *(started + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23875C600();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2386558E4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SingleAccountStartDateSelectionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_238655974(uint64_t a1)
{
  v1 = sub_23875A9F0();
  v52 = *(v1 - 8);
  v53 = v1;
  MEMORY[0x28223BE20](v1);
  v51 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23875C1E0();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v54 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238758A00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  sub_238758580();
  (*(v6 + 104))(v11, *MEMORY[0x277CC7160], v5);
  sub_238658BD0(&qword_27DF0DE00, MEMORY[0x277CC7180], MEMORY[0x277CC7190]);
  v15 = sub_23875E9E0();
  v16 = *(v6 + 8);
  v16(v11, v5);
  v16(v14, v5);
  if ((v15 & 1) == 0)
  {
    sub_238758580();
    v17 = (*(v6 + 88))(v8, v5);
    if (v17 == *MEMORY[0x277CC7158])
    {
      v18 = 53;
LABEL_10:
      v19 = *(v57 + *(type metadata accessor for SingleAccountStartDateSelectionView(0) + 28));
      v20 = sub_23854B138(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_238763300;
      v22 = *MEMORY[0x277D383D8];
      *(inited + 32) = *MEMORY[0x277D383D8];
      *(inited + 40) = sub_23875EA80();
      *(inited + 48) = v23;
      v24 = *MEMORY[0x277D38390];
      *(inited + 56) = *MEMORY[0x277D38390];
      *(inited + 64) = sub_23844B4DC(v18);
      *(inited + 72) = v25;
      v26 = *MEMORY[0x277D384B8];
      *(inited + 80) = *MEMORY[0x277D384B8];
      *(inited + 88) = 0xD000000000000016;
      *(inited + 96) = 0x8000000238785020;
      v27 = v22;
      v28 = v24;
      v29 = v26;
      v30 = sub_23854B138(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
      swift_arrayDestroy();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58[0] = v30;
      sub_2385C33E4(v20, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v58);

      v32 = objc_opt_self();
      type metadata accessor for PKAnalyticsKey(0);
      sub_238658BD0(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
      v33 = sub_23875E910();

      [v32 subject:v19 sendEvent:v33];

      return;
    }

    if (v17 == *MEMORY[0x277CC7170])
    {
      v18 = 50;
      goto LABEL_10;
    }

    if (v17 == *MEMORY[0x277CC7178])
    {
      v18 = 51;
      goto LABEL_10;
    }

    if (v17 == *MEMORY[0x277CC7168])
    {
      v18 = 52;
      goto LABEL_10;
    }

    v16(v8, v5);
    v34 = v54;
    sub_23875C120();

    v35 = sub_23875C1B0();
    v36 = sub_23875EFE0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58[0] = v57;
      *v37 = 33554946;
      v50 = v36;
      sub_238758580();
      v38 = sub_2387589F0();
      v49 = v35;
      v39 = v38;
      v16(v14, v5);
      *(v37 + 4) = v39;

      *(v37 + 6) = 2080;
      v40 = v51;
      sub_238758530();
      sub_238658BD0(&qword_27DF0E960, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
      v41 = v53;
      v42 = sub_23875F600();
      v44 = v43;
      (*(v52 + 8))(v40, v41);
      v45 = sub_2384615AC(v42, v44, v58);

      *(v37 + 8) = v45;
      v46 = v49;
      _os_log_impl(&dword_2383F8000, v49, v50, "    Trying to log event for unsupported account origin     %hd for account     %s", v37, 0x10u);
      v47 = v57;
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x23EE64DF0](v47, -1, -1);
      MEMORY[0x23EE64DF0](v37, -1, -1);
    }

    else
    {
    }

    (*(v55 + 8))(v34, v56);
  }
}

uint64_t sub_2386560A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_23875CFD0();
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  MEMORY[0x28223BE20](v3);
  v45 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875C850();
  v7 = *(v6 - 8);
  v41 = v6;
  v42 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C078, &qword_238769E28);
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C080, &qword_238769E30);
  v14 = *(v13 - 8);
  v43 = v13;
  v44 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = v39 - v15;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C088, &qword_238769E38);
  MEMORY[0x28223BE20](v46);
  v18 = v39 - v17;
  v51 = a1;
  v50 = a1;
  v39[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C090, &qword_238769E40);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C098, &qword_238769E48);
  v20 = sub_23875CDF0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C0A0, &qword_238769E50);
  v22 = sub_23843A3E8(&qword_27DF0C0A8, &qword_27DF0C0A0, &qword_238769E50, MEMORY[0x277CDF038]);
  v52 = v21;
  v53 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v19;
  v53 = v20;
  v54 = OpaqueTypeConformance2;
  v55 = MEMORY[0x277CDDDA0];
  swift_getOpaqueTypeConformance2();
  sub_23875D9D0();
  sub_23875C840();
  v24 = sub_23843A3E8(&qword_27DF0C0B0, &qword_27DF0C078, &qword_238769E28, MEMORY[0x277CDE5B0]);
  v25 = sub_238658BD0(&qword_27DF0C0B8, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
  v26 = v41;
  sub_23875DF60();
  (*(v42 + 8))(v9, v26);
  (*(v40 + 8))(v12, v10);
  v27 = v45;
  sub_23875CFC0();
  v52 = v10;
  v53 = v26;
  v54 = v24;
  v55 = v25;
  swift_getOpaqueTypeConformance2();
  sub_238658BD0(&qword_27DF0C0C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v28 = v43;
  v29 = v47;
  sub_23875DB30();
  (*(v48 + 8))(v27, v29);
  (*(v44 + 8))(v16, v28);
  KeyPath = swift_getKeyPath(byte_23877A9D8);
  v31 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C0C8, &qword_238769E88) + 36)];
  *v31 = KeyPath;
  v31[8] = 2;
  LODWORD(KeyPath) = sub_23875D420();
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C0D0, &qword_238769E90) + 36)] = KeyPath;
  LOBYTE(KeyPath) = sub_23875D7D0();
  sub_23875C3D0();
  v32 = &v18[*(v46 + 36)];
  *v32 = KeyPath;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  sub_2384D2708();
  v37 = v49;
  sub_23875DE70();
  sub_238439884(v18, &qword_27DF0C088, &qword_238769E38);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C100, &qword_238769E98);
  *(v37 + *(result + 36)) = 0;
  return result;
}

double sub_2386566DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33[1] = a1;
  v37 = a2;
  v2 = sub_23875CDF0();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C108, &qword_238769EC8);
  MEMORY[0x28223BE20](v4 - 8);
  v33[3] = v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C0A0, &qword_238769E50);
  v33[0] = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C098, &qword_238769E48);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v33 - v14;
  sub_23875ED50();
  v33[2] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v16 = qword_2814F1B90;
  v17 = sub_23875EA50();
  v18 = sub_23875EA50();
  v19 = sub_23875EA50();
  v20 = [v16 localizedStringForKey:v17 value:v18 table:v19];

  v21 = sub_23875EA80();
  v23 = v22;

  v40 = v21;
  v41 = v23;
  sub_23875E410();
  swift_getKeyPath(byte_23877AA10);
  sub_23875E430();

  v24 = (*(v7 + 8))(v9, v6);
  MEMORY[0x28223BE20](v24);
  type metadata accessor for SharingStartDate(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C110, qword_238769ED0);
  sub_238658BD0(&qword_27DF0C118, type metadata accessor for SharingStartDate, &unk_238769C8C);
  v32 = sub_2384D2AC0();
  sub_2384397A8(v32, v25, v26);
  sub_23875E280();
  v27 = sub_23843A3E8(&qword_27DF0C0A8, &qword_27DF0C0A0, &qword_238769E50, MEMORY[0x277CDF038]);
  sub_23875DBB0();
  (*(v33[0] + 8))(v12, v10);
  v28 = v36;
  sub_23875CDE0();
  v40 = v10;
  v41 = v27;
  swift_getOpaqueTypeConformance2();
  v29 = v35;
  v30 = v39;
  sub_23875DB80();
  (*(v38 + 8))(v28, v30);
  (*(v34 + 8))(v15, v29);

  return result;
}

double sub_238656CD0(uint64_t a1)
{
  started = type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView(0);
  v3 = *(started - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](started);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[1] = *(a1 + *(started + 20));
  swift_getKeyPath(byte_23877AA48);
  sub_2386588C0(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_238658928(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C138, &qword_238769F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C130, &unk_238779BB0);
  sub_23843A3E8(&qword_27DF0C140, &qword_27DF0C138, &qword_238769F00, MEMORY[0x277D83980]);
  sub_238658BD0(&qword_27DF0C118, type metadata accessor for SharingStartDate, &unk_238769C8C);
  sub_23843A3E8(&qword_27DF0C128, &qword_27DF0C130, &unk_238779BB0, MEMORY[0x277CE1138]);
  sub_23875E370();

  return result;
}

__n128 sub_238656F88@<Q0>(uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875CE60();
  sub_238657064(&v8);

  v5 = v9;
  v6 = v10;
  result = v8;
  *a3 = v4;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = result;
  *(a3 + 40) = v5;
  *(a3 + 48) = v6;
  return result;
}

void sub_238657064(uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SharingStartDate(0);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v3 = qword_2814F1B90;
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  sub_23875EA80();
  sub_2384397A8(v8, v9, v10);
  v11 = sub_23875DAA0();
  v13 = v12;
  LOBYTE(v5) = v14;
  v16 = v15;

  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v16;
}

void sub_23865721C(uint64_t a1@<X8>)
{
  started = type metadata accessor for SharingStartDate(0);
  MEMORY[0x28223BE20](started);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  sub_23875E400();
  v5 = v32;
  swift_getKeyPath(byte_23877AA10);
  v32 = v5;
  sub_238658BD0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
  sub_23875BE90();

  v6 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  sub_2386588C0(v5 + v6, v4, type metadata accessor for SharingStartDate);

  sub_238658AEC(v4);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();

  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  v12 = sub_23875EA80();
  v14 = v13;

  v30 = v12;
  v31 = v14;
  sub_2384397A8(v15, v16, v17);
  v18 = sub_23875DAA0();
  v20 = v19;
  LOBYTE(v11) = v21;
  LODWORD(v30) = sub_23875D420();
  v22 = sub_23875DA20();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_2384397FC(v18, v20, v11 & 1);

  *a1 = v22;
  *(a1 + 8) = v24;
  *(a1 + 16) = v26 & 1;
  *(a1 + 24) = v28;
}

double sub_238657564()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875C4E0();

  return result;
}

uint64_t sub_238657608@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = sub_23875D310();
  v3 = *(v2 - 8);
  v36 = v2;
  v37 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12538, &qword_23877A980);
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12540, &qword_23877A988);
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12548, &qword_23877A990);
  v12 = *(v11 - 8);
  v32 = v11;
  v33 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12550, &qword_23877A998);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - v17;
  v39 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C020, &qword_23877A9A0);
  sub_23843A3E8(&qword_27DF0C018, &qword_27DF0C020, &qword_23877A9A0, MEMORY[0x277CE14C0]);
  sub_23875D9C0();
  sub_23875D300();
  v19 = sub_23843A3E8(&qword_27DF12558, &qword_27DF12538, &qword_23877A980, MEMORY[0x277CDE5A0]);
  v20 = MEMORY[0x277CDE0D0];
  v21 = v36;
  sub_23875DF50();
  (*(v37 + 8))(v5, v21);
  (*(v30 + 8))(v8, v6);
  v40 = v6;
  v41 = v21;
  v42 = v19;
  v43 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v29;
  sub_23875DB70();
  (*(v31 + 8))(v10, v23);
  v40 = v23;
  v41 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v32;
  sub_23875DE10();
  (*(v33 + 8))(v14, v25);
  v40 = v25;
  v41 = v24;
  swift_getOpaqueTypeConformance2();
  v26 = v38;
  v27 = v34;
  sub_23875DD80();
  (*(v35 + 8))(v18, v27);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12560, &qword_23877A9A8);
  *(v26 + *(result + 36)) = 256;
  return result;
}

double sub_238657B1C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C048, &qword_238769DD0);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C050, &qword_238769DD8);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v32 - v8;
  started = type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView(0);
  v10 = *(started - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](started - 8);
  sub_23875ED50();
  v43 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  sub_23875E400();
  v12 = v46;
  swift_getKeyPath(asc_23877A9B0);
  v46 = v12;
  v34 = sub_238658BD0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
  sub_23875BE90();

  v38 = *(v12 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);

  v36 = type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView;
  sub_2386588C0(a1, &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView);
  v13 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v39 = swift_allocObject();
  sub_238658928(v13, v39 + v14, type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView);
  sub_23875E400();
  v15 = v46;
  swift_getKeyPath(asc_23877A9B0);
  v46 = v15;
  sub_23875BE90();

  v37 = *(v15 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);

  sub_2386588C0(a1, v13, v36);
  v16 = swift_allocObject();
  sub_238658928(v13, v16 + v14, type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView);
  sub_23875E400();
  v17 = v46;
  swift_getKeyPath(asc_23877A9B0);
  v46 = v17;
  sub_23875BE90();

  v18 = *(v17 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);

  if (v18)
  {
    v19 = v44;
    (*(v41 + 56))(v44, 1, 1, v42);
  }

  else
  {
    v20 = v33;
    sub_2386560A4(a1, v33);
    *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C058, &qword_238769E08) + 36)) = 0;
    v19 = v44;
    if (qword_27DF08D80 != -1)
    {
      swift_once();
    }

    v21 = qword_27DF2F920;
    v46 = qword_27DF2F920;

    v22 = sub_23875E2D0();
    *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C060, &qword_238769E10) + 36)) = v22;
    LOBYTE(v22) = sub_23875D780();
    v23 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C068, &qword_238769E18) + 36);
    *v23 = v21;
    *(v23 + 8) = v22;
    v24 = v42;
    v25 = (v20 + *(v42 + 36));
    *v25 = sub_238657564;
    v25[1] = 0;
    sub_238404F7C(v20, v19);
    (*(v41 + 56))(v19, 0, 1, v24);
  }

  v26 = v37 ^ 1;
  v27 = v45;
  sub_23843981C(v19, v45, &qword_27DF0C050, &qword_238769DD8);
  v29 = v39;
  v28 = v40;
  *v40 = 0xD000000000000025;
  v28[1] = 0x80000002387887B0;
  *(v28 + 16) = v38;
  v28[3] = sub_238658E5C;
  v28[4] = v29;
  v28[5] = 0xD000000000000029;
  v28[6] = 0x80000002387887E0;
  *(v28 + 56) = v26;
  v28[8] = sub_238658A84;
  v28[9] = v16;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C070, &qword_238769E20);
  sub_23843981C(v27, v28 + *(v30 + 64), &qword_27DF0C050, &qword_238769DD8);

  sub_238439884(v19, &qword_27DF0C050, &qword_238769DD8);
  sub_238439884(v27, &qword_27DF0C050, &qword_238769DD8);

  return result;
}

double sub_2386581E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  sub_23875E400();
  swift_getKeyPath(asc_23877A9B0);
  sub_238658BD0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);
  sub_23875BE90();

  swift_getKeyPath(asc_23877A9B0);
  sub_23875BEB0();

  *(v1 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) = (*(v1 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) & 1) == 0;
  swift_getKeyPath(asc_23877A9B0);
  sub_23875BEA0();

  return result;
}

void sub_238658354(uint64_t a1)
{
  sub_238658838(319, &qword_27DF12508, type metadata accessor for AccountStartDateModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_238658838(319, &qword_27DF12510, type metadata accessor for AccountStartDateModel, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_238658838(319, &qword_27DF0DA10, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PKAnalyticsSubject(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_238658498()
{
  result = qword_27DF12518;
  if (!qword_27DF12518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF124F0, &qword_23877A878);
    sub_238658524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12518);
  }

  return result;
}

unint64_t sub_238658524()
{
  result = qword_27DF12520;
  if (!qword_27DF12520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF124E8, &qword_23877A870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF124B8, &qword_23877A838);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C9C8, &unk_23877A850);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF124B0, &qword_23877A830);
    v1 = sub_23843A3E8(&qword_27DF124D8, &qword_27DF124B0, &qword_23877A830, MEMORY[0x277CDDA18]);
    sub_2384397A8(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CA00, &unk_238771F80);
    sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80, MEMORY[0x277CDDB60]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12520);
  }

  return result;
}

void sub_238658754(uint64_t a1)
{
  sub_238658838(319, &qword_27DF0BFA0, type metadata accessor for SharingStartDateModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_238658838(319, &qword_27DF0BFA8, type metadata accessor for SharingStartDate, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238658838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2386588C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238658928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_22Tm_0()
{
  v1 = *(type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238658AEC(uint64_t a1)
{
  started = type metadata accessor for SharingStartDate(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

double sub_238658B50@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView(0);

  *&result = sub_238656F88(a2).n128_u64[0];
  return result;
}

uint64_t sub_238658BD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_238658C84()
{
  result = qword_27DF125C8;
  if (!qword_27DF125C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12560, &qword_23877A9A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12550, &qword_23877A998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12548, &qword_23877A990);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12540, &qword_23877A988);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12538, &qword_23877A980);
    sub_23875D310();
    sub_23843A3E8(&qword_27DF12558, &qword_27DF12538, &qword_23877A980, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF125C8);
  }

  return result;
}

uint64_t BankConnectOfflineLabPrivacyConsentViewModel.__allocating_init(flowType:bankConnectService:completionHandler:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  LOBYTE(a1) = *a1;
  sub_23875C290();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  return v8;
}

uint64_t BankConnectOfflineLabPrivacyConsentView.init(viewModel:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = swift_getKeyPath(byte_23877AB20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  v5 = *(v4 + 20);
  v6 = *MEMORY[0x277CDFA10];
  v7 = sub_23875C880();
  result = (*(*(v7 - 8) + 104))(&a2[v5], v6, v7);
  v9 = &a2[*(v4 + 24)];
  *v9 = sub_238447830;
  *(v9 + 1) = a1;
  v9[16] = 0;
  return result;
}

uint64_t sub_238658FCC()
{
  swift_getKeyPath(aH_11);
  swift_getKeyPath(aH_12);
  sub_23875C2D0();

  return v1;
}

uint64_t BankConnectOfflineLabPrivacyConsentViewModel.init(flowType:bankConnectService:completionHandler:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15[-v11];
  LOBYTE(a1) = *a1;
  v13 = OBJC_IVAR____TtC12FinanceKitUI44BankConnectOfflineLabPrivacyConsentViewModel__isLoading;
  v15[15] = 0;
  sub_23875C290();
  (*(v10 + 32))(v4 + v13, v12, v9);
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t sub_2386591B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23875C1E0();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_23875ED50();
  v4[6] = sub_23875ED40();
  v7 = sub_23875ECE0();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_2386592A8, v7, v6);
}

uint64_t sub_2386592A8()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_238659344;

  return MEMORY[0x282117DE0](1);
}

uint64_t sub_238659344()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_238659550;
  }

  else
  {
    v5 = sub_238659480;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_238659480()
{

  (*(*(v0 + 16) + 32))(v1);
  swift_getKeyPath(aH_11);
  swift_getKeyPath(aH_12);
  *(v0 + 88) = 0;

  sub_23875C2E0();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238659550()
{
  v1 = *(v0 + 80);

  sub_23875C170();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2383F8000, v3, v4, "Could not complete offline lab sharing consent with error %@", v7, 0xCu);
    sub_238439884(v8, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v8, -1, -1);
    MEMORY[0x23EE64DF0](v7, -1, -1);
  }

  else
  {
  }

  v11 = (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  (*(*(v0 + 16) + 32))(v11);
  swift_getKeyPath(aH_11);
  swift_getKeyPath(aH_12);
  *(v0 + 88) = 0;

  sub_23875C2E0();

  v12 = *(v0 + 8);

  return v12();
}

double sub_238659764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a1;
  v8 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_23875A820();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(aH_11, v14);
  swift_getKeyPath(aH_12);
  sub_23875C2D0();

  if ((v50 & 1) == 0)
  {
    v45 = v11;
    v47 = a3;
    v48 = a4;
    swift_getKeyPath(aH_11);
    swift_getKeyPath(aH_12);
    LOBYTE(v50) = 1;

    sub_23875C2E0();
    v18 = MEMORY[0x277D38550];
    if (!*(v4 + 16))
    {
      v18 = MEMORY[0x277D38560];
    }

    v46 = *v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
    v19 = a2;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2387632F0;
    *(inited + 32) = sub_23875EA50();
    sub_23875A7E0();
    v21 = sub_23867B330(v16);
    v23 = v22;
    (*(v13 + 8))(v16, v12);
    *(inited + 40) = v21;
    *(inited + 48) = v23;
    v24 = sub_23854B138(inited);
    swift_setDeallocating();
    sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_238763300;
    v26 = *MEMORY[0x277D383D8];
    *(v25 + 32) = *MEMORY[0x277D383D8];
    *(v25 + 40) = sub_23875EA80();
    *(v25 + 48) = v27;
    v28 = *MEMORY[0x277D38390];
    v29 = v49;
    *(v25 + 56) = *MEMORY[0x277D38390];
    *(v25 + 64) = v29;
    v30 = *MEMORY[0x277D384B8];
    *(v25 + 72) = v19;
    *(v25 + 80) = v30;
    strcpy((v25 + 88), "shareWithApple");
    *(v25 + 103) = -18;
    v31 = v26;
    v32 = v28;
    v33 = v30;
    v34 = sub_23854B138(v25);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v34;
    sub_2385C33E4(v24, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v50);

    v36 = objc_opt_self();
    type metadata accessor for PKAnalyticsKey(0);
    sub_23865D4D8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
    v37 = sub_23875E910();

    v38 = v36;
    v39 = v46;
    [v38 subject:v46 sendEvent:v37];

    v40 = sub_23875ED80();
    v41 = v45;
    (*(*(v40 - 8) + 56))(v45, 1, 1, v40);
    sub_23875ED50();

    v42 = sub_23875ED40();
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D85700];
    v43[2] = v42;
    v43[3] = v44;
    v43[4] = v8;
    sub_2386C3BA4(0, 0, v41, v48, v43);
  }

  return result;
}

uint64_t sub_238659C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23875C1E0();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_23875ED50();
  v4[6] = sub_23875ED40();
  v7 = sub_23875ECE0();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_238659D70, v7, v6);
}

uint64_t sub_238659D70()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_238659E0C;

  return MEMORY[0x282117DE0](0);
}

uint64_t sub_238659E0C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_23865DBFC;
  }

  else
  {
    v5 = sub_23865DC04;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

double sub_238659F48()
{
  v1 = sub_23875A820();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D38550];
  if (!*(v0 + 16))
  {
    v5 = MEMORY[0x277D38560];
  }

  v6 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v8 = sub_23867B330(v4);
  v10 = v9;
  (*(v2 + 8))(v4, v1);
  *(inited + 40) = v8;
  *(inited + 48) = v10;
  v11 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  sub_23844C218(v6, 16, v11);

  return result;
}

uint64_t BankConnectOfflineLabPrivacyConsentViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC12FinanceKitUI44BankConnectOfflineLabPrivacyConsentViewModel__isLoading;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t BankConnectOfflineLabPrivacyConsentViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12FinanceKitUI44BankConnectOfflineLabPrivacyConsentViewModel__isLoading;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_23865A224@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel(0);
  result = sub_23875C260();
  *a2 = result;
  return result;
}

uint64_t sub_23865A264@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875CDB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23843981C(v2, &v14 - v9, &qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C880();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t BankConnectOfflineLabPrivacyConsentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  *a1 = sub_23875D020();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF125D8, &qword_23877AB50);
  sub_23865A5A8(a1 + *(v6 + 44));
  sub_23865C220(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_23865C284(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF125E0, &qword_23877AB58);
  v10 = (a1 + *(result + 36));
  *v10 = sub_23865C2E8;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

uint64_t sub_23865A5A8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12630, &qword_23877AD18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - v4;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_23875D760();
  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12638, &qword_23877AD20);
  sub_23865D89C();
  v7 = sub_23875C410();
  MEMORY[0x28223BE20](v7);
  sub_23875D020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12658, &qword_23877AD30);
  sub_23843A3E8(&qword_27DF12660, &qword_27DF12630, &qword_23877AD18, MEMORY[0x277CDD6E0]);
  sub_23865D95C();
  sub_23875DBA0();
  (*(v3 + 8))(v5, v2);
  v8 = sub_23875C910();
  v9 = sub_23875D7A0();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126A0, &qword_23877AD50);
  v11 = a1 + *(result + 36);
  *v11 = v8;
  *(v11 + 8) = v9;
  return result;
}

uint64_t sub_23865A868@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0x4034000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126E0, &qword_23877ADD0);
  sub_23865A994(a1, a2 + *(v4 + 44));
  v5 = sub_23875D790();
  sub_23875C3D0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12638, &qword_23877AD20);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

void sub_23865A994(char *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v118 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12670, &qword_23877AD38);
  v112 = *(v2 - 8);
  v113 = v2;
  MEMORY[0x28223BE20](v2);
  v104 = &v100 - v3;
  v4 = sub_23875C880();
  v110 = *(v4 - 8);
  v111 = v4;
  MEMORY[0x28223BE20](v4);
  v105 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126E8, &unk_23877ADD8);
  MEMORY[0x28223BE20](v6 - 8);
  v116 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v122 = &v100 - v9;
  v10 = sub_23875CE20();
  v102 = *(v10 - 8);
  v103 = v10;
  MEMORY[0x28223BE20](v10);
  v101 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v100 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E80, &unk_23876A2C0);
  v106 = *(v15 - 8);
  v107 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v100 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126F0, &qword_23877ADE8);
  MEMORY[0x28223BE20](v18 - 8);
  v115 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v120 = &v100 - v21;
  v22 = sub_23875E0E0();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126F8, &qword_23877ADF0);
  MEMORY[0x28223BE20](v26);
  v121 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v100 - v29;
  sub_23875ED50();
  v114 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875E0D0();
  (*(v23 + 104))(v25, *MEMORY[0x277CE0FE0], v22);
  v31 = sub_23875E150();

  (*(v23 + 8))(v25, v22);
  sub_23875E4A0();
  sub_23875C5C0();
  v32 = 1;
  LOBYTE(v128) = 1;
  *&v148[6] = v153[4];
  *&v148[22] = v153[5];
  *&v148[38] = v153[6];
  v33 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12700, &qword_23877ADF8) + 36)];
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12708, &qword_23877AE00) + 28);
  sub_23875D050();
  v35 = sub_23875D060();
  (*(*(v35 - 8) + 56))(&v33[v34], 0, 1, v35);
  *v33 = swift_getKeyPath(asc_23877AE08);
  *v30 = v31;
  *(v30 + 1) = 0;
  *(v30 + 8) = 1;
  *(v30 + 18) = *v148;
  *(v30 + 34) = *&v148[16];
  *(v30 + 50) = *&v148[32];
  *(v30 + 8) = *&v148[46];
  v36 = sub_23875DFC0();
  *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12710, &qword_23877AE38) + 36)] = v36;
  LOBYTE(v36) = sub_23875D770();
  sub_23875C3D0();
  v37 = &v30[*(v26 + 36)];
  *v37 = v36;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  v109 = sub_23875D030();
  v146 = 0;
  sub_23865B8F0(&v128);
  v149 = v128;
  v150 = *v129;
  v151 = *&v129[16];
  v152 = *&v129[32];
  v153[0] = v128;
  v153[1] = *v129;
  v153[2] = *&v129[16];
  v153[3] = *&v129[32];
  sub_23843981C(&v149, &v123, &qword_27DF0B360, &qword_23877AE40);
  sub_238439884(v153, &qword_27DF0B360, &qword_23877AE40);
  *&v145[7] = v149;
  *&v145[23] = v150;
  *&v145[39] = v151;
  *&v145[55] = v152;
  v108 = v146;
  sub_23875E4B0();
  sub_23875C9C0();
  v119 = sub_23875D770();
  sub_23875C3D0();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v147 = 0;
  type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel(0);
  sub_23865D4D8(&qword_27DF12610, type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel, &protocol conformance descriptor for BankConnectOfflineLabPrivacyConsentViewModel);
  sub_23875C490();
  swift_getKeyPath(aH_11);
  swift_getKeyPath(aH_12);
  sub_23875C2D0();

  v50 = v120;
  v51 = v107;
  if (v128 == 1)
  {
    sub_23875C530();
    sub_23875CE10();
    v52 = v102;
    v53 = v103;
    (*(v102 + 16))(v101, v14, v103);
    sub_23865D4D8(&unk_27DF0C340, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
    v54 = sub_23875C5E0();
    (*(v52 + 8))(v14, v53);
    *&v17[*(v51 + 36)] = v54;
    sub_2384396E4(v17, v50, &qword_27DF12E80, &unk_23876A2C0);
    v32 = 0;
  }

  v55 = 1;
  (*(v106 + 56))(v50, v32, 1, v51);
  v56 = v105;
  sub_23865A264(v105);
  sub_23865D4D8(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v57 = v111;
  v58 = sub_23875E990();
  v59 = (*(v110 + 8))(v56, v57);
  v60 = v113;
  if (v58)
  {
    MEMORY[0x28223BE20](v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126B0, &qword_23877AD60);
    sub_23843A3E8(&qword_27DF126B8, &qword_27DF126B0, &qword_23877AD60, MEMORY[0x277CE1198]);
    v61 = v104;
    sub_23875D1D0();
    v62 = sub_23875D770();
    sub_23875C3D0();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v118 = v49;
    v69 = v47;
    v70 = v45;
    v71 = v43;
    v73 = v72;
    v74 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12688, &qword_23877AD40) + 36);
    *v74 = v62;
    *(v74 + 8) = v64;
    *(v74 + 16) = v66;
    *(v74 + 24) = v68;
    *(v74 + 32) = v73;
    v43 = v71;
    v45 = v70;
    v47 = v69;
    v49 = v118;
    *(v74 + 40) = 0;
    v75 = sub_23875D7A0();
    sub_23875C3D0();
    v76 = v61 + *(v60 + 36);
    *v76 = v75;
    *(v76 + 8) = v77;
    *(v76 + 16) = v78;
    *(v76 + 24) = v79;
    *(v76 + 32) = v80;
    *(v76 + 40) = 0;
    sub_2384396E4(v61, v122, &qword_27DF12670, &qword_23877AD38);
    v55 = 0;
  }

  v81 = v122;
  (*(v112 + 56))(v122, v55, 1, v60);
  v82 = v121;
  sub_23843981C(v30, v121, &qword_27DF126F8, &qword_23877ADF0);
  v83 = v115;
  sub_23843981C(v50, v115, &qword_27DF126F0, &qword_23877ADE8);
  v84 = v81;
  v85 = v116;
  sub_23843981C(v84, v116, &qword_27DF126E8, &unk_23877ADD8);
  v86 = v117;
  sub_23843981C(v82, v117, &qword_27DF126F8, &qword_23877ADF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12718, &qword_23877AE48);
  v88 = v87[12];
  *(&v124[1] + 1) = *&v145[16];
  *(&v124[2] + 1) = *&v145[32];
  *(&v124[3] + 1) = *&v145[48];
  *(v124 + 1) = *v145;
  *(&v124[4] + 8) = v138;
  *(&v124[5] + 8) = v139;
  *(&v124[7] + 8) = v141;
  *(&v124[8] + 8) = v142;
  v89 = v86 + v88;
  v90 = v109;
  v123 = v109;
  v118 = v30;
  v91 = v108;
  LOBYTE(v124[0]) = v108;
  *&v124[4] = *&v145[63];
  *(&v124[9] + 8) = v143;
  *(&v124[10] + 8) = v144;
  *(&v124[6] + 8) = v140;
  BYTE8(v124[11]) = v119;
  *(&v124[11] + 9) = *v137;
  HIDWORD(v124[11]) = *&v137[3];
  *&v125 = v43;
  *(&v125 + 1) = v45;
  *&v126 = v47;
  *(&v126 + 1) = v49;
  v127 = 0;
  *(v89 + 240) = 0;
  v92 = v124[0];
  *v89 = v123;
  *(v89 + 16) = v92;
  v93 = v124[6];
  *(v89 + 96) = v124[5];
  *(v89 + 112) = v93;
  v94 = v124[4];
  *(v89 + 64) = v124[3];
  *(v89 + 80) = v94;
  v95 = v124[10];
  *(v89 + 160) = v124[9];
  *(v89 + 176) = v95;
  v96 = v124[8];
  *(v89 + 128) = v124[7];
  *(v89 + 144) = v96;
  v97 = v124[2];
  *(v89 + 32) = v124[1];
  *(v89 + 48) = v97;
  v98 = v126;
  v99 = v124[11];
  *(v89 + 208) = v125;
  *(v89 + 224) = v98;
  *(v89 + 192) = v99;
  sub_23843981C(v83, v86 + v87[16], &qword_27DF126F0, &qword_23877ADE8);
  sub_23843981C(v85, v86 + v87[20], &qword_27DF126E8, &unk_23877ADD8);
  sub_23843981C(&v123, &v128, &qword_27DF12720, &qword_23877AE50);
  sub_238439884(v122, &qword_27DF126E8, &unk_23877ADD8);
  sub_238439884(v120, &qword_27DF126F0, &qword_23877ADE8);
  sub_238439884(v118, &qword_27DF126F8, &qword_23877ADF0);
  sub_238439884(v85, &qword_27DF126E8, &unk_23877ADD8);
  sub_238439884(v83, &qword_27DF126F0, &qword_23877ADE8);
  v128 = v90;
  v129[0] = v91;
  *&v129[17] = *&v145[16];
  *&v129[33] = *&v145[32];
  *v130 = *&v145[48];
  *&v130[15] = *&v145[63];
  *&v129[1] = *v145;
  *&v130[23] = v138;
  *&v130[39] = v139;
  *&v130[55] = v140;
  *&v130[119] = v144;
  *&v130[103] = v143;
  *&v130[87] = v142;
  *&v130[71] = v141;
  v130[135] = v119;
  *&v131[3] = *&v137[3];
  *v131 = *v137;
  v132 = v43;
  v133 = v45;
  v134 = v47;
  v135 = v49;
  v136 = 0;
  sub_238439884(&v128, &qword_27DF12720, &qword_23877AE50);
  sub_238439884(v121, &qword_27DF126F8, &qword_23877ADF0);
}

double sub_23865B8F0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2387591F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v38 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *MEMORY[0x277CC77C0];
  v7 = *(v3 + 104);
  v7(v5, v6, v2);
  v8 = sub_238758A40();
  v10 = v9;
  v11 = *(v3 + 8);
  v12 = v11(v5, v2);
  v41 = v8;
  v42 = v10;
  sub_2384397A8(v12, v13, v14);
  v15 = sub_23875DAA0();
  v35 = v16;
  v36 = v15;
  v34 = v17;
  v37 = v18;
  v7(v5, v6, v2);
  v19 = sub_238758A40();
  v21 = v20;
  v11(v5, v2);
  v41 = v19;
  v42 = v21;
  v22 = sub_23875DAA0();
  v24 = v23;
  v25 = v34 & 1;
  LOBYTE(v41) = v34 & 1;
  v40 = v34 & 1;
  v27 = v26 & 1;
  v39 = v26 & 1;
  v29 = v35;
  v28 = v36;
  *a1 = v36;
  *(a1 + 8) = v29;
  *(a1 + 16) = v25;
  *(a1 + 24) = v37;
  *(a1 + 32) = v22;
  *(a1 + 40) = v23;
  *(a1 + 48) = v26 & 1;
  *(a1 + 56) = v30;
  v31 = v28;
  sub_23843980C(v28, v29, v25);

  sub_23843980C(v22, v24, v27);

  sub_2384397FC(v22, v24, v27);

  sub_2384397FC(v31, v29, v41);

  return result;
}

void sub_23865BBC4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_23875CFB0();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12670, &qword_23877AD38);
  MEMORY[0x28223BE20](v40);
  v6 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126A8, &qword_23877AD58);
  v7 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v39 = &v38 - v8;
  v9 = sub_23875C880();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12658, &qword_23877AD30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23865A264(v12);
  type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  sub_23865D4D8(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v16 = sub_23875E990();
  v17 = (*(v10 + 8))(v12, v9);
  if (v16)
  {
    v18 = 1;
    v19 = v44;
  }

  else
  {
    MEMORY[0x28223BE20](v17);
    *(&v38 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126B0, &qword_23877AD60);
    sub_23843A3E8(&qword_27DF126B8, &qword_27DF126B0, &qword_23877AD60, MEMORY[0x277CE1198]);
    sub_23875D1D0();
    v20 = sub_23875D770();
    sub_23875C3D0();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12688, &qword_23877AD40) + 36)];
    *v29 = v20;
    *(v29 + 1) = v22;
    *(v29 + 2) = v24;
    *(v29 + 3) = v26;
    *(v29 + 4) = v28;
    v29[40] = 0;
    v30 = sub_23875D7A0();
    sub_23875C3D0();
    v31 = &v6[*(v40 + 36)];
    *v31 = v30;
    *(v31 + 1) = v32;
    *(v31 + 2) = v33;
    *(v31 + 3) = v34;
    *(v31 + 4) = v35;
    v31[40] = 0;
    v36 = v41;
    sub_23875CFA0();
    sub_23865DA1C();
    v37 = v39;
    sub_23875DD10();
    (*(v42 + 8))(v36, v43);
    sub_238439884(v6, &qword_27DF12670, &qword_23877AD38);
    v19 = v44;
    (*(v7 + 32))(v15, v37, v44);
    v18 = 0;
  }

  (*(v7 + 56))(v15, v18, 1, v19);
  sub_238425938(v15, v45);
}

double sub_23865C100(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel(0);
  sub_23865D4D8(&qword_27DF12610, type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel, &protocol conformance descriptor for BankConnectOfflineLabPrivacyConsentViewModel);
  sub_23875C490();
  sub_238659F48();

  return result;
}

uint64_t sub_23865C220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23865C284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_23865C308@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126C0, &unk_23877AD68);
  sub_23865C3D8(a1, a2 + *(v4 + 44));

  return result;
}

void sub_23865C3D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFB8, &qword_23876ECB0);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (v38 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126C8, &qword_23877AD78);
  MEMORY[0x28223BE20](v8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (v38 - v12);
  v14 = sub_238759940();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v38[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v15 + 104))(v17, *MEMORY[0x277CC7B50], v14);
  v38[0] = sub_23869C4FC(v17);
  v18 = sub_23875D7A0();
  sub_23875C3D0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_23865C794(v13);
  v27 = sub_23875D7A0();
  sub_23875C3D0();
  v28 = v13 + *(v8 + 36);
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_23865CADC(v7);
  v33 = v10;
  sub_23843981C(v13, v10, &qword_27DF126C8, &qword_23877AD78);
  v34 = v39;
  sub_23843981C(v7, v39, &qword_27DF0DFB8, &qword_23876ECB0);
  v35 = v38[0];
  *a2 = v38[0];
  *(a2 + 8) = v18;
  *(a2 + 16) = v20;
  *(a2 + 24) = v22;
  *(a2 + 32) = v24;
  *(a2 + 40) = v26;
  *(a2 + 48) = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126D0, &unk_23877AD80);
  sub_23843981C(v33, a2 + *(v36 + 48), &qword_27DF126C8, &qword_23877AD78);
  sub_23843981C(v34, a2 + *(v36 + 64), &qword_27DF0DFB8, &qword_23876ECB0);
  v37 = v35;
  sub_238439884(v7, &qword_27DF0DFB8, &qword_23876ECB0);
  sub_238439884(v13, &qword_27DF126C8, &qword_23877AD78);
  sub_238439884(v34, &qword_27DF0DFB8, &qword_23876ECB0);
  sub_238439884(v33, &qword_27DF126C8, &qword_23877AD78);
}

uint64_t sub_23865C794@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2387591F0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x277CC77C0], v6, v8);
  v11 = sub_238758A40();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  sub_23865C220(v22, v5);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_23865C284(v5, v15 + v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  sub_23875D610();
  *a1 = v11;
  a1[1] = v13;
  *(a1 + *(v16 + 40)) = 0;
  v17 = (a1 + *(v16 + 44));
  *v17 = sub_23865DB80;
  v17[1] = v15;
  type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel(0);
  sub_23865D4D8(&qword_27DF12610, type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel, &protocol conformance descriptor for BankConnectOfflineLabPrivacyConsentViewModel);
  sub_23875C490();
  swift_getKeyPath(aH_11);
  swift_getKeyPath(aH_12);
  sub_23875C2D0();

  LOBYTE(v16) = v23;
  KeyPath = swift_getKeyPath(byte_23877AD90);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126D8, &qword_23877ADC8);
  v21 = (a1 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = sub_238562718;
  v21[2] = v19;
  return result;
}

uint64_t sub_23865CADC@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2387591F0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x277CC77C0], v6, v8);
  v11 = sub_238758A40();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09580, &qword_238763900);
  sub_23875CFC0();
  sub_23865C220(v1, v5);
  v15 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v16 = swift_allocObject();
  sub_23865C284(v5, v16 + v15);
  *a1 = v11;
  a1[1] = v13;
  *(a1 + *(v14 + 40)) = 0;
  v17 = (a1 + *(v14 + 44));
  *v17 = sub_23865DB68;
  v17[1] = v16;
  type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel(0);
  sub_23865D4D8(&qword_27DF12610, type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel, &protocol conformance descriptor for BankConnectOfflineLabPrivacyConsentViewModel);
  sub_23875C490();
  swift_getKeyPath(aH_11);
  swift_getKeyPath(aH_12);
  sub_23875C2D0();

  LOBYTE(v5) = v23;
  KeyPath = swift_getKeyPath(byte_23877AD90);
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFB8, &qword_23876ECB0);
  v21 = (a1 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = sub_238477BAC;
  v21[2] = v19;
  return result;
}

double sub_23865CE20(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel(0);
  sub_23865D4D8(&qword_27DF12610, type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel, &protocol conformance descriptor for BankConnectOfflineLabPrivacyConsentViewModel);
  sub_23875C490();
  a2();

  return result;
}

uint64_t sub_23865CEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF125D8, &qword_23877AB50);
  sub_23865A5A8(a2 + *(v6 + 44));
  sub_23865C220(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_23865C284(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF125E0, &qword_23877AB58);
  v10 = (a2 + *(result + 36));
  *v10 = sub_23865DC00;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

void sub_23865D048(uint64_t a1)
{
  sub_238461990();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23865D154(uint64_t a1)
{
  sub_2384BEA74(319);
  if (v1 <= 0x3F)
  {
    sub_23875C880();
    if (v2 <= 0x3F)
    {
      sub_23865D1F0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23865D1F0(uint64_t a1)
{
  if (!qword_27DF12608)
  {
    type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel(255);
    sub_23865D4D8(&qword_27DF12610, type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel, &protocol conformance descriptor for BankConnectOfflineLabPrivacyConsentViewModel);
    v1 = sub_23875C4B0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF12608);
    }
  }
}

unint64_t sub_23865D284()
{
  result = qword_27DF12618;
  if (!qword_27DF12618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF125E0, &qword_23877AB58);
    sub_23843A3E8(&qword_27DF12620, &qword_27DF12628, &unk_23877AC98, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12618);
  }

  return result;
}

void sub_23865D33C(_BYTE *a2@<X8>)
{
  swift_getKeyPath(aH_11);
  swift_getKeyPath(aH_12);
  sub_23875C2D0();

  *a2 = v3;
}

uint64_t sub_23865D3BC(char *a1, uint64_t *a2)
{
  swift_getKeyPath(aH_11);
  swift_getKeyPath(aH_12);

  return sub_23875C2E0();
}

uint64_t sub_23865D430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12728, &qword_23877AE58);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23843981C(a1, &v5 - v3, &qword_27DF12728, &qword_23877AE58);
  return sub_23875CBC0();
}

uint64_t sub_23865D4D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23865D520(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238449A7C;

  return sub_238659C7C(a1, v4, v5, v6);
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23865D614(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2384494A4;

  return sub_2386591B4(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_26()
{
  v1 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C880();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  v8 = sub_23875C880();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  sub_2383FC164(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_23865D834()
{
  v1 = *(type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23865C100(v2);
}

unint64_t sub_23865D89C()
{
  result = qword_27DF12640;
  if (!qword_27DF12640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12638, &qword_23877AD20);
    sub_23843A3E8(&qword_27DF12648, &qword_27DF12650, &qword_23877AD28, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12640);
  }

  return result;
}

unint64_t sub_23865D95C()
{
  result = qword_27DF12668;
  if (!qword_27DF12668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12658, &qword_23877AD30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12670, &qword_23877AD38);
    sub_23865DA1C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12668);
  }

  return result;
}

unint64_t sub_23865DA1C()
{
  result = qword_27DF12678;
  if (!qword_27DF12678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12670, &qword_23877AD38);
    sub_23865DAA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12678);
  }

  return result;
}

unint64_t sub_23865DAA8()
{
  result = qword_27DF12680;
  if (!qword_27DF12680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12688, &qword_23877AD40);
    sub_23843A3E8(&qword_27DF12690, &qword_27DF12698, &qword_23877AD48, MEMORY[0x277CE0370]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12680);
  }

  return result;
}

id XPCFinancialConnectionExtensionAuthorizationParams.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12FinanceKitUI50XPCFinancialConnectionExtensionAuthorizationParams_value] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCFinancialConnectionExtensionAuthorizationParams.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC12FinanceKitUI50XPCFinancialConnectionExtensionAuthorizationParams_value] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t XPCFinancialConnectionExtensionAuthorizationParams.__allocating_init(coder:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  swift_getObjectType();
  sub_23865FD74(&qword_27DF12738, type metadata accessor for XPCFinancialConnectionExtensionAuthorizationParams, &protocol conformance descriptor for XPCFinancialConnectionExtensionAuthorizationParams);
  sub_23865DEFC(&qword_27DF12740, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_23865DEFC(&qword_27DF12750, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  v3 = sub_238758B00();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t XPCFinancialConnectionExtensionAuthorizationParams.init(coder:)(uint64_t a1)
{
  swift_getObjectType();
  sub_23865FD74(&qword_27DF12738, type metadata accessor for XPCFinancialConnectionExtensionAuthorizationParams, &protocol conformance descriptor for XPCFinancialConnectionExtensionAuthorizationParams);
  sub_23865DEFC(&qword_27DF12740, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_23865DEFC(&qword_27DF12750, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  v1 = sub_238758B00();
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t sub_23865DEFC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12748, &qword_23877AE60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall XPCFinancialConnectionExtensionAuthorizationParams.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  sub_23865FD74(&qword_27DF12738, type metadata accessor for XPCFinancialConnectionExtensionAuthorizationParams, &protocol conformance descriptor for XPCFinancialConnectionExtensionAuthorizationParams);
  sub_23865DEFC(&qword_27DF12740, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_23865DEFC(&qword_27DF12750, MEMORY[0x277D837D8], MEMORY[0x277D83508]);

  sub_238758B10();
}

id XPCFinancialConnectionExtensionAuthorizationParams.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double sub_23865E314@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI50XPCFinancialConnectionExtensionAuthorizationParams_value);

  return result;
}

id sub_23865E328(uint64_t *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12FinanceKitUI50XPCFinancialConnectionExtensionAuthorizationParams_value] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t FinancialConnectionExtensionAuthorizationRequest.init(params:completeHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

Swift::Void __swiftcall FinancialConnectionExtensionAuthorizationRequest.complete(authorizationResult:)(FinanceKitUI::FinancialConnectionExtensionAuthorizationResult authorizationResult)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = *authorizationResult.params._rawValue;
    v5 = 0;
    sub_238455C54(v2, v3);

    v2(&v4);
    sub_2384348A8(v2, v3);
    sub_23865E454(v4, v5);
  }
}

double sub_23865E454(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

double FinancialConnectionExtensionAuthorizationRequest.complete(error:)(void *a1)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *(v1 + 16);
    v7 = a1;
    v8 = 1;
    sub_238455C54(v2, v3);
    v5 = a1;
    v2(&v7);
    sub_2384348A8(v2, v3);
    return sub_23865E454(v7, v8);
  }

  return result;
}

void sub_23865E504(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D61726170 && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_23875F630();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_23865E588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23865E798(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23865E5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23865E798(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t FinancialConnectionExtensionAuthorizationResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12758, &qword_23877AE68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = *v1;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23865E798(v8, v9, v10);

  sub_23875F790();
  v12[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12748, &qword_23877AE60);
  sub_23865DEFC(&qword_27DF12750, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_23875F5C0();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23865E798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF12760;
  if (!qword_27DF12760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12760);
  }

  return result;
}

uint64_t FinancialConnectionExtensionAuthorizationResult.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12768, &qword_23877AE70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23865E798(v9, v10, v11);
  sub_23875F780();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12748, &qword_23877AE60);
    sub_23865DEFC(&qword_27DF12740, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_23875F5B0();
    (*(v6 + 8))(v8, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t get_enum_tag_for_layout_string_s6ResultOy12FinanceKitUI041FinancialConnectionExtensionAuthorizationA0Vs5Error_pGIeghn_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for SmallWalletCardsBalanceWidgetConfiguration(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SmallWalletCardsBalanceWidgetConfiguration(uint64_t result, int a2, int a3)
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

double sub_23865ECA4@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + OBJC_IVAR___XPCFinancialConnectionExtensionAuthorizationResult_value);

  return result;
}

id sub_23865ECB8(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___XPCFinancialConnectionExtensionAuthorizationResult_value] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_23865ED0C(uint64_t *a1)
{
  *(v2 + 24) = v1;
  v4 = sub_23875C1E0();
  *(v2 + 32) = v4;
  *(v2 + 40) = *(v4 - 8);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a1;
  *(v2 + 64) = v5;
  *(v2 + 72) = v6;
  *(v2 + 120) = *(a1 + 8);

  return MEMORY[0x2822009F8](sub_23865EDF4, 0, 0);
}

uint64_t sub_23865EDF4(uint64_t a1)
{
  sub_23875C120();
  v2 = sub_23875C1B0();
  v3 = sub_23875EFC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2383F8000, v2, v3, "Extension: Completed authorization", v4, 2u);
    MEMORY[0x23EE64DF0](v4, -1, -1);
  }

  v5 = *(v1 + 64);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 24);

  v9 = *(v7 + 8);
  *(v1 + 80) = v9;
  v9(v5, v6);
  v10 = *(v8 + 56);
  *(v1 + 88) = v10;
  if (v10)
  {
    v11 = *(v1 + 120);
    v12 = *(v1 + 72);
    *(v1 + 16) = v10;
    v13 = swift_allocObject();
    *(v1 + 96) = v13;
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;

    sub_23865FC4C(v12, v11);
    v14 = swift_task_alloc();
    *(v1 + 104) = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12800, &qword_23877B1F0);
    v16 = sub_23865FD10();
    *v14 = v1;
    v14[1] = sub_23865F0CC;
    v17 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282116CB8](v16, &unk_23877B1E8, v13, v15, v17, v16);
  }

  else
  {
    sub_23875C120();
    v18 = sub_23875C1B0();
    v19 = sub_23875EFE0();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v1 + 56);
    v22 = *(v1 + 32);
    if (v20)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2383F8000, v18, v19, "Failed to notify completion: no client connection available", v23, 2u);
      MEMORY[0x23EE64DF0](v23, -1, -1);
    }

    v9(v21, v22);

    v24 = *(v1 + 8);

    return v24();
  }
}

uint64_t sub_23865F0CC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_23865F264;
  }

  else
  {

    v2 = sub_23865F1E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23865F1E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23865F264()
{
  v1 = *(v0 + 112);

  sub_23875C120();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 112);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2383F8000, v3, v4, "Failed to complete authorization %@", v7, 0xCu);
    sub_238455DD4(v8);
    MEMORY[0x23EE64DF0](v8, -1, -1);
    MEMORY[0x23EE64DF0](v7, -1, -1);
  }

  else
  {
  }

  (*(v0 + 80))(*(v0 + 48), *(v0 + 32));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_23865F410(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  *(v4 + 48) = a4;
  v5 = *a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = v5;
  return MEMORY[0x2822009F8](sub_23865F438, 0, 0);
}

uint64_t sub_23865F438()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  if (*(v0 + 48))
  {
    v3 = sub_23875B720();
    [v2 completeWithError_];
  }

  else
  {
    v4 = type metadata accessor for FinancialConnectionExtensionAuthorizationResult.XPC();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR___XPCFinancialConnectionExtensionAuthorizationResult_value] = v1;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;

    v3 = objc_msgSendSuper2((v0 + 16), sel_init);
    [v2 completeWithAuthorizationResult_];
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23865F520(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23875C1E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875C120();
  v8 = sub_23875C1B0();
  v9 = sub_23875EFC0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2383F8000, v8, v9, "Extension: Starting authorization", v10, 2u);
    MEMORY[0x23EE64DF0](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI50XPCFinancialConnectionExtensionAuthorizationParams_value);
  v12 = v2[5];
  v13 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v12);
  v17[0] = v11;
  v17[1] = sub_23865FB7C;
  v17[2] = v2;
  v14 = *(v13 + 8);

  v14(v17, v12, v13);

  return sub_2384348A8(sub_23865FB7C, v2);
}

double sub_23865F6E8(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v8 = sub_23875ED80();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = a2;
  *(v9 + 40) = v7;
  *(v9 + 48) = a1;

  sub_23865FC4C(v7, a1);
  sub_2386C3BA4(0, 0, v6, &unk_23877B1D0, v9);

  return result;
}

uint64_t sub_23865F818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6 & 1;
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_23865F8BC;

  return sub_23865ED0C((v6 + 16));
}

uint64_t sub_23865F8BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23865FA00()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_23865FA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF127E0;
  if (!qword_27DF127E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF127E0);
  }

  return result;
}

unint64_t sub_23865FAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF127E8;
  if (!qword_27DF127E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF127E8);
  }

  return result;
}

unint64_t sub_23865FB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF127F0;
  if (!qword_27DF127F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF127F0);
  }

  return result;
}

uint64_t sub_23865FB84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2384494A4;

  return sub_23865F818(a1, v4, v5, v6, v7, v8);
}

double sub_23865FC4C(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

uint64_t sub_23865FC58(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2384494A4;

  return sub_23865F410(a1, a2, v6, v7);
}

unint64_t sub_23865FD10()
{
  result = qword_27DF12808;
  if (!qword_27DF12808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12800, &qword_23877B1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12808);
  }

  return result;
}

uint64_t sub_23865FD74(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23865FDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF12820;
  if (!qword_27DF12820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12820);
  }

  return result;
}

unint64_t sub_23865FE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF12828;
  if (!qword_27DF12828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12828);
  }

  return result;
}

uint64_t sub_23865FE60(uint64_t a1, uint64_t a2)
{
  sub_23845C998(a2, v5);
  type metadata accessor for FinancialConnectionExtensionModel();
  v3 = swift_allocObject();
  sub_2384347C0(v5, v3 + 16);
  *(v3 + 56) = a1;
  *&v5[0] = v3;

  sub_23875A630();
  *&v5[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12800, &qword_23877B1F0);
  sub_23865FD10();
  return sub_238757720();
}

uint64_t OrderManagementModel.ImportError.errorTitle.getter()
{
  if (*v0)
  {
    if (*v0 == 1)
    {
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
    }

    else
    {
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
    }
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v1 = qword_2814F1B90;
  }

  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_23875EA80();
  return v6;
}

uint64_t OrderManagementModel.ImportError.hashValue.getter()
{
  v1 = *v0;
  sub_23875F700();
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

char *OrderManagementModel.ConfirmationData.__allocating_init(orderBundleURL:)(uint64_t a1)
{
  v4 = sub_23875B8C0();
  v5 = sub_23875B950();
  if (v1)
  {
    if (v4)
    {
      sub_23875B8A0();
    }
  }

  else
  {
    v2 = sub_2386620B4(v5, v6);
    if (v4)
    {
      sub_23875B8A0();
    }
  }

  v7 = sub_23875B940();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v2;
}

uint64_t OrderManagementModel.ConfirmationData.deinit()
{
  v1 = v0;
  v2 = sub_23875C1E0();
  MEMORY[0x28223BE20](v2);
  sub_238663374(v0 + 32, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_23875A370();
  __swift_destroy_boxed_opaque_existential_1(v6);
  sub_23844C954(*(v1 + 16), *(v1 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v3 = OBJC_IVAR____TtCC12FinanceKitUI20OrderManagementModel16ConfirmationData_content;
  v4 = sub_238758700();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  return v1;
}

uint64_t OrderManagementModel.ConfirmationData.__deallocating_deinit()
{
  OrderManagementModel.ConfirmationData.deinit();

  return swift_deallocClassInstance();
}

void sub_238660580(void *a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  v3 = a1;

  swift_getKeyPath(byte_23877B1F8);
  swift_getKeyPath(byte_23877B220);
  sub_23875C2D0();

  v4 = *(v1 + 16);
  v5 = *&v7[OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_context];
  *&v7[OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_context] = v4;
  v6 = v4;
}

void sub_238660630(void *a2@<X8>)
{
  swift_getKeyPath(byte_23877B1F8);
  swift_getKeyPath(byte_23877B220);
  sub_23875C2D0();

  *a2 = v3;
}

uint64_t sub_2386606B0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath(byte_23877B1F8);
  swift_getKeyPath(byte_23877B220);

  v3 = v2;
  return sub_23875C2E0();
}

uint64_t sub_238660728()
{
  swift_getKeyPath(byte_23877B1F8);
  swift_getKeyPath(byte_23877B220);
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23866079C(uint64_t a1)
{
  swift_getKeyPath(byte_23877B1F8);
  swift_getKeyPath(byte_23877B220);

  return sub_23875C2E0();
}

uint64_t (*sub_23866080C(uint64_t *a1))()
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
  *(v2 + 32) = swift_getKeyPath(byte_23877B1F8);
  *(v3 + 40) = swift_getKeyPath(byte_23877B220);
  *(v3 + 48) = sub_23875C2C0();
  return sub_2386608B0;
}

void sub_2386608B0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_238660918(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12898, &qword_23877B240);
  sub_23875C2A0();
  return swift_endAccess();
}

uint64_t sub_238660990(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF128A0, &qword_23877B248);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12898, &qword_23877B240);
  sub_23875C2B0();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_238660B14()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12898, &qword_23877B240);
  sub_23875C2A0();
  return swift_endAccess();
}

uint64_t sub_238660B88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF128A0, &qword_23877B248);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12898, &qword_23877B240);
  sub_23875C2B0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_238660CC0(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF128A0, &qword_23877B248);
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

  v10 = OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel__navigation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12898, &qword_23877B240);
  sub_23875C2A0();
  swift_endAccess();
  return sub_238660E30;
}

void sub_238660E30(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_23875C2B0();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_23875C2B0();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

double sub_238660F98()
{
  swift_getKeyPath(byte_23877B568);
  swift_getKeyPath(byte_23877B590);
  sub_23875C2D0();

  return result;
}

uint64_t OrderManagementModel.__allocating_init(analyticsProvider:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_238661CB8(v8, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t OrderManagementModel.init(analyticsProvider:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_238661CB8(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

double sub_238661200(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for OrderManagementModel(0);
    sub_238663994(&qword_27DF12A40, type metadata accessor for OrderManagementModel, &protocol conformance descriptor for OrderManagementModel);
    sub_23875C260();

    sub_23875C270();
  }

  return result;
}

uint64_t sub_238661324(uint64_t a1)
{
  v1 = sub_23875C1E0();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v2 = sub_23875A710();
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238759C60();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875A260();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875A250();
  sub_2387579D0();
  sub_2387579A0();
  sub_238757800();

  swift_getKeyPath(byte_23877B568);
  swift_getKeyPath(byte_23877B590);
  v25 = 0xF000000000000004;

  sub_23875C2E0();
  swift_getKeyPath(byte_23877B1F8);
  swift_getKeyPath(byte_23877B220);
  sub_23875C2D0();

  v24 = v25;
  sub_238759C40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12BD0, &unk_238777400);
  v12 = *(type metadata accessor for OrderNavigationDestination(0) - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2387632F0;
  v15 = v14 + v13;
  v16 = v22;
  (*(v22 + 16))(v15, v4, v2);
  v17 = (v15 + *(type metadata accessor for FetchedOrderDetailsDestination(0) + 20));
  *v17 = 0;
  v17[1] = 0;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath(byte_23877B5B8);
  swift_getKeyPath(aX_15);
  v25 = v14;
  sub_23875C2E0();
  (*(v16 + 8))(v4, v2);
  (*(v20 + 8))(v7, v21);
  return (*(v9 + 8))(v11, v8);
}

uint64_t OrderManagementModel.deinit()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel__navigation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12898, &qword_23877B240);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel__importState;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12BF0, &qword_23877B250);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel_analyticsProvider));
  return v0;
}

uint64_t OrderManagementModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel__navigation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12898, &qword_23877B240);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel__importState;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12BF0, &qword_23877B250);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel_analyticsProvider));

  return swift_deallocClassInstance();
}

uint64_t sub_238661AF8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for OrderManagementModel(0);
  result = sub_23875C260();
  *a2 = result;
  return result;
}

uint64_t OrderManagementModel.ImportError.errorDescription.getter()
{
  if (!*v0)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v2 = qword_2814F1B90;
    goto LABEL_10;
  }

  if (*v0 != 1)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v2 = qword_2814F1B90;
LABEL_10:
    v3 = sub_23875EA50();
    v4 = sub_23875EA50();
    v5 = sub_23875EA50();
    v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

    v1 = sub_23875EA80();
    return v1;
  }

  return 0;
}

uint64_t sub_238661CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12BF0, &qword_23877B250);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12898, &qword_23877B240);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - v14;
  v26[3] = a3;
  v26[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a2 + 16) = 0;
  v17 = OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel__navigation;
  v25[0] = [objc_allocWithZone(type metadata accessor for OrderNavigationModel(0)) init];
  sub_23875C290();
  (*(v13 + 32))(a2 + v17, v15, v12);
  v18 = OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel__importState;
  v25[0] = 0xF000000000000004;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12C00, &qword_23877B440);
  sub_23875C290();
  (*(v9 + 32))(a2 + v18, v11, v8);
  if (MEMORY[0x277D84F90] >> 62 && sub_23875F3A0())
  {
    v19 = sub_23844CE88(MEMORY[0x277D84F90]);
  }

  else
  {
    v19 = MEMORY[0x277D84FA0];
  }

  *(a2 + OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel_cancellableSet) = v19;
  sub_23845C998(v26, a2 + OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel_analyticsProvider);
  swift_getKeyPath(byte_23877B1F8);
  swift_getKeyPath(byte_23877B220);
  sub_23875C2D0();

  v20 = v25[0];
  sub_238663994(&qword_27DF128F8, type metadata accessor for OrderNavigationModel, &protocol conformance descriptor for OrderNavigationModel);
  v21 = sub_23875C260();

  v25[0] = v21;
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2386639DC;
  *(v23 + 24) = v22;
  sub_23875C280();
  sub_23875C360();

  swift_beginAccess();
  sub_23875C210();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v26);
  return a2;
}

char *sub_2386620B4(uint64_t a1, unint64_t a2)
{
  v140 = a1;
  v148 = *MEMORY[0x277D85DE8];
  v111 = sub_23875B460();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_23875E6A0();
  v112 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v121 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_23875E660();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v124 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_23875E6C0();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v115 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v123 = &v105 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12900, &unk_23877B600);
  MEMORY[0x28223BE20](v9 - 8);
  v119 = &v105 - v10;
  v130 = sub_23875E6E0();
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v114 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v122 = &v105 - v13;
  v133 = sub_23875B810();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v15 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23875BCB0();
  v131 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23875B940();
  v138 = *(v19 - 8);
  v139 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v118 = &v105 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v105 - v25;
  MEMORY[0x28223BE20](v27);
  v135 = &v105 - v28;
  v129 = sub_238758700();
  v29 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v113 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v108 = &v105 - v32;
  MEMORY[0x28223BE20](v33);
  v120 = &v105 - v34;
  v137 = [objc_opt_self() mainBundle];
  v35 = [v137 bundleIdentifier];
  if (!v35)
  {
    goto LABEL_10;
  }

  v106 = v29;
  v134 = a2;
  v36 = v35;
  v37 = sub_23875EA80();
  v39 = v38;

  if (v37 == 0xD00000000000001ALL && 0x800000023878EEF0 == v39)
  {

    goto LABEL_6;
  }

  v40 = sub_23875F630();

  a2 = v134;
  v29 = v106;
  if ((v40 & 1) == 0)
  {
LABEL_10:
    sub_238757C20();
    v70 = [objc_opt_self() defaultManager];
    v71 = [v70 temporaryDirectory];

    sub_23875B8B0();
    sub_238758AF0();
    v142 = sub_238759260();
    v143 = MEMORY[0x277CC77F0];
    __swift_allocate_boxed_opaque_existential_1(&v141);
    sub_238759250();
    v72 = v140;
    v73 = v136;
    v74 = sub_238757BE0();
    if (v73)
    {
      (*(v138 + 8))(v21, v139);

      sub_23844C954(v72, a2);
      v75 = &v141;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1(v75);
      return v21;
    }

    v78 = v74;
    (*(v138 + 8))(v21, v139);
    __swift_destroy_boxed_opaque_existential_1(&v141);
    v79 = type metadata accessor for OrderBundleResourceLoader();
    v80 = swift_allocObject();
    *(v80 + 16) = v78;
    v145 = v79;
    v146 = sub_238663994(&qword_27DF12908, type metadata accessor for OrderBundleResourceLoader, &protocol conformance descriptor for OrderBundleResourceLoader);
    v147 = &protocol witness table for OrderBundleResourceLoader;
    *&v144 = v80;

    v81 = v120;
    sub_238757C10();

LABEL_15:
    sub_2385169F0(&v144, &v141);
    v82 = *(v29 + 32);
    v83 = v113;
    v84 = v129;
    v82(v113, v81, v129);
    type metadata accessor for OrderManagementModel.ConfirmationData(0);
    v21 = swift_allocObject();
    *(v21 + 2) = v72;
    *(v21 + 3) = a2;
    sub_2385169F0(&v141, v21 + 2);
    v82(&v21[OBJC_IVAR____TtCC12FinanceKitUI20OrderManagementModel16ConfirmationData_content], v83, v84);
    return v21;
  }

LABEL_6:
  sub_23875C100();
  v107 = sub_23875C0F0();
  v41 = objc_opt_self();
  v42 = [v41 defaultManager];
  v43 = [v42 temporaryDirectory];

  v44 = v26;
  v45 = v135;
  sub_23875B8B0();

  sub_23875BCA0();
  v46 = sub_23875BC50();
  v48 = v47;
  (*(v131 + 8))(v18, v16);
  *&v141 = v46;
  *(&v141 + 1) = v48;
  v49 = v132;
  v50 = v133;
  v51 = (*(v132 + 104))(v15, *MEMORY[0x277CC91D8], v133);
  sub_2384397A8(v51, v52, v53);
  sub_23875B930();
  (*(v49 + 8))(v15, v50);
  v54 = [v41 defaultManager];
  v55 = sub_23875B860();
  *&v141 = 0;
  LODWORD(v49) = [v54 createDirectoryAtURL:v55 withIntermediateDirectories:1 attributes:0 error:&v141];

  if (!v49)
  {
    v76 = v141;

    sub_23875B730();

    swift_willThrow();

    sub_23844C954(v140, v134);
    v77 = v139;
    v21 = *(v138 + 8);
    (v21)(v44, v139);
    (v21)(v45, v77);
    return v21;
  }

  v56 = v141;
  v133 = v44;
  sub_23875B880();
  v57 = v119;
  sub_23875E6D0();
  v58 = v128;
  v59 = v130;
  result = (*(v128 + 48))(v57, 1, v130);
  v61 = v140;
  if (result != 1)
  {

    v62 = v122;
    (*(v58 + 32))(v122, v57, v59);
    (*(v58 + 16))(v114, v62, v59);
    v63 = v123;
    sub_23875E6B0();
    v64 = v126;
    v65 = v127;
    (*(v126 + 16))(v115, v63, v127);
    v66 = v124;
    sub_23875E650();
    v67 = v134;
    v68 = v136;
    sub_23875C0E0();
    v136 = v68;
    if (v68)
    {

      sub_23844C954(v61, v67);
      (*(v116 + 8))(v66, v117);
      (*(v64 + 8))(v63, v65);
      (*(v58 + 8))(v62, v130);
      v69 = v139;
      v21 = *(v138 + 8);
      (v21)(v133, v139);
      (v21)(v135, v69);
      return v21;
    }

    v85 = v129;
    v86 = v125;
    v145 = type metadata accessor for BlastDoorOrderPreviewResourceLoader(0);
    v146 = sub_238663994(&qword_27DF12910, type metadata accessor for BlastDoorOrderPreviewResourceLoader, &unk_238770D34);
    v147 = &off_284B2A8C8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v144);
    v88 = v112;
    v89 = v121;
    (*(v112 + 16))(boxed_opaque_existential_1, v121, v86);
    sub_23875B4A0();
    swift_allocObject();
    sub_23875B490();
    (*(v110 + 104))(v109, *MEMORY[0x277CC86D0], v111);
    sub_23875B470();
    v90 = sub_23875E600();
    v92 = v91;
    sub_238663994(&qword_27DF12918, MEMORY[0x277CC6FB0], MEMORY[0x277CC6FB8]);
    v93 = v108;
    v94 = v136;
    sub_23875B480();
    if (v94)
    {
      sub_23844C954(v90, v92);

      sub_23844C954(v140, v134);
      (*(v88 + 8))(v89, v125);
      (*(v116 + 8))(v124, v117);
      (*(v126 + 8))(v123, v127);
      (*(v128 + 8))(v122, v130);
      v95 = v139;
      v21 = *(v138 + 8);
      (v21)(v133, v139);
      (v21)(v135, v95);
      v75 = &v144;
      goto LABEL_12;
    }

    sub_23844C954(v90, v92);
    (*(v106 + 32))(v120, v93, v85);
    sub_2387586E0();
    v96 = sub_23875E620();
    v98 = v97;
    v99 = v89;
    v100 = sub_23875E610();
    v102 = v101;
    sub_23875AA90();
    sub_23844C954(v100, v102);
    sub_23844C954(v96, v98);

    (*(v112 + 8))(v99, v125);
    (*(v116 + 8))(v124, v117);
    (*(v126 + 8))(v123, v127);
    (*(v128 + 8))(v122, v130);
    v103 = v139;
    v104 = *(v138 + 8);
    v104(v133, v139);
    v104(v135, v103);
    a2 = v134;
    v72 = v140;
    v29 = v106;
    v81 = v120;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_238663374(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2386633DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF128B8;
  if (!qword_27DF128B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF128B8);
  }

  return result;
}

unint64_t sub_238663434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF128C0;
  if (!qword_27DF128C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF128C0);
  }

  return result;
}

void sub_2386634FC(uint64_t a1)
{
  sub_2386636F0(319);
  if (v1 <= 0x3F)
  {
    sub_238663748(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2386636F0(uint64_t a1)
{
  if (!qword_27DF128D8)
  {
    type metadata accessor for OrderNavigationModel(255);
    v1 = sub_23875C2F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF128D8);
    }
  }
}

void sub_238663748(uint64_t a1)
{
  if (!qword_27DF128E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF12C00, &qword_23877B440);
    v1 = sub_23875C2F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF128E0);
    }
  }
}

uint64_t sub_2386637B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F && *(a1 + 8))
  {
    return (*a1 + 31);
  }

  v3 = (((*a1 >> 59) >> 4) | (2 * ((*a1 >> 59) & 0xE | (*a1 >> 2) & 1))) ^ 0x1F;
  if (v3 >= 0x1E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_238663814(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *result = a2 - 31;
    if (a3 >= 0x1F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0xF | (16 * (-a2 & 0x1F));
      *result = ((v3 << 59) | (4 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_2386638D8(uint64_t a1)
{
  result = sub_238758700();
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

uint64_t sub_238663994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for TransactionUnitList(uint64_t a1)
{
  result = qword_27DF12928;
  if (!qword_27DF12928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238663A60(uint64_t a1)
{
  sub_2384DCE28(319, &qword_27DF0B5A8, &qword_27DF0B558, &qword_238768210);
  if (v1 <= 0x3F)
  {
    sub_2384DCE28(319, &qword_27DF0C470, &qword_27DF0B5D0, &qword_23877B640);
    if (v2 <= 0x3F)
    {
      sub_238663B5C(319);
      if (v3 <= 0x3F)
      {
        sub_2384DCD94(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_238663B5C(uint64_t a1)
{
  if (!qword_27DF12938)
  {
    sub_23875A230();
    v1 = sub_23875C520();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF12938);
    }
  }
}

uint64_t sub_238663BD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = sub_23875CE00();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TransactionUnitList(0);
  v6 = v5 - 8;
  v41 = *(v5 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12940, &qword_23877B698);
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v10 = &v40 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12948, &qword_23877B6A0);
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12950, &qword_23877B6A8);
  v14 = *(v13 - 8);
  v46 = v13;
  v47 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12958, qword_23877B6B0);
  v18 = *(v17 - 8);
  v48 = v17;
  v49 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
  v40 = v1;
  sub_23875C500();
  KeyPath = swift_getKeyPath(byte_23877B6C8);
  sub_2386650E8(v2, v8);
  v22 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v23 = swift_allocObject();
  sub_2386656D4(v8, v23 + v22, type metadata accessor for TransactionUnitList);
  v54 = v10;
  v55 = KeyPath;
  v56 = sub_23866514C;
  v57 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12960, &unk_23877B6F0);
  sub_2386653BC();
  sub_23875D9C0();

  (*(v42 + 8))(v10, v43);
  v25 = v50;
  v24 = v51;
  v26 = v52;
  (*(v51 + 104))(v50, *MEMORY[0x277CDDDB0], v52);
  v27 = sub_23843A3E8(&qword_27DF12990, &qword_27DF12948, &qword_23877B6A0, MEMORY[0x277CDE5A0]);
  v28 = v44;
  sub_23875DE50();
  (*(v24 + 8))(v25, v26);
  (*(v45 + 8))(v12, v28);
  v29 = (v40 + *(v6 + 44));
  v31 = *v29;
  v30 = v29[1];
  v58 = v31;
  v59 = v30;
  v62 = v28;
  v63 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = sub_2384397A8(OpaqueTypeConformance2, v33, v34);
  v36 = MEMORY[0x277D837D0];
  v37 = v46;
  sub_23875DC70();
  (*(v47 + 8))(v16, v37);
  v58 = v37;
  v59 = v36;
  v60 = OpaqueTypeConformance2;
  v61 = v35;
  swift_getOpaqueTypeConformance2();
  v38 = v48;
  sub_23875DE10();
  return (*(v49 + 8))(v20, v38);
}

void sub_2386641E8(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v65 = a2;
  v67 = type metadata accessor for TransactionUnitList(0);
  v56 = *(v67 - 1);
  MEMORY[0x28223BE20](v67);
  v57 = v4;
  v58 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = &v49[-v6];
  v55 = type metadata accessor for TransactionView(0);
  MEMORY[0x28223BE20](v55);
  v8 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12988, &qword_23877B700);
  MEMORY[0x28223BE20](v63);
  v62 = &v49[-v9];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12978, &unk_238781900);
  MEMORY[0x28223BE20](v61);
  v60 = &v49[-v10];
  v11 = sub_238758F50();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v54 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v49[-v15];
  MEMORY[0x28223BE20](v17);
  v19 = &v49[-v18];
  v20 = *a1;
  sub_23875ED50();
  v59 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = v20;
  sub_238758F60();
  v66 = v12;
  v51 = *(v12 + 16);
  v22 = v51(v16, v19, v11);
  v23 = v65;
  MEMORY[0x28223BE20](v22);
  v67 = v19;
  *&v49[-16] = v19;
  v24 = v68;
  sub_23854CF80(sub_2386655E0, v25, v68);
  v26 = sub_238758680();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v53 = v26;
  v29 = v28(v24, 1);
  v52 = v16;
  if (v29 == 1)
  {
    __break(1u);
  }

  else
  {
    v70 = *v23;
    v71 = *(v23 + 8);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v69, v30);
    v31 = v67;
    v50 = sub_23860E62C(v67, v69);

    v32 = v58;
    sub_2386650E8(v23, v58);
    v33 = v54;
    v51(v54, v31, v11);
    v34 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v35 = v66;
    v36 = (v57 + *(v66 + 80) + v34) & ~*(v66 + 80);
    v37 = swift_allocObject();
    sub_2386656D4(v32, v37 + v34, type metadata accessor for TransactionUnitList);
    v38 = *(v35 + 32);
    v38(v37 + v36, v33, v11);
    *v8 = swift_getKeyPath(byte_23877B708);
    v8[8] = 0;
    v39 = v55;
    v40 = *(v55 + 20);
    *&v8[v40] = swift_getKeyPath(byte_23877B738);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v38(&v8[v39[6]], v52, v11);
    (*(v27 + 32))(&v8[v39[7]], v68, v53);
    v8[v39[8]] = v50 & 1;
    v41 = &v8[v39[9]];
    *v41 = sub_238665600;
    v41[1] = v37;
    v42 = v39[10];
    v43 = *MEMORY[0x277CDFA00];
    v44 = sub_23875C880();
    (*(*(v44 - 8) + 104))(&v8[v42], v43, v44);
    if (qword_27DF08D80 != -1)
    {
      swift_once();
    }

    v70 = qword_27DF2F920;

    v45 = sub_23875E2D0();
    v46 = v62;
    sub_2386656D4(v8, v62, type metadata accessor for TransactionView);
    *&v46[*(v63 + 36)] = v45;
    v47 = v60;
    sub_2384396E4(v46, v60, &qword_27DF12988, &qword_23877B700);
    v48 = &v47[*(v61 + 36)];
    *v48 = xmmword_23876A640;
    *(v48 + 1) = xmmword_23876A640;
    v48[32] = 0;
    sub_2384396E4(v47, v64, &qword_27DF12978, &unk_238781900);
    (*(v66 + 8))(v67, v11);
  }
}

uint64_t sub_238664934()
{
  v0 = sub_23875BCB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238758640();
  sub_238758F40();
  v7 = sub_23875BC80();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

double sub_238664AD8(char a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C598, &unk_23877B770);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v30 - v7;
  v9 = sub_238758F50();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v30 - v15;
  if (a1)
  {
    (*(v10 + 16))(v12, a3, v9, v14);
    v17 = *a2;
    v18 = a2[1];
    v30[1] = a3;
    v19 = a2[2];
    v35 = v17;
    v36 = v18;
    v37 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v38);
    sub_2387099C0(v16, v12);
    (*(v10 + 8))(v16, v9);
    v32 = v17;
    v33 = v18;
    v34 = v19;
    v31 = v38;
    sub_23875E2F0();

    v21 = a2[4];
    v22 = a2[5];
    v35 = a2[3];
    v20 = v35;
    v36 = v21;
    v37 = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
    MEMORY[0x23EE62DC0](&v38);
    sub_2384DB11C();
    v32 = v20;
    v33 = v21;
    v34 = v22;
    v31 = v38;
    sub_23875E2F0();

    sub_238664EA8();
  }

  else
  {
    v25 = a2[1];
    v26 = a2[2];
    v35 = *a2;
    v24 = v35;
    v36 = v25;
    v37 = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v38);
    sub_2386F1FAC(a3, v8);
    sub_23866573C(v8);
    v32 = v24;
    v33 = v25;
    v34 = v26;
    v31 = v38;
    sub_23875E2F0();

    v27 = a2[3];
    v28 = a2[4];
    v29 = a2[5];
    v35 = v27;
    v36 = v28;
    v37 = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
    MEMORY[0x23EE62DC0](&v38);
    sub_2384DB6C8();
    v32 = v27;
    v33 = v28;
    v34 = v29;
    v31 = v38;
    sub_23875E2F0();
  }

  return result;
}

void sub_238664EA8()
{
  v0 = sub_23875EA50();
  v1 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v4;
  v5 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = 0xD000000000000011;
  v6 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0x8000000238785C50;
  *(inited + 80) = v6;
  *(inited + 88) = 0xD000000000000016;
  *(inited + 96) = 0x80000002387850A0;
  v7 = v3;
  v8 = v5;
  v9 = v6;
  v10 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v10;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v14);

  v12 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2386657A4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v13 = sub_23875E910();

  [v12 subject:v0 sendEvent:v13];
}

uint64_t sub_2386650E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionUnitList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23866514C(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TransactionUnitList(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_2386641E8(a1, v6, a2);
}

uint64_t sub_2386651CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12940, &qword_23877B698);
  v8 = MEMORY[0x28223BE20](v7);
  (*(v10 + 16))(&v13 - v9, a1, v7, v8);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12978, &unk_238781900);
  sub_23843A3E8(&qword_27DF12998, &qword_27DF12940, &qword_23877B698, MEMORY[0x277CDD8D0]);
  sub_2386657A4(&qword_27DF0B110, sub_2384FF9D8, MEMORY[0x277D85378]);
  sub_238665440();
  return sub_23875E370();
}

unint64_t sub_2386653BC()
{
  result = qword_27DF12968;
  if (!qword_27DF12968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12960, &unk_23877B6F0);
    sub_238665440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12968);
  }

  return result;
}

unint64_t sub_238665440()
{
  result = qword_27DF12970;
  if (!qword_27DF12970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12978, &unk_238781900);
    sub_2386654F8();
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12970);
  }

  return result;
}

unint64_t sub_2386654F8()
{
  result = qword_27DF12980;
  if (!qword_27DF12980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12988, &qword_23877B700);
    sub_2386657A4(&qword_27DF0C520, type metadata accessor for TransactionView, &unk_238768AE8);
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12980);
  }

  return result;
}

double sub_238665600(char a1)
{
  v3 = *(type metadata accessor for TransactionUnitList(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_238758F50() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_238664AD8(a1, (v1 + v4), v7);
}

uint64_t sub_2386656D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23866573C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C598, &unk_23877B770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2386657A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_23866584C()
{
  sub_2387579D0();
  v0 = sub_2387579A0();
  Controller = type metadata accessor for InsightsFetchController();
  v2 = objc_allocWithZone(Controller);
  *&v2[OBJC_IVAR____TtC12FinanceKitUI23InsightsFetchController_store] = v0;
  v4.receiver = v2;
  v4.super_class = Controller;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_238665948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_23875C1E0();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129A8, &qword_23877B788);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238665A48, 0, 0);
}

uint64_t sub_238665A48()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_238665AF8;
  v2 = v0[10];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  return MEMORY[0x282116E78](v2, v5, v6, v3, v4);
}

uint64_t sub_238665AF8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_238665CC4;
  }

  else
  {
    v2 = sub_238665C0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238665C0C()
{
  v1 = *(v0 + 80);
  v2 = sub_238666CD4(v1);
  v3 = [objc_allocWithZone(FKInsightsRowViewModelCollection) initWithFoundInInsight_];

  sub_238667780(v1);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_238665CC4(__n128 a1)
{
  v18 = v1;
  sub_23875C150();

  v2 = sub_23875C1B0();
  v3 = sub_23875EFE0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 96);
    v5 = *(v1 + 64);
    v16 = *(v1 + 72);
    v6 = *(v1 + 56);
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2384615AC(v8, v7, &v17);
    _os_log_impl(&dword_2383F8000, v2, v3, "Failed to load FoundIn models for transactionId: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x23EE64DF0](v10, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);

    (*(v5 + 8))(v16, v6);
  }

  else
  {
    v12 = *(v1 + 64);
    v11 = *(v1 + 72);
    v13 = *(v1 + 56);

    (*(v12 + 8))(v11, v13);
  }

  v14 = *(v1 + 8);

  return v14(0);
}

uint64_t sub_23866601C(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_23875EA80();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_23875EA80();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_238666118;

  return sub_238665948(v6, v8, v9, v11);
}

uint64_t sub_238666118(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_23875B720();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_2386662F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_23875C1E0();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_238758390();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23866641C, 0, 0);
}

uint64_t sub_23866641C()
{
  (*(v0[11] + 104))(v0[12], *MEMORY[0x277CC6EB8], v0[10]);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_2386664F0;
  v2 = v0[12];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  return MEMORY[0x282116EA8](v6, v5, v3, v4, v2);
}

uint64_t sub_2386664F0(char a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[14] = v1;

  (*(v4[11] + 8))(v4[12], v4[10]);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2386666AC, 0, 0);
  }

  else
  {

    v6 = v5[1];

    return v6(a1 & 1);
  }
}

uint64_t sub_2386666AC(__n128 a1)
{
  v18 = v1;
  sub_23875C150();

  v2 = sub_23875C1B0();
  v3 = sub_23875EFE0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 112);
    v5 = *(v1 + 64);
    v16 = *(v1 + 72);
    v6 = *(v1 + 56);
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2384615AC(v8, v7, &v17);
    _os_log_impl(&dword_2383F8000, v2, v3, "Failed to prune FoundIn models for transactionId: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x23EE64DF0](v10, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);

    (*(v5 + 8))(v16, v6);
  }

  else
  {
    v12 = *(v1 + 64);
    v11 = *(v1 + 72);
    v13 = *(v1 + 56);

    (*(v12 + 8))(v11, v13);
  }

  v14 = *(v1 + 8);

  return v14(0);
}

uint64_t sub_238666A08(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_23875EA80();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_23875EA80();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_238666B04;

  return sub_2386662F8(v6, v8, v9, v11);
}

uint64_t sub_238666B04(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_23875B720();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

id sub_238666CD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129A8, &qword_23877B788);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_238759E60();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238668680(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_238667780(v4);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = sub_238759E50();
    sub_238666ECC(v10);

    v11 = objc_allocWithZone(FKFoundInInsightRowViewModelCollection);
    sub_238449184(0, &qword_27DF129B0, off_278A52968);
    v12 = sub_23875EC60();

    v13 = [v11 initWithMailItemsRowViewModels_];

    (*(v6 + 8))(v8, v5);
    return v13;
  }
}

uint64_t sub_238666ECC(uint64_t a1)
{
  v2 = sub_238759E40();
  v4.n128_f64[0] = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  v8 = *(a1 + 16);
  if (v8)
  {
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v19 = v10;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    v13 = (v9 - 8);
    do
    {
      v14 = v9;
      v19(v6, v11, v2, v4);
      v15 = sub_238667074();
      v16 = (*v13)(v6, v2);
      if (v15)
      {
        MEMORY[0x23EE63730](v16);
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23875EC90();
        }

        sub_23875ECB0();
        v7 = v20;
      }

      v11 += v12;
      --v8;
      v9 = v14;
    }

    while (v8);
  }

  return v7;
}

id sub_238667074()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v2 - 8);
  v57 = &v51 - v3;
  v56 = sub_23875BC40();
  v4 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v58 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238759DE0();
  v55 = v4;
  if (!v6)
  {
    v52 = sub_238759E10();
    v14 = v19;
LABEL_8:
    v54 = 0;
    LODWORD(v53) = 1;
    goto LABEL_30;
  }

  v7 = v6;
  v8 = v1;
  v9 = sub_2386681BC(v7);

  v10 = sub_2384A534C(v9);

  v11 = sub_238759E10();
  v12 = v11;
  v14 = v13;
  if (!v10)
  {
    v52 = v11;
    goto LABEL_8;
  }

  v54 = v10;
  if ((v10 & 0xC000000000000001) != 0)
  {
    if (sub_23875F3A0())
    {

      swift_unknownObjectRetain();
      sub_23875F360();
      sub_238449184(0, &qword_27DF0B0F8, off_278A52960);
      sub_238667AB4();
      sub_23875EEA0();
      v10 = v61;
      v15 = v62;
      v17 = v63;
      v16 = v64;
      v18 = v65;
LABEL_14:
      v53 = v17;
      v23 = (v17 + 64) >> 6;
      while (1)
      {
        if (v10 < 0)
        {
          v27 = sub_23875F3D0();
          if (!v27 || (v59 = v27, sub_238449184(0, &qword_27DF0B0F8, off_278A52960), swift_dynamicCast(), (v26 = v60) == 0))
          {
LABEL_27:
            sub_238434840(v10);
            swift_bridgeObjectRelease_n();
            return 0;
          }
        }

        else
        {
          v24 = v16;
          v25 = v18;
          if (!v18)
          {
            while (1)
            {
              v16 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
                break;
              }

              if (v16 >= v23)
              {
                goto LABEL_27;
              }

              v25 = *(v15 + 8 * v16);
              ++v24;
              if (v25)
              {
                goto LABEL_20;
              }
            }

            __break(1u);
            goto LABEL_43;
          }

LABEL_20:
          v18 = (v25 - 1) & v25;
          v26 = *(*(v10 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v25)))));
          if (!v26)
          {
            goto LABEL_27;
          }
        }

        v28 = [v26 emailType];

        if (v28 == 1)
        {
          sub_238434840(v10);

          if (qword_2814F0880 == -1)
          {
LABEL_26:
            v29 = qword_2814F1B90;
            v30 = sub_23875EA50();
            v31 = sub_23875EA50();
            v32 = sub_23875EA50();
            v33 = [v29 localizedStringForKey:v30 value:v31 table:v32];

            v52 = sub_23875EA80();
            v14 = v34;

            goto LABEL_29;
          }

LABEL_43:
          swift_once();
          goto LABEL_26;
        }
      }
    }
  }

  else if (*(v10 + 16))
  {

    v20 = -1 << *(v10 + 32);
    v15 = v10 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v18 = v22 & *(v10 + 56);

    v16 = 0;
    goto LABEL_14;
  }

  v52 = v12;

LABEL_29:
  LODWORD(v53) = 0;
LABEL_30:
  sub_238759E30();
  sub_238759E00();
  sub_238759E20();
  sub_238759DF0();
  v37 = v36;
  sub_238759DD0();
  v38 = sub_23875EA50();

  v39 = sub_23875EA50();

  v40 = sub_23875BB40();
  if (!v37)
  {
    v41 = 0;
    v42 = v57;
    if (v14)
    {
      goto LABEL_32;
    }

LABEL_34:
    v43 = 0;
    goto LABEL_35;
  }

  v41 = sub_23875EA50();

  v42 = v57;
  if (!v14)
  {
    goto LABEL_34;
  }

LABEL_32:
  v43 = sub_23875EA50();

LABEL_35:
  v44 = v53;
  v45 = sub_23875B940();
  v46 = *(v45 - 8);
  v47 = 0;
  if ((*(v46 + 48))(v42, 1, v45) != 1)
  {
    v47 = sub_23875B860();
    (*(v46 + 8))(v42, v45);
  }

  if (v44)
  {
    v48 = 0;
  }

  else
  {
    sub_238449184(0, &qword_27DF0B0F8, off_278A52960);
    sub_238667AB4();
    v48 = sub_23875EE40();
  }

  v49 = v56;
  v35 = [objc_allocWithZone(FKFoundInMailItemRowViewModel) initWithMessageID:v38 fromEmailAddress:v39 dateSent:v40 fromDisplayName:v41 subject:v43 deeplinkURL:v47 orderDetails:v48];

  (*(v55 + 8))(v58, v49);
  return v35;
}

id InsightsFetchController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InsightsFetchController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_238667780(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129A8, &qword_23877B788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of InsightsFetchController.fetchRowViewModelsForTransaction(withIdentifier:primaryAccountIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x68);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2384617DC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of InsightsFetchController.pruneRowViewModelsForTransaction(withIdentifier:primaryAccountIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x70);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2384617DC;

  return v13(a1, a2, a3, a4);
}

unint64_t sub_238667AB4()
{
  result = qword_27DF0B100;
  if (!qword_27DF0B100)
  {
    sub_238449184(255, &qword_27DF0B0F8, off_278A52960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B100);
  }

  return result;
}

uint64_t sub_238667B1C(uint64_t a1)
{
  v2 = sub_238758450();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0;
  if (v7 != *MEMORY[0x277CC6F50])
  {
    if (v7 == *MEMORY[0x277CC6F38])
    {
      return 1;
    }

    else if (v7 == *MEMORY[0x277CC6F18])
    {
      return 2;
    }

    else if (v7 == *MEMORY[0x277CC6F48])
    {
      return 3;
    }

    else if (v7 == *MEMORY[0x277CC6F40])
    {
      return 4;
    }

    else if (v7 == *MEMORY[0x277CC6F30])
    {
      return 5;
    }

    else if (v7 == *MEMORY[0x277CC6F10])
    {
      return 6;
    }

    else if (v7 == *MEMORY[0x277CC6F28])
    {
      return 7;
    }

    else if (v7 == *MEMORY[0x277CC6F20])
    {
      return 8;
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }
  }

  return v8;
}

uint64_t sub_238667D14(uint64_t a1)
{
  v2 = sub_2387583E0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0;
  if (v7 != *MEMORY[0x277CC6EE8])
  {
    if (v7 == *MEMORY[0x277CC6EE0])
    {
      return 1;
    }

    else if (v7 == *MEMORY[0x277CC6EF0])
    {
      return 2;
    }

    else if (v7 == *MEMORY[0x277CC6EC8])
    {
      return 3;
    }

    else if (v7 == *MEMORY[0x277CC6F08])
    {
      return 4;
    }

    else if (v7 == *MEMORY[0x277CC6F00])
    {
      return 5;
    }

    else if (v7 == *MEMORY[0x277CC6ED8])
    {
      return 6;
    }

    else if (v7 == *MEMORY[0x277CC6ED0])
    {
      return 7;
    }

    else if (v7 == *MEMORY[0x277CC6EF8])
    {
      return 8;
    }

    else if (v7 == *MEMORY[0x277CC6EC0])
    {
      return 9;
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }
  }

  return v8;
}

id sub_238667F28()
{
  v0 = sub_2387583E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238758450();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238759DB0();
  v24 = sub_238667B1C(v7);
  (*(v5 + 8))(v7, v4);
  sub_238759DA0();
  v9 = v8;
  sub_238759D80();
  v11 = v10;
  sub_238759D90();
  v23 = sub_238667D14(v3);
  (*(v1 + 8))(v3, v0);
  sub_238759D70();
  v13 = v12;
  sub_238759D60();
  v15 = v14;
  if (v9)
  {
    v16 = sub_23875EA50();

    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = 0;
    if (v11)
    {
LABEL_3:
      v17 = sub_23875EA50();

      if (v13)
      {
        goto LABEL_4;
      }

LABEL_8:
      v18 = 0;
      if (v15)
      {
        goto LABEL_5;
      }

LABEL_9:
      v19 = 0;
      goto LABEL_10;
    }
  }

  v17 = 0;
  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_4:
  v18 = sub_23875EA50();

  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_5:
  v19 = sub_23875EA50();

LABEL_10:
  v20 = objc_allocWithZone(FKFoundInMailItemRowOrderDetailsViewModel);
  v21 = [v20 initWithEmailType:v24 merchantDisplayName:v16 orderNumber:v17 shippingStatus:v23 shippingDetailsTrackingNumber:v18 shippingDetailsCarrierName:v19];

  return v21;
}

uint64_t sub_2386681BC(uint64_t a1)
{
  v32 = sub_238759DC0();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v25 = v1;
    v35 = MEMORY[0x277D84F90];
    sub_23875F4E0();
    v7 = a1 + 56;
    result = sub_23875F320();
    v8 = result;
    v9 = 0;
    v10 = *(a1 + 36);
    v29 = v3 + 8;
    v30 = v3 + 16;
    v26 = a1 + 64;
    v27 = v3;
    v28 = v10;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      if (v10 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v33 = v9;
      v10 = v5;
      v13 = *(a1 + 48) + *(v3 + 72) * v8;
      v14 = a1;
      v16 = v31;
      v15 = v32;
      (*(v3 + 16))(v31, v13, v32);
      v34 = sub_238667F28();
      v17 = v16;
      a1 = v14;
      (*(v3 + 8))(v17, v15);
      sub_23875F4C0();
      sub_23875F4F0();
      sub_23875F500();
      result = sub_23875F4D0();
      v11 = 1 << *(v14 + 32);
      if (v8 >= v11)
      {
        goto LABEL_23;
      }

      v18 = *(v7 + 8 * v12);
      if ((v18 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v5 = v10;
      LODWORD(v10) = v28;
      if (v28 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        v11 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v12 << 6;
        v21 = v12 + 1;
        v22 = (v26 + 8 * v12);
        while (v21 < (v11 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_238434834(v8, v28, 0);
            v11 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_238434834(v8, v28, 0);
      }

LABEL_4:
      v9 = v33 + 1;
      v8 = v11;
      v3 = v27;
      if (v33 + 1 == v5)
      {
        return v35;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2386684B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_238449A7C;

  return sub_238666A08(v2, v3, v5, v4);
}

uint64_t objectdestroyTm_27()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2386685C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2384494A4;

  return sub_23866601C(v2, v3, v5, v4);
}

uint64_t sub_238668680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129A8, &qword_23877B788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void View.installWalletAlert(isPresented:completion:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = sub_23875EA50();
  v8 = PKLocalizedDeletableString(v7);

  if (v8)
  {
    sub_23875EA80();

    MEMORY[0x28223BE20](v9);
    MEMORY[0x28223BE20](v10);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C718, &qword_2387708F0);
    sub_2384397A8(v11, v12, v13);
    sub_2384E2C4C();
    sub_23875DEC0();
  }

  else
  {
    __break(1u);
  }
}

void sub_2386688A4(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v48 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v43 - v13;
  MEMORY[0x28223BE20](v14);
  v46 = &v43 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  sub_23875ED50();
  v45 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = sub_23875EA50();
  v20 = PKLocalizedDeletableString(v19);

  if (v20)
  {
    v43 = v11;
    v44 = a3;
    v21 = sub_23875EA80();
    v23 = v22;

    v49 = v21;
    v50 = v23;
    v24 = swift_allocObject();
    v25 = v48;
    *(v24 + 16) = a1;
    *(v24 + 24) = v25;
    v26 = sub_238455C54(a1, v25);
    sub_2384397A8(v26, v27, v28);
    sub_23875E230();
    v29 = sub_23875EA50();
    v30 = PKLocalizedDeletableString(v29);

    if (v30)
    {
      v31 = sub_23875EA80();
      v33 = v32;

      v49 = v31;
      v50 = v33;
      sub_23875C3B0();
      v34 = sub_23875C3C0();
      (*(*(v34 - 8) + 56))(v7, 0, 1, v34);
      v35 = swift_allocObject();
      *(v35 + 16) = a1;
      *(v35 + 24) = v25;
      sub_238455C54(a1, v25);
      v36 = v46;
      sub_23875E220();
      v37 = *(v9 + 16);
      v38 = v47;
      v37(v47, v18, v8);
      v39 = v43;
      v37(v43, v36, v8);
      v40 = v44;
      v37(v44, v38, v8);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C740, &unk_238770930);
      v37(&v40[*(v41 + 48)], v39, v8);
      v42 = *(v9 + 8);
      v42(v36, v8);
      v42(v18, v8);
      v42(v39, v8);
      v42(v38, v8);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_238668D3C(void (*a1)(uint64_t))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  PKOpenInstallWallet();
  if (a1)
  {
    a1(1);
  }

  return result;
}

double sub_238668DF8(void (*a1)(void, __n128))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    (a1)(0);
  }

  return result;
}

void sub_238668EB0(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875EA50();
  v3 = PKLocalizedDeletableString(v2);

  if (v3)
  {
    sub_23875EA80();

    sub_2384397A8(v4, v5, v6);
    v7 = sub_23875DAA0();
    v9 = v8;
    v11 = v10;
    v13 = v12;

    *a1 = v7;
    *(a1 + 8) = v9;
    *(a1 + 16) = v11 & 1;
    *(a1 + 24) = v13;
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for WidgetBalanceUpdatedTime(uint64_t a1)
{
  result = qword_27DF129B8;
  if (!qword_27DF129B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238669054(uint64_t a1)
{
  result = sub_23875BC40();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2386690DC@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F0, &qword_23877B880);
  MEMORY[0x28223BE20](v1 - 8);
  v57 = &v43 - v2;
  v3 = sub_23875D990();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v54 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_23875D520();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_23875BBC0();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875CE30();
  v9 = *(v8 - 8);
  v48 = v8;
  v49 = v9;
  MEMORY[0x28223BE20](v8);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129C8, &qword_23877B888);
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v14 = sub_23875CEF0();
  MEMORY[0x28223BE20](v14 - 8);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129D0, &qword_23877B890);
  MEMORY[0x28223BE20](v52);
  v16 = &v43 - v15;
  sub_23875CED0();
  sub_23875CEC0();
  sub_23875BC40();
  sub_23875C800();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129D8, &qword_23877B898);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_238763320;
  sub_23875BB90();
  sub_23875BBA0();
  sub_23875BB70();
  sub_23875BB80();
  sub_23875BBB0();
  sub_2386698EC(v17, v18);
  swift_setDeallocating();
  v19 = v45;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_23875BB70();
  v20 = v44;
  sub_23875B420();

  (*(v43 + 8))(v7, v19);
  sub_238669F88(&qword_27DF129E0, MEMORY[0x277CE0090], MEMORY[0x277CE0088]);
  v21 = v48;
  sub_23875CEE0();
  (*(v49 + 8))(v20, v21);
  (*(v46 + 8))(v13, v47);
  sub_23875CEC0();
  sub_23875CF10();
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v22 = qword_2814F1B90;
  v23 = sub_23875DA90();
  v25 = v24;
  v27 = v26;
  v28 = v50;
  sub_23875D390();
  v29 = v53;
  sub_23875D9F0();
  sub_2384397FC(v23, v25, v27 & 1);

  (*(v51 + 8))(v28, v29);
  v31 = v54;
  v30 = v55;
  v32 = v56;
  (*(v55 + 104))(v54, *MEMORY[0x277CE0AA0], v56);
  v33 = sub_23875D840();
  v34 = v57;
  (*(*(v33 - 8) + 56))(v57, 1, 1, v33);
  v35 = sub_23875D8D0();
  sub_238669C10(v34);
  (*(v30 + 8))(v31, v32);
  KeyPath = swift_getKeyPath(byte_23877B8A0);
  v37 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129E8, &qword_23877B8D0) + 36)];
  *v37 = KeyPath;
  v37[1] = v35;
  LODWORD(v35) = sub_23875D440();
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129F0, &qword_23877B8D8) + 36)] = v35;
  v38 = swift_getKeyPath(byte_23877B8E0);
  v39 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129F8, &qword_23877B910) + 36)];
  *v39 = v38;
  *(v39 + 1) = 1;
  v39[16] = 0;
  v40 = swift_getKeyPath(aX_16);
  v41 = &v16[*(v52 + 36)];
  *v41 = v40;
  v41[1] = 0x3FE8000000000000;
  sub_238669C78();
  sub_23875DAB0();
  return sub_2384262E4(v16);
}

uint64_t sub_2386698EC(uint64_t a1, double a2)
{
  v3 = sub_23875BBC0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v31 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12A20, &qword_23877B948);
    v10 = sub_23875F450();
    v11 = 0;
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v36 = v13;
    v37 = v10 + 56;
    v34 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    v32 = v9;
    v33 = (v12 + 16);
    while (1)
    {
      v35 = v11;
      v36(v38, v34 + v14 * v11, v3);
      sub_238669F88(&qword_27DF12A28, MEMORY[0x277CC94F0], MEMORY[0x277CC94F8]);
      v16 = sub_23875E950();
      v17 = -1 << *(v10 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *(v37 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        do
        {
          v23 = v12;
          v36(v6, *(v10 + 48) + v18 * v14, v3);
          sub_238669F88(&unk_27DF12A30, MEMORY[0x277CC94F0], MEMORY[0x277CC9500]);
          v24 = sub_23875E9E0();
          v25 = *v15;
          (*v15)(v6, v3);
          if (v24)
          {
            v25(v38, v3);
            v12 = v23;
            v9 = v32;
            goto LABEL_4;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *(v37 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v12 = v23;
        }

        while (((1 << v18) & v20) != 0);
        v9 = v32;
      }

      v26 = v38;
      *(v37 + 8 * v19) = v21 | v20;
      result = (*v33)(*(v10 + 48) + v18 * v14, v26, v3);
      v28 = *(v10 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      *(v10 + 16) = v30;
LABEL_4:
      v11 = v35 + 1;
      if (v35 + 1 == v9)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_238669C10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F0, &qword_23877B880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_238669C78()
{
  result = qword_27DF12A00;
  if (!qword_27DF12A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF129D0, &qword_23877B890);
    sub_238669D30();
    sub_23843A3E8(&qword_27DF10188, &qword_27DF10190, &qword_238774FC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12A00);
  }

  return result;
}

unint64_t sub_238669D30()
{
  result = qword_27DF12A08;
  if (!qword_27DF12A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF129F8, &qword_23877B910);
    sub_238669DE8();
    sub_23843A3E8(&qword_2814F0928, &qword_27DF09360, &unk_23876F830, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12A08);
  }

  return result;
}

unint64_t sub_238669DE8()
{
  result = qword_27DF12A10;
  if (!qword_27DF12A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF129F0, &qword_23877B8D8);
    sub_238669EA0();
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12A10);
  }

  return result;
}

unint64_t sub_238669EA0()
{
  result = qword_27DF12A18;
  if (!qword_27DF12A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF129E8, &qword_23877B8D0);
    sub_23875D520();
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12A18);
  }

  return result;
}

uint64_t sub_238669F88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_238669FD0()
{
  v1 = sub_23875F0C0();
  v2 = *(v1 - 8);
  v28 = v1;
  v29 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_23875BCB0();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_27DF12AC8;
  sub_238758890();
  *(v0 + v8) = sub_238758880();
  v9 = qword_27DF12AD0;
  sub_238759370();
  swift_allocObject();
  v10 = sub_238759360();
  type metadata accessor for OrderManagementModel(0);
  v11 = swift_allocObject();
  *(v0 + v9) = sub_238671D64(v10, v11);
  v12 = qword_27DF12AD8;
  type metadata accessor for AnalyticsSession();
  v13 = swift_allocObject();
  sub_23875BCA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B530, &qword_2387637F0);
  v14 = swift_allocObject();
  *(v14 + ((*(*v14 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v5 + 32))(v14 + *(*v14 + *MEMORY[0x277D841D0] + 16), v7, v27);
  *(v13 + 16) = v14;
  *(v0 + v12) = v13;
  *(v0 + qword_27DF12AE0) = MEMORY[0x277D84FA0];
  v15 = *(v0 + v8);
  sub_2386729C4(&qword_27DF12A40, type metadata accessor for OrderManagementModel, &protocol conformance descriptor for OrderManagementModel);

  v16 = sub_23875C7A0();
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v33 = v13;
  v18 = sub_23875D080();
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 defaultCenter];
  sub_23875F0D0();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2386729C4(&qword_27DF12C18, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  v22 = v28;
  sub_23875C360();

  v23 = *(v29 + 8);
  v23(v4, v22);
  swift_beginAccess();
  sub_23875C210();
  swift_endAccess();

  v24 = [v19 defaultCenter];
  sub_23875F0D0();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_23875C360();

  v23(v4, v22);
  swift_beginAccess();
  sub_23875C210();
  swift_endAccess();

  return v20;
}

void sub_23866A560()
{
  v1 = *MEMORY[0x277D38548];
  v2 = objc_opt_self();
  v3 = [v2 reporterForSubject_];
  if (v3)
  {
  }

  else
  {
    [v2 beginSubjectReporting_];
    v4 = *(*(v0 + qword_27DF12AD8) + 16);
    v5 = *(*v4 + *MEMORY[0x277D841D0] + 16);
    v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v4 + v6));
    v7 = sub_23875BCB0();
    (*(*(v7 - 8) + 8))(v4 + v5, v7);
    sub_23875BCA0();

    os_unfair_lock_unlock((v4 + v6));
  }
}

uint64_t type metadata accessor for OrderManagementViewController(uint64_t a1)
{
  result = qword_27DF12AE8;
  if (!qword_27DF12AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id OrderManagementViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OrderManagementViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrderManagementViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t OrderManagementView.init(coreDataProvider:model:analyticsSession:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  type metadata accessor for OrderManagementModel(0);
  sub_2386729C4(&qword_27DF12A40, type metadata accessor for OrderManagementModel, &protocol conformance descriptor for OrderManagementModel);
  result = sub_23875C7A0();
  a4[1] = result;
  a4[2] = v7;
  a4[3] = a3;
  return result;
}

void sub_23866A9D8(uint64_t a1, uint64_t a2)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *MEMORY[0x277D38548];
    v5 = objc_opt_self();
    v6 = [v5 reporterForSubject_];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      [v5 beginSubjectReporting_];
      v8 = *(*&v3[qword_27DF12AD8] + 16);
      v9 = *(*v8 + *MEMORY[0x277D841D0] + 16);
      v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v8 + v10));
      v11 = sub_23875BCB0();
      (*(*(v11 - 8) + 8))(v8 + v9, v11);
      sub_23875BCA0();
      os_unfair_lock_unlock((v8 + v10));
    }
  }

  else
  {
  }
}

double sub_23866ABAC(uint64_t a1, uint64_t a2)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v3 = *MEMORY[0x277D38548];
    v4 = objc_opt_self();
    v5 = [v4 reporterForSubject_];
    if (v5)
    {

      [v4 endSubjectReporting_];
    }
  }

  return result;
}

void sub_23866ACB0(void *a1)
{
  v2 = v1;
  v4 = sub_23875BCB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = qword_27DF12AC8;
  sub_238758890();
  *(v2 + v8) = sub_238758880();
  v9 = qword_27DF12AD0;
  sub_238759370();
  swift_allocObject();
  v10 = sub_238759360();
  type metadata accessor for OrderManagementModel(0);
  v11 = swift_allocObject();
  *(v2 + v9) = sub_238671D64(v10, v11);
  v12 = qword_27DF12AD8;
  type metadata accessor for AnalyticsSession();
  v13 = swift_allocObject();
  sub_23875BCA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B530, &qword_2387637F0);
  v14 = swift_allocObject();
  *(v14 + ((*(*v14 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v5 + 32))(v14 + *(*v14 + *MEMORY[0x277D841D0] + 16), v7, v4);
  *(v13 + 16) = v14;
  *(v2 + v12) = v13;
  *(v2 + qword_27DF12AE0) = MEMORY[0x277D84FA0];
  sub_23875F520();
  __break(1u);
}

void sub_23866AF0C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23866ACB0(a3);
}

uint64_t sub_23866AF8C()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

void sub_23866B014(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12BE0, &qword_238783420);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24[-v6 - 8];
  v8 = sub_23875A820();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = type metadata accessor for OrderManagementViewController(0);
  v27.receiver = v2;
  v27.super_class = v12;
  objc_msgSendSuper2(&v27, sel_viewWillAppear_, a1 & 1);
  v13 = *MEMORY[0x277D38548];
  v14 = objc_opt_self();
  v15 = [v14 reporterForSubject_];
  if (v15)
  {
  }

  else
  {
    [v14 beginSubjectReporting_];
    v16 = *(*&v2[qword_27DF12AD8] + 16);
    v17 = *(*v16 + *MEMORY[0x277D841D0] + 16);
    v18 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v16 + v18));
    v19 = sub_23875BCB0();
    (*(*(v19 - 8) + 8))(v16 + v17, v19);
    sub_23875BCA0();
    os_unfair_lock_unlock((v16 + v18));
  }

  sub_23875A7E0();
  sub_2387579D0();
  sub_2387579A0();
  v26[3] = v8;
  v26[4] = MEMORY[0x277CC7F68];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  if (sub_238757940())
  {
    v25 = 0;
    sub_23845C998(v26, v24);
    sub_238757A30();
    sub_238757A00();
    sub_2387579E0();
    (*(v5 + 8))(v7, v4);
    v21 = v24[0];
    __swift_destroy_boxed_opaque_existential_1(v26);

    (*(v9 + 8))(v11, v8);
    if ((v21 & 1) == 0)
    {
      type metadata accessor for OrderWelcomeViewController();
      v22 = sub_2386FF47C();
      [v2 presentViewController:v22 animated:1 completion:0];
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v26);

    (*(v9 + 8))(v11, v8);
  }
}

void sub_23866B3D8(void *a1, uint64_t a2, char a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1;
  sub_23866B014(a3);
}

void sub_23866B4A4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for OrderManagementViewController(0);
  v5 = a1;
  objc_msgSendSuper2(&v9, sel_viewWillDisappear_, a3);
  v6 = *MEMORY[0x277D38548];
  v7 = objc_opt_self();
  v8 = [v7 reporterForSubject_];
  if (v8)
  {

    [v7 endSubjectReporting_];
  }
}

void sub_23866B5C0(void *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_23866A560();
}

double sub_23866B678()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = *MEMORY[0x277D38548];
  v1 = objc_opt_self();
  v2 = [v1 reporterForSubject_];
  if (v2)
  {

    [v1 endSubjectReporting_];
  }

  return result;
}

double sub_23866B758()
{

  return result;
}

id sub_23866B7D4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_23866B80C(uint64_t a1)
{

  return result;
}

void sub_23866B878(char *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath(aP_17);
  swift_getKeyPath(aP_18);
  v2 = a1;
  sub_23875C2D0();

  swift_getKeyPath(a0_11);
  swift_getKeyPath(byte_23877BC88);
  sub_23875C2E0();
}

void sub_23866B9AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v55 = a8;
  v56 = a3;
  v52 = a7;
  v57 = a5;
  v58 = a6;
  v13 = sub_23875A710();
  v53 = *(v13 - 8);
  v14 = *(v53 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v54 = &v50 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v50 - v19;
  v59 = *&v8[qword_27DF12AC8];
  sub_238758890();
  v21 = sub_238758A30();
  if (sub_2387576F0() == a1 && v22 == a2)
  {

LABEL_5:
    v24 = sub_23875ED80();
    (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
    sub_23875ED50();
    v25 = v58;

    v26 = v9;

    v27 = v21;
    v28 = sub_23875ED40();
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D85700];
    v29[2] = v28;
    v29[3] = v30;
    v32 = v56;
    v31 = v57;
    v29[4] = v26;
    v29[5] = v32;
    v29[6] = a4;
    v29[7] = v27;
    v29[8] = v31;
    v29[9] = v25;
    sub_2386C3BA4(0, 0, v20, &unk_23877BCD0, v29);

    return;
  }

  v51 = v13;
  v23 = sub_23875F630();

  if (v23)
  {
    goto LABEL_5;
  }

  v33 = v54;
  sub_23875A6E0();
  v34 = sub_23875ED80();
  (*(*(v34 - 8) + 56))(v20, 1, 1, v34);
  v35 = v53;
  (*(v53 + 16))(v15, v33, v51);
  sub_23875ED50();

  v50 = v9;
  v56 = v21;
  v36 = v58;

  v37 = sub_23875ED40();
  v38 = (*(v35 + 80) + 40) & ~*(v35 + 80);
  v39 = (v14 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = MEMORY[0x277D85700];
  v41[2] = v37;
  v41[3] = v42;
  v41[4] = v50;
  v43 = v41 + v38;
  v44 = v51;
  (*(v35 + 32))(v43, v15, v51);
  v46 = v56;
  v45 = v57;
  *(v41 + v39) = v56;
  v47 = (v41 + v40);
  *v47 = v45;
  v47[1] = v36;
  v48 = (v41 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8));
  v49 = v55;
  *v48 = v52;
  v48[1] = v49;
  sub_2386C3BA4(0, 0, v20, &unk_23877BCC0, v41);

  (*(v35 + 8))(v54, v44);
}

uint64_t sub_23866BE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v14;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v9 = sub_23875C1E0();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  sub_23875ED50();
  v8[13] = sub_23875ED40();
  v11 = sub_23875ECE0();
  v8[14] = v11;
  v8[15] = v10;

  return MEMORY[0x2822009F8](sub_23866BF08, v11, v10);
}

uint64_t sub_23866BF08()
{
  *(v0 + 128) = sub_238758870();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_23866BFB4;

  return MEMORY[0x282117410]();
}

uint64_t sub_23866BFB4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_23866C45C;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_23866C0D0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23866C0D0()
{
  v30 = v0;
  v1 = v0[18];

  sub_238759480();
  v2 = sub_238759430();
  if (v1)
  {
    sub_23875C180();

    v3 = v1;
    v4 = sub_23875C1B0();
    v5 = sub_23875EFE0();

    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    if (v6)
    {
      v11 = v0[5];
      v10 = v0[6];
      v28 = v0[10];
      v12 = swift_slowAlloc();
      v27 = v7;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_2384615AC(v11, v10, &v29);
      *(v12 + 12) = 2112;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v16;
      *v13 = v16;
      _os_log_impl(&dword_2383F8000, v4, v5, "Failed to fetch extracted order for %s with error: %@", v12, 0x16u);
      sub_238455DD4(v13);
      MEMORY[0x23EE64DF0](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x23EE64DF0](v14, -1, -1);
      MEMORY[0x23EE64DF0](v12, -1, -1);

      (*(v8 + 8))(v27, v28);
    }

    else
    {

      (*(v8 + 8))(v7, v9);
    }
  }

  else if (v2)
  {
    v18 = v0[8];
    v17 = v0[9];
    v20 = v0[5];
    v19 = v0[6];
    swift_getKeyPath(aP_17);
    swift_getKeyPath(aP_18);
    sub_23875C2D0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12BD0, &unk_238777400);
    v21 = *(type metadata accessor for OrderNavigationDestination(0) - 8);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_2387632F0;
    v24 = (v23 + v22);
    *v24 = v20;
    v24[1] = v19;
    v24[2] = v18;
    v24[3] = v17;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath(a0_11);
    swift_getKeyPath(byte_23877BC88);
    v0[3] = v23;

    sub_23875C2E0();
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_23866C45C()
{
  v21 = v0;

  v1 = v0[18];
  sub_23875C180();

  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];
  if (v5)
  {
    v10 = v0[5];
    v9 = v0[6];
    v19 = v0[10];
    v11 = swift_slowAlloc();
    v18 = v6;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_2384615AC(v10, v9, &v20);
    *(v11 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_2383F8000, v3, v4, "Failed to fetch extracted order for %s with error: %@", v11, 0x16u);
    sub_238455DD4(v12);
    MEMORY[0x23EE64DF0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x23EE64DF0](v13, -1, -1);
    MEMORY[0x23EE64DF0](v11, -1, -1);

    (*(v7 + 8))(v18, v19);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_23866C66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v15;
  v8[9] = v16;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = sub_23875A710();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v10 = sub_23875C1E0();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  sub_23875ED50();
  v8[16] = sub_23875ED40();
  v12 = sub_23875ECE0();
  v8[17] = v12;
  v8[18] = v11;

  return MEMORY[0x2822009F8](sub_23866C7D0, v12, v11);
}

uint64_t sub_23866C7D0()
{
  *(v0 + 152) = sub_238758870();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_23866C87C;

  return MEMORY[0x282117410]();
}

uint64_t sub_23866C87C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_23866CD10;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_23866C998;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23866C998()
{
  v39 = v0;
  v1 = v0[21];

  sub_238757DF0();
  v2 = sub_238757D50();
  if (v1)
  {
    v4 = v0[11];
    v3 = v0[12];
    v5 = v0[10];
    v6 = v0[4];
    sub_23875C180();
    (*(v4 + 16))(v3, v6, v5);
    v7 = v1;
    v8 = sub_23875C1B0();
    v9 = sub_23875EFE0();

    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[12];
    v14 = v0[13];
    v15 = v0[10];
    v16 = v0[11];
    if (v10)
    {
      v37 = v0[13];
      v17 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38 = v35;
      *v17 = 136315394;
      sub_2386729C4(&qword_27DF12BD8, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
      v36 = v11;
      v18 = sub_23875F600();
      v33 = v9;
      v20 = v19;
      (*(v16 + 8))(v13, v15);
      v21 = sub_2384615AC(v18, v20, &v38);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2112;
      v22 = v1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v34 = v23;
      _os_log_impl(&dword_2383F8000, v8, v33, "Failed to fetch order for %s with error: %@", v17, 0x16u);
      sub_238455DD4(v34);
      MEMORY[0x23EE64DF0](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x23EE64DF0](v35, -1, -1);
      MEMORY[0x23EE64DF0](v17, -1, -1);

      (*(v12 + 8))(v36, v37);
    }

    else
    {

      (*(v16 + 8))(v13, v15);
      (*(v12 + 8))(v11, v14);
    }
  }

  else if (v2)
  {
    v24 = v0[8];
    v25 = v0[9];
    v27 = v0[6];
    v26 = v0[7];
    v28 = v2;
    swift_getKeyPath(aP_17);
    swift_getKeyPath(aP_18);
    v29 = v28;
    sub_23875C2D0();

    v30 = v0[2];
    OrderNavigationModel.navigate(to:fulfillmentIdentifier:sourceApplication:)(v29, v27, v26, v24, v25);
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_23866CD10()
{
  v31 = v0;

  v1 = v0[21];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[4];
  sub_23875C180();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_23875C1B0();
  v8 = sub_23875EFE0();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[12];
  v13 = v0[13];
  v14 = v0[10];
  v15 = v0[11];
  if (v9)
  {
    v29 = v0[13];
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v30 = v27;
    *v16 = 136315394;
    sub_2386729C4(&qword_27DF12BD8, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
    v28 = v10;
    v17 = sub_23875F600();
    v25 = v8;
    v19 = v18;
    (*(v15 + 8))(v12, v14);
    v20 = sub_2384615AC(v17, v19, &v30);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    v21 = v1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v22;
    *v26 = v22;
    _os_log_impl(&dword_2383F8000, v7, v25, "Failed to fetch order for %s with error: %@", v16, 0x16u);
    sub_238455DD4(v26);
    MEMORY[0x23EE64DF0](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x23EE64DF0](v27, -1, -1);
    MEMORY[0x23EE64DF0](v16, -1, -1);

    (*(v11 + 8))(v28, v29);
  }

  else
  {

    (*(v15 + 8))(v12, v14);
    (*(v11 + 8))(v10, v13);
  }

  v23 = v0[1];

  return v23();
}

double sub_23866CFD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_23875EA80();
  v11 = v10;
  v12 = sub_23875EA80();
  v14 = v13;
  if (a5)
  {
    v15 = sub_23875EA80();
    a5 = v16;
    if (a6)
    {
LABEL_5:
      v17 = sub_23875EA80();
      a6 = v18;
      goto LABEL_8;
    }
  }

  else
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
LABEL_8:
  v19 = a1;
  sub_23866B9AC(v9, v11, v12, v14, v15, a5, v17, a6);

  return result;
}

uint64_t sub_23866D140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = sub_23875C1E0();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v10 = sub_23875A710();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  sub_23875ED50();
  v8[16] = sub_23875ED40();
  v12 = sub_23875ECE0();
  v8[17] = v12;
  v8[18] = v11;

  return MEMORY[0x2822009F8](sub_23866D2A4, v12, v11);
}

uint64_t sub_23866D2A4()
{
  *(v0 + 152) = sub_238758870();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_23866D350;

  return MEMORY[0x282117410]();
}

uint64_t sub_23866D350()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_23866D8EC;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_23866D46C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23866D46C()
{
  v43 = v0;
  v1 = v0[21];

  sub_238757DF0();
  v2 = sub_238757D50();
  if (v1)
  {
    v4 = v0[13];
    v3 = v0[14];
    v5 = v0[12];
    v6 = v0[5];
    sub_23875C180();
    (*(v4 + 16))(v3, v6, v5);
    v7 = v1;
    v8 = sub_23875C1B0();
    v9 = sub_23875EFE0();

    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[13];
    v11 = v0[14];
    v14 = v0[11];
    v13 = v0[12];
    v16 = v0[9];
    v15 = v0[10];
    if (v10)
    {
      v40 = v0[9];
      v17 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42 = v38;
      *v17 = 136315394;
      sub_2386729C4(&qword_27DF12BD8, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
      v39 = v14;
      v18 = sub_23875F600();
      v36 = v9;
      v20 = v19;
      (*(v12 + 8))(v11, v13);
      v21 = sub_2384615AC(v18, v20, &v42);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2112;
      v22 = v1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v37 = v23;
      _os_log_impl(&dword_2383F8000, v8, v36, "Failed to fetch order for %s with error: %@", v17, 0x16u);
      sub_238455DD4(v37);
      MEMORY[0x23EE64DF0](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x23EE64DF0](v38, -1, -1);
      MEMORY[0x23EE64DF0](v17, -1, -1);

      (*(v15 + 8))(v39, v40);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
      (*(v15 + 8))(v14, v16);
    }
  }

  else
  {
    v24 = v2;
    if (v2)
    {
      v25 = v0[15];
      v26 = v0[12];
      v27 = v0[13];
      v28 = v0[8];
      v41 = v0[7];
      swift_getKeyPath(aP_17);
      swift_getKeyPath(aP_18);
      sub_23875C2D0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12BD0, &unk_238777400);
      v29 = *(type metadata accessor for OrderNavigationDestination(0) - 8);
      v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_2387632F0;
      v32 = v31 + v30;
      sub_238757D40();
      (*(v27 + 32))(v32, v25, v26);
      v33 = (v32 + *(type metadata accessor for ReturnDetailsDestination(0) + 20));
      *v33 = v41;
      v33[1] = v28;
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath(a0_11);
      swift_getKeyPath(byte_23877BC88);
      v0[3] = v31;

      sub_23875C2E0();
    }
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_23866D8EC()
{
  v31 = v0;

  v1 = v0[21];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = v0[5];
  sub_23875C180();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_23875C1B0();
  v8 = sub_23875EFE0();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[13];
  v10 = v0[14];
  v13 = v0[11];
  v12 = v0[12];
  v15 = v0[9];
  v14 = v0[10];
  if (v9)
  {
    v29 = v0[9];
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v30 = v27;
    *v16 = 136315394;
    sub_2386729C4(&qword_27DF12BD8, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
    v28 = v13;
    v17 = sub_23875F600();
    v25 = v8;
    v19 = v18;
    (*(v11 + 8))(v10, v12);
    v20 = sub_2384615AC(v17, v19, &v30);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    v21 = v1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v22;
    *v26 = v22;
    _os_log_impl(&dword_2383F8000, v7, v25, "Failed to fetch order for %s with error: %@", v16, 0x16u);
    sub_238455DD4(v26);
    MEMORY[0x23EE64DF0](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x23EE64DF0](v27, -1, -1);
    MEMORY[0x23EE64DF0](v16, -1, -1);

    (*(v14 + 8))(v28, v29);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
    (*(v14 + 8))(v13, v15);
  }

  v23 = v0[1];

  return v23();
}

double sub_23866DBB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_23875EA80();
  v10 = v9;
  v11 = sub_23875EA80();
  v13 = v12;
  v14 = sub_23875EA80();
  v16 = v15;
  if (a6)
  {
    sub_23875EA80();
  }

  v17 = a1;
  sub_23867223C(v8, v10, v11, v13, v14, v16);

  return result;
}

void sub_23866DD04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23875B940();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  v19[1] = *&v1[qword_27DF12AC8];
  sub_238758890();
  v11 = sub_238758A30();
  v12 = sub_23875ED80();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  (*(v5 + 16))(v7, a1, v4);
  sub_23875ED50();
  v13 = v2;
  v14 = v11;
  v15 = sub_23875ED40();
  v16 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 2) = v15;
  *(v17 + 3) = v18;
  *(v17 + 4) = v13;
  *(v17 + 5) = v14;
  (*(v5 + 32))(&v17[v16], v7, v4);
  sub_2386C3BA4(0, 0, v10, &unk_23877BC78, v17);
}

uint64_t sub_23866DF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_23875B940();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = sub_23875C1E0();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v9 = sub_238759BE0();
  v6[21] = v9;
  v6[22] = *(v9 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  sub_23875ED50();
  v6[25] = sub_23875ED40();
  v10 = sub_23875ECE0();
  v6[26] = v10;
  v6[27] = v11;

  return MEMORY[0x2822009F8](sub_23866E15C, v10, v11);
}

uint64_t sub_23866E15C()
{
  *(v0 + 224) = sub_238758870();
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_23866E234;

  return MEMORY[0x282117410]();
}

uint64_t sub_23866E234()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_23866ED80;
  }

  else
  {

    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_23866E384;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23866E384()
{
  v93 = v0;
  v92[2] = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 80) persistentStoreCoordinator];
  if (v1 && (v2 = v1, v3 = sub_23875B860(), v4 = [v2 managedObjectIDForURIRepresentation_], v3, v2, v4))
  {
    v5 = *(v0 + 80);
    *(v0 + 32) = 0;
    v6 = [v5 existingObjectWithID:v4 error:v0 + 32];
    v7 = *(v0 + 32);
    if (v6)
    {
      v8 = v6;
      sub_238757DF0();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = v9;
        v11 = v7;

        swift_getKeyPath(aP_17);
        swift_getKeyPath(aP_18);
        v12 = v8;
        sub_23875C2D0();

        v13 = *(v0 + 64);
        OrderNavigationModel.navigate(to:fulfillmentIdentifier:sourceApplication:)(v10, 0, 0, 0, 0);
      }

      else
      {
        sub_238759C20();
        v54 = swift_dynamicCastClass();
        v55 = v7;
        if (v54)
        {
          v56 = *(v0 + 192);
          v57 = *(v0 + 168);
          v58 = *(v0 + 176);
          sub_238759BF0();
          v59 = (*(v58 + 88))(v56, v57);
          if (v59 == *MEMORY[0x277CC7C50])
          {
            v60 = *(v0 + 192);
            v61 = *(v0 + 168);
            v62 = *(v0 + 176);

            (*(v62 + 96))(v60, v61);
            v63 = *v60;
            swift_getKeyPath(aP_17);
            swift_getKeyPath(aP_18);
            sub_23875C2D0();

            v64 = *(v0 + 56);
            OrderNavigationModel.navigate(to:fulfillmentIdentifier:sourceApplication:)(v63, 0, 0, 0, 0);
          }

          else
          {
            v72 = *(v0 + 168);
            v73 = *(v0 + 176);
            if (v59 != *MEMORY[0x277CC7C58])
            {
              v84 = *(v0 + 184);
              v92[0] = 0;
              v92[1] = 0xE000000000000000;
              sub_23875F470();
              *(v0 + 16) = 0;
              *(v0 + 24) = 0xE000000000000000;
              MEMORY[0x23EE63650](0xD00000000000001BLL, 0x80000002387896F0);
              sub_238759BF0();
              sub_23875F510();
              (*(v73 + 8))(v84, v72);
              return sub_23875F520();
            }

            v74 = *(v0 + 192);

            (*(v73 + 96))(v74, v72);
            v75 = *v74;
            swift_getKeyPath(aP_17);
            swift_getKeyPath(aP_18);
            sub_23875C2D0();

            v76 = [v75 trackedOrderIdentifier];
            v77 = sub_23875EA80();
            v79 = v78;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12BD0, &unk_238777400);
            v80 = *(type metadata accessor for OrderNavigationDestination(0) - 8);
            v81 = (*(v80 + 80) + 32) & ~*(v80 + 80);
            v82 = swift_allocObject();
            *(v82 + 16) = xmmword_2387632F0;
            v83 = (v82 + v81);
            *v83 = v77;
            v83[1] = v79;
            v83[2] = 0;
            v83[3] = 0;
            swift_storeEnumTagMultiPayload();
            swift_getKeyPath(a0_11);
            swift_getKeyPath(byte_23877BC88);
            *(v0 + 48) = v82;
            sub_23875C2E0();
          }
        }

        else
        {

          sub_23875C180();
          v65 = sub_23875C1B0();
          v66 = sub_23875EFE0();
          v67 = os_log_type_enabled(v65, v66);
          v68 = *(v0 + 160);
          v69 = *(v0 + 120);
          v70 = *(v0 + 128);
          if (v67)
          {
            v71 = swift_slowAlloc();
            *v71 = 0;
            _os_log_impl(&dword_2383F8000, v65, v66, "Unexpected object type", v71, 2u);
            MEMORY[0x23EE64DF0](v71, -1, -1);
          }

          else
          {
          }

          (*(v70 + 8))(v68, v69);
        }
      }
    }

    else
    {
      v35 = v7;

      v36 = sub_23875B730();

      swift_willThrow();
      sub_23875C180();
      v37 = v4;
      v38 = v36;
      v39 = sub_23875C1B0();
      v40 = sub_23875EFE0();

      v41 = os_log_type_enabled(v39, v40);
      v43 = *(v0 + 128);
      v42 = *(v0 + 136);
      v44 = *(v0 + 120);
      if (v41)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v92[0] = v85;
        *v45 = 136315394;
        v91 = v42;
        v47 = [v37 debugDescription];
        v87 = v37;
        v89 = v44;
        v48 = sub_23875EA80();
        v50 = v49;

        v51 = sub_2384615AC(v48, v50, v92);

        *(v45 + 4) = v51;
        *(v45 + 12) = 2112;
        v52 = v36;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 14) = v53;
        *v46 = v53;
        _os_log_impl(&dword_2383F8000, v39, v40, "Failed to fetch order for %s with error: %@", v45, 0x16u);
        sub_238455DD4(v46);
        MEMORY[0x23EE64DF0](v46, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v85);
        MEMORY[0x23EE64DF0](v85, -1, -1);
        MEMORY[0x23EE64DF0](v45, -1, -1);

        (*(v43 + 8))(v91, v89);
      }

      else
      {

        (*(v43 + 8))(v42, v44);
      }
    }
  }

  else
  {
    v15 = *(v0 + 104);
    v14 = *(v0 + 112);
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);

    sub_23875C180();
    (*(v15 + 16))(v14, v17, v16);
    v18 = sub_23875C1B0();
    v19 = sub_23875EFE0();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 152);
    v23 = *(v0 + 120);
    v22 = *(v0 + 128);
    v25 = *(v0 + 104);
    v24 = *(v0 + 112);
    v26 = *(v0 + 96);
    if (v20)
    {
      v90 = *(v0 + 120);
      v27 = swift_slowAlloc();
      v86 = v19;
      v28 = swift_slowAlloc();
      v92[0] = v28;
      *v27 = 136315138;
      v29 = sub_23875B800();
      v88 = v21;
      v31 = v30;
      (*(v25 + 8))(v24, v26);
      v32 = sub_2384615AC(v29, v31, v92);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_2383F8000, v18, v86, "Could not create object ID for %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x23EE64DF0](v28, -1, -1);
      MEMORY[0x23EE64DF0](v27, -1, -1);

      (*(v22 + 8))(v88, v90);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
      (*(v22 + 8))(v21, v23);
    }
  }

  v33 = *(v0 + 8);

  return v33();
}