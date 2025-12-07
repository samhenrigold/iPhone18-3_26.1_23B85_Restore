uint64_t sub_26B8EACD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_26B8EAF30()
{
  result = qword_281228F40;
  if (!qword_281228F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228F40);
  }

  return result;
}

unint64_t sub_26B8EAF88()
{
  result = qword_281228F48;
  if (!qword_281228F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228F48);
  }

  return result;
}

unint64_t sub_26B8EAFE0()
{
  result = qword_281228F28;
  if (!qword_281228F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228F28);
  }

  return result;
}

unint64_t sub_26B8EB038()
{
  result = qword_281228F20;
  if (!qword_281228F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228F20);
  }

  return result;
}

unint64_t sub_26B8EB094()
{
  result = qword_281228F38;
  if (!qword_281228F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228F38);
  }

  return result;
}

unint64_t sub_26B8EB0EC()
{
  result = qword_281228F30;
  if (!qword_281228F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228F30);
  }

  return result;
}

unint64_t sub_26B8EB144()
{
  result = qword_281228F18;
  if (!qword_281228F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228F18);
  }

  return result;
}

unint64_t sub_26B8EB19C()
{
  result = qword_281228F10;
  if (!qword_281228F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228F10);
  }

  return result;
}

unint64_t sub_26B8EB1F8()
{
  result = qword_281228F08;
  if (!qword_281228F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228F08);
  }

  return result;
}

uint64_t sub_26B8EB260(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return sub_26B8EB318(a1, v4);
}

uint64_t sub_26B8EB318(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26B8EB7BC;

  return v6(a1);
}

uint64_t sub_26B8EB410()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26B8EB6C8;

  return sub_26B8EB4B8(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_26B8EB4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  sub_26B9AC804();
  v6[12] = sub_26B9AC7F4();
  v8 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B8EB554, v8, v7);
}

uint64_t sub_26B8EB554()
{
  v1 = v0[11];
  v3 = v0[9];
  v2 = v0[10];

  sub_26B9AA924();
  sub_26B9AA914();
  v0[7] = v3;
  v0[8] = v2;

  sub_26B9ACB64();
  *(swift_allocObject() + 16) = v1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804261C0, &qword_26B9B0600);
  sub_26B9AA904();

  sub_26B8EACD8((v0 + 2), &qword_2804261C8, &unk_26B9B0608);
  v4 = v0[1];

  return v4();
}

uint64_t sub_26B8EB690()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B8EB6C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26B8EB7BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for PrimitiveTypedValueResultView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_26B9AC3D4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_2(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t objectdestroyTm_3(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_26B8EBDF8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26B8EBE48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return sub_26B8EB318(a1, v4);
}

uint64_t sub_26B8EBF00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26B8EC52C;

  return sub_26B8EBFCC(a1, v4, v5, v6);
}

uint64_t sub_26B8EBFCC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_26B8EB6C8;

  return v7();
}

uint64_t sub_26B8EC0B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26B8EC52C;

  return sub_26B8EC174(v2, v3, v4);
}

uint64_t sub_26B8EC174(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_26B8EC52C;

  return v6();
}

uint64_t sub_26B8EC25C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26B8EC52C;

  return sub_26B8EC310(v2, v3, v4);
}

uint64_t sub_26B8EC310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = sub_26B9AC804();
  v3[9] = sub_26B9AC7F4();
  v5 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B8EC3B0, v5, v4);
}

uint64_t sub_26B8EC3B0()
{
  v1 = v0[6];
  v2 = v0[7];

  v0[10] = _Block_copy(v1);
  v0[11] = sub_26B9AC504();
  v0[12] = v3;
  v4 = v2;
  v0[13] = sub_26B9AC7F4();
  v6 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B8EC46C, v6, v5);
}

uint64_t sub_26B8EC46C()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];

  v5 = &v4[OBJC_IVAR___SUIAppIntentsQueryHelper_searchString];
  swift_beginAccess();
  *v5 = v3;
  *(v5 + 1) = v1;

  v2[2](v2);
  _Block_release(v2);
  v6 = v0[1];

  return v6();
}

uint64_t sub_26B8EC534(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26B9AAD04();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_26B8EC5E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26B9AAD04();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26B8EC8A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B8EC8E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426148, &qword_26B9B0458);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26B8EC974()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B8EC9B4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B8EC9EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B8ECA24()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B8ECA78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B8ECACC()
{
  v1 = sub_26B9AB984();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_26B8ECB70(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26B8ECB98()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B8ECBE4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B8ECC1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426518, &qword_26B9B1C70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26B8ECCC4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B8ECCFC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B8ECD44()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26B8ECD94()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B8ECDDC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26B9ABF24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_26B9AC0E4();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_26B9ABFF4();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_26B9AB984();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v17 = *(a1 + a3[8] + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[10];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_26B8ECFF0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_26B9ABF24();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_26B9AC0E4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_26B9ABFF4();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  result = sub_26B9AB984();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + a4[10];

    return v19(v20, a2, a2, v18);
  }

  return result;
}

uint64_t sub_26B8ED204()
{
  v1 = sub_26B9ABFD4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426930, &qword_26B9B3470) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v16 = *(v6 + 64);
  v17 = sub_26B9AC294();
  v9 = *(v17 - 8);
  v10 = *(v9 + 80);
  v15 = *(v9 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  v11 = sub_26B9AC2D4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v8, 1, v11))
  {
    (*(v12 + 8))(v0 + v8, v11);
  }

  v13 = (v8 + v16 + v10) & ~v10;
  (*(v9 + 8))(v0 + v13, v17);

  return MEMORY[0x2821FE8E8](v0, v13 + v15, v3 | v7 | v10 | 7);
}

uint64_t sub_26B8ED44C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26B9AC204();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_26B9AB984();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_26B9AC0E4();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_26B8ED618(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_26B9AC204();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_26B9AB984();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_26B9AC0E4();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_26B8ED7E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26B9AB984();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_26B9AC0E4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26B8ED908(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_26B9AB984();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_26B9AC0E4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

__n128 sub_26B8EDA38(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26B8EDA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_26B8EDB8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26B8EDCC8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B8EDD0C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26B9AC3D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26B8EDDB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26B9AC3D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26B8EDE60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C48, &qword_26B9B4078);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B8EDEE4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426D28, &qword_26B9B4168);
  sub_26B9AB624();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426D30, &qword_26B9B4170);
  sub_26B9AB624();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426D38, &qword_26B9B4178);
  sub_26B9AB624();
  sub_26B9AB624();
  sub_26B9AB624();
  sub_26B8F7938(&qword_280426D40, &qword_280426D28, &qword_26B9B4168, MEMORY[0x277CE0728]);
  swift_getWitnessTable();
  sub_26B8F7938(&qword_280426D68, &qword_280426D30, &qword_26B9B4170, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  sub_26B8F7938(&qword_280426D78, &qword_280426D38, &qword_26B9B4178, MEMORY[0x277CDFC88]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_26B8EE0EC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26B8EE134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B9ABF24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_26B8EE264(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26B9ABF24();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_26B8EE394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B9ABE84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_26B8EE460(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26B9ABE84();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_26B8EE564()
{
  v1 = (type metadata accessor for RunnableParameterQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  v5 = v1[7];
  v6 = sub_26B9AB984();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26B8EE668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26B9AB984();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26B8EE714(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_26B9AB984();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26B8EE7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B9AB984();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_26B9AC0E4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26B8EE8A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26B9AB984();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_26B9AC0E4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26B8EE9A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B9ABE84();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26B8EEA10(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B9ABE84();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26B8EEA80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427150, &qword_26B9B5788);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26B8EEB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B9ABE84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_26B9AB984();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26B8EEC04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26B9ABE84();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_26B9AB984();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26B8EED00()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B8EED38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426518, &qword_26B9B1C70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26B8EEDE8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 32, v3 | 7);
}

uint64_t sub_26B8EEED8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26B8EEF18()
{
  v1 = *(v0 + 16);
  v2 = sub_26B9AC334();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  (*(v3 + 8))(v0 + v5, v2);

  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_26B8EF038()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26B8EF08C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B8EF0D4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B8EF144(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26B9AB504();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_26B8EF1F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26B9AB504();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id SUISGeneralLog(uint64_t a1)
{
  if (SUISGeneralLog_once != -1)
  {
    SUISGeneralLog_cold_1();
  }

  v2 = SUISGeneralLog_generalLog;

  return v2;
}

uint64_t __SUISGeneralLog_block_invoke()
{
  SUISGeneralLog_generalLog = os_log_create("com.apple.SpotlightUIShared", "general");

  return MEMORY[0x2821F96F8]();
}

id SUISPasteboardIndexingLog(uint64_t a1)
{
  if (SUISPasteboardIndexingLog_once != -1)
  {
    SUISPasteboardIndexingLog_cold_1();
  }

  v2 = SUISPasteboardIndexingLog_pasteboardIndexingLog;

  return v2;
}

uint64_t __SUISPasteboardIndexingLog_block_invoke()
{
  SUISPasteboardIndexingLog_pasteboardIndexingLog = os_log_create("com.apple.SpotlightUIShared", "pasteboardIndexing");

  return MEMORY[0x2821F96F8]();
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

uint64_t sub_26B8F3474()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B18, &qword_26B9AE6B8);
  v0 = [objc_opt_self() queryHelperKey];
  sub_26B9AC504();

  sub_26B9ACB64();
  sub_26B9AA924();
  sub_26B9AA914();
  result = sub_26B9AA8B4();
  qword_280433C70 = result;
  return result;
}

uint64_t sub_26B8F3534()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_26B9AB004();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26B9AB224();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_26B9AC4B4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_26B9AB014();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_26B9AADE4();
  __swift_allocate_value_buffer(v10, qword_280433C78);
  __swift_project_value_buffer(v10, qword_280433C78);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_26B9AB024();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_26B9AADD4();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26B8F3878()
{
  sub_26B9AA894();
  v1 = v0[2];
  v0[4] = v1;
  v2 = (*MEMORY[0x277D85000] & *v1) + 88;
  v0[5] = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v0[6] = v2 & 0xFFFFFFFFFFFFLL | 0x68A2000000000000;
  sub_26B9AC804();
  v0[7] = sub_26B9AC7F4();
  v4 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B8F394C, v4, v3);
}

uint64_t sub_26B8F394C()
{
  v1 = v0[4];
  v2 = v0[5];

  v4 = v2(v3);
  v6 = v5;

  v0[8] = v4;
  v0[9] = v6;

  return MEMORY[0x2822009F8](sub_26B8F39D4, 0, 0);
}

uint64_t sub_26B8F39D4()
{
  v1 = sub_26B8F4678(v0[8], v0[9]);
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_26B8F3A38(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_26B8F3A5C, 0, 0);
}

uint64_t sub_26B8F3A5C()
{
  sub_26B9AA894();
  v1 = v0[2];
  v0[5] = v1;
  v2 = (*MEMORY[0x277D85000] & *v1) + 88;
  v0[6] = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v0[7] = v2 & 0xFFFFFFFFFFFFLL | 0x68A2000000000000;
  sub_26B9AC804();
  v0[8] = sub_26B9AC7F4();
  v4 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B8F3B30, v4, v3);
}

uint64_t sub_26B8F3B30()
{
  v1 = v0[5];
  v2 = v0[6];

  v4 = v2(v3);
  v6 = v5;

  v0[9] = v4;
  v0[10] = v6;

  return MEMORY[0x2822009F8](sub_26B8F3BB8, 0, 0);
}

uint64_t sub_26B8F3BB8()
{
  v1 = v0[3];
  *v1 = sub_26B8F4678(v0[9], v0[10]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_26B8F3C24(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_26B8F4BAC();
  *v4 = v2;
  v4[1] = sub_26B8F3CD4;

  return MEMORY[0x28210BDA8](a2, v5);
}

uint64_t sub_26B8F3CD4(uint64_t a1)
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

uint64_t sub_26B8F3DE8@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B18, &qword_26B9AE6B8);
  v2 = [objc_opt_self() queryHelperKey];
  sub_26B9AC504();

  sub_26B9ACB64();
  sub_26B9AA924();
  sub_26B9AA914();
  result = sub_26B9AA8B4();
  *a1 = result;
  return result;
}

uint64_t sub_26B8F3EB0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B8F4BAC();
  *v5 = v2;
  v5[1] = sub_26B8F4CF4;

  return MEMORY[0x28210BDB8](a1, a2, v6);
}

uint64_t sub_26B8F3F64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_26B8F4BAC();
  *v4 = v2;
  v4[1] = sub_26B8F4CE8;

  return MEMORY[0x28210BDB0](a2, v5);
}

uint64_t sub_26B8F4014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26B8F40D4;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_26B8F40D4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_26B8F41D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B8F4978();
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_26B8F4288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26B8EB6C8;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_26B8F4340@<X0>(void *a1@<X8>)
{
  if (qword_280427510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_280433C70;
  return sub_26B9AAAE4();
}

uint64_t sub_26B8F43C0@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B10, &qword_26B9AE6B0);
  result = sub_26B9AC524();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26B8F4410@<X0>(uint64_t a1@<X8>)
{
  if (qword_280427518 != -1)
  {
    swift_once();
  }

  v2 = sub_26B9AADE4();
  v3 = __swift_project_value_buffer(v2, qword_280433C78);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_26B8F44D0(uint64_t a1)
{
  v2 = sub_26B8EAF30();

  return MEMORY[0x28210B488](a1, v2);
}

void sub_26B8F451C()
{
  sub_26B8F4920();

  JUMPOUT(0x26D6848D0);
}

uint64_t sub_26B8F4568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26B8EC52C;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_26B8F462C(uint64_t a1)
{
  v2 = sub_26B8EB144();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_26B8F4678(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B9AB004();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26B9AB224();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_26B9AC4B4();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_26B9AB014();
  MEMORY[0x28223BE20](v10 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B20, qword_26B9AE6C0);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v5 + 104))(v7, *MEMORY[0x277CC9110], v4);
  sub_26B9AB024();
  v11 = sub_26B9AAA44();
  v13[1] = a1;
  v13[2] = a2;
  sub_26B9AAAE4();
  sub_26B9AAA24();

  return v11;
}

unint64_t sub_26B8F48C8()
{
  result = qword_280425B28;
  if (!qword_280425B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B28);
  }

  return result;
}

unint64_t sub_26B8F4920()
{
  result = qword_280425B30;
  if (!qword_280425B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B30);
  }

  return result;
}

unint64_t sub_26B8F4978()
{
  result = qword_280425B38;
  if (!qword_280425B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B38);
  }

  return result;
}

unint64_t sub_26B8F49D0()
{
  result = qword_280425B40;
  if (!qword_280425B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B40);
  }

  return result;
}

unint64_t sub_26B8F4A28()
{
  result = qword_280425B48;
  if (!qword_280425B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B48);
  }

  return result;
}

