unint64_t sub_1C99B1190()
{
  result = qword_1EC3CF450[0];
  if (!qword_1EC3CF450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CF450);
  }

  return result;
}

uint64_t sub_1C99B11E4(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1C99B1204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_1C99B1224(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1C99B12DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1C99B2228(a1, a2, a3);
  return v6;
}

uint64_t sub_1C99B1334(double a1)
{
  sub_1C97A8010(a1);
  v4 = *v1;
  v3 = v1[1];
  sub_1C97AA878();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  sub_1C97AA878();
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_1C9AC19D8;
  *(v6 + 24) = v5;
  v21 = sub_1C97A2CEC(&qword_1EC3CF4E8, &qword_1C9AC19F0);
  v22 = sub_1C994E218(&qword_1EC3CF4F0, &qword_1EC3CF4E8, &qword_1C9AC19F0);
  v19 = &unk_1C9AC19E8;
  v20 = v6;

  sub_1C97A8954(v7);
  if (!v2)
  {

    sub_1C97A592C(&v19);
    v9 = v1[2];
    v8 = v1[3];
    sub_1C97AA878();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    sub_1C97AA878();
    v11 = swift_allocObject();
    *(v11 + 16) = &unk_1C9AC1A00;
    *(v11 + 24) = v10;
    v21 = sub_1C97A2CEC(&qword_1EC3CF4F8, &qword_1C9AC1A18);
    v22 = sub_1C994E218(&qword_1EC3CF500, &qword_1EC3CF4F8, &qword_1C9AC1A18);
    v19 = &unk_1C9AC1A10;
    v20 = v11;

    sub_1C97A8954(v12);

    sub_1C97A592C(&v19);
    v14 = v1[4];
    v13 = v1[5];
    sub_1C97AA878();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;
    sub_1C97AA878();
    v16 = swift_allocObject();
    *(v16 + 16) = &unk_1C9AC1A28;
    *(v16 + 24) = v15;
    v21 = sub_1C97A2CEC(&qword_1EC3CF508, &qword_1C9AC1A40);
    v22 = sub_1C99B45B4();
    v19 = &unk_1C9AC1A38;
    v20 = v16;

    sub_1C97A8954(v17);
  }

  return sub_1C97A592C(&v19);
}

uint64_t sub_1C99B15D0(_OWORD *a1, int *a2)
{
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = a1[2];
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_1C981D1F4;

  return v6(v2 + 16);
}

uint64_t sub_1C99B16D0(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C97DA5D0;

  return v6(v3);
}

uint64_t sub_1C99B17C4()
{
  sub_1C97AA884();
  *(v0 + 64) = v1;

  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  sub_1C994E5AC(v2);

  return sub_1C99B1860();
}

uint64_t sub_1C99B1860()
{
  sub_1C97AA884();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  sub_1C97DA950(v3);

  return sub_1C987B80C();
}

uint64_t sub_1C99B18EC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;
  *(v2 + 48) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C99B19F0()
{
  sub_1C97AA884();

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  sub_1C994E580(v1);

  return sub_1C981BF84();
}

uint64_t sub_1C99B1A94()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97AA84C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v7[8] = v0;

  if (!v0)
  {
    v7[9] = v3;
    v7[10] = v5;
  }

  sub_1C97AA8AC();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C99B1BA8()
{
  sub_1C97AA95C();
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C99B4838(v1, *(v0 + 72));

  sub_1C97AA878();
  v2 = swift_allocObject();
  *(v0 + 88) = v2;
  *(v2 + 16) = &unk_1C9AC1978;
  *(v2 + 24) = v1;
  sub_1C98ADEF4();
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  sub_1C994E580(v3);

  return v5();
}

uint64_t sub_1C99B1C88()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97AA84C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v7[13] = v0;

  if (!v0)
  {
    v7[14] = v3;
    v7[15] = v5;
  }

  sub_1C97AA8AC();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C99B1D9C()
{
  sub_1C97AA95C();
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C99B4838(v1, v0[7]);

  sub_1C97AA878();
  v2 = swift_allocObject();
  v0[8].i64[0] = v2;
  *(v2 + 16) = &unk_1C9AC1998;
  *(v2 + 24) = v1;
  sub_1C98ADEF4();
  v3 = swift_task_alloc();
  v0[8].i64[1] = v3;
  *v3 = v0;
  sub_1C994E580(v3);

  return v5();
}

uint64_t sub_1C99B1E7C()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97AA84C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v7[18] = v0;

  if (!v0)
  {
    v7[19] = v3;
    v7[20] = v5;
  }

  sub_1C97AA8AC();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C99B1F90()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C99B2004()
{
  sub_1C97DA934();
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 16);
  sub_1C97AA878();
  v4 = swift_allocObject();
  sub_1C99B4838(v4, *(v0 + 152));

  sub_1C97AA878();
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_1C9AC19B8;
  *(v5 + 24) = v4;
  *v3 = &unk_1C9AC1988;
  v3[1] = v2;
  v3[2] = &unk_1C9AC19A8;
  v3[3] = v1;
  v3[4] = &unk_1C9AC19C8;
  v3[5] = v5;
  sub_1C97DA8DC();

  return v6();
}

uint64_t sub_1C99B2100()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C99B2180()
{
  sub_1C97AA884();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  sub_1C994E5AC(v2);

  return sub_1C99B17C4();
}

uint64_t *sub_1C99B2228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_defaultActor_initialize();
  swift_weakInit();
  (*(*(*(v7 + 80) - 8) + 32))(v3 + *(*v3 + 104), a1);
  v8 = (v3 + *(*v3 + 112));
  *v8 = a2;
  v8[1] = a3;
  return v3;
}

uint64_t sub_1C99B2304(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  return sub_1C991A5D4(sub_1C99B2348, v1);
}

uint64_t sub_1C99B2348()
{
  sub_1C97AA884();
  v1 = *(v0 + 64);
  v3 = v1[1];
  v2 = v1[2];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = sub_1C9A91D28();
  if (swift_weakLoadStrong())
  {
    sub_1C994D1FC(v4);
  }

  sub_1C97DA8DC();

  return v5();
}

uint64_t sub_1C99B2410()
{
  sub_1C97AA884();
  v1[7] = v2;
  v1[8] = v0;
  v1[9] = *v0;
  v3 = *v0;
  v1[10] = *v0;
  v4 = *(v3 + 80);
  v1[11] = v4;
  v5 = *(v4 - 8);
  v1[12] = v5;
  v1[13] = *(v5 + 64);
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C99B2530, v0, 0);
}

uint64_t sub_1C99B2530()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v16 = v0[9];
  v6 = v0[7];
  v7 = v0[8];
  v8 = (v7 + *(*v7 + 112));
  v18 = *v8;
  v17 = v8[1];
  (*(v3 + 16))(v2, v7 + *(*v7 + 104), v4);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = *(v5 + 88);
  v11 = (*(v3 + 32))(v10 + v9, v2, v4);
  *(v10 + ((v1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v12 = type metadata accessor for CombineSubscriptionFromXPCAdapter(v11);
  swift_allocObject();

  v13 = sub_1C994C5C0(v6, v18, v17, &unk_1C9AC1A58, v10);
  swift_weakAssign();
  v0[5] = v12;
  v0[6] = sub_1C99B47C8(&qword_1EC3CF528, 255, type metadata accessor for CombineSubscriptionFromXPCAdapter, &unk_1C9AB97F0);
  v0[2] = v13;

  sub_1C9A91D18();

  sub_1C97A592C(v0 + 2);

  sub_1C97DA8DC();

  return v14();
}

uint64_t sub_1C99B27A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C99B27C4, 0, 0);
}

uint64_t sub_1C99B27C4()
{
  sub_1C97AA884();
  sub_1C99B2820(*(v0 + 16));
  sub_1C97DA8DC();

  return v1();
}

uint64_t sub_1C99B2868(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return sub_1C991A5D4(sub_1C99B28AC, v1);
}

uint64_t sub_1C99B28AC()
{
  sub_1C97AA884();
  sub_1C99B2820(*(v0 + 16));
  sub_1C97DA8DC();

  return v1();
}

uint64_t sub_1C99B2920()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  swift_weakDestroy();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C99B29D4()
{
  sub_1C99B2920();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C99B2A18(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = a1[2];
  *(v3 + 64) = a2;
  *(v3 + 72) = a3;
  type metadata accessor for AsyncDispatchQueue(0);
  swift_allocObject();
  *(v3 + 80) = sub_1C9928384();
  return v3;
}

uint64_t sub_1C99B2A70(uint64_t a1)
{
  v2 = v1;
  sub_1C97D9AF8(a1, v11);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  type metadata accessor for CombineSubscriptionToXPCAdapterImpl(v5);
  swift_allocObject();

  v6 = sub_1C994BD70(v11, v3, v4);
  v7 = *(v2 + 16);
  v8 = *(v2 + 56);
  sub_1C99B4848();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = *(v2 + 24);
  *(v9 + 40) = *(v2 + 40);
  *(v9 + 56) = v8;
  *(v9 + 64) = &unk_1C9AC1928;
  *(v9 + 72) = v6;
  *(v9 + 80) = &unk_1C9AC1938;
  *(v9 + 88) = v6;
  *(v9 + 96) = &unk_1C9AC1948;
  *(v9 + 104) = v6;
  swift_retain_n();

  sub_1C9928254(&unk_1C9AC1958, v9);
}

uint64_t sub_1C99B2BC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C97DA5D0;

  return sub_1C994C448(a1);
}

uint64_t sub_1C99B2C5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;

  return sub_1C994C4F0();
}

uint64_t sub_1C99B2D0C()
{
  sub_1C97AA884();
  sub_1C97A5A8C((*(v0 + 16) + 112), *(*(v0 + 16) + 136));
  sub_1C9A91D38();
  sub_1C97DA8DC();

  return v1();
}

uint64_t sub_1C99B2D80(uint64_t a1, uint64_t a2)
{
  v6 = (*(a1 + 16) + **(a1 + 16));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C99B2E74;

  return v6(a2);
}

uint64_t sub_1C99B2E74()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C99B2F8C()
{
  sub_1C99B4868();
  sub_1C99B4848();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = *(v1 + 24);
  *(v4 + 40) = *(v1 + 40);
  *(v4 + 56) = v2;
  v5 = v0[1];
  *(v4 + 64) = *v0;
  *(v4 + 80) = v5;
  *(v4 + 96) = v0[2];

  sub_1C99B385C(v0, v7);
  sub_1C9928254(&unk_1C9AC1918, v4);

  return sub_1C9A91D78();
}

uint64_t sub_1C99B3058(int **a1, uint64_t a2)
{
  v6 = (*a1 + **a1);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C99B314C;

  return v6(a2);
}

uint64_t sub_1C99B314C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C99B3264()
{
  sub_1C99B4868();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = *(v1 + 24);
  *(v4 + 40) = *(v1 + 40);
  *(v4 + 56) = v2;
  *(v4 + 64) = v0;
  v5 = v0;
  v6 = v0;

  sub_1C9928254(&unk_1C9AC1908, v4);
}

uint64_t sub_1C99B3340(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C99B3360, 0, 0);
}

uint64_t sub_1C99B3360()
{
  sub_1C97AA95C();
  v1 = *(*(v0 + 16) + 32);
  v2 = *(v0 + 24);
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1C99B3458;
  v4 = *(v0 + 24);

  return v6(v4);
}

uint64_t sub_1C99B3458()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C99B3554()
{
  sub_1C97AA884();
  v1 = *(v0 + 40);

  sub_1C97DA91C();

  return v2();
}

void *sub_1C99B35B8()
{

  return v0;
}

uint64_t sub_1C99B3610()
{
  sub_1C99B35B8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99B374C()
{
  sub_1C97AA884();
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  v3 = sub_1C97AA858(v2);
  *v3 = v4;
  v3[1] = sub_1C97D9C3C;

  return sub_1C99B3340(v0 + 16, v1);
}

uint64_t sub_1C99B37DC()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C99B4854(v1);

  return sub_1C99B3058(v3, v4);
}

uint64_t sub_1C99B38B8()
{
  sub_1C97AA884();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = sub_1C981E178(v2);
  *v3 = v4;
  sub_1C97DA950(v3);

  return sub_1C99B2BC4(v1);
}

uint64_t sub_1C99B3944()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  sub_1C97DA950(v1);

  return sub_1C99B2C5C();
}

uint64_t sub_1C99B39C8()
{
  sub_1C97AA884();
  v1 = swift_task_alloc();
  v2 = sub_1C981E178(v1);
  *v2 = v3;
  sub_1C97DA950(v2);

  return sub_1C99B2CEC(v0);
}

uint64_t sub_1C99B3A4C()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C99B4854(v1);

  return sub_1C99B2D80(v3, v4);
}

uint64_t sub_1C99B3ACC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1C97D9C3C;

  return sub_1C9A21B54();
}

uint64_t sub_1C99B3B78(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = a2[2];
  v6 = swift_task_alloc();
  *(v4 + 64) = v6;
  *v6 = v4;
  v6[1] = sub_1C981DF28;

  return sub_1C9A21A90();
}

uint64_t sub_1C99B3C2C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = a2[2];
  v6 = swift_task_alloc();
  *(v4 + 64) = v6;
  *v6 = v4;
  v6[1] = sub_1C981DF28;

  return sub_1C9A21C14();
}

uint64_t sub_1C99B3CE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;

  return sub_1C98188D4();
}

uint64_t sub_1C99B3D8C(_OWORD *a1)
{
  v2 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = a1[2];
  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v1;
  v3[1] = sub_1C981DF28;

  return sub_1C9818AA8();
}

uint64_t sub_1C99B3E40(_OWORD *a1)
{
  v2 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = a1[2];
  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v1;
  v3[1] = sub_1C981DF28;

  return sub_1C9818C60();
}

uint64_t sub_1C99B3EF4()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C99B3F84()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C99B4014()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C99B40A4()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C99B4134()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C99B41C4()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C99B4254()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C99B42E4()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C994E590();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  sub_1C99B4814(v1);
  sub_1C97DABB0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C99B4374()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C99B4404()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C994E590();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  sub_1C99B4814(v1);
  sub_1C97DABB0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C99B4494()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C99B4524()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C994E590();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  sub_1C99B4814(v1);
  sub_1C97DABB0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1C99B45B4()
{
  result = qword_1EC3CF510;
  if (!qword_1EC3CF510)
  {
    sub_1C97AA4F0(&qword_1EC3CF508, &qword_1C9AC1A40);
    sub_1C99B4640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF510);
  }

  return result;
}

unint64_t sub_1C99B4640()
{
  result = qword_1EC3CF518;
  if (!qword_1EC3CF518)
  {
    sub_1C97AA4F0(&qword_1EC3CF520, &qword_1C9AC1A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF518);
  }

  return result;
}

uint64_t sub_1C99B46BC()
{
  sub_1C97DA934();
  v2 = v1;
  v3 = (*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80);
  v4 = *(v0 + ((*(*(*(v0 + 16) - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  v6 = sub_1C981E178(v5);
  *v6 = v7;
  v6[1] = sub_1C97DA5D0;

  return sub_1C99B27A0(v2, v0 + v3, v4);
}

uint64_t sub_1C99B47C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t static SNUserDefaults.overrideXSupportEnabled(userDefaultsSnapshot:)(uint64_t a1)
{
  v2 = a1;
  if (!a1)
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844(&qword_1EC3C5BA8);
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();
  }

  sub_1C99B66D0();
  sub_1C99B6650(16);
  sub_1C99B590C();
  if (v1)
  {

    return 2;
  }

  else
  {
    sub_1C99B6698();
    sub_1C99B66B4();
    if (v2)
    {
      return 2;
    }

    else
    {
      return v4;
    }
  }
}

double sub_1C99B496C()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844(&qword_1EC3C5BA8);
  }

  v2 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C99B6660(37);
  sub_1C99B5A00();
  if (v0)
  {

    return 5.0;
  }

  else
  {
    sub_1C99B6704();
    result = *&v2;
    if (v1)
    {
      return 5.0;
    }
  }

  return result;
}

double sub_1C99B4A4C()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844(&qword_1EC3C5BA8);
  }

  v2 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C99B6660(31);
  sub_1C99B5A00();
  if (v0)
  {

    return 0.0;
  }

  else
  {
    sub_1C99B6704();
    result = *&v2;
    if (v1)
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t static SNUserDefaults.bypassMovieRemixMusicDetection(userDefaultsSnapshot:)(uint64_t a1)
{
  v2 = a1;
  if (!a1)
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844(&qword_1EC3C5BA8);
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();
  }

  sub_1C99B66D0();
  sub_1C99B6650(30);
  sub_1C99B590C();
  if (v1)
  {

    return 0;
  }

  else
  {
    sub_1C99B6698();
    sub_1C99B66B4();
    return v4 & ~v2;
  }
}

uint64_t sub_1C99B4C14()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844(&qword_1EC3C5BA8);
  }

  v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C99B6660(18);
  sub_1C99B590C();
  if (v0)
  {

    return 0;
  }

  else
  {
    v4 = v2;

    sub_1C99B66B4();
    return v5 & ~v4;
  }
}

uint64_t sub_1C99B4CF8()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844(&qword_1EC3C5BA8);
  }

  v0 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C99B5C7C();
  sub_1C99B5AFC();
  v2 = v1;

  if (v2)
  {
  }

  return sub_1C97BE374();
}

uint64_t static SNUserDefaults.ambientMusicDetectionShortThresholdHigh(userDefaultsSnapshot:)(uint64_t a1)
{
  v2 = a1;
  if (!a1)
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844(&qword_1EC3C5BA8);
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();
  }

  sub_1C99B66D0();
  sub_1C99B6650(39);
  sub_1C99B5A00();
  if (v1)
  {

    return 0;
  }

  else
  {
    sub_1C99B6744();
  }

  return v2;
}

uint64_t static SNUserDefaults.ambientMusicDetectionLongThresholdHigh(userDefaultsSnapshot:)(uint64_t a1)
{
  v2 = a1;
  if (!a1)
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844(&qword_1EC3C5BA8);
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();
  }

  sub_1C99B66D0();
  sub_1C99B6650(38);
  sub_1C99B5A00();
  if (v1)
  {

    return 0;
  }

  else
  {
    sub_1C99B6744();
  }

  return v2;
}

uint64_t static SNUserDefaults.ambientMusicDetectionThresholdLow(userDefaultsSnapshot:)(uint64_t a1)
{
  v2 = a1;
  if (!a1)
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844(&qword_1EC3C5BA8);
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();
  }

  sub_1C99B66D0();
  sub_1C99B6650(33);
  sub_1C99B5A00();
  if (v1)
  {

    return 0;
  }

  else
  {
    sub_1C99B6744();
  }

  return v2;
}

uint64_t static SNUserDefaults.isHomeSoundRecognitionOptimizationEnabled(userDefaultsSnapshot:)(uint64_t a1)
{
  v2 = a1;
  if (!a1)
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844(&qword_1EC3C5BA8);
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();
  }

  sub_1C99B66D0();
  sub_1C99B6650(38);
  sub_1C99B590C();
  if (v1)
  {

    return 0;
  }

  else
  {
    sub_1C99B6698();
    sub_1C99B66B4();
    return v4 & ~v2;
  }
}

id sub_1C99B51EC()
{
  v0 = sub_1C9A924A8();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_1C99B65EC(v0, v2);
  if (result)
  {
    qword_1EC3C5BB0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static SNUserDefaults.singleton.getter()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844(&qword_1EC3C5BA8);
  }

  v1 = qword_1EC3C5BB0;

  return v1;
}

