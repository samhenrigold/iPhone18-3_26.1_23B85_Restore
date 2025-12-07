void sub_1BF094CD0()
{
  OUTLINED_FUNCTION_32();
  v1 = MEMORY[0x1E6968FB0];
  sub_1BF09704C(0, &qword_1EBDCC220, MEMORY[0x1E6968FB0]);
  v3 = v2;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_90();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_11_4();
  sub_1BF096708(0, v6, &qword_1EBDCC220, v1, v7);
  OUTLINED_FUNCTION_68(v8);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_63_0();
  v11 = OUTLINED_FUNCTION_106();
  os_unfair_lock_assert_owner(v11);
  OUTLINED_FUNCTION_56_1();
  sub_1BF096764();
  OUTLINED_FUNCTION_127();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v3);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_116();
  swift_endAccess();
  OUTLINED_FUNCTION_77_1();
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_56_1();
  sub_1BF096764();
  OUTLINED_FUNCTION_54_2();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_40_2(v15);

  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF095014(uint64_t a1, uint64_t a2, void *a3, void (*a4)(), uint64_t a5)
{
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  if (off_1ED8F0218 != a3)
  {
    if (qword_1ED8EFB98 != -1)
    {
      swift_once();
    }

    if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
    {
      if (qword_1ED8EF920 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
      {
        v8 = swift_allocObject();
        v8[2] = a3;
        v8[3] = a4;
        v8[4] = a5;
        v9 = a3;
        a4 = sub_1BF097A1C;
      }
    }
  }

  (a4)(v10);
}

uint64_t sub_1BF0951A4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(), uint64_t a5)
{
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  if (off_1ED8F0218 != a3)
  {
    if (qword_1ED8EFB98 != -1)
    {
      swift_once();
    }

    if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
    {
      if (qword_1ED8EF920 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
      {
        v8 = swift_allocObject();
        v8[2] = a3;
        v8[3] = a4;
        v8[4] = a5;
        v9 = a3;
        a4 = sub_1BF0077B8;
      }
    }
  }

  (a4)(v10);
}

uint64_t sub_1BF095334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(uint64_t))
{
  v11[0] = a3;
  v11[1] = a4;
  v12 = a5;
  os_unfair_lock_assert_not_owner(*(a1 + 16));
  result = a6(a2);
  if (result)
  {
    if (result >= 1)
    {
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v10 = OUTLINED_FUNCTION_129();
          MEMORY[0x1BFB53020](v10);
        }

        else
        {
          OUTLINED_FUNCTION_113();
        }

        OUTLINED_FUNCTION_112();
        v6(v11);
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1BF0953F0()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  os_unfair_lock_assert_not_owner(*(v6 + 16));
  v7 = v1(v5);
  if (!v7)
  {
LABEL_8:
    OUTLINED_FUNCTION_55();
    return;
  }

  v8 = v7;
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFB53020](v9, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v9 + 32);
      }

      ++v9;
      v11 = *(v10 + 16);

      v11(v3);
    }

    while (v8 != v9);
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1BF0954B4(uint64_t a1)
{
  OUTLINED_FUNCTION_111(a1);
  result = v2(v1);
  if (result)
  {
    if (result >= 1)
    {
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = OUTLINED_FUNCTION_129();
          MEMORY[0x1BFB53020](v5);
        }

        else
        {
          OUTLINED_FUNCTION_113();
        }

        OUTLINED_FUNCTION_112();
        v3(&v6);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BF09555C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1BF179C5C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  *v11 = sub_1BF17AD5C();
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v12 = sub_1BF179C8C();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a2;
    v15[4] = a3;
    swift_beginAccess();

    sub_1BF071B9C();
    v16 = *(*(v4 + 16) + 16);
    sub_1BF071DD8(v16);
    v17 = *(v4 + 16);
    *(v17 + 16) = v16 + 1;
    v18 = v17 + 16 * v16;
    *(v18 + 32) = sub_1BF097400;
    *(v18 + 40) = v15;
    *(v4 + 16) = v17;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BF095754(char a1, uint64_t a2, void (*a3)(uint64_t, char *))
{
  v6 = a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3(Strong, &v6);
  }
}

uint64_t objectdestroy_78Tm()
{
  OUTLINED_FUNCTION_2_3();
  v2 = *(v1 + 80);
  v4 = (*(v3 + 64) + ((v2 + 64) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = OUTLINED_FUNCTION_92();
  v6(v5);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1BF095A18(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, char *, void, void, void, void, void))
{
  v3 = (*(*(*(v2 + 3) - 8) + 80) + 64) & ~*(*(*(v2 + 3) - 8) + 80);
  v4 = &v2[(*(*(*(v2 + 3) - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8];
  return a2(a1, *(v2 + 6), *(v2 + 7), &v2[v3], *v4, *(v4 + 1), *(v2 + 2), *(v2 + 4), *(v2 + 5));
}

uint64_t objectdestroy_58Tm()
{

  v0 = OUTLINED_FUNCTION_59_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t objectdestroy_64Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t objectdestroy_55Tm()
{

  v0 = OUTLINED_FUNCTION_59_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

unint64_t sub_1BF095D40()
{
  result = qword_1ED8EE890[0];
  if (!qword_1ED8EE890[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EE890);
  }

  return result;
}

uint64_t sub_1BF095DC8@<X0>(BOOL *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = (result & 1) == 0;
  return result;
}

unint64_t sub_1BF095E00()
{
  result = qword_1ED8EFBD0;
  if (!qword_1ED8EFBD0)
  {
    sub_1BF0491C4(255, &qword_1ED8EFBE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EFBD0);
  }

  return result;
}

uint64_t objectdestroy_142Tm()
{

  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation12PromiseErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t dispatch thunk of Promise.__allocating_init(resolver:)()
{
  return (*(v0 + 112))();
}

{
  return (*(v0 + 120))();
}

uint64_t sub_1BF09626C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1BF096360;

  return v5(v2 + 32);
}

uint64_t sub_1BF096360()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  *v3 = *(v2 + 32);
  OUTLINED_FUNCTION_9();

  return v6();
}

uint64_t sub_1BF096460()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_123();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_0(v1);

  return v4(v3);
}

uint64_t sub_1BF0964F0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_123();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_0(v1);

  return v4(v3);
}

uint64_t objectdestroy_230Tm(void (*a1)(void *))
{

  sub_1BF000FDC(*(v1 + 32), *(v1 + 40), a1);
  OUTLINED_FUNCTION_33_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t objectdestroy_163Tm(void (*a1)(void, void))
{

  a1(*(v1 + 32), *(v1 + 40));
  OUTLINED_FUNCTION_33_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

void sub_1BF096708(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BF17AE6C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BF096764()
{
  v1 = OUTLINED_FUNCTION_35_1();
  sub_1BF09704C(v1, v2, v3);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_36();
  v5(v4);
  return v0;
}

uint64_t sub_1BF0967E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BF09704C(0, a2, a3);
  OUTLINED_FUNCTION_12();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1BF09683C(uint64_t a1)
{
  if (!qword_1EBDCAA00)
  {
    sub_1BF0035CC(255, &qword_1ED8ECC00, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for Seal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EBDCAA00);
    }
  }
}

uint64_t sub_1BF096904(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t sub_1BF09693C(uint64_t a1, uint64_t a2)
{
  sub_1BF096708(0, &qword_1ED8ED400, &qword_1ED8ED408, &protocol descriptor for RequestSigning, sub_1BEFE6EA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF0969CC(uint64_t a1)
{
  sub_1BF096708(0, &qword_1ED8ED400, &qword_1ED8ED408, &protocol descriptor for RequestSigning, sub_1BEFE6EA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF096A54(uint64_t a1)
{
  v3 = v1[3];
  v12 = v1[2];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4(v8);
  *v9 = v10;
  v9[1] = sub_1BF035DD4;

  return sub_1BF0F7AF4(a1, v12, v3, (v1 + 4), v4, v5, v6, v7);
}

id sub_1BF096B3C(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

void sub_1BF096B5C(void *result, id a2, char a3)
{
  if (a3 != -1)
  {
    sub_1BF096B70(result, a2, a3);
  }
}

void sub_1BF096B70(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t objectdestroy_181Tm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = OUTLINED_FUNCTION_12_1();
  sub_1BF09704C(v5, v6, v7);
  OUTLINED_FUNCTION_103();
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    a3(0);
    OUTLINED_FUNCTION_12();
    (*(v11 + 8))(v3 + v9);
  }

  v12 = OUTLINED_FUNCTION_88();

  return MEMORY[0x1EEE6BDD0](v12, v13, v14);
}

uint64_t sub_1BF096CA0()
{
  v1 = OUTLINED_FUNCTION_35_1();
  sub_1BF09704C(v1, v2, v3);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_36();
  v5(v4);
  return v0;
}

void sub_1BF096D24()
{
  v0 = OUTLINED_FUNCTION_12_1();
  sub_1BF09704C(v0, v1, v2);
  OUTLINED_FUNCTION_68(v3);
  sub_1BF0953F0();
}

id sub_1BF096E40(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {

    return result;
  }

  else if (!a3)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

void sub_1BF096E9C(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1BF096EB0(a1, a2, a3);
  }
}

void sub_1BF096EB0(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

void sub_1BF096F0C(uint64_t a1)
{
  if (!qword_1EBDCA950[0])
  {
    sub_1BF027B68(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EBDCA950);
    }
  }
}

void sub_1BF096FB0(uint64_t a1)
{
  if (!qword_1ED8E9C80)
  {
    type metadata accessor for AuthToken(255);
    v1 = sub_1BF179E9C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8E9C80);
    }
  }
}

void sub_1BF09704C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v5 = a3(255);
    v7 = type metadata accessor for Seal.Resolution(a1, v5, v5, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BF097124(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
    return sub_1BF014DC0(result, a2);
  }

  return result;
}

void sub_1BF097140(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1BF097154(a1, a2, a3);
  }
}

void sub_1BF097154(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
    sub_1BF014E18(result, a2);
  }
}

uint64_t objectdestroy_191Tm(void (*a1)(void, void, void))
{

  a1(*(v1 + 32), *(v1 + 40), *(v1 + 48));
  OUTLINED_FUNCTION_50_0();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BF097228()
{
  v1 = OUTLINED_FUNCTION_35_1();
  sub_1BF096708(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_12();
  v6 = OUTLINED_FUNCTION_36();
  v7(v6);
  return v0;
}

void *sub_1BF097280@<X0>(void *(**a1)(uint64_t *__return_ptr, void)@<X0>, _BYTE *a2@<X8>)
{
  result = (*a1)(&v5, *(v2 + 24));
  *a2 = v5;
  return result;
}

uint64_t sub_1BF0972D0(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_20();
  (*v3)(a2);
  return a2;
}

uint64_t sub_1BF097330@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 24))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF097394@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroy_249Tm()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

void *sub_1BF0974B8@<X0>(void *(**a1)(uint64_t *__return_ptr, void)@<X0>, _BYTE *a2@<X8>)
{
  result = (*a1)(&v5, *(v2 + 32));
  *a2 = v5;
  return result;
}

uint64_t objectdestroy_127Tm()
{

  v1 = OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroy_285Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t objectdestroy_200Tm()
{

  v1 = OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF09788C(uint64_t a1, void *a2)
{
  result = (*(v2 + 48))(a1, *(v2 + 64));
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_116()
{

  return sub_1BF097228();
}

uint64_t OUTLINED_FUNCTION_121()
{
}

uint64_t OUTLINED_FUNCTION_134(uint64_t a1)
{
  Promise.then<A>(on:closure:)(a1, v1, v3, v2);
}

uint64_t CodableResult.Error.hashValue.getter()
{
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](0);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF097B9C(uint64_t a1)
{
  sub_1BF17BB6C();
  CodableResult.Error.hash(into:)();
  return sub_1BF17BB9C();
}

uint64_t CodableResult.valueOrNil()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  (*(v5 + 16))(v9 - v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 8))(v10, a1);
    v11 = *(a1 + 16);
    v12 = a2;
    v13 = 1;
  }

  else
  {
    v14 = *(a1 + 16);
    (*(*(v14 - 8) + 32))(a2, v10, v14);
    v12 = a2;
    v13 = 0;
    v11 = v14;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
}

uint64_t CodableResult.init(value:error:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v36 = a4;
  v37 = a5;
  v10 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v12 = v11;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v36 - v15;
  OUTLINED_FUNCTION_2_3();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_2_0();
  v23 = (v22 - v21);
  (*(v12 + 16))(v16, a1, v10);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, a3);
  v25 = *(v12 + 8);
  if (EnumTagSinglePayload == 1)
  {
    v25(v16, v10);
    if (!a2)
    {
      v26 = OUTLINED_FUNCTION_5_6();
      type metadata accessor for CodableResult.Error(v26, v27, v28, v29);
      swift_getWitnessTable();
      a2 = swift_allocError();
    }

    v25(a1, v10);
    *a6 = a2;
    v30 = OUTLINED_FUNCTION_5_6();
    type metadata accessor for CodableResult(v30, v31, v32, v33);
  }

  else
  {
    v25(a1, v10);

    v34 = *(v18 + 32);
    v34(v23, v16, a3);
    v34(a6, v23, a3);
    type metadata accessor for CodableResult(0, a3, v36, v37);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t CodableResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a5;
  OUTLINED_FUNCTION_2_3();
  v46 = v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_2_0();
  v48 = v13 - v12;
  type metadata accessor for CodableResult.CodingKeys(255, v14, v15, v16);
  OUTLINED_FUNCTION_2_9();
  swift_getWitnessTable();
  sub_1BF17B63C();
  OUTLINED_FUNCTION_2_3();
  v49 = v18;
  v50 = v17;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v45 - v21;
  v52 = a4;
  *&v53 = a3;
  v23 = type metadata accessor for CodableResult(0, a2, a3, a4);
  OUTLINED_FUNCTION_2_3();
  v47 = v24;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v45 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v29 = v54;
  sub_1BF17BBDC();
  if (!v29)
  {
    v45 = v28;
    v54 = v23;
    v30 = v49;
    v31 = v51;
    type metadata accessor for CodableResult.ResultType(0, a2, v53, v52);
    v58 = 0;
    swift_getWitnessTable();
    v32 = v50;
    sub_1BF17B5FC();
    v33 = v22;
    v34 = v30;
    if (v55)
    {
      v58 = 1;
      sub_1BF0983D4();
      sub_1BF17B5FC();
      v53 = v55;
      v35 = v56;
      v36 = v57;
      sub_1BF098428();
      v37 = swift_allocError();
      v38 = v33;
      v39 = v37;
      *v40 = v53;
      *(v40 + 16) = v35;
      *(v40 + 24) = v36;
      (*(v34 + 8))(v38, v32);
      v41 = v45;
      *v45 = v39;
    }

    else
    {
      LOBYTE(v55) = 1;
      v42 = v48;
      sub_1BF17B5FC();
      (*(v34 + 8))(v33, v32);
      v41 = v45;
      (*(v46 + 32))(v45, v42, a2);
    }

    v43 = v54;
    swift_storeEnumTagMultiPayload();
    (*(v47 + 32))(v31, v41, v43);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BF0983D4()
{
  result = qword_1EBDCB760;
  if (!qword_1EBDCB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB760);
  }

  return result;
}

unint64_t sub_1BF098428()
{
  result = qword_1EBDCB768;
  if (!qword_1EBDCB768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB768);
  }

  return result;
}

uint64_t CodableResult.encode(to:)(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_3();
  v37 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_0();
  v38 = v9 - v8;
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_2_0();
  v16 = (v15 - v14);
  v39 = v17;
  v36 = *(a2 + 32);
  type metadata accessor for CodableResult.CodingKeys(255, v17, *(a2 + 24), v36);
  OUTLINED_FUNCTION_2_9();
  swift_getWitnessTable();
  sub_1BF17B6CC();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v18, v19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF17BC1C();
  (*(v11 + 16))(v16, v40, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v16;
    v21 = *v16;
    v22 = sub_1BF17910C();
    v23 = [v22 domain];
    v24 = sub_1BF17A0AC();
    v26 = v25;

    v27 = [v22 code];
    v28 = sub_1BF0E4484(v22);

    LOBYTE(v41[0]) = 0;
    OUTLINED_FUNCTION_6_9(0x64656C696166, 0xE600000000000000, v41);
    if (v2)
    {
      v29 = OUTLINED_FUNCTION_3_7();
      v30(v29);
    }

    else
    {

      v41[0] = v24;
      v41[1] = v26;
      v41[2] = v27;
      v41[3] = v28;
      v42 = 1;
      sub_1BF098FB8();
      sub_1BF17B69C();
      v31 = OUTLINED_FUNCTION_3_7();
      v32(v31);
    }
  }

  else
  {
    (*(v37 + 32))(v38, v16, v39);
    LOBYTE(v41[0]) = 0;
    OUTLINED_FUNCTION_6_9(0x73736563637573, 0xE700000000000000, v41);

    if (!v2)
    {
      LOBYTE(v41[0]) = 1;
      sub_1BF17B69C();
    }

    (*(v37 + 8))(v38, v39);
    v34 = OUTLINED_FUNCTION_3_7();
    return v35(v34);
  }
}

uint64_t sub_1BF098868(char a1)
{
  if (a1)
  {
    return 0x64656C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1BF09889C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1BF17B57C();

  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF09890C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BF098980(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1BF0989EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BF098A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BF098BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BF098C3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1BF098CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BF098D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BF098D94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  result = sub_1BF09889C(*a1, a1[1], a2[2], a2[3], a2[4], a3);
  *a4 = result;
  return result;
}

uint64_t sub_1BF098DEC@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, a1[2], a1[3], a1[4]);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1BF098E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1BF0988EC(a1, a2, a3[2], a3[3], a3[4]);
  *a4 = result;
  return result;
}

uint64_t sub_1BF098EA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF077B6C();
  *a1 = result;
  return result;
}

uint64_t sub_1BF098ED4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BF098F28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

unint64_t sub_1BF098FB8()
{
  result = qword_1EBDCB770[0];
  if (!qword_1EBDCB770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDCB770);
  }

  return result;
}

uint64_t sub_1BF099030(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1BF099154(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_1BF099318(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1BF0993B4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BF099524(uint64_t a1, unsigned __int8 a2)
{
  sub_1BF179F3C();
}

uint64_t sub_1BF0995B4(uint64_t a1, char a2)
{
  sub_1BF179F3C();
}

uint64_t sub_1BF099674(uint64_t a1, char a2)
{
  sub_1BF179F3C();
}

uint64_t sub_1BF0996BC(uint64_t a1, unsigned __int8 a2)
{
  sub_1BF179F3C();
}

uint64_t sub_1BF09977C(uint64_t a1, char a2)
{
  sub_1BF179F3C();
}

uint64_t sub_1BF0997E4(uint64_t a1, char a2)
{
  sub_1BF179F3C();
}

uint64_t sub_1BF099850(uint64_t a1, char a2)
{
  sub_1BF179F3C();
}

uint64_t sub_1BF099898(uint64_t a1, char a2)
{
  sub_1BF179F3C();
}

void sub_1BF0998D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = a1;
LABEL_2:
  for (i = v9; a2 != i; ++i)
  {
    if (a2 < a1)
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    if (v9 < a1)
    {
      goto LABEL_17;
    }

    if (i >= a2)
    {
      goto LABEL_18;
    }

    swift_beginAccess();
    v11 = *a3;
    if (*(*a3 + 16))
    {
      v12 = sub_1BF00088C(i);
      if (v13)
      {
        v14 = *(*(v11 + 56) + v12);
        swift_endAccess();
        v18 = v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BF060154();
          v8 = v16;
        }

        v15 = *(v8 + 16);
        if (v15 >= *(v8 + 24) >> 1)
        {
          sub_1BF060154();
          v8 = v17;
        }

        v9 = i + 1;
        *(v8 + 16) = v15 + 1;
        *(v8 + v15 + 32) = v14;
        v4 = v18;
        goto LABEL_2;
      }
    }

    swift_endAccess();
  }
}

uint64_t sub_1BF099A54(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v7 = result;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = result;
LABEL_2:
  for (i = v9; ; ++i)
  {
    if (a2 == i)
    {
      return v8;
    }

    if (a2 < v7)
    {
      break;
    }

    if (v9 < v7)
    {
      goto LABEL_17;
    }

    if (i >= a2)
    {
      goto LABEL_18;
    }

    swift_beginAccess();
    v11 = *a3;
    if (*(*a3 + 16))
    {
      v12 = sub_1BF00088C(i);
      if (v13)
      {
        v14 = *(*(v11 + 56) + v12);
        swift_endAccess();
        result = swift_isUniquelyReferenced_nonNull_native();
        v17 = v4;
        if ((result & 1) == 0)
        {
          result = sub_1BF0A6B98(0, *(v8 + 16) + 1, 1, v8);
          v8 = result;
        }

        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_1BF0A6B98((v15 > 1), v16 + 1, 1, v8);
          v8 = result;
        }

        v9 = i + 1;
        *(v8 + 16) = v16 + 1;
        *(v8 + v16 + 32) = v14;
        v4 = v17;
        goto LABEL_2;
      }
    }

    result = swift_endAccess();
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BF099BB0()
{
  v1 = *(v0 + 16);
  UnfairLock.lock()();
  if (*(v0 + 24))
  {
    v2 = nullsub_1;
  }

  else
  {
    *(v0 + 24) = 1;
    v2 = sub_1BF094894(0, 0, 2);
  }

  os_unfair_lock_unlock(*(v1 + 16));
  return v2;
}

void (*sub_1BF099C54(void *a1, uint64_t a2, uint64_t (*a3)(char *)))()
{
  sub_1BF0A8950(0, a1);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v14 - v9;
  v11 = *(v3 + 16);
  UnfairLock.lock()();
  if (*(v3 + 24))
  {
    v12 = nullsub_1;
  }

  else
  {
    *(v3 + 24) = 1;
    OUTLINED_FUNCTION_110_0();
    swift_storeEnumTagMultiPayload();
    v12 = a3(v10);
    sub_1BF0A8340(v10, a1, a2);
  }

  os_unfair_lock_unlock(*(v11 + 16));
  return v12;
}

void (*sub_1BF099D78(uint64_t (*a1)(void, uint64_t)))()
{
  v3 = *(v1 + 16);
  UnfairLock.lock()();
  if (*(v1 + 24))
  {
    v4 = nullsub_1;
  }

  else
  {
    *(v1 + 24) = 1;
    v4 = a1(0, 2);
  }

  os_unfair_lock_unlock(*(v3 + 16));
  return v4;
}

void sub_1BF099E08()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_113_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_39_1();

  v6 = OUTLINED_FUNCTION_4_10(v5, &qword_1ED8ED8C0);
  OUTLINED_FUNCTION_14_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v7);

  v8 = OUTLINED_FUNCTION_3_8();
  sub_1BF09BFD8(v8, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_19_5();

  v16 = v0(v15);
  OUTLINED_FUNCTION_18_4(v16);
  if (*(v6 + 16))
  {

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF099F10()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_0_14();
  sub_1BEFEC638(0, v1, &type metadata for RemoteNotificationFetchResult, v2);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_96_0();
  v3 = sub_1BEFFFF04();
  OUTLINED_FUNCTION_14_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_119_0(v4);

  v5 = OUTLINED_FUNCTION_105_0();
  sub_1BF09C1F8(v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_31_0();

  v0(v12);
  OUTLINED_FUNCTION_26_4(v3 + 16, v13);
  if (*(v3 + 16))
  {

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BF09A048(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1BEFEC638(0, &qword_1ED8EDC50, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for DeferredPromise);
  swift_allocObject();

  v6 = sub_1BEFFFF04();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  swift_retain_n();

  v8 = sub_1BF09C40C(a1, sub_1BF0A90F0, v6, sub_1BF02E2A4, v6, sub_1BF0A8F0C, v7);

  (v8)(v9);
  result = swift_beginAccess();
  v11 = *(v6 + 16);
  if (v11)
  {

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BF09A1F4()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_115_0(v1, v2);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_96_0();
  v4 = OUTLINED_FUNCTION_20_4(v3, &qword_1ED8E9CF8);
  OUTLINED_FUNCTION_14_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v5);

  v6 = OUTLINED_FUNCTION_3_8();
  sub_1BF09C62C(v6);
  OUTLINED_FUNCTION_19_5();

  v8 = v0(v7);
  OUTLINED_FUNCTION_18_4(v8);
  if (*(v4 + 16))
  {

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09A304()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_113_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_39_1();

  v6 = OUTLINED_FUNCTION_4_10(v5, &qword_1ED8ED8C0);
  OUTLINED_FUNCTION_14_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v7);

  v8 = OUTLINED_FUNCTION_3_8();
  sub_1BF09C998(v8, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_19_5();

  v16 = v0(v15);
  OUTLINED_FUNCTION_18_4(v16);
  if (*(v6 + 16))
  {

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09A40C()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_115_0(v1, v2);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_96_0();
  v4 = OUTLINED_FUNCTION_20_4(v3, &qword_1ED8E9CF8);
  OUTLINED_FUNCTION_14_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v5);

  v6 = OUTLINED_FUNCTION_3_8();
  sub_1BF09C998(v6, v7, v8, v9, v10, v11, v12);
  OUTLINED_FUNCTION_19_5();

  v14 = v0(v13);
  OUTLINED_FUNCTION_18_4(v14);
  if (*(v4 + 16))
  {

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09A51C()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_115_0(v1, &qword_1EBDCAC08);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  v2 = OUTLINED_FUNCTION_96_0();
  v3 = OUTLINED_FUNCTION_54_3(v2, &qword_1EBDCA9E0);
  OUTLINED_FUNCTION_14_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v4);

  v5 = OUTLINED_FUNCTION_3_8();
  sub_1BF09C62C(v5);
  OUTLINED_FUNCTION_19_5();

  v7 = v0(v6);
  OUTLINED_FUNCTION_18_4(v7);
  if (*(v3 + 16))
  {

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09A64C()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_113_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_39_1();

  v6 = OUTLINED_FUNCTION_4_10(v5, &qword_1ED8ED8C0);
  OUTLINED_FUNCTION_14_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v7);

  v8 = OUTLINED_FUNCTION_3_8();
  sub_1BF09C62C(v8);
  OUTLINED_FUNCTION_19_5();

  v10 = v0(v9);
  OUTLINED_FUNCTION_18_4(v10);
  if (*(v6 + 16))
  {

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09A754()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_115_0(v1, v2);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_96_0();
  v4 = OUTLINED_FUNCTION_20_4(v3, &qword_1ED8E9CF8);
  OUTLINED_FUNCTION_14_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v5);

  v6 = OUTLINED_FUNCTION_3_8();
  sub_1BF09CD10(v6);
  OUTLINED_FUNCTION_19_5();

  v8 = v0(v7);
  OUTLINED_FUNCTION_18_4(v8);
  if (*(v4 + 16))
  {

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09A864()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_115_0(v1, &unk_1EBDCB9C8);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  v2 = OUTLINED_FUNCTION_96_0();
  v3 = OUTLINED_FUNCTION_54_3(v2, &unk_1EBDCB9D0);
  OUTLINED_FUNCTION_14_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v4);

  v5 = OUTLINED_FUNCTION_3_8();
  sub_1BF09C62C(v5);
  OUTLINED_FUNCTION_19_5();

  v7 = v0(v6);
  OUTLINED_FUNCTION_18_4(v7);
  if (*(v3 + 16))
  {

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09A994()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_115_0(v1, &unk_1EBDCB9A8);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  v2 = OUTLINED_FUNCTION_96_0();
  v3 = OUTLINED_FUNCTION_54_3(v2, &unk_1EBDCB9B8);
  OUTLINED_FUNCTION_14_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v4);

  v5 = OUTLINED_FUNCTION_3_8();
  sub_1BF09D558(v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_19_5();

  v13 = v0(v12);
  OUTLINED_FUNCTION_18_4(v13);
  if (*(v3 + 16))
  {

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09AAC4()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_113_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_39_1();

  v6 = OUTLINED_FUNCTION_4_10(v5, &qword_1ED8ED8C0);
  OUTLINED_FUNCTION_14_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v7);

  v8 = OUTLINED_FUNCTION_3_8();
  sub_1BF09D76C(v8, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_19_5();

  v16 = v0(v15);
  OUTLINED_FUNCTION_18_4(v16);
  if (*(v6 + 16))
  {

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09ABCC()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_0_14();
  sub_1BEFEC638(0, v1, &type metadata for BackgroundFetchResult, v2);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_96_0();
  v3 = sub_1BEFFFF04();
  OUTLINED_FUNCTION_14_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_119_0(v4);

  v5 = OUTLINED_FUNCTION_105_0();
  sub_1BF09DB5C(v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_31_0();

  v0(v12);
  OUTLINED_FUNCTION_26_4(v3 + 16, v13);
  if (*(v3 + 16))
  {

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09AD04()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_113_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_39_1();

  v6 = OUTLINED_FUNCTION_4_10(v5, &qword_1ED8ED8C0);
  OUTLINED_FUNCTION_14_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v7);

  v8 = OUTLINED_FUNCTION_3_8();
  sub_1BF09D954(v8, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_19_5();

  v16 = v0(v15);
  OUTLINED_FUNCTION_18_4(v16);
  if (*(v6 + 16))
  {

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09AE0C()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_113_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_39_1();

  v6 = OUTLINED_FUNCTION_4_10(v5, &qword_1ED8ED8C0);
  OUTLINED_FUNCTION_14_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v7);

  v8 = OUTLINED_FUNCTION_3_8();
  sub_1BF09DD70(v8, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_19_5();

  v16 = v0(v15);
  OUTLINED_FUNCTION_18_4(v16);
  if (*(v6 + 16))
  {

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BF09AFC4()
{
  OUTLINED_FUNCTION_82_1();
  if (v1)
  {
    v3 = v2;

    v4 = OUTLINED_FUNCTION_17_2();
    sub_1BF09E034(v4, v5, v3);
  }

  *(v0 + 24) = 0;
}

uint64_t sub_1BF09B040()
{
  OUTLINED_FUNCTION_82_1();
  if (v1)
  {
    OUTLINED_FUNCTION_95();

    sub_1BF09DFB4(v2);
  }

  *(v0 + 24) = 0;
}

uint64_t sub_1BF09B134(char a1, void (*a2)(char *))
{
  v3 = a1;
  a2(&v3);
  return sub_1BF00108C();
}

uint64_t sub_1BF09B260(uint64_t a1, void (*a2)(__int128 *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return sub_1BF09BDB4(v3);
}

uint64_t sub_1BF09B380(uint64_t a1, void (*a2)(__int128 *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  sub_1BF000C1C();
}

uint64_t sub_1BF09B49C(uint64_t a1, void (*a2)(id *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  sub_1BF09BE68();
}

uint64_t sub_1BF09B5D4(uint64_t a1, void (*a2)(__int128 *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  sub_1BF000C1C();
}

uint64_t sub_1BF09B714(uint64_t a1, void (*a2)(uint64_t *, double))
{
  v4 = sub_1BF17923C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  a2(&v12, v7);
  sub_1BF09BF00();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1BF09B90C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  a3(v4);
  return sub_1BF00108C();
}

uint64_t sub_1BF09BA38(uint64_t a1, void (*a2)(__int128 *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return sub_1BF09BF6C(v3);
}

uint64_t sub_1BF09BB58(char a1, void (*a2)(char *))
{
  v3 = a1 & 1;
  a2(&v3);
  return sub_1BF00108C();
}

uint64_t sub_1BF09BC88(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = a1;
  a2(&v3);
  return sub_1BF00108C();
}

uint64_t sub_1BF09BDB4(void (*a1)(uint64_t))
{
  if (*(v1 + 24))
  {

    sub_1BF0FCB20(a1);
  }

  *(v1 + 24) = 0;
}

uint64_t sub_1BF09BE68()
{
  OUTLINED_FUNCTION_82_1();
  if (v1)
  {
    OUTLINED_FUNCTION_39_1();

    v2 = OUTLINED_FUNCTION_41_0();
    sub_1BF0FCC7C(v2, v3);
  }

  *(v0 + 24) = 0;
}

uint64_t sub_1BF09BF00()
{
  OUTLINED_FUNCTION_82_1();
  if (v1)
  {
    v4 = v3;
    OUTLINED_FUNCTION_39_1();

    v4(v2);
  }

  *(v0 + 24) = 0;
}

uint64_t sub_1BF09BF6C(char a1)
{
  if (*(v1 + 24))
  {

    sub_1BF0FCE6C((a1 & 1));
  }

  *(v1 + 24) = 0;
}

void (*sub_1BF09BFD8(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v30 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BEFF6F10(sub_1BF0A9080, v15, &unk_1EBDCBA40, MEMORY[0x1E69E6370], sub_1BF005F5C, sub_1BF0000EC, v17, v18, v27, a6, a4, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v20 = v19;
  v22 = v21;

  os_unfair_lock_unlock(*(v31 + 16));
  if (!v22)
  {
    v23 = sub_1BF0A32C0(v20, 0, v16, v28, a7);
LABEL_7:
    v25 = v23;
    goto LABEL_8;
  }

  if (v22 != 1)
  {
    if (v22 != 2)
    {
      return nullsub_1;
    }

    v23 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v24 = swift_allocObject();
  v24[2] = v29;
  v24[3] = a5;
  v24[4] = v20;

  sub_1BEFF77C4(v20, 1);
  v25 = sub_1BF006210(v16, sub_1BF02E21C, v24);

LABEL_8:
  sub_1BEFF77B0(v20, v22);
  return v25;
}

void (*sub_1BF09C1F8(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v30 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BF003C20(sub_1BF0A8E70, v15, &unk_1EBDCBA10, &unk_1EBDCB750, &type metadata for RemoteNotificationFetchResult, sub_1BF005F5C, v17, v18, v27, a6, a4, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v20 = v19;
  v22 = v21;

  os_unfair_lock_unlock(*(v31 + 16));
  if (!v22)
  {
    v23 = sub_1BF0A34A0(v20, 0, v16, v28, a7);
LABEL_7:
    v25 = v23;
    goto LABEL_8;
  }

  if (v22 != 1)
  {
    if (v22 != 2)
    {
      return nullsub_1;
    }

    v23 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v24 = swift_allocObject();
  v24[2] = v29;
  v24[3] = a5;
  v24[4] = v20;

  sub_1BF0019A0(v20, 1);
  v25 = sub_1BF006210(v16, sub_1BF02E21C, v24);

LABEL_8:
  sub_1BF001964(v20, v22);
  return v25;
}

void (*sub_1BF09C40C(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v26 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BF0A31A4(sub_1BF0A8F18, v15, &unk_1EBDCBA28, &type metadata for RemoteNotificationFetchResult, sub_1BF005F5C, sub_1BF0000EC, v17, v18, v23, a6, a4, v26, v28, v30, v32, v33, v34, v35, v36, v37, v38, v39);

  os_unfair_lock_unlock(*(v27 + 16));
  if (!v31)
  {
    v19 = sub_1BF0A368C(v29, 0, v16, v24, a7);
LABEL_7:
    v21 = v19;
    goto LABEL_9;
  }

  if (v31 != 1)
  {
    if (v31 != 2)
    {
      v21 = nullsub_1;
      goto LABEL_9;
    }

    v19 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v20 = swift_allocObject();
  v20[2] = v25;
  v20[3] = a5;
  v20[4] = v29;

  sub_1BEFF77C4(v29, 1);
  v21 = sub_1BF006210(v16, sub_1BF02E21C, v20);

LABEL_9:
  sub_1BEFF77B0(v29, v31);
  return v21;
}

void sub_1BF09C7B4()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_23_3(v4, v5, v6);
  OUTLINED_FUNCTION_14_6();
  sub_1BF0A82D4(0, v7);
  v9 = OUTLINED_FUNCTION_68(v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_28_3();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_69();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_36_1(v13);
  OUTLINED_FUNCTION_88_0();

  v14 = OUTLINED_FUNCTION_68_1();
  sub_1BF0A26E8(v14, v15, v16);

  os_unfair_lock_unlock(*(v3 + 16));
  OUTLINED_FUNCTION_117_0(v0, v2, &qword_1ED8E9E10);
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_87_0(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_14_6();
    sub_1BF0A8A10(v0, v19);
    OUTLINED_FUNCTION_10_10();
  }

  else
  {
    OUTLINED_FUNCTION_132_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_53_2();
        sub_1BF0A8340(v2, qword_1ED8E9E18, v21);
        v22 = OUTLINED_FUNCTION_70_0();
        sub_1BF0A55F4(v22, v23, v24, v25);
        OUTLINED_FUNCTION_55_1();
        v26 = OUTLINED_FUNCTION_100();
      }

      else
      {
        OUTLINED_FUNCTION_116_0();
        OUTLINED_FUNCTION_55_1();
        OUTLINED_FUNCTION_14_6();
        v26 = v0;
      }

      sub_1BF0A8A10(v26, v27);
    }

    else
    {
      v28 = OUTLINED_FUNCTION_71_0();
      sub_1BF0A3A58(v28, v29, v30, v31);
      OUTLINED_FUNCTION_55_1();
      OUTLINED_FUNCTION_53_2();
      sub_1BF0A8A10(v0, v32);
      v33 = OUTLINED_FUNCTION_80_1();
      sub_1BF0A8340(v33, v34, v1);
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_26_2();
}

void (*sub_1BF09C998(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v30 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BF0A25FC(sub_1BF0A8938, v15, &unk_1ED8E9DF8, sub_1BF096FB0, sub_1BF005F5C, sub_1BF000E90, v17, v18, v27, a6, a4, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v20 = v19;
  v22 = v21;

  os_unfair_lock_unlock(*(v31 + 16));
  if (!v22)
  {
    v23 = sub_1BF0A3CEC(v20, 0, v16, v28, a7);
LABEL_7:
    v25 = v23;
    goto LABEL_8;
  }

  if (v22 != 1)
  {
    if (v22 != 2)
    {
      return nullsub_1;
    }

    v23 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v24 = swift_allocObject();
  v24[2] = v29;
  v24[3] = a5;
  v24[4] = v20;

  sub_1BF0019A0(v20, 1);
  v25 = sub_1BF006210(v16, sub_1BF02E21C, v24);

LABEL_8:
  sub_1BF001964(v20, v22);
  return v25;
}

void sub_1BF09CEBC()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_23_3(v4, v5, v6);
  OUTLINED_FUNCTION_13_7();
  sub_1BF0A82D4(0, v7);
  v9 = OUTLINED_FUNCTION_68(v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_28_3();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_69();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_36_1(v13);
  OUTLINED_FUNCTION_88_0();

  v14 = OUTLINED_FUNCTION_68_1();
  sub_1BF0A2A88(v14, v15, v16);

  os_unfair_lock_unlock(*(v3 + 16));
  OUTLINED_FUNCTION_117_0(v0, v2, &qword_1EBDCAA50);
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_87_0(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_13_7();
    sub_1BF0A8A10(v0, v19);
    OUTLINED_FUNCTION_10_10();
  }

  else
  {
    OUTLINED_FUNCTION_132_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_52_2();
        sub_1BF0A8340(v2, &qword_1EBDCAA58, v21);
        v22 = OUTLINED_FUNCTION_70_0();
        sub_1BF0A5914(v22, v23, v24, v25);
        OUTLINED_FUNCTION_55_1();
        v26 = OUTLINED_FUNCTION_100();
      }

      else
      {
        OUTLINED_FUNCTION_116_0();
        OUTLINED_FUNCTION_55_1();
        OUTLINED_FUNCTION_13_7();
        v26 = v0;
      }

      sub_1BF0A8A10(v26, v27);
    }

    else
    {
      v28 = OUTLINED_FUNCTION_71_0();
      sub_1BF0A42B8(v28, v29, v30, v31);
      OUTLINED_FUNCTION_55_1();
      OUTLINED_FUNCTION_52_2();
      sub_1BF0A8A10(v0, v32);
      v33 = OUTLINED_FUNCTION_80_1();
      sub_1BF0A8340(v33, v34, v1);
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_26_2();
}

void sub_1BF09D374()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_23_3(v4, v5, v6);
  OUTLINED_FUNCTION_12_6();
  sub_1BF0A82D4(0, v7);
  v9 = OUTLINED_FUNCTION_68(v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_28_3();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_69();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_36_1(v13);
  OUTLINED_FUNCTION_88_0();

  v14 = OUTLINED_FUNCTION_68_1();
  sub_1BF0A2E14(v14, v15, v16);

  os_unfair_lock_unlock(*(v3 + 16));
  OUTLINED_FUNCTION_117_0(v0, v2, &qword_1EBDCB710);
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_87_0(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_12_6();
    sub_1BF0A8A10(v0, v19);
    OUTLINED_FUNCTION_10_10();
  }

  else
  {
    OUTLINED_FUNCTION_132_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_51_1();
        sub_1BF0A8340(v2, &qword_1EBDCC220, v21);
        v22 = OUTLINED_FUNCTION_70_0();
        sub_1BF0A5C34(v22, v23, v24, v25);
        OUTLINED_FUNCTION_55_1();
        v26 = OUTLINED_FUNCTION_100();
      }

      else
      {
        OUTLINED_FUNCTION_116_0();
        OUTLINED_FUNCTION_55_1();
        OUTLINED_FUNCTION_12_6();
        v26 = v0;
      }

      sub_1BF0A8A10(v26, v27);
    }

    else
    {
      v28 = OUTLINED_FUNCTION_71_0();
      sub_1BF0A4978(v28, v29, v30, v31);
      OUTLINED_FUNCTION_55_1();
      OUTLINED_FUNCTION_51_1();
      sub_1BF0A8A10(v0, v32);
      v33 = OUTLINED_FUNCTION_80_1();
      sub_1BF0A8340(v33, v34, v1);
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_26_2();
}

void (*sub_1BF09D558(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v30 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BF003C20(sub_1BF0A8794, v15, &unk_1EBDCB9B0, &qword_1ED8EE9D0, MEMORY[0x1E69E6158], sub_1BF005F5C, v17, v18, v27, a6, a4, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v20 = v19;
  v22 = v21;

  os_unfair_lock_unlock(*(v31 + 16));
  if (!v22)
  {
    v23 = sub_1BF0A4C58(v20, 0, v16, v28, a7);
LABEL_7:
    v25 = v23;
    goto LABEL_8;
  }

  if (v22 != 1)
  {
    if (v22 != 2)
    {
      return nullsub_1;
    }

    v23 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v24 = swift_allocObject();
  v24[2] = v29;
  v24[3] = a5;
  v24[4] = v20;

  sub_1BF0019A0(v20, 1);
  v25 = sub_1BF006210(v16, sub_1BF02E21C, v24);

LABEL_8:
  sub_1BF001964(v20, v22);
  return v25;
}

void (*sub_1BF09D76C(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v15 = *(v7 + 16);
  UnfairLock.lock()();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a6;
  v27 = a4;
  v16[4] = a7;
  v16[5] = a4;
  v17 = a2;
  v18 = a5;
  v16[6] = a5;
  v16[7] = v17;
  v16[8] = a3;
  v19 = a1;

  sub_1BF0A3074(sub_1BF0A8554, v16, &v28);

  os_unfair_lock_unlock(*(v15 + 16));
  v20 = v30;
  if (!v30)
  {
    v21 = sub_1BF0A4E44(v28, v29, 0, v19, a6, a7);
LABEL_7:
    v25 = v21;
    goto LABEL_9;
  }

  if (v30 != 1)
  {
    if (v30 != 2)
    {
      v25 = nullsub_1;
      goto LABEL_9;
    }

    v21 = sub_1BF006210(v19, v17, a3);
    goto LABEL_7;
  }

  v23 = v28;
  v22 = v29;
  v24 = swift_allocObject();
  v24[2] = v27;
  v24[3] = v18;
  v24[4] = v23;

  sub_1BF0A856C(v23, v22, 1);
  v25 = sub_1BF006210(v19, sub_1BF02E21C, v24);

LABEL_9:
  sub_1BF097140(v28, v29, v20);
  return v25;
}

void (*sub_1BF09D954(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v40 = *(v7 + 16);
  UnfairLock.lock()();
  OUTLINED_FUNCTION_69();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BF0A31A4(sub_1BF0A80E8, v15, &unk_1EBDCAA38, &type metadata for BackgroundFetchResult, sub_1BF005F5C, sub_1BF0000EC, v17, v18, v34, a6, a4, v40, v42, v44, v46, v47, v48, v49, v50, v51, v52, v53);

  OUTLINED_FUNCTION_114_0(v19, v20, v21, v22, v23, v24, v25, v26, v35, v36, v38, v41);
  if (!v45)
  {
    v27 = sub_1BF0A5038(v43, 0, v16, v37, a7);
LABEL_7:
    v32 = v27;
    goto LABEL_9;
  }

  if (v45 != 1)
  {
    if (v45 != 2)
    {
      v32 = nullsub_1;
      goto LABEL_9;
    }

    v27 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_14_0();
  v28 = swift_allocObject();
  v28[2] = v39;
  v28[3] = a5;
  v28[4] = v43;

  sub_1BEFF77C4(v43, 1);
  v29 = OUTLINED_FUNCTION_59_2();
  v32 = sub_1BF006210(v29, v30, v31);

LABEL_9:
  sub_1BEFF77B0(v43, v45);
  return v32;
}

void (*sub_1BF09DB5C(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v30 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BF003C20(sub_1BF0A8170, v15, &unk_1EBDCAA20, &qword_1ED8EAE60, &type metadata for BackgroundFetchResult, sub_1BF005F5C, v17, v18, v27, a6, a4, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v20 = v19;
  v22 = v21;

  os_unfair_lock_unlock(*(v31 + 16));
  if (!v22)
  {
    v23 = sub_1BF0A521C(v20, 0, v16, v28, a7);
LABEL_7:
    v25 = v23;
    goto LABEL_8;
  }

  if (v22 != 1)
  {
    if (v22 != 2)
    {
      return nullsub_1;
    }

    v23 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v24 = swift_allocObject();
  v24[2] = v29;
  v24[3] = a5;
  v24[4] = v20;

  sub_1BF0019A0(v20, 1);
  v25 = sub_1BF006210(v16, sub_1BF02E21C, v24);

LABEL_8:
  sub_1BF001964(v20, v22);
  return v25;
}

void (*sub_1BF09DD70(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v30 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BF0A25FC(sub_1BF0A80B0, v15, &unk_1EBDCB990, MEMORY[0x1E69E7E90], sub_1BF005F5C, sub_1BF0512E4, v17, v18, v27, a6, a4, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v20 = v19;
  v22 = v21;

  os_unfair_lock_unlock(*(v31 + 16));
  if (!v22)
  {
    v23 = sub_1BF0A5408(v20, 0, v16, v28, a7);
LABEL_7:
    v25 = v23;
    goto LABEL_8;
  }

  if (v22 != 1)
  {
    if (v22 != 2)
    {
      return nullsub_1;
    }

    v23 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v24 = swift_allocObject();
  v24[2] = v29;
  v24[3] = a5;
  v24[4] = v20;

  sub_1BF0A80C8(v20, 1);
  v25 = sub_1BF006210(v16, sub_1BF02DBD4, v24);

LABEL_8:
  sub_1BF0979FC(v20, v22);
  return v25;
}

uint64_t sub_1BF09DFB4(void (*a1)(uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1BF099D78(a1);
    OUTLINED_FUNCTION_31_0();

    a1(v3);
  }

  return result;
}

uint64_t sub_1BF09E034(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  result = swift_weakLoadStrong();
  if (result)
  {

    v5 = OUTLINED_FUNCTION_41_0();
    sub_1BF099C54(v5, v6, a3);
    OUTLINED_FUNCTION_31_0();

    a3(v7);
  }

  return result;
}

uint64_t sub_1BF09E0C8()
{
  result = swift_weakLoadStrong();
  if (result)
  {

    v1 = sub_1BF099BB0();

    v1(v2);
  }

  return result;
}

uint64_t sub_1BF09E15C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1BF17B86C() & 1) == 0)
  {
    return 0;
  }

  return sub_1BF0D3F88(v2, v3);
}

uint64_t sub_1BF09E1D4(uint64_t a1)
{
  sub_1BF179F3C();
  sub_1BF179F3C();
}

uint64_t sub_1BF09E28C()
{
  sub_1BF17BB6C();
  sub_1BF179F3C();
  sub_1BF179F3C();

  return sub_1BF17BB9C();
}

uint64_t sub_1BF09E36C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5[9] = *v1;
  v5[10] = v2;
  v6 = v3;
  sub_1BF17BB6C();
  sub_1BF09E1D4(v5);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF09E3F8(char a1)
{
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](a1 & 1);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF09E45C(uint64_t a1)
{
  v2 = *v1;
  sub_1BF17BB6C();
  sub_1BF09E3D0(v4, v2);
  return sub_1BF17BB9C();
}

uint64_t StartupTaskManager.__allocating_init()()
{
  v0 = swift_allocObject();
  StartupTaskManager.init()(v0);
  return v0;
}

Swift::Void __swiftcall StartupTaskManager.startAllTasks()()
{
  v3 = 0;
  v1 = &v3;
  v2 = 0;
  StartupTaskManager.startAllTasks(launchOptions:phase:)(*(&v1 - 1), v0);
}

void sub_1BF09EA68()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v2 = sub_1BF17923C();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v22 - v11;
  v13 = *(v1 + 16);
  v14 = sub_1BF0A8200();
  v22[1] = MEMORY[0x1BFB526E0](v13, v2, v14);
  v15 = *(v1 + 16);
  if (v15)
  {
    v18 = *(v4 + 16);
    v16 = v4 + 16;
    v17 = v18;
    v19 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v22[0] = v1;
    v20 = v1 + v19;
    v21 = *(v16 + 56);
    do
    {
      v17(v8, v20, v2);
      OUTLINED_FUNCTION_17_2();
      sub_1BF16FC88();
      (*(v16 - 8))(v12, v2);
      v20 += v21;
      --v15;
    }

    while (v15);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF09EC6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1BF0A84D8();
  v8 = MEMORY[0x1BFB526E0](v2, &type metadata for XPCClass, v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_1BF16FE14(&v7, *(a1 + v5));
      v5 += 8;
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  return v2;
}

uint64_t StartupTaskManager.deinit()
{

  return v0;
}

uint64_t StartupTaskManager.__deallocating_deinit()
{
  StartupTaskManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 59, 7);
}

uint64_t sub_1BF09ED74(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v13 = swift_allocObject();
      v13[2] = a6;
      v13[3] = a7;
      v13[4] = a1;

      sub_1BEFF779C(a1, 1);
      v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

      (v14)(v15);
    }

    else
    {
      if (qword_1ED8F0210 != -1)
      {
        swift_once();
      }

      if (off_1ED8F0218 != a3)
      {
        if (qword_1ED8EFB98 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
        {
          if (qword_1ED8EF920 != -1)
          {
            swift_once();
          }

          if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
          {
            v18 = swift_allocObject();
            v18[2] = a3;
            v18[3] = a8;
            v18[4] = a9;
            v19 = a3;
            a8 = sub_1BF097A1C;
          }
        }
      }

      (a8)(v20);
    }
  }

  else
  {

    return sub_1BF0A18B0(a1, 0, a3, a4, a5);
  }
}

void *sub_1BF09EFC4(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBB678, sub_1BF001C08);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

void *sub_1BF09F224(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBB830, sub_1BF001C08);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

void *sub_1BF09F484(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBB380, sub_1BF001C08);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

uint64_t sub_1BF09F6E4(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v13 = swift_allocObject();
      v13[2] = a6;
      v13[3] = a7;
      v13[4] = a1;

      sub_1BEFF779C(a1, 1);
      v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

      (v14)(v15);
    }

    else
    {
      if (qword_1ED8F0210 != -1)
      {
        swift_once();
      }

      if (off_1ED8F0218 != a3)
      {
        if (qword_1ED8EFB98 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
        {
          if (qword_1ED8EF920 != -1)
          {
            swift_once();
          }

          if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
          {
            v18 = swift_allocObject();
            v18[2] = a3;
            v18[3] = a8;
            v18[4] = a9;
            v19 = a3;
            a8 = sub_1BF097A1C;
          }
        }
      }

      (a8)(v20);
    }
  }

  else
  {

    return sub_1BF0A196C(a1, 0, a3, a4, a5);
  }
}

void *sub_1BF09F934(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBAD18, sub_1BF001BC4);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

void sub_1BF09FB94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(), uint64_t a8)
{
  v21 = a5;
  v22 = a6;
  sub_1BF0A8950(0, qword_1ED8E9E18);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v21 - v16;
  sub_1BF0A8394();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BF0A8340(v17, qword_1ED8E9E18, type metadata accessor for AuthToken);
      sub_1BF0A2488(a1, a2, v21, v22, qword_1ED8E9E18, type metadata accessor for AuthToken, &unk_1F3DBB240, sub_1BF02E21C, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    }

    else
    {
      v19 = sub_1BF006210(a2, a7, a8);
      (v19)(v19, v20);
    }
  }

  else
  {
    sub_1BF0A1A28(a1, a2, a3, a4);
    sub_1BF0A8340(v17, qword_1ED8E9E18, type metadata accessor for AuthToken);
  }
}

void *sub_1BF09FD50(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBB128, sub_1BF001C08);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

uint64_t sub_1BF09FFB0(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(), uint64_t a10)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v15 = swift_allocObject();
      v15[2] = a7;
      v15[3] = a8;
      v15[4] = a1;

      sub_1BF096E40(a1, a2, 1);
      v16 = sub_1BF006210(a4, sub_1BF02E21C, v15);

      (v16)(v17);
    }

    else
    {
      v19 = a9;
      if (qword_1ED8F0210 != -1)
      {
        swift_once();
      }

      if (off_1ED8F0218 != a4)
      {
        if (qword_1ED8EFB98 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EFC18 != a4 || ([objc_opt_self() isMainThread] & 1) == 0)
        {
          if (qword_1ED8EF920 != -1)
          {
            swift_once();
          }

          if (qword_1ED8EF928 != a4 || [objc_opt_self() isMainThread])
          {
            v20 = swift_allocObject();
            v20[2] = a4;
            v20[3] = a9;
            v20[4] = a10;
            v21 = a4;
            v19 = sub_1BF097A1C;
          }
        }
      }

      (v19)(v22);
    }
  }

  else
  {

    return sub_1BF0A1C60(a1, a2, 0, a4, a5, a6);
  }
}

void *sub_1BF0A0208(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBA548, sub_1BF001BC4);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

void sub_1BF0A0468(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(), uint64_t a8)
{
  v22 = a5;
  v23 = a6;
  sub_1BF0A8950(0, &qword_1EBDCAA58);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v22 - v16;
  sub_1BF0A8394();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = MEMORY[0x1E6967EC8];
      sub_1BF0A8340(v17, &qword_1EBDCAA58, MEMORY[0x1E6967EC8]);
      sub_1BF0A2488(a1, a2, v22, v23, &qword_1EBDCAA58, v19, &unk_1F3DBA638, sub_1BF02E21C, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
    }

    else
    {
      v20 = sub_1BF006210(a2, a7, a8);
      (v20)(v20, v21);
    }
  }

  else
  {
    sub_1BF0A1D30(a1, a2, a3, a4);
    sub_1BF0A8340(v17, &qword_1EBDCAA58, MEMORY[0x1E6967EC8]);
  }
}

uint64_t sub_1BF0A0624(void *a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(), uint64_t a10)
{
  if (!a3)
  {
    return sub_1BF0A2238(a1, a2, 0, a4, a5, a6, &unk_1F3DBA750, sub_1BF096B3C, sub_1BF0A84CC);
  }

  if (a3 == 1)
  {
    v15 = swift_allocObject();
    v15[2] = a7;
    v15[3] = a8;
    v15[4] = a1;

    sub_1BF096B3C(a1, a2, 1);
    v16 = sub_1BF006210(a4, sub_1BF02E21C, v15);

    (v16)(v17);
  }

  else
  {
    v19 = a9;
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a4)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a4 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a4 || [objc_opt_self() isMainThread])
        {
          v20 = swift_allocObject();
          v20[2] = a4;
          v20[3] = a9;
          v20[4] = a10;
          v21 = a4;
          v19 = sub_1BF097A1C;
        }
      }
    }

    (v19)(v22);
  }
}

void *sub_1BF0A08AC(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBAE30, sub_1BF001C08);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

void sub_1BF0A0B0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(), uint64_t a8)
{
  v22 = a5;
  v23 = a6;
  sub_1BF0A8950(0, &qword_1EBDCC220);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v22 - v16;
  sub_1BF0A8394();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = MEMORY[0x1E6968FB0];
      sub_1BF0A8340(v17, &qword_1EBDCC220, MEMORY[0x1E6968FB0]);
      sub_1BF0A2488(a1, a2, v22, v23, &qword_1EBDCC220, v19, &unk_1F3DBAAC0, sub_1BF02E21C, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
    }

    else
    {
      v20 = sub_1BF006210(a2, a7, a8);
      (v20)(v20, v21);
    }
  }

  else
  {
    sub_1BF0A1FB4(a1, a2, a3, a4);
    sub_1BF0A8340(v17, &qword_1EBDCC220, MEMORY[0x1E6968FB0]);
  }
}

void *sub_1BF0A0CC8(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBAC00, sub_1BF001C08);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

uint64_t sub_1BF0A0F28(uint64_t a1, unint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(), uint64_t a10)
{
  if (!a3)
  {
    return sub_1BF0A2238(a1, a2, 0, a4, a5, a6, &unk_1F3DBA9D0, sub_1BF097124, sub_1BF0A84CC);
  }

  if (a3 == 1)
  {
    v15 = swift_allocObject();
    v15[2] = a7;
    v15[3] = a8;
    v15[4] = a1;

    sub_1BF097124(a1, a2, 1);
    v16 = sub_1BF006210(a4, sub_1BF02E21C, v15);

    (v16)(v17);
  }

  else
  {
    v19 = a9;
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a4)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a4 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a4 || [objc_opt_self() isMainThread])
        {
          v20 = swift_allocObject();
          v20[2] = a4;
          v20[3] = a9;
          v20[4] = a10;
          v21 = a4;
          v19 = sub_1BF097A1C;
        }
      }
    }

    (v19)(v22);
  }
}

uint64_t sub_1BF0A11B0(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v13 = swift_allocObject();
      v13[2] = a6;
      v13[3] = a7;
      v13[4] = a1;

      sub_1BEFF779C(a1, 1);
      v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

      (v14)(v15);
    }

    else
    {
      if (qword_1ED8F0210 != -1)
      {
        swift_once();
      }

      if (off_1ED8F0218 != a3)
      {
        if (qword_1ED8EFB98 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
        {
          if (qword_1ED8EF920 != -1)
          {
            swift_once();
          }

          if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
          {
            v18 = swift_allocObject();
            v18[2] = a3;
            v18[3] = a8;
            v18[4] = a9;
            v19 = a3;
            a8 = sub_1BF097A1C;
          }
        }
      }

      (a8)(v20);
    }
  }

  else
  {

    return sub_1BF0A2300(a1, 0, a3, a4, a5);
  }
}

void *sub_1BF0A1400(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBA368, sub_1BF001C08);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

void *sub_1BF0A1660(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v13 = swift_allocObject();
      v13[2] = a6;
      v13[3] = a7;
      v13[4] = a1;

      sub_1BF0512E4(a1, 1);
      v14 = sub_1BF006210(a3, sub_1BF02DBD4, v13);

      (v14)(v15);
    }

    else
    {
      if (qword_1ED8F0210 != -1)
      {
        swift_once();
      }

      if (off_1ED8F0218 != a3)
      {
        if (qword_1ED8EFB98 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
        {
          if (qword_1ED8EF920 != -1)
          {
            swift_once();
          }

          if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
          {
            v18 = swift_allocObject();
            v18[2] = a3;
            v18[3] = a8;
            v18[4] = a9;
            v19 = a3;
            a8 = sub_1BF097A1C;
          }
        }
      }

      (a8)(v20);
    }
  }

  else
  {

    return sub_1BF0A23C0(a1, 0, a3, a4, a5);
  }
}

uint64_t sub_1BF0A18B0(uint64_t result, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v9 = result & 1;
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    *(v10 + 24) = a5;
    *(v10 + 32) = v9;

    v11 = sub_1BF006210(a3, sub_1BF0A8F30, v10);

    (v11)(v12);
  }

  return result;
}

uint64_t sub_1BF0A196C(uint64_t result, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    *(v10 + 24) = a5;
    *(v10 + 32) = v9;

    v11 = sub_1BF006210(a3, sub_1BF0A8F30, v10);

    (v11)(v12);
  }

  return result;
}

uint64_t sub_1BF0A1A28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a2;
  sub_1BF0A8950(0, qword_1ED8E9E18);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for AuthToken(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v12);
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v23 - v16;
  sub_1BF0A8394();
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_1BF0A8340(v8, qword_1ED8E9E18, type metadata accessor for AuthToken);
    __break(1u);
  }

  else
  {
    sub_1BF0A8A64(v8, v17);
    sub_1BF0A8AC8(v17, v13);
    v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = a4;
    sub_1BF0A8A64(v13, v19 + v18);

    v20 = sub_1BF006210(v24, sub_1BF0A8CB0, v19);

    (v20)(v21);

    return sub_1BF0A8B2C(v17);
  }

  return result;
}

uint64_t sub_1BF0A1C60(uint64_t result, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = swift_allocObject();
    v12[2] = a5;
    v12[3] = a6;
    v12[4] = v11;
    v12[5] = a2;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v13 = sub_1BF006210(a4, sub_1BF0A84CC, v12);

    (v13)(v14);
  }

  return result;
}

uint64_t sub_1BF0A1D30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a2;
  sub_1BF0A8950(0, &qword_1EBDCAA58);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v24 - v7;
  v9 = sub_1BF178C6C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v24 - v16;
  sub_1BF0A8394();
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_1BF0A8340(v8, &qword_1EBDCAA58, MEMORY[0x1E6967EC8]);
    __break(1u);
  }

  else
  {
    v18 = *(v10 + 32);
    v18(v17, v8, v9);
    (*(v10 + 16))(v13, v17, v9);
    v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v24;
    *(v20 + 24) = a4;
    v18((v20 + v19), v13, v9);

    v21 = sub_1BF006210(v25, sub_1BF0A83E4, v20);

    (v21)(v22);

    return (*(v10 + 8))(v17, v9);
  }

  return result;
}

uint64_t sub_1BF0A1FB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a2;
  sub_1BF0A8950(0, &qword_1EBDCC220);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v24 - v7;
  v9 = sub_1BF17923C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v24 - v16;
  sub_1BF0A8394();
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_1BF0A8340(v8, &qword_1EBDCC220, MEMORY[0x1E6968FB0]);
    __break(1u);
  }

  else
  {
    v18 = *(v10 + 32);
    v18(v17, v8, v9);
    (*(v10 + 16))(v13, v17, v9);
    v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v24;
    *(v20 + 24) = a4;
    v18((v20 + v19), v13, v9);

    v21 = sub_1BF006210(v25, sub_1BF0A86FC, v20);

    (v21)(v22);

    return (*(v10 + 8))(v17, v9);
  }

  return result;
}

uint64_t sub_1BF0A2238(uint64_t result, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), void (*a9)())
{
  if (a3)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    v16 = swift_allocObject();
    v16[2] = a5;
    v16[3] = a6;
    v16[4] = v15;
    v16[5] = a2;

    v17 = OUTLINED_FUNCTION_41_0();
    a8(v17);
    sub_1BF006210(a4, a9, v16);
    OUTLINED_FUNCTION_31_0();

    a8(v18);
  }

  return result;
}

uint64_t sub_1BF0A2300(uint64_t result, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    *(v10 + 24) = a5;
    *(v10 + 32) = v9 & 1;

    v11 = sub_1BF006210(a3, sub_1BF0A8100, v10);

    (v11)(v12);
  }

  return result;
}

void *sub_1BF0A23C0(void *result, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = swift_allocObject();
    v10[2] = a4;
    v10[3] = a5;
    v10[4] = v9;

    sub_1BF0512E4(v9, 0);
    v11 = sub_1BF006210(a3, sub_1BF001BC4, v10);

    (v11)(v12);
  }

  return result;
}

void sub_1BF0A2488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = OUTLINED_FUNCTION_65_1();
  sub_1BF0A8950(v34, v35);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = (&a9 - v38);
  sub_1BF0A8394();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *v39;
    OUTLINED_FUNCTION_14_0();
    v41 = swift_allocObject();
    v41[2] = v31;
    v41[3] = v29;
    v41[4] = v40;

    v42 = v40;
    sub_1BF006210(v33, v23, v41);
    OUTLINED_FUNCTION_31_0();

    (v23)(v43);

    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    sub_1BF0A8340(v39, v27, v25);
    __break(1u);
  }
}

void sub_1BF0A25FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_57_2();
  v25 = v24;
  v27 = v26;
  OUTLINED_FUNCTION_61_1();
  v29 = v28;
  os_unfair_lock_assert_owner(*(*(v22 + 16) + 16));
  if ((*(v22 + 24) & 1) == 0)
  {
    v32 = OUTLINED_FUNCTION_64_1();
    sub_1BEFEEEE0(v32, v33);
    OUTLINED_FUNCTION_58();
    v34 = swift_allocObject();
    *(v34 + 16) = v29;
    *(v34 + 24) = v23;
    OUTLINED_FUNCTION_38(v22 + 32, v35);

    MEMORY[0x1BFB52290](v36);
    v37 = OUTLINED_FUNCTION_107_0();
    v27(v37);
    OUTLINED_FUNCTION_17_2();
    sub_1BF17A59C();
    swift_endAccess();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_26_4(v22 + 40, v30);
  if (*(v22 + 48) != 255)
  {
    v31 = OUTLINED_FUNCTION_36();
    v25(v31);
LABEL_5:
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_56_2();
    return;
  }

  __break(1u);
}

uint64_t sub_1BF0A26E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1BF0A82D4(0, &qword_1ED8E9E10);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v21 - v10;
  os_unfair_lock_assert_owner(*(*(v4 + 16) + 16));
  if ((*(v4 + 24) & 1) == 0)
  {
    sub_1BEFEEEE0(0, &unk_1EBDCB9D8);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    swift_beginAccess();

    MEMORY[0x1BFB52290](v19);
    sub_1BF005F5C(*((*(v4 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    swift_endAccess();
    sub_1BF0A8950(0, qword_1ED8E9E18);
    v17 = v20;
    v15 = a3;
    v16 = 1;
    return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
  }

  swift_beginAccess();
  sub_1BF0A89BC();
  sub_1BF0A8950(0, qword_1ED8E9E18);
  v13 = v12;
  result = __swift_getEnumTagSinglePayload(v11, 1, v12);
  if (result != 1)
  {
    sub_1BF0A85EC();
    v15 = a3;
    v16 = 0;
    v17 = v13;
    return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
  }

  __break(1u);
  return result;
}

void *sub_1BF0A2948(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_assert_owner(*(*(v3 + 16) + 16));
  if ((*(v3 + 24) & 1) == 0)
  {
    sub_1BEFEEEE0(0, &unk_1EBDCAA30);
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    swift_beginAccess();

    MEMORY[0x1BFB52290](v11);
    sub_1BF005F5C(*((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    swift_endAccess();
    return 0;
  }

  result = swift_beginAccess();
  v7 = *(v3 + 56);
  if (v7 != 255)
  {
    v9 = v3 + 40;
    v8 = *(v3 + 40);
    sub_1BF096E40(v8, *(v9 + 8), v7);
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF0A2A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1BF0A82D4(0, &qword_1EBDCAA50);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v21 - v10;
  os_unfair_lock_assert_owner(*(*(v4 + 16) + 16));
  if ((*(v4 + 24) & 1) == 0)
  {
    sub_1BEFEEEE0(0, &unk_1EBDCAA48);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    swift_beginAccess();

    MEMORY[0x1BFB52290](v19);
    sub_1BF005F5C(*((*(v4 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    swift_endAccess();
    sub_1BF0A8950(0, &qword_1EBDCAA58);
    v17 = v20;
    v15 = a3;
    v16 = 1;
    return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
  }

  swift_beginAccess();
  sub_1BF0A89BC();
  sub_1BF0A8950(0, &qword_1EBDCAA58);
  v13 = v12;
  result = __swift_getEnumTagSinglePayload(v11, 1, v12);
  if (result != 1)
  {
    sub_1BF0A85EC();
    v15 = a3;
    v16 = 0;
    v17 = v13;
    return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
  }

  __break(1u);
  return result;
}

void *sub_1BF0A2CE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_assert_owner(*(*(v3 + 16) + 16));
  if ((*(v3 + 24) & 1) == 0)
  {
    sub_1BF0A8428(0, &unk_1EBDCAA28);
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    swift_beginAccess();

    MEMORY[0x1BFB52290](v11);
    sub_1BF005F5C(*((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    swift_endAccess();
    return 0;
  }

  result = swift_beginAccess();
  v7 = *(v3 + 56);
  if (v7 != 255)
  {
    v9 = v3 + 40;
    v8 = *(v3 + 40);
    sub_1BF096B3C(v8, *(v9 + 8), v7);
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF0A2E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1BF0A82D4(0, &qword_1EBDCB710);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v21 - v10;
  os_unfair_lock_assert_owner(*(*(v4 + 16) + 16));
  if ((*(v4 + 24) & 1) == 0)
  {
    sub_1BEFEEEE0(0, &unk_1EBDCB9A0);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    swift_beginAccess();

    MEMORY[0x1BFB52290](v19);
    sub_1BF005F5C(*((*(v4 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    swift_endAccess();
    sub_1BF0A8950(0, &qword_1EBDCC220);
    v17 = v20;
    v15 = a3;
    v16 = 1;
    return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
  }

  swift_beginAccess();
  sub_1BF0A89BC();
  sub_1BF0A8950(0, &qword_1EBDCC220);
  v13 = v12;
  result = __swift_getEnumTagSinglePayload(v11, 1, v12);
  if (result != 1)
  {
    sub_1BF0A85EC();
    v15 = a3;
    v16 = 0;
    v17 = v13;
    return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF0A3074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  os_unfair_lock_assert_owner(*(*(v4 + 16) + 16));
  if (*(v4 + 24))
  {
    result = swift_beginAccess();
    v9 = *(v4 + 56);
    if (v9 == 255)
    {
      __break(1u);
    }

    else
    {
      v10 = *(v4 + 40);
      v11 = *(v4 + 48);
      *a3 = v10;
      *(a3 + 8) = v11;
      *(a3 + 16) = v9;
      return sub_1BF097124(v10, v11, v9);
    }
  }

  else
  {
    sub_1BEFEC638(0, &qword_1EBDCAA40, MEMORY[0x1E6969080], type metadata accessor for Seal.Handler);
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    swift_beginAccess();

    MEMORY[0x1BFB52290](v13);
    sub_1BF005F5C(*((*(v4 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    result = swift_endAccess();
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
  }

  return result;
}

void sub_1BF0A31A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_57_2();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v22;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  os_unfair_lock_assert_owner(*(*(v31 + 16) + 16));
  if ((*(v31 + 24) & 1) == 0)
  {
    sub_1BEFEC638(0, v30, v28, type metadata accessor for Seal.Handler);
    OUTLINED_FUNCTION_58();
    v40 = swift_allocObject();
    *(v40 + 16) = v35;
    *(v40 + 24) = v33;
    OUTLINED_FUNCTION_38(v31 + 32, v41);

    MEMORY[0x1BFB52290](v42);
    v26(*((*(v31 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    swift_endAccess();
    *v37 = 0;
    *(v37 + 8) = -1;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_26_4(v31 + 40, v38);
  v39 = *(v31 + 48);
  if (v39 != 255)
  {
    *v37 = *(v31 + 40);
    *(v37 + 8) = v39;
    v24();
LABEL_5:
    OUTLINED_FUNCTION_56_2();
    return;
  }

  __break(1u);
}

void (*sub_1BF0A32C0(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result & 1;
    v9 = swift_allocObject();
    *(v9 + 16) = a4;
    *(v9 + 24) = a5;
    *(v9 + 32) = v8;
    v10 = qword_1ED8F0210;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_1BF0A910C;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v12 = [objc_opt_self() isMainThread], v11 = sub_1BF0A910C, (v12 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v13 = [objc_opt_self() isMainThread], v11 = sub_1BF0A910C, v13))
        {
          v14 = swift_allocObject();
          v14[2] = a3;
          v14[3] = sub_1BF0A910C;
          v14[4] = v9;
          v15 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v11;
  }

  return result;
}

void (*sub_1BF0A34A0(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}

void (*sub_1BF0A368C(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    *(v9 + 16) = a4;
    *(v9 + 24) = a5;
    *(v9 + 32) = v8;
    v10 = qword_1ED8F0210;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_1BF0A910C;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v12 = [objc_opt_self() isMainThread], v11 = sub_1BF0A910C, (v12 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v13 = [objc_opt_self() isMainThread], v11 = sub_1BF0A910C, v13))
        {
          v14 = swift_allocObject();
          v14[2] = a3;
          v14[3] = sub_1BF0A910C;
          v14[4] = v9;
          v15 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v11;
  }

  return result;
}

void (*sub_1BF0A386C(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}

void (*sub_1BF0A3A58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4))()
{
  v23 = a3;
  v24 = a2;
  sub_1BF0A82D4(0, &qword_1ED8E9E10);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for AuthToken(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v12);
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v23 - v16;
  sub_1BF0A89BC();
  sub_1BF0A8950(0, qword_1ED8E9E18);
  if (__swift_getEnumTagSinglePayload(v8, 1, v18) == 1)
  {
    result = sub_1BF0A8A10(v8, &qword_1ED8E9E10);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1BF0A8A64(v8, v17);
      sub_1BF0A8AC8(v17, v13);
      v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v23;
      *(v20 + 24) = a4;
      sub_1BF0A8A64(v13, v20 + v19);

      v21 = sub_1BF006210(v24, sub_1BF0A9100, v20);

      sub_1BF0A8B2C(v17);
      return v21;
    }

    result = sub_1BF0A8340(v8, qword_1ED8E9E18, type metadata accessor for AuthToken);
  }

  __break(1u);
  return result;
}

void (*sub_1BF0A3CEC(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}

void (*sub_1BF0A3ED8(void (*result)(), uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6))()
{
  if (a3)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = swift_allocObject();
    v11[2] = a5;
    v11[3] = a6;
    v11[4] = v10;
    v11[5] = a2;
    v12 = qword_1ED8F0210;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_1BF0A9114;
    if (off_1ED8F0218 != a4)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a4 || (v14 = [objc_opt_self() isMainThread], v13 = sub_1BF0A9114, (v14 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a4 || (v15 = [objc_opt_self() isMainThread], v13 = sub_1BF0A9114, v15))
        {
          v16 = swift_allocObject();
          v16[2] = a4;
          v16[3] = sub_1BF0A9114;
          v16[4] = v11;
          v17 = a4;
          return sub_1BF097A1C;
        }
      }
    }

    return v13;
  }

  return result;
}

void (*sub_1BF0A40CC(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}

void (*sub_1BF0A42B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4))()
{
  v24 = a3;
  v25 = a2;
  sub_1BF0A82D4(0, &qword_1EBDCAA50);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v24 - v7;
  v9 = sub_1BF178C6C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v24 - v16;
  sub_1BF0A89BC();
  sub_1BF0A8950(0, &qword_1EBDCAA58);
  if (__swift_getEnumTagSinglePayload(v8, 1, v18) == 1)
  {
    result = sub_1BF0A8A10(v8, &qword_1EBDCAA50);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v19 = *(v10 + 32);
      v19(v17, v8, v9);
      (*(v10 + 16))(v13, v17, v9);
      v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = v24;
      *(v21 + 24) = a4;
      v19((v21 + v20), v13, v9);

      v22 = sub_1BF006210(v25, sub_1BF0A90F4, v21);

      (*(v10 + 8))(v17, v9);
      return v22;
    }

    result = sub_1BF0A8340(v8, &qword_1EBDCAA58, MEMORY[0x1E6967EC8]);
  }

  __break(1u);
  return result;
}

void (*sub_1BF0A4598(void (*result)(), void *a2, char a3, void *a4, uint64_t a5, uint64_t a6))()
{
  if (a3)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = swift_allocObject();
    v11[2] = a5;
    v11[3] = a6;
    v11[4] = v10;
    v11[5] = a2;

    sub_1BF0A8414(v10, a2, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v12 = sub_1BF0A9114;
    if (off_1ED8F0218 != a4)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a4 || (v13 = [objc_opt_self() isMainThread], v12 = sub_1BF0A9114, (v13 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a4 || (v14 = [objc_opt_self() isMainThread], v12 = sub_1BF0A9114, v14))
        {
          v15 = swift_allocObject();
          v15[2] = a4;
          v15[3] = sub_1BF0A9114;
          v15[4] = v11;
          v16 = a4;
          return sub_1BF097A1C;
        }
      }
    }

    return v12;
  }

  return result;
}

void (*sub_1BF0A478C(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}

void (*sub_1BF0A4978(uint64_t a1, void *a2, uint64_t a3, uint64_t a4))()
{
  v24 = a3;
  v25 = a2;
  sub_1BF0A82D4(0, &qword_1EBDCB710);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v24 - v7;
  v9 = sub_1BF17923C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v24 - v16;
  sub_1BF0A89BC();
  sub_1BF0A8950(0, &qword_1EBDCC220);
  if (__swift_getEnumTagSinglePayload(v8, 1, v18) == 1)
  {
    result = sub_1BF0A8A10(v8, &qword_1EBDCB710);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v19 = *(v10 + 32);
      v19(v17, v8, v9);
      (*(v10 + 16))(v13, v17, v9);
      v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = v24;
      *(v21 + 24) = a4;
      v19((v21 + v20), v13, v9);

      v22 = sub_1BF006210(v25, sub_1BF0A90F8, v21);

      (*(v10 + 8))(v17, v9);
      return v22;
    }

    result = sub_1BF0A8340(v8, &qword_1EBDCC220, MEMORY[0x1E6968FB0]);
  }

  __break(1u);
  return result;
}

void (*sub_1BF0A4C58(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}

void (*sub_1BF0A4E44(void (*result)(), unint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6))()
{
  if (a3)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = swift_allocObject();
    v11[2] = a5;
    v11[3] = a6;
    v11[4] = v10;
    v11[5] = a2;

    sub_1BF0A856C(v10, a2, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v12 = sub_1BF0A9114;
    if (off_1ED8F0218 != a4)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a4 || (v13 = [objc_opt_self() isMainThread], v12 = sub_1BF0A9114, (v13 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a4 || (v14 = [objc_opt_self() isMainThread], v12 = sub_1BF0A9114, v14))
        {
          v15 = swift_allocObject();
          v15[2] = a4;
          v15[3] = sub_1BF0A9114;
          v15[4] = v11;
          v16 = a4;
          return sub_1BF097A1C;
        }
      }
    }

    return v12;
  }

  return result;
}

void (*sub_1BF0A5038(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    *(v9 + 16) = a4;
    *(v9 + 24) = a5;
    *(v9 + 32) = v8 & 1;
    v10 = qword_1ED8F0210;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_1BF0A9110;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v12 = [objc_opt_self() isMainThread], v11 = sub_1BF0A9110, (v12 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v13 = [objc_opt_self() isMainThread], v11 = sub_1BF0A9110, v13))
        {
          v14 = swift_allocObject();
          v14[2] = a3;
          v14[3] = sub_1BF0A9110;
          v14[4] = v9;
          v15 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v11;
  }

  return result;
}

void (*sub_1BF0A521C(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}

void (*sub_1BF0A5408(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0A80C8(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF0077B8;
        }
      }
    }

    return v10;
  }

  return result;
}

void (*sub_1BF0A55F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4))()
{
  sub_1BF0A82D4(0, &qword_1ED8E9E10);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v19 - v9);
  sub_1BF0A89BC();
  sub_1BF0A8950(0, qword_1ED8E9E18);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1BF0A8A10(v10, &qword_1ED8E9E10);
LABEL_19:
    __break(1u);
    return result;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    result = sub_1BF0A8340(v10, qword_1ED8E9E18, type metadata accessor for AuthToken);
    goto LABEL_19;
  }

  v12 = *v10;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;

  v14 = v12;
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  if (off_1ED8F0218 == a2)
  {
    goto LABEL_15;
  }

  if (qword_1ED8EFB98 != -1)
  {
    swift_once();
  }

  if (qword_1ED8EFC18 == a2 && ([objc_opt_self() isMainThread] & 1) != 0)
  {
    goto LABEL_15;
  }

  if (qword_1ED8EF920 != -1)
  {
    swift_once();
  }

  if (qword_1ED8EF928 == a2 && ![objc_opt_self() isMainThread])
  {
LABEL_15:
    v17 = sub_1BF02E21C;
  }

  else
  {
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = sub_1BF02E21C;
    v15[4] = v13;
    v16 = a2;
    v17 = sub_1BF097A1C;
  }

  return v17;
}

void (*sub_1BF0A5914(uint64_t a1, void *a2, uint64_t a3, uint64_t a4))()
{
  sub_1BF0A82D4(0, &qword_1EBDCAA50);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v19 - v9);
  sub_1BF0A89BC();
  sub_1BF0A8950(0, &qword_1EBDCAA58);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1BF0A8A10(v10, &qword_1EBDCAA50);
LABEL_19:
    __break(1u);
    return result;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    result = sub_1BF0A8340(v10, &qword_1EBDCAA58, MEMORY[0x1E6967EC8]);
    goto LABEL_19;
  }

  v12 = *v10;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;

  v14 = v12;
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  if (off_1ED8F0218 == a2)
  {
    goto LABEL_15;
  }

  if (qword_1ED8EFB98 != -1)
  {
    swift_once();
  }

  if (qword_1ED8EFC18 == a2 && ([objc_opt_self() isMainThread] & 1) != 0)
  {
    goto LABEL_15;
  }

  if (qword_1ED8EF920 != -1)
  {
    swift_once();
  }

  if (qword_1ED8EF928 == a2 && ![objc_opt_self() isMainThread])
  {
LABEL_15:
    v17 = sub_1BF02E21C;
  }

  else
  {
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = sub_1BF02E21C;
    v15[4] = v13;
    v16 = a2;
    v17 = sub_1BF097A1C;
  }

  return v17;
}

void (*sub_1BF0A5C34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4))()
{
  sub_1BF0A82D4(0, &qword_1EBDCB710);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v19 - v9);
  sub_1BF0A89BC();
  sub_1BF0A8950(0, &qword_1EBDCC220);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1BF0A8A10(v10, &qword_1EBDCB710);
LABEL_19:
    __break(1u);
    return result;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    result = sub_1BF0A8340(v10, &qword_1EBDCC220, MEMORY[0x1E6968FB0]);
    goto LABEL_19;
  }

  v12 = *v10;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;

  v14 = v12;
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  if (off_1ED8F0218 == a2)
  {
    goto LABEL_15;
  }

  if (qword_1ED8EFB98 != -1)
  {
    swift_once();
  }

  if (qword_1ED8EFC18 == a2 && ([objc_opt_self() isMainThread] & 1) != 0)
  {
    goto LABEL_15;
  }

  if (qword_1ED8EF920 != -1)
  {
    swift_once();
  }

  if (qword_1ED8EF928 == a2 && ![objc_opt_self() isMainThread])
  {
LABEL_15:
    v17 = sub_1BF02E21C;
  }

  else
  {
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = sub_1BF02E21C;
    v15[4] = v13;
    v16 = a2;
    v17 = sub_1BF097A1C;
  }

  return v17;
}

uint64_t sub_1BF0A6038(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BF082B24(a4, a3, isUniquelyReferenced_nonNull_native, v12, v13, v14, v15, v16, v18, *a2);
    *a2 = v19;
    swift_endAccess();
    v17 = *(v19 + 16);
    result = sub_1BEFE90AC(a5);
    if (v17 == result)
    {
      swift_beginAccess();
      *a1 = 1;
      sub_1BF0998D8(0, v17, a2);
      sub_1BF000C1C();
    }
  }

  return result;
}

uint64_t sub_1BF0A6158(_BYTE *a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5)
{
  result = swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BF082E54(a4 & 1, a3, isUniquelyReferenced_nonNull_native, v12, v13, v14, v15, v16, v18, *a2);
    *a2 = v19;
    swift_endAccess();
    v17 = *(v19 + 16);
    result = sub_1BEFE90AC(a5);
    if (v17 == result)
    {
      swift_beginAccess();
      *a1 = 1;
      sub_1BF099A54(0, v17, a2);
      sub_1BF000C1C();
    }
  }

  return result;
}

uint64_t sub_1BF0A6270()
{
  v2 = OUTLINED_FUNCTION_101();
  v3 = OUTLINED_FUNCTION_87(v2);
  UnfairLock.init(options:)(v6);
  OUTLINED_FUNCTION_66();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  sub_1BEFEEEE0(0, &unk_1ED8E9CE8);
  OUTLINED_FUNCTION_27();
  v4 = swift_allocObject();
  swift_unownedRetain();
  sub_1BF08B814(v3, v4, v0);
  OUTLINED_FUNCTION_66();
  swift_unownedRelease();
  swift_unownedRelease();
  OUTLINED_FUNCTION_125(v1, v6);
  *v1 = v3;

  return v0;
}

void sub_1BF0A6484()
{
  OUTLINED_FUNCTION_41_2();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    sub_1BEFEC638(0, v7, v8, v9);
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_33_2(v10);
    *(v3 + 16) = v2;
    *(v3 + 24) = 2 * (v11 / 24);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v12 = OUTLINED_FUNCTION_84_0();
  if (v1)
  {
    if (v3 != v0 || &v13[24 * v2] <= v12)
    {
      memmove(v12, v13, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF0A658C()
{
  OUTLINED_FUNCTION_41_2();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  OUTLINED_FUNCTION_16_4();
  v7 = MEMORY[0x1E69E7CA0];
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    sub_1BEFEC638(0, v8, v7 + 8, v9);
    v10 = OUTLINED_FUNCTION_91();
    OUTLINED_FUNCTION_33_2(v10);
    OUTLINED_FUNCTION_24_6(v11);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v12 = OUTLINED_FUNCTION_84_0();
  if (v1)
  {
    if (v3 != v0 || &v13[32 * v2] <= v12)
    {
      memmove(v12, v13, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF0A6688()
{
  OUTLINED_FUNCTION_140();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v6 = v4;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_1BF0A8428(0, &unk_1EBDCB980);
    v11 = OUTLINED_FUNCTION_91();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_15_4();
    v11[2] = v9;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_139();
  if (v1)
  {
    if (v11 != v0 || v3 + 16 * v9 <= v2)
    {
      v14 = OUTLINED_FUNCTION_60_0();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_1();
    sub_1BEFEC638(0, v17, v18, v19);
    OUTLINED_FUNCTION_60_0();
    swift_arrayInitWithCopy();
  }
}

void sub_1BF0A6798()
{
  OUTLINED_FUNCTION_41_2();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  OUTLINED_FUNCTION_98_0();
  if (v2)
  {
    sub_1BEFEEEE0(0, &qword_1EBDCB988);
    v7 = OUTLINED_FUNCTION_91();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_15_4();
    *(v7 + 2) = v3;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_1BF0A68B0()
{
  OUTLINED_FUNCTION_18_1();
  if (v6)
  {
    OUTLINED_FUNCTION_2();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_8_0();
      if (v8)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v7 = v4;
  }

  v10 = v0[2];
  if (v7 <= v10)
  {
    v11 = v0[2];
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    v5(0);
    v12 = OUTLINED_FUNCTION_91();
    _swift_stdlib_malloc_size(v12);
    OUTLINED_FUNCTION_15_4();
    v12[2] = v10;
    v12[3] = v13;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v3)
  {
    if (v12 != v0 || &v0[2 * v10 + 4] <= v12 + 4)
    {
      v15 = OUTLINED_FUNCTION_110_0();
      memmove(v15, v16, v17);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1BEFF3A00(0, v2, v1, 0);
    OUTLINED_FUNCTION_110_0();
    swift_arrayInitWithCopy();
  }
}

void sub_1BF0A69AC()
{
  OUTLINED_FUNCTION_41_2();
  if (v6)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    sub_1BEFEEEE0(0, &unk_1EBDCB9F0);
    v9 = OUTLINED_FUNCTION_91();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_22_3();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_139();
  if (v1)
  {
    if (v9 != v0 || v5 + 8 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_60_0();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1BF096DCC(0);
    OUTLINED_FUNCTION_60_0();
    swift_arrayInitWithCopy();
  }
}

char *sub_1BF0A6B98(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BEFEC638(0, &qword_1ED8EAD68, &type metadata for BackgroundFetchResult, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

void sub_1BF0A6CE4()
{
  OUTLINED_FUNCTION_41_2();
  if (v6)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    OUTLINED_FUNCTION_8_5(v9, &unk_1EBDCA890);
    v10 = OUTLINED_FUNCTION_91();
    _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_22_3();
    v10[2] = v2;
    v10[3] = v11;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_139();
  if (v1)
  {
    if (v10 != v0 || v5 + 8 * v2 <= v4)
    {
      v14 = OUTLINED_FUNCTION_60_0();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    OUTLINED_FUNCTION_126_0(v12, &qword_1ED8EFD30, MEMORY[0x1E69E7280]);
    OUTLINED_FUNCTION_60_0();
    swift_arrayInitWithCopy();
  }
}

void sub_1BF0A6DDC()
{
  OUTLINED_FUNCTION_41_2();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    sub_1BEFEC638(0, v7, v8, v9);
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_33_2(v10);
    *(v3 + 16) = v2;
    *(v3 + 24) = 2 * (v11 / 40);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v12 = OUTLINED_FUNCTION_84_0();
  if (v1)
  {
    if (v3 != v0 || &v13[40 * v2] <= v12)
    {
      memmove(v12, v13, 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1BF0A6F2C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_10(a3, result);
  }

  return result;
}

char *sub_1BF0A6F50(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_10(a3, result);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StartupTaskManager.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BF0A7080(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF0A70C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BF0A7114()
{
  result = qword_1EBDCB978;
  if (!qword_1EBDCB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB978);
  }

  return result;
}

void sub_1BF0A7168(uint64_t a1)
{
  if (!qword_1EBDCA8A0)
  {
    sub_1BEFF3A00(255, &qword_1EBDCAB80, &protocol descriptor for BackgroundFetchWorker, 0);
    v1 = sub_1BF17B70C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDCA8A0);
    }
  }
}

void sub_1BF0A71D4()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v42[2] = *MEMORY[0x1E69E9840];
  if (*(v1 + 16))
  {
    v42[0] = v0;
    v3 = *(v0 + 16);
    v40 = v0 + 32;
    v4 = v1 + 56;
    v5 = 0;
    v41 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v39 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v40 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      sub_1BF17BB6C();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF179F3C();
      v9 = sub_1BF17BB9C();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = v9 & v10;
        v12 = (v9 & v10) >> 6;
        v13 = 1 << (v9 & v10);
        if ((v13 & *(v4 + 8 * v12)) == 0)
        {

          v3 = v39;
          goto LABEL_3;
        }

        v14 = (*(v2 + 48) + 16 * v11);
        v15 = *v14 == v8 && v14[1] == v7;
        if (v15 || (sub_1BF17B86C() & 1) != 0)
        {
          break;
        }

        v9 = v11 + 1;
      }

      v16 = v5;
      v42[1] = v5;

      v19 = *(v2 + 32);
      v20 = ((1 << v19) + 63) >> 6;
      v21 = 8 * v20;
      if ((v19 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v34 = swift_slowAlloc();
          sub_1BF0A7A54(v34, v20, (v2 + 56), v20, v2, v11, v42);
          OUTLINED_FUNCTION_66();

          MEMORY[0x1BFB547B0](v34, -1, -1);

          goto LABEL_35;
        }
      }

      v35[0] = v20;
      v35[1] = v35;
      MEMORY[0x1EEE9AC00](v17, v18);
      v22 = v35 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v22, (v2 + 56), v21);
      v23 = *&v22[8 * v12] & ~v13;
      v37 = v22;
      *&v22[8 * v12] = v23;
      v24 = *(v2 + 16) - 1;
      v11 = v41;
      v39 = *(v41 + 16);
      v20 = v16;
      while (1)
      {
        v36 = v24;
        v38 = v16;
LABEL_16:
        while (2)
        {
          if (v20 == v39)
          {
            sub_1BF004110(v37, v35[0], v36, v2);
            goto LABEL_33;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v20 >= *(v11 + 16))
          {
            goto LABEL_37;
          }

          v25 = (v40 + 16 * v20);
          v13 = *v25;
          v12 = v25[1];
          ++v20;
          sub_1BF17BB6C();
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
          sub_1BF179F3C();
          v26 = sub_1BF17BB9C();
          v21 = ~(-1 << *(v2 + 32));
          do
          {
            v27 = v26 & v21;
            v28 = (v26 & v21) >> 6;
            v29 = 1 << (v26 & v21);
            if ((v29 & *(v4 + 8 * v28)) == 0)
            {

              v11 = v41;
              v16 = v38;
              goto LABEL_16;
            }

            v30 = (*(v2 + 48) + 16 * v27);
            if (*v30 == v13 && v30[1] == v12)
            {
              break;
            }

            v32 = sub_1BF17B86C();
            v26 = v27 + 1;
          }

          while ((v32 & 1) == 0);

          v33 = v37[v28];
          v37[v28] = v33 & ~v29;
          v15 = (v33 & v29) == 0;
          v11 = v41;
          v16 = v38;
          if (v15)
          {
            continue;
          }

          break;
        }

        v24 = v36 - 1;
        if (__OFSUB__(v36, 1))
        {
          break;
        }

        v16 = v20;
        if (v36 == 1)
        {

          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {
  }

LABEL_35:
  OUTLINED_FUNCTION_26_2();
}

unint64_t *sub_1BF0A75EC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v14 = *v13;
    v15 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_1BF17BB6C();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF179F3C();
    v16 = sub_1BF17BB9C();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v14 && v21[1] == v15)
      {
        break;
      }

      v23 = sub_1BF17B86C();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_1BF004110(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_1BF0A77FC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v25 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v26 = a5;
  while (1)
  {
    v24 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_1BF004110(v25, a2, v24, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);
    a5[1] = v9 + 1;
    sub_1BF17BB6C();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF179F3C();
    v14 = sub_1BF17BB9C();
    v15 = ~(-1 << *(a3 + 32));
    do
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = 1 << (v14 & v15);
      if ((v18 & *(v8 + 8 * v17)) == 0)
      {

        a5 = v26;
        goto LABEL_3;
      }

      v19 = (*(a3 + 48) + 16 * v16);
      if (*v19 == v12 && v19[1] == v13)
      {
        break;
      }

      v21 = sub_1BF17B86C();
      v14 = v16 + 1;
    }

    while ((v21 & 1) == 0);

    v22 = v25[v17];
    v25[v17] = v22 & ~v18;
    a5 = v26;
    if ((v22 & v18) == 0)
    {
      goto LABEL_3;
    }

    v7 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_20;
    }

    if (v24 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t *sub_1BF0A79CC(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1BF0A75EC(a1, a2, a5, a6, a7);

  return v12;
}

unint64_t *sub_1BF0A7A54(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1BF0A77FC(a1, a2, a5, a6, a7);

  return v12;
}

id sub_1BF0A80C8(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1BF0512E4(result, a2);
  }

  return result;
}

unint64_t sub_1BF0A8200()
{
  result = qword_1ED8ED690;
  if (!qword_1ED8ED690)
  {
    sub_1BF17923C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8ED690);
  }

  return result;
}

void sub_1BF0A82D4(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_136();
    sub_1BF0A8950(v3, v4);
    v5 = sub_1BF17AE6C();
    if (!v6)
    {
      atomic_store(v5, v2);
    }
  }
}

uint64_t sub_1BF0A8340(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1BF0A8950(0, a2);
  OUTLINED_FUNCTION_12();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BF0A8394()
{
  v1 = OUTLINED_FUNCTION_35_1();
  sub_1BF0A8950(v1, v2);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_36();
  v4(v3);
  return v0;
}

id sub_1BF0A8414(id result, id a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1BF096B3C(result, a2, a3);
  }

  return result;
}

void sub_1BF0A8428(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_81_1(a1, a2))
  {
    v4 = v3;
    v5 = v2;
    OUTLINED_FUNCTION_50_1();
    sub_1BEFEC638(255, v6, v7, v8);
    v9 = OUTLINED_FUNCTION_75();
    v10 = v4(v9);
    if (!v11)
    {
      atomic_store(v10, v5);
    }
  }
}

uint64_t objectdestroy_154Tm()
{

  v0 = OUTLINED_FUNCTION_97();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

unint64_t sub_1BF0A84D8()
{
  result = qword_1ED8EF3D8[0];
  if (!qword_1ED8EF3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EF3D8);
  }

  return result;
}

uint64_t sub_1BF0A856C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1BF097124(result, a2, a3);
  }

  return result;
}

uint64_t objectdestroy_210Tm()
{

  sub_1BF014E18(*(v0 + 32), *(v0 + 40));
  v1 = OUTLINED_FUNCTION_97();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF0A85EC()
{
  v1 = OUTLINED_FUNCTION_35_1();
  sub_1BF0A8950(v1, v2);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_36();
  v4(v3);
  return v0;
}

uint64_t objectdestroy_129Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 32) & ~v5;
  v8 = *(v7 + 64);

  (*(v4 + 8))(v1 + v6, v2);

  return MEMORY[0x1EEE6BDD0](v1, v6 + v8, v5 | 7);
}

id sub_1BF0A8880(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1BF096E40(result, a2, a3);
  }

  return result;
}

uint64_t objectdestroy_343Tm()
{

  v0 = OUTLINED_FUNCTION_97();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void sub_1BF0A8950(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v4 = OUTLINED_FUNCTION_136();
    v6 = v5(v4);
    v8 = type metadata accessor for Seal.Resolution(a1, v6, v6, v7);
    if (!v9)
    {
      atomic_store(v8, v2);
    }
  }
}

uint64_t sub_1BF0A89BC()
{
  v1 = OUTLINED_FUNCTION_35_1();
  sub_1BF0A82D4(v1, v2);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_36();
  v4(v3);
  return v0;
}

uint64_t sub_1BF0A8A10(uint64_t a1, void *a2)
{
  sub_1BF0A82D4(0, a2);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BF0A8A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthToken(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF0A8AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthToken(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF0A8B2C(uint64_t a1)
{
  v2 = type metadata accessor for AuthToken(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_398Tm()
{
  v1 = (type metadata accessor for AuthToken(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  sub_1BF1794AC();
  OUTLINED_FUNCTION_12();
  (*(v5 + 8))(v0 + v3);
  v6 = v1[7];
  sub_1BF17923C();
  OUTLINED_FUNCTION_12();
  (*(v7 + 8))(v0 + v3 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BF0A8CC8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_68(v2);
  return (*(v1 + 16))(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
}

void sub_1BF0A8D34(uint64_t a1)
{
  if (!qword_1EBDCB9E0)
  {
    sub_1BEFF3A00(255, &qword_1EBDCB9E8, &protocol descriptor for DeviceStoragePurgeable, 0);
    v1 = sub_1BF17B70C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDCB9E0);
    }
  }
}

void sub_1BF0A8DA0(uint64_t a1)
{
  if (!qword_1EBDCB9F8)
  {
    sub_1BEFF3A00(255, &qword_1EBDCBA00, &protocol descriptor for DiagnosticFileProvider, 0);
    v1 = sub_1BF17B70C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDCB9F8);
    }
  }
}

void sub_1BF0A9028(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_81_1(a1, a2))
  {
    v4 = v2;
    v3();
    OUTLINED_FUNCTION_32_2();
    v5 = sub_1BF17B19C();
    if (!v6)
    {
      atomic_store(v5, v4);
    }
  }
}

unint64_t sub_1BF0A9098()
{
  result = qword_1EBDCBA50;
  if (!qword_1EBDCBA50)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EBDCBA50);
  }

  return result;
}

void OUTLINED_FUNCTION_67_1()
{

  UnfairLock.lock()();
}

void OUTLINED_FUNCTION_74_1()
{

  UnfairLock.lock()();
}

void (*OUTLINED_FUNCTION_93_0())()
{

  return sub_1BF006210(v0, v2, v1);
}

void (*OUTLINED_FUNCTION_116_0())()
{

  return sub_1BF006210(v2, v0, v1);
}

void OUTLINED_FUNCTION_120_0(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  sub_1BEFFF9F8(a5, v20, v21, v19, a1, a2, a3, a4, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

void OUTLINED_FUNCTION_121_0()
{

  sub_1BF0A8950(0, v0);
}

uint64_t OUTLINED_FUNCTION_122_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a1[2] = a11;
  a1[3] = v12;
  a1[4] = v11;
}

uint64_t OUTLINED_FUNCTION_126_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{

  return sub_1BEFF3A00(0, a2, a3, 1);
}

id _s13TeaFoundation19AsyncBlockOperationCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for XPCArgumentBuilder(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void static Ternary.|| infix(_:_:)(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  sub_1BF0A95E4();
  v6 = 0;
  if (v4 && v5)
  {
    if (v4 == 2 || v5 == 2)
    {
      v6 = 2;
    }

    else
    {
      if (v4 != 1 && v5 != 1)
      {
        sub_1BF17B85C();
        __break(1u);
        return;
      }

      v6 = 1;
    }
  }

  *a3 = v6;
}

void sub_1BF0A95E4()
{
  if (!qword_1ED8EB070)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8EB070);
    }
  }
}

void static Ternary.&& infix(_:_:)(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  sub_1BF0A95E4();
  if (v4 == 1 || v5 == 1)
  {
    v7 = 1;
LABEL_15:
    *a3 = v7;
    return;
  }

  if (v4 == 2 || v5 == 2)
  {
    v7 = 2;
    goto LABEL_15;
  }

  v7 = 0;
  if (!v4 || !v5)
  {
    goto LABEL_15;
  }

  sub_1BF17B85C();
  __break(1u);
}

uint64_t Ternary.hashValue.getter()
{
  v1 = *v0;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0A976C(uint64_t a1)
{
  v2 = *v1;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v2);
  return sub_1BF17BB9C();
}

uint64_t Ternary.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_2_11();
  sub_1BF17BBBC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    OUTLINED_FUNCTION_2_11();
    v5 = sub_1BF17B89C();
    v7 = v5;
    v8 = v6;
    v9 = v5 == 1702195828 && v6 == 0xE400000000000000;
    if (v9 || (OUTLINED_FUNCTION_0_16(1702195828, 0xE400000000000000) & 1) != 0)
    {

      v10 = 0;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v15);
      *a2 = v10;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v12 = v7 == 0x65736C6166 && v8 == 0xE500000000000000;
    if (v12 || (OUTLINED_FUNCTION_0_16(0x65736C6166, 0xE500000000000000) & 1) != 0)
    {

      v10 = 1;
      goto LABEL_10;
    }

    v13 = OUTLINED_FUNCTION_1_13();
    v14 = v7 == v13 && v8 == 0xE700000000000000;
    if (v14 || (OUTLINED_FUNCTION_0_16(v13, 0xE700000000000000) & 1) != 0)
    {

      v10 = 2;
      goto LABEL_10;
    }

    sub_1BF17B1EC();

    MEMORY[0x1BFB52000](v7, v8);

    MEMORY[0x1BFB52000](39, 0xE100000000000000);
    sub_1BF17B29C();
    swift_allocError();
    sub_1BF17B26C();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Ternary.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF17BBFC();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  if (v2 > 1)
  {
    OUTLINED_FUNCTION_1_13();
  }

  sub_1BF17B91C();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

unint64_t sub_1BF0A9AB8()
{
  result = qword_1EBDCBAE0;
  if (!qword_1EBDCBAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBAE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Ternary(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void *Gate.__allocating_init(name:queue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  result[5] = 0;
  result[6] = v7;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *Gate.init(name:queue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v3[5] = 0;
  v3[6] = v4;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

Swift::Void __swiftcall Gate.enter()()
{
  v1 = sub_1BF179C5C();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = v0[4];
  *(v7 - v6) = v9;
  (*(v3 + 104))(v7 - v6, *MEMORY[0x1E69E8020], v1);
  v10 = v9;
  LOBYTE(v9) = sub_1BF179C8C();
  (*(v3 + 8))(v8, v1);
  if (v9)
  {
    v11 = v0[5];
    v12 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      v0[5] = v12;
      sub_1BF071C70(0);
      v14 = OUTLINED_FUNCTION_3_9(v13);
      *(v14 + 16) = xmmword_1BF17E820;
      v16 = v0[2];
      v15 = v0[3];
      *(v14 + 56) = MEMORY[0x1E69E6158];
      v17 = sub_1BF071CD8();
      *(v14 + 32) = v16;
      *(v14 + 40) = v15;
      v18 = MEMORY[0x1E69E65A8];
      *(v14 + 96) = MEMORY[0x1E69E6530];
      *(v14 + 104) = v18;
      *(v14 + 64) = v17;
      *(v14 + 72) = v12;
      sub_1BF071C2C();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v19 = sub_1BF17AE3C();
      sub_1BF17ACDC();
      OUTLINED_FUNCTION_2_12();
      sub_1BF1797CC(v20);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall Gate.exit()()
{
  v1 = v0;
  v2 = sub_1BF179C5C();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = v1[4];
  *(v8 - v7) = v10;
  (*(v4 + 104))(v8 - v7, *MEMORY[0x1E69E8020], v2);
  v11 = v10;
  LOBYTE(v10) = sub_1BF179C8C();
  (*(v4 + 8))(v9, v2);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v1[5];
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v15 = v14 & ~(v14 >> 63);
  v1[5] = v15;
  sub_1BF071C70(0);
  v17 = v16;
  v18 = OUTLINED_FUNCTION_3_9(v16);
  *(v18 + 16) = xmmword_1BF17E820;
  v20 = v1[2];
  v19 = v1[3];
  *(v18 + 56) = MEMORY[0x1E69E6158];
  v21 = sub_1BF071CD8();
  *(v18 + 32) = v20;
  *(v18 + 40) = v19;
  v22 = MEMORY[0x1E69E6530];
  v23 = MEMORY[0x1E69E65A8];
  *(v18 + 96) = MEMORY[0x1E69E6530];
  *(v18 + 104) = v23;
  *(v18 + 64) = v21;
  *(v18 + 72) = v15;
  sub_1BF071C2C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v24 = sub_1BF17AE3C();
  v25 = sub_1BF17ACDC();
  sub_1BF1797CC("Loading gate %@ exit, state=%ld", 31, 2, &dword_1BEFE0000, v24, v25, v18);

  if (!v1[5])
  {
    swift_beginAccess();
    v26 = v1[6];
    v1[6] = MEMORY[0x1E69E7CC0];
    v27 = OUTLINED_FUNCTION_3_9(v17);
    *(v27 + 16) = xmmword_1BF17E820;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = v21;
    *(v27 + 32) = v20;
    *(v27 + 40) = v19;
    v28 = *(v26 + 16);
    *(v27 + 96) = v22;
    *(v27 + 104) = v23;
    *(v27 + 72) = v28;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v29 = sub_1BF17AE3C();
    sub_1BF17ACDC();
    OUTLINED_FUNCTION_2_12();
    sub_1BF1797CC(v30);

    v31 = *(v26 + 16);
    if (v31)
    {
      v32 = v26 + 40;
      do
      {
        v33 = *(v32 - 8);

        v33(v34);

        v32 += 16;
        --v31;
      }

      while (v31);
    }
  }
}

uint64_t sub_1BF0AA0E4(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_1BF179C5C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = a1[4];
  *v10 = v12;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);

  v13 = v12;
  LOBYTE(v12) = sub_1BF179C8C();
  result = (*(v7 + 8))(v10, v6);
  if (v12)
  {
    v15 = a1[5];
    sub_1BF071C70(0);
    if (v15)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1BF17E820;
      v18 = a1[2];
      v17 = a1[3];
      *(v16 + 56) = MEMORY[0x1E69E6158];
      v19 = sub_1BF071CD8();
      *(v16 + 32) = v18;
      *(v16 + 40) = v17;
      v20 = MEMORY[0x1E69E65A8];
      *(v16 + 96) = MEMORY[0x1E69E6530];
      *(v16 + 104) = v20;
      *(v16 + 64) = v19;
      *(v16 + 72) = v15;
      sub_1BF071C2C();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v21 = sub_1BF17AE3C();
      v22 = sub_1BF17ACDC();
      sub_1BF1797CC("Waiting on gate %@ because gate is locked, state=%ld", 52, 2, &dword_1BEFE0000, v21, v22, v16);

      v23 = swift_allocObject();
      *(v23 + 16) = sub_1BF006170;
      *(v23 + 24) = v11;
      swift_beginAccess();

      sub_1BF071BB4();
      v24 = *(a1[6] + 16);
      sub_1BF071DF0(v24);
      v25 = a1[6];
      *(v25 + 16) = v24 + 1;
      v26 = v25 + 16 * v24;
      *(v26 + 32) = sub_1BF0AAA74;
      *(v26 + 40) = v23;
      a1[6] = v25;
      swift_endAccess();
    }

    else
    {
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1BF17DEF0;
      v29 = a1[2];
      v28 = a1[3];
      *(v27 + 56) = MEMORY[0x1E69E6158];
      *(v27 + 64) = sub_1BF071CD8();
      *(v27 + 32) = v29;
      *(v27 + 40) = v28;
      sub_1BF071C2C();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v30 = sub_1BF17AE3C();
      v31 = sub_1BF17ACDC();
      sub_1BF1797CC("Attempted to wait on gate %@ but no state, invoking immediately", 63, 2, &dword_1BEFE0000, v30, v31, v27);

      a2();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Gate.wait(closure:)(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BF179C5C();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = v3[4];
  *(v12 - v11) = v14;
  (*(v8 + 104))(v12 - v11, *MEMORY[0x1E69E8020], v6);
  v15 = v14;
  LOBYTE(v14) = sub_1BF179C8C();
  result = (*(v8 + 8))(v13, v6);
  if (v14)
  {
    v17 = v3[5];
    sub_1BF071C70(0);
    if (v17)
    {
      v19 = OUTLINED_FUNCTION_3_9(v18);
      *(v19 + 16) = xmmword_1BF17E820;
      v21 = v3[2];
      v20 = v3[3];
      *(v19 + 56) = MEMORY[0x1E69E6158];
      v22 = sub_1BF071CD8();
      *(v19 + 32) = v21;
      *(v19 + 40) = v20;
      v23 = MEMORY[0x1E69E65A8];
      *(v19 + 96) = MEMORY[0x1E69E6530];
      *(v19 + 104) = v23;
      *(v19 + 64) = v22;
      *(v19 + 72) = v17;
      sub_1BF071C2C();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v24 = sub_1BF17AE3C();
      sub_1BF17ACDC();
      OUTLINED_FUNCTION_2_12();
      sub_1BF1797CC(v25);

      v26 = swift_allocObject();
      *(v26 + 16) = a1;
      *(v26 + 24) = a2;
      swift_beginAccess();

      sub_1BF071BB4();
      v27 = *(v3[6] + 16);
      sub_1BF071DF0(v27);
      v28 = v3[6];
      *(v28 + 16) = v27 + 1;
      v29 = v28 + 16 * v27;
      *(v29 + 32) = sub_1BF006170;
      *(v29 + 40) = v26;
      v3[6] = v28;
      return swift_endAccess();
    }

    else
    {
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1BF17DEF0;
      v32 = v3[2];
      v31 = v3[3];
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 64) = sub_1BF071CD8();
      *(v30 + 32) = v32;
      *(v30 + 40) = v31;
      sub_1BF071C2C();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v33 = sub_1BF17AE3C();
      sub_1BF17ACDC();
      OUTLINED_FUNCTION_2_12();
      sub_1BF1797CC(v34);

      return a1();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Gate.wait()()
{
  v1 = v0;
  sub_1BF00361C(0, &qword_1ED8ED8C0, type metadata accessor for Promise);
  v2 = swift_allocObject();
  v6 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();

  v3 = UnfairLock.init(options:)(&v6);
  sub_1BF00361C(0, &qword_1ED8ED8D0, type metadata accessor for Seal);
  swift_allocObject();
  *(v2 + 16) = sub_1BF034CD4(v3);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1BF0357A4;
  *(v4 + 24) = v2;
  swift_retain_n();

  sub_1BF0AA0E4(v1, sub_1BF0004B0, v4);

  return v2;
}

uint64_t Gate.deinit()
{

  return v0;
}

uint64_t Gate.__deallocating_deinit()
{
  Gate.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

unint64_t Gate.description.getter()
{
  sub_1BF17B1EC();

  MEMORY[0x1BFB52000](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1BFB52000](0x3D6574617473202CLL, 0xE800000000000000);
  v1 = sub_1BF17B6FC();
  MEMORY[0x1BFB52000](v1);

  MEMORY[0x1BFB52000](0x7275736F6C63202CLL, 0xEB000000003D7365);
  swift_beginAccess();
  v2 = sub_1BF17B6FC();
  MEMORY[0x1BFB52000](v2);

  MEMORY[0x1BFB52000](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t sub_1BF0AAA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1BEFF9A40(a1, v18);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1BF050248();

    *v3 = v17;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CA0];
    v8 = MEMORY[0x1E69E6720];
    sub_1BF0ABBDC(a1, &qword_1ED8EFBA0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1BF0ABB8C);
    sub_1BF082568(a2, a3, v9, v10, v11, v12, v13, v14, v15, v16);

    return sub_1BF0ABBDC(v18, &qword_1ED8EFBA0, v7 + 8, v8, sub_1BF0ABB8C);
  }

  return result;
}

uint64_t sub_1BF0AAB8C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1BEFF9A40(a1, v26);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_13();
    sub_1BF082AB0(v4, v5, v6, v7, v8, v9, v10, v11, v23, v24, v26[0], v26[1]);
    *v2 = v25;
    sub_1BF17B42C();
    OUTLINED_FUNCTION_0_0();
    return (*(v12 + 8))(a2);
  }

  else
  {
    v14 = MEMORY[0x1E69E6720];
    sub_1BF0ABBDC(a1, &qword_1EBDCA880, sub_1BF083CF8, MEMORY[0x1E69E6720], sub_1BF0ABA08);
    sub_1BF0827B4(a2, v15, v16, v17, v18, v19, v20, v21, v23, v24);
    sub_1BF17B42C();
    OUTLINED_FUNCTION_0_0();
    (*(v22 + 8))(a2);
    return sub_1BF0ABBDC(v26, &qword_1EBDCA880, sub_1BF083CF8, v14, sub_1BF0ABA08);
  }
}

uint64_t sub_1BF0AACD4()
{
  OUTLINED_FUNCTION_7_7();
  v2 = type metadata accessor for AuthToken(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v6 = type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_87(v6);
  UnfairLock.init(options:)(&v11);
  sub_1BF0A8AC8(v1, v5);
  sub_1BF0ABA08(0, &qword_1ED8E9DD0, type metadata accessor for AuthToken, type metadata accessor for Seal);
  swift_allocObject();
  v7 = OUTLINED_FUNCTION_6_10();
  v8 = sub_1BF0AB2BC(v7, v5);
  sub_1BF0A8B2C(v1);
  *(v0 + 16) = v8;
  return v0;
}

uint64_t sub_1BF0AADDC()
{
  OUTLINED_FUNCTION_7_7();
  v1 = OUTLINED_FUNCTION_110();
  v2 = OUTLINED_FUNCTION_87(v1);
  OUTLINED_FUNCTION_120(v2, v3);
  sub_1BF0ABA08(0, &qword_1ED8E9DC8, sub_1BF027B68, type metadata accessor for Seal);
  OUTLINED_FUNCTION_10_11(v4);
  v5 = OUTLINED_FUNCTION_6_10();
  v6 = sub_1BF0AB4CC(v5, v0);
  return OUTLINED_FUNCTION_8_6(v6);
}

uint64_t sub_1BF0AAE6C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5 = OUTLINED_FUNCTION_87(v4);
  v7 = OUTLINED_FUNCTION_120(v5, v6);
  sub_1BF0ABA08(0, &qword_1EBDCAA08, sub_1BF096F0C, type metadata accessor for Seal);
  swift_allocObject();
  v8 = sub_1BF0AB448(v7, a1, a2);
  return OUTLINED_FUNCTION_8_6(v8);
}

uint64_t sub_1BF0AAF30(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v9 = OUTLINED_FUNCTION_110();
  v10 = OUTLINED_FUNCTION_87(v9);
  OUTLINED_FUNCTION_120(v10, v11);
  sub_1BF0AB8A0(0, a2, a3, a4, type metadata accessor for Seal);
  OUTLINED_FUNCTION_10_11(v12);
  v13 = OUTLINED_FUNCTION_6_10();
  *(v4 + 16) = sub_1BF0AB4CC(v13, a1);
  return v4;
}

uint64_t sub_1BF0AAFCC()
{
  OUTLINED_FUNCTION_7_7();
  v2 = sub_1BF178C6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v7 = type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_87(v7);
  UnfairLock.init(options:)(&v12);
  (*(v3 + 16))(v6, v1, v2);
  sub_1BF0ABA08(0, &qword_1EBDCAA18, MEMORY[0x1E6967EC8], type metadata accessor for Seal);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_6_10();
  v9 = sub_1BF0AB544(v8, v6);
  (*(v3 + 8))(v1, v2);
  *(v0 + 16) = v9;
  return v0;
}

uint64_t sub_1BF0AB134(char a1)
{
  v2 = OUTLINED_FUNCTION_110();
  v3 = OUTLINED_FUNCTION_87(v2);
  v5 = OUTLINED_FUNCTION_120(v3, v4);
  OUTLINED_FUNCTION_1_14();
  sub_1BF0ABB8C(0, v6, v7, v8);
  OUTLINED_FUNCTION_10_11(v9);
  v10 = sub_1BF0AB700(v5, a1 & 1);
  return OUTLINED_FUNCTION_8_6(v10);
}

uint64_t sub_1BF0AB1B0()
{
  v0 = OUTLINED_FUNCTION_110();
  v1 = OUTLINED_FUNCTION_87(v0);
  v3 = OUTLINED_FUNCTION_120(v1, v2);
  OUTLINED_FUNCTION_1_14();
  sub_1BF0ABB8C(0, v5, v4 + 8, v6);
  OUTLINED_FUNCTION_10_11(v7);
  v8 = sub_1BF0AB784(v3);
  return OUTLINED_FUNCTION_8_6(v8);
}

uint64_t ReferenceService.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t ReferenceService.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t ReferenceService.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1BF0AB2BC(uint64_t a1, uint64_t a2)
{
  sub_1BF0ABA6C(0, &qword_1ED8E9E10, qword_1ED8E9E18, type metadata accessor for AuthToken);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - v7;
  *(v2 + 32) = MEMORY[0x1E69E7CC0];
  v9 = *(*v2 + 112);
  sub_1BF0ABAC4(0, qword_1ED8E9E18, type metadata accessor for AuthToken);
  v11 = v10;
  __swift_storeEnumTagSinglePayload(v2 + v9, 1, 1, v10);
  *(v2 + 16) = a1;
  *(v2 + 24) = 1;
  sub_1BF0A8A64(a2, v8);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
  v12 = *(*v2 + 112);
  swift_beginAccess();
  sub_1BF0ABB1C(v8, v2 + v12, &qword_1ED8E9E10, qword_1ED8E9E18, type metadata accessor for AuthToken);
  swift_endAccess();
  return v2;
}

uint64_t sub_1BF0AB448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = MEMORY[0x1E69E7CC0];
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = -1;
  *(v3 + 16) = a1;
  *(v3 + 24) = 1;
  swift_beginAccess();
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 56) = 0;
  return v3;
}

uint64_t sub_1BF0AB4CC(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = 0;
  *(v2 + 32) = v4;
  *(v2 + 48) = -1;
  *(v2 + 16) = a1;
  *(v2 + 24) = 1;
  swift_beginAccess();
  *(v2 + 40) = a2;
  *(v2 + 48) = 0;
  return v2;
}

uint64_t sub_1BF0AB544(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E6967EC8];
  sub_1BF0ABA6C(0, &qword_1EBDCAA50, &qword_1EBDCAA58, MEMORY[0x1E6967EC8]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v16 - v8;
  *(v2 + 32) = MEMORY[0x1E69E7CC0];
  v10 = *(*v2 + 112);
  sub_1BF0ABAC4(0, &qword_1EBDCAA58, v5);
  v12 = v11;
  __swift_storeEnumTagSinglePayload(v2 + v10, 1, 1, v11);
  *(v2 + 16) = a1;
  *(v2 + 24) = 1;
  v13 = sub_1BF178C6C();
  (*(*(v13 - 8) + 32))(v9, a2, v13);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v12);
  v14 = *(*v2 + 112);
  swift_beginAccess();
  sub_1BF0ABB1C(v9, v2 + v14, &qword_1EBDCAA50, &qword_1EBDCAA58, v5);
  swift_endAccess();
  return v2;
}

uint64_t sub_1BF0AB700(uint64_t a1, char a2)
{
  *(v2 + 32) = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = 0;
  *(v2 + 48) = -1;
  *(v2 + 16) = a1;
  *(v2 + 24) = 1;
  v3 = a2 & 1;
  swift_beginAccess();
  v4 = *(v2 + 40);
  *(v2 + 40) = v3;
  v5 = *(v2 + 48);
  *(v2 + 48) = 0;
  sub_1BF043E18(v4, v5);
  return v2;
}

uint64_t sub_1BF0AB784(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = 0;
  *(v1 + 32) = v2;
  *(v1 + 48) = -1;
  *(v1 + 16) = a1;
  *(v1 + 24) = 1;
  swift_beginAccess();
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return v1;
}

unint64_t sub_1BF0AB7F0()
{
  result = qword_1ED8EACC8;
  if (!qword_1ED8EACC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED8EACC8);
  }

  return result;
}

unint64_t sub_1BF0AB84C()
{
  result = qword_1EBDCAB68;
  if (!qword_1EBDCAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCAB68);
  }

  return result;
}

void sub_1BF0AB8A0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1BF0ABB8C(255, a3, a4, MEMORY[0x1E69E62F8]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1BF0AB93C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF0AB97C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_1BF0ABA08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BF0ABA6C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1BF0ABAC4(255, a3, a4);
    v5 = sub_1BF17AE6C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BF0ABAC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v5 = a3(255);
    v7 = type metadata accessor for Seal.Resolution(a1, v5, v5, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BF0ABB1C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1BF0ABA6C(0, a3, a4, a5);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

void sub_1BF0ABB8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BF0ABBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_0_0();
  (*(v6 + 8))(a1);
  return a1;
}

void dispatch thunk of DiagnosticAttachmentResolverType.resolveAttachment(_:)()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_30_3(v1, v2, v3);
  OUTLINED_FUNCTION_29_4();
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_22_4(v4);
  OUTLINED_FUNCTION_35_3();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1BF0ABD2C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_10();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_20_5();
  v3 = OUTLINED_FUNCTION_13_0();

  return v4(v3);
}

void dispatch thunk of DiagnosticAttachmentResolverType.resolveAttachments(_:)()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_30_3(v1, v2, v3);
  OUTLINED_FUNCTION_29_4();
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_22_4(v4);
  OUTLINED_FUNCTION_35_3();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1BF0ABF14()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_10();
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1BF0AC000()
{
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](0);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0AC048(uint64_t a1)
{
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](0);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0AC088(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 56) = v1;
  *(v2 + 64) = v3;
  return OUTLINED_FUNCTION_14_7();
}

uint64_t sub_1BF0AC0A0()
{
  OUTLINED_FUNCTION_13_2();
  v21 = v0;
  switch(v0[8] >> 61)
  {
    case 1:
      OUTLINED_FUNCTION_27_3();
      v7 = *(v6 + 56);
      v8 = *(v6 + 64);
      sub_1BEFE6A78(v6 + 16, (v0 + 2));
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF0AC514(v0 + 2, v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v0 + 2);

      goto LABEL_14;
    case 2:
      OUTLINED_FUNCTION_27_3();
      v3 = v2[3];
      v4 = v2[4];
      v20 = v2[2];
      sub_1BF0AC884(&v20, v3, v4);
      goto LABEL_14;
    case 3:
      OUTLINED_FUNCTION_27_3();
      sub_1BF0ACDD8(v5[2], v5[3], v5[4], v5[5]);
      goto LABEL_14;
    case 4:
      OUTLINED_FUNCTION_27_3();
      sub_1BF0AD2A4(v1[2], v1[3], v1[4], v1[5], v1[6], v1[7]);
      goto LABEL_14;
    case 5:
      v9 = swift_task_alloc();
      v0[9] = v9;
      *v9 = v0;
      v9[1] = sub_1BF0AC334;
      OUTLINED_FUNCTION_35_3();

      return sub_1BF0AD54C(v10, v11, v12);
    case 6:
      v15 = swift_task_alloc();
      v0[10] = v15;
      *v15 = v0;
      v15[1] = sub_1BF0AC424;
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_35_3();

      return sub_1BF0AE5FC(v16);
    default:
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
LABEL_14:
      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_35_3();

      __asm { BRAA            X3, X16 }

      return result;
  }
}

uint64_t sub_1BF0AC334()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_10();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  OUTLINED_FUNCTION_20_5();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_13_0();
  }

  return v5(v4);
}

uint64_t sub_1BF0AC424()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_10();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  OUTLINED_FUNCTION_20_5();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_13_0();
  }

  return v5(v4);
}

NSObject *sub_1BF0AC514(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1BF17923C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = sub_1BF0B0FDC(v12, v13);
  if (v3)
  {
    if (qword_1EBDCAFE0 != -1)
    {
      swift_once();
    }

    v18 = sub_1BF1797FC();
    __swift_project_value_buffer(v18, qword_1EBDCCE48);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v19 = v3;
    v27 = sub_1BF1797DC();
    v20 = sub_1BF17ACBC();

    if (os_log_type_enabled(v27, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30[0] = v23;
      *v21 = 136446466;
      *(v21 + 4) = sub_1BF01A7AC(a2, a3, v30);
      *(v21 + 12) = 2114;
      v24 = v3;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v25;
      *v22 = v25;
      _os_log_impl(&dword_1BEFE0000, v27, v20, "Failed to prepare JSON attachment with name %{public}s for radar. Error: %{public}@", v21, 0x16u);
      sub_1BF0B216C(v22, sub_1BF082F84);
      MEMORY[0x1BFB547B0](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1BFB547B0](v23, -1, -1);
      MEMORY[0x1BFB547B0](v21, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v16 = v14;
    v17 = v15;
    v28[2] = OBJC_IVAR____TtC13TeaFoundation28DiagnosticAttachmentResolver_temporaryDirectory;
    v29 = v8;
    v28[1] = a2;
    v30[0] = a2;
    v30[1] = a3;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    MEMORY[0x1BFB52000](0x6E6F736A2ELL, 0xE500000000000000);
    sub_1BF17919C();

    sub_1BF0B0E10(v16, v17, v11);
    v27 = sub_1BF1791DC();
    sub_1BF014E18(v16, v17);
    (*(v29 + 8))(v11, v7);
  }

  return v27;
}

NSObject *sub_1BF0AC884(NSObject **a1, NSObject *a2, uint64_t a3)
{
  v45 = sub_1BF17923C();
  v42 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF17A12C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *a1;
  DiagnosticText.description.getter();
  sub_1BF17A10C();
  v14 = sub_1BF17A0BC();
  v16 = v15;

  v17 = v13;
  v18 = v16;
  (*(v10 + 8))(v17, v9);
  if (v16 >> 60 == 15)
  {
    if (qword_1EBDCAFE0 != -1)
    {
      swift_once();
    }

    v19 = sub_1BF1797FC();
    __swift_project_value_buffer(v19, qword_1EBDCCE48);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v20 = sub_1BF1797DC();
    v21 = sub_1BF17ACBC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_1BF01A7AC(a2, a3, &v43);
      _os_log_impl(&dword_1BEFE0000, v20, v21, "Failed to get data for text attachment with name %{public}s for radar", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1BFB547B0](v23, -1, -1);
      MEMORY[0x1BFB547B0](v22, -1, -1);
    }

    sub_1BF0B21F4();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v43 = a2;
    v44 = a3;
    v39 = a3;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    MEMORY[0x1BFB52000](1954051118, 0xE400000000000000);
    v20 = v44;
    sub_1BF17919C();

    v24 = v41;
    sub_1BF0B0E10(v14, v18, v8);
    if (v24)
    {
      v40 = v8;
      v41 = v14;
      if (qword_1EBDCAFE0 != -1)
      {
        swift_once();
      }

      v25 = sub_1BF1797FC();
      __swift_project_value_buffer(v25, qword_1EBDCCE48);
      v26 = v39;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v27 = v24;
      v28 = sub_1BF1797DC();
      v29 = sub_1BF17ACBC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v38 = v18;
        v32 = v31;
        v20 = swift_slowAlloc();
        v43 = v20;
        *v30 = 136446466;
        *(v30 + 4) = sub_1BF01A7AC(a2, v26, &v43);
        *(v30 + 12) = 2114;
        v33 = v24;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 14) = v34;
        *v32 = v34;
        _os_log_impl(&dword_1BEFE0000, v28, v29, "Failed to write data for text attachment with name %{public}s for radar with error %{public}@", v30, 0x16u);
        sub_1BF0B216C(v32, sub_1BF082F84);
        v35 = v32;
        v18 = v38;
        MEMORY[0x1BFB547B0](v35, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x1BFB547B0](v20, -1, -1);
        MEMORY[0x1BFB547B0](v30, -1, -1);
      }

      swift_willThrow();
      sub_1BF00F5F4(v41, v18);
      (*(v42 + 8))(v40, v45);
    }

    else
    {
      v20 = sub_1BF1791DC();
      sub_1BF00F5F4(v14, v18);
      (*(v42 + 8))(v8, v45);
    }
  }

  return v20;
}

uint64_t sub_1BF0ACDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1BF17923C();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF17A12C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF17A10C();
  v14 = sub_1BF17A0BC();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  if (v16 >> 60 == 15)
  {
    v17 = a4;
    if (qword_1EBDCAFE0 != -1)
    {
      swift_once();
    }

    v18 = sub_1BF1797FC();
    __swift_project_value_buffer(v18, qword_1EBDCCE48);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v19 = sub_1BF1797DC();
    v20 = sub_1BF17ACBC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35[0] = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1BF01A7AC(a3, v17, v35);
      _os_log_impl(&dword_1BEFE0000, v19, v20, "Failed to get data for raw attachment with name %{public}s for radar", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFB547B0](v22, -1, -1);
      MEMORY[0x1BFB547B0](v21, -1, -1);
    }

    sub_1BF0B21F4();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v35[0] = a3;
    v35[1] = a4;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    MEMORY[0x1BFB52000](1954051118, 0xE400000000000000);
    sub_1BF17919C();

    v23 = v33;
    sub_1BF0B0E10(v14, v16, v8);
    v24 = v8;
    if (v23)
    {
      v33 = v16;
      if (qword_1EBDCAFE0 != -1)
      {
        swift_once();
      }

      v25 = sub_1BF1797FC();
      __swift_project_value_buffer(v25, qword_1EBDCCE48);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v26 = sub_1BF1797DC();
      v27 = sub_1BF17ACBC();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = v24;
        v30 = swift_slowAlloc();
        v35[0] = v30;
        *v28 = 136446210;
        *(v28 + 4) = sub_1BF01A7AC(a3, a4, v35);
        _os_log_impl(&dword_1BEFE0000, v26, v27, "Failed to write data for raw attachment with name %{public}s for radar", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        v31 = v30;
        v24 = v29;
        MEMORY[0x1BFB547B0](v31, -1, -1);
        MEMORY[0x1BFB547B0](v28, -1, -1);
      }

      swift_willThrow();
      sub_1BF00F5F4(v14, v33);
      (*(v34 + 8))(v24, v36);
    }

    else
    {
      a3 = sub_1BF1791DC();
      sub_1BF00F5F4(v14, v16);
      (*(v34 + 8))(v8, v36);
    }
  }

  return a3;
}

NSObject *sub_1BF0AD2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a1;
  v25 = a2;
  v10 = sub_1BF17923C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a3;
  v26[0] = a3;
  v26[1] = a4;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  MEMORY[0x1BFB52000](46, 0xE100000000000000);
  MEMORY[0x1BFB52000](a5, a6);
  sub_1BF17919C();

  v15 = v26[3];
  sub_1BF0B0E10(v24, v25, v14);
  if (v15)
  {
    if (qword_1EBDCAFE0 != -1)
    {
      swift_once();
    }

    v16 = sub_1BF1797FC();
    __swift_project_value_buffer(v16, qword_1EBDCCE48);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v17 = sub_1BF1797DC();
    v18 = sub_1BF17ACBC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26[0] = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_1BF01A7AC(v23, a4, v26);
      _os_log_impl(&dword_1BEFE0000, v17, v18, "Failed to write data for raw attachment with name %{public}s for radar", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFB547B0](v20, -1, -1);
      MEMORY[0x1BFB547B0](v19, -1, -1);
    }

    swift_willThrow();
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v17 = sub_1BF1791DC();
    (*(v11 + 8))(v14, v10);
  }

  return v17;
}

uint64_t sub_1BF0AD54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[22] = a2;
  v6 = sub_1BF17912C();
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v7 = sub_1BF17923C();
  v4[28] = v7;
  v8 = *(v7 - 8);
  v4[29] = v8;
  v4[30] = *(v8 + 64);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[36] = v9;
  *v9 = v4;
  v9[1] = sub_1BF0AD70C;

  return sub_1BF0AEA50(a1);
}

uint64_t sub_1BF0AD70C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 296) = v3;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BF0AD82C()
{
  v134 = v0;
  v3 = v0;
  v133[2] = *MEMORY[0x1E69E9840];
  sub_1BF0AFEFC(*(v0 + 176), *(v0 + 184), *(v0 + 280));
  v4 = *(v0 + 296);
  v132 = v0;
  v5 = 0;
  aBlock = (v0 + 16);
  v119 = (v0 + 160);
  v121 = *(v4 + 16);
  v6 = *(v0 + 232) + 8;
  v7 = (v4 + 40);
  v120 = v4;
  while (v121 != v5)
  {
    if (v5 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    v123 = v7;
    v126 = v5;
    v8 = v6;
    v9 = *(v0 + 264);
    v10 = *(v0 + 224);
    v11 = *v7;
    *(v0 + 96) = *(v7 - 1);
    *(v0 + 104) = v11;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    *(v0 + 112) = sub_1BF1791DC();
    *(v0 + 120) = v12;
    sub_1BF0B2248();
    sub_1BF17A9FC();

    MEMORY[0x1BFB51F50](*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

    sub_1BF17919C();

    v13 = objc_opt_self();
    v14 = [v13 defaultManager];
    sub_1BF1791AC();
    v15 = sub_1BF17916C();
    v16 = *v8;
    v17 = v9;
    v6 = v8;
    v3 = v0;
    v130 = v16;
    v16(v17, v10);
    *(v0 + 144) = 0;
    LODWORD(v10) = [v14 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:v0 + 144];

    v18 = *(v0 + 144);
    if (!v10)
    {
      v58 = *(v0 + 272);
      v128 = *(v0 + 280);
      v59 = *(v0 + 224);
      v60 = v18;

      v1 = sub_1BF17911C();

      swift_willThrow();
      v61 = v130;
      v130(v58, v59);
      v62 = v128;
      v63 = v59;
      goto LABEL_15;
    }

    v19 = v18;
    v20 = [v13 defaultManager];
    v21 = sub_1BF17A07C();

    sub_1BF1791DC();
    v1 = sub_1BF17A07C();

    *(v0 + 152) = 0;
    v2 = [v20 copyItemAtPath:v21 toPath:v1 error:v0 + 152];

    v22 = *(v0 + 152);
    if (!v2)
    {
      v65 = *(v0 + 272);
      v64 = *(v0 + 280);
      v66 = *(v0 + 224);
      v67 = v22;

      v1 = sub_1BF17911C();

      swift_willThrow();
      v61 = v130;
      v130(v65, v66);
      v62 = v64;
      v63 = v66;
LABEL_15:
      v61(v62, v63);
      v2 = 0;
      v130 = 0;
LABEL_16:
      v39 = 0x1EBDCA000uLL;
LABEL_17:
      if (*(v39 + 4064) == -1)
      {
LABEL_18:
        v68 = sub_1BF1797FC();
        __swift_project_value_buffer(v68, qword_1EBDCCE48);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v69 = v1;
        v70 = sub_1BF1797DC();
        v71 = sub_1BF17ACBC();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = *(v132 + 184);
          v73 = *(v132 + 176);
          v74 = swift_slowAlloc();
          v75 = OUTLINED_FUNCTION_83();
          v76 = swift_slowAlloc();
          v133[0] = v76;
          *v74 = 136446466;
          *(v74 + 4) = sub_1BF01A7AC(v73, v72, v133);
          *(v74 + 12) = 2114;
          v77 = v1;
          v78 = _swift_stdlib_bridgeErrorToNSError();
          *(v74 + 14) = v78;
          *v75 = v78;
          _os_log_impl(&dword_1BEFE0000, v70, v71, "Failed to zip %{public}s. Error %{public}@", v74, 0x16u);
          OUTLINED_FUNCTION_0_17();
          sub_1BF0B216C(v75, v79);
          OUTLINED_FUNCTION_28();
          __swift_destroy_boxed_opaque_existential_1(v76);
          OUTLINED_FUNCTION_28();
          OUTLINED_FUNCTION_28();
        }

        swift_willThrow();
        sub_1BEFE52DC(v2, v130);

        OUTLINED_FUNCTION_9();

        return v80();
      }

LABEL_38:
      OUTLINED_FUNCTION_1_15(&qword_1EBDCAFE0);
      goto LABEL_18;
    }

    v23 = *(v0 + 272);
    v24 = *(v0 + 224);
    v25 = v22;
    v130(v23, v24);
    v7 = v123 + 2;
    v5 = v126 + 1;
    v4 = v120;
  }

  v26 = v3[33];
  v124 = v3[32];
  v131 = v3[30];
  v27 = v6;
  v28 = *(v0 + 232);
  v29 = *(v0 + 224);
  v30 = *(v0 + 216);
  v31 = *(v0 + 208);
  v32 = *(v132 + 200);
  v33 = *(v132 + 184);
  v34 = *(v132 + 176);

  *(v132 + 160) = 0;
  sub_1BF1791AC();
  v133[0] = v34;
  v133[1] = v33;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  MEMORY[0x1BFB52000](1885960750, 0xE400000000000000);
  *(v132 + 128) = v34;
  *(v132 + 136) = v33;
  (*(v31 + 104))(v30, *MEMORY[0x1E6968F68], v32);
  sub_1BF013170();
  sub_1BF17922C();
  (*(v31 + 8))(v30, v32);

  v122 = *v27;
  (*v27)(v26, v29);
  v35 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  v36 = sub_1BF17916C();
  v127 = *(v28 + 16);
  v127(v26, v124, v29);
  v37 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v38 = swift_allocObject();
  v40 = *(v28 + 32);
  v39 = v28 + 32;
  v40(v38 + v37, v26, v29);
  *(v38 + ((v131 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = v119;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1BF0B229C;
  *(v41 + 24) = v38;
  v130 = v38;
  *(v132 + 48) = sub_1BF0004B0;
  *(v132 + 56) = v41;
  *(v132 + 16) = MEMORY[0x1E69E9820];
  *(v132 + 24) = 1107296256;
  *(v132 + 32) = sub_1BF0B1904;
  *(v132 + 40) = &block_descriptor_1;
  v42 = _Block_copy(aBlock);

  *(v132 + 168) = 0;
  [v35 coordinateReadingItemAtURL:v36 options:8 error:v132 + 168 byAccessor:v42];
  _Block_release(v42);

  v43 = v132;
  v44 = *(v132 + 168);
  v45 = v44;
  LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

  if (v42)
  {
    __break(1u);
    goto LABEL_40;
  }

  v39 = 0x1EBDCA000uLL;
  if (v45)
  {
    if (qword_1EBDCAFE0 == -1)
    {
LABEL_10:
      v46 = sub_1BF1797FC();
      __swift_project_value_buffer(v46, qword_1EBDCCE48);
      v1 = v45;
      v47 = sub_1BF1797DC();
      v48 = sub_1BF17ACBC();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_70();
        v50 = OUTLINED_FUNCTION_83();
        *v49 = 138543362;
        *(v49 + 4) = v1;
        *v50 = v44;
        v51 = v1;
        OUTLINED_FUNCTION_32_4(&dword_1BEFE0000, v52, v53, "Failed to coordinate file coordinator with error %{public}@");
        OUTLINED_FUNCTION_0_17();
        sub_1BF0B216C(v50, v54);
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_21_6();
      }

      v2 = *(v132 + 280);
      v55 = *(v132 + 256);
      v56 = *(v132 + 224);

      swift_willThrow();
      v122(v55, v56);
      v122(v2, v56);
      v57 = *(v132 + 160);

      OUTLINED_FUNCTION_10_12();
      goto LABEL_17;
    }

LABEL_40:
    OUTLINED_FUNCTION_1_15(&qword_1EBDCAFE0);
    goto LABEL_10;
  }

  v82 = *v119;
  if (*v119)
  {
    v83 = qword_1EBDCAFE0;
    v84 = v82;
    if (v83 != -1)
    {
      OUTLINED_FUNCTION_1_15(&qword_1EBDCAFE0);
    }

    v85 = sub_1BF1797FC();
    __swift_project_value_buffer(v85, qword_1EBDCCE48);
    v1 = v84;
    v86 = sub_1BF1797DC();
    v87 = sub_1BF17ACBC();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = OUTLINED_FUNCTION_70();
      v89 = OUTLINED_FUNCTION_83();
      *v88 = 138543362;
      *(v88 + 4) = v1;
      *v89 = v82;
      v90 = v1;
      OUTLINED_FUNCTION_32_4(&dword_1BEFE0000, v91, v92, "Failed to moved zipped file with error %{public}@");
      OUTLINED_FUNCTION_0_17();
      sub_1BF0B216C(v89, v93);
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_21_6();
    }

    v2 = *(v132 + 280);
    v94 = *(v132 + 256);
    v95 = *(v132 + 224);

    swift_willThrow();
    v122(v94, v95);
    v122(v2, v95);

    OUTLINED_FUNCTION_10_12();
    goto LABEL_16;
  }

  if (qword_1EBDCAFE0 != -1)
  {
    OUTLINED_FUNCTION_1_15(&qword_1EBDCAFE0);
  }

  v97 = *(v132 + 248);
  v96 = *(v132 + 256);
  v98 = *(v132 + 224);
  v99 = sub_1BF1797FC();
  __swift_project_value_buffer(v99, qword_1EBDCCE48);
  v127(v97, v96, v98);
  v100 = sub_1BF1797DC();
  v101 = sub_1BF17AC9C();
  v102 = os_log_type_enabled(v100, v101);
  v103 = *(v132 + 248);
  v104 = *(v132 + 224);
  if (v102)
  {
    v105 = OUTLINED_FUNCTION_70();
    v129 = swift_slowAlloc();
    v133[0] = v129;
    *v105 = 136446210;
    sub_1BF0B2368(&qword_1EBDCBB30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v106 = sub_1BF17B6FC();
    v108 = v107;
    v109 = v122;
    v122(v103, v104);
    v110 = sub_1BF01A7AC(v106, v108, v133);
    v43 = v132;

    *(v105 + 4) = v110;
    _os_log_impl(&dword_1BEFE0000, v100, v101, "Successfully zipped item to %{public}s", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v129);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_21_6();
  }

  else
  {

    v109 = v122;
    v122(v103, v104);
  }

  v111 = *(v43 + 280);
  v112 = *(v43 + 256);
  v113 = *(v132 + 224);
  v114 = sub_1BF1791DC();
  v125 = v115;
  v109(v112, v113);
  v109(v111, v113);
  v116 = *(v132 + 160);

  OUTLINED_FUNCTION_20_5();

  return v117(v114, v125);
}