unint64_t sub_26B8F4A84()
{
  result = qword_280425B50;
  if (!qword_280425B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B50);
  }

  return result;
}

unint64_t sub_26B8F4ADC()
{
  result = qword_280425B58;
  if (!qword_280425B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280425B60, qword_26B9AE7D0);
    sub_26B8EB094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B58);
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

unint64_t sub_26B8F4BAC()
{
  result = qword_280425B68;
  if (!qword_280425B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B68);
  }

  return result;
}

unint64_t sub_26B8F4C10()
{
  result = qword_280425B70;
  if (!qword_280425B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280425B78, &qword_26B9AEA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B70);
  }

  return result;
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

unint64_t sub_26B8F4CF8()
{
  result = qword_280425B90;
  if (!qword_280425B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425B90);
  }

  return result;
}

uint64_t sub_26B8F4D4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_26B9AB014();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = sub_26B9AADE4();
  __swift_allocate_value_buffer(v5, qword_280433C90);
  __swift_project_value_buffer(v5, qword_280433C90);
  sub_26B9AAFF4();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_26B9AADD4();
}

uint64_t type metadata accessor for SearchEntityFilter(uint64_t a1)
{
  result = qword_2804285C0;
  if (!qword_2804285C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B8F4F14(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000676E69;
  v3 = 0x7274536E656B6F74;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7274536E656B6F74;
    }

    else
    {
      v5 = 0x7954797469746E65;
    }

    if (v4 == 2)
    {
      v6 = 0xEB00000000676E69;
    }

    else
    {
      v6 = 0xEA00000000006570;
    }
  }

  else
  {
    v5 = 0xD000000000000010;
    if (v4)
    {
      v6 = 0x800000026B9B7390;
    }

    else
    {
      v6 = 0x800000026B9B7370;
    }
  }

  if (a2 != 2)
  {
    v3 = 0x7954797469746E65;
    v2 = 0xEA00000000006570;
  }

  v7 = 0x800000026B9B7390;
  if (!a2)
  {
    v7 = 0x800000026B9B7370;
  }

  if (a2 <= 1u)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v8 = v3;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_26B9ACEB4();
  }

  return v10 & 1;
}

uint64_t sub_26B8F5064()
{
  sub_26B9ACFB4();
  sub_26B9AC574();

  return sub_26B9ACFF4();
}

uint64_t sub_26B8F513C(uint64_t a1)
{
  sub_26B9AC574();
}

uint64_t sub_26B8F5200(uint64_t a1)
{
  sub_26B9ACFB4();
  sub_26B9AC574();

  return sub_26B9ACFF4();
}

unint64_t sub_26B8F52D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26B8F6B8C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26B8F5304(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000676E69;
  v3 = 0x7274536E656B6F74;
  if (*v1 != 2)
  {
    v3 = 0x7954797469746E65;
    v2 = 0xEA00000000006570;
  }

  v4 = 0x800000026B9B7370;
  if (*v1)
  {
    v4 = 0x800000026B9B7390;
  }

  if (*v1 <= 1u)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_26B8F5398()
{
  v1 = 0x7274536E656B6F74;
  if (*v0 != 2)
  {
    v1 = 0x7954797469746E65;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000010;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_26B8F5428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B8F6B8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B8F5468(uint64_t a1)
{
  v2 = sub_26B8F5760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B8F54A4(uint64_t a1)
{
  v2 = sub_26B8F5760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B8F54E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B98, &qword_26B9AEBD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B8F5760();
  sub_26B9AD014();
  sub_26B9AAA14();
  LOBYTE(v9) = 0;
  sub_26B9ACE24();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {

    sub_26B9AAA14();
    LOBYTE(v9) = 1;
    sub_26B9ACE14();

    sub_26B9AAA14();
    LOBYTE(v9) = 2;
    sub_26B9ACE14();

    sub_26B9AAA14();
    v8[15] = 3;
    sub_26B8F57B4();
    sub_26B9ACE44();
    return (*(v4 + 8))(v6, v3);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26B8F5760()
{
  result = qword_2804278B0[0];
  if (!qword_2804278B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804278B0);
  }

  return result;
}

unint64_t sub_26B8F57B4()
{
  result = qword_280425BA0;
  if (!qword_280425BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425BA0);
  }

  return result;
}

uint64_t sub_26B8F5808@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v25 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425BA8, &qword_26B9AEBE0);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v31 = &v24 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425CE0, &unk_26B9AF310);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v30 = sub_26B9AB014();
  v10 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v11 = type metadata accessor for SearchEntityFilter(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B20, qword_26B9AE6C0);
  sub_26B9AAFF4();
  v27 = sub_26B9AAA44();
  *v13 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B80, &qword_26B9AEB98);
  sub_26B9AAFF4();
  v26 = sub_26B9AAA44();
  v13[1] = v26;
  sub_26B9AAFF4();
  v13[2] = sub_26B9AAA44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B88, &unk_26B9AEBA0);
  sub_26B9AAFF4();
  sub_26B8F4CF8();
  v13[3] = sub_26B9AAA34();
  sub_26B9AAFF4();
  v14 = v33;
  (*(v10 + 56))(v9, 1, 1, v30);
  v15 = v31;
  v16 = sub_26B9AACD4();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_26B9AACF4();
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_26B8F5760();
  v17 = v32;
  sub_26B9AD004();
  if (v17)
  {
    sub_26B8F5D70(v13);
  }

  else
  {
    v18 = v28;
    LOBYTE(v34) = 0;
    v19 = v29;
    v34 = sub_26B9ACDE4();
    v35 = v20;
    sub_26B9AAA24();
    LOBYTE(v34) = 1;
    v34 = sub_26B9ACDD4();
    v35 = v21;
    sub_26B9AAA24();
    LOBYTE(v34) = 2;
    v34 = sub_26B9ACDD4();
    v35 = v22;
    sub_26B9AAA24();
    v36 = 3;
    sub_26B8F5E18();
    sub_26B9ACE04();
    v36 = v34;
    sub_26B9AAA24();
    (*(v18 + 8))(v15, v19);
    sub_26B8F5E6C(v13, v25);
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_26B8F5D70(uint64_t a1)
{
  v2 = type metadata accessor for SearchEntityFilter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

unint64_t sub_26B8F5E18()
{
  result = qword_280425BB0;
  if (!qword_280425BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425BB0);
  }

  return result;
}

uint64_t sub_26B8F5E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchEntityFilter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B8F5ED0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26B9AB1F4();
  v18 = *(v2 - 8);
  v19 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425CE0, &unk_26B9AF310);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_26B9AB014();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B20, qword_26B9AE6C0);
  sub_26B9AAFF4();
  *a1 = sub_26B9AAA44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B80, &qword_26B9AEB98);
  sub_26B9AAFF4();
  a1[1] = sub_26B9AAA44();
  sub_26B9AAFF4();
  a1[2] = sub_26B9AAA44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B88, &unk_26B9AEBA0);
  sub_26B9AAFF4();
  sub_26B8F4CF8();
  a1[3] = sub_26B9AAA34();
  type metadata accessor for SearchEntityFilter(0);
  sub_26B9AAFF4();
  (*(v12 + 56))(v10, 1, 1, v11);
  v13 = sub_26B9AACD4();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_26B9AACF4();
  sub_26B9AA884();
  v14 = sub_26B9AB1C4();
  v16 = v15;
  (*(v18 + 8))(v4, v19);
  v20 = v14;
  v21 = v16;
  sub_26B9AAA24();
  LOBYTE(v20) = 0;
  return sub_26B9AAA24();
}

uint64_t sub_26B8F62D4(uint64_t a1)
{
  v2 = sub_26B8F83E4(&qword_280425CC0, type metadata accessor for SearchEntityFilter, &unk_26B9AEBE8);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_26B8F6350(uint64_t a1)
{
  sub_26B8F83E4(&qword_280425CC0, type metadata accessor for SearchEntityFilter, &unk_26B9AEBE8);

  return sub_26B9AA884();
}

uint64_t sub_26B8F63F0(uint64_t a1)
{
  v2 = sub_26B8F83E4(&qword_280425BB8, type metadata accessor for SearchEntityFilter, &unk_26B9AEC70);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_26B8F646C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_26B9AAD04();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26B8F64E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26B8EB6C8;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_26B8F65A4(uint64_t a1)
{
  v2 = sub_26B8F83E4(&qword_280425C00, type metadata accessor for SearchEntityFilter, &unk_26B9AEE20);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_26B8F6620()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_26B9AB014();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = sub_26B9AADE4();
  __swift_allocate_value_buffer(v5, qword_280433CA8);
  __swift_project_value_buffer(v5, qword_280433CA8);
  sub_26B9AAFF4();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_26B9AADD4();
}

uint64_t sub_26B8F67A4()
{
  v1 = *v0;
  sub_26B9ACFB4();
  MEMORY[0x26D686E90](v1);
  return sub_26B9ACFF4();
}

uint64_t sub_26B8F6818(uint64_t a1)
{
  v2 = *v1;
  sub_26B9ACFB4();
  MEMORY[0x26D686E90](v2);
  return sub_26B9ACFF4();
}

unint64_t sub_26B8F685C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26B8F7528(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26B8F6978@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_26B9AADE4();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_26B8F6A14(uint64_t a1)
{
  v2 = sub_26B8F4CF8();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_26B8F6A64(uint64_t a1)
{
  v2 = sub_26B8F7BA0();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_26B8F6AB0(uint64_t a1)
{
  v1 = a1;
  sub_26B9ACFB4();
  MEMORY[0x26D686E90](v1);
  v2 = sub_26B9ACFF4();

  return sub_26B8F6B1C(v1, v2);
}

unint64_t sub_26B8F6B1C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_26B8F6B8C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26B9ACDC4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26B8F6BD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425CD0, &qword_26B9AF2E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425CD8, &unk_26B9AF2F0);
    v7 = sub_26B9ACD84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_26B8F842C(v9, v5);
      v11 = *v5;
      result = sub_26B8F6AB0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_26B9AAD04();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_26B8F6DA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425CE0, &unk_26B9AF310);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v44 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v44 - v4;
  v6 = sub_26B9AB014();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425CC8, &qword_26B9AF2E0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425CD0, &qword_26B9AF2E8);
  v8 = *(v53 - 8);
  v48 = *(v8 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v46 = 8 * v48;
  v10 = swift_allocObject();
  v45 = v10;
  *(v10 + 16) = xmmword_26B9AEB80;
  v11 = v10 + v9;
  *(v10 + v9) = 0;
  sub_26B9AAFF4();
  v12 = *(v7 + 56);
  v55 = v7 + 56;
  v51 = v6;
  v52 = v12;
  v13 = v6;
  v12(v5, 1, 1, v6);
  v14 = sub_26B9AACD4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v54 = v15 + 56;
  v50 = v14;
  v16(v2, 1, 1, v14);
  v49 = v16;
  v47 = v11;
  sub_26B9AACF4();
  v17 = v48;
  v18 = (v11 + v48);
  v19 = v53;
  v44 = *(v53 + 48);
  *v18 = 1;
  sub_26B9AAFF4();
  v52(v5, 1, 1, v13);
  v16(v2, 1, 1, v14);
  sub_26B9AACF4();
  v20 = 2 * v17;
  v21 = v47;
  v44 = *(v19 + 48);
  *(v47 + 2 * v17) = 2;
  sub_26B9AAFF4();
  v23 = v51;
  v22 = v52;
  v52(v5, 1, 1, v51);
  v49(v2, 1, 1, v50);
  sub_26B9AACF4();
  v24 = v48;
  v44 = *(v53 + 48);
  *(v21 + v20 + v48) = 3;
  sub_26B9AAFF4();
  v22(v5, 1, 1, v23);
  v26 = v49;
  v25 = v50;
  v49(v2, 1, 1, v50);
  sub_26B9AACF4();
  v27 = 4 * v24;
  *(v21 + 4 * v24) = 4;
  sub_26B9AAFF4();
  v28 = v52;
  v52(v5, 1, 1, v51);
  v26(v2, 1, 1, v25);
  sub_26B9AACF4();
  v29 = v48;
  v44 = *(v53 + 48);
  *(v21 + v27 + v48) = 5;
  sub_26B9AAFF4();
  v30 = v51;
  v28(v5, 1, 1, v51);
  v31 = v49;
  v32 = v50;
  v49(v2, 1, 1, v50);
  sub_26B9AACF4();
  v33 = v47;
  v34 = (v47 + 6 * v29);
  v35 = v53;
  v44 = *(v53 + 48);
  *v34 = 6;
  sub_26B9AAFF4();
  v36 = v30;
  v37 = v52;
  v52(v5, 1, 1, v36);
  v31(v2, 1, 1, v32);
  sub_26B9AACF4();
  v38 = (v33 + v46 - v48);
  v48 = *(v35 + 48);
  *v38 = 7;
  sub_26B9AAFF4();
  v39 = v51;
  v37(v5, 1, 1, v51);
  v41 = v49;
  v40 = v50;
  v49(v2, 1, 1, v50);
  sub_26B9AACF4();
  *(v33 + v46) = 8;
  sub_26B9AAFF4();
  v52(v5, 1, 1, v39);
  v41(v2, 1, 1, v40);
  sub_26B9AACF4();
  v42 = sub_26B8F6BD8(v45);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v42;
}

unint64_t sub_26B8F7528(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_26B8F78A0()
{
  result = qword_280425C28;
  if (!qword_280425C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C28);
  }

  return result;
}

uint64_t sub_26B8F7938(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B8F7984()
{
  result = qword_280425C40;
  if (!qword_280425C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C40);
  }

  return result;
}

unint64_t sub_26B8F79DC()
{
  result = qword_280425C48;
  if (!qword_280425C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C48);
  }

  return result;
}

unint64_t sub_26B8F7A34()
{
  result = qword_280425C50;
  if (!qword_280425C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C50);
  }

  return result;
}

unint64_t sub_26B8F7A98()
{
  result = qword_280425C58;
  if (!qword_280425C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C58);
  }

  return result;
}

unint64_t sub_26B8F7AF0()
{
  result = qword_280425C60;
  if (!qword_280425C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C60);
  }

  return result;
}

unint64_t sub_26B8F7B48()
{
  result = qword_280425C68;
  if (!qword_280425C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C68);
  }

  return result;
}

unint64_t sub_26B8F7BA0()
{
  result = qword_280425C70;
  if (!qword_280425C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C70);
  }

  return result;
}

unint64_t sub_26B8F7C48()
{
  result = qword_280425C78;
  if (!qword_280425C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C78);
  }

  return result;
}

unint64_t sub_26B8F7CA0()
{
  result = qword_280425C80;
  if (!qword_280425C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C80);
  }

  return result;
}