id sub_1C99B529C(uint64_t a1)
{
  v3 = sub_1C97BD360(a1, v35);
  if (sub_1C99B6678(v3, v4, v5, MEMORY[0x1E69E6158], v6, v7, v8, v9, v30, v33, v35[0]))
  {
    return v31;
  }

  sub_1C97BD360(a1, v35);
  v12 = sub_1C97BD318(v11, 0, &qword_1EC3C54B0, 0x1E696AD98);
  if (sub_1C99B6678(v12, v13, v14, v12, v15, v16, v17, v18, v31, v34, v35[0]))
  {
    v20 = [v32 stringValue];
    v10 = sub_1C9A924A8();
  }

  else
  {
    type metadata accessor for SNError(v19);
    sub_1C99B6720();
    sub_1C99B66C0();
    MEMORY[0x1CCA90230](v21 + 10, v22 | 0x8000000000000000);
    sub_1C9A93728();
    v23 = v35[1];
    v24 = sub_1C97FB260();
    v10 = v1;
    sub_1C9929478(v24, v25, v26, v27, v28, v23);

    swift_willThrow();
  }

  return v10;
}

id sub_1C99B53F4(uint64_t a1)
{
  v3 = sub_1C97BD360(a1, v35);
  if (sub_1C99B6678(v3, v4, v5, MEMORY[0x1E69E6158], v6, v7, v8, v9, v30, v33, v35[0]))
  {
    v11 = sub_1C98445B8(v31, v34, v10);
  }

  else
  {
    sub_1C97BD360(a1, v35);
    v13 = sub_1C97BD318(v12, 0, &qword_1EC3C54B0, 0x1E696AD98);
    if (sub_1C99B6678(v13, v14, v15, v13, v16, v17, v18, v19, v31, v34, v35[0]))
    {
      return v32;
    }

    else
    {
      type metadata accessor for SNError(v20);
      sub_1C99B6720();
      sub_1C99B66C0();
      MEMORY[0x1CCA90230](v21 + 10, v22 | 0x8000000000000000);
      sub_1C9A93728();
      v23 = v35[1];
      v24 = sub_1C97FB260();
      v11 = v1;
      sub_1C9929478(v24, v25, v26, v27, v28, v23);

      swift_willThrow();
    }
  }

  return v11;
}

void sub_1C99B5530(uint64_t a1)
{
  sub_1C97BD360(a1, &v43);
  sub_1C97A2CEC(&unk_1EC3C8690, &qword_1C9AA3B70);
  if (swift_dynamicCast())
  {
    v3 = v41;
    v4 = *(v41 + 16);
    if (v4)
    {
      v42 = MEMORY[0x1E69E7CC0];
      sub_1C97B7C28(0, v4, 0);
      v5 = 0;
      v6 = v42;
      v7 = v41 + 32;
      while (v5 < *(v3 + 16))
      {
        sub_1C97BD360(v7, &v43);
        v8 = sub_1C99B53F4(&v43);
        if (v1)
        {
          sub_1C97A592C(&v43);

          return;
        }

        v9 = v8;
        v40 = v6;
        v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        v11 = [v9 longLongValue];
        if (v11 != [v10 longLongValue] || (objc_msgSend(v9, sel_doubleValue), v13 = v12, objc_msgSend(v10, sel_doubleValue), v13 != v14))
        {

LABEL_17:

          type metadata accessor for SNError(v30);
          sub_1C9A935B8();

          v31 = [v9 description];
          v32 = sub_1C9A924A8();
          v34 = v33;

          MEMORY[0x1CCA90230](v32, v34);

          v35 = sub_1C97FB260();
          sub_1C9929478(v35, v36, v37, v38, v39, 0x80000001C9ADC0F0);

          swift_willThrow();

          sub_1C97A592C(&v43);

          return;
        }

        v15 = [v9 isEqual_];

        if (!v15)
        {
          goto LABEL_17;
        }

        v16 = v3;
        v17 = v4;
        v18 = [v9 integerValue];

        sub_1C97A592C(&v43);
        v6 = v40;
        v20 = *(v40 + 16);
        v19 = *(v40 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1C97B7C28(v19 > 1, v20 + 1, 1);
          v6 = v40;
        }

        ++v5;
        *(v6 + 16) = v20 + 1;
        *(v6 + 8 * v20 + 32) = v18;
        v7 += 32;
        v4 = v17;
        v21 = v17 == v5;
        v3 = v16;
        if (v21)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:
    }
  }

  else
  {
    type metadata accessor for SNError(v2);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1C9A935B8();
    sub_1C99B66C0();
    MEMORY[0x1CCA90230](v22 | 8, v23 | 0x8000000000000000);
    sub_1C9A93728();
    v24 = v44;
    v25 = sub_1C97FB260();
    sub_1C9929478(v25, v26, v27, v28, v29, v24);

    swift_willThrow();
  }
}

id sub_1C99B590C()
{
  sub_1C99B676C();
  if (v5 && (v0 = v4, v6 = sub_1C9A32230(v2, v3), (v7 & 1) != 0))
  {
    sub_1C99B66E8(v6, v7, v8, v9, v10, v11, v12, v13, v26, *(&v26 + 1), v27, v28, v29, *(&v29 + 1), v30, v31);
  }

  else
  {
    memset(v32, 0, sizeof(v32));
  }

  sub_1C97A2C7C(v32, &v29);
  if (v31)
  {
    v14 = sub_1C97A2D34(&v29, &v26);
    v22 = sub_1C99B6760(v14, v15, v16, v17, v18, v19, v20, v21, v26);
    v23 = sub_1C99B53F4(v22);
    if (!v1)
    {
      v24 = v23;
      sub_1C999C710();
      v0 = [v24 integerValue];
    }

    sub_1C97A592C(&v26);
    sub_1C97A59D0(v32);
  }

  else
  {
    sub_1C97A59D0(v32);
    return 0;
  }

  return v0;
}

uint64_t sub_1C99B5A00()
{
  sub_1C99B676C();
  if (v3 && (v4 = sub_1C9A32230(v1, v2), (v5 & 1) != 0))
  {
    sub_1C99B66E8(v4, v5, v6, v7, v8, v9, v10, v11, v26, *(&v26 + 1), v27, v28, v29, *(&v29 + 1), v30, v31);
  }

  else
  {
    memset(v32, 0, sizeof(v32));
  }

  sub_1C97A2C7C(v32, &v29);
  if (v31)
  {
    v12 = sub_1C97A2D34(&v29, &v26);
    v20 = sub_1C99B6760(v12, v13, v14, v15, v16, v17, v18, v19, v26);
    v21 = sub_1C99B53F4(v20);
    if (v0)
    {
      sub_1C97A592C(&v26);
      return sub_1C97A59D0(v32);
    }

    else
    {
      v22 = v21;
      sub_1C999C604();
      [v22 doubleValue];
      v24 = v23;

      sub_1C97A592C(&v26);
      sub_1C97A59D0(v32);
      return v24;
    }
  }

  else
  {
    sub_1C97A59D0(v32);
    return 0;
  }
}

id sub_1C99B5AFC()
{
  sub_1C99B676C();
  if (v5 && (v0 = v4, v6 = sub_1C9A32230(v2, v3), (v7 & 1) != 0))
  {
    sub_1C99B66E8(v6, v7, v8, v9, v10, v11, v12, v13, v25, *(&v25 + 1), v26, v27, v28, *(&v28 + 1), v29, v30);
  }

  else
  {
    memset(v31, 0, sizeof(v31));
  }

  sub_1C97A2C7C(v31, &v28);
  if (v30)
  {
    v14 = sub_1C97A2D34(&v28, &v25);
    v22 = sub_1C99B6760(v14, v15, v16, v17, v18, v19, v20, v21, v25);
    v23 = sub_1C99B529C(v22);
    if (!v1)
    {
      v0 = v23;
    }

    sub_1C97A592C(&v25);
    sub_1C97A59D0(v31);
  }

  else
  {
    sub_1C97A59D0(v31);
    return 0;
  }

  return v0;
}

uint64_t sub_1C99B5BC8()
{
  sub_1C99B676C();
  if (v4 && (v5 = v3, v6 = sub_1C9A32230(v1, v2), (v7 & 1) != 0))
  {
    sub_1C97BD360(*(v5 + 56) + 32 * v6, v24);
  }

  else
  {
    memset(v24, 0, sizeof(v24));
  }

  sub_1C97A2C7C(v24, &v22);
  if (v23)
  {
    v8 = sub_1C97A2D34(&v22, v21);
    v16 = sub_1C99B6760(v8, v9, v10, v11, v12, v13, v14, v15, *&v21[0]);
    sub_1C99B5530(v16);
    v18 = v17;
    sub_1C97A592C(v21);
    sub_1C97A59D0(v24);
    if (v0)
    {
      return v19;
    }

    else
    {
      return v18;
    }
  }

  else
  {
    sub_1C97A59D0(v24);
    return 0;
  }
}

uint64_t sub_1C99B5C7C()
{
  sub_1C97A2CEC(&qword_1EC3C6CA0, &qword_1C9A9D660);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C9AA95C0;
  v1 = NSHomeDirectory();
  v2 = sub_1C9A924A8();
  v4 = v3;

  *(v0 + 32) = v2;
  *(v0 + 40) = v4;
  *(v0 + 48) = 0x7972617262694CLL;
  *(v0 + 56) = 0xE700000000000000;
  *(v0 + 64) = 0x736568636143;
  *(v0 + 72) = 0xE600000000000000;
  *(v0 + 80) = 0xD000000000000018;
  *(v0 + 88) = 0x80000001C9AD6F00;
  strcpy((v0 + 96), "AudioCaptures");
  *(v0 + 110) = -4864;
  v5 = objc_opt_self();
  v6 = sub_1C9A92768();

  v7 = [v5 pathWithComponents_];

  v8 = sub_1C9A924A8();
  return v8;
}

uint64_t sub_1C99B5DCC()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844(&qword_1EC3C5BA8);
  }

  v0 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C99B5C7C();
  sub_1C99B5AFC();
  v2 = v1;

  if (v2)
  {
  }

  return sub_1C97BE374();
}

uint64_t sub_1C99B5ED8()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844(&qword_1EC3C5BA8);
  }

  v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C99B6660(35);
  sub_1C99B590C();
  if (v0)
  {

    return 0;
  }

  else
  {
    v4 = v2;

    sub_1C99B66B4();
    return v5 & ~v4;
  }
}

uint64_t sub_1C99B5FBC()
{
  sub_1C99B5AFC();
  if (!v0)
  {
    return 0;
  }

  sub_1C97BD318(v1, 0, &qword_1EC3CF530, 0x1E696AE18);
  sub_1C97BE374();
  v2 = sub_1C9A92F28();

  return v2;
}

id sub_1C99B606C()
{
  if (qword_1EC3C5BA8 != -1)
  {
    sub_1C9871844(&qword_1EC3C5BA8);
  }

  v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  sub_1C99B6660(43);
  sub_1C99B590C();
  if (v0)
  {

    return 0;
  }

  else
  {
    sub_1C99B6704();
  }

  return v1;
}

uint64_t sub_1C99B61AC(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844(&qword_1EC3C5BA8);
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();
  }

  sub_1C97BE374();
  v2 = sub_1C99B590C();
  v4 = v3;

  return (v2 != 0) & ~v4;
}

uint64_t static SNUserDefaults.homeSoundRecognitionUltronReportsEnabled(userDefaultsSnapshot:)(uint64_t a1)
{
  v2 = a1;
  if (!a1)
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844(&qword_1EC3C5BA8);
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();
  }

  sub_1C99B66D0();
  sub_1C99B6650(39);
  sub_1C99B590C();
  if (v1)
  {

    return 0;
  }

  else
  {
    sub_1C99B6698();
    sub_1C99B66B4();
    return v4 & ~v2;
  }
}

uint64_t static SNUserDefaults.isLPPostProcessingBypassed(userDefaultsSnapshot:)(uint64_t a1)
{
  v2 = a1;
  if (!a1)
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844(&qword_1EC3C5BA8);
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();
  }

  sub_1C99B66D0();
  sub_1C99B6650(22);
  sub_1C99B590C();
  if (v1)
  {

    return 0;
  }

  else
  {
    sub_1C99B6698();
    sub_1C99B66B4();
    return v4 & ~v2;
  }
}

_BYTE *storeEnumTagSinglePayload for SNUserDefaults(_BYTE *result, int a2, int a3)
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

id sub_1C99B65EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C9A92478();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_1C99B6678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

uint64_t sub_1C99B6698()
{
}

uint64_t sub_1C99B66D0()
{
}

uint64_t sub_1C99B66E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v18 = *(v16 + 56) + 32 * a1;

  return sub_1C97BD360(v18, va);
}

uint64_t sub_1C99B6704()
{
}

uint64_t sub_1C99B6720()
{

  return sub_1C9A935B8();
}

uint64_t sub_1C99B6744()
{
}

char *sub_1C99B6778(uint64_t a1)
{
  v2 = sub_1C9A91418();
  v4 = sub_1C99B681C(v2, v3);

  if (v4 != 3)
  {
    return sub_1C99B6910(a1, v4);
  }

  sub_1C97A8E8C();
  swift_allocError();
  *v5 = 0;
  return swift_willThrow();
}

uint64_t sub_1C99B681C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    v5 = byte_1F4929DC8[v4 + 32];
    if (byte_1F4929DC8[v4 + 32])
    {
      v6 = v5 == 1 ? 0x636C65646F6D6C6DLL : 0x656C646E7562;
      v7 = v5 == 1 ? 0xE800000000000000 : 0xE600000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
      v6 = 0x6C65646F6D6C6DLL;
    }

    if (v6 == a1 && v7 == a2)
    {
      break;
    }

    v9 = sub_1C9A93B18();

    if (v9)
    {
      return v5;
    }

    if (++v4 == 3)
    {
      return 3;
    }
  }

  return v5;
}

char *sub_1C99B6910(uint64_t a1, char a2)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1C9A91558();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v37 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v37 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v18 = v37 - v17;
  if (a2)
  {
    if (a2 == 1)
    {
      v15 = sub_1C99B6CF0(v16);
      (*(v6 + 16))(v12, a1, v5);
      v19 = sub_1C99B6D34(v12);
      if (!v2)
      {
        return v19;
      }
    }

    else
    {
      v27 = sub_1C9880658();
      if (!v2)
      {
        v28 = v27;
        type metadata accessor for E5RTExecutionStream(0);
        swift_allocObject();
        v15 = sub_1C9880798(v28);
        type metadata accessor for E5RTExecutionStreamOperation(v29);
        sub_1C9A913F8();
        v30 = sub_1C9A91508();
        v32 = v31;
        (*(v6 + 8))(v9, v5);
        sub_1C98817E8(1852399981, 0xE400000000000000, v30, v32, 1852399981, 0xE400000000000000, 1, 1);
        v35 = v34;

        sub_1C9882AF4(v35, 1);
        sub_1C9880DE8(v35);
      }
    }
  }

  else
  {
    v20 = objc_opt_self();
    v21 = sub_1C9A91488();
    v37[0] = 0;
    v22 = [v20 compileModelAtURL:v21 error:v37];

    v23 = v37[0];
    if (v22)
    {
      sub_1C9A914F8();
      v24 = v23;

      sub_1C99B6CF0(v25);
      (*(v6 + 16))(v15, v18, v5);
      v26 = sub_1C99B6D34(v15);
      if (!v2)
      {
        v15 = v26;
      }

      (*(v6 + 8))(v18, v5);
    }

    else
    {
      v33 = v37[0];
      sub_1C9A913C8();

      swift_willThrow();
    }
  }

  return v15;
}

unint64_t sub_1C99B6CF0(double a1)
{
  result = qword_1EC3C54C0;
  if (!qword_1EC3C54C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C54C0);
  }

  return result;
}

