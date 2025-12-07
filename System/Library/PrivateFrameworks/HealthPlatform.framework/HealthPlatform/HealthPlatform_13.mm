uint64_t HealthStoreHKSharedSummaryTransactionSource.__allocating_init(healthStore:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_228515698(int a1, unint64_t a2)
{
  v35 = a1;
  sub_228516CD4(0, &qword_280DEE380, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v36 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
LABEL_50:
    v6 = sub_22855DB4C();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {
    a2 = MEMORY[0x277D84F90];
    v38 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_21;
  }

  v7 = 0;
  v34 = "_TtC14HealthPlatform7Profile";
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x22AAB9D20](v7, a2);
    }

    else
    {
      if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v11 = [v8 metadata];
    v12 = sub_22855D0EC();

    if (*(v12 + 16) && (v13 = sub_2283F6D18(0xD000000000000032, v34 | 0x8000000000000000), (v14 & 1) != 0))
    {
      sub_2283F6E48(*(v12 + 56) + 32 * v13, v39);

      v15 = sub_22855C16C();
      v16 = swift_dynamicCast();
      v17 = *(v15 - 8);
      (*(v17 + 56))(v5, v16 ^ 1u, 1, v15);
      LODWORD(v15) = (*(v17 + 48))(v5, 1, v15) != 1;
      sub_2284648E4(v5);
      if ((v15 ^ v35))
      {
        goto LABEL_5;
      }
    }

    else
    {

      v18 = sub_22855C16C();
      (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
      sub_2284648E4(v5);
      if (v35)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    sub_22855DD1C();
    sub_22855DD5C();
    sub_22855DD6C();
    sub_22855DD2C();
LABEL_6:
    ++v7;
  }

  while (v10 != v6);
  a2 = v36;
  v38 = MEMORY[0x277D84F90];
  if ((v36 & 0x8000000000000000) != 0)
  {
LABEL_51:
    v19 = sub_22855DB4C();
    if (!v19)
    {
      goto LABEL_52;
    }

LABEL_23:
    v5 = 0;
    while (2)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x22AAB9D20](v5, a2);
      }

      else
      {
        if (v5 >= *(a2 + 16))
        {
          goto LABEL_49;
        }

        v20 = *(a2 + 8 * v5 + 32);
      }

      v21 = v20;
      v22 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_48;
      }

      v23 = [v20 metadata];
      v24 = sub_22855D0EC();

      if (*(v24 + 16) && (v25 = sub_2283F6D18(0xD000000000000048, 0x800000022856FA50), (v26 & 1) != 0))
      {
        sub_2283F6E48(*(v24 + 56) + 32 * v25, v39);

        if (swift_dynamicCast())
        {
          v27 = v36;
          v28 = v37;
          goto LABEL_36;
        }
      }

      else
      {
      }

      v27 = 0;
      v28 = 0;
LABEL_36:
      if (qword_280DE9298 == -1)
      {
        if (v28)
        {
          goto LABEL_38;
        }

LABEL_24:
      }

      else
      {
        v30 = v27;
        swift_once();
        v27 = v30;
        if (!v28)
        {
          goto LABEL_24;
        }

LABEL_38:
        if (__PAIR128__(v28, v27) == xmmword_280DE92A0)
        {
        }

        else
        {
          v29 = sub_22855E15C();

          if ((v29 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        sub_22855DD1C();
        sub_22855DD5C();
        sub_22855DD6C();
        sub_22855DD2C();
      }

      ++v5;
      if (v22 == v19)
      {
        v31 = v38;
        goto LABEL_53;
      }

      continue;
    }
  }

LABEL_21:
  if ((a2 & 0x4000000000000000) != 0)
  {
    goto LABEL_51;
  }

  v19 = *(a2 + 16);
  if (v19)
  {
    goto LABEL_23;
  }

LABEL_52:
  v31 = MEMORY[0x277D84F90];
LABEL_53:

  return v31;
}

uint64_t sub_228515BF4()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_228515D1C;

  return v6(1, v2, v3);
}

uint64_t sub_228515D1C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return MEMORY[0x2822009F8](sub_228515E1C, 0, 0);
}

uint64_t sub_228515E1C()
{
  v16 = v0;
  v1 = v0[5];
  if (v1)
  {

    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v2 = sub_22855CABC();
    __swift_project_value_buffer(v2, qword_280DEEC98);
    v3 = v1;
    v4 = sub_22855CA8C();
    v5 = sub_22855D6AC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15[0] = v8;
      *v6 = 136315650;
      *(v6 + 4) = sub_2283F8938(0xD000000000000029, 0x8000000228569CC0, v15);
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_2283F8938(0xD00000000000001CLL, 0x8000000228573C50, v15);
      *(v6 + 22) = 2112;
      v9 = v1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 24) = v10;
      *v7 = v10;
      _os_log_impl(&dword_2283ED000, v4, v5, "[%s][%s]: Failed to fetch committed transactions: %@", v6, 0x20u);
      sub_22841DC98(v7);
      MEMORY[0x22AABAD40](v7, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v8, -1, -1);
      MEMORY[0x22AABAD40](v6, -1, -1);
    }

    swift_willThrow();
    v11 = v0[1];

    return v11();
  }

  else
  {
    if (v0[4])
    {
      v13 = sub_228515698(1, v0[4]);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v14 = v0[1];

    return v14(v13);
  }
}

uint64_t sub_2285160B8(uint64_t a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_228516150;

  return _s14HealthPlatform41DefaultHKSharedSummaryTransactionProviderV09fetchOpenF0So0deF0CSgyYaAA0iF10FetchErrorOYKF(v1 + 16);
}

uint64_t sub_228516150(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v4 + 32);
    v7 = *(v4 + 24);
    *v6 = *(v4 + 16);
    *(v6 + 8) = v7;
    v8 = *(v5 + 8);

    return v8();
  }

  else
  {
    v10 = *(v5 + 8);

    return v10(a1);
  }
}

uint64_t sub_2285162AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_228516338;

  return DefaultHKSharedSummaryTransactionProvider.fetchCommittedTransactions()();
}

uint64_t sub_228516338(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t HealthStoreHKSharedSummaryTransactionSource.fetchTransactions(committed:)(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 56) = a1;
  return MEMORY[0x2822009F8](sub_228516468, 0, 0);
}

uint64_t sub_228516468()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  sub_228516BC4(0);
  *v4 = v0;
  v4[1] = sub_22851656C;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD00000000000001DLL, 0x8000000228573C70, sub_228516BB8, v3, v5);
}

uint64_t sub_22851656C()
{

  return MEMORY[0x2822009F8](sub_228516684, 0, 0);
}

void sub_22851669C(uint64_t a1, char a2, uint64_t a3)
{
  sub_228517378(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  (*(v8 + 32))(v11 + v10, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v12 = objc_allocWithZone(MEMORY[0x277CCD958]);
  aBlock[4] = sub_2285173E0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22850D278;
  aBlock[3] = &block_descriptor_27;
  v13 = _Block_copy(aBlock);
  v14 = [v12 initWithCommittedTransactions:a2 & 1 handler:v13];
  _Block_release(v13);

  [*(a3 + 16) executeQuery_];
}

uint64_t sub_228516874(uint64_t a1, uint64_t a2, void *a3)
{

  v4 = a3;
  sub_228517378(0);
  return sub_22855D4BC();
}

uint64_t HealthStoreHKSharedSummaryTransactionSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228516920(char a1)
{
  *(v2 + 56) = a1;
  *(v2 + 32) = *v1;
  return MEMORY[0x2822009F8](sub_228516948, 0, 0);
}

uint64_t sub_228516948()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  sub_228516BC4(0);
  *v4 = v0;
  v4[1] = sub_228516A4C;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD00000000000001DLL, 0x8000000228573C70, sub_228517470, v3, v5);
}

uint64_t sub_228516A4C()
{

  return MEMORY[0x2822009F8](sub_22851746C, 0, 0);
}

unint64_t sub_228516B64()
{
  result = qword_27D840698;
  if (!qword_27D840698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840698);
  }

  return result;
}

void sub_228516BC4(uint64_t a1)
{
  if (!qword_280DE9598)
  {
    sub_228516C50(255);
    sub_228516CD4(255, &qword_280DE8EC0, sub_228418D44);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9598);
    }
  }
}

void sub_228516C50(uint64_t a1)
{
  if (!qword_280DE95A0)
  {
    sub_2284D0860(255, &qword_280DE95A8, &qword_280DE9280, 0x277CCD940, MEMORY[0x277D83940]);
    v1 = sub_22855DA2C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE95A0);
    }
  }
}

void sub_228516CD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s14HealthPlatform34HKSharedSummaryTransactionProviderP09fetchOpenE0So0cdE0CSgyYaAA0hE10FetchErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_228516E50;

  return v9(a1, a2, a3);
}

uint64_t sub_228516E50(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of HKSharedSummaryTransactionProvider.fetchCommittedTransactions()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_228517468;

  return v7(a1, a2);
}

uint64_t sub_228517080(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2285170C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of HKSharedSummaryTransactionSource.fetchTransactions(committed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_228517248;

  return v9(a1, a2, a3);
}

uint64_t sub_228517248(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void sub_228517378(uint64_t a1)
{
  if (!qword_280DE9568)
  {
    sub_228516BC4(255);
    v1 = sub_22855D4CC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9568);
    }
  }
}

uint64_t sub_2285173E0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_228517378(0);

  return sub_228516874(a1, a2, a3);
}

uint64_t PreservedValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  v5 = *(v7 + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t PreservedValue.executeIfSetValue(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v12);
  result = (*(v5 + 48))(v10, 1, v4);
  if (result != 1)
  {
    (*(v5 + 32))(v8, v10, v4);
    a1(v8);
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t PreservedValue.newValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  v7 = *(a1 + 16);
  v8 = *(v7 - 8);
  v9 = 1;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    (*(v8 + 32))(a2, v5, v7);
    v9 = 0;
  }

  return (*(v8 + 56))(a2, v9, 1, v7);
}

uint64_t PreservedValue.assignIfSetValue<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  return PreservedValue.executeIfSetValue(_:)(sub_22851795C, v4, a3);
}

uint64_t sub_228517864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - v3);
  return swift_setAtReferenceWritableKeyPath();
}

uint64_t PreservedValue<A>.hasChanged(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v18 - v9;
  v11 = *(v8 + 48);
  v12 = *(a2 - 8);
  v13 = *(v12 + 16);
  v13(&v18 - v9, v3, a2);
  v13(&v10[v11], a1, a2);
  v14 = *(a2 + 16);
  v15 = *(*(v14 - 8) + 48);
  if (v15(v10, 1, v14) == 1)
  {
    (*(v12 + 8))(&v10[v11], a2);
  }

  else
  {
    if (v15(&v10[v11], 1, v14) != 1)
    {
      v16 = static PreservedValue<A>.== infix(_:_:)(v4, a1, v14, v19) ^ 1;
      (*(v18 + 8))(v10, TupleTypeMetadata2);
      return v16 & 1;
    }

    (*(v12 + 8))(v10, a2);
  }

  v16 = 0;
  return v16 & 1;
}

uint64_t static PreservedValue<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v31 = a1;
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PreservedValue(0, v8, v8, v9);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v32 = &v27 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = &v27 - v16;
  v18 = *(v15 + 48);
  v30 = v11;
  v19 = *(v11 + 16);
  v19(&v27 - v16, v31, v10);
  v19(&v17[v18], a2, v10);
  v31 = v6;
  v20 = *(v6 + 48);
  if (v20(v17, 1, a3) == 1)
  {
    v21 = 1;
    if (v20(&v17[v18], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v19(v32, v17, v10);
    if (v20(&v17[v18], 1, a3) != 1)
    {
      v22 = v31;
      v23 = v28;
      (*(v31 + 32))(v28, &v17[v18], a3);
      v24 = v32;
      v21 = sub_22855D16C();
      v25 = *(v22 + 8);
      v25(v23, a3);
      v25(v24, a3);
LABEL_8:
      v14 = v30;
      goto LABEL_9;
    }

    (*(v31 + 8))(v32, a3);
  }

  v21 = 0;
  v10 = TupleTypeMetadata2;
LABEL_9:
  (*(v14 + 8))(v17, v10);
  return v21 & 1;
}

uint64_t PreservedValue<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v10);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return MEMORY[0x22AABA2B0](1);
  }

  (*(v3 + 32))(v6, v8, v2);
  MEMORY[0x22AABA2B0](0);
  sub_22855D14C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t PreservedValue<A>.hashValue.getter(uint64_t a1)
{
  sub_22855E22C();
  PreservedValue<A>.hash(into:)(v3, a1);
  return sub_22855E27C();
}

uint64_t sub_2285180E4(uint64_t a1, uint64_t a2)
{
  sub_22855E22C();
  PreservedValue<A>.hash(into:)(v4, a2);
  return sub_22855E27C();
}

uint64_t Publisher.asPrependedPreservedValue()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for PreservedValue(255, AssociatedTypeWitness, v5, v6);
  v7 = sub_22855CB6C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_22855CE8C();

  sub_22855E12C();
  swift_allocObject();
  sub_22855D3CC();
  (*(*(AssociatedTypeWitness - 8) + 56))(v12, 1, 1, AssociatedTypeWitness);
  sub_22855D47C();
  swift_getWitnessTable();
  sub_22855CF3C();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_228518390@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v11 - v8;
  (*(v7 + 16))(&v11 - v8, a1, AssociatedTypeWitness);
  (*(v7 + 32))(a4, v9, AssociatedTypeWitness);
  return (*(v7 + 56))(a4, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_228518510(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_22851856C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_2285186EC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (v8)
  {
    v11 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v10 = 0;
    v11 = v9 + 1;
  }

  v12 = a3 >= v10;
  v13 = a3 - v10;
  if (v13 == 0 || !v12)
  {
    goto LABEL_16;
  }

  if (v11 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
  {
    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }

LABEL_16:
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_17:
    v16 = ~v10 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v18 = v16 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v18;
            if (v6 > 1)
            {
LABEL_55:
              if (v6 == 2)
              {
                *&a1[v11] = v17;
              }

              else
              {
                *&a1[v11] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v6 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v6)
    {
      a1[v11] = v17;
    }

    return;
  }

LABEL_26:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v11] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v6)
  {
    goto LABEL_32;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v8 >= 2)
  {
    if (a2 >= v8)
    {
      if (v9 <= 3)
      {
        v20 = ~(-1 << (8 * v9));
      }

      else
      {
        v20 = -1;
      }

      if (v9)
      {
        v21 = v20 & (a2 - v8);
        if (v9 <= 3)
        {
          v22 = v9;
        }

        else
        {
          v22 = 4;
        }

        bzero(a1, v9);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *a1 = v21;
            a1[2] = BYTE2(v21);
          }

          else
          {
            *a1 = v21;
          }
        }

        else if (v22 == 1)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      v19 = *(v7 + 56);

      v19();
    }
  }
}