unint64_t sub_26B8F7CF8()
{
  result = qword_280425C88;
  if (!qword_280425C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C88);
  }

  return result;
}

void sub_26B8F7D74(uint64_t a1)
{
  sub_26B8F7FB8(319, &qword_280425C90, sub_26B8F7E70, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_26B8F7EC4(319);
    if (v2 <= 0x3F)
    {
      sub_26B8F7FB8(319, &qword_280425CB8, sub_26B8F7B48, &type metadata for SearchEntityType);
      if (v3 <= 0x3F)
      {
        sub_26B9AAD04();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_26B8F7E70()
{
  result = qword_280425C98;
  if (!qword_280425C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425C98);
  }

  return result;
}

void sub_26B8F7EC4(uint64_t a1)
{
  if (!qword_280425CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280425CA8, &qword_26B9AF178);
    sub_26B8F7F34();
    v1 = sub_26B9AAA54();
    if (!v2)
    {
      atomic_store(v1, &qword_280425CA0);
    }
  }
}

unint64_t sub_26B8F7F34()
{
  result = qword_280425CB0;
  if (!qword_280425CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280425CA8, &qword_26B9AF178);
    sub_26B8F7E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425CB0);
  }

  return result;
}

void sub_26B8F7FB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_26B9AAA54();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SearchEntityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchEntityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchEntityFilter.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchEntityFilter.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26B8F82E0()
{
  result = qword_280428750[0];
  if (!qword_280428750[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280428750);
  }

  return result;
}

unint64_t sub_26B8F8338()
{
  result = qword_280428860;
  if (!qword_280428860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280428860);
  }

  return result;
}

unint64_t sub_26B8F8390()
{
  result = qword_280428868[0];
  if (!qword_280428868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280428868);
  }

  return result;
}

uint64_t sub_26B8F83E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B8F842C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425CD0, &qword_26B9AF2E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B8F84B4()
{
  v0 = sub_26B9AB004();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26B9AB224();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_26B9AC4B4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_26B9AB014();
  __swift_allocate_value_buffer(v6, qword_280433CC8);
  __swift_project_value_buffer(v6, qword_280433CC8);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_26B9AB024();
}

uint64_t sub_26B8F86A8@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425CE0, &unk_26B9AF310);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = sub_26B9AB004();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26B9AB224();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_26B9AC4B4();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_26B9AB014();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v10 + 104))(v12, *MEMORY[0x277CC9110], v9);
  sub_26B9AB024();
  v17 = *(v16 + 56);
  v17(v8, 1, 1, v15);
  v17(v23, 1, 1, v15);
  sub_26B9AACC4();
  v18 = sub_26B9AACD4();
  (*(*(v18 - 8) + 56))(v3, 0, 1, v18);
  v19 = v24;
  sub_26B9AAC44();
  v20 = sub_26B9AAC34();
  return (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
}

unint64_t sub_26B8F8AB8()
{
  result = qword_280425CF8;
  if (!qword_280425CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425CF8);
  }

  return result;
}

uint64_t sub_26B8F8B0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425FC0, &unk_26B9AF550);
  v0 = sub_26B9AAC64();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26B9AF300;
  result = (*(v1 + 104))(v3 + v2, *MEMORY[0x277CB9FF8], v0);
  qword_280433CE8 = v3;
  return result;
}

unint64_t sub_26B8F8BF0()
{
  result = qword_280425D18;
  if (!qword_280425D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425D18);
  }

  return result;
}

unint64_t sub_26B8F8C44()
{
  result = qword_280425D20;
  if (!qword_280425D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425D20);
  }

  return result;
}

uint64_t sub_26B8F8CA0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_26B9AACB4();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_26B9AC804();
  v2[9] = sub_26B9AC7F4();
  v5 = sub_26B9AC7C4();
  v2[10] = v5;
  v2[11] = v4;

  return MEMORY[0x2822009F8](sub_26B8F8D94, v5, v4);
}

uint64_t sub_26B8F8D94()
{
  sub_26B9AA894();
  v1 = [*(v0 + 16) spotlightIsVisible];
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_26B9AA894();
    v2 = *(v0 + 24);
    *(v0 + 96) = v2;
    if (v2)
    {
      v4 = *(v0 + 56);
      v3 = *(v0 + 64);
      v5 = *(v0 + 48);
      v6 = [objc_allocWithZone(SUIUpdateSearchQueryCommand) init];
      *(v0 + 104) = v6;
      sub_26B9AAA74();
      [v6 setQueryKind_];
      v7 = v6;
      sub_26B9AAA74();
      sub_26B9AACA4();
      (*(v4 + 8))(v3, v5);
      v8 = sub_26B9AC4C4();

      [v7 setSearchString_];

      v13 = (*MEMORY[0x277D4C810] + MEMORY[0x277D4C810]);
      v9 = swift_task_alloc();
      *(v0 + 112) = v9;
      *v9 = v0;
      v9[1] = sub_26B8F9094;

      return v13(v7, 0, 0);
    }

    else
    {

      sub_26B9AA8F4();
      sub_26B8FA960(&qword_280425DA0, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
      swift_allocError();
      sub_26B9AA8E4();
      swift_willThrow();

      v12 = *(v0 + 8);

      return v12();
    }
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 128) = v11;
    *v11 = v0;
    v11[1] = sub_26B8F925C;

    return sub_26B8F94F4();
  }
}

uint64_t sub_26B8F9094()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_26B8F947C;
  }

  else
  {
    v5 = sub_26B8F91D0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26B8F91D0()
{
  v2 = v0[12];
  v1 = v0[13];

  sub_26B9AA9F4();

  v3 = v0[1];

  return v3();
}

uint64_t sub_26B8F925C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_26B8F9410;
  }

  else
  {
    v5 = sub_26B8F9398;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26B8F9398()
{

  sub_26B9AA9F4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B8F9410()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B8F947C()
{
  v1 = v0[12];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26B8F94F4()
{
  v1[9] = v0;
  sub_26B9AC804();
  v1[10] = sub_26B9AC7F4();
  v3 = sub_26B9AC7C4();
  v1[11] = v3;
  v1[12] = v2;

  return MEMORY[0x2822009F8](sub_26B8F958C, v3, v2);
}

uint64_t sub_26B8F958C(uint64_t a1)
{
  v1[13] = *(v1[9] + 24);
  sub_26B9AA894();
  v1[14] = v1[7];
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v1[15] = v3;
  *v3 = v1;
  v3[1] = sub_26B8F9648;

  return sub_26B905ACC(ObjectType);
}

uint64_t sub_26B8F9648()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_26B8F978C, v3, v2);
}

uint64_t sub_26B8F978C(uint64_t a1)
{
  sub_26B9AA894();
  v2 = [*(v1 + 64) spotlightIsVisible];
  swift_unknownObjectRelease();
  if (v2)
  {
    v3 = *(v1 + 72);
    v4 = *(v3 + 32);
    v5 = *(v3 + 16);
    *(v1 + 16) = *v3;
    *(v1 + 32) = v5;
    *(v1 + 48) = v4;
    v6 = swift_task_alloc();
    *(v1 + 128) = v6;
    v7 = sub_26B8F8AB8();
    *v6 = v1;
    v6[1] = sub_26B8F992C;

    return MEMORY[0x28210B500](v1 + 144, 1, &type metadata for SearchSpotlightIntentInternal, v7);
  }

  else
  {

    sub_26B9AA8F4();
    sub_26B8FA960(&qword_280425DA0, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_26B9AA8D4();
    swift_willThrow();
    v8 = *(v1 + 8);

    return v8();
  }
}

uint64_t sub_26B8F992C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_26B8F9AA4;
  }

  else
  {
    v5 = sub_26B8F9A40;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26B8F9A40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B8F9AA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B8F9B08@<X0>(void *a1@<X8>)
{
  if (qword_2804288F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_280433CE8;
}

uint64_t sub_26B8F9BAC(uint64_t a1)
{
  v2 = sub_26B9AACB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_26B9AAA84();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26B8F9C9C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_26B9AAA64();
  return sub_26B8F9D10;
}

void sub_26B8F9D14(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_26B8F9D60@<X0>(uint64_t a1@<X8>)
{
  if (qword_2804288F0 != -1)
  {
    swift_once();
  }

  v2 = sub_26B9AB014();
  v3 = __swift_project_value_buffer(v2, qword_280433CC8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_26B8F9EB0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425CF0, &unk_26B9AF320);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26B9AAD84();
  return sub_26B9AAD44();
}

uint64_t sub_26B8F9F88(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_26B8FA034;

  return sub_26B8F8CA0(a1);
}

uint64_t sub_26B8FA034()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_26B8FA128@<D0>(uint64_t a1@<X8>)
{
  sub_26B8FA1A8(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_26B8FA16C(uint64_t a1)
{
  v2 = sub_26B8F8AB8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_26B8FA1A8@<X0>(uint64_t *a1@<X8>)
{
  v56 = a1;
  v53 = sub_26B9AADA4();
  v57 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425D00, &qword_26B9AFA00);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_26B9AB004();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26B9AB224();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_26B9AC4B4();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_26B9AB014();
  v49 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425F70, &qword_26B9AF330);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v11 + 104))(v13, *MEMORY[0x277CC9110], v10);
  v20 = v19;
  sub_26B9AB024();
  v21 = *(v17 + 56);
  v48 = v17 + 56;
  v50 = v21;
  v22 = v9;
  v21(v9, 1, 1, v16);
  v23 = sub_26B9AA9E4();
  v24 = *(*(v23 - 8) + 56);
  v25 = v6;
  v24(v6, 1, 1, v23);
  v26 = *MEMORY[0x277CBA308];
  v27 = *(v57 + 104);
  v57 += 104;
  v46 = v27;
  v29 = v52;
  v28 = v53;
  v27(v52, v26, v53);
  v47 = v20;
  v55 = sub_26B9AAAB4();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425D10, &qword_26B9AF338);
  sub_26B9AAFF4();
  v50(v22, 1, 1, v49);
  LOBYTE(v58) = 0;
  v24(v25, 1, 1, v23);
  v24(v54, 1, 1, v23);
  v46(v29, v26, v28);
  sub_26B8F8BF0();
  sub_26B9ACC04();
  sub_26B8F8C44();
  v30 = sub_26B9AAAA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425D28, &unk_26B9AF340);
  sub_26B9AC394();
  v58 = sub_26B9AC384();
  v59 = v31;
  sub_26B9ACB64();
  sub_26B9AA924();
  sub_26B9AA914();
  v32 = sub_26B9AA8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425D90, &unk_26B9AF350);
  v33 = objc_opt_self();
  v34 = [v33 presentationHelperKey];
  v35 = sub_26B9AC504();
  v37 = v36;

  v58 = v35;
  v59 = v37;
  sub_26B9ACB64();
  sub_26B9AA914();
  v38 = sub_26B9AA8B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425B18, &qword_26B9AE6B8);
  v39 = [v33 queryHelperKey];
  v40 = sub_26B9AC504();
  v42 = v41;

  v58 = v40;
  v59 = v42;
  sub_26B9ACB64();
  sub_26B9AA914();
  result = sub_26B9AA8B4();
  v44 = v56;
  *v56 = v55;
  v44[1] = v30;
  v44[2] = v32;
  v44[3] = v38;
  v44[4] = result;
  return result;
}

unint64_t sub_26B8FA8C4()
{
  result = qword_280425DA8;
  if (!qword_280425DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425DA8);
  }

  return result;
}

uint64_t sub_26B8FA960(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26B8FA9B0()
{
  result = qword_280425DB8;
  if (!qword_280425DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425DB8);
  }

  return result;
}

unint64_t sub_26B8FAA08()
{
  result = qword_280425DC0;
  if (!qword_280425DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425DC0);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26B8FAAA8(uint64_t *a1, int a2)
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

uint64_t sub_26B8FAAF0(uint64_t result, int a2, int a3)
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

uint64_t sub_26B8FAB48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_26B9AB014();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = sub_26B9AADE4();
  __swift_allocate_value_buffer(v5, qword_280433CF0);
  __swift_project_value_buffer(v5, qword_280433CF0);
  sub_26B9AAFF4();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_26B9AADD4();
}

uint64_t sub_26B8FACC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657474696D6D6F63;
  }

  else
  {
    v3 = 0x707954756F597361;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x657474696D6D6F63;
  }

  else
  {
    v5 = 0x707954756F597361;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26B9ACEB4();
  }

  return v8 & 1;
}

uint64_t sub_26B8FAD6C()
{
  sub_26B9ACFB4();
  sub_26B9AC574();

  return sub_26B9ACFF4();
}

uint64_t sub_26B8FADF0(uint64_t a1)
{
  sub_26B9AC574();
}

uint64_t sub_26B8FAE60(uint64_t a1)
{
  sub_26B9ACFB4();
  sub_26B9AC574();

  return sub_26B9ACFF4();
}

uint64_t sub_26B8FAEE0@<X0>(char *a2@<X8>)
{
  v3 = sub_26B9ACDC4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_26B8FAF40(uint64_t *a1@<X8>)
{
  v2 = 0x707954756F597361;
  if (*v1)
  {
    v2 = 0x657474696D6D6F63;
  }

  v3 = 0xE900000000000064;
  if (!*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26B8FB040@<X0>(uint64_t a1@<X8>)
{
  if (qword_280428B80 != -1)
  {
    swift_once();
  }

  v2 = sub_26B9AADE4();
  v3 = __swift_project_value_buffer(v2, qword_280433CF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_26B8FB0E8(uint64_t a1)
{
  v2 = sub_26B8F8C44();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_26B8FB138(uint64_t a1)
{
  v2 = sub_26B8FBB98();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_26B8FB184(char a1)
{
  sub_26B9ACFB4();
  sub_26B9AC574();

  v2 = sub_26B9ACFF4();

  return sub_26B8FB22C(a1 & 1, v2);
}

unint64_t sub_26B8FB22C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x657474696D6D6F63;
    }

    else
    {
      v6 = 0x707954756F597361;
    }

    if (a1)
    {
      v7 = 0xE900000000000064;
    }

    else
    {
      v7 = 0xE900000000000065;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x657474696D6D6F63 : 0x707954756F597361;
      v9 = *(*(v2 + 48) + v4) ? 0xE900000000000064 : 0xE900000000000065;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_26B9ACEB4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_26B8FB360(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425F18, &qword_26B9AF888);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425F20, &qword_26B9AF890);
    v7 = sub_26B9ACD84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_26B9AAAE4();
    while (1)
    {
      sub_26B8FBE4C(v9, v5);
      v11 = *v5;
      result = sub_26B8FB184(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_26B9AAD04();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_26B8FB534()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425CE0, &unk_26B9AF310);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_26B9AB014();
  v22 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425F10, &qword_26B9AF880);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425F18, &qword_26B9AF888);
  v24 = v8;
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26B9AF560;
  v12 = (v11 + v10);
  v20 = *(v8 + 48);
  *v12 = 0;
  sub_26B9AAFF4();
  v13 = *(v7 + 56);
  v21 = v7 + 56;
  v23 = v13;
  v14 = v5;
  v13(v5, 1, 1, v6);
  v15 = sub_26B9AACD4();
  v16 = *(*(v15 - 8) + 56);
  v16(v2, 1, 1, v15);
  sub_26B9AACF4();
  v20 = *(v24 + 48);
  v12[v9] = 1;
  sub_26B9AAFF4();
  v23(v14, 1, 1, v22);
  v16(v2, 1, 1, v15);
  sub_26B9AACF4();
  v17 = sub_26B8FB360(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v17;
}

unint64_t sub_26B8FB8BC()
{
  result = qword_280425EB0;
  if (!qword_280425EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425EB0);
  }

  return result;
}

unint64_t sub_26B8FB914()
{
  result = qword_280425EB8;
  if (!qword_280425EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280425EC0, &qword_26B9AF610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425EB8);
  }

  return result;
}

unint64_t sub_26B8FB97C()
{
  result = qword_280425EC8;
  if (!qword_280425EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425EC8);
  }

  return result;
}

unint64_t sub_26B8FB9D4()
{
  result = qword_280425ED0;
  if (!qword_280425ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425ED0);
  }

  return result;
}

unint64_t sub_26B8FBA2C()
{
  result = qword_280425ED8;
  if (!qword_280425ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425ED8);
  }

  return result;
}