id sub_1C99B6D34(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C9A91488();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1C9A91558();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1C9A913C8();

    swift_willThrow();
    v9 = sub_1C9A91558();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

BOOL sub_1C99B6E8C(uint64_t a1, uint64_t a2)
{
  result = 0;
  v5 = *(a1 + 8) == *(a2 + 8) && *a1 == *a2;
  v6 = vminv_u16(vmovn_s32(vceqq_s32(*(a1 + 28), *(a2 + 28)))) & (*(a1 + 4) == *(a2 + 4));
  if (*(a1 + 16) != *(a2 + 16))
  {
    LOBYTE(v6) = 0;
  }

  if (*(a1 + 44) != *(a2 + 44))
  {
    LOBYTE(v6) = 0;
  }

  v7 = v6 & (v5 && *(a1 + 12) == *(a2 + 12));
  if (*(a1 + 20) != *(a2 + 20))
  {
    v7 = 0;
  }

  if (v7 == 1 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0)
  {
    return *(a1 + 48) == *(a2 + 48);
  }

  return result;
}

uint64_t sub_1C99B6F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6152656C706D6173 && a2 == 0xEA00000000006574;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x61426C654D6D756ELL && a2 == 0xEB0000000073646ELL;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x75716572466E696DLL && a2 == 0xEC00000079636E65;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x757165724678616DLL && a2 == 0xEC00000079636E65;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x657079546C656DLL && a2 == 0xE700000000000000;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C69737045676F6CLL && a2 == 0xEA00000000006E6FLL;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C6F707265746E69 && a2 == 0xEF7A486E49657461;
              if (v11 || (sub_1C9A93B18() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x74676E654C706F68 && a2 == 0xE900000000000068;
                if (v12 || (sub_1C9A93B18() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x654C776F646E6977 && a2 == 0xEC0000006874676ELL;
                  if (v13 || (sub_1C9A93B18() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x664F776F646E6977 && a2 == 0xEC00000074657366;
                    if (v14 || (sub_1C9A93B18() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x74676E654C746666 && a2 == 0xE900000000000068;
                      if (v15 || (sub_1C9A93B18() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x657366664F746666 && a2 == 0xE900000000000074;
                        if (v16 || (sub_1C9A93B18() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000015 && 0x80000001C9ADCA80 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1C9A93B18();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
  }
}

uint64_t sub_1C99B7354(char a1)
{
  result = 0x6152656C706D6173;
  switch(a1)
  {
    case 1:
      return 0x61426C654D6D756ELL;
    case 2:
      v3 = 1181641069;
      return v3 | 0x7571657200000000;
    case 3:
      v3 = 1182294381;
      return v3 | 0x7571657200000000;
    case 4:
      return 0x657079546C656DLL;
    case 5:
      return 0x6C69737045676F6CLL;
    case 6:
      return 0x6C6F707265746E69;
    case 7:
      v4 = 1282436968;
      goto LABEL_14;
    case 8:
      return 0x654C776F646E6977;
    case 9:
      return 0x664F776F646E6977;
    case 10:
      v4 = 1282696806;
LABEL_14:
      result = v4 | 0x74676E6500000000;
      break;
    case 11:
      result = 0x657366664F746666;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C99B74D4(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CF570, &qword_1C9AC1BA8);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7;
  v9 = *(v1 + 4);
  v19 = *(v1 + 16);
  v20 = v9;
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v18[6] = *(v1 + 28);
  v18[7] = v10;
  LODWORD(v7) = *(v1 + 40);
  v18[4] = *(v1 + 36);
  v18[5] = v11;
  v18[3] = v7;
  v12 = *(v1 + 48);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99B7FB4();
  sub_1C9A93DD8();
  LOBYTE(v23) = 0;
  v13 = v21;
  sub_1C9A939F8();
  if (!v13)
  {
    v14 = v19;
    LODWORD(v21) = v12;
    sub_1C99B840C(1);
    sub_1C99B83F0();
    sub_1C9A93A58();
    LOBYTE(v23) = 2;
    sub_1C99B8400();
    sub_1C9A939F8();
    LOBYTE(v23) = 3;
    sub_1C99B8400();
    sub_1C9A939F8();
    v23 = v14;
    v22 = 4;
    sub_1C97A2CEC(&qword_1EC3CF550, &qword_1C9AC1B98);
    sub_1C97FB178();
    sub_1C99B8064(v16);
    sub_1C99B8400();
    sub_1C9A93A18();
    LOBYTE(v23) = 5;
    sub_1C99B8400();
    sub_1C9A939F8();
    sub_1C99B840C(6);
    sub_1C99B83F0();
    sub_1C9A939D8();
    sub_1C99B840C(7);
    sub_1C99B83F0();
    sub_1C9A93A58();
    sub_1C99B840C(8);
    sub_1C99B83F0();
    sub_1C9A93A58();
    sub_1C99B840C(9);
    sub_1C99B83F0();
    sub_1C9A93A58();
    sub_1C99B840C(10);
    sub_1C99B8400();
    sub_1C9A93A58();
    sub_1C99B840C(11);
    sub_1C9A93A28();
    v23 = v21;
    v22 = 12;
    sub_1C97A2CEC(&qword_1EC3CF560, &qword_1C9AC1BA0);
    sub_1C97FB178();
    sub_1C99B8008(v17);
    sub_1C9A93A18();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C99B7894()
{
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CE8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  return sub_1C9A93CF8();
}

uint64_t sub_1C99B7998()
{
  sub_1C9A93CC8();
  sub_1C99B7894();
  return sub_1C9A93D18();
}

uint64_t sub_1C99B79D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CF540, &qword_1C9AC1B90);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99B7FB4();
  sub_1C9A93DB8();
  if (!v2)
  {
    LOBYTE(v38) = 0;
    sub_1C9A938D8();
    v12 = v11;
    sub_1C99B83D8(1);
    v13 = sub_1C9A93938();
    sub_1C99B83D8(2);
    sub_1C9A938D8();
    v15 = v14;
    sub_1C99B83D8(3);
    sub_1C9A938D8();
    v17 = v16;
    sub_1C97A2CEC(&qword_1EC3CF550, &qword_1C9AC1B98);
    v37 = 4;
    sub_1C97FB160();
    v19 = sub_1C99B8064(v18);
    sub_1C99B8418(v19);
    v20 = v38;
    sub_1C99B83D8(5);
    sub_1C9A938D8();
    v22 = v21;
    sub_1C99B83D8(6);
    v36 = sub_1C9A938B8();
    sub_1C99B83D8(7);
    v35 = sub_1C9A93938();
    sub_1C99B83D8(8);
    v34 = sub_1C9A93938();
    sub_1C99B83D8(9);
    v33 = sub_1C9A93938();
    sub_1C99B83D8(10);
    v32 = sub_1C9A93938();
    sub_1C99B83D8(11);
    v31 = sub_1C9A93908();
    sub_1C97A2CEC(&qword_1EC3CF560, &qword_1C9AC1BA0);
    v37 = 12;
    sub_1C97FB160();
    v25 = sub_1C99B8008(v24);
    sub_1C99B8418(v25);
    (*(v7 + 8))(v10, v5);
    v26 = v36 & 1;
    v27 = v38;
    *a2 = v12;
    *(a2 + 4) = v13;
    *(a2 + 8) = v15;
    *(a2 + 12) = v17;
    *(a2 + 16) = v20;
    *(a2 + 20) = v22;
    *(a2 + 24) = v26;
    v28 = v34;
    *(a2 + 28) = v35;
    *(a2 + 32) = v28;
    v29 = v32;
    *(a2 + 36) = v33;
    *(a2 + 40) = v29;
    *(a2 + 44) = v31;
    *(a2 + 48) = v27;
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C99B7D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99B6F48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99B7D3C(uint64_t a1)
{
  v2 = sub_1C99B7FB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99B7D78(uint64_t a1)
{
  v2 = sub_1C99B7FB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99B7DBC()
{
  sub_1C9A93CC8();
  sub_1C99B7894();
  return sub_1C9A93D18();
}

uint64_t *sub_1C99B7E2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v3 = sub_1C9A6936C(v6);
  if (v3)
  {
    *(v1 + 16) = v3;
  }

  else
  {
    sub_1C97E791C();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v1;
}

uint64_t sub_1C99B7EF0()
{
  sub_1C9A693E4(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1C99B7F60()
{
  result = qword_1EC3CF538;
  if (!qword_1EC3CF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF538);
  }

  return result;
}

unint64_t sub_1C99B7FB4()
{
  result = qword_1EC3CF548;
  if (!qword_1EC3CF548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF548);
  }

  return result;
}

uint64_t sub_1C99B8008(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = sub_1C97AA4F0(&qword_1EC3CF560, &qword_1C9AC1BA0);
    result = sub_1C97FB3F0(v3);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C99B8064(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = sub_1C97AA4F0(&qword_1EC3CF550, &qword_1C9AC1B98);
    result = sub_1C97FB3F0(v3);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LogMelParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LogMelSpectrogramUtilsError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C99B827C()
{
  result = qword_1EC3CF588;
  if (!qword_1EC3CF588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF588);
  }

  return result;
}

unint64_t sub_1C99B82D4()
{
  result = qword_1EC3CF590;
  if (!qword_1EC3CF590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF590);
  }

  return result;
}

unint64_t sub_1C99B832C()
{
  result = qword_1EC3CF598;
  if (!qword_1EC3CF598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF598);
  }

  return result;
}

unint64_t sub_1C99B8384()
{
  result = qword_1EC3CF5A0;
  if (!qword_1EC3CF5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF5A0);
  }

  return result;
}

uint64_t sub_1C99B8418(uint64_t a1)
{

  return sub_1C9A938F8();
}

void sub_1C99B8448()
{
  sub_1C97AEB94();
  v35 = v0;
  v48 = v1;
  v43 = v2;
  v4 = v3;
  v42 = sub_1C9A91408();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C9A91558();
  sub_1C97AE9C8();
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v40 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v39 = &v34 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  v19 = sub_1C97BDEE0();
  v20 = 0;
  v46 = v4 & 0xC000000000000001;
  v47 = v19;
  v44 = v4 & 0xFFFFFFFFFFFFFF8;
  v45 = v4;
  v38 = *MEMORY[0x1E6968F70];
  v36 = (v6 + 8);
  v37 = (v6 + 104);
  v34 = v11;
  v21 = (v11 + 8);
  while (1)
  {
    if (v47 == v20)
    {

LABEL_13:
      sub_1C97AEB5C();
      return;
    }

    if (v46)
    {
      v22 = MEMORY[0x1CCA912B0](v20, v45);
    }

    else
    {
      if (v20 >= *(v44 + 16))
      {
        goto LABEL_15;
      }

      v22 = *(v45 + 8 * v20 + 32);
    }

    if (__OFADD__(v20, 1))
    {
      break;
    }

    v51 = v22;
    v23 = [v22 resourceURL];
    if (!v23)
    {
      goto LABEL_16;
    }

    v24 = v23;
    v25 = v39;
    sub_1C9A914F8();

    v26 = v42;
    v49 = v43;
    v50 = v48;
    v27 = v41;
    (*v37)(v41, v38, v42);
    sub_1C98449A8();
    sub_1C9A91538();
    (*v36)(v27, v26);
    v28 = *v21;
    (*v21)(v25, v9);
    v29 = [objc_opt_self() defaultManager];
    v30 = v40;
    sub_1C9A913F8();
    sub_1C9A91518();
    v28(v30, v9);
    v31 = sub_1C9A92478();

    v32 = [v29 fileExistsAtPath_];

    if (v32)
    {
      v33 = v35;
      sub_1C9927650(v35);
      (*(v34 + 32))(v33, v18, v9);
      sub_1C97ACC50(v33, 0, 1, v9);

      goto LABEL_13;
    }

    v28(v18, v9);

    ++v20;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1C99B8818()
{
  sub_1C97AEB94();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v15 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1C9A93258();
  sub_1C97AE9C8();
  v12 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C98021C4();
  (*(v3 + 16))(v7, v5, v3);
  if (!v0)
  {
    if (sub_1C97ABF20(v1, 1, AssociatedTypeWitness) == 1)
    {
      (*(v12 + 8))(v1, v10);
      sub_1C98C9D48();
      swift_allocError();
      *v14 = v7;
      swift_willThrow();
    }

    else
    {
      (*(*(AssociatedTypeWitness - 8) + 32))(v15, v1, AssociatedTypeWitness);
    }
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C99B89AC()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v2 = byte_1F4929E90[v0 + 32];
    v3 = sub_1C99BF4B4(v2);
    if (v4)
    {
      v5 = v3;
      v6 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C97E5800();
        v1 = v9;
      }

      v7 = *(v1 + 16);
      if (v7 >= *(v1 + 24) >> 1)
      {
        sub_1C97E5800();
        v1 = v10;
      }

      *(v1 + 16) = v7 + 1;
      v8 = v1 + 24 * v7;
      *(v8 + 32) = v2;
      *(v8 + 40) = v5;
      *(v8 + 48) = v6;
    }

    ++v0;
  }

  while (v0 != 44);

  return sub_1C992C2A8(v1);
}

void sub_1C99B8AAC(uint64_t a1)
{
  sub_1C99BF4B4(a1);
  v2 = v1;
  sub_1C97A2CEC(&unk_1EC3C6E20, &qword_1C9A9FF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9DF30;
  type metadata accessor for SoundAnalysisBundleMarker(COERCE_DOUBLE(1));
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(inited + 32) = [objc_opt_self() bundleForClass_];
  sub_1C99BF8D0(v5);
  if (sub_1C99B8C4C(0xD000000000000068, 0x80000001C9AD80B0))
  {
    MEMORY[0x1CCA90400]();
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C9A92808();
    }

    sub_1C9A92868();
  }

  v6 = sub_1C9A91558();
  sub_1C99C2D68(v6);
  if (v2)
  {

    sub_1C99B8448();
    v8 = v7;

    swift_bridgeObjectRelease_n();
  }

  else
  {
  }
}

id sub_1C99B8C4C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C9A92478();

  v4 = [v2 initWithPath_];

  return v4;
}

uint64_t sub_1C99B8CC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x80000001C9ADD210 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001C9ADD230 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001C9ADD250 == a2;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001C9ADD270 == a2;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001ALL && 0x80000001C9ADD290 == a2;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001C9ADD2B0 == a2;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x80000001C9ADD2D0 == a2;
              if (v11 || (sub_1C9A93B18() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x80000001C9ADD2F0 == a2;
                if (v12 || (sub_1C9A93B18() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000013 && 0x80000001C9ADD310 == a2;
                  if (v13 || (sub_1C9A93B18() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000011 && 0x80000001C9ADD330 == a2;
                    if (v14 || (sub_1C9A93B18() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000014 && 0x80000001C9ADD350 == a2;
                      if (v15 || (sub_1C9A93B18() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000013 && 0x80000001C9ADD370 == a2;
                        if (v16 || (sub_1C9A93B18() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000014 && 0x80000001C9ADD390 == a2;
                          if (v17 || (sub_1C9A93B18() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000015 && 0x80000001C9ADD3B0 == a2;
                            if (v18 || (sub_1C9A93B18() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000015 && 0x80000001C9ADD3D0 == a2;
                              if (v19 || (sub_1C9A93B18() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000019 && 0x80000001C9ADD3F0 == a2;
                                if (v20 || (sub_1C9A93B18() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD00000000000001BLL && 0x80000001C9ADD410 == a2;
                                  if (v21 || (sub_1C9A93B18() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000011 && 0x80000001C9ADD430 == a2;
                                    if (v22 || (sub_1C9A93B18() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000016 && 0x80000001C9ADD450 == a2;
                                      if (v23 || (sub_1C9A93B18() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000018 && 0x80000001C9ADD470 == a2;
                                        if (v24 || (sub_1C9A93B18() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000010 && 0x80000001C9ADD490 == a2;
                                          if (v25 || (sub_1C9A93B18() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000015 && 0x80000001C9ADD4B0 == a2;
                                            if (v26 || (sub_1C9A93B18() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD00000000000001CLL && 0x80000001C9ADD4D0 == a2;
                                              if (v27 || (sub_1C9A93B18() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD00000000000001ALL && 0x80000001C9ADD4F0 == a2;
                                                if (v28 || (sub_1C9A93B18() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD00000000000001CLL && 0x80000001C9ADD510 == a2;
                                                  if (v29 || (sub_1C9A93B18() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD00000000000001CLL && 0x80000001C9ADD530 == a2;
                                                    if (v30 || (sub_1C9A93B18() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000019 && 0x80000001C9ADD550 == a2;
                                                      if (v31 || (sub_1C9A93B18() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD00000000000001ALL && 0x80000001C9ADD570 == a2;
                                                        if (v32 || (sub_1C9A93B18() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000021 && 0x80000001C9ADD590 == a2;
                                                          if (v33 || (sub_1C9A93B18() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000021 && 0x80000001C9ADD5C0 == a2;
                                                            if (v34 || (sub_1C9A93B18() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD00000000000001FLL && 0x80000001C9ADD5F0 == a2;
                                                              if (v35 || (sub_1C9A93B18() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD000000000000023 && 0x80000001C9ADD610 == a2;
                                                                if (v36 || (sub_1C9A93B18() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD000000000000029 && 0x80000001C9ADD640 == a2;
                                                                  if (v37 || (sub_1C9A93B18() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD00000000000001ALL && 0x80000001C9ADD670 == a2;
                                                                    if (v38 || (sub_1C9A93B18() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD00000000000001ALL && 0x80000001C9ADD690 == a2;
                                                                      if (v39 || (sub_1C9A93B18() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD00000000000001DLL && 0x80000001C9ADD6B0 == a2;
                                                                        if (v40 || (sub_1C9A93B18() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD000000000000013 && 0x80000001C9ADD6D0 == a2;
                                                                          if (v41 || (sub_1C9A93B18() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD000000000000012 && 0x80000001C9ADD6F0 == a2;
                                                                            if (v42 || (sub_1C9A93B18() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0x6F536D6F74737563 && a2 == 0xEF54523545646E75;
                                                                              if (v43 || (sub_1C9A93B18() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000021 && 0x80000001C9ADD710 == a2;
                                                                                if (v44 || (sub_1C9A93B18() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD00000000000001CLL && 0x80000001C9ADD740 == a2;
                                                                                  if (v45 || (sub_1C9A93B18() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0x6465626D45647070 && a2 == 0xEC000000676E6964;
                                                                                    if (v46 || (sub_1C9A93B18() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0x6365746544647070 && a2 == 0xEB00000000726F74;
                                                                                      if (v47 || (sub_1C9A93B18() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else if (a1 == 0xD000000000000019 && 0x80000001C9ADD760 == a2)
                                                                                      {

                                                                                        return 43;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v49 = sub_1C9A93B18();

                                                                                        if (v49)
                                                                                        {
                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          return 44;
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
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C99B9950(char a1)
{
  result = 0x6F536D6F74737563;
  switch(a1)
  {
    case 2:
    case 18:
      result = 0xD000000000000016;
      break;
    case 3:
    case 13:
    case 14:
    case 21:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
    case 20:
      result = 0xD000000000000010;
      break;
    case 6:
    case 37:
      result = 0xD000000000000012;
      break;
    case 7:
    case 8:
    case 11:
    case 36:
      result = 0xD000000000000013;
      break;
    case 9:
    case 17:
      result = 0xD000000000000011;
      break;
    case 10:
    case 12:
      result = 0xD000000000000014;
      break;
    case 15:
    case 26:
    case 43:
      result = 0xD000000000000019;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 22:
    case 24:
    case 25:
    case 40:
      result = 0xD00000000000001CLL;
      break;
    case 23:
      result = 0xD00000000000001ALL;
      break;
    case 27:
      result = 0xD00000000000001ALL;
      break;
    case 28:
    case 29:
    case 39:
      result = 0xD000000000000021;
      break;
    case 30:
      result = 0xD00000000000001FLL;
      break;
    case 31:
      result = 0xD000000000000023;
      break;
    case 32:
      result = 0xD000000000000029;
      break;
    case 33:
      result = 0xD00000000000001ALL;
      break;
    case 34:
      result = 0xD00000000000001ALL;
      break;
    case 35:
      result = 0xD00000000000001DLL;
      break;
    case 38:
      return result;
    case 41:
      result = 0x6465626D45647070;
      break;
    case 42:
      result = 0x6365746544647070;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

void sub_1C99B9D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  a22 = v24;
  a23 = v25;
  v390 = v26;
  v28 = v27;
  sub_1C97A2CEC(&qword_1EC3CF890, &qword_1C9AC2130);
  sub_1C97AE9C8();
  v386 = v30;
  v387 = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C97AC02C();
  v385 = v32;
  sub_1C97A2CEC(&qword_1EC3CF898, &qword_1C9AC2138);
  sub_1C97AE9C8();
  v383 = v34;
  v384 = v33;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C97AC02C();
  v382 = v36;
  sub_1C97A2CEC(&qword_1EC3CF8A0, &qword_1C9AC2140);
  sub_1C97AE9C8();
  v380 = v38;
  v381 = v37;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C97AC02C();
  v379 = v40;
  sub_1C97A2CEC(&qword_1EC3CF8A8, &qword_1C9AC2148);
  sub_1C97AE9C8();
  v377 = v42;
  v378 = v41;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C97AC02C();
  v376 = v44;
  sub_1C97A2CEC(&qword_1EC3CF8B0, &qword_1C9AC2150);
  sub_1C97AE9C8();
  v374 = v46;
  v375 = v45;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C97AC02C();
  v373 = v48;
  sub_1C97A2CEC(&qword_1EC3CF8B8, &qword_1C9AC2158);
  sub_1C97AE9C8();
  v371 = v50;
  v372 = v49;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C97AC02C();
  sub_1C97ABFB4(v52);
  v53 = sub_1C97A2CEC(&qword_1EC3CF8C0, &qword_1C9AC2160);
  sub_1C97ABF78(v53, &a20);
  v370[0] = v54;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C97AC02C();
  sub_1C97ABFB4(v56);
  v57 = sub_1C97A2CEC(&qword_1EC3CF8C8, &qword_1C9AC2168);
  sub_1C97ABF78(v57, &a17);
  v369[0] = v58;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C97AC02C();
  sub_1C97ABFB4(v60);
  v61 = sub_1C97A2CEC(&qword_1EC3CF8D0, &qword_1C9AC2170);
  sub_1C97ABF78(v61, &a14);
  v368[0] = v62;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C97AC02C();
  sub_1C97ABFB4(v64);
  v65 = sub_1C97A2CEC(&qword_1EC3CF8D8, &qword_1C9AC2178);
  sub_1C97ABF78(v65, &v391);
  v367[0] = v66;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v67);
  sub_1C97AC02C();
  sub_1C97ABFB4(v68);
  v69 = sub_1C97A2CEC(&qword_1EC3CF8E0, &qword_1C9AC2180);
  sub_1C97ABF78(v69, v389);
  v366[0] = v70;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v71);
  sub_1C97AC02C();
  sub_1C97ABFB4(v72);
  v73 = sub_1C97A2CEC(&qword_1EC3CF8E8, &qword_1C9AC2188);
  sub_1C97ABF78(v73, &v386);
  v365[0] = v74;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v75);
  sub_1C97AC02C();
  sub_1C97ABFB4(v76);
  v77 = sub_1C97A2CEC(&qword_1EC3CF8F0, &qword_1C9AC2190);
  sub_1C97ABF78(v77, &v383);
  v364[0] = v78;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v79);
  sub_1C97AC02C();
  sub_1C97ABFB4(v80);
  v81 = sub_1C97A2CEC(&qword_1EC3CF8F8, &qword_1C9AC2198);
  sub_1C97ABF78(v81, &v380);
  v363[0] = v82;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v83);
  sub_1C97AC02C();
  sub_1C97ABFB4(v84);
  v85 = sub_1C97A2CEC(&qword_1EC3CF900, &qword_1C9AC21A0);
  sub_1C97ABF78(v85, &v377);
  v362[0] = v86;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v87);
  sub_1C97AC02C();
  sub_1C97ABFB4(v88);
  v89 = sub_1C97A2CEC(&qword_1EC3CF908, &qword_1C9AC21A8);
  sub_1C97ABF78(v89, &v374);
  v361[0] = v90;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v91);
  sub_1C97AC02C();
  sub_1C97ABFB4(v92);
  v93 = sub_1C97A2CEC(&qword_1EC3CF910, &qword_1C9AC21B0);
  sub_1C97ABF78(v93, &v371);
  v360[0] = v94;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v95);
  sub_1C97AC02C();
  sub_1C97ABFB4(v96);
  v97 = sub_1C97A2CEC(&qword_1EC3CF918, &qword_1C9AC21B8);
  sub_1C97ABF78(v97, v370);
  v359[0] = v98;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v99);
  sub_1C97AC02C();
  sub_1C97ABFB4(v100);
  v101 = sub_1C97A2CEC(&qword_1EC3CF920, &qword_1C9AC21C0);
  sub_1C97ABF78(v101, v369);
  v358[0] = v102;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v103);
  sub_1C97AC02C();
  sub_1C97ABFB4(v104);
  v105 = sub_1C97A2CEC(&qword_1EC3CF928, &qword_1C9AC21C8);
  sub_1C97ABF78(v105, v368);
  v357[0] = v106;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v107);
  sub_1C97AC02C();
  sub_1C97ABFB4(v108);
  v109 = sub_1C97A2CEC(&qword_1EC3CF930, &qword_1C9AC21D0);
  sub_1C97ABF78(v109, v367);
  v356[0] = v110;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v111);
  sub_1C97AC02C();
  sub_1C97ABFB4(v112);
  v113 = sub_1C97A2CEC(&qword_1EC3CF938, &qword_1C9AC21D8);
  sub_1C97ABF78(v113, v366);
  v355[0] = v114;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v115);
  sub_1C97AC02C();
  sub_1C97ABFB4(v116);
  v117 = sub_1C97A2CEC(&qword_1EC3CF940, &qword_1C9AC21E0);
  sub_1C97ABF78(v117, v365);
  v354[0] = v118;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v119);
  sub_1C97AC02C();
  sub_1C97ABFB4(v120);
  v121 = sub_1C97A2CEC(&qword_1EC3CF948, &qword_1C9AC21E8);
  sub_1C97ABF78(v121, v364);
  v353[0] = v122;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v123);
  sub_1C97AC02C();
  sub_1C97ABFB4(v124);
  v125 = sub_1C97A2CEC(&qword_1EC3CF950, &qword_1C9AC21F0);
  sub_1C97ABF78(v125, v363);
  v352[0] = v126;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v127);
  sub_1C97AC02C();
  sub_1C97ABFB4(v128);
  v129 = sub_1C97A2CEC(&qword_1EC3CF958, &qword_1C9AC21F8);
  sub_1C97ABF78(v129, v362);
  v351[0] = v130;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v131);
  sub_1C97AC02C();
  sub_1C97ABFB4(v132);
  v133 = sub_1C97A2CEC(&qword_1EC3CF960, &qword_1C9AC2200);
  sub_1C97ABF78(v133, v361);
  v350[0] = v134;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v135);
  sub_1C97AC02C();
  sub_1C97ABFB4(v136);
  v137 = sub_1C97A2CEC(&qword_1EC3CF968, &qword_1C9AC2208);
  sub_1C97ABF78(v137, v360);
  v349[0] = v138;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v139);
  sub_1C97AC02C();
  sub_1C97ABFB4(v140);
  v141 = sub_1C97A2CEC(&qword_1EC3CF970, &qword_1C9AC2210);
  sub_1C97ABF78(v141, v359);
  v348[0] = v142;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v143);
  sub_1C97AC02C();
  sub_1C97ABFB4(v144);
  v145 = sub_1C97A2CEC(&qword_1EC3CF978, &qword_1C9AC2218);
  sub_1C97ABF78(v145, v358);
  v347[0] = v146;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v147);
  sub_1C97AC02C();
  sub_1C97ABFB4(v148);
  v149 = sub_1C97A2CEC(&qword_1EC3CF980, &qword_1C9AC2220);
  sub_1C97ABF78(v149, v357);
  v346 = v150;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v151);
  sub_1C97AC02C();
  sub_1C97ABFB4(v152);
  v153 = sub_1C97A2CEC(&qword_1EC3CF988, &qword_1C9AC2228);
  sub_1C97ABF78(v153, v356);
  v345[34] = v154;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v155);
  sub_1C97AC02C();
  sub_1C97ABFB4(v156);
  v157 = sub_1C97A2CEC(&qword_1EC3CF990, &qword_1C9AC2230);
  sub_1C97ABF78(v157, v355);
  v345[31] = v158;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v159);
  sub_1C97AC02C();
  sub_1C97ABFB4(v160);
  v161 = sub_1C97A2CEC(&qword_1EC3CF998, &qword_1C9AC2238);
  sub_1C97ABF78(v161, v354);
  v345[28] = v162;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v163);
  sub_1C97AC02C();
  sub_1C97ABFB4(v164);
  v165 = sub_1C97A2CEC(&qword_1EC3CF9A0, &qword_1C9AC2240);
  sub_1C97ABF78(v165, v353);
  v345[25] = v166;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v167);
  sub_1C97AC02C();
  sub_1C97ABFB4(v168);
  v169 = sub_1C97A2CEC(&qword_1EC3CF9A8, &qword_1C9AC2248);
  sub_1C97ABF78(v169, v352);
  v345[22] = v170;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v171);
  sub_1C97AC02C();
  sub_1C97ABFB4(v172);
  v173 = sub_1C97A2CEC(&qword_1EC3CF9B0, &qword_1C9AC2250);
  sub_1C97ABF78(v173, v351);
  v345[19] = v174;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v175);
  sub_1C97AC02C();
  sub_1C97ABFB4(v176);
  v177 = sub_1C97A2CEC(&qword_1EC3CF9B8, &qword_1C9AC2258);
  sub_1C97ABF78(v177, v350);
  v345[16] = v178;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v179);
  sub_1C97AC02C();
  sub_1C97ABFB4(v180);
  v181 = sub_1C97A2CEC(&qword_1EC3CF9C0, &qword_1C9AC2260);
  sub_1C97ABF78(v181, v349);
  v345[13] = v182;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v183);
  sub_1C97AC02C();
  sub_1C97ABFB4(v184);
  v185 = sub_1C97A2CEC(&qword_1EC3CF9C8, &qword_1C9AC2268);
  sub_1C97ABF78(v185, v348);
  v345[10] = v186;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v187);
  sub_1C97AC02C();
  sub_1C97ABFB4(v188);
  v189 = sub_1C97A2CEC(&qword_1EC3CF9D0, &qword_1C9AC2270);
  sub_1C97ABF78(v189, v347);
  v345[7] = v190;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v191);
  sub_1C97AC02C();
  sub_1C97ABFB4(v192);
  v193 = sub_1C97A2CEC(&qword_1EC3CF9D8, &qword_1C9AC2278);
  sub_1C97ABF78(v193, &v346);
  v345[4] = v194;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v195);
  sub_1C97AC02C();
  sub_1C97ABFB4(v196);
  v197 = sub_1C97A2CEC(&qword_1EC3CF9E0, &qword_1C9AC2280);
  sub_1C97AE9C8();
  v345[2] = v198;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v199);
  sub_1C98021C4();
  v200 = sub_1C97A2CEC(&qword_1EC3CF9E8, &qword_1C9AC2288);
  sub_1C97AE9C8();
  v345[1] = v201;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v202);
  v204 = v345 - v203;
  v389[0] = sub_1C97A2CEC(&qword_1EC3CF9F0, &qword_1C9AC2290);
  sub_1C97AE9C8();
  v206 = v205;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v207);
  v209 = v345 - v208;
  v210 = sub_1C97A5A8C(v28, v28[3]);
  sub_1C99BFA50();
  v388 = v209;
  sub_1C9A93DD8();
  v211 = (v206 + 8);
  switch(v390)
  {
    case 1:
      a13 = 1;
      sub_1C99C086C();
      v210 = v388;
      v209 = v389[0];
      sub_1C9A93988();
      sub_1C97DAA58();
      v213 = v23;
      v214 = v197;
      goto LABEL_48;
    case 2:
      a13 = 2;
      sub_1C99C0818();
      v266 = v345[3];
      v267 = v388;
      v268 = v389[0];
      sub_1C9A93988();
      sub_1C97DAA58();
      v269(v266, v345[5]);
      (*v211)(v267, v268);
      goto LABEL_50;
    case 3:
      a13 = 3;
      v273 = sub_1C99C07C4();
      sub_1C99C2C88(&type metadata for StaticAsset.ApplianceDetectorE5RTCodingKeys, &a13, v274, v275, v273);
      v213 = sub_1C9945EB0();
      v223 = v347;
      goto LABEL_47;
    case 4:
      a13 = 4;
      v248 = sub_1C99C0770();
      sub_1C99C2C88(&type metadata for StaticAsset.DistressedBabyDetectorE5RTCodingKeys, &a13, v249, v250, v248);
      v213 = sub_1C9945EB0();
      v223 = v348;
      goto LABEL_47;
    case 5:
      a13 = 5;
      v291 = sub_1C99C071C();
      sub_1C99C2C88(&type metadata for StaticAsset.BeepDetectorE5RTCodingKeys, &a13, v292, v293, v291);
      v213 = sub_1C9945EB0();
      v223 = v349;
      goto LABEL_47;
    case 6:
      a13 = 6;
      v300 = sub_1C99C06C8();
      sub_1C99C2C88(&type metadata for StaticAsset.BuzzerDetectorE5RTCodingKeys, &a13, v301, v302, v300);
      v213 = sub_1C9945EB0();
      v223 = v350;
      goto LABEL_47;
    case 7:
      a13 = 7;
      v276 = sub_1C99C0674();
      sub_1C99C2C88(&type metadata for StaticAsset.CarHornDetectorE5RTCodingKeys, &a13, v277, v278, v276);
      v213 = sub_1C9945EB0();
      v223 = v351;
      goto LABEL_47;
    case 8:
      a13 = 8;
      v309 = sub_1C99C0620();
      sub_1C99C2C88(&type metadata for StaticAsset.CatMeowDetectorE5RTCodingKeys, &a13, v310, v311, v309);
      v213 = sub_1C9945EB0();
      v223 = v352;
      goto LABEL_47;
    case 9:
      a13 = 9;
      v257 = sub_1C99C05CC();
      sub_1C99C2C88(&type metadata for StaticAsset.CoughDetectorE5RTCodingKeys, &a13, v258, v259, v257);
      v213 = sub_1C9945EB0();
      v223 = v353;
      goto LABEL_47;
    case 10:
      a13 = 10;
      v306 = sub_1C99C0578();
      sub_1C99C2C88(&type metadata for StaticAsset.DingBellDetectorE5RTCodingKeys, &a13, v307, v308, v306);
      v213 = sub_1C9945EB0();
      v223 = v354;
      goto LABEL_47;
    case 11:
      a13 = 11;
      v245 = sub_1C99C0524();
      sub_1C99C2C88(&type metadata for StaticAsset.DogBarkDetectorE5RTCodingKeys, &a13, v246, v247, v245);
      v213 = sub_1C9945EB0();
      v223 = v355;
      goto LABEL_47;
    case 12:
      a13 = 12;
      v254 = sub_1C99C04D0();
      sub_1C99C2C88(&type metadata for StaticAsset.DoorBellDetectorE5RTCodingKeys, &a13, v255, v256, v254);
      v213 = sub_1C9945EB0();
      v223 = v356;
      goto LABEL_47;
    case 13:
      a13 = 13;
      v297 = sub_1C99C047C();
      sub_1C99C2C88(&type metadata for StaticAsset.DoorKnockDetectorE5RTCodingKeys, &a13, v298, v299, v297);
      v213 = sub_1C9945EB0();
      v223 = v357;
      goto LABEL_47;
    case 14:
      a13 = 14;
      v239 = sub_1C99C0428();
      sub_1C99C2C88(&type metadata for StaticAsset.FireAlarmDetectorE5RTCodingKeys, &a13, v240, v241, v239);
      v213 = sub_1C9945EB0();
      v223 = v358;
      goto LABEL_47;
    case 15:
      a13 = 15;
      v270 = sub_1C99C03D4();
      sub_1C99C2C88(&type metadata for StaticAsset.GlassBreakingDetectorE5RTCodingKeys, &a13, v271, v272, v270);
      v213 = sub_1C9945EB0();
      v223 = v359;
      goto LABEL_47;
    case 16:
      a13 = 16;
      v236 = sub_1C99C0380();
      sub_1C99C2C88(&type metadata for StaticAsset.KettleWhistlingDetectorE5RTCodingKeys, &a13, v237, v238, v236);
      v213 = sub_1C9945EB0();
      v223 = v360;
      goto LABEL_47;
    case 17:
      a13 = 17;
      v282 = sub_1C99C032C();
      sub_1C99C2C88(&type metadata for StaticAsset.ShoutDetectorE5RTCodingKeys, &a13, v283, v284, v282);
      v213 = sub_1C9945EB0();
      v223 = v361;
      goto LABEL_47;
    case 18:
      a13 = 18;
      v303 = sub_1C99C02D8();
      sub_1C99C2C88(&type metadata for StaticAsset.SirenAlarmDetectorE5RTCodingKeys, &a13, v304, v305, v303);
      v213 = sub_1C9945EB0();
      v223 = v362;
      goto LABEL_47;
    case 19:
      a13 = 19;
      v324 = sub_1C99C0284();
      sub_1C99C2C88(&type metadata for StaticAsset.WaterRunningDetectorE5RTCodingKeys, &a13, v325, v326, v324);
      v213 = sub_1C9945EB0();
      v223 = v363;
      goto LABEL_47;
    case 20:
      a13 = 20;
      v288 = sub_1C99C0230();
      sub_1C99C2C88(&type metadata for StaticAsset.SoundActionsE5RTCodingKeys, &a13, v289, v290, v288);
      v213 = sub_1C9945EB0();
      v223 = v364;
      goto LABEL_47;
    case 21:
      a13 = 21;
      v294 = sub_1C99C01DC();
      sub_1C99C2C88(&type metadata for StaticAsset.VggishEmbeddingCoreMLCodingKeys, &a13, v295, v296, v294);
      v213 = sub_1C9945EB0();
      v223 = v365;
      goto LABEL_47;
    case 22:
      a13 = 22;
      v318 = sub_1C99C0188();
      sub_1C99C2C88(&type metadata for StaticAsset.VggishApplauseDetectorCoreMLCodingKeys, &a13, v319, v320, v318);
      v213 = sub_1C9945EB0();
      v223 = v366;
      goto LABEL_47;
    case 23:
      a13 = 23;
      v330 = sub_1C99C0134();
      sub_1C99C2C88(&type metadata for StaticAsset.VggishBabbleDetectorCoreMLCodingKeys, &a13, v331, v332, v330);
      v213 = sub_1C9945EB0();
      v223 = v367;
      goto LABEL_47;
    case 24:
      a13 = 24;
      v263 = sub_1C99C00E0();
      sub_1C99C2C88(&type metadata for StaticAsset.VggishCheeringDetectorCoreMLCodingKeys, &a13, v264, v265, v263);
      v213 = sub_1C9945EB0();
      v223 = v368;
      goto LABEL_47;
    case 25:
      a13 = 25;
      v260 = sub_1C99C008C();
      sub_1C99C2C88(&type metadata for StaticAsset.VggishLaughterDetectorCoreMLCodingKeys, &a13, v261, v262, v260);
      v213 = sub_1C9945EB0();
      v223 = v369;
      goto LABEL_47;
    case 26:
      a13 = 26;
      v342 = sub_1C99C0038();
      sub_1C99C2C88(&type metadata for StaticAsset.VggishMusicDetectorCoreMLCodingKeys, &a13, v343, v344, v342);
      v213 = sub_1C9945EB0();
      v223 = v370;
      goto LABEL_47;
    case 27:
      a13 = 27;
      v230 = sub_1C99BFFE4();
      sub_1C99C2C88(&type metadata for StaticAsset.VggishSpeechDetectorCoreMLCodingKeys, &a13, v231, v232, v230);
      v213 = sub_1C9945EB0();
      v223 = &v371;
      goto LABEL_47;
    case 28:
      a13 = 28;
      v333 = sub_1C99BFF90();
      sub_1C99C2C88(&type metadata for StaticAsset.SoundPrintALaughterDetectorCoreMLCodingKeys, &a13, v334, v335, v333);
      v213 = sub_1C9945EB0();
      v223 = &v374;
      goto LABEL_47;
    case 29:
      a13 = 29;
      v336 = sub_1C99BFF3C();
      sub_1C99C2C88(&type metadata for StaticAsset.SoundPrintAShoutingDetectorCoreMLCodingKeys, &a13, v337, v338, v336);
      v213 = sub_1C9945EB0();
      v223 = &v377;
      goto LABEL_47;
    case 30:
      a13 = 30;
      v312 = sub_1C99BFEE8();
      sub_1C99C2C88(&type metadata for StaticAsset.SoundPrintASpeechDetectorCoreMLCodingKeys, &a13, v313, v314, v312);
      v213 = sub_1C9945EB0();
      v223 = &v380;
      goto LABEL_47;
    case 31:
      a13 = 31;
      v279 = sub_1C99BFE94();
      sub_1C99C2C88(&type metadata for StaticAsset.SoundPrintASmokeAlarmDetectorCoreMLCodingKeys, &a13, v280, v281, v279);
      v213 = sub_1C9945EB0();
      v223 = &v383;
      goto LABEL_47;
    case 32:
      a13 = 32;
      v315 = sub_1C99BFE40();
      sub_1C99C2C88(&type metadata for StaticAsset.FirstPassSoundPrintSmokeAlarmDetectorE5RTCodingKeys, &a13, v316, v317, v315);
      v213 = sub_1C9945EB0();
      v223 = &v386;
      goto LABEL_47;
    case 33:
      a13 = 33;
      v242 = sub_1C99BFDEC();
      sub_1C99C2C88(&type metadata for StaticAsset.SoundPrintAEmbeddingCoreMLCodingKeys, &a13, v243, v244, v242);
      v213 = sub_1C9945EB0();
      v223 = v389;
      goto LABEL_47;
    case 34:
      a13 = 34;
      v233 = sub_1C99BFD98();
      sub_1C99C2C88(&type metadata for StaticAsset.SoundPrintKEmbeddingCoreMLCodingKeys, &a13, v234, v235, v233);
      v213 = sub_1C9945EB0();
      v223 = &v391;
      goto LABEL_47;
    case 35:
      a13 = 35;
      v224 = sub_1C99BFD44();
      sub_1C99C2C88(&type metadata for StaticAsset.SoundClassifierVersion1CoreMLCodingKeys, &a13, v225, v226, v224);
      v213 = sub_1C9945EB0();
      v223 = &a14;
      goto LABEL_47;
    case 36:
      a13 = 36;
      v227 = sub_1C99BFCF0();
      sub_1C99C2C88(&type metadata for StaticAsset.IndoorOutdoorCoreMLCodingKeys, &a13, v228, v229, v227);
      v213 = sub_1C9945EB0();
      v223 = &a17;
      goto LABEL_47;
    case 37:
      a13 = 37;
      v220 = sub_1C99BFC9C();
      sub_1C99C2C88(&type metadata for StaticAsset.AudioQualityCoreMLCodingKeys, &a13, v221, v222, v220);
      v213 = sub_1C9945EB0();
      v223 = &a20;
LABEL_47:
      v214 = *(v223 - 32);
      goto LABEL_48;
    case 38:
      a13 = 38;
      v339 = sub_1C99BFC48();
      sub_1C99C2C88(&type metadata for StaticAsset.CustomSoundE5RTCodingKeys, &a13, v340, v341, v339);
      v219 = v371;
      v218 = v372;
      goto LABEL_45;
    case 39:
      a13 = 39;
      v321 = sub_1C99BFBF4();
      v206 = v373;
      sub_1C99C2CE0(&type metadata for StaticAsset.LanguageAlignedAudioEncoderCoreMLCodingKeys, &a13, v322, v323, v321);
      v219 = v374;
      v218 = v375;
      goto LABEL_45;
    case 40:
      a13 = 40;
      v251 = sub_1C99BFBA0();
      v206 = v376;
      sub_1C99C2CE0(&type metadata for StaticAsset.LanguageAlignedAVFuserCoreMLCodingKeys, &a13, v252, v253, v251);
      v219 = v377;
      v218 = v378;
      goto LABEL_45;
    case 41:
      a13 = 41;
      v285 = sub_1C99BFB4C();
      v206 = v379;
      sub_1C99C2CE0(&type metadata for StaticAsset.PpdEmbeddingCodingKeys, &a13, v286, v287, v285);
      v219 = v380;
      v218 = v381;
      goto LABEL_45;
    case 42:
      a13 = 42;
      v327 = sub_1C99BFAF8();
      v206 = v382;
      sub_1C99C2CE0(&type metadata for StaticAsset.PpdDetectorCodingKeys, &a13, v328, v329, v327);
      v219 = v383;
      v218 = v384;
      goto LABEL_45;
    case 43:
      a13 = 43;
      v215 = sub_1C99BFAA4();
      v206 = v385;
      sub_1C99C2CE0(&type metadata for StaticAsset.MicroSoundPrintClassifierCodingKeys, &a13, v216, v217, v215);
      v219 = v386;
      v218 = v387;
LABEL_45:
      (*(v219 + 8))(v206, v218);
      break;
    default:
      a13 = 0;
      sub_1C99C08C0();
      v210 = v388;
      v209 = v389[0];
      sub_1C9A93988();
      sub_1C97DAA58();
      v213 = v204;
      v214 = v200;
LABEL_48:
      v212(v213, v214);
      break;
  }

  (*v211)(v210, v209);
LABEL_50:
  sub_1C97AEB5C();
}

void sub_1C99BBB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v22;
  a20 = v23;
  v302 = v20;
  v25 = v24;
  v297 = sub_1C97A2CEC(&qword_1EC3CF5C0, &qword_1C9AC1FC0);
  sub_1C97AE9C8();
  v279[1] = v26;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C97AC02C();
  v296 = v28;
  v29 = sub_1C97A2CEC(&qword_1EC3CF5C8, &qword_1C9AC1FC8);
  sub_1C97ABF78(v29, v295);
  v278[1] = v30;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C97AC02C();
  v295[7] = v32;
  v33 = sub_1C97A2CEC(&qword_1EC3CF5D0, &qword_1C9AC1FD0);
  sub_1C97ABF78(v33, v294);
  v277[1] = v34;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C97AC02C();
  v295[6] = v36;
  v37 = sub_1C97A2CEC(&qword_1EC3CF5D8, &qword_1C9AC1FD8);
  sub_1C97ABF78(v37, v293);
  v276[1] = v38;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C97AC02C();
  v295[5] = v40;
  v41 = sub_1C97A2CEC(&qword_1EC3CF5E0, &qword_1C9AC1FE0);
  sub_1C97ABF78(v41, v292);
  v275[1] = v42;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C97AC02C();
  v295[4] = v44;
  v45 = sub_1C97A2CEC(&qword_1EC3CF5E8, &qword_1C9AC1FE8);
  sub_1C97ABF78(v45, v291);
  v274[1] = v46;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C97AC02C();
  v295[3] = v48;
  v49 = sub_1C97A2CEC(&qword_1EC3CF5F0, &qword_1C9AC1FF0);
  sub_1C97ABF78(v49, v290);
  v273[1] = v50;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C97AC02C();
  v295[2] = v52;
  v53 = sub_1C97A2CEC(&qword_1EC3CF5F8, &qword_1C9AC1FF8);
  sub_1C97ABF78(v53, v289);
  v272[1] = v54;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C97AC02C();
  v295[1] = v56;
  v57 = sub_1C97A2CEC(&qword_1EC3CF600, &qword_1C9AC2000);
  sub_1C97ABF78(v57, v288);
  v271[1] = v58;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C97AC02C();
  v295[0] = v60;
  v61 = sub_1C97A2CEC(&qword_1EC3CF608, &qword_1C9AC2008);
  sub_1C97ABF78(v61, v287);
  v270[1] = v62;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C97AC02C();
  v294[1] = v64;
  v65 = sub_1C97A2CEC(&qword_1EC3CF610, &qword_1C9AC2010);
  sub_1C97ABF78(v65, v286);
  v269[1] = v66;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v67);
  sub_1C97AC02C();
  v294[0] = v68;
  v69 = sub_1C97A2CEC(&qword_1EC3CF618, &qword_1C9AC2018);
  sub_1C97ABF78(v69, v285);
  v268[1] = v70;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v71);
  sub_1C97AC02C();
  v293[1] = v72;
  v73 = sub_1C97A2CEC(&qword_1EC3CF620, &qword_1C9AC2020);
  sub_1C97ABF78(v73, v284);
  v267[1] = v74;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v75);
  sub_1C97AC02C();
  v293[0] = v76;
  v77 = sub_1C97A2CEC(&qword_1EC3CF628, &qword_1C9AC2028);
  sub_1C97ABF78(v77, v283);
  v266[1] = v78;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v79);
  sub_1C97AC02C();
  v292[1] = v80;
  v81 = sub_1C97A2CEC(&qword_1EC3CF630, &qword_1C9AC2030);
  sub_1C97ABF78(v81, v282);
  v265[1] = v82;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v83);
  sub_1C97AC02C();
  v292[0] = v84;
  v85 = sub_1C97A2CEC(&qword_1EC3CF638, &qword_1C9AC2038);
  sub_1C97ABF78(v85, v281);
  v264[1] = v86;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v87);
  sub_1C97AC02C();
  sub_1C97ABFB4(v88);
  v89 = sub_1C97A2CEC(&qword_1EC3CF640, &qword_1C9AC2040);
  sub_1C97ABF78(v89, v280);
  v263[1] = v90;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v91);
  sub_1C97AC02C();
  sub_1C97ABFB4(v92);
  v93 = sub_1C97A2CEC(&qword_1EC3CF648, &qword_1C9AC2048);
  sub_1C97ABF78(v93, v279);
  v262[2] = v94;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v95);
  sub_1C97AC02C();
  sub_1C97ABFB4(v96);
  v97 = sub_1C97A2CEC(&qword_1EC3CF650, &qword_1C9AC2050);
  sub_1C97ABF78(v97, v278);
  v262[0] = v98;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v99);
  sub_1C97AC02C();
  sub_1C97ABFB4(v100);
  v101 = sub_1C97A2CEC(&qword_1EC3CF658, &qword_1C9AC2058);
  sub_1C97ABF78(v101, v277);
  v261[0] = v102;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v103);
  sub_1C97AC02C();
  sub_1C97ABFB4(v104);
  v105 = sub_1C97A2CEC(&qword_1EC3CF660, &qword_1C9AC2060);
  sub_1C97ABF78(v105, v276);
  v260[0] = v106;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v107);
  sub_1C97AC02C();
  sub_1C97ABFB4(v108);
  v109 = sub_1C97A2CEC(&qword_1EC3CF668, &qword_1C9AC2068);
  sub_1C97ABF78(v109, v275);
  v258[1] = v110;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v111);
  sub_1C97AC02C();
  sub_1C97ABFB4(v112);
  v113 = sub_1C97A2CEC(&qword_1EC3CF670, &qword_1C9AC2070);
  sub_1C97ABF78(v113, v274);
  v257[1] = v114;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v115);
  sub_1C97AC02C();
  sub_1C97ABFB4(v116);
  v117 = sub_1C97A2CEC(&qword_1EC3CF678, &qword_1C9AC2078);
  sub_1C97ABF78(v117, v273);
  v256[1] = v118;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v119);
  sub_1C97AC02C();
  sub_1C97ABFB4(v120);
  v121 = sub_1C97A2CEC(&qword_1EC3CF680, &qword_1C9AC2080);
  sub_1C97ABF78(v121, v272);
  v255[1] = v122;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v123);
  sub_1C97AC02C();
  sub_1C97ABFB4(v124);
  v125 = sub_1C97A2CEC(&qword_1EC3CF688, &qword_1C9AC2088);
  sub_1C97ABF78(v125, v271);
  v254[1] = v126;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v127);
  sub_1C97AC02C();
  sub_1C97ABFB4(v128);
  v129 = sub_1C97A2CEC(&qword_1EC3CF690, &qword_1C9AC2090);
  sub_1C97ABF78(v129, v270);
  v253[4] = v130;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v131);
  sub_1C97AC02C();
  sub_1C97ABFB4(v132);
  v133 = sub_1C97A2CEC(&qword_1EC3CF698, &qword_1C9AC2098);
  sub_1C97ABF78(v133, v269);
  v253[2] = v134;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v135);
  sub_1C97AC02C();
  sub_1C97ABFB4(v136);
  v137 = sub_1C97A2CEC(&qword_1EC3CF6A0, &qword_1C9AC20A0);
  sub_1C97ABF78(v137, v268);
  v253[0] = v138;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v139);
  sub_1C97AC02C();
  sub_1C97ABFB4(v140);
  v141 = sub_1C97A2CEC(&qword_1EC3CF6A8, &qword_1C9AC20A8);
  sub_1C97ABF78(v141, v267);
  v252 = v142;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v143);
  sub_1C97AC02C();
  sub_1C97ABFB4(v144);
  v145 = sub_1C97A2CEC(&qword_1EC3CF6B0, &qword_1C9AC20B0);
  sub_1C97ABF78(v145, v266);
  v251 = v146;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v147);
  sub_1C97AC02C();
  sub_1C97ABFB4(v148);
  v149 = sub_1C97A2CEC(&qword_1EC3CF6B8, &qword_1C9AC20B8);
  sub_1C97ABF78(v149, v265);
  v250 = v150;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v151);
  sub_1C97AC02C();
  v300 = v152;
  v153 = sub_1C97A2CEC(&qword_1EC3CF6C0, &qword_1C9AC20C0);
  sub_1C97ABF78(v153, v264);
  v249 = v154;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v155);
  sub_1C97AC02C();
  sub_1C97ABFB4(v156);
  v157 = sub_1C97A2CEC(&qword_1EC3CF6C8, &qword_1C9AC20C8);
  sub_1C97ABF78(v157, v263);
  v248 = v158;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v159);
  sub_1C97AC02C();
  v299 = v160;
  v161 = sub_1C97A2CEC(&qword_1EC3CF6D0, &qword_1C9AC20D0);
  sub_1C97ABF78(v161, v262);
  v247 = v162;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v163);
  sub_1C97AC02C();
  sub_1C97ABFB4(v164);
  v165 = sub_1C97A2CEC(&qword_1EC3CF6D8, &qword_1C9AC20D8);
  sub_1C97ABF78(v165, v260);
  v246 = v166;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v167);
  sub_1C97AC02C();
  sub_1C97ABFB4(v168);
  v169 = sub_1C97A2CEC(&qword_1EC3CF6E0, &qword_1C9AC20E0);
  sub_1C97ABF78(v169, v261);
  v245 = v170;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v171);
  sub_1C97AC02C();
  v298 = v172;
  v173 = sub_1C97A2CEC(&qword_1EC3CF6E8, &qword_1C9AC20E8);
  sub_1C97ABF78(v173, &v259);
  v244 = v174;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v175);
  sub_1C97AC02C();
  sub_1C97ABFB4(v176);
  v177 = sub_1C97A2CEC(&qword_1EC3CF6F0, &qword_1C9AC20F0);
  sub_1C97ABF78(v177, v258);
  v243 = v178;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v179);
  sub_1C97AC02C();
  sub_1C97ABFB4(v180);
  v181 = sub_1C97A2CEC(&qword_1EC3CF6F8, &qword_1C9AC20F8);
  sub_1C97ABF78(v181, v257);
  v242 = v182;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v183);
  sub_1C97AC02C();
  sub_1C97ABFB4(v184);
  v185 = sub_1C97A2CEC(&qword_1EC3CF700, &qword_1C9AC2100);
  sub_1C97ABF78(v185, v256);
  v241 = v186;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v187);
  sub_1C97AC02C();
  sub_1C97ABFB4(v188);
  v189 = sub_1C97A2CEC(&qword_1EC3CF708, &qword_1C9AC2108);
  sub_1C97ABF78(v189, v255);
  v240 = v190;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v191);
  sub_1C97AC02C();
  sub_1C97ABFB4(v192);
  v193 = sub_1C97A2CEC(&qword_1EC3CF710, &qword_1C9AC2110);
  sub_1C97ABF78(v193, v254);
  v239 = v194;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v195);
  v197 = v233 - v196;
  v198 = sub_1C97A2CEC(&qword_1EC3CF718, &qword_1C9AC2118);
  sub_1C97AE9C8();
  v238 = v199;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v200);
  sub_1C98021C4();
  v201 = sub_1C97A2CEC(&qword_1EC3CF720, &unk_1C9AC2120);
  sub_1C97AE9C8();
  v203 = v202;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v204);
  v206 = v233 - v205;
  v207 = v25[3];
  v301 = v25;
  sub_1C97A5A8C(v25, v207);
  sub_1C99BFA50();
  v208 = v302;
  sub_1C9A93DB8();
  if (v208)
  {
    goto LABEL_10;
  }

  v236 = v21;
  v235 = v198;
  v237 = v197;
  v209 = v298;
  v210 = v300;
  v302 = v203;
  v211 = v206;
  sub_1C9A93958();
  sub_1C98EE524();
  if (v213 == v214 >> 1)
  {
    v215 = v201;
LABEL_9:
    v228 = sub_1C9A93648();
    swift_allocError();
    v230 = v229;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v230 = &unk_1F4947E50;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v228 - 8) + 104))(v230, *MEMORY[0x1E69E6AF8], v228);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v302 + 8))(v211, v215);
LABEL_10:
    sub_1C97A592C(v301);
LABEL_11:
    sub_1C97AEB5C();
    return;
  }

  v234 = v201;
  v233[0] = 0;
  if (v213 < (v214 >> 1))
  {
    v216 = *(v212 + v213);
    v217 = sub_1C98EE520();
    v219 = v218;
    v221 = v220;
    swift_unknownObjectRelease();
    v233[1] = v217;
    if (v219 == v221 >> 1)
    {
      v222 = v234;
      v223 = v302;
      v224 = v297;
      switch(v216)
      {
        case 1:
          HIBYTE(a10) = 1;
          sub_1C99C086C();
          sub_1C99C2CBC(&type metadata for StaticAsset.SoundPrintAEmbeddingE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v254;
          goto LABEL_55;
        case 2:
          HIBYTE(a10) = 2;
          sub_1C99C0818();
          sub_1C99C2CBC(&type metadata for StaticAsset.SmokeAlarmDetectorE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v255;
          goto LABEL_55;
        case 3:
          HIBYTE(a10) = 3;
          sub_1C99C07C4();
          sub_1C99C2CBC(&type metadata for StaticAsset.ApplianceDetectorE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v256;
          goto LABEL_55;
        case 4:
          HIBYTE(a10) = 4;
          sub_1C99C0770();
          sub_1C99C2CBC(&type metadata for StaticAsset.DistressedBabyDetectorE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v257;
          goto LABEL_55;
        case 5:
          HIBYTE(a10) = 5;
          sub_1C99C071C();
          sub_1C99C2CBC(&type metadata for StaticAsset.BeepDetectorE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v258;
          goto LABEL_55;
        case 6:
          HIBYTE(a10) = 6;
          sub_1C99C06C8();
          sub_1C99C2CBC(&type metadata for StaticAsset.BuzzerDetectorE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = &v259;
          goto LABEL_55;
        case 7:
          HIBYTE(a10) = 7;
          sub_1C99C0674();
          sub_1C99C2D20(&type metadata for StaticAsset.CarHornDetectorE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          sub_1C97DAA58();
          v225 = v209;
          v227 = v261;
          goto LABEL_55;
        case 8:
          HIBYTE(a10) = 8;
          sub_1C99C0620();
          sub_1C99C2CBC(&type metadata for StaticAsset.CatMeowDetectorE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v260;
          goto LABEL_55;
        case 9:
          HIBYTE(a10) = 9;
          sub_1C99C05CC();
          sub_1C99C2CBC(&type metadata for StaticAsset.CoughDetectorE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v262;
          goto LABEL_55;
        case 10:
          HIBYTE(a10) = 10;
          sub_1C99C0578();
          sub_1C99C2D20(&type metadata for StaticAsset.DingBellDetectorE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v263;
          goto LABEL_55;
        case 11:
          HIBYTE(a10) = 11;
          sub_1C99C0524();
          sub_1C99C2CBC(&type metadata for StaticAsset.DogBarkDetectorE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v264;
          goto LABEL_55;
        case 12:
          HIBYTE(a10) = 12;
          sub_1C99C04D0();
          sub_1C99C2D20(&type metadata for StaticAsset.DoorBellDetectorE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          sub_1C97DAA58();
          v225 = v210;
          v227 = v265;
          goto LABEL_55;
        case 13:
          HIBYTE(a10) = 13;
          sub_1C99C047C();
          sub_1C99C2CBC(&type metadata for StaticAsset.DoorKnockDetectorE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v266;
          goto LABEL_55;
        case 14:
          HIBYTE(a10) = 14;
          sub_1C99C0428();
          sub_1C99C2CBC(&type metadata for StaticAsset.FireAlarmDetectorE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v267;
          goto LABEL_55;
        case 15:
          HIBYTE(a10) = 15;
          sub_1C99C03D4();
          sub_1C99C2CBC(&type metadata for StaticAsset.GlassBreakingDetectorE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v268;
          goto LABEL_55;
        case 16:
          HIBYTE(a10) = 16;
          sub_1C99C0380();
          sub_1C99C2CBC(&type metadata for StaticAsset.KettleWhistlingDetectorE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v269;
          goto LABEL_55;
        case 17:
          HIBYTE(a10) = 17;
          sub_1C99C032C();
          sub_1C99C2CBC(&type metadata for StaticAsset.ShoutDetectorE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v270;
          goto LABEL_55;
        case 18:
          HIBYTE(a10) = 18;
          sub_1C99C02D8();
          sub_1C99C2CBC(&type metadata for StaticAsset.SirenAlarmDetectorE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v271;
          goto LABEL_55;
        case 19:
          HIBYTE(a10) = 19;
          sub_1C99C0284();
          sub_1C99C2CBC(&type metadata for StaticAsset.WaterRunningDetectorE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v272;
          goto LABEL_55;
        case 20:
          HIBYTE(a10) = 20;
          sub_1C99C0230();
          sub_1C99C2CBC(&type metadata for StaticAsset.SoundActionsE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v273;
          goto LABEL_55;
        case 21:
          HIBYTE(a10) = 21;
          sub_1C99C01DC();
          sub_1C99C2CBC(&type metadata for StaticAsset.VggishEmbeddingCoreMLCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v274;
          goto LABEL_55;
        case 22:
          HIBYTE(a10) = 22;
          sub_1C99C0188();
          sub_1C99C2CBC(&type metadata for StaticAsset.VggishApplauseDetectorCoreMLCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v275;
          goto LABEL_55;
        case 23:
          HIBYTE(a10) = 23;
          sub_1C99C0134();
          sub_1C99C2CBC(&type metadata for StaticAsset.VggishBabbleDetectorCoreMLCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v276;
          goto LABEL_55;
        case 24:
          HIBYTE(a10) = 24;
          sub_1C99C00E0();
          sub_1C99C2CBC(&type metadata for StaticAsset.VggishCheeringDetectorCoreMLCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v277;
          goto LABEL_55;
        case 25:
          HIBYTE(a10) = 25;
          sub_1C99C008C();
          sub_1C99C2CBC(&type metadata for StaticAsset.VggishLaughterDetectorCoreMLCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v278;
          goto LABEL_55;
        case 26:
          HIBYTE(a10) = 26;
          sub_1C99C0038();
          sub_1C99C2CBC(&type metadata for StaticAsset.VggishMusicDetectorCoreMLCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v279;
          goto LABEL_55;
        case 27:
          HIBYTE(a10) = 27;
          sub_1C99BFFE4();
          sub_1C99C2CBC(&type metadata for StaticAsset.VggishSpeechDetectorCoreMLCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v280;
          goto LABEL_55;
        case 28:
          HIBYTE(a10) = 28;
          sub_1C99BFF90();
          sub_1C99C2CBC(&type metadata for StaticAsset.SoundPrintALaughterDetectorCoreMLCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v281;
          goto LABEL_55;
        case 29:
          HIBYTE(a10) = 29;
          sub_1C99BFF3C();
          sub_1C99C2D00(&type metadata for StaticAsset.SoundPrintAShoutingDetectorCoreMLCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v282;
          goto LABEL_55;
        case 30:
          HIBYTE(a10) = 30;
          sub_1C99BFEE8();
          sub_1C99C2D00(&type metadata for StaticAsset.SoundPrintASpeechDetectorCoreMLCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v283;
          goto LABEL_55;
        case 31:
          HIBYTE(a10) = 31;
          sub_1C99BFE94();
          sub_1C99C2D00(&type metadata for StaticAsset.SoundPrintASmokeAlarmDetectorCoreMLCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v284;
          goto LABEL_55;
        case 32:
          HIBYTE(a10) = 32;
          sub_1C99BFE40();
          sub_1C99C2D00(&type metadata for StaticAsset.FirstPassSoundPrintSmokeAlarmDetectorE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v285;
          goto LABEL_55;
        case 33:
          HIBYTE(a10) = 33;
          sub_1C99BFDEC();
          sub_1C99C2D00(&type metadata for StaticAsset.SoundPrintAEmbeddingCoreMLCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v286;
          goto LABEL_55;
        case 34:
          HIBYTE(a10) = 34;
          sub_1C99BFD98();
          sub_1C99C2D00(&type metadata for StaticAsset.SoundPrintKEmbeddingCoreMLCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v287;
          goto LABEL_55;
        case 35:
          HIBYTE(a10) = 35;
          sub_1C99BFD44();
          sub_1C99C2D00(&type metadata for StaticAsset.SoundClassifierVersion1CoreMLCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v288;
          goto LABEL_55;
        case 36:
          HIBYTE(a10) = 36;
          sub_1C99BFCF0();
          sub_1C99C2D00(&type metadata for StaticAsset.IndoorOutdoorCoreMLCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v289;
          goto LABEL_55;
        case 37:
          HIBYTE(a10) = 37;
          sub_1C99BFC9C();
          sub_1C99C2D00(&type metadata for StaticAsset.AudioQualityCoreMLCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v290;
          goto LABEL_55;
        case 38:
          HIBYTE(a10) = 38;
          sub_1C99BFC48();
          sub_1C99C2D00(&type metadata for StaticAsset.CustomSoundE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v291;
          goto LABEL_55;
        case 39:
          HIBYTE(a10) = 39;
          sub_1C99BFBF4();
          sub_1C99C2D00(&type metadata for StaticAsset.LanguageAlignedAudioEncoderCoreMLCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v292;
          goto LABEL_55;
        case 40:
          HIBYTE(a10) = 40;
          sub_1C99BFBA0();
          sub_1C99C2D00(&type metadata for StaticAsset.LanguageAlignedAVFuserCoreMLCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v293;
          goto LABEL_55;
        case 41:
          HIBYTE(a10) = 41;
          sub_1C99BFB4C();
          sub_1C99C2D00(&type metadata for StaticAsset.PpdEmbeddingCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v294;
          goto LABEL_55;
        case 42:
          HIBYTE(a10) = 42;
          sub_1C99BFAF8();
          sub_1C99C2D00(&type metadata for StaticAsset.PpdDetectorCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v295;
          goto LABEL_55;
        case 43:
          HIBYTE(a10) = 43;
          sub_1C99BFAA4();
          v231 = v296;
          sub_1C99C2D20(&type metadata for StaticAsset.MicroSoundPrintClassifierCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          sub_1C97DAA58();
          v225 = v231;
          v232 = v224;
          goto LABEL_56;
        default:
          HIBYTE(a10) = 0;
          sub_1C99C08C0();
          sub_1C99C2CBC(&type metadata for StaticAsset.SoundPrintKEmbeddingE5RTCodingKeys, &a10 + 7);
          sub_1C99C2D3C();
          v225 = sub_1C99C2CAC();
          v227 = v253;
LABEL_55:
          v232 = *(v227 - 32);
LABEL_56:
          v226(v225, v232);
          (*(v223 + 8))(v211, v222);
          sub_1C97A592C(v301);
          break;
      }

      goto LABEL_11;
    }

    v215 = v234;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1C99BDDA4(unsigned __int8 a1)
{
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](0);
  MEMORY[0x1CCA91980](a1);
  return sub_1C9A93D18();
}

uint64_t sub_1C99BDE10(uint64_t a1)
{
  v2 = sub_1C99C07C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BDE4C(uint64_t a1)
{
  v2 = sub_1C99C07C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BDE88(uint64_t a1)
{
  v2 = sub_1C99BFC9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BDEC4(uint64_t a1)
{
  v2 = sub_1C99BFC9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BDF00(uint64_t a1)
{
  v2 = sub_1C99C071C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BDF3C(uint64_t a1)
{
  v2 = sub_1C99C071C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BDF78(uint64_t a1)
{
  v2 = sub_1C99C06C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BDFB4(uint64_t a1)
{
  v2 = sub_1C99C06C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BDFF0(uint64_t a1)
{
  v2 = sub_1C99C0674();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE02C(uint64_t a1)
{
  v2 = sub_1C99C0674();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE068(uint64_t a1)
{
  v2 = sub_1C99C0620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE0A4(uint64_t a1)
{
  v2 = sub_1C99C0620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99B8CC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99BE128@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C99B9948();
  *a1 = result;
  return result;
}

uint64_t sub_1C99BE150(uint64_t a1)
{
  v2 = sub_1C99BFA50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE18C(uint64_t a1)
{
  v2 = sub_1C99BFA50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE1C8(uint64_t a1)
{
  v2 = sub_1C99C05CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE204(uint64_t a1)
{
  v2 = sub_1C99C05CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE240(uint64_t a1)
{
  v2 = sub_1C99BFC48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE27C(uint64_t a1)
{
  v2 = sub_1C99BFC48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE2B8(uint64_t a1)
{
  v2 = sub_1C99C0578();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE2F4(uint64_t a1)
{
  v2 = sub_1C99C0578();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE330(uint64_t a1)
{
  v2 = sub_1C99C0770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE36C(uint64_t a1)
{
  v2 = sub_1C99C0770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE3A8(uint64_t a1)
{
  v2 = sub_1C99C0524();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE3E4(uint64_t a1)
{
  v2 = sub_1C99C0524();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE420(uint64_t a1)
{
  v2 = sub_1C99C04D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE45C(uint64_t a1)
{
  v2 = sub_1C99C04D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE498(uint64_t a1)
{
  v2 = sub_1C99C047C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE4D4(uint64_t a1)
{
  v2 = sub_1C99C047C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE510(uint64_t a1)
{
  v2 = sub_1C99C0428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE54C(uint64_t a1)
{
  v2 = sub_1C99C0428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE588(uint64_t a1)
{
  v2 = sub_1C99BFE40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE5C4(uint64_t a1)
{
  v2 = sub_1C99BFE40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE600(uint64_t a1)
{
  v2 = sub_1C99C03D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE63C(uint64_t a1)
{
  v2 = sub_1C99C03D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE678(uint64_t a1)
{
  v2 = sub_1C99BFCF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE6B4(uint64_t a1)
{
  v2 = sub_1C99BFCF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE6F0(uint64_t a1)
{
  v2 = sub_1C99C0380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE72C(uint64_t a1)
{
  v2 = sub_1C99C0380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE768(uint64_t a1)
{
  v2 = sub_1C99BFBA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE7A4(uint64_t a1)
{
  v2 = sub_1C99BFBA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE7E0(uint64_t a1)
{
  v2 = sub_1C99BFBF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE81C(uint64_t a1)
{
  v2 = sub_1C99BFBF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE858(uint64_t a1)
{
  v2 = sub_1C99BFAA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE894(uint64_t a1)
{
  v2 = sub_1C99BFAA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE8D0(uint64_t a1)
{
  v2 = sub_1C99BFAF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE90C(uint64_t a1)
{
  v2 = sub_1C99BFAF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE948(uint64_t a1)
{
  v2 = sub_1C99BFB4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE984(uint64_t a1)
{
  v2 = sub_1C99BFB4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BE9C0(uint64_t a1)
{
  v2 = sub_1C99C032C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BE9FC(uint64_t a1)
{
  v2 = sub_1C99C032C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEA38(uint64_t a1)
{
  v2 = sub_1C99C02D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEA74(uint64_t a1)
{
  v2 = sub_1C99C02D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEAB0(uint64_t a1)
{
  v2 = sub_1C99C0818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEAEC(uint64_t a1)
{
  v2 = sub_1C99C0818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEB28(uint64_t a1)
{
  v2 = sub_1C99C0230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEB64(uint64_t a1)
{
  v2 = sub_1C99C0230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEBA0(uint64_t a1)
{
  v2 = sub_1C99BFD44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEBDC(uint64_t a1)
{
  v2 = sub_1C99BFD44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEC18(uint64_t a1)
{
  v2 = sub_1C99BFDEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEC54(uint64_t a1)
{
  v2 = sub_1C99BFDEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEC90(uint64_t a1)
{
  v2 = sub_1C99C086C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BECCC(uint64_t a1)
{
  v2 = sub_1C99C086C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BED08(uint64_t a1)
{
  v2 = sub_1C99BFF90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BED44(uint64_t a1)
{
  v2 = sub_1C99BFF90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BED80(uint64_t a1)
{
  v2 = sub_1C99BFF3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEDBC(uint64_t a1)
{
  v2 = sub_1C99BFF3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEDF8(uint64_t a1)
{
  v2 = sub_1C99BFE94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEE34(uint64_t a1)
{
  v2 = sub_1C99BFE94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEE70(uint64_t a1)
{
  v2 = sub_1C99BFEE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEEAC(uint64_t a1)
{
  v2 = sub_1C99BFEE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEEE8(uint64_t a1)
{
  v2 = sub_1C99BFD98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEF24(uint64_t a1)
{
  v2 = sub_1C99BFD98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEF60(uint64_t a1)
{
  v2 = sub_1C99C08C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BEF9C(uint64_t a1)
{
  v2 = sub_1C99C08C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BEFD8(uint64_t a1)
{
  v2 = sub_1C99C0188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BF014(uint64_t a1)
{
  v2 = sub_1C99C0188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BF050(uint64_t a1)
{
  v2 = sub_1C99C0134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BF08C(uint64_t a1)
{
  v2 = sub_1C99C0134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BF0C8(uint64_t a1)
{
  v2 = sub_1C99C00E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BF104(uint64_t a1)
{
  v2 = sub_1C99C00E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BF140(uint64_t a1)
{
  v2 = sub_1C99C01DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BF17C(uint64_t a1)
{
  v2 = sub_1C99C01DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BF1B8(uint64_t a1)
{
  v2 = sub_1C99C008C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BF1F4(uint64_t a1)
{
  v2 = sub_1C99C008C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BF230(uint64_t a1)
{
  v2 = sub_1C99C0038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BF26C(uint64_t a1)
{
  v2 = sub_1C99C0038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BF2A8(uint64_t a1)
{
  v2 = sub_1C99BFFE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BF2E4(uint64_t a1)
{
  v2 = sub_1C99BFFE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BF320(uint64_t a1)
{
  v2 = sub_1C99C0284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99BF35C(uint64_t a1)
{
  v2 = sub_1C99C0284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99BF3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C99BF464()
{
  v1 = *v0;
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](0);
  sub_1C978C430(v3, v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C99BF4B4(char a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000024;
      break;
    case 2:
    case 18:
    case 31:
      sub_1C99C2D54();
      result = v10 | 1;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
    case 20:
      sub_1C99C2D54();
      result = v8 + 5;
      break;
    case 5:
    case 21:
      sub_1C99C2D54();
      result = v9 - 5;
      break;
    case 6:
    case 30:
      sub_1C99C2D54();
      result = v12 - 3;
      break;
    case 7:
    case 8:
    case 11:
      sub_1C99C2D54();
      result = v11 - 2;
      break;
    case 9:
    case 17:
      sub_1C99C2D54();
      result = v7 - 4;
      break;
    case 10:
    case 12:
    case 28:
    case 29:
      sub_1C99C2D54();
      result = v18 - 1;
      break;
    case 13:
      result = 0xD000000000000024;
      break;
    case 14:
      result = 0xD000000000000024;
      break;
    case 15:
      sub_1C99C2D54();
      result = v6 + 4;
      break;
    case 16:
      sub_1C99C2D54();
      result = v5 + 6;
      break;
    case 19:
    case 35:
      sub_1C99C2D54();
      result = v16 | 3;
      break;
    case 22:
    case 24:
    case 25:
      sub_1C99C2D54();
      result = v14 - 6;
      break;
    case 23:
    case 27:
    case 37:
      sub_1C99C2D54();
      result = v17 - 8;
      break;
    case 26:
      sub_1C99C2D54();
      result = v19 - 9;
      break;
    case 32:
      sub_1C99C2D54();
      result = v13 + 13;
      break;
    case 33:
      result = 0xD000000000000024;
      break;
    case 34:
      result = 0xD000000000000024;
      break;
    case 36:
      sub_1C99C2D54();
      result = v4 - 7;
      break;
    case 38:
      result = 0xD000000000000036;
      break;
    case 39:
    case 40:
      sub_1C99C2D54();
      result = v15 | 2;
      break;
    case 41:
    case 42:
      return result;
    case 43:
      sub_1C99C2D54();
      result = v3 + 14;
      break;
    default:
      result = 0xD000000000000024;
      break;
  }

  return result;
}

unint64_t sub_1C99BF8D0(double a1)
{
  result = qword_1EC3C54B8;
  if (!qword_1EC3C54B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C54B8);
  }

  return result;
}

unint64_t sub_1C99BF93C()
{
  result = qword_1EC3C5670;
  if (!qword_1EC3C5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C5670);
  }

  return result;
}

unint64_t sub_1C99BF994()
{
  result = qword_1EC3CF5A8;
  if (!qword_1EC3CF5A8)
  {
    sub_1C97AA4F0(&qword_1EC3CF5B0, qword_1C9AC1EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF5A8);
  }

  return result;
}

unint64_t sub_1C99BF9FC()
{
  result = qword_1EC3CF5B8;
  if (!qword_1EC3CF5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF5B8);
  }

  return result;
}

unint64_t sub_1C99BFA50()
{
  result = qword_1EC3CF728;
  if (!qword_1EC3CF728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF728);
  }

  return result;
}

unint64_t sub_1C99BFAA4()
{
  result = qword_1EC3CF730;
  if (!qword_1EC3CF730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF730);
  }

  return result;
}

unint64_t sub_1C99BFAF8()
{
  result = qword_1EC3CF738;
  if (!qword_1EC3CF738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF738);
  }

  return result;
}

unint64_t sub_1C99BFB4C()
{
  result = qword_1EC3CF740;
  if (!qword_1EC3CF740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF740);
  }

  return result;
}

unint64_t sub_1C99BFBA0()
{
  result = qword_1EC3CF748;
  if (!qword_1EC3CF748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF748);
  }

  return result;
}

unint64_t sub_1C99BFBF4()
{
  result = qword_1EC3CF750;
  if (!qword_1EC3CF750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF750);
  }

  return result;
}

unint64_t sub_1C99BFC48()
{
  result = qword_1EC3CF758;
  if (!qword_1EC3CF758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF758);
  }

  return result;
}

unint64_t sub_1C99BFC9C()
{
  result = qword_1EC3CF760;
  if (!qword_1EC3CF760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF760);
  }

  return result;
}

unint64_t sub_1C99BFCF0()
{
  result = qword_1EC3CF768;
  if (!qword_1EC3CF768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF768);
  }

  return result;
}

unint64_t sub_1C99BFD44()
{
  result = qword_1EC3CF770;
  if (!qword_1EC3CF770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF770);
  }

  return result;
}

unint64_t sub_1C99BFD98()
{
  result = qword_1EC3CF778;
  if (!qword_1EC3CF778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF778);
  }

  return result;
}

unint64_t sub_1C99BFDEC()
{
  result = qword_1EC3CF780;
  if (!qword_1EC3CF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF780);
  }

  return result;
}

unint64_t sub_1C99BFE40()
{
  result = qword_1EC3CF788;
  if (!qword_1EC3CF788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF788);
  }

  return result;
}

unint64_t sub_1C99BFE94()
{
  result = qword_1EC3CF790;
  if (!qword_1EC3CF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF790);
  }

  return result;
}

unint64_t sub_1C99BFEE8()
{
  result = qword_1EC3CF798;
  if (!qword_1EC3CF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF798);
  }

  return result;
}

unint64_t sub_1C99BFF3C()
{
  result = qword_1EC3CF7A0;
  if (!qword_1EC3CF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7A0);
  }

  return result;
}

unint64_t sub_1C99BFF90()
{
  result = qword_1EC3CF7A8;
  if (!qword_1EC3CF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7A8);
  }

  return result;
}

unint64_t sub_1C99BFFE4()
{
  result = qword_1EC3CF7B0;
  if (!qword_1EC3CF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7B0);
  }

  return result;
}

unint64_t sub_1C99C0038()
{
  result = qword_1EC3CF7B8;
  if (!qword_1EC3CF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7B8);
  }

  return result;
}

unint64_t sub_1C99C008C()
{
  result = qword_1EC3CF7C0;
  if (!qword_1EC3CF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7C0);
  }

  return result;
}

unint64_t sub_1C99C00E0()
{
  result = qword_1EC3CF7C8;
  if (!qword_1EC3CF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7C8);
  }

  return result;
}

unint64_t sub_1C99C0134()
{
  result = qword_1EC3CF7D0;
  if (!qword_1EC3CF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7D0);
  }

  return result;
}

unint64_t sub_1C99C0188()
{
  result = qword_1EC3CF7D8;
  if (!qword_1EC3CF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7D8);
  }

  return result;
}

unint64_t sub_1C99C01DC()
{
  result = qword_1EC3CF7E0;
  if (!qword_1EC3CF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7E0);
  }

  return result;
}

unint64_t sub_1C99C0230()
{
  result = qword_1EC3CF7E8;
  if (!qword_1EC3CF7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7E8);
  }

  return result;
}

unint64_t sub_1C99C0284()
{
  result = qword_1EC3CF7F0;
  if (!qword_1EC3CF7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7F0);
  }

  return result;
}

unint64_t sub_1C99C02D8()
{
  result = qword_1EC3CF7F8;
  if (!qword_1EC3CF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF7F8);
  }

  return result;
}

unint64_t sub_1C99C032C()
{
  result = qword_1EC3CF800;
  if (!qword_1EC3CF800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF800);
  }

  return result;
}

unint64_t sub_1C99C0380()
{
  result = qword_1EC3CF808;
  if (!qword_1EC3CF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF808);
  }

  return result;
}

unint64_t sub_1C99C03D4()
{
  result = qword_1EC3CF810;
  if (!qword_1EC3CF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF810);
  }

  return result;
}

unint64_t sub_1C99C0428()
{
  result = qword_1EC3CF818;
  if (!qword_1EC3CF818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF818);
  }

  return result;
}

unint64_t sub_1C99C047C()
{
  result = qword_1EC3CF820;
  if (!qword_1EC3CF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF820);
  }

  return result;
}

unint64_t sub_1C99C04D0()
{
  result = qword_1EC3CF828;
  if (!qword_1EC3CF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF828);
  }

  return result;
}

unint64_t sub_1C99C0524()
{
  result = qword_1EC3CF830;
  if (!qword_1EC3CF830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF830);
  }

  return result;
}

unint64_t sub_1C99C0578()
{
  result = qword_1EC3CF838;
  if (!qword_1EC3CF838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF838);
  }

  return result;
}

unint64_t sub_1C99C05CC()
{
  result = qword_1EC3CF840;
  if (!qword_1EC3CF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF840);
  }

  return result;
}

unint64_t sub_1C99C0620()
{
  result = qword_1EC3CF848;
  if (!qword_1EC3CF848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF848);
  }

  return result;
}

unint64_t sub_1C99C0674()
{
  result = qword_1EC3CF850;
  if (!qword_1EC3CF850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF850);
  }

  return result;
}

unint64_t sub_1C99C06C8()
{
  result = qword_1EC3CF858;
  if (!qword_1EC3CF858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF858);
  }

  return result;
}

unint64_t sub_1C99C071C()
{
  result = qword_1EC3CF860;
  if (!qword_1EC3CF860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF860);
  }

  return result;
}

unint64_t sub_1C99C0770()
{
  result = qword_1EC3CF868;
  if (!qword_1EC3CF868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF868);
  }

  return result;
}

unint64_t sub_1C99C07C4()
{
  result = qword_1EC3CF870;
  if (!qword_1EC3CF870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF870);
  }

  return result;
}

unint64_t sub_1C99C0818()
{
  result = qword_1EC3CF878;
  if (!qword_1EC3CF878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF878);
  }

  return result;
}

unint64_t sub_1C99C086C()
{
  result = qword_1EC3CF880;
  if (!qword_1EC3CF880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF880);
  }

  return result;
}

unint64_t sub_1C99C08C0()
{
  result = qword_1EC3CF888;
  if (!qword_1EC3CF888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF888);
  }

  return result;
}

uint64_t sub_1C99C0914(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD5)
  {
    if (a2 + 43 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 43) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 44;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2C;
  v5 = v6 - 44;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C99C099C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 43 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 43) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD4)
  {
    v6 = ((a2 - 213) >> 8) + 1;
    *result = a2 + 43;
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
          *result = a2 + 43;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C99C0D3C()
{
  result = qword_1EC3CF9F8;
  if (!qword_1EC3CF9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF9F8);
  }

  return result;
}

unint64_t sub_1C99C0D94()
{
  result = qword_1EC3CFA00;
  if (!qword_1EC3CFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA00);
  }

  return result;
}

unint64_t sub_1C99C0DEC()
{
  result = qword_1EC3CFA08;
  if (!qword_1EC3CFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA08);
  }

  return result;
}

unint64_t sub_1C99C0E44()
{
  result = qword_1EC3CFA10;
  if (!qword_1EC3CFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA10);
  }

  return result;
}

unint64_t sub_1C99C0E9C()
{
  result = qword_1EC3CFA18;
  if (!qword_1EC3CFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA18);
  }

  return result;
}

unint64_t sub_1C99C0EF4()
{
  result = qword_1EC3CFA20;
  if (!qword_1EC3CFA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA20);
  }

  return result;
}

unint64_t sub_1C99C0F4C()
{
  result = qword_1EC3CFA28;
  if (!qword_1EC3CFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA28);
  }

  return result;
}

unint64_t sub_1C99C0FA4()
{
  result = qword_1EC3CFA30;
  if (!qword_1EC3CFA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA30);
  }

  return result;
}

unint64_t sub_1C99C0FFC()
{
  result = qword_1EC3CFA38;
  if (!qword_1EC3CFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA38);
  }

  return result;
}

unint64_t sub_1C99C1054()
{
  result = qword_1EC3CFA40;
  if (!qword_1EC3CFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA40);
  }

  return result;
}

unint64_t sub_1C99C10AC()
{
  result = qword_1EC3CFA48;
  if (!qword_1EC3CFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA48);
  }

  return result;
}

unint64_t sub_1C99C1104()
{
  result = qword_1EC3CFA50;
  if (!qword_1EC3CFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA50);
  }

  return result;
}

unint64_t sub_1C99C115C()
{
  result = qword_1EC3CFA58;
  if (!qword_1EC3CFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA58);
  }

  return result;
}

unint64_t sub_1C99C11B4()
{
  result = qword_1EC3CFA60;
  if (!qword_1EC3CFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA60);
  }

  return result;
}

unint64_t sub_1C99C120C()
{
  result = qword_1EC3CFA68;
  if (!qword_1EC3CFA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA68);
  }

  return result;
}

unint64_t sub_1C99C1264()
{
  result = qword_1EC3CFA70;
  if (!qword_1EC3CFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA70);
  }

  return result;
}

unint64_t sub_1C99C12BC()
{
  result = qword_1EC3CFA78;
  if (!qword_1EC3CFA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA78);
  }

  return result;
}

unint64_t sub_1C99C1314()
{
  result = qword_1EC3CFA80;
  if (!qword_1EC3CFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA80);
  }

  return result;
}

unint64_t sub_1C99C136C()
{
  result = qword_1EC3CFA88;
  if (!qword_1EC3CFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA88);
  }

  return result;
}

unint64_t sub_1C99C13C4()
{
  result = qword_1EC3CFA90;
  if (!qword_1EC3CFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA90);
  }

  return result;
}

unint64_t sub_1C99C141C()
{
  result = qword_1EC3CFA98;
  if (!qword_1EC3CFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFA98);
  }

  return result;
}

unint64_t sub_1C99C1474()
{
  result = qword_1EC3CFAA0;
  if (!qword_1EC3CFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAA0);
  }

  return result;
}

unint64_t sub_1C99C14CC()
{
  result = qword_1EC3CFAA8;
  if (!qword_1EC3CFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAA8);
  }

  return result;
}

unint64_t sub_1C99C1524()
{
  result = qword_1EC3CFAB0;
  if (!qword_1EC3CFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAB0);
  }

  return result;
}

unint64_t sub_1C99C157C()
{
  result = qword_1EC3CFAB8;
  if (!qword_1EC3CFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAB8);
  }

  return result;
}

unint64_t sub_1C99C15D4()
{
  result = qword_1EC3CFAC0;
  if (!qword_1EC3CFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAC0);
  }

  return result;
}

unint64_t sub_1C99C162C()
{
  result = qword_1EC3CFAC8;
  if (!qword_1EC3CFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAC8);
  }

  return result;
}

unint64_t sub_1C99C1684()
{
  result = qword_1EC3CFAD0;
  if (!qword_1EC3CFAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAD0);
  }

  return result;
}

unint64_t sub_1C99C16DC()
{
  result = qword_1EC3CFAD8;
  if (!qword_1EC3CFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAD8);
  }

  return result;
}

unint64_t sub_1C99C1734()
{
  result = qword_1EC3CFAE0;
  if (!qword_1EC3CFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAE0);
  }

  return result;
}

unint64_t sub_1C99C178C()
{
  result = qword_1EC3CFAE8;
  if (!qword_1EC3CFAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAE8);
  }

  return result;
}

unint64_t sub_1C99C17E4()
{
  result = qword_1EC3CFAF0;
  if (!qword_1EC3CFAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAF0);
  }

  return result;
}

unint64_t sub_1C99C183C()
{
  result = qword_1EC3CFAF8;
  if (!qword_1EC3CFAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFAF8);
  }

  return result;
}

unint64_t sub_1C99C1894()
{
  result = qword_1EC3CFB00;
  if (!qword_1EC3CFB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB00);
  }

  return result;
}

unint64_t sub_1C99C18EC()
{
  result = qword_1EC3CFB08;
  if (!qword_1EC3CFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB08);
  }

  return result;
}

unint64_t sub_1C99C1944()
{
  result = qword_1EC3CFB10;
  if (!qword_1EC3CFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB10);
  }

  return result;
}

unint64_t sub_1C99C199C()
{
  result = qword_1EC3CFB18;
  if (!qword_1EC3CFB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB18);
  }

  return result;
}

unint64_t sub_1C99C19F4()
{
  result = qword_1EC3CFB20;
  if (!qword_1EC3CFB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB20);
  }

  return result;
}

unint64_t sub_1C99C1A4C()
{
  result = qword_1EC3CFB28;
  if (!qword_1EC3CFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB28);
  }

  return result;
}

unint64_t sub_1C99C1AA4()
{
  result = qword_1EC3CFB30;
  if (!qword_1EC3CFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB30);
  }

  return result;
}

unint64_t sub_1C99C1AFC()
{
  result = qword_1EC3CFB38;
  if (!qword_1EC3CFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB38);
  }

  return result;
}

unint64_t sub_1C99C1B54()
{
  result = qword_1EC3CFB40;
  if (!qword_1EC3CFB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB40);
  }

  return result;
}

unint64_t sub_1C99C1BAC()
{
  result = qword_1EC3CFB48;
  if (!qword_1EC3CFB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB48);
  }

  return result;
}

unint64_t sub_1C99C1C04()
{
  result = qword_1EC3CFB50;
  if (!qword_1EC3CFB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB50);
  }

  return result;
}

unint64_t sub_1C99C1C5C()
{
  result = qword_1EC3CFB58;
  if (!qword_1EC3CFB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB58);
  }

  return result;
}

unint64_t sub_1C99C1CB4()
{
  result = qword_1EC3CFB60;
  if (!qword_1EC3CFB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB60);
  }

  return result;
}

unint64_t sub_1C99C1D0C()
{
  result = qword_1EC3CFB68;
  if (!qword_1EC3CFB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB68);
  }

  return result;
}

unint64_t sub_1C99C1D64()
{
  result = qword_1EC3CFB70;
  if (!qword_1EC3CFB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB70);
  }

  return result;
}

unint64_t sub_1C99C1DBC()
{
  result = qword_1EC3CFB78;
  if (!qword_1EC3CFB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB78);
  }

  return result;
}

unint64_t sub_1C99C1E14()
{
  result = qword_1EC3CFB80;
  if (!qword_1EC3CFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB80);
  }

  return result;
}

unint64_t sub_1C99C1E6C()
{
  result = qword_1EC3CFB88;
  if (!qword_1EC3CFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB88);
  }

  return result;
}

unint64_t sub_1C99C1EC4()
{
  result = qword_1EC3CFB90;
  if (!qword_1EC3CFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB90);
  }

  return result;
}

unint64_t sub_1C99C1F1C()
{
  result = qword_1EC3CFB98;
  if (!qword_1EC3CFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFB98);
  }

  return result;
}

unint64_t sub_1C99C1F74()
{
  result = qword_1EC3CFBA0;
  if (!qword_1EC3CFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBA0);
  }

  return result;
}

unint64_t sub_1C99C1FCC()
{
  result = qword_1EC3CFBA8;
  if (!qword_1EC3CFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBA8);
  }

  return result;
}

unint64_t sub_1C99C2024()
{
  result = qword_1EC3CFBB0;
  if (!qword_1EC3CFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBB0);
  }

  return result;
}

unint64_t sub_1C99C207C()
{
  result = qword_1EC3CFBB8;
  if (!qword_1EC3CFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBB8);
  }

  return result;
}

unint64_t sub_1C99C20D4()
{
  result = qword_1EC3CFBC0;
  if (!qword_1EC3CFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBC0);
  }

  return result;
}

unint64_t sub_1C99C212C()
{
  result = qword_1EC3CFBC8;
  if (!qword_1EC3CFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBC8);
  }

  return result;
}

unint64_t sub_1C99C2184()
{
  result = qword_1EC3CFBD0;
  if (!qword_1EC3CFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBD0);
  }

  return result;
}

unint64_t sub_1C99C21DC()
{
  result = qword_1EC3CFBD8;
  if (!qword_1EC3CFBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBD8);
  }

  return result;
}

unint64_t sub_1C99C2234()
{
  result = qword_1EC3CFBE0;
  if (!qword_1EC3CFBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBE0);
  }

  return result;
}

unint64_t sub_1C99C228C()
{
  result = qword_1EC3CFBE8;
  if (!qword_1EC3CFBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBE8);
  }

  return result;
}

unint64_t sub_1C99C22E4()
{
  result = qword_1EC3CFBF0;
  if (!qword_1EC3CFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBF0);
  }

  return result;
}

unint64_t sub_1C99C233C()
{
  result = qword_1EC3CFBF8;
  if (!qword_1EC3CFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFBF8);
  }

  return result;
}

unint64_t sub_1C99C2394()
{
  result = qword_1EC3CFC00;
  if (!qword_1EC3CFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC00);
  }

  return result;
}

unint64_t sub_1C99C23EC()
{
  result = qword_1EC3CFC08;
  if (!qword_1EC3CFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC08);
  }

  return result;
}

unint64_t sub_1C99C2444()
{
  result = qword_1EC3CFC10;
  if (!qword_1EC3CFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC10);
  }

  return result;
}

unint64_t sub_1C99C249C()
{
  result = qword_1EC3CFC18;
  if (!qword_1EC3CFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC18);
  }

  return result;
}

unint64_t sub_1C99C24F4()
{
  result = qword_1EC3CFC20;
  if (!qword_1EC3CFC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC20);
  }

  return result;
}

unint64_t sub_1C99C254C()
{
  result = qword_1EC3CFC28;
  if (!qword_1EC3CFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC28);
  }

  return result;
}

unint64_t sub_1C99C25A4()
{
  result = qword_1EC3CFC30;
  if (!qword_1EC3CFC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC30);
  }

  return result;
}

unint64_t sub_1C99C25FC()
{
  result = qword_1EC3CFC38;
  if (!qword_1EC3CFC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC38);
  }

  return result;
}

unint64_t sub_1C99C2654()
{
  result = qword_1EC3CFC40;
  if (!qword_1EC3CFC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC40);
  }

  return result;
}

unint64_t sub_1C99C26AC()
{
  result = qword_1EC3CFC48;
  if (!qword_1EC3CFC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC48);
  }

  return result;
}

unint64_t sub_1C99C2704()
{
  result = qword_1EC3CFC50;
  if (!qword_1EC3CFC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC50);
  }

  return result;
}

unint64_t sub_1C99C275C()
{
  result = qword_1EC3CFC58;
  if (!qword_1EC3CFC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC58);
  }

  return result;
}

unint64_t sub_1C99C27B4()
{
  result = qword_1EC3CFC60;
  if (!qword_1EC3CFC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC60);
  }

  return result;
}

unint64_t sub_1C99C280C()
{
  result = qword_1EC3CFC68;
  if (!qword_1EC3CFC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC68);
  }

  return result;
}

unint64_t sub_1C99C2864()
{
  result = qword_1EC3CFC70;
  if (!qword_1EC3CFC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC70);
  }

  return result;
}

unint64_t sub_1C99C28BC()
{
  result = qword_1EC3CFC78;
  if (!qword_1EC3CFC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC78);
  }

  return result;
}

unint64_t sub_1C99C2914()
{
  result = qword_1EC3CFC80;
  if (!qword_1EC3CFC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC80);
  }

  return result;
}

unint64_t sub_1C99C296C()
{
  result = qword_1EC3CFC88;
  if (!qword_1EC3CFC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC88);
  }

  return result;
}

unint64_t sub_1C99C29C4()
{
  result = qword_1EC3CFC90;
  if (!qword_1EC3CFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC90);
  }

  return result;
}

unint64_t sub_1C99C2A1C()
{
  result = qword_1EC3CFC98;
  if (!qword_1EC3CFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFC98);
  }

  return result;
}

unint64_t sub_1C99C2A74()
{
  result = qword_1EC3CFCA0;
  if (!qword_1EC3CFCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFCA0);
  }

  return result;
}

unint64_t sub_1C99C2ACC()
{
  result = qword_1EC3CFCA8;
  if (!qword_1EC3CFCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFCA8);
  }

  return result;
}

unint64_t sub_1C99C2B24()
{
  result = qword_1EC3CFCB0;
  if (!qword_1EC3CFCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFCB0);
  }

  return result;
}

unint64_t sub_1C99C2B7C()
{
  result = qword_1EC3CFCB8;
  if (!qword_1EC3CFCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFCB8);
  }

  return result;
}

unint64_t sub_1C99C2BD4()
{
  result = qword_1EC3CFCC0;
  if (!qword_1EC3CFCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFCC0);
  }

  return result;
}

unint64_t sub_1C99C2C2C()
{
  result = qword_1EC3CFCC8;
  if (!qword_1EC3CFCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFCC8);
  }

  return result;
}

uint64_t sub_1C99C2C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A93988();
}

uint64_t sub_1C99C2CBC(uint64_t a1, uint64_t a2)
{

  return sub_1C9A93858();
}

uint64_t sub_1C99C2CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A93988();
}

uint64_t sub_1C99C2D00(uint64_t a1, uint64_t a2)
{

  return sub_1C9A93858();
}

uint64_t sub_1C99C2D20(uint64_t a1, uint64_t a2)
{

  return sub_1C9A93858();
}

uint64_t sub_1C99C2D3C()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1C99C2D68(uint64_t a1)
{

  return sub_1C97ACC50(v1, 1, 1, a1);
}

BOOL sub_1C99C2D88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v2;
  v11[2] = *(a1 + 32);
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v5;
  v10[2] = *(a2 + 32);
  v7 = *(a2 + 48);
  v6 = *(a2 + 56);
  v8 = static TimeRange.== infix(_:_:)(v11, v10);
  result = 0;
  if (v8 && v4 == v7)
  {
    return v3 == v6;
  }

  return result;
}

uint64_t sub_1C99C2E04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74657366666FLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C99C2F20(char a1)
{
  if (!a1)
  {
    return 0x676E6152656D6974;
  }

  if (a1 == 1)
  {
    return 0x74657366666FLL;
  }

  return 0x6E656469666E6F63;
}

uint64_t sub_1C99C2F7C(void *a1)
{
  v3 = v1;
  v5 = sub_1C97A2CEC(&unk_1EC3CFCF8, &qword_1C9AC4798);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99C438C();
  sub_1C9A93DD8();
  v11 = v3[1];
  v14 = *v3;
  v15 = v11;
  v16 = v3[2];
  v13[15] = 0;
  sub_1C97BD12C();
  sub_1C9A93A18();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1C9A939E8();
    LOBYTE(v14) = 2;
    sub_1C9A939E8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C99C3128()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  MEMORY[0x1CCA919B0](*v0);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v1);
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  MEMORY[0x1CCA919B0](*&v6);
  if (v5 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v5;
  }

  return MEMORY[0x1CCA919B0](*&v7);
}

uint64_t sub_1C99C31EC()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 5);
  v6 = v0[6];
  v5 = v0[7];
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](*&v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  if (v6 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v6;
  }

  MEMORY[0x1CCA919B0](*&v7);
  if (v5 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x1CCA919B0](*&v8);
  return sub_1C9A93D18();
}

uint64_t sub_1C99C32F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CFCE0, &qword_1C9AC4790);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99C438C();
  sub_1C9A93DB8();
  if (!v2)
  {
    v19 = 0;
    sub_1C97BD0D8();
    sub_1C9A938F8();
    v16 = v15[0];
    v17 = v15[1];
    v18 = v15[2];
    v12 = sub_1C99C45C4(1);
    v13 = sub_1C99C45C4(2);
    (*(v7 + 8))(v10, v5);
    v14 = v17;
    *a2 = v16;
    *(a2 + 16) = v14;
    *(a2 + 32) = v18;
    *(a2 + 48) = v12;
    *(a2 + 56) = v13;
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C99C34D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99C2E04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99C34FC(uint64_t a1)
{
  v2 = sub_1C99C438C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99C3538(uint64_t a1)
{
  v2 = sub_1C99C438C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99C357C()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 5);
  v6 = v0[6];
  v5 = v0[7];
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](*&v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  if (v6 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v6;
  }

  MEMORY[0x1CCA919B0](*&v7);
  if (v5 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x1CCA919B0](*&v8);
  return sub_1C9A93D18();
}

double SNAudioOffsetResult.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SNAudioOffsetResult_impl;
  v3 = *(v1 + OBJC_IVAR___SNAudioOffsetResult_impl + 40);
  *a1 = *(v1 + OBJC_IVAR___SNAudioOffsetResult_impl);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = *(v2 + 16);
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double SNAudioOffsetResult.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v1 + OBJC_IVAR___SNAudioOffsetResult_impl;
  *v3 = *a1;
  *(v3 + 8) = *(a1 + 8);
  *(v3 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 40) = v2;
  return result;
}

double sub_1C99C37DC@<D0>(_OWORD *a1@<X8>)
{
  SNAudioOffsetResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*SNAudioOffsetResult.timeRange.modify(void *a1))(void **a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  SNAudioOffsetResult.timeRange.getter((v3 + 1));
  return sub_1C99C3884;
}

void sub_1C99C3884(void **a1)
{
  v1 = *a1;
  SNAudioOffsetResult.timeRange.setter(*a1 + 8);

  free(v1);
}

double (*SNAudioOffsetResult.offset.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNAudioOffsetResult_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 48);
  return sub_1C98277B8;
}

