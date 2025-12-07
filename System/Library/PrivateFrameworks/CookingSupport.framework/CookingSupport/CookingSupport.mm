unint64_t Assembly.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_21A365B50(&qword_27CD24280, &qword_21A3B3EE8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21A3B3530;
  *(v2 + 56) = &type metadata for IntentsAssembly;
  result = sub_21A35F8C8();
  *(v2 + 64) = result;
  *a1 = v2;
  return result;
}

unint64_t sub_21A35F8C8()
{
  result = qword_2811B2868[0];
  if (!qword_2811B2868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B2868);
  }

  return result;
}

uint64_t sub_21A35F924(uint64_t a1)
{
  v2 = sub_21A3B21BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A3B218C();
  sub_21A365B50(&qword_27CD24080, &qword_21A3B32E0);
  sub_21A3B21AC();

  (*(v3 + 104))(v6, *MEMORY[0x277D6CF10], v2);
  sub_21A3B213C();

  (*(v3 + 8))(v6, v2);
  sub_21A3B218C();
  sub_21A365B50(&qword_27CD24088, &qword_21A3B32E8);
  sub_21A3B21AC();

  sub_21A3B256C();
  return sub_21A35FB18(sub_21A35FCB0, a1, "CookingSupport/IntentsAssembly.swift", 36, 2u, 27);
}

uint64_t sub_21A35FB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_21A3B255C();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_21A35FCCC();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_21A3B264C();
    MEMORY[0x21CED89A0](0xD00000000000003FLL, 0x800000021A3BB0D0);
    v12 = sub_21A3B26CC();
    MEMORY[0x21CED89A0](v12);

    MEMORY[0x21CED89A0](46, 0xE100000000000000);
    result = sub_21A3B266C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21A35FCF4(uint64_t a1)
{
  sub_21A3B218C();
  type metadata accessor for AppIntentInvocationMonitor(0);
  sub_21A3B219C();

  sub_21A3B218C();
  type metadata accessor for CookingSupportAppIntentEventHandler(0);
  sub_21A3B21AC();
}