uint64_t HealthExperienceStoreCreationError.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  return sub_22855E27C();
}

void *HealthExperienceStore.object<A>(from:in:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[1] = *MEMORY[0x277D85DE8];
  result = HealthExperienceStore.managedObjectID(for:)(a1, a3, a5);
  if (result)
  {
    v7 = result;
    v13[0] = 0;
    v8 = [a2 existingObjectWithID:result error:v13];
    if (v8)
    {
      v9 = v8;
      v10 = v13[0];

      result = swift_dynamicCastUnknownClass();
      if (result)
      {
        return result;
      }
    }

    else
    {
      v11 = v13[0];
      v12 = sub_22855BF3C();

      swift_willThrow();
    }

    return 0;
  }

  return result;
}

id HealthExperienceStore.managedObjectID(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 24))(a2, a3);
  v4 = [v3 persistentStoreCoordinator];

  v5 = sub_22855BFBC();
  v6 = [v4 managedObjectIDForURIRepresentation_];

  return v6;
}

unint64_t sub_228518BB0()
{
  result = qword_27D8406A0;
  if (!qword_27D8406A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8406A0);
  }

  return result;
}

unint64_t sub_228518C50()
{
  result = qword_27D83FC20;
  if (!qword_27D83FC20)
  {
    sub_22855C06C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FC20);
  }

  return result;
}

uint64_t HealthPluginHostEntitlement.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_22855DFBC();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_228518D1C()
{
  sub_22855E22C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_228518D90(uint64_t a1)
{
  sub_22855E22C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_228518DE4@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_22855DFBC();

  *a2 = v3 != 0;
  return result;
}

CFTypeRef NSXPCConnection.value<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22855D33C();
  v3 = NSXPCConnection.value(for:)(v5, v6);

  return v3;
}

CFTypeRef NSXPCConnection.value(for:)(uint64_t a1, unint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  [v2 auditToken];
  v5 = SecTaskCreateWithAuditToken(0, &token);
  if (!v5)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v9 = sub_22855CABC();
    __swift_project_value_buffer(v9, qword_280DEEC98);
    v10 = v2;
    v6 = sub_22855CA8C();
    v11 = sub_22855D68C();

    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *token.val = v13;
      *v12 = 136315138;
      v14 = [v10 debugDescription];
      v15 = sub_22855D1AC();
      v17 = v16;

      v18 = sub_2283F8938(v15, v17, &token);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_2283ED000, v6, v11, "Could not get secTask from XPC connection %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AABAD40](v13, -1, -1);
      MEMORY[0x22AABAD40](v12, -1, -1);
    }

    goto LABEL_23;
  }

  v6 = v5;
  *token.val = 0;
  v7 = sub_22855D17C();
  v8 = SecTaskCopyValueForEntitlement(v6, v7, &token);

  if (!v8)
  {
    if (*token.val)
    {
      v19 = qword_280DEEC90;
      v20 = *token.val;
      if (v19 != -1)
      {
        swift_once();
      }

      v21 = sub_22855CABC();
      __swift_project_value_buffer(v21, qword_280DEEC98);

      v22 = v20;
      v23 = sub_22855CA8C();
      v24 = sub_22855D68C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v37 = v26;
        *v25 = 136315394;
        *(v25 + 4) = sub_2283F8938(a1, a2, &v37);
        *(v25 + 12) = 2080;
        type metadata accessor for CFError(0);
        v27 = v22;
        v28 = sub_22855D1BC();
        v30 = sub_2283F8938(v28, v29, &v37);

        *(v25 + 14) = v30;
        _os_log_impl(&dword_2283ED000, v23, v24, "Could not get value for entitlement %s: %s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v26, -1, -1);
        MEMORY[0x22AABAD40](v25, -1, -1);

        v31 = *token.val;
        if (!*token.val)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v32 = sub_22855CABC();
      __swift_project_value_buffer(v32, qword_280DEEC98);

      v23 = sub_22855CA8C();
      v33 = sub_22855D68C();

      if (os_log_type_enabled(v23, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v37 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_2283F8938(a1, a2, &v37);
        _os_log_impl(&dword_2283ED000, v23, v33, "Missing value for entitlement %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x22AABAD40](v35, -1, -1);
        MEMORY[0x22AABAD40](v34, -1, -1);
      }
    }

    v31 = *token.val;
    if (!*token.val)
    {
LABEL_23:

      return 0;
    }

LABEL_22:

    goto LABEL_23;
  }

  if (*token.val)
  {
  }

  return v8;
}

unint64_t sub_2285193A4()
{
  result = qword_27D8406A8;
  if (!qword_27D8406A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8406A8);
  }

  return result;
}

uint64_t sub_228519408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22855DAAC();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_22845F8B0(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for UserProfile(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_2285194C4(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_22855DAEC();
    v5 = v4;
    v6 = sub_22855DBAC();
    v8 = v7;
    v9 = MEMORY[0x22AAB9B90](v3, v5, v6, v7);
    sub_228416CB8(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_228416CB8(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_22855DAAC();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_22845F970(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_228416CB8(v3, v5, v2 != 0);
  return v12;
}

uint64_t static InputSignalSet.LookupKey.summarySharingProfileDisplayName.getter()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for SummarySharingProfileDisplayNameInputSignal();
  return sub_22855C61C();
}

uint64_t static SummarySharingProfileDisplayNameInputSignal.identityConfiguration.getter()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  return sub_22855C82C();
}

uint64_t SummarySharingProfileDisplayNameInputSignal.__allocating_init(observer:healthStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  SummarySharingProfileDisplayNameInputSignal.init(observer:healthStore:)(a1, a2, a3);
  return v6;
}

void SummarySharingProfileDisplayNameInputSignal.init(observer:healthStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = 0;
  v11 = *(v8 + 28);
  sub_2285199F4(0);
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  sub_228519B74(0);
  v13 = swift_allocObject();
  *(v13 + ((*(*v13 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_228519BDC(v10, v13 + *(*v13 + *MEMORY[0x277D841D0] + 16));
  v3[5] = v13;
  v14 = [a3 profileIdentifier];
  v15 = [v14 type];

  if (v15 == 2)
  {
    v3[2] = a1;
    v3[3] = a2;
    v3[4] = a3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State(uint64_t a1)
{
  result = qword_27D8406F8;
  if (!qword_27D8406F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2285199F4(uint64_t a1)
{
  if (!qword_27D8406B0)
  {
    sub_228519A78();
    sub_228519ACC();
    sub_228519B20();
    v1 = sub_22855C7AC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8406B0);
    }
  }
}

unint64_t sub_228519A78()
{
  result = qword_27D8406B8;
  if (!qword_27D8406B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8406B8);
  }

  return result;
}

unint64_t sub_228519ACC()
{
  result = qword_27D8406C0;
  if (!qword_27D8406C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8406C0);
  }

  return result;
}

unint64_t sub_228519B20()
{
  result = qword_27D8406C8;
  if (!qword_27D8406C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8406C8);
  }

  return result;
}

void sub_228519B74(uint64_t a1)
{
  if (!qword_27D8406D0)
  {
    type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8406D0);
    }
  }
}

uint64_t sub_228519BDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SummarySharingProfileDisplayNameInputSignal.dependencyConfigurations(for:)()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22851C41C(0, &qword_280DE8F50, sub_22842DFA0, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228560580;
  *(v1 + 56) = sub_22855C83C();
  *(v1 + 64) = sub_22851B508(&qword_280DE9F08, 255, MEMORY[0x277D11C38], MEMORY[0x277D11C30]);
  __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  sub_22855C84C();
  sub_22855C82C();
  return v1;
}

uint64_t SummarySharingProfileDisplayNameInputSignal.dependencyDidUpdate(anchors:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22855C85C();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2285199F4(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22851A080(&v21);
  v12 = v23;
  v18 = v22;
  v19 = v21;
  sub_22855C84C();
  v22 = v18;
  v21 = v19;
  v23 = v12;
  sub_228519A78();
  sub_228519ACC();
  sub_228519B20();
  sub_22855C79C();
  v13 = *(v2 + 40);
  v20 = v11;
  v14 = *(*v13 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v13 + v15));
  sub_22851B490(v13 + v14, v5);
  os_unfair_lock_unlock((v13 + v15));
  if (*v5 == 1)
  {
    swift_getObjectType();
    *&v21 = v2;
    sub_22851B508(&qword_27D8406D8, v16, type metadata accessor for SummarySharingProfileDisplayNameInputSignal, &protocol conformance descriptor for SummarySharingProfileDisplayNameInputSignal);
    sub_22855C78C();
  }

  sub_22851B4AC(v5);
  return (*(v9 + 8))(v11, v8);
}

double sub_22851A080@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_22855C85C();
  MEMORY[0x28223BE20](v2 - 8);
  sub_22851C41C(0, &qword_27D840708, type metadata accessor for SummarySharingInputSignal, MEMORY[0x277D11BC0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  sub_22851C41C(0, &qword_280DE9E60, sub_22846F080, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  sub_22855C84C();
  type metadata accessor for SummarySharingInputSignal(0);
  sub_22855C61C();
  sub_22851B508(&qword_280DEB2B0, 255, type metadata accessor for SummarySharingInputSignal, &protocol conformance descriptor for SummarySharingInputSignal);
  sub_22855C81C();
  (*(v5 + 8))(v7, v4);
  sub_22846F080(0);
  v12 = v11;
  v13 = *(v11 - 8);
  if ((*(v13 + 48))(v10, 1, v11) == 1)
  {
    sub_22851C120(v10, &qword_280DE9E60, sub_22846F080);
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v14 = sub_22855CABC();
    __swift_project_value_buffer(v14, qword_280DE9DF8);
    v15 = sub_22855CA8C();
    v16 = sub_22855D68C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v27 = v18;
      *v17 = 136446210;
      v19 = sub_22855E34C();
      v21 = sub_2283F8938(v19, v20, &v27);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2283ED000, v15, v16, "%{public}s: Missing anchor for dependent signal", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AABAD40](v18, -1, -1);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }
  }

  else
  {
    sub_22855C8EC();
    v22 = v27;
    (*(v13 + 8))(v10, v12);
    v23 = sub_22851A600(v22);

    if (v23)
    {
      sub_22851AAF4(v23, &v27);

      v24 = v28;
      *a1 = v27;
      *(a1 + 16) = v24;
      result = *&v29;
      *(a1 + 24) = v29;
      return result;
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_22851A508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State(0) + 20);
  sub_22851C120(a1 + v6, &qword_27D8406E0, sub_2285199F4);
  sub_2285199F4(0);
  v8 = v7;
  v9 = *(v7 - 8);
  (*(v9 + 16))(a1 + v6, a2, v7);
  (*(v9 + 56))(a1 + v6, 0, 1, v8);
  return sub_22851C3B8(a1, a3);
}

void *sub_22851A600(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_22855C1DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = sub_22851B694(v8, v1, v3);
  v10 = sub_2285194C4(v9);
  if (v10)
  {
    v11 = v10;
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = sub_22855DB4C();
    }

    else
    {
      v12 = *(v9 + 16);
    }

    if (v12 == 1)
    {
      return v11;
    }

    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v28 = sub_22855CABC();
    __swift_project_value_buffer(v28, qword_280DE9DF8);

    v29 = sub_22855CA8C();
    v30 = sub_22855D68C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44[0] = v43;
      *v31 = 136446466;
      v32 = sub_22855E34C();
      v34 = sub_2283F8938(v32, v33, v44);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2082;
      v35 = [v2[4] profileIdentifier];
      v36 = [v35 identifier];

      sub_22855C1BC();
      v37 = sub_22855C17C();
      v39 = v38;
      (*(v5 + 8))(v7, v4);
      v40 = sub_2283F8938(v37, v39, v44);

      *(v31 + 14) = v40;
      _os_log_impl(&dword_2283ED000, v29, v30, "%{public}s: Got multiple entries matching profile identifier %{public}s", v31, 0x16u);
      v41 = v43;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v41, -1, -1);
      MEMORY[0x22AABAD40](v31, -1, -1);
    }
  }

  else
  {

    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v13 = sub_22855CABC();
    __swift_project_value_buffer(v13, qword_280DE9DF8);

    v14 = sub_22855CA8C();
    v15 = sub_22855D68C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v44[0] = v17;
      *v16 = 136446466;
      v18 = sub_22855E34C();
      v20 = sub_2283F8938(v18, v19, v44);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      v21 = [v2[4] profileIdentifier];
      v22 = [v21 identifier];

      sub_22855C1BC();
      v23 = sub_22855C17C();
      v25 = v24;
      (*(v5 + 8))(v7, v4);
      v26 = sub_2283F8938(v23, v25, v44);

      *(v16 + 14) = v26;
      _os_log_impl(&dword_2283ED000, v14, v15, "%{public}s: Unexpectedly no entries for summary sharing profile: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v17, -1, -1);
      MEMORY[0x22AABAD40](v16, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_22851AAF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 CNContactIdentifier];
  if (v4)
  {
    v5 = v4;
    sub_22855D1AC();
  }

  v6 = [a1 firstName];
  if (v6)
  {
    v7 = v6;
    sub_22855D1AC();
  }

  v8 = [a1 lastName];
  if (v8)
  {
    v9 = v8;
    sub_22855D1AC();
  }

  sub_22855C36C();
  v10 = [a1 primaryContactIdentifier];
  sub_22855D1AC();

  LOBYTE(v22) = 0;
  v23 = sub_22855C35C();
  v12 = v11;

  v13 = [a1 firstName];
  if (v13)
  {
    v14 = v13;
    sub_22855D1AC();
  }

  v15 = [a1 lastName];
  if (v15)
  {
    v16 = v15;
    sub_22855D1AC();
  }

  v17 = [a1 primaryContactIdentifier];
  sub_22855D1AC();

  v18 = sub_22855C35C();
  v20 = v19;

  *a2 = v23;
  a2[1] = v12;
  a2[2] = v18;
  a2[3] = v20;
  a2[4] = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_22851AD94(id *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if ([*a1 direction] != 1)
  {
    return 0;
  }

  v5 = [v4 profileIdentifier];
  v6 = [*(a2 + 32) profileIdentifier];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {

      return 0;
    }

    sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
    v8 = sub_22855D9AC();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {

    return 0;
  }

  if ([v4 status] < 2)
  {
    return 1;
  }

  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v10 = sub_22855CABC();
  __swift_project_value_buffer(v10, qword_280DE9DF8);
  v11 = v4;
  v12 = sub_22855CA8C();
  v13 = sub_22855D68C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136446466;
    v16 = sub_22855E34C();
    v18 = sub_2283F8938(v16, v17, &v20);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    v19 = [v11 status];

    *(v14 + 14) = v19;
    _os_log_impl(&dword_2283ED000, v12, v13, "%{public}s: Got a matching profile identifier but entry status is %ld", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AABAD40](v15, -1, -1);
    MEMORY[0x22AABAD40](v14, -1, -1);
  }

  else
  {
  }

  return 0;
}

Swift::Void __swiftcall SummarySharingProfileDisplayNameInputSignal.stopObservation()()
{
  v1 = *(v0 + 40);
  v2 = (v1 + *(*v1 + *MEMORY[0x277D841D0] + 16));
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  *v2 = 0;
  v4 = *(type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State(0) + 20);
  sub_22851C120(&v2[v4], &qword_27D8406E0, sub_2285199F4);
  sub_2285199F4(0);
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t SummarySharingProfileDisplayNameInputSignal.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SummarySharingProfileDisplayNameInputSignal.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_22851B1B8()
{
  v1 = *(*v0 + 40);
  v2 = (v1 + *(*v1 + *MEMORY[0x277D841D0] + 16));
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  *v2 = 0;
  v4 = *(type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State(0) + 20);
  sub_22851C120(&v2[v4], &qword_27D8406E0, sub_2285199F4);
  sub_2285199F4(0);
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_22851B2BC()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22851C41C(0, &qword_280DE8F50, sub_22842DFA0, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228560580;
  *(v1 + 56) = sub_22855C83C();
  *(v1 + 64) = sub_22851B508(&qword_280DE9F08, 255, MEMORY[0x277D11C38], MEMORY[0x277D11C30]);
  __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  sub_22855C84C();
  sub_22855C82C();
  return v1;
}

uint64_t sub_22851B424(uint64_t a1, uint64_t a2)
{
  v3 = sub_22851B508(&qword_27D8406D8, a2, type metadata accessor for SummarySharingProfileDisplayNameInputSignal, &protocol conformance descriptor for SummarySharingProfileDisplayNameInputSignal);

  return MEMORY[0x28216B080](a1, v3);
}

uint64_t sub_22851B4AC(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22851B508(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_22851B550(uint64_t a1, uint64_t a2)
{
  sub_22855D99C();
  result = sub_22855DADC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t *sub_22851B5D4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_retain_n();
    sub_22851B95C(&v11, v10, a2, a3, a4, a5);

    if (!v5)
    {
      a3 = v11;
    }

    return a3;
  }

  return result;
}

uint64_t sub_22851B694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x277D84FA0];
    v23 = MEMORY[0x277D84FA0];

    sub_22855DAFC();
    if (sub_22855DB8C())
    {
      sub_2283EF310(0, &qword_280DE9320, 0x277CCDA70);
      while (1)
      {
        swift_dynamicCast();
        v7 = sub_22851AD94(&v22, a2, a3);
        if (v3)
        {
          break;
        }

        v8 = v22;
        if (v7)
        {
          v9 = *(v6 + 16);
          if (*(v6 + 24) <= v9)
          {
            sub_228486DB8(v9 + 1);
          }

          v6 = v23;
          result = sub_22855D99C();
          v11 = v6 + 56;
          v12 = -1 << *(v6 + 32);
          v13 = result & ~v12;
          v14 = v13 >> 6;
          if (((-1 << v13) & ~*(v6 + 56 + 8 * (v13 >> 6))) != 0)
          {
            v15 = __clz(__rbit64((-1 << v13) & ~*(v6 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v16 = 0;
            v17 = (63 - v12) >> 6;
            do
            {
              if (++v14 == v17 && (v16 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v18 = v14 == v17;
              if (v14 == v17)
              {
                v14 = 0;
              }

              v16 |= v18;
              v19 = *(v11 + 8 * v14);
            }

            while (v19 == -1);
            v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          }

          *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
          *(*(v6 + 48) + 8 * v15) = v8;
          ++*(v6 + 16);
        }

        else
        {
        }

        if (!sub_22855DB8C())
        {
          goto LABEL_21;
        }
      }

      v21 = v22;
    }

    else
    {
LABEL_21:
    }
  }

  else
  {

    v6 = sub_22851BB3C(a1, a2, a3);
  }

  return v6;
}

uint64_t sub_22851B918(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22851B9DC(a1, a2, a3, a4, a5);
  v6 = v5;

  return v6;
}

uint64_t sub_22851B95C@<X0>(uint64_t *a1@<X8>, unint64_t *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{

  v13 = sub_22851B918(a2, a3, a4, a5, a6);

  if (!v6)
  {
    *a1 = v13;
  }

  return result;
}

void sub_22851B9DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v25 = *(*(a3 + 48) + 8 * v16);
    v17 = v25;
    v18 = sub_22851AD94(&v25, a4, a5);

    if (v5)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:

        sub_2285261C4(a1, a2, v22, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22851BB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a3;
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v30 = a2;

  if (v7 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v25 = v8;
    v27 = &v25;
    MEMORY[0x28223BE20](v10);
    v26 = &v25 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v9);
    v28 = 0;
    v9 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v8 = v12 & *(a1 + 56);
    v13 = (v11 + 63) >> 6;
    while (v8)
    {
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v17 = v14 | (v9 << 6);
      v31[0] = *(*(a1 + 48) + 8 * v17);
      v18 = v31[0];
      v19 = sub_22851AD94(v31, v30, v29);
      if (v4)
      {

        swift_willThrow();
        goto LABEL_18;
      }

      v20 = v19;

      if (v20)
      {
        *&v26[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_17:
          v13 = sub_2285261C4(v26, v25, v28, a1);
          goto LABEL_18;
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_17;
      }

      v16 = *(a1 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v8 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = v30;

  v13 = sub_22851B5D4(v23, v8, a1, v24, v29);

  MEMORY[0x22AABAD40](v23, -1, -1);
LABEL_18:

  return v13;
}

uint64_t _s14HealthPlatform43SummarySharingProfileDisplayNameInputSignalC16beginObservation4from14configurationsy0A13Orchestration19OptionalValueAnchorVyAA0efG0VGSg_SayAG21IdentityConfigurationVGtF_0()
{
  sub_2285199F4(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22851C41C(0, &qword_27D8406E0, sub_2285199F4, MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  v12 = *(v0 + 40);
  v13 = (v12 + *(*v12 + *MEMORY[0x277D841D0] + 16));
  v14 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v12 + v14));
  *v13 = 1;
  v15 = type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State(0);
  sub_22851C324(&v13[*(v15 + 20)], v11);
  os_unfair_lock_unlock((v12 + v14));
  sub_22851C324(v11, v9);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_22851C120(v11, &qword_27D8406E0, sub_2285199F4);
    v16 = v9;
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    swift_getObjectType();
    v19[1] = v0;
    sub_22851B508(&qword_27D8406D8, v17, type metadata accessor for SummarySharingProfileDisplayNameInputSignal, &protocol conformance descriptor for SummarySharingProfileDisplayNameInputSignal);
    sub_22855C78C();
    (*(v3 + 8))(v5, v2);
    v16 = v11;
  }

  return sub_22851C120(v16, &qword_27D8406E0, sub_2285199F4);
}

uint64_t sub_22851C120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22851C41C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_22851C278(uint64_t a1)
{
  sub_22851C41C(319, &qword_27D8406E0, sub_2285199F4, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_22851C324(uint64_t a1, uint64_t a2)
{
  sub_22851C41C(0, &qword_27D8406E0, sub_2285199F4, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22851C3B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22851C41C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *MockFeedItemStorage.__allocating_init()()
{
  result = swift_allocObject();
  result[2] = sub_22851D830;
  result[3] = 0;
  result[4] = sub_22851D830;
  result[5] = 0;
  result[6] = sub_22851D830;
  result[7] = 0;
  result[8] = sub_22851CC04;
  result[9] = 0;
  return result;
}

uint64_t sub_22851C530@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t *a1, uint64_t *a2)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_22851D838;
  a2[1] = v6;
}

uint64_t sub_22851C5B0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 16) = sub_22851D834;
  *(v6 + 24) = v5;
}

uint64_t sub_22851C640()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_22851C68C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_22851C6E0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t *a1, uint64_t *a2)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_22851D7F8;
  a2[1] = v6;
}

uint64_t sub_22851C760(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 32) = sub_22851D7C0;
  *(v6 + 40) = v5;
}

uint64_t sub_22851C7F0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_22851C83C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_22851C8E0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t *a1, uint64_t *a2)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 48);
  v4 = *(v3 + 56);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_22851D788;
  a2[1] = v6;
}

uint64_t sub_22851C960(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v10 = *a2;
  v9 = a2[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;

  a3(v8, a6, v11);
}

uint64_t sub_22851C9F0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 48) = sub_22851D750;
  *(v6 + 56) = v5;
}

uint64_t sub_22851CA80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v13[0] = a7;
  v13[1] = v11;

  a4(&v14, v13);
}

uint64_t sub_22851CB14()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_22851CB60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_22851CC38@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t *a1, uint64_t *a2)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 64);
  v4 = *(v3 + 72);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_22851D748;
  a2[1] = v6;
}

uint64_t sub_22851CCB8(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t (*)(uint64_t a1, char a2), uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = *(a1 + 24);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;

  a3(v4, v5, v6, v9, sub_22841C06C, v10);
}

uint64_t sub_22851CD74(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 64) = sub_22851D740;
  *(v6 + 72) = v5;
}

uint64_t sub_22851CE04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void (*a7)(void *, void *))
{
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = a3;
  v14 = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  *(v10 + 24) = a6;
  v12[0] = sub_22841C0AC;
  v12[1] = v10;

  a7(v13, v12);
}