double (*SNAudioOffsetResult.confidence.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNAudioOffsetResult_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 56);
  return sub_1C98CB940;
}

id sub_1C99C3A14()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x1E6960C98];
  v3 = *(MEMORY[0x1E6960C98] + 40);
  v4 = &v0[OBJC_IVAR___SNAudioOffsetResult_impl];
  *v4 = *MEMORY[0x1E6960C98];
  *(v4 + 1) = *(v2 + 8);
  *(v4 + 1) = *(v2 + 16);
  *(v4 + 4) = *(v2 + 32);
  *(v4 + 5) = v3;
  *(v4 + 6) = 0;
  *(v4 + 7) = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

void *SNAudioOffsetResult.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1C98CC224(OBJC_IVAR___SNAudioOffsetResult_impl);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___SNAudioOffsetResult_impl];
  v6 = v9[2];
  *v5 = v9[1];
  v5[1] = v6;
  v7 = v9[4];
  v5[2] = v9[3];
  v5[3] = v7;
  v9[0].receiver = v4;
  v9[0].super_class = ObjectType;
  result = [(objc_super *)v9 init];
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

BOOL SNAudioOffsetResult.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v18);
  if (!v19)
  {
    return 0;
  }

  sub_1C97A2D34(&v18, v17);
  sub_1C97BD360(v17, v16);
  v11 = swift_dynamicCast() && (v3 = v15, v4 = *(v1 + OBJC_IVAR___SNAudioOffsetResult_impl + 16), v14[0] = *(v1 + OBJC_IVAR___SNAudioOffsetResult_impl), v14[1] = v4, v14[2] = *(v1 + OBJC_IVAR___SNAudioOffsetResult_impl + 32), v6 = *(v1 + OBJC_IVAR___SNAudioOffsetResult_impl + 48), v5 = *(v1 + OBJC_IVAR___SNAudioOffsetResult_impl + 56), v7 = *&v15[OBJC_IVAR___SNAudioOffsetResult_impl + 16], v13[0] = *&v15[OBJC_IVAR___SNAudioOffsetResult_impl], v13[1] = v7, v13[2] = *&v15[OBJC_IVAR___SNAudioOffsetResult_impl + 32], v9 = *&v15[OBJC_IVAR___SNAudioOffsetResult_impl + 48], v8 = *&v15[OBJC_IVAR___SNAudioOffsetResult_impl + 56], v10 = static TimeRange.== infix(_:_:)(v14, v13), v3, v10) && v6 == v9 && v5 == v8;
  sub_1C97A592C(v17);
  return v11;
}