unint64_t sub_26B8FBA90()
{
  result = qword_280425EE0;
  if (!qword_280425EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425EE0);
  }

  return result;
}

unint64_t sub_26B8FBAE8()
{
  result = qword_280425EE8;
  if (!qword_280425EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425EE8);
  }

  return result;
}

unint64_t sub_26B8FBB40()
{
  result = qword_280425EF0;
  if (!qword_280425EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425EF0);
  }

  return result;
}

unint64_t sub_26B8FBB98()
{
  result = qword_280425EF8;
  if (!qword_280425EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425EF8);
  }

  return result;
}

unint64_t sub_26B8FBC40()
{
  result = qword_280425F00;
  if (!qword_280425F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425F00);
  }

  return result;
}

unint64_t sub_26B8FBC9C()
{
  result = qword_280425F08;
  if (!qword_280425F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425F08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchSpotlightQueryKind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SearchSpotlightQueryKind(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B8FBE4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425F18, &qword_26B9AF888);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B8FBEC4()
{
  v0 = sub_26B9AB004();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26B9AB224();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_26B9AC4B4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_26B9AB014();
  __swift_allocate_value_buffer(v6, qword_280433D08);
  __swift_project_value_buffer(v6, qword_280433D08);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_26B9AB024();
}

uint64_t sub_26B8FC0B4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_26B9AB004();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_26B9AB224();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_26B9AC4B4();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_26B9AB014();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_26B9AB024();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_26B9AAC54();
  v13 = sub_26B9AAC34();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

unint64_t sub_26B8FC3C0()
{
  result = qword_280425F30;
  if (!qword_280425F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425F30);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26B8FC478(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_26B8FC498, 0, 0);
}

uint64_t sub_26B8FC498()
{
  v1 = [objc_allocWithZone(SUIUpdateSearchQueryCommand) init];
  v0[5] = v1;
  [v1 setQueryKind_];
  [v1 setSearchString_];
  sub_26B9AA894();
  v0[6] = v0[2];
  v4 = (*MEMORY[0x277D4C810] + MEMORY[0x277D4C810]);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_26B8FC5A0;

  return v4(v1, 0, 0);
}

uint64_t sub_26B8FC5A0()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_26B8FC728;
  }

  else
  {

    v3 = sub_26B8FC6BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26B8FC6BC(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_26B9AA9F4();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_26B8FC728()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B8FC794()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425F38, &qword_26B9AF8A8);
  sub_26B9AA924();
  sub_26B9AA914();
  return sub_26B9AA8C4();
}

unint64_t sub_26B8FC7E4()
{
  result = qword_280425F40;
  if (!qword_280425F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425F40);
  }

  return result;
}

unint64_t sub_26B8FC83C()
{
  result = qword_280425F48;
  if (!qword_280425F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425F48);
  }

  return result;
}

uint64_t sub_26B8FC8C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_280429290 != -1)
  {
    swift_once();
  }

  v2 = sub_26B9AB014();
  v3 = __swift_project_value_buffer(v2, qword_280433D08);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_26B8FC990(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425F28, &unk_26B9AF898);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26B9AAD84();
  return sub_26B9AAD44();
}

uint64_t sub_26B8FCA68(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return sub_26B8FC478(a1, v4);
}

uint64_t sub_26B8FCB08@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425F38, &qword_26B9AF8A8);
  sub_26B9AA924();
  sub_26B9AA914();
  result = sub_26B9AA8C4();
  *a1 = result;
  return result;
}

uint64_t sub_26B8FCB64(uint64_t a1)
{
  v2 = sub_26B8FC3C0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_26B8FCBB4()
{
  v0 = sub_26B9AB004();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26B9AB224();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_26B9AC4B4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_26B9AB014();
  __swift_allocate_value_buffer(v6, qword_280433D20);
  __swift_project_value_buffer(v6, qword_280433D20);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_26B9AB024();
}

uint64_t sub_26B8FCDA8@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425CE0, &unk_26B9AF310);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = sub_26B9AB004();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26B9AB224();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_26B9AC4B4();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_26B9AB014();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v10 + 104))(v12, *MEMORY[0x277CC9110], v9);
  sub_26B9AB024();
  v17 = *(v16 + 56);
  v17(v8, 1, 1, v15);
  v17(v23, 1, 1, v15);
  sub_26B9AACC4();
  v18 = sub_26B9AACD4();
  (*(*(v18 - 8) + 56))(v3, 0, 1, v18);
  v19 = v24;
  sub_26B9AAC44();
  v20 = sub_26B9AAC34();
  return (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
}

unint64_t sub_26B8FD1B8()
{
  result = qword_280425F68;
  if (!qword_280425F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425F68);
  }

  return result;
}

uint64_t sub_26B8FD20C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425FC0, &unk_26B9AF550);
  v0 = sub_26B9AAC64();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26B9AF300;
  result = (*(v1 + 104))(v3 + v2, *MEMORY[0x277CB9FF8], v0);
  qword_280433D40 = v3;
  return result;
}

uint64_t sub_26B8FD314(uint64_t a1)
{
  v2 = sub_26B9AACB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_26B9AAA84();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_26B8FD404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_26B9AACB4();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  sub_26B9AC804();
  v4[11] = sub_26B9AC7F4();
  v7 = sub_26B9AC7C4();
  v4[12] = v7;
  v4[13] = v6;

  return MEMORY[0x2822009F8](sub_26B8FD4FC, v7, v6);
}

uint64_t sub_26B8FD4FC(uint64_t a1)
{
  sub_26B9AA894();
  v2 = [*(v1 + 16) spotlightIsVisible];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_26B9AA894();
    v3 = *(v1 + 24);
    *(v1 + 112) = v3;
    if (v3)
    {
      v5 = *(v1 + 72);
      v4 = *(v1 + 80);
      v6 = *(v1 + 64);
      v7 = [objc_allocWithZone(SUIUpdateSearchQueryCommand) init];
      *(v1 + 120) = v7;
      [v7 setQueryKind_];
      v8 = v7;
      sub_26B9AAA74();
      sub_26B9AACA4();
      (*(v5 + 8))(v4, v6);
      v9 = sub_26B9AC4C4();

      [v8 setSearchString_];

      v17 = (*MEMORY[0x277D4C810] + MEMORY[0x277D4C810]);
      v10 = swift_task_alloc();
      *(v1 + 128) = v10;
      *v10 = v1;
      v10[1] = sub_26B8FD7E4;

      return v17(v8, 0, 0);
    }

    else
    {

      sub_26B9AA8F4();
      sub_26B8FA960(&qword_280425DA0, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
      swift_allocError();
      sub_26B9AA8E4();
      swift_willThrow();

      v16 = *(v1 + 8);

      return v16();
    }
  }

  else
  {
    v12 = swift_task_alloc();
    *(v1 + 144) = v12;
    *v12 = v1;
    v12[1] = sub_26B8FD9AC;
    v13 = *(v1 + 48);
    v14 = *(v1 + 56);
    v15 = *(v1 + 40);

    return sub_26B8FDC44(v15, v13, v14);
  }
}

uint64_t sub_26B8FD7E4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_26B8FDBCC;
  }

  else
  {
    v5 = sub_26B8FD920;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26B8FD920()
{
  v2 = v0[14];
  v1 = v0[15];

  sub_26B9AA9F4();

  v3 = v0[1];

  return v3();
}

uint64_t sub_26B8FD9AC()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_26B8FDB60;
  }

  else
  {
    v5 = sub_26B8FDAE8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26B8FDAE8()
{

  sub_26B9AA9F4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B8FDB60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B8FDBCC()
{
  v1 = v0[14];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26B8FDC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_26B9AC804();
  v3[10] = sub_26B9AC7F4();
  v5 = sub_26B9AC7C4();
  v3[11] = v5;
  v3[12] = v4;

  return MEMORY[0x2822009F8](sub_26B8FDCE0, v5, v4);
}

uint64_t sub_26B8FDCE0(uint64_t a1)
{
  sub_26B9AA894();
  v1[13] = v1[5];
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v1[14] = v3;
  *v3 = v1;
  v3[1] = sub_26B8FDD94;

  return sub_26B905ACC(ObjectType);
}

uint64_t sub_26B8FDD94()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_26B8FDED8, v3, v2);
}

uint64_t sub_26B8FDED8(uint64_t a1)
{
  sub_26B9AA894();
  v2 = [*(v1 + 48) spotlightIsVisible];
  swift_unknownObjectRelease();
  if (v2)
  {
    v3 = *(v1 + 72);
    *(v1 + 16) = *(v1 + 56);
    *(v1 + 32) = v3;
    v4 = swift_task_alloc();
    *(v1 + 120) = v4;
    v5 = sub_26B8FD1B8();
    *v4 = v1;
    v4[1] = sub_26B8FE074;

    return MEMORY[0x28210B500](v1 + 136, 1, &type metadata for SearchSpotlightIntent, v5);
  }

  else
  {

    sub_26B9AA8F4();
    sub_26B8FA960(&qword_280425DA0, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_26B9AA8D4();
    swift_willThrow();
    v6 = *(v1 + 8);

    return v6();
  }
}

uint64_t sub_26B8FE074()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_26B8FE188;
  }

  else
  {
    v5 = sub_26B8F9A40;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26B8FE188()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B8FE1F0@<X0>(void *a1@<X8>)
{
  if (qword_280429428 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_280433D40;
}

uint64_t sub_26B8FE270(uint64_t a1)
{
  v2 = sub_26B9AACB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_26B9AAA84();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26B8FE360(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_26B9AAA64();
  return sub_26B8F9D10;
}

uint64_t sub_26B8FE3D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_280429420 != -1)
  {
    swift_once();
  }

  v2 = sub_26B9AB014();
  v3 = __swift_project_value_buffer(v2, qword_280433D20);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_26B8FE4D8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425F60, &unk_26B9AF9F0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26B9AAD84();
  return sub_26B9AAD44();
}

uint64_t sub_26B8FE5B4(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26B8EB6C8;

  return sub_26B8FD404(a1, v4, v5, v6);
}

uint64_t sub_26B8FE668@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B8FE6D0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_26B8FE694(uint64_t a1)
{
  v2 = sub_26B8FD1B8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_26B8FE6D0()
{
  v0 = sub_26B9AADA4();
  v25 = *(v0 - 8);
  v26 = v0;
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425D00, &qword_26B9AFA00);
  MEMORY[0x28223BE20](v2 - 8);
  v23 = &v23 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_26B9AB004();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26B9AB224();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_26B9AC4B4();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_26B9AB014();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425F70, &qword_26B9AF330);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v8 + 104))(v10, *MEMORY[0x277CC9110], v7);
  sub_26B9AB024();
  (*(v14 + 56))(v6, 1, 1, v13);
  v15 = sub_26B9AA9E4();
  (*(*(v15 - 8) + 56))(v23, 1, 1, v15);
  (*(v25 + 104))(v24, *MEMORY[0x277CBA308], v26);
  v16 = sub_26B9AAAB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425D28, &unk_26B9AF340);
  sub_26B9AC394();
  v27 = sub_26B9AC384();
  v28 = v17;
  sub_26B9ACB64();
  sub_26B9AA924();
  sub_26B9AA914();
  sub_26B9AA8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425D90, &unk_26B9AF350);
  v18 = [objc_opt_self() presentationHelperKey];
  v19 = sub_26B9AC504();
  v21 = v20;

  v27 = v19;
  v28 = v21;
  sub_26B9ACB64();
  sub_26B9AA914();
  sub_26B9AA8B4();
  return v16;
}

unint64_t sub_26B8FEBFC()
{
  result = qword_280425F80;
  if (!qword_280425F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425F80);
  }

  return result;
}

unint64_t sub_26B8FEC58()
{
  result = qword_280425F90;
  if (!qword_280425F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425F90);
  }

  return result;
}

unint64_t sub_26B8FECB0()
{
  result = qword_280425F98;
  if (!qword_280425F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425F98);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26B8FED50(uint64_t *a1, int a2)
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

uint64_t sub_26B8FED98(uint64_t result, int a2, int a3)
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

uint64_t sub_26B8FEDE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_26B9AB004();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26B9AB224();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_26B9AC4B4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_26B9AB014();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_26B9AADE4();
  __swift_allocate_value_buffer(v10, qword_280433D48);
  __swift_project_value_buffer(v10, qword_280433D48);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_26B9AB024();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_26B9AADD4();
}