uint64_t type metadata accessor for AppIntentInvocationMonitor(uint64_t a1)
{
  result = qword_2811B2848;
  if (!qword_2811B2848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A35FE00(uint64_t a1)
{
  result = sub_21A3B233C();
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

uint64_t type metadata accessor for CookingSupportAppIntentEventHandler(uint64_t a1)
{
  result = qword_2811B28F0;
  if (!qword_2811B28F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A35FEDC(uint64_t a1)
{
  if (!qword_2811B27A0)
  {
    sub_21A364A10(&qword_27CD243D0, qword_21A3B46D8);
    v1 = sub_21A3B22EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811B27A0);
    }
  }
}

void sub_21A35FF40(uint64_t a1)
{
  sub_21A3B233C();
  if (v1 <= 0x3F)
  {
    sub_21A35FEDC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t AppDependencyManager.addCookingSupportDependencies(from:)(uint64_t a1)
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_21A360380(a1, v16);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  sub_21A360350(v16, v3 + 24);
  sub_21A3B1A8C();
  v4 = sub_21A365B50(&qword_27CD24420, &qword_21A3B47F8);
  MEMORY[0x21CED7D50](&v17, &unk_21A3B47F0, v3, v4);

  sub_21A3603E4(&v17);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_21A360380(a1, v16);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  sub_21A360350(v16, v5 + 24);
  sub_21A3B1A8C();
  v6 = sub_21A365B50(&qword_27CD24080, &qword_21A3B32E0);
  MEMORY[0x21CED7D50](&v17, &unk_21A3B4810, v5, v6);

  sub_21A3603E4(&v17);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_21A360380(a1, v16);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  sub_21A360350(v16, v7 + 24);
  sub_21A3B1A8C();
  v8 = sub_21A365B50(&qword_27CD24430, &qword_21A3B4828);
  MEMORY[0x21CED7D50](&v17, &unk_21A3B4820, v7, v8);

  sub_21A3603E4(&v17);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_21A360380(a1, v16);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  sub_21A360350(v16, v9 + 24);
  sub_21A3B1A8C();
  v10 = sub_21A365B50(&qword_27CD24438, &qword_21A3B4840);
  MEMORY[0x21CED7D50](&v17, &unk_21A3B4838, v9, v10);

  sub_21A3603E4(&v17);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_21A360380(a1, v16);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  sub_21A360350(v16, v11 + 24);
  sub_21A3B1A8C();
  v12 = sub_21A365B50(&qword_27CD24440, &qword_21A3B4858);
  MEMORY[0x21CED7D50](&v17, &unk_21A3B4850, v11, v12);

  sub_21A3603E4(&v17);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_21A360380(a1, v16);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  sub_21A360350(v16, v13 + 24);
  sub_21A3B1A8C();
  v14 = sub_21A365B50(&qword_27CD24448, qword_21A3B4870);
  MEMORY[0x21CED7D50](&v17, &unk_21A3B4868, v13, v14);

  return sub_21A3603E4(&v17);
}

uint64_t sub_21A360350(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21A360380(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21A3603E4(uint64_t a1)
{
  v2 = sub_21A365B50(&qword_27CD24428, &qword_21A3B4800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s9TeaBreeze5ScopeV14CookingSupportE013configureRootc3FordE0yyF_0()
{
  type metadata accessor for CookingSupportAppIntentEventHandler(0);
  sub_21A360514(qword_2811B2900, type metadata accessor for CookingSupportAppIntentEventHandler, &unk_21A3B4718);
  sub_21A3B241C();
  type metadata accessor for AppIntentInvocationMonitor(0);
  sub_21A360514(&qword_2811B2858, type metadata accessor for AppIntentInvocationMonitor, &unk_21A3B478C);

  return sub_21A3B241C();
}

uint64_t sub_21A360514(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21A360578(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A3B233C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21A365B50(&qword_27CD243C8, &unk_21A3B46A0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21A360694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A3B233C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21A365B50(&qword_27CD243C8, &unk_21A3B46A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21A360790()
{
  MEMORY[0x21CED87B0]();
  type metadata accessor for CookingSupportAppIntentEventHandler(0);
  swift_getKeyPath();
  return sub_21A3B22FC();
}

uint64_t sub_21A360818(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A360870(uint64_t a1)
{
  result = sub_21A3B1FFC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CookingSupportAppIntentEventAction(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21A3608F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21A360940(uint64_t a1)
{
  sub_21A3608F4(319, &qword_2811B2C20, MEMORY[0x277CFCDB0]);
  if (v1 <= 0x3F)
  {
    sub_21A3608F4(319, &unk_2811B2C30, sub_21A3609F8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21A3609F8()
{
  if (!qword_2811B2C28)
  {
    v0 = sub_21A3B1DAC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B2C28);
    }
  }
}

uint64_t sub_21A360A94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_21A360AE0(void *a1)
{
  sub_21A360CEC(a1, a1[3]);
  sub_21A365B50(&qword_27CD24080, &qword_21A3B32E0);
  result = sub_21A3B217C();
  if (v16)
  {
    v2 = sub_21A361030(v15, v16);
    MEMORY[0x28223BE20](v2, v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for CookingSupportAppIntentsController();
    v14[3] = v7;
    v14[4] = &off_282B3DB80;
    v14[0] = v6;
    type metadata accessor for AppIntentInvocationMonitor(0);
    v8 = swift_allocObject();
    v9 = sub_21A361030(v14, v7);
    MEMORY[0x28223BE20](v9, v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = sub_21A361080(*v11, v8);
    sub_21A361318(v14);
    sub_21A361318(v15);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21A360CEC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_21A360D30@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21A365B50(&qword_27CD240A0, &qword_21A3B47E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for CookingSupportAppIntentsController();
  v8 = swift_allocObject();
  type metadata accessor for CookingSupportAppIntentInvocation(0);
  sub_21A3B216C();
  sub_21A365B50(&qword_27CD240A8, &qword_21A3B3340);
  v9 = swift_allocObject();
  *(v9 + ((*(*v9 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  result = (*(v3 + 32))(v9 + *(*v9 + *MEMORY[0x277D841D0] + 16), v6, v2);
  *(v8 + 16) = v9;
  a1[3] = v7;
  a1[4] = &off_282B3DB80;
  *a1 = v8;
  return result;
}

uint64_t sub_21A360F28(uint64_t a1)
{
  result = sub_21A3B1FFC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CookingSupportAppIntentAction(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21A360FE4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_21A361030(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_21A361080(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A365B50(&qword_27CD24090, &qword_21A3B4BA0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v14 - v6;
  v15[3] = type metadata accessor for CookingSupportAppIntentsController();
  v15[4] = &off_282B3DB80;
  v15[0] = a1;
  MEMORY[0x21CED87B0]();
  v8 = sub_21A3B258C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_21A360380(v15, v14);
  sub_21A3B256C();
  sub_21A3B1A8C();
  v10 = sub_21A3B255C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  sub_21A360350(v14, (v11 + 4));
  v11[9] = v9;

  sub_21A368C68(0, 0, v7, &unk_21A3B3320, v11);

  sub_21A361318(v15);
  return a2;
}

uint64_t sub_21A361230()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21A361268()
{
  swift_unknownObjectRelease();
  sub_21A361318((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21A3612B0(uint64_t a1)
{
  v2 = sub_21A365B50(&qword_27CD24090, &qword_21A3B4BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A361318(void *a1)
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

uint64_t sub_21A361364(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A36919C;

  return sub_21A36141C(a1, v4);
}

uint64_t sub_21A36141C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21A368F28;

  return v6(a1);
}

uint64_t sub_21A361514(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A3650E8;

  return sub_21A3615D4(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_21A3615D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[14] = type metadata accessor for CookingSupportAppIntentAction(0);
  v5[15] = swift_task_alloc();
  v5[16] = type metadata accessor for CookingSupportAppIntentEventAction(0);
  v5[17] = swift_task_alloc();
  v6 = sub_21A3B1FFC();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = type metadata accessor for CookingSupportAppIntentEvent(0);
  v5[22] = swift_task_alloc();
  v7 = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24408, &qword_21A3B47C8);
  v5[26] = swift_task_alloc();
  v8 = sub_21A365B50(&qword_27CD24410, &qword_21A3B47D0);
  v5[27] = v8;
  v5[28] = *(v8 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = sub_21A3B256C();
  v5[31] = sub_21A3B255C();
  v10 = sub_21A3B253C();
  v5[32] = v10;
  v5[33] = v9;

  return MEMORY[0x2822009F8](sub_21A361858, v10, v9);
}

uint64_t sub_21A361858()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *sub_21A360CEC(*(v0 + 96), *(*(v0 + 96) + 24));
  *(v0 + 80) = sub_21A365B50(&qword_27CD24418, &qword_21A3B47D8);
  *(v0 + 88) = sub_21A361B3C();
  sub_21A361BA0((v0 + 56));
  v5 = *(v4 + 16);
  v6 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v6));
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  sub_21A365B50(&qword_27CD240A0, &qword_21A3B47E0);
  sub_21A3B214C();
  (*(v2 + 8))(v1, v3);
  os_unfair_lock_unlock((v5 + v6));
  v7 = *(v0 + 80);
  v8 = sub_21A360CEC((v0 + 56), v7);
  v9 = *(v7 - 8);
  v10 = swift_task_alloc();
  (*(v9 + 16))(v10, v8, v7);
  *(v0 + 40) = swift_getAssociatedTypeWitness();
  *(v0 + 48) = swift_getAssociatedConformanceWitness();
  sub_21A361BA0((v0 + 16));
  sub_21A3B25BC();

  sub_21A361318((v0 + 56));
  v11 = sub_21A3B255C();
  *(v0 + 272) = v11;
  sub_21A361030(v0 + 16, *(v0 + 40));
  v12 = swift_task_alloc();
  *(v0 + 280) = v12;
  *v12 = v0;
  v12[1] = sub_21A37A8F4;
  v13 = *(v0 + 208);
  v14 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v13, v11, v14);
}

unint64_t sub_21A361B3C()
{
  result = qword_2811B2798;
  if (!qword_2811B2798)
  {
    sub_21A364A10(&qword_27CD24418, &qword_21A3B47D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B2798);
  }

  return result;
}

uint64_t *sub_21A361BA0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_21A361C94(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A3B210C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21A361D40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21A3B210C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A361EB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B1A3C();
  *a1 = result;
  return result;
}

uint64_t sub_21A361EDC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21A361F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A3B1FFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CookingSupportAppIntentAction(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21A362014(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A3B1FFC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CookingSupportAppIntentAction(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21A362164()
{
  v1 = (type metadata accessor for RecipeEntity(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v1[11];
  v6 = sub_21A3B210C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 40, v2 | 7);
}

uint64_t sub_21A3622AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B1A3C();
  *a1 = result;
  return result;
}

uint64_t sub_21A36231C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B1A3C();
  *a1 = result;
  return result;
}

uint64_t sub_21A36238C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B1A3C();
  *a1 = result;
  return result;
}

uint64_t sub_21A362448@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B1A3C();
  *a1 = result;
  return result;
}

uint64_t sub_21A362474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A3B1FFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CookingSupportAppIntentEventAction(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21A362564(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A3B1FFC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CookingSupportAppIntentEventAction(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21A362724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A3B20BC();
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

uint64_t sub_21A3627E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A3B20BC();
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

uint64_t sub_21A3628E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B1A3C();
  *a1 = result;
  return result;
}

uint64_t sub_21A3629C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B1A3C();
  *a1 = result;
  return result;
}

uint64_t sub_21A362A30()
{
  v1 = (type metadata accessor for RecipeEntity(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v1[11];
  v6 = sub_21A3B210C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 40, v2 | 7);
}

uint64_t sub_21A362B78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B1A3C();
  *a1 = result;
  return result;
}

uint64_t sub_21A362BD0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_21A365B50(&qword_27CD24510, &qword_21A3B4EE8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = sub_21A3B243C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = sub_21A3B1F0C();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = sub_21A365B50(&qword_27CD24508, &qword_21A3B4EE0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[10];
    goto LABEL_13;
  }

  v16 = sub_21A3B1F1C();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[13];

  return v17(v18, a2, v16);
}

uint64_t sub_21A362DE4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_21A365B50(&qword_27CD24510, &qword_21A3B4EE8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = sub_21A3B243C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = sub_21A3B1F0C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = sub_21A365B50(&qword_27CD24508, &qword_21A3B4EE0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v16 = sub_21A3B1F1C();
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[13];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_21A363058@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B236C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21A36318C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A3B234C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21A3631E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B23DC();
  *a1 = result;
  return result;
}

uint64_t sub_21A363360(uint64_t a1)
{
  v2 = sub_21A365B50(&qword_27CD24698, &qword_21A3B50C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A3633C8()
{
  sub_21A364A10(&qword_27CD24698, &qword_21A3B50C8);
  sub_21A385644();
  sub_21A3859BC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21A36348C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B1A3C();
  *a1 = result;
  return result;
}

uint64_t sub_21A3634FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B1A3C();
  *a1 = result;
  return result;
}

uint64_t sub_21A36368C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B1A3C();
  *a1 = result;
  return result;
}

uint64_t sub_21A3636FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B1A3C();
  *a1 = result;
  return result;
}

uint64_t sub_21A363728@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B1A3C();
  *a1 = result;
  return result;
}

uint64_t sub_21A363798@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B1A3C();
  *a1 = result;
  return result;
}

uint64_t sub_21A363810@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B1A3C();
  *a1 = result;
  return result;
}

uint64_t sub_21A36386C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3B1A3C();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for RecipeEntity(uint64_t a1)
{
  result = qword_27CD23EF8;
  if (!qword_27CD23EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21A3639C4()
{
  result = qword_27CD23EB0;
  if (!qword_27CD23EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD23EB0);
  }

  return result;
}

uint64_t sub_21A363A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = sub_21A365B50(&qword_27CD23F68, &unk_21A3B2F30);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v33 - v7;
  v9 = sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v33 - v11;
  v13 = sub_21A3B205C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = (&v33 - v20);
  (*(v14 + 16))(v17, a1, v13);
  v34 = a2;
  sub_21A365CB4(a2, v12, &qword_27CD23F70, &unk_21A3B4D70);
  v35 = a1;
  sub_21A3B204C();
  v22 = sub_21A3B1E2C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v8, 1, v22) == 1)
  {
    sub_21A365D1C(v8, &qword_27CD23F68, &unk_21A3B2F30);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v24 = sub_21A3B1E1C();
    v25 = v26;
    (*(v23 + 8))(v8, v22);
  }

  sub_21A363DB8(v17, v12, v24, v25, v21);
  sub_21A365D1C(v34, &qword_27CD23F70, &unk_21A3B4D70);
  (*(v14 + 8))(v35, v13);
  v27 = type metadata accessor for RecipeEntity(0);
  v28 = *(v27 - 8);
  v29 = (*(v28 + 48))(v21, 1, v27);
  v30 = v36;
  if (v29)
  {
    sub_21A365D1C(v21, &qword_27CD23F78, &unk_21A3B2F40);
    v31 = 1;
  }

  else
  {
    sub_21A365B98(v21, v36);
    v31 = 0;
  }

  return (*(v28 + 56))(v30, v31, 1, v27);
}

uint64_t sub_21A363DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v100 = a4;
  v101 = a5;
  v98 = a3;
  v97 = sub_21A3B20CC();
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v7);
  v96 = &v77[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_21A3B212C();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v94 = &v77[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v93 = &v77[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_21A3B20EC();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v92 = &v77[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_21A3B1DDC();
  v19 = *(v18 - 8);
  v104 = v18;
  v105 = v19;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v77[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_21A3B1FFC();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v77[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v77[-v30];
  v32 = sub_21A3B210C();
  v34 = MEMORY[0x28223BE20](v32, v33);
  v99 = &v77[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v77[-v37];
  v40 = v39;
  v42 = v41;
  sub_21A365CB4(a2, v31, &qword_27CD23F70, &unk_21A3B4D70);
  if ((*(v42 + 48))(v31, 1, v40) == 1)
  {

    sub_21A365D1C(a2, &qword_27CD23F70, &unk_21A3B4D70);
    v43 = sub_21A3B205C();
    (*(*(v43 - 8) + 8))(a1, v43);
    sub_21A365D1C(v31, &qword_27CD23F70, &unk_21A3B4D70);
    v44 = type metadata accessor for RecipeEntity(0);
    return (*(*(v44 - 8) + 56))(v101, 1, 1, v44);
  }

  else
  {
    (*(v42 + 32))(v38, v31, v40);
    sub_21A3B200C();
    v86 = sub_21A3B1FEC();
    v85 = v46;
    (*(v24 + 8))(v27, v23);
    v84 = sub_21A3B201C();
    v83 = v47;
    v82 = sub_21A3B1FBC();
    v81 = v48;
    v49 = sub_21A3B203C();
    v88 = a1;
    v87 = a2;
    v90 = v42;
    v91 = v40;
    v89 = v38;
    if (v49)
    {
      v50 = *(v49 + 16);
      if (v50)
      {
        v106 = MEMORY[0x277D84F90];
        v51 = v49;
        sub_21A3AF650(0, v50, 0);
        v52 = v106;
        v103 = *(v105 + 2);
        v53 = (v105[80] + 32) & ~v105[80];
        v80 = v51;
        v54 = v51 + v53;
        v102 = *(v105 + 9);
        v105 += 16;
        v55 = v105 - 8;
        do
        {
          v56 = v104;
          v103(v22, v54, v104);
          v57 = sub_21A3B1DCC();
          v59 = v58;
          (*v55)(v22, v56);
          v106 = v52;
          v61 = *(v52 + 16);
          v60 = *(v52 + 24);
          if (v61 >= v60 >> 1)
          {
            sub_21A3AF650((v60 > 1), v61 + 1, 1);
            v52 = v106;
          }

          *(v52 + 16) = v61 + 1;
          v62 = v52 + 16 * v61;
          *(v62 + 32) = v57;
          *(v62 + 40) = v59;
          v54 += v102;
          --v50;
        }

        while (v50);

        v42 = v90;
        v40 = v91;
        v38 = v89;
      }

      else
      {

        v52 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v52 = 0;
    }

    v63 = *(v42 + 16);
    v104 = v42 + 16;
    v105 = v63;
    (v63)(v99, v38, v40);
    sub_21A365B50(&qword_27CD23F80, &qword_21A3B3730);
    sub_21A3B247C();
    sub_21A3B211C();
    v64 = *MEMORY[0x277CC9110];
    v79 = *(v95 + 104);
    v65 = v96;
    v66 = v97;
    v79(v96, v64, v97);
    sub_21A3B20FC();
    v103 = sub_21A3B19EC();
    v101[2] = v103;
    v95 = sub_21A365B50(&qword_27CD23F88, &qword_21A3B2F50);
    sub_21A3B247C();
    sub_21A3B211C();
    v78 = v64;
    v67 = v79;
    v79(v65, v64, v66);
    sub_21A3B20FC();
    v102 = sub_21A3B19EC();
    v101[3] = v102;
    sub_21A365B50(&qword_27CD23F90, &qword_21A3B2F58);
    sub_21A3B247C();
    sub_21A3B211C();
    v67(v65, v64, v66);
    sub_21A3B20FC();
    v80 = sub_21A3B19EC();
    v68 = v101;
    v101[4] = v80;
    sub_21A3B247C();
    sub_21A3B211C();
    v67(v65, v78, v66);
    sub_21A3B20FC();
    v68[5] = sub_21A3B19EC();
    v69 = v85;
    *v68 = v86;
    v68[1] = v69;
    v70 = v68;
    v71 = type metadata accessor for RecipeEntity(0);
    v72 = v68 + *(v71 + 36);
    v73 = v99;
    v74 = v91;
    (v105)(v72, v99, v91);
    v106 = v84;
    v107 = v83;
    sub_21A3B19DC();
    v106 = v82;
    v107 = v81;
    sub_21A3B19DC();
    v106 = v52;
    sub_21A3B19DC();
    v106 = v98;
    v107 = v100;
    sub_21A3B19DC();
    sub_21A365D1C(v87, &qword_27CD23F70, &unk_21A3B4D70);
    v75 = sub_21A3B205C();
    (*(*(v75 - 8) + 8))(v88, v75);
    v76 = *(v90 + 8);
    v76(v73, v74);
    v76(v89, v74);
    return (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
  }
}

uint64_t sub_21A3647FC@<X0>(void *a1@<X8>)
{
  if (qword_27CD23DE0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *algn_27CD24A78;
  *a1 = qword_27CD24A70;
  a1[1] = v1;
  sub_21A3B1A8C();

  return sub_21A3B1A8C();
}

uint64_t sub_21A364914@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_21A364924@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23DE8 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B1C9C();
  v3 = sub_21A365DC4(v2, qword_27CD24A80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A364A10(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21A364A58(uint64_t a1)
{
  v2 = sub_21A365D7C(&qword_27CD23FB8, type metadata accessor for RecipeEntity, &unk_21A3B2C80);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_21A364B20@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_21A365B50(&qword_27CD23FA0, &unk_21A3B2F60);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v40 = &v36 - v3;
  v37 = sub_21A3B20EC();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v5);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A3B24CC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v38 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v36 - v18;
  sub_21A3B19CC();
  v20 = v43;
  if (v43)
  {
    v21 = v42;
    v42 = 40;
    v43 = 0xE100000000000000;
    MEMORY[0x21CED89A0](v21, v20);

    MEMORY[0x21CED89A0](41, 0xE100000000000000);
    v22 = v42;
    v23 = v43;
    v24 = sub_21A393530(0, 1, 1, MEMORY[0x277D84F90]);
    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_21A393530((v25 > 1), v26 + 1, 1, v24);
    }

    *(v24 + 2) = v26 + 1;
    v27 = &v24[16 * v26];
    *(v27 + 4) = v22;
    *(v27 + 5) = v23;
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  sub_21A3B19CC();
  v28 = v42;
  v29 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_21A393530(0, *(v24 + 2) + 1, 1, v24);
  }

  v31 = *(v24 + 2);
  v30 = *(v24 + 3);
  if (v31 >= v30 >> 1)
  {
    v24 = sub_21A393530((v30 > 1), v31 + 1, 1, v24);
  }

  *(v24 + 2) = v31 + 1;
  v32 = &v24[16 * v31];
  *(v32 + 4) = v28;
  *(v32 + 5) = v29;
  sub_21A3B19CC();
  if (v43)
  {
    sub_21A3B24BC();
    sub_21A3B24AC();
    sub_21A3B249C();

    sub_21A3B24AC();
    sub_21A3B20DC();
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  (*(v4 + 56))(v16, v33, 1, v37);
  sub_21A365BFC(v16, v19);
  sub_21A3B24BC();
  sub_21A3B24AC();
  v42 = v24;
  sub_21A365B50(&qword_27CD23F50, &qword_21A3B2F20);
  sub_21A365C6C(&qword_27CD23FB0, &qword_27CD23F50, &qword_21A3B2F20, MEMORY[0x277D83958]);
  sub_21A3B245C();

  sub_21A3B249C();

  sub_21A3B24AC();
  sub_21A3B20DC();
  sub_21A365CB4(v19, v38, &qword_27CD23FA8, &unk_21A3B4410);
  v34 = sub_21A3B1BBC();
  (*(*(v34 - 8) + 56))(v40, 1, 1, v34);
  sub_21A3B1BCC();
  return sub_21A365D1C(v19, &qword_27CD23FA8, &unk_21A3B4410);
}

uint64_t sub_21A365024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21A3650E8;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_21A3650E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21A3651DC(uint64_t a1)
{
  v2 = sub_21A365D7C(&qword_27CD23ED0, type metadata accessor for RecipeEntity, &unk_21A3B2E30);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_21A365274()
{
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  sub_21A3B18EC();
  sub_21A3B18DC();
  v0 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  sub_21A3B18DC();
  result = sub_21A3B188C();
  qword_27CD24A70 = v0;
  *algn_27CD24A78 = result;
  return result;
}

uint64_t sub_21A365334()
{
  v0 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = v17 - v2;
  v17[0] = sub_21A3B20CC();
  v4 = *(v17[0] - 8);
  MEMORY[0x28223BE20](v17[0], v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A3B212C();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = sub_21A3B20EC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v15 = sub_21A3B1C9C();
  sub_21A365DFC(v15, qword_27CD24A80);
  sub_21A365DC4(v15, qword_27CD24A80);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_21A3B20FC();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_21A3B1C8C();
}

uint64_t sub_21A365608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for RecipeEntity(0) + 36);
  v5 = sub_21A3B210C();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_21A365684(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A3B210C();
  v5 = sub_21A365D7C(&qword_27CD23F98, MEMORY[0x277CC9260], MEMORY[0x277CC4AE0]);

  return MEMORY[0x282114A88](sub_21A365608, 0, a1, v4, a2, v5);
}

__n128 sub_21A365734(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21A365740(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A365760(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_21A3657C8(uint64_t a1)
{
  sub_21A3658E8(319);
  if (v1 <= 0x3F)
  {
    sub_21A3659C8(319, &qword_27CD23F18, &qword_27CD23F20, "^<", sub_21A365998);
    if (v2 <= 0x3F)
    {
      sub_21A3659C8(319, &qword_27CD23F30, &qword_27CD23F38, &qword_21A3B2F18, sub_21A365A38);
      if (v3 <= 0x3F)
      {
        sub_21A3B210C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21A3658E8(uint64_t a1)
{
  if (!qword_27CD23F08)
  {
    sub_21A365944();
    v1 = sub_21A3B1A0C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD23F08);
    }
  }
}

unint64_t sub_21A365944()
{
  result = qword_27CD23F10;
  if (!qword_27CD23F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD23F10);
  }

  return result;
}

void sub_21A3659C8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_21A364A10(a3, a4);
    a5();
    v7 = sub_21A3B1A0C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21A365A38()
{
  result = qword_27CD23F40;
  if (!qword_27CD23F40)
  {
    sub_21A364A10(&qword_27CD23F38, &qword_21A3B2F18);
    sub_21A365AE8(&qword_27CD23F48, &qword_27CD23F50, &qword_21A3B2F20, MEMORY[0x277CBA540]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD23F40);
  }

  return result;
}

uint64_t sub_21A365AE8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_21A364A10(a2, a3);
    sub_21A365944();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A365B50(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21A365B98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A365BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A365C6C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_21A364A10(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A365CB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_21A365B50(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21A365D1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_21A365B50(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21A365D7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21A365DC4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_21A365DFC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_21A365E6C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A365E8C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_21A365EC0()
{
  result = qword_27CD23FD0;
  if (!qword_27CD23FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD23FD0);
  }

  return result;
}

unint64_t sub_21A365F18()
{
  result = qword_27CD23FD8;
  if (!qword_27CD23FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD23FD8);
  }

  return result;
}

uint64_t sub_21A365FBC()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A3B212C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_21A3B20EC();
  sub_21A365DFC(v9, qword_27CD24A98);
  sub_21A365DC4(v9, qword_27CD24A98);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A3661E8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for RecipeEntity(0);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3662AC, 0, 0);
}

uint64_t sub_21A3662AC()
{
  v11 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v0[13] = *(v1 + 8);
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v3 = sub_21A3B21DC();
  v4 = sub_21A3B25EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_21A3AF0A8(0xD000000000000014, 0x800000021A3B30E0, &v10);
    _os_log_impl(&dword_21A35E000, v3, v4, "Will perform intent: %{public}s", v5, 0xCu);
    sub_21A361318(v6);
    MEMORY[0x21CED8F60](v6, -1, -1);
    MEMORY[0x21CED8F60](v5, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21A3664E0;
  v8 = v0[12];

  return sub_21A39542C(v8);
}

uint64_t sub_21A3664E0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_21A366834;
  }

  else
  {
    v2 = sub_21A3665F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_21A3665F4()
{
  v1 = v0[15];
  v2 = v0[10];
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();

  sub_21A3B1FDC();
  sub_21A3B187C();
  v3 = *sub_21A360CEC(v0 + 2, v0[5]);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = *(v3 + 16);
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_21A367634;
  *(v6 + 24) = v4;
  v7 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v8));
  sub_21A36763C(v5 + v7);
  if (v1)
  {

    os_unfair_lock_unlock((v5 + v8));
  }

  else
  {
    v9 = v0[12];
    v10 = v0[10];
    os_unfair_lock_unlock((v5 + v8));

    sub_21A361318(v0 + 2);
    sub_21A367658(&qword_27CD23EC8, &unk_21A3B2DD0);
    sub_21A3B19BC();
    sub_21A36769C(v9, type metadata accessor for RecipeEntity);
    sub_21A36769C(v10, type metadata accessor for CookingSupportAppIntentInvocation);

    v11 = v0[1];

    v11();
  }
}

uint64_t sub_21A366834()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A3668A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23DF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24A98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A366960(uint64_t a1, uint64_t a2)
{
  v2 = sub_21A365B50(&qword_27CD24038, &qword_21A3B3158);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_21A365B50(&qword_27CD24040, &qword_21A3B3160);
  MEMORY[0x28223BE20](v4, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD24048, &unk_21A3B3190);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A366AFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_21A366BA8;

  return sub_21A3661E8(a1);
}

uint64_t sub_21A366BA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_21A366C9C@<D0>(uint64_t a1@<X8>)
{
  sub_21A366E3C(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21A366D4C(uint64_t a1)
{
  v2 = sub_21A3675E0();

  return MEMORY[0x28210B538](a1, v2);
}

__n128 sub_21A366D88(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21A366D9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21A366DE4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21A366E3C@<X0>(uint64_t *a1@<X8>)
{
  v51 = a1;
  v1 = sub_21A3B1C4C();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v48 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v47 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v45 = v44 - v9;
  v10 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v44[0] = v44 - v12;
  v13 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v52 = v44 - v15;
  v16 = sub_21A3B20CC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21A3B212C();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v23 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v23 - 8, v24);
  v25 = sub_21A3B20EC();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v44[1] = v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v29 = *MEMORY[0x277CC9110];
  v30 = *(v17 + 104);
  v30(v20, v29, v16);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v30(v20, v29, v16);
  v31 = v52;
  sub_21A3B20FC();
  (*(v26 + 56))(v31, 0, 1, v25);
  v32 = type metadata accessor for RecipeEntity(0);
  (*(*(v32 - 8) + 56))(v44[0], 1, 1, v32);
  v33 = sub_21A3B19AC();
  v34 = *(*(v33 - 8) + 56);
  v34(v45, 1, 1, v33);
  v34(v47, 1, 1, v33);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v53 = 0u;
  v54 = 0u;
  v55 = 0;
  sub_21A3B18DC();
  v35 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v36 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v37 = sub_21A3B188C();
  *&v53 = v35;
  *(&v53 + 1) = v36;
  *&v54 = v37;
  (*(v49 + 104))(v48, *MEMORY[0x277CBA308], v50);
  sub_21A36758C();
  sub_21A367658(&qword_27CD23FB8, &unk_21A3B2C80);
  v38 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v39 = sub_21A3B188C();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v40 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v41 = sub_21A3B188C();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v43 = v51;
  *v51 = v38;
  v43[1] = v39;
  v43[2] = v40;
  v43[3] = v41;
  v43[4] = result;
  return result;
}

unint64_t sub_21A36758C()
{
  result = qword_27CD24018;
  if (!qword_27CD24018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24018);
  }

  return result;
}

unint64_t sub_21A3675E0()
{
  result = qword_27CD24030;
  if (!qword_27CD24030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24030);
  }

  return result;
}

uint64_t sub_21A367658(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RecipeEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A36769C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A3676FC()
{
  v0 = sub_21A3B21FC();
  sub_21A365DFC(v0, qword_27CD24AB0);
  sub_21A365DC4(v0, qword_27CD24AB0);
  return sub_21A3B21EC();
}

unint64_t sub_21A36777C()
{
  result = qword_27CD24050;
  if (!qword_27CD24050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24050);
  }

  return result;
}

unint64_t sub_21A3677D4()
{
  result = qword_27CD23EC8;
  if (!qword_27CD23EC8)
  {
    type metadata accessor for RecipeEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD23EC8);
  }

  return result;
}

unint64_t sub_21A367830()
{
  result = qword_27CD24058;
  if (!qword_27CD24058)
  {
    sub_21A364A10(&qword_27CD24060, qword_21A3B31A0);
    sub_21A3677D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24058);
  }

  return result;
}

uint64_t sub_21A3678B4(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  sub_21A365B50(&qword_27CD23F68, &unk_21A3B2F30);
  v2[14] = swift_task_alloc();
  v3 = sub_21A3B1FFC();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v4 = sub_21A3B1E4C();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24068, &qword_21A3B3290);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80);
  v2[26] = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v5 = type metadata accessor for RecipeEntity(0);
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24078, &qword_21A3B3298);
  v2[32] = swift_task_alloc();
  v6 = sub_21A3B205C();
  v2[33] = v6;
  v2[34] = *(v6 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v7 = sub_21A3B1DEC();
  v2[39] = v7;
  v2[40] = *(v7 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A367C94, 0, 0);
}

uint64_t sub_21A367C94(uint64_t a1)
{
  sub_21A3B187C();
  v3 = v1[5];
  v2 = v1[6];
  sub_21A360CEC(v1 + 2, v3);
  v4 = swift_task_alloc();
  v1[43] = v4;
  *v4 = v1;
  v4[1] = sub_21A367D58;

  return MEMORY[0x28214FA60](v3, v2);
}

uint64_t sub_21A367D58(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v4 = sub_21A3687C8;
  }

  else
  {
    v4 = sub_21A367E6C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A367E6C()
{
  v1 = v0[44];
  sub_21A361318(v0 + 2);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[40];
    v4 = v0[34];
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v0[44] + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v92 = *(v3 + 56);
    v94 = v5;
    v88 = (v4 + 56);
    v90 = (v3 - 8);
    v84 = v4;
    v86 = (v4 + 32);
    v7 = v0[45];
    v78 = MEMORY[0x277D84F90];
    do
    {
      v11 = v0[41];
      v10 = v0[42];
      v12 = v0[39];
      v94(v10, v6, v12);
      v94(v11, v10, v12);
      sub_21A3B1F8C();
      v13 = v7;
      v14 = v0[42];
      v15 = v0[39];
      if (v13)
      {
        v9 = v0[32];
        v8 = v0[33];

        (*v90)(v14, v15);
        (*v88)(v9, 1, 1, v8);
        sub_21A365D1C(v9, &qword_27CD24078, &qword_21A3B3298);
      }

      else
      {
        v16 = v0[37];
        v18 = v0[32];
        v17 = v0[33];
        (*v90)(v0[42], v0[39]);
        (*v88)(v18, 0, 1, v17);
        v19 = *v86;
        (*v86)(v16, v18, v17);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v20 = v78;
        }

        else
        {
          v20 = sub_21A393664(0, v78[2] + 1, 1, v78);
        }

        v22 = v20[2];
        v21 = v20[3];
        if (v22 >= v21 >> 1)
        {
          v20 = sub_21A393664((v21 > 1), v22 + 1, 1, v20);
        }

        v23 = v0[37];
        v24 = v0[33];
        v20[2] = v22 + 1;
        v78 = v20;
        v19(v20 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v22, v23, v24);
      }

      v7 = 0;
      v6 += v92;
      --v2;
    }

    while (v2);

    v25 = v78;
    v26 = v78[2];
    if (v26)
    {
      goto LABEL_13;
    }

LABEL_33:

    v32 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v25 = MEMORY[0x277D84F90];
  v26 = *(MEMORY[0x277D84F90] + 16);
  if (!v26)
  {
    goto LABEL_33;
  }

LABEL_13:
  v27 = v0[34];
  v28 = *(v27 + 16);
  v27 += 16;
  v93 = v28;
  v29 = v25 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
  v30 = v0[21];
  v77 = (v30 + 48);
  v71 = (v30 + 32);
  v69 = (v30 + 8);
  v70 = (v30 + 16);
  v75 = (v27 - 8);
  v76 = (v0[16] + 8);
  v31 = v0[30];
  v68 = v31;
  v73 = (v31 + 56);
  v74 = (v31 + 48);
  v32 = MEMORY[0x277D84F90];
  v72 = *(v27 + 56);
  do
  {
    v87 = v29;
    v89 = v26;
    v34 = v0[24];
    v33 = v0[25];
    v35 = v0[20];
    v93(v0[38]);
    sub_21A3B202C();
    sub_21A365CB4(v33, v34, &qword_27CD24068, &qword_21A3B3290);
    v36 = (*v77)(v34, 1, v35);
    v37 = v0[25];
    v38 = v0[26];
    v91 = v32;
    if (v36 == 1)
    {
      sub_21A365D1C(v37, &qword_27CD24068, &qword_21A3B3290);
      v39 = sub_21A3B1EBC();
      (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
    }

    else
    {
      v40 = v0[23];
      v41 = v0[22];
      v42 = v0[20];
      (*v71)(v40, v0[24], v42);
      (*v70)(v41, v40, v42);
      sub_21A3B1EAC();
      (*v69)(v40, v42);
      sub_21A365D1C(v37, &qword_27CD24068, &qword_21A3B3290);
    }

    v43 = v0[36];
    v81 = v0[33];
    v82 = v0[35];
    v80 = v0[19];
    v44 = v0[17];
    v79 = v0[15];
    v83 = v0[18];
    v85 = v0[14];
    (v93)(v43, v0[38]);
    sub_21A3B187C();
    sub_21A360CEC(v0 + 7, v0[10]);
    sub_21A3B200C();
    sub_21A3B1FEC();
    (*v76)(v44, v79);
    sub_21A3B1E6C();

    (v93)(v82, v43, v81);
    sub_21A365CB4(v80, v83, &qword_27CD23F70, &unk_21A3B4D70);
    sub_21A3B204C();
    v45 = sub_21A3B1E2C();
    v46 = *(v45 - 8);
    if ((*(v46 + 48))(v85, 1, v45) == 1)
    {
      sub_21A365D1C(v0[14], &qword_27CD23F68, &unk_21A3B2F30);
      v47 = 0;
      v48 = 0;
    }

    else
    {
      v49 = v0[14];
      v47 = sub_21A3B1E1C();
      v48 = v50;
      (*(v46 + 8))(v49, v45);
    }

    v51 = v0[38];
    v52 = v0[36];
    v53 = v0[33];
    v54 = v0[29];
    v56 = v0[26];
    v55 = v0[27];
    v57 = v0[19];
    sub_21A363DB8(v0[35], v0[18], v47, v48, v55);
    sub_21A365D1C(v57, &qword_27CD23F70, &unk_21A3B4D70);
    v58 = *v75;
    (*v75)(v52, v53);
    sub_21A365D1C(v56, &qword_27CD24070, &unk_21A3B4D80);
    v58(v51, v53);
    v59 = *v74;
    if ((*v74)(v55, 1, v54))
    {
      sub_21A365D1C(v0[27], &qword_27CD23F78, &unk_21A3B2F40);
      v60 = 1;
    }

    else
    {
      sub_21A365B98(v0[27], v0[28]);
      v60 = 0;
    }

    v61 = v0[28];
    v62 = v0[29];
    (*v73)(v61, v60, 1, v62);
    sub_21A361318(v0 + 7);
    if (v59(v61, 1, v62) == 1)
    {
      sub_21A365D1C(v0[28], &qword_27CD23F78, &unk_21A3B2F40);
      v32 = v91;
    }

    else
    {
      sub_21A365B98(v0[28], v0[31]);
      v32 = v91;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_21A39363C(0, v91[2] + 1, 1, v91);
      }

      v64 = v32[2];
      v63 = v32[3];
      if (v64 >= v63 >> 1)
      {
        v32 = sub_21A39363C((v63 > 1), v64 + 1, 1, v32);
      }

      v65 = v0[31];
      v32[2] = v64 + 1;
      sub_21A365B98(v65, v32 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v64);
    }

    v29 = &v87[v72];
    v26 = v89 - 1;
  }

  while (v89 != 1);

LABEL_34:

  v66 = v0[1];

  return v66(v32);
}

uint64_t sub_21A3687C8()
{
  sub_21A361318((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A368924(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_21A3689C0;

  return sub_21A3678B4(v3, v4);
}

uint64_t sub_21A3689C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_21A368AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A3650E8;

  return MEMORY[0x28210C148](a1, a2, a3);
}

__n128 sub_21A368B88(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21A368B94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21A368BDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21A368C38@<X0>(void *a1@<X8>)
{
  result = sub_21A369148();
  *a1 = &type metadata for AppEntityIdentifierProvider;
  a1[1] = result;
  return result;
}

uint64_t sub_21A368C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_21A365B50(&qword_27CD24090, &qword_21A3B4BA0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_21A369020(a3, v26 - v11);
  v13 = sub_21A3B258C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_21A3B1A8C();
  if (v15 == 1)
  {
    sub_21A3612B0(v12);
  }

  else
  {
    sub_21A3B257C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_21A3B253C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_21A3B24FC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;
      sub_21A3B1A8C();
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_21A3612B0(a3);

      return v24;
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

  sub_21A3612B0(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_21A368F28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21A369020(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A365B50(&qword_27CD24090, &qword_21A3B4BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A369090(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A3650E8;

  return sub_21A36141C(a1, v4);
}

unint64_t sub_21A369148()
{
  result = qword_27CD24098;
  if (!qword_27CD24098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24098);
  }

  return result;
}

unint64_t sub_21A3691A4()
{
  result = qword_27CD240B0;
  if (!qword_27CD240B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD240B0);
  }

  return result;
}

unint64_t sub_21A3691FC()
{
  result = qword_27CD240B8;
  if (!qword_27CD240B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD240B8);
  }

  return result;
}

uint64_t sub_21A369298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_21A365B50(&qword_27CD23F68, &unk_21A3B2F30);
  v3[15] = swift_task_alloc();
  v4 = sub_21A3B1FFC();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v5 = sub_21A3B1E4C();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24068, &qword_21A3B3290);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80);
  v3[27] = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v6 = type metadata accessor for RecipeEntity(0);
  v3[30] = v6;
  v3[31] = *(v6 - 8);
  v3[32] = swift_task_alloc();
  v7 = sub_21A3B205C();
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3695D0, 0, 0);
}

uint64_t sub_21A3695D0(uint64_t a1)
{
  sub_21A3B187C();
  v2 = v1[5];
  v3 = v1[6];
  sub_21A360CEC(v1 + 2, v2);
  v4 = swift_task_alloc();
  v1[38] = v4;
  *v4 = v1;
  v4[1] = sub_21A369698;
  v5 = v1[12];

  return MEMORY[0x28214FA48](v5, v2, v3);
}

uint64_t sub_21A369698(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v4 = sub_21A369E9C;
  }

  else
  {
    v4 = sub_21A3697AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A3697AC()
{
  v1 = v0[39];
  sub_21A361318(v0 + 2);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[34];
    v4 = *(v3 + 16);
    v3 += 16;
    v64 = v4;
    v5 = v0[39] + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v6 = v0[22];
    v54 = (v6 + 48);
    v48 = (v6 + 32);
    v46 = (v6 + 8);
    v47 = (v6 + 16);
    v52 = (v3 - 8);
    v53 = (v0[17] + 8);
    v7 = v0[31];
    v45 = v7;
    v50 = (v7 + 56);
    v55 = MEMORY[0x277D84F90];
    v49 = *(v3 + 56);
    v51 = (v7 + 48);
    do
    {
      v62 = v5;
      v63 = v2;
      v9 = v0[25];
      v8 = v0[26];
      v10 = v0[21];
      v64(v0[37]);
      sub_21A3B202C();
      sub_21A365CB4(v8, v9, &qword_27CD24068, &qword_21A3B3290);
      v11 = (*v54)(v9, 1, v10);
      v13 = v0[26];
      v12 = v0[27];
      if (v11 == 1)
      {
        sub_21A365D1C(v0[26], &qword_27CD24068, &qword_21A3B3290);
        v14 = sub_21A3B1EBC();
        (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
      }

      else
      {
        v15 = v0[24];
        v16 = v0[23];
        v17 = v0[21];
        (*v48)(v15, v0[25], v17);
        (*v47)(v16, v15, v17);
        sub_21A3B1EAC();
        (*v46)(v15, v17);
        sub_21A365D1C(v13, &qword_27CD24068, &qword_21A3B3290);
      }

      v18 = v0[36];
      v58 = v0[33];
      v59 = v0[35];
      v57 = v0[20];
      v60 = v0[19];
      v19 = v0[18];
      v56 = v0[16];
      v61 = v0[15];
      (v64)(v18, v0[37]);
      sub_21A3B187C();
      sub_21A360CEC(v0 + 7, v0[10]);
      sub_21A3B200C();
      sub_21A3B1FEC();
      (*v53)(v19, v56);
      sub_21A3B1E6C();

      (v64)(v59, v18, v58);
      sub_21A365CB4(v57, v60, &qword_27CD23F70, &unk_21A3B4D70);
      sub_21A3B204C();
      v20 = sub_21A3B1E2C();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v61, 1, v20) == 1)
      {
        sub_21A365D1C(v0[15], &qword_27CD23F68, &unk_21A3B2F30);
        v22 = 0;
        v23 = 0;
      }

      else
      {
        v24 = v0[15];
        v22 = sub_21A3B1E1C();
        v23 = v25;
        (*(v21 + 8))(v24, v20);
      }

      v27 = v0[36];
      v26 = v0[37];
      v28 = v0[33];
      v29 = v0[30];
      v31 = v0[27];
      v30 = v0[28];
      v32 = v0[20];
      sub_21A363DB8(v0[35], v0[19], v22, v23, v30);
      sub_21A365D1C(v32, &qword_27CD23F70, &unk_21A3B4D70);
      v33 = *v52;
      (*v52)(v27, v28);
      sub_21A365D1C(v31, &qword_27CD24070, &unk_21A3B4D80);
      v33(v26, v28);
      v34 = *v51;
      if ((*v51)(v30, 1, v29))
      {
        sub_21A365D1C(v0[28], &qword_27CD23F78, &unk_21A3B2F40);
        v35 = 1;
      }

      else
      {
        sub_21A365B98(v0[28], v0[29]);
        v35 = 0;
      }

      v36 = v0[29];
      v37 = v0[30];
      (*v50)(v36, v35, 1, v37);
      sub_21A361318(v0 + 7);
      if (v34(v36, 1, v37) == 1)
      {
        sub_21A365D1C(v0[29], &qword_27CD23F78, &unk_21A3B2F40);
      }

      else
      {
        sub_21A365B98(v0[29], v0[32]);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v38 = v55;
        }

        else
        {
          v38 = sub_21A39363C(0, v55[2] + 1, 1, v55);
        }

        v40 = v38[2];
        v39 = v38[3];
        if (v40 >= v39 >> 1)
        {
          v38 = sub_21A39363C((v39 > 1), v40 + 1, 1, v38);
        }

        v41 = v0[32];
        v38[2] = v40 + 1;
        v55 = v38;
        sub_21A365B98(v41, v38 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v40);
      }

      v5 = v62 + v49;
      v2 = v63 - 1;
    }

    while (v63 != 1);

    v42 = v55;
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
  }

  v43 = v0[1];

  return v43(v42);
}

uint64_t sub_21A369E9C()
{
  v16 = v0;
  sub_21A361318(v0 + 2);
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[40];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v3 = v1;
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v4 = sub_21A3B21DC();
  v5 = sub_21A3B25DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[40];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 138543618;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v11;
    *v8 = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_21A3AF0A8(0x7551657069636552, 0xEB00000000797265, &v15);
    _os_log_impl(&dword_21A35E000, v4, v5, "Unable to hydrate due to error: %{public}@, for: %{public}s", v7, 0x16u);
    sub_21A365D1C(v8, &qword_27CD240D0, &qword_21A3B3920);
    MEMORY[0x21CED8F60](v8, -1, -1);
    sub_21A361318(v9);
    MEMORY[0x21CED8F60](v9, -1, -1);
    MEMORY[0x21CED8F60](v7, -1, -1);
  }

  v12 = v0[40];
  sub_21A3B18BC();
  sub_21A36A72C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
  swift_allocError();
  sub_21A3B18AC();
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_21A36A1E8@<X0>(uint64_t *a1@<X8>)
{
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  sub_21A3B18EC();
  sub_21A3B18DC();
  v2 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  sub_21A3B18DC();
  result = sub_21A3B188C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_21A36A2AC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21A36A774;

  return sub_21A369298(a1, v5, v4);
}

uint64_t sub_21A36A354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A3650E8;

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t sub_21A36A408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21A36A4C8;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_21A36A4C8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_21A36A5CC()
{
  result = qword_27CD240C0;
  if (!qword_27CD240C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD240C0);
  }

  return result;
}

uint64_t sub_21A36A668(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_21A3639C4();
  *v5 = v2;
  v5[1] = sub_21A36919C;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_21A36A72C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21A36A788@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for RecipeEntity(0);
  sub_21A3B1FEC();
  sub_21A36AAA8(&qword_27CD23FB8, type metadata accessor for RecipeEntity, &unk_21A3B2C80);
  sub_21A3B1A5C();
  v2 = sub_21A3B1A6C();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t sub_21A36A85C@<X0>(uint64_t a1@<X8>)
{
  sub_21A3B1D4C();
  sub_21A36AA54();
  sub_21A3B1A5C();
  v2 = sub_21A3B1A6C();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t sub_21A36A8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A3B20BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InstructionEntity(0);
  (*(v5 + 16))(v8, a1, v4);
  sub_21A36AAA8(&qword_27CD240D8, type metadata accessor for InstructionEntity, &unk_21A3B41E0);
  sub_21A3B1A5C();
  v9 = sub_21A3B1A6C();
  return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
}

unint64_t sub_21A36AA54()
{
  result = qword_27CD240E0;
  if (!qword_27CD240E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD240E0);
  }

  return result;
}

uint64_t sub_21A36AAA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21A36AAF4()
{
  result = qword_27CD240E8;
  if (!qword_27CD240E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD240E8);
  }

  return result;
}

unint64_t sub_21A36AB4C()
{
  result = qword_27CD240F0;
  if (!qword_27CD240F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD240F0);
  }

  return result;
}

uint64_t sub_21A36ABE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v7 = swift_task_alloc();
  v4[14] = v7;
  *v7 = v4;
  v7[1] = sub_21A36AC8C;

  return sub_21A36E364(a3, a4);
}

uint64_t sub_21A36AC8C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = a2;
  v3[15] = a2;

  return MEMORY[0x2822009F8](sub_21A36AD94, 0, 0);
}

uint64_t sub_21A36AD94(uint64_t a1)
{
  v2 = v1[15];
  if (v2)
  {
    v3 = v1[8];
    sub_21A3B187C();
    v4 = v1[5];
    v5 = v1[6];
    sub_21A360CEC(v1 + 2, v4);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v6 = swift_allocObject();
    v1[16] = v6;
    *(v6 + 16) = xmmword_21A3B3530;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
    v7 = swift_task_alloc();
    v1[17] = v7;
    *v7 = v1;
    v7[1] = sub_21A36AF20;

    return MEMORY[0x28214FA48](v6, v4, v5);
  }

  else
  {
    v8 = v1[10];
    v9 = sub_21A3B205C();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v1[1];

    return v10();
  }
}

uint64_t sub_21A36AF20(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_21A36B198;
  }

  else
  {

    v4 = sub_21A36B03C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A36B03C()
{
  v1 = v0[18];
  if (*(v1 + 16))
  {
    v2 = v0[10];
    v3 = sub_21A3B205C();
    v4 = *(v3 - 8);
    (*(v4 + 16))(v2, v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

    v5 = 0;
  }

  else
  {

    v3 = sub_21A3B205C();
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[10], v5, 1, v3);
  sub_21A361318(v0 + 2);
  v6 = v0[1];

  return v6();
}

uint64_t sub_21A36B198()
{
  v18 = v0;

  sub_21A361318(v0 + 2);
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v3 = v1;
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v4 = sub_21A3B21DC();
  v5 = sub_21A3B25DC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[19];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 138543618;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v12;
    *v9 = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_21A3AF0A8(0xD000000000000010, 0x800000021A3B36C0, &v17);
    _os_log_impl(&dword_21A35E000, v4, v5, "Unable to hydrate due to error: %{public}@, for: %{public}s", v8, 0x16u);
    sub_21A365D1C(v9, &qword_27CD240D0, &qword_21A3B3920);
    MEMORY[0x21CED8F60](v9, -1, -1);
    sub_21A361318(v10);
    MEMORY[0x21CED8F60](v10, -1, -1);
    MEMORY[0x21CED8F60](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[10];
  v14 = sub_21A3B205C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = v0[1];

  return v15();
}

uint64_t sub_21A36B428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = sub_21A365B50(&qword_27CD24120, &unk_21A3B3700);
  v4[4] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24078, &qword_21A3B3298);
  v8 = swift_task_alloc();
  v4[5] = v8;
  v9 = sub_21A3B205C();
  v4[6] = v9;
  v4[7] = *(v9 - 8);
  v4[8] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[9] = v10;
  *v10 = v4;
  v10[1] = sub_21A36B5B4;

  return sub_21A36ABE8(v8, a2, a3, a4);
}

uint64_t sub_21A36B5B4()
{

  return MEMORY[0x2822009F8](sub_21A36B6B0, 0, 0);
}

uint64_t sub_21A36B6B0()
{
  v23 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21A365D1C(v3, &qword_27CD24078, &qword_21A3B3298);
    v4 = MEMORY[0x277D84F90];
LABEL_9:

    v21 = v0[1];

    return v21(v4);
  }

  (*(v2 + 32))(v0[8], v3, v1);

  v6 = sub_21A3B11AC(v5);

  result = sub_21A3B1FAC();
  v8 = result;
  v4 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v9 = *(result + 16);
  if (!v9)
  {
LABEL_8:
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];

    (*(v19 + 8))(v18, v20);
    goto LABEL_9;
  }

  v10 = 0;
  v11 = v0[3];
  while (v10 < *(v8 + 16))
  {
    v12 = v0[4];
    v13 = sub_21A3B1D8C();
    v14 = *(v13 - 8);
    v15 = *(v14 + 16);
    v16 = v8 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v10;
    v17 = *(v11 + 48);
    *v12 = v10;
    v15(v12 + v17, v16, v13);
    sub_21A36B940(&v22, v12, v6);
    ++v10;
    result = sub_21A365D1C(v0[4], &qword_27CD24120, &unk_21A3B3700);
    if (v9 == v10)
    {
      v4 = v22;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A36B940(uint64_t *a1, void (**a2)(char *, uint64_t), uint64_t a3)
{
  v149 = a2;
  v120 = a1;
  v142 = sub_21A3B208C();
  v104 = *(v142 - 8);
  MEMORY[0x28223BE20](v142, v4);
  v141 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_21A3B20CC();
  v148 = *(v119 - 8);
  MEMORY[0x28223BE20](v119, v6);
  v111 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A3B212C();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v110 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v109 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21A3B20EC();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v108 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for InstructionEntity(0);
  v107 = *(v118 - 8);
  v18 = MEMORY[0x28223BE20](v118, v17);
  v117 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v116 = &v100 - v21;
  v150 = sub_21A3B20BC();
  v122 = *(v150 - 8);
  v23 = MEMORY[0x28223BE20](v150, v22);
  v121 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v145 = &v100 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v151 = &v100 - v29;
  v30 = sub_21A3B1F7C();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v138 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_21A365B50(&qword_27CD24138, &unk_21A3B4EA0);
  v147 = *(v136 - 8);
  MEMORY[0x28223BE20](v136, v34);
  v124 = (&v100 - v35);
  v36 = sub_21A365B50(&qword_27CD24130, &qword_21A3B3720);
  v38 = MEMORY[0x28223BE20](v36 - 8, v37);
  v40 = &v100 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v41);
  v135 = &v100 - v42;
  v43 = sub_21A365B50(&qword_27CD24120, &unk_21A3B3700);
  v44 = v43 - 8;
  MEMORY[0x28223BE20](v43, v45);
  v47 = (&v100 - v46);
  v48 = sub_21A3B1D8C();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v50);
  v52 = &v100 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A36E174(v149, v47);
  v132 = *v47;
  v53 = *(v44 + 56);
  v101 = v49;
  v54 = *(v49 + 32);
  v102 = v48;
  v54(v52, v47 + v53, v48);
  v100 = v52;
  result = sub_21A3B1D7C();
  v56 = result;
  v57 = 0;
  v58 = *(result + 16);
  v123 = v31 + 16;
  v133 = (v147 + 48);
  v134 = (v147 + 56);
  v131 = (v31 + 32);
  v147 = a3 + 56;
  v146 = v122 + 16;
  v149 = (v122 + 8);
  v59 = v136;
  v139 = (v104 + 8);
  v140 = v104 + 16;
  v154 = *MEMORY[0x277CC9110];
  v106 = (v148 + 104);
  v105 = "used in intents.";
  v125 = v31;
  v126 = (v31 + 8);
  v103 = a3;
  v130 = v30;
  v129 = v40;
  v128 = result;
  v127 = v58;
  while (1)
  {
    if (v57 == v58)
    {
      v60 = 1;
      v137 = v58;
      goto LABEL_9;
    }

    if ((v57 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v57 >= *(v56 + 16))
    {
      goto LABEL_31;
    }

    v61 = v57 + 1;
    v62 = v125;
    v63 = v56 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v57;
    v64 = *(v59 + 48);
    v65 = v124;
    *v124 = v57;
    (*(v62 + 16))(v65 + v64, v63, v30);
    sub_21A36E9B0(v65, v40, &qword_27CD24138, &unk_21A3B4EA0);
    v60 = 0;
    v137 = v61;
LABEL_9:
    v66 = v135;
    (*v134)(v40, v60, 1, v59);
    sub_21A36E9B0(v40, v66, &qword_27CD24130, &qword_21A3B3720);
    if ((*v133)(v66, 1, v59) == 1)
    {
      (*(v101 + 8))(v100, v102);
    }

    v67 = *v66;
    (*v131)(v138, &v66[*(v59 + 48)], v30);
    sub_21A3B209C();
    if (*(a3 + 16) && (sub_21A36EA18(&qword_27CD24168, MEMORY[0x277CFCDB0], MEMORY[0x277CFCDB8]), v68 = sub_21A3B244C(), v69 = -1 << *(a3 + 32), v70 = v68 & ~v69, ((*(v147 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) != 0))
    {
      v71 = ~v69;
      v72 = *(v122 + 72);
      v148 = *(v122 + 16);
      while (1)
      {
        v73 = v145;
        v74 = v150;
        (v148)(v145, *(a3 + 48) + v72 * v70, v150);
        sub_21A36EA18(&qword_27CD24170, MEMORY[0x277CFCDB0], MEMORY[0x277CFCDC0]);
        v75 = sub_21A3B246C();
        v76 = *v149;
        (*v149)(v73, v74);
        if (v75)
        {
          break;
        }

        v70 = (v70 + 1) & v71;
        if (((*(v147 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
        {
          goto LABEL_2;
        }
      }

      result = (v148)(v121, v151, v150);
      if (__OFADD__(v67, 1))
      {
        goto LABEL_32;
      }

      v115 = v67 + 1;
      v77 = sub_21A3B1F6C();
      v78 = *(v77 + 16);
      if (v78)
      {
        v152 = MEMORY[0x277D84F90];
        sub_21A3AF650(0, v78, 0);
        v79 = v152;
        v80 = (*(v104 + 80) + 32) & ~*(v104 + 80);
        v114 = v77;
        v81 = v77 + v80;
        v82 = *(v104 + 72);
        v143 = *(v104 + 16);
        v144 = v82;
        do
        {
          v83 = v141;
          v84 = v142;
          v143(v141, v81, v142);
          v85 = sub_21A3B207C();
          v87 = v86;
          (*v139)(v83, v84);
          v152 = v79;
          v89 = *(v79 + 16);
          v88 = *(v79 + 24);
          if (v89 >= v88 >> 1)
          {
            sub_21A3AF650((v88 > 1), v89 + 1, 1);
            v79 = v152;
          }

          *(v79 + 16) = v89 + 1;
          v90 = v79 + 16 * v89;
          *(v90 + 32) = v85;
          *(v90 + 40) = v87;
          v81 += v144;
          --v78;
        }

        while (v78);

        a3 = v103;
      }

      else
      {

        v79 = MEMORY[0x277D84F90];
      }

      v152 = v79;
      sub_21A365B50(&qword_27CD23F50, &qword_21A3B2F20);
      sub_21A36E238();
      v91 = sub_21A3B245C();
      v143 = v92;
      v144 = v91;

      v112 = *(v118 + 20);
      sub_21A365B50(&qword_27CD24148, &qword_21A3B3728);
      sub_21A3B247C();
      sub_21A3B211C();
      v113 = *v106;
      v93 = v111;
      v113(v111, v154, v119);
      sub_21A3B20FC();
      v114 = sub_21A3B19FC();
      v94 = v116;
      *(v116 + v112) = v114;
      v112 = *(v118 + 24);
      sub_21A365B50(&qword_27CD23F80, &qword_21A3B3730);
      sub_21A3B247C();
      sub_21A3B211C();
      v113(v93, v154, v119);
      sub_21A3B20FC();
      *(v94 + v112) = sub_21A3B19EC();
      v95 = v121;
      v96 = v150;
      (v148)(v94, v121, v150);
      v152 = v115;
      sub_21A3B19DC();
      v152 = v144;
      v153 = v143;
      sub_21A3B19DC();
      v76(v95, v96);
      sub_21A36E29C(v94, v117);
      v97 = *v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v97 = sub_21A39368C(0, v97[2] + 1, 1, v97);
      }

      v30 = v130;
      v59 = v136;
      v40 = v129;
      v99 = v97[2];
      v98 = v97[3];
      if (v99 >= v98 >> 1)
      {
        v97 = sub_21A39368C((v98 > 1), v99 + 1, 1, v97);
      }

      v76(v151, v150);
      (*v126)(v138, v30);
      v97[2] = v99 + 1;
      sub_21A36E300(v117, v97 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v99);
      *v120 = v97;
      result = sub_21A36E950(v116, type metadata accessor for InstructionEntity);
    }

    else
    {
LABEL_2:
      (*v149)(v151, v150);
      v30 = v130;
      result = (*v126)(v138, v130);
      v59 = v136;
      v40 = v129;
    }

    v56 = v128;
    v58 = v127;
    v57 = v137;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21A36C888@<X0>(uint64_t *a1@<X8>)
{
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  sub_21A3B18EC();
  sub_21A3B18DC();
  v2 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  sub_21A3B18DC();
  v3 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24178, &qword_21A3B3790);
  swift_getKeyPath();
  result = sub_21A3B1C7C();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = result;
  return result;
}

uint64_t sub_21A36C97C(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A36A774;

  return sub_21A36B428(a1, v4, v5, v6);
}

unint64_t sub_21A36CA30()
{
  result = qword_27CD240F8;
  if (!qword_27CD240F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD240F8);
  }

  return result;
}

unint64_t sub_21A36CAD0()
{
  result = qword_27CD24108;
  if (!qword_27CD24108)
  {
    sub_21A364A10(&qword_27CD24110, qword_21A3B4D90);
    sub_21A36EA18(&qword_27CD24100, type metadata accessor for InstructionEntity, &unk_21A3B4330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24108);
  }

  return result;
}

uint64_t sub_21A36CB84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_21A36CC3C();
  *v5 = v2;
  v5[1] = sub_21A36919C;

  return MEMORY[0x28210B618](a1, a2, v6);
}

unint64_t sub_21A36CC3C()
{
  result = qword_27CD24118;
  if (!qword_27CD24118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24118);
  }

  return result;
}

uint64_t sub_21A36CC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = sub_21A365B50(&qword_27CD24120, &unk_21A3B3700);
  v5[5] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24078, &qword_21A3B3298);
  v9 = swift_task_alloc();
  v5[6] = v9;
  v10 = sub_21A3B205C();
  v5[7] = v10;
  v5[8] = *(v10 - 8);
  v5[9] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[10] = v11;
  *v11 = v5;
  v11[1] = sub_21A36CE1C;

  return sub_21A36ABE8(v9, a3, a4, a5);
}

uint64_t sub_21A36CE1C()
{

  return MEMORY[0x2822009F8](sub_21A36CF18, 0, 0);
}

uint64_t sub_21A36CF18()
{
  v23 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21A365D1C(v3, &qword_27CD24078, &qword_21A3B3298);
    v4 = MEMORY[0x277D84F90];
LABEL_9:

    v21 = v0[1];

    return v21(v4);
  }

  (*(v2 + 32))(v0[9], v3, v1);
  result = sub_21A3B1FAC();
  v6 = result;
  v4 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v7 = *(result + 16);
  if (!v7)
  {
LABEL_8:
    v19 = v0[8];
    v18 = v0[9];
    v20 = v0[7];

    (*(v19 + 8))(v18, v20);
    goto LABEL_9;
  }

  v8 = 0;
  v9 = v0[4];
  while (v8 < *(v6 + 16))
  {
    v10 = v0[5];
    v12 = v0[2];
    v11 = v0[3];
    v13 = sub_21A3B1D8C();
    v14 = *(v13 - 8);
    v15 = *(v14 + 16);
    v16 = v6 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v8;
    v17 = *(v9 + 48);
    *v10 = v8;
    v15(&v10[v17], v16, v13);
    sub_21A36D18C(&v22, v10, v12, v11);
    ++v8;
    result = sub_21A365D1C(v0[5], &qword_27CD24120, &unk_21A3B3700);
    if (v7 == v8)
    {
      v4 = v22;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A36D18C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v138 = a3;
  v139 = a4;
  v143 = a2;
  v118 = a1;
  v111 = sub_21A3B20CC();
  v141 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v4);
  v110 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_21A3B212C();
  v140 = *(v137 - 8);
  MEMORY[0x28223BE20](v137, v6);
  v109 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v108 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21A3B20EC();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v107 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for InstructionEntity(0);
  v105 = *(v106 - 8);
  v15 = MEMORY[0x28223BE20](v106, v14);
  v117 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v116 = &v100 - v18;
  v19 = sub_21A365B50(&qword_27CD24128, &qword_21A3B3718);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v136 = &v100 - v21;
  v144 = sub_21A3B208C();
  v22 = *(v144 - 8);
  v24 = MEMORY[0x28223BE20](v144, v23);
  v132 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v134 = &v100 - v27;
  v129 = sub_21A3B20BC();
  v128 = *(v129 - 8);
  v29 = MEMORY[0x28223BE20](v129, v28);
  v120 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v131 = &v100 - v32;
  v33 = sub_21A3B1F7C();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v35);
  v130 = &v100 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_21A365B50(&qword_27CD24130, &qword_21A3B3720);
  v39 = MEMORY[0x28223BE20](v37 - 8, v38);
  v126 = &v100 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v41);
  v43 = (&v100 - v42);
  v44 = sub_21A365B50(&qword_27CD24120, &unk_21A3B3700);
  v45 = v44 - 8;
  MEMORY[0x28223BE20](v44, v46);
  v48 = (&v100 - v47);
  v49 = sub_21A3B1D8C();
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v51);
  v53 = &v100 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A36E174(v143, v48);
  v125 = *v48;
  v54 = *(v45 + 56);
  v101 = v50;
  v55 = *(v50 + 32);
  v102 = v49;
  v55(v53, v48 + v54, v49);
  v100 = v53;
  v56 = sub_21A3B1D7C();
  v124 = (v34 + 32);
  v135 = v22;
  v142 = v22 + 8;
  v143 = v22 + 16;
  v133 = (v140 + 56);
  v119 = (v128 + 2);
  v150 = 0;
  v151 = 0;
  v104 = (v141 + 104);
  v149 = v56;
  v152 = *MEMORY[0x277CC9110];
  v103 = "used in intents.";
  ++v128;
  v121 = (v34 + 8);
  v123 = v33;
  v122 = v43;
LABEL_3:
  while (1)
  {
    v57 = v126;
    sub_21A380F2C(v126);
    sub_21A36E9B0(v57, v43, &qword_27CD24130, &qword_21A3B3720);
    v58 = sub_21A365B50(&qword_27CD24138, &unk_21A3B4EA0);
    if ((*(*(v58 - 8) + 48))(v43, 1, v58) == 1)
    {
      break;
    }

    v59 = *v43;
    (*v124)(v130, v43 + *(v58 + 48), v33);
    v127 = v59;
    sub_21A3B209C();
    result = sub_21A3B1F6C();
    v61 = 0;
    v140 = *(result + 16);
    v141 = result;
    do
    {
      if (v140 == v61)
      {

        (*v128)(v131, v129);
        v33 = v123;
        (*v121)(v130, v123);
        v43 = v122;
        goto LABEL_3;
      }

      if (v61 >= *(v141 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      v62 = v134;
      v63 = v135;
      v64 = (*(v135 + 80) + 32) & ~*(v135 + 80);
      v65 = *(v135 + 72);
      v66 = *(v135 + 16);
      v67 = v144;
      v66(v134, v141 + v64 + v65 * v61++, v144);
      v68 = sub_21A3B207C();
      v70 = v69;
      v71 = *(v63 + 8);
      v71(v62, v67);
      v147 = v68;
      v148 = v70;
      v145 = v138;
      v146 = v139;
      v72 = v136;
      (*v133)(v136, 1, 1, v137);
      sub_21A36E1E4();
      sub_21A3B260C();
      LOBYTE(v68) = v73;
      sub_21A365D1C(v72, &qword_27CD24128, &qword_21A3B3718);
    }

    while ((v68 & 1) != 0);

    v74 = *v119;
    result = (*v119)(v120, v131, v129);
    if (__OFADD__(v127, 1))
    {
      goto LABEL_23;
    }

    v115 = v127 + 1;
    v127 = v74;
    v75 = sub_21A3B1F6C();
    v76 = *(v75 + 16);
    if (v76)
    {
      v147 = MEMORY[0x277D84F90];
      sub_21A3AF650(0, v76, 0);
      v77 = v147;
      v114 = v75;
      v78 = v75 + v64;
      do
      {
        v79 = v132;
        v80 = v144;
        v66(v132, v78, v144);
        v81 = sub_21A3B207C();
        v140 = v82;
        v141 = v81;
        v71(v79, v80);
        v147 = v77;
        v84 = *(v77 + 16);
        v83 = *(v77 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_21A3AF650((v83 > 1), v84 + 1, 1);
          v77 = v147;
        }

        *(v77 + 16) = v84 + 1;
        v85 = v77 + 16 * v84;
        v86 = v140;
        *(v85 + 32) = v141;
        *(v85 + 40) = v86;
        v78 += v65;
        --v76;
      }

      while (v76);
    }

    else
    {

      v77 = MEMORY[0x277D84F90];
    }

    v147 = v77;
    sub_21A365B50(&qword_27CD23F50, &qword_21A3B2F20);
    sub_21A36E238();
    v87 = sub_21A3B245C();
    v140 = v88;
    v141 = v87;

    v89 = v106;
    v112 = *(v106 + 20);
    sub_21A365B50(&qword_27CD24148, &qword_21A3B3728);
    sub_21A3B247C();
    sub_21A3B211C();
    v113 = *v104;
    v90 = v110;
    v91 = v111;
    v113(v110, v152, v111);
    sub_21A3B20FC();
    v114 = sub_21A3B19FC();
    v92 = v116;
    *(v116 + v112) = v114;
    v93 = *(v89 + 24);
    sub_21A365B50(&qword_27CD23F80, &qword_21A3B3730);
    sub_21A3B247C();
    sub_21A3B211C();
    v113(v90, v152, v91);
    sub_21A3B20FC();
    *(v92 + v93) = sub_21A3B19EC();
    v94 = v120;
    v95 = v129;
    v127(v92, v120, v129);
    v147 = v115;
    sub_21A3B19DC();
    v147 = v141;
    v148 = v140;
    sub_21A3B19DC();
    v96 = *v128;
    (*v128)(v94, v95);
    sub_21A36E29C(v92, v117);
    v97 = *v118;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v97 = sub_21A39368C(0, v97[2] + 1, 1, v97);
    }

    v33 = v123;
    v43 = v122;
    v99 = v97[2];
    v98 = v97[3];
    if (v99 >= v98 >> 1)
    {
      v97 = sub_21A39368C((v98 > 1), v99 + 1, 1, v97);
    }

    v96(v131, v129);
    (*v121)(v130, v33);
    v97[2] = v99 + 1;
    sub_21A36E300(v117, v97 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v99);
    *v118 = v97;
    sub_21A36E950(v116, type metadata accessor for InstructionEntity);
  }

  return (*(v101 + 8))(v100, v102);
}

uint64_t sub_21A36E004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_21A3689C0;

  return sub_21A36CC90(a2, a3, v7, v8, v9);
}

__n128 sub_21A36E0C8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21A36E0DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21A36E124(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21A36E174(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A365B50(&qword_27CD24120, &unk_21A3B3700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A36E1E4()
{
  result = qword_27CD24140;
  if (!qword_27CD24140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24140);
  }

  return result;
}

unint64_t sub_21A36E238()
{
  result = qword_27CD23FB0;
  if (!qword_27CD23FB0)
  {
    sub_21A364A10(&qword_27CD23F50, &qword_21A3B2F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD23FB0);
  }

  return result;
}

uint64_t sub_21A36E29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstructionEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A36E300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstructionEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A36E364(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_21A3B1FFC();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  v2[12] = swift_task_alloc();
  type metadata accessor for RecipeEntity(0);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A36E488, 0, 0);
}

uint64_t sub_21A36E488()
{
  if (sub_21A3B1C6C())
  {
    v1 = v0[13];
    swift_getKeyPath();
    sub_21A36E89C();
    sub_21A3B1A7C();

    v2 = *v1;
    v3 = v1[1];

    sub_21A36E950(v1, type metadata accessor for RecipeEntity);

    v4 = v0[1];

    return v4(v2, v3);
  }

  else
  {
    sub_21A3B187C();
    v6 = v0[5];
    v7 = v0[6];
    sub_21A360CEC(v0 + 2, v6);
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_21A36E618;
    v9 = v0[12];

    return MEMORY[0x28214F8F0](v9, v6, v7);
  }
}

uint64_t sub_21A36E618()
{

  return MEMORY[0x2822009F8](sub_21A36E714, 0, 0);
}

uint64_t sub_21A36E714()
{
  v1 = v0[12];
  v2 = sub_21A3B1D3C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_21A361318(v0 + 2);
    sub_21A365D1C(v1, &qword_27CD24158, &qword_21A3B3750);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    sub_21A3B1D2C();
    (*(v3 + 8))(v1, v2);
    v4 = sub_21A3B1FEC();
    v5 = v9;
    (*(v7 + 8))(v6, v8);
    sub_21A361318(v0 + 2);
  }

  v10 = v0[1];

  return v10(v4, v5);
}

unint64_t sub_21A36E89C()
{
  result = qword_27CD24160;
  if (!qword_27CD24160)
  {
    sub_21A364A10(&qword_27CD23F78, &unk_21A3B2F40);
    sub_21A36EA18(&qword_27CD23EC8, type metadata accessor for RecipeEntity, &unk_21A3B2DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24160);
  }

  return result;
}

uint64_t sub_21A36E950(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A36E9B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_21A365B50(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_21A36EA18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21A36EADC()
{
  result = qword_27CD24180;
  if (!qword_27CD24180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24180);
  }

  return result;
}

unint64_t sub_21A36EB30()
{
  result = qword_27CD24188;
  if (!qword_27CD24188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24188);
  }

  return result;
}

unint64_t sub_21A36EB88()
{
  result = qword_27CD24190;
  if (!qword_27CD24190)
  {
    sub_21A364A10(&qword_27CD24198, qword_21A3B3810);
    sub_21A36EB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24190);
  }

  return result;
}

uint64_t sub_21A36EC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v8 = sub_21A3B20CC();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  sub_21A3B212C();
  v4[19] = swift_task_alloc();
  sub_21A3B24DC();
  v4[20] = swift_task_alloc();
  sub_21A3B20EC();
  v4[21] = swift_task_alloc();
  v9 = sub_21A3B1D6C();
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();
  v10 = sub_21A3B205C();
  v4[25] = v10;
  v4[26] = *(v10 - 8);
  v4[27] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[28] = v11;
  *v11 = v4;
  v11[1] = sub_21A36EE58;

  return sub_21A36F9E8(a2, a3, a4);
}

uint64_t sub_21A36EE58(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = a2;
  v3[29] = a2;

  return MEMORY[0x2822009F8](sub_21A36EF60, 0, 0);
}

uint64_t sub_21A36EF60(uint64_t a1)
{
  v2 = v1[29];
  if (v2)
  {
    v3 = v1[8];
    sub_21A3B187C();
    v4 = v1[5];
    v5 = v1[6];
    sub_21A360CEC(v1 + 2, v4);
    sub_21A365B50(&qword_27CD24150, &unk_21A3B3740);
    v6 = swift_allocObject();
    v1[30] = v6;
    *(v6 + 16) = xmmword_21A3B3530;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
    v7 = swift_task_alloc();
    v1[31] = v7;
    *v7 = v1;
    v7[1] = sub_21A36F0F0;

    return MEMORY[0x28214FA48](v6, v4, v5);
  }

  else
  {

    v8 = v1[1];
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }
}

uint64_t sub_21A36F0F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v4 = sub_21A36F59C;
  }

  else
  {

    v4 = sub_21A36F20C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A36F20C()
{
  v1 = v0[32];
  if (!*(v1 + 16))
  {

    sub_21A361318(v0 + 2);
LABEL_10:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  (*(v0[26] + 16))(v0[27], v1 + ((*(v0[26] + 80) + 32) & ~*(v0[26] + 80)), v0[25]);

  sub_21A361318(v0 + 2);
  v2 = sub_21A3B1F9C();
  v3 = *(v2 + 16);
  if (!v3)
  {
    v21 = v0[26];
    v20 = v0[27];
    v22 = v0[25];

    (*(v21 + 8))(v20, v22);
    goto LABEL_10;
  }

  v4 = v0[23];
  v5 = v0[17];
  v35 = MEMORY[0x277D84F90];
  sub_21A3AF670(0, v3, 0);
  sub_21A365B50(&qword_27CD23F80, &qword_21A3B3730);
  v6 = v35;
  v7 = *(v4 + 16);
  v4 += 16;
  v29 = v7;
  v8 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
  v28 = *(v4 + 56);
  v27 = *MEMORY[0x277CC9110];
  v25 = (v4 - 8);
  v26 = (v5 + 104);
  do
  {
    v34 = v3;
    v9 = v0[24];
    v32 = v0[22];
    v10 = v0[18];
    v11 = v0[16];
    v29(v9, v8);
    v33 = sub_21A3B1D4C();
    v13 = v12;
    v14 = sub_21A3B1D5C();
    v30 = v15;
    v31 = v14;
    sub_21A3B247C();
    sub_21A3B211C();
    (*v26)(v10, v27, v11);
    sub_21A3B20FC();
    v16 = sub_21A3B19EC();
    v0[10] = v31;
    v0[11] = v30;
    sub_21A3B1A8C();

    sub_21A3B19DC();
    (*v25)(v9, v32);

    v18 = *(v35 + 16);
    v17 = *(v35 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_21A3AF670((v17 > 1), v18 + 1, 1);
    }

    *(v35 + 16) = v18 + 1;
    v19 = (v35 + 24 * v18);
    v19[4] = v33;
    v19[5] = v13;
    v19[6] = v16;
    v8 += v28;
    v3 = v34 - 1;
  }

  while (v34 != 1);
  (*(v0[26] + 8))(v0[27], v0[25]);

LABEL_11:

  v23 = v0[1];

  return v23(v6);
}

uint64_t sub_21A36F59C()
{
  v16 = v0;

  sub_21A361318(v0 + 2);
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v3 = v1;
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v4 = sub_21A3B21DC();
  v5 = sub_21A3B25DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[33];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 138543618;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v11;
    *v8 = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_21A3AF0A8(0xD000000000000020, 0x800000021A3B38C0, &v15);
    _os_log_impl(&dword_21A35E000, v4, v5, "Unable to hydrate due to error: %{public}@, for: %{public}s", v7, 0x16u);
    sub_21A365D1C(v8, &qword_27CD240D0, &qword_21A3B3920);
    MEMORY[0x21CED8F60](v8, -1, -1);
    sub_21A361318(v9);
    MEMORY[0x21CED8F60](v9, -1, -1);
    MEMORY[0x21CED8F60](v7, -1, -1);
  }

  v12 = v0[33];
  sub_21A3B18BC();
  sub_21A36FF2C(&qword_27CD240C8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
  swift_allocError();
  sub_21A3B18AC();
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_21A36F8A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = swift_task_alloc();
  *(v2 + 24) = v7;
  *v7 = v2;
  v7[1] = sub_21A3689C0;

  return sub_21A36EC0C(v3, v4, v6, v5);
}

uint64_t sub_21A36F950(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21A36F998(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21A36F9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_21A3B1FFC();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  v3[13] = swift_task_alloc();
  type metadata accessor for RecipeEntity(0);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A36FB10, 0, 0);
}

uint64_t sub_21A36FB10()
{
  if (sub_21A3B1C6C() || sub_21A3B1C6C())
  {
    v1 = v0[14];
    swift_getKeyPath();
    sub_21A36E89C();
    sub_21A3B1A7C();

    v2 = *v1;
    v3 = v1[1];

    sub_21A36FF74(v1);

    v4 = v0[1];

    return v4(v2, v3);
  }

  else
  {
    sub_21A3B187C();
    v6 = v0[5];
    v7 = v0[6];
    sub_21A360CEC(v0 + 2, v6);
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_21A36FCA8;
    v9 = v0[13];

    return MEMORY[0x28214F8F0](v9, v6, v7);
  }
}

uint64_t sub_21A36FCA8()
{

  return MEMORY[0x2822009F8](sub_21A36FDA4, 0, 0);
}

uint64_t sub_21A36FDA4()
{
  v1 = v0[13];
  v2 = sub_21A3B1D3C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_21A361318(v0 + 2);
    sub_21A365D1C(v1, &qword_27CD24158, &qword_21A3B3750);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[10];
    sub_21A3B1D2C();
    (*(v3 + 8))(v1, v2);
    v4 = sub_21A3B1FEC();
    v5 = v9;
    (*(v7 + 8))(v6, v8);
    sub_21A361318(v0 + 2);
  }

  v10 = v0[1];

  return v10(v4, v5);
}

uint64_t sub_21A36FF2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21A36FF74(uint64_t a1)
{
  v2 = type metadata accessor for RecipeEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21A36FFD4()
{
  result = qword_27CD241A0;
  if (!qword_27CD241A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD241A0);
  }

  return result;
}

unint64_t sub_21A37002C()
{
  result = qword_27CD241A8;
  if (!qword_27CD241A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD241A8);
  }

  return result;
}

uint64_t sub_21A3700D0()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A3B212C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_21A3B20EC();
  sub_21A365DFC(v9, qword_27CD24AC8);
  sub_21A365DC4(v9, qword_27CD24AC8);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A3702B8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_21A365B50(&qword_27CD24090, &qword_21A3B4BA0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for RecipeEntity(0);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3703C4, 0, 0);
}

uint64_t sub_21A3703C4()
{
  v11 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v0[10] = *v1;
  v0[11] = v1[1];
  v0[12] = v1[2];
  v0[13] = v1[3];
  v0[14] = v1[4];
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v3 = sub_21A3B21DC();
  v4 = sub_21A3B25EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_21A3AF0A8(0xD000000000000015, 0x800000021A3B3AC0, &v10);
    _os_log_impl(&dword_21A35E000, v3, v4, "Will perform intent: %{public}s", v5, 0xCu);
    sub_21A361318(v6);
    MEMORY[0x21CED8F60](v6, -1, -1);
    MEMORY[0x21CED8F60](v5, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_21A370610;
  v8 = v0[9];

  return sub_21A39624C(v8);
}

uint64_t sub_21A370610()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_21A370B1C;
  }

  else
  {
    v2 = sub_21A370724;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A370724()
{
  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = sub_21A3B258C();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_21A371C60(v1, v2);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_21A365B98(v2, v9 + v8);
  v10 = v9 + ((v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v6 + 32);
  v12 = *(v6 + 16);
  *v10 = *v6;
  *(v10 + 16) = v12;
  *(v10 + 32) = v11;
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v13 = sub_21A37D5E4(0, 0, v5, &unk_21A3B3B18, v9);
  v0[17] = v13;
  v14 = swift_task_alloc();
  v0[18] = v14;
  v15 = sub_21A365B50(&qword_27CD241C8, &unk_21A3B3B20);
  *v14 = v0;
  v14[1] = sub_21A37091C;
  v16 = MEMORY[0x277D84950];
  v17 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v15, v13, v17, v15, v16);
}

uint64_t sub_21A37091C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_21A370B9C;
  }

  else
  {
    v2 = sub_21A370A30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A370A30()
{
  v1 = *(v0 + 72);
  sub_21A367658(&qword_27CD23EC8, &unk_21A3B2DD0);
  sub_21A3B19BC();

  sub_21A36769C(v1, type metadata accessor for RecipeEntity);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21A370B1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A370B9C()
{
  v1 = *(v0 + 72);

  sub_21A36769C(v1, type metadata accessor for RecipeEntity);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21A370C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21A370C68, 0, 0);
}

uint64_t sub_21A370C68()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_21A370D5C;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0x286D726F66726570, 0xE900000000000029, sub_21A371DE0, v1, v4);
}

uint64_t sub_21A370D5C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21A370E98, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21A370E98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A370EFC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21A365B50(&qword_27CD241D0, &qword_21A3B4BC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17[-v6];
  v8 = type metadata accessor for CookingSupportAppIntentInvocation(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 16))(v7, a1, v3);

  sub_21A3B1DBC();
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_21A3B1FDC();
  sub_21A3B187C();
  v12 = *sub_21A360CEC(v22, v22[3]);
  v21 = v11;
  v13 = *(v12 + 16);
  v18 = sub_21A367634;
  v19 = &v20;
  v14 = *(*v13 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v13 + v15));
  sub_21A36763C(v13 + v14);
  os_unfair_lock_unlock((v13 + v15));
  sub_21A36769C(v11, type metadata accessor for CookingSupportAppIntentInvocation);
  return sub_21A361318(v22);
}

uint64_t sub_21A371140@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E00 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24AC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A3711E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21A365B50(&qword_27CD241D8, &qword_21A3B3B30);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_21A365B50(&qword_27CD241E0, &qword_21A3B3B38);
  MEMORY[0x28223BE20](v4, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD241E8, &unk_21A3B3B68);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A371380(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_21A366BA8;

  return sub_21A3702B8(a1);
}

double sub_21A37142C@<D0>(uint64_t a1@<X8>)
{
  sub_21A3714BC(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21A371470(uint64_t a1)
{
  v2 = sub_21A371C0C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A3714BC@<X0>(uint64_t *a1@<X8>)
{
  v51 = a1;
  v1 = sub_21A3B1C4C();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v48 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v47 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v45 = v44 - v9;
  v10 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v44[0] = v44 - v12;
  v13 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v52 = v44 - v15;
  v16 = sub_21A3B20CC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21A3B212C();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v23 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v23 - 8, v24);
  v25 = sub_21A3B20EC();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v44[1] = v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v29 = *MEMORY[0x277CC9110];
  v30 = *(v17 + 104);
  v30(v20, v29, v16);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v30(v20, v29, v16);
  v31 = v52;
  sub_21A3B20FC();
  (*(v26 + 56))(v31, 0, 1, v25);
  v32 = type metadata accessor for RecipeEntity(0);
  (*(*(v32 - 8) + 56))(v44[0], 1, 1, v32);
  v33 = sub_21A3B19AC();
  v34 = *(*(v33 - 8) + 56);
  v34(v45, 1, 1, v33);
  v34(v47, 1, 1, v33);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v53 = 0u;
  v54 = 0u;
  v55 = 0;
  sub_21A3B18DC();
  v35 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v36 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v37 = sub_21A3B188C();
  *&v53 = v35;
  *(&v53 + 1) = v36;
  *&v54 = v37;
  (*(v49 + 104))(v48, *MEMORY[0x277CBA308], v50);
  sub_21A36758C();
  sub_21A367658(&qword_27CD23FB8, &unk_21A3B2C80);
  v38 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v39 = sub_21A3B188C();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v40 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v41 = sub_21A3B188C();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v43 = v51;
  *v51 = v38;
  v43[1] = v39;
  v43[2] = v40;
  v43[3] = v41;
  v43[4] = result;
  return result;
}

unint64_t sub_21A371C0C()
{
  result = qword_27CD241C0;
  if (!qword_27CD241C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD241C0);
  }

  return result;
}

uint64_t sub_21A371C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A371CC4(uint64_t a1)
{
  v4 = *(type metadata accessor for RecipeEntity(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A3650E8;

  return sub_21A370C44(a1, v7, v8, v1 + v5, v1 + v6);
}

unint64_t sub_21A371DEC()
{
  result = qword_27CD241F0;
  if (!qword_27CD241F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD241F0);
  }

  return result;
}

unint64_t sub_21A371E44()
{
  result = qword_27CD241F8;
  if (!qword_27CD241F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD241F8);
  }

  return result;
}

uint64_t sub_21A371EE8()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A3B212C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_21A3B20EC();
  sub_21A365DFC(v9, qword_27CD24AE0);
  sub_21A365DC4(v9, qword_27CD24AE0);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A3720D0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for RecipeEntity(0);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A372194, 0, 0);
}

uint64_t sub_21A372194()
{
  v11 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v0[13] = *(v1 + 8);
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v3 = sub_21A3B21DC();
  v4 = sub_21A3B25EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_21A3AF0A8(0xD000000000000015, 0x800000021A3B3C90, &v10);
    _os_log_impl(&dword_21A35E000, v3, v4, "Will perform intent: %{public}s", v5, 0xCu);
    sub_21A361318(v6);
    MEMORY[0x21CED8F60](v6, -1, -1);
    MEMORY[0x21CED8F60](v5, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21A3723C8;
  v8 = v0[12];

  return sub_21A396F6C(v8);
}

uint64_t sub_21A3723C8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_21A366834;
  }

  else
  {
    v2 = sub_21A3724DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_21A3724DC()
{
  v1 = v0[15];
  v2 = v0[10];
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();

  sub_21A3B1FDC();
  sub_21A3B187C();
  v3 = *sub_21A360CEC(v0 + 2, v0[5]);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = *(v3 + 16);
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_21A367634;
  *(v6 + 24) = v4;
  v7 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v8));
  sub_21A36763C(v5 + v7);
  if (v1)
  {

    os_unfair_lock_unlock((v5 + v8));
  }

  else
  {
    v9 = v0[12];
    v10 = v0[10];
    os_unfair_lock_unlock((v5 + v8));

    sub_21A361318(v0 + 2);
    sub_21A367658(&qword_27CD23EC8, &unk_21A3B2DD0);
    sub_21A3B19BC();
    sub_21A36769C(v9, type metadata accessor for RecipeEntity);
    sub_21A36769C(v10, type metadata accessor for CookingSupportAppIntentInvocation);

    v11 = v0[1];

    v11();
  }
}

uint64_t sub_21A37271C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E08 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24AE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A3727C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_21A365B50(&qword_27CD24218, &qword_21A3B3CD8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_21A365B50(&qword_27CD24220, &qword_21A3B3CE0);
  MEMORY[0x28223BE20](v4, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD24228, qword_21A3B3D10);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A37295C(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_21A366BA8;

  return sub_21A3720D0(a1);
}

double sub_21A372A08@<D0>(uint64_t a1@<X8>)
{
  sub_21A372A98(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21A372A4C(uint64_t a1)
{
  v2 = sub_21A3731E8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A372A98@<X0>(uint64_t *a1@<X8>)
{
  v51 = a1;
  v1 = sub_21A3B1C4C();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v48 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v47 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v45 = v44 - v9;
  v10 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v44[0] = v44 - v12;
  v13 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v52 = v44 - v15;
  v16 = sub_21A3B20CC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21A3B212C();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v23 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v23 - 8, v24);
  v25 = sub_21A3B20EC();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v44[1] = v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v29 = *MEMORY[0x277CC9110];
  v30 = *(v17 + 104);
  v30(v20, v29, v16);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v30(v20, v29, v16);
  v31 = v52;
  sub_21A3B20FC();
  (*(v26 + 56))(v31, 0, 1, v25);
  v32 = type metadata accessor for RecipeEntity(0);
  (*(*(v32 - 8) + 56))(v44[0], 1, 1, v32);
  v33 = sub_21A3B19AC();
  v34 = *(*(v33 - 8) + 56);
  v34(v45, 1, 1, v33);
  v34(v47, 1, 1, v33);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v53 = 0u;
  v54 = 0u;
  v55 = 0;
  sub_21A3B18DC();
  v35 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v36 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v37 = sub_21A3B188C();
  *&v53 = v35;
  *(&v53 + 1) = v36;
  *&v54 = v37;
  (*(v49 + 104))(v48, *MEMORY[0x277CBA308], v50);
  sub_21A36758C();
  sub_21A367658(&qword_27CD23FB8, &unk_21A3B2C80);
  v38 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v39 = sub_21A3B188C();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v40 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v41 = sub_21A3B188C();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v43 = v51;
  *v51 = v38;
  v43[1] = v39;
  v43[2] = v40;
  v43[3] = v41;
  v43[4] = result;
  return result;
}

unint64_t sub_21A3731E8()
{
  result = qword_27CD24210;
  if (!qword_27CD24210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24210);
  }

  return result;
}

unint64_t sub_21A373240()
{
  result = qword_27CD24230;
  if (!qword_27CD24230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24230);
  }

  return result;
}

unint64_t sub_21A373298()
{
  result = qword_27CD24238;
  if (!qword_27CD24238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24238);
  }

  return result;
}

uint64_t sub_21A37333C()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A3B212C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_21A3B20EC();
  sub_21A365DFC(v9, qword_27CD24AF8);
  sub_21A365DC4(v9, qword_27CD24AF8);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A373520(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for RecipeEntity(0);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3735E4, 0, 0);
}

uint64_t sub_21A3735E4()
{
  v11 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v0[13] = *(v1 + 8);
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v3 = sub_21A3B21DC();
  v4 = sub_21A3B25EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_21A3AF0A8(0xD000000000000013, 0x800000021A3B3E40, &v10);
    _os_log_impl(&dword_21A35E000, v3, v4, "Will perform intent: %{public}s", v5, 0xCu);
    sub_21A361318(v6);
    MEMORY[0x21CED8F60](v6, -1, -1);
    MEMORY[0x21CED8F60](v5, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21A373818;
  v8 = v0[12];

  return sub_21A397C8C(v8);
}

uint64_t sub_21A373818()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_21A366834;
  }

  else
  {
    v2 = sub_21A37392C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_21A37392C()
{
  v1 = v0[15];
  v2 = v0[10];
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();

  sub_21A3B1FDC();
  sub_21A3B187C();
  v3 = *sub_21A360CEC(v0 + 2, v0[5]);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = *(v3 + 16);
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_21A367634;
  *(v6 + 24) = v4;
  v7 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v8));
  sub_21A36763C(v5 + v7);
  if (v1)
  {

    os_unfair_lock_unlock((v5 + v8));
  }

  else
  {
    v9 = v0[12];
    v10 = v0[10];
    os_unfair_lock_unlock((v5 + v8));

    sub_21A361318(v0 + 2);
    sub_21A367658(&qword_27CD23EC8, &unk_21A3B2DD0);
    sub_21A3B19BC();
    sub_21A36769C(v9, type metadata accessor for RecipeEntity);
    sub_21A36769C(v10, type metadata accessor for CookingSupportAppIntentInvocation);

    v11 = v0[1];

    v11();
  }
}

uint64_t sub_21A373B6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E10 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24AF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A373C1C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21A365B50(&qword_27CD24268, &qword_21A3B3EA8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_21A365B50(&qword_27CD24270, &qword_21A3B3EB0);
  MEMORY[0x28223BE20](v4, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD24278, &qword_21A3B3EE0);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A373DAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_21A366BA8;

  return sub_21A373520(a1);
}

double sub_21A373E58@<D0>(uint64_t a1@<X8>)
{
  sub_21A373EE8(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21A373E9C(uint64_t a1)
{
  v2 = sub_21A37465C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A373EE8@<X0>(uint64_t *a1@<X8>)
{
  v51 = a1;
  v1 = sub_21A3B1C4C();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v48 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v46 = &v42 - v9;
  v10 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v44 = &v42 - v12;
  v13 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v43 = &v42 - v15;
  v16 = sub_21A3B20CC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21A3B212C();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v23 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v23 - 8, v24);
  v25 = sub_21A3B20EC();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v45 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v28 = *MEMORY[0x277CC9110];
  v29 = *(v17 + 104);
  v29(v20, v28, v16);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v29(v20, v28, v16);
  v30 = v43;
  sub_21A3B20FC();
  (*(v26 + 56))(v30, 0, 1, v25);
  v31 = type metadata accessor for RecipeEntity(0);
  (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
  v32 = sub_21A3B19AC();
  v33 = *(*(v32 - 8) + 56);
  v33(v46, 1, 1, v32);
  v33(v47, 1, 1, v32);
  sub_21A365B50(&qword_27CD24250, &qword_21A3B3E88);
  sub_21A3B18EC();
  v52 = 0u;
  v53 = 0u;
  v54 = 0;
  sub_21A3B18DC();
  v34 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_21A3B18DC();
  v35 = sub_21A3B188C();
  *&v52 = v34;
  *(&v52 + 1) = v35;
  (*(v49 + 104))(v48, *MEMORY[0x277CBA308], v50);
  sub_21A374608();
  sub_21A367658(&qword_27CD23FB8, &unk_21A3B2C80);
  v36 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_21A3B18DC();
  v37 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_21A3B18DC();
  v38 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_21A3B18DC();
  v39 = sub_21A3B188C();
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v41 = v51;
  *v51 = v36;
  v41[1] = v37;
  v41[2] = v38;
  v41[3] = v39;
  v41[4] = result;
  return result;
}

unint64_t sub_21A374608()
{
  result = qword_27CD24258;
  if (!qword_27CD24258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24258);
  }

  return result;
}

unint64_t sub_21A37465C()
{
  result = qword_27CD24260;
  if (!qword_27CD24260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24260);
  }

  return result;
}

uint64_t sub_21A37470C(uint64_t *a1, int a2)
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

uint64_t sub_21A374754(uint64_t result, int a2, int a3)
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

unint64_t sub_21A374794()
{
  result = qword_27CD24288;
  if (!qword_27CD24288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24288);
  }

  return result;
}

unint64_t sub_21A3747EC()
{
  result = qword_27CD24290;
  if (!qword_27CD24290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24290);
  }

  return result;
}

uint64_t sub_21A374890()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A3B212C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_21A3B20EC();
  sub_21A365DFC(v9, qword_27CD24B10);
  sub_21A365DC4(v9, qword_27CD24B10);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A374AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_21A3B20CC();
  v4[4] = v9;
  v4[5] = *(v9 - 8);
  v4[6] = swift_task_alloc();
  sub_21A3B212C();
  v4[7] = swift_task_alloc();
  sub_21A3B24DC();
  v4[8] = swift_task_alloc();
  sub_21A3B20EC();
  v4[9] = swift_task_alloc();
  v10 = sub_21A3B1D6C();
  v4[10] = v10;
  v4[11] = *(v10 - 8);
  v4[12] = swift_task_alloc();
  v11 = sub_21A3B205C();
  v4[13] = v11;
  v4[14] = *(v11 - 8);
  v12 = swift_task_alloc();
  v4[15] = v12;
  v13 = swift_task_alloc();
  v4[16] = v13;
  *v13 = v4;
  v13[1] = sub_21A374D34;

  return sub_21A3A5308(v12, a1, a2, a3, a4);
}

uint64_t sub_21A374D34()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_21A375180;
  }

  else
  {
    v2 = sub_21A374E48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A374E48(uint64_t a1)
{
  v2 = sub_21A3B1F9C();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v1[11];
    v5 = v1[5];
    v35 = MEMORY[0x277D84F90];
    sub_21A3AF670(0, v3, 0);
    sub_21A365B50(&qword_27CD23F80, &qword_21A3B3730);
    v6 = v35;
    v7 = *(v4 + 16);
    v4 += 16;
    v29 = v7;
    v8 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v28 = *(v4 + 56);
    v27 = *MEMORY[0x277CC9110];
    v25 = (v4 - 8);
    v26 = (v5 + 104);
    do
    {
      v34 = v3;
      v9 = v1[12];
      v32 = v1[10];
      v10 = v1[6];
      v11 = v1[4];
      v29(v9, v8);
      v33 = sub_21A3B1D4C();
      v13 = v12;
      v14 = sub_21A3B1D5C();
      v30 = v15;
      v31 = v14;
      sub_21A3B247C();
      sub_21A3B211C();
      (*v26)(v10, v27, v11);
      sub_21A3B20FC();
      v16 = sub_21A3B19EC();
      v1[2] = v31;
      v1[3] = v30;
      sub_21A3B1A8C();

      sub_21A3B19DC();
      (*v25)(v9, v32);

      v18 = *(v35 + 16);
      v17 = *(v35 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_21A3AF670((v17 > 1), v18 + 1, 1);
      }

      *(v35 + 16) = v18 + 1;
      v19 = (v35 + 24 * v18);
      v19[4] = v33;
      v19[5] = v13;
      v19[6] = v16;
      v8 += v28;
      v3 = v34 - 1;
    }

    while (v34 != 1);
    (*(v1[14] + 8))(v1[15], v1[13]);
  }

  else
  {
    v21 = v1[14];
    v20 = v1[15];
    v22 = v1[13];

    (*(v21 + 8))(v20, v22);
    v6 = MEMORY[0x277D84F90];
  }

  v23 = v1[1];

  return v23(v6);
}

uint64_t sub_21A375180()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A375228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_21A375250, 0, 0);
}

uint64_t sub_21A375250()
{
  v13 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = sub_21A3B21FC();
  sub_21A365DC4(v1, qword_27CD24AB0);
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v2 = sub_21A3B21DC();
  v3 = sub_21A3B25EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_21A3AF0A8(0xD000000000000017, 0x800000021A3B4060, &v12);
    _os_log_impl(&dword_21A35E000, v2, v3, "Will perform intent: %{public}s", v4, 0xCu);
    sub_21A361318(v5);
    MEMORY[0x21CED8F60](v5, -1, -1);
    MEMORY[0x21CED8F60](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_21A375454;
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[4];
  v9 = v0[5];

  return sub_21A374AC0(v10, v9, v7, v8);
}

uint64_t sub_21A375454(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1;

    return MEMORY[0x2822009F8](sub_21A3755A0, 0, 0);
  }
}

uint64_t sub_21A3755A0()
{
  v0[2] = v0[9];
  sub_21A365B50(&qword_27CD24198, qword_21A3B3810);
  sub_21A376180();
  sub_21A3B19BC();

  v1 = v0[1];

  return v1();
}

uint64_t sub_21A37564C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E18 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24B10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A3756F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_21A365B50(&qword_27CD242C8, &qword_21A3B40C8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_21A365B50(&qword_27CD242D0, &qword_21A3B40D0);
  MEMORY[0x28223BE20](v4, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD242D8, &unk_21A3B4100);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A37588C(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21A3650E8;

  return sub_21A375228(a1, v4, v5, v7, v6);
}

uint64_t sub_21A37594C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A3759E8();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_21A37599C(uint64_t a1)
{
  v2 = sub_21A37612C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A3759E8()
{
  v0 = sub_21A3B1C4C();
  v42 = *(v0 - 8);
  v43 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v41 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v40 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v39 = v38 - v8;
  v9 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v38[0] = v38 - v11;
  v12 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v44 = v38 - v14;
  v15 = sub_21A3B20CC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21A3B212C();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v22 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v24 = sub_21A3B20EC();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v38[1] = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v27 = *MEMORY[0x277CC9110];
  v28 = *(v16 + 104);
  v28(v19, v27, v15);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v28(v19, v27, v15);
  v29 = v44;
  sub_21A3B20FC();
  (*(v25 + 56))(v29, 0, 1, v24);
  v30 = type metadata accessor for RecipeEntity(0);
  (*(*(v30 - 8) + 56))(v38[0], 1, 1, v30);
  v31 = sub_21A3B19AC();
  v32 = *(*(v31 - 8) + 56);
  v32(v39, 1, 1, v31);
  v32(v40, 1, 1, v31);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v45 = 0u;
  v46 = 0u;
  v47 = 0;
  sub_21A3B18DC();
  v33 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_21A3B18DC();
  v34 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_21A3B18DC();
  v35 = sub_21A3B188C();
  *&v45 = v33;
  *(&v45 + 1) = v34;
  *&v46 = v35;
  (*(v42 + 104))(v41, *MEMORY[0x277CBA308], v43);
  sub_21A36758C();
  sub_21A3760D4();
  v36 = sub_21A3B1A4C();
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_21A3B18DC();
  sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_21A3B18DC();
  sub_21A3B188C();
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_21A3B18DC();
  sub_21A3B188C();
  return v36;
}

unint64_t sub_21A3760D4()
{
  result = qword_27CD23FB8;
  if (!qword_27CD23FB8)
  {
    type metadata accessor for RecipeEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD23FB8);
  }

  return result;
}

unint64_t sub_21A37612C()
{
  result = qword_27CD242B8;
  if (!qword_27CD242B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD242B8);
  }

  return result;
}

unint64_t sub_21A376180()
{
  result = qword_27CD242C0;
  if (!qword_27CD242C0)
  {
    sub_21A364A10(&qword_27CD24198, qword_21A3B3810);
    sub_21A36EB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD242C0);
  }

  return result;
}

uint64_t sub_21A37622C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_21A3B1FCC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return sub_21A376298(a1 + v6, a2 + v6);
}

uint64_t sub_21A376298(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v3 = sub_21A365B50(&qword_27CD242E0, &qword_21A3B41D0);
  v61 = *(v3 - 8);
  v62 = v3;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v57 = &v56 - v8;
  v9 = sub_21A3B20BC();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CookingSupportAppIntentEventAction(0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = (&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = (&v56 - v20);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v56 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v56 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v56 - v31;
  v33 = sub_21A365B50(&qword_27CD242E8, &qword_21A3B41D8);
  v35 = MEMORY[0x28223BE20](v33 - 8, v34);
  v37 = &v56 - v36;
  v38 = (&v56 + *(v35 + 56) - v36);
  sub_21A3768D4(a1, &v56 - v36);
  sub_21A3768D4(v63, v38);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_21A3768D4(v37, v29);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v49 = v61;
        v48 = v62;
        v50 = v57;
        (*(v61 + 32))(v57, v38, v62);
        v46 = sub_21A3B1D9C();
        v51 = *(v49 + 8);
        v51(v50, v48);
        v51(v29, v48);
        goto LABEL_41;
      }

      (*(v61 + 8))(v29, v62);
      goto LABEL_37;
    case 2u:
      sub_21A3768D4(v37, v25);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v44 = v61;
        v43 = v62;
        v45 = v58;
        (*(v61 + 32))(v58, v38, v62);
        v46 = sub_21A3B1D9C();
        v47 = *(v44 + 8);
        v47(v45, v43);
        v47(v25, v43);
        goto LABEL_41;
      }

      (*(v61 + 8))(v25, v62);
      goto LABEL_37;
    case 3u:
      sub_21A3768D4(v37, v21);
      v40 = *v21;
      v39 = v21[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_20;
      }

      goto LABEL_7;
    case 4u:
      sub_21A3768D4(v37, v17);
      v40 = *v17;
      v39 = v17[1];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_20:

        goto LABEL_37;
      }

LABEL_7:
      if (v40 == *v38 && v39 == v38[1])
      {
      }

      else
      {
        v42 = sub_21A3B267C();

        if ((v42 & 1) == 0)
        {
          sub_21A3769A0(v37);
          goto LABEL_38;
        }
      }

LABEL_34:
      sub_21A3769A0(v37);
      v46 = 1;
      break;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    case 7u:
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    case 8u:
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    default:
      sub_21A3768D4(v37, v32);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v59 + 8))(v32, v60);
LABEL_37:
        sub_21A376938(v37);
LABEL_38:
        v46 = 0;
      }

      else
      {
        v54 = v59;
        v53 = v60;
        (*(v59 + 32))(v12, v38, v60);
        v46 = sub_21A3B20AC();
        v55 = *(v54 + 8);
        v55(v12, v53);
        v55(v32, v53);
LABEL_41:
        sub_21A3769A0(v37);
      }

      break;
  }

  return v46 & 1;
}

uint64_t sub_21A3768D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CookingSupportAppIntentEventAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A376938(uint64_t a1)
{
  v2 = sub_21A365B50(&qword_27CD242E8, &qword_21A3B41D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A3769A0(uint64_t a1)
{
  v2 = type metadata accessor for CookingSupportAppIntentEventAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for InstructionEntity(uint64_t a1)
{
  result = qword_27CD24340;
  if (!qword_27CD24340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A376B68()
{
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  sub_21A3B18EC();
  sub_21A3B18DC();
  v0 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  sub_21A3B18DC();
  v1 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24178, &qword_21A3B3790);
  swift_getKeyPath();
  result = sub_21A3B1C7C();
  qword_27CD24B28 = v0;
  unk_27CD24B30 = v1;
  qword_27CD24B38 = result;
  return result;
}

uint64_t sub_21A376C58@<X0>(void *a1@<X8>)
{
  if (qword_27CD23E20 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_27CD24B30;
  v2 = qword_27CD24B38;
  *a1 = qword_27CD24B28;
  a1[1] = v1;
  a1[2] = v2;
  sub_21A3B1A8C();
  sub_21A3B1A8C();

  return sub_21A3B1A8C();
}

uint64_t sub_21A376DBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21A3B20BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21A376E24@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E28 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B1C9C();
  v3 = sub_21A365DC4(v2, qword_27CD24B40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_21A376ED0()
{
  result = qword_27CD24328;
  if (!qword_27CD24328)
  {
    sub_21A364A10(&qword_27CD24330, &qword_21A3B4328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24328);
  }

  return result;
}

uint64_t sub_21A376F34(uint64_t a1)
{
  v2 = sub_21A377550(&qword_27CD240D8, type metadata accessor for InstructionEntity, &unk_21A3B41E0);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_21A376FFC@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v1 = sub_21A365B50(&qword_27CD23FA0, &unk_21A3B2F60);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v18 - v3;
  v5 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v18 - v7;
  v9 = sub_21A3B20EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v12 = sub_21A3B24CC();
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  MEMORY[0x28223BE20](v14, v15);
  sub_21A3B24BC();
  sub_21A3B24AC();
  type metadata accessor for InstructionEntity(0);
  sub_21A3B19CC();
  sub_21A3B248C();
  sub_21A3B24AC();
  sub_21A3B20DC();
  sub_21A3B24BC();
  sub_21A3B24AC();
  sub_21A3B19CC();
  sub_21A3B249C();

  sub_21A3B24AC();
  sub_21A3B20DC();
  (*(v10 + 56))(v8, 0, 1, v9);
  v16 = sub_21A3B1BBC();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  return sub_21A3B1BCC();
}

uint64_t sub_21A377314(uint64_t a1)
{
  v2 = sub_21A377550(&qword_27CD24320, type metadata accessor for InstructionEntity, &unk_21A3B4390);

  return MEMORY[0x28210C4B8](a1, v2);
}

void sub_21A3773B8(uint64_t a1)
{
  sub_21A3B20BC();
  if (v1 <= 0x3F)
  {
    sub_21A3774F0(319, &qword_27CD24350, sub_21A37749C, MEMORY[0x277D83B88]);
    if (v2 <= 0x3F)
    {
      sub_21A3774F0(319, &qword_27CD23F08, sub_21A365944, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21A37749C()
{
  result = qword_27CD24358;
  if (!qword_27CD24358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24358);
  }

  return result;
}

void sub_21A3774F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_21A3B1A0C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21A377550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21A377598()
{
  v0 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = v17 - v2;
  v17[0] = sub_21A3B20CC();
  v4 = *(v17[0] - 8);
  MEMORY[0x28223BE20](v17[0], v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A3B212C();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = sub_21A3B20EC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v15 = sub_21A3B1C9C();
  sub_21A365DFC(v15, qword_27CD24B40);
  sub_21A365DC4(v15, qword_27CD24B40);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_21A3B20FC();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_21A3B1C8C();
}

unint64_t sub_21A377880()
{
  result = qword_27CD24360;
  if (!qword_27CD24360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24360);
  }

  return result;
}

unint64_t sub_21A3778D8()
{
  result = qword_27CD24368;
  if (!qword_27CD24368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24368);
  }

  return result;
}

uint64_t sub_21A37797C()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A3B212C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_21A3B20EC();
  sub_21A365DFC(v9, qword_27CD24B58);
  sub_21A365DC4(v9, qword_27CD24B58);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A377B5C()
{
  v0 = sub_21A365B50(&qword_27CD243A8, &qword_21A3B4658);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = sub_21A365B50(&qword_27CD243B0, &qword_21A3B4660);
  MEMORY[0x28223BE20](v2, v3);
  sub_21A379334();
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD243B8, &qword_21A3B4690);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD243C0, &qword_21A3B4698);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A377DA4(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for RecipeEntity(0);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A377E68, 0, 0);
}

uint64_t sub_21A377E68()
{
  v11 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v0[16] = *(v1 + 8);
  v0[17] = *(v1 + 16);
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v3 = sub_21A3B21DC();
  v4 = sub_21A3B25EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_21A3AF0A8(0xD000000000000019, 0x800000021A3B4570, &v10);
    _os_log_impl(&dword_21A35E000, v3, v4, "Will perform intent: %{public}s", v5, 0xCu);
    sub_21A361318(v6);
    MEMORY[0x21CED8F60](v6, -1, -1);
    MEMORY[0x21CED8F60](v5, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_21A3780BC;
  v8 = v0[15];

  return sub_21A3989AC(v8);
}

uint64_t sub_21A3780BC()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_21A378434;
  }

  else
  {
    v2 = sub_21A3781D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_21A3781D0()
{
  v1 = v0[19];
  v2 = v0[13];
  v3 = (v2 + *(v0[12] + 20));

  sub_21A3B1A1C();
  v4 = v0[7];
  v5 = v0[8];

  *v3 = v4;
  v3[1] = v5;
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_21A3B1FDC();
  sub_21A3B187C();
  v6 = *sub_21A360CEC(v0 + 2, v0[5]);
  v7 = swift_task_alloc();
  *(v7 + 16) = v2;
  v8 = *(v6 + 16);
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_21A367634;
  *(v9 + 24) = v7;
  v10 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v11 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v11));
  sub_21A36763C(v8 + v10);
  if (v1)
  {

    os_unfair_lock_unlock((v8 + v11));
  }

  else
  {
    v12 = v0[15];
    v13 = v0[13];
    os_unfair_lock_unlock((v8 + v11));

    sub_21A361318(v0 + 2);
    sub_21A367658(&qword_27CD23EC8, &unk_21A3B2DD0);
    sub_21A3B19BC();
    sub_21A36769C(v12, type metadata accessor for RecipeEntity);
    sub_21A36769C(v13, type metadata accessor for CookingSupportAppIntentInvocation);

    v14 = v0[1];

    v14();
  }
}

uint64_t sub_21A378434()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A3784A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E30 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24B58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A378550(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_21A3785FC;

  return sub_21A377DA4(a1);
}

uint64_t sub_21A3785FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_21A3786F0@<D0>(_OWORD *a1@<X8>)
{
  sub_21A378848(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_21A378754(uint64_t a1)
{
  v2 = sub_21A379334();

  return MEMORY[0x28210B538](a1, v2);
}

__n128 sub_21A378790(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21A3787A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21A3787EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_21A378848@<X0>(char **a1@<X8>)
{
  v72 = a1;
  v78 = sub_21A3B1C4C();
  v80 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v1);
  v77 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v75 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v76 = &v57 - v8;
  v9 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v74 = &v57 - v11;
  v12 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v79 = &v57 - v14;
  v15 = sub_21A3B20CC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21A3B212C();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v22 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v24 = sub_21A3B20EC();
  v69 = v24;
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v73 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v29 = *(v16 + 104);
  v61 = *MEMORY[0x277CC9110];
  v28 = v61;
  v62 = v15;
  v29(v19, v61, v15);
  v63 = v29;
  v64 = v16 + 104;
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v29(v19, v28, v15);
  v30 = v79;
  sub_21A3B20FC();
  v31 = *(v25 + 56);
  v68 = v25 + 56;
  v70 = v31;
  v31(v30, 0, 1, v24);
  v32 = type metadata accessor for RecipeEntity(0);
  (*(*(v32 - 8) + 56))(v74, 1, 1, v32);
  v33 = sub_21A3B19AC();
  v58 = v33;
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v59 = v35;
  v60 = v34 + 56;
  v35(v76, 1, 1, v33);
  v35(v75, 1, 1, v33);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v84 = 0u;
  v85 = 0u;
  v86 = 0;
  sub_21A3B18DC();
  v36 = sub_21A3B188C();
  v57 = sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  sub_21A3B18DC();
  v37 = sub_21A3B188C();
  v71 = sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  sub_21A3B18DC();
  v38 = sub_21A3B188C();
  *&v84 = v36;
  *(&v84 + 1) = v37;
  *&v85 = v38;
  v65 = *MEMORY[0x277CBA308];
  v39 = *(v80 + 104);
  v80 += 104;
  v66 = v39;
  v39(v77);
  sub_21A36758C();
  sub_21A367658(&qword_27CD23FB8, &unk_21A3B2C80);
  v40 = v76;
  v74 = sub_21A3B1A4C();
  v67 = sub_21A365B50(&qword_27CD24380, &unk_21A3B45D8);
  sub_21A3B247C();
  sub_21A3B211C();
  v41 = v61;
  v42 = v62;
  v43 = v63;
  v63(v19, v61, v62);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v43(v19, v41, v42);
  v44 = v79;
  sub_21A3B20FC();
  v70(v44, 0, 1, v69);
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v45 = v58;
  v46 = v59;
  v59(v40, 1, 1, v58);
  v46(v75, 1, 1, v45);
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  sub_21A3B18DC();
  v47 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  sub_21A3B18DC();
  v48 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24388, &qword_21A3B45E8);
  swift_getKeyPath();
  v49 = sub_21A3B1C7C();
  sub_21A365B50(&qword_27CD24390, &qword_21A3B4618);
  swift_getKeyPath();
  v50 = sub_21A3B1C7C();
  *&v84 = v47;
  *(&v84 + 1) = v48;
  *&v85 = v49;
  *(&v85 + 1) = v50;
  v66(v77, v65, v78);
  sub_21A3792E0();
  sub_21A36AA54();
  v51 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  sub_21A3B18DC();
  v52 = sub_21A3B188C();
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  sub_21A3B18DC();
  v53 = sub_21A3B188C();
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  sub_21A3B18DC();
  v54 = sub_21A3B188C();
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v56 = v72;
  *v72 = v74;
  v56[1] = v51;
  v56[2] = v52;
  v56[3] = v53;
  v56[4] = v54;
  v56[5] = result;
  return result;
}

unint64_t sub_21A3792E0()
{
  result = qword_27CD24398;
  if (!qword_27CD24398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24398);
  }

  return result;
}

unint64_t sub_21A379334()
{
  result = qword_27CD243A0;
  if (!qword_27CD243A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD243A0);
  }

  return result;
}

uint64_t sub_21A379388(uint64_t a1)
{
  v167 = sub_21A3B1ECC();
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167, v2);
  v165 = (&v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_21A3B1EEC();
  v170 = *(v4 - 8);
  v171 = v4;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v162 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v161 = &v139 - v9;
  v142 = sub_21A3B1CFC();
  v141 = *(v142 - 8);
  v11 = MEMORY[0x28223BE20](v142, v10);
  v140 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v139 = &v139 - v14;
  v15 = sub_21A3B1D3C();
  v172 = *(v15 - 8);
  v173 = v15;
  v17 = MEMORY[0x28223BE20](v15, v16);
  v144 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v143 = &v139 - v20;
  v169 = sub_21A365B50(&qword_27CD242E0, &qword_21A3B41D0);
  v168 = *(v169 - 8);
  v22 = MEMORY[0x28223BE20](v169, v21);
  v160 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v159 = &v139 - v25;
  v158 = sub_21A3B20BC();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158, v26);
  v156 = &v139 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_21A3B1E5C();
  v163 = *(v164 - 8);
  v29 = MEMORY[0x28223BE20](v164, v28);
  v155 = &v139 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v154 = &v139 - v32;
  v33 = sub_21A3B1D0C();
  v174 = *(v33 - 8);
  v175 = v33;
  MEMORY[0x28223BE20](v33, v34);
  v176 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_21A3B1CDC();
  v177 = *(v36 - 8);
  v178 = v36;
  v38 = MEMORY[0x28223BE20](v36, v37);
  v153 = &v139 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v152 = &v139 - v42;
  v44 = MEMORY[0x28223BE20](v41, v43);
  v151 = &v139 - v45;
  v47 = MEMORY[0x28223BE20](v44, v46);
  v150 = &v139 - v48;
  v50 = MEMORY[0x28223BE20](v47, v49);
  v149 = &v139 - v51;
  v53 = MEMORY[0x28223BE20](v50, v52);
  v148 = &v139 - v54;
  MEMORY[0x28223BE20](v53, v55);
  v147 = &v139 - v56;
  v184 = type metadata accessor for CookingSupportAppIntentEventAction(0);
  MEMORY[0x28223BE20](v184, v57);
  v183 = &v139 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_21A365B50(&qword_27CD243D8, &unk_21A3B4750);
  MEMORY[0x28223BE20](v59 - 8, v60);
  v62 = &v139 - v61;
  v63 = sub_21A365B50(&qword_27CD243D0, qword_21A3B46D8);
  v64 = *(v63 - 8);
  v181 = v63;
  v182 = v64;
  MEMORY[0x28223BE20](v63, v65);
  v67 = &v139 - v66;
  v68 = sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  v70 = MEMORY[0x28223BE20](v68 - 8, v69);
  v146 = &v139 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x28223BE20](v70, v72);
  v145 = &v139 - v74;
  MEMORY[0x28223BE20](v73, v75);
  v77 = &v139 - v76;
  v78 = sub_21A3B1FFC();
  v79 = *(v78 - 8);
  v81 = MEMORY[0x28223BE20](v78, v80);
  v179 = &v139 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81, v83);
  v85 = &v139 - v84;
  v86 = *(v79 + 16);
  v86(&v139 - v84, a1, v78);
  type metadata accessor for CookingSupportAppIntentEventHandler(0);
  sub_21A365B50(&qword_27CD243C8, &unk_21A3B46A0);
  sub_21A3B22DC();
  v186 = v85;
  v87 = v85;
  v180 = v79 + 16;
  v88 = v86;
  v86(v62, v87, v78);
  v185 = v79;
  (*(v79 + 56))(v62, 0, 1, v78);
  v187 = v77;
  v89 = v181;
  sub_21A3B206C();
  v90 = v183;
  sub_21A365D1C(v62, &qword_27CD243D8, &unk_21A3B4750);
  (*(v182 + 8))(v67, v89);
  v91 = type metadata accessor for CookingSupportAppIntentEvent(0);
  sub_21A3768D4(a1 + *(v91 + 20), v90);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v92 = v168;
      v93 = v159;
      v94 = v169;
      (*(v168 + 32))(v159, v90, v169);
      v95 = v186;
      v88(v179, v186, v78);
      v126 = v176;
      (*(v92 + 16))(v176, v93, v94);
      (*(v92 + 56))(v126, 0, 1, v94);
      (*(v174 + 104))(v126, *MEMORY[0x277CFCC98], v175);
      v97 = &v184;
      goto LABEL_15;
    case 2u:
      v92 = v168;
      v93 = v160;
      v94 = v169;
      (*(v168 + 32))(v160, v90, v169);
      v95 = v186;
      v88(v179, v186, v78);
      v119 = v176;
      (*(v92 + 16))(v176, v93, v94);
      (*(v92 + 56))(v119, 0, 1, v94);
      (*(v174 + 104))(v119, *MEMORY[0x277CFCCB8], v175);
      v97 = &v185;
      goto LABEL_15;
    case 3u:
      v120 = *v90;
      v121 = v90[1];
      v102 = v186;
      v86(v179, v186, v78);
      v122 = v165;
      *v165 = v120;
      v122[1] = v121;
      (*(v166 + 104))(v122, *MEMORY[0x277CFCD18], v167);
      v112 = &v188;
      goto LABEL_12;
    case 4u:
      v109 = *v90;
      v110 = v90[1];
      v102 = v186;
      v86(v179, v186, v78);
      v111 = v165;
      *v165 = v109;
      v111[1] = v110;
      (*(v166 + 104))(v111, *MEMORY[0x277CFCD20], v167);
      v112 = &v189;
LABEL_12:
      v123 = *(v112 - 32);
      sub_21A3B1EDC();
      sub_21A360A94(&qword_27CD243E0, MEMORY[0x277CFCD30], MEMORY[0x277CFCD28]);
      v124 = v171;
      sub_21A3B231C();
      (*(v170 + 8))(v123, v124);
      goto LABEL_28;
    case 5u:
      v95 = v186;
      v86(v179, v186, v78);
      (*(v174 + 104))(v176, *MEMORY[0x277CFCCA8], v175);
      v125 = &v179;
      goto LABEL_21;
    case 6u:
      v95 = v186;
      v86(v179, v186, v78);
      (*(v174 + 104))(v176, *MEMORY[0x277CFCCA0], v175);
      v125 = &v180;
      goto LABEL_21;
    case 7u:
      v95 = v186;
      v86(v179, v186, v78);
      (*(v174 + 104))(v176, *MEMORY[0x277CFCCB0], v175);
      v125 = &v181;
      goto LABEL_21;
    case 8u:
      v95 = v186;
      v86(v179, v186, v78);
      (*(v174 + 104))(v176, *MEMORY[0x277CFCC90], v175);
      v125 = &v182;
LABEL_21:
      v133 = *(v125 - 32);
      sub_21A3B1CCC();
      sub_21A360A94(&qword_27CD243F0, MEMORY[0x277CFCC60], MEMORY[0x277CFCC58]);
      v134 = v178;
      sub_21A3B231C();
      (*(v177 + 8))(v133, v134);
      goto LABEL_22;
    case 9u:
      v115 = sub_21A365B50(&qword_27CD243F8, &unk_21A3B4760);
      v116 = v154;
      v117 = &v154[*(v115 + 48)];
      v102 = v186;
      v86(v154, v186, v78);
      *v117 = 0;
      *(v117 + 1) = 0;
      v118 = MEMORY[0x277CFCCE0];
      goto LABEL_19;
    case 0xAu:
      v129 = sub_21A365B50(&qword_27CD243F8, &unk_21A3B4760);
      v116 = v155;
      v130 = &v155[*(v129 + 48)];
      v102 = v186;
      v86(v155, v186, v78);
      *v130 = 0;
      *(v130 + 1) = 0;
      v118 = MEMORY[0x277CFCCE8];
LABEL_19:
      v131 = v163;
      v132 = v164;
      (*(v163 + 104))(v116, *v118, v164);
      sub_21A360A94(&qword_27CD24400, MEMORY[0x277CFCCF8], MEMORY[0x277CFCCF0]);
      sub_21A3B231C();
      (*(v131 + 8))(v116, v132);
      goto LABEL_28;
    case 0xBu:
      v98 = v145;
      sub_21A37A884(v187, v145);
      v100 = v172;
      v99 = v173;
      v101 = (*(v172 + 48))(v98, 1, v173);
      v102 = v186;
      if (v101 == 1)
      {
        goto LABEL_8;
      }

      v103 = v143;
      (*(v100 + 32))(v143, v98, v99);
      if (sub_21A3B1D1C())
      {
        goto LABEL_26;
      }

      v104 = v139;
      v88(v139, v102, v78);
      v105 = v141;
      v106 = v142;
      (*(v141 + 104))(v104, *MEMORY[0x277CFCC78], v142);
      sub_21A360A94(&qword_27CD243E8, MEMORY[0x277CFCC88], MEMORY[0x277CFCC80]);
      sub_21A3B231C();
      (*(v105 + 8))(v104, v106);
      v107 = *(v100 + 8);
      v108 = &v175;
      goto LABEL_25;
    case 0xCu:
      v98 = v146;
      sub_21A37A884(v187, v146);
      v100 = v172;
      v99 = v173;
      v113 = (*(v172 + 48))(v98, 1, v173);
      v102 = v186;
      if (v113 == 1)
      {
LABEL_8:
        sub_21A365D1C(v187, &qword_27CD24158, &qword_21A3B3750);
        (*(v185 + 8))(v102, v78);
        return sub_21A365D1C(v98, &qword_27CD24158, &qword_21A3B3750);
      }

      else
      {
        v103 = v144;
        (*(v100 + 32))(v144, v98, v99);
        if (sub_21A3B1D1C())
        {
          v135 = v140;
          v88(v140, v102, v78);
          v136 = v141;
          v137 = v142;
          (*(v141 + 104))(v135, *MEMORY[0x277CFCC70], v142);
          sub_21A360A94(&qword_27CD243E8, MEMORY[0x277CFCC88], MEMORY[0x277CFCC80]);
          sub_21A3B231C();
          (*(v136 + 8))(v135, v137);
          v107 = *(v100 + 8);
          v108 = &v176;
LABEL_25:
          v138 = *(v108 - 32);
        }

        else
        {
LABEL_26:
          v107 = *(v100 + 8);
          v138 = v103;
        }

        v107(v138, v99);
LABEL_28:
        sub_21A365D1C(v187, &qword_27CD24158, &qword_21A3B3750);
        return (*(v185 + 8))(v102, v78);
      }

    default:
      v92 = v157;
      v93 = v156;
      v94 = v158;
      (*(v157 + 32))(v156, v90, v158);
      v95 = v186;
      v88(v179, v186, v78);
      v96 = v176;
      (*(v92 + 16))(v176, v93, v94);
      (*(v92 + 56))(v96, 0, 1, v94);
      (*(v174 + 104))(v96, *MEMORY[0x277CFCCC0], v175);
      v97 = &v183;
LABEL_15:
      v127 = *(v97 - 32);
      sub_21A3B1CCC();
      sub_21A360A94(&qword_27CD243F0, MEMORY[0x277CFCC60], MEMORY[0x277CFCC58]);
      v128 = v178;
      sub_21A3B231C();
      (*(v177 + 8))(v127, v128);
      (*(v92 + 8))(v93, v94);
LABEL_22:
      sub_21A365D1C(v187, &qword_27CD24158, &qword_21A3B3750);
      return (*(v185 + 8))(v95, v78);
  }
}

uint64_t sub_21A37A884(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A365B50(&qword_27CD24158, &qword_21A3B3750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A37A8F4()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 256);
    v5 = *(v2 + 264);

    return MEMORY[0x2822009F8](sub_21A37AA08, v4, v5);
  }

  return result;
}

uint64_t sub_21A37AA08()
{
  v1 = v0[26];
  if ((*(v0[24] + 48))(v1, 1, v0[23]) != 1)
  {
    sub_21A37AFC4(v1, v0[25], type metadata accessor for CookingSupportAppIntentInvocation);
    Strong = swift_weakLoadStrong();
    v3 = v0[25];
    if (Strong)
    {
      v4 = v0[23];
      v5 = v0[15];
      (*(v0[19] + 16))(v0[20], v0[25], v0[18]);
      sub_21A37AF60(v3 + *(v4 + 20), v5);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v7 = v0[17];
      switch(EnumCaseMultiPayload)
      {
        case 1:
        case 2:
          v19 = v0[15];
          v20 = v0[17];
          v21 = sub_21A365B50(&qword_27CD242E0, &qword_21A3B41D0);
          (*(*(v21 - 8) + 32))(v20, v19, v21);
          break;
        case 3:
          v16 = v0[15];
          v18 = *v16;
          v17 = v16[1];
          *v7 = v18;
          v7[1] = v17;
          break;
        case 4:
          v13 = v0[15];
          v15 = *v13;
          v14 = v13[1];
          *v7 = v15;
          v7[1] = v14;
          break;
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
          break;
        default:
          v8 = v0[15];
          v9 = v0[17];
          v10 = sub_21A3B20BC();
          (*(*(v10 - 8) + 32))(v9, v8, v10);
          break;
      }

      swift_storeEnumTagMultiPayload();
      v22 = v0[25];
      v24 = v0[21];
      v23 = v0[22];
      v25 = v0[17];
      (*(v0[19] + 32))(v23, v0[20], v0[18]);
      sub_21A37AFC4(v25, v23 + *(v24 + 20), type metadata accessor for CookingSupportAppIntentEventAction);
      sub_21A37B02C();
      sub_21A3B230C();

      sub_21A37B084(v23, type metadata accessor for CookingSupportAppIntentEvent);
      sub_21A37B084(v22, type metadata accessor for CookingSupportAppIntentInvocation);
      v26 = sub_21A3B255C();
      v0[34] = v26;
      sub_21A361030((v0 + 2), v0[5]);
      v27 = swift_task_alloc();
      v0[35] = v27;
      *v27 = v0;
      v27[1] = sub_21A37A8F4;
      v28 = v0[26];
      v29 = MEMORY[0x277D85700];

      return MEMORY[0x282200310](v28, v26, v29);
    }

    sub_21A37B084(v0[25], type metadata accessor for CookingSupportAppIntentInvocation);
  }

  sub_21A361318(v0 + 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_21A37AEBC()
{
  v1 = OBJC_IVAR____TtC14CookingSupport26AppIntentInvocationMonitor___scope;
  v2 = sub_21A3B233C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_21A37AF60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CookingSupportAppIntentAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A37AFC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A37B02C()
{
  result = qword_2811B2C18;
  if (!qword_2811B2C18)
  {
    type metadata accessor for CookingSupportAppIntentEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B2C18);
  }

  return result;
}

uint64_t sub_21A37B084(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A37B0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_21A37B104, 0, 0);
}

uint64_t sub_21A37B104()
{
  sub_21A3B256C();
  *(v0 + 72) = sub_21A3B255C();
  v2 = sub_21A3B253C();

  return MEMORY[0x2822009F8](sub_21A37B198, v2, v1);
}

void *sub_21A37B198()
{
  v1 = *(v0 + 64);

  sub_21A365B50(&qword_27CD24448, qword_21A3B4870);
  sub_21A360CEC(v1, v1[3]);
  result = sub_21A3B217C();
  if (*(v0 + 40))
  {
    sub_21A360350((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A37B260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_21A37B280, 0, 0);
}

uint64_t sub_21A37B280()
{
  sub_21A3B256C();
  *(v0 + 72) = sub_21A3B255C();
  v2 = sub_21A3B253C();

  return MEMORY[0x2822009F8](sub_21A37B314, v2, v1);
}

void *sub_21A37B314()
{
  v1 = *(v0 + 64);

  sub_21A365B50(&qword_27CD24440, &qword_21A3B4858);
  sub_21A360CEC(v1, v1[3]);
  result = sub_21A3B217C();
  if (*(v0 + 40))
  {
    sub_21A360350((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A37B3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_21A37B3FC, 0, 0);
}

uint64_t sub_21A37B3FC()
{
  sub_21A3B256C();
  *(v0 + 72) = sub_21A3B255C();
  v2 = sub_21A3B253C();

  return MEMORY[0x2822009F8](sub_21A37B490, v2, v1);
}

void *sub_21A37B490()
{
  v1 = *(v0 + 64);

  sub_21A365B50(&qword_27CD24438, &qword_21A3B4840);
  sub_21A360CEC(v1, v1[3]);
  result = sub_21A3B217C();
  if (*(v0 + 40))
  {
    sub_21A360350((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A37B558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_21A37B578, 0, 0);
}

uint64_t sub_21A37B578()
{
  sub_21A3B256C();
  *(v0 + 72) = sub_21A3B255C();
  v2 = sub_21A3B253C();

  return MEMORY[0x2822009F8](sub_21A37B60C, v2, v1);
}

void *sub_21A37B60C()
{
  v1 = *(v0 + 64);

  sub_21A365B50(&qword_27CD24430, &qword_21A3B4828);
  sub_21A360CEC(v1, v1[3]);
  result = sub_21A3B217C();
  if (*(v0 + 40))
  {
    sub_21A360350((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A37B6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_21A37B6F4, 0, 0);
}

uint64_t sub_21A37B6F4()
{
  sub_21A3B256C();
  *(v0 + 72) = sub_21A3B255C();
  v2 = sub_21A3B253C();

  return MEMORY[0x2822009F8](sub_21A37B788, v2, v1);
}

void *sub_21A37B788()
{
  v1 = *(v0 + 64);

  sub_21A365B50(&qword_27CD24080, &qword_21A3B32E0);
  sub_21A360CEC(v1, v1[3]);
  result = sub_21A3B217C();
  if (*(v0 + 40))
  {
    sub_21A360350((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A37B850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_21A37B870, 0, 0);
}

uint64_t sub_21A37B870()
{
  sub_21A3B256C();
  *(v0 + 72) = sub_21A3B255C();
  v2 = sub_21A3B253C();

  return MEMORY[0x2822009F8](sub_21A37B904, v2, v1);
}

void *sub_21A37B904()
{
  v1 = *(v0 + 64);

  sub_21A365B50(&qword_27CD24420, &qword_21A3B47F8);
  sub_21A360CEC(v1, v1[3]);
  result = sub_21A3B217C();
  if (*(v0 + 40))
  {
    sub_21A360350((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A37B9CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A36919C;

  return sub_21A37B850(a1, v4, v1 + 24);
}

uint64_t sub_21A37BA78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A36919C;

  return sub_21A37B6D4(a1, v4, v1 + 24);
}

uint64_t sub_21A37BB24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A36919C;

  return sub_21A37B558(a1, v4, v1 + 24);
}

uint64_t sub_21A37BBD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A36919C;

  return sub_21A37B3DC(a1, v4, v1 + 24);
}

uint64_t sub_21A37BC7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A3650E8;

  return sub_21A37B260(a1, v4, v1 + 24);
}

uint64_t sub_21A37BD28()
{

  sub_21A361318((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21A37BD68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A36919C;

  return sub_21A37B0E4(a1, v4, v1 + 24);
}

unint64_t sub_21A37BE18()
{
  result = qword_27CD24450;
  if (!qword_27CD24450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24450);
  }

  return result;
}

unint64_t sub_21A37BE70()
{
  result = qword_27CD24458;
  if (!qword_27CD24458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24458);
  }

  return result;
}

uint64_t sub_21A37BF14()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A3B212C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_21A3B20EC();
  sub_21A365DFC(v9, qword_27CD24B70);
  sub_21A365DC4(v9, qword_27CD24B70);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A37C0FC(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = type metadata accessor for CookingSupportAppIntentInvocation(0);
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for RecipeEntity(0);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A37C1C0, 0, 0);
}

uint64_t sub_21A37C1C0()
{
  v14 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  *(v0 + 144) = *(v1 + 8);
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v3 = sub_21A3B21DC();
  v4 = sub_21A3B25EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_21A3AF0A8(0xD000000000000015, 0x800000021A3B49A0, &v13);
    _os_log_impl(&dword_21A35E000, v3, v4, "Will perform intent: %{public}s", v5, 0xCu);
    sub_21A361318(v6);
    MEMORY[0x21CED8F60](v6, -1, -1);
    MEMORY[0x21CED8F60](v5, -1, -1);
  }

  v7 = *(v0 + 104);
  v8 = *(v7 + 32);
  v9 = *(v7 + 16);
  *(v0 + 16) = *v7;
  *(v0 + 32) = v9;
  *(v0 + 48) = v8;
  v10 = swift_task_alloc();
  *(v0 + 152) = v10;
  v11 = sub_21A37D490();
  *v10 = v0;
  v10[1] = sub_21A37C404;

  return MEMORY[0x28210B518](&type metadata for UnsaveRecipeAppIntent, v11);
}

uint64_t sub_21A37C404()
{
  v2 = *v1;
  v2[20] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21A37C8E8, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[21] = v3;
    *v3 = v2;
    v3[1] = sub_21A37C594;
    v4 = v2[17];

    return sub_21A3996F0(v4);
  }
}

uint64_t sub_21A37C594()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_21A37C958;
  }

  else
  {
    v2 = sub_21A37C6A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_21A37C6A8()
{
  v1 = v0[22];
  v2 = v0[15];
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();

  sub_21A3B1FDC();
  sub_21A3B187C();
  v3 = *sub_21A360CEC(v0 + 7, v0[10]);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = *(v3 + 16);
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_21A367634;
  *(v6 + 24) = v4;
  v7 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v8));
  sub_21A36763C(v5 + v7);
  if (v1)
  {

    os_unfair_lock_unlock((v5 + v8));
  }

  else
  {
    v9 = v0[17];
    v10 = v0[15];
    os_unfair_lock_unlock((v5 + v8));

    sub_21A361318(v0 + 7);
    sub_21A367658(&qword_27CD23EC8, &unk_21A3B2DD0);
    sub_21A3B19BC();
    sub_21A36769C(v9, type metadata accessor for RecipeEntity);
    sub_21A36769C(v10, type metadata accessor for CookingSupportAppIntentInvocation);

    v11 = v0[1];

    v11();
  }
}

uint64_t sub_21A37C8E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A37C958()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A37C9C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E38 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24B70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A37CA70(uint64_t a1, uint64_t a2)
{
  v2 = sub_21A365B50(&qword_27CD24478, &qword_21A3B49E8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_21A365B50(&qword_27CD24480, &qword_21A3B49F0);
  MEMORY[0x28223BE20](v4, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD24488, qword_21A3B4A20);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A37CC04(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_21A366BA8;

  return sub_21A37C0FC(a1);
}

double sub_21A37CCB0@<D0>(uint64_t a1@<X8>)
{
  sub_21A37CD40(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21A37CCF4(uint64_t a1)
{
  v2 = sub_21A37D490();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A37CD40@<X0>(uint64_t *a1@<X8>)
{
  v51 = a1;
  v1 = sub_21A3B1C4C();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v48 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v47 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v45 = v44 - v9;
  v10 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v44[0] = v44 - v12;
  v13 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v52 = v44 - v15;
  v16 = sub_21A3B20CC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21A3B212C();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v23 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v23 - 8, v24);
  v25 = sub_21A3B20EC();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v44[1] = v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v29 = *MEMORY[0x277CC9110];
  v30 = *(v17 + 104);
  v30(v20, v29, v16);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v30(v20, v29, v16);
  v31 = v52;
  sub_21A3B20FC();
  (*(v26 + 56))(v31, 0, 1, v25);
  v32 = type metadata accessor for RecipeEntity(0);
  (*(*(v32 - 8) + 56))(v44[0], 1, 1, v32);
  v33 = sub_21A3B19AC();
  v34 = *(*(v33 - 8) + 56);
  v34(v45, 1, 1, v33);
  v34(v47, 1, 1, v33);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v53 = 0u;
  v54 = 0u;
  v55 = 0;
  sub_21A3B18DC();
  v35 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v36 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v37 = sub_21A3B188C();
  *&v53 = v35;
  *(&v53 + 1) = v36;
  *&v54 = v37;
  (*(v49 + 104))(v48, *MEMORY[0x277CBA308], v50);
  sub_21A36758C();
  sub_21A367658(&qword_27CD23FB8, &unk_21A3B2C80);
  v38 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v39 = sub_21A3B188C();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v40 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v41 = sub_21A3B188C();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v43 = v51;
  *v51 = v38;
  v43[1] = v39;
  v43[2] = v40;
  v43[3] = v41;
  v43[4] = result;
  return result;
}

unint64_t sub_21A37D490()
{
  result = qword_27CD24470;
  if (!qword_27CD24470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24470);
  }

  return result;
}

unint64_t sub_21A37D4E8()
{
  result = qword_27CD24490;
  if (!qword_27CD24490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24490);
  }

  return result;
}

unint64_t sub_21A37D540()
{
  result = qword_27CD24498;
  if (!qword_27CD24498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD24498);
  }

  return result;
}

uint64_t sub_21A37D5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_21A365B50(&qword_27CD24090, &qword_21A3B4BA0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_21A369020(a3, v23 - v10);
  v12 = sub_21A3B258C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_21A3B1A8C();
  if (v14 == 1)
  {
    sub_21A3612B0(v11);
  }

  else
  {
    sub_21A3B257C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21A3B253C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21A3B24FC() + 32;
      sub_21A3B1A8C();
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

      sub_21A3612B0(a3);

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

  sub_21A3612B0(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21A37D850()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A3B212C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_21A3B20EC();
  sub_21A365DFC(v9, qword_27CD24B88);
  sub_21A365DC4(v9, qword_27CD24B88);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A37DA30(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_21A365B50(&qword_27CD24090, &qword_21A3B4BA0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for RecipeEntity(0);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A37DB3C, 0, 0);
}

uint64_t sub_21A37DB3C()
{
  v11 = v0;
  if (qword_27CD23DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_21A3B21FC();
  sub_21A365DC4(v2, qword_27CD24AB0);
  v0[10] = *v1;
  v0[11] = v1[1];
  v0[12] = v1[2];
  v0[13] = v1[3];
  v0[14] = v1[4];
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v3 = sub_21A3B21DC();
  v4 = sub_21A3B25EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_21A3AF0A8(0xD000000000000019, 0x800000021A3B4B50, &v10);
    _os_log_impl(&dword_21A35E000, v3, v4, "Will perform intent: %{public}s", v5, 0xCu);
    sub_21A361318(v6);
    MEMORY[0x21CED8F60](v6, -1, -1);
    MEMORY[0x21CED8F60](v5, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_21A37DD88;
  v8 = v0[9];

  return sub_21A39A410(v8);
}

uint64_t sub_21A37DD88()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_21A370B1C;
  }

  else
  {
    v2 = sub_21A37DE9C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A37DE9C()
{
  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = sub_21A3B258C();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_21A371C60(v1, v2);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_21A365B98(v2, v9 + v8);
  v10 = v9 + ((v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v6 + 32);
  v12 = *(v6 + 16);
  *v10 = *v6;
  *(v10 + 16) = v12;
  *(v10 + 32) = v11;
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  sub_21A3B1A8C();
  v13 = sub_21A37D5E4(0, 0, v5, &unk_21A3B4BB0, v9);
  v0[17] = v13;
  v14 = swift_task_alloc();
  v0[18] = v14;
  v15 = sub_21A365B50(&qword_27CD241C8, &unk_21A3B3B20);
  *v14 = v0;
  v14[1] = sub_21A37091C;
  v16 = MEMORY[0x277D84950];
  v17 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v15, v13, v17, v15, v16);
}

uint64_t sub_21A37E094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21A37E0B8, 0, 0);
}

uint64_t sub_21A37E0B8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_21A370D5C;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0x286D726F66726570, 0xE900000000000029, sub_21A37F02C, v1, v4);
}

uint64_t sub_21A37E1AC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21A365B50(&qword_27CD241D0, &qword_21A3B4BC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17[-v6];
  v8 = type metadata accessor for CookingSupportAppIntentInvocation(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 16))(v7, a1, v3);

  sub_21A3B1DBC();
  type metadata accessor for CookingSupportAppIntentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_21A3B1FDC();
  sub_21A3B187C();
  v12 = *sub_21A360CEC(v22, v22[3]);
  v21 = v11;
  v13 = *(v12 + 16);
  v18 = sub_21A367634;
  v19 = &v20;
  v14 = *(*v13 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v13 + v15));
  sub_21A36763C(v13 + v14);
  os_unfair_lock_unlock((v13 + v15));
  sub_21A36769C(v11, type metadata accessor for CookingSupportAppIntentInvocation);
  return sub_21A361318(v22);
}

uint64_t sub_21A37E3F0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD23E40 != -1)
  {
    swift_once();
  }

  v2 = sub_21A3B20EC();
  v3 = sub_21A365DC4(v2, qword_27CD24B88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21A37E498(uint64_t a1, uint64_t a2)
{
  v2 = sub_21A365B50(&qword_27CD244B8, &qword_21A3B4BC8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_21A365B50(&qword_27CD244C0, &qword_21A3B4BD0);
  MEMORY[0x28223BE20](v4, v5);
  sub_21A3B1C2C();
  sub_21A3B1C1C();
  swift_getKeyPath();
  sub_21A365B50(&qword_27CD244C8, &qword_21A3B4C00);
  sub_21A3B1C0C();

  sub_21A3B1C1C();
  sub_21A3B1C3C();
  return sub_21A3B1BFC();
}

uint64_t sub_21A37E630(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_21A366BA8;

  return sub_21A37DA30(a1);
}

double sub_21A37E6DC@<D0>(uint64_t a1@<X8>)
{
  sub_21A37E76C(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21A37E720(uint64_t a1)
{
  v2 = sub_21A37EEBC();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_21A37E76C@<X0>(uint64_t *a1@<X8>)
{
  v51 = a1;
  v1 = sub_21A3B1C4C();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v48 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21A365B50(&qword_27CD24000, &unk_21A3B45C0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v47 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v45 = v44 - v9;
  v10 = sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v44[0] = v44 - v12;
  v13 = sub_21A365B50(&qword_27CD23FA8, &unk_21A3B4410);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v52 = v44 - v15;
  v16 = sub_21A3B20CC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21A3B212C();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v23 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v23 - 8, v24);
  v25 = sub_21A3B20EC();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v44[1] = v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_21A365B50(&qword_27CD24008, &unk_21A3B3130);
  sub_21A3B247C();
  sub_21A3B211C();
  v29 = *MEMORY[0x277CC9110];
  v30 = *(v17 + 104);
  v30(v20, v29, v16);
  sub_21A3B20FC();
  sub_21A3B247C();
  sub_21A3B211C();
  v30(v20, v29, v16);
  v31 = v52;
  sub_21A3B20FC();
  (*(v26 + 56))(v31, 0, 1, v25);
  v32 = type metadata accessor for RecipeEntity(0);
  (*(*(v32 - 8) + 56))(v44[0], 1, 1, v32);
  v33 = sub_21A3B19AC();
  v34 = *(*(v33 - 8) + 56);
  v34(v45, 1, 1, v33);
  v34(v47, 1, 1, v33);
  sub_21A365B50(&qword_27CD24010, &qword_21A3B45D0);
  sub_21A3B18EC();
  v53 = 0u;
  v54 = 0u;
  v55 = 0;
  sub_21A3B18DC();
  v35 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC0, qword_21A3B2F70);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v36 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD23FC8, &unk_21A3B3E90);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v37 = sub_21A3B188C();
  *&v53 = v35;
  *(&v53 + 1) = v36;
  *&v54 = v37;
  (*(v49 + 104))(v48, *MEMORY[0x277CBA308], v50);
  sub_21A36758C();
  sub_21A367658(&qword_27CD23FB8, &unk_21A3B2C80);
  v38 = sub_21A3B1A4C();
  sub_21A365B50(&qword_27CD24020, &unk_21A3B3140);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v39 = sub_21A3B188C();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v40 = sub_21A3B188C();
  sub_21A365B50(&qword_27CD24028, &qword_21A3B40B0);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  v41 = sub_21A3B188C();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_21A3B18DC();
  result = sub_21A3B188C();
  v43 = v51;
  *v51 = v38;
  v43[1] = v39;
  v43[2] = v40;
  v43[3] = v41;
  v43[4] = result;
  return result;
}

unint64_t sub_21A37EEBC()
{
  result = qword_27CD244B0;
  if (!qword_27CD244B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD244B0);
  }

  return result;
}

uint64_t sub_21A37EF10(uint64_t a1)
{
  v4 = *(type metadata accessor for RecipeEntity(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A3650E8;

  return sub_21A37E094(a1, v7, v8, v1 + v5, v1 + v6);
}

unint64_t sub_21A37F038()
{
  result = qword_27CD244D0;
  if (!qword_27CD244D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD244D0);
  }

  return result;
}

unint64_t sub_21A37F090()
{
  result = qword_27CD244D8;
  if (!qword_27CD244D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD244D8);
  }

  return result;
}

unint64_t sub_21A37F168()
{
  result = qword_27CD244E0;
  if (!qword_27CD244E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD244E0);
  }

  return result;
}

uint64_t sub_21A37F1BC()
{
  v0 = sub_21A3B20CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A3B212C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_21A3B24DC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_21A3B20EC();
  sub_21A365DFC(v9, qword_27CD24BA0);
  sub_21A365DC4(v9, qword_27CD24BA0);
  sub_21A3B247C();
  sub_21A3B211C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_21A3B20FC();
}

uint64_t sub_21A37F39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  sub_21A365B50(&qword_27CD23F68, &unk_21A3B2F30);
  v3[20] = swift_task_alloc();
  v4 = sub_21A3B1FFC();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F70, &unk_21A3B4D70);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24068, &qword_21A3B3290);
  v3[26] = swift_task_alloc();
  sub_21A365B50(&qword_27CD24070, &unk_21A3B4D80);
  v3[27] = swift_task_alloc();
  sub_21A365B50(&qword_27CD23F78, &unk_21A3B2F40);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v5 = type metadata accessor for RecipeEntity(0);
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v6 = sub_21A3B205C();
  v3[33] = v6;
  v3[34] = *(v6 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A37F660, 0, 0);
}

uint64_t sub_21A37F660(uint64_t a1)
{
  sub_21A3B187C();
  v2 = v1[5];
  v3 = v1[6];
  sub_21A360CEC(v1 + 2, v2);
  v4 = swift_task_alloc();
  v1[38] = v4;
  *v4 = v1;
  v4[1] = sub_21A37F720;

  return MEMORY[0x28214F9F0](v2, v3);
}

uint64_t sub_21A37F720(uint64_t a1)
{
  *(*v1 + 312) = a1;

  return MEMORY[0x2822009F8](sub_21A37F820, 0, 0);
}

uint64_t sub_21A37F820()
{
  v1 = v0[39];
  if (*(v1 + 16) >= 0x14uLL)
  {
    v2 = 20;
  }

  else
  {
    v2 = *(v1 + 16);
  }

  sub_21A361318(v0 + 2);
  sub_21A3B187C();
  v3 = v0[10];
  v4 = v0[11];
  sub_21A360CEC(v0 + 7, v3);
  v5 = *(v1 + 16);
  v6 = v0[39];
  if (v5 == v2)
  {
  }

  else
  {
    sub_21A380A48(v0[39], v6 + 32, 0, (2 * v2) | 1);
    v6 = v8;
  }

  v0[40] = v6;
  v7 = swift_task_alloc();
  v0[41] = v7;
  *v7 = v0;
  v7[1] = sub_21A37F944;

  return MEMORY[0x28214FA48](v6, v3, v4);
}

uint64_t sub_21A37F944(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v4 = sub_21A380150;
  }

  else
  {

    v4 = sub_21A37FA60;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A37FA60()
{
  v1 = v0[42];
  sub_21A361318(v0 + 7);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[34];
    v4 = *(v3 + 16);
    v3 += 16;
    v64 = v4;
    v5 = v0[42] + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v54 = (v0[22] + 8);
    v53 = (v3 - 8);
    v6 = v0[31];
    v55 = MEMORY[0x277D84F90];
    v48 = v0[27];
    v51 = *(v3 + 56);
    v52 = (v6 + 48);
    v49 = v6;
    v50 = (v6 + 56);
    v47 = *MEMORY[0x277CFCD08];
    while (1)
    {
      v62 = v5;
      v63 = v2;
      v7 = v0[26];
      v64(v0[37]);
      sub_21A3B202C();
      v8 = sub_21A3B1E4C();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 48))(v7, 1, v8);
      v11 = v0[26];
      if (v10 == 1)
      {
        break;
      }

      v12 = sub_21A3B1E3C();
      v14 = v13;
      (*(v9 + 8))(v11, v8);
      if (!v14)
      {
        goto LABEL_9;
      }

      v15 = v0[27];
      *v15 = v12;
      *(v48 + 8) = v14;
      v16 = sub_21A3B1EBC();
      v17 = *(v16 - 8);
      (*(v17 + 104))(v15, v47, v16);
      (*(v17 + 56))(v15, 0, 1, v16);
LABEL_10:
      v20 = v0[36];
      v58 = v0[33];
      v59 = v0[35];
      v57 = v0[25];
      v60 = v0[24];
      v21 = v0[23];
      v56 = v0[21];
      v61 = v0[20];
      (v64)(v20, v0[37]);
      sub_21A3B187C();
      sub_21A360CEC(v0 + 12, v0[15]);
      sub_21A3B200C();
      sub_21A3B1FEC();
      (*v54)(v21, v56);
      sub_21A3B1E6C();

      (v64)(v59, v20, v58);
      sub_21A380D24(v57, v60);
      sub_21A3B204C();
      v22 = sub_21A3B1E2C();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v61, 1, v22) == 1)
      {
        sub_21A365D1C(v0[20], &qword_27CD23F68, &unk_21A3B2F30);
        v24 = 0;
        v25 = 0;
      }

      else
      {
        v26 = v0[20];
        v24 = sub_21A3B1E1C();
        v25 = v27;
        (*(v23 + 8))(v26, v22);
      }

      v29 = v0[36];
      v28 = v0[37];
      v30 = v0[33];
      v31 = v0[30];
      v33 = v0[27];
      v32 = v0[28];
      v34 = v0[25];
      sub_21A363DB8(v0[35], v0[24], v24, v25, v32);
      sub_21A365D1C(v34, &qword_27CD23F70, &unk_21A3B4D70);
      v35 = *v53;
      (*v53)(v29, v30);
      sub_21A365D1C(v33, &qword_27CD24070, &unk_21A3B4D80);
      v35(v28, v30);
      v36 = *v52;
      if ((*v52)(v32, 1, v31))
      {
        sub_21A365D1C(v0[28], &qword_27CD23F78, &unk_21A3B2F40);
        v37 = 1;
      }

      else
      {
        sub_21A365B98(v0[28], v0[29]);
        v37 = 0;
      }

      v38 = v0[29];
      v39 = v0[30];
      (*v50)(v38, v37, 1, v39);
      sub_21A361318(v0 + 12);
      if (v36(v38, 1, v39) == 1)
      {
        sub_21A365D1C(v0[29], &qword_27CD23F78, &unk_21A3B2F40);
      }

      else
      {
        sub_21A365B98(v0[29], v0[32]);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v40 = v55;
        }

        else
        {
          v40 = sub_21A39363C(0, v55[2] + 1, 1, v55);
        }

        v42 = v40[2];
        v41 = v40[3];
        if (v42 >= v41 >> 1)
        {
          v40 = sub_21A39363C((v41 > 1), v42 + 1, 1, v40);
        }

        v43 = v0[32];
        v40[2] = v42 + 1;
        v55 = v40;
        sub_21A365B98(v43, v40 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v42);
      }

      v5 = v62 + v51;
      v2 = v63 - 1;
      if (v63 == 1)
      {

        v44 = v55;
        goto LABEL_25;
      }
    }

    sub_21A365D1C(v0[26], &qword_27CD24068, &qword_21A3B3290);
LABEL_9:
    v18 = v0[27];
    v19 = sub_21A3B1EBC();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    goto LABEL_10;
  }

  v44 = MEMORY[0x277D84F90];
LABEL_25:

  v45 = v0[1];

  return v45(v44);
}