id SNAudioOffsetResult.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C97A2494(1819307369, 0xE400000000000000);
  v3 = objc_allocWithZone(ObjectType);
  v4 = &v3[OBJC_IVAR___SNAudioOffsetResult_impl];
  v5 = v12;
  *v4 = v11;
  *(v4 + 1) = v5;
  v6 = v14;
  *(v4 + 2) = v13;
  *(v4 + 3) = v6;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v10, sel_init);

  v8 = swift_getObjectType();
  sub_1C9841DA0(v8);
  return v7;
}

uint64_t SNAudioOffsetResult.description.getter()
{
  ObjectType = swift_getObjectType();
  *&v16[0] = 0;
  *(&v16[0] + 1) = 0xE000000000000000;
  sub_1C9A935B8();
  v15 = v16[0];
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v14, sel_description);
  v3 = sub_1C9A924A8();
  v5 = v4;

  MEMORY[0x1CCA90230](v3, v5);

  MEMORY[0x1CCA90230](0xD000000000000010, 0x80000001C9ADD780);
  sub_1C9A92AF8();
  MEMORY[0x1CCA90230](0x6469666E6F43203BLL, 0xEE00203A65636E65);
  sub_1C9A92AF8();
  MEMORY[0x1CCA90230](0x203A656D6954203BLL, 0xE800000000000000);
  SNAudioOffsetResult.timeRange.getter(v16);
  v6 = objc_opt_self();
  v13[0] = v16[0];
  v13[1] = v16[1];
  v13[2] = v16[2];
  v7 = [v6 valueWithCMTimeRange_];
  v8 = [v7 description];
  v9 = sub_1C9A924A8();
  v11 = v10;

  MEMORY[0x1CCA90230](v9, v11);

  return v15;
}

id SNAudioOffsetResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C99C424C@<D0>(_OWORD *a1@<X8>)
{
  SNAudioOffsetResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1C99C42C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C99C42E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_1C99C4338()
{
  result = qword_1EC3CFCD8;
  if (!qword_1EC3CFCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFCD8);
  }

  return result;
}

unint64_t sub_1C99C438C()
{
  result = qword_1EC3CFCE8;
  if (!qword_1EC3CFCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFCE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioOffsetResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C99C44C0()
{
  result = qword_1EC3CFD08;
  if (!qword_1EC3CFD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFD08);
  }

  return result;
}

unint64_t sub_1C99C4518()
{
  result = qword_1EC3CFD10;
  if (!qword_1EC3CFD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFD10);
  }

  return result;
}

unint64_t sub_1C99C4570()
{
  result = qword_1EC3CFD18;
  if (!qword_1EC3CFD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFD18);
  }

  return result;
}

double sub_1C99C45C4@<D0>(char a1@<W8>)
{
  *(v1 - 66) = a1;

  sub_1C9A938C8();
  return result;
}

uint64_t sub_1C99C45E8(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 36) = 1;
  *(v1 + 40) = a1;
  return v1;
}

id sub_1C99C4604(uint64_t a1, double a2)
{
  v76[6] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  v76[0] = 0;
  v6 = sub_1C9A761F8(v4, v76, v5);
  if (!v6)
  {
    v31 = v76[0];
    sub_1C9A913C8();

    swift_willThrow();
    return v6;
  }

  v7 = v76[0];
  v8 = sub_1C9A92478();
  sub_1C9A6B534(v6, v8);

  v9 = sub_1C9A92478();
  v10 = sub_1C99C4EC0();
  v13 = sub_1C9A72FAC(v10, v11, v9, v12);

  if (!v13)
  {
    v32 = v76[0];
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_12;
  }

  v14 = v76[0];
  v15 = sub_1C9A92478();
  v16 = sub_1C99C4EC0();
  v19 = sub_1C9A74DF0(v16, v17, v15, v18);

  v20 = v76[0];
  if (!v19)
  {
    v33 = v76[0];
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_12;
  }

  v21 = v76[0];
  v22 = sub_1C9A92478();
  v23 = sub_1C99C4EC0();
  v26 = sub_1C9A75428(v23, v24, v22, v25);

  if (!v26)
  {
    v34 = v76[0];
    sub_1C99C4EE4();

    swift_willThrow();
    goto LABEL_12;
  }

  v74 = v19;
  v28 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_model);
  v27 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_model + 8);
  v29 = v76[0];
  sub_1C9A3B76C(v26, v28, v27, v30);
  if (!v2)
  {
    v36 = sub_1C9A92478();
    v37 = sub_1C99C4EC0();
    v40 = sub_1C9A73214(v37, v38, v36, v39);

    v41 = v76[0];
    if (v40)
    {
      v73 = v40;
      v42 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_stepSizeFrames);
      if (!v42 || (v43 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_windowLengthFrames), v43 < v42))
      {
        sub_1C99C4CEC();
        swift_allocError();
        *v44 = 0;
        swift_willThrow();
        v45 = v41;

        return v6;
      }

      v47 = v76[0];
      sub_1C99C4ED4();
      sub_1C9A76554(v48, 1, 1, v49);
      v50 = sub_1C99C4E90();
      if (!sub_1C9A762F8(v50, v51, v13, v74, 0, 0, v52, v53) || (v54 = v75, sub_1C99C4ED4(), sub_1C9A76640(v55, v42, v43, 1, v56), v57 = sub_1C99C4E90(), v58 = v26, !sub_1C9A762F8(v57, v59, v74, v26, 0, 0, v60, v61)))
      {
        v71 = v75;
        sub_1C99C4EE4();

        swift_willThrow();
        goto LABEL_12;
      }

      v62 = v75;
      sub_1C99C4ED4();
      sub_1C9A76640(v63, v42, 512, 1, v64);
      v65 = sub_1C99C4E90();
      v66 = v26;
      v26 = v73;
      if (sub_1C9A762F8(v65, v67, v66, v73, 0, 0, v68, v69))
      {
        v70 = v75;
        sub_1C9A695C8(v6, 0x4000, 16000, 1);
        sub_1C9A69B8C(v6);

        goto LABEL_7;
      }

      v72 = v75;
      sub_1C9A913C8();

      swift_willThrow();
    }

    else
    {
      v46 = v76[0];
      sub_1C99C4EE4();

      swift_willThrow();
    }