uint64_t sub_26B8FF0D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425CE0, &unk_26B9AF310);
  MEMORY[0x28223BE20](v0 - 8);
  v58 = &v37 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  MEMORY[0x28223BE20](v2 - 8);
  v57 = &v37 - v3;
  v62 = sub_26B9AB004();
  v4 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26B9AB224();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_26B9AC4B4();
  MEMORY[0x28223BE20](v8 - 8);
  v52 = sub_26B9AB014();
  v9 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260A0, &qword_26B9B0018);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260A8, &qword_26B9B0020);
  v60 = v12;
  v13 = *(v12 - 8);
  v51 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v47 = 2 * v51;
  v15 = swift_allocObject();
  v48 = v15;
  *(v15 + 16) = xmmword_26B9AFBD0;
  v59 = v15 + v14;
  v45 = *(v12 + 48);
  *(v15 + v14) = 0;
  sub_26B9AC4A4();
  sub_26B9AB214();
  v53 = *MEMORY[0x277CC9110];
  v38 = *(v4 + 104);
  v61 = v4 + 104;
  v16 = v6;
  v38(v6);
  v17 = v11;
  sub_26B9AB024();
  v18 = *(v9 + 56);
  v50 = v9 + 56;
  v56 = v18;
  v19 = v57;
  v20 = v52;
  v18(v57, 1, 1, v52);
  v54 = sub_26B9AACD4();
  v21 = *(v54 - 8);
  v22 = *(v21 + 56);
  v55 = v21 + 56;
  v23 = v58;
  v22(v58, 1, 1, v54);
  v46 = v22;
  v24 = v59;
  v49 = v17;
  sub_26B9AACF4();
  v25 = *(v60 + 48);
  v44 = (v24 + v51);
  v45 = v25;
  *v44 = 1;
  sub_26B9AC4A4();
  sub_26B9AB214();
  v26 = v38;
  (v38)(v16, v53, v62);
  sub_26B9AB024();
  v27 = v50;
  v56(v19, 1, 1, v20);
  v22(v23, 1, 1, v54);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260B0, &qword_26B9B0028);
  v51 = *(v27 + 16);
  v42 = *(v27 + 24);
  v41 = ((v42 + 32) & ~v42) + 2 * v51;
  v40 = (v42 + 32) & ~v42;
  v28 = swift_allocObject();
  v39 = xmmword_26B9AF560;
  *(v28 + 16) = xmmword_26B9AF560;
  sub_26B9AC4A4();
  sub_26B9AB214();
  v29 = v53;
  v30 = v62;
  v31 = v26;
  (v26)(v16, v53, v62);
  sub_26B9AB024();
  sub_26B9AC4A4();
  sub_26B9AB214();
  (v26)(v16, v29, v30);
  sub_26B9AB024();
  v32 = v57;
  v33 = v58;
  sub_26B9AACE4();
  v45 = v59 + v47;
  v47 = *(v60 + 48);
  *v45 = 2;
  sub_26B9AC4A4();
  sub_26B9AB214();
  v34 = v62;
  v31(v16, v29, v62);
  sub_26B9AB024();
  v56(v32, 1, 1, v52);
  v46(v33, 1, 1, v54);
  *(swift_allocObject() + 16) = v39;
  sub_26B9AC4A4();
  sub_26B9AB214();
  v31(v16, v29, v34);
  sub_26B9AB024();
  sub_26B9AC4A4();
  sub_26B9AB214();
  v31(v16, v29, v34);
  sub_26B9AB024();
  sub_26B9AACE4();
  v35 = sub_26B900DA0(v48);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_280433D60 = v35;
  return result;
}

uint64_t sub_26B8FF9E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1852141679;
  if (v2 != 1)
  {
    v4 = 0x65736F6C63;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656C67676F74;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1852141679;
  if (*a2 != 1)
  {
    v8 = 0x65736F6C63;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C67676F74;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26B9ACEB4();
  }

  return v11 & 1;
}

uint64_t sub_26B8FFACC()
{
  sub_26B9ACFB4();
  sub_26B9AC574();

  return sub_26B9ACFF4();
}

uint64_t sub_26B8FFB60(uint64_t a1)
{
  sub_26B9AC574();
}

uint64_t sub_26B8FFBE0(uint64_t a1)
{
  sub_26B9ACFB4();
  sub_26B9AC574();

  return sub_26B9ACFF4();
}

unint64_t sub_26B8FFC70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26B900F74(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26B8FFCA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1852141679;
  if (v2 != 1)
  {
    v5 = 0x65736F6C63;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C67676F74;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26B8FFD28(uint64_t a1)
{
  v2 = sub_26B901014();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_26B8FFD74()
{
  if (qword_2804296B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_26B8FFDEC(uint64_t a1)
{
  v2 = sub_26B9017D8();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_26B8FFE48()
{
  v0 = sub_26B9AB004();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26B9AB224();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_26B9AC4B4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_26B9AB014();
  __swift_allocate_value_buffer(v6, qword_280433D68);
  __swift_project_value_buffer(v6, qword_280433D68);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_26B9AB024();
}

uint64_t sub_26B90003C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_26B9AB004();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_26B9AB224();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_26B9AC4B4();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_26B9AB014();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_26B9AB024();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_26B9AAC54();
  v13 = sub_26B9AAC34();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t sub_26B90036C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B9AAA94();
  *a1 = result;
  return result;
}

uint64_t sub_26B900400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_26B9AC804();
  v3[8] = sub_26B9AC7F4();
  v5 = sub_26B9AC7C4();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x2822009F8](sub_26B90049C, v5, v4);
}

uint64_t sub_26B90049C()
{
  sub_26B9AAA74();
  sub_26B9AAA74();
  if (*(v0 + 105))
  {
    if (*(v0 + 105) == 1)
    {
LABEL_3:
      sub_26B9AA894();
      *(v0 + 88) = *(v0 + 24);
      ObjectType = swift_getObjectType();
      v2 = swift_task_alloc();
      *(v0 + 96) = v2;
      *v2 = v0;
      v2[1] = sub_26B90060C;

      return sub_26B905ACC(ObjectType);
    }
  }

  else
  {
    sub_26B9AA894();
    v4 = [*(v0 + 32) spotlightIsVisible];
    swift_unknownObjectRelease();
    if ((v4 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  sub_26B9AA894();
  [*(v0 + 16) dismissSpotlight];
  swift_unknownObjectRelease();
  sub_26B9AA9F4();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26B90060C()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_26B900750, v3, v2);
}

uint64_t sub_26B900750()
{

  sub_26B9AA9F4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B9007F8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  swift_beginAccess();
  return (*(*(v8 - 8) + 16))(a5, v9, v8);
}

uint64_t sub_26B9008B0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD8, &qword_26B9AFBE8);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FE0, &qword_26B9AFBF0);
  MEMORY[0x28223BE20](v3);
  sub_26B9AAD74();
  sub_26B9AAD64();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FF0, &qword_26B9AFC20);
  sub_26B9AAD54();

  sub_26B9AAD64();
  sub_26B9AAD94();
  return sub_26B9AAD44();
}

uint64_t sub_26B900A58(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26B8EB6C8;

  return sub_26B900400(a1, v5, v4);
}

uint64_t sub_26B900B04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B901068();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B900B2C(uint64_t a1)
{
  v2 = sub_26B900FC0();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_26B900B68(uint64_t a1)
{
  v1 = a1;
  sub_26B9ACFB4();
  sub_26B9AC574();

  v2 = sub_26B9ACFF4();

  return sub_26B900C20(v1, v2);
}

unint64_t sub_26B900C20(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE400000000000000;
          v8 = 1852141679;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE500000000000000;
          v8 = 0x65736F6C63;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE600000000000000;
            if (v8 != 0x656C67676F74)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE600000000000000;
        v8 = 0x656C67676F74;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 1852141679;
      }

      else
      {
        v10 = 0x65736F6C63;
      }

      if (v9 == 1)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_26B9ACEB4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_26B900DA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260A8, &qword_26B9B0020);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260B8, &unk_26B9B0030);
    v7 = sub_26B9ACD84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_26B9AAAE4();
    while (1)
    {
      sub_26B901CA4(v9, v5);
      v11 = *v5;
      result = sub_26B900B68(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_26B9AAD04();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_26B900F74(uint64_t a1, uint64_t a2)
{
  v2 = sub_26B9ACDC4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26B900FC0()
{
  result = qword_280425FE8;
  if (!qword_280425FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425FE8);
  }

  return result;
}

unint64_t sub_26B901014()
{
  result = qword_280426000;
  if (!qword_280426000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426000);
  }

  return result;
}

uint64_t sub_26B901068()
{
  v0 = sub_26B9AADA4();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x28223BE20](v0);
  v28 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425D00, &qword_26B9AFA00);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v27 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FD0, &unk_26B9AEBB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v26 - v8;
  v10 = sub_26B9AB004();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26B9AB224();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_26B9AC4B4();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_26B9AB014();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v26[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425FF8, qword_26B9AFC28);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v11 + 104))(v13, *MEMORY[0x277CC9110], v10);
  sub_26B9AB024();
  (*(v17 + 56))(v9, 1, 1, v16);
  v33 = 1;
  v18 = sub_26B9AA9E4();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v27, 1, 1, v18);
  (*(v29 + 104))(v28, *MEMORY[0x277CBA308], v30);
  sub_26B901014();
  v20 = sub_26B9AAAA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280425D90, &unk_26B9AF350);
  v21 = [objc_opt_self() presentationHelperKey];
  v22 = sub_26B9AC504();
  v24 = v23;

  v31 = v22;
  v32 = v24;
  sub_26B9ACB64();
  sub_26B9AA924();
  sub_26B9AA914();
  sub_26B9AA8B4();
  return v20;
}

unint64_t sub_26B901574()
{
  result = qword_280426010;
  if (!qword_280426010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426010);
  }

  return result;
}

unint64_t sub_26B9015CC()
{
  result = qword_280426018;
  if (!qword_280426018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426018);
  }

  return result;
}

unint64_t sub_26B901624()
{
  result = qword_280426020;
  if (!qword_280426020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426020);
  }

  return result;
}

unint64_t sub_26B90167C()
{
  result = qword_280426028;
  if (!qword_280426028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426028);
  }

  return result;
}

unint64_t sub_26B9016D4()
{
  result = qword_280426030;
  if (!qword_280426030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426030);
  }

  return result;
}

unint64_t sub_26B90172C()
{
  result = qword_280426038;
  if (!qword_280426038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426038);
  }

  return result;
}

unint64_t sub_26B901780()
{
  result = qword_280426040;
  if (!qword_280426040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426040);
  }

  return result;
}

unint64_t sub_26B9017D8()
{
  result = qword_280426048;
  if (!qword_280426048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426048);
  }

  return result;
}

unint64_t sub_26B901884()
{
  result = qword_280426050;
  if (!qword_280426050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426050);
  }

  return result;
}

unint64_t sub_26B9018DC()
{
  result = qword_280426058;
  if (!qword_280426058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426058);
  }

  return result;
}

unint64_t sub_26B901934()
{
  result = qword_280426060;
  if (!qword_280426060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426060);
  }

  return result;
}

unint64_t sub_26B9019D0()
{
  result = qword_280426078;
  if (!qword_280426078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426078);
  }

  return result;
}

unint64_t sub_26B901A28()
{
  result = qword_280426080;
  if (!qword_280426080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426080);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26B901AC0(uint64_t *a1, int a2)
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

uint64_t sub_26B901B08(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ToggleSpotlightIntent.Action(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ToggleSpotlightIntent.Action(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B901CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260A8, &qword_26B9B0020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ParameterQueryInvocationKind.hashValue.getter()
{
  v1 = *v0;
  sub_26B9ACFB4();
  MEMORY[0x26D686E90](v1);
  return sub_26B9ACFF4();
}

uint64_t sub_26B901DC0()
{
  v0 = sub_26B9AB394();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B9AB334();
  v4 = sub_26B9AB384();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t ParameterSummaryBoolParameter.buildQuery(invocation:kind:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_26B9AC0E4();
  v3[5] = swift_task_alloc();
  v4 = sub_26B9AB984();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_26B9AB394();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  sub_26B9AC804();
  v3[12] = sub_26B9AC7F4();
  v7 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B902044, v7, v6);
}

uint64_t sub_26B902044()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v13 = v0[6];
  v14 = v0[5];
  v6 = v0[3];
  v7 = v0[2];

  sub_26B9AB334();
  v8 = sub_26B9AB384();
  v15 = v9;
  v16 = v8;
  (*(v3 + 8))(v1, v2);
  (*(v4 + 16))(v5, v6, v13);
  sub_26B9AB304();
  v7[3] = type metadata accessor for BoolParameterQuery(0);
  v7[4] = sub_26B904E20(&qword_2804260C0, type metadata accessor for BoolParameterQuery, &protocol conformance descriptor for BoolParameterQuery);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  BoolParameterQuery.init(searchString:toolInvocation:parameterDefinition:)(v16, v15, v5, v14, boxed_opaque_existential_1);

  v11 = v0[1];

  return v11();
}

uint64_t sub_26B9021B0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  sub_26B9AC0E4();
  v3[4] = swift_task_alloc();
  v4 = sub_26B9AB984();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_26B9AB394();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v2;
  v3[10] = v6;
  v3[11] = v7;
  sub_26B9AC804();
  v3[12] = sub_26B9AC7F4();
  v9 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B902330, v9, v8);
}

uint64_t sub_26B902330()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[3];
  v13 = v0[5];
  v14 = v0[4];
  v7 = v0[2];

  sub_26B9AB334();
  v8 = sub_26B9AB384();
  v15 = v9;
  v16 = v8;
  (*(v2 + 8))(v1, v4);
  (*(v5 + 16))(v3, v6, v13);
  sub_26B9AB304();
  v7[3] = type metadata accessor for BoolParameterQuery(0);
  v7[4] = sub_26B904E20(&qword_2804260C0, type metadata accessor for BoolParameterQuery, &protocol conformance descriptor for BoolParameterQuery);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  BoolParameterQuery.init(searchString:toolInvocation:parameterDefinition:)(v16, v15, v3, v14, boxed_opaque_existential_1);

  v11 = v0[1];

  return v11();
}

uint64_t ParameterSummaryEnumerationParameter.buildQuery(invocation:kind:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  *(v4 + 56) = swift_task_alloc();
  sub_26B9AC0E4();
  *(v4 + 64) = swift_task_alloc();
  v6 = sub_26B9AB984();
  *(v4 + 72) = v6;
  *(v4 + 80) = *(v6 - 8);
  *(v4 + 88) = swift_task_alloc();
  v7 = sub_26B9AB394();
  *(v4 + 96) = v7;
  *(v4 + 104) = *(v7 - 8);
  *(v4 + 112) = swift_task_alloc();
  sub_26B9AC204();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 160) = *a3;
  sub_26B9AC804();
  *(v4 + 128) = sub_26B9AC7F4();
  v9 = sub_26B9AC7C4();
  *(v4 + 136) = v9;
  *(v4 + 144) = v8;

  return MEMORY[0x2822009F8](sub_26B90268C, v9, v8);
}

uint64_t sub_26B90268C()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = v0[5];
  sub_26B9AB354();
  sub_26B9AB334();
  v0[2] = sub_26B9AB384();
  v0[3] = v8;
  (*(v3 + 8))(v1, v2);
  (*(v5 + 16))(v4, v7, v6);
  sub_26B9AB304();
  v12 = (*MEMORY[0x277D7D548] + MEMORY[0x277D7D548]);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_26B9027C8;
  v10 = v0[7];

  return v12(v10);
}