uint64_t sub_22851CEB0()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_22851CEFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_22851CFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 16);

  v7(a1, a2, a3);
}

uint64_t sub_22851D01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 32);

  v7(a1, a2, a3);
}

uint64_t sub_22851D098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v13 = *(v6 + 64);

  v13(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22851D134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 48);

  v7(a1, a2, a3);
}

void *MockFeedItemStorage.init()()
{
  result = v0;
  v0[2] = sub_22851D830;
  v0[3] = 0;
  v0[4] = sub_22851D830;
  v0[5] = 0;
  v0[6] = sub_22851D830;
  v0[7] = 0;
  v0[8] = sub_22851CC04;
  v0[9] = 0;
  return result;
}

uint64_t MockFeedItemStorage.deinit()
{

  return v0;
}

uint64_t MockFeedItemStorage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22851D290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_beginAccess();
  v8 = *(v7 + 32);

  v8(a1, a2, a3);
}

uint64_t sub_22851D310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_beginAccess();
  v8 = *(v7 + 16);

  v8(a1, a2, a3);
}

uint64_t sub_22851D390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_beginAccess();
  v8 = *(v7 + 48);

  v8(a1, a2, a3);
}

uint64_t sub_22851D410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *v6;
  swift_beginAccess();
  v14 = *(v13 + 64);

  v14(a1, a2, a3, a4, a5, a6);
}