LABEL_12:
    return v6;
  }

LABEL_7:
  return v6;
}

id sub_1C99C4AEC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C99C4CEC();
  swift_allocError();
  *v3 = 1;
  return swift_willThrow();
}

void sub_1C99C4B50(int a1, double a2)
{
  v6 = *v2;
  if ((*(v2 + 36) & 1) != 0 || (v2[3] == a2 ? (v7 = *(v2 + 8) == a1) : (v7 = 0), !v7))
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = v6;

    v9 = sub_1C97C1C8C();

    if (!v3)
    {
      v10 = *(v2 + 2);
      *(v2 + 2) = v9;

      v2[3] = a2;
      *(v2 + 8) = a1;
      *(v2 + 36) = 0;
    }
  }
}

void sub_1C99C4C40(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  v6 = sub_1C99C4604(v4, v5);

  if (!v2)
  {
    *a2 = v6;
  }
}

unint64_t sub_1C99C4CEC()
{
  result = qword_1EC3CFD20;
  if (!qword_1EC3CFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFD20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNSoundPrintFeatureExtractor.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C99C4E3C()
{
  result = qword_1EC3CFD28;
  if (!qword_1EC3CFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFD28);
  }

  return result;
}

uint64_t sub_1C99C4EE4()
{

  return sub_1C9A913C8();
}

id sub_1C99C4F6C()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR___SNBooleanCancellable_isCancelled] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