uint64_t sub_26B9027C8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_26B902A20;
  }

  else
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_26B9028EC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26B9028EC()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 160);
  v4 = *(v0 + 120);
  v5 = *(v0 + 88);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 32);
  v8[3] = type metadata accessor for AppEnumQuery(0);
  v8[4] = sub_26B904E20(&qword_2804260D0, type metadata accessor for AppEnumQuery, &protocol conformance descriptor for AppEnumQuery);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  AppEnumQuery.init(definition:searchString:toolInvocation:parameterDefinition:showAllCases:selectedValue:)(v4, v1, v2, v5, v6, (v3 & 1) == 0, v7, boxed_opaque_existential_1);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26B902A20()
{
  v1 = *(v0 + 56);

  v2 = sub_26B9ABE84();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 160);
  v6 = *(v0 + 120);
  v7 = *(v0 + 88);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 32);
  v10[3] = type metadata accessor for AppEnumQuery(0);
  v10[4] = sub_26B904E20(&qword_2804260D0, type metadata accessor for AppEnumQuery, &protocol conformance descriptor for AppEnumQuery);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  AppEnumQuery.init(definition:searchString:toolInvocation:parameterDefinition:showAllCases:selectedValue:)(v6, v3, v4, v7, v8, (v5 & 1) == 0, v9, boxed_opaque_existential_1);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26B902B98(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26B8EC52C;

  return ParameterSummaryEnumerationParameter.buildQuery(invocation:kind:)(a1, a2, a3);
}

uint64_t ParameterSummaryEntityParameter.buildQuery(invocation:kind:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  *(v4 + 56) = swift_task_alloc();
  v6 = sub_26B9AB394();
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 - 8);
  *(v4 + 80) = swift_task_alloc();
  v7 = sub_26B9AC0E4();
  *(v4 + 88) = v7;
  *(v4 + 96) = *(v7 - 8);
  *(v4 + 104) = swift_task_alloc();
  v8 = sub_26B9ABF94();
  *(v4 + 112) = v8;
  *(v4 + 120) = *(v8 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 185) = *a3;
  sub_26B9AC804();
  *(v4 + 136) = sub_26B9AC7F4();
  v10 = sub_26B9AC7C4();
  *(v4 + 144) = v10;
  *(v4 + 152) = v9;

  return MEMORY[0x2822009F8](sub_26B902E40, v10, v9);
}

uint64_t sub_26B902E40()
{
  v1 = *(v0 + 185);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  sub_26B9AB344();
  sub_26B9AB304();
  sub_26B9AB334();
  *(v0 + 16) = sub_26B9AB384();
  *(v0 + 24) = v5;
  (*(v3 + 8))(v2, v4);
  *(v0 + 184) = v1;
  v9 = (*MEMORY[0x277D7D548] + MEMORY[0x277D7D548]);
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  *v6 = v0;
  v6[1] = sub_26B902F50;
  v7 = *(v0 + 56);

  return v9(v7);
}

uint64_t sub_26B902F50()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v2 + 144);
    v5 = *(v2 + 152);

    return MEMORY[0x2822009F8](sub_26B9033B8, v4, v5);
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = *(v2 + 24);
    *(v2 + 168) = v7;
    v8 = swift_task_alloc();
    *(v2 + 176) = v8;
    *v8 = v3;
    v8[1] = sub_26B9030F0;
    v9 = *(v2 + 128);
    v10 = *(v2 + 104);
    v11 = *(v2 + 56);
    v12 = *(v2 + 32);
    v13 = *(v2 + 40);

    return static ToolKitQueryHelper.resolveQuery(for:parameter:invocation:searchString:kind:selectedValue:)(v12, v9, v10, v13, v6, v7, (v2 + 184), v11);
  }
}

uint64_t sub_26B9030F0()
{
  v1 = *v0;
  v11 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 96);
  v6 = *(*v0 + 88);
  v7 = *(*v0 + 56);

  sub_26B8EACD8(v7, &qword_2804260C8, &qword_26B9B0050);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v11, v3);
  v8 = *(v1 + 152);
  v9 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_26B903324, v9, v8);
}

uint64_t sub_26B903324()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B9033B8()
{
  v1 = *(v0 + 56);
  v2 = sub_26B9ABE84();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 168) = v3;
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_26B9030F0;
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);

  return static ToolKitQueryHelper.resolveQuery(for:parameter:invocation:searchString:kind:selectedValue:)(v9, v6, v7, v10, v4, v3, (v0 + 184), v8);
}

uint64_t sub_26B9034B4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26B8EC52C;

  return ParameterSummaryEntityParameter.buildQuery(invocation:kind:)(a1, a2, a3);
}

uint64_t ParameterSummaryLocationParameter.buildQuery(invocation:kind:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_26B9AB394();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_26B9AC804();
  v2[7] = sub_26B9AC7F4();
  v5 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B90365C, v5, v4);
}

uint64_t sub_26B90365C()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];

  sub_26B9AB334();
  sub_26B9AB384();
  (*(v3 + 8))(v1, v2);
  nullsub_1();
  v6 = v5;
  v8 = v7;
  v4[3] = &type metadata for LocationParameterQuery;
  v4[4] = sub_26B903738();
  *v4 = v6;
  v4[1] = v8;

  v9 = v0[1];

  return v9();
}

unint64_t sub_26B903738()
{
  result = qword_2804260D8;
  if (!qword_2804260D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804260D8);
  }

  return result;
}

uint64_t sub_26B90378C(uint64_t a1)
{
  v2[2] = a1;
  v3 = sub_26B9AB394();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[5] = v4;
  v2[6] = v5;
  sub_26B9AC804();
  v2[7] = sub_26B9AC7F4();
  v7 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B903884, v7, v6);
}

uint64_t sub_26B903884()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_26B9AB334();
  sub_26B9AB384();
  (*(v2 + 8))(v1, v3);
  nullsub_1();
  v6 = v5;
  v8 = v7;
  v4[3] = &type metadata for LocationParameterQuery;
  v4[4] = sub_26B903738();
  *v4 = v6;
  v4[1] = v8;

  v9 = v0[1];

  return v9();
}

uint64_t ParameterSummaryPersonParameter.buildQuery(invocation:kind:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_26B9AB394();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_26B9AC804();
  v2[7] = sub_26B9AC7F4();
  v5 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B903A54, v5, v4);
}

uint64_t sub_26B903A54()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  sub_26B9AB334();
  v4 = sub_26B9AB384();
  v6 = v5;
  v7 = *(v3 + 8);
  v7(v1, v2);

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = v0[6];
    v10 = v0[4];
    v11 = v0[2];
    sub_26B9AB334();
    sub_26B9AB384();
    v7(v9, v10);
    j_nullsub_1();
    v13 = v12;
    v15 = v14;
    v11[3] = &type metadata for PersonParameterQuery;
    v11[4] = sub_26B903BB0();
    *v11 = v13;
    v11[1] = v15;
  }

  else
  {
    v16 = v0[2];
    *(v16 + 24) = &type metadata for EmptyQuery;
    *(v16 + 32) = sub_26B903C04();
    EmptyQuery.init()();
  }

  v17 = v0[1];

  return v17();
}

unint64_t sub_26B903BB0()
{
  result = qword_2804260E0;
  if (!qword_2804260E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804260E0);
  }

  return result;
}

unint64_t sub_26B903C04()
{
  result = qword_2804260E8;
  if (!qword_2804260E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804260E8);
  }

  return result;
}

uint64_t sub_26B903C58(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EC52C;

  return ParameterSummaryPersonParameter.buildQuery(invocation:kind:)(a1);
}

uint64_t ParameterSummaryFileParameter.buildQuery(invocation:kind:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_26B9ABFF4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260F0, &qword_26B9B0D10);
  v2[7] = swift_task_alloc();
  v4 = sub_26B9ABEB4();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_26B9AC0E4();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier(0);
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  sub_26B9AC804();
  v2[17] = sub_26B9AC7F4();
  v8 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B903F34, v8, v7);
}

uint64_t sub_26B903F34()
{

  v1 = sub_26B901DC0();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    v21 = v0[2];
    *(v21 + 24) = &type metadata for EmptyQuery;
    *(v21 + 32) = sub_26B903C04();
    EmptyQuery.init()();
    goto LABEL_27;
  }

  v5 = v0[15];
  v58 = v0[14];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];
  v13 = sub_26B9AB304();
  MEMORY[0x26D685FA0](v13);
  (*(v7 + 8))(v6, v8);
  sub_26B97BCE4(v12);
  (*(v10 + 8))(v9, v11);
  if ((*(v5 + 48))(v12, 1, v58) == 1)
  {
    v14 = v0[2];
    sub_26B8EACD8(v0[7], &qword_2804260F0, &qword_26B9B0D10);
    sub_26B901DC0();
    nullsub_1();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v14[3] = &type metadata for FileParameterQuery;
    v14[4] = sub_26B904368();
    *v14 = v16;
    v14[1] = v18;
    v14[2] = v20;
LABEL_27:

    v55 = v0[1];

    return v55();
  }

  v22 = v0[16];
  v23 = v0[14];
  sub_26B9043BC(v0[7], v22);
  v24 = *(v22 + *(v23 + 20));
  v25 = *(v24 + 16);
  if (!v25)
  {
LABEL_26:
    v47 = v0[16];
    v48 = v0[2];
    sub_26B901DC0();
    nullsub_1();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v48[3] = &type metadata for FileParameterQuery;
    v48[4] = sub_26B904368();
    *v48 = v50;
    v48[1] = v52;
    v48[2] = v54;
    sub_26B904420(v47);
    goto LABEL_27;
  }

  v26 = v0[5];
  v28 = *(v26 + 16);
  v27 = v26 + 16;
  v59 = v28;
  v29 = v24 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
  v56 = *(v27 + 56);
  v57 = *MEMORY[0x277D72E68];
  v30 = MEMORY[0x277D84F90];
  while (1)
  {
    v31 = v0[6];
    v32 = v0[4];
    v59(v31, v29, v32);
    v33 = (*(v27 + 72))(v31, v32);
    v34 = v0[6];
    v35 = v0[4];
    if (v33 != v57)
    {
      (*(v27 - 8))(v0[6], v35);
      goto LABEL_10;
    }

    result = (*(v27 + 80))(v0[6], v35);
    v37 = *v34;
    v38 = *(*v34 + 16);
    v39 = v30[2];
    v40 = v39 + v38;
    if (__OFADD__(v39, v38))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v40 <= v30[3] >> 1)
    {
      if (!*(v37 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v39 <= v40)
      {
        v46 = v39 + v38;
      }

      else
      {
        v46 = v39;
      }

      v30 = sub_26B9049FC(isUniquelyReferenced_nonNull_native, v46, 1, v30);
      if (!*(v37 + 16))
      {
LABEL_24:

        if (v38)
        {
          __break(1u);
          goto LABEL_26;
        }

        goto LABEL_10;
      }
    }

    v42 = (v30[3] >> 1) - v30[2];
    result = sub_26B9AB414();
    if (v42 < v38)
    {
      goto LABEL_31;
    }

    swift_arrayInitWithCopy();

    if (v38)
    {
      v43 = v30[2];
      v44 = __OFADD__(v43, v38);
      v45 = v43 + v38;
      if (v44)
      {
        goto LABEL_32;
      }

      v30[2] = v45;
    }

LABEL_10:
    v29 += v56;
    if (!--v25)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_26B904368()
{
  result = qword_2804260F8;
  if (!qword_2804260F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804260F8);
  }

  return result;
}

uint64_t sub_26B9043BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B904420(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitQueryHelper.RestrictedTypeIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B90447C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EB6C8;

  return ParameterSummaryFileParameter.buildQuery(invocation:kind:)(a1);
}

uint64_t ParameterSummaryCustomEnumerableParameter.buildQuery(invocation:kind:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = v3;
  *(v4 + 16) = a1;
  *(v4 + 24) = v5;
  v7 = (*v5 + *MEMORY[0x277D7D588]);
  *(v4 + 32) = *v7;
  *(v4 + 40) = v7[1];
  v8 = sub_26B9AB314();
  *(v4 + 48) = v8;
  *(v4 + 56) = *(v8 - 8);
  *(v4 + 64) = swift_task_alloc();
  v9 = sub_26B9ACA34();
  *(v4 + 72) = v9;
  *(v4 + 80) = *(v9 - 8);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 112) = *a3;
  sub_26B9AC804();
  *(v4 + 104) = sub_26B9AC7F4();
  v11 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B9046D0, v11, v10);
}

uint64_t sub_26B9046D0()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);

  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v1, 1, 1, v5);
  sub_26B9AB324();
  if ((*(v3 + 88))(v2, v4) == *MEMORY[0x277D7D550])
  {
    v8 = *(v0 + 96);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 48);
    v12 = *(v0 + 32);
    (*(*(v0 + 80) + 8))(v8, *(v0 + 72));
    (*(v10 + 96))(v9, v11);
    (*(v6 + 32))(v8, v9, v12);
    v7(v8, 0, 1, v12);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  }

  v27 = *(v0 + 112);
  v13 = *(v0 + 88);
  v14 = *(v0 + 96);
  v16 = *(v0 + 72);
  v15 = *(v0 + 80);
  v18 = *(v0 + 32);
  v17 = *(v0 + 40);
  v19 = *(v0 + 16);
  v20 = sub_26B901DC0();
  v22 = v21;
  (*(v15 + 16))(v13, v14, v16);
  v19[3] = type metadata accessor for CustomEnumerableParameterQuery(0, v18, v17, v23);
  v19[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  CustomEnumerableParameterQuery.init(searchString:showAllCases:selectedValue:)(v20, v22, (v27 & 1) == 0, v13, v18, v17, boxed_opaque_existential_1);
  (*(v15 + 8))(v14, v16);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_26B904950(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26B8EC52C;

  return ParameterSummaryCustomEnumerableParameter.buildQuery(invocation:kind:)(a1, v6, a3);
}

void *sub_26B9049FC(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426130, qword_26B9B0298);
  v10 = *(sub_26B9AB414() - 8);
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
  v15 = *(sub_26B9AB414() - 8);
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

unint64_t sub_26B904BD8()
{
  result = qword_280426100;
  if (!qword_280426100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426100);
  }

  return result;
}