id FeedSection.__allocating_init(context:identifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  v6 = sub_22855D17C();
  v7 = [v5 entityForName:v6 inManagedObjectContext:a1];

  if (v7)
  {
    v8 = [objc_allocWithZone(v3) initWithEntity:v7 insertIntoManagedObjectContext:a1];
    v9 = sub_22855D17C();

    [v8 setIdentifier_];

    return v8;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

void *FeedSection.diagnosticDescription.getter()
{
  v1 = v0;
  v47 = sub_22855C16C();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22855C06C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[0] = 0;
  v51[1] = 0xE000000000000000;
  sub_22855DC6C();

  strcpy(v51, "FeedSection ");
  BYTE5(v51[1]) = 0;
  HIWORD(v51[1]) = -5120;
  v8 = [v0 identifier];
  v9 = sub_22855D1AC();
  v11 = v10;

  MEMORY[0x22AAB92A0](v9, v11);

  MEMORY[0x22AAB92A0](0x64656566206E6920, 0xE900000000000020);
  v12 = [v1 feed];
  v13 = [v12 objectID];

  v14 = [v13 URIRepresentation];
  sub_22855C00C();

  v15 = sub_22855BF7C();
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  MEMORY[0x22AAB92A0](v15, v17);

  MEMORY[0x22AAB92A0](0x20687469770ALL, 0xE600000000000000);
  v18 = [v1 feedItems];
  v19 = [v18 count];

  v49 = v19;
  v20 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v20);

  MEMORY[0x22AAB92A0](0xA3A736D65746920, 0xE800000000000000);
  v21 = v51[0];
  v22 = [v1 feedItems];
  v23 = sub_22851F9AC(v22, sub_22851FE10, 0, &qword_27D840738, type metadata accessor for FeedItem);

  if ((v23 & 0x8000000000000000) != 0 || (v23 & 0x4000000000000000) != 0)
  {
    goto LABEL_15;
  }

  for (i = *(v23 + 16); i; i = sub_22855DB4C())
  {
    v25 = 0;
    v44 = "tity for FeedSection";
    v45 = v23 & 0xC000000000000001;
    v43 = ",\ndateSubmitted: ";
    v41 = (v2 + 8);
    v42 = ",\nglobal sortOrder: ";
    while (1)
    {
      if (v45)
      {
        v26 = MEMORY[0x22AAB9D20](v25, v23);
      }

      else
      {
        if (v25 >= *(v23 + 16))
        {
          goto LABEL_14;
        }

        v26 = *(v23 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = (v25 + 1);
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v49 = 0;
      v50 = 0xE000000000000000;
      sub_22855DC6C();
      MEMORY[0x22AAB92A0](0x6D65744964656546, 0xE900000000000020);
      v48 = v25;
      v29 = sub_22855E11C();
      MEMORY[0x22AAB92A0](v29);

      MEMORY[0x22AAB92A0](8250, 0xE200000000000000);
      v30 = [v27 uniqueIdentifier];
      v31 = sub_22855D1AC();
      v2 = i;
      v33 = v32;

      MEMORY[0x22AAB92A0](v31, v33);

      MEMORY[0x22AAB92A0](0xD000000000000011, v44 | 0x8000000000000000);
      v34 = [v27 dateSubmitted];
      v35 = v46;
      sub_22855C13C();

      sub_228520084(&qword_280DECD88, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v36 = v47;
      v37 = sub_22855E11C();
      MEMORY[0x22AAB92A0](v37);

      (*v41)(v35, v36);
      MEMORY[0x22AAB92A0](0xD000000000000014, v43 | 0x8000000000000000);
      v48 = [v27 sortOrder];
      v38 = sub_22855E11C();
      MEMORY[0x22AAB92A0](v38);

      MEMORY[0x22AAB92A0](0xD000000000000015, v42 | 0x8000000000000000);
      v48 = [v27 sectionSortOrder];
      v39 = sub_22855E11C();
      MEMORY[0x22AAB92A0](v39);

      MEMORY[0x22AAB92A0](2570, 0xE200000000000000);
      v21 = v51;
      MEMORY[0x22AAB92A0](v49, v50);

      i = v2;

      ++v25;
      if (v28 == v2)
      {
        v21 = v51[0];
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  return v21;
}

uint64_t static FeedSection.eligibleIdentifiers.getter()
{
  v0 = sub_22845FFC8(&unk_283B7F550);
  swift_arrayDestroy();
  return v0;
}

uint64_t static ForYouSectionKind.section(for:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0xB)
  {
    if (v1 == 12)
    {
      return 0;
    }

    if (v1 == 18)
    {
      return 1;
    }
  }

  else
  {
    if (v1 == 2)
    {
      return 3;
    }

    if (v1 == 3)
    {
      return 2;
    }
  }

  if (qword_280DEECB8 != -1)
  {
    swift_once();
  }

  v3 = sub_22855CABC();
  __swift_project_value_buffer(v3, qword_280DEECC0);
  v4 = sub_22855CA8C();
  v5 = sub_22855D68C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = ContentKind.rawValue.getter();
    v10 = sub_2283F8938(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2283ED000, v4, v5, "No section defined for contentKind %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AABAD40](v7, -1, -1);
    MEMORY[0x22AABAD40](v6, -1, -1);
  }

  return 4;
}

unint64_t ForYouSectionKind.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6867696C68676968;
  v2 = 0x73656C6369747261;
  if (a1 != 2)
  {
    v2 = 0x48726F4673707061;
  }

  if (a1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22851E2D4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA00000000007374;
  v3 = 0x6867696C68676968;
  v4 = *a1;
  v5 = 0x73656C6369747261;
  if (v4 == 2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v5 = 0x48726F4673707061;
    v6 = 0xED000068746C6165;
  }

  v7 = 0xD000000000000011;
  if (*a1)
  {
    v8 = 0x800000022856D770;
  }

  else
  {
    v7 = 0x6867696C68676968;
    v8 = 0xEA00000000007374;
  }

  if (*a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0xE800000000000000;
  v12 = 0x73656C6369747261;
  if (*a2 != 2)
  {
    v12 = 0x48726F4673707061;
    v11 = 0xED000068746C6165;
  }

  if (*a2)
  {
    v3 = 0xD000000000000011;
    v2 = 0x800000022856D770;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v11;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_22855E15C();
  }

  return v15 & 1;
}

uint64_t sub_22851E428()
{
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_22851E500(uint64_t a1)
{
  sub_22855D20C();
}

uint64_t sub_22851E5C4(uint64_t a1)
{
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

unint64_t sub_22851E698@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14HealthPlatform17ForYouSectionKindO8rawValueACSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22851E6C8(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007374;
  v3 = 0x6867696C68676968;
  v4 = 0xE800000000000000;
  v5 = 0x73656C6369747261;
  if (*v1 != 2)
  {
    v5 = 0x48726F4673707061;
    v4 = 0xED000068746C6165;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x800000022856D770;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_22851E76C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22851FDFC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22851E7D8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22851E7D8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22855E10C();
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
        v5 = sub_22855D40C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22851E9A0(v7, v8, a1, v4);
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
    return sub_22851E8D0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22851E8D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_22855E15C(), (result & 1) == 0))
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

uint64_t sub_22851E9A0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_22851F230(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22851EF7C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22855E15C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22855E15C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2284263F0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2284263F0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_22851EF7C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22851F230(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_22851F1A4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_22855E15C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_22851EF7C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_22855E15C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_22855E15C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_22851F1A4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22851F230(v3);
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

char *sub_22851F244(char *result, int64_t a2, char a3, char *a4)
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
    sub_2285201D4(0);
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

unint64_t *sub_22851F33C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_22851F590(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_22851F3CC(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_22851F590((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_22851F33C(v11, v6, a2, a1);

    MEMORY[0x22AABAD40](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_22851F590(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_22855E22C();

      sub_22855D20C();
      v26 = sub_22855E27C();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_22855E15C() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_228525FAC(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_22855E22C();

      sub_22855D20C();
      v39 = sub_22855E27C();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_22855E15C() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_22851F9AC(void *a1, void (*a2)(uint64_t *__return_ptr, _OWORD *), uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v48 = a2;
  sub_2285200CC(0, a4, a5);
  v10 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - v11;
  v13 = [a1 count];
  v14 = v13;
  if (v13)
  {
    if (v13 <= 0)
    {
      v15 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_22844C284(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v17 = v16 - 32;
      if (v16 < 32)
      {
        v17 = v16 - 25;
      }

      v15[2] = v14;
      v15[3] = (2 * (v17 >> 3)) | 1;
    }
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v18 = v15[3];

  result = sub_22855D64C();
  v20 = &v12[*(v10 + 44)];
  *v20 = v48;
  *(v20 + 1) = a3;
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v45 = a4;
  v46 = a5;
  v21 = v15 + 4;
  v22 = v18 >> 1;
  if (v14)
  {
    v22 -= v14;
    sub_22855BF4C();
    sub_228520084(&qword_27D840730, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);

    v23 = v48;
    while (1)
    {
      result = sub_22855DA4C();
      v51 = v53;
      v52 = v54;
      if (!*(&v54 + 1))
      {
        goto LABEL_41;
      }

      sub_228400400(&v51, v50);
      v23(&v49, v50);
      __swift_destroy_boxed_opaque_existential_0(v50);
      *v21++ = v49;
      if (!--v14)
      {
        goto LABEL_16;
      }
    }
  }

  v23 = v48;
LABEL_16:
  v24 = sub_22855BF4C();
  v25 = sub_228520084(&qword_27D840730, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_22855DA4C();
  v51 = v53;
  v52 = v54;
  if (*(&v54 + 1))
  {
    v47 = v12;
    while (1)
    {
      sub_228400400(&v51, v50);
      v23(&v49, v50);
      result = __swift_destroy_boxed_opaque_existential_0(v50);
      v26 = v49;
      if (!v22)
      {
        v27 = v15[3];
        if (((v27 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_38;
        }

        v28 = v25;
        v29 = v24;
        v30 = a3;
        v31 = v27 & 0xFFFFFFFFFFFFFFFELL;
        if (v31 <= 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = v31;
        }

        sub_22844C284(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
        v33 = swift_allocObject();
        v34 = _swift_stdlib_malloc_size(v33);
        v35 = v34 - 32;
        if (v34 < 32)
        {
          v35 = v34 - 25;
        }

        v36 = v35 >> 3;
        v33[2] = v32;
        v33[3] = (2 * (v35 >> 3)) | 1;
        v37 = (v33 + 4);
        v38 = v15[3] >> 1;
        if (v15[2])
        {
          v39 = v15 + 4;
          if (v33 != v15 || v37 >= v39 + 8 * v38)
          {
            memmove(v33 + 4, v39, 8 * v38);
          }

          v15[2] = 0;
        }

        v21 = (v37 + 8 * v38);
        v22 = (v36 & 0x7FFFFFFFFFFFFFFFLL) - v38;

        v15 = v33;
        a3 = v30;
        v24 = v29;
        v25 = v28;
        v12 = v47;
        v23 = v48;
      }

      v40 = __OFSUB__(v22--, 1);
      if (v40)
      {
        break;
      }

      *v21++ = v26;
      sub_22855DA4C();
      v51 = v53;
      v52 = v54;
      if (!*(&v54 + 1))
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_33:
  result = sub_228520178(v12, v45, v46);
  v41 = v15[3];
  if (v41 < 2)
  {
    return v15;
  }

  v42 = v41 >> 1;
  v40 = __OFSUB__(v42, v22);
  v43 = v42 - v22;
  if (!v40)
  {
    v15[2] = v43;
    return v15;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_22851FE10@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_22854A158(a2);
  *a1 = result;
  return result;
}

uint64_t _s14HealthPlatform11FeedSectionC03getD10Identifier4fromSSSgShySSG_tFZ_0(uint64_t a1)
{
  v2 = sub_22845FFC8(&unk_283B7F550);
  swift_arrayDestroy();

  v3 = sub_22851F3CC(v2, a1);

  v4 = v3[2];
  if (v4)
  {
    v5 = sub_22840770C(v3[2], 0);
    v6 = sub_2284077A8(&v10, v5 + 4, v4, v3);
    v7 = v10;

    sub_228407958(v7);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v10 = v5;
  sub_22851E76C(&v10);

  if (*(v10 + 2))
  {
    v8 = *(v10 + 4);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

unint64_t sub_22851FFA0()
{
  result = qword_27D840710;
  if (!qword_27D840710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840710);
  }

  return result;
}

unint64_t sub_22851FFF8()
{
  result = qword_27D840718;
  if (!qword_27D840718)
  {
    sub_22844C284(255, &qword_27D840720, &type metadata for ForYouSectionKind, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840718);
  }

  return result;
}

uint64_t sub_228520084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2285200CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_228450394();
    a3(255);
    sub_228520084(&qword_280DE94E8, sub_228450394, MEMORY[0x277CC9CF0]);
    v5 = sub_22855DDAC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_228520178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2285200CC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2285201D4(uint64_t a1)
{
  if (!qword_280DE8F00)
  {
    sub_22842B828();
    v1 = sub_22855E12C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE8F00);
    }
  }
}

id HealthAppOrchestrationListener.init(listener:coordinator:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC14HealthPlatform30HealthAppOrchestrationListener_coordinator];
  *&v3[OBJC_IVAR____TtC14HealthPlatform30HealthAppOrchestrationListener_coordinator + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC14HealthPlatform30HealthAppOrchestrationListener_protectedState;
  sub_228520378(0);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = MEMORY[0x277D84F90];
  *&v3[v7] = v8;
  *(v8 + 16) = v9;
  *&v3[OBJC_IVAR____TtC14HealthPlatform30HealthAppOrchestrationListener_listener] = a1;
  *(v6 + 1) = a3;
  swift_unknownObjectWeakAssign();
  v13.receiver = v3;
  v13.super_class = type metadata accessor for HealthAppOrchestrationListener();
  v10 = a1;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  [v10 setDelegate_];

  swift_unknownObjectRelease();
  return v11;
}

void sub_228520378(uint64_t a1)
{
  if (!qword_280DE91B0)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE91B0);
    }
  }
}

uint64_t sub_228520404(void **a1, uint64_t a2)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_228426DE4(0, v4[2] + 1, 1, v4);
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = sub_228426DE4((v5 > 1), v6 + 1, 1, v4);
  }

  v4[2] = v6 + 1;
  v7 = &v4[2 * v6];
  v7[4] = sub_228520AFC;
  v7[5] = v3;

  *a1 = v4;
  return result;
}

id HealthAppOrchestrationListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthAppOrchestrationListener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthAppOrchestrationListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228520678(void *a1)
{
  v2 = v1;
  v4 = v2 + OBJC_IVAR____TtC14HealthPlatform30HealthAppOrchestrationListener_coordinator;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(v4 + 8);
    v8 = sub_22855D17C();
    v9 = [a1 valueForEntitlement_];

    if (v9)
    {
      sub_22855DA7C();
      swift_unknownObjectRelease();
      sub_2283F4858(v28, sub_228400E48);
      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v10 = sub_22855CABC();
      __swift_project_value_buffer(v10, qword_280DEEBD0);
      v11 = a1;
      v12 = sub_22855CA8C();
      v13 = sub_22855D6AC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        *(v14 + 4) = v11;
        *v15 = v11;
        v16 = v11;
        _os_log_impl(&dword_2283ED000, v12, v13, "Accepting orchestration connection %@", v14, 0xCu);
        sub_2283F4858(v15, sub_22841DCF4);
        MEMORY[0x22AABAD40](v15, -1, -1);
        MEMORY[0x22AABAD40](v14, -1, -1);
      }

      v17 = objc_allocWithZone(type metadata accessor for HealthAppOrchestrationServer());
      v18 = v11;
      swift_unknownObjectRetain();
      v19 = HealthAppOrchestrationServer.init(connection:coordinator:)(v18, v6, v7);
      v20 = *(v2 + OBJC_IVAR____TtC14HealthPlatform30HealthAppOrchestrationListener_protectedState);
      MEMORY[0x28223BE20](v19);
      os_unfair_lock_lock((v20 + 24));
      sub_228520AE0((v20 + 16));
      os_unfair_lock_unlock((v20 + 24));

      swift_unknownObjectRelease();
      return 1;
    }

    else
    {
      memset(v28, 0, sizeof(v28));
      sub_2283F4858(v28, sub_228400E48);
      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v21 = sub_22855CABC();
      __swift_project_value_buffer(v21, qword_280DEEBD0);
      v22 = a1;
      v23 = sub_22855CA8C();
      v24 = sub_22855D68C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v22;
        *v26 = v22;
        v27 = v22;
        _os_log_impl(&dword_2283ED000, v23, v24, "Rejecting connection %@ due to missing entitlement", v25, 0xCu);
        sub_2283F4858(v26, sub_22841DCF4);
        MEMORY[0x22AABAD40](v26, -1, -1);
        MEMORY[0x22AABAD40](v25, -1, -1);
      }

      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_228520AFC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_228520B44()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_228520BA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_228521088(&qword_280DEAF38, a2, type metadata accessor for LegacyGenerationInputSignal, &unk_22856A4F4);

  return MEMORY[0x28216B080](a1, v3);
}

uint64_t sub_228520CA8(uint64_t a1)
{
  v15 = *v1;
  v3 = sub_22855C85C();
  MEMORY[0x28223BE20](v3 - 8);
  sub_228520F70(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283EF6D4();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228520FC8(a1, v6);
  v12 = *(v9 + 48);
  if (v12(v6, 1, v8) == 1)
  {
    sub_22855C84C();
    Current = CFAbsoluteTimeGetCurrent();
    sub_22855C57C();
    if (v12(v6, 1, v8) != 1)
    {
      sub_22852102C(v6);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v6, v8);
  }

  swift_getObjectType();
  Current = *&v1;
  sub_228521088(&qword_280DEAF38, v13, type metadata accessor for LegacyGenerationInputSignal, &unk_22856A4F4);
  sub_22855C78C();
  return (*(v9 + 8))(v11, v8);
}

void sub_228520F70(uint64_t a1)
{
  if (!qword_280DE9F48)
  {
    sub_2283EF6D4();
    v1 = sub_22855DA2C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9F48);
    }
  }
}

uint64_t sub_228520FC8(uint64_t a1, uint64_t a2)
{
  sub_228520F70(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22852102C(uint64_t a1)
{
  sub_228520F70(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228521088(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

Swift::Void __swiftcall Int.moveUp()()
{
  if (__OFADD__(*v0, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v0;
  }
}

Swift::Void __swiftcall Int.moveDown()()
{
  if (__OFSUB__(*v0, 1))
  {
    __break(1u);
  }

  else
  {
    --*v0;
  }
}

id PluginFeedItem.NotificationIdentifier.sourceProfile.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t PluginFeedItem.NotificationIdentifier.pluginIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PluginFeedItem.NotificationIdentifier.pluginIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PluginFeedItem.NotificationIdentifier.feedItemIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PluginFeedItem.NotificationIdentifier.notificationIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t PluginFeedItem.NotificationIdentifier.init(sourceProfile:pluginIdentifier:feedItemIdentifier:notificationIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t PluginFeedItem.NotificationIdentifier.description.getter()
{
  v1 = sub_22855C1DC();
  v16 = *(v1 - 8);
  v17 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD000000000000018, 0x80000002285740B0);
  MEMORY[0x22AAB92A0](v9, v10);
  MEMORY[0x22AAB92A0](0xD000000000000015, 0x80000002285740D0);
  MEMORY[0x22AAB92A0](v7, v8);
  MEMORY[0x22AAB92A0](0xD000000000000013, 0x80000002285740F0);
  MEMORY[0x22AAB92A0](v5, v6);
  MEMORY[0x22AAB92A0](0xD000000000000014, 0x8000000228574110);
  if (v4)
  {
    v11 = [v4 identifier];
    sub_22855C1BC();

    v12 = sub_22855C17C();
    v14 = v13;
    (*(v16 + 8))(v3, v17);
  }

  else
  {
    v14 = 0xE800000000000000;
    v12 = 0x636974736F6E6761;
  }

  MEMORY[0x22AAB92A0](v12, v14);

  return v18;
}

unint64_t sub_22852142C()
{
  v1 = 0x7250656372756F73;
  v2 = 0xD000000000000016;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2285214C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_228522274(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2285214E8(uint64_t a1)
{
  v2 = sub_228521FA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228521524(uint64_t a1)
{
  v2 = sub_228521FA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PluginFeedItem.NotificationIdentifier.encode(to:)(void *a1)
{
  sub_228521FFC(0, &qword_27D8407C8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 24);
  v15[4] = *(v1 + 16);
  v15[5] = v8;
  v11 = *(v1 + 40);
  v15[2] = *(v1 + 32);
  v15[3] = v10;
  v15[0] = *(v1 + 48);
  v15[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228521FA8();
  v12 = v9;
  sub_22855E31C();
  v20 = v9;
  v19 = 0;
  sub_228513B40();
  v13 = v15[6];
  sub_22855E0CC();
  if (v13)
  {
  }

  else
  {

    v18 = 1;
    sub_22855E08C();
    v17 = 2;
    sub_22855E08C();
    v16 = 3;
    sub_22855E08C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t PluginFeedItem.NotificationIdentifier.hash(into:)(uint64_t a1)
{
  if (*v1)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  sub_22855D20C();
  sub_22855D20C();

  return sub_22855D20C();
}

uint64_t PluginFeedItem.NotificationIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  if (v1)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  sub_22855D20C();
  sub_22855D20C();
  sub_22855D20C();
  return sub_22855E27C();
}

void PluginFeedItem.NotificationIdentifier.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  sub_228521FFC(0, &qword_27D8407D8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228521FA8();
  sub_22855E30C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v31 = 0;
    sub_228513D44();
    sub_22855E03C();
    v10 = v32;
    v30 = 1;
    v26 = sub_22855DFFC();
    v27 = v11;
    v29 = 2;
    v24 = sub_22855DFFC();
    v25 = v12;
    v28 = 3;
    v13 = sub_22855DFFC();
    v15 = v14;
    v16 = *(v7 + 8);
    v23 = v13;
    v16(v9, v6);
    v17 = v26;
    v18 = v27;
    *a2 = v10;
    a2[1] = v17;
    v19 = v24;
    v20 = v25;
    a2[2] = v18;
    a2[3] = v19;
    v21 = v23;
    a2[4] = v20;
    a2[5] = v21;
    a2[6] = v15;
    v22 = v10;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t sub_228521C28()
{
  v1 = *v0;
  sub_22855E22C();
  if (v1)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  sub_22855D20C();
  sub_22855D20C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_228521CE0(uint64_t a1)
{
  if (*v1)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  sub_22855D20C();
  sub_22855D20C();

  return sub_22855D20C();
}

uint64_t sub_228521D98(uint64_t a1)
{
  v2 = *v1;
  sub_22855E22C();
  if (v2)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  sub_22855D20C();
  sub_22855D20C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t _s14HealthPlatform14PluginFeedItemV22NotificationIdentifierV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v14 = a2[5];
  v15 = a1[5];
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v12 = a2[6];
    v13 = a1[6];
    sub_2284185F4();
    if ((sub_22855D9AC() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v12 = a2[6];
    v13 = a1[6];
    if (v7)
    {
      return 0;
    }
  }

  if ((v2 != v6 || v3 != v8) && (sub_22855E15C() & 1) == 0 || (v4 != v9 || v5 != v10) && (sub_22855E15C() & 1) == 0)
  {
    return 0;
  }

  if (v15 == v14 && v13 == v12)
  {
    return 1;
  }

  return sub_22855E15C();
}

unint64_t sub_228521FA8()
{
  result = qword_27D8407D0;
  if (!qword_27D8407D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8407D0);
  }

  return result;
}

void sub_228521FFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_228521FA8();
    v7 = a3(a1, &_s22NotificationIdentifierV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_228522064()
{
  result = qword_27D8407E0;
  if (!qword_27D8407E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8407E0);
  }

  return result;
}

uint64_t sub_2285220B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_228522100(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_228522170()
{
  result = qword_27D8407E8;
  if (!qword_27D8407E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8407E8);
  }

  return result;
}

unint64_t sub_2285221C8()
{
  result = qword_27D8407F0;
  if (!qword_27D8407F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8407F0);
  }

  return result;
}

unint64_t sub_228522220()
{
  result = qword_27D8407F8;
  if (!qword_27D8407F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8407F8);
  }

  return result;
}

uint64_t sub_228522274(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7250656372756F73 && a2 == 0xED0000656C69666FLL;
  if (v4 || (sub_22855E15C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000228574130 == a2 || (sub_22855E15C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000228574150 == a2 || (sub_22855E15C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000228574170 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_22855E15C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double sub_2285223E8(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v23 = *(a1 + 8);
    v4 = *(a1 + 48);
    *&v24[8] = *(a1 + 32);
    *&v24[24] = v4;
    *&v24[40] = *(a1 + 64);
    v5 = *(a1 + 80);
    *v24 = v3;
    *&v24[56] = v5;
    v6 = a2[3];
    v17[2] = a2[2];
    v17[3] = v6;
    v17[4] = a2[4];
    v7 = a2[1];
    v17[0] = *a2;
    v17[1] = v7;
    sub_2284E4738(v17, &v18);
    v8 = *(a1 + 24);
    v9 = *(a1 + 56);
    *&v24[16] = *(a1 + 40);
    *&v24[32] = v9;
    *&v24[48] = *(a1 + 72);
    v23 = *(a1 + 8);
    *v24 = v8;
  }

  else
  {
    v10 = a2[3];
    v20 = a2[2];
    v21 = v10;
    v22 = a2[4];
    v11 = a2[1];
    v18 = *a2;
    v19 = v11;
    v12 = *(a1 + 24);
    v13 = *(a1 + 56);
    *&v24[16] = *(a1 + 40);
    *&v24[32] = v13;
    *&v24[48] = *(a1 + 72);
    v23 = *(a1 + 8);
    *v24 = v12;
    sub_22842DCDC(a2, v17);
  }

  sub_22842DC5C(&v23);
  v14 = v18;
  *(a1 + 24) = v19;
  v15 = v21;
  *(a1 + 40) = v20;
  *(a1 + 56) = v15;
  result = *&v22;
  *(a1 + 72) = v22;
  *(a1 + 8) = v14;
  return result;
}

uint64_t sub_22852250C()
{

  return swift_deallocClassInstance();
}

uint64_t LegacyGenerationProvider.__allocating_init(environmentalState:)(uint64_t a1)
{
  swift_allocObject();
  v1 = sub_228522DF0();

  return v1;
}

uint64_t LegacyGenerationProvider.init(environmentalState:)(uint64_t a1)
{
  v1 = sub_228522DF0();

  return v1;
}

void LegacyGenerationProvider.requestBackgroundGeneration(request:)(_OWORD *a1)
{
  v2 = v1;
  v4 = sub_22855C85C();
  MEMORY[0x28223BE20](v4 - 8);
  sub_2283EF6D4();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1[3];
  v18[2] = a1[2];
  v18[3] = v10;
  v18[4] = a1[4];
  v11 = a1[1];
  v18[0] = *a1;
  v18[1] = v11;
  v12 = *(*(v2 + 16) + 16);
  v16 = v18;
  os_unfair_lock_lock(v12 + 26);
  sub_228522EE0(&v12[4]);
  os_unfair_lock_unlock(v12 + 26);
  v13 = *(v2 + 24);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);

  os_unfair_lock_unlock((v13 + 24));
  if (v14 != 0.0)
  {
    swift_getObjectType();
    sub_22855C84C();
    Current = CFAbsoluteTimeGetCurrent();
    sub_22855C57C();
    Current = v14;
    type metadata accessor for LegacyGenerationInputSignal();
    sub_2283EF774(&qword_280DEAF38, 255, type metadata accessor for LegacyGenerationInputSignal, &unk_22856A4F4);
    sub_22855C78C();
    (*(v7 + 8))(v9, v6);
  }
}

uint64_t LegacyGenerationProvider.inputSignals(for:observer:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  result = MEMORY[0x277D84F90];
  if (v4 && a1)
  {
    ObjectType = swift_getObjectType();
    v7 = *(v4 + 16);
    v8 = *(v7 + 16);
    swift_unknownObjectRetain();
    v9 = v8(ObjectType, v7);
    if (v9)
    {
      v10 = v9;
      v11 = [v9 profileIdentifier];
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_opt_self() primaryProfile];
    v13 = v12;
    if (v11)
    {
      if (v12)
      {
        sub_228522F1C();
        v14 = sub_22855D9AC();

        if ((v14 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_11:
        v15 = *(v2 + 24);
        MEMORY[0x28223BE20](v12);
        os_unfair_lock_lock((v15 + 24));
        sub_228522EFC((v15 + 16), &v18);
        os_unfair_lock_unlock((v15 + 24));
        v16 = v18;
        sub_22840CB74(0, &qword_280DE8F78, &qword_280DE9F60, MEMORY[0x277D11B90], 1);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_228560580;
        *(v17 + 56) = type metadata accessor for LegacyGenerationInputSignal();
        *(v17 + 64) = sub_2283EF774(&qword_280DEAF38, 255, type metadata accessor for LegacyGenerationInputSignal, &unk_22856A4F4);
        *(v17 + 32) = v16;
        swift_unknownObjectRelease();
        return v17;
      }

      v13 = v11;
    }

    else if (!v12)
    {
      goto LABEL_11;
    }

LABEL_14:
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_228522A6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = *a1;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    type metadata accessor for LegacyGenerationInputSignal();
    v9 = swift_allocObject();
    v9[2] = a2;
    v9[3] = a3;
    v9[4] = a4;
    v9[5] = a5;
    *a1 = v9;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  *a6 = v9;
}

uint64_t LegacyGenerationProvider.executors(for:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  result = MEMORY[0x277D84F90];
  if (v4 && a1)
  {
    ObjectType = swift_getObjectType();
    v7 = *(v4 + 16);
    v8 = *(v7 + 16);
    swift_unknownObjectRetain();
    v9 = v8(ObjectType, v7);
    if (v9)
    {
      v10 = v9;
      v11 = [v9 profileIdentifier];
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_opt_self() primaryProfile];
    v13 = v12;
    if (v11)
    {
      if (v12)
      {
        sub_228522F1C();
        v14 = sub_22855D9AC();

        if ((v14 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_11:
        sub_22840CB74(0, &qword_280DE8F38, &qword_280DE9E30, MEMORY[0x277D11CB8], 0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_228560580;
        v16 = *(v2 + 16);
        type metadata accessor for LegacyGenerationExecutor();
        v17 = swift_allocObject();
        v17[2] = v16;
        v17[3] = a1;
        v17[4] = v4;
        v18 = sub_2283EF774(qword_280DEB7A0, 255, type metadata accessor for LegacyGenerationExecutor, &unk_2285607EC);
        *(v15 + 32) = v17;
        *(v15 + 40) = v18;

        return v15;
      }

      v13 = v11;
    }

    else if (!v12)
    {
      goto LABEL_11;
    }

LABEL_14:
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t LegacyGenerationProvider.deinit()
{

  return v0;
}

uint64_t LegacyGenerationProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228522DF0()
{
  type metadata accessor for LegacyGenerationProvider.RequestedGenerationState();
  v1 = swift_allocObject();
  sub_2285230D4(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0;
  *(v1 + 16) = v2;
  *(v0 + 16) = v1;
  sub_228523134(0);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = 0;
  *(v0 + 24) = v3;
  sub_2283EF774(qword_280DEB650, v4, type metadata accessor for LegacyGenerationProvider, &protocol conformance descriptor for LegacyGenerationProvider);

  sub_22855C91C();

  return v0;
}

unint64_t sub_228522F1C()
{
  result = qword_280DEE7B0;
  if (!qword_280DEE7B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DEE7B0);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_228523000(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22852305C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_2285230D4(uint64_t a1)
{
  if (!qword_280DE9168)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9168);
    }
  }
}

void sub_228523134(uint64_t a1)
{
  if (!qword_280DE9140)
  {
    sub_22852319C(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9140);
    }
  }
}

void sub_22852319C(uint64_t a1)
{
  if (!qword_280DEAE80)
  {
    type metadata accessor for LegacyGenerationInputSignal();
    v1 = sub_22855DA2C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DEAE80);
    }
  }
}

BOOL PluginFeedItem.hasChanged(from:)(uint64_t a1)
{
  v3 = type metadata accessor for RelevantDateInterval(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228527534(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v85 - v8;
  sub_22845DCB4(0);
  v11 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 != *a1 && (sub_22855E15C() & 1) == 0)
  {
    return 1;
  }

  v14 = *(v1 + 32);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  if (v14 <= 2)
  {
    if (*(v1 + 32))
    {
      if (v14 == 1)
      {
        if (v17 != 1)
        {
          return 1;
        }
      }

      else if (v17 != 2)
      {
        return 1;
      }
    }

    else if (*(a1 + 32))
    {
      return 1;
    }

    goto LABEL_17;
  }

  if (v14 == 3)
  {
    if (v17 != 3)
    {
      return 1;
    }

LABEL_17:
    if ((*(v1 + 16) != v15 || *(v1 + 24) != v16) && (sub_22855E15C() & 1) == 0)
    {
      return 1;
    }

    goto LABEL_23;
  }

  if (v14 == 4)
  {
    if (v17 != 4)
    {
      return 1;
    }

    goto LABEL_17;
  }

  if (v17 != 5 || v16 | v15)
  {
    return 1;
  }

LABEL_23:
  if ((sub_22845C148(*(v1 + 88), *(v1 + 96), *(a1 + 88), *(a1 + 96)) & 1) == 0)
  {
    return 1;
  }

  v18 = type metadata accessor for PluginFeedItem(0);
  v19 = v18[11];
  v20 = *(v11 + 48);
  sub_228457F0C(v1 + v19, v13);
  sub_228457F0C(a1 + v19, &v13[v20]);
  v21 = *(v4 + 48);
  if (v21(v13, 1, v3) == 1)
  {
    if (v21(&v13[v20], 1, v3) == 1)
    {
      sub_22845DD34(v13);
      goto LABEL_27;
    }

LABEL_32:
    sub_228526B54(v13, sub_22845DCB4);
    return 1;
  }

  sub_228457F0C(v13, v9);
  if (v21(&v13[v20], 1, v3) == 1)
  {
    sub_228526B54(v9, type metadata accessor for RelevantDateInterval);
    goto LABEL_32;
  }

  sub_228526BB4(&v13[v20], v6, type metadata accessor for RelevantDateInterval);
  if ((sub_22855BDDC() & 1) == 0 || *&v9[*(v3 + 20)] != *&v6[*(v3 + 20)])
  {
    sub_228526B54(v6, type metadata accessor for RelevantDateInterval);
    sub_228526B54(v9, type metadata accessor for RelevantDateInterval);
    sub_22845DD34(v13);
    return 1;
  }

  v30 = *(v3 + 24);
  v31 = *&v9[v30];
  v32 = *&v6[v30];
  sub_228526B54(v6, type metadata accessor for RelevantDateInterval);
  sub_228526B54(v9, type metadata accessor for RelevantDateInterval);
  sub_22845DD34(v13);
  if (v31 != v32)
  {
    return 1;
  }

LABEL_27:
  v22 = v18[12];
  v23 = v1;
  v24 = *(v1 + v22);
  LOBYTE(v22) = *(a1 + v22);
  v87 = v24;
  v86 = v22;
  v25 = ContentKind.rawValue.getter();
  v27 = v26;
  if (v25 == ContentKind.rawValue.getter() && v27 == v28)
  {

    v29 = v1;
  }

  else
  {
    v33 = sub_22855E15C();

    v29 = v1;
    if ((v33 & 1) == 0)
    {
      return 1;
    }
  }

  v34 = v18[16];
  v35 = (v29 + v34);
  v36 = *(v29 + v34 + 8);
  v37 = (a1 + v34);
  v38 = v37[1];
  if (v36)
  {
    if (!v38 || (*v35 != *v37 || v36 != v38) && (sub_22855E15C() & 1) == 0)
    {
      return 1;
    }
  }

  else if (v38)
  {
    return 1;
  }

  v39 = v18[27];
  v40 = v29 + v39;
  v41 = *(v29 + v39 + 16);
  v42 = (a1 + v39);
  v43 = v42[2];
  if (!v41)
  {
    if (!v43)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

  if (!v43)
  {
LABEL_57:

LABEL_58:

    return 1;
  }

  v85 = *(v40 + 8);
  v44 = v42[1];
  if (*v40)
  {
    v45 = ".pinnedContent.summary";
  }

  else
  {
    v45 = "espiratory";
  }

  v46 = v45 | 0x8000000000000000;
  if (*v42)
  {
    v47 = ".pinnedContent.summary";
  }

  else
  {
    v47 = "espiratory";
  }

  if (v46 == (v47 | 0x8000000000000000))
  {
    swift_bridgeObjectRetain_n();

    goto LABEL_60;
  }

  v48 = sub_22855E15C();
  swift_bridgeObjectRetain_n();

  if ((v48 & 1) == 0)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_58;
  }

LABEL_60:
  if (v85 != v44 || v41 != v43)
  {
    v49 = sub_22855E15C();
    swift_bridgeObjectRelease_n();

    if ((v49 & 1) == 0)
    {
      return 1;
    }

    goto LABEL_66;
  }

  swift_bridgeObjectRelease_n();
LABEL_65:

LABEL_66:
  if ((sub_2284424C4(*(v29 + v18[13]), *(a1 + v18[13])) & 1) == 0 || (sub_228442728(*(v29 + v18[14]), *(a1 + v18[14])) & 1) == 0 || !sub_22843FF48(*(v29 + v18[17]), *(a1 + v18[17])) || (sub_22844230C(*(v29 + v18[18]), *(a1 + v18[18])) & 1) == 0)
  {
    return 1;
  }

  v50 = v18[19];
  v51 = *(a1 + v50);
  if (*(v29 + v50))
  {
    if (!v51)
    {
      return 1;
    }

    sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
    v29 = v23;
    if ((sub_22855D9AC() & 1) == 0)
    {
      return 1;
    }
  }

  else if (v51)
  {
    return 1;
  }

  v52 = v18[20];
  v53 = (v29 + v52);
  v54 = *(v29 + v52 + 8);
  v55 = (a1 + v52);
  v56 = v55[1];
  if (v54)
  {
    if (!v56 || (*v53 != *v55 || v54 != v56) && (sub_22855E15C() & 1) == 0)
    {
      return 1;
    }
  }

  else if (v56)
  {
    return 1;
  }

  v57 = v18[21];
  v58 = (v29 + v57);
  v59 = *(v29 + v57 + 8);
  v60 = (a1 + v57);
  v61 = v60[1];
  if (v59)
  {
    if (!v61)
    {
      return 1;
    }

    v62 = v23;
    if ((*v58 != *v60 || v59 != v61) && (sub_22855E15C() & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
    v62 = v23;
    if (v61)
    {
      return 1;
    }
  }

  v63 = v18[22];
  v64 = (v62 + v63);
  v65 = *(v62 + v63 + 8);
  v66 = (a1 + v63);
  v67 = v66[1];
  if (v65)
  {
    if (!v67)
    {
      return 1;
    }

    v68 = v23;
    if ((*v64 != *v66 || v65 != v67) && (sub_22855E15C() & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
    v68 = v23;
    if (v67)
    {
      return 1;
    }
  }

  if (*(v68 + v18[23]) != *(a1 + v18[23]))
  {
    return 1;
  }

  if (*(v68 + v18[25]) != *(a1 + v18[25]))
  {
    return 1;
  }

  v69 = v18[26];
  v70 = *(v68 + v69);
  if (v70 != 2)
  {
    v71 = *(a1 + v69);
    if (v71 == 2 || ((v71 ^ v70) & 1) != 0)
    {
      return 1;
    }
  }

  v72 = v18[24];
  v73 = *(v68 + v72);
  v74 = *(a1 + v72);
  if (!(v73 == 13 ? v74 == 13 : v73 == v74))
  {
    return 1;
  }

  v76 = v18[29];
  v77 = *(v23 + v76);
  v78 = *(a1 + v76);
  if (v77)
  {
    v79 = 0x656D6F7268436F6ELL;
  }

  else
  {
    v79 = 0x656D6F726863;
  }

  if (v77)
  {
    v80 = 0xE800000000000000;
  }

  else
  {
    v80 = 0xE600000000000000;
  }

  if (v78)
  {
    v81 = 0x656D6F7268436F6ELL;
  }

  else
  {
    v81 = 0x656D6F726863;
  }

  if (v78)
  {
    v82 = 0xE800000000000000;
  }

  else
  {
    v82 = 0xE600000000000000;
  }

  if (v79 == v81 && v80 == v82)
  {
  }

  else
  {
    v83 = sub_22855E15C();

    if ((v83 & 1) == 0)
    {
      return 1;
    }
  }

  return (sub_22844230C(*(v23 + v18[15]), *(a1 + v18[15])) & 1) == 0;
}

uint64_t Array<A>.difference(from:)(uint64_t a1, uint64_t a2)
{
  v122 = a1;
  v4 = type metadata accessor for PluginFeedItem(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v116 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v118 = &v115 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v117 = &v115 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v119 = &v115 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v126 = &v115 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v125 = (&v115 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v131 = &v115 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v129 = &v115 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v115 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = (&v115 - v25);
  v27 = sub_22847D970(MEMORY[0x277D84F90]);
  v28 = *(a2 + 16);
  v123 = v28;
  v124 = v5;
  v120 = a2;
  if (v28)
  {
    v29 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v30 = *(v5 + 72);
    isUniquelyReferenced_nonNull_native = v27;
    v127 = v26;
    v128 = v30;
    while (1)
    {
      sub_22844BBC4(v29, v26);
      v34 = *v26;
      v35 = v26[1];
      v36 = v26;
      v37 = v24;
      sub_22844BBC4(v36, v24);
      v32 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v130 = v32;
      v24 = sub_2283F6D18(v34, v35);
      v39 = *(v32 + 16);
      v40 = (v38 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v2 = v38;
      if (*(v32 + 24) >= v41)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          isUniquelyReferenced_nonNull_native = v130;
          if (v38)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_228449A20();
          isUniquelyReferenced_nonNull_native = v130;
          if (v2)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_22844767C(v41, isUniquelyReferenced_nonNull_native);
        v42 = sub_2283F6D18(v34, v35);
        if ((v2 & 1) != (v43 & 1))
        {
LABEL_121:
          result = sub_22855E1BC();
          __break(1u);
          return result;
        }

        v24 = v42;
        isUniquelyReferenced_nonNull_native = v130;
        if (v2)
        {
LABEL_3:
          v32 = v128;
          v33 = *(isUniquelyReferenced_nonNull_native + 56) + v24 * v128;
          v24 = v37;
          sub_228527438(v37, v33);
          goto LABEL_4;
        }
      }

      *(isUniquelyReferenced_nonNull_native + 8 * (v24 >> 6) + 64) |= 1 << v24;
      v44 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v24);
      *v44 = v34;
      v44[1] = v35;
      v32 = v128;
      v45 = *(isUniquelyReferenced_nonNull_native + 56) + v24 * v128;
      v24 = v37;
      sub_228526BB4(v37, v45, type metadata accessor for PluginFeedItem);
      v46 = *(isUniquelyReferenced_nonNull_native + 16);
      v47 = __OFADD__(v46, 1);
      v39 = v46 + 1;
      if (v47)
      {
        goto LABEL_113;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v39;

LABEL_4:
      v26 = v127;
      sub_228526B54(v127, type metadata accessor for PluginFeedItem);
      v29 += v32;
      if (!--v28)
      {
        goto LABEL_17;
      }
    }
  }

  isUniquelyReferenced_nonNull_native = v27;
LABEL_17:
  v128 = isUniquelyReferenced_nonNull_native;
  v2 = sub_22847D970(MEMORY[0x277D84F90]);
  v48 = *(v122 + 16);
  if (v48)
  {
    v49 = v123;
    v29 = v122 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
    v24 = *(v124 + 72);
    v50 = v129;
    while (1)
    {
      isUniquelyReferenced_nonNull_native = v24;
      sub_22844BBC4(v29, v50);
      v34 = *v50;
      v37 = v50[1];
      sub_22844BBC4(v50, v131);
      v32 = v2;
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v130 = v2;
      v51 = sub_2283F6D18(v34, v37);
      v53 = *(v2 + 16);
      v54 = (v52 & 1) == 0;
      v47 = __OFADD__(v53, v54);
      v39 = v53 + v54;
      if (v47)
      {
        goto LABEL_112;
      }

      v2 = v52;
      if (*(v32 + 24) >= v39)
      {
        if ((v24 & 1) == 0)
        {
          v32 = &v130;
          v58 = v51;
          sub_228449A20();
          v51 = v58;
        }
      }

      else
      {
        sub_22844767C(v39, v24);
        v32 = v130;
        v51 = sub_2283F6D18(v34, v37);
        if ((v2 & 1) != (v55 & 1))
        {
          goto LABEL_121;
        }
      }

      v24 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = v130;
      if (v2)
      {
        v2 = v130;
        sub_228527438(v131, *(v130 + 56) + v51 * v24);
      }

      else
      {
        *(v130 + 8 * (v51 >> 6) + 64) |= 1 << v51;
        v56 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v51);
        *v56 = v34;
        v56[1] = v37;
        sub_228526BB4(v131, *(isUniquelyReferenced_nonNull_native + 56) + v51 * v24, type metadata accessor for PluginFeedItem);
        v57 = *(isUniquelyReferenced_nonNull_native + 16);
        v47 = __OFADD__(v57, 1);
        v39 = v57 + 1;
        if (v47)
        {
          goto LABEL_114;
        }

        v2 = isUniquelyReferenced_nonNull_native;
        *(isUniquelyReferenced_nonNull_native + 16) = v39;
      }

      v50 = v129;
      sub_228526B54(v129, type metadata accessor for PluginFeedItem);
      v29 += v24;
      if (!--v48)
      {
        goto LABEL_31;
      }
    }
  }

  v49 = v123;
LABEL_31:
  v32 = v128;

  isUniquelyReferenced_nonNull_native = sub_22841F43C(v59);

  v61 = sub_22841F43C(v60);
  v29 = v61;
  if (*(isUniquelyReferenced_nonNull_native + 16) != v49)
  {

    v32 = sub_22847DB64(MEMORY[0x277D84F90]);
    if (!v49)
    {
LABEL_55:
      v79 = sub_2285257D0(v32);

      sub_2284A6410();
      swift_allocError();
      *v80 = v79;
      *(v80 + 8) = 0;
      swift_willThrow();
      return v24;
    }

    v63 = v125;
    v131 = (*(v124 + 80) + 32) & ~*(v124 + 80);
    v29 = v120 + v131;
    v129 = *(v124 + 72);
    v34 = v126;
    while (1)
    {
      isUniquelyReferenced_nonNull_native = v49;
      sub_22844BBC4(v29, v63);
      v2 = *v63;
      v24 = v63[1];
      sub_22844BBC4(v63, v34);

      v64 = swift_isUniquelyReferenced_nonNull_native();
      v130 = v32;
      v37 = sub_2283F6D18(v2, v24);
      v39 = *(v32 + 16);
      v66 = (v65 & 1) == 0;
      v67 = v39 + v66;
      if (__OFADD__(v39, v66))
      {
        goto LABEL_116;
      }

      v34 = v65;
      if (*(v32 + 24) >= v67)
      {
        if (v64)
        {
          if ((v65 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          sub_228449884();
          v32 = v130;
          if ((v34 & 1) == 0)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        sub_2284473A8(v67, v64);
        v32 = v130;
        v68 = sub_2283F6D18(v2, v24);
        if ((v34 & 1) != (v69 & 1))
        {
          goto LABEL_121;
        }

        v37 = v68;
        if ((v34 & 1) == 0)
        {
LABEL_48:
          *(v32 + 8 * (v37 >> 6) + 64) |= 1 << v37;
          v70 = (*(v32 + 48) + 16 * v37);
          *v70 = v2;
          v70[1] = v24;
          *(*(v32 + 56) + 8 * v37) = MEMORY[0x277D84F90];
          v71 = *(v32 + 16);
          v47 = __OFADD__(v71, 1);
          v39 = v71 + 1;
          if (v47)
          {
            goto LABEL_118;
          }

          *(v32 + 16) = v39;
          goto LABEL_50;
        }
      }

LABEL_50:
      v72 = *(v32 + 56);
      v73 = *(v72 + 8 * v37);
      v74 = swift_isUniquelyReferenced_nonNull_native();
      *(v72 + 8 * v37) = v73;
      if ((v74 & 1) == 0)
      {
        v73 = sub_228426E04(0, v73[2] + 1, 1, v73);
        *(v72 + 8 * v37) = v73;
      }

      v76 = v73[2];
      v75 = v73[3];
      v24 = v76 + 1;
      if (v76 >= v75 >> 1)
      {
        *(v72 + 8 * v37) = sub_228426E04((v75 > 1), v76 + 1, 1, v73);
      }

      v63 = v125;
      sub_228526B54(v125, type metadata accessor for PluginFeedItem);
      v77 = *(v72 + 8 * v37);
      *(v77 + 16) = v24;
      v78 = v129;
      v34 = v126;
      sub_228526BB4(v126, v77 + v131 + v76 * v129, type metadata accessor for PluginFeedItem);
      v29 += v78;
      v49 = isUniquelyReferenced_nonNull_native - 1;
      if (isUniquelyReferenced_nonNull_native == 1)
      {
        goto LABEL_55;
      }
    }
  }

  if (v49 <= *(v61 + 16) >> 3)
  {
    v130 = v61;

    v32 = &v130;
    sub_2285256A4(isUniquelyReferenced_nonNull_native);
    v37 = v130;
    v34 = *(v130 + 16);
    if (v34)
    {
      goto LABEL_34;
    }

LABEL_57:

    v24 = MEMORY[0x277D84F90];
    goto LABEL_58;
  }

  v37 = sub_2285263AC(isUniquelyReferenced_nonNull_native, v29);
  v34 = *(v37 + 16);
  if (!v34)
  {
    goto LABEL_57;
  }

LABEL_34:
  v32 = sub_22840770C(v34, 0);
  v37 = sub_2284077A8(&v130, (v32 + 32), v34, v37);
  sub_228407958(v130);
  if (v37 != v34)
  {
    goto LABEL_119;
  }

  v24 = sub_22842702C(0, 1, 1, MEMORY[0x277D84F90]);
  v37 = *(v24 + 16);
  v39 = *(v24 + 24);
  v34 = v37 + 1;
  if (v37 >= v39 >> 1)
  {
    goto LABEL_120;
  }

  while (1)
  {
    *(v24 + 16) = v34;
    v62 = v24 + 40 * v37;
    *(v62 + 32) = v32;
    *(v62 + 40) = 0;
    *(v62 + 48) = 0;
    *(v62 + 56) = 0;
    *(v62 + 64) = 32;
LABEL_58:
    if (*(v29 + 16) <= *(isUniquelyReferenced_nonNull_native + 16) >> 3)
    {
      break;
    }

    v34 = sub_2285263AC(v29, isUniquelyReferenced_nonNull_native);

    if (!*(v34 + 16))
    {
      goto LABEL_85;
    }

LABEL_62:
    v131 = v24;
    v24 = v34 + 56;
    v81 = 1 << *(v34 + 32);
    v82 = -1;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    v83 = v82 & *(v34 + 56);
    v84 = (v81 + 63) >> 6;

    v29 = 0;
    v39 = MEMORY[0x277D84F90];
    v129 = MEMORY[0x277D84F90];
    while (v83)
    {
      v39 = v83;
LABEL_71:
      v83 = (v39 - 1) & v39;
      if (*(v128 + 16))
      {
        v86 = (*(v34 + 48) + ((v29 << 10) | (16 * __clz(__rbit64(v39)))));
        v87 = *v86;
        v37 = v86[1];

        v32 = v128;
        v88 = sub_2283F6D18(v87, v37);
        if (v89)
        {
          v90 = *(v128 + 56);
          v127 = *(v124 + 72);
          v91 = v117;
          sub_22844BBC4(v90 + v127 * v88, v117);

          sub_228526BB4(v91, v119, type metadata accessor for PluginFeedItem);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = sub_228426E04(0, *(v129 + 16) + 1, 1, v129);
          }

          v37 = *(v129 + 16);
          v92 = *(v129 + 24);
          v32 = v37 + 1;
          if (v37 >= v92 >> 1)
          {
            v129 = sub_228426E04((v92 > 1), v37 + 1, 1, v129);
          }

          v93 = v129;
          *(v129 + 16) = v32;
          sub_228526BB4(v119, v93 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + v37 * v127, type metadata accessor for PluginFeedItem);
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v85 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v85 >= v84)
      {

        v24 = v131;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_22842702C(0, *(v24 + 16) + 1, 1, v24);
        }

        v95 = *(v24 + 16);
        v94 = *(v24 + 24);
        if (v95 >= v94 >> 1)
        {
          v24 = sub_22842702C((v94 > 1), v95 + 1, 1, v24);
        }

        *(v24 + 16) = v95 + 1;
        v96 = v24 + 40 * v95;
        *(v96 + 32) = v129;
        *(v96 + 40) = 0;
        *(v96 + 48) = 0;
        *(v96 + 56) = 0;
        *(v96 + 64) = 0;
        if (*(v34 + 16) > *(isUniquelyReferenced_nonNull_native + 16) >> 3)
        {
          v32 = sub_2285263AC(v34, isUniquelyReferenced_nonNull_native);

          v97 = v121;
          goto LABEL_86;
        }

        goto LABEL_85;
      }

      v39 = *(v24 + 8 * v85);
      ++v29;
      if (v39)
      {
        v29 = v85;
        goto LABEL_71;
      }
    }

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
    v24 = sub_22842702C((v39 > 1), v34, 1, v24);
  }

  v130 = isUniquelyReferenced_nonNull_native;

  v32 = &v130;
  sub_2285256A4(v29);

  v34 = v130;
  if (*(v130 + 16))
  {
    goto LABEL_62;
  }

LABEL_85:
  v97 = v121;
  v130 = isUniquelyReferenced_nonNull_native;
  sub_2285256A4(v34);

  v32 = v130;
LABEL_86:
  v37 = v128;

  v98 = v97;
  v29 = sub_228526F7C(v32, v37, v2);
  v34 = v98;

  if (*(v29 + 16))
  {
    v131 = v24;
    v24 = v29 + 56;
    v99 = 1 << *(v29 + 32);
    v100 = -1;
    if (v99 < 64)
    {
      v100 = ~(-1 << v99);
    }

    v101 = v100 & *(v29 + 56);
    v2 = (v99 + 63) >> 6;

    v102 = 0;
    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
    while (v101)
    {
      v39 = v101;
LABEL_96:
      v101 = (v39 - 1) & v39;
      if (*(v128 + 16))
      {
        v104 = (*(v29 + 48) + ((v102 << 10) | (16 * __clz(__rbit64(v39)))));
        v105 = *v104;
        v37 = v104[1];

        v32 = v128;
        v106 = sub_2283F6D18(v105, v37);
        if (v107)
        {
          v108 = *(v128 + 56);
          v129 = *(v124 + 72);
          v109 = v116;
          sub_22844BBC4(v108 + v129 * v106, v116);

          sub_228526BB4(v109, v118, type metadata accessor for PluginFeedItem);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_228426E04(0, *(isUniquelyReferenced_nonNull_native + 16) + 1, 1, isUniquelyReferenced_nonNull_native);
          }

          v37 = *(isUniquelyReferenced_nonNull_native + 16);
          v110 = *(isUniquelyReferenced_nonNull_native + 24);
          v32 = v37 + 1;
          if (v37 >= v110 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_228426E04((v110 > 1), v37 + 1, 1, isUniquelyReferenced_nonNull_native);
          }

          *(isUniquelyReferenced_nonNull_native + 16) = v32;
          sub_228526BB4(v118, isUniquelyReferenced_nonNull_native + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + v37 * v129, type metadata accessor for PluginFeedItem);
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v103 = v102 + 1;
      if (__OFADD__(v102, 1))
      {
        goto LABEL_117;
      }

      if (v103 >= v2)
      {

        v24 = v131;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_22842702C(0, *(v24 + 16) + 1, 1, v24);
        }

        v112 = *(v24 + 16);
        v111 = *(v24 + 24);
        if (v112 >= v111 >> 1)
        {
          v24 = sub_22842702C((v111 > 1), v112 + 1, 1, v24);
        }

        *(v24 + 16) = v112 + 1;
        v113 = v24 + 40 * v112;
        *(v113 + 32) = isUniquelyReferenced_nonNull_native;
        *(v113 + 40) = 0;
        *(v113 + 48) = 0;
        *(v113 + 56) = 0;
        *(v113 + 64) = 0;
        return v24;
      }

      v39 = *(v24 + 8 * v103);
      ++v102;
      if (v39)
      {
        v102 = v103;
        goto LABEL_96;
      }
    }
  }

  return v24;
}

uint64_t sub_2285249EC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_22855DB9C();

    if (v6)
    {
      v7 = sub_228524E48(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for EncodedFeatureTag();
  v10 = sub_22855D99C();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_22855D9AC();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_228489CD8();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_228525108(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_228524B74(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_22855DB9C();

    if (v6)
    {
      v7 = sub_228524FA0(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_2283EF310(0, &qword_280DED160, 0x277CBE448);
  v10 = sub_22855D99C();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_22855D9AC();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_228489CF0();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_228525108(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_228524D0C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_22855E22C();
  sub_22855D20C();
  v6 = sub_22855E27C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22855E15C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2284896F4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_2285252A8(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_228524E48(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_22855DB4C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_228485424(v5, v4);
  v15 = v6;

  v7 = sub_22855D99C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for EncodedFeatureTag();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_22855D9AC();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_228525108(v9);
  result = sub_22855D9AC();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_228524FA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_22855DB4C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_228485464(v5, v4);
  v15 = v6;

  v7 = sub_22855D99C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_2283EF310(0, &qword_280DED160, 0x277CBE448);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_22855D9AC();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_228525108(v9);
  result = sub_22855D9AC();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_228525108(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22855DABC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_22855D99C();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2285252A8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22855DABC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_22855E22C();

        sub_22855D20C();
        v10 = sub_22855E27C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void sub_22852546C(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_22855DB4C())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22855DAFC();
    sub_2283EF310(0, &qword_280DED160, 0x277CBE448);
    sub_22844B928(&qword_280DED158, &qword_280DED160, 0x277CBE448);
    sub_22855D56C();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_228407958(a1);
      return;
    }

    while (1)
    {
      v16 = sub_228524B74(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_22855DB8C())
      {
        sub_2283EF310(0, &qword_280DED160, 0x277CBE448);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_2285256A4(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_228524D0C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

unint64_t *sub_2285257D0(uint64_t a1)
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
    result = sub_228525930(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_228525AD8(v8, v4, v2);
  result = MEMORY[0x22AABAD40](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_228525930(unint64_t *result, uint64_t a2, uint64_t a3)
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
    if (*(*(*(a3 + 56) + 8 * v11) + 16) >= 2uLL)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_228525D74(result, a2, v4, a3);
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
      return sub_228525D74(result, a2, v4, a3);
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

unint64_t *sub_228525A20(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_228526C1C(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

unint64_t *sub_228525AD8(unint64_t *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_228525930(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_228525B50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_22844BD10(0);
  result = sub_22855DF6C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v30 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = v4;
    v18 = *(*(v4 + 48) + 8 * v16);
    v19 = *(*(v4 + 56) + 8 * v16);
    v20 = v18;
    v31 = v19;
    result = sub_22855D99C();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      v4 = v17;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    v4 = v17;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 8 * v24) = v20;
    *(*(v9 + 56) + 8 * v24) = v31;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v10 = v30;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v30 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_228525D74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_22852749C(0);
  result = sub_22855DF6C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_22855E22C();

    sub_22855D20C();
    result = sub_22855E27C();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_228525FAC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_228460124();
  result = sub_22855DC2C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_22855E22C();

    sub_22855D20C();
    result = sub_22855E27C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2285261C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_228527598(0);
  result = sub_22855DC2C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_22855D99C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2285263AC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_22855E22C();

    sub_22855D20C();
    v23 = sub_22855E27C();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_22855E15C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_228525FAC(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_22855E22C();

            sub_22855D20C();
            v41 = sub_22855E27C();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_22855E15C() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_22852691C(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x22AABAD40](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_228407958(v13);
    return v5;
  }

  result = MEMORY[0x22AABAD40](v50, -1, -1);
  __break(1u);
  return result;
}

unint64_t *sub_22852691C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_228525FAC(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_22855E22C();

        sub_22855D20C();
        v19 = sub_22855E27C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_22855E15C() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_228526B54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228526BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_228526C1C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a2;
  v56 = a5;
  v46 = a1;
  v7 = type metadata accessor for PluginFeedItem(0);
  v53 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v49 = &v45 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v52 = &v45 - v13;
  result = MEMORY[0x28223BE20](v12);
  v54 = a3;
  v55 = &v45 - v15;
  v16 = 0;
  v19 = *(a3 + 56);
  v18 = a3 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v47 = (v20 + 63) >> 6;
  v48 = 0;
  v51 = a4;
  while (v22)
  {
    v23 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
LABEL_11:
    v26 = v23 | (v16 << 6);
    if (!*(a4 + 16))
    {
      goto LABEL_19;
    }

    v27 = (*(v54 + 48) + 16 * v26);
    v28 = *v27;
    v29 = v27[1];

    v30 = sub_2283F6D18(v28, v29);
    if ((v31 & 1) == 0)
    {
      goto LABEL_18;
    }

    v32 = *(a4 + 56);
    v33 = v52;
    v34 = *(v53 + 72);
    sub_22844BBC4(v32 + v34 * v30, v52);
    sub_228526BB4(v33, v55, type metadata accessor for PluginFeedItem);
    if (*(v56 + 16) && (v35 = sub_2283F6D18(v28, v29), (v36 & 1) != 0))
    {
      v37 = v50;
      sub_22844BBC4(*(v56 + 56) + v35 * v34, v50);
      v38 = v22;
      v39 = v49;
      sub_228526BB4(v37, v49, type metadata accessor for PluginFeedItem);
      v40 = v55;
      v41 = PluginFeedItem.hasChanged(from:)(v39);
      v42 = v39;
      v22 = v38;
      sub_228526B54(v42, type metadata accessor for PluginFeedItem);
      sub_228526B54(v40, type metadata accessor for PluginFeedItem);

      a4 = v51;
      if (v41)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_228526B54(v55, type metadata accessor for PluginFeedItem);
      a4 = v51;
LABEL_18:

LABEL_19:
      *(v46 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v48++, 1))
      {
        __break(1u);
LABEL_22:
        v44 = v54;

        return sub_228525FAC(v46, v45, v48, v44);
      }
    }
  }

  v24 = v16;
  while (1)
  {
    v16 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v16 >= v47)
    {
      goto LABEL_22;
    }

    v25 = *(v18 + 8 * v16);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v22 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228526F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v63 = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for PluginFeedItem(0);
  v60 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v56 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v55 = v49 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v59 = v49 - v14;
  MEMORY[0x28223BE20](v13);
  v61 = v49 - v15;
  v16 = *(a1 + 32);
  v17 = v16 & 0x3F;
  v18 = ((1 << v16) + 63) >> 6;
  v19 = 8 * v18;

  v62 = a3;

  if (v17 > 0xD)
  {
    goto LABEL_26;
  }

  while (2)
  {
    v50 = v18;
    v51 = v4;
    v49[1] = v49;
    MEMORY[0x28223BE20](v20);
    v52 = v49 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v52, v19);
    v4 = 0;
    v21 = a1 + 56;
    v22 = 1 << *(a1 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v19 = v23 & *(a1 + 56);
    v53 = (v22 + 63) >> 6;
    v54 = 0;
    v57 = a2;
    v58 = a1;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_12:
      v27 = v24 | (v4 << 6);
      if (!*(a2 + 16))
      {
        goto LABEL_20;
      }

      v28 = (*(a1 + 48) + 16 * v27);
      v29 = *v28;
      v18 = v28[1];

      v30 = sub_2283F6D18(v29, v18);
      if ((v31 & 1) == 0)
      {
        goto LABEL_19;
      }

      v32 = *(a2 + 56);
      v33 = v59;
      v34 = *(v60 + 72);
      sub_22844BBC4(v32 + v34 * v30, v59);
      sub_228526BB4(v33, v61, type metadata accessor for PluginFeedItem);
      if (*(v62 + 16) && (v35 = sub_2283F6D18(v29, v18), (v36 & 1) != 0))
      {
        v37 = v56;
        sub_22844BBC4(*(v62 + 56) + v35 * v34, v56);
        v38 = v27;
        v39 = v19;
        v40 = v55;
        sub_228526BB4(v37, v55, type metadata accessor for PluginFeedItem);
        v41 = v61;
        v42 = PluginFeedItem.hasChanged(from:)(v40);
        v43 = v40;
        v19 = v39;
        v27 = v38;
        sub_228526B54(v43, type metadata accessor for PluginFeedItem);
        sub_228526B54(v41, type metadata accessor for PluginFeedItem);

        a2 = v57;
        a1 = v58;
        if (v42)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_228526B54(v61, type metadata accessor for PluginFeedItem);
        a2 = v57;
        a1 = v58;
LABEL_19:

LABEL_20:
        *&v52[(v27 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v27;
        if (__OFADD__(v54++, 1))
        {
          __break(1u);
LABEL_23:
          v45 = sub_228525FAC(v52, v50, v54, a1);

          return v45;
        }
      }
    }

    v25 = v4;
    while (1)
    {
      v4 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v4 >= v53)
      {
        goto LABEL_23;
      }

      v26 = *(v21 + 8 * v4);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_26:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v47 = swift_slowAlloc();

  v48 = v62;

  v45 = sub_228525A20(v47, v18, a1, a2, v48);

  MEMORY[0x22AABAD40](v47, -1, -1);

  return v45;
}

uint64_t sub_228527438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginFeedItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22852749C(uint64_t a1)
{
  if (!qword_27D83F578)
  {
    sub_228527534(255, &qword_280DE9630, type metadata accessor for PluginFeedItem, MEMORY[0x277D83940]);
    v1 = sub_22855DF7C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F578);
    }
  }
}

void sub_228527534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228527598(uint64_t a1)
{
  if (!qword_27D83F9A0)
  {
    sub_2283EF310(255, &qword_280DE9320, 0x277CCDA70);
    sub_22844B928(&qword_280DE9318, &qword_280DE9320, 0x277CCDA70);
    v1 = sub_22855DC3C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F9A0);
    }
  }
}

id Feed.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id Feed.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for Feed();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id Feed.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Feed();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static Plugin.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_22852778C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 package];
  v4 = sub_22855D1AC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_2285277E4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 allPluginData];
  type metadata accessor for PluginData();
  sub_2285278D4();
  v4 = sub_22855D51C();

  *a2 = v4;
}

void sub_228527854(uint64_t *a1, void **a2)
{
  v2 = *a2;
  type metadata accessor for PluginData();
  sub_2285278D4();
  v3 = sub_22855D50C();
  [v2 setAllPluginData_];
}

unint64_t sub_2285278D4()
{
  result = qword_27D83FCE0;
  if (!qword_27D83FCE0)
  {
    type metadata accessor for PluginData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FCE0);
  }

  return result;
}

id static SharableModelReference.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2285279A4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SharableModelReference();
  result = sub_22855DC7C();
  *a2 = result;
  return result;
}

char *ContentStateManager.getMostRecentEntry(in:)(unint64_t a1)
{
  v11 = 0;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = sub_22852B28C(v3, a1, &qword_280DE9260, 0x277CCD308);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = v5;
      sub_228528174(&v11, &v10, &v9);

      v4 = v9;
      v11 = v9;
      ++v3;
      if (v7 == i)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return 0;
}

uint64_t ContentStateManager.getEntries<A>(from:decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_22855D3FC();
  sub_2284AD00C(0, &qword_280DE9590, &qword_280DE9260, 0x277CCD308);
  sub_22855D47C();
  sub_22852BDC8(&qword_27D840800, &qword_280DE9590, &qword_280DE9260, 0x277CCD308);
  sub_22855D30C();
  return v8;
}

uint64_t NotificationContentStateManager.createMigrationPublisher(with:identifier:keyValueDomain:dispatchQueue:migrationKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a7;
  v44 = a6;
  v42 = a5;
  v45 = a4;
  v52 = a2;
  v53 = a3;
  v54 = a1;
  v11 = *(a8 - 8);
  v12 = *(v11 + 64);
  v50 = a9;
  MEMORY[0x28223BE20](a1);
  v47 = MEMORY[0x277D85248];
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22852B58C(0, &qword_280DED138, MEMORY[0x277D85248]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - v14;
  sub_22849B450(0);
  v17 = *(v16 - 8);
  v55 = v16;
  v56 = v17;
  MEMORY[0x28223BE20](v16);
  v46 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849B5C0(0);
  v20 = *(v19 - 8);
  v57 = v19;
  v58 = v20;
  MEMORY[0x28223BE20](v19);
  v51 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22855D71C();
  v59 = a5;
  v60 = v22;
  v23 = sub_22855D7EC();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  sub_22852B7D0(0, &qword_280DE97D8, &qword_280DEE380, MEMORY[0x277CC9578], MEMORY[0x277CBCEA8]);
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_2284C949C();
  sub_2283F22E0();
  sub_22855CF4C();
  sub_22852BBBC(v15, &qword_280DED138, v47);

  v24 = v48;
  (*(v11 + 16))(v48, v49, a8);
  v25 = (*(v11 + 80) + 80) & ~*(v11 + 80);
  v26 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v50;
  *(v27 + 2) = a8;
  *(v27 + 3) = v28;
  v29 = v53;
  *(v27 + 4) = v52;
  *(v27 + 5) = v29;
  v30 = v43;
  *(v27 + 6) = v44;
  *(v27 + 7) = v30;
  v31 = v42;
  *(v27 + 8) = v54;
  *(v27 + 9) = v31;
  (*(v11 + 32))(&v27[v25], v24, a8);
  v32 = v45;
  *&v27[v26] = v45;

  v33 = v31;
  v34 = v32;
  sub_22855CCBC();
  v35 = MEMORY[0x277CBCD88];
  sub_2283FF0C0(0, &qword_280DE9888, MEMORY[0x277CBCD88]);
  sub_22852BD00(&qword_280DE9990, sub_22849B450, MEMORY[0x277CBCD60]);
  sub_22852B5E0(&qword_280DE9890, &qword_280DE9888, v35, MEMORY[0x277CBCD90]);
  v36 = v51;
  v37 = v55;
  v38 = v46;
  sub_22855CF2C();

  (*(v56 + 8))(v38, v37);
  sub_22852BD00(&qword_280DE9A18, sub_22849B5C0, MEMORY[0x277CBCCE0]);
  v39 = v57;
  v40 = sub_22855CE6C();
  (*(v58 + 8))(v36, v39);
  return v40;
}

void sub_228528174(char **a1@<X0>, id *a2@<X1>, char **a3@<X8>)
{
  v4 = v3;
  v42 = sub_22855C16C();
  v8 = *(v42 - 8);
  v9 = MEMORY[0x28223BE20](v42);
  v41 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = (&v34 - v11);
  v12 = *a1;
  v13 = [*a2 storageEntries];
  sub_2283EF310(0, &qword_27D83FB18, 0x277CCD300);
  v14 = sub_22855D3AC();

  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_25:

    v17 = 0;
    goto LABEL_26;
  }

LABEL_24:
  v15 = sub_22855DB4C();
  if (!v15)
  {
    goto LABEL_25;
  }

LABEL_3:
  v34 = v12;
  v35 = a3;
  v36 = v4;
  v37 = v15;
  v16 = 0;
  v17 = 0;
  v44 = v14 & 0xC000000000000001;
  v43 = v14 & 0xFFFFFFFFFFFFFF8;
  v38 = v14;
  v39 = v8 + 1;
  do
  {
    if (v44)
    {
      v18 = sub_22852B28C(v16, v14, &qword_27D83FB18, 0x277CCD300);
    }

    else
    {
      if (v16 >= *(v43 + 16))
      {
        goto LABEL_23;
      }

      v18 = *(v14 + 8 * v16 + 32);
    }

    v8 = v18;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v17)
    {
      v20 = [v17 modificationDate];
      a3 = v40;
      sub_22855C13C();

      v21 = [v8 modificationDate];
      v22 = v41;
      sub_22855C13C();

      v4 = sub_22855C11C();
      v23 = *v39;
      v24 = v22;
      v12 = v42;
      (*v39)(v24, v42);
      v23(a3, v12);
      if (v4)
      {

        v17 = v8;
      }

      else
      {
      }

      v15 = v37;
      v14 = v38;
    }

    else
    {
      v17 = v18;
    }

    ++v16;
  }

  while (v19 != v15);

  v25 = v34;
  if (v34 && v17)
  {
    v26 = v34;
    v27 = [v26 modificationDate];
    v28 = v40;
    sub_22855C13C();

    v29 = [v17 modificationDate];
    v30 = v41;
    sub_22855C13C();

    LOBYTE(v29) = sub_22855C11C();
    v31 = *v39;
    v32 = v30;
    v33 = v42;
    (*v39)(v32, v42);
    v31(v28, v33);
    if (v29)
    {

      a3 = v35;
      goto LABEL_26;
    }

    v17 = v25;
  }

  a3 = v35;
LABEL_26:
  *a3 = v17;
}