_BYTE *storeEnumTagSinglePayload for NativeModelCompileUtils(_BYTE *result, int a2, int a3)
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

uint64_t *sub_1C99C50DC@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>, double a3@<D0>)
{
  type metadata accessor for LogMelState(a3);
  swift_allocObject();
  result = sub_1C99B7E2C(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C99C513C(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CFDC0, &unk_1C9AC4CD0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99C61BC();
  sub_1C9A93DD8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C99C5250(uint64_t a1)
{
  v2 = sub_1C99C61BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99C528C(uint64_t a1)
{
  v2 = sub_1C99C61BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_UNKNOWN **sub_1C99C52E0(uint64_t a1, double a2)
{
  type metadata accessor for SNAudioOffsetEstimator(a2);
  v3 = swift_allocObject();
  sub_1C99C57EC();
  if (v2)
  {
    return &off_1F4948898;
  }

  else
  {
    return v3;
  }
}

void *SNEstimateAudioOffsetRequest.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4.receiver = objc_allocWithZone(ObjectType);
  v4.super_class = ObjectType;
  result = objc_msgSendSuper2(&v4, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNEstimateAudioOffsetRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v7);
  if (!v8)
  {
    return 0;
  }

  sub_1C97A2D34(&v7, v6);
  sub_1C97BD360(v6, v5);
  v2 = swift_dynamicCast();
  if (v2)
  {
  }

  sub_1C97A592C(v6);
  return v2;
}

id SNEstimateAudioOffsetRequest.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1C97FD140();
  sub_1C97A257C(v4, v5, v6);
  if (v1)
  {

    v7 = swift_getObjectType();
    sub_1C97FD174(v7);
    return 0;
  }

  else
  {
    v11.receiver = objc_allocWithZone(ObjectType);
    v11.super_class = ObjectType;
    v8 = objc_msgSendSuper2(&v11, sel_init);

    v9 = swift_getObjectType();
    sub_1C97FD174(v9);
  }

  return v8;
}

Swift::Void __swiftcall SNEstimateAudioOffsetRequest.encode(with:)(NSCoder with)
{
  v3 = sub_1C97FD140();
  sub_1C97A0908(v3, v4, v5);
  if (v1)
  {
    v6 = sub_1C9A913B8();
    [(objc_class *)with.super.isa failWithError:v6];
  }
}

id SNEstimateAudioOffsetRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double *sub_1C99C57EC()
{
  v2 = v0;
  v3 = *v0;
  v4 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v0[2] = 0.0;
  type metadata accessor for SNFileUtils(v7);
  sub_1C9A456F0(v6);
  v8 = sub_1C9A91558();
  result = sub_1C97ABF20(v6, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = sub_1C9A91518();
    v12 = v11;
    (*(*(v8 - 8) + 8))(v6, v8);
    v13 = swift_allocObject();
    v13[2] = v10;
    v13[3] = v12;
    v13[4] = v3;
    v14 = sub_1C97C1C8C();

    if (v1)
    {

      swift_deallocPartialClassInstance();
    }

    else
    {
      v15 = *(v2 + 2);
      *(v2 + 2) = v14;
      v2[3] = 0.0;
      v16 = v14;

      sub_1C989DEA8(1);
      v18 = v17;
      sub_1C989DEA8(5);
      sub_1C989DEA8(6);
      sub_1C989DEA8(7);

      v19 = 0.0;
      v20 = 0;
      if (v18 > 0.0)
      {
        v21 = sub_1C99C6424();
        v19 = sub_1C99C63F4(v21, v22, v23, v24, 1000.0);
      }

      *(v2 + 4) = v20;
      v2[5] = v19;
    }

    return v2;
  }

  return result;
}

uint64_t sub_1C99C5A50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C99C5A7C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C99C5A7C()
{
  sub_1C97A2CEC(&qword_1EC3C80C0, &qword_1C9AC4CE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9AA3B60;
  *(inited + 32) = sub_1C9A92348();
  *(inited + 40) = sub_1C9A92348();
  v1 = sub_1C97E9314(inited);
  swift_setDeallocating();
  sub_1C985D6D4();
  v3 = objc_allocWithZone(type metadata accessor for SNDSPConfiguration(v2));

  v5 = sub_1C98CDEB8(v1, v4);
  v7 = type metadata accessor for SNDSPGraphLoader(v6);
  v8 = sub_1C98CC23C(v5);
  if (v8)
  {
    v7 = v8;
    sub_1C9A695C8(v8, 512, 24000, 1);
    sub_1C9A69B8C(v7);
  }

  else
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
  }

  return v7;
}

double *sub_1C99C5BE8(void *a1, int64_t a2, void (*a3)(uint64_t))
{
  v5 = v3;
  v46 = *MEMORY[0x1E69E9840];
  v9 = sub_1C99C5FC8();
  if (v4)
  {
    return v5;
  }

  v10 = v9;
  sub_1C989DEA8(1);
  v12 = v11;

  v14 = sub_1C99C640C();
  sub_1C989DEA8(5);

  v15 = sub_1C99C640C();
  sub_1C989DEA8(6);

  v16 = sub_1C99C640C();
  sub_1C989DEA8(7);

  v17 = 0.0;
  v18 = 0;
  if (v12 > 0.0)
  {
    v19 = sub_1C99C6424();
    v17 = sub_1C99C63F4(v19, v20, v21, v22, 1000.0);
  }

  *(v5 + 4) = v18;
  v5[5] = v17;
  v23 = sub_1C99C640C();
  sub_1C989DEA8(3);
  v25 = v24;

  v26 = sub_1C99C640C();
  sub_1C989DEA8(4);
  v28 = v27;

  v40 = [objc_allocWithZone(type metadata accessor for SNAudioOffsetResult(v29)) init];
  v30 = objc_opt_self();
  v41.start.value = 0;
  v31 = sub_1C9A76EE8(v30, a1, &v41);
  if (!v31)
  {
    v5 = v41.start.value;
    sub_1C9A913C8();

    swift_willThrow();
    return v5;
  }

  v32 = v31;
  v33 = v41.start.value;
  v34 = sub_1C9A93C88();
  result = sub_1C9A67138(a1);
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    CMTimeMake(&v41.start, v34, result);
    value = v41.start.value;
    v36 = *&v41.start.timescale;
    epoch = v41.start.epoch;
    result = sub_1C9A67138(a1);
    if ((result & 0x80000000) == 0)
    {
      CMTimeMake(&v41.start, a2, result);
      duration = v41.start;
      start.value = value;
      *&start.timescale = v36;
      start.epoch = epoch;
      CMTimeRangeMake(&v41, &start, &duration);
      v45 = v41;
      (a3)();
      v38 = sub_1C9A92F08();
      a3(v38);
      sub_1C9A92F18();
      SNAudioOffsetResult.timeRange.setter(v44);
      v39 = &v40[OBJC_IVAR___SNAudioOffsetResult_impl];
      v39[6] = v5[4] + v28;
      v39[7] = v25;
      sub_1C97A2CEC(&unk_1EC3C6E20, &qword_1C9A9FF60);
      v5 = swift_allocObject();
      *(v5 + 1) = xmmword_1C9A9DF30;
      *(v5 + 4) = v40;

      return v5;
    }
  }

  __break(1u);
  return result;
}

id sub_1C99C5FC8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C99C6168();
  swift_allocError();
  return swift_willThrow();
}

id sub_1C99C6024()
{
  result = sub_1C99C5FC8();
  if (!v0)
  {
    v2 = result;
    v3 = sub_1C9A92478();
    v4 = sub_1C9A6AEE4(v2, v3);

    return v4;
  }

  return result;
}

unint64_t sub_1C99C60CC()
{
  result = qword_1EC3CFDA8;
  if (!qword_1EC3CFDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFDA8);
  }

  return result;
}

unint64_t sub_1C99C6168()
{
  result = qword_1EC3CFDB0;
  if (!qword_1EC3CFDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFDB0);
  }

  return result;
}

unint64_t sub_1C99C61BC()
{
  result = qword_1EC3CFDC8;
  if (!qword_1EC3CFDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFDC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNAudioOffsetEstimator.DomainError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C99C62F0()
{
  result = qword_1EC3CFDD8;
  if (!qword_1EC3CFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFDD8);
  }

  return result;
}

unint64_t sub_1C99C6348()
{
  result = qword_1EC3CFDE0;
  if (!qword_1EC3CFDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFDE0);
  }

  return result;
}

unint64_t sub_1C99C63A0()
{
  result = qword_1EC3CFDE8;
  if (!qword_1EC3CFDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CFDE8);
  }

  return result;
}

id sub_1C99C640C()
{

  return sub_1C99C5FC8();
}

unint64_t sub_1C99C6450(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1C983DB24();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99C64D8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C97ABF20(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C99C661C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C97ACC50(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C99C6814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v25 = a7;
  sub_1C97AE9DC();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v9, v22);
  sub_1C99C693C(v20, a3, a4, a1, a2, a5, a6, v25, a9, a8);
}