uint64_t sub_26B904C2C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B904C68(uint64_t a1)
{
  result = sub_26B904E20(&qword_280426108, MEMORY[0x277D7D560], MEMORY[0x277D7D558]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B904CC0(uint64_t a1)
{
  result = sub_26B904E20(&qword_280426110, MEMORY[0x277D7D580], MEMORY[0x277D7D558]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B904D18(uint64_t a1)
{
  result = sub_26B904E20(&qword_280426118, MEMORY[0x277D7D568], MEMORY[0x277D7D558]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B904D70(uint64_t a1)
{
  result = sub_26B904E20(&qword_280426120, MEMORY[0x277D7D578], MEMORY[0x277D7D558]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B904DC8(uint64_t a1)
{
  result = sub_26B904E20(&qword_280426128, MEMORY[0x277D7D570], MEMORY[0x277D7D558]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B904E20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of QueryDrivenParameter.buildQuery(invocation:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26B8EB6C8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_26B904FC4()
{
  v1 = (v0 + OBJC_IVAR___SUIAppIntentsQueryHelper_searchString);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_26B90501C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SUIAppIntentsQueryHelper_searchString);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id AppIntentsQueryHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppIntentsQueryHelper.init()()
{
  v1 = &v0[OBJC_IVAR___SUIAppIntentsQueryHelper_searchString];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AppIntentsQueryHelper();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_26B9050F8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_26B9AC804();
  v3[8] = sub_26B9AC7F4();
  v5 = sub_26B9AC7C4();

  return MEMORY[0x2822009F8](sub_26B905194, v5, v4);
}

uint64_t sub_26B905194()
{
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];

  v4 = (v1 + OBJC_IVAR___SUIAppIntentsQueryHelper_searchString);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  v5 = v0[1];

  return v5();
}

id AppIntentsQueryHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppIntentsQueryHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of AppIntentsQueryHelper.update(with:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x70);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26B8EB6C8;

  return v9(a1, a2);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B905410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_26B9056CC(a3, v23 - v10);
  v12 = sub_26B9AC824();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26B90573C(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_26B9AC814();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_26B9AC7C4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_26B9AC554() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    sub_26B9AAAE4();
    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_26B90573C(a3);

    return v21;
  }

LABEL_8:
  sub_26B90573C(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_26B9056CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B90573C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B9057A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return sub_26B8EB318(a1, v4);
}

uint64_t _s17SpotlightUIShared22WindowCollapseSignpostO9hashValueSivg_0()
{
  sub_26B9ACFB4();
  MEMORY[0x26D686E90](0);
  return sub_26B9ACFF4();
}

uint64_t sub_26B9058D0(uint64_t a1)
{
  sub_26B9ACFB4();
  MEMORY[0x26D686E90](0);
  return sub_26B9ACFF4();
}

uint64_t sub_26B905920()
{
  v0 = sub_26B9AB004();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26B9AB224();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_26B9AC4B4();
  MEMORY[0x28223BE20](v5 - 8);
  sub_26B9AC4A4();
  sub_26B9AB214();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_26B9AB024();
}

uint64_t sub_26B905ACC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_26B9AC804();
  v2[5] = sub_26B9AC7F4();
  v4 = sub_26B9AC7C4();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_26B905B68, v4, v3);
}

uint64_t sub_26B905B68(uint64_t a1)
{
  v5 = *(v1 + 16);
  *(v1 + 64) = sub_26B9AC7F4();
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *(v2 + 16) = v5;
  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  *v3 = v1;
  v3[1] = sub_26B905C78;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_26B905C78()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_26B905DD8, v3, v2);
}

uint64_t sub_26B905DD8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_26B905E38(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426148, &qword_26B9B0458);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_26B906140;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26B9061AC;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  [a2 presentSpotlightWithCompletionHandler_];
  _Block_release(v10);
}

unint64_t sub_26B905FF4()
{
  result = qword_280426140;
  if (!qword_280426140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426140);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SUIAppIntentError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SUIAppIntentError(_WORD *result, int a2, int a3)
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

uint64_t sub_26B9061AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_26B9AAAE4();
  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_26B9AAAE4();
}

uint64_t sub_26B906208()
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804261A0, &qword_26B9B0540);
  v0 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v2 = &v17 - v1;
  v3 = sub_26B9AAAF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804261A8, &qword_26B9B0548);
  MEMORY[0x28223BE20](v7);
  sub_26B900FC0();
  sub_26B9AABD4();
  sub_26B9AABC4();
  swift_getKeyPath();
  sub_26B9AABB4();

  sub_26B9AABC4();
  v24 = *MEMORY[0x277CB9F50];
  v23 = *(v4 + 104);
  v20 = v3;
  v23(v6);
  sub_26B9AABA4();
  v8 = *(v4 + 8);
  v21 = v4 + 8;
  v22 = v8;
  v8(v6, v3);
  sub_26B9AABC4();
  sub_26B9AABE4();
  v25 = sub_26B9AAB14();
  v18 = *(v0 + 8);
  v9 = v26;
  v18(v2, v26);
  sub_26B9AABD4();
  sub_26B9AABC4();
  swift_getKeyPath();
  sub_26B9AABB4();

  sub_26B9AABC4();
  sub_26B9AABE4();
  v19 = sub_26B9AAB14();
  v10 = v18;
  v18(v2, v9);
  sub_26B9AABD4();
  sub_26B9AABC4();
  swift_getKeyPath();
  sub_26B9AABB4();

  sub_26B9AABC4();
  v11 = v20;
  (v23)(v6, v24, v20);
  sub_26B9AABA4();
  v22(v6, v11);
  sub_26B9AABC4();
  sub_26B9AABE4();
  v12 = sub_26B9AAB14();
  v10(v2, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804261B0, &qword_26B9B0578);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26B9AFBD0;
  v14 = v19;
  *(v13 + 32) = v25;
  *(v13 + 40) = v14;
  *(v13 + 48) = v12;
  v15 = sub_26B9AAB04();

  return v15;
}

uint64_t sub_26B9066BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B900398();
  *a1 = result;
  return result;
}

uint64_t sub_26B9066FC(uint64_t a1)
{
  v30 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426188, &qword_26B9B0528);
  v31 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v2 = &v20 - v1;
  v3 = sub_26B9AAAF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426190, &qword_26B9B0530);
  MEMORY[0x28223BE20](v7);
  sub_26B8FD1B8();
  sub_26B9AABD4();
  sub_26B9AABC4();
  swift_getKeyPath();
  v29 = sub_26B9075BC();
  sub_26B9AAAE4();

  sub_26B9AABB4();

  sub_26B9AABC4();
  LODWORD(v26) = *MEMORY[0x277CB9F50];
  v25 = *(v4 + 104);
  v21 = v3;
  v25(v6);
  sub_26B9AABA4();
  v8 = *(v4 + 8);
  v23 = v4 + 8;
  v24 = v8;
  v8(v6, v3);
  sub_26B9AABC4();
  sub_26B9AABE4();
  v28 = sub_26B9AAB14();
  v9 = *(v31 + 8);
  v31 += 8;
  v22 = v9;
  v10 = v27;
  v9(v2, v27);
  sub_26B9AABD4();
  sub_26B9AABC4();
  swift_getKeyPath();
  sub_26B9AAAE4();

  sub_26B9AABB4();

  sub_26B9AABC4();
  v11 = v21;
  (v25)(v6, v26, v21);
  sub_26B9AABA4();
  v24(v6, v11);
  sub_26B9AABC4();
  sub_26B9AABE4();
  v26 = sub_26B9AAB14();
  v12 = v10;
  v13 = v10;
  v14 = v22;
  v22(v2, v13);
  sub_26B9AABD4();
  sub_26B9AABC4();
  swift_getKeyPath();
  sub_26B9AAAE4();

  sub_26B9AABB4();

  sub_26B9AABC4();
  sub_26B9AABE4();
  v15 = sub_26B9AAB14();
  v14(v2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426198, &qword_26B9B0538);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26B9AFBD0;
  v17 = v26;
  *(v16 + 32) = v28;
  *(v16 + 40) = v17;
  *(v16 + 48) = v15;
  v18 = sub_26B9AAB04();

  return v18;
}

uint64_t sub_26B906C74(uint64_t a1)
{
  v2 = sub_26B9AACB4();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_26B8FD314(v4);
}

uint64_t sub_26B906D44()
{
  v0 = sub_26B9AAB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_26B9075BC();
  sub_26B9AAAE4();

  sub_26B8FD1B8();
  sub_26B9AAB74();
  v4 = sub_26B9AAB64();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426178, &qword_26B9B0518);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26B9AF300;
  *(v5 + 32) = v4;
  v6 = sub_26B9AAB54();

  return v6;
}

uint64_t sub_26B906EB4()
{
  v0 = sub_26B9AAB34();
  v1 = sub_26B9AAB34();
  v2 = sub_26B9AAB34();
  v3 = sub_26B9AAB34();
  v4 = sub_26B9AAB34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426180, &qword_26B9B0520);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26B9B0460;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_26B9AAB24();

  return v6;
}

uint64_t sub_26B906FD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426158, &qword_26B9B04D8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - v2;
  v4 = sub_26B9AAAF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426160, &qword_26B9B04E0);
  MEMORY[0x28223BE20](v8);
  sub_26B8FC3C0();
  sub_26B9AABD4();
  sub_26B9AABC4();
  (*(v5 + 104))(v7, *MEMORY[0x277CB9F50], v4);
  sub_26B9AABA4();
  (*(v5 + 8))(v7, v4);
  sub_26B9AABC4();
  sub_26B9AABE4();
  v9 = sub_26B9AAB14();
  v10 = *(v1 + 8);
  v10(v3, v0);
  sub_26B9AAB94();
  v11 = sub_26B9AAB14();
  v10(v3, v0);
  sub_26B9AAB94();
  v12 = sub_26B9AAB14();
  v10(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426168, &qword_26B9B04E8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26B9AFBD0;
  *(v13 + 32) = v9;
  *(v13 + 40) = v11;
  *(v13 + 48) = v12;
  v14 = sub_26B9AAB04();

  return v14;
}

uint64_t sub_26B907348()
{
  v0 = sub_26B9AAC14();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26B9007BC();
  v16 = v4;
  sub_26B900FC0();
  sub_26B9AAC24();
  v5 = sub_26B9AAC04();
  v6 = *(v1 + 8);
  v6(v3, v0);
  v15 = sub_26B8FE1EC();
  v16 = v7;
  v17 = v8;
  sub_26B8FD1B8();
  sub_26B9AAC24();
  v9 = sub_26B9AAC04();
  v6(v3, v0);
  v15 = sub_26B8FCBB0();
  sub_26B8FC3C0();
  sub_26B9AAC24();
  v10 = sub_26B9AAC04();
  v6(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426150, &qword_26B9B04D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26B9AFBD0;
  *(v11 + 32) = v5;
  *(v11 + 40) = v9;
  *(v11 + 48) = v10;
  v12 = sub_26B9AABF4();

  return v12;
}

unint64_t sub_26B9075BC()
{
  result = qword_280426170;
  if (!qword_280426170)
  {
    sub_26B9AACB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426170);
  }

  return result;
}

uint64_t sub_26B90762C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26B9056CC(a3, v25 - v10);
  v12 = sub_26B9AC824();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_26B9AAAE4();
  if (v14 == 1)
  {
    sub_26B8EACD8(v11, &qword_280426FA0, &qword_26B9B02E0);
  }

  else
  {
    sub_26B9AC814();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26B9AC7C4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26B9AC554() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_26B9AAAE4();
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

      sub_26B8EACD8(a3, &qword_280426FA0, &qword_26B9B02E0);

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

  sub_26B8EACD8(a3, &qword_280426FA0, &qword_26B9B02E0);
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

SUIAppIntentsAnnotator __swiftcall SUIAppIntentsAnnotator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SUIAppIntentsAnnotator()
{
  result = qword_28042A660;
  if (!qword_28042A660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28042A660);
  }

  return result;
}

uint64_t sub_26B907A10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return sub_26B8EB318(a1, v4);
}

double sub_26B907AD4()
{
  v0 = type metadata accessor for BaseToolExecutionSessionManager();
  v1 = swift_allocObject();
  result = 0.0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  qword_28042A690 = v0;
  unk_28042A698 = &protocol witness table for BaseToolExecutionSessionManager;
  qword_28042A678 = v1;
  return result;
}

double BaseToolExecutionSessionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t sub_26B907B58@<X0>(uint64_t a1@<X8>)
{
  if (qword_28042A670 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_26B907F08(&qword_28042A678, a1);
}

uint64_t sub_26B907BD8(uint64_t *a1)
{
  if (qword_28042A670 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_28042A678, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_26B907C68(uint64_t a1))(uint64_t a1)
{
  if (qword_28042A670 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26B907D24(uint64_t a1)
{
  sub_26B907F08(a1, v3);
  sub_26B907F08(v3, v2);
  static Dependencies.subscript.setter(v2, &type metadata for ToolExecutionSessionManagerKey, &type metadata for ToolExecutionSessionManagerKey, &off_281FF6E78);
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t Dependencies.toolExecutionSessionManager.setter(void *a1)
{
  sub_26B907F08(a1, v3);
  static Dependencies.subscript.setter(v3, &type metadata for ToolExecutionSessionManagerKey, &type metadata for ToolExecutionSessionManagerKey, &off_281FF6E78);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*Dependencies.toolExecutionSessionManager.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x78uLL);
  }

  *a1 = v2;
  static Dependencies.subscript.getter(&type metadata for ToolExecutionSessionManagerKey, &type metadata for ToolExecutionSessionManagerKey, &off_281FF6E78);
  return sub_26B907E4C;
}

void sub_26B907E4C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_26B907F08(*a1, (v2 + 5));
    sub_26B907F08((v2 + 5), (v2 + 10));
    static Dependencies.subscript.setter((v2 + 10), &type metadata for ToolExecutionSessionManagerKey, &type metadata for ToolExecutionSessionManagerKey, &off_281FF6E78);
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  else
  {
    sub_26B907F08(*a1, (v2 + 5));
    static Dependencies.subscript.setter((v2 + 5), &type metadata for ToolExecutionSessionManagerKey, &type metadata for ToolExecutionSessionManagerKey, &off_281FF6E78);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

double BaseToolExecutionSessionManager.init()()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t sub_26B907F08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26B907FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_26B9AC804();
  v4[3] = sub_26B9AC7F4();
  v8 = (*(*a4 + 192) + **(*a4 + 192));
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_26B9080D8;

  return v8();
}

uint64_t sub_26B9080D8(uint64_t a1)
{

  if (v1)
  {

    v2 = sub_26B9AC7C4();
    v4 = v3;
    v5 = sub_26B90CBF4;
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = sub_26B9AC7C4();
    v4 = v6;
    v5 = sub_26B908270;
  }

  return MEMORY[0x2822009F8](v5, v2, v4);
}

uint64_t sub_26B908270()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B9082D0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EC52C;

  return sub_26B907FA0(v3, v4, v5, v2);
}

uint64_t sub_26B908364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26B9056CC(a3, v25 - v10);
  v12 = sub_26B9AC824();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_26B9AAAE4();
  if (v14 == 1)
  {
    sub_26B90573C(v11);
  }

  else
  {
    sub_26B9AC814();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26B9AC7C4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26B9AC554() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_26B9AAAE4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280427070, &qword_26B9B0820);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_26B90573C(a3);

      return v22;
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

  sub_26B90573C(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280427070, &qword_26B9B0820);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_26B908638()
{
  v1[2] = v0;
  sub_26B9AC804();
  v1[3] = sub_26B9AC7F4();
  v3 = sub_26B9AC7C4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_26B9086D0, v3, v2);
}

uint64_t sub_26B9086D0()
{
  v1 = v0[2];
  if (*(v1 + 16))
  {
    sub_26B9AAAE4();
    sub_26B9AC834();
  }

  v2 = v0[2];
  *(v1 + 16) = 0;

  v3 = *(v2 + 24);
  v0[6] = v3;
  if (v3)
  {
    v4 = *(v2 + 32);
    v0[7] = v4;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_26B90885C;

    return sub_26B908E98(ObjectType, v4);
  }

  else
  {
    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v8[1] = sub_26B908C74;

    return sub_26B90A130();
  }
}

uint64_t sub_26B90885C(char a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x2822009F8](sub_26B908984, v4, v3);
}

uint64_t sub_26B908984()
{
  if (*(v0 + 120) == 1)
  {

    v1 = *(v0 + 48);
    v2 = *(v0 + 56);
    v3 = *(v0 + 8);

    return v3(v1, v2);
  }

  else
  {
    v5 = *(v0 + 16);
    swift_unknownObjectRelease();
    v6 = *(v5 + 24);
    *(v0 + 72) = v6;
    if (v6)
    {
      v7 = *(*(v0 + 16) + 32);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v9 = swift_task_alloc();
      *(v0 + 80) = v9;
      *v9 = v0;
      v9[1] = sub_26B908B18;

      return MEMORY[0x2821DAB68](ObjectType, v7);
    }

    else
    {
      v10 = swift_task_alloc();
      *(v0 + 88) = v10;
      *v10 = v0;
      v10[1] = sub_26B908C74;

      return sub_26B90A130();
    }
  }
}

uint64_t sub_26B908B18()
{
  v1 = *v0;
  v2 = *v0;

  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_26B908C74;

  return sub_26B90A130();
}

uint64_t sub_26B908C74(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = v6[4];
    v8 = v6[5];
    v9 = sub_26B908E34;
  }

  else
  {
    v6[13] = a2;
    v6[14] = a1;
    v7 = v6[4];
    v8 = v6[5];
    v9 = sub_26B908DA8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_26B908DA8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[2];

  *(v3 + 24) = v1;
  *(v3 + 32) = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[1];

  return v6(v4, v5);
}

uint64_t sub_26B908E34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B908E98(uint64_t a1, uint64_t a2)
{
  v5 = sub_26B9ABAC4();
  v2[2] = v5;
  v2[3] = *(v5 - 8);
  v2[4] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[5] = v6;
  v7 = swift_task_alloc();
  v2[6] = v7;
  *v7 = v2;
  v7[1] = sub_26B908FB4;

  return MEMORY[0x2821DAB70](v6, a1, a2);
}

uint64_t sub_26B908FB4()
{

  return MEMORY[0x2822009F8](sub_26B9090B0, 0, 0);
}

uint64_t sub_26B9090B0()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  (*(v3 + 16))(v1, v0[5], v2);
  result = (*(v3 + 88))(v1, v2);
  v7 = result == *MEMORY[0x277D72590] || result == *MEMORY[0x277D725A0] || result == *MEMORY[0x277D725A8] || result == *MEMORY[0x277D725B0];
  v8 = v7;
  if (v7 || (result != *MEMORY[0x277D72588] ? (v9 = result == *MEMORY[0x277D72598]) : (v9 = 1), v9))
  {
    (*(v0[3] + 8))(v0[5], v0[2]);

    v10 = v0[1];

    return v10(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B9091EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_26B909228()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  if (*(v0 + 16))
  {
    sub_26B9AAAE4();
    sub_26B9AC834();
  }

  v5 = sub_26B9AC824();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_26B9AC804();
  sub_26B9AAAE4();
  v7 = sub_26B9AC7F4();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;

  *(v1 + 16) = sub_26B90762C(0, 0, v4, &unk_26B9B0648, v8);
}

uint64_t sub_26B9093C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_26B9AB584();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v6 = sub_26B9ACD04();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  sub_26B9AC804();
  v4[16] = sub_26B9AC7F4();
  v8 = sub_26B9AC7C4();
  v4[17] = v8;
  v4[18] = v7;

  return MEMORY[0x2822009F8](sub_26B909524, v8, v7);
}

uint64_t sub_26B909524()
{
  sub_26B9ACF54();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_26B9095F0;

  return sub_26B90C340(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_26B9095F0()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[15];
  v5 = v2[14];
  v6 = v2[13];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[17];
    v8 = v3[18];
    v9 = sub_26B90CBEC;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[17];
    v8 = v3[18];
    v9 = sub_26B909784;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_26B909784()
{
  if (sub_26B9AC844())
  {
    v1 = v0[12];
    v2 = v0[9];
    v3 = v0[10];

    v4 = sub_26B9A77DC();
    (*(v3 + 16))(v1, v4, v2);
    v5 = sub_26B9AB564();
    v6 = sub_26B9AC914();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[12];
    v9 = v0[9];
    v10 = v0[10];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26B8E8000, v5, v6, "Not quiescing session pool because task was cancelled", v11, 2u);
      MEMORY[0x26D6879F0](v11, -1, -1);
    }

    (*(v10 + 8))(v8, v9);
    goto LABEL_15;
  }

  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[9];
  v15 = sub_26B9A77DC();
  (*(v13 + 16))(v12, v15, v14);
  v16 = sub_26B9AB564();
  v17 = sub_26B9AC914();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26B8E8000, v16, v17, "Quiescing session pool and resigning focus if needed", v18, 2u);
    MEMORY[0x26D6879F0](v18, -1, -1);
  }

  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[9];

  (*(v20 + 8))(v19, v21);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 216))(Strong);
  }

  swift_beginAccess();
  v23 = swift_weakLoadStrong();
  if (!v23 || (v24 = *(v23 + 24), v0[20] = v24, v25 = *(v23 + 32), swift_unknownObjectRetain(), , !v24))
  {

LABEL_15:

    v28 = v0[1];

    return v28();
  }

  ObjectType = swift_getObjectType();
  v27 = swift_task_alloc();
  v0[21] = v27;
  *v27 = v0;
  v27[1] = sub_26B909AA8;

  return MEMORY[0x2821DAB78](ObjectType, v25);
}

uint64_t sub_26B909AA8()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_26B909BEC, v3, v2);
}

uint64_t sub_26B909BEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B909C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, char *, uint64_t, void *))
{
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_26B9AC824();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_26B9AC804();
  sub_26B9AAAE4();
  v11 = sub_26B9AC7F4();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v6;
  a3(0, 0, v9, a2, v12);
}

uint64_t sub_26B909DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_26B9AC804();
  v4[4] = sub_26B9AC7F4();
  v6 = sub_26B9AC7C4();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_26B909E5C, v6, v5);
}

uint64_t sub_26B909E5C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 24);
  *(v0 + 56) = v2;
  if (v2)
  {
    v3 = *(v1 + 32);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = sub_26B909F78;

    return MEMORY[0x2821DAB60](ObjectType, v3);
  }

  else
  {

    **(v0 + 16) = *(v0 + 56) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_26B909F78()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_26B90A0BC, v3, v2);
}

uint64_t sub_26B90A0BC()
{

  **(v0 + 16) = *(v0 + 56) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B90A130()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  v1[3] = swift_task_alloc();
  sub_26B9AB224();
  v1[4] = swift_task_alloc();
  sub_26B9ABC44();
  v1[5] = swift_task_alloc();
  v2 = sub_26B9ABC24();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_26B9AC804();
  v1[9] = sub_26B9AC7F4();
  v4 = sub_26B9AC7C4();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x2822009F8](sub_26B90A2B4, v4, v3);
}

uint64_t sub_26B90A2B4()
{
  sub_26B9ABC34();
  sub_26B9AB204();
  sub_26B9ABC14();
  sub_26B9AB9B4();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_26B90A3A0;
  v2 = *(v0 + 64);

  return MEMORY[0x2821DA858](v2);
}

uint64_t sub_26B90A3A0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_26B90A664;
  }

  else
  {
    v4[13] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_26B90A4CC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_26B90A4CC()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[2];
  v5 = v0[3];

  v7 = sub_26B9AC824();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = v6;
  swift_unknownObjectRetain();
  sub_26B9AAAE4();
  sub_26B90B63C(0, 0, v5, &unk_26B9B0840, v8);

  sub_26B90573C(v5);
  (*(v4 + 8))(v2, v3);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();

  v10 = v0[1];
  v11 = v0[13];

  return v10(v11, OpaqueTypeConformance2);
}

uint64_t sub_26B90A664()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  sub_26B90CB00();
  swift_allocError();
  *v4 = 0;
  swift_willThrow();
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26B90A758()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EB6C8;

  return sub_26B9093C8(v3, v4, v5, v2);
}

uint64_t sub_26B90A7EC(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26B8EC52C;

  return sub_26B909DC4(a1, v5, v6, v4);
}

uint64_t sub_26B90A88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a5;
  v6 = sub_26B9AB9C4();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v7 = sub_26B9ABAB4();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804261F0, &qword_26B9B0848);
  v5[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804261F8, &qword_26B9B0850);
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v9 = swift_task_alloc();
  v5[15] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426200, &qword_26B9B0858);
  v5[16] = v10;
  v5[17] = *(v10 - 8);
  v5[18] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426208, &qword_26B9B0860);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = swift_task_alloc();
  v5[19] = v13;
  *v13 = v5;
  v13[1] = sub_26B90AB44;

  return MEMORY[0x2821DAB58](v9, v11, OpaqueTypeConformance2);
}

uint64_t sub_26B90AB44()
{

  return MEMORY[0x2822009F8](sub_26B90AC40, 0, 0);
}

uint64_t sub_26B90AC40()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  sub_26B9AC854();
  (*(v2 + 8))(v1, v3);
  v4 = *MEMORY[0x277D723C0];
  *(v0 + 200) = *MEMORY[0x277D72580];
  *(v0 + 204) = v4;
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *v5 = v0;
  v5[1] = sub_26B90AD3C;
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);

  return MEMORY[0x2822005A8](v7, 0, 0, v6, v0 + 16);
}

uint64_t sub_26B90AD3C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_26B90B374;
  }

  else
  {
    v2 = sub_26B90AE50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B90AE50()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = *(v0 + 200);
  v7 = *(v0 + 88);
  (*(v3 + 32))(v7, v1, v2);
  if ((*(v3 + 88))(v7, v2) == v6)
  {
    v8 = *(v0 + 204);
    v9 = *(v0 + 88);
    v10 = *(v0 + 64);
    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    v13 = *(v0 + 40);
    (*(*(v0 + 80) + 96))(v9, *(v0 + 72));
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426210, &qword_26B9B0868);
    (*(v12 + 32))(v10, v9 + *(v14 + 48), v13);
    (*(v12 + 16))(v11, v10, v13);
    v15 = (*(v12 + 88))(v11, v13);
    v16 = *(v12 + 8);
    *(v0 + 176) = v16;
    *(v0 + 184) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v15 == v8)
    {
      v16(*(v0 + 56), *(v0 + 40));
      swift_weakInit();
      sub_26B9AC804();
      *(v0 + 192) = sub_26B9AC7F4();
      v18 = sub_26B9AC7C4();

      return MEMORY[0x2822009F8](sub_26B90B1D8, v18, v17);
    }

    v16(*(v0 + 64), *(v0 + 40));
    v19 = *(v0 + 88);
    (*(v0 + 176))(*(v0 + 56), *(v0 + 40));
    v20 = sub_26B9AB1F4();
    (*(*(v20 - 8) + 8))(v19, v20);
  }

  else
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  }

  v21 = swift_task_alloc();
  *(v0 + 160) = v21;
  *v21 = v0;
  v21[1] = sub_26B90AD3C;
  v22 = *(v0 + 128);
  v23 = *(v0 + 96);

  return MEMORY[0x2822005A8](v23, 0, 0, v22, v0 + 16);
}

void sub_26B90B1D8()
{
  v1 = *(v0 + 168);

  sub_26B90B43C(v0 + 24);
  if (v1)
  {
  }

  else
  {
    swift_weakDestroy();

    MEMORY[0x2822009F8](sub_26B90B27C, 0, 0);
  }
}

uint64_t sub_26B90B27C()
{
  v1 = *(v0 + 88);
  (*(v0 + 176))(*(v0 + 64), *(v0 + 40));
  v2 = sub_26B9AB1F4();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v3[1] = sub_26B90AD3C;
  v4 = *(v0 + 128);
  v5 = *(v0 + 96);

  return MEMORY[0x2822005A8](v5, 0, 0, v4, v0 + 16);
}

uint64_t sub_26B90B374()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26B90B43C(uint64_t a1)
{
  v1 = sub_26B9AB584();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26B9A77DC();
  (*(v2 + 16))(v4, v5, v1);
  v6 = sub_26B9AB564();
  v7 = sub_26B9AC914();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26B8E8000, v6, v7, "Dismissing search due to dialog appearing", v8, 2u);
    MEMORY[0x26D6879F0](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 40))
    {
      v10 = *(result + 48);
      v11 = result;
      ObjectType = swift_getObjectType();
      v14[3] = type metadata accessor for BaseToolExecutionSessionManager();
      v14[4] = &protocol witness table for BaseToolExecutionSessionManager;
      v14[0] = v11;
      v13 = *(v10 + 8);
      swift_unknownObjectRetain();
      sub_26B9AAAE4();
      v13(v14, ObjectType, v10);

      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v14);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_26B90B63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_26B9056CC(a3, v22 - v9);
  v11 = sub_26B9AC824();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  sub_26B9AAAE4();
  if (v13 == 1)
  {
    sub_26B90573C(v10);
  }

  else
  {
    sub_26B9AC814();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_26B9AC7C4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_26B9AC554() + 32;
      sub_26B9AAAE4();
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void *BaseToolExecutionSessionManager.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t BaseToolExecutionSessionManager.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_26B90B904()
{
  result = qword_2804261D0;
  if (!qword_2804261D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804261D0);
  }

  return result;
}

uint64_t sub_26B90B99C()
{
  v4 = (*(**v0 + 192) + **(**v0 + 192));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26B90BAB0;

  return v4();
}

uint64_t sub_26B90BAB0(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t dispatch thunk of ToolExecutionSessionManager.currentSessionPool()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B90BDB8;

  return v7(a1, a2);
}

uint64_t sub_26B90BDB8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of BaseToolExecutionSessionManager.currentSessionPool()()
{
  v4 = (*(*v0 + 192) + **(*v0 + 192));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26B90CBF0;

  return v4();
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;
        sub_26B9AAAE4();

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
          sub_26B9AAAE4();
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
          sub_26B9AAAE4();
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}